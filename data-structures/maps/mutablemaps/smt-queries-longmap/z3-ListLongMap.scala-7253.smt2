; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92618 () Bool)

(assert start!92618)

(declare-fun res!702138 () Bool)

(declare-fun e!597913 () Bool)

(assert (=> start!92618 (=> (not res!702138) (not e!597913))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66367 0))(
  ( (array!66368 (arr!31919 (Array (_ BitVec 32) (_ BitVec 64))) (size!32456 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66367)

(assert (=> start!92618 (= res!702138 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32456 a!3488)) (bvslt (size!32456 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92618 e!597913))

(assert (=> start!92618 true))

(declare-fun array_inv!24541 (array!66367) Bool)

(assert (=> start!92618 (array_inv!24541 a!3488)))

(declare-fun b!1052903 () Bool)

(assert (=> b!1052903 (= e!597913 false)))

(declare-fun lt!464992 () Bool)

(declare-datatypes ((List!22362 0))(
  ( (Nil!22359) (Cons!22358 (h!23567 (_ BitVec 64)) (t!31676 List!22362)) )
))
(declare-fun arrayNoDuplicates!0 (array!66367 (_ BitVec 32) List!22362) Bool)

(assert (=> b!1052903 (= lt!464992 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22359))))

(assert (= (and start!92618 res!702138) b!1052903))

(declare-fun m!973441 () Bool)

(assert (=> start!92618 m!973441))

(declare-fun m!973443 () Bool)

(assert (=> b!1052903 m!973443))

(check-sat (not start!92618) (not b!1052903))
(check-sat)
