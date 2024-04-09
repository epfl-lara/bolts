; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53950 () Bool)

(assert start!53950)

(declare-fun b!588424 () Bool)

(declare-fun e!336001 () Bool)

(declare-fun e!336002 () Bool)

(assert (=> b!588424 (= e!336001 e!336002)))

(declare-fun res!376213 () Bool)

(assert (=> b!588424 (=> (not res!376213) (not e!336002))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36748 0))(
  ( (array!36749 (arr!17643 (Array (_ BitVec 32) (_ BitVec 64))) (size!18007 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36748)

(assert (=> b!588424 (= res!376213 (= (select (store (arr!17643 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!266839 () array!36748)

(assert (=> b!588424 (= lt!266839 (array!36749 (store (arr!17643 a!2986) i!1108 k!1786) (size!18007 a!2986)))))

(declare-fun b!588425 () Bool)

(declare-datatypes ((Unit!18304 0))(
  ( (Unit!18305) )
))
(declare-fun e!336005 () Unit!18304)

(declare-fun Unit!18306 () Unit!18304)

(assert (=> b!588425 (= e!336005 Unit!18306)))

(declare-fun b!588426 () Bool)

(declare-fun res!376212 () Bool)

(declare-fun e!336007 () Bool)

(assert (=> b!588426 (=> (not res!376212) (not e!336007))))

(declare-fun arrayContainsKey!0 (array!36748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588426 (= res!376212 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588427 () Bool)

(declare-fun res!376216 () Bool)

(assert (=> b!588427 (=> (not res!376216) (not e!336007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588427 (= res!376216 (validKeyInArray!0 k!1786))))

(declare-fun res!376210 () Bool)

(assert (=> start!53950 (=> (not res!376210) (not e!336007))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53950 (= res!376210 (validMask!0 mask!3053))))

(assert (=> start!53950 e!336007))

(assert (=> start!53950 true))

(declare-fun array_inv!13417 (array!36748) Bool)

(assert (=> start!53950 (array_inv!13417 a!2986)))

(declare-fun b!588428 () Bool)

(declare-fun e!336004 () Bool)

(assert (=> b!588428 (= e!336004 (not true))))

(declare-fun lt!266834 () Unit!18304)

(assert (=> b!588428 (= lt!266834 e!336005)))

(declare-fun c!66476 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!266836 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!6090 0))(
  ( (MissingZero!6090 (index!26590 (_ BitVec 32))) (Found!6090 (index!26591 (_ BitVec 32))) (Intermediate!6090 (undefined!6902 Bool) (index!26592 (_ BitVec 32)) (x!55419 (_ BitVec 32))) (Undefined!6090) (MissingVacant!6090 (index!26593 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36748 (_ BitVec 32)) SeekEntryResult!6090)

(assert (=> b!588428 (= c!66476 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266836 lt!266839 mask!3053) Undefined!6090))))

(declare-fun e!336003 () Bool)

(assert (=> b!588428 e!336003))

(declare-fun res!376215 () Bool)

(assert (=> b!588428 (=> (not res!376215) (not e!336003))))

(declare-fun lt!266835 () SeekEntryResult!6090)

(declare-fun lt!266837 () (_ BitVec 32))

(assert (=> b!588428 (= res!376215 (= lt!266835 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266837 vacantSpotIndex!68 lt!266836 lt!266839 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588428 (= lt!266835 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266837 vacantSpotIndex!68 (select (arr!17643 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!588428 (= lt!266836 (select (store (arr!17643 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!266838 () Unit!18304)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36748 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18304)

(assert (=> b!588428 (= lt!266838 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266837 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588428 (= lt!266837 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588429 () Bool)

(declare-fun Unit!18307 () Unit!18304)

(assert (=> b!588429 (= e!336005 Unit!18307)))

(assert (=> b!588429 false))

(declare-fun b!588430 () Bool)

(declare-fun res!376214 () Bool)

(assert (=> b!588430 (=> (not res!376214) (not e!336001))))

(declare-datatypes ((List!11737 0))(
  ( (Nil!11734) (Cons!11733 (h!12778 (_ BitVec 64)) (t!17973 List!11737)) )
))
(declare-fun arrayNoDuplicates!0 (array!36748 (_ BitVec 32) List!11737) Bool)

(assert (=> b!588430 (= res!376214 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11734))))

(declare-fun b!588431 () Bool)

(assert (=> b!588431 (= e!336007 e!336001)))

(declare-fun res!376217 () Bool)

(assert (=> b!588431 (=> (not res!376217) (not e!336001))))

(declare-fun lt!266840 () SeekEntryResult!6090)

(assert (=> b!588431 (= res!376217 (or (= lt!266840 (MissingZero!6090 i!1108)) (= lt!266840 (MissingVacant!6090 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36748 (_ BitVec 32)) SeekEntryResult!6090)

(assert (=> b!588431 (= lt!266840 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588432 () Bool)

(declare-fun lt!266833 () SeekEntryResult!6090)

(assert (=> b!588432 (= e!336003 (= lt!266833 lt!266835))))

(declare-fun b!588433 () Bool)

(declare-fun res!376211 () Bool)

(assert (=> b!588433 (=> (not res!376211) (not e!336007))))

(assert (=> b!588433 (= res!376211 (validKeyInArray!0 (select (arr!17643 a!2986) j!136)))))

(declare-fun b!588434 () Bool)

(declare-fun res!376207 () Bool)

(assert (=> b!588434 (=> (not res!376207) (not e!336001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36748 (_ BitVec 32)) Bool)

(assert (=> b!588434 (= res!376207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588435 () Bool)

(declare-fun res!376208 () Bool)

(assert (=> b!588435 (=> (not res!376208) (not e!336007))))

(assert (=> b!588435 (= res!376208 (and (= (size!18007 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18007 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18007 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588436 () Bool)

(declare-fun res!376209 () Bool)

(assert (=> b!588436 (=> (not res!376209) (not e!336001))))

(assert (=> b!588436 (= res!376209 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17643 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588437 () Bool)

(assert (=> b!588437 (= e!336002 e!336004)))

(declare-fun res!376206 () Bool)

(assert (=> b!588437 (=> (not res!376206) (not e!336004))))

(assert (=> b!588437 (= res!376206 (and (= lt!266833 (Found!6090 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17643 a!2986) index!984) (select (arr!17643 a!2986) j!136))) (not (= (select (arr!17643 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588437 (= lt!266833 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17643 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53950 res!376210) b!588435))

(assert (= (and b!588435 res!376208) b!588433))

(assert (= (and b!588433 res!376211) b!588427))

(assert (= (and b!588427 res!376216) b!588426))

(assert (= (and b!588426 res!376212) b!588431))

(assert (= (and b!588431 res!376217) b!588434))

(assert (= (and b!588434 res!376207) b!588430))

(assert (= (and b!588430 res!376214) b!588436))

(assert (= (and b!588436 res!376209) b!588424))

(assert (= (and b!588424 res!376213) b!588437))

(assert (= (and b!588437 res!376206) b!588428))

(assert (= (and b!588428 res!376215) b!588432))

(assert (= (and b!588428 c!66476) b!588429))

(assert (= (and b!588428 (not c!66476)) b!588425))

(declare-fun m!567043 () Bool)

(assert (=> b!588426 m!567043))

(declare-fun m!567045 () Bool)

(assert (=> b!588437 m!567045))

(declare-fun m!567047 () Bool)

(assert (=> b!588437 m!567047))

(assert (=> b!588437 m!567047))

(declare-fun m!567049 () Bool)

(assert (=> b!588437 m!567049))

(declare-fun m!567051 () Bool)

(assert (=> start!53950 m!567051))

(declare-fun m!567053 () Bool)

(assert (=> start!53950 m!567053))

(declare-fun m!567055 () Bool)

(assert (=> b!588434 m!567055))

(declare-fun m!567057 () Bool)

(assert (=> b!588424 m!567057))

(declare-fun m!567059 () Bool)

(assert (=> b!588424 m!567059))

(assert (=> b!588433 m!567047))

(assert (=> b!588433 m!567047))

(declare-fun m!567061 () Bool)

(assert (=> b!588433 m!567061))

(declare-fun m!567063 () Bool)

(assert (=> b!588430 m!567063))

(declare-fun m!567065 () Bool)

(assert (=> b!588428 m!567065))

(declare-fun m!567067 () Bool)

(assert (=> b!588428 m!567067))

(assert (=> b!588428 m!567057))

(declare-fun m!567069 () Bool)

(assert (=> b!588428 m!567069))

(declare-fun m!567071 () Bool)

(assert (=> b!588428 m!567071))

(declare-fun m!567073 () Bool)

(assert (=> b!588428 m!567073))

(assert (=> b!588428 m!567047))

(declare-fun m!567075 () Bool)

(assert (=> b!588428 m!567075))

(assert (=> b!588428 m!567047))

(declare-fun m!567077 () Bool)

(assert (=> b!588427 m!567077))

(declare-fun m!567079 () Bool)

(assert (=> b!588431 m!567079))

(declare-fun m!567081 () Bool)

(assert (=> b!588436 m!567081))

(push 1)

