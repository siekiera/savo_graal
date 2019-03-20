package com.oracle.truffle.sl.nodes.controlflow;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.SLStatementNode;

/**
 * A control flow node, which may execute the block asynchronously
 *
 * @author michal.toporowski
 * @since 20.3.2019
 */
@NodeInfo(shortName = "eeIhaVielä", description = "The node implementing asynchronous statement")
public class SavoAsyncNode extends SLStatementNode {

	@Node.Child
	private SLStatementNode block;

	public SavoAsyncNode(SLStatementNode block) {
		this.block = block;
	}

	@Override
	public void executeVoid(VirtualFrame frame) {
		new Thread(() -> block.executeVoid(frame)).start();
	}
}
