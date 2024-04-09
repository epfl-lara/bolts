; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51396 () Bool)

(assert start!51396)

(declare-fun b!560867 () Bool)

(declare-fun res!352179 () Bool)

(declare-fun e!323187 () Bool)

(assert (=> b!560867 (=> (not res!352179) (not e!323187))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560867 (= res!352179 (validKeyInArray!0 k!1914))))

(declare-fun b!560868 () Bool)

(declare-fun e!323183 () Bool)

(assert (=> b!560868 (= e!323183 (not true))))

(declare-fun e!323182 () Bool)

(assert (=> b!560868 e!323182))

(declare-fun res!352180 () Bool)

(assert (=> b!560868 (=> (not res!352180) (not e!323182))))

(declare-datatypes ((SeekEntryResult!5360 0))(
  ( (MissingZero!5360 (index!23667 (_ BitVec 32))) (Found!5360 (index!23668 (_ BitVec 32))) (Intermediate!5360 (undefined!6172 Bool) (index!23669 (_ BitVec 32)) (x!52602 (_ BitVec 32))) (Undefined!5360) (MissingVacant!5360 (index!23670 (_ BitVec 32))) )
))
(declare-fun lt!255217 () SeekEntryResult!5360)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!560868 (= res!352180 (= lt!255217 (Found!5360 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35215 0))(
  ( (array!35216 (arr!16904 (Array (_ BitVec 32) (_ BitVec 64))) (size!17268 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35215)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35215 (_ BitVec 32)) SeekEntryResult!5360)

(assert (=> b!560868 (= lt!255217 (seekEntryOrOpen!0 (select (arr!16904 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35215 (_ BitVec 32)) Bool)

(assert (=> b!560868 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17494 0))(
  ( (Unit!17495) )
))
(declare-fun lt!255216 () Unit!17494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17494)

(assert (=> b!560868 (= lt!255216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560869 () Bool)

(declare-fun e!323188 () Bool)

(declare-fun e!323181 () Bool)

(assert (=> b!560869 (= e!323188 e!323181)))

(declare-fun res!352173 () Bool)

(assert (=> b!560869 (=> (not res!352173) (not e!323181))))

(declare-fun lt!255215 () SeekEntryResult!5360)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35215 (_ BitVec 32)) SeekEntryResult!5360)

(assert (=> b!560869 (= res!352173 (= lt!255217 (seekKeyOrZeroReturnVacant!0 (x!52602 lt!255215) (index!23669 lt!255215) (index!23669 lt!255215) (select (arr!16904 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560870 () Bool)

(declare-fun res!352181 () Bool)

(declare-fun e!323184 () Bool)

(assert (=> b!560870 (=> (not res!352181) (not e!323184))))

(declare-datatypes ((List!11037 0))(
  ( (Nil!11034) (Cons!11033 (h!12036 (_ BitVec 64)) (t!17273 List!11037)) )
))
(declare-fun arrayNoDuplicates!0 (array!35215 (_ BitVec 32) List!11037) Bool)

(assert (=> b!560870 (= res!352181 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11034))))

(declare-fun b!560872 () Bool)

(declare-fun e!323186 () Bool)

(assert (=> b!560872 (= e!323186 e!323188)))

(declare-fun res!352177 () Bool)

(assert (=> b!560872 (=> res!352177 e!323188)))

(declare-fun lt!255214 () (_ BitVec 64))

(assert (=> b!560872 (= res!352177 (or (= lt!255214 (select (arr!16904 a!3118) j!142)) (= lt!255214 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560872 (= lt!255214 (select (arr!16904 a!3118) (index!23669 lt!255215)))))

(declare-fun b!560873 () Bool)

(declare-fun res!352169 () Bool)

(assert (=> b!560873 (=> (not res!352169) (not e!323187))))

(assert (=> b!560873 (= res!352169 (validKeyInArray!0 (select (arr!16904 a!3118) j!142)))))

(declare-fun b!560874 () Bool)

(assert (=> b!560874 (= e!323187 e!323184)))

(declare-fun res!352170 () Bool)

(assert (=> b!560874 (=> (not res!352170) (not e!323184))))

(declare-fun lt!255213 () SeekEntryResult!5360)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560874 (= res!352170 (or (= lt!255213 (MissingZero!5360 i!1132)) (= lt!255213 (MissingVacant!5360 i!1132))))))

(assert (=> b!560874 (= lt!255213 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun lt!255211 () (_ BitVec 64))

(declare-fun b!560875 () Bool)

(declare-fun lt!255210 () array!35215)

(assert (=> b!560875 (= e!323181 (= (seekEntryOrOpen!0 lt!255211 lt!255210 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52602 lt!255215) (index!23669 lt!255215) (index!23669 lt!255215) lt!255211 lt!255210 mask!3119)))))

(declare-fun b!560876 () Bool)

(declare-fun res!352174 () Bool)

(assert (=> b!560876 (=> (not res!352174) (not e!323184))))

(assert (=> b!560876 (= res!352174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560877 () Bool)

(assert (=> b!560877 (= e!323182 e!323186)))

(declare-fun res!352178 () Bool)

(assert (=> b!560877 (=> res!352178 e!323186)))

(assert (=> b!560877 (= res!352178 (or (undefined!6172 lt!255215) (not (is-Intermediate!5360 lt!255215))))))

(declare-fun res!352176 () Bool)

(assert (=> start!51396 (=> (not res!352176) (not e!323187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51396 (= res!352176 (validMask!0 mask!3119))))

(assert (=> start!51396 e!323187))

(assert (=> start!51396 true))

(declare-fun array_inv!12678 (array!35215) Bool)

(assert (=> start!51396 (array_inv!12678 a!3118)))

(declare-fun b!560871 () Bool)

(assert (=> b!560871 (= e!323184 e!323183)))

(declare-fun res!352171 () Bool)

(assert (=> b!560871 (=> (not res!352171) (not e!323183))))

(declare-fun lt!255218 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35215 (_ BitVec 32)) SeekEntryResult!5360)

(assert (=> b!560871 (= res!352171 (= lt!255215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255218 lt!255211 lt!255210 mask!3119)))))

(declare-fun lt!255212 () (_ BitVec 32))

(assert (=> b!560871 (= lt!255215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255212 (select (arr!16904 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560871 (= lt!255218 (toIndex!0 lt!255211 mask!3119))))

(assert (=> b!560871 (= lt!255211 (select (store (arr!16904 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560871 (= lt!255212 (toIndex!0 (select (arr!16904 a!3118) j!142) mask!3119))))

(assert (=> b!560871 (= lt!255210 (array!35216 (store (arr!16904 a!3118) i!1132 k!1914) (size!17268 a!3118)))))

(declare-fun b!560878 () Bool)

(declare-fun res!352172 () Bool)

(assert (=> b!560878 (=> (not res!352172) (not e!323187))))

(assert (=> b!560878 (= res!352172 (and (= (size!17268 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17268 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17268 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560879 () Bool)

(declare-fun res!352175 () Bool)

(assert (=> b!560879 (=> (not res!352175) (not e!323187))))

(declare-fun arrayContainsKey!0 (array!35215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560879 (= res!352175 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51396 res!352176) b!560878))

(assert (= (and b!560878 res!352172) b!560873))

(assert (= (and b!560873 res!352169) b!560867))

(assert (= (and b!560867 res!352179) b!560879))

(assert (= (and b!560879 res!352175) b!560874))

(assert (= (and b!560874 res!352170) b!560876))

(assert (= (and b!560876 res!352174) b!560870))

(assert (= (and b!560870 res!352181) b!560871))

(assert (= (and b!560871 res!352171) b!560868))

(assert (= (and b!560868 res!352180) b!560877))

(assert (= (and b!560877 (not res!352178)) b!560872))

(assert (= (and b!560872 (not res!352177)) b!560869))

(assert (= (and b!560869 res!352173) b!560875))

(declare-fun m!538751 () Bool)

(assert (=> b!560870 m!538751))

(declare-fun m!538753 () Bool)

(assert (=> b!560876 m!538753))

(declare-fun m!538755 () Bool)

(assert (=> b!560872 m!538755))

(declare-fun m!538757 () Bool)

(assert (=> b!560872 m!538757))

(declare-fun m!538759 () Bool)

(assert (=> b!560874 m!538759))

(assert (=> b!560868 m!538755))

(assert (=> b!560868 m!538755))

(declare-fun m!538761 () Bool)

(assert (=> b!560868 m!538761))

(declare-fun m!538763 () Bool)

(assert (=> b!560868 m!538763))

(declare-fun m!538765 () Bool)

(assert (=> b!560868 m!538765))

(assert (=> b!560871 m!538755))

(declare-fun m!538767 () Bool)

(assert (=> b!560871 m!538767))

(assert (=> b!560871 m!538755))

(declare-fun m!538769 () Bool)

(assert (=> b!560871 m!538769))

(assert (=> b!560871 m!538755))

(declare-fun m!538771 () Bool)

(assert (=> b!560871 m!538771))

(declare-fun m!538773 () Bool)

(assert (=> b!560871 m!538773))

(declare-fun m!538775 () Bool)

(assert (=> b!560871 m!538775))

(declare-fun m!538777 () Bool)

(assert (=> b!560871 m!538777))

(assert (=> b!560873 m!538755))

(assert (=> b!560873 m!538755))

(declare-fun m!538779 () Bool)

(assert (=> b!560873 m!538779))

(assert (=> b!560869 m!538755))

(assert (=> b!560869 m!538755))

(declare-fun m!538781 () Bool)

(assert (=> b!560869 m!538781))

(declare-fun m!538783 () Bool)

(assert (=> b!560875 m!538783))

(declare-fun m!538785 () Bool)

(assert (=> b!560875 m!538785))

(declare-fun m!538787 () Bool)

(assert (=> b!560867 m!538787))

(declare-fun m!538789 () Bool)

(assert (=> start!51396 m!538789))

(declare-fun m!538791 () Bool)

(assert (=> start!51396 m!538791))

(declare-fun m!538793 () Bool)

(assert (=> b!560879 m!538793))

(push 1)

