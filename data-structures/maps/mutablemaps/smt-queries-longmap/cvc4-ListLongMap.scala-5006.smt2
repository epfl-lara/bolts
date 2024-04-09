; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68570 () Bool)

(assert start!68570)

(declare-fun b!797132 () Bool)

(declare-fun res!541827 () Bool)

(declare-fun e!442276 () Bool)

(assert (=> b!797132 (=> (not res!541827) (not e!442276))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43311 0))(
  ( (array!43312 (arr!20732 (Array (_ BitVec 32) (_ BitVec 64))) (size!21153 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43311)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797132 (= res!541827 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21153 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20732 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21153 a!3170)) (= (select (arr!20732 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!541831 () Bool)

(declare-fun e!442275 () Bool)

(assert (=> start!68570 (=> (not res!541831) (not e!442275))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68570 (= res!541831 (validMask!0 mask!3266))))

(assert (=> start!68570 e!442275))

(assert (=> start!68570 true))

(declare-fun array_inv!16506 (array!43311) Bool)

(assert (=> start!68570 (array_inv!16506 a!3170)))

(declare-fun b!797133 () Bool)

(declare-fun e!442274 () Bool)

(declare-fun e!442272 () Bool)

(assert (=> b!797133 (= e!442274 e!442272)))

(declare-fun res!541823 () Bool)

(assert (=> b!797133 (=> (not res!541823) (not e!442272))))

(declare-datatypes ((SeekEntryResult!8330 0))(
  ( (MissingZero!8330 (index!35687 (_ BitVec 32))) (Found!8330 (index!35688 (_ BitVec 32))) (Intermediate!8330 (undefined!9142 Bool) (index!35689 (_ BitVec 32)) (x!66609 (_ BitVec 32))) (Undefined!8330) (MissingVacant!8330 (index!35690 (_ BitVec 32))) )
))
(declare-fun lt!355627 () SeekEntryResult!8330)

(declare-fun lt!355626 () SeekEntryResult!8330)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797133 (= res!541823 (and (= lt!355627 lt!355626) (= lt!355626 (Found!8330 j!153)) (= (select (arr!20732 a!3170) index!1236) (select (arr!20732 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43311 (_ BitVec 32)) SeekEntryResult!8330)

(assert (=> b!797133 (= lt!355626 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20732 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43311 (_ BitVec 32)) SeekEntryResult!8330)

(assert (=> b!797133 (= lt!355627 (seekEntryOrOpen!0 (select (arr!20732 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797134 () Bool)

(assert (=> b!797134 (= e!442272 (not true))))

(declare-fun lt!355621 () SeekEntryResult!8330)

(assert (=> b!797134 (= lt!355621 (Found!8330 index!1236))))

(declare-fun b!797135 () Bool)

(assert (=> b!797135 (= e!442275 e!442276)))

(declare-fun res!541822 () Bool)

(assert (=> b!797135 (=> (not res!541822) (not e!442276))))

(declare-fun lt!355622 () SeekEntryResult!8330)

(assert (=> b!797135 (= res!541822 (or (= lt!355622 (MissingZero!8330 i!1163)) (= lt!355622 (MissingVacant!8330 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!797135 (= lt!355622 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797136 () Bool)

(declare-fun res!541829 () Bool)

(assert (=> b!797136 (=> (not res!541829) (not e!442275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797136 (= res!541829 (validKeyInArray!0 (select (arr!20732 a!3170) j!153)))))

(declare-fun b!797137 () Bool)

(declare-fun res!541830 () Bool)

(assert (=> b!797137 (=> (not res!541830) (not e!442276))))

(declare-datatypes ((List!14748 0))(
  ( (Nil!14745) (Cons!14744 (h!15873 (_ BitVec 64)) (t!21071 List!14748)) )
))
(declare-fun arrayNoDuplicates!0 (array!43311 (_ BitVec 32) List!14748) Bool)

(assert (=> b!797137 (= res!541830 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14745))))

(declare-fun b!797138 () Bool)

(declare-fun res!541824 () Bool)

(assert (=> b!797138 (=> (not res!541824) (not e!442276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43311 (_ BitVec 32)) Bool)

(assert (=> b!797138 (= res!541824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797139 () Bool)

(declare-fun res!541826 () Bool)

(assert (=> b!797139 (=> (not res!541826) (not e!442275))))

(assert (=> b!797139 (= res!541826 (and (= (size!21153 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21153 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21153 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797140 () Bool)

(assert (=> b!797140 (= e!442276 e!442274)))

(declare-fun res!541825 () Bool)

(assert (=> b!797140 (=> (not res!541825) (not e!442274))))

(declare-fun lt!355625 () SeekEntryResult!8330)

(assert (=> b!797140 (= res!541825 (= lt!355625 lt!355621))))

(declare-fun lt!355624 () array!43311)

(declare-fun lt!355623 () (_ BitVec 64))

(assert (=> b!797140 (= lt!355621 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355623 lt!355624 mask!3266))))

(assert (=> b!797140 (= lt!355625 (seekEntryOrOpen!0 lt!355623 lt!355624 mask!3266))))

(assert (=> b!797140 (= lt!355623 (select (store (arr!20732 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797140 (= lt!355624 (array!43312 (store (arr!20732 a!3170) i!1163 k!2044) (size!21153 a!3170)))))

(declare-fun b!797141 () Bool)

(declare-fun res!541821 () Bool)

(assert (=> b!797141 (=> (not res!541821) (not e!442275))))

(declare-fun arrayContainsKey!0 (array!43311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797141 (= res!541821 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797142 () Bool)

(declare-fun res!541828 () Bool)

(assert (=> b!797142 (=> (not res!541828) (not e!442275))))

(assert (=> b!797142 (= res!541828 (validKeyInArray!0 k!2044))))

(assert (= (and start!68570 res!541831) b!797139))

(assert (= (and b!797139 res!541826) b!797136))

(assert (= (and b!797136 res!541829) b!797142))

(assert (= (and b!797142 res!541828) b!797141))

(assert (= (and b!797141 res!541821) b!797135))

(assert (= (and b!797135 res!541822) b!797138))

(assert (= (and b!797138 res!541824) b!797137))

(assert (= (and b!797137 res!541830) b!797132))

(assert (= (and b!797132 res!541827) b!797140))

(assert (= (and b!797140 res!541825) b!797133))

(assert (= (and b!797133 res!541823) b!797134))

(declare-fun m!738079 () Bool)

(assert (=> start!68570 m!738079))

(declare-fun m!738081 () Bool)

(assert (=> start!68570 m!738081))

(declare-fun m!738083 () Bool)

(assert (=> b!797138 m!738083))

(declare-fun m!738085 () Bool)

(assert (=> b!797132 m!738085))

(declare-fun m!738087 () Bool)

(assert (=> b!797132 m!738087))

(declare-fun m!738089 () Bool)

(assert (=> b!797135 m!738089))

(declare-fun m!738091 () Bool)

(assert (=> b!797142 m!738091))

(declare-fun m!738093 () Bool)

(assert (=> b!797133 m!738093))

(declare-fun m!738095 () Bool)

(assert (=> b!797133 m!738095))

(assert (=> b!797133 m!738095))

(declare-fun m!738097 () Bool)

(assert (=> b!797133 m!738097))

(assert (=> b!797133 m!738095))

(declare-fun m!738099 () Bool)

(assert (=> b!797133 m!738099))

(declare-fun m!738101 () Bool)

(assert (=> b!797141 m!738101))

(assert (=> b!797136 m!738095))

(assert (=> b!797136 m!738095))

(declare-fun m!738103 () Bool)

(assert (=> b!797136 m!738103))

(declare-fun m!738105 () Bool)

(assert (=> b!797140 m!738105))

(declare-fun m!738107 () Bool)

(assert (=> b!797140 m!738107))

(declare-fun m!738109 () Bool)

(assert (=> b!797140 m!738109))

(declare-fun m!738111 () Bool)

(assert (=> b!797140 m!738111))

(declare-fun m!738113 () Bool)

(assert (=> b!797137 m!738113))

(push 1)

