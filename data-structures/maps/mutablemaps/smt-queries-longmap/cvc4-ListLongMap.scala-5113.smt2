; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69416 () Bool)

(assert start!69416)

(declare-fun b!808949 () Bool)

(declare-fun res!552853 () Bool)

(declare-fun e!447834 () Bool)

(assert (=> b!808949 (=> (not res!552853) (not e!447834))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43965 0))(
  ( (array!43966 (arr!21053 (Array (_ BitVec 32) (_ BitVec 64))) (size!21474 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43965)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!808949 (= res!552853 (and (= (size!21474 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21474 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21474 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808950 () Bool)

(declare-fun res!552852 () Bool)

(declare-fun e!447835 () Bool)

(assert (=> b!808950 (=> (not res!552852) (not e!447835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43965 (_ BitVec 32)) Bool)

(assert (=> b!808950 (= res!552852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808951 () Bool)

(declare-fun res!552854 () Bool)

(assert (=> b!808951 (=> (not res!552854) (not e!447835))))

(declare-datatypes ((List!15069 0))(
  ( (Nil!15066) (Cons!15065 (h!16194 (_ BitVec 64)) (t!21392 List!15069)) )
))
(declare-fun arrayNoDuplicates!0 (array!43965 (_ BitVec 32) List!15069) Bool)

(assert (=> b!808951 (= res!552854 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15066))))

(declare-fun b!808952 () Bool)

(declare-fun res!552851 () Bool)

(assert (=> b!808952 (=> (not res!552851) (not e!447834))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808952 (= res!552851 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!552846 () Bool)

(assert (=> start!69416 (=> (not res!552846) (not e!447834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69416 (= res!552846 (validMask!0 mask!3266))))

(assert (=> start!69416 e!447834))

(assert (=> start!69416 true))

(declare-fun array_inv!16827 (array!43965) Bool)

(assert (=> start!69416 (array_inv!16827 a!3170)))

(declare-fun b!808953 () Bool)

(declare-fun res!552849 () Bool)

(assert (=> b!808953 (=> (not res!552849) (not e!447834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808953 (= res!552849 (validKeyInArray!0 k!2044))))

(declare-fun b!808954 () Bool)

(declare-fun e!447838 () Bool)

(declare-fun e!447837 () Bool)

(assert (=> b!808954 (= e!447838 e!447837)))

(declare-fun res!552856 () Bool)

(assert (=> b!808954 (=> (not res!552856) (not e!447837))))

(declare-datatypes ((SeekEntryResult!8651 0))(
  ( (MissingZero!8651 (index!36971 (_ BitVec 32))) (Found!8651 (index!36972 (_ BitVec 32))) (Intermediate!8651 (undefined!9463 Bool) (index!36973 (_ BitVec 32)) (x!67804 (_ BitVec 32))) (Undefined!8651) (MissingVacant!8651 (index!36974 (_ BitVec 32))) )
))
(declare-fun lt!362517 () SeekEntryResult!8651)

(declare-fun lt!362513 () SeekEntryResult!8651)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808954 (= res!552856 (and (= lt!362513 lt!362517) (= lt!362517 (Found!8651 j!153)) (not (= (select (arr!21053 a!3170) index!1236) (select (arr!21053 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43965 (_ BitVec 32)) SeekEntryResult!8651)

(assert (=> b!808954 (= lt!362517 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21053 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43965 (_ BitVec 32)) SeekEntryResult!8651)

(assert (=> b!808954 (= lt!362513 (seekEntryOrOpen!0 (select (arr!21053 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808955 () Bool)

(declare-fun res!552847 () Bool)

(assert (=> b!808955 (=> (not res!552847) (not e!447834))))

(assert (=> b!808955 (= res!552847 (validKeyInArray!0 (select (arr!21053 a!3170) j!153)))))

(declare-fun b!808956 () Bool)

(assert (=> b!808956 (= e!447834 e!447835)))

(declare-fun res!552850 () Bool)

(assert (=> b!808956 (=> (not res!552850) (not e!447835))))

(declare-fun lt!362516 () SeekEntryResult!8651)

(assert (=> b!808956 (= res!552850 (or (= lt!362516 (MissingZero!8651 i!1163)) (= lt!362516 (MissingVacant!8651 i!1163))))))

(assert (=> b!808956 (= lt!362516 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808957 () Bool)

(assert (=> b!808957 (= e!447835 e!447838)))

(declare-fun res!552848 () Bool)

(assert (=> b!808957 (=> (not res!552848) (not e!447838))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362518 () (_ BitVec 64))

(declare-fun lt!362514 () array!43965)

(assert (=> b!808957 (= res!552848 (= (seekEntryOrOpen!0 lt!362518 lt!362514 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362518 lt!362514 mask!3266)))))

(assert (=> b!808957 (= lt!362518 (select (store (arr!21053 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808957 (= lt!362514 (array!43966 (store (arr!21053 a!3170) i!1163 k!2044) (size!21474 a!3170)))))

(declare-fun b!808958 () Bool)

(declare-fun res!552855 () Bool)

(assert (=> b!808958 (=> (not res!552855) (not e!447835))))

(assert (=> b!808958 (= res!552855 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21474 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21053 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21474 a!3170)) (= (select (arr!21053 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808959 () Bool)

(assert (=> b!808959 (= e!447837 false)))

(declare-fun lt!362515 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808959 (= lt!362515 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!69416 res!552846) b!808949))

(assert (= (and b!808949 res!552853) b!808955))

(assert (= (and b!808955 res!552847) b!808953))

(assert (= (and b!808953 res!552849) b!808952))

(assert (= (and b!808952 res!552851) b!808956))

(assert (= (and b!808956 res!552850) b!808950))

(assert (= (and b!808950 res!552852) b!808951))

(assert (= (and b!808951 res!552854) b!808958))

(assert (= (and b!808958 res!552855) b!808957))

(assert (= (and b!808957 res!552848) b!808954))

(assert (= (and b!808954 res!552856) b!808959))

(declare-fun m!751187 () Bool)

(assert (=> b!808957 m!751187))

(declare-fun m!751189 () Bool)

(assert (=> b!808957 m!751189))

(declare-fun m!751191 () Bool)

(assert (=> b!808957 m!751191))

(declare-fun m!751193 () Bool)

(assert (=> b!808957 m!751193))

(declare-fun m!751195 () Bool)

(assert (=> b!808950 m!751195))

(declare-fun m!751197 () Bool)

(assert (=> b!808953 m!751197))

(declare-fun m!751199 () Bool)

(assert (=> start!69416 m!751199))

(declare-fun m!751201 () Bool)

(assert (=> start!69416 m!751201))

(declare-fun m!751203 () Bool)

(assert (=> b!808954 m!751203))

(declare-fun m!751205 () Bool)

(assert (=> b!808954 m!751205))

(assert (=> b!808954 m!751205))

(declare-fun m!751207 () Bool)

(assert (=> b!808954 m!751207))

(assert (=> b!808954 m!751205))

(declare-fun m!751209 () Bool)

(assert (=> b!808954 m!751209))

(declare-fun m!751211 () Bool)

(assert (=> b!808952 m!751211))

(declare-fun m!751213 () Bool)

(assert (=> b!808951 m!751213))

(declare-fun m!751215 () Bool)

(assert (=> b!808959 m!751215))

(assert (=> b!808955 m!751205))

(assert (=> b!808955 m!751205))

(declare-fun m!751217 () Bool)

(assert (=> b!808955 m!751217))

(declare-fun m!751219 () Bool)

(assert (=> b!808956 m!751219))

(declare-fun m!751221 () Bool)

(assert (=> b!808958 m!751221))

(declare-fun m!751223 () Bool)

(assert (=> b!808958 m!751223))

(push 1)

