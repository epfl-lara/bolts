; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68678 () Bool)

(assert start!68678)

(declare-fun b!798993 () Bool)

(declare-fun e!443137 () Bool)

(declare-fun e!443139 () Bool)

(assert (=> b!798993 (= e!443137 e!443139)))

(declare-fun res!543683 () Bool)

(assert (=> b!798993 (=> (not res!543683) (not e!443139))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356766 () (_ BitVec 32))

(declare-datatypes ((array!43419 0))(
  ( (array!43420 (arr!20786 (Array (_ BitVec 32) (_ BitVec 64))) (size!21207 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43419)

(assert (=> b!798993 (= res!543683 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356766 #b00000000000000000000000000000000) (bvslt lt!356766 (size!21207 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798993 (= lt!356766 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798994 () Bool)

(declare-fun e!443138 () Bool)

(declare-fun e!443135 () Bool)

(assert (=> b!798994 (= e!443138 e!443135)))

(declare-fun res!543688 () Bool)

(assert (=> b!798994 (=> (not res!543688) (not e!443135))))

(declare-datatypes ((SeekEntryResult!8384 0))(
  ( (MissingZero!8384 (index!35903 (_ BitVec 32))) (Found!8384 (index!35904 (_ BitVec 32))) (Intermediate!8384 (undefined!9196 Bool) (index!35905 (_ BitVec 32)) (x!66807 (_ BitVec 32))) (Undefined!8384) (MissingVacant!8384 (index!35906 (_ BitVec 32))) )
))
(declare-fun lt!356770 () SeekEntryResult!8384)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798994 (= res!543688 (or (= lt!356770 (MissingZero!8384 i!1163)) (= lt!356770 (MissingVacant!8384 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43419 (_ BitVec 32)) SeekEntryResult!8384)

(assert (=> b!798994 (= lt!356770 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798995 () Bool)

(declare-fun e!443136 () Bool)

(assert (=> b!798995 (= e!443135 e!443136)))

(declare-fun res!543682 () Bool)

(assert (=> b!798995 (=> (not res!543682) (not e!443136))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356767 () (_ BitVec 64))

(declare-fun lt!356768 () array!43419)

(declare-fun lt!356763 () SeekEntryResult!8384)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43419 (_ BitVec 32)) SeekEntryResult!8384)

(assert (=> b!798995 (= res!543682 (= lt!356763 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356767 lt!356768 mask!3266)))))

(assert (=> b!798995 (= lt!356763 (seekEntryOrOpen!0 lt!356767 lt!356768 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798995 (= lt!356767 (select (store (arr!20786 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798995 (= lt!356768 (array!43420 (store (arr!20786 a!3170) i!1163 k!2044) (size!21207 a!3170)))))

(declare-fun b!798996 () Bool)

(declare-fun res!543690 () Bool)

(assert (=> b!798996 (=> (not res!543690) (not e!443138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798996 (= res!543690 (validKeyInArray!0 (select (arr!20786 a!3170) j!153)))))

(declare-fun b!798997 () Bool)

(declare-fun res!543691 () Bool)

(assert (=> b!798997 (=> (not res!543691) (not e!443139))))

(assert (=> b!798997 (= res!543691 (= lt!356763 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356766 vacantAfter!23 lt!356767 lt!356768 mask!3266)))))

(declare-fun b!798998 () Bool)

(assert (=> b!798998 (= e!443136 e!443137)))

(declare-fun res!543689 () Bool)

(assert (=> b!798998 (=> (not res!543689) (not e!443137))))

(declare-fun lt!356764 () SeekEntryResult!8384)

(declare-fun lt!356765 () SeekEntryResult!8384)

(assert (=> b!798998 (= res!543689 (and (= lt!356764 lt!356765) (= lt!356765 (Found!8384 j!153)) (not (= (select (arr!20786 a!3170) index!1236) (select (arr!20786 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798998 (= lt!356765 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20786 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798998 (= lt!356764 (seekEntryOrOpen!0 (select (arr!20786 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799000 () Bool)

(declare-fun res!543684 () Bool)

(assert (=> b!799000 (=> (not res!543684) (not e!443138))))

(assert (=> b!799000 (= res!543684 (validKeyInArray!0 k!2044))))

(declare-fun b!799001 () Bool)

(assert (=> b!799001 (= e!443139 false)))

(declare-fun lt!356769 () SeekEntryResult!8384)

(assert (=> b!799001 (= lt!356769 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356766 vacantBefore!23 (select (arr!20786 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799002 () Bool)

(declare-fun res!543687 () Bool)

(assert (=> b!799002 (=> (not res!543687) (not e!443135))))

(assert (=> b!799002 (= res!543687 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21207 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20786 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21207 a!3170)) (= (select (arr!20786 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799003 () Bool)

(declare-fun res!543694 () Bool)

(assert (=> b!799003 (=> (not res!543694) (not e!443135))))

(declare-datatypes ((List!14802 0))(
  ( (Nil!14799) (Cons!14798 (h!15927 (_ BitVec 64)) (t!21125 List!14802)) )
))
(declare-fun arrayNoDuplicates!0 (array!43419 (_ BitVec 32) List!14802) Bool)

(assert (=> b!799003 (= res!543694 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14799))))

(declare-fun b!799004 () Bool)

(declare-fun res!543693 () Bool)

(assert (=> b!799004 (=> (not res!543693) (not e!443138))))

(declare-fun arrayContainsKey!0 (array!43419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799004 (= res!543693 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799005 () Bool)

(declare-fun res!543692 () Bool)

(assert (=> b!799005 (=> (not res!543692) (not e!443135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43419 (_ BitVec 32)) Bool)

(assert (=> b!799005 (= res!543692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!543686 () Bool)

(assert (=> start!68678 (=> (not res!543686) (not e!443138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68678 (= res!543686 (validMask!0 mask!3266))))

(assert (=> start!68678 e!443138))

(assert (=> start!68678 true))

(declare-fun array_inv!16560 (array!43419) Bool)

(assert (=> start!68678 (array_inv!16560 a!3170)))

(declare-fun b!798999 () Bool)

(declare-fun res!543685 () Bool)

(assert (=> b!798999 (=> (not res!543685) (not e!443138))))

(assert (=> b!798999 (= res!543685 (and (= (size!21207 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21207 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21207 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68678 res!543686) b!798999))

(assert (= (and b!798999 res!543685) b!798996))

(assert (= (and b!798996 res!543690) b!799000))

(assert (= (and b!799000 res!543684) b!799004))

(assert (= (and b!799004 res!543693) b!798994))

(assert (= (and b!798994 res!543688) b!799005))

(assert (= (and b!799005 res!543692) b!799003))

(assert (= (and b!799003 res!543694) b!799002))

(assert (= (and b!799002 res!543687) b!798995))

(assert (= (and b!798995 res!543682) b!798998))

(assert (= (and b!798998 res!543689) b!798993))

(assert (= (and b!798993 res!543683) b!798997))

(assert (= (and b!798997 res!543691) b!799001))

(declare-fun m!740077 () Bool)

(assert (=> b!799003 m!740077))

(declare-fun m!740079 () Bool)

(assert (=> b!799002 m!740079))

(declare-fun m!740081 () Bool)

(assert (=> b!799002 m!740081))

(declare-fun m!740083 () Bool)

(assert (=> b!798993 m!740083))

(declare-fun m!740085 () Bool)

(assert (=> b!798996 m!740085))

(assert (=> b!798996 m!740085))

(declare-fun m!740087 () Bool)

(assert (=> b!798996 m!740087))

(declare-fun m!740089 () Bool)

(assert (=> b!799000 m!740089))

(declare-fun m!740091 () Bool)

(assert (=> b!798998 m!740091))

(assert (=> b!798998 m!740085))

(assert (=> b!798998 m!740085))

(declare-fun m!740093 () Bool)

(assert (=> b!798998 m!740093))

(assert (=> b!798998 m!740085))

(declare-fun m!740095 () Bool)

(assert (=> b!798998 m!740095))

(declare-fun m!740097 () Bool)

(assert (=> b!798995 m!740097))

(declare-fun m!740099 () Bool)

(assert (=> b!798995 m!740099))

(declare-fun m!740101 () Bool)

(assert (=> b!798995 m!740101))

(declare-fun m!740103 () Bool)

(assert (=> b!798995 m!740103))

(declare-fun m!740105 () Bool)

(assert (=> b!798997 m!740105))

(declare-fun m!740107 () Bool)

(assert (=> b!799004 m!740107))

(declare-fun m!740109 () Bool)

(assert (=> b!798994 m!740109))

(declare-fun m!740111 () Bool)

(assert (=> start!68678 m!740111))

(declare-fun m!740113 () Bool)

(assert (=> start!68678 m!740113))

(assert (=> b!799001 m!740085))

(assert (=> b!799001 m!740085))

(declare-fun m!740115 () Bool)

(assert (=> b!799001 m!740115))

(declare-fun m!740117 () Bool)

(assert (=> b!799005 m!740117))

(push 1)

