; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56518 () Bool)

(assert start!56518)

(declare-fun b!625985 () Bool)

(declare-fun res!404010 () Bool)

(declare-fun e!358685 () Bool)

(assert (=> b!625985 (=> (not res!404010) (not e!358685))))

(declare-datatypes ((array!37816 0))(
  ( (array!37817 (arr!18146 (Array (_ BitVec 32) (_ BitVec 64))) (size!18510 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37816)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625985 (= res!404010 (validKeyInArray!0 (select (arr!18146 a!2986) j!136)))))

(declare-fun b!625986 () Bool)

(declare-fun res!404015 () Bool)

(assert (=> b!625986 (=> (not res!404015) (not e!358685))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!625986 (= res!404015 (validKeyInArray!0 k!1786))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!625987 () Bool)

(declare-fun e!358687 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625987 (= e!358687 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18146 a!2986) index!984) (select (arr!18146 a!2986) j!136))) (bvsge index!984 (size!18510 a!2986))))))

(declare-fun b!625988 () Bool)

(declare-fun res!404016 () Bool)

(assert (=> b!625988 (=> (not res!404016) (not e!358687))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6593 0))(
  ( (MissingZero!6593 (index!28655 (_ BitVec 32))) (Found!6593 (index!28656 (_ BitVec 32))) (Intermediate!6593 (undefined!7405 Bool) (index!28657 (_ BitVec 32)) (x!57427 (_ BitVec 32))) (Undefined!6593) (MissingVacant!6593 (index!28658 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37816 (_ BitVec 32)) SeekEntryResult!6593)

(assert (=> b!625988 (= res!404016 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18146 a!2986) j!136) a!2986 mask!3053) (Found!6593 j!136)))))

(declare-fun b!625990 () Bool)

(declare-fun res!404013 () Bool)

(assert (=> b!625990 (=> (not res!404013) (not e!358687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37816 (_ BitVec 32)) Bool)

(assert (=> b!625990 (= res!404013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625991 () Bool)

(assert (=> b!625991 (= e!358685 e!358687)))

(declare-fun res!404012 () Bool)

(assert (=> b!625991 (=> (not res!404012) (not e!358687))))

(declare-fun lt!289953 () SeekEntryResult!6593)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625991 (= res!404012 (or (= lt!289953 (MissingZero!6593 i!1108)) (= lt!289953 (MissingVacant!6593 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37816 (_ BitVec 32)) SeekEntryResult!6593)

(assert (=> b!625991 (= lt!289953 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625992 () Bool)

(declare-fun res!404014 () Bool)

(assert (=> b!625992 (=> (not res!404014) (not e!358685))))

(declare-fun arrayContainsKey!0 (array!37816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625992 (= res!404014 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625993 () Bool)

(declare-fun res!404017 () Bool)

(assert (=> b!625993 (=> (not res!404017) (not e!358685))))

(assert (=> b!625993 (= res!404017 (and (= (size!18510 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18510 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18510 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625994 () Bool)

(declare-fun res!404011 () Bool)

(assert (=> b!625994 (=> (not res!404011) (not e!358687))))

(declare-datatypes ((List!12240 0))(
  ( (Nil!12237) (Cons!12236 (h!13281 (_ BitVec 64)) (t!18476 List!12240)) )
))
(declare-fun arrayNoDuplicates!0 (array!37816 (_ BitVec 32) List!12240) Bool)

(assert (=> b!625994 (= res!404011 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12237))))

(declare-fun b!625989 () Bool)

(declare-fun res!404018 () Bool)

(assert (=> b!625989 (=> (not res!404018) (not e!358687))))

(assert (=> b!625989 (= res!404018 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18146 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18146 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!404009 () Bool)

(assert (=> start!56518 (=> (not res!404009) (not e!358685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56518 (= res!404009 (validMask!0 mask!3053))))

(assert (=> start!56518 e!358685))

(assert (=> start!56518 true))

(declare-fun array_inv!13920 (array!37816) Bool)

(assert (=> start!56518 (array_inv!13920 a!2986)))

(assert (= (and start!56518 res!404009) b!625993))

(assert (= (and b!625993 res!404017) b!625985))

(assert (= (and b!625985 res!404010) b!625986))

(assert (= (and b!625986 res!404015) b!625992))

(assert (= (and b!625992 res!404014) b!625991))

(assert (= (and b!625991 res!404012) b!625990))

(assert (= (and b!625990 res!404013) b!625994))

(assert (= (and b!625994 res!404011) b!625989))

(assert (= (and b!625989 res!404018) b!625988))

(assert (= (and b!625988 res!404016) b!625987))

(declare-fun m!601511 () Bool)

(assert (=> b!625987 m!601511))

(declare-fun m!601513 () Bool)

(assert (=> b!625987 m!601513))

(assert (=> b!625985 m!601513))

(assert (=> b!625985 m!601513))

(declare-fun m!601515 () Bool)

(assert (=> b!625985 m!601515))

(assert (=> b!625988 m!601513))

(assert (=> b!625988 m!601513))

(declare-fun m!601517 () Bool)

(assert (=> b!625988 m!601517))

(declare-fun m!601519 () Bool)

(assert (=> b!625994 m!601519))

(declare-fun m!601521 () Bool)

(assert (=> b!625990 m!601521))

(declare-fun m!601523 () Bool)

(assert (=> b!625992 m!601523))

(declare-fun m!601525 () Bool)

(assert (=> b!625989 m!601525))

(declare-fun m!601527 () Bool)

(assert (=> b!625989 m!601527))

(declare-fun m!601529 () Bool)

(assert (=> b!625989 m!601529))

(declare-fun m!601531 () Bool)

(assert (=> start!56518 m!601531))

(declare-fun m!601533 () Bool)

(assert (=> start!56518 m!601533))

(declare-fun m!601535 () Bool)

(assert (=> b!625986 m!601535))

(declare-fun m!601537 () Bool)

(assert (=> b!625991 m!601537))

(push 1)

(assert (not b!625992))

(assert (not b!625985))

(assert (not b!625990))

(assert (not start!56518))

(assert (not b!625988))

(assert (not b!625986))

(assert (not b!625991))

(assert (not b!625994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

