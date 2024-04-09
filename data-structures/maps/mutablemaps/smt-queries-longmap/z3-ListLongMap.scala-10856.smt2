; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127158 () Bool)

(assert start!127158)

(declare-fun res!1016577 () Bool)

(declare-fun e!836926 () Bool)

(assert (=> start!127158 (=> (not res!1016577) (not e!836926))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127158 (= res!1016577 (validMask!0 mask!2687))))

(assert (=> start!127158 e!836926))

(assert (=> start!127158 true))

(declare-datatypes ((array!99722 0))(
  ( (array!99723 (arr!48125 (Array (_ BitVec 32) (_ BitVec 64))) (size!48676 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99722)

(declare-fun array_inv!37070 (array!99722) Bool)

(assert (=> start!127158 (array_inv!37070 a!2862)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!836920 () Bool)

(declare-fun b!1494056 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1494056 (= e!836920 (or (= (select (arr!48125 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48125 a!2862) intermediateBeforeIndex!19) (select (arr!48125 a!2862) j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!836921 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!651200 () array!99722)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1494057 () Bool)

(declare-fun lt!651202 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12388 0))(
  ( (MissingZero!12388 (index!51943 (_ BitVec 32))) (Found!12388 (index!51944 (_ BitVec 32))) (Intermediate!12388 (undefined!13200 Bool) (index!51945 (_ BitVec 32)) (x!133543 (_ BitVec 32))) (Undefined!12388) (MissingVacant!12388 (index!51946 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99722 (_ BitVec 32)) SeekEntryResult!12388)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99722 (_ BitVec 32)) SeekEntryResult!12388)

(assert (=> b!1494057 (= e!836921 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651202 lt!651200 mask!2687) (seekEntryOrOpen!0 lt!651202 lt!651200 mask!2687)))))

(declare-fun b!1494058 () Bool)

(declare-fun e!836924 () Bool)

(assert (=> b!1494058 (= e!836924 true)))

(declare-fun lt!651201 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494058 (= lt!651201 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494059 () Bool)

(declare-fun e!836925 () Bool)

(assert (=> b!1494059 (= e!836926 e!836925)))

(declare-fun res!1016585 () Bool)

(assert (=> b!1494059 (=> (not res!1016585) (not e!836925))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1494059 (= res!1016585 (= (select (store (arr!48125 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494059 (= lt!651200 (array!99723 (store (arr!48125 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48676 a!2862)))))

(declare-fun b!1494060 () Bool)

(declare-fun e!836923 () Bool)

(declare-fun e!836922 () Bool)

(assert (=> b!1494060 (= e!836923 e!836922)))

(declare-fun res!1016572 () Bool)

(assert (=> b!1494060 (=> (not res!1016572) (not e!836922))))

(declare-fun lt!651198 () SeekEntryResult!12388)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494060 (= res!1016572 (= lt!651198 (Intermediate!12388 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99722 (_ BitVec 32)) SeekEntryResult!12388)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494060 (= lt!651198 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651202 mask!2687) lt!651202 lt!651200 mask!2687))))

(assert (=> b!1494060 (= lt!651202 (select (store (arr!48125 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494061 () Bool)

(assert (=> b!1494061 (= e!836922 (not e!836924))))

(declare-fun res!1016573 () Bool)

(assert (=> b!1494061 (=> res!1016573 e!836924)))

(assert (=> b!1494061 (= res!1016573 (or (and (= (select (arr!48125 a!2862) index!646) (select (store (arr!48125 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48125 a!2862) index!646) (select (arr!48125 a!2862) j!93))) (= (select (arr!48125 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494061 e!836920))

(declare-fun res!1016576 () Bool)

(assert (=> b!1494061 (=> (not res!1016576) (not e!836920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99722 (_ BitVec 32)) Bool)

(assert (=> b!1494061 (= res!1016576 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50064 0))(
  ( (Unit!50065) )
))
(declare-fun lt!651199 () Unit!50064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99722 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50064)

(assert (=> b!1494061 (= lt!651199 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494062 () Bool)

(declare-fun res!1016580 () Bool)

(assert (=> b!1494062 (=> (not res!1016580) (not e!836926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494062 (= res!1016580 (validKeyInArray!0 (select (arr!48125 a!2862) j!93)))))

(declare-fun b!1494063 () Bool)

(declare-fun res!1016581 () Bool)

(assert (=> b!1494063 (=> (not res!1016581) (not e!836923))))

(declare-fun lt!651197 () SeekEntryResult!12388)

(assert (=> b!1494063 (= res!1016581 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48125 a!2862) j!93) a!2862 mask!2687) lt!651197))))

(declare-fun b!1494064 () Bool)

(declare-fun res!1016584 () Bool)

(assert (=> b!1494064 (=> (not res!1016584) (not e!836926))))

(assert (=> b!1494064 (= res!1016584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494065 () Bool)

(declare-fun res!1016571 () Bool)

(assert (=> b!1494065 (=> (not res!1016571) (not e!836926))))

(declare-datatypes ((List!34806 0))(
  ( (Nil!34803) (Cons!34802 (h!36191 (_ BitVec 64)) (t!49507 List!34806)) )
))
(declare-fun arrayNoDuplicates!0 (array!99722 (_ BitVec 32) List!34806) Bool)

(assert (=> b!1494065 (= res!1016571 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34803))))

(declare-fun b!1494066 () Bool)

(declare-fun res!1016579 () Bool)

(assert (=> b!1494066 (=> (not res!1016579) (not e!836926))))

(assert (=> b!1494066 (= res!1016579 (and (= (size!48676 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48676 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48676 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494067 () Bool)

(declare-fun res!1016574 () Bool)

(assert (=> b!1494067 (=> (not res!1016574) (not e!836926))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494067 (= res!1016574 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48676 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48676 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48676 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494068 () Bool)

(assert (=> b!1494068 (= e!836921 (= lt!651198 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651202 lt!651200 mask!2687)))))

(declare-fun b!1494069 () Bool)

(declare-fun res!1016575 () Bool)

(assert (=> b!1494069 (=> (not res!1016575) (not e!836920))))

(assert (=> b!1494069 (= res!1016575 (= (seekEntryOrOpen!0 (select (arr!48125 a!2862) j!93) a!2862 mask!2687) (Found!12388 j!93)))))

(declare-fun b!1494070 () Bool)

(declare-fun res!1016583 () Bool)

(assert (=> b!1494070 (=> (not res!1016583) (not e!836922))))

(assert (=> b!1494070 (= res!1016583 e!836921)))

(declare-fun c!138275 () Bool)

(assert (=> b!1494070 (= c!138275 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494071 () Bool)

(declare-fun res!1016578 () Bool)

(assert (=> b!1494071 (=> (not res!1016578) (not e!836922))))

(assert (=> b!1494071 (= res!1016578 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494072 () Bool)

(declare-fun res!1016582 () Bool)

(assert (=> b!1494072 (=> (not res!1016582) (not e!836926))))

(assert (=> b!1494072 (= res!1016582 (validKeyInArray!0 (select (arr!48125 a!2862) i!1006)))))

(declare-fun b!1494073 () Bool)

(assert (=> b!1494073 (= e!836925 e!836923)))

(declare-fun res!1016586 () Bool)

(assert (=> b!1494073 (=> (not res!1016586) (not e!836923))))

(assert (=> b!1494073 (= res!1016586 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48125 a!2862) j!93) mask!2687) (select (arr!48125 a!2862) j!93) a!2862 mask!2687) lt!651197))))

(assert (=> b!1494073 (= lt!651197 (Intermediate!12388 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!127158 res!1016577) b!1494066))

(assert (= (and b!1494066 res!1016579) b!1494072))

(assert (= (and b!1494072 res!1016582) b!1494062))

(assert (= (and b!1494062 res!1016580) b!1494064))

(assert (= (and b!1494064 res!1016584) b!1494065))

(assert (= (and b!1494065 res!1016571) b!1494067))

(assert (= (and b!1494067 res!1016574) b!1494059))

(assert (= (and b!1494059 res!1016585) b!1494073))

(assert (= (and b!1494073 res!1016586) b!1494063))

(assert (= (and b!1494063 res!1016581) b!1494060))

(assert (= (and b!1494060 res!1016572) b!1494070))

(assert (= (and b!1494070 c!138275) b!1494068))

(assert (= (and b!1494070 (not c!138275)) b!1494057))

(assert (= (and b!1494070 res!1016583) b!1494071))

(assert (= (and b!1494071 res!1016578) b!1494061))

(assert (= (and b!1494061 res!1016576) b!1494069))

(assert (= (and b!1494069 res!1016575) b!1494056))

(assert (= (and b!1494061 (not res!1016573)) b!1494058))

(declare-fun m!1377871 () Bool)

(assert (=> b!1494056 m!1377871))

(declare-fun m!1377873 () Bool)

(assert (=> b!1494056 m!1377873))

(declare-fun m!1377875 () Bool)

(assert (=> b!1494057 m!1377875))

(declare-fun m!1377877 () Bool)

(assert (=> b!1494057 m!1377877))

(declare-fun m!1377879 () Bool)

(assert (=> b!1494064 m!1377879))

(declare-fun m!1377881 () Bool)

(assert (=> start!127158 m!1377881))

(declare-fun m!1377883 () Bool)

(assert (=> start!127158 m!1377883))

(assert (=> b!1494073 m!1377873))

(assert (=> b!1494073 m!1377873))

(declare-fun m!1377885 () Bool)

(assert (=> b!1494073 m!1377885))

(assert (=> b!1494073 m!1377885))

(assert (=> b!1494073 m!1377873))

(declare-fun m!1377887 () Bool)

(assert (=> b!1494073 m!1377887))

(assert (=> b!1494063 m!1377873))

(assert (=> b!1494063 m!1377873))

(declare-fun m!1377889 () Bool)

(assert (=> b!1494063 m!1377889))

(declare-fun m!1377891 () Bool)

(assert (=> b!1494060 m!1377891))

(assert (=> b!1494060 m!1377891))

(declare-fun m!1377893 () Bool)

(assert (=> b!1494060 m!1377893))

(declare-fun m!1377895 () Bool)

(assert (=> b!1494060 m!1377895))

(declare-fun m!1377897 () Bool)

(assert (=> b!1494060 m!1377897))

(declare-fun m!1377899 () Bool)

(assert (=> b!1494072 m!1377899))

(assert (=> b!1494072 m!1377899))

(declare-fun m!1377901 () Bool)

(assert (=> b!1494072 m!1377901))

(assert (=> b!1494069 m!1377873))

(assert (=> b!1494069 m!1377873))

(declare-fun m!1377903 () Bool)

(assert (=> b!1494069 m!1377903))

(declare-fun m!1377905 () Bool)

(assert (=> b!1494061 m!1377905))

(assert (=> b!1494061 m!1377895))

(declare-fun m!1377907 () Bool)

(assert (=> b!1494061 m!1377907))

(declare-fun m!1377909 () Bool)

(assert (=> b!1494061 m!1377909))

(declare-fun m!1377911 () Bool)

(assert (=> b!1494061 m!1377911))

(assert (=> b!1494061 m!1377873))

(declare-fun m!1377913 () Bool)

(assert (=> b!1494068 m!1377913))

(declare-fun m!1377915 () Bool)

(assert (=> b!1494058 m!1377915))

(assert (=> b!1494059 m!1377895))

(declare-fun m!1377917 () Bool)

(assert (=> b!1494059 m!1377917))

(declare-fun m!1377919 () Bool)

(assert (=> b!1494065 m!1377919))

(assert (=> b!1494062 m!1377873))

(assert (=> b!1494062 m!1377873))

(declare-fun m!1377921 () Bool)

(assert (=> b!1494062 m!1377921))

(check-sat (not b!1494060) (not b!1494063) (not b!1494064) (not b!1494057) (not b!1494061) (not b!1494058) (not start!127158) (not b!1494073) (not b!1494069) (not b!1494072) (not b!1494062) (not b!1494065) (not b!1494068))
(check-sat)
