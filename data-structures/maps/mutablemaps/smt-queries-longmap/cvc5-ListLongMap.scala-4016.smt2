; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54576 () Bool)

(assert start!54576)

(declare-fun b!596687 () Bool)

(declare-fun e!340929 () Bool)

(declare-fun e!340927 () Bool)

(assert (=> b!596687 (= e!340929 e!340927)))

(declare-fun res!382625 () Bool)

(assert (=> b!596687 (=> (not res!382625) (not e!340927))))

(declare-datatypes ((SeekEntryResult!6207 0))(
  ( (MissingZero!6207 (index!27075 (_ BitVec 32))) (Found!6207 (index!27076 (_ BitVec 32))) (Intermediate!6207 (undefined!7019 Bool) (index!27077 (_ BitVec 32)) (x!55900 (_ BitVec 32))) (Undefined!6207) (MissingVacant!6207 (index!27078 (_ BitVec 32))) )
))
(declare-fun lt!271107 () SeekEntryResult!6207)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596687 (= res!382625 (or (= lt!271107 (MissingZero!6207 i!1108)) (= lt!271107 (MissingVacant!6207 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36999 0))(
  ( (array!37000 (arr!17760 (Array (_ BitVec 32) (_ BitVec 64))) (size!18124 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36999)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36999 (_ BitVec 32)) SeekEntryResult!6207)

(assert (=> b!596687 (= lt!271107 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!382617 () Bool)

(assert (=> start!54576 (=> (not res!382617) (not e!340929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54576 (= res!382617 (validMask!0 mask!3053))))

(assert (=> start!54576 e!340929))

(assert (=> start!54576 true))

(declare-fun array_inv!13534 (array!36999) Bool)

(assert (=> start!54576 (array_inv!13534 a!2986)))

(declare-fun b!596688 () Bool)

(declare-fun e!340933 () Bool)

(declare-fun e!340924 () Bool)

(assert (=> b!596688 (= e!340933 (not e!340924))))

(declare-fun res!382609 () Bool)

(assert (=> b!596688 (=> res!382609 e!340924)))

(declare-fun lt!271112 () SeekEntryResult!6207)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596688 (= res!382609 (not (= lt!271112 (Found!6207 index!984))))))

(declare-datatypes ((Unit!18772 0))(
  ( (Unit!18773) )
))
(declare-fun lt!271114 () Unit!18772)

(declare-fun e!340925 () Unit!18772)

(assert (=> b!596688 (= lt!271114 e!340925)))

(declare-fun c!67406 () Bool)

(assert (=> b!596688 (= c!67406 (= lt!271112 Undefined!6207))))

(declare-fun lt!271111 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!271110 () array!36999)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36999 (_ BitVec 32)) SeekEntryResult!6207)

(assert (=> b!596688 (= lt!271112 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271111 lt!271110 mask!3053))))

(declare-fun e!340922 () Bool)

(assert (=> b!596688 e!340922))

(declare-fun res!382623 () Bool)

(assert (=> b!596688 (=> (not res!382623) (not e!340922))))

(declare-fun lt!271106 () SeekEntryResult!6207)

(declare-fun lt!271116 () (_ BitVec 32))

(assert (=> b!596688 (= res!382623 (= lt!271106 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 lt!271111 lt!271110 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!596688 (= lt!271106 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 (select (arr!17760 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596688 (= lt!271111 (select (store (arr!17760 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271108 () Unit!18772)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36999 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18772)

(assert (=> b!596688 (= lt!271108 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596688 (= lt!271116 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596689 () Bool)

(declare-fun e!340931 () Bool)

(assert (=> b!596689 (= e!340924 e!340931)))

(declare-fun res!382616 () Bool)

(assert (=> b!596689 (=> res!382616 e!340931)))

(declare-fun lt!271115 () (_ BitVec 64))

(assert (=> b!596689 (= res!382616 (or (not (= (select (arr!17760 a!2986) j!136) lt!271111)) (not (= (select (arr!17760 a!2986) j!136) lt!271115)) (bvsge j!136 index!984)))))

(declare-fun e!340928 () Bool)

(assert (=> b!596689 e!340928))

(declare-fun res!382611 () Bool)

(assert (=> b!596689 (=> (not res!382611) (not e!340928))))

(assert (=> b!596689 (= res!382611 (= lt!271115 (select (arr!17760 a!2986) j!136)))))

(assert (=> b!596689 (= lt!271115 (select (store (arr!17760 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596690 () Bool)

(assert (=> b!596690 (= e!340931 (or (bvsgt #b00000000000000000000000000000000 (size!18124 a!2986)) (bvslt (size!18124 a!2986) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!11854 0))(
  ( (Nil!11851) (Cons!11850 (h!12895 (_ BitVec 64)) (t!18090 List!11854)) )
))
(declare-fun arrayNoDuplicates!0 (array!36999 (_ BitVec 32) List!11854) Bool)

(assert (=> b!596690 (arrayNoDuplicates!0 lt!271110 #b00000000000000000000000000000000 Nil!11851)))

(declare-fun lt!271105 () Unit!18772)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!36999 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11854) Unit!18772)

(assert (=> b!596690 (= lt!271105 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11851))))

(declare-fun arrayContainsKey!0 (array!36999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596690 (arrayContainsKey!0 lt!271110 (select (arr!17760 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271113 () Unit!18772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36999 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18772)

(assert (=> b!596690 (= lt!271113 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271110 (select (arr!17760 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596691 () Bool)

(declare-fun e!340930 () Bool)

(assert (=> b!596691 (= e!340930 e!340933)))

(declare-fun res!382614 () Bool)

(assert (=> b!596691 (=> (not res!382614) (not e!340933))))

(declare-fun lt!271109 () SeekEntryResult!6207)

(assert (=> b!596691 (= res!382614 (and (= lt!271109 (Found!6207 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17760 a!2986) index!984) (select (arr!17760 a!2986) j!136))) (not (= (select (arr!17760 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!596691 (= lt!271109 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17760 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596692 () Bool)

(declare-fun e!340932 () Bool)

(declare-fun e!340926 () Bool)

(assert (=> b!596692 (= e!340932 e!340926)))

(declare-fun res!382620 () Bool)

(assert (=> b!596692 (=> (not res!382620) (not e!340926))))

(assert (=> b!596692 (= res!382620 (arrayContainsKey!0 lt!271110 (select (arr!17760 a!2986) j!136) j!136))))

(declare-fun b!596693 () Bool)

(assert (=> b!596693 (= e!340926 (arrayContainsKey!0 lt!271110 (select (arr!17760 a!2986) j!136) index!984))))

(declare-fun b!596694 () Bool)

(declare-fun Unit!18774 () Unit!18772)

(assert (=> b!596694 (= e!340925 Unit!18774)))

(declare-fun b!596695 () Bool)

(declare-fun res!382610 () Bool)

(assert (=> b!596695 (=> (not res!382610) (not e!340927))))

(assert (=> b!596695 (= res!382610 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17760 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596696 () Bool)

(declare-fun Unit!18775 () Unit!18772)

(assert (=> b!596696 (= e!340925 Unit!18775)))

(assert (=> b!596696 false))

(declare-fun b!596697 () Bool)

(assert (=> b!596697 (= e!340928 e!340932)))

(declare-fun res!382619 () Bool)

(assert (=> b!596697 (=> res!382619 e!340932)))

(assert (=> b!596697 (= res!382619 (or (not (= (select (arr!17760 a!2986) j!136) lt!271111)) (not (= (select (arr!17760 a!2986) j!136) lt!271115)) (bvsge j!136 index!984)))))

(declare-fun b!596698 () Bool)

(declare-fun res!382618 () Bool)

(assert (=> b!596698 (=> (not res!382618) (not e!340929))))

(assert (=> b!596698 (= res!382618 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596699 () Bool)

(assert (=> b!596699 (= e!340927 e!340930)))

(declare-fun res!382622 () Bool)

(assert (=> b!596699 (=> (not res!382622) (not e!340930))))

(assert (=> b!596699 (= res!382622 (= (select (store (arr!17760 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596699 (= lt!271110 (array!37000 (store (arr!17760 a!2986) i!1108 k!1786) (size!18124 a!2986)))))

(declare-fun b!596700 () Bool)

(declare-fun res!382624 () Bool)

(assert (=> b!596700 (=> (not res!382624) (not e!340927))))

(assert (=> b!596700 (= res!382624 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11851))))

(declare-fun b!596701 () Bool)

(declare-fun res!382621 () Bool)

(assert (=> b!596701 (=> (not res!382621) (not e!340929))))

(assert (=> b!596701 (= res!382621 (and (= (size!18124 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18124 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18124 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596702 () Bool)

(assert (=> b!596702 (= e!340922 (= lt!271109 lt!271106))))

(declare-fun b!596703 () Bool)

(declare-fun res!382613 () Bool)

(assert (=> b!596703 (=> (not res!382613) (not e!340927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36999 (_ BitVec 32)) Bool)

(assert (=> b!596703 (= res!382613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596704 () Bool)

(declare-fun res!382612 () Bool)

(assert (=> b!596704 (=> (not res!382612) (not e!340929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596704 (= res!382612 (validKeyInArray!0 k!1786))))

(declare-fun b!596705 () Bool)

(declare-fun res!382615 () Bool)

(assert (=> b!596705 (=> (not res!382615) (not e!340929))))

(assert (=> b!596705 (= res!382615 (validKeyInArray!0 (select (arr!17760 a!2986) j!136)))))

(assert (= (and start!54576 res!382617) b!596701))

(assert (= (and b!596701 res!382621) b!596705))

(assert (= (and b!596705 res!382615) b!596704))

(assert (= (and b!596704 res!382612) b!596698))

(assert (= (and b!596698 res!382618) b!596687))

(assert (= (and b!596687 res!382625) b!596703))

(assert (= (and b!596703 res!382613) b!596700))

(assert (= (and b!596700 res!382624) b!596695))

(assert (= (and b!596695 res!382610) b!596699))

(assert (= (and b!596699 res!382622) b!596691))

(assert (= (and b!596691 res!382614) b!596688))

(assert (= (and b!596688 res!382623) b!596702))

(assert (= (and b!596688 c!67406) b!596696))

(assert (= (and b!596688 (not c!67406)) b!596694))

(assert (= (and b!596688 (not res!382609)) b!596689))

(assert (= (and b!596689 res!382611) b!596697))

(assert (= (and b!596697 (not res!382619)) b!596692))

(assert (= (and b!596692 res!382620) b!596693))

(assert (= (and b!596689 (not res!382616)) b!596690))

(declare-fun m!574179 () Bool)

(assert (=> b!596695 m!574179))

(declare-fun m!574181 () Bool)

(assert (=> b!596692 m!574181))

(assert (=> b!596692 m!574181))

(declare-fun m!574183 () Bool)

(assert (=> b!596692 m!574183))

(declare-fun m!574185 () Bool)

(assert (=> b!596691 m!574185))

(assert (=> b!596691 m!574181))

(assert (=> b!596691 m!574181))

(declare-fun m!574187 () Bool)

(assert (=> b!596691 m!574187))

(assert (=> b!596690 m!574181))

(declare-fun m!574189 () Bool)

(assert (=> b!596690 m!574189))

(assert (=> b!596690 m!574181))

(declare-fun m!574191 () Bool)

(assert (=> b!596690 m!574191))

(assert (=> b!596690 m!574181))

(declare-fun m!574193 () Bool)

(assert (=> b!596690 m!574193))

(declare-fun m!574195 () Bool)

(assert (=> b!596690 m!574195))

(declare-fun m!574197 () Bool)

(assert (=> start!54576 m!574197))

(declare-fun m!574199 () Bool)

(assert (=> start!54576 m!574199))

(declare-fun m!574201 () Bool)

(assert (=> b!596703 m!574201))

(assert (=> b!596697 m!574181))

(declare-fun m!574203 () Bool)

(assert (=> b!596698 m!574203))

(declare-fun m!574205 () Bool)

(assert (=> b!596687 m!574205))

(declare-fun m!574207 () Bool)

(assert (=> b!596700 m!574207))

(declare-fun m!574209 () Bool)

(assert (=> b!596688 m!574209))

(declare-fun m!574211 () Bool)

(assert (=> b!596688 m!574211))

(declare-fun m!574213 () Bool)

(assert (=> b!596688 m!574213))

(assert (=> b!596688 m!574181))

(declare-fun m!574215 () Bool)

(assert (=> b!596688 m!574215))

(assert (=> b!596688 m!574181))

(declare-fun m!574217 () Bool)

(assert (=> b!596688 m!574217))

(declare-fun m!574219 () Bool)

(assert (=> b!596688 m!574219))

(declare-fun m!574221 () Bool)

(assert (=> b!596688 m!574221))

(assert (=> b!596689 m!574181))

(assert (=> b!596689 m!574221))

(declare-fun m!574223 () Bool)

(assert (=> b!596689 m!574223))

(assert (=> b!596705 m!574181))

(assert (=> b!596705 m!574181))

(declare-fun m!574225 () Bool)

(assert (=> b!596705 m!574225))

(assert (=> b!596699 m!574221))

(declare-fun m!574227 () Bool)

(assert (=> b!596699 m!574227))

(assert (=> b!596693 m!574181))

(assert (=> b!596693 m!574181))

(declare-fun m!574229 () Bool)

(assert (=> b!596693 m!574229))

(declare-fun m!574231 () Bool)

(assert (=> b!596704 m!574231))

(push 1)

(assert (not b!596691))

(assert (not b!596692))

(assert (not b!596700))

(assert (not b!596687))

(assert (not b!596690))

(assert (not b!596698))

(assert (not b!596688))

(assert (not b!596693))

(assert (not b!596704))

(assert (not b!596703))

(assert (not b!596705))

(assert (not start!54576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86599 () Bool)

(declare-fun res!382743 () Bool)

(declare-fun e!341036 () Bool)

(assert (=> d!86599 (=> res!382743 e!341036)))

(assert (=> d!86599 (= res!382743 (= (select (arr!17760 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86599 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!341036)))

(declare-fun b!596865 () Bool)

(declare-fun e!341037 () Bool)

(assert (=> b!596865 (= e!341036 e!341037)))

(declare-fun res!382744 () Bool)

(assert (=> b!596865 (=> (not res!382744) (not e!341037))))

(assert (=> b!596865 (= res!382744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18124 a!2986)))))

(declare-fun b!596866 () Bool)

(assert (=> b!596866 (= e!341037 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86599 (not res!382743)) b!596865))

(assert (= (and b!596865 res!382744) b!596866))

(declare-fun m!574379 () Bool)

(assert (=> d!86599 m!574379))

(declare-fun m!574381 () Bool)

(assert (=> b!596866 m!574381))

(assert (=> b!596698 d!86599))

(declare-fun b!596943 () Bool)

(declare-fun e!341093 () SeekEntryResult!6207)

(declare-fun lt!271231 () SeekEntryResult!6207)

(assert (=> b!596943 (= e!341093 (Found!6207 (index!27077 lt!271231)))))

(declare-fun b!596944 () Bool)

(declare-fun e!341094 () SeekEntryResult!6207)

(assert (=> b!596944 (= e!341094 (MissingZero!6207 (index!27077 lt!271231)))))

(declare-fun b!596945 () Bool)

(assert (=> b!596945 (= e!341094 (seekKeyOrZeroReturnVacant!0 (x!55900 lt!271231) (index!27077 lt!271231) (index!27077 lt!271231) k!1786 a!2986 mask!3053))))

(declare-fun b!596946 () Bool)

(declare-fun c!67450 () Bool)

(declare-fun lt!271229 () (_ BitVec 64))

(assert (=> b!596946 (= c!67450 (= lt!271229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596946 (= e!341093 e!341094)))

(declare-fun b!596947 () Bool)

(declare-fun e!341095 () SeekEntryResult!6207)

(assert (=> b!596947 (= e!341095 e!341093)))

(assert (=> b!596947 (= lt!271229 (select (arr!17760 a!2986) (index!27077 lt!271231)))))

(declare-fun c!67451 () Bool)

(assert (=> b!596947 (= c!67451 (= lt!271229 k!1786))))

(declare-fun d!86603 () Bool)

(declare-fun lt!271230 () SeekEntryResult!6207)

(assert (=> d!86603 (and (or (is-Undefined!6207 lt!271230) (not (is-Found!6207 lt!271230)) (and (bvsge (index!27076 lt!271230) #b00000000000000000000000000000000) (bvslt (index!27076 lt!271230) (size!18124 a!2986)))) (or (is-Undefined!6207 lt!271230) (is-Found!6207 lt!271230) (not (is-MissingZero!6207 lt!271230)) (and (bvsge (index!27075 lt!271230) #b00000000000000000000000000000000) (bvslt (index!27075 lt!271230) (size!18124 a!2986)))) (or (is-Undefined!6207 lt!271230) (is-Found!6207 lt!271230) (is-MissingZero!6207 lt!271230) (not (is-MissingVacant!6207 lt!271230)) (and (bvsge (index!27078 lt!271230) #b00000000000000000000000000000000) (bvslt (index!27078 lt!271230) (size!18124 a!2986)))) (or (is-Undefined!6207 lt!271230) (ite (is-Found!6207 lt!271230) (= (select (arr!17760 a!2986) (index!27076 lt!271230)) k!1786) (ite (is-MissingZero!6207 lt!271230) (= (select (arr!17760 a!2986) (index!27075 lt!271230)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6207 lt!271230) (= (select (arr!17760 a!2986) (index!27078 lt!271230)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86603 (= lt!271230 e!341095)))

(declare-fun c!67449 () Bool)

(assert (=> d!86603 (= c!67449 (and (is-Intermediate!6207 lt!271231) (undefined!7019 lt!271231)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36999 (_ BitVec 32)) SeekEntryResult!6207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86603 (= lt!271231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86603 (validMask!0 mask!3053)))

(assert (=> d!86603 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!271230)))

(declare-fun b!596948 () Bool)

(assert (=> b!596948 (= e!341095 Undefined!6207)))

(assert (= (and d!86603 c!67449) b!596948))

(assert (= (and d!86603 (not c!67449)) b!596947))

(assert (= (and b!596947 c!67451) b!596943))

(assert (= (and b!596947 (not c!67451)) b!596946))

(assert (= (and b!596946 c!67450) b!596944))

(assert (= (and b!596946 (not c!67450)) b!596945))

(declare-fun m!574435 () Bool)

(assert (=> b!596945 m!574435))

(declare-fun m!574437 () Bool)

(assert (=> b!596947 m!574437))

(declare-fun m!574439 () Bool)

(assert (=> d!86603 m!574439))

(declare-fun m!574441 () Bool)

(assert (=> d!86603 m!574441))

(assert (=> d!86603 m!574439))

(declare-fun m!574443 () Bool)

(assert (=> d!86603 m!574443))

(assert (=> d!86603 m!574197))

(declare-fun m!574445 () Bool)

(assert (=> d!86603 m!574445))

(declare-fun m!574447 () Bool)

(assert (=> d!86603 m!574447))

(assert (=> b!596687 d!86603))

(declare-fun d!86623 () Bool)

(declare-fun e!341114 () Bool)

(assert (=> d!86623 e!341114))

(declare-fun res!382784 () Bool)

(assert (=> d!86623 (=> (not res!382784) (not e!341114))))

(assert (=> d!86623 (= res!382784 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18124 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18124 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18124 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18124 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18124 a!2986))))))

(declare-fun lt!271245 () Unit!18772)

(declare-fun choose!9 (array!36999 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18772)

(assert (=> d!86623 (= lt!271245 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86623 (validMask!0 mask!3053)))

(assert (=> d!86623 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 mask!3053) lt!271245)))

(declare-fun b!596980 () Bool)

(assert (=> b!596980 (= e!341114 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 (select (arr!17760 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 (select (store (arr!17760 a!2986) i!1108 k!1786) j!136) (array!37000 (store (arr!17760 a!2986) i!1108 k!1786) (size!18124 a!2986)) mask!3053)))))

(assert (= (and d!86623 res!382784) b!596980))

(declare-fun m!574473 () Bool)

(assert (=> d!86623 m!574473))

(assert (=> d!86623 m!574197))

(assert (=> b!596980 m!574213))

(assert (=> b!596980 m!574181))

(assert (=> b!596980 m!574221))

(assert (=> b!596980 m!574181))

(assert (=> b!596980 m!574215))

(assert (=> b!596980 m!574213))

(declare-fun m!574475 () Bool)

(assert (=> b!596980 m!574475))

(assert (=> b!596688 d!86623))

(declare-fun b!597024 () Bool)

(declare-fun e!341145 () SeekEntryResult!6207)

(declare-fun e!341143 () SeekEntryResult!6207)

(assert (=> b!597024 (= e!341145 e!341143)))

(declare-fun c!67482 () Bool)

(declare-fun lt!271269 () (_ BitVec 64))

(assert (=> b!597024 (= c!67482 (= lt!271269 lt!271111))))

(declare-fun d!86637 () Bool)

(declare-fun lt!271270 () SeekEntryResult!6207)

(assert (=> d!86637 (and (or (is-Undefined!6207 lt!271270) (not (is-Found!6207 lt!271270)) (and (bvsge (index!27076 lt!271270) #b00000000000000000000000000000000) (bvslt (index!27076 lt!271270) (size!18124 lt!271110)))) (or (is-Undefined!6207 lt!271270) (is-Found!6207 lt!271270) (not (is-MissingVacant!6207 lt!271270)) (not (= (index!27078 lt!271270) vacantSpotIndex!68)) (and (bvsge (index!27078 lt!271270) #b00000000000000000000000000000000) (bvslt (index!27078 lt!271270) (size!18124 lt!271110)))) (or (is-Undefined!6207 lt!271270) (ite (is-Found!6207 lt!271270) (= (select (arr!17760 lt!271110) (index!27076 lt!271270)) lt!271111) (and (is-MissingVacant!6207 lt!271270) (= (index!27078 lt!271270) vacantSpotIndex!68) (= (select (arr!17760 lt!271110) (index!27078 lt!271270)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86637 (= lt!271270 e!341145)))

(declare-fun c!67480 () Bool)

(assert (=> d!86637 (= c!67480 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86637 (= lt!271269 (select (arr!17760 lt!271110) lt!271116))))

(assert (=> d!86637 (validMask!0 mask!3053)))

(assert (=> d!86637 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 lt!271111 lt!271110 mask!3053) lt!271270)))

(declare-fun b!597025 () Bool)

(declare-fun e!341144 () SeekEntryResult!6207)

(assert (=> b!597025 (= e!341144 (MissingVacant!6207 vacantSpotIndex!68))))

(declare-fun b!597026 () Bool)

(declare-fun c!67481 () Bool)

(assert (=> b!597026 (= c!67481 (= lt!271269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597026 (= e!341143 e!341144)))

(declare-fun b!597027 () Bool)

(assert (=> b!597027 (= e!341145 Undefined!6207)))

(declare-fun b!597028 () Bool)

(assert (=> b!597028 (= e!341144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271116 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!271111 lt!271110 mask!3053))))

(declare-fun b!597029 () Bool)

(assert (=> b!597029 (= e!341143 (Found!6207 lt!271116))))

(assert (= (and d!86637 c!67480) b!597027))

(assert (= (and d!86637 (not c!67480)) b!597024))

(assert (= (and b!597024 c!67482) b!597029))

(assert (= (and b!597024 (not c!67482)) b!597026))

(assert (= (and b!597026 c!67481) b!597025))

(assert (= (and b!597026 (not c!67481)) b!597028))

(declare-fun m!574515 () Bool)

(assert (=> d!86637 m!574515))

(declare-fun m!574517 () Bool)

(assert (=> d!86637 m!574517))

(declare-fun m!574519 () Bool)

(assert (=> d!86637 m!574519))

(assert (=> d!86637 m!574197))

(declare-fun m!574521 () Bool)

(assert (=> b!597028 m!574521))

(assert (=> b!597028 m!574521))

(declare-fun m!574523 () Bool)

(assert (=> b!597028 m!574523))

(assert (=> b!596688 d!86637))

(declare-fun d!86653 () Bool)

(declare-fun lt!271273 () (_ BitVec 32))

(assert (=> d!86653 (and (bvsge lt!271273 #b00000000000000000000000000000000) (bvslt lt!271273 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86653 (= lt!271273 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86653 (validMask!0 mask!3053)))

(assert (=> d!86653 (= (nextIndex!0 index!984 x!910 mask!3053) lt!271273)))

(declare-fun bs!18363 () Bool)

(assert (= bs!18363 d!86653))

(declare-fun m!574525 () Bool)

(assert (=> bs!18363 m!574525))

(assert (=> bs!18363 m!574197))

(assert (=> b!596688 d!86653))

(declare-fun b!597030 () Bool)

(declare-fun e!341148 () SeekEntryResult!6207)

(declare-fun e!341146 () SeekEntryResult!6207)

(assert (=> b!597030 (= e!341148 e!341146)))

(declare-fun lt!271274 () (_ BitVec 64))

(declare-fun c!67485 () Bool)

(assert (=> b!597030 (= c!67485 (= lt!271274 (select (arr!17760 a!2986) j!136)))))

(declare-fun d!86655 () Bool)

(declare-fun lt!271275 () SeekEntryResult!6207)

(assert (=> d!86655 (and (or (is-Undefined!6207 lt!271275) (not (is-Found!6207 lt!271275)) (and (bvsge (index!27076 lt!271275) #b00000000000000000000000000000000) (bvslt (index!27076 lt!271275) (size!18124 a!2986)))) (or (is-Undefined!6207 lt!271275) (is-Found!6207 lt!271275) (not (is-MissingVacant!6207 lt!271275)) (not (= (index!27078 lt!271275) vacantSpotIndex!68)) (and (bvsge (index!27078 lt!271275) #b00000000000000000000000000000000) (bvslt (index!27078 lt!271275) (size!18124 a!2986)))) (or (is-Undefined!6207 lt!271275) (ite (is-Found!6207 lt!271275) (= (select (arr!17760 a!2986) (index!27076 lt!271275)) (select (arr!17760 a!2986) j!136)) (and (is-MissingVacant!6207 lt!271275) (= (index!27078 lt!271275) vacantSpotIndex!68) (= (select (arr!17760 a!2986) (index!27078 lt!271275)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86655 (= lt!271275 e!341148)))

(declare-fun c!67483 () Bool)

(assert (=> d!86655 (= c!67483 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86655 (= lt!271274 (select (arr!17760 a!2986) lt!271116))))

(assert (=> d!86655 (validMask!0 mask!3053)))

(assert (=> d!86655 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271116 vacantSpotIndex!68 (select (arr!17760 a!2986) j!136) a!2986 mask!3053) lt!271275)))

(declare-fun b!597031 () Bool)

(declare-fun e!341147 () SeekEntryResult!6207)

(assert (=> b!597031 (= e!341147 (MissingVacant!6207 vacantSpotIndex!68))))

(declare-fun b!597032 () Bool)

(declare-fun c!67484 () Bool)

(assert (=> b!597032 (= c!67484 (= lt!271274 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597032 (= e!341146 e!341147)))

(declare-fun b!597033 () Bool)

(assert (=> b!597033 (= e!341148 Undefined!6207)))

(declare-fun b!597034 () Bool)

(assert (=> b!597034 (= e!341147 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271116 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17760 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597035 () Bool)

(assert (=> b!597035 (= e!341146 (Found!6207 lt!271116))))

(assert (= (and d!86655 c!67483) b!597033))

(assert (= (and d!86655 (not c!67483)) b!597030))

(assert (= (and b!597030 c!67485) b!597035))

(assert (= (and b!597030 (not c!67485)) b!597032))

(assert (= (and b!597032 c!67484) b!597031))

(assert (= (and b!597032 (not c!67484)) b!597034))

(declare-fun m!574527 () Bool)

(assert (=> d!86655 m!574527))

(declare-fun m!574529 () Bool)

(assert (=> d!86655 m!574529))

(declare-fun m!574531 () Bool)

(assert (=> d!86655 m!574531))

(assert (=> d!86655 m!574197))

(assert (=> b!597034 m!574521))

(assert (=> b!597034 m!574521))

(assert (=> b!597034 m!574181))

(declare-fun m!574533 () Bool)

(assert (=> b!597034 m!574533))

(assert (=> b!596688 d!86655))

(declare-fun b!597036 () Bool)

(declare-fun e!341151 () SeekEntryResult!6207)

(declare-fun e!341149 () SeekEntryResult!6207)

(assert (=> b!597036 (= e!341151 e!341149)))

(declare-fun c!67488 () Bool)

(declare-fun lt!271276 () (_ BitVec 64))

(assert (=> b!597036 (= c!67488 (= lt!271276 lt!271111))))

(declare-fun lt!271277 () SeekEntryResult!6207)

(declare-fun d!86657 () Bool)

(assert (=> d!86657 (and (or (is-Undefined!6207 lt!271277) (not (is-Found!6207 lt!271277)) (and (bvsge (index!27076 lt!271277) #b00000000000000000000000000000000) (bvslt (index!27076 lt!271277) (size!18124 lt!271110)))) (or (is-Undefined!6207 lt!271277) (is-Found!6207 lt!271277) (not (is-MissingVacant!6207 lt!271277)) (not (= (index!27078 lt!271277) vacantSpotIndex!68)) (and (bvsge (index!27078 lt!271277) #b00000000000000000000000000000000) (bvslt (index!27078 lt!271277) (size!18124 lt!271110)))) (or (is-Undefined!6207 lt!271277) (ite (is-Found!6207 lt!271277) (= (select (arr!17760 lt!271110) (index!27076 lt!271277)) lt!271111) (and (is-MissingVacant!6207 lt!271277) (= (index!27078 lt!271277) vacantSpotIndex!68) (= (select (arr!17760 lt!271110) (index!27078 lt!271277)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86657 (= lt!271277 e!341151)))

(declare-fun c!67486 () Bool)

(assert (=> d!86657 (= c!67486 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86657 (= lt!271276 (select (arr!17760 lt!271110) index!984))))

(assert (=> d!86657 (validMask!0 mask!3053)))

(assert (=> d!86657 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271111 lt!271110 mask!3053) lt!271277)))

(declare-fun b!597037 () Bool)

(declare-fun e!341150 () SeekEntryResult!6207)

(assert (=> b!597037 (= e!341150 (MissingVacant!6207 vacantSpotIndex!68))))

(declare-fun b!597038 () Bool)

(declare-fun c!67487 () Bool)

(assert (=> b!597038 (= c!67487 (= lt!271276 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597038 (= e!341149 e!341150)))

(declare-fun b!597039 () Bool)

(assert (=> b!597039 (= e!341151 Undefined!6207)))

(declare-fun b!597040 () Bool)

(assert (=> b!597040 (= e!341150 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271111 lt!271110 mask!3053))))

(declare-fun b!597041 () Bool)

(assert (=> b!597041 (= e!341149 (Found!6207 index!984))))

(assert (= (and d!86657 c!67486) b!597039))

(assert (= (and d!86657 (not c!67486)) b!597036))

(assert (= (and b!597036 c!67488) b!597041))

(assert (= (and b!597036 (not c!67488)) b!597038))

(assert (= (and b!597038 c!67487) b!597037))

(assert (= (and b!597038 (not c!67487)) b!597040))

(declare-fun m!574535 () Bool)

(assert (=> d!86657 m!574535))

(declare-fun m!574537 () Bool)

(assert (=> d!86657 m!574537))

(declare-fun m!574539 () Bool)

(assert (=> d!86657 m!574539))

(assert (=> d!86657 m!574197))

(assert (=> b!597040 m!574211))

(assert (=> b!597040 m!574211))

(declare-fun m!574541 () Bool)

(assert (=> b!597040 m!574541))

(assert (=> b!596688 d!86657))

(declare-fun bm!32907 () Bool)

(declare-fun call!32910 () Bool)

(declare-fun c!67491 () Bool)

(assert (=> bm!32907 (= call!32910 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67491 (Cons!11850 (select (arr!17760 a!2986) #b00000000000000000000000000000000) Nil!11851) Nil!11851)))))

(declare-fun b!597052 () Bool)

(declare-fun e!341163 () Bool)

(declare-fun e!341161 () Bool)

(assert (=> b!597052 (= e!341163 e!341161)))

(declare-fun res!382805 () Bool)

(assert (=> b!597052 (=> (not res!382805) (not e!341161))))

(declare-fun e!341160 () Bool)

(assert (=> b!597052 (= res!382805 (not e!341160))))

(declare-fun res!382804 () Bool)

(assert (=> b!597052 (=> (not res!382804) (not e!341160))))

(assert (=> b!597052 (= res!382804 (validKeyInArray!0 (select (arr!17760 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597053 () Bool)

(declare-fun contains!2957 (List!11854 (_ BitVec 64)) Bool)

(assert (=> b!597053 (= e!341160 (contains!2957 Nil!11851 (select (arr!17760 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597054 () Bool)

(declare-fun e!341162 () Bool)

(assert (=> b!597054 (= e!341162 call!32910)))

