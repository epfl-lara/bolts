; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29396 () Bool)

(assert start!29396)

(declare-fun b!297478 () Bool)

(declare-fun res!156924 () Bool)

(declare-fun e!187995 () Bool)

(assert (=> b!297478 (=> (not res!156924) (not e!187995))))

(declare-datatypes ((array!15061 0))(
  ( (array!15062 (arr!7136 (Array (_ BitVec 32) (_ BitVec 64))) (size!7488 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15061)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15061 (_ BitVec 32)) Bool)

(assert (=> b!297478 (= res!156924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-datatypes ((SeekEntryResult!2296 0))(
  ( (MissingZero!2296 (index!11354 (_ BitVec 32))) (Found!2296 (index!11355 (_ BitVec 32))) (Intermediate!2296 (undefined!3108 Bool) (index!11356 (_ BitVec 32)) (x!29539 (_ BitVec 32))) (Undefined!2296) (MissingVacant!2296 (index!11357 (_ BitVec 32))) )
))
(declare-fun lt!147908 () SeekEntryResult!2296)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun b!297479 () Bool)

(declare-fun lt!147903 () SeekEntryResult!2296)

(declare-fun k0!2524 () (_ BitVec 64))

(assert (=> b!297479 (and (= lt!147903 lt!147908) (= (select (store (arr!7136 a!3312) i!1256 k0!2524) (index!11356 lt!147908)) k0!2524))))

(declare-datatypes ((Unit!9269 0))(
  ( (Unit!9270) )
))
(declare-fun lt!147904 () Unit!9269)

(declare-fun lt!147907 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9269)

(assert (=> b!297479 (= lt!147904 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147907 (index!11356 lt!147908) (x!29539 lt!147908) mask!3809))))

(assert (=> b!297479 (and (= (select (arr!7136 a!3312) (index!11356 lt!147908)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11356 lt!147908) i!1256))))

(declare-fun e!187994 () Unit!9269)

(declare-fun Unit!9271 () Unit!9269)

(assert (=> b!297479 (= e!187994 Unit!9271)))

(declare-fun b!297480 () Bool)

(declare-fun e!187992 () Bool)

(assert (=> b!297480 (= e!187995 e!187992)))

(declare-fun res!156922 () Bool)

(assert (=> b!297480 (=> (not res!156922) (not e!187992))))

(declare-fun lt!147906 () Bool)

(assert (=> b!297480 (= res!156922 lt!147906)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15061 (_ BitVec 32)) SeekEntryResult!2296)

(assert (=> b!297480 (= lt!147903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147907 k0!2524 (array!15062 (store (arr!7136 a!3312) i!1256 k0!2524) (size!7488 a!3312)) mask!3809))))

(assert (=> b!297480 (= lt!147908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147907 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297480 (= lt!147907 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297481 () Bool)

(declare-fun e!187996 () Unit!9269)

(declare-fun Unit!9272 () Unit!9269)

(assert (=> b!297481 (= e!187996 Unit!9272)))

(assert (=> b!297481 false))

(declare-fun b!297482 () Bool)

(declare-fun res!156921 () Bool)

(declare-fun e!187993 () Bool)

(assert (=> b!297482 (=> (not res!156921) (not e!187993))))

(declare-fun arrayContainsKey!0 (array!15061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297482 (= res!156921 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297483 () Bool)

(declare-fun res!156927 () Bool)

(assert (=> b!297483 (=> (not res!156927) (not e!187993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297483 (= res!156927 (validKeyInArray!0 k0!2524))))

(declare-fun b!297484 () Bool)

(assert (=> b!297484 false))

(declare-fun Unit!9273 () Unit!9269)

(assert (=> b!297484 (= e!187994 Unit!9273)))

(declare-fun b!297485 () Bool)

(assert (=> b!297485 (= e!187992 false)))

(declare-fun lt!147902 () Unit!9269)

(assert (=> b!297485 (= lt!147902 e!187996)))

(declare-fun c!47862 () Bool)

(get-info :version)

(assert (=> b!297485 (= c!47862 (or (and ((_ is Intermediate!2296) lt!147908) (undefined!3108 lt!147908)) (and ((_ is Intermediate!2296) lt!147908) (= (select (arr!7136 a!3312) (index!11356 lt!147908)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2296) lt!147908) (= (select (arr!7136 a!3312) (index!11356 lt!147908)) k0!2524))))))

(declare-fun b!297486 () Bool)

(assert (=> b!297486 (= e!187996 e!187994)))

(declare-fun c!47861 () Bool)

(assert (=> b!297486 (= c!47861 ((_ is Intermediate!2296) lt!147908))))

(declare-fun b!297487 () Bool)

(assert (=> b!297487 (= e!187993 e!187995)))

(declare-fun res!156925 () Bool)

(assert (=> b!297487 (=> (not res!156925) (not e!187995))))

(declare-fun lt!147905 () SeekEntryResult!2296)

(assert (=> b!297487 (= res!156925 (or lt!147906 (= lt!147905 (MissingVacant!2296 i!1256))))))

(assert (=> b!297487 (= lt!147906 (= lt!147905 (MissingZero!2296 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15061 (_ BitVec 32)) SeekEntryResult!2296)

(assert (=> b!297487 (= lt!147905 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!297488 () Bool)

(declare-fun res!156923 () Bool)

(assert (=> b!297488 (=> (not res!156923) (not e!187993))))

(assert (=> b!297488 (= res!156923 (and (= (size!7488 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7488 a!3312))))))

(declare-fun res!156926 () Bool)

(assert (=> start!29396 (=> (not res!156926) (not e!187993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29396 (= res!156926 (validMask!0 mask!3809))))

(assert (=> start!29396 e!187993))

(assert (=> start!29396 true))

(declare-fun array_inv!5090 (array!15061) Bool)

(assert (=> start!29396 (array_inv!5090 a!3312)))

(assert (= (and start!29396 res!156926) b!297488))

(assert (= (and b!297488 res!156923) b!297483))

(assert (= (and b!297483 res!156927) b!297482))

(assert (= (and b!297482 res!156921) b!297487))

(assert (= (and b!297487 res!156925) b!297478))

(assert (= (and b!297478 res!156924) b!297480))

(assert (= (and b!297480 res!156922) b!297485))

(assert (= (and b!297485 c!47862) b!297481))

(assert (= (and b!297485 (not c!47862)) b!297486))

(assert (= (and b!297486 c!47861) b!297479))

(assert (= (and b!297486 (not c!47861)) b!297484))

(declare-fun m!310219 () Bool)

(assert (=> b!297487 m!310219))

(declare-fun m!310221 () Bool)

(assert (=> b!297483 m!310221))

(declare-fun m!310223 () Bool)

(assert (=> b!297480 m!310223))

(declare-fun m!310225 () Bool)

(assert (=> b!297480 m!310225))

(declare-fun m!310227 () Bool)

(assert (=> b!297480 m!310227))

(declare-fun m!310229 () Bool)

(assert (=> b!297480 m!310229))

(declare-fun m!310231 () Bool)

(assert (=> b!297482 m!310231))

(declare-fun m!310233 () Bool)

(assert (=> start!29396 m!310233))

(declare-fun m!310235 () Bool)

(assert (=> start!29396 m!310235))

(declare-fun m!310237 () Bool)

(assert (=> b!297485 m!310237))

(declare-fun m!310239 () Bool)

(assert (=> b!297478 m!310239))

(assert (=> b!297479 m!310223))

(declare-fun m!310241 () Bool)

(assert (=> b!297479 m!310241))

(declare-fun m!310243 () Bool)

(assert (=> b!297479 m!310243))

(assert (=> b!297479 m!310237))

(check-sat (not b!297480) (not b!297483) (not b!297478) (not b!297479) (not b!297487) (not start!29396) (not b!297482))
(check-sat)
