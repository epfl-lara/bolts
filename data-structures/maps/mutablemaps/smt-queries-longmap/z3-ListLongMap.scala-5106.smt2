; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69264 () Bool)

(assert start!69264)

(declare-fun b!807701 () Bool)

(declare-fun res!552000 () Bool)

(declare-fun e!447182 () Bool)

(assert (=> b!807701 (=> (not res!552000) (not e!447182))))

(declare-datatypes ((array!43915 0))(
  ( (array!43916 (arr!21031 (Array (_ BitVec 32) (_ BitVec 64))) (size!21452 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43915)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43915 (_ BitVec 32)) Bool)

(assert (=> b!807701 (= res!552000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807702 () Bool)

(declare-fun e!447181 () Bool)

(assert (=> b!807702 (= e!447181 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361907 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807702 (= lt!361907 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!551998 () Bool)

(declare-fun e!447183 () Bool)

(assert (=> start!69264 (=> (not res!551998) (not e!447183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69264 (= res!551998 (validMask!0 mask!3266))))

(assert (=> start!69264 e!447183))

(assert (=> start!69264 true))

(declare-fun array_inv!16805 (array!43915) Bool)

(assert (=> start!69264 (array_inv!16805 a!3170)))

(declare-fun b!807703 () Bool)

(declare-fun res!551995 () Bool)

(assert (=> b!807703 (=> (not res!551995) (not e!447182))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807703 (= res!551995 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21452 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21031 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21452 a!3170)) (= (select (arr!21031 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807704 () Bool)

(declare-fun res!551996 () Bool)

(assert (=> b!807704 (=> (not res!551996) (not e!447183))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807704 (= res!551996 (and (= (size!21452 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21452 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21452 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807705 () Bool)

(declare-fun e!447184 () Bool)

(assert (=> b!807705 (= e!447184 e!447181)))

(declare-fun res!552003 () Bool)

(assert (=> b!807705 (=> (not res!552003) (not e!447181))))

(declare-datatypes ((SeekEntryResult!8629 0))(
  ( (MissingZero!8629 (index!36883 (_ BitVec 32))) (Found!8629 (index!36884 (_ BitVec 32))) (Intermediate!8629 (undefined!9441 Bool) (index!36885 (_ BitVec 32)) (x!67714 (_ BitVec 32))) (Undefined!8629) (MissingVacant!8629 (index!36886 (_ BitVec 32))) )
))
(declare-fun lt!361910 () SeekEntryResult!8629)

(declare-fun lt!361908 () SeekEntryResult!8629)

(assert (=> b!807705 (= res!552003 (and (= lt!361910 lt!361908) (= lt!361908 (Found!8629 j!153)) (not (= (select (arr!21031 a!3170) index!1236) (select (arr!21031 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43915 (_ BitVec 32)) SeekEntryResult!8629)

(assert (=> b!807705 (= lt!361908 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21031 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43915 (_ BitVec 32)) SeekEntryResult!8629)

(assert (=> b!807705 (= lt!361910 (seekEntryOrOpen!0 (select (arr!21031 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807706 () Bool)

(assert (=> b!807706 (= e!447182 e!447184)))

(declare-fun res!551994 () Bool)

(assert (=> b!807706 (=> (not res!551994) (not e!447184))))

(declare-fun lt!361909 () (_ BitVec 64))

(declare-fun lt!361911 () array!43915)

(assert (=> b!807706 (= res!551994 (= (seekEntryOrOpen!0 lt!361909 lt!361911 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361909 lt!361911 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!807706 (= lt!361909 (select (store (arr!21031 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807706 (= lt!361911 (array!43916 (store (arr!21031 a!3170) i!1163 k0!2044) (size!21452 a!3170)))))

(declare-fun b!807707 () Bool)

(declare-fun res!552002 () Bool)

(assert (=> b!807707 (=> (not res!552002) (not e!447183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807707 (= res!552002 (validKeyInArray!0 k0!2044))))

(declare-fun b!807708 () Bool)

(assert (=> b!807708 (= e!447183 e!447182)))

(declare-fun res!551997 () Bool)

(assert (=> b!807708 (=> (not res!551997) (not e!447182))))

(declare-fun lt!361912 () SeekEntryResult!8629)

(assert (=> b!807708 (= res!551997 (or (= lt!361912 (MissingZero!8629 i!1163)) (= lt!361912 (MissingVacant!8629 i!1163))))))

(assert (=> b!807708 (= lt!361912 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807709 () Bool)

(declare-fun res!551999 () Bool)

(assert (=> b!807709 (=> (not res!551999) (not e!447183))))

(declare-fun arrayContainsKey!0 (array!43915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807709 (= res!551999 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807710 () Bool)

(declare-fun res!552001 () Bool)

(assert (=> b!807710 (=> (not res!552001) (not e!447183))))

(assert (=> b!807710 (= res!552001 (validKeyInArray!0 (select (arr!21031 a!3170) j!153)))))

(declare-fun b!807711 () Bool)

(declare-fun res!552004 () Bool)

(assert (=> b!807711 (=> (not res!552004) (not e!447182))))

(declare-datatypes ((List!15047 0))(
  ( (Nil!15044) (Cons!15043 (h!16172 (_ BitVec 64)) (t!21370 List!15047)) )
))
(declare-fun arrayNoDuplicates!0 (array!43915 (_ BitVec 32) List!15047) Bool)

(assert (=> b!807711 (= res!552004 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15044))))

(assert (= (and start!69264 res!551998) b!807704))

(assert (= (and b!807704 res!551996) b!807710))

(assert (= (and b!807710 res!552001) b!807707))

(assert (= (and b!807707 res!552002) b!807709))

(assert (= (and b!807709 res!551999) b!807708))

(assert (= (and b!807708 res!551997) b!807701))

(assert (= (and b!807701 res!552000) b!807711))

(assert (= (and b!807711 res!552004) b!807703))

(assert (= (and b!807703 res!551995) b!807706))

(assert (= (and b!807706 res!551994) b!807705))

(assert (= (and b!807705 res!552003) b!807702))

(declare-fun m!749895 () Bool)

(assert (=> b!807707 m!749895))

(declare-fun m!749897 () Bool)

(assert (=> b!807708 m!749897))

(declare-fun m!749899 () Bool)

(assert (=> b!807706 m!749899))

(declare-fun m!749901 () Bool)

(assert (=> b!807706 m!749901))

(declare-fun m!749903 () Bool)

(assert (=> b!807706 m!749903))

(declare-fun m!749905 () Bool)

(assert (=> b!807706 m!749905))

(declare-fun m!749907 () Bool)

(assert (=> b!807703 m!749907))

(declare-fun m!749909 () Bool)

(assert (=> b!807703 m!749909))

(declare-fun m!749911 () Bool)

(assert (=> b!807711 m!749911))

(declare-fun m!749913 () Bool)

(assert (=> b!807705 m!749913))

(declare-fun m!749915 () Bool)

(assert (=> b!807705 m!749915))

(assert (=> b!807705 m!749915))

(declare-fun m!749917 () Bool)

(assert (=> b!807705 m!749917))

(assert (=> b!807705 m!749915))

(declare-fun m!749919 () Bool)

(assert (=> b!807705 m!749919))

(assert (=> b!807710 m!749915))

(assert (=> b!807710 m!749915))

(declare-fun m!749921 () Bool)

(assert (=> b!807710 m!749921))

(declare-fun m!749923 () Bool)

(assert (=> b!807709 m!749923))

(declare-fun m!749925 () Bool)

(assert (=> start!69264 m!749925))

(declare-fun m!749927 () Bool)

(assert (=> start!69264 m!749927))

(declare-fun m!749929 () Bool)

(assert (=> b!807701 m!749929))

(declare-fun m!749931 () Bool)

(assert (=> b!807702 m!749931))

(check-sat (not b!807706) (not b!807710) (not b!807705) (not b!807709) (not b!807711) (not b!807701) (not b!807707) (not b!807708) (not start!69264) (not b!807702))
(check-sat)
