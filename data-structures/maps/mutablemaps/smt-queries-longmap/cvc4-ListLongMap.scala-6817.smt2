; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85762 () Bool)

(assert start!85762)

(declare-fun res!665299 () Bool)

(declare-fun e!561317 () Bool)

(assert (=> start!85762 (=> (not res!665299) (not e!561317))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85762 (= res!665299 (validMask!0 mask!3464))))

(assert (=> start!85762 e!561317))

(declare-datatypes ((array!62919 0))(
  ( (array!62920 (arr!30294 (Array (_ BitVec 32) (_ BitVec 64))) (size!30797 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62919)

(declare-fun array_inv!23284 (array!62919) Bool)

(assert (=> start!85762 (array_inv!23284 a!3219)))

(assert (=> start!85762 true))

(declare-fun b!994635 () Bool)

(declare-fun res!665298 () Bool)

(assert (=> b!994635 (=> (not res!665298) (not e!561317))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994635 (= res!665298 (and (= (size!30797 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30797 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30797 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994636 () Bool)

(declare-fun res!665301 () Bool)

(assert (=> b!994636 (=> (not res!665301) (not e!561317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994636 (= res!665301 (validKeyInArray!0 (select (arr!30294 a!3219) j!170)))))

(declare-fun b!994637 () Bool)

(assert (=> b!994637 (= e!561317 false)))

(declare-fun k!2224 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9226 0))(
  ( (MissingZero!9226 (index!39274 (_ BitVec 32))) (Found!9226 (index!39275 (_ BitVec 32))) (Intermediate!9226 (undefined!10038 Bool) (index!39276 (_ BitVec 32)) (x!86748 (_ BitVec 32))) (Undefined!9226) (MissingVacant!9226 (index!39277 (_ BitVec 32))) )
))
(declare-fun lt!440709 () SeekEntryResult!9226)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62919 (_ BitVec 32)) SeekEntryResult!9226)

(assert (=> b!994637 (= lt!440709 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994638 () Bool)

(declare-fun res!665300 () Bool)

(assert (=> b!994638 (=> (not res!665300) (not e!561317))))

(assert (=> b!994638 (= res!665300 (validKeyInArray!0 k!2224))))

(declare-fun b!994639 () Bool)

(declare-fun res!665302 () Bool)

(assert (=> b!994639 (=> (not res!665302) (not e!561317))))

(declare-fun arrayContainsKey!0 (array!62919 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994639 (= res!665302 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85762 res!665299) b!994635))

(assert (= (and b!994635 res!665298) b!994636))

(assert (= (and b!994636 res!665301) b!994638))

(assert (= (and b!994638 res!665300) b!994639))

(assert (= (and b!994639 res!665302) b!994637))

(declare-fun m!922305 () Bool)

(assert (=> b!994638 m!922305))

(declare-fun m!922307 () Bool)

(assert (=> b!994639 m!922307))

(declare-fun m!922309 () Bool)

(assert (=> b!994636 m!922309))

(assert (=> b!994636 m!922309))

(declare-fun m!922311 () Bool)

(assert (=> b!994636 m!922311))

(declare-fun m!922313 () Bool)

(assert (=> start!85762 m!922313))

(declare-fun m!922315 () Bool)

(assert (=> start!85762 m!922315))

(declare-fun m!922317 () Bool)

(assert (=> b!994637 m!922317))

(push 1)

(assert (not start!85762))

(assert (not b!994638))

(assert (not b!994637))

(assert (not b!994636))

(assert (not b!994639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

