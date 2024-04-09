; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54580 () Bool)

(assert start!54580)

(declare-fun b!596801 () Bool)

(declare-fun res!382726 () Bool)

(declare-fun e!340994 () Bool)

(assert (=> b!596801 (=> (not res!382726) (not e!340994))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37003 0))(
  ( (array!37004 (arr!17762 (Array (_ BitVec 32) (_ BitVec 64))) (size!18126 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37003)

(assert (=> b!596801 (= res!382726 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17762 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596802 () Bool)

(declare-fun e!340999 () Bool)

(declare-fun e!340995 () Bool)

(assert (=> b!596802 (= e!340999 e!340995)))

(declare-fun res!382711 () Bool)

(assert (=> b!596802 (=> res!382711 e!340995)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!271180 () (_ BitVec 64))

(declare-fun lt!271186 () (_ BitVec 64))

(assert (=> b!596802 (= res!382711 (or (not (= (select (arr!17762 a!2986) j!136) lt!271186)) (not (= (select (arr!17762 a!2986) j!136) lt!271180)) (bvsge j!136 index!984)))))

(declare-fun b!596803 () Bool)

(declare-fun e!341003 () Bool)

(declare-datatypes ((SeekEntryResult!6209 0))(
  ( (MissingZero!6209 (index!27083 (_ BitVec 32))) (Found!6209 (index!27084 (_ BitVec 32))) (Intermediate!6209 (undefined!7021 Bool) (index!27085 (_ BitVec 32)) (x!55902 (_ BitVec 32))) (Undefined!6209) (MissingVacant!6209 (index!27086 (_ BitVec 32))) )
))
(declare-fun lt!271181 () SeekEntryResult!6209)

(declare-fun lt!271185 () SeekEntryResult!6209)

(assert (=> b!596803 (= e!341003 (= lt!271181 lt!271185))))

(declare-fun b!596804 () Bool)

(declare-datatypes ((Unit!18780 0))(
  ( (Unit!18781) )
))
(declare-fun e!340998 () Unit!18780)

(declare-fun Unit!18782 () Unit!18780)

(assert (=> b!596804 (= e!340998 Unit!18782)))

(declare-fun b!596805 () Bool)

(declare-fun res!382718 () Bool)

(declare-fun e!341004 () Bool)

(assert (=> b!596805 (=> (not res!382718) (not e!341004))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596805 (= res!382718 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596806 () Bool)

(declare-fun e!341002 () Bool)

(assert (=> b!596806 (= e!340995 e!341002)))

(declare-fun res!382722 () Bool)

(assert (=> b!596806 (=> (not res!382722) (not e!341002))))

(declare-fun lt!271177 () array!37003)

(assert (=> b!596806 (= res!382722 (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) j!136))))

(declare-fun b!596807 () Bool)

(assert (=> b!596807 (= e!341004 e!340994)))

(declare-fun res!382712 () Bool)

(assert (=> b!596807 (=> (not res!382712) (not e!340994))))

(declare-fun lt!271188 () SeekEntryResult!6209)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!596807 (= res!382712 (or (= lt!271188 (MissingZero!6209 i!1108)) (= lt!271188 (MissingVacant!6209 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37003 (_ BitVec 32)) SeekEntryResult!6209)

(assert (=> b!596807 (= lt!271188 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596808 () Bool)

(declare-fun res!382725 () Bool)

(assert (=> b!596808 (=> (not res!382725) (not e!340994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37003 (_ BitVec 32)) Bool)

(assert (=> b!596808 (= res!382725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596809 () Bool)

(declare-fun res!382724 () Bool)

(assert (=> b!596809 (=> (not res!382724) (not e!340994))))

(declare-datatypes ((List!11856 0))(
  ( (Nil!11853) (Cons!11852 (h!12897 (_ BitVec 64)) (t!18092 List!11856)) )
))
(declare-fun arrayNoDuplicates!0 (array!37003 (_ BitVec 32) List!11856) Bool)

(assert (=> b!596809 (= res!382724 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11853))))

(declare-fun res!382717 () Bool)

(assert (=> start!54580 (=> (not res!382717) (not e!341004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54580 (= res!382717 (validMask!0 mask!3053))))

(assert (=> start!54580 e!341004))

(assert (=> start!54580 true))

(declare-fun array_inv!13536 (array!37003) Bool)

(assert (=> start!54580 (array_inv!13536 a!2986)))

(declare-fun b!596810 () Bool)

(declare-fun res!382713 () Bool)

(assert (=> b!596810 (=> (not res!382713) (not e!341004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596810 (= res!382713 (validKeyInArray!0 k!1786))))

(declare-fun b!596811 () Bool)

(declare-fun e!341000 () Bool)

(declare-fun e!341005 () Bool)

(assert (=> b!596811 (= e!341000 e!341005)))

(declare-fun res!382716 () Bool)

(assert (=> b!596811 (=> res!382716 e!341005)))

(assert (=> b!596811 (= res!382716 (or (not (= (select (arr!17762 a!2986) j!136) lt!271186)) (not (= (select (arr!17762 a!2986) j!136) lt!271180)) (bvsge j!136 index!984)))))

(assert (=> b!596811 e!340999))

(declare-fun res!382723 () Bool)

(assert (=> b!596811 (=> (not res!382723) (not e!340999))))

(assert (=> b!596811 (= res!382723 (= lt!271180 (select (arr!17762 a!2986) j!136)))))

(assert (=> b!596811 (= lt!271180 (select (store (arr!17762 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596812 () Bool)

(declare-fun res!382720 () Bool)

(assert (=> b!596812 (=> (not res!382720) (not e!341004))))

(assert (=> b!596812 (= res!382720 (validKeyInArray!0 (select (arr!17762 a!2986) j!136)))))

(declare-fun b!596813 () Bool)

(declare-fun Unit!18783 () Unit!18780)

(assert (=> b!596813 (= e!340998 Unit!18783)))

(assert (=> b!596813 false))

(declare-fun b!596814 () Bool)

(declare-fun res!382727 () Bool)

(assert (=> b!596814 (=> (not res!382727) (not e!341004))))

(assert (=> b!596814 (= res!382727 (and (= (size!18126 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18126 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18126 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596815 () Bool)

(assert (=> b!596815 (= e!341005 (or (bvsgt #b00000000000000000000000000000000 (size!18126 a!2986)) (bvslt (size!18126 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!596815 (arrayNoDuplicates!0 lt!271177 #b00000000000000000000000000000000 Nil!11853)))

(declare-fun lt!271183 () Unit!18780)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37003 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11856) Unit!18780)

(assert (=> b!596815 (= lt!271183 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11853))))

(assert (=> b!596815 (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271187 () Unit!18780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37003 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18780)

(assert (=> b!596815 (= lt!271187 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271177 (select (arr!17762 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596816 () Bool)

(declare-fun e!341001 () Bool)

(assert (=> b!596816 (= e!341001 (not e!341000))))

(declare-fun res!382721 () Bool)

(assert (=> b!596816 (=> res!382721 e!341000)))

(declare-fun lt!271182 () SeekEntryResult!6209)

(assert (=> b!596816 (= res!382721 (not (= lt!271182 (Found!6209 index!984))))))

(declare-fun lt!271179 () Unit!18780)

(assert (=> b!596816 (= lt!271179 e!340998)))

(declare-fun c!67412 () Bool)

(assert (=> b!596816 (= c!67412 (= lt!271182 Undefined!6209))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37003 (_ BitVec 32)) SeekEntryResult!6209)

(assert (=> b!596816 (= lt!271182 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271186 lt!271177 mask!3053))))

(assert (=> b!596816 e!341003))

(declare-fun res!382719 () Bool)

(assert (=> b!596816 (=> (not res!382719) (not e!341003))))

(declare-fun lt!271178 () (_ BitVec 32))

(assert (=> b!596816 (= res!382719 (= lt!271185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 lt!271186 lt!271177 mask!3053)))))

(assert (=> b!596816 (= lt!271185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 (select (arr!17762 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596816 (= lt!271186 (select (store (arr!17762 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271184 () Unit!18780)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18780)

(assert (=> b!596816 (= lt!271184 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596816 (= lt!271178 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596817 () Bool)

(declare-fun e!340996 () Bool)

(assert (=> b!596817 (= e!340996 e!341001)))

(declare-fun res!382714 () Bool)

(assert (=> b!596817 (=> (not res!382714) (not e!341001))))

(assert (=> b!596817 (= res!382714 (and (= lt!271181 (Found!6209 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17762 a!2986) index!984) (select (arr!17762 a!2986) j!136))) (not (= (select (arr!17762 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!596817 (= lt!271181 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17762 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596818 () Bool)

(assert (=> b!596818 (= e!340994 e!340996)))

(declare-fun res!382715 () Bool)

(assert (=> b!596818 (=> (not res!382715) (not e!340996))))

(assert (=> b!596818 (= res!382715 (= (select (store (arr!17762 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596818 (= lt!271177 (array!37004 (store (arr!17762 a!2986) i!1108 k!1786) (size!18126 a!2986)))))

(declare-fun b!596819 () Bool)

(assert (=> b!596819 (= e!341002 (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) index!984))))

(assert (= (and start!54580 res!382717) b!596814))

(assert (= (and b!596814 res!382727) b!596812))

(assert (= (and b!596812 res!382720) b!596810))

(assert (= (and b!596810 res!382713) b!596805))

(assert (= (and b!596805 res!382718) b!596807))

(assert (= (and b!596807 res!382712) b!596808))

(assert (= (and b!596808 res!382725) b!596809))

(assert (= (and b!596809 res!382724) b!596801))

(assert (= (and b!596801 res!382726) b!596818))

(assert (= (and b!596818 res!382715) b!596817))

(assert (= (and b!596817 res!382714) b!596816))

(assert (= (and b!596816 res!382719) b!596803))

(assert (= (and b!596816 c!67412) b!596813))

(assert (= (and b!596816 (not c!67412)) b!596804))

(assert (= (and b!596816 (not res!382721)) b!596811))

(assert (= (and b!596811 res!382723) b!596802))

(assert (= (and b!596802 (not res!382711)) b!596806))

(assert (= (and b!596806 res!382722) b!596819))

(assert (= (and b!596811 (not res!382716)) b!596815))

(declare-fun m!574287 () Bool)

(assert (=> b!596806 m!574287))

(assert (=> b!596806 m!574287))

(declare-fun m!574289 () Bool)

(assert (=> b!596806 m!574289))

(assert (=> b!596819 m!574287))

(assert (=> b!596819 m!574287))

(declare-fun m!574291 () Bool)

(assert (=> b!596819 m!574291))

(declare-fun m!574293 () Bool)

(assert (=> b!596808 m!574293))

(declare-fun m!574295 () Bool)

(assert (=> b!596809 m!574295))

(declare-fun m!574297 () Bool)

(assert (=> b!596817 m!574297))

(assert (=> b!596817 m!574287))

(assert (=> b!596817 m!574287))

(declare-fun m!574299 () Bool)

(assert (=> b!596817 m!574299))

(declare-fun m!574301 () Bool)

(assert (=> b!596805 m!574301))

(declare-fun m!574303 () Bool)

(assert (=> start!54580 m!574303))

(declare-fun m!574305 () Bool)

(assert (=> start!54580 m!574305))

(declare-fun m!574307 () Bool)

(assert (=> b!596810 m!574307))

(assert (=> b!596812 m!574287))

(assert (=> b!596812 m!574287))

(declare-fun m!574309 () Bool)

(assert (=> b!596812 m!574309))

(assert (=> b!596802 m!574287))

(declare-fun m!574311 () Bool)

(assert (=> b!596807 m!574311))

(declare-fun m!574313 () Bool)

(assert (=> b!596816 m!574313))

(declare-fun m!574315 () Bool)

(assert (=> b!596816 m!574315))

(assert (=> b!596816 m!574287))

(declare-fun m!574317 () Bool)

(assert (=> b!596816 m!574317))

(declare-fun m!574319 () Bool)

(assert (=> b!596816 m!574319))

(declare-fun m!574321 () Bool)

(assert (=> b!596816 m!574321))

(declare-fun m!574323 () Bool)

(assert (=> b!596816 m!574323))

(assert (=> b!596816 m!574287))

(declare-fun m!574325 () Bool)

(assert (=> b!596816 m!574325))

(declare-fun m!574327 () Bool)

(assert (=> b!596801 m!574327))

(declare-fun m!574329 () Bool)

(assert (=> b!596815 m!574329))

(assert (=> b!596815 m!574287))

(assert (=> b!596815 m!574287))

(declare-fun m!574331 () Bool)

(assert (=> b!596815 m!574331))

(assert (=> b!596815 m!574287))

(declare-fun m!574333 () Bool)

(assert (=> b!596815 m!574333))

(declare-fun m!574335 () Bool)

(assert (=> b!596815 m!574335))

(assert (=> b!596818 m!574317))

(declare-fun m!574337 () Bool)

(assert (=> b!596818 m!574337))

(assert (=> b!596811 m!574287))

(assert (=> b!596811 m!574317))

(declare-fun m!574339 () Bool)

(assert (=> b!596811 m!574339))

(push 1)

(assert (not b!596807))

(assert (not b!596816))

(assert (not b!596810))

(assert (not b!596815))

(assert (not b!596809))

(assert (not b!596819))

(assert (not b!596812))

(assert (not b!596806))

(assert (not b!596808))

(assert (not b!596817))

(assert (not b!596805))

(assert (not start!54580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!596889 () Bool)

(declare-fun e!341053 () Bool)

(declare-fun e!341055 () Bool)

(assert (=> b!596889 (= e!341053 e!341055)))

(declare-fun c!67436 () Bool)

(assert (=> b!596889 (= c!67436 (validKeyInArray!0 (select (arr!17762 lt!271177) #b00000000000000000000000000000000)))))

(declare-fun bm!32897 () Bool)

(declare-fun call!32900 () Bool)

(assert (=> bm!32897 (= call!32900 (arrayNoDuplicates!0 lt!271177 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67436 (Cons!11852 (select (arr!17762 lt!271177) #b00000000000000000000000000000000) Nil!11853) Nil!11853)))))

(declare-fun b!596890 () Bool)

(assert (=> b!596890 (= e!341055 call!32900)))

(declare-fun d!86601 () Bool)

(declare-fun res!382751 () Bool)

(declare-fun e!341054 () Bool)

(assert (=> d!86601 (=> res!382751 e!341054)))

(assert (=> d!86601 (= res!382751 (bvsge #b00000000000000000000000000000000 (size!18126 lt!271177)))))

(assert (=> d!86601 (= (arrayNoDuplicates!0 lt!271177 #b00000000000000000000000000000000 Nil!11853) e!341054)))

(declare-fun b!596891 () Bool)

(declare-fun e!341052 () Bool)

(declare-fun contains!2956 (List!11856 (_ BitVec 64)) Bool)

(assert (=> b!596891 (= e!341052 (contains!2956 Nil!11853 (select (arr!17762 lt!271177) #b00000000000000000000000000000000)))))

(declare-fun b!596892 () Bool)

(assert (=> b!596892 (= e!341055 call!32900)))

(declare-fun b!596893 () Bool)

(assert (=> b!596893 (= e!341054 e!341053)))

(declare-fun res!382752 () Bool)

(assert (=> b!596893 (=> (not res!382752) (not e!341053))))

(assert (=> b!596893 (= res!382752 (not e!341052))))

(declare-fun res!382753 () Bool)

(assert (=> b!596893 (=> (not res!382753) (not e!341052))))

(assert (=> b!596893 (= res!382753 (validKeyInArray!0 (select (arr!17762 lt!271177) #b00000000000000000000000000000000)))))

(assert (= (and d!86601 (not res!382751)) b!596893))

(assert (= (and b!596893 res!382753) b!596891))

(assert (= (and b!596893 res!382752) b!596889))

(assert (= (and b!596889 c!67436) b!596890))

(assert (= (and b!596889 (not c!67436)) b!596892))

(assert (= (or b!596890 b!596892) bm!32897))

(declare-fun m!574383 () Bool)

(assert (=> b!596889 m!574383))

(assert (=> b!596889 m!574383))

(declare-fun m!574385 () Bool)

(assert (=> b!596889 m!574385))

(assert (=> bm!32897 m!574383))

(declare-fun m!574387 () Bool)

(assert (=> bm!32897 m!574387))

(assert (=> b!596891 m!574383))

(assert (=> b!596891 m!574383))

(declare-fun m!574389 () Bool)

(assert (=> b!596891 m!574389))

(assert (=> b!596893 m!574383))

(assert (=> b!596893 m!574383))

(assert (=> b!596893 m!574385))

(assert (=> b!596815 d!86601))

(declare-fun d!86605 () Bool)

(declare-fun e!341061 () Bool)

(assert (=> d!86605 e!341061))

(declare-fun res!382756 () Bool)

(assert (=> d!86605 (=> (not res!382756) (not e!341061))))

(assert (=> d!86605 (= res!382756 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18126 a!2986))))))

(declare-fun lt!271216 () Unit!18780)

(declare-fun choose!41 (array!37003 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11856) Unit!18780)

(assert (=> d!86605 (= lt!271216 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11853))))

(assert (=> d!86605 (bvslt (size!18126 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!86605 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11853) lt!271216)))

(declare-fun b!596902 () Bool)

(assert (=> b!596902 (= e!341061 (arrayNoDuplicates!0 (array!37004 (store (arr!17762 a!2986) i!1108 k!1786) (size!18126 a!2986)) #b00000000000000000000000000000000 Nil!11853))))

(assert (= (and d!86605 res!382756) b!596902))

(declare-fun m!574405 () Bool)

(assert (=> d!86605 m!574405))

(assert (=> b!596902 m!574317))

(declare-fun m!574407 () Bool)

(assert (=> b!596902 m!574407))

(assert (=> b!596815 d!86605))

(declare-fun d!86609 () Bool)

(declare-fun res!382767 () Bool)

(declare-fun e!341074 () Bool)

(assert (=> d!86609 (=> res!382767 e!341074)))

(assert (=> d!86609 (= res!382767 (= (select (arr!17762 lt!271177) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17762 a!2986) j!136)))))

(assert (=> d!86609 (= (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!341074)))

(declare-fun b!596917 () Bool)

(declare-fun e!341075 () Bool)

(assert (=> b!596917 (= e!341074 e!341075)))

(declare-fun res!382768 () Bool)

(assert (=> b!596917 (=> (not res!382768) (not e!341075))))

(assert (=> b!596917 (= res!382768 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18126 lt!271177)))))

(declare-fun b!596918 () Bool)

(assert (=> b!596918 (= e!341075 (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86609 (not res!382767)) b!596917))

(assert (= (and b!596917 res!382768) b!596918))

(declare-fun m!574409 () Bool)

(assert (=> d!86609 m!574409))

(assert (=> b!596918 m!574287))

(declare-fun m!574411 () Bool)

(assert (=> b!596918 m!574411))

(assert (=> b!596815 d!86609))

(declare-fun d!86611 () Bool)

(assert (=> d!86611 (arrayContainsKey!0 lt!271177 (select (arr!17762 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271219 () Unit!18780)

(declare-fun choose!114 (array!37003 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18780)

(assert (=> d!86611 (= lt!271219 (choose!114 lt!271177 (select (arr!17762 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86611 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86611 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271177 (select (arr!17762 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!271219)))

(declare-fun bs!18360 () Bool)

(assert (= bs!18360 d!86611))

(assert (=> bs!18360 m!574287))

(assert (=> bs!18360 m!574331))

(assert (=> bs!18360 m!574287))

(declare-fun m!574417 () Bool)

(assert (=> bs!18360 m!574417))

(assert (=> b!596815 d!86611))

(declare-fun d!86613 () Bool)

(declare-fun res!382772 () Bool)

(declare-fun e!341080 () Bool)

(assert (=> d!86613 (=> res!382772 e!341080)))

(assert (=> d!86613 (= res!382772 (= (select (arr!17762 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86613 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!341080)))

(declare-fun b!596924 () Bool)

(declare-fun e!341081 () Bool)

(assert (=> b!596924 (= e!341080 e!341081)))

(declare-fun res!382773 () Bool)

(assert (=> b!596924 (=> (not res!382773) (not e!341081))))

(assert (=> b!596924 (= res!382773 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18126 a!2986)))))

(declare-fun b!596925 () Bool)

(assert (=> b!596925 (= e!341081 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86613 (not res!382772)) b!596924))

(assert (= (and b!596924 res!382773) b!596925))

(declare-fun m!574423 () Bool)

(assert (=> d!86613 m!574423))

(declare-fun m!574425 () Bool)

(assert (=> b!596925 m!574425))

(assert (=> b!596805 d!86613))

(declare-fun lt!271240 () SeekEntryResult!6209)

(declare-fun d!86617 () Bool)

(assert (=> d!86617 (and (or (is-Undefined!6209 lt!271240) (not (is-Found!6209 lt!271240)) (and (bvsge (index!27084 lt!271240) #b00000000000000000000000000000000) (bvslt (index!27084 lt!271240) (size!18126 lt!271177)))) (or (is-Undefined!6209 lt!271240) (is-Found!6209 lt!271240) (not (is-MissingVacant!6209 lt!271240)) (not (= (index!27086 lt!271240) vacantSpotIndex!68)) (and (bvsge (index!27086 lt!271240) #b00000000000000000000000000000000) (bvslt (index!27086 lt!271240) (size!18126 lt!271177)))) (or (is-Undefined!6209 lt!271240) (ite (is-Found!6209 lt!271240) (= (select (arr!17762 lt!271177) (index!27084 lt!271240)) lt!271186) (and (is-MissingVacant!6209 lt!271240) (= (index!27086 lt!271240) vacantSpotIndex!68) (= (select (arr!17762 lt!271177) (index!27086 lt!271240)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341104 () SeekEntryResult!6209)

(assert (=> d!86617 (= lt!271240 e!341104)))

(declare-fun c!67459 () Bool)

(assert (=> d!86617 (= c!67459 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!271239 () (_ BitVec 64))

(assert (=> d!86617 (= lt!271239 (select (arr!17762 lt!271177) index!984))))

(assert (=> d!86617 (validMask!0 mask!3053)))

(assert (=> d!86617 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271186 lt!271177 mask!3053) lt!271240)))

(declare-fun b!596961 () Bool)

(declare-fun c!67458 () Bool)

(assert (=> b!596961 (= c!67458 (= lt!271239 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341103 () SeekEntryResult!6209)

(declare-fun e!341102 () SeekEntryResult!6209)

(assert (=> b!596961 (= e!341103 e!341102)))

(declare-fun b!596962 () Bool)

(assert (=> b!596962 (= e!341102 (MissingVacant!6209 vacantSpotIndex!68))))

(declare-fun b!596963 () Bool)

(assert (=> b!596963 (= e!341104 Undefined!6209)))

(declare-fun b!596964 () Bool)

(assert (=> b!596964 (= e!341104 e!341103)))

(declare-fun c!67460 () Bool)

(assert (=> b!596964 (= c!67460 (= lt!271239 lt!271186))))

(declare-fun b!596965 () Bool)

(assert (=> b!596965 (= e!341102 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271186 lt!271177 mask!3053))))

(declare-fun b!596966 () Bool)

(assert (=> b!596966 (= e!341103 (Found!6209 index!984))))

(assert (= (and d!86617 c!67459) b!596963))

(assert (= (and d!86617 (not c!67459)) b!596964))

(assert (= (and b!596964 c!67460) b!596966))

(assert (= (and b!596964 (not c!67460)) b!596961))

(assert (= (and b!596961 c!67458) b!596962))

(assert (= (and b!596961 (not c!67458)) b!596965))

(declare-fun m!574451 () Bool)

(assert (=> d!86617 m!574451))

(declare-fun m!574453 () Bool)

(assert (=> d!86617 m!574453))

(declare-fun m!574455 () Bool)

(assert (=> d!86617 m!574455))

(assert (=> d!86617 m!574303))

(assert (=> b!596965 m!574313))

(assert (=> b!596965 m!574313))

(declare-fun m!574457 () Bool)

(assert (=> b!596965 m!574457))

(assert (=> b!596816 d!86617))

(declare-fun d!86627 () Bool)

(declare-fun e!341128 () Bool)

(assert (=> d!86627 e!341128))

(declare-fun res!382795 () Bool)

(assert (=> d!86627 (=> (not res!382795) (not e!341128))))

(assert (=> d!86627 (= res!382795 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18126 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18126 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18126 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18126 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18126 a!2986))))))

(declare-fun lt!271257 () Unit!18780)

(declare-fun choose!9 (array!37003 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18780)

(assert (=> d!86627 (= lt!271257 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86627 (validMask!0 mask!3053)))

(assert (=> d!86627 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 mask!3053) lt!271257)))

(declare-fun b!596997 () Bool)

(assert (=> b!596997 (= e!341128 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 (select (arr!17762 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271178 vacantSpotIndex!68 (select (store (arr!17762 a!2986) i!1108 k!1786) j!136) (array!37004 (store (arr!17762 a!2986) i!1108 k!1786) (size!18126 a!2986)) mask!3053)))))

(assert (= (and d!86627 res!382795) b!596997))

(declare-fun m!574487 () Bool)

(assert (=> d!86627 m!574487))

(assert (=> d!86627 m!574303))

(assert (=> b!596997 m!574287))

(assert (=> b!596997 m!574325))

(assert (=> b!596997 m!574317))

(assert (=> b!596997 m!574315))

(assert (=> b!596997 m!574315))

(declare-fun m!574489 () Bool)

(assert (=> b!596997 m!574489))

(assert (=> b!596997 m!574287))

(assert (=> b!596816 d!86627))

(declare-fun lt!271259 () SeekEntryResult!6209)

(declare-fun d!86643 () Bool)

(assert (=> d!86643 (and (or (is-Undefined!6209 lt!271259) (not (is-Found!6209 lt!271259)) (and (bvsge (index!27084 lt!271259) #b00000000000000000000000000000000) (bvslt (index!27084 lt!271259) (size!18126 a!2986)))) (or (is-Undefined!6209 lt!271259) (is-Found!6209 lt!271259) (not (is-MissingVacant!6209 lt!271259)) (not (= (index!27086 lt!271259) vacantSpotIndex!68)) (and (bvsge (index!27086 lt!271259) #b00000000000000000000000000000000) (bvslt (index!27086 lt!271259) (size!18126 a!2986)))) (or (is-Undefined!6209 lt!271259) (ite (is-Found!6209 lt!271259) (= (select (arr!17762 a!2986) (index!27084 lt!271259)) (select (arr!17762 a!2986) j!136)) (and (is-MissingVacant!6209 lt!271259) (= (index!27086 lt!271259) vacantSpotIndex!68) (= (select (arr!17762 a!2986) (index!27086 lt!271259)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!341131 () SeekEntryResult!6209)

(assert (=> d!86643 (= lt!271259 e!341131)))

(declare-fun c!67469 () Bool)

(assert (=> d!86643 (= c!67469 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!271258 () (_ BitVec 64))

(assert (=> d!86643 (= lt!271258 (select (arr!17762 a!2986) lt!271178))))

