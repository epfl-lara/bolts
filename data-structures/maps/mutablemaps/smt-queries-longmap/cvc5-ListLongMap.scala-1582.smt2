; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30078 () Bool)

(assert start!30078)

(declare-fun b!301315 () Bool)

(declare-fun res!159151 () Bool)

(declare-fun e!190168 () Bool)

(assert (=> b!301315 (=> (not res!159151) (not e!190168))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301315 (= res!159151 (validKeyInArray!0 k!2441))))

(declare-fun b!301316 () Bool)

(declare-fun res!159153 () Bool)

(assert (=> b!301316 (=> (not res!159153) (not e!190168))))

(declare-datatypes ((array!15266 0))(
  ( (array!15267 (arr!7222 (Array (_ BitVec 32) (_ BitVec 64))) (size!7574 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15266)

(declare-fun arrayContainsKey!0 (array!15266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301316 (= res!159153 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301317 () Bool)

(declare-fun res!159152 () Bool)

(assert (=> b!301317 (=> (not res!159152) (not e!190168))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15266 (_ BitVec 32)) Bool)

(assert (=> b!301317 (= res!159152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301318 () Bool)

(assert (=> b!301318 (= e!190168 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!149816 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301318 (= lt!149816 (toIndex!0 k!2441 mask!3709))))

(declare-fun res!159154 () Bool)

(assert (=> start!30078 (=> (not res!159154) (not e!190168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30078 (= res!159154 (validMask!0 mask!3709))))

(assert (=> start!30078 e!190168))

(assert (=> start!30078 true))

(declare-fun array_inv!5176 (array!15266) Bool)

(assert (=> start!30078 (array_inv!5176 a!3293)))

(declare-fun b!301319 () Bool)

(declare-fun res!159156 () Bool)

(assert (=> b!301319 (=> (not res!159156) (not e!190168))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301319 (= res!159156 (and (= (size!7574 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7574 a!3293))))))

(declare-fun b!301320 () Bool)

(declare-fun res!159155 () Bool)

(assert (=> b!301320 (=> (not res!159155) (not e!190168))))

(declare-datatypes ((SeekEntryResult!2373 0))(
  ( (MissingZero!2373 (index!11668 (_ BitVec 32))) (Found!2373 (index!11669 (_ BitVec 32))) (Intermediate!2373 (undefined!3185 Bool) (index!11670 (_ BitVec 32)) (x!29912 (_ BitVec 32))) (Undefined!2373) (MissingVacant!2373 (index!11671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15266 (_ BitVec 32)) SeekEntryResult!2373)

(assert (=> b!301320 (= res!159155 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2373 i!1240)))))

(assert (= (and start!30078 res!159154) b!301319))

(assert (= (and b!301319 res!159156) b!301315))

(assert (= (and b!301315 res!159151) b!301316))

(assert (= (and b!301316 res!159153) b!301320))

(assert (= (and b!301320 res!159155) b!301317))

(assert (= (and b!301317 res!159152) b!301318))

(declare-fun m!313117 () Bool)

(assert (=> start!30078 m!313117))

(declare-fun m!313119 () Bool)

(assert (=> start!30078 m!313119))

(declare-fun m!313121 () Bool)

(assert (=> b!301315 m!313121))

(declare-fun m!313123 () Bool)

(assert (=> b!301317 m!313123))

(declare-fun m!313125 () Bool)

(assert (=> b!301318 m!313125))

(declare-fun m!313127 () Bool)

(assert (=> b!301320 m!313127))

(declare-fun m!313129 () Bool)

(assert (=> b!301316 m!313129))

(push 1)

(assert (not b!301317))

(assert (not b!301320))

(assert (not b!301318))

(assert (not b!301316))

(assert (not b!301315))

(assert (not start!30078))

(check-sat)

