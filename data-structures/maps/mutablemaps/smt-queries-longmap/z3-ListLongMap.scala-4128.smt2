; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56324 () Bool)

(assert start!56324)

(declare-fun b!624203 () Bool)

(declare-fun res!402533 () Bool)

(declare-fun e!357956 () Bool)

(assert (=> b!624203 (=> (not res!402533) (not e!357956))))

(declare-datatypes ((array!37712 0))(
  ( (array!37713 (arr!18097 (Array (_ BitVec 32) (_ BitVec 64))) (size!18461 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37712)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624203 (= res!402533 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624205 () Bool)

(declare-fun res!402539 () Bool)

(assert (=> b!624205 (=> (not res!402539) (not e!357956))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624205 (= res!402539 (and (= (size!18461 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18461 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18461 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624206 () Bool)

(declare-fun res!402536 () Bool)

(assert (=> b!624206 (=> (not res!402536) (not e!357956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624206 (= res!402536 (validKeyInArray!0 (select (arr!18097 a!2986) j!136)))))

(declare-fun b!624207 () Bool)

(declare-fun e!357958 () Bool)

(assert (=> b!624207 (= e!357958 false)))

(declare-fun lt!289536 () Bool)

(declare-datatypes ((List!12191 0))(
  ( (Nil!12188) (Cons!12187 (h!13232 (_ BitVec 64)) (t!18427 List!12191)) )
))
(declare-fun arrayNoDuplicates!0 (array!37712 (_ BitVec 32) List!12191) Bool)

(assert (=> b!624207 (= lt!289536 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12188))))

(declare-fun b!624208 () Bool)

(assert (=> b!624208 (= e!357956 e!357958)))

(declare-fun res!402534 () Bool)

(assert (=> b!624208 (=> (not res!402534) (not e!357958))))

(declare-datatypes ((SeekEntryResult!6544 0))(
  ( (MissingZero!6544 (index!28459 (_ BitVec 32))) (Found!6544 (index!28460 (_ BitVec 32))) (Intermediate!6544 (undefined!7356 Bool) (index!28461 (_ BitVec 32)) (x!57244 (_ BitVec 32))) (Undefined!6544) (MissingVacant!6544 (index!28462 (_ BitVec 32))) )
))
(declare-fun lt!289535 () SeekEntryResult!6544)

(assert (=> b!624208 (= res!402534 (or (= lt!289535 (MissingZero!6544 i!1108)) (= lt!289535 (MissingVacant!6544 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37712 (_ BitVec 32)) SeekEntryResult!6544)

(assert (=> b!624208 (= lt!289535 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624209 () Bool)

(declare-fun res!402538 () Bool)

(assert (=> b!624209 (=> (not res!402538) (not e!357958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37712 (_ BitVec 32)) Bool)

(assert (=> b!624209 (= res!402538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!402535 () Bool)

(assert (=> start!56324 (=> (not res!402535) (not e!357956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56324 (= res!402535 (validMask!0 mask!3053))))

(assert (=> start!56324 e!357956))

(assert (=> start!56324 true))

(declare-fun array_inv!13871 (array!37712) Bool)

(assert (=> start!56324 (array_inv!13871 a!2986)))

(declare-fun b!624204 () Bool)

(declare-fun res!402537 () Bool)

(assert (=> b!624204 (=> (not res!402537) (not e!357956))))

(assert (=> b!624204 (= res!402537 (validKeyInArray!0 k0!1786))))

(assert (= (and start!56324 res!402535) b!624205))

(assert (= (and b!624205 res!402539) b!624206))

(assert (= (and b!624206 res!402536) b!624204))

(assert (= (and b!624204 res!402537) b!624203))

(assert (= (and b!624203 res!402533) b!624208))

(assert (= (and b!624208 res!402534) b!624209))

(assert (= (and b!624209 res!402538) b!624207))

(declare-fun m!599961 () Bool)

(assert (=> b!624208 m!599961))

(declare-fun m!599963 () Bool)

(assert (=> b!624206 m!599963))

(assert (=> b!624206 m!599963))

(declare-fun m!599965 () Bool)

(assert (=> b!624206 m!599965))

(declare-fun m!599967 () Bool)

(assert (=> start!56324 m!599967))

(declare-fun m!599969 () Bool)

(assert (=> start!56324 m!599969))

(declare-fun m!599971 () Bool)

(assert (=> b!624207 m!599971))

(declare-fun m!599973 () Bool)

(assert (=> b!624204 m!599973))

(declare-fun m!599975 () Bool)

(assert (=> b!624203 m!599975))

(declare-fun m!599977 () Bool)

(assert (=> b!624209 m!599977))

(check-sat (not b!624208) (not b!624207) (not b!624206) (not b!624204) (not b!624209) (not b!624203) (not start!56324))
(check-sat)
