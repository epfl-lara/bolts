; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32454 () Bool)

(assert start!32454)

(declare-fun res!177452 () Bool)

(declare-fun e!200079 () Bool)

(assert (=> start!32454 (=> (not res!177452) (not e!200079))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32454 (= res!177452 (validMask!0 mask!3777))))

(assert (=> start!32454 e!200079))

(declare-datatypes ((array!16589 0))(
  ( (array!16590 (arr!7849 (Array (_ BitVec 32) (_ BitVec 64))) (size!8201 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16589)

(declare-fun array_inv!5803 (array!16589) Bool)

(assert (=> start!32454 (array_inv!5803 a!3305)))

(assert (=> start!32454 true))

(declare-fun b!323956 () Bool)

(declare-fun res!177446 () Bool)

(assert (=> b!323956 (=> (not res!177446) (not e!200079))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323956 (= res!177446 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323957 () Bool)

(declare-fun res!177451 () Bool)

(assert (=> b!323957 (=> (not res!177451) (not e!200079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16589 (_ BitVec 32)) Bool)

(assert (=> b!323957 (= res!177451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323958 () Bool)

(declare-fun e!200078 () Bool)

(assert (=> b!323958 (= e!200079 e!200078)))

(declare-fun res!177449 () Bool)

(assert (=> b!323958 (=> (not res!177449) (not e!200078))))

(declare-datatypes ((SeekEntryResult!2991 0))(
  ( (MissingZero!2991 (index!14140 (_ BitVec 32))) (Found!2991 (index!14141 (_ BitVec 32))) (Intermediate!2991 (undefined!3803 Bool) (index!14142 (_ BitVec 32)) (x!32358 (_ BitVec 32))) (Undefined!2991) (MissingVacant!2991 (index!14143 (_ BitVec 32))) )
))
(declare-fun lt!156719 () SeekEntryResult!2991)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16589 (_ BitVec 32)) SeekEntryResult!2991)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323958 (= res!177449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156719))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323958 (= lt!156719 (Intermediate!2991 false resIndex!58 resX!58))))

(declare-fun b!323959 () Bool)

(declare-fun res!177453 () Bool)

(assert (=> b!323959 (=> (not res!177453) (not e!200078))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323959 (= res!177453 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156719))))

(declare-fun b!323960 () Bool)

(declare-fun res!177448 () Bool)

(assert (=> b!323960 (=> (not res!177448) (not e!200078))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323960 (= res!177448 (and (= (select (arr!7849 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8201 a!3305))))))

(declare-fun b!323961 () Bool)

(declare-fun res!177445 () Bool)

(assert (=> b!323961 (=> (not res!177445) (not e!200079))))

(assert (=> b!323961 (= res!177445 (and (= (size!8201 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8201 a!3305))))))

(declare-fun b!323962 () Bool)

(declare-fun res!177450 () Bool)

(assert (=> b!323962 (=> (not res!177450) (not e!200079))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16589 (_ BitVec 32)) SeekEntryResult!2991)

(assert (=> b!323962 (= res!177450 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2991 i!1250)))))

(declare-fun b!323963 () Bool)

(assert (=> b!323963 (= e!200078 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7849 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!323964 () Bool)

(declare-fun res!177447 () Bool)

(assert (=> b!323964 (=> (not res!177447) (not e!200079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323964 (= res!177447 (validKeyInArray!0 k!2497))))

(assert (= (and start!32454 res!177452) b!323961))

(assert (= (and b!323961 res!177445) b!323964))

(assert (= (and b!323964 res!177447) b!323956))

(assert (= (and b!323956 res!177446) b!323962))

(assert (= (and b!323962 res!177450) b!323957))

(assert (= (and b!323957 res!177451) b!323958))

(assert (= (and b!323958 res!177449) b!323960))

(assert (= (and b!323960 res!177448) b!323959))

(assert (= (and b!323959 res!177453) b!323963))

(declare-fun m!331099 () Bool)

(assert (=> b!323959 m!331099))

(declare-fun m!331101 () Bool)

(assert (=> b!323960 m!331101))

(declare-fun m!331103 () Bool)

(assert (=> b!323964 m!331103))

(declare-fun m!331105 () Bool)

(assert (=> start!32454 m!331105))

(declare-fun m!331107 () Bool)

(assert (=> start!32454 m!331107))

(declare-fun m!331109 () Bool)

(assert (=> b!323958 m!331109))

(assert (=> b!323958 m!331109))

(declare-fun m!331111 () Bool)

(assert (=> b!323958 m!331111))

(declare-fun m!331113 () Bool)

(assert (=> b!323963 m!331113))

(declare-fun m!331115 () Bool)

(assert (=> b!323962 m!331115))

(declare-fun m!331117 () Bool)

(assert (=> b!323956 m!331117))

(declare-fun m!331119 () Bool)

(assert (=> b!323957 m!331119))

(push 1)

(assert (not start!32454))

(assert (not b!323964))

(assert (not b!323957))

(assert (not b!323962))

(assert (not b!323956))

(assert (not b!323959))

(assert (not b!323958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

