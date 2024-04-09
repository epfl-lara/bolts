; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30266 () Bool)

(assert start!30266)

(declare-fun b!302648 () Bool)

(declare-fun res!160295 () Bool)

(declare-fun e!190678 () Bool)

(assert (=> b!302648 (=> (not res!160295) (not e!190678))))

(declare-datatypes ((array!15370 0))(
  ( (array!15371 (arr!7271 (Array (_ BitVec 32) (_ BitVec 64))) (size!7623 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15370)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302648 (= res!160295 (and (= (select (arr!7271 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7623 a!3293))))))

(declare-fun b!302649 () Bool)

(declare-fun res!160297 () Bool)

(assert (=> b!302649 (=> (not res!160297) (not e!190678))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302649 (= res!160297 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302651 () Bool)

(declare-fun res!160296 () Bool)

(assert (=> b!302651 (=> (not res!160296) (not e!190678))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2422 0))(
  ( (MissingZero!2422 (index!11864 (_ BitVec 32))) (Found!2422 (index!11865 (_ BitVec 32))) (Intermediate!2422 (undefined!3234 Bool) (index!11866 (_ BitVec 32)) (x!30098 (_ BitVec 32))) (Undefined!2422) (MissingVacant!2422 (index!11867 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15370 (_ BitVec 32)) SeekEntryResult!2422)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302651 (= res!160296 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2422 false resIndex!52 resX!52)))))

(declare-fun b!302652 () Bool)

(assert (=> b!302652 (= e!190678 false)))

(declare-fun lt!150098 () SeekEntryResult!2422)

(assert (=> b!302652 (= lt!150098 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!302653 () Bool)

(declare-fun res!160292 () Bool)

(assert (=> b!302653 (=> (not res!160292) (not e!190678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15370 (_ BitVec 32)) Bool)

(assert (=> b!302653 (= res!160292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302650 () Bool)

(declare-fun res!160299 () Bool)

(assert (=> b!302650 (=> (not res!160299) (not e!190678))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15370 (_ BitVec 32)) SeekEntryResult!2422)

(assert (=> b!302650 (= res!160299 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2422 i!1240)))))

(declare-fun res!160298 () Bool)

(assert (=> start!30266 (=> (not res!160298) (not e!190678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30266 (= res!160298 (validMask!0 mask!3709))))

(assert (=> start!30266 e!190678))

(declare-fun array_inv!5225 (array!15370) Bool)

(assert (=> start!30266 (array_inv!5225 a!3293)))

(assert (=> start!30266 true))

(declare-fun b!302654 () Bool)

(declare-fun res!160293 () Bool)

(assert (=> b!302654 (=> (not res!160293) (not e!190678))))

(assert (=> b!302654 (= res!160293 (and (= (size!7623 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7623 a!3293))))))

(declare-fun b!302655 () Bool)

(declare-fun res!160294 () Bool)

(assert (=> b!302655 (=> (not res!160294) (not e!190678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302655 (= res!160294 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30266 res!160298) b!302654))

(assert (= (and b!302654 res!160293) b!302655))

(assert (= (and b!302655 res!160294) b!302649))

(assert (= (and b!302649 res!160297) b!302650))

(assert (= (and b!302650 res!160299) b!302653))

(assert (= (and b!302653 res!160292) b!302651))

(assert (= (and b!302651 res!160296) b!302648))

(assert (= (and b!302648 res!160295) b!302652))

(declare-fun m!314145 () Bool)

(assert (=> b!302649 m!314145))

(declare-fun m!314147 () Bool)

(assert (=> b!302655 m!314147))

(declare-fun m!314149 () Bool)

(assert (=> b!302653 m!314149))

(declare-fun m!314151 () Bool)

(assert (=> b!302650 m!314151))

(declare-fun m!314153 () Bool)

(assert (=> start!30266 m!314153))

(declare-fun m!314155 () Bool)

(assert (=> start!30266 m!314155))

(declare-fun m!314157 () Bool)

(assert (=> b!302648 m!314157))

(declare-fun m!314159 () Bool)

(assert (=> b!302652 m!314159))

(declare-fun m!314161 () Bool)

(assert (=> b!302651 m!314161))

(assert (=> b!302651 m!314161))

(declare-fun m!314163 () Bool)

(assert (=> b!302651 m!314163))

(check-sat (not b!302650) (not b!302649) (not b!302655) (not b!302651) (not b!302652) (not b!302653) (not start!30266))
