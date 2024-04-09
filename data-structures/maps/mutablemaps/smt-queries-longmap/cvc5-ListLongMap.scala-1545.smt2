; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29250 () Bool)

(assert start!29250)

(declare-fun b!296422 () Bool)

(declare-fun res!156208 () Bool)

(declare-fun e!187360 () Bool)

(assert (=> b!296422 (=> (not res!156208) (not e!187360))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296422 (= res!156208 (validKeyInArray!0 k!2524))))

(declare-fun b!296423 () Bool)

(declare-fun res!156207 () Bool)

(declare-fun e!187359 () Bool)

(assert (=> b!296423 (=> (not res!156207) (not e!187359))))

(declare-datatypes ((array!15005 0))(
  ( (array!15006 (arr!7111 (Array (_ BitVec 32) (_ BitVec 64))) (size!7463 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15005)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15005 (_ BitVec 32)) Bool)

(assert (=> b!296423 (= res!156207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156204 () Bool)

(assert (=> start!29250 (=> (not res!156204) (not e!187360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29250 (= res!156204 (validMask!0 mask!3809))))

(assert (=> start!29250 e!187360))

(assert (=> start!29250 true))

(declare-fun array_inv!5065 (array!15005) Bool)

(assert (=> start!29250 (array_inv!5065 a!3312)))

(declare-fun b!296424 () Bool)

(assert (=> b!296424 (= e!187360 e!187359)))

(declare-fun res!156210 () Bool)

(assert (=> b!296424 (=> (not res!156210) (not e!187359))))

(declare-fun lt!147228 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2271 0))(
  ( (MissingZero!2271 (index!11254 (_ BitVec 32))) (Found!2271 (index!11255 (_ BitVec 32))) (Intermediate!2271 (undefined!3083 Bool) (index!11256 (_ BitVec 32)) (x!29438 (_ BitVec 32))) (Undefined!2271) (MissingVacant!2271 (index!11257 (_ BitVec 32))) )
))
(declare-fun lt!147233 () SeekEntryResult!2271)

(assert (=> b!296424 (= res!156210 (or lt!147228 (= lt!147233 (MissingVacant!2271 i!1256))))))

(assert (=> b!296424 (= lt!147228 (= lt!147233 (MissingZero!2271 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15005 (_ BitVec 32)) SeekEntryResult!2271)

(assert (=> b!296424 (= lt!147233 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296425 () Bool)

(declare-fun res!156206 () Bool)

(assert (=> b!296425 (=> (not res!156206) (not e!187360))))

(assert (=> b!296425 (= res!156206 (and (= (size!7463 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7463 a!3312))))))

(declare-fun b!296426 () Bool)

(declare-fun e!187358 () Bool)

(assert (=> b!296426 (= e!187359 e!187358)))

(declare-fun res!156203 () Bool)

(assert (=> b!296426 (=> (not res!156203) (not e!187358))))

(assert (=> b!296426 (= res!156203 lt!147228)))

(declare-fun lt!147230 () (_ BitVec 32))

(declare-fun lt!147231 () SeekEntryResult!2271)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15005 (_ BitVec 32)) SeekEntryResult!2271)

(assert (=> b!296426 (= lt!147231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147230 k!2524 (array!15006 (store (arr!7111 a!3312) i!1256 k!2524) (size!7463 a!3312)) mask!3809))))

(declare-fun lt!147232 () SeekEntryResult!2271)

(assert (=> b!296426 (= lt!147232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147230 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296426 (= lt!147230 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296427 () Bool)

(declare-fun e!187357 () Bool)

(assert (=> b!296427 (= e!187357 (not true))))

(assert (=> b!296427 (and (= (select (arr!7111 a!3312) (index!11256 lt!147232)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11256 lt!147232) i!1256))))

(declare-fun b!296428 () Bool)

(declare-fun res!156209 () Bool)

(assert (=> b!296428 (=> (not res!156209) (not e!187360))))

(declare-fun arrayContainsKey!0 (array!15005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296428 (= res!156209 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296429 () Bool)

(assert (=> b!296429 (= e!187358 e!187357)))

(declare-fun res!156205 () Bool)

(assert (=> b!296429 (=> (not res!156205) (not e!187357))))

(declare-fun lt!147229 () Bool)

(assert (=> b!296429 (= res!156205 (and (or lt!147229 (not (undefined!3083 lt!147232))) (or lt!147229 (not (= (select (arr!7111 a!3312) (index!11256 lt!147232)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147229 (not (= (select (arr!7111 a!3312) (index!11256 lt!147232)) k!2524))) (not lt!147229)))))

(assert (=> b!296429 (= lt!147229 (not (is-Intermediate!2271 lt!147232)))))

(assert (= (and start!29250 res!156204) b!296425))

(assert (= (and b!296425 res!156206) b!296422))

(assert (= (and b!296422 res!156208) b!296428))

(assert (= (and b!296428 res!156209) b!296424))

(assert (= (and b!296424 res!156210) b!296423))

(assert (= (and b!296423 res!156207) b!296426))

(assert (= (and b!296426 res!156203) b!296429))

(assert (= (and b!296429 res!156205) b!296427))

(declare-fun m!309395 () Bool)

(assert (=> b!296429 m!309395))

(declare-fun m!309397 () Bool)

(assert (=> b!296422 m!309397))

(declare-fun m!309399 () Bool)

(assert (=> b!296423 m!309399))

(assert (=> b!296427 m!309395))

(declare-fun m!309401 () Bool)

(assert (=> b!296428 m!309401))

(declare-fun m!309403 () Bool)

(assert (=> b!296426 m!309403))

(declare-fun m!309405 () Bool)

(assert (=> b!296426 m!309405))

(declare-fun m!309407 () Bool)

(assert (=> b!296426 m!309407))

(declare-fun m!309409 () Bool)

(assert (=> b!296426 m!309409))

(declare-fun m!309411 () Bool)

(assert (=> start!29250 m!309411))

(declare-fun m!309413 () Bool)

(assert (=> start!29250 m!309413))

(declare-fun m!309415 () Bool)

(assert (=> b!296424 m!309415))

(push 1)

