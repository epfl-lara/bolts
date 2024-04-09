; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92216 () Bool)

(assert start!92216)

(declare-fun res!697332 () Bool)

(declare-fun e!594430 () Bool)

(assert (=> start!92216 (=> (not res!697332) (not e!594430))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65992 0))(
  ( (array!65993 (arr!31733 (Array (_ BitVec 32) (_ BitVec 64))) (size!32270 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65992)

(assert (=> start!92216 (= res!697332 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32270 a!3488)) (bvslt (size!32270 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92216 e!594430))

(assert (=> start!92216 true))

(declare-fun array_inv!24355 (array!65992) Bool)

(assert (=> start!92216 (array_inv!24355 a!3488)))

(declare-fun b!1048061 () Bool)

(assert (=> b!1048061 (= e!594430 false)))

(declare-fun lt!463093 () Bool)

(declare-datatypes ((List!22176 0))(
  ( (Nil!22173) (Cons!22172 (h!23381 (_ BitVec 64)) (t!31490 List!22176)) )
))
(declare-fun arrayNoDuplicates!0 (array!65992 (_ BitVec 32) List!22176) Bool)

(assert (=> b!1048061 (= lt!463093 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22173))))

(assert (= (and start!92216 res!697332) b!1048061))

(declare-fun m!969235 () Bool)

(assert (=> start!92216 m!969235))

(declare-fun m!969237 () Bool)

(assert (=> b!1048061 m!969237))

(check-sat (not b!1048061) (not start!92216))
