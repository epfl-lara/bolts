; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31812 () Bool)

(assert start!31812)

(declare-fun b!317559 () Bool)

(declare-fun res!172298 () Bool)

(declare-fun e!197418 () Bool)

(assert (=> b!317559 (=> (not res!172298) (not e!197418))))

(declare-datatypes ((array!16181 0))(
  ( (array!16182 (arr!7654 (Array (_ BitVec 32) (_ BitVec 64))) (size!8006 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16181)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317559 (= res!172298 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317560 () Bool)

(declare-fun e!197415 () Bool)

(assert (=> b!317560 (= e!197418 e!197415)))

(declare-fun res!172303 () Bool)

(assert (=> b!317560 (=> (not res!172303) (not e!197415))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2805 0))(
  ( (MissingZero!2805 (index!13396 (_ BitVec 32))) (Found!2805 (index!13397 (_ BitVec 32))) (Intermediate!2805 (undefined!3617 Bool) (index!13398 (_ BitVec 32)) (x!31625 (_ BitVec 32))) (Undefined!2805) (MissingVacant!2805 (index!13399 (_ BitVec 32))) )
))
(declare-fun lt!155041 () SeekEntryResult!2805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16181 (_ BitVec 32)) SeekEntryResult!2805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317560 (= res!172303 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155041))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317560 (= lt!155041 (Intermediate!2805 false resIndex!52 resX!52))))

(declare-fun res!172300 () Bool)

(assert (=> start!31812 (=> (not res!172300) (not e!197418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31812 (= res!172300 (validMask!0 mask!3709))))

(assert (=> start!31812 e!197418))

(declare-fun array_inv!5608 (array!16181) Bool)

(assert (=> start!31812 (array_inv!5608 a!3293)))

(assert (=> start!31812 true))

(declare-fun b!317561 () Bool)

(declare-fun res!172297 () Bool)

(assert (=> b!317561 (=> (not res!172297) (not e!197415))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317561 (= res!172297 (and (= (select (arr!7654 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8006 a!3293))))))

(declare-fun b!317562 () Bool)

(declare-fun lt!155039 () (_ BitVec 32))

(declare-fun e!197417 () Bool)

(declare-fun lt!155040 () array!16181)

(assert (=> b!317562 (= e!197417 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155040 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155039 k!2441 lt!155040 mask!3709)))))

(assert (=> b!317562 (= lt!155040 (array!16182 (store (arr!7654 a!3293) i!1240 k!2441) (size!8006 a!3293)))))

(declare-fun b!317563 () Bool)

(declare-fun res!172301 () Bool)

(assert (=> b!317563 (=> (not res!172301) (not e!197418))))

(assert (=> b!317563 (= res!172301 (and (= (size!8006 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8006 a!3293))))))

(declare-fun b!317564 () Bool)

(declare-fun e!197416 () Bool)

(assert (=> b!317564 (= e!197415 e!197416)))

(declare-fun res!172302 () Bool)

(assert (=> b!317564 (=> (not res!172302) (not e!197416))))

(declare-fun lt!155042 () SeekEntryResult!2805)

(assert (=> b!317564 (= res!172302 (and (= lt!155042 lt!155041) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7654 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317564 (= lt!155042 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317565 () Bool)

(declare-fun res!172296 () Bool)

(assert (=> b!317565 (=> (not res!172296) (not e!197418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16181 (_ BitVec 32)) Bool)

(assert (=> b!317565 (= res!172296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317566 () Bool)

(declare-fun res!172305 () Bool)

(assert (=> b!317566 (=> (not res!172305) (not e!197418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317566 (= res!172305 (validKeyInArray!0 k!2441))))

(declare-fun b!317567 () Bool)

(assert (=> b!317567 (= e!197416 (not true))))

(assert (=> b!317567 e!197417))

(declare-fun res!172299 () Bool)

(assert (=> b!317567 (=> (not res!172299) (not e!197417))))

(assert (=> b!317567 (= res!172299 (= lt!155042 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155039 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317567 (= lt!155039 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317568 () Bool)

(declare-fun res!172304 () Bool)

(assert (=> b!317568 (=> (not res!172304) (not e!197418))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16181 (_ BitVec 32)) SeekEntryResult!2805)

(assert (=> b!317568 (= res!172304 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2805 i!1240)))))

(assert (= (and start!31812 res!172300) b!317563))

(assert (= (and b!317563 res!172301) b!317566))

(assert (= (and b!317566 res!172305) b!317559))

(assert (= (and b!317559 res!172298) b!317568))

(assert (= (and b!317568 res!172304) b!317565))

(assert (= (and b!317565 res!172296) b!317560))

(assert (= (and b!317560 res!172303) b!317561))

(assert (= (and b!317561 res!172297) b!317564))

(assert (= (and b!317564 res!172302) b!317567))

(assert (= (and b!317567 res!172299) b!317562))

(declare-fun m!326257 () Bool)

(assert (=> b!317568 m!326257))

(declare-fun m!326259 () Bool)

(assert (=> b!317564 m!326259))

(declare-fun m!326261 () Bool)

(assert (=> b!317564 m!326261))

(declare-fun m!326263 () Bool)

(assert (=> b!317562 m!326263))

(declare-fun m!326265 () Bool)

(assert (=> b!317562 m!326265))

(declare-fun m!326267 () Bool)

(assert (=> b!317562 m!326267))

(declare-fun m!326269 () Bool)

(assert (=> b!317561 m!326269))

(declare-fun m!326271 () Bool)

(assert (=> b!317559 m!326271))

(declare-fun m!326273 () Bool)

(assert (=> b!317567 m!326273))

(declare-fun m!326275 () Bool)

(assert (=> b!317567 m!326275))

(declare-fun m!326277 () Bool)

(assert (=> b!317560 m!326277))

(assert (=> b!317560 m!326277))

(declare-fun m!326279 () Bool)

(assert (=> b!317560 m!326279))

(declare-fun m!326281 () Bool)

(assert (=> b!317565 m!326281))

(declare-fun m!326283 () Bool)

(assert (=> b!317566 m!326283))

(declare-fun m!326285 () Bool)

(assert (=> start!31812 m!326285))

(declare-fun m!326287 () Bool)

(assert (=> start!31812 m!326287))

(push 1)

