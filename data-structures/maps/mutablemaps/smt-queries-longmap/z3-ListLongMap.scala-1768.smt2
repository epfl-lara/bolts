; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32264 () Bool)

(assert start!32264)

(declare-fun b!321103 () Bool)

(declare-fun res!175387 () Bool)

(declare-fun e!199019 () Bool)

(assert (=> b!321103 (=> (not res!175387) (not e!199019))))

(declare-datatypes ((array!16450 0))(
  ( (array!16451 (arr!7781 (Array (_ BitVec 32) (_ BitVec 64))) (size!8133 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16450)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2923 0))(
  ( (MissingZero!2923 (index!13868 (_ BitVec 32))) (Found!2923 (index!13869 (_ BitVec 32))) (Intermediate!2923 (undefined!3735 Bool) (index!13870 (_ BitVec 32)) (x!32097 (_ BitVec 32))) (Undefined!2923) (MissingVacant!2923 (index!13871 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16450 (_ BitVec 32)) SeekEntryResult!2923)

(assert (=> b!321103 (= res!175387 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2923 i!1250)))))

(declare-fun b!321104 () Bool)

(declare-fun res!175388 () Bool)

(assert (=> b!321104 (=> (not res!175388) (not e!199019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321104 (= res!175388 (validKeyInArray!0 k0!2497))))

(declare-fun b!321105 () Bool)

(declare-fun e!199021 () Bool)

(assert (=> b!321105 (= e!199019 e!199021)))

(declare-fun res!175382 () Bool)

(assert (=> b!321105 (=> (not res!175382) (not e!199021))))

(declare-fun lt!156140 () SeekEntryResult!2923)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16450 (_ BitVec 32)) SeekEntryResult!2923)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321105 (= res!175382 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156140))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321105 (= lt!156140 (Intermediate!2923 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun b!321106 () Bool)

(assert (=> b!321106 (= e!199021 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7781 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7781 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7781 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!321107 () Bool)

(declare-fun res!175385 () Bool)

(assert (=> b!321107 (=> (not res!175385) (not e!199019))))

(assert (=> b!321107 (= res!175385 (and (= (size!8133 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8133 a!3305))))))

(declare-fun b!321108 () Bool)

(declare-fun res!175384 () Bool)

(assert (=> b!321108 (=> (not res!175384) (not e!199021))))

(assert (=> b!321108 (= res!175384 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156140))))

(declare-fun res!175383 () Bool)

(assert (=> start!32264 (=> (not res!175383) (not e!199019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32264 (= res!175383 (validMask!0 mask!3777))))

(assert (=> start!32264 e!199019))

(declare-fun array_inv!5735 (array!16450) Bool)

(assert (=> start!32264 (array_inv!5735 a!3305)))

(assert (=> start!32264 true))

(declare-fun b!321109 () Bool)

(declare-fun res!175381 () Bool)

(assert (=> b!321109 (=> (not res!175381) (not e!199021))))

(assert (=> b!321109 (= res!175381 (and (= (select (arr!7781 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8133 a!3305))))))

(declare-fun b!321110 () Bool)

(declare-fun res!175386 () Bool)

(assert (=> b!321110 (=> (not res!175386) (not e!199019))))

(declare-fun arrayContainsKey!0 (array!16450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321110 (= res!175386 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321111 () Bool)

(declare-fun res!175389 () Bool)

(assert (=> b!321111 (=> (not res!175389) (not e!199019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16450 (_ BitVec 32)) Bool)

(assert (=> b!321111 (= res!175389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32264 res!175383) b!321107))

(assert (= (and b!321107 res!175385) b!321104))

(assert (= (and b!321104 res!175388) b!321110))

(assert (= (and b!321110 res!175386) b!321103))

(assert (= (and b!321103 res!175387) b!321111))

(assert (= (and b!321111 res!175389) b!321105))

(assert (= (and b!321105 res!175382) b!321109))

(assert (= (and b!321109 res!175381) b!321108))

(assert (= (and b!321108 res!175384) b!321106))

(declare-fun m!329315 () Bool)

(assert (=> b!321109 m!329315))

(declare-fun m!329317 () Bool)

(assert (=> b!321103 m!329317))

(declare-fun m!329319 () Bool)

(assert (=> b!321111 m!329319))

(declare-fun m!329321 () Bool)

(assert (=> b!321106 m!329321))

(declare-fun m!329323 () Bool)

(assert (=> b!321104 m!329323))

(declare-fun m!329325 () Bool)

(assert (=> start!32264 m!329325))

(declare-fun m!329327 () Bool)

(assert (=> start!32264 m!329327))

(declare-fun m!329329 () Bool)

(assert (=> b!321105 m!329329))

(assert (=> b!321105 m!329329))

(declare-fun m!329331 () Bool)

(assert (=> b!321105 m!329331))

(declare-fun m!329333 () Bool)

(assert (=> b!321108 m!329333))

(declare-fun m!329335 () Bool)

(assert (=> b!321110 m!329335))

(check-sat (not b!321108) (not start!32264) (not b!321103) (not b!321105) (not b!321104) (not b!321110) (not b!321111))
(check-sat)
