; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30270 () Bool)

(assert start!30270)

(declare-fun b!302696 () Bool)

(declare-fun res!160346 () Bool)

(declare-fun e!190690 () Bool)

(assert (=> b!302696 (=> (not res!160346) (not e!190690))))

(declare-datatypes ((array!15374 0))(
  ( (array!15375 (arr!7273 (Array (_ BitVec 32) (_ BitVec 64))) (size!7625 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15374)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302696 (= res!160346 (and (= (select (arr!7273 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7625 a!3293))))))

(declare-fun res!160347 () Bool)

(assert (=> start!30270 (=> (not res!160347) (not e!190690))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30270 (= res!160347 (validMask!0 mask!3709))))

(assert (=> start!30270 e!190690))

(declare-fun array_inv!5227 (array!15374) Bool)

(assert (=> start!30270 (array_inv!5227 a!3293)))

(assert (=> start!30270 true))

(declare-fun b!302697 () Bool)

(assert (=> b!302697 (= e!190690 false)))

(declare-datatypes ((SeekEntryResult!2424 0))(
  ( (MissingZero!2424 (index!11872 (_ BitVec 32))) (Found!2424 (index!11873 (_ BitVec 32))) (Intermediate!2424 (undefined!3236 Bool) (index!11874 (_ BitVec 32)) (x!30108 (_ BitVec 32))) (Undefined!2424) (MissingVacant!2424 (index!11875 (_ BitVec 32))) )
))
(declare-fun lt!150104 () SeekEntryResult!2424)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15374 (_ BitVec 32)) SeekEntryResult!2424)

(assert (=> b!302697 (= lt!150104 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302698 () Bool)

(declare-fun res!160344 () Bool)

(assert (=> b!302698 (=> (not res!160344) (not e!190690))))

(assert (=> b!302698 (= res!160344 (and (= (size!7625 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7625 a!3293))))))

(declare-fun b!302699 () Bool)

(declare-fun res!160345 () Bool)

(assert (=> b!302699 (=> (not res!160345) (not e!190690))))

(declare-fun arrayContainsKey!0 (array!15374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302699 (= res!160345 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302700 () Bool)

(declare-fun res!160342 () Bool)

(assert (=> b!302700 (=> (not res!160342) (not e!190690))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302700 (= res!160342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2424 false resIndex!52 resX!52)))))

(declare-fun b!302701 () Bool)

(declare-fun res!160341 () Bool)

(assert (=> b!302701 (=> (not res!160341) (not e!190690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15374 (_ BitVec 32)) Bool)

(assert (=> b!302701 (= res!160341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302702 () Bool)

(declare-fun res!160343 () Bool)

(assert (=> b!302702 (=> (not res!160343) (not e!190690))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15374 (_ BitVec 32)) SeekEntryResult!2424)

(assert (=> b!302702 (= res!160343 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2424 i!1240)))))

(declare-fun b!302703 () Bool)

(declare-fun res!160340 () Bool)

(assert (=> b!302703 (=> (not res!160340) (not e!190690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302703 (= res!160340 (validKeyInArray!0 k!2441))))

(assert (= (and start!30270 res!160347) b!302698))

(assert (= (and b!302698 res!160344) b!302703))

(assert (= (and b!302703 res!160340) b!302699))

(assert (= (and b!302699 res!160345) b!302702))

(assert (= (and b!302702 res!160343) b!302701))

(assert (= (and b!302701 res!160341) b!302700))

(assert (= (and b!302700 res!160342) b!302696))

(assert (= (and b!302696 res!160346) b!302697))

(declare-fun m!314185 () Bool)

(assert (=> start!30270 m!314185))

(declare-fun m!314187 () Bool)

(assert (=> start!30270 m!314187))

(declare-fun m!314189 () Bool)

(assert (=> b!302700 m!314189))

(assert (=> b!302700 m!314189))

(declare-fun m!314191 () Bool)

(assert (=> b!302700 m!314191))

(declare-fun m!314193 () Bool)

(assert (=> b!302699 m!314193))

(declare-fun m!314195 () Bool)

(assert (=> b!302697 m!314195))

(declare-fun m!314197 () Bool)

(assert (=> b!302701 m!314197))

(declare-fun m!314199 () Bool)

(assert (=> b!302703 m!314199))

(declare-fun m!314201 () Bool)

(assert (=> b!302696 m!314201))

(declare-fun m!314203 () Bool)

(assert (=> b!302702 m!314203))

(push 1)

(assert (not b!302700))

(assert (not b!302699))

(assert (not b!302697))

(assert (not b!302703))

(assert (not start!30270))

(assert (not b!302702))

(assert (not b!302701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

