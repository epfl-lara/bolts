; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29390 () Bool)

(assert start!29390)

(declare-fun b!297379 () Bool)

(declare-fun res!156864 () Bool)

(declare-fun e!187940 () Bool)

(assert (=> b!297379 (=> (not res!156864) (not e!187940))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297379 (= res!156864 (validKeyInArray!0 k0!2524))))

(declare-fun res!156862 () Bool)

(assert (=> start!29390 (=> (not res!156862) (not e!187940))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29390 (= res!156862 (validMask!0 mask!3809))))

(assert (=> start!29390 e!187940))

(assert (=> start!29390 true))

(declare-datatypes ((array!15055 0))(
  ( (array!15056 (arr!7133 (Array (_ BitVec 32) (_ BitVec 64))) (size!7485 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15055)

(declare-fun array_inv!5087 (array!15055) Bool)

(assert (=> start!29390 (array_inv!5087 a!3312)))

(declare-fun b!297380 () Bool)

(declare-fun res!156860 () Bool)

(assert (=> b!297380 (=> (not res!156860) (not e!187940))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!297380 (= res!156860 (and (= (size!7485 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7485 a!3312))))))

(declare-fun b!297381 () Bool)

(declare-fun res!156863 () Bool)

(assert (=> b!297381 (=> (not res!156863) (not e!187940))))

(declare-fun arrayContainsKey!0 (array!15055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297381 (= res!156863 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297382 () Bool)

(declare-datatypes ((Unit!9254 0))(
  ( (Unit!9255) )
))
(declare-fun e!187939 () Unit!9254)

(declare-fun Unit!9256 () Unit!9254)

(assert (=> b!297382 (= e!187939 Unit!9256)))

(assert (=> b!297382 false))

(declare-fun b!297383 () Bool)

(declare-fun e!187943 () Unit!9254)

(assert (=> b!297383 (= e!187939 e!187943)))

(declare-fun c!47844 () Bool)

(declare-datatypes ((SeekEntryResult!2293 0))(
  ( (MissingZero!2293 (index!11342 (_ BitVec 32))) (Found!2293 (index!11343 (_ BitVec 32))) (Intermediate!2293 (undefined!3105 Bool) (index!11344 (_ BitVec 32)) (x!29528 (_ BitVec 32))) (Undefined!2293) (MissingVacant!2293 (index!11345 (_ BitVec 32))) )
))
(declare-fun lt!147842 () SeekEntryResult!2293)

(get-info :version)

(assert (=> b!297383 (= c!47844 ((_ is Intermediate!2293) lt!147842))))

(declare-fun b!297384 () Bool)

(declare-fun lt!147843 () SeekEntryResult!2293)

(assert (=> b!297384 (and (= lt!147843 lt!147842) (= (select (store (arr!7133 a!3312) i!1256 k0!2524) (index!11344 lt!147842)) k0!2524))))

(declare-fun lt!147840 () (_ BitVec 32))

(declare-fun lt!147841 () Unit!9254)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15055 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9254)

(assert (=> b!297384 (= lt!147841 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147840 (index!11344 lt!147842) (x!29528 lt!147842) mask!3809))))

(assert (=> b!297384 (and (= (select (arr!7133 a!3312) (index!11344 lt!147842)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11344 lt!147842) i!1256))))

(declare-fun Unit!9257 () Unit!9254)

(assert (=> b!297384 (= e!187943 Unit!9257)))

(declare-fun b!297385 () Bool)

(declare-fun e!187942 () Bool)

(assert (=> b!297385 (= e!187942 (not (= lt!147843 lt!147842)))))

(declare-fun lt!147845 () Unit!9254)

(assert (=> b!297385 (= lt!147845 e!187939)))

(declare-fun c!47843 () Bool)

(assert (=> b!297385 (= c!47843 (or (and ((_ is Intermediate!2293) lt!147842) (undefined!3105 lt!147842)) (and ((_ is Intermediate!2293) lt!147842) (= (select (arr!7133 a!3312) (index!11344 lt!147842)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2293) lt!147842) (= (select (arr!7133 a!3312) (index!11344 lt!147842)) k0!2524))))))

(declare-fun b!297386 () Bool)

(declare-fun res!156861 () Bool)

(declare-fun e!187941 () Bool)

(assert (=> b!297386 (=> (not res!156861) (not e!187941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15055 (_ BitVec 32)) Bool)

(assert (=> b!297386 (= res!156861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297387 () Bool)

(assert (=> b!297387 (= e!187941 e!187942)))

(declare-fun res!156858 () Bool)

(assert (=> b!297387 (=> (not res!156858) (not e!187942))))

(declare-fun lt!147839 () Bool)

(assert (=> b!297387 (= res!156858 lt!147839)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15055 (_ BitVec 32)) SeekEntryResult!2293)

(assert (=> b!297387 (= lt!147843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147840 k0!2524 (array!15056 (store (arr!7133 a!3312) i!1256 k0!2524) (size!7485 a!3312)) mask!3809))))

(assert (=> b!297387 (= lt!147842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147840 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297387 (= lt!147840 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297388 () Bool)

(assert (=> b!297388 (= e!187940 e!187941)))

(declare-fun res!156859 () Bool)

(assert (=> b!297388 (=> (not res!156859) (not e!187941))))

(declare-fun lt!147844 () SeekEntryResult!2293)

(assert (=> b!297388 (= res!156859 (or lt!147839 (= lt!147844 (MissingVacant!2293 i!1256))))))

(assert (=> b!297388 (= lt!147839 (= lt!147844 (MissingZero!2293 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15055 (_ BitVec 32)) SeekEntryResult!2293)

(assert (=> b!297388 (= lt!147844 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!297389 () Bool)

(assert (=> b!297389 false))

(declare-fun Unit!9258 () Unit!9254)

(assert (=> b!297389 (= e!187943 Unit!9258)))

(assert (= (and start!29390 res!156862) b!297380))

(assert (= (and b!297380 res!156860) b!297379))

(assert (= (and b!297379 res!156864) b!297381))

(assert (= (and b!297381 res!156863) b!297388))

(assert (= (and b!297388 res!156859) b!297386))

(assert (= (and b!297386 res!156861) b!297387))

(assert (= (and b!297387 res!156858) b!297385))

(assert (= (and b!297385 c!47843) b!297382))

(assert (= (and b!297385 (not c!47843)) b!297383))

(assert (= (and b!297383 c!47844) b!297384))

(assert (= (and b!297383 (not c!47844)) b!297389))

(declare-fun m!310141 () Bool)

(assert (=> b!297386 m!310141))

(declare-fun m!310143 () Bool)

(assert (=> b!297387 m!310143))

(declare-fun m!310145 () Bool)

(assert (=> b!297387 m!310145))

(declare-fun m!310147 () Bool)

(assert (=> b!297387 m!310147))

(declare-fun m!310149 () Bool)

(assert (=> b!297387 m!310149))

(declare-fun m!310151 () Bool)

(assert (=> start!29390 m!310151))

(declare-fun m!310153 () Bool)

(assert (=> start!29390 m!310153))

(declare-fun m!310155 () Bool)

(assert (=> b!297385 m!310155))

(assert (=> b!297384 m!310143))

(declare-fun m!310157 () Bool)

(assert (=> b!297384 m!310157))

(declare-fun m!310159 () Bool)

(assert (=> b!297384 m!310159))

(assert (=> b!297384 m!310155))

(declare-fun m!310161 () Bool)

(assert (=> b!297381 m!310161))

(declare-fun m!310163 () Bool)

(assert (=> b!297379 m!310163))

(declare-fun m!310165 () Bool)

(assert (=> b!297388 m!310165))

(check-sat (not b!297384) (not b!297388) (not start!29390) (not b!297381) (not b!297379) (not b!297387) (not b!297386))
(check-sat)
