; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69662 () Bool)

(assert start!69662)

(declare-fun b!811208 () Bool)

(declare-fun res!554421 () Bool)

(declare-fun e!449025 () Bool)

(assert (=> b!811208 (=> (not res!554421) (not e!449025))))

(declare-datatypes ((array!44052 0))(
  ( (array!44053 (arr!21092 (Array (_ BitVec 32) (_ BitVec 64))) (size!21513 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44052)

(declare-datatypes ((List!15108 0))(
  ( (Nil!15105) (Cons!15104 (h!16233 (_ BitVec 64)) (t!21431 List!15108)) )
))
(declare-fun arrayNoDuplicates!0 (array!44052 (_ BitVec 32) List!15108) Bool)

(assert (=> b!811208 (= res!554421 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15105))))

(declare-fun b!811210 () Bool)

(declare-fun res!554430 () Bool)

(assert (=> b!811210 (=> (not res!554430) (not e!449025))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44052 (_ BitVec 32)) Bool)

(assert (=> b!811210 (= res!554430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811211 () Bool)

(declare-fun e!449022 () Bool)

(assert (=> b!811211 (= e!449022 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363717 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363715 () array!44052)

(declare-fun lt!363718 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8690 0))(
  ( (MissingZero!8690 (index!37130 (_ BitVec 32))) (Found!8690 (index!37131 (_ BitVec 32))) (Intermediate!8690 (undefined!9502 Bool) (index!37132 (_ BitVec 32)) (x!67968 (_ BitVec 32))) (Undefined!8690) (MissingVacant!8690 (index!37133 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44052 (_ BitVec 32)) SeekEntryResult!8690)

(assert (=> b!811211 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363717 vacantAfter!23 lt!363718 lt!363715 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363717 vacantBefore!23 (select (arr!21092 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((Unit!27642 0))(
  ( (Unit!27643) )
))
(declare-fun lt!363714 () Unit!27642)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44052 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27642)

(assert (=> b!811211 (= lt!363714 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363717 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811211 (= lt!363717 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811212 () Bool)

(declare-fun e!449023 () Bool)

(assert (=> b!811212 (= e!449023 e!449022)))

(declare-fun res!554427 () Bool)

(assert (=> b!811212 (=> (not res!554427) (not e!449022))))

(declare-fun lt!363712 () SeekEntryResult!8690)

(declare-fun lt!363716 () SeekEntryResult!8690)

(assert (=> b!811212 (= res!554427 (and (= lt!363712 lt!363716) (= lt!363716 (Found!8690 j!153)) (not (= (select (arr!21092 a!3170) index!1236) (select (arr!21092 a!3170) j!153)))))))

(assert (=> b!811212 (= lt!363716 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21092 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44052 (_ BitVec 32)) SeekEntryResult!8690)

(assert (=> b!811212 (= lt!363712 (seekEntryOrOpen!0 (select (arr!21092 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811213 () Bool)

(declare-fun res!554425 () Bool)

(declare-fun e!449024 () Bool)

(assert (=> b!811213 (=> (not res!554425) (not e!449024))))

(declare-fun arrayContainsKey!0 (array!44052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811213 (= res!554425 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811214 () Bool)

(declare-fun res!554424 () Bool)

(assert (=> b!811214 (=> (not res!554424) (not e!449024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811214 (= res!554424 (validKeyInArray!0 (select (arr!21092 a!3170) j!153)))))

(declare-fun b!811215 () Bool)

(declare-fun res!554429 () Bool)

(assert (=> b!811215 (=> (not res!554429) (not e!449024))))

(assert (=> b!811215 (= res!554429 (and (= (size!21513 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21513 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21513 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811216 () Bool)

(assert (=> b!811216 (= e!449024 e!449025)))

(declare-fun res!554422 () Bool)

(assert (=> b!811216 (=> (not res!554422) (not e!449025))))

(declare-fun lt!363713 () SeekEntryResult!8690)

(assert (=> b!811216 (= res!554422 (or (= lt!363713 (MissingZero!8690 i!1163)) (= lt!363713 (MissingVacant!8690 i!1163))))))

(assert (=> b!811216 (= lt!363713 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!554428 () Bool)

(assert (=> start!69662 (=> (not res!554428) (not e!449024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69662 (= res!554428 (validMask!0 mask!3266))))

(assert (=> start!69662 e!449024))

(assert (=> start!69662 true))

(declare-fun array_inv!16866 (array!44052) Bool)

(assert (=> start!69662 (array_inv!16866 a!3170)))

(declare-fun b!811209 () Bool)

(assert (=> b!811209 (= e!449025 e!449023)))

(declare-fun res!554426 () Bool)

(assert (=> b!811209 (=> (not res!554426) (not e!449023))))

(assert (=> b!811209 (= res!554426 (= (seekEntryOrOpen!0 lt!363718 lt!363715 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363718 lt!363715 mask!3266)))))

(assert (=> b!811209 (= lt!363718 (select (store (arr!21092 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811209 (= lt!363715 (array!44053 (store (arr!21092 a!3170) i!1163 k!2044) (size!21513 a!3170)))))

(declare-fun b!811217 () Bool)

(declare-fun res!554423 () Bool)

(assert (=> b!811217 (=> (not res!554423) (not e!449024))))

(assert (=> b!811217 (= res!554423 (validKeyInArray!0 k!2044))))

(declare-fun b!811218 () Bool)

(declare-fun res!554431 () Bool)

(assert (=> b!811218 (=> (not res!554431) (not e!449025))))

(assert (=> b!811218 (= res!554431 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21513 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21092 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21513 a!3170)) (= (select (arr!21092 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69662 res!554428) b!811215))

(assert (= (and b!811215 res!554429) b!811214))

(assert (= (and b!811214 res!554424) b!811217))

(assert (= (and b!811217 res!554423) b!811213))

(assert (= (and b!811213 res!554425) b!811216))

(assert (= (and b!811216 res!554422) b!811210))

(assert (= (and b!811210 res!554430) b!811208))

(assert (= (and b!811208 res!554421) b!811218))

(assert (= (and b!811218 res!554431) b!811209))

(assert (= (and b!811209 res!554426) b!811212))

(assert (= (and b!811212 res!554427) b!811211))

(declare-fun m!753629 () Bool)

(assert (=> b!811216 m!753629))

(declare-fun m!753631 () Bool)

(assert (=> start!69662 m!753631))

(declare-fun m!753633 () Bool)

(assert (=> start!69662 m!753633))

(declare-fun m!753635 () Bool)

(assert (=> b!811212 m!753635))

(declare-fun m!753637 () Bool)

(assert (=> b!811212 m!753637))

(assert (=> b!811212 m!753637))

(declare-fun m!753639 () Bool)

(assert (=> b!811212 m!753639))

(assert (=> b!811212 m!753637))

(declare-fun m!753641 () Bool)

(assert (=> b!811212 m!753641))

(declare-fun m!753643 () Bool)

(assert (=> b!811210 m!753643))

(declare-fun m!753645 () Bool)

(assert (=> b!811218 m!753645))

(declare-fun m!753647 () Bool)

(assert (=> b!811218 m!753647))

(assert (=> b!811214 m!753637))

(assert (=> b!811214 m!753637))

(declare-fun m!753649 () Bool)

(assert (=> b!811214 m!753649))

(declare-fun m!753651 () Bool)

(assert (=> b!811208 m!753651))

(declare-fun m!753653 () Bool)

(assert (=> b!811217 m!753653))

(declare-fun m!753655 () Bool)

(assert (=> b!811209 m!753655))

(declare-fun m!753657 () Bool)

(assert (=> b!811209 m!753657))

(declare-fun m!753659 () Bool)

(assert (=> b!811209 m!753659))

(declare-fun m!753661 () Bool)

(assert (=> b!811209 m!753661))

(declare-fun m!753663 () Bool)

(assert (=> b!811213 m!753663))

(assert (=> b!811211 m!753637))

(assert (=> b!811211 m!753637))

(declare-fun m!753665 () Bool)

(assert (=> b!811211 m!753665))

(declare-fun m!753667 () Bool)

(assert (=> b!811211 m!753667))

(declare-fun m!753669 () Bool)

(assert (=> b!811211 m!753669))

(declare-fun m!753671 () Bool)

(assert (=> b!811211 m!753671))

(push 1)

