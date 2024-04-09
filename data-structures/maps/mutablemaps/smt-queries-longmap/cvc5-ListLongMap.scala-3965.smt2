; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53878 () Bool)

(assert start!53878)

(declare-fun b!587221 () Bool)

(declare-fun res!375011 () Bool)

(declare-fun e!335516 () Bool)

(assert (=> b!587221 (=> (not res!375011) (not e!335516))))

(declare-datatypes ((array!36676 0))(
  ( (array!36677 (arr!17607 (Array (_ BitVec 32) (_ BitVec 64))) (size!17971 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36676)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36676 (_ BitVec 32)) Bool)

(assert (=> b!587221 (= res!375011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!375008 () Bool)

(declare-fun e!335517 () Bool)

(assert (=> start!53878 (=> (not res!375008) (not e!335517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53878 (= res!375008 (validMask!0 mask!3053))))

(assert (=> start!53878 e!335517))

(assert (=> start!53878 true))

(declare-fun array_inv!13381 (array!36676) Bool)

(assert (=> start!53878 (array_inv!13381 a!2986)))

(declare-fun b!587222 () Bool)

(declare-fun res!375016 () Bool)

(assert (=> b!587222 (=> (not res!375016) (not e!335516))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6054 0))(
  ( (MissingZero!6054 (index!26446 (_ BitVec 32))) (Found!6054 (index!26447 (_ BitVec 32))) (Intermediate!6054 (undefined!6866 Bool) (index!26448 (_ BitVec 32)) (x!55287 (_ BitVec 32))) (Undefined!6054) (MissingVacant!6054 (index!26449 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36676 (_ BitVec 32)) SeekEntryResult!6054)

(assert (=> b!587222 (= res!375016 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17607 a!2986) j!136) a!2986 mask!3053) (Found!6054 j!136)))))

(declare-fun b!587223 () Bool)

(declare-fun res!375007 () Bool)

(assert (=> b!587223 (=> (not res!375007) (not e!335517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587223 (= res!375007 (validKeyInArray!0 (select (arr!17607 a!2986) j!136)))))

(declare-fun b!587224 () Bool)

(declare-fun res!375009 () Bool)

(assert (=> b!587224 (=> (not res!375009) (not e!335516))))

(declare-datatypes ((List!11701 0))(
  ( (Nil!11698) (Cons!11697 (h!12742 (_ BitVec 64)) (t!17937 List!11701)) )
))
(declare-fun arrayNoDuplicates!0 (array!36676 (_ BitVec 32) List!11701) Bool)

(assert (=> b!587224 (= res!375009 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11698))))

(declare-fun b!587225 () Bool)

(declare-fun lt!266356 () (_ BitVec 32))

(assert (=> b!587225 (= e!335516 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (bvslt lt!266356 #b00000000000000000000000000000000) (bvsge lt!266356 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000))))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!587225 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266356 vacantSpotIndex!68 (select (arr!17607 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266356 vacantSpotIndex!68 (select (store (arr!17607 a!2986) i!1108 k!1786) j!136) (array!36677 (store (arr!17607 a!2986) i!1108 k!1786) (size!17971 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18232 0))(
  ( (Unit!18233) )
))
(declare-fun lt!266357 () Unit!18232)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36676 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18232)

(assert (=> b!587225 (= lt!266357 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266356 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587225 (= lt!266356 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587226 () Bool)

(assert (=> b!587226 (= e!335517 e!335516)))

(declare-fun res!375010 () Bool)

(assert (=> b!587226 (=> (not res!375010) (not e!335516))))

(declare-fun lt!266355 () SeekEntryResult!6054)

(assert (=> b!587226 (= res!375010 (or (= lt!266355 (MissingZero!6054 i!1108)) (= lt!266355 (MissingVacant!6054 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36676 (_ BitVec 32)) SeekEntryResult!6054)

(assert (=> b!587226 (= lt!266355 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587227 () Bool)

(declare-fun res!375012 () Bool)

(assert (=> b!587227 (=> (not res!375012) (not e!335517))))

(declare-fun arrayContainsKey!0 (array!36676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587227 (= res!375012 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587228 () Bool)

(declare-fun res!375015 () Bool)

(assert (=> b!587228 (=> (not res!375015) (not e!335516))))

(assert (=> b!587228 (= res!375015 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17607 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17607 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587229 () Bool)

(declare-fun res!375017 () Bool)

(assert (=> b!587229 (=> (not res!375017) (not e!335516))))

(assert (=> b!587229 (= res!375017 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17607 a!2986) index!984) (select (arr!17607 a!2986) j!136))) (not (= (select (arr!17607 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587230 () Bool)

(declare-fun res!375013 () Bool)

(assert (=> b!587230 (=> (not res!375013) (not e!335517))))

(assert (=> b!587230 (= res!375013 (and (= (size!17971 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17971 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17971 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587231 () Bool)

(declare-fun res!375014 () Bool)

(assert (=> b!587231 (=> (not res!375014) (not e!335517))))

(assert (=> b!587231 (= res!375014 (validKeyInArray!0 k!1786))))

(assert (= (and start!53878 res!375008) b!587230))

(assert (= (and b!587230 res!375013) b!587223))

(assert (= (and b!587223 res!375007) b!587231))

(assert (= (and b!587231 res!375014) b!587227))

(assert (= (and b!587227 res!375012) b!587226))

(assert (= (and b!587226 res!375010) b!587221))

(assert (= (and b!587221 res!375011) b!587224))

(assert (= (and b!587224 res!375009) b!587228))

(assert (= (and b!587228 res!375015) b!587222))

(assert (= (and b!587222 res!375016) b!587229))

(assert (= (and b!587229 res!375017) b!587225))

(declare-fun m!565669 () Bool)

(assert (=> b!587228 m!565669))

(declare-fun m!565671 () Bool)

(assert (=> b!587228 m!565671))

(declare-fun m!565673 () Bool)

(assert (=> b!587228 m!565673))

(declare-fun m!565675 () Bool)

(assert (=> b!587229 m!565675))

(declare-fun m!565677 () Bool)

(assert (=> b!587229 m!565677))

(declare-fun m!565679 () Bool)

(assert (=> b!587231 m!565679))

(declare-fun m!565681 () Bool)

(assert (=> b!587224 m!565681))

(assert (=> b!587222 m!565677))

(assert (=> b!587222 m!565677))

(declare-fun m!565683 () Bool)

(assert (=> b!587222 m!565683))

(declare-fun m!565685 () Bool)

(assert (=> b!587227 m!565685))

(declare-fun m!565687 () Bool)

(assert (=> b!587226 m!565687))

(declare-fun m!565689 () Bool)

(assert (=> b!587225 m!565689))

(declare-fun m!565691 () Bool)

(assert (=> b!587225 m!565691))

(assert (=> b!587225 m!565677))

(assert (=> b!587225 m!565671))

(assert (=> b!587225 m!565691))

(declare-fun m!565693 () Bool)

(assert (=> b!587225 m!565693))

(declare-fun m!565695 () Bool)

(assert (=> b!587225 m!565695))

(assert (=> b!587225 m!565677))

(declare-fun m!565697 () Bool)

(assert (=> b!587225 m!565697))

(assert (=> b!587223 m!565677))

(assert (=> b!587223 m!565677))

(declare-fun m!565699 () Bool)

(assert (=> b!587223 m!565699))

(declare-fun m!565701 () Bool)

(assert (=> start!53878 m!565701))

(declare-fun m!565703 () Bool)

(assert (=> start!53878 m!565703))

(declare-fun m!565705 () Bool)

(assert (=> b!587221 m!565705))

(push 1)

