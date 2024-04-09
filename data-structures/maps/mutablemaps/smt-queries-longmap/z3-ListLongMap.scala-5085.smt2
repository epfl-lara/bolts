; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69042 () Bool)

(assert start!69042)

(declare-fun b!805104 () Bool)

(declare-fun res!549798 () Bool)

(declare-fun e!445915 () Bool)

(assert (=> b!805104 (=> (not res!549798) (not e!445915))))

(declare-datatypes ((array!43783 0))(
  ( (array!43784 (arr!20968 (Array (_ BitVec 32) (_ BitVec 64))) (size!21389 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43783)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805104 (= res!549798 (validKeyInArray!0 (select (arr!20968 a!3170) j!153)))))

(declare-fun b!805105 () Bool)

(declare-fun e!445917 () Bool)

(assert (=> b!805105 (= e!445917 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8566 0))(
  ( (MissingZero!8566 (index!36631 (_ BitVec 32))) (Found!8566 (index!36632 (_ BitVec 32))) (Intermediate!8566 (undefined!9378 Bool) (index!36633 (_ BitVec 32)) (x!67477 (_ BitVec 32))) (Undefined!8566) (MissingVacant!8566 (index!36634 (_ BitVec 32))) )
))
(declare-fun lt!360489 () SeekEntryResult!8566)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43783 (_ BitVec 32)) SeekEntryResult!8566)

(assert (=> b!805105 (= lt!360489 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20968 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360488 () SeekEntryResult!8566)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43783 (_ BitVec 32)) SeekEntryResult!8566)

(assert (=> b!805105 (= lt!360488 (seekEntryOrOpen!0 (select (arr!20968 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805106 () Bool)

(declare-fun res!549800 () Bool)

(assert (=> b!805106 (=> (not res!549800) (not e!445915))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805106 (= res!549800 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805107 () Bool)

(declare-fun res!549797 () Bool)

(declare-fun e!445916 () Bool)

(assert (=> b!805107 (=> (not res!549797) (not e!445916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43783 (_ BitVec 32)) Bool)

(assert (=> b!805107 (= res!549797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805108 () Bool)

(declare-fun res!549796 () Bool)

(assert (=> b!805108 (=> (not res!549796) (not e!445915))))

(assert (=> b!805108 (= res!549796 (validKeyInArray!0 k0!2044))))

(declare-fun b!805109 () Bool)

(assert (=> b!805109 (= e!445915 e!445916)))

(declare-fun res!549793 () Bool)

(assert (=> b!805109 (=> (not res!549793) (not e!445916))))

(declare-fun lt!360487 () SeekEntryResult!8566)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805109 (= res!549793 (or (= lt!360487 (MissingZero!8566 i!1163)) (= lt!360487 (MissingVacant!8566 i!1163))))))

(assert (=> b!805109 (= lt!360487 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805110 () Bool)

(declare-fun res!549794 () Bool)

(assert (=> b!805110 (=> (not res!549794) (not e!445916))))

(declare-datatypes ((List!14984 0))(
  ( (Nil!14981) (Cons!14980 (h!16109 (_ BitVec 64)) (t!21307 List!14984)) )
))
(declare-fun arrayNoDuplicates!0 (array!43783 (_ BitVec 32) List!14984) Bool)

(assert (=> b!805110 (= res!549794 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14981))))

(declare-fun b!805111 () Bool)

(assert (=> b!805111 (= e!445916 e!445917)))

(declare-fun res!549802 () Bool)

(assert (=> b!805111 (=> (not res!549802) (not e!445917))))

(declare-fun lt!360486 () (_ BitVec 64))

(declare-fun lt!360490 () array!43783)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!805111 (= res!549802 (= (seekEntryOrOpen!0 lt!360486 lt!360490 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360486 lt!360490 mask!3266)))))

(assert (=> b!805111 (= lt!360486 (select (store (arr!20968 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805111 (= lt!360490 (array!43784 (store (arr!20968 a!3170) i!1163 k0!2044) (size!21389 a!3170)))))

(declare-fun b!805112 () Bool)

(declare-fun res!549801 () Bool)

(assert (=> b!805112 (=> (not res!549801) (not e!445916))))

(assert (=> b!805112 (= res!549801 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21389 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20968 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21389 a!3170)) (= (select (arr!20968 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549795 () Bool)

(assert (=> start!69042 (=> (not res!549795) (not e!445915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69042 (= res!549795 (validMask!0 mask!3266))))

(assert (=> start!69042 e!445915))

(assert (=> start!69042 true))

(declare-fun array_inv!16742 (array!43783) Bool)

(assert (=> start!69042 (array_inv!16742 a!3170)))

(declare-fun b!805113 () Bool)

(declare-fun res!549799 () Bool)

(assert (=> b!805113 (=> (not res!549799) (not e!445915))))

(assert (=> b!805113 (= res!549799 (and (= (size!21389 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21389 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21389 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69042 res!549795) b!805113))

(assert (= (and b!805113 res!549799) b!805104))

(assert (= (and b!805104 res!549798) b!805108))

(assert (= (and b!805108 res!549796) b!805106))

(assert (= (and b!805106 res!549800) b!805109))

(assert (= (and b!805109 res!549793) b!805107))

(assert (= (and b!805107 res!549797) b!805110))

(assert (= (and b!805110 res!549794) b!805112))

(assert (= (and b!805112 res!549801) b!805111))

(assert (= (and b!805111 res!549802) b!805105))

(declare-fun m!747125 () Bool)

(assert (=> b!805105 m!747125))

(assert (=> b!805105 m!747125))

(declare-fun m!747127 () Bool)

(assert (=> b!805105 m!747127))

(assert (=> b!805105 m!747125))

(declare-fun m!747129 () Bool)

(assert (=> b!805105 m!747129))

(declare-fun m!747131 () Bool)

(assert (=> b!805109 m!747131))

(declare-fun m!747133 () Bool)

(assert (=> start!69042 m!747133))

(declare-fun m!747135 () Bool)

(assert (=> start!69042 m!747135))

(assert (=> b!805104 m!747125))

(assert (=> b!805104 m!747125))

(declare-fun m!747137 () Bool)

(assert (=> b!805104 m!747137))

(declare-fun m!747139 () Bool)

(assert (=> b!805112 m!747139))

(declare-fun m!747141 () Bool)

(assert (=> b!805112 m!747141))

(declare-fun m!747143 () Bool)

(assert (=> b!805108 m!747143))

(declare-fun m!747145 () Bool)

(assert (=> b!805106 m!747145))

(declare-fun m!747147 () Bool)

(assert (=> b!805110 m!747147))

(declare-fun m!747149 () Bool)

(assert (=> b!805111 m!747149))

(declare-fun m!747151 () Bool)

(assert (=> b!805111 m!747151))

(declare-fun m!747153 () Bool)

(assert (=> b!805111 m!747153))

(declare-fun m!747155 () Bool)

(assert (=> b!805111 m!747155))

(declare-fun m!747157 () Bool)

(assert (=> b!805107 m!747157))

(check-sat (not b!805111) (not b!805104) (not b!805110) (not b!805106) (not b!805109) (not b!805108) (not b!805105) (not b!805107) (not start!69042))
(check-sat)
