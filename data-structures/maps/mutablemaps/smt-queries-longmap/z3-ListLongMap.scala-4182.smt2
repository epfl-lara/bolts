; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57020 () Bool)

(assert start!57020)

(declare-fun res!408049 () Bool)

(declare-fun e!360741 () Bool)

(assert (=> start!57020 (=> (not res!408049) (not e!360741))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57020 (= res!408049 (validMask!0 mask!3053))))

(assert (=> start!57020 e!360741))

(assert (=> start!57020 true))

(declare-datatypes ((array!38057 0))(
  ( (array!38058 (arr!18259 (Array (_ BitVec 32) (_ BitVec 64))) (size!18623 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38057)

(declare-fun array_inv!14033 (array!38057) Bool)

(assert (=> start!57020 (array_inv!14033 a!2986)))

(declare-fun b!630925 () Bool)

(declare-fun e!360743 () Bool)

(declare-fun e!360742 () Bool)

(assert (=> b!630925 (= e!360743 e!360742)))

(declare-fun res!408047 () Bool)

(assert (=> b!630925 (=> (not res!408047) (not e!360742))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!630925 (= res!408047 (= (select (store (arr!18259 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291515 () array!38057)

(assert (=> b!630925 (= lt!291515 (array!38058 (store (arr!18259 a!2986) i!1108 k0!1786) (size!18623 a!2986)))))

(declare-fun b!630926 () Bool)

(declare-fun res!408041 () Bool)

(assert (=> b!630926 (=> (not res!408041) (not e!360743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38057 (_ BitVec 32)) Bool)

(assert (=> b!630926 (= res!408041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630927 () Bool)

(declare-fun res!408044 () Bool)

(assert (=> b!630927 (=> (not res!408044) (not e!360741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630927 (= res!408044 (validKeyInArray!0 k0!1786))))

(declare-fun b!630928 () Bool)

(declare-fun e!360744 () Bool)

(assert (=> b!630928 (= e!360742 e!360744)))

(declare-fun res!408040 () Bool)

(assert (=> b!630928 (=> (not res!408040) (not e!360744))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6706 0))(
  ( (MissingZero!6706 (index!29113 (_ BitVec 32))) (Found!6706 (index!29114 (_ BitVec 32))) (Intermediate!6706 (undefined!7518 Bool) (index!29115 (_ BitVec 32)) (x!57877 (_ BitVec 32))) (Undefined!6706) (MissingVacant!6706 (index!29116 (_ BitVec 32))) )
))
(declare-fun lt!291514 () SeekEntryResult!6706)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!630928 (= res!408040 (and (= lt!291514 (Found!6706 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18259 a!2986) index!984) (select (arr!18259 a!2986) j!136))) (not (= (select (arr!18259 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38057 (_ BitVec 32)) SeekEntryResult!6706)

(assert (=> b!630928 (= lt!291514 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18259 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!630929 () Bool)

(declare-fun lt!291517 () SeekEntryResult!6706)

(assert (=> b!630929 (= e!360744 (not (or (not (= lt!291517 (Found!6706 index!984))) (bvslt index!984 (size!18623 a!2986)))))))

(declare-datatypes ((Unit!21182 0))(
  ( (Unit!21183) )
))
(declare-fun lt!291519 () Unit!21182)

(declare-fun e!360740 () Unit!21182)

(assert (=> b!630929 (= lt!291519 e!360740)))

(declare-fun c!71810 () Bool)

(assert (=> b!630929 (= c!71810 (= lt!291517 Undefined!6706))))

(declare-fun lt!291512 () (_ BitVec 64))

(assert (=> b!630929 (= lt!291517 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291512 lt!291515 mask!3053))))

(declare-fun e!360745 () Bool)

(assert (=> b!630929 e!360745))

(declare-fun res!408039 () Bool)

(assert (=> b!630929 (=> (not res!408039) (not e!360745))))

(declare-fun lt!291511 () SeekEntryResult!6706)

(declare-fun lt!291516 () (_ BitVec 32))

(assert (=> b!630929 (= res!408039 (= lt!291511 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291516 vacantSpotIndex!68 lt!291512 lt!291515 mask!3053)))))

(assert (=> b!630929 (= lt!291511 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291516 vacantSpotIndex!68 (select (arr!18259 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!630929 (= lt!291512 (select (store (arr!18259 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291513 () Unit!21182)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38057 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21182)

(assert (=> b!630929 (= lt!291513 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291516 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630929 (= lt!291516 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630930 () Bool)

(declare-fun res!408050 () Bool)

(assert (=> b!630930 (=> (not res!408050) (not e!360741))))

(declare-fun arrayContainsKey!0 (array!38057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630930 (= res!408050 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630931 () Bool)

(declare-fun res!408042 () Bool)

(assert (=> b!630931 (=> (not res!408042) (not e!360743))))

(assert (=> b!630931 (= res!408042 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18259 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630932 () Bool)

(assert (=> b!630932 (= e!360741 e!360743)))

(declare-fun res!408046 () Bool)

(assert (=> b!630932 (=> (not res!408046) (not e!360743))))

(declare-fun lt!291518 () SeekEntryResult!6706)

(assert (=> b!630932 (= res!408046 (or (= lt!291518 (MissingZero!6706 i!1108)) (= lt!291518 (MissingVacant!6706 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38057 (_ BitVec 32)) SeekEntryResult!6706)

(assert (=> b!630932 (= lt!291518 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!630933 () Bool)

(declare-fun Unit!21184 () Unit!21182)

(assert (=> b!630933 (= e!360740 Unit!21184)))

(assert (=> b!630933 false))

(declare-fun b!630934 () Bool)

(declare-fun res!408045 () Bool)

(assert (=> b!630934 (=> (not res!408045) (not e!360741))))

(assert (=> b!630934 (= res!408045 (validKeyInArray!0 (select (arr!18259 a!2986) j!136)))))

(declare-fun b!630935 () Bool)

(declare-fun res!408043 () Bool)

(assert (=> b!630935 (=> (not res!408043) (not e!360741))))

(assert (=> b!630935 (= res!408043 (and (= (size!18623 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18623 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18623 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630936 () Bool)

(declare-fun Unit!21185 () Unit!21182)

(assert (=> b!630936 (= e!360740 Unit!21185)))

(declare-fun b!630937 () Bool)

(assert (=> b!630937 (= e!360745 (= lt!291514 lt!291511))))

(declare-fun b!630938 () Bool)

(declare-fun res!408048 () Bool)

(assert (=> b!630938 (=> (not res!408048) (not e!360743))))

(declare-datatypes ((List!12353 0))(
  ( (Nil!12350) (Cons!12349 (h!13394 (_ BitVec 64)) (t!18589 List!12353)) )
))
(declare-fun arrayNoDuplicates!0 (array!38057 (_ BitVec 32) List!12353) Bool)

(assert (=> b!630938 (= res!408048 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12350))))

(assert (= (and start!57020 res!408049) b!630935))

(assert (= (and b!630935 res!408043) b!630934))

(assert (= (and b!630934 res!408045) b!630927))

(assert (= (and b!630927 res!408044) b!630930))

(assert (= (and b!630930 res!408050) b!630932))

(assert (= (and b!630932 res!408046) b!630926))

(assert (= (and b!630926 res!408041) b!630938))

(assert (= (and b!630938 res!408048) b!630931))

(assert (= (and b!630931 res!408042) b!630925))

(assert (= (and b!630925 res!408047) b!630928))

(assert (= (and b!630928 res!408040) b!630929))

(assert (= (and b!630929 res!408039) b!630937))

(assert (= (and b!630929 c!71810) b!630933))

(assert (= (and b!630929 (not c!71810)) b!630936))

(declare-fun m!605929 () Bool)

(assert (=> b!630929 m!605929))

(declare-fun m!605931 () Bool)

(assert (=> b!630929 m!605931))

(declare-fun m!605933 () Bool)

(assert (=> b!630929 m!605933))

(declare-fun m!605935 () Bool)

(assert (=> b!630929 m!605935))

(declare-fun m!605937 () Bool)

(assert (=> b!630929 m!605937))

(assert (=> b!630929 m!605933))

(declare-fun m!605939 () Bool)

(assert (=> b!630929 m!605939))

(declare-fun m!605941 () Bool)

(assert (=> b!630929 m!605941))

(declare-fun m!605943 () Bool)

(assert (=> b!630929 m!605943))

(declare-fun m!605945 () Bool)

(assert (=> b!630926 m!605945))

(assert (=> b!630925 m!605937))

(declare-fun m!605947 () Bool)

(assert (=> b!630925 m!605947))

(declare-fun m!605949 () Bool)

(assert (=> b!630928 m!605949))

(assert (=> b!630928 m!605933))

(assert (=> b!630928 m!605933))

(declare-fun m!605951 () Bool)

(assert (=> b!630928 m!605951))

(declare-fun m!605953 () Bool)

(assert (=> b!630932 m!605953))

(declare-fun m!605955 () Bool)

(assert (=> start!57020 m!605955))

(declare-fun m!605957 () Bool)

(assert (=> start!57020 m!605957))

(declare-fun m!605959 () Bool)

(assert (=> b!630938 m!605959))

(declare-fun m!605961 () Bool)

(assert (=> b!630931 m!605961))

(declare-fun m!605963 () Bool)

(assert (=> b!630930 m!605963))

(assert (=> b!630934 m!605933))

(assert (=> b!630934 m!605933))

(declare-fun m!605965 () Bool)

(assert (=> b!630934 m!605965))

(declare-fun m!605967 () Bool)

(assert (=> b!630927 m!605967))

(check-sat (not b!630932) (not b!630927) (not start!57020) (not b!630926) (not b!630928) (not b!630934) (not b!630938) (not b!630929) (not b!630930))
(check-sat)
