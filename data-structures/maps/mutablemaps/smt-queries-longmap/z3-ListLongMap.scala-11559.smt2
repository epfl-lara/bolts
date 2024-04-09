; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134666 () Bool)

(assert start!134666)

(declare-fun b!1571171 () Bool)

(declare-fun res!1073548 () Bool)

(declare-fun e!876074 () Bool)

(assert (=> b!1571171 (=> (not res!1073548) (not e!876074))))

(declare-datatypes ((array!104811 0))(
  ( (array!104812 (arr!50579 (Array (_ BitVec 32) (_ BitVec 64))) (size!51130 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104811)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571171 (= res!1073548 (= (size!51130 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571172 () Bool)

(declare-fun res!1073547 () Bool)

(assert (=> b!1571172 (=> (not res!1073547) (not e!876074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104811 (_ BitVec 32)) Bool)

(assert (=> b!1571172 (= res!1073547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571174 () Bool)

(assert (=> b!1571174 (= e!876074 false)))

(declare-fun k0!2731 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13532 0))(
  ( (MissingZero!13532 (index!56525 (_ BitVec 32))) (Found!13532 (index!56526 (_ BitVec 32))) (Intermediate!13532 (undefined!14344 Bool) (index!56527 (_ BitVec 32)) (x!141231 (_ BitVec 32))) (Undefined!13532) (MissingVacant!13532 (index!56528 (_ BitVec 32))) )
))
(declare-fun lt!673462 () SeekEntryResult!13532)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104811 (_ BitVec 32)) SeekEntryResult!13532)

(assert (=> b!1571174 (= lt!673462 (seekEntryOrOpen!0 k0!2731 a!3462 mask!4043))))

(declare-fun res!1073549 () Bool)

(assert (=> start!134666 (=> (not res!1073549) (not e!876074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134666 (= res!1073549 (validMask!0 mask!4043))))

(assert (=> start!134666 e!876074))

(assert (=> start!134666 true))

(declare-fun array_inv!39224 (array!104811) Bool)

(assert (=> start!134666 (array_inv!39224 a!3462)))

(declare-fun b!1571173 () Bool)

(declare-fun res!1073546 () Bool)

(assert (=> b!1571173 (=> (not res!1073546) (not e!876074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571173 (= res!1073546 (validKeyInArray!0 k0!2731))))

(assert (= (and start!134666 res!1073549) b!1571171))

(assert (= (and b!1571171 res!1073548) b!1571172))

(assert (= (and b!1571172 res!1073547) b!1571173))

(assert (= (and b!1571173 res!1073546) b!1571174))

(declare-fun m!1445201 () Bool)

(assert (=> b!1571172 m!1445201))

(declare-fun m!1445203 () Bool)

(assert (=> b!1571174 m!1445203))

(declare-fun m!1445205 () Bool)

(assert (=> start!134666 m!1445205))

(declare-fun m!1445207 () Bool)

(assert (=> start!134666 m!1445207))

(declare-fun m!1445209 () Bool)

(assert (=> b!1571173 m!1445209))

(check-sat (not b!1571173) (not start!134666) (not b!1571174) (not b!1571172))
(check-sat)
