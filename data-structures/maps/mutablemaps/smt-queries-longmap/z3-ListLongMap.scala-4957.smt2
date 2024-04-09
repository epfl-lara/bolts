; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68274 () Bool)

(assert start!68274)

(declare-fun b!792751 () Bool)

(declare-fun res!537446 () Bool)

(declare-fun e!440494 () Bool)

(assert (=> b!792751 (=> (not res!537446) (not e!440494))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43015 0))(
  ( (array!43016 (arr!20584 (Array (_ BitVec 32) (_ BitVec 64))) (size!21005 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43015)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792751 (= res!537446 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21005 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20584 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21005 a!3170)) (= (select (arr!20584 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792752 () Bool)

(declare-fun e!440493 () Bool)

(assert (=> b!792752 (= e!440493 e!440494)))

(declare-fun res!537443 () Bool)

(assert (=> b!792752 (=> (not res!537443) (not e!440494))))

(declare-datatypes ((SeekEntryResult!8182 0))(
  ( (MissingZero!8182 (index!35095 (_ BitVec 32))) (Found!8182 (index!35096 (_ BitVec 32))) (Intermediate!8182 (undefined!8994 Bool) (index!35097 (_ BitVec 32)) (x!66069 (_ BitVec 32))) (Undefined!8182) (MissingVacant!8182 (index!35098 (_ BitVec 32))) )
))
(declare-fun lt!353554 () SeekEntryResult!8182)

(assert (=> b!792752 (= res!537443 (or (= lt!353554 (MissingZero!8182 i!1163)) (= lt!353554 (MissingVacant!8182 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43015 (_ BitVec 32)) SeekEntryResult!8182)

(assert (=> b!792752 (= lt!353554 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!537447 () Bool)

(assert (=> start!68274 (=> (not res!537447) (not e!440493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68274 (= res!537447 (validMask!0 mask!3266))))

(assert (=> start!68274 e!440493))

(assert (=> start!68274 true))

(declare-fun array_inv!16358 (array!43015) Bool)

(assert (=> start!68274 (array_inv!16358 a!3170)))

(declare-fun b!792753 () Bool)

(declare-fun res!537445 () Bool)

(assert (=> b!792753 (=> (not res!537445) (not e!440493))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792753 (= res!537445 (and (= (size!21005 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21005 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21005 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792754 () Bool)

(declare-fun res!537444 () Bool)

(assert (=> b!792754 (=> (not res!537444) (not e!440493))))

(declare-fun arrayContainsKey!0 (array!43015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792754 (= res!537444 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792755 () Bool)

(declare-fun res!537440 () Bool)

(assert (=> b!792755 (=> (not res!537440) (not e!440494))))

(declare-datatypes ((List!14600 0))(
  ( (Nil!14597) (Cons!14596 (h!15725 (_ BitVec 64)) (t!20923 List!14600)) )
))
(declare-fun arrayNoDuplicates!0 (array!43015 (_ BitVec 32) List!14600) Bool)

(assert (=> b!792755 (= res!537440 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14597))))

(declare-fun b!792756 () Bool)

(declare-fun res!537441 () Bool)

(assert (=> b!792756 (=> (not res!537441) (not e!440494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43015 (_ BitVec 32)) Bool)

(assert (=> b!792756 (= res!537441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792757 () Bool)

(declare-fun res!537442 () Bool)

(assert (=> b!792757 (=> (not res!537442) (not e!440493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792757 (= res!537442 (validKeyInArray!0 k0!2044))))

(declare-fun b!792758 () Bool)

(assert (=> b!792758 (= e!440494 (not (validKeyInArray!0 (select (store (arr!20584 a!3170) i!1163 k0!2044) j!153))))))

(declare-fun b!792759 () Bool)

(declare-fun res!537448 () Bool)

(assert (=> b!792759 (=> (not res!537448) (not e!440493))))

(assert (=> b!792759 (= res!537448 (validKeyInArray!0 (select (arr!20584 a!3170) j!153)))))

(assert (= (and start!68274 res!537447) b!792753))

(assert (= (and b!792753 res!537445) b!792759))

(assert (= (and b!792759 res!537448) b!792757))

(assert (= (and b!792757 res!537442) b!792754))

(assert (= (and b!792754 res!537444) b!792752))

(assert (= (and b!792752 res!537443) b!792756))

(assert (= (and b!792756 res!537441) b!792755))

(assert (= (and b!792755 res!537440) b!792751))

(assert (= (and b!792751 res!537446) b!792758))

(declare-fun m!733349 () Bool)

(assert (=> b!792758 m!733349))

(declare-fun m!733351 () Bool)

(assert (=> b!792758 m!733351))

(assert (=> b!792758 m!733351))

(declare-fun m!733353 () Bool)

(assert (=> b!792758 m!733353))

(declare-fun m!733355 () Bool)

(assert (=> b!792756 m!733355))

(declare-fun m!733357 () Bool)

(assert (=> b!792755 m!733357))

(declare-fun m!733359 () Bool)

(assert (=> start!68274 m!733359))

(declare-fun m!733361 () Bool)

(assert (=> start!68274 m!733361))

(declare-fun m!733363 () Bool)

(assert (=> b!792754 m!733363))

(declare-fun m!733365 () Bool)

(assert (=> b!792751 m!733365))

(declare-fun m!733367 () Bool)

(assert (=> b!792751 m!733367))

(declare-fun m!733369 () Bool)

(assert (=> b!792759 m!733369))

(assert (=> b!792759 m!733369))

(declare-fun m!733371 () Bool)

(assert (=> b!792759 m!733371))

(declare-fun m!733373 () Bool)

(assert (=> b!792752 m!733373))

(declare-fun m!733375 () Bool)

(assert (=> b!792757 m!733375))

(check-sat (not b!792756) (not b!792754) (not b!792759) (not b!792755) (not b!792757) (not b!792752) (not start!68274) (not b!792758))
(check-sat)
