; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28420 () Bool)

(assert start!28420)

(declare-fun b!290837 () Bool)

(declare-fun e!184044 () Bool)

(declare-fun e!184046 () Bool)

(assert (=> b!290837 (= e!184044 e!184046)))

(declare-fun res!152219 () Bool)

(assert (=> b!290837 (=> (not res!152219) (not e!184046))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143796 () Bool)

(declare-datatypes ((SeekEntryResult!2124 0))(
  ( (MissingZero!2124 (index!10666 (_ BitVec 32))) (Found!2124 (index!10667 (_ BitVec 32))) (Intermediate!2124 (undefined!2936 Bool) (index!10668 (_ BitVec 32)) (x!28831 (_ BitVec 32))) (Undefined!2124) (MissingVacant!2124 (index!10669 (_ BitVec 32))) )
))
(declare-fun lt!143801 () SeekEntryResult!2124)

(assert (=> b!290837 (= res!152219 (or lt!143796 (= lt!143801 (MissingVacant!2124 i!1256))))))

(assert (=> b!290837 (= lt!143796 (= lt!143801 (MissingZero!2124 i!1256)))))

(declare-datatypes ((array!14678 0))(
  ( (array!14679 (arr!6964 (Array (_ BitVec 32) (_ BitVec 64))) (size!7316 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14678)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14678 (_ BitVec 32)) SeekEntryResult!2124)

(assert (=> b!290837 (= lt!143801 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!152213 () Bool)

(assert (=> start!28420 (=> (not res!152213) (not e!184044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28420 (= res!152213 (validMask!0 mask!3809))))

(assert (=> start!28420 e!184044))

(assert (=> start!28420 true))

(declare-fun array_inv!4918 (array!14678) Bool)

(assert (=> start!28420 (array_inv!4918 a!3312)))

(declare-fun b!290838 () Bool)

(declare-fun res!152216 () Bool)

(assert (=> b!290838 (=> (not res!152216) (not e!184046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14678 (_ BitVec 32)) Bool)

(assert (=> b!290838 (= res!152216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290839 () Bool)

(declare-fun res!152218 () Bool)

(assert (=> b!290839 (=> (not res!152218) (not e!184044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290839 (= res!152218 (validKeyInArray!0 k!2524))))

(declare-fun b!290840 () Bool)

(declare-fun res!152220 () Bool)

(assert (=> b!290840 (=> (not res!152220) (not e!184044))))

(declare-fun arrayContainsKey!0 (array!14678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290840 (= res!152220 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290841 () Bool)

(declare-fun res!152215 () Bool)

(assert (=> b!290841 (=> (not res!152215) (not e!184044))))

(assert (=> b!290841 (= res!152215 (and (= (size!7316 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7316 a!3312))))))

(declare-fun b!290842 () Bool)

(declare-fun e!184047 () Bool)

(assert (=> b!290842 (= e!184046 e!184047)))

(declare-fun res!152217 () Bool)

(assert (=> b!290842 (=> (not res!152217) (not e!184047))))

(assert (=> b!290842 (= res!152217 (and (not lt!143796) (= lt!143801 (MissingVacant!2124 i!1256))))))

(declare-fun lt!143797 () (_ BitVec 32))

(declare-fun lt!143798 () SeekEntryResult!2124)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14678 (_ BitVec 32)) SeekEntryResult!2124)

(assert (=> b!290842 (= lt!143798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143797 k!2524 (array!14679 (store (arr!6964 a!3312) i!1256 k!2524) (size!7316 a!3312)) mask!3809))))

(declare-fun lt!143800 () SeekEntryResult!2124)

(assert (=> b!290842 (= lt!143800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143797 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290842 (= lt!143797 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290843 () Bool)

(declare-fun e!184045 () Bool)

(assert (=> b!290843 (= e!184045 (not true))))

(assert (=> b!290843 (= (index!10668 lt!143800) i!1256)))

(declare-fun b!290844 () Bool)

(assert (=> b!290844 (= e!184047 e!184045)))

(declare-fun res!152214 () Bool)

(assert (=> b!290844 (=> (not res!152214) (not e!184045))))

(declare-fun lt!143799 () Bool)

(assert (=> b!290844 (= res!152214 (and (or lt!143799 (not (undefined!2936 lt!143800))) (not lt!143799) (= (select (arr!6964 a!3312) (index!10668 lt!143800)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290844 (= lt!143799 (not (is-Intermediate!2124 lt!143800)))))

(assert (= (and start!28420 res!152213) b!290841))

(assert (= (and b!290841 res!152215) b!290839))

(assert (= (and b!290839 res!152218) b!290840))

(assert (= (and b!290840 res!152220) b!290837))

(assert (= (and b!290837 res!152219) b!290838))

(assert (= (and b!290838 res!152216) b!290842))

(assert (= (and b!290842 res!152217) b!290844))

(assert (= (and b!290844 res!152214) b!290843))

(declare-fun m!304861 () Bool)

(assert (=> start!28420 m!304861))

(declare-fun m!304863 () Bool)

(assert (=> start!28420 m!304863))

(declare-fun m!304865 () Bool)

(assert (=> b!290839 m!304865))

(declare-fun m!304867 () Bool)

(assert (=> b!290844 m!304867))

(declare-fun m!304869 () Bool)

(assert (=> b!290840 m!304869))

(declare-fun m!304871 () Bool)

(assert (=> b!290842 m!304871))

(declare-fun m!304873 () Bool)

(assert (=> b!290842 m!304873))

(declare-fun m!304875 () Bool)

(assert (=> b!290842 m!304875))

(declare-fun m!304877 () Bool)

(assert (=> b!290842 m!304877))

(declare-fun m!304879 () Bool)

(assert (=> b!290837 m!304879))

(declare-fun m!304881 () Bool)

(assert (=> b!290838 m!304881))

(push 1)

