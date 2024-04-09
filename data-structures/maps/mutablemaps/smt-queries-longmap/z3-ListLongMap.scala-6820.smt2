; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85778 () Bool)

(assert start!85778)

(declare-fun b!994765 () Bool)

(declare-fun res!665429 () Bool)

(declare-fun e!561371 () Bool)

(assert (=> b!994765 (=> (not res!665429) (not e!561371))))

(declare-datatypes ((array!62935 0))(
  ( (array!62936 (arr!30302 (Array (_ BitVec 32) (_ BitVec 64))) (size!30805 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62935)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62935 (_ BitVec 32)) Bool)

(assert (=> b!994765 (= res!665429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!665430 () Bool)

(declare-fun e!561370 () Bool)

(assert (=> start!85778 (=> (not res!665430) (not e!561370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85778 (= res!665430 (validMask!0 mask!3464))))

(assert (=> start!85778 e!561370))

(declare-fun array_inv!23292 (array!62935) Bool)

(assert (=> start!85778 (array_inv!23292 a!3219)))

(assert (=> start!85778 true))

(declare-fun b!994766 () Bool)

(declare-fun res!665431 () Bool)

(assert (=> b!994766 (=> (not res!665431) (not e!561370))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994766 (= res!665431 (validKeyInArray!0 (select (arr!30302 a!3219) j!170)))))

(declare-fun b!994767 () Bool)

(declare-fun res!665432 () Bool)

(assert (=> b!994767 (=> (not res!665432) (not e!561370))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!994767 (= res!665432 (validKeyInArray!0 k0!2224))))

(declare-fun b!994768 () Bool)

(assert (=> b!994768 (= e!561370 e!561371)))

(declare-fun res!665433 () Bool)

(assert (=> b!994768 (=> (not res!665433) (not e!561371))))

(declare-datatypes ((SeekEntryResult!9234 0))(
  ( (MissingZero!9234 (index!39306 (_ BitVec 32))) (Found!9234 (index!39307 (_ BitVec 32))) (Intermediate!9234 (undefined!10046 Bool) (index!39308 (_ BitVec 32)) (x!86780 (_ BitVec 32))) (Undefined!9234) (MissingVacant!9234 (index!39309 (_ BitVec 32))) )
))
(declare-fun lt!440733 () SeekEntryResult!9234)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994768 (= res!665433 (or (= lt!440733 (MissingVacant!9234 i!1194)) (= lt!440733 (MissingZero!9234 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62935 (_ BitVec 32)) SeekEntryResult!9234)

(assert (=> b!994768 (= lt!440733 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!994769 () Bool)

(assert (=> b!994769 (= e!561371 (bvsgt #b00000000000000000000000000000000 (size!30805 a!3219)))))

(declare-fun b!994770 () Bool)

(declare-fun res!665428 () Bool)

(assert (=> b!994770 (=> (not res!665428) (not e!561370))))

(declare-fun arrayContainsKey!0 (array!62935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994770 (= res!665428 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994771 () Bool)

(declare-fun res!665434 () Bool)

(assert (=> b!994771 (=> (not res!665434) (not e!561370))))

(assert (=> b!994771 (= res!665434 (and (= (size!30805 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30805 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30805 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85778 res!665430) b!994771))

(assert (= (and b!994771 res!665434) b!994766))

(assert (= (and b!994766 res!665431) b!994767))

(assert (= (and b!994767 res!665432) b!994770))

(assert (= (and b!994770 res!665428) b!994768))

(assert (= (and b!994768 res!665433) b!994765))

(assert (= (and b!994765 res!665429) b!994769))

(declare-fun m!922419 () Bool)

(assert (=> start!85778 m!922419))

(declare-fun m!922421 () Bool)

(assert (=> start!85778 m!922421))

(declare-fun m!922423 () Bool)

(assert (=> b!994768 m!922423))

(declare-fun m!922425 () Bool)

(assert (=> b!994766 m!922425))

(assert (=> b!994766 m!922425))

(declare-fun m!922427 () Bool)

(assert (=> b!994766 m!922427))

(declare-fun m!922429 () Bool)

(assert (=> b!994765 m!922429))

(declare-fun m!922431 () Bool)

(assert (=> b!994767 m!922431))

(declare-fun m!922433 () Bool)

(assert (=> b!994770 m!922433))

(check-sat (not b!994770) (not b!994767) (not b!994765) (not start!85778) (not b!994766) (not b!994768))
(check-sat)
