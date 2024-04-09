; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30968 () Bool)

(assert start!30968)

(declare-fun b!310794 () Bool)

(declare-fun e!193989 () Bool)

(declare-fun e!193986 () Bool)

(assert (=> b!310794 (= e!193989 e!193986)))

(declare-fun res!167412 () Bool)

(assert (=> b!310794 (=> (not res!167412) (not e!193986))))

(declare-datatypes ((array!15868 0))(
  ( (array!15869 (arr!7514 (Array (_ BitVec 32) (_ BitVec 64))) (size!7866 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15868)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2665 0))(
  ( (MissingZero!2665 (index!12836 (_ BitVec 32))) (Found!2665 (index!12837 (_ BitVec 32))) (Intermediate!2665 (undefined!3477 Bool) (index!12838 (_ BitVec 32)) (x!31025 (_ BitVec 32))) (Undefined!2665) (MissingVacant!2665 (index!12839 (_ BitVec 32))) )
))
(declare-fun lt!152138 () SeekEntryResult!2665)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15868 (_ BitVec 32)) SeekEntryResult!2665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310794 (= res!167412 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152138))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310794 (= lt!152138 (Intermediate!2665 false resIndex!52 resX!52))))

(declare-fun res!167414 () Bool)

(assert (=> start!30968 (=> (not res!167414) (not e!193989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30968 (= res!167414 (validMask!0 mask!3709))))

(assert (=> start!30968 e!193989))

(declare-fun array_inv!5468 (array!15868) Bool)

(assert (=> start!30968 (array_inv!5468 a!3293)))

(assert (=> start!30968 true))

(declare-fun b!310795 () Bool)

(declare-fun res!167410 () Bool)

(assert (=> b!310795 (=> (not res!167410) (not e!193986))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310795 (= res!167410 (and (= (select (arr!7514 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7866 a!3293))))))

(declare-fun e!193990 () Bool)

(declare-fun b!310796 () Bool)

(declare-fun lt!152140 () (_ BitVec 32))

(declare-fun lt!152141 () array!15868)

(assert (=> b!310796 (= e!193990 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152141 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152140 k0!2441 lt!152141 mask!3709)))))

(assert (=> b!310796 (= lt!152141 (array!15869 (store (arr!7514 a!3293) i!1240 k0!2441) (size!7866 a!3293)))))

(declare-fun b!310797 () Bool)

(declare-fun e!193988 () Bool)

(assert (=> b!310797 (= e!193988 (not true))))

(assert (=> b!310797 e!193990))

(declare-fun res!167411 () Bool)

(assert (=> b!310797 (=> (not res!167411) (not e!193990))))

(declare-fun lt!152139 () SeekEntryResult!2665)

(assert (=> b!310797 (= res!167411 (= lt!152139 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152140 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310797 (= lt!152140 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310798 () Bool)

(assert (=> b!310798 (= e!193986 e!193988)))

(declare-fun res!167407 () Bool)

(assert (=> b!310798 (=> (not res!167407) (not e!193988))))

(assert (=> b!310798 (= res!167407 (and (= lt!152139 lt!152138) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7514 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310798 (= lt!152139 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310799 () Bool)

(declare-fun res!167409 () Bool)

(assert (=> b!310799 (=> (not res!167409) (not e!193989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310799 (= res!167409 (validKeyInArray!0 k0!2441))))

(declare-fun b!310800 () Bool)

(declare-fun res!167415 () Bool)

(assert (=> b!310800 (=> (not res!167415) (not e!193989))))

(assert (=> b!310800 (= res!167415 (and (= (size!7866 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7866 a!3293))))))

(declare-fun b!310801 () Bool)

(declare-fun res!167408 () Bool)

(assert (=> b!310801 (=> (not res!167408) (not e!193989))))

(declare-fun arrayContainsKey!0 (array!15868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310801 (= res!167408 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310802 () Bool)

(declare-fun res!167406 () Bool)

(assert (=> b!310802 (=> (not res!167406) (not e!193989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15868 (_ BitVec 32)) Bool)

(assert (=> b!310802 (= res!167406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310803 () Bool)

(declare-fun res!167413 () Bool)

(assert (=> b!310803 (=> (not res!167413) (not e!193989))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15868 (_ BitVec 32)) SeekEntryResult!2665)

(assert (=> b!310803 (= res!167413 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2665 i!1240)))))

(assert (= (and start!30968 res!167414) b!310800))

(assert (= (and b!310800 res!167415) b!310799))

(assert (= (and b!310799 res!167409) b!310801))

(assert (= (and b!310801 res!167408) b!310803))

(assert (= (and b!310803 res!167413) b!310802))

(assert (= (and b!310802 res!167406) b!310794))

(assert (= (and b!310794 res!167412) b!310795))

(assert (= (and b!310795 res!167410) b!310798))

(assert (= (and b!310798 res!167407) b!310797))

(assert (= (and b!310797 res!167411) b!310796))

(declare-fun m!320781 () Bool)

(assert (=> b!310802 m!320781))

(declare-fun m!320783 () Bool)

(assert (=> b!310797 m!320783))

(declare-fun m!320785 () Bool)

(assert (=> b!310797 m!320785))

(declare-fun m!320787 () Bool)

(assert (=> b!310795 m!320787))

(declare-fun m!320789 () Bool)

(assert (=> b!310798 m!320789))

(declare-fun m!320791 () Bool)

(assert (=> b!310798 m!320791))

(declare-fun m!320793 () Bool)

(assert (=> b!310796 m!320793))

(declare-fun m!320795 () Bool)

(assert (=> b!310796 m!320795))

(declare-fun m!320797 () Bool)

(assert (=> b!310796 m!320797))

(declare-fun m!320799 () Bool)

(assert (=> b!310801 m!320799))

(declare-fun m!320801 () Bool)

(assert (=> b!310799 m!320801))

(declare-fun m!320803 () Bool)

(assert (=> start!30968 m!320803))

(declare-fun m!320805 () Bool)

(assert (=> start!30968 m!320805))

(declare-fun m!320807 () Bool)

(assert (=> b!310794 m!320807))

(assert (=> b!310794 m!320807))

(declare-fun m!320809 () Bool)

(assert (=> b!310794 m!320809))

(declare-fun m!320811 () Bool)

(assert (=> b!310803 m!320811))

(check-sat (not start!30968) (not b!310803) (not b!310802) (not b!310797) (not b!310798) (not b!310799) (not b!310801) (not b!310796) (not b!310794))
(check-sat)
