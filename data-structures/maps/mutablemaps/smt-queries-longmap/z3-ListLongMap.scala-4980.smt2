; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68412 () Bool)

(assert start!68412)

(declare-fun b!794592 () Bool)

(declare-fun res!539288 () Bool)

(declare-fun e!441173 () Bool)

(assert (=> b!794592 (=> (not res!539288) (not e!441173))))

(declare-datatypes ((array!43153 0))(
  ( (array!43154 (arr!20653 (Array (_ BitVec 32) (_ BitVec 64))) (size!21074 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43153)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794592 (= res!539288 (validKeyInArray!0 (select (arr!20653 a!3170) j!153)))))

(declare-fun b!794593 () Bool)

(declare-fun res!539289 () Bool)

(declare-fun e!441175 () Bool)

(assert (=> b!794593 (=> (not res!539289) (not e!441175))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794593 (= res!539289 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21074 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20653 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21074 a!3170)) (= (select (arr!20653 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794594 () Bool)

(declare-fun res!539284 () Bool)

(assert (=> b!794594 (=> (not res!539284) (not e!441175))))

(declare-datatypes ((List!14669 0))(
  ( (Nil!14666) (Cons!14665 (h!15794 (_ BitVec 64)) (t!20992 List!14669)) )
))
(declare-fun arrayNoDuplicates!0 (array!43153 (_ BitVec 32) List!14669) Bool)

(assert (=> b!794594 (= res!539284 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14666))))

(declare-fun res!539285 () Bool)

(assert (=> start!68412 (=> (not res!539285) (not e!441173))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68412 (= res!539285 (validMask!0 mask!3266))))

(assert (=> start!68412 e!441173))

(assert (=> start!68412 true))

(declare-fun array_inv!16427 (array!43153) Bool)

(assert (=> start!68412 (array_inv!16427 a!3170)))

(declare-fun b!794595 () Bool)

(assert (=> b!794595 (= e!441173 e!441175)))

(declare-fun res!539287 () Bool)

(assert (=> b!794595 (=> (not res!539287) (not e!441175))))

(declare-datatypes ((SeekEntryResult!8251 0))(
  ( (MissingZero!8251 (index!35371 (_ BitVec 32))) (Found!8251 (index!35372 (_ BitVec 32))) (Intermediate!8251 (undefined!9063 Bool) (index!35373 (_ BitVec 32)) (x!66322 (_ BitVec 32))) (Undefined!8251) (MissingVacant!8251 (index!35374 (_ BitVec 32))) )
))
(declare-fun lt!354225 () SeekEntryResult!8251)

(assert (=> b!794595 (= res!539287 (or (= lt!354225 (MissingZero!8251 i!1163)) (= lt!354225 (MissingVacant!8251 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43153 (_ BitVec 32)) SeekEntryResult!8251)

(assert (=> b!794595 (= lt!354225 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794596 () Bool)

(declare-fun res!539283 () Bool)

(assert (=> b!794596 (=> (not res!539283) (not e!441175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43153 (_ BitVec 32)) Bool)

(assert (=> b!794596 (= res!539283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794597 () Bool)

(declare-fun res!539281 () Bool)

(assert (=> b!794597 (=> (not res!539281) (not e!441173))))

(assert (=> b!794597 (= res!539281 (and (= (size!21074 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21074 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21074 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794598 () Bool)

(declare-fun res!539290 () Bool)

(assert (=> b!794598 (=> (not res!539290) (not e!441173))))

(assert (=> b!794598 (= res!539290 (validKeyInArray!0 k0!2044))))

(declare-fun b!794599 () Bool)

(declare-fun e!441172 () Bool)

(assert (=> b!794599 (= e!441172 false)))

(declare-fun lt!354223 () SeekEntryResult!8251)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43153 (_ BitVec 32)) SeekEntryResult!8251)

(assert (=> b!794599 (= lt!354223 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20653 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354226 () SeekEntryResult!8251)

(assert (=> b!794599 (= lt!354226 (seekEntryOrOpen!0 (select (arr!20653 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794600 () Bool)

(assert (=> b!794600 (= e!441175 e!441172)))

(declare-fun res!539286 () Bool)

(assert (=> b!794600 (=> (not res!539286) (not e!441172))))

(declare-fun lt!354224 () (_ BitVec 64))

(declare-fun lt!354222 () array!43153)

(assert (=> b!794600 (= res!539286 (= (seekEntryOrOpen!0 lt!354224 lt!354222 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354224 lt!354222 mask!3266)))))

(assert (=> b!794600 (= lt!354224 (select (store (arr!20653 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794600 (= lt!354222 (array!43154 (store (arr!20653 a!3170) i!1163 k0!2044) (size!21074 a!3170)))))

(declare-fun b!794601 () Bool)

(declare-fun res!539282 () Bool)

(assert (=> b!794601 (=> (not res!539282) (not e!441173))))

(declare-fun arrayContainsKey!0 (array!43153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794601 (= res!539282 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68412 res!539285) b!794597))

(assert (= (and b!794597 res!539281) b!794592))

(assert (= (and b!794592 res!539288) b!794598))

(assert (= (and b!794598 res!539290) b!794601))

(assert (= (and b!794601 res!539282) b!794595))

(assert (= (and b!794595 res!539287) b!794596))

(assert (= (and b!794596 res!539283) b!794594))

(assert (= (and b!794594 res!539284) b!794593))

(assert (= (and b!794593 res!539289) b!794600))

(assert (= (and b!794600 res!539286) b!794599))

(declare-fun m!735251 () Bool)

(assert (=> b!794594 m!735251))

(declare-fun m!735253 () Bool)

(assert (=> b!794595 m!735253))

(declare-fun m!735255 () Bool)

(assert (=> b!794593 m!735255))

(declare-fun m!735257 () Bool)

(assert (=> b!794593 m!735257))

(declare-fun m!735259 () Bool)

(assert (=> b!794598 m!735259))

(declare-fun m!735261 () Bool)

(assert (=> b!794600 m!735261))

(declare-fun m!735263 () Bool)

(assert (=> b!794600 m!735263))

(declare-fun m!735265 () Bool)

(assert (=> b!794600 m!735265))

(declare-fun m!735267 () Bool)

(assert (=> b!794600 m!735267))

(declare-fun m!735269 () Bool)

(assert (=> b!794596 m!735269))

(declare-fun m!735271 () Bool)

(assert (=> start!68412 m!735271))

(declare-fun m!735273 () Bool)

(assert (=> start!68412 m!735273))

(declare-fun m!735275 () Bool)

(assert (=> b!794599 m!735275))

(assert (=> b!794599 m!735275))

(declare-fun m!735277 () Bool)

(assert (=> b!794599 m!735277))

(assert (=> b!794599 m!735275))

(declare-fun m!735279 () Bool)

(assert (=> b!794599 m!735279))

(assert (=> b!794592 m!735275))

(assert (=> b!794592 m!735275))

(declare-fun m!735281 () Bool)

(assert (=> b!794592 m!735281))

(declare-fun m!735283 () Bool)

(assert (=> b!794601 m!735283))

(check-sat (not b!794595) (not b!794599) (not b!794601) (not b!794600) (not b!794592) (not b!794598) (not b!794596) (not b!794594) (not start!68412))
(check-sat)
