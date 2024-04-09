; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32692 () Bool)

(assert start!32692)

(declare-fun res!179550 () Bool)

(declare-fun e!200952 () Bool)

(assert (=> start!32692 (=> (not res!179550) (not e!200952))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32692 (= res!179550 (validMask!0 mask!3777))))

(assert (=> start!32692 e!200952))

(declare-datatypes ((array!16725 0))(
  ( (array!16726 (arr!7914 (Array (_ BitVec 32) (_ BitVec 64))) (size!8266 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16725)

(declare-fun array_inv!5868 (array!16725) Bool)

(assert (=> start!32692 (array_inv!5868 a!3305)))

(assert (=> start!32692 true))

(declare-fun b!326358 () Bool)

(declare-fun res!179552 () Bool)

(assert (=> b!326358 (=> (not res!179552) (not e!200952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16725 (_ BitVec 32)) Bool)

(assert (=> b!326358 (= res!179552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326359 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun e!200953 () Bool)

(assert (=> b!326359 (= e!200953 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-datatypes ((Unit!10121 0))(
  ( (Unit!10122) )
))
(declare-fun lt!157310 () Unit!10121)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16725 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10121)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326359 (= lt!157310 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326360 () Bool)

(declare-fun res!179554 () Bool)

(assert (=> b!326360 (=> (not res!179554) (not e!200952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326360 (= res!179554 (validKeyInArray!0 k!2497))))

(declare-fun b!326361 () Bool)

(declare-fun res!179547 () Bool)

(assert (=> b!326361 (=> (not res!179547) (not e!200953))))

(declare-datatypes ((SeekEntryResult!3056 0))(
  ( (MissingZero!3056 (index!14400 (_ BitVec 32))) (Found!3056 (index!14401 (_ BitVec 32))) (Intermediate!3056 (undefined!3868 Bool) (index!14402 (_ BitVec 32)) (x!32609 (_ BitVec 32))) (Undefined!3056) (MissingVacant!3056 (index!14403 (_ BitVec 32))) )
))
(declare-fun lt!157309 () SeekEntryResult!3056)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16725 (_ BitVec 32)) SeekEntryResult!3056)

(assert (=> b!326361 (= res!179547 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157309))))

(declare-fun b!326362 () Bool)

(declare-fun res!179555 () Bool)

(assert (=> b!326362 (=> (not res!179555) (not e!200953))))

(assert (=> b!326362 (= res!179555 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7914 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326363 () Bool)

(declare-fun res!179549 () Bool)

(assert (=> b!326363 (=> (not res!179549) (not e!200952))))

(declare-fun arrayContainsKey!0 (array!16725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326363 (= res!179549 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326364 () Bool)

(assert (=> b!326364 (= e!200952 e!200953)))

(declare-fun res!179553 () Bool)

(assert (=> b!326364 (=> (not res!179553) (not e!200953))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326364 (= res!179553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157309))))

(assert (=> b!326364 (= lt!157309 (Intermediate!3056 false resIndex!58 resX!58))))

(declare-fun b!326365 () Bool)

(declare-fun res!179556 () Bool)

(assert (=> b!326365 (=> (not res!179556) (not e!200952))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16725 (_ BitVec 32)) SeekEntryResult!3056)

(assert (=> b!326365 (= res!179556 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3056 i!1250)))))

(declare-fun b!326366 () Bool)

(declare-fun res!179548 () Bool)

(assert (=> b!326366 (=> (not res!179548) (not e!200953))))

(assert (=> b!326366 (= res!179548 (and (= (select (arr!7914 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8266 a!3305))))))

(declare-fun b!326367 () Bool)

(declare-fun res!179551 () Bool)

(assert (=> b!326367 (=> (not res!179551) (not e!200952))))

(assert (=> b!326367 (= res!179551 (and (= (size!8266 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8266 a!3305))))))

(assert (= (and start!32692 res!179550) b!326367))

(assert (= (and b!326367 res!179551) b!326360))

(assert (= (and b!326360 res!179554) b!326363))

(assert (= (and b!326363 res!179549) b!326365))

(assert (= (and b!326365 res!179556) b!326358))

(assert (= (and b!326358 res!179552) b!326364))

(assert (= (and b!326364 res!179553) b!326366))

(assert (= (and b!326366 res!179548) b!326361))

(assert (= (and b!326361 res!179547) b!326362))

(assert (= (and b!326362 res!179555) b!326359))

(declare-fun m!332933 () Bool)

(assert (=> b!326358 m!332933))

(declare-fun m!332935 () Bool)

(assert (=> b!326362 m!332935))

(declare-fun m!332937 () Bool)

(assert (=> start!32692 m!332937))

(declare-fun m!332939 () Bool)

(assert (=> start!32692 m!332939))

(declare-fun m!332941 () Bool)

(assert (=> b!326359 m!332941))

(assert (=> b!326359 m!332941))

(declare-fun m!332943 () Bool)

(assert (=> b!326359 m!332943))

(declare-fun m!332945 () Bool)

(assert (=> b!326365 m!332945))

(declare-fun m!332947 () Bool)

(assert (=> b!326361 m!332947))

(declare-fun m!332949 () Bool)

(assert (=> b!326366 m!332949))

(declare-fun m!332951 () Bool)

(assert (=> b!326360 m!332951))

(declare-fun m!332953 () Bool)

(assert (=> b!326363 m!332953))

(declare-fun m!332955 () Bool)

(assert (=> b!326364 m!332955))

(assert (=> b!326364 m!332955))

(declare-fun m!332957 () Bool)

(assert (=> b!326364 m!332957))

(push 1)

(assert (not b!326365))

(assert (not b!326359))

(assert (not b!326363))

(assert (not b!326361))

(assert (not start!32692))

(assert (not b!326360))

(assert (not b!326358))

(assert (not b!326364))

