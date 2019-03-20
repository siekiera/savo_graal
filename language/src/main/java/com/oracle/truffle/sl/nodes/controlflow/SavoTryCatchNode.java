package com.oracle.truffle.sl.nodes.controlflow;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.SLStatementNode;
import com.oracle.truffle.sl.runtime.SavoCustomException;

/**
 * A try-catch node (kokkeele... nappoo) implementation for savo.
 *
 * @author siekiera
 * @since 20.3.2019
 */
@NodeInfo(shortName = "kokkeele", description = "The node implementing try catch statement")
public class SavoTryCatchNode extends SLStatementNode {

	@Child
	private SLStatementNode tryBlock;

	@Child
	private SLStatementNode catchBlock;

	public SavoTryCatchNode(SLStatementNode tryBlock, SLStatementNode catchBlock) {
		this.tryBlock = tryBlock;
		this.catchBlock = catchBlock;
	}

	@Override
	public void executeVoid(VirtualFrame frame) {
		try {
			tryBlock.executeVoid(frame);
		} catch (SavoCustomException e) {
			catchBlock.executeVoid(frame);
		}
	}
}
