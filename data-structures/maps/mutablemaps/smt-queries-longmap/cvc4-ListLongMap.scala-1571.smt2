; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29962 () Bool)

(assert start!29962)

(declare-fun b!300784 () Bool)

(declare-fun res!158693 () Bool)

(declare-fun e!189910 () Bool)

(assert (=> b!300784 (=> (not res!158693) (not e!189910))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15198 0))(
  ( (array!15199 (arr!7191 (Array (_ BitVec 32) (_ BitVec 64))) (size!7543 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15198)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300784 (= res!158693 (and (= (size!7543 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7543 a!3312))))))

(declare-fun b!300786 () Bool)

(declare-fun res!158694 () Bool)

(assert (=> b!300786 (=> (not res!158694) (not e!189910))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300786 (= res!158694 (validKeyInArray!0 k!2524))))

(declare-fun b!300787 () Bool)

(declare-fun res!158696 () Bool)

(assert (=> b!300787 (=> (not res!158696) (not e!189910))))

(declare-fun arrayContainsKey!0 (array!15198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300787 (= res!158696 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300788 () Bool)

(declare-fun e!189909 () Bool)

(assert (=> b!300788 (= e!189909 false)))

(declare-fun lt!149722 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2351 0))(
  ( (MissingZero!2351 (index!11580 (_ BitVec 32))) (Found!2351 (index!11581 (_ BitVec 32))) (Intermediate!2351 (undefined!3163 Bool) (index!11582 (_ BitVec 32)) (x!29802 (_ BitVec 32))) (Undefined!2351) (MissingVacant!2351 (index!11583 (_ BitVec 32))) )
))
(declare-fun lt!149721 () SeekEntryResult!2351)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15198 (_ BitVec 32)) SeekEntryResult!2351)

(assert (=> b!300788 (= lt!149721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149722 k!2524 (array!15199 (store (arr!7191 a!3312) i!1256 k!2524) (size!7543 a!3312)) mask!3809))))

(declare-fun lt!149720 () SeekEntryResult!2351)

(assert (=> b!300788 (= lt!149720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149722 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300788 (= lt!149722 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300789 () Bool)

(declare-fun res!158697 () Bool)

(assert (=> b!300789 (=> (not res!158697) (not e!189909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15198 (_ BitVec 32)) Bool)

(assert (=> b!300789 (= res!158697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300785 () Bool)

(assert (=> b!300785 (= e!189910 e!189909)))

(declare-fun res!158695 () Bool)

(assert (=> b!300785 (=> (not res!158695) (not e!189909))))

(declare-fun lt!149723 () SeekEntryResult!2351)

(assert (=> b!300785 (= res!158695 (or (= lt!149723 (MissingZero!2351 i!1256)) (= lt!149723 (MissingVacant!2351 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15198 (_ BitVec 32)) SeekEntryResult!2351)

(assert (=> b!300785 (= lt!149723 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!158692 () Bool)

(assert (=> start!29962 (=> (not res!158692) (not e!189910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29962 (= res!158692 (validMask!0 mask!3809))))

(assert (=> start!29962 e!189910))

(assert (=> start!29962 true))

(declare-fun array_inv!5145 (array!15198) Bool)

(assert (=> start!29962 (array_inv!5145 a!3312)))

(assert (= (and start!29962 res!158692) b!300784))

(assert (= (and b!300784 res!158693) b!300786))

(assert (= (and b!300786 res!158694) b!300787))

(assert (= (and b!300787 res!158696) b!300785))

(assert (= (and b!300785 res!158695) b!300789))

(assert (= (and b!300789 res!158697) b!300788))

(declare-fun m!312719 () Bool)

(assert (=> b!300786 m!312719))

(declare-fun m!312721 () Bool)

(assert (=> start!29962 m!312721))

(declare-fun m!312723 () Bool)

(assert (=> start!29962 m!312723))

(declare-fun m!312725 () Bool)

(assert (=> b!300785 m!312725))

(declare-fun m!312727 () Bool)

(assert (=> b!300787 m!312727))

(declare-fun m!312729 () Bool)

(assert (=> b!300789 m!312729))

(declare-fun m!312731 () Bool)

(assert (=> b!300788 m!312731))

(declare-fun m!312733 () Bool)

(assert (=> b!300788 m!312733))

(declare-fun m!312735 () Bool)

(assert (=> b!300788 m!312735))

(declare-fun m!312737 () Bool)

(assert (=> b!300788 m!312737))

(push 1)

(assert (not start!29962))

(assert (not b!300786))

(assert (not b!300787))

(assert (not b!300788))

(assert (not b!300785))

(assert (not b!300789))

