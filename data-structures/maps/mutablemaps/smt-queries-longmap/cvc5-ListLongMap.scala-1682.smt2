; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30984 () Bool)

(assert start!30984)

(declare-fun b!311034 () Bool)

(declare-fun res!167647 () Bool)

(declare-fun e!194107 () Bool)

(assert (=> b!311034 (=> (not res!167647) (not e!194107))))

(declare-datatypes ((array!15884 0))(
  ( (array!15885 (arr!7522 (Array (_ BitVec 32) (_ BitVec 64))) (size!7874 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15884)

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!311034 (= res!167647 (and (= (size!7874 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7874 a!3293))))))

(declare-fun res!167655 () Bool)

(assert (=> start!30984 (=> (not res!167655) (not e!194107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30984 (= res!167655 (validMask!0 mask!3709))))

(assert (=> start!30984 e!194107))

(declare-fun array_inv!5476 (array!15884) Bool)

(assert (=> start!30984 (array_inv!5476 a!3293)))

(assert (=> start!30984 true))

(declare-fun b!311035 () Bool)

(declare-fun res!167650 () Bool)

(declare-fun e!194110 () Bool)

(assert (=> b!311035 (=> (not res!167650) (not e!194110))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311035 (= res!167650 (and (= (select (arr!7522 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7874 a!3293))))))

(declare-fun b!311036 () Bool)

(assert (=> b!311036 (= e!194107 e!194110)))

(declare-fun res!167652 () Bool)

(assert (=> b!311036 (=> (not res!167652) (not e!194110))))

(declare-datatypes ((SeekEntryResult!2673 0))(
  ( (MissingZero!2673 (index!12868 (_ BitVec 32))) (Found!2673 (index!12869 (_ BitVec 32))) (Intermediate!2673 (undefined!3485 Bool) (index!12870 (_ BitVec 32)) (x!31057 (_ BitVec 32))) (Undefined!2673) (MissingVacant!2673 (index!12871 (_ BitVec 32))) )
))
(declare-fun lt!152235 () SeekEntryResult!2673)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15884 (_ BitVec 32)) SeekEntryResult!2673)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311036 (= res!167652 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152235))))

(assert (=> b!311036 (= lt!152235 (Intermediate!2673 false resIndex!52 resX!52))))

(declare-fun b!311037 () Bool)

(declare-fun res!167653 () Bool)

(assert (=> b!311037 (=> (not res!167653) (not e!194107))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15884 (_ BitVec 32)) SeekEntryResult!2673)

(assert (=> b!311037 (= res!167653 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2673 i!1240)))))

(declare-fun b!311038 () Bool)

(declare-fun lt!152234 () (_ BitVec 32))

(declare-fun e!194109 () Bool)

(declare-fun lt!152236 () array!15884)

(assert (=> b!311038 (= e!194109 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152236 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152234 k!2441 lt!152236 mask!3709)))))

(assert (=> b!311038 (= lt!152236 (array!15885 (store (arr!7522 a!3293) i!1240 k!2441) (size!7874 a!3293)))))

(declare-fun b!311039 () Bool)

(declare-fun res!167646 () Bool)

(assert (=> b!311039 (=> (not res!167646) (not e!194107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15884 (_ BitVec 32)) Bool)

(assert (=> b!311039 (= res!167646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311040 () Bool)

(declare-fun e!194106 () Bool)

(assert (=> b!311040 (= e!194110 e!194106)))

(declare-fun res!167651 () Bool)

(assert (=> b!311040 (=> (not res!167651) (not e!194106))))

(declare-fun lt!152237 () SeekEntryResult!2673)

(assert (=> b!311040 (= res!167651 (and (= lt!152237 lt!152235) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7522 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311040 (= lt!152237 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311041 () Bool)

(declare-fun res!167648 () Bool)

(assert (=> b!311041 (=> (not res!167648) (not e!194107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311041 (= res!167648 (validKeyInArray!0 k!2441))))

(declare-fun b!311042 () Bool)

(declare-fun res!167654 () Bool)

(assert (=> b!311042 (=> (not res!167654) (not e!194107))))

(declare-fun arrayContainsKey!0 (array!15884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311042 (= res!167654 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311043 () Bool)

(assert (=> b!311043 (= e!194106 (not true))))

(assert (=> b!311043 e!194109))

(declare-fun res!167649 () Bool)

(assert (=> b!311043 (=> (not res!167649) (not e!194109))))

(assert (=> b!311043 (= res!167649 (= lt!152237 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152234 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311043 (= lt!152234 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30984 res!167655) b!311034))

(assert (= (and b!311034 res!167647) b!311041))

(assert (= (and b!311041 res!167648) b!311042))

(assert (= (and b!311042 res!167654) b!311037))

(assert (= (and b!311037 res!167653) b!311039))

(assert (= (and b!311039 res!167646) b!311036))

(assert (= (and b!311036 res!167652) b!311035))

(assert (= (and b!311035 res!167650) b!311040))

(assert (= (and b!311040 res!167651) b!311043))

(assert (= (and b!311043 res!167649) b!311038))

(declare-fun m!321037 () Bool)

(assert (=> b!311040 m!321037))

(declare-fun m!321039 () Bool)

(assert (=> b!311040 m!321039))

(declare-fun m!321041 () Bool)

(assert (=> b!311041 m!321041))

(declare-fun m!321043 () Bool)

(assert (=> b!311043 m!321043))

(declare-fun m!321045 () Bool)

(assert (=> b!311043 m!321045))

(declare-fun m!321047 () Bool)

(assert (=> start!30984 m!321047))

(declare-fun m!321049 () Bool)

(assert (=> start!30984 m!321049))

(declare-fun m!321051 () Bool)

(assert (=> b!311042 m!321051))

(declare-fun m!321053 () Bool)

(assert (=> b!311037 m!321053))

(declare-fun m!321055 () Bool)

(assert (=> b!311036 m!321055))

(assert (=> b!311036 m!321055))

(declare-fun m!321057 () Bool)

(assert (=> b!311036 m!321057))

(declare-fun m!321059 () Bool)

(assert (=> b!311038 m!321059))

(declare-fun m!321061 () Bool)

(assert (=> b!311038 m!321061))

(declare-fun m!321063 () Bool)

(assert (=> b!311038 m!321063))

(declare-fun m!321065 () Bool)

(assert (=> b!311035 m!321065))

(declare-fun m!321067 () Bool)

(assert (=> b!311039 m!321067))

(push 1)

