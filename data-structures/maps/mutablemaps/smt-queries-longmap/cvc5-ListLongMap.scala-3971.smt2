; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53914 () Bool)

(assert start!53914)

(declare-fun b!587815 () Bool)

(declare-fun res!375603 () Bool)

(declare-fun e!335722 () Bool)

(assert (=> b!587815 (=> (not res!375603) (not e!335722))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36712 0))(
  ( (array!36713 (arr!17625 (Array (_ BitVec 32) (_ BitVec 64))) (size!17989 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36712)

(assert (=> b!587815 (= res!375603 (and (= (size!17989 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17989 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17989 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587816 () Bool)

(declare-fun res!375605 () Bool)

(declare-fun e!335719 () Bool)

(assert (=> b!587816 (=> (not res!375605) (not e!335719))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!587816 (= res!375605 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17625 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17625 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587817 () Bool)

(declare-fun res!375602 () Bool)

(assert (=> b!587817 (=> (not res!375602) (not e!335719))))

(declare-datatypes ((List!11719 0))(
  ( (Nil!11716) (Cons!11715 (h!12760 (_ BitVec 64)) (t!17955 List!11719)) )
))
(declare-fun arrayNoDuplicates!0 (array!36712 (_ BitVec 32) List!11719) Bool)

(assert (=> b!587817 (= res!375602 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11716))))

(declare-fun b!587818 () Bool)

(assert (=> b!587818 (= e!335722 e!335719)))

(declare-fun res!375606 () Bool)

(assert (=> b!587818 (=> (not res!375606) (not e!335719))))

(declare-datatypes ((SeekEntryResult!6072 0))(
  ( (MissingZero!6072 (index!26518 (_ BitVec 32))) (Found!6072 (index!26519 (_ BitVec 32))) (Intermediate!6072 (undefined!6884 Bool) (index!26520 (_ BitVec 32)) (x!55353 (_ BitVec 32))) (Undefined!6072) (MissingVacant!6072 (index!26521 (_ BitVec 32))) )
))
(declare-fun lt!266560 () SeekEntryResult!6072)

(assert (=> b!587818 (= res!375606 (or (= lt!266560 (MissingZero!6072 i!1108)) (= lt!266560 (MissingVacant!6072 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36712 (_ BitVec 32)) SeekEntryResult!6072)

(assert (=> b!587818 (= lt!266560 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587819 () Bool)

(declare-fun res!375610 () Bool)

(assert (=> b!587819 (=> (not res!375610) (not e!335722))))

(declare-fun arrayContainsKey!0 (array!36712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587819 (= res!375610 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587820 () Bool)

(declare-fun e!335720 () Bool)

(assert (=> b!587820 (= e!335720 (not true))))

(declare-fun e!335718 () Bool)

(assert (=> b!587820 e!335718))

(declare-fun res!375608 () Bool)

(assert (=> b!587820 (=> (not res!375608) (not e!335718))))

(declare-fun lt!266559 () (_ BitVec 32))

(declare-fun lt!266558 () SeekEntryResult!6072)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36712 (_ BitVec 32)) SeekEntryResult!6072)

(assert (=> b!587820 (= res!375608 (= lt!266558 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266559 vacantSpotIndex!68 (select (store (arr!17625 a!2986) i!1108 k!1786) j!136) (array!36713 (store (arr!17625 a!2986) i!1108 k!1786) (size!17989 a!2986)) mask!3053)))))

(assert (=> b!587820 (= lt!266558 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266559 vacantSpotIndex!68 (select (arr!17625 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18268 0))(
  ( (Unit!18269) )
))
(declare-fun lt!266561 () Unit!18268)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36712 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18268)

(assert (=> b!587820 (= lt!266561 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266559 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587820 (= lt!266559 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587821 () Bool)

(declare-fun res!375609 () Bool)

(assert (=> b!587821 (=> (not res!375609) (not e!335722))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587821 (= res!375609 (validKeyInArray!0 k!1786))))

(declare-fun b!587822 () Bool)

(declare-fun lt!266557 () SeekEntryResult!6072)

(assert (=> b!587822 (= e!335718 (= lt!266557 lt!266558))))

(declare-fun res!375607 () Bool)

(assert (=> start!53914 (=> (not res!375607) (not e!335722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53914 (= res!375607 (validMask!0 mask!3053))))

(assert (=> start!53914 e!335722))

(assert (=> start!53914 true))

(declare-fun array_inv!13399 (array!36712) Bool)

(assert (=> start!53914 (array_inv!13399 a!2986)))

(declare-fun b!587823 () Bool)

(declare-fun res!375611 () Bool)

(assert (=> b!587823 (=> (not res!375611) (not e!335719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36712 (_ BitVec 32)) Bool)

(assert (=> b!587823 (= res!375611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587824 () Bool)

(declare-fun res!375601 () Bool)

(assert (=> b!587824 (=> (not res!375601) (not e!335722))))

(assert (=> b!587824 (= res!375601 (validKeyInArray!0 (select (arr!17625 a!2986) j!136)))))

(declare-fun b!587825 () Bool)

(assert (=> b!587825 (= e!335719 e!335720)))

(declare-fun res!375604 () Bool)

(assert (=> b!587825 (=> (not res!375604) (not e!335720))))

(assert (=> b!587825 (= res!375604 (and (= lt!266557 (Found!6072 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17625 a!2986) index!984) (select (arr!17625 a!2986) j!136))) (not (= (select (arr!17625 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587825 (= lt!266557 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17625 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53914 res!375607) b!587815))

(assert (= (and b!587815 res!375603) b!587824))

(assert (= (and b!587824 res!375601) b!587821))

(assert (= (and b!587821 res!375609) b!587819))

(assert (= (and b!587819 res!375610) b!587818))

(assert (= (and b!587818 res!375606) b!587823))

(assert (= (and b!587823 res!375611) b!587817))

(assert (= (and b!587817 res!375602) b!587816))

(assert (= (and b!587816 res!375605) b!587825))

(assert (= (and b!587825 res!375604) b!587820))

(assert (= (and b!587820 res!375608) b!587822))

(declare-fun m!566353 () Bool)

(assert (=> b!587821 m!566353))

(declare-fun m!566355 () Bool)

(assert (=> b!587820 m!566355))

(declare-fun m!566357 () Bool)

(assert (=> b!587820 m!566357))

(declare-fun m!566359 () Bool)

(assert (=> b!587820 m!566359))

(declare-fun m!566361 () Bool)

(assert (=> b!587820 m!566361))

(assert (=> b!587820 m!566359))

(declare-fun m!566363 () Bool)

(assert (=> b!587820 m!566363))

(assert (=> b!587820 m!566357))

(declare-fun m!566365 () Bool)

(assert (=> b!587820 m!566365))

(declare-fun m!566367 () Bool)

(assert (=> b!587820 m!566367))

(declare-fun m!566369 () Bool)

(assert (=> b!587817 m!566369))

(declare-fun m!566371 () Bool)

(assert (=> b!587823 m!566371))

(assert (=> b!587824 m!566359))

(assert (=> b!587824 m!566359))

(declare-fun m!566373 () Bool)

(assert (=> b!587824 m!566373))

(declare-fun m!566375 () Bool)

(assert (=> b!587819 m!566375))

(declare-fun m!566377 () Bool)

(assert (=> b!587825 m!566377))

(assert (=> b!587825 m!566359))

(assert (=> b!587825 m!566359))

(declare-fun m!566379 () Bool)

(assert (=> b!587825 m!566379))

(declare-fun m!566381 () Bool)

(assert (=> start!53914 m!566381))

(declare-fun m!566383 () Bool)

(assert (=> start!53914 m!566383))

(declare-fun m!566385 () Bool)

(assert (=> b!587818 m!566385))

(declare-fun m!566387 () Bool)

(assert (=> b!587816 m!566387))

(assert (=> b!587816 m!566361))

(declare-fun m!566389 () Bool)

(assert (=> b!587816 m!566389))

(push 1)

