; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68888 () Bool)

(assert start!68888)

(declare-fun b!802873 () Bool)

(declare-fun e!444937 () Bool)

(declare-fun e!444939 () Bool)

(assert (=> b!802873 (= e!444937 e!444939)))

(declare-fun res!547565 () Bool)

(assert (=> b!802873 (=> (not res!547565) (not e!444939))))

(declare-datatypes ((SeekEntryResult!8489 0))(
  ( (MissingZero!8489 (index!36323 (_ BitVec 32))) (Found!8489 (index!36324 (_ BitVec 32))) (Intermediate!8489 (undefined!9301 Bool) (index!36325 (_ BitVec 32)) (x!67192 (_ BitVec 32))) (Undefined!8489) (MissingVacant!8489 (index!36326 (_ BitVec 32))) )
))
(declare-fun lt!359242 () SeekEntryResult!8489)

(declare-fun lt!359239 () SeekEntryResult!8489)

(declare-datatypes ((array!43629 0))(
  ( (array!43630 (arr!20891 (Array (_ BitVec 32) (_ BitVec 64))) (size!21312 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43629)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802873 (= res!547565 (and (= lt!359239 lt!359242) (not (= (select (arr!20891 a!3170) index!1236) (select (arr!20891 a!3170) j!153)))))))

(assert (=> b!802873 (= lt!359242 (Found!8489 j!153))))

(declare-fun b!802874 () Bool)

(declare-fun res!547564 () Bool)

(declare-fun e!444935 () Bool)

(assert (=> b!802874 (=> (not res!547564) (not e!444935))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802874 (= res!547564 (and (= (size!21312 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21312 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21312 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802875 () Bool)

(declare-fun res!547562 () Bool)

(declare-fun e!444938 () Bool)

(assert (=> b!802875 (=> (not res!547562) (not e!444938))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802875 (= res!547562 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21312 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20891 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21312 a!3170)) (= (select (arr!20891 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun lt!359238 () SeekEntryResult!8489)

(declare-fun b!802876 () Bool)

(assert (=> b!802876 (= e!444939 (not (or (not (= lt!359238 lt!359242)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359237 () array!43629)

(declare-fun lt!359236 () (_ BitVec 64))

(declare-fun lt!359240 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43629 (_ BitVec 32)) SeekEntryResult!8489)

(assert (=> b!802876 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359240 vacantAfter!23 lt!359236 lt!359237 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359240 vacantBefore!23 (select (arr!20891 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27520 0))(
  ( (Unit!27521) )
))
(declare-fun lt!359243 () Unit!27520)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27520)

(assert (=> b!802876 (= lt!359243 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359240 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802876 (= lt!359240 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802877 () Bool)

(declare-fun res!547569 () Bool)

(assert (=> b!802877 (=> (not res!547569) (not e!444938))))

(declare-datatypes ((List!14907 0))(
  ( (Nil!14904) (Cons!14903 (h!16032 (_ BitVec 64)) (t!21230 List!14907)) )
))
(declare-fun arrayNoDuplicates!0 (array!43629 (_ BitVec 32) List!14907) Bool)

(assert (=> b!802877 (= res!547569 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14904))))

(declare-fun res!547568 () Bool)

(assert (=> start!68888 (=> (not res!547568) (not e!444935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68888 (= res!547568 (validMask!0 mask!3266))))

(assert (=> start!68888 e!444935))

(assert (=> start!68888 true))

(declare-fun array_inv!16665 (array!43629) Bool)

(assert (=> start!68888 (array_inv!16665 a!3170)))

(declare-fun b!802878 () Bool)

(declare-fun res!547570 () Bool)

(assert (=> b!802878 (=> (not res!547570) (not e!444938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43629 (_ BitVec 32)) Bool)

(assert (=> b!802878 (= res!547570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802879 () Bool)

(declare-fun e!444940 () Bool)

(assert (=> b!802879 (= e!444938 e!444940)))

(declare-fun res!547573 () Bool)

(assert (=> b!802879 (=> (not res!547573) (not e!444940))))

(declare-fun lt!359245 () SeekEntryResult!8489)

(assert (=> b!802879 (= res!547573 (= lt!359245 lt!359238))))

(assert (=> b!802879 (= lt!359238 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359236 lt!359237 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43629 (_ BitVec 32)) SeekEntryResult!8489)

(assert (=> b!802879 (= lt!359245 (seekEntryOrOpen!0 lt!359236 lt!359237 mask!3266))))

(assert (=> b!802879 (= lt!359236 (select (store (arr!20891 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802879 (= lt!359237 (array!43630 (store (arr!20891 a!3170) i!1163 k!2044) (size!21312 a!3170)))))

(declare-fun b!802880 () Bool)

(assert (=> b!802880 (= e!444940 e!444937)))

(declare-fun res!547571 () Bool)

(assert (=> b!802880 (=> (not res!547571) (not e!444937))))

(declare-fun lt!359241 () SeekEntryResult!8489)

(assert (=> b!802880 (= res!547571 (= lt!359241 lt!359239))))

(assert (=> b!802880 (= lt!359239 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20891 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802880 (= lt!359241 (seekEntryOrOpen!0 (select (arr!20891 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802881 () Bool)

(declare-fun res!547566 () Bool)

(assert (=> b!802881 (=> (not res!547566) (not e!444935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802881 (= res!547566 (validKeyInArray!0 (select (arr!20891 a!3170) j!153)))))

(declare-fun b!802882 () Bool)

(declare-fun res!547572 () Bool)

(assert (=> b!802882 (=> (not res!547572) (not e!444935))))

(declare-fun arrayContainsKey!0 (array!43629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802882 (= res!547572 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802883 () Bool)

(assert (=> b!802883 (= e!444935 e!444938)))

(declare-fun res!547567 () Bool)

(assert (=> b!802883 (=> (not res!547567) (not e!444938))))

(declare-fun lt!359244 () SeekEntryResult!8489)

(assert (=> b!802883 (= res!547567 (or (= lt!359244 (MissingZero!8489 i!1163)) (= lt!359244 (MissingVacant!8489 i!1163))))))

(assert (=> b!802883 (= lt!359244 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802884 () Bool)

(declare-fun res!547563 () Bool)

(assert (=> b!802884 (=> (not res!547563) (not e!444935))))

(assert (=> b!802884 (= res!547563 (validKeyInArray!0 k!2044))))

(assert (= (and start!68888 res!547568) b!802874))

(assert (= (and b!802874 res!547564) b!802881))

(assert (= (and b!802881 res!547566) b!802884))

(assert (= (and b!802884 res!547563) b!802882))

(assert (= (and b!802882 res!547572) b!802883))

(assert (= (and b!802883 res!547567) b!802878))

(assert (= (and b!802878 res!547570) b!802877))

(assert (= (and b!802877 res!547569) b!802875))

(assert (= (and b!802875 res!547562) b!802879))

(assert (= (and b!802879 res!547573) b!802880))

(assert (= (and b!802880 res!547571) b!802873))

(assert (= (and b!802873 res!547565) b!802876))

(declare-fun m!744587 () Bool)

(assert (=> b!802881 m!744587))

(assert (=> b!802881 m!744587))

(declare-fun m!744589 () Bool)

(assert (=> b!802881 m!744589))

(declare-fun m!744591 () Bool)

(assert (=> b!802884 m!744591))

(declare-fun m!744593 () Bool)

(assert (=> b!802883 m!744593))

(declare-fun m!744595 () Bool)

(assert (=> b!802877 m!744595))

(declare-fun m!744597 () Bool)

(assert (=> start!68888 m!744597))

(declare-fun m!744599 () Bool)

(assert (=> start!68888 m!744599))

(assert (=> b!802876 m!744587))

(declare-fun m!744601 () Bool)

(assert (=> b!802876 m!744601))

(assert (=> b!802876 m!744587))

(declare-fun m!744603 () Bool)

(assert (=> b!802876 m!744603))

(declare-fun m!744605 () Bool)

(assert (=> b!802876 m!744605))

(declare-fun m!744607 () Bool)

(assert (=> b!802876 m!744607))

(declare-fun m!744609 () Bool)

(assert (=> b!802882 m!744609))

(declare-fun m!744611 () Bool)

(assert (=> b!802879 m!744611))

(declare-fun m!744613 () Bool)

(assert (=> b!802879 m!744613))

(declare-fun m!744615 () Bool)

(assert (=> b!802879 m!744615))

(declare-fun m!744617 () Bool)

(assert (=> b!802879 m!744617))

(declare-fun m!744619 () Bool)

(assert (=> b!802875 m!744619))

(declare-fun m!744621 () Bool)

(assert (=> b!802875 m!744621))

(declare-fun m!744623 () Bool)

(assert (=> b!802873 m!744623))

(assert (=> b!802873 m!744587))

(declare-fun m!744625 () Bool)

(assert (=> b!802878 m!744625))

(assert (=> b!802880 m!744587))

(assert (=> b!802880 m!744587))

(declare-fun m!744627 () Bool)

(assert (=> b!802880 m!744627))

(assert (=> b!802880 m!744587))

(declare-fun m!744629 () Bool)

(assert (=> b!802880 m!744629))

(push 1)

(assert (not b!802883))

(assert (not b!802879))

(assert (not b!802880))

(assert (not b!802876))

(assert (not b!802884))

(assert (not b!802882))

(assert (not b!802881))

(assert (not start!68888))

(assert (not b!802878))

(assert (not b!802877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

