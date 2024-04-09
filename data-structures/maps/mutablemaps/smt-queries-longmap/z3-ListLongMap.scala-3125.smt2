; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44046 () Bool)

(assert start!44046)

(declare-fun b!485373 () Bool)

(declare-fun res!289125 () Bool)

(declare-fun e!285802 () Bool)

(assert (=> b!485373 (=> (not res!289125) (not e!285802))))

(declare-datatypes ((array!31385 0))(
  ( (array!31386 (arr!15088 (Array (_ BitVec 32) (_ BitVec 64))) (size!15452 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31385)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485373 (= res!289125 (validKeyInArray!0 (select (arr!15088 a!3235) j!176)))))

(declare-fun res!289124 () Bool)

(assert (=> start!44046 (=> (not res!289124) (not e!285802))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44046 (= res!289124 (validMask!0 mask!3524))))

(assert (=> start!44046 e!285802))

(assert (=> start!44046 true))

(declare-fun array_inv!10862 (array!31385) Bool)

(assert (=> start!44046 (array_inv!10862 a!3235)))

(declare-fun b!485374 () Bool)

(declare-fun res!289126 () Bool)

(assert (=> b!485374 (=> (not res!289126) (not e!285802))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!485374 (= res!289126 (validKeyInArray!0 k0!2280))))

(declare-fun b!485375 () Bool)

(assert (=> b!485375 (= e!285802 (and (bvslt #b00000000000000000000000000000000 (size!15452 a!3235)) (bvsge (size!15452 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!485372 () Bool)

(declare-fun res!289127 () Bool)

(assert (=> b!485372 (=> (not res!289127) (not e!285802))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485372 (= res!289127 (and (= (size!15452 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15452 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15452 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44046 res!289124) b!485372))

(assert (= (and b!485372 res!289127) b!485373))

(assert (= (and b!485373 res!289125) b!485374))

(assert (= (and b!485374 res!289126) b!485375))

(declare-fun m!465515 () Bool)

(assert (=> b!485373 m!465515))

(assert (=> b!485373 m!465515))

(declare-fun m!465517 () Bool)

(assert (=> b!485373 m!465517))

(declare-fun m!465519 () Bool)

(assert (=> start!44046 m!465519))

(declare-fun m!465521 () Bool)

(assert (=> start!44046 m!465521))

(declare-fun m!465523 () Bool)

(assert (=> b!485374 m!465523))

(check-sat (not b!485373) (not start!44046) (not b!485374))
(check-sat)
(get-model)

(declare-fun d!77295 () Bool)

(assert (=> d!77295 (= (validKeyInArray!0 (select (arr!15088 a!3235) j!176)) (and (not (= (select (arr!15088 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15088 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!485373 d!77295))

(declare-fun d!77297 () Bool)

(assert (=> d!77297 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44046 d!77297))

(declare-fun d!77301 () Bool)

(assert (=> d!77301 (= (array_inv!10862 a!3235) (bvsge (size!15452 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44046 d!77301))

(declare-fun d!77303 () Bool)

(assert (=> d!77303 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!485374 d!77303))

(check-sat)
