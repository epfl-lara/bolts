; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56624 () Bool)

(assert start!56624)

(declare-fun b!627049 () Bool)

(declare-fun res!404930 () Bool)

(declare-fun e!359083 () Bool)

(assert (=> b!627049 (=> (not res!404930) (not e!359083))))

(declare-datatypes ((array!37877 0))(
  ( (array!37878 (arr!18175 (Array (_ BitVec 32) (_ BitVec 64))) (size!18539 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37877)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37877 (_ BitVec 32)) Bool)

(assert (=> b!627049 (= res!404930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627050 () Bool)

(declare-fun e!359082 () Bool)

(assert (=> b!627050 (= e!359082 e!359083)))

(declare-fun res!404937 () Bool)

(assert (=> b!627050 (=> (not res!404937) (not e!359083))))

(declare-datatypes ((SeekEntryResult!6622 0))(
  ( (MissingZero!6622 (index!28771 (_ BitVec 32))) (Found!6622 (index!28772 (_ BitVec 32))) (Intermediate!6622 (undefined!7434 Bool) (index!28773 (_ BitVec 32)) (x!57539 (_ BitVec 32))) (Undefined!6622) (MissingVacant!6622 (index!28774 (_ BitVec 32))) )
))
(declare-fun lt!290190 () SeekEntryResult!6622)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627050 (= res!404937 (or (= lt!290190 (MissingZero!6622 i!1108)) (= lt!290190 (MissingVacant!6622 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37877 (_ BitVec 32)) SeekEntryResult!6622)

(assert (=> b!627050 (= lt!290190 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!627051 () Bool)

(declare-fun res!404936 () Bool)

(assert (=> b!627051 (=> (not res!404936) (not e!359083))))

(declare-datatypes ((List!12269 0))(
  ( (Nil!12266) (Cons!12265 (h!13310 (_ BitVec 64)) (t!18505 List!12269)) )
))
(declare-fun arrayNoDuplicates!0 (array!37877 (_ BitVec 32) List!12269) Bool)

(assert (=> b!627051 (= res!404936 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12266))))

(declare-fun b!627052 () Bool)

(declare-fun res!404931 () Bool)

(assert (=> b!627052 (=> (not res!404931) (not e!359082))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627052 (= res!404931 (validKeyInArray!0 (select (arr!18175 a!2986) j!136)))))

(declare-fun b!627053 () Bool)

(assert (=> b!627053 (= e!359083 false)))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!290189 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627053 (= lt!290189 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627055 () Bool)

(declare-fun res!404929 () Bool)

(assert (=> b!627055 (=> (not res!404929) (not e!359082))))

(declare-fun arrayContainsKey!0 (array!37877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627055 (= res!404929 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627056 () Bool)

(declare-fun res!404939 () Bool)

(assert (=> b!627056 (=> (not res!404939) (not e!359083))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!627056 (= res!404939 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18175 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18175 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627057 () Bool)

(declare-fun res!404933 () Bool)

(assert (=> b!627057 (=> (not res!404933) (not e!359082))))

(assert (=> b!627057 (= res!404933 (validKeyInArray!0 k0!1786))))

(declare-fun res!404938 () Bool)

(assert (=> start!56624 (=> (not res!404938) (not e!359082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56624 (= res!404938 (validMask!0 mask!3053))))

(assert (=> start!56624 e!359082))

(assert (=> start!56624 true))

(declare-fun array_inv!13949 (array!37877) Bool)

(assert (=> start!56624 (array_inv!13949 a!2986)))

(declare-fun b!627054 () Bool)

(declare-fun res!404935 () Bool)

(assert (=> b!627054 (=> (not res!404935) (not e!359083))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37877 (_ BitVec 32)) SeekEntryResult!6622)

(assert (=> b!627054 (= res!404935 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18175 a!2986) j!136) a!2986 mask!3053) (Found!6622 j!136)))))

(declare-fun b!627058 () Bool)

(declare-fun res!404932 () Bool)

(assert (=> b!627058 (=> (not res!404932) (not e!359083))))

(assert (=> b!627058 (= res!404932 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18175 a!2986) index!984) (select (arr!18175 a!2986) j!136))) (not (= (select (arr!18175 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627059 () Bool)

(declare-fun res!404934 () Bool)

(assert (=> b!627059 (=> (not res!404934) (not e!359082))))

(assert (=> b!627059 (= res!404934 (and (= (size!18539 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18539 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18539 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56624 res!404938) b!627059))

(assert (= (and b!627059 res!404934) b!627052))

(assert (= (and b!627052 res!404931) b!627057))

(assert (= (and b!627057 res!404933) b!627055))

(assert (= (and b!627055 res!404929) b!627050))

(assert (= (and b!627050 res!404937) b!627049))

(assert (= (and b!627049 res!404930) b!627051))

(assert (= (and b!627051 res!404936) b!627056))

(assert (= (and b!627056 res!404939) b!627054))

(assert (= (and b!627054 res!404935) b!627058))

(assert (= (and b!627058 res!404932) b!627053))

(declare-fun m!602433 () Bool)

(assert (=> b!627049 m!602433))

(declare-fun m!602435 () Bool)

(assert (=> b!627055 m!602435))

(declare-fun m!602437 () Bool)

(assert (=> b!627054 m!602437))

(assert (=> b!627054 m!602437))

(declare-fun m!602439 () Bool)

(assert (=> b!627054 m!602439))

(declare-fun m!602441 () Bool)

(assert (=> b!627050 m!602441))

(declare-fun m!602443 () Bool)

(assert (=> start!56624 m!602443))

(declare-fun m!602445 () Bool)

(assert (=> start!56624 m!602445))

(declare-fun m!602447 () Bool)

(assert (=> b!627058 m!602447))

(assert (=> b!627058 m!602437))

(assert (=> b!627052 m!602437))

(assert (=> b!627052 m!602437))

(declare-fun m!602449 () Bool)

(assert (=> b!627052 m!602449))

(declare-fun m!602451 () Bool)

(assert (=> b!627053 m!602451))

(declare-fun m!602453 () Bool)

(assert (=> b!627057 m!602453))

(declare-fun m!602455 () Bool)

(assert (=> b!627056 m!602455))

(declare-fun m!602457 () Bool)

(assert (=> b!627056 m!602457))

(declare-fun m!602459 () Bool)

(assert (=> b!627056 m!602459))

(declare-fun m!602461 () Bool)

(assert (=> b!627051 m!602461))

(check-sat (not b!627050) (not b!627054) (not b!627051) (not start!56624) (not b!627053) (not b!627057) (not b!627055) (not b!627052) (not b!627049))
(check-sat)
