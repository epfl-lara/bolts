; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28624 () Bool)

(assert start!28624)

(declare-fun b!292507 () Bool)

(declare-fun e!185060 () Bool)

(declare-fun e!185062 () Bool)

(assert (=> b!292507 (= e!185060 e!185062)))

(declare-fun res!153601 () Bool)

(assert (=> b!292507 (=> (not res!153601) (not e!185062))))

(declare-datatypes ((SeekEntryResult!2178 0))(
  ( (MissingZero!2178 (index!10882 (_ BitVec 32))) (Found!2178 (index!10883 (_ BitVec 32))) (Intermediate!2178 (undefined!2990 Bool) (index!10884 (_ BitVec 32)) (x!29041 (_ BitVec 32))) (Undefined!2178) (MissingVacant!2178 (index!10885 (_ BitVec 32))) )
))
(declare-fun lt!144939 () SeekEntryResult!2178)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292507 (= res!153601 (or (= lt!144939 (MissingZero!2178 i!1256)) (= lt!144939 (MissingVacant!2178 i!1256))))))

(declare-datatypes ((array!14792 0))(
  ( (array!14793 (arr!7018 (Array (_ BitVec 32) (_ BitVec 64))) (size!7370 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14792)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14792 (_ BitVec 32)) SeekEntryResult!2178)

(assert (=> b!292507 (= lt!144939 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153603 () Bool)

(assert (=> start!28624 (=> (not res!153603) (not e!185060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28624 (= res!153603 (validMask!0 mask!3809))))

(assert (=> start!28624 e!185060))

(assert (=> start!28624 true))

(declare-fun array_inv!4972 (array!14792) Bool)

(assert (=> start!28624 (array_inv!4972 a!3312)))

(declare-fun b!292508 () Bool)

(declare-fun res!153606 () Bool)

(assert (=> b!292508 (=> (not res!153606) (not e!185060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292508 (= res!153606 (validKeyInArray!0 k!2524))))

(declare-fun b!292509 () Bool)

(declare-fun res!153605 () Bool)

(assert (=> b!292509 (=> (not res!153605) (not e!185060))))

(assert (=> b!292509 (= res!153605 (and (= (size!7370 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7370 a!3312))))))

(declare-fun b!292510 () Bool)

(assert (=> b!292510 (= e!185062 false)))

(declare-fun lt!144941 () SeekEntryResult!2178)

(declare-fun lt!144940 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14792 (_ BitVec 32)) SeekEntryResult!2178)

(assert (=> b!292510 (= lt!144941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144940 k!2524 (array!14793 (store (arr!7018 a!3312) i!1256 k!2524) (size!7370 a!3312)) mask!3809))))

(declare-fun lt!144938 () SeekEntryResult!2178)

(assert (=> b!292510 (= lt!144938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144940 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292510 (= lt!144940 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292511 () Bool)

(declare-fun res!153602 () Bool)

(assert (=> b!292511 (=> (not res!153602) (not e!185060))))

(declare-fun arrayContainsKey!0 (array!14792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292511 (= res!153602 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292512 () Bool)

(declare-fun res!153604 () Bool)

(assert (=> b!292512 (=> (not res!153604) (not e!185062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14792 (_ BitVec 32)) Bool)

(assert (=> b!292512 (= res!153604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28624 res!153603) b!292509))

(assert (= (and b!292509 res!153605) b!292508))

(assert (= (and b!292508 res!153606) b!292511))

(assert (= (and b!292511 res!153602) b!292507))

(assert (= (and b!292507 res!153601) b!292512))

(assert (= (and b!292512 res!153604) b!292510))

(declare-fun m!306295 () Bool)

(assert (=> start!28624 m!306295))

(declare-fun m!306297 () Bool)

(assert (=> start!28624 m!306297))

(declare-fun m!306299 () Bool)

(assert (=> b!292510 m!306299))

(declare-fun m!306301 () Bool)

(assert (=> b!292510 m!306301))

(declare-fun m!306303 () Bool)

(assert (=> b!292510 m!306303))

(declare-fun m!306305 () Bool)

(assert (=> b!292510 m!306305))

(declare-fun m!306307 () Bool)

(assert (=> b!292512 m!306307))

(declare-fun m!306309 () Bool)

(assert (=> b!292508 m!306309))

(declare-fun m!306311 () Bool)

(assert (=> b!292511 m!306311))

(declare-fun m!306313 () Bool)

(assert (=> b!292507 m!306313))

(push 1)

