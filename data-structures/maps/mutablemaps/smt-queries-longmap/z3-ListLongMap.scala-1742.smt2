; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31982 () Bool)

(assert start!31982)

(declare-fun b!319171 () Bool)

(declare-fun res!173714 () Bool)

(declare-fun e!198258 () Bool)

(assert (=> b!319171 (=> (not res!173714) (not e!198258))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319171 (= res!173714 (validKeyInArray!0 k0!2497))))

(declare-fun b!319172 () Bool)

(declare-fun res!173713 () Bool)

(assert (=> b!319172 (=> (not res!173713) (not e!198258))))

(declare-datatypes ((array!16285 0))(
  ( (array!16286 (arr!7703 (Array (_ BitVec 32) (_ BitVec 64))) (size!8055 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16285)

(declare-fun arrayContainsKey!0 (array!16285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319172 (= res!173713 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!173712 () Bool)

(assert (=> start!31982 (=> (not res!173712) (not e!198258))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31982 (= res!173712 (validMask!0 mask!3777))))

(assert (=> start!31982 e!198258))

(assert (=> start!31982 true))

(declare-fun array_inv!5657 (array!16285) Bool)

(assert (=> start!31982 (array_inv!5657 a!3305)))

(declare-fun b!319170 () Bool)

(declare-fun res!173715 () Bool)

(assert (=> b!319170 (=> (not res!173715) (not e!198258))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319170 (= res!173715 (and (= (size!8055 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8055 a!3305))))))

(declare-fun b!319173 () Bool)

(assert (=> b!319173 (= e!198258 (bvslt mask!3777 #b00000000000000000000000000000000))))

(assert (= (and start!31982 res!173712) b!319170))

(assert (= (and b!319170 res!173715) b!319171))

(assert (= (and b!319171 res!173714) b!319172))

(assert (= (and b!319172 res!173713) b!319173))

(declare-fun m!327831 () Bool)

(assert (=> b!319171 m!327831))

(declare-fun m!327833 () Bool)

(assert (=> b!319172 m!327833))

(declare-fun m!327835 () Bool)

(assert (=> start!31982 m!327835))

(declare-fun m!327837 () Bool)

(assert (=> start!31982 m!327837))

(check-sat (not b!319171) (not b!319172) (not start!31982))
(check-sat)
