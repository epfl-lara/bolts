; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52182 () Bool)

(assert start!52182)

(declare-fun b!569178 () Bool)

(declare-fun res!359346 () Bool)

(declare-fun e!327444 () Bool)

(assert (=> b!569178 (=> (not res!359346) (not e!327444))))

(declare-datatypes ((array!35659 0))(
  ( (array!35660 (arr!17117 (Array (_ BitVec 32) (_ BitVec 64))) (size!17481 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35659)

(declare-datatypes ((List!11250 0))(
  ( (Nil!11247) (Cons!11246 (h!12267 (_ BitVec 64)) (t!17486 List!11250)) )
))
(declare-fun arrayNoDuplicates!0 (array!35659 (_ BitVec 32) List!11250) Bool)

(assert (=> b!569178 (= res!359346 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11247))))

(declare-fun b!569179 () Bool)

(declare-fun e!327443 () Bool)

(assert (=> b!569179 (= e!327443 e!327444)))

(declare-fun res!359353 () Bool)

(assert (=> b!569179 (=> (not res!359353) (not e!327444))))

(declare-datatypes ((SeekEntryResult!5573 0))(
  ( (MissingZero!5573 (index!24519 (_ BitVec 32))) (Found!5573 (index!24520 (_ BitVec 32))) (Intermediate!5573 (undefined!6385 Bool) (index!24521 (_ BitVec 32)) (x!53419 (_ BitVec 32))) (Undefined!5573) (MissingVacant!5573 (index!24522 (_ BitVec 32))) )
))
(declare-fun lt!259463 () SeekEntryResult!5573)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569179 (= res!359353 (or (= lt!259463 (MissingZero!5573 i!1132)) (= lt!259463 (MissingVacant!5573 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35659 (_ BitVec 32)) SeekEntryResult!5573)

(assert (=> b!569179 (= lt!259463 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569180 () Bool)

(declare-fun e!327442 () Bool)

(assert (=> b!569180 (= e!327444 e!327442)))

(declare-fun res!359347 () Bool)

(assert (=> b!569180 (=> (not res!359347) (not e!327442))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259466 () SeekEntryResult!5573)

(declare-fun lt!259462 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35659 (_ BitVec 32)) SeekEntryResult!5573)

(assert (=> b!569180 (= res!359347 (= lt!259466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259462 (select (store (arr!17117 a!3118) i!1132 k!1914) j!142) (array!35660 (store (arr!17117 a!3118) i!1132 k!1914) (size!17481 a!3118)) mask!3119)))))

(declare-fun lt!259461 () (_ BitVec 32))

(assert (=> b!569180 (= lt!259466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259461 (select (arr!17117 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569180 (= lt!259462 (toIndex!0 (select (store (arr!17117 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569180 (= lt!259461 (toIndex!0 (select (arr!17117 a!3118) j!142) mask!3119))))

(declare-fun b!569181 () Bool)

(declare-fun res!359354 () Bool)

(assert (=> b!569181 (=> (not res!359354) (not e!327443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569181 (= res!359354 (validKeyInArray!0 (select (arr!17117 a!3118) j!142)))))

(declare-fun b!569182 () Bool)

(declare-fun res!359352 () Bool)

(assert (=> b!569182 (=> (not res!359352) (not e!327444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35659 (_ BitVec 32)) Bool)

(assert (=> b!569182 (= res!359352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569183 () Bool)

(declare-fun res!359351 () Bool)

(assert (=> b!569183 (=> (not res!359351) (not e!327443))))

(assert (=> b!569183 (= res!359351 (and (= (size!17481 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17481 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17481 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569185 () Bool)

(declare-fun res!359349 () Bool)

(assert (=> b!569185 (=> (not res!359349) (not e!327443))))

(declare-fun arrayContainsKey!0 (array!35659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569185 (= res!359349 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569186 () Bool)

(declare-fun res!359348 () Bool)

(assert (=> b!569186 (=> (not res!359348) (not e!327443))))

(assert (=> b!569186 (= res!359348 (validKeyInArray!0 k!1914))))

(declare-fun b!569184 () Bool)

(assert (=> b!569184 (= e!327442 (not (or (undefined!6385 lt!259466) (not (is-Intermediate!5573 lt!259466)) (= (select (arr!17117 a!3118) (index!24521 lt!259466)) (select (arr!17117 a!3118) j!142)) (not (= (select (arr!17117 a!3118) (index!24521 lt!259466)) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!259464 () SeekEntryResult!5573)

(assert (=> b!569184 (and (= lt!259464 (Found!5573 j!142)) (or (undefined!6385 lt!259466) (not (is-Intermediate!5573 lt!259466)) (= (select (arr!17117 a!3118) (index!24521 lt!259466)) (select (arr!17117 a!3118) j!142)) (not (= (select (arr!17117 a!3118) (index!24521 lt!259466)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259464 (MissingZero!5573 (index!24521 lt!259466)))))))

(assert (=> b!569184 (= lt!259464 (seekEntryOrOpen!0 (select (arr!17117 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569184 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17848 0))(
  ( (Unit!17849) )
))
(declare-fun lt!259465 () Unit!17848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17848)

(assert (=> b!569184 (= lt!259465 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!359350 () Bool)

(assert (=> start!52182 (=> (not res!359350) (not e!327443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52182 (= res!359350 (validMask!0 mask!3119))))

(assert (=> start!52182 e!327443))

(assert (=> start!52182 true))

(declare-fun array_inv!12891 (array!35659) Bool)

(assert (=> start!52182 (array_inv!12891 a!3118)))

(assert (= (and start!52182 res!359350) b!569183))

(assert (= (and b!569183 res!359351) b!569181))

(assert (= (and b!569181 res!359354) b!569186))

(assert (= (and b!569186 res!359348) b!569185))

(assert (= (and b!569185 res!359349) b!569179))

(assert (= (and b!569179 res!359353) b!569182))

(assert (= (and b!569182 res!359352) b!569178))

(assert (= (and b!569178 res!359346) b!569180))

(assert (= (and b!569180 res!359347) b!569184))

(declare-fun m!547919 () Bool)

(assert (=> b!569182 m!547919))

(declare-fun m!547921 () Bool)

(assert (=> start!52182 m!547921))

(declare-fun m!547923 () Bool)

(assert (=> start!52182 m!547923))

(declare-fun m!547925 () Bool)

(assert (=> b!569179 m!547925))

(declare-fun m!547927 () Bool)

(assert (=> b!569184 m!547927))

(declare-fun m!547929 () Bool)

(assert (=> b!569184 m!547929))

(declare-fun m!547931 () Bool)

(assert (=> b!569184 m!547931))

(declare-fun m!547933 () Bool)

(assert (=> b!569184 m!547933))

(assert (=> b!569184 m!547927))

(declare-fun m!547935 () Bool)

(assert (=> b!569184 m!547935))

(assert (=> b!569181 m!547927))

(assert (=> b!569181 m!547927))

(declare-fun m!547937 () Bool)

(assert (=> b!569181 m!547937))

(declare-fun m!547939 () Bool)

(assert (=> b!569186 m!547939))

(assert (=> b!569180 m!547927))

(declare-fun m!547941 () Bool)

(assert (=> b!569180 m!547941))

(assert (=> b!569180 m!547927))

(declare-fun m!547943 () Bool)

(assert (=> b!569180 m!547943))

(assert (=> b!569180 m!547927))

(declare-fun m!547945 () Bool)

(assert (=> b!569180 m!547945))

(declare-fun m!547947 () Bool)

(assert (=> b!569180 m!547947))

(assert (=> b!569180 m!547945))

(declare-fun m!547949 () Bool)

(assert (=> b!569180 m!547949))

(assert (=> b!569180 m!547945))

(declare-fun m!547951 () Bool)

(assert (=> b!569180 m!547951))

(declare-fun m!547953 () Bool)

(assert (=> b!569185 m!547953))

(declare-fun m!547955 () Bool)

(assert (=> b!569178 m!547955))

(push 1)

