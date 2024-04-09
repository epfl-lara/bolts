; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56920 () Bool)

(assert start!56920)

(declare-fun b!629863 () Bool)

(declare-fun res!407260 () Bool)

(declare-fun e!360177 () Bool)

(assert (=> b!629863 (=> (not res!407260) (not e!360177))))

(declare-datatypes ((array!38014 0))(
  ( (array!38015 (arr!18239 (Array (_ BitVec 32) (_ BitVec 64))) (size!18603 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38014)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629863 (= res!407260 (validKeyInArray!0 (select (arr!18239 a!2986) j!136)))))

(declare-fun b!629864 () Bool)

(declare-fun e!360181 () Bool)

(declare-fun e!360180 () Bool)

(assert (=> b!629864 (= e!360181 e!360180)))

(declare-fun res!407264 () Bool)

(assert (=> b!629864 (=> (not res!407264) (not e!360180))))

(declare-datatypes ((SeekEntryResult!6686 0))(
  ( (MissingZero!6686 (index!29030 (_ BitVec 32))) (Found!6686 (index!29031 (_ BitVec 32))) (Intermediate!6686 (undefined!7498 Bool) (index!29032 (_ BitVec 32)) (x!57792 (_ BitVec 32))) (Undefined!6686) (MissingVacant!6686 (index!29033 (_ BitVec 32))) )
))
(declare-fun lt!290960 () SeekEntryResult!6686)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629864 (= res!407264 (and (= lt!290960 (Found!6686 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18239 a!2986) index!984) (select (arr!18239 a!2986) j!136))) (not (= (select (arr!18239 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38014 (_ BitVec 32)) SeekEntryResult!6686)

(assert (=> b!629864 (= lt!290960 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18239 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629865 () Bool)

(assert (=> b!629865 (= e!360177 e!360181)))

(declare-fun res!407259 () Bool)

(assert (=> b!629865 (=> (not res!407259) (not e!360181))))

(declare-fun lt!290957 () SeekEntryResult!6686)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629865 (= res!407259 (or (= lt!290957 (MissingZero!6686 i!1108)) (= lt!290957 (MissingVacant!6686 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38014 (_ BitVec 32)) SeekEntryResult!6686)

(assert (=> b!629865 (= lt!290957 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629866 () Bool)

(declare-fun res!407266 () Bool)

(assert (=> b!629866 (=> (not res!407266) (not e!360181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38014 (_ BitVec 32)) Bool)

(assert (=> b!629866 (= res!407266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629867 () Bool)

(declare-fun res!407262 () Bool)

(assert (=> b!629867 (=> (not res!407262) (not e!360181))))

(declare-datatypes ((List!12333 0))(
  ( (Nil!12330) (Cons!12329 (h!13374 (_ BitVec 64)) (t!18569 List!12333)) )
))
(declare-fun arrayNoDuplicates!0 (array!38014 (_ BitVec 32) List!12333) Bool)

(assert (=> b!629867 (= res!407262 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12330))))

(declare-fun res!407267 () Bool)

(assert (=> start!56920 (=> (not res!407267) (not e!360177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56920 (= res!407267 (validMask!0 mask!3053))))

(assert (=> start!56920 e!360177))

(assert (=> start!56920 true))

(declare-fun array_inv!14013 (array!38014) Bool)

(assert (=> start!56920 (array_inv!14013 a!2986)))

(declare-fun b!629868 () Bool)

(declare-fun res!407265 () Bool)

(assert (=> b!629868 (=> (not res!407265) (not e!360177))))

(declare-fun arrayContainsKey!0 (array!38014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629868 (= res!407265 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629869 () Bool)

(declare-fun res!407261 () Bool)

(assert (=> b!629869 (=> (not res!407261) (not e!360177))))

(assert (=> b!629869 (= res!407261 (validKeyInArray!0 k!1786))))

(declare-fun b!629870 () Bool)

(declare-fun res!407257 () Bool)

(assert (=> b!629870 (=> (not res!407257) (not e!360181))))

(assert (=> b!629870 (= res!407257 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18239 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18239 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629871 () Bool)

(assert (=> b!629871 (= e!360180 (not true))))

(declare-fun e!360178 () Bool)

(assert (=> b!629871 e!360178))

(declare-fun res!407263 () Bool)

(assert (=> b!629871 (=> (not res!407263) (not e!360178))))

(declare-fun lt!290961 () (_ BitVec 32))

(declare-fun lt!290958 () SeekEntryResult!6686)

(assert (=> b!629871 (= res!407263 (= lt!290958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290961 vacantSpotIndex!68 (select (store (arr!18239 a!2986) i!1108 k!1786) j!136) (array!38015 (store (arr!18239 a!2986) i!1108 k!1786) (size!18603 a!2986)) mask!3053)))))

(assert (=> b!629871 (= lt!290958 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290961 vacantSpotIndex!68 (select (arr!18239 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21116 0))(
  ( (Unit!21117) )
))
(declare-fun lt!290959 () Unit!21116)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38014 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21116)

(assert (=> b!629871 (= lt!290959 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290961 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629871 (= lt!290961 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629872 () Bool)

(declare-fun res!407258 () Bool)

(assert (=> b!629872 (=> (not res!407258) (not e!360177))))

(assert (=> b!629872 (= res!407258 (and (= (size!18603 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18603 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18603 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629873 () Bool)

(assert (=> b!629873 (= e!360178 (= lt!290960 lt!290958))))

(assert (= (and start!56920 res!407267) b!629872))

(assert (= (and b!629872 res!407258) b!629863))

(assert (= (and b!629863 res!407260) b!629869))

(assert (= (and b!629869 res!407261) b!629868))

(assert (= (and b!629868 res!407265) b!629865))

(assert (= (and b!629865 res!407259) b!629866))

(assert (= (and b!629866 res!407266) b!629867))

(assert (= (and b!629867 res!407262) b!629870))

(assert (= (and b!629870 res!407257) b!629864))

(assert (= (and b!629864 res!407264) b!629871))

(assert (= (and b!629871 res!407263) b!629873))

(declare-fun m!604927 () Bool)

(assert (=> b!629865 m!604927))

(declare-fun m!604929 () Bool)

(assert (=> b!629866 m!604929))

(declare-fun m!604931 () Bool)

(assert (=> b!629867 m!604931))

(declare-fun m!604933 () Bool)

(assert (=> b!629868 m!604933))

(declare-fun m!604935 () Bool)

(assert (=> b!629864 m!604935))

(declare-fun m!604937 () Bool)

(assert (=> b!629864 m!604937))

(assert (=> b!629864 m!604937))

(declare-fun m!604939 () Bool)

(assert (=> b!629864 m!604939))

(declare-fun m!604941 () Bool)

(assert (=> start!56920 m!604941))

(declare-fun m!604943 () Bool)

(assert (=> start!56920 m!604943))

(assert (=> b!629863 m!604937))

(assert (=> b!629863 m!604937))

(declare-fun m!604945 () Bool)

(assert (=> b!629863 m!604945))

(declare-fun m!604947 () Bool)

(assert (=> b!629869 m!604947))

(declare-fun m!604949 () Bool)

(assert (=> b!629871 m!604949))

(assert (=> b!629871 m!604937))

(declare-fun m!604951 () Bool)

(assert (=> b!629871 m!604951))

(assert (=> b!629871 m!604937))

(declare-fun m!604953 () Bool)

(assert (=> b!629871 m!604953))

(declare-fun m!604955 () Bool)

(assert (=> b!629871 m!604955))

(assert (=> b!629871 m!604949))

(declare-fun m!604957 () Bool)

(assert (=> b!629871 m!604957))

(declare-fun m!604959 () Bool)

(assert (=> b!629871 m!604959))

(declare-fun m!604961 () Bool)

(assert (=> b!629870 m!604961))

(assert (=> b!629870 m!604951))

(declare-fun m!604963 () Bool)

(assert (=> b!629870 m!604963))

(push 1)

(assert (not b!629868))

(assert (not b!629864))

(assert (not b!629869))

(assert (not b!629865))

(assert (not start!56920))

(assert (not b!629867))

(assert (not b!629871))

(assert (not b!629866))

(assert (not b!629863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

