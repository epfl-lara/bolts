; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69676 () Bool)

(assert start!69676)

(declare-fun b!811439 () Bool)

(declare-fun res!554655 () Bool)

(declare-fun e!449127 () Bool)

(assert (=> b!811439 (=> (not res!554655) (not e!449127))))

(declare-datatypes ((array!44066 0))(
  ( (array!44067 (arr!21099 (Array (_ BitVec 32) (_ BitVec 64))) (size!21520 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44066)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44066 (_ BitVec 32)) Bool)

(assert (=> b!811439 (= res!554655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811440 () Bool)

(declare-fun e!449130 () Bool)

(assert (=> b!811440 (= e!449127 e!449130)))

(declare-fun res!554653 () Bool)

(assert (=> b!811440 (=> (not res!554653) (not e!449130))))

(declare-fun lt!363860 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!363863 () array!44066)

(declare-datatypes ((SeekEntryResult!8697 0))(
  ( (MissingZero!8697 (index!37158 (_ BitVec 32))) (Found!8697 (index!37159 (_ BitVec 32))) (Intermediate!8697 (undefined!9509 Bool) (index!37160 (_ BitVec 32)) (x!67999 (_ BitVec 32))) (Undefined!8697) (MissingVacant!8697 (index!37161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44066 (_ BitVec 32)) SeekEntryResult!8697)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44066 (_ BitVec 32)) SeekEntryResult!8697)

(assert (=> b!811440 (= res!554653 (= (seekEntryOrOpen!0 lt!363860 lt!363863 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363860 lt!363863 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!811440 (= lt!363860 (select (store (arr!21099 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811440 (= lt!363863 (array!44067 (store (arr!21099 a!3170) i!1163 k!2044) (size!21520 a!3170)))))

(declare-fun b!811441 () Bool)

(declare-fun e!449128 () Bool)

(assert (=> b!811441 (= e!449128 (not true))))

(declare-fun lt!363861 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!811441 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363861 vacantAfter!23 lt!363860 lt!363863 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363861 vacantBefore!23 (select (arr!21099 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27656 0))(
  ( (Unit!27657) )
))
(declare-fun lt!363865 () Unit!27656)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44066 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27656)

(assert (=> b!811441 (= lt!363865 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363861 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811441 (= lt!363861 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811442 () Bool)

(declare-fun res!554659 () Bool)

(declare-fun e!449129 () Bool)

(assert (=> b!811442 (=> (not res!554659) (not e!449129))))

(declare-fun arrayContainsKey!0 (array!44066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811442 (= res!554659 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811443 () Bool)

(declare-fun res!554657 () Bool)

(assert (=> b!811443 (=> (not res!554657) (not e!449127))))

(declare-datatypes ((List!15115 0))(
  ( (Nil!15112) (Cons!15111 (h!16240 (_ BitVec 64)) (t!21438 List!15115)) )
))
(declare-fun arrayNoDuplicates!0 (array!44066 (_ BitVec 32) List!15115) Bool)

(assert (=> b!811443 (= res!554657 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15112))))

(declare-fun b!811444 () Bool)

(assert (=> b!811444 (= e!449129 e!449127)))

(declare-fun res!554661 () Bool)

(assert (=> b!811444 (=> (not res!554661) (not e!449127))))

(declare-fun lt!363864 () SeekEntryResult!8697)

(assert (=> b!811444 (= res!554661 (or (= lt!363864 (MissingZero!8697 i!1163)) (= lt!363864 (MissingVacant!8697 i!1163))))))

(assert (=> b!811444 (= lt!363864 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!554656 () Bool)

(assert (=> start!69676 (=> (not res!554656) (not e!449129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69676 (= res!554656 (validMask!0 mask!3266))))

(assert (=> start!69676 e!449129))

(assert (=> start!69676 true))

(declare-fun array_inv!16873 (array!44066) Bool)

(assert (=> start!69676 (array_inv!16873 a!3170)))

(declare-fun b!811445 () Bool)

(assert (=> b!811445 (= e!449130 e!449128)))

(declare-fun res!554654 () Bool)

(assert (=> b!811445 (=> (not res!554654) (not e!449128))))

(declare-fun lt!363862 () SeekEntryResult!8697)

(declare-fun lt!363859 () SeekEntryResult!8697)

(assert (=> b!811445 (= res!554654 (and (= lt!363859 lt!363862) (= lt!363862 (Found!8697 j!153)) (not (= (select (arr!21099 a!3170) index!1236) (select (arr!21099 a!3170) j!153)))))))

(assert (=> b!811445 (= lt!363862 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21099 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811445 (= lt!363859 (seekEntryOrOpen!0 (select (arr!21099 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811446 () Bool)

(declare-fun res!554658 () Bool)

(assert (=> b!811446 (=> (not res!554658) (not e!449129))))

(assert (=> b!811446 (= res!554658 (and (= (size!21520 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21520 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21520 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811447 () Bool)

(declare-fun res!554652 () Bool)

(assert (=> b!811447 (=> (not res!554652) (not e!449127))))

(assert (=> b!811447 (= res!554652 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21520 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21099 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21520 a!3170)) (= (select (arr!21099 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811448 () Bool)

(declare-fun res!554660 () Bool)

(assert (=> b!811448 (=> (not res!554660) (not e!449129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811448 (= res!554660 (validKeyInArray!0 (select (arr!21099 a!3170) j!153)))))

(declare-fun b!811449 () Bool)

(declare-fun res!554662 () Bool)

(assert (=> b!811449 (=> (not res!554662) (not e!449129))))

(assert (=> b!811449 (= res!554662 (validKeyInArray!0 k!2044))))

(assert (= (and start!69676 res!554656) b!811446))

(assert (= (and b!811446 res!554658) b!811448))

(assert (= (and b!811448 res!554660) b!811449))

(assert (= (and b!811449 res!554662) b!811442))

(assert (= (and b!811442 res!554659) b!811444))

(assert (= (and b!811444 res!554661) b!811439))

(assert (= (and b!811439 res!554655) b!811443))

(assert (= (and b!811443 res!554657) b!811447))

(assert (= (and b!811447 res!554652) b!811440))

(assert (= (and b!811440 res!554653) b!811445))

(assert (= (and b!811445 res!554654) b!811441))

(declare-fun m!753937 () Bool)

(assert (=> b!811445 m!753937))

(declare-fun m!753939 () Bool)

(assert (=> b!811445 m!753939))

(assert (=> b!811445 m!753939))

(declare-fun m!753941 () Bool)

(assert (=> b!811445 m!753941))

(assert (=> b!811445 m!753939))

(declare-fun m!753943 () Bool)

(assert (=> b!811445 m!753943))

(declare-fun m!753945 () Bool)

(assert (=> b!811449 m!753945))

(declare-fun m!753947 () Bool)

(assert (=> b!811442 m!753947))

(declare-fun m!753949 () Bool)

(assert (=> b!811443 m!753949))

(declare-fun m!753951 () Bool)

(assert (=> start!69676 m!753951))

(declare-fun m!753953 () Bool)

(assert (=> start!69676 m!753953))

(assert (=> b!811441 m!753939))

(declare-fun m!753955 () Bool)

(assert (=> b!811441 m!753955))

(declare-fun m!753957 () Bool)

(assert (=> b!811441 m!753957))

(assert (=> b!811441 m!753939))

(declare-fun m!753959 () Bool)

(assert (=> b!811441 m!753959))

(declare-fun m!753961 () Bool)

(assert (=> b!811441 m!753961))

(declare-fun m!753963 () Bool)

(assert (=> b!811440 m!753963))

(declare-fun m!753965 () Bool)

(assert (=> b!811440 m!753965))

(declare-fun m!753967 () Bool)

(assert (=> b!811440 m!753967))

(declare-fun m!753969 () Bool)

(assert (=> b!811440 m!753969))

(declare-fun m!753971 () Bool)

(assert (=> b!811444 m!753971))

(assert (=> b!811448 m!753939))

(assert (=> b!811448 m!753939))

(declare-fun m!753973 () Bool)

(assert (=> b!811448 m!753973))

(declare-fun m!753975 () Bool)

(assert (=> b!811439 m!753975))

(declare-fun m!753977 () Bool)

(assert (=> b!811447 m!753977))

(declare-fun m!753979 () Bool)

(assert (=> b!811447 m!753979))

(push 1)

