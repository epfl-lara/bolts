; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53690 () Bool)

(assert start!53690)

(declare-fun b!584812 () Bool)

(declare-fun res!372783 () Bool)

(declare-fun e!334732 () Bool)

(assert (=> b!584812 (=> (not res!372783) (not e!334732))))

(declare-datatypes ((array!36545 0))(
  ( (array!36546 (arr!17543 (Array (_ BitVec 32) (_ BitVec 64))) (size!17907 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36545)

(declare-datatypes ((List!11637 0))(
  ( (Nil!11634) (Cons!11633 (h!12678 (_ BitVec 64)) (t!17873 List!11637)) )
))
(declare-fun arrayNoDuplicates!0 (array!36545 (_ BitVec 32) List!11637) Bool)

(assert (=> b!584812 (= res!372783 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11634))))

(declare-fun b!584813 () Bool)

(declare-fun res!372782 () Bool)

(assert (=> b!584813 (=> (not res!372782) (not e!334732))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584813 (= res!372782 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17543 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17543 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584814 () Bool)

(declare-fun res!372785 () Bool)

(assert (=> b!584814 (=> (not res!372785) (not e!334732))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!584814 (= res!372785 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17543 a!2986) index!984) (select (arr!17543 a!2986) j!136))) (not (= (select (arr!17543 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584815 () Bool)

(declare-fun e!334734 () Bool)

(assert (=> b!584815 (= e!334732 e!334734)))

(declare-fun res!372780 () Bool)

(assert (=> b!584815 (=> (not res!372780) (not e!334734))))

(declare-fun lt!265679 () (_ BitVec 32))

(assert (=> b!584815 (= res!372780 (and (bvsge lt!265679 #b00000000000000000000000000000000) (bvslt lt!265679 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584815 (= lt!265679 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584816 () Bool)

(declare-fun res!372786 () Bool)

(declare-fun e!334735 () Bool)

(assert (=> b!584816 (=> (not res!372786) (not e!334735))))

(declare-fun arrayContainsKey!0 (array!36545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584816 (= res!372786 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584811 () Bool)

(declare-fun res!372781 () Bool)

(assert (=> b!584811 (=> (not res!372781) (not e!334735))))

(assert (=> b!584811 (= res!372781 (and (= (size!17907 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17907 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17907 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!372788 () Bool)

(assert (=> start!53690 (=> (not res!372788) (not e!334735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53690 (= res!372788 (validMask!0 mask!3053))))

(assert (=> start!53690 e!334735))

(assert (=> start!53690 true))

(declare-fun array_inv!13317 (array!36545) Bool)

(assert (=> start!53690 (array_inv!13317 a!2986)))

(declare-fun b!584817 () Bool)

(declare-fun res!372778 () Bool)

(assert (=> b!584817 (=> (not res!372778) (not e!334735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584817 (= res!372778 (validKeyInArray!0 k!1786))))

(declare-fun b!584818 () Bool)

(declare-fun res!372787 () Bool)

(assert (=> b!584818 (=> (not res!372787) (not e!334732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36545 (_ BitVec 32)) Bool)

(assert (=> b!584818 (= res!372787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584819 () Bool)

(assert (=> b!584819 (= e!334734 false)))

(declare-datatypes ((SeekEntryResult!5990 0))(
  ( (MissingZero!5990 (index!26187 (_ BitVec 32))) (Found!5990 (index!26188 (_ BitVec 32))) (Intermediate!5990 (undefined!6802 Bool) (index!26189 (_ BitVec 32)) (x!55038 (_ BitVec 32))) (Undefined!5990) (MissingVacant!5990 (index!26190 (_ BitVec 32))) )
))
(declare-fun lt!265677 () SeekEntryResult!5990)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36545 (_ BitVec 32)) SeekEntryResult!5990)

(assert (=> b!584819 (= lt!265677 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265679 vacantSpotIndex!68 (select (arr!17543 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584820 () Bool)

(declare-fun res!372784 () Bool)

(assert (=> b!584820 (=> (not res!372784) (not e!334735))))

(assert (=> b!584820 (= res!372784 (validKeyInArray!0 (select (arr!17543 a!2986) j!136)))))

(declare-fun b!584821 () Bool)

(declare-fun res!372777 () Bool)

(assert (=> b!584821 (=> (not res!372777) (not e!334732))))

(assert (=> b!584821 (= res!372777 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17543 a!2986) j!136) a!2986 mask!3053) (Found!5990 j!136)))))

(declare-fun b!584822 () Bool)

(assert (=> b!584822 (= e!334735 e!334732)))

(declare-fun res!372779 () Bool)

(assert (=> b!584822 (=> (not res!372779) (not e!334732))))

(declare-fun lt!265678 () SeekEntryResult!5990)

(assert (=> b!584822 (= res!372779 (or (= lt!265678 (MissingZero!5990 i!1108)) (= lt!265678 (MissingVacant!5990 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36545 (_ BitVec 32)) SeekEntryResult!5990)

(assert (=> b!584822 (= lt!265678 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53690 res!372788) b!584811))

(assert (= (and b!584811 res!372781) b!584820))

(assert (= (and b!584820 res!372784) b!584817))

(assert (= (and b!584817 res!372778) b!584816))

(assert (= (and b!584816 res!372786) b!584822))

(assert (= (and b!584822 res!372779) b!584818))

(assert (= (and b!584818 res!372787) b!584812))

(assert (= (and b!584812 res!372783) b!584813))

(assert (= (and b!584813 res!372782) b!584821))

(assert (= (and b!584821 res!372777) b!584814))

(assert (= (and b!584814 res!372785) b!584815))

(assert (= (and b!584815 res!372780) b!584819))

(declare-fun m!563153 () Bool)

(assert (=> b!584819 m!563153))

(assert (=> b!584819 m!563153))

(declare-fun m!563155 () Bool)

(assert (=> b!584819 m!563155))

(assert (=> b!584820 m!563153))

(assert (=> b!584820 m!563153))

(declare-fun m!563157 () Bool)

(assert (=> b!584820 m!563157))

(declare-fun m!563159 () Bool)

(assert (=> start!53690 m!563159))

(declare-fun m!563161 () Bool)

(assert (=> start!53690 m!563161))

(declare-fun m!563163 () Bool)

(assert (=> b!584813 m!563163))

(declare-fun m!563165 () Bool)

(assert (=> b!584813 m!563165))

(declare-fun m!563167 () Bool)

(assert (=> b!584813 m!563167))

(declare-fun m!563169 () Bool)

(assert (=> b!584814 m!563169))

(assert (=> b!584814 m!563153))

(declare-fun m!563171 () Bool)

(assert (=> b!584822 m!563171))

(declare-fun m!563173 () Bool)

(assert (=> b!584816 m!563173))

(declare-fun m!563175 () Bool)

(assert (=> b!584817 m!563175))

(declare-fun m!563177 () Bool)

(assert (=> b!584818 m!563177))

(declare-fun m!563179 () Bool)

(assert (=> b!584812 m!563179))

(declare-fun m!563181 () Bool)

(assert (=> b!584815 m!563181))

(assert (=> b!584821 m!563153))

(assert (=> b!584821 m!563153))

(declare-fun m!563183 () Bool)

(assert (=> b!584821 m!563183))

(push 1)

