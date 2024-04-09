; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68784 () Bool)

(assert start!68784)

(declare-fun b!801060 () Bool)

(declare-fun res!545759 () Bool)

(declare-fun e!444089 () Bool)

(assert (=> b!801060 (=> (not res!545759) (not e!444089))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43525 0))(
  ( (array!43526 (arr!20839 (Array (_ BitVec 32) (_ BitVec 64))) (size!21260 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43525)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!801060 (= res!545759 (and (= (size!21260 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21260 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21260 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801061 () Bool)

(declare-fun e!444090 () Bool)

(declare-fun e!444091 () Bool)

(assert (=> b!801061 (= e!444090 e!444091)))

(declare-fun res!545750 () Bool)

(assert (=> b!801061 (=> (not res!545750) (not e!444091))))

(declare-datatypes ((SeekEntryResult!8437 0))(
  ( (MissingZero!8437 (index!36115 (_ BitVec 32))) (Found!8437 (index!36116 (_ BitVec 32))) (Intermediate!8437 (undefined!9249 Bool) (index!36117 (_ BitVec 32)) (x!67004 (_ BitVec 32))) (Undefined!8437) (MissingVacant!8437 (index!36118 (_ BitVec 32))) )
))
(declare-fun lt!358041 () SeekEntryResult!8437)

(declare-fun lt!358035 () SeekEntryResult!8437)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801061 (= res!545750 (and (= lt!358041 lt!358035) (= lt!358035 (Found!8437 j!153)) (not (= (select (arr!20839 a!3170) index!1236) (select (arr!20839 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43525 (_ BitVec 32)) SeekEntryResult!8437)

(assert (=> b!801061 (= lt!358035 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20839 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43525 (_ BitVec 32)) SeekEntryResult!8437)

(assert (=> b!801061 (= lt!358041 (seekEntryOrOpen!0 (select (arr!20839 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801062 () Bool)

(declare-fun e!444093 () Bool)

(assert (=> b!801062 (= e!444093 e!444090)))

(declare-fun res!545755 () Bool)

(assert (=> b!801062 (=> (not res!545755) (not e!444090))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358039 () SeekEntryResult!8437)

(declare-fun lt!358040 () (_ BitVec 64))

(declare-fun lt!358036 () array!43525)

(assert (=> b!801062 (= res!545755 (= lt!358039 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358040 lt!358036 mask!3266)))))

(assert (=> b!801062 (= lt!358039 (seekEntryOrOpen!0 lt!358040 lt!358036 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!801062 (= lt!358040 (select (store (arr!20839 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801062 (= lt!358036 (array!43526 (store (arr!20839 a!3170) i!1163 k0!2044) (size!21260 a!3170)))))

(declare-fun res!545749 () Bool)

(assert (=> start!68784 (=> (not res!545749) (not e!444089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68784 (= res!545749 (validMask!0 mask!3266))))

(assert (=> start!68784 e!444089))

(assert (=> start!68784 true))

(declare-fun array_inv!16613 (array!43525) Bool)

(assert (=> start!68784 (array_inv!16613 a!3170)))

(declare-fun b!801063 () Bool)

(declare-fun res!545761 () Bool)

(assert (=> b!801063 (=> (not res!545761) (not e!444093))))

(assert (=> b!801063 (= res!545761 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21260 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20839 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21260 a!3170)) (= (select (arr!20839 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801064 () Bool)

(declare-fun res!545753 () Bool)

(assert (=> b!801064 (=> (not res!545753) (not e!444093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43525 (_ BitVec 32)) Bool)

(assert (=> b!801064 (= res!545753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801065 () Bool)

(declare-fun res!545758 () Bool)

(assert (=> b!801065 (=> (not res!545758) (not e!444089))))

(declare-fun arrayContainsKey!0 (array!43525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801065 (= res!545758 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801066 () Bool)

(declare-fun res!545756 () Bool)

(declare-fun e!444094 () Bool)

(assert (=> b!801066 (=> (not res!545756) (not e!444094))))

(declare-fun lt!358038 () (_ BitVec 32))

(assert (=> b!801066 (= res!545756 (= lt!358039 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358038 vacantAfter!23 lt!358040 lt!358036 mask!3266)))))

(declare-fun b!801067 () Bool)

(assert (=> b!801067 (= e!444091 e!444094)))

(declare-fun res!545752 () Bool)

(assert (=> b!801067 (=> (not res!545752) (not e!444094))))

(assert (=> b!801067 (= res!545752 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358038 #b00000000000000000000000000000000) (bvslt lt!358038 (size!21260 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801067 (= lt!358038 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801068 () Bool)

(assert (=> b!801068 (= e!444089 e!444093)))

(declare-fun res!545757 () Bool)

(assert (=> b!801068 (=> (not res!545757) (not e!444093))))

(declare-fun lt!358042 () SeekEntryResult!8437)

(assert (=> b!801068 (= res!545757 (or (= lt!358042 (MissingZero!8437 i!1163)) (= lt!358042 (MissingVacant!8437 i!1163))))))

(assert (=> b!801068 (= lt!358042 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801069 () Bool)

(declare-fun res!545751 () Bool)

(assert (=> b!801069 (=> (not res!545751) (not e!444093))))

(declare-datatypes ((List!14855 0))(
  ( (Nil!14852) (Cons!14851 (h!15980 (_ BitVec 64)) (t!21178 List!14855)) )
))
(declare-fun arrayNoDuplicates!0 (array!43525 (_ BitVec 32) List!14855) Bool)

(assert (=> b!801069 (= res!545751 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14852))))

(declare-fun b!801070 () Bool)

(declare-fun res!545754 () Bool)

(assert (=> b!801070 (=> (not res!545754) (not e!444089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801070 (= res!545754 (validKeyInArray!0 (select (arr!20839 a!3170) j!153)))))

(declare-fun b!801071 () Bool)

(declare-fun res!545760 () Bool)

(assert (=> b!801071 (=> (not res!545760) (not e!444089))))

(assert (=> b!801071 (= res!545760 (validKeyInArray!0 k0!2044))))

(declare-fun b!801072 () Bool)

(assert (=> b!801072 (= e!444094 false)))

(declare-fun lt!358037 () SeekEntryResult!8437)

(assert (=> b!801072 (= lt!358037 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358038 vacantBefore!23 (select (arr!20839 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68784 res!545749) b!801060))

(assert (= (and b!801060 res!545759) b!801070))

(assert (= (and b!801070 res!545754) b!801071))

(assert (= (and b!801071 res!545760) b!801065))

(assert (= (and b!801065 res!545758) b!801068))

(assert (= (and b!801068 res!545757) b!801064))

(assert (= (and b!801064 res!545753) b!801069))

(assert (= (and b!801069 res!545751) b!801063))

(assert (= (and b!801063 res!545761) b!801062))

(assert (= (and b!801062 res!545755) b!801061))

(assert (= (and b!801061 res!545750) b!801067))

(assert (= (and b!801067 res!545752) b!801066))

(assert (= (and b!801066 res!545756) b!801072))

(declare-fun m!742303 () Bool)

(assert (=> b!801071 m!742303))

(declare-fun m!742305 () Bool)

(assert (=> b!801072 m!742305))

(assert (=> b!801072 m!742305))

(declare-fun m!742307 () Bool)

(assert (=> b!801072 m!742307))

(declare-fun m!742309 () Bool)

(assert (=> start!68784 m!742309))

(declare-fun m!742311 () Bool)

(assert (=> start!68784 m!742311))

(declare-fun m!742313 () Bool)

(assert (=> b!801066 m!742313))

(declare-fun m!742315 () Bool)

(assert (=> b!801069 m!742315))

(declare-fun m!742317 () Bool)

(assert (=> b!801063 m!742317))

(declare-fun m!742319 () Bool)

(assert (=> b!801063 m!742319))

(declare-fun m!742321 () Bool)

(assert (=> b!801062 m!742321))

(declare-fun m!742323 () Bool)

(assert (=> b!801062 m!742323))

(declare-fun m!742325 () Bool)

(assert (=> b!801062 m!742325))

(declare-fun m!742327 () Bool)

(assert (=> b!801062 m!742327))

(assert (=> b!801070 m!742305))

(assert (=> b!801070 m!742305))

(declare-fun m!742329 () Bool)

(assert (=> b!801070 m!742329))

(declare-fun m!742331 () Bool)

(assert (=> b!801064 m!742331))

(declare-fun m!742333 () Bool)

(assert (=> b!801061 m!742333))

(assert (=> b!801061 m!742305))

(assert (=> b!801061 m!742305))

(declare-fun m!742335 () Bool)

(assert (=> b!801061 m!742335))

(assert (=> b!801061 m!742305))

(declare-fun m!742337 () Bool)

(assert (=> b!801061 m!742337))

(declare-fun m!742339 () Bool)

(assert (=> b!801067 m!742339))

(declare-fun m!742341 () Bool)

(assert (=> b!801068 m!742341))

(declare-fun m!742343 () Bool)

(assert (=> b!801065 m!742343))

(check-sat (not b!801069) (not b!801072) (not b!801067) (not start!68784) (not b!801071) (not b!801064) (not b!801062) (not b!801061) (not b!801065) (not b!801066) (not b!801068) (not b!801070))
(check-sat)
