; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26202 () Bool)

(assert start!26202)

(declare-fun b!270627 () Bool)

(declare-fun res!134658 () Bool)

(declare-fun e!174360 () Bool)

(assert (=> b!270627 (=> (not res!134658) (not e!174360))))

(declare-datatypes ((array!13288 0))(
  ( (array!13289 (arr!6293 (Array (_ BitVec 32) (_ BitVec 64))) (size!6645 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13288)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270627 (= res!134658 (and (= (size!6645 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6645 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6645 a!3325))))))

(declare-fun b!270628 () Bool)

(declare-fun e!174359 () Bool)

(assert (=> b!270628 (= e!174359 false)))

(declare-fun lt!135706 () Bool)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4122 0))(
  ( (Nil!4119) (Cons!4118 (h!4785 (_ BitVec 64)) (t!9212 List!4122)) )
))
(declare-fun contains!1931 (List!4122 (_ BitVec 64)) Bool)

(assert (=> b!270628 (= lt!135706 (contains!1931 Nil!4119 k0!2581))))

(declare-fun b!270629 () Bool)

(declare-fun res!134664 () Bool)

(assert (=> b!270629 (=> (not res!134664) (not e!174360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270629 (= res!134664 (validKeyInArray!0 k0!2581))))

(declare-fun res!134655 () Bool)

(assert (=> start!26202 (=> (not res!134655) (not e!174360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26202 (= res!134655 (validMask!0 mask!3868))))

(assert (=> start!26202 e!174360))

(declare-fun array_inv!4247 (array!13288) Bool)

(assert (=> start!26202 (array_inv!4247 a!3325)))

(assert (=> start!26202 true))

(declare-fun b!270630 () Bool)

(declare-fun res!134662 () Bool)

(assert (=> b!270630 (=> (not res!134662) (not e!174359))))

(declare-fun noDuplicate!120 (List!4122) Bool)

(assert (=> b!270630 (= res!134662 (noDuplicate!120 Nil!4119))))

(declare-fun b!270631 () Bool)

(declare-fun res!134657 () Bool)

(assert (=> b!270631 (=> (not res!134657) (not e!174359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13288 (_ BitVec 32)) Bool)

(assert (=> b!270631 (= res!134657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270632 () Bool)

(assert (=> b!270632 (= e!174360 e!174359)))

(declare-fun res!134656 () Bool)

(assert (=> b!270632 (=> (not res!134656) (not e!174359))))

(declare-datatypes ((SeekEntryResult!1462 0))(
  ( (MissingZero!1462 (index!8018 (_ BitVec 32))) (Found!1462 (index!8019 (_ BitVec 32))) (Intermediate!1462 (undefined!2274 Bool) (index!8020 (_ BitVec 32)) (x!26323 (_ BitVec 32))) (Undefined!1462) (MissingVacant!1462 (index!8021 (_ BitVec 32))) )
))
(declare-fun lt!135707 () SeekEntryResult!1462)

(assert (=> b!270632 (= res!134656 (or (= lt!135707 (MissingZero!1462 i!1267)) (= lt!135707 (MissingVacant!1462 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13288 (_ BitVec 32)) SeekEntryResult!1462)

(assert (=> b!270632 (= lt!135707 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270633 () Bool)

(declare-fun res!134666 () Bool)

(assert (=> b!270633 (=> (not res!134666) (not e!174359))))

(assert (=> b!270633 (= res!134666 (validKeyInArray!0 (select (arr!6293 a!3325) startIndex!26)))))

(declare-fun b!270634 () Bool)

(declare-fun res!134667 () Bool)

(assert (=> b!270634 (=> (not res!134667) (not e!174359))))

(assert (=> b!270634 (= res!134667 (not (contains!1931 Nil!4119 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270635 () Bool)

(declare-fun res!134659 () Bool)

(assert (=> b!270635 (=> (not res!134659) (not e!174359))))

(assert (=> b!270635 (= res!134659 (not (= startIndex!26 i!1267)))))

(declare-fun b!270636 () Bool)

(declare-fun res!134665 () Bool)

(assert (=> b!270636 (=> (not res!134665) (not e!174360))))

(declare-fun arrayNoDuplicates!0 (array!13288 (_ BitVec 32) List!4122) Bool)

(assert (=> b!270636 (= res!134665 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4119))))

(declare-fun b!270637 () Bool)

(declare-fun res!134661 () Bool)

(assert (=> b!270637 (=> (not res!134661) (not e!174359))))

(assert (=> b!270637 (= res!134661 (and (bvslt (size!6645 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6645 a!3325))))))

(declare-fun b!270638 () Bool)

(declare-fun res!134663 () Bool)

(assert (=> b!270638 (=> (not res!134663) (not e!174359))))

(assert (=> b!270638 (= res!134663 (not (contains!1931 Nil!4119 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270639 () Bool)

(declare-fun res!134660 () Bool)

(assert (=> b!270639 (=> (not res!134660) (not e!174360))))

(declare-fun arrayContainsKey!0 (array!13288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270639 (= res!134660 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26202 res!134655) b!270627))

(assert (= (and b!270627 res!134658) b!270629))

(assert (= (and b!270629 res!134664) b!270636))

(assert (= (and b!270636 res!134665) b!270639))

(assert (= (and b!270639 res!134660) b!270632))

(assert (= (and b!270632 res!134656) b!270631))

(assert (= (and b!270631 res!134657) b!270635))

(assert (= (and b!270635 res!134659) b!270633))

(assert (= (and b!270633 res!134666) b!270637))

(assert (= (and b!270637 res!134661) b!270630))

(assert (= (and b!270630 res!134662) b!270638))

(assert (= (and b!270638 res!134663) b!270634))

(assert (= (and b!270634 res!134667) b!270628))

(declare-fun m!286209 () Bool)

(assert (=> b!270633 m!286209))

(assert (=> b!270633 m!286209))

(declare-fun m!286211 () Bool)

(assert (=> b!270633 m!286211))

(declare-fun m!286213 () Bool)

(assert (=> b!270629 m!286213))

(declare-fun m!286215 () Bool)

(assert (=> b!270638 m!286215))

(declare-fun m!286217 () Bool)

(assert (=> b!270632 m!286217))

(declare-fun m!286219 () Bool)

(assert (=> start!26202 m!286219))

(declare-fun m!286221 () Bool)

(assert (=> start!26202 m!286221))

(declare-fun m!286223 () Bool)

(assert (=> b!270628 m!286223))

(declare-fun m!286225 () Bool)

(assert (=> b!270634 m!286225))

(declare-fun m!286227 () Bool)

(assert (=> b!270636 m!286227))

(declare-fun m!286229 () Bool)

(assert (=> b!270631 m!286229))

(declare-fun m!286231 () Bool)

(assert (=> b!270630 m!286231))

(declare-fun m!286233 () Bool)

(assert (=> b!270639 m!286233))

(check-sat (not b!270638) (not b!270628) (not b!270631) (not start!26202) (not b!270636) (not b!270632) (not b!270633) (not b!270639) (not b!270629) (not b!270630) (not b!270634))
(check-sat)
