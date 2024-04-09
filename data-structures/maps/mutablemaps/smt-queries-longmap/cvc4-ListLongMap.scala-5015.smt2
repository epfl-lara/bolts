; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68624 () Bool)

(assert start!68624)

(declare-fun b!798085 () Bool)

(declare-fun e!442744 () Bool)

(declare-fun e!442739 () Bool)

(assert (=> b!798085 (= e!442744 e!442739)))

(declare-fun res!542777 () Bool)

(assert (=> b!798085 (=> (not res!542777) (not e!442739))))

(declare-datatypes ((SeekEntryResult!8357 0))(
  ( (MissingZero!8357 (index!35795 (_ BitVec 32))) (Found!8357 (index!35796 (_ BitVec 32))) (Intermediate!8357 (undefined!9169 Bool) (index!35797 (_ BitVec 32)) (x!66708 (_ BitVec 32))) (Undefined!8357) (MissingVacant!8357 (index!35798 (_ BitVec 32))) )
))
(declare-fun lt!356246 () SeekEntryResult!8357)

(declare-fun lt!356245 () SeekEntryResult!8357)

(assert (=> b!798085 (= res!542777 (= lt!356246 lt!356245))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43365 0))(
  ( (array!43366 (arr!20759 (Array (_ BitVec 32) (_ BitVec 64))) (size!21180 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43365)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43365 (_ BitVec 32)) SeekEntryResult!8357)

(assert (=> b!798085 (= lt!356245 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20759 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43365 (_ BitVec 32)) SeekEntryResult!8357)

(assert (=> b!798085 (= lt!356246 (seekEntryOrOpen!0 (select (arr!20759 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798086 () Bool)

(declare-fun res!542778 () Bool)

(declare-fun e!442742 () Bool)

(assert (=> b!798086 (=> (not res!542778) (not e!442742))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798086 (= res!542778 (and (= (size!21180 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21180 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21180 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798087 () Bool)

(declare-fun e!442740 () Bool)

(assert (=> b!798087 (= e!442739 e!442740)))

(declare-fun res!542776 () Bool)

(assert (=> b!798087 (=> (not res!542776) (not e!442740))))

(declare-fun lt!356244 () SeekEntryResult!8357)

(assert (=> b!798087 (= res!542776 (and (= lt!356245 lt!356244) (= (select (arr!20759 a!3170) index!1236) (select (arr!20759 a!3170) j!153))))))

(assert (=> b!798087 (= lt!356244 (Found!8357 j!153))))

(declare-fun b!798088 () Bool)

(declare-fun res!542781 () Bool)

(assert (=> b!798088 (=> (not res!542781) (not e!442742))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798088 (= res!542781 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798089 () Bool)

(declare-fun res!542779 () Bool)

(declare-fun e!442743 () Bool)

(assert (=> b!798089 (=> (not res!542779) (not e!442743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43365 (_ BitVec 32)) Bool)

(assert (=> b!798089 (= res!542779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798090 () Bool)

(declare-fun res!542780 () Bool)

(assert (=> b!798090 (=> (not res!542780) (not e!442742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798090 (= res!542780 (validKeyInArray!0 (select (arr!20759 a!3170) j!153)))))

(declare-fun b!798091 () Bool)

(declare-fun res!542784 () Bool)

(assert (=> b!798091 (=> (not res!542784) (not e!442742))))

(assert (=> b!798091 (= res!542784 (validKeyInArray!0 k!2044))))

(declare-fun b!798092 () Bool)

(declare-fun res!542783 () Bool)

(assert (=> b!798092 (=> (not res!542783) (not e!442743))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798092 (= res!542783 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21180 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20759 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21180 a!3170)) (= (select (arr!20759 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!542774 () Bool)

(assert (=> start!68624 (=> (not res!542774) (not e!442742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68624 (= res!542774 (validMask!0 mask!3266))))

(assert (=> start!68624 e!442742))

(assert (=> start!68624 true))

(declare-fun array_inv!16533 (array!43365) Bool)

(assert (=> start!68624 (array_inv!16533 a!3170)))

(declare-fun b!798093 () Bool)

(assert (=> b!798093 (= e!442742 e!442743)))

(declare-fun res!542775 () Bool)

(assert (=> b!798093 (=> (not res!542775) (not e!442743))))

(declare-fun lt!356242 () SeekEntryResult!8357)

(assert (=> b!798093 (= res!542775 (or (= lt!356242 (MissingZero!8357 i!1163)) (= lt!356242 (MissingVacant!8357 i!1163))))))

(assert (=> b!798093 (= lt!356242 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798094 () Bool)

(declare-fun res!542782 () Bool)

(assert (=> b!798094 (=> (not res!542782) (not e!442743))))

(declare-datatypes ((List!14775 0))(
  ( (Nil!14772) (Cons!14771 (h!15900 (_ BitVec 64)) (t!21098 List!14775)) )
))
(declare-fun arrayNoDuplicates!0 (array!43365 (_ BitVec 32) List!14775) Bool)

(assert (=> b!798094 (= res!542782 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14772))))

(declare-fun b!798095 () Bool)

(declare-fun lt!356243 () SeekEntryResult!8357)

(assert (=> b!798095 (= e!442740 (not (or (not (= lt!356243 lt!356244)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(assert (=> b!798095 (= lt!356243 (Found!8357 index!1236))))

(declare-fun b!798096 () Bool)

(assert (=> b!798096 (= e!442743 e!442744)))

(declare-fun res!542785 () Bool)

(assert (=> b!798096 (=> (not res!542785) (not e!442744))))

(declare-fun lt!356241 () SeekEntryResult!8357)

(assert (=> b!798096 (= res!542785 (= lt!356241 lt!356243))))

(declare-fun lt!356248 () array!43365)

(declare-fun lt!356247 () (_ BitVec 64))

(assert (=> b!798096 (= lt!356243 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356247 lt!356248 mask!3266))))

(assert (=> b!798096 (= lt!356241 (seekEntryOrOpen!0 lt!356247 lt!356248 mask!3266))))

(assert (=> b!798096 (= lt!356247 (select (store (arr!20759 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798096 (= lt!356248 (array!43366 (store (arr!20759 a!3170) i!1163 k!2044) (size!21180 a!3170)))))

(assert (= (and start!68624 res!542774) b!798086))

(assert (= (and b!798086 res!542778) b!798090))

(assert (= (and b!798090 res!542780) b!798091))

(assert (= (and b!798091 res!542784) b!798088))

(assert (= (and b!798088 res!542781) b!798093))

(assert (= (and b!798093 res!542775) b!798089))

(assert (= (and b!798089 res!542779) b!798094))

(assert (= (and b!798094 res!542782) b!798092))

(assert (= (and b!798092 res!542783) b!798096))

(assert (= (and b!798096 res!542785) b!798085))

(assert (= (and b!798085 res!542777) b!798087))

(assert (= (and b!798087 res!542776) b!798095))

(declare-fun m!739069 () Bool)

(assert (=> b!798088 m!739069))

(declare-fun m!739071 () Bool)

(assert (=> b!798093 m!739071))

(declare-fun m!739073 () Bool)

(assert (=> b!798094 m!739073))

(declare-fun m!739075 () Bool)

(assert (=> start!68624 m!739075))

(declare-fun m!739077 () Bool)

(assert (=> start!68624 m!739077))

(declare-fun m!739079 () Bool)

(assert (=> b!798085 m!739079))

(assert (=> b!798085 m!739079))

(declare-fun m!739081 () Bool)

(assert (=> b!798085 m!739081))

(assert (=> b!798085 m!739079))

(declare-fun m!739083 () Bool)

(assert (=> b!798085 m!739083))

(declare-fun m!739085 () Bool)

(assert (=> b!798092 m!739085))

(declare-fun m!739087 () Bool)

(assert (=> b!798092 m!739087))

(declare-fun m!739089 () Bool)

(assert (=> b!798096 m!739089))

(declare-fun m!739091 () Bool)

(assert (=> b!798096 m!739091))

(declare-fun m!739093 () Bool)

(assert (=> b!798096 m!739093))

(declare-fun m!739095 () Bool)

(assert (=> b!798096 m!739095))

(declare-fun m!739097 () Bool)

(assert (=> b!798091 m!739097))

(declare-fun m!739099 () Bool)

(assert (=> b!798087 m!739099))

(assert (=> b!798087 m!739079))

(assert (=> b!798090 m!739079))

(assert (=> b!798090 m!739079))

(declare-fun m!739101 () Bool)

(assert (=> b!798090 m!739101))

(declare-fun m!739103 () Bool)

(assert (=> b!798089 m!739103))

(push 1)

(assert (not b!798089))

(assert (not b!798091))

(assert (not b!798085))

(assert (not b!798088))

(assert (not b!798096))

(assert (not b!798093))

(assert (not b!798090))

(assert (not b!798094))

(assert (not start!68624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

