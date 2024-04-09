; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44472 () Bool)

(assert start!44472)

(declare-fun b!488136 () Bool)

(declare-fun res!291451 () Bool)

(declare-fun e!287170 () Bool)

(assert (=> b!488136 (=> (not res!291451) (not e!287170))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31587 0))(
  ( (array!31588 (arr!15181 (Array (_ BitVec 32) (_ BitVec 64))) (size!15545 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31587)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488136 (= res!291451 (and (= (size!15545 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15545 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15545 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488137 () Bool)

(declare-fun e!287168 () Bool)

(assert (=> b!488137 (= e!287170 e!287168)))

(declare-fun res!291453 () Bool)

(assert (=> b!488137 (=> (not res!291453) (not e!287168))))

(declare-datatypes ((SeekEntryResult!3655 0))(
  ( (MissingZero!3655 (index!16799 (_ BitVec 32))) (Found!3655 (index!16800 (_ BitVec 32))) (Intermediate!3655 (undefined!4467 Bool) (index!16801 (_ BitVec 32)) (x!45945 (_ BitVec 32))) (Undefined!3655) (MissingVacant!3655 (index!16802 (_ BitVec 32))) )
))
(declare-fun lt!220334 () SeekEntryResult!3655)

(assert (=> b!488137 (= res!291453 (or (= lt!220334 (MissingZero!3655 i!1204)) (= lt!220334 (MissingVacant!3655 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31587 (_ BitVec 32)) SeekEntryResult!3655)

(assert (=> b!488137 (= lt!220334 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488138 () Bool)

(declare-fun res!291452 () Bool)

(assert (=> b!488138 (=> (not res!291452) (not e!287170))))

(declare-fun arrayContainsKey!0 (array!31587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488138 (= res!291452 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488139 () Bool)

(declare-fun res!291447 () Bool)

(assert (=> b!488139 (=> (not res!291447) (not e!287168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31587 (_ BitVec 32)) Bool)

(assert (=> b!488139 (= res!291447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!291454 () Bool)

(assert (=> start!44472 (=> (not res!291454) (not e!287170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44472 (= res!291454 (validMask!0 mask!3524))))

(assert (=> start!44472 e!287170))

(assert (=> start!44472 true))

(declare-fun array_inv!10955 (array!31587) Bool)

(assert (=> start!44472 (array_inv!10955 a!3235)))

(declare-fun b!488140 () Bool)

(declare-fun res!291455 () Bool)

(assert (=> b!488140 (=> (not res!291455) (not e!287170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488140 (= res!291455 (validKeyInArray!0 (select (arr!15181 a!3235) j!176)))))

(declare-fun b!488141 () Bool)

(declare-fun res!291448 () Bool)

(assert (=> b!488141 (=> (not res!291448) (not e!287168))))

(declare-datatypes ((List!9392 0))(
  ( (Nil!9389) (Cons!9388 (h!10247 (_ BitVec 64)) (t!15628 List!9392)) )
))
(declare-fun arrayNoDuplicates!0 (array!31587 (_ BitVec 32) List!9392) Bool)

(assert (=> b!488141 (= res!291448 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9389))))

(declare-fun e!287169 () Bool)

(declare-fun b!488142 () Bool)

(assert (=> b!488142 (= e!287169 (= (seekEntryOrOpen!0 (select (arr!15181 a!3235) j!176) a!3235 mask!3524) (Found!3655 j!176)))))

(declare-fun b!488143 () Bool)

(declare-fun res!291449 () Bool)

(assert (=> b!488143 (=> (not res!291449) (not e!287170))))

(assert (=> b!488143 (= res!291449 (validKeyInArray!0 k0!2280))))

(declare-fun b!488144 () Bool)

(assert (=> b!488144 (= e!287168 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!488144 e!287169))

(declare-fun res!291450 () Bool)

(assert (=> b!488144 (=> (not res!291450) (not e!287169))))

(assert (=> b!488144 (= res!291450 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14248 0))(
  ( (Unit!14249) )
))
(declare-fun lt!220333 () Unit!14248)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14248)

(assert (=> b!488144 (= lt!220333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44472 res!291454) b!488136))

(assert (= (and b!488136 res!291451) b!488140))

(assert (= (and b!488140 res!291455) b!488143))

(assert (= (and b!488143 res!291449) b!488138))

(assert (= (and b!488138 res!291452) b!488137))

(assert (= (and b!488137 res!291453) b!488139))

(assert (= (and b!488139 res!291447) b!488141))

(assert (= (and b!488141 res!291448) b!488144))

(assert (= (and b!488144 res!291450) b!488142))

(declare-fun m!467917 () Bool)

(assert (=> b!488137 m!467917))

(declare-fun m!467919 () Bool)

(assert (=> start!44472 m!467919))

(declare-fun m!467921 () Bool)

(assert (=> start!44472 m!467921))

(declare-fun m!467923 () Bool)

(assert (=> b!488144 m!467923))

(declare-fun m!467925 () Bool)

(assert (=> b!488144 m!467925))

(declare-fun m!467927 () Bool)

(assert (=> b!488143 m!467927))

(declare-fun m!467929 () Bool)

(assert (=> b!488140 m!467929))

(assert (=> b!488140 m!467929))

(declare-fun m!467931 () Bool)

(assert (=> b!488140 m!467931))

(declare-fun m!467933 () Bool)

(assert (=> b!488139 m!467933))

(declare-fun m!467935 () Bool)

(assert (=> b!488138 m!467935))

(declare-fun m!467937 () Bool)

(assert (=> b!488141 m!467937))

(assert (=> b!488142 m!467929))

(assert (=> b!488142 m!467929))

(declare-fun m!467939 () Bool)

(assert (=> b!488142 m!467939))

(check-sat (not b!488143) (not start!44472) (not b!488138) (not b!488140) (not b!488144) (not b!488142) (not b!488139) (not b!488137) (not b!488141))
(check-sat)
