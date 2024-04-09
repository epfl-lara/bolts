; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28596 () Bool)

(assert start!28596)

(declare-fun res!153323 () Bool)

(declare-fun e!184909 () Bool)

(assert (=> start!28596 (=> (not res!153323) (not e!184909))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28596 (= res!153323 (validMask!0 mask!3809))))

(assert (=> start!28596 e!184909))

(assert (=> start!28596 true))

(declare-datatypes ((array!14764 0))(
  ( (array!14765 (arr!7004 (Array (_ BitVec 32) (_ BitVec 64))) (size!7356 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14764)

(declare-fun array_inv!4958 (array!14764) Bool)

(assert (=> start!28596 (array_inv!4958 a!3312)))

(declare-fun b!292229 () Bool)

(declare-fun e!184910 () Bool)

(declare-fun e!184911 () Bool)

(assert (=> b!292229 (= e!184910 e!184911)))

(declare-fun res!153330 () Bool)

(assert (=> b!292229 (=> (not res!153330) (not e!184911))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144737 () Bool)

(declare-datatypes ((SeekEntryResult!2164 0))(
  ( (MissingZero!2164 (index!10826 (_ BitVec 32))) (Found!2164 (index!10827 (_ BitVec 32))) (Intermediate!2164 (undefined!2976 Bool) (index!10828 (_ BitVec 32)) (x!28987 (_ BitVec 32))) (Undefined!2164) (MissingVacant!2164 (index!10829 (_ BitVec 32))) )
))
(declare-fun lt!144734 () SeekEntryResult!2164)

(assert (=> b!292229 (= res!153330 (and (not lt!144737) (= lt!144734 (MissingVacant!2164 i!1256))))))

(declare-fun lt!144731 () SeekEntryResult!2164)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun lt!144735 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14764 (_ BitVec 32)) SeekEntryResult!2164)

(assert (=> b!292229 (= lt!144731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144735 k0!2524 (array!14765 (store (arr!7004 a!3312) i!1256 k0!2524) (size!7356 a!3312)) mask!3809))))

(declare-fun lt!144732 () SeekEntryResult!2164)

(assert (=> b!292229 (= lt!144732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144735 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292229 (= lt!144735 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292230 () Bool)

(declare-fun res!153325 () Bool)

(assert (=> b!292230 (=> (not res!153325) (not e!184909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292230 (= res!153325 (validKeyInArray!0 k0!2524))))

(declare-fun b!292231 () Bool)

(declare-fun res!153329 () Bool)

(assert (=> b!292231 (=> (not res!153329) (not e!184909))))

(declare-fun arrayContainsKey!0 (array!14764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292231 (= res!153329 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292232 () Bool)

(declare-fun res!153326 () Bool)

(assert (=> b!292232 (=> (not res!153326) (not e!184910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14764 (_ BitVec 32)) Bool)

(assert (=> b!292232 (= res!153326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292233 () Bool)

(declare-fun e!184908 () Bool)

(assert (=> b!292233 (= e!184908 (not true))))

(declare-datatypes ((Unit!9159 0))(
  ( (Unit!9160) )
))
(declare-fun lt!144733 () Unit!9159)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14764 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9159)

(assert (=> b!292233 (= lt!144733 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!144735 (index!10828 lt!144732) (x!28987 lt!144732) mask!3809))))

(assert (=> b!292233 (= (index!10828 lt!144732) i!1256)))

(declare-fun b!292234 () Bool)

(declare-fun res!153327 () Bool)

(assert (=> b!292234 (=> (not res!153327) (not e!184909))))

(assert (=> b!292234 (= res!153327 (and (= (size!7356 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7356 a!3312))))))

(declare-fun b!292235 () Bool)

(assert (=> b!292235 (= e!184909 e!184910)))

(declare-fun res!153328 () Bool)

(assert (=> b!292235 (=> (not res!153328) (not e!184910))))

(assert (=> b!292235 (= res!153328 (or lt!144737 (= lt!144734 (MissingVacant!2164 i!1256))))))

(assert (=> b!292235 (= lt!144737 (= lt!144734 (MissingZero!2164 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14764 (_ BitVec 32)) SeekEntryResult!2164)

(assert (=> b!292235 (= lt!144734 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292236 () Bool)

(assert (=> b!292236 (= e!184911 e!184908)))

(declare-fun res!153324 () Bool)

(assert (=> b!292236 (=> (not res!153324) (not e!184908))))

(declare-fun lt!144736 () Bool)

(assert (=> b!292236 (= res!153324 (and (or lt!144736 (not (undefined!2976 lt!144732))) (not lt!144736) (= (select (arr!7004 a!3312) (index!10828 lt!144732)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!292236 (= lt!144736 (not ((_ is Intermediate!2164) lt!144732)))))

(assert (= (and start!28596 res!153323) b!292234))

(assert (= (and b!292234 res!153327) b!292230))

(assert (= (and b!292230 res!153325) b!292231))

(assert (= (and b!292231 res!153329) b!292235))

(assert (= (and b!292235 res!153328) b!292232))

(assert (= (and b!292232 res!153326) b!292229))

(assert (= (and b!292229 res!153330) b!292236))

(assert (= (and b!292236 res!153324) b!292233))

(declare-fun m!305995 () Bool)

(assert (=> b!292230 m!305995))

(declare-fun m!305997 () Bool)

(assert (=> b!292232 m!305997))

(declare-fun m!305999 () Bool)

(assert (=> b!292229 m!305999))

(declare-fun m!306001 () Bool)

(assert (=> b!292229 m!306001))

(declare-fun m!306003 () Bool)

(assert (=> b!292229 m!306003))

(declare-fun m!306005 () Bool)

(assert (=> b!292229 m!306005))

(declare-fun m!306007 () Bool)

(assert (=> b!292235 m!306007))

(declare-fun m!306009 () Bool)

(assert (=> b!292236 m!306009))

(declare-fun m!306011 () Bool)

(assert (=> b!292231 m!306011))

(declare-fun m!306013 () Bool)

(assert (=> b!292233 m!306013))

(declare-fun m!306015 () Bool)

(assert (=> start!28596 m!306015))

(declare-fun m!306017 () Bool)

(assert (=> start!28596 m!306017))

(check-sat (not b!292233) (not b!292231) (not b!292232) (not b!292235) (not b!292229) (not b!292230) (not start!28596))
(check-sat)
