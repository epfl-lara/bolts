; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58244 () Bool)

(assert start!58244)

(declare-fun b!642980 () Bool)

(declare-fun e!368300 () Bool)

(declare-fun e!368289 () Bool)

(assert (=> b!642980 (= e!368300 e!368289)))

(declare-fun res!416594 () Bool)

(assert (=> b!642980 (=> (not res!416594) (not e!368289))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38378 0))(
  ( (array!38379 (arr!18400 (Array (_ BitVec 32) (_ BitVec 64))) (size!18764 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38378)

(assert (=> b!642980 (= res!416594 (= (select (store (arr!18400 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!297907 () array!38378)

(assert (=> b!642980 (= lt!297907 (array!38379 (store (arr!18400 a!2986) i!1108 k0!1786) (size!18764 a!2986)))))

(declare-fun b!642981 () Bool)

(declare-fun e!368292 () Bool)

(declare-datatypes ((SeekEntryResult!6847 0))(
  ( (MissingZero!6847 (index!29716 (_ BitVec 32))) (Found!6847 (index!29717 (_ BitVec 32))) (Intermediate!6847 (undefined!7659 Bool) (index!29718 (_ BitVec 32)) (x!58511 (_ BitVec 32))) (Undefined!6847) (MissingVacant!6847 (index!29719 (_ BitVec 32))) )
))
(declare-fun lt!297909 () SeekEntryResult!6847)

(declare-fun lt!297901 () SeekEntryResult!6847)

(assert (=> b!642981 (= e!368292 (= lt!297909 lt!297901))))

(declare-fun b!642982 () Bool)

(declare-fun e!368290 () Bool)

(declare-fun e!368299 () Bool)

(assert (=> b!642982 (= e!368290 e!368299)))

(declare-fun res!416600 () Bool)

(assert (=> b!642982 (=> res!416600 e!368299)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!297911 () (_ BitVec 64))

(declare-fun lt!297900 () (_ BitVec 64))

(assert (=> b!642982 (= res!416600 (or (not (= (select (arr!18400 a!2986) j!136) lt!297900)) (not (= (select (arr!18400 a!2986) j!136) lt!297911))))))

(declare-fun e!368297 () Bool)

(assert (=> b!642982 e!368297))

(declare-fun res!416597 () Bool)

(assert (=> b!642982 (=> (not res!416597) (not e!368297))))

(assert (=> b!642982 (= res!416597 (= lt!297911 (select (arr!18400 a!2986) j!136)))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642982 (= lt!297911 (select (store (arr!18400 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!642983 () Bool)

(declare-fun res!416605 () Bool)

(assert (=> b!642983 (=> (not res!416605) (not e!368300))))

(declare-datatypes ((List!12494 0))(
  ( (Nil!12491) (Cons!12490 (h!13535 (_ BitVec 64)) (t!18730 List!12494)) )
))
(declare-fun arrayNoDuplicates!0 (array!38378 (_ BitVec 32) List!12494) Bool)

(assert (=> b!642983 (= res!416605 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12491))))

(declare-fun b!642984 () Bool)

(declare-fun res!416606 () Bool)

(declare-fun e!368296 () Bool)

(assert (=> b!642984 (=> (not res!416606) (not e!368296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642984 (= res!416606 (validKeyInArray!0 (select (arr!18400 a!2986) j!136)))))

(declare-fun b!642985 () Bool)

(declare-fun res!416593 () Bool)

(assert (=> b!642985 (=> (not res!416593) (not e!368296))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!642985 (= res!416593 (and (= (size!18764 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18764 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18764 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642986 () Bool)

(declare-datatypes ((Unit!21754 0))(
  ( (Unit!21755) )
))
(declare-fun e!368302 () Unit!21754)

(declare-fun Unit!21756 () Unit!21754)

(assert (=> b!642986 (= e!368302 Unit!21756)))

(declare-fun lt!297910 () Unit!21754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> b!642986 (= lt!297910 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297907 (select (arr!18400 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642986 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297903 () Unit!21754)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12494) Unit!21754)

(assert (=> b!642986 (= lt!297903 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12491))))

(assert (=> b!642986 (arrayNoDuplicates!0 lt!297907 #b00000000000000000000000000000000 Nil!12491)))

(declare-fun lt!297902 () Unit!21754)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38378 (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> b!642986 (= lt!297902 (lemmaNoDuplicateFromThenFromBigger!0 lt!297907 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642986 (arrayNoDuplicates!0 lt!297907 j!136 Nil!12491)))

(declare-fun lt!297899 () Unit!21754)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38378 (_ BitVec 64) (_ BitVec 32) List!12494) Unit!21754)

(assert (=> b!642986 (= lt!297899 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297907 (select (arr!18400 a!2986) j!136) j!136 Nil!12491))))

(assert (=> b!642986 false))

(declare-fun b!642987 () Bool)

(declare-fun Unit!21757 () Unit!21754)

(assert (=> b!642987 (= e!368302 Unit!21757)))

(declare-fun b!642988 () Bool)

(declare-fun res!416595 () Bool)

(assert (=> b!642988 (=> (not res!416595) (not e!368300))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!642988 (= res!416595 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18400 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642989 () Bool)

(declare-fun res!416592 () Bool)

(assert (=> b!642989 (=> (not res!416592) (not e!368296))))

(assert (=> b!642989 (= res!416592 (validKeyInArray!0 k0!1786))))

(declare-fun b!642990 () Bool)

(declare-fun e!368295 () Bool)

(assert (=> b!642990 (= e!368289 e!368295)))

(declare-fun res!416601 () Bool)

(assert (=> b!642990 (=> (not res!416601) (not e!368295))))

(assert (=> b!642990 (= res!416601 (and (= lt!297909 (Found!6847 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18400 a!2986) index!984) (select (arr!18400 a!2986) j!136))) (not (= (select (arr!18400 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38378 (_ BitVec 32)) SeekEntryResult!6847)

(assert (=> b!642990 (= lt!297909 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642991 () Bool)

(declare-fun e!368293 () Bool)

(assert (=> b!642991 (= e!368299 e!368293)))

(declare-fun res!416596 () Bool)

(assert (=> b!642991 (=> res!416596 e!368293)))

(assert (=> b!642991 (= res!416596 (bvsge index!984 j!136))))

(declare-fun lt!297898 () Unit!21754)

(assert (=> b!642991 (= lt!297898 e!368302)))

(declare-fun c!73561 () Bool)

(assert (=> b!642991 (= c!73561 (bvslt j!136 index!984))))

(declare-fun b!642992 () Bool)

(declare-fun e!368301 () Bool)

(declare-fun e!368298 () Bool)

(assert (=> b!642992 (= e!368301 e!368298)))

(declare-fun res!416609 () Bool)

(assert (=> b!642992 (=> (not res!416609) (not e!368298))))

(assert (=> b!642992 (= res!416609 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) j!136))))

(declare-fun b!642993 () Bool)

(assert (=> b!642993 (= e!368293 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) index!984))))

(assert (=> b!642993 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) j!136)))

(declare-fun res!416608 () Bool)

(assert (=> start!58244 (=> (not res!416608) (not e!368296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58244 (= res!416608 (validMask!0 mask!3053))))

(assert (=> start!58244 e!368296))

(assert (=> start!58244 true))

(declare-fun array_inv!14174 (array!38378) Bool)

(assert (=> start!58244 (array_inv!14174 a!2986)))

(declare-fun b!642994 () Bool)

(declare-fun e!368294 () Unit!21754)

(declare-fun Unit!21758 () Unit!21754)

(assert (=> b!642994 (= e!368294 Unit!21758)))

(assert (=> b!642994 false))

(declare-fun b!642995 () Bool)

(assert (=> b!642995 (= e!368297 e!368301)))

(declare-fun res!416603 () Bool)

(assert (=> b!642995 (=> res!416603 e!368301)))

(assert (=> b!642995 (= res!416603 (or (not (= (select (arr!18400 a!2986) j!136) lt!297900)) (not (= (select (arr!18400 a!2986) j!136) lt!297911)) (bvsge j!136 index!984)))))

(declare-fun b!642996 () Bool)

(declare-fun Unit!21759 () Unit!21754)

(assert (=> b!642996 (= e!368294 Unit!21759)))

(declare-fun b!642997 () Bool)

(declare-fun res!416607 () Bool)

(assert (=> b!642997 (=> (not res!416607) (not e!368300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38378 (_ BitVec 32)) Bool)

(assert (=> b!642997 (= res!416607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642998 () Bool)

(assert (=> b!642998 (= e!368298 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) index!984))))

(declare-fun b!642999 () Bool)

(assert (=> b!642999 (= e!368296 e!368300)))

(declare-fun res!416602 () Bool)

(assert (=> b!642999 (=> (not res!416602) (not e!368300))))

(declare-fun lt!297905 () SeekEntryResult!6847)

(assert (=> b!642999 (= res!416602 (or (= lt!297905 (MissingZero!6847 i!1108)) (= lt!297905 (MissingVacant!6847 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38378 (_ BitVec 32)) SeekEntryResult!6847)

(assert (=> b!642999 (= lt!297905 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!643000 () Bool)

(assert (=> b!643000 (= e!368295 (not e!368290))))

(declare-fun res!416604 () Bool)

(assert (=> b!643000 (=> res!416604 e!368290)))

(declare-fun lt!297912 () SeekEntryResult!6847)

(assert (=> b!643000 (= res!416604 (not (= lt!297912 (Found!6847 index!984))))))

(declare-fun lt!297906 () Unit!21754)

(assert (=> b!643000 (= lt!297906 e!368294)))

(declare-fun c!73562 () Bool)

(assert (=> b!643000 (= c!73562 (= lt!297912 Undefined!6847))))

(assert (=> b!643000 (= lt!297912 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297900 lt!297907 mask!3053))))

(assert (=> b!643000 e!368292))

(declare-fun res!416598 () Bool)

(assert (=> b!643000 (=> (not res!416598) (not e!368292))))

(declare-fun lt!297908 () (_ BitVec 32))

(assert (=> b!643000 (= res!416598 (= lt!297901 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 lt!297900 lt!297907 mask!3053)))))

(assert (=> b!643000 (= lt!297901 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643000 (= lt!297900 (select (store (arr!18400 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!297904 () Unit!21754)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38378 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> b!643000 (= lt!297904 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643000 (= lt!297908 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643001 () Bool)

(declare-fun res!416599 () Bool)

(assert (=> b!643001 (=> (not res!416599) (not e!368296))))

(assert (=> b!643001 (= res!416599 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!58244 res!416608) b!642985))

(assert (= (and b!642985 res!416593) b!642984))

(assert (= (and b!642984 res!416606) b!642989))

(assert (= (and b!642989 res!416592) b!643001))

(assert (= (and b!643001 res!416599) b!642999))

(assert (= (and b!642999 res!416602) b!642997))

(assert (= (and b!642997 res!416607) b!642983))

(assert (= (and b!642983 res!416605) b!642988))

(assert (= (and b!642988 res!416595) b!642980))

(assert (= (and b!642980 res!416594) b!642990))

(assert (= (and b!642990 res!416601) b!643000))

(assert (= (and b!643000 res!416598) b!642981))

(assert (= (and b!643000 c!73562) b!642994))

(assert (= (and b!643000 (not c!73562)) b!642996))

(assert (= (and b!643000 (not res!416604)) b!642982))

(assert (= (and b!642982 res!416597) b!642995))

(assert (= (and b!642995 (not res!416603)) b!642992))

(assert (= (and b!642992 res!416609) b!642998))

(assert (= (and b!642982 (not res!416600)) b!642991))

(assert (= (and b!642991 c!73561) b!642986))

(assert (= (and b!642991 (not c!73561)) b!642987))

(assert (= (and b!642991 (not res!416596)) b!642993))

(declare-fun m!616791 () Bool)

(assert (=> b!642986 m!616791))

(declare-fun m!616793 () Bool)

(assert (=> b!642986 m!616793))

(assert (=> b!642986 m!616791))

(declare-fun m!616795 () Bool)

(assert (=> b!642986 m!616795))

(assert (=> b!642986 m!616791))

(declare-fun m!616797 () Bool)

(assert (=> b!642986 m!616797))

(declare-fun m!616799 () Bool)

(assert (=> b!642986 m!616799))

(declare-fun m!616801 () Bool)

(assert (=> b!642986 m!616801))

(declare-fun m!616803 () Bool)

(assert (=> b!642986 m!616803))

(assert (=> b!642986 m!616791))

(declare-fun m!616805 () Bool)

(assert (=> b!642986 m!616805))

(declare-fun m!616807 () Bool)

(assert (=> b!643000 m!616807))

(declare-fun m!616809 () Bool)

(assert (=> b!643000 m!616809))

(assert (=> b!643000 m!616791))

(declare-fun m!616811 () Bool)

(assert (=> b!643000 m!616811))

(declare-fun m!616813 () Bool)

(assert (=> b!643000 m!616813))

(declare-fun m!616815 () Bool)

(assert (=> b!643000 m!616815))

(declare-fun m!616817 () Bool)

(assert (=> b!643000 m!616817))

(assert (=> b!643000 m!616791))

(declare-fun m!616819 () Bool)

(assert (=> b!643000 m!616819))

(assert (=> b!642992 m!616791))

(assert (=> b!642992 m!616791))

(declare-fun m!616821 () Bool)

(assert (=> b!642992 m!616821))

(assert (=> b!642995 m!616791))

(declare-fun m!616823 () Bool)

(assert (=> start!58244 m!616823))

(declare-fun m!616825 () Bool)

(assert (=> start!58244 m!616825))

(assert (=> b!642998 m!616791))

(assert (=> b!642998 m!616791))

(declare-fun m!616827 () Bool)

(assert (=> b!642998 m!616827))

(declare-fun m!616829 () Bool)

(assert (=> b!642990 m!616829))

(assert (=> b!642990 m!616791))

(assert (=> b!642990 m!616791))

(declare-fun m!616831 () Bool)

(assert (=> b!642990 m!616831))

(declare-fun m!616833 () Bool)

(assert (=> b!642988 m!616833))

(declare-fun m!616835 () Bool)

(assert (=> b!642997 m!616835))

(assert (=> b!642980 m!616811))

(declare-fun m!616837 () Bool)

(assert (=> b!642980 m!616837))

(assert (=> b!642993 m!616791))

(assert (=> b!642993 m!616791))

(assert (=> b!642993 m!616827))

(assert (=> b!642993 m!616791))

(assert (=> b!642993 m!616821))

(assert (=> b!642984 m!616791))

(assert (=> b!642984 m!616791))

(declare-fun m!616839 () Bool)

(assert (=> b!642984 m!616839))

(declare-fun m!616841 () Bool)

(assert (=> b!642983 m!616841))

(assert (=> b!642982 m!616791))

(assert (=> b!642982 m!616811))

(declare-fun m!616843 () Bool)

(assert (=> b!642982 m!616843))

(declare-fun m!616845 () Bool)

(assert (=> b!642989 m!616845))

(declare-fun m!616847 () Bool)

(assert (=> b!642999 m!616847))

(declare-fun m!616849 () Bool)

(assert (=> b!643001 m!616849))

(check-sat (not b!642983) (not b!642999) (not b!642986) (not b!642989) (not b!642993) (not b!643000) (not b!642990) (not b!642992) (not b!642998) (not start!58244) (not b!643001) (not b!642984) (not b!642997))
(check-sat)
(get-model)

(declare-fun d!90799 () Bool)

(declare-fun res!416668 () Bool)

(declare-fun e!368349 () Bool)

(assert (=> d!90799 (=> res!416668 e!368349)))

(assert (=> d!90799 (= res!416668 (= (select (arr!18400 lt!297907) j!136) (select (arr!18400 a!2986) j!136)))))

(assert (=> d!90799 (= (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) j!136) e!368349)))

(declare-fun b!643072 () Bool)

(declare-fun e!368350 () Bool)

(assert (=> b!643072 (= e!368349 e!368350)))

(declare-fun res!416669 () Bool)

(assert (=> b!643072 (=> (not res!416669) (not e!368350))))

(assert (=> b!643072 (= res!416669 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18764 lt!297907)))))

(declare-fun b!643073 () Bool)

(assert (=> b!643073 (= e!368350 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90799 (not res!416668)) b!643072))

(assert (= (and b!643072 res!416669) b!643073))

(declare-fun m!616911 () Bool)

(assert (=> d!90799 m!616911))

(assert (=> b!643073 m!616791))

(declare-fun m!616913 () Bool)

(assert (=> b!643073 m!616913))

(assert (=> b!642992 d!90799))

(declare-fun b!643086 () Bool)

(declare-fun e!368359 () SeekEntryResult!6847)

(assert (=> b!643086 (= e!368359 (MissingVacant!6847 vacantSpotIndex!68))))

(declare-fun b!643087 () Bool)

(declare-fun c!73577 () Bool)

(declare-fun lt!297962 () (_ BitVec 64))

(assert (=> b!643087 (= c!73577 (= lt!297962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368358 () SeekEntryResult!6847)

(assert (=> b!643087 (= e!368358 e!368359)))

(declare-fun b!643088 () Bool)

(declare-fun e!368357 () SeekEntryResult!6847)

(assert (=> b!643088 (= e!368357 e!368358)))

(declare-fun c!73576 () Bool)

(assert (=> b!643088 (= c!73576 (= lt!297962 (select (arr!18400 a!2986) j!136)))))

(declare-fun lt!297963 () SeekEntryResult!6847)

(declare-fun d!90801 () Bool)

(get-info :version)

(assert (=> d!90801 (and (or ((_ is Undefined!6847) lt!297963) (not ((_ is Found!6847) lt!297963)) (and (bvsge (index!29717 lt!297963) #b00000000000000000000000000000000) (bvslt (index!29717 lt!297963) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!297963) ((_ is Found!6847) lt!297963) (not ((_ is MissingVacant!6847) lt!297963)) (not (= (index!29719 lt!297963) vacantSpotIndex!68)) (and (bvsge (index!29719 lt!297963) #b00000000000000000000000000000000) (bvslt (index!29719 lt!297963) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!297963) (ite ((_ is Found!6847) lt!297963) (= (select (arr!18400 a!2986) (index!29717 lt!297963)) (select (arr!18400 a!2986) j!136)) (and ((_ is MissingVacant!6847) lt!297963) (= (index!29719 lt!297963) vacantSpotIndex!68) (= (select (arr!18400 a!2986) (index!29719 lt!297963)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90801 (= lt!297963 e!368357)))

(declare-fun c!73575 () Bool)

(assert (=> d!90801 (= c!73575 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90801 (= lt!297962 (select (arr!18400 a!2986) index!984))))

(assert (=> d!90801 (validMask!0 mask!3053)))

(assert (=> d!90801 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053) lt!297963)))

(declare-fun b!643089 () Bool)

(assert (=> b!643089 (= e!368358 (Found!6847 index!984))))

(declare-fun b!643090 () Bool)

(assert (=> b!643090 (= e!368359 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643091 () Bool)

(assert (=> b!643091 (= e!368357 Undefined!6847)))

(assert (= (and d!90801 c!73575) b!643091))

(assert (= (and d!90801 (not c!73575)) b!643088))

(assert (= (and b!643088 c!73576) b!643089))

(assert (= (and b!643088 (not c!73576)) b!643087))

(assert (= (and b!643087 c!73577) b!643086))

(assert (= (and b!643087 (not c!73577)) b!643090))

(declare-fun m!616915 () Bool)

(assert (=> d!90801 m!616915))

(declare-fun m!616917 () Bool)

(assert (=> d!90801 m!616917))

(assert (=> d!90801 m!616829))

(assert (=> d!90801 m!616823))

(assert (=> b!643090 m!616817))

(assert (=> b!643090 m!616817))

(assert (=> b!643090 m!616791))

(declare-fun m!616919 () Bool)

(assert (=> b!643090 m!616919))

(assert (=> b!642990 d!90801))

(declare-fun d!90803 () Bool)

(declare-fun res!416670 () Bool)

(declare-fun e!368360 () Bool)

(assert (=> d!90803 (=> res!416670 e!368360)))

(assert (=> d!90803 (= res!416670 (= (select (arr!18400 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!90803 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!368360)))

(declare-fun b!643092 () Bool)

(declare-fun e!368361 () Bool)

(assert (=> b!643092 (= e!368360 e!368361)))

(declare-fun res!416671 () Bool)

(assert (=> b!643092 (=> (not res!416671) (not e!368361))))

(assert (=> b!643092 (= res!416671 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18764 a!2986)))))

(declare-fun b!643093 () Bool)

(assert (=> b!643093 (= e!368361 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90803 (not res!416670)) b!643092))

(assert (= (and b!643092 res!416671) b!643093))

(declare-fun m!616921 () Bool)

(assert (=> d!90803 m!616921))

(declare-fun m!616923 () Bool)

(assert (=> b!643093 m!616923))

(assert (=> b!643001 d!90803))

(declare-fun d!90805 () Bool)

(assert (=> d!90805 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58244 d!90805))

(declare-fun d!90807 () Bool)

(assert (=> d!90807 (= (array_inv!14174 a!2986) (bvsge (size!18764 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58244 d!90807))

(declare-fun b!643112 () Bool)

(declare-fun e!368376 () SeekEntryResult!6847)

(assert (=> b!643112 (= e!368376 Undefined!6847)))

(declare-fun d!90809 () Bool)

(declare-fun lt!297971 () SeekEntryResult!6847)

(assert (=> d!90809 (and (or ((_ is Undefined!6847) lt!297971) (not ((_ is Found!6847) lt!297971)) (and (bvsge (index!29717 lt!297971) #b00000000000000000000000000000000) (bvslt (index!29717 lt!297971) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!297971) ((_ is Found!6847) lt!297971) (not ((_ is MissingZero!6847) lt!297971)) (and (bvsge (index!29716 lt!297971) #b00000000000000000000000000000000) (bvslt (index!29716 lt!297971) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!297971) ((_ is Found!6847) lt!297971) ((_ is MissingZero!6847) lt!297971) (not ((_ is MissingVacant!6847) lt!297971)) (and (bvsge (index!29719 lt!297971) #b00000000000000000000000000000000) (bvslt (index!29719 lt!297971) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!297971) (ite ((_ is Found!6847) lt!297971) (= (select (arr!18400 a!2986) (index!29717 lt!297971)) k0!1786) (ite ((_ is MissingZero!6847) lt!297971) (= (select (arr!18400 a!2986) (index!29716 lt!297971)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6847) lt!297971) (= (select (arr!18400 a!2986) (index!29719 lt!297971)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90809 (= lt!297971 e!368376)))

(declare-fun c!73584 () Bool)

(declare-fun lt!297972 () SeekEntryResult!6847)

(assert (=> d!90809 (= c!73584 (and ((_ is Intermediate!6847) lt!297972) (undefined!7659 lt!297972)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38378 (_ BitVec 32)) SeekEntryResult!6847)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90809 (= lt!297972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!90809 (validMask!0 mask!3053)))

(assert (=> d!90809 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!297971)))

(declare-fun b!643113 () Bool)

(declare-fun e!368374 () SeekEntryResult!6847)

(assert (=> b!643113 (= e!368374 (Found!6847 (index!29718 lt!297972)))))

(declare-fun e!368375 () SeekEntryResult!6847)

(declare-fun b!643114 () Bool)

(assert (=> b!643114 (= e!368375 (seekKeyOrZeroReturnVacant!0 (x!58511 lt!297972) (index!29718 lt!297972) (index!29718 lt!297972) k0!1786 a!2986 mask!3053))))

(declare-fun b!643115 () Bool)

(declare-fun c!73586 () Bool)

(declare-fun lt!297970 () (_ BitVec 64))

(assert (=> b!643115 (= c!73586 (= lt!297970 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643115 (= e!368374 e!368375)))

(declare-fun b!643116 () Bool)

(assert (=> b!643116 (= e!368375 (MissingZero!6847 (index!29718 lt!297972)))))

(declare-fun b!643117 () Bool)

(assert (=> b!643117 (= e!368376 e!368374)))

(assert (=> b!643117 (= lt!297970 (select (arr!18400 a!2986) (index!29718 lt!297972)))))

(declare-fun c!73585 () Bool)

(assert (=> b!643117 (= c!73585 (= lt!297970 k0!1786))))

(assert (= (and d!90809 c!73584) b!643112))

(assert (= (and d!90809 (not c!73584)) b!643117))

(assert (= (and b!643117 c!73585) b!643113))

(assert (= (and b!643117 (not c!73585)) b!643115))

(assert (= (and b!643115 c!73586) b!643116))

(assert (= (and b!643115 (not c!73586)) b!643114))

(declare-fun m!616929 () Bool)

(assert (=> d!90809 m!616929))

(declare-fun m!616931 () Bool)

(assert (=> d!90809 m!616931))

(declare-fun m!616933 () Bool)

(assert (=> d!90809 m!616933))

(declare-fun m!616935 () Bool)

(assert (=> d!90809 m!616935))

(assert (=> d!90809 m!616823))

(assert (=> d!90809 m!616935))

(declare-fun m!616937 () Bool)

(assert (=> d!90809 m!616937))

(declare-fun m!616939 () Bool)

(assert (=> b!643114 m!616939))

(declare-fun m!616941 () Bool)

(assert (=> b!643117 m!616941))

(assert (=> b!642999 d!90809))

(declare-fun d!90817 () Bool)

(assert (=> d!90817 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!642989 d!90817))

(declare-fun b!643128 () Bool)

(declare-fun e!368387 () SeekEntryResult!6847)

(assert (=> b!643128 (= e!368387 (MissingVacant!6847 vacantSpotIndex!68))))

(declare-fun b!643129 () Bool)

(declare-fun c!73591 () Bool)

(declare-fun lt!297973 () (_ BitVec 64))

(assert (=> b!643129 (= c!73591 (= lt!297973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368386 () SeekEntryResult!6847)

(assert (=> b!643129 (= e!368386 e!368387)))

(declare-fun b!643130 () Bool)

(declare-fun e!368385 () SeekEntryResult!6847)

(assert (=> b!643130 (= e!368385 e!368386)))

(declare-fun c!73590 () Bool)

(assert (=> b!643130 (= c!73590 (= lt!297973 lt!297900))))

(declare-fun lt!297974 () SeekEntryResult!6847)

(declare-fun d!90819 () Bool)

(assert (=> d!90819 (and (or ((_ is Undefined!6847) lt!297974) (not ((_ is Found!6847) lt!297974)) (and (bvsge (index!29717 lt!297974) #b00000000000000000000000000000000) (bvslt (index!29717 lt!297974) (size!18764 lt!297907)))) (or ((_ is Undefined!6847) lt!297974) ((_ is Found!6847) lt!297974) (not ((_ is MissingVacant!6847) lt!297974)) (not (= (index!29719 lt!297974) vacantSpotIndex!68)) (and (bvsge (index!29719 lt!297974) #b00000000000000000000000000000000) (bvslt (index!29719 lt!297974) (size!18764 lt!297907)))) (or ((_ is Undefined!6847) lt!297974) (ite ((_ is Found!6847) lt!297974) (= (select (arr!18400 lt!297907) (index!29717 lt!297974)) lt!297900) (and ((_ is MissingVacant!6847) lt!297974) (= (index!29719 lt!297974) vacantSpotIndex!68) (= (select (arr!18400 lt!297907) (index!29719 lt!297974)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90819 (= lt!297974 e!368385)))

(declare-fun c!73589 () Bool)

(assert (=> d!90819 (= c!73589 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90819 (= lt!297973 (select (arr!18400 lt!297907) lt!297908))))

(assert (=> d!90819 (validMask!0 mask!3053)))

(assert (=> d!90819 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 lt!297900 lt!297907 mask!3053) lt!297974)))

(declare-fun b!643131 () Bool)

(assert (=> b!643131 (= e!368386 (Found!6847 lt!297908))))

(declare-fun b!643132 () Bool)

(assert (=> b!643132 (= e!368387 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297908 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!297900 lt!297907 mask!3053))))

(declare-fun b!643133 () Bool)

(assert (=> b!643133 (= e!368385 Undefined!6847)))

(assert (= (and d!90819 c!73589) b!643133))

(assert (= (and d!90819 (not c!73589)) b!643130))

(assert (= (and b!643130 c!73590) b!643131))

(assert (= (and b!643130 (not c!73590)) b!643129))

(assert (= (and b!643129 c!73591) b!643128))

(assert (= (and b!643129 (not c!73591)) b!643132))

(declare-fun m!616943 () Bool)

(assert (=> d!90819 m!616943))

(declare-fun m!616945 () Bool)

(assert (=> d!90819 m!616945))

(declare-fun m!616947 () Bool)

(assert (=> d!90819 m!616947))

(assert (=> d!90819 m!616823))

(declare-fun m!616949 () Bool)

(assert (=> b!643132 m!616949))

(assert (=> b!643132 m!616949))

(declare-fun m!616951 () Bool)

(assert (=> b!643132 m!616951))

(assert (=> b!643000 d!90819))

(declare-fun d!90821 () Bool)

(declare-fun e!368417 () Bool)

(assert (=> d!90821 e!368417))

(declare-fun res!416708 () Bool)

(assert (=> d!90821 (=> (not res!416708) (not e!368417))))

(assert (=> d!90821 (= res!416708 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18764 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18764 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18764 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18764 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18764 a!2986))))))

(declare-fun lt!297992 () Unit!21754)

(declare-fun choose!9 (array!38378 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> d!90821 (= lt!297992 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90821 (validMask!0 mask!3053)))

(assert (=> d!90821 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 mask!3053) lt!297992)))

(declare-fun b!643168 () Bool)

(assert (=> b!643168 (= e!368417 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 (select (store (arr!18400 a!2986) i!1108 k0!1786) j!136) (array!38379 (store (arr!18400 a!2986) i!1108 k0!1786) (size!18764 a!2986)) mask!3053)))))

(assert (= (and d!90821 res!416708) b!643168))

(declare-fun m!616995 () Bool)

(assert (=> d!90821 m!616995))

(assert (=> d!90821 m!616823))

(assert (=> b!643168 m!616807))

(declare-fun m!616997 () Bool)

(assert (=> b!643168 m!616997))

(assert (=> b!643168 m!616791))

(assert (=> b!643168 m!616791))

(assert (=> b!643168 m!616819))

(assert (=> b!643168 m!616811))

(assert (=> b!643168 m!616807))

(assert (=> b!643000 d!90821))

(declare-fun d!90841 () Bool)

(declare-fun lt!297998 () (_ BitVec 32))

(assert (=> d!90841 (and (bvsge lt!297998 #b00000000000000000000000000000000) (bvslt lt!297998 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90841 (= lt!297998 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90841 (validMask!0 mask!3053)))

(assert (=> d!90841 (= (nextIndex!0 index!984 x!910 mask!3053) lt!297998)))

(declare-fun bs!19240 () Bool)

(assert (= bs!19240 d!90841))

(declare-fun m!617007 () Bool)

(assert (=> bs!19240 m!617007))

(assert (=> bs!19240 m!616823))

(assert (=> b!643000 d!90841))

(declare-fun b!643174 () Bool)

(declare-fun e!368425 () SeekEntryResult!6847)

(assert (=> b!643174 (= e!368425 (MissingVacant!6847 vacantSpotIndex!68))))

(declare-fun b!643175 () Bool)

(declare-fun c!73599 () Bool)

(declare-fun lt!297999 () (_ BitVec 64))

(assert (=> b!643175 (= c!73599 (= lt!297999 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368424 () SeekEntryResult!6847)

(assert (=> b!643175 (= e!368424 e!368425)))

(declare-fun b!643176 () Bool)

(declare-fun e!368423 () SeekEntryResult!6847)

(assert (=> b!643176 (= e!368423 e!368424)))

(declare-fun c!73598 () Bool)

(assert (=> b!643176 (= c!73598 (= lt!297999 (select (arr!18400 a!2986) j!136)))))

(declare-fun lt!298000 () SeekEntryResult!6847)

(declare-fun d!90847 () Bool)

(assert (=> d!90847 (and (or ((_ is Undefined!6847) lt!298000) (not ((_ is Found!6847) lt!298000)) (and (bvsge (index!29717 lt!298000) #b00000000000000000000000000000000) (bvslt (index!29717 lt!298000) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!298000) ((_ is Found!6847) lt!298000) (not ((_ is MissingVacant!6847) lt!298000)) (not (= (index!29719 lt!298000) vacantSpotIndex!68)) (and (bvsge (index!29719 lt!298000) #b00000000000000000000000000000000) (bvslt (index!29719 lt!298000) (size!18764 a!2986)))) (or ((_ is Undefined!6847) lt!298000) (ite ((_ is Found!6847) lt!298000) (= (select (arr!18400 a!2986) (index!29717 lt!298000)) (select (arr!18400 a!2986) j!136)) (and ((_ is MissingVacant!6847) lt!298000) (= (index!29719 lt!298000) vacantSpotIndex!68) (= (select (arr!18400 a!2986) (index!29719 lt!298000)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90847 (= lt!298000 e!368423)))

(declare-fun c!73597 () Bool)

(assert (=> d!90847 (= c!73597 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!90847 (= lt!297999 (select (arr!18400 a!2986) lt!297908))))

(assert (=> d!90847 (validMask!0 mask!3053)))

(assert (=> d!90847 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297908 vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053) lt!298000)))

(declare-fun b!643177 () Bool)

(assert (=> b!643177 (= e!368424 (Found!6847 lt!297908))))

(declare-fun b!643178 () Bool)

(assert (=> b!643178 (= e!368425 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!297908 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18400 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643179 () Bool)

(assert (=> b!643179 (= e!368423 Undefined!6847)))

(assert (= (and d!90847 c!73597) b!643179))

(assert (= (and d!90847 (not c!73597)) b!643176))

(assert (= (and b!643176 c!73598) b!643177))

(assert (= (and b!643176 (not c!73598)) b!643175))

(assert (= (and b!643175 c!73599) b!643174))

(assert (= (and b!643175 (not c!73599)) b!643178))

(declare-fun m!617009 () Bool)

(assert (=> d!90847 m!617009))

(declare-fun m!617011 () Bool)

(assert (=> d!90847 m!617011))

(declare-fun m!617013 () Bool)

(assert (=> d!90847 m!617013))

(assert (=> d!90847 m!616823))

(assert (=> b!643178 m!616949))

(assert (=> b!643178 m!616949))

(assert (=> b!643178 m!616791))

(declare-fun m!617015 () Bool)

(assert (=> b!643178 m!617015))

(assert (=> b!643000 d!90847))

(declare-fun b!643180 () Bool)

(declare-fun e!368428 () SeekEntryResult!6847)

(assert (=> b!643180 (= e!368428 (MissingVacant!6847 vacantSpotIndex!68))))

(declare-fun b!643181 () Bool)

(declare-fun c!73602 () Bool)

(declare-fun lt!298001 () (_ BitVec 64))

(assert (=> b!643181 (= c!73602 (= lt!298001 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368427 () SeekEntryResult!6847)

(assert (=> b!643181 (= e!368427 e!368428)))

(declare-fun b!643182 () Bool)

(declare-fun e!368426 () SeekEntryResult!6847)

(assert (=> b!643182 (= e!368426 e!368427)))

(declare-fun c!73601 () Bool)

(assert (=> b!643182 (= c!73601 (= lt!298001 lt!297900))))

(declare-fun d!90849 () Bool)

(declare-fun lt!298002 () SeekEntryResult!6847)

(assert (=> d!90849 (and (or ((_ is Undefined!6847) lt!298002) (not ((_ is Found!6847) lt!298002)) (and (bvsge (index!29717 lt!298002) #b00000000000000000000000000000000) (bvslt (index!29717 lt!298002) (size!18764 lt!297907)))) (or ((_ is Undefined!6847) lt!298002) ((_ is Found!6847) lt!298002) (not ((_ is MissingVacant!6847) lt!298002)) (not (= (index!29719 lt!298002) vacantSpotIndex!68)) (and (bvsge (index!29719 lt!298002) #b00000000000000000000000000000000) (bvslt (index!29719 lt!298002) (size!18764 lt!297907)))) (or ((_ is Undefined!6847) lt!298002) (ite ((_ is Found!6847) lt!298002) (= (select (arr!18400 lt!297907) (index!29717 lt!298002)) lt!297900) (and ((_ is MissingVacant!6847) lt!298002) (= (index!29719 lt!298002) vacantSpotIndex!68) (= (select (arr!18400 lt!297907) (index!29719 lt!298002)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90849 (= lt!298002 e!368426)))

(declare-fun c!73600 () Bool)

(assert (=> d!90849 (= c!73600 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90849 (= lt!298001 (select (arr!18400 lt!297907) index!984))))

(assert (=> d!90849 (validMask!0 mask!3053)))

(assert (=> d!90849 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297900 lt!297907 mask!3053) lt!298002)))

(declare-fun b!643183 () Bool)

(assert (=> b!643183 (= e!368427 (Found!6847 index!984))))

(declare-fun b!643184 () Bool)

(assert (=> b!643184 (= e!368428 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!297900 lt!297907 mask!3053))))

(declare-fun b!643185 () Bool)

(assert (=> b!643185 (= e!368426 Undefined!6847)))

(assert (= (and d!90849 c!73600) b!643185))

(assert (= (and d!90849 (not c!73600)) b!643182))

(assert (= (and b!643182 c!73601) b!643183))

(assert (= (and b!643182 (not c!73601)) b!643181))

(assert (= (and b!643181 c!73602) b!643180))

(assert (= (and b!643181 (not c!73602)) b!643184))

(declare-fun m!617017 () Bool)

(assert (=> d!90849 m!617017))

(declare-fun m!617019 () Bool)

(assert (=> d!90849 m!617019))

(declare-fun m!617021 () Bool)

(assert (=> d!90849 m!617021))

(assert (=> d!90849 m!616823))

(assert (=> b!643184 m!616817))

(assert (=> b!643184 m!616817))

(declare-fun m!617023 () Bool)

(assert (=> b!643184 m!617023))

(assert (=> b!643000 d!90849))

(declare-fun d!90851 () Bool)

(declare-fun res!416714 () Bool)

(declare-fun e!368429 () Bool)

(assert (=> d!90851 (=> res!416714 e!368429)))

(assert (=> d!90851 (= res!416714 (= (select (arr!18400 lt!297907) index!984) (select (arr!18400 a!2986) j!136)))))

(assert (=> d!90851 (= (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) index!984) e!368429)))

(declare-fun b!643186 () Bool)

(declare-fun e!368430 () Bool)

(assert (=> b!643186 (= e!368429 e!368430)))

(declare-fun res!416715 () Bool)

(assert (=> b!643186 (=> (not res!416715) (not e!368430))))

(assert (=> b!643186 (= res!416715 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18764 lt!297907)))))

(declare-fun b!643187 () Bool)

(assert (=> b!643187 (= e!368430 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90851 (not res!416714)) b!643186))

(assert (= (and b!643186 res!416715) b!643187))

(assert (=> d!90851 m!617021))

(assert (=> b!643187 m!616791))

(declare-fun m!617027 () Bool)

(assert (=> b!643187 m!617027))

(assert (=> b!642998 d!90851))

(declare-fun d!90855 () Bool)

(declare-fun res!416719 () Bool)

(declare-fun e!368435 () Bool)

(assert (=> d!90855 (=> res!416719 e!368435)))

(assert (=> d!90855 (= res!416719 (= (select (arr!18400 lt!297907) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18400 a!2986) j!136)))))

(assert (=> d!90855 (= (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!368435)))

(declare-fun b!643193 () Bool)

(declare-fun e!368436 () Bool)

(assert (=> b!643193 (= e!368435 e!368436)))

(declare-fun res!416720 () Bool)

(assert (=> b!643193 (=> (not res!416720) (not e!368436))))

(assert (=> b!643193 (= res!416720 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18764 lt!297907)))))

(declare-fun b!643194 () Bool)

(assert (=> b!643194 (= e!368436 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90855 (not res!416719)) b!643193))

(assert (= (and b!643193 res!416720) b!643194))

(declare-fun m!617029 () Bool)

(assert (=> d!90855 m!617029))

(assert (=> b!643194 m!616791))

(declare-fun m!617033 () Bool)

(assert (=> b!643194 m!617033))

(assert (=> b!642986 d!90855))

(declare-fun d!90857 () Bool)

(assert (=> d!90857 (arrayContainsKey!0 lt!297907 (select (arr!18400 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298008 () Unit!21754)

(declare-fun choose!114 (array!38378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> d!90857 (= lt!298008 (choose!114 lt!297907 (select (arr!18400 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!90857 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!90857 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297907 (select (arr!18400 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!298008)))

(declare-fun bs!19242 () Bool)

(assert (= bs!19242 d!90857))

(assert (=> bs!19242 m!616791))

(assert (=> bs!19242 m!616805))

(assert (=> bs!19242 m!616791))

(declare-fun m!617041 () Bool)

(assert (=> bs!19242 m!617041))

(assert (=> b!642986 d!90857))

(declare-fun d!90861 () Bool)

(declare-fun res!416729 () Bool)

(declare-fun e!368452 () Bool)

(assert (=> d!90861 (=> res!416729 e!368452)))

(assert (=> d!90861 (= res!416729 (bvsge j!136 (size!18764 lt!297907)))))

(assert (=> d!90861 (= (arrayNoDuplicates!0 lt!297907 j!136 Nil!12491) e!368452)))

(declare-fun b!643217 () Bool)

(declare-fun e!368451 () Bool)

(assert (=> b!643217 (= e!368452 e!368451)))

(declare-fun res!416728 () Bool)

(assert (=> b!643217 (=> (not res!416728) (not e!368451))))

(declare-fun e!368453 () Bool)

(assert (=> b!643217 (= res!416728 (not e!368453))))

(declare-fun res!416727 () Bool)

(assert (=> b!643217 (=> (not res!416727) (not e!368453))))

(assert (=> b!643217 (= res!416727 (validKeyInArray!0 (select (arr!18400 lt!297907) j!136)))))

(declare-fun bm!33589 () Bool)

(declare-fun c!73612 () Bool)

(declare-fun call!33592 () Bool)

(assert (=> bm!33589 (= call!33592 (arrayNoDuplicates!0 lt!297907 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73612 (Cons!12490 (select (arr!18400 lt!297907) j!136) Nil!12491) Nil!12491)))))

(declare-fun b!643218 () Bool)

(declare-fun e!368454 () Bool)

(assert (=> b!643218 (= e!368451 e!368454)))

(assert (=> b!643218 (= c!73612 (validKeyInArray!0 (select (arr!18400 lt!297907) j!136)))))

(declare-fun b!643219 () Bool)

(assert (=> b!643219 (= e!368454 call!33592)))

(declare-fun b!643220 () Bool)

(assert (=> b!643220 (= e!368454 call!33592)))

(declare-fun b!643221 () Bool)

(declare-fun contains!3145 (List!12494 (_ BitVec 64)) Bool)

(assert (=> b!643221 (= e!368453 (contains!3145 Nil!12491 (select (arr!18400 lt!297907) j!136)))))

(assert (= (and d!90861 (not res!416729)) b!643217))

(assert (= (and b!643217 res!416727) b!643221))

(assert (= (and b!643217 res!416728) b!643218))

(assert (= (and b!643218 c!73612) b!643219))

(assert (= (and b!643218 (not c!73612)) b!643220))

(assert (= (or b!643219 b!643220) bm!33589))

(assert (=> b!643217 m!616911))

(assert (=> b!643217 m!616911))

(declare-fun m!617043 () Bool)

(assert (=> b!643217 m!617043))

(assert (=> bm!33589 m!616911))

(declare-fun m!617045 () Bool)

(assert (=> bm!33589 m!617045))

(assert (=> b!643218 m!616911))

(assert (=> b!643218 m!616911))

(assert (=> b!643218 m!617043))

(assert (=> b!643221 m!616911))

(assert (=> b!643221 m!616911))

(declare-fun m!617047 () Bool)

(assert (=> b!643221 m!617047))

(assert (=> b!642986 d!90861))

(declare-fun d!90863 () Bool)

(assert (=> d!90863 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18764 lt!297907)) (not (= (select (arr!18400 lt!297907) j!136) (select (arr!18400 a!2986) j!136))))))

(declare-fun lt!298024 () Unit!21754)

(declare-fun choose!21 (array!38378 (_ BitVec 64) (_ BitVec 32) List!12494) Unit!21754)

(assert (=> d!90863 (= lt!298024 (choose!21 lt!297907 (select (arr!18400 a!2986) j!136) j!136 Nil!12491))))

(assert (=> d!90863 (bvslt (size!18764 lt!297907) #b01111111111111111111111111111111)))

(assert (=> d!90863 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297907 (select (arr!18400 a!2986) j!136) j!136 Nil!12491) lt!298024)))

(declare-fun bs!19243 () Bool)

(assert (= bs!19243 d!90863))

(assert (=> bs!19243 m!616911))

(assert (=> bs!19243 m!616791))

(declare-fun m!617049 () Bool)

(assert (=> bs!19243 m!617049))

(assert (=> b!642986 d!90863))

(declare-fun d!90865 () Bool)

(declare-fun res!416732 () Bool)

(declare-fun e!368465 () Bool)

(assert (=> d!90865 (=> res!416732 e!368465)))

(assert (=> d!90865 (= res!416732 (bvsge #b00000000000000000000000000000000 (size!18764 lt!297907)))))

(assert (=> d!90865 (= (arrayNoDuplicates!0 lt!297907 #b00000000000000000000000000000000 Nil!12491) e!368465)))

(declare-fun b!643240 () Bool)

(declare-fun e!368464 () Bool)

(assert (=> b!643240 (= e!368465 e!368464)))

(declare-fun res!416731 () Bool)

(assert (=> b!643240 (=> (not res!416731) (not e!368464))))

(declare-fun e!368466 () Bool)

(assert (=> b!643240 (= res!416731 (not e!368466))))

(declare-fun res!416730 () Bool)

(assert (=> b!643240 (=> (not res!416730) (not e!368466))))

(assert (=> b!643240 (= res!416730 (validKeyInArray!0 (select (arr!18400 lt!297907) #b00000000000000000000000000000000)))))

(declare-fun bm!33590 () Bool)

(declare-fun call!33593 () Bool)

(declare-fun c!73622 () Bool)

(assert (=> bm!33590 (= call!33593 (arrayNoDuplicates!0 lt!297907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73622 (Cons!12490 (select (arr!18400 lt!297907) #b00000000000000000000000000000000) Nil!12491) Nil!12491)))))

(declare-fun b!643241 () Bool)

(declare-fun e!368467 () Bool)

(assert (=> b!643241 (= e!368464 e!368467)))

(assert (=> b!643241 (= c!73622 (validKeyInArray!0 (select (arr!18400 lt!297907) #b00000000000000000000000000000000)))))

(declare-fun b!643242 () Bool)

(assert (=> b!643242 (= e!368467 call!33593)))

(declare-fun b!643243 () Bool)

(assert (=> b!643243 (= e!368467 call!33593)))

(declare-fun b!643244 () Bool)

(assert (=> b!643244 (= e!368466 (contains!3145 Nil!12491 (select (arr!18400 lt!297907) #b00000000000000000000000000000000)))))

(assert (= (and d!90865 (not res!416732)) b!643240))

(assert (= (and b!643240 res!416730) b!643244))

(assert (= (and b!643240 res!416731) b!643241))

(assert (= (and b!643241 c!73622) b!643242))

(assert (= (and b!643241 (not c!73622)) b!643243))

(assert (= (or b!643242 b!643243) bm!33590))

(declare-fun m!617065 () Bool)

(assert (=> b!643240 m!617065))

(assert (=> b!643240 m!617065))

(declare-fun m!617067 () Bool)

(assert (=> b!643240 m!617067))

(assert (=> bm!33590 m!617065))

(declare-fun m!617069 () Bool)

(assert (=> bm!33590 m!617069))

(assert (=> b!643241 m!617065))

(assert (=> b!643241 m!617065))

(assert (=> b!643241 m!617067))

(assert (=> b!643244 m!617065))

(assert (=> b!643244 m!617065))

(declare-fun m!617071 () Bool)

(assert (=> b!643244 m!617071))

(assert (=> b!642986 d!90865))

(declare-fun d!90869 () Bool)

(assert (=> d!90869 (arrayNoDuplicates!0 lt!297907 j!136 Nil!12491)))

(declare-fun lt!298029 () Unit!21754)

(declare-fun choose!39 (array!38378 (_ BitVec 32) (_ BitVec 32)) Unit!21754)

(assert (=> d!90869 (= lt!298029 (choose!39 lt!297907 #b00000000000000000000000000000000 j!136))))

(assert (=> d!90869 (bvslt (size!18764 lt!297907) #b01111111111111111111111111111111)))

(assert (=> d!90869 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!297907 #b00000000000000000000000000000000 j!136) lt!298029)))

(declare-fun bs!19244 () Bool)

(assert (= bs!19244 d!90869))

(assert (=> bs!19244 m!616803))

(declare-fun m!617077 () Bool)

(assert (=> bs!19244 m!617077))

(assert (=> b!642986 d!90869))

(declare-fun d!90871 () Bool)

(declare-fun e!368473 () Bool)

(assert (=> d!90871 e!368473))

(declare-fun res!416735 () Bool)

(assert (=> d!90871 (=> (not res!416735) (not e!368473))))

(assert (=> d!90871 (= res!416735 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18764 a!2986))))))

(declare-fun lt!298032 () Unit!21754)

(declare-fun choose!41 (array!38378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12494) Unit!21754)

(assert (=> d!90871 (= lt!298032 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12491))))

(assert (=> d!90871 (bvslt (size!18764 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!90871 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12491) lt!298032)))

(declare-fun b!643253 () Bool)

(assert (=> b!643253 (= e!368473 (arrayNoDuplicates!0 (array!38379 (store (arr!18400 a!2986) i!1108 k0!1786) (size!18764 a!2986)) #b00000000000000000000000000000000 Nil!12491))))

(assert (= (and d!90871 res!416735) b!643253))

(declare-fun m!617081 () Bool)

(assert (=> d!90871 m!617081))

(assert (=> b!643253 m!616811))

(declare-fun m!617083 () Bool)

(assert (=> b!643253 m!617083))

(assert (=> b!642986 d!90871))

(declare-fun bm!33598 () Bool)

(declare-fun call!33601 () Bool)

(assert (=> bm!33598 (= call!33601 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!643298 () Bool)

(declare-fun e!368506 () Bool)

(declare-fun e!368505 () Bool)

(assert (=> b!643298 (= e!368506 e!368505)))

(declare-fun lt!298054 () (_ BitVec 64))

(assert (=> b!643298 (= lt!298054 (select (arr!18400 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!298053 () Unit!21754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38378 (_ BitVec 64) (_ BitVec 32)) Unit!21754)

(assert (=> b!643298 (= lt!298053 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!298054 #b00000000000000000000000000000000))))

(assert (=> b!643298 (arrayContainsKey!0 a!2986 lt!298054 #b00000000000000000000000000000000)))

(declare-fun lt!298052 () Unit!21754)

(assert (=> b!643298 (= lt!298052 lt!298053)))

(declare-fun res!416754 () Bool)

(assert (=> b!643298 (= res!416754 (= (seekEntryOrOpen!0 (select (arr!18400 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6847 #b00000000000000000000000000000000)))))

(assert (=> b!643298 (=> (not res!416754) (not e!368505))))

(declare-fun d!90875 () Bool)

(declare-fun res!416755 () Bool)

(declare-fun e!368507 () Bool)

(assert (=> d!90875 (=> res!416755 e!368507)))

(assert (=> d!90875 (= res!416755 (bvsge #b00000000000000000000000000000000 (size!18764 a!2986)))))

(assert (=> d!90875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!368507)))

(declare-fun b!643299 () Bool)

(assert (=> b!643299 (= e!368506 call!33601)))

(declare-fun b!643300 () Bool)

(assert (=> b!643300 (= e!368507 e!368506)))

(declare-fun c!73639 () Bool)

(assert (=> b!643300 (= c!73639 (validKeyInArray!0 (select (arr!18400 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643301 () Bool)

(assert (=> b!643301 (= e!368505 call!33601)))

(assert (= (and d!90875 (not res!416755)) b!643300))

(assert (= (and b!643300 c!73639) b!643298))

(assert (= (and b!643300 (not c!73639)) b!643299))

(assert (= (and b!643298 res!416754) b!643301))

(assert (= (or b!643301 b!643299) bm!33598))

(declare-fun m!617113 () Bool)

(assert (=> bm!33598 m!617113))

(assert (=> b!643298 m!616921))

(declare-fun m!617115 () Bool)

(assert (=> b!643298 m!617115))

(declare-fun m!617117 () Bool)

(assert (=> b!643298 m!617117))

(assert (=> b!643298 m!616921))

(declare-fun m!617119 () Bool)

(assert (=> b!643298 m!617119))

(assert (=> b!643300 m!616921))

(assert (=> b!643300 m!616921))

(declare-fun m!617121 () Bool)

(assert (=> b!643300 m!617121))

(assert (=> b!642997 d!90875))

(declare-fun d!90889 () Bool)

(declare-fun res!416761 () Bool)

(declare-fun e!368513 () Bool)

(assert (=> d!90889 (=> res!416761 e!368513)))

(assert (=> d!90889 (= res!416761 (bvsge #b00000000000000000000000000000000 (size!18764 a!2986)))))

(assert (=> d!90889 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12491) e!368513)))

(declare-fun b!643307 () Bool)

(declare-fun e!368512 () Bool)

(assert (=> b!643307 (= e!368513 e!368512)))

(declare-fun res!416760 () Bool)

(assert (=> b!643307 (=> (not res!416760) (not e!368512))))

(declare-fun e!368514 () Bool)

(assert (=> b!643307 (= res!416760 (not e!368514))))

(declare-fun res!416759 () Bool)

(assert (=> b!643307 (=> (not res!416759) (not e!368514))))

(assert (=> b!643307 (= res!416759 (validKeyInArray!0 (select (arr!18400 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33600 () Bool)

(declare-fun call!33603 () Bool)

(declare-fun c!73641 () Bool)

(assert (=> bm!33600 (= call!33603 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73641 (Cons!12490 (select (arr!18400 a!2986) #b00000000000000000000000000000000) Nil!12491) Nil!12491)))))

(declare-fun b!643308 () Bool)

(declare-fun e!368515 () Bool)

(assert (=> b!643308 (= e!368512 e!368515)))

(assert (=> b!643308 (= c!73641 (validKeyInArray!0 (select (arr!18400 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643309 () Bool)

(assert (=> b!643309 (= e!368515 call!33603)))

(declare-fun b!643310 () Bool)

(assert (=> b!643310 (= e!368515 call!33603)))

(declare-fun b!643311 () Bool)

(assert (=> b!643311 (= e!368514 (contains!3145 Nil!12491 (select (arr!18400 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90889 (not res!416761)) b!643307))

(assert (= (and b!643307 res!416759) b!643311))

(assert (= (and b!643307 res!416760) b!643308))

(assert (= (and b!643308 c!73641) b!643309))

(assert (= (and b!643308 (not c!73641)) b!643310))

(assert (= (or b!643309 b!643310) bm!33600))

(assert (=> b!643307 m!616921))

(assert (=> b!643307 m!616921))

(assert (=> b!643307 m!617121))

(assert (=> bm!33600 m!616921))

(declare-fun m!617129 () Bool)

(assert (=> bm!33600 m!617129))

(assert (=> b!643308 m!616921))

(assert (=> b!643308 m!616921))

(assert (=> b!643308 m!617121))

(assert (=> b!643311 m!616921))

(assert (=> b!643311 m!616921))

(declare-fun m!617131 () Bool)

(assert (=> b!643311 m!617131))

(assert (=> b!642983 d!90889))

(declare-fun d!90897 () Bool)

(assert (=> d!90897 (= (validKeyInArray!0 (select (arr!18400 a!2986) j!136)) (and (not (= (select (arr!18400 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18400 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!642984 d!90897))

(assert (=> b!642993 d!90851))

(assert (=> b!642993 d!90799))

(check-sat (not bm!33598) (not b!643217) (not b!643090) (not b!643168) (not d!90819) (not b!643194) (not d!90841) (not b!643073) (not bm!33589) (not bm!33590) (not b!643253) (not d!90849) (not d!90863) (not b!643114) (not b!643244) (not b!643240) (not b!643132) (not b!643093) (not b!643178) (not bm!33600) (not d!90821) (not b!643241) (not d!90847) (not b!643221) (not d!90809) (not d!90857) (not d!90871) (not b!643298) (not b!643184) (not b!643311) (not b!643307) (not b!643308) (not d!90801) (not b!643187) (not b!643218) (not b!643300) (not d!90869))
(check-sat)
