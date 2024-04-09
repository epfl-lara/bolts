; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31952 () Bool)

(assert start!31952)

(declare-fun res!173653 () Bool)

(declare-fun e!198222 () Bool)

(assert (=> start!31952 (=> (not res!173653) (not e!198222))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31952 (= res!173653 (validMask!0 mask!3777))))

(assert (=> start!31952 e!198222))

(assert (=> start!31952 true))

(declare-datatypes ((array!16270 0))(
  ( (array!16271 (arr!7697 (Array (_ BitVec 32) (_ BitVec 64))) (size!8049 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16270)

(declare-fun array_inv!5651 (array!16270) Bool)

(assert (=> start!31952 (array_inv!5651 a!3305)))

(declare-fun b!319111 () Bool)

(declare-fun res!173654 () Bool)

(assert (=> b!319111 (=> (not res!173654) (not e!198222))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319111 (= res!173654 (and (= (size!8049 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8049 a!3305))))))

(declare-fun b!319112 () Bool)

(declare-fun res!173655 () Bool)

(assert (=> b!319112 (=> (not res!173655) (not e!198222))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319112 (= res!173655 (validKeyInArray!0 k0!2497))))

(declare-fun b!319113 () Bool)

(assert (=> b!319113 (= e!198222 (bvsge #b00000000000000000000000000000000 (size!8049 a!3305)))))

(assert (= (and start!31952 res!173653) b!319111))

(assert (= (and b!319111 res!173654) b!319112))

(assert (= (and b!319112 res!173655) b!319113))

(declare-fun m!327793 () Bool)

(assert (=> start!31952 m!327793))

(declare-fun m!327795 () Bool)

(assert (=> start!31952 m!327795))

(declare-fun m!327797 () Bool)

(assert (=> b!319112 m!327797))

(check-sat (not start!31952) (not b!319112))
(check-sat)
