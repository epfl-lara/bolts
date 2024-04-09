; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28402 () Bool)

(assert start!28402)

(declare-fun b!290621 () Bool)

(declare-fun e!183909 () Bool)

(declare-fun e!183910 () Bool)

(assert (=> b!290621 (= e!183909 e!183910)))

(declare-fun res!152000 () Bool)

(assert (=> b!290621 (=> (not res!152000) (not e!183910))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143639 () Bool)

(declare-datatypes ((SeekEntryResult!2115 0))(
  ( (MissingZero!2115 (index!10630 (_ BitVec 32))) (Found!2115 (index!10631 (_ BitVec 32))) (Intermediate!2115 (undefined!2927 Bool) (index!10632 (_ BitVec 32)) (x!28798 (_ BitVec 32))) (Undefined!2115) (MissingVacant!2115 (index!10633 (_ BitVec 32))) )
))
(declare-fun lt!143637 () SeekEntryResult!2115)

(assert (=> b!290621 (= res!152000 (or lt!143639 (= lt!143637 (MissingVacant!2115 i!1256))))))

(assert (=> b!290621 (= lt!143639 (= lt!143637 (MissingZero!2115 i!1256)))))

(declare-datatypes ((array!14660 0))(
  ( (array!14661 (arr!6955 (Array (_ BitVec 32) (_ BitVec 64))) (size!7307 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14660)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14660 (_ BitVec 32)) SeekEntryResult!2115)

(assert (=> b!290621 (= lt!143637 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290622 () Bool)

(declare-fun res!152003 () Bool)

(assert (=> b!290622 (=> (not res!152003) (not e!183909))))

(assert (=> b!290622 (= res!152003 (and (= (size!7307 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7307 a!3312))))))

(declare-fun b!290623 () Bool)

(declare-fun e!183913 () Bool)

(declare-fun e!183912 () Bool)

(assert (=> b!290623 (= e!183913 e!183912)))

(declare-fun res!151997 () Bool)

(assert (=> b!290623 (=> (not res!151997) (not e!183912))))

(declare-fun lt!143636 () SeekEntryResult!2115)

(declare-fun lt!143634 () Bool)

(assert (=> b!290623 (= res!151997 (and (or lt!143634 (not (undefined!2927 lt!143636))) (not lt!143634) (= (select (arr!6955 a!3312) (index!10632 lt!143636)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290623 (= lt!143634 (not (is-Intermediate!2115 lt!143636)))))

(declare-fun b!290625 () Bool)

(assert (=> b!290625 (= e!183912 (not true))))

(assert (=> b!290625 (= (index!10632 lt!143636) i!1256)))

(declare-fun b!290626 () Bool)

(declare-fun res!151998 () Bool)

(assert (=> b!290626 (=> (not res!151998) (not e!183910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14660 (_ BitVec 32)) Bool)

(assert (=> b!290626 (= res!151998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290624 () Bool)

(declare-fun res!152004 () Bool)

(assert (=> b!290624 (=> (not res!152004) (not e!183909))))

(declare-fun arrayContainsKey!0 (array!14660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290624 (= res!152004 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!152001 () Bool)

(assert (=> start!28402 (=> (not res!152001) (not e!183909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28402 (= res!152001 (validMask!0 mask!3809))))

(assert (=> start!28402 e!183909))

(assert (=> start!28402 true))

(declare-fun array_inv!4909 (array!14660) Bool)

(assert (=> start!28402 (array_inv!4909 a!3312)))

(declare-fun b!290627 () Bool)

(declare-fun res!152002 () Bool)

(assert (=> b!290627 (=> (not res!152002) (not e!183909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290627 (= res!152002 (validKeyInArray!0 k!2524))))

(declare-fun b!290628 () Bool)

(assert (=> b!290628 (= e!183910 e!183913)))

(declare-fun res!151999 () Bool)

(assert (=> b!290628 (=> (not res!151999) (not e!183913))))

(assert (=> b!290628 (= res!151999 (and (not lt!143639) (= lt!143637 (MissingVacant!2115 i!1256))))))

(declare-fun lt!143638 () (_ BitVec 32))

(declare-fun lt!143635 () SeekEntryResult!2115)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14660 (_ BitVec 32)) SeekEntryResult!2115)

(assert (=> b!290628 (= lt!143635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143638 k!2524 (array!14661 (store (arr!6955 a!3312) i!1256 k!2524) (size!7307 a!3312)) mask!3809))))

(assert (=> b!290628 (= lt!143636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143638 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290628 (= lt!143638 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28402 res!152001) b!290622))

(assert (= (and b!290622 res!152003) b!290627))

(assert (= (and b!290627 res!152002) b!290624))

(assert (= (and b!290624 res!152004) b!290621))

(assert (= (and b!290621 res!152000) b!290626))

(assert (= (and b!290626 res!151998) b!290628))

(assert (= (and b!290628 res!151999) b!290623))

(assert (= (and b!290623 res!151997) b!290625))

(declare-fun m!304663 () Bool)

(assert (=> start!28402 m!304663))

(declare-fun m!304665 () Bool)

(assert (=> start!28402 m!304665))

(declare-fun m!304667 () Bool)

(assert (=> b!290621 m!304667))

(declare-fun m!304669 () Bool)

(assert (=> b!290624 m!304669))

(declare-fun m!304671 () Bool)

(assert (=> b!290628 m!304671))

(declare-fun m!304673 () Bool)

(assert (=> b!290628 m!304673))

(declare-fun m!304675 () Bool)

(assert (=> b!290628 m!304675))

(declare-fun m!304677 () Bool)

(assert (=> b!290628 m!304677))

(declare-fun m!304679 () Bool)

(assert (=> b!290626 m!304679))

(declare-fun m!304681 () Bool)

(assert (=> b!290623 m!304681))

(declare-fun m!304683 () Bool)

(assert (=> b!290627 m!304683))

(push 1)

