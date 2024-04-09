; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28408 () Bool)

(assert start!28408)

(declare-fun b!290693 () Bool)

(declare-fun e!183955 () Bool)

(assert (=> b!290693 (= e!183955 (not true))))

(declare-datatypes ((SeekEntryResult!2118 0))(
  ( (MissingZero!2118 (index!10642 (_ BitVec 32))) (Found!2118 (index!10643 (_ BitVec 32))) (Intermediate!2118 (undefined!2930 Bool) (index!10644 (_ BitVec 32)) (x!28809 (_ BitVec 32))) (Undefined!2118) (MissingVacant!2118 (index!10645 (_ BitVec 32))) )
))
(declare-fun lt!143689 () SeekEntryResult!2118)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290693 (= (index!10644 lt!143689) i!1256)))

(declare-fun b!290694 () Bool)

(declare-fun res!152075 () Bool)

(declare-fun e!183957 () Bool)

(assert (=> b!290694 (=> (not res!152075) (not e!183957))))

(declare-datatypes ((array!14666 0))(
  ( (array!14667 (arr!6958 (Array (_ BitVec 32) (_ BitVec 64))) (size!7310 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14666)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290694 (= res!152075 (and (= (size!7310 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7310 a!3312))))))

(declare-fun b!290695 () Bool)

(declare-fun e!183956 () Bool)

(assert (=> b!290695 (= e!183957 e!183956)))

(declare-fun res!152069 () Bool)

(assert (=> b!290695 (=> (not res!152069) (not e!183956))))

(declare-fun lt!143690 () SeekEntryResult!2118)

(declare-fun lt!143691 () Bool)

(assert (=> b!290695 (= res!152069 (or lt!143691 (= lt!143690 (MissingVacant!2118 i!1256))))))

(assert (=> b!290695 (= lt!143691 (= lt!143690 (MissingZero!2118 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14666 (_ BitVec 32)) SeekEntryResult!2118)

(assert (=> b!290695 (= lt!143690 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290696 () Bool)

(declare-fun e!183958 () Bool)

(assert (=> b!290696 (= e!183958 e!183955)))

(declare-fun res!152070 () Bool)

(assert (=> b!290696 (=> (not res!152070) (not e!183955))))

(declare-fun lt!143693 () Bool)

(assert (=> b!290696 (= res!152070 (and (or lt!143693 (not (undefined!2930 lt!143689))) (not lt!143693) (= (select (arr!6958 a!3312) (index!10644 lt!143689)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290696 (= lt!143693 (not (is-Intermediate!2118 lt!143689)))))

(declare-fun b!290697 () Bool)

(declare-fun res!152072 () Bool)

(assert (=> b!290697 (=> (not res!152072) (not e!183957))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290697 (= res!152072 (validKeyInArray!0 k!2524))))

(declare-fun res!152076 () Bool)

(assert (=> start!28408 (=> (not res!152076) (not e!183957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28408 (= res!152076 (validMask!0 mask!3809))))

(assert (=> start!28408 e!183957))

(assert (=> start!28408 true))

(declare-fun array_inv!4912 (array!14666) Bool)

(assert (=> start!28408 (array_inv!4912 a!3312)))

(declare-fun b!290698 () Bool)

(assert (=> b!290698 (= e!183956 e!183958)))

(declare-fun res!152073 () Bool)

(assert (=> b!290698 (=> (not res!152073) (not e!183958))))

(assert (=> b!290698 (= res!152073 (and (not lt!143691) (= lt!143690 (MissingVacant!2118 i!1256))))))

(declare-fun lt!143692 () SeekEntryResult!2118)

(declare-fun lt!143688 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14666 (_ BitVec 32)) SeekEntryResult!2118)

(assert (=> b!290698 (= lt!143692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143688 k!2524 (array!14667 (store (arr!6958 a!3312) i!1256 k!2524) (size!7310 a!3312)) mask!3809))))

(assert (=> b!290698 (= lt!143689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143688 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290698 (= lt!143688 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290699 () Bool)

(declare-fun res!152074 () Bool)

(assert (=> b!290699 (=> (not res!152074) (not e!183957))))

(declare-fun arrayContainsKey!0 (array!14666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290699 (= res!152074 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290700 () Bool)

(declare-fun res!152071 () Bool)

(assert (=> b!290700 (=> (not res!152071) (not e!183956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14666 (_ BitVec 32)) Bool)

(assert (=> b!290700 (= res!152071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28408 res!152076) b!290694))

(assert (= (and b!290694 res!152075) b!290697))

(assert (= (and b!290697 res!152072) b!290699))

(assert (= (and b!290699 res!152074) b!290695))

(assert (= (and b!290695 res!152069) b!290700))

(assert (= (and b!290700 res!152071) b!290698))

(assert (= (and b!290698 res!152073) b!290696))

(assert (= (and b!290696 res!152070) b!290693))

(declare-fun m!304729 () Bool)

(assert (=> b!290699 m!304729))

(declare-fun m!304731 () Bool)

(assert (=> start!28408 m!304731))

(declare-fun m!304733 () Bool)

(assert (=> start!28408 m!304733))

(declare-fun m!304735 () Bool)

(assert (=> b!290695 m!304735))

(declare-fun m!304737 () Bool)

(assert (=> b!290698 m!304737))

(declare-fun m!304739 () Bool)

(assert (=> b!290698 m!304739))

(declare-fun m!304741 () Bool)

(assert (=> b!290698 m!304741))

(declare-fun m!304743 () Bool)

(assert (=> b!290698 m!304743))

(declare-fun m!304745 () Bool)

(assert (=> b!290696 m!304745))

(declare-fun m!304747 () Bool)

(assert (=> b!290700 m!304747))

(declare-fun m!304749 () Bool)

(assert (=> b!290697 m!304749))

(push 1)

