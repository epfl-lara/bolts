; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85732 () Bool)

(assert start!85732)

(declare-fun b!994401 () Bool)

(declare-fun res!665066 () Bool)

(declare-fun e!561226 () Bool)

(assert (=> b!994401 (=> (not res!665066) (not e!561226))))

(declare-datatypes ((array!62889 0))(
  ( (array!62890 (arr!30279 (Array (_ BitVec 32) (_ BitVec 64))) (size!30782 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62889)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994401 (= res!665066 (validKeyInArray!0 (select (arr!30279 a!3219) j!170)))))

(declare-fun b!994402 () Bool)

(declare-fun res!665067 () Bool)

(assert (=> b!994402 (=> (not res!665067) (not e!561226))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994402 (= res!665067 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994403 () Bool)

(declare-fun res!665068 () Bool)

(assert (=> b!994403 (=> (not res!665068) (not e!561226))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994403 (= res!665068 (and (= (size!30782 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30782 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30782 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994404 () Bool)

(assert (=> b!994404 (= e!561226 false)))

(declare-datatypes ((SeekEntryResult!9211 0))(
  ( (MissingZero!9211 (index!39214 (_ BitVec 32))) (Found!9211 (index!39215 (_ BitVec 32))) (Intermediate!9211 (undefined!10023 Bool) (index!39216 (_ BitVec 32)) (x!86693 (_ BitVec 32))) (Undefined!9211) (MissingVacant!9211 (index!39217 (_ BitVec 32))) )
))
(declare-fun lt!440673 () SeekEntryResult!9211)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62889 (_ BitVec 32)) SeekEntryResult!9211)

(assert (=> b!994404 (= lt!440673 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994405 () Bool)

(declare-fun res!665064 () Bool)

(assert (=> b!994405 (=> (not res!665064) (not e!561226))))

(assert (=> b!994405 (= res!665064 (validKeyInArray!0 k!2224))))

(declare-fun res!665065 () Bool)

(assert (=> start!85732 (=> (not res!665065) (not e!561226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85732 (= res!665065 (validMask!0 mask!3464))))

(assert (=> start!85732 e!561226))

(declare-fun array_inv!23269 (array!62889) Bool)

(assert (=> start!85732 (array_inv!23269 a!3219)))

(assert (=> start!85732 true))

(assert (= (and start!85732 res!665065) b!994403))

(assert (= (and b!994403 res!665068) b!994401))

(assert (= (and b!994401 res!665066) b!994405))

(assert (= (and b!994405 res!665064) b!994402))

(assert (= (and b!994402 res!665067) b!994404))

(declare-fun m!922095 () Bool)

(assert (=> b!994405 m!922095))

(declare-fun m!922097 () Bool)

(assert (=> start!85732 m!922097))

(declare-fun m!922099 () Bool)

(assert (=> start!85732 m!922099))

(declare-fun m!922101 () Bool)

(assert (=> b!994402 m!922101))

(declare-fun m!922103 () Bool)

(assert (=> b!994404 m!922103))

(declare-fun m!922105 () Bool)

(assert (=> b!994401 m!922105))

(assert (=> b!994401 m!922105))

(declare-fun m!922107 () Bool)

(assert (=> b!994401 m!922107))

(push 1)

(assert (not start!85732))

(assert (not b!994401))

(assert (not b!994405))

(assert (not b!994402))

(assert (not b!994404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

