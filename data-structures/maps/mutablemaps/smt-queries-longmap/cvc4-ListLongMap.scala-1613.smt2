; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30412 () Bool)

(assert start!30412)

(declare-fun b!304110 () Bool)

(declare-fun e!191184 () Bool)

(declare-fun e!191183 () Bool)

(assert (=> b!304110 (= e!191184 e!191183)))

(declare-fun res!161622 () Bool)

(assert (=> b!304110 (=> (not res!161622) (not e!191183))))

(declare-datatypes ((array!15465 0))(
  ( (array!15466 (arr!7317 (Array (_ BitVec 32) (_ BitVec 64))) (size!7669 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15465)

(declare-datatypes ((SeekEntryResult!2468 0))(
  ( (MissingZero!2468 (index!12048 (_ BitVec 32))) (Found!2468 (index!12049 (_ BitVec 32))) (Intermediate!2468 (undefined!3280 Bool) (index!12050 (_ BitVec 32)) (x!30273 (_ BitVec 32))) (Undefined!2468) (MissingVacant!2468 (index!12051 (_ BitVec 32))) )
))
(declare-fun lt!150386 () SeekEntryResult!2468)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15465 (_ BitVec 32)) SeekEntryResult!2468)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304110 (= res!161622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150386))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304110 (= lt!150386 (Intermediate!2468 false resIndex!52 resX!52))))

(declare-fun b!304111 () Bool)

(declare-fun res!161621 () Bool)

(assert (=> b!304111 (=> (not res!161621) (not e!191184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15465 (_ BitVec 32)) Bool)

(assert (=> b!304111 (= res!161621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304112 () Bool)

(declare-fun res!161614 () Bool)

(assert (=> b!304112 (=> (not res!161614) (not e!191184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304112 (= res!161614 (validKeyInArray!0 k!2441))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!150385 () (_ BitVec 32))

(declare-fun b!304113 () Bool)

(assert (=> b!304113 (= e!191183 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!150385 #b00000000000000000000000000000000) (bvslt lt!150385 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304113 (= lt!150385 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!304115 () Bool)

(declare-fun res!161617 () Bool)

(assert (=> b!304115 (=> (not res!161617) (not e!191184))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304115 (= res!161617 (and (= (size!7669 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7669 a!3293))))))

(declare-fun b!304116 () Bool)

(declare-fun res!161620 () Bool)

(assert (=> b!304116 (=> (not res!161620) (not e!191184))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15465 (_ BitVec 32)) SeekEntryResult!2468)

(assert (=> b!304116 (= res!161620 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2468 i!1240)))))

(declare-fun b!304117 () Bool)

(declare-fun res!161618 () Bool)

(assert (=> b!304117 (=> (not res!161618) (not e!191183))))

(assert (=> b!304117 (= res!161618 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7317 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7317 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7317 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!304118 () Bool)

(declare-fun res!161616 () Bool)

(assert (=> b!304118 (=> (not res!161616) (not e!191183))))

(assert (=> b!304118 (= res!161616 (and (= (select (arr!7317 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7669 a!3293))))))

(declare-fun b!304119 () Bool)

(declare-fun res!161615 () Bool)

(assert (=> b!304119 (=> (not res!161615) (not e!191183))))

(assert (=> b!304119 (= res!161615 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150386))))

(declare-fun b!304114 () Bool)

(declare-fun res!161613 () Bool)

(assert (=> b!304114 (=> (not res!161613) (not e!191184))))

(declare-fun arrayContainsKey!0 (array!15465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304114 (= res!161613 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!161619 () Bool)

(assert (=> start!30412 (=> (not res!161619) (not e!191184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30412 (= res!161619 (validMask!0 mask!3709))))

(assert (=> start!30412 e!191184))

(declare-fun array_inv!5271 (array!15465) Bool)

(assert (=> start!30412 (array_inv!5271 a!3293)))

(assert (=> start!30412 true))

(assert (= (and start!30412 res!161619) b!304115))

(assert (= (and b!304115 res!161617) b!304112))

(assert (= (and b!304112 res!161614) b!304114))

(assert (= (and b!304114 res!161613) b!304116))

(assert (= (and b!304116 res!161620) b!304111))

(assert (= (and b!304111 res!161621) b!304110))

(assert (= (and b!304110 res!161622) b!304118))

(assert (= (and b!304118 res!161616) b!304119))

(assert (= (and b!304119 res!161615) b!304117))

(assert (= (and b!304117 res!161618) b!304113))

(declare-fun m!315271 () Bool)

(assert (=> start!30412 m!315271))

(declare-fun m!315273 () Bool)

(assert (=> start!30412 m!315273))

(declare-fun m!315275 () Bool)

(assert (=> b!304116 m!315275))

(declare-fun m!315277 () Bool)

(assert (=> b!304119 m!315277))

(declare-fun m!315279 () Bool)

(assert (=> b!304114 m!315279))

(declare-fun m!315281 () Bool)

(assert (=> b!304113 m!315281))

(declare-fun m!315283 () Bool)

(assert (=> b!304118 m!315283))

(declare-fun m!315285 () Bool)

(assert (=> b!304111 m!315285))

(declare-fun m!315287 () Bool)

(assert (=> b!304117 m!315287))

(declare-fun m!315289 () Bool)

(assert (=> b!304112 m!315289))

(declare-fun m!315291 () Bool)

(assert (=> b!304110 m!315291))

(assert (=> b!304110 m!315291))

(declare-fun m!315293 () Bool)

(assert (=> b!304110 m!315293))

(push 1)

(assert (not b!304112))

(assert (not start!30412))

(assert (not b!304119))

(assert (not b!304113))

(assert (not b!304110))

(assert (not b!304114))

(assert (not b!304111))

(assert (not b!304116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

