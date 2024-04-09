; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68674 () Bool)

(assert start!68674)

(declare-fun b!798915 () Bool)

(declare-fun res!543614 () Bool)

(declare-fun e!443102 () Bool)

(assert (=> b!798915 (=> (not res!543614) (not e!443102))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43415 0))(
  ( (array!43416 (arr!20784 (Array (_ BitVec 32) (_ BitVec 64))) (size!21205 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43415)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798915 (= res!543614 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21205 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20784 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21205 a!3170)) (= (select (arr!20784 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798916 () Bool)

(declare-fun res!543609 () Bool)

(assert (=> b!798916 (=> (not res!543609) (not e!443102))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43415 (_ BitVec 32)) Bool)

(assert (=> b!798916 (= res!543609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798917 () Bool)

(declare-fun e!443103 () Bool)

(assert (=> b!798917 (= e!443103 false)))

(declare-datatypes ((SeekEntryResult!8382 0))(
  ( (MissingZero!8382 (index!35895 (_ BitVec 32))) (Found!8382 (index!35896 (_ BitVec 32))) (Intermediate!8382 (undefined!9194 Bool) (index!35897 (_ BitVec 32)) (x!66805 (_ BitVec 32))) (Undefined!8382) (MissingVacant!8382 (index!35898 (_ BitVec 32))) )
))
(declare-fun lt!356722 () SeekEntryResult!8382)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356720 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43415 (_ BitVec 32)) SeekEntryResult!8382)

(assert (=> b!798917 (= lt!356722 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356720 vacantBefore!23 (select (arr!20784 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798918 () Bool)

(declare-fun res!543610 () Bool)

(assert (=> b!798918 (=> (not res!543610) (not e!443103))))

(declare-fun lt!356716 () SeekEntryResult!8382)

(declare-fun lt!356715 () (_ BitVec 64))

(declare-fun lt!356721 () array!43415)

(assert (=> b!798918 (= res!543610 (= lt!356716 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356720 vacantAfter!23 lt!356715 lt!356721 mask!3266)))))

(declare-fun res!543615 () Bool)

(declare-fun e!443101 () Bool)

(assert (=> start!68674 (=> (not res!543615) (not e!443101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68674 (= res!543615 (validMask!0 mask!3266))))

(assert (=> start!68674 e!443101))

(assert (=> start!68674 true))

(declare-fun array_inv!16558 (array!43415) Bool)

(assert (=> start!68674 (array_inv!16558 a!3170)))

(declare-fun b!798919 () Bool)

(declare-fun res!543611 () Bool)

(assert (=> b!798919 (=> (not res!543611) (not e!443101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798919 (= res!543611 (validKeyInArray!0 (select (arr!20784 a!3170) j!153)))))

(declare-fun b!798920 () Bool)

(declare-fun res!543606 () Bool)

(assert (=> b!798920 (=> (not res!543606) (not e!443101))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!798920 (= res!543606 (validKeyInArray!0 k!2044))))

(declare-fun b!798921 () Bool)

(declare-fun res!543612 () Bool)

(assert (=> b!798921 (=> (not res!543612) (not e!443102))))

(declare-datatypes ((List!14800 0))(
  ( (Nil!14797) (Cons!14796 (h!15925 (_ BitVec 64)) (t!21123 List!14800)) )
))
(declare-fun arrayNoDuplicates!0 (array!43415 (_ BitVec 32) List!14800) Bool)

(assert (=> b!798921 (= res!543612 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14797))))

(declare-fun b!798922 () Bool)

(declare-fun e!443100 () Bool)

(assert (=> b!798922 (= e!443100 e!443103)))

(declare-fun res!543607 () Bool)

(assert (=> b!798922 (=> (not res!543607) (not e!443103))))

(assert (=> b!798922 (= res!543607 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356720 #b00000000000000000000000000000000) (bvslt lt!356720 (size!21205 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798922 (= lt!356720 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798923 () Bool)

(declare-fun res!543604 () Bool)

(assert (=> b!798923 (=> (not res!543604) (not e!443101))))

(declare-fun arrayContainsKey!0 (array!43415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798923 (= res!543604 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798924 () Bool)

(declare-fun e!443099 () Bool)

(assert (=> b!798924 (= e!443102 e!443099)))

(declare-fun res!543605 () Bool)

(assert (=> b!798924 (=> (not res!543605) (not e!443099))))

(assert (=> b!798924 (= res!543605 (= lt!356716 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356715 lt!356721 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43415 (_ BitVec 32)) SeekEntryResult!8382)

(assert (=> b!798924 (= lt!356716 (seekEntryOrOpen!0 lt!356715 lt!356721 mask!3266))))

(assert (=> b!798924 (= lt!356715 (select (store (arr!20784 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798924 (= lt!356721 (array!43416 (store (arr!20784 a!3170) i!1163 k!2044) (size!21205 a!3170)))))

(declare-fun b!798925 () Bool)

(assert (=> b!798925 (= e!443099 e!443100)))

(declare-fun res!543613 () Bool)

(assert (=> b!798925 (=> (not res!543613) (not e!443100))))

(declare-fun lt!356717 () SeekEntryResult!8382)

(declare-fun lt!356718 () SeekEntryResult!8382)

(assert (=> b!798925 (= res!543613 (and (= lt!356718 lt!356717) (= lt!356717 (Found!8382 j!153)) (not (= (select (arr!20784 a!3170) index!1236) (select (arr!20784 a!3170) j!153)))))))

(assert (=> b!798925 (= lt!356717 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20784 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798925 (= lt!356718 (seekEntryOrOpen!0 (select (arr!20784 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798926 () Bool)

(declare-fun res!543608 () Bool)

(assert (=> b!798926 (=> (not res!543608) (not e!443101))))

(assert (=> b!798926 (= res!543608 (and (= (size!21205 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21205 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21205 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798927 () Bool)

(assert (=> b!798927 (= e!443101 e!443102)))

(declare-fun res!543616 () Bool)

(assert (=> b!798927 (=> (not res!543616) (not e!443102))))

(declare-fun lt!356719 () SeekEntryResult!8382)

(assert (=> b!798927 (= res!543616 (or (= lt!356719 (MissingZero!8382 i!1163)) (= lt!356719 (MissingVacant!8382 i!1163))))))

(assert (=> b!798927 (= lt!356719 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68674 res!543615) b!798926))

(assert (= (and b!798926 res!543608) b!798919))

(assert (= (and b!798919 res!543611) b!798920))

(assert (= (and b!798920 res!543606) b!798923))

(assert (= (and b!798923 res!543604) b!798927))

(assert (= (and b!798927 res!543616) b!798916))

(assert (= (and b!798916 res!543609) b!798921))

(assert (= (and b!798921 res!543612) b!798915))

(assert (= (and b!798915 res!543614) b!798924))

(assert (= (and b!798924 res!543605) b!798925))

(assert (= (and b!798925 res!543613) b!798922))

(assert (= (and b!798922 res!543607) b!798918))

(assert (= (and b!798918 res!543610) b!798917))

(declare-fun m!739993 () Bool)

(assert (=> b!798921 m!739993))

(declare-fun m!739995 () Bool)

(assert (=> b!798916 m!739995))

(declare-fun m!739997 () Bool)

(assert (=> b!798915 m!739997))

(declare-fun m!739999 () Bool)

(assert (=> b!798915 m!739999))

(declare-fun m!740001 () Bool)

(assert (=> b!798925 m!740001))

(declare-fun m!740003 () Bool)

(assert (=> b!798925 m!740003))

(assert (=> b!798925 m!740003))

(declare-fun m!740005 () Bool)

(assert (=> b!798925 m!740005))

(assert (=> b!798925 m!740003))

(declare-fun m!740007 () Bool)

(assert (=> b!798925 m!740007))

(declare-fun m!740009 () Bool)

(assert (=> b!798920 m!740009))

(assert (=> b!798917 m!740003))

(assert (=> b!798917 m!740003))

(declare-fun m!740011 () Bool)

(assert (=> b!798917 m!740011))

(declare-fun m!740013 () Bool)

(assert (=> b!798927 m!740013))

(declare-fun m!740015 () Bool)

(assert (=> start!68674 m!740015))

(declare-fun m!740017 () Bool)

(assert (=> start!68674 m!740017))

(declare-fun m!740019 () Bool)

(assert (=> b!798922 m!740019))

(assert (=> b!798919 m!740003))

(assert (=> b!798919 m!740003))

(declare-fun m!740021 () Bool)

(assert (=> b!798919 m!740021))

(declare-fun m!740023 () Bool)

(assert (=> b!798918 m!740023))

(declare-fun m!740025 () Bool)

(assert (=> b!798923 m!740025))

(declare-fun m!740027 () Bool)

(assert (=> b!798924 m!740027))

(declare-fun m!740029 () Bool)

(assert (=> b!798924 m!740029))

(declare-fun m!740031 () Bool)

(assert (=> b!798924 m!740031))

(declare-fun m!740033 () Bool)

(assert (=> b!798924 m!740033))

(push 1)

(assert (not b!798917))

(assert (not b!798923))

(assert (not b!798916))

(assert (not b!798920))

(assert (not start!68674))

(assert (not b!798922))

(assert (not b!798921))

(assert (not b!798927))

(assert (not b!798925))

