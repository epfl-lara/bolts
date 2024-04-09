; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32700 () Bool)

(assert start!32700)

(declare-fun b!326479 () Bool)

(declare-fun res!179670 () Bool)

(declare-fun e!200989 () Bool)

(assert (=> b!326479 (=> (not res!179670) (not e!200989))))

(declare-datatypes ((array!16733 0))(
  ( (array!16734 (arr!7918 (Array (_ BitVec 32) (_ BitVec 64))) (size!8270 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16733)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326479 (= res!179670 (and (= (select (arr!7918 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8270 a!3305))))))

(declare-fun b!326480 () Bool)

(declare-fun res!179667 () Bool)

(declare-fun e!200987 () Bool)

(assert (=> b!326480 (=> (not res!179667) (not e!200987))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16733 (_ BitVec 32)) Bool)

(assert (=> b!326480 (= res!179667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326481 () Bool)

(declare-fun res!179671 () Bool)

(assert (=> b!326481 (=> (not res!179671) (not e!200987))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3060 0))(
  ( (MissingZero!3060 (index!14416 (_ BitVec 32))) (Found!3060 (index!14417 (_ BitVec 32))) (Intermediate!3060 (undefined!3872 Bool) (index!14418 (_ BitVec 32)) (x!32629 (_ BitVec 32))) (Undefined!3060) (MissingVacant!3060 (index!14419 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16733 (_ BitVec 32)) SeekEntryResult!3060)

(assert (=> b!326481 (= res!179671 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3060 i!1250)))))

(declare-fun b!326482 () Bool)

(declare-fun res!179674 () Bool)

(assert (=> b!326482 (=> (not res!179674) (not e!200987))))

(declare-fun arrayContainsKey!0 (array!16733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326482 (= res!179674 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326483 () Bool)

(declare-fun res!179672 () Bool)

(assert (=> b!326483 (=> (not res!179672) (not e!200987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326483 (= res!179672 (validKeyInArray!0 k!2497))))

(declare-fun b!326484 () Bool)

(declare-fun res!179668 () Bool)

(assert (=> b!326484 (=> (not res!179668) (not e!200989))))

(declare-fun lt!157333 () SeekEntryResult!3060)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16733 (_ BitVec 32)) SeekEntryResult!3060)

(assert (=> b!326484 (= res!179668 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157333))))

(declare-fun b!326485 () Bool)

(declare-fun res!179673 () Bool)

(assert (=> b!326485 (=> (not res!179673) (not e!200987))))

(assert (=> b!326485 (= res!179673 (and (= (size!8270 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8270 a!3305))))))

(declare-fun b!326486 () Bool)

(assert (=> b!326486 (= e!200989 false)))

(declare-datatypes ((Unit!10129 0))(
  ( (Unit!10130) )
))
(declare-fun lt!157334 () Unit!10129)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16733 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10129)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326486 (= lt!157334 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326487 () Bool)

(declare-fun res!179675 () Bool)

(assert (=> b!326487 (=> (not res!179675) (not e!200989))))

(assert (=> b!326487 (= res!179675 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7918 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326478 () Bool)

(assert (=> b!326478 (= e!200987 e!200989)))

(declare-fun res!179676 () Bool)

(assert (=> b!326478 (=> (not res!179676) (not e!200989))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326478 (= res!179676 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157333))))

(assert (=> b!326478 (= lt!157333 (Intermediate!3060 false resIndex!58 resX!58))))

(declare-fun res!179669 () Bool)

(assert (=> start!32700 (=> (not res!179669) (not e!200987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32700 (= res!179669 (validMask!0 mask!3777))))

(assert (=> start!32700 e!200987))

(declare-fun array_inv!5872 (array!16733) Bool)

(assert (=> start!32700 (array_inv!5872 a!3305)))

(assert (=> start!32700 true))

(assert (= (and start!32700 res!179669) b!326485))

(assert (= (and b!326485 res!179673) b!326483))

(assert (= (and b!326483 res!179672) b!326482))

(assert (= (and b!326482 res!179674) b!326481))

(assert (= (and b!326481 res!179671) b!326480))

(assert (= (and b!326480 res!179667) b!326478))

(assert (= (and b!326478 res!179676) b!326479))

(assert (= (and b!326479 res!179670) b!326484))

(assert (= (and b!326484 res!179668) b!326487))

(assert (= (and b!326487 res!179675) b!326486))

(declare-fun m!333037 () Bool)

(assert (=> b!326484 m!333037))

(declare-fun m!333039 () Bool)

(assert (=> b!326481 m!333039))

(declare-fun m!333041 () Bool)

(assert (=> b!326487 m!333041))

(declare-fun m!333043 () Bool)

(assert (=> b!326483 m!333043))

(declare-fun m!333045 () Bool)

(assert (=> b!326480 m!333045))

(declare-fun m!333047 () Bool)

(assert (=> b!326478 m!333047))

(assert (=> b!326478 m!333047))

(declare-fun m!333049 () Bool)

(assert (=> b!326478 m!333049))

(declare-fun m!333051 () Bool)

(assert (=> start!32700 m!333051))

(declare-fun m!333053 () Bool)

(assert (=> start!32700 m!333053))

(declare-fun m!333055 () Bool)

(assert (=> b!326479 m!333055))

(declare-fun m!333057 () Bool)

(assert (=> b!326482 m!333057))

(declare-fun m!333059 () Bool)

(assert (=> b!326486 m!333059))

(assert (=> b!326486 m!333059))

(declare-fun m!333061 () Bool)

(assert (=> b!326486 m!333061))

(push 1)

