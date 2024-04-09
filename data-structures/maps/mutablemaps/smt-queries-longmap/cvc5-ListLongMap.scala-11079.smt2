; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129352 () Bool)

(assert start!129352)

(declare-fun b!1518711 () Bool)

(declare-fun e!847242 () Bool)

(assert (=> b!1518711 (= e!847242 true)))

(declare-fun lt!658283 () (_ BitVec 64))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101121 0))(
  ( (array!101122 (arr!48793 (Array (_ BitVec 32) (_ BitVec 64))) (size!49344 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101121)

(declare-fun lt!658285 () array!101121)

(declare-datatypes ((SeekEntryResult!12985 0))(
  ( (MissingZero!12985 (index!54334 (_ BitVec 32))) (Found!12985 (index!54335 (_ BitVec 32))) (Intermediate!12985 (undefined!13797 Bool) (index!54336 (_ BitVec 32)) (x!136020 (_ BitVec 32))) (Undefined!12985) (MissingVacant!12985 (index!54337 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101121 (_ BitVec 32)) SeekEntryResult!12985)

(assert (=> b!1518711 (= (seekEntryOrOpen!0 (select (arr!48793 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658283 lt!658285 mask!2512))))

(declare-datatypes ((Unit!50794 0))(
  ( (Unit!50795) )
))
(declare-fun lt!658288 () Unit!50794)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!658284 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50794)

(assert (=> b!1518711 (= lt!658288 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658284 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518712 () Bool)

(declare-fun res!1038693 () Bool)

(declare-fun e!847243 () Bool)

(assert (=> b!1518712 (=> (not res!1038693) (not e!847243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518712 (= res!1038693 (validKeyInArray!0 (select (arr!48793 a!2804) j!70)))))

(declare-fun b!1518713 () Bool)

(declare-fun res!1038694 () Bool)

(assert (=> b!1518713 (=> (not res!1038694) (not e!847243))))

(assert (=> b!1518713 (= res!1038694 (validKeyInArray!0 (select (arr!48793 a!2804) i!961)))))

(declare-fun res!1038699 () Bool)

(assert (=> start!129352 (=> (not res!1038699) (not e!847243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129352 (= res!1038699 (validMask!0 mask!2512))))

(assert (=> start!129352 e!847243))

(assert (=> start!129352 true))

(declare-fun array_inv!37738 (array!101121) Bool)

(assert (=> start!129352 (array_inv!37738 a!2804)))

(declare-fun b!1518714 () Bool)

(declare-fun res!1038696 () Bool)

(assert (=> b!1518714 (=> (not res!1038696) (not e!847243))))

(assert (=> b!1518714 (= res!1038696 (and (= (size!49344 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49344 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49344 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!847241 () Bool)

(declare-fun b!1518715 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101121 (_ BitVec 32)) SeekEntryResult!12985)

(assert (=> b!1518715 (= e!847241 (= (seekEntry!0 (select (arr!48793 a!2804) j!70) a!2804 mask!2512) (Found!12985 j!70)))))

(declare-fun b!1518716 () Bool)

(declare-fun e!847240 () Bool)

(declare-fun e!847239 () Bool)

(assert (=> b!1518716 (= e!847240 e!847239)))

(declare-fun res!1038691 () Bool)

(assert (=> b!1518716 (=> (not res!1038691) (not e!847239))))

(declare-fun lt!658287 () SeekEntryResult!12985)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101121 (_ BitVec 32)) SeekEntryResult!12985)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518716 (= res!1038691 (= lt!658287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658283 mask!2512) lt!658283 lt!658285 mask!2512)))))

(assert (=> b!1518716 (= lt!658283 (select (store (arr!48793 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518716 (= lt!658285 (array!101122 (store (arr!48793 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49344 a!2804)))))

(declare-fun b!1518717 () Bool)

(declare-fun res!1038688 () Bool)

(assert (=> b!1518717 (=> (not res!1038688) (not e!847243))))

(declare-datatypes ((List!35456 0))(
  ( (Nil!35453) (Cons!35452 (h!36865 (_ BitVec 64)) (t!50157 List!35456)) )
))
(declare-fun arrayNoDuplicates!0 (array!101121 (_ BitVec 32) List!35456) Bool)

(assert (=> b!1518717 (= res!1038688 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35453))))

(declare-fun b!1518718 () Bool)

(declare-fun e!847244 () Bool)

(assert (=> b!1518718 (= e!847244 e!847242)))

(declare-fun res!1038692 () Bool)

(assert (=> b!1518718 (=> res!1038692 e!847242)))

(assert (=> b!1518718 (= res!1038692 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658284 #b00000000000000000000000000000000) (bvsge lt!658284 (size!49344 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518718 (= lt!658284 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518719 () Bool)

(declare-fun res!1038689 () Bool)

(assert (=> b!1518719 (=> res!1038689 e!847242)))

(declare-fun lt!658282 () SeekEntryResult!12985)

(assert (=> b!1518719 (= res!1038689 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658284 (select (arr!48793 a!2804) j!70) a!2804 mask!2512) lt!658282)))))

(declare-fun b!1518720 () Bool)

(declare-fun res!1038687 () Bool)

(assert (=> b!1518720 (=> (not res!1038687) (not e!847243))))

(assert (=> b!1518720 (= res!1038687 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49344 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49344 a!2804))))))

(declare-fun b!1518721 () Bool)

(assert (=> b!1518721 (= e!847243 e!847240)))

(declare-fun res!1038697 () Bool)

(assert (=> b!1518721 (=> (not res!1038697) (not e!847240))))

(assert (=> b!1518721 (= res!1038697 (= lt!658287 lt!658282))))

(assert (=> b!1518721 (= lt!658282 (Intermediate!12985 false resIndex!21 resX!21))))

(assert (=> b!1518721 (= lt!658287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48793 a!2804) j!70) mask!2512) (select (arr!48793 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518722 () Bool)

(declare-fun res!1038695 () Bool)

(assert (=> b!1518722 (=> (not res!1038695) (not e!847240))))

(assert (=> b!1518722 (= res!1038695 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48793 a!2804) j!70) a!2804 mask!2512) lt!658282))))

(declare-fun b!1518723 () Bool)

(assert (=> b!1518723 (= e!847239 (not e!847244))))

(declare-fun res!1038698 () Bool)

(assert (=> b!1518723 (=> res!1038698 e!847244)))

(assert (=> b!1518723 (= res!1038698 (or (not (= (select (arr!48793 a!2804) j!70) lt!658283)) (= x!534 resX!21)))))

(assert (=> b!1518723 e!847241))

(declare-fun res!1038690 () Bool)

(assert (=> b!1518723 (=> (not res!1038690) (not e!847241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101121 (_ BitVec 32)) Bool)

(assert (=> b!1518723 (= res!1038690 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658286 () Unit!50794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50794)

(assert (=> b!1518723 (= lt!658286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518724 () Bool)

(declare-fun res!1038686 () Bool)

(assert (=> b!1518724 (=> (not res!1038686) (not e!847243))))

(assert (=> b!1518724 (= res!1038686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129352 res!1038699) b!1518714))

(assert (= (and b!1518714 res!1038696) b!1518713))

(assert (= (and b!1518713 res!1038694) b!1518712))

(assert (= (and b!1518712 res!1038693) b!1518724))

(assert (= (and b!1518724 res!1038686) b!1518717))

(assert (= (and b!1518717 res!1038688) b!1518720))

(assert (= (and b!1518720 res!1038687) b!1518721))

(assert (= (and b!1518721 res!1038697) b!1518722))

(assert (= (and b!1518722 res!1038695) b!1518716))

(assert (= (and b!1518716 res!1038691) b!1518723))

(assert (= (and b!1518723 res!1038690) b!1518715))

(assert (= (and b!1518723 (not res!1038698)) b!1518718))

(assert (= (and b!1518718 (not res!1038692)) b!1518719))

(assert (= (and b!1518719 (not res!1038689)) b!1518711))

(declare-fun m!1402107 () Bool)

(assert (=> start!129352 m!1402107))

(declare-fun m!1402109 () Bool)

(assert (=> start!129352 m!1402109))

(declare-fun m!1402111 () Bool)

(assert (=> b!1518715 m!1402111))

(assert (=> b!1518715 m!1402111))

(declare-fun m!1402113 () Bool)

(assert (=> b!1518715 m!1402113))

(assert (=> b!1518721 m!1402111))

(assert (=> b!1518721 m!1402111))

(declare-fun m!1402115 () Bool)

(assert (=> b!1518721 m!1402115))

(assert (=> b!1518721 m!1402115))

(assert (=> b!1518721 m!1402111))

(declare-fun m!1402117 () Bool)

(assert (=> b!1518721 m!1402117))

(declare-fun m!1402119 () Bool)

(assert (=> b!1518713 m!1402119))

(assert (=> b!1518713 m!1402119))

(declare-fun m!1402121 () Bool)

(assert (=> b!1518713 m!1402121))

(declare-fun m!1402123 () Bool)

(assert (=> b!1518718 m!1402123))

(declare-fun m!1402125 () Bool)

(assert (=> b!1518717 m!1402125))

(declare-fun m!1402127 () Bool)

(assert (=> b!1518724 m!1402127))

(assert (=> b!1518712 m!1402111))

(assert (=> b!1518712 m!1402111))

(declare-fun m!1402129 () Bool)

(assert (=> b!1518712 m!1402129))

(assert (=> b!1518711 m!1402111))

(assert (=> b!1518711 m!1402111))

(declare-fun m!1402131 () Bool)

(assert (=> b!1518711 m!1402131))

(declare-fun m!1402133 () Bool)

(assert (=> b!1518711 m!1402133))

(declare-fun m!1402135 () Bool)

(assert (=> b!1518711 m!1402135))

(assert (=> b!1518722 m!1402111))

(assert (=> b!1518722 m!1402111))

(declare-fun m!1402137 () Bool)

(assert (=> b!1518722 m!1402137))

(assert (=> b!1518723 m!1402111))

(declare-fun m!1402139 () Bool)

(assert (=> b!1518723 m!1402139))

(declare-fun m!1402141 () Bool)

(assert (=> b!1518723 m!1402141))

(declare-fun m!1402143 () Bool)

(assert (=> b!1518716 m!1402143))

(assert (=> b!1518716 m!1402143))

(declare-fun m!1402145 () Bool)

(assert (=> b!1518716 m!1402145))

(declare-fun m!1402147 () Bool)

(assert (=> b!1518716 m!1402147))

(declare-fun m!1402149 () Bool)

(assert (=> b!1518716 m!1402149))

(assert (=> b!1518719 m!1402111))

(assert (=> b!1518719 m!1402111))

(declare-fun m!1402151 () Bool)

(assert (=> b!1518719 m!1402151))

(push 1)

