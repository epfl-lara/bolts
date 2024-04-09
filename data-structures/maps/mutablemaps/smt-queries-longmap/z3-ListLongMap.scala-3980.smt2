; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53970 () Bool)

(assert start!53970)

(declare-fun b!588844 () Bool)

(declare-fun res!376573 () Bool)

(declare-fun e!336213 () Bool)

(assert (=> b!588844 (=> (not res!376573) (not e!336213))))

(declare-datatypes ((array!36768 0))(
  ( (array!36769 (arr!17653 (Array (_ BitVec 32) (_ BitVec 64))) (size!18017 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36768)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36768 (_ BitVec 32)) Bool)

(assert (=> b!588844 (= res!376573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588845 () Bool)

(declare-fun e!336212 () Bool)

(declare-fun e!336211 () Bool)

(assert (=> b!588845 (= e!336212 e!336211)))

(declare-fun res!376577 () Bool)

(assert (=> b!588845 (=> (not res!376577) (not e!336211))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6100 0))(
  ( (MissingZero!6100 (index!26630 (_ BitVec 32))) (Found!6100 (index!26631 (_ BitVec 32))) (Intermediate!6100 (undefined!6912 Bool) (index!26632 (_ BitVec 32)) (x!55453 (_ BitVec 32))) (Undefined!6100) (MissingVacant!6100 (index!26633 (_ BitVec 32))) )
))
(declare-fun lt!267078 () SeekEntryResult!6100)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!588845 (= res!376577 (and (= lt!267078 (Found!6100 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17653 a!2986) index!984) (select (arr!17653 a!2986) j!136))) (not (= (select (arr!17653 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36768 (_ BitVec 32)) SeekEntryResult!6100)

(assert (=> b!588845 (= lt!267078 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17653 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588847 () Bool)

(declare-fun res!376567 () Bool)

(declare-fun e!336215 () Bool)

(assert (=> b!588847 (=> (not res!376567) (not e!336215))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588847 (= res!376567 (and (= (size!18017 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18017 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18017 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588848 () Bool)

(declare-fun res!376572 () Bool)

(assert (=> b!588848 (=> (not res!376572) (not e!336215))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588848 (= res!376572 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588849 () Bool)

(declare-fun res!376566 () Bool)

(assert (=> b!588849 (=> (not res!376566) (not e!336215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588849 (= res!376566 (validKeyInArray!0 (select (arr!17653 a!2986) j!136)))))

(declare-fun b!588850 () Bool)

(assert (=> b!588850 (= e!336213 e!336212)))

(declare-fun res!376571 () Bool)

(assert (=> b!588850 (=> (not res!376571) (not e!336212))))

(assert (=> b!588850 (= res!376571 (= (select (store (arr!17653 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267079 () array!36768)

(assert (=> b!588850 (= lt!267079 (array!36769 (store (arr!17653 a!2986) i!1108 k0!1786) (size!18017 a!2986)))))

(declare-fun b!588851 () Bool)

(assert (=> b!588851 (= e!336215 e!336213)))

(declare-fun res!376574 () Bool)

(assert (=> b!588851 (=> (not res!376574) (not e!336213))))

(declare-fun lt!267075 () SeekEntryResult!6100)

(assert (=> b!588851 (= res!376574 (or (= lt!267075 (MissingZero!6100 i!1108)) (= lt!267075 (MissingVacant!6100 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36768 (_ BitVec 32)) SeekEntryResult!6100)

(assert (=> b!588851 (= lt!267075 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588852 () Bool)

(declare-fun res!376569 () Bool)

(assert (=> b!588852 (=> (not res!376569) (not e!336215))))

(assert (=> b!588852 (= res!376569 (validKeyInArray!0 k0!1786))))

(declare-fun b!588853 () Bool)

(declare-fun res!376568 () Bool)

(assert (=> b!588853 (=> (not res!376568) (not e!336213))))

(assert (=> b!588853 (= res!376568 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17653 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588846 () Bool)

(declare-datatypes ((Unit!18344 0))(
  ( (Unit!18345) )
))
(declare-fun e!336214 () Unit!18344)

(declare-fun Unit!18346 () Unit!18344)

(assert (=> b!588846 (= e!336214 Unit!18346)))

(declare-fun res!376570 () Bool)

(assert (=> start!53970 (=> (not res!376570) (not e!336215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53970 (= res!376570 (validMask!0 mask!3053))))

(assert (=> start!53970 e!336215))

(assert (=> start!53970 true))

(declare-fun array_inv!13427 (array!36768) Bool)

(assert (=> start!53970 (array_inv!13427 a!2986)))

(declare-fun b!588854 () Bool)

(assert (=> b!588854 (= e!336211 (not true))))

(declare-fun lt!267080 () Unit!18344)

(assert (=> b!588854 (= lt!267080 e!336214)))

(declare-fun c!66506 () Bool)

(declare-fun lt!267076 () (_ BitVec 64))

(assert (=> b!588854 (= c!66506 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267076 lt!267079 mask!3053) Undefined!6100))))

(declare-fun e!336216 () Bool)

(assert (=> b!588854 e!336216))

(declare-fun res!376575 () Bool)

(assert (=> b!588854 (=> (not res!376575) (not e!336216))))

(declare-fun lt!267074 () SeekEntryResult!6100)

(declare-fun lt!267077 () (_ BitVec 32))

(assert (=> b!588854 (= res!376575 (= lt!267074 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267077 vacantSpotIndex!68 lt!267076 lt!267079 mask!3053)))))

(assert (=> b!588854 (= lt!267074 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267077 vacantSpotIndex!68 (select (arr!17653 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588854 (= lt!267076 (select (store (arr!17653 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267073 () Unit!18344)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36768 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18344)

(assert (=> b!588854 (= lt!267073 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267077 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588854 (= lt!267077 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588855 () Bool)

(declare-fun Unit!18347 () Unit!18344)

(assert (=> b!588855 (= e!336214 Unit!18347)))

(assert (=> b!588855 false))

(declare-fun b!588856 () Bool)

(declare-fun res!376576 () Bool)

(assert (=> b!588856 (=> (not res!376576) (not e!336213))))

(declare-datatypes ((List!11747 0))(
  ( (Nil!11744) (Cons!11743 (h!12788 (_ BitVec 64)) (t!17983 List!11747)) )
))
(declare-fun arrayNoDuplicates!0 (array!36768 (_ BitVec 32) List!11747) Bool)

(assert (=> b!588856 (= res!376576 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11744))))

(declare-fun b!588857 () Bool)

(assert (=> b!588857 (= e!336216 (= lt!267078 lt!267074))))

(assert (= (and start!53970 res!376570) b!588847))

(assert (= (and b!588847 res!376567) b!588849))

(assert (= (and b!588849 res!376566) b!588852))

(assert (= (and b!588852 res!376569) b!588848))

(assert (= (and b!588848 res!376572) b!588851))

(assert (= (and b!588851 res!376574) b!588844))

(assert (= (and b!588844 res!376573) b!588856))

(assert (= (and b!588856 res!376576) b!588853))

(assert (= (and b!588853 res!376568) b!588850))

(assert (= (and b!588850 res!376571) b!588845))

(assert (= (and b!588845 res!376577) b!588854))

(assert (= (and b!588854 res!376575) b!588857))

(assert (= (and b!588854 c!66506) b!588855))

(assert (= (and b!588854 (not c!66506)) b!588846))

(declare-fun m!567443 () Bool)

(assert (=> b!588848 m!567443))

(declare-fun m!567445 () Bool)

(assert (=> b!588844 m!567445))

(declare-fun m!567447 () Bool)

(assert (=> b!588845 m!567447))

(declare-fun m!567449 () Bool)

(assert (=> b!588845 m!567449))

(assert (=> b!588845 m!567449))

(declare-fun m!567451 () Bool)

(assert (=> b!588845 m!567451))

(declare-fun m!567453 () Bool)

(assert (=> b!588854 m!567453))

(declare-fun m!567455 () Bool)

(assert (=> b!588854 m!567455))

(assert (=> b!588854 m!567449))

(declare-fun m!567457 () Bool)

(assert (=> b!588854 m!567457))

(assert (=> b!588854 m!567449))

(declare-fun m!567459 () Bool)

(assert (=> b!588854 m!567459))

(declare-fun m!567461 () Bool)

(assert (=> b!588854 m!567461))

(declare-fun m!567463 () Bool)

(assert (=> b!588854 m!567463))

(declare-fun m!567465 () Bool)

(assert (=> b!588854 m!567465))

(assert (=> b!588850 m!567457))

(declare-fun m!567467 () Bool)

(assert (=> b!588850 m!567467))

(declare-fun m!567469 () Bool)

(assert (=> b!588851 m!567469))

(declare-fun m!567471 () Bool)

(assert (=> b!588853 m!567471))

(assert (=> b!588849 m!567449))

(assert (=> b!588849 m!567449))

(declare-fun m!567473 () Bool)

(assert (=> b!588849 m!567473))

(declare-fun m!567475 () Bool)

(assert (=> b!588852 m!567475))

(declare-fun m!567477 () Bool)

(assert (=> start!53970 m!567477))

(declare-fun m!567479 () Bool)

(assert (=> start!53970 m!567479))

(declare-fun m!567481 () Bool)

(assert (=> b!588856 m!567481))

(check-sat (not b!588852) (not b!588844) (not b!588854) (not b!588848) (not b!588849) (not start!53970) (not b!588856) (not b!588851) (not b!588845))
(check-sat)
