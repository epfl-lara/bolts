; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129266 () Bool)

(assert start!129266)

(declare-fun b!1517014 () Bool)

(declare-fun res!1036989 () Bool)

(declare-fun e!846446 () Bool)

(assert (=> b!1517014 (=> (not res!1036989) (not e!846446))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101035 0))(
  ( (array!101036 (arr!48750 (Array (_ BitVec 32) (_ BitVec 64))) (size!49301 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101035)

(declare-datatypes ((SeekEntryResult!12942 0))(
  ( (MissingZero!12942 (index!54162 (_ BitVec 32))) (Found!12942 (index!54163 (_ BitVec 32))) (Intermediate!12942 (undefined!13754 Bool) (index!54164 (_ BitVec 32)) (x!135857 (_ BitVec 32))) (Undefined!12942) (MissingVacant!12942 (index!54165 (_ BitVec 32))) )
))
(declare-fun lt!657600 () SeekEntryResult!12942)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101035 (_ BitVec 32)) SeekEntryResult!12942)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517014 (= res!1036989 (= lt!657600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48750 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48750 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101036 (store (arr!48750 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49301 a!2804)) mask!2512)))))

(declare-fun b!1517015 () Bool)

(declare-fun res!1036992 () Bool)

(declare-fun e!846445 () Bool)

(assert (=> b!1517015 (=> (not res!1036992) (not e!846445))))

(declare-datatypes ((List!35413 0))(
  ( (Nil!35410) (Cons!35409 (h!36822 (_ BitVec 64)) (t!50114 List!35413)) )
))
(declare-fun arrayNoDuplicates!0 (array!101035 (_ BitVec 32) List!35413) Bool)

(assert (=> b!1517015 (= res!1036992 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35410))))

(declare-fun res!1036991 () Bool)

(assert (=> start!129266 (=> (not res!1036991) (not e!846445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129266 (= res!1036991 (validMask!0 mask!2512))))

(assert (=> start!129266 e!846445))

(assert (=> start!129266 true))

(declare-fun array_inv!37695 (array!101035) Bool)

(assert (=> start!129266 (array_inv!37695 a!2804)))

(declare-fun b!1517016 () Bool)

(declare-fun res!1037000 () Bool)

(assert (=> b!1517016 (=> (not res!1037000) (not e!846445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517016 (= res!1037000 (validKeyInArray!0 (select (arr!48750 a!2804) j!70)))))

(declare-fun b!1517017 () Bool)

(declare-fun e!846447 () Bool)

(assert (=> b!1517017 (= e!846446 (not e!846447))))

(declare-fun res!1036997 () Bool)

(assert (=> b!1517017 (=> res!1036997 e!846447)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517017 (= res!1036997 (or (not (= (select (arr!48750 a!2804) j!70) (select (store (arr!48750 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846444 () Bool)

(assert (=> b!1517017 e!846444))

(declare-fun res!1036998 () Bool)

(assert (=> b!1517017 (=> (not res!1036998) (not e!846444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101035 (_ BitVec 32)) Bool)

(assert (=> b!1517017 (= res!1036998 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50708 0))(
  ( (Unit!50709) )
))
(declare-fun lt!657598 () Unit!50708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50708)

(assert (=> b!1517017 (= lt!657598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517018 () Bool)

(declare-fun e!846449 () Bool)

(assert (=> b!1517018 (= e!846449 true)))

(declare-fun lt!657597 () (_ BitVec 32))

(declare-fun lt!657599 () SeekEntryResult!12942)

(assert (=> b!1517018 (= lt!657599 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657597 (select (arr!48750 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517019 () Bool)

(declare-fun res!1036999 () Bool)

(assert (=> b!1517019 (=> (not res!1036999) (not e!846445))))

(assert (=> b!1517019 (= res!1036999 (and (= (size!49301 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49301 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49301 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517020 () Bool)

(declare-fun res!1037001 () Bool)

(assert (=> b!1517020 (=> (not res!1037001) (not e!846446))))

(declare-fun lt!657601 () SeekEntryResult!12942)

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1517020 (= res!1037001 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48750 a!2804) j!70) a!2804 mask!2512) lt!657601))))

(declare-fun b!1517021 () Bool)

(declare-fun res!1036993 () Bool)

(assert (=> b!1517021 (=> (not res!1036993) (not e!846445))))

(assert (=> b!1517021 (= res!1036993 (validKeyInArray!0 (select (arr!48750 a!2804) i!961)))))

(declare-fun b!1517022 () Bool)

(declare-fun res!1036995 () Bool)

(assert (=> b!1517022 (=> (not res!1036995) (not e!846445))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517022 (= res!1036995 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49301 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49301 a!2804))))))

(declare-fun b!1517023 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101035 (_ BitVec 32)) SeekEntryResult!12942)

(assert (=> b!1517023 (= e!846444 (= (seekEntry!0 (select (arr!48750 a!2804) j!70) a!2804 mask!2512) (Found!12942 j!70)))))

(declare-fun b!1517024 () Bool)

(assert (=> b!1517024 (= e!846447 e!846449)))

(declare-fun res!1036996 () Bool)

(assert (=> b!1517024 (=> res!1036996 e!846449)))

(assert (=> b!1517024 (= res!1036996 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657597 #b00000000000000000000000000000000) (bvsge lt!657597 (size!49301 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517024 (= lt!657597 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517025 () Bool)

(declare-fun res!1036994 () Bool)

(assert (=> b!1517025 (=> (not res!1036994) (not e!846445))))

(assert (=> b!1517025 (= res!1036994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517026 () Bool)

(assert (=> b!1517026 (= e!846445 e!846446)))

(declare-fun res!1036990 () Bool)

(assert (=> b!1517026 (=> (not res!1036990) (not e!846446))))

(assert (=> b!1517026 (= res!1036990 (= lt!657600 lt!657601))))

(assert (=> b!1517026 (= lt!657601 (Intermediate!12942 false resIndex!21 resX!21))))

(assert (=> b!1517026 (= lt!657600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48750 a!2804) j!70) mask!2512) (select (arr!48750 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129266 res!1036991) b!1517019))

(assert (= (and b!1517019 res!1036999) b!1517021))

(assert (= (and b!1517021 res!1036993) b!1517016))

(assert (= (and b!1517016 res!1037000) b!1517025))

(assert (= (and b!1517025 res!1036994) b!1517015))

(assert (= (and b!1517015 res!1036992) b!1517022))

(assert (= (and b!1517022 res!1036995) b!1517026))

(assert (= (and b!1517026 res!1036990) b!1517020))

(assert (= (and b!1517020 res!1037001) b!1517014))

(assert (= (and b!1517014 res!1036989) b!1517017))

(assert (= (and b!1517017 res!1036998) b!1517023))

(assert (= (and b!1517017 (not res!1036997)) b!1517024))

(assert (= (and b!1517024 (not res!1036996)) b!1517018))

(declare-fun m!1400351 () Bool)

(assert (=> b!1517018 m!1400351))

(assert (=> b!1517018 m!1400351))

(declare-fun m!1400353 () Bool)

(assert (=> b!1517018 m!1400353))

(declare-fun m!1400355 () Bool)

(assert (=> b!1517025 m!1400355))

(assert (=> b!1517016 m!1400351))

(assert (=> b!1517016 m!1400351))

(declare-fun m!1400357 () Bool)

(assert (=> b!1517016 m!1400357))

(declare-fun m!1400359 () Bool)

(assert (=> b!1517014 m!1400359))

(declare-fun m!1400361 () Bool)

(assert (=> b!1517014 m!1400361))

(assert (=> b!1517014 m!1400361))

(declare-fun m!1400363 () Bool)

(assert (=> b!1517014 m!1400363))

(assert (=> b!1517014 m!1400363))

(assert (=> b!1517014 m!1400361))

(declare-fun m!1400365 () Bool)

(assert (=> b!1517014 m!1400365))

(declare-fun m!1400367 () Bool)

(assert (=> b!1517015 m!1400367))

(assert (=> b!1517026 m!1400351))

(assert (=> b!1517026 m!1400351))

(declare-fun m!1400369 () Bool)

(assert (=> b!1517026 m!1400369))

(assert (=> b!1517026 m!1400369))

(assert (=> b!1517026 m!1400351))

(declare-fun m!1400371 () Bool)

(assert (=> b!1517026 m!1400371))

(declare-fun m!1400373 () Bool)

(assert (=> b!1517021 m!1400373))

(assert (=> b!1517021 m!1400373))

(declare-fun m!1400375 () Bool)

(assert (=> b!1517021 m!1400375))

(declare-fun m!1400377 () Bool)

(assert (=> start!129266 m!1400377))

(declare-fun m!1400379 () Bool)

(assert (=> start!129266 m!1400379))

(assert (=> b!1517023 m!1400351))

(assert (=> b!1517023 m!1400351))

(declare-fun m!1400381 () Bool)

(assert (=> b!1517023 m!1400381))

(assert (=> b!1517020 m!1400351))

(assert (=> b!1517020 m!1400351))

(declare-fun m!1400383 () Bool)

(assert (=> b!1517020 m!1400383))

(assert (=> b!1517017 m!1400351))

(declare-fun m!1400385 () Bool)

(assert (=> b!1517017 m!1400385))

(assert (=> b!1517017 m!1400359))

(assert (=> b!1517017 m!1400361))

(declare-fun m!1400387 () Bool)

(assert (=> b!1517017 m!1400387))

(declare-fun m!1400389 () Bool)

(assert (=> b!1517024 m!1400389))

(push 1)

