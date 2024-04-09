; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30418 () Bool)

(assert start!30418)

(declare-fun b!304200 () Bool)

(declare-fun e!191210 () Bool)

(assert (=> b!304200 (= e!191210 false)))

(declare-fun lt!150403 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304200 (= lt!150403 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304201 () Bool)

(declare-fun res!161705 () Bool)

(assert (=> b!304201 (=> (not res!161705) (not e!191210))))

(declare-datatypes ((array!15471 0))(
  ( (array!15472 (arr!7320 (Array (_ BitVec 32) (_ BitVec 64))) (size!7672 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15471)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!304201 (= res!161705 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7320 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7320 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7320 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304202 () Bool)

(declare-fun res!161706 () Bool)

(declare-fun e!191211 () Bool)

(assert (=> b!304202 (=> (not res!161706) (not e!191211))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2471 0))(
  ( (MissingZero!2471 (index!12060 (_ BitVec 32))) (Found!2471 (index!12061 (_ BitVec 32))) (Intermediate!2471 (undefined!3283 Bool) (index!12062 (_ BitVec 32)) (x!30284 (_ BitVec 32))) (Undefined!2471) (MissingVacant!2471 (index!12063 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15471 (_ BitVec 32)) SeekEntryResult!2471)

(assert (=> b!304202 (= res!161706 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2471 i!1240)))))

(declare-fun res!161709 () Bool)

(assert (=> start!30418 (=> (not res!161709) (not e!191211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30418 (= res!161709 (validMask!0 mask!3709))))

(assert (=> start!30418 e!191211))

(declare-fun array_inv!5274 (array!15471) Bool)

(assert (=> start!30418 (array_inv!5274 a!3293)))

(assert (=> start!30418 true))

(declare-fun b!304203 () Bool)

(declare-fun res!161710 () Bool)

(assert (=> b!304203 (=> (not res!161710) (not e!191211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304203 (= res!161710 (validKeyInArray!0 k!2441))))

(declare-fun b!304204 () Bool)

(declare-fun res!161707 () Bool)

(assert (=> b!304204 (=> (not res!161707) (not e!191211))))

(assert (=> b!304204 (= res!161707 (and (= (size!7672 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7672 a!3293))))))

(declare-fun b!304205 () Bool)

(declare-fun res!161703 () Bool)

(assert (=> b!304205 (=> (not res!161703) (not e!191211))))

(declare-fun arrayContainsKey!0 (array!15471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304205 (= res!161703 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304206 () Bool)

(assert (=> b!304206 (= e!191211 e!191210)))

(declare-fun res!161704 () Bool)

(assert (=> b!304206 (=> (not res!161704) (not e!191210))))

(declare-fun lt!150404 () SeekEntryResult!2471)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15471 (_ BitVec 32)) SeekEntryResult!2471)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304206 (= res!161704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150404))))

(assert (=> b!304206 (= lt!150404 (Intermediate!2471 false resIndex!52 resX!52))))

(declare-fun b!304207 () Bool)

(declare-fun res!161708 () Bool)

(assert (=> b!304207 (=> (not res!161708) (not e!191211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15471 (_ BitVec 32)) Bool)

(assert (=> b!304207 (= res!161708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304208 () Bool)

(declare-fun res!161712 () Bool)

(assert (=> b!304208 (=> (not res!161712) (not e!191210))))

(assert (=> b!304208 (= res!161712 (and (= (select (arr!7320 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7672 a!3293))))))

(declare-fun b!304209 () Bool)

(declare-fun res!161711 () Bool)

(assert (=> b!304209 (=> (not res!161711) (not e!191210))))

(assert (=> b!304209 (= res!161711 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150404))))

(assert (= (and start!30418 res!161709) b!304204))

(assert (= (and b!304204 res!161707) b!304203))

(assert (= (and b!304203 res!161710) b!304205))

(assert (= (and b!304205 res!161703) b!304202))

(assert (= (and b!304202 res!161706) b!304207))

(assert (= (and b!304207 res!161708) b!304206))

(assert (= (and b!304206 res!161704) b!304208))

(assert (= (and b!304208 res!161712) b!304209))

(assert (= (and b!304209 res!161711) b!304201))

(assert (= (and b!304201 res!161705) b!304200))

(declare-fun m!315343 () Bool)

(assert (=> b!304209 m!315343))

(declare-fun m!315345 () Bool)

(assert (=> b!304208 m!315345))

(declare-fun m!315347 () Bool)

(assert (=> start!30418 m!315347))

(declare-fun m!315349 () Bool)

(assert (=> start!30418 m!315349))

(declare-fun m!315351 () Bool)

(assert (=> b!304206 m!315351))

(assert (=> b!304206 m!315351))

(declare-fun m!315353 () Bool)

(assert (=> b!304206 m!315353))

(declare-fun m!315355 () Bool)

(assert (=> b!304207 m!315355))

(declare-fun m!315357 () Bool)

(assert (=> b!304205 m!315357))

(declare-fun m!315359 () Bool)

(assert (=> b!304201 m!315359))

(declare-fun m!315361 () Bool)

(assert (=> b!304202 m!315361))

(declare-fun m!315363 () Bool)

(assert (=> b!304200 m!315363))

(declare-fun m!315365 () Bool)

(assert (=> b!304203 m!315365))

(push 1)

(assert (not b!304207))

(assert (not b!304202))

(assert (not start!30418))

(assert (not b!304206))

