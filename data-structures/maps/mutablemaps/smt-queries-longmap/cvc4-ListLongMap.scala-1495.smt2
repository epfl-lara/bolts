; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28418 () Bool)

(assert start!28418)

(declare-fun b!290813 () Bool)

(declare-fun res!152192 () Bool)

(declare-fun e!184029 () Bool)

(assert (=> b!290813 (=> (not res!152192) (not e!184029))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290813 (= res!152192 (validKeyInArray!0 k!2524))))

(declare-fun res!152189 () Bool)

(assert (=> start!28418 (=> (not res!152189) (not e!184029))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28418 (= res!152189 (validMask!0 mask!3809))))

(assert (=> start!28418 e!184029))

(assert (=> start!28418 true))

(declare-datatypes ((array!14676 0))(
  ( (array!14677 (arr!6963 (Array (_ BitVec 32) (_ BitVec 64))) (size!7315 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14676)

(declare-fun array_inv!4917 (array!14676) Bool)

(assert (=> start!28418 (array_inv!4917 a!3312)))

(declare-fun b!290814 () Bool)

(declare-fun e!184033 () Bool)

(declare-fun e!184031 () Bool)

(assert (=> b!290814 (= e!184033 e!184031)))

(declare-fun res!152191 () Bool)

(assert (=> b!290814 (=> (not res!152191) (not e!184031))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143778 () Bool)

(declare-datatypes ((SeekEntryResult!2123 0))(
  ( (MissingZero!2123 (index!10662 (_ BitVec 32))) (Found!2123 (index!10663 (_ BitVec 32))) (Intermediate!2123 (undefined!2935 Bool) (index!10664 (_ BitVec 32)) (x!28822 (_ BitVec 32))) (Undefined!2123) (MissingVacant!2123 (index!10665 (_ BitVec 32))) )
))
(declare-fun lt!143780 () SeekEntryResult!2123)

(assert (=> b!290814 (= res!152191 (and (not lt!143778) (= lt!143780 (MissingVacant!2123 i!1256))))))

(declare-fun lt!143782 () SeekEntryResult!2123)

(declare-fun lt!143781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14676 (_ BitVec 32)) SeekEntryResult!2123)

(assert (=> b!290814 (= lt!143782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143781 k!2524 (array!14677 (store (arr!6963 a!3312) i!1256 k!2524) (size!7315 a!3312)) mask!3809))))

(declare-fun lt!143783 () SeekEntryResult!2123)

(assert (=> b!290814 (= lt!143783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143781 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290814 (= lt!143781 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290815 () Bool)

(declare-fun res!152190 () Bool)

(assert (=> b!290815 (=> (not res!152190) (not e!184029))))

(declare-fun arrayContainsKey!0 (array!14676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290815 (= res!152190 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290816 () Bool)

(declare-fun res!152196 () Bool)

(assert (=> b!290816 (=> (not res!152196) (not e!184029))))

(assert (=> b!290816 (= res!152196 (and (= (size!7315 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7315 a!3312))))))

(declare-fun b!290817 () Bool)

(declare-fun e!184030 () Bool)

(assert (=> b!290817 (= e!184030 (not true))))

(assert (=> b!290817 (= (index!10664 lt!143783) i!1256)))

(declare-fun b!290818 () Bool)

(assert (=> b!290818 (= e!184031 e!184030)))

(declare-fun res!152194 () Bool)

(assert (=> b!290818 (=> (not res!152194) (not e!184030))))

(declare-fun lt!143779 () Bool)

(assert (=> b!290818 (= res!152194 (and (or lt!143779 (not (undefined!2935 lt!143783))) (not lt!143779) (= (select (arr!6963 a!3312) (index!10664 lt!143783)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290818 (= lt!143779 (not (is-Intermediate!2123 lt!143783)))))

(declare-fun b!290819 () Bool)

(assert (=> b!290819 (= e!184029 e!184033)))

(declare-fun res!152193 () Bool)

(assert (=> b!290819 (=> (not res!152193) (not e!184033))))

(assert (=> b!290819 (= res!152193 (or lt!143778 (= lt!143780 (MissingVacant!2123 i!1256))))))

(assert (=> b!290819 (= lt!143778 (= lt!143780 (MissingZero!2123 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14676 (_ BitVec 32)) SeekEntryResult!2123)

(assert (=> b!290819 (= lt!143780 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290820 () Bool)

(declare-fun res!152195 () Bool)

(assert (=> b!290820 (=> (not res!152195) (not e!184033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14676 (_ BitVec 32)) Bool)

(assert (=> b!290820 (= res!152195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28418 res!152189) b!290816))

(assert (= (and b!290816 res!152196) b!290813))

(assert (= (and b!290813 res!152192) b!290815))

(assert (= (and b!290815 res!152190) b!290819))

(assert (= (and b!290819 res!152193) b!290820))

(assert (= (and b!290820 res!152195) b!290814))

(assert (= (and b!290814 res!152191) b!290818))

(assert (= (and b!290818 res!152194) b!290817))

(declare-fun m!304839 () Bool)

(assert (=> b!290815 m!304839))

(declare-fun m!304841 () Bool)

(assert (=> start!28418 m!304841))

(declare-fun m!304843 () Bool)

(assert (=> start!28418 m!304843))

(declare-fun m!304845 () Bool)

(assert (=> b!290813 m!304845))

(declare-fun m!304847 () Bool)

(assert (=> b!290820 m!304847))

(declare-fun m!304849 () Bool)

(assert (=> b!290819 m!304849))

(declare-fun m!304851 () Bool)

(assert (=> b!290814 m!304851))

(declare-fun m!304853 () Bool)

(assert (=> b!290814 m!304853))

(declare-fun m!304855 () Bool)

(assert (=> b!290814 m!304855))

(declare-fun m!304857 () Bool)

(assert (=> b!290814 m!304857))

(declare-fun m!304859 () Bool)

(assert (=> b!290818 m!304859))

(push 1)

