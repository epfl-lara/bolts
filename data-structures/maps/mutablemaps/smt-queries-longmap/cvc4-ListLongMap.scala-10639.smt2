; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125018 () Bool)

(assert start!125018)

(declare-fun b!1452842 () Bool)

(declare-fun res!984019 () Bool)

(declare-fun e!817824 () Bool)

(assert (=> b!1452842 (=> (not res!984019) (not e!817824))))

(declare-datatypes ((array!98383 0))(
  ( (array!98384 (arr!47475 (Array (_ BitVec 32) (_ BitVec 64))) (size!48026 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98383)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98383 (_ BitVec 32)) Bool)

(assert (=> b!1452842 (= res!984019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452843 () Bool)

(declare-fun res!984014 () Bool)

(assert (=> b!1452843 (=> (not res!984014) (not e!817824))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452843 (= res!984014 (and (= (size!48026 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48026 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48026 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452845 () Bool)

(declare-fun res!984015 () Bool)

(assert (=> b!1452845 (=> (not res!984015) (not e!817824))))

(declare-datatypes ((List!34156 0))(
  ( (Nil!34153) (Cons!34152 (h!35502 (_ BitVec 64)) (t!48857 List!34156)) )
))
(declare-fun arrayNoDuplicates!0 (array!98383 (_ BitVec 32) List!34156) Bool)

(assert (=> b!1452845 (= res!984015 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34153))))

(declare-fun b!1452846 () Bool)

(declare-fun res!984023 () Bool)

(assert (=> b!1452846 (=> (not res!984023) (not e!817824))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1452846 (= res!984023 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48026 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48026 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48026 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452847 () Bool)

(declare-fun res!984026 () Bool)

(declare-fun e!817826 () Bool)

(assert (=> b!1452847 (=> (not res!984026) (not e!817826))))

(declare-fun e!817825 () Bool)

(assert (=> b!1452847 (= res!984026 e!817825)))

(declare-fun c!133928 () Bool)

(assert (=> b!1452847 (= c!133928 (bvsle x!665 intermediateAfterX!19))))

(declare-datatypes ((SeekEntryResult!11750 0))(
  ( (MissingZero!11750 (index!49391 (_ BitVec 32))) (Found!11750 (index!49392 (_ BitVec 32))) (Intermediate!11750 (undefined!12562 Bool) (index!49393 (_ BitVec 32)) (x!131034 (_ BitVec 32))) (Undefined!11750) (MissingVacant!11750 (index!49394 (_ BitVec 32))) )
))
(declare-fun lt!637025 () SeekEntryResult!11750)

(declare-fun lt!637024 () (_ BitVec 64))

(declare-fun lt!637027 () array!98383)

(declare-fun b!1452848 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98383 (_ BitVec 32)) SeekEntryResult!11750)

(assert (=> b!1452848 (= e!817825 (= lt!637025 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637024 lt!637027 mask!2687)))))

(declare-fun b!1452849 () Bool)

(declare-fun e!817827 () Bool)

(declare-fun e!817823 () Bool)

(assert (=> b!1452849 (= e!817827 e!817823)))

(declare-fun res!984018 () Bool)

(assert (=> b!1452849 (=> (not res!984018) (not e!817823))))

(declare-fun lt!637026 () SeekEntryResult!11750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452849 (= res!984018 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47475 a!2862) j!93) mask!2687) (select (arr!47475 a!2862) j!93) a!2862 mask!2687) lt!637026))))

(assert (=> b!1452849 (= lt!637026 (Intermediate!11750 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452850 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98383 (_ BitVec 32)) SeekEntryResult!11750)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98383 (_ BitVec 32)) SeekEntryResult!11750)

(assert (=> b!1452850 (= e!817825 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637024 lt!637027 mask!2687) (seekEntryOrOpen!0 lt!637024 lt!637027 mask!2687)))))

(declare-fun b!1452851 () Bool)

(declare-fun res!984022 () Bool)

(declare-fun e!817828 () Bool)

(assert (=> b!1452851 (=> (not res!984022) (not e!817828))))

(assert (=> b!1452851 (= res!984022 (= (seekEntryOrOpen!0 (select (arr!47475 a!2862) j!93) a!2862 mask!2687) (Found!11750 j!93)))))

(declare-fun b!1452852 () Bool)

(declare-fun res!984024 () Bool)

(assert (=> b!1452852 (=> (not res!984024) (not e!817823))))

(assert (=> b!1452852 (= res!984024 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47475 a!2862) j!93) a!2862 mask!2687) lt!637026))))

(declare-fun b!1452853 () Bool)

(assert (=> b!1452853 (= e!817823 e!817826)))

(declare-fun res!984025 () Bool)

(assert (=> b!1452853 (=> (not res!984025) (not e!817826))))

(assert (=> b!1452853 (= res!984025 (= lt!637025 (Intermediate!11750 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452853 (= lt!637025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637024 mask!2687) lt!637024 lt!637027 mask!2687))))

(assert (=> b!1452853 (= lt!637024 (select (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452854 () Bool)

(declare-fun e!817822 () Bool)

(assert (=> b!1452854 (= e!817826 (not e!817822))))

(declare-fun res!984020 () Bool)

(assert (=> b!1452854 (=> res!984020 e!817822)))

(assert (=> b!1452854 (= res!984020 (or (and (= (select (arr!47475 a!2862) index!646) (select (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47475 a!2862) index!646) (select (arr!47475 a!2862) j!93))) (= (select (arr!47475 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(assert (=> b!1452854 e!817828))

(declare-fun res!984021 () Bool)

(assert (=> b!1452854 (=> (not res!984021) (not e!817828))))

(assert (=> b!1452854 (= res!984021 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48944 0))(
  ( (Unit!48945) )
))
(declare-fun lt!637023 () Unit!48944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98383 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48944)

(assert (=> b!1452854 (= lt!637023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452855 () Bool)

(declare-fun res!984013 () Bool)

(assert (=> b!1452855 (=> (not res!984013) (not e!817826))))

(assert (=> b!1452855 (= res!984013 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452856 () Bool)

(declare-fun res!984017 () Bool)

(assert (=> b!1452856 (=> (not res!984017) (not e!817824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452856 (= res!984017 (validKeyInArray!0 (select (arr!47475 a!2862) j!93)))))

(declare-fun b!1452857 () Bool)

(assert (=> b!1452857 (= e!817824 e!817827)))

(declare-fun res!984016 () Bool)

(assert (=> b!1452857 (=> (not res!984016) (not e!817827))))

(assert (=> b!1452857 (= res!984016 (= (select (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452857 (= lt!637027 (array!98384 (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48026 a!2862)))))

(declare-fun res!984027 () Bool)

(assert (=> start!125018 (=> (not res!984027) (not e!817824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125018 (= res!984027 (validMask!0 mask!2687))))

(assert (=> start!125018 e!817824))

(assert (=> start!125018 true))

(declare-fun array_inv!36420 (array!98383) Bool)

(assert (=> start!125018 (array_inv!36420 a!2862)))

(declare-fun b!1452844 () Bool)

(assert (=> b!1452844 (= e!817822 (validKeyInArray!0 lt!637024))))

(declare-fun b!1452858 () Bool)

(assert (=> b!1452858 (= e!817828 (and (or (= (select (arr!47475 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47475 a!2862) intermediateBeforeIndex!19) (select (arr!47475 a!2862) j!93))) (or (and (= (select (arr!47475 a!2862) index!646) (select (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47475 a!2862) index!646) (select (arr!47475 a!2862) j!93))) (= (select (arr!47475 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47475 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452859 () Bool)

(declare-fun res!984012 () Bool)

(assert (=> b!1452859 (=> (not res!984012) (not e!817824))))

(assert (=> b!1452859 (= res!984012 (validKeyInArray!0 (select (arr!47475 a!2862) i!1006)))))

(assert (= (and start!125018 res!984027) b!1452843))

(assert (= (and b!1452843 res!984014) b!1452859))

(assert (= (and b!1452859 res!984012) b!1452856))

(assert (= (and b!1452856 res!984017) b!1452842))

(assert (= (and b!1452842 res!984019) b!1452845))

(assert (= (and b!1452845 res!984015) b!1452846))

(assert (= (and b!1452846 res!984023) b!1452857))

(assert (= (and b!1452857 res!984016) b!1452849))

(assert (= (and b!1452849 res!984018) b!1452852))

(assert (= (and b!1452852 res!984024) b!1452853))

(assert (= (and b!1452853 res!984025) b!1452847))

(assert (= (and b!1452847 c!133928) b!1452848))

(assert (= (and b!1452847 (not c!133928)) b!1452850))

(assert (= (and b!1452847 res!984026) b!1452855))

(assert (= (and b!1452855 res!984013) b!1452854))

(assert (= (and b!1452854 res!984021) b!1452851))

(assert (= (and b!1452851 res!984022) b!1452858))

(assert (= (and b!1452854 (not res!984020)) b!1452844))

(declare-fun m!1341461 () Bool)

(assert (=> b!1452854 m!1341461))

(declare-fun m!1341463 () Bool)

(assert (=> b!1452854 m!1341463))

(declare-fun m!1341465 () Bool)

(assert (=> b!1452854 m!1341465))

(declare-fun m!1341467 () Bool)

(assert (=> b!1452854 m!1341467))

(declare-fun m!1341469 () Bool)

(assert (=> b!1452854 m!1341469))

(declare-fun m!1341471 () Bool)

(assert (=> b!1452854 m!1341471))

(assert (=> b!1452858 m!1341463))

(declare-fun m!1341473 () Bool)

(assert (=> b!1452858 m!1341473))

(assert (=> b!1452858 m!1341465))

(assert (=> b!1452858 m!1341467))

(assert (=> b!1452858 m!1341471))

(declare-fun m!1341475 () Bool)

(assert (=> b!1452853 m!1341475))

(assert (=> b!1452853 m!1341475))

(declare-fun m!1341477 () Bool)

(assert (=> b!1452853 m!1341477))

(assert (=> b!1452853 m!1341463))

(declare-fun m!1341479 () Bool)

(assert (=> b!1452853 m!1341479))

(declare-fun m!1341481 () Bool)

(assert (=> start!125018 m!1341481))

(declare-fun m!1341483 () Bool)

(assert (=> start!125018 m!1341483))

(assert (=> b!1452856 m!1341471))

(assert (=> b!1452856 m!1341471))

(declare-fun m!1341485 () Bool)

(assert (=> b!1452856 m!1341485))

(declare-fun m!1341487 () Bool)

(assert (=> b!1452850 m!1341487))

(declare-fun m!1341489 () Bool)

(assert (=> b!1452850 m!1341489))

(assert (=> b!1452857 m!1341463))

(declare-fun m!1341491 () Bool)

(assert (=> b!1452857 m!1341491))

(declare-fun m!1341493 () Bool)

(assert (=> b!1452845 m!1341493))

(declare-fun m!1341495 () Bool)

(assert (=> b!1452859 m!1341495))

(assert (=> b!1452859 m!1341495))

(declare-fun m!1341497 () Bool)

(assert (=> b!1452859 m!1341497))

(assert (=> b!1452852 m!1341471))

(assert (=> b!1452852 m!1341471))

(declare-fun m!1341499 () Bool)

(assert (=> b!1452852 m!1341499))

(declare-fun m!1341501 () Bool)

(assert (=> b!1452848 m!1341501))

(assert (=> b!1452849 m!1341471))

(assert (=> b!1452849 m!1341471))

(declare-fun m!1341503 () Bool)

(assert (=> b!1452849 m!1341503))

(assert (=> b!1452849 m!1341503))

(assert (=> b!1452849 m!1341471))

(declare-fun m!1341505 () Bool)

(assert (=> b!1452849 m!1341505))

(assert (=> b!1452851 m!1341471))

(assert (=> b!1452851 m!1341471))

(declare-fun m!1341507 () Bool)

(assert (=> b!1452851 m!1341507))

(declare-fun m!1341509 () Bool)

(assert (=> b!1452842 m!1341509))

(declare-fun m!1341511 () Bool)

(assert (=> b!1452844 m!1341511))

(push 1)

(assert (not b!1452850))

(assert (not b!1452852))

(assert (not b!1452848))

(assert (not b!1452854))

(assert (not b!1452851))

