; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69110 () Bool)

(assert start!69110)

(declare-fun b!805673 () Bool)

(declare-fun res!550169 () Bool)

(declare-fun e!446209 () Bool)

(assert (=> b!805673 (=> (not res!550169) (not e!446209))))

(declare-datatypes ((array!43806 0))(
  ( (array!43807 (arr!20978 (Array (_ BitVec 32) (_ BitVec 64))) (size!21399 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43806)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43806 (_ BitVec 32)) Bool)

(assert (=> b!805673 (= res!550169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805674 () Bool)

(declare-fun res!550165 () Bool)

(declare-fun e!446207 () Bool)

(assert (=> b!805674 (=> (not res!550165) (not e!446207))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805674 (= res!550165 (validKeyInArray!0 k!2044))))

(declare-fun b!805675 () Bool)

(declare-fun res!550174 () Bool)

(assert (=> b!805675 (=> (not res!550174) (not e!446207))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805675 (= res!550174 (validKeyInArray!0 (select (arr!20978 a!3170) j!153)))))

(declare-fun b!805676 () Bool)

(declare-fun res!550164 () Bool)

(assert (=> b!805676 (=> (not res!550164) (not e!446209))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805676 (= res!550164 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21399 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20978 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21399 a!3170)) (= (select (arr!20978 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!550172 () Bool)

(assert (=> start!69110 (=> (not res!550172) (not e!446207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69110 (= res!550172 (validMask!0 mask!3266))))

(assert (=> start!69110 e!446207))

(assert (=> start!69110 true))

(declare-fun array_inv!16752 (array!43806) Bool)

(assert (=> start!69110 (array_inv!16752 a!3170)))

(declare-fun b!805677 () Bool)

(declare-fun res!550173 () Bool)

(assert (=> b!805677 (=> (not res!550173) (not e!446207))))

(declare-fun arrayContainsKey!0 (array!43806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805677 (= res!550173 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805678 () Bool)

(declare-fun e!446208 () Bool)

(declare-fun e!446206 () Bool)

(assert (=> b!805678 (= e!446208 e!446206)))

(declare-fun res!550166 () Bool)

(assert (=> b!805678 (=> (not res!550166) (not e!446206))))

(declare-datatypes ((SeekEntryResult!8576 0))(
  ( (MissingZero!8576 (index!36671 (_ BitVec 32))) (Found!8576 (index!36672 (_ BitVec 32))) (Intermediate!8576 (undefined!9388 Bool) (index!36673 (_ BitVec 32)) (x!67514 (_ BitVec 32))) (Undefined!8576) (MissingVacant!8576 (index!36674 (_ BitVec 32))) )
))
(declare-fun lt!360771 () SeekEntryResult!8576)

(declare-fun lt!360768 () SeekEntryResult!8576)

(assert (=> b!805678 (= res!550166 (and (= lt!360768 lt!360771) (= lt!360771 (Found!8576 j!153)) (= (select (arr!20978 a!3170) index!1236) (select (arr!20978 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43806 (_ BitVec 32)) SeekEntryResult!8576)

(assert (=> b!805678 (= lt!360771 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20978 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43806 (_ BitVec 32)) SeekEntryResult!8576)

(assert (=> b!805678 (= lt!360768 (seekEntryOrOpen!0 (select (arr!20978 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805679 () Bool)

(assert (=> b!805679 (= e!446207 e!446209)))

(declare-fun res!550167 () Bool)

(assert (=> b!805679 (=> (not res!550167) (not e!446209))))

(declare-fun lt!360770 () SeekEntryResult!8576)

(assert (=> b!805679 (= res!550167 (or (= lt!360770 (MissingZero!8576 i!1163)) (= lt!360770 (MissingVacant!8576 i!1163))))))

(assert (=> b!805679 (= lt!360770 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805680 () Bool)

(declare-fun res!550168 () Bool)

(assert (=> b!805680 (=> (not res!550168) (not e!446207))))

(assert (=> b!805680 (= res!550168 (and (= (size!21399 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21399 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21399 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805681 () Bool)

(assert (=> b!805681 (= e!446206 (not true))))

(declare-fun lt!360767 () SeekEntryResult!8576)

(assert (=> b!805681 (= lt!360767 (Found!8576 index!1236))))

(declare-fun b!805682 () Bool)

(declare-fun res!550171 () Bool)

(assert (=> b!805682 (=> (not res!550171) (not e!446209))))

(declare-datatypes ((List!14994 0))(
  ( (Nil!14991) (Cons!14990 (h!16119 (_ BitVec 64)) (t!21317 List!14994)) )
))
(declare-fun arrayNoDuplicates!0 (array!43806 (_ BitVec 32) List!14994) Bool)

(assert (=> b!805682 (= res!550171 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14991))))

(declare-fun b!805683 () Bool)

(assert (=> b!805683 (= e!446209 e!446208)))

(declare-fun res!550170 () Bool)

(assert (=> b!805683 (=> (not res!550170) (not e!446208))))

(declare-fun lt!360769 () SeekEntryResult!8576)

(assert (=> b!805683 (= res!550170 (= lt!360769 lt!360767))))

(declare-fun lt!360772 () array!43806)

(declare-fun lt!360766 () (_ BitVec 64))

(assert (=> b!805683 (= lt!360767 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360766 lt!360772 mask!3266))))

(assert (=> b!805683 (= lt!360769 (seekEntryOrOpen!0 lt!360766 lt!360772 mask!3266))))

(assert (=> b!805683 (= lt!360766 (select (store (arr!20978 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805683 (= lt!360772 (array!43807 (store (arr!20978 a!3170) i!1163 k!2044) (size!21399 a!3170)))))

(assert (= (and start!69110 res!550172) b!805680))

(assert (= (and b!805680 res!550168) b!805675))

(assert (= (and b!805675 res!550174) b!805674))

(assert (= (and b!805674 res!550165) b!805677))

(assert (= (and b!805677 res!550173) b!805679))

(assert (= (and b!805679 res!550167) b!805673))

(assert (= (and b!805673 res!550169) b!805682))

(assert (= (and b!805682 res!550171) b!805676))

(assert (= (and b!805676 res!550164) b!805683))

(assert (= (and b!805683 res!550170) b!805678))

(assert (= (and b!805678 res!550166) b!805681))

(declare-fun m!747703 () Bool)

(assert (=> b!805677 m!747703))

(declare-fun m!747705 () Bool)

(assert (=> b!805682 m!747705))

(declare-fun m!747707 () Bool)

(assert (=> b!805675 m!747707))

(assert (=> b!805675 m!747707))

(declare-fun m!747709 () Bool)

(assert (=> b!805675 m!747709))

(declare-fun m!747711 () Bool)

(assert (=> b!805678 m!747711))

(assert (=> b!805678 m!747707))

(assert (=> b!805678 m!747707))

(declare-fun m!747713 () Bool)

(assert (=> b!805678 m!747713))

(assert (=> b!805678 m!747707))

(declare-fun m!747715 () Bool)

(assert (=> b!805678 m!747715))

(declare-fun m!747717 () Bool)

(assert (=> b!805673 m!747717))

(declare-fun m!747719 () Bool)

(assert (=> start!69110 m!747719))

(declare-fun m!747721 () Bool)

(assert (=> start!69110 m!747721))

(declare-fun m!747723 () Bool)

(assert (=> b!805683 m!747723))

(declare-fun m!747725 () Bool)

(assert (=> b!805683 m!747725))

(declare-fun m!747727 () Bool)

(assert (=> b!805683 m!747727))

(declare-fun m!747729 () Bool)

(assert (=> b!805683 m!747729))

(declare-fun m!747731 () Bool)

(assert (=> b!805674 m!747731))

(declare-fun m!747733 () Bool)

(assert (=> b!805679 m!747733))

(declare-fun m!747735 () Bool)

(assert (=> b!805676 m!747735))

(declare-fun m!747737 () Bool)

(assert (=> b!805676 m!747737))

(push 1)

