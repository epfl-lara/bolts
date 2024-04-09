; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126422 () Bool)

(assert start!126422)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1481430 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!830888 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99358 0))(
  ( (array!99359 (arr!47952 (Array (_ BitVec 32) (_ BitVec 64))) (size!48503 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99358)

(assert (=> b!1481430 (= e!830888 (and (or (= (select (arr!47952 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47952 a!2862) intermediateBeforeIndex!19) (select (arr!47952 a!2862) j!93))) (or (and (= (select (arr!47952 a!2862) index!646) (select (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47952 a!2862) index!646) (select (arr!47952 a!2862) j!93))) (= (select (arr!47952 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481431 () Bool)

(declare-fun res!1006857 () Bool)

(assert (=> b!1481431 (=> (not res!1006857) (not e!830888))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12215 0))(
  ( (MissingZero!12215 (index!51251 (_ BitVec 32))) (Found!12215 (index!51252 (_ BitVec 32))) (Intermediate!12215 (undefined!13027 Bool) (index!51253 (_ BitVec 32)) (x!132837 (_ BitVec 32))) (Undefined!12215) (MissingVacant!12215 (index!51254 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99358 (_ BitVec 32)) SeekEntryResult!12215)

(assert (=> b!1481431 (= res!1006857 (= (seekEntryOrOpen!0 (select (arr!47952 a!2862) j!93) a!2862 mask!2687) (Found!12215 j!93)))))

(declare-fun b!1481432 () Bool)

(declare-fun res!1006869 () Bool)

(declare-fun e!830893 () Bool)

(assert (=> b!1481432 (=> (not res!1006869) (not e!830893))))

(declare-datatypes ((List!34633 0))(
  ( (Nil!34630) (Cons!34629 (h!36000 (_ BitVec 64)) (t!49334 List!34633)) )
))
(declare-fun arrayNoDuplicates!0 (array!99358 (_ BitVec 32) List!34633) Bool)

(assert (=> b!1481432 (= res!1006869 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34630))))

(declare-fun b!1481433 () Bool)

(declare-fun res!1006861 () Bool)

(declare-fun e!830892 () Bool)

(assert (=> b!1481433 (=> (not res!1006861) (not e!830892))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481433 (= res!1006861 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481434 () Bool)

(declare-fun res!1006862 () Bool)

(assert (=> b!1481434 (=> (not res!1006862) (not e!830893))))

(assert (=> b!1481434 (= res!1006862 (and (= (size!48503 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48503 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48503 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481435 () Bool)

(declare-fun res!1006864 () Bool)

(declare-fun e!830894 () Bool)

(assert (=> b!1481435 (=> (not res!1006864) (not e!830894))))

(declare-fun lt!646737 () SeekEntryResult!12215)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99358 (_ BitVec 32)) SeekEntryResult!12215)

(assert (=> b!1481435 (= res!1006864 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47952 a!2862) j!93) a!2862 mask!2687) lt!646737))))

(declare-fun res!1006858 () Bool)

(assert (=> start!126422 (=> (not res!1006858) (not e!830893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126422 (= res!1006858 (validMask!0 mask!2687))))

(assert (=> start!126422 e!830893))

(assert (=> start!126422 true))

(declare-fun array_inv!36897 (array!99358) Bool)

(assert (=> start!126422 (array_inv!36897 a!2862)))

(declare-fun b!1481436 () Bool)

(declare-fun e!830889 () Bool)

(assert (=> b!1481436 (= e!830889 e!830894)))

(declare-fun res!1006866 () Bool)

(assert (=> b!1481436 (=> (not res!1006866) (not e!830894))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481436 (= res!1006866 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47952 a!2862) j!93) mask!2687) (select (arr!47952 a!2862) j!93) a!2862 mask!2687) lt!646737))))

(assert (=> b!1481436 (= lt!646737 (Intermediate!12215 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481437 () Bool)

(assert (=> b!1481437 (= e!830894 e!830892)))

(declare-fun res!1006868 () Bool)

(assert (=> b!1481437 (=> (not res!1006868) (not e!830892))))

(declare-fun lt!646740 () SeekEntryResult!12215)

(assert (=> b!1481437 (= res!1006868 (= lt!646740 (Intermediate!12215 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646741 () (_ BitVec 64))

(declare-fun lt!646738 () array!99358)

(assert (=> b!1481437 (= lt!646740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646741 mask!2687) lt!646741 lt!646738 mask!2687))))

(assert (=> b!1481437 (= lt!646741 (select (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481438 () Bool)

(declare-fun res!1006867 () Bool)

(assert (=> b!1481438 (=> (not res!1006867) (not e!830893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481438 (= res!1006867 (validKeyInArray!0 (select (arr!47952 a!2862) j!93)))))

(declare-fun b!1481439 () Bool)

(declare-fun res!1006855 () Bool)

(assert (=> b!1481439 (=> (not res!1006855) (not e!830893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99358 (_ BitVec 32)) Bool)

(assert (=> b!1481439 (= res!1006855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481440 () Bool)

(declare-fun res!1006863 () Bool)

(assert (=> b!1481440 (=> (not res!1006863) (not e!830893))))

(assert (=> b!1481440 (= res!1006863 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48503 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48503 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48503 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481441 () Bool)

(declare-fun e!830891 () Bool)

(assert (=> b!1481441 (= e!830891 (= lt!646740 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646741 lt!646738 mask!2687)))))

(declare-fun b!1481442 () Bool)

(assert (=> b!1481442 (= e!830892 (not (or (and (= (select (arr!47952 a!2862) index!646) (select (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47952 a!2862) index!646) (select (arr!47952 a!2862) j!93))) (= (select (arr!47952 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= (select (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1481442 e!830888))

(declare-fun res!1006859 () Bool)

(assert (=> b!1481442 (=> (not res!1006859) (not e!830888))))

(assert (=> b!1481442 (= res!1006859 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49718 0))(
  ( (Unit!49719) )
))
(declare-fun lt!646739 () Unit!49718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49718)

(assert (=> b!1481442 (= lt!646739 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481443 () Bool)

(declare-fun res!1006865 () Bool)

(assert (=> b!1481443 (=> (not res!1006865) (not e!830892))))

(assert (=> b!1481443 (= res!1006865 e!830891)))

(declare-fun c!136811 () Bool)

(assert (=> b!1481443 (= c!136811 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481444 () Bool)

(assert (=> b!1481444 (= e!830893 e!830889)))

(declare-fun res!1006860 () Bool)

(assert (=> b!1481444 (=> (not res!1006860) (not e!830889))))

(assert (=> b!1481444 (= res!1006860 (= (select (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481444 (= lt!646738 (array!99359 (store (arr!47952 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48503 a!2862)))))

(declare-fun b!1481445 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99358 (_ BitVec 32)) SeekEntryResult!12215)

(assert (=> b!1481445 (= e!830891 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646741 lt!646738 mask!2687) (seekEntryOrOpen!0 lt!646741 lt!646738 mask!2687)))))

(declare-fun b!1481446 () Bool)

(declare-fun res!1006856 () Bool)

(assert (=> b!1481446 (=> (not res!1006856) (not e!830893))))

(assert (=> b!1481446 (= res!1006856 (validKeyInArray!0 (select (arr!47952 a!2862) i!1006)))))

(assert (= (and start!126422 res!1006858) b!1481434))

(assert (= (and b!1481434 res!1006862) b!1481446))

(assert (= (and b!1481446 res!1006856) b!1481438))

(assert (= (and b!1481438 res!1006867) b!1481439))

(assert (= (and b!1481439 res!1006855) b!1481432))

(assert (= (and b!1481432 res!1006869) b!1481440))

(assert (= (and b!1481440 res!1006863) b!1481444))

(assert (= (and b!1481444 res!1006860) b!1481436))

(assert (= (and b!1481436 res!1006866) b!1481435))

(assert (= (and b!1481435 res!1006864) b!1481437))

(assert (= (and b!1481437 res!1006868) b!1481443))

(assert (= (and b!1481443 c!136811) b!1481441))

(assert (= (and b!1481443 (not c!136811)) b!1481445))

(assert (= (and b!1481443 res!1006865) b!1481433))

(assert (= (and b!1481433 res!1006861) b!1481442))

(assert (= (and b!1481442 res!1006859) b!1481431))

(assert (= (and b!1481431 res!1006857) b!1481430))

(declare-fun m!1367227 () Bool)

(assert (=> b!1481445 m!1367227))

(declare-fun m!1367229 () Bool)

(assert (=> b!1481445 m!1367229))

(declare-fun m!1367231 () Bool)

(assert (=> start!126422 m!1367231))

(declare-fun m!1367233 () Bool)

(assert (=> start!126422 m!1367233))

(declare-fun m!1367235 () Bool)

(assert (=> b!1481442 m!1367235))

(declare-fun m!1367237 () Bool)

(assert (=> b!1481442 m!1367237))

(declare-fun m!1367239 () Bool)

(assert (=> b!1481442 m!1367239))

(declare-fun m!1367241 () Bool)

(assert (=> b!1481442 m!1367241))

(declare-fun m!1367243 () Bool)

(assert (=> b!1481442 m!1367243))

(declare-fun m!1367245 () Bool)

(assert (=> b!1481442 m!1367245))

(assert (=> b!1481444 m!1367237))

(declare-fun m!1367247 () Bool)

(assert (=> b!1481444 m!1367247))

(assert (=> b!1481438 m!1367245))

(assert (=> b!1481438 m!1367245))

(declare-fun m!1367249 () Bool)

(assert (=> b!1481438 m!1367249))

(declare-fun m!1367251 () Bool)

(assert (=> b!1481446 m!1367251))

(assert (=> b!1481446 m!1367251))

(declare-fun m!1367253 () Bool)

(assert (=> b!1481446 m!1367253))

(assert (=> b!1481436 m!1367245))

(assert (=> b!1481436 m!1367245))

(declare-fun m!1367255 () Bool)

(assert (=> b!1481436 m!1367255))

(assert (=> b!1481436 m!1367255))

(assert (=> b!1481436 m!1367245))

(declare-fun m!1367257 () Bool)

(assert (=> b!1481436 m!1367257))

(declare-fun m!1367259 () Bool)

(assert (=> b!1481437 m!1367259))

(assert (=> b!1481437 m!1367259))

(declare-fun m!1367261 () Bool)

(assert (=> b!1481437 m!1367261))

(assert (=> b!1481437 m!1367237))

(declare-fun m!1367263 () Bool)

(assert (=> b!1481437 m!1367263))

(declare-fun m!1367265 () Bool)

(assert (=> b!1481441 m!1367265))

(assert (=> b!1481430 m!1367237))

(declare-fun m!1367267 () Bool)

(assert (=> b!1481430 m!1367267))

(assert (=> b!1481430 m!1367239))

(assert (=> b!1481430 m!1367241))

(assert (=> b!1481430 m!1367245))

(assert (=> b!1481431 m!1367245))

(assert (=> b!1481431 m!1367245))

(declare-fun m!1367269 () Bool)

(assert (=> b!1481431 m!1367269))

(assert (=> b!1481435 m!1367245))

(assert (=> b!1481435 m!1367245))

(declare-fun m!1367271 () Bool)

(assert (=> b!1481435 m!1367271))

(declare-fun m!1367273 () Bool)

(assert (=> b!1481439 m!1367273))

(declare-fun m!1367275 () Bool)

(assert (=> b!1481432 m!1367275))

(push 1)

(assert (not b!1481441))

(assert (not b!1481435))

(assert (not b!1481445))

(assert (not b!1481436))

(assert (not b!1481446))

(assert (not b!1481437))

(assert (not b!1481432))

(assert (not b!1481431))

(assert (not b!1481442))

(assert (not start!126422))

(assert (not b!1481439))

(assert (not b!1481438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

