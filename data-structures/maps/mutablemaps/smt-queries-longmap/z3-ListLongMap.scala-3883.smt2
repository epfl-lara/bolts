; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53328 () Bool)

(assert start!53328)

(declare-fun b!579504 () Bool)

(declare-fun res!367478 () Bool)

(declare-fun e!332979 () Bool)

(assert (=> b!579504 (=> (not res!367478) (not e!332979))))

(declare-datatypes ((array!36183 0))(
  ( (array!36184 (arr!17362 (Array (_ BitVec 32) (_ BitVec 64))) (size!17726 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36183)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579504 (= res!367478 (validKeyInArray!0 (select (arr!17362 a!2986) j!136)))))

(declare-fun b!579505 () Bool)

(declare-fun res!367470 () Bool)

(assert (=> b!579505 (=> (not res!367470) (not e!332979))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579505 (= res!367470 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579506 () Bool)

(declare-fun e!332980 () Bool)

(assert (=> b!579506 (= e!332979 e!332980)))

(declare-fun res!367476 () Bool)

(assert (=> b!579506 (=> (not res!367476) (not e!332980))))

(declare-datatypes ((SeekEntryResult!5809 0))(
  ( (MissingZero!5809 (index!25463 (_ BitVec 32))) (Found!5809 (index!25464 (_ BitVec 32))) (Intermediate!5809 (undefined!6621 Bool) (index!25465 (_ BitVec 32)) (x!54377 (_ BitVec 32))) (Undefined!5809) (MissingVacant!5809 (index!25466 (_ BitVec 32))) )
))
(declare-fun lt!264502 () SeekEntryResult!5809)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579506 (= res!367476 (or (= lt!264502 (MissingZero!5809 i!1108)) (= lt!264502 (MissingVacant!5809 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36183 (_ BitVec 32)) SeekEntryResult!5809)

(assert (=> b!579506 (= lt!264502 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!367471 () Bool)

(assert (=> start!53328 (=> (not res!367471) (not e!332979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53328 (= res!367471 (validMask!0 mask!3053))))

(assert (=> start!53328 e!332979))

(assert (=> start!53328 true))

(declare-fun array_inv!13136 (array!36183) Bool)

(assert (=> start!53328 (array_inv!13136 a!2986)))

(declare-fun b!579507 () Bool)

(declare-fun res!367473 () Bool)

(assert (=> b!579507 (=> (not res!367473) (not e!332980))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579507 (= res!367473 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17362 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17362 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579508 () Bool)

(declare-fun res!367472 () Bool)

(assert (=> b!579508 (=> (not res!367472) (not e!332979))))

(assert (=> b!579508 (= res!367472 (validKeyInArray!0 k0!1786))))

(declare-fun b!579509 () Bool)

(assert (=> b!579509 (= e!332980 false)))

(declare-fun lt!264503 () SeekEntryResult!5809)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36183 (_ BitVec 32)) SeekEntryResult!5809)

(assert (=> b!579509 (= lt!264503 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17362 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579510 () Bool)

(declare-fun res!367474 () Bool)

(assert (=> b!579510 (=> (not res!367474) (not e!332980))))

(declare-datatypes ((List!11456 0))(
  ( (Nil!11453) (Cons!11452 (h!12497 (_ BitVec 64)) (t!17692 List!11456)) )
))
(declare-fun arrayNoDuplicates!0 (array!36183 (_ BitVec 32) List!11456) Bool)

(assert (=> b!579510 (= res!367474 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11453))))

(declare-fun b!579511 () Bool)

(declare-fun res!367477 () Bool)

(assert (=> b!579511 (=> (not res!367477) (not e!332979))))

(assert (=> b!579511 (= res!367477 (and (= (size!17726 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17726 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17726 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579512 () Bool)

(declare-fun res!367475 () Bool)

(assert (=> b!579512 (=> (not res!367475) (not e!332980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36183 (_ BitVec 32)) Bool)

(assert (=> b!579512 (= res!367475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53328 res!367471) b!579511))

(assert (= (and b!579511 res!367477) b!579504))

(assert (= (and b!579504 res!367478) b!579508))

(assert (= (and b!579508 res!367472) b!579505))

(assert (= (and b!579505 res!367470) b!579506))

(assert (= (and b!579506 res!367476) b!579512))

(assert (= (and b!579512 res!367475) b!579510))

(assert (= (and b!579510 res!367474) b!579507))

(assert (= (and b!579507 res!367473) b!579509))

(declare-fun m!558165 () Bool)

(assert (=> b!579508 m!558165))

(declare-fun m!558167 () Bool)

(assert (=> b!579509 m!558167))

(assert (=> b!579509 m!558167))

(declare-fun m!558169 () Bool)

(assert (=> b!579509 m!558169))

(declare-fun m!558171 () Bool)

(assert (=> b!579512 m!558171))

(declare-fun m!558173 () Bool)

(assert (=> b!579507 m!558173))

(declare-fun m!558175 () Bool)

(assert (=> b!579507 m!558175))

(declare-fun m!558177 () Bool)

(assert (=> b!579507 m!558177))

(declare-fun m!558179 () Bool)

(assert (=> b!579510 m!558179))

(assert (=> b!579504 m!558167))

(assert (=> b!579504 m!558167))

(declare-fun m!558181 () Bool)

(assert (=> b!579504 m!558181))

(declare-fun m!558183 () Bool)

(assert (=> b!579506 m!558183))

(declare-fun m!558185 () Bool)

(assert (=> start!53328 m!558185))

(declare-fun m!558187 () Bool)

(assert (=> start!53328 m!558187))

(declare-fun m!558189 () Bool)

(assert (=> b!579505 m!558189))

(check-sat (not b!579510) (not b!579509) (not b!579505) (not b!579504) (not b!579512) (not b!579506) (not b!579508) (not start!53328))
(check-sat)
