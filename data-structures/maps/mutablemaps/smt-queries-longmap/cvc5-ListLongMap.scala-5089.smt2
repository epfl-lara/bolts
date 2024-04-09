; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69112 () Bool)

(assert start!69112)

(declare-fun res!550202 () Bool)

(declare-fun e!446224 () Bool)

(assert (=> start!69112 (=> (not res!550202) (not e!446224))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69112 (= res!550202 (validMask!0 mask!3266))))

(assert (=> start!69112 e!446224))

(assert (=> start!69112 true))

(declare-datatypes ((array!43808 0))(
  ( (array!43809 (arr!20979 (Array (_ BitVec 32) (_ BitVec 64))) (size!21400 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43808)

(declare-fun array_inv!16753 (array!43808) Bool)

(assert (=> start!69112 (array_inv!16753 a!3170)))

(declare-fun b!805706 () Bool)

(declare-fun res!550201 () Bool)

(assert (=> b!805706 (=> (not res!550201) (not e!446224))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805706 (= res!550201 (validKeyInArray!0 (select (arr!20979 a!3170) j!153)))))

(declare-fun b!805707 () Bool)

(declare-fun e!446220 () Bool)

(declare-fun e!446222 () Bool)

(assert (=> b!805707 (= e!446220 e!446222)))

(declare-fun res!550206 () Bool)

(assert (=> b!805707 (=> (not res!550206) (not e!446222))))

(declare-datatypes ((SeekEntryResult!8577 0))(
  ( (MissingZero!8577 (index!36675 (_ BitVec 32))) (Found!8577 (index!36676 (_ BitVec 32))) (Intermediate!8577 (undefined!9389 Bool) (index!36677 (_ BitVec 32)) (x!67523 (_ BitVec 32))) (Undefined!8577) (MissingVacant!8577 (index!36678 (_ BitVec 32))) )
))
(declare-fun lt!360793 () SeekEntryResult!8577)

(declare-fun lt!360791 () SeekEntryResult!8577)

(assert (=> b!805707 (= res!550206 (= lt!360793 lt!360791))))

(declare-fun lt!360788 () array!43808)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360787 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43808 (_ BitVec 32)) SeekEntryResult!8577)

(assert (=> b!805707 (= lt!360791 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360787 lt!360788 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43808 (_ BitVec 32)) SeekEntryResult!8577)

(assert (=> b!805707 (= lt!360793 (seekEntryOrOpen!0 lt!360787 lt!360788 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805707 (= lt!360787 (select (store (arr!20979 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805707 (= lt!360788 (array!43809 (store (arr!20979 a!3170) i!1163 k!2044) (size!21400 a!3170)))))

(declare-fun b!805708 () Bool)

(declare-fun res!550204 () Bool)

(assert (=> b!805708 (=> (not res!550204) (not e!446220))))

(declare-datatypes ((List!14995 0))(
  ( (Nil!14992) (Cons!14991 (h!16120 (_ BitVec 64)) (t!21318 List!14995)) )
))
(declare-fun arrayNoDuplicates!0 (array!43808 (_ BitVec 32) List!14995) Bool)

(assert (=> b!805708 (= res!550204 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14992))))

(declare-fun b!805709 () Bool)

(declare-fun res!550199 () Bool)

(assert (=> b!805709 (=> (not res!550199) (not e!446224))))

(assert (=> b!805709 (= res!550199 (and (= (size!21400 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21400 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21400 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805710 () Bool)

(declare-fun res!550207 () Bool)

(assert (=> b!805710 (=> (not res!550207) (not e!446224))))

(assert (=> b!805710 (= res!550207 (validKeyInArray!0 k!2044))))

(declare-fun b!805711 () Bool)

(declare-fun e!446223 () Bool)

(assert (=> b!805711 (= e!446222 e!446223)))

(declare-fun res!550197 () Bool)

(assert (=> b!805711 (=> (not res!550197) (not e!446223))))

(declare-fun lt!360789 () SeekEntryResult!8577)

(declare-fun lt!360790 () SeekEntryResult!8577)

(assert (=> b!805711 (= res!550197 (and (= lt!360789 lt!360790) (= lt!360790 (Found!8577 j!153)) (= (select (arr!20979 a!3170) index!1236) (select (arr!20979 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805711 (= lt!360790 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20979 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805711 (= lt!360789 (seekEntryOrOpen!0 (select (arr!20979 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805712 () Bool)

(declare-fun res!550198 () Bool)

(assert (=> b!805712 (=> (not res!550198) (not e!446224))))

(declare-fun arrayContainsKey!0 (array!43808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805712 (= res!550198 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805713 () Bool)

(assert (=> b!805713 (= e!446223 (not true))))

(assert (=> b!805713 (= lt!360791 (Found!8577 index!1236))))

(declare-fun b!805714 () Bool)

(declare-fun res!550205 () Bool)

(assert (=> b!805714 (=> (not res!550205) (not e!446220))))

(assert (=> b!805714 (= res!550205 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21400 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20979 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21400 a!3170)) (= (select (arr!20979 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805715 () Bool)

(declare-fun res!550203 () Bool)

(assert (=> b!805715 (=> (not res!550203) (not e!446220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43808 (_ BitVec 32)) Bool)

(assert (=> b!805715 (= res!550203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805716 () Bool)

(assert (=> b!805716 (= e!446224 e!446220)))

(declare-fun res!550200 () Bool)

(assert (=> b!805716 (=> (not res!550200) (not e!446220))))

(declare-fun lt!360792 () SeekEntryResult!8577)

(assert (=> b!805716 (= res!550200 (or (= lt!360792 (MissingZero!8577 i!1163)) (= lt!360792 (MissingVacant!8577 i!1163))))))

(assert (=> b!805716 (= lt!360792 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69112 res!550202) b!805709))

(assert (= (and b!805709 res!550199) b!805706))

(assert (= (and b!805706 res!550201) b!805710))

(assert (= (and b!805710 res!550207) b!805712))

(assert (= (and b!805712 res!550198) b!805716))

(assert (= (and b!805716 res!550200) b!805715))

(assert (= (and b!805715 res!550203) b!805708))

(assert (= (and b!805708 res!550204) b!805714))

(assert (= (and b!805714 res!550205) b!805707))

(assert (= (and b!805707 res!550206) b!805711))

(assert (= (and b!805711 res!550197) b!805713))

(declare-fun m!747739 () Bool)

(assert (=> b!805710 m!747739))

(declare-fun m!747741 () Bool)

(assert (=> b!805708 m!747741))

(declare-fun m!747743 () Bool)

(assert (=> start!69112 m!747743))

(declare-fun m!747745 () Bool)

(assert (=> start!69112 m!747745))

(declare-fun m!747747 () Bool)

(assert (=> b!805706 m!747747))

(assert (=> b!805706 m!747747))

(declare-fun m!747749 () Bool)

(assert (=> b!805706 m!747749))

(declare-fun m!747751 () Bool)

(assert (=> b!805716 m!747751))

(declare-fun m!747753 () Bool)

(assert (=> b!805715 m!747753))

(declare-fun m!747755 () Bool)

(assert (=> b!805714 m!747755))

(declare-fun m!747757 () Bool)

(assert (=> b!805714 m!747757))

(declare-fun m!747759 () Bool)

(assert (=> b!805707 m!747759))

(declare-fun m!747761 () Bool)

(assert (=> b!805707 m!747761))

(declare-fun m!747763 () Bool)

(assert (=> b!805707 m!747763))

(declare-fun m!747765 () Bool)

(assert (=> b!805707 m!747765))

(declare-fun m!747767 () Bool)

(assert (=> b!805711 m!747767))

(assert (=> b!805711 m!747747))

(assert (=> b!805711 m!747747))

(declare-fun m!747769 () Bool)

(assert (=> b!805711 m!747769))

(assert (=> b!805711 m!747747))

(declare-fun m!747771 () Bool)

(assert (=> b!805711 m!747771))

(declare-fun m!747773 () Bool)

(assert (=> b!805712 m!747773))

(push 1)

