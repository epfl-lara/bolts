; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31930 () Bool)

(assert start!31930)

(declare-fun b!318816 () Bool)

(declare-fun res!173362 () Bool)

(declare-fun e!198074 () Bool)

(assert (=> b!318816 (=> (not res!173362) (not e!198074))))

(declare-datatypes ((array!16248 0))(
  ( (array!16249 (arr!7686 (Array (_ BitVec 32) (_ BitVec 64))) (size!8038 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16248)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16248 (_ BitVec 32)) Bool)

(assert (=> b!318816 (= res!173362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!173363 () Bool)

(assert (=> start!31930 (=> (not res!173363) (not e!198074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31930 (= res!173363 (validMask!0 mask!3709))))

(assert (=> start!31930 e!198074))

(declare-fun array_inv!5640 (array!16248) Bool)

(assert (=> start!31930 (array_inv!5640 a!3293)))

(assert (=> start!31930 true))

(declare-fun b!318817 () Bool)

(declare-fun res!173358 () Bool)

(declare-fun e!198076 () Bool)

(assert (=> b!318817 (=> (not res!173358) (not e!198076))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318817 (= res!173358 (and (= (select (arr!7686 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8038 a!3293))))))

(declare-fun b!318818 () Bool)

(declare-fun res!173360 () Bool)

(assert (=> b!318818 (=> (not res!173360) (not e!198074))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2837 0))(
  ( (MissingZero!2837 (index!13524 (_ BitVec 32))) (Found!2837 (index!13525 (_ BitVec 32))) (Intermediate!2837 (undefined!3649 Bool) (index!13526 (_ BitVec 32)) (x!31746 (_ BitVec 32))) (Undefined!2837) (MissingVacant!2837 (index!13527 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16248 (_ BitVec 32)) SeekEntryResult!2837)

(assert (=> b!318818 (= res!173360 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2837 i!1240)))))

(declare-fun b!318819 () Bool)

(assert (=> b!318819 (= e!198074 e!198076)))

(declare-fun res!173359 () Bool)

(assert (=> b!318819 (=> (not res!173359) (not e!198076))))

(declare-fun lt!155555 () SeekEntryResult!2837)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16248 (_ BitVec 32)) SeekEntryResult!2837)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318819 (= res!173359 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155555))))

(assert (=> b!318819 (= lt!155555 (Intermediate!2837 false resIndex!52 resX!52))))

(declare-fun lt!155554 () (_ BitVec 32))

(declare-fun lt!155556 () array!16248)

(declare-fun b!318820 () Bool)

(declare-fun e!198072 () Bool)

(assert (=> b!318820 (= e!198072 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155556 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155554 k!2441 lt!155556 mask!3709)))))

(assert (=> b!318820 (= lt!155556 (array!16249 (store (arr!7686 a!3293) i!1240 k!2441) (size!8038 a!3293)))))

(declare-fun e!198073 () Bool)

(declare-fun lt!155558 () SeekEntryResult!2837)

(declare-fun b!318821 () Bool)

(assert (=> b!318821 (= e!198073 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155554 #b00000000000000000000000000000000) (bvsge lt!155554 (size!8038 a!3293)) (= lt!155558 lt!155555))))))

(assert (=> b!318821 e!198072))

(declare-fun res!173364 () Bool)

(assert (=> b!318821 (=> (not res!173364) (not e!198072))))

(declare-fun lt!155557 () SeekEntryResult!2837)

(assert (=> b!318821 (= res!173364 (= lt!155557 lt!155558))))

(assert (=> b!318821 (= lt!155558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155554 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318821 (= lt!155554 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318822 () Bool)

(declare-fun res!173366 () Bool)

(assert (=> b!318822 (=> (not res!173366) (not e!198074))))

(declare-fun arrayContainsKey!0 (array!16248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318822 (= res!173366 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318823 () Bool)

(declare-fun res!173367 () Bool)

(assert (=> b!318823 (=> (not res!173367) (not e!198074))))

(assert (=> b!318823 (= res!173367 (and (= (size!8038 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8038 a!3293))))))

(declare-fun b!318824 () Bool)

(assert (=> b!318824 (= e!198076 e!198073)))

(declare-fun res!173365 () Bool)

(assert (=> b!318824 (=> (not res!173365) (not e!198073))))

(assert (=> b!318824 (= res!173365 (and (= lt!155557 lt!155555) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7686 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318824 (= lt!155557 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318825 () Bool)

(declare-fun res!173361 () Bool)

(assert (=> b!318825 (=> (not res!173361) (not e!198074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318825 (= res!173361 (validKeyInArray!0 k!2441))))

(assert (= (and start!31930 res!173363) b!318823))

(assert (= (and b!318823 res!173367) b!318825))

(assert (= (and b!318825 res!173361) b!318822))

(assert (= (and b!318822 res!173366) b!318818))

(assert (= (and b!318818 res!173360) b!318816))

(assert (= (and b!318816 res!173362) b!318819))

(assert (= (and b!318819 res!173359) b!318817))

(assert (= (and b!318817 res!173358) b!318824))

(assert (= (and b!318824 res!173365) b!318821))

(assert (= (and b!318821 res!173364) b!318820))

(declare-fun m!327455 () Bool)

(assert (=> b!318816 m!327455))

(declare-fun m!327457 () Bool)

(assert (=> b!318821 m!327457))

(declare-fun m!327459 () Bool)

(assert (=> b!318821 m!327459))

(declare-fun m!327461 () Bool)

(assert (=> b!318825 m!327461))

(declare-fun m!327463 () Bool)

(assert (=> b!318818 m!327463))

(declare-fun m!327465 () Bool)

(assert (=> b!318824 m!327465))

(declare-fun m!327467 () Bool)

(assert (=> b!318824 m!327467))

(declare-fun m!327469 () Bool)

(assert (=> start!31930 m!327469))

(declare-fun m!327471 () Bool)

(assert (=> start!31930 m!327471))

(declare-fun m!327473 () Bool)

(assert (=> b!318817 m!327473))

(declare-fun m!327475 () Bool)

(assert (=> b!318819 m!327475))

(assert (=> b!318819 m!327475))

(declare-fun m!327477 () Bool)

(assert (=> b!318819 m!327477))

(declare-fun m!327479 () Bool)

(assert (=> b!318820 m!327479))

(declare-fun m!327481 () Bool)

(assert (=> b!318820 m!327481))

(declare-fun m!327483 () Bool)

(assert (=> b!318820 m!327483))

(declare-fun m!327485 () Bool)

(assert (=> b!318822 m!327485))

(push 1)

(assert (not start!31930))

(assert (not b!318818))

(assert (not b!318816))

(assert (not b!318821))

(assert (not b!318822))

(assert (not b!318824))

(assert (not b!318819))

