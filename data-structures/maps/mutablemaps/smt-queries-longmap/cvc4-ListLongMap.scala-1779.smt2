; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32386 () Bool)

(assert start!32386)

(declare-fun b!322473 () Bool)

(declare-datatypes ((Unit!9885 0))(
  ( (Unit!9886) )
))
(declare-fun e!199535 () Unit!9885)

(declare-fun Unit!9887 () Unit!9885)

(assert (=> b!322473 (= e!199535 Unit!9887)))

(declare-fun b!322474 () Bool)

(declare-fun e!199540 () Bool)

(assert (=> b!322474 (= e!199540 (not true))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322474 (= index!1840 resIndex!58)))

(declare-fun lt!156455 () Unit!9885)

(assert (=> b!322474 (= lt!156455 e!199535)))

(declare-fun c!50638 () Bool)

(assert (=> b!322474 (= c!50638 (not (= resIndex!58 index!1840)))))

(declare-fun b!322475 () Bool)

(declare-fun res!176455 () Bool)

(declare-fun e!199537 () Bool)

(assert (=> b!322475 (=> (not res!176455) (not e!199537))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322475 (= res!176455 (validKeyInArray!0 k!2497))))

(declare-fun b!322476 () Bool)

(declare-fun res!176460 () Bool)

(assert (=> b!322476 (=> (not res!176460) (not e!199540))))

(declare-datatypes ((array!16521 0))(
  ( (array!16522 (arr!7815 (Array (_ BitVec 32) (_ BitVec 64))) (size!8167 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16521)

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322476 (= res!176460 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7815 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322477 () Bool)

(declare-fun res!176459 () Bool)

(assert (=> b!322477 (=> (not res!176459) (not e!199537))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322477 (= res!176459 (and (= (size!8167 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8167 a!3305))))))

(declare-fun b!322478 () Bool)

(declare-fun res!176454 () Bool)

(assert (=> b!322478 (=> (not res!176454) (not e!199540))))

(assert (=> b!322478 (= res!176454 (and (= (select (arr!7815 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8167 a!3305))))))

(declare-fun res!176458 () Bool)

(assert (=> start!32386 (=> (not res!176458) (not e!199537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32386 (= res!176458 (validMask!0 mask!3777))))

(assert (=> start!32386 e!199537))

(declare-fun array_inv!5769 (array!16521) Bool)

(assert (=> start!32386 (array_inv!5769 a!3305)))

(assert (=> start!32386 true))

(declare-fun b!322479 () Bool)

(declare-fun res!176456 () Bool)

(assert (=> b!322479 (=> (not res!176456) (not e!199537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16521 (_ BitVec 32)) Bool)

(assert (=> b!322479 (= res!176456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322480 () Bool)

(declare-fun e!199539 () Unit!9885)

(declare-fun Unit!9888 () Unit!9885)

(assert (=> b!322480 (= e!199539 Unit!9888)))

(declare-fun b!322481 () Bool)

(declare-fun Unit!9889 () Unit!9885)

(assert (=> b!322481 (= e!199539 Unit!9889)))

(assert (=> b!322481 false))

(declare-fun b!322482 () Bool)

(declare-fun e!199538 () Unit!9885)

(assert (=> b!322482 (= e!199535 e!199538)))

(declare-fun c!50639 () Bool)

(assert (=> b!322482 (= c!50639 (or (= (select (arr!7815 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7815 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322483 () Bool)

(declare-fun res!176461 () Bool)

(assert (=> b!322483 (=> (not res!176461) (not e!199537))))

(declare-fun arrayContainsKey!0 (array!16521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322483 (= res!176461 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322484 () Bool)

(assert (=> b!322484 false))

(declare-fun lt!156454 () Unit!9885)

(assert (=> b!322484 (= lt!156454 e!199539)))

(declare-fun c!50637 () Bool)

(declare-datatypes ((SeekEntryResult!2957 0))(
  ( (MissingZero!2957 (index!14004 (_ BitVec 32))) (Found!2957 (index!14005 (_ BitVec 32))) (Intermediate!2957 (undefined!3769 Bool) (index!14006 (_ BitVec 32)) (x!32228 (_ BitVec 32))) (Undefined!2957) (MissingVacant!2957 (index!14007 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16521 (_ BitVec 32)) SeekEntryResult!2957)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322484 (= c!50637 (is-Intermediate!2957 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9890 () Unit!9885)

(assert (=> b!322484 (= e!199538 Unit!9890)))

(declare-fun b!322485 () Bool)

(declare-fun res!176463 () Bool)

(assert (=> b!322485 (=> (not res!176463) (not e!199540))))

(declare-fun lt!156453 () SeekEntryResult!2957)

(assert (=> b!322485 (= res!176463 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156453))))

(declare-fun b!322486 () Bool)

(assert (=> b!322486 (= e!199537 e!199540)))

(declare-fun res!176462 () Bool)

(assert (=> b!322486 (=> (not res!176462) (not e!199540))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322486 (= res!176462 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156453))))

(assert (=> b!322486 (= lt!156453 (Intermediate!2957 false resIndex!58 resX!58))))

(declare-fun b!322487 () Bool)

(declare-fun res!176457 () Bool)

(assert (=> b!322487 (=> (not res!176457) (not e!199537))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16521 (_ BitVec 32)) SeekEntryResult!2957)

(assert (=> b!322487 (= res!176457 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2957 i!1250)))))

(declare-fun b!322488 () Bool)

(assert (=> b!322488 false))

(declare-fun Unit!9891 () Unit!9885)

(assert (=> b!322488 (= e!199538 Unit!9891)))

(assert (= (and start!32386 res!176458) b!322477))

(assert (= (and b!322477 res!176459) b!322475))

(assert (= (and b!322475 res!176455) b!322483))

(assert (= (and b!322483 res!176461) b!322487))

(assert (= (and b!322487 res!176457) b!322479))

(assert (= (and b!322479 res!176456) b!322486))

(assert (= (and b!322486 res!176462) b!322478))

(assert (= (and b!322478 res!176454) b!322485))

(assert (= (and b!322485 res!176463) b!322476))

(assert (= (and b!322476 res!176460) b!322474))

(assert (= (and b!322474 c!50638) b!322482))

(assert (= (and b!322474 (not c!50638)) b!322473))

(assert (= (and b!322482 c!50639) b!322488))

(assert (= (and b!322482 (not c!50639)) b!322484))

(assert (= (and b!322484 c!50637) b!322480))

(assert (= (and b!322484 (not c!50637)) b!322481))

(declare-fun m!330245 () Bool)

(assert (=> b!322479 m!330245))

(declare-fun m!330247 () Bool)

(assert (=> b!322478 m!330247))

(declare-fun m!330249 () Bool)

(assert (=> b!322476 m!330249))

(declare-fun m!330251 () Bool)

(assert (=> start!32386 m!330251))

(declare-fun m!330253 () Bool)

(assert (=> start!32386 m!330253))

(declare-fun m!330255 () Bool)

(assert (=> b!322483 m!330255))

(declare-fun m!330257 () Bool)

(assert (=> b!322485 m!330257))

(declare-fun m!330259 () Bool)

(assert (=> b!322487 m!330259))

(assert (=> b!322482 m!330249))

(declare-fun m!330261 () Bool)

(assert (=> b!322475 m!330261))

(declare-fun m!330263 () Bool)

(assert (=> b!322484 m!330263))

(assert (=> b!322484 m!330263))

(declare-fun m!330265 () Bool)

(assert (=> b!322484 m!330265))

(declare-fun m!330267 () Bool)

(assert (=> b!322486 m!330267))

(assert (=> b!322486 m!330267))

(declare-fun m!330269 () Bool)

(assert (=> b!322486 m!330269))

(push 1)

(assert (not b!322483))

