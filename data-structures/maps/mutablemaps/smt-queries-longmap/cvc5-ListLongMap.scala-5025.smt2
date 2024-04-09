; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68680 () Bool)

(assert start!68680)

(declare-fun b!799032 () Bool)

(declare-fun res!543729 () Bool)

(declare-fun e!443155 () Bool)

(assert (=> b!799032 (=> (not res!543729) (not e!443155))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43421 0))(
  ( (array!43422 (arr!20787 (Array (_ BitVec 32) (_ BitVec 64))) (size!21208 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43421)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!799032 (= res!543729 (and (= (size!21208 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21208 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21208 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799033 () Bool)

(declare-fun e!443156 () Bool)

(declare-fun e!443158 () Bool)

(assert (=> b!799033 (= e!443156 e!443158)))

(declare-fun res!543724 () Bool)

(assert (=> b!799033 (=> (not res!543724) (not e!443158))))

(declare-datatypes ((SeekEntryResult!8385 0))(
  ( (MissingZero!8385 (index!35907 (_ BitVec 32))) (Found!8385 (index!35908 (_ BitVec 32))) (Intermediate!8385 (undefined!9197 Bool) (index!35909 (_ BitVec 32)) (x!66816 (_ BitVec 32))) (Undefined!8385) (MissingVacant!8385 (index!35910 (_ BitVec 32))) )
))
(declare-fun lt!356787 () SeekEntryResult!8385)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356791 () array!43421)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!356790 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43421 (_ BitVec 32)) SeekEntryResult!8385)

(assert (=> b!799033 (= res!543724 (= lt!356787 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356790 lt!356791 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43421 (_ BitVec 32)) SeekEntryResult!8385)

(assert (=> b!799033 (= lt!356787 (seekEntryOrOpen!0 lt!356790 lt!356791 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!799033 (= lt!356790 (select (store (arr!20787 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799033 (= lt!356791 (array!43422 (store (arr!20787 a!3170) i!1163 k!2044) (size!21208 a!3170)))))

(declare-fun b!799034 () Bool)

(declare-fun res!543733 () Bool)

(assert (=> b!799034 (=> (not res!543733) (not e!443156))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799034 (= res!543733 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21208 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20787 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21208 a!3170)) (= (select (arr!20787 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799035 () Bool)

(declare-fun e!443154 () Bool)

(declare-fun e!443157 () Bool)

(assert (=> b!799035 (= e!443154 e!443157)))

(declare-fun res!543730 () Bool)

(assert (=> b!799035 (=> (not res!543730) (not e!443157))))

(declare-fun lt!356788 () (_ BitVec 32))

(assert (=> b!799035 (= res!543730 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356788 #b00000000000000000000000000000000) (bvslt lt!356788 (size!21208 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799035 (= lt!356788 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799036 () Bool)

(assert (=> b!799036 (= e!443158 e!443154)))

(declare-fun res!543725 () Bool)

(assert (=> b!799036 (=> (not res!543725) (not e!443154))))

(declare-fun lt!356793 () SeekEntryResult!8385)

(declare-fun lt!356794 () SeekEntryResult!8385)

(assert (=> b!799036 (= res!543725 (and (= lt!356793 lt!356794) (= lt!356794 (Found!8385 j!153)) (not (= (select (arr!20787 a!3170) index!1236) (select (arr!20787 a!3170) j!153)))))))

(assert (=> b!799036 (= lt!356794 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20787 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799036 (= lt!356793 (seekEntryOrOpen!0 (select (arr!20787 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799037 () Bool)

(assert (=> b!799037 (= e!443155 e!443156)))

(declare-fun res!543727 () Bool)

(assert (=> b!799037 (=> (not res!543727) (not e!443156))))

(declare-fun lt!356792 () SeekEntryResult!8385)

(assert (=> b!799037 (= res!543727 (or (= lt!356792 (MissingZero!8385 i!1163)) (= lt!356792 (MissingVacant!8385 i!1163))))))

(assert (=> b!799037 (= lt!356792 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799038 () Bool)

(declare-fun res!543721 () Bool)

(assert (=> b!799038 (=> (not res!543721) (not e!443157))))

(assert (=> b!799038 (= res!543721 (= lt!356787 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356788 vacantAfter!23 lt!356790 lt!356791 mask!3266)))))

(declare-fun b!799040 () Bool)

(declare-fun res!543728 () Bool)

(assert (=> b!799040 (=> (not res!543728) (not e!443155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799040 (= res!543728 (validKeyInArray!0 (select (arr!20787 a!3170) j!153)))))

(declare-fun b!799041 () Bool)

(declare-fun res!543732 () Bool)

(assert (=> b!799041 (=> (not res!543732) (not e!443155))))

(assert (=> b!799041 (= res!543732 (validKeyInArray!0 k!2044))))

(declare-fun b!799042 () Bool)

(assert (=> b!799042 (= e!443157 false)))

(declare-fun lt!356789 () SeekEntryResult!8385)

(assert (=> b!799042 (= lt!356789 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356788 vacantBefore!23 (select (arr!20787 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799043 () Bool)

(declare-fun res!543726 () Bool)

(assert (=> b!799043 (=> (not res!543726) (not e!443155))))

(declare-fun arrayContainsKey!0 (array!43421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799043 (= res!543726 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799044 () Bool)

(declare-fun res!543723 () Bool)

(assert (=> b!799044 (=> (not res!543723) (not e!443156))))

(declare-datatypes ((List!14803 0))(
  ( (Nil!14800) (Cons!14799 (h!15928 (_ BitVec 64)) (t!21126 List!14803)) )
))
(declare-fun arrayNoDuplicates!0 (array!43421 (_ BitVec 32) List!14803) Bool)

(assert (=> b!799044 (= res!543723 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14800))))

(declare-fun b!799039 () Bool)

(declare-fun res!543722 () Bool)

(assert (=> b!799039 (=> (not res!543722) (not e!443156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43421 (_ BitVec 32)) Bool)

(assert (=> b!799039 (= res!543722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!543731 () Bool)

(assert (=> start!68680 (=> (not res!543731) (not e!443155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68680 (= res!543731 (validMask!0 mask!3266))))

(assert (=> start!68680 e!443155))

(assert (=> start!68680 true))

(declare-fun array_inv!16561 (array!43421) Bool)

(assert (=> start!68680 (array_inv!16561 a!3170)))

(assert (= (and start!68680 res!543731) b!799032))

(assert (= (and b!799032 res!543729) b!799040))

(assert (= (and b!799040 res!543728) b!799041))

(assert (= (and b!799041 res!543732) b!799043))

(assert (= (and b!799043 res!543726) b!799037))

(assert (= (and b!799037 res!543727) b!799039))

(assert (= (and b!799039 res!543722) b!799044))

(assert (= (and b!799044 res!543723) b!799034))

(assert (= (and b!799034 res!543733) b!799033))

(assert (= (and b!799033 res!543724) b!799036))

(assert (= (and b!799036 res!543725) b!799035))

(assert (= (and b!799035 res!543730) b!799038))

(assert (= (and b!799038 res!543721) b!799042))

(declare-fun m!740119 () Bool)

(assert (=> b!799042 m!740119))

(assert (=> b!799042 m!740119))

(declare-fun m!740121 () Bool)

(assert (=> b!799042 m!740121))

(declare-fun m!740123 () Bool)

(assert (=> b!799036 m!740123))

(assert (=> b!799036 m!740119))

(assert (=> b!799036 m!740119))

(declare-fun m!740125 () Bool)

(assert (=> b!799036 m!740125))

(assert (=> b!799036 m!740119))

(declare-fun m!740127 () Bool)

(assert (=> b!799036 m!740127))

(declare-fun m!740129 () Bool)

(assert (=> b!799037 m!740129))

(declare-fun m!740131 () Bool)

(assert (=> b!799035 m!740131))

(declare-fun m!740133 () Bool)

(assert (=> b!799039 m!740133))

(declare-fun m!740135 () Bool)

(assert (=> b!799038 m!740135))

(declare-fun m!740137 () Bool)

(assert (=> start!68680 m!740137))

(declare-fun m!740139 () Bool)

(assert (=> start!68680 m!740139))

(declare-fun m!740141 () Bool)

(assert (=> b!799041 m!740141))

(assert (=> b!799040 m!740119))

(assert (=> b!799040 m!740119))

(declare-fun m!740143 () Bool)

(assert (=> b!799040 m!740143))

(declare-fun m!740145 () Bool)

(assert (=> b!799043 m!740145))

(declare-fun m!740147 () Bool)

(assert (=> b!799044 m!740147))

(declare-fun m!740149 () Bool)

(assert (=> b!799034 m!740149))

(declare-fun m!740151 () Bool)

(assert (=> b!799034 m!740151))

(declare-fun m!740153 () Bool)

(assert (=> b!799033 m!740153))

(declare-fun m!740155 () Bool)

(assert (=> b!799033 m!740155))

(declare-fun m!740157 () Bool)

(assert (=> b!799033 m!740157))

(declare-fun m!740159 () Bool)

(assert (=> b!799033 m!740159))

(push 1)

