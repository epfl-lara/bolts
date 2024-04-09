; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57106 () Bool)

(assert start!57106)

(declare-fun b!631758 () Bool)

(declare-fun res!408599 () Bool)

(declare-fun e!361204 () Bool)

(assert (=> b!631758 (=> (not res!408599) (not e!361204))))

(declare-datatypes ((array!38086 0))(
  ( (array!38087 (arr!18272 (Array (_ BitVec 32) (_ BitVec 64))) (size!18636 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38086)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631758 (= res!408599 (validKeyInArray!0 (select (arr!18272 a!2986) j!136)))))

(declare-fun b!631759 () Bool)

(declare-fun e!361201 () Bool)

(assert (=> b!631759 (= e!361204 e!361201)))

(declare-fun res!408600 () Bool)

(assert (=> b!631759 (=> (not res!408600) (not e!361201))))

(declare-datatypes ((SeekEntryResult!6719 0))(
  ( (MissingZero!6719 (index!29168 (_ BitVec 32))) (Found!6719 (index!29169 (_ BitVec 32))) (Intermediate!6719 (undefined!7531 Bool) (index!29170 (_ BitVec 32)) (x!57931 (_ BitVec 32))) (Undefined!6719) (MissingVacant!6719 (index!29171 (_ BitVec 32))) )
))
(declare-fun lt!291962 () SeekEntryResult!6719)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!631759 (= res!408600 (or (= lt!291962 (MissingZero!6719 i!1108)) (= lt!291962 (MissingVacant!6719 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38086 (_ BitVec 32)) SeekEntryResult!6719)

(assert (=> b!631759 (= lt!291962 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!631760 () Bool)

(declare-datatypes ((Unit!21234 0))(
  ( (Unit!21235) )
))
(declare-fun e!361202 () Unit!21234)

(declare-fun Unit!21236 () Unit!21234)

(assert (=> b!631760 (= e!361202 Unit!21236)))

(declare-fun b!631761 () Bool)

(declare-fun e!361200 () Bool)

(declare-fun e!361205 () Bool)

(assert (=> b!631761 (= e!361200 e!361205)))

(declare-fun res!408605 () Bool)

(assert (=> b!631761 (=> (not res!408605) (not e!361205))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!291966 () SeekEntryResult!6719)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631761 (= res!408605 (and (= lt!291966 (Found!6719 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18272 a!2986) index!984) (select (arr!18272 a!2986) j!136))) (not (= (select (arr!18272 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38086 (_ BitVec 32)) SeekEntryResult!6719)

(assert (=> b!631761 (= lt!291966 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18272 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631762 () Bool)

(declare-fun res!408601 () Bool)

(assert (=> b!631762 (=> (not res!408601) (not e!361204))))

(declare-fun arrayContainsKey!0 (array!38086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631762 (= res!408601 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631763 () Bool)

(assert (=> b!631763 (= e!361201 e!361200)))

(declare-fun res!408597 () Bool)

(assert (=> b!631763 (=> (not res!408597) (not e!361200))))

(assert (=> b!631763 (= res!408597 (= (select (store (arr!18272 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291965 () array!38086)

(assert (=> b!631763 (= lt!291965 (array!38087 (store (arr!18272 a!2986) i!1108 k!1786) (size!18636 a!2986)))))

(declare-fun b!631764 () Bool)

(declare-fun res!408603 () Bool)

(assert (=> b!631764 (=> (not res!408603) (not e!361204))))

(assert (=> b!631764 (= res!408603 (validKeyInArray!0 k!1786))))

(declare-fun b!631765 () Bool)

(declare-fun e!361203 () Bool)

(assert (=> b!631765 (= e!361203 true)))

(assert (=> b!631765 (= (select (store (arr!18272 a!2986) i!1108 k!1786) index!984) (select (arr!18272 a!2986) j!136))))

(declare-fun res!408602 () Bool)

(assert (=> start!57106 (=> (not res!408602) (not e!361204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57106 (= res!408602 (validMask!0 mask!3053))))

(assert (=> start!57106 e!361204))

(assert (=> start!57106 true))

(declare-fun array_inv!14046 (array!38086) Bool)

(assert (=> start!57106 (array_inv!14046 a!2986)))

(declare-fun b!631766 () Bool)

(declare-fun res!408598 () Bool)

(assert (=> b!631766 (=> (not res!408598) (not e!361204))))

(assert (=> b!631766 (= res!408598 (and (= (size!18636 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18636 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18636 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631767 () Bool)

(declare-fun res!408608 () Bool)

(assert (=> b!631767 (=> (not res!408608) (not e!361201))))

(assert (=> b!631767 (= res!408608 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18272 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631768 () Bool)

(declare-fun e!361206 () Bool)

(declare-fun lt!291968 () SeekEntryResult!6719)

(assert (=> b!631768 (= e!361206 (= lt!291966 lt!291968))))

(declare-fun b!631769 () Bool)

(declare-fun Unit!21237 () Unit!21234)

(assert (=> b!631769 (= e!361202 Unit!21237)))

(assert (=> b!631769 false))

(declare-fun b!631770 () Bool)

(declare-fun res!408606 () Bool)

(assert (=> b!631770 (=> (not res!408606) (not e!361201))))

(declare-datatypes ((List!12366 0))(
  ( (Nil!12363) (Cons!12362 (h!13407 (_ BitVec 64)) (t!18602 List!12366)) )
))
(declare-fun arrayNoDuplicates!0 (array!38086 (_ BitVec 32) List!12366) Bool)

(assert (=> b!631770 (= res!408606 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12363))))

(declare-fun b!631771 () Bool)

(declare-fun res!408596 () Bool)

(assert (=> b!631771 (=> (not res!408596) (not e!361201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38086 (_ BitVec 32)) Bool)

(assert (=> b!631771 (= res!408596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631772 () Bool)

(assert (=> b!631772 (= e!361205 (not e!361203))))

(declare-fun res!408604 () Bool)

(assert (=> b!631772 (=> res!408604 e!361203)))

(declare-fun lt!291964 () SeekEntryResult!6719)

(assert (=> b!631772 (= res!408604 (not (= lt!291964 (Found!6719 index!984))))))

(declare-fun lt!291961 () Unit!21234)

(assert (=> b!631772 (= lt!291961 e!361202)))

(declare-fun c!71948 () Bool)

(assert (=> b!631772 (= c!71948 (= lt!291964 Undefined!6719))))

(declare-fun lt!291963 () (_ BitVec 64))

(assert (=> b!631772 (= lt!291964 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291963 lt!291965 mask!3053))))

(assert (=> b!631772 e!361206))

(declare-fun res!408607 () Bool)

(assert (=> b!631772 (=> (not res!408607) (not e!361206))))

(declare-fun lt!291967 () (_ BitVec 32))

(assert (=> b!631772 (= res!408607 (= lt!291968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291967 vacantSpotIndex!68 lt!291963 lt!291965 mask!3053)))))

(assert (=> b!631772 (= lt!291968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291967 vacantSpotIndex!68 (select (arr!18272 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631772 (= lt!291963 (select (store (arr!18272 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!291969 () Unit!21234)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38086 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21234)

(assert (=> b!631772 (= lt!291969 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291967 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631772 (= lt!291967 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57106 res!408602) b!631766))

(assert (= (and b!631766 res!408598) b!631758))

(assert (= (and b!631758 res!408599) b!631764))

(assert (= (and b!631764 res!408603) b!631762))

(assert (= (and b!631762 res!408601) b!631759))

(assert (= (and b!631759 res!408600) b!631771))

(assert (= (and b!631771 res!408596) b!631770))

(assert (= (and b!631770 res!408606) b!631767))

(assert (= (and b!631767 res!408608) b!631763))

(assert (= (and b!631763 res!408597) b!631761))

(assert (= (and b!631761 res!408605) b!631772))

(assert (= (and b!631772 res!408607) b!631768))

(assert (= (and b!631772 c!71948) b!631769))

(assert (= (and b!631772 (not c!71948)) b!631760))

(assert (= (and b!631772 (not res!408604)) b!631765))

(declare-fun m!606675 () Bool)

(assert (=> start!57106 m!606675))

(declare-fun m!606677 () Bool)

(assert (=> start!57106 m!606677))

(declare-fun m!606679 () Bool)

(assert (=> b!631765 m!606679))

(declare-fun m!606681 () Bool)

(assert (=> b!631765 m!606681))

(declare-fun m!606683 () Bool)

(assert (=> b!631765 m!606683))

(declare-fun m!606685 () Bool)

(assert (=> b!631762 m!606685))

(declare-fun m!606687 () Bool)

(assert (=> b!631767 m!606687))

(declare-fun m!606689 () Bool)

(assert (=> b!631770 m!606689))

(declare-fun m!606691 () Bool)

(assert (=> b!631761 m!606691))

(assert (=> b!631761 m!606683))

(assert (=> b!631761 m!606683))

(declare-fun m!606693 () Bool)

(assert (=> b!631761 m!606693))

(declare-fun m!606695 () Bool)

(assert (=> b!631771 m!606695))

(declare-fun m!606697 () Bool)

(assert (=> b!631759 m!606697))

(assert (=> b!631758 m!606683))

(assert (=> b!631758 m!606683))

(declare-fun m!606699 () Bool)

(assert (=> b!631758 m!606699))

(assert (=> b!631763 m!606679))

(declare-fun m!606701 () Bool)

(assert (=> b!631763 m!606701))

(declare-fun m!606703 () Bool)

(assert (=> b!631764 m!606703))

(assert (=> b!631772 m!606683))

(declare-fun m!606705 () Bool)

(assert (=> b!631772 m!606705))

(declare-fun m!606707 () Bool)

(assert (=> b!631772 m!606707))

(declare-fun m!606709 () Bool)

(assert (=> b!631772 m!606709))

(assert (=> b!631772 m!606683))

(assert (=> b!631772 m!606679))

(declare-fun m!606711 () Bool)

(assert (=> b!631772 m!606711))

(declare-fun m!606713 () Bool)

(assert (=> b!631772 m!606713))

(declare-fun m!606715 () Bool)

(assert (=> b!631772 m!606715))

(push 1)

