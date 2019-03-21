package com.oracle.truffle.sl.nodes.expression;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.SLExpressionNode;
import com.oracle.truffle.sl.runtime.SavoList;

import java.util.List;
import java.util.stream.Collectors;

/**
 * List initializer node
 *
 * @author siekiera
 * @since 21.3.2019
 */
@NodeInfo(shortName = ">><<")
public class SavoListInitNode extends SLExpressionNode {
	private final List<SLExpressionNode> expressionNodes;

	public SavoListInitNode(List<SLExpressionNode> expressionNodes) {
		this.expressionNodes = expressionNodes;
	}


	@Override
	public Object executeGeneric(VirtualFrame frame) {
		return new SavoList(expressionNodes.stream()
				.map(expr -> expr.executeGeneric(frame))
				.collect(Collectors.toList()));
	}
}
