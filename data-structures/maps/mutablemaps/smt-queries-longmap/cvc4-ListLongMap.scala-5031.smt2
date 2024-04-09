; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68720 () Bool)

(assert start!68720)

(declare-fun b!799812 () Bool)

(declare-fun e!443513 () Bool)

(declare-fun e!443516 () Bool)

(assert (=> b!799812 (= e!443513 e!443516)))

(declare-fun res!544507 () Bool)

(assert (=> b!799812 (=> (not res!544507) (not e!443516))))

(declare-datatypes ((SeekEntryResult!8405 0))(
  ( (MissingZero!8405 (index!35987 (_ BitVec 32))) (Found!8405 (index!35988 (_ BitVec 32))) (Intermediate!8405 (undefined!9217 Bool) (index!35989 (_ BitVec 32)) (x!66884 (_ BitVec 32))) (Undefined!8405) (MissingVacant!8405 (index!35990 (_ BitVec 32))) )
))
(declare-fun lt!357270 () SeekEntryResult!8405)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799812 (= res!544507 (or (= lt!357270 (MissingZero!8405 i!1163)) (= lt!357270 (MissingVacant!8405 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43461 0))(
  ( (array!43462 (arr!20807 (Array (_ BitVec 32) (_ BitVec 64))) (size!21228 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43461)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43461 (_ BitVec 32)) SeekEntryResult!8405)

(assert (=> b!799812 (= lt!357270 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799813 () Bool)

(declare-fun res!544512 () Bool)

(assert (=> b!799813 (=> (not res!544512) (not e!443513))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799813 (= res!544512 (and (= (size!21228 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21228 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21228 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799814 () Bool)

(declare-fun res!544510 () Bool)

(assert (=> b!799814 (=> (not res!544510) (not e!443516))))

(declare-datatypes ((List!14823 0))(
  ( (Nil!14820) (Cons!14819 (h!15948 (_ BitVec 64)) (t!21146 List!14823)) )
))
(declare-fun arrayNoDuplicates!0 (array!43461 (_ BitVec 32) List!14823) Bool)

(assert (=> b!799814 (= res!544510 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14820))))

(declare-fun b!799815 () Bool)

(declare-fun res!544509 () Bool)

(assert (=> b!799815 (=> (not res!544509) (not e!443513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799815 (= res!544509 (validKeyInArray!0 k!2044))))

(declare-fun b!799816 () Bool)

(declare-fun e!443514 () Bool)

(declare-fun e!443518 () Bool)

(assert (=> b!799816 (= e!443514 e!443518)))

(declare-fun res!544503 () Bool)

(assert (=> b!799816 (=> (not res!544503) (not e!443518))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357267 () (_ BitVec 32))

(assert (=> b!799816 (= res!544503 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357267 #b00000000000000000000000000000000) (bvslt lt!357267 (size!21228 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799816 (= lt!357267 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!544501 () Bool)

(assert (=> start!68720 (=> (not res!544501) (not e!443513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68720 (= res!544501 (validMask!0 mask!3266))))

(assert (=> start!68720 e!443513))

(assert (=> start!68720 true))

(declare-fun array_inv!16581 (array!43461) Bool)

(assert (=> start!68720 (array_inv!16581 a!3170)))

(declare-fun b!799817 () Bool)

(declare-fun e!443517 () Bool)

(assert (=> b!799817 (= e!443517 e!443514)))

(declare-fun res!544511 () Bool)

(assert (=> b!799817 (=> (not res!544511) (not e!443514))))

(declare-fun lt!357274 () SeekEntryResult!8405)

(declare-fun lt!357271 () SeekEntryResult!8405)

(assert (=> b!799817 (= res!544511 (and (= lt!357271 lt!357274) (= lt!357274 (Found!8405 j!153)) (not (= (select (arr!20807 a!3170) index!1236) (select (arr!20807 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43461 (_ BitVec 32)) SeekEntryResult!8405)

(assert (=> b!799817 (= lt!357274 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20807 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799817 (= lt!357271 (seekEntryOrOpen!0 (select (arr!20807 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799818 () Bool)

(assert (=> b!799818 (= e!443516 e!443517)))

(declare-fun res!544504 () Bool)

(assert (=> b!799818 (=> (not res!544504) (not e!443517))))

(declare-fun lt!357268 () SeekEntryResult!8405)

(declare-fun lt!357269 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357272 () array!43461)

(assert (=> b!799818 (= res!544504 (= lt!357268 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357269 lt!357272 mask!3266)))))

(assert (=> b!799818 (= lt!357268 (seekEntryOrOpen!0 lt!357269 lt!357272 mask!3266))))

(assert (=> b!799818 (= lt!357269 (select (store (arr!20807 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799818 (= lt!357272 (array!43462 (store (arr!20807 a!3170) i!1163 k!2044) (size!21228 a!3170)))))

(declare-fun b!799819 () Bool)

(declare-fun res!544508 () Bool)

(assert (=> b!799819 (=> (not res!544508) (not e!443516))))

(assert (=> b!799819 (= res!544508 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21228 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20807 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21228 a!3170)) (= (select (arr!20807 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799820 () Bool)

(assert (=> b!799820 (= e!443518 false)))

(declare-fun lt!357273 () SeekEntryResult!8405)

(assert (=> b!799820 (= lt!357273 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357267 vacantBefore!23 (select (arr!20807 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799821 () Bool)

(declare-fun res!544506 () Bool)

(assert (=> b!799821 (=> (not res!544506) (not e!443516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43461 (_ BitVec 32)) Bool)

(assert (=> b!799821 (= res!544506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799822 () Bool)

(declare-fun res!544505 () Bool)

(assert (=> b!799822 (=> (not res!544505) (not e!443518))))

(assert (=> b!799822 (= res!544505 (= lt!357268 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357267 vacantAfter!23 lt!357269 lt!357272 mask!3266)))))

(declare-fun b!799823 () Bool)

(declare-fun res!544513 () Bool)

(assert (=> b!799823 (=> (not res!544513) (not e!443513))))

(assert (=> b!799823 (= res!544513 (validKeyInArray!0 (select (arr!20807 a!3170) j!153)))))

(declare-fun b!799824 () Bool)

(declare-fun res!544502 () Bool)

(assert (=> b!799824 (=> (not res!544502) (not e!443513))))

(declare-fun arrayContainsKey!0 (array!43461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799824 (= res!544502 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68720 res!544501) b!799813))

(assert (= (and b!799813 res!544512) b!799823))

(assert (= (and b!799823 res!544513) b!799815))

(assert (= (and b!799815 res!544509) b!799824))

(assert (= (and b!799824 res!544502) b!799812))

(assert (= (and b!799812 res!544507) b!799821))

(assert (= (and b!799821 res!544506) b!799814))

(assert (= (and b!799814 res!544510) b!799819))

(assert (= (and b!799819 res!544508) b!799818))

(assert (= (and b!799818 res!544504) b!799817))

(assert (= (and b!799817 res!544511) b!799816))

(assert (= (and b!799816 res!544503) b!799822))

(assert (= (and b!799822 res!544505) b!799820))

(declare-fun m!740959 () Bool)

(assert (=> b!799819 m!740959))

(declare-fun m!740961 () Bool)

(assert (=> b!799819 m!740961))

(declare-fun m!740963 () Bool)

(assert (=> b!799823 m!740963))

(assert (=> b!799823 m!740963))

(declare-fun m!740965 () Bool)

(assert (=> b!799823 m!740965))

(assert (=> b!799820 m!740963))

(assert (=> b!799820 m!740963))

(declare-fun m!740967 () Bool)

(assert (=> b!799820 m!740967))

(declare-fun m!740969 () Bool)

(assert (=> b!799821 m!740969))

(declare-fun m!740971 () Bool)

(assert (=> b!799818 m!740971))

(declare-fun m!740973 () Bool)

(assert (=> b!799818 m!740973))

(declare-fun m!740975 () Bool)

(assert (=> b!799818 m!740975))

(declare-fun m!740977 () Bool)

(assert (=> b!799818 m!740977))

(declare-fun m!740979 () Bool)

(assert (=> b!799817 m!740979))

(assert (=> b!799817 m!740963))

(assert (=> b!799817 m!740963))

(declare-fun m!740981 () Bool)

(assert (=> b!799817 m!740981))

(assert (=> b!799817 m!740963))

(declare-fun m!740983 () Bool)

(assert (=> b!799817 m!740983))

(declare-fun m!740985 () Bool)

(assert (=> b!799822 m!740985))

(declare-fun m!740987 () Bool)

(assert (=> start!68720 m!740987))

(declare-fun m!740989 () Bool)

(assert (=> start!68720 m!740989))

(declare-fun m!740991 () Bool)

(assert (=> b!799815 m!740991))

(declare-fun m!740993 () Bool)

(assert (=> b!799814 m!740993))

(declare-fun m!740995 () Bool)

(assert (=> b!799816 m!740995))

(declare-fun m!740997 () Bool)

(assert (=> b!799812 m!740997))

(declare-fun m!740999 () Bool)

(assert (=> b!799824 m!740999))

(push 1)

