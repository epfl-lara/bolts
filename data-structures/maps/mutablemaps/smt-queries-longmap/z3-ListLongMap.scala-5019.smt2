; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68646 () Bool)

(assert start!68646)

(declare-fun b!798435 () Bool)

(declare-fun e!442892 () Bool)

(declare-fun e!442893 () Bool)

(assert (=> b!798435 (= e!442892 e!442893)))

(declare-fun res!543133 () Bool)

(assert (=> b!798435 (=> (not res!543133) (not e!442893))))

(declare-datatypes ((SeekEntryResult!8368 0))(
  ( (MissingZero!8368 (index!35839 (_ BitVec 32))) (Found!8368 (index!35840 (_ BitVec 32))) (Intermediate!8368 (undefined!9180 Bool) (index!35841 (_ BitVec 32)) (x!66751 (_ BitVec 32))) (Undefined!8368) (MissingVacant!8368 (index!35842 (_ BitVec 32))) )
))
(declare-fun lt!356446 () SeekEntryResult!8368)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798435 (= res!543133 (or (= lt!356446 (MissingZero!8368 i!1163)) (= lt!356446 (MissingVacant!8368 i!1163))))))

(declare-datatypes ((array!43387 0))(
  ( (array!43388 (arr!20770 (Array (_ BitVec 32) (_ BitVec 64))) (size!21191 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43387)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43387 (_ BitVec 32)) SeekEntryResult!8368)

(assert (=> b!798435 (= lt!356446 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!798436 () Bool)

(declare-fun e!442894 () Bool)

(assert (=> b!798436 (= e!442893 e!442894)))

(declare-fun res!543124 () Bool)

(assert (=> b!798436 (=> (not res!543124) (not e!442894))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356449 () (_ BitVec 64))

(declare-fun lt!356448 () array!43387)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43387 (_ BitVec 32)) SeekEntryResult!8368)

(assert (=> b!798436 (= res!543124 (= (seekEntryOrOpen!0 lt!356449 lt!356448 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356449 lt!356448 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798436 (= lt!356449 (select (store (arr!20770 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798436 (= lt!356448 (array!43388 (store (arr!20770 a!3170) i!1163 k0!2044) (size!21191 a!3170)))))

(declare-fun b!798437 () Bool)

(declare-fun res!543132 () Bool)

(assert (=> b!798437 (=> (not res!543132) (not e!442893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43387 (_ BitVec 32)) Bool)

(assert (=> b!798437 (= res!543132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun lt!356447 () SeekEntryResult!8368)

(declare-fun lt!356445 () SeekEntryResult!8368)

(declare-fun b!798438 () Bool)

(assert (=> b!798438 (= e!442894 (and (= lt!356445 lt!356447) (= lt!356447 (Found!8368 j!153)) (not (= (select (arr!20770 a!3170) index!1236) (select (arr!20770 a!3170) j!153))) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798438 (= lt!356447 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20770 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798438 (= lt!356445 (seekEntryOrOpen!0 (select (arr!20770 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798439 () Bool)

(declare-fun res!543125 () Bool)

(assert (=> b!798439 (=> (not res!543125) (not e!442892))))

(declare-fun arrayContainsKey!0 (array!43387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798439 (= res!543125 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798440 () Bool)

(declare-fun res!543129 () Bool)

(assert (=> b!798440 (=> (not res!543129) (not e!442893))))

(assert (=> b!798440 (= res!543129 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21191 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20770 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21191 a!3170)) (= (select (arr!20770 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!543127 () Bool)

(assert (=> start!68646 (=> (not res!543127) (not e!442892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68646 (= res!543127 (validMask!0 mask!3266))))

(assert (=> start!68646 e!442892))

(assert (=> start!68646 true))

(declare-fun array_inv!16544 (array!43387) Bool)

(assert (=> start!68646 (array_inv!16544 a!3170)))

(declare-fun b!798441 () Bool)

(declare-fun res!543126 () Bool)

(assert (=> b!798441 (=> (not res!543126) (not e!442892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798441 (= res!543126 (validKeyInArray!0 (select (arr!20770 a!3170) j!153)))))

(declare-fun b!798442 () Bool)

(declare-fun res!543130 () Bool)

(assert (=> b!798442 (=> (not res!543130) (not e!442893))))

(declare-datatypes ((List!14786 0))(
  ( (Nil!14783) (Cons!14782 (h!15911 (_ BitVec 64)) (t!21109 List!14786)) )
))
(declare-fun arrayNoDuplicates!0 (array!43387 (_ BitVec 32) List!14786) Bool)

(assert (=> b!798442 (= res!543130 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14783))))

(declare-fun b!798443 () Bool)

(declare-fun res!543128 () Bool)

(assert (=> b!798443 (=> (not res!543128) (not e!442892))))

(assert (=> b!798443 (= res!543128 (and (= (size!21191 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21191 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21191 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798444 () Bool)

(declare-fun res!543131 () Bool)

(assert (=> b!798444 (=> (not res!543131) (not e!442892))))

(assert (=> b!798444 (= res!543131 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68646 res!543127) b!798443))

(assert (= (and b!798443 res!543128) b!798441))

(assert (= (and b!798441 res!543126) b!798444))

(assert (= (and b!798444 res!543131) b!798439))

(assert (= (and b!798439 res!543125) b!798435))

(assert (= (and b!798435 res!543133) b!798437))

(assert (= (and b!798437 res!543132) b!798442))

(assert (= (and b!798442 res!543130) b!798440))

(assert (= (and b!798440 res!543129) b!798436))

(assert (= (and b!798436 res!543124) b!798438))

(declare-fun m!739459 () Bool)

(assert (=> b!798439 m!739459))

(declare-fun m!739461 () Bool)

(assert (=> b!798442 m!739461))

(declare-fun m!739463 () Bool)

(assert (=> b!798435 m!739463))

(declare-fun m!739465 () Bool)

(assert (=> b!798437 m!739465))

(declare-fun m!739467 () Bool)

(assert (=> b!798441 m!739467))

(assert (=> b!798441 m!739467))

(declare-fun m!739469 () Bool)

(assert (=> b!798441 m!739469))

(declare-fun m!739471 () Bool)

(assert (=> b!798436 m!739471))

(declare-fun m!739473 () Bool)

(assert (=> b!798436 m!739473))

(declare-fun m!739475 () Bool)

(assert (=> b!798436 m!739475))

(declare-fun m!739477 () Bool)

(assert (=> b!798436 m!739477))

(declare-fun m!739479 () Bool)

(assert (=> b!798438 m!739479))

(assert (=> b!798438 m!739467))

(assert (=> b!798438 m!739467))

(declare-fun m!739481 () Bool)

(assert (=> b!798438 m!739481))

(assert (=> b!798438 m!739467))

(declare-fun m!739483 () Bool)

(assert (=> b!798438 m!739483))

(declare-fun m!739485 () Bool)

(assert (=> b!798440 m!739485))

(declare-fun m!739487 () Bool)

(assert (=> b!798440 m!739487))

(declare-fun m!739489 () Bool)

(assert (=> start!68646 m!739489))

(declare-fun m!739491 () Bool)

(assert (=> start!68646 m!739491))

(declare-fun m!739493 () Bool)

(assert (=> b!798444 m!739493))

(check-sat (not b!798441) (not b!798435) (not b!798437) (not b!798439) (not b!798436) (not b!798444) (not b!798442) (not start!68646) (not b!798438))
(check-sat)
