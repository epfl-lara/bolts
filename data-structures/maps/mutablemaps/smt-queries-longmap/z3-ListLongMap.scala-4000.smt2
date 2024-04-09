; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54266 () Bool)

(assert start!54266)

(declare-fun b!592652 () Bool)

(declare-fun e!338482 () Bool)

(declare-fun e!338477 () Bool)

(assert (=> b!592652 (= e!338482 e!338477)))

(declare-fun res!379451 () Bool)

(assert (=> b!592652 (=> res!379451 e!338477)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269088 () (_ BitVec 64))

(declare-fun lt!269089 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36896 0))(
  ( (array!36897 (arr!17713 (Array (_ BitVec 32) (_ BitVec 64))) (size!18077 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36896)

(assert (=> b!592652 (= res!379451 (or (not (= (select (arr!17713 a!2986) j!136) lt!269088)) (not (= (select (arr!17713 a!2986) j!136) lt!269089)) (bvsge j!136 index!984)))))

(declare-fun e!338486 () Bool)

(assert (=> b!592652 e!338486))

(declare-fun res!379455 () Bool)

(assert (=> b!592652 (=> (not res!379455) (not e!338486))))

(assert (=> b!592652 (= res!379455 (= lt!269089 (select (arr!17713 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!592652 (= lt!269089 (select (store (arr!17713 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!592653 () Bool)

(declare-fun e!338479 () Bool)

(declare-fun e!338485 () Bool)

(assert (=> b!592653 (= e!338479 e!338485)))

(declare-fun res!379466 () Bool)

(assert (=> b!592653 (=> (not res!379466) (not e!338485))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!592653 (= res!379466 (= (select (store (arr!17713 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!269090 () array!36896)

(assert (=> b!592653 (= lt!269090 (array!36897 (store (arr!17713 a!2986) i!1108 k0!1786) (size!18077 a!2986)))))

(declare-fun b!592654 () Bool)

(declare-fun e!338488 () Bool)

(assert (=> b!592654 (= e!338488 e!338479)))

(declare-fun res!379453 () Bool)

(assert (=> b!592654 (=> (not res!379453) (not e!338479))))

(declare-datatypes ((SeekEntryResult!6160 0))(
  ( (MissingZero!6160 (index!26878 (_ BitVec 32))) (Found!6160 (index!26879 (_ BitVec 32))) (Intermediate!6160 (undefined!6972 Bool) (index!26880 (_ BitVec 32)) (x!55698 (_ BitVec 32))) (Undefined!6160) (MissingVacant!6160 (index!26881 (_ BitVec 32))) )
))
(declare-fun lt!269083 () SeekEntryResult!6160)

(assert (=> b!592654 (= res!379453 (or (= lt!269083 (MissingZero!6160 i!1108)) (= lt!269083 (MissingVacant!6160 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36896 (_ BitVec 32)) SeekEntryResult!6160)

(assert (=> b!592654 (= lt!269083 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!592655 () Bool)

(declare-fun res!379458 () Bool)

(assert (=> b!592655 (=> (not res!379458) (not e!338488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592655 (= res!379458 (validKeyInArray!0 k0!1786))))

(declare-fun b!592656 () Bool)

(declare-fun e!338484 () Bool)

(declare-fun arrayContainsKey!0 (array!36896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592656 (= e!338484 (arrayContainsKey!0 lt!269090 (select (arr!17713 a!2986) j!136) index!984))))

(declare-fun b!592657 () Bool)

(declare-fun res!379459 () Bool)

(assert (=> b!592657 (=> (not res!379459) (not e!338488))))

(assert (=> b!592657 (= res!379459 (and (= (size!18077 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18077 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18077 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592658 () Bool)

(declare-fun res!379456 () Bool)

(assert (=> b!592658 (=> (not res!379456) (not e!338488))))

(assert (=> b!592658 (= res!379456 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592659 () Bool)

(declare-datatypes ((Unit!18584 0))(
  ( (Unit!18585) )
))
(declare-fun e!338478 () Unit!18584)

(declare-fun Unit!18586 () Unit!18584)

(assert (=> b!592659 (= e!338478 Unit!18586)))

(declare-fun b!592660 () Bool)

(declare-fun e!338483 () Bool)

(assert (=> b!592660 (= e!338486 e!338483)))

(declare-fun res!379452 () Bool)

(assert (=> b!592660 (=> res!379452 e!338483)))

(assert (=> b!592660 (= res!379452 (or (not (= (select (arr!17713 a!2986) j!136) lt!269088)) (not (= (select (arr!17713 a!2986) j!136) lt!269089)) (bvsge j!136 index!984)))))

(declare-fun b!592661 () Bool)

(declare-fun res!379462 () Bool)

(assert (=> b!592661 (=> (not res!379462) (not e!338479))))

(declare-datatypes ((List!11807 0))(
  ( (Nil!11804) (Cons!11803 (h!12848 (_ BitVec 64)) (t!18043 List!11807)) )
))
(declare-fun arrayNoDuplicates!0 (array!36896 (_ BitVec 32) List!11807) Bool)

(assert (=> b!592661 (= res!379462 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11804))))

(declare-fun b!592662 () Bool)

(declare-fun res!379465 () Bool)

(assert (=> b!592662 (=> (not res!379465) (not e!338479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36896 (_ BitVec 32)) Bool)

(assert (=> b!592662 (= res!379465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592664 () Bool)

(declare-fun e!338480 () Bool)

(assert (=> b!592664 (= e!338485 e!338480)))

(declare-fun res!379457 () Bool)

(assert (=> b!592664 (=> (not res!379457) (not e!338480))))

(declare-fun lt!269087 () SeekEntryResult!6160)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!592664 (= res!379457 (and (= lt!269087 (Found!6160 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17713 a!2986) index!984) (select (arr!17713 a!2986) j!136))) (not (= (select (arr!17713 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36896 (_ BitVec 32)) SeekEntryResult!6160)

(assert (=> b!592664 (= lt!269087 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17713 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592665 () Bool)

(assert (=> b!592665 (= e!338480 (not e!338482))))

(declare-fun res!379454 () Bool)

(assert (=> b!592665 (=> res!379454 e!338482)))

(declare-fun lt!269081 () SeekEntryResult!6160)

(assert (=> b!592665 (= res!379454 (not (= lt!269081 (Found!6160 index!984))))))

(declare-fun lt!269082 () Unit!18584)

(assert (=> b!592665 (= lt!269082 e!338478)))

(declare-fun c!66968 () Bool)

(assert (=> b!592665 (= c!66968 (= lt!269081 Undefined!6160))))

(assert (=> b!592665 (= lt!269081 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269088 lt!269090 mask!3053))))

(declare-fun e!338481 () Bool)

(assert (=> b!592665 e!338481))

(declare-fun res!379460 () Bool)

(assert (=> b!592665 (=> (not res!379460) (not e!338481))))

(declare-fun lt!269085 () SeekEntryResult!6160)

(declare-fun lt!269084 () (_ BitVec 32))

(assert (=> b!592665 (= res!379460 (= lt!269085 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269084 vacantSpotIndex!68 lt!269088 lt!269090 mask!3053)))))

(assert (=> b!592665 (= lt!269085 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269084 vacantSpotIndex!68 (select (arr!17713 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592665 (= lt!269088 (select (store (arr!17713 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269086 () Unit!18584)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36896 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18584)

(assert (=> b!592665 (= lt!269086 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269084 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592665 (= lt!269084 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592666 () Bool)

(declare-fun res!379463 () Bool)

(assert (=> b!592666 (=> (not res!379463) (not e!338488))))

(assert (=> b!592666 (= res!379463 (validKeyInArray!0 (select (arr!17713 a!2986) j!136)))))

(declare-fun b!592667 () Bool)

(declare-fun res!379461 () Bool)

(assert (=> b!592667 (=> (not res!379461) (not e!338479))))

(assert (=> b!592667 (= res!379461 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17713 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592668 () Bool)

(assert (=> b!592668 (= e!338481 (= lt!269087 lt!269085))))

(declare-fun b!592669 () Bool)

(declare-fun Unit!18587 () Unit!18584)

(assert (=> b!592669 (= e!338478 Unit!18587)))

(assert (=> b!592669 false))

(declare-fun b!592670 () Bool)

(assert (=> b!592670 (= e!338483 e!338484)))

(declare-fun res!379464 () Bool)

(assert (=> b!592670 (=> (not res!379464) (not e!338484))))

(assert (=> b!592670 (= res!379464 (arrayContainsKey!0 lt!269090 (select (arr!17713 a!2986) j!136) j!136))))

(declare-fun b!592663 () Bool)

(assert (=> b!592663 (= e!338477 (bvsle #b00000000000000000000000000000000 (size!18077 a!2986)))))

(assert (=> b!592663 (arrayContainsKey!0 lt!269090 (select (arr!17713 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269091 () Unit!18584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36896 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18584)

(assert (=> b!592663 (= lt!269091 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269090 (select (arr!17713 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun res!379450 () Bool)

(assert (=> start!54266 (=> (not res!379450) (not e!338488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54266 (= res!379450 (validMask!0 mask!3053))))

(assert (=> start!54266 e!338488))

(assert (=> start!54266 true))

(declare-fun array_inv!13487 (array!36896) Bool)

(assert (=> start!54266 (array_inv!13487 a!2986)))

(assert (= (and start!54266 res!379450) b!592657))

(assert (= (and b!592657 res!379459) b!592666))

(assert (= (and b!592666 res!379463) b!592655))

(assert (= (and b!592655 res!379458) b!592658))

(assert (= (and b!592658 res!379456) b!592654))

(assert (= (and b!592654 res!379453) b!592662))

(assert (= (and b!592662 res!379465) b!592661))

(assert (= (and b!592661 res!379462) b!592667))

(assert (= (and b!592667 res!379461) b!592653))

(assert (= (and b!592653 res!379466) b!592664))

(assert (= (and b!592664 res!379457) b!592665))

(assert (= (and b!592665 res!379460) b!592668))

(assert (= (and b!592665 c!66968) b!592669))

(assert (= (and b!592665 (not c!66968)) b!592659))

(assert (= (and b!592665 (not res!379454)) b!592652))

(assert (= (and b!592652 res!379455) b!592660))

(assert (= (and b!592660 (not res!379452)) b!592670))

(assert (= (and b!592670 res!379464) b!592656))

(assert (= (and b!592652 (not res!379451)) b!592663))

(declare-fun m!570737 () Bool)

(assert (=> b!592661 m!570737))

(declare-fun m!570739 () Bool)

(assert (=> b!592653 m!570739))

(declare-fun m!570741 () Bool)

(assert (=> b!592653 m!570741))

(declare-fun m!570743 () Bool)

(assert (=> b!592655 m!570743))

(declare-fun m!570745 () Bool)

(assert (=> b!592665 m!570745))

(declare-fun m!570747 () Bool)

(assert (=> b!592665 m!570747))

(assert (=> b!592665 m!570739))

(declare-fun m!570749 () Bool)

(assert (=> b!592665 m!570749))

(declare-fun m!570751 () Bool)

(assert (=> b!592665 m!570751))

(declare-fun m!570753 () Bool)

(assert (=> b!592665 m!570753))

(assert (=> b!592665 m!570747))

(declare-fun m!570755 () Bool)

(assert (=> b!592665 m!570755))

(declare-fun m!570757 () Bool)

(assert (=> b!592665 m!570757))

(assert (=> b!592656 m!570747))

(assert (=> b!592656 m!570747))

(declare-fun m!570759 () Bool)

(assert (=> b!592656 m!570759))

(assert (=> b!592666 m!570747))

(assert (=> b!592666 m!570747))

(declare-fun m!570761 () Bool)

(assert (=> b!592666 m!570761))

(declare-fun m!570763 () Bool)

(assert (=> b!592664 m!570763))

(assert (=> b!592664 m!570747))

(assert (=> b!592664 m!570747))

(declare-fun m!570765 () Bool)

(assert (=> b!592664 m!570765))

(declare-fun m!570767 () Bool)

(assert (=> b!592658 m!570767))

(declare-fun m!570769 () Bool)

(assert (=> b!592654 m!570769))

(assert (=> b!592660 m!570747))

(declare-fun m!570771 () Bool)

(assert (=> b!592667 m!570771))

(assert (=> b!592652 m!570747))

(assert (=> b!592652 m!570739))

(declare-fun m!570773 () Bool)

(assert (=> b!592652 m!570773))

(assert (=> b!592670 m!570747))

(assert (=> b!592670 m!570747))

(declare-fun m!570775 () Bool)

(assert (=> b!592670 m!570775))

(declare-fun m!570777 () Bool)

(assert (=> start!54266 m!570777))

(declare-fun m!570779 () Bool)

(assert (=> start!54266 m!570779))

(assert (=> b!592663 m!570747))

(assert (=> b!592663 m!570747))

(declare-fun m!570781 () Bool)

(assert (=> b!592663 m!570781))

(assert (=> b!592663 m!570747))

(declare-fun m!570783 () Bool)

(assert (=> b!592663 m!570783))

(declare-fun m!570785 () Bool)

(assert (=> b!592662 m!570785))

(check-sat (not b!592670) (not b!592663) (not b!592662) (not b!592665) (not b!592666) (not b!592664) (not b!592655) (not b!592654) (not b!592661) (not start!54266) (not b!592658) (not b!592656))
(check-sat)
