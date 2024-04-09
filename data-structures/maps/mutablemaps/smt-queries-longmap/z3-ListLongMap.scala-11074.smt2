; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129324 () Bool)

(assert start!129324)

(declare-fun res!1038124 () Bool)

(declare-fun e!846968 () Bool)

(assert (=> start!129324 (=> (not res!1038124) (not e!846968))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129324 (= res!1038124 (validMask!0 mask!2512))))

(assert (=> start!129324 e!846968))

(assert (=> start!129324 true))

(declare-datatypes ((array!101093 0))(
  ( (array!101094 (arr!48779 (Array (_ BitVec 32) (_ BitVec 64))) (size!49330 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101093)

(declare-fun array_inv!37724 (array!101093) Bool)

(assert (=> start!129324 (array_inv!37724 a!2804)))

(declare-fun b!1518145 () Bool)

(declare-fun e!846971 () Bool)

(declare-fun e!846970 () Bool)

(assert (=> b!1518145 (= e!846971 (not e!846970))))

(declare-fun res!1038121 () Bool)

(assert (=> b!1518145 (=> res!1038121 e!846970)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518145 (= res!1038121 (or (not (= (select (arr!48779 a!2804) j!70) (select (store (arr!48779 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846967 () Bool)

(assert (=> b!1518145 e!846967))

(declare-fun res!1038123 () Bool)

(assert (=> b!1518145 (=> (not res!1038123) (not e!846967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101093 (_ BitVec 32)) Bool)

(assert (=> b!1518145 (= res!1038123 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50766 0))(
  ( (Unit!50767) )
))
(declare-fun lt!658034 () Unit!50766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50766)

(assert (=> b!1518145 (= lt!658034 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518146 () Bool)

(declare-fun res!1038130 () Bool)

(assert (=> b!1518146 (=> (not res!1038130) (not e!846971))))

(declare-datatypes ((SeekEntryResult!12971 0))(
  ( (MissingZero!12971 (index!54278 (_ BitVec 32))) (Found!12971 (index!54279 (_ BitVec 32))) (Intermediate!12971 (undefined!13783 Bool) (index!54280 (_ BitVec 32)) (x!135966 (_ BitVec 32))) (Undefined!12971) (MissingVacant!12971 (index!54281 (_ BitVec 32))) )
))
(declare-fun lt!658032 () SeekEntryResult!12971)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101093 (_ BitVec 32)) SeekEntryResult!12971)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518146 (= res!1038130 (= lt!658032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48779 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48779 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101094 (store (arr!48779 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49330 a!2804)) mask!2512)))))

(declare-fun b!1518147 () Bool)

(declare-fun res!1038128 () Bool)

(assert (=> b!1518147 (=> (not res!1038128) (not e!846968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518147 (= res!1038128 (validKeyInArray!0 (select (arr!48779 a!2804) j!70)))))

(declare-fun b!1518148 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101093 (_ BitVec 32)) SeekEntryResult!12971)

(assert (=> b!1518148 (= e!846967 (= (seekEntry!0 (select (arr!48779 a!2804) j!70) a!2804 mask!2512) (Found!12971 j!70)))))

(declare-fun b!1518149 () Bool)

(declare-fun res!1038132 () Bool)

(assert (=> b!1518149 (=> (not res!1038132) (not e!846971))))

(declare-fun lt!658033 () SeekEntryResult!12971)

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518149 (= res!1038132 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48779 a!2804) j!70) a!2804 mask!2512) lt!658033))))

(declare-fun b!1518150 () Bool)

(assert (=> b!1518150 (= e!846968 e!846971)))

(declare-fun res!1038126 () Bool)

(assert (=> b!1518150 (=> (not res!1038126) (not e!846971))))

(assert (=> b!1518150 (= res!1038126 (= lt!658032 lt!658033))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518150 (= lt!658033 (Intermediate!12971 false resIndex!21 resX!21))))

(assert (=> b!1518150 (= lt!658032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48779 a!2804) j!70) mask!2512) (select (arr!48779 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518151 () Bool)

(declare-fun res!1038131 () Bool)

(assert (=> b!1518151 (=> (not res!1038131) (not e!846968))))

(assert (=> b!1518151 (= res!1038131 (and (= (size!49330 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49330 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49330 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518152 () Bool)

(declare-fun res!1038125 () Bool)

(assert (=> b!1518152 (=> (not res!1038125) (not e!846968))))

(assert (=> b!1518152 (= res!1038125 (validKeyInArray!0 (select (arr!48779 a!2804) i!961)))))

(declare-fun b!1518153 () Bool)

(declare-fun res!1038129 () Bool)

(assert (=> b!1518153 (=> (not res!1038129) (not e!846968))))

(declare-datatypes ((List!35442 0))(
  ( (Nil!35439) (Cons!35438 (h!36851 (_ BitVec 64)) (t!50143 List!35442)) )
))
(declare-fun arrayNoDuplicates!0 (array!101093 (_ BitVec 32) List!35442) Bool)

(assert (=> b!1518153 (= res!1038129 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35439))))

(declare-fun b!1518154 () Bool)

(declare-fun e!846966 () Bool)

(assert (=> b!1518154 (= e!846970 e!846966)))

(declare-fun res!1038120 () Bool)

(assert (=> b!1518154 (=> res!1038120 e!846966)))

(declare-fun lt!658036 () (_ BitVec 32))

(assert (=> b!1518154 (= res!1038120 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658036 #b00000000000000000000000000000000) (bvsge lt!658036 (size!49330 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518154 (= lt!658036 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518155 () Bool)

(declare-fun res!1038122 () Bool)

(assert (=> b!1518155 (=> (not res!1038122) (not e!846968))))

(assert (=> b!1518155 (= res!1038122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518156 () Bool)

(declare-fun res!1038127 () Bool)

(assert (=> b!1518156 (=> (not res!1038127) (not e!846968))))

(assert (=> b!1518156 (= res!1038127 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49330 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49330 a!2804))))))

(declare-fun b!1518157 () Bool)

(assert (=> b!1518157 (= e!846966 true)))

(declare-fun lt!658035 () SeekEntryResult!12971)

(assert (=> b!1518157 (= lt!658035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658036 (select (arr!48779 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129324 res!1038124) b!1518151))

(assert (= (and b!1518151 res!1038131) b!1518152))

(assert (= (and b!1518152 res!1038125) b!1518147))

(assert (= (and b!1518147 res!1038128) b!1518155))

(assert (= (and b!1518155 res!1038122) b!1518153))

(assert (= (and b!1518153 res!1038129) b!1518156))

(assert (= (and b!1518156 res!1038127) b!1518150))

(assert (= (and b!1518150 res!1038126) b!1518149))

(assert (= (and b!1518149 res!1038132) b!1518146))

(assert (= (and b!1518146 res!1038130) b!1518145))

(assert (= (and b!1518145 res!1038123) b!1518148))

(assert (= (and b!1518145 (not res!1038121)) b!1518154))

(assert (= (and b!1518154 (not res!1038120)) b!1518157))

(declare-fun m!1401511 () Bool)

(assert (=> b!1518152 m!1401511))

(assert (=> b!1518152 m!1401511))

(declare-fun m!1401513 () Bool)

(assert (=> b!1518152 m!1401513))

(declare-fun m!1401515 () Bool)

(assert (=> b!1518150 m!1401515))

(assert (=> b!1518150 m!1401515))

(declare-fun m!1401517 () Bool)

(assert (=> b!1518150 m!1401517))

(assert (=> b!1518150 m!1401517))

(assert (=> b!1518150 m!1401515))

(declare-fun m!1401519 () Bool)

(assert (=> b!1518150 m!1401519))

(declare-fun m!1401521 () Bool)

(assert (=> b!1518146 m!1401521))

(declare-fun m!1401523 () Bool)

(assert (=> b!1518146 m!1401523))

(assert (=> b!1518146 m!1401523))

(declare-fun m!1401525 () Bool)

(assert (=> b!1518146 m!1401525))

(assert (=> b!1518146 m!1401525))

(assert (=> b!1518146 m!1401523))

(declare-fun m!1401527 () Bool)

(assert (=> b!1518146 m!1401527))

(declare-fun m!1401529 () Bool)

(assert (=> b!1518155 m!1401529))

(assert (=> b!1518145 m!1401515))

(declare-fun m!1401531 () Bool)

(assert (=> b!1518145 m!1401531))

(assert (=> b!1518145 m!1401521))

(assert (=> b!1518145 m!1401523))

(declare-fun m!1401533 () Bool)

(assert (=> b!1518145 m!1401533))

(assert (=> b!1518157 m!1401515))

(assert (=> b!1518157 m!1401515))

(declare-fun m!1401535 () Bool)

(assert (=> b!1518157 m!1401535))

(declare-fun m!1401537 () Bool)

(assert (=> b!1518153 m!1401537))

(declare-fun m!1401539 () Bool)

(assert (=> b!1518154 m!1401539))

(assert (=> b!1518149 m!1401515))

(assert (=> b!1518149 m!1401515))

(declare-fun m!1401541 () Bool)

(assert (=> b!1518149 m!1401541))

(assert (=> b!1518148 m!1401515))

(assert (=> b!1518148 m!1401515))

(declare-fun m!1401543 () Bool)

(assert (=> b!1518148 m!1401543))

(declare-fun m!1401545 () Bool)

(assert (=> start!129324 m!1401545))

(declare-fun m!1401547 () Bool)

(assert (=> start!129324 m!1401547))

(assert (=> b!1518147 m!1401515))

(assert (=> b!1518147 m!1401515))

(declare-fun m!1401549 () Bool)

(assert (=> b!1518147 m!1401549))

(check-sat (not b!1518154) (not start!129324) (not b!1518157) (not b!1518149) (not b!1518152) (not b!1518146) (not b!1518150) (not b!1518155) (not b!1518153) (not b!1518145) (not b!1518147) (not b!1518148))
(check-sat)
