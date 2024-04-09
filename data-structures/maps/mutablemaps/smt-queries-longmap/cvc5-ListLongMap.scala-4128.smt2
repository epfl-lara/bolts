; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56322 () Bool)

(assert start!56322)

(declare-fun b!624182 () Bool)

(declare-fun res!402512 () Bool)

(declare-fun e!357949 () Bool)

(assert (=> b!624182 (=> (not res!402512) (not e!357949))))

(declare-datatypes ((array!37710 0))(
  ( (array!37711 (arr!18096 (Array (_ BitVec 32) (_ BitVec 64))) (size!18460 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37710)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624182 (= res!402512 (validKeyInArray!0 (select (arr!18096 a!2986) j!136)))))

(declare-fun b!624183 () Bool)

(declare-fun res!402515 () Bool)

(assert (=> b!624183 (=> (not res!402515) (not e!357949))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!624183 (= res!402515 (validKeyInArray!0 k!1786))))

(declare-fun b!624184 () Bool)

(declare-fun res!402514 () Bool)

(assert (=> b!624184 (=> (not res!402514) (not e!357949))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624184 (= res!402514 (and (= (size!18460 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18460 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18460 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624185 () Bool)

(declare-fun e!357947 () Bool)

(assert (=> b!624185 (= e!357949 e!357947)))

(declare-fun res!402516 () Bool)

(assert (=> b!624185 (=> (not res!402516) (not e!357947))))

(declare-datatypes ((SeekEntryResult!6543 0))(
  ( (MissingZero!6543 (index!28455 (_ BitVec 32))) (Found!6543 (index!28456 (_ BitVec 32))) (Intermediate!6543 (undefined!7355 Bool) (index!28457 (_ BitVec 32)) (x!57243 (_ BitVec 32))) (Undefined!6543) (MissingVacant!6543 (index!28458 (_ BitVec 32))) )
))
(declare-fun lt!289530 () SeekEntryResult!6543)

(assert (=> b!624185 (= res!402516 (or (= lt!289530 (MissingZero!6543 i!1108)) (= lt!289530 (MissingVacant!6543 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37710 (_ BitVec 32)) SeekEntryResult!6543)

(assert (=> b!624185 (= lt!289530 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624186 () Bool)

(declare-fun res!402517 () Bool)

(assert (=> b!624186 (=> (not res!402517) (not e!357949))))

(declare-fun arrayContainsKey!0 (array!37710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624186 (= res!402517 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!402513 () Bool)

(assert (=> start!56322 (=> (not res!402513) (not e!357949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56322 (= res!402513 (validMask!0 mask!3053))))

(assert (=> start!56322 e!357949))

(assert (=> start!56322 true))

(declare-fun array_inv!13870 (array!37710) Bool)

(assert (=> start!56322 (array_inv!13870 a!2986)))

(declare-fun b!624187 () Bool)

(declare-fun res!402518 () Bool)

(assert (=> b!624187 (=> (not res!402518) (not e!357947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37710 (_ BitVec 32)) Bool)

(assert (=> b!624187 (= res!402518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624188 () Bool)

(assert (=> b!624188 (= e!357947 false)))

(declare-fun lt!289529 () Bool)

(declare-datatypes ((List!12190 0))(
  ( (Nil!12187) (Cons!12186 (h!13231 (_ BitVec 64)) (t!18426 List!12190)) )
))
(declare-fun arrayNoDuplicates!0 (array!37710 (_ BitVec 32) List!12190) Bool)

(assert (=> b!624188 (= lt!289529 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12187))))

(assert (= (and start!56322 res!402513) b!624184))

(assert (= (and b!624184 res!402514) b!624182))

(assert (= (and b!624182 res!402512) b!624183))

(assert (= (and b!624183 res!402515) b!624186))

(assert (= (and b!624186 res!402517) b!624185))

(assert (= (and b!624185 res!402516) b!624187))

(assert (= (and b!624187 res!402518) b!624188))

(declare-fun m!599943 () Bool)

(assert (=> b!624182 m!599943))

(assert (=> b!624182 m!599943))

(declare-fun m!599945 () Bool)

(assert (=> b!624182 m!599945))

(declare-fun m!599947 () Bool)

(assert (=> b!624186 m!599947))

(declare-fun m!599949 () Bool)

(assert (=> b!624185 m!599949))

(declare-fun m!599951 () Bool)

(assert (=> b!624188 m!599951))

(declare-fun m!599953 () Bool)

(assert (=> start!56322 m!599953))

(declare-fun m!599955 () Bool)

(assert (=> start!56322 m!599955))

(declare-fun m!599957 () Bool)

(assert (=> b!624187 m!599957))

(declare-fun m!599959 () Bool)

(assert (=> b!624183 m!599959))

(push 1)

