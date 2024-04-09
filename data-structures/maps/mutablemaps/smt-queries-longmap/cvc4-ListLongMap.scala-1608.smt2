; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30328 () Bool)

(assert start!30328)

(declare-fun b!303445 () Bool)

(declare-fun res!161092 () Bool)

(declare-fun e!190918 () Bool)

(assert (=> b!303445 (=> (not res!161092) (not e!190918))))

(declare-datatypes ((array!15432 0))(
  ( (array!15433 (arr!7302 (Array (_ BitVec 32) (_ BitVec 64))) (size!7654 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15432)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15432 (_ BitVec 32)) Bool)

(assert (=> b!303445 (= res!161092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303446 () Bool)

(declare-fun res!161097 () Bool)

(declare-fun e!190916 () Bool)

(assert (=> b!303446 (=> (not res!161097) (not e!190916))))

(declare-datatypes ((SeekEntryResult!2453 0))(
  ( (MissingZero!2453 (index!11988 (_ BitVec 32))) (Found!2453 (index!11989 (_ BitVec 32))) (Intermediate!2453 (undefined!3265 Bool) (index!11990 (_ BitVec 32)) (x!30209 (_ BitVec 32))) (Undefined!2453) (MissingVacant!2453 (index!11991 (_ BitVec 32))) )
))
(declare-fun lt!150191 () SeekEntryResult!2453)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15432 (_ BitVec 32)) SeekEntryResult!2453)

(assert (=> b!303446 (= res!161097 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150191))))

(declare-fun b!303447 () Bool)

(declare-fun res!161096 () Bool)

(assert (=> b!303447 (=> (not res!161096) (not e!190918))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303447 (= res!161096 (and (= (size!7654 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7654 a!3293))))))

(declare-fun b!303449 () Bool)

(declare-fun res!161089 () Bool)

(assert (=> b!303449 (=> (not res!161089) (not e!190918))))

(declare-fun arrayContainsKey!0 (array!15432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303449 (= res!161089 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303450 () Bool)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!303450 (= e!190916 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7302 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7302 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7302 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!303451 () Bool)

(assert (=> b!303451 (= e!190918 e!190916)))

(declare-fun res!161095 () Bool)

(assert (=> b!303451 (=> (not res!161095) (not e!190916))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303451 (= res!161095 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150191))))

(assert (=> b!303451 (= lt!150191 (Intermediate!2453 false resIndex!52 resX!52))))

(declare-fun b!303452 () Bool)

(declare-fun res!161093 () Bool)

(assert (=> b!303452 (=> (not res!161093) (not e!190918))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15432 (_ BitVec 32)) SeekEntryResult!2453)

(assert (=> b!303452 (= res!161093 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2453 i!1240)))))

(declare-fun b!303453 () Bool)

(declare-fun res!161090 () Bool)

(assert (=> b!303453 (=> (not res!161090) (not e!190916))))

(assert (=> b!303453 (= res!161090 (and (= (select (arr!7302 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7654 a!3293))))))

(declare-fun res!161091 () Bool)

(assert (=> start!30328 (=> (not res!161091) (not e!190918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30328 (= res!161091 (validMask!0 mask!3709))))

(assert (=> start!30328 e!190918))

(declare-fun array_inv!5256 (array!15432) Bool)

(assert (=> start!30328 (array_inv!5256 a!3293)))

(assert (=> start!30328 true))

(declare-fun b!303448 () Bool)

(declare-fun res!161094 () Bool)

(assert (=> b!303448 (=> (not res!161094) (not e!190918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303448 (= res!161094 (validKeyInArray!0 k!2441))))

(assert (= (and start!30328 res!161091) b!303447))

(assert (= (and b!303447 res!161096) b!303448))

(assert (= (and b!303448 res!161094) b!303449))

(assert (= (and b!303449 res!161089) b!303452))

(assert (= (and b!303452 res!161093) b!303445))

(assert (= (and b!303445 res!161092) b!303451))

(assert (= (and b!303451 res!161095) b!303453))

(assert (= (and b!303453 res!161090) b!303446))

(assert (= (and b!303446 res!161097) b!303450))

(declare-fun m!314799 () Bool)

(assert (=> b!303448 m!314799))

(declare-fun m!314801 () Bool)

(assert (=> b!303449 m!314801))

(declare-fun m!314803 () Bool)

(assert (=> b!303451 m!314803))

(assert (=> b!303451 m!314803))

(declare-fun m!314805 () Bool)

(assert (=> b!303451 m!314805))

(declare-fun m!314807 () Bool)

(assert (=> b!303450 m!314807))

(declare-fun m!314809 () Bool)

(assert (=> b!303445 m!314809))

(declare-fun m!314811 () Bool)

(assert (=> b!303446 m!314811))

(declare-fun m!314813 () Bool)

(assert (=> start!30328 m!314813))

(declare-fun m!314815 () Bool)

(assert (=> start!30328 m!314815))

(declare-fun m!314817 () Bool)

(assert (=> b!303453 m!314817))

(declare-fun m!314819 () Bool)

(assert (=> b!303452 m!314819))

(push 1)

(assert (not b!303449))

(assert (not b!303445))

(assert (not b!303452))

(assert (not start!30328))

(assert (not b!303446))

(assert (not b!303448))

