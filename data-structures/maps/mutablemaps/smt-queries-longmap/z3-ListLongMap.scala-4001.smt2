; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54272 () Bool)

(assert start!54272)

(declare-fun b!592823 () Bool)

(declare-fun e!338589 () Bool)

(declare-fun e!338593 () Bool)

(assert (=> b!592823 (= e!338589 e!338593)))

(declare-fun res!379605 () Bool)

(assert (=> b!592823 (=> (not res!379605) (not e!338593))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6163 0))(
  ( (MissingZero!6163 (index!26890 (_ BitVec 32))) (Found!6163 (index!26891 (_ BitVec 32))) (Intermediate!6163 (undefined!6975 Bool) (index!26892 (_ BitVec 32)) (x!55709 (_ BitVec 32))) (Undefined!6163) (MissingVacant!6163 (index!26893 (_ BitVec 32))) )
))
(declare-fun lt!269187 () SeekEntryResult!6163)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36902 0))(
  ( (array!36903 (arr!17716 (Array (_ BitVec 32) (_ BitVec 64))) (size!18080 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36902)

(assert (=> b!592823 (= res!379605 (and (= lt!269187 (Found!6163 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17716 a!2986) index!984) (select (arr!17716 a!2986) j!136))) (not (= (select (arr!17716 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36902 (_ BitVec 32)) SeekEntryResult!6163)

(assert (=> b!592823 (= lt!269187 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592824 () Bool)

(declare-fun e!338586 () Bool)

(assert (=> b!592824 (= e!338593 (not e!338586))))

(declare-fun res!379611 () Bool)

(assert (=> b!592824 (=> res!379611 e!338586)))

(declare-fun lt!269184 () SeekEntryResult!6163)

(assert (=> b!592824 (= res!379611 (not (= lt!269184 (Found!6163 index!984))))))

(declare-datatypes ((Unit!18596 0))(
  ( (Unit!18597) )
))
(declare-fun lt!269182 () Unit!18596)

(declare-fun e!338585 () Unit!18596)

(assert (=> b!592824 (= lt!269182 e!338585)))

(declare-fun c!66977 () Bool)

(assert (=> b!592824 (= c!66977 (= lt!269184 Undefined!6163))))

(declare-fun lt!269190 () array!36902)

(declare-fun lt!269189 () (_ BitVec 64))

(assert (=> b!592824 (= lt!269184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269189 lt!269190 mask!3053))))

(declare-fun e!338592 () Bool)

(assert (=> b!592824 e!338592))

(declare-fun res!379615 () Bool)

(assert (=> b!592824 (=> (not res!379615) (not e!338592))))

(declare-fun lt!269185 () SeekEntryResult!6163)

(declare-fun lt!269186 () (_ BitVec 32))

(assert (=> b!592824 (= res!379615 (= lt!269185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 lt!269189 lt!269190 mask!3053)))))

(assert (=> b!592824 (= lt!269185 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!592824 (= lt!269189 (select (store (arr!17716 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!269180 () Unit!18596)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36902 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18596)

(assert (=> b!592824 (= lt!269180 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592824 (= lt!269186 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592825 () Bool)

(declare-fun e!338595 () Bool)

(declare-fun arrayContainsKey!0 (array!36902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592825 (= e!338595 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) index!984))))

(declare-fun b!592826 () Bool)

(declare-fun Unit!18598 () Unit!18596)

(assert (=> b!592826 (= e!338585 Unit!18598)))

(assert (=> b!592826 false))

(declare-fun b!592827 () Bool)

(declare-fun res!379610 () Bool)

(declare-fun e!338596 () Bool)

(assert (=> b!592827 (=> (not res!379610) (not e!338596))))

(assert (=> b!592827 (= res!379610 (and (= (size!18080 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18080 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18080 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592828 () Bool)

(declare-fun e!338594 () Bool)

(assert (=> b!592828 (= e!338594 (or (bvsgt #b00000000000000000000000000000000 (size!18080 a!2986)) (bvslt (size!18080 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!592828 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269188 () Unit!18596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36902 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18596)

(assert (=> b!592828 (= lt!269188 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269190 (select (arr!17716 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592830 () Bool)

(declare-fun res!379607 () Bool)

(declare-fun e!338590 () Bool)

(assert (=> b!592830 (=> (not res!379607) (not e!338590))))

(assert (=> b!592830 (= res!379607 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17716 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592831 () Bool)

(assert (=> b!592831 (= e!338596 e!338590)))

(declare-fun res!379619 () Bool)

(assert (=> b!592831 (=> (not res!379619) (not e!338590))))

(declare-fun lt!269183 () SeekEntryResult!6163)

(assert (=> b!592831 (= res!379619 (or (= lt!269183 (MissingZero!6163 i!1108)) (= lt!269183 (MissingVacant!6163 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36902 (_ BitVec 32)) SeekEntryResult!6163)

(assert (=> b!592831 (= lt!269183 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!592832 () Bool)

(declare-fun Unit!18599 () Unit!18596)

(assert (=> b!592832 (= e!338585 Unit!18599)))

(declare-fun b!592833 () Bool)

(declare-fun res!379618 () Bool)

(assert (=> b!592833 (=> (not res!379618) (not e!338590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36902 (_ BitVec 32)) Bool)

(assert (=> b!592833 (= res!379618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592834 () Bool)

(assert (=> b!592834 (= e!338590 e!338589)))

(declare-fun res!379612 () Bool)

(assert (=> b!592834 (=> (not res!379612) (not e!338589))))

(assert (=> b!592834 (= res!379612 (= (select (store (arr!17716 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592834 (= lt!269190 (array!36903 (store (arr!17716 a!2986) i!1108 k0!1786) (size!18080 a!2986)))))

(declare-fun b!592835 () Bool)

(declare-fun e!338588 () Bool)

(assert (=> b!592835 (= e!338588 e!338595)))

(declare-fun res!379614 () Bool)

(assert (=> b!592835 (=> (not res!379614) (not e!338595))))

(assert (=> b!592835 (= res!379614 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) j!136))))

(declare-fun b!592836 () Bool)

(declare-fun res!379616 () Bool)

(assert (=> b!592836 (=> (not res!379616) (not e!338596))))

(assert (=> b!592836 (= res!379616 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592837 () Bool)

(assert (=> b!592837 (= e!338592 (= lt!269187 lt!269185))))

(declare-fun b!592838 () Bool)

(declare-fun res!379609 () Bool)

(assert (=> b!592838 (=> (not res!379609) (not e!338596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592838 (= res!379609 (validKeyInArray!0 k0!1786))))

(declare-fun b!592839 () Bool)

(assert (=> b!592839 (= e!338586 e!338594)))

(declare-fun res!379604 () Bool)

(assert (=> b!592839 (=> res!379604 e!338594)))

(declare-fun lt!269181 () (_ BitVec 64))

(assert (=> b!592839 (= res!379604 (or (not (= (select (arr!17716 a!2986) j!136) lt!269189)) (not (= (select (arr!17716 a!2986) j!136) lt!269181)) (bvsge j!136 index!984)))))

(declare-fun e!338591 () Bool)

(assert (=> b!592839 e!338591))

(declare-fun res!379606 () Bool)

(assert (=> b!592839 (=> (not res!379606) (not e!338591))))

(assert (=> b!592839 (= res!379606 (= lt!269181 (select (arr!17716 a!2986) j!136)))))

(assert (=> b!592839 (= lt!269181 (select (store (arr!17716 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!592829 () Bool)

(assert (=> b!592829 (= e!338591 e!338588)))

(declare-fun res!379617 () Bool)

(assert (=> b!592829 (=> res!379617 e!338588)))

(assert (=> b!592829 (= res!379617 (or (not (= (select (arr!17716 a!2986) j!136) lt!269189)) (not (= (select (arr!17716 a!2986) j!136) lt!269181)) (bvsge j!136 index!984)))))

(declare-fun res!379603 () Bool)

(assert (=> start!54272 (=> (not res!379603) (not e!338596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54272 (= res!379603 (validMask!0 mask!3053))))

(assert (=> start!54272 e!338596))

(assert (=> start!54272 true))

(declare-fun array_inv!13490 (array!36902) Bool)

(assert (=> start!54272 (array_inv!13490 a!2986)))

(declare-fun b!592840 () Bool)

(declare-fun res!379613 () Bool)

(assert (=> b!592840 (=> (not res!379613) (not e!338590))))

(declare-datatypes ((List!11810 0))(
  ( (Nil!11807) (Cons!11806 (h!12851 (_ BitVec 64)) (t!18046 List!11810)) )
))
(declare-fun arrayNoDuplicates!0 (array!36902 (_ BitVec 32) List!11810) Bool)

(assert (=> b!592840 (= res!379613 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11807))))

(declare-fun b!592841 () Bool)

(declare-fun res!379608 () Bool)

(assert (=> b!592841 (=> (not res!379608) (not e!338596))))

(assert (=> b!592841 (= res!379608 (validKeyInArray!0 (select (arr!17716 a!2986) j!136)))))

(assert (= (and start!54272 res!379603) b!592827))

(assert (= (and b!592827 res!379610) b!592841))

(assert (= (and b!592841 res!379608) b!592838))

(assert (= (and b!592838 res!379609) b!592836))

(assert (= (and b!592836 res!379616) b!592831))

(assert (= (and b!592831 res!379619) b!592833))

(assert (= (and b!592833 res!379618) b!592840))

(assert (= (and b!592840 res!379613) b!592830))

(assert (= (and b!592830 res!379607) b!592834))

(assert (= (and b!592834 res!379612) b!592823))

(assert (= (and b!592823 res!379605) b!592824))

(assert (= (and b!592824 res!379615) b!592837))

(assert (= (and b!592824 c!66977) b!592826))

(assert (= (and b!592824 (not c!66977)) b!592832))

(assert (= (and b!592824 (not res!379611)) b!592839))

(assert (= (and b!592839 res!379606) b!592829))

(assert (= (and b!592829 (not res!379617)) b!592835))

(assert (= (and b!592835 res!379614) b!592825))

(assert (= (and b!592839 (not res!379604)) b!592828))

(declare-fun m!570887 () Bool)

(assert (=> b!592836 m!570887))

(declare-fun m!570889 () Bool)

(assert (=> b!592830 m!570889))

(declare-fun m!570891 () Bool)

(assert (=> b!592839 m!570891))

(declare-fun m!570893 () Bool)

(assert (=> b!592839 m!570893))

(declare-fun m!570895 () Bool)

(assert (=> b!592839 m!570895))

(assert (=> b!592841 m!570891))

(assert (=> b!592841 m!570891))

(declare-fun m!570897 () Bool)

(assert (=> b!592841 m!570897))

(assert (=> b!592834 m!570893))

(declare-fun m!570899 () Bool)

(assert (=> b!592834 m!570899))

(declare-fun m!570901 () Bool)

(assert (=> b!592833 m!570901))

(declare-fun m!570903 () Bool)

(assert (=> b!592831 m!570903))

(assert (=> b!592825 m!570891))

(assert (=> b!592825 m!570891))

(declare-fun m!570905 () Bool)

(assert (=> b!592825 m!570905))

(assert (=> b!592829 m!570891))

(declare-fun m!570907 () Bool)

(assert (=> b!592824 m!570907))

(declare-fun m!570909 () Bool)

(assert (=> b!592824 m!570909))

(declare-fun m!570911 () Bool)

(assert (=> b!592824 m!570911))

(assert (=> b!592824 m!570893))

(declare-fun m!570913 () Bool)

(assert (=> b!592824 m!570913))

(declare-fun m!570915 () Bool)

(assert (=> b!592824 m!570915))

(assert (=> b!592824 m!570891))

(declare-fun m!570917 () Bool)

(assert (=> b!592824 m!570917))

(assert (=> b!592824 m!570891))

(assert (=> b!592835 m!570891))

(assert (=> b!592835 m!570891))

(declare-fun m!570919 () Bool)

(assert (=> b!592835 m!570919))

(declare-fun m!570921 () Bool)

(assert (=> b!592823 m!570921))

(assert (=> b!592823 m!570891))

(assert (=> b!592823 m!570891))

(declare-fun m!570923 () Bool)

(assert (=> b!592823 m!570923))

(declare-fun m!570925 () Bool)

(assert (=> b!592840 m!570925))

(declare-fun m!570927 () Bool)

(assert (=> b!592838 m!570927))

(assert (=> b!592828 m!570891))

(assert (=> b!592828 m!570891))

(declare-fun m!570929 () Bool)

(assert (=> b!592828 m!570929))

(assert (=> b!592828 m!570891))

(declare-fun m!570931 () Bool)

(assert (=> b!592828 m!570931))

(declare-fun m!570933 () Bool)

(assert (=> start!54272 m!570933))

(declare-fun m!570935 () Bool)

(assert (=> start!54272 m!570935))

(check-sat (not b!592840) (not b!592836) (not b!592835) (not b!592828) (not b!592833) (not b!592824) (not b!592838) (not b!592841) (not b!592823) (not start!54272) (not b!592831) (not b!592825))
(check-sat)
(get-model)

(declare-fun b!592911 () Bool)

(declare-fun e!338640 () SeekEntryResult!6163)

(declare-fun lt!269231 () SeekEntryResult!6163)

(assert (=> b!592911 (= e!338640 (MissingZero!6163 (index!26892 lt!269231)))))

(declare-fun b!592913 () Bool)

(declare-fun e!338641 () SeekEntryResult!6163)

(declare-fun e!338639 () SeekEntryResult!6163)

(assert (=> b!592913 (= e!338641 e!338639)))

(declare-fun lt!269232 () (_ BitVec 64))

(assert (=> b!592913 (= lt!269232 (select (arr!17716 a!2986) (index!26892 lt!269231)))))

(declare-fun c!66987 () Bool)

(assert (=> b!592913 (= c!66987 (= lt!269232 k0!1786))))

(declare-fun b!592914 () Bool)

(declare-fun c!66988 () Bool)

(assert (=> b!592914 (= c!66988 (= lt!269232 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592914 (= e!338639 e!338640)))

(declare-fun b!592915 () Bool)

(assert (=> b!592915 (= e!338640 (seekKeyOrZeroReturnVacant!0 (x!55709 lt!269231) (index!26892 lt!269231) (index!26892 lt!269231) k0!1786 a!2986 mask!3053))))

(declare-fun b!592916 () Bool)

(assert (=> b!592916 (= e!338639 (Found!6163 (index!26892 lt!269231)))))

(declare-fun d!86203 () Bool)

(declare-fun lt!269230 () SeekEntryResult!6163)

(get-info :version)

(assert (=> d!86203 (and (or ((_ is Undefined!6163) lt!269230) (not ((_ is Found!6163) lt!269230)) (and (bvsge (index!26891 lt!269230) #b00000000000000000000000000000000) (bvslt (index!26891 lt!269230) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269230) ((_ is Found!6163) lt!269230) (not ((_ is MissingZero!6163) lt!269230)) (and (bvsge (index!26890 lt!269230) #b00000000000000000000000000000000) (bvslt (index!26890 lt!269230) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269230) ((_ is Found!6163) lt!269230) ((_ is MissingZero!6163) lt!269230) (not ((_ is MissingVacant!6163) lt!269230)) (and (bvsge (index!26893 lt!269230) #b00000000000000000000000000000000) (bvslt (index!26893 lt!269230) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269230) (ite ((_ is Found!6163) lt!269230) (= (select (arr!17716 a!2986) (index!26891 lt!269230)) k0!1786) (ite ((_ is MissingZero!6163) lt!269230) (= (select (arr!17716 a!2986) (index!26890 lt!269230)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6163) lt!269230) (= (select (arr!17716 a!2986) (index!26893 lt!269230)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86203 (= lt!269230 e!338641)))

(declare-fun c!66989 () Bool)

(assert (=> d!86203 (= c!66989 (and ((_ is Intermediate!6163) lt!269231) (undefined!6975 lt!269231)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36902 (_ BitVec 32)) SeekEntryResult!6163)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86203 (= lt!269231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86203 (validMask!0 mask!3053)))

(assert (=> d!86203 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!269230)))

(declare-fun b!592912 () Bool)

(assert (=> b!592912 (= e!338641 Undefined!6163)))

(assert (= (and d!86203 c!66989) b!592912))

(assert (= (and d!86203 (not c!66989)) b!592913))

(assert (= (and b!592913 c!66987) b!592916))

(assert (= (and b!592913 (not c!66987)) b!592914))

(assert (= (and b!592914 c!66988) b!592911))

(assert (= (and b!592914 (not c!66988)) b!592915))

(declare-fun m!570987 () Bool)

(assert (=> b!592913 m!570987))

(declare-fun m!570989 () Bool)

(assert (=> b!592915 m!570989))

(declare-fun m!570991 () Bool)

(assert (=> d!86203 m!570991))

(declare-fun m!570993 () Bool)

(assert (=> d!86203 m!570993))

(assert (=> d!86203 m!570991))

(declare-fun m!570995 () Bool)

(assert (=> d!86203 m!570995))

(declare-fun m!570997 () Bool)

(assert (=> d!86203 m!570997))

(declare-fun m!570999 () Bool)

(assert (=> d!86203 m!570999))

(assert (=> d!86203 m!570933))

(assert (=> b!592831 d!86203))

(declare-fun d!86205 () Bool)

(assert (=> d!86205 (= (validKeyInArray!0 (select (arr!17716 a!2986) j!136)) (and (not (= (select (arr!17716 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17716 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592841 d!86205))

(declare-fun d!86207 () Bool)

(assert (=> d!86207 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54272 d!86207))

(declare-fun d!86209 () Bool)

(assert (=> d!86209 (= (array_inv!13490 a!2986) (bvsge (size!18080 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54272 d!86209))

(declare-fun b!592929 () Bool)

(declare-fun e!338649 () SeekEntryResult!6163)

(assert (=> b!592929 (= e!338649 (Found!6163 index!984))))

(declare-fun b!592930 () Bool)

(declare-fun e!338650 () SeekEntryResult!6163)

(assert (=> b!592930 (= e!338650 Undefined!6163)))

(declare-fun b!592931 () Bool)

(assert (=> b!592931 (= e!338650 e!338649)))

(declare-fun lt!269238 () (_ BitVec 64))

(declare-fun c!66997 () Bool)

(assert (=> b!592931 (= c!66997 (= lt!269238 (select (arr!17716 a!2986) j!136)))))

(declare-fun b!592932 () Bool)

(declare-fun e!338648 () SeekEntryResult!6163)

(assert (=> b!592932 (= e!338648 (MissingVacant!6163 vacantSpotIndex!68))))

(declare-fun d!86211 () Bool)

(declare-fun lt!269237 () SeekEntryResult!6163)

(assert (=> d!86211 (and (or ((_ is Undefined!6163) lt!269237) (not ((_ is Found!6163) lt!269237)) (and (bvsge (index!26891 lt!269237) #b00000000000000000000000000000000) (bvslt (index!26891 lt!269237) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269237) ((_ is Found!6163) lt!269237) (not ((_ is MissingVacant!6163) lt!269237)) (not (= (index!26893 lt!269237) vacantSpotIndex!68)) (and (bvsge (index!26893 lt!269237) #b00000000000000000000000000000000) (bvslt (index!26893 lt!269237) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269237) (ite ((_ is Found!6163) lt!269237) (= (select (arr!17716 a!2986) (index!26891 lt!269237)) (select (arr!17716 a!2986) j!136)) (and ((_ is MissingVacant!6163) lt!269237) (= (index!26893 lt!269237) vacantSpotIndex!68) (= (select (arr!17716 a!2986) (index!26893 lt!269237)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86211 (= lt!269237 e!338650)))

(declare-fun c!66998 () Bool)

(assert (=> d!86211 (= c!66998 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86211 (= lt!269238 (select (arr!17716 a!2986) index!984))))

(assert (=> d!86211 (validMask!0 mask!3053)))

(assert (=> d!86211 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053) lt!269237)))

(declare-fun b!592933 () Bool)

(assert (=> b!592933 (= e!338648 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592934 () Bool)

(declare-fun c!66996 () Bool)

(assert (=> b!592934 (= c!66996 (= lt!269238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592934 (= e!338649 e!338648)))

(assert (= (and d!86211 c!66998) b!592930))

(assert (= (and d!86211 (not c!66998)) b!592931))

(assert (= (and b!592931 c!66997) b!592929))

(assert (= (and b!592931 (not c!66997)) b!592934))

(assert (= (and b!592934 c!66996) b!592932))

(assert (= (and b!592934 (not c!66996)) b!592933))

(declare-fun m!571001 () Bool)

(assert (=> d!86211 m!571001))

(declare-fun m!571003 () Bool)

(assert (=> d!86211 m!571003))

(assert (=> d!86211 m!570921))

(assert (=> d!86211 m!570933))

(assert (=> b!592933 m!570907))

(assert (=> b!592933 m!570907))

(assert (=> b!592933 m!570891))

(declare-fun m!571005 () Bool)

(assert (=> b!592933 m!571005))

(assert (=> b!592823 d!86211))

(declare-fun b!592943 () Bool)

(declare-fun e!338658 () Bool)

(declare-fun e!338659 () Bool)

(assert (=> b!592943 (= e!338658 e!338659)))

(declare-fun c!67001 () Bool)

(assert (=> b!592943 (= c!67001 (validKeyInArray!0 (select (arr!17716 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86215 () Bool)

(declare-fun res!379676 () Bool)

(assert (=> d!86215 (=> res!379676 e!338658)))

(assert (=> d!86215 (= res!379676 (bvsge #b00000000000000000000000000000000 (size!18080 a!2986)))))

(assert (=> d!86215 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!338658)))

(declare-fun b!592944 () Bool)

(declare-fun e!338657 () Bool)

(declare-fun call!32846 () Bool)

(assert (=> b!592944 (= e!338657 call!32846)))

(declare-fun b!592945 () Bool)

(assert (=> b!592945 (= e!338659 e!338657)))

(declare-fun lt!269245 () (_ BitVec 64))

(assert (=> b!592945 (= lt!269245 (select (arr!17716 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269247 () Unit!18596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36902 (_ BitVec 64) (_ BitVec 32)) Unit!18596)

(assert (=> b!592945 (= lt!269247 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269245 #b00000000000000000000000000000000))))

(assert (=> b!592945 (arrayContainsKey!0 a!2986 lt!269245 #b00000000000000000000000000000000)))

(declare-fun lt!269246 () Unit!18596)

(assert (=> b!592945 (= lt!269246 lt!269247)))

(declare-fun res!379675 () Bool)

(assert (=> b!592945 (= res!379675 (= (seekEntryOrOpen!0 (select (arr!17716 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6163 #b00000000000000000000000000000000)))))

(assert (=> b!592945 (=> (not res!379675) (not e!338657))))

(declare-fun b!592946 () Bool)

(assert (=> b!592946 (= e!338659 call!32846)))

(declare-fun bm!32843 () Bool)

(assert (=> bm!32843 (= call!32846 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!86215 (not res!379676)) b!592943))

(assert (= (and b!592943 c!67001) b!592945))

(assert (= (and b!592943 (not c!67001)) b!592946))

(assert (= (and b!592945 res!379675) b!592944))

(assert (= (or b!592944 b!592946) bm!32843))

(declare-fun m!571007 () Bool)

(assert (=> b!592943 m!571007))

(assert (=> b!592943 m!571007))

(declare-fun m!571009 () Bool)

(assert (=> b!592943 m!571009))

(assert (=> b!592945 m!571007))

(declare-fun m!571011 () Bool)

(assert (=> b!592945 m!571011))

(declare-fun m!571013 () Bool)

(assert (=> b!592945 m!571013))

(assert (=> b!592945 m!571007))

(declare-fun m!571015 () Bool)

(assert (=> b!592945 m!571015))

(declare-fun m!571017 () Bool)

(assert (=> bm!32843 m!571017))

(assert (=> b!592833 d!86215))

(declare-fun d!86223 () Bool)

(declare-fun res!379681 () Bool)

(declare-fun e!338664 () Bool)

(assert (=> d!86223 (=> res!379681 e!338664)))

(assert (=> d!86223 (= res!379681 (= (select (arr!17716 lt!269190) j!136) (select (arr!17716 a!2986) j!136)))))

(assert (=> d!86223 (= (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) j!136) e!338664)))

(declare-fun b!592951 () Bool)

(declare-fun e!338665 () Bool)

(assert (=> b!592951 (= e!338664 e!338665)))

(declare-fun res!379682 () Bool)

(assert (=> b!592951 (=> (not res!379682) (not e!338665))))

(assert (=> b!592951 (= res!379682 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18080 lt!269190)))))

(declare-fun b!592952 () Bool)

(assert (=> b!592952 (= e!338665 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86223 (not res!379681)) b!592951))

(assert (= (and b!592951 res!379682) b!592952))

(declare-fun m!571019 () Bool)

(assert (=> d!86223 m!571019))

(assert (=> b!592952 m!570891))

(declare-fun m!571021 () Bool)

(assert (=> b!592952 m!571021))

(assert (=> b!592835 d!86223))

(declare-fun d!86225 () Bool)

(declare-fun e!338686 () Bool)

(assert (=> d!86225 e!338686))

(declare-fun res!379685 () Bool)

(assert (=> d!86225 (=> (not res!379685) (not e!338686))))

(assert (=> d!86225 (= res!379685 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18080 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18080 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18080 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18080 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18080 a!2986))))))

(declare-fun lt!269265 () Unit!18596)

(declare-fun choose!9 (array!36902 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18596)

(assert (=> d!86225 (= lt!269265 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86225 (validMask!0 mask!3053)))

(assert (=> d!86225 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 mask!3053) lt!269265)))

(declare-fun b!592991 () Bool)

(assert (=> b!592991 (= e!338686 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 (select (store (arr!17716 a!2986) i!1108 k0!1786) j!136) (array!36903 (store (arr!17716 a!2986) i!1108 k0!1786) (size!18080 a!2986)) mask!3053)))))

(assert (= (and d!86225 res!379685) b!592991))

(declare-fun m!571047 () Bool)

(assert (=> d!86225 m!571047))

(assert (=> d!86225 m!570933))

(assert (=> b!592991 m!570909))

(declare-fun m!571049 () Bool)

(assert (=> b!592991 m!571049))

(assert (=> b!592991 m!570891))

(assert (=> b!592991 m!570917))

(assert (=> b!592991 m!570891))

(assert (=> b!592991 m!570893))

(assert (=> b!592991 m!570909))

(assert (=> b!592824 d!86225))

(declare-fun b!592992 () Bool)

(declare-fun e!338688 () SeekEntryResult!6163)

(assert (=> b!592992 (= e!338688 (Found!6163 lt!269186))))

(declare-fun b!592993 () Bool)

(declare-fun e!338689 () SeekEntryResult!6163)

(assert (=> b!592993 (= e!338689 Undefined!6163)))

(declare-fun b!592994 () Bool)

(assert (=> b!592994 (= e!338689 e!338688)))

(declare-fun lt!269267 () (_ BitVec 64))

(declare-fun c!67021 () Bool)

(assert (=> b!592994 (= c!67021 (= lt!269267 (select (arr!17716 a!2986) j!136)))))

(declare-fun b!592995 () Bool)

(declare-fun e!338687 () SeekEntryResult!6163)

(assert (=> b!592995 (= e!338687 (MissingVacant!6163 vacantSpotIndex!68))))

(declare-fun lt!269266 () SeekEntryResult!6163)

(declare-fun d!86235 () Bool)

(assert (=> d!86235 (and (or ((_ is Undefined!6163) lt!269266) (not ((_ is Found!6163) lt!269266)) (and (bvsge (index!26891 lt!269266) #b00000000000000000000000000000000) (bvslt (index!26891 lt!269266) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269266) ((_ is Found!6163) lt!269266) (not ((_ is MissingVacant!6163) lt!269266)) (not (= (index!26893 lt!269266) vacantSpotIndex!68)) (and (bvsge (index!26893 lt!269266) #b00000000000000000000000000000000) (bvslt (index!26893 lt!269266) (size!18080 a!2986)))) (or ((_ is Undefined!6163) lt!269266) (ite ((_ is Found!6163) lt!269266) (= (select (arr!17716 a!2986) (index!26891 lt!269266)) (select (arr!17716 a!2986) j!136)) (and ((_ is MissingVacant!6163) lt!269266) (= (index!26893 lt!269266) vacantSpotIndex!68) (= (select (arr!17716 a!2986) (index!26893 lt!269266)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86235 (= lt!269266 e!338689)))

(declare-fun c!67022 () Bool)

(assert (=> d!86235 (= c!67022 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86235 (= lt!269267 (select (arr!17716 a!2986) lt!269186))))

(assert (=> d!86235 (validMask!0 mask!3053)))

(assert (=> d!86235 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053) lt!269266)))

(declare-fun b!592996 () Bool)

(assert (=> b!592996 (= e!338687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269186 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17716 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592997 () Bool)

(declare-fun c!67020 () Bool)

(assert (=> b!592997 (= c!67020 (= lt!269267 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592997 (= e!338688 e!338687)))

(assert (= (and d!86235 c!67022) b!592993))

(assert (= (and d!86235 (not c!67022)) b!592994))

(assert (= (and b!592994 c!67021) b!592992))

(assert (= (and b!592994 (not c!67021)) b!592997))

(assert (= (and b!592997 c!67020) b!592995))

(assert (= (and b!592997 (not c!67020)) b!592996))

(declare-fun m!571051 () Bool)

(assert (=> d!86235 m!571051))

(declare-fun m!571053 () Bool)

(assert (=> d!86235 m!571053))

(declare-fun m!571055 () Bool)

(assert (=> d!86235 m!571055))

(assert (=> d!86235 m!570933))

(declare-fun m!571057 () Bool)

(assert (=> b!592996 m!571057))

(assert (=> b!592996 m!571057))

(assert (=> b!592996 m!570891))

(declare-fun m!571059 () Bool)

(assert (=> b!592996 m!571059))

(assert (=> b!592824 d!86235))

(declare-fun d!86237 () Bool)

(declare-fun lt!269272 () (_ BitVec 32))

(assert (=> d!86237 (and (bvsge lt!269272 #b00000000000000000000000000000000) (bvslt lt!269272 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86237 (= lt!269272 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86237 (validMask!0 mask!3053)))

(assert (=> d!86237 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269272)))

(declare-fun bs!18296 () Bool)

(assert (= bs!18296 d!86237))

(declare-fun m!571061 () Bool)

(assert (=> bs!18296 m!571061))

(assert (=> bs!18296 m!570933))

(assert (=> b!592824 d!86237))

(declare-fun b!593000 () Bool)

(declare-fun e!338693 () SeekEntryResult!6163)

(assert (=> b!593000 (= e!338693 (Found!6163 lt!269186))))

(declare-fun b!593001 () Bool)

(declare-fun e!338694 () SeekEntryResult!6163)

(assert (=> b!593001 (= e!338694 Undefined!6163)))

(declare-fun b!593002 () Bool)

(assert (=> b!593002 (= e!338694 e!338693)))

(declare-fun c!67024 () Bool)

(declare-fun lt!269274 () (_ BitVec 64))

(assert (=> b!593002 (= c!67024 (= lt!269274 lt!269189))))

(declare-fun b!593003 () Bool)

(declare-fun e!338692 () SeekEntryResult!6163)

(assert (=> b!593003 (= e!338692 (MissingVacant!6163 vacantSpotIndex!68))))

(declare-fun d!86239 () Bool)

(declare-fun lt!269273 () SeekEntryResult!6163)

(assert (=> d!86239 (and (or ((_ is Undefined!6163) lt!269273) (not ((_ is Found!6163) lt!269273)) (and (bvsge (index!26891 lt!269273) #b00000000000000000000000000000000) (bvslt (index!26891 lt!269273) (size!18080 lt!269190)))) (or ((_ is Undefined!6163) lt!269273) ((_ is Found!6163) lt!269273) (not ((_ is MissingVacant!6163) lt!269273)) (not (= (index!26893 lt!269273) vacantSpotIndex!68)) (and (bvsge (index!26893 lt!269273) #b00000000000000000000000000000000) (bvslt (index!26893 lt!269273) (size!18080 lt!269190)))) (or ((_ is Undefined!6163) lt!269273) (ite ((_ is Found!6163) lt!269273) (= (select (arr!17716 lt!269190) (index!26891 lt!269273)) lt!269189) (and ((_ is MissingVacant!6163) lt!269273) (= (index!26893 lt!269273) vacantSpotIndex!68) (= (select (arr!17716 lt!269190) (index!26893 lt!269273)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86239 (= lt!269273 e!338694)))

(declare-fun c!67025 () Bool)

(assert (=> d!86239 (= c!67025 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86239 (= lt!269274 (select (arr!17716 lt!269190) lt!269186))))

(assert (=> d!86239 (validMask!0 mask!3053)))

(assert (=> d!86239 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269186 vacantSpotIndex!68 lt!269189 lt!269190 mask!3053) lt!269273)))

(declare-fun b!593004 () Bool)

(assert (=> b!593004 (= e!338692 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269186 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269189 lt!269190 mask!3053))))

(declare-fun b!593005 () Bool)

(declare-fun c!67023 () Bool)

(assert (=> b!593005 (= c!67023 (= lt!269274 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593005 (= e!338693 e!338692)))

(assert (= (and d!86239 c!67025) b!593001))

(assert (= (and d!86239 (not c!67025)) b!593002))

(assert (= (and b!593002 c!67024) b!593000))

(assert (= (and b!593002 (not c!67024)) b!593005))

(assert (= (and b!593005 c!67023) b!593003))

(assert (= (and b!593005 (not c!67023)) b!593004))

(declare-fun m!571063 () Bool)

(assert (=> d!86239 m!571063))

(declare-fun m!571065 () Bool)

(assert (=> d!86239 m!571065))

(declare-fun m!571067 () Bool)

(assert (=> d!86239 m!571067))

(assert (=> d!86239 m!570933))

(assert (=> b!593004 m!571057))

(assert (=> b!593004 m!571057))

(declare-fun m!571069 () Bool)

(assert (=> b!593004 m!571069))

(assert (=> b!592824 d!86239))

(declare-fun b!593007 () Bool)

(declare-fun e!338697 () SeekEntryResult!6163)

(assert (=> b!593007 (= e!338697 (Found!6163 index!984))))

(declare-fun b!593008 () Bool)

(declare-fun e!338698 () SeekEntryResult!6163)

(assert (=> b!593008 (= e!338698 Undefined!6163)))

(declare-fun b!593009 () Bool)

(assert (=> b!593009 (= e!338698 e!338697)))

(declare-fun c!67027 () Bool)

(declare-fun lt!269277 () (_ BitVec 64))

(assert (=> b!593009 (= c!67027 (= lt!269277 lt!269189))))

(declare-fun b!593010 () Bool)

(declare-fun e!338696 () SeekEntryResult!6163)

(assert (=> b!593010 (= e!338696 (MissingVacant!6163 vacantSpotIndex!68))))

(declare-fun lt!269276 () SeekEntryResult!6163)

(declare-fun d!86241 () Bool)

(assert (=> d!86241 (and (or ((_ is Undefined!6163) lt!269276) (not ((_ is Found!6163) lt!269276)) (and (bvsge (index!26891 lt!269276) #b00000000000000000000000000000000) (bvslt (index!26891 lt!269276) (size!18080 lt!269190)))) (or ((_ is Undefined!6163) lt!269276) ((_ is Found!6163) lt!269276) (not ((_ is MissingVacant!6163) lt!269276)) (not (= (index!26893 lt!269276) vacantSpotIndex!68)) (and (bvsge (index!26893 lt!269276) #b00000000000000000000000000000000) (bvslt (index!26893 lt!269276) (size!18080 lt!269190)))) (or ((_ is Undefined!6163) lt!269276) (ite ((_ is Found!6163) lt!269276) (= (select (arr!17716 lt!269190) (index!26891 lt!269276)) lt!269189) (and ((_ is MissingVacant!6163) lt!269276) (= (index!26893 lt!269276) vacantSpotIndex!68) (= (select (arr!17716 lt!269190) (index!26893 lt!269276)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86241 (= lt!269276 e!338698)))

(declare-fun c!67028 () Bool)

(assert (=> d!86241 (= c!67028 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86241 (= lt!269277 (select (arr!17716 lt!269190) index!984))))

(assert (=> d!86241 (validMask!0 mask!3053)))

(assert (=> d!86241 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269189 lt!269190 mask!3053) lt!269276)))

(declare-fun b!593011 () Bool)

(assert (=> b!593011 (= e!338696 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269189 lt!269190 mask!3053))))

(declare-fun b!593012 () Bool)

(declare-fun c!67026 () Bool)

(assert (=> b!593012 (= c!67026 (= lt!269277 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593012 (= e!338697 e!338696)))

(assert (= (and d!86241 c!67028) b!593008))

(assert (= (and d!86241 (not c!67028)) b!593009))

(assert (= (and b!593009 c!67027) b!593007))

(assert (= (and b!593009 (not c!67027)) b!593012))

(assert (= (and b!593012 c!67026) b!593010))

(assert (= (and b!593012 (not c!67026)) b!593011))

(declare-fun m!571075 () Bool)

(assert (=> d!86241 m!571075))

(declare-fun m!571077 () Bool)

(assert (=> d!86241 m!571077))

(declare-fun m!571079 () Bool)

(assert (=> d!86241 m!571079))

(assert (=> d!86241 m!570933))

(assert (=> b!593011 m!570907))

(assert (=> b!593011 m!570907))

(declare-fun m!571081 () Bool)

(assert (=> b!593011 m!571081))

(assert (=> b!592824 d!86241))

(declare-fun d!86245 () Bool)

(declare-fun res!379689 () Bool)

(declare-fun e!338699 () Bool)

(assert (=> d!86245 (=> res!379689 e!338699)))

(assert (=> d!86245 (= res!379689 (= (select (arr!17716 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86245 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!338699)))

(declare-fun b!593013 () Bool)

(declare-fun e!338700 () Bool)

(assert (=> b!593013 (= e!338699 e!338700)))

(declare-fun res!379690 () Bool)

(assert (=> b!593013 (=> (not res!379690) (not e!338700))))

(assert (=> b!593013 (= res!379690 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18080 a!2986)))))

(declare-fun b!593014 () Bool)

(assert (=> b!593014 (= e!338700 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86245 (not res!379689)) b!593013))

(assert (= (and b!593013 res!379690) b!593014))

(assert (=> d!86245 m!571007))

(declare-fun m!571083 () Bool)

(assert (=> b!593014 m!571083))

(assert (=> b!592836 d!86245))

(declare-fun d!86247 () Bool)

(declare-fun res!379691 () Bool)

(declare-fun e!338701 () Bool)

(assert (=> d!86247 (=> res!379691 e!338701)))

(assert (=> d!86247 (= res!379691 (= (select (arr!17716 lt!269190) index!984) (select (arr!17716 a!2986) j!136)))))

(assert (=> d!86247 (= (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) index!984) e!338701)))

(declare-fun b!593015 () Bool)

(declare-fun e!338702 () Bool)

(assert (=> b!593015 (= e!338701 e!338702)))

(declare-fun res!379692 () Bool)

(assert (=> b!593015 (=> (not res!379692) (not e!338702))))

(assert (=> b!593015 (= res!379692 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18080 lt!269190)))))

(declare-fun b!593016 () Bool)

(assert (=> b!593016 (= e!338702 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86247 (not res!379691)) b!593015))

(assert (= (and b!593015 res!379692) b!593016))

(assert (=> d!86247 m!571079))

(assert (=> b!593016 m!570891))

(declare-fun m!571085 () Bool)

(assert (=> b!593016 m!571085))

(assert (=> b!592825 d!86247))

(declare-fun d!86249 () Bool)

(declare-fun res!379693 () Bool)

(declare-fun e!338709 () Bool)

(assert (=> d!86249 (=> res!379693 e!338709)))

(assert (=> d!86249 (= res!379693 (= (select (arr!17716 lt!269190) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17716 a!2986) j!136)))))

(assert (=> d!86249 (= (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!338709)))

(declare-fun b!593029 () Bool)

(declare-fun e!338710 () Bool)

(assert (=> b!593029 (= e!338709 e!338710)))

(declare-fun res!379694 () Bool)

(assert (=> b!593029 (=> (not res!379694) (not e!338710))))

(assert (=> b!593029 (= res!379694 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18080 lt!269190)))))

(declare-fun b!593030 () Bool)

(assert (=> b!593030 (= e!338710 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86249 (not res!379693)) b!593029))

(assert (= (and b!593029 res!379694) b!593030))

(declare-fun m!571087 () Bool)

(assert (=> d!86249 m!571087))

(assert (=> b!593030 m!570891))

(declare-fun m!571089 () Bool)

(assert (=> b!593030 m!571089))

(assert (=> b!592828 d!86249))

(declare-fun d!86251 () Bool)

(assert (=> d!86251 (arrayContainsKey!0 lt!269190 (select (arr!17716 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269289 () Unit!18596)

(declare-fun choose!114 (array!36902 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18596)

(assert (=> d!86251 (= lt!269289 (choose!114 lt!269190 (select (arr!17716 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86251 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86251 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269190 (select (arr!17716 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!269289)))

(declare-fun bs!18298 () Bool)

(assert (= bs!18298 d!86251))

(assert (=> bs!18298 m!570891))

(assert (=> bs!18298 m!570929))

(assert (=> bs!18298 m!570891))

(declare-fun m!571101 () Bool)

(assert (=> bs!18298 m!571101))

(assert (=> b!592828 d!86251))

(declare-fun d!86257 () Bool)

(assert (=> d!86257 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!592838 d!86257))

(declare-fun b!593070 () Bool)

(declare-fun e!338737 () Bool)

(declare-fun call!32849 () Bool)

(assert (=> b!593070 (= e!338737 call!32849)))

(declare-fun b!593072 () Bool)

(assert (=> b!593072 (= e!338737 call!32849)))

(declare-fun b!593073 () Bool)

(declare-fun e!338739 () Bool)

(declare-fun e!338738 () Bool)

(assert (=> b!593073 (= e!338739 e!338738)))

(declare-fun res!379709 () Bool)

(assert (=> b!593073 (=> (not res!379709) (not e!338738))))

(declare-fun e!338736 () Bool)

(assert (=> b!593073 (= res!379709 (not e!338736))))

(declare-fun res!379710 () Bool)

(assert (=> b!593073 (=> (not res!379710) (not e!338736))))

(assert (=> b!593073 (= res!379710 (validKeyInArray!0 (select (arr!17716 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593074 () Bool)

(assert (=> b!593074 (= e!338738 e!338737)))

(declare-fun c!67046 () Bool)

(assert (=> b!593074 (= c!67046 (validKeyInArray!0 (select (arr!17716 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86259 () Bool)

(declare-fun res!379711 () Bool)

(assert (=> d!86259 (=> res!379711 e!338739)))

(assert (=> d!86259 (= res!379711 (bvsge #b00000000000000000000000000000000 (size!18080 a!2986)))))

(assert (=> d!86259 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11807) e!338739)))

(declare-fun bm!32846 () Bool)

(assert (=> bm!32846 (= call!32849 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67046 (Cons!11806 (select (arr!17716 a!2986) #b00000000000000000000000000000000) Nil!11807) Nil!11807)))))

(declare-fun b!593075 () Bool)

(declare-fun contains!2916 (List!11810 (_ BitVec 64)) Bool)

(assert (=> b!593075 (= e!338736 (contains!2916 Nil!11807 (select (arr!17716 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86259 (not res!379711)) b!593073))

(assert (= (and b!593073 res!379710) b!593075))

(assert (= (and b!593073 res!379709) b!593074))

(assert (= (and b!593074 c!67046) b!593070))

(assert (= (and b!593074 (not c!67046)) b!593072))

(assert (= (or b!593070 b!593072) bm!32846))

(assert (=> b!593073 m!571007))

(assert (=> b!593073 m!571007))

(assert (=> b!593073 m!571009))

(assert (=> b!593074 m!571007))

(assert (=> b!593074 m!571007))

(assert (=> b!593074 m!571009))

(assert (=> bm!32846 m!571007))

(declare-fun m!571121 () Bool)

(assert (=> bm!32846 m!571121))

(assert (=> b!593075 m!571007))

(assert (=> b!593075 m!571007))

(declare-fun m!571123 () Bool)

(assert (=> b!593075 m!571123))

(assert (=> b!592840 d!86259))

(check-sat (not d!86239) (not d!86211) (not b!592943) (not d!86235) (not b!593011) (not bm!32843) (not bm!32846) (not b!593075) (not b!592945) (not d!86203) (not b!593074) (not b!593073) (not d!86237) (not b!593016) (not b!593004) (not b!592915) (not b!592933) (not d!86241) (not d!86225) (not d!86251) (not b!593030) (not b!592991) (not b!593014) (not b!592952) (not b!592996))
(check-sat)
