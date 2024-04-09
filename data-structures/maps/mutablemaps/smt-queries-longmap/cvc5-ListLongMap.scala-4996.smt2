; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68506 () Bool)

(assert start!68506)

(declare-fun b!796049 () Bool)

(declare-fun res!540746 () Bool)

(declare-fun e!441765 () Bool)

(assert (=> b!796049 (=> (not res!540746) (not e!441765))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43247 0))(
  ( (array!43248 (arr!20700 (Array (_ BitVec 32) (_ BitVec 64))) (size!21121 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43247)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!796049 (= res!540746 (and (= (size!21121 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21121 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21121 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796050 () Bool)

(declare-fun res!540740 () Bool)

(assert (=> b!796050 (=> (not res!540740) (not e!441765))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796050 (= res!540740 (validKeyInArray!0 (select (arr!20700 a!3170) j!153)))))

(declare-fun b!796051 () Bool)

(declare-fun e!441769 () Bool)

(assert (=> b!796051 (= e!441769 (not true))))

(declare-datatypes ((SeekEntryResult!8298 0))(
  ( (MissingZero!8298 (index!35559 (_ BitVec 32))) (Found!8298 (index!35560 (_ BitVec 32))) (Intermediate!8298 (undefined!9110 Bool) (index!35561 (_ BitVec 32)) (x!66497 (_ BitVec 32))) (Undefined!8298) (MissingVacant!8298 (index!35562 (_ BitVec 32))) )
))
(declare-fun lt!354935 () SeekEntryResult!8298)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796051 (= lt!354935 (Found!8298 index!1236))))

(declare-fun b!796052 () Bool)

(declare-fun e!441768 () Bool)

(assert (=> b!796052 (= e!441765 e!441768)))

(declare-fun res!540748 () Bool)

(assert (=> b!796052 (=> (not res!540748) (not e!441768))))

(declare-fun lt!354931 () SeekEntryResult!8298)

(assert (=> b!796052 (= res!540748 (or (= lt!354931 (MissingZero!8298 i!1163)) (= lt!354931 (MissingVacant!8298 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43247 (_ BitVec 32)) SeekEntryResult!8298)

(assert (=> b!796052 (= lt!354931 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796053 () Bool)

(declare-fun res!540742 () Bool)

(assert (=> b!796053 (=> (not res!540742) (not e!441768))))

(declare-datatypes ((List!14716 0))(
  ( (Nil!14713) (Cons!14712 (h!15841 (_ BitVec 64)) (t!21039 List!14716)) )
))
(declare-fun arrayNoDuplicates!0 (array!43247 (_ BitVec 32) List!14716) Bool)

(assert (=> b!796053 (= res!540742 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14713))))

(declare-fun b!796054 () Bool)

(declare-fun e!441766 () Bool)

(assert (=> b!796054 (= e!441768 e!441766)))

(declare-fun res!540745 () Bool)

(assert (=> b!796054 (=> (not res!540745) (not e!441766))))

(declare-fun lt!354934 () SeekEntryResult!8298)

(assert (=> b!796054 (= res!540745 (= lt!354934 lt!354935))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354937 () array!43247)

(declare-fun lt!354933 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43247 (_ BitVec 32)) SeekEntryResult!8298)

(assert (=> b!796054 (= lt!354935 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354933 lt!354937 mask!3266))))

(assert (=> b!796054 (= lt!354934 (seekEntryOrOpen!0 lt!354933 lt!354937 mask!3266))))

(assert (=> b!796054 (= lt!354933 (select (store (arr!20700 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796054 (= lt!354937 (array!43248 (store (arr!20700 a!3170) i!1163 k!2044) (size!21121 a!3170)))))

(declare-fun b!796055 () Bool)

(declare-fun res!540738 () Bool)

(assert (=> b!796055 (=> (not res!540738) (not e!441768))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796055 (= res!540738 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21121 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20700 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21121 a!3170)) (= (select (arr!20700 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796056 () Bool)

(assert (=> b!796056 (= e!441766 e!441769)))

(declare-fun res!540744 () Bool)

(assert (=> b!796056 (=> (not res!540744) (not e!441769))))

(declare-fun lt!354936 () SeekEntryResult!8298)

(declare-fun lt!354932 () SeekEntryResult!8298)

(assert (=> b!796056 (= res!540744 (and (= lt!354932 lt!354936) (= lt!354936 (Found!8298 j!153)) (= (select (arr!20700 a!3170) index!1236) (select (arr!20700 a!3170) j!153))))))

(assert (=> b!796056 (= lt!354936 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20700 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796056 (= lt!354932 (seekEntryOrOpen!0 (select (arr!20700 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796057 () Bool)

(declare-fun res!540743 () Bool)

(assert (=> b!796057 (=> (not res!540743) (not e!441765))))

(assert (=> b!796057 (= res!540743 (validKeyInArray!0 k!2044))))

(declare-fun b!796058 () Bool)

(declare-fun res!540747 () Bool)

(assert (=> b!796058 (=> (not res!540747) (not e!441768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43247 (_ BitVec 32)) Bool)

(assert (=> b!796058 (= res!540747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796059 () Bool)

(declare-fun res!540739 () Bool)

(assert (=> b!796059 (=> (not res!540739) (not e!441765))))

(declare-fun arrayContainsKey!0 (array!43247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796059 (= res!540739 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!540741 () Bool)

(assert (=> start!68506 (=> (not res!540741) (not e!441765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68506 (= res!540741 (validMask!0 mask!3266))))

(assert (=> start!68506 e!441765))

(assert (=> start!68506 true))

(declare-fun array_inv!16474 (array!43247) Bool)

(assert (=> start!68506 (array_inv!16474 a!3170)))

(assert (= (and start!68506 res!540741) b!796049))

(assert (= (and b!796049 res!540746) b!796050))

(assert (= (and b!796050 res!540740) b!796057))

(assert (= (and b!796057 res!540743) b!796059))

(assert (= (and b!796059 res!540739) b!796052))

(assert (= (and b!796052 res!540748) b!796058))

(assert (= (and b!796058 res!540747) b!796053))

(assert (= (and b!796053 res!540742) b!796055))

(assert (= (and b!796055 res!540738) b!796054))

(assert (= (and b!796054 res!540745) b!796056))

(assert (= (and b!796056 res!540744) b!796051))

(declare-fun m!736909 () Bool)

(assert (=> b!796057 m!736909))

(declare-fun m!736911 () Bool)

(assert (=> b!796059 m!736911))

(declare-fun m!736913 () Bool)

(assert (=> b!796055 m!736913))

(declare-fun m!736915 () Bool)

(assert (=> b!796055 m!736915))

(declare-fun m!736917 () Bool)

(assert (=> b!796050 m!736917))

(assert (=> b!796050 m!736917))

(declare-fun m!736919 () Bool)

(assert (=> b!796050 m!736919))

(declare-fun m!736921 () Bool)

(assert (=> b!796053 m!736921))

(declare-fun m!736923 () Bool)

(assert (=> start!68506 m!736923))

(declare-fun m!736925 () Bool)

(assert (=> start!68506 m!736925))

(declare-fun m!736927 () Bool)

(assert (=> b!796056 m!736927))

(assert (=> b!796056 m!736917))

(assert (=> b!796056 m!736917))

(declare-fun m!736929 () Bool)

(assert (=> b!796056 m!736929))

(assert (=> b!796056 m!736917))

(declare-fun m!736931 () Bool)

(assert (=> b!796056 m!736931))

(declare-fun m!736933 () Bool)

(assert (=> b!796058 m!736933))

(declare-fun m!736935 () Bool)

(assert (=> b!796054 m!736935))

(declare-fun m!736937 () Bool)

(assert (=> b!796054 m!736937))

(declare-fun m!736939 () Bool)

(assert (=> b!796054 m!736939))

(declare-fun m!736941 () Bool)

(assert (=> b!796054 m!736941))

(declare-fun m!736943 () Bool)

(assert (=> b!796052 m!736943))

(push 1)

