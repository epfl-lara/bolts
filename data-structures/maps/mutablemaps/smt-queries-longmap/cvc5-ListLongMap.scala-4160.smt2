; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56658 () Bool)

(assert start!56658)

(declare-fun res!405497 () Bool)

(declare-fun e!359235 () Bool)

(assert (=> start!56658 (=> (not res!405497) (not e!359235))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56658 (= res!405497 (validMask!0 mask!3053))))

(assert (=> start!56658 e!359235))

(assert (=> start!56658 true))

(declare-datatypes ((array!37911 0))(
  ( (array!37912 (arr!18192 (Array (_ BitVec 32) (_ BitVec 64))) (size!18556 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37911)

(declare-fun array_inv!13966 (array!37911) Bool)

(assert (=> start!56658 (array_inv!13966 a!2986)))

(declare-fun b!627610 () Bool)

(declare-fun res!405500 () Bool)

(declare-fun e!359236 () Bool)

(assert (=> b!627610 (=> (not res!405500) (not e!359236))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627610 (= res!405500 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18192 a!2986) index!984) (select (arr!18192 a!2986) j!136))) (not (= (select (arr!18192 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627611 () Bool)

(declare-fun res!405496 () Bool)

(assert (=> b!627611 (=> (not res!405496) (not e!359236))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6639 0))(
  ( (MissingZero!6639 (index!28839 (_ BitVec 32))) (Found!6639 (index!28840 (_ BitVec 32))) (Intermediate!6639 (undefined!7451 Bool) (index!28841 (_ BitVec 32)) (x!57604 (_ BitVec 32))) (Undefined!6639) (MissingVacant!6639 (index!28842 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37911 (_ BitVec 32)) SeekEntryResult!6639)

(assert (=> b!627611 (= res!405496 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18192 a!2986) j!136) a!2986 mask!3053) (Found!6639 j!136)))))

(declare-fun b!627612 () Bool)

(declare-fun res!405492 () Bool)

(assert (=> b!627612 (=> (not res!405492) (not e!359236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37911 (_ BitVec 32)) Bool)

(assert (=> b!627612 (= res!405492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627613 () Bool)

(assert (=> b!627613 (= e!359236 false)))

(declare-fun lt!290292 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627613 (= lt!290292 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627614 () Bool)

(declare-fun res!405498 () Bool)

(assert (=> b!627614 (=> (not res!405498) (not e!359236))))

(declare-datatypes ((List!12286 0))(
  ( (Nil!12283) (Cons!12282 (h!13327 (_ BitVec 64)) (t!18522 List!12286)) )
))
(declare-fun arrayNoDuplicates!0 (array!37911 (_ BitVec 32) List!12286) Bool)

(assert (=> b!627614 (= res!405498 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12283))))

(declare-fun b!627615 () Bool)

(declare-fun res!405499 () Bool)

(assert (=> b!627615 (=> (not res!405499) (not e!359235))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627615 (= res!405499 (validKeyInArray!0 k!1786))))

(declare-fun b!627616 () Bool)

(declare-fun res!405494 () Bool)

(assert (=> b!627616 (=> (not res!405494) (not e!359235))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627616 (= res!405494 (and (= (size!18556 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18556 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18556 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627617 () Bool)

(declare-fun res!405490 () Bool)

(assert (=> b!627617 (=> (not res!405490) (not e!359235))))

(assert (=> b!627617 (= res!405490 (validKeyInArray!0 (select (arr!18192 a!2986) j!136)))))

(declare-fun b!627618 () Bool)

(declare-fun res!405495 () Bool)

(assert (=> b!627618 (=> (not res!405495) (not e!359236))))

(assert (=> b!627618 (= res!405495 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18192 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18192 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627619 () Bool)

(assert (=> b!627619 (= e!359235 e!359236)))

(declare-fun res!405491 () Bool)

(assert (=> b!627619 (=> (not res!405491) (not e!359236))))

(declare-fun lt!290291 () SeekEntryResult!6639)

(assert (=> b!627619 (= res!405491 (or (= lt!290291 (MissingZero!6639 i!1108)) (= lt!290291 (MissingVacant!6639 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37911 (_ BitVec 32)) SeekEntryResult!6639)

(assert (=> b!627619 (= lt!290291 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627620 () Bool)

(declare-fun res!405493 () Bool)

(assert (=> b!627620 (=> (not res!405493) (not e!359235))))

(declare-fun arrayContainsKey!0 (array!37911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627620 (= res!405493 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56658 res!405497) b!627616))

(assert (= (and b!627616 res!405494) b!627617))

(assert (= (and b!627617 res!405490) b!627615))

(assert (= (and b!627615 res!405499) b!627620))

(assert (= (and b!627620 res!405493) b!627619))

(assert (= (and b!627619 res!405491) b!627612))

(assert (= (and b!627612 res!405492) b!627614))

(assert (= (and b!627614 res!405498) b!627618))

(assert (= (and b!627618 res!405495) b!627611))

(assert (= (and b!627611 res!405496) b!627610))

(assert (= (and b!627610 res!405500) b!627613))

(declare-fun m!602943 () Bool)

(assert (=> b!627618 m!602943))

(declare-fun m!602945 () Bool)

(assert (=> b!627618 m!602945))

(declare-fun m!602947 () Bool)

(assert (=> b!627618 m!602947))

(declare-fun m!602949 () Bool)

(assert (=> b!627617 m!602949))

(assert (=> b!627617 m!602949))

(declare-fun m!602951 () Bool)

(assert (=> b!627617 m!602951))

(declare-fun m!602953 () Bool)

(assert (=> b!627610 m!602953))

(assert (=> b!627610 m!602949))

(declare-fun m!602955 () Bool)

(assert (=> b!627614 m!602955))

(declare-fun m!602957 () Bool)

(assert (=> start!56658 m!602957))

(declare-fun m!602959 () Bool)

(assert (=> start!56658 m!602959))

(declare-fun m!602961 () Bool)

(assert (=> b!627619 m!602961))

(assert (=> b!627611 m!602949))

(assert (=> b!627611 m!602949))

(declare-fun m!602963 () Bool)

(assert (=> b!627611 m!602963))

(declare-fun m!602965 () Bool)

(assert (=> b!627613 m!602965))

(declare-fun m!602967 () Bool)

(assert (=> b!627615 m!602967))

(declare-fun m!602969 () Bool)

(assert (=> b!627620 m!602969))

(declare-fun m!602971 () Bool)

(assert (=> b!627612 m!602971))

(push 1)

