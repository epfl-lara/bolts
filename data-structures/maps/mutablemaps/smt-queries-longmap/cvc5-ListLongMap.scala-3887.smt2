; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53350 () Bool)

(assert start!53350)

(declare-fun b!579801 () Bool)

(declare-fun res!367768 () Bool)

(declare-fun e!333079 () Bool)

(assert (=> b!579801 (=> (not res!367768) (not e!333079))))

(declare-datatypes ((array!36205 0))(
  ( (array!36206 (arr!17373 (Array (_ BitVec 32) (_ BitVec 64))) (size!17737 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36205)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579801 (= res!367768 (validKeyInArray!0 (select (arr!17373 a!2986) j!136)))))

(declare-fun b!579802 () Bool)

(declare-fun res!367771 () Bool)

(assert (=> b!579802 (=> (not res!367771) (not e!333079))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579802 (= res!367771 (and (= (size!17737 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17737 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17737 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579803 () Bool)

(declare-fun e!333078 () Bool)

(assert (=> b!579803 (= e!333078 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5820 0))(
  ( (MissingZero!5820 (index!25507 (_ BitVec 32))) (Found!5820 (index!25508 (_ BitVec 32))) (Intermediate!5820 (undefined!6632 Bool) (index!25509 (_ BitVec 32)) (x!54420 (_ BitVec 32))) (Undefined!5820) (MissingVacant!5820 (index!25510 (_ BitVec 32))) )
))
(declare-fun lt!264569 () SeekEntryResult!5820)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36205 (_ BitVec 32)) SeekEntryResult!5820)

(assert (=> b!579803 (= lt!264569 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17373 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579804 () Bool)

(declare-fun res!367772 () Bool)

(assert (=> b!579804 (=> (not res!367772) (not e!333078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36205 (_ BitVec 32)) Bool)

(assert (=> b!579804 (= res!367772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579805 () Bool)

(declare-fun res!367767 () Bool)

(assert (=> b!579805 (=> (not res!367767) (not e!333078))))

(declare-datatypes ((List!11467 0))(
  ( (Nil!11464) (Cons!11463 (h!12508 (_ BitVec 64)) (t!17703 List!11467)) )
))
(declare-fun arrayNoDuplicates!0 (array!36205 (_ BitVec 32) List!11467) Bool)

(assert (=> b!579805 (= res!367767 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11464))))

(declare-fun b!579806 () Bool)

(declare-fun res!367769 () Bool)

(assert (=> b!579806 (=> (not res!367769) (not e!333079))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579806 (= res!367769 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579807 () Bool)

(assert (=> b!579807 (= e!333079 e!333078)))

(declare-fun res!367775 () Bool)

(assert (=> b!579807 (=> (not res!367775) (not e!333078))))

(declare-fun lt!264568 () SeekEntryResult!5820)

(assert (=> b!579807 (= res!367775 (or (= lt!264568 (MissingZero!5820 i!1108)) (= lt!264568 (MissingVacant!5820 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36205 (_ BitVec 32)) SeekEntryResult!5820)

(assert (=> b!579807 (= lt!264568 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!367774 () Bool)

(assert (=> start!53350 (=> (not res!367774) (not e!333079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53350 (= res!367774 (validMask!0 mask!3053))))

(assert (=> start!53350 e!333079))

(assert (=> start!53350 true))

(declare-fun array_inv!13147 (array!36205) Bool)

(assert (=> start!53350 (array_inv!13147 a!2986)))

(declare-fun b!579808 () Bool)

(declare-fun res!367773 () Bool)

(assert (=> b!579808 (=> (not res!367773) (not e!333079))))

(assert (=> b!579808 (= res!367773 (validKeyInArray!0 k!1786))))

(declare-fun b!579809 () Bool)

(declare-fun res!367770 () Bool)

(assert (=> b!579809 (=> (not res!367770) (not e!333078))))

(assert (=> b!579809 (= res!367770 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17373 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17373 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53350 res!367774) b!579802))

(assert (= (and b!579802 res!367771) b!579801))

(assert (= (and b!579801 res!367768) b!579808))

(assert (= (and b!579808 res!367773) b!579806))

(assert (= (and b!579806 res!367769) b!579807))

(assert (= (and b!579807 res!367775) b!579804))

(assert (= (and b!579804 res!367772) b!579805))

(assert (= (and b!579805 res!367767) b!579809))

(assert (= (and b!579809 res!367770) b!579803))

(declare-fun m!558451 () Bool)

(assert (=> b!579801 m!558451))

(assert (=> b!579801 m!558451))

(declare-fun m!558453 () Bool)

(assert (=> b!579801 m!558453))

(declare-fun m!558455 () Bool)

(assert (=> b!579806 m!558455))

(declare-fun m!558457 () Bool)

(assert (=> b!579805 m!558457))

(declare-fun m!558459 () Bool)

(assert (=> b!579807 m!558459))

(declare-fun m!558461 () Bool)

(assert (=> b!579809 m!558461))

(declare-fun m!558463 () Bool)

(assert (=> b!579809 m!558463))

(declare-fun m!558465 () Bool)

(assert (=> b!579809 m!558465))

(declare-fun m!558467 () Bool)

(assert (=> b!579804 m!558467))

(declare-fun m!558469 () Bool)

(assert (=> b!579808 m!558469))

(declare-fun m!558471 () Bool)

(assert (=> start!53350 m!558471))

(declare-fun m!558473 () Bool)

(assert (=> start!53350 m!558473))

(assert (=> b!579803 m!558451))

(assert (=> b!579803 m!558451))

(declare-fun m!558475 () Bool)

(assert (=> b!579803 m!558475))

(push 1)

