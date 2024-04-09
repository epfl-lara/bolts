; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53888 () Bool)

(assert start!53888)

(declare-fun b!587386 () Bool)

(declare-fun res!375179 () Bool)

(declare-fun e!335563 () Bool)

(assert (=> b!587386 (=> (not res!375179) (not e!335563))))

(declare-datatypes ((array!36686 0))(
  ( (array!36687 (arr!17612 (Array (_ BitVec 32) (_ BitVec 64))) (size!17976 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36686)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587386 (= res!375179 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587387 () Bool)

(declare-fun e!335562 () Bool)

(assert (=> b!587387 (= e!335562 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266400 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6059 0))(
  ( (MissingZero!6059 (index!26466 (_ BitVec 32))) (Found!6059 (index!26467 (_ BitVec 32))) (Intermediate!6059 (undefined!6871 Bool) (index!26468 (_ BitVec 32)) (x!55300 (_ BitVec 32))) (Undefined!6059) (MissingVacant!6059 (index!26469 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36686 (_ BitVec 32)) SeekEntryResult!6059)

(assert (=> b!587387 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266400 vacantSpotIndex!68 (select (arr!17612 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266400 vacantSpotIndex!68 (select (store (arr!17612 a!2986) i!1108 k!1786) j!136) (array!36687 (store (arr!17612 a!2986) i!1108 k!1786) (size!17976 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18242 0))(
  ( (Unit!18243) )
))
(declare-fun lt!266402 () Unit!18242)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36686 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18242)

(assert (=> b!587387 (= lt!266402 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266400 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587387 (= lt!266400 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587388 () Bool)

(declare-fun res!375174 () Bool)

(assert (=> b!587388 (=> (not res!375174) (not e!335563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587388 (= res!375174 (validKeyInArray!0 k!1786))))

(declare-fun b!587389 () Bool)

(assert (=> b!587389 (= e!335563 e!335562)))

(declare-fun res!375182 () Bool)

(assert (=> b!587389 (=> (not res!375182) (not e!335562))))

(declare-fun lt!266401 () SeekEntryResult!6059)

(assert (=> b!587389 (= res!375182 (or (= lt!266401 (MissingZero!6059 i!1108)) (= lt!266401 (MissingVacant!6059 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36686 (_ BitVec 32)) SeekEntryResult!6059)

(assert (=> b!587389 (= lt!266401 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587390 () Bool)

(declare-fun res!375175 () Bool)

(assert (=> b!587390 (=> (not res!375175) (not e!335562))))

(assert (=> b!587390 (= res!375175 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17612 a!2986) index!984) (select (arr!17612 a!2986) j!136))) (not (= (select (arr!17612 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!375177 () Bool)

(assert (=> start!53888 (=> (not res!375177) (not e!335563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53888 (= res!375177 (validMask!0 mask!3053))))

(assert (=> start!53888 e!335563))

(assert (=> start!53888 true))

(declare-fun array_inv!13386 (array!36686) Bool)

(assert (=> start!53888 (array_inv!13386 a!2986)))

(declare-fun b!587391 () Bool)

(declare-fun res!375173 () Bool)

(assert (=> b!587391 (=> (not res!375173) (not e!335562))))

(assert (=> b!587391 (= res!375173 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17612 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17612 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587392 () Bool)

(declare-fun res!375181 () Bool)

(assert (=> b!587392 (=> (not res!375181) (not e!335562))))

(assert (=> b!587392 (= res!375181 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17612 a!2986) j!136) a!2986 mask!3053) (Found!6059 j!136)))))

(declare-fun b!587393 () Bool)

(declare-fun res!375178 () Bool)

(assert (=> b!587393 (=> (not res!375178) (not e!335562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36686 (_ BitVec 32)) Bool)

(assert (=> b!587393 (= res!375178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587394 () Bool)

(declare-fun res!375172 () Bool)

(assert (=> b!587394 (=> (not res!375172) (not e!335563))))

(assert (=> b!587394 (= res!375172 (and (= (size!17976 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17976 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17976 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587395 () Bool)

(declare-fun res!375176 () Bool)

(assert (=> b!587395 (=> (not res!375176) (not e!335563))))

(assert (=> b!587395 (= res!375176 (validKeyInArray!0 (select (arr!17612 a!2986) j!136)))))

(declare-fun b!587396 () Bool)

(declare-fun res!375180 () Bool)

(assert (=> b!587396 (=> (not res!375180) (not e!335562))))

(declare-datatypes ((List!11706 0))(
  ( (Nil!11703) (Cons!11702 (h!12747 (_ BitVec 64)) (t!17942 List!11706)) )
))
(declare-fun arrayNoDuplicates!0 (array!36686 (_ BitVec 32) List!11706) Bool)

(assert (=> b!587396 (= res!375180 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11703))))

(assert (= (and start!53888 res!375177) b!587394))

(assert (= (and b!587394 res!375172) b!587395))

(assert (= (and b!587395 res!375176) b!587388))

(assert (= (and b!587388 res!375174) b!587386))

(assert (= (and b!587386 res!375179) b!587389))

(assert (= (and b!587389 res!375182) b!587393))

(assert (= (and b!587393 res!375178) b!587396))

(assert (= (and b!587396 res!375180) b!587391))

(assert (= (and b!587391 res!375173) b!587392))

(assert (= (and b!587392 res!375181) b!587390))

(assert (= (and b!587390 res!375175) b!587387))

(declare-fun m!565859 () Bool)

(assert (=> b!587393 m!565859))

(declare-fun m!565861 () Bool)

(assert (=> b!587387 m!565861))

(declare-fun m!565863 () Bool)

(assert (=> b!587387 m!565863))

(declare-fun m!565865 () Bool)

(assert (=> b!587387 m!565865))

(declare-fun m!565867 () Bool)

(assert (=> b!587387 m!565867))

(declare-fun m!565869 () Bool)

(assert (=> b!587387 m!565869))

(assert (=> b!587387 m!565867))

(declare-fun m!565871 () Bool)

(assert (=> b!587387 m!565871))

(assert (=> b!587387 m!565863))

(declare-fun m!565873 () Bool)

(assert (=> b!587387 m!565873))

(assert (=> b!587395 m!565867))

(assert (=> b!587395 m!565867))

(declare-fun m!565875 () Bool)

(assert (=> b!587395 m!565875))

(declare-fun m!565877 () Bool)

(assert (=> b!587396 m!565877))

(declare-fun m!565879 () Bool)

(assert (=> b!587386 m!565879))

(declare-fun m!565881 () Bool)

(assert (=> b!587389 m!565881))

(declare-fun m!565883 () Bool)

(assert (=> b!587390 m!565883))

(assert (=> b!587390 m!565867))

(assert (=> b!587392 m!565867))

(assert (=> b!587392 m!565867))

(declare-fun m!565885 () Bool)

(assert (=> b!587392 m!565885))

(declare-fun m!565887 () Bool)

(assert (=> b!587391 m!565887))

(assert (=> b!587391 m!565869))

(declare-fun m!565889 () Bool)

(assert (=> b!587391 m!565889))

(declare-fun m!565891 () Bool)

(assert (=> b!587388 m!565891))

(declare-fun m!565893 () Bool)

(assert (=> start!53888 m!565893))

(declare-fun m!565895 () Bool)

(assert (=> start!53888 m!565895))

(push 1)

