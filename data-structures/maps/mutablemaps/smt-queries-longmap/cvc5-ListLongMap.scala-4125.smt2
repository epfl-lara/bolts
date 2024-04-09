; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56304 () Bool)

(assert start!56304)

(declare-fun b!623977 () Bool)

(declare-fun res!402309 () Bool)

(declare-fun e!357867 () Bool)

(assert (=> b!623977 (=> (not res!402309) (not e!357867))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623977 (= res!402309 (validKeyInArray!0 k!1786))))

(declare-fun b!623978 () Bool)

(declare-fun res!402311 () Bool)

(declare-fun e!357866 () Bool)

(assert (=> b!623978 (=> (not res!402311) (not e!357866))))

(declare-datatypes ((array!37692 0))(
  ( (array!37693 (arr!18087 (Array (_ BitVec 32) (_ BitVec 64))) (size!18451 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37692)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37692 (_ BitVec 32)) Bool)

(assert (=> b!623978 (= res!402311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623979 () Bool)

(declare-fun res!402308 () Bool)

(assert (=> b!623979 (=> (not res!402308) (not e!357867))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!623979 (= res!402308 (validKeyInArray!0 (select (arr!18087 a!2986) j!136)))))

(declare-fun b!623980 () Bool)

(declare-fun res!402313 () Bool)

(assert (=> b!623980 (=> (not res!402313) (not e!357867))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623980 (= res!402313 (and (= (size!18451 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18451 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18451 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623981 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623981 (= e!357866 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge vacantSpotIndex!68 (size!18451 a!2986))))))

(declare-fun b!623982 () Bool)

(declare-fun res!402312 () Bool)

(assert (=> b!623982 (=> (not res!402312) (not e!357867))))

(declare-fun arrayContainsKey!0 (array!37692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623982 (= res!402312 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623983 () Bool)

(assert (=> b!623983 (= e!357867 e!357866)))

(declare-fun res!402314 () Bool)

(assert (=> b!623983 (=> (not res!402314) (not e!357866))))

(declare-datatypes ((SeekEntryResult!6534 0))(
  ( (MissingZero!6534 (index!28419 (_ BitVec 32))) (Found!6534 (index!28420 (_ BitVec 32))) (Intermediate!6534 (undefined!7346 Bool) (index!28421 (_ BitVec 32)) (x!57210 (_ BitVec 32))) (Undefined!6534) (MissingVacant!6534 (index!28422 (_ BitVec 32))) )
))
(declare-fun lt!289491 () SeekEntryResult!6534)

(assert (=> b!623983 (= res!402314 (or (= lt!289491 (MissingZero!6534 i!1108)) (= lt!289491 (MissingVacant!6534 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37692 (_ BitVec 32)) SeekEntryResult!6534)

(assert (=> b!623983 (= lt!289491 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!402307 () Bool)

(assert (=> start!56304 (=> (not res!402307) (not e!357867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56304 (= res!402307 (validMask!0 mask!3053))))

(assert (=> start!56304 e!357867))

(assert (=> start!56304 true))

(declare-fun array_inv!13861 (array!37692) Bool)

(assert (=> start!56304 (array_inv!13861 a!2986)))

(declare-fun b!623984 () Bool)

(declare-fun res!402310 () Bool)

(assert (=> b!623984 (=> (not res!402310) (not e!357866))))

(declare-datatypes ((List!12181 0))(
  ( (Nil!12178) (Cons!12177 (h!13222 (_ BitVec 64)) (t!18417 List!12181)) )
))
(declare-fun arrayNoDuplicates!0 (array!37692 (_ BitVec 32) List!12181) Bool)

(assert (=> b!623984 (= res!402310 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12178))))

(assert (= (and start!56304 res!402307) b!623980))

(assert (= (and b!623980 res!402313) b!623979))

(assert (= (and b!623979 res!402308) b!623977))

(assert (= (and b!623977 res!402309) b!623982))

(assert (= (and b!623982 res!402312) b!623983))

(assert (= (and b!623983 res!402314) b!623978))

(assert (= (and b!623978 res!402311) b!623984))

(assert (= (and b!623984 res!402310) b!623981))

(declare-fun m!599775 () Bool)

(assert (=> b!623984 m!599775))

(declare-fun m!599777 () Bool)

(assert (=> b!623983 m!599777))

(declare-fun m!599779 () Bool)

(assert (=> b!623978 m!599779))

(declare-fun m!599781 () Bool)

(assert (=> b!623977 m!599781))

(declare-fun m!599783 () Bool)

(assert (=> b!623982 m!599783))

(declare-fun m!599785 () Bool)

(assert (=> start!56304 m!599785))

(declare-fun m!599787 () Bool)

(assert (=> start!56304 m!599787))

(declare-fun m!599789 () Bool)

(assert (=> b!623979 m!599789))

(assert (=> b!623979 m!599789))

(declare-fun m!599791 () Bool)

(assert (=> b!623979 m!599791))

(push 1)

(assert (not b!623978))

(assert (not start!56304))

(assert (not b!623979))

(assert (not b!623984))

(assert (not b!623977))

(assert (not b!623982))

(assert (not b!623983))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

