; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129372 () Bool)

(assert start!129372)

(declare-fun b!1519131 () Bool)

(declare-fun res!1039112 () Bool)

(declare-fun e!847452 () Bool)

(assert (=> b!1519131 (=> (not res!1039112) (not e!847452))))

(declare-datatypes ((array!101141 0))(
  ( (array!101142 (arr!48803 (Array (_ BitVec 32) (_ BitVec 64))) (size!49354 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101141)

(declare-datatypes ((List!35466 0))(
  ( (Nil!35463) (Cons!35462 (h!36875 (_ BitVec 64)) (t!50167 List!35466)) )
))
(declare-fun arrayNoDuplicates!0 (array!101141 (_ BitVec 32) List!35466) Bool)

(assert (=> b!1519131 (= res!1039112 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35463))))

(declare-fun b!1519132 () Bool)

(declare-fun res!1039109 () Bool)

(assert (=> b!1519132 (=> (not res!1039109) (not e!847452))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101141 (_ BitVec 32)) Bool)

(assert (=> b!1519132 (= res!1039109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519133 () Bool)

(declare-fun e!847448 () Bool)

(declare-fun e!847454 () Bool)

(assert (=> b!1519133 (= e!847448 e!847454)))

(declare-fun res!1039113 () Bool)

(assert (=> b!1519133 (=> res!1039113 e!847454)))

(declare-fun lt!658496 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519133 (= res!1039113 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658496 #b00000000000000000000000000000000) (bvsge lt!658496 (size!49354 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519133 (= lt!658496 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519134 () Bool)

(declare-fun res!1039118 () Bool)

(assert (=> b!1519134 (=> res!1039118 e!847454)))

(declare-datatypes ((SeekEntryResult!12995 0))(
  ( (MissingZero!12995 (index!54374 (_ BitVec 32))) (Found!12995 (index!54375 (_ BitVec 32))) (Intermediate!12995 (undefined!13807 Bool) (index!54376 (_ BitVec 32)) (x!136054 (_ BitVec 32))) (Undefined!12995) (MissingVacant!12995 (index!54377 (_ BitVec 32))) )
))
(declare-fun lt!658498 () SeekEntryResult!12995)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101141 (_ BitVec 32)) SeekEntryResult!12995)

(assert (=> b!1519134 (= res!1039118 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658496 (select (arr!48803 a!2804) j!70) a!2804 mask!2512) lt!658498)))))

(declare-fun b!1519136 () Bool)

(assert (=> b!1519136 (= e!847454 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!658494 () array!101141)

(declare-fun lt!658492 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101141 (_ BitVec 32)) SeekEntryResult!12995)

(assert (=> b!1519136 (= (seekEntryOrOpen!0 (select (arr!48803 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658492 lt!658494 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((Unit!50814 0))(
  ( (Unit!50815) )
))
(declare-fun lt!658497 () Unit!50814)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50814)

(assert (=> b!1519136 (= lt!658497 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658496 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519137 () Bool)

(declare-fun res!1039110 () Bool)

(assert (=> b!1519137 (=> (not res!1039110) (not e!847452))))

(assert (=> b!1519137 (= res!1039110 (and (= (size!49354 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49354 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49354 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519138 () Bool)

(declare-fun e!847449 () Bool)

(assert (=> b!1519138 (= e!847452 e!847449)))

(declare-fun res!1039115 () Bool)

(assert (=> b!1519138 (=> (not res!1039115) (not e!847449))))

(declare-fun lt!658495 () SeekEntryResult!12995)

(assert (=> b!1519138 (= res!1039115 (= lt!658495 lt!658498))))

(assert (=> b!1519138 (= lt!658498 (Intermediate!12995 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519138 (= lt!658495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48803 a!2804) j!70) mask!2512) (select (arr!48803 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519139 () Bool)

(declare-fun res!1039107 () Bool)

(assert (=> b!1519139 (=> (not res!1039107) (not e!847452))))

(assert (=> b!1519139 (= res!1039107 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49354 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49354 a!2804))))))

(declare-fun b!1519140 () Bool)

(declare-fun e!847451 () Bool)

(assert (=> b!1519140 (= e!847451 (not e!847448))))

(declare-fun res!1039108 () Bool)

(assert (=> b!1519140 (=> res!1039108 e!847448)))

(assert (=> b!1519140 (= res!1039108 (or (not (= (select (arr!48803 a!2804) j!70) lt!658492)) (= x!534 resX!21)))))

(declare-fun e!847453 () Bool)

(assert (=> b!1519140 e!847453))

(declare-fun res!1039114 () Bool)

(assert (=> b!1519140 (=> (not res!1039114) (not e!847453))))

(assert (=> b!1519140 (= res!1039114 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658493 () Unit!50814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50814)

(assert (=> b!1519140 (= lt!658493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519141 () Bool)

(assert (=> b!1519141 (= e!847449 e!847451)))

(declare-fun res!1039106 () Bool)

(assert (=> b!1519141 (=> (not res!1039106) (not e!847451))))

(assert (=> b!1519141 (= res!1039106 (= lt!658495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658492 mask!2512) lt!658492 lt!658494 mask!2512)))))

(assert (=> b!1519141 (= lt!658492 (select (store (arr!48803 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519141 (= lt!658494 (array!101142 (store (arr!48803 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49354 a!2804)))))

(declare-fun b!1519142 () Bool)

(declare-fun res!1039116 () Bool)

(assert (=> b!1519142 (=> (not res!1039116) (not e!847452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519142 (= res!1039116 (validKeyInArray!0 (select (arr!48803 a!2804) i!961)))))

(declare-fun res!1039117 () Bool)

(assert (=> start!129372 (=> (not res!1039117) (not e!847452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129372 (= res!1039117 (validMask!0 mask!2512))))

(assert (=> start!129372 e!847452))

(assert (=> start!129372 true))

(declare-fun array_inv!37748 (array!101141) Bool)

(assert (=> start!129372 (array_inv!37748 a!2804)))

(declare-fun b!1519135 () Bool)

(declare-fun res!1039119 () Bool)

(assert (=> b!1519135 (=> (not res!1039119) (not e!847449))))

(assert (=> b!1519135 (= res!1039119 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48803 a!2804) j!70) a!2804 mask!2512) lt!658498))))

(declare-fun b!1519143 () Bool)

(declare-fun res!1039111 () Bool)

(assert (=> b!1519143 (=> (not res!1039111) (not e!847452))))

(assert (=> b!1519143 (= res!1039111 (validKeyInArray!0 (select (arr!48803 a!2804) j!70)))))

(declare-fun b!1519144 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101141 (_ BitVec 32)) SeekEntryResult!12995)

(assert (=> b!1519144 (= e!847453 (= (seekEntry!0 (select (arr!48803 a!2804) j!70) a!2804 mask!2512) (Found!12995 j!70)))))

(assert (= (and start!129372 res!1039117) b!1519137))

(assert (= (and b!1519137 res!1039110) b!1519142))

(assert (= (and b!1519142 res!1039116) b!1519143))

(assert (= (and b!1519143 res!1039111) b!1519132))

(assert (= (and b!1519132 res!1039109) b!1519131))

(assert (= (and b!1519131 res!1039112) b!1519139))

(assert (= (and b!1519139 res!1039107) b!1519138))

(assert (= (and b!1519138 res!1039115) b!1519135))

(assert (= (and b!1519135 res!1039119) b!1519141))

(assert (= (and b!1519141 res!1039106) b!1519140))

(assert (= (and b!1519140 res!1039114) b!1519144))

(assert (= (and b!1519140 (not res!1039108)) b!1519133))

(assert (= (and b!1519133 (not res!1039113)) b!1519134))

(assert (= (and b!1519134 (not res!1039118)) b!1519136))

(declare-fun m!1402567 () Bool)

(assert (=> b!1519133 m!1402567))

(declare-fun m!1402569 () Bool)

(assert (=> b!1519142 m!1402569))

(assert (=> b!1519142 m!1402569))

(declare-fun m!1402571 () Bool)

(assert (=> b!1519142 m!1402571))

(declare-fun m!1402573 () Bool)

(assert (=> b!1519132 m!1402573))

(declare-fun m!1402575 () Bool)

(assert (=> b!1519143 m!1402575))

(assert (=> b!1519143 m!1402575))

(declare-fun m!1402577 () Bool)

(assert (=> b!1519143 m!1402577))

(assert (=> b!1519136 m!1402575))

(assert (=> b!1519136 m!1402575))

(declare-fun m!1402579 () Bool)

(assert (=> b!1519136 m!1402579))

(declare-fun m!1402581 () Bool)

(assert (=> b!1519136 m!1402581))

(declare-fun m!1402583 () Bool)

(assert (=> b!1519136 m!1402583))

(assert (=> b!1519140 m!1402575))

(declare-fun m!1402585 () Bool)

(assert (=> b!1519140 m!1402585))

(declare-fun m!1402587 () Bool)

(assert (=> b!1519140 m!1402587))

(assert (=> b!1519138 m!1402575))

(assert (=> b!1519138 m!1402575))

(declare-fun m!1402589 () Bool)

(assert (=> b!1519138 m!1402589))

(assert (=> b!1519138 m!1402589))

(assert (=> b!1519138 m!1402575))

(declare-fun m!1402591 () Bool)

(assert (=> b!1519138 m!1402591))

(assert (=> b!1519135 m!1402575))

(assert (=> b!1519135 m!1402575))

(declare-fun m!1402593 () Bool)

(assert (=> b!1519135 m!1402593))

(assert (=> b!1519144 m!1402575))

(assert (=> b!1519144 m!1402575))

(declare-fun m!1402595 () Bool)

(assert (=> b!1519144 m!1402595))

(assert (=> b!1519134 m!1402575))

(assert (=> b!1519134 m!1402575))

(declare-fun m!1402597 () Bool)

(assert (=> b!1519134 m!1402597))

(declare-fun m!1402599 () Bool)

(assert (=> start!129372 m!1402599))

(declare-fun m!1402601 () Bool)

(assert (=> start!129372 m!1402601))

(declare-fun m!1402603 () Bool)

(assert (=> b!1519131 m!1402603))

(declare-fun m!1402605 () Bool)

(assert (=> b!1519141 m!1402605))

(assert (=> b!1519141 m!1402605))

(declare-fun m!1402607 () Bool)

(assert (=> b!1519141 m!1402607))

(declare-fun m!1402609 () Bool)

(assert (=> b!1519141 m!1402609))

(declare-fun m!1402611 () Bool)

(assert (=> b!1519141 m!1402611))

(check-sat (not b!1519136) (not b!1519135) (not b!1519142) (not b!1519134) (not b!1519143) (not b!1519141) (not start!129372) (not b!1519140) (not b!1519133) (not b!1519131) (not b!1519138) (not b!1519144) (not b!1519132))
(check-sat)
