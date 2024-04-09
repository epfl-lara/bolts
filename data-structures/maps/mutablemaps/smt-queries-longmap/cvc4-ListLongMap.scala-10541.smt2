; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124388 () Bool)

(assert start!124388)

(declare-fun b!1438693 () Bool)

(declare-fun res!971358 () Bool)

(declare-fun e!811560 () Bool)

(assert (=> b!1438693 (=> (not res!971358) (not e!811560))))

(declare-datatypes ((array!97792 0))(
  ( (array!97793 (arr!47181 (Array (_ BitVec 32) (_ BitVec 64))) (size!47732 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97792)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438693 (= res!971358 (validKeyInArray!0 (select (arr!47181 a!2862) i!1006)))))

(declare-fun b!1438694 () Bool)

(declare-fun res!971356 () Bool)

(assert (=> b!1438694 (=> (not res!971356) (not e!811560))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1438694 (= res!971356 (and (= (size!47732 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47732 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47732 a!2862)) (not (= i!1006 j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun e!811562 () Bool)

(declare-fun b!1438695 () Bool)

(assert (=> b!1438695 (= e!811562 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1438696 () Bool)

(declare-fun res!971360 () Bool)

(assert (=> b!1438696 (=> (not res!971360) (not e!811560))))

(assert (=> b!1438696 (= res!971360 (validKeyInArray!0 (select (arr!47181 a!2862) j!93)))))

(declare-fun res!971353 () Bool)

(assert (=> start!124388 (=> (not res!971353) (not e!811560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124388 (= res!971353 (validMask!0 mask!2687))))

(assert (=> start!124388 e!811560))

(assert (=> start!124388 true))

(declare-fun array_inv!36126 (array!97792) Bool)

(assert (=> start!124388 (array_inv!36126 a!2862)))

(declare-fun b!1438697 () Bool)

(declare-fun res!971354 () Bool)

(assert (=> b!1438697 (=> (not res!971354) (not e!811562))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11456 0))(
  ( (MissingZero!11456 (index!48215 (_ BitVec 32))) (Found!11456 (index!48216 (_ BitVec 32))) (Intermediate!11456 (undefined!12268 Bool) (index!48217 (_ BitVec 32)) (x!129950 (_ BitVec 32))) (Undefined!11456) (MissingVacant!11456 (index!48218 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97792 (_ BitVec 32)) SeekEntryResult!11456)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438697 (= res!971354 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47181 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47181 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97793 (store (arr!47181 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47732 a!2862)) mask!2687) (Intermediate!11456 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1438698 () Bool)

(declare-fun res!971352 () Bool)

(assert (=> b!1438698 (=> (not res!971352) (not e!811562))))

(declare-fun lt!632581 () SeekEntryResult!11456)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1438698 (= res!971352 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47181 a!2862) j!93) a!2862 mask!2687) lt!632581))))

(declare-fun b!1438699 () Bool)

(declare-fun res!971355 () Bool)

(assert (=> b!1438699 (=> (not res!971355) (not e!811560))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438699 (= res!971355 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47732 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47732 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47732 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47181 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438700 () Bool)

(declare-fun res!971361 () Bool)

(assert (=> b!1438700 (=> (not res!971361) (not e!811560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97792 (_ BitVec 32)) Bool)

(assert (=> b!1438700 (= res!971361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438701 () Bool)

(declare-fun res!971359 () Bool)

(assert (=> b!1438701 (=> (not res!971359) (not e!811560))))

(declare-datatypes ((List!33862 0))(
  ( (Nil!33859) (Cons!33858 (h!35205 (_ BitVec 64)) (t!48563 List!33862)) )
))
(declare-fun arrayNoDuplicates!0 (array!97792 (_ BitVec 32) List!33862) Bool)

(assert (=> b!1438701 (= res!971359 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33859))))

(declare-fun b!1438702 () Bool)

(assert (=> b!1438702 (= e!811560 e!811562)))

(declare-fun res!971357 () Bool)

(assert (=> b!1438702 (=> (not res!971357) (not e!811562))))

(assert (=> b!1438702 (= res!971357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47181 a!2862) j!93) mask!2687) (select (arr!47181 a!2862) j!93) a!2862 mask!2687) lt!632581))))

(assert (=> b!1438702 (= lt!632581 (Intermediate!11456 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124388 res!971353) b!1438694))

(assert (= (and b!1438694 res!971356) b!1438693))

(assert (= (and b!1438693 res!971358) b!1438696))

(assert (= (and b!1438696 res!971360) b!1438700))

(assert (= (and b!1438700 res!971361) b!1438701))

(assert (= (and b!1438701 res!971359) b!1438699))

(assert (= (and b!1438699 res!971355) b!1438702))

(assert (= (and b!1438702 res!971357) b!1438698))

(assert (= (and b!1438698 res!971352) b!1438697))

(assert (= (and b!1438697 res!971354) b!1438695))

(declare-fun m!1327867 () Bool)

(assert (=> b!1438701 m!1327867))

(declare-fun m!1327869 () Bool)

(assert (=> b!1438699 m!1327869))

(declare-fun m!1327871 () Bool)

(assert (=> b!1438699 m!1327871))

(declare-fun m!1327873 () Bool)

(assert (=> b!1438696 m!1327873))

(assert (=> b!1438696 m!1327873))

(declare-fun m!1327875 () Bool)

(assert (=> b!1438696 m!1327875))

(assert (=> b!1438702 m!1327873))

(assert (=> b!1438702 m!1327873))

(declare-fun m!1327877 () Bool)

(assert (=> b!1438702 m!1327877))

(assert (=> b!1438702 m!1327877))

(assert (=> b!1438702 m!1327873))

(declare-fun m!1327879 () Bool)

(assert (=> b!1438702 m!1327879))

(assert (=> b!1438698 m!1327873))

(assert (=> b!1438698 m!1327873))

(declare-fun m!1327881 () Bool)

(assert (=> b!1438698 m!1327881))

(declare-fun m!1327883 () Bool)

(assert (=> b!1438693 m!1327883))

(assert (=> b!1438693 m!1327883))

(declare-fun m!1327885 () Bool)

(assert (=> b!1438693 m!1327885))

(declare-fun m!1327887 () Bool)

(assert (=> b!1438700 m!1327887))

(declare-fun m!1327889 () Bool)

(assert (=> start!124388 m!1327889))

(declare-fun m!1327891 () Bool)

(assert (=> start!124388 m!1327891))

(assert (=> b!1438697 m!1327869))

(declare-fun m!1327893 () Bool)

(assert (=> b!1438697 m!1327893))

(assert (=> b!1438697 m!1327893))

(declare-fun m!1327895 () Bool)

(assert (=> b!1438697 m!1327895))

(assert (=> b!1438697 m!1327895))

(assert (=> b!1438697 m!1327893))

(declare-fun m!1327897 () Bool)

(assert (=> b!1438697 m!1327897))

(push 1)

(assert (not b!1438693))

