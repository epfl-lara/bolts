; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69108 () Bool)

(assert start!69108)

(declare-fun b!805640 () Bool)

(declare-fun e!446191 () Bool)

(declare-fun e!446194 () Bool)

(assert (=> b!805640 (= e!446191 e!446194)))

(declare-fun res!550137 () Bool)

(assert (=> b!805640 (=> (not res!550137) (not e!446194))))

(declare-datatypes ((SeekEntryResult!8575 0))(
  ( (MissingZero!8575 (index!36667 (_ BitVec 32))) (Found!8575 (index!36668 (_ BitVec 32))) (Intermediate!8575 (undefined!9387 Bool) (index!36669 (_ BitVec 32)) (x!67513 (_ BitVec 32))) (Undefined!8575) (MissingVacant!8575 (index!36670 (_ BitVec 32))) )
))
(declare-fun lt!360748 () SeekEntryResult!8575)

(declare-fun lt!360747 () SeekEntryResult!8575)

(assert (=> b!805640 (= res!550137 (= lt!360748 lt!360747))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360745 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((array!43804 0))(
  ( (array!43805 (arr!20977 (Array (_ BitVec 32) (_ BitVec 64))) (size!21398 (_ BitVec 32))) )
))
(declare-fun lt!360749 () array!43804)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43804 (_ BitVec 32)) SeekEntryResult!8575)

(assert (=> b!805640 (= lt!360747 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360745 lt!360749 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43804 (_ BitVec 32)) SeekEntryResult!8575)

(assert (=> b!805640 (= lt!360748 (seekEntryOrOpen!0 lt!360745 lt!360749 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43804)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805640 (= lt!360745 (select (store (arr!20977 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805640 (= lt!360749 (array!43805 (store (arr!20977 a!3170) i!1163 k0!2044) (size!21398 a!3170)))))

(declare-fun b!805641 () Bool)

(declare-fun res!550136 () Bool)

(assert (=> b!805641 (=> (not res!550136) (not e!446191))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!805641 (= res!550136 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21398 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20977 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21398 a!3170)) (= (select (arr!20977 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805642 () Bool)

(declare-fun res!550139 () Bool)

(declare-fun e!446192 () Bool)

(assert (=> b!805642 (=> (not res!550139) (not e!446192))))

(assert (=> b!805642 (= res!550139 (and (= (size!21398 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21398 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21398 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!550141 () Bool)

(assert (=> start!69108 (=> (not res!550141) (not e!446192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69108 (= res!550141 (validMask!0 mask!3266))))

(assert (=> start!69108 e!446192))

(assert (=> start!69108 true))

(declare-fun array_inv!16751 (array!43804) Bool)

(assert (=> start!69108 (array_inv!16751 a!3170)))

(declare-fun b!805643 () Bool)

(declare-fun res!550132 () Bool)

(assert (=> b!805643 (=> (not res!550132) (not e!446191))))

(declare-datatypes ((List!14993 0))(
  ( (Nil!14990) (Cons!14989 (h!16118 (_ BitVec 64)) (t!21316 List!14993)) )
))
(declare-fun arrayNoDuplicates!0 (array!43804 (_ BitVec 32) List!14993) Bool)

(assert (=> b!805643 (= res!550132 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14990))))

(declare-fun b!805644 () Bool)

(declare-fun e!446193 () Bool)

(assert (=> b!805644 (= e!446194 e!446193)))

(declare-fun res!550140 () Bool)

(assert (=> b!805644 (=> (not res!550140) (not e!446193))))

(declare-fun lt!360750 () SeekEntryResult!8575)

(declare-fun lt!360751 () SeekEntryResult!8575)

(assert (=> b!805644 (= res!550140 (and (= lt!360751 lt!360750) (= lt!360750 (Found!8575 j!153)) (= (select (arr!20977 a!3170) index!1236) (select (arr!20977 a!3170) j!153))))))

(assert (=> b!805644 (= lt!360750 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20977 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!805644 (= lt!360751 (seekEntryOrOpen!0 (select (arr!20977 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805645 () Bool)

(declare-fun res!550134 () Bool)

(assert (=> b!805645 (=> (not res!550134) (not e!446191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43804 (_ BitVec 32)) Bool)

(assert (=> b!805645 (= res!550134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805646 () Bool)

(declare-fun res!550135 () Bool)

(assert (=> b!805646 (=> (not res!550135) (not e!446192))))

(declare-fun arrayContainsKey!0 (array!43804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805646 (= res!550135 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805647 () Bool)

(declare-fun res!550131 () Bool)

(assert (=> b!805647 (=> (not res!550131) (not e!446192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805647 (= res!550131 (validKeyInArray!0 k0!2044))))

(declare-fun b!805648 () Bool)

(declare-fun res!550138 () Bool)

(assert (=> b!805648 (=> (not res!550138) (not e!446192))))

(assert (=> b!805648 (= res!550138 (validKeyInArray!0 (select (arr!20977 a!3170) j!153)))))

(declare-fun b!805649 () Bool)

(assert (=> b!805649 (= e!446192 e!446191)))

(declare-fun res!550133 () Bool)

(assert (=> b!805649 (=> (not res!550133) (not e!446191))))

(declare-fun lt!360746 () SeekEntryResult!8575)

(assert (=> b!805649 (= res!550133 (or (= lt!360746 (MissingZero!8575 i!1163)) (= lt!360746 (MissingVacant!8575 i!1163))))))

(assert (=> b!805649 (= lt!360746 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!805650 () Bool)

(assert (=> b!805650 (= e!446193 (not true))))

(assert (=> b!805650 (= lt!360747 (Found!8575 index!1236))))

(assert (= (and start!69108 res!550141) b!805642))

(assert (= (and b!805642 res!550139) b!805648))

(assert (= (and b!805648 res!550138) b!805647))

(assert (= (and b!805647 res!550131) b!805646))

(assert (= (and b!805646 res!550135) b!805649))

(assert (= (and b!805649 res!550133) b!805645))

(assert (= (and b!805645 res!550134) b!805643))

(assert (= (and b!805643 res!550132) b!805641))

(assert (= (and b!805641 res!550136) b!805640))

(assert (= (and b!805640 res!550137) b!805644))

(assert (= (and b!805644 res!550140) b!805650))

(declare-fun m!747667 () Bool)

(assert (=> b!805645 m!747667))

(declare-fun m!747669 () Bool)

(assert (=> b!805648 m!747669))

(assert (=> b!805648 m!747669))

(declare-fun m!747671 () Bool)

(assert (=> b!805648 m!747671))

(declare-fun m!747673 () Bool)

(assert (=> b!805640 m!747673))

(declare-fun m!747675 () Bool)

(assert (=> b!805640 m!747675))

(declare-fun m!747677 () Bool)

(assert (=> b!805640 m!747677))

(declare-fun m!747679 () Bool)

(assert (=> b!805640 m!747679))

(declare-fun m!747681 () Bool)

(assert (=> b!805646 m!747681))

(declare-fun m!747683 () Bool)

(assert (=> start!69108 m!747683))

(declare-fun m!747685 () Bool)

(assert (=> start!69108 m!747685))

(declare-fun m!747687 () Bool)

(assert (=> b!805649 m!747687))

(declare-fun m!747689 () Bool)

(assert (=> b!805644 m!747689))

(assert (=> b!805644 m!747669))

(assert (=> b!805644 m!747669))

(declare-fun m!747691 () Bool)

(assert (=> b!805644 m!747691))

(assert (=> b!805644 m!747669))

(declare-fun m!747693 () Bool)

(assert (=> b!805644 m!747693))

(declare-fun m!747695 () Bool)

(assert (=> b!805647 m!747695))

(declare-fun m!747697 () Bool)

(assert (=> b!805643 m!747697))

(declare-fun m!747699 () Bool)

(assert (=> b!805641 m!747699))

(declare-fun m!747701 () Bool)

(assert (=> b!805641 m!747701))

(check-sat (not b!805647) (not start!69108) (not b!805645) (not b!805649) (not b!805644) (not b!805646) (not b!805648) (not b!805643) (not b!805640))
(check-sat)
