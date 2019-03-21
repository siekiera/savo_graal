package com.oracle.truffle.sl.runtime;

import com.oracle.truffle.api.interop.ForeignAccess;
import com.oracle.truffle.api.interop.MessageResolution;
import com.oracle.truffle.api.interop.Resolve;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.nodes.Node;

import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * Simple list implementation for Savo.
 *
 * @author siekiera
 * @since 21.3.2019
 */
@MessageResolution(receiverType = SavoList.class)
public class SavoList implements TruffleObject {
	private final List<Object> values;


	public SavoList(List<Object> values) {
		this.values = values;
	}

	public SavoList add(Object value) {
		values.add(value);

		return this;
	}

	public SavoList filter(Predicate<Object> predicate) {
		return new SavoList(values.stream()
				.filter(predicate)
				.collect(Collectors.toList()));
	}

	@Override
	public String toString() {
		return "Savolista{" + values + '}';
	}

	@Override
	public ForeignAccess getForeignAccess() {
		return SavoListForeign.ACCESS;
	}

	static boolean isInstance(TruffleObject obj) {
		return obj instanceof SavoList;
	}

	@Resolve(message = "UNBOX")
	abstract static class UnboxBigNode extends Node {
		Object access(SavoList obj) {
			return obj;
		}
	}

	@Resolve(message = "IS_BOXED")
	abstract static class IsBoxedBigNode extends Node {
		@SuppressWarnings("unused")
		Object access(SavoList obj) {
			return true;
		}
	}
}
