; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68512 () Bool)

(assert start!68512)

(declare-fun res!540839 () Bool)

(declare-fun e!441814 () Bool)

(assert (=> start!68512 (=> (not res!540839) (not e!441814))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68512 (= res!540839 (validMask!0 mask!3266))))

(assert (=> start!68512 e!441814))

(assert (=> start!68512 true))

(declare-datatypes ((array!43253 0))(
  ( (array!43254 (arr!20703 (Array (_ BitVec 32) (_ BitVec 64))) (size!21124 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43253)

(declare-fun array_inv!16477 (array!43253) Bool)

(assert (=> start!68512 (array_inv!16477 a!3170)))

(declare-fun b!796148 () Bool)

(declare-fun res!540838 () Bool)

(assert (=> b!796148 (=> (not res!540838) (not e!441814))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796148 (= res!540838 (validKeyInArray!0 k!2044))))

(declare-fun b!796149 () Bool)

(declare-fun res!540840 () Bool)

(assert (=> b!796149 (=> (not res!540840) (not e!441814))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796149 (= res!540840 (and (= (size!21124 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21124 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21124 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796150 () Bool)

(declare-fun res!540841 () Bool)

(assert (=> b!796150 (=> (not res!540841) (not e!441814))))

(assert (=> b!796150 (= res!540841 (validKeyInArray!0 (select (arr!20703 a!3170) j!153)))))

(declare-fun b!796151 () Bool)

(declare-fun res!540846 () Bool)

(declare-fun e!441813 () Bool)

(assert (=> b!796151 (=> (not res!540846) (not e!441813))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796151 (= res!540846 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21124 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20703 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21124 a!3170)) (= (select (arr!20703 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796152 () Bool)

(declare-fun res!540845 () Bool)

(assert (=> b!796152 (=> (not res!540845) (not e!441813))))

(declare-datatypes ((List!14719 0))(
  ( (Nil!14716) (Cons!14715 (h!15844 (_ BitVec 64)) (t!21042 List!14719)) )
))
(declare-fun arrayNoDuplicates!0 (array!43253 (_ BitVec 32) List!14719) Bool)

(assert (=> b!796152 (= res!540845 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14716))))

(declare-fun b!796153 () Bool)

(assert (=> b!796153 (= e!441814 e!441813)))

(declare-fun res!540837 () Bool)

(assert (=> b!796153 (=> (not res!540837) (not e!441813))))

(declare-datatypes ((SeekEntryResult!8301 0))(
  ( (MissingZero!8301 (index!35571 (_ BitVec 32))) (Found!8301 (index!35572 (_ BitVec 32))) (Intermediate!8301 (undefined!9113 Bool) (index!35573 (_ BitVec 32)) (x!66508 (_ BitVec 32))) (Undefined!8301) (MissingVacant!8301 (index!35574 (_ BitVec 32))) )
))
(declare-fun lt!354997 () SeekEntryResult!8301)

(assert (=> b!796153 (= res!540837 (or (= lt!354997 (MissingZero!8301 i!1163)) (= lt!354997 (MissingVacant!8301 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43253 (_ BitVec 32)) SeekEntryResult!8301)

(assert (=> b!796153 (= lt!354997 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796154 () Bool)

(declare-fun res!540844 () Bool)

(assert (=> b!796154 (=> (not res!540844) (not e!441814))))

(declare-fun arrayContainsKey!0 (array!43253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796154 (= res!540844 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796155 () Bool)

(declare-fun e!441810 () Bool)

(assert (=> b!796155 (= e!441810 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!354996 () SeekEntryResult!8301)

(assert (=> b!796155 (= lt!354996 (Found!8301 index!1236))))

(declare-fun b!796156 () Bool)

(declare-fun e!441811 () Bool)

(assert (=> b!796156 (= e!441811 e!441810)))

(declare-fun res!540847 () Bool)

(assert (=> b!796156 (=> (not res!540847) (not e!441810))))

(declare-fun lt!354994 () SeekEntryResult!8301)

(declare-fun lt!354995 () SeekEntryResult!8301)

(assert (=> b!796156 (= res!540847 (and (= lt!354994 lt!354995) (= lt!354995 (Found!8301 j!153)) (= (select (arr!20703 a!3170) index!1236) (select (arr!20703 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43253 (_ BitVec 32)) SeekEntryResult!8301)

(assert (=> b!796156 (= lt!354995 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20703 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796156 (= lt!354994 (seekEntryOrOpen!0 (select (arr!20703 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796157 () Bool)

(declare-fun res!540843 () Bool)

(assert (=> b!796157 (=> (not res!540843) (not e!441813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43253 (_ BitVec 32)) Bool)

(assert (=> b!796157 (= res!540843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796158 () Bool)

(assert (=> b!796158 (= e!441813 e!441811)))

(declare-fun res!540842 () Bool)

(assert (=> b!796158 (=> (not res!540842) (not e!441811))))

(declare-fun lt!354998 () SeekEntryResult!8301)

(assert (=> b!796158 (= res!540842 (= lt!354998 lt!354996))))

(declare-fun lt!354999 () (_ BitVec 64))

(declare-fun lt!355000 () array!43253)

(assert (=> b!796158 (= lt!354996 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354999 lt!355000 mask!3266))))

(assert (=> b!796158 (= lt!354998 (seekEntryOrOpen!0 lt!354999 lt!355000 mask!3266))))

(assert (=> b!796158 (= lt!354999 (select (store (arr!20703 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796158 (= lt!355000 (array!43254 (store (arr!20703 a!3170) i!1163 k!2044) (size!21124 a!3170)))))

(assert (= (and start!68512 res!540839) b!796149))

(assert (= (and b!796149 res!540840) b!796150))

(assert (= (and b!796150 res!540841) b!796148))

(assert (= (and b!796148 res!540838) b!796154))

(assert (= (and b!796154 res!540844) b!796153))

(assert (= (and b!796153 res!540837) b!796157))

(assert (= (and b!796157 res!540843) b!796152))

(assert (= (and b!796152 res!540845) b!796151))

(assert (= (and b!796151 res!540846) b!796158))

(assert (= (and b!796158 res!540842) b!796156))

(assert (= (and b!796156 res!540847) b!796155))

(declare-fun m!737017 () Bool)

(assert (=> b!796151 m!737017))

(declare-fun m!737019 () Bool)

(assert (=> b!796151 m!737019))

(declare-fun m!737021 () Bool)

(assert (=> b!796157 m!737021))

(declare-fun m!737023 () Bool)

(assert (=> b!796152 m!737023))

(declare-fun m!737025 () Bool)

(assert (=> b!796153 m!737025))

(declare-fun m!737027 () Bool)

(assert (=> b!796154 m!737027))

(declare-fun m!737029 () Bool)

(assert (=> b!796158 m!737029))

(declare-fun m!737031 () Bool)

(assert (=> b!796158 m!737031))

(declare-fun m!737033 () Bool)

(assert (=> b!796158 m!737033))

(declare-fun m!737035 () Bool)

(assert (=> b!796158 m!737035))

(declare-fun m!737037 () Bool)

(assert (=> start!68512 m!737037))

(declare-fun m!737039 () Bool)

(assert (=> start!68512 m!737039))

(declare-fun m!737041 () Bool)

(assert (=> b!796156 m!737041))

(declare-fun m!737043 () Bool)

(assert (=> b!796156 m!737043))

(assert (=> b!796156 m!737043))

(declare-fun m!737045 () Bool)

(assert (=> b!796156 m!737045))

(assert (=> b!796156 m!737043))

(declare-fun m!737047 () Bool)

(assert (=> b!796156 m!737047))

(declare-fun m!737049 () Bool)

(assert (=> b!796148 m!737049))

(assert (=> b!796150 m!737043))

(assert (=> b!796150 m!737043))

(declare-fun m!737051 () Bool)

(assert (=> b!796150 m!737051))

(push 1)

(assert (not b!796157))

(assert (not b!796156))

(assert (not b!796154))

(assert (not b!796152))

(assert (not b!796158))

(assert (not b!796148))

(assert (not start!68512))

(assert (not b!796153))

(assert (not b!796150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

