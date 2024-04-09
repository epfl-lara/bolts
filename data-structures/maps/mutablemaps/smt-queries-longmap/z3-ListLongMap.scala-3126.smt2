; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44064 () Bool)

(assert start!44064)

(declare-fun b!485413 () Bool)

(declare-fun e!285819 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!485413 (= e!285819 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun b!485414 () Bool)

(declare-fun res!289168 () Bool)

(assert (=> b!485414 (=> (not res!289168) (not e!285819))))

(declare-datatypes ((array!31392 0))(
  ( (array!31393 (arr!15091 (Array (_ BitVec 32) (_ BitVec 64))) (size!15455 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31392)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485414 (= res!289168 (validKeyInArray!0 (select (arr!15091 a!3235) j!176)))))

(declare-fun b!485415 () Bool)

(declare-fun res!289167 () Bool)

(assert (=> b!485415 (=> (not res!289167) (not e!285819))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485415 (= res!289167 (and (= (size!15455 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15455 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15455 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485416 () Bool)

(declare-fun res!289165 () Bool)

(assert (=> b!485416 (=> (not res!289165) (not e!285819))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!485416 (= res!289165 (validKeyInArray!0 k0!2280))))

(declare-fun b!485417 () Bool)

(declare-fun res!289169 () Bool)

(assert (=> b!485417 (=> (not res!289169) (not e!285819))))

(declare-fun arrayContainsKey!0 (array!31392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485417 (= res!289169 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!289166 () Bool)

(assert (=> start!44064 (=> (not res!289166) (not e!285819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44064 (= res!289166 (validMask!0 mask!3524))))

(assert (=> start!44064 e!285819))

(assert (=> start!44064 true))

(declare-fun array_inv!10865 (array!31392) Bool)

(assert (=> start!44064 (array_inv!10865 a!3235)))

(assert (= (and start!44064 res!289166) b!485415))

(assert (= (and b!485415 res!289167) b!485414))

(assert (= (and b!485414 res!289168) b!485416))

(assert (= (and b!485416 res!289165) b!485417))

(assert (= (and b!485417 res!289169) b!485413))

(declare-fun m!465547 () Bool)

(assert (=> b!485414 m!465547))

(assert (=> b!485414 m!465547))

(declare-fun m!465549 () Bool)

(assert (=> b!485414 m!465549))

(declare-fun m!465551 () Bool)

(assert (=> b!485416 m!465551))

(declare-fun m!465553 () Bool)

(assert (=> b!485417 m!465553))

(declare-fun m!465555 () Bool)

(assert (=> start!44064 m!465555))

(declare-fun m!465557 () Bool)

(assert (=> start!44064 m!465557))

(check-sat (not start!44064) (not b!485417) (not b!485416) (not b!485414))
(check-sat)
