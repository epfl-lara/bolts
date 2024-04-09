; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32148 () Bool)

(assert start!32148)

(declare-fun b!320117 () Bool)

(declare-fun res!174519 () Bool)

(declare-fun e!198666 () Bool)

(assert (=> b!320117 (=> (not res!174519) (not e!198666))))

(declare-datatypes ((array!16379 0))(
  ( (array!16380 (arr!7747 (Array (_ BitVec 32) (_ BitVec 64))) (size!8099 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16379)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16379 (_ BitVec 32)) Bool)

(assert (=> b!320117 (= res!174519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320118 () Bool)

(declare-fun res!174520 () Bool)

(assert (=> b!320118 (=> (not res!174520) (not e!198666))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2889 0))(
  ( (MissingZero!2889 (index!13732 (_ BitVec 32))) (Found!2889 (index!13733 (_ BitVec 32))) (Intermediate!2889 (undefined!3701 Bool) (index!13734 (_ BitVec 32)) (x!31969 (_ BitVec 32))) (Undefined!2889) (MissingVacant!2889 (index!13735 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16379 (_ BitVec 32)) SeekEntryResult!2889)

(assert (=> b!320118 (= res!174520 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2889 i!1250)))))

(declare-fun b!320119 () Bool)

(assert (=> b!320119 (= e!198666 false)))

(declare-fun lt!155966 () SeekEntryResult!2889)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16379 (_ BitVec 32)) SeekEntryResult!2889)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320119 (= lt!155966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320116 () Bool)

(declare-fun res!174518 () Bool)

(assert (=> b!320116 (=> (not res!174518) (not e!198666))))

(declare-fun arrayContainsKey!0 (array!16379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320116 (= res!174518 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174521 () Bool)

(assert (=> start!32148 (=> (not res!174521) (not e!198666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32148 (= res!174521 (validMask!0 mask!3777))))

(assert (=> start!32148 e!198666))

(assert (=> start!32148 true))

(declare-fun array_inv!5701 (array!16379) Bool)

(assert (=> start!32148 (array_inv!5701 a!3305)))

(declare-fun b!320120 () Bool)

(declare-fun res!174517 () Bool)

(assert (=> b!320120 (=> (not res!174517) (not e!198666))))

(assert (=> b!320120 (= res!174517 (and (= (size!8099 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8099 a!3305))))))

(declare-fun b!320121 () Bool)

(declare-fun res!174522 () Bool)

(assert (=> b!320121 (=> (not res!174522) (not e!198666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320121 (= res!174522 (validKeyInArray!0 k!2497))))

(assert (= (and start!32148 res!174521) b!320120))

(assert (= (and b!320120 res!174517) b!320121))

(assert (= (and b!320121 res!174522) b!320116))

(assert (= (and b!320116 res!174518) b!320118))

(assert (= (and b!320118 res!174520) b!320117))

(assert (= (and b!320117 res!174519) b!320119))

(declare-fun m!328555 () Bool)

(assert (=> b!320117 m!328555))

(declare-fun m!328557 () Bool)

(assert (=> b!320118 m!328557))

(declare-fun m!328559 () Bool)

(assert (=> start!32148 m!328559))

(declare-fun m!328561 () Bool)

(assert (=> start!32148 m!328561))

(declare-fun m!328563 () Bool)

(assert (=> b!320121 m!328563))

(declare-fun m!328565 () Bool)

(assert (=> b!320116 m!328565))

(declare-fun m!328567 () Bool)

(assert (=> b!320119 m!328567))

(assert (=> b!320119 m!328567))

(declare-fun m!328569 () Bool)

(assert (=> b!320119 m!328569))

(push 1)

(assert (not b!320119))

(assert (not b!320116))

(assert (not b!320121))

(assert (not b!320117))

(assert (not start!32148))

(assert (not b!320118))

(check-sat)

(pop 1)

