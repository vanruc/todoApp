package modules.todo.domain;

import org.skyve.util.DataBuilder;
import org.skyve.util.test.SkyveFixture.FixtureType;
import util.AbstractDomainTest;

/**
 * Generated - local changes will be overwritten.
 * Extend {@link AbstractDomainTest} to create your own tests for this document.
 */
public class ProjectTest extends AbstractDomainTest<Project> {

	@Override
	protected Project getBean() throws Exception {
		return new DataBuilder()
			.fixture(FixtureType.crud)
			.build(Project.MODULE_NAME, Project.DOCUMENT_NAME);
	}
}