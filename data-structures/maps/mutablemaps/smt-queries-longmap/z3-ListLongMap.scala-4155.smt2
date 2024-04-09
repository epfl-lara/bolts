; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56630 () Bool)

(assert start!56630)

(declare-fun b!627148 () Bool)

(declare-fun res!405037 () Bool)

(declare-fun e!359110 () Bool)

(assert (=> b!627148 (=> (not res!405037) (not e!359110))))

(declare-datatypes ((array!37883 0))(
  ( (array!37884 (arr!18178 (Array (_ BitVec 32) (_ BitVec 64))) (size!18542 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37883)

(declare-datatypes ((List!12272 0))(
  ( (Nil!12269) (Cons!12268 (h!13313 (_ BitVec 64)) (t!18508 List!12272)) )
))
(declare-fun arrayNoDuplicates!0 (array!37883 (_ BitVec 32) List!12272) Bool)

(assert (=> b!627148 (= res!405037 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12269))))

(declare-fun b!627149 () Bool)

(declare-fun res!405033 () Bool)

(declare-fun e!359108 () Bool)

(assert (=> b!627149 (=> (not res!405033) (not e!359108))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627149 (= res!405033 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627150 () Bool)

(declare-fun res!405029 () Bool)

(assert (=> b!627150 (=> (not res!405029) (not e!359110))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6625 0))(
  ( (MissingZero!6625 (index!28783 (_ BitVec 32))) (Found!6625 (index!28784 (_ BitVec 32))) (Intermediate!6625 (undefined!7437 Bool) (index!28785 (_ BitVec 32)) (x!57550 (_ BitVec 32))) (Undefined!6625) (MissingVacant!6625 (index!28786 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37883 (_ BitVec 32)) SeekEntryResult!6625)

(assert (=> b!627150 (= res!405029 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18178 a!2986) j!136) a!2986 mask!3053) (Found!6625 j!136)))))

(declare-fun b!627151 () Bool)

(assert (=> b!627151 (= e!359110 false)))

(declare-fun lt!290208 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627151 (= lt!290208 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627152 () Bool)

(declare-fun res!405031 () Bool)

(assert (=> b!627152 (=> (not res!405031) (not e!359108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627152 (= res!405031 (validKeyInArray!0 k0!1786))))

(declare-fun b!627153 () Bool)

(declare-fun res!405036 () Bool)

(assert (=> b!627153 (=> (not res!405036) (not e!359110))))

(assert (=> b!627153 (= res!405036 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18178 a!2986) index!984) (select (arr!18178 a!2986) j!136))) (not (= (select (arr!18178 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627154 () Bool)

(declare-fun res!405028 () Bool)

(assert (=> b!627154 (=> (not res!405028) (not e!359110))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627154 (= res!405028 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18178 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18178 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627155 () Bool)

(declare-fun res!405030 () Bool)

(assert (=> b!627155 (=> (not res!405030) (not e!359108))))

(assert (=> b!627155 (= res!405030 (and (= (size!18542 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18542 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18542 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627156 () Bool)

(assert (=> b!627156 (= e!359108 e!359110)))

(declare-fun res!405032 () Bool)

(assert (=> b!627156 (=> (not res!405032) (not e!359110))))

(declare-fun lt!290207 () SeekEntryResult!6625)

(assert (=> b!627156 (= res!405032 (or (= lt!290207 (MissingZero!6625 i!1108)) (= lt!290207 (MissingVacant!6625 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37883 (_ BitVec 32)) SeekEntryResult!6625)

(assert (=> b!627156 (= lt!290207 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627157 () Bool)

(declare-fun res!405038 () Bool)

(assert (=> b!627157 (=> (not res!405038) (not e!359110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37883 (_ BitVec 32)) Bool)

(assert (=> b!627157 (= res!405038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627158 () Bool)

(declare-fun res!405034 () Bool)

(assert (=> b!627158 (=> (not res!405034) (not e!359108))))

(assert (=> b!627158 (= res!405034 (validKeyInArray!0 (select (arr!18178 a!2986) j!136)))))

(declare-fun res!405035 () Bool)

(assert (=> start!56630 (=> (not res!405035) (not e!359108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56630 (= res!405035 (validMask!0 mask!3053))))

(assert (=> start!56630 e!359108))

(assert (=> start!56630 true))

(declare-fun array_inv!13952 (array!37883) Bool)

(assert (=> start!56630 (array_inv!13952 a!2986)))

(assert (= (and start!56630 res!405035) b!627155))

(assert (= (and b!627155 res!405030) b!627158))

(assert (= (and b!627158 res!405034) b!627152))

(assert (= (and b!627152 res!405031) b!627149))

(assert (= (and b!627149 res!405033) b!627156))

(assert (= (and b!627156 res!405032) b!627157))

(assert (= (and b!627157 res!405038) b!627148))

(assert (= (and b!627148 res!405037) b!627154))

(assert (= (and b!627154 res!405028) b!627150))

(assert (= (and b!627150 res!405029) b!627153))

(assert (= (and b!627153 res!405036) b!627151))

(declare-fun m!602523 () Bool)

(assert (=> b!627151 m!602523))

(declare-fun m!602525 () Bool)

(assert (=> b!627152 m!602525))

(declare-fun m!602527 () Bool)

(assert (=> b!627156 m!602527))

(declare-fun m!602529 () Bool)

(assert (=> b!627158 m!602529))

(assert (=> b!627158 m!602529))

(declare-fun m!602531 () Bool)

(assert (=> b!627158 m!602531))

(declare-fun m!602533 () Bool)

(assert (=> b!627149 m!602533))

(declare-fun m!602535 () Bool)

(assert (=> b!627154 m!602535))

(declare-fun m!602537 () Bool)

(assert (=> b!627154 m!602537))

(declare-fun m!602539 () Bool)

(assert (=> b!627154 m!602539))

(declare-fun m!602541 () Bool)

(assert (=> b!627157 m!602541))

(assert (=> b!627150 m!602529))

(assert (=> b!627150 m!602529))

(declare-fun m!602543 () Bool)

(assert (=> b!627150 m!602543))

(declare-fun m!602545 () Bool)

(assert (=> b!627153 m!602545))

(assert (=> b!627153 m!602529))

(declare-fun m!602547 () Bool)

(assert (=> b!627148 m!602547))

(declare-fun m!602549 () Bool)

(assert (=> start!56630 m!602549))

(declare-fun m!602551 () Bool)

(assert (=> start!56630 m!602551))

(check-sat (not b!627156) (not start!56630) (not b!627150) (not b!627148) (not b!627151) (not b!627152) (not b!627158) (not b!627149) (not b!627157))
(check-sat)
