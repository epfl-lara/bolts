; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28654 () Bool)

(assert start!28654)

(declare-fun b!292777 () Bool)

(declare-fun res!153873 () Bool)

(declare-fun e!185197 () Bool)

(assert (=> b!292777 (=> (not res!153873) (not e!185197))))

(declare-datatypes ((array!14822 0))(
  ( (array!14823 (arr!7033 (Array (_ BitVec 32) (_ BitVec 64))) (size!7385 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14822)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14822 (_ BitVec 32)) Bool)

(assert (=> b!292777 (= res!153873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292778 () Bool)

(declare-fun res!153875 () Bool)

(declare-fun e!185196 () Bool)

(assert (=> b!292778 (=> (not res!153875) (not e!185196))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292778 (= res!153875 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292779 () Bool)

(declare-fun res!153872 () Bool)

(assert (=> b!292779 (=> (not res!153872) (not e!185196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292779 (= res!153872 (validKeyInArray!0 k!2524))))

(declare-fun b!292780 () Bool)

(declare-fun res!153876 () Bool)

(assert (=> b!292780 (=> (not res!153876) (not e!185196))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292780 (= res!153876 (and (= (size!7385 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7385 a!3312))))))

(declare-fun b!292781 () Bool)

(assert (=> b!292781 (= e!185196 e!185197)))

(declare-fun res!153874 () Bool)

(assert (=> b!292781 (=> (not res!153874) (not e!185197))))

(declare-datatypes ((SeekEntryResult!2193 0))(
  ( (MissingZero!2193 (index!10942 (_ BitVec 32))) (Found!2193 (index!10943 (_ BitVec 32))) (Intermediate!2193 (undefined!3005 Bool) (index!10944 (_ BitVec 32)) (x!29096 (_ BitVec 32))) (Undefined!2193) (MissingVacant!2193 (index!10945 (_ BitVec 32))) )
))
(declare-fun lt!145121 () SeekEntryResult!2193)

(assert (=> b!292781 (= res!153874 (or (= lt!145121 (MissingZero!2193 i!1256)) (= lt!145121 (MissingVacant!2193 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14822 (_ BitVec 32)) SeekEntryResult!2193)

(assert (=> b!292781 (= lt!145121 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153871 () Bool)

(assert (=> start!28654 (=> (not res!153871) (not e!185196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28654 (= res!153871 (validMask!0 mask!3809))))

(assert (=> start!28654 e!185196))

(assert (=> start!28654 true))

(declare-fun array_inv!4987 (array!14822) Bool)

(assert (=> start!28654 (array_inv!4987 a!3312)))

(declare-fun b!292782 () Bool)

(assert (=> b!292782 (= e!185197 false)))

(declare-fun lt!145119 () SeekEntryResult!2193)

(declare-fun lt!145120 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14822 (_ BitVec 32)) SeekEntryResult!2193)

(assert (=> b!292782 (= lt!145119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145120 k!2524 (array!14823 (store (arr!7033 a!3312) i!1256 k!2524) (size!7385 a!3312)) mask!3809))))

(declare-fun lt!145118 () SeekEntryResult!2193)

(assert (=> b!292782 (= lt!145118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145120 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292782 (= lt!145120 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28654 res!153871) b!292780))

(assert (= (and b!292780 res!153876) b!292779))

(assert (= (and b!292779 res!153872) b!292778))

(assert (= (and b!292778 res!153875) b!292781))

(assert (= (and b!292781 res!153874) b!292777))

(assert (= (and b!292777 res!153873) b!292782))

(declare-fun m!306595 () Bool)

(assert (=> b!292779 m!306595))

(declare-fun m!306597 () Bool)

(assert (=> b!292782 m!306597))

(declare-fun m!306599 () Bool)

(assert (=> b!292782 m!306599))

(declare-fun m!306601 () Bool)

(assert (=> b!292782 m!306601))

(declare-fun m!306603 () Bool)

(assert (=> b!292782 m!306603))

(declare-fun m!306605 () Bool)

(assert (=> b!292777 m!306605))

(declare-fun m!306607 () Bool)

(assert (=> b!292778 m!306607))

(declare-fun m!306609 () Bool)

(assert (=> start!28654 m!306609))

(declare-fun m!306611 () Bool)

(assert (=> start!28654 m!306611))

(declare-fun m!306613 () Bool)

(assert (=> b!292781 m!306613))

(push 1)

(assert (not b!292779))

(assert (not b!292778))

(assert (not b!292782))

(assert (not start!28654))

(assert (not b!292777))

(assert (not b!292781))

(check-sat)

