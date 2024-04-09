; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56678 () Bool)

(assert start!56678)

(declare-fun b!627940 () Bool)

(declare-fun res!405824 () Bool)

(declare-fun e!359326 () Bool)

(assert (=> b!627940 (=> (not res!405824) (not e!359326))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627940 (= res!405824 (validKeyInArray!0 k0!1786))))

(declare-fun b!627941 () Bool)

(declare-fun res!405826 () Bool)

(declare-fun e!359324 () Bool)

(assert (=> b!627941 (=> (not res!405826) (not e!359324))))

(declare-datatypes ((array!37931 0))(
  ( (array!37932 (arr!18202 (Array (_ BitVec 32) (_ BitVec 64))) (size!18566 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37931)

(declare-datatypes ((List!12296 0))(
  ( (Nil!12293) (Cons!12292 (h!13337 (_ BitVec 64)) (t!18532 List!12296)) )
))
(declare-fun arrayNoDuplicates!0 (array!37931 (_ BitVec 32) List!12296) Bool)

(assert (=> b!627941 (= res!405826 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12293))))

(declare-fun b!627942 () Bool)

(declare-fun res!405828 () Bool)

(assert (=> b!627942 (=> (not res!405828) (not e!359324))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627942 (= res!405828 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18202 a!2986) index!984) (select (arr!18202 a!2986) j!136))) (not (= (select (arr!18202 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627943 () Bool)

(declare-fun res!405823 () Bool)

(assert (=> b!627943 (=> (not res!405823) (not e!359324))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37931 (_ BitVec 32)) Bool)

(assert (=> b!627943 (= res!405823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!405825 () Bool)

(assert (=> start!56678 (=> (not res!405825) (not e!359326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56678 (= res!405825 (validMask!0 mask!3053))))

(assert (=> start!56678 e!359326))

(assert (=> start!56678 true))

(declare-fun array_inv!13976 (array!37931) Bool)

(assert (=> start!56678 (array_inv!13976 a!2986)))

(declare-fun b!627944 () Bool)

(declare-fun res!405829 () Bool)

(assert (=> b!627944 (=> (not res!405829) (not e!359324))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6649 0))(
  ( (MissingZero!6649 (index!28879 (_ BitVec 32))) (Found!6649 (index!28880 (_ BitVec 32))) (Intermediate!6649 (undefined!7461 Bool) (index!28881 (_ BitVec 32)) (x!57638 (_ BitVec 32))) (Undefined!6649) (MissingVacant!6649 (index!28882 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37931 (_ BitVec 32)) SeekEntryResult!6649)

(assert (=> b!627944 (= res!405829 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18202 a!2986) j!136) a!2986 mask!3053) (Found!6649 j!136)))))

(declare-fun b!627945 () Bool)

(declare-fun res!405822 () Bool)

(assert (=> b!627945 (=> (not res!405822) (not e!359324))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627945 (= res!405822 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18202 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18202 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627946 () Bool)

(declare-fun res!405827 () Bool)

(assert (=> b!627946 (=> (not res!405827) (not e!359326))))

(declare-fun arrayContainsKey!0 (array!37931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627946 (= res!405827 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627947 () Bool)

(assert (=> b!627947 (= e!359326 e!359324)))

(declare-fun res!405821 () Bool)

(assert (=> b!627947 (=> (not res!405821) (not e!359324))))

(declare-fun lt!290351 () SeekEntryResult!6649)

(assert (=> b!627947 (= res!405821 (or (= lt!290351 (MissingZero!6649 i!1108)) (= lt!290351 (MissingVacant!6649 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37931 (_ BitVec 32)) SeekEntryResult!6649)

(assert (=> b!627947 (= lt!290351 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627948 () Bool)

(assert (=> b!627948 (= e!359324 false)))

(declare-fun lt!290352 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627948 (= lt!290352 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627949 () Bool)

(declare-fun res!405830 () Bool)

(assert (=> b!627949 (=> (not res!405830) (not e!359326))))

(assert (=> b!627949 (= res!405830 (validKeyInArray!0 (select (arr!18202 a!2986) j!136)))))

(declare-fun b!627950 () Bool)

(declare-fun res!405820 () Bool)

(assert (=> b!627950 (=> (not res!405820) (not e!359326))))

(assert (=> b!627950 (= res!405820 (and (= (size!18566 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18566 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18566 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56678 res!405825) b!627950))

(assert (= (and b!627950 res!405820) b!627949))

(assert (= (and b!627949 res!405830) b!627940))

(assert (= (and b!627940 res!405824) b!627946))

(assert (= (and b!627946 res!405827) b!627947))

(assert (= (and b!627947 res!405821) b!627943))

(assert (= (and b!627943 res!405823) b!627941))

(assert (= (and b!627941 res!405826) b!627945))

(assert (= (and b!627945 res!405822) b!627944))

(assert (= (and b!627944 res!405829) b!627942))

(assert (= (and b!627942 res!405828) b!627948))

(declare-fun m!603243 () Bool)

(assert (=> b!627943 m!603243))

(declare-fun m!603245 () Bool)

(assert (=> b!627945 m!603245))

(declare-fun m!603247 () Bool)

(assert (=> b!627945 m!603247))

(declare-fun m!603249 () Bool)

(assert (=> b!627945 m!603249))

(declare-fun m!603251 () Bool)

(assert (=> b!627944 m!603251))

(assert (=> b!627944 m!603251))

(declare-fun m!603253 () Bool)

(assert (=> b!627944 m!603253))

(declare-fun m!603255 () Bool)

(assert (=> b!627948 m!603255))

(assert (=> b!627949 m!603251))

(assert (=> b!627949 m!603251))

(declare-fun m!603257 () Bool)

(assert (=> b!627949 m!603257))

(declare-fun m!603259 () Bool)

(assert (=> b!627947 m!603259))

(declare-fun m!603261 () Bool)

(assert (=> b!627942 m!603261))

(assert (=> b!627942 m!603251))

(declare-fun m!603263 () Bool)

(assert (=> start!56678 m!603263))

(declare-fun m!603265 () Bool)

(assert (=> start!56678 m!603265))

(declare-fun m!603267 () Bool)

(assert (=> b!627940 m!603267))

(declare-fun m!603269 () Bool)

(assert (=> b!627941 m!603269))

(declare-fun m!603271 () Bool)

(assert (=> b!627946 m!603271))

(check-sat (not b!627949) (not start!56678) (not b!627940) (not b!627944) (not b!627947) (not b!627946) (not b!627948) (not b!627943) (not b!627941))
(check-sat)
