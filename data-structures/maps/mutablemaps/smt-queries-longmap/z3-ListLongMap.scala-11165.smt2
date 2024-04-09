; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130566 () Bool)

(assert start!130566)

(declare-fun b!1531746 () Bool)

(declare-fun res!1049025 () Bool)

(declare-fun e!853504 () Bool)

(assert (=> b!1531746 (=> (not res!1049025) (not e!853504))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101672 0))(
  ( (array!101673 (arr!49052 (Array (_ BitVec 32) (_ BitVec 64))) (size!49603 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101672)

(assert (=> b!1531746 (= res!1049025 (and (= (size!49603 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49603 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49603 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531747 () Bool)

(declare-fun res!1049036 () Bool)

(assert (=> b!1531747 (=> (not res!1049036) (not e!853504))))

(declare-datatypes ((List!35715 0))(
  ( (Nil!35712) (Cons!35711 (h!37157 (_ BitVec 64)) (t!50416 List!35715)) )
))
(declare-fun arrayNoDuplicates!0 (array!101672 (_ BitVec 32) List!35715) Bool)

(assert (=> b!1531747 (= res!1049036 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35712))))

(declare-fun b!1531748 () Bool)

(declare-fun res!1049032 () Bool)

(declare-fun e!853500 () Bool)

(assert (=> b!1531748 (=> (not res!1049032) (not e!853500))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13238 0))(
  ( (MissingZero!13238 (index!55346 (_ BitVec 32))) (Found!13238 (index!55347 (_ BitVec 32))) (Intermediate!13238 (undefined!14050 Bool) (index!55348 (_ BitVec 32)) (x!137051 (_ BitVec 32))) (Undefined!13238) (MissingVacant!13238 (index!55349 (_ BitVec 32))) )
))
(declare-fun lt!663343 () SeekEntryResult!13238)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101672 (_ BitVec 32)) SeekEntryResult!13238)

(assert (=> b!1531748 (= res!1049032 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49052 a!2804) j!70) a!2804 mask!2512) lt!663343))))

(declare-fun b!1531749 () Bool)

(declare-fun res!1049037 () Bool)

(assert (=> b!1531749 (=> (not res!1049037) (not e!853504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101672 (_ BitVec 32)) Bool)

(assert (=> b!1531749 (= res!1049037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1049028 () Bool)

(assert (=> start!130566 (=> (not res!1049028) (not e!853504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130566 (= res!1049028 (validMask!0 mask!2512))))

(assert (=> start!130566 e!853504))

(assert (=> start!130566 true))

(declare-fun array_inv!37997 (array!101672) Bool)

(assert (=> start!130566 (array_inv!37997 a!2804)))

(declare-fun b!1531750 () Bool)

(declare-fun res!1049024 () Bool)

(assert (=> b!1531750 (=> (not res!1049024) (not e!853504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531750 (= res!1049024 (validKeyInArray!0 (select (arr!49052 a!2804) j!70)))))

(declare-fun b!1531751 () Bool)

(declare-fun res!1049027 () Bool)

(assert (=> b!1531751 (=> (not res!1049027) (not e!853504))))

(assert (=> b!1531751 (= res!1049027 (validKeyInArray!0 (select (arr!49052 a!2804) i!961)))))

(declare-fun b!1531752 () Bool)

(assert (=> b!1531752 (= e!853504 e!853500)))

(declare-fun res!1049026 () Bool)

(assert (=> b!1531752 (=> (not res!1049026) (not e!853500))))

(declare-fun lt!663348 () SeekEntryResult!13238)

(assert (=> b!1531752 (= res!1049026 (= lt!663348 lt!663343))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1531752 (= lt!663343 (Intermediate!13238 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531752 (= lt!663348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49052 a!2804) j!70) mask!2512) (select (arr!49052 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531753 () Bool)

(declare-fun e!853503 () Bool)

(declare-fun e!853505 () Bool)

(assert (=> b!1531753 (= e!853503 (not e!853505))))

(declare-fun res!1049035 () Bool)

(assert (=> b!1531753 (=> res!1049035 e!853505)))

(declare-fun lt!663344 () (_ BitVec 64))

(assert (=> b!1531753 (= res!1049035 (or (not (= (select (arr!49052 a!2804) j!70) lt!663344)) (= x!534 resX!21)))))

(declare-fun e!853502 () Bool)

(assert (=> b!1531753 e!853502))

(declare-fun res!1049030 () Bool)

(assert (=> b!1531753 (=> (not res!1049030) (not e!853502))))

(assert (=> b!1531753 (= res!1049030 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51216 0))(
  ( (Unit!51217) )
))
(declare-fun lt!663346 () Unit!51216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51216)

(assert (=> b!1531753 (= lt!663346 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531754 () Bool)

(declare-fun e!853501 () Bool)

(assert (=> b!1531754 (= e!853501 true)))

(declare-fun lt!663347 () array!101672)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101672 (_ BitVec 32)) SeekEntryResult!13238)

(assert (=> b!1531754 (= (seekEntryOrOpen!0 (select (arr!49052 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663344 lt!663347 mask!2512))))

(declare-fun lt!663349 () Unit!51216)

(declare-fun lt!663345 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51216)

(assert (=> b!1531754 (= lt!663349 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663345 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531755 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101672 (_ BitVec 32)) SeekEntryResult!13238)

(assert (=> b!1531755 (= e!853502 (= (seekEntry!0 (select (arr!49052 a!2804) j!70) a!2804 mask!2512) (Found!13238 j!70)))))

(declare-fun b!1531756 () Bool)

(assert (=> b!1531756 (= e!853500 e!853503)))

(declare-fun res!1049034 () Bool)

(assert (=> b!1531756 (=> (not res!1049034) (not e!853503))))

(assert (=> b!1531756 (= res!1049034 (= lt!663348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663344 mask!2512) lt!663344 lt!663347 mask!2512)))))

(assert (=> b!1531756 (= lt!663344 (select (store (arr!49052 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531756 (= lt!663347 (array!101673 (store (arr!49052 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49603 a!2804)))))

(declare-fun b!1531757 () Bool)

(declare-fun res!1049031 () Bool)

(assert (=> b!1531757 (=> res!1049031 e!853501)))

(assert (=> b!1531757 (= res!1049031 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663345 (select (arr!49052 a!2804) j!70) a!2804 mask!2512) lt!663343)))))

(declare-fun b!1531758 () Bool)

(assert (=> b!1531758 (= e!853505 e!853501)))

(declare-fun res!1049029 () Bool)

(assert (=> b!1531758 (=> res!1049029 e!853501)))

(assert (=> b!1531758 (= res!1049029 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663345 #b00000000000000000000000000000000) (bvsge lt!663345 (size!49603 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531758 (= lt!663345 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531759 () Bool)

(declare-fun res!1049033 () Bool)

(assert (=> b!1531759 (=> (not res!1049033) (not e!853504))))

(assert (=> b!1531759 (= res!1049033 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49603 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49603 a!2804))))))

(assert (= (and start!130566 res!1049028) b!1531746))

(assert (= (and b!1531746 res!1049025) b!1531751))

(assert (= (and b!1531751 res!1049027) b!1531750))

(assert (= (and b!1531750 res!1049024) b!1531749))

(assert (= (and b!1531749 res!1049037) b!1531747))

(assert (= (and b!1531747 res!1049036) b!1531759))

(assert (= (and b!1531759 res!1049033) b!1531752))

(assert (= (and b!1531752 res!1049026) b!1531748))

(assert (= (and b!1531748 res!1049032) b!1531756))

(assert (= (and b!1531756 res!1049034) b!1531753))

(assert (= (and b!1531753 res!1049030) b!1531755))

(assert (= (and b!1531753 (not res!1049035)) b!1531758))

(assert (= (and b!1531758 (not res!1049029)) b!1531757))

(assert (= (and b!1531757 (not res!1049031)) b!1531754))

(declare-fun m!1414465 () Bool)

(assert (=> b!1531751 m!1414465))

(assert (=> b!1531751 m!1414465))

(declare-fun m!1414467 () Bool)

(assert (=> b!1531751 m!1414467))

(declare-fun m!1414469 () Bool)

(assert (=> b!1531756 m!1414469))

(assert (=> b!1531756 m!1414469))

(declare-fun m!1414471 () Bool)

(assert (=> b!1531756 m!1414471))

(declare-fun m!1414473 () Bool)

(assert (=> b!1531756 m!1414473))

(declare-fun m!1414475 () Bool)

(assert (=> b!1531756 m!1414475))

(declare-fun m!1414477 () Bool)

(assert (=> b!1531753 m!1414477))

(declare-fun m!1414479 () Bool)

(assert (=> b!1531753 m!1414479))

(declare-fun m!1414481 () Bool)

(assert (=> b!1531753 m!1414481))

(assert (=> b!1531755 m!1414477))

(assert (=> b!1531755 m!1414477))

(declare-fun m!1414483 () Bool)

(assert (=> b!1531755 m!1414483))

(declare-fun m!1414485 () Bool)

(assert (=> b!1531749 m!1414485))

(assert (=> b!1531757 m!1414477))

(assert (=> b!1531757 m!1414477))

(declare-fun m!1414487 () Bool)

(assert (=> b!1531757 m!1414487))

(assert (=> b!1531750 m!1414477))

(assert (=> b!1531750 m!1414477))

(declare-fun m!1414489 () Bool)

(assert (=> b!1531750 m!1414489))

(declare-fun m!1414491 () Bool)

(assert (=> b!1531747 m!1414491))

(assert (=> b!1531754 m!1414477))

(assert (=> b!1531754 m!1414477))

(declare-fun m!1414493 () Bool)

(assert (=> b!1531754 m!1414493))

(declare-fun m!1414495 () Bool)

(assert (=> b!1531754 m!1414495))

(declare-fun m!1414497 () Bool)

(assert (=> b!1531754 m!1414497))

(assert (=> b!1531748 m!1414477))

(assert (=> b!1531748 m!1414477))

(declare-fun m!1414499 () Bool)

(assert (=> b!1531748 m!1414499))

(assert (=> b!1531752 m!1414477))

(assert (=> b!1531752 m!1414477))

(declare-fun m!1414501 () Bool)

(assert (=> b!1531752 m!1414501))

(assert (=> b!1531752 m!1414501))

(assert (=> b!1531752 m!1414477))

(declare-fun m!1414503 () Bool)

(assert (=> b!1531752 m!1414503))

(declare-fun m!1414505 () Bool)

(assert (=> start!130566 m!1414505))

(declare-fun m!1414507 () Bool)

(assert (=> start!130566 m!1414507))

(declare-fun m!1414509 () Bool)

(assert (=> b!1531758 m!1414509))

(check-sat (not b!1531748) (not b!1531754) (not b!1531755) (not b!1531749) (not b!1531756) (not b!1531750) (not b!1531753) (not b!1531757) (not b!1531758) (not b!1531752) (not start!130566) (not b!1531751) (not b!1531747))
(check-sat)
