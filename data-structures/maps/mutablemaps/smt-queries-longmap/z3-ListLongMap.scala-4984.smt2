; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68436 () Bool)

(assert start!68436)

(declare-fun res!539668 () Bool)

(declare-fun e!441317 () Bool)

(assert (=> start!68436 (=> (not res!539668) (not e!441317))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68436 (= res!539668 (validMask!0 mask!3266))))

(assert (=> start!68436 e!441317))

(assert (=> start!68436 true))

(declare-datatypes ((array!43177 0))(
  ( (array!43178 (arr!20665 (Array (_ BitVec 32) (_ BitVec 64))) (size!21086 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43177)

(declare-fun array_inv!16439 (array!43177) Bool)

(assert (=> start!68436 (array_inv!16439 a!3170)))

(declare-fun b!794970 () Bool)

(declare-fun res!539667 () Bool)

(assert (=> b!794970 (=> (not res!539667) (not e!441317))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794970 (= res!539667 (validKeyInArray!0 k0!2044))))

(declare-fun b!794971 () Bool)

(declare-fun res!539666 () Bool)

(assert (=> b!794971 (=> (not res!539666) (not e!441317))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794971 (= res!539666 (and (= (size!21086 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21086 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21086 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794972 () Bool)

(declare-fun res!539665 () Bool)

(declare-fun e!441316 () Bool)

(assert (=> b!794972 (=> (not res!539665) (not e!441316))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794972 (= res!539665 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21086 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20665 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21086 a!3170)) (= (select (arr!20665 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794973 () Bool)

(declare-fun res!539661 () Bool)

(assert (=> b!794973 (=> (not res!539661) (not e!441317))))

(assert (=> b!794973 (= res!539661 (validKeyInArray!0 (select (arr!20665 a!3170) j!153)))))

(declare-fun b!794974 () Bool)

(declare-fun res!539659 () Bool)

(assert (=> b!794974 (=> (not res!539659) (not e!441316))))

(declare-datatypes ((List!14681 0))(
  ( (Nil!14678) (Cons!14677 (h!15806 (_ BitVec 64)) (t!21004 List!14681)) )
))
(declare-fun arrayNoDuplicates!0 (array!43177 (_ BitVec 32) List!14681) Bool)

(assert (=> b!794974 (= res!539659 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14678))))

(declare-fun b!794975 () Bool)

(declare-fun res!539660 () Bool)

(assert (=> b!794975 (=> (not res!539660) (not e!441317))))

(declare-fun arrayContainsKey!0 (array!43177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794975 (= res!539660 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794976 () Bool)

(declare-fun e!441319 () Bool)

(assert (=> b!794976 (= e!441316 e!441319)))

(declare-fun res!539663 () Bool)

(assert (=> b!794976 (=> (not res!539663) (not e!441319))))

(declare-fun lt!354367 () array!43177)

(declare-fun lt!354370 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8263 0))(
  ( (MissingZero!8263 (index!35419 (_ BitVec 32))) (Found!8263 (index!35420 (_ BitVec 32))) (Intermediate!8263 (undefined!9075 Bool) (index!35421 (_ BitVec 32)) (x!66366 (_ BitVec 32))) (Undefined!8263) (MissingVacant!8263 (index!35422 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43177 (_ BitVec 32)) SeekEntryResult!8263)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43177 (_ BitVec 32)) SeekEntryResult!8263)

(assert (=> b!794976 (= res!539663 (= (seekEntryOrOpen!0 lt!354370 lt!354367 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354370 lt!354367 mask!3266)))))

(assert (=> b!794976 (= lt!354370 (select (store (arr!20665 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794976 (= lt!354367 (array!43178 (store (arr!20665 a!3170) i!1163 k0!2044) (size!21086 a!3170)))))

(declare-fun b!794977 () Bool)

(assert (=> b!794977 (= e!441317 e!441316)))

(declare-fun res!539662 () Bool)

(assert (=> b!794977 (=> (not res!539662) (not e!441316))))

(declare-fun lt!354366 () SeekEntryResult!8263)

(assert (=> b!794977 (= res!539662 (or (= lt!354366 (MissingZero!8263 i!1163)) (= lt!354366 (MissingVacant!8263 i!1163))))))

(assert (=> b!794977 (= lt!354366 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794978 () Bool)

(assert (=> b!794978 (= e!441319 false)))

(declare-fun lt!354368 () SeekEntryResult!8263)

(assert (=> b!794978 (= lt!354368 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20665 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354369 () SeekEntryResult!8263)

(assert (=> b!794978 (= lt!354369 (seekEntryOrOpen!0 (select (arr!20665 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794979 () Bool)

(declare-fun res!539664 () Bool)

(assert (=> b!794979 (=> (not res!539664) (not e!441316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43177 (_ BitVec 32)) Bool)

(assert (=> b!794979 (= res!539664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68436 res!539668) b!794971))

(assert (= (and b!794971 res!539666) b!794973))

(assert (= (and b!794973 res!539661) b!794970))

(assert (= (and b!794970 res!539667) b!794975))

(assert (= (and b!794975 res!539660) b!794977))

(assert (= (and b!794977 res!539662) b!794979))

(assert (= (and b!794979 res!539664) b!794974))

(assert (= (and b!794974 res!539659) b!794972))

(assert (= (and b!794972 res!539665) b!794976))

(assert (= (and b!794976 res!539663) b!794978))

(declare-fun m!735659 () Bool)

(assert (=> b!794973 m!735659))

(assert (=> b!794973 m!735659))

(declare-fun m!735661 () Bool)

(assert (=> b!794973 m!735661))

(declare-fun m!735663 () Bool)

(assert (=> b!794977 m!735663))

(declare-fun m!735665 () Bool)

(assert (=> start!68436 m!735665))

(declare-fun m!735667 () Bool)

(assert (=> start!68436 m!735667))

(declare-fun m!735669 () Bool)

(assert (=> b!794975 m!735669))

(declare-fun m!735671 () Bool)

(assert (=> b!794970 m!735671))

(declare-fun m!735673 () Bool)

(assert (=> b!794974 m!735673))

(declare-fun m!735675 () Bool)

(assert (=> b!794979 m!735675))

(declare-fun m!735677 () Bool)

(assert (=> b!794976 m!735677))

(declare-fun m!735679 () Bool)

(assert (=> b!794976 m!735679))

(declare-fun m!735681 () Bool)

(assert (=> b!794976 m!735681))

(declare-fun m!735683 () Bool)

(assert (=> b!794976 m!735683))

(declare-fun m!735685 () Bool)

(assert (=> b!794972 m!735685))

(declare-fun m!735687 () Bool)

(assert (=> b!794972 m!735687))

(assert (=> b!794978 m!735659))

(assert (=> b!794978 m!735659))

(declare-fun m!735689 () Bool)

(assert (=> b!794978 m!735689))

(assert (=> b!794978 m!735659))

(declare-fun m!735691 () Bool)

(assert (=> b!794978 m!735691))

(check-sat (not b!794975) (not b!794977) (not b!794979) (not b!794976) (not b!794973) (not b!794978) (not b!794974) (not b!794970) (not start!68436))
(check-sat)
