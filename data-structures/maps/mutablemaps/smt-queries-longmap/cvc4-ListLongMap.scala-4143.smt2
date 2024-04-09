; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56464 () Bool)

(assert start!56464)

(declare-fun b!625670 () Bool)

(declare-fun res!403859 () Bool)

(declare-fun e!358513 () Bool)

(assert (=> b!625670 (=> (not res!403859) (not e!358513))))

(declare-datatypes ((array!37807 0))(
  ( (array!37808 (arr!18143 (Array (_ BitVec 32) (_ BitVec 64))) (size!18507 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37807)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625670 (= res!403859 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625671 () Bool)

(declare-fun res!403862 () Bool)

(declare-fun e!358516 () Bool)

(assert (=> b!625671 (=> (not res!403862) (not e!358516))))

(declare-datatypes ((List!12237 0))(
  ( (Nil!12234) (Cons!12233 (h!13278 (_ BitVec 64)) (t!18473 List!12237)) )
))
(declare-fun arrayNoDuplicates!0 (array!37807 (_ BitVec 32) List!12237) Bool)

(assert (=> b!625671 (= res!403862 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12234))))

(declare-fun b!625672 () Bool)

(declare-fun e!358515 () Bool)

(assert (=> b!625672 (= e!358516 e!358515)))

(declare-fun res!403861 () Bool)

(assert (=> b!625672 (=> (not res!403861) (not e!358515))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6590 0))(
  ( (MissingZero!6590 (index!28643 (_ BitVec 32))) (Found!6590 (index!28644 (_ BitVec 32))) (Intermediate!6590 (undefined!7402 Bool) (index!28645 (_ BitVec 32)) (x!57413 (_ BitVec 32))) (Undefined!6590) (MissingVacant!6590 (index!28646 (_ BitVec 32))) )
))
(declare-fun lt!289865 () SeekEntryResult!6590)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625672 (= res!403861 (and (= lt!289865 (Found!6590 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18143 a!2986) index!984) (select (arr!18143 a!2986) j!136)) (= index!984 j!136)))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37807 (_ BitVec 32)) SeekEntryResult!6590)

(assert (=> b!625672 (= lt!289865 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18143 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625673 () Bool)

(declare-fun res!403856 () Bool)

(assert (=> b!625673 (=> (not res!403856) (not e!358513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625673 (= res!403856 (validKeyInArray!0 k!1786))))

(declare-fun b!625674 () Bool)

(declare-fun res!403860 () Bool)

(assert (=> b!625674 (=> (not res!403860) (not e!358516))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625674 (= res!403860 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18143 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18143 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625675 () Bool)

(declare-fun res!403857 () Bool)

(assert (=> b!625675 (=> (not res!403857) (not e!358513))))

(assert (=> b!625675 (= res!403857 (and (= (size!18507 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18507 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18507 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!403865 () Bool)

(assert (=> start!56464 (=> (not res!403865) (not e!358513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56464 (= res!403865 (validMask!0 mask!3053))))

(assert (=> start!56464 e!358513))

(assert (=> start!56464 true))

(declare-fun array_inv!13917 (array!37807) Bool)

(assert (=> start!56464 (array_inv!13917 a!2986)))

(declare-fun b!625676 () Bool)

(assert (=> b!625676 (= e!358513 e!358516)))

(declare-fun res!403858 () Bool)

(assert (=> b!625676 (=> (not res!403858) (not e!358516))))

(declare-fun lt!289866 () SeekEntryResult!6590)

(assert (=> b!625676 (= res!403858 (or (= lt!289866 (MissingZero!6590 i!1108)) (= lt!289866 (MissingVacant!6590 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37807 (_ BitVec 32)) SeekEntryResult!6590)

(assert (=> b!625676 (= lt!289866 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625677 () Bool)

(assert (=> b!625677 (= e!358515 (not (= lt!289865 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (store (arr!18143 a!2986) i!1108 k!1786) j!136) (array!37808 (store (arr!18143 a!2986) i!1108 k!1786) (size!18507 a!2986)) mask!3053))))))

(declare-fun b!625678 () Bool)

(declare-fun res!403864 () Bool)

(assert (=> b!625678 (=> (not res!403864) (not e!358516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37807 (_ BitVec 32)) Bool)

(assert (=> b!625678 (= res!403864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625679 () Bool)

(declare-fun res!403863 () Bool)

(assert (=> b!625679 (=> (not res!403863) (not e!358513))))

(assert (=> b!625679 (= res!403863 (validKeyInArray!0 (select (arr!18143 a!2986) j!136)))))

(assert (= (and start!56464 res!403865) b!625675))

(assert (= (and b!625675 res!403857) b!625679))

(assert (= (and b!625679 res!403863) b!625673))

(assert (= (and b!625673 res!403856) b!625670))

(assert (= (and b!625670 res!403859) b!625676))

(assert (= (and b!625676 res!403858) b!625678))

(assert (= (and b!625678 res!403864) b!625671))

(assert (= (and b!625671 res!403862) b!625674))

(assert (= (and b!625674 res!403860) b!625672))

(assert (= (and b!625672 res!403861) b!625677))

(declare-fun m!601279 () Bool)

(assert (=> b!625670 m!601279))

(declare-fun m!601281 () Bool)

(assert (=> b!625679 m!601281))

(assert (=> b!625679 m!601281))

(declare-fun m!601283 () Bool)

(assert (=> b!625679 m!601283))

(declare-fun m!601285 () Bool)

(assert (=> start!56464 m!601285))

(declare-fun m!601287 () Bool)

(assert (=> start!56464 m!601287))

(declare-fun m!601289 () Bool)

(assert (=> b!625672 m!601289))

(assert (=> b!625672 m!601281))

(assert (=> b!625672 m!601281))

(declare-fun m!601291 () Bool)

(assert (=> b!625672 m!601291))

(declare-fun m!601293 () Bool)

(assert (=> b!625677 m!601293))

(declare-fun m!601295 () Bool)

(assert (=> b!625677 m!601295))

(assert (=> b!625677 m!601295))

(declare-fun m!601297 () Bool)

(assert (=> b!625677 m!601297))

(declare-fun m!601299 () Bool)

(assert (=> b!625678 m!601299))

(declare-fun m!601301 () Bool)

(assert (=> b!625671 m!601301))

(declare-fun m!601303 () Bool)

(assert (=> b!625673 m!601303))

(declare-fun m!601305 () Bool)

(assert (=> b!625674 m!601305))

(assert (=> b!625674 m!601293))

(declare-fun m!601307 () Bool)

(assert (=> b!625674 m!601307))

(declare-fun m!601309 () Bool)

(assert (=> b!625676 m!601309))

(push 1)

(assert (not b!625673))

(assert (not b!625679))

(assert (not b!625676))

(assert (not start!56464))

(assert (not b!625671))

(assert (not b!625672))

(assert (not b!625670))

(assert (not b!625677))

(assert (not b!625678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88719 () Bool)

(assert (=> d!88719 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56464 d!88719))

(declare-fun d!88725 () Bool)

(assert (=> d!88725 (= (array_inv!13917 a!2986) (bvsge (size!18507 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56464 d!88725))

(declare-fun d!88727 () Bool)

(declare-fun res!403876 () Bool)

(declare-fun e!358548 () Bool)

(assert (=> d!88727 (=> res!403876 e!358548)))

(assert (=> d!88727 (= res!403876 (= (select (arr!18143 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88727 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!358548)))

(declare-fun b!625732 () Bool)

(declare-fun e!358549 () Bool)

(assert (=> b!625732 (= e!358548 e!358549)))

(declare-fun res!403877 () Bool)

(assert (=> b!625732 (=> (not res!403877) (not e!358549))))

(assert (=> b!625732 (= res!403877 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18507 a!2986)))))

(declare-fun b!625733 () Bool)

(assert (=> b!625733 (= e!358549 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88727 (not res!403876)) b!625732))

(assert (= (and b!625732 res!403877) b!625733))

