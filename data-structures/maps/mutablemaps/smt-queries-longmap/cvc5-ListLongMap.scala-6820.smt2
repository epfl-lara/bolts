; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85776 () Bool)

(assert start!85776)

(declare-fun b!994744 () Bool)

(declare-fun res!665410 () Bool)

(declare-fun e!561361 () Bool)

(assert (=> b!994744 (=> (not res!665410) (not e!561361))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994744 (= res!665410 (validKeyInArray!0 k!2224))))

(declare-fun b!994745 () Bool)

(declare-fun res!665408 () Bool)

(declare-fun e!561362 () Bool)

(assert (=> b!994745 (=> (not res!665408) (not e!561362))))

(declare-datatypes ((array!62933 0))(
  ( (array!62934 (arr!30301 (Array (_ BitVec 32) (_ BitVec 64))) (size!30804 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62933)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62933 (_ BitVec 32)) Bool)

(assert (=> b!994745 (= res!665408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!994746 () Bool)

(declare-fun res!665412 () Bool)

(assert (=> b!994746 (=> (not res!665412) (not e!561361))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994746 (= res!665412 (validKeyInArray!0 (select (arr!30301 a!3219) j!170)))))

(declare-fun b!994747 () Bool)

(assert (=> b!994747 (= e!561362 (bvsgt #b00000000000000000000000000000000 (size!30804 a!3219)))))

(declare-fun b!994748 () Bool)

(assert (=> b!994748 (= e!561361 e!561362)))

(declare-fun res!665411 () Bool)

(assert (=> b!994748 (=> (not res!665411) (not e!561362))))

(declare-datatypes ((SeekEntryResult!9233 0))(
  ( (MissingZero!9233 (index!39302 (_ BitVec 32))) (Found!9233 (index!39303 (_ BitVec 32))) (Intermediate!9233 (undefined!10045 Bool) (index!39304 (_ BitVec 32)) (x!86779 (_ BitVec 32))) (Undefined!9233) (MissingVacant!9233 (index!39305 (_ BitVec 32))) )
))
(declare-fun lt!440730 () SeekEntryResult!9233)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994748 (= res!665411 (or (= lt!440730 (MissingVacant!9233 i!1194)) (= lt!440730 (MissingZero!9233 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62933 (_ BitVec 32)) SeekEntryResult!9233)

(assert (=> b!994748 (= lt!440730 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994749 () Bool)

(declare-fun res!665407 () Bool)

(assert (=> b!994749 (=> (not res!665407) (not e!561361))))

(declare-fun arrayContainsKey!0 (array!62933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994749 (= res!665407 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994750 () Bool)

(declare-fun res!665413 () Bool)

(assert (=> b!994750 (=> (not res!665413) (not e!561361))))

(assert (=> b!994750 (= res!665413 (and (= (size!30804 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30804 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30804 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!665409 () Bool)

(assert (=> start!85776 (=> (not res!665409) (not e!561361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85776 (= res!665409 (validMask!0 mask!3464))))

(assert (=> start!85776 e!561361))

(declare-fun array_inv!23291 (array!62933) Bool)

(assert (=> start!85776 (array_inv!23291 a!3219)))

(assert (=> start!85776 true))

(assert (= (and start!85776 res!665409) b!994750))

(assert (= (and b!994750 res!665413) b!994746))

(assert (= (and b!994746 res!665412) b!994744))

(assert (= (and b!994744 res!665410) b!994749))

(assert (= (and b!994749 res!665407) b!994748))

(assert (= (and b!994748 res!665411) b!994745))

(assert (= (and b!994745 res!665408) b!994747))

(declare-fun m!922403 () Bool)

(assert (=> b!994744 m!922403))

(declare-fun m!922405 () Bool)

(assert (=> start!85776 m!922405))

(declare-fun m!922407 () Bool)

(assert (=> start!85776 m!922407))

(declare-fun m!922409 () Bool)

(assert (=> b!994748 m!922409))

(declare-fun m!922411 () Bool)

(assert (=> b!994749 m!922411))

(declare-fun m!922413 () Bool)

(assert (=> b!994746 m!922413))

(assert (=> b!994746 m!922413))

(declare-fun m!922415 () Bool)

(assert (=> b!994746 m!922415))

(declare-fun m!922417 () Bool)

(assert (=> b!994745 m!922417))

(push 1)

