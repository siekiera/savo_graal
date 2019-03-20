package com.oracle.truffle.sl.nodes.controlflow;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.SLStatementNode;

import java.util.Random;

/**
 * A control flow node, which may execute the block or not
 *
 * @author siekiera
 * @since 20.3.2019
 */
@NodeInfo(shortName = "kaet", description = "The node implementing a non-deterministic conditional statement")
public final class SavoMaybeNode extends SLStatementNode {
	private final Random random = new Random();


	@Node.Child
	private SLStatementNode block;


	public SavoMaybeNode(SLStatementNode block) {
		this.block = block;
	}

	@Override
	public void executeVoid(VirtualFrame frame) {
		if (shouldExecute()) {
			block.executeVoid(frame);
		}

	}

	private boolean shouldExecute() {
		return random.nextDouble() < 0.666;
	}
}
