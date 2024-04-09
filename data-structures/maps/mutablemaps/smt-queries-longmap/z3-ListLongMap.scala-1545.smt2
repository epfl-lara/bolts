; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29252 () Bool)

(assert start!29252)

(declare-fun b!296446 () Bool)

(declare-fun e!187375 () Bool)

(declare-fun e!187372 () Bool)

(assert (=> b!296446 (= e!187375 e!187372)))

(declare-fun res!156230 () Bool)

(assert (=> b!296446 (=> (not res!156230) (not e!187372))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147247 () Bool)

(declare-datatypes ((SeekEntryResult!2272 0))(
  ( (MissingZero!2272 (index!11258 (_ BitVec 32))) (Found!2272 (index!11259 (_ BitVec 32))) (Intermediate!2272 (undefined!3084 Bool) (index!11260 (_ BitVec 32)) (x!29439 (_ BitVec 32))) (Undefined!2272) (MissingVacant!2272 (index!11261 (_ BitVec 32))) )
))
(declare-fun lt!147251 () SeekEntryResult!2272)

(assert (=> b!296446 (= res!156230 (or lt!147247 (= lt!147251 (MissingVacant!2272 i!1256))))))

(assert (=> b!296446 (= lt!147247 (= lt!147251 (MissingZero!2272 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!15007 0))(
  ( (array!15008 (arr!7112 (Array (_ BitVec 32) (_ BitVec 64))) (size!7464 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15007)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15007 (_ BitVec 32)) SeekEntryResult!2272)

(assert (=> b!296446 (= lt!147251 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!296447 () Bool)

(declare-fun res!156231 () Bool)

(assert (=> b!296447 (=> (not res!156231) (not e!187375))))

(assert (=> b!296447 (= res!156231 (and (= (size!7464 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7464 a!3312))))))

(declare-fun b!296448 () Bool)

(declare-fun res!156229 () Bool)

(assert (=> b!296448 (=> (not res!156229) (not e!187372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15007 (_ BitVec 32)) Bool)

(assert (=> b!296448 (= res!156229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156233 () Bool)

(assert (=> start!29252 (=> (not res!156233) (not e!187375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29252 (= res!156233 (validMask!0 mask!3809))))

(assert (=> start!29252 e!187375))

(assert (=> start!29252 true))

(declare-fun array_inv!5066 (array!15007) Bool)

(assert (=> start!29252 (array_inv!5066 a!3312)))

(declare-fun b!296449 () Bool)

(declare-fun e!187374 () Bool)

(assert (=> b!296449 (= e!187372 e!187374)))

(declare-fun res!156232 () Bool)

(assert (=> b!296449 (=> (not res!156232) (not e!187374))))

(assert (=> b!296449 (= res!156232 lt!147247)))

(declare-fun lt!147246 () (_ BitVec 32))

(declare-fun lt!147250 () SeekEntryResult!2272)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15007 (_ BitVec 32)) SeekEntryResult!2272)

(assert (=> b!296449 (= lt!147250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147246 k0!2524 (array!15008 (store (arr!7112 a!3312) i!1256 k0!2524) (size!7464 a!3312)) mask!3809))))

(declare-fun lt!147249 () SeekEntryResult!2272)

(assert (=> b!296449 (= lt!147249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147246 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296449 (= lt!147246 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296450 () Bool)

(declare-fun e!187376 () Bool)

(assert (=> b!296450 (= e!187376 (not true))))

(assert (=> b!296450 (and (= (select (arr!7112 a!3312) (index!11260 lt!147249)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11260 lt!147249) i!1256))))

(declare-fun b!296451 () Bool)

(declare-fun res!156234 () Bool)

(assert (=> b!296451 (=> (not res!156234) (not e!187375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296451 (= res!156234 (validKeyInArray!0 k0!2524))))

(declare-fun b!296452 () Bool)

(declare-fun res!156227 () Bool)

(assert (=> b!296452 (=> (not res!156227) (not e!187375))))

(declare-fun arrayContainsKey!0 (array!15007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296452 (= res!156227 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296453 () Bool)

(assert (=> b!296453 (= e!187374 e!187376)))

(declare-fun res!156228 () Bool)

(assert (=> b!296453 (=> (not res!156228) (not e!187376))))

(declare-fun lt!147248 () Bool)

(assert (=> b!296453 (= res!156228 (and (or lt!147248 (not (undefined!3084 lt!147249))) (or lt!147248 (not (= (select (arr!7112 a!3312) (index!11260 lt!147249)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147248 (not (= (select (arr!7112 a!3312) (index!11260 lt!147249)) k0!2524))) (not lt!147248)))))

(get-info :version)

(assert (=> b!296453 (= lt!147248 (not ((_ is Intermediate!2272) lt!147249)))))

(assert (= (and start!29252 res!156233) b!296447))

(assert (= (and b!296447 res!156231) b!296451))

(assert (= (and b!296451 res!156234) b!296452))

(assert (= (and b!296452 res!156227) b!296446))

(assert (= (and b!296446 res!156230) b!296448))

(assert (= (and b!296448 res!156229) b!296449))

(assert (= (and b!296449 res!156232) b!296453))

(assert (= (and b!296453 res!156228) b!296450))

(declare-fun m!309417 () Bool)

(assert (=> b!296452 m!309417))

(declare-fun m!309419 () Bool)

(assert (=> b!296449 m!309419))

(declare-fun m!309421 () Bool)

(assert (=> b!296449 m!309421))

(declare-fun m!309423 () Bool)

(assert (=> b!296449 m!309423))

(declare-fun m!309425 () Bool)

(assert (=> b!296449 m!309425))

(declare-fun m!309427 () Bool)

(assert (=> b!296451 m!309427))

(declare-fun m!309429 () Bool)

(assert (=> b!296446 m!309429))

(declare-fun m!309431 () Bool)

(assert (=> b!296450 m!309431))

(declare-fun m!309433 () Bool)

(assert (=> b!296448 m!309433))

(declare-fun m!309435 () Bool)

(assert (=> start!29252 m!309435))

(declare-fun m!309437 () Bool)

(assert (=> start!29252 m!309437))

(assert (=> b!296453 m!309431))

(check-sat (not b!296451) (not start!29252) (not b!296448) (not b!296446) (not b!296452) (not b!296449))
(check-sat)
