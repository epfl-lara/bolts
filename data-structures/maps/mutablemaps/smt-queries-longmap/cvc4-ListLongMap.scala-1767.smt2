; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32260 () Bool)

(assert start!32260)

(declare-fun b!321050 () Bool)

(declare-fun res!175331 () Bool)

(declare-fun e!199003 () Bool)

(assert (=> b!321050 (=> (not res!175331) (not e!199003))))

(declare-datatypes ((array!16446 0))(
  ( (array!16447 (arr!7779 (Array (_ BitVec 32) (_ BitVec 64))) (size!8131 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16446)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16446 (_ BitVec 32)) Bool)

(assert (=> b!321050 (= res!175331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321051 () Bool)

(declare-fun res!175335 () Bool)

(assert (=> b!321051 (=> (not res!175335) (not e!199003))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321051 (= res!175335 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321052 () Bool)

(declare-fun res!175332 () Bool)

(assert (=> b!321052 (=> (not res!175332) (not e!199003))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321052 (= res!175332 (and (= (size!8131 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8131 a!3305))))))

(declare-fun b!321053 () Bool)

(declare-fun res!175328 () Bool)

(assert (=> b!321053 (=> (not res!175328) (not e!199003))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2921 0))(
  ( (MissingZero!2921 (index!13860 (_ BitVec 32))) (Found!2921 (index!13861 (_ BitVec 32))) (Intermediate!2921 (undefined!3733 Bool) (index!13862 (_ BitVec 32)) (x!32087 (_ BitVec 32))) (Undefined!2921) (MissingVacant!2921 (index!13863 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16446 (_ BitVec 32)) SeekEntryResult!2921)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321053 (= res!175328 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2921 false resIndex!58 resX!58)))))

(declare-fun res!175334 () Bool)

(assert (=> start!32260 (=> (not res!175334) (not e!199003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32260 (= res!175334 (validMask!0 mask!3777))))

(assert (=> start!32260 e!199003))

(declare-fun array_inv!5733 (array!16446) Bool)

(assert (=> start!32260 (array_inv!5733 a!3305)))

(assert (=> start!32260 true))

(declare-fun b!321054 () Bool)

(declare-fun res!175333 () Bool)

(assert (=> b!321054 (=> (not res!175333) (not e!199003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321054 (= res!175333 (validKeyInArray!0 k!2497))))

(declare-fun b!321055 () Bool)

(declare-fun res!175330 () Bool)

(assert (=> b!321055 (=> (not res!175330) (not e!199003))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321055 (= res!175330 (and (= (select (arr!7779 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8131 a!3305))))))

(declare-fun b!321056 () Bool)

(assert (=> b!321056 (= e!199003 false)))

(declare-fun lt!156134 () SeekEntryResult!2921)

(assert (=> b!321056 (= lt!156134 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!321057 () Bool)

(declare-fun res!175329 () Bool)

(assert (=> b!321057 (=> (not res!175329) (not e!199003))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16446 (_ BitVec 32)) SeekEntryResult!2921)

(assert (=> b!321057 (= res!175329 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2921 i!1250)))))

(assert (= (and start!32260 res!175334) b!321052))

(assert (= (and b!321052 res!175332) b!321054))

(assert (= (and b!321054 res!175333) b!321051))

(assert (= (and b!321051 res!175335) b!321057))

(assert (= (and b!321057 res!175329) b!321050))

(assert (= (and b!321050 res!175331) b!321053))

(assert (= (and b!321053 res!175328) b!321055))

(assert (= (and b!321055 res!175330) b!321056))

(declare-fun m!329273 () Bool)

(assert (=> b!321053 m!329273))

(assert (=> b!321053 m!329273))

(declare-fun m!329275 () Bool)

(assert (=> b!321053 m!329275))

(declare-fun m!329277 () Bool)

(assert (=> b!321054 m!329277))

(declare-fun m!329279 () Bool)

(assert (=> b!321051 m!329279))

(declare-fun m!329281 () Bool)

(assert (=> b!321050 m!329281))

(declare-fun m!329283 () Bool)

(assert (=> start!32260 m!329283))

(declare-fun m!329285 () Bool)

(assert (=> start!32260 m!329285))

(declare-fun m!329287 () Bool)

(assert (=> b!321055 m!329287))

(declare-fun m!329289 () Bool)

(assert (=> b!321057 m!329289))

(declare-fun m!329291 () Bool)

(assert (=> b!321056 m!329291))

(push 1)

(assert (not b!321053))

(assert (not b!321057))

(assert (not b!321054))

(assert (not b!321050))

(assert (not start!32260))

(assert (not b!321056))

(assert (not b!321051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

