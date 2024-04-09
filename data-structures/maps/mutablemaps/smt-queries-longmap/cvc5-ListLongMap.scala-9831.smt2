; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116714 () Bool)

(assert start!116714)

(declare-fun res!918318 () Bool)

(declare-fun e!779041 () Bool)

(assert (=> start!116714 (=> (not res!918318) (not e!779041))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93301 0))(
  ( (array!93302 (arr!45049 (Array (_ BitVec 32) (_ BitVec 64))) (size!45600 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93301)

(assert (=> start!116714 (= res!918318 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45600 a!4032))))))

(assert (=> start!116714 e!779041))

(assert (=> start!116714 true))

(declare-fun array_inv!33994 (array!93301) Bool)

(assert (=> start!116714 (array_inv!33994 a!4032)))

(declare-fun b!1375139 () Bool)

(declare-fun res!918317 () Bool)

(assert (=> b!1375139 (=> (not res!918317) (not e!779041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375139 (= res!918317 (validKeyInArray!0 (select (arr!45049 a!4032) i!1445)))))

(declare-fun b!1375140 () Bool)

(declare-fun res!918316 () Bool)

(assert (=> b!1375140 (=> (not res!918316) (not e!779041))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375140 (= res!918316 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375141 () Bool)

(declare-fun to!206 () (_ BitVec 32))

(assert (=> b!1375141 (= e!779041 (and (bvslt (size!45600 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45600 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116714 res!918318) b!1375139))

(assert (= (and b!1375139 res!918317) b!1375140))

(assert (= (and b!1375140 res!918316) b!1375141))

(declare-fun m!1259011 () Bool)

(assert (=> start!116714 m!1259011))

(declare-fun m!1259013 () Bool)

(assert (=> b!1375139 m!1259013))

(assert (=> b!1375139 m!1259013))

(declare-fun m!1259015 () Bool)

(assert (=> b!1375139 m!1259015))

(declare-fun m!1259017 () Bool)

(assert (=> b!1375140 m!1259017))

(push 1)

(assert (not start!116714))

(assert (not b!1375139))

(assert (not b!1375140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

