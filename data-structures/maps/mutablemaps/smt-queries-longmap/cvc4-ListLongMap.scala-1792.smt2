; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32464 () Bool)

(assert start!32464)

(declare-fun b!324091 () Bool)

(declare-fun res!177584 () Bool)

(declare-fun e!200123 () Bool)

(assert (=> b!324091 (=> (not res!177584) (not e!200123))))

(declare-datatypes ((array!16599 0))(
  ( (array!16600 (arr!7854 (Array (_ BitVec 32) (_ BitVec 64))) (size!8206 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16599)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2996 0))(
  ( (MissingZero!2996 (index!14160 (_ BitVec 32))) (Found!2996 (index!14161 (_ BitVec 32))) (Intermediate!2996 (undefined!3808 Bool) (index!14162 (_ BitVec 32)) (x!32371 (_ BitVec 32))) (Undefined!2996) (MissingVacant!2996 (index!14163 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16599 (_ BitVec 32)) SeekEntryResult!2996)

(assert (=> b!324091 (= res!177584 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2996 i!1250)))))

(declare-fun b!324092 () Bool)

(declare-fun res!177586 () Bool)

(assert (=> b!324092 (=> (not res!177586) (not e!200123))))

(declare-fun arrayContainsKey!0 (array!16599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324092 (= res!177586 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324094 () Bool)

(declare-fun res!177580 () Bool)

(assert (=> b!324094 (=> (not res!177580) (not e!200123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324094 (= res!177580 (validKeyInArray!0 k!2497))))

(declare-fun b!324095 () Bool)

(declare-fun res!177587 () Bool)

(assert (=> b!324095 (=> (not res!177587) (not e!200123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16599 (_ BitVec 32)) Bool)

(assert (=> b!324095 (= res!177587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324096 () Bool)

(declare-fun e!200125 () Bool)

(assert (=> b!324096 (= e!200123 e!200125)))

(declare-fun res!177588 () Bool)

(assert (=> b!324096 (=> (not res!177588) (not e!200125))))

(declare-fun lt!156734 () SeekEntryResult!2996)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16599 (_ BitVec 32)) SeekEntryResult!2996)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324096 (= res!177588 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156734))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324096 (= lt!156734 (Intermediate!2996 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!324097 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324097 (= e!200125 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7854 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsgt x!1490 #b01111111111111111111111111111110)))))

(declare-fun res!177583 () Bool)

(assert (=> start!32464 (=> (not res!177583) (not e!200123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32464 (= res!177583 (validMask!0 mask!3777))))

(assert (=> start!32464 e!200123))

(declare-fun array_inv!5808 (array!16599) Bool)

(assert (=> start!32464 (array_inv!5808 a!3305)))

(assert (=> start!32464 true))

(declare-fun b!324093 () Bool)

(declare-fun res!177585 () Bool)

(assert (=> b!324093 (=> (not res!177585) (not e!200125))))

(assert (=> b!324093 (= res!177585 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156734))))

(declare-fun b!324098 () Bool)

(declare-fun res!177582 () Bool)

(assert (=> b!324098 (=> (not res!177582) (not e!200125))))

(assert (=> b!324098 (= res!177582 (and (= (select (arr!7854 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8206 a!3305))))))

(declare-fun b!324099 () Bool)

(declare-fun res!177581 () Bool)

(assert (=> b!324099 (=> (not res!177581) (not e!200123))))

(assert (=> b!324099 (= res!177581 (and (= (size!8206 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8206 a!3305))))))

(assert (= (and start!32464 res!177583) b!324099))

(assert (= (and b!324099 res!177581) b!324094))

(assert (= (and b!324094 res!177580) b!324092))

(assert (= (and b!324092 res!177586) b!324091))

(assert (= (and b!324091 res!177584) b!324095))

(assert (= (and b!324095 res!177587) b!324096))

(assert (= (and b!324096 res!177588) b!324098))

(assert (= (and b!324098 res!177582) b!324093))

(assert (= (and b!324093 res!177585) b!324097))

(declare-fun m!331209 () Bool)

(assert (=> start!32464 m!331209))

(declare-fun m!331211 () Bool)

(assert (=> start!32464 m!331211))

(declare-fun m!331213 () Bool)

(assert (=> b!324095 m!331213))

(declare-fun m!331215 () Bool)

(assert (=> b!324096 m!331215))

(assert (=> b!324096 m!331215))

(declare-fun m!331217 () Bool)

(assert (=> b!324096 m!331217))

(declare-fun m!331219 () Bool)

(assert (=> b!324097 m!331219))

(declare-fun m!331221 () Bool)

(assert (=> b!324091 m!331221))

(declare-fun m!331223 () Bool)

(assert (=> b!324092 m!331223))

(declare-fun m!331225 () Bool)

(assert (=> b!324098 m!331225))

(declare-fun m!331227 () Bool)

(assert (=> b!324093 m!331227))

(declare-fun m!331229 () Bool)

(assert (=> b!324094 m!331229))

(push 1)

(assert (not b!324091))

(assert (not start!32464))

(assert (not b!324093))

(assert (not b!324095))

(assert (not b!324092))

(assert (not b!324094))

(assert (not b!324096))

(check-sat)

(pop 1)

