; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125280 () Bool)

(assert start!125280)

(declare-fun b!1461241 () Bool)

(declare-fun res!990986 () Bool)

(declare-fun e!821547 () Bool)

(assert (=> b!1461241 (=> (not res!990986) (not e!821547))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98645 0))(
  ( (array!98646 (arr!47606 (Array (_ BitVec 32) (_ BitVec 64))) (size!48157 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98645)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461241 (= res!990986 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48157 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48157 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48157 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461242 () Bool)

(declare-fun res!990987 () Bool)

(declare-fun e!821549 () Bool)

(assert (=> b!1461242 (=> res!990987 e!821549)))

(declare-fun lt!640039 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11881 0))(
  ( (MissingZero!11881 (index!49915 (_ BitVec 32))) (Found!11881 (index!49916 (_ BitVec 32))) (Intermediate!11881 (undefined!12693 Bool) (index!49917 (_ BitVec 32)) (x!131517 (_ BitVec 32))) (Undefined!11881) (MissingVacant!11881 (index!49918 (_ BitVec 32))) )
))
(declare-fun lt!640034 () SeekEntryResult!11881)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98645 (_ BitVec 32)) SeekEntryResult!11881)

(assert (=> b!1461242 (= res!990987 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640039 (select (arr!47606 a!2862) j!93) a!2862 mask!2687) lt!640034)))))

(declare-fun b!1461243 () Bool)

(declare-fun e!821543 () Bool)

(declare-fun e!821552 () Bool)

(assert (=> b!1461243 (= e!821543 e!821552)))

(declare-fun res!990989 () Bool)

(assert (=> b!1461243 (=> (not res!990989) (not e!821552))))

(declare-fun lt!640038 () SeekEntryResult!11881)

(assert (=> b!1461243 (= res!990989 (= lt!640038 (Intermediate!11881 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640037 () array!98645)

(declare-fun lt!640036 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461243 (= lt!640038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640036 mask!2687) lt!640036 lt!640037 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461243 (= lt!640036 (select (store (arr!47606 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461244 () Bool)

(declare-fun res!990994 () Bool)

(assert (=> b!1461244 (=> (not res!990994) (not e!821543))))

(assert (=> b!1461244 (= res!990994 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47606 a!2862) j!93) a!2862 mask!2687) lt!640034))))

(declare-fun e!821551 () Bool)

(declare-fun b!1461245 () Bool)

(assert (=> b!1461245 (= e!821551 (or (= (select (arr!47606 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47606 a!2862) intermediateBeforeIndex!19) (select (arr!47606 a!2862) j!93))))))

(declare-fun b!1461246 () Bool)

(assert (=> b!1461246 (= e!821549 true)))

(declare-fun lt!640035 () Bool)

(declare-fun e!821546 () Bool)

(assert (=> b!1461246 (= lt!640035 e!821546)))

(declare-fun c!134641 () Bool)

(assert (=> b!1461246 (= c!134641 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461247 () Bool)

(declare-fun res!990991 () Bool)

(assert (=> b!1461247 (=> (not res!990991) (not e!821552))))

(assert (=> b!1461247 (= res!990991 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461248 () Bool)

(declare-fun res!990996 () Bool)

(assert (=> b!1461248 (=> (not res!990996) (not e!821551))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98645 (_ BitVec 32)) SeekEntryResult!11881)

(assert (=> b!1461248 (= res!990996 (= (seekEntryOrOpen!0 (select (arr!47606 a!2862) j!93) a!2862 mask!2687) (Found!11881 j!93)))))

(declare-fun e!821550 () Bool)

(declare-fun b!1461249 () Bool)

(assert (=> b!1461249 (= e!821550 (= lt!640038 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640036 lt!640037 mask!2687)))))

(declare-fun b!1461250 () Bool)

(declare-fun res!991001 () Bool)

(assert (=> b!1461250 (=> (not res!991001) (not e!821547))))

(assert (=> b!1461250 (= res!991001 (and (= (size!48157 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48157 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48157 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461251 () Bool)

(declare-fun res!990992 () Bool)

(assert (=> b!1461251 (=> (not res!990992) (not e!821547))))

(declare-datatypes ((List!34287 0))(
  ( (Nil!34284) (Cons!34283 (h!35633 (_ BitVec 64)) (t!48988 List!34287)) )
))
(declare-fun arrayNoDuplicates!0 (array!98645 (_ BitVec 32) List!34287) Bool)

(assert (=> b!1461251 (= res!990992 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34284))))

(declare-fun res!990990 () Bool)

(assert (=> start!125280 (=> (not res!990990) (not e!821547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125280 (= res!990990 (validMask!0 mask!2687))))

(assert (=> start!125280 e!821547))

(assert (=> start!125280 true))

(declare-fun array_inv!36551 (array!98645) Bool)

(assert (=> start!125280 (array_inv!36551 a!2862)))

(declare-fun b!1461252 () Bool)

(declare-fun res!990993 () Bool)

(assert (=> b!1461252 (=> (not res!990993) (not e!821547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461252 (= res!990993 (validKeyInArray!0 (select (arr!47606 a!2862) j!93)))))

(declare-fun b!1461253 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98645 (_ BitVec 32)) SeekEntryResult!11881)

(assert (=> b!1461253 (= e!821550 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640036 lt!640037 mask!2687) (seekEntryOrOpen!0 lt!640036 lt!640037 mask!2687)))))

(declare-fun b!1461254 () Bool)

(declare-fun res!990997 () Bool)

(assert (=> b!1461254 (=> (not res!990997) (not e!821552))))

(assert (=> b!1461254 (= res!990997 e!821550)))

(declare-fun c!134642 () Bool)

(assert (=> b!1461254 (= c!134642 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461255 () Bool)

(assert (=> b!1461255 (= e!821546 (not (= lt!640038 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640039 lt!640036 lt!640037 mask!2687))))))

(declare-fun b!1461256 () Bool)

(declare-fun res!990985 () Bool)

(assert (=> b!1461256 (=> (not res!990985) (not e!821547))))

(assert (=> b!1461256 (= res!990985 (validKeyInArray!0 (select (arr!47606 a!2862) i!1006)))))

(declare-fun b!1461257 () Bool)

(declare-fun e!821545 () Bool)

(assert (=> b!1461257 (= e!821545 e!821543)))

(declare-fun res!990988 () Bool)

(assert (=> b!1461257 (=> (not res!990988) (not e!821543))))

(assert (=> b!1461257 (= res!990988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47606 a!2862) j!93) mask!2687) (select (arr!47606 a!2862) j!93) a!2862 mask!2687) lt!640034))))

(assert (=> b!1461257 (= lt!640034 (Intermediate!11881 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461258 () Bool)

(assert (=> b!1461258 (= e!821547 e!821545)))

(declare-fun res!990995 () Bool)

(assert (=> b!1461258 (=> (not res!990995) (not e!821545))))

(assert (=> b!1461258 (= res!990995 (= (select (store (arr!47606 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461258 (= lt!640037 (array!98646 (store (arr!47606 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48157 a!2862)))))

(declare-fun b!1461259 () Bool)

(declare-fun e!821548 () Bool)

(assert (=> b!1461259 (= e!821552 (not e!821548))))

(declare-fun res!991002 () Bool)

(assert (=> b!1461259 (=> res!991002 e!821548)))

(assert (=> b!1461259 (= res!991002 (or (and (= (select (arr!47606 a!2862) index!646) (select (store (arr!47606 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47606 a!2862) index!646) (select (arr!47606 a!2862) j!93))) (= (select (arr!47606 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461259 e!821551))

(declare-fun res!990999 () Bool)

(assert (=> b!1461259 (=> (not res!990999) (not e!821551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98645 (_ BitVec 32)) Bool)

(assert (=> b!1461259 (= res!990999 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49206 0))(
  ( (Unit!49207) )
))
(declare-fun lt!640033 () Unit!49206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49206)

(assert (=> b!1461259 (= lt!640033 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461260 () Bool)

(assert (=> b!1461260 (= e!821546 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640039 intermediateAfterIndex!19 lt!640036 lt!640037 mask!2687) (seekEntryOrOpen!0 lt!640036 lt!640037 mask!2687))))))

(declare-fun b!1461261 () Bool)

(declare-fun res!991000 () Bool)

(assert (=> b!1461261 (=> (not res!991000) (not e!821547))))

(assert (=> b!1461261 (= res!991000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461262 () Bool)

(assert (=> b!1461262 (= e!821548 e!821549)))

(declare-fun res!990998 () Bool)

(assert (=> b!1461262 (=> res!990998 e!821549)))

(assert (=> b!1461262 (= res!990998 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640039 #b00000000000000000000000000000000) (bvsge lt!640039 (size!48157 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461262 (= lt!640039 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125280 res!990990) b!1461250))

(assert (= (and b!1461250 res!991001) b!1461256))

(assert (= (and b!1461256 res!990985) b!1461252))

(assert (= (and b!1461252 res!990993) b!1461261))

(assert (= (and b!1461261 res!991000) b!1461251))

(assert (= (and b!1461251 res!990992) b!1461241))

(assert (= (and b!1461241 res!990986) b!1461258))

(assert (= (and b!1461258 res!990995) b!1461257))

(assert (= (and b!1461257 res!990988) b!1461244))

(assert (= (and b!1461244 res!990994) b!1461243))

(assert (= (and b!1461243 res!990989) b!1461254))

(assert (= (and b!1461254 c!134642) b!1461249))

(assert (= (and b!1461254 (not c!134642)) b!1461253))

(assert (= (and b!1461254 res!990997) b!1461247))

(assert (= (and b!1461247 res!990991) b!1461259))

(assert (= (and b!1461259 res!990999) b!1461248))

(assert (= (and b!1461248 res!990996) b!1461245))

(assert (= (and b!1461259 (not res!991002)) b!1461262))

(assert (= (and b!1461262 (not res!990998)) b!1461242))

(assert (= (and b!1461242 (not res!990987)) b!1461246))

(assert (= (and b!1461246 c!134641) b!1461255))

(assert (= (and b!1461246 (not c!134641)) b!1461260))

(declare-fun m!1348891 () Bool)

(assert (=> b!1461244 m!1348891))

(assert (=> b!1461244 m!1348891))

(declare-fun m!1348893 () Bool)

(assert (=> b!1461244 m!1348893))

(declare-fun m!1348895 () Bool)

(assert (=> b!1461243 m!1348895))

(assert (=> b!1461243 m!1348895))

(declare-fun m!1348897 () Bool)

(assert (=> b!1461243 m!1348897))

(declare-fun m!1348899 () Bool)

(assert (=> b!1461243 m!1348899))

(declare-fun m!1348901 () Bool)

(assert (=> b!1461243 m!1348901))

(declare-fun m!1348903 () Bool)

(assert (=> b!1461262 m!1348903))

(declare-fun m!1348905 () Bool)

(assert (=> b!1461256 m!1348905))

(assert (=> b!1461256 m!1348905))

(declare-fun m!1348907 () Bool)

(assert (=> b!1461256 m!1348907))

(declare-fun m!1348909 () Bool)

(assert (=> b!1461259 m!1348909))

(assert (=> b!1461259 m!1348899))

(declare-fun m!1348911 () Bool)

(assert (=> b!1461259 m!1348911))

(declare-fun m!1348913 () Bool)

(assert (=> b!1461259 m!1348913))

(declare-fun m!1348915 () Bool)

(assert (=> b!1461259 m!1348915))

(assert (=> b!1461259 m!1348891))

(assert (=> b!1461258 m!1348899))

(declare-fun m!1348917 () Bool)

(assert (=> b!1461258 m!1348917))

(assert (=> b!1461242 m!1348891))

(assert (=> b!1461242 m!1348891))

(declare-fun m!1348919 () Bool)

(assert (=> b!1461242 m!1348919))

(assert (=> b!1461248 m!1348891))

(assert (=> b!1461248 m!1348891))

(declare-fun m!1348921 () Bool)

(assert (=> b!1461248 m!1348921))

(declare-fun m!1348923 () Bool)

(assert (=> b!1461253 m!1348923))

(declare-fun m!1348925 () Bool)

(assert (=> b!1461253 m!1348925))

(declare-fun m!1348927 () Bool)

(assert (=> b!1461245 m!1348927))

(assert (=> b!1461245 m!1348891))

(declare-fun m!1348929 () Bool)

(assert (=> b!1461249 m!1348929))

(declare-fun m!1348931 () Bool)

(assert (=> b!1461261 m!1348931))

(assert (=> b!1461252 m!1348891))

(assert (=> b!1461252 m!1348891))

(declare-fun m!1348933 () Bool)

(assert (=> b!1461252 m!1348933))

(declare-fun m!1348935 () Bool)

(assert (=> b!1461255 m!1348935))

(assert (=> b!1461257 m!1348891))

(assert (=> b!1461257 m!1348891))

(declare-fun m!1348937 () Bool)

(assert (=> b!1461257 m!1348937))

(assert (=> b!1461257 m!1348937))

(assert (=> b!1461257 m!1348891))

(declare-fun m!1348939 () Bool)

(assert (=> b!1461257 m!1348939))

(declare-fun m!1348941 () Bool)

(assert (=> b!1461260 m!1348941))

(assert (=> b!1461260 m!1348925))

(declare-fun m!1348943 () Bool)

(assert (=> b!1461251 m!1348943))

(declare-fun m!1348945 () Bool)

(assert (=> start!125280 m!1348945))

(declare-fun m!1348947 () Bool)

(assert (=> start!125280 m!1348947))

(check-sat (not b!1461255) (not b!1461249) (not b!1461259) (not b!1461257) (not b!1461252) (not start!125280) (not b!1461244) (not b!1461262) (not b!1461253) (not b!1461261) (not b!1461256) (not b!1461260) (not b!1461243) (not b!1461248) (not b!1461242) (not b!1461251))
(check-sat)
