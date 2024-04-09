; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53732 () Bool)

(assert start!53732)

(declare-fun b!585550 () Bool)

(declare-fun res!373518 () Bool)

(declare-fun e!334969 () Bool)

(assert (=> b!585550 (=> (not res!373518) (not e!334969))))

(declare-datatypes ((array!36587 0))(
  ( (array!36588 (arr!17564 (Array (_ BitVec 32) (_ BitVec 64))) (size!17928 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36587)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585550 (= res!373518 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585551 () Bool)

(declare-fun res!373520 () Bool)

(assert (=> b!585551 (=> (not res!373520) (not e!334969))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585551 (= res!373520 (validKeyInArray!0 (select (arr!17564 a!2986) j!136)))))

(declare-fun b!585552 () Bool)

(declare-fun res!373524 () Bool)

(declare-fun e!334967 () Bool)

(assert (=> b!585552 (=> (not res!373524) (not e!334967))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6011 0))(
  ( (MissingZero!6011 (index!26271 (_ BitVec 32))) (Found!6011 (index!26272 (_ BitVec 32))) (Intermediate!6011 (undefined!6823 Bool) (index!26273 (_ BitVec 32)) (x!55115 (_ BitVec 32))) (Undefined!6011) (MissingVacant!6011 (index!26274 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36587 (_ BitVec 32)) SeekEntryResult!6011)

(assert (=> b!585552 (= res!373524 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17564 a!2986) j!136) a!2986 mask!3053) (Found!6011 j!136)))))

(declare-fun b!585553 () Bool)

(declare-fun res!373525 () Bool)

(assert (=> b!585553 (=> (not res!373525) (not e!334967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36587 (_ BitVec 32)) Bool)

(assert (=> b!585553 (= res!373525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585554 () Bool)

(declare-fun res!373522 () Bool)

(assert (=> b!585554 (=> (not res!373522) (not e!334967))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585554 (= res!373522 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17564 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17564 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585555 () Bool)

(assert (=> b!585555 (= e!334967 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!265867 () (_ BitVec 32))

(assert (=> b!585555 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265867 vacantSpotIndex!68 (select (arr!17564 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265867 vacantSpotIndex!68 (select (store (arr!17564 a!2986) i!1108 k!1786) j!136) (array!36588 (store (arr!17564 a!2986) i!1108 k!1786) (size!17928 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18146 0))(
  ( (Unit!18147) )
))
(declare-fun lt!265868 () Unit!18146)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18146)

(assert (=> b!585555 (= lt!265868 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265867 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585555 (= lt!265867 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585556 () Bool)

(declare-fun res!373523 () Bool)

(assert (=> b!585556 (=> (not res!373523) (not e!334967))))

(declare-datatypes ((List!11658 0))(
  ( (Nil!11655) (Cons!11654 (h!12699 (_ BitVec 64)) (t!17894 List!11658)) )
))
(declare-fun arrayNoDuplicates!0 (array!36587 (_ BitVec 32) List!11658) Bool)

(assert (=> b!585556 (= res!373523 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11655))))

(declare-fun res!373516 () Bool)

(assert (=> start!53732 (=> (not res!373516) (not e!334969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53732 (= res!373516 (validMask!0 mask!3053))))

(assert (=> start!53732 e!334969))

(assert (=> start!53732 true))

(declare-fun array_inv!13338 (array!36587) Bool)

(assert (=> start!53732 (array_inv!13338 a!2986)))

(declare-fun b!585557 () Bool)

(declare-fun res!373517 () Bool)

(assert (=> b!585557 (=> (not res!373517) (not e!334967))))

(assert (=> b!585557 (= res!373517 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17564 a!2986) index!984) (select (arr!17564 a!2986) j!136))) (not (= (select (arr!17564 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585558 () Bool)

(declare-fun res!373521 () Bool)

(assert (=> b!585558 (=> (not res!373521) (not e!334969))))

(assert (=> b!585558 (= res!373521 (validKeyInArray!0 k!1786))))

(declare-fun b!585559 () Bool)

(declare-fun res!373526 () Bool)

(assert (=> b!585559 (=> (not res!373526) (not e!334969))))

(assert (=> b!585559 (= res!373526 (and (= (size!17928 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17928 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17928 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585560 () Bool)

(assert (=> b!585560 (= e!334969 e!334967)))

(declare-fun res!373519 () Bool)

(assert (=> b!585560 (=> (not res!373519) (not e!334967))))

(declare-fun lt!265866 () SeekEntryResult!6011)

(assert (=> b!585560 (= res!373519 (or (= lt!265866 (MissingZero!6011 i!1108)) (= lt!265866 (MissingVacant!6011 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36587 (_ BitVec 32)) SeekEntryResult!6011)

(assert (=> b!585560 (= lt!265866 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53732 res!373516) b!585559))

(assert (= (and b!585559 res!373526) b!585551))

(assert (= (and b!585551 res!373520) b!585558))

(assert (= (and b!585558 res!373521) b!585550))

(assert (= (and b!585550 res!373518) b!585560))

(assert (= (and b!585560 res!373519) b!585553))

(assert (= (and b!585553 res!373525) b!585556))

(assert (= (and b!585556 res!373523) b!585554))

(assert (= (and b!585554 res!373522) b!585552))

(assert (= (and b!585552 res!373524) b!585557))

(assert (= (and b!585557 res!373517) b!585555))

(declare-fun m!563855 () Bool)

(assert (=> b!585551 m!563855))

(assert (=> b!585551 m!563855))

(declare-fun m!563857 () Bool)

(assert (=> b!585551 m!563857))

(declare-fun m!563859 () Bool)

(assert (=> b!585555 m!563859))

(declare-fun m!563861 () Bool)

(assert (=> b!585555 m!563861))

(assert (=> b!585555 m!563855))

(assert (=> b!585555 m!563855))

(declare-fun m!563863 () Bool)

(assert (=> b!585555 m!563863))

(declare-fun m!563865 () Bool)

(assert (=> b!585555 m!563865))

(declare-fun m!563867 () Bool)

(assert (=> b!585555 m!563867))

(assert (=> b!585555 m!563861))

(declare-fun m!563869 () Bool)

(assert (=> b!585555 m!563869))

(declare-fun m!563871 () Bool)

(assert (=> b!585550 m!563871))

(assert (=> b!585552 m!563855))

(assert (=> b!585552 m!563855))

(declare-fun m!563873 () Bool)

(assert (=> b!585552 m!563873))

(declare-fun m!563875 () Bool)

(assert (=> b!585556 m!563875))

(declare-fun m!563877 () Bool)

(assert (=> b!585560 m!563877))

(declare-fun m!563879 () Bool)

(assert (=> b!585553 m!563879))

(declare-fun m!563881 () Bool)

(assert (=> start!53732 m!563881))

(declare-fun m!563883 () Bool)

(assert (=> start!53732 m!563883))

(declare-fun m!563885 () Bool)

(assert (=> b!585554 m!563885))

(assert (=> b!585554 m!563867))

(declare-fun m!563887 () Bool)

(assert (=> b!585554 m!563887))

(declare-fun m!563889 () Bool)

(assert (=> b!585558 m!563889))

(declare-fun m!563891 () Bool)

(assert (=> b!585557 m!563891))

(assert (=> b!585557 m!563855))

(push 1)

