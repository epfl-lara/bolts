; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56296 () Bool)

(assert start!56296)

(declare-fun b!623811 () Bool)

(declare-fun e!357787 () Bool)

(declare-datatypes ((SeekEntryResult!6530 0))(
  ( (MissingZero!6530 (index!28403 (_ BitVec 32))) (Found!6530 (index!28404 (_ BitVec 32))) (Intermediate!6530 (undefined!7342 Bool) (index!28405 (_ BitVec 32)) (x!57190 (_ BitVec 32))) (Undefined!6530) (MissingVacant!6530 (index!28406 (_ BitVec 32))) )
))
(declare-fun lt!289399 () SeekEntryResult!6530)

(declare-fun lt!289407 () SeekEntryResult!6530)

(assert (=> b!623811 (= e!357787 (= lt!289399 lt!289407))))

(declare-fun b!623812 () Bool)

(declare-fun res!402168 () Bool)

(declare-fun e!357785 () Bool)

(assert (=> b!623812 (=> (not res!402168) (not e!357785))))

(declare-datatypes ((array!37684 0))(
  ( (array!37685 (arr!18083 (Array (_ BitVec 32) (_ BitVec 64))) (size!18447 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37684)

(declare-datatypes ((List!12177 0))(
  ( (Nil!12174) (Cons!12173 (h!13218 (_ BitVec 64)) (t!18413 List!12177)) )
))
(declare-fun arrayNoDuplicates!0 (array!37684 (_ BitVec 32) List!12177) Bool)

(assert (=> b!623812 (= res!402168 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12174))))

(declare-fun b!623813 () Bool)

(declare-fun res!402167 () Bool)

(declare-fun e!357786 () Bool)

(assert (=> b!623813 (=> (not res!402167) (not e!357786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623813 (= res!402167 (and (= (size!18447 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18447 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18447 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!402162 () Bool)

(assert (=> start!56296 (=> (not res!402162) (not e!357786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56296 (= res!402162 (validMask!0 mask!3053))))

(assert (=> start!56296 e!357786))

(assert (=> start!56296 true))

(declare-fun array_inv!13857 (array!37684) Bool)

(assert (=> start!56296 (array_inv!13857 a!2986)))

(declare-fun b!623814 () Bool)

(declare-fun res!402165 () Bool)

(assert (=> b!623814 (=> (not res!402165) (not e!357785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37684 (_ BitVec 32)) Bool)

(assert (=> b!623814 (= res!402165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!357781 () Bool)

(declare-fun b!623815 () Bool)

(declare-fun lt!289401 () (_ BitVec 64))

(assert (=> b!623815 (= e!357781 (= (select (arr!18083 a!2986) j!136) lt!289401))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623815 (= (select (store (arr!18083 a!2986) i!1108 k!1786) index!984) (select (arr!18083 a!2986) j!136))))

(declare-fun b!623816 () Bool)

(declare-datatypes ((Unit!21050 0))(
  ( (Unit!21051) )
))
(declare-fun e!357784 () Unit!21050)

(declare-fun Unit!21052 () Unit!21050)

(assert (=> b!623816 (= e!357784 Unit!21052)))

(assert (=> b!623816 false))

(declare-fun b!623817 () Bool)

(declare-fun res!402164 () Bool)

(assert (=> b!623817 (=> (not res!402164) (not e!357786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623817 (= res!402164 (validKeyInArray!0 (select (arr!18083 a!2986) j!136)))))

(declare-fun b!623818 () Bool)

(declare-fun res!402163 () Bool)

(assert (=> b!623818 (=> (not res!402163) (not e!357786))))

(declare-fun arrayContainsKey!0 (array!37684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623818 (= res!402163 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623819 () Bool)

(declare-fun res!402170 () Bool)

(assert (=> b!623819 (=> (not res!402170) (not e!357786))))

(assert (=> b!623819 (= res!402170 (validKeyInArray!0 k!1786))))

(declare-fun b!623820 () Bool)

(declare-fun e!357780 () Bool)

(assert (=> b!623820 (= e!357785 e!357780)))

(declare-fun res!402169 () Bool)

(assert (=> b!623820 (=> (not res!402169) (not e!357780))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!623820 (= res!402169 (= (select (store (arr!18083 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!289404 () array!37684)

(assert (=> b!623820 (= lt!289404 (array!37685 (store (arr!18083 a!2986) i!1108 k!1786) (size!18447 a!2986)))))

(declare-fun b!623821 () Bool)

(declare-fun e!357783 () Bool)

(assert (=> b!623821 (= e!357780 e!357783)))

(declare-fun res!402172 () Bool)

(assert (=> b!623821 (=> (not res!402172) (not e!357783))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!623821 (= res!402172 (and (= lt!289399 (Found!6530 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18083 a!2986) index!984) (select (arr!18083 a!2986) j!136))) (not (= (select (arr!18083 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37684 (_ BitVec 32)) SeekEntryResult!6530)

(assert (=> b!623821 (= lt!289399 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18083 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623822 () Bool)

(assert (=> b!623822 (= e!357783 (not e!357781))))

(declare-fun res!402173 () Bool)

(assert (=> b!623822 (=> res!402173 e!357781)))

(declare-fun lt!289402 () SeekEntryResult!6530)

(assert (=> b!623822 (= res!402173 (not (= lt!289402 (Found!6530 index!984))))))

(declare-fun lt!289405 () Unit!21050)

(assert (=> b!623822 (= lt!289405 e!357784)))

(declare-fun c!71192 () Bool)

(assert (=> b!623822 (= c!71192 (= lt!289402 Undefined!6530))))

(assert (=> b!623822 (= lt!289402 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289401 lt!289404 mask!3053))))

(assert (=> b!623822 e!357787))

(declare-fun res!402166 () Bool)

(assert (=> b!623822 (=> (not res!402166) (not e!357787))))

(declare-fun lt!289400 () (_ BitVec 32))

(assert (=> b!623822 (= res!402166 (= lt!289407 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289400 vacantSpotIndex!68 lt!289401 lt!289404 mask!3053)))))

(assert (=> b!623822 (= lt!289407 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289400 vacantSpotIndex!68 (select (arr!18083 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623822 (= lt!289401 (select (store (arr!18083 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289406 () Unit!21050)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37684 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21050)

(assert (=> b!623822 (= lt!289406 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289400 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623822 (= lt!289400 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623823 () Bool)

(assert (=> b!623823 (= e!357786 e!357785)))

(declare-fun res!402171 () Bool)

(assert (=> b!623823 (=> (not res!402171) (not e!357785))))

(declare-fun lt!289403 () SeekEntryResult!6530)

(assert (=> b!623823 (= res!402171 (or (= lt!289403 (MissingZero!6530 i!1108)) (= lt!289403 (MissingVacant!6530 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37684 (_ BitVec 32)) SeekEntryResult!6530)

(assert (=> b!623823 (= lt!289403 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623824 () Bool)

(declare-fun Unit!21053 () Unit!21050)

(assert (=> b!623824 (= e!357784 Unit!21053)))

(declare-fun b!623825 () Bool)

(declare-fun res!402161 () Bool)

(assert (=> b!623825 (=> (not res!402161) (not e!357785))))

(assert (=> b!623825 (= res!402161 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18083 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56296 res!402162) b!623813))

(assert (= (and b!623813 res!402167) b!623817))

(assert (= (and b!623817 res!402164) b!623819))

(assert (= (and b!623819 res!402170) b!623818))

(assert (= (and b!623818 res!402163) b!623823))

(assert (= (and b!623823 res!402171) b!623814))

(assert (= (and b!623814 res!402165) b!623812))

(assert (= (and b!623812 res!402168) b!623825))

(assert (= (and b!623825 res!402161) b!623820))

(assert (= (and b!623820 res!402169) b!623821))

(assert (= (and b!623821 res!402172) b!623822))

(assert (= (and b!623822 res!402166) b!623811))

(assert (= (and b!623822 c!71192) b!623816))

(assert (= (and b!623822 (not c!71192)) b!623824))

(assert (= (and b!623822 (not res!402173)) b!623815))

(declare-fun m!599607 () Bool)

(assert (=> b!623818 m!599607))

(declare-fun m!599609 () Bool)

(assert (=> b!623819 m!599609))

(declare-fun m!599611 () Bool)

(assert (=> b!623822 m!599611))

(declare-fun m!599613 () Bool)

(assert (=> b!623822 m!599613))

(declare-fun m!599615 () Bool)

(assert (=> b!623822 m!599615))

(declare-fun m!599617 () Bool)

(assert (=> b!623822 m!599617))

(assert (=> b!623822 m!599615))

(declare-fun m!599619 () Bool)

(assert (=> b!623822 m!599619))

(declare-fun m!599621 () Bool)

(assert (=> b!623822 m!599621))

(declare-fun m!599623 () Bool)

(assert (=> b!623822 m!599623))

(declare-fun m!599625 () Bool)

(assert (=> b!623822 m!599625))

(declare-fun m!599627 () Bool)

(assert (=> b!623821 m!599627))

(assert (=> b!623821 m!599615))

(assert (=> b!623821 m!599615))

(declare-fun m!599629 () Bool)

(assert (=> b!623821 m!599629))

(declare-fun m!599631 () Bool)

(assert (=> b!623825 m!599631))

(declare-fun m!599633 () Bool)

(assert (=> b!623823 m!599633))

(declare-fun m!599635 () Bool)

(assert (=> start!56296 m!599635))

(declare-fun m!599637 () Bool)

(assert (=> start!56296 m!599637))

(declare-fun m!599639 () Bool)

(assert (=> b!623812 m!599639))

(assert (=> b!623817 m!599615))

(assert (=> b!623817 m!599615))

(declare-fun m!599641 () Bool)

(assert (=> b!623817 m!599641))

(assert (=> b!623820 m!599617))

(declare-fun m!599643 () Bool)

(assert (=> b!623820 m!599643))

(assert (=> b!623815 m!599615))

(assert (=> b!623815 m!599617))

(declare-fun m!599645 () Bool)

(assert (=> b!623815 m!599645))

(declare-fun m!599647 () Bool)

(assert (=> b!623814 m!599647))

(push 1)

(assert (not b!623821))

(assert (not b!623823))

(assert (not b!623812))

(assert (not b!623819))

