; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92660 () Bool)

(assert start!92660)

(declare-fun res!702237 () Bool)

(declare-fun e!598021 () Bool)

(assert (=> start!92660 (=> (not res!702237) (not e!598021))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66382 0))(
  ( (array!66383 (arr!31925 (Array (_ BitVec 32) (_ BitVec 64))) (size!32462 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66382)

(assert (=> start!92660 (= res!702237 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32462 a!3488)) (bvslt (size!32462 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92660 e!598021))

(assert (=> start!92660 true))

(declare-fun array_inv!24547 (array!66382) Bool)

(assert (=> start!92660 (array_inv!24547 a!3488)))

(declare-fun b!1053038 () Bool)

(assert (=> b!1053038 (= e!598021 false)))

(declare-fun lt!465019 () Bool)

(declare-datatypes ((List!22368 0))(
  ( (Nil!22365) (Cons!22364 (h!23573 (_ BitVec 64)) (t!31682 List!22368)) )
))
(declare-fun arrayNoDuplicates!0 (array!66382 (_ BitVec 32) List!22368) Bool)

(assert (=> b!1053038 (= lt!465019 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22365))))

(assert (= (and start!92660 res!702237) b!1053038))

(declare-fun m!973543 () Bool)

(assert (=> start!92660 m!973543))

(declare-fun m!973545 () Bool)

(assert (=> b!1053038 m!973545))

(check-sat (not start!92660) (not b!1053038))
