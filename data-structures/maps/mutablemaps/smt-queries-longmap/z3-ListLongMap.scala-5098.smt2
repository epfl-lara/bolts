; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69216 () Bool)

(assert start!69216)

(declare-fun b!806909 () Bool)

(declare-fun res!551202 () Bool)

(declare-fun e!446824 () Bool)

(assert (=> b!806909 (=> (not res!551202) (not e!446824))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806909 (= res!551202 (validKeyInArray!0 k0!2044))))

(declare-fun b!806910 () Bool)

(declare-fun e!446823 () Bool)

(assert (=> b!806910 (= e!446823 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361476 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806910 (= lt!361476 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806911 () Bool)

(declare-fun res!551208 () Bool)

(declare-fun e!446820 () Bool)

(assert (=> b!806911 (=> (not res!551208) (not e!446820))))

(declare-datatypes ((array!43867 0))(
  ( (array!43868 (arr!21007 (Array (_ BitVec 32) (_ BitVec 64))) (size!21428 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43867)

(declare-datatypes ((List!15023 0))(
  ( (Nil!15020) (Cons!15019 (h!16148 (_ BitVec 64)) (t!21346 List!15023)) )
))
(declare-fun arrayNoDuplicates!0 (array!43867 (_ BitVec 32) List!15023) Bool)

(assert (=> b!806911 (= res!551208 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15020))))

(declare-fun res!551204 () Bool)

(assert (=> start!69216 (=> (not res!551204) (not e!446824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69216 (= res!551204 (validMask!0 mask!3266))))

(assert (=> start!69216 e!446824))

(assert (=> start!69216 true))

(declare-fun array_inv!16781 (array!43867) Bool)

(assert (=> start!69216 (array_inv!16781 a!3170)))

(declare-fun b!806912 () Bool)

(declare-fun res!551210 () Bool)

(assert (=> b!806912 (=> (not res!551210) (not e!446824))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806912 (= res!551210 (and (= (size!21428 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21428 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21428 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806913 () Bool)

(declare-fun res!551206 () Bool)

(assert (=> b!806913 (=> (not res!551206) (not e!446824))))

(assert (=> b!806913 (= res!551206 (validKeyInArray!0 (select (arr!21007 a!3170) j!153)))))

(declare-fun b!806914 () Bool)

(declare-fun res!551212 () Bool)

(assert (=> b!806914 (=> (not res!551212) (not e!446820))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806914 (= res!551212 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21428 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21007 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21428 a!3170)) (= (select (arr!21007 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806915 () Bool)

(assert (=> b!806915 (= e!446824 e!446820)))

(declare-fun res!551209 () Bool)

(assert (=> b!806915 (=> (not res!551209) (not e!446820))))

(declare-datatypes ((SeekEntryResult!8605 0))(
  ( (MissingZero!8605 (index!36787 (_ BitVec 32))) (Found!8605 (index!36788 (_ BitVec 32))) (Intermediate!8605 (undefined!9417 Bool) (index!36789 (_ BitVec 32)) (x!67626 (_ BitVec 32))) (Undefined!8605) (MissingVacant!8605 (index!36790 (_ BitVec 32))) )
))
(declare-fun lt!361475 () SeekEntryResult!8605)

(assert (=> b!806915 (= res!551209 (or (= lt!361475 (MissingZero!8605 i!1163)) (= lt!361475 (MissingVacant!8605 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43867 (_ BitVec 32)) SeekEntryResult!8605)

(assert (=> b!806915 (= lt!361475 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!806916 () Bool)

(declare-fun e!446821 () Bool)

(assert (=> b!806916 (= e!446820 e!446821)))

(declare-fun res!551211 () Bool)

(assert (=> b!806916 (=> (not res!551211) (not e!446821))))

(declare-fun lt!361480 () (_ BitVec 64))

(declare-fun lt!361479 () array!43867)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43867 (_ BitVec 32)) SeekEntryResult!8605)

(assert (=> b!806916 (= res!551211 (= (seekEntryOrOpen!0 lt!361480 lt!361479 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361480 lt!361479 mask!3266)))))

(assert (=> b!806916 (= lt!361480 (select (store (arr!21007 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806916 (= lt!361479 (array!43868 (store (arr!21007 a!3170) i!1163 k0!2044) (size!21428 a!3170)))))

(declare-fun b!806917 () Bool)

(declare-fun res!551205 () Bool)

(assert (=> b!806917 (=> (not res!551205) (not e!446820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43867 (_ BitVec 32)) Bool)

(assert (=> b!806917 (= res!551205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806918 () Bool)

(assert (=> b!806918 (= e!446821 e!446823)))

(declare-fun res!551203 () Bool)

(assert (=> b!806918 (=> (not res!551203) (not e!446823))))

(declare-fun lt!361478 () SeekEntryResult!8605)

(declare-fun lt!361477 () SeekEntryResult!8605)

(assert (=> b!806918 (= res!551203 (and (= lt!361477 lt!361478) (= lt!361478 (Found!8605 j!153)) (not (= (select (arr!21007 a!3170) index!1236) (select (arr!21007 a!3170) j!153)))))))

(assert (=> b!806918 (= lt!361478 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21007 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806918 (= lt!361477 (seekEntryOrOpen!0 (select (arr!21007 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806919 () Bool)

(declare-fun res!551207 () Bool)

(assert (=> b!806919 (=> (not res!551207) (not e!446824))))

(declare-fun arrayContainsKey!0 (array!43867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806919 (= res!551207 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69216 res!551204) b!806912))

(assert (= (and b!806912 res!551210) b!806913))

(assert (= (and b!806913 res!551206) b!806909))

(assert (= (and b!806909 res!551202) b!806919))

(assert (= (and b!806919 res!551207) b!806915))

(assert (= (and b!806915 res!551209) b!806917))

(assert (= (and b!806917 res!551205) b!806911))

(assert (= (and b!806911 res!551208) b!806914))

(assert (= (and b!806914 res!551212) b!806916))

(assert (= (and b!806916 res!551211) b!806918))

(assert (= (and b!806918 res!551203) b!806910))

(declare-fun m!748983 () Bool)

(assert (=> b!806918 m!748983))

(declare-fun m!748985 () Bool)

(assert (=> b!806918 m!748985))

(assert (=> b!806918 m!748985))

(declare-fun m!748987 () Bool)

(assert (=> b!806918 m!748987))

(assert (=> b!806918 m!748985))

(declare-fun m!748989 () Bool)

(assert (=> b!806918 m!748989))

(assert (=> b!806913 m!748985))

(assert (=> b!806913 m!748985))

(declare-fun m!748991 () Bool)

(assert (=> b!806913 m!748991))

(declare-fun m!748993 () Bool)

(assert (=> b!806909 m!748993))

(declare-fun m!748995 () Bool)

(assert (=> b!806915 m!748995))

(declare-fun m!748997 () Bool)

(assert (=> b!806916 m!748997))

(declare-fun m!748999 () Bool)

(assert (=> b!806916 m!748999))

(declare-fun m!749001 () Bool)

(assert (=> b!806916 m!749001))

(declare-fun m!749003 () Bool)

(assert (=> b!806916 m!749003))

(declare-fun m!749005 () Bool)

(assert (=> b!806919 m!749005))

(declare-fun m!749007 () Bool)

(assert (=> b!806910 m!749007))

(declare-fun m!749009 () Bool)

(assert (=> b!806917 m!749009))

(declare-fun m!749011 () Bool)

(assert (=> b!806914 m!749011))

(declare-fun m!749013 () Bool)

(assert (=> b!806914 m!749013))

(declare-fun m!749015 () Bool)

(assert (=> b!806911 m!749015))

(declare-fun m!749017 () Bool)

(assert (=> start!69216 m!749017))

(declare-fun m!749019 () Bool)

(assert (=> start!69216 m!749019))

(check-sat (not b!806909) (not b!806918) (not b!806910) (not b!806915) (not b!806916) (not b!806917) (not b!806919) (not b!806913) (not b!806911) (not start!69216))
(check-sat)
