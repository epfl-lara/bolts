; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69678 () Bool)

(assert start!69678)

(declare-fun b!811472 () Bool)

(declare-fun e!449144 () Bool)

(declare-fun e!449145 () Bool)

(assert (=> b!811472 (= e!449144 e!449145)))

(declare-fun res!554688 () Bool)

(assert (=> b!811472 (=> (not res!554688) (not e!449145))))

(declare-datatypes ((SeekEntryResult!8698 0))(
  ( (MissingZero!8698 (index!37162 (_ BitVec 32))) (Found!8698 (index!37163 (_ BitVec 32))) (Intermediate!8698 (undefined!9510 Bool) (index!37164 (_ BitVec 32)) (x!68000 (_ BitVec 32))) (Undefined!8698) (MissingVacant!8698 (index!37165 (_ BitVec 32))) )
))
(declare-fun lt!363886 () SeekEntryResult!8698)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!811472 (= res!554688 (or (= lt!363886 (MissingZero!8698 i!1163)) (= lt!363886 (MissingVacant!8698 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!44068 0))(
  ( (array!44069 (arr!21100 (Array (_ BitVec 32) (_ BitVec 64))) (size!21521 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44068)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44068 (_ BitVec 32)) SeekEntryResult!8698)

(assert (=> b!811472 (= lt!363886 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!811473 () Bool)

(declare-fun res!554693 () Bool)

(assert (=> b!811473 (=> (not res!554693) (not e!449145))))

(declare-datatypes ((List!15116 0))(
  ( (Nil!15113) (Cons!15112 (h!16241 (_ BitVec 64)) (t!21439 List!15116)) )
))
(declare-fun arrayNoDuplicates!0 (array!44068 (_ BitVec 32) List!15116) Bool)

(assert (=> b!811473 (= res!554693 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15113))))

(declare-fun b!811474 () Bool)

(declare-fun res!554690 () Bool)

(assert (=> b!811474 (=> (not res!554690) (not e!449144))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!811474 (= res!554690 (and (= (size!21521 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21521 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21521 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811475 () Bool)

(declare-fun res!554692 () Bool)

(assert (=> b!811475 (=> (not res!554692) (not e!449145))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811475 (= res!554692 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21521 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21100 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21521 a!3170)) (= (select (arr!21100 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811476 () Bool)

(declare-fun res!554685 () Bool)

(assert (=> b!811476 (=> (not res!554685) (not e!449144))))

(declare-fun arrayContainsKey!0 (array!44068 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811476 (= res!554685 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811477 () Bool)

(declare-fun e!449143 () Bool)

(declare-fun e!449146 () Bool)

(assert (=> b!811477 (= e!449143 e!449146)))

(declare-fun res!554689 () Bool)

(assert (=> b!811477 (=> (not res!554689) (not e!449146))))

(declare-fun lt!363884 () SeekEntryResult!8698)

(declare-fun lt!363882 () SeekEntryResult!8698)

(assert (=> b!811477 (= res!554689 (and (= lt!363884 lt!363882) (= lt!363882 (Found!8698 j!153)) (not (= (select (arr!21100 a!3170) index!1236) (select (arr!21100 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44068 (_ BitVec 32)) SeekEntryResult!8698)

(assert (=> b!811477 (= lt!363882 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21100 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811477 (= lt!363884 (seekEntryOrOpen!0 (select (arr!21100 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!554694 () Bool)

(assert (=> start!69678 (=> (not res!554694) (not e!449144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69678 (= res!554694 (validMask!0 mask!3266))))

(assert (=> start!69678 e!449144))

(assert (=> start!69678 true))

(declare-fun array_inv!16874 (array!44068) Bool)

(assert (=> start!69678 (array_inv!16874 a!3170)))

(declare-fun b!811478 () Bool)

(assert (=> b!811478 (= e!449145 e!449143)))

(declare-fun res!554686 () Bool)

(assert (=> b!811478 (=> (not res!554686) (not e!449143))))

(declare-fun lt!363880 () (_ BitVec 64))

(declare-fun lt!363885 () array!44068)

(assert (=> b!811478 (= res!554686 (= (seekEntryOrOpen!0 lt!363880 lt!363885 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363880 lt!363885 mask!3266)))))

(assert (=> b!811478 (= lt!363880 (select (store (arr!21100 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!811478 (= lt!363885 (array!44069 (store (arr!21100 a!3170) i!1163 k0!2044) (size!21521 a!3170)))))

(declare-fun b!811479 () Bool)

(declare-fun res!554695 () Bool)

(assert (=> b!811479 (=> (not res!554695) (not e!449144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811479 (= res!554695 (validKeyInArray!0 (select (arr!21100 a!3170) j!153)))))

(declare-fun b!811480 () Bool)

(declare-fun res!554691 () Bool)

(assert (=> b!811480 (=> (not res!554691) (not e!449144))))

(assert (=> b!811480 (= res!554691 (validKeyInArray!0 k0!2044))))

(declare-fun b!811481 () Bool)

(declare-fun res!554687 () Bool)

(assert (=> b!811481 (=> (not res!554687) (not e!449145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44068 (_ BitVec 32)) Bool)

(assert (=> b!811481 (= res!554687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811482 () Bool)

(assert (=> b!811482 (= e!449146 (not true))))

(declare-fun lt!363883 () (_ BitVec 32))

(assert (=> b!811482 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363883 vacantAfter!23 lt!363880 lt!363885 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363883 vacantBefore!23 (select (arr!21100 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27658 0))(
  ( (Unit!27659) )
))
(declare-fun lt!363881 () Unit!27658)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44068 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27658)

(assert (=> b!811482 (= lt!363881 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363883 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811482 (= lt!363883 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!69678 res!554694) b!811474))

(assert (= (and b!811474 res!554690) b!811479))

(assert (= (and b!811479 res!554695) b!811480))

(assert (= (and b!811480 res!554691) b!811476))

(assert (= (and b!811476 res!554685) b!811472))

(assert (= (and b!811472 res!554688) b!811481))

(assert (= (and b!811481 res!554687) b!811473))

(assert (= (and b!811473 res!554693) b!811475))

(assert (= (and b!811475 res!554692) b!811478))

(assert (= (and b!811478 res!554686) b!811477))

(assert (= (and b!811477 res!554689) b!811482))

(declare-fun m!753981 () Bool)

(assert (=> b!811473 m!753981))

(declare-fun m!753983 () Bool)

(assert (=> b!811480 m!753983))

(declare-fun m!753985 () Bool)

(assert (=> b!811476 m!753985))

(declare-fun m!753987 () Bool)

(assert (=> b!811475 m!753987))

(declare-fun m!753989 () Bool)

(assert (=> b!811475 m!753989))

(declare-fun m!753991 () Bool)

(assert (=> b!811477 m!753991))

(declare-fun m!753993 () Bool)

(assert (=> b!811477 m!753993))

(assert (=> b!811477 m!753993))

(declare-fun m!753995 () Bool)

(assert (=> b!811477 m!753995))

(assert (=> b!811477 m!753993))

(declare-fun m!753997 () Bool)

(assert (=> b!811477 m!753997))

(assert (=> b!811482 m!753993))

(declare-fun m!753999 () Bool)

(assert (=> b!811482 m!753999))

(declare-fun m!754001 () Bool)

(assert (=> b!811482 m!754001))

(declare-fun m!754003 () Bool)

(assert (=> b!811482 m!754003))

(assert (=> b!811482 m!753993))

(declare-fun m!754005 () Bool)

(assert (=> b!811482 m!754005))

(declare-fun m!754007 () Bool)

(assert (=> b!811481 m!754007))

(assert (=> b!811479 m!753993))

(assert (=> b!811479 m!753993))

(declare-fun m!754009 () Bool)

(assert (=> b!811479 m!754009))

(declare-fun m!754011 () Bool)

(assert (=> start!69678 m!754011))

(declare-fun m!754013 () Bool)

(assert (=> start!69678 m!754013))

(declare-fun m!754015 () Bool)

(assert (=> b!811478 m!754015))

(declare-fun m!754017 () Bool)

(assert (=> b!811478 m!754017))

(declare-fun m!754019 () Bool)

(assert (=> b!811478 m!754019))

(declare-fun m!754021 () Bool)

(assert (=> b!811478 m!754021))

(declare-fun m!754023 () Bool)

(assert (=> b!811472 m!754023))

(check-sat (not b!811482) (not b!811476) (not b!811479) (not b!811472) (not b!811481) (not b!811478) (not b!811477) (not start!69678) (not b!811473) (not b!811480))
(check-sat)
