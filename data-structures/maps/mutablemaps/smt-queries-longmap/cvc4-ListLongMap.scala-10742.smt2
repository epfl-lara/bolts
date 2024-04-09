; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125636 () Bool)

(assert start!125636)

(declare-fun b!1469640 () Bool)

(declare-fun res!998201 () Bool)

(declare-fun e!825061 () Bool)

(assert (=> b!1469640 (=> (not res!998201) (not e!825061))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12047 0))(
  ( (MissingZero!12047 (index!50579 (_ BitVec 32))) (Found!12047 (index!50580 (_ BitVec 32))) (Intermediate!12047 (undefined!12859 Bool) (index!50581 (_ BitVec 32)) (x!132155 (_ BitVec 32))) (Undefined!12047) (MissingVacant!12047 (index!50582 (_ BitVec 32))) )
))
(declare-fun lt!642589 () SeekEntryResult!12047)

(declare-datatypes ((array!99001 0))(
  ( (array!99002 (arr!47784 (Array (_ BitVec 32) (_ BitVec 64))) (size!48335 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99001)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99001 (_ BitVec 32)) SeekEntryResult!12047)

(assert (=> b!1469640 (= res!998201 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47784 a!2862) j!93) a!2862 mask!2687) lt!642589))))

(declare-fun b!1469641 () Bool)

(declare-fun e!825063 () Bool)

(assert (=> b!1469641 (= e!825061 e!825063)))

(declare-fun res!998202 () Bool)

(assert (=> b!1469641 (=> (not res!998202) (not e!825063))))

(declare-fun lt!642588 () SeekEntryResult!12047)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469641 (= res!998202 (= lt!642588 (Intermediate!12047 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642587 () (_ BitVec 64))

(declare-fun lt!642586 () array!99001)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469641 (= lt!642588 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642587 mask!2687) lt!642587 lt!642586 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469641 (= lt!642587 (select (store (arr!47784 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469642 () Bool)

(declare-fun res!998206 () Bool)

(declare-fun e!825060 () Bool)

(assert (=> b!1469642 (=> (not res!998206) (not e!825060))))

(assert (=> b!1469642 (= res!998206 (and (= (size!48335 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48335 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48335 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469643 () Bool)

(declare-fun res!998209 () Bool)

(assert (=> b!1469643 (=> (not res!998209) (not e!825060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99001 (_ BitVec 32)) Bool)

(assert (=> b!1469643 (= res!998209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469644 () Bool)

(declare-fun e!825062 () Bool)

(assert (=> b!1469644 (= e!825062 e!825061)))

(declare-fun res!998208 () Bool)

(assert (=> b!1469644 (=> (not res!998208) (not e!825061))))

(assert (=> b!1469644 (= res!998208 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47784 a!2862) j!93) mask!2687) (select (arr!47784 a!2862) j!93) a!2862 mask!2687) lt!642589))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469644 (= lt!642589 (Intermediate!12047 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469645 () Bool)

(declare-fun e!825064 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99001 (_ BitVec 32)) SeekEntryResult!12047)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99001 (_ BitVec 32)) SeekEntryResult!12047)

(assert (=> b!1469645 (= e!825064 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642587 lt!642586 mask!2687) (seekEntryOrOpen!0 lt!642587 lt!642586 mask!2687)))))

(declare-fun res!998207 () Bool)

(assert (=> start!125636 (=> (not res!998207) (not e!825060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125636 (= res!998207 (validMask!0 mask!2687))))

(assert (=> start!125636 e!825060))

(assert (=> start!125636 true))

(declare-fun array_inv!36729 (array!99001) Bool)

(assert (=> start!125636 (array_inv!36729 a!2862)))

(declare-fun b!1469646 () Bool)

(declare-fun res!998210 () Bool)

(assert (=> b!1469646 (=> (not res!998210) (not e!825060))))

(declare-datatypes ((List!34465 0))(
  ( (Nil!34462) (Cons!34461 (h!35811 (_ BitVec 64)) (t!49166 List!34465)) )
))
(declare-fun arrayNoDuplicates!0 (array!99001 (_ BitVec 32) List!34465) Bool)

(assert (=> b!1469646 (= res!998210 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34462))))

(declare-fun b!1469647 () Bool)

(declare-fun res!998203 () Bool)

(assert (=> b!1469647 (=> (not res!998203) (not e!825060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469647 (= res!998203 (validKeyInArray!0 (select (arr!47784 a!2862) j!93)))))

(declare-fun b!1469648 () Bool)

(declare-fun res!998200 () Bool)

(assert (=> b!1469648 (=> (not res!998200) (not e!825063))))

(assert (=> b!1469648 (= res!998200 e!825064)))

(declare-fun c!135233 () Bool)

(assert (=> b!1469648 (= c!135233 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469649 () Bool)

(assert (=> b!1469649 (= e!825064 (= lt!642588 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642587 lt!642586 mask!2687)))))

(declare-fun b!1469650 () Bool)

(assert (=> b!1469650 (= e!825063 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006) (bvsle #b00000000000000000000000000000000 (size!48335 a!2862)) (bvsgt j!93 (size!48335 a!2862))))))

(declare-fun b!1469651 () Bool)

(assert (=> b!1469651 (= e!825060 e!825062)))

(declare-fun res!998204 () Bool)

(assert (=> b!1469651 (=> (not res!998204) (not e!825062))))

(assert (=> b!1469651 (= res!998204 (= (select (store (arr!47784 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469651 (= lt!642586 (array!99002 (store (arr!47784 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48335 a!2862)))))

(declare-fun b!1469652 () Bool)

(declare-fun res!998211 () Bool)

(assert (=> b!1469652 (=> (not res!998211) (not e!825060))))

(assert (=> b!1469652 (= res!998211 (validKeyInArray!0 (select (arr!47784 a!2862) i!1006)))))

(declare-fun b!1469653 () Bool)

(declare-fun res!998205 () Bool)

(assert (=> b!1469653 (=> (not res!998205) (not e!825060))))

(assert (=> b!1469653 (= res!998205 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48335 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48335 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48335 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125636 res!998207) b!1469642))

(assert (= (and b!1469642 res!998206) b!1469652))

(assert (= (and b!1469652 res!998211) b!1469647))

(assert (= (and b!1469647 res!998203) b!1469643))

(assert (= (and b!1469643 res!998209) b!1469646))

(assert (= (and b!1469646 res!998210) b!1469653))

(assert (= (and b!1469653 res!998205) b!1469651))

(assert (= (and b!1469651 res!998204) b!1469644))

(assert (= (and b!1469644 res!998208) b!1469640))

(assert (= (and b!1469640 res!998201) b!1469641))

(assert (= (and b!1469641 res!998202) b!1469648))

(assert (= (and b!1469648 c!135233) b!1469649))

(assert (= (and b!1469648 (not c!135233)) b!1469645))

(assert (= (and b!1469648 res!998200) b!1469650))

(declare-fun m!1356853 () Bool)

(assert (=> b!1469644 m!1356853))

(assert (=> b!1469644 m!1356853))

(declare-fun m!1356855 () Bool)

(assert (=> b!1469644 m!1356855))

(assert (=> b!1469644 m!1356855))

(assert (=> b!1469644 m!1356853))

(declare-fun m!1356857 () Bool)

(assert (=> b!1469644 m!1356857))

(declare-fun m!1356859 () Bool)

(assert (=> b!1469649 m!1356859))

(declare-fun m!1356861 () Bool)

(assert (=> b!1469652 m!1356861))

(assert (=> b!1469652 m!1356861))

(declare-fun m!1356863 () Bool)

(assert (=> b!1469652 m!1356863))

(declare-fun m!1356865 () Bool)

(assert (=> b!1469645 m!1356865))

(declare-fun m!1356867 () Bool)

(assert (=> b!1469645 m!1356867))

(declare-fun m!1356869 () Bool)

(assert (=> b!1469646 m!1356869))

(assert (=> b!1469640 m!1356853))

(assert (=> b!1469640 m!1356853))

(declare-fun m!1356871 () Bool)

(assert (=> b!1469640 m!1356871))

(declare-fun m!1356873 () Bool)

(assert (=> b!1469651 m!1356873))

(declare-fun m!1356875 () Bool)

(assert (=> b!1469651 m!1356875))

(declare-fun m!1356877 () Bool)

(assert (=> start!125636 m!1356877))

(declare-fun m!1356879 () Bool)

(assert (=> start!125636 m!1356879))

(declare-fun m!1356881 () Bool)

(assert (=> b!1469641 m!1356881))

(assert (=> b!1469641 m!1356881))

(declare-fun m!1356883 () Bool)

(assert (=> b!1469641 m!1356883))

(assert (=> b!1469641 m!1356873))

(declare-fun m!1356885 () Bool)

(assert (=> b!1469641 m!1356885))

(assert (=> b!1469647 m!1356853))

(assert (=> b!1469647 m!1356853))

(declare-fun m!1356887 () Bool)

(assert (=> b!1469647 m!1356887))

(declare-fun m!1356889 () Bool)

(assert (=> b!1469643 m!1356889))

(push 1)

(assert (not b!1469645))

(assert (not b!1469644))

(assert (not b!1469649))

(assert (not b!1469652))

(assert (not b!1469640))

(assert (not b!1469647))

(assert (not b!1469643))

(assert (not b!1469646))

(assert (not start!125636))

(assert (not b!1469641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

