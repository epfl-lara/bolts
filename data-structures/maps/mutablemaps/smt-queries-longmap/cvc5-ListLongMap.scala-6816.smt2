; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85752 () Bool)

(assert start!85752)

(declare-fun res!665225 () Bool)

(declare-fun e!561286 () Bool)

(assert (=> start!85752 (=> (not res!665225) (not e!561286))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85752 (= res!665225 (validMask!0 mask!3464))))

(assert (=> start!85752 e!561286))

(declare-datatypes ((array!62909 0))(
  ( (array!62910 (arr!30289 (Array (_ BitVec 32) (_ BitVec 64))) (size!30792 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62909)

(declare-fun array_inv!23279 (array!62909) Bool)

(assert (=> start!85752 (array_inv!23279 a!3219)))

(assert (=> start!85752 true))

(declare-fun b!994560 () Bool)

(declare-fun res!665223 () Bool)

(assert (=> b!994560 (=> (not res!665223) (not e!561286))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994560 (= res!665223 (validKeyInArray!0 (select (arr!30289 a!3219) j!170)))))

(declare-fun b!994561 () Bool)

(assert (=> b!994561 (= e!561286 false)))

(declare-datatypes ((SeekEntryResult!9221 0))(
  ( (MissingZero!9221 (index!39254 (_ BitVec 32))) (Found!9221 (index!39255 (_ BitVec 32))) (Intermediate!9221 (undefined!10033 Bool) (index!39256 (_ BitVec 32)) (x!86735 (_ BitVec 32))) (Undefined!9221) (MissingVacant!9221 (index!39257 (_ BitVec 32))) )
))
(declare-fun lt!440694 () SeekEntryResult!9221)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62909 (_ BitVec 32)) SeekEntryResult!9221)

(assert (=> b!994561 (= lt!440694 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994562 () Bool)

(declare-fun res!665226 () Bool)

(assert (=> b!994562 (=> (not res!665226) (not e!561286))))

(declare-fun arrayContainsKey!0 (array!62909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994562 (= res!665226 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994563 () Bool)

(declare-fun res!665227 () Bool)

(assert (=> b!994563 (=> (not res!665227) (not e!561286))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994563 (= res!665227 (and (= (size!30792 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30792 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30792 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994564 () Bool)

(declare-fun res!665224 () Bool)

(assert (=> b!994564 (=> (not res!665224) (not e!561286))))

(assert (=> b!994564 (= res!665224 (validKeyInArray!0 k!2224))))

(assert (= (and start!85752 res!665225) b!994563))

(assert (= (and b!994563 res!665227) b!994560))

(assert (= (and b!994560 res!665223) b!994564))

(assert (= (and b!994564 res!665224) b!994562))

(assert (= (and b!994562 res!665226) b!994561))

(declare-fun m!922235 () Bool)

(assert (=> b!994562 m!922235))

(declare-fun m!922237 () Bool)

(assert (=> b!994560 m!922237))

(assert (=> b!994560 m!922237))

(declare-fun m!922239 () Bool)

(assert (=> b!994560 m!922239))

(declare-fun m!922241 () Bool)

(assert (=> b!994561 m!922241))

(declare-fun m!922243 () Bool)

(assert (=> b!994564 m!922243))

(declare-fun m!922245 () Bool)

(assert (=> start!85752 m!922245))

(declare-fun m!922247 () Bool)

(assert (=> start!85752 m!922247))

(push 1)

(assert (not b!994564))

(assert (not b!994562))

(assert (not b!994561))

(assert (not start!85752))

(assert (not b!994560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

