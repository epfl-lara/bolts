; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28400 () Bool)

(assert start!28400)

(declare-fun b!290597 () Bool)

(declare-fun res!151978 () Bool)

(declare-fun e!183896 () Bool)

(assert (=> b!290597 (=> (not res!151978) (not e!183896))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14658 0))(
  ( (array!14659 (arr!6954 (Array (_ BitVec 32) (_ BitVec 64))) (size!7306 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14658)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290597 (= res!151978 (and (= (size!7306 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7306 a!3312))))))

(declare-fun b!290598 () Bool)

(declare-fun res!151973 () Bool)

(assert (=> b!290598 (=> (not res!151973) (not e!183896))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290598 (= res!151973 (validKeyInArray!0 k!2524))))

(declare-fun res!151977 () Bool)

(assert (=> start!28400 (=> (not res!151977) (not e!183896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28400 (= res!151977 (validMask!0 mask!3809))))

(assert (=> start!28400 e!183896))

(assert (=> start!28400 true))

(declare-fun array_inv!4908 (array!14658) Bool)

(assert (=> start!28400 (array_inv!4908 a!3312)))

(declare-fun b!290599 () Bool)

(declare-fun res!151976 () Bool)

(declare-fun e!183898 () Bool)

(assert (=> b!290599 (=> (not res!151976) (not e!183898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14658 (_ BitVec 32)) Bool)

(assert (=> b!290599 (= res!151976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290600 () Bool)

(declare-fun e!183895 () Bool)

(declare-fun e!183897 () Bool)

(assert (=> b!290600 (= e!183895 e!183897)))

(declare-fun res!151980 () Bool)

(assert (=> b!290600 (=> (not res!151980) (not e!183897))))

(declare-fun lt!143621 () Bool)

(declare-datatypes ((SeekEntryResult!2114 0))(
  ( (MissingZero!2114 (index!10626 (_ BitVec 32))) (Found!2114 (index!10627 (_ BitVec 32))) (Intermediate!2114 (undefined!2926 Bool) (index!10628 (_ BitVec 32)) (x!28789 (_ BitVec 32))) (Undefined!2114) (MissingVacant!2114 (index!10629 (_ BitVec 32))) )
))
(declare-fun lt!143619 () SeekEntryResult!2114)

(assert (=> b!290600 (= res!151980 (and (or lt!143621 (not (undefined!2926 lt!143619))) (not lt!143621) (= (select (arr!6954 a!3312) (index!10628 lt!143619)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290600 (= lt!143621 (not (is-Intermediate!2114 lt!143619)))))

(declare-fun b!290601 () Bool)

(assert (=> b!290601 (= e!183897 (not true))))

(assert (=> b!290601 (= (index!10628 lt!143619) i!1256)))

(declare-fun b!290602 () Bool)

(assert (=> b!290602 (= e!183896 e!183898)))

(declare-fun res!151975 () Bool)

(assert (=> b!290602 (=> (not res!151975) (not e!183898))))

(declare-fun lt!143620 () Bool)

(declare-fun lt!143616 () SeekEntryResult!2114)

(assert (=> b!290602 (= res!151975 (or lt!143620 (= lt!143616 (MissingVacant!2114 i!1256))))))

(assert (=> b!290602 (= lt!143620 (= lt!143616 (MissingZero!2114 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14658 (_ BitVec 32)) SeekEntryResult!2114)

(assert (=> b!290602 (= lt!143616 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290603 () Bool)

(assert (=> b!290603 (= e!183898 e!183895)))

(declare-fun res!151974 () Bool)

(assert (=> b!290603 (=> (not res!151974) (not e!183895))))

(assert (=> b!290603 (= res!151974 (and (not lt!143620) (= lt!143616 (MissingVacant!2114 i!1256))))))

(declare-fun lt!143617 () (_ BitVec 32))

(declare-fun lt!143618 () SeekEntryResult!2114)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14658 (_ BitVec 32)) SeekEntryResult!2114)

(assert (=> b!290603 (= lt!143618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143617 k!2524 (array!14659 (store (arr!6954 a!3312) i!1256 k!2524) (size!7306 a!3312)) mask!3809))))

(assert (=> b!290603 (= lt!143619 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143617 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290603 (= lt!143617 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290604 () Bool)

(declare-fun res!151979 () Bool)

(assert (=> b!290604 (=> (not res!151979) (not e!183896))))

(declare-fun arrayContainsKey!0 (array!14658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290604 (= res!151979 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28400 res!151977) b!290597))

(assert (= (and b!290597 res!151978) b!290598))

(assert (= (and b!290598 res!151973) b!290604))

(assert (= (and b!290604 res!151979) b!290602))

(assert (= (and b!290602 res!151975) b!290599))

(assert (= (and b!290599 res!151976) b!290603))

(assert (= (and b!290603 res!151974) b!290600))

(assert (= (and b!290600 res!151980) b!290601))

(declare-fun m!304641 () Bool)

(assert (=> b!290604 m!304641))

(declare-fun m!304643 () Bool)

(assert (=> b!290603 m!304643))

(declare-fun m!304645 () Bool)

(assert (=> b!290603 m!304645))

(declare-fun m!304647 () Bool)

(assert (=> b!290603 m!304647))

(declare-fun m!304649 () Bool)

(assert (=> b!290603 m!304649))

(declare-fun m!304651 () Bool)

(assert (=> b!290599 m!304651))

(declare-fun m!304653 () Bool)

(assert (=> b!290602 m!304653))

(declare-fun m!304655 () Bool)

(assert (=> b!290598 m!304655))

(declare-fun m!304657 () Bool)

(assert (=> b!290600 m!304657))

(declare-fun m!304659 () Bool)

(assert (=> start!28400 m!304659))

(declare-fun m!304661 () Bool)

(assert (=> start!28400 m!304661))

(push 1)

