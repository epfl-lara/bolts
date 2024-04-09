; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30262 () Bool)

(assert start!30262)

(declare-fun b!302599 () Bool)

(declare-fun res!160251 () Bool)

(declare-fun e!190665 () Bool)

(assert (=> b!302599 (=> (not res!160251) (not e!190665))))

(declare-datatypes ((array!15366 0))(
  ( (array!15367 (arr!7269 (Array (_ BitVec 32) (_ BitVec 64))) (size!7621 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15366)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!302599 (= res!160251 (and (= (size!7621 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7621 a!3293))))))

(declare-fun b!302600 () Bool)

(declare-fun res!160246 () Bool)

(declare-fun e!190664 () Bool)

(assert (=> b!302600 (=> (not res!160246) (not e!190664))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302600 (= res!160246 (and (= (select (arr!7269 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7621 a!3293))))))

(declare-fun b!302601 () Bool)

(declare-fun res!160247 () Bool)

(assert (=> b!302601 (=> (not res!160247) (not e!190665))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2420 0))(
  ( (MissingZero!2420 (index!11856 (_ BitVec 32))) (Found!2420 (index!11857 (_ BitVec 32))) (Intermediate!2420 (undefined!3232 Bool) (index!11858 (_ BitVec 32)) (x!30088 (_ BitVec 32))) (Undefined!2420) (MissingVacant!2420 (index!11859 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15366 (_ BitVec 32)) SeekEntryResult!2420)

(assert (=> b!302601 (= res!160247 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2420 i!1240)))))

(declare-fun b!302602 () Bool)

(declare-fun res!160244 () Bool)

(assert (=> b!302602 (=> (not res!160244) (not e!190665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302602 (= res!160244 (validKeyInArray!0 k!2441))))

(declare-fun b!302603 () Bool)

(declare-fun res!160245 () Bool)

(assert (=> b!302603 (=> (not res!160245) (not e!190664))))

(declare-fun lt!150092 () SeekEntryResult!2420)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15366 (_ BitVec 32)) SeekEntryResult!2420)

(assert (=> b!302603 (= res!160245 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150092))))

(declare-fun b!302605 () Bool)

(assert (=> b!302605 (= e!190665 e!190664)))

(declare-fun res!160250 () Bool)

(assert (=> b!302605 (=> (not res!160250) (not e!190664))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302605 (= res!160250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150092))))

(assert (=> b!302605 (= lt!150092 (Intermediate!2420 false resIndex!52 resX!52))))

(declare-fun b!302606 () Bool)

(declare-fun res!160248 () Bool)

(assert (=> b!302606 (=> (not res!160248) (not e!190665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15366 (_ BitVec 32)) Bool)

(assert (=> b!302606 (= res!160248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302607 () Bool)

(declare-fun res!160249 () Bool)

(assert (=> b!302607 (=> (not res!160249) (not e!190665))))

(declare-fun arrayContainsKey!0 (array!15366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302607 (= res!160249 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302604 () Bool)

(assert (=> b!302604 (= e!190664 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7269 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7269 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7269 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun res!160243 () Bool)

(assert (=> start!30262 (=> (not res!160243) (not e!190665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30262 (= res!160243 (validMask!0 mask!3709))))

(assert (=> start!30262 e!190665))

(declare-fun array_inv!5223 (array!15366) Bool)

(assert (=> start!30262 (array_inv!5223 a!3293)))

(assert (=> start!30262 true))

(assert (= (and start!30262 res!160243) b!302599))

(assert (= (and b!302599 res!160251) b!302602))

(assert (= (and b!302602 res!160244) b!302607))

(assert (= (and b!302607 res!160249) b!302601))

(assert (= (and b!302601 res!160247) b!302606))

(assert (= (and b!302606 res!160248) b!302605))

(assert (= (and b!302605 res!160250) b!302600))

(assert (= (and b!302600 res!160246) b!302603))

(assert (= (and b!302603 res!160245) b!302604))

(declare-fun m!314103 () Bool)

(assert (=> b!302605 m!314103))

(assert (=> b!302605 m!314103))

(declare-fun m!314105 () Bool)

(assert (=> b!302605 m!314105))

(declare-fun m!314107 () Bool)

(assert (=> b!302602 m!314107))

(declare-fun m!314109 () Bool)

(assert (=> b!302601 m!314109))

(declare-fun m!314111 () Bool)

(assert (=> b!302600 m!314111))

(declare-fun m!314113 () Bool)

(assert (=> start!30262 m!314113))

(declare-fun m!314115 () Bool)

(assert (=> start!30262 m!314115))

(declare-fun m!314117 () Bool)

(assert (=> b!302603 m!314117))

(declare-fun m!314119 () Bool)

(assert (=> b!302604 m!314119))

(declare-fun m!314121 () Bool)

(assert (=> b!302606 m!314121))

(declare-fun m!314123 () Bool)

(assert (=> b!302607 m!314123))

(push 1)

(assert (not b!302607))

(assert (not b!302601))

(assert (not b!302603))

(assert (not start!30262))

(assert (not b!302602))

(assert (not b!302605))

(assert (not b!302606))

(check-sat)

