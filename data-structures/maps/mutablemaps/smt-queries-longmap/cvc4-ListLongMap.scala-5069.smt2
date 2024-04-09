; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68948 () Bool)

(assert start!68948)

(declare-fun b!803918 () Bool)

(declare-fun res!548614 () Bool)

(declare-fun e!445444 () Bool)

(assert (=> b!803918 (=> (not res!548614) (not e!445444))))

(declare-datatypes ((array!43689 0))(
  ( (array!43690 (arr!20921 (Array (_ BitVec 32) (_ BitVec 64))) (size!21342 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43689)

(declare-datatypes ((List!14937 0))(
  ( (Nil!14934) (Cons!14933 (h!16062 (_ BitVec 64)) (t!21260 List!14937)) )
))
(declare-fun arrayNoDuplicates!0 (array!43689 (_ BitVec 32) List!14937) Bool)

(assert (=> b!803918 (= res!548614 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14934))))

(declare-fun b!803919 () Bool)

(declare-fun e!445440 () Bool)

(declare-fun e!445441 () Bool)

(assert (=> b!803919 (= e!445440 e!445441)))

(declare-fun res!548616 () Bool)

(assert (=> b!803919 (=> (not res!548616) (not e!445441))))

(declare-datatypes ((SeekEntryResult!8519 0))(
  ( (MissingZero!8519 (index!36443 (_ BitVec 32))) (Found!8519 (index!36444 (_ BitVec 32))) (Intermediate!8519 (undefined!9331 Bool) (index!36445 (_ BitVec 32)) (x!67302 (_ BitVec 32))) (Undefined!8519) (MissingVacant!8519 (index!36446 (_ BitVec 32))) )
))
(declare-fun lt!360004 () SeekEntryResult!8519)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!360008 () SeekEntryResult!8519)

(assert (=> b!803919 (= res!548616 (and (= lt!360004 lt!360008) (= lt!360008 (Found!8519 j!153)) (not (= (select (arr!20921 a!3170) index!1236) (select (arr!20921 a!3170) j!153)))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43689 (_ BitVec 32)) SeekEntryResult!8519)

(assert (=> b!803919 (= lt!360008 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20921 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43689 (_ BitVec 32)) SeekEntryResult!8519)

(assert (=> b!803919 (= lt!360004 (seekEntryOrOpen!0 (select (arr!20921 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803920 () Bool)

(assert (=> b!803920 (= e!445441 (not true))))

(declare-fun lt!360006 () array!43689)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360005 () (_ BitVec 32))

(declare-fun lt!360009 () (_ BitVec 64))

(assert (=> b!803920 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!360005 vacantAfter!23 lt!360009 lt!360006 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!360005 vacantBefore!23 (select (arr!20921 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27580 0))(
  ( (Unit!27581) )
))
(declare-fun lt!360007 () Unit!27580)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43689 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27580)

(assert (=> b!803920 (= lt!360007 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!360005 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803920 (= lt!360005 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!548613 () Bool)

(declare-fun e!445442 () Bool)

(assert (=> start!68948 (=> (not res!548613) (not e!445442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68948 (= res!548613 (validMask!0 mask!3266))))

(assert (=> start!68948 e!445442))

(assert (=> start!68948 true))

(declare-fun array_inv!16695 (array!43689) Bool)

(assert (=> start!68948 (array_inv!16695 a!3170)))

(declare-fun b!803921 () Bool)

(assert (=> b!803921 (= e!445442 e!445444)))

(declare-fun res!548609 () Bool)

(assert (=> b!803921 (=> (not res!548609) (not e!445444))))

(declare-fun lt!360010 () SeekEntryResult!8519)

(assert (=> b!803921 (= res!548609 (or (= lt!360010 (MissingZero!8519 i!1163)) (= lt!360010 (MissingVacant!8519 i!1163))))))

(assert (=> b!803921 (= lt!360010 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803922 () Bool)

(declare-fun res!548612 () Bool)

(assert (=> b!803922 (=> (not res!548612) (not e!445442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803922 (= res!548612 (validKeyInArray!0 k!2044))))

(declare-fun b!803923 () Bool)

(declare-fun res!548610 () Bool)

(assert (=> b!803923 (=> (not res!548610) (not e!445444))))

(assert (=> b!803923 (= res!548610 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21342 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20921 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21342 a!3170)) (= (select (arr!20921 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803924 () Bool)

(declare-fun res!548608 () Bool)

(assert (=> b!803924 (=> (not res!548608) (not e!445442))))

(assert (=> b!803924 (= res!548608 (and (= (size!21342 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21342 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21342 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803925 () Bool)

(declare-fun res!548617 () Bool)

(assert (=> b!803925 (=> (not res!548617) (not e!445444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43689 (_ BitVec 32)) Bool)

(assert (=> b!803925 (= res!548617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803926 () Bool)

(assert (=> b!803926 (= e!445444 e!445440)))

(declare-fun res!548611 () Bool)

(assert (=> b!803926 (=> (not res!548611) (not e!445440))))

(assert (=> b!803926 (= res!548611 (= (seekEntryOrOpen!0 lt!360009 lt!360006 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360009 lt!360006 mask!3266)))))

(assert (=> b!803926 (= lt!360009 (select (store (arr!20921 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803926 (= lt!360006 (array!43690 (store (arr!20921 a!3170) i!1163 k!2044) (size!21342 a!3170)))))

(declare-fun b!803927 () Bool)

(declare-fun res!548607 () Bool)

(assert (=> b!803927 (=> (not res!548607) (not e!445442))))

(declare-fun arrayContainsKey!0 (array!43689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803927 (= res!548607 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803928 () Bool)

(declare-fun res!548615 () Bool)

(assert (=> b!803928 (=> (not res!548615) (not e!445442))))

(assert (=> b!803928 (= res!548615 (validKeyInArray!0 (select (arr!20921 a!3170) j!153)))))

(assert (= (and start!68948 res!548613) b!803924))

(assert (= (and b!803924 res!548608) b!803928))

(assert (= (and b!803928 res!548615) b!803922))

(assert (= (and b!803922 res!548612) b!803927))

(assert (= (and b!803927 res!548607) b!803921))

(assert (= (and b!803921 res!548609) b!803925))

(assert (= (and b!803925 res!548617) b!803918))

(assert (= (and b!803918 res!548614) b!803923))

(assert (= (and b!803923 res!548610) b!803926))

(assert (= (and b!803926 res!548611) b!803919))

(assert (= (and b!803919 res!548616) b!803920))

(declare-fun m!745925 () Bool)

(assert (=> b!803920 m!745925))

(declare-fun m!745927 () Bool)

(assert (=> b!803920 m!745927))

(assert (=> b!803920 m!745925))

(declare-fun m!745929 () Bool)

(assert (=> b!803920 m!745929))

(declare-fun m!745931 () Bool)

(assert (=> b!803920 m!745931))

(declare-fun m!745933 () Bool)

(assert (=> b!803920 m!745933))

(declare-fun m!745935 () Bool)

(assert (=> b!803919 m!745935))

(assert (=> b!803919 m!745925))

(assert (=> b!803919 m!745925))

(declare-fun m!745937 () Bool)

(assert (=> b!803919 m!745937))

(assert (=> b!803919 m!745925))

(declare-fun m!745939 () Bool)

(assert (=> b!803919 m!745939))

(declare-fun m!745941 () Bool)

(assert (=> start!68948 m!745941))

(declare-fun m!745943 () Bool)

(assert (=> start!68948 m!745943))

(declare-fun m!745945 () Bool)

(assert (=> b!803923 m!745945))

(declare-fun m!745947 () Bool)

(assert (=> b!803923 m!745947))

(assert (=> b!803928 m!745925))

(assert (=> b!803928 m!745925))

(declare-fun m!745949 () Bool)

(assert (=> b!803928 m!745949))

(declare-fun m!745951 () Bool)

(assert (=> b!803927 m!745951))

(declare-fun m!745953 () Bool)

(assert (=> b!803918 m!745953))

(declare-fun m!745955 () Bool)

(assert (=> b!803921 m!745955))

(declare-fun m!745957 () Bool)

(assert (=> b!803922 m!745957))

(declare-fun m!745959 () Bool)

(assert (=> b!803926 m!745959))

(declare-fun m!745961 () Bool)

(assert (=> b!803926 m!745961))

(declare-fun m!745963 () Bool)

(assert (=> b!803926 m!745963))

(declare-fun m!745965 () Bool)

(assert (=> b!803926 m!745965))

(declare-fun m!745967 () Bool)

(assert (=> b!803925 m!745967))

(push 1)

