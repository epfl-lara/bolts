; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53680 () Bool)

(assert start!53680)

(declare-fun b!584631 () Bool)

(declare-fun res!372602 () Bool)

(declare-fun e!334672 () Bool)

(assert (=> b!584631 (=> (not res!372602) (not e!334672))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36535 0))(
  ( (array!36536 (arr!17538 (Array (_ BitVec 32) (_ BitVec 64))) (size!17902 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36535)

(declare-datatypes ((SeekEntryResult!5985 0))(
  ( (MissingZero!5985 (index!26167 (_ BitVec 32))) (Found!5985 (index!26168 (_ BitVec 32))) (Intermediate!5985 (undefined!6797 Bool) (index!26169 (_ BitVec 32)) (x!55025 (_ BitVec 32))) (Undefined!5985) (MissingVacant!5985 (index!26170 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36535 (_ BitVec 32)) SeekEntryResult!5985)

(assert (=> b!584631 (= res!372602 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17538 a!2986) j!136) a!2986 mask!3053) (Found!5985 j!136)))))

(declare-fun b!584632 () Bool)

(declare-fun e!334675 () Bool)

(assert (=> b!584632 (= e!334675 e!334672)))

(declare-fun res!372600 () Bool)

(assert (=> b!584632 (=> (not res!372600) (not e!334672))))

(declare-fun lt!265634 () SeekEntryResult!5985)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584632 (= res!372600 (or (= lt!265634 (MissingZero!5985 i!1108)) (= lt!265634 (MissingVacant!5985 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36535 (_ BitVec 32)) SeekEntryResult!5985)

(assert (=> b!584632 (= lt!265634 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584633 () Bool)

(declare-fun res!372597 () Bool)

(assert (=> b!584633 (=> (not res!372597) (not e!334672))))

(assert (=> b!584633 (= res!372597 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17538 a!2986) index!984) (select (arr!17538 a!2986) j!136))) (not (= (select (arr!17538 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584634 () Bool)

(declare-fun e!334673 () Bool)

(assert (=> b!584634 (= e!334673 false)))

(declare-fun lt!265632 () SeekEntryResult!5985)

(declare-fun lt!265633 () (_ BitVec 32))

(assert (=> b!584634 (= lt!265632 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265633 vacantSpotIndex!68 (select (arr!17538 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372604 () Bool)

(assert (=> start!53680 (=> (not res!372604) (not e!334675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53680 (= res!372604 (validMask!0 mask!3053))))

(assert (=> start!53680 e!334675))

(assert (=> start!53680 true))

(declare-fun array_inv!13312 (array!36535) Bool)

(assert (=> start!53680 (array_inv!13312 a!2986)))

(declare-fun b!584635 () Bool)

(declare-fun res!372607 () Bool)

(assert (=> b!584635 (=> (not res!372607) (not e!334675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584635 (= res!372607 (validKeyInArray!0 (select (arr!17538 a!2986) j!136)))))

(declare-fun b!584636 () Bool)

(declare-fun res!372608 () Bool)

(assert (=> b!584636 (=> (not res!372608) (not e!334672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36535 (_ BitVec 32)) Bool)

(assert (=> b!584636 (= res!372608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584637 () Bool)

(assert (=> b!584637 (= e!334672 e!334673)))

(declare-fun res!372601 () Bool)

(assert (=> b!584637 (=> (not res!372601) (not e!334673))))

(assert (=> b!584637 (= res!372601 (and (bvsge lt!265633 #b00000000000000000000000000000000) (bvslt lt!265633 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584637 (= lt!265633 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584638 () Bool)

(declare-fun res!372606 () Bool)

(assert (=> b!584638 (=> (not res!372606) (not e!334672))))

(assert (=> b!584638 (= res!372606 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17538 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17538 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584639 () Bool)

(declare-fun res!372598 () Bool)

(assert (=> b!584639 (=> (not res!372598) (not e!334675))))

(assert (=> b!584639 (= res!372598 (validKeyInArray!0 k!1786))))

(declare-fun b!584640 () Bool)

(declare-fun res!372603 () Bool)

(assert (=> b!584640 (=> (not res!372603) (not e!334675))))

(declare-fun arrayContainsKey!0 (array!36535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584640 (= res!372603 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584641 () Bool)

(declare-fun res!372599 () Bool)

(assert (=> b!584641 (=> (not res!372599) (not e!334672))))

(declare-datatypes ((List!11632 0))(
  ( (Nil!11629) (Cons!11628 (h!12673 (_ BitVec 64)) (t!17868 List!11632)) )
))
(declare-fun arrayNoDuplicates!0 (array!36535 (_ BitVec 32) List!11632) Bool)

(assert (=> b!584641 (= res!372599 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11629))))

(declare-fun b!584642 () Bool)

(declare-fun res!372605 () Bool)

(assert (=> b!584642 (=> (not res!372605) (not e!334675))))

(assert (=> b!584642 (= res!372605 (and (= (size!17902 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17902 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17902 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53680 res!372604) b!584642))

(assert (= (and b!584642 res!372605) b!584635))

(assert (= (and b!584635 res!372607) b!584639))

(assert (= (and b!584639 res!372598) b!584640))

(assert (= (and b!584640 res!372603) b!584632))

(assert (= (and b!584632 res!372600) b!584636))

(assert (= (and b!584636 res!372608) b!584641))

(assert (= (and b!584641 res!372599) b!584638))

(assert (= (and b!584638 res!372606) b!584631))

(assert (= (and b!584631 res!372602) b!584633))

(assert (= (and b!584633 res!372597) b!584637))

(assert (= (and b!584637 res!372601) b!584634))

(declare-fun m!562993 () Bool)

(assert (=> b!584640 m!562993))

(declare-fun m!562995 () Bool)

(assert (=> b!584636 m!562995))

(declare-fun m!562997 () Bool)

(assert (=> b!584638 m!562997))

(declare-fun m!562999 () Bool)

(assert (=> b!584638 m!562999))

(declare-fun m!563001 () Bool)

(assert (=> b!584638 m!563001))

(declare-fun m!563003 () Bool)

(assert (=> start!53680 m!563003))

(declare-fun m!563005 () Bool)

(assert (=> start!53680 m!563005))

(declare-fun m!563007 () Bool)

(assert (=> b!584635 m!563007))

(assert (=> b!584635 m!563007))

(declare-fun m!563009 () Bool)

(assert (=> b!584635 m!563009))

(declare-fun m!563011 () Bool)

(assert (=> b!584637 m!563011))

(assert (=> b!584634 m!563007))

(assert (=> b!584634 m!563007))

(declare-fun m!563013 () Bool)

(assert (=> b!584634 m!563013))

(declare-fun m!563015 () Bool)

(assert (=> b!584632 m!563015))

(assert (=> b!584631 m!563007))

(assert (=> b!584631 m!563007))

(declare-fun m!563017 () Bool)

(assert (=> b!584631 m!563017))

(declare-fun m!563019 () Bool)

(assert (=> b!584639 m!563019))

(declare-fun m!563021 () Bool)

(assert (=> b!584633 m!563021))

(assert (=> b!584633 m!563007))

(declare-fun m!563023 () Bool)

(assert (=> b!584641 m!563023))

(push 1)

