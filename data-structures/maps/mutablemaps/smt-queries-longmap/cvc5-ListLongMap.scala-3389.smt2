; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46756 () Bool)

(assert start!46756)

(declare-fun b!515977 () Bool)

(declare-fun res!315695 () Bool)

(declare-fun e!301176 () Bool)

(assert (=> b!515977 (=> (not res!315695) (not e!301176))))

(declare-datatypes ((array!33028 0))(
  ( (array!33029 (arr!15879 (Array (_ BitVec 32) (_ BitVec 64))) (size!16243 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33028)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515977 (= res!315695 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515979 () Bool)

(declare-fun e!301175 () Bool)

(assert (=> b!515979 (= e!301176 e!301175)))

(declare-fun res!315700 () Bool)

(assert (=> b!515979 (=> (not res!315700) (not e!301175))))

(declare-datatypes ((SeekEntryResult!4353 0))(
  ( (MissingZero!4353 (index!19600 (_ BitVec 32))) (Found!4353 (index!19601 (_ BitVec 32))) (Intermediate!4353 (undefined!5165 Bool) (index!19602 (_ BitVec 32)) (x!48591 (_ BitVec 32))) (Undefined!4353) (MissingVacant!4353 (index!19603 (_ BitVec 32))) )
))
(declare-fun lt!236261 () SeekEntryResult!4353)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515979 (= res!315700 (or (= lt!236261 (MissingZero!4353 i!1204)) (= lt!236261 (MissingVacant!4353 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33028 (_ BitVec 32)) SeekEntryResult!4353)

(assert (=> b!515979 (= lt!236261 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515980 () Bool)

(declare-fun res!315697 () Bool)

(assert (=> b!515980 (=> (not res!315697) (not e!301176))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515980 (= res!315697 (validKeyInArray!0 (select (arr!15879 a!3235) j!176)))))

(declare-fun b!515981 () Bool)

(declare-fun e!301174 () Bool)

(assert (=> b!515981 (= e!301175 (not e!301174))))

(declare-fun res!315698 () Bool)

(assert (=> b!515981 (=> res!315698 e!301174)))

(declare-fun lt!236257 () SeekEntryResult!4353)

(declare-fun lt!236258 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33028 (_ BitVec 32)) SeekEntryResult!4353)

(assert (=> b!515981 (= res!315698 (= lt!236257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236258 (select (store (arr!15879 a!3235) i!1204 k!2280) j!176) (array!33029 (store (arr!15879 a!3235) i!1204 k!2280) (size!16243 a!3235)) mask!3524)))))

(declare-fun lt!236259 () (_ BitVec 32))

(assert (=> b!515981 (= lt!236257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236259 (select (arr!15879 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515981 (= lt!236258 (toIndex!0 (select (store (arr!15879 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515981 (= lt!236259 (toIndex!0 (select (arr!15879 a!3235) j!176) mask!3524))))

(declare-fun e!301177 () Bool)

(assert (=> b!515981 e!301177))

(declare-fun res!315699 () Bool)

(assert (=> b!515981 (=> (not res!315699) (not e!301177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33028 (_ BitVec 32)) Bool)

(assert (=> b!515981 (= res!315699 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15956 0))(
  ( (Unit!15957) )
))
(declare-fun lt!236260 () Unit!15956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15956)

(assert (=> b!515981 (= lt!236260 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515982 () Bool)

(declare-fun res!315692 () Bool)

(assert (=> b!515982 (=> (not res!315692) (not e!301175))))

(declare-datatypes ((List!10090 0))(
  ( (Nil!10087) (Cons!10086 (h!10984 (_ BitVec 64)) (t!16326 List!10090)) )
))
(declare-fun arrayNoDuplicates!0 (array!33028 (_ BitVec 32) List!10090) Bool)

(assert (=> b!515982 (= res!315692 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10087))))

(declare-fun b!515983 () Bool)

(assert (=> b!515983 (= e!301174 true)))

(assert (=> b!515983 (and (bvslt (x!48591 lt!236257) #b01111111111111111111111111111110) (or (= (select (arr!15879 a!3235) (index!19602 lt!236257)) (select (arr!15879 a!3235) j!176)) (= (select (arr!15879 a!3235) (index!19602 lt!236257)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15879 a!3235) (index!19602 lt!236257)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!315696 () Bool)

(assert (=> start!46756 (=> (not res!315696) (not e!301176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46756 (= res!315696 (validMask!0 mask!3524))))

(assert (=> start!46756 e!301176))

(assert (=> start!46756 true))

(declare-fun array_inv!11653 (array!33028) Bool)

(assert (=> start!46756 (array_inv!11653 a!3235)))

(declare-fun b!515978 () Bool)

(declare-fun res!315693 () Bool)

(assert (=> b!515978 (=> (not res!315693) (not e!301176))))

(assert (=> b!515978 (= res!315693 (and (= (size!16243 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16243 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16243 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515984 () Bool)

(declare-fun res!315691 () Bool)

(assert (=> b!515984 (=> (not res!315691) (not e!301176))))

(assert (=> b!515984 (= res!315691 (validKeyInArray!0 k!2280))))

(declare-fun b!515985 () Bool)

(declare-fun res!315701 () Bool)

(assert (=> b!515985 (=> (not res!315701) (not e!301175))))

(assert (=> b!515985 (= res!315701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515986 () Bool)

(declare-fun res!315694 () Bool)

(assert (=> b!515986 (=> res!315694 e!301174)))

(assert (=> b!515986 (= res!315694 (or (undefined!5165 lt!236257) (not (is-Intermediate!4353 lt!236257))))))

(declare-fun b!515987 () Bool)

(assert (=> b!515987 (= e!301177 (= (seekEntryOrOpen!0 (select (arr!15879 a!3235) j!176) a!3235 mask!3524) (Found!4353 j!176)))))

(assert (= (and start!46756 res!315696) b!515978))

(assert (= (and b!515978 res!315693) b!515980))

(assert (= (and b!515980 res!315697) b!515984))

(assert (= (and b!515984 res!315691) b!515977))

(assert (= (and b!515977 res!315695) b!515979))

(assert (= (and b!515979 res!315700) b!515985))

(assert (= (and b!515985 res!315701) b!515982))

(assert (= (and b!515982 res!315692) b!515981))

(assert (= (and b!515981 res!315699) b!515987))

(assert (= (and b!515981 (not res!315698)) b!515986))

(assert (= (and b!515986 (not res!315694)) b!515983))

(declare-fun m!497461 () Bool)

(assert (=> b!515977 m!497461))

(declare-fun m!497463 () Bool)

(assert (=> start!46756 m!497463))

(declare-fun m!497465 () Bool)

(assert (=> start!46756 m!497465))

(declare-fun m!497467 () Bool)

(assert (=> b!515983 m!497467))

(declare-fun m!497469 () Bool)

(assert (=> b!515983 m!497469))

(declare-fun m!497471 () Bool)

(assert (=> b!515982 m!497471))

(declare-fun m!497473 () Bool)

(assert (=> b!515979 m!497473))

(assert (=> b!515987 m!497469))

(assert (=> b!515987 m!497469))

(declare-fun m!497475 () Bool)

(assert (=> b!515987 m!497475))

(declare-fun m!497477 () Bool)

(assert (=> b!515985 m!497477))

(assert (=> b!515980 m!497469))

(assert (=> b!515980 m!497469))

(declare-fun m!497479 () Bool)

(assert (=> b!515980 m!497479))

(declare-fun m!497481 () Bool)

(assert (=> b!515984 m!497481))

(declare-fun m!497483 () Bool)

(assert (=> b!515981 m!497483))

(declare-fun m!497485 () Bool)

(assert (=> b!515981 m!497485))

(declare-fun m!497487 () Bool)

(assert (=> b!515981 m!497487))

(assert (=> b!515981 m!497469))

(declare-fun m!497489 () Bool)

(assert (=> b!515981 m!497489))

(declare-fun m!497491 () Bool)

(assert (=> b!515981 m!497491))

(assert (=> b!515981 m!497487))

(declare-fun m!497493 () Bool)

(assert (=> b!515981 m!497493))

(assert (=> b!515981 m!497487))

(declare-fun m!497495 () Bool)

(assert (=> b!515981 m!497495))

(assert (=> b!515981 m!497469))

(declare-fun m!497497 () Bool)

(assert (=> b!515981 m!497497))

(assert (=> b!515981 m!497469))

(push 1)

