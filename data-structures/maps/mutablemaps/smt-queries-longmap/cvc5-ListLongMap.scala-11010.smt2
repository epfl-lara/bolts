; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128938 () Bool)

(assert start!128938)

(declare-fun b!1510677 () Bool)

(declare-fun res!1030653 () Bool)

(declare-fun e!843570 () Bool)

(assert (=> b!1510677 (=> (not res!1030653) (not e!843570))))

(declare-datatypes ((SeekEntryResult!12778 0))(
  ( (MissingZero!12778 (index!53506 (_ BitVec 32))) (Found!12778 (index!53507 (_ BitVec 32))) (Intermediate!12778 (undefined!13590 Bool) (index!53508 (_ BitVec 32)) (x!135261 (_ BitVec 32))) (Undefined!12778) (MissingVacant!12778 (index!53509 (_ BitVec 32))) )
))
(declare-fun lt!655206 () SeekEntryResult!12778)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100707 0))(
  ( (array!100708 (arr!48586 (Array (_ BitVec 32) (_ BitVec 64))) (size!49137 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100707)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100707 (_ BitVec 32)) SeekEntryResult!12778)

(assert (=> b!1510677 (= res!1030653 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48586 a!2804) j!70) a!2804 mask!2512) lt!655206))))

(declare-fun b!1510678 () Bool)

(declare-fun res!1030657 () Bool)

(declare-fun e!843571 () Bool)

(assert (=> b!1510678 (=> (not res!1030657) (not e!843571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510678 (= res!1030657 (validKeyInArray!0 (select (arr!48586 a!2804) j!70)))))

(declare-fun b!1510679 () Bool)

(declare-fun res!1030654 () Bool)

(assert (=> b!1510679 (=> (not res!1030654) (not e!843571))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510679 (= res!1030654 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49137 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49137 a!2804))))))

(declare-fun b!1510680 () Bool)

(declare-fun res!1030658 () Bool)

(assert (=> b!1510680 (=> (not res!1030658) (not e!843570))))

(declare-fun lt!655207 () SeekEntryResult!12778)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510680 (= res!1030658 (= lt!655207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48586 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48586 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100708 (store (arr!48586 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49137 a!2804)) mask!2512)))))

(declare-fun b!1510681 () Bool)

(assert (=> b!1510681 (= e!843570 (not true))))

(declare-fun e!843569 () Bool)

(assert (=> b!1510681 e!843569))

(declare-fun res!1030656 () Bool)

(assert (=> b!1510681 (=> (not res!1030656) (not e!843569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100707 (_ BitVec 32)) Bool)

(assert (=> b!1510681 (= res!1030656 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50380 0))(
  ( (Unit!50381) )
))
(declare-fun lt!655205 () Unit!50380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50380)

(assert (=> b!1510681 (= lt!655205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030655 () Bool)

(assert (=> start!128938 (=> (not res!1030655) (not e!843571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128938 (= res!1030655 (validMask!0 mask!2512))))

(assert (=> start!128938 e!843571))

(assert (=> start!128938 true))

(declare-fun array_inv!37531 (array!100707) Bool)

(assert (=> start!128938 (array_inv!37531 a!2804)))

(declare-fun b!1510682 () Bool)

(declare-fun res!1030660 () Bool)

(assert (=> b!1510682 (=> (not res!1030660) (not e!843571))))

(assert (=> b!1510682 (= res!1030660 (and (= (size!49137 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49137 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49137 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510683 () Bool)

(declare-fun res!1030659 () Bool)

(assert (=> b!1510683 (=> (not res!1030659) (not e!843571))))

(assert (=> b!1510683 (= res!1030659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510684 () Bool)

(declare-fun res!1030661 () Bool)

(assert (=> b!1510684 (=> (not res!1030661) (not e!843571))))

(assert (=> b!1510684 (= res!1030661 (validKeyInArray!0 (select (arr!48586 a!2804) i!961)))))

(declare-fun b!1510685 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100707 (_ BitVec 32)) SeekEntryResult!12778)

(assert (=> b!1510685 (= e!843569 (= (seekEntry!0 (select (arr!48586 a!2804) j!70) a!2804 mask!2512) (Found!12778 j!70)))))

(declare-fun b!1510686 () Bool)

(declare-fun res!1030652 () Bool)

(assert (=> b!1510686 (=> (not res!1030652) (not e!843571))))

(declare-datatypes ((List!35249 0))(
  ( (Nil!35246) (Cons!35245 (h!36658 (_ BitVec 64)) (t!49950 List!35249)) )
))
(declare-fun arrayNoDuplicates!0 (array!100707 (_ BitVec 32) List!35249) Bool)

(assert (=> b!1510686 (= res!1030652 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35246))))

(declare-fun b!1510687 () Bool)

(assert (=> b!1510687 (= e!843571 e!843570)))

(declare-fun res!1030662 () Bool)

(assert (=> b!1510687 (=> (not res!1030662) (not e!843570))))

(assert (=> b!1510687 (= res!1030662 (= lt!655207 lt!655206))))

(assert (=> b!1510687 (= lt!655206 (Intermediate!12778 false resIndex!21 resX!21))))

(assert (=> b!1510687 (= lt!655207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48586 a!2804) j!70) mask!2512) (select (arr!48586 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128938 res!1030655) b!1510682))

(assert (= (and b!1510682 res!1030660) b!1510684))

(assert (= (and b!1510684 res!1030661) b!1510678))

(assert (= (and b!1510678 res!1030657) b!1510683))

(assert (= (and b!1510683 res!1030659) b!1510686))

(assert (= (and b!1510686 res!1030652) b!1510679))

(assert (= (and b!1510679 res!1030654) b!1510687))

(assert (= (and b!1510687 res!1030662) b!1510677))

(assert (= (and b!1510677 res!1030653) b!1510680))

(assert (= (and b!1510680 res!1030658) b!1510681))

(assert (= (and b!1510681 res!1030656) b!1510685))

(declare-fun m!1393353 () Bool)

(assert (=> b!1510680 m!1393353))

(declare-fun m!1393355 () Bool)

(assert (=> b!1510680 m!1393355))

(assert (=> b!1510680 m!1393355))

(declare-fun m!1393357 () Bool)

(assert (=> b!1510680 m!1393357))

(assert (=> b!1510680 m!1393357))

(assert (=> b!1510680 m!1393355))

(declare-fun m!1393359 () Bool)

(assert (=> b!1510680 m!1393359))

(declare-fun m!1393361 () Bool)

(assert (=> b!1510683 m!1393361))

(declare-fun m!1393363 () Bool)

(assert (=> b!1510677 m!1393363))

(assert (=> b!1510677 m!1393363))

(declare-fun m!1393365 () Bool)

(assert (=> b!1510677 m!1393365))

(assert (=> b!1510687 m!1393363))

(assert (=> b!1510687 m!1393363))

(declare-fun m!1393367 () Bool)

(assert (=> b!1510687 m!1393367))

(assert (=> b!1510687 m!1393367))

(assert (=> b!1510687 m!1393363))

(declare-fun m!1393369 () Bool)

(assert (=> b!1510687 m!1393369))

(assert (=> b!1510685 m!1393363))

(assert (=> b!1510685 m!1393363))

(declare-fun m!1393371 () Bool)

(assert (=> b!1510685 m!1393371))

(declare-fun m!1393373 () Bool)

(assert (=> b!1510686 m!1393373))

(declare-fun m!1393375 () Bool)

(assert (=> start!128938 m!1393375))

(declare-fun m!1393377 () Bool)

(assert (=> start!128938 m!1393377))

(declare-fun m!1393379 () Bool)

(assert (=> b!1510681 m!1393379))

(declare-fun m!1393381 () Bool)

(assert (=> b!1510681 m!1393381))

(declare-fun m!1393383 () Bool)

(assert (=> b!1510684 m!1393383))

(assert (=> b!1510684 m!1393383))

(declare-fun m!1393385 () Bool)

(assert (=> b!1510684 m!1393385))

(assert (=> b!1510678 m!1393363))

(assert (=> b!1510678 m!1393363))

(declare-fun m!1393387 () Bool)

(assert (=> b!1510678 m!1393387))

(push 1)

