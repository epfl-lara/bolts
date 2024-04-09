; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56414 () Bool)

(assert start!56414)

(declare-fun b!624978 () Bool)

(declare-fun e!358282 () Bool)

(declare-fun e!358280 () Bool)

(assert (=> b!624978 (= e!358282 e!358280)))

(declare-fun res!403168 () Bool)

(assert (=> b!624978 (=> (not res!403168) (not e!358280))))

(declare-datatypes ((SeekEntryResult!6565 0))(
  ( (MissingZero!6565 (index!28543 (_ BitVec 32))) (Found!6565 (index!28544 (_ BitVec 32))) (Intermediate!6565 (undefined!7377 Bool) (index!28545 (_ BitVec 32)) (x!57324 (_ BitVec 32))) (Undefined!6565) (MissingVacant!6565 (index!28546 (_ BitVec 32))) )
))
(declare-fun lt!289725 () SeekEntryResult!6565)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624978 (= res!403168 (or (= lt!289725 (MissingZero!6565 i!1108)) (= lt!289725 (MissingVacant!6565 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37757 0))(
  ( (array!37758 (arr!18118 (Array (_ BitVec 32) (_ BitVec 64))) (size!18482 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37757)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37757 (_ BitVec 32)) SeekEntryResult!6565)

(assert (=> b!624978 (= lt!289725 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!403167 () Bool)

(assert (=> start!56414 (=> (not res!403167) (not e!358282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56414 (= res!403167 (validMask!0 mask!3053))))

(assert (=> start!56414 e!358282))

(assert (=> start!56414 true))

(declare-fun array_inv!13892 (array!37757) Bool)

(assert (=> start!56414 (array_inv!13892 a!2986)))

(declare-fun b!624979 () Bool)

(declare-fun res!403171 () Bool)

(assert (=> b!624979 (=> (not res!403171) (not e!358282))))

(declare-fun arrayContainsKey!0 (array!37757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624979 (= res!403171 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624980 () Bool)

(declare-fun res!403169 () Bool)

(assert (=> b!624980 (=> (not res!403169) (not e!358280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37757 (_ BitVec 32)) Bool)

(assert (=> b!624980 (= res!403169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624981 () Bool)

(declare-fun res!403166 () Bool)

(assert (=> b!624981 (=> (not res!403166) (not e!358282))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624981 (= res!403166 (validKeyInArray!0 (select (arr!18118 a!2986) j!136)))))

(declare-fun b!624982 () Bool)

(assert (=> b!624982 (= e!358280 false)))

(declare-fun lt!289724 () SeekEntryResult!6565)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37757 (_ BitVec 32)) SeekEntryResult!6565)

(assert (=> b!624982 (= lt!289724 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18118 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624983 () Bool)

(declare-fun res!403170 () Bool)

(assert (=> b!624983 (=> (not res!403170) (not e!358280))))

(declare-datatypes ((List!12212 0))(
  ( (Nil!12209) (Cons!12208 (h!13253 (_ BitVec 64)) (t!18448 List!12212)) )
))
(declare-fun arrayNoDuplicates!0 (array!37757 (_ BitVec 32) List!12212) Bool)

(assert (=> b!624983 (= res!403170 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12209))))

(declare-fun b!624984 () Bool)

(declare-fun res!403165 () Bool)

(assert (=> b!624984 (=> (not res!403165) (not e!358280))))

(assert (=> b!624984 (= res!403165 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18118 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18118 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624985 () Bool)

(declare-fun res!403172 () Bool)

(assert (=> b!624985 (=> (not res!403172) (not e!358282))))

(assert (=> b!624985 (= res!403172 (validKeyInArray!0 k0!1786))))

(declare-fun b!624986 () Bool)

(declare-fun res!403164 () Bool)

(assert (=> b!624986 (=> (not res!403164) (not e!358282))))

(assert (=> b!624986 (= res!403164 (and (= (size!18482 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18482 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18482 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56414 res!403167) b!624986))

(assert (= (and b!624986 res!403164) b!624981))

(assert (= (and b!624981 res!403166) b!624985))

(assert (= (and b!624985 res!403172) b!624979))

(assert (= (and b!624979 res!403171) b!624978))

(assert (= (and b!624978 res!403168) b!624980))

(assert (= (and b!624980 res!403169) b!624983))

(assert (= (and b!624983 res!403170) b!624984))

(assert (= (and b!624984 res!403165) b!624982))

(declare-fun m!600617 () Bool)

(assert (=> start!56414 m!600617))

(declare-fun m!600619 () Bool)

(assert (=> start!56414 m!600619))

(declare-fun m!600621 () Bool)

(assert (=> b!624980 m!600621))

(declare-fun m!600623 () Bool)

(assert (=> b!624983 m!600623))

(declare-fun m!600625 () Bool)

(assert (=> b!624982 m!600625))

(assert (=> b!624982 m!600625))

(declare-fun m!600627 () Bool)

(assert (=> b!624982 m!600627))

(declare-fun m!600629 () Bool)

(assert (=> b!624978 m!600629))

(declare-fun m!600631 () Bool)

(assert (=> b!624979 m!600631))

(assert (=> b!624981 m!600625))

(assert (=> b!624981 m!600625))

(declare-fun m!600633 () Bool)

(assert (=> b!624981 m!600633))

(declare-fun m!600635 () Bool)

(assert (=> b!624984 m!600635))

(declare-fun m!600637 () Bool)

(assert (=> b!624984 m!600637))

(declare-fun m!600639 () Bool)

(assert (=> b!624984 m!600639))

(declare-fun m!600641 () Bool)

(assert (=> b!624985 m!600641))

(check-sat (not b!624979) (not b!624982) (not b!624981) (not b!624983) (not b!624980) (not b!624985) (not b!624978) (not start!56414))
(check-sat)
