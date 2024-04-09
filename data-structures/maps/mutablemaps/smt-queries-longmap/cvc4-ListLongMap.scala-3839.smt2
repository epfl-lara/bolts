; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52806 () Bool)

(assert start!52806)

(declare-fun b!575466 () Bool)

(declare-fun e!331124 () Bool)

(declare-fun e!331121 () Bool)

(assert (=> b!575466 (= e!331124 e!331121)))

(declare-fun res!364042 () Bool)

(assert (=> b!575466 (=> (not res!364042) (not e!331121))))

(declare-datatypes ((SeekEntryResult!5687 0))(
  ( (MissingZero!5687 (index!24975 (_ BitVec 32))) (Found!5687 (index!24976 (_ BitVec 32))) (Intermediate!5687 (undefined!6499 Bool) (index!24977 (_ BitVec 32)) (x!53891 (_ BitVec 32))) (Undefined!5687) (MissingVacant!5687 (index!24978 (_ BitVec 32))) )
))
(declare-fun lt!263255 () SeekEntryResult!5687)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575466 (= res!364042 (or (= lt!263255 (MissingZero!5687 i!1132)) (= lt!263255 (MissingVacant!5687 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35905 0))(
  ( (array!35906 (arr!17231 (Array (_ BitVec 32) (_ BitVec 64))) (size!17595 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35905)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35905 (_ BitVec 32)) SeekEntryResult!5687)

(assert (=> b!575466 (= lt!263255 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!575467 () Bool)

(declare-fun e!331123 () Bool)

(declare-fun e!331122 () Bool)

(assert (=> b!575467 (= e!331123 (not e!331122))))

(declare-fun res!364036 () Bool)

(assert (=> b!575467 (=> res!364036 e!331122)))

(declare-fun lt!263253 () SeekEntryResult!5687)

(assert (=> b!575467 (= res!364036 (or (undefined!6499 lt!263253) (not (is-Intermediate!5687 lt!263253))))))

(declare-fun lt!263254 () SeekEntryResult!5687)

(declare-fun lt!263249 () SeekEntryResult!5687)

(assert (=> b!575467 (= lt!263254 lt!263249)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!575467 (= lt!263249 (Found!5687 j!142))))

(assert (=> b!575467 (= lt!263254 (seekEntryOrOpen!0 (select (arr!17231 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35905 (_ BitVec 32)) Bool)

(assert (=> b!575467 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18076 0))(
  ( (Unit!18077) )
))
(declare-fun lt!263247 () Unit!18076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18076)

(assert (=> b!575467 (= lt!263247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575468 () Bool)

(declare-fun res!364043 () Bool)

(assert (=> b!575468 (=> (not res!364043) (not e!331124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575468 (= res!364043 (validKeyInArray!0 (select (arr!17231 a!3118) j!142)))))

(declare-fun b!575469 () Bool)

(declare-fun res!364037 () Bool)

(assert (=> b!575469 (=> (not res!364037) (not e!331124))))

(assert (=> b!575469 (= res!364037 (and (= (size!17595 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17595 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17595 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575470 () Bool)

(declare-fun res!364034 () Bool)

(assert (=> b!575470 (=> (not res!364034) (not e!331124))))

(declare-fun arrayContainsKey!0 (array!35905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575470 (= res!364034 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!364040 () Bool)

(assert (=> start!52806 (=> (not res!364040) (not e!331124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52806 (= res!364040 (validMask!0 mask!3119))))

(assert (=> start!52806 e!331124))

(assert (=> start!52806 true))

(declare-fun array_inv!13005 (array!35905) Bool)

(assert (=> start!52806 (array_inv!13005 a!3118)))

(declare-fun b!575471 () Bool)

(declare-fun res!364033 () Bool)

(assert (=> b!575471 (=> (not res!364033) (not e!331121))))

(declare-datatypes ((List!11364 0))(
  ( (Nil!11361) (Cons!11360 (h!12399 (_ BitVec 64)) (t!17600 List!11364)) )
))
(declare-fun arrayNoDuplicates!0 (array!35905 (_ BitVec 32) List!11364) Bool)

(assert (=> b!575471 (= res!364033 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11361))))

(declare-fun b!575472 () Bool)

(declare-fun res!364041 () Bool)

(assert (=> b!575472 (=> (not res!364041) (not e!331121))))

(assert (=> b!575472 (= res!364041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575473 () Bool)

(declare-fun res!364035 () Bool)

(assert (=> b!575473 (=> (not res!364035) (not e!331124))))

(assert (=> b!575473 (= res!364035 (validKeyInArray!0 k!1914))))

(declare-fun b!575474 () Bool)

(assert (=> b!575474 (= e!331121 e!331123)))

(declare-fun res!364032 () Bool)

(assert (=> b!575474 (=> (not res!364032) (not e!331123))))

(declare-fun lt!263246 () (_ BitVec 64))

(declare-fun lt!263258 () array!35905)

(declare-fun lt!263250 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35905 (_ BitVec 32)) SeekEntryResult!5687)

(assert (=> b!575474 (= res!364032 (= lt!263253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263250 lt!263246 lt!263258 mask!3119)))))

(declare-fun lt!263252 () (_ BitVec 32))

(assert (=> b!575474 (= lt!263253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263252 (select (arr!17231 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575474 (= lt!263250 (toIndex!0 lt!263246 mask!3119))))

(assert (=> b!575474 (= lt!263246 (select (store (arr!17231 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!575474 (= lt!263252 (toIndex!0 (select (arr!17231 a!3118) j!142) mask!3119))))

(assert (=> b!575474 (= lt!263258 (array!35906 (store (arr!17231 a!3118) i!1132 k!1914) (size!17595 a!3118)))))

(declare-fun b!575475 () Bool)

(declare-fun e!331125 () Bool)

(assert (=> b!575475 (= e!331125 true)))

(declare-fun lt!263251 () SeekEntryResult!5687)

(declare-fun lt!263256 () SeekEntryResult!5687)

(assert (=> b!575475 (= lt!263251 lt!263256)))

(declare-fun lt!263257 () Unit!18076)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35905 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18076)

(assert (=> b!575475 (= lt!263257 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!53891 lt!263253) (index!24977 lt!263253) (index!24977 lt!263253) mask!3119))))

(declare-fun b!575476 () Bool)

(declare-fun e!331126 () Bool)

(assert (=> b!575476 (= e!331126 e!331125)))

(declare-fun res!364039 () Bool)

(assert (=> b!575476 (=> res!364039 e!331125)))

(declare-fun lt!263248 () (_ BitVec 64))

(assert (=> b!575476 (= res!364039 (or (bvslt (index!24977 lt!263253) #b00000000000000000000000000000000) (bvsge (index!24977 lt!263253) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53891 lt!263253) #b01111111111111111111111111111110) (bvslt (x!53891 lt!263253) #b00000000000000000000000000000000) (not (= lt!263248 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17231 a!3118) i!1132 k!1914) (index!24977 lt!263253)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!263251 lt!263249))))))

(declare-fun lt!263245 () SeekEntryResult!5687)

(assert (=> b!575476 (= lt!263245 lt!263256)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35905 (_ BitVec 32)) SeekEntryResult!5687)

(assert (=> b!575476 (= lt!263256 (seekKeyOrZeroReturnVacant!0 (x!53891 lt!263253) (index!24977 lt!263253) (index!24977 lt!263253) lt!263246 lt!263258 mask!3119))))

(assert (=> b!575476 (= lt!263245 (seekEntryOrOpen!0 lt!263246 lt!263258 mask!3119))))

(assert (=> b!575476 (= lt!263254 lt!263251)))

(assert (=> b!575476 (= lt!263251 (seekKeyOrZeroReturnVacant!0 (x!53891 lt!263253) (index!24977 lt!263253) (index!24977 lt!263253) (select (arr!17231 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!575477 () Bool)

(assert (=> b!575477 (= e!331122 e!331126)))

(declare-fun res!364038 () Bool)

(assert (=> b!575477 (=> res!364038 e!331126)))

(assert (=> b!575477 (= res!364038 (or (= lt!263248 (select (arr!17231 a!3118) j!142)) (= lt!263248 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575477 (= lt!263248 (select (arr!17231 a!3118) (index!24977 lt!263253)))))

(assert (= (and start!52806 res!364040) b!575469))

(assert (= (and b!575469 res!364037) b!575468))

(assert (= (and b!575468 res!364043) b!575473))

(assert (= (and b!575473 res!364035) b!575470))

(assert (= (and b!575470 res!364034) b!575466))

(assert (= (and b!575466 res!364042) b!575472))

(assert (= (and b!575472 res!364041) b!575471))

(assert (= (and b!575471 res!364033) b!575474))

(assert (= (and b!575474 res!364032) b!575467))

(assert (= (and b!575467 (not res!364036)) b!575477))

(assert (= (and b!575477 (not res!364038)) b!575476))

(assert (= (and b!575476 (not res!364039)) b!575475))

(declare-fun m!554431 () Bool)

(assert (=> b!575473 m!554431))

(declare-fun m!554433 () Bool)

(assert (=> b!575472 m!554433))

(declare-fun m!554435 () Bool)

(assert (=> b!575476 m!554435))

(declare-fun m!554437 () Bool)

(assert (=> b!575476 m!554437))

(declare-fun m!554439 () Bool)

(assert (=> b!575476 m!554439))

(declare-fun m!554441 () Bool)

(assert (=> b!575476 m!554441))

(declare-fun m!554443 () Bool)

(assert (=> b!575476 m!554443))

(assert (=> b!575476 m!554437))

(declare-fun m!554445 () Bool)

(assert (=> b!575476 m!554445))

(assert (=> b!575477 m!554437))

(declare-fun m!554447 () Bool)

(assert (=> b!575477 m!554447))

(declare-fun m!554449 () Bool)

(assert (=> start!52806 m!554449))

(declare-fun m!554451 () Bool)

(assert (=> start!52806 m!554451))

(declare-fun m!554453 () Bool)

(assert (=> b!575475 m!554453))

(assert (=> b!575467 m!554437))

(assert (=> b!575467 m!554437))

(declare-fun m!554455 () Bool)

(assert (=> b!575467 m!554455))

(declare-fun m!554457 () Bool)

(assert (=> b!575467 m!554457))

(declare-fun m!554459 () Bool)

(assert (=> b!575467 m!554459))

(declare-fun m!554461 () Bool)

(assert (=> b!575466 m!554461))

(declare-fun m!554463 () Bool)

(assert (=> b!575470 m!554463))

(assert (=> b!575468 m!554437))

(assert (=> b!575468 m!554437))

(declare-fun m!554465 () Bool)

(assert (=> b!575468 m!554465))

(assert (=> b!575474 m!554437))

(declare-fun m!554467 () Bool)

(assert (=> b!575474 m!554467))

(declare-fun m!554469 () Bool)

(assert (=> b!575474 m!554469))

(assert (=> b!575474 m!554437))

(assert (=> b!575474 m!554437))

(declare-fun m!554471 () Bool)

(assert (=> b!575474 m!554471))

(declare-fun m!554473 () Bool)

(assert (=> b!575474 m!554473))

(declare-fun m!554475 () Bool)

(assert (=> b!575474 m!554475))

(assert (=> b!575474 m!554443))

(declare-fun m!554477 () Bool)

(assert (=> b!575471 m!554477))

(push 1)

