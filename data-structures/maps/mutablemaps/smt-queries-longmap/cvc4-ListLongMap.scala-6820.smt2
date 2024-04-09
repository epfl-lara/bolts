; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85780 () Bool)

(assert start!85780)

(declare-fun b!994786 () Bool)

(declare-fun e!561379 () Bool)

(declare-fun e!561380 () Bool)

(assert (=> b!994786 (= e!561379 e!561380)))

(declare-fun res!665450 () Bool)

(assert (=> b!994786 (=> (not res!665450) (not e!561380))))

(declare-datatypes ((SeekEntryResult!9235 0))(
  ( (MissingZero!9235 (index!39310 (_ BitVec 32))) (Found!9235 (index!39311 (_ BitVec 32))) (Intermediate!9235 (undefined!10047 Bool) (index!39312 (_ BitVec 32)) (x!86781 (_ BitVec 32))) (Undefined!9235) (MissingVacant!9235 (index!39313 (_ BitVec 32))) )
))
(declare-fun lt!440736 () SeekEntryResult!9235)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994786 (= res!665450 (or (= lt!440736 (MissingVacant!9235 i!1194)) (= lt!440736 (MissingZero!9235 i!1194))))))

(declare-datatypes ((array!62937 0))(
  ( (array!62938 (arr!30303 (Array (_ BitVec 32) (_ BitVec 64))) (size!30806 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62937)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62937 (_ BitVec 32)) SeekEntryResult!9235)

(assert (=> b!994786 (= lt!440736 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994787 () Bool)

(declare-fun res!665453 () Bool)

(assert (=> b!994787 (=> (not res!665453) (not e!561379))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994787 (= res!665453 (validKeyInArray!0 (select (arr!30303 a!3219) j!170)))))

(declare-fun b!994788 () Bool)

(declare-fun res!665454 () Bool)

(assert (=> b!994788 (=> (not res!665454) (not e!561379))))

(assert (=> b!994788 (= res!665454 (validKeyInArray!0 k!2224))))

(declare-fun res!665455 () Bool)

(assert (=> start!85780 (=> (not res!665455) (not e!561379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85780 (= res!665455 (validMask!0 mask!3464))))

(assert (=> start!85780 e!561379))

(declare-fun array_inv!23293 (array!62937) Bool)

(assert (=> start!85780 (array_inv!23293 a!3219)))

(assert (=> start!85780 true))

(declare-fun b!994789 () Bool)

(assert (=> b!994789 (= e!561380 (bvsgt #b00000000000000000000000000000000 (size!30806 a!3219)))))

(declare-fun b!994790 () Bool)

(declare-fun res!665449 () Bool)

(assert (=> b!994790 (=> (not res!665449) (not e!561379))))

(declare-fun arrayContainsKey!0 (array!62937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994790 (= res!665449 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994791 () Bool)

(declare-fun res!665451 () Bool)

(assert (=> b!994791 (=> (not res!665451) (not e!561379))))

(assert (=> b!994791 (= res!665451 (and (= (size!30806 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30806 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30806 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994792 () Bool)

(declare-fun res!665452 () Bool)

(assert (=> b!994792 (=> (not res!665452) (not e!561380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62937 (_ BitVec 32)) Bool)

(assert (=> b!994792 (= res!665452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!85780 res!665455) b!994791))

(assert (= (and b!994791 res!665451) b!994787))

(assert (= (and b!994787 res!665453) b!994788))

(assert (= (and b!994788 res!665454) b!994790))

(assert (= (and b!994790 res!665449) b!994786))

(assert (= (and b!994786 res!665450) b!994792))

(assert (= (and b!994792 res!665452) b!994789))

(declare-fun m!922435 () Bool)

(assert (=> b!994792 m!922435))

(declare-fun m!922437 () Bool)

(assert (=> b!994787 m!922437))

(assert (=> b!994787 m!922437))

(declare-fun m!922439 () Bool)

(assert (=> b!994787 m!922439))

(declare-fun m!922441 () Bool)

(assert (=> b!994788 m!922441))

(declare-fun m!922443 () Bool)

(assert (=> b!994790 m!922443))

(declare-fun m!922445 () Bool)

(assert (=> start!85780 m!922445))

(declare-fun m!922447 () Bool)

(assert (=> start!85780 m!922447))

(declare-fun m!922449 () Bool)

(assert (=> b!994786 m!922449))

(push 1)

(assert (not b!994787))

