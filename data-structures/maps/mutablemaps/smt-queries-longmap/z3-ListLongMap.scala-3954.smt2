; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53754 () Bool)

(assert start!53754)

(declare-fun b!585913 () Bool)

(declare-fun e!335066 () Bool)

(assert (=> b!585913 (= e!335066 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265965 () (_ BitVec 32))

(declare-datatypes ((array!36609 0))(
  ( (array!36610 (arr!17575 (Array (_ BitVec 32) (_ BitVec 64))) (size!17939 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36609)

(declare-datatypes ((SeekEntryResult!6022 0))(
  ( (MissingZero!6022 (index!26315 (_ BitVec 32))) (Found!6022 (index!26316 (_ BitVec 32))) (Intermediate!6022 (undefined!6834 Bool) (index!26317 (_ BitVec 32)) (x!55158 (_ BitVec 32))) (Undefined!6022) (MissingVacant!6022 (index!26318 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36609 (_ BitVec 32)) SeekEntryResult!6022)

(assert (=> b!585913 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265965 vacantSpotIndex!68 (select (arr!17575 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265965 vacantSpotIndex!68 (select (store (arr!17575 a!2986) i!1108 k0!1786) j!136) (array!36610 (store (arr!17575 a!2986) i!1108 k0!1786) (size!17939 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18168 0))(
  ( (Unit!18169) )
))
(declare-fun lt!265967 () Unit!18168)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18168)

(assert (=> b!585913 (= lt!265967 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265965 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585913 (= lt!265965 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585914 () Bool)

(declare-fun res!373880 () Bool)

(declare-fun e!335068 () Bool)

(assert (=> b!585914 (=> (not res!373880) (not e!335068))))

(assert (=> b!585914 (= res!373880 (and (= (size!17939 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17939 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17939 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585915 () Bool)

(declare-fun res!373883 () Bool)

(assert (=> b!585915 (=> (not res!373883) (not e!335068))))

(declare-fun arrayContainsKey!0 (array!36609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585915 (= res!373883 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585917 () Bool)

(declare-fun res!373886 () Bool)

(assert (=> b!585917 (=> (not res!373886) (not e!335066))))

(declare-datatypes ((List!11669 0))(
  ( (Nil!11666) (Cons!11665 (h!12710 (_ BitVec 64)) (t!17905 List!11669)) )
))
(declare-fun arrayNoDuplicates!0 (array!36609 (_ BitVec 32) List!11669) Bool)

(assert (=> b!585917 (= res!373886 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11666))))

(declare-fun b!585918 () Bool)

(declare-fun res!373887 () Bool)

(assert (=> b!585918 (=> (not res!373887) (not e!335068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585918 (= res!373887 (validKeyInArray!0 k0!1786))))

(declare-fun b!585919 () Bool)

(declare-fun res!373879 () Bool)

(assert (=> b!585919 (=> (not res!373879) (not e!335066))))

(assert (=> b!585919 (= res!373879 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17575 a!2986) j!136) a!2986 mask!3053) (Found!6022 j!136)))))

(declare-fun b!585920 () Bool)

(assert (=> b!585920 (= e!335068 e!335066)))

(declare-fun res!373889 () Bool)

(assert (=> b!585920 (=> (not res!373889) (not e!335066))))

(declare-fun lt!265966 () SeekEntryResult!6022)

(assert (=> b!585920 (= res!373889 (or (= lt!265966 (MissingZero!6022 i!1108)) (= lt!265966 (MissingVacant!6022 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36609 (_ BitVec 32)) SeekEntryResult!6022)

(assert (=> b!585920 (= lt!265966 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585921 () Bool)

(declare-fun res!373888 () Bool)

(assert (=> b!585921 (=> (not res!373888) (not e!335066))))

(assert (=> b!585921 (= res!373888 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17575 a!2986) index!984) (select (arr!17575 a!2986) j!136))) (not (= (select (arr!17575 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!373881 () Bool)

(assert (=> start!53754 (=> (not res!373881) (not e!335068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53754 (= res!373881 (validMask!0 mask!3053))))

(assert (=> start!53754 e!335068))

(assert (=> start!53754 true))

(declare-fun array_inv!13349 (array!36609) Bool)

(assert (=> start!53754 (array_inv!13349 a!2986)))

(declare-fun b!585916 () Bool)

(declare-fun res!373884 () Bool)

(assert (=> b!585916 (=> (not res!373884) (not e!335068))))

(assert (=> b!585916 (= res!373884 (validKeyInArray!0 (select (arr!17575 a!2986) j!136)))))

(declare-fun b!585922 () Bool)

(declare-fun res!373882 () Bool)

(assert (=> b!585922 (=> (not res!373882) (not e!335066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36609 (_ BitVec 32)) Bool)

(assert (=> b!585922 (= res!373882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585923 () Bool)

(declare-fun res!373885 () Bool)

(assert (=> b!585923 (=> (not res!373885) (not e!335066))))

(assert (=> b!585923 (= res!373885 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17575 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17575 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53754 res!373881) b!585914))

(assert (= (and b!585914 res!373880) b!585916))

(assert (= (and b!585916 res!373884) b!585918))

(assert (= (and b!585918 res!373887) b!585915))

(assert (= (and b!585915 res!373883) b!585920))

(assert (= (and b!585920 res!373889) b!585922))

(assert (= (and b!585922 res!373882) b!585917))

(assert (= (and b!585917 res!373886) b!585923))

(assert (= (and b!585923 res!373885) b!585919))

(assert (= (and b!585919 res!373879) b!585921))

(assert (= (and b!585921 res!373888) b!585913))

(declare-fun m!564273 () Bool)

(assert (=> b!585922 m!564273))

(declare-fun m!564275 () Bool)

(assert (=> b!585917 m!564275))

(declare-fun m!564277 () Bool)

(assert (=> b!585916 m!564277))

(assert (=> b!585916 m!564277))

(declare-fun m!564279 () Bool)

(assert (=> b!585916 m!564279))

(declare-fun m!564281 () Bool)

(assert (=> b!585918 m!564281))

(declare-fun m!564283 () Bool)

(assert (=> b!585913 m!564283))

(declare-fun m!564285 () Bool)

(assert (=> b!585913 m!564285))

(declare-fun m!564287 () Bool)

(assert (=> b!585913 m!564287))

(assert (=> b!585913 m!564277))

(declare-fun m!564289 () Bool)

(assert (=> b!585913 m!564289))

(declare-fun m!564291 () Bool)

(assert (=> b!585913 m!564291))

(assert (=> b!585913 m!564277))

(declare-fun m!564293 () Bool)

(assert (=> b!585913 m!564293))

(assert (=> b!585913 m!564285))

(declare-fun m!564295 () Bool)

(assert (=> b!585921 m!564295))

(assert (=> b!585921 m!564277))

(declare-fun m!564297 () Bool)

(assert (=> b!585923 m!564297))

(assert (=> b!585923 m!564289))

(declare-fun m!564299 () Bool)

(assert (=> b!585923 m!564299))

(assert (=> b!585919 m!564277))

(assert (=> b!585919 m!564277))

(declare-fun m!564301 () Bool)

(assert (=> b!585919 m!564301))

(declare-fun m!564303 () Bool)

(assert (=> start!53754 m!564303))

(declare-fun m!564305 () Bool)

(assert (=> start!53754 m!564305))

(declare-fun m!564307 () Bool)

(assert (=> b!585920 m!564307))

(declare-fun m!564309 () Bool)

(assert (=> b!585915 m!564309))

(check-sat (not b!585918) (not b!585915) (not b!585917) (not b!585913) (not b!585916) (not b!585920) (not b!585922) (not start!53754) (not b!585919))
(check-sat)
