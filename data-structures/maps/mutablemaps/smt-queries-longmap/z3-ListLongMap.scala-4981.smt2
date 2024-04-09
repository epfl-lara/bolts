; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68418 () Bool)

(assert start!68418)

(declare-fun b!794687 () Bool)

(declare-fun res!539380 () Bool)

(declare-fun e!441210 () Bool)

(assert (=> b!794687 (=> (not res!539380) (not e!441210))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794687 (= res!539380 (validKeyInArray!0 k0!2044))))

(declare-fun b!794688 () Bool)

(declare-fun res!539386 () Bool)

(assert (=> b!794688 (=> (not res!539386) (not e!441210))))

(declare-datatypes ((array!43159 0))(
  ( (array!43160 (arr!20656 (Array (_ BitVec 32) (_ BitVec 64))) (size!21077 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43159)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794688 (= res!539386 (validKeyInArray!0 (select (arr!20656 a!3170) j!153)))))

(declare-fun b!794689 () Bool)

(declare-fun res!539376 () Bool)

(assert (=> b!794689 (=> (not res!539376) (not e!441210))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794689 (= res!539376 (and (= (size!21077 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21077 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21077 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794690 () Bool)

(declare-fun e!441208 () Bool)

(declare-fun e!441211 () Bool)

(assert (=> b!794690 (= e!441208 e!441211)))

(declare-fun res!539382 () Bool)

(assert (=> b!794690 (=> (not res!539382) (not e!441211))))

(declare-fun lt!354257 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354258 () array!43159)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8254 0))(
  ( (MissingZero!8254 (index!35383 (_ BitVec 32))) (Found!8254 (index!35384 (_ BitVec 32))) (Intermediate!8254 (undefined!9066 Bool) (index!35385 (_ BitVec 32)) (x!66333 (_ BitVec 32))) (Undefined!8254) (MissingVacant!8254 (index!35386 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43159 (_ BitVec 32)) SeekEntryResult!8254)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43159 (_ BitVec 32)) SeekEntryResult!8254)

(assert (=> b!794690 (= res!539382 (= (seekEntryOrOpen!0 lt!354257 lt!354258 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354257 lt!354258 mask!3266)))))

(assert (=> b!794690 (= lt!354257 (select (store (arr!20656 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794690 (= lt!354258 (array!43160 (store (arr!20656 a!3170) i!1163 k0!2044) (size!21077 a!3170)))))

(declare-fun b!794691 () Bool)

(declare-fun res!539378 () Bool)

(assert (=> b!794691 (=> (not res!539378) (not e!441208))))

(declare-datatypes ((List!14672 0))(
  ( (Nil!14669) (Cons!14668 (h!15797 (_ BitVec 64)) (t!20995 List!14672)) )
))
(declare-fun arrayNoDuplicates!0 (array!43159 (_ BitVec 32) List!14672) Bool)

(assert (=> b!794691 (= res!539378 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14669))))

(declare-fun b!794692 () Bool)

(declare-fun res!539377 () Bool)

(assert (=> b!794692 (=> (not res!539377) (not e!441208))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794692 (= res!539377 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21077 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20656 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21077 a!3170)) (= (select (arr!20656 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794693 () Bool)

(assert (=> b!794693 (= e!441210 e!441208)))

(declare-fun res!539383 () Bool)

(assert (=> b!794693 (=> (not res!539383) (not e!441208))))

(declare-fun lt!354259 () SeekEntryResult!8254)

(assert (=> b!794693 (= res!539383 (or (= lt!354259 (MissingZero!8254 i!1163)) (= lt!354259 (MissingVacant!8254 i!1163))))))

(assert (=> b!794693 (= lt!354259 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794695 () Bool)

(assert (=> b!794695 (= e!441211 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!794696 () Bool)

(declare-fun res!539385 () Bool)

(assert (=> b!794696 (=> (not res!539385) (not e!441210))))

(declare-fun arrayContainsKey!0 (array!43159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794696 (= res!539385 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794697 () Bool)

(declare-fun res!539384 () Bool)

(assert (=> b!794697 (=> (not res!539384) (not e!441211))))

(assert (=> b!794697 (= res!539384 (= (seekEntryOrOpen!0 (select (arr!20656 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20656 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794694 () Bool)

(declare-fun res!539379 () Bool)

(assert (=> b!794694 (=> (not res!539379) (not e!441208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43159 (_ BitVec 32)) Bool)

(assert (=> b!794694 (= res!539379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!539381 () Bool)

(assert (=> start!68418 (=> (not res!539381) (not e!441210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68418 (= res!539381 (validMask!0 mask!3266))))

(assert (=> start!68418 e!441210))

(assert (=> start!68418 true))

(declare-fun array_inv!16430 (array!43159) Bool)

(assert (=> start!68418 (array_inv!16430 a!3170)))

(assert (= (and start!68418 res!539381) b!794689))

(assert (= (and b!794689 res!539376) b!794688))

(assert (= (and b!794688 res!539386) b!794687))

(assert (= (and b!794687 res!539380) b!794696))

(assert (= (and b!794696 res!539385) b!794693))

(assert (= (and b!794693 res!539383) b!794694))

(assert (= (and b!794694 res!539379) b!794691))

(assert (= (and b!794691 res!539378) b!794692))

(assert (= (and b!794692 res!539377) b!794690))

(assert (= (and b!794690 res!539382) b!794697))

(assert (= (and b!794697 res!539384) b!794695))

(declare-fun m!735353 () Bool)

(assert (=> start!68418 m!735353))

(declare-fun m!735355 () Bool)

(assert (=> start!68418 m!735355))

(declare-fun m!735357 () Bool)

(assert (=> b!794692 m!735357))

(declare-fun m!735359 () Bool)

(assert (=> b!794692 m!735359))

(declare-fun m!735361 () Bool)

(assert (=> b!794696 m!735361))

(declare-fun m!735363 () Bool)

(assert (=> b!794688 m!735363))

(assert (=> b!794688 m!735363))

(declare-fun m!735365 () Bool)

(assert (=> b!794688 m!735365))

(declare-fun m!735367 () Bool)

(assert (=> b!794690 m!735367))

(declare-fun m!735369 () Bool)

(assert (=> b!794690 m!735369))

(declare-fun m!735371 () Bool)

(assert (=> b!794690 m!735371))

(declare-fun m!735373 () Bool)

(assert (=> b!794690 m!735373))

(declare-fun m!735375 () Bool)

(assert (=> b!794693 m!735375))

(assert (=> b!794697 m!735363))

(assert (=> b!794697 m!735363))

(declare-fun m!735377 () Bool)

(assert (=> b!794697 m!735377))

(assert (=> b!794697 m!735363))

(declare-fun m!735379 () Bool)

(assert (=> b!794697 m!735379))

(declare-fun m!735381 () Bool)

(assert (=> b!794691 m!735381))

(declare-fun m!735383 () Bool)

(assert (=> b!794687 m!735383))

(declare-fun m!735385 () Bool)

(assert (=> b!794694 m!735385))

(check-sat (not b!794696) (not b!794694) (not start!68418) (not b!794690) (not b!794697) (not b!794691) (not b!794687) (not b!794693) (not b!794688))
(check-sat)
