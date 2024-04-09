; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30460 () Bool)

(assert start!30460)

(declare-fun b!304768 () Bool)

(declare-fun res!162271 () Bool)

(declare-fun e!191461 () Bool)

(assert (=> b!304768 (=> (not res!162271) (not e!191461))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304768 (= res!162271 (validKeyInArray!0 k!2441))))

(declare-fun b!304769 () Bool)

(declare-fun res!162275 () Bool)

(assert (=> b!304769 (=> (not res!162275) (not e!191461))))

(declare-datatypes ((array!15513 0))(
  ( (array!15514 (arr!7341 (Array (_ BitVec 32) (_ BitVec 64))) (size!7693 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15513)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304769 (= res!162275 (and (= (size!7693 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7693 a!3293))))))

(declare-fun b!304770 () Bool)

(declare-fun res!162279 () Bool)

(declare-fun e!191464 () Bool)

(assert (=> b!304770 (=> (not res!162279) (not e!191464))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304770 (= res!162279 (and (= (select (arr!7341 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7693 a!3293))))))

(declare-fun b!304771 () Bool)

(assert (=> b!304771 (= e!191461 e!191464)))

(declare-fun res!162272 () Bool)

(assert (=> b!304771 (=> (not res!162272) (not e!191464))))

(declare-datatypes ((SeekEntryResult!2492 0))(
  ( (MissingZero!2492 (index!12144 (_ BitVec 32))) (Found!2492 (index!12145 (_ BitVec 32))) (Intermediate!2492 (undefined!3304 Bool) (index!12146 (_ BitVec 32)) (x!30361 (_ BitVec 32))) (Undefined!2492) (MissingVacant!2492 (index!12147 (_ BitVec 32))) )
))
(declare-fun lt!150530 () SeekEntryResult!2492)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15513 (_ BitVec 32)) SeekEntryResult!2492)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304771 (= res!162272 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150530))))

(assert (=> b!304771 (= lt!150530 (Intermediate!2492 false resIndex!52 resX!52))))

(declare-fun b!304772 () Bool)

(declare-fun res!162278 () Bool)

(assert (=> b!304772 (=> (not res!162278) (not e!191461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15513 (_ BitVec 32)) Bool)

(assert (=> b!304772 (= res!162278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304773 () Bool)

(declare-fun e!191463 () Bool)

(assert (=> b!304773 (= e!191464 e!191463)))

(declare-fun res!162277 () Bool)

(assert (=> b!304773 (=> (not res!162277) (not e!191463))))

(declare-fun lt!150529 () SeekEntryResult!2492)

(assert (=> b!304773 (= res!162277 (and (= lt!150529 lt!150530) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7341 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7341 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7341 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304773 (= lt!150529 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304774 () Bool)

(declare-fun res!162274 () Bool)

(assert (=> b!304774 (=> (not res!162274) (not e!191461))))

(declare-fun arrayContainsKey!0 (array!15513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304774 (= res!162274 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304776 () Bool)

(declare-fun res!162276 () Bool)

(assert (=> b!304776 (=> (not res!162276) (not e!191461))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15513 (_ BitVec 32)) SeekEntryResult!2492)

(assert (=> b!304776 (= res!162276 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2492 i!1240)))))

(declare-fun b!304775 () Bool)

(assert (=> b!304775 (= e!191463 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304775 (= lt!150529 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!162273 () Bool)

(assert (=> start!30460 (=> (not res!162273) (not e!191461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30460 (= res!162273 (validMask!0 mask!3709))))

(assert (=> start!30460 e!191461))

(declare-fun array_inv!5295 (array!15513) Bool)

(assert (=> start!30460 (array_inv!5295 a!3293)))

(assert (=> start!30460 true))

(assert (= (and start!30460 res!162273) b!304769))

(assert (= (and b!304769 res!162275) b!304768))

(assert (= (and b!304768 res!162271) b!304774))

(assert (= (and b!304774 res!162274) b!304776))

(assert (= (and b!304776 res!162276) b!304772))

(assert (= (and b!304772 res!162278) b!304771))

(assert (= (and b!304771 res!162272) b!304770))

(assert (= (and b!304770 res!162279) b!304773))

(assert (= (and b!304773 res!162277) b!304775))

(declare-fun m!315887 () Bool)

(assert (=> b!304776 m!315887))

(declare-fun m!315889 () Bool)

(assert (=> b!304773 m!315889))

(declare-fun m!315891 () Bool)

(assert (=> b!304773 m!315891))

(declare-fun m!315893 () Bool)

(assert (=> b!304775 m!315893))

(assert (=> b!304775 m!315893))

(declare-fun m!315895 () Bool)

(assert (=> b!304775 m!315895))

(declare-fun m!315897 () Bool)

(assert (=> b!304768 m!315897))

(declare-fun m!315899 () Bool)

(assert (=> b!304771 m!315899))

(assert (=> b!304771 m!315899))

(declare-fun m!315901 () Bool)

(assert (=> b!304771 m!315901))

(declare-fun m!315903 () Bool)

(assert (=> start!30460 m!315903))

(declare-fun m!315905 () Bool)

(assert (=> start!30460 m!315905))

(declare-fun m!315907 () Bool)

(assert (=> b!304774 m!315907))

(declare-fun m!315909 () Bool)

(assert (=> b!304770 m!315909))

(declare-fun m!315911 () Bool)

(assert (=> b!304772 m!315911))

(push 1)

(assert (not b!304773))

(assert (not b!304774))

(assert (not b!304776))

(assert (not b!304771))

(assert (not b!304775))

