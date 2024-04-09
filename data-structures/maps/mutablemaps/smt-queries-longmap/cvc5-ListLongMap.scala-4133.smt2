; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56400 () Bool)

(assert start!56400)

(declare-fun b!624789 () Bool)

(declare-fun e!358217 () Bool)

(assert (=> b!624789 (= e!358217 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6558 0))(
  ( (MissingZero!6558 (index!28515 (_ BitVec 32))) (Found!6558 (index!28516 (_ BitVec 32))) (Intermediate!6558 (undefined!7370 Bool) (index!28517 (_ BitVec 32)) (x!57301 (_ BitVec 32))) (Undefined!6558) (MissingVacant!6558 (index!28518 (_ BitVec 32))) )
))
(declare-fun lt!289682 () SeekEntryResult!6558)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37743 0))(
  ( (array!37744 (arr!18111 (Array (_ BitVec 32) (_ BitVec 64))) (size!18475 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37743)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37743 (_ BitVec 32)) SeekEntryResult!6558)

(assert (=> b!624789 (= lt!289682 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18111 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624790 () Bool)

(declare-fun res!402979 () Bool)

(declare-fun e!358219 () Bool)

(assert (=> b!624790 (=> (not res!402979) (not e!358219))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624790 (= res!402979 (validKeyInArray!0 k!1786))))

(declare-fun b!624791 () Bool)

(declare-fun res!402976 () Bool)

(assert (=> b!624791 (=> (not res!402976) (not e!358219))))

(assert (=> b!624791 (= res!402976 (validKeyInArray!0 (select (arr!18111 a!2986) j!136)))))

(declare-fun b!624793 () Bool)

(declare-fun res!402978 () Bool)

(assert (=> b!624793 (=> (not res!402978) (not e!358217))))

(declare-datatypes ((List!12205 0))(
  ( (Nil!12202) (Cons!12201 (h!13246 (_ BitVec 64)) (t!18441 List!12205)) )
))
(declare-fun arrayNoDuplicates!0 (array!37743 (_ BitVec 32) List!12205) Bool)

(assert (=> b!624793 (= res!402978 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12202))))

(declare-fun b!624794 () Bool)

(declare-fun res!402981 () Bool)

(assert (=> b!624794 (=> (not res!402981) (not e!358217))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624794 (= res!402981 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18111 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18111 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624795 () Bool)

(assert (=> b!624795 (= e!358219 e!358217)))

(declare-fun res!402980 () Bool)

(assert (=> b!624795 (=> (not res!402980) (not e!358217))))

(declare-fun lt!289683 () SeekEntryResult!6558)

(assert (=> b!624795 (= res!402980 (or (= lt!289683 (MissingZero!6558 i!1108)) (= lt!289683 (MissingVacant!6558 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37743 (_ BitVec 32)) SeekEntryResult!6558)

(assert (=> b!624795 (= lt!289683 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624796 () Bool)

(declare-fun res!402982 () Bool)

(assert (=> b!624796 (=> (not res!402982) (not e!358219))))

(declare-fun arrayContainsKey!0 (array!37743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624796 (= res!402982 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624797 () Bool)

(declare-fun res!402977 () Bool)

(assert (=> b!624797 (=> (not res!402977) (not e!358219))))

(assert (=> b!624797 (= res!402977 (and (= (size!18475 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18475 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18475 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624792 () Bool)

(declare-fun res!402975 () Bool)

(assert (=> b!624792 (=> (not res!402975) (not e!358217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37743 (_ BitVec 32)) Bool)

(assert (=> b!624792 (= res!402975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!402983 () Bool)

(assert (=> start!56400 (=> (not res!402983) (not e!358219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56400 (= res!402983 (validMask!0 mask!3053))))

(assert (=> start!56400 e!358219))

(assert (=> start!56400 true))

(declare-fun array_inv!13885 (array!37743) Bool)

(assert (=> start!56400 (array_inv!13885 a!2986)))

(assert (= (and start!56400 res!402983) b!624797))

(assert (= (and b!624797 res!402977) b!624791))

(assert (= (and b!624791 res!402976) b!624790))

(assert (= (and b!624790 res!402979) b!624796))

(assert (= (and b!624796 res!402982) b!624795))

(assert (= (and b!624795 res!402980) b!624792))

(assert (= (and b!624792 res!402975) b!624793))

(assert (= (and b!624793 res!402978) b!624794))

(assert (= (and b!624794 res!402981) b!624789))

(declare-fun m!600435 () Bool)

(assert (=> b!624790 m!600435))

(declare-fun m!600437 () Bool)

(assert (=> b!624793 m!600437))

(declare-fun m!600439 () Bool)

(assert (=> b!624796 m!600439))

(declare-fun m!600441 () Bool)

(assert (=> start!56400 m!600441))

(declare-fun m!600443 () Bool)

(assert (=> start!56400 m!600443))

(declare-fun m!600445 () Bool)

(assert (=> b!624795 m!600445))

(declare-fun m!600447 () Bool)

(assert (=> b!624789 m!600447))

(assert (=> b!624789 m!600447))

(declare-fun m!600449 () Bool)

(assert (=> b!624789 m!600449))

(assert (=> b!624791 m!600447))

(assert (=> b!624791 m!600447))

(declare-fun m!600451 () Bool)

(assert (=> b!624791 m!600451))

(declare-fun m!600453 () Bool)

(assert (=> b!624794 m!600453))

(declare-fun m!600455 () Bool)

(assert (=> b!624794 m!600455))

(declare-fun m!600457 () Bool)

(assert (=> b!624794 m!600457))

(declare-fun m!600459 () Bool)

(assert (=> b!624792 m!600459))

(push 1)

