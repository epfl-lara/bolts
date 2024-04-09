; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69578 () Bool)

(assert start!69578)

(declare-fun b!810497 () Bool)

(declare-fun res!553951 () Bool)

(declare-fun e!448648 () Bool)

(assert (=> b!810497 (=> (not res!553951) (not e!448648))))

(declare-datatypes ((array!44025 0))(
  ( (array!44026 (arr!21080 (Array (_ BitVec 32) (_ BitVec 64))) (size!21501 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44025)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810497 (= res!553951 (validKeyInArray!0 (select (arr!21080 a!3170) j!153)))))

(declare-fun b!810498 () Bool)

(declare-fun res!553950 () Bool)

(declare-fun e!448647 () Bool)

(assert (=> b!810498 (=> (not res!553950) (not e!448647))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44025 (_ BitVec 32)) Bool)

(assert (=> b!810498 (= res!553950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810499 () Bool)

(declare-fun res!553952 () Bool)

(assert (=> b!810499 (=> (not res!553952) (not e!448648))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810499 (= res!553952 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810500 () Bool)

(declare-fun e!448645 () Bool)

(declare-fun e!448646 () Bool)

(assert (=> b!810500 (= e!448645 e!448646)))

(declare-fun res!553944 () Bool)

(assert (=> b!810500 (=> (not res!553944) (not e!448646))))

(declare-datatypes ((SeekEntryResult!8678 0))(
  ( (MissingZero!8678 (index!37079 (_ BitVec 32))) (Found!8678 (index!37080 (_ BitVec 32))) (Intermediate!8678 (undefined!9490 Bool) (index!37081 (_ BitVec 32)) (x!67915 (_ BitVec 32))) (Undefined!8678) (MissingVacant!8678 (index!37082 (_ BitVec 32))) )
))
(declare-fun lt!363310 () SeekEntryResult!8678)

(declare-fun lt!363313 () SeekEntryResult!8678)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810500 (= res!553944 (and (= lt!363310 lt!363313) (= lt!363313 (Found!8678 j!153)) (not (= (select (arr!21080 a!3170) index!1236) (select (arr!21080 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44025 (_ BitVec 32)) SeekEntryResult!8678)

(assert (=> b!810500 (= lt!363313 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21080 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44025 (_ BitVec 32)) SeekEntryResult!8678)

(assert (=> b!810500 (= lt!363310 (seekEntryOrOpen!0 (select (arr!21080 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810501 () Bool)

(assert (=> b!810501 (= e!448648 e!448647)))

(declare-fun res!553945 () Bool)

(assert (=> b!810501 (=> (not res!553945) (not e!448647))))

(declare-fun lt!363307 () SeekEntryResult!8678)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810501 (= res!553945 (or (= lt!363307 (MissingZero!8678 i!1163)) (= lt!363307 (MissingVacant!8678 i!1163))))))

(assert (=> b!810501 (= lt!363307 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!553953 () Bool)

(assert (=> start!69578 (=> (not res!553953) (not e!448648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69578 (= res!553953 (validMask!0 mask!3266))))

(assert (=> start!69578 e!448648))

(assert (=> start!69578 true))

(declare-fun array_inv!16854 (array!44025) Bool)

(assert (=> start!69578 (array_inv!16854 a!3170)))

(declare-fun b!810502 () Bool)

(declare-fun res!553947 () Bool)

(assert (=> b!810502 (=> (not res!553947) (not e!448647))))

(declare-datatypes ((List!15096 0))(
  ( (Nil!15093) (Cons!15092 (h!16221 (_ BitVec 64)) (t!21419 List!15096)) )
))
(declare-fun arrayNoDuplicates!0 (array!44025 (_ BitVec 32) List!15096) Bool)

(assert (=> b!810502 (= res!553947 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15093))))

(declare-fun b!810503 () Bool)

(assert (=> b!810503 (= e!448647 e!448645)))

(declare-fun res!553949 () Bool)

(assert (=> b!810503 (=> (not res!553949) (not e!448645))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363309 () (_ BitVec 64))

(declare-fun lt!363308 () array!44025)

(assert (=> b!810503 (= res!553949 (= (seekEntryOrOpen!0 lt!363309 lt!363308 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363309 lt!363308 mask!3266)))))

(assert (=> b!810503 (= lt!363309 (select (store (arr!21080 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810503 (= lt!363308 (array!44026 (store (arr!21080 a!3170) i!1163 k!2044) (size!21501 a!3170)))))

(declare-fun b!810504 () Bool)

(assert (=> b!810504 (= e!448646 (not true))))

(declare-fun lt!363312 () (_ BitVec 32))

(assert (=> b!810504 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363312 vacantAfter!23 lt!363309 lt!363308 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363312 vacantBefore!23 (select (arr!21080 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27618 0))(
  ( (Unit!27619) )
))
(declare-fun lt!363311 () Unit!27618)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44025 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27618)

(assert (=> b!810504 (= lt!363311 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363312 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810504 (= lt!363312 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810505 () Bool)

(declare-fun res!553946 () Bool)

(assert (=> b!810505 (=> (not res!553946) (not e!448648))))

(assert (=> b!810505 (= res!553946 (and (= (size!21501 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21501 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21501 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810506 () Bool)

(declare-fun res!553954 () Bool)

(assert (=> b!810506 (=> (not res!553954) (not e!448647))))

(assert (=> b!810506 (= res!553954 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21501 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21080 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21501 a!3170)) (= (select (arr!21080 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810507 () Bool)

(declare-fun res!553948 () Bool)

(assert (=> b!810507 (=> (not res!553948) (not e!448648))))

(assert (=> b!810507 (= res!553948 (validKeyInArray!0 k!2044))))

(assert (= (and start!69578 res!553953) b!810505))

(assert (= (and b!810505 res!553946) b!810497))

(assert (= (and b!810497 res!553951) b!810507))

(assert (= (and b!810507 res!553948) b!810499))

(assert (= (and b!810499 res!553952) b!810501))

(assert (= (and b!810501 res!553945) b!810498))

(assert (= (and b!810498 res!553950) b!810502))

(assert (= (and b!810502 res!553947) b!810506))

(assert (= (and b!810506 res!553954) b!810503))

(assert (= (and b!810503 res!553949) b!810500))

(assert (= (and b!810500 res!553944) b!810504))

(declare-fun m!752807 () Bool)

(assert (=> b!810504 m!752807))

(declare-fun m!752809 () Bool)

(assert (=> b!810504 m!752809))

(declare-fun m!752811 () Bool)

(assert (=> b!810504 m!752811))

(declare-fun m!752813 () Bool)

(assert (=> b!810504 m!752813))

(declare-fun m!752815 () Bool)

(assert (=> b!810504 m!752815))

(assert (=> b!810504 m!752813))

(declare-fun m!752817 () Bool)

(assert (=> b!810498 m!752817))

(declare-fun m!752819 () Bool)

(assert (=> b!810507 m!752819))

(declare-fun m!752821 () Bool)

(assert (=> b!810506 m!752821))

(declare-fun m!752823 () Bool)

(assert (=> b!810506 m!752823))

(declare-fun m!752825 () Bool)

(assert (=> b!810500 m!752825))

(assert (=> b!810500 m!752813))

(assert (=> b!810500 m!752813))

(declare-fun m!752827 () Bool)

(assert (=> b!810500 m!752827))

(assert (=> b!810500 m!752813))

(declare-fun m!752829 () Bool)

(assert (=> b!810500 m!752829))

(declare-fun m!752831 () Bool)

(assert (=> b!810502 m!752831))

(declare-fun m!752833 () Bool)

(assert (=> b!810499 m!752833))

(declare-fun m!752835 () Bool)

(assert (=> b!810503 m!752835))

(declare-fun m!752837 () Bool)

(assert (=> b!810503 m!752837))

(declare-fun m!752839 () Bool)

(assert (=> b!810503 m!752839))

(declare-fun m!752841 () Bool)

(assert (=> b!810503 m!752841))

(declare-fun m!752843 () Bool)

(assert (=> start!69578 m!752843))

(declare-fun m!752845 () Bool)

(assert (=> start!69578 m!752845))

(assert (=> b!810497 m!752813))

(assert (=> b!810497 m!752813))

(declare-fun m!752847 () Bool)

(assert (=> b!810497 m!752847))

(declare-fun m!752849 () Bool)

(assert (=> b!810501 m!752849))

(push 1)

