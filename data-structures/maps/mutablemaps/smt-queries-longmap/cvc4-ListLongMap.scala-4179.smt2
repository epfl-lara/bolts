; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57004 () Bool)

(assert start!57004)

(declare-fun b!630589 () Bool)

(declare-fun res!407762 () Bool)

(declare-fun e!360573 () Bool)

(assert (=> b!630589 (=> (not res!407762) (not e!360573))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!38041 0))(
  ( (array!38042 (arr!18251 (Array (_ BitVec 32) (_ BitVec 64))) (size!18615 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38041)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630589 (= res!407762 (and (= (size!18615 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18615 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18615 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630590 () Bool)

(declare-fun e!360571 () Bool)

(declare-datatypes ((SeekEntryResult!6698 0))(
  ( (MissingZero!6698 (index!29081 (_ BitVec 32))) (Found!6698 (index!29082 (_ BitVec 32))) (Intermediate!6698 (undefined!7510 Bool) (index!29083 (_ BitVec 32)) (x!57845 (_ BitVec 32))) (Undefined!6698) (MissingVacant!6698 (index!29084 (_ BitVec 32))) )
))
(declare-fun lt!291314 () SeekEntryResult!6698)

(declare-fun lt!291321 () SeekEntryResult!6698)

(assert (=> b!630590 (= e!360571 (= lt!291314 lt!291321))))

(declare-fun b!630591 () Bool)

(declare-fun res!407760 () Bool)

(assert (=> b!630591 (=> (not res!407760) (not e!360573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630591 (= res!407760 (validKeyInArray!0 (select (arr!18251 a!2986) j!136)))))

(declare-fun b!630592 () Bool)

(declare-fun e!360576 () Bool)

(declare-fun e!360572 () Bool)

(assert (=> b!630592 (= e!360576 e!360572)))

(declare-fun res!407752 () Bool)

(assert (=> b!630592 (=> (not res!407752) (not e!360572))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!630592 (= res!407752 (= (select (store (arr!18251 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291316 () array!38041)

(assert (=> b!630592 (= lt!291316 (array!38042 (store (arr!18251 a!2986) i!1108 k!1786) (size!18615 a!2986)))))

(declare-fun b!630593 () Bool)

(declare-fun res!407751 () Bool)

(assert (=> b!630593 (=> (not res!407751) (not e!360576))))

(declare-datatypes ((List!12345 0))(
  ( (Nil!12342) (Cons!12341 (h!13386 (_ BitVec 64)) (t!18581 List!12345)) )
))
(declare-fun arrayNoDuplicates!0 (array!38041 (_ BitVec 32) List!12345) Bool)

(assert (=> b!630593 (= res!407751 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12342))))

(declare-fun b!630594 () Bool)

(declare-fun e!360575 () Bool)

(assert (=> b!630594 (= e!360575 (not true))))

(declare-datatypes ((Unit!21150 0))(
  ( (Unit!21151) )
))
(declare-fun lt!291319 () Unit!21150)

(declare-fun e!360577 () Unit!21150)

(assert (=> b!630594 (= lt!291319 e!360577)))

(declare-fun lt!291317 () (_ BitVec 64))

(declare-fun c!71786 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38041 (_ BitVec 32)) SeekEntryResult!6698)

(assert (=> b!630594 (= c!71786 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291317 lt!291316 mask!3053) Undefined!6698))))

(assert (=> b!630594 e!360571))

(declare-fun res!407753 () Bool)

(assert (=> b!630594 (=> (not res!407753) (not e!360571))))

(declare-fun lt!291315 () (_ BitVec 32))

(assert (=> b!630594 (= res!407753 (= lt!291321 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291315 vacantSpotIndex!68 lt!291317 lt!291316 mask!3053)))))

(assert (=> b!630594 (= lt!291321 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291315 vacantSpotIndex!68 (select (arr!18251 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630594 (= lt!291317 (select (store (arr!18251 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291320 () Unit!21150)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21150)

(assert (=> b!630594 (= lt!291320 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291315 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630594 (= lt!291315 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630595 () Bool)

(assert (=> b!630595 (= e!360572 e!360575)))

(declare-fun res!407754 () Bool)

(assert (=> b!630595 (=> (not res!407754) (not e!360575))))

(assert (=> b!630595 (= res!407754 (and (= lt!291314 (Found!6698 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18251 a!2986) index!984) (select (arr!18251 a!2986) j!136))) (not (= (select (arr!18251 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630595 (= lt!291314 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18251 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630596 () Bool)

(assert (=> b!630596 (= e!360573 e!360576)))

(declare-fun res!407757 () Bool)

(assert (=> b!630596 (=> (not res!407757) (not e!360576))))

(declare-fun lt!291318 () SeekEntryResult!6698)

(assert (=> b!630596 (= res!407757 (or (= lt!291318 (MissingZero!6698 i!1108)) (= lt!291318 (MissingVacant!6698 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38041 (_ BitVec 32)) SeekEntryResult!6698)

(assert (=> b!630596 (= lt!291318 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!630597 () Bool)

(declare-fun Unit!21152 () Unit!21150)

(assert (=> b!630597 (= e!360577 Unit!21152)))

(assert (=> b!630597 false))

(declare-fun b!630598 () Bool)

(declare-fun res!407761 () Bool)

(assert (=> b!630598 (=> (not res!407761) (not e!360576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38041 (_ BitVec 32)) Bool)

(assert (=> b!630598 (= res!407761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630599 () Bool)

(declare-fun res!407755 () Bool)

(assert (=> b!630599 (=> (not res!407755) (not e!360573))))

(assert (=> b!630599 (= res!407755 (validKeyInArray!0 k!1786))))

(declare-fun b!630600 () Bool)

(declare-fun res!407759 () Bool)

(assert (=> b!630600 (=> (not res!407759) (not e!360573))))

(declare-fun arrayContainsKey!0 (array!38041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630600 (= res!407759 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630601 () Bool)

(declare-fun res!407756 () Bool)

(assert (=> b!630601 (=> (not res!407756) (not e!360576))))

(assert (=> b!630601 (= res!407756 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18251 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630602 () Bool)

(declare-fun Unit!21153 () Unit!21150)

(assert (=> b!630602 (= e!360577 Unit!21153)))

(declare-fun res!407758 () Bool)

(assert (=> start!57004 (=> (not res!407758) (not e!360573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57004 (= res!407758 (validMask!0 mask!3053))))

(assert (=> start!57004 e!360573))

(assert (=> start!57004 true))

(declare-fun array_inv!14025 (array!38041) Bool)

(assert (=> start!57004 (array_inv!14025 a!2986)))

(assert (= (and start!57004 res!407758) b!630589))

(assert (= (and b!630589 res!407762) b!630591))

(assert (= (and b!630591 res!407760) b!630599))

(assert (= (and b!630599 res!407755) b!630600))

(assert (= (and b!630600 res!407759) b!630596))

(assert (= (and b!630596 res!407757) b!630598))

(assert (= (and b!630598 res!407761) b!630593))

(assert (= (and b!630593 res!407751) b!630601))

(assert (= (and b!630601 res!407756) b!630592))

(assert (= (and b!630592 res!407752) b!630595))

(assert (= (and b!630595 res!407754) b!630594))

(assert (= (and b!630594 res!407753) b!630590))

(assert (= (and b!630594 c!71786) b!630597))

(assert (= (and b!630594 (not c!71786)) b!630602))

(declare-fun m!605609 () Bool)

(assert (=> b!630599 m!605609))

(declare-fun m!605611 () Bool)

(assert (=> b!630594 m!605611))

(declare-fun m!605613 () Bool)

(assert (=> b!630594 m!605613))

(declare-fun m!605615 () Bool)

(assert (=> b!630594 m!605615))

(declare-fun m!605617 () Bool)

(assert (=> b!630594 m!605617))

(declare-fun m!605619 () Bool)

(assert (=> b!630594 m!605619))

(declare-fun m!605621 () Bool)

(assert (=> b!630594 m!605621))

(declare-fun m!605623 () Bool)

(assert (=> b!630594 m!605623))

(assert (=> b!630594 m!605611))

(declare-fun m!605625 () Bool)

(assert (=> b!630594 m!605625))

(declare-fun m!605627 () Bool)

(assert (=> start!57004 m!605627))

(declare-fun m!605629 () Bool)

(assert (=> start!57004 m!605629))

(declare-fun m!605631 () Bool)

(assert (=> b!630600 m!605631))

(assert (=> b!630591 m!605611))

(assert (=> b!630591 m!605611))

(declare-fun m!605633 () Bool)

(assert (=> b!630591 m!605633))

(assert (=> b!630592 m!605619))

(declare-fun m!605635 () Bool)

(assert (=> b!630592 m!605635))

(declare-fun m!605637 () Bool)

(assert (=> b!630596 m!605637))

(declare-fun m!605639 () Bool)

(assert (=> b!630601 m!605639))

(declare-fun m!605641 () Bool)

(assert (=> b!630595 m!605641))

(assert (=> b!630595 m!605611))

(assert (=> b!630595 m!605611))

(declare-fun m!605643 () Bool)

(assert (=> b!630595 m!605643))

(declare-fun m!605645 () Bool)

(assert (=> b!630593 m!605645))

(declare-fun m!605647 () Bool)

(assert (=> b!630598 m!605647))

(push 1)

