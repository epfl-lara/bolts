; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56300 () Bool)

(assert start!56300)

(declare-fun b!623901 () Bool)

(declare-fun e!357829 () Bool)

(declare-fun e!357830 () Bool)

(assert (=> b!623901 (= e!357829 e!357830)))

(declare-fun res!402240 () Bool)

(assert (=> b!623901 (=> (not res!402240) (not e!357830))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37688 0))(
  ( (array!37689 (arr!18085 (Array (_ BitVec 32) (_ BitVec 64))) (size!18449 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37688)

(assert (=> b!623901 (= res!402240 (= (select (store (arr!18085 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!289459 () array!37688)

(assert (=> b!623901 (= lt!289459 (array!37689 (store (arr!18085 a!2986) i!1108 k0!1786) (size!18449 a!2986)))))

(declare-fun b!623902 () Bool)

(declare-fun e!357834 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!289458 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623902 (= e!357834 (or (not (= (select (arr!18085 a!2986) j!136) lt!289458)) (= (select (arr!18085 a!2986) j!136) (select (store (arr!18085 a!2986) i!1108 k0!1786) index!984))))))

(assert (=> b!623902 (= (select (store (arr!18085 a!2986) i!1108 k0!1786) index!984) (select (arr!18085 a!2986) j!136))))

(declare-fun b!623903 () Bool)

(declare-fun e!357831 () Bool)

(assert (=> b!623903 (= e!357830 e!357831)))

(declare-fun res!402251 () Bool)

(assert (=> b!623903 (=> (not res!402251) (not e!357831))))

(declare-datatypes ((SeekEntryResult!6532 0))(
  ( (MissingZero!6532 (index!28411 (_ BitVec 32))) (Found!6532 (index!28412 (_ BitVec 32))) (Intermediate!6532 (undefined!7344 Bool) (index!28413 (_ BitVec 32)) (x!57200 (_ BitVec 32))) (Undefined!6532) (MissingVacant!6532 (index!28414 (_ BitVec 32))) )
))
(declare-fun lt!289455 () SeekEntryResult!6532)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!623903 (= res!402251 (and (= lt!289455 (Found!6532 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18085 a!2986) index!984) (select (arr!18085 a!2986) j!136))) (not (= (select (arr!18085 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37688 (_ BitVec 32)) SeekEntryResult!6532)

(assert (=> b!623903 (= lt!289455 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18085 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623904 () Bool)

(declare-fun res!402244 () Bool)

(declare-fun e!357828 () Bool)

(assert (=> b!623904 (=> (not res!402244) (not e!357828))))

(assert (=> b!623904 (= res!402244 (and (= (size!18449 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18449 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18449 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623905 () Bool)

(declare-fun res!402241 () Bool)

(assert (=> b!623905 (=> (not res!402241) (not e!357828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623905 (= res!402241 (validKeyInArray!0 k0!1786))))

(declare-fun b!623906 () Bool)

(assert (=> b!623906 (= e!357828 e!357829)))

(declare-fun res!402242 () Bool)

(assert (=> b!623906 (=> (not res!402242) (not e!357829))))

(declare-fun lt!289453 () SeekEntryResult!6532)

(assert (=> b!623906 (= res!402242 (or (= lt!289453 (MissingZero!6532 i!1108)) (= lt!289453 (MissingVacant!6532 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37688 (_ BitVec 32)) SeekEntryResult!6532)

(assert (=> b!623906 (= lt!289453 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!623907 () Bool)

(declare-datatypes ((Unit!21058 0))(
  ( (Unit!21059) )
))
(declare-fun e!357835 () Unit!21058)

(declare-fun Unit!21060 () Unit!21058)

(assert (=> b!623907 (= e!357835 Unit!21060)))

(declare-fun b!623908 () Bool)

(declare-fun res!402243 () Bool)

(assert (=> b!623908 (=> (not res!402243) (not e!357829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37688 (_ BitVec 32)) Bool)

(assert (=> b!623908 (= res!402243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623909 () Bool)

(assert (=> b!623909 (= e!357831 (not e!357834))))

(declare-fun res!402249 () Bool)

(assert (=> b!623909 (=> res!402249 e!357834)))

(declare-fun lt!289461 () SeekEntryResult!6532)

(assert (=> b!623909 (= res!402249 (not (= lt!289461 (Found!6532 index!984))))))

(declare-fun lt!289456 () Unit!21058)

(assert (=> b!623909 (= lt!289456 e!357835)))

(declare-fun c!71198 () Bool)

(assert (=> b!623909 (= c!71198 (= lt!289461 Undefined!6532))))

(assert (=> b!623909 (= lt!289461 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289458 lt!289459 mask!3053))))

(declare-fun e!357833 () Bool)

(assert (=> b!623909 e!357833))

(declare-fun res!402246 () Bool)

(assert (=> b!623909 (=> (not res!402246) (not e!357833))))

(declare-fun lt!289457 () (_ BitVec 32))

(declare-fun lt!289460 () SeekEntryResult!6532)

(assert (=> b!623909 (= res!402246 (= lt!289460 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289457 vacantSpotIndex!68 lt!289458 lt!289459 mask!3053)))))

(assert (=> b!623909 (= lt!289460 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289457 vacantSpotIndex!68 (select (arr!18085 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623909 (= lt!289458 (select (store (arr!18085 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!289454 () Unit!21058)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37688 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21058)

(assert (=> b!623909 (= lt!289454 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289457 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623909 (= lt!289457 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!402239 () Bool)

(assert (=> start!56300 (=> (not res!402239) (not e!357828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56300 (= res!402239 (validMask!0 mask!3053))))

(assert (=> start!56300 e!357828))

(assert (=> start!56300 true))

(declare-fun array_inv!13859 (array!37688) Bool)

(assert (=> start!56300 (array_inv!13859 a!2986)))

(declare-fun b!623910 () Bool)

(declare-fun Unit!21061 () Unit!21058)

(assert (=> b!623910 (= e!357835 Unit!21061)))

(assert (=> b!623910 false))

(declare-fun b!623911 () Bool)

(declare-fun res!402248 () Bool)

(assert (=> b!623911 (=> (not res!402248) (not e!357828))))

(declare-fun arrayContainsKey!0 (array!37688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623911 (= res!402248 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623912 () Bool)

(declare-fun res!402245 () Bool)

(assert (=> b!623912 (=> (not res!402245) (not e!357829))))

(assert (=> b!623912 (= res!402245 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18085 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623913 () Bool)

(declare-fun res!402250 () Bool)

(assert (=> b!623913 (=> (not res!402250) (not e!357828))))

(assert (=> b!623913 (= res!402250 (validKeyInArray!0 (select (arr!18085 a!2986) j!136)))))

(declare-fun b!623914 () Bool)

(declare-fun res!402247 () Bool)

(assert (=> b!623914 (=> (not res!402247) (not e!357829))))

(declare-datatypes ((List!12179 0))(
  ( (Nil!12176) (Cons!12175 (h!13220 (_ BitVec 64)) (t!18415 List!12179)) )
))
(declare-fun arrayNoDuplicates!0 (array!37688 (_ BitVec 32) List!12179) Bool)

(assert (=> b!623914 (= res!402247 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12176))))

(declare-fun b!623915 () Bool)

(assert (=> b!623915 (= e!357833 (= lt!289455 lt!289460))))

(assert (= (and start!56300 res!402239) b!623904))

(assert (= (and b!623904 res!402244) b!623913))

(assert (= (and b!623913 res!402250) b!623905))

(assert (= (and b!623905 res!402241) b!623911))

(assert (= (and b!623911 res!402248) b!623906))

(assert (= (and b!623906 res!402242) b!623908))

(assert (= (and b!623908 res!402243) b!623914))

(assert (= (and b!623914 res!402247) b!623912))

(assert (= (and b!623912 res!402245) b!623901))

(assert (= (and b!623901 res!402240) b!623903))

(assert (= (and b!623903 res!402251) b!623909))

(assert (= (and b!623909 res!402246) b!623915))

(assert (= (and b!623909 c!71198) b!623910))

(assert (= (and b!623909 (not c!71198)) b!623907))

(assert (= (and b!623909 (not res!402249)) b!623902))

(declare-fun m!599691 () Bool)

(assert (=> b!623903 m!599691))

(declare-fun m!599693 () Bool)

(assert (=> b!623903 m!599693))

(assert (=> b!623903 m!599693))

(declare-fun m!599695 () Bool)

(assert (=> b!623903 m!599695))

(declare-fun m!599697 () Bool)

(assert (=> b!623911 m!599697))

(declare-fun m!599699 () Bool)

(assert (=> b!623905 m!599699))

(assert (=> b!623902 m!599693))

(declare-fun m!599701 () Bool)

(assert (=> b!623902 m!599701))

(declare-fun m!599703 () Bool)

(assert (=> b!623902 m!599703))

(declare-fun m!599705 () Bool)

(assert (=> b!623906 m!599705))

(declare-fun m!599707 () Bool)

(assert (=> b!623909 m!599707))

(declare-fun m!599709 () Bool)

(assert (=> b!623909 m!599709))

(assert (=> b!623909 m!599693))

(assert (=> b!623909 m!599701))

(declare-fun m!599711 () Bool)

(assert (=> b!623909 m!599711))

(declare-fun m!599713 () Bool)

(assert (=> b!623909 m!599713))

(declare-fun m!599715 () Bool)

(assert (=> b!623909 m!599715))

(assert (=> b!623909 m!599693))

(declare-fun m!599717 () Bool)

(assert (=> b!623909 m!599717))

(assert (=> b!623901 m!599701))

(declare-fun m!599719 () Bool)

(assert (=> b!623901 m!599719))

(declare-fun m!599721 () Bool)

(assert (=> start!56300 m!599721))

(declare-fun m!599723 () Bool)

(assert (=> start!56300 m!599723))

(declare-fun m!599725 () Bool)

(assert (=> b!623914 m!599725))

(assert (=> b!623913 m!599693))

(assert (=> b!623913 m!599693))

(declare-fun m!599727 () Bool)

(assert (=> b!623913 m!599727))

(declare-fun m!599729 () Bool)

(assert (=> b!623912 m!599729))

(declare-fun m!599731 () Bool)

(assert (=> b!623908 m!599731))

(check-sat (not start!56300) (not b!623905) (not b!623914) (not b!623906) (not b!623909) (not b!623908) (not b!623903) (not b!623911) (not b!623913))
(check-sat)
