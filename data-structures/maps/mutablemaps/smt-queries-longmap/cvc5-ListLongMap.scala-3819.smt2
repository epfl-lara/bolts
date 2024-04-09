; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52418 () Bool)

(assert start!52418)

(declare-fun b!571568 () Bool)

(declare-fun e!328754 () Bool)

(assert (=> b!571568 (= e!328754 (not true))))

(declare-fun e!328755 () Bool)

(assert (=> b!571568 e!328755))

(declare-fun res!361229 () Bool)

(assert (=> b!571568 (=> (not res!361229) (not e!328755))))

(declare-datatypes ((SeekEntryResult!5625 0))(
  ( (MissingZero!5625 (index!24727 (_ BitVec 32))) (Found!5625 (index!24728 (_ BitVec 32))) (Intermediate!5625 (undefined!6437 Bool) (index!24729 (_ BitVec 32)) (x!53633 (_ BitVec 32))) (Undefined!5625) (MissingVacant!5625 (index!24730 (_ BitVec 32))) )
))
(declare-fun lt!260737 () SeekEntryResult!5625)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!571568 (= res!361229 (= lt!260737 (Found!5625 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35769 0))(
  ( (array!35770 (arr!17169 (Array (_ BitVec 32) (_ BitVec 64))) (size!17533 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35769)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35769 (_ BitVec 32)) SeekEntryResult!5625)

(assert (=> b!571568 (= lt!260737 (seekEntryOrOpen!0 (select (arr!17169 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35769 (_ BitVec 32)) Bool)

(assert (=> b!571568 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17952 0))(
  ( (Unit!17953) )
))
(declare-fun lt!260734 () Unit!17952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17952)

(assert (=> b!571568 (= lt!260734 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571569 () Bool)

(declare-fun e!328752 () Bool)

(assert (=> b!571569 (= e!328752 e!328754)))

(declare-fun res!361233 () Bool)

(assert (=> b!571569 (=> (not res!361233) (not e!328754))))

(declare-fun lt!260732 () (_ BitVec 32))

(declare-fun lt!260730 () SeekEntryResult!5625)

(declare-fun lt!260738 () array!35769)

(declare-fun lt!260733 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35769 (_ BitVec 32)) SeekEntryResult!5625)

(assert (=> b!571569 (= res!361233 (= lt!260730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260732 lt!260733 lt!260738 mask!3119)))))

(declare-fun lt!260731 () (_ BitVec 32))

(assert (=> b!571569 (= lt!260730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260731 (select (arr!17169 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571569 (= lt!260732 (toIndex!0 lt!260733 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571569 (= lt!260733 (select (store (arr!17169 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571569 (= lt!260731 (toIndex!0 (select (arr!17169 a!3118) j!142) mask!3119))))

(assert (=> b!571569 (= lt!260738 (array!35770 (store (arr!17169 a!3118) i!1132 k!1914) (size!17533 a!3118)))))

(declare-fun b!571570 () Bool)

(declare-fun res!361228 () Bool)

(assert (=> b!571570 (=> (not res!361228) (not e!328752))))

(declare-datatypes ((List!11302 0))(
  ( (Nil!11299) (Cons!11298 (h!12325 (_ BitVec 64)) (t!17538 List!11302)) )
))
(declare-fun arrayNoDuplicates!0 (array!35769 (_ BitVec 32) List!11302) Bool)

(assert (=> b!571570 (= res!361228 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11299))))

(declare-fun b!571571 () Bool)

(declare-fun e!328758 () Bool)

(declare-fun e!328756 () Bool)

(assert (=> b!571571 (= e!328758 e!328756)))

(declare-fun res!361236 () Bool)

(assert (=> b!571571 (=> res!361236 e!328756)))

(declare-fun lt!260736 () (_ BitVec 64))

(assert (=> b!571571 (= res!361236 (or (= lt!260736 (select (arr!17169 a!3118) j!142)) (= lt!260736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571571 (= lt!260736 (select (arr!17169 a!3118) (index!24729 lt!260730)))))

(declare-fun b!571572 () Bool)

(declare-fun e!328753 () Bool)

(assert (=> b!571572 (= e!328756 e!328753)))

(declare-fun res!361238 () Bool)

(assert (=> b!571572 (=> (not res!361238) (not e!328753))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35769 (_ BitVec 32)) SeekEntryResult!5625)

(assert (=> b!571572 (= res!361238 (= lt!260737 (seekKeyOrZeroReturnVacant!0 (x!53633 lt!260730) (index!24729 lt!260730) (index!24729 lt!260730) (select (arr!17169 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571573 () Bool)

(declare-fun res!361234 () Bool)

(declare-fun e!328759 () Bool)

(assert (=> b!571573 (=> (not res!361234) (not e!328759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571573 (= res!361234 (validKeyInArray!0 k!1914))))

(declare-fun b!571574 () Bool)

(declare-fun res!361237 () Bool)

(assert (=> b!571574 (=> (not res!361237) (not e!328759))))

(declare-fun arrayContainsKey!0 (array!35769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571574 (= res!361237 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!361232 () Bool)

(assert (=> start!52418 (=> (not res!361232) (not e!328759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52418 (= res!361232 (validMask!0 mask!3119))))

(assert (=> start!52418 e!328759))

(assert (=> start!52418 true))

(declare-fun array_inv!12943 (array!35769) Bool)

(assert (=> start!52418 (array_inv!12943 a!3118)))

(declare-fun b!571575 () Bool)

(assert (=> b!571575 (= e!328755 e!328758)))

(declare-fun res!361230 () Bool)

(assert (=> b!571575 (=> res!361230 e!328758)))

(assert (=> b!571575 (= res!361230 (or (undefined!6437 lt!260730) (not (is-Intermediate!5625 lt!260730))))))

(declare-fun b!571576 () Bool)

(assert (=> b!571576 (= e!328759 e!328752)))

(declare-fun res!361235 () Bool)

(assert (=> b!571576 (=> (not res!361235) (not e!328752))))

(declare-fun lt!260735 () SeekEntryResult!5625)

(assert (=> b!571576 (= res!361235 (or (= lt!260735 (MissingZero!5625 i!1132)) (= lt!260735 (MissingVacant!5625 i!1132))))))

(assert (=> b!571576 (= lt!260735 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!571577 () Bool)

(declare-fun res!361231 () Bool)

(assert (=> b!571577 (=> (not res!361231) (not e!328752))))

(assert (=> b!571577 (= res!361231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571578 () Bool)

(declare-fun res!361227 () Bool)

(assert (=> b!571578 (=> (not res!361227) (not e!328759))))

(assert (=> b!571578 (= res!361227 (and (= (size!17533 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17533 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17533 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571579 () Bool)

(declare-fun res!361226 () Bool)

(assert (=> b!571579 (=> (not res!361226) (not e!328759))))

(assert (=> b!571579 (= res!361226 (validKeyInArray!0 (select (arr!17169 a!3118) j!142)))))

(declare-fun b!571580 () Bool)

(assert (=> b!571580 (= e!328753 (= (seekEntryOrOpen!0 lt!260733 lt!260738 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53633 lt!260730) (index!24729 lt!260730) (index!24729 lt!260730) lt!260733 lt!260738 mask!3119)))))

(assert (= (and start!52418 res!361232) b!571578))

(assert (= (and b!571578 res!361227) b!571579))

(assert (= (and b!571579 res!361226) b!571573))

(assert (= (and b!571573 res!361234) b!571574))

(assert (= (and b!571574 res!361237) b!571576))

(assert (= (and b!571576 res!361235) b!571577))

(assert (= (and b!571577 res!361231) b!571570))

(assert (= (and b!571570 res!361228) b!571569))

(assert (= (and b!571569 res!361233) b!571568))

(assert (= (and b!571568 res!361229) b!571575))

(assert (= (and b!571575 (not res!361230)) b!571571))

(assert (= (and b!571571 (not res!361236)) b!571572))

(assert (= (and b!571572 res!361238) b!571580))

(declare-fun m!550495 () Bool)

(assert (=> b!571577 m!550495))

(declare-fun m!550497 () Bool)

(assert (=> b!571569 m!550497))

(declare-fun m!550499 () Bool)

(assert (=> b!571569 m!550499))

(assert (=> b!571569 m!550497))

(declare-fun m!550501 () Bool)

(assert (=> b!571569 m!550501))

(declare-fun m!550503 () Bool)

(assert (=> b!571569 m!550503))

(declare-fun m!550505 () Bool)

(assert (=> b!571569 m!550505))

(declare-fun m!550507 () Bool)

(assert (=> b!571569 m!550507))

(assert (=> b!571569 m!550497))

(declare-fun m!550509 () Bool)

(assert (=> b!571569 m!550509))

(assert (=> b!571579 m!550497))

(assert (=> b!571579 m!550497))

(declare-fun m!550511 () Bool)

(assert (=> b!571579 m!550511))

(declare-fun m!550513 () Bool)

(assert (=> b!571580 m!550513))

(declare-fun m!550515 () Bool)

(assert (=> b!571580 m!550515))

(assert (=> b!571568 m!550497))

(assert (=> b!571568 m!550497))

(declare-fun m!550517 () Bool)

(assert (=> b!571568 m!550517))

(declare-fun m!550519 () Bool)

(assert (=> b!571568 m!550519))

(declare-fun m!550521 () Bool)

(assert (=> b!571568 m!550521))

(declare-fun m!550523 () Bool)

(assert (=> b!571576 m!550523))

(declare-fun m!550525 () Bool)

(assert (=> b!571570 m!550525))

(assert (=> b!571571 m!550497))

(declare-fun m!550527 () Bool)

(assert (=> b!571571 m!550527))

(declare-fun m!550529 () Bool)

(assert (=> b!571573 m!550529))

(assert (=> b!571572 m!550497))

(assert (=> b!571572 m!550497))

(declare-fun m!550531 () Bool)

(assert (=> b!571572 m!550531))

(declare-fun m!550533 () Bool)

(assert (=> b!571574 m!550533))

(declare-fun m!550535 () Bool)

(assert (=> start!52418 m!550535))

(declare-fun m!550537 () Bool)

(assert (=> start!52418 m!550537))

(push 1)

