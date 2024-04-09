; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29156 () Bool)

(assert start!29156)

(declare-fun b!295654 () Bool)

(declare-fun res!155581 () Bool)

(declare-fun e!186880 () Bool)

(assert (=> b!295654 (=> (not res!155581) (not e!186880))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14956 0))(
  ( (array!14957 (arr!7088 (Array (_ BitVec 32) (_ BitVec 64))) (size!7440 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14956)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295654 (= res!155581 (and (= (size!7440 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7440 a!3312))))))

(declare-fun b!295655 () Bool)

(declare-fun res!155583 () Bool)

(assert (=> b!295655 (=> (not res!155583) (not e!186880))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295655 (= res!155583 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295656 () Bool)

(declare-fun res!155577 () Bool)

(declare-fun e!186882 () Bool)

(assert (=> b!295656 (=> (not res!155577) (not e!186882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14956 (_ BitVec 32)) Bool)

(assert (=> b!295656 (= res!155577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295657 () Bool)

(declare-fun e!186883 () Bool)

(assert (=> b!295657 (= e!186882 e!186883)))

(declare-fun res!155578 () Bool)

(assert (=> b!295657 (=> (not res!155578) (not e!186883))))

(declare-fun lt!146723 () Bool)

(assert (=> b!295657 (= res!155578 lt!146723)))

(declare-datatypes ((SeekEntryResult!2248 0))(
  ( (MissingZero!2248 (index!11162 (_ BitVec 32))) (Found!2248 (index!11163 (_ BitVec 32))) (Intermediate!2248 (undefined!3060 Bool) (index!11164 (_ BitVec 32)) (x!29345 (_ BitVec 32))) (Undefined!2248) (MissingVacant!2248 (index!11165 (_ BitVec 32))) )
))
(declare-fun lt!146719 () SeekEntryResult!2248)

(declare-fun lt!146722 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14956 (_ BitVec 32)) SeekEntryResult!2248)

(assert (=> b!295657 (= lt!146719 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146722 k0!2524 (array!14957 (store (arr!7088 a!3312) i!1256 k0!2524) (size!7440 a!3312)) mask!3809))))

(declare-fun lt!146721 () SeekEntryResult!2248)

(assert (=> b!295657 (= lt!146721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146722 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295657 (= lt!146722 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!155582 () Bool)

(assert (=> start!29156 (=> (not res!155582) (not e!186880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29156 (= res!155582 (validMask!0 mask!3809))))

(assert (=> start!29156 e!186880))

(assert (=> start!29156 true))

(declare-fun array_inv!5042 (array!14956) Bool)

(assert (=> start!29156 (array_inv!5042 a!3312)))

(declare-fun b!295658 () Bool)

(declare-fun e!186884 () Bool)

(assert (=> b!295658 (= e!186883 e!186884)))

(declare-fun res!155579 () Bool)

(assert (=> b!295658 (=> (not res!155579) (not e!186884))))

(declare-fun lt!146720 () Bool)

(assert (=> b!295658 (= res!155579 (and (or lt!146720 (not (undefined!3060 lt!146721))) (or lt!146720 (not (= (select (arr!7088 a!3312) (index!11164 lt!146721)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146720 (not (= (select (arr!7088 a!3312) (index!11164 lt!146721)) k0!2524))) (not lt!146720)))))

(get-info :version)

(assert (=> b!295658 (= lt!146720 (not ((_ is Intermediate!2248) lt!146721)))))

(declare-fun b!295659 () Bool)

(declare-fun res!155580 () Bool)

(assert (=> b!295659 (=> (not res!155580) (not e!186880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295659 (= res!155580 (validKeyInArray!0 k0!2524))))

(declare-fun b!295660 () Bool)

(assert (=> b!295660 (= e!186884 (not true))))

(assert (=> b!295660 (and (= (select (arr!7088 a!3312) (index!11164 lt!146721)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11164 lt!146721) i!1256))))

(declare-fun b!295661 () Bool)

(assert (=> b!295661 (= e!186880 e!186882)))

(declare-fun res!155576 () Bool)

(assert (=> b!295661 (=> (not res!155576) (not e!186882))))

(declare-fun lt!146718 () SeekEntryResult!2248)

(assert (=> b!295661 (= res!155576 (or lt!146723 (= lt!146718 (MissingVacant!2248 i!1256))))))

(assert (=> b!295661 (= lt!146723 (= lt!146718 (MissingZero!2248 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14956 (_ BitVec 32)) SeekEntryResult!2248)

(assert (=> b!295661 (= lt!146718 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!29156 res!155582) b!295654))

(assert (= (and b!295654 res!155581) b!295659))

(assert (= (and b!295659 res!155580) b!295655))

(assert (= (and b!295655 res!155583) b!295661))

(assert (= (and b!295661 res!155576) b!295656))

(assert (= (and b!295656 res!155577) b!295657))

(assert (= (and b!295657 res!155578) b!295658))

(assert (= (and b!295658 res!155579) b!295660))

(declare-fun m!308769 () Bool)

(assert (=> b!295660 m!308769))

(declare-fun m!308771 () Bool)

(assert (=> start!29156 m!308771))

(declare-fun m!308773 () Bool)

(assert (=> start!29156 m!308773))

(declare-fun m!308775 () Bool)

(assert (=> b!295657 m!308775))

(declare-fun m!308777 () Bool)

(assert (=> b!295657 m!308777))

(declare-fun m!308779 () Bool)

(assert (=> b!295657 m!308779))

(declare-fun m!308781 () Bool)

(assert (=> b!295657 m!308781))

(assert (=> b!295658 m!308769))

(declare-fun m!308783 () Bool)

(assert (=> b!295659 m!308783))

(declare-fun m!308785 () Bool)

(assert (=> b!295661 m!308785))

(declare-fun m!308787 () Bool)

(assert (=> b!295656 m!308787))

(declare-fun m!308789 () Bool)

(assert (=> b!295655 m!308789))

(check-sat (not start!29156) (not b!295656) (not b!295661) (not b!295659) (not b!295655) (not b!295657))
(check-sat)
