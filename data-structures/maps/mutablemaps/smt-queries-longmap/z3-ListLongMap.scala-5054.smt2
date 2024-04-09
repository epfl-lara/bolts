; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68856 () Bool)

(assert start!68856)

(declare-fun b!802319 () Bool)

(declare-fun e!444673 () Bool)

(declare-fun e!444669 () Bool)

(assert (=> b!802319 (= e!444673 e!444669)))

(declare-fun res!547011 () Bool)

(assert (=> b!802319 (=> (not res!547011) (not e!444669))))

(declare-datatypes ((SeekEntryResult!8473 0))(
  ( (MissingZero!8473 (index!36259 (_ BitVec 32))) (Found!8473 (index!36260 (_ BitVec 32))) (Intermediate!8473 (undefined!9285 Bool) (index!36261 (_ BitVec 32)) (x!67136 (_ BitVec 32))) (Undefined!8473) (MissingVacant!8473 (index!36262 (_ BitVec 32))) )
))
(declare-fun lt!358827 () SeekEntryResult!8473)

(declare-datatypes ((array!43597 0))(
  ( (array!43598 (arr!20875 (Array (_ BitVec 32) (_ BitVec 64))) (size!21296 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43597)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!358828 () SeekEntryResult!8473)

(assert (=> b!802319 (= res!547011 (and (= lt!358828 lt!358827) (= lt!358827 (Found!8473 j!153)) (not (= (select (arr!20875 a!3170) index!1236) (select (arr!20875 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43597 (_ BitVec 32)) SeekEntryResult!8473)

(assert (=> b!802319 (= lt!358827 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20875 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43597 (_ BitVec 32)) SeekEntryResult!8473)

(assert (=> b!802319 (= lt!358828 (seekEntryOrOpen!0 (select (arr!20875 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802320 () Bool)

(declare-fun res!547014 () Bool)

(declare-fun e!444672 () Bool)

(assert (=> b!802320 (=> (not res!547014) (not e!444672))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802320 (= res!547014 (validKeyInArray!0 k0!2044))))

(declare-fun b!802321 () Bool)

(declare-fun e!444671 () Bool)

(assert (=> b!802321 (= e!444672 e!444671)))

(declare-fun res!547015 () Bool)

(assert (=> b!802321 (=> (not res!547015) (not e!444671))))

(declare-fun lt!358822 () SeekEntryResult!8473)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802321 (= res!547015 (or (= lt!358822 (MissingZero!8473 i!1163)) (= lt!358822 (MissingVacant!8473 i!1163))))))

(assert (=> b!802321 (= lt!358822 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802322 () Bool)

(declare-fun res!547018 () Bool)

(assert (=> b!802322 (=> (not res!547018) (not e!444671))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!802322 (= res!547018 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21296 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20875 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21296 a!3170)) (= (select (arr!20875 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!547010 () Bool)

(assert (=> start!68856 (=> (not res!547010) (not e!444672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68856 (= res!547010 (validMask!0 mask!3266))))

(assert (=> start!68856 e!444672))

(assert (=> start!68856 true))

(declare-fun array_inv!16649 (array!43597) Bool)

(assert (=> start!68856 (array_inv!16649 a!3170)))

(declare-fun b!802323 () Bool)

(declare-fun res!547013 () Bool)

(assert (=> b!802323 (=> (not res!547013) (not e!444671))))

(declare-datatypes ((List!14891 0))(
  ( (Nil!14888) (Cons!14887 (h!16016 (_ BitVec 64)) (t!21214 List!14891)) )
))
(declare-fun arrayNoDuplicates!0 (array!43597 (_ BitVec 32) List!14891) Bool)

(assert (=> b!802323 (= res!547013 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14888))))

(declare-fun b!802324 () Bool)

(declare-fun res!547016 () Bool)

(assert (=> b!802324 (=> (not res!547016) (not e!444672))))

(assert (=> b!802324 (= res!547016 (validKeyInArray!0 (select (arr!20875 a!3170) j!153)))))

(declare-fun b!802325 () Bool)

(declare-fun res!547008 () Bool)

(assert (=> b!802325 (=> (not res!547008) (not e!444672))))

(assert (=> b!802325 (= res!547008 (and (= (size!21296 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21296 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21296 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802326 () Bool)

(declare-fun res!547012 () Bool)

(assert (=> b!802326 (=> (not res!547012) (not e!444671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43597 (_ BitVec 32)) Bool)

(assert (=> b!802326 (= res!547012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802327 () Bool)

(assert (=> b!802327 (= e!444669 (not true))))

(declare-fun lt!358825 () array!43597)

(declare-fun lt!358823 () (_ BitVec 32))

(declare-fun lt!358826 () (_ BitVec 64))

(assert (=> b!802327 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358823 vacantAfter!23 lt!358826 lt!358825 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358823 vacantBefore!23 (select (arr!20875 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27488 0))(
  ( (Unit!27489) )
))
(declare-fun lt!358824 () Unit!27488)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27488)

(assert (=> b!802327 (= lt!358824 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358823 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802327 (= lt!358823 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802328 () Bool)

(declare-fun res!547009 () Bool)

(assert (=> b!802328 (=> (not res!547009) (not e!444672))))

(declare-fun arrayContainsKey!0 (array!43597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802328 (= res!547009 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802329 () Bool)

(assert (=> b!802329 (= e!444671 e!444673)))

(declare-fun res!547017 () Bool)

(assert (=> b!802329 (=> (not res!547017) (not e!444673))))

(assert (=> b!802329 (= res!547017 (= (seekEntryOrOpen!0 lt!358826 lt!358825 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358826 lt!358825 mask!3266)))))

(assert (=> b!802329 (= lt!358826 (select (store (arr!20875 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802329 (= lt!358825 (array!43598 (store (arr!20875 a!3170) i!1163 k0!2044) (size!21296 a!3170)))))

(assert (= (and start!68856 res!547010) b!802325))

(assert (= (and b!802325 res!547008) b!802324))

(assert (= (and b!802324 res!547016) b!802320))

(assert (= (and b!802320 res!547014) b!802328))

(assert (= (and b!802328 res!547009) b!802321))

(assert (= (and b!802321 res!547015) b!802326))

(assert (= (and b!802326 res!547012) b!802323))

(assert (= (and b!802323 res!547013) b!802322))

(assert (= (and b!802322 res!547018) b!802329))

(assert (= (and b!802329 res!547017) b!802319))

(assert (= (and b!802319 res!547011) b!802327))

(declare-fun m!743883 () Bool)

(assert (=> start!68856 m!743883))

(declare-fun m!743885 () Bool)

(assert (=> start!68856 m!743885))

(declare-fun m!743887 () Bool)

(assert (=> b!802328 m!743887))

(declare-fun m!743889 () Bool)

(assert (=> b!802320 m!743889))

(declare-fun m!743891 () Bool)

(assert (=> b!802329 m!743891))

(declare-fun m!743893 () Bool)

(assert (=> b!802329 m!743893))

(declare-fun m!743895 () Bool)

(assert (=> b!802329 m!743895))

(declare-fun m!743897 () Bool)

(assert (=> b!802329 m!743897))

(declare-fun m!743899 () Bool)

(assert (=> b!802326 m!743899))

(declare-fun m!743901 () Bool)

(assert (=> b!802322 m!743901))

(declare-fun m!743903 () Bool)

(assert (=> b!802322 m!743903))

(declare-fun m!743905 () Bool)

(assert (=> b!802319 m!743905))

(declare-fun m!743907 () Bool)

(assert (=> b!802319 m!743907))

(assert (=> b!802319 m!743907))

(declare-fun m!743909 () Bool)

(assert (=> b!802319 m!743909))

(assert (=> b!802319 m!743907))

(declare-fun m!743911 () Bool)

(assert (=> b!802319 m!743911))

(declare-fun m!743913 () Bool)

(assert (=> b!802323 m!743913))

(declare-fun m!743915 () Bool)

(assert (=> b!802321 m!743915))

(assert (=> b!802327 m!743907))

(assert (=> b!802327 m!743907))

(declare-fun m!743917 () Bool)

(assert (=> b!802327 m!743917))

(declare-fun m!743919 () Bool)

(assert (=> b!802327 m!743919))

(declare-fun m!743921 () Bool)

(assert (=> b!802327 m!743921))

(declare-fun m!743923 () Bool)

(assert (=> b!802327 m!743923))

(assert (=> b!802324 m!743907))

(assert (=> b!802324 m!743907))

(declare-fun m!743925 () Bool)

(assert (=> b!802324 m!743925))

(check-sat (not b!802329) (not b!802324) (not start!68856) (not b!802321) (not b!802327) (not b!802323) (not b!802326) (not b!802320) (not b!802319) (not b!802328))
(check-sat)
