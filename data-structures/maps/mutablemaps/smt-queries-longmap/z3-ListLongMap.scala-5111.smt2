; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69348 () Bool)

(assert start!69348)

(declare-fun b!808457 () Bool)

(declare-fun res!552559 () Bool)

(declare-fun e!447570 () Bool)

(assert (=> b!808457 (=> (not res!552559) (not e!447570))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43948 0))(
  ( (array!43949 (arr!21046 (Array (_ BitVec 32) (_ BitVec 64))) (size!21467 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43948)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!808457 (= res!552559 (and (= (size!21467 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21467 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21467 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808458 () Bool)

(declare-fun res!552555 () Bool)

(assert (=> b!808458 (=> (not res!552555) (not e!447570))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808458 (= res!552555 (validKeyInArray!0 k0!2044))))

(declare-fun b!808459 () Bool)

(declare-fun e!447568 () Bool)

(declare-fun e!447567 () Bool)

(assert (=> b!808459 (= e!447568 e!447567)))

(declare-fun res!552557 () Bool)

(assert (=> b!808459 (=> (not res!552557) (not e!447567))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8644 0))(
  ( (MissingZero!8644 (index!36943 (_ BitVec 32))) (Found!8644 (index!36944 (_ BitVec 32))) (Intermediate!8644 (undefined!9456 Bool) (index!36945 (_ BitVec 32)) (x!67775 (_ BitVec 32))) (Undefined!8644) (MissingVacant!8644 (index!36946 (_ BitVec 32))) )
))
(declare-fun lt!362283 () SeekEntryResult!8644)

(declare-fun lt!362285 () SeekEntryResult!8644)

(assert (=> b!808459 (= res!552557 (and (= lt!362283 lt!362285) (= lt!362285 (Found!8644 j!153)) (not (= (select (arr!21046 a!3170) index!1236) (select (arr!21046 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43948 (_ BitVec 32)) SeekEntryResult!8644)

(assert (=> b!808459 (= lt!362285 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21046 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43948 (_ BitVec 32)) SeekEntryResult!8644)

(assert (=> b!808459 (= lt!362283 (seekEntryOrOpen!0 (select (arr!21046 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808461 () Bool)

(declare-fun e!447569 () Bool)

(assert (=> b!808461 (= e!447570 e!447569)))

(declare-fun res!552561 () Bool)

(assert (=> b!808461 (=> (not res!552561) (not e!447569))))

(declare-fun lt!362287 () SeekEntryResult!8644)

(assert (=> b!808461 (= res!552561 (or (= lt!362287 (MissingZero!8644 i!1163)) (= lt!362287 (MissingVacant!8644 i!1163))))))

(assert (=> b!808461 (= lt!362287 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!808462 () Bool)

(declare-fun res!552560 () Bool)

(assert (=> b!808462 (=> (not res!552560) (not e!447570))))

(declare-fun arrayContainsKey!0 (array!43948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808462 (= res!552560 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808463 () Bool)

(declare-fun res!552554 () Bool)

(assert (=> b!808463 (=> (not res!552554) (not e!447569))))

(declare-datatypes ((List!15062 0))(
  ( (Nil!15059) (Cons!15058 (h!16187 (_ BitVec 64)) (t!21385 List!15062)) )
))
(declare-fun arrayNoDuplicates!0 (array!43948 (_ BitVec 32) List!15062) Bool)

(assert (=> b!808463 (= res!552554 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15059))))

(declare-fun b!808464 () Bool)

(declare-fun res!552562 () Bool)

(assert (=> b!808464 (=> (not res!552562) (not e!447569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43948 (_ BitVec 32)) Bool)

(assert (=> b!808464 (= res!552562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808465 () Bool)

(assert (=> b!808465 (= e!447569 e!447568)))

(declare-fun res!552552 () Bool)

(assert (=> b!808465 (=> (not res!552552) (not e!447568))))

(declare-fun lt!362282 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362284 () array!43948)

(assert (=> b!808465 (= res!552552 (= (seekEntryOrOpen!0 lt!362282 lt!362284 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362282 lt!362284 mask!3266)))))

(assert (=> b!808465 (= lt!362282 (select (store (arr!21046 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!808465 (= lt!362284 (array!43949 (store (arr!21046 a!3170) i!1163 k0!2044) (size!21467 a!3170)))))

(declare-fun res!552556 () Bool)

(assert (=> start!69348 (=> (not res!552556) (not e!447570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69348 (= res!552556 (validMask!0 mask!3266))))

(assert (=> start!69348 e!447570))

(assert (=> start!69348 true))

(declare-fun array_inv!16820 (array!43948) Bool)

(assert (=> start!69348 (array_inv!16820 a!3170)))

(declare-fun b!808460 () Bool)

(declare-fun res!552553 () Bool)

(assert (=> b!808460 (=> (not res!552553) (not e!447569))))

(assert (=> b!808460 (= res!552553 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21467 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21046 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21467 a!3170)) (= (select (arr!21046 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808466 () Bool)

(assert (=> b!808466 (= e!447567 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000)))))

(declare-fun lt!362286 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808466 (= lt!362286 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808467 () Bool)

(declare-fun res!552558 () Bool)

(assert (=> b!808467 (=> (not res!552558) (not e!447570))))

(assert (=> b!808467 (= res!552558 (validKeyInArray!0 (select (arr!21046 a!3170) j!153)))))

(assert (= (and start!69348 res!552556) b!808457))

(assert (= (and b!808457 res!552559) b!808467))

(assert (= (and b!808467 res!552558) b!808458))

(assert (= (and b!808458 res!552555) b!808462))

(assert (= (and b!808462 res!552560) b!808461))

(assert (= (and b!808461 res!552561) b!808464))

(assert (= (and b!808464 res!552562) b!808463))

(assert (= (and b!808463 res!552554) b!808460))

(assert (= (and b!808460 res!552553) b!808465))

(assert (= (and b!808465 res!552552) b!808459))

(assert (= (and b!808459 res!552557) b!808466))

(declare-fun m!750693 () Bool)

(assert (=> b!808466 m!750693))

(declare-fun m!750695 () Bool)

(assert (=> b!808463 m!750695))

(declare-fun m!750697 () Bool)

(assert (=> b!808462 m!750697))

(declare-fun m!750699 () Bool)

(assert (=> b!808460 m!750699))

(declare-fun m!750701 () Bool)

(assert (=> b!808460 m!750701))

(declare-fun m!750703 () Bool)

(assert (=> start!69348 m!750703))

(declare-fun m!750705 () Bool)

(assert (=> start!69348 m!750705))

(declare-fun m!750707 () Bool)

(assert (=> b!808467 m!750707))

(assert (=> b!808467 m!750707))

(declare-fun m!750709 () Bool)

(assert (=> b!808467 m!750709))

(declare-fun m!750711 () Bool)

(assert (=> b!808464 m!750711))

(declare-fun m!750713 () Bool)

(assert (=> b!808465 m!750713))

(declare-fun m!750715 () Bool)

(assert (=> b!808465 m!750715))

(declare-fun m!750717 () Bool)

(assert (=> b!808465 m!750717))

(declare-fun m!750719 () Bool)

(assert (=> b!808465 m!750719))

(declare-fun m!750721 () Bool)

(assert (=> b!808458 m!750721))

(declare-fun m!750723 () Bool)

(assert (=> b!808461 m!750723))

(declare-fun m!750725 () Bool)

(assert (=> b!808459 m!750725))

(assert (=> b!808459 m!750707))

(assert (=> b!808459 m!750707))

(declare-fun m!750727 () Bool)

(assert (=> b!808459 m!750727))

(assert (=> b!808459 m!750707))

(declare-fun m!750729 () Bool)

(assert (=> b!808459 m!750729))

(check-sat (not b!808463) (not b!808458) (not b!808466) (not start!69348) (not b!808462) (not b!808461) (not b!808464) (not b!808459) (not b!808465) (not b!808467))
(check-sat)
