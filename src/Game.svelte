<script lang="ts">
	import { micromark } from "micromark";
	import { Story } from "./story";
	import content from "./content";
	import type { StoryNode } from "./story";

	const story = new Story(content);

	let history: Array<StoryNode> = [story.currentNode];
	let canContinue = story.canContinue;

	function continueStory() {
		const newStoryNode = story.continue();
		history = [...history, newStoryNode];
		canContinue = story.canContinue;
	}
</script>

<main>
	{#each history as beat}
		{@html micromark(beat.text)}
	{/each}

	{#if canContinue}
		<button type="button" on:click={continueStory}>continue</button>
	{/if}
</main>

<style>
	main {
		display: flex;
		flex-direction: column;
		justify-content: flex-end;
		max-width: 520px;
		margin: 0 auto;
		padding: 40px 20px;
	}
</style>
