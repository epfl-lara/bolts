; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57116 () Bool)

(assert start!57116)

(declare-fun b!631983 () Bool)

(declare-fun e!361320 () Bool)

(declare-fun e!361323 () Bool)

(assert (=> b!631983 (= e!361320 e!361323)))

(declare-fun res!408795 () Bool)

(assert (=> b!631983 (=> (not res!408795) (not e!361323))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38096 0))(
  ( (array!38097 (arr!18277 (Array (_ BitVec 32) (_ BitVec 64))) (size!18641 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38096)

(assert (=> b!631983 (= res!408795 (= (select (store (arr!18277 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292102 () array!38096)

(assert (=> b!631983 (= lt!292102 (array!38097 (store (arr!18277 a!2986) i!1108 k0!1786) (size!18641 a!2986)))))

(declare-fun b!631984 () Bool)

(declare-fun res!408803 () Bool)

(assert (=> b!631984 (=> (not res!408803) (not e!361320))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631984 (= res!408803 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18277 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631985 () Bool)

(declare-datatypes ((Unit!21254 0))(
  ( (Unit!21255) )
))
(declare-fun e!361322 () Unit!21254)

(declare-fun Unit!21256 () Unit!21254)

(assert (=> b!631985 (= e!361322 Unit!21256)))

(declare-fun b!631986 () Bool)

(declare-fun res!408800 () Bool)

(declare-fun e!361324 () Bool)

(assert (=> b!631986 (=> (not res!408800) (not e!361324))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631986 (= res!408800 (validKeyInArray!0 (select (arr!18277 a!2986) j!136)))))

(declare-fun b!631988 () Bool)

(declare-fun res!408794 () Bool)

(assert (=> b!631988 (=> (not res!408794) (not e!361320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38096 (_ BitVec 32)) Bool)

(assert (=> b!631988 (= res!408794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631989 () Bool)

(declare-fun e!361326 () Bool)

(assert (=> b!631989 (= e!361326 true)))

(assert (=> b!631989 (= (select (store (arr!18277 a!2986) i!1108 k0!1786) index!984) (select (arr!18277 a!2986) j!136))))

(declare-fun b!631990 () Bool)

(declare-fun e!361321 () Bool)

(assert (=> b!631990 (= e!361321 (not e!361326))))

(declare-fun res!408802 () Bool)

(assert (=> b!631990 (=> res!408802 e!361326)))

(declare-datatypes ((SeekEntryResult!6724 0))(
  ( (MissingZero!6724 (index!29188 (_ BitVec 32))) (Found!6724 (index!29189 (_ BitVec 32))) (Intermediate!6724 (undefined!7536 Bool) (index!29190 (_ BitVec 32)) (x!57952 (_ BitVec 32))) (Undefined!6724) (MissingVacant!6724 (index!29191 (_ BitVec 32))) )
))
(declare-fun lt!292098 () SeekEntryResult!6724)

(assert (=> b!631990 (= res!408802 (not (= lt!292098 (Found!6724 index!984))))))

(declare-fun lt!292100 () Unit!21254)

(assert (=> b!631990 (= lt!292100 e!361322)))

(declare-fun c!71963 () Bool)

(assert (=> b!631990 (= c!71963 (= lt!292098 Undefined!6724))))

(declare-fun lt!292099 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38096 (_ BitVec 32)) SeekEntryResult!6724)

(assert (=> b!631990 (= lt!292098 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292099 lt!292102 mask!3053))))

(declare-fun e!361327 () Bool)

(assert (=> b!631990 e!361327))

(declare-fun res!408791 () Bool)

(assert (=> b!631990 (=> (not res!408791) (not e!361327))))

(declare-fun lt!292103 () SeekEntryResult!6724)

(declare-fun lt!292096 () (_ BitVec 32))

(assert (=> b!631990 (= res!408791 (= lt!292103 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292096 vacantSpotIndex!68 lt!292099 lt!292102 mask!3053)))))

(assert (=> b!631990 (= lt!292103 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292096 vacantSpotIndex!68 (select (arr!18277 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631990 (= lt!292099 (select (store (arr!18277 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292104 () Unit!21254)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38096 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21254)

(assert (=> b!631990 (= lt!292104 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292096 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631990 (= lt!292096 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631991 () Bool)

(assert (=> b!631991 (= e!361323 e!361321)))

(declare-fun res!408799 () Bool)

(assert (=> b!631991 (=> (not res!408799) (not e!361321))))

(declare-fun lt!292101 () SeekEntryResult!6724)

(assert (=> b!631991 (= res!408799 (and (= lt!292101 (Found!6724 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18277 a!2986) index!984) (select (arr!18277 a!2986) j!136))) (not (= (select (arr!18277 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631991 (= lt!292101 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18277 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631992 () Bool)

(declare-fun res!408792 () Bool)

(assert (=> b!631992 (=> (not res!408792) (not e!361320))))

(declare-datatypes ((List!12371 0))(
  ( (Nil!12368) (Cons!12367 (h!13412 (_ BitVec 64)) (t!18607 List!12371)) )
))
(declare-fun arrayNoDuplicates!0 (array!38096 (_ BitVec 32) List!12371) Bool)

(assert (=> b!631992 (= res!408792 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12368))))

(declare-fun b!631993 () Bool)

(declare-fun res!408798 () Bool)

(assert (=> b!631993 (=> (not res!408798) (not e!361324))))

(assert (=> b!631993 (= res!408798 (and (= (size!18641 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18641 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18641 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631987 () Bool)

(assert (=> b!631987 (= e!361327 (= lt!292101 lt!292103))))

(declare-fun res!408793 () Bool)

(assert (=> start!57116 (=> (not res!408793) (not e!361324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57116 (= res!408793 (validMask!0 mask!3053))))

(assert (=> start!57116 e!361324))

(assert (=> start!57116 true))

(declare-fun array_inv!14051 (array!38096) Bool)

(assert (=> start!57116 (array_inv!14051 a!2986)))

(declare-fun b!631994 () Bool)

(assert (=> b!631994 (= e!361324 e!361320)))

(declare-fun res!408797 () Bool)

(assert (=> b!631994 (=> (not res!408797) (not e!361320))))

(declare-fun lt!292097 () SeekEntryResult!6724)

(assert (=> b!631994 (= res!408797 (or (= lt!292097 (MissingZero!6724 i!1108)) (= lt!292097 (MissingVacant!6724 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38096 (_ BitVec 32)) SeekEntryResult!6724)

(assert (=> b!631994 (= lt!292097 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631995 () Bool)

(declare-fun res!408801 () Bool)

(assert (=> b!631995 (=> (not res!408801) (not e!361324))))

(declare-fun arrayContainsKey!0 (array!38096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631995 (= res!408801 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631996 () Bool)

(declare-fun Unit!21257 () Unit!21254)

(assert (=> b!631996 (= e!361322 Unit!21257)))

(assert (=> b!631996 false))

(declare-fun b!631997 () Bool)

(declare-fun res!408796 () Bool)

(assert (=> b!631997 (=> (not res!408796) (not e!361324))))

(assert (=> b!631997 (= res!408796 (validKeyInArray!0 k0!1786))))

(assert (= (and start!57116 res!408793) b!631993))

(assert (= (and b!631993 res!408798) b!631986))

(assert (= (and b!631986 res!408800) b!631997))

(assert (= (and b!631997 res!408796) b!631995))

(assert (= (and b!631995 res!408801) b!631994))

(assert (= (and b!631994 res!408797) b!631988))

(assert (= (and b!631988 res!408794) b!631992))

(assert (= (and b!631992 res!408792) b!631984))

(assert (= (and b!631984 res!408803) b!631983))

(assert (= (and b!631983 res!408795) b!631991))

(assert (= (and b!631991 res!408799) b!631990))

(assert (= (and b!631990 res!408791) b!631987))

(assert (= (and b!631990 c!71963) b!631996))

(assert (= (and b!631990 (not c!71963)) b!631985))

(assert (= (and b!631990 (not res!408802)) b!631989))

(declare-fun m!606885 () Bool)

(assert (=> b!631995 m!606885))

(declare-fun m!606887 () Bool)

(assert (=> start!57116 m!606887))

(declare-fun m!606889 () Bool)

(assert (=> start!57116 m!606889))

(declare-fun m!606891 () Bool)

(assert (=> b!631986 m!606891))

(assert (=> b!631986 m!606891))

(declare-fun m!606893 () Bool)

(assert (=> b!631986 m!606893))

(declare-fun m!606895 () Bool)

(assert (=> b!631991 m!606895))

(assert (=> b!631991 m!606891))

(assert (=> b!631991 m!606891))

(declare-fun m!606897 () Bool)

(assert (=> b!631991 m!606897))

(declare-fun m!606899 () Bool)

(assert (=> b!631989 m!606899))

(declare-fun m!606901 () Bool)

(assert (=> b!631989 m!606901))

(assert (=> b!631989 m!606891))

(declare-fun m!606903 () Bool)

(assert (=> b!631997 m!606903))

(declare-fun m!606905 () Bool)

(assert (=> b!631988 m!606905))

(declare-fun m!606907 () Bool)

(assert (=> b!631994 m!606907))

(assert (=> b!631983 m!606899))

(declare-fun m!606909 () Bool)

(assert (=> b!631983 m!606909))

(declare-fun m!606911 () Bool)

(assert (=> b!631990 m!606911))

(declare-fun m!606913 () Bool)

(assert (=> b!631990 m!606913))

(assert (=> b!631990 m!606891))

(declare-fun m!606915 () Bool)

(assert (=> b!631990 m!606915))

(assert (=> b!631990 m!606891))

(declare-fun m!606917 () Bool)

(assert (=> b!631990 m!606917))

(declare-fun m!606919 () Bool)

(assert (=> b!631990 m!606919))

(assert (=> b!631990 m!606899))

(declare-fun m!606921 () Bool)

(assert (=> b!631990 m!606921))

(declare-fun m!606923 () Bool)

(assert (=> b!631984 m!606923))

(declare-fun m!606925 () Bool)

(assert (=> b!631992 m!606925))

(check-sat (not b!631995) (not b!631990) (not b!631994) (not b!631986) (not b!631992) (not start!57116) (not b!631997) (not b!631991) (not b!631988))
(check-sat)
