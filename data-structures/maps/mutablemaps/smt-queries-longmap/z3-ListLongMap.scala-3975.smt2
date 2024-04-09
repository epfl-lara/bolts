; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53940 () Bool)

(assert start!53940)

(declare-fun b!588244 () Bool)

(declare-fun e!335913 () Bool)

(assert (=> b!588244 (= e!335913 (not true))))

(declare-fun e!335915 () Bool)

(assert (=> b!588244 e!335915))

(declare-fun res!376040 () Bool)

(assert (=> b!588244 (=> (not res!376040) (not e!335915))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6085 0))(
  ( (MissingZero!6085 (index!26570 (_ BitVec 32))) (Found!6085 (index!26571 (_ BitVec 32))) (Intermediate!6085 (undefined!6897 Bool) (index!26572 (_ BitVec 32)) (x!55398 (_ BitVec 32))) (Undefined!6085) (MissingVacant!6085 (index!26573 (_ BitVec 32))) )
))
(declare-fun lt!266756 () SeekEntryResult!6085)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266753 () (_ BitVec 32))

(declare-datatypes ((array!36738 0))(
  ( (array!36739 (arr!17638 (Array (_ BitVec 32) (_ BitVec 64))) (size!18002 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36738)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36738 (_ BitVec 32)) SeekEntryResult!6085)

(assert (=> b!588244 (= res!376040 (= lt!266756 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266753 vacantSpotIndex!68 (select (store (arr!17638 a!2986) i!1108 k0!1786) j!136) (array!36739 (store (arr!17638 a!2986) i!1108 k0!1786) (size!18002 a!2986)) mask!3053)))))

(assert (=> b!588244 (= lt!266756 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266753 vacantSpotIndex!68 (select (arr!17638 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18294 0))(
  ( (Unit!18295) )
))
(declare-fun lt!266754 () Unit!18294)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36738 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18294)

(assert (=> b!588244 (= lt!266754 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266753 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588244 (= lt!266753 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588245 () Bool)

(declare-fun e!335914 () Bool)

(declare-fun e!335917 () Bool)

(assert (=> b!588245 (= e!335914 e!335917)))

(declare-fun res!376032 () Bool)

(assert (=> b!588245 (=> (not res!376032) (not e!335917))))

(declare-fun lt!266752 () SeekEntryResult!6085)

(assert (=> b!588245 (= res!376032 (or (= lt!266752 (MissingZero!6085 i!1108)) (= lt!266752 (MissingVacant!6085 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36738 (_ BitVec 32)) SeekEntryResult!6085)

(assert (=> b!588245 (= lt!266752 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588246 () Bool)

(declare-fun res!376030 () Bool)

(assert (=> b!588246 (=> (not res!376030) (not e!335917))))

(assert (=> b!588246 (= res!376030 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17638 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17638 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588247 () Bool)

(declare-fun res!376036 () Bool)

(assert (=> b!588247 (=> (not res!376036) (not e!335914))))

(assert (=> b!588247 (= res!376036 (and (= (size!18002 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18002 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18002 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588248 () Bool)

(declare-fun res!376034 () Bool)

(assert (=> b!588248 (=> (not res!376034) (not e!335917))))

(declare-datatypes ((List!11732 0))(
  ( (Nil!11729) (Cons!11728 (h!12773 (_ BitVec 64)) (t!17968 List!11732)) )
))
(declare-fun arrayNoDuplicates!0 (array!36738 (_ BitVec 32) List!11732) Bool)

(assert (=> b!588248 (= res!376034 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11729))))

(declare-fun res!376037 () Bool)

(assert (=> start!53940 (=> (not res!376037) (not e!335914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53940 (= res!376037 (validMask!0 mask!3053))))

(assert (=> start!53940 e!335914))

(assert (=> start!53940 true))

(declare-fun array_inv!13412 (array!36738) Bool)

(assert (=> start!53940 (array_inv!13412 a!2986)))

(declare-fun b!588249 () Bool)

(declare-fun lt!266755 () SeekEntryResult!6085)

(assert (=> b!588249 (= e!335915 (= lt!266755 lt!266756))))

(declare-fun b!588250 () Bool)

(declare-fun res!376038 () Bool)

(assert (=> b!588250 (=> (not res!376038) (not e!335914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588250 (= res!376038 (validKeyInArray!0 (select (arr!17638 a!2986) j!136)))))

(declare-fun b!588251 () Bool)

(declare-fun res!376039 () Bool)

(assert (=> b!588251 (=> (not res!376039) (not e!335917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36738 (_ BitVec 32)) Bool)

(assert (=> b!588251 (= res!376039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588252 () Bool)

(declare-fun res!376035 () Bool)

(assert (=> b!588252 (=> (not res!376035) (not e!335914))))

(declare-fun arrayContainsKey!0 (array!36738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588252 (= res!376035 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588253 () Bool)

(assert (=> b!588253 (= e!335917 e!335913)))

(declare-fun res!376033 () Bool)

(assert (=> b!588253 (=> (not res!376033) (not e!335913))))

(assert (=> b!588253 (= res!376033 (and (= lt!266755 (Found!6085 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17638 a!2986) index!984) (select (arr!17638 a!2986) j!136))) (not (= (select (arr!17638 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588253 (= lt!266755 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17638 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588254 () Bool)

(declare-fun res!376031 () Bool)

(assert (=> b!588254 (=> (not res!376031) (not e!335914))))

(assert (=> b!588254 (= res!376031 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53940 res!376037) b!588247))

(assert (= (and b!588247 res!376036) b!588250))

(assert (= (and b!588250 res!376038) b!588254))

(assert (= (and b!588254 res!376031) b!588252))

(assert (= (and b!588252 res!376035) b!588245))

(assert (= (and b!588245 res!376032) b!588251))

(assert (= (and b!588251 res!376039) b!588248))

(assert (= (and b!588248 res!376034) b!588246))

(assert (= (and b!588246 res!376030) b!588253))

(assert (= (and b!588253 res!376033) b!588244))

(assert (= (and b!588244 res!376040) b!588249))

(declare-fun m!566847 () Bool)

(assert (=> b!588254 m!566847))

(declare-fun m!566849 () Bool)

(assert (=> b!588245 m!566849))

(declare-fun m!566851 () Bool)

(assert (=> b!588250 m!566851))

(assert (=> b!588250 m!566851))

(declare-fun m!566853 () Bool)

(assert (=> b!588250 m!566853))

(declare-fun m!566855 () Bool)

(assert (=> start!53940 m!566855))

(declare-fun m!566857 () Bool)

(assert (=> start!53940 m!566857))

(declare-fun m!566859 () Bool)

(assert (=> b!588244 m!566859))

(declare-fun m!566861 () Bool)

(assert (=> b!588244 m!566861))

(assert (=> b!588244 m!566851))

(declare-fun m!566863 () Bool)

(assert (=> b!588244 m!566863))

(declare-fun m!566865 () Bool)

(assert (=> b!588244 m!566865))

(assert (=> b!588244 m!566861))

(declare-fun m!566867 () Bool)

(assert (=> b!588244 m!566867))

(assert (=> b!588244 m!566851))

(declare-fun m!566869 () Bool)

(assert (=> b!588244 m!566869))

(declare-fun m!566871 () Bool)

(assert (=> b!588253 m!566871))

(assert (=> b!588253 m!566851))

(assert (=> b!588253 m!566851))

(declare-fun m!566873 () Bool)

(assert (=> b!588253 m!566873))

(declare-fun m!566875 () Bool)

(assert (=> b!588248 m!566875))

(declare-fun m!566877 () Bool)

(assert (=> b!588251 m!566877))

(declare-fun m!566879 () Bool)

(assert (=> b!588252 m!566879))

(declare-fun m!566881 () Bool)

(assert (=> b!588246 m!566881))

(assert (=> b!588246 m!566863))

(declare-fun m!566883 () Bool)

(assert (=> b!588246 m!566883))

(check-sat (not b!588252) (not start!53940) (not b!588248) (not b!588254) (not b!588250) (not b!588245) (not b!588244) (not b!588253) (not b!588251))
(check-sat)
