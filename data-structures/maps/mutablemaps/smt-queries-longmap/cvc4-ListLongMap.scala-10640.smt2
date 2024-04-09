; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125024 () Bool)

(assert start!125024)

(declare-fun b!1453020 () Bool)

(declare-fun res!984184 () Bool)

(declare-fun e!817910 () Bool)

(assert (=> b!1453020 (=> (not res!984184) (not e!817910))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453020 (= res!984184 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453021 () Bool)

(declare-fun e!817902 () Bool)

(declare-fun e!817909 () Bool)

(assert (=> b!1453021 (= e!817902 e!817909)))

(declare-fun res!984182 () Bool)

(assert (=> b!1453021 (=> (not res!984182) (not e!817909))))

(declare-datatypes ((SeekEntryResult!11753 0))(
  ( (MissingZero!11753 (index!49403 (_ BitVec 32))) (Found!11753 (index!49404 (_ BitVec 32))) (Intermediate!11753 (undefined!12565 Bool) (index!49405 (_ BitVec 32)) (x!131045 (_ BitVec 32))) (Undefined!11753) (MissingVacant!11753 (index!49406 (_ BitVec 32))) )
))
(declare-fun lt!637079 () SeekEntryResult!11753)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98389 0))(
  ( (array!98390 (arr!47478 (Array (_ BitVec 32) (_ BitVec 64))) (size!48029 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98389)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98389 (_ BitVec 32)) SeekEntryResult!11753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453021 (= res!984182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47478 a!2862) j!93) mask!2687) (select (arr!47478 a!2862) j!93) a!2862 mask!2687) lt!637079))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453021 (= lt!637079 (Intermediate!11753 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453022 () Bool)

(declare-fun res!984174 () Bool)

(declare-fun e!817905 () Bool)

(assert (=> b!1453022 (=> (not res!984174) (not e!817905))))

(assert (=> b!1453022 (= res!984174 (or (= (select (arr!47478 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47478 a!2862) intermediateBeforeIndex!19) (select (arr!47478 a!2862) j!93))))))

(declare-fun b!1453024 () Bool)

(declare-fun res!984183 () Bool)

(assert (=> b!1453024 (=> (not res!984183) (not e!817905))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98389 (_ BitVec 32)) SeekEntryResult!11753)

(assert (=> b!1453024 (= res!984183 (= (seekEntryOrOpen!0 (select (arr!47478 a!2862) j!93) a!2862 mask!2687) (Found!11753 j!93)))))

(declare-fun b!1453025 () Bool)

(declare-fun res!984172 () Bool)

(declare-fun e!817908 () Bool)

(assert (=> b!1453025 (=> (not res!984172) (not e!817908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453025 (= res!984172 (validKeyInArray!0 (select (arr!47478 a!2862) i!1006)))))

(declare-fun b!1453026 () Bool)

(declare-fun e!817903 () Bool)

(declare-fun e!817907 () Bool)

(assert (=> b!1453026 (= e!817903 e!817907)))

(declare-fun res!984180 () Bool)

(assert (=> b!1453026 (=> (not res!984180) (not e!817907))))

(declare-fun lt!637078 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1453026 (= res!984180 (and (= index!646 intermediateAfterIndex!19) (= lt!637078 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453027 () Bool)

(declare-fun lt!637076 () (_ BitVec 64))

(declare-fun lt!637080 () array!98389)

(declare-fun e!817906 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98389 (_ BitVec 32)) SeekEntryResult!11753)

(assert (=> b!1453027 (= e!817906 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637076 lt!637080 mask!2687) (seekEntryOrOpen!0 lt!637076 lt!637080 mask!2687)))))

(declare-fun b!1453028 () Bool)

(declare-fun res!984181 () Bool)

(assert (=> b!1453028 (=> (not res!984181) (not e!817908))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453028 (= res!984181 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48029 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48029 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48029 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453029 () Bool)

(declare-fun res!984177 () Bool)

(assert (=> b!1453029 (=> (not res!984177) (not e!817908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98389 (_ BitVec 32)) Bool)

(assert (=> b!1453029 (= res!984177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun lt!637081 () SeekEntryResult!11753)

(declare-fun b!1453030 () Bool)

(assert (=> b!1453030 (= e!817906 (= lt!637081 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637076 lt!637080 mask!2687)))))

(declare-fun b!1453031 () Bool)

(assert (=> b!1453031 (= e!817905 e!817903)))

(declare-fun res!984185 () Bool)

(assert (=> b!1453031 (=> res!984185 e!817903)))

(assert (=> b!1453031 (= res!984185 (or (and (= (select (arr!47478 a!2862) index!646) lt!637078) (= (select (arr!47478 a!2862) index!646) (select (arr!47478 a!2862) j!93))) (= (select (arr!47478 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453031 (= lt!637078 (select (store (arr!47478 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453032 () Bool)

(declare-fun res!984176 () Bool)

(assert (=> b!1453032 (=> (not res!984176) (not e!817910))))

(assert (=> b!1453032 (= res!984176 e!817906)))

(declare-fun c!133937 () Bool)

(assert (=> b!1453032 (= c!133937 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453033 () Bool)

(declare-fun res!984187 () Bool)

(assert (=> b!1453033 (=> (not res!984187) (not e!817908))))

(declare-datatypes ((List!34159 0))(
  ( (Nil!34156) (Cons!34155 (h!35505 (_ BitVec 64)) (t!48860 List!34159)) )
))
(declare-fun arrayNoDuplicates!0 (array!98389 (_ BitVec 32) List!34159) Bool)

(assert (=> b!1453033 (= res!984187 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34156))))

(declare-fun res!984186 () Bool)

(assert (=> start!125024 (=> (not res!984186) (not e!817908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125024 (= res!984186 (validMask!0 mask!2687))))

(assert (=> start!125024 e!817908))

(assert (=> start!125024 true))

(declare-fun array_inv!36423 (array!98389) Bool)

(assert (=> start!125024 (array_inv!36423 a!2862)))

(declare-fun b!1453023 () Bool)

(declare-fun res!984188 () Bool)

(assert (=> b!1453023 (=> (not res!984188) (not e!817908))))

(assert (=> b!1453023 (= res!984188 (validKeyInArray!0 (select (arr!47478 a!2862) j!93)))))

(declare-fun b!1453034 () Bool)

(declare-fun res!984178 () Bool)

(assert (=> b!1453034 (=> (not res!984178) (not e!817909))))

(assert (=> b!1453034 (= res!984178 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47478 a!2862) j!93) a!2862 mask!2687) lt!637079))))

(declare-fun b!1453035 () Bool)

(assert (=> b!1453035 (= e!817910 (not true))))

(assert (=> b!1453035 e!817905))

(declare-fun res!984173 () Bool)

(assert (=> b!1453035 (=> (not res!984173) (not e!817905))))

(assert (=> b!1453035 (= res!984173 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48950 0))(
  ( (Unit!48951) )
))
(declare-fun lt!637077 () Unit!48950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98389 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48950)

(assert (=> b!1453035 (= lt!637077 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453036 () Bool)

(assert (=> b!1453036 (= e!817907 (= (seekEntryOrOpen!0 lt!637076 lt!637080 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637076 lt!637080 mask!2687)))))

(declare-fun b!1453037 () Bool)

(assert (=> b!1453037 (= e!817909 e!817910)))

(declare-fun res!984179 () Bool)

(assert (=> b!1453037 (=> (not res!984179) (not e!817910))))

(assert (=> b!1453037 (= res!984179 (= lt!637081 (Intermediate!11753 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1453037 (= lt!637081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637076 mask!2687) lt!637076 lt!637080 mask!2687))))

(assert (=> b!1453037 (= lt!637076 (select (store (arr!47478 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453038 () Bool)

(declare-fun res!984189 () Bool)

(assert (=> b!1453038 (=> (not res!984189) (not e!817908))))

(assert (=> b!1453038 (= res!984189 (and (= (size!48029 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48029 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48029 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453039 () Bool)

(assert (=> b!1453039 (= e!817908 e!817902)))

(declare-fun res!984175 () Bool)

(assert (=> b!1453039 (=> (not res!984175) (not e!817902))))

(assert (=> b!1453039 (= res!984175 (= (select (store (arr!47478 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453039 (= lt!637080 (array!98390 (store (arr!47478 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48029 a!2862)))))

(assert (= (and start!125024 res!984186) b!1453038))

(assert (= (and b!1453038 res!984189) b!1453025))

(assert (= (and b!1453025 res!984172) b!1453023))

(assert (= (and b!1453023 res!984188) b!1453029))

(assert (= (and b!1453029 res!984177) b!1453033))

(assert (= (and b!1453033 res!984187) b!1453028))

(assert (= (and b!1453028 res!984181) b!1453039))

(assert (= (and b!1453039 res!984175) b!1453021))

(assert (= (and b!1453021 res!984182) b!1453034))

(assert (= (and b!1453034 res!984178) b!1453037))

(assert (= (and b!1453037 res!984179) b!1453032))

(assert (= (and b!1453032 c!133937) b!1453030))

(assert (= (and b!1453032 (not c!133937)) b!1453027))

(assert (= (and b!1453032 res!984176) b!1453020))

(assert (= (and b!1453020 res!984184) b!1453035))

(assert (= (and b!1453035 res!984173) b!1453024))

(assert (= (and b!1453024 res!984183) b!1453022))

(assert (= (and b!1453022 res!984174) b!1453031))

(assert (= (and b!1453031 (not res!984185)) b!1453026))

(assert (= (and b!1453026 res!984180) b!1453036))

(declare-fun m!1341613 () Bool)

(assert (=> b!1453039 m!1341613))

(declare-fun m!1341615 () Bool)

(assert (=> b!1453039 m!1341615))

(declare-fun m!1341617 () Bool)

(assert (=> b!1453034 m!1341617))

(assert (=> b!1453034 m!1341617))

(declare-fun m!1341619 () Bool)

(assert (=> b!1453034 m!1341619))

(assert (=> b!1453024 m!1341617))

(assert (=> b!1453024 m!1341617))

(declare-fun m!1341621 () Bool)

(assert (=> b!1453024 m!1341621))

(declare-fun m!1341623 () Bool)

(assert (=> b!1453035 m!1341623))

(declare-fun m!1341625 () Bool)

(assert (=> b!1453035 m!1341625))

(declare-fun m!1341627 () Bool)

(assert (=> b!1453037 m!1341627))

(assert (=> b!1453037 m!1341627))

(declare-fun m!1341629 () Bool)

(assert (=> b!1453037 m!1341629))

(assert (=> b!1453037 m!1341613))

(declare-fun m!1341631 () Bool)

(assert (=> b!1453037 m!1341631))

(declare-fun m!1341633 () Bool)

(assert (=> b!1453022 m!1341633))

(assert (=> b!1453022 m!1341617))

(assert (=> b!1453023 m!1341617))

(assert (=> b!1453023 m!1341617))

(declare-fun m!1341635 () Bool)

(assert (=> b!1453023 m!1341635))

(declare-fun m!1341637 () Bool)

(assert (=> start!125024 m!1341637))

(declare-fun m!1341639 () Bool)

(assert (=> start!125024 m!1341639))

(declare-fun m!1341641 () Bool)

(assert (=> b!1453027 m!1341641))

(declare-fun m!1341643 () Bool)

(assert (=> b!1453027 m!1341643))

(declare-fun m!1341645 () Bool)

(assert (=> b!1453030 m!1341645))

(declare-fun m!1341647 () Bool)

(assert (=> b!1453029 m!1341647))

(assert (=> b!1453036 m!1341643))

(assert (=> b!1453036 m!1341641))

(declare-fun m!1341649 () Bool)

(assert (=> b!1453025 m!1341649))

(assert (=> b!1453025 m!1341649))

(declare-fun m!1341651 () Bool)

(assert (=> b!1453025 m!1341651))

(declare-fun m!1341653 () Bool)

(assert (=> b!1453031 m!1341653))

(assert (=> b!1453031 m!1341617))

(assert (=> b!1453031 m!1341613))

(declare-fun m!1341655 () Bool)

(assert (=> b!1453031 m!1341655))

(assert (=> b!1453021 m!1341617))

(assert (=> b!1453021 m!1341617))

(declare-fun m!1341657 () Bool)

(assert (=> b!1453021 m!1341657))

(assert (=> b!1453021 m!1341657))

(assert (=> b!1453021 m!1341617))

(declare-fun m!1341659 () Bool)

(assert (=> b!1453021 m!1341659))

(declare-fun m!1341661 () Bool)

(assert (=> b!1453033 m!1341661))

(push 1)

