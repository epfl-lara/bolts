; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31074 () Bool)

(assert start!31074)

(declare-fun res!168997 () Bool)

(declare-fun e!194784 () Bool)

(assert (=> start!31074 (=> (not res!168997) (not e!194784))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31074 (= res!168997 (validMask!0 mask!3709))))

(assert (=> start!31074 e!194784))

(declare-datatypes ((array!15974 0))(
  ( (array!15975 (arr!7567 (Array (_ BitVec 32) (_ BitVec 64))) (size!7919 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15974)

(declare-fun array_inv!5521 (array!15974) Bool)

(assert (=> start!31074 (array_inv!5521 a!3293)))

(assert (=> start!31074 true))

(declare-fun b!312384 () Bool)

(declare-fun res!169002 () Bool)

(declare-fun e!194783 () Bool)

(assert (=> b!312384 (=> (not res!169002) (not e!194783))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312384 (= res!169002 (and (= (select (arr!7567 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7919 a!3293))))))

(declare-fun b!312385 () Bool)

(declare-fun res!169003 () Bool)

(assert (=> b!312385 (=> (not res!169003) (not e!194784))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2718 0))(
  ( (MissingZero!2718 (index!13048 (_ BitVec 32))) (Found!2718 (index!13049 (_ BitVec 32))) (Intermediate!2718 (undefined!3530 Bool) (index!13050 (_ BitVec 32)) (x!31222 (_ BitVec 32))) (Undefined!2718) (MissingVacant!2718 (index!13051 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15974 (_ BitVec 32)) SeekEntryResult!2718)

(assert (=> b!312385 (= res!169003 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2718 i!1240)))))

(declare-fun b!312386 () Bool)

(declare-fun res!169004 () Bool)

(assert (=> b!312386 (=> (not res!169004) (not e!194784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15974 (_ BitVec 32)) Bool)

(assert (=> b!312386 (= res!169004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312387 () Bool)

(declare-fun e!194781 () Bool)

(declare-fun e!194782 () Bool)

(assert (=> b!312387 (= e!194781 (not e!194782))))

(declare-fun res!168996 () Bool)

(assert (=> b!312387 (=> res!168996 e!194782)))

(declare-fun lt!153110 () SeekEntryResult!2718)

(declare-fun lt!153106 () (_ BitVec 32))

(declare-fun lt!153107 () SeekEntryResult!2718)

(assert (=> b!312387 (= res!168996 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153106 #b00000000000000000000000000000000) (bvsge lt!153106 (size!7919 a!3293)) (not (= lt!153107 lt!153110))))))

(declare-fun lt!153112 () SeekEntryResult!2718)

(declare-fun lt!153108 () SeekEntryResult!2718)

(assert (=> b!312387 (= lt!153112 lt!153108)))

(declare-fun lt!153109 () array!15974)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15974 (_ BitVec 32)) SeekEntryResult!2718)

(assert (=> b!312387 (= lt!153108 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153106 k!2441 lt!153109 mask!3709))))

(assert (=> b!312387 (= lt!153112 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!153109 mask!3709))))

(assert (=> b!312387 (= lt!153109 (array!15975 (store (arr!7567 a!3293) i!1240 k!2441) (size!7919 a!3293)))))

(declare-fun lt!153111 () SeekEntryResult!2718)

(assert (=> b!312387 (= lt!153111 lt!153107)))

(assert (=> b!312387 (= lt!153107 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153106 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312387 (= lt!153106 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312388 () Bool)

(declare-fun res!168999 () Bool)

(assert (=> b!312388 (=> (not res!168999) (not e!194784))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312388 (= res!168999 (validKeyInArray!0 k!2441))))

(declare-fun b!312389 () Bool)

(assert (=> b!312389 (= e!194782 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(assert (=> b!312389 (= lt!153108 lt!153107)))

(declare-datatypes ((Unit!9634 0))(
  ( (Unit!9635) )
))
(declare-fun lt!153113 () Unit!9634)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15974 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9634)

(assert (=> b!312389 (= lt!153113 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153106 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312390 () Bool)

(assert (=> b!312390 (= e!194784 e!194783)))

(declare-fun res!169001 () Bool)

(assert (=> b!312390 (=> (not res!169001) (not e!194783))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312390 (= res!169001 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153110))))

(assert (=> b!312390 (= lt!153110 (Intermediate!2718 false resIndex!52 resX!52))))

(declare-fun b!312391 () Bool)

(declare-fun res!169005 () Bool)

(assert (=> b!312391 (=> (not res!169005) (not e!194784))))

(assert (=> b!312391 (= res!169005 (and (= (size!7919 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7919 a!3293))))))

(declare-fun b!312392 () Bool)

(assert (=> b!312392 (= e!194783 e!194781)))

(declare-fun res!169000 () Bool)

(assert (=> b!312392 (=> (not res!169000) (not e!194781))))

(assert (=> b!312392 (= res!169000 (and (= lt!153111 lt!153110) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7567 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312392 (= lt!153111 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312393 () Bool)

(declare-fun res!168998 () Bool)

(assert (=> b!312393 (=> (not res!168998) (not e!194784))))

(declare-fun arrayContainsKey!0 (array!15974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312393 (= res!168998 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31074 res!168997) b!312391))

(assert (= (and b!312391 res!169005) b!312388))

(assert (= (and b!312388 res!168999) b!312393))

(assert (= (and b!312393 res!168998) b!312385))

(assert (= (and b!312385 res!169003) b!312386))

(assert (= (and b!312386 res!169004) b!312390))

(assert (= (and b!312390 res!169001) b!312384))

(assert (= (and b!312384 res!169002) b!312392))

(assert (= (and b!312392 res!169000) b!312387))

(assert (= (and b!312387 (not res!168996)) b!312389))

(declare-fun m!322531 () Bool)

(assert (=> start!31074 m!322531))

(declare-fun m!322533 () Bool)

(assert (=> start!31074 m!322533))

(declare-fun m!322535 () Bool)

(assert (=> b!312390 m!322535))

(assert (=> b!312390 m!322535))

(declare-fun m!322537 () Bool)

(assert (=> b!312390 m!322537))

(declare-fun m!322539 () Bool)

(assert (=> b!312393 m!322539))

(declare-fun m!322541 () Bool)

(assert (=> b!312388 m!322541))

(declare-fun m!322543 () Bool)

(assert (=> b!312386 m!322543))

(declare-fun m!322545 () Bool)

(assert (=> b!312384 m!322545))

(declare-fun m!322547 () Bool)

(assert (=> b!312387 m!322547))

(declare-fun m!322549 () Bool)

(assert (=> b!312387 m!322549))

(declare-fun m!322551 () Bool)

(assert (=> b!312387 m!322551))

(declare-fun m!322553 () Bool)

(assert (=> b!312387 m!322553))

(declare-fun m!322555 () Bool)

(assert (=> b!312387 m!322555))

(declare-fun m!322557 () Bool)

(assert (=> b!312392 m!322557))

(declare-fun m!322559 () Bool)

(assert (=> b!312392 m!322559))

(declare-fun m!322561 () Bool)

(assert (=> b!312389 m!322561))

(declare-fun m!322563 () Bool)

(assert (=> b!312385 m!322563))

(push 1)

(assert (not b!312385))

(assert (not b!312386))

(assert (not b!312389))

(assert (not b!312387))

(assert (not b!312393))

(assert (not b!312388))

(assert (not b!312390))

(assert (not start!31074))

(assert (not b!312392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

