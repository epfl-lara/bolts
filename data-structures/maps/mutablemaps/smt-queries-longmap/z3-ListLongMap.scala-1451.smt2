; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28008 () Bool)

(assert start!28008)

(declare-fun b!287206 () Bool)

(declare-fun res!149132 () Bool)

(declare-fun e!181931 () Bool)

(assert (=> b!287206 (=> (not res!149132) (not e!181931))))

(declare-datatypes ((array!14401 0))(
  ( (array!14402 (arr!6830 (Array (_ BitVec 32) (_ BitVec 64))) (size!7182 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14401)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14401 (_ BitVec 32)) Bool)

(assert (=> b!287206 (= res!149132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287207 () Bool)

(declare-fun res!149135 () Bool)

(declare-fun e!181933 () Bool)

(assert (=> b!287207 (=> (not res!149135) (not e!181933))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287207 (= res!149135 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287208 () Bool)

(declare-fun res!149136 () Bool)

(assert (=> b!287208 (=> (not res!149136) (not e!181933))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287208 (= res!149136 (and (= (size!7182 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7182 a!3312))))))

(declare-fun b!287209 () Bool)

(assert (=> b!287209 (= e!181933 e!181931)))

(declare-fun res!149134 () Bool)

(assert (=> b!287209 (=> (not res!149134) (not e!181931))))

(declare-datatypes ((SeekEntryResult!1990 0))(
  ( (MissingZero!1990 (index!10130 (_ BitVec 32))) (Found!1990 (index!10131 (_ BitVec 32))) (Intermediate!1990 (undefined!2802 Bool) (index!10132 (_ BitVec 32)) (x!28319 (_ BitVec 32))) (Undefined!1990) (MissingVacant!1990 (index!10133 (_ BitVec 32))) )
))
(declare-fun lt!141461 () SeekEntryResult!1990)

(assert (=> b!287209 (= res!149134 (or (= lt!141461 (MissingZero!1990 i!1256)) (= lt!141461 (MissingVacant!1990 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14401 (_ BitVec 32)) SeekEntryResult!1990)

(assert (=> b!287209 (= lt!141461 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287210 () Bool)

(assert (=> b!287210 (= e!181931 false)))

(declare-fun lt!141460 () SeekEntryResult!1990)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14401 (_ BitVec 32)) SeekEntryResult!1990)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287210 (= lt!141460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!287211 () Bool)

(declare-fun res!149133 () Bool)

(assert (=> b!287211 (=> (not res!149133) (not e!181933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287211 (= res!149133 (validKeyInArray!0 k0!2524))))

(declare-fun res!149131 () Bool)

(assert (=> start!28008 (=> (not res!149131) (not e!181933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28008 (= res!149131 (validMask!0 mask!3809))))

(assert (=> start!28008 e!181933))

(assert (=> start!28008 true))

(declare-fun array_inv!4784 (array!14401) Bool)

(assert (=> start!28008 (array_inv!4784 a!3312)))

(assert (= (and start!28008 res!149131) b!287208))

(assert (= (and b!287208 res!149136) b!287211))

(assert (= (and b!287211 res!149133) b!287207))

(assert (= (and b!287207 res!149135) b!287209))

(assert (= (and b!287209 res!149134) b!287206))

(assert (= (and b!287206 res!149132) b!287210))

(declare-fun m!301697 () Bool)

(assert (=> b!287210 m!301697))

(assert (=> b!287210 m!301697))

(declare-fun m!301699 () Bool)

(assert (=> b!287210 m!301699))

(declare-fun m!301701 () Bool)

(assert (=> b!287209 m!301701))

(declare-fun m!301703 () Bool)

(assert (=> start!28008 m!301703))

(declare-fun m!301705 () Bool)

(assert (=> start!28008 m!301705))

(declare-fun m!301707 () Bool)

(assert (=> b!287206 m!301707))

(declare-fun m!301709 () Bool)

(assert (=> b!287207 m!301709))

(declare-fun m!301711 () Bool)

(assert (=> b!287211 m!301711))

(check-sat (not b!287211) (not b!287206) (not b!287210) (not b!287207) (not start!28008) (not b!287209))
(check-sat)
