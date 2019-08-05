package modules.todo.domain;

import org.skyve.util.DataBuilder;
import org.skyve.util.test.SkyveFixture.FixtureType;
import util.AbstractDomainTest;

/**
 * Generated - local changes will be overwritten.
 * Extend {@link AbstractDomainTest} to create your own tests for this document.
 */
public class TodoTest extends AbstractDomainTest<Todo> {

	@Override
	protected Todo getBean() throws Exception {
		return new DataBuilder()
			.fixture(FixtureType.crud)
			.build(Todo.MODULE_NAME, Todo.DOCUMENT_NAME);
	}
}