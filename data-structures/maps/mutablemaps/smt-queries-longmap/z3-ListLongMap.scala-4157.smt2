; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56642 () Bool)

(assert start!56642)

(declare-fun b!627346 () Bool)

(declare-fun res!405236 () Bool)

(declare-fun e!359162 () Bool)

(assert (=> b!627346 (=> (not res!405236) (not e!359162))))

(declare-datatypes ((array!37895 0))(
  ( (array!37896 (arr!18184 (Array (_ BitVec 32) (_ BitVec 64))) (size!18548 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37895)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627346 (= res!405236 (validKeyInArray!0 (select (arr!18184 a!2986) j!136)))))

(declare-fun b!627347 () Bool)

(declare-fun res!405232 () Bool)

(declare-fun e!359164 () Bool)

(assert (=> b!627347 (=> (not res!405232) (not e!359164))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6631 0))(
  ( (MissingZero!6631 (index!28807 (_ BitVec 32))) (Found!6631 (index!28808 (_ BitVec 32))) (Intermediate!6631 (undefined!7443 Bool) (index!28809 (_ BitVec 32)) (x!57572 (_ BitVec 32))) (Undefined!6631) (MissingVacant!6631 (index!28810 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37895 (_ BitVec 32)) SeekEntryResult!6631)

(assert (=> b!627347 (= res!405232 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18184 a!2986) j!136) a!2986 mask!3053) (Found!6631 j!136)))))

(declare-fun b!627348 () Bool)

(declare-fun res!405231 () Bool)

(assert (=> b!627348 (=> (not res!405231) (not e!359164))))

(declare-datatypes ((List!12278 0))(
  ( (Nil!12275) (Cons!12274 (h!13319 (_ BitVec 64)) (t!18514 List!12278)) )
))
(declare-fun arrayNoDuplicates!0 (array!37895 (_ BitVec 32) List!12278) Bool)

(assert (=> b!627348 (= res!405231 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12275))))

(declare-fun b!627349 () Bool)

(declare-fun res!405233 () Bool)

(assert (=> b!627349 (=> (not res!405233) (not e!359162))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627349 (= res!405233 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627350 () Bool)

(declare-fun res!405227 () Bool)

(assert (=> b!627350 (=> (not res!405227) (not e!359162))))

(assert (=> b!627350 (= res!405227 (validKeyInArray!0 k0!1786))))

(declare-fun b!627351 () Bool)

(declare-fun res!405234 () Bool)

(assert (=> b!627351 (=> (not res!405234) (not e!359164))))

(assert (=> b!627351 (= res!405234 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18184 a!2986) index!984) (select (arr!18184 a!2986) j!136))) (not (= (select (arr!18184 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627352 () Bool)

(declare-fun res!405226 () Bool)

(assert (=> b!627352 (=> (not res!405226) (not e!359162))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627352 (= res!405226 (and (= (size!18548 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18548 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18548 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627353 () Bool)

(assert (=> b!627353 (= e!359162 e!359164)))

(declare-fun res!405228 () Bool)

(assert (=> b!627353 (=> (not res!405228) (not e!359164))))

(declare-fun lt!290244 () SeekEntryResult!6631)

(assert (=> b!627353 (= res!405228 (or (= lt!290244 (MissingZero!6631 i!1108)) (= lt!290244 (MissingVacant!6631 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37895 (_ BitVec 32)) SeekEntryResult!6631)

(assert (=> b!627353 (= lt!290244 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!405230 () Bool)

(assert (=> start!56642 (=> (not res!405230) (not e!359162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56642 (= res!405230 (validMask!0 mask!3053))))

(assert (=> start!56642 e!359162))

(assert (=> start!56642 true))

(declare-fun array_inv!13958 (array!37895) Bool)

(assert (=> start!56642 (array_inv!13958 a!2986)))

(declare-fun b!627354 () Bool)

(declare-fun res!405229 () Bool)

(assert (=> b!627354 (=> (not res!405229) (not e!359164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37895 (_ BitVec 32)) Bool)

(assert (=> b!627354 (= res!405229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627355 () Bool)

(assert (=> b!627355 (= e!359164 false)))

(declare-fun lt!290243 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627355 (= lt!290243 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627356 () Bool)

(declare-fun res!405235 () Bool)

(assert (=> b!627356 (=> (not res!405235) (not e!359164))))

(assert (=> b!627356 (= res!405235 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18184 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18184 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56642 res!405230) b!627352))

(assert (= (and b!627352 res!405226) b!627346))

(assert (= (and b!627346 res!405236) b!627350))

(assert (= (and b!627350 res!405227) b!627349))

(assert (= (and b!627349 res!405233) b!627353))

(assert (= (and b!627353 res!405228) b!627354))

(assert (= (and b!627354 res!405229) b!627348))

(assert (= (and b!627348 res!405231) b!627356))

(assert (= (and b!627356 res!405235) b!627347))

(assert (= (and b!627347 res!405232) b!627351))

(assert (= (and b!627351 res!405234) b!627355))

(declare-fun m!602703 () Bool)

(assert (=> b!627348 m!602703))

(declare-fun m!602705 () Bool)

(assert (=> b!627349 m!602705))

(declare-fun m!602707 () Bool)

(assert (=> b!627353 m!602707))

(declare-fun m!602709 () Bool)

(assert (=> b!627354 m!602709))

(declare-fun m!602711 () Bool)

(assert (=> b!627355 m!602711))

(declare-fun m!602713 () Bool)

(assert (=> b!627346 m!602713))

(assert (=> b!627346 m!602713))

(declare-fun m!602715 () Bool)

(assert (=> b!627346 m!602715))

(declare-fun m!602717 () Bool)

(assert (=> b!627350 m!602717))

(declare-fun m!602719 () Bool)

(assert (=> b!627351 m!602719))

(assert (=> b!627351 m!602713))

(declare-fun m!602721 () Bool)

(assert (=> b!627356 m!602721))

(declare-fun m!602723 () Bool)

(assert (=> b!627356 m!602723))

(declare-fun m!602725 () Bool)

(assert (=> b!627356 m!602725))

(declare-fun m!602727 () Bool)

(assert (=> start!56642 m!602727))

(declare-fun m!602729 () Bool)

(assert (=> start!56642 m!602729))

(assert (=> b!627347 m!602713))

(assert (=> b!627347 m!602713))

(declare-fun m!602731 () Bool)

(assert (=> b!627347 m!602731))

(check-sat (not b!627346) (not b!627353) (not b!627347) (not b!627355) (not b!627354) (not b!627349) (not start!56642) (not b!627348) (not b!627350))
(check-sat)
