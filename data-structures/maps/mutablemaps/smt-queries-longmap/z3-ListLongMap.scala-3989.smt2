; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54074 () Bool)

(assert start!54074)

(declare-fun b!590287 () Bool)

(declare-fun e!337003 () Bool)

(declare-datatypes ((SeekEntryResult!6127 0))(
  ( (MissingZero!6127 (index!26740 (_ BitVec 32))) (Found!6127 (index!26741 (_ BitVec 32))) (Intermediate!6127 (undefined!6939 Bool) (index!26742 (_ BitVec 32)) (x!55559 (_ BitVec 32))) (Undefined!6127) (MissingVacant!6127 (index!26743 (_ BitVec 32))) )
))
(declare-fun lt!267852 () SeekEntryResult!6127)

(declare-fun lt!267854 () SeekEntryResult!6127)

(assert (=> b!590287 (= e!337003 (= lt!267852 lt!267854))))

(declare-fun b!590289 () Bool)

(declare-fun res!377687 () Bool)

(declare-fun e!337011 () Bool)

(assert (=> b!590289 (=> (not res!377687) (not e!337011))))

(declare-datatypes ((array!36824 0))(
  ( (array!36825 (arr!17680 (Array (_ BitVec 32) (_ BitVec 64))) (size!18044 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36824)

(declare-datatypes ((List!11774 0))(
  ( (Nil!11771) (Cons!11770 (h!12815 (_ BitVec 64)) (t!18010 List!11774)) )
))
(declare-fun arrayNoDuplicates!0 (array!36824 (_ BitVec 32) List!11774) Bool)

(assert (=> b!590289 (= res!377687 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11771))))

(declare-fun b!590290 () Bool)

(declare-datatypes ((Unit!18452 0))(
  ( (Unit!18453) )
))
(declare-fun e!337009 () Unit!18452)

(declare-fun Unit!18454 () Unit!18452)

(assert (=> b!590290 (= e!337009 Unit!18454)))

(assert (=> b!590290 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun e!337010 () Bool)

(declare-fun lt!267851 () (_ BitVec 64))

(declare-fun b!590291 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590291 (= e!337010 (or (not (= (select (arr!17680 a!2986) j!136) lt!267851)) (not (= (select (arr!17680 a!2986) j!136) (select (store (arr!17680 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984) (bvslt index!984 (size!18044 a!2986))))))

(declare-fun e!337008 () Bool)

(assert (=> b!590291 e!337008))

(declare-fun res!377680 () Bool)

(assert (=> b!590291 (=> (not res!377680) (not e!337008))))

(assert (=> b!590291 (= res!377680 (= (select (store (arr!17680 a!2986) i!1108 k0!1786) index!984) (select (arr!17680 a!2986) j!136)))))

(declare-fun b!590292 () Bool)

(declare-fun e!337012 () Bool)

(assert (=> b!590292 (= e!337012 (not e!337010))))

(declare-fun res!377684 () Bool)

(assert (=> b!590292 (=> res!377684 e!337010)))

(declare-fun lt!267849 () SeekEntryResult!6127)

(assert (=> b!590292 (= res!377684 (not (= lt!267849 (Found!6127 index!984))))))

(declare-fun lt!267853 () Unit!18452)

(assert (=> b!590292 (= lt!267853 e!337009)))

(declare-fun c!66671 () Bool)

(assert (=> b!590292 (= c!66671 (= lt!267849 Undefined!6127))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!267850 () array!36824)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36824 (_ BitVec 32)) SeekEntryResult!6127)

(assert (=> b!590292 (= lt!267849 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267851 lt!267850 mask!3053))))

(assert (=> b!590292 e!337003))

(declare-fun res!377689 () Bool)

(assert (=> b!590292 (=> (not res!377689) (not e!337003))))

(declare-fun lt!267855 () (_ BitVec 32))

(assert (=> b!590292 (= res!377689 (= lt!267854 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267855 vacantSpotIndex!68 lt!267851 lt!267850 mask!3053)))))

(assert (=> b!590292 (= lt!267854 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267855 vacantSpotIndex!68 (select (arr!17680 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590292 (= lt!267851 (select (store (arr!17680 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267847 () Unit!18452)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36824 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18452)

(assert (=> b!590292 (= lt!267847 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267855 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590292 (= lt!267855 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590293 () Bool)

(declare-fun res!377693 () Bool)

(declare-fun e!337004 () Bool)

(assert (=> b!590293 (=> (not res!377693) (not e!337004))))

(assert (=> b!590293 (= res!377693 (and (= (size!18044 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18044 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18044 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590294 () Bool)

(declare-fun res!377682 () Bool)

(assert (=> b!590294 (=> (not res!377682) (not e!337004))))

(declare-fun arrayContainsKey!0 (array!36824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590294 (= res!377682 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590295 () Bool)

(declare-fun e!337006 () Bool)

(assert (=> b!590295 (= e!337011 e!337006)))

(declare-fun res!377691 () Bool)

(assert (=> b!590295 (=> (not res!377691) (not e!337006))))

(assert (=> b!590295 (= res!377691 (= (select (store (arr!17680 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590295 (= lt!267850 (array!36825 (store (arr!17680 a!2986) i!1108 k0!1786) (size!18044 a!2986)))))

(declare-fun b!590296 () Bool)

(assert (=> b!590296 (= e!337004 e!337011)))

(declare-fun res!377686 () Bool)

(assert (=> b!590296 (=> (not res!377686) (not e!337011))))

(declare-fun lt!267848 () SeekEntryResult!6127)

(assert (=> b!590296 (= res!377686 (or (= lt!267848 (MissingZero!6127 i!1108)) (= lt!267848 (MissingVacant!6127 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36824 (_ BitVec 32)) SeekEntryResult!6127)

(assert (=> b!590296 (= lt!267848 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!590297 () Bool)

(declare-fun Unit!18455 () Unit!18452)

(assert (=> b!590297 (= e!337009 Unit!18455)))

(declare-fun b!590298 () Bool)

(declare-fun res!377692 () Bool)

(assert (=> b!590298 (=> (not res!377692) (not e!337004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590298 (= res!377692 (validKeyInArray!0 k0!1786))))

(declare-fun b!590299 () Bool)

(declare-fun e!337005 () Bool)

(assert (=> b!590299 (= e!337008 e!337005)))

(declare-fun res!377688 () Bool)

(assert (=> b!590299 (=> res!377688 e!337005)))

(assert (=> b!590299 (= res!377688 (or (not (= (select (arr!17680 a!2986) j!136) lt!267851)) (not (= (select (arr!17680 a!2986) j!136) (select (store (arr!17680 a!2986) i!1108 k0!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590288 () Bool)

(declare-fun res!377681 () Bool)

(assert (=> b!590288 (=> (not res!377681) (not e!337011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36824 (_ BitVec 32)) Bool)

(assert (=> b!590288 (= res!377681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!377679 () Bool)

(assert (=> start!54074 (=> (not res!377679) (not e!337004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54074 (= res!377679 (validMask!0 mask!3053))))

(assert (=> start!54074 e!337004))

(assert (=> start!54074 true))

(declare-fun array_inv!13454 (array!36824) Bool)

(assert (=> start!54074 (array_inv!13454 a!2986)))

(declare-fun b!590300 () Bool)

(declare-fun res!377683 () Bool)

(assert (=> b!590300 (=> (not res!377683) (not e!337011))))

(assert (=> b!590300 (= res!377683 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17680 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590301 () Bool)

(declare-fun res!377690 () Bool)

(assert (=> b!590301 (=> (not res!377690) (not e!337004))))

(assert (=> b!590301 (= res!377690 (validKeyInArray!0 (select (arr!17680 a!2986) j!136)))))

(declare-fun b!590302 () Bool)

(assert (=> b!590302 (= e!337005 (arrayContainsKey!0 lt!267850 (select (arr!17680 a!2986) j!136) j!136))))

(declare-fun b!590303 () Bool)

(assert (=> b!590303 (= e!337006 e!337012)))

(declare-fun res!377685 () Bool)

(assert (=> b!590303 (=> (not res!377685) (not e!337012))))

(assert (=> b!590303 (= res!377685 (and (= lt!267852 (Found!6127 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17680 a!2986) index!984) (select (arr!17680 a!2986) j!136))) (not (= (select (arr!17680 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!590303 (= lt!267852 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17680 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54074 res!377679) b!590293))

(assert (= (and b!590293 res!377693) b!590301))

(assert (= (and b!590301 res!377690) b!590298))

(assert (= (and b!590298 res!377692) b!590294))

(assert (= (and b!590294 res!377682) b!590296))

(assert (= (and b!590296 res!377686) b!590288))

(assert (= (and b!590288 res!377681) b!590289))

(assert (= (and b!590289 res!377687) b!590300))

(assert (= (and b!590300 res!377683) b!590295))

(assert (= (and b!590295 res!377691) b!590303))

(assert (= (and b!590303 res!377685) b!590292))

(assert (= (and b!590292 res!377689) b!590287))

(assert (= (and b!590292 c!66671) b!590290))

(assert (= (and b!590292 (not c!66671)) b!590297))

(assert (= (and b!590292 (not res!377684)) b!590291))

(assert (= (and b!590291 res!377680) b!590299))

(assert (= (and b!590299 (not res!377688)) b!590302))

(declare-fun m!568721 () Bool)

(assert (=> b!590303 m!568721))

(declare-fun m!568723 () Bool)

(assert (=> b!590303 m!568723))

(assert (=> b!590303 m!568723))

(declare-fun m!568725 () Bool)

(assert (=> b!590303 m!568725))

(assert (=> b!590302 m!568723))

(assert (=> b!590302 m!568723))

(declare-fun m!568727 () Bool)

(assert (=> b!590302 m!568727))

(declare-fun m!568729 () Bool)

(assert (=> b!590292 m!568729))

(declare-fun m!568731 () Bool)

(assert (=> b!590292 m!568731))

(assert (=> b!590292 m!568723))

(declare-fun m!568733 () Bool)

(assert (=> b!590292 m!568733))

(declare-fun m!568735 () Bool)

(assert (=> b!590292 m!568735))

(declare-fun m!568737 () Bool)

(assert (=> b!590292 m!568737))

(assert (=> b!590292 m!568723))

(declare-fun m!568739 () Bool)

(assert (=> b!590292 m!568739))

(declare-fun m!568741 () Bool)

(assert (=> b!590292 m!568741))

(declare-fun m!568743 () Bool)

(assert (=> b!590288 m!568743))

(assert (=> b!590291 m!568723))

(assert (=> b!590291 m!568733))

(declare-fun m!568745 () Bool)

(assert (=> b!590291 m!568745))

(assert (=> b!590301 m!568723))

(assert (=> b!590301 m!568723))

(declare-fun m!568747 () Bool)

(assert (=> b!590301 m!568747))

(declare-fun m!568749 () Bool)

(assert (=> start!54074 m!568749))

(declare-fun m!568751 () Bool)

(assert (=> start!54074 m!568751))

(declare-fun m!568753 () Bool)

(assert (=> b!590294 m!568753))

(declare-fun m!568755 () Bool)

(assert (=> b!590296 m!568755))

(declare-fun m!568757 () Bool)

(assert (=> b!590300 m!568757))

(assert (=> b!590295 m!568733))

(declare-fun m!568759 () Bool)

(assert (=> b!590295 m!568759))

(declare-fun m!568761 () Bool)

(assert (=> b!590289 m!568761))

(assert (=> b!590299 m!568723))

(assert (=> b!590299 m!568733))

(assert (=> b!590299 m!568745))

(declare-fun m!568763 () Bool)

(assert (=> b!590298 m!568763))

(check-sat (not b!590294) (not b!590288) (not b!590296) (not b!590292) (not b!590289) (not b!590301) (not b!590302) (not b!590303) (not start!54074) (not b!590298))
(check-sat)
