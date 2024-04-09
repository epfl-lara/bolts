; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68810 () Bool)

(assert start!68810)

(declare-fun b!801551 () Bool)

(declare-fun e!444318 () Bool)

(assert (=> b!801551 (= e!444318 (not true))))

(declare-fun lt!358343 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358345 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43551 0))(
  ( (array!43552 (arr!20852 (Array (_ BitVec 32) (_ BitVec 64))) (size!21273 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43551)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358341 () array!43551)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8450 0))(
  ( (MissingZero!8450 (index!36167 (_ BitVec 32))) (Found!8450 (index!36168 (_ BitVec 32))) (Intermediate!8450 (undefined!9262 Bool) (index!36169 (_ BitVec 32)) (x!67049 (_ BitVec 32))) (Undefined!8450) (MissingVacant!8450 (index!36170 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43551 (_ BitVec 32)) SeekEntryResult!8450)

(assert (=> b!801551 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358343 vacantAfter!23 lt!358345 lt!358341 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358343 vacantBefore!23 (select (arr!20852 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27442 0))(
  ( (Unit!27443) )
))
(declare-fun lt!358342 () Unit!27442)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43551 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27442)

(assert (=> b!801551 (= lt!358342 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358343 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801551 (= lt!358343 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801552 () Bool)

(declare-fun e!444317 () Bool)

(declare-fun e!444315 () Bool)

(assert (=> b!801552 (= e!444317 e!444315)))

(declare-fun res!546242 () Bool)

(assert (=> b!801552 (=> (not res!546242) (not e!444315))))

(declare-fun lt!358340 () SeekEntryResult!8450)

(assert (=> b!801552 (= res!546242 (or (= lt!358340 (MissingZero!8450 i!1163)) (= lt!358340 (MissingVacant!8450 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43551 (_ BitVec 32)) SeekEntryResult!8450)

(assert (=> b!801552 (= lt!358340 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801553 () Bool)

(declare-fun res!546249 () Bool)

(assert (=> b!801553 (=> (not res!546249) (not e!444317))))

(assert (=> b!801553 (= res!546249 (and (= (size!21273 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21273 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21273 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801554 () Bool)

(declare-fun res!546246 () Bool)

(assert (=> b!801554 (=> (not res!546246) (not e!444315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43551 (_ BitVec 32)) Bool)

(assert (=> b!801554 (= res!546246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!546245 () Bool)

(assert (=> start!68810 (=> (not res!546245) (not e!444317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68810 (= res!546245 (validMask!0 mask!3266))))

(assert (=> start!68810 e!444317))

(assert (=> start!68810 true))

(declare-fun array_inv!16626 (array!43551) Bool)

(assert (=> start!68810 (array_inv!16626 a!3170)))

(declare-fun b!801555 () Bool)

(declare-fun res!546247 () Bool)

(assert (=> b!801555 (=> (not res!546247) (not e!444317))))

(declare-fun arrayContainsKey!0 (array!43551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801555 (= res!546247 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801556 () Bool)

(declare-fun res!546243 () Bool)

(assert (=> b!801556 (=> (not res!546243) (not e!444317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801556 (= res!546243 (validKeyInArray!0 k!2044))))

(declare-fun b!801557 () Bool)

(declare-fun res!546248 () Bool)

(assert (=> b!801557 (=> (not res!546248) (not e!444317))))

(assert (=> b!801557 (= res!546248 (validKeyInArray!0 (select (arr!20852 a!3170) j!153)))))

(declare-fun b!801558 () Bool)

(declare-fun e!444319 () Bool)

(assert (=> b!801558 (= e!444315 e!444319)))

(declare-fun res!546250 () Bool)

(assert (=> b!801558 (=> (not res!546250) (not e!444319))))

(assert (=> b!801558 (= res!546250 (= (seekEntryOrOpen!0 lt!358345 lt!358341 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358345 lt!358341 mask!3266)))))

(assert (=> b!801558 (= lt!358345 (select (store (arr!20852 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801558 (= lt!358341 (array!43552 (store (arr!20852 a!3170) i!1163 k!2044) (size!21273 a!3170)))))

(declare-fun b!801559 () Bool)

(declare-fun res!546240 () Bool)

(assert (=> b!801559 (=> (not res!546240) (not e!444315))))

(assert (=> b!801559 (= res!546240 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21273 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20852 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21273 a!3170)) (= (select (arr!20852 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801560 () Bool)

(assert (=> b!801560 (= e!444319 e!444318)))

(declare-fun res!546244 () Bool)

(assert (=> b!801560 (=> (not res!546244) (not e!444318))))

(declare-fun lt!358339 () SeekEntryResult!8450)

(declare-fun lt!358344 () SeekEntryResult!8450)

(assert (=> b!801560 (= res!546244 (and (= lt!358344 lt!358339) (= lt!358339 (Found!8450 j!153)) (not (= (select (arr!20852 a!3170) index!1236) (select (arr!20852 a!3170) j!153)))))))

(assert (=> b!801560 (= lt!358339 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20852 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801560 (= lt!358344 (seekEntryOrOpen!0 (select (arr!20852 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801561 () Bool)

(declare-fun res!546241 () Bool)

(assert (=> b!801561 (=> (not res!546241) (not e!444315))))

(declare-datatypes ((List!14868 0))(
  ( (Nil!14865) (Cons!14864 (h!15993 (_ BitVec 64)) (t!21191 List!14868)) )
))
(declare-fun arrayNoDuplicates!0 (array!43551 (_ BitVec 32) List!14868) Bool)

(assert (=> b!801561 (= res!546241 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14865))))

(assert (= (and start!68810 res!546245) b!801553))

(assert (= (and b!801553 res!546249) b!801557))

(assert (= (and b!801557 res!546248) b!801556))

(assert (= (and b!801556 res!546243) b!801555))

(assert (= (and b!801555 res!546247) b!801552))

(assert (= (and b!801552 res!546242) b!801554))

(assert (= (and b!801554 res!546246) b!801561))

(assert (= (and b!801561 res!546241) b!801559))

(assert (= (and b!801559 res!546240) b!801558))

(assert (= (and b!801558 res!546250) b!801560))

(assert (= (and b!801560 res!546244) b!801551))

(declare-fun m!742853 () Bool)

(assert (=> b!801555 m!742853))

(declare-fun m!742855 () Bool)

(assert (=> b!801561 m!742855))

(declare-fun m!742857 () Bool)

(assert (=> start!68810 m!742857))

(declare-fun m!742859 () Bool)

(assert (=> start!68810 m!742859))

(declare-fun m!742861 () Bool)

(assert (=> b!801556 m!742861))

(declare-fun m!742863 () Bool)

(assert (=> b!801559 m!742863))

(declare-fun m!742865 () Bool)

(assert (=> b!801559 m!742865))

(declare-fun m!742867 () Bool)

(assert (=> b!801552 m!742867))

(declare-fun m!742869 () Bool)

(assert (=> b!801557 m!742869))

(assert (=> b!801557 m!742869))

(declare-fun m!742871 () Bool)

(assert (=> b!801557 m!742871))

(declare-fun m!742873 () Bool)

(assert (=> b!801558 m!742873))

(declare-fun m!742875 () Bool)

(assert (=> b!801558 m!742875))

(declare-fun m!742877 () Bool)

(assert (=> b!801558 m!742877))

(declare-fun m!742879 () Bool)

(assert (=> b!801558 m!742879))

(declare-fun m!742881 () Bool)

(assert (=> b!801560 m!742881))

(assert (=> b!801560 m!742869))

(assert (=> b!801560 m!742869))

(declare-fun m!742883 () Bool)

(assert (=> b!801560 m!742883))

(assert (=> b!801560 m!742869))

(declare-fun m!742885 () Bool)

(assert (=> b!801560 m!742885))

(declare-fun m!742887 () Bool)

(assert (=> b!801554 m!742887))

(declare-fun m!742889 () Bool)

(assert (=> b!801551 m!742889))

(assert (=> b!801551 m!742869))

(declare-fun m!742891 () Bool)

(assert (=> b!801551 m!742891))

(assert (=> b!801551 m!742869))

(declare-fun m!742893 () Bool)

(assert (=> b!801551 m!742893))

(declare-fun m!742895 () Bool)

(assert (=> b!801551 m!742895))

(push 1)

