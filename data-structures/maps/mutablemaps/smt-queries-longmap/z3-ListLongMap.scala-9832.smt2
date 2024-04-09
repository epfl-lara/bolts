; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116722 () Bool)

(assert start!116722)

(declare-fun res!918352 () Bool)

(declare-fun e!779066 () Bool)

(assert (=> start!116722 (=> (not res!918352) (not e!779066))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93309 0))(
  ( (array!93310 (arr!45053 (Array (_ BitVec 32) (_ BitVec 64))) (size!45604 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93309)

(assert (=> start!116722 (= res!918352 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45604 a!4032))))))

(assert (=> start!116722 e!779066))

(assert (=> start!116722 true))

(declare-fun array_inv!33998 (array!93309) Bool)

(assert (=> start!116722 (array_inv!33998 a!4032)))

(declare-fun b!1375175 () Bool)

(declare-fun res!918353 () Bool)

(assert (=> b!1375175 (=> (not res!918353) (not e!779066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375175 (= res!918353 (validKeyInArray!0 (select (arr!45053 a!4032) i!1445)))))

(declare-fun b!1375176 () Bool)

(declare-fun res!918354 () Bool)

(assert (=> b!1375176 (=> (not res!918354) (not e!779066))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375176 (= res!918354 (not (validKeyInArray!0 k0!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1375177 () Bool)

(assert (=> b!1375177 (= e!779066 (and (bvslt (size!45604 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45604 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116722 res!918352) b!1375175))

(assert (= (and b!1375175 res!918353) b!1375176))

(assert (= (and b!1375176 res!918354) b!1375177))

(declare-fun m!1259043 () Bool)

(assert (=> start!116722 m!1259043))

(declare-fun m!1259045 () Bool)

(assert (=> b!1375175 m!1259045))

(assert (=> b!1375175 m!1259045))

(declare-fun m!1259047 () Bool)

(assert (=> b!1375175 m!1259047))

(declare-fun m!1259049 () Bool)

(assert (=> b!1375176 m!1259049))

(check-sat (not start!116722) (not b!1375175) (not b!1375176))
(check-sat)
