; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33024 () Bool)

(assert start!33024)

(declare-fun b!328634 () Bool)

(declare-fun res!181123 () Bool)

(declare-fun e!201970 () Bool)

(assert (=> b!328634 (=> (not res!181123) (not e!201970))))

(declare-datatypes ((array!16826 0))(
  ( (array!16827 (arr!7957 (Array (_ BitVec 32) (_ BitVec 64))) (size!8309 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16826)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328634 (= res!181123 (and (= (size!8309 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8309 a!3305))))))

(declare-fun b!328635 () Bool)

(declare-fun res!181121 () Bool)

(assert (=> b!328635 (=> (not res!181121) (not e!201970))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3099 0))(
  ( (MissingZero!3099 (index!14572 (_ BitVec 32))) (Found!3099 (index!14573 (_ BitVec 32))) (Intermediate!3099 (undefined!3911 Bool) (index!14574 (_ BitVec 32)) (x!32805 (_ BitVec 32))) (Undefined!3099) (MissingVacant!3099 (index!14575 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16826 (_ BitVec 32)) SeekEntryResult!3099)

(assert (=> b!328635 (= res!181121 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3099 i!1250)))))

(declare-fun b!328636 () Bool)

(declare-fun res!181119 () Bool)

(assert (=> b!328636 (=> (not res!181119) (not e!201970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16826 (_ BitVec 32)) Bool)

(assert (=> b!328636 (= res!181119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328637 () Bool)

(declare-fun res!181118 () Bool)

(assert (=> b!328637 (=> (not res!181118) (not e!201970))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!328637 (= res!181118 (and (= (select (arr!7957 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8309 a!3305))))))

(declare-fun b!328638 () Bool)

(declare-fun res!181125 () Bool)

(assert (=> b!328638 (=> (not res!181125) (not e!201970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328638 (= res!181125 (validKeyInArray!0 k!2497))))

(declare-fun b!328639 () Bool)

(declare-fun res!181122 () Bool)

(assert (=> b!328639 (=> (not res!181122) (not e!201970))))

(declare-fun arrayContainsKey!0 (array!16826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328639 (= res!181122 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328640 () Bool)

(assert (=> b!328640 (= e!201970 false)))

(declare-fun lt!157991 () SeekEntryResult!3099)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16826 (_ BitVec 32)) SeekEntryResult!3099)

(assert (=> b!328640 (= lt!157991 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!328641 () Bool)

(declare-fun res!181120 () Bool)

(assert (=> b!328641 (=> (not res!181120) (not e!201970))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328641 (= res!181120 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!3099 false resIndex!58 resX!58)))))

(declare-fun res!181124 () Bool)

(assert (=> start!33024 (=> (not res!181124) (not e!201970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33024 (= res!181124 (validMask!0 mask!3777))))

(assert (=> start!33024 e!201970))

(declare-fun array_inv!5911 (array!16826) Bool)

(assert (=> start!33024 (array_inv!5911 a!3305)))

(assert (=> start!33024 true))

(assert (= (and start!33024 res!181124) b!328634))

(assert (= (and b!328634 res!181123) b!328638))

(assert (= (and b!328638 res!181125) b!328639))

(assert (= (and b!328639 res!181122) b!328635))

(assert (= (and b!328635 res!181121) b!328636))

(assert (= (and b!328636 res!181119) b!328641))

(assert (= (and b!328641 res!181120) b!328637))

(assert (= (and b!328637 res!181118) b!328640))

(declare-fun m!334525 () Bool)

(assert (=> start!33024 m!334525))

(declare-fun m!334527 () Bool)

(assert (=> start!33024 m!334527))

(declare-fun m!334529 () Bool)

(assert (=> b!328635 m!334529))

(declare-fun m!334531 () Bool)

(assert (=> b!328638 m!334531))

(declare-fun m!334533 () Bool)

(assert (=> b!328637 m!334533))

(declare-fun m!334535 () Bool)

(assert (=> b!328636 m!334535))

(declare-fun m!334537 () Bool)

(assert (=> b!328640 m!334537))

(declare-fun m!334539 () Bool)

(assert (=> b!328639 m!334539))

(declare-fun m!334541 () Bool)

(assert (=> b!328641 m!334541))

(assert (=> b!328641 m!334541))

(declare-fun m!334543 () Bool)

(assert (=> b!328641 m!334543))

(push 1)

(assert (not b!328639))

(assert (not start!33024))

(assert (not b!328640))

(assert (not b!328641))

(assert (not b!328638))

(assert (not b!328636))

(assert (not b!328635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

