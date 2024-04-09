; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30084 () Bool)

(assert start!30084)

(declare-fun b!301369 () Bool)

(declare-fun res!159208 () Bool)

(declare-fun e!190185 () Bool)

(assert (=> b!301369 (=> (not res!159208) (not e!190185))))

(declare-datatypes ((array!15272 0))(
  ( (array!15273 (arr!7225 (Array (_ BitVec 32) (_ BitVec 64))) (size!7577 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15272)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301369 (= res!159208 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301370 () Bool)

(assert (=> b!301370 (= e!190185 false)))

(declare-fun lt!149825 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301370 (= lt!149825 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301371 () Bool)

(declare-fun res!159209 () Bool)

(assert (=> b!301371 (=> (not res!159209) (not e!190185))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301371 (= res!159209 (and (= (size!7577 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7577 a!3293))))))

(declare-fun res!159205 () Bool)

(assert (=> start!30084 (=> (not res!159205) (not e!190185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30084 (= res!159205 (validMask!0 mask!3709))))

(assert (=> start!30084 e!190185))

(assert (=> start!30084 true))

(declare-fun array_inv!5179 (array!15272) Bool)

(assert (=> start!30084 (array_inv!5179 a!3293)))

(declare-fun b!301372 () Bool)

(declare-fun res!159206 () Bool)

(assert (=> b!301372 (=> (not res!159206) (not e!190185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301372 (= res!159206 (validKeyInArray!0 k!2441))))

(declare-fun b!301373 () Bool)

(declare-fun res!159207 () Bool)

(assert (=> b!301373 (=> (not res!159207) (not e!190185))))

(declare-datatypes ((SeekEntryResult!2376 0))(
  ( (MissingZero!2376 (index!11680 (_ BitVec 32))) (Found!2376 (index!11681 (_ BitVec 32))) (Intermediate!2376 (undefined!3188 Bool) (index!11682 (_ BitVec 32)) (x!29923 (_ BitVec 32))) (Undefined!2376) (MissingVacant!2376 (index!11683 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15272 (_ BitVec 32)) SeekEntryResult!2376)

(assert (=> b!301373 (= res!159207 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2376 i!1240)))))

(declare-fun b!301374 () Bool)

(declare-fun res!159210 () Bool)

(assert (=> b!301374 (=> (not res!159210) (not e!190185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15272 (_ BitVec 32)) Bool)

(assert (=> b!301374 (= res!159210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30084 res!159205) b!301371))

(assert (= (and b!301371 res!159209) b!301372))

(assert (= (and b!301372 res!159206) b!301369))

(assert (= (and b!301369 res!159208) b!301373))

(assert (= (and b!301373 res!159207) b!301374))

(assert (= (and b!301374 res!159210) b!301370))

(declare-fun m!313159 () Bool)

(assert (=> b!301373 m!313159))

(declare-fun m!313161 () Bool)

(assert (=> b!301370 m!313161))

(declare-fun m!313163 () Bool)

(assert (=> b!301374 m!313163))

(declare-fun m!313165 () Bool)

(assert (=> b!301369 m!313165))

(declare-fun m!313167 () Bool)

(assert (=> b!301372 m!313167))

(declare-fun m!313169 () Bool)

(assert (=> start!30084 m!313169))

(declare-fun m!313171 () Bool)

(assert (=> start!30084 m!313171))

(push 1)

(assert (not b!301369))

(assert (not b!301374))

(assert (not b!301373))

(assert (not start!30084))

(assert (not b!301372))

(assert (not b!301370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

