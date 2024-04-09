; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31002 () Bool)

(assert start!31002)

(declare-fun b!311304 () Bool)

(declare-fun res!167916 () Bool)

(declare-fun e!194243 () Bool)

(assert (=> b!311304 (=> (not res!167916) (not e!194243))))

(declare-datatypes ((array!15902 0))(
  ( (array!15903 (arr!7531 (Array (_ BitVec 32) (_ BitVec 64))) (size!7883 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15902)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311304 (= res!167916 (and (= (select (arr!7531 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7883 a!3293))))))

(declare-fun b!311305 () Bool)

(declare-fun e!194242 () Bool)

(assert (=> b!311305 (= e!194243 e!194242)))

(declare-fun res!167918 () Bool)

(assert (=> b!311305 (=> (not res!167918) (not e!194242))))

(declare-datatypes ((SeekEntryResult!2682 0))(
  ( (MissingZero!2682 (index!12904 (_ BitVec 32))) (Found!2682 (index!12905 (_ BitVec 32))) (Intermediate!2682 (undefined!3494 Bool) (index!12906 (_ BitVec 32)) (x!31090 (_ BitVec 32))) (Undefined!2682) (MissingVacant!2682 (index!12907 (_ BitVec 32))) )
))
(declare-fun lt!152345 () SeekEntryResult!2682)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!152343 () SeekEntryResult!2682)

(assert (=> b!311305 (= res!167918 (and (= lt!152343 lt!152345) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7531 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15902 (_ BitVec 32)) SeekEntryResult!2682)

(assert (=> b!311305 (= lt!152343 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311306 () Bool)

(declare-fun res!167925 () Bool)

(declare-fun e!194244 () Bool)

(assert (=> b!311306 (=> (not res!167925) (not e!194244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311306 (= res!167925 (validKeyInArray!0 k!2441))))

(declare-fun b!311307 () Bool)

(declare-fun res!167923 () Bool)

(assert (=> b!311307 (=> (not res!167923) (not e!194244))))

(declare-fun arrayContainsKey!0 (array!15902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311307 (= res!167923 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311308 () Bool)

(assert (=> b!311308 (= e!194244 e!194243)))

(declare-fun res!167919 () Bool)

(assert (=> b!311308 (=> (not res!167919) (not e!194243))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311308 (= res!167919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152345))))

(assert (=> b!311308 (= lt!152345 (Intermediate!2682 false resIndex!52 resX!52))))

(declare-fun b!311309 () Bool)

(declare-fun res!167922 () Bool)

(assert (=> b!311309 (=> (not res!167922) (not e!194244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15902 (_ BitVec 32)) Bool)

(assert (=> b!311309 (= res!167922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun e!194241 () Bool)

(declare-fun lt!152342 () (_ BitVec 32))

(declare-fun b!311310 () Bool)

(declare-fun lt!152344 () array!15902)

(assert (=> b!311310 (= e!194241 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152344 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152342 k!2441 lt!152344 mask!3709)))))

(assert (=> b!311310 (= lt!152344 (array!15903 (store (arr!7531 a!3293) i!1240 k!2441) (size!7883 a!3293)))))

(declare-fun b!311311 () Bool)

(declare-fun res!167920 () Bool)

(assert (=> b!311311 (=> (not res!167920) (not e!194244))))

(assert (=> b!311311 (= res!167920 (and (= (size!7883 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7883 a!3293))))))

(declare-fun res!167917 () Bool)

(assert (=> start!31002 (=> (not res!167917) (not e!194244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31002 (= res!167917 (validMask!0 mask!3709))))

(assert (=> start!31002 e!194244))

(declare-fun array_inv!5485 (array!15902) Bool)

(assert (=> start!31002 (array_inv!5485 a!3293)))

(assert (=> start!31002 true))

(declare-fun b!311312 () Bool)

(assert (=> b!311312 (= e!194242 (not true))))

(assert (=> b!311312 e!194241))

(declare-fun res!167921 () Bool)

(assert (=> b!311312 (=> (not res!167921) (not e!194241))))

(assert (=> b!311312 (= res!167921 (= lt!152343 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152342 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311312 (= lt!152342 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311313 () Bool)

(declare-fun res!167924 () Bool)

(assert (=> b!311313 (=> (not res!167924) (not e!194244))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15902 (_ BitVec 32)) SeekEntryResult!2682)

(assert (=> b!311313 (= res!167924 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2682 i!1240)))))

(assert (= (and start!31002 res!167917) b!311311))

(assert (= (and b!311311 res!167920) b!311306))

(assert (= (and b!311306 res!167925) b!311307))

(assert (= (and b!311307 res!167923) b!311313))

(assert (= (and b!311313 res!167924) b!311309))

(assert (= (and b!311309 res!167922) b!311308))

(assert (= (and b!311308 res!167919) b!311304))

(assert (= (and b!311304 res!167916) b!311305))

(assert (= (and b!311305 res!167918) b!311312))

(assert (= (and b!311312 res!167921) b!311310))

(declare-fun m!321325 () Bool)

(assert (=> b!311304 m!321325))

(declare-fun m!321327 () Bool)

(assert (=> start!31002 m!321327))

(declare-fun m!321329 () Bool)

(assert (=> start!31002 m!321329))

(declare-fun m!321331 () Bool)

(assert (=> b!311309 m!321331))

(declare-fun m!321333 () Bool)

(assert (=> b!311305 m!321333))

(declare-fun m!321335 () Bool)

(assert (=> b!311305 m!321335))

(declare-fun m!321337 () Bool)

(assert (=> b!311310 m!321337))

(declare-fun m!321339 () Bool)

(assert (=> b!311310 m!321339))

(declare-fun m!321341 () Bool)

(assert (=> b!311310 m!321341))

(declare-fun m!321343 () Bool)

(assert (=> b!311308 m!321343))

(assert (=> b!311308 m!321343))

(declare-fun m!321345 () Bool)

(assert (=> b!311308 m!321345))

(declare-fun m!321347 () Bool)

(assert (=> b!311313 m!321347))

(declare-fun m!321349 () Bool)

(assert (=> b!311312 m!321349))

(declare-fun m!321351 () Bool)

(assert (=> b!311312 m!321351))

(declare-fun m!321353 () Bool)

(assert (=> b!311306 m!321353))

(declare-fun m!321355 () Bool)

(assert (=> b!311307 m!321355))

(push 1)

