; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32688 () Bool)

(assert start!32688)

(declare-fun res!179492 () Bool)

(declare-fun e!200933 () Bool)

(assert (=> start!32688 (=> (not res!179492) (not e!200933))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32688 (= res!179492 (validMask!0 mask!3777))))

(assert (=> start!32688 e!200933))

(declare-datatypes ((array!16721 0))(
  ( (array!16722 (arr!7912 (Array (_ BitVec 32) (_ BitVec 64))) (size!8264 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16721)

(declare-fun array_inv!5866 (array!16721) Bool)

(assert (=> start!32688 (array_inv!5866 a!3305)))

(assert (=> start!32688 true))

(declare-fun b!326298 () Bool)

(declare-fun res!179488 () Bool)

(assert (=> b!326298 (=> (not res!179488) (not e!200933))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326298 (= res!179488 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326299 () Bool)

(declare-fun res!179490 () Bool)

(assert (=> b!326299 (=> (not res!179490) (not e!200933))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3054 0))(
  ( (MissingZero!3054 (index!14392 (_ BitVec 32))) (Found!3054 (index!14393 (_ BitVec 32))) (Intermediate!3054 (undefined!3866 Bool) (index!14394 (_ BitVec 32)) (x!32607 (_ BitVec 32))) (Undefined!3054) (MissingVacant!3054 (index!14395 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16721 (_ BitVec 32)) SeekEntryResult!3054)

(assert (=> b!326299 (= res!179490 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3054 i!1250)))))

(declare-fun b!326300 () Bool)

(declare-fun res!179491 () Bool)

(declare-fun e!200934 () Bool)

(assert (=> b!326300 (=> (not res!179491) (not e!200934))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!157298 () SeekEntryResult!3054)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16721 (_ BitVec 32)) SeekEntryResult!3054)

(assert (=> b!326300 (= res!179491 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157298))))

(declare-fun b!326301 () Bool)

(declare-fun res!179496 () Bool)

(assert (=> b!326301 (=> (not res!179496) (not e!200933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326301 (= res!179496 (validKeyInArray!0 k!2497))))

(declare-fun b!326302 () Bool)

(declare-fun res!179493 () Bool)

(assert (=> b!326302 (=> (not res!179493) (not e!200934))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!326302 (= res!179493 (and (= (select (arr!7912 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8264 a!3305))))))

(declare-fun b!326303 () Bool)

(assert (=> b!326303 (= e!200934 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-datatypes ((Unit!10117 0))(
  ( (Unit!10118) )
))
(declare-fun lt!157297 () Unit!10117)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16721 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10117)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326303 (= lt!157297 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326304 () Bool)

(declare-fun res!179489 () Bool)

(assert (=> b!326304 (=> (not res!179489) (not e!200934))))

(assert (=> b!326304 (= res!179489 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7912 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326305 () Bool)

(declare-fun res!179495 () Bool)

(assert (=> b!326305 (=> (not res!179495) (not e!200933))))

(assert (=> b!326305 (= res!179495 (and (= (size!8264 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8264 a!3305))))))

(declare-fun b!326306 () Bool)

(declare-fun res!179487 () Bool)

(assert (=> b!326306 (=> (not res!179487) (not e!200933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16721 (_ BitVec 32)) Bool)

(assert (=> b!326306 (= res!179487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326307 () Bool)

(assert (=> b!326307 (= e!200933 e!200934)))

(declare-fun res!179494 () Bool)

(assert (=> b!326307 (=> (not res!179494) (not e!200934))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326307 (= res!179494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157298))))

(assert (=> b!326307 (= lt!157298 (Intermediate!3054 false resIndex!58 resX!58))))

(assert (= (and start!32688 res!179492) b!326305))

(assert (= (and b!326305 res!179495) b!326301))

(assert (= (and b!326301 res!179496) b!326298))

(assert (= (and b!326298 res!179488) b!326299))

(assert (= (and b!326299 res!179490) b!326306))

(assert (= (and b!326306 res!179487) b!326307))

(assert (= (and b!326307 res!179494) b!326302))

(assert (= (and b!326302 res!179493) b!326300))

(assert (= (and b!326300 res!179491) b!326304))

(assert (= (and b!326304 res!179489) b!326303))

(declare-fun m!332881 () Bool)

(assert (=> b!326299 m!332881))

(declare-fun m!332883 () Bool)

(assert (=> b!326298 m!332883))

(declare-fun m!332885 () Bool)

(assert (=> b!326303 m!332885))

(assert (=> b!326303 m!332885))

(declare-fun m!332887 () Bool)

(assert (=> b!326303 m!332887))

(declare-fun m!332889 () Bool)

(assert (=> b!326307 m!332889))

(assert (=> b!326307 m!332889))

(declare-fun m!332891 () Bool)

(assert (=> b!326307 m!332891))

(declare-fun m!332893 () Bool)

(assert (=> b!326304 m!332893))

(declare-fun m!332895 () Bool)

(assert (=> b!326300 m!332895))

(declare-fun m!332897 () Bool)

(assert (=> b!326302 m!332897))

(declare-fun m!332899 () Bool)

(assert (=> start!32688 m!332899))

(declare-fun m!332901 () Bool)

(assert (=> start!32688 m!332901))

(declare-fun m!332903 () Bool)

(assert (=> b!326306 m!332903))

(declare-fun m!332905 () Bool)

(assert (=> b!326301 m!332905))

(push 1)

