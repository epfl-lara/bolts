; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30082 () Bool)

(assert start!30082)

(declare-fun b!301351 () Bool)

(declare-fun e!190179 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!301351 (= e!190179 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!149822 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301351 (= lt!149822 (toIndex!0 k!2441 mask!3709))))

(declare-fun res!159191 () Bool)

(assert (=> start!30082 (=> (not res!159191) (not e!190179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30082 (= res!159191 (validMask!0 mask!3709))))

(assert (=> start!30082 e!190179))

(assert (=> start!30082 true))

(declare-datatypes ((array!15270 0))(
  ( (array!15271 (arr!7224 (Array (_ BitVec 32) (_ BitVec 64))) (size!7576 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15270)

(declare-fun array_inv!5178 (array!15270) Bool)

(assert (=> start!30082 (array_inv!5178 a!3293)))

(declare-fun b!301352 () Bool)

(declare-fun res!159189 () Bool)

(assert (=> b!301352 (=> (not res!159189) (not e!190179))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301352 (= res!159189 (and (= (size!7576 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7576 a!3293))))))

(declare-fun b!301353 () Bool)

(declare-fun res!159187 () Bool)

(assert (=> b!301353 (=> (not res!159187) (not e!190179))))

(declare-datatypes ((SeekEntryResult!2375 0))(
  ( (MissingZero!2375 (index!11676 (_ BitVec 32))) (Found!2375 (index!11677 (_ BitVec 32))) (Intermediate!2375 (undefined!3187 Bool) (index!11678 (_ BitVec 32)) (x!29914 (_ BitVec 32))) (Undefined!2375) (MissingVacant!2375 (index!11679 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15270 (_ BitVec 32)) SeekEntryResult!2375)

(assert (=> b!301353 (= res!159187 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2375 i!1240)))))

(declare-fun b!301354 () Bool)

(declare-fun res!159192 () Bool)

(assert (=> b!301354 (=> (not res!159192) (not e!190179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301354 (= res!159192 (validKeyInArray!0 k!2441))))

(declare-fun b!301355 () Bool)

(declare-fun res!159190 () Bool)

(assert (=> b!301355 (=> (not res!159190) (not e!190179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15270 (_ BitVec 32)) Bool)

(assert (=> b!301355 (= res!159190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301356 () Bool)

(declare-fun res!159188 () Bool)

(assert (=> b!301356 (=> (not res!159188) (not e!190179))))

(declare-fun arrayContainsKey!0 (array!15270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301356 (= res!159188 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30082 res!159191) b!301352))

(assert (= (and b!301352 res!159189) b!301354))

(assert (= (and b!301354 res!159192) b!301356))

(assert (= (and b!301356 res!159188) b!301353))

(assert (= (and b!301353 res!159187) b!301355))

(assert (= (and b!301355 res!159190) b!301351))

(declare-fun m!313145 () Bool)

(assert (=> b!301354 m!313145))

(declare-fun m!313147 () Bool)

(assert (=> start!30082 m!313147))

(declare-fun m!313149 () Bool)

(assert (=> start!30082 m!313149))

(declare-fun m!313151 () Bool)

(assert (=> b!301353 m!313151))

(declare-fun m!313153 () Bool)

(assert (=> b!301355 m!313153))

(declare-fun m!313155 () Bool)

(assert (=> b!301351 m!313155))

(declare-fun m!313157 () Bool)

(assert (=> b!301356 m!313157))

(push 1)

(assert (not b!301354))

(assert (not b!301351))

(assert (not b!301356))

(assert (not b!301353))

(assert (not b!301355))

(assert (not start!30082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

