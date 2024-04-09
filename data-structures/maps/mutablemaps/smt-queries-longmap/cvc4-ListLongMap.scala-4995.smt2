; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68504 () Bool)

(assert start!68504)

(declare-fun b!796016 () Bool)

(declare-fun res!540712 () Bool)

(declare-fun e!441752 () Bool)

(assert (=> b!796016 (=> (not res!540712) (not e!441752))))

(declare-datatypes ((array!43245 0))(
  ( (array!43246 (arr!20699 (Array (_ BitVec 32) (_ BitVec 64))) (size!21120 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43245)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43245 (_ BitVec 32)) Bool)

(assert (=> b!796016 (= res!540712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796017 () Bool)

(declare-fun res!540707 () Bool)

(declare-fun e!441751 () Bool)

(assert (=> b!796017 (=> (not res!540707) (not e!441751))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796017 (= res!540707 (and (= (size!21120 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21120 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21120 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796018 () Bool)

(declare-fun res!540709 () Bool)

(assert (=> b!796018 (=> (not res!540709) (not e!441751))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796018 (= res!540709 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796019 () Bool)

(declare-fun res!540706 () Bool)

(assert (=> b!796019 (=> (not res!540706) (not e!441751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796019 (= res!540706 (validKeyInArray!0 (select (arr!20699 a!3170) j!153)))))

(declare-fun b!796020 () Bool)

(declare-fun e!441750 () Bool)

(declare-fun e!441754 () Bool)

(assert (=> b!796020 (= e!441750 e!441754)))

(declare-fun res!540711 () Bool)

(assert (=> b!796020 (=> (not res!540711) (not e!441754))))

(declare-datatypes ((SeekEntryResult!8297 0))(
  ( (MissingZero!8297 (index!35555 (_ BitVec 32))) (Found!8297 (index!35556 (_ BitVec 32))) (Intermediate!8297 (undefined!9109 Bool) (index!35557 (_ BitVec 32)) (x!66488 (_ BitVec 32))) (Undefined!8297) (MissingVacant!8297 (index!35558 (_ BitVec 32))) )
))
(declare-fun lt!354915 () SeekEntryResult!8297)

(declare-fun lt!354910 () SeekEntryResult!8297)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796020 (= res!540711 (and (= lt!354910 lt!354915) (= lt!354915 (Found!8297 j!153)) (= (select (arr!20699 a!3170) index!1236) (select (arr!20699 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43245 (_ BitVec 32)) SeekEntryResult!8297)

(assert (=> b!796020 (= lt!354915 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20699 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43245 (_ BitVec 32)) SeekEntryResult!8297)

(assert (=> b!796020 (= lt!354910 (seekEntryOrOpen!0 (select (arr!20699 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796021 () Bool)

(declare-fun res!540705 () Bool)

(assert (=> b!796021 (=> (not res!540705) (not e!441751))))

(assert (=> b!796021 (= res!540705 (validKeyInArray!0 k!2044))))

(declare-fun res!540710 () Bool)

(assert (=> start!68504 (=> (not res!540710) (not e!441751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68504 (= res!540710 (validMask!0 mask!3266))))

(assert (=> start!68504 e!441751))

(assert (=> start!68504 true))

(declare-fun array_inv!16473 (array!43245) Bool)

(assert (=> start!68504 (array_inv!16473 a!3170)))

(declare-fun b!796022 () Bool)

(declare-fun res!540708 () Bool)

(assert (=> b!796022 (=> (not res!540708) (not e!441752))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!796022 (= res!540708 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21120 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20699 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21120 a!3170)) (= (select (arr!20699 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796023 () Bool)

(assert (=> b!796023 (= e!441752 e!441750)))

(declare-fun res!540714 () Bool)

(assert (=> b!796023 (=> (not res!540714) (not e!441750))))

(declare-fun lt!354916 () SeekEntryResult!8297)

(declare-fun lt!354913 () SeekEntryResult!8297)

(assert (=> b!796023 (= res!540714 (= lt!354916 lt!354913))))

(declare-fun lt!354914 () (_ BitVec 64))

(declare-fun lt!354911 () array!43245)

(assert (=> b!796023 (= lt!354913 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354914 lt!354911 mask!3266))))

(assert (=> b!796023 (= lt!354916 (seekEntryOrOpen!0 lt!354914 lt!354911 mask!3266))))

(assert (=> b!796023 (= lt!354914 (select (store (arr!20699 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796023 (= lt!354911 (array!43246 (store (arr!20699 a!3170) i!1163 k!2044) (size!21120 a!3170)))))

(declare-fun b!796024 () Bool)

(assert (=> b!796024 (= e!441751 e!441752)))

(declare-fun res!540713 () Bool)

(assert (=> b!796024 (=> (not res!540713) (not e!441752))))

(declare-fun lt!354912 () SeekEntryResult!8297)

(assert (=> b!796024 (= res!540713 (or (= lt!354912 (MissingZero!8297 i!1163)) (= lt!354912 (MissingVacant!8297 i!1163))))))

(assert (=> b!796024 (= lt!354912 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796025 () Bool)

(declare-fun res!540715 () Bool)

(assert (=> b!796025 (=> (not res!540715) (not e!441752))))

(declare-datatypes ((List!14715 0))(
  ( (Nil!14712) (Cons!14711 (h!15840 (_ BitVec 64)) (t!21038 List!14715)) )
))
(declare-fun arrayNoDuplicates!0 (array!43245 (_ BitVec 32) List!14715) Bool)

(assert (=> b!796025 (= res!540715 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14712))))

(declare-fun b!796026 () Bool)

(assert (=> b!796026 (= e!441754 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(assert (=> b!796026 (= lt!354913 (Found!8297 index!1236))))

(assert (= (and start!68504 res!540710) b!796017))

(assert (= (and b!796017 res!540707) b!796019))

(assert (= (and b!796019 res!540706) b!796021))

(assert (= (and b!796021 res!540705) b!796018))

(assert (= (and b!796018 res!540709) b!796024))

(assert (= (and b!796024 res!540713) b!796016))

(assert (= (and b!796016 res!540712) b!796025))

(assert (= (and b!796025 res!540715) b!796022))

(assert (= (and b!796022 res!540708) b!796023))

(assert (= (and b!796023 res!540714) b!796020))

(assert (= (and b!796020 res!540711) b!796026))

(declare-fun m!736873 () Bool)

(assert (=> b!796021 m!736873))

(declare-fun m!736875 () Bool)

(assert (=> b!796023 m!736875))

(declare-fun m!736877 () Bool)

(assert (=> b!796023 m!736877))

(declare-fun m!736879 () Bool)

(assert (=> b!796023 m!736879))

(declare-fun m!736881 () Bool)

(assert (=> b!796023 m!736881))

(declare-fun m!736883 () Bool)

(assert (=> b!796024 m!736883))

(declare-fun m!736885 () Bool)

(assert (=> b!796019 m!736885))

(assert (=> b!796019 m!736885))

(declare-fun m!736887 () Bool)

(assert (=> b!796019 m!736887))

(declare-fun m!736889 () Bool)

(assert (=> b!796018 m!736889))

(declare-fun m!736891 () Bool)

(assert (=> b!796020 m!736891))

(assert (=> b!796020 m!736885))

(assert (=> b!796020 m!736885))

(declare-fun m!736893 () Bool)

(assert (=> b!796020 m!736893))

(assert (=> b!796020 m!736885))

(declare-fun m!736895 () Bool)

(assert (=> b!796020 m!736895))

(declare-fun m!736897 () Bool)

(assert (=> start!68504 m!736897))

(declare-fun m!736899 () Bool)

(assert (=> start!68504 m!736899))

(declare-fun m!736901 () Bool)

(assert (=> b!796022 m!736901))

(declare-fun m!736903 () Bool)

(assert (=> b!796022 m!736903))

(declare-fun m!736905 () Bool)

(assert (=> b!796016 m!736905))

(declare-fun m!736907 () Bool)

(assert (=> b!796025 m!736907))

(push 1)

(assert (not b!796025))

(assert (not b!796018))

(assert (not b!796019))

(assert (not b!796024))

(assert (not start!68504))

(assert (not b!796023))

