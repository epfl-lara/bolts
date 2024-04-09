; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126556 () Bool)

(assert start!126556)

(declare-fun b!1483895 () Bool)

(declare-fun e!832041 () Bool)

(declare-fun e!832049 () Bool)

(assert (=> b!1483895 (= e!832041 e!832049)))

(declare-fun res!1008837 () Bool)

(assert (=> b!1483895 (=> (not res!1008837) (not e!832049))))

(declare-datatypes ((SeekEntryResult!12252 0))(
  ( (MissingZero!12252 (index!51399 (_ BitVec 32))) (Found!12252 (index!51400 (_ BitVec 32))) (Intermediate!12252 (undefined!13064 Bool) (index!51401 (_ BitVec 32)) (x!132987 (_ BitVec 32))) (Undefined!12252) (MissingVacant!12252 (index!51402 (_ BitVec 32))) )
))
(declare-fun lt!647551 () SeekEntryResult!12252)

(declare-datatypes ((array!99435 0))(
  ( (array!99436 (arr!47989 (Array (_ BitVec 32) (_ BitVec 64))) (size!48540 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99435)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99435 (_ BitVec 32)) SeekEntryResult!12252)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483895 (= res!1008837 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47989 a!2862) j!93) mask!2687) (select (arr!47989 a!2862) j!93) a!2862 mask!2687) lt!647551))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483895 (= lt!647551 (Intermediate!12252 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483896 () Bool)

(declare-fun res!1008839 () Bool)

(declare-fun e!832044 () Bool)

(assert (=> b!1483896 (=> (not res!1008839) (not e!832044))))

(declare-fun e!832043 () Bool)

(assert (=> b!1483896 (= res!1008839 e!832043)))

(declare-fun c!137060 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483896 (= c!137060 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483897 () Bool)

(assert (=> b!1483897 (= e!832049 e!832044)))

(declare-fun res!1008828 () Bool)

(assert (=> b!1483897 (=> (not res!1008828) (not e!832044))))

(declare-fun lt!647547 () SeekEntryResult!12252)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483897 (= res!1008828 (= lt!647547 (Intermediate!12252 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647548 () (_ BitVec 64))

(declare-fun lt!647546 () array!99435)

(assert (=> b!1483897 (= lt!647547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647548 mask!2687) lt!647548 lt!647546 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1483897 (= lt!647548 (select (store (arr!47989 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483898 () Bool)

(declare-fun res!1008836 () Bool)

(declare-fun e!832040 () Bool)

(assert (=> b!1483898 (=> (not res!1008836) (not e!832040))))

(assert (=> b!1483898 (= res!1008836 (and (= (size!48540 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48540 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48540 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483899 () Bool)

(assert (=> b!1483899 (= e!832040 e!832041)))

(declare-fun res!1008841 () Bool)

(assert (=> b!1483899 (=> (not res!1008841) (not e!832041))))

(assert (=> b!1483899 (= res!1008841 (= (select (store (arr!47989 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483899 (= lt!647546 (array!99436 (store (arr!47989 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48540 a!2862)))))

(declare-fun b!1483900 () Bool)

(declare-fun res!1008833 () Bool)

(assert (=> b!1483900 (=> (not res!1008833) (not e!832044))))

(assert (=> b!1483900 (= res!1008833 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483901 () Bool)

(declare-fun res!1008829 () Bool)

(declare-fun e!832046 () Bool)

(assert (=> b!1483901 (=> (not res!1008829) (not e!832046))))

(assert (=> b!1483901 (= res!1008829 (or (= (select (arr!47989 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47989 a!2862) intermediateBeforeIndex!19) (select (arr!47989 a!2862) j!93))))))

(declare-fun b!1483902 () Bool)

(declare-fun e!832048 () Bool)

(assert (=> b!1483902 (= e!832048 true)))

(declare-fun lt!647550 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483902 (= lt!647550 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483903 () Bool)

(declare-fun res!1008830 () Bool)

(assert (=> b!1483903 (=> (not res!1008830) (not e!832040))))

(assert (=> b!1483903 (= res!1008830 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48540 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48540 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48540 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1008842 () Bool)

(assert (=> start!126556 (=> (not res!1008842) (not e!832040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126556 (= res!1008842 (validMask!0 mask!2687))))

(assert (=> start!126556 e!832040))

(assert (=> start!126556 true))

(declare-fun array_inv!36934 (array!99435) Bool)

(assert (=> start!126556 (array_inv!36934 a!2862)))

(declare-fun b!1483904 () Bool)

(declare-fun e!832047 () Bool)

(assert (=> b!1483904 (= e!832046 e!832047)))

(declare-fun res!1008831 () Bool)

(assert (=> b!1483904 (=> res!1008831 e!832047)))

(declare-fun lt!647545 () (_ BitVec 64))

(assert (=> b!1483904 (= res!1008831 (or (and (= (select (arr!47989 a!2862) index!646) lt!647545) (= (select (arr!47989 a!2862) index!646) (select (arr!47989 a!2862) j!93))) (= (select (arr!47989 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483904 (= lt!647545 (select (store (arr!47989 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483905 () Bool)

(declare-fun res!1008843 () Bool)

(assert (=> b!1483905 (=> (not res!1008843) (not e!832040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483905 (= res!1008843 (validKeyInArray!0 (select (arr!47989 a!2862) j!93)))))

(declare-fun b!1483906 () Bool)

(declare-fun res!1008825 () Bool)

(assert (=> b!1483906 (=> (not res!1008825) (not e!832049))))

(assert (=> b!1483906 (= res!1008825 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47989 a!2862) j!93) a!2862 mask!2687) lt!647551))))

(declare-fun b!1483907 () Bool)

(declare-fun e!832045 () Bool)

(assert (=> b!1483907 (= e!832047 e!832045)))

(declare-fun res!1008840 () Bool)

(assert (=> b!1483907 (=> (not res!1008840) (not e!832045))))

(assert (=> b!1483907 (= res!1008840 (and (= index!646 intermediateAfterIndex!19) (= lt!647545 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483908 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99435 (_ BitVec 32)) SeekEntryResult!12252)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99435 (_ BitVec 32)) SeekEntryResult!12252)

(assert (=> b!1483908 (= e!832043 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647548 lt!647546 mask!2687) (seekEntryOrOpen!0 lt!647548 lt!647546 mask!2687)))))

(declare-fun b!1483909 () Bool)

(assert (=> b!1483909 (= e!832043 (= lt!647547 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647548 lt!647546 mask!2687)))))

(declare-fun b!1483910 () Bool)

(declare-fun res!1008832 () Bool)

(assert (=> b!1483910 (=> (not res!1008832) (not e!832046))))

(assert (=> b!1483910 (= res!1008832 (= (seekEntryOrOpen!0 (select (arr!47989 a!2862) j!93) a!2862 mask!2687) (Found!12252 j!93)))))

(declare-fun b!1483911 () Bool)

(declare-fun res!1008834 () Bool)

(assert (=> b!1483911 (=> (not res!1008834) (not e!832040))))

(declare-datatypes ((List!34670 0))(
  ( (Nil!34667) (Cons!34666 (h!36040 (_ BitVec 64)) (t!49371 List!34670)) )
))
(declare-fun arrayNoDuplicates!0 (array!99435 (_ BitVec 32) List!34670) Bool)

(assert (=> b!1483911 (= res!1008834 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34667))))

(declare-fun b!1483912 () Bool)

(assert (=> b!1483912 (= e!832044 (not e!832048))))

(declare-fun res!1008838 () Bool)

(assert (=> b!1483912 (=> res!1008838 e!832048)))

(assert (=> b!1483912 (= res!1008838 (or (and (= (select (arr!47989 a!2862) index!646) (select (store (arr!47989 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47989 a!2862) index!646) (select (arr!47989 a!2862) j!93))) (= (select (arr!47989 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483912 e!832046))

(declare-fun res!1008827 () Bool)

(assert (=> b!1483912 (=> (not res!1008827) (not e!832046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99435 (_ BitVec 32)) Bool)

(assert (=> b!1483912 (= res!1008827 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49792 0))(
  ( (Unit!49793) )
))
(declare-fun lt!647549 () Unit!49792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49792)

(assert (=> b!1483912 (= lt!647549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483913 () Bool)

(declare-fun res!1008826 () Bool)

(assert (=> b!1483913 (=> (not res!1008826) (not e!832040))))

(assert (=> b!1483913 (= res!1008826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483914 () Bool)

(assert (=> b!1483914 (= e!832045 (= (seekEntryOrOpen!0 lt!647548 lt!647546 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647548 lt!647546 mask!2687)))))

(declare-fun b!1483915 () Bool)

(declare-fun res!1008835 () Bool)

(assert (=> b!1483915 (=> (not res!1008835) (not e!832040))))

(assert (=> b!1483915 (= res!1008835 (validKeyInArray!0 (select (arr!47989 a!2862) i!1006)))))

(assert (= (and start!126556 res!1008842) b!1483898))

(assert (= (and b!1483898 res!1008836) b!1483915))

(assert (= (and b!1483915 res!1008835) b!1483905))

(assert (= (and b!1483905 res!1008843) b!1483913))

(assert (= (and b!1483913 res!1008826) b!1483911))

(assert (= (and b!1483911 res!1008834) b!1483903))

(assert (= (and b!1483903 res!1008830) b!1483899))

(assert (= (and b!1483899 res!1008841) b!1483895))

(assert (= (and b!1483895 res!1008837) b!1483906))

(assert (= (and b!1483906 res!1008825) b!1483897))

(assert (= (and b!1483897 res!1008828) b!1483896))

(assert (= (and b!1483896 c!137060) b!1483909))

(assert (= (and b!1483896 (not c!137060)) b!1483908))

(assert (= (and b!1483896 res!1008839) b!1483900))

(assert (= (and b!1483900 res!1008833) b!1483912))

(assert (= (and b!1483912 res!1008827) b!1483910))

(assert (= (and b!1483910 res!1008832) b!1483901))

(assert (= (and b!1483901 res!1008829) b!1483904))

(assert (= (and b!1483904 (not res!1008831)) b!1483907))

(assert (= (and b!1483907 res!1008840) b!1483914))

(assert (= (and b!1483912 (not res!1008838)) b!1483902))

(declare-fun m!1369341 () Bool)

(assert (=> b!1483909 m!1369341))

(declare-fun m!1369343 () Bool)

(assert (=> b!1483902 m!1369343))

(declare-fun m!1369345 () Bool)

(assert (=> b!1483905 m!1369345))

(assert (=> b!1483905 m!1369345))

(declare-fun m!1369347 () Bool)

(assert (=> b!1483905 m!1369347))

(declare-fun m!1369349 () Bool)

(assert (=> b!1483908 m!1369349))

(declare-fun m!1369351 () Bool)

(assert (=> b!1483908 m!1369351))

(assert (=> b!1483906 m!1369345))

(assert (=> b!1483906 m!1369345))

(declare-fun m!1369353 () Bool)

(assert (=> b!1483906 m!1369353))

(declare-fun m!1369355 () Bool)

(assert (=> b!1483897 m!1369355))

(assert (=> b!1483897 m!1369355))

(declare-fun m!1369357 () Bool)

(assert (=> b!1483897 m!1369357))

(declare-fun m!1369359 () Bool)

(assert (=> b!1483897 m!1369359))

(declare-fun m!1369361 () Bool)

(assert (=> b!1483897 m!1369361))

(declare-fun m!1369363 () Bool)

(assert (=> b!1483912 m!1369363))

(assert (=> b!1483912 m!1369359))

(declare-fun m!1369365 () Bool)

(assert (=> b!1483912 m!1369365))

(declare-fun m!1369367 () Bool)

(assert (=> b!1483912 m!1369367))

(declare-fun m!1369369 () Bool)

(assert (=> b!1483912 m!1369369))

(assert (=> b!1483912 m!1369345))

(declare-fun m!1369371 () Bool)

(assert (=> b!1483913 m!1369371))

(assert (=> b!1483910 m!1369345))

(assert (=> b!1483910 m!1369345))

(declare-fun m!1369373 () Bool)

(assert (=> b!1483910 m!1369373))

(assert (=> b!1483914 m!1369351))

(assert (=> b!1483914 m!1369349))

(assert (=> b!1483895 m!1369345))

(assert (=> b!1483895 m!1369345))

(declare-fun m!1369375 () Bool)

(assert (=> b!1483895 m!1369375))

(assert (=> b!1483895 m!1369375))

(assert (=> b!1483895 m!1369345))

(declare-fun m!1369377 () Bool)

(assert (=> b!1483895 m!1369377))

(assert (=> b!1483904 m!1369367))

(assert (=> b!1483904 m!1369345))

(assert (=> b!1483904 m!1369359))

(assert (=> b!1483904 m!1369365))

(declare-fun m!1369379 () Bool)

(assert (=> b!1483901 m!1369379))

(assert (=> b!1483901 m!1369345))

(declare-fun m!1369381 () Bool)

(assert (=> start!126556 m!1369381))

(declare-fun m!1369383 () Bool)

(assert (=> start!126556 m!1369383))

(declare-fun m!1369385 () Bool)

(assert (=> b!1483911 m!1369385))

(declare-fun m!1369387 () Bool)

(assert (=> b!1483915 m!1369387))

(assert (=> b!1483915 m!1369387))

(declare-fun m!1369389 () Bool)

(assert (=> b!1483915 m!1369389))

(assert (=> b!1483899 m!1369359))

(declare-fun m!1369391 () Bool)

(assert (=> b!1483899 m!1369391))

(push 1)

