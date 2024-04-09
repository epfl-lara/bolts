; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124602 () Bool)

(assert start!124602)

(declare-fun b!1441631 () Bool)

(declare-fun res!974056 () Bool)

(declare-fun e!812668 () Bool)

(assert (=> b!1441631 (=> (not res!974056) (not e!812668))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97967 0))(
  ( (array!97968 (arr!47267 (Array (_ BitVec 32) (_ BitVec 64))) (size!47818 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97967)

(assert (=> b!1441631 (= res!974056 (and (= (size!47818 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47818 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47818 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!974055 () Bool)

(assert (=> start!124602 (=> (not res!974055) (not e!812668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124602 (= res!974055 (validMask!0 mask!2687))))

(assert (=> start!124602 e!812668))

(assert (=> start!124602 true))

(declare-fun array_inv!36212 (array!97967) Bool)

(assert (=> start!124602 (array_inv!36212 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633274 () array!97967)

(declare-fun e!812672 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1441632 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!633275 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11542 0))(
  ( (MissingZero!11542 (index!48559 (_ BitVec 32))) (Found!11542 (index!48560 (_ BitVec 32))) (Intermediate!11542 (undefined!12354 Bool) (index!48561 (_ BitVec 32)) (x!130274 (_ BitVec 32))) (Undefined!11542) (MissingVacant!11542 (index!48562 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97967 (_ BitVec 32)) SeekEntryResult!11542)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97967 (_ BitVec 32)) SeekEntryResult!11542)

(assert (=> b!1441632 (= e!812672 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633275 lt!633274 mask!2687) (seekEntryOrOpen!0 lt!633275 lt!633274 mask!2687)))))

(declare-fun b!1441633 () Bool)

(declare-fun e!812670 () Bool)

(declare-fun e!812667 () Bool)

(assert (=> b!1441633 (= e!812670 e!812667)))

(declare-fun res!974059 () Bool)

(assert (=> b!1441633 (=> (not res!974059) (not e!812667))))

(declare-fun lt!633273 () SeekEntryResult!11542)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441633 (= res!974059 (= lt!633273 (Intermediate!11542 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97967 (_ BitVec 32)) SeekEntryResult!11542)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441633 (= lt!633273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633275 mask!2687) lt!633275 lt!633274 mask!2687))))

(assert (=> b!1441633 (= lt!633275 (select (store (arr!47267 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441634 () Bool)

(declare-fun e!812671 () Bool)

(assert (=> b!1441634 (= e!812668 e!812671)))

(declare-fun res!974054 () Bool)

(assert (=> b!1441634 (=> (not res!974054) (not e!812671))))

(assert (=> b!1441634 (= res!974054 (= (select (store (arr!47267 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441634 (= lt!633274 (array!97968 (store (arr!47267 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47818 a!2862)))))

(declare-fun b!1441635 () Bool)

(assert (=> b!1441635 (= e!812672 (= lt!633273 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633275 lt!633274 mask!2687)))))

(declare-fun b!1441636 () Bool)

(declare-fun res!974061 () Bool)

(assert (=> b!1441636 (=> (not res!974061) (not e!812668))))

(declare-datatypes ((List!33948 0))(
  ( (Nil!33945) (Cons!33944 (h!35294 (_ BitVec 64)) (t!48649 List!33948)) )
))
(declare-fun arrayNoDuplicates!0 (array!97967 (_ BitVec 32) List!33948) Bool)

(assert (=> b!1441636 (= res!974061 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33945))))

(declare-fun b!1441637 () Bool)

(declare-fun res!974050 () Bool)

(assert (=> b!1441637 (=> (not res!974050) (not e!812668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441637 (= res!974050 (validKeyInArray!0 (select (arr!47267 a!2862) i!1006)))))

(declare-fun b!1441638 () Bool)

(declare-fun res!974060 () Bool)

(assert (=> b!1441638 (=> (not res!974060) (not e!812670))))

(declare-fun lt!633277 () SeekEntryResult!11542)

(assert (=> b!1441638 (= res!974060 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47267 a!2862) j!93) a!2862 mask!2687) lt!633277))))

(declare-fun b!1441639 () Bool)

(declare-fun res!974049 () Bool)

(assert (=> b!1441639 (=> (not res!974049) (not e!812667))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441639 (= res!974049 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1441640 () Bool)

(assert (=> b!1441640 (= e!812671 e!812670)))

(declare-fun res!974058 () Bool)

(assert (=> b!1441640 (=> (not res!974058) (not e!812670))))

(assert (=> b!1441640 (= res!974058 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47267 a!2862) j!93) mask!2687) (select (arr!47267 a!2862) j!93) a!2862 mask!2687) lt!633277))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1441640 (= lt!633277 (Intermediate!11542 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441641 () Bool)

(assert (=> b!1441641 (= e!812667 (not (bvsge mask!2687 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97967 (_ BitVec 32)) Bool)

(assert (=> b!1441641 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48528 0))(
  ( (Unit!48529) )
))
(declare-fun lt!633276 () Unit!48528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48528)

(assert (=> b!1441641 (= lt!633276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441642 () Bool)

(declare-fun res!974053 () Bool)

(assert (=> b!1441642 (=> (not res!974053) (not e!812668))))

(assert (=> b!1441642 (= res!974053 (validKeyInArray!0 (select (arr!47267 a!2862) j!93)))))

(declare-fun b!1441643 () Bool)

(declare-fun res!974057 () Bool)

(assert (=> b!1441643 (=> (not res!974057) (not e!812668))))

(assert (=> b!1441643 (= res!974057 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47818 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47818 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47818 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441644 () Bool)

(declare-fun res!974052 () Bool)

(assert (=> b!1441644 (=> (not res!974052) (not e!812667))))

(assert (=> b!1441644 (= res!974052 e!812672)))

(declare-fun c!133304 () Bool)

(assert (=> b!1441644 (= c!133304 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441645 () Bool)

(declare-fun res!974051 () Bool)

(assert (=> b!1441645 (=> (not res!974051) (not e!812668))))

(assert (=> b!1441645 (= res!974051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124602 res!974055) b!1441631))

(assert (= (and b!1441631 res!974056) b!1441637))

(assert (= (and b!1441637 res!974050) b!1441642))

(assert (= (and b!1441642 res!974053) b!1441645))

(assert (= (and b!1441645 res!974051) b!1441636))

(assert (= (and b!1441636 res!974061) b!1441643))

(assert (= (and b!1441643 res!974057) b!1441634))

(assert (= (and b!1441634 res!974054) b!1441640))

(assert (= (and b!1441640 res!974058) b!1441638))

(assert (= (and b!1441638 res!974060) b!1441633))

(assert (= (and b!1441633 res!974059) b!1441644))

(assert (= (and b!1441644 c!133304) b!1441635))

(assert (= (and b!1441644 (not c!133304)) b!1441632))

(assert (= (and b!1441644 res!974052) b!1441639))

(assert (= (and b!1441639 res!974049) b!1441641))

(declare-fun m!1330893 () Bool)

(assert (=> start!124602 m!1330893))

(declare-fun m!1330895 () Bool)

(assert (=> start!124602 m!1330895))

(declare-fun m!1330897 () Bool)

(assert (=> b!1441634 m!1330897))

(declare-fun m!1330899 () Bool)

(assert (=> b!1441634 m!1330899))

(declare-fun m!1330901 () Bool)

(assert (=> b!1441637 m!1330901))

(assert (=> b!1441637 m!1330901))

(declare-fun m!1330903 () Bool)

(assert (=> b!1441637 m!1330903))

(declare-fun m!1330905 () Bool)

(assert (=> b!1441642 m!1330905))

(assert (=> b!1441642 m!1330905))

(declare-fun m!1330907 () Bool)

(assert (=> b!1441642 m!1330907))

(declare-fun m!1330909 () Bool)

(assert (=> b!1441633 m!1330909))

(assert (=> b!1441633 m!1330909))

(declare-fun m!1330911 () Bool)

(assert (=> b!1441633 m!1330911))

(assert (=> b!1441633 m!1330897))

(declare-fun m!1330913 () Bool)

(assert (=> b!1441633 m!1330913))

(assert (=> b!1441638 m!1330905))

(assert (=> b!1441638 m!1330905))

(declare-fun m!1330915 () Bool)

(assert (=> b!1441638 m!1330915))

(declare-fun m!1330917 () Bool)

(assert (=> b!1441641 m!1330917))

(declare-fun m!1330919 () Bool)

(assert (=> b!1441641 m!1330919))

(declare-fun m!1330921 () Bool)

(assert (=> b!1441636 m!1330921))

(assert (=> b!1441640 m!1330905))

(assert (=> b!1441640 m!1330905))

(declare-fun m!1330923 () Bool)

(assert (=> b!1441640 m!1330923))

(assert (=> b!1441640 m!1330923))

(assert (=> b!1441640 m!1330905))

(declare-fun m!1330925 () Bool)

(assert (=> b!1441640 m!1330925))

(declare-fun m!1330927 () Bool)

(assert (=> b!1441645 m!1330927))

(declare-fun m!1330929 () Bool)

(assert (=> b!1441632 m!1330929))

(declare-fun m!1330931 () Bool)

(assert (=> b!1441632 m!1330931))

(declare-fun m!1330933 () Bool)

(assert (=> b!1441635 m!1330933))

(check-sat (not b!1441637) (not b!1441633) (not b!1441638) (not start!124602) (not b!1441636) (not b!1441635) (not b!1441641) (not b!1441645) (not b!1441642) (not b!1441632) (not b!1441640))
(check-sat)
