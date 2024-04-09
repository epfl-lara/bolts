; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28648 () Bool)

(assert start!28648)

(declare-fun b!292723 () Bool)

(declare-fun res!153821 () Bool)

(declare-fun e!185168 () Bool)

(assert (=> b!292723 (=> (not res!153821) (not e!185168))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292723 (= res!153821 (validKeyInArray!0 k!2524))))

(declare-fun b!292724 () Bool)

(declare-fun e!185170 () Bool)

(assert (=> b!292724 (= e!185170 false)))

(declare-datatypes ((SeekEntryResult!2190 0))(
  ( (MissingZero!2190 (index!10930 (_ BitVec 32))) (Found!2190 (index!10931 (_ BitVec 32))) (Intermediate!2190 (undefined!3002 Bool) (index!10932 (_ BitVec 32)) (x!29085 (_ BitVec 32))) (Undefined!2190) (MissingVacant!2190 (index!10933 (_ BitVec 32))) )
))
(declare-fun lt!145082 () SeekEntryResult!2190)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145085 () (_ BitVec 32))

(declare-datatypes ((array!14816 0))(
  ( (array!14817 (arr!7030 (Array (_ BitVec 32) (_ BitVec 64))) (size!7382 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14816)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14816 (_ BitVec 32)) SeekEntryResult!2190)

(assert (=> b!292724 (= lt!145082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145085 k!2524 (array!14817 (store (arr!7030 a!3312) i!1256 k!2524) (size!7382 a!3312)) mask!3809))))

(declare-fun lt!145083 () SeekEntryResult!2190)

(assert (=> b!292724 (= lt!145083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145085 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292724 (= lt!145085 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292725 () Bool)

(declare-fun res!153818 () Bool)

(assert (=> b!292725 (=> (not res!153818) (not e!185170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14816 (_ BitVec 32)) Bool)

(assert (=> b!292725 (= res!153818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153819 () Bool)

(assert (=> start!28648 (=> (not res!153819) (not e!185168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28648 (= res!153819 (validMask!0 mask!3809))))

(assert (=> start!28648 e!185168))

(assert (=> start!28648 true))

(declare-fun array_inv!4984 (array!14816) Bool)

(assert (=> start!28648 (array_inv!4984 a!3312)))

(declare-fun b!292726 () Bool)

(declare-fun res!153822 () Bool)

(assert (=> b!292726 (=> (not res!153822) (not e!185168))))

(declare-fun arrayContainsKey!0 (array!14816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292726 (= res!153822 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292727 () Bool)

(assert (=> b!292727 (= e!185168 e!185170)))

(declare-fun res!153820 () Bool)

(assert (=> b!292727 (=> (not res!153820) (not e!185170))))

(declare-fun lt!145084 () SeekEntryResult!2190)

(assert (=> b!292727 (= res!153820 (or (= lt!145084 (MissingZero!2190 i!1256)) (= lt!145084 (MissingVacant!2190 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14816 (_ BitVec 32)) SeekEntryResult!2190)

(assert (=> b!292727 (= lt!145084 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292728 () Bool)

(declare-fun res!153817 () Bool)

(assert (=> b!292728 (=> (not res!153817) (not e!185168))))

(assert (=> b!292728 (= res!153817 (and (= (size!7382 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7382 a!3312))))))

(assert (= (and start!28648 res!153819) b!292728))

(assert (= (and b!292728 res!153817) b!292723))

(assert (= (and b!292723 res!153821) b!292726))

(assert (= (and b!292726 res!153822) b!292727))

(assert (= (and b!292727 res!153820) b!292725))

(assert (= (and b!292725 res!153818) b!292724))

(declare-fun m!306535 () Bool)

(assert (=> b!292726 m!306535))

(declare-fun m!306537 () Bool)

(assert (=> start!28648 m!306537))

(declare-fun m!306539 () Bool)

(assert (=> start!28648 m!306539))

(declare-fun m!306541 () Bool)

(assert (=> b!292725 m!306541))

(declare-fun m!306543 () Bool)

(assert (=> b!292723 m!306543))

(declare-fun m!306545 () Bool)

(assert (=> b!292727 m!306545))

(declare-fun m!306547 () Bool)

(assert (=> b!292724 m!306547))

(declare-fun m!306549 () Bool)

(assert (=> b!292724 m!306549))

(declare-fun m!306551 () Bool)

(assert (=> b!292724 m!306551))

(declare-fun m!306553 () Bool)

(assert (=> b!292724 m!306553))

(push 1)

