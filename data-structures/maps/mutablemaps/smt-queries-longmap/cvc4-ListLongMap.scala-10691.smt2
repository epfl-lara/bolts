; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125330 () Bool)

(assert start!125330)

(declare-fun b!1462891 () Bool)

(declare-fun res!992340 () Bool)

(declare-fun e!822300 () Bool)

(assert (=> b!1462891 (=> (not res!992340) (not e!822300))))

(declare-datatypes ((SeekEntryResult!11906 0))(
  ( (MissingZero!11906 (index!50015 (_ BitVec 32))) (Found!11906 (index!50016 (_ BitVec 32))) (Intermediate!11906 (undefined!12718 Bool) (index!50017 (_ BitVec 32)) (x!131606 (_ BitVec 32))) (Undefined!11906) (MissingVacant!11906 (index!50018 (_ BitVec 32))) )
))
(declare-fun lt!640559 () SeekEntryResult!11906)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98695 0))(
  ( (array!98696 (arr!47631 (Array (_ BitVec 32) (_ BitVec 64))) (size!48182 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98695)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98695 (_ BitVec 32)) SeekEntryResult!11906)

(assert (=> b!1462891 (= res!992340 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47631 a!2862) j!93) a!2862 mask!2687) lt!640559))))

(declare-fun b!1462892 () Bool)

(declare-fun e!822302 () Bool)

(declare-fun e!822301 () Bool)

(assert (=> b!1462892 (= e!822302 e!822301)))

(declare-fun res!992338 () Bool)

(assert (=> b!1462892 (=> (not res!992338) (not e!822301))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462892 (= res!992338 (= (select (store (arr!47631 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640560 () array!98695)

(assert (=> b!1462892 (= lt!640560 (array!98696 (store (arr!47631 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48182 a!2862)))))

(declare-fun lt!640563 () (_ BitVec 64))

(declare-fun lt!640558 () (_ BitVec 32))

(declare-fun b!1462893 () Bool)

(declare-fun e!822297 () Bool)

(declare-fun lt!640562 () SeekEntryResult!11906)

(assert (=> b!1462893 (= e!822297 (not (= lt!640562 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640558 lt!640563 lt!640560 mask!2687))))))

(declare-fun b!1462894 () Bool)

(declare-fun res!992344 () Bool)

(declare-fun e!822299 () Bool)

(assert (=> b!1462894 (=> (not res!992344) (not e!822299))))

(declare-fun e!822296 () Bool)

(assert (=> b!1462894 (= res!992344 e!822296)))

(declare-fun c!134792 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462894 (= c!134792 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462895 () Bool)

(declare-fun res!992350 () Bool)

(assert (=> b!1462895 (=> (not res!992350) (not e!822302))))

(assert (=> b!1462895 (= res!992350 (and (= (size!48182 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48182 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48182 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462896 () Bool)

(declare-fun res!992342 () Bool)

(assert (=> b!1462896 (=> (not res!992342) (not e!822302))))

(declare-datatypes ((List!34312 0))(
  ( (Nil!34309) (Cons!34308 (h!35658 (_ BitVec 64)) (t!49013 List!34312)) )
))
(declare-fun arrayNoDuplicates!0 (array!98695 (_ BitVec 32) List!34312) Bool)

(assert (=> b!1462896 (= res!992342 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34309))))

(declare-fun b!1462897 () Bool)

(declare-fun res!992351 () Bool)

(declare-fun e!822293 () Bool)

(assert (=> b!1462897 (=> res!992351 e!822293)))

(assert (=> b!1462897 (= res!992351 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640558 (select (arr!47631 a!2862) j!93) a!2862 mask!2687) lt!640559)))))

(declare-fun res!992349 () Bool)

(assert (=> start!125330 (=> (not res!992349) (not e!822302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125330 (= res!992349 (validMask!0 mask!2687))))

(assert (=> start!125330 e!822302))

(assert (=> start!125330 true))

(declare-fun array_inv!36576 (array!98695) Bool)

(assert (=> start!125330 (array_inv!36576 a!2862)))

(declare-fun b!1462898 () Bool)

(declare-fun res!992336 () Bool)

(declare-fun e!822298 () Bool)

(assert (=> b!1462898 (=> (not res!992336) (not e!822298))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98695 (_ BitVec 32)) SeekEntryResult!11906)

(assert (=> b!1462898 (= res!992336 (= (seekEntryOrOpen!0 (select (arr!47631 a!2862) j!93) a!2862 mask!2687) (Found!11906 j!93)))))

(declare-fun b!1462899 () Bool)

(declare-fun res!992335 () Bool)

(assert (=> b!1462899 (=> (not res!992335) (not e!822299))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462899 (= res!992335 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462900 () Bool)

(declare-fun res!992345 () Bool)

(assert (=> b!1462900 (=> (not res!992345) (not e!822302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462900 (= res!992345 (validKeyInArray!0 (select (arr!47631 a!2862) j!93)))))

(declare-fun b!1462901 () Bool)

(assert (=> b!1462901 (= e!822301 e!822300)))

(declare-fun res!992341 () Bool)

(assert (=> b!1462901 (=> (not res!992341) (not e!822300))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462901 (= res!992341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47631 a!2862) j!93) mask!2687) (select (arr!47631 a!2862) j!93) a!2862 mask!2687) lt!640559))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1462901 (= lt!640559 (Intermediate!11906 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462902 () Bool)

(declare-fun res!992337 () Bool)

(assert (=> b!1462902 (=> (not res!992337) (not e!822302))))

(assert (=> b!1462902 (= res!992337 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48182 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48182 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48182 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462903 () Bool)

(declare-fun res!992347 () Bool)

(assert (=> b!1462903 (=> (not res!992347) (not e!822302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98695 (_ BitVec 32)) Bool)

(assert (=> b!1462903 (= res!992347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462904 () Bool)

(declare-fun e!822295 () Bool)

(assert (=> b!1462904 (= e!822295 e!822293)))

(declare-fun res!992348 () Bool)

(assert (=> b!1462904 (=> res!992348 e!822293)))

(assert (=> b!1462904 (= res!992348 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640558 #b00000000000000000000000000000000) (bvsge lt!640558 (size!48182 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462904 (= lt!640558 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462905 () Bool)

(assert (=> b!1462905 (= e!822298 (or (= (select (arr!47631 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47631 a!2862) intermediateBeforeIndex!19) (select (arr!47631 a!2862) j!93))))))

(declare-fun b!1462906 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98695 (_ BitVec 32)) SeekEntryResult!11906)

(assert (=> b!1462906 (= e!822296 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640563 lt!640560 mask!2687) (seekEntryOrOpen!0 lt!640563 lt!640560 mask!2687)))))

(declare-fun b!1462907 () Bool)

(assert (=> b!1462907 (= e!822296 (= lt!640562 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640563 lt!640560 mask!2687)))))

(declare-fun b!1462908 () Bool)

(declare-fun res!992352 () Bool)

(assert (=> b!1462908 (=> (not res!992352) (not e!822302))))

(assert (=> b!1462908 (= res!992352 (validKeyInArray!0 (select (arr!47631 a!2862) i!1006)))))

(declare-fun b!1462909 () Bool)

(assert (=> b!1462909 (= e!822293 true)))

(declare-fun lt!640564 () Bool)

(assert (=> b!1462909 (= lt!640564 e!822297)))

(declare-fun c!134791 () Bool)

(assert (=> b!1462909 (= c!134791 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462910 () Bool)

(assert (=> b!1462910 (= e!822297 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640558 intermediateAfterIndex!19 lt!640563 lt!640560 mask!2687) (seekEntryOrOpen!0 lt!640563 lt!640560 mask!2687))))))

(declare-fun b!1462911 () Bool)

(assert (=> b!1462911 (= e!822299 (not e!822295))))

(declare-fun res!992346 () Bool)

(assert (=> b!1462911 (=> res!992346 e!822295)))

(assert (=> b!1462911 (= res!992346 (or (and (= (select (arr!47631 a!2862) index!646) (select (store (arr!47631 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47631 a!2862) index!646) (select (arr!47631 a!2862) j!93))) (= (select (arr!47631 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462911 e!822298))

(declare-fun res!992343 () Bool)

(assert (=> b!1462911 (=> (not res!992343) (not e!822298))))

(assert (=> b!1462911 (= res!992343 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49256 0))(
  ( (Unit!49257) )
))
(declare-fun lt!640561 () Unit!49256)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49256)

(assert (=> b!1462911 (= lt!640561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462912 () Bool)

(assert (=> b!1462912 (= e!822300 e!822299)))

(declare-fun res!992339 () Bool)

(assert (=> b!1462912 (=> (not res!992339) (not e!822299))))

(assert (=> b!1462912 (= res!992339 (= lt!640562 (Intermediate!11906 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462912 (= lt!640562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640563 mask!2687) lt!640563 lt!640560 mask!2687))))

(assert (=> b!1462912 (= lt!640563 (select (store (arr!47631 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125330 res!992349) b!1462895))

(assert (= (and b!1462895 res!992350) b!1462908))

(assert (= (and b!1462908 res!992352) b!1462900))

(assert (= (and b!1462900 res!992345) b!1462903))

(assert (= (and b!1462903 res!992347) b!1462896))

(assert (= (and b!1462896 res!992342) b!1462902))

(assert (= (and b!1462902 res!992337) b!1462892))

(assert (= (and b!1462892 res!992338) b!1462901))

(assert (= (and b!1462901 res!992341) b!1462891))

(assert (= (and b!1462891 res!992340) b!1462912))

(assert (= (and b!1462912 res!992339) b!1462894))

(assert (= (and b!1462894 c!134792) b!1462907))

(assert (= (and b!1462894 (not c!134792)) b!1462906))

(assert (= (and b!1462894 res!992344) b!1462899))

(assert (= (and b!1462899 res!992335) b!1462911))

(assert (= (and b!1462911 res!992343) b!1462898))

(assert (= (and b!1462898 res!992336) b!1462905))

(assert (= (and b!1462911 (not res!992346)) b!1462904))

(assert (= (and b!1462904 (not res!992348)) b!1462897))

(assert (= (and b!1462897 (not res!992351)) b!1462909))

(assert (= (and b!1462909 c!134791) b!1462893))

(assert (= (and b!1462909 (not c!134791)) b!1462910))

(declare-fun m!1350341 () Bool)

(assert (=> b!1462898 m!1350341))

(assert (=> b!1462898 m!1350341))

(declare-fun m!1350343 () Bool)

(assert (=> b!1462898 m!1350343))

(declare-fun m!1350345 () Bool)

(assert (=> b!1462911 m!1350345))

(declare-fun m!1350347 () Bool)

(assert (=> b!1462911 m!1350347))

(declare-fun m!1350349 () Bool)

(assert (=> b!1462911 m!1350349))

(declare-fun m!1350351 () Bool)

(assert (=> b!1462911 m!1350351))

(declare-fun m!1350353 () Bool)

(assert (=> b!1462911 m!1350353))

(assert (=> b!1462911 m!1350341))

(declare-fun m!1350355 () Bool)

(assert (=> b!1462906 m!1350355))

(declare-fun m!1350357 () Bool)

(assert (=> b!1462906 m!1350357))

(declare-fun m!1350359 () Bool)

(assert (=> b!1462910 m!1350359))

(assert (=> b!1462910 m!1350357))

(assert (=> b!1462891 m!1350341))

(assert (=> b!1462891 m!1350341))

(declare-fun m!1350361 () Bool)

(assert (=> b!1462891 m!1350361))

(assert (=> b!1462897 m!1350341))

(assert (=> b!1462897 m!1350341))

(declare-fun m!1350363 () Bool)

(assert (=> b!1462897 m!1350363))

(assert (=> b!1462900 m!1350341))

(assert (=> b!1462900 m!1350341))

(declare-fun m!1350365 () Bool)

(assert (=> b!1462900 m!1350365))

(declare-fun m!1350367 () Bool)

(assert (=> b!1462896 m!1350367))

(declare-fun m!1350369 () Bool)

(assert (=> b!1462905 m!1350369))

(assert (=> b!1462905 m!1350341))

(declare-fun m!1350371 () Bool)

(assert (=> b!1462904 m!1350371))

(declare-fun m!1350373 () Bool)

(assert (=> b!1462907 m!1350373))

(declare-fun m!1350375 () Bool)

(assert (=> b!1462893 m!1350375))

(assert (=> b!1462901 m!1350341))

(assert (=> b!1462901 m!1350341))

(declare-fun m!1350377 () Bool)

(assert (=> b!1462901 m!1350377))

(assert (=> b!1462901 m!1350377))

(assert (=> b!1462901 m!1350341))

(declare-fun m!1350379 () Bool)

(assert (=> b!1462901 m!1350379))

(declare-fun m!1350381 () Bool)

(assert (=> start!125330 m!1350381))

(declare-fun m!1350383 () Bool)

(assert (=> start!125330 m!1350383))

(declare-fun m!1350385 () Bool)

(assert (=> b!1462908 m!1350385))

(assert (=> b!1462908 m!1350385))

(declare-fun m!1350387 () Bool)

(assert (=> b!1462908 m!1350387))

(assert (=> b!1462892 m!1350347))

(declare-fun m!1350389 () Bool)

(assert (=> b!1462892 m!1350389))

(declare-fun m!1350391 () Bool)

(assert (=> b!1462903 m!1350391))

(declare-fun m!1350393 () Bool)

(assert (=> b!1462912 m!1350393))

(assert (=> b!1462912 m!1350393))

(declare-fun m!1350395 () Bool)

(assert (=> b!1462912 m!1350395))

(assert (=> b!1462912 m!1350347))

(declare-fun m!1350397 () Bool)

(assert (=> b!1462912 m!1350397))

(push 1)

