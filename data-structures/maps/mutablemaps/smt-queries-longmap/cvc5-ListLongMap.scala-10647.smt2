; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125062 () Bool)

(assert start!125062)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11772 0))(
  ( (MissingZero!11772 (index!49479 (_ BitVec 32))) (Found!11772 (index!49480 (_ BitVec 32))) (Intermediate!11772 (undefined!12584 Bool) (index!49481 (_ BitVec 32)) (x!131120 (_ BitVec 32))) (Undefined!11772) (MissingVacant!11772 (index!49482 (_ BitVec 32))) )
))
(declare-fun lt!637479 () SeekEntryResult!11772)

(declare-fun e!818447 () Bool)

(declare-fun b!1454218 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!637477 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!637482 () (_ BitVec 64))

(declare-datatypes ((array!98427 0))(
  ( (array!98428 (arr!47497 (Array (_ BitVec 32) (_ BitVec 64))) (size!48048 (_ BitVec 32))) )
))
(declare-fun lt!637476 () array!98427)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98427 (_ BitVec 32)) SeekEntryResult!11772)

(assert (=> b!1454218 (= e!818447 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637477 intermediateAfterIndex!19 lt!637482 lt!637476 mask!2687) lt!637479)))))

(declare-fun b!1454220 () Bool)

(declare-fun res!985209 () Bool)

(declare-fun e!818445 () Bool)

(assert (=> b!1454220 (=> (not res!985209) (not e!818445))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!637480 () SeekEntryResult!11772)

(declare-fun a!2862 () array!98427)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98427 (_ BitVec 32)) SeekEntryResult!11772)

(assert (=> b!1454220 (= res!985209 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47497 a!2862) j!93) a!2862 mask!2687) lt!637480))))

(declare-fun b!1454221 () Bool)

(declare-fun e!818452 () Bool)

(assert (=> b!1454221 (= e!818452 true)))

(declare-fun lt!637481 () Bool)

(assert (=> b!1454221 (= lt!637481 e!818447)))

(declare-fun c!134024 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454221 (= c!134024 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454222 () Bool)

(declare-fun e!818448 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98427 (_ BitVec 32)) SeekEntryResult!11772)

(assert (=> b!1454222 (= e!818448 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637482 lt!637476 mask!2687) (seekEntryOrOpen!0 lt!637482 lt!637476 mask!2687)))))

(declare-fun b!1454223 () Bool)

(declare-fun lt!637478 () SeekEntryResult!11772)

(assert (=> b!1454223 (= e!818447 (not (= lt!637478 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637477 lt!637482 lt!637476 mask!2687))))))

(declare-fun b!1454224 () Bool)

(declare-fun res!985208 () Bool)

(declare-fun e!818450 () Bool)

(assert (=> b!1454224 (=> (not res!985208) (not e!818450))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454224 (= res!985208 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454225 () Bool)

(declare-fun res!985215 () Bool)

(assert (=> b!1454225 (=> res!985215 e!818452)))

(assert (=> b!1454225 (= res!985215 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637477 (select (arr!47497 a!2862) j!93) a!2862 mask!2687) lt!637480)))))

(declare-fun b!1454226 () Bool)

(declare-fun res!985199 () Bool)

(declare-fun e!818444 () Bool)

(assert (=> b!1454226 (=> (not res!985199) (not e!818444))))

(assert (=> b!1454226 (= res!985199 (= (seekEntryOrOpen!0 (select (arr!47497 a!2862) j!93) a!2862 mask!2687) (Found!11772 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1454227 () Bool)

(assert (=> b!1454227 (= e!818444 (and (or (= (select (arr!47497 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47497 a!2862) intermediateBeforeIndex!19) (select (arr!47497 a!2862) j!93))) (let ((bdg!53053 (select (store (arr!47497 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47497 a!2862) index!646) bdg!53053) (= (select (arr!47497 a!2862) index!646) (select (arr!47497 a!2862) j!93))) (= (select (arr!47497 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53053 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454228 () Bool)

(assert (=> b!1454228 (= e!818445 e!818450)))

(declare-fun res!985214 () Bool)

(assert (=> b!1454228 (=> (not res!985214) (not e!818450))))

(assert (=> b!1454228 (= res!985214 (= lt!637478 (Intermediate!11772 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454228 (= lt!637478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637482 mask!2687) lt!637482 lt!637476 mask!2687))))

(assert (=> b!1454228 (= lt!637482 (select (store (arr!47497 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454229 () Bool)

(declare-fun res!985201 () Bool)

(declare-fun e!818453 () Bool)

(assert (=> b!1454229 (=> (not res!985201) (not e!818453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98427 (_ BitVec 32)) Bool)

(assert (=> b!1454229 (= res!985201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454230 () Bool)

(declare-fun e!818451 () Bool)

(assert (=> b!1454230 (= e!818453 e!818451)))

(declare-fun res!985205 () Bool)

(assert (=> b!1454230 (=> (not res!985205) (not e!818451))))

(assert (=> b!1454230 (= res!985205 (= (select (store (arr!47497 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454230 (= lt!637476 (array!98428 (store (arr!47497 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48048 a!2862)))))

(declare-fun b!1454231 () Bool)

(declare-fun res!985200 () Bool)

(assert (=> b!1454231 (=> (not res!985200) (not e!818453))))

(assert (=> b!1454231 (= res!985200 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48048 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48048 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48048 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!985207 () Bool)

(assert (=> start!125062 (=> (not res!985207) (not e!818453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125062 (= res!985207 (validMask!0 mask!2687))))

(assert (=> start!125062 e!818453))

(assert (=> start!125062 true))

(declare-fun array_inv!36442 (array!98427) Bool)

(assert (=> start!125062 (array_inv!36442 a!2862)))

(declare-fun b!1454219 () Bool)

(declare-fun e!818449 () Bool)

(assert (=> b!1454219 (= e!818449 e!818452)))

(declare-fun res!985206 () Bool)

(assert (=> b!1454219 (=> res!985206 e!818452)))

(assert (=> b!1454219 (= res!985206 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637477 #b00000000000000000000000000000000) (bvsge lt!637477 (size!48048 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454219 (= lt!637477 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454219 (= lt!637479 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637482 lt!637476 mask!2687))))

(assert (=> b!1454219 (= lt!637479 (seekEntryOrOpen!0 lt!637482 lt!637476 mask!2687))))

(declare-fun b!1454232 () Bool)

(assert (=> b!1454232 (= e!818448 (= lt!637478 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637482 lt!637476 mask!2687)))))

(declare-fun b!1454233 () Bool)

(declare-fun res!985198 () Bool)

(assert (=> b!1454233 (=> (not res!985198) (not e!818453))))

(assert (=> b!1454233 (= res!985198 (and (= (size!48048 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48048 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48048 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454234 () Bool)

(declare-fun res!985204 () Bool)

(assert (=> b!1454234 (=> (not res!985204) (not e!818453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454234 (= res!985204 (validKeyInArray!0 (select (arr!47497 a!2862) j!93)))))

(declare-fun b!1454235 () Bool)

(assert (=> b!1454235 (= e!818451 e!818445)))

(declare-fun res!985211 () Bool)

(assert (=> b!1454235 (=> (not res!985211) (not e!818445))))

(assert (=> b!1454235 (= res!985211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47497 a!2862) j!93) mask!2687) (select (arr!47497 a!2862) j!93) a!2862 mask!2687) lt!637480))))

(assert (=> b!1454235 (= lt!637480 (Intermediate!11772 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454236 () Bool)

(declare-fun res!985202 () Bool)

(assert (=> b!1454236 (=> (not res!985202) (not e!818453))))

(assert (=> b!1454236 (= res!985202 (validKeyInArray!0 (select (arr!47497 a!2862) i!1006)))))

(declare-fun b!1454237 () Bool)

(assert (=> b!1454237 (= e!818450 (not e!818449))))

(declare-fun res!985212 () Bool)

(assert (=> b!1454237 (=> res!985212 e!818449)))

(assert (=> b!1454237 (= res!985212 (or (and (= (select (arr!47497 a!2862) index!646) (select (store (arr!47497 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47497 a!2862) index!646) (select (arr!47497 a!2862) j!93))) (= (select (arr!47497 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454237 e!818444))

(declare-fun res!985210 () Bool)

(assert (=> b!1454237 (=> (not res!985210) (not e!818444))))

(assert (=> b!1454237 (= res!985210 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48988 0))(
  ( (Unit!48989) )
))
(declare-fun lt!637483 () Unit!48988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48988)

(assert (=> b!1454237 (= lt!637483 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454238 () Bool)

(declare-fun res!985203 () Bool)

(assert (=> b!1454238 (=> (not res!985203) (not e!818450))))

(assert (=> b!1454238 (= res!985203 e!818448)))

(declare-fun c!134023 () Bool)

(assert (=> b!1454238 (= c!134023 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454239 () Bool)

(declare-fun res!985213 () Bool)

(assert (=> b!1454239 (=> (not res!985213) (not e!818453))))

(declare-datatypes ((List!34178 0))(
  ( (Nil!34175) (Cons!34174 (h!35524 (_ BitVec 64)) (t!48879 List!34178)) )
))
(declare-fun arrayNoDuplicates!0 (array!98427 (_ BitVec 32) List!34178) Bool)

(assert (=> b!1454239 (= res!985213 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34175))))

(assert (= (and start!125062 res!985207) b!1454233))

(assert (= (and b!1454233 res!985198) b!1454236))

(assert (= (and b!1454236 res!985202) b!1454234))

(assert (= (and b!1454234 res!985204) b!1454229))

(assert (= (and b!1454229 res!985201) b!1454239))

(assert (= (and b!1454239 res!985213) b!1454231))

(assert (= (and b!1454231 res!985200) b!1454230))

(assert (= (and b!1454230 res!985205) b!1454235))

(assert (= (and b!1454235 res!985211) b!1454220))

(assert (= (and b!1454220 res!985209) b!1454228))

(assert (= (and b!1454228 res!985214) b!1454238))

(assert (= (and b!1454238 c!134023) b!1454232))

(assert (= (and b!1454238 (not c!134023)) b!1454222))

(assert (= (and b!1454238 res!985203) b!1454224))

(assert (= (and b!1454224 res!985208) b!1454237))

(assert (= (and b!1454237 res!985210) b!1454226))

(assert (= (and b!1454226 res!985199) b!1454227))

(assert (= (and b!1454237 (not res!985212)) b!1454219))

(assert (= (and b!1454219 (not res!985206)) b!1454225))

(assert (= (and b!1454225 (not res!985215)) b!1454221))

(assert (= (and b!1454221 c!134024) b!1454223))

(assert (= (and b!1454221 (not c!134024)) b!1454218))

(declare-fun m!1342635 () Bool)

(assert (=> b!1454218 m!1342635))

(declare-fun m!1342637 () Bool)

(assert (=> b!1454220 m!1342637))

(assert (=> b!1454220 m!1342637))

(declare-fun m!1342639 () Bool)

(assert (=> b!1454220 m!1342639))

(assert (=> b!1454235 m!1342637))

(assert (=> b!1454235 m!1342637))

(declare-fun m!1342641 () Bool)

(assert (=> b!1454235 m!1342641))

(assert (=> b!1454235 m!1342641))

(assert (=> b!1454235 m!1342637))

(declare-fun m!1342643 () Bool)

(assert (=> b!1454235 m!1342643))

(declare-fun m!1342645 () Bool)

(assert (=> b!1454237 m!1342645))

(declare-fun m!1342647 () Bool)

(assert (=> b!1454237 m!1342647))

(declare-fun m!1342649 () Bool)

(assert (=> b!1454237 m!1342649))

(declare-fun m!1342651 () Bool)

(assert (=> b!1454237 m!1342651))

(declare-fun m!1342653 () Bool)

(assert (=> b!1454237 m!1342653))

(assert (=> b!1454237 m!1342637))

(declare-fun m!1342655 () Bool)

(assert (=> b!1454239 m!1342655))

(assert (=> b!1454226 m!1342637))

(assert (=> b!1454226 m!1342637))

(declare-fun m!1342657 () Bool)

(assert (=> b!1454226 m!1342657))

(declare-fun m!1342659 () Bool)

(assert (=> b!1454223 m!1342659))

(declare-fun m!1342661 () Bool)

(assert (=> b!1454232 m!1342661))

(assert (=> b!1454234 m!1342637))

(assert (=> b!1454234 m!1342637))

(declare-fun m!1342663 () Bool)

(assert (=> b!1454234 m!1342663))

(declare-fun m!1342665 () Bool)

(assert (=> b!1454219 m!1342665))

(declare-fun m!1342667 () Bool)

(assert (=> b!1454219 m!1342667))

(declare-fun m!1342669 () Bool)

(assert (=> b!1454219 m!1342669))

(assert (=> b!1454227 m!1342647))

(declare-fun m!1342671 () Bool)

(assert (=> b!1454227 m!1342671))

(assert (=> b!1454227 m!1342649))

(assert (=> b!1454227 m!1342651))

(assert (=> b!1454227 m!1342637))

(assert (=> b!1454222 m!1342667))

(assert (=> b!1454222 m!1342669))

(declare-fun m!1342673 () Bool)

(assert (=> b!1454236 m!1342673))

(assert (=> b!1454236 m!1342673))

(declare-fun m!1342675 () Bool)

(assert (=> b!1454236 m!1342675))

(assert (=> b!1454225 m!1342637))

(assert (=> b!1454225 m!1342637))

(declare-fun m!1342677 () Bool)

(assert (=> b!1454225 m!1342677))

(assert (=> b!1454230 m!1342647))

(declare-fun m!1342679 () Bool)

(assert (=> b!1454230 m!1342679))

(declare-fun m!1342681 () Bool)

(assert (=> start!125062 m!1342681))

(declare-fun m!1342683 () Bool)

(assert (=> start!125062 m!1342683))

(declare-fun m!1342685 () Bool)

(assert (=> b!1454228 m!1342685))

(assert (=> b!1454228 m!1342685))

(declare-fun m!1342687 () Bool)

(assert (=> b!1454228 m!1342687))

(assert (=> b!1454228 m!1342647))

(declare-fun m!1342689 () Bool)

(assert (=> b!1454228 m!1342689))

(declare-fun m!1342691 () Bool)

(assert (=> b!1454229 m!1342691))

(push 1)

