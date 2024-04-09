; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68838 () Bool)

(assert start!68838)

(declare-fun b!802013 () Bool)

(declare-fun res!546707 () Bool)

(declare-fun e!444528 () Bool)

(assert (=> b!802013 (=> (not res!546707) (not e!444528))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802013 (= res!546707 (validKeyInArray!0 k0!2044))))

(declare-fun b!802014 () Bool)

(declare-fun e!444527 () Bool)

(assert (=> b!802014 (= e!444528 e!444527)))

(declare-fun res!546705 () Bool)

(assert (=> b!802014 (=> (not res!546705) (not e!444527))))

(declare-datatypes ((SeekEntryResult!8464 0))(
  ( (MissingZero!8464 (index!36223 (_ BitVec 32))) (Found!8464 (index!36224 (_ BitVec 32))) (Intermediate!8464 (undefined!9276 Bool) (index!36225 (_ BitVec 32)) (x!67103 (_ BitVec 32))) (Undefined!8464) (MissingVacant!8464 (index!36226 (_ BitVec 32))) )
))
(declare-fun lt!358635 () SeekEntryResult!8464)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802014 (= res!546705 (or (= lt!358635 (MissingZero!8464 i!1163)) (= lt!358635 (MissingVacant!8464 i!1163))))))

(declare-datatypes ((array!43579 0))(
  ( (array!43580 (arr!20866 (Array (_ BitVec 32) (_ BitVec 64))) (size!21287 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43579)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43579 (_ BitVec 32)) SeekEntryResult!8464)

(assert (=> b!802014 (= lt!358635 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802015 () Bool)

(declare-fun res!546704 () Bool)

(assert (=> b!802015 (=> (not res!546704) (not e!444527))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802015 (= res!546704 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21287 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20866 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21287 a!3170)) (= (select (arr!20866 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802016 () Bool)

(declare-fun res!546711 () Bool)

(assert (=> b!802016 (=> (not res!546711) (not e!444528))))

(declare-fun arrayContainsKey!0 (array!43579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802016 (= res!546711 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!546712 () Bool)

(assert (=> start!68838 (=> (not res!546712) (not e!444528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68838 (= res!546712 (validMask!0 mask!3266))))

(assert (=> start!68838 e!444528))

(assert (=> start!68838 true))

(declare-fun array_inv!16640 (array!43579) Bool)

(assert (=> start!68838 (array_inv!16640 a!3170)))

(declare-fun b!802017 () Bool)

(declare-fun res!546710 () Bool)

(assert (=> b!802017 (=> (not res!546710) (not e!444528))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802017 (= res!546710 (and (= (size!21287 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21287 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21287 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802018 () Bool)

(declare-fun res!546702 () Bool)

(assert (=> b!802018 (=> (not res!546702) (not e!444527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43579 (_ BitVec 32)) Bool)

(assert (=> b!802018 (= res!546702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802019 () Bool)

(declare-fun res!546706 () Bool)

(assert (=> b!802019 (=> (not res!546706) (not e!444528))))

(assert (=> b!802019 (= res!546706 (validKeyInArray!0 (select (arr!20866 a!3170) j!153)))))

(declare-fun e!444529 () Bool)

(declare-fun b!802020 () Bool)

(assert (=> b!802020 (= e!444529 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!358637 () (_ BitVec 32))

(declare-fun lt!358638 () (_ BitVec 64))

(declare-fun lt!358636 () array!43579)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43579 (_ BitVec 32)) SeekEntryResult!8464)

(assert (=> b!802020 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358637 vacantAfter!23 lt!358638 lt!358636 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358637 vacantBefore!23 (select (arr!20866 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27470 0))(
  ( (Unit!27471) )
))
(declare-fun lt!358639 () Unit!27470)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27470)

(assert (=> b!802020 (= lt!358639 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358637 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802020 (= lt!358637 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802021 () Bool)

(declare-fun res!546708 () Bool)

(assert (=> b!802021 (=> (not res!546708) (not e!444527))))

(declare-datatypes ((List!14882 0))(
  ( (Nil!14879) (Cons!14878 (h!16007 (_ BitVec 64)) (t!21205 List!14882)) )
))
(declare-fun arrayNoDuplicates!0 (array!43579 (_ BitVec 32) List!14882) Bool)

(assert (=> b!802021 (= res!546708 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14879))))

(declare-fun b!802022 () Bool)

(declare-fun e!444526 () Bool)

(assert (=> b!802022 (= e!444527 e!444526)))

(declare-fun res!546709 () Bool)

(assert (=> b!802022 (=> (not res!546709) (not e!444526))))

(assert (=> b!802022 (= res!546709 (= (seekEntryOrOpen!0 lt!358638 lt!358636 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358638 lt!358636 mask!3266)))))

(assert (=> b!802022 (= lt!358638 (select (store (arr!20866 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802022 (= lt!358636 (array!43580 (store (arr!20866 a!3170) i!1163 k0!2044) (size!21287 a!3170)))))

(declare-fun b!802023 () Bool)

(assert (=> b!802023 (= e!444526 e!444529)))

(declare-fun res!546703 () Bool)

(assert (=> b!802023 (=> (not res!546703) (not e!444529))))

(declare-fun lt!358633 () SeekEntryResult!8464)

(declare-fun lt!358634 () SeekEntryResult!8464)

(assert (=> b!802023 (= res!546703 (and (= lt!358634 lt!358633) (= lt!358633 (Found!8464 j!153)) (not (= (select (arr!20866 a!3170) index!1236) (select (arr!20866 a!3170) j!153)))))))

(assert (=> b!802023 (= lt!358633 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20866 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802023 (= lt!358634 (seekEntryOrOpen!0 (select (arr!20866 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68838 res!546712) b!802017))

(assert (= (and b!802017 res!546710) b!802019))

(assert (= (and b!802019 res!546706) b!802013))

(assert (= (and b!802013 res!546707) b!802016))

(assert (= (and b!802016 res!546711) b!802014))

(assert (= (and b!802014 res!546705) b!802018))

(assert (= (and b!802018 res!546702) b!802021))

(assert (= (and b!802021 res!546708) b!802015))

(assert (= (and b!802015 res!546704) b!802022))

(assert (= (and b!802022 res!546709) b!802023))

(assert (= (and b!802023 res!546703) b!802020))

(declare-fun m!743469 () Bool)

(assert (=> b!802020 m!743469))

(declare-fun m!743471 () Bool)

(assert (=> b!802020 m!743471))

(assert (=> b!802020 m!743469))

(declare-fun m!743473 () Bool)

(assert (=> b!802020 m!743473))

(declare-fun m!743475 () Bool)

(assert (=> b!802020 m!743475))

(declare-fun m!743477 () Bool)

(assert (=> b!802020 m!743477))

(declare-fun m!743479 () Bool)

(assert (=> b!802022 m!743479))

(declare-fun m!743481 () Bool)

(assert (=> b!802022 m!743481))

(declare-fun m!743483 () Bool)

(assert (=> b!802022 m!743483))

(declare-fun m!743485 () Bool)

(assert (=> b!802022 m!743485))

(declare-fun m!743487 () Bool)

(assert (=> start!68838 m!743487))

(declare-fun m!743489 () Bool)

(assert (=> start!68838 m!743489))

(declare-fun m!743491 () Bool)

(assert (=> b!802018 m!743491))

(assert (=> b!802019 m!743469))

(assert (=> b!802019 m!743469))

(declare-fun m!743493 () Bool)

(assert (=> b!802019 m!743493))

(declare-fun m!743495 () Bool)

(assert (=> b!802014 m!743495))

(declare-fun m!743497 () Bool)

(assert (=> b!802023 m!743497))

(assert (=> b!802023 m!743469))

(assert (=> b!802023 m!743469))

(declare-fun m!743499 () Bool)

(assert (=> b!802023 m!743499))

(assert (=> b!802023 m!743469))

(declare-fun m!743501 () Bool)

(assert (=> b!802023 m!743501))

(declare-fun m!743503 () Bool)

(assert (=> b!802013 m!743503))

(declare-fun m!743505 () Bool)

(assert (=> b!802015 m!743505))

(declare-fun m!743507 () Bool)

(assert (=> b!802015 m!743507))

(declare-fun m!743509 () Bool)

(assert (=> b!802016 m!743509))

(declare-fun m!743511 () Bool)

(assert (=> b!802021 m!743511))

(check-sat (not b!802016) (not b!802019) (not b!802018) (not b!802021) (not b!802022) (not b!802014) (not start!68838) (not b!802023) (not b!802020) (not b!802013))
(check-sat)
