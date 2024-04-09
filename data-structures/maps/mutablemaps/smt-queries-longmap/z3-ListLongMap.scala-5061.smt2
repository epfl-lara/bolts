; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68898 () Bool)

(assert start!68898)

(declare-fun b!803058 () Bool)

(declare-fun res!547756 () Bool)

(declare-fun e!445030 () Bool)

(assert (=> b!803058 (=> (not res!547756) (not e!445030))))

(declare-datatypes ((array!43639 0))(
  ( (array!43640 (arr!20896 (Array (_ BitVec 32) (_ BitVec 64))) (size!21317 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43639)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43639 (_ BitVec 32)) Bool)

(assert (=> b!803058 (= res!547756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803059 () Bool)

(declare-fun res!547754 () Bool)

(declare-fun e!445032 () Bool)

(assert (=> b!803059 (=> (not res!547754) (not e!445032))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803059 (= res!547754 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803060 () Bool)

(declare-fun e!445036 () Bool)

(declare-fun e!445033 () Bool)

(assert (=> b!803060 (= e!445036 e!445033)))

(declare-fun res!547759 () Bool)

(assert (=> b!803060 (=> (not res!547759) (not e!445033))))

(declare-datatypes ((SeekEntryResult!8494 0))(
  ( (MissingZero!8494 (index!36343 (_ BitVec 32))) (Found!8494 (index!36344 (_ BitVec 32))) (Intermediate!8494 (undefined!9306 Bool) (index!36345 (_ BitVec 32)) (x!67213 (_ BitVec 32))) (Undefined!8494) (MissingVacant!8494 (index!36346 (_ BitVec 32))) )
))
(declare-fun lt!359391 () SeekEntryResult!8494)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!359392 () SeekEntryResult!8494)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803060 (= res!547759 (and (= lt!359392 lt!359391) (not (= (select (arr!20896 a!3170) index!1236) (select (arr!20896 a!3170) j!153)))))))

(assert (=> b!803060 (= lt!359391 (Found!8494 j!153))))

(declare-fun b!803061 () Bool)

(declare-fun res!547750 () Bool)

(assert (=> b!803061 (=> (not res!547750) (not e!445032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803061 (= res!547750 (validKeyInArray!0 k0!2044))))

(declare-fun b!803062 () Bool)

(declare-fun res!547749 () Bool)

(assert (=> b!803062 (=> (not res!547749) (not e!445032))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803062 (= res!547749 (and (= (size!21317 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21317 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21317 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803063 () Bool)

(declare-fun res!547747 () Bool)

(assert (=> b!803063 (=> (not res!547747) (not e!445030))))

(declare-datatypes ((List!14912 0))(
  ( (Nil!14909) (Cons!14908 (h!16037 (_ BitVec 64)) (t!21235 List!14912)) )
))
(declare-fun arrayNoDuplicates!0 (array!43639 (_ BitVec 32) List!14912) Bool)

(assert (=> b!803063 (= res!547747 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14909))))

(declare-fun b!803064 () Bool)

(declare-fun res!547752 () Bool)

(assert (=> b!803064 (=> (not res!547752) (not e!445030))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803064 (= res!547752 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21317 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20896 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21317 a!3170)) (= (select (arr!20896 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803065 () Bool)

(declare-fun e!445035 () Bool)

(assert (=> b!803065 (= e!445033 (not e!445035))))

(declare-fun res!547755 () Bool)

(assert (=> b!803065 (=> res!547755 e!445035)))

(declare-fun lt!359387 () SeekEntryResult!8494)

(assert (=> b!803065 (= res!547755 (or (not (= lt!359387 lt!359391)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20896 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359388 () array!43639)

(declare-fun lt!359393 () (_ BitVec 32))

(declare-fun lt!359390 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43639 (_ BitVec 32)) SeekEntryResult!8494)

(assert (=> b!803065 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359393 vacantAfter!23 lt!359390 lt!359388 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359393 vacantBefore!23 (select (arr!20896 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27530 0))(
  ( (Unit!27531) )
))
(declare-fun lt!359395 () Unit!27530)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43639 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27530)

(assert (=> b!803065 (= lt!359395 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359393 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803065 (= lt!359393 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803066 () Bool)

(declare-fun e!445034 () Bool)

(assert (=> b!803066 (= e!445034 e!445036)))

(declare-fun res!547753 () Bool)

(assert (=> b!803066 (=> (not res!547753) (not e!445036))))

(declare-fun lt!359394 () SeekEntryResult!8494)

(assert (=> b!803066 (= res!547753 (= lt!359394 lt!359392))))

(assert (=> b!803066 (= lt!359392 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20896 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43639 (_ BitVec 32)) SeekEntryResult!8494)

(assert (=> b!803066 (= lt!359394 (seekEntryOrOpen!0 (select (arr!20896 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!547757 () Bool)

(assert (=> start!68898 (=> (not res!547757) (not e!445032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68898 (= res!547757 (validMask!0 mask!3266))))

(assert (=> start!68898 e!445032))

(assert (=> start!68898 true))

(declare-fun array_inv!16670 (array!43639) Bool)

(assert (=> start!68898 (array_inv!16670 a!3170)))

(declare-fun b!803067 () Bool)

(assert (=> b!803067 (= e!445030 e!445034)))

(declare-fun res!547748 () Bool)

(assert (=> b!803067 (=> (not res!547748) (not e!445034))))

(declare-fun lt!359389 () SeekEntryResult!8494)

(assert (=> b!803067 (= res!547748 (= lt!359389 lt!359387))))

(assert (=> b!803067 (= lt!359387 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359390 lt!359388 mask!3266))))

(assert (=> b!803067 (= lt!359389 (seekEntryOrOpen!0 lt!359390 lt!359388 mask!3266))))

(assert (=> b!803067 (= lt!359390 (select (store (arr!20896 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803067 (= lt!359388 (array!43640 (store (arr!20896 a!3170) i!1163 k0!2044) (size!21317 a!3170)))))

(declare-fun b!803068 () Bool)

(declare-fun res!547751 () Bool)

(assert (=> b!803068 (=> (not res!547751) (not e!445032))))

(assert (=> b!803068 (= res!547751 (validKeyInArray!0 (select (arr!20896 a!3170) j!153)))))

(declare-fun b!803069 () Bool)

(assert (=> b!803069 (= e!445032 e!445030)))

(declare-fun res!547758 () Bool)

(assert (=> b!803069 (=> (not res!547758) (not e!445030))))

(declare-fun lt!359386 () SeekEntryResult!8494)

(assert (=> b!803069 (= res!547758 (or (= lt!359386 (MissingZero!8494 i!1163)) (= lt!359386 (MissingVacant!8494 i!1163))))))

(assert (=> b!803069 (= lt!359386 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803070 () Bool)

(assert (=> b!803070 (= e!445035 (validKeyInArray!0 lt!359390))))

(assert (= (and start!68898 res!547757) b!803062))

(assert (= (and b!803062 res!547749) b!803068))

(assert (= (and b!803068 res!547751) b!803061))

(assert (= (and b!803061 res!547750) b!803059))

(assert (= (and b!803059 res!547754) b!803069))

(assert (= (and b!803069 res!547758) b!803058))

(assert (= (and b!803058 res!547756) b!803063))

(assert (= (and b!803063 res!547747) b!803064))

(assert (= (and b!803064 res!547752) b!803067))

(assert (= (and b!803067 res!547748) b!803066))

(assert (= (and b!803066 res!547753) b!803060))

(assert (= (and b!803060 res!547759) b!803065))

(assert (= (and b!803065 (not res!547755)) b!803070))

(declare-fun m!744817 () Bool)

(assert (=> b!803064 m!744817))

(declare-fun m!744819 () Bool)

(assert (=> b!803064 m!744819))

(declare-fun m!744821 () Bool)

(assert (=> b!803067 m!744821))

(declare-fun m!744823 () Bool)

(assert (=> b!803067 m!744823))

(declare-fun m!744825 () Bool)

(assert (=> b!803067 m!744825))

(declare-fun m!744827 () Bool)

(assert (=> b!803067 m!744827))

(declare-fun m!744829 () Bool)

(assert (=> start!68898 m!744829))

(declare-fun m!744831 () Bool)

(assert (=> start!68898 m!744831))

(declare-fun m!744833 () Bool)

(assert (=> b!803066 m!744833))

(assert (=> b!803066 m!744833))

(declare-fun m!744835 () Bool)

(assert (=> b!803066 m!744835))

(assert (=> b!803066 m!744833))

(declare-fun m!744837 () Bool)

(assert (=> b!803066 m!744837))

(declare-fun m!744839 () Bool)

(assert (=> b!803060 m!744839))

(assert (=> b!803060 m!744833))

(assert (=> b!803065 m!744833))

(declare-fun m!744841 () Bool)

(assert (=> b!803065 m!744841))

(assert (=> b!803065 m!744833))

(declare-fun m!744843 () Bool)

(assert (=> b!803065 m!744843))

(declare-fun m!744845 () Bool)

(assert (=> b!803065 m!744845))

(declare-fun m!744847 () Bool)

(assert (=> b!803065 m!744847))

(assert (=> b!803065 m!744825))

(declare-fun m!744849 () Bool)

(assert (=> b!803065 m!744849))

(declare-fun m!744851 () Bool)

(assert (=> b!803070 m!744851))

(declare-fun m!744853 () Bool)

(assert (=> b!803061 m!744853))

(declare-fun m!744855 () Bool)

(assert (=> b!803069 m!744855))

(declare-fun m!744857 () Bool)

(assert (=> b!803058 m!744857))

(assert (=> b!803068 m!744833))

(assert (=> b!803068 m!744833))

(declare-fun m!744859 () Bool)

(assert (=> b!803068 m!744859))

(declare-fun m!744861 () Bool)

(assert (=> b!803059 m!744861))

(declare-fun m!744863 () Bool)

(assert (=> b!803063 m!744863))

(check-sat (not b!803059) (not start!68898) (not b!803069) (not b!803065) (not b!803058) (not b!803067) (not b!803063) (not b!803066) (not b!803061) (not b!803070) (not b!803068))
(check-sat)
