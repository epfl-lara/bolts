; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68682 () Bool)

(assert start!68682)

(declare-fun b!799071 () Bool)

(declare-fun e!443173 () Bool)

(declare-fun e!443174 () Bool)

(assert (=> b!799071 (= e!443173 e!443174)))

(declare-fun res!543768 () Bool)

(assert (=> b!799071 (=> (not res!543768) (not e!443174))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43423 0))(
  ( (array!43424 (arr!20788 (Array (_ BitVec 32) (_ BitVec 64))) (size!21209 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43423)

(declare-fun lt!356815 () (_ BitVec 32))

(assert (=> b!799071 (= res!543768 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356815 #b00000000000000000000000000000000) (bvslt lt!356815 (size!21209 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799071 (= lt!356815 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799072 () Bool)

(declare-fun e!443172 () Bool)

(declare-fun e!443176 () Bool)

(assert (=> b!799072 (= e!443172 e!443176)))

(declare-fun res!543770 () Bool)

(assert (=> b!799072 (=> (not res!543770) (not e!443176))))

(declare-datatypes ((SeekEntryResult!8386 0))(
  ( (MissingZero!8386 (index!35911 (_ BitVec 32))) (Found!8386 (index!35912 (_ BitVec 32))) (Intermediate!8386 (undefined!9198 Bool) (index!35913 (_ BitVec 32)) (x!66817 (_ BitVec 32))) (Undefined!8386) (MissingVacant!8386 (index!35914 (_ BitVec 32))) )
))
(declare-fun lt!356813 () SeekEntryResult!8386)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799072 (= res!543770 (or (= lt!356813 (MissingZero!8386 i!1163)) (= lt!356813 (MissingVacant!8386 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43423 (_ BitVec 32)) SeekEntryResult!8386)

(assert (=> b!799072 (= lt!356813 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799073 () Bool)

(declare-fun res!543766 () Bool)

(assert (=> b!799073 (=> (not res!543766) (not e!443176))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799073 (= res!543766 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21209 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20788 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21209 a!3170)) (= (select (arr!20788 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799074 () Bool)

(declare-fun res!543767 () Bool)

(assert (=> b!799074 (=> (not res!543767) (not e!443176))))

(declare-datatypes ((List!14804 0))(
  ( (Nil!14801) (Cons!14800 (h!15929 (_ BitVec 64)) (t!21127 List!14804)) )
))
(declare-fun arrayNoDuplicates!0 (array!43423 (_ BitVec 32) List!14804) Bool)

(assert (=> b!799074 (= res!543767 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14801))))

(declare-fun b!799075 () Bool)

(declare-fun res!543765 () Bool)

(assert (=> b!799075 (=> (not res!543765) (not e!443174))))

(declare-fun lt!356811 () array!43423)

(declare-fun lt!356814 () (_ BitVec 64))

(declare-fun lt!356812 () SeekEntryResult!8386)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43423 (_ BitVec 32)) SeekEntryResult!8386)

(assert (=> b!799075 (= res!543765 (= lt!356812 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356815 vacantAfter!23 lt!356814 lt!356811 mask!3266)))))

(declare-fun res!543764 () Bool)

(assert (=> start!68682 (=> (not res!543764) (not e!443172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68682 (= res!543764 (validMask!0 mask!3266))))

(assert (=> start!68682 e!443172))

(assert (=> start!68682 true))

(declare-fun array_inv!16562 (array!43423) Bool)

(assert (=> start!68682 (array_inv!16562 a!3170)))

(declare-fun b!799076 () Bool)

(declare-fun res!543771 () Bool)

(assert (=> b!799076 (=> (not res!543771) (not e!443172))))

(declare-fun arrayContainsKey!0 (array!43423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799076 (= res!543771 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799077 () Bool)

(declare-fun res!543769 () Bool)

(assert (=> b!799077 (=> (not res!543769) (not e!443176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43423 (_ BitVec 32)) Bool)

(assert (=> b!799077 (= res!543769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799078 () Bool)

(declare-fun res!543760 () Bool)

(assert (=> b!799078 (=> (not res!543760) (not e!443172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799078 (= res!543760 (validKeyInArray!0 k0!2044))))

(declare-fun b!799079 () Bool)

(assert (=> b!799079 (= e!443174 false)))

(declare-fun lt!356816 () SeekEntryResult!8386)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799079 (= lt!356816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356815 vacantBefore!23 (select (arr!20788 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799080 () Bool)

(declare-fun e!443175 () Bool)

(assert (=> b!799080 (= e!443175 e!443173)))

(declare-fun res!543762 () Bool)

(assert (=> b!799080 (=> (not res!543762) (not e!443173))))

(declare-fun lt!356817 () SeekEntryResult!8386)

(declare-fun lt!356818 () SeekEntryResult!8386)

(assert (=> b!799080 (= res!543762 (and (= lt!356817 lt!356818) (= lt!356818 (Found!8386 j!153)) (not (= (select (arr!20788 a!3170) index!1236) (select (arr!20788 a!3170) j!153)))))))

(assert (=> b!799080 (= lt!356818 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20788 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799080 (= lt!356817 (seekEntryOrOpen!0 (select (arr!20788 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799081 () Bool)

(declare-fun res!543761 () Bool)

(assert (=> b!799081 (=> (not res!543761) (not e!443172))))

(assert (=> b!799081 (= res!543761 (and (= (size!21209 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21209 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21209 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799082 () Bool)

(declare-fun res!543772 () Bool)

(assert (=> b!799082 (=> (not res!543772) (not e!443172))))

(assert (=> b!799082 (= res!543772 (validKeyInArray!0 (select (arr!20788 a!3170) j!153)))))

(declare-fun b!799083 () Bool)

(assert (=> b!799083 (= e!443176 e!443175)))

(declare-fun res!543763 () Bool)

(assert (=> b!799083 (=> (not res!543763) (not e!443175))))

(assert (=> b!799083 (= res!543763 (= lt!356812 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356814 lt!356811 mask!3266)))))

(assert (=> b!799083 (= lt!356812 (seekEntryOrOpen!0 lt!356814 lt!356811 mask!3266))))

(assert (=> b!799083 (= lt!356814 (select (store (arr!20788 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799083 (= lt!356811 (array!43424 (store (arr!20788 a!3170) i!1163 k0!2044) (size!21209 a!3170)))))

(assert (= (and start!68682 res!543764) b!799081))

(assert (= (and b!799081 res!543761) b!799082))

(assert (= (and b!799082 res!543772) b!799078))

(assert (= (and b!799078 res!543760) b!799076))

(assert (= (and b!799076 res!543771) b!799072))

(assert (= (and b!799072 res!543770) b!799077))

(assert (= (and b!799077 res!543769) b!799074))

(assert (= (and b!799074 res!543767) b!799073))

(assert (= (and b!799073 res!543766) b!799083))

(assert (= (and b!799083 res!543763) b!799080))

(assert (= (and b!799080 res!543762) b!799071))

(assert (= (and b!799071 res!543768) b!799075))

(assert (= (and b!799075 res!543765) b!799079))

(declare-fun m!740161 () Bool)

(assert (=> b!799082 m!740161))

(assert (=> b!799082 m!740161))

(declare-fun m!740163 () Bool)

(assert (=> b!799082 m!740163))

(declare-fun m!740165 () Bool)

(assert (=> b!799075 m!740165))

(declare-fun m!740167 () Bool)

(assert (=> b!799083 m!740167))

(declare-fun m!740169 () Bool)

(assert (=> b!799083 m!740169))

(declare-fun m!740171 () Bool)

(assert (=> b!799083 m!740171))

(declare-fun m!740173 () Bool)

(assert (=> b!799083 m!740173))

(declare-fun m!740175 () Bool)

(assert (=> b!799076 m!740175))

(assert (=> b!799079 m!740161))

(assert (=> b!799079 m!740161))

(declare-fun m!740177 () Bool)

(assert (=> b!799079 m!740177))

(declare-fun m!740179 () Bool)

(assert (=> b!799074 m!740179))

(declare-fun m!740181 () Bool)

(assert (=> b!799073 m!740181))

(declare-fun m!740183 () Bool)

(assert (=> b!799073 m!740183))

(declare-fun m!740185 () Bool)

(assert (=> b!799071 m!740185))

(declare-fun m!740187 () Bool)

(assert (=> b!799072 m!740187))

(declare-fun m!740189 () Bool)

(assert (=> start!68682 m!740189))

(declare-fun m!740191 () Bool)

(assert (=> start!68682 m!740191))

(declare-fun m!740193 () Bool)

(assert (=> b!799077 m!740193))

(declare-fun m!740195 () Bool)

(assert (=> b!799080 m!740195))

(assert (=> b!799080 m!740161))

(assert (=> b!799080 m!740161))

(declare-fun m!740197 () Bool)

(assert (=> b!799080 m!740197))

(assert (=> b!799080 m!740161))

(declare-fun m!740199 () Bool)

(assert (=> b!799080 m!740199))

(declare-fun m!740201 () Bool)

(assert (=> b!799078 m!740201))

(check-sat (not b!799074) (not b!799076) (not b!799080) (not start!68682) (not b!799077) (not b!799071) (not b!799072) (not b!799079) (not b!799078) (not b!799075) (not b!799082) (not b!799083))
(check-sat)
