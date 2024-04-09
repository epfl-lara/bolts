; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69122 () Bool)

(assert start!69122)

(declare-fun res!550364 () Bool)

(declare-fun e!446295 () Bool)

(assert (=> start!69122 (=> (not res!550364) (not e!446295))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69122 (= res!550364 (validMask!0 mask!3266))))

(assert (=> start!69122 e!446295))

(assert (=> start!69122 true))

(declare-datatypes ((array!43818 0))(
  ( (array!43819 (arr!20984 (Array (_ BitVec 32) (_ BitVec 64))) (size!21405 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43818)

(declare-fun array_inv!16758 (array!43818) Bool)

(assert (=> start!69122 (array_inv!16758 a!3170)))

(declare-fun b!805871 () Bool)

(declare-fun e!446297 () Bool)

(declare-fun e!446296 () Bool)

(assert (=> b!805871 (= e!446297 e!446296)))

(declare-fun res!550371 () Bool)

(assert (=> b!805871 (=> (not res!550371) (not e!446296))))

(declare-datatypes ((SeekEntryResult!8582 0))(
  ( (MissingZero!8582 (index!36695 (_ BitVec 32))) (Found!8582 (index!36696 (_ BitVec 32))) (Intermediate!8582 (undefined!9394 Bool) (index!36697 (_ BitVec 32)) (x!67536 (_ BitVec 32))) (Undefined!8582) (MissingVacant!8582 (index!36698 (_ BitVec 32))) )
))
(declare-fun lt!360895 () SeekEntryResult!8582)

(declare-fun lt!360896 () SeekEntryResult!8582)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805871 (= res!550371 (and (= lt!360895 lt!360896) (= lt!360896 (Found!8582 j!153)) (= (select (arr!20984 a!3170) index!1236) (select (arr!20984 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43818 (_ BitVec 32)) SeekEntryResult!8582)

(assert (=> b!805871 (= lt!360896 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20984 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43818 (_ BitVec 32)) SeekEntryResult!8582)

(assert (=> b!805871 (= lt!360895 (seekEntryOrOpen!0 (select (arr!20984 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805872 () Bool)

(declare-fun res!550366 () Bool)

(assert (=> b!805872 (=> (not res!550366) (not e!446295))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805872 (= res!550366 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805873 () Bool)

(declare-fun e!446299 () Bool)

(assert (=> b!805873 (= e!446295 e!446299)))

(declare-fun res!550369 () Bool)

(assert (=> b!805873 (=> (not res!550369) (not e!446299))))

(declare-fun lt!360894 () SeekEntryResult!8582)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805873 (= res!550369 (or (= lt!360894 (MissingZero!8582 i!1163)) (= lt!360894 (MissingVacant!8582 i!1163))))))

(assert (=> b!805873 (= lt!360894 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805874 () Bool)

(assert (=> b!805874 (= e!446299 e!446297)))

(declare-fun res!550372 () Bool)

(assert (=> b!805874 (=> (not res!550372) (not e!446297))))

(declare-fun lt!360893 () SeekEntryResult!8582)

(declare-fun lt!360898 () SeekEntryResult!8582)

(assert (=> b!805874 (= res!550372 (= lt!360893 lt!360898))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360892 () (_ BitVec 64))

(declare-fun lt!360897 () array!43818)

(assert (=> b!805874 (= lt!360898 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360892 lt!360897 mask!3266))))

(assert (=> b!805874 (= lt!360893 (seekEntryOrOpen!0 lt!360892 lt!360897 mask!3266))))

(assert (=> b!805874 (= lt!360892 (select (store (arr!20984 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805874 (= lt!360897 (array!43819 (store (arr!20984 a!3170) i!1163 k!2044) (size!21405 a!3170)))))

(declare-fun b!805875 () Bool)

(assert (=> b!805875 (= e!446296 (not true))))

(assert (=> b!805875 (= lt!360898 (Found!8582 index!1236))))

(declare-fun b!805876 () Bool)

(declare-fun res!550362 () Bool)

(assert (=> b!805876 (=> (not res!550362) (not e!446299))))

(declare-datatypes ((List!15000 0))(
  ( (Nil!14997) (Cons!14996 (h!16125 (_ BitVec 64)) (t!21323 List!15000)) )
))
(declare-fun arrayNoDuplicates!0 (array!43818 (_ BitVec 32) List!15000) Bool)

(assert (=> b!805876 (= res!550362 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14997))))

(declare-fun b!805877 () Bool)

(declare-fun res!550368 () Bool)

(assert (=> b!805877 (=> (not res!550368) (not e!446295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805877 (= res!550368 (validKeyInArray!0 k!2044))))

(declare-fun b!805878 () Bool)

(declare-fun res!550370 () Bool)

(assert (=> b!805878 (=> (not res!550370) (not e!446295))))

(assert (=> b!805878 (= res!550370 (and (= (size!21405 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21405 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21405 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805879 () Bool)

(declare-fun res!550363 () Bool)

(assert (=> b!805879 (=> (not res!550363) (not e!446299))))

(assert (=> b!805879 (= res!550363 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21405 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20984 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21405 a!3170)) (= (select (arr!20984 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805880 () Bool)

(declare-fun res!550365 () Bool)

(assert (=> b!805880 (=> (not res!550365) (not e!446299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43818 (_ BitVec 32)) Bool)

(assert (=> b!805880 (= res!550365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805881 () Bool)

(declare-fun res!550367 () Bool)

(assert (=> b!805881 (=> (not res!550367) (not e!446295))))

(assert (=> b!805881 (= res!550367 (validKeyInArray!0 (select (arr!20984 a!3170) j!153)))))

(assert (= (and start!69122 res!550364) b!805878))

(assert (= (and b!805878 res!550370) b!805881))

(assert (= (and b!805881 res!550367) b!805877))

(assert (= (and b!805877 res!550368) b!805872))

(assert (= (and b!805872 res!550366) b!805873))

(assert (= (and b!805873 res!550369) b!805880))

(assert (= (and b!805880 res!550365) b!805876))

(assert (= (and b!805876 res!550362) b!805879))

(assert (= (and b!805879 res!550363) b!805874))

(assert (= (and b!805874 res!550372) b!805871))

(assert (= (and b!805871 res!550371) b!805875))

(declare-fun m!747919 () Bool)

(assert (=> b!805874 m!747919))

(declare-fun m!747921 () Bool)

(assert (=> b!805874 m!747921))

(declare-fun m!747923 () Bool)

(assert (=> b!805874 m!747923))

(declare-fun m!747925 () Bool)

(assert (=> b!805874 m!747925))

(declare-fun m!747927 () Bool)

(assert (=> start!69122 m!747927))

(declare-fun m!747929 () Bool)

(assert (=> start!69122 m!747929))

(declare-fun m!747931 () Bool)

(assert (=> b!805881 m!747931))

(assert (=> b!805881 m!747931))

(declare-fun m!747933 () Bool)

(assert (=> b!805881 m!747933))

(declare-fun m!747935 () Bool)

(assert (=> b!805873 m!747935))

(declare-fun m!747937 () Bool)

(assert (=> b!805872 m!747937))

(declare-fun m!747939 () Bool)

(assert (=> b!805876 m!747939))

(declare-fun m!747941 () Bool)

(assert (=> b!805871 m!747941))

(assert (=> b!805871 m!747931))

(assert (=> b!805871 m!747931))

(declare-fun m!747943 () Bool)

(assert (=> b!805871 m!747943))

(assert (=> b!805871 m!747931))

(declare-fun m!747945 () Bool)

(assert (=> b!805871 m!747945))

(declare-fun m!747947 () Bool)

(assert (=> b!805879 m!747947))

(declare-fun m!747949 () Bool)

(assert (=> b!805879 m!747949))

(declare-fun m!747951 () Bool)

(assert (=> b!805880 m!747951))

(declare-fun m!747953 () Bool)

(assert (=> b!805877 m!747953))

(push 1)

