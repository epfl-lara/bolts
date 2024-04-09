; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126864 () Bool)

(assert start!126864)

(declare-fun b!1488639 () Bool)

(declare-fun res!1012329 () Bool)

(declare-fun e!834446 () Bool)

(assert (=> b!1488639 (=> (not res!1012329) (not e!834446))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1488639 (= res!1012329 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488640 () Bool)

(declare-fun e!834443 () Bool)

(declare-fun e!834437 () Bool)

(assert (=> b!1488640 (= e!834443 e!834437)))

(declare-fun res!1012328 () Bool)

(assert (=> b!1488640 (=> res!1012328 e!834437)))

(declare-datatypes ((array!99554 0))(
  ( (array!99555 (arr!48044 (Array (_ BitVec 32) (_ BitVec 64))) (size!48595 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99554)

(declare-fun lt!649240 () (_ BitVec 32))

(assert (=> b!1488640 (= res!1012328 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649240 #b00000000000000000000000000000000) (bvsge lt!649240 (size!48595 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488640 (= lt!649240 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649238 () array!99554)

(declare-fun lt!649237 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12307 0))(
  ( (MissingZero!12307 (index!51619 (_ BitVec 32))) (Found!12307 (index!51620 (_ BitVec 32))) (Intermediate!12307 (undefined!13119 Bool) (index!51621 (_ BitVec 32)) (x!133222 (_ BitVec 32))) (Undefined!12307) (MissingVacant!12307 (index!51622 (_ BitVec 32))) )
))
(declare-fun lt!649243 () SeekEntryResult!12307)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99554 (_ BitVec 32)) SeekEntryResult!12307)

(assert (=> b!1488640 (= lt!649243 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649237 lt!649238 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99554 (_ BitVec 32)) SeekEntryResult!12307)

(assert (=> b!1488640 (= lt!649243 (seekEntryOrOpen!0 lt!649237 lt!649238 mask!2687))))

(declare-fun b!1488641 () Bool)

(declare-fun res!1012335 () Bool)

(assert (=> b!1488641 (=> res!1012335 e!834437)))

(declare-fun lt!649239 () SeekEntryResult!12307)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99554 (_ BitVec 32)) SeekEntryResult!12307)

(assert (=> b!1488641 (= res!1012335 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649240 (select (arr!48044 a!2862) j!93) a!2862 mask!2687) lt!649239)))))

(declare-fun e!834439 () Bool)

(declare-fun b!1488642 () Bool)

(declare-fun lt!649242 () SeekEntryResult!12307)

(assert (=> b!1488642 (= e!834439 (= lt!649242 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649237 lt!649238 mask!2687)))))

(declare-fun b!1488643 () Bool)

(declare-fun res!1012338 () Bool)

(declare-fun e!834440 () Bool)

(assert (=> b!1488643 (=> (not res!1012338) (not e!834440))))

(assert (=> b!1488643 (= res!1012338 (and (= (size!48595 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48595 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48595 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488644 () Bool)

(assert (=> b!1488644 (= e!834446 (not e!834443))))

(declare-fun res!1012321 () Bool)

(assert (=> b!1488644 (=> res!1012321 e!834443)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1488644 (= res!1012321 (or (and (= (select (arr!48044 a!2862) index!646) (select (store (arr!48044 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48044 a!2862) index!646) (select (arr!48044 a!2862) j!93))) (= (select (arr!48044 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!834445 () Bool)

(assert (=> b!1488644 e!834445))

(declare-fun res!1012326 () Bool)

(assert (=> b!1488644 (=> (not res!1012326) (not e!834445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99554 (_ BitVec 32)) Bool)

(assert (=> b!1488644 (= res!1012326 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49902 0))(
  ( (Unit!49903) )
))
(declare-fun lt!649241 () Unit!49902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49902)

(assert (=> b!1488644 (= lt!649241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488645 () Bool)

(declare-fun res!1012325 () Bool)

(assert (=> b!1488645 (=> (not res!1012325) (not e!834440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488645 (= res!1012325 (validKeyInArray!0 (select (arr!48044 a!2862) j!93)))))

(declare-fun res!1012330 () Bool)

(assert (=> start!126864 (=> (not res!1012330) (not e!834440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126864 (= res!1012330 (validMask!0 mask!2687))))

(assert (=> start!126864 e!834440))

(assert (=> start!126864 true))

(declare-fun array_inv!36989 (array!99554) Bool)

(assert (=> start!126864 (array_inv!36989 a!2862)))

(declare-fun b!1488646 () Bool)

(declare-fun e!834438 () Bool)

(declare-fun e!834441 () Bool)

(assert (=> b!1488646 (= e!834438 e!834441)))

(declare-fun res!1012337 () Bool)

(assert (=> b!1488646 (=> (not res!1012337) (not e!834441))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488646 (= res!1012337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48044 a!2862) j!93) mask!2687) (select (arr!48044 a!2862) j!93) a!2862 mask!2687) lt!649239))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1488646 (= lt!649239 (Intermediate!12307 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1488647 () Bool)

(assert (=> b!1488647 (= e!834437 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1488648 () Bool)

(declare-fun e!834444 () Bool)

(assert (=> b!1488648 (= e!834444 (not (= lt!649242 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649240 lt!649237 lt!649238 mask!2687))))))

(declare-fun b!1488649 () Bool)

(declare-fun res!1012331 () Bool)

(assert (=> b!1488649 (=> res!1012331 e!834437)))

(assert (=> b!1488649 (= res!1012331 e!834444)))

(declare-fun c!137690 () Bool)

(assert (=> b!1488649 (= c!137690 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1488650 () Bool)

(assert (=> b!1488650 (= e!834440 e!834438)))

(declare-fun res!1012322 () Bool)

(assert (=> b!1488650 (=> (not res!1012322) (not e!834438))))

(assert (=> b!1488650 (= res!1012322 (= (select (store (arr!48044 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488650 (= lt!649238 (array!99555 (store (arr!48044 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48595 a!2862)))))

(declare-fun b!1488651 () Bool)

(declare-fun res!1012334 () Bool)

(assert (=> b!1488651 (=> (not res!1012334) (not e!834441))))

(assert (=> b!1488651 (= res!1012334 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48044 a!2862) j!93) a!2862 mask!2687) lt!649239))))

(declare-fun b!1488652 () Bool)

(declare-fun res!1012327 () Bool)

(assert (=> b!1488652 (=> (not res!1012327) (not e!834440))))

(assert (=> b!1488652 (= res!1012327 (validKeyInArray!0 (select (arr!48044 a!2862) i!1006)))))

(declare-fun b!1488653 () Bool)

(assert (=> b!1488653 (= e!834445 (and (or (= (select (arr!48044 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48044 a!2862) intermediateBeforeIndex!19) (select (arr!48044 a!2862) j!93))) (let ((bdg!54656 (select (store (arr!48044 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48044 a!2862) index!646) bdg!54656) (= (select (arr!48044 a!2862) index!646) (select (arr!48044 a!2862) j!93))) (= (select (arr!48044 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54656 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1488654 () Bool)

(declare-fun res!1012333 () Bool)

(assert (=> b!1488654 (=> (not res!1012333) (not e!834440))))

(declare-datatypes ((List!34725 0))(
  ( (Nil!34722) (Cons!34721 (h!36104 (_ BitVec 64)) (t!49426 List!34725)) )
))
(declare-fun arrayNoDuplicates!0 (array!99554 (_ BitVec 32) List!34725) Bool)

(assert (=> b!1488654 (= res!1012333 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34722))))

(declare-fun b!1488655 () Bool)

(declare-fun res!1012336 () Bool)

(assert (=> b!1488655 (=> (not res!1012336) (not e!834440))))

(assert (=> b!1488655 (= res!1012336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488656 () Bool)

(assert (=> b!1488656 (= e!834439 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649237 lt!649238 mask!2687) (seekEntryOrOpen!0 lt!649237 lt!649238 mask!2687)))))

(declare-fun b!1488657 () Bool)

(declare-fun res!1012323 () Bool)

(assert (=> b!1488657 (=> (not res!1012323) (not e!834446))))

(assert (=> b!1488657 (= res!1012323 e!834439)))

(declare-fun c!137689 () Bool)

(assert (=> b!1488657 (= c!137689 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488658 () Bool)

(declare-fun res!1012332 () Bool)

(assert (=> b!1488658 (=> (not res!1012332) (not e!834445))))

(assert (=> b!1488658 (= res!1012332 (= (seekEntryOrOpen!0 (select (arr!48044 a!2862) j!93) a!2862 mask!2687) (Found!12307 j!93)))))

(declare-fun b!1488659 () Bool)

(declare-fun res!1012324 () Bool)

(assert (=> b!1488659 (=> (not res!1012324) (not e!834440))))

(assert (=> b!1488659 (= res!1012324 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48595 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48595 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48595 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488660 () Bool)

(assert (=> b!1488660 (= e!834441 e!834446)))

(declare-fun res!1012320 () Bool)

(assert (=> b!1488660 (=> (not res!1012320) (not e!834446))))

(assert (=> b!1488660 (= res!1012320 (= lt!649242 (Intermediate!12307 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1488660 (= lt!649242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649237 mask!2687) lt!649237 lt!649238 mask!2687))))

(assert (=> b!1488660 (= lt!649237 (select (store (arr!48044 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488661 () Bool)

(assert (=> b!1488661 (= e!834444 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649240 intermediateAfterIndex!19 lt!649237 lt!649238 mask!2687) lt!649243)))))

(assert (= (and start!126864 res!1012330) b!1488643))

(assert (= (and b!1488643 res!1012338) b!1488652))

(assert (= (and b!1488652 res!1012327) b!1488645))

(assert (= (and b!1488645 res!1012325) b!1488655))

(assert (= (and b!1488655 res!1012336) b!1488654))

(assert (= (and b!1488654 res!1012333) b!1488659))

(assert (= (and b!1488659 res!1012324) b!1488650))

(assert (= (and b!1488650 res!1012322) b!1488646))

(assert (= (and b!1488646 res!1012337) b!1488651))

(assert (= (and b!1488651 res!1012334) b!1488660))

(assert (= (and b!1488660 res!1012320) b!1488657))

(assert (= (and b!1488657 c!137689) b!1488642))

(assert (= (and b!1488657 (not c!137689)) b!1488656))

(assert (= (and b!1488657 res!1012323) b!1488639))

(assert (= (and b!1488639 res!1012329) b!1488644))

(assert (= (and b!1488644 res!1012326) b!1488658))

(assert (= (and b!1488658 res!1012332) b!1488653))

(assert (= (and b!1488644 (not res!1012321)) b!1488640))

(assert (= (and b!1488640 (not res!1012328)) b!1488641))

(assert (= (and b!1488641 (not res!1012335)) b!1488649))

(assert (= (and b!1488649 c!137690) b!1488648))

(assert (= (and b!1488649 (not c!137690)) b!1488661))

(assert (= (and b!1488649 (not res!1012331)) b!1488647))

(declare-fun m!1373023 () Bool)

(assert (=> b!1488654 m!1373023))

(declare-fun m!1373025 () Bool)

(assert (=> b!1488655 m!1373025))

(declare-fun m!1373027 () Bool)

(assert (=> b!1488641 m!1373027))

(assert (=> b!1488641 m!1373027))

(declare-fun m!1373029 () Bool)

(assert (=> b!1488641 m!1373029))

(declare-fun m!1373031 () Bool)

(assert (=> b!1488644 m!1373031))

(declare-fun m!1373033 () Bool)

(assert (=> b!1488644 m!1373033))

(declare-fun m!1373035 () Bool)

(assert (=> b!1488644 m!1373035))

(declare-fun m!1373037 () Bool)

(assert (=> b!1488644 m!1373037))

(declare-fun m!1373039 () Bool)

(assert (=> b!1488644 m!1373039))

(assert (=> b!1488644 m!1373027))

(assert (=> b!1488658 m!1373027))

(assert (=> b!1488658 m!1373027))

(declare-fun m!1373041 () Bool)

(assert (=> b!1488658 m!1373041))

(declare-fun m!1373043 () Bool)

(assert (=> start!126864 m!1373043))

(declare-fun m!1373045 () Bool)

(assert (=> start!126864 m!1373045))

(declare-fun m!1373047 () Bool)

(assert (=> b!1488652 m!1373047))

(assert (=> b!1488652 m!1373047))

(declare-fun m!1373049 () Bool)

(assert (=> b!1488652 m!1373049))

(assert (=> b!1488651 m!1373027))

(assert (=> b!1488651 m!1373027))

(declare-fun m!1373051 () Bool)

(assert (=> b!1488651 m!1373051))

(declare-fun m!1373053 () Bool)

(assert (=> b!1488640 m!1373053))

(declare-fun m!1373055 () Bool)

(assert (=> b!1488640 m!1373055))

(declare-fun m!1373057 () Bool)

(assert (=> b!1488640 m!1373057))

(assert (=> b!1488646 m!1373027))

(assert (=> b!1488646 m!1373027))

(declare-fun m!1373059 () Bool)

(assert (=> b!1488646 m!1373059))

(assert (=> b!1488646 m!1373059))

(assert (=> b!1488646 m!1373027))

(declare-fun m!1373061 () Bool)

(assert (=> b!1488646 m!1373061))

(declare-fun m!1373063 () Bool)

(assert (=> b!1488661 m!1373063))

(assert (=> b!1488645 m!1373027))

(assert (=> b!1488645 m!1373027))

(declare-fun m!1373065 () Bool)

(assert (=> b!1488645 m!1373065))

(declare-fun m!1373067 () Bool)

(assert (=> b!1488660 m!1373067))

(assert (=> b!1488660 m!1373067))

(declare-fun m!1373069 () Bool)

(assert (=> b!1488660 m!1373069))

(assert (=> b!1488660 m!1373033))

(declare-fun m!1373071 () Bool)

(assert (=> b!1488660 m!1373071))

(declare-fun m!1373073 () Bool)

(assert (=> b!1488642 m!1373073))

(declare-fun m!1373075 () Bool)

(assert (=> b!1488648 m!1373075))

(assert (=> b!1488656 m!1373055))

(assert (=> b!1488656 m!1373057))

(assert (=> b!1488653 m!1373033))

(declare-fun m!1373077 () Bool)

(assert (=> b!1488653 m!1373077))

(assert (=> b!1488653 m!1373035))

(assert (=> b!1488653 m!1373037))

(assert (=> b!1488653 m!1373027))

(assert (=> b!1488650 m!1373033))

(declare-fun m!1373079 () Bool)

(assert (=> b!1488650 m!1373079))

(check-sat (not b!1488652) (not b!1488646) (not b!1488648) (not b!1488651) (not b!1488645) (not b!1488644) (not b!1488661) (not b!1488656) (not b!1488641) (not b!1488654) (not start!126864) (not b!1488655) (not b!1488642) (not b!1488640) (not b!1488658) (not b!1488660))
(check-sat)
