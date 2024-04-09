; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28406 () Bool)

(assert start!28406)

(declare-fun res!152050 () Bool)

(declare-fun e!183940 () Bool)

(assert (=> start!28406 (=> (not res!152050) (not e!183940))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28406 (= res!152050 (validMask!0 mask!3809))))

(assert (=> start!28406 e!183940))

(assert (=> start!28406 true))

(declare-datatypes ((array!14664 0))(
  ( (array!14665 (arr!6957 (Array (_ BitVec 32) (_ BitVec 64))) (size!7309 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14664)

(declare-fun array_inv!4911 (array!14664) Bool)

(assert (=> start!28406 (array_inv!4911 a!3312)))

(declare-fun b!290669 () Bool)

(declare-fun e!183943 () Bool)

(declare-fun e!183942 () Bool)

(assert (=> b!290669 (= e!183943 e!183942)))

(declare-fun res!152052 () Bool)

(assert (=> b!290669 (=> (not res!152052) (not e!183942))))

(declare-datatypes ((SeekEntryResult!2117 0))(
  ( (MissingZero!2117 (index!10638 (_ BitVec 32))) (Found!2117 (index!10639 (_ BitVec 32))) (Intermediate!2117 (undefined!2929 Bool) (index!10640 (_ BitVec 32)) (x!28800 (_ BitVec 32))) (Undefined!2117) (MissingVacant!2117 (index!10641 (_ BitVec 32))) )
))
(declare-fun lt!143673 () SeekEntryResult!2117)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143672 () Bool)

(assert (=> b!290669 (= res!152052 (and (not lt!143672) (= lt!143673 (MissingVacant!2117 i!1256))))))

(declare-fun lt!143675 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!143674 () SeekEntryResult!2117)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14664 (_ BitVec 32)) SeekEntryResult!2117)

(assert (=> b!290669 (= lt!143674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143675 k!2524 (array!14665 (store (arr!6957 a!3312) i!1256 k!2524) (size!7309 a!3312)) mask!3809))))

(declare-fun lt!143671 () SeekEntryResult!2117)

(assert (=> b!290669 (= lt!143671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143675 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290669 (= lt!143675 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290670 () Bool)

(declare-fun res!152047 () Bool)

(assert (=> b!290670 (=> (not res!152047) (not e!183940))))

(assert (=> b!290670 (= res!152047 (and (= (size!7309 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7309 a!3312))))))

(declare-fun b!290671 () Bool)

(declare-fun res!152049 () Bool)

(assert (=> b!290671 (=> (not res!152049) (not e!183943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14664 (_ BitVec 32)) Bool)

(assert (=> b!290671 (= res!152049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290672 () Bool)

(assert (=> b!290672 (= e!183940 e!183943)))

(declare-fun res!152048 () Bool)

(assert (=> b!290672 (=> (not res!152048) (not e!183943))))

(assert (=> b!290672 (= res!152048 (or lt!143672 (= lt!143673 (MissingVacant!2117 i!1256))))))

(assert (=> b!290672 (= lt!143672 (= lt!143673 (MissingZero!2117 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14664 (_ BitVec 32)) SeekEntryResult!2117)

(assert (=> b!290672 (= lt!143673 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290673 () Bool)

(declare-fun res!152046 () Bool)

(assert (=> b!290673 (=> (not res!152046) (not e!183940))))

(declare-fun arrayContainsKey!0 (array!14664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290673 (= res!152046 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290674 () Bool)

(declare-fun e!183939 () Bool)

(assert (=> b!290674 (= e!183939 (not true))))

(assert (=> b!290674 (= (index!10640 lt!143671) i!1256)))

(declare-fun b!290675 () Bool)

(assert (=> b!290675 (= e!183942 e!183939)))

(declare-fun res!152045 () Bool)

(assert (=> b!290675 (=> (not res!152045) (not e!183939))))

(declare-fun lt!143670 () Bool)

(assert (=> b!290675 (= res!152045 (and (or lt!143670 (not (undefined!2929 lt!143671))) (not lt!143670) (= (select (arr!6957 a!3312) (index!10640 lt!143671)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290675 (= lt!143670 (not (is-Intermediate!2117 lt!143671)))))

(declare-fun b!290676 () Bool)

(declare-fun res!152051 () Bool)

(assert (=> b!290676 (=> (not res!152051) (not e!183940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290676 (= res!152051 (validKeyInArray!0 k!2524))))

(assert (= (and start!28406 res!152050) b!290670))

(assert (= (and b!290670 res!152047) b!290676))

(assert (= (and b!290676 res!152051) b!290673))

(assert (= (and b!290673 res!152046) b!290672))

(assert (= (and b!290672 res!152048) b!290671))

(assert (= (and b!290671 res!152049) b!290669))

(assert (= (and b!290669 res!152052) b!290675))

(assert (= (and b!290675 res!152045) b!290674))

(declare-fun m!304707 () Bool)

(assert (=> b!290669 m!304707))

(declare-fun m!304709 () Bool)

(assert (=> b!290669 m!304709))

(declare-fun m!304711 () Bool)

(assert (=> b!290669 m!304711))

(declare-fun m!304713 () Bool)

(assert (=> b!290669 m!304713))

(declare-fun m!304715 () Bool)

(assert (=> start!28406 m!304715))

(declare-fun m!304717 () Bool)

(assert (=> start!28406 m!304717))

(declare-fun m!304719 () Bool)

(assert (=> b!290672 m!304719))

(declare-fun m!304721 () Bool)

(assert (=> b!290676 m!304721))

(declare-fun m!304723 () Bool)

(assert (=> b!290675 m!304723))

(declare-fun m!304725 () Bool)

(assert (=> b!290673 m!304725))

(declare-fun m!304727 () Bool)

(assert (=> b!290671 m!304727))

(push 1)

