; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53338 () Bool)

(assert start!53338)

(declare-fun b!579639 () Bool)

(declare-fun e!333023 () Bool)

(declare-fun e!333025 () Bool)

(assert (=> b!579639 (= e!333023 e!333025)))

(declare-fun res!367612 () Bool)

(assert (=> b!579639 (=> (not res!367612) (not e!333025))))

(declare-datatypes ((SeekEntryResult!5814 0))(
  ( (MissingZero!5814 (index!25483 (_ BitVec 32))) (Found!5814 (index!25484 (_ BitVec 32))) (Intermediate!5814 (undefined!6626 Bool) (index!25485 (_ BitVec 32)) (x!54398 (_ BitVec 32))) (Undefined!5814) (MissingVacant!5814 (index!25486 (_ BitVec 32))) )
))
(declare-fun lt!264533 () SeekEntryResult!5814)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579639 (= res!367612 (or (= lt!264533 (MissingZero!5814 i!1108)) (= lt!264533 (MissingVacant!5814 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36193 0))(
  ( (array!36194 (arr!17367 (Array (_ BitVec 32) (_ BitVec 64))) (size!17731 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36193)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36193 (_ BitVec 32)) SeekEntryResult!5814)

(assert (=> b!579639 (= lt!264533 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579640 () Bool)

(declare-fun res!367607 () Bool)

(assert (=> b!579640 (=> (not res!367607) (not e!333023))))

(declare-fun arrayContainsKey!0 (array!36193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579640 (= res!367607 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579641 () Bool)

(declare-fun res!367613 () Bool)

(assert (=> b!579641 (=> (not res!367613) (not e!333025))))

(declare-datatypes ((List!11461 0))(
  ( (Nil!11458) (Cons!11457 (h!12502 (_ BitVec 64)) (t!17697 List!11461)) )
))
(declare-fun arrayNoDuplicates!0 (array!36193 (_ BitVec 32) List!11461) Bool)

(assert (=> b!579641 (= res!367613 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11458))))

(declare-fun b!579642 () Bool)

(declare-fun res!367610 () Bool)

(assert (=> b!579642 (=> (not res!367610) (not e!333025))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579642 (= res!367610 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17367 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17367 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579643 () Bool)

(declare-fun res!367609 () Bool)

(assert (=> b!579643 (=> (not res!367609) (not e!333023))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579643 (= res!367609 (validKeyInArray!0 (select (arr!17367 a!2986) j!136)))))

(declare-fun b!579644 () Bool)

(assert (=> b!579644 (= e!333025 false)))

(declare-fun lt!264532 () SeekEntryResult!5814)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36193 (_ BitVec 32)) SeekEntryResult!5814)

(assert (=> b!579644 (= lt!264532 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17367 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579645 () Bool)

(declare-fun res!367605 () Bool)

(assert (=> b!579645 (=> (not res!367605) (not e!333023))))

(assert (=> b!579645 (= res!367605 (and (= (size!17731 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17731 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17731 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579647 () Bool)

(declare-fun res!367606 () Bool)

(assert (=> b!579647 (=> (not res!367606) (not e!333025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36193 (_ BitVec 32)) Bool)

(assert (=> b!579647 (= res!367606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!367608 () Bool)

(assert (=> start!53338 (=> (not res!367608) (not e!333023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53338 (= res!367608 (validMask!0 mask!3053))))

(assert (=> start!53338 e!333023))

(assert (=> start!53338 true))

(declare-fun array_inv!13141 (array!36193) Bool)

(assert (=> start!53338 (array_inv!13141 a!2986)))

(declare-fun b!579646 () Bool)

(declare-fun res!367611 () Bool)

(assert (=> b!579646 (=> (not res!367611) (not e!333023))))

(assert (=> b!579646 (= res!367611 (validKeyInArray!0 k!1786))))

(assert (= (and start!53338 res!367608) b!579645))

(assert (= (and b!579645 res!367605) b!579643))

(assert (= (and b!579643 res!367609) b!579646))

(assert (= (and b!579646 res!367611) b!579640))

(assert (= (and b!579640 res!367607) b!579639))

(assert (= (and b!579639 res!367612) b!579647))

(assert (= (and b!579647 res!367606) b!579641))

(assert (= (and b!579641 res!367613) b!579642))

(assert (= (and b!579642 res!367610) b!579644))

(declare-fun m!558295 () Bool)

(assert (=> b!579641 m!558295))

(declare-fun m!558297 () Bool)

(assert (=> b!579642 m!558297))

(declare-fun m!558299 () Bool)

(assert (=> b!579642 m!558299))

(declare-fun m!558301 () Bool)

(assert (=> b!579642 m!558301))

(declare-fun m!558303 () Bool)

(assert (=> b!579643 m!558303))

(assert (=> b!579643 m!558303))

(declare-fun m!558305 () Bool)

(assert (=> b!579643 m!558305))

(declare-fun m!558307 () Bool)

(assert (=> b!579646 m!558307))

(declare-fun m!558309 () Bool)

(assert (=> b!579639 m!558309))

(declare-fun m!558311 () Bool)

(assert (=> start!53338 m!558311))

(declare-fun m!558313 () Bool)

(assert (=> start!53338 m!558313))

(declare-fun m!558315 () Bool)

(assert (=> b!579640 m!558315))

(declare-fun m!558317 () Bool)

(assert (=> b!579647 m!558317))

(assert (=> b!579644 m!558303))

(assert (=> b!579644 m!558303))

(declare-fun m!558319 () Bool)

(assert (=> b!579644 m!558319))

(push 1)

