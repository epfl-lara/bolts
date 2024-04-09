; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57364 () Bool)

(assert start!57364)

(declare-fun b!634583 () Bool)

(declare-datatypes ((Unit!21390 0))(
  ( (Unit!21391) )
))
(declare-fun e!362909 () Unit!21390)

(declare-fun Unit!21392 () Unit!21390)

(assert (=> b!634583 (= e!362909 Unit!21392)))

(declare-fun b!634584 () Bool)

(declare-fun e!362920 () Bool)

(declare-fun e!362913 () Bool)

(assert (=> b!634584 (= e!362920 e!362913)))

(declare-fun res!410601 () Bool)

(assert (=> b!634584 (=> (not res!410601) (not e!362913))))

(declare-datatypes ((SeekEntryResult!6758 0))(
  ( (MissingZero!6758 (index!29333 (_ BitVec 32))) (Found!6758 (index!29334 (_ BitVec 32))) (Intermediate!6758 (undefined!7570 Bool) (index!29335 (_ BitVec 32)) (x!58101 (_ BitVec 32))) (Undefined!6758) (MissingVacant!6758 (index!29336 (_ BitVec 32))) )
))
(declare-fun lt!293422 () SeekEntryResult!6758)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!634584 (= res!410601 (or (= lt!293422 (MissingZero!6758 i!1108)) (= lt!293422 (MissingVacant!6758 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38173 0))(
  ( (array!38174 (arr!18311 (Array (_ BitVec 32) (_ BitVec 64))) (size!18675 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38173)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38173 (_ BitVec 32)) SeekEntryResult!6758)

(assert (=> b!634584 (= lt!293422 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!634585 () Bool)

(declare-fun e!362918 () Bool)

(declare-fun e!362919 () Bool)

(assert (=> b!634585 (= e!362918 e!362919)))

(declare-fun res!410606 () Bool)

(assert (=> b!634585 (=> (not res!410606) (not e!362919))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293418 () array!38173)

(declare-fun arrayContainsKey!0 (array!38173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!634585 (= res!410606 (arrayContainsKey!0 lt!293418 (select (arr!18311 a!2986) j!136) j!136))))

(declare-fun b!634587 () Bool)

(declare-fun res!410596 () Bool)

(assert (=> b!634587 (=> (not res!410596) (not e!362913))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!634587 (= res!410596 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18311 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!634588 () Bool)

(declare-fun e!362914 () Bool)

(declare-fun e!362912 () Bool)

(assert (=> b!634588 (= e!362914 e!362912)))

(declare-fun res!410603 () Bool)

(assert (=> b!634588 (=> (not res!410603) (not e!362912))))

(declare-fun lt!293427 () SeekEntryResult!6758)

(assert (=> b!634588 (= res!410603 (and (= lt!293427 (Found!6758 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18311 a!2986) index!984) (select (arr!18311 a!2986) j!136))) (not (= (select (arr!18311 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38173 (_ BitVec 32)) SeekEntryResult!6758)

(assert (=> b!634588 (= lt!293427 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18311 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!634589 () Bool)

(declare-fun e!362915 () Bool)

(declare-fun lt!293424 () SeekEntryResult!6758)

(assert (=> b!634589 (= e!362915 (= lt!293427 lt!293424))))

(declare-fun b!634590 () Bool)

(declare-fun res!410605 () Bool)

(assert (=> b!634590 (=> (not res!410605) (not e!362920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!634590 (= res!410605 (validKeyInArray!0 k!1786))))

(declare-fun b!634591 () Bool)

(declare-fun res!410609 () Bool)

(assert (=> b!634591 (=> (not res!410609) (not e!362920))))

(assert (=> b!634591 (= res!410609 (and (= (size!18675 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18675 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18675 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!634592 () Bool)

(assert (=> b!634592 (= e!362913 e!362914)))

(declare-fun res!410607 () Bool)

(assert (=> b!634592 (=> (not res!410607) (not e!362914))))

(assert (=> b!634592 (= res!410607 (= (select (store (arr!18311 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!634592 (= lt!293418 (array!38174 (store (arr!18311 a!2986) i!1108 k!1786) (size!18675 a!2986)))))

(declare-fun b!634593 () Bool)

(declare-fun res!410595 () Bool)

(assert (=> b!634593 (=> (not res!410595) (not e!362913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38173 (_ BitVec 32)) Bool)

(assert (=> b!634593 (= res!410595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!634594 () Bool)

(declare-fun e!362917 () Bool)

(assert (=> b!634594 (= e!362917 e!362918)))

(declare-fun res!410598 () Bool)

(assert (=> b!634594 (=> res!410598 e!362918)))

(declare-fun lt!293426 () (_ BitVec 64))

(declare-fun lt!293419 () (_ BitVec 64))

(assert (=> b!634594 (= res!410598 (or (not (= (select (arr!18311 a!2986) j!136) lt!293419)) (not (= (select (arr!18311 a!2986) j!136) lt!293426)) (bvsge j!136 index!984)))))

(declare-fun b!634595 () Bool)

(declare-fun e!362916 () Bool)

(assert (=> b!634595 (= e!362912 (not e!362916))))

(declare-fun res!410602 () Bool)

(assert (=> b!634595 (=> res!410602 e!362916)))

(declare-fun lt!293425 () SeekEntryResult!6758)

(assert (=> b!634595 (= res!410602 (not (= lt!293425 (Found!6758 index!984))))))

(declare-fun lt!293420 () Unit!21390)

(assert (=> b!634595 (= lt!293420 e!362909)))

(declare-fun c!72362 () Bool)

(assert (=> b!634595 (= c!72362 (= lt!293425 Undefined!6758))))

(assert (=> b!634595 (= lt!293425 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293419 lt!293418 mask!3053))))

(assert (=> b!634595 e!362915))

(declare-fun res!410597 () Bool)

(assert (=> b!634595 (=> (not res!410597) (not e!362915))))

(declare-fun lt!293417 () (_ BitVec 32))

(assert (=> b!634595 (= res!410597 (= lt!293424 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293417 vacantSpotIndex!68 lt!293419 lt!293418 mask!3053)))))

(assert (=> b!634595 (= lt!293424 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293417 vacantSpotIndex!68 (select (arr!18311 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!634595 (= lt!293419 (select (store (arr!18311 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293421 () Unit!21390)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21390)

(assert (=> b!634595 (= lt!293421 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293417 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!634595 (= lt!293417 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!634596 () Bool)

(assert (=> b!634596 (= e!362919 (arrayContainsKey!0 lt!293418 (select (arr!18311 a!2986) j!136) index!984))))

(declare-fun b!634597 () Bool)

(declare-fun res!410600 () Bool)

(assert (=> b!634597 (=> (not res!410600) (not e!362913))))

(declare-datatypes ((List!12405 0))(
  ( (Nil!12402) (Cons!12401 (h!13446 (_ BitVec 64)) (t!18641 List!12405)) )
))
(declare-fun arrayNoDuplicates!0 (array!38173 (_ BitVec 32) List!12405) Bool)

(assert (=> b!634597 (= res!410600 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12402))))

(declare-fun res!410608 () Bool)

(assert (=> start!57364 (=> (not res!410608) (not e!362920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57364 (= res!410608 (validMask!0 mask!3053))))

(assert (=> start!57364 e!362920))

(assert (=> start!57364 true))

(declare-fun array_inv!14085 (array!38173) Bool)

(assert (=> start!57364 (array_inv!14085 a!2986)))

(declare-fun b!634586 () Bool)

(declare-fun e!362910 () Bool)

(assert (=> b!634586 (= e!362910 true)))

(assert (=> b!634586 (arrayContainsKey!0 lt!293418 (select (arr!18311 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293423 () Unit!21390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38173 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21390)

(assert (=> b!634586 (= lt!293423 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293418 (select (arr!18311 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!634598 () Bool)

(declare-fun res!410599 () Bool)

(assert (=> b!634598 (=> (not res!410599) (not e!362920))))

(assert (=> b!634598 (= res!410599 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!634599 () Bool)

(assert (=> b!634599 (= e!362916 e!362910)))

(declare-fun res!410594 () Bool)

(assert (=> b!634599 (=> res!410594 e!362910)))

(assert (=> b!634599 (= res!410594 (or (not (= (select (arr!18311 a!2986) j!136) lt!293419)) (not (= (select (arr!18311 a!2986) j!136) lt!293426)) (bvsge j!136 index!984)))))

(assert (=> b!634599 e!362917))

(declare-fun res!410593 () Bool)

(assert (=> b!634599 (=> (not res!410593) (not e!362917))))

(assert (=> b!634599 (= res!410593 (= lt!293426 (select (arr!18311 a!2986) j!136)))))

(assert (=> b!634599 (= lt!293426 (select (store (arr!18311 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!634600 () Bool)

(declare-fun Unit!21393 () Unit!21390)

(assert (=> b!634600 (= e!362909 Unit!21393)))

(assert (=> b!634600 false))

(declare-fun b!634601 () Bool)

(declare-fun res!410604 () Bool)

(assert (=> b!634601 (=> (not res!410604) (not e!362920))))

(assert (=> b!634601 (= res!410604 (validKeyInArray!0 (select (arr!18311 a!2986) j!136)))))

(assert (= (and start!57364 res!410608) b!634591))

(assert (= (and b!634591 res!410609) b!634601))

(assert (= (and b!634601 res!410604) b!634590))

(assert (= (and b!634590 res!410605) b!634598))

(assert (= (and b!634598 res!410599) b!634584))

(assert (= (and b!634584 res!410601) b!634593))

(assert (= (and b!634593 res!410595) b!634597))

(assert (= (and b!634597 res!410600) b!634587))

(assert (= (and b!634587 res!410596) b!634592))

(assert (= (and b!634592 res!410607) b!634588))

(assert (= (and b!634588 res!410603) b!634595))

(assert (= (and b!634595 res!410597) b!634589))

(assert (= (and b!634595 c!72362) b!634600))

(assert (= (and b!634595 (not c!72362)) b!634583))

(assert (= (and b!634595 (not res!410602)) b!634599))

(assert (= (and b!634599 res!410593) b!634594))

(assert (= (and b!634594 (not res!410598)) b!634585))

(assert (= (and b!634585 res!410606) b!634596))

(assert (= (and b!634599 (not res!410594)) b!634586))

(declare-fun m!609097 () Bool)

(assert (=> b!634593 m!609097))

(declare-fun m!609099 () Bool)

(assert (=> b!634587 m!609099))

(declare-fun m!609101 () Bool)

(assert (=> b!634588 m!609101))

(declare-fun m!609103 () Bool)

(assert (=> b!634588 m!609103))

(assert (=> b!634588 m!609103))

(declare-fun m!609105 () Bool)

(assert (=> b!634588 m!609105))

(declare-fun m!609107 () Bool)

(assert (=> b!634595 m!609107))

(declare-fun m!609109 () Bool)

(assert (=> b!634595 m!609109))

(declare-fun m!609111 () Bool)

(assert (=> b!634595 m!609111))

(assert (=> b!634595 m!609103))

(assert (=> b!634595 m!609103))

(declare-fun m!609113 () Bool)

(assert (=> b!634595 m!609113))

(declare-fun m!609115 () Bool)

(assert (=> b!634595 m!609115))

(declare-fun m!609117 () Bool)

(assert (=> b!634595 m!609117))

(declare-fun m!609119 () Bool)

(assert (=> b!634595 m!609119))

(assert (=> b!634599 m!609103))

(assert (=> b!634599 m!609119))

(declare-fun m!609121 () Bool)

(assert (=> b!634599 m!609121))

(assert (=> b!634585 m!609103))

(assert (=> b!634585 m!609103))

(declare-fun m!609123 () Bool)

(assert (=> b!634585 m!609123))

(declare-fun m!609125 () Bool)

(assert (=> b!634584 m!609125))

(declare-fun m!609127 () Bool)

(assert (=> b!634597 m!609127))

(assert (=> b!634594 m!609103))

(declare-fun m!609129 () Bool)

(assert (=> b!634598 m!609129))

(assert (=> b!634596 m!609103))

(assert (=> b!634596 m!609103))

(declare-fun m!609131 () Bool)

(assert (=> b!634596 m!609131))

(assert (=> b!634586 m!609103))

(assert (=> b!634586 m!609103))

(declare-fun m!609133 () Bool)

(assert (=> b!634586 m!609133))

(assert (=> b!634586 m!609103))

(declare-fun m!609135 () Bool)

(assert (=> b!634586 m!609135))

(declare-fun m!609137 () Bool)

(assert (=> b!634590 m!609137))

(assert (=> b!634592 m!609119))

(declare-fun m!609139 () Bool)

(assert (=> b!634592 m!609139))

(declare-fun m!609141 () Bool)

(assert (=> start!57364 m!609141))

(declare-fun m!609143 () Bool)

(assert (=> start!57364 m!609143))

(assert (=> b!634601 m!609103))

(assert (=> b!634601 m!609103))

(declare-fun m!609145 () Bool)

(assert (=> b!634601 m!609145))

(push 1)

