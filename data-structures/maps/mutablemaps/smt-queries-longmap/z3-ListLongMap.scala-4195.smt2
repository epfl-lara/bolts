; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57278 () Bool)

(assert start!57278)

(declare-fun b!633591 () Bool)

(declare-datatypes ((Unit!21338 0))(
  ( (Unit!21339) )
))
(declare-fun e!362298 () Unit!21338)

(declare-fun Unit!21340 () Unit!21338)

(assert (=> b!633591 (= e!362298 Unit!21340)))

(assert (=> b!633591 false))

(declare-fun b!633592 () Bool)

(declare-fun res!409882 () Bool)

(declare-fun e!362291 () Bool)

(assert (=> b!633592 (=> (not res!409882) (not e!362291))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633592 (= res!409882 (validKeyInArray!0 k0!1786))))

(declare-fun b!633593 () Bool)

(declare-fun res!409880 () Bool)

(assert (=> b!633593 (=> (not res!409880) (not e!362291))))

(declare-datatypes ((array!38144 0))(
  ( (array!38145 (arr!18298 (Array (_ BitVec 32) (_ BitVec 64))) (size!18662 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38144)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!633593 (= res!409880 (validKeyInArray!0 (select (arr!18298 a!2986) j!136)))))

(declare-fun b!633594 () Bool)

(declare-fun res!409887 () Bool)

(declare-fun e!362289 () Bool)

(assert (=> b!633594 (=> (not res!409887) (not e!362289))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633594 (= res!409887 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18298 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633595 () Bool)

(declare-fun res!409890 () Bool)

(assert (=> b!633595 (=> (not res!409890) (not e!362291))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633595 (= res!409890 (and (= (size!18662 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18662 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18662 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!409885 () Bool)

(assert (=> start!57278 (=> (not res!409885) (not e!362291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57278 (= res!409885 (validMask!0 mask!3053))))

(assert (=> start!57278 e!362291))

(assert (=> start!57278 true))

(declare-fun array_inv!14072 (array!38144) Bool)

(assert (=> start!57278 (array_inv!14072 a!2986)))

(declare-fun b!633596 () Bool)

(declare-fun e!362292 () Bool)

(declare-fun e!362295 () Bool)

(assert (=> b!633596 (= e!362292 e!362295)))

(declare-fun res!409889 () Bool)

(assert (=> b!633596 (=> (not res!409889) (not e!362295))))

(declare-datatypes ((SeekEntryResult!6745 0))(
  ( (MissingZero!6745 (index!29278 (_ BitVec 32))) (Found!6745 (index!29279 (_ BitVec 32))) (Intermediate!6745 (undefined!7557 Bool) (index!29280 (_ BitVec 32)) (x!58047 (_ BitVec 32))) (Undefined!6745) (MissingVacant!6745 (index!29281 (_ BitVec 32))) )
))
(declare-fun lt!292912 () SeekEntryResult!6745)

(assert (=> b!633596 (= res!409889 (and (= lt!292912 (Found!6745 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18298 a!2986) index!984) (select (arr!18298 a!2986) j!136))) (not (= (select (arr!18298 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38144 (_ BitVec 32)) SeekEntryResult!6745)

(assert (=> b!633596 (= lt!292912 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18298 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633597 () Bool)

(declare-fun e!362293 () Bool)

(declare-fun e!362296 () Bool)

(assert (=> b!633597 (= e!362293 e!362296)))

(declare-fun res!409877 () Bool)

(assert (=> b!633597 (=> res!409877 e!362296)))

(declare-fun lt!292916 () (_ BitVec 64))

(declare-fun lt!292919 () (_ BitVec 64))

(assert (=> b!633597 (= res!409877 (or (not (= (select (arr!18298 a!2986) j!136) lt!292919)) (not (= (select (arr!18298 a!2986) j!136) lt!292916)) (bvsge j!136 index!984)))))

(declare-fun b!633598 () Bool)

(declare-fun res!409884 () Bool)

(assert (=> b!633598 (=> (not res!409884) (not e!362289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38144 (_ BitVec 32)) Bool)

(assert (=> b!633598 (= res!409884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633599 () Bool)

(assert (=> b!633599 (= e!362291 e!362289)))

(declare-fun res!409881 () Bool)

(assert (=> b!633599 (=> (not res!409881) (not e!362289))))

(declare-fun lt!292913 () SeekEntryResult!6745)

(assert (=> b!633599 (= res!409881 (or (= lt!292913 (MissingZero!6745 i!1108)) (= lt!292913 (MissingVacant!6745 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38144 (_ BitVec 32)) SeekEntryResult!6745)

(assert (=> b!633599 (= lt!292913 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!633600 () Bool)

(assert (=> b!633600 (= e!362289 e!362292)))

(declare-fun res!409886 () Bool)

(assert (=> b!633600 (=> (not res!409886) (not e!362292))))

(assert (=> b!633600 (= res!409886 (= (select (store (arr!18298 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292914 () array!38144)

(assert (=> b!633600 (= lt!292914 (array!38145 (store (arr!18298 a!2986) i!1108 k0!1786) (size!18662 a!2986)))))

(declare-fun e!362299 () Bool)

(declare-fun b!633601 () Bool)

(declare-fun arrayContainsKey!0 (array!38144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633601 (= e!362299 (arrayContainsKey!0 lt!292914 (select (arr!18298 a!2986) j!136) index!984))))

(declare-fun b!633602 () Bool)

(declare-fun e!362290 () Bool)

(assert (=> b!633602 (= e!362295 (not e!362290))))

(declare-fun res!409878 () Bool)

(assert (=> b!633602 (=> res!409878 e!362290)))

(declare-fun lt!292920 () SeekEntryResult!6745)

(assert (=> b!633602 (= res!409878 (not (= lt!292920 (Found!6745 index!984))))))

(declare-fun lt!292911 () Unit!21338)

(assert (=> b!633602 (= lt!292911 e!362298)))

(declare-fun c!72224 () Bool)

(assert (=> b!633602 (= c!72224 (= lt!292920 Undefined!6745))))

(assert (=> b!633602 (= lt!292920 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292919 lt!292914 mask!3053))))

(declare-fun e!362294 () Bool)

(assert (=> b!633602 e!362294))

(declare-fun res!409888 () Bool)

(assert (=> b!633602 (=> (not res!409888) (not e!362294))))

(declare-fun lt!292915 () SeekEntryResult!6745)

(declare-fun lt!292918 () (_ BitVec 32))

(assert (=> b!633602 (= res!409888 (= lt!292915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292918 vacantSpotIndex!68 lt!292919 lt!292914 mask!3053)))))

(assert (=> b!633602 (= lt!292915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292918 vacantSpotIndex!68 (select (arr!18298 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633602 (= lt!292919 (select (store (arr!18298 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292917 () Unit!21338)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38144 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21338)

(assert (=> b!633602 (= lt!292917 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292918 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633602 (= lt!292918 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633603 () Bool)

(assert (=> b!633603 (= e!362290 (or (not (= (select (arr!18298 a!2986) j!136) lt!292919)) (not (= (select (arr!18298 a!2986) j!136) lt!292916)) (bvsge j!136 index!984) (bvsge index!984 (size!18662 a!2986)) (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000)))))

(assert (=> b!633603 e!362293))

(declare-fun res!409892 () Bool)

(assert (=> b!633603 (=> (not res!409892) (not e!362293))))

(assert (=> b!633603 (= res!409892 (= lt!292916 (select (arr!18298 a!2986) j!136)))))

(assert (=> b!633603 (= lt!292916 (select (store (arr!18298 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!633604 () Bool)

(declare-fun res!409879 () Bool)

(assert (=> b!633604 (=> (not res!409879) (not e!362291))))

(assert (=> b!633604 (= res!409879 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633605 () Bool)

(declare-fun Unit!21341 () Unit!21338)

(assert (=> b!633605 (= e!362298 Unit!21341)))

(declare-fun b!633606 () Bool)

(assert (=> b!633606 (= e!362296 e!362299)))

(declare-fun res!409891 () Bool)

(assert (=> b!633606 (=> (not res!409891) (not e!362299))))

(assert (=> b!633606 (= res!409891 (arrayContainsKey!0 lt!292914 (select (arr!18298 a!2986) j!136) j!136))))

(declare-fun b!633607 () Bool)

(declare-fun res!409883 () Bool)

(assert (=> b!633607 (=> (not res!409883) (not e!362289))))

(declare-datatypes ((List!12392 0))(
  ( (Nil!12389) (Cons!12388 (h!13433 (_ BitVec 64)) (t!18628 List!12392)) )
))
(declare-fun arrayNoDuplicates!0 (array!38144 (_ BitVec 32) List!12392) Bool)

(assert (=> b!633607 (= res!409883 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12389))))

(declare-fun b!633608 () Bool)

(assert (=> b!633608 (= e!362294 (= lt!292912 lt!292915))))

(assert (= (and start!57278 res!409885) b!633595))

(assert (= (and b!633595 res!409890) b!633593))

(assert (= (and b!633593 res!409880) b!633592))

(assert (= (and b!633592 res!409882) b!633604))

(assert (= (and b!633604 res!409879) b!633599))

(assert (= (and b!633599 res!409881) b!633598))

(assert (= (and b!633598 res!409884) b!633607))

(assert (= (and b!633607 res!409883) b!633594))

(assert (= (and b!633594 res!409887) b!633600))

(assert (= (and b!633600 res!409886) b!633596))

(assert (= (and b!633596 res!409889) b!633602))

(assert (= (and b!633602 res!409888) b!633608))

(assert (= (and b!633602 c!72224) b!633591))

(assert (= (and b!633602 (not c!72224)) b!633605))

(assert (= (and b!633602 (not res!409878)) b!633603))

(assert (= (and b!633603 res!409892) b!633597))

(assert (= (and b!633597 (not res!409877)) b!633606))

(assert (= (and b!633606 res!409891) b!633601))

(declare-fun m!608263 () Bool)

(assert (=> b!633596 m!608263))

(declare-fun m!608265 () Bool)

(assert (=> b!633596 m!608265))

(assert (=> b!633596 m!608265))

(declare-fun m!608267 () Bool)

(assert (=> b!633596 m!608267))

(assert (=> b!633593 m!608265))

(assert (=> b!633593 m!608265))

(declare-fun m!608269 () Bool)

(assert (=> b!633593 m!608269))

(assert (=> b!633597 m!608265))

(declare-fun m!608271 () Bool)

(assert (=> b!633598 m!608271))

(declare-fun m!608273 () Bool)

(assert (=> b!633604 m!608273))

(declare-fun m!608275 () Bool)

(assert (=> b!633600 m!608275))

(declare-fun m!608277 () Bool)

(assert (=> b!633600 m!608277))

(assert (=> b!633606 m!608265))

(assert (=> b!633606 m!608265))

(declare-fun m!608279 () Bool)

(assert (=> b!633606 m!608279))

(declare-fun m!608281 () Bool)

(assert (=> b!633594 m!608281))

(declare-fun m!608283 () Bool)

(assert (=> b!633602 m!608283))

(declare-fun m!608285 () Bool)

(assert (=> b!633602 m!608285))

(declare-fun m!608287 () Bool)

(assert (=> b!633602 m!608287))

(assert (=> b!633602 m!608265))

(assert (=> b!633602 m!608275))

(assert (=> b!633602 m!608265))

(declare-fun m!608289 () Bool)

(assert (=> b!633602 m!608289))

(declare-fun m!608291 () Bool)

(assert (=> b!633602 m!608291))

(declare-fun m!608293 () Bool)

(assert (=> b!633602 m!608293))

(assert (=> b!633603 m!608265))

(assert (=> b!633603 m!608275))

(declare-fun m!608295 () Bool)

(assert (=> b!633603 m!608295))

(declare-fun m!608297 () Bool)

(assert (=> b!633607 m!608297))

(assert (=> b!633601 m!608265))

(assert (=> b!633601 m!608265))

(declare-fun m!608299 () Bool)

(assert (=> b!633601 m!608299))

(declare-fun m!608301 () Bool)

(assert (=> b!633599 m!608301))

(declare-fun m!608303 () Bool)

(assert (=> b!633592 m!608303))

(declare-fun m!608305 () Bool)

(assert (=> start!57278 m!608305))

(declare-fun m!608307 () Bool)

(assert (=> start!57278 m!608307))

(check-sat (not b!633598) (not b!633599) (not b!633606) (not b!633602) (not b!633604) (not b!633601) (not b!633607) (not b!633593) (not b!633596) (not b!633592) (not start!57278))
(check-sat)
