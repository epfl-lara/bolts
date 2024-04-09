; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33018 () Bool)

(assert start!33018)

(declare-fun b!328562 () Bool)

(declare-fun res!181050 () Bool)

(declare-fun e!201952 () Bool)

(assert (=> b!328562 (=> (not res!181050) (not e!201952))))

(declare-datatypes ((array!16820 0))(
  ( (array!16821 (arr!7954 (Array (_ BitVec 32) (_ BitVec 64))) (size!8306 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16820)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16820 (_ BitVec 32)) Bool)

(assert (=> b!328562 (= res!181050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328563 () Bool)

(declare-fun res!181051 () Bool)

(assert (=> b!328563 (=> (not res!181051) (not e!201952))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328563 (= res!181051 (and (= (select (arr!7954 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8306 a!3305))))))

(declare-fun b!328564 () Bool)

(declare-fun res!181049 () Bool)

(assert (=> b!328564 (=> (not res!181049) (not e!201952))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3096 0))(
  ( (MissingZero!3096 (index!14560 (_ BitVec 32))) (Found!3096 (index!14561 (_ BitVec 32))) (Intermediate!3096 (undefined!3908 Bool) (index!14562 (_ BitVec 32)) (x!32794 (_ BitVec 32))) (Undefined!3096) (MissingVacant!3096 (index!14563 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16820 (_ BitVec 32)) SeekEntryResult!3096)

(assert (=> b!328564 (= res!181049 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3096 i!1250)))))

(declare-fun b!328565 () Bool)

(declare-fun res!181053 () Bool)

(assert (=> b!328565 (=> (not res!181053) (not e!201952))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16820 (_ BitVec 32)) SeekEntryResult!3096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328565 (= res!181053 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3096 false resIndex!58 resX!58)))))

(declare-fun b!328566 () Bool)

(assert (=> b!328566 (= e!201952 false)))

(declare-fun lt!157982 () SeekEntryResult!3096)

(assert (=> b!328566 (= lt!157982 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328567 () Bool)

(declare-fun res!181047 () Bool)

(assert (=> b!328567 (=> (not res!181047) (not e!201952))))

(declare-fun arrayContainsKey!0 (array!16820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328567 (= res!181047 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328568 () Bool)

(declare-fun res!181046 () Bool)

(assert (=> b!328568 (=> (not res!181046) (not e!201952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328568 (= res!181046 (validKeyInArray!0 k!2497))))

(declare-fun b!328569 () Bool)

(declare-fun res!181048 () Bool)

(assert (=> b!328569 (=> (not res!181048) (not e!201952))))

(assert (=> b!328569 (= res!181048 (and (= (size!8306 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8306 a!3305))))))

(declare-fun res!181052 () Bool)

(assert (=> start!33018 (=> (not res!181052) (not e!201952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33018 (= res!181052 (validMask!0 mask!3777))))

(assert (=> start!33018 e!201952))

(declare-fun array_inv!5908 (array!16820) Bool)

(assert (=> start!33018 (array_inv!5908 a!3305)))

(assert (=> start!33018 true))

(assert (= (and start!33018 res!181052) b!328569))

(assert (= (and b!328569 res!181048) b!328568))

(assert (= (and b!328568 res!181046) b!328567))

(assert (= (and b!328567 res!181047) b!328564))

(assert (= (and b!328564 res!181049) b!328562))

(assert (= (and b!328562 res!181050) b!328565))

(assert (= (and b!328565 res!181053) b!328563))

(assert (= (and b!328563 res!181051) b!328566))

(declare-fun m!334465 () Bool)

(assert (=> b!328563 m!334465))

(declare-fun m!334467 () Bool)

(assert (=> b!328564 m!334467))

(declare-fun m!334469 () Bool)

(assert (=> start!33018 m!334469))

(declare-fun m!334471 () Bool)

(assert (=> start!33018 m!334471))

(declare-fun m!334473 () Bool)

(assert (=> b!328565 m!334473))

(assert (=> b!328565 m!334473))

(declare-fun m!334475 () Bool)

(assert (=> b!328565 m!334475))

(declare-fun m!334477 () Bool)

(assert (=> b!328568 m!334477))

(declare-fun m!334479 () Bool)

(assert (=> b!328562 m!334479))

(declare-fun m!334481 () Bool)

(assert (=> b!328567 m!334481))

(declare-fun m!334483 () Bool)

(assert (=> b!328566 m!334483))

(push 1)

(assert (not b!328564))

(assert (not b!328565))

(assert (not b!328566))

(assert (not b!328568))

(assert (not start!33018))

(assert (not b!328567))

(assert (not b!328562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

