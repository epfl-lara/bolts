; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29132 () Bool)

(assert start!29132)

(declare-fun res!155295 () Bool)

(declare-fun e!186702 () Bool)

(assert (=> start!29132 (=> (not res!155295) (not e!186702))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29132 (= res!155295 (validMask!0 mask!3809))))

(assert (=> start!29132 e!186702))

(assert (=> start!29132 true))

(declare-datatypes ((array!14932 0))(
  ( (array!14933 (arr!7076 (Array (_ BitVec 32) (_ BitVec 64))) (size!7428 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14932)

(declare-fun array_inv!5030 (array!14932) Bool)

(assert (=> start!29132 (array_inv!5030 a!3312)))

(declare-fun b!295366 () Bool)

(declare-fun res!155290 () Bool)

(assert (=> b!295366 (=> (not res!155290) (not e!186702))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295366 (= res!155290 (and (= (size!7428 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7428 a!3312))))))

(declare-fun b!295367 () Bool)

(declare-fun e!186703 () Bool)

(declare-fun e!186700 () Bool)

(assert (=> b!295367 (= e!186703 e!186700)))

(declare-fun res!155294 () Bool)

(assert (=> b!295367 (=> (not res!155294) (not e!186700))))

(declare-fun lt!146507 () Bool)

(declare-datatypes ((SeekEntryResult!2236 0))(
  ( (MissingZero!2236 (index!11114 (_ BitVec 32))) (Found!2236 (index!11115 (_ BitVec 32))) (Intermediate!2236 (undefined!3048 Bool) (index!11116 (_ BitVec 32)) (x!29301 (_ BitVec 32))) (Undefined!2236) (MissingVacant!2236 (index!11117 (_ BitVec 32))) )
))
(declare-fun lt!146504 () SeekEntryResult!2236)

(declare-fun k0!2524 () (_ BitVec 64))

(assert (=> b!295367 (= res!155294 (and (or lt!146507 (not (undefined!3048 lt!146504))) (or lt!146507 (not (= (select (arr!7076 a!3312) (index!11116 lt!146504)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146507 (not (= (select (arr!7076 a!3312) (index!11116 lt!146504)) k0!2524))) (not lt!146507)))))

(get-info :version)

(assert (=> b!295367 (= lt!146507 (not ((_ is Intermediate!2236) lt!146504)))))

(declare-fun b!295368 () Bool)

(declare-fun res!155289 () Bool)

(assert (=> b!295368 (=> (not res!155289) (not e!186702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295368 (= res!155289 (validKeyInArray!0 k0!2524))))

(declare-fun b!295369 () Bool)

(declare-fun res!155288 () Bool)

(assert (=> b!295369 (=> (not res!155288) (not e!186702))))

(declare-fun arrayContainsKey!0 (array!14932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295369 (= res!155288 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295370 () Bool)

(declare-fun e!186701 () Bool)

(assert (=> b!295370 (= e!186701 e!186703)))

(declare-fun res!155293 () Bool)

(assert (=> b!295370 (=> (not res!155293) (not e!186703))))

(declare-fun lt!146506 () Bool)

(assert (=> b!295370 (= res!155293 lt!146506)))

(declare-fun lt!146505 () SeekEntryResult!2236)

(declare-fun lt!146502 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14932 (_ BitVec 32)) SeekEntryResult!2236)

(assert (=> b!295370 (= lt!146505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146502 k0!2524 (array!14933 (store (arr!7076 a!3312) i!1256 k0!2524) (size!7428 a!3312)) mask!3809))))

(assert (=> b!295370 (= lt!146504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146502 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295370 (= lt!146502 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295371 () Bool)

(assert (=> b!295371 (= e!186702 e!186701)))

(declare-fun res!155291 () Bool)

(assert (=> b!295371 (=> (not res!155291) (not e!186701))))

(declare-fun lt!146503 () SeekEntryResult!2236)

(assert (=> b!295371 (= res!155291 (or lt!146506 (= lt!146503 (MissingVacant!2236 i!1256))))))

(assert (=> b!295371 (= lt!146506 (= lt!146503 (MissingZero!2236 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14932 (_ BitVec 32)) SeekEntryResult!2236)

(assert (=> b!295371 (= lt!146503 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295372 () Bool)

(assert (=> b!295372 (= e!186700 (not true))))

(assert (=> b!295372 (and (= (select (arr!7076 a!3312) (index!11116 lt!146504)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11116 lt!146504) i!1256))))

(declare-fun b!295373 () Bool)

(declare-fun res!155292 () Bool)

(assert (=> b!295373 (=> (not res!155292) (not e!186701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14932 (_ BitVec 32)) Bool)

(assert (=> b!295373 (= res!155292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29132 res!155295) b!295366))

(assert (= (and b!295366 res!155290) b!295368))

(assert (= (and b!295368 res!155289) b!295369))

(assert (= (and b!295369 res!155288) b!295371))

(assert (= (and b!295371 res!155291) b!295373))

(assert (= (and b!295373 res!155292) b!295370))

(assert (= (and b!295370 res!155293) b!295367))

(assert (= (and b!295367 res!155294) b!295372))

(declare-fun m!308505 () Bool)

(assert (=> b!295368 m!308505))

(declare-fun m!308507 () Bool)

(assert (=> b!295367 m!308507))

(declare-fun m!308509 () Bool)

(assert (=> b!295369 m!308509))

(declare-fun m!308511 () Bool)

(assert (=> b!295371 m!308511))

(assert (=> b!295372 m!308507))

(declare-fun m!308513 () Bool)

(assert (=> b!295373 m!308513))

(declare-fun m!308515 () Bool)

(assert (=> start!29132 m!308515))

(declare-fun m!308517 () Bool)

(assert (=> start!29132 m!308517))

(declare-fun m!308519 () Bool)

(assert (=> b!295370 m!308519))

(declare-fun m!308521 () Bool)

(assert (=> b!295370 m!308521))

(declare-fun m!308523 () Bool)

(assert (=> b!295370 m!308523))

(declare-fun m!308525 () Bool)

(assert (=> b!295370 m!308525))

(check-sat (not b!295369) (not b!295368) (not start!29132) (not b!295370) (not b!295371) (not b!295373))
(check-sat)
