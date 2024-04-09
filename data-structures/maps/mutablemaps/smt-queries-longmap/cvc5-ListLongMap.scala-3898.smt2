; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53416 () Bool)

(assert start!53416)

(declare-fun b!580701 () Bool)

(declare-fun res!368671 () Bool)

(declare-fun e!333374 () Bool)

(assert (=> b!580701 (=> (not res!368671) (not e!333374))))

(declare-datatypes ((array!36271 0))(
  ( (array!36272 (arr!17406 (Array (_ BitVec 32) (_ BitVec 64))) (size!17770 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36271)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36271 (_ BitVec 32)) Bool)

(assert (=> b!580701 (= res!368671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580702 () Bool)

(declare-fun res!368673 () Bool)

(declare-fun e!333376 () Bool)

(assert (=> b!580702 (=> (not res!368673) (not e!333376))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580702 (= res!368673 (validKeyInArray!0 (select (arr!17406 a!2986) j!136)))))

(declare-fun b!580703 () Bool)

(declare-fun res!368670 () Bool)

(assert (=> b!580703 (=> (not res!368670) (not e!333374))))

(declare-datatypes ((List!11500 0))(
  ( (Nil!11497) (Cons!11496 (h!12541 (_ BitVec 64)) (t!17736 List!11500)) )
))
(declare-fun arrayNoDuplicates!0 (array!36271 (_ BitVec 32) List!11500) Bool)

(assert (=> b!580703 (= res!368670 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11497))))

(declare-fun b!580704 () Bool)

(assert (=> b!580704 (= e!333374 false)))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5853 0))(
  ( (MissingZero!5853 (index!25639 (_ BitVec 32))) (Found!5853 (index!25640 (_ BitVec 32))) (Intermediate!5853 (undefined!6665 Bool) (index!25641 (_ BitVec 32)) (x!54541 (_ BitVec 32))) (Undefined!5853) (MissingVacant!5853 (index!25642 (_ BitVec 32))) )
))
(declare-fun lt!264757 () SeekEntryResult!5853)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36271 (_ BitVec 32)) SeekEntryResult!5853)

(assert (=> b!580704 (= lt!264757 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17406 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580705 () Bool)

(declare-fun res!368669 () Bool)

(assert (=> b!580705 (=> (not res!368669) (not e!333376))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!580705 (= res!368669 (validKeyInArray!0 k!1786))))

(declare-fun res!368674 () Bool)

(assert (=> start!53416 (=> (not res!368674) (not e!333376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53416 (= res!368674 (validMask!0 mask!3053))))

(assert (=> start!53416 e!333376))

(assert (=> start!53416 true))

(declare-fun array_inv!13180 (array!36271) Bool)

(assert (=> start!53416 (array_inv!13180 a!2986)))

(declare-fun b!580706 () Bool)

(declare-fun res!368668 () Bool)

(assert (=> b!580706 (=> (not res!368668) (not e!333376))))

(declare-fun arrayContainsKey!0 (array!36271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580706 (= res!368668 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580707 () Bool)

(declare-fun res!368675 () Bool)

(assert (=> b!580707 (=> (not res!368675) (not e!333374))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580707 (= res!368675 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17406 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17406 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580708 () Bool)

(declare-fun res!368667 () Bool)

(assert (=> b!580708 (=> (not res!368667) (not e!333376))))

(assert (=> b!580708 (= res!368667 (and (= (size!17770 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17770 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17770 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580709 () Bool)

(assert (=> b!580709 (= e!333376 e!333374)))

(declare-fun res!368672 () Bool)

(assert (=> b!580709 (=> (not res!368672) (not e!333374))))

(declare-fun lt!264758 () SeekEntryResult!5853)

(assert (=> b!580709 (= res!368672 (or (= lt!264758 (MissingZero!5853 i!1108)) (= lt!264758 (MissingVacant!5853 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36271 (_ BitVec 32)) SeekEntryResult!5853)

(assert (=> b!580709 (= lt!264758 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53416 res!368674) b!580708))

(assert (= (and b!580708 res!368667) b!580702))

(assert (= (and b!580702 res!368673) b!580705))

(assert (= (and b!580705 res!368669) b!580706))

(assert (= (and b!580706 res!368668) b!580709))

(assert (= (and b!580709 res!368672) b!580701))

(assert (= (and b!580701 res!368671) b!580703))

(assert (= (and b!580703 res!368670) b!580707))

(assert (= (and b!580707 res!368675) b!580704))

(declare-fun m!559315 () Bool)

(assert (=> b!580703 m!559315))

(declare-fun m!559317 () Bool)

(assert (=> start!53416 m!559317))

(declare-fun m!559319 () Bool)

(assert (=> start!53416 m!559319))

(declare-fun m!559321 () Bool)

(assert (=> b!580706 m!559321))

(declare-fun m!559323 () Bool)

(assert (=> b!580701 m!559323))

(declare-fun m!559325 () Bool)

(assert (=> b!580709 m!559325))

(declare-fun m!559327 () Bool)

(assert (=> b!580702 m!559327))

(assert (=> b!580702 m!559327))

(declare-fun m!559329 () Bool)

(assert (=> b!580702 m!559329))

(declare-fun m!559331 () Bool)

(assert (=> b!580705 m!559331))

(declare-fun m!559333 () Bool)

(assert (=> b!580707 m!559333))

(declare-fun m!559335 () Bool)

(assert (=> b!580707 m!559335))

(declare-fun m!559337 () Bool)

(assert (=> b!580707 m!559337))

(assert (=> b!580704 m!559327))

(assert (=> b!580704 m!559327))

(declare-fun m!559339 () Bool)

(assert (=> b!580704 m!559339))

(push 1)

