; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68334 () Bool)

(assert start!68334)

(declare-fun b!793476 () Bool)

(declare-fun res!538172 () Bool)

(declare-fun e!440769 () Bool)

(assert (=> b!793476 (=> (not res!538172) (not e!440769))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43075 0))(
  ( (array!43076 (arr!20614 (Array (_ BitVec 32) (_ BitVec 64))) (size!21035 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43075)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793476 (= res!538172 (and (= (size!21035 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21035 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21035 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793477 () Bool)

(declare-fun e!440767 () Bool)

(declare-fun e!440770 () Bool)

(assert (=> b!793477 (= e!440767 e!440770)))

(declare-fun res!538169 () Bool)

(assert (=> b!793477 (=> (not res!538169) (not e!440770))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!353719 () array!43075)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353718 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8212 0))(
  ( (MissingZero!8212 (index!35215 (_ BitVec 32))) (Found!8212 (index!35216 (_ BitVec 32))) (Intermediate!8212 (undefined!9024 Bool) (index!35217 (_ BitVec 32)) (x!66179 (_ BitVec 32))) (Undefined!8212) (MissingVacant!8212 (index!35218 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43075 (_ BitVec 32)) SeekEntryResult!8212)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43075 (_ BitVec 32)) SeekEntryResult!8212)

(assert (=> b!793477 (= res!538169 (= (seekEntryOrOpen!0 lt!353718 lt!353719 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353718 lt!353719 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!793477 (= lt!353718 (select (store (arr!20614 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793477 (= lt!353719 (array!43076 (store (arr!20614 a!3170) i!1163 k0!2044) (size!21035 a!3170)))))

(declare-fun b!793478 () Bool)

(declare-fun res!538170 () Bool)

(assert (=> b!793478 (=> (not res!538170) (not e!440767))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793478 (= res!538170 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21035 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20614 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21035 a!3170)) (= (select (arr!20614 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!538168 () Bool)

(assert (=> start!68334 (=> (not res!538168) (not e!440769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68334 (= res!538168 (validMask!0 mask!3266))))

(assert (=> start!68334 e!440769))

(assert (=> start!68334 true))

(declare-fun array_inv!16388 (array!43075) Bool)

(assert (=> start!68334 (array_inv!16388 a!3170)))

(declare-fun b!793479 () Bool)

(declare-fun res!538174 () Bool)

(assert (=> b!793479 (=> (not res!538174) (not e!440769))))

(declare-fun arrayContainsKey!0 (array!43075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793479 (= res!538174 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793480 () Bool)

(declare-fun res!538171 () Bool)

(assert (=> b!793480 (=> (not res!538171) (not e!440767))))

(declare-datatypes ((List!14630 0))(
  ( (Nil!14627) (Cons!14626 (h!15755 (_ BitVec 64)) (t!20953 List!14630)) )
))
(declare-fun arrayNoDuplicates!0 (array!43075 (_ BitVec 32) List!14630) Bool)

(assert (=> b!793480 (= res!538171 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14627))))

(declare-fun b!793481 () Bool)

(assert (=> b!793481 (= e!440770 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!793482 () Bool)

(declare-fun res!538165 () Bool)

(assert (=> b!793482 (=> (not res!538165) (not e!440769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793482 (= res!538165 (validKeyInArray!0 k0!2044))))

(declare-fun b!793483 () Bool)

(declare-fun res!538167 () Bool)

(assert (=> b!793483 (=> (not res!538167) (not e!440769))))

(assert (=> b!793483 (= res!538167 (validKeyInArray!0 (select (arr!20614 a!3170) j!153)))))

(declare-fun b!793484 () Bool)

(assert (=> b!793484 (= e!440769 e!440767)))

(declare-fun res!538166 () Bool)

(assert (=> b!793484 (=> (not res!538166) (not e!440767))))

(declare-fun lt!353717 () SeekEntryResult!8212)

(assert (=> b!793484 (= res!538166 (or (= lt!353717 (MissingZero!8212 i!1163)) (= lt!353717 (MissingVacant!8212 i!1163))))))

(assert (=> b!793484 (= lt!353717 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793485 () Bool)

(declare-fun res!538173 () Bool)

(assert (=> b!793485 (=> (not res!538173) (not e!440767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43075 (_ BitVec 32)) Bool)

(assert (=> b!793485 (= res!538173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68334 res!538168) b!793476))

(assert (= (and b!793476 res!538172) b!793483))

(assert (= (and b!793483 res!538167) b!793482))

(assert (= (and b!793482 res!538165) b!793479))

(assert (= (and b!793479 res!538174) b!793484))

(assert (= (and b!793484 res!538166) b!793485))

(assert (= (and b!793485 res!538173) b!793480))

(assert (= (and b!793480 res!538171) b!793478))

(assert (= (and b!793478 res!538170) b!793477))

(assert (= (and b!793477 res!538169) b!793481))

(declare-fun m!734053 () Bool)

(assert (=> b!793480 m!734053))

(declare-fun m!734055 () Bool)

(assert (=> b!793484 m!734055))

(declare-fun m!734057 () Bool)

(assert (=> b!793485 m!734057))

(declare-fun m!734059 () Bool)

(assert (=> start!68334 m!734059))

(declare-fun m!734061 () Bool)

(assert (=> start!68334 m!734061))

(declare-fun m!734063 () Bool)

(assert (=> b!793478 m!734063))

(declare-fun m!734065 () Bool)

(assert (=> b!793478 m!734065))

(declare-fun m!734067 () Bool)

(assert (=> b!793483 m!734067))

(assert (=> b!793483 m!734067))

(declare-fun m!734069 () Bool)

(assert (=> b!793483 m!734069))

(declare-fun m!734071 () Bool)

(assert (=> b!793482 m!734071))

(declare-fun m!734073 () Bool)

(assert (=> b!793477 m!734073))

(declare-fun m!734075 () Bool)

(assert (=> b!793477 m!734075))

(declare-fun m!734077 () Bool)

(assert (=> b!793477 m!734077))

(declare-fun m!734079 () Bool)

(assert (=> b!793477 m!734079))

(declare-fun m!734081 () Bool)

(assert (=> b!793479 m!734081))

(check-sat (not b!793477) (not b!793480) (not b!793479) (not b!793482) (not b!793485) (not start!68334) (not b!793484) (not b!793483))
(check-sat)
