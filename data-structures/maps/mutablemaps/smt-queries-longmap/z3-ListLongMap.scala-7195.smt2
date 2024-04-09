; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92240 () Bool)

(assert start!92240)

(declare-fun res!697422 () Bool)

(declare-fun e!594502 () Bool)

(assert (=> start!92240 (=> (not res!697422) (not e!594502))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66016 0))(
  ( (array!66017 (arr!31745 (Array (_ BitVec 32) (_ BitVec 64))) (size!32282 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66016)

(assert (=> start!92240 (= res!697422 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32282 a!3488)) (bvslt (size!32282 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92240 e!594502))

(assert (=> start!92240 true))

(declare-fun array_inv!24367 (array!66016) Bool)

(assert (=> start!92240 (array_inv!24367 a!3488)))

(declare-fun b!1048151 () Bool)

(assert (=> b!1048151 (= e!594502 false)))

(declare-fun lt!463111 () Bool)

(declare-datatypes ((List!22188 0))(
  ( (Nil!22185) (Cons!22184 (h!23393 (_ BitVec 64)) (t!31502 List!22188)) )
))
(declare-fun arrayNoDuplicates!0 (array!66016 (_ BitVec 32) List!22188) Bool)

(assert (=> b!1048151 (= lt!463111 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22185))))

(assert (= (and start!92240 res!697422) b!1048151))

(declare-fun m!969319 () Bool)

(assert (=> start!92240 m!969319))

(declare-fun m!969321 () Bool)

(assert (=> b!1048151 m!969321))

(check-sat (not b!1048151) (not start!92240))
(check-sat)
