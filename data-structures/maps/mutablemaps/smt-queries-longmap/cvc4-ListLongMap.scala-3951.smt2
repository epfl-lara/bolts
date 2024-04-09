; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53738 () Bool)

(assert start!53738)

(declare-fun res!373620 () Bool)

(declare-fun e!334994 () Bool)

(assert (=> start!53738 (=> (not res!373620) (not e!334994))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53738 (= res!373620 (validMask!0 mask!3053))))

(assert (=> start!53738 e!334994))

(assert (=> start!53738 true))

(declare-datatypes ((array!36593 0))(
  ( (array!36594 (arr!17567 (Array (_ BitVec 32) (_ BitVec 64))) (size!17931 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36593)

(declare-fun array_inv!13341 (array!36593) Bool)

(assert (=> start!53738 (array_inv!13341 a!2986)))

(declare-fun b!585649 () Bool)

(declare-fun res!373623 () Bool)

(assert (=> b!585649 (=> (not res!373623) (not e!334994))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585649 (= res!373623 (validKeyInArray!0 k!1786))))

(declare-fun b!585650 () Bool)

(declare-fun res!373625 () Bool)

(declare-fun e!334995 () Bool)

(assert (=> b!585650 (=> (not res!373625) (not e!334995))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585650 (= res!373625 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17567 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17567 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585651 () Bool)

(declare-fun res!373615 () Bool)

(assert (=> b!585651 (=> (not res!373615) (not e!334995))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!585651 (= res!373615 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17567 a!2986) index!984) (select (arr!17567 a!2986) j!136))) (not (= (select (arr!17567 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585652 () Bool)

(assert (=> b!585652 (= e!334994 e!334995)))

(declare-fun res!373624 () Bool)

(assert (=> b!585652 (=> (not res!373624) (not e!334995))))

(declare-datatypes ((SeekEntryResult!6014 0))(
  ( (MissingZero!6014 (index!26283 (_ BitVec 32))) (Found!6014 (index!26284 (_ BitVec 32))) (Intermediate!6014 (undefined!6826 Bool) (index!26285 (_ BitVec 32)) (x!55126 (_ BitVec 32))) (Undefined!6014) (MissingVacant!6014 (index!26286 (_ BitVec 32))) )
))
(declare-fun lt!265894 () SeekEntryResult!6014)

(assert (=> b!585652 (= res!373624 (or (= lt!265894 (MissingZero!6014 i!1108)) (= lt!265894 (MissingVacant!6014 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36593 (_ BitVec 32)) SeekEntryResult!6014)

(assert (=> b!585652 (= lt!265894 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585653 () Bool)

(declare-fun res!373621 () Bool)

(assert (=> b!585653 (=> (not res!373621) (not e!334995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36593 (_ BitVec 32)) Bool)

(assert (=> b!585653 (= res!373621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585654 () Bool)

(declare-fun res!373622 () Bool)

(assert (=> b!585654 (=> (not res!373622) (not e!334995))))

(declare-datatypes ((List!11661 0))(
  ( (Nil!11658) (Cons!11657 (h!12702 (_ BitVec 64)) (t!17897 List!11661)) )
))
(declare-fun arrayNoDuplicates!0 (array!36593 (_ BitVec 32) List!11661) Bool)

(assert (=> b!585654 (= res!373622 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11658))))

(declare-fun b!585655 () Bool)

(declare-fun res!373618 () Bool)

(assert (=> b!585655 (=> (not res!373618) (not e!334994))))

(declare-fun arrayContainsKey!0 (array!36593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585655 (= res!373618 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585656 () Bool)

(assert (=> b!585656 (= e!334995 (not true))))

(declare-fun lt!265895 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36593 (_ BitVec 32)) SeekEntryResult!6014)

(assert (=> b!585656 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265895 vacantSpotIndex!68 (select (arr!17567 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265895 vacantSpotIndex!68 (select (store (arr!17567 a!2986) i!1108 k!1786) j!136) (array!36594 (store (arr!17567 a!2986) i!1108 k!1786) (size!17931 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18152 0))(
  ( (Unit!18153) )
))
(declare-fun lt!265893 () Unit!18152)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18152)

(assert (=> b!585656 (= lt!265893 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265895 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585656 (= lt!265895 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585657 () Bool)

(declare-fun res!373616 () Bool)

(assert (=> b!585657 (=> (not res!373616) (not e!334994))))

(assert (=> b!585657 (= res!373616 (and (= (size!17931 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17931 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17931 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585658 () Bool)

(declare-fun res!373619 () Bool)

(assert (=> b!585658 (=> (not res!373619) (not e!334995))))

(assert (=> b!585658 (= res!373619 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17567 a!2986) j!136) a!2986 mask!3053) (Found!6014 j!136)))))

(declare-fun b!585659 () Bool)

(declare-fun res!373617 () Bool)

(assert (=> b!585659 (=> (not res!373617) (not e!334994))))

(assert (=> b!585659 (= res!373617 (validKeyInArray!0 (select (arr!17567 a!2986) j!136)))))

(assert (= (and start!53738 res!373620) b!585657))

(assert (= (and b!585657 res!373616) b!585659))

(assert (= (and b!585659 res!373617) b!585649))

(assert (= (and b!585649 res!373623) b!585655))

(assert (= (and b!585655 res!373618) b!585652))

(assert (= (and b!585652 res!373624) b!585653))

(assert (= (and b!585653 res!373621) b!585654))

(assert (= (and b!585654 res!373622) b!585650))

(assert (= (and b!585650 res!373625) b!585658))

(assert (= (and b!585658 res!373619) b!585651))

(assert (= (and b!585651 res!373615) b!585656))

(declare-fun m!563969 () Bool)

(assert (=> b!585655 m!563969))

(declare-fun m!563971 () Bool)

(assert (=> b!585650 m!563971))

(declare-fun m!563973 () Bool)

(assert (=> b!585650 m!563973))

(declare-fun m!563975 () Bool)

(assert (=> b!585650 m!563975))

(declare-fun m!563977 () Bool)

(assert (=> b!585651 m!563977))

(declare-fun m!563979 () Bool)

(assert (=> b!585651 m!563979))

(assert (=> b!585659 m!563979))

(assert (=> b!585659 m!563979))

(declare-fun m!563981 () Bool)

(assert (=> b!585659 m!563981))

(declare-fun m!563983 () Bool)

(assert (=> b!585654 m!563983))

(declare-fun m!563985 () Bool)

(assert (=> start!53738 m!563985))

(declare-fun m!563987 () Bool)

(assert (=> start!53738 m!563987))

(declare-fun m!563989 () Bool)

(assert (=> b!585652 m!563989))

(declare-fun m!563991 () Bool)

(assert (=> b!585649 m!563991))

(declare-fun m!563993 () Bool)

(assert (=> b!585656 m!563993))

(assert (=> b!585656 m!563979))

(assert (=> b!585656 m!563973))

(assert (=> b!585656 m!563993))

(declare-fun m!563995 () Bool)

(assert (=> b!585656 m!563995))

(declare-fun m!563997 () Bool)

(assert (=> b!585656 m!563997))

(declare-fun m!563999 () Bool)

(assert (=> b!585656 m!563999))

(assert (=> b!585656 m!563979))

(declare-fun m!564001 () Bool)

(assert (=> b!585656 m!564001))

(assert (=> b!585658 m!563979))

(assert (=> b!585658 m!563979))

(declare-fun m!564003 () Bool)

(assert (=> b!585658 m!564003))

(declare-fun m!564005 () Bool)

(assert (=> b!585653 m!564005))

(push 1)

