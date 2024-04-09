; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55120 () Bool)

(assert start!55120)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37156 0))(
  ( (array!37157 (arr!17831 (Array (_ BitVec 32) (_ BitVec 64))) (size!18195 (_ BitVec 32))) )
))
(declare-fun lt!274692 () array!37156)

(declare-fun b!602830 () Bool)

(declare-fun e!344826 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37156)

(declare-fun arrayContainsKey!0 (array!37156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602830 (= e!344826 (arrayContainsKey!0 lt!274692 (select (arr!17831 a!2986) j!136) index!984))))

(declare-fun b!602831 () Bool)

(declare-datatypes ((Unit!19096 0))(
  ( (Unit!19097) )
))
(declare-fun e!344834 () Unit!19096)

(declare-fun Unit!19098 () Unit!19096)

(assert (=> b!602831 (= e!344834 Unit!19098)))

(declare-fun b!602832 () Bool)

(declare-fun res!387170 () Bool)

(declare-fun e!344832 () Bool)

(assert (=> b!602832 (=> (not res!387170) (not e!344832))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602832 (= res!387170 (and (= (size!18195 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18195 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18195 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602833 () Bool)

(declare-fun Unit!19099 () Unit!19096)

(assert (=> b!602833 (= e!344834 Unit!19099)))

(assert (=> b!602833 false))

(declare-fun b!602834 () Bool)

(declare-fun res!387185 () Bool)

(assert (=> b!602834 (=> (not res!387185) (not e!344832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602834 (= res!387185 (validKeyInArray!0 (select (arr!17831 a!2986) j!136)))))

(declare-fun b!602835 () Bool)

(declare-fun e!344835 () Bool)

(declare-fun e!344837 () Bool)

(assert (=> b!602835 (= e!344835 (not e!344837))))

(declare-fun res!387181 () Bool)

(assert (=> b!602835 (=> res!387181 e!344837)))

(declare-datatypes ((SeekEntryResult!6278 0))(
  ( (MissingZero!6278 (index!27374 (_ BitVec 32))) (Found!6278 (index!27375 (_ BitVec 32))) (Intermediate!6278 (undefined!7090 Bool) (index!27376 (_ BitVec 32)) (x!56200 (_ BitVec 32))) (Undefined!6278) (MissingVacant!6278 (index!27377 (_ BitVec 32))) )
))
(declare-fun lt!274698 () SeekEntryResult!6278)

(assert (=> b!602835 (= res!387181 (not (= lt!274698 (Found!6278 index!984))))))

(declare-fun lt!274693 () Unit!19096)

(assert (=> b!602835 (= lt!274693 e!344834)))

(declare-fun c!68198 () Bool)

(assert (=> b!602835 (= c!68198 (= lt!274698 Undefined!6278))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!274699 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37156 (_ BitVec 32)) SeekEntryResult!6278)

(assert (=> b!602835 (= lt!274698 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274699 lt!274692 mask!3053))))

(declare-fun e!344829 () Bool)

(assert (=> b!602835 e!344829))

(declare-fun res!387177 () Bool)

(assert (=> b!602835 (=> (not res!387177) (not e!344829))))

(declare-fun lt!274687 () SeekEntryResult!6278)

(declare-fun lt!274694 () (_ BitVec 32))

(assert (=> b!602835 (= res!387177 (= lt!274687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274694 vacantSpotIndex!68 lt!274699 lt!274692 mask!3053)))))

(assert (=> b!602835 (= lt!274687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274694 vacantSpotIndex!68 (select (arr!17831 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!602835 (= lt!274699 (select (store (arr!17831 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274688 () Unit!19096)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37156 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19096)

(assert (=> b!602835 (= lt!274688 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274694 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602835 (= lt!274694 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602836 () Bool)

(declare-fun e!344839 () Bool)

(assert (=> b!602836 (= e!344832 e!344839)))

(declare-fun res!387172 () Bool)

(assert (=> b!602836 (=> (not res!387172) (not e!344839))))

(declare-fun lt!274695 () SeekEntryResult!6278)

(assert (=> b!602836 (= res!387172 (or (= lt!274695 (MissingZero!6278 i!1108)) (= lt!274695 (MissingVacant!6278 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37156 (_ BitVec 32)) SeekEntryResult!6278)

(assert (=> b!602836 (= lt!274695 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!602837 () Bool)

(declare-fun e!344825 () Bool)

(declare-fun e!344838 () Bool)

(assert (=> b!602837 (= e!344825 e!344838)))

(declare-fun res!387186 () Bool)

(assert (=> b!602837 (=> res!387186 e!344838)))

(declare-fun lt!274700 () (_ BitVec 64))

(assert (=> b!602837 (= res!387186 (or (not (= (select (arr!17831 a!2986) j!136) lt!274699)) (not (= (select (arr!17831 a!2986) j!136) lt!274700)) (bvsge j!136 index!984)))))

(declare-fun b!602839 () Bool)

(declare-fun e!344831 () Bool)

(declare-fun e!344833 () Bool)

(assert (=> b!602839 (= e!344831 e!344833)))

(declare-fun res!387184 () Bool)

(assert (=> b!602839 (=> res!387184 e!344833)))

(assert (=> b!602839 (= res!387184 (bvsge index!984 j!136))))

(declare-fun lt!274689 () Unit!19096)

(declare-fun e!344827 () Unit!19096)

(assert (=> b!602839 (= lt!274689 e!344827)))

(declare-fun c!68197 () Bool)

(assert (=> b!602839 (= c!68197 (bvslt j!136 index!984))))

(declare-fun b!602840 () Bool)

(declare-fun e!344836 () Bool)

(assert (=> b!602840 (= e!344839 e!344836)))

(declare-fun res!387182 () Bool)

(assert (=> b!602840 (=> (not res!387182) (not e!344836))))

(assert (=> b!602840 (= res!387182 (= (select (store (arr!17831 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602840 (= lt!274692 (array!37157 (store (arr!17831 a!2986) i!1108 k!1786) (size!18195 a!2986)))))

(declare-fun b!602841 () Bool)

(assert (=> b!602841 (= e!344833 true)))

(declare-fun e!344830 () Bool)

(assert (=> b!602841 e!344830))

(declare-fun res!387188 () Bool)

(assert (=> b!602841 (=> (not res!387188) (not e!344830))))

(assert (=> b!602841 (= res!387188 (arrayContainsKey!0 lt!274692 (select (arr!17831 a!2986) j!136) j!136))))

(declare-fun b!602842 () Bool)

(declare-fun res!387183 () Bool)

(assert (=> b!602842 (=> (not res!387183) (not e!344839))))

(assert (=> b!602842 (= res!387183 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17831 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602843 () Bool)

(declare-fun Unit!19100 () Unit!19096)

(assert (=> b!602843 (= e!344827 Unit!19100)))

(declare-fun lt!274691 () Unit!19096)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37156 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19096)

(assert (=> b!602843 (= lt!274691 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274692 (select (arr!17831 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602843 (arrayContainsKey!0 lt!274692 (select (arr!17831 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274697 () Unit!19096)

(declare-datatypes ((List!11925 0))(
  ( (Nil!11922) (Cons!11921 (h!12966 (_ BitVec 64)) (t!18161 List!11925)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37156 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11925) Unit!19096)

(assert (=> b!602843 (= lt!274697 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11922))))

(declare-fun arrayNoDuplicates!0 (array!37156 (_ BitVec 32) List!11925) Bool)

(assert (=> b!602843 (arrayNoDuplicates!0 lt!274692 #b00000000000000000000000000000000 Nil!11922)))

(declare-fun lt!274696 () Unit!19096)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37156 (_ BitVec 32) (_ BitVec 32)) Unit!19096)

(assert (=> b!602843 (= lt!274696 (lemmaNoDuplicateFromThenFromBigger!0 lt!274692 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602843 (arrayNoDuplicates!0 lt!274692 j!136 Nil!11922)))

(declare-fun lt!274690 () Unit!19096)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37156 (_ BitVec 64) (_ BitVec 32) List!11925) Unit!19096)

(assert (=> b!602843 (= lt!274690 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274692 (select (arr!17831 a!2986) j!136) j!136 Nil!11922))))

(assert (=> b!602843 false))

(declare-fun b!602844 () Bool)

(assert (=> b!602844 (= e!344830 (arrayContainsKey!0 lt!274692 (select (arr!17831 a!2986) j!136) index!984))))

(declare-fun b!602845 () Bool)

(declare-fun lt!274701 () SeekEntryResult!6278)

(assert (=> b!602845 (= e!344829 (= lt!274701 lt!274687))))

(declare-fun b!602846 () Bool)

(declare-fun res!387175 () Bool)

(assert (=> b!602846 (=> (not res!387175) (not e!344839))))

(assert (=> b!602846 (= res!387175 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11922))))

(declare-fun b!602847 () Bool)

(declare-fun res!387179 () Bool)

(assert (=> b!602847 (=> (not res!387179) (not e!344839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37156 (_ BitVec 32)) Bool)

(assert (=> b!602847 (= res!387179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602848 () Bool)

(assert (=> b!602848 (= e!344836 e!344835)))

(declare-fun res!387178 () Bool)

(assert (=> b!602848 (=> (not res!387178) (not e!344835))))

(assert (=> b!602848 (= res!387178 (and (= lt!274701 (Found!6278 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17831 a!2986) index!984) (select (arr!17831 a!2986) j!136))) (not (= (select (arr!17831 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!602848 (= lt!274701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17831 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602849 () Bool)

(assert (=> b!602849 (= e!344838 e!344826)))

(declare-fun res!387180 () Bool)

(assert (=> b!602849 (=> (not res!387180) (not e!344826))))

(assert (=> b!602849 (= res!387180 (arrayContainsKey!0 lt!274692 (select (arr!17831 a!2986) j!136) j!136))))

(declare-fun b!602850 () Bool)

(declare-fun res!387171 () Bool)

(assert (=> b!602850 (=> (not res!387171) (not e!344832))))

(assert (=> b!602850 (= res!387171 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602851 () Bool)

(assert (=> b!602851 (= e!344837 e!344831)))

(declare-fun res!387176 () Bool)

(assert (=> b!602851 (=> res!387176 e!344831)))

(assert (=> b!602851 (= res!387176 (or (not (= (select (arr!17831 a!2986) j!136) lt!274699)) (not (= (select (arr!17831 a!2986) j!136) lt!274700))))))

(assert (=> b!602851 e!344825))

(declare-fun res!387174 () Bool)

(assert (=> b!602851 (=> (not res!387174) (not e!344825))))

(assert (=> b!602851 (= res!387174 (= lt!274700 (select (arr!17831 a!2986) j!136)))))

(assert (=> b!602851 (= lt!274700 (select (store (arr!17831 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!602852 () Bool)

(declare-fun res!387173 () Bool)

(assert (=> b!602852 (=> (not res!387173) (not e!344832))))

(assert (=> b!602852 (= res!387173 (validKeyInArray!0 k!1786))))

(declare-fun b!602838 () Bool)

(declare-fun Unit!19101 () Unit!19096)

(assert (=> b!602838 (= e!344827 Unit!19101)))

(declare-fun res!387187 () Bool)

(assert (=> start!55120 (=> (not res!387187) (not e!344832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55120 (= res!387187 (validMask!0 mask!3053))))

(assert (=> start!55120 e!344832))

(assert (=> start!55120 true))

(declare-fun array_inv!13605 (array!37156) Bool)

(assert (=> start!55120 (array_inv!13605 a!2986)))

(assert (= (and start!55120 res!387187) b!602832))

(assert (= (and b!602832 res!387170) b!602834))

(assert (= (and b!602834 res!387185) b!602852))

(assert (= (and b!602852 res!387173) b!602850))

(assert (= (and b!602850 res!387171) b!602836))

(assert (= (and b!602836 res!387172) b!602847))

(assert (= (and b!602847 res!387179) b!602846))

(assert (= (and b!602846 res!387175) b!602842))

(assert (= (and b!602842 res!387183) b!602840))

(assert (= (and b!602840 res!387182) b!602848))

(assert (= (and b!602848 res!387178) b!602835))

(assert (= (and b!602835 res!387177) b!602845))

(assert (= (and b!602835 c!68198) b!602833))

(assert (= (and b!602835 (not c!68198)) b!602831))

(assert (= (and b!602835 (not res!387181)) b!602851))

(assert (= (and b!602851 res!387174) b!602837))

(assert (= (and b!602837 (not res!387186)) b!602849))

(assert (= (and b!602849 res!387180) b!602830))

(assert (= (and b!602851 (not res!387176)) b!602839))

(assert (= (and b!602839 c!68197) b!602843))

(assert (= (and b!602839 (not c!68197)) b!602838))

(assert (= (and b!602839 (not res!387184)) b!602841))

(assert (= (and b!602841 res!387188) b!602844))

(declare-fun m!579951 () Bool)

(assert (=> b!602840 m!579951))

(declare-fun m!579953 () Bool)

(assert (=> b!602840 m!579953))

(declare-fun m!579955 () Bool)

(assert (=> start!55120 m!579955))

(declare-fun m!579957 () Bool)

(assert (=> start!55120 m!579957))

(declare-fun m!579959 () Bool)

(assert (=> b!602835 m!579959))

(declare-fun m!579961 () Bool)

(assert (=> b!602835 m!579961))

(declare-fun m!579963 () Bool)

(assert (=> b!602835 m!579963))

(assert (=> b!602835 m!579951))

(declare-fun m!579965 () Bool)

(assert (=> b!602835 m!579965))

(declare-fun m!579967 () Bool)

(assert (=> b!602835 m!579967))

(declare-fun m!579969 () Bool)

(assert (=> b!602835 m!579969))

(assert (=> b!602835 m!579961))

(declare-fun m!579971 () Bool)

(assert (=> b!602835 m!579971))

(assert (=> b!602841 m!579961))

(assert (=> b!602841 m!579961))

(declare-fun m!579973 () Bool)

(assert (=> b!602841 m!579973))

(declare-fun m!579975 () Bool)

(assert (=> b!602852 m!579975))

(declare-fun m!579977 () Bool)

(assert (=> b!602836 m!579977))

(declare-fun m!579979 () Bool)

(assert (=> b!602850 m!579979))

(assert (=> b!602843 m!579961))

(declare-fun m!579981 () Bool)

(assert (=> b!602843 m!579981))

(assert (=> b!602843 m!579961))

(declare-fun m!579983 () Bool)

(assert (=> b!602843 m!579983))

(assert (=> b!602843 m!579961))

(declare-fun m!579985 () Bool)

(assert (=> b!602843 m!579985))

(declare-fun m!579987 () Bool)

(assert (=> b!602843 m!579987))

(assert (=> b!602843 m!579961))

(declare-fun m!579989 () Bool)

(assert (=> b!602843 m!579989))

(declare-fun m!579991 () Bool)

(assert (=> b!602843 m!579991))

(declare-fun m!579993 () Bool)

(assert (=> b!602843 m!579993))

(assert (=> b!602830 m!579961))

(assert (=> b!602830 m!579961))

(declare-fun m!579995 () Bool)

(assert (=> b!602830 m!579995))

(assert (=> b!602844 m!579961))

(assert (=> b!602844 m!579961))

(assert (=> b!602844 m!579995))

(assert (=> b!602837 m!579961))

(declare-fun m!579997 () Bool)

(assert (=> b!602847 m!579997))

(assert (=> b!602834 m!579961))

(assert (=> b!602834 m!579961))

(declare-fun m!579999 () Bool)

(assert (=> b!602834 m!579999))

(declare-fun m!580001 () Bool)

(assert (=> b!602846 m!580001))

(declare-fun m!580003 () Bool)

(assert (=> b!602842 m!580003))

(declare-fun m!580005 () Bool)

(assert (=> b!602848 m!580005))

(assert (=> b!602848 m!579961))

(assert (=> b!602848 m!579961))

(declare-fun m!580007 () Bool)

(assert (=> b!602848 m!580007))

(assert (=> b!602851 m!579961))

(assert (=> b!602851 m!579951))

(declare-fun m!580009 () Bool)

(assert (=> b!602851 m!580009))

(assert (=> b!602849 m!579961))

(assert (=> b!602849 m!579961))

(assert (=> b!602849 m!579973))

(push 1)

