; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129252 () Bool)

(assert start!129252)

(declare-fun b!1516741 () Bool)

(declare-fun res!1036725 () Bool)

(declare-fun e!846322 () Bool)

(assert (=> b!1516741 (=> (not res!1036725) (not e!846322))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101021 0))(
  ( (array!101022 (arr!48743 (Array (_ BitVec 32) (_ BitVec 64))) (size!49294 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101021)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516741 (= res!1036725 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49294 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49294 a!2804))))))

(declare-fun b!1516742 () Bool)

(declare-fun res!1036721 () Bool)

(assert (=> b!1516742 (=> (not res!1036721) (not e!846322))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516742 (= res!1036721 (validKeyInArray!0 (select (arr!48743 a!2804) j!70)))))

(declare-fun b!1516743 () Bool)

(declare-fun e!846323 () Bool)

(assert (=> b!1516743 (= e!846323 true)))

(declare-datatypes ((SeekEntryResult!12935 0))(
  ( (MissingZero!12935 (index!54134 (_ BitVec 32))) (Found!12935 (index!54135 (_ BitVec 32))) (Intermediate!12935 (undefined!13747 Bool) (index!54136 (_ BitVec 32)) (x!135834 (_ BitVec 32))) (Undefined!12935) (MissingVacant!12935 (index!54137 (_ BitVec 32))) )
))
(declare-fun lt!657494 () SeekEntryResult!12935)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!657495 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101021 (_ BitVec 32)) SeekEntryResult!12935)

(assert (=> b!1516743 (= lt!657494 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657495 (select (arr!48743 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516744 () Bool)

(declare-fun res!1036724 () Bool)

(assert (=> b!1516744 (=> (not res!1036724) (not e!846322))))

(declare-datatypes ((List!35406 0))(
  ( (Nil!35403) (Cons!35402 (h!36815 (_ BitVec 64)) (t!50107 List!35406)) )
))
(declare-fun arrayNoDuplicates!0 (array!101021 (_ BitVec 32) List!35406) Bool)

(assert (=> b!1516744 (= res!1036724 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35403))))

(declare-fun res!1036723 () Bool)

(assert (=> start!129252 (=> (not res!1036723) (not e!846322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129252 (= res!1036723 (validMask!0 mask!2512))))

(assert (=> start!129252 e!846322))

(assert (=> start!129252 true))

(declare-fun array_inv!37688 (array!101021) Bool)

(assert (=> start!129252 (array_inv!37688 a!2804)))

(declare-fun b!1516745 () Bool)

(declare-fun res!1036726 () Bool)

(declare-fun e!846318 () Bool)

(assert (=> b!1516745 (=> (not res!1036726) (not e!846318))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!657496 () SeekEntryResult!12935)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516745 (= res!1036726 (= lt!657496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48743 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48743 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101022 (store (arr!48743 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49294 a!2804)) mask!2512)))))

(declare-fun b!1516746 () Bool)

(declare-fun res!1036718 () Bool)

(assert (=> b!1516746 (=> (not res!1036718) (not e!846318))))

(declare-fun lt!657493 () SeekEntryResult!12935)

(assert (=> b!1516746 (= res!1036718 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48743 a!2804) j!70) a!2804 mask!2512) lt!657493))))

(declare-fun b!1516747 () Bool)

(declare-fun res!1036717 () Bool)

(assert (=> b!1516747 (=> (not res!1036717) (not e!846322))))

(assert (=> b!1516747 (= res!1036717 (validKeyInArray!0 (select (arr!48743 a!2804) i!961)))))

(declare-fun b!1516748 () Bool)

(declare-fun e!846319 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101021 (_ BitVec 32)) SeekEntryResult!12935)

(assert (=> b!1516748 (= e!846319 (= (seekEntry!0 (select (arr!48743 a!2804) j!70) a!2804 mask!2512) (Found!12935 j!70)))))

(declare-fun b!1516749 () Bool)

(assert (=> b!1516749 (= e!846322 e!846318)))

(declare-fun res!1036727 () Bool)

(assert (=> b!1516749 (=> (not res!1036727) (not e!846318))))

(assert (=> b!1516749 (= res!1036727 (= lt!657496 lt!657493))))

(assert (=> b!1516749 (= lt!657493 (Intermediate!12935 false resIndex!21 resX!21))))

(assert (=> b!1516749 (= lt!657496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48743 a!2804) j!70) mask!2512) (select (arr!48743 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516750 () Bool)

(declare-fun res!1036720 () Bool)

(assert (=> b!1516750 (=> (not res!1036720) (not e!846322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101021 (_ BitVec 32)) Bool)

(assert (=> b!1516750 (= res!1036720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516751 () Bool)

(declare-fun res!1036722 () Bool)

(assert (=> b!1516751 (=> (not res!1036722) (not e!846322))))

(assert (=> b!1516751 (= res!1036722 (and (= (size!49294 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49294 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49294 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516752 () Bool)

(declare-fun e!846321 () Bool)

(assert (=> b!1516752 (= e!846318 (not e!846321))))

(declare-fun res!1036719 () Bool)

(assert (=> b!1516752 (=> res!1036719 e!846321)))

(assert (=> b!1516752 (= res!1036719 (or (not (= (select (arr!48743 a!2804) j!70) (select (store (arr!48743 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516752 e!846319))

(declare-fun res!1036728 () Bool)

(assert (=> b!1516752 (=> (not res!1036728) (not e!846319))))

(assert (=> b!1516752 (= res!1036728 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50694 0))(
  ( (Unit!50695) )
))
(declare-fun lt!657492 () Unit!50694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50694)

(assert (=> b!1516752 (= lt!657492 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516753 () Bool)

(assert (=> b!1516753 (= e!846321 e!846323)))

(declare-fun res!1036716 () Bool)

(assert (=> b!1516753 (=> res!1036716 e!846323)))

(assert (=> b!1516753 (= res!1036716 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657495 #b00000000000000000000000000000000) (bvsge lt!657495 (size!49294 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516753 (= lt!657495 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129252 res!1036723) b!1516751))

(assert (= (and b!1516751 res!1036722) b!1516747))

(assert (= (and b!1516747 res!1036717) b!1516742))

(assert (= (and b!1516742 res!1036721) b!1516750))

(assert (= (and b!1516750 res!1036720) b!1516744))

(assert (= (and b!1516744 res!1036724) b!1516741))

(assert (= (and b!1516741 res!1036725) b!1516749))

(assert (= (and b!1516749 res!1036727) b!1516746))

(assert (= (and b!1516746 res!1036718) b!1516745))

(assert (= (and b!1516745 res!1036726) b!1516752))

(assert (= (and b!1516752 res!1036728) b!1516748))

(assert (= (and b!1516752 (not res!1036719)) b!1516753))

(assert (= (and b!1516753 (not res!1036716)) b!1516743))

(declare-fun m!1400071 () Bool)

(assert (=> b!1516742 m!1400071))

(assert (=> b!1516742 m!1400071))

(declare-fun m!1400073 () Bool)

(assert (=> b!1516742 m!1400073))

(declare-fun m!1400075 () Bool)

(assert (=> start!129252 m!1400075))

(declare-fun m!1400077 () Bool)

(assert (=> start!129252 m!1400077))

(assert (=> b!1516746 m!1400071))

(assert (=> b!1516746 m!1400071))

(declare-fun m!1400079 () Bool)

(assert (=> b!1516746 m!1400079))

(declare-fun m!1400081 () Bool)

(assert (=> b!1516747 m!1400081))

(assert (=> b!1516747 m!1400081))

(declare-fun m!1400083 () Bool)

(assert (=> b!1516747 m!1400083))

(assert (=> b!1516752 m!1400071))

(declare-fun m!1400085 () Bool)

(assert (=> b!1516752 m!1400085))

(declare-fun m!1400087 () Bool)

(assert (=> b!1516752 m!1400087))

(declare-fun m!1400089 () Bool)

(assert (=> b!1516752 m!1400089))

(declare-fun m!1400091 () Bool)

(assert (=> b!1516752 m!1400091))

(declare-fun m!1400093 () Bool)

(assert (=> b!1516744 m!1400093))

(declare-fun m!1400095 () Bool)

(assert (=> b!1516750 m!1400095))

(assert (=> b!1516749 m!1400071))

(assert (=> b!1516749 m!1400071))

(declare-fun m!1400097 () Bool)

(assert (=> b!1516749 m!1400097))

(assert (=> b!1516749 m!1400097))

(assert (=> b!1516749 m!1400071))

(declare-fun m!1400099 () Bool)

(assert (=> b!1516749 m!1400099))

(assert (=> b!1516748 m!1400071))

(assert (=> b!1516748 m!1400071))

(declare-fun m!1400101 () Bool)

(assert (=> b!1516748 m!1400101))

(assert (=> b!1516743 m!1400071))

(assert (=> b!1516743 m!1400071))

(declare-fun m!1400103 () Bool)

(assert (=> b!1516743 m!1400103))

(declare-fun m!1400105 () Bool)

(assert (=> b!1516753 m!1400105))

(assert (=> b!1516745 m!1400087))

(assert (=> b!1516745 m!1400089))

(assert (=> b!1516745 m!1400089))

(declare-fun m!1400107 () Bool)

(assert (=> b!1516745 m!1400107))

(assert (=> b!1516745 m!1400107))

(assert (=> b!1516745 m!1400089))

(declare-fun m!1400109 () Bool)

(assert (=> b!1516745 m!1400109))

(check-sat (not b!1516748) (not b!1516752) (not b!1516750) (not b!1516744) (not b!1516747) (not b!1516753) (not b!1516743) (not b!1516746) (not b!1516749) (not b!1516745) (not start!129252) (not b!1516742))
(check-sat)
