; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30088 () Bool)

(assert start!30088)

(declare-fun b!301405 () Bool)

(declare-fun res!159246 () Bool)

(declare-fun e!190197 () Bool)

(assert (=> b!301405 (=> (not res!159246) (not e!190197))))

(declare-datatypes ((array!15276 0))(
  ( (array!15277 (arr!7227 (Array (_ BitVec 32) (_ BitVec 64))) (size!7579 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15276)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15276 (_ BitVec 32)) Bool)

(assert (=> b!301405 (= res!159246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301406 () Bool)

(declare-fun res!159243 () Bool)

(assert (=> b!301406 (=> (not res!159243) (not e!190197))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2378 0))(
  ( (MissingZero!2378 (index!11688 (_ BitVec 32))) (Found!2378 (index!11689 (_ BitVec 32))) (Intermediate!2378 (undefined!3190 Bool) (index!11690 (_ BitVec 32)) (x!29925 (_ BitVec 32))) (Undefined!2378) (MissingVacant!2378 (index!11691 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15276 (_ BitVec 32)) SeekEntryResult!2378)

(assert (=> b!301406 (= res!159243 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2378 i!1240)))))

(declare-fun b!301407 () Bool)

(assert (=> b!301407 (= e!190197 false)))

(declare-fun lt!149831 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301407 (= lt!149831 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301408 () Bool)

(declare-fun res!159245 () Bool)

(assert (=> b!301408 (=> (not res!159245) (not e!190197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301408 (= res!159245 (validKeyInArray!0 k!2441))))

(declare-fun b!301409 () Bool)

(declare-fun res!159244 () Bool)

(assert (=> b!301409 (=> (not res!159244) (not e!190197))))

(declare-fun arrayContainsKey!0 (array!15276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301409 (= res!159244 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!159241 () Bool)

(assert (=> start!30088 (=> (not res!159241) (not e!190197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30088 (= res!159241 (validMask!0 mask!3709))))

(assert (=> start!30088 e!190197))

(assert (=> start!30088 true))

(declare-fun array_inv!5181 (array!15276) Bool)

(assert (=> start!30088 (array_inv!5181 a!3293)))

(declare-fun b!301410 () Bool)

(declare-fun res!159242 () Bool)

(assert (=> b!301410 (=> (not res!159242) (not e!190197))))

(assert (=> b!301410 (= res!159242 (and (= (size!7579 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7579 a!3293))))))

(assert (= (and start!30088 res!159241) b!301410))

(assert (= (and b!301410 res!159242) b!301408))

(assert (= (and b!301408 res!159245) b!301409))

(assert (= (and b!301409 res!159244) b!301406))

(assert (= (and b!301406 res!159243) b!301405))

(assert (= (and b!301405 res!159246) b!301407))

(declare-fun m!313187 () Bool)

(assert (=> b!301408 m!313187))

(declare-fun m!313189 () Bool)

(assert (=> b!301409 m!313189))

(declare-fun m!313191 () Bool)

(assert (=> b!301405 m!313191))

(declare-fun m!313193 () Bool)

(assert (=> b!301407 m!313193))

(declare-fun m!313195 () Bool)

(assert (=> b!301406 m!313195))

(declare-fun m!313197 () Bool)

(assert (=> start!30088 m!313197))

(declare-fun m!313199 () Bool)

(assert (=> start!30088 m!313199))

(push 1)

(assert (not b!301409))

(assert (not b!301407))

(assert (not start!30088))

(assert (not b!301406))

(assert (not b!301405))

(assert (not b!301408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

