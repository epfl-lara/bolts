; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55122 () Bool)

(assert start!55122)

(declare-fun b!602899 () Bool)

(declare-fun e!344876 () Bool)

(declare-fun e!344873 () Bool)

(assert (=> b!602899 (= e!344876 (not e!344873))))

(declare-fun res!387243 () Bool)

(assert (=> b!602899 (=> res!387243 e!344873)))

(declare-datatypes ((SeekEntryResult!6279 0))(
  ( (MissingZero!6279 (index!27378 (_ BitVec 32))) (Found!6279 (index!27379 (_ BitVec 32))) (Intermediate!6279 (undefined!7091 Bool) (index!27380 (_ BitVec 32)) (x!56209 (_ BitVec 32))) (Undefined!6279) (MissingVacant!6279 (index!27381 (_ BitVec 32))) )
))
(declare-fun lt!274736 () SeekEntryResult!6279)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602899 (= res!387243 (not (= lt!274736 (Found!6279 index!984))))))

(declare-datatypes ((Unit!19102 0))(
  ( (Unit!19103) )
))
(declare-fun lt!274739 () Unit!19102)

(declare-fun e!344879 () Unit!19102)

(assert (=> b!602899 (= lt!274739 e!344879)))

(declare-fun c!68204 () Bool)

(assert (=> b!602899 (= c!68204 (= lt!274736 Undefined!6279))))

(declare-datatypes ((array!37158 0))(
  ( (array!37159 (arr!17832 (Array (_ BitVec 32) (_ BitVec 64))) (size!18196 (_ BitVec 32))) )
))
(declare-fun lt!274740 () array!37158)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!274737 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37158 (_ BitVec 32)) SeekEntryResult!6279)

(assert (=> b!602899 (= lt!274736 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274737 lt!274740 mask!3053))))

(declare-fun e!344875 () Bool)

(assert (=> b!602899 e!344875))

(declare-fun res!387236 () Bool)

(assert (=> b!602899 (=> (not res!387236) (not e!344875))))

(declare-fun lt!274733 () (_ BitVec 32))

(declare-fun lt!274742 () SeekEntryResult!6279)

(assert (=> b!602899 (= res!387236 (= lt!274742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274733 vacantSpotIndex!68 lt!274737 lt!274740 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37158)

(assert (=> b!602899 (= lt!274742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274733 vacantSpotIndex!68 (select (arr!17832 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!602899 (= lt!274737 (select (store (arr!17832 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274746 () Unit!19102)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37158 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19102)

(assert (=> b!602899 (= lt!274746 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274733 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602899 (= lt!274733 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602900 () Bool)

(declare-fun res!387238 () Bool)

(declare-fun e!344884 () Bool)

(assert (=> b!602900 (=> (not res!387238) (not e!344884))))

(declare-datatypes ((List!11926 0))(
  ( (Nil!11923) (Cons!11922 (h!12967 (_ BitVec 64)) (t!18162 List!11926)) )
))
(declare-fun arrayNoDuplicates!0 (array!37158 (_ BitVec 32) List!11926) Bool)

(assert (=> b!602900 (= res!387238 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11923))))

(declare-fun b!602901 () Bool)

(declare-fun res!387240 () Bool)

(assert (=> b!602901 (=> (not res!387240) (not e!344884))))

(assert (=> b!602901 (= res!387240 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17832 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602902 () Bool)

(declare-fun res!387239 () Bool)

(declare-fun e!344882 () Bool)

(assert (=> b!602902 (=> (not res!387239) (not e!344882))))

(assert (=> b!602902 (= res!387239 (and (= (size!18196 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18196 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18196 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602903 () Bool)

(declare-fun res!387235 () Bool)

(assert (=> b!602903 (=> (not res!387235) (not e!344882))))

(declare-fun arrayContainsKey!0 (array!37158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602903 (= res!387235 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602904 () Bool)

(declare-fun e!344870 () Bool)

(assert (=> b!602904 (= e!344884 e!344870)))

(declare-fun res!387231 () Bool)

(assert (=> b!602904 (=> (not res!387231) (not e!344870))))

(assert (=> b!602904 (= res!387231 (= (select (store (arr!17832 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602904 (= lt!274740 (array!37159 (store (arr!17832 a!2986) i!1108 k!1786) (size!18196 a!2986)))))

(declare-fun b!602905 () Bool)

(declare-fun res!387234 () Bool)

(assert (=> b!602905 (=> (not res!387234) (not e!344884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37158 (_ BitVec 32)) Bool)

(assert (=> b!602905 (= res!387234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602906 () Bool)

(declare-fun e!344881 () Unit!19102)

(declare-fun Unit!19104 () Unit!19102)

(assert (=> b!602906 (= e!344881 Unit!19104)))

(declare-fun b!602908 () Bool)

(declare-fun e!344872 () Bool)

(declare-fun e!344883 () Bool)

(assert (=> b!602908 (= e!344872 e!344883)))

(declare-fun res!387228 () Bool)

(assert (=> b!602908 (=> res!387228 e!344883)))

(assert (=> b!602908 (= res!387228 (bvsge index!984 j!136))))

(declare-fun lt!274743 () Unit!19102)

(assert (=> b!602908 (= lt!274743 e!344881)))

(declare-fun c!68203 () Bool)

(assert (=> b!602908 (= c!68203 (bvslt j!136 index!984))))

(declare-fun b!602909 () Bool)

(declare-fun e!344877 () Bool)

(assert (=> b!602909 (= e!344877 (arrayContainsKey!0 lt!274740 (select (arr!17832 a!2986) j!136) index!984))))

(declare-fun b!602910 () Bool)

(declare-fun e!344874 () Bool)

(declare-fun e!344878 () Bool)

(assert (=> b!602910 (= e!344874 e!344878)))

(declare-fun res!387229 () Bool)

(assert (=> b!602910 (=> res!387229 e!344878)))

(declare-fun lt!274745 () (_ BitVec 64))

(assert (=> b!602910 (= res!387229 (or (not (= (select (arr!17832 a!2986) j!136) lt!274737)) (not (= (select (arr!17832 a!2986) j!136) lt!274745)) (bvsge j!136 index!984)))))

(declare-fun b!602911 () Bool)

(assert (=> b!602911 (= e!344878 e!344877)))

(declare-fun res!387237 () Bool)

(assert (=> b!602911 (=> (not res!387237) (not e!344877))))

(assert (=> b!602911 (= res!387237 (arrayContainsKey!0 lt!274740 (select (arr!17832 a!2986) j!136) j!136))))

(declare-fun b!602912 () Bool)

(assert (=> b!602912 (= e!344870 e!344876)))

(declare-fun res!387244 () Bool)

(assert (=> b!602912 (=> (not res!387244) (not e!344876))))

(declare-fun lt!274741 () SeekEntryResult!6279)

(assert (=> b!602912 (= res!387244 (and (= lt!274741 (Found!6279 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17832 a!2986) index!984) (select (arr!17832 a!2986) j!136))) (not (= (select (arr!17832 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!602912 (= lt!274741 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17832 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602913 () Bool)

(assert (=> b!602913 (= e!344882 e!344884)))

(declare-fun res!387232 () Bool)

(assert (=> b!602913 (=> (not res!387232) (not e!344884))))

(declare-fun lt!274734 () SeekEntryResult!6279)

(assert (=> b!602913 (= res!387232 (or (= lt!274734 (MissingZero!6279 i!1108)) (= lt!274734 (MissingVacant!6279 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37158 (_ BitVec 32)) SeekEntryResult!6279)

(assert (=> b!602913 (= lt!274734 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!602914 () Bool)

(assert (=> b!602914 (= e!344873 e!344872)))

(declare-fun res!387241 () Bool)

(assert (=> b!602914 (=> res!387241 e!344872)))

(assert (=> b!602914 (= res!387241 (or (not (= (select (arr!17832 a!2986) j!136) lt!274737)) (not (= (select (arr!17832 a!2986) j!136) lt!274745))))))

(assert (=> b!602914 e!344874))

(declare-fun res!387233 () Bool)

(assert (=> b!602914 (=> (not res!387233) (not e!344874))))

(assert (=> b!602914 (= res!387233 (= lt!274745 (select (arr!17832 a!2986) j!136)))))

(assert (=> b!602914 (= lt!274745 (select (store (arr!17832 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!602915 () Bool)

(declare-fun Unit!19105 () Unit!19102)

(assert (=> b!602915 (= e!344879 Unit!19105)))

(assert (=> b!602915 false))

(declare-fun b!602916 () Bool)

(assert (=> b!602916 (= e!344883 true)))

(declare-fun e!344880 () Bool)

(assert (=> b!602916 e!344880))

(declare-fun res!387230 () Bool)

(assert (=> b!602916 (=> (not res!387230) (not e!344880))))

(assert (=> b!602916 (= res!387230 (arrayContainsKey!0 lt!274740 (select (arr!17832 a!2986) j!136) j!136))))

(declare-fun b!602917 () Bool)

(assert (=> b!602917 (= e!344880 (arrayContainsKey!0 lt!274740 (select (arr!17832 a!2986) j!136) index!984))))

(declare-fun b!602918 () Bool)

(declare-fun res!387242 () Bool)

(assert (=> b!602918 (=> (not res!387242) (not e!344882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602918 (= res!387242 (validKeyInArray!0 k!1786))))

(declare-fun b!602919 () Bool)

(assert (=> b!602919 (= e!344875 (= lt!274741 lt!274742))))

(declare-fun b!602920 () Bool)

(declare-fun res!387245 () Bool)

(assert (=> b!602920 (=> (not res!387245) (not e!344882))))

(assert (=> b!602920 (= res!387245 (validKeyInArray!0 (select (arr!17832 a!2986) j!136)))))

(declare-fun b!602921 () Bool)

(declare-fun Unit!19106 () Unit!19102)

(assert (=> b!602921 (= e!344881 Unit!19106)))

(declare-fun lt!274738 () Unit!19102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37158 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19102)

(assert (=> b!602921 (= lt!274738 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274740 (select (arr!17832 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602921 (arrayContainsKey!0 lt!274740 (select (arr!17832 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274735 () Unit!19102)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37158 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11926) Unit!19102)

(assert (=> b!602921 (= lt!274735 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11923))))

(assert (=> b!602921 (arrayNoDuplicates!0 lt!274740 #b00000000000000000000000000000000 Nil!11923)))

(declare-fun lt!274732 () Unit!19102)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37158 (_ BitVec 32) (_ BitVec 32)) Unit!19102)

(assert (=> b!602921 (= lt!274732 (lemmaNoDuplicateFromThenFromBigger!0 lt!274740 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602921 (arrayNoDuplicates!0 lt!274740 j!136 Nil!11923)))

(declare-fun lt!274744 () Unit!19102)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37158 (_ BitVec 64) (_ BitVec 32) List!11926) Unit!19102)

(assert (=> b!602921 (= lt!274744 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274740 (select (arr!17832 a!2986) j!136) j!136 Nil!11923))))

(assert (=> b!602921 false))

(declare-fun res!387227 () Bool)

(assert (=> start!55122 (=> (not res!387227) (not e!344882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55122 (= res!387227 (validMask!0 mask!3053))))

(assert (=> start!55122 e!344882))

(assert (=> start!55122 true))

(declare-fun array_inv!13606 (array!37158) Bool)

(assert (=> start!55122 (array_inv!13606 a!2986)))

(declare-fun b!602907 () Bool)

(declare-fun Unit!19107 () Unit!19102)

(assert (=> b!602907 (= e!344879 Unit!19107)))

(assert (= (and start!55122 res!387227) b!602902))

(assert (= (and b!602902 res!387239) b!602920))

(assert (= (and b!602920 res!387245) b!602918))

(assert (= (and b!602918 res!387242) b!602903))

(assert (= (and b!602903 res!387235) b!602913))

(assert (= (and b!602913 res!387232) b!602905))

(assert (= (and b!602905 res!387234) b!602900))

(assert (= (and b!602900 res!387238) b!602901))

(assert (= (and b!602901 res!387240) b!602904))

(assert (= (and b!602904 res!387231) b!602912))

(assert (= (and b!602912 res!387244) b!602899))

(assert (= (and b!602899 res!387236) b!602919))

(assert (= (and b!602899 c!68204) b!602915))

(assert (= (and b!602899 (not c!68204)) b!602907))

(assert (= (and b!602899 (not res!387243)) b!602914))

(assert (= (and b!602914 res!387233) b!602910))

(assert (= (and b!602910 (not res!387229)) b!602911))

(assert (= (and b!602911 res!387237) b!602909))

(assert (= (and b!602914 (not res!387241)) b!602908))

(assert (= (and b!602908 c!68203) b!602921))

(assert (= (and b!602908 (not c!68203)) b!602906))

(assert (= (and b!602908 (not res!387228)) b!602916))

(assert (= (and b!602916 res!387230) b!602917))

(declare-fun m!580011 () Bool)

(assert (=> b!602917 m!580011))

(assert (=> b!602917 m!580011))

(declare-fun m!580013 () Bool)

(assert (=> b!602917 m!580013))

(declare-fun m!580015 () Bool)

(assert (=> start!55122 m!580015))

(declare-fun m!580017 () Bool)

(assert (=> start!55122 m!580017))

(declare-fun m!580019 () Bool)

(assert (=> b!602901 m!580019))

(assert (=> b!602916 m!580011))

(assert (=> b!602916 m!580011))

(declare-fun m!580021 () Bool)

(assert (=> b!602916 m!580021))

(declare-fun m!580023 () Bool)

(assert (=> b!602900 m!580023))

(assert (=> b!602920 m!580011))

(assert (=> b!602920 m!580011))

(declare-fun m!580025 () Bool)

(assert (=> b!602920 m!580025))

(assert (=> b!602914 m!580011))

(declare-fun m!580027 () Bool)

(assert (=> b!602914 m!580027))

(declare-fun m!580029 () Bool)

(assert (=> b!602914 m!580029))

(assert (=> b!602910 m!580011))

(declare-fun m!580031 () Bool)

(assert (=> b!602912 m!580031))

(assert (=> b!602912 m!580011))

(assert (=> b!602912 m!580011))

(declare-fun m!580033 () Bool)

(assert (=> b!602912 m!580033))

(assert (=> b!602909 m!580011))

(assert (=> b!602909 m!580011))

(assert (=> b!602909 m!580013))

(declare-fun m!580035 () Bool)

(assert (=> b!602905 m!580035))

(assert (=> b!602911 m!580011))

(assert (=> b!602911 m!580011))

(assert (=> b!602911 m!580021))

(declare-fun m!580037 () Bool)

(assert (=> b!602903 m!580037))

(declare-fun m!580039 () Bool)

(assert (=> b!602913 m!580039))

(assert (=> b!602904 m!580027))

(declare-fun m!580041 () Bool)

(assert (=> b!602904 m!580041))

(declare-fun m!580043 () Bool)

(assert (=> b!602921 m!580043))

(assert (=> b!602921 m!580011))

(assert (=> b!602921 m!580011))

(declare-fun m!580045 () Bool)

(assert (=> b!602921 m!580045))

(declare-fun m!580047 () Bool)

(assert (=> b!602921 m!580047))

(declare-fun m!580049 () Bool)

(assert (=> b!602921 m!580049))

(assert (=> b!602921 m!580011))

(declare-fun m!580051 () Bool)

(assert (=> b!602921 m!580051))

(declare-fun m!580053 () Bool)

(assert (=> b!602921 m!580053))

(assert (=> b!602921 m!580011))

(declare-fun m!580055 () Bool)

(assert (=> b!602921 m!580055))

(declare-fun m!580057 () Bool)

(assert (=> b!602918 m!580057))

(declare-fun m!580059 () Bool)

(assert (=> b!602899 m!580059))

(declare-fun m!580061 () Bool)

(assert (=> b!602899 m!580061))

(assert (=> b!602899 m!580011))

(assert (=> b!602899 m!580027))

(declare-fun m!580063 () Bool)

(assert (=> b!602899 m!580063))

(declare-fun m!580065 () Bool)

(assert (=> b!602899 m!580065))

(assert (=> b!602899 m!580011))

(declare-fun m!580067 () Bool)

(assert (=> b!602899 m!580067))

(declare-fun m!580069 () Bool)

(assert (=> b!602899 m!580069))

(push 1)

