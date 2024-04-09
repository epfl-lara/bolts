; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30952 () Bool)

(assert start!30952)

(declare-fun b!310554 () Bool)

(declare-fun e!193866 () Bool)

(declare-fun e!193868 () Bool)

(assert (=> b!310554 (= e!193866 e!193868)))

(declare-fun res!167166 () Bool)

(assert (=> b!310554 (=> (not res!167166) (not e!193868))))

(declare-datatypes ((array!15852 0))(
  ( (array!15853 (arr!7506 (Array (_ BitVec 32) (_ BitVec 64))) (size!7858 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15852)

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2657 0))(
  ( (MissingZero!2657 (index!12804 (_ BitVec 32))) (Found!2657 (index!12805 (_ BitVec 32))) (Intermediate!2657 (undefined!3469 Bool) (index!12806 (_ BitVec 32)) (x!30993 (_ BitVec 32))) (Undefined!2657) (MissingVacant!2657 (index!12807 (_ BitVec 32))) )
))
(declare-fun lt!152044 () SeekEntryResult!2657)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15852 (_ BitVec 32)) SeekEntryResult!2657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310554 (= res!167166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152044))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310554 (= lt!152044 (Intermediate!2657 false resIndex!52 resX!52))))

(declare-fun b!310556 () Bool)

(declare-fun res!167173 () Bool)

(assert (=> b!310556 (=> (not res!167173) (not e!193868))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310556 (= res!167173 (and (= (select (arr!7506 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7858 a!3293))))))

(declare-fun b!310557 () Bool)

(declare-fun res!167169 () Bool)

(assert (=> b!310557 (=> (not res!167169) (not e!193866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15852 (_ BitVec 32)) Bool)

(assert (=> b!310557 (= res!167169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310558 () Bool)

(declare-fun res!167168 () Bool)

(assert (=> b!310558 (=> (not res!167168) (not e!193866))))

(assert (=> b!310558 (= res!167168 (and (= (size!7858 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7858 a!3293))))))

(declare-fun b!310559 () Bool)

(declare-fun res!167167 () Bool)

(assert (=> b!310559 (=> (not res!167167) (not e!193866))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15852 (_ BitVec 32)) SeekEntryResult!2657)

(assert (=> b!310559 (= res!167167 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2657 i!1240)))))

(declare-fun b!310560 () Bool)

(declare-fun res!167171 () Bool)

(assert (=> b!310560 (=> (not res!167171) (not e!193866))))

(declare-fun arrayContainsKey!0 (array!15852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310560 (= res!167171 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun e!193869 () Bool)

(declare-fun b!310561 () Bool)

(declare-fun lt!152043 () (_ BitVec 32))

(declare-fun lt!152045 () array!15852)

(assert (=> b!310561 (= e!193869 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152045 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152043 k!2441 lt!152045 mask!3709)))))

(assert (=> b!310561 (= lt!152045 (array!15853 (store (arr!7506 a!3293) i!1240 k!2441) (size!7858 a!3293)))))

(declare-fun b!310562 () Bool)

(declare-fun e!193870 () Bool)

(assert (=> b!310562 (= e!193868 e!193870)))

(declare-fun res!167170 () Bool)

(assert (=> b!310562 (=> (not res!167170) (not e!193870))))

(declare-fun lt!152042 () SeekEntryResult!2657)

(assert (=> b!310562 (= res!167170 (and (= lt!152042 lt!152044) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7506 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310562 (= lt!152042 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310563 () Bool)

(declare-fun res!167174 () Bool)

(assert (=> b!310563 (=> (not res!167174) (not e!193866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310563 (= res!167174 (validKeyInArray!0 k!2441))))

(declare-fun b!310555 () Bool)

(assert (=> b!310555 (= e!193870 (not true))))

(assert (=> b!310555 e!193869))

(declare-fun res!167172 () Bool)

(assert (=> b!310555 (=> (not res!167172) (not e!193869))))

(assert (=> b!310555 (= res!167172 (= lt!152042 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152043 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310555 (= lt!152043 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!167175 () Bool)

(assert (=> start!30952 (=> (not res!167175) (not e!193866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30952 (= res!167175 (validMask!0 mask!3709))))

(assert (=> start!30952 e!193866))

(declare-fun array_inv!5460 (array!15852) Bool)

(assert (=> start!30952 (array_inv!5460 a!3293)))

(assert (=> start!30952 true))

(assert (= (and start!30952 res!167175) b!310558))

(assert (= (and b!310558 res!167168) b!310563))

(assert (= (and b!310563 res!167174) b!310560))

(assert (= (and b!310560 res!167171) b!310559))

(assert (= (and b!310559 res!167167) b!310557))

(assert (= (and b!310557 res!167169) b!310554))

(assert (= (and b!310554 res!167166) b!310556))

(assert (= (and b!310556 res!167173) b!310562))

(assert (= (and b!310562 res!167170) b!310555))

(assert (= (and b!310555 res!167172) b!310561))

(declare-fun m!320525 () Bool)

(assert (=> b!310561 m!320525))

(declare-fun m!320527 () Bool)

(assert (=> b!310561 m!320527))

(declare-fun m!320529 () Bool)

(assert (=> b!310561 m!320529))

(declare-fun m!320531 () Bool)

(assert (=> b!310556 m!320531))

(declare-fun m!320533 () Bool)

(assert (=> b!310554 m!320533))

(assert (=> b!310554 m!320533))

(declare-fun m!320535 () Bool)

(assert (=> b!310554 m!320535))

(declare-fun m!320537 () Bool)

(assert (=> b!310555 m!320537))

(declare-fun m!320539 () Bool)

(assert (=> b!310555 m!320539))

(declare-fun m!320541 () Bool)

(assert (=> b!310563 m!320541))

(declare-fun m!320543 () Bool)

(assert (=> b!310560 m!320543))

(declare-fun m!320545 () Bool)

(assert (=> b!310559 m!320545))

(declare-fun m!320547 () Bool)

(assert (=> b!310557 m!320547))

(declare-fun m!320549 () Bool)

(assert (=> start!30952 m!320549))

(declare-fun m!320551 () Bool)

(assert (=> start!30952 m!320551))

(declare-fun m!320553 () Bool)

(assert (=> b!310562 m!320553))

(declare-fun m!320555 () Bool)

(assert (=> b!310562 m!320555))

(push 1)

(assert (not b!310561))

(assert (not b!310554))

(assert (not b!310555))

(assert (not b!310559))

