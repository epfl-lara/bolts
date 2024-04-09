; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32388 () Bool)

(assert start!32388)

(declare-fun b!322521 () Bool)

(declare-fun res!176489 () Bool)

(declare-fun e!199556 () Bool)

(assert (=> b!322521 (=> (not res!176489) (not e!199556))))

(declare-datatypes ((array!16523 0))(
  ( (array!16524 (arr!7816 (Array (_ BitVec 32) (_ BitVec 64))) (size!8168 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16523)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2958 0))(
  ( (MissingZero!2958 (index!14008 (_ BitVec 32))) (Found!2958 (index!14009 (_ BitVec 32))) (Intermediate!2958 (undefined!3770 Bool) (index!14010 (_ BitVec 32)) (x!32237 (_ BitVec 32))) (Undefined!2958) (MissingVacant!2958 (index!14011 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16523 (_ BitVec 32)) SeekEntryResult!2958)

(assert (=> b!322521 (= res!176489 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2958 i!1250)))))

(declare-fun b!322522 () Bool)

(declare-fun e!199555 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!322522 (= e!199555 (not (or (not (= (select (arr!7816 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322522 (= index!1840 resIndex!58)))

(declare-datatypes ((Unit!9892 0))(
  ( (Unit!9893) )
))
(declare-fun lt!156464 () Unit!9892)

(declare-fun e!199557 () Unit!9892)

(assert (=> b!322522 (= lt!156464 e!199557)))

(declare-fun c!50647 () Bool)

(assert (=> b!322522 (= c!50647 (not (= resIndex!58 index!1840)))))

(declare-fun b!322523 () Bool)

(declare-fun res!176488 () Bool)

(assert (=> b!322523 (=> (not res!176488) (not e!199555))))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!156463 () SeekEntryResult!2958)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16523 (_ BitVec 32)) SeekEntryResult!2958)

(assert (=> b!322523 (= res!176488 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156463))))

(declare-fun b!322524 () Bool)

(assert (=> b!322524 false))

(declare-fun e!199553 () Unit!9892)

(declare-fun Unit!9894 () Unit!9892)

(assert (=> b!322524 (= e!199553 Unit!9894)))

(declare-fun b!322525 () Bool)

(assert (=> b!322525 false))

(declare-fun lt!156462 () Unit!9892)

(declare-fun e!199554 () Unit!9892)

(assert (=> b!322525 (= lt!156462 e!199554)))

(declare-fun c!50646 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322525 (= c!50646 (is-Intermediate!2958 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9895 () Unit!9892)

(assert (=> b!322525 (= e!199553 Unit!9895)))

(declare-fun b!322526 () Bool)

(assert (=> b!322526 (= e!199556 e!199555)))

(declare-fun res!176493 () Bool)

(assert (=> b!322526 (=> (not res!176493) (not e!199555))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322526 (= res!176493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156463))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322526 (= lt!156463 (Intermediate!2958 false resIndex!58 resX!58))))

(declare-fun b!322527 () Bool)

(declare-fun Unit!9896 () Unit!9892)

(assert (=> b!322527 (= e!199554 Unit!9896)))

(assert (=> b!322527 false))

(declare-fun b!322528 () Bool)

(declare-fun res!176485 () Bool)

(assert (=> b!322528 (=> (not res!176485) (not e!199556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322528 (= res!176485 (validKeyInArray!0 k!2497))))

(declare-fun b!322530 () Bool)

(declare-fun res!176484 () Bool)

(assert (=> b!322530 (=> (not res!176484) (not e!199556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16523 (_ BitVec 32)) Bool)

(assert (=> b!322530 (= res!176484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322531 () Bool)

(declare-fun res!176486 () Bool)

(assert (=> b!322531 (=> (not res!176486) (not e!199556))))

(assert (=> b!322531 (= res!176486 (and (= (size!8168 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8168 a!3305))))))

(declare-fun b!322532 () Bool)

(assert (=> b!322532 (= e!199557 e!199553)))

(declare-fun c!50648 () Bool)

(assert (=> b!322532 (= c!50648 (or (= (select (arr!7816 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7816 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322533 () Bool)

(declare-fun res!176487 () Bool)

(assert (=> b!322533 (=> (not res!176487) (not e!199556))))

(declare-fun arrayContainsKey!0 (array!16523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322533 (= res!176487 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322534 () Bool)

(declare-fun res!176491 () Bool)

(assert (=> b!322534 (=> (not res!176491) (not e!199555))))

(assert (=> b!322534 (= res!176491 (and (= (select (arr!7816 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8168 a!3305))))))

(declare-fun b!322535 () Bool)

(declare-fun res!176492 () Bool)

(assert (=> b!322535 (=> (not res!176492) (not e!199555))))

(assert (=> b!322535 (= res!176492 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7816 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322536 () Bool)

(declare-fun Unit!9897 () Unit!9892)

(assert (=> b!322536 (= e!199557 Unit!9897)))

(declare-fun res!176490 () Bool)

(assert (=> start!32388 (=> (not res!176490) (not e!199556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32388 (= res!176490 (validMask!0 mask!3777))))

(assert (=> start!32388 e!199556))

(declare-fun array_inv!5770 (array!16523) Bool)

(assert (=> start!32388 (array_inv!5770 a!3305)))

(assert (=> start!32388 true))

(declare-fun b!322529 () Bool)

(declare-fun Unit!9898 () Unit!9892)

(assert (=> b!322529 (= e!199554 Unit!9898)))

(assert (= (and start!32388 res!176490) b!322531))

(assert (= (and b!322531 res!176486) b!322528))

(assert (= (and b!322528 res!176485) b!322533))

(assert (= (and b!322533 res!176487) b!322521))

(assert (= (and b!322521 res!176489) b!322530))

(assert (= (and b!322530 res!176484) b!322526))

(assert (= (and b!322526 res!176493) b!322534))

(assert (= (and b!322534 res!176491) b!322523))

(assert (= (and b!322523 res!176488) b!322535))

(assert (= (and b!322535 res!176492) b!322522))

(assert (= (and b!322522 c!50647) b!322532))

(assert (= (and b!322522 (not c!50647)) b!322536))

(assert (= (and b!322532 c!50648) b!322524))

(assert (= (and b!322532 (not c!50648)) b!322525))

(assert (= (and b!322525 c!50646) b!322529))

(assert (= (and b!322525 (not c!50646)) b!322527))

(declare-fun m!330271 () Bool)

(assert (=> b!322532 m!330271))

(declare-fun m!330273 () Bool)

(assert (=> b!322521 m!330273))

(declare-fun m!330275 () Bool)

(assert (=> b!322525 m!330275))

(assert (=> b!322525 m!330275))

(declare-fun m!330277 () Bool)

(assert (=> b!322525 m!330277))

(assert (=> b!322522 m!330271))

(declare-fun m!330279 () Bool)

(assert (=> b!322530 m!330279))

(declare-fun m!330281 () Bool)

(assert (=> b!322533 m!330281))

(declare-fun m!330283 () Bool)

(assert (=> b!322528 m!330283))

(declare-fun m!330285 () Bool)

(assert (=> b!322526 m!330285))

(assert (=> b!322526 m!330285))

(declare-fun m!330287 () Bool)

(assert (=> b!322526 m!330287))

(declare-fun m!330289 () Bool)

(assert (=> start!32388 m!330289))

(declare-fun m!330291 () Bool)

(assert (=> start!32388 m!330291))

(assert (=> b!322535 m!330271))

(declare-fun m!330293 () Bool)

(assert (=> b!322523 m!330293))

(declare-fun m!330295 () Bool)

(assert (=> b!322534 m!330295))

(push 1)

(assert (not b!322521))

(assert (not b!322530))

(assert (not start!32388))

(assert (not b!322526))

(assert (not b!322523))

(assert (not b!322525))

(assert (not b!322528))

(assert (not b!322533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

