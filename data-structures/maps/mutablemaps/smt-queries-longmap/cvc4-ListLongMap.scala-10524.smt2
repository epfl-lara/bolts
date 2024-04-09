; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124160 () Bool)

(assert start!124160)

(declare-fun b!1436761 () Bool)

(declare-fun res!969759 () Bool)

(declare-fun e!810754 () Bool)

(assert (=> b!1436761 (=> (not res!969759) (not e!810754))))

(declare-datatypes ((array!97681 0))(
  ( (array!97682 (arr!47130 (Array (_ BitVec 32) (_ BitVec 64))) (size!47681 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97681)

(declare-datatypes ((List!33811 0))(
  ( (Nil!33808) (Cons!33807 (h!35145 (_ BitVec 64)) (t!48512 List!33811)) )
))
(declare-fun arrayNoDuplicates!0 (array!97681 (_ BitVec 32) List!33811) Bool)

(assert (=> b!1436761 (= res!969759 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33808))))

(declare-fun res!969754 () Bool)

(assert (=> start!124160 (=> (not res!969754) (not e!810754))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124160 (= res!969754 (validMask!0 mask!2687))))

(assert (=> start!124160 e!810754))

(assert (=> start!124160 true))

(declare-fun array_inv!36075 (array!97681) Bool)

(assert (=> start!124160 (array_inv!36075 a!2862)))

(declare-fun b!1436762 () Bool)

(declare-fun res!969757 () Bool)

(assert (=> b!1436762 (=> (not res!969757) (not e!810754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97681 (_ BitVec 32)) Bool)

(assert (=> b!1436762 (= res!969757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436763 () Bool)

(declare-fun res!969755 () Bool)

(assert (=> b!1436763 (=> (not res!969755) (not e!810754))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436763 (= res!969755 (validKeyInArray!0 (select (arr!47130 a!2862) j!93)))))

(declare-fun b!1436764 () Bool)

(declare-fun res!969753 () Bool)

(assert (=> b!1436764 (=> (not res!969753) (not e!810754))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436764 (= res!969753 (validKeyInArray!0 (select (arr!47130 a!2862) i!1006)))))

(declare-fun b!1436765 () Bool)

(assert (=> b!1436765 (= e!810754 false)))

(declare-datatypes ((SeekEntryResult!11405 0))(
  ( (MissingZero!11405 (index!48011 (_ BitVec 32))) (Found!11405 (index!48012 (_ BitVec 32))) (Intermediate!11405 (undefined!12217 Bool) (index!48013 (_ BitVec 32)) (x!129745 (_ BitVec 32))) (Undefined!11405) (MissingVacant!11405 (index!48014 (_ BitVec 32))) )
))
(declare-fun lt!632158 () SeekEntryResult!11405)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97681 (_ BitVec 32)) SeekEntryResult!11405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436765 (= lt!632158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47130 a!2862) j!93) mask!2687) (select (arr!47130 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1436766 () Bool)

(declare-fun res!969758 () Bool)

(assert (=> b!1436766 (=> (not res!969758) (not e!810754))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436766 (= res!969758 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47681 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47681 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47681 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47130 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436767 () Bool)

(declare-fun res!969756 () Bool)

(assert (=> b!1436767 (=> (not res!969756) (not e!810754))))

(assert (=> b!1436767 (= res!969756 (and (= (size!47681 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47681 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47681 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124160 res!969754) b!1436767))

(assert (= (and b!1436767 res!969756) b!1436764))

(assert (= (and b!1436764 res!969753) b!1436763))

(assert (= (and b!1436763 res!969755) b!1436762))

(assert (= (and b!1436762 res!969757) b!1436761))

(assert (= (and b!1436761 res!969759) b!1436766))

(assert (= (and b!1436766 res!969758) b!1436765))

(declare-fun m!1326117 () Bool)

(assert (=> start!124160 m!1326117))

(declare-fun m!1326119 () Bool)

(assert (=> start!124160 m!1326119))

(declare-fun m!1326121 () Bool)

(assert (=> b!1436761 m!1326121))

(declare-fun m!1326123 () Bool)

(assert (=> b!1436766 m!1326123))

(declare-fun m!1326125 () Bool)

(assert (=> b!1436766 m!1326125))

(declare-fun m!1326127 () Bool)

(assert (=> b!1436763 m!1326127))

(assert (=> b!1436763 m!1326127))

(declare-fun m!1326129 () Bool)

(assert (=> b!1436763 m!1326129))

(assert (=> b!1436765 m!1326127))

(assert (=> b!1436765 m!1326127))

(declare-fun m!1326131 () Bool)

(assert (=> b!1436765 m!1326131))

(assert (=> b!1436765 m!1326131))

(assert (=> b!1436765 m!1326127))

(declare-fun m!1326133 () Bool)

(assert (=> b!1436765 m!1326133))

(declare-fun m!1326135 () Bool)

(assert (=> b!1436764 m!1326135))

(assert (=> b!1436764 m!1326135))

(declare-fun m!1326137 () Bool)

(assert (=> b!1436764 m!1326137))

(declare-fun m!1326139 () Bool)

(assert (=> b!1436762 m!1326139))

(push 1)

(assert (not start!124160))

(assert (not b!1436761))

(assert (not b!1436765))

(assert (not b!1436764))

(assert (not b!1436762))

(assert (not b!1436763))

(check-sat)

