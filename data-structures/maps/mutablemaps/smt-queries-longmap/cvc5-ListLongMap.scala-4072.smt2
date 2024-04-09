; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55938 () Bool)

(assert start!55938)

(declare-fun b!612448 () Bool)

(declare-fun e!351074 () Bool)

(declare-fun e!351075 () Bool)

(assert (=> b!612448 (= e!351074 e!351075)))

(declare-fun res!394168 () Bool)

(assert (=> b!612448 (=> (not res!394168) (not e!351075))))

(declare-datatypes ((SeekEntryResult!6375 0))(
  ( (MissingZero!6375 (index!27783 (_ BitVec 32))) (Found!6375 (index!27784 (_ BitVec 32))) (Intermediate!6375 (undefined!7187 Bool) (index!27785 (_ BitVec 32)) (x!56624 (_ BitVec 32))) (Undefined!6375) (MissingVacant!6375 (index!27786 (_ BitVec 32))) )
))
(declare-fun lt!280538 () SeekEntryResult!6375)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!612448 (= res!394168 (or (= lt!280538 (MissingZero!6375 i!1108)) (= lt!280538 (MissingVacant!6375 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37371 0))(
  ( (array!37372 (arr!17928 (Array (_ BitVec 32) (_ BitVec 64))) (size!18292 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37371)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37371 (_ BitVec 32)) SeekEntryResult!6375)

(assert (=> b!612448 (= lt!280538 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!612449 () Bool)

(declare-datatypes ((Unit!19678 0))(
  ( (Unit!19679) )
))
(declare-fun e!351070 () Unit!19678)

(declare-fun Unit!19680 () Unit!19678)

(assert (=> b!612449 (= e!351070 Unit!19680)))

(declare-fun b!612450 () Bool)

(declare-fun res!394167 () Bool)

(assert (=> b!612450 (=> (not res!394167) (not e!351074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612450 (= res!394167 (validKeyInArray!0 k!1786))))

(declare-fun b!612452 () Bool)

(declare-fun res!394165 () Bool)

(assert (=> b!612452 (=> (not res!394165) (not e!351075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37371 (_ BitVec 32)) Bool)

(assert (=> b!612452 (= res!394165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612453 () Bool)

(declare-fun res!394159 () Bool)

(assert (=> b!612453 (=> (not res!394159) (not e!351075))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!612453 (= res!394159 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17928 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612454 () Bool)

(declare-fun e!351073 () Bool)

(assert (=> b!612454 (= e!351073 true)))

(declare-fun lt!280553 () Bool)

(declare-datatypes ((List!12022 0))(
  ( (Nil!12019) (Cons!12018 (h!13063 (_ BitVec 64)) (t!18258 List!12022)) )
))
(declare-fun contains!3049 (List!12022 (_ BitVec 64)) Bool)

(assert (=> b!612454 (= lt!280553 (contains!3049 Nil!12019 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!612455 () Bool)

(declare-fun e!351067 () Unit!19678)

(declare-fun Unit!19681 () Unit!19678)

(assert (=> b!612455 (= e!351067 Unit!19681)))

(assert (=> b!612455 false))

(declare-fun b!612456 () Bool)

(declare-fun res!394162 () Bool)

(assert (=> b!612456 (=> (not res!394162) (not e!351074))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!612456 (= res!394162 (validKeyInArray!0 (select (arr!17928 a!2986) j!136)))))

(declare-fun b!612457 () Bool)

(declare-fun e!351066 () Bool)

(declare-fun e!351064 () Bool)

(assert (=> b!612457 (= e!351066 e!351064)))

(declare-fun res!394166 () Bool)

(assert (=> b!612457 (=> res!394166 e!351064)))

(declare-fun lt!280549 () (_ BitVec 64))

(declare-fun lt!280554 () (_ BitVec 64))

(assert (=> b!612457 (= res!394166 (or (not (= (select (arr!17928 a!2986) j!136) lt!280549)) (not (= (select (arr!17928 a!2986) j!136) lt!280554)) (bvsge j!136 index!984)))))

(declare-fun b!612458 () Bool)

(declare-fun res!394160 () Bool)

(assert (=> b!612458 (=> (not res!394160) (not e!351074))))

(assert (=> b!612458 (= res!394160 (and (= (size!18292 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18292 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18292 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612459 () Bool)

(declare-fun e!351071 () Bool)

(declare-fun e!351063 () Bool)

(assert (=> b!612459 (= e!351071 e!351063)))

(declare-fun res!394161 () Bool)

(assert (=> b!612459 (=> (not res!394161) (not e!351063))))

(declare-fun lt!280536 () SeekEntryResult!6375)

(assert (=> b!612459 (= res!394161 (and (= lt!280536 (Found!6375 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17928 a!2986) index!984) (select (arr!17928 a!2986) j!136))) (not (= (select (arr!17928 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37371 (_ BitVec 32)) SeekEntryResult!6375)

(assert (=> b!612459 (= lt!280536 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17928 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612460 () Bool)

(declare-fun res!394170 () Bool)

(assert (=> b!612460 (=> res!394170 e!351073)))

(declare-fun noDuplicate!349 (List!12022) Bool)

(assert (=> b!612460 (= res!394170 (not (noDuplicate!349 Nil!12019)))))

(declare-fun b!612461 () Bool)

(declare-fun Unit!19682 () Unit!19678)

(assert (=> b!612461 (= e!351070 Unit!19682)))

(declare-fun lt!280547 () Unit!19678)

(declare-fun lt!280546 () array!37371)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37371 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19678)

(assert (=> b!612461 (= lt!280547 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280546 (select (arr!17928 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612461 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280548 () Unit!19678)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37371 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12022) Unit!19678)

(assert (=> b!612461 (= lt!280548 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12019))))

(declare-fun arrayNoDuplicates!0 (array!37371 (_ BitVec 32) List!12022) Bool)

(assert (=> b!612461 (arrayNoDuplicates!0 lt!280546 #b00000000000000000000000000000000 Nil!12019)))

(declare-fun lt!280541 () Unit!19678)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37371 (_ BitVec 32) (_ BitVec 32)) Unit!19678)

(assert (=> b!612461 (= lt!280541 (lemmaNoDuplicateFromThenFromBigger!0 lt!280546 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612461 (arrayNoDuplicates!0 lt!280546 j!136 Nil!12019)))

(declare-fun lt!280542 () Unit!19678)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37371 (_ BitVec 64) (_ BitVec 32) List!12022) Unit!19678)

(assert (=> b!612461 (= lt!280542 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280546 (select (arr!17928 a!2986) j!136) j!136 Nil!12019))))

(assert (=> b!612461 false))

(declare-fun b!612462 () Bool)

(declare-fun e!351072 () Bool)

(assert (=> b!612462 (= e!351072 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) index!984))))

(declare-fun b!612463 () Bool)

(assert (=> b!612463 (= e!351075 e!351071)))

(declare-fun res!394174 () Bool)

(assert (=> b!612463 (=> (not res!394174) (not e!351071))))

(assert (=> b!612463 (= res!394174 (= (select (store (arr!17928 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!612463 (= lt!280546 (array!37372 (store (arr!17928 a!2986) i!1108 k!1786) (size!18292 a!2986)))))

(declare-fun b!612464 () Bool)

(declare-fun e!351062 () Bool)

(declare-fun e!351069 () Bool)

(assert (=> b!612464 (= e!351062 e!351069)))

(declare-fun res!394169 () Bool)

(assert (=> b!612464 (=> res!394169 e!351069)))

(assert (=> b!612464 (= res!394169 (bvsge index!984 j!136))))

(declare-fun lt!280545 () Unit!19678)

(assert (=> b!612464 (= lt!280545 e!351070)))

(declare-fun c!69515 () Bool)

(assert (=> b!612464 (= c!69515 (bvslt j!136 index!984))))

(declare-fun res!394171 () Bool)

(assert (=> start!55938 (=> (not res!394171) (not e!351074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55938 (= res!394171 (validMask!0 mask!3053))))

(assert (=> start!55938 e!351074))

(assert (=> start!55938 true))

(declare-fun array_inv!13702 (array!37371) Bool)

(assert (=> start!55938 (array_inv!13702 a!2986)))

(declare-fun e!351061 () Bool)

(declare-fun b!612451 () Bool)

(assert (=> b!612451 (= e!351061 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) index!984))))

(declare-fun b!612465 () Bool)

(assert (=> b!612465 (= e!351069 e!351073)))

(declare-fun res!394175 () Bool)

(assert (=> b!612465 (=> res!394175 e!351073)))

(assert (=> b!612465 (= res!394175 (or (bvsge (size!18292 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18292 a!2986)) (bvsge index!984 (size!18292 a!2986))))))

(assert (=> b!612465 (arrayNoDuplicates!0 lt!280546 index!984 Nil!12019)))

(declare-fun lt!280543 () Unit!19678)

(assert (=> b!612465 (= lt!280543 (lemmaNoDuplicateFromThenFromBigger!0 lt!280546 #b00000000000000000000000000000000 index!984))))

(assert (=> b!612465 (arrayNoDuplicates!0 lt!280546 #b00000000000000000000000000000000 Nil!12019)))

(declare-fun lt!280540 () Unit!19678)

(assert (=> b!612465 (= lt!280540 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12019))))

(assert (=> b!612465 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280552 () Unit!19678)

(assert (=> b!612465 (= lt!280552 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280546 (select (arr!17928 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!612465 e!351061))

(declare-fun res!394156 () Bool)

(assert (=> b!612465 (=> (not res!394156) (not e!351061))))

(assert (=> b!612465 (= res!394156 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) j!136))))

(declare-fun b!612466 () Bool)

(declare-fun e!351068 () Bool)

(assert (=> b!612466 (= e!351068 e!351062)))

(declare-fun res!394173 () Bool)

(assert (=> b!612466 (=> res!394173 e!351062)))

(assert (=> b!612466 (= res!394173 (or (not (= (select (arr!17928 a!2986) j!136) lt!280549)) (not (= (select (arr!17928 a!2986) j!136) lt!280554))))))

(assert (=> b!612466 e!351066))

(declare-fun res!394155 () Bool)

(assert (=> b!612466 (=> (not res!394155) (not e!351066))))

(assert (=> b!612466 (= res!394155 (= lt!280554 (select (arr!17928 a!2986) j!136)))))

(assert (=> b!612466 (= lt!280554 (select (store (arr!17928 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!612467 () Bool)

(declare-fun e!351076 () Bool)

(declare-fun lt!280550 () SeekEntryResult!6375)

(assert (=> b!612467 (= e!351076 (= lt!280536 lt!280550))))

(declare-fun b!612468 () Bool)

(assert (=> b!612468 (= e!351064 e!351072)))

(declare-fun res!394172 () Bool)

(assert (=> b!612468 (=> (not res!394172) (not e!351072))))

(assert (=> b!612468 (= res!394172 (arrayContainsKey!0 lt!280546 (select (arr!17928 a!2986) j!136) j!136))))

(declare-fun b!612469 () Bool)

(declare-fun res!394164 () Bool)

(assert (=> b!612469 (=> res!394164 e!351073)))

(assert (=> b!612469 (= res!394164 (contains!3049 Nil!12019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!612470 () Bool)

(declare-fun Unit!19683 () Unit!19678)

(assert (=> b!612470 (= e!351067 Unit!19683)))

(declare-fun b!612471 () Bool)

(declare-fun res!394154 () Bool)

(assert (=> b!612471 (=> (not res!394154) (not e!351075))))

(assert (=> b!612471 (= res!394154 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12019))))

(declare-fun b!612472 () Bool)

(declare-fun res!394157 () Bool)

(assert (=> b!612472 (=> (not res!394157) (not e!351074))))

(assert (=> b!612472 (= res!394157 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612473 () Bool)

(assert (=> b!612473 (= e!351063 (not e!351068))))

(declare-fun res!394158 () Bool)

(assert (=> b!612473 (=> res!394158 e!351068)))

(declare-fun lt!280551 () SeekEntryResult!6375)

(assert (=> b!612473 (= res!394158 (not (= lt!280551 (Found!6375 index!984))))))

(declare-fun lt!280537 () Unit!19678)

(assert (=> b!612473 (= lt!280537 e!351067)))

(declare-fun c!69514 () Bool)

(assert (=> b!612473 (= c!69514 (= lt!280551 Undefined!6375))))

(assert (=> b!612473 (= lt!280551 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280549 lt!280546 mask!3053))))

(assert (=> b!612473 e!351076))

(declare-fun res!394163 () Bool)

(assert (=> b!612473 (=> (not res!394163) (not e!351076))))

(declare-fun lt!280544 () (_ BitVec 32))

(assert (=> b!612473 (= res!394163 (= lt!280550 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280544 vacantSpotIndex!68 lt!280549 lt!280546 mask!3053)))))

(assert (=> b!612473 (= lt!280550 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280544 vacantSpotIndex!68 (select (arr!17928 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612473 (= lt!280549 (select (store (arr!17928 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280539 () Unit!19678)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19678)

(assert (=> b!612473 (= lt!280539 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280544 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612473 (= lt!280544 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!55938 res!394171) b!612458))

(assert (= (and b!612458 res!394160) b!612456))

(assert (= (and b!612456 res!394162) b!612450))

(assert (= (and b!612450 res!394167) b!612472))

(assert (= (and b!612472 res!394157) b!612448))

(assert (= (and b!612448 res!394168) b!612452))

(assert (= (and b!612452 res!394165) b!612471))

(assert (= (and b!612471 res!394154) b!612453))

(assert (= (and b!612453 res!394159) b!612463))

(assert (= (and b!612463 res!394174) b!612459))

(assert (= (and b!612459 res!394161) b!612473))

(assert (= (and b!612473 res!394163) b!612467))

(assert (= (and b!612473 c!69514) b!612455))

(assert (= (and b!612473 (not c!69514)) b!612470))

(assert (= (and b!612473 (not res!394158)) b!612466))

(assert (= (and b!612466 res!394155) b!612457))

(assert (= (and b!612457 (not res!394166)) b!612468))

(assert (= (and b!612468 res!394172) b!612462))

(assert (= (and b!612466 (not res!394173)) b!612464))

(assert (= (and b!612464 c!69515) b!612461))

(assert (= (and b!612464 (not c!69515)) b!612449))

(assert (= (and b!612464 (not res!394169)) b!612465))

(assert (= (and b!612465 res!394156) b!612451))

(assert (= (and b!612465 (not res!394175)) b!612460))

(assert (= (and b!612460 (not res!394170)) b!612469))

(assert (= (and b!612469 (not res!394164)) b!612454))

(declare-fun m!588825 () Bool)

(assert (=> b!612465 m!588825))

(declare-fun m!588827 () Bool)

(assert (=> b!612465 m!588827))

(assert (=> b!612465 m!588825))

(declare-fun m!588829 () Bool)

(assert (=> b!612465 m!588829))

(declare-fun m!588831 () Bool)

(assert (=> b!612465 m!588831))

(declare-fun m!588833 () Bool)

(assert (=> b!612465 m!588833))

(declare-fun m!588835 () Bool)

(assert (=> b!612465 m!588835))

(assert (=> b!612465 m!588825))

(declare-fun m!588837 () Bool)

(assert (=> b!612465 m!588837))

(assert (=> b!612465 m!588825))

(declare-fun m!588839 () Bool)

(assert (=> b!612465 m!588839))

(declare-fun m!588841 () Bool)

(assert (=> b!612472 m!588841))

(assert (=> b!612462 m!588825))

(assert (=> b!612462 m!588825))

(declare-fun m!588843 () Bool)

(assert (=> b!612462 m!588843))

(declare-fun m!588845 () Bool)

(assert (=> b!612459 m!588845))

(assert (=> b!612459 m!588825))

(assert (=> b!612459 m!588825))

(declare-fun m!588847 () Bool)

(assert (=> b!612459 m!588847))

(declare-fun m!588849 () Bool)

(assert (=> b!612473 m!588849))

(declare-fun m!588851 () Bool)

(assert (=> b!612473 m!588851))

(assert (=> b!612473 m!588825))

(declare-fun m!588853 () Bool)

(assert (=> b!612473 m!588853))

(declare-fun m!588855 () Bool)

(assert (=> b!612473 m!588855))

(declare-fun m!588857 () Bool)

(assert (=> b!612473 m!588857))

(assert (=> b!612473 m!588825))

(declare-fun m!588859 () Bool)

(assert (=> b!612473 m!588859))

(declare-fun m!588861 () Bool)

(assert (=> b!612473 m!588861))

(declare-fun m!588863 () Bool)

(assert (=> b!612454 m!588863))

(declare-fun m!588865 () Bool)

(assert (=> start!55938 m!588865))

(declare-fun m!588867 () Bool)

(assert (=> start!55938 m!588867))

(assert (=> b!612466 m!588825))

(assert (=> b!612466 m!588853))

(declare-fun m!588869 () Bool)

(assert (=> b!612466 m!588869))

(assert (=> b!612456 m!588825))

(assert (=> b!612456 m!588825))

(declare-fun m!588871 () Bool)

(assert (=> b!612456 m!588871))

(declare-fun m!588873 () Bool)

(assert (=> b!612471 m!588873))

(assert (=> b!612457 m!588825))

(declare-fun m!588875 () Bool)

(assert (=> b!612448 m!588875))

(declare-fun m!588877 () Bool)

(assert (=> b!612469 m!588877))

(declare-fun m!588879 () Bool)

(assert (=> b!612460 m!588879))

(assert (=> b!612463 m!588853))

(declare-fun m!588881 () Bool)

(assert (=> b!612463 m!588881))

(declare-fun m!588883 () Bool)

(assert (=> b!612452 m!588883))

(declare-fun m!588885 () Bool)

(assert (=> b!612450 m!588885))

(assert (=> b!612461 m!588825))

(declare-fun m!588887 () Bool)

(assert (=> b!612461 m!588887))

(assert (=> b!612461 m!588825))

(assert (=> b!612461 m!588825))

(declare-fun m!588889 () Bool)

(assert (=> b!612461 m!588889))

(declare-fun m!588891 () Bool)

(assert (=> b!612461 m!588891))

(assert (=> b!612461 m!588825))

(declare-fun m!588893 () Bool)

(assert (=> b!612461 m!588893))

(assert (=> b!612461 m!588829))

(declare-fun m!588895 () Bool)

(assert (=> b!612461 m!588895))

(assert (=> b!612461 m!588831))

(declare-fun m!588897 () Bool)

(assert (=> b!612453 m!588897))

(assert (=> b!612451 m!588825))

(assert (=> b!612451 m!588825))

(assert (=> b!612451 m!588843))

(assert (=> b!612468 m!588825))

(assert (=> b!612468 m!588825))

(assert (=> b!612468 m!588839))

(push 1)

