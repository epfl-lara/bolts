; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29174 () Bool)

(assert start!29174)

(declare-fun b!295870 () Bool)

(declare-fun e!187015 () Bool)

(declare-fun e!187019 () Bool)

(assert (=> b!295870 (= e!187015 e!187019)))

(declare-fun res!155793 () Bool)

(assert (=> b!295870 (=> (not res!155793) (not e!187019))))

(declare-fun lt!146880 () Bool)

(assert (=> b!295870 (= res!155793 lt!146880)))

(declare-fun lt!146881 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2257 0))(
  ( (MissingZero!2257 (index!11198 (_ BitVec 32))) (Found!2257 (index!11199 (_ BitVec 32))) (Intermediate!2257 (undefined!3069 Bool) (index!11200 (_ BitVec 32)) (x!29378 (_ BitVec 32))) (Undefined!2257) (MissingVacant!2257 (index!11201 (_ BitVec 32))) )
))
(declare-fun lt!146884 () SeekEntryResult!2257)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14974 0))(
  ( (array!14975 (arr!7097 (Array (_ BitVec 32) (_ BitVec 64))) (size!7449 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14974)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14974 (_ BitVec 32)) SeekEntryResult!2257)

(assert (=> b!295870 (= lt!146884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146881 k0!2524 (array!14975 (store (arr!7097 a!3312) i!1256 k0!2524) (size!7449 a!3312)) mask!3809))))

(declare-fun lt!146885 () SeekEntryResult!2257)

(assert (=> b!295870 (= lt!146885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146881 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295870 (= lt!146881 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!155795 () Bool)

(declare-fun e!187018 () Bool)

(assert (=> start!29174 (=> (not res!155795) (not e!187018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29174 (= res!155795 (validMask!0 mask!3809))))

(assert (=> start!29174 e!187018))

(assert (=> start!29174 true))

(declare-fun array_inv!5051 (array!14974) Bool)

(assert (=> start!29174 (array_inv!5051 a!3312)))

(declare-fun b!295871 () Bool)

(assert (=> b!295871 (= e!187018 e!187015)))

(declare-fun res!155797 () Bool)

(assert (=> b!295871 (=> (not res!155797) (not e!187015))))

(declare-fun lt!146883 () SeekEntryResult!2257)

(assert (=> b!295871 (= res!155797 (or lt!146880 (= lt!146883 (MissingVacant!2257 i!1256))))))

(assert (=> b!295871 (= lt!146880 (= lt!146883 (MissingZero!2257 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14974 (_ BitVec 32)) SeekEntryResult!2257)

(assert (=> b!295871 (= lt!146883 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295872 () Bool)

(declare-fun res!155798 () Bool)

(assert (=> b!295872 (=> (not res!155798) (not e!187018))))

(assert (=> b!295872 (= res!155798 (and (= (size!7449 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7449 a!3312))))))

(declare-fun b!295873 () Bool)

(declare-fun res!155794 () Bool)

(assert (=> b!295873 (=> (not res!155794) (not e!187015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14974 (_ BitVec 32)) Bool)

(assert (=> b!295873 (= res!155794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295874 () Bool)

(declare-fun res!155796 () Bool)

(assert (=> b!295874 (=> (not res!155796) (not e!187018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295874 (= res!155796 (validKeyInArray!0 k0!2524))))

(declare-fun b!295875 () Bool)

(declare-fun e!187016 () Bool)

(assert (=> b!295875 (= e!187019 e!187016)))

(declare-fun res!155799 () Bool)

(assert (=> b!295875 (=> (not res!155799) (not e!187016))))

(declare-fun lt!146882 () Bool)

(assert (=> b!295875 (= res!155799 (and (or lt!146882 (not (undefined!3069 lt!146885))) (or lt!146882 (not (= (select (arr!7097 a!3312) (index!11200 lt!146885)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146882 (not (= (select (arr!7097 a!3312) (index!11200 lt!146885)) k0!2524))) (not lt!146882)))))

(get-info :version)

(assert (=> b!295875 (= lt!146882 (not ((_ is Intermediate!2257) lt!146885)))))

(declare-fun b!295876 () Bool)

(declare-fun res!155792 () Bool)

(assert (=> b!295876 (=> (not res!155792) (not e!187018))))

(declare-fun arrayContainsKey!0 (array!14974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295876 (= res!155792 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295877 () Bool)

(assert (=> b!295877 (= e!187016 (not true))))

(assert (=> b!295877 (and (= (select (arr!7097 a!3312) (index!11200 lt!146885)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11200 lt!146885) i!1256))))

(assert (= (and start!29174 res!155795) b!295872))

(assert (= (and b!295872 res!155798) b!295874))

(assert (= (and b!295874 res!155796) b!295876))

(assert (= (and b!295876 res!155792) b!295871))

(assert (= (and b!295871 res!155797) b!295873))

(assert (= (and b!295873 res!155794) b!295870))

(assert (= (and b!295870 res!155793) b!295875))

(assert (= (and b!295875 res!155799) b!295877))

(declare-fun m!308967 () Bool)

(assert (=> b!295874 m!308967))

(declare-fun m!308969 () Bool)

(assert (=> b!295873 m!308969))

(declare-fun m!308971 () Bool)

(assert (=> b!295877 m!308971))

(declare-fun m!308973 () Bool)

(assert (=> b!295871 m!308973))

(declare-fun m!308975 () Bool)

(assert (=> b!295870 m!308975))

(declare-fun m!308977 () Bool)

(assert (=> b!295870 m!308977))

(declare-fun m!308979 () Bool)

(assert (=> b!295870 m!308979))

(declare-fun m!308981 () Bool)

(assert (=> b!295870 m!308981))

(assert (=> b!295875 m!308971))

(declare-fun m!308983 () Bool)

(assert (=> b!295876 m!308983))

(declare-fun m!308985 () Bool)

(assert (=> start!29174 m!308985))

(declare-fun m!308987 () Bool)

(assert (=> start!29174 m!308987))

(check-sat (not b!295874) (not start!29174) (not b!295871) (not b!295873) (not b!295870) (not b!295876))
(check-sat)
