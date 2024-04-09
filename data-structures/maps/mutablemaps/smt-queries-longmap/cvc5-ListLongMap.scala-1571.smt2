; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29958 () Bool)

(assert start!29958)

(declare-fun b!300748 () Bool)

(declare-fun e!189892 () Bool)

(declare-fun e!189890 () Bool)

(assert (=> b!300748 (= e!189892 e!189890)))

(declare-fun res!158658 () Bool)

(assert (=> b!300748 (=> (not res!158658) (not e!189890))))

(declare-datatypes ((SeekEntryResult!2349 0))(
  ( (MissingZero!2349 (index!11572 (_ BitVec 32))) (Found!2349 (index!11573 (_ BitVec 32))) (Intermediate!2349 (undefined!3161 Bool) (index!11574 (_ BitVec 32)) (x!29800 (_ BitVec 32))) (Undefined!2349) (MissingVacant!2349 (index!11575 (_ BitVec 32))) )
))
(declare-fun lt!149699 () SeekEntryResult!2349)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!300748 (= res!158658 (or (= lt!149699 (MissingZero!2349 i!1256)) (= lt!149699 (MissingVacant!2349 i!1256))))))

(declare-datatypes ((array!15194 0))(
  ( (array!15195 (arr!7189 (Array (_ BitVec 32) (_ BitVec 64))) (size!7541 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15194)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15194 (_ BitVec 32)) SeekEntryResult!2349)

(assert (=> b!300748 (= lt!149699 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300749 () Bool)

(declare-fun res!158656 () Bool)

(assert (=> b!300749 (=> (not res!158656) (not e!189890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15194 (_ BitVec 32)) Bool)

(assert (=> b!300749 (= res!158656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300750 () Bool)

(declare-fun res!158661 () Bool)

(assert (=> b!300750 (=> (not res!158661) (not e!189892))))

(assert (=> b!300750 (= res!158661 (and (= (size!7541 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7541 a!3312))))))

(declare-fun b!300751 () Bool)

(declare-fun res!158659 () Bool)

(assert (=> b!300751 (=> (not res!158659) (not e!189892))))

(declare-fun arrayContainsKey!0 (array!15194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300751 (= res!158659 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300752 () Bool)

(declare-fun res!158657 () Bool)

(assert (=> b!300752 (=> (not res!158657) (not e!189892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300752 (= res!158657 (validKeyInArray!0 k!2524))))

(declare-fun res!158660 () Bool)

(assert (=> start!29958 (=> (not res!158660) (not e!189892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29958 (= res!158660 (validMask!0 mask!3809))))

(assert (=> start!29958 e!189892))

(assert (=> start!29958 true))

(declare-fun array_inv!5143 (array!15194) Bool)

(assert (=> start!29958 (array_inv!5143 a!3312)))

(declare-fun b!300753 () Bool)

(assert (=> b!300753 (= e!189890 false)))

(declare-fun lt!149697 () (_ BitVec 32))

(declare-fun lt!149698 () SeekEntryResult!2349)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15194 (_ BitVec 32)) SeekEntryResult!2349)

(assert (=> b!300753 (= lt!149698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149697 k!2524 (array!15195 (store (arr!7189 a!3312) i!1256 k!2524) (size!7541 a!3312)) mask!3809))))

(declare-fun lt!149696 () SeekEntryResult!2349)

(assert (=> b!300753 (= lt!149696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149697 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300753 (= lt!149697 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29958 res!158660) b!300750))

(assert (= (and b!300750 res!158661) b!300752))

(assert (= (and b!300752 res!158657) b!300751))

(assert (= (and b!300751 res!158659) b!300748))

(assert (= (and b!300748 res!158658) b!300749))

(assert (= (and b!300749 res!158656) b!300753))

(declare-fun m!312679 () Bool)

(assert (=> b!300751 m!312679))

(declare-fun m!312681 () Bool)

(assert (=> b!300748 m!312681))

(declare-fun m!312683 () Bool)

(assert (=> b!300753 m!312683))

(declare-fun m!312685 () Bool)

(assert (=> b!300753 m!312685))

(declare-fun m!312687 () Bool)

(assert (=> b!300753 m!312687))

(declare-fun m!312689 () Bool)

(assert (=> b!300753 m!312689))

(declare-fun m!312691 () Bool)

(assert (=> b!300752 m!312691))

(declare-fun m!312693 () Bool)

(assert (=> start!29958 m!312693))

(declare-fun m!312695 () Bool)

(assert (=> start!29958 m!312695))

(declare-fun m!312697 () Bool)

(assert (=> b!300749 m!312697))

(push 1)

