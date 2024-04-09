; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54180 () Bool)

(assert start!54180)

(declare-fun b!591794 () Bool)

(declare-fun res!378858 () Bool)

(declare-fun e!337937 () Bool)

(assert (=> b!591794 (=> (not res!378858) (not e!337937))))

(declare-datatypes ((array!36873 0))(
  ( (array!36874 (arr!17703 (Array (_ BitVec 32) (_ BitVec 64))) (size!18067 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36873)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591794 (= res!378858 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591795 () Bool)

(declare-fun res!378866 () Bool)

(assert (=> b!591795 (=> (not res!378866) (not e!337937))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591795 (= res!378866 (validKeyInArray!0 (select (arr!17703 a!2986) j!136)))))

(declare-fun b!591796 () Bool)

(declare-datatypes ((Unit!18544 0))(
  ( (Unit!18545) )
))
(declare-fun e!337935 () Unit!18544)

(declare-fun Unit!18546 () Unit!18544)

(assert (=> b!591796 (= e!337935 Unit!18546)))

(declare-fun b!591797 () Bool)

(declare-fun e!337928 () Bool)

(declare-fun e!337938 () Bool)

(assert (=> b!591797 (= e!337928 e!337938)))

(declare-fun res!378863 () Bool)

(assert (=> b!591797 (=> res!378863 e!337938)))

(declare-fun lt!268644 () (_ BitVec 64))

(declare-fun lt!268642 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591797 (= res!378863 (or (not (= (select (arr!17703 a!2986) j!136) lt!268644)) (not (= (select (arr!17703 a!2986) j!136) lt!268642)) (bvsge j!136 index!984)))))

(declare-fun b!591798 () Bool)

(declare-fun e!337931 () Bool)

(assert (=> b!591798 (= e!337938 e!337931)))

(declare-fun res!378859 () Bool)

(assert (=> b!591798 (=> (not res!378859) (not e!337931))))

(declare-fun lt!268643 () array!36873)

(assert (=> b!591798 (= res!378859 (arrayContainsKey!0 lt!268643 (select (arr!17703 a!2986) j!136) j!136))))

(declare-fun b!591799 () Bool)

(assert (=> b!591799 (= e!337931 (arrayContainsKey!0 lt!268643 (select (arr!17703 a!2986) j!136) index!984))))

(declare-fun b!591801 () Bool)

(declare-fun Unit!18547 () Unit!18544)

(assert (=> b!591801 (= e!337935 Unit!18547)))

(assert (=> b!591801 false))

(declare-fun b!591802 () Bool)

(declare-fun res!378854 () Bool)

(declare-fun e!337930 () Bool)

(assert (=> b!591802 (=> (not res!378854) (not e!337930))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36873 (_ BitVec 32)) Bool)

(assert (=> b!591802 (= res!378854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591803 () Bool)

(declare-fun res!378857 () Bool)

(assert (=> b!591803 (=> (not res!378857) (not e!337930))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!591803 (= res!378857 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17703 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591804 () Bool)

(declare-fun e!337939 () Bool)

(declare-fun e!337934 () Bool)

(assert (=> b!591804 (= e!337939 e!337934)))

(declare-fun res!378855 () Bool)

(assert (=> b!591804 (=> (not res!378855) (not e!337934))))

(declare-datatypes ((SeekEntryResult!6150 0))(
  ( (MissingZero!6150 (index!26835 (_ BitVec 32))) (Found!6150 (index!26836 (_ BitVec 32))) (Intermediate!6150 (undefined!6962 Bool) (index!26837 (_ BitVec 32)) (x!55655 (_ BitVec 32))) (Undefined!6150) (MissingVacant!6150 (index!26838 (_ BitVec 32))) )
))
(declare-fun lt!268641 () SeekEntryResult!6150)

(assert (=> b!591804 (= res!378855 (and (= lt!268641 (Found!6150 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17703 a!2986) index!984) (select (arr!17703 a!2986) j!136))) (not (= (select (arr!17703 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36873 (_ BitVec 32)) SeekEntryResult!6150)

(assert (=> b!591804 (= lt!268641 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17703 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591805 () Bool)

(declare-fun res!378865 () Bool)

(assert (=> b!591805 (=> (not res!378865) (not e!337937))))

(assert (=> b!591805 (= res!378865 (validKeyInArray!0 k!1786))))

(declare-fun b!591806 () Bool)

(assert (=> b!591806 (= e!337937 e!337930)))

(declare-fun res!378853 () Bool)

(assert (=> b!591806 (=> (not res!378853) (not e!337930))))

(declare-fun lt!268634 () SeekEntryResult!6150)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!591806 (= res!378853 (or (= lt!268634 (MissingZero!6150 i!1108)) (= lt!268634 (MissingVacant!6150 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36873 (_ BitVec 32)) SeekEntryResult!6150)

(assert (=> b!591806 (= lt!268634 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591807 () Bool)

(declare-fun res!378856 () Bool)

(assert (=> b!591807 (=> (not res!378856) (not e!337937))))

(assert (=> b!591807 (= res!378856 (and (= (size!18067 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18067 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18067 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591808 () Bool)

(assert (=> b!591808 (= e!337930 e!337939)))

(declare-fun res!378862 () Bool)

(assert (=> b!591808 (=> (not res!378862) (not e!337939))))

(assert (=> b!591808 (= res!378862 (= (select (store (arr!17703 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591808 (= lt!268643 (array!36874 (store (arr!17703 a!2986) i!1108 k!1786) (size!18067 a!2986)))))

(declare-fun b!591809 () Bool)

(declare-fun e!337929 () Bool)

(assert (=> b!591809 (= e!337929 (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000))))

(assert (=> b!591809 (arrayContainsKey!0 lt!268643 (select (arr!17703 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268637 () Unit!18544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36873 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18544)

(assert (=> b!591809 (= lt!268637 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268643 (select (arr!17703 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!591810 () Bool)

(declare-fun res!378860 () Bool)

(assert (=> b!591810 (=> (not res!378860) (not e!337930))))

(declare-datatypes ((List!11797 0))(
  ( (Nil!11794) (Cons!11793 (h!12838 (_ BitVec 64)) (t!18033 List!11797)) )
))
(declare-fun arrayNoDuplicates!0 (array!36873 (_ BitVec 32) List!11797) Bool)

(assert (=> b!591810 (= res!378860 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11794))))

(declare-fun b!591811 () Bool)

(declare-fun e!337936 () Bool)

(declare-fun lt!268635 () SeekEntryResult!6150)

(assert (=> b!591811 (= e!337936 (= lt!268641 lt!268635))))

(declare-fun b!591812 () Bool)

(declare-fun e!337933 () Bool)

(assert (=> b!591812 (= e!337933 e!337929)))

(declare-fun res!378861 () Bool)

(assert (=> b!591812 (=> res!378861 e!337929)))

(assert (=> b!591812 (= res!378861 (or (not (= (select (arr!17703 a!2986) j!136) lt!268644)) (not (= (select (arr!17703 a!2986) j!136) lt!268642)) (bvsge j!136 index!984)))))

(assert (=> b!591812 e!337928))

(declare-fun res!378850 () Bool)

(assert (=> b!591812 (=> (not res!378850) (not e!337928))))

(assert (=> b!591812 (= res!378850 (= lt!268642 (select (arr!17703 a!2986) j!136)))))

(assert (=> b!591812 (= lt!268642 (select (store (arr!17703 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!378851 () Bool)

(assert (=> start!54180 (=> (not res!378851) (not e!337937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54180 (= res!378851 (validMask!0 mask!3053))))

(assert (=> start!54180 e!337937))

(assert (=> start!54180 true))

(declare-fun array_inv!13477 (array!36873) Bool)

(assert (=> start!54180 (array_inv!13477 a!2986)))

(declare-fun b!591800 () Bool)

(assert (=> b!591800 (= e!337934 (not e!337933))))

(declare-fun res!378852 () Bool)

(assert (=> b!591800 (=> res!378852 e!337933)))

(declare-fun lt!268640 () SeekEntryResult!6150)

(assert (=> b!591800 (= res!378852 (not (= lt!268640 (Found!6150 index!984))))))

(declare-fun lt!268636 () Unit!18544)

(assert (=> b!591800 (= lt!268636 e!337935)))

(declare-fun c!66839 () Bool)

(assert (=> b!591800 (= c!66839 (= lt!268640 Undefined!6150))))

(assert (=> b!591800 (= lt!268640 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268644 lt!268643 mask!3053))))

(assert (=> b!591800 e!337936))

(declare-fun res!378864 () Bool)

(assert (=> b!591800 (=> (not res!378864) (not e!337936))))

(declare-fun lt!268638 () (_ BitVec 32))

(assert (=> b!591800 (= res!378864 (= lt!268635 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268638 vacantSpotIndex!68 lt!268644 lt!268643 mask!3053)))))

(assert (=> b!591800 (= lt!268635 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268638 vacantSpotIndex!68 (select (arr!17703 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591800 (= lt!268644 (select (store (arr!17703 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268639 () Unit!18544)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36873 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18544)

(assert (=> b!591800 (= lt!268639 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268638 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591800 (= lt!268638 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!54180 res!378851) b!591807))

(assert (= (and b!591807 res!378856) b!591795))

(assert (= (and b!591795 res!378866) b!591805))

(assert (= (and b!591805 res!378865) b!591794))

(assert (= (and b!591794 res!378858) b!591806))

(assert (= (and b!591806 res!378853) b!591802))

(assert (= (and b!591802 res!378854) b!591810))

(assert (= (and b!591810 res!378860) b!591803))

(assert (= (and b!591803 res!378857) b!591808))

(assert (= (and b!591808 res!378862) b!591804))

(assert (= (and b!591804 res!378855) b!591800))

(assert (= (and b!591800 res!378864) b!591811))

(assert (= (and b!591800 c!66839) b!591801))

(assert (= (and b!591800 (not c!66839)) b!591796))

(assert (= (and b!591800 (not res!378852)) b!591812))

(assert (= (and b!591812 res!378850) b!591797))

(assert (= (and b!591797 (not res!378863)) b!591798))

(assert (= (and b!591798 res!378859) b!591799))

(assert (= (and b!591812 (not res!378861)) b!591809))

(declare-fun m!569991 () Bool)

(assert (=> b!591805 m!569991))

(declare-fun m!569993 () Bool)

(assert (=> b!591804 m!569993))

(declare-fun m!569995 () Bool)

(assert (=> b!591804 m!569995))

(assert (=> b!591804 m!569995))

(declare-fun m!569997 () Bool)

(assert (=> b!591804 m!569997))

(assert (=> b!591795 m!569995))

(assert (=> b!591795 m!569995))

(declare-fun m!569999 () Bool)

(assert (=> b!591795 m!569999))

(assert (=> b!591798 m!569995))

(assert (=> b!591798 m!569995))

(declare-fun m!570001 () Bool)

(assert (=> b!591798 m!570001))

(declare-fun m!570003 () Bool)

(assert (=> b!591800 m!570003))

(declare-fun m!570005 () Bool)

(assert (=> b!591800 m!570005))

(assert (=> b!591800 m!569995))

(declare-fun m!570007 () Bool)

(assert (=> b!591800 m!570007))

(declare-fun m!570009 () Bool)

(assert (=> b!591800 m!570009))

(assert (=> b!591800 m!569995))

(declare-fun m!570011 () Bool)

(assert (=> b!591800 m!570011))

(declare-fun m!570013 () Bool)

(assert (=> b!591800 m!570013))

(declare-fun m!570015 () Bool)

(assert (=> b!591800 m!570015))

(declare-fun m!570017 () Bool)

(assert (=> start!54180 m!570017))

(declare-fun m!570019 () Bool)

(assert (=> start!54180 m!570019))

(assert (=> b!591809 m!569995))

(assert (=> b!591809 m!569995))

(declare-fun m!570021 () Bool)

(assert (=> b!591809 m!570021))

(assert (=> b!591809 m!569995))

(declare-fun m!570023 () Bool)

(assert (=> b!591809 m!570023))

(declare-fun m!570025 () Bool)

(assert (=> b!591803 m!570025))

(declare-fun m!570027 () Bool)

(assert (=> b!591802 m!570027))

(declare-fun m!570029 () Bool)

(assert (=> b!591810 m!570029))

(assert (=> b!591799 m!569995))

(assert (=> b!591799 m!569995))

(declare-fun m!570031 () Bool)

(assert (=> b!591799 m!570031))

(assert (=> b!591812 m!569995))

(assert (=> b!591812 m!570007))

(declare-fun m!570033 () Bool)

(assert (=> b!591812 m!570033))

(declare-fun m!570035 () Bool)

(assert (=> b!591794 m!570035))

(declare-fun m!570037 () Bool)

(assert (=> b!591806 m!570037))

(assert (=> b!591797 m!569995))

(assert (=> b!591808 m!570007))

(declare-fun m!570039 () Bool)

(assert (=> b!591808 m!570039))

(push 1)

