; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122552 () Bool)

(assert start!122552)

(declare-fun res!954810 () Bool)

(declare-fun e!803003 () Bool)

(assert (=> start!122552 (=> (not res!954810) (not e!803003))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122552 (= res!954810 (validMask!0 mask!2608))))

(assert (=> start!122552 e!803003))

(assert (=> start!122552 true))

(declare-datatypes ((array!96874 0))(
  ( (array!96875 (arr!46752 (Array (_ BitVec 32) (_ BitVec 64))) (size!47303 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96874)

(declare-fun array_inv!35697 (array!96874) Bool)

(assert (=> start!122552 (array_inv!35697 a!2831)))

(declare-fun b!1419180 () Bool)

(assert (=> b!1419180 (= e!803003 false)))

(declare-fun lt!625687 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419180 (= lt!625687 (toIndex!0 (select (store (arr!46752 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419181 () Bool)

(declare-fun res!954815 () Bool)

(assert (=> b!1419181 (=> (not res!954815) (not e!803003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419181 (= res!954815 (validKeyInArray!0 (select (arr!46752 a!2831) i!982)))))

(declare-fun b!1419182 () Bool)

(declare-fun res!954812 () Bool)

(assert (=> b!1419182 (=> (not res!954812) (not e!803003))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11059 0))(
  ( (MissingZero!11059 (index!46627 (_ BitVec 32))) (Found!11059 (index!46628 (_ BitVec 32))) (Intermediate!11059 (undefined!11871 Bool) (index!46629 (_ BitVec 32)) (x!128298 (_ BitVec 32))) (Undefined!11059) (MissingVacant!11059 (index!46630 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96874 (_ BitVec 32)) SeekEntryResult!11059)

(assert (=> b!1419182 (= res!954812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46752 a!2831) j!81) mask!2608) (select (arr!46752 a!2831) j!81) a!2831 mask!2608) (Intermediate!11059 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419183 () Bool)

(declare-fun res!954813 () Bool)

(assert (=> b!1419183 (=> (not res!954813) (not e!803003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96874 (_ BitVec 32)) Bool)

(assert (=> b!1419183 (= res!954813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419184 () Bool)

(declare-fun res!954809 () Bool)

(assert (=> b!1419184 (=> (not res!954809) (not e!803003))))

(assert (=> b!1419184 (= res!954809 (validKeyInArray!0 (select (arr!46752 a!2831) j!81)))))

(declare-fun b!1419185 () Bool)

(declare-fun res!954811 () Bool)

(assert (=> b!1419185 (=> (not res!954811) (not e!803003))))

(declare-datatypes ((List!33442 0))(
  ( (Nil!33439) (Cons!33438 (h!34737 (_ BitVec 64)) (t!48143 List!33442)) )
))
(declare-fun arrayNoDuplicates!0 (array!96874 (_ BitVec 32) List!33442) Bool)

(assert (=> b!1419185 (= res!954811 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33439))))

(declare-fun b!1419186 () Bool)

(declare-fun res!954816 () Bool)

(assert (=> b!1419186 (=> (not res!954816) (not e!803003))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419186 (= res!954816 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47303 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47303 a!2831))))))

(declare-fun b!1419187 () Bool)

(declare-fun res!954814 () Bool)

(assert (=> b!1419187 (=> (not res!954814) (not e!803003))))

(assert (=> b!1419187 (= res!954814 (and (= (size!47303 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47303 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47303 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122552 res!954810) b!1419187))

(assert (= (and b!1419187 res!954814) b!1419181))

(assert (= (and b!1419181 res!954815) b!1419184))

(assert (= (and b!1419184 res!954809) b!1419183))

(assert (= (and b!1419183 res!954813) b!1419185))

(assert (= (and b!1419185 res!954811) b!1419186))

(assert (= (and b!1419186 res!954816) b!1419182))

(assert (= (and b!1419182 res!954812) b!1419180))

(declare-fun m!1309755 () Bool)

(assert (=> b!1419182 m!1309755))

(assert (=> b!1419182 m!1309755))

(declare-fun m!1309757 () Bool)

(assert (=> b!1419182 m!1309757))

(assert (=> b!1419182 m!1309757))

(assert (=> b!1419182 m!1309755))

(declare-fun m!1309759 () Bool)

(assert (=> b!1419182 m!1309759))

(declare-fun m!1309761 () Bool)

(assert (=> start!122552 m!1309761))

(declare-fun m!1309763 () Bool)

(assert (=> start!122552 m!1309763))

(declare-fun m!1309765 () Bool)

(assert (=> b!1419183 m!1309765))

(declare-fun m!1309767 () Bool)

(assert (=> b!1419185 m!1309767))

(declare-fun m!1309769 () Bool)

(assert (=> b!1419180 m!1309769))

(declare-fun m!1309771 () Bool)

(assert (=> b!1419180 m!1309771))

(assert (=> b!1419180 m!1309771))

(declare-fun m!1309773 () Bool)

(assert (=> b!1419180 m!1309773))

(assert (=> b!1419184 m!1309755))

(assert (=> b!1419184 m!1309755))

(declare-fun m!1309775 () Bool)

(assert (=> b!1419184 m!1309775))

(declare-fun m!1309777 () Bool)

(assert (=> b!1419181 m!1309777))

(assert (=> b!1419181 m!1309777))

(declare-fun m!1309779 () Bool)

(assert (=> b!1419181 m!1309779))

(push 1)

(assert (not b!1419185))

(assert (not start!122552))

(assert (not b!1419183))

(assert (not b!1419182))

(assert (not b!1419180))

(assert (not b!1419184))

(assert (not b!1419181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

