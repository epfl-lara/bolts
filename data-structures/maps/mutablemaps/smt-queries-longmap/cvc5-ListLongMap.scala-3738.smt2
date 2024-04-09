; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51440 () Bool)

(assert start!51440)

(declare-fun b!561725 () Bool)

(declare-fun res!353037 () Bool)

(declare-fun e!323711 () Bool)

(assert (=> b!561725 (=> (not res!353037) (not e!323711))))

(declare-datatypes ((array!35259 0))(
  ( (array!35260 (arr!16926 (Array (_ BitVec 32) (_ BitVec 64))) (size!17290 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35259)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561725 (= res!353037 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561726 () Bool)

(declare-fun res!353034 () Bool)

(assert (=> b!561726 (=> (not res!353034) (not e!323711))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561726 (= res!353034 (validKeyInArray!0 (select (arr!16926 a!3118) j!142)))))

(declare-fun b!561727 () Bool)

(declare-fun e!323714 () Bool)

(assert (=> b!561727 (= e!323711 e!323714)))

(declare-fun res!353036 () Bool)

(assert (=> b!561727 (=> (not res!353036) (not e!323714))))

(declare-datatypes ((SeekEntryResult!5382 0))(
  ( (MissingZero!5382 (index!23755 (_ BitVec 32))) (Found!5382 (index!23756 (_ BitVec 32))) (Intermediate!5382 (undefined!6194 Bool) (index!23757 (_ BitVec 32)) (x!52688 (_ BitVec 32))) (Undefined!5382) (MissingVacant!5382 (index!23758 (_ BitVec 32))) )
))
(declare-fun lt!255808 () SeekEntryResult!5382)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561727 (= res!353036 (or (= lt!255808 (MissingZero!5382 i!1132)) (= lt!255808 (MissingVacant!5382 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35259 (_ BitVec 32)) SeekEntryResult!5382)

(assert (=> b!561727 (= lt!255808 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561728 () Bool)

(declare-fun e!323716 () Bool)

(assert (=> b!561728 (= e!323716 (not true))))

(declare-fun e!323710 () Bool)

(assert (=> b!561728 e!323710))

(declare-fun res!353029 () Bool)

(assert (=> b!561728 (=> (not res!353029) (not e!323710))))

(declare-fun lt!255804 () SeekEntryResult!5382)

(assert (=> b!561728 (= res!353029 (= lt!255804 (Found!5382 j!142)))))

(assert (=> b!561728 (= lt!255804 (seekEntryOrOpen!0 (select (arr!16926 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35259 (_ BitVec 32)) Bool)

(assert (=> b!561728 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17538 0))(
  ( (Unit!17539) )
))
(declare-fun lt!255811 () Unit!17538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17538)

(assert (=> b!561728 (= lt!255811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561729 () Bool)

(declare-fun res!353039 () Bool)

(assert (=> b!561729 (=> (not res!353039) (not e!323714))))

(assert (=> b!561729 (= res!353039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun lt!255810 () array!35259)

(declare-fun lt!255812 () (_ BitVec 64))

(declare-fun e!323712 () Bool)

(declare-fun lt!255806 () SeekEntryResult!5382)

(declare-fun b!561730 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35259 (_ BitVec 32)) SeekEntryResult!5382)

(assert (=> b!561730 (= e!323712 (= (seekEntryOrOpen!0 lt!255812 lt!255810 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52688 lt!255806) (index!23757 lt!255806) (index!23757 lt!255806) lt!255812 lt!255810 mask!3119)))))

(declare-fun b!561731 () Bool)

(assert (=> b!561731 (= e!323714 e!323716)))

(declare-fun res!353032 () Bool)

(assert (=> b!561731 (=> (not res!353032) (not e!323716))))

(declare-fun lt!255805 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35259 (_ BitVec 32)) SeekEntryResult!5382)

(assert (=> b!561731 (= res!353032 (= lt!255806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255805 lt!255812 lt!255810 mask!3119)))))

(declare-fun lt!255809 () (_ BitVec 32))

(assert (=> b!561731 (= lt!255806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255809 (select (arr!16926 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561731 (= lt!255805 (toIndex!0 lt!255812 mask!3119))))

(assert (=> b!561731 (= lt!255812 (select (store (arr!16926 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561731 (= lt!255809 (toIndex!0 (select (arr!16926 a!3118) j!142) mask!3119))))

(assert (=> b!561731 (= lt!255810 (array!35260 (store (arr!16926 a!3118) i!1132 k!1914) (size!17290 a!3118)))))

(declare-fun res!353031 () Bool)

(assert (=> start!51440 (=> (not res!353031) (not e!323711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51440 (= res!353031 (validMask!0 mask!3119))))

(assert (=> start!51440 e!323711))

(assert (=> start!51440 true))

(declare-fun array_inv!12700 (array!35259) Bool)

(assert (=> start!51440 (array_inv!12700 a!3118)))

(declare-fun b!561732 () Bool)

(declare-fun res!353035 () Bool)

(assert (=> b!561732 (=> (not res!353035) (not e!323711))))

(assert (=> b!561732 (= res!353035 (validKeyInArray!0 k!1914))))

(declare-fun b!561733 () Bool)

(declare-fun res!353027 () Bool)

(assert (=> b!561733 (=> (not res!353027) (not e!323714))))

(declare-datatypes ((List!11059 0))(
  ( (Nil!11056) (Cons!11055 (h!12058 (_ BitVec 64)) (t!17295 List!11059)) )
))
(declare-fun arrayNoDuplicates!0 (array!35259 (_ BitVec 32) List!11059) Bool)

(assert (=> b!561733 (= res!353027 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11056))))

(declare-fun b!561734 () Bool)

(declare-fun e!323709 () Bool)

(assert (=> b!561734 (= e!323710 e!323709)))

(declare-fun res!353028 () Bool)

(assert (=> b!561734 (=> res!353028 e!323709)))

(assert (=> b!561734 (= res!353028 (or (undefined!6194 lt!255806) (not (is-Intermediate!5382 lt!255806))))))

(declare-fun b!561735 () Bool)

(declare-fun e!323715 () Bool)

(assert (=> b!561735 (= e!323709 e!323715)))

(declare-fun res!353030 () Bool)

(assert (=> b!561735 (=> res!353030 e!323715)))

(declare-fun lt!255807 () (_ BitVec 64))

(assert (=> b!561735 (= res!353030 (or (= lt!255807 (select (arr!16926 a!3118) j!142)) (= lt!255807 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561735 (= lt!255807 (select (arr!16926 a!3118) (index!23757 lt!255806)))))

(declare-fun b!561736 () Bool)

(assert (=> b!561736 (= e!323715 e!323712)))

(declare-fun res!353038 () Bool)

(assert (=> b!561736 (=> (not res!353038) (not e!323712))))

(assert (=> b!561736 (= res!353038 (= lt!255804 (seekKeyOrZeroReturnVacant!0 (x!52688 lt!255806) (index!23757 lt!255806) (index!23757 lt!255806) (select (arr!16926 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561737 () Bool)

(declare-fun res!353033 () Bool)

(assert (=> b!561737 (=> (not res!353033) (not e!323711))))

(assert (=> b!561737 (= res!353033 (and (= (size!17290 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17290 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17290 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51440 res!353031) b!561737))

(assert (= (and b!561737 res!353033) b!561726))

(assert (= (and b!561726 res!353034) b!561732))

(assert (= (and b!561732 res!353035) b!561725))

(assert (= (and b!561725 res!353037) b!561727))

(assert (= (and b!561727 res!353036) b!561729))

(assert (= (and b!561729 res!353039) b!561733))

(assert (= (and b!561733 res!353027) b!561731))

(assert (= (and b!561731 res!353032) b!561728))

(assert (= (and b!561728 res!353029) b!561734))

(assert (= (and b!561734 (not res!353028)) b!561735))

(assert (= (and b!561735 (not res!353030)) b!561736))

(assert (= (and b!561736 res!353038) b!561730))

(declare-fun m!539719 () Bool)

(assert (=> b!561728 m!539719))

(assert (=> b!561728 m!539719))

(declare-fun m!539721 () Bool)

(assert (=> b!561728 m!539721))

(declare-fun m!539723 () Bool)

(assert (=> b!561728 m!539723))

(declare-fun m!539725 () Bool)

(assert (=> b!561728 m!539725))

(assert (=> b!561726 m!539719))

(assert (=> b!561726 m!539719))

(declare-fun m!539727 () Bool)

(assert (=> b!561726 m!539727))

(declare-fun m!539729 () Bool)

(assert (=> b!561733 m!539729))

(declare-fun m!539731 () Bool)

(assert (=> b!561729 m!539731))

(declare-fun m!539733 () Bool)

(assert (=> b!561732 m!539733))

(declare-fun m!539735 () Bool)

(assert (=> b!561730 m!539735))

(declare-fun m!539737 () Bool)

(assert (=> b!561730 m!539737))

(declare-fun m!539739 () Bool)

(assert (=> b!561725 m!539739))

(declare-fun m!539741 () Bool)

(assert (=> start!51440 m!539741))

(declare-fun m!539743 () Bool)

(assert (=> start!51440 m!539743))

(assert (=> b!561736 m!539719))

(assert (=> b!561736 m!539719))

(declare-fun m!539745 () Bool)

(assert (=> b!561736 m!539745))

(declare-fun m!539747 () Bool)

(assert (=> b!561727 m!539747))

(assert (=> b!561735 m!539719))

(declare-fun m!539749 () Bool)

(assert (=> b!561735 m!539749))

(assert (=> b!561731 m!539719))

(declare-fun m!539751 () Bool)

(assert (=> b!561731 m!539751))

(declare-fun m!539753 () Bool)

(assert (=> b!561731 m!539753))

(assert (=> b!561731 m!539719))

(declare-fun m!539755 () Bool)

(assert (=> b!561731 m!539755))

(declare-fun m!539757 () Bool)

(assert (=> b!561731 m!539757))

(assert (=> b!561731 m!539719))

(declare-fun m!539759 () Bool)

(assert (=> b!561731 m!539759))

(declare-fun m!539761 () Bool)

(assert (=> b!561731 m!539761))

(push 1)

