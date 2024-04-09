; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32266 () Bool)

(assert start!32266)

(declare-fun b!321130 () Bool)

(declare-fun res!175411 () Bool)

(declare-fun e!199029 () Bool)

(assert (=> b!321130 (=> (not res!175411) (not e!199029))))

(declare-datatypes ((array!16452 0))(
  ( (array!16453 (arr!7782 (Array (_ BitVec 32) (_ BitVec 64))) (size!8134 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16452)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2924 0))(
  ( (MissingZero!2924 (index!13872 (_ BitVec 32))) (Found!2924 (index!13873 (_ BitVec 32))) (Intermediate!2924 (undefined!3736 Bool) (index!13874 (_ BitVec 32)) (x!32098 (_ BitVec 32))) (Undefined!2924) (MissingVacant!2924 (index!13875 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16452 (_ BitVec 32)) SeekEntryResult!2924)

(assert (=> b!321130 (= res!175411 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2924 i!1250)))))

(declare-fun e!199028 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun b!321131 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321131 (= e!199028 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7782 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7782 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7782 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!321132 () Bool)

(declare-fun res!175415 () Bool)

(assert (=> b!321132 (=> (not res!175415) (not e!199029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321132 (= res!175415 (validKeyInArray!0 k!2497))))

(declare-fun b!321133 () Bool)

(declare-fun res!175412 () Bool)

(assert (=> b!321133 (=> (not res!175412) (not e!199029))))

(assert (=> b!321133 (= res!175412 (and (= (size!8134 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8134 a!3305))))))

(declare-fun b!321134 () Bool)

(declare-fun res!175416 () Bool)

(assert (=> b!321134 (=> (not res!175416) (not e!199029))))

(declare-fun arrayContainsKey!0 (array!16452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321134 (= res!175416 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!175410 () Bool)

(assert (=> start!32266 (=> (not res!175410) (not e!199029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32266 (= res!175410 (validMask!0 mask!3777))))

(assert (=> start!32266 e!199029))

(declare-fun array_inv!5736 (array!16452) Bool)

(assert (=> start!32266 (array_inv!5736 a!3305)))

(assert (=> start!32266 true))

(declare-fun b!321135 () Bool)

(declare-fun res!175409 () Bool)

(assert (=> b!321135 (=> (not res!175409) (not e!199028))))

(assert (=> b!321135 (= res!175409 (and (= (select (arr!7782 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8134 a!3305))))))

(declare-fun b!321136 () Bool)

(assert (=> b!321136 (= e!199029 e!199028)))

(declare-fun res!175414 () Bool)

(assert (=> b!321136 (=> (not res!175414) (not e!199028))))

(declare-fun lt!156143 () SeekEntryResult!2924)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16452 (_ BitVec 32)) SeekEntryResult!2924)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321136 (= res!175414 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156143))))

(assert (=> b!321136 (= lt!156143 (Intermediate!2924 false resIndex!58 resX!58))))

(declare-fun b!321137 () Bool)

(declare-fun res!175413 () Bool)

(assert (=> b!321137 (=> (not res!175413) (not e!199028))))

(assert (=> b!321137 (= res!175413 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156143))))

(declare-fun b!321138 () Bool)

(declare-fun res!175408 () Bool)

(assert (=> b!321138 (=> (not res!175408) (not e!199029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16452 (_ BitVec 32)) Bool)

(assert (=> b!321138 (= res!175408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32266 res!175410) b!321133))

(assert (= (and b!321133 res!175412) b!321132))

(assert (= (and b!321132 res!175415) b!321134))

(assert (= (and b!321134 res!175416) b!321130))

(assert (= (and b!321130 res!175411) b!321138))

(assert (= (and b!321138 res!175408) b!321136))

(assert (= (and b!321136 res!175414) b!321135))

(assert (= (and b!321135 res!175409) b!321137))

(assert (= (and b!321137 res!175413) b!321131))

(declare-fun m!329337 () Bool)

(assert (=> b!321138 m!329337))

(declare-fun m!329339 () Bool)

(assert (=> b!321137 m!329339))

(declare-fun m!329341 () Bool)

(assert (=> b!321131 m!329341))

(declare-fun m!329343 () Bool)

(assert (=> b!321136 m!329343))

(assert (=> b!321136 m!329343))

(declare-fun m!329345 () Bool)

(assert (=> b!321136 m!329345))

(declare-fun m!329347 () Bool)

(assert (=> b!321135 m!329347))

(declare-fun m!329349 () Bool)

(assert (=> b!321130 m!329349))

(declare-fun m!329351 () Bool)

(assert (=> start!32266 m!329351))

(declare-fun m!329353 () Bool)

(assert (=> start!32266 m!329353))

(declare-fun m!329355 () Bool)

(assert (=> b!321132 m!329355))

(declare-fun m!329357 () Bool)

(assert (=> b!321134 m!329357))

(push 1)

(assert (not b!321132))

(assert (not b!321136))

(assert (not b!321134))

(assert (not b!321137))

(assert (not b!321130))

(assert (not start!32266))

(assert (not b!321138))

(check-sat)

