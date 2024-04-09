; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30264 () Bool)

(assert start!30264)

(declare-fun b!302624 () Bool)

(declare-fun e!190672 () Bool)

(assert (=> b!302624 (= e!190672 false)))

(declare-datatypes ((array!15368 0))(
  ( (array!15369 (arr!7270 (Array (_ BitVec 32) (_ BitVec 64))) (size!7622 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15368)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2421 0))(
  ( (MissingZero!2421 (index!11860 (_ BitVec 32))) (Found!2421 (index!11861 (_ BitVec 32))) (Intermediate!2421 (undefined!3233 Bool) (index!11862 (_ BitVec 32)) (x!30097 (_ BitVec 32))) (Undefined!2421) (MissingVacant!2421 (index!11863 (_ BitVec 32))) )
))
(declare-fun lt!150095 () SeekEntryResult!2421)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15368 (_ BitVec 32)) SeekEntryResult!2421)

(assert (=> b!302624 (= lt!150095 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302625 () Bool)

(declare-fun res!160270 () Bool)

(assert (=> b!302625 (=> (not res!160270) (not e!190672))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15368 (_ BitVec 32)) SeekEntryResult!2421)

(assert (=> b!302625 (= res!160270 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2421 i!1240)))))

(declare-fun res!160269 () Bool)

(assert (=> start!30264 (=> (not res!160269) (not e!190672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30264 (= res!160269 (validMask!0 mask!3709))))

(assert (=> start!30264 e!190672))

(declare-fun array_inv!5224 (array!15368) Bool)

(assert (=> start!30264 (array_inv!5224 a!3293)))

(assert (=> start!30264 true))

(declare-fun b!302626 () Bool)

(declare-fun res!160274 () Bool)

(assert (=> b!302626 (=> (not res!160274) (not e!190672))))

(assert (=> b!302626 (= res!160274 (and (= (size!7622 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7622 a!3293))))))

(declare-fun b!302627 () Bool)

(declare-fun res!160273 () Bool)

(assert (=> b!302627 (=> (not res!160273) (not e!190672))))

(declare-fun arrayContainsKey!0 (array!15368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302627 (= res!160273 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302628 () Bool)

(declare-fun res!160272 () Bool)

(assert (=> b!302628 (=> (not res!160272) (not e!190672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15368 (_ BitVec 32)) Bool)

(assert (=> b!302628 (= res!160272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302629 () Bool)

(declare-fun res!160268 () Bool)

(assert (=> b!302629 (=> (not res!160268) (not e!190672))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302629 (= res!160268 (and (= (select (arr!7270 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7622 a!3293))))))

(declare-fun b!302630 () Bool)

(declare-fun res!160271 () Bool)

(assert (=> b!302630 (=> (not res!160271) (not e!190672))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302630 (= res!160271 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2421 false resIndex!52 resX!52)))))

(declare-fun b!302631 () Bool)

(declare-fun res!160275 () Bool)

(assert (=> b!302631 (=> (not res!160275) (not e!190672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302631 (= res!160275 (validKeyInArray!0 k!2441))))

(assert (= (and start!30264 res!160269) b!302626))

(assert (= (and b!302626 res!160274) b!302631))

(assert (= (and b!302631 res!160275) b!302627))

(assert (= (and b!302627 res!160273) b!302625))

(assert (= (and b!302625 res!160270) b!302628))

(assert (= (and b!302628 res!160272) b!302630))

(assert (= (and b!302630 res!160271) b!302629))

(assert (= (and b!302629 res!160268) b!302624))

(declare-fun m!314125 () Bool)

(assert (=> b!302628 m!314125))

(declare-fun m!314127 () Bool)

(assert (=> b!302629 m!314127))

(declare-fun m!314129 () Bool)

(assert (=> b!302630 m!314129))

(assert (=> b!302630 m!314129))

(declare-fun m!314131 () Bool)

(assert (=> b!302630 m!314131))

(declare-fun m!314133 () Bool)

(assert (=> b!302627 m!314133))

(declare-fun m!314135 () Bool)

(assert (=> b!302625 m!314135))

(declare-fun m!314137 () Bool)

(assert (=> b!302631 m!314137))

(declare-fun m!314139 () Bool)

(assert (=> start!30264 m!314139))

(declare-fun m!314141 () Bool)

(assert (=> start!30264 m!314141))

(declare-fun m!314143 () Bool)

(assert (=> b!302624 m!314143))

(push 1)

(assert (not start!30264))

(assert (not b!302631))

(assert (not b!302625))

(assert (not b!302630))

(assert (not b!302624))

(assert (not b!302628))

(assert (not b!302627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

