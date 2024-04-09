; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68900 () Bool)

(assert start!68900)

(declare-fun res!547792 () Bool)

(declare-fun e!445054 () Bool)

(assert (=> start!68900 (=> (not res!547792) (not e!445054))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68900 (= res!547792 (validMask!0 mask!3266))))

(assert (=> start!68900 e!445054))

(assert (=> start!68900 true))

(declare-datatypes ((array!43641 0))(
  ( (array!43642 (arr!20897 (Array (_ BitVec 32) (_ BitVec 64))) (size!21318 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43641)

(declare-fun array_inv!16671 (array!43641) Bool)

(assert (=> start!68900 (array_inv!16671 a!3170)))

(declare-fun b!803097 () Bool)

(declare-fun e!445056 () Bool)

(assert (=> b!803097 (= e!445054 e!445056)))

(declare-fun res!547791 () Bool)

(assert (=> b!803097 (=> (not res!547791) (not e!445056))))

(declare-datatypes ((SeekEntryResult!8495 0))(
  ( (MissingZero!8495 (index!36347 (_ BitVec 32))) (Found!8495 (index!36348 (_ BitVec 32))) (Intermediate!8495 (undefined!9307 Bool) (index!36349 (_ BitVec 32)) (x!67214 (_ BitVec 32))) (Undefined!8495) (MissingVacant!8495 (index!36350 (_ BitVec 32))) )
))
(declare-fun lt!359424 () SeekEntryResult!8495)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803097 (= res!547791 (or (= lt!359424 (MissingZero!8495 i!1163)) (= lt!359424 (MissingVacant!8495 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43641 (_ BitVec 32)) SeekEntryResult!8495)

(assert (=> b!803097 (= lt!359424 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803098 () Bool)

(declare-fun e!445057 () Bool)

(declare-fun e!445055 () Bool)

(assert (=> b!803098 (= e!445057 (not e!445055))))

(declare-fun res!547786 () Bool)

(assert (=> b!803098 (=> res!547786 e!445055)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359422 () SeekEntryResult!8495)

(declare-fun lt!359419 () SeekEntryResult!8495)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803098 (= res!547786 (or (not (= lt!359422 lt!359419)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20897 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359423 () (_ BitVec 32))

(declare-fun lt!359425 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!359421 () array!43641)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43641 (_ BitVec 32)) SeekEntryResult!8495)

(assert (=> b!803098 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359423 vacantAfter!23 lt!359425 lt!359421 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359423 vacantBefore!23 (select (arr!20897 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27532 0))(
  ( (Unit!27533) )
))
(declare-fun lt!359417 () Unit!27532)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27532)

(assert (=> b!803098 (= lt!359417 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359423 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803098 (= lt!359423 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803099 () Bool)

(declare-fun res!547789 () Bool)

(assert (=> b!803099 (=> (not res!547789) (not e!445054))))

(declare-fun arrayContainsKey!0 (array!43641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803099 (= res!547789 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803100 () Bool)

(declare-fun res!547796 () Bool)

(assert (=> b!803100 (=> (not res!547796) (not e!445054))))

(assert (=> b!803100 (= res!547796 (and (= (size!21318 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21318 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21318 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803101 () Bool)

(declare-fun e!445051 () Bool)

(assert (=> b!803101 (= e!445051 e!445057)))

(declare-fun res!547787 () Bool)

(assert (=> b!803101 (=> (not res!547787) (not e!445057))))

(declare-fun lt!359420 () SeekEntryResult!8495)

(assert (=> b!803101 (= res!547787 (and (= lt!359420 lt!359419) (not (= (select (arr!20897 a!3170) index!1236) (select (arr!20897 a!3170) j!153)))))))

(assert (=> b!803101 (= lt!359419 (Found!8495 j!153))))

(declare-fun b!803102 () Bool)

(declare-fun res!547795 () Bool)

(assert (=> b!803102 (=> (not res!547795) (not e!445054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803102 (= res!547795 (validKeyInArray!0 (select (arr!20897 a!3170) j!153)))))

(declare-fun b!803103 () Bool)

(assert (=> b!803103 (= e!445055 (validKeyInArray!0 lt!359425))))

(declare-fun b!803104 () Bool)

(declare-fun e!445052 () Bool)

(assert (=> b!803104 (= e!445056 e!445052)))

(declare-fun res!547793 () Bool)

(assert (=> b!803104 (=> (not res!547793) (not e!445052))))

(declare-fun lt!359416 () SeekEntryResult!8495)

(assert (=> b!803104 (= res!547793 (= lt!359416 lt!359422))))

(assert (=> b!803104 (= lt!359422 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359425 lt!359421 mask!3266))))

(assert (=> b!803104 (= lt!359416 (seekEntryOrOpen!0 lt!359425 lt!359421 mask!3266))))

(assert (=> b!803104 (= lt!359425 (select (store (arr!20897 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803104 (= lt!359421 (array!43642 (store (arr!20897 a!3170) i!1163 k!2044) (size!21318 a!3170)))))

(declare-fun b!803105 () Bool)

(declare-fun res!547798 () Bool)

(assert (=> b!803105 (=> (not res!547798) (not e!445056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43641 (_ BitVec 32)) Bool)

(assert (=> b!803105 (= res!547798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803106 () Bool)

(declare-fun res!547788 () Bool)

(assert (=> b!803106 (=> (not res!547788) (not e!445056))))

(declare-datatypes ((List!14913 0))(
  ( (Nil!14910) (Cons!14909 (h!16038 (_ BitVec 64)) (t!21236 List!14913)) )
))
(declare-fun arrayNoDuplicates!0 (array!43641 (_ BitVec 32) List!14913) Bool)

(assert (=> b!803106 (= res!547788 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14910))))

(declare-fun b!803107 () Bool)

(declare-fun res!547797 () Bool)

(assert (=> b!803107 (=> (not res!547797) (not e!445054))))

(assert (=> b!803107 (= res!547797 (validKeyInArray!0 k!2044))))

(declare-fun b!803108 () Bool)

(declare-fun res!547794 () Bool)

(assert (=> b!803108 (=> (not res!547794) (not e!445056))))

(assert (=> b!803108 (= res!547794 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21318 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20897 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21318 a!3170)) (= (select (arr!20897 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803109 () Bool)

(assert (=> b!803109 (= e!445052 e!445051)))

(declare-fun res!547790 () Bool)

(assert (=> b!803109 (=> (not res!547790) (not e!445051))))

(declare-fun lt!359418 () SeekEntryResult!8495)

(assert (=> b!803109 (= res!547790 (= lt!359418 lt!359420))))

(assert (=> b!803109 (= lt!359420 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20897 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803109 (= lt!359418 (seekEntryOrOpen!0 (select (arr!20897 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68900 res!547792) b!803100))

(assert (= (and b!803100 res!547796) b!803102))

(assert (= (and b!803102 res!547795) b!803107))

(assert (= (and b!803107 res!547797) b!803099))

(assert (= (and b!803099 res!547789) b!803097))

(assert (= (and b!803097 res!547791) b!803105))

(assert (= (and b!803105 res!547798) b!803106))

(assert (= (and b!803106 res!547788) b!803108))

(assert (= (and b!803108 res!547794) b!803104))

(assert (= (and b!803104 res!547793) b!803109))

(assert (= (and b!803109 res!547790) b!803101))

(assert (= (and b!803101 res!547787) b!803098))

(assert (= (and b!803098 (not res!547786)) b!803103))

(declare-fun m!744865 () Bool)

(assert (=> b!803097 m!744865))

(declare-fun m!744867 () Bool)

(assert (=> b!803106 m!744867))

(declare-fun m!744869 () Bool)

(assert (=> b!803104 m!744869))

(declare-fun m!744871 () Bool)

(assert (=> b!803104 m!744871))

(declare-fun m!744873 () Bool)

(assert (=> b!803104 m!744873))

(declare-fun m!744875 () Bool)

(assert (=> b!803104 m!744875))

(declare-fun m!744877 () Bool)

(assert (=> start!68900 m!744877))

(declare-fun m!744879 () Bool)

(assert (=> start!68900 m!744879))

(declare-fun m!744881 () Bool)

(assert (=> b!803108 m!744881))

(declare-fun m!744883 () Bool)

(assert (=> b!803108 m!744883))

(declare-fun m!744885 () Bool)

(assert (=> b!803105 m!744885))

(declare-fun m!744887 () Bool)

(assert (=> b!803109 m!744887))

(assert (=> b!803109 m!744887))

(declare-fun m!744889 () Bool)

(assert (=> b!803109 m!744889))

(assert (=> b!803109 m!744887))

(declare-fun m!744891 () Bool)

(assert (=> b!803109 m!744891))

(assert (=> b!803098 m!744887))

(declare-fun m!744893 () Bool)

(assert (=> b!803098 m!744893))

(declare-fun m!744895 () Bool)

(assert (=> b!803098 m!744895))

(declare-fun m!744897 () Bool)

(assert (=> b!803098 m!744897))

(assert (=> b!803098 m!744887))

(declare-fun m!744899 () Bool)

(assert (=> b!803098 m!744899))

(declare-fun m!744901 () Bool)

(assert (=> b!803098 m!744901))

(assert (=> b!803098 m!744873))

(declare-fun m!744903 () Bool)

(assert (=> b!803101 m!744903))

(assert (=> b!803101 m!744887))

(declare-fun m!744905 () Bool)

(assert (=> b!803107 m!744905))

(declare-fun m!744907 () Bool)

(assert (=> b!803099 m!744907))

(assert (=> b!803102 m!744887))

(assert (=> b!803102 m!744887))

(declare-fun m!744909 () Bool)

(assert (=> b!803102 m!744909))

(declare-fun m!744911 () Bool)

(assert (=> b!803103 m!744911))

(push 1)

(assert (not b!803103))

(assert (not b!803097))

(assert (not b!803109))

(assert (not b!803098))

(assert (not start!68900))

