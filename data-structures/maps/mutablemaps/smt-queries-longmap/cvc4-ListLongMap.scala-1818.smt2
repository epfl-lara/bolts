; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32728 () Bool)

(assert start!32728)

(declare-fun b!326898 () Bool)

(declare-fun res!180093 () Bool)

(declare-fun e!201114 () Bool)

(assert (=> b!326898 (=> (not res!180093) (not e!201114))))

(declare-datatypes ((array!16761 0))(
  ( (array!16762 (arr!7932 (Array (_ BitVec 32) (_ BitVec 64))) (size!8284 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16761)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3074 0))(
  ( (MissingZero!3074 (index!14472 (_ BitVec 32))) (Found!3074 (index!14473 (_ BitVec 32))) (Intermediate!3074 (undefined!3886 Bool) (index!14474 (_ BitVec 32)) (x!32675 (_ BitVec 32))) (Undefined!3074) (MissingVacant!3074 (index!14475 (_ BitVec 32))) )
))
(declare-fun lt!157417 () SeekEntryResult!3074)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16761 (_ BitVec 32)) SeekEntryResult!3074)

(assert (=> b!326898 (= res!180093 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157417))))

(declare-fun b!326899 () Bool)

(declare-fun res!180096 () Bool)

(declare-fun e!201113 () Bool)

(assert (=> b!326899 (=> (not res!180096) (not e!201113))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16761 (_ BitVec 32)) SeekEntryResult!3074)

(assert (=> b!326899 (= res!180096 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3074 i!1250)))))

(declare-fun b!326900 () Bool)

(declare-fun res!180088 () Bool)

(assert (=> b!326900 (=> (not res!180088) (not e!201114))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!326900 (= res!180088 (and (= (select (arr!7932 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8284 a!3305))))))

(declare-fun b!326901 () Bool)

(assert (=> b!326901 (= e!201114 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-datatypes ((Unit!10157 0))(
  ( (Unit!10158) )
))
(declare-fun lt!157418 () Unit!10157)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16761 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10157)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326901 (= lt!157418 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326902 () Bool)

(declare-fun res!180090 () Bool)

(assert (=> b!326902 (=> (not res!180090) (not e!201113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326902 (= res!180090 (validKeyInArray!0 k!2497))))

(declare-fun b!326903 () Bool)

(declare-fun res!180089 () Bool)

(assert (=> b!326903 (=> (not res!180089) (not e!201113))))

(declare-fun arrayContainsKey!0 (array!16761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326903 (= res!180089 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326904 () Bool)

(declare-fun res!180087 () Bool)

(assert (=> b!326904 (=> (not res!180087) (not e!201113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16761 (_ BitVec 32)) Bool)

(assert (=> b!326904 (= res!180087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!180092 () Bool)

(assert (=> start!32728 (=> (not res!180092) (not e!201113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32728 (= res!180092 (validMask!0 mask!3777))))

(assert (=> start!32728 e!201113))

(declare-fun array_inv!5886 (array!16761) Bool)

(assert (=> start!32728 (array_inv!5886 a!3305)))

(assert (=> start!32728 true))

(declare-fun b!326905 () Bool)

(declare-fun res!180091 () Bool)

(assert (=> b!326905 (=> (not res!180091) (not e!201114))))

(assert (=> b!326905 (= res!180091 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7932 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326906 () Bool)

(declare-fun res!180094 () Bool)

(assert (=> b!326906 (=> (not res!180094) (not e!201113))))

(assert (=> b!326906 (= res!180094 (and (= (size!8284 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8284 a!3305))))))

(declare-fun b!326907 () Bool)

(assert (=> b!326907 (= e!201113 e!201114)))

(declare-fun res!180095 () Bool)

(assert (=> b!326907 (=> (not res!180095) (not e!201114))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326907 (= res!180095 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157417))))

(assert (=> b!326907 (= lt!157417 (Intermediate!3074 false resIndex!58 resX!58))))

(assert (= (and start!32728 res!180092) b!326906))

(assert (= (and b!326906 res!180094) b!326902))

(assert (= (and b!326902 res!180090) b!326903))

(assert (= (and b!326903 res!180089) b!326899))

(assert (= (and b!326899 res!180096) b!326904))

(assert (= (and b!326904 res!180087) b!326907))

(assert (= (and b!326907 res!180095) b!326900))

(assert (= (and b!326900 res!180088) b!326898))

(assert (= (and b!326898 res!180093) b!326905))

(assert (= (and b!326905 res!180091) b!326901))

(declare-fun m!333401 () Bool)

(assert (=> b!326905 m!333401))

(declare-fun m!333403 () Bool)

(assert (=> b!326904 m!333403))

(declare-fun m!333405 () Bool)

(assert (=> b!326900 m!333405))

(declare-fun m!333407 () Bool)

(assert (=> start!32728 m!333407))

(declare-fun m!333409 () Bool)

(assert (=> start!32728 m!333409))

(declare-fun m!333411 () Bool)

(assert (=> b!326903 m!333411))

(declare-fun m!333413 () Bool)

(assert (=> b!326898 m!333413))

(declare-fun m!333415 () Bool)

(assert (=> b!326902 m!333415))

(declare-fun m!333417 () Bool)

(assert (=> b!326907 m!333417))

(assert (=> b!326907 m!333417))

(declare-fun m!333419 () Bool)

(assert (=> b!326907 m!333419))

(declare-fun m!333421 () Bool)

(assert (=> b!326901 m!333421))

(assert (=> b!326901 m!333421))

(declare-fun m!333423 () Bool)

(assert (=> b!326901 m!333423))

(declare-fun m!333425 () Bool)

(assert (=> b!326899 m!333425))

(push 1)

(assert (not b!326903))

(assert (not b!326899))

(assert (not b!326907))

(assert (not b!326901))

(assert (not b!326904))

(assert (not b!326898))

(assert (not b!326902))

(assert (not start!32728))

(check-sat)

