; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32690 () Bool)

(assert start!32690)

(declare-fun b!326328 () Bool)

(declare-fun res!179518 () Bool)

(declare-fun e!200942 () Bool)

(assert (=> b!326328 (=> (not res!179518) (not e!200942))))

(declare-datatypes ((array!16723 0))(
  ( (array!16724 (arr!7913 (Array (_ BitVec 32) (_ BitVec 64))) (size!8265 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16723)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326328 (= res!179518 (and (= (select (arr!7913 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8265 a!3305))))))

(declare-fun b!326329 () Bool)

(declare-fun res!179521 () Bool)

(assert (=> b!326329 (=> (not res!179521) (not e!200942))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3055 0))(
  ( (MissingZero!3055 (index!14396 (_ BitVec 32))) (Found!3055 (index!14397 (_ BitVec 32))) (Intermediate!3055 (undefined!3867 Bool) (index!14398 (_ BitVec 32)) (x!32608 (_ BitVec 32))) (Undefined!3055) (MissingVacant!3055 (index!14399 (_ BitVec 32))) )
))
(declare-fun lt!157303 () SeekEntryResult!3055)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16723 (_ BitVec 32)) SeekEntryResult!3055)

(assert (=> b!326329 (= res!179521 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157303))))

(declare-fun b!326330 () Bool)

(declare-fun res!179526 () Bool)

(declare-fun e!200943 () Bool)

(assert (=> b!326330 (=> (not res!179526) (not e!200943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326330 (= res!179526 (validKeyInArray!0 k0!2497))))

(declare-fun b!326331 () Bool)

(assert (=> b!326331 (= e!200943 e!200942)))

(declare-fun res!179523 () Bool)

(assert (=> b!326331 (=> (not res!179523) (not e!200942))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326331 (= res!179523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157303))))

(assert (=> b!326331 (= lt!157303 (Intermediate!3055 false resIndex!58 resX!58))))

(declare-fun res!179517 () Bool)

(assert (=> start!32690 (=> (not res!179517) (not e!200943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32690 (= res!179517 (validMask!0 mask!3777))))

(assert (=> start!32690 e!200943))

(declare-fun array_inv!5867 (array!16723) Bool)

(assert (=> start!32690 (array_inv!5867 a!3305)))

(assert (=> start!32690 true))

(declare-fun b!326332 () Bool)

(declare-fun res!179525 () Bool)

(assert (=> b!326332 (=> (not res!179525) (not e!200943))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16723 (_ BitVec 32)) SeekEntryResult!3055)

(assert (=> b!326332 (= res!179525 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3055 i!1250)))))

(declare-fun b!326333 () Bool)

(declare-fun res!179524 () Bool)

(assert (=> b!326333 (=> (not res!179524) (not e!200942))))

(assert (=> b!326333 (= res!179524 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7913 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326334 () Bool)

(assert (=> b!326334 (= e!200942 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-datatypes ((Unit!10119 0))(
  ( (Unit!10120) )
))
(declare-fun lt!157304 () Unit!10119)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10119)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326334 (= lt!157304 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326335 () Bool)

(declare-fun res!179520 () Bool)

(assert (=> b!326335 (=> (not res!179520) (not e!200943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16723 (_ BitVec 32)) Bool)

(assert (=> b!326335 (= res!179520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326336 () Bool)

(declare-fun res!179522 () Bool)

(assert (=> b!326336 (=> (not res!179522) (not e!200943))))

(assert (=> b!326336 (= res!179522 (and (= (size!8265 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8265 a!3305))))))

(declare-fun b!326337 () Bool)

(declare-fun res!179519 () Bool)

(assert (=> b!326337 (=> (not res!179519) (not e!200943))))

(declare-fun arrayContainsKey!0 (array!16723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326337 (= res!179519 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32690 res!179517) b!326336))

(assert (= (and b!326336 res!179522) b!326330))

(assert (= (and b!326330 res!179526) b!326337))

(assert (= (and b!326337 res!179519) b!326332))

(assert (= (and b!326332 res!179525) b!326335))

(assert (= (and b!326335 res!179520) b!326331))

(assert (= (and b!326331 res!179523) b!326328))

(assert (= (and b!326328 res!179518) b!326329))

(assert (= (and b!326329 res!179521) b!326333))

(assert (= (and b!326333 res!179524) b!326334))

(declare-fun m!332907 () Bool)

(assert (=> b!326329 m!332907))

(declare-fun m!332909 () Bool)

(assert (=> b!326337 m!332909))

(declare-fun m!332911 () Bool)

(assert (=> b!326331 m!332911))

(assert (=> b!326331 m!332911))

(declare-fun m!332913 () Bool)

(assert (=> b!326331 m!332913))

(declare-fun m!332915 () Bool)

(assert (=> b!326333 m!332915))

(declare-fun m!332917 () Bool)

(assert (=> b!326335 m!332917))

(declare-fun m!332919 () Bool)

(assert (=> b!326332 m!332919))

(declare-fun m!332921 () Bool)

(assert (=> b!326330 m!332921))

(declare-fun m!332923 () Bool)

(assert (=> start!32690 m!332923))

(declare-fun m!332925 () Bool)

(assert (=> start!32690 m!332925))

(declare-fun m!332927 () Bool)

(assert (=> b!326328 m!332927))

(declare-fun m!332929 () Bool)

(assert (=> b!326334 m!332929))

(assert (=> b!326334 m!332929))

(declare-fun m!332931 () Bool)

(assert (=> b!326334 m!332931))

(check-sat (not b!326335) (not b!326331) (not b!326332) (not b!326337) (not b!326330) (not start!32690) (not b!326329) (not b!326334))
(check-sat)
