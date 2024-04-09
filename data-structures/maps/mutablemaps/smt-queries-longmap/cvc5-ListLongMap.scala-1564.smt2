; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29820 () Bool)

(assert start!29820)

(declare-fun b!299938 () Bool)

(declare-fun e!189438 () Bool)

(assert (=> b!299938 (= e!189438 false)))

(declare-datatypes ((SeekEntryResult!2328 0))(
  ( (MissingZero!2328 (index!11488 (_ BitVec 32))) (Found!2328 (index!11489 (_ BitVec 32))) (Intermediate!2328 (undefined!3140 Bool) (index!11490 (_ BitVec 32)) (x!29711 (_ BitVec 32))) (Undefined!2328) (MissingVacant!2328 (index!11491 (_ BitVec 32))) )
))
(declare-fun lt!149235 () SeekEntryResult!2328)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15146 0))(
  ( (array!15147 (arr!7168 (Array (_ BitVec 32) (_ BitVec 64))) (size!7520 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15146)

(declare-fun lt!149236 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15146 (_ BitVec 32)) SeekEntryResult!2328)

(assert (=> b!299938 (= lt!149235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149236 k!2524 (array!15147 (store (arr!7168 a!3312) i!1256 k!2524) (size!7520 a!3312)) mask!3809))))

(declare-fun lt!149237 () SeekEntryResult!2328)

(assert (=> b!299938 (= lt!149237 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149236 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299938 (= lt!149236 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299939 () Bool)

(declare-fun res!158133 () Bool)

(declare-fun e!189439 () Bool)

(assert (=> b!299939 (=> (not res!158133) (not e!189439))))

(assert (=> b!299939 (= res!158133 (and (= (size!7520 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7520 a!3312))))))

(declare-fun b!299940 () Bool)

(assert (=> b!299940 (= e!189439 e!189438)))

(declare-fun res!158132 () Bool)

(assert (=> b!299940 (=> (not res!158132) (not e!189438))))

(declare-fun lt!149234 () SeekEntryResult!2328)

(assert (=> b!299940 (= res!158132 (or (= lt!149234 (MissingZero!2328 i!1256)) (= lt!149234 (MissingVacant!2328 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15146 (_ BitVec 32)) SeekEntryResult!2328)

(assert (=> b!299940 (= lt!149234 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299941 () Bool)

(declare-fun res!158130 () Bool)

(assert (=> b!299941 (=> (not res!158130) (not e!189439))))

(declare-fun arrayContainsKey!0 (array!15146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299941 (= res!158130 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!299942 () Bool)

(declare-fun res!158131 () Bool)

(assert (=> b!299942 (=> (not res!158131) (not e!189439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299942 (= res!158131 (validKeyInArray!0 k!2524))))

(declare-fun b!299943 () Bool)

(declare-fun res!158129 () Bool)

(assert (=> b!299943 (=> (not res!158129) (not e!189438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15146 (_ BitVec 32)) Bool)

(assert (=> b!299943 (= res!158129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!158128 () Bool)

(assert (=> start!29820 (=> (not res!158128) (not e!189439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29820 (= res!158128 (validMask!0 mask!3809))))

(assert (=> start!29820 e!189439))

(assert (=> start!29820 true))

(declare-fun array_inv!5122 (array!15146) Bool)

(assert (=> start!29820 (array_inv!5122 a!3312)))

(assert (= (and start!29820 res!158128) b!299939))

(assert (= (and b!299939 res!158133) b!299942))

(assert (= (and b!299942 res!158131) b!299941))

(assert (= (and b!299941 res!158130) b!299940))

(assert (= (and b!299940 res!158132) b!299943))

(assert (= (and b!299943 res!158129) b!299938))

(declare-fun m!312013 () Bool)

(assert (=> start!29820 m!312013))

(declare-fun m!312015 () Bool)

(assert (=> start!29820 m!312015))

(declare-fun m!312017 () Bool)

(assert (=> b!299941 m!312017))

(declare-fun m!312019 () Bool)

(assert (=> b!299940 m!312019))

(declare-fun m!312021 () Bool)

(assert (=> b!299938 m!312021))

(declare-fun m!312023 () Bool)

(assert (=> b!299938 m!312023))

(declare-fun m!312025 () Bool)

(assert (=> b!299938 m!312025))

(declare-fun m!312027 () Bool)

(assert (=> b!299938 m!312027))

(declare-fun m!312029 () Bool)

(assert (=> b!299943 m!312029))

(declare-fun m!312031 () Bool)

(assert (=> b!299942 m!312031))

(push 1)

