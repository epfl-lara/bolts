; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32268 () Bool)

(assert start!32268)

(declare-fun b!321157 () Bool)

(declare-fun res!175435 () Bool)

(declare-fun e!199037 () Bool)

(assert (=> b!321157 (=> (not res!175435) (not e!199037))))

(declare-datatypes ((array!16454 0))(
  ( (array!16455 (arr!7783 (Array (_ BitVec 32) (_ BitVec 64))) (size!8135 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16454)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321157 (= res!175435 (and (= (size!8135 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8135 a!3305))))))

(declare-fun b!321158 () Bool)

(declare-fun res!175436 () Bool)

(declare-fun e!199039 () Bool)

(assert (=> b!321158 (=> (not res!175436) (not e!199039))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2925 0))(
  ( (MissingZero!2925 (index!13876 (_ BitVec 32))) (Found!2925 (index!13877 (_ BitVec 32))) (Intermediate!2925 (undefined!3737 Bool) (index!13878 (_ BitVec 32)) (x!32107 (_ BitVec 32))) (Undefined!2925) (MissingVacant!2925 (index!13879 (_ BitVec 32))) )
))
(declare-fun lt!156146 () SeekEntryResult!2925)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16454 (_ BitVec 32)) SeekEntryResult!2925)

(assert (=> b!321158 (= res!175436 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156146))))

(declare-fun b!321159 () Bool)

(declare-fun res!175442 () Bool)

(assert (=> b!321159 (=> (not res!175442) (not e!199037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16454 (_ BitVec 32)) Bool)

(assert (=> b!321159 (= res!175442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321160 () Bool)

(declare-fun res!175439 () Bool)

(assert (=> b!321160 (=> (not res!175439) (not e!199039))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321160 (= res!175439 (and (= (select (arr!7783 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8135 a!3305))))))

(declare-fun b!321161 () Bool)

(declare-fun res!175437 () Bool)

(assert (=> b!321161 (=> (not res!175437) (not e!199037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321161 (= res!175437 (validKeyInArray!0 k!2497))))

(declare-fun res!175441 () Bool)

(assert (=> start!32268 (=> (not res!175441) (not e!199037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32268 (= res!175441 (validMask!0 mask!3777))))

(assert (=> start!32268 e!199037))

(declare-fun array_inv!5737 (array!16454) Bool)

(assert (=> start!32268 (array_inv!5737 a!3305)))

(assert (=> start!32268 true))

(declare-fun b!321162 () Bool)

(assert (=> b!321162 (= e!199037 e!199039)))

(declare-fun res!175443 () Bool)

(assert (=> b!321162 (=> (not res!175443) (not e!199039))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321162 (= res!175443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156146))))

(assert (=> b!321162 (= lt!156146 (Intermediate!2925 false resIndex!58 resX!58))))

(declare-fun b!321163 () Bool)

(assert (=> b!321163 (= e!199039 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7783 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7783 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7783 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!321164 () Bool)

(declare-fun res!175438 () Bool)

(assert (=> b!321164 (=> (not res!175438) (not e!199037))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16454 (_ BitVec 32)) SeekEntryResult!2925)

(assert (=> b!321164 (= res!175438 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2925 i!1250)))))

(declare-fun b!321165 () Bool)

(declare-fun res!175440 () Bool)

(assert (=> b!321165 (=> (not res!175440) (not e!199037))))

(declare-fun arrayContainsKey!0 (array!16454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321165 (= res!175440 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32268 res!175441) b!321157))

(assert (= (and b!321157 res!175435) b!321161))

(assert (= (and b!321161 res!175437) b!321165))

(assert (= (and b!321165 res!175440) b!321164))

(assert (= (and b!321164 res!175438) b!321159))

(assert (= (and b!321159 res!175442) b!321162))

(assert (= (and b!321162 res!175443) b!321160))

(assert (= (and b!321160 res!175439) b!321158))

(assert (= (and b!321158 res!175436) b!321163))

(declare-fun m!329359 () Bool)

(assert (=> b!321160 m!329359))

(declare-fun m!329361 () Bool)

(assert (=> b!321158 m!329361))

(declare-fun m!329363 () Bool)

(assert (=> start!32268 m!329363))

(declare-fun m!329365 () Bool)

(assert (=> start!32268 m!329365))

(declare-fun m!329367 () Bool)

(assert (=> b!321165 m!329367))

(declare-fun m!329369 () Bool)

(assert (=> b!321163 m!329369))

(declare-fun m!329371 () Bool)

(assert (=> b!321161 m!329371))

(declare-fun m!329373 () Bool)

(assert (=> b!321159 m!329373))

(declare-fun m!329375 () Bool)

(assert (=> b!321162 m!329375))

(assert (=> b!321162 m!329375))

(declare-fun m!329377 () Bool)

(assert (=> b!321162 m!329377))

(declare-fun m!329379 () Bool)

(assert (=> b!321164 m!329379))

(push 1)

(assert (not b!321162))

(assert (not b!321159))

(assert (not b!321161))

(assert (not b!321165))

(assert (not start!32268))

(assert (not b!321164))

(assert (not b!321158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

