; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68902 () Bool)

(assert start!68902)

(declare-fun res!547831 () Bool)

(declare-fun e!445072 () Bool)

(assert (=> start!68902 (=> (not res!547831) (not e!445072))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68902 (= res!547831 (validMask!0 mask!3266))))

(assert (=> start!68902 e!445072))

(assert (=> start!68902 true))

(declare-datatypes ((array!43643 0))(
  ( (array!43644 (arr!20898 (Array (_ BitVec 32) (_ BitVec 64))) (size!21319 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43643)

(declare-fun array_inv!16672 (array!43643) Bool)

(assert (=> start!68902 (array_inv!16672 a!3170)))

(declare-fun b!803132 () Bool)

(declare-fun e!445071 () Bool)

(declare-fun e!445068 () Bool)

(assert (=> b!803132 (= e!445071 e!445068)))

(declare-fun res!547830 () Bool)

(assert (=> b!803132 (=> (not res!547830) (not e!445068))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359441 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359444 () array!43643)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8496 0))(
  ( (MissingZero!8496 (index!36351 (_ BitVec 32))) (Found!8496 (index!36352 (_ BitVec 32))) (Intermediate!8496 (undefined!9308 Bool) (index!36353 (_ BitVec 32)) (x!67223 (_ BitVec 32))) (Undefined!8496) (MissingVacant!8496 (index!36354 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43643 (_ BitVec 32)) SeekEntryResult!8496)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43643 (_ BitVec 32)) SeekEntryResult!8496)

(assert (=> b!803132 (= res!547830 (= (seekEntryOrOpen!0 lt!359441 lt!359444 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359441 lt!359444 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803132 (= lt!359441 (select (store (arr!20898 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803132 (= lt!359444 (array!43644 (store (arr!20898 a!3170) i!1163 k!2044) (size!21319 a!3170)))))

(declare-fun b!803133 () Bool)

(assert (=> b!803133 (= e!445072 e!445071)))

(declare-fun res!547827 () Bool)

(assert (=> b!803133 (=> (not res!547827) (not e!445071))))

(declare-fun lt!359446 () SeekEntryResult!8496)

(assert (=> b!803133 (= res!547827 (or (= lt!359446 (MissingZero!8496 i!1163)) (= lt!359446 (MissingVacant!8496 i!1163))))))

(assert (=> b!803133 (= lt!359446 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803134 () Bool)

(declare-fun res!547824 () Bool)

(assert (=> b!803134 (=> (not res!547824) (not e!445071))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803134 (= res!547824 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21319 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20898 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21319 a!3170)) (= (select (arr!20898 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803135 () Bool)

(declare-fun e!445069 () Bool)

(assert (=> b!803135 (= e!445069 (not true))))

(declare-fun lt!359443 () (_ BitVec 32))

(assert (=> b!803135 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359443 vacantAfter!23 lt!359441 lt!359444 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359443 vacantBefore!23 (select (arr!20898 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27534 0))(
  ( (Unit!27535) )
))
(declare-fun lt!359445 () Unit!27534)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43643 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27534)

(assert (=> b!803135 (= lt!359445 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359443 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803135 (= lt!359443 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803136 () Bool)

(declare-fun res!547823 () Bool)

(assert (=> b!803136 (=> (not res!547823) (not e!445072))))

(assert (=> b!803136 (= res!547823 (and (= (size!21319 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21319 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21319 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803137 () Bool)

(declare-fun res!547825 () Bool)

(assert (=> b!803137 (=> (not res!547825) (not e!445071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43643 (_ BitVec 32)) Bool)

(assert (=> b!803137 (= res!547825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803138 () Bool)

(declare-fun res!547821 () Bool)

(assert (=> b!803138 (=> (not res!547821) (not e!445072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803138 (= res!547821 (validKeyInArray!0 k!2044))))

(declare-fun b!803139 () Bool)

(assert (=> b!803139 (= e!445068 e!445069)))

(declare-fun res!547828 () Bool)

(assert (=> b!803139 (=> (not res!547828) (not e!445069))))

(declare-fun lt!359442 () SeekEntryResult!8496)

(declare-fun lt!359440 () SeekEntryResult!8496)

(assert (=> b!803139 (= res!547828 (and (= lt!359440 lt!359442) (= lt!359442 (Found!8496 j!153)) (not (= (select (arr!20898 a!3170) index!1236) (select (arr!20898 a!3170) j!153)))))))

(assert (=> b!803139 (= lt!359442 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20898 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803139 (= lt!359440 (seekEntryOrOpen!0 (select (arr!20898 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803140 () Bool)

(declare-fun res!547822 () Bool)

(assert (=> b!803140 (=> (not res!547822) (not e!445072))))

(assert (=> b!803140 (= res!547822 (validKeyInArray!0 (select (arr!20898 a!3170) j!153)))))

(declare-fun b!803141 () Bool)

(declare-fun res!547829 () Bool)

(assert (=> b!803141 (=> (not res!547829) (not e!445072))))

(declare-fun arrayContainsKey!0 (array!43643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803141 (= res!547829 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803142 () Bool)

(declare-fun res!547826 () Bool)

(assert (=> b!803142 (=> (not res!547826) (not e!445071))))

(declare-datatypes ((List!14914 0))(
  ( (Nil!14911) (Cons!14910 (h!16039 (_ BitVec 64)) (t!21237 List!14914)) )
))
(declare-fun arrayNoDuplicates!0 (array!43643 (_ BitVec 32) List!14914) Bool)

(assert (=> b!803142 (= res!547826 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14911))))

(assert (= (and start!68902 res!547831) b!803136))

(assert (= (and b!803136 res!547823) b!803140))

(assert (= (and b!803140 res!547822) b!803138))

(assert (= (and b!803138 res!547821) b!803141))

(assert (= (and b!803141 res!547829) b!803133))

(assert (= (and b!803133 res!547827) b!803137))

(assert (= (and b!803137 res!547825) b!803142))

(assert (= (and b!803142 res!547826) b!803134))

(assert (= (and b!803134 res!547824) b!803132))

(assert (= (and b!803132 res!547830) b!803139))

(assert (= (and b!803139 res!547828) b!803135))

(declare-fun m!744913 () Bool)

(assert (=> b!803140 m!744913))

(assert (=> b!803140 m!744913))

(declare-fun m!744915 () Bool)

(assert (=> b!803140 m!744915))

(declare-fun m!744917 () Bool)

(assert (=> b!803137 m!744917))

(declare-fun m!744919 () Bool)

(assert (=> b!803141 m!744919))

(declare-fun m!744921 () Bool)

(assert (=> start!68902 m!744921))

(declare-fun m!744923 () Bool)

(assert (=> start!68902 m!744923))

(assert (=> b!803135 m!744913))

(declare-fun m!744925 () Bool)

(assert (=> b!803135 m!744925))

(declare-fun m!744927 () Bool)

(assert (=> b!803135 m!744927))

(declare-fun m!744929 () Bool)

(assert (=> b!803135 m!744929))

(assert (=> b!803135 m!744913))

(declare-fun m!744931 () Bool)

(assert (=> b!803135 m!744931))

(declare-fun m!744933 () Bool)

(assert (=> b!803138 m!744933))

(declare-fun m!744935 () Bool)

(assert (=> b!803133 m!744935))

(declare-fun m!744937 () Bool)

(assert (=> b!803132 m!744937))

(declare-fun m!744939 () Bool)

(assert (=> b!803132 m!744939))

(declare-fun m!744941 () Bool)

(assert (=> b!803132 m!744941))

(declare-fun m!744943 () Bool)

(assert (=> b!803132 m!744943))

(declare-fun m!744945 () Bool)

(assert (=> b!803139 m!744945))

(assert (=> b!803139 m!744913))

(assert (=> b!803139 m!744913))

(declare-fun m!744947 () Bool)

(assert (=> b!803139 m!744947))

(assert (=> b!803139 m!744913))

(declare-fun m!744949 () Bool)

(assert (=> b!803139 m!744949))

(declare-fun m!744951 () Bool)

(assert (=> b!803142 m!744951))

(declare-fun m!744953 () Bool)

(assert (=> b!803134 m!744953))

(declare-fun m!744955 () Bool)

(assert (=> b!803134 m!744955))

(push 1)

