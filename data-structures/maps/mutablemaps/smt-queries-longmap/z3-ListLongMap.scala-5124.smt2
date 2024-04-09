; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69588 () Bool)

(assert start!69588)

(declare-fun res!554112 () Bool)

(declare-fun e!448723 () Bool)

(assert (=> start!69588 (=> (not res!554112) (not e!448723))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69588 (= res!554112 (validMask!0 mask!3266))))

(assert (=> start!69588 e!448723))

(assert (=> start!69588 true))

(declare-datatypes ((array!44035 0))(
  ( (array!44036 (arr!21085 (Array (_ BitVec 32) (_ BitVec 64))) (size!21506 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44035)

(declare-fun array_inv!16859 (array!44035) Bool)

(assert (=> start!69588 (array_inv!16859 a!3170)))

(declare-fun b!810662 () Bool)

(declare-fun res!554118 () Bool)

(declare-fun e!448719 () Bool)

(assert (=> b!810662 (=> (not res!554118) (not e!448719))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810662 (= res!554118 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21506 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21085 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21506 a!3170)) (= (select (arr!21085 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810663 () Bool)

(declare-fun res!554116 () Bool)

(assert (=> b!810663 (=> (not res!554116) (not e!448723))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810663 (= res!554116 (validKeyInArray!0 (select (arr!21085 a!3170) j!153)))))

(declare-fun b!810664 () Bool)

(declare-fun res!554117 () Bool)

(assert (=> b!810664 (=> (not res!554117) (not e!448723))))

(assert (=> b!810664 (= res!554117 (and (= (size!21506 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21506 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21506 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810665 () Bool)

(declare-fun e!448720 () Bool)

(assert (=> b!810665 (= e!448719 e!448720)))

(declare-fun res!554109 () Bool)

(assert (=> b!810665 (=> (not res!554109) (not e!448720))))

(declare-fun lt!363414 () (_ BitVec 64))

(declare-fun lt!363415 () array!44035)

(declare-datatypes ((SeekEntryResult!8683 0))(
  ( (MissingZero!8683 (index!37099 (_ BitVec 32))) (Found!8683 (index!37100 (_ BitVec 32))) (Intermediate!8683 (undefined!9495 Bool) (index!37101 (_ BitVec 32)) (x!67936 (_ BitVec 32))) (Undefined!8683) (MissingVacant!8683 (index!37102 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44035 (_ BitVec 32)) SeekEntryResult!8683)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44035 (_ BitVec 32)) SeekEntryResult!8683)

(assert (=> b!810665 (= res!554109 (= (seekEntryOrOpen!0 lt!363414 lt!363415 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363414 lt!363415 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!810665 (= lt!363414 (select (store (arr!21085 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810665 (= lt!363415 (array!44036 (store (arr!21085 a!3170) i!1163 k0!2044) (size!21506 a!3170)))))

(declare-fun b!810666 () Bool)

(declare-fun res!554114 () Bool)

(assert (=> b!810666 (=> (not res!554114) (not e!448719))))

(declare-datatypes ((List!15101 0))(
  ( (Nil!15098) (Cons!15097 (h!16226 (_ BitVec 64)) (t!21424 List!15101)) )
))
(declare-fun arrayNoDuplicates!0 (array!44035 (_ BitVec 32) List!15101) Bool)

(assert (=> b!810666 (= res!554114 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15098))))

(declare-fun b!810667 () Bool)

(declare-fun e!448721 () Bool)

(assert (=> b!810667 (= e!448721 (not true))))

(declare-fun lt!363416 () (_ BitVec 32))

(assert (=> b!810667 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363416 vacantAfter!23 lt!363414 lt!363415 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363416 vacantBefore!23 (select (arr!21085 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27628 0))(
  ( (Unit!27629) )
))
(declare-fun lt!363413 () Unit!27628)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27628)

(assert (=> b!810667 (= lt!363413 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363416 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810667 (= lt!363416 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810668 () Bool)

(assert (=> b!810668 (= e!448723 e!448719)))

(declare-fun res!554110 () Bool)

(assert (=> b!810668 (=> (not res!554110) (not e!448719))))

(declare-fun lt!363417 () SeekEntryResult!8683)

(assert (=> b!810668 (= res!554110 (or (= lt!363417 (MissingZero!8683 i!1163)) (= lt!363417 (MissingVacant!8683 i!1163))))))

(assert (=> b!810668 (= lt!363417 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!810669 () Bool)

(declare-fun res!554119 () Bool)

(assert (=> b!810669 (=> (not res!554119) (not e!448719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44035 (_ BitVec 32)) Bool)

(assert (=> b!810669 (= res!554119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810670 () Bool)

(declare-fun res!554115 () Bool)

(assert (=> b!810670 (=> (not res!554115) (not e!448723))))

(declare-fun arrayContainsKey!0 (array!44035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810670 (= res!554115 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810671 () Bool)

(assert (=> b!810671 (= e!448720 e!448721)))

(declare-fun res!554111 () Bool)

(assert (=> b!810671 (=> (not res!554111) (not e!448721))))

(declare-fun lt!363418 () SeekEntryResult!8683)

(declare-fun lt!363412 () SeekEntryResult!8683)

(assert (=> b!810671 (= res!554111 (and (= lt!363412 lt!363418) (= lt!363418 (Found!8683 j!153)) (not (= (select (arr!21085 a!3170) index!1236) (select (arr!21085 a!3170) j!153)))))))

(assert (=> b!810671 (= lt!363418 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21085 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810671 (= lt!363412 (seekEntryOrOpen!0 (select (arr!21085 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810672 () Bool)

(declare-fun res!554113 () Bool)

(assert (=> b!810672 (=> (not res!554113) (not e!448723))))

(assert (=> b!810672 (= res!554113 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69588 res!554112) b!810664))

(assert (= (and b!810664 res!554117) b!810663))

(assert (= (and b!810663 res!554116) b!810672))

(assert (= (and b!810672 res!554113) b!810670))

(assert (= (and b!810670 res!554115) b!810668))

(assert (= (and b!810668 res!554110) b!810669))

(assert (= (and b!810669 res!554119) b!810666))

(assert (= (and b!810666 res!554114) b!810662))

(assert (= (and b!810662 res!554118) b!810665))

(assert (= (and b!810665 res!554109) b!810671))

(assert (= (and b!810671 res!554111) b!810667))

(declare-fun m!753027 () Bool)

(assert (=> b!810667 m!753027))

(declare-fun m!753029 () Bool)

(assert (=> b!810667 m!753029))

(assert (=> b!810667 m!753027))

(declare-fun m!753031 () Bool)

(assert (=> b!810667 m!753031))

(declare-fun m!753033 () Bool)

(assert (=> b!810667 m!753033))

(declare-fun m!753035 () Bool)

(assert (=> b!810667 m!753035))

(declare-fun m!753037 () Bool)

(assert (=> b!810672 m!753037))

(declare-fun m!753039 () Bool)

(assert (=> b!810666 m!753039))

(declare-fun m!753041 () Bool)

(assert (=> b!810671 m!753041))

(assert (=> b!810671 m!753027))

(assert (=> b!810671 m!753027))

(declare-fun m!753043 () Bool)

(assert (=> b!810671 m!753043))

(assert (=> b!810671 m!753027))

(declare-fun m!753045 () Bool)

(assert (=> b!810671 m!753045))

(declare-fun m!753047 () Bool)

(assert (=> b!810670 m!753047))

(assert (=> b!810663 m!753027))

(assert (=> b!810663 m!753027))

(declare-fun m!753049 () Bool)

(assert (=> b!810663 m!753049))

(declare-fun m!753051 () Bool)

(assert (=> b!810665 m!753051))

(declare-fun m!753053 () Bool)

(assert (=> b!810665 m!753053))

(declare-fun m!753055 () Bool)

(assert (=> b!810665 m!753055))

(declare-fun m!753057 () Bool)

(assert (=> b!810665 m!753057))

(declare-fun m!753059 () Bool)

(assert (=> start!69588 m!753059))

(declare-fun m!753061 () Bool)

(assert (=> start!69588 m!753061))

(declare-fun m!753063 () Bool)

(assert (=> b!810662 m!753063))

(declare-fun m!753065 () Bool)

(assert (=> b!810662 m!753065))

(declare-fun m!753067 () Bool)

(assert (=> b!810669 m!753067))

(declare-fun m!753069 () Bool)

(assert (=> b!810668 m!753069))

(check-sat (not b!810666) (not b!810668) (not b!810670) (not b!810669) (not b!810671) (not b!810672) (not b!810663) (not b!810665) (not b!810667) (not start!69588))
(check-sat)
