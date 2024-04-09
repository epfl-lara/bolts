; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29254 () Bool)

(assert start!29254)

(declare-fun b!296470 () Bool)

(declare-fun res!156257 () Bool)

(declare-fun e!187391 () Bool)

(assert (=> b!296470 (=> (not res!156257) (not e!187391))))

(declare-datatypes ((array!15009 0))(
  ( (array!15010 (arr!7113 (Array (_ BitVec 32) (_ BitVec 64))) (size!7465 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15009)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296470 (= res!156257 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296471 () Bool)

(declare-fun e!187388 () Bool)

(declare-fun e!187387 () Bool)

(assert (=> b!296471 (= e!187388 e!187387)))

(declare-fun res!156256 () Bool)

(assert (=> b!296471 (=> (not res!156256) (not e!187387))))

(declare-fun lt!147267 () Bool)

(assert (=> b!296471 (= res!156256 lt!147267)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2273 0))(
  ( (MissingZero!2273 (index!11262 (_ BitVec 32))) (Found!2273 (index!11263 (_ BitVec 32))) (Intermediate!2273 (undefined!3085 Bool) (index!11264 (_ BitVec 32)) (x!29440 (_ BitVec 32))) (Undefined!2273) (MissingVacant!2273 (index!11265 (_ BitVec 32))) )
))
(declare-fun lt!147265 () SeekEntryResult!2273)

(declare-fun lt!147269 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15009 (_ BitVec 32)) SeekEntryResult!2273)

(assert (=> b!296471 (= lt!147265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147269 k!2524 (array!15010 (store (arr!7113 a!3312) i!1256 k!2524) (size!7465 a!3312)) mask!3809))))

(declare-fun lt!147268 () SeekEntryResult!2273)

(assert (=> b!296471 (= lt!147268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147269 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296471 (= lt!147269 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296472 () Bool)

(declare-fun res!156252 () Bool)

(assert (=> b!296472 (=> (not res!156252) (not e!187391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296472 (= res!156252 (validKeyInArray!0 k!2524))))

(declare-fun b!296473 () Bool)

(assert (=> b!296473 (= e!187391 e!187388)))

(declare-fun res!156258 () Bool)

(assert (=> b!296473 (=> (not res!156258) (not e!187388))))

(declare-fun lt!147264 () SeekEntryResult!2273)

(assert (=> b!296473 (= res!156258 (or lt!147267 (= lt!147264 (MissingVacant!2273 i!1256))))))

(assert (=> b!296473 (= lt!147267 (= lt!147264 (MissingZero!2273 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15009 (_ BitVec 32)) SeekEntryResult!2273)

(assert (=> b!296473 (= lt!147264 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296474 () Bool)

(declare-fun e!187389 () Bool)

(assert (=> b!296474 (= e!187389 (not true))))

(assert (=> b!296474 (and (= (select (arr!7113 a!3312) (index!11264 lt!147268)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11264 lt!147268) i!1256))))

(declare-fun res!156253 () Bool)

(assert (=> start!29254 (=> (not res!156253) (not e!187391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29254 (= res!156253 (validMask!0 mask!3809))))

(assert (=> start!29254 e!187391))

(assert (=> start!29254 true))

(declare-fun array_inv!5067 (array!15009) Bool)

(assert (=> start!29254 (array_inv!5067 a!3312)))

(declare-fun b!296475 () Bool)

(declare-fun res!156254 () Bool)

(assert (=> b!296475 (=> (not res!156254) (not e!187391))))

(assert (=> b!296475 (= res!156254 (and (= (size!7465 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7465 a!3312))))))

(declare-fun b!296476 () Bool)

(assert (=> b!296476 (= e!187387 e!187389)))

(declare-fun res!156251 () Bool)

(assert (=> b!296476 (=> (not res!156251) (not e!187389))))

(declare-fun lt!147266 () Bool)

(assert (=> b!296476 (= res!156251 (and (or lt!147266 (not (undefined!3085 lt!147268))) (or lt!147266 (not (= (select (arr!7113 a!3312) (index!11264 lt!147268)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147266 (not (= (select (arr!7113 a!3312) (index!11264 lt!147268)) k!2524))) (not lt!147266)))))

(assert (=> b!296476 (= lt!147266 (not (is-Intermediate!2273 lt!147268)))))

(declare-fun b!296477 () Bool)

(declare-fun res!156255 () Bool)

(assert (=> b!296477 (=> (not res!156255) (not e!187388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15009 (_ BitVec 32)) Bool)

(assert (=> b!296477 (= res!156255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29254 res!156253) b!296475))

(assert (= (and b!296475 res!156254) b!296472))

(assert (= (and b!296472 res!156252) b!296470))

(assert (= (and b!296470 res!156257) b!296473))

(assert (= (and b!296473 res!156258) b!296477))

(assert (= (and b!296477 res!156255) b!296471))

(assert (= (and b!296471 res!156256) b!296476))

(assert (= (and b!296476 res!156251) b!296474))

(declare-fun m!309439 () Bool)

(assert (=> start!29254 m!309439))

(declare-fun m!309441 () Bool)

(assert (=> start!29254 m!309441))

(declare-fun m!309443 () Bool)

(assert (=> b!296472 m!309443))

(declare-fun m!309445 () Bool)

(assert (=> b!296474 m!309445))

(declare-fun m!309447 () Bool)

(assert (=> b!296473 m!309447))

(declare-fun m!309449 () Bool)

(assert (=> b!296471 m!309449))

(declare-fun m!309451 () Bool)

(assert (=> b!296471 m!309451))

(declare-fun m!309453 () Bool)

(assert (=> b!296471 m!309453))

(declare-fun m!309455 () Bool)

(assert (=> b!296471 m!309455))

(declare-fun m!309457 () Bool)

(assert (=> b!296470 m!309457))

(assert (=> b!296476 m!309445))

(declare-fun m!309459 () Bool)

(assert (=> b!296477 m!309459))

(push 1)

