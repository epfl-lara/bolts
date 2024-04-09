; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31802 () Bool)

(assert start!31802)

(declare-fun b!317409 () Bool)

(declare-fun res!172149 () Bool)

(declare-fun e!197341 () Bool)

(assert (=> b!317409 (=> (not res!172149) (not e!197341))))

(declare-datatypes ((array!16171 0))(
  ( (array!16172 (arr!7649 (Array (_ BitVec 32) (_ BitVec 64))) (size!8001 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16171)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16171 (_ BitVec 32)) Bool)

(assert (=> b!317409 (= res!172149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!172153 () Bool)

(assert (=> start!31802 (=> (not res!172153) (not e!197341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31802 (= res!172153 (validMask!0 mask!3709))))

(assert (=> start!31802 e!197341))

(declare-fun array_inv!5603 (array!16171) Bool)

(assert (=> start!31802 (array_inv!5603 a!3293)))

(assert (=> start!31802 true))

(declare-fun b!317410 () Bool)

(declare-fun res!172151 () Bool)

(declare-fun e!197342 () Bool)

(assert (=> b!317410 (=> (not res!172151) (not e!197342))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317410 (= res!172151 (and (= (select (arr!7649 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8001 a!3293))))))

(declare-fun b!317411 () Bool)

(declare-fun res!172154 () Bool)

(assert (=> b!317411 (=> (not res!172154) (not e!197341))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317411 (= res!172154 (validKeyInArray!0 k0!2441))))

(declare-fun b!317412 () Bool)

(declare-fun res!172148 () Bool)

(assert (=> b!317412 (=> (not res!172148) (not e!197341))))

(assert (=> b!317412 (= res!172148 (and (= (size!8001 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8001 a!3293))))))

(declare-fun b!317413 () Bool)

(assert (=> b!317413 (= e!197341 e!197342)))

(declare-fun res!172152 () Bool)

(assert (=> b!317413 (=> (not res!172152) (not e!197342))))

(declare-datatypes ((SeekEntryResult!2800 0))(
  ( (MissingZero!2800 (index!13376 (_ BitVec 32))) (Found!2800 (index!13377 (_ BitVec 32))) (Intermediate!2800 (undefined!3612 Bool) (index!13378 (_ BitVec 32)) (x!31604 (_ BitVec 32))) (Undefined!2800) (MissingVacant!2800 (index!13379 (_ BitVec 32))) )
))
(declare-fun lt!154982 () SeekEntryResult!2800)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16171 (_ BitVec 32)) SeekEntryResult!2800)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317413 (= res!172152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154982))))

(assert (=> b!317413 (= lt!154982 (Intermediate!2800 false resIndex!52 resX!52))))

(declare-fun lt!154981 () array!16171)

(declare-fun e!197343 () Bool)

(declare-fun lt!154979 () (_ BitVec 32))

(declare-fun b!317414 () Bool)

(assert (=> b!317414 (= e!197343 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!154981 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154979 k0!2441 lt!154981 mask!3709)))))

(assert (=> b!317414 (= lt!154981 (array!16172 (store (arr!7649 a!3293) i!1240 k0!2441) (size!8001 a!3293)))))

(declare-fun b!317415 () Bool)

(declare-fun res!172146 () Bool)

(assert (=> b!317415 (=> (not res!172146) (not e!197341))))

(declare-fun arrayContainsKey!0 (array!16171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317415 (= res!172146 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317416 () Bool)

(declare-fun e!197340 () Bool)

(assert (=> b!317416 (= e!197340 (not true))))

(assert (=> b!317416 e!197343))

(declare-fun res!172150 () Bool)

(assert (=> b!317416 (=> (not res!172150) (not e!197343))))

(declare-fun lt!154980 () SeekEntryResult!2800)

(assert (=> b!317416 (= res!172150 (= lt!154980 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154979 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317416 (= lt!154979 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317417 () Bool)

(assert (=> b!317417 (= e!197342 e!197340)))

(declare-fun res!172147 () Bool)

(assert (=> b!317417 (=> (not res!172147) (not e!197340))))

(assert (=> b!317417 (= res!172147 (and (= lt!154980 lt!154982) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7649 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317417 (= lt!154980 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317418 () Bool)

(declare-fun res!172155 () Bool)

(assert (=> b!317418 (=> (not res!172155) (not e!197341))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16171 (_ BitVec 32)) SeekEntryResult!2800)

(assert (=> b!317418 (= res!172155 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2800 i!1240)))))

(assert (= (and start!31802 res!172153) b!317412))

(assert (= (and b!317412 res!172148) b!317411))

(assert (= (and b!317411 res!172154) b!317415))

(assert (= (and b!317415 res!172146) b!317418))

(assert (= (and b!317418 res!172155) b!317409))

(assert (= (and b!317409 res!172149) b!317413))

(assert (= (and b!317413 res!172152) b!317410))

(assert (= (and b!317410 res!172151) b!317417))

(assert (= (and b!317417 res!172147) b!317416))

(assert (= (and b!317416 res!172150) b!317414))

(declare-fun m!326097 () Bool)

(assert (=> b!317411 m!326097))

(declare-fun m!326099 () Bool)

(assert (=> b!317416 m!326099))

(declare-fun m!326101 () Bool)

(assert (=> b!317416 m!326101))

(declare-fun m!326103 () Bool)

(assert (=> start!31802 m!326103))

(declare-fun m!326105 () Bool)

(assert (=> start!31802 m!326105))

(declare-fun m!326107 () Bool)

(assert (=> b!317413 m!326107))

(assert (=> b!317413 m!326107))

(declare-fun m!326109 () Bool)

(assert (=> b!317413 m!326109))

(declare-fun m!326111 () Bool)

(assert (=> b!317417 m!326111))

(declare-fun m!326113 () Bool)

(assert (=> b!317417 m!326113))

(declare-fun m!326115 () Bool)

(assert (=> b!317418 m!326115))

(declare-fun m!326117 () Bool)

(assert (=> b!317414 m!326117))

(declare-fun m!326119 () Bool)

(assert (=> b!317414 m!326119))

(declare-fun m!326121 () Bool)

(assert (=> b!317414 m!326121))

(declare-fun m!326123 () Bool)

(assert (=> b!317415 m!326123))

(declare-fun m!326125 () Bool)

(assert (=> b!317410 m!326125))

(declare-fun m!326127 () Bool)

(assert (=> b!317409 m!326127))

(check-sat (not b!317413) (not b!317416) (not start!31802) (not b!317418) (not b!317411) (not b!317417) (not b!317409) (not b!317414) (not b!317415))
(check-sat)
