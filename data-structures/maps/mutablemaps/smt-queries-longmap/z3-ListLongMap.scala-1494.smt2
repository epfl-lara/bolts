; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28410 () Bool)

(assert start!28410)

(declare-fun b!290717 () Bool)

(declare-fun e!183970 () Bool)

(declare-fun e!183973 () Bool)

(assert (=> b!290717 (= e!183970 e!183973)))

(declare-fun res!152099 () Bool)

(assert (=> b!290717 (=> (not res!152099) (not e!183973))))

(declare-datatypes ((SeekEntryResult!2119 0))(
  ( (MissingZero!2119 (index!10646 (_ BitVec 32))) (Found!2119 (index!10647 (_ BitVec 32))) (Intermediate!2119 (undefined!2931 Bool) (index!10648 (_ BitVec 32)) (x!28810 (_ BitVec 32))) (Undefined!2119) (MissingVacant!2119 (index!10649 (_ BitVec 32))) )
))
(declare-fun lt!143710 () SeekEntryResult!2119)

(declare-fun lt!143708 () Bool)

(declare-datatypes ((array!14668 0))(
  ( (array!14669 (arr!6959 (Array (_ BitVec 32) (_ BitVec 64))) (size!7311 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14668)

(assert (=> b!290717 (= res!152099 (and (or lt!143708 (not (undefined!2931 lt!143710))) (not lt!143708) (= (select (arr!6959 a!3312) (index!10648 lt!143710)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290717 (= lt!143708 (not ((_ is Intermediate!2119) lt!143710)))))

(declare-fun b!290718 () Bool)

(declare-fun res!152093 () Bool)

(declare-fun e!183972 () Bool)

(assert (=> b!290718 (=> (not res!152093) (not e!183972))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14668 (_ BitVec 32)) Bool)

(assert (=> b!290718 (= res!152093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290719 () Bool)

(declare-fun res!152100 () Bool)

(declare-fun e!183971 () Bool)

(assert (=> b!290719 (=> (not res!152100) (not e!183971))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290719 (= res!152100 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290720 () Bool)

(assert (=> b!290720 (= e!183972 e!183970)))

(declare-fun res!152098 () Bool)

(assert (=> b!290720 (=> (not res!152098) (not e!183970))))

(declare-fun lt!143709 () Bool)

(declare-fun lt!143711 () SeekEntryResult!2119)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290720 (= res!152098 (and (not lt!143709) (= lt!143711 (MissingVacant!2119 i!1256))))))

(declare-fun lt!143706 () SeekEntryResult!2119)

(declare-fun lt!143707 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14668 (_ BitVec 32)) SeekEntryResult!2119)

(assert (=> b!290720 (= lt!143706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143707 k0!2524 (array!14669 (store (arr!6959 a!3312) i!1256 k0!2524) (size!7311 a!3312)) mask!3809))))

(assert (=> b!290720 (= lt!143710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143707 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290720 (= lt!143707 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!152096 () Bool)

(assert (=> start!28410 (=> (not res!152096) (not e!183971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28410 (= res!152096 (validMask!0 mask!3809))))

(assert (=> start!28410 e!183971))

(assert (=> start!28410 true))

(declare-fun array_inv!4913 (array!14668) Bool)

(assert (=> start!28410 (array_inv!4913 a!3312)))

(declare-fun b!290721 () Bool)

(assert (=> b!290721 (= e!183973 (not true))))

(assert (=> b!290721 (= (index!10648 lt!143710) i!1256)))

(declare-fun b!290722 () Bool)

(assert (=> b!290722 (= e!183971 e!183972)))

(declare-fun res!152097 () Bool)

(assert (=> b!290722 (=> (not res!152097) (not e!183972))))

(assert (=> b!290722 (= res!152097 (or lt!143709 (= lt!143711 (MissingVacant!2119 i!1256))))))

(assert (=> b!290722 (= lt!143709 (= lt!143711 (MissingZero!2119 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14668 (_ BitVec 32)) SeekEntryResult!2119)

(assert (=> b!290722 (= lt!143711 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290723 () Bool)

(declare-fun res!152095 () Bool)

(assert (=> b!290723 (=> (not res!152095) (not e!183971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290723 (= res!152095 (validKeyInArray!0 k0!2524))))

(declare-fun b!290724 () Bool)

(declare-fun res!152094 () Bool)

(assert (=> b!290724 (=> (not res!152094) (not e!183971))))

(assert (=> b!290724 (= res!152094 (and (= (size!7311 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7311 a!3312))))))

(assert (= (and start!28410 res!152096) b!290724))

(assert (= (and b!290724 res!152094) b!290723))

(assert (= (and b!290723 res!152095) b!290719))

(assert (= (and b!290719 res!152100) b!290722))

(assert (= (and b!290722 res!152097) b!290718))

(assert (= (and b!290718 res!152093) b!290720))

(assert (= (and b!290720 res!152098) b!290717))

(assert (= (and b!290717 res!152099) b!290721))

(declare-fun m!304751 () Bool)

(assert (=> b!290722 m!304751))

(declare-fun m!304753 () Bool)

(assert (=> b!290723 m!304753))

(declare-fun m!304755 () Bool)

(assert (=> b!290720 m!304755))

(declare-fun m!304757 () Bool)

(assert (=> b!290720 m!304757))

(declare-fun m!304759 () Bool)

(assert (=> b!290720 m!304759))

(declare-fun m!304761 () Bool)

(assert (=> b!290720 m!304761))

(declare-fun m!304763 () Bool)

(assert (=> b!290718 m!304763))

(declare-fun m!304765 () Bool)

(assert (=> start!28410 m!304765))

(declare-fun m!304767 () Bool)

(assert (=> start!28410 m!304767))

(declare-fun m!304769 () Bool)

(assert (=> b!290717 m!304769))

(declare-fun m!304771 () Bool)

(assert (=> b!290719 m!304771))

(check-sat (not b!290719) (not start!28410) (not b!290718) (not b!290722) (not b!290720) (not b!290723))
(check-sat)
