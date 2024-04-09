; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56616 () Bool)

(assert start!56616)

(declare-fun b!626917 () Bool)

(declare-fun res!404807 () Bool)

(declare-fun e!359045 () Bool)

(assert (=> b!626917 (=> (not res!404807) (not e!359045))))

(declare-datatypes ((array!37869 0))(
  ( (array!37870 (arr!18171 (Array (_ BitVec 32) (_ BitVec 64))) (size!18535 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37869)

(declare-datatypes ((List!12265 0))(
  ( (Nil!12262) (Cons!12261 (h!13306 (_ BitVec 64)) (t!18501 List!12265)) )
))
(declare-fun arrayNoDuplicates!0 (array!37869 (_ BitVec 32) List!12265) Bool)

(assert (=> b!626917 (= res!404807 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12262))))

(declare-fun b!626918 () Bool)

(declare-fun res!404801 () Bool)

(declare-fun e!359047 () Bool)

(assert (=> b!626918 (=> (not res!404801) (not e!359047))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626918 (= res!404801 (validKeyInArray!0 (select (arr!18171 a!2986) j!136)))))

(declare-fun b!626919 () Bool)

(declare-fun res!404799 () Bool)

(assert (=> b!626919 (=> (not res!404799) (not e!359045))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626919 (= res!404799 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18171 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18171 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626920 () Bool)

(declare-fun res!404802 () Bool)

(assert (=> b!626920 (=> (not res!404802) (not e!359045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37869 (_ BitVec 32)) Bool)

(assert (=> b!626920 (= res!404802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626921 () Bool)

(assert (=> b!626921 (= e!359047 e!359045)))

(declare-fun res!404798 () Bool)

(assert (=> b!626921 (=> (not res!404798) (not e!359045))))

(declare-datatypes ((SeekEntryResult!6618 0))(
  ( (MissingZero!6618 (index!28755 (_ BitVec 32))) (Found!6618 (index!28756 (_ BitVec 32))) (Intermediate!6618 (undefined!7430 Bool) (index!28757 (_ BitVec 32)) (x!57527 (_ BitVec 32))) (Undefined!6618) (MissingVacant!6618 (index!28758 (_ BitVec 32))) )
))
(declare-fun lt!290166 () SeekEntryResult!6618)

(assert (=> b!626921 (= res!404798 (or (= lt!290166 (MissingZero!6618 i!1108)) (= lt!290166 (MissingVacant!6618 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37869 (_ BitVec 32)) SeekEntryResult!6618)

(assert (=> b!626921 (= lt!290166 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!404806 () Bool)

(assert (=> start!56616 (=> (not res!404806) (not e!359047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56616 (= res!404806 (validMask!0 mask!3053))))

(assert (=> start!56616 e!359047))

(assert (=> start!56616 true))

(declare-fun array_inv!13945 (array!37869) Bool)

(assert (=> start!56616 (array_inv!13945 a!2986)))

(declare-fun b!626922 () Bool)

(declare-fun res!404800 () Bool)

(assert (=> b!626922 (=> (not res!404800) (not e!359045))))

(assert (=> b!626922 (= res!404800 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18171 a!2986) index!984) (select (arr!18171 a!2986) j!136))) (not (= (select (arr!18171 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626923 () Bool)

(declare-fun res!404805 () Bool)

(assert (=> b!626923 (=> (not res!404805) (not e!359047))))

(assert (=> b!626923 (= res!404805 (and (= (size!18535 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18535 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18535 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626924 () Bool)

(declare-fun res!404797 () Bool)

(assert (=> b!626924 (=> (not res!404797) (not e!359047))))

(assert (=> b!626924 (= res!404797 (validKeyInArray!0 k!1786))))

(declare-fun b!626925 () Bool)

(declare-fun res!404803 () Bool)

(assert (=> b!626925 (=> (not res!404803) (not e!359047))))

(declare-fun arrayContainsKey!0 (array!37869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626925 (= res!404803 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626926 () Bool)

(assert (=> b!626926 (= e!359045 false)))

(declare-fun lt!290165 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626926 (= lt!290165 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626927 () Bool)

(declare-fun res!404804 () Bool)

(assert (=> b!626927 (=> (not res!404804) (not e!359045))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37869 (_ BitVec 32)) SeekEntryResult!6618)

(assert (=> b!626927 (= res!404804 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18171 a!2986) j!136) a!2986 mask!3053) (Found!6618 j!136)))))

(assert (= (and start!56616 res!404806) b!626923))

(assert (= (and b!626923 res!404805) b!626918))

(assert (= (and b!626918 res!404801) b!626924))

(assert (= (and b!626924 res!404797) b!626925))

(assert (= (and b!626925 res!404803) b!626921))

(assert (= (and b!626921 res!404798) b!626920))

(assert (= (and b!626920 res!404802) b!626917))

(assert (= (and b!626917 res!404807) b!626919))

(assert (= (and b!626919 res!404799) b!626927))

(assert (= (and b!626927 res!404804) b!626922))

(assert (= (and b!626922 res!404800) b!626926))

(declare-fun m!602313 () Bool)

(assert (=> b!626925 m!602313))

(declare-fun m!602315 () Bool)

(assert (=> b!626921 m!602315))

(declare-fun m!602317 () Bool)

(assert (=> b!626922 m!602317))

(declare-fun m!602319 () Bool)

(assert (=> b!626922 m!602319))

(declare-fun m!602321 () Bool)

(assert (=> b!626919 m!602321))

(declare-fun m!602323 () Bool)

(assert (=> b!626919 m!602323))

(declare-fun m!602325 () Bool)

(assert (=> b!626919 m!602325))

(declare-fun m!602327 () Bool)

(assert (=> b!626926 m!602327))

(assert (=> b!626918 m!602319))

(assert (=> b!626918 m!602319))

(declare-fun m!602329 () Bool)

(assert (=> b!626918 m!602329))

(declare-fun m!602331 () Bool)

(assert (=> b!626924 m!602331))

(declare-fun m!602333 () Bool)

(assert (=> b!626920 m!602333))

(assert (=> b!626927 m!602319))

(assert (=> b!626927 m!602319))

(declare-fun m!602335 () Bool)

(assert (=> b!626927 m!602335))

(declare-fun m!602337 () Bool)

(assert (=> start!56616 m!602337))

(declare-fun m!602339 () Bool)

(assert (=> start!56616 m!602339))

(declare-fun m!602341 () Bool)

(assert (=> b!626917 m!602341))

(push 1)

