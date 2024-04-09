; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55580 () Bool)

(assert start!55580)

(declare-fun b!608115 () Bool)

(declare-fun res!390984 () Bool)

(declare-fun e!348268 () Bool)

(assert (=> b!608115 (=> res!390984 e!348268)))

(declare-datatypes ((List!11978 0))(
  ( (Nil!11975) (Cons!11974 (h!13019 (_ BitVec 64)) (t!18214 List!11978)) )
))
(declare-fun noDuplicate!326 (List!11978) Bool)

(assert (=> b!608115 (= res!390984 (not (noDuplicate!326 Nil!11975)))))

(declare-fun b!608116 () Bool)

(declare-datatypes ((Unit!19414 0))(
  ( (Unit!19415) )
))
(declare-fun e!348274 () Unit!19414)

(declare-fun Unit!19416 () Unit!19414)

(assert (=> b!608116 (= e!348274 Unit!19416)))

(declare-fun b!608117 () Bool)

(declare-fun res!390983 () Bool)

(declare-fun e!348263 () Bool)

(assert (=> b!608117 (=> (not res!390983) (not e!348263))))

(declare-datatypes ((array!37274 0))(
  ( (array!37275 (arr!17884 (Array (_ BitVec 32) (_ BitVec 64))) (size!18248 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37274)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608117 (= res!390983 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608118 () Bool)

(declare-fun e!348264 () Bool)

(declare-fun e!348269 () Bool)

(assert (=> b!608118 (= e!348264 e!348269)))

(declare-fun res!390991 () Bool)

(assert (=> b!608118 (=> (not res!390991) (not e!348269))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6331 0))(
  ( (MissingZero!6331 (index!27598 (_ BitVec 32))) (Found!6331 (index!27599 (_ BitVec 32))) (Intermediate!6331 (undefined!7143 Bool) (index!27600 (_ BitVec 32)) (x!56433 (_ BitVec 32))) (Undefined!6331) (MissingVacant!6331 (index!27601 (_ BitVec 32))) )
))
(declare-fun lt!277845 () SeekEntryResult!6331)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!608118 (= res!390991 (and (= lt!277845 (Found!6331 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17884 a!2986) index!984) (select (arr!17884 a!2986) j!136))) (not (= (select (arr!17884 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37274 (_ BitVec 32)) SeekEntryResult!6331)

(assert (=> b!608118 (= lt!277845 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17884 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608119 () Bool)

(declare-fun e!348260 () Bool)

(assert (=> b!608119 (= e!348263 e!348260)))

(declare-fun res!390989 () Bool)

(assert (=> b!608119 (=> (not res!390989) (not e!348260))))

(declare-fun lt!277837 () SeekEntryResult!6331)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!608119 (= res!390989 (or (= lt!277837 (MissingZero!6331 i!1108)) (= lt!277837 (MissingVacant!6331 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37274 (_ BitVec 32)) SeekEntryResult!6331)

(assert (=> b!608119 (= lt!277837 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!608120 () Bool)

(declare-fun e!348270 () Bool)

(declare-fun e!348261 () Bool)

(assert (=> b!608120 (= e!348270 e!348261)))

(declare-fun res!390992 () Bool)

(assert (=> b!608120 (=> res!390992 e!348261)))

(declare-fun lt!277844 () (_ BitVec 64))

(declare-fun lt!277840 () (_ BitVec 64))

(assert (=> b!608120 (= res!390992 (or (not (= (select (arr!17884 a!2986) j!136) lt!277844)) (not (= (select (arr!17884 a!2986) j!136) lt!277840))))))

(declare-fun e!348272 () Bool)

(assert (=> b!608120 e!348272))

(declare-fun res!390985 () Bool)

(assert (=> b!608120 (=> (not res!390985) (not e!348272))))

(assert (=> b!608120 (= res!390985 (= lt!277840 (select (arr!17884 a!2986) j!136)))))

(assert (=> b!608120 (= lt!277840 (select (store (arr!17884 a!2986) i!1108 k0!1786) index!984))))

(declare-fun e!348262 () Bool)

(declare-fun b!608121 () Bool)

(declare-fun lt!277842 () array!37274)

(assert (=> b!608121 (= e!348262 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) index!984))))

(declare-fun b!608122 () Bool)

(declare-fun e!348271 () Unit!19414)

(declare-fun Unit!19417 () Unit!19414)

(assert (=> b!608122 (= e!348271 Unit!19417)))

(declare-fun b!608123 () Bool)

(assert (=> b!608123 (= e!348269 (not e!348270))))

(declare-fun res!390987 () Bool)

(assert (=> b!608123 (=> res!390987 e!348270)))

(declare-fun lt!277841 () SeekEntryResult!6331)

(assert (=> b!608123 (= res!390987 (not (= lt!277841 (Found!6331 index!984))))))

(declare-fun lt!277846 () Unit!19414)

(assert (=> b!608123 (= lt!277846 e!348271)))

(declare-fun c!68936 () Bool)

(assert (=> b!608123 (= c!68936 (= lt!277841 Undefined!6331))))

(assert (=> b!608123 (= lt!277841 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277844 lt!277842 mask!3053))))

(declare-fun e!348259 () Bool)

(assert (=> b!608123 e!348259))

(declare-fun res!390997 () Bool)

(assert (=> b!608123 (=> (not res!390997) (not e!348259))))

(declare-fun lt!277839 () SeekEntryResult!6331)

(declare-fun lt!277850 () (_ BitVec 32))

(assert (=> b!608123 (= res!390997 (= lt!277839 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277850 vacantSpotIndex!68 lt!277844 lt!277842 mask!3053)))))

(assert (=> b!608123 (= lt!277839 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277850 vacantSpotIndex!68 (select (arr!17884 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608123 (= lt!277844 (select (store (arr!17884 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!277851 () Unit!19414)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37274 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19414)

(assert (=> b!608123 (= lt!277851 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277850 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608123 (= lt!277850 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!391000 () Bool)

(assert (=> start!55580 (=> (not res!391000) (not e!348263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55580 (= res!391000 (validMask!0 mask!3053))))

(assert (=> start!55580 e!348263))

(assert (=> start!55580 true))

(declare-fun array_inv!13658 (array!37274) Bool)

(assert (=> start!55580 (array_inv!13658 a!2986)))

(declare-fun b!608124 () Bool)

(declare-fun e!348273 () Bool)

(assert (=> b!608124 (= e!348273 e!348262)))

(declare-fun res!390982 () Bool)

(assert (=> b!608124 (=> (not res!390982) (not e!348262))))

(assert (=> b!608124 (= res!390982 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) j!136))))

(declare-fun b!608125 () Bool)

(declare-fun Unit!19418 () Unit!19414)

(assert (=> b!608125 (= e!348274 Unit!19418)))

(declare-fun lt!277849 () Unit!19414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19414)

(assert (=> b!608125 (= lt!277849 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277842 (select (arr!17884 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608125 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277838 () Unit!19414)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37274 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11978) Unit!19414)

(assert (=> b!608125 (= lt!277838 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11975))))

(declare-fun arrayNoDuplicates!0 (array!37274 (_ BitVec 32) List!11978) Bool)

(assert (=> b!608125 (arrayNoDuplicates!0 lt!277842 #b00000000000000000000000000000000 Nil!11975)))

(declare-fun lt!277835 () Unit!19414)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37274 (_ BitVec 32) (_ BitVec 32)) Unit!19414)

(assert (=> b!608125 (= lt!277835 (lemmaNoDuplicateFromThenFromBigger!0 lt!277842 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608125 (arrayNoDuplicates!0 lt!277842 j!136 Nil!11975)))

(declare-fun lt!277843 () Unit!19414)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37274 (_ BitVec 64) (_ BitVec 32) List!11978) Unit!19414)

(assert (=> b!608125 (= lt!277843 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277842 (select (arr!17884 a!2986) j!136) j!136 Nil!11975))))

(assert (=> b!608125 false))

(declare-fun b!608126 () Bool)

(declare-fun e!348266 () Bool)

(assert (=> b!608126 (= e!348266 e!348268)))

(declare-fun res!390990 () Bool)

(assert (=> b!608126 (=> res!390990 e!348268)))

(assert (=> b!608126 (= res!390990 (or (bvsge (size!18248 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18248 a!2986))))))

(assert (=> b!608126 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277836 () Unit!19414)

(assert (=> b!608126 (= lt!277836 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277842 (select (arr!17884 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348265 () Bool)

(assert (=> b!608126 e!348265))

(declare-fun res!390981 () Bool)

(assert (=> b!608126 (=> (not res!390981) (not e!348265))))

(assert (=> b!608126 (= res!390981 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) j!136))))

(declare-fun b!608127 () Bool)

(declare-fun res!390995 () Bool)

(assert (=> b!608127 (=> res!390995 e!348268)))

(declare-fun contains!3024 (List!11978 (_ BitVec 64)) Bool)

(assert (=> b!608127 (= res!390995 (contains!3024 Nil!11975 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608128 () Bool)

(assert (=> b!608128 (= e!348272 e!348273)))

(declare-fun res!390998 () Bool)

(assert (=> b!608128 (=> res!390998 e!348273)))

(assert (=> b!608128 (= res!390998 (or (not (= (select (arr!17884 a!2986) j!136) lt!277844)) (not (= (select (arr!17884 a!2986) j!136) lt!277840)) (bvsge j!136 index!984)))))

(declare-fun b!608129 () Bool)

(declare-fun res!391001 () Bool)

(assert (=> b!608129 (=> (not res!391001) (not e!348260))))

(assert (=> b!608129 (= res!391001 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11975))))

(declare-fun b!608130 () Bool)

(declare-fun res!390996 () Bool)

(assert (=> b!608130 (=> (not res!390996) (not e!348263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608130 (= res!390996 (validKeyInArray!0 k0!1786))))

(declare-fun b!608131 () Bool)

(assert (=> b!608131 (= e!348260 e!348264)))

(declare-fun res!390986 () Bool)

(assert (=> b!608131 (=> (not res!390986) (not e!348264))))

(assert (=> b!608131 (= res!390986 (= (select (store (arr!17884 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608131 (= lt!277842 (array!37275 (store (arr!17884 a!2986) i!1108 k0!1786) (size!18248 a!2986)))))

(declare-fun b!608132 () Bool)

(assert (=> b!608132 (= e!348268 true)))

(declare-fun lt!277847 () Bool)

(assert (=> b!608132 (= lt!277847 (contains!3024 Nil!11975 k0!1786))))

(declare-fun b!608133 () Bool)

(assert (=> b!608133 (= e!348261 e!348266)))

(declare-fun res!390999 () Bool)

(assert (=> b!608133 (=> res!390999 e!348266)))

(assert (=> b!608133 (= res!390999 (bvsge index!984 j!136))))

(declare-fun lt!277848 () Unit!19414)

(assert (=> b!608133 (= lt!277848 e!348274)))

(declare-fun c!68935 () Bool)

(assert (=> b!608133 (= c!68935 (bvslt j!136 index!984))))

(declare-fun b!608134 () Bool)

(assert (=> b!608134 (= e!348265 (arrayContainsKey!0 lt!277842 (select (arr!17884 a!2986) j!136) index!984))))

(declare-fun b!608135 () Bool)

(declare-fun res!390994 () Bool)

(assert (=> b!608135 (=> (not res!390994) (not e!348260))))

(assert (=> b!608135 (= res!390994 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17884 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608136 () Bool)

(assert (=> b!608136 (= e!348259 (= lt!277845 lt!277839))))

(declare-fun b!608137 () Bool)

(declare-fun res!390980 () Bool)

(assert (=> b!608137 (=> (not res!390980) (not e!348260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37274 (_ BitVec 32)) Bool)

(assert (=> b!608137 (= res!390980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608138 () Bool)

(declare-fun res!390988 () Bool)

(assert (=> b!608138 (=> (not res!390988) (not e!348263))))

(assert (=> b!608138 (= res!390988 (and (= (size!18248 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18248 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18248 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608139 () Bool)

(declare-fun Unit!19419 () Unit!19414)

(assert (=> b!608139 (= e!348271 Unit!19419)))

(assert (=> b!608139 false))

(declare-fun b!608140 () Bool)

(declare-fun res!390993 () Bool)

(assert (=> b!608140 (=> (not res!390993) (not e!348263))))

(assert (=> b!608140 (= res!390993 (validKeyInArray!0 (select (arr!17884 a!2986) j!136)))))

(declare-fun b!608141 () Bool)

(declare-fun res!390979 () Bool)

(assert (=> b!608141 (=> res!390979 e!348268)))

(assert (=> b!608141 (= res!390979 (contains!3024 Nil!11975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!55580 res!391000) b!608138))

(assert (= (and b!608138 res!390988) b!608140))

(assert (= (and b!608140 res!390993) b!608130))

(assert (= (and b!608130 res!390996) b!608117))

(assert (= (and b!608117 res!390983) b!608119))

(assert (= (and b!608119 res!390989) b!608137))

(assert (= (and b!608137 res!390980) b!608129))

(assert (= (and b!608129 res!391001) b!608135))

(assert (= (and b!608135 res!390994) b!608131))

(assert (= (and b!608131 res!390986) b!608118))

(assert (= (and b!608118 res!390991) b!608123))

(assert (= (and b!608123 res!390997) b!608136))

(assert (= (and b!608123 c!68936) b!608139))

(assert (= (and b!608123 (not c!68936)) b!608122))

(assert (= (and b!608123 (not res!390987)) b!608120))

(assert (= (and b!608120 res!390985) b!608128))

(assert (= (and b!608128 (not res!390998)) b!608124))

(assert (= (and b!608124 res!390982) b!608121))

(assert (= (and b!608120 (not res!390992)) b!608133))

(assert (= (and b!608133 c!68935) b!608125))

(assert (= (and b!608133 (not c!68935)) b!608116))

(assert (= (and b!608133 (not res!390999)) b!608126))

(assert (= (and b!608126 res!390981) b!608134))

(assert (= (and b!608126 (not res!390990)) b!608115))

(assert (= (and b!608115 (not res!390984)) b!608141))

(assert (= (and b!608141 (not res!390979)) b!608127))

(assert (= (and b!608127 (not res!390995)) b!608132))

(declare-fun m!584805 () Bool)

(assert (=> b!608137 m!584805))

(declare-fun m!584807 () Bool)

(assert (=> b!608119 m!584807))

(declare-fun m!584809 () Bool)

(assert (=> b!608123 m!584809))

(declare-fun m!584811 () Bool)

(assert (=> b!608123 m!584811))

(declare-fun m!584813 () Bool)

(assert (=> b!608123 m!584813))

(declare-fun m!584815 () Bool)

(assert (=> b!608123 m!584815))

(declare-fun m!584817 () Bool)

(assert (=> b!608123 m!584817))

(declare-fun m!584819 () Bool)

(assert (=> b!608123 m!584819))

(assert (=> b!608123 m!584815))

(declare-fun m!584821 () Bool)

(assert (=> b!608123 m!584821))

(declare-fun m!584823 () Bool)

(assert (=> b!608123 m!584823))

(declare-fun m!584825 () Bool)

(assert (=> b!608117 m!584825))

(declare-fun m!584827 () Bool)

(assert (=> b!608118 m!584827))

(assert (=> b!608118 m!584815))

(assert (=> b!608118 m!584815))

(declare-fun m!584829 () Bool)

(assert (=> b!608118 m!584829))

(assert (=> b!608128 m!584815))

(assert (=> b!608131 m!584817))

(declare-fun m!584831 () Bool)

(assert (=> b!608131 m!584831))

(assert (=> b!608134 m!584815))

(assert (=> b!608134 m!584815))

(declare-fun m!584833 () Bool)

(assert (=> b!608134 m!584833))

(declare-fun m!584835 () Bool)

(assert (=> b!608129 m!584835))

(assert (=> b!608121 m!584815))

(assert (=> b!608121 m!584815))

(assert (=> b!608121 m!584833))

(assert (=> b!608126 m!584815))

(assert (=> b!608126 m!584815))

(declare-fun m!584837 () Bool)

(assert (=> b!608126 m!584837))

(assert (=> b!608126 m!584815))

(declare-fun m!584839 () Bool)

(assert (=> b!608126 m!584839))

(assert (=> b!608126 m!584815))

(declare-fun m!584841 () Bool)

(assert (=> b!608126 m!584841))

(assert (=> b!608140 m!584815))

(assert (=> b!608140 m!584815))

(declare-fun m!584843 () Bool)

(assert (=> b!608140 m!584843))

(assert (=> b!608124 m!584815))

(assert (=> b!608124 m!584815))

(assert (=> b!608124 m!584841))

(assert (=> b!608120 m!584815))

(assert (=> b!608120 m!584817))

(declare-fun m!584845 () Bool)

(assert (=> b!608120 m!584845))

(declare-fun m!584847 () Bool)

(assert (=> b!608127 m!584847))

(declare-fun m!584849 () Bool)

(assert (=> start!55580 m!584849))

(declare-fun m!584851 () Bool)

(assert (=> start!55580 m!584851))

(declare-fun m!584853 () Bool)

(assert (=> b!608141 m!584853))

(declare-fun m!584855 () Bool)

(assert (=> b!608115 m!584855))

(declare-fun m!584857 () Bool)

(assert (=> b!608125 m!584857))

(assert (=> b!608125 m!584815))

(assert (=> b!608125 m!584815))

(declare-fun m!584859 () Bool)

(assert (=> b!608125 m!584859))

(assert (=> b!608125 m!584815))

(declare-fun m!584861 () Bool)

(assert (=> b!608125 m!584861))

(declare-fun m!584863 () Bool)

(assert (=> b!608125 m!584863))

(declare-fun m!584865 () Bool)

(assert (=> b!608125 m!584865))

(declare-fun m!584867 () Bool)

(assert (=> b!608125 m!584867))

(assert (=> b!608125 m!584815))

(declare-fun m!584869 () Bool)

(assert (=> b!608125 m!584869))

(declare-fun m!584871 () Bool)

(assert (=> b!608132 m!584871))

(declare-fun m!584873 () Bool)

(assert (=> b!608130 m!584873))

(declare-fun m!584875 () Bool)

(assert (=> b!608135 m!584875))

(check-sat (not b!608132) (not b!608140) (not b!608141) (not start!55580) (not b!608119) (not b!608134) (not b!608126) (not b!608123) (not b!608117) (not b!608124) (not b!608137) (not b!608118) (not b!608115) (not b!608121) (not b!608129) (not b!608130) (not b!608125) (not b!608127))
(check-sat)
