; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56828 () Bool)

(assert start!56828)

(declare-fun b!629084 () Bool)

(declare-fun res!406668 () Bool)

(declare-fun e!359822 () Bool)

(assert (=> b!629084 (=> (not res!406668) (not e!359822))))

(declare-datatypes ((array!37979 0))(
  ( (array!37980 (arr!18223 (Array (_ BitVec 32) (_ BitVec 64))) (size!18587 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37979)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37979 (_ BitVec 32)) Bool)

(assert (=> b!629084 (= res!406668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629085 () Bool)

(declare-fun res!406663 () Bool)

(declare-fun e!359823 () Bool)

(assert (=> b!629085 (=> (not res!406663) (not e!359823))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!290659 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6670 0))(
  ( (MissingZero!6670 (index!28963 (_ BitVec 32))) (Found!6670 (index!28964 (_ BitVec 32))) (Intermediate!6670 (undefined!7482 Bool) (index!28965 (_ BitVec 32)) (x!57727 (_ BitVec 32))) (Undefined!6670) (MissingVacant!6670 (index!28966 (_ BitVec 32))) )
))
(declare-fun lt!290660 () SeekEntryResult!6670)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37979 (_ BitVec 32)) SeekEntryResult!6670)

(assert (=> b!629085 (= res!406663 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290659 vacantSpotIndex!68 (select (arr!18223 a!2986) j!136) a!2986 mask!3053) lt!290660))))

(declare-fun b!629086 () Bool)

(declare-fun res!406661 () Bool)

(declare-fun e!359820 () Bool)

(assert (=> b!629086 (=> (not res!406661) (not e!359820))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629086 (= res!406661 (validKeyInArray!0 k0!1786))))

(declare-fun b!629087 () Bool)

(declare-fun res!406669 () Bool)

(assert (=> b!629087 (=> (not res!406669) (not e!359822))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629087 (= res!406669 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18223 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18223 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629088 () Bool)

(declare-fun res!406670 () Bool)

(declare-fun e!359824 () Bool)

(assert (=> b!629088 (=> (not res!406670) (not e!359824))))

(assert (=> b!629088 (= res!406670 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18223 a!2986) index!984) (select (arr!18223 a!2986) j!136))) (not (= (select (arr!18223 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629089 () Bool)

(assert (=> b!629089 (= e!359822 e!359824)))

(declare-fun res!406664 () Bool)

(assert (=> b!629089 (=> (not res!406664) (not e!359824))))

(assert (=> b!629089 (= res!406664 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18223 a!2986) j!136) a!2986 mask!3053) lt!290660))))

(assert (=> b!629089 (= lt!290660 (Found!6670 j!136))))

(declare-fun b!629090 () Bool)

(assert (=> b!629090 (= e!359820 e!359822)))

(declare-fun res!406662 () Bool)

(assert (=> b!629090 (=> (not res!406662) (not e!359822))))

(declare-fun lt!290661 () SeekEntryResult!6670)

(assert (=> b!629090 (= res!406662 (or (= lt!290661 (MissingZero!6670 i!1108)) (= lt!290661 (MissingVacant!6670 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37979 (_ BitVec 32)) SeekEntryResult!6670)

(assert (=> b!629090 (= lt!290661 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629091 () Bool)

(declare-fun res!406658 () Bool)

(assert (=> b!629091 (=> (not res!406658) (not e!359822))))

(declare-datatypes ((List!12317 0))(
  ( (Nil!12314) (Cons!12313 (h!13358 (_ BitVec 64)) (t!18553 List!12317)) )
))
(declare-fun arrayNoDuplicates!0 (array!37979 (_ BitVec 32) List!12317) Bool)

(assert (=> b!629091 (= res!406658 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12314))))

(declare-fun res!406665 () Bool)

(assert (=> start!56828 (=> (not res!406665) (not e!359820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56828 (= res!406665 (validMask!0 mask!3053))))

(assert (=> start!56828 e!359820))

(assert (=> start!56828 true))

(declare-fun array_inv!13997 (array!37979) Bool)

(assert (=> start!56828 (array_inv!13997 a!2986)))

(declare-fun b!629092 () Bool)

(declare-fun res!406660 () Bool)

(assert (=> b!629092 (=> (not res!406660) (not e!359820))))

(assert (=> b!629092 (= res!406660 (validKeyInArray!0 (select (arr!18223 a!2986) j!136)))))

(declare-fun b!629093 () Bool)

(assert (=> b!629093 (= e!359824 e!359823)))

(declare-fun res!406667 () Bool)

(assert (=> b!629093 (=> (not res!406667) (not e!359823))))

(assert (=> b!629093 (= res!406667 (and (bvsge lt!290659 #b00000000000000000000000000000000) (bvslt lt!290659 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629093 (= lt!290659 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629094 () Bool)

(declare-fun res!406666 () Bool)

(assert (=> b!629094 (=> (not res!406666) (not e!359820))))

(declare-fun arrayContainsKey!0 (array!37979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629094 (= res!406666 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629095 () Bool)

(declare-fun res!406659 () Bool)

(assert (=> b!629095 (=> (not res!406659) (not e!359820))))

(assert (=> b!629095 (= res!406659 (and (= (size!18587 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18587 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18587 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629096 () Bool)

(assert (=> b!629096 (= e!359823 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!910)) (bvsub #b01111111111111111111111111111110 x!910)))))

(assert (= (and start!56828 res!406665) b!629095))

(assert (= (and b!629095 res!406659) b!629092))

(assert (= (and b!629092 res!406660) b!629086))

(assert (= (and b!629086 res!406661) b!629094))

(assert (= (and b!629094 res!406666) b!629090))

(assert (= (and b!629090 res!406662) b!629084))

(assert (= (and b!629084 res!406668) b!629091))

(assert (= (and b!629091 res!406658) b!629087))

(assert (= (and b!629087 res!406669) b!629089))

(assert (= (and b!629089 res!406664) b!629088))

(assert (= (and b!629088 res!406670) b!629093))

(assert (= (and b!629093 res!406667) b!629085))

(assert (= (and b!629085 res!406663) b!629096))

(declare-fun m!604151 () Bool)

(assert (=> start!56828 m!604151))

(declare-fun m!604153 () Bool)

(assert (=> start!56828 m!604153))

(declare-fun m!604155 () Bool)

(assert (=> b!629090 m!604155))

(declare-fun m!604157 () Bool)

(assert (=> b!629091 m!604157))

(declare-fun m!604159 () Bool)

(assert (=> b!629093 m!604159))

(declare-fun m!604161 () Bool)

(assert (=> b!629087 m!604161))

(declare-fun m!604163 () Bool)

(assert (=> b!629087 m!604163))

(declare-fun m!604165 () Bool)

(assert (=> b!629087 m!604165))

(declare-fun m!604167 () Bool)

(assert (=> b!629092 m!604167))

(assert (=> b!629092 m!604167))

(declare-fun m!604169 () Bool)

(assert (=> b!629092 m!604169))

(assert (=> b!629089 m!604167))

(assert (=> b!629089 m!604167))

(declare-fun m!604171 () Bool)

(assert (=> b!629089 m!604171))

(declare-fun m!604173 () Bool)

(assert (=> b!629088 m!604173))

(assert (=> b!629088 m!604167))

(assert (=> b!629085 m!604167))

(assert (=> b!629085 m!604167))

(declare-fun m!604175 () Bool)

(assert (=> b!629085 m!604175))

(declare-fun m!604177 () Bool)

(assert (=> b!629084 m!604177))

(declare-fun m!604179 () Bool)

(assert (=> b!629086 m!604179))

(declare-fun m!604181 () Bool)

(assert (=> b!629094 m!604181))

(check-sat (not b!629090) (not start!56828) (not b!629091) (not b!629084) (not b!629086) (not b!629085) (not b!629092) (not b!629093) (not b!629094) (not b!629089))
(check-sat)
