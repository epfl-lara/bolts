; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57102 () Bool)

(assert start!57102)

(declare-fun b!631669 () Bool)

(declare-fun e!361152 () Bool)

(declare-fun e!361153 () Bool)

(assert (=> b!631669 (= e!361152 e!361153)))

(declare-fun res!408529 () Bool)

(assert (=> b!631669 (=> (not res!408529) (not e!361153))))

(declare-datatypes ((SeekEntryResult!6717 0))(
  ( (MissingZero!6717 (index!29160 (_ BitVec 32))) (Found!6717 (index!29161 (_ BitVec 32))) (Intermediate!6717 (undefined!7529 Bool) (index!29162 (_ BitVec 32)) (x!57929 (_ BitVec 32))) (Undefined!6717) (MissingVacant!6717 (index!29163 (_ BitVec 32))) )
))
(declare-fun lt!291908 () SeekEntryResult!6717)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!631669 (= res!408529 (or (= lt!291908 (MissingZero!6717 i!1108)) (= lt!291908 (MissingVacant!6717 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38082 0))(
  ( (array!38083 (arr!18270 (Array (_ BitVec 32) (_ BitVec 64))) (size!18634 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38082)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38082 (_ BitVec 32)) SeekEntryResult!6717)

(assert (=> b!631669 (= lt!291908 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631670 () Bool)

(declare-fun res!408525 () Bool)

(assert (=> b!631670 (=> (not res!408525) (not e!361152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631670 (= res!408525 (validKeyInArray!0 k!1786))))

(declare-fun b!631671 () Bool)

(declare-fun res!408524 () Bool)

(assert (=> b!631671 (=> (not res!408524) (not e!361152))))

(declare-fun arrayContainsKey!0 (array!38082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631671 (= res!408524 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631672 () Bool)

(declare-fun e!361154 () Bool)

(declare-fun e!361159 () Bool)

(assert (=> b!631672 (= e!361154 (not e!361159))))

(declare-fun res!408530 () Bool)

(assert (=> b!631672 (=> res!408530 e!361159)))

(declare-fun lt!291912 () SeekEntryResult!6717)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631672 (= res!408530 (not (= lt!291912 (Found!6717 index!984))))))

(declare-datatypes ((Unit!21226 0))(
  ( (Unit!21227) )
))
(declare-fun lt!291913 () Unit!21226)

(declare-fun e!361157 () Unit!21226)

(assert (=> b!631672 (= lt!291913 e!361157)))

(declare-fun c!71942 () Bool)

(assert (=> b!631672 (= c!71942 (= lt!291912 Undefined!6717))))

(declare-fun lt!291915 () (_ BitVec 64))

(declare-fun lt!291909 () array!38082)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38082 (_ BitVec 32)) SeekEntryResult!6717)

(assert (=> b!631672 (= lt!291912 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291915 lt!291909 mask!3053))))

(declare-fun e!361156 () Bool)

(assert (=> b!631672 e!361156))

(declare-fun res!408527 () Bool)

(assert (=> b!631672 (=> (not res!408527) (not e!361156))))

(declare-fun lt!291910 () (_ BitVec 32))

(declare-fun lt!291911 () SeekEntryResult!6717)

(assert (=> b!631672 (= res!408527 (= lt!291911 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291910 vacantSpotIndex!68 lt!291915 lt!291909 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!631672 (= lt!291911 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291910 vacantSpotIndex!68 (select (arr!18270 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631672 (= lt!291915 (select (store (arr!18270 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291914 () Unit!21226)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38082 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21226)

(assert (=> b!631672 (= lt!291914 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291910 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631672 (= lt!291910 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631673 () Bool)

(declare-fun e!361158 () Bool)

(assert (=> b!631673 (= e!361153 e!361158)))

(declare-fun res!408519 () Bool)

(assert (=> b!631673 (=> (not res!408519) (not e!361158))))

(assert (=> b!631673 (= res!408519 (= (select (store (arr!18270 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631673 (= lt!291909 (array!38083 (store (arr!18270 a!2986) i!1108 k!1786) (size!18634 a!2986)))))

(declare-fun b!631674 () Bool)

(assert (=> b!631674 (= e!361159 true)))

(assert (=> b!631674 (= (select (store (arr!18270 a!2986) i!1108 k!1786) index!984) (select (arr!18270 a!2986) j!136))))

(declare-fun b!631675 () Bool)

(declare-fun lt!291907 () SeekEntryResult!6717)

(assert (=> b!631675 (= e!361156 (= lt!291907 lt!291911))))

(declare-fun b!631676 () Bool)

(declare-fun res!408528 () Bool)

(assert (=> b!631676 (=> (not res!408528) (not e!361152))))

(assert (=> b!631676 (= res!408528 (and (= (size!18634 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18634 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18634 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631677 () Bool)

(declare-fun res!408522 () Bool)

(assert (=> b!631677 (=> (not res!408522) (not e!361153))))

(assert (=> b!631677 (= res!408522 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18270 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!408526 () Bool)

(assert (=> start!57102 (=> (not res!408526) (not e!361152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57102 (= res!408526 (validMask!0 mask!3053))))

(assert (=> start!57102 e!361152))

(assert (=> start!57102 true))

(declare-fun array_inv!14044 (array!38082) Bool)

(assert (=> start!57102 (array_inv!14044 a!2986)))

(declare-fun b!631668 () Bool)

(declare-fun res!408521 () Bool)

(assert (=> b!631668 (=> (not res!408521) (not e!361152))))

(assert (=> b!631668 (= res!408521 (validKeyInArray!0 (select (arr!18270 a!2986) j!136)))))

(declare-fun b!631678 () Bool)

(assert (=> b!631678 (= e!361158 e!361154)))

(declare-fun res!408523 () Bool)

(assert (=> b!631678 (=> (not res!408523) (not e!361154))))

(assert (=> b!631678 (= res!408523 (and (= lt!291907 (Found!6717 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18270 a!2986) index!984) (select (arr!18270 a!2986) j!136))) (not (= (select (arr!18270 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631678 (= lt!291907 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18270 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631679 () Bool)

(declare-fun res!408520 () Bool)

(assert (=> b!631679 (=> (not res!408520) (not e!361153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38082 (_ BitVec 32)) Bool)

(assert (=> b!631679 (= res!408520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631680 () Bool)

(declare-fun Unit!21228 () Unit!21226)

(assert (=> b!631680 (= e!361157 Unit!21228)))

(declare-fun b!631681 () Bool)

(declare-fun res!408518 () Bool)

(assert (=> b!631681 (=> (not res!408518) (not e!361153))))

(declare-datatypes ((List!12364 0))(
  ( (Nil!12361) (Cons!12360 (h!13405 (_ BitVec 64)) (t!18600 List!12364)) )
))
(declare-fun arrayNoDuplicates!0 (array!38082 (_ BitVec 32) List!12364) Bool)

(assert (=> b!631681 (= res!408518 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12361))))

(declare-fun b!631682 () Bool)

(declare-fun Unit!21229 () Unit!21226)

(assert (=> b!631682 (= e!361157 Unit!21229)))

(assert (=> b!631682 false))

(assert (= (and start!57102 res!408526) b!631676))

(assert (= (and b!631676 res!408528) b!631668))

(assert (= (and b!631668 res!408521) b!631670))

(assert (= (and b!631670 res!408525) b!631671))

(assert (= (and b!631671 res!408524) b!631669))

(assert (= (and b!631669 res!408529) b!631679))

(assert (= (and b!631679 res!408520) b!631681))

(assert (= (and b!631681 res!408518) b!631677))

(assert (= (and b!631677 res!408522) b!631673))

(assert (= (and b!631673 res!408519) b!631678))

(assert (= (and b!631678 res!408523) b!631672))

(assert (= (and b!631672 res!408527) b!631675))

(assert (= (and b!631672 c!71942) b!631682))

(assert (= (and b!631672 (not c!71942)) b!631680))

(assert (= (and b!631672 (not res!408530)) b!631674))

(declare-fun m!606591 () Bool)

(assert (=> b!631668 m!606591))

(assert (=> b!631668 m!606591))

(declare-fun m!606593 () Bool)

(assert (=> b!631668 m!606593))

(declare-fun m!606595 () Bool)

(assert (=> b!631677 m!606595))

(assert (=> b!631672 m!606591))

(declare-fun m!606597 () Bool)

(assert (=> b!631672 m!606597))

(declare-fun m!606599 () Bool)

(assert (=> b!631672 m!606599))

(assert (=> b!631672 m!606591))

(declare-fun m!606601 () Bool)

(assert (=> b!631672 m!606601))

(declare-fun m!606603 () Bool)

(assert (=> b!631672 m!606603))

(declare-fun m!606605 () Bool)

(assert (=> b!631672 m!606605))

(declare-fun m!606607 () Bool)

(assert (=> b!631672 m!606607))

(declare-fun m!606609 () Bool)

(assert (=> b!631672 m!606609))

(declare-fun m!606611 () Bool)

(assert (=> b!631671 m!606611))

(declare-fun m!606613 () Bool)

(assert (=> b!631681 m!606613))

(assert (=> b!631674 m!606609))

(declare-fun m!606615 () Bool)

(assert (=> b!631674 m!606615))

(assert (=> b!631674 m!606591))

(declare-fun m!606617 () Bool)

(assert (=> b!631669 m!606617))

(declare-fun m!606619 () Bool)

(assert (=> b!631679 m!606619))

(declare-fun m!606621 () Bool)

(assert (=> b!631678 m!606621))

(assert (=> b!631678 m!606591))

(assert (=> b!631678 m!606591))

(declare-fun m!606623 () Bool)

(assert (=> b!631678 m!606623))

(declare-fun m!606625 () Bool)

(assert (=> start!57102 m!606625))

(declare-fun m!606627 () Bool)

(assert (=> start!57102 m!606627))

(declare-fun m!606629 () Bool)

(assert (=> b!631670 m!606629))

(assert (=> b!631673 m!606609))

(declare-fun m!606631 () Bool)

(assert (=> b!631673 m!606631))

(push 1)

