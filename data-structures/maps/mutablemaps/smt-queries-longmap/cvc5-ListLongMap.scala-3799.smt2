; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52166 () Bool)

(assert start!52166)

(declare-fun res!359130 () Bool)

(declare-fun e!327347 () Bool)

(assert (=> start!52166 (=> (not res!359130) (not e!327347))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52166 (= res!359130 (validMask!0 mask!3119))))

(assert (=> start!52166 e!327347))

(assert (=> start!52166 true))

(declare-datatypes ((array!35643 0))(
  ( (array!35644 (arr!17109 (Array (_ BitVec 32) (_ BitVec 64))) (size!17473 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35643)

(declare-fun array_inv!12883 (array!35643) Bool)

(assert (=> start!52166 (array_inv!12883 a!3118)))

(declare-fun b!568962 () Bool)

(declare-fun e!327348 () Bool)

(declare-fun e!327346 () Bool)

(assert (=> b!568962 (= e!327348 e!327346)))

(declare-fun res!359134 () Bool)

(assert (=> b!568962 (=> (not res!359134) (not e!327346))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5565 0))(
  ( (MissingZero!5565 (index!24487 (_ BitVec 32))) (Found!5565 (index!24488 (_ BitVec 32))) (Intermediate!5565 (undefined!6377 Bool) (index!24489 (_ BitVec 32)) (x!53395 (_ BitVec 32))) (Undefined!5565) (MissingVacant!5565 (index!24490 (_ BitVec 32))) )
))
(declare-fun lt!259322 () SeekEntryResult!5565)

(declare-fun lt!259319 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35643 (_ BitVec 32)) SeekEntryResult!5565)

(assert (=> b!568962 (= res!359134 (= lt!259322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259319 (select (store (arr!17109 a!3118) i!1132 k!1914) j!142) (array!35644 (store (arr!17109 a!3118) i!1132 k!1914) (size!17473 a!3118)) mask!3119)))))

(declare-fun lt!259317 () (_ BitVec 32))

(assert (=> b!568962 (= lt!259322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259317 (select (arr!17109 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568962 (= lt!259319 (toIndex!0 (select (store (arr!17109 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568962 (= lt!259317 (toIndex!0 (select (arr!17109 a!3118) j!142) mask!3119))))

(declare-fun b!568963 () Bool)

(declare-fun res!359136 () Bool)

(assert (=> b!568963 (=> (not res!359136) (not e!327347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568963 (= res!359136 (validKeyInArray!0 k!1914))))

(declare-fun b!568964 () Bool)

(declare-fun res!359138 () Bool)

(assert (=> b!568964 (=> (not res!359138) (not e!327347))))

(assert (=> b!568964 (= res!359138 (and (= (size!17473 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17473 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17473 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568965 () Bool)

(declare-fun res!359135 () Bool)

(assert (=> b!568965 (=> (not res!359135) (not e!327348))))

(declare-datatypes ((List!11242 0))(
  ( (Nil!11239) (Cons!11238 (h!12259 (_ BitVec 64)) (t!17478 List!11242)) )
))
(declare-fun arrayNoDuplicates!0 (array!35643 (_ BitVec 32) List!11242) Bool)

(assert (=> b!568965 (= res!359135 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11239))))

(declare-fun b!568966 () Bool)

(assert (=> b!568966 (= e!327346 (not (or (undefined!6377 lt!259322) (not (is-Intermediate!5565 lt!259322)) (= (select (arr!17109 a!3118) (index!24489 lt!259322)) (select (arr!17109 a!3118) j!142)) (not (= (select (arr!17109 a!3118) (index!24489 lt!259322)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!17473 a!3118)) (bvsle j!142 (size!17473 a!3118)))))))

(declare-fun lt!259320 () SeekEntryResult!5565)

(assert (=> b!568966 (and (= lt!259320 (Found!5565 j!142)) (or (undefined!6377 lt!259322) (not (is-Intermediate!5565 lt!259322)) (= (select (arr!17109 a!3118) (index!24489 lt!259322)) (select (arr!17109 a!3118) j!142)) (not (= (select (arr!17109 a!3118) (index!24489 lt!259322)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259320 (MissingZero!5565 (index!24489 lt!259322)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35643 (_ BitVec 32)) SeekEntryResult!5565)

(assert (=> b!568966 (= lt!259320 (seekEntryOrOpen!0 (select (arr!17109 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35643 (_ BitVec 32)) Bool)

(assert (=> b!568966 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17832 0))(
  ( (Unit!17833) )
))
(declare-fun lt!259321 () Unit!17832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17832)

(assert (=> b!568966 (= lt!259321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568967 () Bool)

(declare-fun res!359132 () Bool)

(assert (=> b!568967 (=> (not res!359132) (not e!327347))))

(declare-fun arrayContainsKey!0 (array!35643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568967 (= res!359132 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568968 () Bool)

(declare-fun res!359137 () Bool)

(assert (=> b!568968 (=> (not res!359137) (not e!327347))))

(assert (=> b!568968 (= res!359137 (validKeyInArray!0 (select (arr!17109 a!3118) j!142)))))

(declare-fun b!568969 () Bool)

(declare-fun res!359131 () Bool)

(assert (=> b!568969 (=> (not res!359131) (not e!327348))))

(assert (=> b!568969 (= res!359131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568970 () Bool)

(assert (=> b!568970 (= e!327347 e!327348)))

(declare-fun res!359133 () Bool)

(assert (=> b!568970 (=> (not res!359133) (not e!327348))))

(declare-fun lt!259318 () SeekEntryResult!5565)

(assert (=> b!568970 (= res!359133 (or (= lt!259318 (MissingZero!5565 i!1132)) (= lt!259318 (MissingVacant!5565 i!1132))))))

(assert (=> b!568970 (= lt!259318 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!52166 res!359130) b!568964))

(assert (= (and b!568964 res!359138) b!568968))

(assert (= (and b!568968 res!359137) b!568963))

(assert (= (and b!568963 res!359136) b!568967))

(assert (= (and b!568967 res!359132) b!568970))

(assert (= (and b!568970 res!359133) b!568969))

(assert (= (and b!568969 res!359131) b!568965))

(assert (= (and b!568965 res!359135) b!568962))

(assert (= (and b!568962 res!359134) b!568966))

(declare-fun m!547615 () Bool)

(assert (=> b!568962 m!547615))

(declare-fun m!547617 () Bool)

(assert (=> b!568962 m!547617))

(assert (=> b!568962 m!547615))

(declare-fun m!547619 () Bool)

(assert (=> b!568962 m!547619))

(declare-fun m!547621 () Bool)

(assert (=> b!568962 m!547621))

(assert (=> b!568962 m!547619))

(declare-fun m!547623 () Bool)

(assert (=> b!568962 m!547623))

(assert (=> b!568962 m!547615))

(declare-fun m!547625 () Bool)

(assert (=> b!568962 m!547625))

(assert (=> b!568962 m!547619))

(declare-fun m!547627 () Bool)

(assert (=> b!568962 m!547627))

(declare-fun m!547629 () Bool)

(assert (=> b!568970 m!547629))

(declare-fun m!547631 () Bool)

(assert (=> b!568967 m!547631))

(declare-fun m!547633 () Bool)

(assert (=> b!568969 m!547633))

(declare-fun m!547635 () Bool)

(assert (=> b!568965 m!547635))

(assert (=> b!568966 m!547615))

(declare-fun m!547637 () Bool)

(assert (=> b!568966 m!547637))

(declare-fun m!547639 () Bool)

(assert (=> b!568966 m!547639))

(declare-fun m!547641 () Bool)

(assert (=> b!568966 m!547641))

(assert (=> b!568966 m!547615))

(declare-fun m!547643 () Bool)

(assert (=> b!568966 m!547643))

(assert (=> b!568968 m!547615))

(assert (=> b!568968 m!547615))

(declare-fun m!547645 () Bool)

(assert (=> b!568968 m!547645))

(declare-fun m!547647 () Bool)

(assert (=> start!52166 m!547647))

(declare-fun m!547649 () Bool)

(assert (=> start!52166 m!547649))

(declare-fun m!547651 () Bool)

(assert (=> b!568963 m!547651))

(push 1)

