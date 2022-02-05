export type Content = Array<StoryNode>;
export type StoryNode = TextNode;

interface TextNode {
	id: string;
	type: "text";
	text: string;
	nextNode?: string;
}

interface ChoiceNode {
	id: string;
	type: "choice";
	choices: Array<Choice>;
}

interface Choice {
	text: string;
	nextNode: string;
}

export class Story {
	public currentNode: StoryNode;
	private content: Content;

	constructor(content: Content) {
		if (content.length === 0) {
			throw new Error("Content is empty.");
		}

		this.content = content;
		this.currentNode = content[0];
	}

	public continue() {
		if (!this.canContinue) {
			throw new Error(`Can't continue from node ${this.currentNode.id}.`);
		}

		this.currentNode = this.content.find((node) => {
			return node.id === this.currentNode.nextNode;
		});

		return this.currentNode;
	}

	public get canContinue() {
		if (!this.currentNode.nextNode) {
			return false;
		}

		const doesNextNodeExist = this.content.some((node) => {
			return node.id === this.currentNode.nextNode;
		});

		if (!doesNextNodeExist) {
			return false;
		}

		return true;
	}
}
