; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85742 () Bool)

(assert start!85742)

(declare-fun b!994485 () Bool)

(declare-fun e!561256 () Bool)

(assert (=> b!994485 (= e!561256 false)))

(declare-datatypes ((array!62899 0))(
  ( (array!62900 (arr!30284 (Array (_ BitVec 32) (_ BitVec 64))) (size!30787 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62899)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9216 0))(
  ( (MissingZero!9216 (index!39234 (_ BitVec 32))) (Found!9216 (index!39235 (_ BitVec 32))) (Intermediate!9216 (undefined!10028 Bool) (index!39236 (_ BitVec 32)) (x!86714 (_ BitVec 32))) (Undefined!9216) (MissingVacant!9216 (index!39237 (_ BitVec 32))) )
))
(declare-fun lt!440679 () SeekEntryResult!9216)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62899 (_ BitVec 32)) SeekEntryResult!9216)

(assert (=> b!994485 (= lt!440679 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994486 () Bool)

(declare-fun res!665151 () Bool)

(assert (=> b!994486 (=> (not res!665151) (not e!561256))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994486 (= res!665151 (validKeyInArray!0 (select (arr!30284 a!3219) j!170)))))

(declare-fun res!665149 () Bool)

(assert (=> start!85742 (=> (not res!665149) (not e!561256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85742 (= res!665149 (validMask!0 mask!3464))))

(assert (=> start!85742 e!561256))

(declare-fun array_inv!23274 (array!62899) Bool)

(assert (=> start!85742 (array_inv!23274 a!3219)))

(assert (=> start!85742 true))

(declare-fun b!994487 () Bool)

(declare-fun res!665148 () Bool)

(assert (=> b!994487 (=> (not res!665148) (not e!561256))))

(declare-fun arrayContainsKey!0 (array!62899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994487 (= res!665148 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994488 () Bool)

(declare-fun res!665150 () Bool)

(assert (=> b!994488 (=> (not res!665150) (not e!561256))))

(assert (=> b!994488 (= res!665150 (validKeyInArray!0 k0!2224))))

(declare-fun b!994489 () Bool)

(declare-fun res!665152 () Bool)

(assert (=> b!994489 (=> (not res!665152) (not e!561256))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994489 (= res!665152 (and (= (size!30787 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30787 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30787 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85742 res!665149) b!994489))

(assert (= (and b!994489 res!665152) b!994486))

(assert (= (and b!994486 res!665151) b!994488))

(assert (= (and b!994488 res!665150) b!994487))

(assert (= (and b!994487 res!665148) b!994485))

(declare-fun m!922165 () Bool)

(assert (=> b!994487 m!922165))

(declare-fun m!922167 () Bool)

(assert (=> start!85742 m!922167))

(declare-fun m!922169 () Bool)

(assert (=> start!85742 m!922169))

(declare-fun m!922171 () Bool)

(assert (=> b!994485 m!922171))

(declare-fun m!922173 () Bool)

(assert (=> b!994488 m!922173))

(declare-fun m!922175 () Bool)

(assert (=> b!994486 m!922175))

(assert (=> b!994486 m!922175))

(declare-fun m!922177 () Bool)

(assert (=> b!994486 m!922177))

(check-sat (not b!994486) (not start!85742) (not b!994488) (not b!994487) (not b!994485))
