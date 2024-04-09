; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53432 () Bool)

(assert start!53432)

(declare-fun b!580917 () Bool)

(declare-fun e!333448 () Bool)

(declare-fun e!333446 () Bool)

(assert (=> b!580917 (= e!333448 e!333446)))

(declare-fun res!368888 () Bool)

(assert (=> b!580917 (=> (not res!368888) (not e!333446))))

(declare-datatypes ((SeekEntryResult!5861 0))(
  ( (MissingZero!5861 (index!25671 (_ BitVec 32))) (Found!5861 (index!25672 (_ BitVec 32))) (Intermediate!5861 (undefined!6673 Bool) (index!25673 (_ BitVec 32)) (x!54565 (_ BitVec 32))) (Undefined!5861) (MissingVacant!5861 (index!25674 (_ BitVec 32))) )
))
(declare-fun lt!264806 () SeekEntryResult!5861)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580917 (= res!368888 (or (= lt!264806 (MissingZero!5861 i!1108)) (= lt!264806 (MissingVacant!5861 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36287 0))(
  ( (array!36288 (arr!17414 (Array (_ BitVec 32) (_ BitVec 64))) (size!17778 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36287)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36287 (_ BitVec 32)) SeekEntryResult!5861)

(assert (=> b!580917 (= lt!264806 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580918 () Bool)

(declare-fun res!368891 () Bool)

(assert (=> b!580918 (=> (not res!368891) (not e!333448))))

(declare-fun arrayContainsKey!0 (array!36287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580918 (= res!368891 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368889 () Bool)

(assert (=> start!53432 (=> (not res!368889) (not e!333448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53432 (= res!368889 (validMask!0 mask!3053))))

(assert (=> start!53432 e!333448))

(assert (=> start!53432 true))

(declare-fun array_inv!13188 (array!36287) Bool)

(assert (=> start!53432 (array_inv!13188 a!2986)))

(declare-fun b!580919 () Bool)

(assert (=> b!580919 (= e!333446 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264805 () SeekEntryResult!5861)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36287 (_ BitVec 32)) SeekEntryResult!5861)

(assert (=> b!580919 (= lt!264805 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17414 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580920 () Bool)

(declare-fun res!368883 () Bool)

(assert (=> b!580920 (=> (not res!368883) (not e!333446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36287 (_ BitVec 32)) Bool)

(assert (=> b!580920 (= res!368883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580921 () Bool)

(declare-fun res!368885 () Bool)

(assert (=> b!580921 (=> (not res!368885) (not e!333448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580921 (= res!368885 (validKeyInArray!0 (select (arr!17414 a!2986) j!136)))))

(declare-fun b!580922 () Bool)

(declare-fun res!368890 () Bool)

(assert (=> b!580922 (=> (not res!368890) (not e!333448))))

(assert (=> b!580922 (= res!368890 (and (= (size!17778 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17778 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17778 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580923 () Bool)

(declare-fun res!368886 () Bool)

(assert (=> b!580923 (=> (not res!368886) (not e!333448))))

(assert (=> b!580923 (= res!368886 (validKeyInArray!0 k!1786))))

(declare-fun b!580924 () Bool)

(declare-fun res!368887 () Bool)

(assert (=> b!580924 (=> (not res!368887) (not e!333446))))

(declare-datatypes ((List!11508 0))(
  ( (Nil!11505) (Cons!11504 (h!12549 (_ BitVec 64)) (t!17744 List!11508)) )
))
(declare-fun arrayNoDuplicates!0 (array!36287 (_ BitVec 32) List!11508) Bool)

(assert (=> b!580924 (= res!368887 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11505))))

(declare-fun b!580925 () Bool)

(declare-fun res!368884 () Bool)

(assert (=> b!580925 (=> (not res!368884) (not e!333446))))

(assert (=> b!580925 (= res!368884 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17414 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17414 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53432 res!368889) b!580922))

(assert (= (and b!580922 res!368890) b!580921))

(assert (= (and b!580921 res!368885) b!580923))

(assert (= (and b!580923 res!368886) b!580918))

(assert (= (and b!580918 res!368891) b!580917))

(assert (= (and b!580917 res!368888) b!580920))

(assert (= (and b!580920 res!368883) b!580924))

(assert (= (and b!580924 res!368887) b!580925))

(assert (= (and b!580925 res!368884) b!580919))

(declare-fun m!559523 () Bool)

(assert (=> b!580921 m!559523))

(assert (=> b!580921 m!559523))

(declare-fun m!559525 () Bool)

(assert (=> b!580921 m!559525))

(declare-fun m!559527 () Bool)

(assert (=> b!580917 m!559527))

(declare-fun m!559529 () Bool)

(assert (=> b!580924 m!559529))

(declare-fun m!559531 () Bool)

(assert (=> start!53432 m!559531))

(declare-fun m!559533 () Bool)

(assert (=> start!53432 m!559533))

(assert (=> b!580919 m!559523))

(assert (=> b!580919 m!559523))

(declare-fun m!559535 () Bool)

(assert (=> b!580919 m!559535))

(declare-fun m!559537 () Bool)

(assert (=> b!580920 m!559537))

(declare-fun m!559539 () Bool)

(assert (=> b!580925 m!559539))

(declare-fun m!559541 () Bool)

(assert (=> b!580925 m!559541))

(declare-fun m!559543 () Bool)

(assert (=> b!580925 m!559543))

(declare-fun m!559545 () Bool)

(assert (=> b!580923 m!559545))

(declare-fun m!559547 () Bool)

(assert (=> b!580918 m!559547))

(push 1)

(assert (not b!580919))

(assert (not b!580924))

(assert (not b!580921))

(assert (not b!580920))

