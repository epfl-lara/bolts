; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32704 () Bool)

(assert start!32704)

(declare-fun b!326538 () Bool)

(declare-fun e!201005 () Bool)

(assert (=> b!326538 (= e!201005 false)))

(declare-datatypes ((array!16737 0))(
  ( (array!16738 (arr!7920 (Array (_ BitVec 32) (_ BitVec 64))) (size!8272 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16737)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-datatypes ((Unit!10133 0))(
  ( (Unit!10134) )
))
(declare-fun lt!157346 () Unit!10133)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16737 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10133)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326538 (= lt!157346 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326539 () Bool)

(declare-fun res!179731 () Bool)

(assert (=> b!326539 (=> (not res!179731) (not e!201005))))

(assert (=> b!326539 (= res!179731 (and (= (select (arr!7920 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8272 a!3305))))))

(declare-fun res!179732 () Bool)

(declare-fun e!201006 () Bool)

(assert (=> start!32704 (=> (not res!179732) (not e!201006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32704 (= res!179732 (validMask!0 mask!3777))))

(assert (=> start!32704 e!201006))

(declare-fun array_inv!5874 (array!16737) Bool)

(assert (=> start!32704 (array_inv!5874 a!3305)))

(assert (=> start!32704 true))

(declare-fun b!326540 () Bool)

(assert (=> b!326540 (= e!201006 e!201005)))

(declare-fun res!179728 () Bool)

(assert (=> b!326540 (=> (not res!179728) (not e!201005))))

(declare-datatypes ((SeekEntryResult!3062 0))(
  ( (MissingZero!3062 (index!14424 (_ BitVec 32))) (Found!3062 (index!14425 (_ BitVec 32))) (Intermediate!3062 (undefined!3874 Bool) (index!14426 (_ BitVec 32)) (x!32631 (_ BitVec 32))) (Undefined!3062) (MissingVacant!3062 (index!14427 (_ BitVec 32))) )
))
(declare-fun lt!157345 () SeekEntryResult!3062)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16737 (_ BitVec 32)) SeekEntryResult!3062)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326540 (= res!179728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157345))))

(assert (=> b!326540 (= lt!157345 (Intermediate!3062 false resIndex!58 resX!58))))

(declare-fun b!326541 () Bool)

(declare-fun res!179734 () Bool)

(assert (=> b!326541 (=> (not res!179734) (not e!201006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326541 (= res!179734 (validKeyInArray!0 k!2497))))

(declare-fun b!326542 () Bool)

(declare-fun res!179733 () Bool)

(assert (=> b!326542 (=> (not res!179733) (not e!201006))))

(declare-fun arrayContainsKey!0 (array!16737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326542 (= res!179733 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326543 () Bool)

(declare-fun res!179730 () Bool)

(assert (=> b!326543 (=> (not res!179730) (not e!201005))))

(assert (=> b!326543 (= res!179730 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7920 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326544 () Bool)

(declare-fun res!179727 () Bool)

(assert (=> b!326544 (=> (not res!179727) (not e!201005))))

(assert (=> b!326544 (= res!179727 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157345))))

(declare-fun b!326545 () Bool)

(declare-fun res!179735 () Bool)

(assert (=> b!326545 (=> (not res!179735) (not e!201006))))

(assert (=> b!326545 (= res!179735 (and (= (size!8272 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8272 a!3305))))))

(declare-fun b!326546 () Bool)

(declare-fun res!179729 () Bool)

(assert (=> b!326546 (=> (not res!179729) (not e!201006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16737 (_ BitVec 32)) Bool)

(assert (=> b!326546 (= res!179729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326547 () Bool)

(declare-fun res!179736 () Bool)

(assert (=> b!326547 (=> (not res!179736) (not e!201006))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16737 (_ BitVec 32)) SeekEntryResult!3062)

(assert (=> b!326547 (= res!179736 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3062 i!1250)))))

(assert (= (and start!32704 res!179732) b!326545))

(assert (= (and b!326545 res!179735) b!326541))

(assert (= (and b!326541 res!179734) b!326542))

(assert (= (and b!326542 res!179733) b!326547))

(assert (= (and b!326547 res!179736) b!326546))

(assert (= (and b!326546 res!179729) b!326540))

(assert (= (and b!326540 res!179728) b!326539))

(assert (= (and b!326539 res!179731) b!326544))

(assert (= (and b!326544 res!179727) b!326543))

(assert (= (and b!326543 res!179730) b!326538))

(declare-fun m!333089 () Bool)

(assert (=> b!326539 m!333089))

(declare-fun m!333091 () Bool)

(assert (=> b!326544 m!333091))

(declare-fun m!333093 () Bool)

(assert (=> b!326542 m!333093))

(declare-fun m!333095 () Bool)

(assert (=> b!326543 m!333095))

(declare-fun m!333097 () Bool)

(assert (=> b!326538 m!333097))

(assert (=> b!326538 m!333097))

(declare-fun m!333099 () Bool)

(assert (=> b!326538 m!333099))

(declare-fun m!333101 () Bool)

(assert (=> start!32704 m!333101))

(declare-fun m!333103 () Bool)

(assert (=> start!32704 m!333103))

(declare-fun m!333105 () Bool)

(assert (=> b!326541 m!333105))

(declare-fun m!333107 () Bool)

(assert (=> b!326547 m!333107))

(declare-fun m!333109 () Bool)

(assert (=> b!326540 m!333109))

(assert (=> b!326540 m!333109))

(declare-fun m!333111 () Bool)

(assert (=> b!326540 m!333111))

(declare-fun m!333113 () Bool)

(assert (=> b!326546 m!333113))

(push 1)

(assert (not start!32704))

(assert (not b!326542))

(assert (not b!326540))

(assert (not b!326544))

(assert (not b!326538))

