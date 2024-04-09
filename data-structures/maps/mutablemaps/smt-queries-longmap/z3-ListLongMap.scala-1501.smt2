; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28452 () Bool)

(assert start!28452)

(declare-fun b!291221 () Bool)

(declare-fun e!184288 () Bool)

(declare-fun e!184284 () Bool)

(assert (=> b!291221 (= e!184288 e!184284)))

(declare-fun res!152601 () Bool)

(assert (=> b!291221 (=> (not res!152601) (not e!184284))))

(declare-fun lt!144084 () Bool)

(declare-datatypes ((SeekEntryResult!2140 0))(
  ( (MissingZero!2140 (index!10730 (_ BitVec 32))) (Found!2140 (index!10731 (_ BitVec 32))) (Intermediate!2140 (undefined!2952 Bool) (index!10732 (_ BitVec 32)) (x!28887 (_ BitVec 32))) (Undefined!2140) (MissingVacant!2140 (index!10733 (_ BitVec 32))) )
))
(declare-fun lt!144085 () SeekEntryResult!2140)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291221 (= res!152601 (or lt!144084 (= lt!144085 (MissingVacant!2140 i!1256))))))

(assert (=> b!291221 (= lt!144084 (= lt!144085 (MissingZero!2140 i!1256)))))

(declare-datatypes ((array!14710 0))(
  ( (array!14711 (arr!6980 (Array (_ BitVec 32) (_ BitVec 64))) (size!7332 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14710)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14710 (_ BitVec 32)) SeekEntryResult!2140)

(assert (=> b!291221 (= lt!144085 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291222 () Bool)

(declare-fun res!152598 () Bool)

(assert (=> b!291222 (=> (not res!152598) (not e!184288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291222 (= res!152598 (validKeyInArray!0 k0!2524))))

(declare-fun b!291223 () Bool)

(declare-fun e!184287 () Bool)

(assert (=> b!291223 (= e!184287 (not true))))

(declare-fun lt!144088 () SeekEntryResult!2140)

(assert (=> b!291223 (= (index!10732 lt!144088) i!1256)))

(declare-fun b!291224 () Bool)

(declare-fun res!152597 () Bool)

(assert (=> b!291224 (=> (not res!152597) (not e!184284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14710 (_ BitVec 32)) Bool)

(assert (=> b!291224 (= res!152597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291225 () Bool)

(declare-fun res!152600 () Bool)

(assert (=> b!291225 (=> (not res!152600) (not e!184288))))

(declare-fun arrayContainsKey!0 (array!14710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291225 (= res!152600 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!152603 () Bool)

(assert (=> start!28452 (=> (not res!152603) (not e!184288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28452 (= res!152603 (validMask!0 mask!3809))))

(assert (=> start!28452 e!184288))

(assert (=> start!28452 true))

(declare-fun array_inv!4934 (array!14710) Bool)

(assert (=> start!28452 (array_inv!4934 a!3312)))

(declare-fun b!291226 () Bool)

(declare-fun e!184285 () Bool)

(assert (=> b!291226 (= e!184284 e!184285)))

(declare-fun res!152604 () Bool)

(assert (=> b!291226 (=> (not res!152604) (not e!184285))))

(assert (=> b!291226 (= res!152604 (and (not lt!144084) (= lt!144085 (MissingVacant!2140 i!1256))))))

(declare-fun lt!144086 () SeekEntryResult!2140)

(declare-fun lt!144089 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14710 (_ BitVec 32)) SeekEntryResult!2140)

(assert (=> b!291226 (= lt!144086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144089 k0!2524 (array!14711 (store (arr!6980 a!3312) i!1256 k0!2524) (size!7332 a!3312)) mask!3809))))

(assert (=> b!291226 (= lt!144088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144089 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291226 (= lt!144089 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291227 () Bool)

(declare-fun res!152602 () Bool)

(assert (=> b!291227 (=> (not res!152602) (not e!184288))))

(assert (=> b!291227 (= res!152602 (and (= (size!7332 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7332 a!3312))))))

(declare-fun b!291228 () Bool)

(assert (=> b!291228 (= e!184285 e!184287)))

(declare-fun res!152599 () Bool)

(assert (=> b!291228 (=> (not res!152599) (not e!184287))))

(declare-fun lt!144087 () Bool)

(assert (=> b!291228 (= res!152599 (and (or lt!144087 (not (undefined!2952 lt!144088))) (not lt!144087) (= (select (arr!6980 a!3312) (index!10732 lt!144088)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291228 (= lt!144087 (not ((_ is Intermediate!2140) lt!144088)))))

(assert (= (and start!28452 res!152603) b!291227))

(assert (= (and b!291227 res!152602) b!291222))

(assert (= (and b!291222 res!152598) b!291225))

(assert (= (and b!291225 res!152600) b!291221))

(assert (= (and b!291221 res!152601) b!291224))

(assert (= (and b!291224 res!152597) b!291226))

(assert (= (and b!291226 res!152604) b!291228))

(assert (= (and b!291228 res!152599) b!291223))

(declare-fun m!305213 () Bool)

(assert (=> start!28452 m!305213))

(declare-fun m!305215 () Bool)

(assert (=> start!28452 m!305215))

(declare-fun m!305217 () Bool)

(assert (=> b!291228 m!305217))

(declare-fun m!305219 () Bool)

(assert (=> b!291221 m!305219))

(declare-fun m!305221 () Bool)

(assert (=> b!291225 m!305221))

(declare-fun m!305223 () Bool)

(assert (=> b!291226 m!305223))

(declare-fun m!305225 () Bool)

(assert (=> b!291226 m!305225))

(declare-fun m!305227 () Bool)

(assert (=> b!291226 m!305227))

(declare-fun m!305229 () Bool)

(assert (=> b!291226 m!305229))

(declare-fun m!305231 () Bool)

(assert (=> b!291224 m!305231))

(declare-fun m!305233 () Bool)

(assert (=> b!291222 m!305233))

(check-sat (not b!291224) (not b!291221) (not b!291222) (not b!291226) (not start!28452) (not b!291225))
(check-sat)
