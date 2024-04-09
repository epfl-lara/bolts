; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126710 () Bool)

(assert start!126710)

(declare-fun b!1487048 () Bool)

(declare-fun e!833591 () Bool)

(declare-fun e!833587 () Bool)

(assert (=> b!1487048 (= e!833591 (not e!833587))))

(declare-fun res!1011454 () Bool)

(assert (=> b!1487048 (=> res!1011454 e!833587)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99526 0))(
  ( (array!99527 (arr!48033 (Array (_ BitVec 32) (_ BitVec 64))) (size!48584 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99526)

(assert (=> b!1487048 (= res!1011454 (or (and (= (select (arr!48033 a!2862) index!646) (select (store (arr!48033 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48033 a!2862) index!646) (select (arr!48033 a!2862) j!93))) (= (select (arr!48033 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833586 () Bool)

(assert (=> b!1487048 e!833586))

(declare-fun res!1011446 () Bool)

(assert (=> b!1487048 (=> (not res!1011446) (not e!833586))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99526 (_ BitVec 32)) Bool)

(assert (=> b!1487048 (= res!1011446 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49880 0))(
  ( (Unit!49881) )
))
(declare-fun lt!648641 () Unit!49880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49880)

(assert (=> b!1487048 (= lt!648641 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487049 () Bool)

(declare-fun res!1011443 () Bool)

(assert (=> b!1487049 (=> (not res!1011443) (not e!833591))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1487049 (= res!1011443 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487050 () Bool)

(declare-fun res!1011447 () Bool)

(assert (=> b!1487050 (=> (not res!1011447) (not e!833591))))

(declare-fun e!833590 () Bool)

(assert (=> b!1487050 (= res!1011447 e!833590)))

(declare-fun c!137330 () Bool)

(assert (=> b!1487050 (= c!137330 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1011450 () Bool)

(declare-fun e!833588 () Bool)

(assert (=> start!126710 (=> (not res!1011450) (not e!833588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126710 (= res!1011450 (validMask!0 mask!2687))))

(assert (=> start!126710 e!833588))

(assert (=> start!126710 true))

(declare-fun array_inv!36978 (array!99526) Bool)

(assert (=> start!126710 (array_inv!36978 a!2862)))

(declare-fun b!1487051 () Bool)

(declare-fun res!1011452 () Bool)

(assert (=> b!1487051 (=> (not res!1011452) (not e!833588))))

(assert (=> b!1487051 (= res!1011452 (and (= (size!48584 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48584 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48584 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487052 () Bool)

(declare-fun res!1011455 () Bool)

(assert (=> b!1487052 (=> (not res!1011455) (not e!833588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487052 (= res!1011455 (validKeyInArray!0 (select (arr!48033 a!2862) i!1006)))))

(declare-fun b!1487053 () Bool)

(declare-fun res!1011458 () Bool)

(assert (=> b!1487053 (=> (not res!1011458) (not e!833588))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1487053 (= res!1011458 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48584 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48584 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48584 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487054 () Bool)

(declare-fun e!833593 () Bool)

(assert (=> b!1487054 (= e!833586 e!833593)))

(declare-fun res!1011448 () Bool)

(assert (=> b!1487054 (=> res!1011448 e!833593)))

(declare-fun lt!648642 () (_ BitVec 64))

(assert (=> b!1487054 (= res!1011448 (or (and (= (select (arr!48033 a!2862) index!646) lt!648642) (= (select (arr!48033 a!2862) index!646) (select (arr!48033 a!2862) j!93))) (= (select (arr!48033 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487054 (= lt!648642 (select (store (arr!48033 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1487055 () Bool)

(declare-fun lt!648637 () array!99526)

(declare-fun lt!648638 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12296 0))(
  ( (MissingZero!12296 (index!51575 (_ BitVec 32))) (Found!12296 (index!51576 (_ BitVec 32))) (Intermediate!12296 (undefined!13108 Bool) (index!51577 (_ BitVec 32)) (x!133155 (_ BitVec 32))) (Undefined!12296) (MissingVacant!12296 (index!51578 (_ BitVec 32))) )
))
(declare-fun lt!648639 () SeekEntryResult!12296)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99526 (_ BitVec 32)) SeekEntryResult!12296)

(assert (=> b!1487055 (= e!833590 (= lt!648639 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648638 lt!648637 mask!2687)))))

(declare-fun b!1487056 () Bool)

(declare-fun e!833592 () Bool)

(assert (=> b!1487056 (= e!833593 e!833592)))

(declare-fun res!1011449 () Bool)

(assert (=> b!1487056 (=> (not res!1011449) (not e!833592))))

(assert (=> b!1487056 (= res!1011449 (and (= index!646 intermediateAfterIndex!19) (= lt!648642 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487057 () Bool)

(declare-fun e!833589 () Bool)

(assert (=> b!1487057 (= e!833588 e!833589)))

(declare-fun res!1011453 () Bool)

(assert (=> b!1487057 (=> (not res!1011453) (not e!833589))))

(assert (=> b!1487057 (= res!1011453 (= (select (store (arr!48033 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487057 (= lt!648637 (array!99527 (store (arr!48033 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48584 a!2862)))))

(declare-fun b!1487058 () Bool)

(declare-fun res!1011459 () Bool)

(assert (=> b!1487058 (=> (not res!1011459) (not e!833586))))

(assert (=> b!1487058 (= res!1011459 (or (= (select (arr!48033 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48033 a!2862) intermediateBeforeIndex!19) (select (arr!48033 a!2862) j!93))))))

(declare-fun b!1487059 () Bool)

(declare-fun res!1011444 () Bool)

(assert (=> b!1487059 (=> (not res!1011444) (not e!833588))))

(assert (=> b!1487059 (= res!1011444 (validKeyInArray!0 (select (arr!48033 a!2862) j!93)))))

(declare-fun b!1487060 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99526 (_ BitVec 32)) SeekEntryResult!12296)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99526 (_ BitVec 32)) SeekEntryResult!12296)

(assert (=> b!1487060 (= e!833592 (= (seekEntryOrOpen!0 lt!648638 lt!648637 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648638 lt!648637 mask!2687)))))

(declare-fun b!1487061 () Bool)

(declare-fun e!833594 () Bool)

(assert (=> b!1487061 (= e!833594 e!833591)))

(declare-fun res!1011457 () Bool)

(assert (=> b!1487061 (=> (not res!1011457) (not e!833591))))

(assert (=> b!1487061 (= res!1011457 (= lt!648639 (Intermediate!12296 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487061 (= lt!648639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648638 mask!2687) lt!648638 lt!648637 mask!2687))))

(assert (=> b!1487061 (= lt!648638 (select (store (arr!48033 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487062 () Bool)

(declare-fun res!1011456 () Bool)

(assert (=> b!1487062 (=> (not res!1011456) (not e!833588))))

(assert (=> b!1487062 (= res!1011456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487063 () Bool)

(declare-fun res!1011441 () Bool)

(assert (=> b!1487063 (=> (not res!1011441) (not e!833586))))

(assert (=> b!1487063 (= res!1011441 (= (seekEntryOrOpen!0 (select (arr!48033 a!2862) j!93) a!2862 mask!2687) (Found!12296 j!93)))))

(declare-fun b!1487064 () Bool)

(declare-fun res!1011445 () Bool)

(assert (=> b!1487064 (=> (not res!1011445) (not e!833588))))

(declare-datatypes ((List!34714 0))(
  ( (Nil!34711) (Cons!34710 (h!36087 (_ BitVec 64)) (t!49415 List!34714)) )
))
(declare-fun arrayNoDuplicates!0 (array!99526 (_ BitVec 32) List!34714) Bool)

(assert (=> b!1487064 (= res!1011445 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34711))))

(declare-fun b!1487065 () Bool)

(assert (=> b!1487065 (= e!833587 true)))

(declare-fun lt!648640 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487065 (= lt!648640 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487066 () Bool)

(assert (=> b!1487066 (= e!833590 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648638 lt!648637 mask!2687) (seekEntryOrOpen!0 lt!648638 lt!648637 mask!2687)))))

(declare-fun b!1487067 () Bool)

(declare-fun res!1011451 () Bool)

(assert (=> b!1487067 (=> (not res!1011451) (not e!833594))))

(declare-fun lt!648643 () SeekEntryResult!12296)

(assert (=> b!1487067 (= res!1011451 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48033 a!2862) j!93) a!2862 mask!2687) lt!648643))))

(declare-fun b!1487068 () Bool)

(assert (=> b!1487068 (= e!833589 e!833594)))

(declare-fun res!1011442 () Bool)

(assert (=> b!1487068 (=> (not res!1011442) (not e!833594))))

(assert (=> b!1487068 (= res!1011442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48033 a!2862) j!93) mask!2687) (select (arr!48033 a!2862) j!93) a!2862 mask!2687) lt!648643))))

(assert (=> b!1487068 (= lt!648643 (Intermediate!12296 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126710 res!1011450) b!1487051))

(assert (= (and b!1487051 res!1011452) b!1487052))

(assert (= (and b!1487052 res!1011455) b!1487059))

(assert (= (and b!1487059 res!1011444) b!1487062))

(assert (= (and b!1487062 res!1011456) b!1487064))

(assert (= (and b!1487064 res!1011445) b!1487053))

(assert (= (and b!1487053 res!1011458) b!1487057))

(assert (= (and b!1487057 res!1011453) b!1487068))

(assert (= (and b!1487068 res!1011442) b!1487067))

(assert (= (and b!1487067 res!1011451) b!1487061))

(assert (= (and b!1487061 res!1011457) b!1487050))

(assert (= (and b!1487050 c!137330) b!1487055))

(assert (= (and b!1487050 (not c!137330)) b!1487066))

(assert (= (and b!1487050 res!1011447) b!1487049))

(assert (= (and b!1487049 res!1011443) b!1487048))

(assert (= (and b!1487048 res!1011446) b!1487063))

(assert (= (and b!1487063 res!1011441) b!1487058))

(assert (= (and b!1487058 res!1011459) b!1487054))

(assert (= (and b!1487054 (not res!1011448)) b!1487056))

(assert (= (and b!1487056 res!1011449) b!1487060))

(assert (= (and b!1487048 (not res!1011454)) b!1487065))

(declare-fun m!1371863 () Bool)

(assert (=> b!1487066 m!1371863))

(declare-fun m!1371865 () Bool)

(assert (=> b!1487066 m!1371865))

(declare-fun m!1371867 () Bool)

(assert (=> b!1487059 m!1371867))

(assert (=> b!1487059 m!1371867))

(declare-fun m!1371869 () Bool)

(assert (=> b!1487059 m!1371869))

(declare-fun m!1371871 () Bool)

(assert (=> b!1487058 m!1371871))

(assert (=> b!1487058 m!1371867))

(declare-fun m!1371873 () Bool)

(assert (=> b!1487052 m!1371873))

(assert (=> b!1487052 m!1371873))

(declare-fun m!1371875 () Bool)

(assert (=> b!1487052 m!1371875))

(declare-fun m!1371877 () Bool)

(assert (=> b!1487065 m!1371877))

(declare-fun m!1371879 () Bool)

(assert (=> b!1487048 m!1371879))

(declare-fun m!1371881 () Bool)

(assert (=> b!1487048 m!1371881))

(declare-fun m!1371883 () Bool)

(assert (=> b!1487048 m!1371883))

(declare-fun m!1371885 () Bool)

(assert (=> b!1487048 m!1371885))

(declare-fun m!1371887 () Bool)

(assert (=> b!1487048 m!1371887))

(assert (=> b!1487048 m!1371867))

(declare-fun m!1371889 () Bool)

(assert (=> start!126710 m!1371889))

(declare-fun m!1371891 () Bool)

(assert (=> start!126710 m!1371891))

(declare-fun m!1371893 () Bool)

(assert (=> b!1487061 m!1371893))

(assert (=> b!1487061 m!1371893))

(declare-fun m!1371895 () Bool)

(assert (=> b!1487061 m!1371895))

(assert (=> b!1487061 m!1371881))

(declare-fun m!1371897 () Bool)

(assert (=> b!1487061 m!1371897))

(assert (=> b!1487060 m!1371865))

(assert (=> b!1487060 m!1371863))

(assert (=> b!1487057 m!1371881))

(declare-fun m!1371899 () Bool)

(assert (=> b!1487057 m!1371899))

(assert (=> b!1487054 m!1371885))

(assert (=> b!1487054 m!1371867))

(assert (=> b!1487054 m!1371881))

(assert (=> b!1487054 m!1371883))

(declare-fun m!1371901 () Bool)

(assert (=> b!1487055 m!1371901))

(declare-fun m!1371903 () Bool)

(assert (=> b!1487064 m!1371903))

(assert (=> b!1487063 m!1371867))

(assert (=> b!1487063 m!1371867))

(declare-fun m!1371905 () Bool)

(assert (=> b!1487063 m!1371905))

(assert (=> b!1487068 m!1371867))

(assert (=> b!1487068 m!1371867))

(declare-fun m!1371907 () Bool)

(assert (=> b!1487068 m!1371907))

(assert (=> b!1487068 m!1371907))

(assert (=> b!1487068 m!1371867))

(declare-fun m!1371909 () Bool)

(assert (=> b!1487068 m!1371909))

(assert (=> b!1487067 m!1371867))

(assert (=> b!1487067 m!1371867))

(declare-fun m!1371911 () Bool)

(assert (=> b!1487067 m!1371911))

(declare-fun m!1371913 () Bool)

(assert (=> b!1487062 m!1371913))

(push 1)

