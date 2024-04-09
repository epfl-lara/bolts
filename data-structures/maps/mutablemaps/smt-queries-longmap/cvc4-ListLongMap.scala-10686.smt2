; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125300 () Bool)

(assert start!125300)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!821847 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98665 0))(
  ( (array!98666 (arr!47616 (Array (_ BitVec 32) (_ BitVec 64))) (size!48167 (_ BitVec 32))) )
))
(declare-fun lt!640247 () array!98665)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11891 0))(
  ( (MissingZero!11891 (index!49955 (_ BitVec 32))) (Found!11891 (index!49956 (_ BitVec 32))) (Intermediate!11891 (undefined!12703 Bool) (index!49957 (_ BitVec 32)) (x!131551 (_ BitVec 32))) (Undefined!11891) (MissingVacant!11891 (index!49958 (_ BitVec 32))) )
))
(declare-fun lt!640244 () SeekEntryResult!11891)

(declare-fun lt!640243 () (_ BitVec 64))

(declare-fun b!1461901 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98665 (_ BitVec 32)) SeekEntryResult!11891)

(assert (=> b!1461901 (= e!821847 (= lt!640244 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640243 lt!640247 mask!2687)))))

(declare-fun b!1461902 () Bool)

(declare-fun res!991534 () Bool)

(declare-fun e!821843 () Bool)

(assert (=> b!1461902 (=> (not res!991534) (not e!821843))))

(declare-fun a!2862 () array!98665)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!640249 () SeekEntryResult!11891)

(assert (=> b!1461902 (= res!991534 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47616 a!2862) j!93) a!2862 mask!2687) lt!640249))))

(declare-fun b!1461903 () Bool)

(declare-fun lt!640248 () (_ BitVec 32))

(declare-fun e!821851 () Bool)

(assert (=> b!1461903 (= e!821851 (not (= lt!640244 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640248 lt!640243 lt!640247 mask!2687))))))

(declare-fun res!991539 () Bool)

(declare-fun e!821852 () Bool)

(assert (=> start!125300 (=> (not res!991539) (not e!821852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125300 (= res!991539 (validMask!0 mask!2687))))

(assert (=> start!125300 e!821852))

(assert (=> start!125300 true))

(declare-fun array_inv!36561 (array!98665) Bool)

(assert (=> start!125300 (array_inv!36561 a!2862)))

(declare-fun b!1461904 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98665 (_ BitVec 32)) SeekEntryResult!11891)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98665 (_ BitVec 32)) SeekEntryResult!11891)

(assert (=> b!1461904 (= e!821847 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640243 lt!640247 mask!2687) (seekEntryOrOpen!0 lt!640243 lt!640247 mask!2687)))))

(declare-fun b!1461905 () Bool)

(declare-fun e!821845 () Bool)

(assert (=> b!1461905 (= e!821843 e!821845)))

(declare-fun res!991532 () Bool)

(assert (=> b!1461905 (=> (not res!991532) (not e!821845))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461905 (= res!991532 (= lt!640244 (Intermediate!11891 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461905 (= lt!640244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640243 mask!2687) lt!640243 lt!640247 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461905 (= lt!640243 (select (store (arr!47616 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461906 () Bool)

(declare-fun res!991531 () Bool)

(assert (=> b!1461906 (=> (not res!991531) (not e!821852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461906 (= res!991531 (validKeyInArray!0 (select (arr!47616 a!2862) i!1006)))))

(declare-fun b!1461907 () Bool)

(declare-fun e!821850 () Bool)

(assert (=> b!1461907 (= e!821852 e!821850)))

(declare-fun res!991536 () Bool)

(assert (=> b!1461907 (=> (not res!991536) (not e!821850))))

(assert (=> b!1461907 (= res!991536 (= (select (store (arr!47616 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461907 (= lt!640247 (array!98666 (store (arr!47616 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48167 a!2862)))))

(declare-fun b!1461908 () Bool)

(declare-fun res!991537 () Bool)

(assert (=> b!1461908 (=> (not res!991537) (not e!821852))))

(assert (=> b!1461908 (= res!991537 (validKeyInArray!0 (select (arr!47616 a!2862) j!93)))))

(declare-fun b!1461909 () Bool)

(declare-fun e!821846 () Bool)

(assert (=> b!1461909 (= e!821845 (not e!821846))))

(declare-fun res!991530 () Bool)

(assert (=> b!1461909 (=> res!991530 e!821846)))

(assert (=> b!1461909 (= res!991530 (or (and (= (select (arr!47616 a!2862) index!646) (select (store (arr!47616 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47616 a!2862) index!646) (select (arr!47616 a!2862) j!93))) (= (select (arr!47616 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821844 () Bool)

(assert (=> b!1461909 e!821844))

(declare-fun res!991528 () Bool)

(assert (=> b!1461909 (=> (not res!991528) (not e!821844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98665 (_ BitVec 32)) Bool)

(assert (=> b!1461909 (= res!991528 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49226 0))(
  ( (Unit!49227) )
))
(declare-fun lt!640245 () Unit!49226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49226)

(assert (=> b!1461909 (= lt!640245 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461910 () Bool)

(assert (=> b!1461910 (= e!821851 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640248 intermediateAfterIndex!19 lt!640243 lt!640247 mask!2687) (seekEntryOrOpen!0 lt!640243 lt!640247 mask!2687))))))

(declare-fun b!1461911 () Bool)

(declare-fun res!991535 () Bool)

(assert (=> b!1461911 (=> (not res!991535) (not e!821844))))

(assert (=> b!1461911 (= res!991535 (= (seekEntryOrOpen!0 (select (arr!47616 a!2862) j!93) a!2862 mask!2687) (Found!11891 j!93)))))

(declare-fun b!1461912 () Bool)

(declare-fun res!991542 () Bool)

(assert (=> b!1461912 (=> (not res!991542) (not e!821845))))

(assert (=> b!1461912 (= res!991542 e!821847)))

(declare-fun c!134702 () Bool)

(assert (=> b!1461912 (= c!134702 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461913 () Bool)

(assert (=> b!1461913 (= e!821850 e!821843)))

(declare-fun res!991538 () Bool)

(assert (=> b!1461913 (=> (not res!991538) (not e!821843))))

(assert (=> b!1461913 (= res!991538 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47616 a!2862) j!93) mask!2687) (select (arr!47616 a!2862) j!93) a!2862 mask!2687) lt!640249))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461913 (= lt!640249 (Intermediate!11891 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461914 () Bool)

(declare-fun res!991527 () Bool)

(declare-fun e!821848 () Bool)

(assert (=> b!1461914 (=> res!991527 e!821848)))

(assert (=> b!1461914 (= res!991527 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640248 (select (arr!47616 a!2862) j!93) a!2862 mask!2687) lt!640249)))))

(declare-fun b!1461915 () Bool)

(declare-fun res!991540 () Bool)

(assert (=> b!1461915 (=> (not res!991540) (not e!821852))))

(assert (=> b!1461915 (= res!991540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461916 () Bool)

(declare-fun res!991541 () Bool)

(assert (=> b!1461916 (=> (not res!991541) (not e!821852))))

(assert (=> b!1461916 (= res!991541 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48167 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48167 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48167 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461917 () Bool)

(assert (=> b!1461917 (= e!821844 (or (= (select (arr!47616 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47616 a!2862) intermediateBeforeIndex!19) (select (arr!47616 a!2862) j!93))))))

(declare-fun b!1461918 () Bool)

(declare-fun res!991529 () Bool)

(assert (=> b!1461918 (=> (not res!991529) (not e!821845))))

(assert (=> b!1461918 (= res!991529 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461919 () Bool)

(declare-fun res!991533 () Bool)

(assert (=> b!1461919 (=> (not res!991533) (not e!821852))))

(declare-datatypes ((List!34297 0))(
  ( (Nil!34294) (Cons!34293 (h!35643 (_ BitVec 64)) (t!48998 List!34297)) )
))
(declare-fun arrayNoDuplicates!0 (array!98665 (_ BitVec 32) List!34297) Bool)

(assert (=> b!1461919 (= res!991533 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34294))))

(declare-fun b!1461920 () Bool)

(assert (=> b!1461920 (= e!821846 e!821848)))

(declare-fun res!991525 () Bool)

(assert (=> b!1461920 (=> res!991525 e!821848)))

(assert (=> b!1461920 (= res!991525 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640248 #b00000000000000000000000000000000) (bvsge lt!640248 (size!48167 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461920 (= lt!640248 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461921 () Bool)

(assert (=> b!1461921 (= e!821848 true)))

(declare-fun lt!640246 () Bool)

(assert (=> b!1461921 (= lt!640246 e!821851)))

(declare-fun c!134701 () Bool)

(assert (=> b!1461921 (= c!134701 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461922 () Bool)

(declare-fun res!991526 () Bool)

(assert (=> b!1461922 (=> (not res!991526) (not e!821852))))

(assert (=> b!1461922 (= res!991526 (and (= (size!48167 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48167 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48167 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125300 res!991539) b!1461922))

(assert (= (and b!1461922 res!991526) b!1461906))

(assert (= (and b!1461906 res!991531) b!1461908))

(assert (= (and b!1461908 res!991537) b!1461915))

(assert (= (and b!1461915 res!991540) b!1461919))

(assert (= (and b!1461919 res!991533) b!1461916))

(assert (= (and b!1461916 res!991541) b!1461907))

(assert (= (and b!1461907 res!991536) b!1461913))

(assert (= (and b!1461913 res!991538) b!1461902))

(assert (= (and b!1461902 res!991534) b!1461905))

(assert (= (and b!1461905 res!991532) b!1461912))

(assert (= (and b!1461912 c!134702) b!1461901))

(assert (= (and b!1461912 (not c!134702)) b!1461904))

(assert (= (and b!1461912 res!991542) b!1461918))

(assert (= (and b!1461918 res!991529) b!1461909))

(assert (= (and b!1461909 res!991528) b!1461911))

(assert (= (and b!1461911 res!991535) b!1461917))

(assert (= (and b!1461909 (not res!991530)) b!1461920))

(assert (= (and b!1461920 (not res!991525)) b!1461914))

(assert (= (and b!1461914 (not res!991527)) b!1461921))

(assert (= (and b!1461921 c!134701) b!1461903))

(assert (= (and b!1461921 (not c!134701)) b!1461910))

(declare-fun m!1349471 () Bool)

(assert (=> b!1461917 m!1349471))

(declare-fun m!1349473 () Bool)

(assert (=> b!1461917 m!1349473))

(declare-fun m!1349475 () Bool)

(assert (=> b!1461905 m!1349475))

(assert (=> b!1461905 m!1349475))

(declare-fun m!1349477 () Bool)

(assert (=> b!1461905 m!1349477))

(declare-fun m!1349479 () Bool)

(assert (=> b!1461905 m!1349479))

(declare-fun m!1349481 () Bool)

(assert (=> b!1461905 m!1349481))

(declare-fun m!1349483 () Bool)

(assert (=> b!1461903 m!1349483))

(assert (=> b!1461913 m!1349473))

(assert (=> b!1461913 m!1349473))

(declare-fun m!1349485 () Bool)

(assert (=> b!1461913 m!1349485))

(assert (=> b!1461913 m!1349485))

(assert (=> b!1461913 m!1349473))

(declare-fun m!1349487 () Bool)

(assert (=> b!1461913 m!1349487))

(assert (=> b!1461907 m!1349479))

(declare-fun m!1349489 () Bool)

(assert (=> b!1461907 m!1349489))

(assert (=> b!1461908 m!1349473))

(assert (=> b!1461908 m!1349473))

(declare-fun m!1349491 () Bool)

(assert (=> b!1461908 m!1349491))

(declare-fun m!1349493 () Bool)

(assert (=> b!1461920 m!1349493))

(declare-fun m!1349495 () Bool)

(assert (=> b!1461910 m!1349495))

(declare-fun m!1349497 () Bool)

(assert (=> b!1461910 m!1349497))

(declare-fun m!1349499 () Bool)

(assert (=> b!1461919 m!1349499))

(assert (=> b!1461911 m!1349473))

(assert (=> b!1461911 m!1349473))

(declare-fun m!1349501 () Bool)

(assert (=> b!1461911 m!1349501))

(declare-fun m!1349503 () Bool)

(assert (=> b!1461901 m!1349503))

(assert (=> b!1461914 m!1349473))

(assert (=> b!1461914 m!1349473))

(declare-fun m!1349505 () Bool)

(assert (=> b!1461914 m!1349505))

(declare-fun m!1349507 () Bool)

(assert (=> b!1461909 m!1349507))

(assert (=> b!1461909 m!1349479))

(declare-fun m!1349509 () Bool)

(assert (=> b!1461909 m!1349509))

(declare-fun m!1349511 () Bool)

(assert (=> b!1461909 m!1349511))

(declare-fun m!1349513 () Bool)

(assert (=> b!1461909 m!1349513))

(assert (=> b!1461909 m!1349473))

(assert (=> b!1461902 m!1349473))

(assert (=> b!1461902 m!1349473))

(declare-fun m!1349515 () Bool)

(assert (=> b!1461902 m!1349515))

(declare-fun m!1349517 () Bool)

(assert (=> start!125300 m!1349517))

(declare-fun m!1349519 () Bool)

(assert (=> start!125300 m!1349519))

(declare-fun m!1349521 () Bool)

(assert (=> b!1461906 m!1349521))

(assert (=> b!1461906 m!1349521))

(declare-fun m!1349523 () Bool)

(assert (=> b!1461906 m!1349523))

(declare-fun m!1349525 () Bool)

(assert (=> b!1461915 m!1349525))

(declare-fun m!1349527 () Bool)

(assert (=> b!1461904 m!1349527))

(assert (=> b!1461904 m!1349497))

(push 1)

