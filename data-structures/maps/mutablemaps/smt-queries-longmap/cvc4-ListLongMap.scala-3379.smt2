; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46700 () Bool)

(assert start!46700)

(declare-fun b!515053 () Bool)

(declare-fun res!314775 () Bool)

(declare-fun e!300756 () Bool)

(assert (=> b!515053 (=> (not res!314775) (not e!300756))))

(declare-datatypes ((array!32972 0))(
  ( (array!32973 (arr!15851 (Array (_ BitVec 32) (_ BitVec 64))) (size!16215 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32972)

(declare-datatypes ((List!10062 0))(
  ( (Nil!10059) (Cons!10058 (h!10956 (_ BitVec 64)) (t!16298 List!10062)) )
))
(declare-fun arrayNoDuplicates!0 (array!32972 (_ BitVec 32) List!10062) Bool)

(assert (=> b!515053 (= res!314775 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10059))))

(declare-fun b!515054 () Bool)

(declare-fun res!314774 () Bool)

(assert (=> b!515054 (=> (not res!314774) (not e!300756))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32972 (_ BitVec 32)) Bool)

(assert (=> b!515054 (= res!314774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!314777 () Bool)

(declare-fun e!300757 () Bool)

(assert (=> start!46700 (=> (not res!314777) (not e!300757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46700 (= res!314777 (validMask!0 mask!3524))))

(assert (=> start!46700 e!300757))

(assert (=> start!46700 true))

(declare-fun array_inv!11625 (array!32972) Bool)

(assert (=> start!46700 (array_inv!11625 a!3235)))

(declare-fun b!515055 () Bool)

(declare-fun res!314770 () Bool)

(declare-fun e!300755 () Bool)

(assert (=> b!515055 (=> res!314770 e!300755)))

(declare-datatypes ((SeekEntryResult!4325 0))(
  ( (MissingZero!4325 (index!19488 (_ BitVec 32))) (Found!4325 (index!19489 (_ BitVec 32))) (Intermediate!4325 (undefined!5137 Bool) (index!19490 (_ BitVec 32)) (x!48483 (_ BitVec 32))) (Undefined!4325) (MissingVacant!4325 (index!19491 (_ BitVec 32))) )
))
(declare-fun lt!235840 () SeekEntryResult!4325)

(assert (=> b!515055 (= res!314770 (or (undefined!5137 lt!235840) (not (is-Intermediate!4325 lt!235840))))))

(declare-fun e!300753 () Bool)

(declare-fun b!515056 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32972 (_ BitVec 32)) SeekEntryResult!4325)

(assert (=> b!515056 (= e!300753 (= (seekEntryOrOpen!0 (select (arr!15851 a!3235) j!176) a!3235 mask!3524) (Found!4325 j!176)))))

(declare-fun b!515057 () Bool)

(declare-fun res!314768 () Bool)

(assert (=> b!515057 (=> (not res!314768) (not e!300757))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515057 (= res!314768 (and (= (size!16215 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16215 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16215 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515058 () Bool)

(declare-fun res!314771 () Bool)

(assert (=> b!515058 (=> (not res!314771) (not e!300757))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515058 (= res!314771 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515059 () Bool)

(assert (=> b!515059 (= e!300755 true)))

(assert (=> b!515059 (and (bvslt (x!48483 lt!235840) #b01111111111111111111111111111110) (or (= (select (arr!15851 a!3235) (index!19490 lt!235840)) (select (arr!15851 a!3235) j!176)) (= (select (arr!15851 a!3235) (index!19490 lt!235840)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15851 a!3235) (index!19490 lt!235840)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515060 () Bool)

(assert (=> b!515060 (= e!300757 e!300756)))

(declare-fun res!314773 () Bool)

(assert (=> b!515060 (=> (not res!314773) (not e!300756))))

(declare-fun lt!235839 () SeekEntryResult!4325)

(assert (=> b!515060 (= res!314773 (or (= lt!235839 (MissingZero!4325 i!1204)) (= lt!235839 (MissingVacant!4325 i!1204))))))

(assert (=> b!515060 (= lt!235839 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515061 () Bool)

(declare-fun res!314767 () Bool)

(assert (=> b!515061 (=> (not res!314767) (not e!300757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515061 (= res!314767 (validKeyInArray!0 (select (arr!15851 a!3235) j!176)))))

(declare-fun b!515062 () Bool)

(assert (=> b!515062 (= e!300756 (not e!300755))))

(declare-fun res!314776 () Bool)

(assert (=> b!515062 (=> res!314776 e!300755)))

(declare-fun lt!235841 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32972 (_ BitVec 32)) SeekEntryResult!4325)

(assert (=> b!515062 (= res!314776 (= lt!235840 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235841 (select (store (arr!15851 a!3235) i!1204 k!2280) j!176) (array!32973 (store (arr!15851 a!3235) i!1204 k!2280) (size!16215 a!3235)) mask!3524)))))

(declare-fun lt!235838 () (_ BitVec 32))

(assert (=> b!515062 (= lt!235840 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235838 (select (arr!15851 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515062 (= lt!235841 (toIndex!0 (select (store (arr!15851 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515062 (= lt!235838 (toIndex!0 (select (arr!15851 a!3235) j!176) mask!3524))))

(assert (=> b!515062 e!300753))

(declare-fun res!314769 () Bool)

(assert (=> b!515062 (=> (not res!314769) (not e!300753))))

(assert (=> b!515062 (= res!314769 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15900 0))(
  ( (Unit!15901) )
))
(declare-fun lt!235837 () Unit!15900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32972 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15900)

(assert (=> b!515062 (= lt!235837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515063 () Bool)

(declare-fun res!314772 () Bool)

(assert (=> b!515063 (=> (not res!314772) (not e!300757))))

(assert (=> b!515063 (= res!314772 (validKeyInArray!0 k!2280))))

(assert (= (and start!46700 res!314777) b!515057))

(assert (= (and b!515057 res!314768) b!515061))

(assert (= (and b!515061 res!314767) b!515063))

(assert (= (and b!515063 res!314772) b!515058))

(assert (= (and b!515058 res!314771) b!515060))

(assert (= (and b!515060 res!314773) b!515054))

(assert (= (and b!515054 res!314774) b!515053))

(assert (= (and b!515053 res!314775) b!515062))

(assert (= (and b!515062 res!314769) b!515056))

(assert (= (and b!515062 (not res!314776)) b!515055))

(assert (= (and b!515055 (not res!314770)) b!515059))

(declare-fun m!496397 () Bool)

(assert (=> b!515061 m!496397))

(assert (=> b!515061 m!496397))

(declare-fun m!496399 () Bool)

(assert (=> b!515061 m!496399))

(declare-fun m!496401 () Bool)

(assert (=> b!515060 m!496401))

(declare-fun m!496403 () Bool)

(assert (=> start!46700 m!496403))

(declare-fun m!496405 () Bool)

(assert (=> start!46700 m!496405))

(declare-fun m!496407 () Bool)

(assert (=> b!515053 m!496407))

(declare-fun m!496409 () Bool)

(assert (=> b!515063 m!496409))

(declare-fun m!496411 () Bool)

(assert (=> b!515054 m!496411))

(declare-fun m!496413 () Bool)

(assert (=> b!515058 m!496413))

(assert (=> b!515056 m!496397))

(assert (=> b!515056 m!496397))

(declare-fun m!496415 () Bool)

(assert (=> b!515056 m!496415))

(assert (=> b!515062 m!496397))

(declare-fun m!496417 () Bool)

(assert (=> b!515062 m!496417))

(declare-fun m!496419 () Bool)

(assert (=> b!515062 m!496419))

(declare-fun m!496421 () Bool)

(assert (=> b!515062 m!496421))

(declare-fun m!496423 () Bool)

(assert (=> b!515062 m!496423))

(assert (=> b!515062 m!496423))

(declare-fun m!496425 () Bool)

(assert (=> b!515062 m!496425))

(assert (=> b!515062 m!496397))

(declare-fun m!496427 () Bool)

(assert (=> b!515062 m!496427))

(assert (=> b!515062 m!496397))

(declare-fun m!496429 () Bool)

(assert (=> b!515062 m!496429))

(assert (=> b!515062 m!496423))

(declare-fun m!496431 () Bool)

(assert (=> b!515062 m!496431))

(declare-fun m!496433 () Bool)

(assert (=> b!515059 m!496433))

(assert (=> b!515059 m!496397))

(push 1)

