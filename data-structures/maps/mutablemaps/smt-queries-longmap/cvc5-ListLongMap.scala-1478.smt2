; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28264 () Bool)

(assert start!28264)

(declare-fun b!289367 () Bool)

(declare-fun e!183215 () Bool)

(declare-fun e!183214 () Bool)

(assert (=> b!289367 (= e!183215 e!183214)))

(declare-fun res!151026 () Bool)

(assert (=> b!289367 (=> (not res!151026) (not e!183214))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142829 () Bool)

(declare-datatypes ((SeekEntryResult!2070 0))(
  ( (MissingZero!2070 (index!10450 (_ BitVec 32))) (Found!2070 (index!10451 (_ BitVec 32))) (Intermediate!2070 (undefined!2882 Bool) (index!10452 (_ BitVec 32)) (x!28627 (_ BitVec 32))) (Undefined!2070) (MissingVacant!2070 (index!10453 (_ BitVec 32))) )
))
(declare-fun lt!142835 () SeekEntryResult!2070)

(assert (=> b!289367 (= res!151026 (or lt!142829 (= lt!142835 (MissingVacant!2070 i!1256))))))

(assert (=> b!289367 (= lt!142829 (= lt!142835 (MissingZero!2070 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14567 0))(
  ( (array!14568 (arr!6910 (Array (_ BitVec 32) (_ BitVec 64))) (size!7262 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14567)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14567 (_ BitVec 32)) SeekEntryResult!2070)

(assert (=> b!289367 (= lt!142835 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289369 () Bool)

(declare-fun res!151025 () Bool)

(assert (=> b!289369 (=> (not res!151025) (not e!183215))))

(assert (=> b!289369 (= res!151025 (and (= (size!7262 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7262 a!3312))))))

(declare-fun b!289370 () Bool)

(declare-fun res!151022 () Bool)

(assert (=> b!289370 (=> (not res!151022) (not e!183214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14567 (_ BitVec 32)) Bool)

(assert (=> b!289370 (= res!151022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289371 () Bool)

(declare-datatypes ((Unit!9073 0))(
  ( (Unit!9074) )
))
(declare-fun e!183217 () Unit!9073)

(declare-fun e!183213 () Unit!9073)

(assert (=> b!289371 (= e!183217 e!183213)))

(declare-fun c!46736 () Bool)

(declare-fun lt!142831 () SeekEntryResult!2070)

(assert (=> b!289371 (= c!46736 (is-Intermediate!2070 lt!142831))))

(declare-fun b!289372 () Bool)

(declare-fun res!151023 () Bool)

(assert (=> b!289372 (=> (not res!151023) (not e!183215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289372 (= res!151023 (validKeyInArray!0 k!2524))))

(declare-fun b!289373 () Bool)

(declare-fun lt!142833 () SeekEntryResult!2070)

(assert (=> b!289373 (and (= lt!142833 lt!142831) (= (select (store (arr!6910 a!3312) i!1256 k!2524) (index!10452 lt!142831)) k!2524))))

(declare-fun lt!142832 () (_ BitVec 32))

(declare-fun lt!142834 () Unit!9073)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!14567 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9073)

(assert (=> b!289373 (= lt!142834 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!142832 (index!10452 lt!142831) (x!28627 lt!142831) mask!3809))))

(assert (=> b!289373 (and (= (select (arr!6910 a!3312) (index!10452 lt!142831)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10452 lt!142831) i!1256))))

(declare-fun Unit!9075 () Unit!9073)

(assert (=> b!289373 (= e!183213 Unit!9075)))

(declare-fun res!151021 () Bool)

(assert (=> start!28264 (=> (not res!151021) (not e!183215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28264 (= res!151021 (validMask!0 mask!3809))))

(assert (=> start!28264 e!183215))

(assert (=> start!28264 true))

(declare-fun array_inv!4864 (array!14567) Bool)

(assert (=> start!28264 (array_inv!4864 a!3312)))

(declare-fun b!289368 () Bool)

(declare-fun Unit!9076 () Unit!9073)

(assert (=> b!289368 (= e!183217 Unit!9076)))

(assert (=> b!289368 false))

(declare-fun b!289374 () Bool)

(declare-fun e!183216 () Bool)

(assert (=> b!289374 (= e!183214 e!183216)))

(declare-fun res!151024 () Bool)

(assert (=> b!289374 (=> (not res!151024) (not e!183216))))

(assert (=> b!289374 (= res!151024 lt!142829)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14567 (_ BitVec 32)) SeekEntryResult!2070)

(assert (=> b!289374 (= lt!142833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142832 k!2524 (array!14568 (store (arr!6910 a!3312) i!1256 k!2524) (size!7262 a!3312)) mask!3809))))

(assert (=> b!289374 (= lt!142831 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142832 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289374 (= lt!142832 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289375 () Bool)

(assert (=> b!289375 false))

(declare-fun Unit!9077 () Unit!9073)

(assert (=> b!289375 (= e!183213 Unit!9077)))

(declare-fun b!289376 () Bool)

(assert (=> b!289376 (= e!183216 false)))

(declare-fun lt!142830 () Unit!9073)

(assert (=> b!289376 (= lt!142830 e!183217)))

(declare-fun c!46735 () Bool)

(assert (=> b!289376 (= c!46735 (or (and (is-Intermediate!2070 lt!142831) (undefined!2882 lt!142831)) (and (is-Intermediate!2070 lt!142831) (= (select (arr!6910 a!3312) (index!10452 lt!142831)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2070 lt!142831) (= (select (arr!6910 a!3312) (index!10452 lt!142831)) k!2524))))))

(declare-fun b!289377 () Bool)

(declare-fun res!151020 () Bool)

(assert (=> b!289377 (=> (not res!151020) (not e!183215))))

(declare-fun arrayContainsKey!0 (array!14567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289377 (= res!151020 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28264 res!151021) b!289369))

(assert (= (and b!289369 res!151025) b!289372))

(assert (= (and b!289372 res!151023) b!289377))

(assert (= (and b!289377 res!151020) b!289367))

(assert (= (and b!289367 res!151026) b!289370))

(assert (= (and b!289370 res!151022) b!289374))

(assert (= (and b!289374 res!151024) b!289376))

(assert (= (and b!289376 c!46735) b!289368))

(assert (= (and b!289376 (not c!46735)) b!289371))

(assert (= (and b!289371 c!46736) b!289373))

(assert (= (and b!289371 (not c!46736)) b!289375))

(declare-fun m!303553 () Bool)

(assert (=> b!289367 m!303553))

(declare-fun m!303555 () Bool)

(assert (=> b!289377 m!303555))

(declare-fun m!303557 () Bool)

(assert (=> b!289373 m!303557))

(declare-fun m!303559 () Bool)

(assert (=> b!289373 m!303559))

(declare-fun m!303561 () Bool)

(assert (=> b!289373 m!303561))

(declare-fun m!303563 () Bool)

(assert (=> b!289373 m!303563))

(declare-fun m!303565 () Bool)

(assert (=> b!289370 m!303565))

(declare-fun m!303567 () Bool)

(assert (=> start!28264 m!303567))

(declare-fun m!303569 () Bool)

(assert (=> start!28264 m!303569))

(assert (=> b!289374 m!303557))

(declare-fun m!303571 () Bool)

(assert (=> b!289374 m!303571))

(declare-fun m!303573 () Bool)

(assert (=> b!289374 m!303573))

(declare-fun m!303575 () Bool)

(assert (=> b!289374 m!303575))

(declare-fun m!303577 () Bool)

(assert (=> b!289372 m!303577))

(assert (=> b!289376 m!303563))

(push 1)

