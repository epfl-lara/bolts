; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57726 () Bool)

(assert start!57726)

(declare-fun b!638005 () Bool)

(declare-fun e!365073 () Bool)

(declare-fun e!365083 () Bool)

(assert (=> b!638005 (= e!365073 e!365083)))

(declare-fun res!413019 () Bool)

(assert (=> b!638005 (=> (not res!413019) (not e!365083))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38253 0))(
  ( (array!38254 (arr!18345 (Array (_ BitVec 32) (_ BitVec 64))) (size!18709 (_ BitVec 32))) )
))
(declare-fun lt!295079 () array!38253)

(declare-fun a!2986 () array!38253)

(declare-fun arrayContainsKey!0 (array!38253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638005 (= res!413019 (arrayContainsKey!0 lt!295079 (select (arr!18345 a!2986) j!136) j!136))))

(declare-fun b!638006 () Bool)

(declare-fun e!365072 () Bool)

(declare-fun e!365077 () Bool)

(assert (=> b!638006 (= e!365072 e!365077)))

(declare-fun res!413023 () Bool)

(assert (=> b!638006 (=> (not res!413023) (not e!365077))))

(declare-datatypes ((SeekEntryResult!6792 0))(
  ( (MissingZero!6792 (index!29481 (_ BitVec 32))) (Found!6792 (index!29482 (_ BitVec 32))) (Intermediate!6792 (undefined!7604 Bool) (index!29483 (_ BitVec 32)) (x!58267 (_ BitVec 32))) (Undefined!6792) (MissingVacant!6792 (index!29484 (_ BitVec 32))) )
))
(declare-fun lt!295077 () SeekEntryResult!6792)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638006 (= res!413023 (or (= lt!295077 (MissingZero!6792 i!1108)) (= lt!295077 (MissingVacant!6792 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38253 (_ BitVec 32)) SeekEntryResult!6792)

(assert (=> b!638006 (= lt!295077 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!638007 () Bool)

(declare-fun res!413030 () Bool)

(assert (=> b!638007 (=> (not res!413030) (not e!365072))))

(assert (=> b!638007 (= res!413030 (and (= (size!18709 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18709 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18709 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638008 () Bool)

(declare-fun res!413032 () Bool)

(declare-fun e!365071 () Bool)

(assert (=> b!638008 (=> res!413032 e!365071)))

(declare-datatypes ((List!12439 0))(
  ( (Nil!12436) (Cons!12435 (h!13480 (_ BitVec 64)) (t!18675 List!12439)) )
))
(declare-fun contains!3122 (List!12439 (_ BitVec 64)) Bool)

(assert (=> b!638008 (= res!413032 (contains!3122 Nil!12436 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!638009 () Bool)

(declare-fun res!413022 () Bool)

(assert (=> b!638009 (=> (not res!413022) (not e!365077))))

(declare-fun arrayNoDuplicates!0 (array!38253 (_ BitVec 32) List!12439) Bool)

(assert (=> b!638009 (= res!413022 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12436))))

(declare-fun b!638010 () Bool)

(declare-fun res!413025 () Bool)

(assert (=> b!638010 (=> res!413025 e!365071)))

(assert (=> b!638010 (= res!413025 (contains!3122 Nil!12436 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!638011 () Bool)

(declare-fun e!365074 () Bool)

(declare-fun e!365076 () Bool)

(assert (=> b!638011 (= e!365074 (not e!365076))))

(declare-fun res!413024 () Bool)

(assert (=> b!638011 (=> res!413024 e!365076)))

(declare-fun lt!295083 () SeekEntryResult!6792)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!638011 (= res!413024 (not (= lt!295083 (Found!6792 index!984))))))

(declare-datatypes ((Unit!21526 0))(
  ( (Unit!21527) )
))
(declare-fun lt!295081 () Unit!21526)

(declare-fun e!365080 () Unit!21526)

(assert (=> b!638011 (= lt!295081 e!365080)))

(declare-fun c!72860 () Bool)

(assert (=> b!638011 (= c!72860 (= lt!295083 Undefined!6792))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!295074 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38253 (_ BitVec 32)) SeekEntryResult!6792)

(assert (=> b!638011 (= lt!295083 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295074 lt!295079 mask!3053))))

(declare-fun e!365079 () Bool)

(assert (=> b!638011 e!365079))

(declare-fun res!413035 () Bool)

(assert (=> b!638011 (=> (not res!413035) (not e!365079))))

(declare-fun lt!295080 () SeekEntryResult!6792)

(declare-fun lt!295082 () (_ BitVec 32))

(assert (=> b!638011 (= res!413035 (= lt!295080 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295082 vacantSpotIndex!68 lt!295074 lt!295079 mask!3053)))))

(assert (=> b!638011 (= lt!295080 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295082 vacantSpotIndex!68 (select (arr!18345 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638011 (= lt!295074 (select (store (arr!18345 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295078 () Unit!21526)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38253 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21526)

(assert (=> b!638011 (= lt!295078 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295082 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638011 (= lt!295082 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!413039 () Bool)

(assert (=> start!57726 (=> (not res!413039) (not e!365072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57726 (= res!413039 (validMask!0 mask!3053))))

(assert (=> start!57726 e!365072))

(assert (=> start!57726 true))

(declare-fun array_inv!14119 (array!38253) Bool)

(assert (=> start!57726 (array_inv!14119 a!2986)))

(declare-fun b!638012 () Bool)

(declare-fun e!365075 () Bool)

(assert (=> b!638012 (= e!365075 e!365071)))

(declare-fun res!413020 () Bool)

(assert (=> b!638012 (=> res!413020 e!365071)))

(assert (=> b!638012 (= res!413020 (or (bvsge (size!18709 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18709 a!2986))))))

(assert (=> b!638012 (arrayContainsKey!0 lt!295079 (select (arr!18345 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295073 () Unit!21526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38253 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21526)

(assert (=> b!638012 (= lt!295073 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295079 (select (arr!18345 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638013 () Bool)

(declare-fun res!413036 () Bool)

(assert (=> b!638013 (=> (not res!413036) (not e!365077))))

(assert (=> b!638013 (= res!413036 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18345 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638014 () Bool)

(declare-fun res!413031 () Bool)

(assert (=> b!638014 (=> res!413031 e!365071)))

(declare-fun noDuplicate!397 (List!12439) Bool)

(assert (=> b!638014 (= res!413031 (not (noDuplicate!397 Nil!12436)))))

(declare-fun b!638015 () Bool)

(declare-fun e!365081 () Bool)

(assert (=> b!638015 (= e!365081 e!365074)))

(declare-fun res!413034 () Bool)

(assert (=> b!638015 (=> (not res!413034) (not e!365074))))

(declare-fun lt!295075 () SeekEntryResult!6792)

(assert (=> b!638015 (= res!413034 (and (= lt!295075 (Found!6792 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18345 a!2986) index!984) (select (arr!18345 a!2986) j!136))) (not (= (select (arr!18345 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638015 (= lt!295075 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18345 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638016 () Bool)

(declare-fun e!365082 () Bool)

(assert (=> b!638016 (= e!365082 e!365073)))

(declare-fun res!413033 () Bool)

(assert (=> b!638016 (=> res!413033 e!365073)))

(declare-fun lt!295072 () (_ BitVec 64))

(assert (=> b!638016 (= res!413033 (or (not (= (select (arr!18345 a!2986) j!136) lt!295074)) (not (= (select (arr!18345 a!2986) j!136) lt!295072)) (bvsge j!136 index!984)))))

(declare-fun b!638017 () Bool)

(assert (=> b!638017 (= e!365076 e!365075)))

(declare-fun res!413027 () Bool)

(assert (=> b!638017 (=> res!413027 e!365075)))

(assert (=> b!638017 (= res!413027 (or (not (= (select (arr!18345 a!2986) j!136) lt!295074)) (not (= (select (arr!18345 a!2986) j!136) lt!295072)) (bvsge j!136 index!984)))))

(assert (=> b!638017 e!365082))

(declare-fun res!413029 () Bool)

(assert (=> b!638017 (=> (not res!413029) (not e!365082))))

(assert (=> b!638017 (= res!413029 (= lt!295072 (select (arr!18345 a!2986) j!136)))))

(assert (=> b!638017 (= lt!295072 (select (store (arr!18345 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!638018 () Bool)

(declare-fun res!413038 () Bool)

(assert (=> b!638018 (=> (not res!413038) (not e!365072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638018 (= res!413038 (validKeyInArray!0 (select (arr!18345 a!2986) j!136)))))

(declare-fun b!638019 () Bool)

(assert (=> b!638019 (= e!365083 (arrayContainsKey!0 lt!295079 (select (arr!18345 a!2986) j!136) index!984))))

(declare-fun b!638020 () Bool)

(declare-fun Unit!21528 () Unit!21526)

(assert (=> b!638020 (= e!365080 Unit!21528)))

(assert (=> b!638020 false))

(declare-fun b!638021 () Bool)

(assert (=> b!638021 (= e!365071 true)))

(declare-fun lt!295076 () Bool)

(assert (=> b!638021 (= lt!295076 (contains!3122 Nil!12436 k!1786))))

(declare-fun b!638022 () Bool)

(declare-fun res!413028 () Bool)

(assert (=> b!638022 (=> (not res!413028) (not e!365072))))

(assert (=> b!638022 (= res!413028 (validKeyInArray!0 k!1786))))

(declare-fun b!638023 () Bool)

(assert (=> b!638023 (= e!365077 e!365081)))

(declare-fun res!413021 () Bool)

(assert (=> b!638023 (=> (not res!413021) (not e!365081))))

(assert (=> b!638023 (= res!413021 (= (select (store (arr!18345 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638023 (= lt!295079 (array!38254 (store (arr!18345 a!2986) i!1108 k!1786) (size!18709 a!2986)))))

(declare-fun b!638024 () Bool)

(declare-fun res!413037 () Bool)

(assert (=> b!638024 (=> (not res!413037) (not e!365072))))

(assert (=> b!638024 (= res!413037 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638025 () Bool)

(declare-fun res!413026 () Bool)

(assert (=> b!638025 (=> (not res!413026) (not e!365077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38253 (_ BitVec 32)) Bool)

(assert (=> b!638025 (= res!413026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638026 () Bool)

(declare-fun Unit!21529 () Unit!21526)

(assert (=> b!638026 (= e!365080 Unit!21529)))

(declare-fun b!638027 () Bool)

(assert (=> b!638027 (= e!365079 (= lt!295075 lt!295080))))

(assert (= (and start!57726 res!413039) b!638007))

(assert (= (and b!638007 res!413030) b!638018))

(assert (= (and b!638018 res!413038) b!638022))

(assert (= (and b!638022 res!413028) b!638024))

(assert (= (and b!638024 res!413037) b!638006))

(assert (= (and b!638006 res!413023) b!638025))

(assert (= (and b!638025 res!413026) b!638009))

(assert (= (and b!638009 res!413022) b!638013))

(assert (= (and b!638013 res!413036) b!638023))

(assert (= (and b!638023 res!413021) b!638015))

(assert (= (and b!638015 res!413034) b!638011))

(assert (= (and b!638011 res!413035) b!638027))

(assert (= (and b!638011 c!72860) b!638020))

(assert (= (and b!638011 (not c!72860)) b!638026))

(assert (= (and b!638011 (not res!413024)) b!638017))

(assert (= (and b!638017 res!413029) b!638016))

(assert (= (and b!638016 (not res!413033)) b!638005))

(assert (= (and b!638005 res!413019) b!638019))

(assert (= (and b!638017 (not res!413027)) b!638012))

(assert (= (and b!638012 (not res!413020)) b!638014))

(assert (= (and b!638014 (not res!413031)) b!638008))

(assert (= (and b!638008 (not res!413032)) b!638010))

(assert (= (and b!638010 (not res!413025)) b!638021))

(declare-fun m!612033 () Bool)

(assert (=> b!638017 m!612033))

(declare-fun m!612035 () Bool)

(assert (=> b!638017 m!612035))

(declare-fun m!612037 () Bool)

(assert (=> b!638017 m!612037))

(declare-fun m!612039 () Bool)

(assert (=> b!638009 m!612039))

(declare-fun m!612041 () Bool)

(assert (=> b!638025 m!612041))

(declare-fun m!612043 () Bool)

(assert (=> b!638021 m!612043))

(declare-fun m!612045 () Bool)

(assert (=> start!57726 m!612045))

(declare-fun m!612047 () Bool)

(assert (=> start!57726 m!612047))

(declare-fun m!612049 () Bool)

(assert (=> b!638006 m!612049))

(assert (=> b!638023 m!612035))

(declare-fun m!612051 () Bool)

(assert (=> b!638023 m!612051))

(assert (=> b!638019 m!612033))

(assert (=> b!638019 m!612033))

(declare-fun m!612053 () Bool)

(assert (=> b!638019 m!612053))

(declare-fun m!612055 () Bool)

(assert (=> b!638008 m!612055))

(assert (=> b!638005 m!612033))

(assert (=> b!638005 m!612033))

(declare-fun m!612057 () Bool)

(assert (=> b!638005 m!612057))

(declare-fun m!612059 () Bool)

(assert (=> b!638011 m!612059))

(assert (=> b!638011 m!612033))

(declare-fun m!612061 () Bool)

(assert (=> b!638011 m!612061))

(assert (=> b!638011 m!612035))

(declare-fun m!612063 () Bool)

(assert (=> b!638011 m!612063))

(assert (=> b!638011 m!612033))

(declare-fun m!612065 () Bool)

(assert (=> b!638011 m!612065))

(declare-fun m!612067 () Bool)

(assert (=> b!638011 m!612067))

(declare-fun m!612069 () Bool)

(assert (=> b!638011 m!612069))

(declare-fun m!612071 () Bool)

(assert (=> b!638024 m!612071))

(declare-fun m!612073 () Bool)

(assert (=> b!638014 m!612073))

(assert (=> b!638016 m!612033))

(declare-fun m!612075 () Bool)

(assert (=> b!638010 m!612075))

(declare-fun m!612077 () Bool)

(assert (=> b!638015 m!612077))

(assert (=> b!638015 m!612033))

(assert (=> b!638015 m!612033))

(declare-fun m!612079 () Bool)

(assert (=> b!638015 m!612079))

(declare-fun m!612081 () Bool)

(assert (=> b!638013 m!612081))

(declare-fun m!612083 () Bool)

(assert (=> b!638022 m!612083))

(assert (=> b!638012 m!612033))

(assert (=> b!638012 m!612033))

(declare-fun m!612085 () Bool)

(assert (=> b!638012 m!612085))

(assert (=> b!638012 m!612033))

(declare-fun m!612087 () Bool)

(assert (=> b!638012 m!612087))

(assert (=> b!638018 m!612033))

(assert (=> b!638018 m!612033))

(declare-fun m!612089 () Bool)

(assert (=> b!638018 m!612089))

(push 1)

