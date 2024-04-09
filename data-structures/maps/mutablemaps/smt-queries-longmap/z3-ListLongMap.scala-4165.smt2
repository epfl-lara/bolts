; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56744 () Bool)

(assert start!56744)

(declare-fun b!628345 () Bool)

(declare-fun res!406081 () Bool)

(declare-fun e!359513 () Bool)

(assert (=> b!628345 (=> (not res!406081) (not e!359513))))

(declare-datatypes ((array!37946 0))(
  ( (array!37947 (arr!18208 (Array (_ BitVec 32) (_ BitVec 64))) (size!18572 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37946)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628345 (= res!406081 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628346 () Bool)

(declare-fun res!406086 () Bool)

(declare-fun e!359515 () Bool)

(assert (=> b!628346 (=> (not res!406086) (not e!359515))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6655 0))(
  ( (MissingZero!6655 (index!28903 (_ BitVec 32))) (Found!6655 (index!28904 (_ BitVec 32))) (Intermediate!6655 (undefined!7467 Bool) (index!28905 (_ BitVec 32)) (x!57666 (_ BitVec 32))) (Undefined!6655) (MissingVacant!6655 (index!28906 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37946 (_ BitVec 32)) SeekEntryResult!6655)

(assert (=> b!628346 (= res!406086 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18208 a!2986) j!136) a!2986 mask!3053) (Found!6655 j!136)))))

(declare-fun b!628347 () Bool)

(declare-fun res!406084 () Bool)

(assert (=> b!628347 (=> (not res!406084) (not e!359513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628347 (= res!406084 (validKeyInArray!0 (select (arr!18208 a!2986) j!136)))))

(declare-fun b!628348 () Bool)

(declare-fun res!406082 () Bool)

(assert (=> b!628348 (=> (not res!406082) (not e!359515))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628348 (= res!406082 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18208 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18208 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628349 () Bool)

(declare-fun res!406088 () Bool)

(assert (=> b!628349 (=> (not res!406088) (not e!359515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37946 (_ BitVec 32)) Bool)

(assert (=> b!628349 (= res!406088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628350 () Bool)

(declare-fun res!406083 () Bool)

(assert (=> b!628350 (=> (not res!406083) (not e!359515))))

(declare-datatypes ((List!12302 0))(
  ( (Nil!12299) (Cons!12298 (h!13343 (_ BitVec 64)) (t!18538 List!12302)) )
))
(declare-fun arrayNoDuplicates!0 (array!37946 (_ BitVec 32) List!12302) Bool)

(assert (=> b!628350 (= res!406083 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12299))))

(declare-fun b!628352 () Bool)

(declare-fun res!406090 () Bool)

(assert (=> b!628352 (=> (not res!406090) (not e!359513))))

(assert (=> b!628352 (= res!406090 (validKeyInArray!0 k0!1786))))

(declare-fun b!628353 () Bool)

(assert (=> b!628353 (= e!359513 e!359515)))

(declare-fun res!406087 () Bool)

(assert (=> b!628353 (=> (not res!406087) (not e!359515))))

(declare-fun lt!290468 () SeekEntryResult!6655)

(assert (=> b!628353 (= res!406087 (or (= lt!290468 (MissingZero!6655 i!1108)) (= lt!290468 (MissingVacant!6655 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37946 (_ BitVec 32)) SeekEntryResult!6655)

(assert (=> b!628353 (= lt!290468 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628351 () Bool)

(declare-fun res!406089 () Bool)

(assert (=> b!628351 (=> (not res!406089) (not e!359513))))

(assert (=> b!628351 (= res!406089 (and (= (size!18572 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18572 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18572 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!406085 () Bool)

(assert (=> start!56744 (=> (not res!406085) (not e!359513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56744 (= res!406085 (validMask!0 mask!3053))))

(assert (=> start!56744 e!359513))

(assert (=> start!56744 true))

(declare-fun array_inv!13982 (array!37946) Bool)

(assert (=> start!56744 (array_inv!13982 a!2986)))

(declare-fun b!628354 () Bool)

(declare-fun lt!290469 () (_ BitVec 32))

(assert (=> b!628354 (= e!359515 (and (bvsge lt!290469 #b00000000000000000000000000000000) (bvslt lt!290469 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628354 (= lt!290469 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628355 () Bool)

(declare-fun res!406091 () Bool)

(assert (=> b!628355 (=> (not res!406091) (not e!359515))))

(assert (=> b!628355 (= res!406091 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18208 a!2986) index!984) (select (arr!18208 a!2986) j!136))) (not (= (select (arr!18208 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56744 res!406085) b!628351))

(assert (= (and b!628351 res!406089) b!628347))

(assert (= (and b!628347 res!406084) b!628352))

(assert (= (and b!628352 res!406090) b!628345))

(assert (= (and b!628345 res!406081) b!628353))

(assert (= (and b!628353 res!406087) b!628349))

(assert (= (and b!628349 res!406088) b!628350))

(assert (= (and b!628350 res!406083) b!628348))

(assert (= (and b!628348 res!406082) b!628346))

(assert (= (and b!628346 res!406086) b!628355))

(assert (= (and b!628355 res!406091) b!628354))

(declare-fun m!603543 () Bool)

(assert (=> b!628348 m!603543))

(declare-fun m!603545 () Bool)

(assert (=> b!628348 m!603545))

(declare-fun m!603547 () Bool)

(assert (=> b!628348 m!603547))

(declare-fun m!603549 () Bool)

(assert (=> b!628349 m!603549))

(declare-fun m!603551 () Bool)

(assert (=> start!56744 m!603551))

(declare-fun m!603553 () Bool)

(assert (=> start!56744 m!603553))

(declare-fun m!603555 () Bool)

(assert (=> b!628347 m!603555))

(assert (=> b!628347 m!603555))

(declare-fun m!603557 () Bool)

(assert (=> b!628347 m!603557))

(declare-fun m!603559 () Bool)

(assert (=> b!628355 m!603559))

(assert (=> b!628355 m!603555))

(declare-fun m!603561 () Bool)

(assert (=> b!628353 m!603561))

(declare-fun m!603563 () Bool)

(assert (=> b!628352 m!603563))

(assert (=> b!628346 m!603555))

(assert (=> b!628346 m!603555))

(declare-fun m!603565 () Bool)

(assert (=> b!628346 m!603565))

(declare-fun m!603567 () Bool)

(assert (=> b!628345 m!603567))

(declare-fun m!603569 () Bool)

(assert (=> b!628350 m!603569))

(declare-fun m!603571 () Bool)

(assert (=> b!628354 m!603571))

(check-sat (not b!628346) (not b!628352) (not b!628347) (not b!628353) (not b!628354) (not start!56744) (not b!628350) (not b!628345) (not b!628349))
(check-sat)
