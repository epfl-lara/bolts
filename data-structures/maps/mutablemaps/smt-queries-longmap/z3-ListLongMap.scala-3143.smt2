; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44292 () Bool)

(assert start!44292)

(declare-fun b!486761 () Bool)

(declare-fun res!290303 () Bool)

(declare-fun e!286489 () Bool)

(assert (=> b!486761 (=> (not res!290303) (not e!286489))))

(declare-datatypes ((array!31503 0))(
  ( (array!31504 (arr!15142 (Array (_ BitVec 32) (_ BitVec 64))) (size!15506 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31503)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31503 (_ BitVec 32)) Bool)

(assert (=> b!486761 (= res!290303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486762 () Bool)

(declare-fun e!286487 () Bool)

(assert (=> b!486762 (= e!286487 e!286489)))

(declare-fun res!290299 () Bool)

(assert (=> b!486762 (=> (not res!290299) (not e!286489))))

(declare-datatypes ((SeekEntryResult!3616 0))(
  ( (MissingZero!3616 (index!16643 (_ BitVec 32))) (Found!3616 (index!16644 (_ BitVec 32))) (Intermediate!3616 (undefined!4428 Bool) (index!16645 (_ BitVec 32)) (x!45799 (_ BitVec 32))) (Undefined!3616) (MissingVacant!3616 (index!16646 (_ BitVec 32))) )
))
(declare-fun lt!219865 () SeekEntryResult!3616)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486762 (= res!290299 (or (= lt!219865 (MissingZero!3616 i!1204)) (= lt!219865 (MissingVacant!3616 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31503 (_ BitVec 32)) SeekEntryResult!3616)

(assert (=> b!486762 (= lt!219865 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486763 () Bool)

(declare-fun res!290302 () Bool)

(assert (=> b!486763 (=> (not res!290302) (not e!286487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486763 (= res!290302 (validKeyInArray!0 k0!2280))))

(declare-fun b!486764 () Bool)

(declare-fun res!290298 () Bool)

(assert (=> b!486764 (=> (not res!290298) (not e!286487))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486764 (= res!290298 (and (= (size!15506 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15506 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15506 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!290301 () Bool)

(assert (=> start!44292 (=> (not res!290301) (not e!286487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44292 (= res!290301 (validMask!0 mask!3524))))

(assert (=> start!44292 e!286487))

(assert (=> start!44292 true))

(declare-fun array_inv!10916 (array!31503) Bool)

(assert (=> start!44292 (array_inv!10916 a!3235)))

(declare-fun b!486765 () Bool)

(declare-fun res!290300 () Bool)

(assert (=> b!486765 (=> (not res!290300) (not e!286487))))

(assert (=> b!486765 (= res!290300 (validKeyInArray!0 (select (arr!15142 a!3235) j!176)))))

(declare-fun b!486766 () Bool)

(declare-fun res!290297 () Bool)

(assert (=> b!486766 (=> (not res!290297) (not e!286487))))

(declare-fun arrayContainsKey!0 (array!31503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486766 (= res!290297 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486767 () Bool)

(assert (=> b!486767 (= e!286489 false)))

(declare-fun lt!219866 () Bool)

(declare-datatypes ((List!9353 0))(
  ( (Nil!9350) (Cons!9349 (h!10205 (_ BitVec 64)) (t!15589 List!9353)) )
))
(declare-fun arrayNoDuplicates!0 (array!31503 (_ BitVec 32) List!9353) Bool)

(assert (=> b!486767 (= lt!219866 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9350))))

(assert (= (and start!44292 res!290301) b!486764))

(assert (= (and b!486764 res!290298) b!486765))

(assert (= (and b!486765 res!290300) b!486763))

(assert (= (and b!486763 res!290302) b!486766))

(assert (= (and b!486766 res!290297) b!486762))

(assert (= (and b!486762 res!290299) b!486761))

(assert (= (and b!486761 res!290303) b!486767))

(declare-fun m!466663 () Bool)

(assert (=> b!486763 m!466663))

(declare-fun m!466665 () Bool)

(assert (=> start!44292 m!466665))

(declare-fun m!466667 () Bool)

(assert (=> start!44292 m!466667))

(declare-fun m!466669 () Bool)

(assert (=> b!486761 m!466669))

(declare-fun m!466671 () Bool)

(assert (=> b!486766 m!466671))

(declare-fun m!466673 () Bool)

(assert (=> b!486767 m!466673))

(declare-fun m!466675 () Bool)

(assert (=> b!486765 m!466675))

(assert (=> b!486765 m!466675))

(declare-fun m!466677 () Bool)

(assert (=> b!486765 m!466677))

(declare-fun m!466679 () Bool)

(assert (=> b!486762 m!466679))

(check-sat (not b!486765) (not b!486767) (not b!486763) (not start!44292) (not b!486761) (not b!486762) (not b!486766))
(check-sat)
