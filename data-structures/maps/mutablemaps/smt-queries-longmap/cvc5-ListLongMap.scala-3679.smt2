; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50708 () Bool)

(assert start!50708)

(declare-fun b!554087 () Bool)

(declare-fun res!346649 () Bool)

(declare-fun e!319522 () Bool)

(assert (=> b!554087 (=> (not res!346649) (not e!319522))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34887 0))(
  ( (array!34888 (arr!16749 (Array (_ BitVec 32) (_ BitVec 64))) (size!17113 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34887)

(assert (=> b!554087 (= res!346649 (and (= (size!17113 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17113 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17113 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554088 () Bool)

(declare-fun e!319518 () Bool)

(declare-datatypes ((SeekEntryResult!5205 0))(
  ( (MissingZero!5205 (index!23047 (_ BitVec 32))) (Found!5205 (index!23048 (_ BitVec 32))) (Intermediate!5205 (undefined!6017 Bool) (index!23049 (_ BitVec 32)) (x!51994 (_ BitVec 32))) (Undefined!5205) (MissingVacant!5205 (index!23050 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34887 (_ BitVec 32)) SeekEntryResult!5205)

(assert (=> b!554088 (= e!319518 (= (seekEntryOrOpen!0 (select (arr!16749 a!3118) j!142) a!3118 mask!3119) (Found!5205 j!142)))))

(declare-fun b!554089 () Bool)

(declare-fun e!319519 () Bool)

(declare-fun e!319521 () Bool)

(assert (=> b!554089 (= e!319519 e!319521)))

(declare-fun res!346658 () Bool)

(assert (=> b!554089 (=> (not res!346658) (not e!319521))))

(declare-fun lt!251705 () (_ BitVec 32))

(declare-fun lt!251702 () SeekEntryResult!5205)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34887 (_ BitVec 32)) SeekEntryResult!5205)

(assert (=> b!554089 (= res!346658 (= lt!251702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251705 (select (store (arr!16749 a!3118) i!1132 k!1914) j!142) (array!34888 (store (arr!16749 a!3118) i!1132 k!1914) (size!17113 a!3118)) mask!3119)))))

(declare-fun lt!251701 () (_ BitVec 32))

(assert (=> b!554089 (= lt!251702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251701 (select (arr!16749 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554089 (= lt!251705 (toIndex!0 (select (store (arr!16749 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554089 (= lt!251701 (toIndex!0 (select (arr!16749 a!3118) j!142) mask!3119))))

(declare-fun b!554090 () Bool)

(declare-fun res!346653 () Bool)

(assert (=> b!554090 (=> (not res!346653) (not e!319519))))

(declare-datatypes ((List!10882 0))(
  ( (Nil!10879) (Cons!10878 (h!11863 (_ BitVec 64)) (t!17118 List!10882)) )
))
(declare-fun arrayNoDuplicates!0 (array!34887 (_ BitVec 32) List!10882) Bool)

(assert (=> b!554090 (= res!346653 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10879))))

(declare-fun b!554091 () Bool)

(declare-fun res!346655 () Bool)

(assert (=> b!554091 (=> (not res!346655) (not e!319522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554091 (= res!346655 (validKeyInArray!0 k!1914))))

(declare-fun b!554092 () Bool)

(assert (=> b!554092 (= e!319521 (not (or (not (is-Intermediate!5205 lt!251702)) (undefined!6017 lt!251702) (= (select (arr!16749 a!3118) (index!23049 lt!251702)) (select (arr!16749 a!3118) j!142)) (not (= (select (arr!16749 a!3118) (index!23049 lt!251702)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!554092 e!319518))

(declare-fun res!346654 () Bool)

(assert (=> b!554092 (=> (not res!346654) (not e!319518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34887 (_ BitVec 32)) Bool)

(assert (=> b!554092 (= res!346654 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17184 0))(
  ( (Unit!17185) )
))
(declare-fun lt!251704 () Unit!17184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17184)

(assert (=> b!554092 (= lt!251704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554093 () Bool)

(declare-fun res!346657 () Bool)

(assert (=> b!554093 (=> (not res!346657) (not e!319522))))

(declare-fun arrayContainsKey!0 (array!34887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554093 (= res!346657 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554094 () Bool)

(assert (=> b!554094 (= e!319522 e!319519)))

(declare-fun res!346650 () Bool)

(assert (=> b!554094 (=> (not res!346650) (not e!319519))))

(declare-fun lt!251703 () SeekEntryResult!5205)

(assert (=> b!554094 (= res!346650 (or (= lt!251703 (MissingZero!5205 i!1132)) (= lt!251703 (MissingVacant!5205 i!1132))))))

(assert (=> b!554094 (= lt!251703 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!346656 () Bool)

(assert (=> start!50708 (=> (not res!346656) (not e!319522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50708 (= res!346656 (validMask!0 mask!3119))))

(assert (=> start!50708 e!319522))

(assert (=> start!50708 true))

(declare-fun array_inv!12523 (array!34887) Bool)

(assert (=> start!50708 (array_inv!12523 a!3118)))

(declare-fun b!554095 () Bool)

(declare-fun res!346651 () Bool)

(assert (=> b!554095 (=> (not res!346651) (not e!319519))))

(assert (=> b!554095 (= res!346651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554096 () Bool)

(declare-fun res!346652 () Bool)

(assert (=> b!554096 (=> (not res!346652) (not e!319522))))

(assert (=> b!554096 (= res!346652 (validKeyInArray!0 (select (arr!16749 a!3118) j!142)))))

(assert (= (and start!50708 res!346656) b!554087))

(assert (= (and b!554087 res!346649) b!554096))

(assert (= (and b!554096 res!346652) b!554091))

(assert (= (and b!554091 res!346655) b!554093))

(assert (= (and b!554093 res!346657) b!554094))

(assert (= (and b!554094 res!346650) b!554095))

(assert (= (and b!554095 res!346651) b!554090))

(assert (= (and b!554090 res!346653) b!554089))

(assert (= (and b!554089 res!346658) b!554092))

(assert (= (and b!554092 res!346654) b!554088))

(declare-fun m!531385 () Bool)

(assert (=> b!554091 m!531385))

(declare-fun m!531387 () Bool)

(assert (=> b!554095 m!531387))

(declare-fun m!531389 () Bool)

(assert (=> b!554088 m!531389))

(assert (=> b!554088 m!531389))

(declare-fun m!531391 () Bool)

(assert (=> b!554088 m!531391))

(declare-fun m!531393 () Bool)

(assert (=> b!554093 m!531393))

(declare-fun m!531395 () Bool)

(assert (=> b!554090 m!531395))

(declare-fun m!531397 () Bool)

(assert (=> b!554092 m!531397))

(assert (=> b!554092 m!531389))

(declare-fun m!531399 () Bool)

(assert (=> b!554092 m!531399))

(declare-fun m!531401 () Bool)

(assert (=> b!554092 m!531401))

(assert (=> b!554096 m!531389))

(assert (=> b!554096 m!531389))

(declare-fun m!531403 () Bool)

(assert (=> b!554096 m!531403))

(declare-fun m!531405 () Bool)

(assert (=> start!50708 m!531405))

(declare-fun m!531407 () Bool)

(assert (=> start!50708 m!531407))

(declare-fun m!531409 () Bool)

(assert (=> b!554094 m!531409))

(declare-fun m!531411 () Bool)

(assert (=> b!554089 m!531411))

(declare-fun m!531413 () Bool)

(assert (=> b!554089 m!531413))

(assert (=> b!554089 m!531389))

(declare-fun m!531415 () Bool)

(assert (=> b!554089 m!531415))

(assert (=> b!554089 m!531389))

(assert (=> b!554089 m!531411))

(declare-fun m!531417 () Bool)

(assert (=> b!554089 m!531417))

(assert (=> b!554089 m!531389))

(declare-fun m!531419 () Bool)

(assert (=> b!554089 m!531419))

(assert (=> b!554089 m!531411))

(declare-fun m!531421 () Bool)

(assert (=> b!554089 m!531421))

(push 1)

