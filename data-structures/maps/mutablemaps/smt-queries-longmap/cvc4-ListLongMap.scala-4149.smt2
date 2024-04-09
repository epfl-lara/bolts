; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56596 () Bool)

(assert start!56596)

(declare-fun res!404488 () Bool)

(declare-fun e!358955 () Bool)

(assert (=> start!56596 (=> (not res!404488) (not e!358955))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56596 (= res!404488 (validMask!0 mask!3053))))

(assert (=> start!56596 e!358955))

(assert (=> start!56596 true))

(declare-datatypes ((array!37849 0))(
  ( (array!37850 (arr!18161 (Array (_ BitVec 32) (_ BitVec 64))) (size!18525 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37849)

(declare-fun array_inv!13935 (array!37849) Bool)

(assert (=> start!56596 (array_inv!13935 a!2986)))

(declare-fun b!626607 () Bool)

(declare-fun e!358956 () Bool)

(assert (=> b!626607 (= e!358955 e!358956)))

(declare-fun res!404489 () Bool)

(assert (=> b!626607 (=> (not res!404489) (not e!358956))))

(declare-datatypes ((SeekEntryResult!6608 0))(
  ( (MissingZero!6608 (index!28715 (_ BitVec 32))) (Found!6608 (index!28716 (_ BitVec 32))) (Intermediate!6608 (undefined!7420 Bool) (index!28717 (_ BitVec 32)) (x!57485 (_ BitVec 32))) (Undefined!6608) (MissingVacant!6608 (index!28718 (_ BitVec 32))) )
))
(declare-fun lt!290105 () SeekEntryResult!6608)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626607 (= res!404489 (or (= lt!290105 (MissingZero!6608 i!1108)) (= lt!290105 (MissingVacant!6608 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37849 (_ BitVec 32)) SeekEntryResult!6608)

(assert (=> b!626607 (= lt!290105 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626608 () Bool)

(declare-fun res!404494 () Bool)

(assert (=> b!626608 (=> (not res!404494) (not e!358955))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626608 (= res!404494 (and (= (size!18525 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18525 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18525 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626609 () Bool)

(declare-fun res!404491 () Bool)

(assert (=> b!626609 (=> (not res!404491) (not e!358955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626609 (= res!404491 (validKeyInArray!0 (select (arr!18161 a!2986) j!136)))))

(declare-fun b!626610 () Bool)

(declare-fun res!404492 () Bool)

(assert (=> b!626610 (=> (not res!404492) (not e!358955))))

(declare-fun arrayContainsKey!0 (array!37849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626610 (= res!404492 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626611 () Bool)

(declare-fun res!404487 () Bool)

(assert (=> b!626611 (=> (not res!404487) (not e!358956))))

(declare-datatypes ((List!12255 0))(
  ( (Nil!12252) (Cons!12251 (h!13296 (_ BitVec 64)) (t!18491 List!12255)) )
))
(declare-fun arrayNoDuplicates!0 (array!37849 (_ BitVec 32) List!12255) Bool)

(assert (=> b!626611 (= res!404487 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12252))))

(declare-fun b!626612 () Bool)

(declare-fun res!404490 () Bool)

(assert (=> b!626612 (=> (not res!404490) (not e!358956))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626612 (= res!404490 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18161 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18161 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626613 () Bool)

(declare-fun res!404495 () Bool)

(assert (=> b!626613 (=> (not res!404495) (not e!358955))))

(assert (=> b!626613 (= res!404495 (validKeyInArray!0 k!1786))))

(declare-fun b!626614 () Bool)

(assert (=> b!626614 (= e!358956 false)))

(declare-fun lt!290106 () SeekEntryResult!6608)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37849 (_ BitVec 32)) SeekEntryResult!6608)

(assert (=> b!626614 (= lt!290106 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18161 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626615 () Bool)

(declare-fun res!404493 () Bool)

(assert (=> b!626615 (=> (not res!404493) (not e!358956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37849 (_ BitVec 32)) Bool)

(assert (=> b!626615 (= res!404493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56596 res!404488) b!626608))

(assert (= (and b!626608 res!404494) b!626609))

(assert (= (and b!626609 res!404491) b!626613))

(assert (= (and b!626613 res!404495) b!626610))

(assert (= (and b!626610 res!404492) b!626607))

(assert (= (and b!626607 res!404489) b!626615))

(assert (= (and b!626615 res!404493) b!626611))

(assert (= (and b!626611 res!404487) b!626612))

(assert (= (and b!626612 res!404490) b!626614))

(declare-fun m!602029 () Bool)

(assert (=> b!626607 m!602029))

(declare-fun m!602031 () Bool)

(assert (=> start!56596 m!602031))

(declare-fun m!602033 () Bool)

(assert (=> start!56596 m!602033))

(declare-fun m!602035 () Bool)

(assert (=> b!626612 m!602035))

(declare-fun m!602037 () Bool)

(assert (=> b!626612 m!602037))

(declare-fun m!602039 () Bool)

(assert (=> b!626612 m!602039))

(declare-fun m!602041 () Bool)

(assert (=> b!626611 m!602041))

(declare-fun m!602043 () Bool)

(assert (=> b!626615 m!602043))

(declare-fun m!602045 () Bool)

(assert (=> b!626613 m!602045))

(declare-fun m!602047 () Bool)

(assert (=> b!626614 m!602047))

(assert (=> b!626614 m!602047))

(declare-fun m!602049 () Bool)

(assert (=> b!626614 m!602049))

(declare-fun m!602051 () Bool)

(assert (=> b!626610 m!602051))

(assert (=> b!626609 m!602047))

(assert (=> b!626609 m!602047))

(declare-fun m!602053 () Bool)

(assert (=> b!626609 m!602053))

(push 1)

(assert (not b!626607))

(assert (not b!626614))

