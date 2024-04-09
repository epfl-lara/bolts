; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29134 () Bool)

(assert start!29134)

(declare-fun res!155314 () Bool)

(declare-fun e!186715 () Bool)

(assert (=> start!29134 (=> (not res!155314) (not e!186715))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29134 (= res!155314 (validMask!0 mask!3809))))

(assert (=> start!29134 e!186715))

(assert (=> start!29134 true))

(declare-datatypes ((array!14934 0))(
  ( (array!14935 (arr!7077 (Array (_ BitVec 32) (_ BitVec 64))) (size!7429 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14934)

(declare-fun array_inv!5031 (array!14934) Bool)

(assert (=> start!29134 (array_inv!5031 a!3312)))

(declare-fun b!295390 () Bool)

(declare-fun e!186717 () Bool)

(assert (=> b!295390 (= e!186715 e!186717)))

(declare-fun res!155312 () Bool)

(assert (=> b!295390 (=> (not res!155312) (not e!186717))))

(declare-fun lt!146520 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2237 0))(
  ( (MissingZero!2237 (index!11118 (_ BitVec 32))) (Found!2237 (index!11119 (_ BitVec 32))) (Intermediate!2237 (undefined!3049 Bool) (index!11120 (_ BitVec 32)) (x!29302 (_ BitVec 32))) (Undefined!2237) (MissingVacant!2237 (index!11121 (_ BitVec 32))) )
))
(declare-fun lt!146523 () SeekEntryResult!2237)

(assert (=> b!295390 (= res!155312 (or lt!146520 (= lt!146523 (MissingVacant!2237 i!1256))))))

(assert (=> b!295390 (= lt!146520 (= lt!146523 (MissingZero!2237 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14934 (_ BitVec 32)) SeekEntryResult!2237)

(assert (=> b!295390 (= lt!146523 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295391 () Bool)

(declare-fun res!155318 () Bool)

(assert (=> b!295391 (=> (not res!155318) (not e!186717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14934 (_ BitVec 32)) Bool)

(assert (=> b!295391 (= res!155318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295392 () Bool)

(declare-fun e!186719 () Bool)

(assert (=> b!295392 (= e!186719 (not true))))

(declare-fun lt!146525 () SeekEntryResult!2237)

(assert (=> b!295392 (and (= (select (arr!7077 a!3312) (index!11120 lt!146525)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11120 lt!146525) i!1256))))

(declare-fun b!295393 () Bool)

(declare-fun res!155316 () Bool)

(assert (=> b!295393 (=> (not res!155316) (not e!186715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295393 (= res!155316 (validKeyInArray!0 k!2524))))

(declare-fun b!295394 () Bool)

(declare-fun e!186716 () Bool)

(assert (=> b!295394 (= e!186717 e!186716)))

(declare-fun res!155315 () Bool)

(assert (=> b!295394 (=> (not res!155315) (not e!186716))))

(assert (=> b!295394 (= res!155315 lt!146520)))

(declare-fun lt!146522 () (_ BitVec 32))

(declare-fun lt!146521 () SeekEntryResult!2237)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14934 (_ BitVec 32)) SeekEntryResult!2237)

(assert (=> b!295394 (= lt!146521 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146522 k!2524 (array!14935 (store (arr!7077 a!3312) i!1256 k!2524) (size!7429 a!3312)) mask!3809))))

(assert (=> b!295394 (= lt!146525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146522 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295394 (= lt!146522 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295395 () Bool)

(declare-fun res!155319 () Bool)

(assert (=> b!295395 (=> (not res!155319) (not e!186715))))

(declare-fun arrayContainsKey!0 (array!14934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295395 (= res!155319 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295396 () Bool)

(assert (=> b!295396 (= e!186716 e!186719)))

(declare-fun res!155313 () Bool)

(assert (=> b!295396 (=> (not res!155313) (not e!186719))))

(declare-fun lt!146524 () Bool)

(assert (=> b!295396 (= res!155313 (and (or lt!146524 (not (undefined!3049 lt!146525))) (or lt!146524 (not (= (select (arr!7077 a!3312) (index!11120 lt!146525)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146524 (not (= (select (arr!7077 a!3312) (index!11120 lt!146525)) k!2524))) (not lt!146524)))))

(assert (=> b!295396 (= lt!146524 (not (is-Intermediate!2237 lt!146525)))))

(declare-fun b!295397 () Bool)

(declare-fun res!155317 () Bool)

(assert (=> b!295397 (=> (not res!155317) (not e!186715))))

(assert (=> b!295397 (= res!155317 (and (= (size!7429 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7429 a!3312))))))

(assert (= (and start!29134 res!155314) b!295397))

(assert (= (and b!295397 res!155317) b!295393))

(assert (= (and b!295393 res!155316) b!295395))

(assert (= (and b!295395 res!155319) b!295390))

(assert (= (and b!295390 res!155312) b!295391))

(assert (= (and b!295391 res!155318) b!295394))

(assert (= (and b!295394 res!155315) b!295396))

(assert (= (and b!295396 res!155313) b!295392))

(declare-fun m!308527 () Bool)

(assert (=> b!295392 m!308527))

(declare-fun m!308529 () Bool)

(assert (=> b!295393 m!308529))

(declare-fun m!308531 () Bool)

(assert (=> b!295395 m!308531))

(declare-fun m!308533 () Bool)

(assert (=> b!295394 m!308533))

(declare-fun m!308535 () Bool)

(assert (=> b!295394 m!308535))

(declare-fun m!308537 () Bool)

(assert (=> b!295394 m!308537))

(declare-fun m!308539 () Bool)

(assert (=> b!295394 m!308539))

(declare-fun m!308541 () Bool)

(assert (=> b!295391 m!308541))

(assert (=> b!295396 m!308527))

(declare-fun m!308543 () Bool)

(assert (=> start!29134 m!308543))

(declare-fun m!308545 () Bool)

(assert (=> start!29134 m!308545))

(declare-fun m!308547 () Bool)

(assert (=> b!295390 m!308547))

(push 1)

(assert (not start!29134))

(assert (not b!295393))

(assert (not b!295395))

(assert (not b!295391))

(assert (not b!295394))

(assert (not b!295390))

(check-sat)

