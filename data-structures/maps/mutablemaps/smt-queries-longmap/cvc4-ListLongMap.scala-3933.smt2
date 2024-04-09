; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53630 () Bool)

(assert start!53630)

(declare-fun b!583731 () Bool)

(declare-fun res!371697 () Bool)

(declare-fun e!334374 () Bool)

(assert (=> b!583731 (=> (not res!371697) (not e!334374))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583731 (= res!371697 (validKeyInArray!0 k!1786))))

(declare-fun b!583732 () Bool)

(declare-fun e!334375 () Bool)

(assert (=> b!583732 (= e!334374 e!334375)))

(declare-fun res!371705 () Bool)

(assert (=> b!583732 (=> (not res!371705) (not e!334375))))

(declare-datatypes ((SeekEntryResult!5960 0))(
  ( (MissingZero!5960 (index!26067 (_ BitVec 32))) (Found!5960 (index!26068 (_ BitVec 32))) (Intermediate!5960 (undefined!6772 Bool) (index!26069 (_ BitVec 32)) (x!54928 (_ BitVec 32))) (Undefined!5960) (MissingVacant!5960 (index!26070 (_ BitVec 32))) )
))
(declare-fun lt!265407 () SeekEntryResult!5960)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583732 (= res!371705 (or (= lt!265407 (MissingZero!5960 i!1108)) (= lt!265407 (MissingVacant!5960 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36485 0))(
  ( (array!36486 (arr!17513 (Array (_ BitVec 32) (_ BitVec 64))) (size!17877 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36485)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36485 (_ BitVec 32)) SeekEntryResult!5960)

(assert (=> b!583732 (= lt!265407 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583733 () Bool)

(declare-fun res!371702 () Bool)

(assert (=> b!583733 (=> (not res!371702) (not e!334375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36485 (_ BitVec 32)) Bool)

(assert (=> b!583733 (= res!371702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583734 () Bool)

(declare-fun e!334373 () Bool)

(assert (=> b!583734 (= e!334373 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265408 () SeekEntryResult!5960)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265409 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36485 (_ BitVec 32)) SeekEntryResult!5960)

(assert (=> b!583734 (= lt!265408 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265409 vacantSpotIndex!68 (select (arr!17513 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583735 () Bool)

(assert (=> b!583735 (= e!334375 e!334373)))

(declare-fun res!371706 () Bool)

(assert (=> b!583735 (=> (not res!371706) (not e!334373))))

(assert (=> b!583735 (= res!371706 (and (bvsge lt!265409 #b00000000000000000000000000000000) (bvslt lt!265409 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583735 (= lt!265409 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583736 () Bool)

(declare-fun res!371704 () Bool)

(assert (=> b!583736 (=> (not res!371704) (not e!334374))))

(assert (=> b!583736 (= res!371704 (and (= (size!17877 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17877 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17877 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583738 () Bool)

(declare-fun res!371700 () Bool)

(assert (=> b!583738 (=> (not res!371700) (not e!334374))))

(declare-fun arrayContainsKey!0 (array!36485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583738 (= res!371700 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583739 () Bool)

(declare-fun res!371707 () Bool)

(assert (=> b!583739 (=> (not res!371707) (not e!334375))))

(declare-datatypes ((List!11607 0))(
  ( (Nil!11604) (Cons!11603 (h!12648 (_ BitVec 64)) (t!17843 List!11607)) )
))
(declare-fun arrayNoDuplicates!0 (array!36485 (_ BitVec 32) List!11607) Bool)

(assert (=> b!583739 (= res!371707 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11604))))

(declare-fun b!583740 () Bool)

(declare-fun res!371698 () Bool)

(assert (=> b!583740 (=> (not res!371698) (not e!334375))))

(assert (=> b!583740 (= res!371698 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17513 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17513 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583741 () Bool)

(declare-fun res!371701 () Bool)

(assert (=> b!583741 (=> (not res!371701) (not e!334375))))

(assert (=> b!583741 (= res!371701 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17513 a!2986) j!136) a!2986 mask!3053) (Found!5960 j!136)))))

(declare-fun b!583742 () Bool)

(declare-fun res!371708 () Bool)

(assert (=> b!583742 (=> (not res!371708) (not e!334375))))

(assert (=> b!583742 (= res!371708 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17513 a!2986) index!984) (select (arr!17513 a!2986) j!136))) (not (= (select (arr!17513 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!371703 () Bool)

(assert (=> start!53630 (=> (not res!371703) (not e!334374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53630 (= res!371703 (validMask!0 mask!3053))))

(assert (=> start!53630 e!334374))

(assert (=> start!53630 true))

(declare-fun array_inv!13287 (array!36485) Bool)

(assert (=> start!53630 (array_inv!13287 a!2986)))

(declare-fun b!583737 () Bool)

(declare-fun res!371699 () Bool)

(assert (=> b!583737 (=> (not res!371699) (not e!334374))))

(assert (=> b!583737 (= res!371699 (validKeyInArray!0 (select (arr!17513 a!2986) j!136)))))

(assert (= (and start!53630 res!371703) b!583736))

(assert (= (and b!583736 res!371704) b!583737))

(assert (= (and b!583737 res!371699) b!583731))

(assert (= (and b!583731 res!371697) b!583738))

(assert (= (and b!583738 res!371700) b!583732))

(assert (= (and b!583732 res!371705) b!583733))

(assert (= (and b!583733 res!371702) b!583739))

(assert (= (and b!583739 res!371707) b!583740))

(assert (= (and b!583740 res!371698) b!583741))

(assert (= (and b!583741 res!371701) b!583742))

(assert (= (and b!583742 res!371708) b!583735))

(assert (= (and b!583735 res!371706) b!583734))

(declare-fun m!562193 () Bool)

(assert (=> start!53630 m!562193))

(declare-fun m!562195 () Bool)

(assert (=> start!53630 m!562195))

(declare-fun m!562197 () Bool)

(assert (=> b!583741 m!562197))

(assert (=> b!583741 m!562197))

(declare-fun m!562199 () Bool)

(assert (=> b!583741 m!562199))

(declare-fun m!562201 () Bool)

(assert (=> b!583732 m!562201))

(declare-fun m!562203 () Bool)

(assert (=> b!583740 m!562203))

(declare-fun m!562205 () Bool)

(assert (=> b!583740 m!562205))

(declare-fun m!562207 () Bool)

(assert (=> b!583740 m!562207))

(declare-fun m!562209 () Bool)

(assert (=> b!583733 m!562209))

(declare-fun m!562211 () Bool)

(assert (=> b!583738 m!562211))

(assert (=> b!583737 m!562197))

(assert (=> b!583737 m!562197))

(declare-fun m!562213 () Bool)

(assert (=> b!583737 m!562213))

(declare-fun m!562215 () Bool)

(assert (=> b!583739 m!562215))

(declare-fun m!562217 () Bool)

(assert (=> b!583742 m!562217))

(assert (=> b!583742 m!562197))

(declare-fun m!562219 () Bool)

(assert (=> b!583735 m!562219))

(declare-fun m!562221 () Bool)

(assert (=> b!583731 m!562221))

(assert (=> b!583734 m!562197))

(assert (=> b!583734 m!562197))

(declare-fun m!562223 () Bool)

(assert (=> b!583734 m!562223))

(push 1)

(assert (not b!583733))

(assert (not b!583731))

(assert (not b!583735))

