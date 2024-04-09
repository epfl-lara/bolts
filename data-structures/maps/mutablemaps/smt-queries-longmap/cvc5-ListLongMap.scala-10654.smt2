; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125104 () Bool)

(assert start!125104)

(declare-fun b!1455604 () Bool)

(declare-fun res!986346 () Bool)

(declare-fun e!819079 () Bool)

(assert (=> b!1455604 (=> res!986346 e!819079)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11793 0))(
  ( (MissingZero!11793 (index!49563 (_ BitVec 32))) (Found!11793 (index!49564 (_ BitVec 32))) (Intermediate!11793 (undefined!12605 Bool) (index!49565 (_ BitVec 32)) (x!131197 (_ BitVec 32))) (Undefined!11793) (MissingVacant!11793 (index!49566 (_ BitVec 32))) )
))
(declare-fun lt!637987 () SeekEntryResult!11793)

(declare-fun lt!637982 () (_ BitVec 32))

(declare-datatypes ((array!98469 0))(
  ( (array!98470 (arr!47518 (Array (_ BitVec 32) (_ BitVec 64))) (size!48069 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98469)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98469 (_ BitVec 32)) SeekEntryResult!11793)

(assert (=> b!1455604 (= res!986346 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637982 (select (arr!47518 a!2862) j!93) a!2862 mask!2687) lt!637987)))))

(declare-fun b!1455605 () Bool)

(declare-fun e!819076 () Bool)

(declare-fun e!819082 () Bool)

(assert (=> b!1455605 (= e!819076 (not e!819082))))

(declare-fun res!986349 () Bool)

(assert (=> b!1455605 (=> res!986349 e!819082)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455605 (= res!986349 (or (and (= (select (arr!47518 a!2862) index!646) (select (store (arr!47518 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47518 a!2862) index!646) (select (arr!47518 a!2862) j!93))) (= (select (arr!47518 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819083 () Bool)

(assert (=> b!1455605 e!819083))

(declare-fun res!986337 () Bool)

(assert (=> b!1455605 (=> (not res!986337) (not e!819083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98469 (_ BitVec 32)) Bool)

(assert (=> b!1455605 (= res!986337 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49030 0))(
  ( (Unit!49031) )
))
(declare-fun lt!637981 () Unit!49030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98469 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49030)

(assert (=> b!1455605 (= lt!637981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455607 () Bool)

(declare-fun e!819078 () Bool)

(assert (=> b!1455607 (= e!819078 e!819076)))

(declare-fun res!986348 () Bool)

(assert (=> b!1455607 (=> (not res!986348) (not e!819076))))

(declare-fun lt!637983 () SeekEntryResult!11793)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1455607 (= res!986348 (= lt!637983 (Intermediate!11793 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!637986 () array!98469)

(declare-fun lt!637984 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455607 (= lt!637983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637984 mask!2687) lt!637984 lt!637986 mask!2687))))

(assert (=> b!1455607 (= lt!637984 (select (store (arr!47518 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455608 () Bool)

(declare-fun res!986335 () Bool)

(declare-fun e!819081 () Bool)

(assert (=> b!1455608 (=> (not res!986335) (not e!819081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455608 (= res!986335 (validKeyInArray!0 (select (arr!47518 a!2862) i!1006)))))

(declare-fun b!1455609 () Bool)

(declare-fun e!819075 () Bool)

(assert (=> b!1455609 (= e!819075 (not (= lt!637983 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637982 lt!637984 lt!637986 mask!2687))))))

(declare-fun b!1455610 () Bool)

(declare-fun e!819077 () Bool)

(assert (=> b!1455610 (= e!819077 e!819078)))

(declare-fun res!986340 () Bool)

(assert (=> b!1455610 (=> (not res!986340) (not e!819078))))

(assert (=> b!1455610 (= res!986340 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47518 a!2862) j!93) mask!2687) (select (arr!47518 a!2862) j!93) a!2862 mask!2687) lt!637987))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1455610 (= lt!637987 (Intermediate!11793 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455611 () Bool)

(declare-fun res!986343 () Bool)

(assert (=> b!1455611 (=> (not res!986343) (not e!819078))))

(assert (=> b!1455611 (= res!986343 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47518 a!2862) j!93) a!2862 mask!2687) lt!637987))))

(declare-fun b!1455612 () Bool)

(declare-fun e!819074 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98469 (_ BitVec 32)) SeekEntryResult!11793)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98469 (_ BitVec 32)) SeekEntryResult!11793)

(assert (=> b!1455612 (= e!819074 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637984 lt!637986 mask!2687) (seekEntryOrOpen!0 lt!637984 lt!637986 mask!2687)))))

(declare-fun b!1455613 () Bool)

(declare-fun res!986345 () Bool)

(assert (=> b!1455613 (=> (not res!986345) (not e!819081))))

(assert (=> b!1455613 (= res!986345 (validKeyInArray!0 (select (arr!47518 a!2862) j!93)))))

(declare-fun b!1455614 () Bool)

(declare-fun res!986347 () Bool)

(assert (=> b!1455614 (=> (not res!986347) (not e!819076))))

(assert (=> b!1455614 (= res!986347 e!819074)))

(declare-fun c!134149 () Bool)

(assert (=> b!1455614 (= c!134149 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!986338 () Bool)

(assert (=> start!125104 (=> (not res!986338) (not e!819081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125104 (= res!986338 (validMask!0 mask!2687))))

(assert (=> start!125104 e!819081))

(assert (=> start!125104 true))

(declare-fun array_inv!36463 (array!98469) Bool)

(assert (=> start!125104 (array_inv!36463 a!2862)))

(declare-fun b!1455606 () Bool)

(assert (=> b!1455606 (= e!819083 (and (or (= (select (arr!47518 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47518 a!2862) intermediateBeforeIndex!19) (select (arr!47518 a!2862) j!93))) (let ((bdg!53179 (select (store (arr!47518 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47518 a!2862) index!646) bdg!53179) (= (select (arr!47518 a!2862) index!646) (select (arr!47518 a!2862) j!93))) (= (select (arr!47518 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53179 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455615 () Bool)

(declare-fun res!986339 () Bool)

(assert (=> b!1455615 (=> (not res!986339) (not e!819081))))

(assert (=> b!1455615 (= res!986339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455616 () Bool)

(assert (=> b!1455616 (= e!819079 true)))

(declare-fun lt!637985 () Bool)

(assert (=> b!1455616 (= lt!637985 e!819075)))

(declare-fun c!134150 () Bool)

(assert (=> b!1455616 (= c!134150 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455617 () Bool)

(assert (=> b!1455617 (= e!819082 e!819079)))

(declare-fun res!986332 () Bool)

(assert (=> b!1455617 (=> res!986332 e!819079)))

(assert (=> b!1455617 (= res!986332 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637982 #b00000000000000000000000000000000) (bvsge lt!637982 (size!48069 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455617 (= lt!637982 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637980 () SeekEntryResult!11793)

(assert (=> b!1455617 (= lt!637980 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637984 lt!637986 mask!2687))))

(assert (=> b!1455617 (= lt!637980 (seekEntryOrOpen!0 lt!637984 lt!637986 mask!2687))))

(declare-fun b!1455618 () Bool)

(declare-fun res!986333 () Bool)

(assert (=> b!1455618 (=> (not res!986333) (not e!819081))))

(assert (=> b!1455618 (= res!986333 (and (= (size!48069 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48069 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48069 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455619 () Bool)

(declare-fun res!986342 () Bool)

(assert (=> b!1455619 (=> (not res!986342) (not e!819083))))

(assert (=> b!1455619 (= res!986342 (= (seekEntryOrOpen!0 (select (arr!47518 a!2862) j!93) a!2862 mask!2687) (Found!11793 j!93)))))

(declare-fun b!1455620 () Bool)

(declare-fun res!986341 () Bool)

(assert (=> b!1455620 (=> (not res!986341) (not e!819081))))

(declare-datatypes ((List!34199 0))(
  ( (Nil!34196) (Cons!34195 (h!35545 (_ BitVec 64)) (t!48900 List!34199)) )
))
(declare-fun arrayNoDuplicates!0 (array!98469 (_ BitVec 32) List!34199) Bool)

(assert (=> b!1455620 (= res!986341 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34196))))

(declare-fun b!1455621 () Bool)

(assert (=> b!1455621 (= e!819075 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637982 intermediateAfterIndex!19 lt!637984 lt!637986 mask!2687) lt!637980)))))

(declare-fun b!1455622 () Bool)

(assert (=> b!1455622 (= e!819081 e!819077)))

(declare-fun res!986336 () Bool)

(assert (=> b!1455622 (=> (not res!986336) (not e!819077))))

(assert (=> b!1455622 (= res!986336 (= (select (store (arr!47518 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455622 (= lt!637986 (array!98470 (store (arr!47518 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48069 a!2862)))))

(declare-fun b!1455623 () Bool)

(declare-fun res!986344 () Bool)

(assert (=> b!1455623 (=> (not res!986344) (not e!819081))))

(assert (=> b!1455623 (= res!986344 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48069 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48069 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48069 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455624 () Bool)

(declare-fun res!986334 () Bool)

(assert (=> b!1455624 (=> (not res!986334) (not e!819076))))

(assert (=> b!1455624 (= res!986334 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455625 () Bool)

(assert (=> b!1455625 (= e!819074 (= lt!637983 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637984 lt!637986 mask!2687)))))

(assert (= (and start!125104 res!986338) b!1455618))

(assert (= (and b!1455618 res!986333) b!1455608))

(assert (= (and b!1455608 res!986335) b!1455613))

(assert (= (and b!1455613 res!986345) b!1455615))

(assert (= (and b!1455615 res!986339) b!1455620))

(assert (= (and b!1455620 res!986341) b!1455623))

(assert (= (and b!1455623 res!986344) b!1455622))

(assert (= (and b!1455622 res!986336) b!1455610))

(assert (= (and b!1455610 res!986340) b!1455611))

(assert (= (and b!1455611 res!986343) b!1455607))

(assert (= (and b!1455607 res!986348) b!1455614))

(assert (= (and b!1455614 c!134149) b!1455625))

(assert (= (and b!1455614 (not c!134149)) b!1455612))

(assert (= (and b!1455614 res!986347) b!1455624))

(assert (= (and b!1455624 res!986334) b!1455605))

(assert (= (and b!1455605 res!986337) b!1455619))

(assert (= (and b!1455619 res!986342) b!1455606))

(assert (= (and b!1455605 (not res!986349)) b!1455617))

(assert (= (and b!1455617 (not res!986332)) b!1455604))

(assert (= (and b!1455604 (not res!986346)) b!1455616))

(assert (= (and b!1455616 c!134150) b!1455609))

(assert (= (and b!1455616 (not c!134150)) b!1455621))

(declare-fun m!1343853 () Bool)

(assert (=> b!1455619 m!1343853))

(assert (=> b!1455619 m!1343853))

(declare-fun m!1343855 () Bool)

(assert (=> b!1455619 m!1343855))

(declare-fun m!1343857 () Bool)

(assert (=> b!1455608 m!1343857))

(assert (=> b!1455608 m!1343857))

(declare-fun m!1343859 () Bool)

(assert (=> b!1455608 m!1343859))

(assert (=> b!1455611 m!1343853))

(assert (=> b!1455611 m!1343853))

(declare-fun m!1343861 () Bool)

(assert (=> b!1455611 m!1343861))

(declare-fun m!1343863 () Bool)

(assert (=> b!1455612 m!1343863))

(declare-fun m!1343865 () Bool)

(assert (=> b!1455612 m!1343865))

(declare-fun m!1343867 () Bool)

(assert (=> start!125104 m!1343867))

(declare-fun m!1343869 () Bool)

(assert (=> start!125104 m!1343869))

(assert (=> b!1455613 m!1343853))

(assert (=> b!1455613 m!1343853))

(declare-fun m!1343871 () Bool)

(assert (=> b!1455613 m!1343871))

(declare-fun m!1343873 () Bool)

(assert (=> b!1455605 m!1343873))

(declare-fun m!1343875 () Bool)

(assert (=> b!1455605 m!1343875))

(declare-fun m!1343877 () Bool)

(assert (=> b!1455605 m!1343877))

(declare-fun m!1343879 () Bool)

(assert (=> b!1455605 m!1343879))

(declare-fun m!1343881 () Bool)

(assert (=> b!1455605 m!1343881))

(assert (=> b!1455605 m!1343853))

(declare-fun m!1343883 () Bool)

(assert (=> b!1455625 m!1343883))

(assert (=> b!1455604 m!1343853))

(assert (=> b!1455604 m!1343853))

(declare-fun m!1343885 () Bool)

(assert (=> b!1455604 m!1343885))

(assert (=> b!1455606 m!1343875))

(declare-fun m!1343887 () Bool)

(assert (=> b!1455606 m!1343887))

(assert (=> b!1455606 m!1343877))

(assert (=> b!1455606 m!1343879))

(assert (=> b!1455606 m!1343853))

(declare-fun m!1343889 () Bool)

(assert (=> b!1455617 m!1343889))

(assert (=> b!1455617 m!1343863))

(assert (=> b!1455617 m!1343865))

(declare-fun m!1343891 () Bool)

(assert (=> b!1455615 m!1343891))

(assert (=> b!1455610 m!1343853))

(assert (=> b!1455610 m!1343853))

(declare-fun m!1343893 () Bool)

(assert (=> b!1455610 m!1343893))

(assert (=> b!1455610 m!1343893))

(assert (=> b!1455610 m!1343853))

(declare-fun m!1343895 () Bool)

(assert (=> b!1455610 m!1343895))

(assert (=> b!1455622 m!1343875))

(declare-fun m!1343897 () Bool)

(assert (=> b!1455622 m!1343897))

(declare-fun m!1343899 () Bool)

(assert (=> b!1455607 m!1343899))

(assert (=> b!1455607 m!1343899))

(declare-fun m!1343901 () Bool)

(assert (=> b!1455607 m!1343901))

(assert (=> b!1455607 m!1343875))

(declare-fun m!1343903 () Bool)

(assert (=> b!1455607 m!1343903))

(declare-fun m!1343905 () Bool)

(assert (=> b!1455609 m!1343905))

(declare-fun m!1343907 () Bool)

(assert (=> b!1455620 m!1343907))

(declare-fun m!1343909 () Bool)

(assert (=> b!1455621 m!1343909))

(push 1)

