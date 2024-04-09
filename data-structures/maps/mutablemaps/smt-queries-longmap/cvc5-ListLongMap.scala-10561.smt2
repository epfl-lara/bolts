; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124546 () Bool)

(assert start!124546)

(declare-fun b!1440586 () Bool)

(declare-fun res!973129 () Bool)

(declare-fun e!812239 () Bool)

(assert (=> b!1440586 (=> (not res!973129) (not e!812239))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97911 0))(
  ( (array!97912 (arr!47239 (Array (_ BitVec 32) (_ BitVec 64))) (size!47790 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97911)

(assert (=> b!1440586 (= res!973129 (and (= (size!47790 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47790 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47790 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440587 () Bool)

(declare-fun res!973125 () Bool)

(assert (=> b!1440587 (=> (not res!973125) (not e!812239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97911 (_ BitVec 32)) Bool)

(assert (=> b!1440587 (= res!973125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440588 () Bool)

(declare-fun res!973124 () Bool)

(assert (=> b!1440588 (=> (not res!973124) (not e!812239))))

(declare-datatypes ((List!33920 0))(
  ( (Nil!33917) (Cons!33916 (h!35266 (_ BitVec 64)) (t!48621 List!33920)) )
))
(declare-fun arrayNoDuplicates!0 (array!97911 (_ BitVec 32) List!33920) Bool)

(assert (=> b!1440588 (= res!973124 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33917))))

(declare-fun b!1440589 () Bool)

(declare-fun res!973122 () Bool)

(declare-fun e!812238 () Bool)

(assert (=> b!1440589 (=> (not res!973122) (not e!812238))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11514 0))(
  ( (MissingZero!11514 (index!48447 (_ BitVec 32))) (Found!11514 (index!48448 (_ BitVec 32))) (Intermediate!11514 (undefined!12326 Bool) (index!48449 (_ BitVec 32)) (x!130174 (_ BitVec 32))) (Undefined!11514) (MissingVacant!11514 (index!48450 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97911 (_ BitVec 32)) SeekEntryResult!11514)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440589 (= res!973122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47239 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47239 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97912 (store (arr!47239 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47790 a!2862)) mask!2687) (Intermediate!11514 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440590 () Bool)

(declare-fun res!973126 () Bool)

(assert (=> b!1440590 (=> (not res!973126) (not e!812239))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440590 (= res!973126 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47790 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47790 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47790 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47239 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440591 () Bool)

(assert (=> b!1440591 (= e!812239 e!812238)))

(declare-fun res!973130 () Bool)

(assert (=> b!1440591 (=> (not res!973130) (not e!812238))))

(declare-fun lt!632944 () SeekEntryResult!11514)

(assert (=> b!1440591 (= res!973130 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47239 a!2862) j!93) mask!2687) (select (arr!47239 a!2862) j!93) a!2862 mask!2687) lt!632944))))

(assert (=> b!1440591 (= lt!632944 (Intermediate!11514 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!973128 () Bool)

(assert (=> start!124546 (=> (not res!973128) (not e!812239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124546 (= res!973128 (validMask!0 mask!2687))))

(assert (=> start!124546 e!812239))

(assert (=> start!124546 true))

(declare-fun array_inv!36184 (array!97911) Bool)

(assert (=> start!124546 (array_inv!36184 a!2862)))

(declare-fun b!1440592 () Bool)

(declare-fun res!973131 () Bool)

(assert (=> b!1440592 (=> (not res!973131) (not e!812239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440592 (= res!973131 (validKeyInArray!0 (select (arr!47239 a!2862) j!93)))))

(declare-fun b!1440593 () Bool)

(assert (=> b!1440593 (= e!812238 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1440594 () Bool)

(declare-fun res!973127 () Bool)

(assert (=> b!1440594 (=> (not res!973127) (not e!812239))))

(assert (=> b!1440594 (= res!973127 (validKeyInArray!0 (select (arr!47239 a!2862) i!1006)))))

(declare-fun b!1440595 () Bool)

(declare-fun res!973123 () Bool)

(assert (=> b!1440595 (=> (not res!973123) (not e!812238))))

(assert (=> b!1440595 (= res!973123 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47239 a!2862) j!93) a!2862 mask!2687) lt!632944))))

(assert (= (and start!124546 res!973128) b!1440586))

(assert (= (and b!1440586 res!973129) b!1440594))

(assert (= (and b!1440594 res!973127) b!1440592))

(assert (= (and b!1440592 res!973131) b!1440587))

(assert (= (and b!1440587 res!973125) b!1440588))

(assert (= (and b!1440588 res!973124) b!1440590))

(assert (= (and b!1440590 res!973126) b!1440591))

(assert (= (and b!1440591 res!973130) b!1440595))

(assert (= (and b!1440595 res!973123) b!1440589))

(assert (= (and b!1440589 res!973122) b!1440593))

(declare-fun m!1329861 () Bool)

(assert (=> b!1440588 m!1329861))

(declare-fun m!1329863 () Bool)

(assert (=> start!124546 m!1329863))

(declare-fun m!1329865 () Bool)

(assert (=> start!124546 m!1329865))

(declare-fun m!1329867 () Bool)

(assert (=> b!1440592 m!1329867))

(assert (=> b!1440592 m!1329867))

(declare-fun m!1329869 () Bool)

(assert (=> b!1440592 m!1329869))

(declare-fun m!1329871 () Bool)

(assert (=> b!1440589 m!1329871))

(declare-fun m!1329873 () Bool)

(assert (=> b!1440589 m!1329873))

(assert (=> b!1440589 m!1329873))

(declare-fun m!1329875 () Bool)

(assert (=> b!1440589 m!1329875))

(assert (=> b!1440589 m!1329875))

(assert (=> b!1440589 m!1329873))

(declare-fun m!1329877 () Bool)

(assert (=> b!1440589 m!1329877))

(declare-fun m!1329879 () Bool)

(assert (=> b!1440587 m!1329879))

(assert (=> b!1440591 m!1329867))

(assert (=> b!1440591 m!1329867))

(declare-fun m!1329881 () Bool)

(assert (=> b!1440591 m!1329881))

(assert (=> b!1440591 m!1329881))

(assert (=> b!1440591 m!1329867))

(declare-fun m!1329883 () Bool)

(assert (=> b!1440591 m!1329883))

(assert (=> b!1440590 m!1329871))

(declare-fun m!1329885 () Bool)

(assert (=> b!1440590 m!1329885))

(assert (=> b!1440595 m!1329867))

(assert (=> b!1440595 m!1329867))

(declare-fun m!1329887 () Bool)

(assert (=> b!1440595 m!1329887))

(declare-fun m!1329889 () Bool)

(assert (=> b!1440594 m!1329889))

(assert (=> b!1440594 m!1329889))

(declare-fun m!1329891 () Bool)

(assert (=> b!1440594 m!1329891))

(push 1)

