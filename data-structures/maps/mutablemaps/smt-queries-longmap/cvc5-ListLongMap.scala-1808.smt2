; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32664 () Bool)

(assert start!32664)

(declare-fun b!325938 () Bool)

(declare-fun res!179130 () Bool)

(declare-fun e!200827 () Bool)

(assert (=> b!325938 (=> (not res!179130) (not e!200827))))

(declare-datatypes ((array!16697 0))(
  ( (array!16698 (arr!7900 (Array (_ BitVec 32) (_ BitVec 64))) (size!8252 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16697)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16697 (_ BitVec 32)) Bool)

(assert (=> b!325938 (= res!179130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325940 () Bool)

(declare-fun res!179135 () Bool)

(assert (=> b!325940 (=> (not res!179135) (not e!200827))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325940 (= res!179135 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325941 () Bool)

(declare-fun res!179133 () Bool)

(assert (=> b!325941 (=> (not res!179133) (not e!200827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325941 (= res!179133 (validKeyInArray!0 k!2497))))

(declare-fun b!325942 () Bool)

(declare-fun res!179128 () Bool)

(assert (=> b!325942 (=> (not res!179128) (not e!200827))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325942 (= res!179128 (and (= (size!8252 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8252 a!3305))))))

(declare-fun b!325943 () Bool)

(declare-fun res!179132 () Bool)

(declare-fun e!200826 () Bool)

(assert (=> b!325943 (=> (not res!179132) (not e!200826))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325943 (= res!179132 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7900 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325944 () Bool)

(assert (=> b!325944 (= e!200827 e!200826)))

(declare-fun res!179134 () Bool)

(assert (=> b!325944 (=> (not res!179134) (not e!200826))))

(declare-datatypes ((SeekEntryResult!3042 0))(
  ( (MissingZero!3042 (index!14344 (_ BitVec 32))) (Found!3042 (index!14345 (_ BitVec 32))) (Intermediate!3042 (undefined!3854 Bool) (index!14346 (_ BitVec 32)) (x!32563 (_ BitVec 32))) (Undefined!3042) (MissingVacant!3042 (index!14347 (_ BitVec 32))) )
))
(declare-fun lt!157226 () SeekEntryResult!3042)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16697 (_ BitVec 32)) SeekEntryResult!3042)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325944 (= res!179134 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157226))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!325944 (= lt!157226 (Intermediate!3042 false resIndex!58 resX!58))))

(declare-fun b!325945 () Bool)

(assert (=> b!325945 (= e!200826 false)))

(declare-datatypes ((Unit!10093 0))(
  ( (Unit!10094) )
))
(declare-fun lt!157225 () Unit!10093)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16697 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10093)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325945 (= lt!157225 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!325946 () Bool)

(declare-fun res!179131 () Bool)

(assert (=> b!325946 (=> (not res!179131) (not e!200826))))

(assert (=> b!325946 (= res!179131 (and (= (select (arr!7900 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8252 a!3305))))))

(declare-fun b!325947 () Bool)

(declare-fun res!179136 () Bool)

(assert (=> b!325947 (=> (not res!179136) (not e!200827))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16697 (_ BitVec 32)) SeekEntryResult!3042)

(assert (=> b!325947 (= res!179136 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3042 i!1250)))))

(declare-fun res!179129 () Bool)

(assert (=> start!32664 (=> (not res!179129) (not e!200827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32664 (= res!179129 (validMask!0 mask!3777))))

(assert (=> start!32664 e!200827))

(declare-fun array_inv!5854 (array!16697) Bool)

(assert (=> start!32664 (array_inv!5854 a!3305)))

(assert (=> start!32664 true))

(declare-fun b!325939 () Bool)

(declare-fun res!179127 () Bool)

(assert (=> b!325939 (=> (not res!179127) (not e!200826))))

(assert (=> b!325939 (= res!179127 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157226))))

(assert (= (and start!32664 res!179129) b!325942))

(assert (= (and b!325942 res!179128) b!325941))

(assert (= (and b!325941 res!179133) b!325940))

(assert (= (and b!325940 res!179135) b!325947))

(assert (= (and b!325947 res!179136) b!325938))

(assert (= (and b!325938 res!179130) b!325944))

(assert (= (and b!325944 res!179134) b!325946))

(assert (= (and b!325946 res!179131) b!325939))

(assert (= (and b!325939 res!179127) b!325943))

(assert (= (and b!325943 res!179132) b!325945))

(declare-fun m!332569 () Bool)

(assert (=> b!325946 m!332569))

(declare-fun m!332571 () Bool)

(assert (=> b!325944 m!332571))

(assert (=> b!325944 m!332571))

(declare-fun m!332573 () Bool)

(assert (=> b!325944 m!332573))

(declare-fun m!332575 () Bool)

(assert (=> b!325947 m!332575))

(declare-fun m!332577 () Bool)

(assert (=> b!325941 m!332577))

(declare-fun m!332579 () Bool)

(assert (=> b!325943 m!332579))

(declare-fun m!332581 () Bool)

(assert (=> b!325939 m!332581))

(declare-fun m!332583 () Bool)

(assert (=> b!325940 m!332583))

(declare-fun m!332585 () Bool)

(assert (=> b!325938 m!332585))

(declare-fun m!332587 () Bool)

(assert (=> start!32664 m!332587))

(declare-fun m!332589 () Bool)

(assert (=> start!32664 m!332589))

(declare-fun m!332591 () Bool)

(assert (=> b!325945 m!332591))

(assert (=> b!325945 m!332591))

(declare-fun m!332593 () Bool)

(assert (=> b!325945 m!332593))

(push 1)

