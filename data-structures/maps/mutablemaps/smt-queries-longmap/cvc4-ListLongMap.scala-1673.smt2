; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30934 () Bool)

(assert start!30934)

(declare-fun res!166898 () Bool)

(declare-fun e!193735 () Bool)

(assert (=> start!30934 (=> (not res!166898) (not e!193735))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30934 (= res!166898 (validMask!0 mask!3709))))

(assert (=> start!30934 e!193735))

(declare-datatypes ((array!15834 0))(
  ( (array!15835 (arr!7497 (Array (_ BitVec 32) (_ BitVec 64))) (size!7849 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15834)

(declare-fun array_inv!5451 (array!15834) Bool)

(assert (=> start!30934 (array_inv!5451 a!3293)))

(assert (=> start!30934 true))

(declare-fun b!310284 () Bool)

(declare-fun res!166896 () Bool)

(assert (=> b!310284 (=> (not res!166896) (not e!193735))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310284 (= res!166896 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310285 () Bool)

(declare-fun res!166904 () Bool)

(assert (=> b!310285 (=> (not res!166904) (not e!193735))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2648 0))(
  ( (MissingZero!2648 (index!12768 (_ BitVec 32))) (Found!2648 (index!12769 (_ BitVec 32))) (Intermediate!2648 (undefined!3460 Bool) (index!12770 (_ BitVec 32)) (x!30960 (_ BitVec 32))) (Undefined!2648) (MissingVacant!2648 (index!12771 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15834 (_ BitVec 32)) SeekEntryResult!2648)

(assert (=> b!310285 (= res!166904 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2648 i!1240)))))

(declare-fun b!310286 () Bool)

(declare-fun res!166897 () Bool)

(assert (=> b!310286 (=> (not res!166897) (not e!193735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15834 (_ BitVec 32)) Bool)

(assert (=> b!310286 (= res!166897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310287 () Bool)

(declare-fun e!193731 () Bool)

(declare-fun e!193734 () Bool)

(assert (=> b!310287 (= e!193731 e!193734)))

(declare-fun res!166900 () Bool)

(assert (=> b!310287 (=> (not res!166900) (not e!193734))))

(declare-fun lt!151935 () SeekEntryResult!2648)

(declare-fun lt!151937 () SeekEntryResult!2648)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310287 (= res!166900 (and (= lt!151935 lt!151937) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7497 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15834 (_ BitVec 32)) SeekEntryResult!2648)

(assert (=> b!310287 (= lt!151935 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun lt!151934 () array!15834)

(declare-fun b!310288 () Bool)

(declare-fun e!193733 () Bool)

(declare-fun lt!151936 () (_ BitVec 32))

(assert (=> b!310288 (= e!193733 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151934 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151936 k!2441 lt!151934 mask!3709)))))

(assert (=> b!310288 (= lt!151934 (array!15835 (store (arr!7497 a!3293) i!1240 k!2441) (size!7849 a!3293)))))

(declare-fun b!310289 () Bool)

(declare-fun res!166899 () Bool)

(assert (=> b!310289 (=> (not res!166899) (not e!193735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310289 (= res!166899 (validKeyInArray!0 k!2441))))

(declare-fun b!310290 () Bool)

(assert (=> b!310290 (= e!193735 e!193731)))

(declare-fun res!166905 () Bool)

(assert (=> b!310290 (=> (not res!166905) (not e!193731))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310290 (= res!166905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151937))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310290 (= lt!151937 (Intermediate!2648 false resIndex!52 resX!52))))

(declare-fun b!310291 () Bool)

(assert (=> b!310291 (= e!193734 (not true))))

(assert (=> b!310291 e!193733))

(declare-fun res!166903 () Bool)

(assert (=> b!310291 (=> (not res!166903) (not e!193733))))

(assert (=> b!310291 (= res!166903 (= lt!151935 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151936 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310291 (= lt!151936 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310292 () Bool)

(declare-fun res!166901 () Bool)

(assert (=> b!310292 (=> (not res!166901) (not e!193731))))

(assert (=> b!310292 (= res!166901 (and (= (select (arr!7497 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7849 a!3293))))))

(declare-fun b!310293 () Bool)

(declare-fun res!166902 () Bool)

(assert (=> b!310293 (=> (not res!166902) (not e!193735))))

(assert (=> b!310293 (= res!166902 (and (= (size!7849 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7849 a!3293))))))

(assert (= (and start!30934 res!166898) b!310293))

(assert (= (and b!310293 res!166902) b!310289))

(assert (= (and b!310289 res!166899) b!310284))

(assert (= (and b!310284 res!166896) b!310285))

(assert (= (and b!310285 res!166904) b!310286))

(assert (= (and b!310286 res!166897) b!310290))

(assert (= (and b!310290 res!166905) b!310292))

(assert (= (and b!310292 res!166901) b!310287))

(assert (= (and b!310287 res!166900) b!310291))

(assert (= (and b!310291 res!166903) b!310288))

(declare-fun m!320237 () Bool)

(assert (=> b!310290 m!320237))

(assert (=> b!310290 m!320237))

(declare-fun m!320239 () Bool)

(assert (=> b!310290 m!320239))

(declare-fun m!320241 () Bool)

(assert (=> b!310284 m!320241))

(declare-fun m!320243 () Bool)

(assert (=> b!310286 m!320243))

(declare-fun m!320245 () Bool)

(assert (=> b!310292 m!320245))

(declare-fun m!320247 () Bool)

(assert (=> b!310288 m!320247))

(declare-fun m!320249 () Bool)

(assert (=> b!310288 m!320249))

(declare-fun m!320251 () Bool)

(assert (=> b!310288 m!320251))

(declare-fun m!320253 () Bool)

(assert (=> start!30934 m!320253))

(declare-fun m!320255 () Bool)

(assert (=> start!30934 m!320255))

(declare-fun m!320257 () Bool)

(assert (=> b!310291 m!320257))

(declare-fun m!320259 () Bool)

(assert (=> b!310291 m!320259))

(declare-fun m!320261 () Bool)

(assert (=> b!310289 m!320261))

(declare-fun m!320263 () Bool)

(assert (=> b!310287 m!320263))

(declare-fun m!320265 () Bool)

(assert (=> b!310287 m!320265))

(declare-fun m!320267 () Bool)

(assert (=> b!310285 m!320267))

(push 1)

(assert (not b!310285))

(assert (not b!310289))

