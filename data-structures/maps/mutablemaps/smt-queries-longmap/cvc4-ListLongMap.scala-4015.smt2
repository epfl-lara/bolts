; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54574 () Bool)

(assert start!54574)

(declare-fun b!596630 () Bool)

(declare-fun res!382567 () Bool)

(declare-fun e!340892 () Bool)

(assert (=> b!596630 (=> (not res!382567) (not e!340892))))

(declare-datatypes ((array!36997 0))(
  ( (array!36998 (arr!17759 (Array (_ BitVec 32) (_ BitVec 64))) (size!18123 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36997)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596630 (= res!382567 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596631 () Bool)

(declare-fun e!340889 () Bool)

(declare-fun e!340886 () Bool)

(assert (=> b!596631 (= e!340889 e!340886)))

(declare-fun res!382573 () Bool)

(assert (=> b!596631 (=> (not res!382573) (not e!340886))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6206 0))(
  ( (MissingZero!6206 (index!27071 (_ BitVec 32))) (Found!6206 (index!27072 (_ BitVec 32))) (Intermediate!6206 (undefined!7018 Bool) (index!27073 (_ BitVec 32)) (x!55891 (_ BitVec 32))) (Undefined!6206) (MissingVacant!6206 (index!27074 (_ BitVec 32))) )
))
(declare-fun lt!271079 () SeekEntryResult!6206)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596631 (= res!382573 (and (= lt!271079 (Found!6206 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17759 a!2986) index!984) (select (arr!17759 a!2986) j!136))) (not (= (select (arr!17759 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36997 (_ BitVec 32)) SeekEntryResult!6206)

(assert (=> b!596631 (= lt!271079 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17759 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596632 () Bool)

(declare-fun e!340888 () Bool)

(declare-fun lt!271069 () SeekEntryResult!6206)

(assert (=> b!596632 (= e!340888 (= lt!271079 lt!271069))))

(declare-fun b!596633 () Bool)

(declare-fun e!340890 () Bool)

(declare-fun e!340891 () Bool)

(assert (=> b!596633 (= e!340890 e!340891)))

(declare-fun res!382574 () Bool)

(assert (=> b!596633 (=> res!382574 e!340891)))

(declare-fun lt!271075 () (_ BitVec 64))

(declare-fun lt!271072 () (_ BitVec 64))

(assert (=> b!596633 (= res!382574 (or (not (= (select (arr!17759 a!2986) j!136) lt!271075)) (not (= (select (arr!17759 a!2986) j!136) lt!271072)) (bvsge j!136 index!984)))))

(declare-fun b!596634 () Bool)

(declare-fun e!340895 () Bool)

(declare-fun e!340897 () Bool)

(assert (=> b!596634 (= e!340895 e!340897)))

(declare-fun res!382564 () Bool)

(assert (=> b!596634 (=> res!382564 e!340897)))

(assert (=> b!596634 (= res!382564 (or (not (= (select (arr!17759 a!2986) j!136) lt!271075)) (not (= (select (arr!17759 a!2986) j!136) lt!271072)) (bvsge j!136 index!984)))))

(assert (=> b!596634 e!340890))

(declare-fun res!382569 () Bool)

(assert (=> b!596634 (=> (not res!382569) (not e!340890))))

(assert (=> b!596634 (= res!382569 (= lt!271072 (select (arr!17759 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596634 (= lt!271072 (select (store (arr!17759 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596635 () Bool)

(declare-fun res!382560 () Bool)

(declare-fun e!340887 () Bool)

(assert (=> b!596635 (=> (not res!382560) (not e!340887))))

(assert (=> b!596635 (= res!382560 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17759 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!271070 () array!36997)

(declare-fun e!340894 () Bool)

(declare-fun b!596636 () Bool)

(assert (=> b!596636 (= e!340894 (arrayContainsKey!0 lt!271070 (select (arr!17759 a!2986) j!136) index!984))))

(declare-fun b!596637 () Bool)

(declare-datatypes ((Unit!18768 0))(
  ( (Unit!18769) )
))
(declare-fun e!340896 () Unit!18768)

(declare-fun Unit!18770 () Unit!18768)

(assert (=> b!596637 (= e!340896 Unit!18770)))

(declare-fun b!596639 () Bool)

(declare-fun res!382571 () Bool)

(assert (=> b!596639 (=> (not res!382571) (not e!340887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36997 (_ BitVec 32)) Bool)

(assert (=> b!596639 (= res!382571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596640 () Bool)

(assert (=> b!596640 (= e!340897 (bvsle #b00000000000000000000000000000000 (size!18123 a!2986)))))

(declare-datatypes ((List!11853 0))(
  ( (Nil!11850) (Cons!11849 (h!12894 (_ BitVec 64)) (t!18089 List!11853)) )
))
(declare-fun arrayNoDuplicates!0 (array!36997 (_ BitVec 32) List!11853) Bool)

(assert (=> b!596640 (arrayNoDuplicates!0 lt!271070 #b00000000000000000000000000000000 Nil!11850)))

(declare-fun lt!271078 () Unit!18768)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!36997 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11853) Unit!18768)

(assert (=> b!596640 (= lt!271078 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11850))))

(assert (=> b!596640 (arrayContainsKey!0 lt!271070 (select (arr!17759 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271076 () Unit!18768)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36997 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18768)

(assert (=> b!596640 (= lt!271076 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271070 (select (arr!17759 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596641 () Bool)

(assert (=> b!596641 (= e!340891 e!340894)))

(declare-fun res!382568 () Bool)

(assert (=> b!596641 (=> (not res!382568) (not e!340894))))

(assert (=> b!596641 (= res!382568 (arrayContainsKey!0 lt!271070 (select (arr!17759 a!2986) j!136) j!136))))

(declare-fun b!596642 () Bool)

(declare-fun res!382561 () Bool)

(assert (=> b!596642 (=> (not res!382561) (not e!340892))))

(assert (=> b!596642 (= res!382561 (and (= (size!18123 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18123 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18123 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596643 () Bool)

(declare-fun Unit!18771 () Unit!18768)

(assert (=> b!596643 (= e!340896 Unit!18771)))

(assert (=> b!596643 false))

(declare-fun b!596644 () Bool)

(assert (=> b!596644 (= e!340886 (not e!340895))))

(declare-fun res!382570 () Bool)

(assert (=> b!596644 (=> res!382570 e!340895)))

(declare-fun lt!271077 () SeekEntryResult!6206)

(assert (=> b!596644 (= res!382570 (not (= lt!271077 (Found!6206 index!984))))))

(declare-fun lt!271073 () Unit!18768)

(assert (=> b!596644 (= lt!271073 e!340896)))

(declare-fun c!67403 () Bool)

(assert (=> b!596644 (= c!67403 (= lt!271077 Undefined!6206))))

(assert (=> b!596644 (= lt!271077 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271075 lt!271070 mask!3053))))

(assert (=> b!596644 e!340888))

(declare-fun res!382559 () Bool)

(assert (=> b!596644 (=> (not res!382559) (not e!340888))))

(declare-fun lt!271071 () (_ BitVec 32))

(assert (=> b!596644 (= res!382559 (= lt!271069 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271071 vacantSpotIndex!68 lt!271075 lt!271070 mask!3053)))))

(assert (=> b!596644 (= lt!271069 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271071 vacantSpotIndex!68 (select (arr!17759 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596644 (= lt!271075 (select (store (arr!17759 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271080 () Unit!18768)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18768)

(assert (=> b!596644 (= lt!271080 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271071 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596644 (= lt!271071 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596645 () Bool)

(assert (=> b!596645 (= e!340892 e!340887)))

(declare-fun res!382562 () Bool)

(assert (=> b!596645 (=> (not res!382562) (not e!340887))))

(declare-fun lt!271074 () SeekEntryResult!6206)

(assert (=> b!596645 (= res!382562 (or (= lt!271074 (MissingZero!6206 i!1108)) (= lt!271074 (MissingVacant!6206 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36997 (_ BitVec 32)) SeekEntryResult!6206)

(assert (=> b!596645 (= lt!271074 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596646 () Bool)

(declare-fun res!382566 () Bool)

(assert (=> b!596646 (=> (not res!382566) (not e!340892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596646 (= res!382566 (validKeyInArray!0 k!1786))))

(declare-fun b!596647 () Bool)

(declare-fun res!382558 () Bool)

(assert (=> b!596647 (=> (not res!382558) (not e!340892))))

(assert (=> b!596647 (= res!382558 (validKeyInArray!0 (select (arr!17759 a!2986) j!136)))))

(declare-fun b!596648 () Bool)

(declare-fun res!382565 () Bool)

(assert (=> b!596648 (=> (not res!382565) (not e!340887))))

(assert (=> b!596648 (= res!382565 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11850))))

(declare-fun res!382563 () Bool)

(assert (=> start!54574 (=> (not res!382563) (not e!340892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54574 (= res!382563 (validMask!0 mask!3053))))

(assert (=> start!54574 e!340892))

(assert (=> start!54574 true))

(declare-fun array_inv!13533 (array!36997) Bool)

(assert (=> start!54574 (array_inv!13533 a!2986)))

(declare-fun b!596638 () Bool)

(assert (=> b!596638 (= e!340887 e!340889)))

(declare-fun res!382572 () Bool)

(assert (=> b!596638 (=> (not res!382572) (not e!340889))))

(assert (=> b!596638 (= res!382572 (= (select (store (arr!17759 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596638 (= lt!271070 (array!36998 (store (arr!17759 a!2986) i!1108 k!1786) (size!18123 a!2986)))))

(assert (= (and start!54574 res!382563) b!596642))

(assert (= (and b!596642 res!382561) b!596647))

(assert (= (and b!596647 res!382558) b!596646))

(assert (= (and b!596646 res!382566) b!596630))

(assert (= (and b!596630 res!382567) b!596645))

(assert (= (and b!596645 res!382562) b!596639))

(assert (= (and b!596639 res!382571) b!596648))

(assert (= (and b!596648 res!382565) b!596635))

(assert (= (and b!596635 res!382560) b!596638))

(assert (= (and b!596638 res!382572) b!596631))

(assert (= (and b!596631 res!382573) b!596644))

(assert (= (and b!596644 res!382559) b!596632))

(assert (= (and b!596644 c!67403) b!596643))

(assert (= (and b!596644 (not c!67403)) b!596637))

(assert (= (and b!596644 (not res!382570)) b!596634))

(assert (= (and b!596634 res!382569) b!596633))

(assert (= (and b!596633 (not res!382574)) b!596641))

(assert (= (and b!596641 res!382568) b!596636))

(assert (= (and b!596634 (not res!382564)) b!596640))

(declare-fun m!574125 () Bool)

(assert (=> b!596633 m!574125))

(declare-fun m!574127 () Bool)

(assert (=> b!596635 m!574127))

(declare-fun m!574129 () Bool)

(assert (=> b!596631 m!574129))

(assert (=> b!596631 m!574125))

(assert (=> b!596631 m!574125))

(declare-fun m!574131 () Bool)

(assert (=> b!596631 m!574131))

(declare-fun m!574133 () Bool)

(assert (=> start!54574 m!574133))

(declare-fun m!574135 () Bool)

(assert (=> start!54574 m!574135))

(assert (=> b!596641 m!574125))

(assert (=> b!596641 m!574125))

(declare-fun m!574137 () Bool)

(assert (=> b!596641 m!574137))

(assert (=> b!596640 m!574125))

(assert (=> b!596640 m!574125))

(declare-fun m!574139 () Bool)

(assert (=> b!596640 m!574139))

(assert (=> b!596640 m!574125))

(declare-fun m!574141 () Bool)

(assert (=> b!596640 m!574141))

(declare-fun m!574143 () Bool)

(assert (=> b!596640 m!574143))

(declare-fun m!574145 () Bool)

(assert (=> b!596640 m!574145))

(declare-fun m!574147 () Bool)

(assert (=> b!596639 m!574147))

(assert (=> b!596647 m!574125))

(assert (=> b!596647 m!574125))

(declare-fun m!574149 () Bool)

(assert (=> b!596647 m!574149))

(declare-fun m!574151 () Bool)

(assert (=> b!596630 m!574151))

(declare-fun m!574153 () Bool)

(assert (=> b!596638 m!574153))

(declare-fun m!574155 () Bool)

(assert (=> b!596638 m!574155))

(declare-fun m!574157 () Bool)

(assert (=> b!596648 m!574157))

(declare-fun m!574159 () Bool)

(assert (=> b!596646 m!574159))

(declare-fun m!574161 () Bool)

(assert (=> b!596644 m!574161))

(declare-fun m!574163 () Bool)

(assert (=> b!596644 m!574163))

(assert (=> b!596644 m!574125))

(assert (=> b!596644 m!574153))

(declare-fun m!574165 () Bool)

(assert (=> b!596644 m!574165))

(declare-fun m!574167 () Bool)

(assert (=> b!596644 m!574167))

(assert (=> b!596644 m!574125))

(declare-fun m!574169 () Bool)

(assert (=> b!596644 m!574169))

(declare-fun m!574171 () Bool)

(assert (=> b!596644 m!574171))

(assert (=> b!596634 m!574125))

(assert (=> b!596634 m!574153))

(declare-fun m!574173 () Bool)

(assert (=> b!596634 m!574173))

(assert (=> b!596636 m!574125))

(assert (=> b!596636 m!574125))

(declare-fun m!574175 () Bool)

(assert (=> b!596636 m!574175))

(declare-fun m!574177 () Bool)

(assert (=> b!596645 m!574177))

(push 1)

