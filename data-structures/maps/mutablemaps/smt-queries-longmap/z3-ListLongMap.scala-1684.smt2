; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30998 () Bool)

(assert start!30998)

(declare-fun e!194212 () Bool)

(declare-fun lt!152319 () (_ BitVec 32))

(declare-datatypes ((array!15898 0))(
  ( (array!15899 (arr!7529 (Array (_ BitVec 32) (_ BitVec 64))) (size!7881 (_ BitVec 32))) )
))
(declare-fun lt!152318 () array!15898)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun b!311244 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2680 0))(
  ( (MissingZero!2680 (index!12896 (_ BitVec 32))) (Found!2680 (index!12897 (_ BitVec 32))) (Intermediate!2680 (undefined!3492 Bool) (index!12898 (_ BitVec 32)) (x!31080 (_ BitVec 32))) (Undefined!2680) (MissingVacant!2680 (index!12899 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15898 (_ BitVec 32)) SeekEntryResult!2680)

(assert (=> b!311244 (= e!194212 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152318 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152319 k0!2441 lt!152318 mask!3709)))))

(declare-fun a!3293 () array!15898)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311244 (= lt!152318 (array!15899 (store (arr!7529 a!3293) i!1240 k0!2441) (size!7881 a!3293)))))

(declare-fun b!311245 () Bool)

(declare-fun res!167862 () Bool)

(declare-fun e!194215 () Bool)

(assert (=> b!311245 (=> (not res!167862) (not e!194215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311245 (= res!167862 (validKeyInArray!0 k0!2441))))

(declare-fun b!311246 () Bool)

(declare-fun res!167858 () Bool)

(assert (=> b!311246 (=> (not res!167858) (not e!194215))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15898 (_ BitVec 32)) SeekEntryResult!2680)

(assert (=> b!311246 (= res!167858 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2680 i!1240)))))

(declare-fun b!311247 () Bool)

(declare-fun e!194214 () Bool)

(assert (=> b!311247 (= e!194214 (not true))))

(assert (=> b!311247 e!194212))

(declare-fun res!167864 () Bool)

(assert (=> b!311247 (=> (not res!167864) (not e!194212))))

(declare-fun lt!152320 () SeekEntryResult!2680)

(assert (=> b!311247 (= res!167864 (= lt!152320 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152319 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311247 (= lt!152319 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311248 () Bool)

(declare-fun res!167863 () Bool)

(assert (=> b!311248 (=> (not res!167863) (not e!194215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15898 (_ BitVec 32)) Bool)

(assert (=> b!311248 (= res!167863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311249 () Bool)

(declare-fun e!194211 () Bool)

(assert (=> b!311249 (= e!194215 e!194211)))

(declare-fun res!167856 () Bool)

(assert (=> b!311249 (=> (not res!167856) (not e!194211))))

(declare-fun lt!152321 () SeekEntryResult!2680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311249 (= res!167856 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152321))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311249 (= lt!152321 (Intermediate!2680 false resIndex!52 resX!52))))

(declare-fun b!311250 () Bool)

(declare-fun res!167860 () Bool)

(assert (=> b!311250 (=> (not res!167860) (not e!194211))))

(assert (=> b!311250 (= res!167860 (and (= (select (arr!7529 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7881 a!3293))))))

(declare-fun b!311251 () Bool)

(declare-fun res!167861 () Bool)

(assert (=> b!311251 (=> (not res!167861) (not e!194215))))

(declare-fun arrayContainsKey!0 (array!15898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311251 (= res!167861 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun res!167865 () Bool)

(assert (=> start!30998 (=> (not res!167865) (not e!194215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30998 (= res!167865 (validMask!0 mask!3709))))

(assert (=> start!30998 e!194215))

(declare-fun array_inv!5483 (array!15898) Bool)

(assert (=> start!30998 (array_inv!5483 a!3293)))

(assert (=> start!30998 true))

(declare-fun b!311252 () Bool)

(declare-fun res!167857 () Bool)

(assert (=> b!311252 (=> (not res!167857) (not e!194215))))

(assert (=> b!311252 (= res!167857 (and (= (size!7881 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7881 a!3293))))))

(declare-fun b!311253 () Bool)

(assert (=> b!311253 (= e!194211 e!194214)))

(declare-fun res!167859 () Bool)

(assert (=> b!311253 (=> (not res!167859) (not e!194214))))

(assert (=> b!311253 (= res!167859 (and (= lt!152320 lt!152321) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7529 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311253 (= lt!152320 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!30998 res!167865) b!311252))

(assert (= (and b!311252 res!167857) b!311245))

(assert (= (and b!311245 res!167862) b!311251))

(assert (= (and b!311251 res!167861) b!311246))

(assert (= (and b!311246 res!167858) b!311248))

(assert (= (and b!311248 res!167863) b!311249))

(assert (= (and b!311249 res!167856) b!311250))

(assert (= (and b!311250 res!167860) b!311253))

(assert (= (and b!311253 res!167859) b!311247))

(assert (= (and b!311247 res!167864) b!311244))

(declare-fun m!321261 () Bool)

(assert (=> b!311248 m!321261))

(declare-fun m!321263 () Bool)

(assert (=> b!311253 m!321263))

(declare-fun m!321265 () Bool)

(assert (=> b!311253 m!321265))

(declare-fun m!321267 () Bool)

(assert (=> start!30998 m!321267))

(declare-fun m!321269 () Bool)

(assert (=> start!30998 m!321269))

(declare-fun m!321271 () Bool)

(assert (=> b!311249 m!321271))

(assert (=> b!311249 m!321271))

(declare-fun m!321273 () Bool)

(assert (=> b!311249 m!321273))

(declare-fun m!321275 () Bool)

(assert (=> b!311250 m!321275))

(declare-fun m!321277 () Bool)

(assert (=> b!311244 m!321277))

(declare-fun m!321279 () Bool)

(assert (=> b!311244 m!321279))

(declare-fun m!321281 () Bool)

(assert (=> b!311244 m!321281))

(declare-fun m!321283 () Bool)

(assert (=> b!311247 m!321283))

(declare-fun m!321285 () Bool)

(assert (=> b!311247 m!321285))

(declare-fun m!321287 () Bool)

(assert (=> b!311246 m!321287))

(declare-fun m!321289 () Bool)

(assert (=> b!311251 m!321289))

(declare-fun m!321291 () Bool)

(assert (=> b!311245 m!321291))

(check-sat (not b!311244) (not b!311246) (not b!311248) (not start!30998) (not b!311249) (not b!311253) (not b!311251) (not b!311245) (not b!311247))
(check-sat)
