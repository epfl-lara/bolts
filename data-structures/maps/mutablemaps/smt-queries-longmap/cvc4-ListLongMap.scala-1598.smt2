; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30268 () Bool)

(assert start!30268)

(declare-fun b!302672 () Bool)

(declare-fun res!160319 () Bool)

(declare-fun e!190684 () Bool)

(assert (=> b!302672 (=> (not res!160319) (not e!190684))))

(declare-datatypes ((array!15372 0))(
  ( (array!15373 (arr!7272 (Array (_ BitVec 32) (_ BitVec 64))) (size!7624 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15372)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2423 0))(
  ( (MissingZero!2423 (index!11868 (_ BitVec 32))) (Found!2423 (index!11869 (_ BitVec 32))) (Intermediate!2423 (undefined!3235 Bool) (index!11870 (_ BitVec 32)) (x!30099 (_ BitVec 32))) (Undefined!2423) (MissingVacant!2423 (index!11871 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15372 (_ BitVec 32)) SeekEntryResult!2423)

(assert (=> b!302672 (= res!160319 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2423 i!1240)))))

(declare-fun b!302673 () Bool)

(declare-fun res!160323 () Bool)

(assert (=> b!302673 (=> (not res!160323) (not e!190684))))

(declare-fun arrayContainsKey!0 (array!15372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302673 (= res!160323 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302674 () Bool)

(declare-fun res!160318 () Bool)

(assert (=> b!302674 (=> (not res!160318) (not e!190684))))

(assert (=> b!302674 (= res!160318 (and (= (size!7624 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7624 a!3293))))))

(declare-fun b!302675 () Bool)

(assert (=> b!302675 (= e!190684 false)))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!150101 () SeekEntryResult!2423)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15372 (_ BitVec 32)) SeekEntryResult!2423)

(assert (=> b!302675 (= lt!150101 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302676 () Bool)

(declare-fun res!160322 () Bool)

(assert (=> b!302676 (=> (not res!160322) (not e!190684))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302676 (= res!160322 (and (= (select (arr!7272 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7624 a!3293))))))

(declare-fun b!302677 () Bool)

(declare-fun res!160317 () Bool)

(assert (=> b!302677 (=> (not res!160317) (not e!190684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15372 (_ BitVec 32)) Bool)

(assert (=> b!302677 (= res!160317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!160316 () Bool)

(assert (=> start!30268 (=> (not res!160316) (not e!190684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30268 (= res!160316 (validMask!0 mask!3709))))

(assert (=> start!30268 e!190684))

(declare-fun array_inv!5226 (array!15372) Bool)

(assert (=> start!30268 (array_inv!5226 a!3293)))

(assert (=> start!30268 true))

(declare-fun b!302678 () Bool)

(declare-fun res!160321 () Bool)

(assert (=> b!302678 (=> (not res!160321) (not e!190684))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302678 (= res!160321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2423 false resIndex!52 resX!52)))))

(declare-fun b!302679 () Bool)

(declare-fun res!160320 () Bool)

(assert (=> b!302679 (=> (not res!160320) (not e!190684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302679 (= res!160320 (validKeyInArray!0 k!2441))))

(assert (= (and start!30268 res!160316) b!302674))

(assert (= (and b!302674 res!160318) b!302679))

(assert (= (and b!302679 res!160320) b!302673))

(assert (= (and b!302673 res!160323) b!302672))

(assert (= (and b!302672 res!160319) b!302677))

(assert (= (and b!302677 res!160317) b!302678))

(assert (= (and b!302678 res!160321) b!302676))

(assert (= (and b!302676 res!160322) b!302675))

(declare-fun m!314165 () Bool)

(assert (=> b!302673 m!314165))

(declare-fun m!314167 () Bool)

(assert (=> b!302675 m!314167))

(declare-fun m!314169 () Bool)

(assert (=> b!302677 m!314169))

(declare-fun m!314171 () Bool)

(assert (=> b!302676 m!314171))

(declare-fun m!314173 () Bool)

(assert (=> start!30268 m!314173))

(declare-fun m!314175 () Bool)

(assert (=> start!30268 m!314175))

(declare-fun m!314177 () Bool)

(assert (=> b!302672 m!314177))

(declare-fun m!314179 () Bool)

(assert (=> b!302679 m!314179))

(declare-fun m!314181 () Bool)

(assert (=> b!302678 m!314181))

(assert (=> b!302678 m!314181))

(declare-fun m!314183 () Bool)

(assert (=> b!302678 m!314183))

(push 1)

(assert (not b!302679))

(assert (not b!302672))

(assert (not start!30268))

(assert (not b!302675))

(assert (not b!302677))

(assert (not b!302673))

(assert (not b!302678))

(check-sat)

