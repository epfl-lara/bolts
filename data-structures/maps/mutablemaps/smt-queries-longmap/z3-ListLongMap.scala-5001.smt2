; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68538 () Bool)

(assert start!68538)

(declare-fun b!796583 () Bool)

(declare-fun e!442013 () Bool)

(declare-fun e!442015 () Bool)

(assert (=> b!796583 (= e!442013 e!442015)))

(declare-fun res!541277 () Bool)

(assert (=> b!796583 (=> (not res!541277) (not e!442015))))

(declare-datatypes ((SeekEntryResult!8314 0))(
  ( (MissingZero!8314 (index!35623 (_ BitVec 32))) (Found!8314 (index!35624 (_ BitVec 32))) (Intermediate!8314 (undefined!9126 Bool) (index!35625 (_ BitVec 32)) (x!66553 (_ BitVec 32))) (Undefined!8314) (MissingVacant!8314 (index!35626 (_ BitVec 32))) )
))
(declare-fun lt!355271 () SeekEntryResult!8314)

(declare-datatypes ((array!43279 0))(
  ( (array!43280 (arr!20716 (Array (_ BitVec 32) (_ BitVec 64))) (size!21137 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43279)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!355269 () SeekEntryResult!8314)

(assert (=> b!796583 (= res!541277 (and (= lt!355269 lt!355271) (= lt!355271 (Found!8314 j!153)) (= (select (arr!20716 a!3170) index!1236) (select (arr!20716 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43279 (_ BitVec 32)) SeekEntryResult!8314)

(assert (=> b!796583 (= lt!355271 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20716 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43279 (_ BitVec 32)) SeekEntryResult!8314)

(assert (=> b!796583 (= lt!355269 (seekEntryOrOpen!0 (select (arr!20716 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796584 () Bool)

(declare-fun res!541276 () Bool)

(declare-fun e!442010 () Bool)

(assert (=> b!796584 (=> (not res!541276) (not e!442010))))

(declare-datatypes ((List!14732 0))(
  ( (Nil!14729) (Cons!14728 (h!15857 (_ BitVec 64)) (t!21055 List!14732)) )
))
(declare-fun arrayNoDuplicates!0 (array!43279 (_ BitVec 32) List!14732) Bool)

(assert (=> b!796584 (= res!541276 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14729))))

(declare-fun b!796585 () Bool)

(declare-fun e!442012 () Bool)

(assert (=> b!796585 (= e!442015 (not e!442012))))

(declare-fun res!541271 () Bool)

(assert (=> b!796585 (=> res!541271 e!442012)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796585 (= res!541271 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20716 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!355270 () SeekEntryResult!8314)

(assert (=> b!796585 (= lt!355270 (Found!8314 index!1236))))

(declare-fun b!796586 () Bool)

(declare-fun lt!355267 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796586 (= e!442012 (validKeyInArray!0 lt!355267))))

(declare-fun b!796587 () Bool)

(declare-fun res!541280 () Bool)

(declare-fun e!442011 () Bool)

(assert (=> b!796587 (=> (not res!541280) (not e!442011))))

(declare-fun arrayContainsKey!0 (array!43279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796587 (= res!541280 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796588 () Bool)

(declare-fun res!541281 () Bool)

(assert (=> b!796588 (=> (not res!541281) (not e!442010))))

(assert (=> b!796588 (= res!541281 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21137 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20716 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21137 a!3170)) (= (select (arr!20716 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796589 () Bool)

(declare-fun res!541275 () Bool)

(assert (=> b!796589 (=> (not res!541275) (not e!442011))))

(assert (=> b!796589 (= res!541275 (and (= (size!21137 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21137 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21137 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796590 () Bool)

(declare-fun res!541279 () Bool)

(assert (=> b!796590 (=> (not res!541279) (not e!442010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43279 (_ BitVec 32)) Bool)

(assert (=> b!796590 (= res!541279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796591 () Bool)

(assert (=> b!796591 (= e!442010 e!442013)))

(declare-fun res!541272 () Bool)

(assert (=> b!796591 (=> (not res!541272) (not e!442013))))

(declare-fun lt!355268 () SeekEntryResult!8314)

(assert (=> b!796591 (= res!541272 (= lt!355268 lt!355270))))

(declare-fun lt!355273 () array!43279)

(assert (=> b!796591 (= lt!355270 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355267 lt!355273 mask!3266))))

(assert (=> b!796591 (= lt!355268 (seekEntryOrOpen!0 lt!355267 lt!355273 mask!3266))))

(assert (=> b!796591 (= lt!355267 (select (store (arr!20716 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796591 (= lt!355273 (array!43280 (store (arr!20716 a!3170) i!1163 k0!2044) (size!21137 a!3170)))))

(declare-fun res!541274 () Bool)

(assert (=> start!68538 (=> (not res!541274) (not e!442011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68538 (= res!541274 (validMask!0 mask!3266))))

(assert (=> start!68538 e!442011))

(assert (=> start!68538 true))

(declare-fun array_inv!16490 (array!43279) Bool)

(assert (=> start!68538 (array_inv!16490 a!3170)))

(declare-fun b!796582 () Bool)

(declare-fun res!541282 () Bool)

(assert (=> b!796582 (=> (not res!541282) (not e!442011))))

(assert (=> b!796582 (= res!541282 (validKeyInArray!0 (select (arr!20716 a!3170) j!153)))))

(declare-fun b!796592 () Bool)

(declare-fun res!541278 () Bool)

(assert (=> b!796592 (=> (not res!541278) (not e!442011))))

(assert (=> b!796592 (= res!541278 (validKeyInArray!0 k0!2044))))

(declare-fun b!796593 () Bool)

(assert (=> b!796593 (= e!442011 e!442010)))

(declare-fun res!541273 () Bool)

(assert (=> b!796593 (=> (not res!541273) (not e!442010))))

(declare-fun lt!355272 () SeekEntryResult!8314)

(assert (=> b!796593 (= res!541273 (or (= lt!355272 (MissingZero!8314 i!1163)) (= lt!355272 (MissingVacant!8314 i!1163))))))

(assert (=> b!796593 (= lt!355272 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68538 res!541274) b!796589))

(assert (= (and b!796589 res!541275) b!796582))

(assert (= (and b!796582 res!541282) b!796592))

(assert (= (and b!796592 res!541278) b!796587))

(assert (= (and b!796587 res!541280) b!796593))

(assert (= (and b!796593 res!541273) b!796590))

(assert (= (and b!796590 res!541279) b!796584))

(assert (= (and b!796584 res!541276) b!796588))

(assert (= (and b!796588 res!541281) b!796591))

(assert (= (and b!796591 res!541272) b!796583))

(assert (= (and b!796583 res!541277) b!796585))

(assert (= (and b!796585 (not res!541271)) b!796586))

(declare-fun m!737495 () Bool)

(assert (=> b!796585 m!737495))

(declare-fun m!737497 () Bool)

(assert (=> b!796585 m!737497))

(declare-fun m!737499 () Bool)

(assert (=> b!796591 m!737499))

(declare-fun m!737501 () Bool)

(assert (=> b!796591 m!737501))

(assert (=> b!796591 m!737495))

(declare-fun m!737503 () Bool)

(assert (=> b!796591 m!737503))

(declare-fun m!737505 () Bool)

(assert (=> b!796590 m!737505))

(declare-fun m!737507 () Bool)

(assert (=> b!796584 m!737507))

(declare-fun m!737509 () Bool)

(assert (=> b!796593 m!737509))

(declare-fun m!737511 () Bool)

(assert (=> start!68538 m!737511))

(declare-fun m!737513 () Bool)

(assert (=> start!68538 m!737513))

(declare-fun m!737515 () Bool)

(assert (=> b!796592 m!737515))

(declare-fun m!737517 () Bool)

(assert (=> b!796588 m!737517))

(declare-fun m!737519 () Bool)

(assert (=> b!796588 m!737519))

(declare-fun m!737521 () Bool)

(assert (=> b!796583 m!737521))

(declare-fun m!737523 () Bool)

(assert (=> b!796583 m!737523))

(assert (=> b!796583 m!737523))

(declare-fun m!737525 () Bool)

(assert (=> b!796583 m!737525))

(assert (=> b!796583 m!737523))

(declare-fun m!737527 () Bool)

(assert (=> b!796583 m!737527))

(declare-fun m!737529 () Bool)

(assert (=> b!796586 m!737529))

(assert (=> b!796582 m!737523))

(assert (=> b!796582 m!737523))

(declare-fun m!737531 () Bool)

(assert (=> b!796582 m!737531))

(declare-fun m!737533 () Bool)

(assert (=> b!796587 m!737533))

(check-sat (not start!68538) (not b!796583) (not b!796593) (not b!796582) (not b!796591) (not b!796584) (not b!796592) (not b!796590) (not b!796586) (not b!796587))
(check-sat)
