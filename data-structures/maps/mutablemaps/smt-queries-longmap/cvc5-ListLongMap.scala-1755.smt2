; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32136 () Bool)

(assert start!32136)

(declare-fun res!174403 () Bool)

(declare-fun e!198630 () Bool)

(assert (=> start!32136 (=> (not res!174403) (not e!198630))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32136 (= res!174403 (validMask!0 mask!3777))))

(assert (=> start!32136 e!198630))

(assert (=> start!32136 true))

(declare-datatypes ((array!16367 0))(
  ( (array!16368 (arr!7741 (Array (_ BitVec 32) (_ BitVec 64))) (size!8093 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16367)

(declare-fun array_inv!5695 (array!16367) Bool)

(assert (=> start!32136 (array_inv!5695 a!3305)))

(declare-fun b!319999 () Bool)

(declare-fun res!174402 () Bool)

(assert (=> b!319999 (=> (not res!174402) (not e!198630))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319999 (= res!174402 (validKeyInArray!0 k!2497))))

(declare-fun b!320000 () Bool)

(declare-fun res!174405 () Bool)

(assert (=> b!320000 (=> (not res!174405) (not e!198630))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2883 0))(
  ( (MissingZero!2883 (index!13708 (_ BitVec 32))) (Found!2883 (index!13709 (_ BitVec 32))) (Intermediate!2883 (undefined!3695 Bool) (index!13710 (_ BitVec 32)) (x!31947 (_ BitVec 32))) (Undefined!2883) (MissingVacant!2883 (index!13711 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16367 (_ BitVec 32)) SeekEntryResult!2883)

(assert (=> b!320000 (= res!174405 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2883 i!1250)))))

(declare-fun b!320001 () Bool)

(declare-fun res!174401 () Bool)

(assert (=> b!320001 (=> (not res!174401) (not e!198630))))

(assert (=> b!320001 (= res!174401 (and (= (size!8093 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8093 a!3305))))))

(declare-fun b!320002 () Bool)

(declare-fun res!174404 () Bool)

(assert (=> b!320002 (=> (not res!174404) (not e!198630))))

(declare-fun arrayContainsKey!0 (array!16367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320002 (= res!174404 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320003 () Bool)

(assert (=> b!320003 (= e!198630 false)))

(declare-fun lt!155957 () SeekEntryResult!2883)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16367 (_ BitVec 32)) SeekEntryResult!2883)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320003 (= lt!155957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320004 () Bool)

(declare-fun res!174400 () Bool)

(assert (=> b!320004 (=> (not res!174400) (not e!198630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16367 (_ BitVec 32)) Bool)

(assert (=> b!320004 (= res!174400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32136 res!174403) b!320001))

(assert (= (and b!320001 res!174401) b!319999))

(assert (= (and b!319999 res!174402) b!320002))

(assert (= (and b!320002 res!174404) b!320000))

(assert (= (and b!320000 res!174405) b!320004))

(assert (= (and b!320004 res!174400) b!320003))

(declare-fun m!328453 () Bool)

(assert (=> b!320004 m!328453))

(declare-fun m!328455 () Bool)

(assert (=> b!320002 m!328455))

(declare-fun m!328457 () Bool)

(assert (=> b!319999 m!328457))

(declare-fun m!328459 () Bool)

(assert (=> start!32136 m!328459))

(declare-fun m!328461 () Bool)

(assert (=> start!32136 m!328461))

(declare-fun m!328463 () Bool)

(assert (=> b!320000 m!328463))

(declare-fun m!328465 () Bool)

(assert (=> b!320003 m!328465))

(assert (=> b!320003 m!328465))

(declare-fun m!328467 () Bool)

(assert (=> b!320003 m!328467))

(push 1)

(assert (not b!319999))

(assert (not b!320003))

(assert (not b!320000))

(assert (not b!320004))

(assert (not start!32136))

(assert (not b!320002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

