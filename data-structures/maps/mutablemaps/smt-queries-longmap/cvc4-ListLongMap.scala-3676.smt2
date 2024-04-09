; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50694 () Bool)

(assert start!50694)

(declare-fun b!553868 () Bool)

(declare-fun res!346432 () Bool)

(declare-fun e!319417 () Bool)

(assert (=> b!553868 (=> (not res!346432) (not e!319417))))

(declare-datatypes ((array!34873 0))(
  ( (array!34874 (arr!16742 (Array (_ BitVec 32) (_ BitVec 64))) (size!17106 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34873)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553868 (= res!346432 (validKeyInArray!0 (select (arr!16742 a!3118) j!142)))))

(declare-fun b!553869 () Bool)

(declare-fun res!346439 () Bool)

(assert (=> b!553869 (=> (not res!346439) (not e!319417))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!553869 (= res!346439 (validKeyInArray!0 k!1914))))

(declare-fun b!553870 () Bool)

(declare-fun res!346438 () Bool)

(declare-fun e!319415 () Bool)

(assert (=> b!553870 (=> (not res!346438) (not e!319415))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5198 0))(
  ( (MissingZero!5198 (index!23019 (_ BitVec 32))) (Found!5198 (index!23020 (_ BitVec 32))) (Intermediate!5198 (undefined!6010 Bool) (index!23021 (_ BitVec 32)) (x!51963 (_ BitVec 32))) (Undefined!5198) (MissingVacant!5198 (index!23022 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34873 (_ BitVec 32)) SeekEntryResult!5198)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553870 (= res!346438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16742 a!3118) j!142) mask!3119) (select (arr!16742 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16742 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16742 a!3118) i!1132 k!1914) j!142) (array!34874 (store (arr!16742 a!3118) i!1132 k!1914) (size!17106 a!3118)) mask!3119)))))

(declare-fun b!553871 () Bool)

(assert (=> b!553871 (= e!319415 (not true))))

(declare-fun e!319416 () Bool)

(assert (=> b!553871 e!319416))

(declare-fun res!346434 () Bool)

(assert (=> b!553871 (=> (not res!346434) (not e!319416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34873 (_ BitVec 32)) Bool)

(assert (=> b!553871 (= res!346434 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17170 0))(
  ( (Unit!17171) )
))
(declare-fun lt!251626 () Unit!17170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17170)

(assert (=> b!553871 (= lt!251626 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553872 () Bool)

(assert (=> b!553872 (= e!319417 e!319415)))

(declare-fun res!346431 () Bool)

(assert (=> b!553872 (=> (not res!346431) (not e!319415))))

(declare-fun lt!251627 () SeekEntryResult!5198)

(assert (=> b!553872 (= res!346431 (or (= lt!251627 (MissingZero!5198 i!1132)) (= lt!251627 (MissingVacant!5198 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34873 (_ BitVec 32)) SeekEntryResult!5198)

(assert (=> b!553872 (= lt!251627 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553873 () Bool)

(declare-fun res!346437 () Bool)

(assert (=> b!553873 (=> (not res!346437) (not e!319417))))

(declare-fun arrayContainsKey!0 (array!34873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553873 (= res!346437 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553874 () Bool)

(declare-fun res!346430 () Bool)

(assert (=> b!553874 (=> (not res!346430) (not e!319417))))

(assert (=> b!553874 (= res!346430 (and (= (size!17106 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17106 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17106 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553875 () Bool)

(declare-fun res!346435 () Bool)

(assert (=> b!553875 (=> (not res!346435) (not e!319415))))

(assert (=> b!553875 (= res!346435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!346433 () Bool)

(assert (=> start!50694 (=> (not res!346433) (not e!319417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50694 (= res!346433 (validMask!0 mask!3119))))

(assert (=> start!50694 e!319417))

(assert (=> start!50694 true))

(declare-fun array_inv!12516 (array!34873) Bool)

(assert (=> start!50694 (array_inv!12516 a!3118)))

(declare-fun b!553876 () Bool)

(declare-fun res!346436 () Bool)

(assert (=> b!553876 (=> (not res!346436) (not e!319415))))

(declare-datatypes ((List!10875 0))(
  ( (Nil!10872) (Cons!10871 (h!11856 (_ BitVec 64)) (t!17111 List!10875)) )
))
(declare-fun arrayNoDuplicates!0 (array!34873 (_ BitVec 32) List!10875) Bool)

(assert (=> b!553876 (= res!346436 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10872))))

(declare-fun b!553877 () Bool)

(assert (=> b!553877 (= e!319416 (= (seekEntryOrOpen!0 (select (arr!16742 a!3118) j!142) a!3118 mask!3119) (Found!5198 j!142)))))

(assert (= (and start!50694 res!346433) b!553874))

(assert (= (and b!553874 res!346430) b!553868))

(assert (= (and b!553868 res!346432) b!553869))

(assert (= (and b!553869 res!346439) b!553873))

(assert (= (and b!553873 res!346437) b!553872))

(assert (= (and b!553872 res!346431) b!553875))

(assert (= (and b!553875 res!346435) b!553876))

(assert (= (and b!553876 res!346436) b!553870))

(assert (= (and b!553870 res!346438) b!553871))

(assert (= (and b!553871 res!346434) b!553877))

(declare-fun m!531121 () Bool)

(assert (=> b!553876 m!531121))

(declare-fun m!531123 () Bool)

(assert (=> start!50694 m!531123))

(declare-fun m!531125 () Bool)

(assert (=> start!50694 m!531125))

(declare-fun m!531127 () Bool)

(assert (=> b!553877 m!531127))

(assert (=> b!553877 m!531127))

(declare-fun m!531129 () Bool)

(assert (=> b!553877 m!531129))

(declare-fun m!531131 () Bool)

(assert (=> b!553873 m!531131))

(declare-fun m!531133 () Bool)

(assert (=> b!553875 m!531133))

(assert (=> b!553870 m!531127))

(declare-fun m!531135 () Bool)

(assert (=> b!553870 m!531135))

(assert (=> b!553870 m!531127))

(declare-fun m!531137 () Bool)

(assert (=> b!553870 m!531137))

(declare-fun m!531139 () Bool)

(assert (=> b!553870 m!531139))

(assert (=> b!553870 m!531137))

(declare-fun m!531141 () Bool)

(assert (=> b!553870 m!531141))

(assert (=> b!553870 m!531135))

(assert (=> b!553870 m!531127))

(declare-fun m!531143 () Bool)

(assert (=> b!553870 m!531143))

(declare-fun m!531145 () Bool)

(assert (=> b!553870 m!531145))

(assert (=> b!553870 m!531137))

(assert (=> b!553870 m!531139))

(declare-fun m!531147 () Bool)

(assert (=> b!553871 m!531147))

(declare-fun m!531149 () Bool)

(assert (=> b!553871 m!531149))

(declare-fun m!531151 () Bool)

(assert (=> b!553869 m!531151))

(assert (=> b!553868 m!531127))

(assert (=> b!553868 m!531127))

(declare-fun m!531153 () Bool)

(assert (=> b!553868 m!531153))

(declare-fun m!531155 () Bool)

(assert (=> b!553872 m!531155))

(push 1)

