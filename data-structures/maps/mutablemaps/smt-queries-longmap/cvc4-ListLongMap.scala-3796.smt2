; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52152 () Bool)

(assert start!52152)

(declare-fun res!358942 () Bool)

(declare-fun e!327263 () Bool)

(assert (=> start!52152 (=> (not res!358942) (not e!327263))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52152 (= res!358942 (validMask!0 mask!3119))))

(assert (=> start!52152 e!327263))

(assert (=> start!52152 true))

(declare-datatypes ((array!35629 0))(
  ( (array!35630 (arr!17102 (Array (_ BitVec 32) (_ BitVec 64))) (size!17466 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35629)

(declare-fun array_inv!12876 (array!35629) Bool)

(assert (=> start!52152 (array_inv!12876 a!3118)))

(declare-fun b!568773 () Bool)

(declare-fun res!358949 () Bool)

(assert (=> b!568773 (=> (not res!358949) (not e!327263))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568773 (= res!358949 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568774 () Bool)

(declare-fun e!327264 () Bool)

(assert (=> b!568774 (= e!327263 e!327264)))

(declare-fun res!358941 () Bool)

(assert (=> b!568774 (=> (not res!358941) (not e!327264))))

(declare-datatypes ((SeekEntryResult!5558 0))(
  ( (MissingZero!5558 (index!24459 (_ BitVec 32))) (Found!5558 (index!24460 (_ BitVec 32))) (Intermediate!5558 (undefined!6370 Bool) (index!24461 (_ BitVec 32)) (x!53364 (_ BitVec 32))) (Undefined!5558) (MissingVacant!5558 (index!24462 (_ BitVec 32))) )
))
(declare-fun lt!259192 () SeekEntryResult!5558)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568774 (= res!358941 (or (= lt!259192 (MissingZero!5558 i!1132)) (= lt!259192 (MissingVacant!5558 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35629 (_ BitVec 32)) SeekEntryResult!5558)

(assert (=> b!568774 (= lt!259192 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568775 () Bool)

(declare-fun res!358943 () Bool)

(assert (=> b!568775 (=> (not res!358943) (not e!327263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568775 (= res!358943 (validKeyInArray!0 k!1914))))

(declare-fun b!568776 () Bool)

(declare-fun res!358946 () Bool)

(assert (=> b!568776 (=> (not res!358946) (not e!327263))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!568776 (= res!358946 (validKeyInArray!0 (select (arr!17102 a!3118) j!142)))))

(declare-fun b!568777 () Bool)

(declare-fun e!327262 () Bool)

(assert (=> b!568777 (= e!327262 (not true))))

(declare-fun lt!259195 () SeekEntryResult!5558)

(declare-fun lt!259196 () SeekEntryResult!5558)

(assert (=> b!568777 (and (= lt!259196 (Found!5558 j!142)) (or (undefined!6370 lt!259195) (not (is-Intermediate!5558 lt!259195)) (= (select (arr!17102 a!3118) (index!24461 lt!259195)) (select (arr!17102 a!3118) j!142)) (not (= (select (arr!17102 a!3118) (index!24461 lt!259195)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259196 (MissingZero!5558 (index!24461 lt!259195)))))))

(assert (=> b!568777 (= lt!259196 (seekEntryOrOpen!0 (select (arr!17102 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35629 (_ BitVec 32)) Bool)

(assert (=> b!568777 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17818 0))(
  ( (Unit!17819) )
))
(declare-fun lt!259193 () Unit!17818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35629 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17818)

(assert (=> b!568777 (= lt!259193 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568778 () Bool)

(declare-fun res!358944 () Bool)

(assert (=> b!568778 (=> (not res!358944) (not e!327263))))

(assert (=> b!568778 (= res!358944 (and (= (size!17466 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17466 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17466 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568779 () Bool)

(declare-fun res!358947 () Bool)

(assert (=> b!568779 (=> (not res!358947) (not e!327264))))

(declare-datatypes ((List!11235 0))(
  ( (Nil!11232) (Cons!11231 (h!12252 (_ BitVec 64)) (t!17471 List!11235)) )
))
(declare-fun arrayNoDuplicates!0 (array!35629 (_ BitVec 32) List!11235) Bool)

(assert (=> b!568779 (= res!358947 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11232))))

(declare-fun b!568780 () Bool)

(assert (=> b!568780 (= e!327264 e!327262)))

(declare-fun res!358948 () Bool)

(assert (=> b!568780 (=> (not res!358948) (not e!327262))))

(declare-fun lt!259194 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35629 (_ BitVec 32)) SeekEntryResult!5558)

(assert (=> b!568780 (= res!358948 (= lt!259195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259194 (select (store (arr!17102 a!3118) i!1132 k!1914) j!142) (array!35630 (store (arr!17102 a!3118) i!1132 k!1914) (size!17466 a!3118)) mask!3119)))))

(declare-fun lt!259191 () (_ BitVec 32))

(assert (=> b!568780 (= lt!259195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259191 (select (arr!17102 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568780 (= lt!259194 (toIndex!0 (select (store (arr!17102 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568780 (= lt!259191 (toIndex!0 (select (arr!17102 a!3118) j!142) mask!3119))))

(declare-fun b!568781 () Bool)

(declare-fun res!358945 () Bool)

(assert (=> b!568781 (=> (not res!358945) (not e!327264))))

(assert (=> b!568781 (= res!358945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52152 res!358942) b!568778))

(assert (= (and b!568778 res!358944) b!568776))

(assert (= (and b!568776 res!358946) b!568775))

(assert (= (and b!568775 res!358943) b!568773))

(assert (= (and b!568773 res!358949) b!568774))

(assert (= (and b!568774 res!358941) b!568781))

(assert (= (and b!568781 res!358945) b!568779))

(assert (= (and b!568779 res!358947) b!568780))

(assert (= (and b!568780 res!358948) b!568777))

(declare-fun m!547349 () Bool)

(assert (=> b!568779 m!547349))

(declare-fun m!547351 () Bool)

(assert (=> b!568780 m!547351))

(declare-fun m!547353 () Bool)

(assert (=> b!568780 m!547353))

(assert (=> b!568780 m!547351))

(declare-fun m!547355 () Bool)

(assert (=> b!568780 m!547355))

(assert (=> b!568780 m!547351))

(declare-fun m!547357 () Bool)

(assert (=> b!568780 m!547357))

(declare-fun m!547359 () Bool)

(assert (=> b!568780 m!547359))

(assert (=> b!568780 m!547355))

(declare-fun m!547361 () Bool)

(assert (=> b!568780 m!547361))

(assert (=> b!568780 m!547355))

(declare-fun m!547363 () Bool)

(assert (=> b!568780 m!547363))

(declare-fun m!547365 () Bool)

(assert (=> start!52152 m!547365))

(declare-fun m!547367 () Bool)

(assert (=> start!52152 m!547367))

(declare-fun m!547369 () Bool)

(assert (=> b!568777 m!547369))

(assert (=> b!568777 m!547351))

(declare-fun m!547371 () Bool)

(assert (=> b!568777 m!547371))

(declare-fun m!547373 () Bool)

(assert (=> b!568777 m!547373))

(assert (=> b!568777 m!547351))

(declare-fun m!547375 () Bool)

(assert (=> b!568777 m!547375))

(declare-fun m!547377 () Bool)

(assert (=> b!568781 m!547377))

(assert (=> b!568776 m!547351))

(assert (=> b!568776 m!547351))

(declare-fun m!547379 () Bool)

(assert (=> b!568776 m!547379))

(declare-fun m!547381 () Bool)

(assert (=> b!568773 m!547381))

(declare-fun m!547383 () Bool)

(assert (=> b!568775 m!547383))

(declare-fun m!547385 () Bool)

(assert (=> b!568774 m!547385))

(push 1)

