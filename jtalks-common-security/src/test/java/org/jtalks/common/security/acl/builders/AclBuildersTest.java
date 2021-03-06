/**
 * Copyright (C) 2011  JTalks.org Team
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */
package org.jtalks.common.security.acl.builders;

import org.jtalks.common.model.entity.Branch;
import org.jtalks.common.model.entity.User;
import org.jtalks.common.model.permissions.GeneralPermission;
import org.jtalks.common.security.acl.AclManager;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import static org.mockito.Mockito.mock;

/**
 * @author stanislav bashkirtsev
 */
public class AclBuildersTest {
    AclManager aclManager;
    AclBuilders builders;

    @BeforeMethod
    public void setUp() throws Exception {
        aclManager = mock(AclManager.class);
        builders = new AclBuilders();
    }

    @Test
    public void testNewBuilder() throws Exception {
        builders.<User>newBuilder(aclManager).grant(GeneralPermission.WRITE)
                .to(new User("", "", "", ""))
                .on(new Branch("", ""))
                .flush();
    }
}
