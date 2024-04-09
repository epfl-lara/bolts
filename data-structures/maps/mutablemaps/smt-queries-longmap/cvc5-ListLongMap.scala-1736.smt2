; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31926 () Bool)

(assert start!31926)

(declare-fun b!318756 () Bool)

(declare-fun res!173305 () Bool)

(declare-fun e!198042 () Bool)

(assert (=> b!318756 (=> (not res!173305) (not e!198042))))

(declare-datatypes ((array!16244 0))(
  ( (array!16245 (arr!7684 (Array (_ BitVec 32) (_ BitVec 64))) (size!8036 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16244)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318756 (= res!173305 (and (= (select (arr!7684 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8036 a!3293))))))

(declare-fun b!318757 () Bool)

(declare-fun res!173306 () Bool)

(declare-fun e!198045 () Bool)

(assert (=> b!318757 (=> (not res!173306) (not e!198045))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!318757 (= res!173306 (and (= (size!8036 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8036 a!3293))))))

(declare-fun b!318758 () Bool)

(declare-fun res!173302 () Bool)

(assert (=> b!318758 (=> (not res!173302) (not e!198045))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318758 (= res!173302 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun e!198044 () Bool)

(declare-fun lt!155526 () (_ BitVec 32))

(declare-fun b!318759 () Bool)

(declare-datatypes ((SeekEntryResult!2835 0))(
  ( (MissingZero!2835 (index!13516 (_ BitVec 32))) (Found!2835 (index!13517 (_ BitVec 32))) (Intermediate!2835 (undefined!3647 Bool) (index!13518 (_ BitVec 32)) (x!31744 (_ BitVec 32))) (Undefined!2835) (MissingVacant!2835 (index!13519 (_ BitVec 32))) )
))
(declare-fun lt!155524 () SeekEntryResult!2835)

(declare-fun lt!155528 () SeekEntryResult!2835)

(assert (=> b!318759 (= e!198044 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155526 #b00000000000000000000000000000000) (bvsge lt!155526 (size!8036 a!3293)) (= lt!155528 lt!155524))))))

(declare-fun e!198046 () Bool)

(assert (=> b!318759 e!198046))

(declare-fun res!173300 () Bool)

(assert (=> b!318759 (=> (not res!173300) (not e!198046))))

(declare-fun lt!155527 () SeekEntryResult!2835)

(assert (=> b!318759 (= res!173300 (= lt!155527 lt!155528))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16244 (_ BitVec 32)) SeekEntryResult!2835)

(assert (=> b!318759 (= lt!155528 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155526 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318759 (= lt!155526 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318760 () Bool)

(assert (=> b!318760 (= e!198042 e!198044)))

(declare-fun res!173304 () Bool)

(assert (=> b!318760 (=> (not res!173304) (not e!198044))))

(assert (=> b!318760 (= res!173304 (and (= lt!155527 lt!155524) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7684 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318760 (= lt!155527 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318761 () Bool)

(assert (=> b!318761 (= e!198045 e!198042)))

(declare-fun res!173298 () Bool)

(assert (=> b!318761 (=> (not res!173298) (not e!198042))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318761 (= res!173298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155524))))

(assert (=> b!318761 (= lt!155524 (Intermediate!2835 false resIndex!52 resX!52))))

(declare-fun res!173299 () Bool)

(assert (=> start!31926 (=> (not res!173299) (not e!198045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31926 (= res!173299 (validMask!0 mask!3709))))

(assert (=> start!31926 e!198045))

(declare-fun array_inv!5638 (array!16244) Bool)

(assert (=> start!31926 (array_inv!5638 a!3293)))

(assert (=> start!31926 true))

(declare-fun b!318762 () Bool)

(declare-fun res!173301 () Bool)

(assert (=> b!318762 (=> (not res!173301) (not e!198045))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16244 (_ BitVec 32)) SeekEntryResult!2835)

(assert (=> b!318762 (= res!173301 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2835 i!1240)))))

(declare-fun b!318763 () Bool)

(declare-fun res!173307 () Bool)

(assert (=> b!318763 (=> (not res!173307) (not e!198045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16244 (_ BitVec 32)) Bool)

(assert (=> b!318763 (= res!173307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!155525 () array!16244)

(declare-fun b!318764 () Bool)

(assert (=> b!318764 (= e!198046 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155525 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155526 k!2441 lt!155525 mask!3709)))))

(assert (=> b!318764 (= lt!155525 (array!16245 (store (arr!7684 a!3293) i!1240 k!2441) (size!8036 a!3293)))))

(declare-fun b!318765 () Bool)

(declare-fun res!173303 () Bool)

(assert (=> b!318765 (=> (not res!173303) (not e!198045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318765 (= res!173303 (validKeyInArray!0 k!2441))))

(assert (= (and start!31926 res!173299) b!318757))

(assert (= (and b!318757 res!173306) b!318765))

(assert (= (and b!318765 res!173303) b!318758))

(assert (= (and b!318758 res!173302) b!318762))

(assert (= (and b!318762 res!173301) b!318763))

(assert (= (and b!318763 res!173307) b!318761))

(assert (= (and b!318761 res!173298) b!318756))

(assert (= (and b!318756 res!173305) b!318760))

(assert (= (and b!318760 res!173304) b!318759))

(assert (= (and b!318759 res!173300) b!318764))

(declare-fun m!327391 () Bool)

(assert (=> b!318760 m!327391))

(declare-fun m!327393 () Bool)

(assert (=> b!318760 m!327393))

(declare-fun m!327395 () Bool)

(assert (=> b!318759 m!327395))

(declare-fun m!327397 () Bool)

(assert (=> b!318759 m!327397))

(declare-fun m!327399 () Bool)

(assert (=> b!318763 m!327399))

(declare-fun m!327401 () Bool)

(assert (=> start!31926 m!327401))

(declare-fun m!327403 () Bool)

(assert (=> start!31926 m!327403))

(declare-fun m!327405 () Bool)

(assert (=> b!318765 m!327405))

(declare-fun m!327407 () Bool)

(assert (=> b!318761 m!327407))

(assert (=> b!318761 m!327407))

(declare-fun m!327409 () Bool)

(assert (=> b!318761 m!327409))

(declare-fun m!327411 () Bool)

(assert (=> b!318756 m!327411))

(declare-fun m!327413 () Bool)

(assert (=> b!318762 m!327413))

(declare-fun m!327415 () Bool)

(assert (=> b!318758 m!327415))

(declare-fun m!327417 () Bool)

(assert (=> b!318764 m!327417))

(declare-fun m!327419 () Bool)

(assert (=> b!318764 m!327419))

(declare-fun m!327421 () Bool)

(assert (=> b!318764 m!327421))

(push 1)

