; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54174 () Bool)

(assert start!54174)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!337830 () Bool)

(declare-datatypes ((array!36867 0))(
  ( (array!36868 (arr!17700 (Array (_ BitVec 32) (_ BitVec 64))) (size!18064 (_ BitVec 32))) )
))
(declare-fun lt!268547 () array!36867)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36867)

(declare-fun b!591630 () Bool)

(declare-fun arrayContainsKey!0 (array!36867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591630 (= e!337830 (arrayContainsKey!0 lt!268547 (select (arr!17700 a!2986) j!136) index!984))))

(declare-fun b!591631 () Bool)

(declare-datatypes ((Unit!18532 0))(
  ( (Unit!18533) )
))
(declare-fun e!337837 () Unit!18532)

(declare-fun Unit!18534 () Unit!18532)

(assert (=> b!591631 (= e!337837 Unit!18534)))

(assert (=> b!591631 false))

(declare-fun b!591632 () Bool)

(declare-fun e!337827 () Bool)

(assert (=> b!591632 (= e!337827 e!337830)))

(declare-fun res!378717 () Bool)

(assert (=> b!591632 (=> (not res!378717) (not e!337830))))

(assert (=> b!591632 (= res!378717 (arrayContainsKey!0 lt!268547 (select (arr!17700 a!2986) j!136) j!136))))

(declare-fun b!591633 () Bool)

(declare-fun res!378704 () Bool)

(declare-fun e!337832 () Bool)

(assert (=> b!591633 (=> (not res!378704) (not e!337832))))

(declare-datatypes ((List!11794 0))(
  ( (Nil!11791) (Cons!11790 (h!12835 (_ BitVec 64)) (t!18030 List!11794)) )
))
(declare-fun arrayNoDuplicates!0 (array!36867 (_ BitVec 32) List!11794) Bool)

(assert (=> b!591633 (= res!378704 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11791))))

(declare-fun b!591634 () Bool)

(declare-fun e!337828 () Bool)

(declare-datatypes ((SeekEntryResult!6147 0))(
  ( (MissingZero!6147 (index!26823 (_ BitVec 32))) (Found!6147 (index!26824 (_ BitVec 32))) (Intermediate!6147 (undefined!6959 Bool) (index!26825 (_ BitVec 32)) (x!55644 (_ BitVec 32))) (Undefined!6147) (MissingVacant!6147 (index!26826 (_ BitVec 32))) )
))
(declare-fun lt!268548 () SeekEntryResult!6147)

(declare-fun lt!268543 () SeekEntryResult!6147)

(assert (=> b!591634 (= e!337828 (= lt!268548 lt!268543))))

(declare-fun b!591635 () Bool)

(declare-fun res!378714 () Bool)

(declare-fun e!337833 () Bool)

(assert (=> b!591635 (=> (not res!378714) (not e!337833))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!591635 (= res!378714 (and (= (size!18064 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18064 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18064 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591636 () Bool)

(declare-fun e!337834 () Bool)

(assert (=> b!591636 (= e!337832 e!337834)))

(declare-fun res!378710 () Bool)

(assert (=> b!591636 (=> (not res!378710) (not e!337834))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591636 (= res!378710 (= (select (store (arr!17700 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591636 (= lt!268547 (array!36868 (store (arr!17700 a!2986) i!1108 k!1786) (size!18064 a!2986)))))

(declare-fun b!591637 () Bool)

(declare-fun res!378711 () Bool)

(assert (=> b!591637 (=> (not res!378711) (not e!337833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591637 (= res!378711 (validKeyInArray!0 k!1786))))

(declare-fun b!591638 () Bool)

(declare-fun e!337835 () Bool)

(assert (=> b!591638 (= e!337835 true)))

(declare-fun e!337829 () Bool)

(assert (=> b!591638 e!337829))

(declare-fun res!378712 () Bool)

(assert (=> b!591638 (=> (not res!378712) (not e!337829))))

(declare-fun lt!268549 () (_ BitVec 64))

(assert (=> b!591638 (= res!378712 (= lt!268549 (select (arr!17700 a!2986) j!136)))))

(assert (=> b!591638 (= lt!268549 (select (store (arr!17700 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591639 () Bool)

(declare-fun e!337836 () Bool)

(assert (=> b!591639 (= e!337836 (not e!337835))))

(declare-fun res!378718 () Bool)

(assert (=> b!591639 (=> res!378718 e!337835)))

(declare-fun lt!268550 () SeekEntryResult!6147)

(assert (=> b!591639 (= res!378718 (not (= lt!268550 (Found!6147 index!984))))))

(declare-fun lt!268551 () Unit!18532)

(assert (=> b!591639 (= lt!268551 e!337837)))

(declare-fun c!66830 () Bool)

(assert (=> b!591639 (= c!66830 (= lt!268550 Undefined!6147))))

(declare-fun lt!268544 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36867 (_ BitVec 32)) SeekEntryResult!6147)

(assert (=> b!591639 (= lt!268550 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268544 lt!268547 mask!3053))))

(assert (=> b!591639 e!337828))

(declare-fun res!378715 () Bool)

(assert (=> b!591639 (=> (not res!378715) (not e!337828))))

(declare-fun lt!268542 () (_ BitVec 32))

(assert (=> b!591639 (= res!378715 (= lt!268543 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268542 vacantSpotIndex!68 lt!268544 lt!268547 mask!3053)))))

(assert (=> b!591639 (= lt!268543 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268542 vacantSpotIndex!68 (select (arr!17700 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591639 (= lt!268544 (select (store (arr!17700 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268545 () Unit!18532)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18532)

(assert (=> b!591639 (= lt!268545 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268542 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591639 (= lt!268542 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591640 () Bool)

(declare-fun res!378706 () Bool)

(assert (=> b!591640 (=> (not res!378706) (not e!337832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36867 (_ BitVec 32)) Bool)

(assert (=> b!591640 (= res!378706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591641 () Bool)

(assert (=> b!591641 (= e!337834 e!337836)))

(declare-fun res!378705 () Bool)

(assert (=> b!591641 (=> (not res!378705) (not e!337836))))

(assert (=> b!591641 (= res!378705 (and (= lt!268548 (Found!6147 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17700 a!2986) index!984) (select (arr!17700 a!2986) j!136))) (not (= (select (arr!17700 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!591641 (= lt!268548 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17700 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591642 () Bool)

(declare-fun Unit!18535 () Unit!18532)

(assert (=> b!591642 (= e!337837 Unit!18535)))

(declare-fun b!591643 () Bool)

(declare-fun res!378707 () Bool)

(assert (=> b!591643 (=> (not res!378707) (not e!337833))))

(assert (=> b!591643 (= res!378707 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591645 () Bool)

(declare-fun res!378708 () Bool)

(assert (=> b!591645 (=> (not res!378708) (not e!337832))))

(assert (=> b!591645 (= res!378708 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17700 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!378716 () Bool)

(assert (=> start!54174 (=> (not res!378716) (not e!337833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54174 (= res!378716 (validMask!0 mask!3053))))

(assert (=> start!54174 e!337833))

(assert (=> start!54174 true))

(declare-fun array_inv!13474 (array!36867) Bool)

(assert (=> start!54174 (array_inv!13474 a!2986)))

(declare-fun b!591644 () Bool)

(assert (=> b!591644 (= e!337829 e!337827)))

(declare-fun res!378713 () Bool)

(assert (=> b!591644 (=> res!378713 e!337827)))

(assert (=> b!591644 (= res!378713 (or (not (= (select (arr!17700 a!2986) j!136) lt!268544)) (not (= (select (arr!17700 a!2986) j!136) lt!268549)) (bvsge j!136 index!984)))))

(declare-fun b!591646 () Bool)

(assert (=> b!591646 (= e!337833 e!337832)))

(declare-fun res!378719 () Bool)

(assert (=> b!591646 (=> (not res!378719) (not e!337832))))

(declare-fun lt!268546 () SeekEntryResult!6147)

(assert (=> b!591646 (= res!378719 (or (= lt!268546 (MissingZero!6147 i!1108)) (= lt!268546 (MissingVacant!6147 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36867 (_ BitVec 32)) SeekEntryResult!6147)

(assert (=> b!591646 (= lt!268546 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591647 () Bool)

(declare-fun res!378709 () Bool)

(assert (=> b!591647 (=> (not res!378709) (not e!337833))))

(assert (=> b!591647 (= res!378709 (validKeyInArray!0 (select (arr!17700 a!2986) j!136)))))

(assert (= (and start!54174 res!378716) b!591635))

(assert (= (and b!591635 res!378714) b!591647))

(assert (= (and b!591647 res!378709) b!591637))

(assert (= (and b!591637 res!378711) b!591643))

(assert (= (and b!591643 res!378707) b!591646))

(assert (= (and b!591646 res!378719) b!591640))

(assert (= (and b!591640 res!378706) b!591633))

(assert (= (and b!591633 res!378704) b!591645))

(assert (= (and b!591645 res!378708) b!591636))

(assert (= (and b!591636 res!378710) b!591641))

(assert (= (and b!591641 res!378705) b!591639))

(assert (= (and b!591639 res!378715) b!591634))

(assert (= (and b!591639 c!66830) b!591631))

(assert (= (and b!591639 (not c!66830)) b!591642))

(assert (= (and b!591639 (not res!378718)) b!591638))

(assert (= (and b!591638 res!378712) b!591644))

(assert (= (and b!591644 (not res!378713)) b!591632))

(assert (= (and b!591632 res!378717) b!591630))

(declare-fun m!569853 () Bool)

(assert (=> b!591644 m!569853))

(assert (=> b!591632 m!569853))

(assert (=> b!591632 m!569853))

(declare-fun m!569855 () Bool)

(assert (=> b!591632 m!569855))

(assert (=> b!591630 m!569853))

(assert (=> b!591630 m!569853))

(declare-fun m!569857 () Bool)

(assert (=> b!591630 m!569857))

(declare-fun m!569859 () Bool)

(assert (=> b!591637 m!569859))

(declare-fun m!569861 () Bool)

(assert (=> b!591636 m!569861))

(declare-fun m!569863 () Bool)

(assert (=> b!591636 m!569863))

(assert (=> b!591638 m!569853))

(assert (=> b!591638 m!569861))

(declare-fun m!569865 () Bool)

(assert (=> b!591638 m!569865))

(assert (=> b!591647 m!569853))

(assert (=> b!591647 m!569853))

(declare-fun m!569867 () Bool)

(assert (=> b!591647 m!569867))

(declare-fun m!569869 () Bool)

(assert (=> b!591640 m!569869))

(declare-fun m!569871 () Bool)

(assert (=> start!54174 m!569871))

(declare-fun m!569873 () Bool)

(assert (=> start!54174 m!569873))

(declare-fun m!569875 () Bool)

(assert (=> b!591639 m!569875))

(declare-fun m!569877 () Bool)

(assert (=> b!591639 m!569877))

(declare-fun m!569879 () Bool)

(assert (=> b!591639 m!569879))

(assert (=> b!591639 m!569853))

(declare-fun m!569881 () Bool)

(assert (=> b!591639 m!569881))

(assert (=> b!591639 m!569861))

(declare-fun m!569883 () Bool)

(assert (=> b!591639 m!569883))

(assert (=> b!591639 m!569853))

(declare-fun m!569885 () Bool)

(assert (=> b!591639 m!569885))

(declare-fun m!569887 () Bool)

(assert (=> b!591646 m!569887))

(declare-fun m!569889 () Bool)

(assert (=> b!591641 m!569889))

(assert (=> b!591641 m!569853))

(assert (=> b!591641 m!569853))

(declare-fun m!569891 () Bool)

(assert (=> b!591641 m!569891))

(declare-fun m!569893 () Bool)

(assert (=> b!591645 m!569893))

(declare-fun m!569895 () Bool)

(assert (=> b!591643 m!569895))

(declare-fun m!569897 () Bool)

(assert (=> b!591633 m!569897))

(push 1)

