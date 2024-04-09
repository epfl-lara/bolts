; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32140 () Bool)

(assert start!32140)

(declare-fun b!320035 () Bool)

(declare-fun res!174436 () Bool)

(declare-fun e!198643 () Bool)

(assert (=> b!320035 (=> (not res!174436) (not e!198643))))

(declare-datatypes ((array!16371 0))(
  ( (array!16372 (arr!7743 (Array (_ BitVec 32) (_ BitVec 64))) (size!8095 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16371)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320035 (= res!174436 (and (= (size!8095 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8095 a!3305))))))

(declare-fun b!320036 () Bool)

(declare-fun res!174440 () Bool)

(assert (=> b!320036 (=> (not res!174440) (not e!198643))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320036 (= res!174440 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320037 () Bool)

(declare-fun res!174437 () Bool)

(assert (=> b!320037 (=> (not res!174437) (not e!198643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16371 (_ BitVec 32)) Bool)

(assert (=> b!320037 (= res!174437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320038 () Bool)

(declare-fun res!174438 () Bool)

(assert (=> b!320038 (=> (not res!174438) (not e!198643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320038 (= res!174438 (validKeyInArray!0 k!2497))))

(declare-fun b!320039 () Bool)

(declare-fun res!174441 () Bool)

(assert (=> b!320039 (=> (not res!174441) (not e!198643))))

(declare-datatypes ((SeekEntryResult!2885 0))(
  ( (MissingZero!2885 (index!13716 (_ BitVec 32))) (Found!2885 (index!13717 (_ BitVec 32))) (Intermediate!2885 (undefined!3697 Bool) (index!13718 (_ BitVec 32)) (x!31949 (_ BitVec 32))) (Undefined!2885) (MissingVacant!2885 (index!13719 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16371 (_ BitVec 32)) SeekEntryResult!2885)

(assert (=> b!320039 (= res!174441 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2885 i!1250)))))

(declare-fun res!174439 () Bool)

(assert (=> start!32140 (=> (not res!174439) (not e!198643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32140 (= res!174439 (validMask!0 mask!3777))))

(assert (=> start!32140 e!198643))

(assert (=> start!32140 true))

(declare-fun array_inv!5697 (array!16371) Bool)

(assert (=> start!32140 (array_inv!5697 a!3305)))

(declare-fun b!320040 () Bool)

(assert (=> b!320040 (= e!198643 false)))

(declare-fun lt!155963 () SeekEntryResult!2885)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16371 (_ BitVec 32)) SeekEntryResult!2885)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320040 (= lt!155963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (= (and start!32140 res!174439) b!320035))

(assert (= (and b!320035 res!174436) b!320038))

(assert (= (and b!320038 res!174438) b!320036))

(assert (= (and b!320036 res!174440) b!320039))

(assert (= (and b!320039 res!174441) b!320037))

(assert (= (and b!320037 res!174437) b!320040))

(declare-fun m!328485 () Bool)

(assert (=> b!320039 m!328485))

(declare-fun m!328487 () Bool)

(assert (=> b!320038 m!328487))

(declare-fun m!328489 () Bool)

(assert (=> b!320040 m!328489))

(assert (=> b!320040 m!328489))

(declare-fun m!328491 () Bool)

(assert (=> b!320040 m!328491))

(declare-fun m!328493 () Bool)

(assert (=> start!32140 m!328493))

(declare-fun m!328495 () Bool)

(assert (=> start!32140 m!328495))

(declare-fun m!328497 () Bool)

(assert (=> b!320037 m!328497))

(declare-fun m!328499 () Bool)

(assert (=> b!320036 m!328499))

(push 1)

(assert (not start!32140))

(assert (not b!320040))

(assert (not b!320039))

(assert (not b!320036))

(assert (not b!320038))

(assert (not b!320037))

(check-sat)

