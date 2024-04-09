; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28640 () Bool)

(assert start!28640)

(declare-fun b!292651 () Bool)

(declare-fun res!153747 () Bool)

(declare-fun e!185134 () Bool)

(assert (=> b!292651 (=> (not res!153747) (not e!185134))))

(declare-datatypes ((array!14808 0))(
  ( (array!14809 (arr!7026 (Array (_ BitVec 32) (_ BitVec 64))) (size!7378 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14808)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14808 (_ BitVec 32)) Bool)

(assert (=> b!292651 (= res!153747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292652 () Bool)

(declare-fun e!185133 () Bool)

(assert (=> b!292652 (= e!185133 e!185134)))

(declare-fun res!153748 () Bool)

(assert (=> b!292652 (=> (not res!153748) (not e!185134))))

(declare-datatypes ((SeekEntryResult!2186 0))(
  ( (MissingZero!2186 (index!10914 (_ BitVec 32))) (Found!2186 (index!10915 (_ BitVec 32))) (Intermediate!2186 (undefined!2998 Bool) (index!10916 (_ BitVec 32)) (x!29065 (_ BitVec 32))) (Undefined!2186) (MissingVacant!2186 (index!10917 (_ BitVec 32))) )
))
(declare-fun lt!145034 () SeekEntryResult!2186)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292652 (= res!153748 (or (= lt!145034 (MissingZero!2186 i!1256)) (= lt!145034 (MissingVacant!2186 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14808 (_ BitVec 32)) SeekEntryResult!2186)

(assert (=> b!292652 (= lt!145034 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292653 () Bool)

(declare-fun res!153745 () Bool)

(assert (=> b!292653 (=> (not res!153745) (not e!185133))))

(declare-fun arrayContainsKey!0 (array!14808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292653 (= res!153745 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292654 () Bool)

(declare-fun res!153749 () Bool)

(assert (=> b!292654 (=> (not res!153749) (not e!185133))))

(assert (=> b!292654 (= res!153749 (and (= (size!7378 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7378 a!3312))))))

(declare-fun b!292655 () Bool)

(assert (=> b!292655 (= e!185134 false)))

(declare-fun lt!145036 () (_ BitVec 32))

(declare-fun lt!145037 () SeekEntryResult!2186)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14808 (_ BitVec 32)) SeekEntryResult!2186)

(assert (=> b!292655 (= lt!145037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145036 k!2524 (array!14809 (store (arr!7026 a!3312) i!1256 k!2524) (size!7378 a!3312)) mask!3809))))

(declare-fun lt!145035 () SeekEntryResult!2186)

(assert (=> b!292655 (= lt!145035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145036 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292655 (= lt!145036 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153750 () Bool)

(assert (=> start!28640 (=> (not res!153750) (not e!185133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28640 (= res!153750 (validMask!0 mask!3809))))

(assert (=> start!28640 e!185133))

(assert (=> start!28640 true))

(declare-fun array_inv!4980 (array!14808) Bool)

(assert (=> start!28640 (array_inv!4980 a!3312)))

(declare-fun b!292656 () Bool)

(declare-fun res!153746 () Bool)

(assert (=> b!292656 (=> (not res!153746) (not e!185133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292656 (= res!153746 (validKeyInArray!0 k!2524))))

(assert (= (and start!28640 res!153750) b!292654))

(assert (= (and b!292654 res!153749) b!292656))

(assert (= (and b!292656 res!153746) b!292653))

(assert (= (and b!292653 res!153745) b!292652))

(assert (= (and b!292652 res!153748) b!292651))

(assert (= (and b!292651 res!153747) b!292655))

(declare-fun m!306455 () Bool)

(assert (=> b!292653 m!306455))

(declare-fun m!306457 () Bool)

(assert (=> b!292652 m!306457))

(declare-fun m!306459 () Bool)

(assert (=> start!28640 m!306459))

(declare-fun m!306461 () Bool)

(assert (=> start!28640 m!306461))

(declare-fun m!306463 () Bool)

(assert (=> b!292655 m!306463))

(declare-fun m!306465 () Bool)

(assert (=> b!292655 m!306465))

(declare-fun m!306467 () Bool)

(assert (=> b!292655 m!306467))

(declare-fun m!306469 () Bool)

(assert (=> b!292655 m!306469))

(declare-fun m!306471 () Bool)

(assert (=> b!292656 m!306471))

(declare-fun m!306473 () Bool)

(assert (=> b!292651 m!306473))

(push 1)

(assert (not b!292656))

(assert (not b!292651))

