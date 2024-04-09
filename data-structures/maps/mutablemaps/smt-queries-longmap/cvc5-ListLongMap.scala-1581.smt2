; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30072 () Bool)

(assert start!30072)

(declare-fun b!301261 () Bool)

(declare-fun res!159097 () Bool)

(declare-fun e!190149 () Bool)

(assert (=> b!301261 (=> (not res!159097) (not e!190149))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301261 (= res!159097 (validKeyInArray!0 k!2441))))

(declare-fun b!301262 () Bool)

(declare-fun res!159100 () Bool)

(assert (=> b!301262 (=> (not res!159100) (not e!190149))))

(declare-datatypes ((array!15260 0))(
  ( (array!15261 (arr!7219 (Array (_ BitVec 32) (_ BitVec 64))) (size!7571 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15260)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2370 0))(
  ( (MissingZero!2370 (index!11656 (_ BitVec 32))) (Found!2370 (index!11657 (_ BitVec 32))) (Intermediate!2370 (undefined!3182 Bool) (index!11658 (_ BitVec 32)) (x!29901 (_ BitVec 32))) (Undefined!2370) (MissingVacant!2370 (index!11659 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15260 (_ BitVec 32)) SeekEntryResult!2370)

(assert (=> b!301262 (= res!159100 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2370 i!1240)))))

(declare-fun b!301263 () Bool)

(declare-fun res!159101 () Bool)

(assert (=> b!301263 (=> (not res!159101) (not e!190149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15260 (_ BitVec 32)) Bool)

(assert (=> b!301263 (= res!159101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!159102 () Bool)

(assert (=> start!30072 (=> (not res!159102) (not e!190149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30072 (= res!159102 (validMask!0 mask!3709))))

(assert (=> start!30072 e!190149))

(assert (=> start!30072 true))

(declare-fun array_inv!5173 (array!15260) Bool)

(assert (=> start!30072 (array_inv!5173 a!3293)))

(declare-fun b!301264 () Bool)

(declare-fun res!159098 () Bool)

(assert (=> b!301264 (=> (not res!159098) (not e!190149))))

(assert (=> b!301264 (= res!159098 (and (= (size!7571 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7571 a!3293))))))

(declare-fun b!301265 () Bool)

(assert (=> b!301265 (= e!190149 false)))

(declare-fun lt!149807 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301265 (= lt!149807 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301266 () Bool)

(declare-fun res!159099 () Bool)

(assert (=> b!301266 (=> (not res!159099) (not e!190149))))

(declare-fun arrayContainsKey!0 (array!15260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301266 (= res!159099 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30072 res!159102) b!301264))

(assert (= (and b!301264 res!159098) b!301261))

(assert (= (and b!301261 res!159097) b!301266))

(assert (= (and b!301266 res!159099) b!301262))

(assert (= (and b!301262 res!159100) b!301263))

(assert (= (and b!301263 res!159101) b!301265))

(declare-fun m!313075 () Bool)

(assert (=> b!301266 m!313075))

(declare-fun m!313077 () Bool)

(assert (=> b!301262 m!313077))

(declare-fun m!313079 () Bool)

(assert (=> b!301263 m!313079))

(declare-fun m!313081 () Bool)

(assert (=> start!30072 m!313081))

(declare-fun m!313083 () Bool)

(assert (=> start!30072 m!313083))

(declare-fun m!313085 () Bool)

(assert (=> b!301265 m!313085))

(declare-fun m!313087 () Bool)

(assert (=> b!301261 m!313087))

(push 1)

(assert (not b!301261))

(assert (not b!301263))

(assert (not b!301266))

(assert (not b!301262))

(assert (not start!30072))

(assert (not b!301265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

