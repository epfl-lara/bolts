; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47806 () Bool)

(assert start!47806)

(declare-fun res!323088 () Bool)

(declare-fun e!306792 () Bool)

(assert (=> start!47806 (=> (not res!323088) (not e!306792))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47806 (= res!323088 (validMask!0 mask!3524))))

(assert (=> start!47806 e!306792))

(assert (=> start!47806 true))

(declare-datatypes ((array!33403 0))(
  ( (array!33404 (arr!16050 (Array (_ BitVec 32) (_ BitVec 64))) (size!16414 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33403)

(declare-fun array_inv!11824 (array!33403) Bool)

(assert (=> start!47806 (array_inv!11824 a!3235)))

(declare-fun b!526321 () Bool)

(declare-fun e!306793 () Bool)

(assert (=> b!526321 (= e!306793 true)))

(declare-datatypes ((SeekEntryResult!4524 0))(
  ( (MissingZero!4524 (index!20308 (_ BitVec 32))) (Found!4524 (index!20309 (_ BitVec 32))) (Intermediate!4524 (undefined!5336 Bool) (index!20310 (_ BitVec 32)) (x!49308 (_ BitVec 32))) (Undefined!4524) (MissingVacant!4524 (index!20311 (_ BitVec 32))) )
))
(declare-fun lt!242127 () SeekEntryResult!4524)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526321 (= (index!20310 lt!242127) i!1204)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!242133 () (_ BitVec 32))

(declare-datatypes ((Unit!16562 0))(
  ( (Unit!16563) )
))
(declare-fun lt!242135 () Unit!16562)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16562)

(assert (=> b!526321 (= lt!242135 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242133 #b00000000000000000000000000000000 (index!20310 lt!242127) (x!49308 lt!242127) mask!3524))))

(assert (=> b!526321 (and (or (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242132 () Unit!16562)

(declare-fun e!306790 () Unit!16562)

(assert (=> b!526321 (= lt!242132 e!306790)))

(declare-fun c!61925 () Bool)

(assert (=> b!526321 (= c!61925 (= (select (arr!16050 a!3235) (index!20310 lt!242127)) (select (arr!16050 a!3235) j!176)))))

(assert (=> b!526321 (and (bvslt (x!49308 lt!242127) #b01111111111111111111111111111110) (or (= (select (arr!16050 a!3235) (index!20310 lt!242127)) (select (arr!16050 a!3235) j!176)) (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16050 a!3235) (index!20310 lt!242127)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526322 () Bool)

(declare-fun res!323090 () Bool)

(assert (=> b!526322 (=> (not res!323090) (not e!306792))))

(declare-fun arrayContainsKey!0 (array!33403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526322 (= res!323090 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526323 () Bool)

(declare-fun e!306791 () Bool)

(assert (=> b!526323 (= e!306791 false)))

(declare-fun b!526324 () Bool)

(declare-fun res!323086 () Bool)

(assert (=> b!526324 (=> (not res!323086) (not e!306792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526324 (= res!323086 (validKeyInArray!0 k!2280))))

(declare-fun b!526325 () Bool)

(declare-fun res!323092 () Bool)

(assert (=> b!526325 (=> (not res!323092) (not e!306792))))

(assert (=> b!526325 (= res!323092 (and (= (size!16414 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16414 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16414 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526326 () Bool)

(declare-fun res!323084 () Bool)

(assert (=> b!526326 (=> res!323084 e!306793)))

(assert (=> b!526326 (= res!323084 (or (undefined!5336 lt!242127) (not (is-Intermediate!4524 lt!242127))))))

(declare-fun b!526327 () Bool)

(declare-fun res!323085 () Bool)

(declare-fun e!306796 () Bool)

(assert (=> b!526327 (=> (not res!323085) (not e!306796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33403 (_ BitVec 32)) Bool)

(assert (=> b!526327 (= res!323085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526328 () Bool)

(declare-fun res!323087 () Bool)

(assert (=> b!526328 (=> (not res!323087) (not e!306792))))

(assert (=> b!526328 (= res!323087 (validKeyInArray!0 (select (arr!16050 a!3235) j!176)))))

(declare-fun b!526329 () Bool)

(declare-fun Unit!16564 () Unit!16562)

(assert (=> b!526329 (= e!306790 Unit!16564)))

(declare-fun lt!242129 () Unit!16562)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16562)

(assert (=> b!526329 (= lt!242129 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242133 #b00000000000000000000000000000000 (index!20310 lt!242127) (x!49308 lt!242127) mask!3524))))

(declare-fun lt!242130 () array!33403)

(declare-fun lt!242128 () (_ BitVec 64))

(declare-fun res!323093 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33403 (_ BitVec 32)) SeekEntryResult!4524)

(assert (=> b!526329 (= res!323093 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242133 lt!242128 lt!242130 mask!3524) (Intermediate!4524 false (index!20310 lt!242127) (x!49308 lt!242127))))))

(assert (=> b!526329 (=> (not res!323093) (not e!306791))))

(assert (=> b!526329 e!306791))

(declare-fun b!526330 () Bool)

(declare-fun Unit!16565 () Unit!16562)

(assert (=> b!526330 (= e!306790 Unit!16565)))

(declare-fun b!526331 () Bool)

(declare-fun res!323082 () Bool)

(assert (=> b!526331 (=> (not res!323082) (not e!306796))))

(declare-datatypes ((List!10261 0))(
  ( (Nil!10258) (Cons!10257 (h!11188 (_ BitVec 64)) (t!16497 List!10261)) )
))
(declare-fun arrayNoDuplicates!0 (array!33403 (_ BitVec 32) List!10261) Bool)

(assert (=> b!526331 (= res!323082 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10258))))

(declare-fun b!526332 () Bool)

(assert (=> b!526332 (= e!306796 (not e!306793))))

(declare-fun res!323091 () Bool)

(assert (=> b!526332 (=> res!323091 e!306793)))

(declare-fun lt!242131 () (_ BitVec 32))

(assert (=> b!526332 (= res!323091 (= lt!242127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242131 lt!242128 lt!242130 mask!3524)))))

(assert (=> b!526332 (= lt!242127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242133 (select (arr!16050 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526332 (= lt!242131 (toIndex!0 lt!242128 mask!3524))))

(assert (=> b!526332 (= lt!242128 (select (store (arr!16050 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526332 (= lt!242133 (toIndex!0 (select (arr!16050 a!3235) j!176) mask!3524))))

(assert (=> b!526332 (= lt!242130 (array!33404 (store (arr!16050 a!3235) i!1204 k!2280) (size!16414 a!3235)))))

(declare-fun e!306795 () Bool)

(assert (=> b!526332 e!306795))

(declare-fun res!323089 () Bool)

(assert (=> b!526332 (=> (not res!323089) (not e!306795))))

(assert (=> b!526332 (= res!323089 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242126 () Unit!16562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16562)

(assert (=> b!526332 (= lt!242126 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526333 () Bool)

(assert (=> b!526333 (= e!306792 e!306796)))

(declare-fun res!323083 () Bool)

(assert (=> b!526333 (=> (not res!323083) (not e!306796))))

(declare-fun lt!242134 () SeekEntryResult!4524)

(assert (=> b!526333 (= res!323083 (or (= lt!242134 (MissingZero!4524 i!1204)) (= lt!242134 (MissingVacant!4524 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33403 (_ BitVec 32)) SeekEntryResult!4524)

(assert (=> b!526333 (= lt!242134 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526334 () Bool)

(assert (=> b!526334 (= e!306795 (= (seekEntryOrOpen!0 (select (arr!16050 a!3235) j!176) a!3235 mask!3524) (Found!4524 j!176)))))

(assert (= (and start!47806 res!323088) b!526325))

(assert (= (and b!526325 res!323092) b!526328))

(assert (= (and b!526328 res!323087) b!526324))

(assert (= (and b!526324 res!323086) b!526322))

(assert (= (and b!526322 res!323090) b!526333))

(assert (= (and b!526333 res!323083) b!526327))

(assert (= (and b!526327 res!323085) b!526331))

(assert (= (and b!526331 res!323082) b!526332))

(assert (= (and b!526332 res!323089) b!526334))

(assert (= (and b!526332 (not res!323091)) b!526326))

(assert (= (and b!526326 (not res!323084)) b!526321))

(assert (= (and b!526321 c!61925) b!526329))

(assert (= (and b!526321 (not c!61925)) b!526330))

(assert (= (and b!526329 res!323093) b!526323))

(declare-fun m!507067 () Bool)

(assert (=> b!526329 m!507067))

(declare-fun m!507069 () Bool)

(assert (=> b!526329 m!507069))

(declare-fun m!507071 () Bool)

(assert (=> b!526331 m!507071))

(declare-fun m!507073 () Bool)

(assert (=> b!526332 m!507073))

(declare-fun m!507075 () Bool)

(assert (=> b!526332 m!507075))

(declare-fun m!507077 () Bool)

(assert (=> b!526332 m!507077))

(declare-fun m!507079 () Bool)

(assert (=> b!526332 m!507079))

(declare-fun m!507081 () Bool)

(assert (=> b!526332 m!507081))

(declare-fun m!507083 () Bool)

(assert (=> b!526332 m!507083))

(assert (=> b!526332 m!507081))

(declare-fun m!507085 () Bool)

(assert (=> b!526332 m!507085))

(assert (=> b!526332 m!507081))

(declare-fun m!507087 () Bool)

(assert (=> b!526332 m!507087))

(declare-fun m!507089 () Bool)

(assert (=> b!526332 m!507089))

(assert (=> b!526334 m!507081))

(assert (=> b!526334 m!507081))

(declare-fun m!507091 () Bool)

(assert (=> b!526334 m!507091))

(declare-fun m!507093 () Bool)

(assert (=> b!526333 m!507093))

(assert (=> b!526328 m!507081))

(assert (=> b!526328 m!507081))

(declare-fun m!507095 () Bool)

(assert (=> b!526328 m!507095))

(declare-fun m!507097 () Bool)

(assert (=> b!526327 m!507097))

(declare-fun m!507099 () Bool)

(assert (=> b!526324 m!507099))

(declare-fun m!507101 () Bool)

(assert (=> b!526322 m!507101))

(declare-fun m!507103 () Bool)

(assert (=> b!526321 m!507103))

(declare-fun m!507105 () Bool)

(assert (=> b!526321 m!507105))

(assert (=> b!526321 m!507081))

(declare-fun m!507107 () Bool)

(assert (=> start!47806 m!507107))

(declare-fun m!507109 () Bool)

(assert (=> start!47806 m!507109))

(push 1)

