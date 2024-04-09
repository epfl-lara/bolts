; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125310 () Bool)

(assert start!125310)

(declare-fun b!1462231 () Bool)

(declare-fun res!991804 () Bool)

(declare-fun e!821998 () Bool)

(assert (=> b!1462231 (=> (not res!991804) (not e!821998))))

(declare-datatypes ((array!98675 0))(
  ( (array!98676 (arr!47621 (Array (_ BitVec 32) (_ BitVec 64))) (size!48172 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98675)

(declare-datatypes ((List!34302 0))(
  ( (Nil!34299) (Cons!34298 (h!35648 (_ BitVec 64)) (t!49003 List!34302)) )
))
(declare-fun arrayNoDuplicates!0 (array!98675 (_ BitVec 32) List!34302) Bool)

(assert (=> b!1462231 (= res!991804 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34299))))

(declare-fun b!1462232 () Bool)

(declare-fun res!991807 () Bool)

(assert (=> b!1462232 (=> (not res!991807) (not e!821998))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462232 (= res!991807 (validKeyInArray!0 (select (arr!47621 a!2862) j!93)))))

(declare-fun b!1462233 () Bool)

(declare-fun e!821993 () Bool)

(declare-fun e!821995 () Bool)

(assert (=> b!1462233 (= e!821993 e!821995)))

(declare-fun res!991806 () Bool)

(assert (=> b!1462233 (=> (not res!991806) (not e!821995))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11896 0))(
  ( (MissingZero!11896 (index!49975 (_ BitVec 32))) (Found!11896 (index!49976 (_ BitVec 32))) (Intermediate!11896 (undefined!12708 Bool) (index!49977 (_ BitVec 32)) (x!131572 (_ BitVec 32))) (Undefined!11896) (MissingVacant!11896 (index!49978 (_ BitVec 32))) )
))
(declare-fun lt!640352 () SeekEntryResult!11896)

(assert (=> b!1462233 (= res!991806 (= lt!640352 (Intermediate!11896 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640350 () (_ BitVec 64))

(declare-fun lt!640353 () array!98675)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98675 (_ BitVec 32)) SeekEntryResult!11896)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462233 (= lt!640352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640350 mask!2687) lt!640350 lt!640353 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462233 (= lt!640350 (select (store (arr!47621 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462234 () Bool)

(declare-fun res!991798 () Bool)

(assert (=> b!1462234 (=> (not res!991798) (not e!821998))))

(assert (=> b!1462234 (= res!991798 (validKeyInArray!0 (select (arr!47621 a!2862) i!1006)))))

(declare-fun b!1462235 () Bool)

(declare-fun res!991809 () Bool)

(assert (=> b!1462235 (=> (not res!991809) (not e!821995))))

(declare-fun e!822000 () Bool)

(assert (=> b!1462235 (= res!991809 e!822000)))

(declare-fun c!134731 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1462235 (= c!134731 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462236 () Bool)

(declare-fun res!991808 () Bool)

(assert (=> b!1462236 (=> (not res!991808) (not e!821995))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462236 (= res!991808 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462237 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98675 (_ BitVec 32)) SeekEntryResult!11896)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98675 (_ BitVec 32)) SeekEntryResult!11896)

(assert (=> b!1462237 (= e!822000 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640350 lt!640353 mask!2687) (seekEntryOrOpen!0 lt!640350 lt!640353 mask!2687)))))

(declare-fun b!1462238 () Bool)

(declare-fun res!991805 () Bool)

(assert (=> b!1462238 (=> (not res!991805) (not e!821998))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1462238 (= res!991805 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48172 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48172 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48172 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462239 () Bool)

(declare-fun res!991797 () Bool)

(assert (=> b!1462239 (=> (not res!991797) (not e!821998))))

(assert (=> b!1462239 (= res!991797 (and (= (size!48172 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48172 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48172 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!991810 () Bool)

(assert (=> start!125310 (=> (not res!991810) (not e!821998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125310 (= res!991810 (validMask!0 mask!2687))))

(assert (=> start!125310 e!821998))

(assert (=> start!125310 true))

(declare-fun array_inv!36566 (array!98675) Bool)

(assert (=> start!125310 (array_inv!36566 a!2862)))

(declare-fun b!1462240 () Bool)

(declare-fun res!991795 () Bool)

(assert (=> b!1462240 (=> (not res!991795) (not e!821993))))

(declare-fun lt!640348 () SeekEntryResult!11896)

(assert (=> b!1462240 (= res!991795 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47621 a!2862) j!93) a!2862 mask!2687) lt!640348))))

(declare-fun b!1462241 () Bool)

(declare-fun res!991802 () Bool)

(assert (=> b!1462241 (=> (not res!991802) (not e!821998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98675 (_ BitVec 32)) Bool)

(assert (=> b!1462241 (= res!991802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462242 () Bool)

(declare-fun e!821997 () Bool)

(assert (=> b!1462242 (= e!821997 e!821993)))

(declare-fun res!991812 () Bool)

(assert (=> b!1462242 (=> (not res!991812) (not e!821993))))

(assert (=> b!1462242 (= res!991812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47621 a!2862) j!93) mask!2687) (select (arr!47621 a!2862) j!93) a!2862 mask!2687) lt!640348))))

(assert (=> b!1462242 (= lt!640348 (Intermediate!11896 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462243 () Bool)

(declare-fun e!821996 () Bool)

(assert (=> b!1462243 (= e!821996 (or (= (select (arr!47621 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47621 a!2862) intermediateBeforeIndex!19) (select (arr!47621 a!2862) j!93))))))

(declare-fun b!1462244 () Bool)

(assert (=> b!1462244 (= e!821998 e!821997)))

(declare-fun res!991799 () Bool)

(assert (=> b!1462244 (=> (not res!991799) (not e!821997))))

(assert (=> b!1462244 (= res!991799 (= (select (store (arr!47621 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462244 (= lt!640353 (array!98676 (store (arr!47621 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48172 a!2862)))))

(declare-fun b!1462245 () Bool)

(declare-fun e!821999 () Bool)

(assert (=> b!1462245 (= e!821995 (not e!821999))))

(declare-fun res!991803 () Bool)

(assert (=> b!1462245 (=> res!991803 e!821999)))

(assert (=> b!1462245 (= res!991803 (or (and (= (select (arr!47621 a!2862) index!646) (select (store (arr!47621 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47621 a!2862) index!646) (select (arr!47621 a!2862) j!93))) (= (select (arr!47621 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462245 e!821996))

(declare-fun res!991800 () Bool)

(assert (=> b!1462245 (=> (not res!991800) (not e!821996))))

(assert (=> b!1462245 (= res!991800 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49236 0))(
  ( (Unit!49237) )
))
(declare-fun lt!640351 () Unit!49236)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49236)

(assert (=> b!1462245 (= lt!640351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462246 () Bool)

(assert (=> b!1462246 (= e!822000 (= lt!640352 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640350 lt!640353 mask!2687)))))

(declare-fun b!1462247 () Bool)

(declare-fun res!991801 () Bool)

(declare-fun e!822001 () Bool)

(assert (=> b!1462247 (=> res!991801 e!822001)))

(declare-fun lt!640354 () (_ BitVec 32))

(assert (=> b!1462247 (= res!991801 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640354 (select (arr!47621 a!2862) j!93) a!2862 mask!2687) lt!640348)))))

(declare-fun e!822002 () Bool)

(declare-fun b!1462248 () Bool)

(assert (=> b!1462248 (= e!822002 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640354 intermediateAfterIndex!19 lt!640350 lt!640353 mask!2687) (seekEntryOrOpen!0 lt!640350 lt!640353 mask!2687))))))

(declare-fun b!1462249 () Bool)

(declare-fun res!991811 () Bool)

(assert (=> b!1462249 (=> (not res!991811) (not e!821996))))

(assert (=> b!1462249 (= res!991811 (= (seekEntryOrOpen!0 (select (arr!47621 a!2862) j!93) a!2862 mask!2687) (Found!11896 j!93)))))

(declare-fun b!1462250 () Bool)

(assert (=> b!1462250 (= e!821999 e!822001)))

(declare-fun res!991796 () Bool)

(assert (=> b!1462250 (=> res!991796 e!822001)))

(assert (=> b!1462250 (= res!991796 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640354 #b00000000000000000000000000000000) (bvsge lt!640354 (size!48172 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462250 (= lt!640354 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462251 () Bool)

(assert (=> b!1462251 (= e!822001 true)))

(declare-fun lt!640349 () Bool)

(assert (=> b!1462251 (= lt!640349 e!822002)))

(declare-fun c!134732 () Bool)

(assert (=> b!1462251 (= c!134732 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462252 () Bool)

(assert (=> b!1462252 (= e!822002 (not (= lt!640352 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640354 lt!640350 lt!640353 mask!2687))))))

(assert (= (and start!125310 res!991810) b!1462239))

(assert (= (and b!1462239 res!991797) b!1462234))

(assert (= (and b!1462234 res!991798) b!1462232))

(assert (= (and b!1462232 res!991807) b!1462241))

(assert (= (and b!1462241 res!991802) b!1462231))

(assert (= (and b!1462231 res!991804) b!1462238))

(assert (= (and b!1462238 res!991805) b!1462244))

(assert (= (and b!1462244 res!991799) b!1462242))

(assert (= (and b!1462242 res!991812) b!1462240))

(assert (= (and b!1462240 res!991795) b!1462233))

(assert (= (and b!1462233 res!991806) b!1462235))

(assert (= (and b!1462235 c!134731) b!1462246))

(assert (= (and b!1462235 (not c!134731)) b!1462237))

(assert (= (and b!1462235 res!991809) b!1462236))

(assert (= (and b!1462236 res!991808) b!1462245))

(assert (= (and b!1462245 res!991800) b!1462249))

(assert (= (and b!1462249 res!991811) b!1462243))

(assert (= (and b!1462245 (not res!991803)) b!1462250))

(assert (= (and b!1462250 (not res!991796)) b!1462247))

(assert (= (and b!1462247 (not res!991801)) b!1462251))

(assert (= (and b!1462251 c!134732) b!1462252))

(assert (= (and b!1462251 (not c!134732)) b!1462248))

(declare-fun m!1349761 () Bool)

(assert (=> b!1462242 m!1349761))

(assert (=> b!1462242 m!1349761))

(declare-fun m!1349763 () Bool)

(assert (=> b!1462242 m!1349763))

(assert (=> b!1462242 m!1349763))

(assert (=> b!1462242 m!1349761))

(declare-fun m!1349765 () Bool)

(assert (=> b!1462242 m!1349765))

(declare-fun m!1349767 () Bool)

(assert (=> b!1462233 m!1349767))

(assert (=> b!1462233 m!1349767))

(declare-fun m!1349769 () Bool)

(assert (=> b!1462233 m!1349769))

(declare-fun m!1349771 () Bool)

(assert (=> b!1462233 m!1349771))

(declare-fun m!1349773 () Bool)

(assert (=> b!1462233 m!1349773))

(assert (=> b!1462247 m!1349761))

(assert (=> b!1462247 m!1349761))

(declare-fun m!1349775 () Bool)

(assert (=> b!1462247 m!1349775))

(assert (=> b!1462244 m!1349771))

(declare-fun m!1349777 () Bool)

(assert (=> b!1462244 m!1349777))

(declare-fun m!1349779 () Bool)

(assert (=> b!1462231 m!1349779))

(assert (=> b!1462249 m!1349761))

(assert (=> b!1462249 m!1349761))

(declare-fun m!1349781 () Bool)

(assert (=> b!1462249 m!1349781))

(assert (=> b!1462240 m!1349761))

(assert (=> b!1462240 m!1349761))

(declare-fun m!1349783 () Bool)

(assert (=> b!1462240 m!1349783))

(assert (=> b!1462232 m!1349761))

(assert (=> b!1462232 m!1349761))

(declare-fun m!1349785 () Bool)

(assert (=> b!1462232 m!1349785))

(declare-fun m!1349787 () Bool)

(assert (=> b!1462234 m!1349787))

(assert (=> b!1462234 m!1349787))

(declare-fun m!1349789 () Bool)

(assert (=> b!1462234 m!1349789))

(declare-fun m!1349791 () Bool)

(assert (=> start!125310 m!1349791))

(declare-fun m!1349793 () Bool)

(assert (=> start!125310 m!1349793))

(declare-fun m!1349795 () Bool)

(assert (=> b!1462245 m!1349795))

(assert (=> b!1462245 m!1349771))

(declare-fun m!1349797 () Bool)

(assert (=> b!1462245 m!1349797))

(declare-fun m!1349799 () Bool)

(assert (=> b!1462245 m!1349799))

(declare-fun m!1349801 () Bool)

(assert (=> b!1462245 m!1349801))

(assert (=> b!1462245 m!1349761))

(declare-fun m!1349803 () Bool)

(assert (=> b!1462250 m!1349803))

(declare-fun m!1349805 () Bool)

(assert (=> b!1462237 m!1349805))

(declare-fun m!1349807 () Bool)

(assert (=> b!1462237 m!1349807))

(declare-fun m!1349809 () Bool)

(assert (=> b!1462246 m!1349809))

(declare-fun m!1349811 () Bool)

(assert (=> b!1462241 m!1349811))

(declare-fun m!1349813 () Bool)

(assert (=> b!1462243 m!1349813))

(assert (=> b!1462243 m!1349761))

(declare-fun m!1349815 () Bool)

(assert (=> b!1462252 m!1349815))

(declare-fun m!1349817 () Bool)

(assert (=> b!1462248 m!1349817))

(assert (=> b!1462248 m!1349807))

(check-sat (not b!1462245) (not b!1462248) (not b!1462250) (not b!1462232) (not b!1462252) (not start!125310) (not b!1462242) (not b!1462233) (not b!1462240) (not b!1462234) (not b!1462246) (not b!1462247) (not b!1462249) (not b!1462231) (not b!1462241) (not b!1462237))
(check-sat)
