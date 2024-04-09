; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45380 () Bool)

(assert start!45380)

(declare-fun b!498093 () Bool)

(declare-fun e!291954 () Bool)

(assert (=> b!498093 (= e!291954 false)))

(declare-fun b!498094 () Bool)

(declare-fun res!300371 () Bool)

(declare-fun e!291955 () Bool)

(assert (=> b!498094 (=> (not res!300371) (not e!291955))))

(declare-datatypes ((array!32165 0))(
  ( (array!32166 (arr!15461 (Array (_ BitVec 32) (_ BitVec 64))) (size!15825 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32165)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32165 (_ BitVec 32)) Bool)

(assert (=> b!498094 (= res!300371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498095 () Bool)

(declare-fun res!300370 () Bool)

(declare-fun e!291952 () Bool)

(assert (=> b!498095 (=> (not res!300370) (not e!291952))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498095 (= res!300370 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498096 () Bool)

(assert (=> b!498096 (= e!291952 e!291955)))

(declare-fun res!300365 () Bool)

(assert (=> b!498096 (=> (not res!300365) (not e!291955))))

(declare-datatypes ((SeekEntryResult!3935 0))(
  ( (MissingZero!3935 (index!17922 (_ BitVec 32))) (Found!3935 (index!17923 (_ BitVec 32))) (Intermediate!3935 (undefined!4747 Bool) (index!17924 (_ BitVec 32)) (x!46999 (_ BitVec 32))) (Undefined!3935) (MissingVacant!3935 (index!17925 (_ BitVec 32))) )
))
(declare-fun lt!225647 () SeekEntryResult!3935)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498096 (= res!300365 (or (= lt!225647 (MissingZero!3935 i!1204)) (= lt!225647 (MissingVacant!3935 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32165 (_ BitVec 32)) SeekEntryResult!3935)

(assert (=> b!498096 (= lt!225647 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498097 () Bool)

(declare-fun res!300366 () Bool)

(assert (=> b!498097 (=> (not res!300366) (not e!291952))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498097 (= res!300366 (validKeyInArray!0 (select (arr!15461 a!3235) j!176)))))

(declare-fun b!498098 () Bool)

(declare-fun e!291950 () Bool)

(assert (=> b!498098 (= e!291950 (= (seekEntryOrOpen!0 (select (arr!15461 a!3235) j!176) a!3235 mask!3524) (Found!3935 j!176)))))

(declare-fun b!498100 () Bool)

(declare-fun res!300361 () Bool)

(assert (=> b!498100 (=> (not res!300361) (not e!291955))))

(declare-datatypes ((List!9672 0))(
  ( (Nil!9669) (Cons!9668 (h!10542 (_ BitVec 64)) (t!15908 List!9672)) )
))
(declare-fun arrayNoDuplicates!0 (array!32165 (_ BitVec 32) List!9672) Bool)

(assert (=> b!498100 (= res!300361 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9669))))

(declare-fun b!498101 () Bool)

(declare-fun e!291953 () Bool)

(declare-fun e!291951 () Bool)

(assert (=> b!498101 (= e!291953 e!291951)))

(declare-fun res!300359 () Bool)

(assert (=> b!498101 (=> res!300359 e!291951)))

(declare-fun lt!225643 () (_ BitVec 32))

(declare-fun lt!225646 () SeekEntryResult!3935)

(assert (=> b!498101 (= res!300359 (or (bvsgt #b00000000000000000000000000000000 (x!46999 lt!225646)) (bvsgt (x!46999 lt!225646) #b01111111111111111111111111111110) (bvslt lt!225643 #b00000000000000000000000000000000) (bvsge lt!225643 (size!15825 a!3235)) (bvslt (index!17924 lt!225646) #b00000000000000000000000000000000) (bvsge (index!17924 lt!225646) (size!15825 a!3235)) (not (= lt!225646 (Intermediate!3935 false (index!17924 lt!225646) (x!46999 lt!225646))))))))

(assert (=> b!498101 (and (or (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14830 0))(
  ( (Unit!14831) )
))
(declare-fun lt!225644 () Unit!14830)

(declare-fun e!291949 () Unit!14830)

(assert (=> b!498101 (= lt!225644 e!291949)))

(declare-fun c!59144 () Bool)

(assert (=> b!498101 (= c!59144 (= (select (arr!15461 a!3235) (index!17924 lt!225646)) (select (arr!15461 a!3235) j!176)))))

(assert (=> b!498101 (and (bvslt (x!46999 lt!225646) #b01111111111111111111111111111110) (or (= (select (arr!15461 a!3235) (index!17924 lt!225646)) (select (arr!15461 a!3235) j!176)) (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15461 a!3235) (index!17924 lt!225646)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498102 () Bool)

(declare-fun res!300360 () Bool)

(assert (=> b!498102 (=> (not res!300360) (not e!291952))))

(assert (=> b!498102 (= res!300360 (and (= (size!15825 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15825 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15825 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498103 () Bool)

(declare-fun res!300368 () Bool)

(assert (=> b!498103 (=> (not res!300368) (not e!291952))))

(assert (=> b!498103 (= res!300368 (validKeyInArray!0 k!2280))))

(declare-fun b!498099 () Bool)

(declare-fun Unit!14832 () Unit!14830)

(assert (=> b!498099 (= e!291949 Unit!14832)))

(declare-fun lt!225649 () Unit!14830)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32165 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14830)

(assert (=> b!498099 (= lt!225649 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!225643 #b00000000000000000000000000000000 (index!17924 lt!225646) (x!46999 lt!225646) mask!3524))))

(declare-fun lt!225641 () array!32165)

(declare-fun res!300367 () Bool)

(declare-fun lt!225648 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32165 (_ BitVec 32)) SeekEntryResult!3935)

(assert (=> b!498099 (= res!300367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225643 lt!225648 lt!225641 mask!3524) (Intermediate!3935 false (index!17924 lt!225646) (x!46999 lt!225646))))))

(assert (=> b!498099 (=> (not res!300367) (not e!291954))))

(assert (=> b!498099 e!291954))

(declare-fun res!300362 () Bool)

(assert (=> start!45380 (=> (not res!300362) (not e!291952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45380 (= res!300362 (validMask!0 mask!3524))))

(assert (=> start!45380 e!291952))

(assert (=> start!45380 true))

(declare-fun array_inv!11235 (array!32165) Bool)

(assert (=> start!45380 (array_inv!11235 a!3235)))

(declare-fun b!498104 () Bool)

(assert (=> b!498104 (= e!291951 true)))

(declare-fun lt!225650 () SeekEntryResult!3935)

(assert (=> b!498104 (= lt!225650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225643 lt!225648 lt!225641 mask!3524))))

(declare-fun b!498105 () Bool)

(declare-fun Unit!14833 () Unit!14830)

(assert (=> b!498105 (= e!291949 Unit!14833)))

(declare-fun b!498106 () Bool)

(declare-fun res!300363 () Bool)

(assert (=> b!498106 (=> res!300363 e!291953)))

(assert (=> b!498106 (= res!300363 (or (undefined!4747 lt!225646) (not (is-Intermediate!3935 lt!225646))))))

(declare-fun b!498107 () Bool)

(assert (=> b!498107 (= e!291955 (not e!291953))))

(declare-fun res!300364 () Bool)

(assert (=> b!498107 (=> res!300364 e!291953)))

(declare-fun lt!225645 () (_ BitVec 32))

(assert (=> b!498107 (= res!300364 (= lt!225646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225645 lt!225648 lt!225641 mask!3524)))))

(assert (=> b!498107 (= lt!225646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225643 (select (arr!15461 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498107 (= lt!225645 (toIndex!0 lt!225648 mask!3524))))

(assert (=> b!498107 (= lt!225648 (select (store (arr!15461 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498107 (= lt!225643 (toIndex!0 (select (arr!15461 a!3235) j!176) mask!3524))))

(assert (=> b!498107 (= lt!225641 (array!32166 (store (arr!15461 a!3235) i!1204 k!2280) (size!15825 a!3235)))))

(assert (=> b!498107 e!291950))

(declare-fun res!300369 () Bool)

(assert (=> b!498107 (=> (not res!300369) (not e!291950))))

(assert (=> b!498107 (= res!300369 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225642 () Unit!14830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14830)

(assert (=> b!498107 (= lt!225642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45380 res!300362) b!498102))

(assert (= (and b!498102 res!300360) b!498097))

(assert (= (and b!498097 res!300366) b!498103))

(assert (= (and b!498103 res!300368) b!498095))

(assert (= (and b!498095 res!300370) b!498096))

(assert (= (and b!498096 res!300365) b!498094))

(assert (= (and b!498094 res!300371) b!498100))

(assert (= (and b!498100 res!300361) b!498107))

(assert (= (and b!498107 res!300369) b!498098))

(assert (= (and b!498107 (not res!300364)) b!498106))

(assert (= (and b!498106 (not res!300363)) b!498101))

(assert (= (and b!498101 c!59144) b!498099))

(assert (= (and b!498101 (not c!59144)) b!498105))

(assert (= (and b!498099 res!300367) b!498093))

(assert (= (and b!498101 (not res!300359)) b!498104))

(declare-fun m!479407 () Bool)

(assert (=> b!498095 m!479407))

(declare-fun m!479409 () Bool)

(assert (=> b!498094 m!479409))

(declare-fun m!479411 () Bool)

(assert (=> b!498098 m!479411))

(assert (=> b!498098 m!479411))

(declare-fun m!479413 () Bool)

(assert (=> b!498098 m!479413))

(declare-fun m!479415 () Bool)

(assert (=> b!498101 m!479415))

(assert (=> b!498101 m!479411))

(declare-fun m!479417 () Bool)

(assert (=> b!498096 m!479417))

(declare-fun m!479419 () Bool)

(assert (=> b!498104 m!479419))

(declare-fun m!479421 () Bool)

(assert (=> b!498100 m!479421))

(declare-fun m!479423 () Bool)

(assert (=> b!498103 m!479423))

(declare-fun m!479425 () Bool)

(assert (=> b!498107 m!479425))

(declare-fun m!479427 () Bool)

(assert (=> b!498107 m!479427))

(declare-fun m!479429 () Bool)

(assert (=> b!498107 m!479429))

(declare-fun m!479431 () Bool)

(assert (=> b!498107 m!479431))

(assert (=> b!498107 m!479411))

(declare-fun m!479433 () Bool)

(assert (=> b!498107 m!479433))

(assert (=> b!498107 m!479411))

(declare-fun m!479435 () Bool)

(assert (=> b!498107 m!479435))

(assert (=> b!498107 m!479411))

(declare-fun m!479437 () Bool)

(assert (=> b!498107 m!479437))

(declare-fun m!479439 () Bool)

(assert (=> b!498107 m!479439))

(declare-fun m!479441 () Bool)

(assert (=> start!45380 m!479441))

(declare-fun m!479443 () Bool)

(assert (=> start!45380 m!479443))

(declare-fun m!479445 () Bool)

(assert (=> b!498099 m!479445))

(assert (=> b!498099 m!479419))

(assert (=> b!498097 m!479411))

(assert (=> b!498097 m!479411))

(declare-fun m!479447 () Bool)

(assert (=> b!498097 m!479447))

(push 1)

