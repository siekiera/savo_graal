package com.oracle.truffle.sl.builtins;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.sl.nodes.call.SLDispatchNode;
import com.oracle.truffle.sl.nodes.call.SLDispatchNodeGen;
import com.oracle.truffle.sl.runtime.SLFunction;
import com.oracle.truffle.sl.runtime.SavoList;

/**
 * A built-in filter function ("laestappa")
 *
 * @author siekiera
 * @since 21.3.2019
 */
@NodeInfo(shortName = "laestappa")
public abstract class FilterBuiltInNode extends SLBuiltinNode {

	/**
	 * Performs filter
	 *
	 * @param list     list to filter
	 * @param function filtering function, supplied with each element as a value.
	 *                 This assumes, that the filter accepts the value, if the function returns true, all other values are treated as false.
	 * @return new filtered list
	 */
	@Specialization
	@CompilerDirectives.TruffleBoundary
	public SavoList filter(SavoList list, SLFunction function) {
		SLDispatchNode dispatchNode = SLDispatchNodeGen.create();

		return list.filter(value -> {
			Object[] arguments = new Object[]{value};
			Object res = dispatchNode.executeDispatch(function, arguments);
			return Boolean.TRUE.equals(res);
		});

	}
}
