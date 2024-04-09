; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56656 () Bool)

(assert start!56656)

(declare-fun b!627577 () Bool)

(declare-fun res!405462 () Bool)

(declare-fun e!359227 () Bool)

(assert (=> b!627577 (=> (not res!405462) (not e!359227))))

(declare-datatypes ((array!37909 0))(
  ( (array!37910 (arr!18191 (Array (_ BitVec 32) (_ BitVec 64))) (size!18555 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37909)

(declare-datatypes ((List!12285 0))(
  ( (Nil!12282) (Cons!12281 (h!13326 (_ BitVec 64)) (t!18521 List!12285)) )
))
(declare-fun arrayNoDuplicates!0 (array!37909 (_ BitVec 32) List!12285) Bool)

(assert (=> b!627577 (= res!405462 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12282))))

(declare-fun b!627578 () Bool)

(declare-fun res!405458 () Bool)

(assert (=> b!627578 (=> (not res!405458) (not e!359227))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6638 0))(
  ( (MissingZero!6638 (index!28835 (_ BitVec 32))) (Found!6638 (index!28836 (_ BitVec 32))) (Intermediate!6638 (undefined!7450 Bool) (index!28837 (_ BitVec 32)) (x!57595 (_ BitVec 32))) (Undefined!6638) (MissingVacant!6638 (index!28838 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37909 (_ BitVec 32)) SeekEntryResult!6638)

(assert (=> b!627578 (= res!405458 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18191 a!2986) j!136) a!2986 mask!3053) (Found!6638 j!136)))))

(declare-fun b!627579 () Bool)

(declare-fun res!405461 () Bool)

(assert (=> b!627579 (=> (not res!405461) (not e!359227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37909 (_ BitVec 32)) Bool)

(assert (=> b!627579 (= res!405461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627580 () Bool)

(declare-fun res!405457 () Bool)

(declare-fun e!359226 () Bool)

(assert (=> b!627580 (=> (not res!405457) (not e!359226))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627580 (= res!405457 (and (= (size!18555 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18555 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18555 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627581 () Bool)

(declare-fun res!405465 () Bool)

(assert (=> b!627581 (=> (not res!405465) (not e!359226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627581 (= res!405465 (validKeyInArray!0 (select (arr!18191 a!2986) j!136)))))

(declare-fun b!627582 () Bool)

(declare-fun res!405459 () Bool)

(assert (=> b!627582 (=> (not res!405459) (not e!359227))))

(assert (=> b!627582 (= res!405459 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18191 a!2986) index!984) (select (arr!18191 a!2986) j!136))) (not (= (select (arr!18191 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627584 () Bool)

(declare-fun res!405460 () Bool)

(assert (=> b!627584 (=> (not res!405460) (not e!359227))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!627584 (= res!405460 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18191 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18191 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627585 () Bool)

(assert (=> b!627585 (= e!359226 e!359227)))

(declare-fun res!405463 () Bool)

(assert (=> b!627585 (=> (not res!405463) (not e!359227))))

(declare-fun lt!290285 () SeekEntryResult!6638)

(assert (=> b!627585 (= res!405463 (or (= lt!290285 (MissingZero!6638 i!1108)) (= lt!290285 (MissingVacant!6638 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37909 (_ BitVec 32)) SeekEntryResult!6638)

(assert (=> b!627585 (= lt!290285 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627586 () Bool)

(assert (=> b!627586 (= e!359227 false)))

(declare-fun lt!290286 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627586 (= lt!290286 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627587 () Bool)

(declare-fun res!405464 () Bool)

(assert (=> b!627587 (=> (not res!405464) (not e!359226))))

(declare-fun arrayContainsKey!0 (array!37909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627587 (= res!405464 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627583 () Bool)

(declare-fun res!405466 () Bool)

(assert (=> b!627583 (=> (not res!405466) (not e!359226))))

(assert (=> b!627583 (= res!405466 (validKeyInArray!0 k!1786))))

(declare-fun res!405467 () Bool)

(assert (=> start!56656 (=> (not res!405467) (not e!359226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56656 (= res!405467 (validMask!0 mask!3053))))

(assert (=> start!56656 e!359226))

(assert (=> start!56656 true))

(declare-fun array_inv!13965 (array!37909) Bool)

(assert (=> start!56656 (array_inv!13965 a!2986)))

(assert (= (and start!56656 res!405467) b!627580))

(assert (= (and b!627580 res!405457) b!627581))

(assert (= (and b!627581 res!405465) b!627583))

(assert (= (and b!627583 res!405466) b!627587))

(assert (= (and b!627587 res!405464) b!627585))

(assert (= (and b!627585 res!405463) b!627579))

(assert (= (and b!627579 res!405461) b!627577))

(assert (= (and b!627577 res!405462) b!627584))

(assert (= (and b!627584 res!405460) b!627578))

(assert (= (and b!627578 res!405458) b!627582))

(assert (= (and b!627582 res!405459) b!627586))

(declare-fun m!602913 () Bool)

(assert (=> b!627585 m!602913))

(declare-fun m!602915 () Bool)

(assert (=> b!627577 m!602915))

(declare-fun m!602917 () Bool)

(assert (=> b!627586 m!602917))

(declare-fun m!602919 () Bool)

(assert (=> b!627583 m!602919))

(declare-fun m!602921 () Bool)

(assert (=> b!627578 m!602921))

(assert (=> b!627578 m!602921))

(declare-fun m!602923 () Bool)

(assert (=> b!627578 m!602923))

(declare-fun m!602925 () Bool)

(assert (=> b!627584 m!602925))

(declare-fun m!602927 () Bool)

(assert (=> b!627584 m!602927))

(declare-fun m!602929 () Bool)

(assert (=> b!627584 m!602929))

(declare-fun m!602931 () Bool)

(assert (=> b!627579 m!602931))

(declare-fun m!602933 () Bool)

(assert (=> b!627582 m!602933))

(assert (=> b!627582 m!602921))

(declare-fun m!602935 () Bool)

(assert (=> start!56656 m!602935))

(declare-fun m!602937 () Bool)

(assert (=> start!56656 m!602937))

(assert (=> b!627581 m!602921))

(assert (=> b!627581 m!602921))

(declare-fun m!602939 () Bool)

(assert (=> b!627581 m!602939))

(declare-fun m!602941 () Bool)

(assert (=> b!627587 m!602941))

(push 1)

(assert (not b!627587))

(assert (not b!627586))

(assert (not b!627585))

(assert (not b!627577))

