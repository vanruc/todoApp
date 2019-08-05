package modules.todo.domain;

import org.skyve.util.DataBuilder;
import org.skyve.util.test.SkyveFixture.FixtureType;
import util.AbstractDomainTest;

/**
 * Generated - local changes will be overwritten.
 * Extend {@link AbstractDomainTest} to create your own tests for this document.
 */
public class StaffTest extends AbstractDomainTest<Staff> {

	@Override
	protected Staff getBean() throws Exception {
		return new DataBuilder()
			.fixture(FixtureType.crud)
			.build(Staff.MODULE_NAME, Staff.DOCUMENT_NAME);
	}
}