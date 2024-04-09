; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125208 () Bool)

(assert start!125208)

(declare-fun b!1459037 () Bool)

(declare-fun res!989157 () Bool)

(declare-fun e!820617 () Bool)

(assert (=> b!1459037 (=> (not res!989157) (not e!820617))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459037 (= res!989157 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459038 () Bool)

(declare-fun e!820613 () Bool)

(declare-fun e!820614 () Bool)

(assert (=> b!1459038 (= e!820613 e!820614)))

(declare-fun res!989156 () Bool)

(assert (=> b!1459038 (=> (not res!989156) (not e!820614))))

(declare-datatypes ((array!98573 0))(
  ( (array!98574 (arr!47570 (Array (_ BitVec 32) (_ BitVec 64))) (size!48121 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98573)

(assert (=> b!1459038 (= res!989156 (= (select (store (arr!47570 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!639254 () array!98573)

(assert (=> b!1459038 (= lt!639254 (array!98574 (store (arr!47570 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48121 a!2862)))))

(declare-fun b!1459039 () Bool)

(declare-fun res!989141 () Bool)

(assert (=> b!1459039 (=> (not res!989141) (not e!820613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459039 (= res!989141 (validKeyInArray!0 (select (arr!47570 a!2862) i!1006)))))

(declare-fun e!820619 () Bool)

(declare-fun lt!639259 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1459040 () Bool)

(declare-datatypes ((SeekEntryResult!11845 0))(
  ( (MissingZero!11845 (index!49771 (_ BitVec 32))) (Found!11845 (index!49772 (_ BitVec 32))) (Intermediate!11845 (undefined!12657 Bool) (index!49773 (_ BitVec 32)) (x!131385 (_ BitVec 32))) (Undefined!11845) (MissingVacant!11845 (index!49774 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98573 (_ BitVec 32)) SeekEntryResult!11845)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98573 (_ BitVec 32)) SeekEntryResult!11845)

(assert (=> b!1459040 (= e!820619 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639259 lt!639254 mask!2687) (seekEntryOrOpen!0 lt!639259 lt!639254 mask!2687)))))

(declare-fun b!1459041 () Bool)

(declare-fun res!989146 () Bool)

(declare-fun e!820611 () Bool)

(assert (=> b!1459041 (=> res!989146 e!820611)))

(declare-fun lt!639257 () SeekEntryResult!11845)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!639252 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98573 (_ BitVec 32)) SeekEntryResult!11845)

(assert (=> b!1459041 (= res!989146 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639252 (select (arr!47570 a!2862) j!93) a!2862 mask!2687) lt!639257)))))

(declare-fun b!1459042 () Bool)

(declare-fun res!989140 () Bool)

(assert (=> b!1459042 (=> res!989140 e!820611)))

(declare-fun e!820618 () Bool)

(assert (=> b!1459042 (= res!989140 e!820618)))

(declare-fun c!134461 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459042 (= c!134461 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459043 () Bool)

(declare-fun res!989149 () Bool)

(declare-fun e!820616 () Bool)

(assert (=> b!1459043 (=> (not res!989149) (not e!820616))))

(assert (=> b!1459043 (= res!989149 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47570 a!2862) j!93) a!2862 mask!2687) lt!639257))))

(declare-fun b!1459044 () Bool)

(declare-fun res!989153 () Bool)

(assert (=> b!1459044 (=> (not res!989153) (not e!820613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98573 (_ BitVec 32)) Bool)

(assert (=> b!1459044 (= res!989153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459045 () Bool)

(declare-fun e!820612 () Bool)

(assert (=> b!1459045 (= e!820612 e!820611)))

(declare-fun res!989154 () Bool)

(assert (=> b!1459045 (=> res!989154 e!820611)))

(assert (=> b!1459045 (= res!989154 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639252 #b00000000000000000000000000000000) (bvsge lt!639252 (size!48121 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459045 (= lt!639252 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639253 () SeekEntryResult!11845)

(assert (=> b!1459045 (= lt!639253 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639259 lt!639254 mask!2687))))

(assert (=> b!1459045 (= lt!639253 (seekEntryOrOpen!0 lt!639259 lt!639254 mask!2687))))

(declare-fun b!1459046 () Bool)

(declare-fun res!989147 () Bool)

(assert (=> b!1459046 (=> res!989147 e!820611)))

(assert (=> b!1459046 (= res!989147 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459047 () Bool)

(assert (=> b!1459047 (= e!820617 (not e!820612))))

(declare-fun res!989148 () Bool)

(assert (=> b!1459047 (=> res!989148 e!820612)))

(assert (=> b!1459047 (= res!989148 (or (and (= (select (arr!47570 a!2862) index!646) (select (store (arr!47570 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47570 a!2862) index!646) (select (arr!47570 a!2862) j!93))) (= (select (arr!47570 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639258 () SeekEntryResult!11845)

(assert (=> b!1459047 (and (= lt!639258 (Found!11845 j!93)) (or (= (select (arr!47570 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47570 a!2862) intermediateBeforeIndex!19) (select (arr!47570 a!2862) j!93))) (let ((bdg!53483 (select (store (arr!47570 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47570 a!2862) index!646) bdg!53483) (= (select (arr!47570 a!2862) index!646) (select (arr!47570 a!2862) j!93))) (= (select (arr!47570 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53483 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459047 (= lt!639258 (seekEntryOrOpen!0 (select (arr!47570 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1459047 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49134 0))(
  ( (Unit!49135) )
))
(declare-fun lt!639255 () Unit!49134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49134)

(assert (=> b!1459047 (= lt!639255 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459048 () Bool)

(assert (=> b!1459048 (= e!820618 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639252 intermediateAfterIndex!19 lt!639259 lt!639254 mask!2687) lt!639253)))))

(declare-fun res!989143 () Bool)

(assert (=> start!125208 (=> (not res!989143) (not e!820613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125208 (= res!989143 (validMask!0 mask!2687))))

(assert (=> start!125208 e!820613))

(assert (=> start!125208 true))

(declare-fun array_inv!36515 (array!98573) Bool)

(assert (=> start!125208 (array_inv!36515 a!2862)))

(declare-fun b!1459036 () Bool)

(assert (=> b!1459036 (= e!820611 true)))

(assert (=> b!1459036 (= lt!639258 lt!639253)))

(declare-fun lt!639256 () Unit!49134)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49134)

(assert (=> b!1459036 (= lt!639256 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639252 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459049 () Bool)

(declare-fun res!989152 () Bool)

(assert (=> b!1459049 (=> (not res!989152) (not e!820617))))

(assert (=> b!1459049 (= res!989152 e!820619)))

(declare-fun c!134462 () Bool)

(assert (=> b!1459049 (= c!134462 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!639251 () SeekEntryResult!11845)

(declare-fun b!1459050 () Bool)

(assert (=> b!1459050 (= e!820618 (not (= lt!639251 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639252 lt!639259 lt!639254 mask!2687))))))

(declare-fun b!1459051 () Bool)

(declare-fun res!989151 () Bool)

(assert (=> b!1459051 (=> (not res!989151) (not e!820613))))

(declare-datatypes ((List!34251 0))(
  ( (Nil!34248) (Cons!34247 (h!35597 (_ BitVec 64)) (t!48952 List!34251)) )
))
(declare-fun arrayNoDuplicates!0 (array!98573 (_ BitVec 32) List!34251) Bool)

(assert (=> b!1459051 (= res!989151 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34248))))

(declare-fun b!1459052 () Bool)

(declare-fun res!989142 () Bool)

(assert (=> b!1459052 (=> (not res!989142) (not e!820613))))

(assert (=> b!1459052 (= res!989142 (validKeyInArray!0 (select (arr!47570 a!2862) j!93)))))

(declare-fun b!1459053 () Bool)

(assert (=> b!1459053 (= e!820616 e!820617)))

(declare-fun res!989145 () Bool)

(assert (=> b!1459053 (=> (not res!989145) (not e!820617))))

(assert (=> b!1459053 (= res!989145 (= lt!639251 (Intermediate!11845 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459053 (= lt!639251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639259 mask!2687) lt!639259 lt!639254 mask!2687))))

(assert (=> b!1459053 (= lt!639259 (select (store (arr!47570 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459054 () Bool)

(declare-fun res!989144 () Bool)

(assert (=> b!1459054 (=> (not res!989144) (not e!820613))))

(assert (=> b!1459054 (= res!989144 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48121 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48121 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48121 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459055 () Bool)

(assert (=> b!1459055 (= e!820619 (= lt!639251 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639259 lt!639254 mask!2687)))))

(declare-fun b!1459056 () Bool)

(assert (=> b!1459056 (= e!820614 e!820616)))

(declare-fun res!989150 () Bool)

(assert (=> b!1459056 (=> (not res!989150) (not e!820616))))

(assert (=> b!1459056 (= res!989150 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47570 a!2862) j!93) mask!2687) (select (arr!47570 a!2862) j!93) a!2862 mask!2687) lt!639257))))

(assert (=> b!1459056 (= lt!639257 (Intermediate!11845 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459057 () Bool)

(declare-fun res!989155 () Bool)

(assert (=> b!1459057 (=> (not res!989155) (not e!820613))))

(assert (=> b!1459057 (= res!989155 (and (= (size!48121 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48121 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48121 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125208 res!989143) b!1459057))

(assert (= (and b!1459057 res!989155) b!1459039))

(assert (= (and b!1459039 res!989141) b!1459052))

(assert (= (and b!1459052 res!989142) b!1459044))

(assert (= (and b!1459044 res!989153) b!1459051))

(assert (= (and b!1459051 res!989151) b!1459054))

(assert (= (and b!1459054 res!989144) b!1459038))

(assert (= (and b!1459038 res!989156) b!1459056))

(assert (= (and b!1459056 res!989150) b!1459043))

(assert (= (and b!1459043 res!989149) b!1459053))

(assert (= (and b!1459053 res!989145) b!1459049))

(assert (= (and b!1459049 c!134462) b!1459055))

(assert (= (and b!1459049 (not c!134462)) b!1459040))

(assert (= (and b!1459049 res!989152) b!1459037))

(assert (= (and b!1459037 res!989157) b!1459047))

(assert (= (and b!1459047 (not res!989148)) b!1459045))

(assert (= (and b!1459045 (not res!989154)) b!1459041))

(assert (= (and b!1459041 (not res!989146)) b!1459042))

(assert (= (and b!1459042 c!134461) b!1459050))

(assert (= (and b!1459042 (not c!134461)) b!1459048))

(assert (= (and b!1459042 (not res!989140)) b!1459046))

(assert (= (and b!1459046 (not res!989147)) b!1459036))

(declare-fun m!1346883 () Bool)

(assert (=> b!1459055 m!1346883))

(declare-fun m!1346885 () Bool)

(assert (=> b!1459039 m!1346885))

(assert (=> b!1459039 m!1346885))

(declare-fun m!1346887 () Bool)

(assert (=> b!1459039 m!1346887))

(declare-fun m!1346889 () Bool)

(assert (=> b!1459036 m!1346889))

(declare-fun m!1346891 () Bool)

(assert (=> b!1459045 m!1346891))

(declare-fun m!1346893 () Bool)

(assert (=> b!1459045 m!1346893))

(declare-fun m!1346895 () Bool)

(assert (=> b!1459045 m!1346895))

(declare-fun m!1346897 () Bool)

(assert (=> b!1459051 m!1346897))

(declare-fun m!1346899 () Bool)

(assert (=> b!1459056 m!1346899))

(assert (=> b!1459056 m!1346899))

(declare-fun m!1346901 () Bool)

(assert (=> b!1459056 m!1346901))

(assert (=> b!1459056 m!1346901))

(assert (=> b!1459056 m!1346899))

(declare-fun m!1346903 () Bool)

(assert (=> b!1459056 m!1346903))

(declare-fun m!1346905 () Bool)

(assert (=> b!1459050 m!1346905))

(assert (=> b!1459040 m!1346893))

(assert (=> b!1459040 m!1346895))

(declare-fun m!1346907 () Bool)

(assert (=> b!1459038 m!1346907))

(declare-fun m!1346909 () Bool)

(assert (=> b!1459038 m!1346909))

(declare-fun m!1346911 () Bool)

(assert (=> b!1459044 m!1346911))

(declare-fun m!1346913 () Bool)

(assert (=> b!1459048 m!1346913))

(declare-fun m!1346915 () Bool)

(assert (=> b!1459047 m!1346915))

(assert (=> b!1459047 m!1346907))

(declare-fun m!1346917 () Bool)

(assert (=> b!1459047 m!1346917))

(declare-fun m!1346919 () Bool)

(assert (=> b!1459047 m!1346919))

(declare-fun m!1346921 () Bool)

(assert (=> b!1459047 m!1346921))

(assert (=> b!1459047 m!1346899))

(declare-fun m!1346923 () Bool)

(assert (=> b!1459047 m!1346923))

(declare-fun m!1346925 () Bool)

(assert (=> b!1459047 m!1346925))

(assert (=> b!1459047 m!1346899))

(declare-fun m!1346927 () Bool)

(assert (=> start!125208 m!1346927))

(declare-fun m!1346929 () Bool)

(assert (=> start!125208 m!1346929))

(assert (=> b!1459041 m!1346899))

(assert (=> b!1459041 m!1346899))

(declare-fun m!1346931 () Bool)

(assert (=> b!1459041 m!1346931))

(assert (=> b!1459043 m!1346899))

(assert (=> b!1459043 m!1346899))

(declare-fun m!1346933 () Bool)

(assert (=> b!1459043 m!1346933))

(assert (=> b!1459052 m!1346899))

(assert (=> b!1459052 m!1346899))

(declare-fun m!1346935 () Bool)

(assert (=> b!1459052 m!1346935))

(declare-fun m!1346937 () Bool)

(assert (=> b!1459053 m!1346937))

(assert (=> b!1459053 m!1346937))

(declare-fun m!1346939 () Bool)

(assert (=> b!1459053 m!1346939))

(assert (=> b!1459053 m!1346907))

(declare-fun m!1346941 () Bool)

(assert (=> b!1459053 m!1346941))

(check-sat (not b!1459055) (not start!125208) (not b!1459043) (not b!1459056) (not b!1459045) (not b!1459040) (not b!1459053) (not b!1459048) (not b!1459050) (not b!1459044) (not b!1459041) (not b!1459039) (not b!1459036) (not b!1459047) (not b!1459052) (not b!1459051))
(check-sat)
