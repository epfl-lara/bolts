; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68430 () Bool)

(assert start!68430)

(declare-fun b!794876 () Bool)

(declare-fun res!539568 () Bool)

(declare-fun e!441280 () Bool)

(assert (=> b!794876 (=> (not res!539568) (not e!441280))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43171 0))(
  ( (array!43172 (arr!20662 (Array (_ BitVec 32) (_ BitVec 64))) (size!21083 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43171)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794876 (= res!539568 (and (= (size!21083 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21083 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21083 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794877 () Bool)

(declare-fun res!539569 () Bool)

(declare-fun e!441281 () Bool)

(assert (=> b!794877 (=> (not res!539569) (not e!441281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43171 (_ BitVec 32)) Bool)

(assert (=> b!794877 (= res!539569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun e!441283 () Bool)

(declare-fun b!794878 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794878 (= e!441283 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun b!794879 () Bool)

(declare-fun res!539575 () Bool)

(assert (=> b!794879 (=> (not res!539575) (not e!441280))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794879 (= res!539575 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794880 () Bool)

(declare-fun res!539571 () Bool)

(assert (=> b!794880 (=> (not res!539571) (not e!441280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794880 (= res!539571 (validKeyInArray!0 k0!2044))))

(declare-fun b!794881 () Bool)

(declare-fun res!539565 () Bool)

(assert (=> b!794881 (=> (not res!539565) (not e!441280))))

(assert (=> b!794881 (= res!539565 (validKeyInArray!0 (select (arr!20662 a!3170) j!153)))))

(declare-fun res!539570 () Bool)

(assert (=> start!68430 (=> (not res!539570) (not e!441280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68430 (= res!539570 (validMask!0 mask!3266))))

(assert (=> start!68430 e!441280))

(assert (=> start!68430 true))

(declare-fun array_inv!16436 (array!43171) Bool)

(assert (=> start!68430 (array_inv!16436 a!3170)))

(declare-fun b!794882 () Bool)

(declare-fun res!539574 () Bool)

(assert (=> b!794882 (=> (not res!539574) (not e!441283))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8260 0))(
  ( (MissingZero!8260 (index!35407 (_ BitVec 32))) (Found!8260 (index!35408 (_ BitVec 32))) (Intermediate!8260 (undefined!9072 Bool) (index!35409 (_ BitVec 32)) (x!66355 (_ BitVec 32))) (Undefined!8260) (MissingVacant!8260 (index!35410 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43171 (_ BitVec 32)) SeekEntryResult!8260)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43171 (_ BitVec 32)) SeekEntryResult!8260)

(assert (=> b!794882 (= res!539574 (= (seekEntryOrOpen!0 (select (arr!20662 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20662 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794883 () Bool)

(declare-fun res!539566 () Bool)

(assert (=> b!794883 (=> (not res!539566) (not e!441281))))

(declare-datatypes ((List!14678 0))(
  ( (Nil!14675) (Cons!14674 (h!15803 (_ BitVec 64)) (t!21001 List!14678)) )
))
(declare-fun arrayNoDuplicates!0 (array!43171 (_ BitVec 32) List!14678) Bool)

(assert (=> b!794883 (= res!539566 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14675))))

(declare-fun b!794884 () Bool)

(declare-fun res!539567 () Bool)

(assert (=> b!794884 (=> (not res!539567) (not e!441281))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!794884 (= res!539567 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21083 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20662 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21083 a!3170)) (= (select (arr!20662 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794885 () Bool)

(assert (=> b!794885 (= e!441281 e!441283)))

(declare-fun res!539573 () Bool)

(assert (=> b!794885 (=> (not res!539573) (not e!441283))))

(declare-fun lt!354329 () array!43171)

(declare-fun lt!354331 () (_ BitVec 64))

(assert (=> b!794885 (= res!539573 (= (seekEntryOrOpen!0 lt!354331 lt!354329 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354331 lt!354329 mask!3266)))))

(assert (=> b!794885 (= lt!354331 (select (store (arr!20662 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794885 (= lt!354329 (array!43172 (store (arr!20662 a!3170) i!1163 k0!2044) (size!21083 a!3170)))))

(declare-fun b!794886 () Bool)

(assert (=> b!794886 (= e!441280 e!441281)))

(declare-fun res!539572 () Bool)

(assert (=> b!794886 (=> (not res!539572) (not e!441281))))

(declare-fun lt!354330 () SeekEntryResult!8260)

(assert (=> b!794886 (= res!539572 (or (= lt!354330 (MissingZero!8260 i!1163)) (= lt!354330 (MissingVacant!8260 i!1163))))))

(assert (=> b!794886 (= lt!354330 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68430 res!539570) b!794876))

(assert (= (and b!794876 res!539568) b!794881))

(assert (= (and b!794881 res!539565) b!794880))

(assert (= (and b!794880 res!539571) b!794879))

(assert (= (and b!794879 res!539575) b!794886))

(assert (= (and b!794886 res!539572) b!794877))

(assert (= (and b!794877 res!539569) b!794883))

(assert (= (and b!794883 res!539566) b!794884))

(assert (= (and b!794884 res!539567) b!794885))

(assert (= (and b!794885 res!539573) b!794882))

(assert (= (and b!794882 res!539574) b!794878))

(declare-fun m!735557 () Bool)

(assert (=> b!794877 m!735557))

(declare-fun m!735559 () Bool)

(assert (=> b!794884 m!735559))

(declare-fun m!735561 () Bool)

(assert (=> b!794884 m!735561))

(declare-fun m!735563 () Bool)

(assert (=> start!68430 m!735563))

(declare-fun m!735565 () Bool)

(assert (=> start!68430 m!735565))

(declare-fun m!735567 () Bool)

(assert (=> b!794882 m!735567))

(assert (=> b!794882 m!735567))

(declare-fun m!735569 () Bool)

(assert (=> b!794882 m!735569))

(assert (=> b!794882 m!735567))

(declare-fun m!735571 () Bool)

(assert (=> b!794882 m!735571))

(declare-fun m!735573 () Bool)

(assert (=> b!794883 m!735573))

(declare-fun m!735575 () Bool)

(assert (=> b!794885 m!735575))

(declare-fun m!735577 () Bool)

(assert (=> b!794885 m!735577))

(declare-fun m!735579 () Bool)

(assert (=> b!794885 m!735579))

(declare-fun m!735581 () Bool)

(assert (=> b!794885 m!735581))

(declare-fun m!735583 () Bool)

(assert (=> b!794886 m!735583))

(declare-fun m!735585 () Bool)

(assert (=> b!794879 m!735585))

(assert (=> b!794881 m!735567))

(assert (=> b!794881 m!735567))

(declare-fun m!735587 () Bool)

(assert (=> b!794881 m!735587))

(declare-fun m!735589 () Bool)

(assert (=> b!794880 m!735589))

(check-sat (not b!794881) (not b!794882) (not b!794883) (not b!794886) (not b!794885) (not b!794880) (not b!794879) (not start!68430) (not b!794877))
(check-sat)
