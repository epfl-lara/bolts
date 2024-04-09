; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30306 () Bool)

(assert start!30306)

(declare-fun b!303155 () Bool)

(declare-fun res!160801 () Bool)

(declare-fun e!190825 () Bool)

(assert (=> b!303155 (=> (not res!160801) (not e!190825))))

(declare-datatypes ((array!15410 0))(
  ( (array!15411 (arr!7291 (Array (_ BitVec 32) (_ BitVec 64))) (size!7643 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15410)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2442 0))(
  ( (MissingZero!2442 (index!11944 (_ BitVec 32))) (Found!2442 (index!11945 (_ BitVec 32))) (Intermediate!2442 (undefined!3254 Bool) (index!11946 (_ BitVec 32)) (x!30174 (_ BitVec 32))) (Undefined!2442) (MissingVacant!2442 (index!11947 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15410 (_ BitVec 32)) SeekEntryResult!2442)

(assert (=> b!303155 (= res!160801 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2442 i!1240)))))

(declare-fun b!303156 () Bool)

(declare-fun res!160806 () Bool)

(assert (=> b!303156 (=> (not res!160806) (not e!190825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15410 (_ BitVec 32)) Bool)

(assert (=> b!303156 (= res!160806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160800 () Bool)

(assert (=> start!30306 (=> (not res!160800) (not e!190825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30306 (= res!160800 (validMask!0 mask!3709))))

(assert (=> start!30306 e!190825))

(declare-fun array_inv!5245 (array!15410) Bool)

(assert (=> start!30306 (array_inv!5245 a!3293)))

(assert (=> start!30306 true))

(declare-fun b!303157 () Bool)

(declare-fun res!160802 () Bool)

(assert (=> b!303157 (=> (not res!160802) (not e!190825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303157 (= res!160802 (validKeyInArray!0 k!2441))))

(declare-fun b!303158 () Bool)

(assert (=> b!303158 (= e!190825 false)))

(declare-fun lt!150158 () SeekEntryResult!2442)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15410 (_ BitVec 32)) SeekEntryResult!2442)

(assert (=> b!303158 (= lt!150158 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!303159 () Bool)

(declare-fun res!160803 () Bool)

(assert (=> b!303159 (=> (not res!160803) (not e!190825))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303159 (= res!160803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2442 false resIndex!52 resX!52)))))

(declare-fun b!303160 () Bool)

(declare-fun res!160804 () Bool)

(assert (=> b!303160 (=> (not res!160804) (not e!190825))))

(assert (=> b!303160 (= res!160804 (and (= (select (arr!7291 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7643 a!3293))))))

(declare-fun b!303161 () Bool)

(declare-fun res!160799 () Bool)

(assert (=> b!303161 (=> (not res!160799) (not e!190825))))

(declare-fun arrayContainsKey!0 (array!15410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303161 (= res!160799 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303162 () Bool)

(declare-fun res!160805 () Bool)

(assert (=> b!303162 (=> (not res!160805) (not e!190825))))

(assert (=> b!303162 (= res!160805 (and (= (size!7643 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7643 a!3293))))))

(assert (= (and start!30306 res!160800) b!303162))

(assert (= (and b!303162 res!160805) b!303157))

(assert (= (and b!303157 res!160802) b!303161))

(assert (= (and b!303161 res!160799) b!303155))

(assert (= (and b!303155 res!160801) b!303156))

(assert (= (and b!303156 res!160806) b!303159))

(assert (= (and b!303159 res!160803) b!303160))

(assert (= (and b!303160 res!160804) b!303158))

(declare-fun m!314563 () Bool)

(assert (=> b!303160 m!314563))

(declare-fun m!314565 () Bool)

(assert (=> b!303156 m!314565))

(declare-fun m!314567 () Bool)

(assert (=> b!303159 m!314567))

(assert (=> b!303159 m!314567))

(declare-fun m!314569 () Bool)

(assert (=> b!303159 m!314569))

(declare-fun m!314571 () Bool)

(assert (=> b!303155 m!314571))

(declare-fun m!314573 () Bool)

(assert (=> b!303161 m!314573))

(declare-fun m!314575 () Bool)

(assert (=> b!303158 m!314575))

(declare-fun m!314577 () Bool)

(assert (=> start!30306 m!314577))

(declare-fun m!314579 () Bool)

(assert (=> start!30306 m!314579))

(declare-fun m!314581 () Bool)

(assert (=> b!303157 m!314581))

(push 1)

(assert (not b!303161))

(assert (not b!303157))

(assert (not b!303159))

(assert (not b!303155))

(assert (not b!303156))

(assert (not b!303158))

(assert (not start!30306))

(check-sat)

(pop 1)

