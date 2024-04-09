; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56650 () Bool)

(assert start!56650)

(declare-fun b!627478 () Bool)

(declare-fun res!405362 () Bool)

(declare-fun e!359198 () Bool)

(assert (=> b!627478 (=> (not res!405362) (not e!359198))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37903 0))(
  ( (array!37904 (arr!18188 (Array (_ BitVec 32) (_ BitVec 64))) (size!18552 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37903)

(assert (=> b!627478 (= res!405362 (and (= (size!18552 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18552 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18552 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627479 () Bool)

(declare-fun res!405360 () Bool)

(assert (=> b!627479 (=> (not res!405360) (not e!359198))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627479 (= res!405360 (validKeyInArray!0 k!1786))))

(declare-fun res!405358 () Bool)

(assert (=> start!56650 (=> (not res!405358) (not e!359198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56650 (= res!405358 (validMask!0 mask!3053))))

(assert (=> start!56650 e!359198))

(assert (=> start!56650 true))

(declare-fun array_inv!13962 (array!37903) Bool)

(assert (=> start!56650 (array_inv!13962 a!2986)))

(declare-fun b!627480 () Bool)

(declare-fun res!405368 () Bool)

(declare-fun e!359199 () Bool)

(assert (=> b!627480 (=> (not res!405368) (not e!359199))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6635 0))(
  ( (MissingZero!6635 (index!28823 (_ BitVec 32))) (Found!6635 (index!28824 (_ BitVec 32))) (Intermediate!6635 (undefined!7447 Bool) (index!28825 (_ BitVec 32)) (x!57584 (_ BitVec 32))) (Undefined!6635) (MissingVacant!6635 (index!28826 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37903 (_ BitVec 32)) SeekEntryResult!6635)

(assert (=> b!627480 (= res!405368 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18188 a!2986) j!136) a!2986 mask!3053) (Found!6635 j!136)))))

(declare-fun b!627481 () Bool)

(assert (=> b!627481 (= e!359198 e!359199)))

(declare-fun res!405366 () Bool)

(assert (=> b!627481 (=> (not res!405366) (not e!359199))))

(declare-fun lt!290267 () SeekEntryResult!6635)

(assert (=> b!627481 (= res!405366 (or (= lt!290267 (MissingZero!6635 i!1108)) (= lt!290267 (MissingVacant!6635 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37903 (_ BitVec 32)) SeekEntryResult!6635)

(assert (=> b!627481 (= lt!290267 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627482 () Bool)

(declare-fun res!405367 () Bool)

(assert (=> b!627482 (=> (not res!405367) (not e!359198))))

(declare-fun arrayContainsKey!0 (array!37903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627482 (= res!405367 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627483 () Bool)

(declare-fun res!405364 () Bool)

(assert (=> b!627483 (=> (not res!405364) (not e!359199))))

(declare-datatypes ((List!12282 0))(
  ( (Nil!12279) (Cons!12278 (h!13323 (_ BitVec 64)) (t!18518 List!12282)) )
))
(declare-fun arrayNoDuplicates!0 (array!37903 (_ BitVec 32) List!12282) Bool)

(assert (=> b!627483 (= res!405364 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12279))))

(declare-fun b!627484 () Bool)

(declare-fun res!405365 () Bool)

(assert (=> b!627484 (=> (not res!405365) (not e!359198))))

(assert (=> b!627484 (= res!405365 (validKeyInArray!0 (select (arr!18188 a!2986) j!136)))))

(declare-fun b!627485 () Bool)

(declare-fun res!405359 () Bool)

(assert (=> b!627485 (=> (not res!405359) (not e!359199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37903 (_ BitVec 32)) Bool)

(assert (=> b!627485 (= res!405359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627486 () Bool)

(assert (=> b!627486 (= e!359199 false)))

(declare-fun lt!290268 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627486 (= lt!290268 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627487 () Bool)

(declare-fun res!405361 () Bool)

(assert (=> b!627487 (=> (not res!405361) (not e!359199))))

(assert (=> b!627487 (= res!405361 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18188 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18188 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627488 () Bool)

(declare-fun res!405363 () Bool)

(assert (=> b!627488 (=> (not res!405363) (not e!359199))))

(assert (=> b!627488 (= res!405363 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18188 a!2986) index!984) (select (arr!18188 a!2986) j!136))) (not (= (select (arr!18188 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!56650 res!405358) b!627478))

(assert (= (and b!627478 res!405362) b!627484))

(assert (= (and b!627484 res!405365) b!627479))

(assert (= (and b!627479 res!405360) b!627482))

(assert (= (and b!627482 res!405367) b!627481))

(assert (= (and b!627481 res!405366) b!627485))

(assert (= (and b!627485 res!405359) b!627483))

(assert (= (and b!627483 res!405364) b!627487))

(assert (= (and b!627487 res!405361) b!627480))

(assert (= (and b!627480 res!405368) b!627488))

(assert (= (and b!627488 res!405363) b!627486))

(declare-fun m!602823 () Bool)

(assert (=> b!627481 m!602823))

(declare-fun m!602825 () Bool)

(assert (=> b!627486 m!602825))

(declare-fun m!602827 () Bool)

(assert (=> b!627487 m!602827))

(declare-fun m!602829 () Bool)

(assert (=> b!627487 m!602829))

(declare-fun m!602831 () Bool)

(assert (=> b!627487 m!602831))

(declare-fun m!602833 () Bool)

(assert (=> b!627488 m!602833))

(declare-fun m!602835 () Bool)

(assert (=> b!627488 m!602835))

(declare-fun m!602837 () Bool)

(assert (=> start!56650 m!602837))

(declare-fun m!602839 () Bool)

(assert (=> start!56650 m!602839))

(declare-fun m!602841 () Bool)

(assert (=> b!627482 m!602841))

(declare-fun m!602843 () Bool)

(assert (=> b!627483 m!602843))

(declare-fun m!602845 () Bool)

(assert (=> b!627479 m!602845))

(assert (=> b!627480 m!602835))

(assert (=> b!627480 m!602835))

(declare-fun m!602847 () Bool)

(assert (=> b!627480 m!602847))

(assert (=> b!627484 m!602835))

(assert (=> b!627484 m!602835))

(declare-fun m!602849 () Bool)

(assert (=> b!627484 m!602849))

(declare-fun m!602851 () Bool)

(assert (=> b!627485 m!602851))

(push 1)

(assert (not b!627485))

(assert (not b!627483))

(assert (not start!56650))

