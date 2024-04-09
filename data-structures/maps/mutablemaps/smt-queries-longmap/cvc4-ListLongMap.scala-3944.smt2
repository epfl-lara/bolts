; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53696 () Bool)

(assert start!53696)

(declare-fun b!584919 () Bool)

(declare-fun res!372887 () Bool)

(declare-fun e!334768 () Bool)

(assert (=> b!584919 (=> (not res!372887) (not e!334768))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36551 0))(
  ( (array!36552 (arr!17546 (Array (_ BitVec 32) (_ BitVec 64))) (size!17910 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36551)

(assert (=> b!584919 (= res!372887 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17546 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17546 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584920 () Bool)

(declare-fun res!372886 () Bool)

(declare-fun e!334771 () Bool)

(assert (=> b!584920 (=> (not res!372886) (not e!334771))))

(declare-fun arrayContainsKey!0 (array!36551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584920 (= res!372886 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584921 () Bool)

(declare-fun res!372895 () Bool)

(assert (=> b!584921 (=> (not res!372895) (not e!334768))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584921 (= res!372895 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17546 a!2986) index!984) (select (arr!17546 a!2986) j!136))) (not (= (select (arr!17546 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584922 () Bool)

(declare-fun e!334769 () Bool)

(assert (=> b!584922 (= e!334769 false)))

(declare-fun lt!265705 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5993 0))(
  ( (MissingZero!5993 (index!26199 (_ BitVec 32))) (Found!5993 (index!26200 (_ BitVec 32))) (Intermediate!5993 (undefined!6805 Bool) (index!26201 (_ BitVec 32)) (x!55049 (_ BitVec 32))) (Undefined!5993) (MissingVacant!5993 (index!26202 (_ BitVec 32))) )
))
(declare-fun lt!265704 () SeekEntryResult!5993)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36551 (_ BitVec 32)) SeekEntryResult!5993)

(assert (=> b!584922 (= lt!265704 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265705 vacantSpotIndex!68 (select (arr!17546 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584923 () Bool)

(assert (=> b!584923 (= e!334768 e!334769)))

(declare-fun res!372894 () Bool)

(assert (=> b!584923 (=> (not res!372894) (not e!334769))))

(assert (=> b!584923 (= res!372894 (and (bvsge lt!265705 #b00000000000000000000000000000000) (bvslt lt!265705 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584923 (= lt!265705 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584924 () Bool)

(declare-fun res!372891 () Bool)

(assert (=> b!584924 (=> (not res!372891) (not e!334768))))

(assert (=> b!584924 (= res!372891 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17546 a!2986) j!136) a!2986 mask!3053) (Found!5993 j!136)))))

(declare-fun b!584925 () Bool)

(declare-fun res!372890 () Bool)

(assert (=> b!584925 (=> (not res!372890) (not e!334771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584925 (= res!372890 (validKeyInArray!0 k!1786))))

(declare-fun b!584926 () Bool)

(declare-fun res!372885 () Bool)

(assert (=> b!584926 (=> (not res!372885) (not e!334768))))

(declare-datatypes ((List!11640 0))(
  ( (Nil!11637) (Cons!11636 (h!12681 (_ BitVec 64)) (t!17876 List!11640)) )
))
(declare-fun arrayNoDuplicates!0 (array!36551 (_ BitVec 32) List!11640) Bool)

(assert (=> b!584926 (= res!372885 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11637))))

(declare-fun b!584927 () Bool)

(declare-fun res!372896 () Bool)

(assert (=> b!584927 (=> (not res!372896) (not e!334771))))

(assert (=> b!584927 (= res!372896 (validKeyInArray!0 (select (arr!17546 a!2986) j!136)))))

(declare-fun res!372892 () Bool)

(assert (=> start!53696 (=> (not res!372892) (not e!334771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53696 (= res!372892 (validMask!0 mask!3053))))

(assert (=> start!53696 e!334771))

(assert (=> start!53696 true))

(declare-fun array_inv!13320 (array!36551) Bool)

(assert (=> start!53696 (array_inv!13320 a!2986)))

(declare-fun b!584928 () Bool)

(declare-fun res!372893 () Bool)

(assert (=> b!584928 (=> (not res!372893) (not e!334771))))

(assert (=> b!584928 (= res!372893 (and (= (size!17910 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17910 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17910 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584929 () Bool)

(assert (=> b!584929 (= e!334771 e!334768)))

(declare-fun res!372888 () Bool)

(assert (=> b!584929 (=> (not res!372888) (not e!334768))))

(declare-fun lt!265706 () SeekEntryResult!5993)

(assert (=> b!584929 (= res!372888 (or (= lt!265706 (MissingZero!5993 i!1108)) (= lt!265706 (MissingVacant!5993 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36551 (_ BitVec 32)) SeekEntryResult!5993)

(assert (=> b!584929 (= lt!265706 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584930 () Bool)

(declare-fun res!372889 () Bool)

(assert (=> b!584930 (=> (not res!372889) (not e!334768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36551 (_ BitVec 32)) Bool)

(assert (=> b!584930 (= res!372889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53696 res!372892) b!584928))

(assert (= (and b!584928 res!372893) b!584927))

(assert (= (and b!584927 res!372896) b!584925))

(assert (= (and b!584925 res!372890) b!584920))

(assert (= (and b!584920 res!372886) b!584929))

(assert (= (and b!584929 res!372888) b!584930))

(assert (= (and b!584930 res!372889) b!584926))

(assert (= (and b!584926 res!372885) b!584919))

(assert (= (and b!584919 res!372887) b!584924))

(assert (= (and b!584924 res!372891) b!584921))

(assert (= (and b!584921 res!372895) b!584923))

(assert (= (and b!584923 res!372894) b!584922))

(declare-fun m!563249 () Bool)

(assert (=> b!584930 m!563249))

(declare-fun m!563251 () Bool)

(assert (=> b!584923 m!563251))

(declare-fun m!563253 () Bool)

(assert (=> b!584929 m!563253))

(declare-fun m!563255 () Bool)

(assert (=> b!584924 m!563255))

(assert (=> b!584924 m!563255))

(declare-fun m!563257 () Bool)

(assert (=> b!584924 m!563257))

(declare-fun m!563259 () Bool)

(assert (=> start!53696 m!563259))

(declare-fun m!563261 () Bool)

(assert (=> start!53696 m!563261))

(declare-fun m!563263 () Bool)

(assert (=> b!584926 m!563263))

(assert (=> b!584927 m!563255))

(assert (=> b!584927 m!563255))

(declare-fun m!563265 () Bool)

(assert (=> b!584927 m!563265))

(declare-fun m!563267 () Bool)

(assert (=> b!584920 m!563267))

(declare-fun m!563269 () Bool)

(assert (=> b!584921 m!563269))

(assert (=> b!584921 m!563255))

(declare-fun m!563271 () Bool)

(assert (=> b!584919 m!563271))

(declare-fun m!563273 () Bool)

(assert (=> b!584919 m!563273))

(declare-fun m!563275 () Bool)

(assert (=> b!584919 m!563275))

(declare-fun m!563277 () Bool)

(assert (=> b!584925 m!563277))

(assert (=> b!584922 m!563255))

(assert (=> b!584922 m!563255))

(declare-fun m!563279 () Bool)

(assert (=> b!584922 m!563279))

(push 1)

