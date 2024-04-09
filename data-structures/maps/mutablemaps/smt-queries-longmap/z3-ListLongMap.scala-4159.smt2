; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56654 () Bool)

(assert start!56654)

(declare-fun b!627544 () Bool)

(declare-fun res!405424 () Bool)

(declare-fun e!359216 () Bool)

(assert (=> b!627544 (=> (not res!405424) (not e!359216))))

(declare-datatypes ((array!37907 0))(
  ( (array!37908 (arr!18190 (Array (_ BitVec 32) (_ BitVec 64))) (size!18554 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37907)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627544 (= res!405424 (validKeyInArray!0 (select (arr!18190 a!2986) j!136)))))

(declare-fun b!627545 () Bool)

(declare-fun res!405433 () Bool)

(declare-fun e!359218 () Bool)

(assert (=> b!627545 (=> (not res!405433) (not e!359218))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6637 0))(
  ( (MissingZero!6637 (index!28831 (_ BitVec 32))) (Found!6637 (index!28832 (_ BitVec 32))) (Intermediate!6637 (undefined!7449 Bool) (index!28833 (_ BitVec 32)) (x!57594 (_ BitVec 32))) (Undefined!6637) (MissingVacant!6637 (index!28834 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37907 (_ BitVec 32)) SeekEntryResult!6637)

(assert (=> b!627545 (= res!405433 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18190 a!2986) j!136) a!2986 mask!3053) (Found!6637 j!136)))))

(declare-fun b!627546 () Bool)

(declare-fun res!405431 () Bool)

(assert (=> b!627546 (=> (not res!405431) (not e!359218))))

(declare-datatypes ((List!12284 0))(
  ( (Nil!12281) (Cons!12280 (h!13325 (_ BitVec 64)) (t!18520 List!12284)) )
))
(declare-fun arrayNoDuplicates!0 (array!37907 (_ BitVec 32) List!12284) Bool)

(assert (=> b!627546 (= res!405431 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12281))))

(declare-fun res!405425 () Bool)

(assert (=> start!56654 (=> (not res!405425) (not e!359216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56654 (= res!405425 (validMask!0 mask!3053))))

(assert (=> start!56654 e!359216))

(assert (=> start!56654 true))

(declare-fun array_inv!13964 (array!37907) Bool)

(assert (=> start!56654 (array_inv!13964 a!2986)))

(declare-fun b!627547 () Bool)

(declare-fun res!405429 () Bool)

(assert (=> b!627547 (=> (not res!405429) (not e!359216))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627547 (= res!405429 (and (= (size!18554 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18554 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18554 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627548 () Bool)

(declare-fun res!405428 () Bool)

(assert (=> b!627548 (=> (not res!405428) (not e!359216))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!627548 (= res!405428 (validKeyInArray!0 k0!1786))))

(declare-fun b!627549 () Bool)

(assert (=> b!627549 (= e!359218 false)))

(declare-fun lt!290280 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627549 (= lt!290280 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627550 () Bool)

(declare-fun res!405426 () Bool)

(assert (=> b!627550 (=> (not res!405426) (not e!359218))))

(assert (=> b!627550 (= res!405426 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18190 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18190 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627551 () Bool)

(declare-fun res!405434 () Bool)

(assert (=> b!627551 (=> (not res!405434) (not e!359218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37907 (_ BitVec 32)) Bool)

(assert (=> b!627551 (= res!405434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627552 () Bool)

(declare-fun res!405427 () Bool)

(assert (=> b!627552 (=> (not res!405427) (not e!359218))))

(assert (=> b!627552 (= res!405427 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18190 a!2986) index!984) (select (arr!18190 a!2986) j!136))) (not (= (select (arr!18190 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627553 () Bool)

(declare-fun res!405430 () Bool)

(assert (=> b!627553 (=> (not res!405430) (not e!359216))))

(declare-fun arrayContainsKey!0 (array!37907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627553 (= res!405430 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627554 () Bool)

(assert (=> b!627554 (= e!359216 e!359218)))

(declare-fun res!405432 () Bool)

(assert (=> b!627554 (=> (not res!405432) (not e!359218))))

(declare-fun lt!290279 () SeekEntryResult!6637)

(assert (=> b!627554 (= res!405432 (or (= lt!290279 (MissingZero!6637 i!1108)) (= lt!290279 (MissingVacant!6637 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37907 (_ BitVec 32)) SeekEntryResult!6637)

(assert (=> b!627554 (= lt!290279 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!56654 res!405425) b!627547))

(assert (= (and b!627547 res!405429) b!627544))

(assert (= (and b!627544 res!405424) b!627548))

(assert (= (and b!627548 res!405428) b!627553))

(assert (= (and b!627553 res!405430) b!627554))

(assert (= (and b!627554 res!405432) b!627551))

(assert (= (and b!627551 res!405434) b!627546))

(assert (= (and b!627546 res!405431) b!627550))

(assert (= (and b!627550 res!405426) b!627545))

(assert (= (and b!627545 res!405433) b!627552))

(assert (= (and b!627552 res!405427) b!627549))

(declare-fun m!602883 () Bool)

(assert (=> b!627544 m!602883))

(assert (=> b!627544 m!602883))

(declare-fun m!602885 () Bool)

(assert (=> b!627544 m!602885))

(declare-fun m!602887 () Bool)

(assert (=> b!627549 m!602887))

(declare-fun m!602889 () Bool)

(assert (=> b!627550 m!602889))

(declare-fun m!602891 () Bool)

(assert (=> b!627550 m!602891))

(declare-fun m!602893 () Bool)

(assert (=> b!627550 m!602893))

(declare-fun m!602895 () Bool)

(assert (=> b!627546 m!602895))

(declare-fun m!602897 () Bool)

(assert (=> b!627551 m!602897))

(declare-fun m!602899 () Bool)

(assert (=> b!627553 m!602899))

(declare-fun m!602901 () Bool)

(assert (=> b!627548 m!602901))

(declare-fun m!602903 () Bool)

(assert (=> b!627552 m!602903))

(assert (=> b!627552 m!602883))

(declare-fun m!602905 () Bool)

(assert (=> b!627554 m!602905))

(declare-fun m!602907 () Bool)

(assert (=> start!56654 m!602907))

(declare-fun m!602909 () Bool)

(assert (=> start!56654 m!602909))

(assert (=> b!627545 m!602883))

(assert (=> b!627545 m!602883))

(declare-fun m!602911 () Bool)

(assert (=> b!627545 m!602911))

(check-sat (not b!627546) (not b!627548) (not start!56654) (not b!627551) (not b!627549) (not b!627554) (not b!627545) (not b!627544) (not b!627553))
(check-sat)
