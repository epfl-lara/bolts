; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68558 () Bool)

(assert start!68558)

(declare-fun b!796925 () Bool)

(declare-fun res!541614 () Bool)

(declare-fun e!442174 () Bool)

(assert (=> b!796925 (=> (not res!541614) (not e!442174))))

(declare-datatypes ((array!43299 0))(
  ( (array!43300 (arr!20726 (Array (_ BitVec 32) (_ BitVec 64))) (size!21147 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43299)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796925 (= res!541614 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!541619 () Bool)

(assert (=> start!68558 (=> (not res!541619) (not e!442174))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68558 (= res!541619 (validMask!0 mask!3266))))

(assert (=> start!68558 e!442174))

(assert (=> start!68558 true))

(declare-fun array_inv!16500 (array!43299) Bool)

(assert (=> start!68558 (array_inv!16500 a!3170)))

(declare-fun b!796926 () Bool)

(declare-fun res!541624 () Bool)

(assert (=> b!796926 (=> (not res!541624) (not e!442174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796926 (= res!541624 (validKeyInArray!0 k!2044))))

(declare-fun b!796927 () Bool)

(declare-fun e!442173 () Bool)

(declare-fun e!442177 () Bool)

(assert (=> b!796927 (= e!442173 e!442177)))

(declare-fun res!541618 () Bool)

(assert (=> b!796927 (=> (not res!541618) (not e!442177))))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8324 0))(
  ( (MissingZero!8324 (index!35663 (_ BitVec 32))) (Found!8324 (index!35664 (_ BitVec 32))) (Intermediate!8324 (undefined!9136 Bool) (index!35665 (_ BitVec 32)) (x!66587 (_ BitVec 32))) (Undefined!8324) (MissingVacant!8324 (index!35666 (_ BitVec 32))) )
))
(declare-fun lt!355491 () SeekEntryResult!8324)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!355492 () SeekEntryResult!8324)

(assert (=> b!796927 (= res!541618 (and (= lt!355492 lt!355491) (= lt!355491 (Found!8324 j!153)) (= (select (arr!20726 a!3170) index!1236) (select (arr!20726 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43299 (_ BitVec 32)) SeekEntryResult!8324)

(assert (=> b!796927 (= lt!355491 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20726 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43299 (_ BitVec 32)) SeekEntryResult!8324)

(assert (=> b!796927 (= lt!355492 (seekEntryOrOpen!0 (select (arr!20726 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796928 () Bool)

(assert (=> b!796928 (= e!442177 (not true))))

(declare-fun lt!355489 () SeekEntryResult!8324)

(assert (=> b!796928 (= lt!355489 (Found!8324 index!1236))))

(declare-fun b!796929 () Bool)

(declare-fun res!541620 () Bool)

(declare-fun e!442176 () Bool)

(assert (=> b!796929 (=> (not res!541620) (not e!442176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43299 (_ BitVec 32)) Bool)

(assert (=> b!796929 (= res!541620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796930 () Bool)

(assert (=> b!796930 (= e!442176 e!442173)))

(declare-fun res!541615 () Bool)

(assert (=> b!796930 (=> (not res!541615) (not e!442173))))

(declare-fun lt!355487 () SeekEntryResult!8324)

(assert (=> b!796930 (= res!541615 (= lt!355487 lt!355489))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355488 () array!43299)

(declare-fun lt!355486 () (_ BitVec 64))

(assert (=> b!796930 (= lt!355489 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355486 lt!355488 mask!3266))))

(assert (=> b!796930 (= lt!355487 (seekEntryOrOpen!0 lt!355486 lt!355488 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796930 (= lt!355486 (select (store (arr!20726 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796930 (= lt!355488 (array!43300 (store (arr!20726 a!3170) i!1163 k!2044) (size!21147 a!3170)))))

(declare-fun b!796931 () Bool)

(declare-fun res!541616 () Bool)

(assert (=> b!796931 (=> (not res!541616) (not e!442174))))

(assert (=> b!796931 (= res!541616 (and (= (size!21147 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21147 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21147 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796932 () Bool)

(declare-fun res!541622 () Bool)

(assert (=> b!796932 (=> (not res!541622) (not e!442174))))

(assert (=> b!796932 (= res!541622 (validKeyInArray!0 (select (arr!20726 a!3170) j!153)))))

(declare-fun b!796933 () Bool)

(assert (=> b!796933 (= e!442174 e!442176)))

(declare-fun res!541623 () Bool)

(assert (=> b!796933 (=> (not res!541623) (not e!442176))))

(declare-fun lt!355490 () SeekEntryResult!8324)

(assert (=> b!796933 (= res!541623 (or (= lt!355490 (MissingZero!8324 i!1163)) (= lt!355490 (MissingVacant!8324 i!1163))))))

(assert (=> b!796933 (= lt!355490 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796934 () Bool)

(declare-fun res!541621 () Bool)

(assert (=> b!796934 (=> (not res!541621) (not e!442176))))

(assert (=> b!796934 (= res!541621 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21147 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20726 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21147 a!3170)) (= (select (arr!20726 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796935 () Bool)

(declare-fun res!541617 () Bool)

(assert (=> b!796935 (=> (not res!541617) (not e!442176))))

(declare-datatypes ((List!14742 0))(
  ( (Nil!14739) (Cons!14738 (h!15867 (_ BitVec 64)) (t!21065 List!14742)) )
))
(declare-fun arrayNoDuplicates!0 (array!43299 (_ BitVec 32) List!14742) Bool)

(assert (=> b!796935 (= res!541617 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14739))))

(assert (= (and start!68558 res!541619) b!796931))

(assert (= (and b!796931 res!541616) b!796932))

(assert (= (and b!796932 res!541622) b!796926))

(assert (= (and b!796926 res!541624) b!796925))

(assert (= (and b!796925 res!541614) b!796933))

(assert (= (and b!796933 res!541623) b!796929))

(assert (= (and b!796929 res!541620) b!796935))

(assert (= (and b!796935 res!541617) b!796934))

(assert (= (and b!796934 res!541621) b!796930))

(assert (= (and b!796930 res!541615) b!796927))

(assert (= (and b!796927 res!541618) b!796928))

(declare-fun m!737863 () Bool)

(assert (=> b!796926 m!737863))

(declare-fun m!737865 () Bool)

(assert (=> b!796927 m!737865))

(declare-fun m!737867 () Bool)

(assert (=> b!796927 m!737867))

(assert (=> b!796927 m!737867))

(declare-fun m!737869 () Bool)

(assert (=> b!796927 m!737869))

(assert (=> b!796927 m!737867))

(declare-fun m!737871 () Bool)

(assert (=> b!796927 m!737871))

(declare-fun m!737873 () Bool)

(assert (=> b!796925 m!737873))

(assert (=> b!796932 m!737867))

(assert (=> b!796932 m!737867))

(declare-fun m!737875 () Bool)

(assert (=> b!796932 m!737875))

(declare-fun m!737877 () Bool)

(assert (=> start!68558 m!737877))

(declare-fun m!737879 () Bool)

(assert (=> start!68558 m!737879))

(declare-fun m!737881 () Bool)

(assert (=> b!796933 m!737881))

(declare-fun m!737883 () Bool)

(assert (=> b!796934 m!737883))

(declare-fun m!737885 () Bool)

(assert (=> b!796934 m!737885))

(declare-fun m!737887 () Bool)

(assert (=> b!796930 m!737887))

(declare-fun m!737889 () Bool)

(assert (=> b!796930 m!737889))

(declare-fun m!737891 () Bool)

(assert (=> b!796930 m!737891))

(declare-fun m!737893 () Bool)

(assert (=> b!796930 m!737893))

(declare-fun m!737895 () Bool)

(assert (=> b!796929 m!737895))

(declare-fun m!737897 () Bool)

(assert (=> b!796935 m!737897))

(push 1)

