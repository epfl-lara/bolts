; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52170 () Bool)

(assert start!52170)

(declare-fun b!569016 () Bool)

(declare-fun res!359192 () Bool)

(declare-fun e!327373 () Bool)

(assert (=> b!569016 (=> (not res!359192) (not e!327373))))

(declare-datatypes ((array!35647 0))(
  ( (array!35648 (arr!17111 (Array (_ BitVec 32) (_ BitVec 64))) (size!17475 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35647)

(declare-datatypes ((List!11244 0))(
  ( (Nil!11241) (Cons!11240 (h!12261 (_ BitVec 64)) (t!17480 List!11244)) )
))
(declare-fun arrayNoDuplicates!0 (array!35647 (_ BitVec 32) List!11244) Bool)

(assert (=> b!569016 (= res!359192 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11241))))

(declare-fun b!569017 () Bool)

(declare-fun res!359191 () Bool)

(assert (=> b!569017 (=> (not res!359191) (not e!327373))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35647 (_ BitVec 32)) Bool)

(assert (=> b!569017 (= res!359191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569018 () Bool)

(declare-fun res!359189 () Bool)

(declare-fun e!327370 () Bool)

(assert (=> b!569018 (=> (not res!359189) (not e!327370))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569018 (= res!359189 (validKeyInArray!0 k!1914))))

(declare-fun b!569019 () Bool)

(declare-datatypes ((SeekEntryResult!5567 0))(
  ( (MissingZero!5567 (index!24495 (_ BitVec 32))) (Found!5567 (index!24496 (_ BitVec 32))) (Intermediate!5567 (undefined!6379 Bool) (index!24497 (_ BitVec 32)) (x!53397 (_ BitVec 32))) (Undefined!5567) (MissingVacant!5567 (index!24498 (_ BitVec 32))) )
))
(declare-fun lt!259357 () SeekEntryResult!5567)

(declare-fun e!327371 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!569019 (= e!327371 (not (or (undefined!6379 lt!259357) (not (is-Intermediate!5567 lt!259357)) (= (select (arr!17111 a!3118) (index!24497 lt!259357)) (select (arr!17111 a!3118) j!142)) (not (= (select (arr!17111 a!3118) (index!24497 lt!259357)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!17475 a!3118)) (bvsle j!142 (size!17475 a!3118)))))))

(declare-fun lt!259353 () SeekEntryResult!5567)

(assert (=> b!569019 (and (= lt!259353 (Found!5567 j!142)) (or (undefined!6379 lt!259357) (not (is-Intermediate!5567 lt!259357)) (= (select (arr!17111 a!3118) (index!24497 lt!259357)) (select (arr!17111 a!3118) j!142)) (not (= (select (arr!17111 a!3118) (index!24497 lt!259357)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259353 (MissingZero!5567 (index!24497 lt!259357)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35647 (_ BitVec 32)) SeekEntryResult!5567)

(assert (=> b!569019 (= lt!259353 (seekEntryOrOpen!0 (select (arr!17111 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569019 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17836 0))(
  ( (Unit!17837) )
))
(declare-fun lt!259355 () Unit!17836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17836)

(assert (=> b!569019 (= lt!259355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569020 () Bool)

(assert (=> b!569020 (= e!327370 e!327373)))

(declare-fun res!359187 () Bool)

(assert (=> b!569020 (=> (not res!359187) (not e!327373))))

(declare-fun lt!259354 () SeekEntryResult!5567)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569020 (= res!359187 (or (= lt!259354 (MissingZero!5567 i!1132)) (= lt!259354 (MissingVacant!5567 i!1132))))))

(assert (=> b!569020 (= lt!259354 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359188 () Bool)

(assert (=> start!52170 (=> (not res!359188) (not e!327370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52170 (= res!359188 (validMask!0 mask!3119))))

(assert (=> start!52170 e!327370))

(assert (=> start!52170 true))

(declare-fun array_inv!12885 (array!35647) Bool)

(assert (=> start!52170 (array_inv!12885 a!3118)))

(declare-fun b!569021 () Bool)

(assert (=> b!569021 (= e!327373 e!327371)))

(declare-fun res!359184 () Bool)

(assert (=> b!569021 (=> (not res!359184) (not e!327371))))

(declare-fun lt!259356 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35647 (_ BitVec 32)) SeekEntryResult!5567)

(assert (=> b!569021 (= res!359184 (= lt!259357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259356 (select (store (arr!17111 a!3118) i!1132 k!1914) j!142) (array!35648 (store (arr!17111 a!3118) i!1132 k!1914) (size!17475 a!3118)) mask!3119)))))

(declare-fun lt!259358 () (_ BitVec 32))

(assert (=> b!569021 (= lt!259357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259358 (select (arr!17111 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569021 (= lt!259356 (toIndex!0 (select (store (arr!17111 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569021 (= lt!259358 (toIndex!0 (select (arr!17111 a!3118) j!142) mask!3119))))

(declare-fun b!569022 () Bool)

(declare-fun res!359186 () Bool)

(assert (=> b!569022 (=> (not res!359186) (not e!327370))))

(assert (=> b!569022 (= res!359186 (validKeyInArray!0 (select (arr!17111 a!3118) j!142)))))

(declare-fun b!569023 () Bool)

(declare-fun res!359190 () Bool)

(assert (=> b!569023 (=> (not res!359190) (not e!327370))))

(assert (=> b!569023 (= res!359190 (and (= (size!17475 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17475 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17475 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569024 () Bool)

(declare-fun res!359185 () Bool)

(assert (=> b!569024 (=> (not res!359185) (not e!327370))))

(declare-fun arrayContainsKey!0 (array!35647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569024 (= res!359185 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52170 res!359188) b!569023))

(assert (= (and b!569023 res!359190) b!569022))

(assert (= (and b!569022 res!359186) b!569018))

(assert (= (and b!569018 res!359189) b!569024))

(assert (= (and b!569024 res!359185) b!569020))

(assert (= (and b!569020 res!359187) b!569017))

(assert (= (and b!569017 res!359191) b!569016))

(assert (= (and b!569016 res!359192) b!569021))

(assert (= (and b!569021 res!359184) b!569019))

(declare-fun m!547691 () Bool)

(assert (=> b!569020 m!547691))

(declare-fun m!547693 () Bool)

(assert (=> b!569022 m!547693))

(assert (=> b!569022 m!547693))

(declare-fun m!547695 () Bool)

(assert (=> b!569022 m!547695))

(assert (=> b!569021 m!547693))

(declare-fun m!547697 () Bool)

(assert (=> b!569021 m!547697))

(declare-fun m!547699 () Bool)

(assert (=> b!569021 m!547699))

(declare-fun m!547701 () Bool)

(assert (=> b!569021 m!547701))

(assert (=> b!569021 m!547699))

(declare-fun m!547703 () Bool)

(assert (=> b!569021 m!547703))

(assert (=> b!569021 m!547699))

(declare-fun m!547705 () Bool)

(assert (=> b!569021 m!547705))

(assert (=> b!569021 m!547693))

(declare-fun m!547707 () Bool)

(assert (=> b!569021 m!547707))

(assert (=> b!569021 m!547693))

(declare-fun m!547709 () Bool)

(assert (=> b!569024 m!547709))

(assert (=> b!569019 m!547693))

(declare-fun m!547711 () Bool)

(assert (=> b!569019 m!547711))

(declare-fun m!547713 () Bool)

(assert (=> b!569019 m!547713))

(declare-fun m!547715 () Bool)

(assert (=> b!569019 m!547715))

(assert (=> b!569019 m!547693))

(declare-fun m!547717 () Bool)

(assert (=> b!569019 m!547717))

(declare-fun m!547719 () Bool)

(assert (=> b!569018 m!547719))

(declare-fun m!547721 () Bool)

(assert (=> b!569016 m!547721))

(declare-fun m!547723 () Bool)

(assert (=> b!569017 m!547723))

(declare-fun m!547725 () Bool)

(assert (=> start!52170 m!547725))

(declare-fun m!547727 () Bool)

(assert (=> start!52170 m!547727))

(push 1)

