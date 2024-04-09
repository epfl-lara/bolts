; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69040 () Bool)

(assert start!69040)

(declare-fun b!805074 () Bool)

(declare-fun res!549767 () Bool)

(declare-fun e!445903 () Bool)

(assert (=> b!805074 (=> (not res!549767) (not e!445903))))

(declare-datatypes ((array!43781 0))(
  ( (array!43782 (arr!20967 (Array (_ BitVec 32) (_ BitVec 64))) (size!21388 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43781)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43781 (_ BitVec 32)) Bool)

(assert (=> b!805074 (= res!549767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805075 () Bool)

(declare-fun res!549764 () Bool)

(assert (=> b!805075 (=> (not res!549764) (not e!445903))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805075 (= res!549764 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21388 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20967 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21388 a!3170)) (= (select (arr!20967 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805076 () Bool)

(declare-fun e!445904 () Bool)

(assert (=> b!805076 (= e!445903 e!445904)))

(declare-fun res!549763 () Bool)

(assert (=> b!805076 (=> (not res!549763) (not e!445904))))

(declare-fun lt!360473 () (_ BitVec 64))

(declare-fun lt!360472 () array!43781)

(declare-datatypes ((SeekEntryResult!8565 0))(
  ( (MissingZero!8565 (index!36627 (_ BitVec 32))) (Found!8565 (index!36628 (_ BitVec 32))) (Intermediate!8565 (undefined!9377 Bool) (index!36629 (_ BitVec 32)) (x!67476 (_ BitVec 32))) (Undefined!8565) (MissingVacant!8565 (index!36630 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43781 (_ BitVec 32)) SeekEntryResult!8565)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43781 (_ BitVec 32)) SeekEntryResult!8565)

(assert (=> b!805076 (= res!549763 (= (seekEntryOrOpen!0 lt!360473 lt!360472 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360473 lt!360472 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805076 (= lt!360473 (select (store (arr!20967 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805076 (= lt!360472 (array!43782 (store (arr!20967 a!3170) i!1163 k!2044) (size!21388 a!3170)))))

(declare-fun b!805077 () Bool)

(assert (=> b!805077 (= e!445904 false)))

(declare-fun lt!360474 () SeekEntryResult!8565)

(assert (=> b!805077 (= lt!360474 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20967 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360475 () SeekEntryResult!8565)

(assert (=> b!805077 (= lt!360475 (seekEntryOrOpen!0 (select (arr!20967 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805078 () Bool)

(declare-fun res!549769 () Bool)

(declare-fun e!445906 () Bool)

(assert (=> b!805078 (=> (not res!549769) (not e!445906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805078 (= res!549769 (validKeyInArray!0 (select (arr!20967 a!3170) j!153)))))

(declare-fun b!805079 () Bool)

(declare-fun res!549768 () Bool)

(assert (=> b!805079 (=> (not res!549768) (not e!445903))))

(declare-datatypes ((List!14983 0))(
  ( (Nil!14980) (Cons!14979 (h!16108 (_ BitVec 64)) (t!21306 List!14983)) )
))
(declare-fun arrayNoDuplicates!0 (array!43781 (_ BitVec 32) List!14983) Bool)

(assert (=> b!805079 (= res!549768 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14980))))

(declare-fun b!805080 () Bool)

(declare-fun res!549766 () Bool)

(assert (=> b!805080 (=> (not res!549766) (not e!445906))))

(declare-fun arrayContainsKey!0 (array!43781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805080 (= res!549766 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805081 () Bool)

(assert (=> b!805081 (= e!445906 e!445903)))

(declare-fun res!549771 () Bool)

(assert (=> b!805081 (=> (not res!549771) (not e!445903))))

(declare-fun lt!360471 () SeekEntryResult!8565)

(assert (=> b!805081 (= res!549771 (or (= lt!360471 (MissingZero!8565 i!1163)) (= lt!360471 (MissingVacant!8565 i!1163))))))

(assert (=> b!805081 (= lt!360471 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!549772 () Bool)

(assert (=> start!69040 (=> (not res!549772) (not e!445906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69040 (= res!549772 (validMask!0 mask!3266))))

(assert (=> start!69040 e!445906))

(assert (=> start!69040 true))

(declare-fun array_inv!16741 (array!43781) Bool)

(assert (=> start!69040 (array_inv!16741 a!3170)))

(declare-fun b!805082 () Bool)

(declare-fun res!549770 () Bool)

(assert (=> b!805082 (=> (not res!549770) (not e!445906))))

(assert (=> b!805082 (= res!549770 (validKeyInArray!0 k!2044))))

(declare-fun b!805083 () Bool)

(declare-fun res!549765 () Bool)

(assert (=> b!805083 (=> (not res!549765) (not e!445906))))

(assert (=> b!805083 (= res!549765 (and (= (size!21388 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21388 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21388 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69040 res!549772) b!805083))

(assert (= (and b!805083 res!549765) b!805078))

(assert (= (and b!805078 res!549769) b!805082))

(assert (= (and b!805082 res!549770) b!805080))

(assert (= (and b!805080 res!549766) b!805081))

(assert (= (and b!805081 res!549771) b!805074))

(assert (= (and b!805074 res!549767) b!805079))

(assert (= (and b!805079 res!549768) b!805075))

(assert (= (and b!805075 res!549764) b!805076))

(assert (= (and b!805076 res!549763) b!805077))

(declare-fun m!747091 () Bool)

(assert (=> b!805082 m!747091))

(declare-fun m!747093 () Bool)

(assert (=> b!805076 m!747093))

(declare-fun m!747095 () Bool)

(assert (=> b!805076 m!747095))

(declare-fun m!747097 () Bool)

(assert (=> b!805076 m!747097))

(declare-fun m!747099 () Bool)

(assert (=> b!805076 m!747099))

(declare-fun m!747101 () Bool)

(assert (=> b!805080 m!747101))

(declare-fun m!747103 () Bool)

(assert (=> b!805075 m!747103))

(declare-fun m!747105 () Bool)

(assert (=> b!805075 m!747105))

(declare-fun m!747107 () Bool)

(assert (=> b!805081 m!747107))

(declare-fun m!747109 () Bool)

(assert (=> start!69040 m!747109))

(declare-fun m!747111 () Bool)

(assert (=> start!69040 m!747111))

(declare-fun m!747113 () Bool)

(assert (=> b!805078 m!747113))

(assert (=> b!805078 m!747113))

(declare-fun m!747115 () Bool)

(assert (=> b!805078 m!747115))

(declare-fun m!747117 () Bool)

(assert (=> b!805079 m!747117))

(declare-fun m!747119 () Bool)

(assert (=> b!805074 m!747119))

(assert (=> b!805077 m!747113))

(assert (=> b!805077 m!747113))

(declare-fun m!747121 () Bool)

(assert (=> b!805077 m!747121))

(assert (=> b!805077 m!747113))

(declare-fun m!747123 () Bool)

(assert (=> b!805077 m!747123))

(push 1)

