; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30962 () Bool)

(assert start!30962)

(declare-fun b!310704 () Bool)

(declare-fun res!167318 () Bool)

(declare-fun e!193941 () Bool)

(assert (=> b!310704 (=> (not res!167318) (not e!193941))))

(declare-datatypes ((array!15862 0))(
  ( (array!15863 (arr!7511 (Array (_ BitVec 32) (_ BitVec 64))) (size!7863 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15862)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310704 (= res!167318 (and (= (size!7863 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7863 a!3293))))))

(declare-fun b!310705 () Bool)

(declare-fun res!167323 () Bool)

(declare-fun e!193942 () Bool)

(assert (=> b!310705 (=> (not res!167323) (not e!193942))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310705 (= res!167323 (and (= (select (arr!7511 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7863 a!3293))))))

(declare-fun b!310706 () Bool)

(declare-fun e!193944 () Bool)

(assert (=> b!310706 (= e!193944 (not true))))

(declare-fun e!193943 () Bool)

(assert (=> b!310706 e!193943))

(declare-fun res!167321 () Bool)

(assert (=> b!310706 (=> (not res!167321) (not e!193943))))

(declare-datatypes ((SeekEntryResult!2662 0))(
  ( (MissingZero!2662 (index!12824 (_ BitVec 32))) (Found!2662 (index!12825 (_ BitVec 32))) (Intermediate!2662 (undefined!3474 Bool) (index!12826 (_ BitVec 32)) (x!31014 (_ BitVec 32))) (Undefined!2662) (MissingVacant!2662 (index!12827 (_ BitVec 32))) )
))
(declare-fun lt!152102 () SeekEntryResult!2662)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun lt!152105 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15862 (_ BitVec 32)) SeekEntryResult!2662)

(assert (=> b!310706 (= res!167321 (= lt!152102 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152105 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310706 (= lt!152105 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310707 () Bool)

(declare-fun res!167322 () Bool)

(assert (=> b!310707 (=> (not res!167322) (not e!193941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15862 (_ BitVec 32)) Bool)

(assert (=> b!310707 (= res!167322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310708 () Bool)

(declare-fun res!167316 () Bool)

(assert (=> b!310708 (=> (not res!167316) (not e!193941))))

(declare-fun arrayContainsKey!0 (array!15862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310708 (= res!167316 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310709 () Bool)

(assert (=> b!310709 (= e!193941 e!193942)))

(declare-fun res!167317 () Bool)

(assert (=> b!310709 (=> (not res!167317) (not e!193942))))

(declare-fun lt!152103 () SeekEntryResult!2662)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310709 (= res!167317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152103))))

(assert (=> b!310709 (= lt!152103 (Intermediate!2662 false resIndex!52 resX!52))))

(declare-fun lt!152104 () array!15862)

(declare-fun b!310710 () Bool)

(assert (=> b!310710 (= e!193943 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152104 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152105 k0!2441 lt!152104 mask!3709)))))

(assert (=> b!310710 (= lt!152104 (array!15863 (store (arr!7511 a!3293) i!1240 k0!2441) (size!7863 a!3293)))))

(declare-fun b!310711 () Bool)

(declare-fun res!167320 () Bool)

(assert (=> b!310711 (=> (not res!167320) (not e!193941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310711 (= res!167320 (validKeyInArray!0 k0!2441))))

(declare-fun res!167319 () Bool)

(assert (=> start!30962 (=> (not res!167319) (not e!193941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30962 (= res!167319 (validMask!0 mask!3709))))

(assert (=> start!30962 e!193941))

(declare-fun array_inv!5465 (array!15862) Bool)

(assert (=> start!30962 (array_inv!5465 a!3293)))

(assert (=> start!30962 true))

(declare-fun b!310712 () Bool)

(assert (=> b!310712 (= e!193942 e!193944)))

(declare-fun res!167324 () Bool)

(assert (=> b!310712 (=> (not res!167324) (not e!193944))))

(assert (=> b!310712 (= res!167324 (and (= lt!152102 lt!152103) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7511 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310712 (= lt!152102 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310713 () Bool)

(declare-fun res!167325 () Bool)

(assert (=> b!310713 (=> (not res!167325) (not e!193941))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15862 (_ BitVec 32)) SeekEntryResult!2662)

(assert (=> b!310713 (= res!167325 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2662 i!1240)))))

(assert (= (and start!30962 res!167319) b!310704))

(assert (= (and b!310704 res!167318) b!310711))

(assert (= (and b!310711 res!167320) b!310708))

(assert (= (and b!310708 res!167316) b!310713))

(assert (= (and b!310713 res!167325) b!310707))

(assert (= (and b!310707 res!167322) b!310709))

(assert (= (and b!310709 res!167317) b!310705))

(assert (= (and b!310705 res!167323) b!310712))

(assert (= (and b!310712 res!167324) b!310706))

(assert (= (and b!310706 res!167321) b!310710))

(declare-fun m!320685 () Bool)

(assert (=> b!310708 m!320685))

(declare-fun m!320687 () Bool)

(assert (=> b!310711 m!320687))

(declare-fun m!320689 () Bool)

(assert (=> b!310713 m!320689))

(declare-fun m!320691 () Bool)

(assert (=> b!310705 m!320691))

(declare-fun m!320693 () Bool)

(assert (=> b!310710 m!320693))

(declare-fun m!320695 () Bool)

(assert (=> b!310710 m!320695))

(declare-fun m!320697 () Bool)

(assert (=> b!310710 m!320697))

(declare-fun m!320699 () Bool)

(assert (=> b!310712 m!320699))

(declare-fun m!320701 () Bool)

(assert (=> b!310712 m!320701))

(declare-fun m!320703 () Bool)

(assert (=> start!30962 m!320703))

(declare-fun m!320705 () Bool)

(assert (=> start!30962 m!320705))

(declare-fun m!320707 () Bool)

(assert (=> b!310709 m!320707))

(assert (=> b!310709 m!320707))

(declare-fun m!320709 () Bool)

(assert (=> b!310709 m!320709))

(declare-fun m!320711 () Bool)

(assert (=> b!310706 m!320711))

(declare-fun m!320713 () Bool)

(assert (=> b!310706 m!320713))

(declare-fun m!320715 () Bool)

(assert (=> b!310707 m!320715))

(check-sat (not b!310707) (not b!310708) (not b!310712) (not b!310709) (not b!310706) (not b!310711) (not b!310710) (not start!30962) (not b!310713))
(check-sat)
