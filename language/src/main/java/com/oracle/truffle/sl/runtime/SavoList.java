package com.oracle.truffle.sl.runtime;

import java.util.List;

/**
 * Simple list implementation for Savo.
 *
 * @author siekiera
 * @since 21.3.2019
 */
public class SavoList {
	private final List<Object> values;


	public SavoList(List<Object> values) {
		this.values = values;
	}

	public SavoList add(Object value) {
		values.add(value);

		return this;
	}

	@Override
	public String toString() {
		return "Savolista{" + values + '}';
	}
}
