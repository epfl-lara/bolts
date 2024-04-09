; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125424 () Bool)

(assert start!125424)

(declare-fun b!1465993 () Bool)

(declare-fun res!994885 () Bool)

(declare-fun e!823697 () Bool)

(assert (=> b!1465993 (=> (not res!994885) (not e!823697))))

(declare-datatypes ((array!98789 0))(
  ( (array!98790 (arr!47678 (Array (_ BitVec 32) (_ BitVec 64))) (size!48229 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98789)

(declare-datatypes ((List!34359 0))(
  ( (Nil!34356) (Cons!34355 (h!35705 (_ BitVec 64)) (t!49060 List!34359)) )
))
(declare-fun arrayNoDuplicates!0 (array!98789 (_ BitVec 32) List!34359) Bool)

(assert (=> b!1465993 (= res!994885 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34356))))

(declare-fun b!1465994 () Bool)

(declare-fun res!994877 () Bool)

(assert (=> b!1465994 (=> (not res!994877) (not e!823697))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98789 (_ BitVec 32)) Bool)

(assert (=> b!1465994 (= res!994877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465995 () Bool)

(declare-fun res!994881 () Bool)

(assert (=> b!1465995 (=> (not res!994881) (not e!823697))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465995 (= res!994881 (validKeyInArray!0 (select (arr!47678 a!2862) i!1006)))))

(declare-fun b!1465996 () Bool)

(declare-fun res!994889 () Bool)

(declare-fun e!823690 () Bool)

(assert (=> b!1465996 (=> (not res!994889) (not e!823690))))

(declare-fun e!823694 () Bool)

(assert (=> b!1465996 (= res!994889 e!823694)))

(declare-fun c!135073 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465996 (= c!135073 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465997 () Bool)

(declare-fun res!994882 () Bool)

(declare-fun e!823689 () Bool)

(assert (=> b!1465997 (=> res!994882 e!823689)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465997 (= res!994882 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1465998 () Bool)

(declare-fun res!994876 () Bool)

(assert (=> b!1465998 (=> res!994876 e!823689)))

(declare-fun lt!641561 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11953 0))(
  ( (MissingZero!11953 (index!50203 (_ BitVec 32))) (Found!11953 (index!50204 (_ BitVec 32))) (Intermediate!11953 (undefined!12765 Bool) (index!50205 (_ BitVec 32)) (x!131781 (_ BitVec 32))) (Undefined!11953) (MissingVacant!11953 (index!50206 (_ BitVec 32))) )
))
(declare-fun lt!641564 () SeekEntryResult!11953)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98789 (_ BitVec 32)) SeekEntryResult!11953)

(assert (=> b!1465998 (= res!994876 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641561 (select (arr!47678 a!2862) j!93) a!2862 mask!2687) lt!641564)))))

(declare-fun b!1465999 () Bool)

(declare-fun res!994880 () Bool)

(assert (=> b!1465999 (=> (not res!994880) (not e!823697))))

(assert (=> b!1465999 (= res!994880 (validKeyInArray!0 (select (arr!47678 a!2862) j!93)))))

(declare-fun b!1466000 () Bool)

(declare-fun res!994878 () Bool)

(declare-fun e!823693 () Bool)

(assert (=> b!1466000 (=> (not res!994878) (not e!823693))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1466000 (= res!994878 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47678 a!2862) j!93) a!2862 mask!2687) lt!641564))))

(declare-fun b!1466002 () Bool)

(declare-fun res!994884 () Bool)

(assert (=> b!1466002 (=> (not res!994884) (not e!823697))))

(assert (=> b!1466002 (= res!994884 (and (= (size!48229 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48229 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48229 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!641563 () SeekEntryResult!11953)

(declare-fun b!1466003 () Bool)

(declare-fun lt!641562 () array!98789)

(declare-fun lt!641566 () (_ BitVec 64))

(assert (=> b!1466003 (= e!823694 (= lt!641563 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641566 lt!641562 mask!2687)))))

(declare-fun b!1466004 () Bool)

(declare-fun e!823691 () Bool)

(assert (=> b!1466004 (= e!823691 e!823693)))

(declare-fun res!994883 () Bool)

(assert (=> b!1466004 (=> (not res!994883) (not e!823693))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466004 (= res!994883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47678 a!2862) j!93) mask!2687) (select (arr!47678 a!2862) j!93) a!2862 mask!2687) lt!641564))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1466004 (= lt!641564 (Intermediate!11953 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466005 () Bool)

(declare-fun res!994886 () Bool)

(assert (=> b!1466005 (=> res!994886 e!823689)))

(declare-fun e!823692 () Bool)

(assert (=> b!1466005 (= res!994886 e!823692)))

(declare-fun c!135074 () Bool)

(assert (=> b!1466005 (= c!135074 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466006 () Bool)

(declare-fun res!994890 () Bool)

(assert (=> b!1466006 (=> (not res!994890) (not e!823690))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466006 (= res!994890 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466007 () Bool)

(declare-fun res!994887 () Bool)

(assert (=> b!1466007 (=> (not res!994887) (not e!823697))))

(assert (=> b!1466007 (= res!994887 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48229 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48229 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48229 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466008 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98789 (_ BitVec 32)) SeekEntryResult!11953)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98789 (_ BitVec 32)) SeekEntryResult!11953)

(assert (=> b!1466008 (= e!823694 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641566 lt!641562 mask!2687) (seekEntryOrOpen!0 lt!641566 lt!641562 mask!2687)))))

(declare-fun b!1466009 () Bool)

(assert (=> b!1466009 (= e!823692 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641561 intermediateAfterIndex!19 lt!641566 lt!641562 mask!2687) (seekEntryOrOpen!0 lt!641566 lt!641562 mask!2687))))))

(declare-fun b!1466010 () Bool)

(assert (=> b!1466010 (= e!823693 e!823690)))

(declare-fun res!994873 () Bool)

(assert (=> b!1466010 (=> (not res!994873) (not e!823690))))

(assert (=> b!1466010 (= res!994873 (= lt!641563 (Intermediate!11953 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466010 (= lt!641563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641566 mask!2687) lt!641566 lt!641562 mask!2687))))

(assert (=> b!1466010 (= lt!641566 (select (store (arr!47678 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466011 () Bool)

(assert (=> b!1466011 (= e!823697 e!823691)))

(declare-fun res!994875 () Bool)

(assert (=> b!1466011 (=> (not res!994875) (not e!823691))))

(assert (=> b!1466011 (= res!994875 (= (select (store (arr!47678 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466011 (= lt!641562 (array!98790 (store (arr!47678 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48229 a!2862)))))

(declare-fun b!1466012 () Bool)

(declare-fun e!823695 () Bool)

(assert (=> b!1466012 (= e!823695 e!823689)))

(declare-fun res!994879 () Bool)

(assert (=> b!1466012 (=> res!994879 e!823689)))

(assert (=> b!1466012 (= res!994879 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641561 #b00000000000000000000000000000000) (bvsge lt!641561 (size!48229 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466012 (= lt!641561 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466013 () Bool)

(assert (=> b!1466013 (= e!823692 (not (= lt!641563 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641561 lt!641566 lt!641562 mask!2687))))))

(declare-fun b!1466014 () Bool)

(assert (=> b!1466014 (= e!823689 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!641565 () SeekEntryResult!11953)

(assert (=> b!1466014 (= lt!641565 (seekEntryOrOpen!0 lt!641566 lt!641562 mask!2687))))

(declare-datatypes ((Unit!49350 0))(
  ( (Unit!49351) )
))
(declare-fun lt!641559 () Unit!49350)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49350)

(assert (=> b!1466014 (= lt!641559 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641561 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!994874 () Bool)

(assert (=> start!125424 (=> (not res!994874) (not e!823697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125424 (= res!994874 (validMask!0 mask!2687))))

(assert (=> start!125424 e!823697))

(assert (=> start!125424 true))

(declare-fun array_inv!36623 (array!98789) Bool)

(assert (=> start!125424 (array_inv!36623 a!2862)))

(declare-fun b!1466001 () Bool)

(assert (=> b!1466001 (= e!823690 (not e!823695))))

(declare-fun res!994888 () Bool)

(assert (=> b!1466001 (=> res!994888 e!823695)))

(assert (=> b!1466001 (= res!994888 (or (and (= (select (arr!47678 a!2862) index!646) (select (store (arr!47678 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47678 a!2862) index!646) (select (arr!47678 a!2862) j!93))) (= (select (arr!47678 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466001 (and (= lt!641565 (Found!11953 j!93)) (or (= (select (arr!47678 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47678 a!2862) intermediateBeforeIndex!19) (select (arr!47678 a!2862) j!93))))))

(assert (=> b!1466001 (= lt!641565 (seekEntryOrOpen!0 (select (arr!47678 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466001 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641560 () Unit!49350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49350)

(assert (=> b!1466001 (= lt!641560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125424 res!994874) b!1466002))

(assert (= (and b!1466002 res!994884) b!1465995))

(assert (= (and b!1465995 res!994881) b!1465999))

(assert (= (and b!1465999 res!994880) b!1465994))

(assert (= (and b!1465994 res!994877) b!1465993))

(assert (= (and b!1465993 res!994885) b!1466007))

(assert (= (and b!1466007 res!994887) b!1466011))

(assert (= (and b!1466011 res!994875) b!1466004))

(assert (= (and b!1466004 res!994883) b!1466000))

(assert (= (and b!1466000 res!994878) b!1466010))

(assert (= (and b!1466010 res!994873) b!1465996))

(assert (= (and b!1465996 c!135073) b!1466003))

(assert (= (and b!1465996 (not c!135073)) b!1466008))

(assert (= (and b!1465996 res!994889) b!1466006))

(assert (= (and b!1466006 res!994890) b!1466001))

(assert (= (and b!1466001 (not res!994888)) b!1466012))

(assert (= (and b!1466012 (not res!994879)) b!1465998))

(assert (= (and b!1465998 (not res!994876)) b!1466005))

(assert (= (and b!1466005 c!135074) b!1466013))

(assert (= (and b!1466005 (not c!135074)) b!1466009))

(assert (= (and b!1466005 (not res!994886)) b!1465997))

(assert (= (and b!1465997 (not res!994882)) b!1466014))

(declare-fun m!1353075 () Bool)

(assert (=> b!1466004 m!1353075))

(assert (=> b!1466004 m!1353075))

(declare-fun m!1353077 () Bool)

(assert (=> b!1466004 m!1353077))

(assert (=> b!1466004 m!1353077))

(assert (=> b!1466004 m!1353075))

(declare-fun m!1353079 () Bool)

(assert (=> b!1466004 m!1353079))

(declare-fun m!1353081 () Bool)

(assert (=> b!1466001 m!1353081))

(declare-fun m!1353083 () Bool)

(assert (=> b!1466001 m!1353083))

(declare-fun m!1353085 () Bool)

(assert (=> b!1466001 m!1353085))

(declare-fun m!1353087 () Bool)

(assert (=> b!1466001 m!1353087))

(declare-fun m!1353089 () Bool)

(assert (=> b!1466001 m!1353089))

(assert (=> b!1466001 m!1353075))

(declare-fun m!1353091 () Bool)

(assert (=> b!1466001 m!1353091))

(declare-fun m!1353093 () Bool)

(assert (=> b!1466001 m!1353093))

(assert (=> b!1466001 m!1353075))

(declare-fun m!1353095 () Bool)

(assert (=> b!1466003 m!1353095))

(declare-fun m!1353097 () Bool)

(assert (=> b!1466014 m!1353097))

(declare-fun m!1353099 () Bool)

(assert (=> b!1466014 m!1353099))

(declare-fun m!1353101 () Bool)

(assert (=> b!1466008 m!1353101))

(assert (=> b!1466008 m!1353097))

(declare-fun m!1353103 () Bool)

(assert (=> b!1466013 m!1353103))

(declare-fun m!1353105 () Bool)

(assert (=> b!1465994 m!1353105))

(declare-fun m!1353107 () Bool)

(assert (=> start!125424 m!1353107))

(declare-fun m!1353109 () Bool)

(assert (=> start!125424 m!1353109))

(declare-fun m!1353111 () Bool)

(assert (=> b!1466009 m!1353111))

(assert (=> b!1466009 m!1353097))

(declare-fun m!1353113 () Bool)

(assert (=> b!1465995 m!1353113))

(assert (=> b!1465995 m!1353113))

(declare-fun m!1353115 () Bool)

(assert (=> b!1465995 m!1353115))

(declare-fun m!1353117 () Bool)

(assert (=> b!1465993 m!1353117))

(assert (=> b!1466000 m!1353075))

(assert (=> b!1466000 m!1353075))

(declare-fun m!1353119 () Bool)

(assert (=> b!1466000 m!1353119))

(assert (=> b!1465998 m!1353075))

(assert (=> b!1465998 m!1353075))

(declare-fun m!1353121 () Bool)

(assert (=> b!1465998 m!1353121))

(declare-fun m!1353123 () Bool)

(assert (=> b!1466010 m!1353123))

(assert (=> b!1466010 m!1353123))

(declare-fun m!1353125 () Bool)

(assert (=> b!1466010 m!1353125))

(assert (=> b!1466010 m!1353083))

(declare-fun m!1353127 () Bool)

(assert (=> b!1466010 m!1353127))

(assert (=> b!1466011 m!1353083))

(declare-fun m!1353129 () Bool)

(assert (=> b!1466011 m!1353129))

(assert (=> b!1465999 m!1353075))

(assert (=> b!1465999 m!1353075))

(declare-fun m!1353131 () Bool)

(assert (=> b!1465999 m!1353131))

(declare-fun m!1353133 () Bool)

(assert (=> b!1466012 m!1353133))

(check-sat (not b!1466003) (not b!1465999) (not b!1466012) (not b!1466013) (not start!125424) (not b!1465998) (not b!1465993) (not b!1465995) (not b!1466014) (not b!1465994) (not b!1466009) (not b!1466001) (not b!1466000) (not b!1466008) (not b!1466010) (not b!1466004))
(check-sat)
