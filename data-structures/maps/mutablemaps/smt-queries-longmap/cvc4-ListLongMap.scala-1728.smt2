; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31828 () Bool)

(assert start!31828)

(declare-datatypes ((array!16197 0))(
  ( (array!16198 (arr!7662 (Array (_ BitVec 32) (_ BitVec 64))) (size!8014 (_ BitVec 32))) )
))
(declare-fun lt!155135 () array!16197)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!197537 () Bool)

(declare-fun lt!155136 () (_ BitVec 32))

(declare-fun b!317799 () Bool)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2813 0))(
  ( (MissingZero!2813 (index!13428 (_ BitVec 32))) (Found!2813 (index!13429 (_ BitVec 32))) (Intermediate!2813 (undefined!3625 Bool) (index!13430 (_ BitVec 32)) (x!31649 (_ BitVec 32))) (Undefined!2813) (MissingVacant!2813 (index!13431 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16197 (_ BitVec 32)) SeekEntryResult!2813)

(assert (=> b!317799 (= e!197537 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155135 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155136 k!2441 lt!155135 mask!3709)))))

(declare-fun a!3293 () array!16197)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317799 (= lt!155135 (array!16198 (store (arr!7662 a!3293) i!1240 k!2441) (size!8014 a!3293)))))

(declare-fun b!317800 () Bool)

(declare-fun res!172542 () Bool)

(declare-fun e!197539 () Bool)

(assert (=> b!317800 (=> (not res!172542) (not e!197539))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317800 (= res!172542 (and (= (select (arr!7662 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8014 a!3293))))))

(declare-fun b!317801 () Bool)

(declare-fun e!197536 () Bool)

(assert (=> b!317801 (= e!197536 e!197539)))

(declare-fun res!172540 () Bool)

(assert (=> b!317801 (=> (not res!172540) (not e!197539))))

(declare-fun lt!155137 () SeekEntryResult!2813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317801 (= res!172540 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155137))))

(assert (=> b!317801 (= lt!155137 (Intermediate!2813 false resIndex!52 resX!52))))

(declare-fun res!172537 () Bool)

(assert (=> start!31828 (=> (not res!172537) (not e!197536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31828 (= res!172537 (validMask!0 mask!3709))))

(assert (=> start!31828 e!197536))

(declare-fun array_inv!5616 (array!16197) Bool)

(assert (=> start!31828 (array_inv!5616 a!3293)))

(assert (=> start!31828 true))

(declare-fun b!317802 () Bool)

(declare-fun res!172545 () Bool)

(assert (=> b!317802 (=> (not res!172545) (not e!197536))))

(assert (=> b!317802 (= res!172545 (and (= (size!8014 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8014 a!3293))))))

(declare-fun b!317803 () Bool)

(declare-fun e!197538 () Bool)

(assert (=> b!317803 (= e!197539 e!197538)))

(declare-fun res!172543 () Bool)

(assert (=> b!317803 (=> (not res!172543) (not e!197538))))

(declare-fun lt!155138 () SeekEntryResult!2813)

(assert (=> b!317803 (= res!172543 (and (= lt!155138 lt!155137) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7662 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317803 (= lt!155138 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317804 () Bool)

(declare-fun res!172544 () Bool)

(assert (=> b!317804 (=> (not res!172544) (not e!197536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317804 (= res!172544 (validKeyInArray!0 k!2441))))

(declare-fun b!317805 () Bool)

(assert (=> b!317805 (= e!197538 (not true))))

(assert (=> b!317805 e!197537))

(declare-fun res!172538 () Bool)

(assert (=> b!317805 (=> (not res!172538) (not e!197537))))

(assert (=> b!317805 (= res!172538 (= lt!155138 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155136 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317805 (= lt!155136 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317806 () Bool)

(declare-fun res!172536 () Bool)

(assert (=> b!317806 (=> (not res!172536) (not e!197536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16197 (_ BitVec 32)) Bool)

(assert (=> b!317806 (= res!172536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317807 () Bool)

(declare-fun res!172541 () Bool)

(assert (=> b!317807 (=> (not res!172541) (not e!197536))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16197 (_ BitVec 32)) SeekEntryResult!2813)

(assert (=> b!317807 (= res!172541 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2813 i!1240)))))

(declare-fun b!317808 () Bool)

(declare-fun res!172539 () Bool)

(assert (=> b!317808 (=> (not res!172539) (not e!197536))))

(declare-fun arrayContainsKey!0 (array!16197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317808 (= res!172539 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31828 res!172537) b!317802))

(assert (= (and b!317802 res!172545) b!317804))

(assert (= (and b!317804 res!172544) b!317808))

(assert (= (and b!317808 res!172539) b!317807))

(assert (= (and b!317807 res!172541) b!317806))

(assert (= (and b!317806 res!172536) b!317801))

(assert (= (and b!317801 res!172540) b!317800))

(assert (= (and b!317800 res!172542) b!317803))

(assert (= (and b!317803 res!172543) b!317805))

(assert (= (and b!317805 res!172538) b!317799))

(declare-fun m!326513 () Bool)

(assert (=> b!317807 m!326513))

(declare-fun m!326515 () Bool)

(assert (=> b!317804 m!326515))

(declare-fun m!326517 () Bool)

(assert (=> b!317806 m!326517))

(declare-fun m!326519 () Bool)

(assert (=> b!317801 m!326519))

(assert (=> b!317801 m!326519))

(declare-fun m!326521 () Bool)

(assert (=> b!317801 m!326521))

(declare-fun m!326523 () Bool)

(assert (=> start!31828 m!326523))

(declare-fun m!326525 () Bool)

(assert (=> start!31828 m!326525))

(declare-fun m!326527 () Bool)

(assert (=> b!317799 m!326527))

(declare-fun m!326529 () Bool)

(assert (=> b!317799 m!326529))

(declare-fun m!326531 () Bool)

(assert (=> b!317799 m!326531))

(declare-fun m!326533 () Bool)

(assert (=> b!317800 m!326533))

(declare-fun m!326535 () Bool)

(assert (=> b!317803 m!326535))

(declare-fun m!326537 () Bool)

(assert (=> b!317803 m!326537))

(declare-fun m!326539 () Bool)

(assert (=> b!317808 m!326539))

(declare-fun m!326541 () Bool)

(assert (=> b!317805 m!326541))

(declare-fun m!326543 () Bool)

(assert (=> b!317805 m!326543))

(push 1)

(assert (not start!31828))

(assert (not b!317808))

(assert (not b!317804))

