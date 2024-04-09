; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27942 () Bool)

(assert start!27942)

(declare-fun b!286855 () Bool)

(declare-fun e!181734 () Bool)

(declare-fun e!181735 () Bool)

(assert (=> b!286855 (= e!181734 e!181735)))

(declare-fun res!148903 () Bool)

(assert (=> b!286855 (=> (not res!148903) (not e!181735))))

(declare-datatypes ((SeekEntryResult!1981 0))(
  ( (MissingZero!1981 (index!10094 (_ BitVec 32))) (Found!1981 (index!10095 (_ BitVec 32))) (Intermediate!1981 (undefined!2793 Bool) (index!10096 (_ BitVec 32)) (x!28280 (_ BitVec 32))) (Undefined!1981) (MissingVacant!1981 (index!10097 (_ BitVec 32))) )
))
(declare-fun lt!141316 () SeekEntryResult!1981)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286855 (= res!148903 (or (= lt!141316 (MissingZero!1981 i!1256)) (= lt!141316 (MissingVacant!1981 i!1256))))))

(declare-datatypes ((array!14380 0))(
  ( (array!14381 (arr!6821 (Array (_ BitVec 32) (_ BitVec 64))) (size!7173 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14380)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14380 (_ BitVec 32)) SeekEntryResult!1981)

(assert (=> b!286855 (= lt!141316 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!286856 () Bool)

(assert (=> b!286856 (= e!181735 false)))

(declare-fun lt!141317 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286856 (= lt!141317 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!286858 () Bool)

(declare-fun res!148908 () Bool)

(assert (=> b!286858 (=> (not res!148908) (not e!181734))))

(declare-fun arrayContainsKey!0 (array!14380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286858 (= res!148908 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286859 () Bool)

(declare-fun res!148907 () Bool)

(assert (=> b!286859 (=> (not res!148907) (not e!181734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286859 (= res!148907 (validKeyInArray!0 k0!2524))))

(declare-fun b!286860 () Bool)

(declare-fun res!148904 () Bool)

(assert (=> b!286860 (=> (not res!148904) (not e!181734))))

(assert (=> b!286860 (= res!148904 (and (= (size!7173 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7173 a!3312))))))

(declare-fun res!148906 () Bool)

(assert (=> start!27942 (=> (not res!148906) (not e!181734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27942 (= res!148906 (validMask!0 mask!3809))))

(assert (=> start!27942 e!181734))

(assert (=> start!27942 true))

(declare-fun array_inv!4775 (array!14380) Bool)

(assert (=> start!27942 (array_inv!4775 a!3312)))

(declare-fun b!286857 () Bool)

(declare-fun res!148905 () Bool)

(assert (=> b!286857 (=> (not res!148905) (not e!181735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14380 (_ BitVec 32)) Bool)

(assert (=> b!286857 (= res!148905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!27942 res!148906) b!286860))

(assert (= (and b!286860 res!148904) b!286859))

(assert (= (and b!286859 res!148907) b!286858))

(assert (= (and b!286858 res!148908) b!286855))

(assert (= (and b!286855 res!148903) b!286857))

(assert (= (and b!286857 res!148905) b!286856))

(declare-fun m!301461 () Bool)

(assert (=> b!286855 m!301461))

(declare-fun m!301463 () Bool)

(assert (=> start!27942 m!301463))

(declare-fun m!301465 () Bool)

(assert (=> start!27942 m!301465))

(declare-fun m!301467 () Bool)

(assert (=> b!286857 m!301467))

(declare-fun m!301469 () Bool)

(assert (=> b!286858 m!301469))

(declare-fun m!301471 () Bool)

(assert (=> b!286856 m!301471))

(declare-fun m!301473 () Bool)

(assert (=> b!286859 m!301473))

(check-sat (not b!286858) (not b!286859) (not start!27942) (not b!286857) (not b!286855) (not b!286856))
(check-sat)
