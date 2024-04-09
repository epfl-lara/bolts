; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68420 () Bool)

(assert start!68420)

(declare-fun b!794720 () Bool)

(declare-fun res!539410 () Bool)

(declare-fun e!441220 () Bool)

(assert (=> b!794720 (=> (not res!539410) (not e!441220))))

(declare-datatypes ((array!43161 0))(
  ( (array!43162 (arr!20657 (Array (_ BitVec 32) (_ BitVec 64))) (size!21078 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43161)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43161 (_ BitVec 32)) Bool)

(assert (=> b!794720 (= res!539410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794722 () Bool)

(declare-fun res!539418 () Bool)

(declare-fun e!441221 () Bool)

(assert (=> b!794722 (=> (not res!539418) (not e!441221))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794722 (= res!539418 (and (= (size!21078 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21078 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21078 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794723 () Bool)

(assert (=> b!794723 (= e!441221 e!441220)))

(declare-fun res!539412 () Bool)

(assert (=> b!794723 (=> (not res!539412) (not e!441220))))

(declare-datatypes ((SeekEntryResult!8255 0))(
  ( (MissingZero!8255 (index!35387 (_ BitVec 32))) (Found!8255 (index!35388 (_ BitVec 32))) (Intermediate!8255 (undefined!9067 Bool) (index!35389 (_ BitVec 32)) (x!66334 (_ BitVec 32))) (Undefined!8255) (MissingVacant!8255 (index!35390 (_ BitVec 32))) )
))
(declare-fun lt!354266 () SeekEntryResult!8255)

(assert (=> b!794723 (= res!539412 (or (= lt!354266 (MissingZero!8255 i!1163)) (= lt!354266 (MissingVacant!8255 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43161 (_ BitVec 32)) SeekEntryResult!8255)

(assert (=> b!794723 (= lt!354266 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794724 () Bool)

(declare-fun res!539411 () Bool)

(assert (=> b!794724 (=> (not res!539411) (not e!441220))))

(declare-datatypes ((List!14673 0))(
  ( (Nil!14670) (Cons!14669 (h!15798 (_ BitVec 64)) (t!20996 List!14673)) )
))
(declare-fun arrayNoDuplicates!0 (array!43161 (_ BitVec 32) List!14673) Bool)

(assert (=> b!794724 (= res!539411 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14670))))

(declare-fun b!794725 () Bool)

(declare-fun res!539419 () Bool)

(assert (=> b!794725 (=> (not res!539419) (not e!441221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794725 (= res!539419 (validKeyInArray!0 k!2044))))

(declare-fun b!794726 () Bool)

(declare-fun e!441222 () Bool)

(assert (=> b!794726 (= e!441220 e!441222)))

(declare-fun res!539413 () Bool)

(assert (=> b!794726 (=> (not res!539413) (not e!441222))))

(declare-fun lt!354268 () array!43161)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354267 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43161 (_ BitVec 32)) SeekEntryResult!8255)

(assert (=> b!794726 (= res!539413 (= (seekEntryOrOpen!0 lt!354267 lt!354268 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354267 lt!354268 mask!3266)))))

(assert (=> b!794726 (= lt!354267 (select (store (arr!20657 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794726 (= lt!354268 (array!43162 (store (arr!20657 a!3170) i!1163 k!2044) (size!21078 a!3170)))))

(declare-fun b!794727 () Bool)

(assert (=> b!794727 (= e!441222 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!794728 () Bool)

(declare-fun res!539416 () Bool)

(assert (=> b!794728 (=> (not res!539416) (not e!441220))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794728 (= res!539416 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21078 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20657 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21078 a!3170)) (= (select (arr!20657 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794721 () Bool)

(declare-fun res!539417 () Bool)

(assert (=> b!794721 (=> (not res!539417) (not e!441222))))

(assert (=> b!794721 (= res!539417 (= (seekEntryOrOpen!0 (select (arr!20657 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20657 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun res!539414 () Bool)

(assert (=> start!68420 (=> (not res!539414) (not e!441221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68420 (= res!539414 (validMask!0 mask!3266))))

(assert (=> start!68420 e!441221))

(assert (=> start!68420 true))

(declare-fun array_inv!16431 (array!43161) Bool)

(assert (=> start!68420 (array_inv!16431 a!3170)))

(declare-fun b!794729 () Bool)

(declare-fun res!539409 () Bool)

(assert (=> b!794729 (=> (not res!539409) (not e!441221))))

(assert (=> b!794729 (= res!539409 (validKeyInArray!0 (select (arr!20657 a!3170) j!153)))))

(declare-fun b!794730 () Bool)

(declare-fun res!539415 () Bool)

(assert (=> b!794730 (=> (not res!539415) (not e!441221))))

(declare-fun arrayContainsKey!0 (array!43161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794730 (= res!539415 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68420 res!539414) b!794722))

(assert (= (and b!794722 res!539418) b!794729))

(assert (= (and b!794729 res!539409) b!794725))

(assert (= (and b!794725 res!539419) b!794730))

(assert (= (and b!794730 res!539415) b!794723))

(assert (= (and b!794723 res!539412) b!794720))

(assert (= (and b!794720 res!539410) b!794724))

(assert (= (and b!794724 res!539411) b!794728))

(assert (= (and b!794728 res!539416) b!794726))

(assert (= (and b!794726 res!539413) b!794721))

(assert (= (and b!794721 res!539417) b!794727))

(declare-fun m!735387 () Bool)

(assert (=> b!794729 m!735387))

(assert (=> b!794729 m!735387))

(declare-fun m!735389 () Bool)

(assert (=> b!794729 m!735389))

(declare-fun m!735391 () Bool)

(assert (=> start!68420 m!735391))

(declare-fun m!735393 () Bool)

(assert (=> start!68420 m!735393))

(declare-fun m!735395 () Bool)

(assert (=> b!794730 m!735395))

(declare-fun m!735397 () Bool)

(assert (=> b!794725 m!735397))

(assert (=> b!794721 m!735387))

(assert (=> b!794721 m!735387))

(declare-fun m!735399 () Bool)

(assert (=> b!794721 m!735399))

(assert (=> b!794721 m!735387))

(declare-fun m!735401 () Bool)

(assert (=> b!794721 m!735401))

(declare-fun m!735403 () Bool)

(assert (=> b!794728 m!735403))

(declare-fun m!735405 () Bool)

(assert (=> b!794728 m!735405))

(declare-fun m!735407 () Bool)

(assert (=> b!794724 m!735407))

(declare-fun m!735409 () Bool)

(assert (=> b!794720 m!735409))

(declare-fun m!735411 () Bool)

(assert (=> b!794726 m!735411))

(declare-fun m!735413 () Bool)

(assert (=> b!794726 m!735413))

(declare-fun m!735415 () Bool)

(assert (=> b!794726 m!735415))

(declare-fun m!735417 () Bool)

(assert (=> b!794726 m!735417))

(declare-fun m!735419 () Bool)

(assert (=> b!794723 m!735419))

(push 1)

(assert (not b!794724))

(assert (not b!794725))

(assert (not b!794720))

(assert (not b!794730))

(assert (not b!794729))

(assert (not b!794723))

(assert (not b!794721))

(assert (not b!794726))

(assert (not start!68420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

