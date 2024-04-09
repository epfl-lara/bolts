; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68852 () Bool)

(assert start!68852)

(declare-fun b!802252 () Bool)

(declare-fun res!546945 () Bool)

(declare-fun e!444642 () Bool)

(assert (=> b!802252 (=> (not res!546945) (not e!444642))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802252 (= res!546945 (validKeyInArray!0 k!2044))))

(declare-fun b!802253 () Bool)

(declare-fun res!546944 () Bool)

(declare-fun e!444639 () Bool)

(assert (=> b!802253 (=> (not res!546944) (not e!444639))))

(declare-datatypes ((array!43593 0))(
  ( (array!43594 (arr!20873 (Array (_ BitVec 32) (_ BitVec 64))) (size!21294 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43593)

(declare-datatypes ((List!14889 0))(
  ( (Nil!14886) (Cons!14885 (h!16014 (_ BitVec 64)) (t!21212 List!14889)) )
))
(declare-fun arrayNoDuplicates!0 (array!43593 (_ BitVec 32) List!14889) Bool)

(assert (=> b!802253 (= res!546944 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14886))))

(declare-fun b!802254 () Bool)

(declare-fun e!444640 () Bool)

(assert (=> b!802254 (= e!444639 e!444640)))

(declare-fun res!546951 () Bool)

(assert (=> b!802254 (=> (not res!546951) (not e!444640))))

(declare-fun lt!358784 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358782 () array!43593)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8471 0))(
  ( (MissingZero!8471 (index!36251 (_ BitVec 32))) (Found!8471 (index!36252 (_ BitVec 32))) (Intermediate!8471 (undefined!9283 Bool) (index!36253 (_ BitVec 32)) (x!67126 (_ BitVec 32))) (Undefined!8471) (MissingVacant!8471 (index!36254 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43593 (_ BitVec 32)) SeekEntryResult!8471)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43593 (_ BitVec 32)) SeekEntryResult!8471)

(assert (=> b!802254 (= res!546951 (= (seekEntryOrOpen!0 lt!358784 lt!358782 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358784 lt!358782 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802254 (= lt!358784 (select (store (arr!20873 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802254 (= lt!358782 (array!43594 (store (arr!20873 a!3170) i!1163 k!2044) (size!21294 a!3170)))))

(declare-fun b!802255 () Bool)

(declare-fun res!546952 () Bool)

(assert (=> b!802255 (=> (not res!546952) (not e!444639))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43593 (_ BitVec 32)) Bool)

(assert (=> b!802255 (= res!546952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802256 () Bool)

(declare-fun e!444641 () Bool)

(assert (=> b!802256 (= e!444641 (validKeyInArray!0 lt!358784))))

(declare-fun b!802257 () Bool)

(declare-fun res!546950 () Bool)

(assert (=> b!802257 (=> (not res!546950) (not e!444642))))

(assert (=> b!802257 (= res!546950 (and (= (size!21294 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21294 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21294 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!546943 () Bool)

(assert (=> start!68852 (=> (not res!546943) (not e!444642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68852 (= res!546943 (validMask!0 mask!3266))))

(assert (=> start!68852 e!444642))

(assert (=> start!68852 true))

(declare-fun array_inv!16647 (array!43593) Bool)

(assert (=> start!68852 (array_inv!16647 a!3170)))

(declare-fun b!802258 () Bool)

(declare-fun res!546948 () Bool)

(assert (=> b!802258 (=> (not res!546948) (not e!444642))))

(assert (=> b!802258 (= res!546948 (validKeyInArray!0 (select (arr!20873 a!3170) j!153)))))

(declare-fun b!802259 () Bool)

(declare-fun res!546942 () Bool)

(assert (=> b!802259 (=> (not res!546942) (not e!444639))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802259 (= res!546942 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21294 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20873 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21294 a!3170)) (= (select (arr!20873 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802260 () Bool)

(declare-fun e!444638 () Bool)

(assert (=> b!802260 (= e!444638 (not e!444641))))

(declare-fun res!546941 () Bool)

(assert (=> b!802260 (=> res!546941 e!444641)))

(assert (=> b!802260 (= res!546941 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20873 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358781 () (_ BitVec 32))

(assert (=> b!802260 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358781 vacantAfter!23 lt!358784 lt!358782 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358781 vacantBefore!23 (select (arr!20873 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27484 0))(
  ( (Unit!27485) )
))
(declare-fun lt!358780 () Unit!27484)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27484)

(assert (=> b!802260 (= lt!358780 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358781 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802260 (= lt!358781 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802261 () Bool)

(declare-fun res!546947 () Bool)

(assert (=> b!802261 (=> (not res!546947) (not e!444642))))

(declare-fun arrayContainsKey!0 (array!43593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802261 (= res!546947 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802262 () Bool)

(assert (=> b!802262 (= e!444642 e!444639)))

(declare-fun res!546946 () Bool)

(assert (=> b!802262 (=> (not res!546946) (not e!444639))))

(declare-fun lt!358786 () SeekEntryResult!8471)

(assert (=> b!802262 (= res!546946 (or (= lt!358786 (MissingZero!8471 i!1163)) (= lt!358786 (MissingVacant!8471 i!1163))))))

(assert (=> b!802262 (= lt!358786 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802263 () Bool)

(assert (=> b!802263 (= e!444640 e!444638)))

(declare-fun res!546949 () Bool)

(assert (=> b!802263 (=> (not res!546949) (not e!444638))))

(declare-fun lt!358785 () SeekEntryResult!8471)

(declare-fun lt!358783 () SeekEntryResult!8471)

(assert (=> b!802263 (= res!546949 (and (= lt!358785 lt!358783) (= lt!358783 (Found!8471 j!153)) (not (= (select (arr!20873 a!3170) index!1236) (select (arr!20873 a!3170) j!153)))))))

(assert (=> b!802263 (= lt!358783 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20873 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802263 (= lt!358785 (seekEntryOrOpen!0 (select (arr!20873 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68852 res!546943) b!802257))

(assert (= (and b!802257 res!546950) b!802258))

(assert (= (and b!802258 res!546948) b!802252))

(assert (= (and b!802252 res!546945) b!802261))

(assert (= (and b!802261 res!546947) b!802262))

(assert (= (and b!802262 res!546946) b!802255))

(assert (= (and b!802255 res!546952) b!802253))

(assert (= (and b!802253 res!546944) b!802259))

(assert (= (and b!802259 res!546942) b!802254))

(assert (= (and b!802254 res!546951) b!802263))

(assert (= (and b!802263 res!546949) b!802260))

(assert (= (and b!802260 (not res!546941)) b!802256))

(declare-fun m!743791 () Bool)

(assert (=> start!68852 m!743791))

(declare-fun m!743793 () Bool)

(assert (=> start!68852 m!743793))

(declare-fun m!743795 () Bool)

(assert (=> b!802262 m!743795))

(declare-fun m!743797 () Bool)

(assert (=> b!802253 m!743797))

(declare-fun m!743799 () Bool)

(assert (=> b!802252 m!743799))

(declare-fun m!743801 () Bool)

(assert (=> b!802256 m!743801))

(declare-fun m!743803 () Bool)

(assert (=> b!802261 m!743803))

(declare-fun m!743805 () Bool)

(assert (=> b!802255 m!743805))

(declare-fun m!743807 () Bool)

(assert (=> b!802263 m!743807))

(declare-fun m!743809 () Bool)

(assert (=> b!802263 m!743809))

(assert (=> b!802263 m!743809))

(declare-fun m!743811 () Bool)

(assert (=> b!802263 m!743811))

(assert (=> b!802263 m!743809))

(declare-fun m!743813 () Bool)

(assert (=> b!802263 m!743813))

(assert (=> b!802260 m!743809))

(declare-fun m!743815 () Bool)

(assert (=> b!802260 m!743815))

(assert (=> b!802260 m!743809))

(declare-fun m!743817 () Bool)

(assert (=> b!802260 m!743817))

(declare-fun m!743819 () Bool)

(assert (=> b!802260 m!743819))

(declare-fun m!743821 () Bool)

(assert (=> b!802260 m!743821))

(declare-fun m!743823 () Bool)

(assert (=> b!802260 m!743823))

(declare-fun m!743825 () Bool)

(assert (=> b!802260 m!743825))

(declare-fun m!743827 () Bool)

(assert (=> b!802259 m!743827))

(declare-fun m!743829 () Bool)

(assert (=> b!802259 m!743829))

(declare-fun m!743831 () Bool)

(assert (=> b!802254 m!743831))

(declare-fun m!743833 () Bool)

(assert (=> b!802254 m!743833))

(assert (=> b!802254 m!743825))

(declare-fun m!743835 () Bool)

(assert (=> b!802254 m!743835))

(assert (=> b!802258 m!743809))

(assert (=> b!802258 m!743809))

(declare-fun m!743837 () Bool)

(assert (=> b!802258 m!743837))

(push 1)

(assert (not b!802263))

(assert (not start!68852))

(assert (not b!802252))

(assert (not b!802256))

(assert (not b!802258))

(assert (not b!802255))

(assert (not b!802262))

(assert (not b!802260))

(assert (not b!802254))

(assert (not b!802261))

