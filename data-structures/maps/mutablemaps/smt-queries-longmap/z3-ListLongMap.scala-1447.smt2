; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27936 () Bool)

(assert start!27936)

(declare-fun b!286801 () Bool)

(declare-fun e!181708 () Bool)

(declare-fun e!181707 () Bool)

(assert (=> b!286801 (= e!181708 e!181707)))

(declare-fun res!148852 () Bool)

(assert (=> b!286801 (=> (not res!148852) (not e!181707))))

(declare-datatypes ((SeekEntryResult!1978 0))(
  ( (MissingZero!1978 (index!10082 (_ BitVec 32))) (Found!1978 (index!10083 (_ BitVec 32))) (Intermediate!1978 (undefined!2790 Bool) (index!10084 (_ BitVec 32)) (x!28269 (_ BitVec 32))) (Undefined!1978) (MissingVacant!1978 (index!10085 (_ BitVec 32))) )
))
(declare-fun lt!141298 () SeekEntryResult!1978)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286801 (= res!148852 (or (= lt!141298 (MissingZero!1978 i!1256)) (= lt!141298 (MissingVacant!1978 i!1256))))))

(declare-datatypes ((array!14374 0))(
  ( (array!14375 (arr!6818 (Array (_ BitVec 32) (_ BitVec 64))) (size!7170 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14374)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14374 (_ BitVec 32)) SeekEntryResult!1978)

(assert (=> b!286801 (= lt!141298 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286802 () Bool)

(assert (=> b!286802 (= e!181707 false)))

(declare-fun lt!141299 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286802 (= lt!141299 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!148849 () Bool)

(assert (=> start!27936 (=> (not res!148849) (not e!181708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27936 (= res!148849 (validMask!0 mask!3809))))

(assert (=> start!27936 e!181708))

(assert (=> start!27936 true))

(declare-fun array_inv!4772 (array!14374) Bool)

(assert (=> start!27936 (array_inv!4772 a!3312)))

(declare-fun b!286803 () Bool)

(declare-fun res!148853 () Bool)

(assert (=> b!286803 (=> (not res!148853) (not e!181708))))

(assert (=> b!286803 (= res!148853 (and (= (size!7170 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7170 a!3312))))))

(declare-fun b!286804 () Bool)

(declare-fun res!148850 () Bool)

(assert (=> b!286804 (=> (not res!148850) (not e!181708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286804 (= res!148850 (validKeyInArray!0 k0!2524))))

(declare-fun b!286805 () Bool)

(declare-fun res!148851 () Bool)

(assert (=> b!286805 (=> (not res!148851) (not e!181707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14374 (_ BitVec 32)) Bool)

(assert (=> b!286805 (= res!148851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286806 () Bool)

(declare-fun res!148854 () Bool)

(assert (=> b!286806 (=> (not res!148854) (not e!181708))))

(declare-fun arrayContainsKey!0 (array!14374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286806 (= res!148854 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27936 res!148849) b!286803))

(assert (= (and b!286803 res!148853) b!286804))

(assert (= (and b!286804 res!148850) b!286806))

(assert (= (and b!286806 res!148854) b!286801))

(assert (= (and b!286801 res!148852) b!286805))

(assert (= (and b!286805 res!148851) b!286802))

(declare-fun m!301419 () Bool)

(assert (=> start!27936 m!301419))

(declare-fun m!301421 () Bool)

(assert (=> start!27936 m!301421))

(declare-fun m!301423 () Bool)

(assert (=> b!286801 m!301423))

(declare-fun m!301425 () Bool)

(assert (=> b!286806 m!301425))

(declare-fun m!301427 () Bool)

(assert (=> b!286802 m!301427))

(declare-fun m!301429 () Bool)

(assert (=> b!286805 m!301429))

(declare-fun m!301431 () Bool)

(assert (=> b!286804 m!301431))

(check-sat (not b!286802) (not b!286804) (not start!27936) (not b!286801) (not b!286805) (not b!286806))
(check-sat)
