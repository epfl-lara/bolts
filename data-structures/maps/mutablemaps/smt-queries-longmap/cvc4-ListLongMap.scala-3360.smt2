; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46226 () Bool)

(assert start!46226)

(declare-fun b!511535 () Bool)

(declare-fun res!312347 () Bool)

(declare-fun e!298873 () Bool)

(assert (=> b!511535 (=> (not res!312347) (not e!298873))))

(declare-datatypes ((array!32840 0))(
  ( (array!32841 (arr!15794 (Array (_ BitVec 32) (_ BitVec 64))) (size!16158 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32840)

(declare-datatypes ((List!10005 0))(
  ( (Nil!10002) (Cons!10001 (h!10881 (_ BitVec 64)) (t!16241 List!10005)) )
))
(declare-fun arrayNoDuplicates!0 (array!32840 (_ BitVec 32) List!10005) Bool)

(assert (=> b!511535 (= res!312347 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10002))))

(declare-fun b!511536 () Bool)

(declare-fun res!312355 () Bool)

(declare-fun e!298875 () Bool)

(assert (=> b!511536 (=> (not res!312355) (not e!298875))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511536 (= res!312355 (validKeyInArray!0 k!2280))))

(declare-fun b!511537 () Bool)

(declare-fun res!312354 () Bool)

(declare-fun e!298874 () Bool)

(assert (=> b!511537 (=> res!312354 e!298874)))

(declare-datatypes ((SeekEntryResult!4268 0))(
  ( (MissingZero!4268 (index!19260 (_ BitVec 32))) (Found!4268 (index!19261 (_ BitVec 32))) (Intermediate!4268 (undefined!5080 Bool) (index!19262 (_ BitVec 32)) (x!48238 (_ BitVec 32))) (Undefined!4268) (MissingVacant!4268 (index!19263 (_ BitVec 32))) )
))
(declare-fun lt!234120 () SeekEntryResult!4268)

(assert (=> b!511537 (= res!312354 (or (not (is-Intermediate!4268 lt!234120)) (not (undefined!5080 lt!234120))))))

(declare-fun b!511538 () Bool)

(declare-fun res!312353 () Bool)

(assert (=> b!511538 (=> (not res!312353) (not e!298875))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511538 (= res!312353 (validKeyInArray!0 (select (arr!15794 a!3235) j!176)))))

(declare-fun b!511539 () Bool)

(declare-fun res!312352 () Bool)

(assert (=> b!511539 (=> (not res!312352) (not e!298875))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511539 (= res!312352 (and (= (size!16158 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16158 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16158 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511540 () Bool)

(declare-fun res!312348 () Bool)

(assert (=> b!511540 (=> (not res!312348) (not e!298873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32840 (_ BitVec 32)) Bool)

(assert (=> b!511540 (= res!312348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511541 () Bool)

(declare-fun res!312349 () Bool)

(assert (=> b!511541 (=> (not res!312349) (not e!298875))))

(declare-fun arrayContainsKey!0 (array!32840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511541 (= res!312349 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511543 () Bool)

(assert (=> b!511543 (= e!298874 (or (bvsgt #b00000000000000000000000000000000 (size!16158 a!3235)) (bvsle j!176 (size!16158 a!3235))))))

(declare-fun lt!234118 () SeekEntryResult!4268)

(assert (=> b!511543 (= lt!234118 Undefined!4268)))

(declare-fun b!511544 () Bool)

(assert (=> b!511544 (= e!298875 e!298873)))

(declare-fun res!312350 () Bool)

(assert (=> b!511544 (=> (not res!312350) (not e!298873))))

(declare-fun lt!234117 () SeekEntryResult!4268)

(assert (=> b!511544 (= res!312350 (or (= lt!234117 (MissingZero!4268 i!1204)) (= lt!234117 (MissingVacant!4268 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32840 (_ BitVec 32)) SeekEntryResult!4268)

(assert (=> b!511544 (= lt!234117 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511542 () Bool)

(assert (=> b!511542 (= e!298873 (not e!298874))))

(declare-fun res!312351 () Bool)

(assert (=> b!511542 (=> res!312351 e!298874)))

(declare-fun lt!234121 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32840 (_ BitVec 32)) SeekEntryResult!4268)

(assert (=> b!511542 (= res!312351 (= lt!234120 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234121 (select (store (arr!15794 a!3235) i!1204 k!2280) j!176) (array!32841 (store (arr!15794 a!3235) i!1204 k!2280) (size!16158 a!3235)) mask!3524)))))

(declare-fun lt!234122 () (_ BitVec 32))

(assert (=> b!511542 (= lt!234120 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234122 (select (arr!15794 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511542 (= lt!234121 (toIndex!0 (select (store (arr!15794 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511542 (= lt!234122 (toIndex!0 (select (arr!15794 a!3235) j!176) mask!3524))))

(assert (=> b!511542 (= lt!234118 (Found!4268 j!176))))

(assert (=> b!511542 (= lt!234118 (seekEntryOrOpen!0 (select (arr!15794 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511542 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15786 0))(
  ( (Unit!15787) )
))
(declare-fun lt!234119 () Unit!15786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32840 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15786)

(assert (=> b!511542 (= lt!234119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!312356 () Bool)

(assert (=> start!46226 (=> (not res!312356) (not e!298875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46226 (= res!312356 (validMask!0 mask!3524))))

(assert (=> start!46226 e!298875))

(assert (=> start!46226 true))

(declare-fun array_inv!11568 (array!32840) Bool)

(assert (=> start!46226 (array_inv!11568 a!3235)))

(assert (= (and start!46226 res!312356) b!511539))

(assert (= (and b!511539 res!312352) b!511538))

(assert (= (and b!511538 res!312353) b!511536))

(assert (= (and b!511536 res!312355) b!511541))

(assert (= (and b!511541 res!312349) b!511544))

(assert (= (and b!511544 res!312350) b!511540))

(assert (= (and b!511540 res!312348) b!511535))

(assert (= (and b!511535 res!312347) b!511542))

(assert (= (and b!511542 (not res!312351)) b!511537))

(assert (= (and b!511537 (not res!312354)) b!511543))

(declare-fun m!493087 () Bool)

(assert (=> b!511542 m!493087))

(declare-fun m!493089 () Bool)

(assert (=> b!511542 m!493089))

(declare-fun m!493091 () Bool)

(assert (=> b!511542 m!493091))

(declare-fun m!493093 () Bool)

(assert (=> b!511542 m!493093))

(declare-fun m!493095 () Bool)

(assert (=> b!511542 m!493095))

(declare-fun m!493097 () Bool)

(assert (=> b!511542 m!493097))

(assert (=> b!511542 m!493095))

(declare-fun m!493099 () Bool)

(assert (=> b!511542 m!493099))

(assert (=> b!511542 m!493095))

(declare-fun m!493101 () Bool)

(assert (=> b!511542 m!493101))

(assert (=> b!511542 m!493091))

(declare-fun m!493103 () Bool)

(assert (=> b!511542 m!493103))

(assert (=> b!511542 m!493095))

(declare-fun m!493105 () Bool)

(assert (=> b!511542 m!493105))

(assert (=> b!511542 m!493091))

(declare-fun m!493107 () Bool)

(assert (=> b!511535 m!493107))

(declare-fun m!493109 () Bool)

(assert (=> b!511541 m!493109))

(declare-fun m!493111 () Bool)

(assert (=> b!511544 m!493111))

(declare-fun m!493113 () Bool)

(assert (=> b!511540 m!493113))

(assert (=> b!511538 m!493095))

(assert (=> b!511538 m!493095))

(declare-fun m!493115 () Bool)

(assert (=> b!511538 m!493115))

(declare-fun m!493117 () Bool)

(assert (=> b!511536 m!493117))

(declare-fun m!493119 () Bool)

(assert (=> start!46226 m!493119))

(declare-fun m!493121 () Bool)

(assert (=> start!46226 m!493121))

(push 1)

