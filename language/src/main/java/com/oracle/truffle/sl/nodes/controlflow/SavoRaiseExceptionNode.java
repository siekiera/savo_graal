package com.oracle.truffle.sl.nodes.controlflow;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.SLStatementNode;
import com.oracle.truffle.sl.runtime.SavoCustomException;

/**
 * The node raising an exception
 *
 * @since 20.3.2019
 */
@NodeInfo(shortName = "viskoo", description = "The node raising an exception")
public class SavoRaiseExceptionNode extends SLStatementNode {
	@Override
	public void executeVoid(VirtualFrame frame) {
		throw new SavoCustomException("Virhe!");
	}
}
