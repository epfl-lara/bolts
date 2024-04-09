; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28396 () Bool)

(assert start!28396)

(declare-fun b!290549 () Bool)

(declare-fun res!151932 () Bool)

(declare-fun e!183867 () Bool)

(assert (=> b!290549 (=> (not res!151932) (not e!183867))))

(declare-datatypes ((array!14654 0))(
  ( (array!14655 (arr!6952 (Array (_ BitVec 32) (_ BitVec 64))) (size!7304 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14654)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290549 (= res!151932 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290550 () Bool)

(declare-fun e!183866 () Bool)

(assert (=> b!290550 (= e!183866 (not true))))

(declare-datatypes ((SeekEntryResult!2112 0))(
  ( (MissingZero!2112 (index!10618 (_ BitVec 32))) (Found!2112 (index!10619 (_ BitVec 32))) (Intermediate!2112 (undefined!2924 Bool) (index!10620 (_ BitVec 32)) (x!28787 (_ BitVec 32))) (Undefined!2112) (MissingVacant!2112 (index!10621 (_ BitVec 32))) )
))
(declare-fun lt!143582 () SeekEntryResult!2112)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290550 (= (index!10620 lt!143582) i!1256)))

(declare-fun b!290551 () Bool)

(declare-fun res!151929 () Bool)

(assert (=> b!290551 (=> (not res!151929) (not e!183867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290551 (= res!151929 (validKeyInArray!0 k!2524))))

(declare-fun b!290552 () Bool)

(declare-fun res!151925 () Bool)

(assert (=> b!290552 (=> (not res!151925) (not e!183867))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290552 (= res!151925 (and (= (size!7304 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7304 a!3312))))))

(declare-fun b!290553 () Bool)

(declare-fun e!183865 () Bool)

(assert (=> b!290553 (= e!183865 e!183866)))

(declare-fun res!151928 () Bool)

(assert (=> b!290553 (=> (not res!151928) (not e!183866))))

(declare-fun lt!143583 () Bool)

(assert (=> b!290553 (= res!151928 (and (or lt!143583 (not (undefined!2924 lt!143582))) (not lt!143583) (= (select (arr!6952 a!3312) (index!10620 lt!143582)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290553 (= lt!143583 (not (is-Intermediate!2112 lt!143582)))))

(declare-fun res!151931 () Bool)

(assert (=> start!28396 (=> (not res!151931) (not e!183867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28396 (= res!151931 (validMask!0 mask!3809))))

(assert (=> start!28396 e!183867))

(assert (=> start!28396 true))

(declare-fun array_inv!4906 (array!14654) Bool)

(assert (=> start!28396 (array_inv!4906 a!3312)))

(declare-fun b!290554 () Bool)

(declare-fun e!183868 () Bool)

(assert (=> b!290554 (= e!183867 e!183868)))

(declare-fun res!151926 () Bool)

(assert (=> b!290554 (=> (not res!151926) (not e!183868))))

(declare-fun lt!143585 () SeekEntryResult!2112)

(declare-fun lt!143584 () Bool)

(assert (=> b!290554 (= res!151926 (or lt!143584 (= lt!143585 (MissingVacant!2112 i!1256))))))

(assert (=> b!290554 (= lt!143584 (= lt!143585 (MissingZero!2112 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14654 (_ BitVec 32)) SeekEntryResult!2112)

(assert (=> b!290554 (= lt!143585 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290555 () Bool)

(assert (=> b!290555 (= e!183868 e!183865)))

(declare-fun res!151930 () Bool)

(assert (=> b!290555 (=> (not res!151930) (not e!183865))))

(assert (=> b!290555 (= res!151930 (and (not lt!143584) (= lt!143585 (MissingVacant!2112 i!1256))))))

(declare-fun lt!143580 () SeekEntryResult!2112)

(declare-fun lt!143581 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14654 (_ BitVec 32)) SeekEntryResult!2112)

(assert (=> b!290555 (= lt!143580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143581 k!2524 (array!14655 (store (arr!6952 a!3312) i!1256 k!2524) (size!7304 a!3312)) mask!3809))))

(assert (=> b!290555 (= lt!143582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143581 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290555 (= lt!143581 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290556 () Bool)

(declare-fun res!151927 () Bool)

(assert (=> b!290556 (=> (not res!151927) (not e!183868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14654 (_ BitVec 32)) Bool)

(assert (=> b!290556 (= res!151927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28396 res!151931) b!290552))

(assert (= (and b!290552 res!151925) b!290551))

(assert (= (and b!290551 res!151929) b!290549))

(assert (= (and b!290549 res!151932) b!290554))

(assert (= (and b!290554 res!151926) b!290556))

(assert (= (and b!290556 res!151927) b!290555))

(assert (= (and b!290555 res!151930) b!290553))

(assert (= (and b!290553 res!151928) b!290550))

(declare-fun m!304597 () Bool)

(assert (=> b!290551 m!304597))

(declare-fun m!304599 () Bool)

(assert (=> b!290549 m!304599))

(declare-fun m!304601 () Bool)

(assert (=> start!28396 m!304601))

(declare-fun m!304603 () Bool)

(assert (=> start!28396 m!304603))

(declare-fun m!304605 () Bool)

(assert (=> b!290556 m!304605))

(declare-fun m!304607 () Bool)

(assert (=> b!290553 m!304607))

(declare-fun m!304609 () Bool)

(assert (=> b!290554 m!304609))

(declare-fun m!304611 () Bool)

(assert (=> b!290555 m!304611))

(declare-fun m!304613 () Bool)

(assert (=> b!290555 m!304613))

(declare-fun m!304615 () Bool)

(assert (=> b!290555 m!304615))

(declare-fun m!304617 () Bool)

(assert (=> b!290555 m!304617))

(push 1)

