; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68432 () Bool)

(assert start!68432)

(declare-fun b!794909 () Bool)

(declare-fun res!539603 () Bool)

(declare-fun e!441293 () Bool)

(assert (=> b!794909 (=> (not res!539603) (not e!441293))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43173 0))(
  ( (array!43174 (arr!20663 (Array (_ BitVec 32) (_ BitVec 64))) (size!21084 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43173)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794909 (= res!539603 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21084 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20663 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21084 a!3170)) (= (select (arr!20663 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794910 () Bool)

(declare-fun res!539602 () Bool)

(declare-fun e!441294 () Bool)

(assert (=> b!794910 (=> (not res!539602) (not e!441294))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794910 (= res!539602 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun e!441295 () Bool)

(declare-fun b!794911 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794911 (= e!441295 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun b!794912 () Bool)

(declare-fun res!539601 () Bool)

(assert (=> b!794912 (=> (not res!539601) (not e!441293))))

(declare-datatypes ((List!14679 0))(
  ( (Nil!14676) (Cons!14675 (h!15804 (_ BitVec 64)) (t!21002 List!14679)) )
))
(declare-fun arrayNoDuplicates!0 (array!43173 (_ BitVec 32) List!14679) Bool)

(assert (=> b!794912 (= res!539601 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14676))))

(declare-fun b!794914 () Bool)

(declare-fun res!539607 () Bool)

(assert (=> b!794914 (=> (not res!539607) (not e!441293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43173 (_ BitVec 32)) Bool)

(assert (=> b!794914 (= res!539607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794915 () Bool)

(assert (=> b!794915 (= e!441294 e!441293)))

(declare-fun res!539600 () Bool)

(assert (=> b!794915 (=> (not res!539600) (not e!441293))))

(declare-datatypes ((SeekEntryResult!8261 0))(
  ( (MissingZero!8261 (index!35411 (_ BitVec 32))) (Found!8261 (index!35412 (_ BitVec 32))) (Intermediate!8261 (undefined!9073 Bool) (index!35413 (_ BitVec 32)) (x!66356 (_ BitVec 32))) (Undefined!8261) (MissingVacant!8261 (index!35414 (_ BitVec 32))) )
))
(declare-fun lt!354338 () SeekEntryResult!8261)

(assert (=> b!794915 (= res!539600 (or (= lt!354338 (MissingZero!8261 i!1163)) (= lt!354338 (MissingVacant!8261 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43173 (_ BitVec 32)) SeekEntryResult!8261)

(assert (=> b!794915 (= lt!354338 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794916 () Bool)

(assert (=> b!794916 (= e!441293 e!441295)))

(declare-fun res!539608 () Bool)

(assert (=> b!794916 (=> (not res!539608) (not e!441295))))

(declare-fun lt!354340 () array!43173)

(declare-fun lt!354339 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43173 (_ BitVec 32)) SeekEntryResult!8261)

(assert (=> b!794916 (= res!539608 (= (seekEntryOrOpen!0 lt!354339 lt!354340 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354339 lt!354340 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794916 (= lt!354339 (select (store (arr!20663 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794916 (= lt!354340 (array!43174 (store (arr!20663 a!3170) i!1163 k!2044) (size!21084 a!3170)))))

(declare-fun b!794917 () Bool)

(declare-fun res!539605 () Bool)

(assert (=> b!794917 (=> (not res!539605) (not e!441295))))

(assert (=> b!794917 (= res!539605 (= (seekEntryOrOpen!0 (select (arr!20663 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20663 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794918 () Bool)

(declare-fun res!539606 () Bool)

(assert (=> b!794918 (=> (not res!539606) (not e!441294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794918 (= res!539606 (validKeyInArray!0 (select (arr!20663 a!3170) j!153)))))

(declare-fun b!794919 () Bool)

(declare-fun res!539599 () Bool)

(assert (=> b!794919 (=> (not res!539599) (not e!441294))))

(assert (=> b!794919 (= res!539599 (and (= (size!21084 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21084 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21084 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!539598 () Bool)

(assert (=> start!68432 (=> (not res!539598) (not e!441294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68432 (= res!539598 (validMask!0 mask!3266))))

(assert (=> start!68432 e!441294))

(assert (=> start!68432 true))

(declare-fun array_inv!16437 (array!43173) Bool)

(assert (=> start!68432 (array_inv!16437 a!3170)))

(declare-fun b!794913 () Bool)

(declare-fun res!539604 () Bool)

(assert (=> b!794913 (=> (not res!539604) (not e!441294))))

(assert (=> b!794913 (= res!539604 (validKeyInArray!0 k!2044))))

(assert (= (and start!68432 res!539598) b!794919))

(assert (= (and b!794919 res!539599) b!794918))

(assert (= (and b!794918 res!539606) b!794913))

(assert (= (and b!794913 res!539604) b!794910))

(assert (= (and b!794910 res!539602) b!794915))

(assert (= (and b!794915 res!539600) b!794914))

(assert (= (and b!794914 res!539607) b!794912))

(assert (= (and b!794912 res!539601) b!794909))

(assert (= (and b!794909 res!539603) b!794916))

(assert (= (and b!794916 res!539608) b!794917))

(assert (= (and b!794917 res!539605) b!794911))

(declare-fun m!735591 () Bool)

(assert (=> b!794912 m!735591))

(declare-fun m!735593 () Bool)

(assert (=> b!794915 m!735593))

(declare-fun m!735595 () Bool)

(assert (=> b!794917 m!735595))

(assert (=> b!794917 m!735595))

(declare-fun m!735597 () Bool)

(assert (=> b!794917 m!735597))

(assert (=> b!794917 m!735595))

(declare-fun m!735599 () Bool)

(assert (=> b!794917 m!735599))

(declare-fun m!735601 () Bool)

(assert (=> b!794916 m!735601))

(declare-fun m!735603 () Bool)

(assert (=> b!794916 m!735603))

(declare-fun m!735605 () Bool)

(assert (=> b!794916 m!735605))

(declare-fun m!735607 () Bool)

(assert (=> b!794916 m!735607))

(declare-fun m!735609 () Bool)

(assert (=> start!68432 m!735609))

(declare-fun m!735611 () Bool)

(assert (=> start!68432 m!735611))

(declare-fun m!735613 () Bool)

(assert (=> b!794909 m!735613))

(declare-fun m!735615 () Bool)

(assert (=> b!794909 m!735615))

(declare-fun m!735617 () Bool)

(assert (=> b!794910 m!735617))

(declare-fun m!735619 () Bool)

(assert (=> b!794914 m!735619))

(declare-fun m!735621 () Bool)

(assert (=> b!794913 m!735621))

(assert (=> b!794918 m!735595))

(assert (=> b!794918 m!735595))

(declare-fun m!735623 () Bool)

(assert (=> b!794918 m!735623))

(push 1)

(assert (not b!794915))

(assert (not b!794910))

(assert (not b!794916))

(assert (not start!68432))

(assert (not b!794914))

(assert (not b!794917))

(assert (not b!794912))

(assert (not b!794913))

(assert (not b!794918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

