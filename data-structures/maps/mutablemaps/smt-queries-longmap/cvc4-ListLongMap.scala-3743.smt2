; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51474 () Bool)

(assert start!51474)

(declare-fun b!562371 () Bool)

(declare-fun res!353680 () Bool)

(declare-fun e!324105 () Bool)

(assert (=> b!562371 (=> (not res!353680) (not e!324105))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35293 0))(
  ( (array!35294 (arr!16943 (Array (_ BitVec 32) (_ BitVec 64))) (size!17307 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35293)

(assert (=> b!562371 (= res!353680 (and (= (size!17307 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17307 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17307 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562372 () Bool)

(declare-fun e!324100 () Bool)

(declare-fun e!324103 () Bool)

(assert (=> b!562372 (= e!324100 e!324103)))

(declare-fun res!353675 () Bool)

(assert (=> b!562372 (=> res!353675 e!324103)))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5399 0))(
  ( (MissingZero!5399 (index!23823 (_ BitVec 32))) (Found!5399 (index!23824 (_ BitVec 32))) (Intermediate!5399 (undefined!6211 Bool) (index!23825 (_ BitVec 32)) (x!52745 (_ BitVec 32))) (Undefined!5399) (MissingVacant!5399 (index!23826 (_ BitVec 32))) )
))
(declare-fun lt!256356 () SeekEntryResult!5399)

(declare-fun lt!256348 () SeekEntryResult!5399)

(declare-fun lt!256350 () SeekEntryResult!5399)

(declare-fun lt!256353 () (_ BitVec 64))

(assert (=> b!562372 (= res!353675 (or (bvslt (index!23825 lt!256350) #b00000000000000000000000000000000) (bvsge (index!23825 lt!256350) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52745 lt!256350) #b01111111111111111111111111111110) (bvslt (x!52745 lt!256350) #b00000000000000000000000000000000) (not (= lt!256353 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16943 a!3118) i!1132 k!1914) (index!23825 lt!256350)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256348 lt!256356))))))

(declare-fun lt!256359 () SeekEntryResult!5399)

(declare-fun lt!256354 () SeekEntryResult!5399)

(assert (=> b!562372 (= lt!256359 lt!256354)))

(declare-fun lt!256355 () (_ BitVec 64))

(declare-fun lt!256360 () array!35293)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35293 (_ BitVec 32)) SeekEntryResult!5399)

(assert (=> b!562372 (= lt!256354 (seekKeyOrZeroReturnVacant!0 (x!52745 lt!256350) (index!23825 lt!256350) (index!23825 lt!256350) lt!256355 lt!256360 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35293 (_ BitVec 32)) SeekEntryResult!5399)

(assert (=> b!562372 (= lt!256359 (seekEntryOrOpen!0 lt!256355 lt!256360 mask!3119))))

(declare-fun lt!256358 () SeekEntryResult!5399)

(assert (=> b!562372 (= lt!256358 lt!256348)))

(assert (=> b!562372 (= lt!256348 (seekKeyOrZeroReturnVacant!0 (x!52745 lt!256350) (index!23825 lt!256350) (index!23825 lt!256350) (select (arr!16943 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562373 () Bool)

(declare-fun res!353674 () Bool)

(declare-fun e!324102 () Bool)

(assert (=> b!562373 (=> (not res!353674) (not e!324102))))

(declare-datatypes ((List!11076 0))(
  ( (Nil!11073) (Cons!11072 (h!12075 (_ BitVec 64)) (t!17312 List!11076)) )
))
(declare-fun arrayNoDuplicates!0 (array!35293 (_ BitVec 32) List!11076) Bool)

(assert (=> b!562373 (= res!353674 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11073))))

(declare-fun b!562375 () Bool)

(declare-fun res!353676 () Bool)

(assert (=> b!562375 (=> (not res!353676) (not e!324105))))

(declare-fun arrayContainsKey!0 (array!35293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562375 (= res!353676 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562376 () Bool)

(declare-fun e!324101 () Bool)

(assert (=> b!562376 (= e!324101 e!324100)))

(declare-fun res!353681 () Bool)

(assert (=> b!562376 (=> res!353681 e!324100)))

(assert (=> b!562376 (= res!353681 (or (= lt!256353 (select (arr!16943 a!3118) j!142)) (= lt!256353 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562376 (= lt!256353 (select (arr!16943 a!3118) (index!23825 lt!256350)))))

(declare-fun b!562377 () Bool)

(declare-fun res!353682 () Bool)

(assert (=> b!562377 (=> (not res!353682) (not e!324102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35293 (_ BitVec 32)) Bool)

(assert (=> b!562377 (= res!353682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562378 () Bool)

(declare-fun e!324106 () Bool)

(assert (=> b!562378 (= e!324102 e!324106)))

(declare-fun res!353677 () Bool)

(assert (=> b!562378 (=> (not res!353677) (not e!324106))))

(declare-fun lt!256357 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35293 (_ BitVec 32)) SeekEntryResult!5399)

(assert (=> b!562378 (= res!353677 (= lt!256350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256357 lt!256355 lt!256360 mask!3119)))))

(declare-fun lt!256349 () (_ BitVec 32))

(assert (=> b!562378 (= lt!256350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256349 (select (arr!16943 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562378 (= lt!256357 (toIndex!0 lt!256355 mask!3119))))

(assert (=> b!562378 (= lt!256355 (select (store (arr!16943 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562378 (= lt!256349 (toIndex!0 (select (arr!16943 a!3118) j!142) mask!3119))))

(assert (=> b!562378 (= lt!256360 (array!35294 (store (arr!16943 a!3118) i!1132 k!1914) (size!17307 a!3118)))))

(declare-fun b!562379 () Bool)

(declare-fun res!353673 () Bool)

(assert (=> b!562379 (=> (not res!353673) (not e!324105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562379 (= res!353673 (validKeyInArray!0 (select (arr!16943 a!3118) j!142)))))

(declare-fun b!562380 () Bool)

(declare-fun res!353679 () Bool)

(assert (=> b!562380 (=> (not res!353679) (not e!324105))))

(assert (=> b!562380 (= res!353679 (validKeyInArray!0 k!1914))))

(declare-fun b!562381 () Bool)

(assert (=> b!562381 (= e!324105 e!324102)))

(declare-fun res!353684 () Bool)

(assert (=> b!562381 (=> (not res!353684) (not e!324102))))

(declare-fun lt!256351 () SeekEntryResult!5399)

(assert (=> b!562381 (= res!353684 (or (= lt!256351 (MissingZero!5399 i!1132)) (= lt!256351 (MissingVacant!5399 i!1132))))))

(assert (=> b!562381 (= lt!256351 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562382 () Bool)

(assert (=> b!562382 (= e!324103 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562382 (= lt!256348 lt!256354)))

(declare-datatypes ((Unit!17572 0))(
  ( (Unit!17573) )
))
(declare-fun lt!256352 () Unit!17572)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35293 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17572)

(assert (=> b!562382 (= lt!256352 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52745 lt!256350) (index!23825 lt!256350) (index!23825 lt!256350) mask!3119))))

(declare-fun res!353678 () Bool)

(assert (=> start!51474 (=> (not res!353678) (not e!324105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51474 (= res!353678 (validMask!0 mask!3119))))

(assert (=> start!51474 e!324105))

(assert (=> start!51474 true))

(declare-fun array_inv!12717 (array!35293) Bool)

(assert (=> start!51474 (array_inv!12717 a!3118)))

(declare-fun b!562374 () Bool)

(assert (=> b!562374 (= e!324106 (not e!324101))))

(declare-fun res!353683 () Bool)

(assert (=> b!562374 (=> res!353683 e!324101)))

(assert (=> b!562374 (= res!353683 (or (undefined!6211 lt!256350) (not (is-Intermediate!5399 lt!256350))))))

(assert (=> b!562374 (= lt!256358 lt!256356)))

(assert (=> b!562374 (= lt!256356 (Found!5399 j!142))))

(assert (=> b!562374 (= lt!256358 (seekEntryOrOpen!0 (select (arr!16943 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562374 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256361 () Unit!17572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17572)

(assert (=> b!562374 (= lt!256361 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51474 res!353678) b!562371))

(assert (= (and b!562371 res!353680) b!562379))

(assert (= (and b!562379 res!353673) b!562380))

(assert (= (and b!562380 res!353679) b!562375))

(assert (= (and b!562375 res!353676) b!562381))

(assert (= (and b!562381 res!353684) b!562377))

(assert (= (and b!562377 res!353682) b!562373))

(assert (= (and b!562373 res!353674) b!562378))

(assert (= (and b!562378 res!353677) b!562374))

(assert (= (and b!562374 (not res!353683)) b!562376))

(assert (= (and b!562376 (not res!353681)) b!562372))

(assert (= (and b!562372 (not res!353675)) b!562382))

(declare-fun m!540487 () Bool)

(assert (=> b!562376 m!540487))

(declare-fun m!540489 () Bool)

(assert (=> b!562376 m!540489))

(assert (=> b!562374 m!540487))

(assert (=> b!562374 m!540487))

(declare-fun m!540491 () Bool)

(assert (=> b!562374 m!540491))

(declare-fun m!540493 () Bool)

(assert (=> b!562374 m!540493))

(declare-fun m!540495 () Bool)

(assert (=> b!562374 m!540495))

(declare-fun m!540497 () Bool)

(assert (=> b!562380 m!540497))

(assert (=> b!562379 m!540487))

(assert (=> b!562379 m!540487))

(declare-fun m!540499 () Bool)

(assert (=> b!562379 m!540499))

(declare-fun m!540501 () Bool)

(assert (=> b!562382 m!540501))

(declare-fun m!540503 () Bool)

(assert (=> b!562375 m!540503))

(declare-fun m!540505 () Bool)

(assert (=> b!562377 m!540505))

(declare-fun m!540507 () Bool)

(assert (=> b!562381 m!540507))

(declare-fun m!540509 () Bool)

(assert (=> start!51474 m!540509))

(declare-fun m!540511 () Bool)

(assert (=> start!51474 m!540511))

(declare-fun m!540513 () Bool)

(assert (=> b!562373 m!540513))

(assert (=> b!562378 m!540487))

(declare-fun m!540515 () Bool)

(assert (=> b!562378 m!540515))

(declare-fun m!540517 () Bool)

(assert (=> b!562378 m!540517))

(assert (=> b!562378 m!540487))

(assert (=> b!562378 m!540487))

(declare-fun m!540519 () Bool)

(assert (=> b!562378 m!540519))

(declare-fun m!540521 () Bool)

(assert (=> b!562378 m!540521))

(declare-fun m!540523 () Bool)

(assert (=> b!562378 m!540523))

(declare-fun m!540525 () Bool)

(assert (=> b!562378 m!540525))

(assert (=> b!562372 m!540487))

(declare-fun m!540527 () Bool)

(assert (=> b!562372 m!540527))

(assert (=> b!562372 m!540487))

(assert (=> b!562372 m!540523))

(declare-fun m!540529 () Bool)

(assert (=> b!562372 m!540529))

(declare-fun m!540531 () Bool)

(assert (=> b!562372 m!540531))

(declare-fun m!540533 () Bool)

(assert (=> b!562372 m!540533))

(push 1)

(assert (not b!562372))

(assert (not b!562381))

(assert (not b!562380))

(assert (not b!562373))

(assert (not b!562375))

(assert (not b!562374))

(assert (not b!562379))

(assert (not b!562382))

(assert (not b!562378))

