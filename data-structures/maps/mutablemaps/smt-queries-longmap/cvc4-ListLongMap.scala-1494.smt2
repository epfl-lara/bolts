; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28412 () Bool)

(assert start!28412)

(declare-fun b!290741 () Bool)

(declare-fun e!183987 () Bool)

(declare-fun e!183984 () Bool)

(assert (=> b!290741 (= e!183987 e!183984)))

(declare-fun res!152124 () Bool)

(assert (=> b!290741 (=> (not res!152124) (not e!183984))))

(declare-datatypes ((SeekEntryResult!2120 0))(
  ( (MissingZero!2120 (index!10650 (_ BitVec 32))) (Found!2120 (index!10651 (_ BitVec 32))) (Intermediate!2120 (undefined!2932 Bool) (index!10652 (_ BitVec 32)) (x!28811 (_ BitVec 32))) (Undefined!2120) (MissingVacant!2120 (index!10653 (_ BitVec 32))) )
))
(declare-fun lt!143728 () SeekEntryResult!2120)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143729 () Bool)

(assert (=> b!290741 (= res!152124 (or lt!143729 (= lt!143728 (MissingVacant!2120 i!1256))))))

(assert (=> b!290741 (= lt!143729 (= lt!143728 (MissingZero!2120 i!1256)))))

(declare-datatypes ((array!14670 0))(
  ( (array!14671 (arr!6960 (Array (_ BitVec 32) (_ BitVec 64))) (size!7312 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14670)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14670 (_ BitVec 32)) SeekEntryResult!2120)

(assert (=> b!290741 (= lt!143728 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!152118 () Bool)

(assert (=> start!28412 (=> (not res!152118) (not e!183987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28412 (= res!152118 (validMask!0 mask!3809))))

(assert (=> start!28412 e!183987))

(assert (=> start!28412 true))

(declare-fun array_inv!4914 (array!14670) Bool)

(assert (=> start!28412 (array_inv!4914 a!3312)))

(declare-fun b!290742 () Bool)

(declare-fun e!183985 () Bool)

(declare-fun e!183986 () Bool)

(assert (=> b!290742 (= e!183985 e!183986)))

(declare-fun res!152120 () Bool)

(assert (=> b!290742 (=> (not res!152120) (not e!183986))))

(declare-fun lt!143726 () Bool)

(declare-fun lt!143725 () SeekEntryResult!2120)

(assert (=> b!290742 (= res!152120 (and (or lt!143726 (not (undefined!2932 lt!143725))) (not lt!143726) (= (select (arr!6960 a!3312) (index!10652 lt!143725)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290742 (= lt!143726 (not (is-Intermediate!2120 lt!143725)))))

(declare-fun b!290743 () Bool)

(assert (=> b!290743 (= e!183986 (not true))))

(assert (=> b!290743 (= (index!10652 lt!143725) i!1256)))

(declare-fun b!290744 () Bool)

(declare-fun res!152122 () Bool)

(assert (=> b!290744 (=> (not res!152122) (not e!183987))))

(assert (=> b!290744 (= res!152122 (and (= (size!7312 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7312 a!3312))))))

(declare-fun b!290745 () Bool)

(declare-fun res!152121 () Bool)

(assert (=> b!290745 (=> (not res!152121) (not e!183987))))

(declare-fun arrayContainsKey!0 (array!14670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290745 (= res!152121 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290746 () Bool)

(declare-fun res!152123 () Bool)

(assert (=> b!290746 (=> (not res!152123) (not e!183987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290746 (= res!152123 (validKeyInArray!0 k!2524))))

(declare-fun b!290747 () Bool)

(declare-fun res!152119 () Bool)

(assert (=> b!290747 (=> (not res!152119) (not e!183984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14670 (_ BitVec 32)) Bool)

(assert (=> b!290747 (= res!152119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290748 () Bool)

(assert (=> b!290748 (= e!183984 e!183985)))

(declare-fun res!152117 () Bool)

(assert (=> b!290748 (=> (not res!152117) (not e!183985))))

(assert (=> b!290748 (= res!152117 (and (not lt!143729) (= lt!143728 (MissingVacant!2120 i!1256))))))

(declare-fun lt!143727 () (_ BitVec 32))

(declare-fun lt!143724 () SeekEntryResult!2120)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14670 (_ BitVec 32)) SeekEntryResult!2120)

(assert (=> b!290748 (= lt!143724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143727 k!2524 (array!14671 (store (arr!6960 a!3312) i!1256 k!2524) (size!7312 a!3312)) mask!3809))))

(assert (=> b!290748 (= lt!143725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143727 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290748 (= lt!143727 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28412 res!152118) b!290744))

(assert (= (and b!290744 res!152122) b!290746))

(assert (= (and b!290746 res!152123) b!290745))

(assert (= (and b!290745 res!152121) b!290741))

(assert (= (and b!290741 res!152124) b!290747))

(assert (= (and b!290747 res!152119) b!290748))

(assert (= (and b!290748 res!152117) b!290742))

(assert (= (and b!290742 res!152120) b!290743))

(declare-fun m!304773 () Bool)

(assert (=> b!290742 m!304773))

(declare-fun m!304775 () Bool)

(assert (=> b!290746 m!304775))

(declare-fun m!304777 () Bool)

(assert (=> start!28412 m!304777))

(declare-fun m!304779 () Bool)

(assert (=> start!28412 m!304779))

(declare-fun m!304781 () Bool)

(assert (=> b!290745 m!304781))

(declare-fun m!304783 () Bool)

(assert (=> b!290748 m!304783))

(declare-fun m!304785 () Bool)

(assert (=> b!290748 m!304785))

(declare-fun m!304787 () Bool)

(assert (=> b!290748 m!304787))

(declare-fun m!304789 () Bool)

(assert (=> b!290748 m!304789))

(declare-fun m!304791 () Bool)

(assert (=> b!290741 m!304791))

(declare-fun m!304793 () Bool)

(assert (=> b!290747 m!304793))

(push 1)

