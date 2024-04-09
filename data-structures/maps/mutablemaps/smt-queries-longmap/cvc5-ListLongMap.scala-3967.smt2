; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53890 () Bool)

(assert start!53890)

(declare-fun b!587419 () Bool)

(declare-fun e!335571 () Bool)

(assert (=> b!587419 (= e!335571 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36688 0))(
  ( (array!36689 (arr!17613 (Array (_ BitVec 32) (_ BitVec 64))) (size!17977 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36688)

(declare-fun lt!266409 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6060 0))(
  ( (MissingZero!6060 (index!26470 (_ BitVec 32))) (Found!6060 (index!26471 (_ BitVec 32))) (Intermediate!6060 (undefined!6872 Bool) (index!26472 (_ BitVec 32)) (x!55309 (_ BitVec 32))) (Undefined!6060) (MissingVacant!6060 (index!26473 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36688 (_ BitVec 32)) SeekEntryResult!6060)

(assert (=> b!587419 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266409 vacantSpotIndex!68 (select (arr!17613 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266409 vacantSpotIndex!68 (select (store (arr!17613 a!2986) i!1108 k!1786) j!136) (array!36689 (store (arr!17613 a!2986) i!1108 k!1786) (size!17977 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18244 0))(
  ( (Unit!18245) )
))
(declare-fun lt!266411 () Unit!18244)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36688 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18244)

(assert (=> b!587419 (= lt!266411 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266409 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587419 (= lt!266409 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587420 () Bool)

(declare-fun res!375213 () Bool)

(declare-fun e!335570 () Bool)

(assert (=> b!587420 (=> (not res!375213) (not e!335570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587420 (= res!375213 (validKeyInArray!0 k!1786))))

(declare-fun b!587421 () Bool)

(declare-fun res!375208 () Bool)

(assert (=> b!587421 (=> (not res!375208) (not e!335570))))

(declare-fun arrayContainsKey!0 (array!36688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587421 (= res!375208 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587422 () Bool)

(declare-fun res!375215 () Bool)

(assert (=> b!587422 (=> (not res!375215) (not e!335570))))

(assert (=> b!587422 (= res!375215 (validKeyInArray!0 (select (arr!17613 a!2986) j!136)))))

(declare-fun b!587423 () Bool)

(declare-fun res!375211 () Bool)

(assert (=> b!587423 (=> (not res!375211) (not e!335570))))

(assert (=> b!587423 (= res!375211 (and (= (size!17977 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17977 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17977 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587424 () Bool)

(declare-fun res!375214 () Bool)

(assert (=> b!587424 (=> (not res!375214) (not e!335571))))

(assert (=> b!587424 (= res!375214 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17613 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17613 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587425 () Bool)

(declare-fun res!375210 () Bool)

(assert (=> b!587425 (=> (not res!375210) (not e!335571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36688 (_ BitVec 32)) Bool)

(assert (=> b!587425 (= res!375210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587426 () Bool)

(assert (=> b!587426 (= e!335570 e!335571)))

(declare-fun res!375207 () Bool)

(assert (=> b!587426 (=> (not res!375207) (not e!335571))))

(declare-fun lt!266410 () SeekEntryResult!6060)

(assert (=> b!587426 (= res!375207 (or (= lt!266410 (MissingZero!6060 i!1108)) (= lt!266410 (MissingVacant!6060 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36688 (_ BitVec 32)) SeekEntryResult!6060)

(assert (=> b!587426 (= lt!266410 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587427 () Bool)

(declare-fun res!375209 () Bool)

(assert (=> b!587427 (=> (not res!375209) (not e!335571))))

(assert (=> b!587427 (= res!375209 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17613 a!2986) j!136) a!2986 mask!3053) (Found!6060 j!136)))))

(declare-fun b!587428 () Bool)

(declare-fun res!375212 () Bool)

(assert (=> b!587428 (=> (not res!375212) (not e!335571))))

(assert (=> b!587428 (= res!375212 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17613 a!2986) index!984) (select (arr!17613 a!2986) j!136))) (not (= (select (arr!17613 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!375206 () Bool)

(assert (=> start!53890 (=> (not res!375206) (not e!335570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53890 (= res!375206 (validMask!0 mask!3053))))

(assert (=> start!53890 e!335570))

(assert (=> start!53890 true))

(declare-fun array_inv!13387 (array!36688) Bool)

(assert (=> start!53890 (array_inv!13387 a!2986)))

(declare-fun b!587429 () Bool)

(declare-fun res!375205 () Bool)

(assert (=> b!587429 (=> (not res!375205) (not e!335571))))

(declare-datatypes ((List!11707 0))(
  ( (Nil!11704) (Cons!11703 (h!12748 (_ BitVec 64)) (t!17943 List!11707)) )
))
(declare-fun arrayNoDuplicates!0 (array!36688 (_ BitVec 32) List!11707) Bool)

(assert (=> b!587429 (= res!375205 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11704))))

(assert (= (and start!53890 res!375206) b!587423))

(assert (= (and b!587423 res!375211) b!587422))

(assert (= (and b!587422 res!375215) b!587420))

(assert (= (and b!587420 res!375213) b!587421))

(assert (= (and b!587421 res!375208) b!587426))

(assert (= (and b!587426 res!375207) b!587425))

(assert (= (and b!587425 res!375210) b!587429))

(assert (= (and b!587429 res!375205) b!587424))

(assert (= (and b!587424 res!375214) b!587427))

(assert (= (and b!587427 res!375209) b!587428))

(assert (= (and b!587428 res!375212) b!587419))

(declare-fun m!565897 () Bool)

(assert (=> b!587427 m!565897))

(assert (=> b!587427 m!565897))

(declare-fun m!565899 () Bool)

(assert (=> b!587427 m!565899))

(declare-fun m!565901 () Bool)

(assert (=> b!587419 m!565901))

(declare-fun m!565903 () Bool)

(assert (=> b!587419 m!565903))

(assert (=> b!587419 m!565903))

(declare-fun m!565905 () Bool)

(assert (=> b!587419 m!565905))

(assert (=> b!587419 m!565897))

(declare-fun m!565907 () Bool)

(assert (=> b!587419 m!565907))

(assert (=> b!587419 m!565897))

(declare-fun m!565909 () Bool)

(assert (=> b!587419 m!565909))

(declare-fun m!565911 () Bool)

(assert (=> b!587419 m!565911))

(declare-fun m!565913 () Bool)

(assert (=> b!587421 m!565913))

(declare-fun m!565915 () Bool)

(assert (=> start!53890 m!565915))

(declare-fun m!565917 () Bool)

(assert (=> start!53890 m!565917))

(declare-fun m!565919 () Bool)

(assert (=> b!587428 m!565919))

(assert (=> b!587428 m!565897))

(declare-fun m!565921 () Bool)

(assert (=> b!587420 m!565921))

(declare-fun m!565923 () Bool)

(assert (=> b!587426 m!565923))

(assert (=> b!587422 m!565897))

(assert (=> b!587422 m!565897))

(declare-fun m!565925 () Bool)

(assert (=> b!587422 m!565925))

(declare-fun m!565927 () Bool)

(assert (=> b!587429 m!565927))

(declare-fun m!565929 () Bool)

(assert (=> b!587424 m!565929))

(assert (=> b!587424 m!565907))

(declare-fun m!565931 () Bool)

(assert (=> b!587424 m!565931))

(declare-fun m!565933 () Bool)

(assert (=> b!587425 m!565933))

(push 1)

