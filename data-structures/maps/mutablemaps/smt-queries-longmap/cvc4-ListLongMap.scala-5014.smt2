; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68618 () Bool)

(assert start!68618)

(declare-fun b!797978 () Bool)

(declare-fun e!442688 () Bool)

(assert (=> b!797978 (= e!442688 (not true))))

(declare-datatypes ((SeekEntryResult!8354 0))(
  ( (MissingZero!8354 (index!35783 (_ BitVec 32))) (Found!8354 (index!35784 (_ BitVec 32))) (Intermediate!8354 (undefined!9166 Bool) (index!35785 (_ BitVec 32)) (x!66697 (_ BitVec 32))) (Undefined!8354) (MissingVacant!8354 (index!35786 (_ BitVec 32))) )
))
(declare-fun lt!356173 () SeekEntryResult!8354)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797978 (= lt!356173 (Found!8354 index!1236))))

(declare-fun b!797979 () Bool)

(declare-fun e!442686 () Bool)

(declare-fun e!442690 () Bool)

(assert (=> b!797979 (= e!442686 e!442690)))

(declare-fun res!542674 () Bool)

(assert (=> b!797979 (=> (not res!542674) (not e!442690))))

(declare-fun lt!356170 () SeekEntryResult!8354)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797979 (= res!542674 (or (= lt!356170 (MissingZero!8354 i!1163)) (= lt!356170 (MissingVacant!8354 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43359 0))(
  ( (array!43360 (arr!20756 (Array (_ BitVec 32) (_ BitVec 64))) (size!21177 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43359)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43359 (_ BitVec 32)) SeekEntryResult!8354)

(assert (=> b!797979 (= lt!356170 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797980 () Bool)

(declare-fun res!542668 () Bool)

(assert (=> b!797980 (=> (not res!542668) (not e!442686))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797980 (= res!542668 (and (= (size!21177 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21177 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21177 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!542667 () Bool)

(assert (=> start!68618 (=> (not res!542667) (not e!442686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68618 (= res!542667 (validMask!0 mask!3266))))

(assert (=> start!68618 e!442686))

(assert (=> start!68618 true))

(declare-fun array_inv!16530 (array!43359) Bool)

(assert (=> start!68618 (array_inv!16530 a!3170)))

(declare-fun b!797981 () Bool)

(declare-fun res!542676 () Bool)

(assert (=> b!797981 (=> (not res!542676) (not e!442686))))

(declare-fun arrayContainsKey!0 (array!43359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797981 (= res!542676 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797982 () Bool)

(declare-fun res!542675 () Bool)

(assert (=> b!797982 (=> (not res!542675) (not e!442686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797982 (= res!542675 (validKeyInArray!0 (select (arr!20756 a!3170) j!153)))))

(declare-fun b!797983 () Bool)

(declare-fun res!542677 () Bool)

(assert (=> b!797983 (=> (not res!542677) (not e!442686))))

(assert (=> b!797983 (= res!542677 (validKeyInArray!0 k!2044))))

(declare-fun b!797984 () Bool)

(declare-fun e!442689 () Bool)

(assert (=> b!797984 (= e!442689 e!442688)))

(declare-fun res!542669 () Bool)

(assert (=> b!797984 (=> (not res!542669) (not e!442688))))

(declare-fun lt!356172 () SeekEntryResult!8354)

(declare-fun lt!356171 () SeekEntryResult!8354)

(assert (=> b!797984 (= res!542669 (and (= lt!356172 lt!356171) (= lt!356171 (Found!8354 j!153)) (= (select (arr!20756 a!3170) index!1236) (select (arr!20756 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43359 (_ BitVec 32)) SeekEntryResult!8354)

(assert (=> b!797984 (= lt!356171 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20756 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797984 (= lt!356172 (seekEntryOrOpen!0 (select (arr!20756 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797985 () Bool)

(assert (=> b!797985 (= e!442690 e!442689)))

(declare-fun res!542671 () Bool)

(assert (=> b!797985 (=> (not res!542671) (not e!442689))))

(declare-fun lt!356175 () SeekEntryResult!8354)

(assert (=> b!797985 (= res!542671 (= lt!356175 lt!356173))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356176 () array!43359)

(declare-fun lt!356174 () (_ BitVec 64))

(assert (=> b!797985 (= lt!356173 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356174 lt!356176 mask!3266))))

(assert (=> b!797985 (= lt!356175 (seekEntryOrOpen!0 lt!356174 lt!356176 mask!3266))))

(assert (=> b!797985 (= lt!356174 (select (store (arr!20756 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797985 (= lt!356176 (array!43360 (store (arr!20756 a!3170) i!1163 k!2044) (size!21177 a!3170)))))

(declare-fun b!797986 () Bool)

(declare-fun res!542670 () Bool)

(assert (=> b!797986 (=> (not res!542670) (not e!442690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43359 (_ BitVec 32)) Bool)

(assert (=> b!797986 (= res!542670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797987 () Bool)

(declare-fun res!542673 () Bool)

(assert (=> b!797987 (=> (not res!542673) (not e!442690))))

(declare-datatypes ((List!14772 0))(
  ( (Nil!14769) (Cons!14768 (h!15897 (_ BitVec 64)) (t!21095 List!14772)) )
))
(declare-fun arrayNoDuplicates!0 (array!43359 (_ BitVec 32) List!14772) Bool)

(assert (=> b!797987 (= res!542673 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14769))))

(declare-fun b!797988 () Bool)

(declare-fun res!542672 () Bool)

(assert (=> b!797988 (=> (not res!542672) (not e!442690))))

(assert (=> b!797988 (= res!542672 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21177 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20756 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21177 a!3170)) (= (select (arr!20756 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68618 res!542667) b!797980))

(assert (= (and b!797980 res!542668) b!797982))

(assert (= (and b!797982 res!542675) b!797983))

(assert (= (and b!797983 res!542677) b!797981))

(assert (= (and b!797981 res!542676) b!797979))

(assert (= (and b!797979 res!542674) b!797986))

(assert (= (and b!797986 res!542670) b!797987))

(assert (= (and b!797987 res!542673) b!797988))

(assert (= (and b!797988 res!542672) b!797985))

(assert (= (and b!797985 res!542671) b!797984))

(assert (= (and b!797984 res!542669) b!797978))

(declare-fun m!738961 () Bool)

(assert (=> b!797984 m!738961))

(declare-fun m!738963 () Bool)

(assert (=> b!797984 m!738963))

(assert (=> b!797984 m!738963))

(declare-fun m!738965 () Bool)

(assert (=> b!797984 m!738965))

(assert (=> b!797984 m!738963))

(declare-fun m!738967 () Bool)

(assert (=> b!797984 m!738967))

(declare-fun m!738969 () Bool)

(assert (=> start!68618 m!738969))

(declare-fun m!738971 () Bool)

(assert (=> start!68618 m!738971))

(declare-fun m!738973 () Bool)

(assert (=> b!797979 m!738973))

(declare-fun m!738975 () Bool)

(assert (=> b!797988 m!738975))

(declare-fun m!738977 () Bool)

(assert (=> b!797988 m!738977))

(declare-fun m!738979 () Bool)

(assert (=> b!797985 m!738979))

(declare-fun m!738981 () Bool)

(assert (=> b!797985 m!738981))

(declare-fun m!738983 () Bool)

(assert (=> b!797985 m!738983))

(declare-fun m!738985 () Bool)

(assert (=> b!797985 m!738985))

(declare-fun m!738987 () Bool)

(assert (=> b!797983 m!738987))

(declare-fun m!738989 () Bool)

(assert (=> b!797981 m!738989))

(declare-fun m!738991 () Bool)

(assert (=> b!797987 m!738991))

(assert (=> b!797982 m!738963))

(assert (=> b!797982 m!738963))

(declare-fun m!738993 () Bool)

(assert (=> b!797982 m!738993))

(declare-fun m!738995 () Bool)

(assert (=> b!797986 m!738995))

(push 1)

(assert (not b!797986))

(assert (not b!797982))

(assert (not start!68618))

(assert (not b!797987))

(assert (not b!797979))

(assert (not b!797983))

(assert (not b!797984))

(assert (not b!797985))

(assert (not b!797981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

