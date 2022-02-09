<script lang="ts">
	import { micromark } from "micromark";
	import ink from "inkjs";
	import type { Choice } from "inkjs/engine/Choice";
	import { text, tick } from "svelte/internal";

	export let storyContent: any;

	const story = new ink.Story(storyContent);

	let history: Array<string> = [];
	let currentText = story.currentText;
	let canContinue = story.canContinue;
	let choices: Choice[] = story.currentChoices;
	let choicesMade: string[] = [];

	function continueStory() {
		history = [...history, currentText];
		currentText = story.Continue();
		canContinue = story.canContinue;
		choices = story.currentChoices;
		scrollDown();
	}

	async function scrollDown() {
		await tick();
		window.scrollTo({
			top: document.body.scrollHeight,
			left: 0,
		});
	}

	async function makeChoice(index: number) {
		choicesMade = [
			...choicesMade,
			story.currentChoices[index].pathStringOnChoice,
		];

		story.ChooseChoiceIndex(index);
		continueStory();
		continueStory();
	}

	if (canContinue) {
		continueStory();
	}
</script>

<main>
	<div class="history">
		{#each history as beat}
			{@html micromark(beat)}
		{/each}
	</div>

	{@html micromark(currentText)}

	{#if canContinue}
		<button type="button" class="continue" on:click={continueStory}>
			continue
		</button>
	{/if}

	{#if choices}
		<ol>
			{#each choices as choice, index (choice.text)}
				<li>
					<button
						type="button"
						class="choice"
						class:is-seen={choicesMade.includes(
							choice.pathStringOnChoice
						)}
						on:click={() => {
							makeChoice(index);
						}}
					>
						{choice.text}
					</button>
				</li>
			{/each}
		</ol>
	{/if}

	{#if choices.length === 0 && !canContinue}
		<h2>The end</h2>
	{/if}
</main>

<style>
	main {
		display: flex;
		min-height: 100vh;
		flex-direction: column;
		justify-content: flex-end;
		max-width: 520px;
		margin: 0 auto;
		padding: 40px 20px;
		padding-bottom: 25vh;
	}

	.history {
		opacity: 0.55;
	}

	.continue {
		cursor: pointer;
		color: lightblue;
		background-color: transparent;
		font-size: inherit;
		border: 1px solid lightblue;
		padding: 10px;
	}

	.choice {
		cursor: pointer;
		color: lightblue;
		background-color: transparent;
		font-size: inherit;
		border: none;
	}

	.choice:hover,
	.choice:focus {
		text-decoration: underline;
	}

	.choice.is-seen {
		opacity: 0.65;
	}
</style>
