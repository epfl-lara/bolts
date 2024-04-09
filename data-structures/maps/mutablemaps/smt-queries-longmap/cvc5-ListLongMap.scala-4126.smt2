; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56310 () Bool)

(assert start!56310)

(declare-fun b!624047 () Bool)

(declare-fun res!402381 () Bool)

(declare-fun e!357895 () Bool)

(assert (=> b!624047 (=> (not res!402381) (not e!357895))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37698 0))(
  ( (array!37699 (arr!18090 (Array (_ BitVec 32) (_ BitVec 64))) (size!18454 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37698)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624047 (= res!402381 (and (= (size!18454 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18454 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18454 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624048 () Bool)

(declare-fun res!402379 () Bool)

(assert (=> b!624048 (=> (not res!402379) (not e!357895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624048 (= res!402379 (validKeyInArray!0 (select (arr!18090 a!2986) j!136)))))

(declare-fun b!624049 () Bool)

(declare-fun res!402383 () Bool)

(assert (=> b!624049 (=> (not res!402383) (not e!357895))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624049 (= res!402383 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624050 () Bool)

(declare-fun e!357893 () Bool)

(assert (=> b!624050 (= e!357895 e!357893)))

(declare-fun res!402382 () Bool)

(assert (=> b!624050 (=> (not res!402382) (not e!357893))))

(declare-datatypes ((SeekEntryResult!6537 0))(
  ( (MissingZero!6537 (index!28431 (_ BitVec 32))) (Found!6537 (index!28432 (_ BitVec 32))) (Intermediate!6537 (undefined!7349 Bool) (index!28433 (_ BitVec 32)) (x!57221 (_ BitVec 32))) (Undefined!6537) (MissingVacant!6537 (index!28434 (_ BitVec 32))) )
))
(declare-fun lt!289503 () SeekEntryResult!6537)

(assert (=> b!624050 (= res!402382 (or (= lt!289503 (MissingZero!6537 i!1108)) (= lt!289503 (MissingVacant!6537 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37698 (_ BitVec 32)) SeekEntryResult!6537)

(assert (=> b!624050 (= lt!289503 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624051 () Bool)

(declare-fun res!402378 () Bool)

(assert (=> b!624051 (=> (not res!402378) (not e!357895))))

(assert (=> b!624051 (= res!402378 (validKeyInArray!0 k!1786))))

(declare-fun b!624052 () Bool)

(assert (=> b!624052 (= e!357893 false)))

(declare-fun lt!289502 () Bool)

(declare-datatypes ((List!12184 0))(
  ( (Nil!12181) (Cons!12180 (h!13225 (_ BitVec 64)) (t!18420 List!12184)) )
))
(declare-fun arrayNoDuplicates!0 (array!37698 (_ BitVec 32) List!12184) Bool)

(assert (=> b!624052 (= lt!289502 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12181))))

(declare-fun b!624053 () Bool)

(declare-fun res!402380 () Bool)

(assert (=> b!624053 (=> (not res!402380) (not e!357893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37698 (_ BitVec 32)) Bool)

(assert (=> b!624053 (= res!402380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!402377 () Bool)

(assert (=> start!56310 (=> (not res!402377) (not e!357895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56310 (= res!402377 (validMask!0 mask!3053))))

(assert (=> start!56310 e!357895))

(assert (=> start!56310 true))

(declare-fun array_inv!13864 (array!37698) Bool)

(assert (=> start!56310 (array_inv!13864 a!2986)))

(assert (= (and start!56310 res!402377) b!624047))

(assert (= (and b!624047 res!402381) b!624048))

(assert (= (and b!624048 res!402379) b!624051))

(assert (= (and b!624051 res!402378) b!624049))

(assert (= (and b!624049 res!402383) b!624050))

(assert (= (and b!624050 res!402382) b!624053))

(assert (= (and b!624053 res!402380) b!624052))

(declare-fun m!599829 () Bool)

(assert (=> start!56310 m!599829))

(declare-fun m!599831 () Bool)

(assert (=> start!56310 m!599831))

(declare-fun m!599833 () Bool)

(assert (=> b!624053 m!599833))

(declare-fun m!599835 () Bool)

(assert (=> b!624050 m!599835))

(declare-fun m!599837 () Bool)

(assert (=> b!624049 m!599837))

(declare-fun m!599839 () Bool)

(assert (=> b!624052 m!599839))

(declare-fun m!599841 () Bool)

(assert (=> b!624048 m!599841))

(assert (=> b!624048 m!599841))

(declare-fun m!599843 () Bool)

(assert (=> b!624048 m!599843))

(declare-fun m!599845 () Bool)

(assert (=> b!624051 m!599845))

(push 1)

