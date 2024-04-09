; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68858 () Bool)

(assert start!68858)

(declare-fun b!802352 () Bool)

(declare-fun res!547051 () Bool)

(declare-fun e!444688 () Bool)

(assert (=> b!802352 (=> (not res!547051) (not e!444688))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43599 0))(
  ( (array!43600 (arr!20876 (Array (_ BitVec 32) (_ BitVec 64))) (size!21297 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43599)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802352 (= res!547051 (and (= (size!21297 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21297 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21297 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802353 () Bool)

(declare-fun res!547047 () Bool)

(declare-fun e!444686 () Bool)

(assert (=> b!802353 (=> (not res!547047) (not e!444686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43599 (_ BitVec 32)) Bool)

(assert (=> b!802353 (= res!547047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802354 () Bool)

(declare-fun res!547049 () Bool)

(assert (=> b!802354 (=> (not res!547049) (not e!444686))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802354 (= res!547049 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21297 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20876 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21297 a!3170)) (= (select (arr!20876 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802355 () Bool)

(declare-fun e!444684 () Bool)

(assert (=> b!802355 (= e!444684 (not true))))

(declare-fun lt!358845 () (_ BitVec 64))

(declare-fun lt!358849 () (_ BitVec 32))

(declare-fun lt!358846 () array!43599)

(declare-datatypes ((SeekEntryResult!8474 0))(
  ( (MissingZero!8474 (index!36263 (_ BitVec 32))) (Found!8474 (index!36264 (_ BitVec 32))) (Intermediate!8474 (undefined!9286 Bool) (index!36265 (_ BitVec 32)) (x!67137 (_ BitVec 32))) (Undefined!8474) (MissingVacant!8474 (index!36266 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43599 (_ BitVec 32)) SeekEntryResult!8474)

(assert (=> b!802355 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358849 vacantAfter!23 lt!358845 lt!358846 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358849 vacantBefore!23 (select (arr!20876 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27490 0))(
  ( (Unit!27491) )
))
(declare-fun lt!358848 () Unit!27490)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43599 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27490)

(assert (=> b!802355 (= lt!358848 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358849 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802355 (= lt!358849 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!547042 () Bool)

(assert (=> start!68858 (=> (not res!547042) (not e!444688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68858 (= res!547042 (validMask!0 mask!3266))))

(assert (=> start!68858 e!444688))

(assert (=> start!68858 true))

(declare-fun array_inv!16650 (array!43599) Bool)

(assert (=> start!68858 (array_inv!16650 a!3170)))

(declare-fun b!802356 () Bool)

(declare-fun res!547048 () Bool)

(assert (=> b!802356 (=> (not res!547048) (not e!444686))))

(declare-datatypes ((List!14892 0))(
  ( (Nil!14889) (Cons!14888 (h!16017 (_ BitVec 64)) (t!21215 List!14892)) )
))
(declare-fun arrayNoDuplicates!0 (array!43599 (_ BitVec 32) List!14892) Bool)

(assert (=> b!802356 (= res!547048 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14889))))

(declare-fun b!802357 () Bool)

(declare-fun res!547046 () Bool)

(assert (=> b!802357 (=> (not res!547046) (not e!444688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802357 (= res!547046 (validKeyInArray!0 k!2044))))

(declare-fun b!802358 () Bool)

(declare-fun e!444685 () Bool)

(assert (=> b!802358 (= e!444685 e!444684)))

(declare-fun res!547045 () Bool)

(assert (=> b!802358 (=> (not res!547045) (not e!444684))))

(declare-fun lt!358844 () SeekEntryResult!8474)

(declare-fun lt!358847 () SeekEntryResult!8474)

(assert (=> b!802358 (= res!547045 (and (= lt!358844 lt!358847) (= lt!358847 (Found!8474 j!153)) (not (= (select (arr!20876 a!3170) index!1236) (select (arr!20876 a!3170) j!153)))))))

(assert (=> b!802358 (= lt!358847 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20876 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43599 (_ BitVec 32)) SeekEntryResult!8474)

(assert (=> b!802358 (= lt!358844 (seekEntryOrOpen!0 (select (arr!20876 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802359 () Bool)

(assert (=> b!802359 (= e!444686 e!444685)))

(declare-fun res!547043 () Bool)

(assert (=> b!802359 (=> (not res!547043) (not e!444685))))

(assert (=> b!802359 (= res!547043 (= (seekEntryOrOpen!0 lt!358845 lt!358846 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358845 lt!358846 mask!3266)))))

(assert (=> b!802359 (= lt!358845 (select (store (arr!20876 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802359 (= lt!358846 (array!43600 (store (arr!20876 a!3170) i!1163 k!2044) (size!21297 a!3170)))))

(declare-fun b!802360 () Bool)

(assert (=> b!802360 (= e!444688 e!444686)))

(declare-fun res!547050 () Bool)

(assert (=> b!802360 (=> (not res!547050) (not e!444686))))

(declare-fun lt!358843 () SeekEntryResult!8474)

(assert (=> b!802360 (= res!547050 (or (= lt!358843 (MissingZero!8474 i!1163)) (= lt!358843 (MissingVacant!8474 i!1163))))))

(assert (=> b!802360 (= lt!358843 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802361 () Bool)

(declare-fun res!547044 () Bool)

(assert (=> b!802361 (=> (not res!547044) (not e!444688))))

(declare-fun arrayContainsKey!0 (array!43599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802361 (= res!547044 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802362 () Bool)

(declare-fun res!547041 () Bool)

(assert (=> b!802362 (=> (not res!547041) (not e!444688))))

(assert (=> b!802362 (= res!547041 (validKeyInArray!0 (select (arr!20876 a!3170) j!153)))))

(assert (= (and start!68858 res!547042) b!802352))

(assert (= (and b!802352 res!547051) b!802362))

(assert (= (and b!802362 res!547041) b!802357))

(assert (= (and b!802357 res!547046) b!802361))

(assert (= (and b!802361 res!547044) b!802360))

(assert (= (and b!802360 res!547050) b!802353))

(assert (= (and b!802353 res!547047) b!802356))

(assert (= (and b!802356 res!547048) b!802354))

(assert (= (and b!802354 res!547049) b!802359))

(assert (= (and b!802359 res!547043) b!802358))

(assert (= (and b!802358 res!547045) b!802355))

(declare-fun m!743927 () Bool)

(assert (=> b!802353 m!743927))

(declare-fun m!743929 () Bool)

(assert (=> b!802356 m!743929))

(declare-fun m!743931 () Bool)

(assert (=> b!802360 m!743931))

(declare-fun m!743933 () Bool)

(assert (=> b!802361 m!743933))

(declare-fun m!743935 () Bool)

(assert (=> b!802359 m!743935))

(declare-fun m!743937 () Bool)

(assert (=> b!802359 m!743937))

(declare-fun m!743939 () Bool)

(assert (=> b!802359 m!743939))

(declare-fun m!743941 () Bool)

(assert (=> b!802359 m!743941))

(declare-fun m!743943 () Bool)

(assert (=> b!802354 m!743943))

(declare-fun m!743945 () Bool)

(assert (=> b!802354 m!743945))

(declare-fun m!743947 () Bool)

(assert (=> b!802358 m!743947))

(declare-fun m!743949 () Bool)

(assert (=> b!802358 m!743949))

(assert (=> b!802358 m!743949))

(declare-fun m!743951 () Bool)

(assert (=> b!802358 m!743951))

(assert (=> b!802358 m!743949))

(declare-fun m!743953 () Bool)

(assert (=> b!802358 m!743953))

(declare-fun m!743955 () Bool)

(assert (=> b!802357 m!743955))

(declare-fun m!743957 () Bool)

(assert (=> start!68858 m!743957))

(declare-fun m!743959 () Bool)

(assert (=> start!68858 m!743959))

(assert (=> b!802362 m!743949))

(assert (=> b!802362 m!743949))

(declare-fun m!743961 () Bool)

(assert (=> b!802362 m!743961))

(assert (=> b!802355 m!743949))

(declare-fun m!743963 () Bool)

(assert (=> b!802355 m!743963))

(declare-fun m!743965 () Bool)

(assert (=> b!802355 m!743965))

(declare-fun m!743967 () Bool)

(assert (=> b!802355 m!743967))

(assert (=> b!802355 m!743949))

(declare-fun m!743969 () Bool)

(assert (=> b!802355 m!743969))

(push 1)

