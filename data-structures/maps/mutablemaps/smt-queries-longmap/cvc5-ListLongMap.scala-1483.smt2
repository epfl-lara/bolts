; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28294 () Bool)

(assert start!28294)

(declare-fun res!151324 () Bool)

(declare-fun e!183451 () Bool)

(assert (=> start!28294 (=> (not res!151324) (not e!183451))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28294 (= res!151324 (validMask!0 mask!3809))))

(assert (=> start!28294 e!183451))

(assert (=> start!28294 true))

(declare-datatypes ((array!14597 0))(
  ( (array!14598 (arr!6925 (Array (_ BitVec 32) (_ BitVec 64))) (size!7277 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14597)

(declare-fun array_inv!4879 (array!14597) Bool)

(assert (=> start!28294 (array_inv!4879 a!3312)))

(declare-fun b!289807 () Bool)

(declare-fun e!183449 () Bool)

(assert (=> b!289807 (= e!183451 e!183449)))

(declare-fun res!151326 () Bool)

(assert (=> b!289807 (=> (not res!151326) (not e!183449))))

(declare-fun lt!143117 () Bool)

(declare-datatypes ((SeekEntryResult!2085 0))(
  ( (MissingZero!2085 (index!10510 (_ BitVec 32))) (Found!2085 (index!10511 (_ BitVec 32))) (Intermediate!2085 (undefined!2897 Bool) (index!10512 (_ BitVec 32)) (x!28682 (_ BitVec 32))) (Undefined!2085) (MissingVacant!2085 (index!10513 (_ BitVec 32))) )
))
(declare-fun lt!143115 () SeekEntryResult!2085)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289807 (= res!151326 (or lt!143117 (= lt!143115 (MissingVacant!2085 i!1256))))))

(assert (=> b!289807 (= lt!143117 (= lt!143115 (MissingZero!2085 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14597 (_ BitVec 32)) SeekEntryResult!2085)

(assert (=> b!289807 (= lt!143115 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289808 () Bool)

(assert (=> b!289808 (= e!183449 (and (not lt!143117) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!143113 () (_ BitVec 32))

(declare-fun lt!143114 () SeekEntryResult!2085)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14597 (_ BitVec 32)) SeekEntryResult!2085)

(assert (=> b!289808 (= lt!143114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143113 k!2524 (array!14598 (store (arr!6925 a!3312) i!1256 k!2524) (size!7277 a!3312)) mask!3809))))

(declare-fun lt!143116 () SeekEntryResult!2085)

(assert (=> b!289808 (= lt!143116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143113 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289808 (= lt!143113 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289809 () Bool)

(declare-fun res!151327 () Bool)

(assert (=> b!289809 (=> (not res!151327) (not e!183451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289809 (= res!151327 (validKeyInArray!0 k!2524))))

(declare-fun b!289810 () Bool)

(declare-fun res!151328 () Bool)

(assert (=> b!289810 (=> (not res!151328) (not e!183451))))

(assert (=> b!289810 (= res!151328 (and (= (size!7277 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7277 a!3312))))))

(declare-fun b!289811 () Bool)

(declare-fun res!151329 () Bool)

(assert (=> b!289811 (=> (not res!151329) (not e!183449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14597 (_ BitVec 32)) Bool)

(assert (=> b!289811 (= res!151329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289812 () Bool)

(declare-fun res!151325 () Bool)

(assert (=> b!289812 (=> (not res!151325) (not e!183451))))

(declare-fun arrayContainsKey!0 (array!14597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289812 (= res!151325 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28294 res!151324) b!289810))

(assert (= (and b!289810 res!151328) b!289809))

(assert (= (and b!289809 res!151327) b!289812))

(assert (= (and b!289812 res!151325) b!289807))

(assert (= (and b!289807 res!151326) b!289811))

(assert (= (and b!289811 res!151329) b!289808))

(declare-fun m!303925 () Bool)

(assert (=> b!289808 m!303925))

(declare-fun m!303927 () Bool)

(assert (=> b!289808 m!303927))

(declare-fun m!303929 () Bool)

(assert (=> b!289808 m!303929))

(declare-fun m!303931 () Bool)

(assert (=> b!289808 m!303931))

(declare-fun m!303933 () Bool)

(assert (=> b!289812 m!303933))

(declare-fun m!303935 () Bool)

(assert (=> b!289807 m!303935))

(declare-fun m!303937 () Bool)

(assert (=> start!28294 m!303937))

(declare-fun m!303939 () Bool)

(assert (=> start!28294 m!303939))

(declare-fun m!303941 () Bool)

(assert (=> b!289811 m!303941))

(declare-fun m!303943 () Bool)

(assert (=> b!289809 m!303943))

(push 1)

