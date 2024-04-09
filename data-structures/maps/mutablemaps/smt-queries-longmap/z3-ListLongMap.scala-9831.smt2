; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116716 () Bool)

(assert start!116716)

(declare-fun res!918325 () Bool)

(declare-fun e!779047 () Bool)

(assert (=> start!116716 (=> (not res!918325) (not e!779047))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93303 0))(
  ( (array!93304 (arr!45050 (Array (_ BitVec 32) (_ BitVec 64))) (size!45601 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93303)

(assert (=> start!116716 (= res!918325 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45601 a!4032))))))

(assert (=> start!116716 e!779047))

(assert (=> start!116716 true))

(declare-fun array_inv!33995 (array!93303) Bool)

(assert (=> start!116716 (array_inv!33995 a!4032)))

(declare-fun b!1375148 () Bool)

(declare-fun res!918326 () Bool)

(assert (=> b!1375148 (=> (not res!918326) (not e!779047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375148 (= res!918326 (validKeyInArray!0 (select (arr!45050 a!4032) i!1445)))))

(declare-fun b!1375149 () Bool)

(declare-fun res!918327 () Bool)

(assert (=> b!1375149 (=> (not res!918327) (not e!779047))))

(declare-fun k0!2947 () (_ BitVec 64))

(assert (=> b!1375149 (= res!918327 (not (validKeyInArray!0 k0!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1375150 () Bool)

(assert (=> b!1375150 (= e!779047 (and (bvslt (size!45601 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45601 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116716 res!918325) b!1375148))

(assert (= (and b!1375148 res!918326) b!1375149))

(assert (= (and b!1375149 res!918327) b!1375150))

(declare-fun m!1259019 () Bool)

(assert (=> start!116716 m!1259019))

(declare-fun m!1259021 () Bool)

(assert (=> b!1375148 m!1259021))

(assert (=> b!1375148 m!1259021))

(declare-fun m!1259023 () Bool)

(assert (=> b!1375148 m!1259023))

(declare-fun m!1259025 () Bool)

(assert (=> b!1375149 m!1259025))

(check-sat (not start!116716) (not b!1375148) (not b!1375149))
(check-sat)
