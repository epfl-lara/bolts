; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125112 () Bool)

(assert start!125112)

(declare-fun b!1455868 () Bool)

(declare-fun e!819201 () Bool)

(declare-fun e!819194 () Bool)

(assert (=> b!1455868 (= e!819201 e!819194)))

(declare-fun res!986556 () Bool)

(assert (=> b!1455868 (=> (not res!986556) (not e!819194))))

(declare-datatypes ((SeekEntryResult!11797 0))(
  ( (MissingZero!11797 (index!49579 (_ BitVec 32))) (Found!11797 (index!49580 (_ BitVec 32))) (Intermediate!11797 (undefined!12609 Bool) (index!49581 (_ BitVec 32)) (x!131209 (_ BitVec 32))) (Undefined!11797) (MissingVacant!11797 (index!49582 (_ BitVec 32))) )
))
(declare-fun lt!638079 () SeekEntryResult!11797)

(declare-datatypes ((array!98477 0))(
  ( (array!98478 (arr!47522 (Array (_ BitVec 32) (_ BitVec 64))) (size!48073 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98477)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98477 (_ BitVec 32)) SeekEntryResult!11797)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455868 (= res!986556 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47522 a!2862) j!93) mask!2687) (select (arr!47522 a!2862) j!93) a!2862 mask!2687) lt!638079))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455868 (= lt!638079 (Intermediate!11797 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!986558 () Bool)

(declare-fun e!819198 () Bool)

(assert (=> start!125112 (=> (not res!986558) (not e!819198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125112 (= res!986558 (validMask!0 mask!2687))))

(assert (=> start!125112 e!819198))

(assert (=> start!125112 true))

(declare-fun array_inv!36467 (array!98477) Bool)

(assert (=> start!125112 (array_inv!36467 a!2862)))

(declare-fun b!1455869 () Bool)

(declare-fun e!819200 () Bool)

(assert (=> b!1455869 (= e!819200 true)))

(declare-fun lt!638080 () Bool)

(declare-fun e!819203 () Bool)

(assert (=> b!1455869 (= lt!638080 e!819203)))

(declare-fun c!134173 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455869 (= c!134173 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455870 () Bool)

(declare-fun res!986550 () Bool)

(assert (=> b!1455870 (=> (not res!986550) (not e!819198))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455870 (= res!986550 (and (= (size!48073 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48073 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48073 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455871 () Bool)

(assert (=> b!1455871 (= e!819198 e!819201)))

(declare-fun res!986560 () Bool)

(assert (=> b!1455871 (=> (not res!986560) (not e!819201))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1455871 (= res!986560 (= (select (store (arr!47522 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638082 () array!98477)

(assert (=> b!1455871 (= lt!638082 (array!98478 (store (arr!47522 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48073 a!2862)))))

(declare-fun b!1455872 () Bool)

(declare-fun e!819197 () Bool)

(assert (=> b!1455872 (= e!819197 e!819200)))

(declare-fun res!986559 () Bool)

(assert (=> b!1455872 (=> res!986559 e!819200)))

(declare-fun lt!638083 () (_ BitVec 32))

(assert (=> b!1455872 (= res!986559 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638083 #b00000000000000000000000000000000) (bvsge lt!638083 (size!48073 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455872 (= lt!638083 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638077 () (_ BitVec 64))

(declare-fun lt!638081 () SeekEntryResult!11797)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98477 (_ BitVec 32)) SeekEntryResult!11797)

(assert (=> b!1455872 (= lt!638081 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638077 lt!638082 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98477 (_ BitVec 32)) SeekEntryResult!11797)

(assert (=> b!1455872 (= lt!638081 (seekEntryOrOpen!0 lt!638077 lt!638082 mask!2687))))

(declare-fun b!1455873 () Bool)

(declare-fun e!819202 () Bool)

(assert (=> b!1455873 (= e!819202 (not e!819197))))

(declare-fun res!986564 () Bool)

(assert (=> b!1455873 (=> res!986564 e!819197)))

(assert (=> b!1455873 (= res!986564 (or (and (= (select (arr!47522 a!2862) index!646) (select (store (arr!47522 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47522 a!2862) index!646) (select (arr!47522 a!2862) j!93))) (= (select (arr!47522 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819199 () Bool)

(assert (=> b!1455873 e!819199))

(declare-fun res!986563 () Bool)

(assert (=> b!1455873 (=> (not res!986563) (not e!819199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98477 (_ BitVec 32)) Bool)

(assert (=> b!1455873 (= res!986563 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49038 0))(
  ( (Unit!49039) )
))
(declare-fun lt!638076 () Unit!49038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98477 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49038)

(assert (=> b!1455873 (= lt!638076 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455874 () Bool)

(declare-fun res!986557 () Bool)

(assert (=> b!1455874 (=> (not res!986557) (not e!819198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455874 (= res!986557 (validKeyInArray!0 (select (arr!47522 a!2862) j!93)))))

(declare-fun b!1455875 () Bool)

(declare-fun res!986562 () Bool)

(assert (=> b!1455875 (=> (not res!986562) (not e!819202))))

(declare-fun e!819196 () Bool)

(assert (=> b!1455875 (= res!986562 e!819196)))

(declare-fun c!134174 () Bool)

(assert (=> b!1455875 (= c!134174 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455876 () Bool)

(assert (=> b!1455876 (= e!819199 (and (or (= (select (arr!47522 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47522 a!2862) intermediateBeforeIndex!19) (select (arr!47522 a!2862) j!93))) (let ((bdg!53200 (select (store (arr!47522 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47522 a!2862) index!646) bdg!53200) (= (select (arr!47522 a!2862) index!646) (select (arr!47522 a!2862) j!93))) (= (select (arr!47522 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53200 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455877 () Bool)

(assert (=> b!1455877 (= e!819194 e!819202)))

(declare-fun res!986551 () Bool)

(assert (=> b!1455877 (=> (not res!986551) (not e!819202))))

(declare-fun lt!638078 () SeekEntryResult!11797)

(assert (=> b!1455877 (= res!986551 (= lt!638078 (Intermediate!11797 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455877 (= lt!638078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638077 mask!2687) lt!638077 lt!638082 mask!2687))))

(assert (=> b!1455877 (= lt!638077 (select (store (arr!47522 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455878 () Bool)

(declare-fun res!986555 () Bool)

(assert (=> b!1455878 (=> res!986555 e!819200)))

(assert (=> b!1455878 (= res!986555 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638083 (select (arr!47522 a!2862) j!93) a!2862 mask!2687) lt!638079)))))

(declare-fun b!1455879 () Bool)

(declare-fun res!986552 () Bool)

(assert (=> b!1455879 (=> (not res!986552) (not e!819198))))

(assert (=> b!1455879 (= res!986552 (validKeyInArray!0 (select (arr!47522 a!2862) i!1006)))))

(declare-fun b!1455880 () Bool)

(declare-fun res!986553 () Bool)

(assert (=> b!1455880 (=> (not res!986553) (not e!819198))))

(declare-datatypes ((List!34203 0))(
  ( (Nil!34200) (Cons!34199 (h!35549 (_ BitVec 64)) (t!48904 List!34203)) )
))
(declare-fun arrayNoDuplicates!0 (array!98477 (_ BitVec 32) List!34203) Bool)

(assert (=> b!1455880 (= res!986553 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34200))))

(declare-fun b!1455881 () Bool)

(declare-fun res!986548 () Bool)

(assert (=> b!1455881 (=> (not res!986548) (not e!819198))))

(assert (=> b!1455881 (= res!986548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455882 () Bool)

(assert (=> b!1455882 (= e!819203 (not (= lt!638078 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638083 lt!638077 lt!638082 mask!2687))))))

(declare-fun b!1455883 () Bool)

(declare-fun res!986565 () Bool)

(assert (=> b!1455883 (=> (not res!986565) (not e!819194))))

(assert (=> b!1455883 (= res!986565 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47522 a!2862) j!93) a!2862 mask!2687) lt!638079))))

(declare-fun b!1455884 () Bool)

(assert (=> b!1455884 (= e!819203 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638083 intermediateAfterIndex!19 lt!638077 lt!638082 mask!2687) lt!638081)))))

(declare-fun b!1455885 () Bool)

(assert (=> b!1455885 (= e!819196 (= lt!638078 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638077 lt!638082 mask!2687)))))

(declare-fun b!1455886 () Bool)

(declare-fun res!986554 () Bool)

(assert (=> b!1455886 (=> (not res!986554) (not e!819199))))

(assert (=> b!1455886 (= res!986554 (= (seekEntryOrOpen!0 (select (arr!47522 a!2862) j!93) a!2862 mask!2687) (Found!11797 j!93)))))

(declare-fun b!1455887 () Bool)

(declare-fun res!986561 () Bool)

(assert (=> b!1455887 (=> (not res!986561) (not e!819198))))

(assert (=> b!1455887 (= res!986561 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48073 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48073 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48073 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455888 () Bool)

(declare-fun res!986549 () Bool)

(assert (=> b!1455888 (=> (not res!986549) (not e!819202))))

(assert (=> b!1455888 (= res!986549 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455889 () Bool)

(assert (=> b!1455889 (= e!819196 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638077 lt!638082 mask!2687) (seekEntryOrOpen!0 lt!638077 lt!638082 mask!2687)))))

(assert (= (and start!125112 res!986558) b!1455870))

(assert (= (and b!1455870 res!986550) b!1455879))

(assert (= (and b!1455879 res!986552) b!1455874))

(assert (= (and b!1455874 res!986557) b!1455881))

(assert (= (and b!1455881 res!986548) b!1455880))

(assert (= (and b!1455880 res!986553) b!1455887))

(assert (= (and b!1455887 res!986561) b!1455871))

(assert (= (and b!1455871 res!986560) b!1455868))

(assert (= (and b!1455868 res!986556) b!1455883))

(assert (= (and b!1455883 res!986565) b!1455877))

(assert (= (and b!1455877 res!986551) b!1455875))

(assert (= (and b!1455875 c!134174) b!1455885))

(assert (= (and b!1455875 (not c!134174)) b!1455889))

(assert (= (and b!1455875 res!986562) b!1455888))

(assert (= (and b!1455888 res!986549) b!1455873))

(assert (= (and b!1455873 res!986563) b!1455886))

(assert (= (and b!1455886 res!986554) b!1455876))

(assert (= (and b!1455873 (not res!986564)) b!1455872))

(assert (= (and b!1455872 (not res!986559)) b!1455878))

(assert (= (and b!1455878 (not res!986555)) b!1455869))

(assert (= (and b!1455869 c!134173) b!1455882))

(assert (= (and b!1455869 (not c!134173)) b!1455884))

(declare-fun m!1344085 () Bool)

(assert (=> start!125112 m!1344085))

(declare-fun m!1344087 () Bool)

(assert (=> start!125112 m!1344087))

(declare-fun m!1344089 () Bool)

(assert (=> b!1455883 m!1344089))

(assert (=> b!1455883 m!1344089))

(declare-fun m!1344091 () Bool)

(assert (=> b!1455883 m!1344091))

(declare-fun m!1344093 () Bool)

(assert (=> b!1455879 m!1344093))

(assert (=> b!1455879 m!1344093))

(declare-fun m!1344095 () Bool)

(assert (=> b!1455879 m!1344095))

(declare-fun m!1344097 () Bool)

(assert (=> b!1455880 m!1344097))

(declare-fun m!1344099 () Bool)

(assert (=> b!1455881 m!1344099))

(declare-fun m!1344101 () Bool)

(assert (=> b!1455876 m!1344101))

(declare-fun m!1344103 () Bool)

(assert (=> b!1455876 m!1344103))

(declare-fun m!1344105 () Bool)

(assert (=> b!1455876 m!1344105))

(declare-fun m!1344107 () Bool)

(assert (=> b!1455876 m!1344107))

(assert (=> b!1455876 m!1344089))

(declare-fun m!1344109 () Bool)

(assert (=> b!1455882 m!1344109))

(assert (=> b!1455886 m!1344089))

(assert (=> b!1455886 m!1344089))

(declare-fun m!1344111 () Bool)

(assert (=> b!1455886 m!1344111))

(assert (=> b!1455878 m!1344089))

(assert (=> b!1455878 m!1344089))

(declare-fun m!1344113 () Bool)

(assert (=> b!1455878 m!1344113))

(declare-fun m!1344115 () Bool)

(assert (=> b!1455873 m!1344115))

(assert (=> b!1455873 m!1344101))

(assert (=> b!1455873 m!1344105))

(assert (=> b!1455873 m!1344107))

(declare-fun m!1344117 () Bool)

(assert (=> b!1455873 m!1344117))

(assert (=> b!1455873 m!1344089))

(declare-fun m!1344119 () Bool)

(assert (=> b!1455872 m!1344119))

(declare-fun m!1344121 () Bool)

(assert (=> b!1455872 m!1344121))

(declare-fun m!1344123 () Bool)

(assert (=> b!1455872 m!1344123))

(assert (=> b!1455868 m!1344089))

(assert (=> b!1455868 m!1344089))

(declare-fun m!1344125 () Bool)

(assert (=> b!1455868 m!1344125))

(assert (=> b!1455868 m!1344125))

(assert (=> b!1455868 m!1344089))

(declare-fun m!1344127 () Bool)

(assert (=> b!1455868 m!1344127))

(declare-fun m!1344129 () Bool)

(assert (=> b!1455885 m!1344129))

(assert (=> b!1455871 m!1344101))

(declare-fun m!1344131 () Bool)

(assert (=> b!1455871 m!1344131))

(assert (=> b!1455874 m!1344089))

(assert (=> b!1455874 m!1344089))

(declare-fun m!1344133 () Bool)

(assert (=> b!1455874 m!1344133))

(declare-fun m!1344135 () Bool)

(assert (=> b!1455884 m!1344135))

(declare-fun m!1344137 () Bool)

(assert (=> b!1455877 m!1344137))

(assert (=> b!1455877 m!1344137))

(declare-fun m!1344139 () Bool)

(assert (=> b!1455877 m!1344139))

(assert (=> b!1455877 m!1344101))

(declare-fun m!1344141 () Bool)

(assert (=> b!1455877 m!1344141))

(assert (=> b!1455889 m!1344121))

(assert (=> b!1455889 m!1344123))

(check-sat (not b!1455878) (not b!1455872) (not b!1455873) (not b!1455883) (not b!1455884) (not b!1455874) (not b!1455886) (not b!1455879) (not b!1455881) (not start!125112) (not b!1455885) (not b!1455877) (not b!1455882) (not b!1455880) (not b!1455868) (not b!1455889))
(check-sat)
