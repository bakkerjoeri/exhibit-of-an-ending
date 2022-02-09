import Game from "./Game.svelte";
import storyContent from "./exhibit-of-an-ending";

new Game({
	target: document.body,
	props: { storyContent },
});
