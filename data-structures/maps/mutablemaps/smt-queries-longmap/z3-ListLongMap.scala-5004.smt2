; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68556 () Bool)

(assert start!68556)

(declare-fun b!796892 () Bool)

(declare-fun res!541587 () Bool)

(declare-fun e!442160 () Bool)

(assert (=> b!796892 (=> (not res!541587) (not e!442160))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796892 (= res!541587 (validKeyInArray!0 k0!2044))))

(declare-fun b!796893 () Bool)

(declare-fun e!442161 () Bool)

(assert (=> b!796893 (= e!442160 e!442161)))

(declare-fun res!541589 () Bool)

(assert (=> b!796893 (=> (not res!541589) (not e!442161))))

(declare-datatypes ((SeekEntryResult!8323 0))(
  ( (MissingZero!8323 (index!35659 (_ BitVec 32))) (Found!8323 (index!35660 (_ BitVec 32))) (Intermediate!8323 (undefined!9135 Bool) (index!35661 (_ BitVec 32)) (x!66586 (_ BitVec 32))) (Undefined!8323) (MissingVacant!8323 (index!35662 (_ BitVec 32))) )
))
(declare-fun lt!355470 () SeekEntryResult!8323)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796893 (= res!541589 (or (= lt!355470 (MissingZero!8323 i!1163)) (= lt!355470 (MissingVacant!8323 i!1163))))))

(declare-datatypes ((array!43297 0))(
  ( (array!43298 (arr!20725 (Array (_ BitVec 32) (_ BitVec 64))) (size!21146 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43297)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43297 (_ BitVec 32)) SeekEntryResult!8323)

(assert (=> b!796893 (= lt!355470 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!541591 () Bool)

(assert (=> start!68556 (=> (not res!541591) (not e!442160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68556 (= res!541591 (validMask!0 mask!3266))))

(assert (=> start!68556 e!442160))

(assert (=> start!68556 true))

(declare-fun array_inv!16499 (array!43297) Bool)

(assert (=> start!68556 (array_inv!16499 a!3170)))

(declare-fun b!796894 () Bool)

(declare-fun res!541584 () Bool)

(assert (=> b!796894 (=> (not res!541584) (not e!442161))))

(declare-datatypes ((List!14741 0))(
  ( (Nil!14738) (Cons!14737 (h!15866 (_ BitVec 64)) (t!21064 List!14741)) )
))
(declare-fun arrayNoDuplicates!0 (array!43297 (_ BitVec 32) List!14741) Bool)

(assert (=> b!796894 (= res!541584 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14738))))

(declare-fun b!796895 () Bool)

(declare-fun e!442159 () Bool)

(assert (=> b!796895 (= e!442159 (not true))))

(declare-fun lt!355471 () SeekEntryResult!8323)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796895 (= lt!355471 (Found!8323 index!1236))))

(declare-fun b!796896 () Bool)

(declare-fun res!541586 () Bool)

(assert (=> b!796896 (=> (not res!541586) (not e!442161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43297 (_ BitVec 32)) Bool)

(assert (=> b!796896 (= res!541586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796897 () Bool)

(declare-fun e!442158 () Bool)

(assert (=> b!796897 (= e!442158 e!442159)))

(declare-fun res!541581 () Bool)

(assert (=> b!796897 (=> (not res!541581) (not e!442159))))

(declare-fun lt!355469 () SeekEntryResult!8323)

(declare-fun lt!355465 () SeekEntryResult!8323)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796897 (= res!541581 (and (= lt!355465 lt!355469) (= lt!355469 (Found!8323 j!153)) (= (select (arr!20725 a!3170) index!1236) (select (arr!20725 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43297 (_ BitVec 32)) SeekEntryResult!8323)

(assert (=> b!796897 (= lt!355469 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20725 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796897 (= lt!355465 (seekEntryOrOpen!0 (select (arr!20725 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796898 () Bool)

(declare-fun res!541585 () Bool)

(assert (=> b!796898 (=> (not res!541585) (not e!442160))))

(assert (=> b!796898 (= res!541585 (and (= (size!21146 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21146 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21146 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796899 () Bool)

(declare-fun res!541588 () Bool)

(assert (=> b!796899 (=> (not res!541588) (not e!442161))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!796899 (= res!541588 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21146 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20725 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21146 a!3170)) (= (select (arr!20725 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796900 () Bool)

(declare-fun res!541582 () Bool)

(assert (=> b!796900 (=> (not res!541582) (not e!442160))))

(assert (=> b!796900 (= res!541582 (validKeyInArray!0 (select (arr!20725 a!3170) j!153)))))

(declare-fun b!796901 () Bool)

(declare-fun res!541590 () Bool)

(assert (=> b!796901 (=> (not res!541590) (not e!442160))))

(declare-fun arrayContainsKey!0 (array!43297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796901 (= res!541590 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796902 () Bool)

(assert (=> b!796902 (= e!442161 e!442158)))

(declare-fun res!541583 () Bool)

(assert (=> b!796902 (=> (not res!541583) (not e!442158))))

(declare-fun lt!355466 () SeekEntryResult!8323)

(assert (=> b!796902 (= res!541583 (= lt!355466 lt!355471))))

(declare-fun lt!355467 () (_ BitVec 64))

(declare-fun lt!355468 () array!43297)

(assert (=> b!796902 (= lt!355471 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355467 lt!355468 mask!3266))))

(assert (=> b!796902 (= lt!355466 (seekEntryOrOpen!0 lt!355467 lt!355468 mask!3266))))

(assert (=> b!796902 (= lt!355467 (select (store (arr!20725 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796902 (= lt!355468 (array!43298 (store (arr!20725 a!3170) i!1163 k0!2044) (size!21146 a!3170)))))

(assert (= (and start!68556 res!541591) b!796898))

(assert (= (and b!796898 res!541585) b!796900))

(assert (= (and b!796900 res!541582) b!796892))

(assert (= (and b!796892 res!541587) b!796901))

(assert (= (and b!796901 res!541590) b!796893))

(assert (= (and b!796893 res!541589) b!796896))

(assert (= (and b!796896 res!541586) b!796894))

(assert (= (and b!796894 res!541584) b!796899))

(assert (= (and b!796899 res!541588) b!796902))

(assert (= (and b!796902 res!541583) b!796897))

(assert (= (and b!796897 res!541581) b!796895))

(declare-fun m!737827 () Bool)

(assert (=> b!796896 m!737827))

(declare-fun m!737829 () Bool)

(assert (=> b!796900 m!737829))

(assert (=> b!796900 m!737829))

(declare-fun m!737831 () Bool)

(assert (=> b!796900 m!737831))

(declare-fun m!737833 () Bool)

(assert (=> b!796894 m!737833))

(declare-fun m!737835 () Bool)

(assert (=> b!796901 m!737835))

(declare-fun m!737837 () Bool)

(assert (=> b!796893 m!737837))

(declare-fun m!737839 () Bool)

(assert (=> start!68556 m!737839))

(declare-fun m!737841 () Bool)

(assert (=> start!68556 m!737841))

(declare-fun m!737843 () Bool)

(assert (=> b!796897 m!737843))

(assert (=> b!796897 m!737829))

(assert (=> b!796897 m!737829))

(declare-fun m!737845 () Bool)

(assert (=> b!796897 m!737845))

(assert (=> b!796897 m!737829))

(declare-fun m!737847 () Bool)

(assert (=> b!796897 m!737847))

(declare-fun m!737849 () Bool)

(assert (=> b!796892 m!737849))

(declare-fun m!737851 () Bool)

(assert (=> b!796899 m!737851))

(declare-fun m!737853 () Bool)

(assert (=> b!796899 m!737853))

(declare-fun m!737855 () Bool)

(assert (=> b!796902 m!737855))

(declare-fun m!737857 () Bool)

(assert (=> b!796902 m!737857))

(declare-fun m!737859 () Bool)

(assert (=> b!796902 m!737859))

(declare-fun m!737861 () Bool)

(assert (=> b!796902 m!737861))

(check-sat (not start!68556) (not b!796892) (not b!796893) (not b!796902) (not b!796900) (not b!796901) (not b!796894) (not b!796897) (not b!796896))
(check-sat)
