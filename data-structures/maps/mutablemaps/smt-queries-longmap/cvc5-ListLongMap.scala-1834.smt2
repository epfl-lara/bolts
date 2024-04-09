; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33222 () Bool)

(assert start!33222)

(declare-fun b!330063 () Bool)

(declare-fun e!202657 () Bool)

(declare-datatypes ((array!16877 0))(
  ( (array!16878 (arr!7978 (Array (_ BitVec 32) (_ BitVec 64))) (size!8330 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16877)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!330063 (= e!202657 (not (= (select (arr!7978 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330063 (= index!1840 resIndex!58)))

(declare-datatypes ((Unit!10259 0))(
  ( (Unit!10260) )
))
(declare-fun lt!158439 () Unit!10259)

(declare-fun e!202655 () Unit!10259)

(assert (=> b!330063 (= lt!158439 e!202655)))

(declare-fun c!51699 () Bool)

(assert (=> b!330063 (= c!51699 (not (= resIndex!58 index!1840)))))

(declare-fun b!330064 () Bool)

(declare-fun res!181958 () Bool)

(assert (=> b!330064 (=> (not res!181958) (not e!202657))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330064 (= res!181958 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7978 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!330065 () Bool)

(declare-fun e!202659 () Bool)

(assert (=> b!330065 (= e!202659 e!202657)))

(declare-fun res!181954 () Bool)

(assert (=> b!330065 (=> (not res!181954) (not e!202657))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3120 0))(
  ( (MissingZero!3120 (index!14656 (_ BitVec 32))) (Found!3120 (index!14657 (_ BitVec 32))) (Intermediate!3120 (undefined!3932 Bool) (index!14658 (_ BitVec 32)) (x!32906 (_ BitVec 32))) (Undefined!3120) (MissingVacant!3120 (index!14659 (_ BitVec 32))) )
))
(declare-fun lt!158440 () SeekEntryResult!3120)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16877 (_ BitVec 32)) SeekEntryResult!3120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330065 (= res!181954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158440))))

(assert (=> b!330065 (= lt!158440 (Intermediate!3120 false resIndex!58 resX!58))))

(declare-fun b!330066 () Bool)

(declare-fun res!181953 () Bool)

(assert (=> b!330066 (=> (not res!181953) (not e!202657))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330066 (= res!181953 (and (= (select (arr!7978 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8330 a!3305))))))

(declare-fun b!330067 () Bool)

(assert (=> b!330067 false))

(declare-fun e!202660 () Unit!10259)

(declare-fun Unit!10261 () Unit!10259)

(assert (=> b!330067 (= e!202660 Unit!10261)))

(declare-fun b!330068 () Bool)

(declare-fun res!181952 () Bool)

(assert (=> b!330068 (=> (not res!181952) (not e!202659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16877 (_ BitVec 32)) Bool)

(assert (=> b!330068 (= res!181952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330069 () Bool)

(declare-fun e!202656 () Unit!10259)

(declare-fun Unit!10262 () Unit!10259)

(assert (=> b!330069 (= e!202656 Unit!10262)))

(assert (=> b!330069 false))

(declare-fun b!330070 () Bool)

(assert (=> b!330070 false))

(declare-fun lt!158441 () Unit!10259)

(assert (=> b!330070 (= lt!158441 e!202656)))

(declare-fun c!51700 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330070 (= c!51700 (is-Intermediate!3120 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10263 () Unit!10259)

(assert (=> b!330070 (= e!202660 Unit!10263)))

(declare-fun b!330071 () Bool)

(declare-fun res!181951 () Bool)

(assert (=> b!330071 (=> (not res!181951) (not e!202659))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16877 (_ BitVec 32)) SeekEntryResult!3120)

(assert (=> b!330071 (= res!181951 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3120 i!1250)))))

(declare-fun b!330072 () Bool)

(assert (=> b!330072 (= e!202655 e!202660)))

(declare-fun c!51701 () Bool)

(assert (=> b!330072 (= c!51701 (or (= (select (arr!7978 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7978 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330073 () Bool)

(declare-fun Unit!10264 () Unit!10259)

(assert (=> b!330073 (= e!202655 Unit!10264)))

(declare-fun res!181956 () Bool)

(assert (=> start!33222 (=> (not res!181956) (not e!202659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33222 (= res!181956 (validMask!0 mask!3777))))

(assert (=> start!33222 e!202659))

(declare-fun array_inv!5932 (array!16877) Bool)

(assert (=> start!33222 (array_inv!5932 a!3305)))

(assert (=> start!33222 true))

(declare-fun b!330074 () Bool)

(declare-fun res!181957 () Bool)

(assert (=> b!330074 (=> (not res!181957) (not e!202659))))

(declare-fun arrayContainsKey!0 (array!16877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330074 (= res!181957 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330075 () Bool)

(declare-fun res!181950 () Bool)

(assert (=> b!330075 (=> (not res!181950) (not e!202659))))

(assert (=> b!330075 (= res!181950 (and (= (size!8330 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8330 a!3305))))))

(declare-fun b!330076 () Bool)

(declare-fun res!181955 () Bool)

(assert (=> b!330076 (=> (not res!181955) (not e!202657))))

(assert (=> b!330076 (= res!181955 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158440))))

(declare-fun b!330077 () Bool)

(declare-fun Unit!10265 () Unit!10259)

(assert (=> b!330077 (= e!202656 Unit!10265)))

(declare-fun b!330078 () Bool)

(declare-fun res!181959 () Bool)

(assert (=> b!330078 (=> (not res!181959) (not e!202659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330078 (= res!181959 (validKeyInArray!0 k!2497))))

(assert (= (and start!33222 res!181956) b!330075))

(assert (= (and b!330075 res!181950) b!330078))

(assert (= (and b!330078 res!181959) b!330074))

(assert (= (and b!330074 res!181957) b!330071))

(assert (= (and b!330071 res!181951) b!330068))

(assert (= (and b!330068 res!181952) b!330065))

(assert (= (and b!330065 res!181954) b!330066))

(assert (= (and b!330066 res!181953) b!330076))

(assert (= (and b!330076 res!181955) b!330064))

(assert (= (and b!330064 res!181958) b!330063))

(assert (= (and b!330063 c!51699) b!330072))

(assert (= (and b!330063 (not c!51699)) b!330073))

(assert (= (and b!330072 c!51701) b!330067))

(assert (= (and b!330072 (not c!51701)) b!330070))

(assert (= (and b!330070 c!51700) b!330077))

(assert (= (and b!330070 (not c!51700)) b!330069))

(declare-fun m!335419 () Bool)

(assert (=> b!330071 m!335419))

(declare-fun m!335421 () Bool)

(assert (=> b!330070 m!335421))

(assert (=> b!330070 m!335421))

(declare-fun m!335423 () Bool)

(assert (=> b!330070 m!335423))

(declare-fun m!335425 () Bool)

(assert (=> b!330076 m!335425))

(declare-fun m!335427 () Bool)

(assert (=> start!33222 m!335427))

(declare-fun m!335429 () Bool)

(assert (=> start!33222 m!335429))

(declare-fun m!335431 () Bool)

(assert (=> b!330072 m!335431))

(declare-fun m!335433 () Bool)

(assert (=> b!330066 m!335433))

(assert (=> b!330064 m!335431))

(declare-fun m!335435 () Bool)

(assert (=> b!330068 m!335435))

(assert (=> b!330063 m!335431))

(declare-fun m!335437 () Bool)

(assert (=> b!330074 m!335437))

(declare-fun m!335439 () Bool)

(assert (=> b!330065 m!335439))

(assert (=> b!330065 m!335439))

(declare-fun m!335441 () Bool)

(assert (=> b!330065 m!335441))

(declare-fun m!335443 () Bool)

(assert (=> b!330078 m!335443))

(push 1)

