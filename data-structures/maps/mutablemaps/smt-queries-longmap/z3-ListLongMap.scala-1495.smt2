; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28416 () Bool)

(assert start!28416)

(declare-fun b!290789 () Bool)

(declare-fun e!184016 () Bool)

(declare-fun e!184017 () Bool)

(assert (=> b!290789 (= e!184016 e!184017)))

(declare-fun res!152172 () Bool)

(assert (=> b!290789 (=> (not res!152172) (not e!184017))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143764 () Bool)

(declare-datatypes ((SeekEntryResult!2122 0))(
  ( (MissingZero!2122 (index!10658 (_ BitVec 32))) (Found!2122 (index!10659 (_ BitVec 32))) (Intermediate!2122 (undefined!2934 Bool) (index!10660 (_ BitVec 32)) (x!28821 (_ BitVec 32))) (Undefined!2122) (MissingVacant!2122 (index!10661 (_ BitVec 32))) )
))
(declare-fun lt!143761 () SeekEntryResult!2122)

(assert (=> b!290789 (= res!152172 (and (not lt!143764) (= lt!143761 (MissingVacant!2122 i!1256))))))

(declare-datatypes ((array!14674 0))(
  ( (array!14675 (arr!6962 (Array (_ BitVec 32) (_ BitVec 64))) (size!7314 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14674)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!143765 () (_ BitVec 32))

(declare-fun lt!143760 () SeekEntryResult!2122)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14674 (_ BitVec 32)) SeekEntryResult!2122)

(assert (=> b!290789 (= lt!143760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143765 k0!2524 (array!14675 (store (arr!6962 a!3312) i!1256 k0!2524) (size!7314 a!3312)) mask!3809))))

(declare-fun lt!143762 () SeekEntryResult!2122)

(assert (=> b!290789 (= lt!143762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143765 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290789 (= lt!143765 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!152165 () Bool)

(declare-fun e!184018 () Bool)

(assert (=> start!28416 (=> (not res!152165) (not e!184018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28416 (= res!152165 (validMask!0 mask!3809))))

(assert (=> start!28416 e!184018))

(assert (=> start!28416 true))

(declare-fun array_inv!4916 (array!14674) Bool)

(assert (=> start!28416 (array_inv!4916 a!3312)))

(declare-fun b!290790 () Bool)

(assert (=> b!290790 (= e!184018 e!184016)))

(declare-fun res!152166 () Bool)

(assert (=> b!290790 (=> (not res!152166) (not e!184016))))

(assert (=> b!290790 (= res!152166 (or lt!143764 (= lt!143761 (MissingVacant!2122 i!1256))))))

(assert (=> b!290790 (= lt!143764 (= lt!143761 (MissingZero!2122 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14674 (_ BitVec 32)) SeekEntryResult!2122)

(assert (=> b!290790 (= lt!143761 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290791 () Bool)

(declare-fun res!152170 () Bool)

(assert (=> b!290791 (=> (not res!152170) (not e!184018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290791 (= res!152170 (validKeyInArray!0 k0!2524))))

(declare-fun b!290792 () Bool)

(declare-fun e!184014 () Bool)

(assert (=> b!290792 (= e!184017 e!184014)))

(declare-fun res!152168 () Bool)

(assert (=> b!290792 (=> (not res!152168) (not e!184014))))

(declare-fun lt!143763 () Bool)

(assert (=> b!290792 (= res!152168 (and (or lt!143763 (not (undefined!2934 lt!143762))) (not lt!143763) (= (select (arr!6962 a!3312) (index!10660 lt!143762)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290792 (= lt!143763 (not ((_ is Intermediate!2122) lt!143762)))))

(declare-fun b!290793 () Bool)

(assert (=> b!290793 (= e!184014 (not true))))

(assert (=> b!290793 (= (index!10660 lt!143762) i!1256)))

(declare-fun b!290794 () Bool)

(declare-fun res!152169 () Bool)

(assert (=> b!290794 (=> (not res!152169) (not e!184018))))

(assert (=> b!290794 (= res!152169 (and (= (size!7314 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7314 a!3312))))))

(declare-fun b!290795 () Bool)

(declare-fun res!152171 () Bool)

(assert (=> b!290795 (=> (not res!152171) (not e!184016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14674 (_ BitVec 32)) Bool)

(assert (=> b!290795 (= res!152171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290796 () Bool)

(declare-fun res!152167 () Bool)

(assert (=> b!290796 (=> (not res!152167) (not e!184018))))

(declare-fun arrayContainsKey!0 (array!14674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290796 (= res!152167 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28416 res!152165) b!290794))

(assert (= (and b!290794 res!152169) b!290791))

(assert (= (and b!290791 res!152170) b!290796))

(assert (= (and b!290796 res!152167) b!290790))

(assert (= (and b!290790 res!152166) b!290795))

(assert (= (and b!290795 res!152171) b!290789))

(assert (= (and b!290789 res!152172) b!290792))

(assert (= (and b!290792 res!152168) b!290793))

(declare-fun m!304817 () Bool)

(assert (=> b!290795 m!304817))

(declare-fun m!304819 () Bool)

(assert (=> b!290789 m!304819))

(declare-fun m!304821 () Bool)

(assert (=> b!290789 m!304821))

(declare-fun m!304823 () Bool)

(assert (=> b!290789 m!304823))

(declare-fun m!304825 () Bool)

(assert (=> b!290789 m!304825))

(declare-fun m!304827 () Bool)

(assert (=> b!290791 m!304827))

(declare-fun m!304829 () Bool)

(assert (=> start!28416 m!304829))

(declare-fun m!304831 () Bool)

(assert (=> start!28416 m!304831))

(declare-fun m!304833 () Bool)

(assert (=> b!290792 m!304833))

(declare-fun m!304835 () Bool)

(assert (=> b!290796 m!304835))

(declare-fun m!304837 () Bool)

(assert (=> b!290790 m!304837))

(check-sat (not start!28416) (not b!290789) (not b!290795) (not b!290796) (not b!290790) (not b!290791))
(check-sat)
