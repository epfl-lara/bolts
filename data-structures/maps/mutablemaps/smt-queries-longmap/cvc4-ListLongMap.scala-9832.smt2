; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116724 () Bool)

(assert start!116724)

(declare-fun res!918361 () Bool)

(declare-fun e!779072 () Bool)

(assert (=> start!116724 (=> (not res!918361) (not e!779072))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93311 0))(
  ( (array!93312 (arr!45054 (Array (_ BitVec 32) (_ BitVec 64))) (size!45605 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93311)

(assert (=> start!116724 (= res!918361 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45605 a!4032))))))

(assert (=> start!116724 e!779072))

(assert (=> start!116724 true))

(declare-fun array_inv!33999 (array!93311) Bool)

(assert (=> start!116724 (array_inv!33999 a!4032)))

(declare-fun b!1375184 () Bool)

(declare-fun res!918363 () Bool)

(assert (=> b!1375184 (=> (not res!918363) (not e!779072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375184 (= res!918363 (validKeyInArray!0 (select (arr!45054 a!4032) i!1445)))))

(declare-fun b!1375185 () Bool)

(declare-fun res!918362 () Bool)

(assert (=> b!1375185 (=> (not res!918362) (not e!779072))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375185 (= res!918362 (not (validKeyInArray!0 k!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1375186 () Bool)

(assert (=> b!1375186 (= e!779072 (and (bvslt (size!45605 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45605 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116724 res!918361) b!1375184))

(assert (= (and b!1375184 res!918363) b!1375185))

(assert (= (and b!1375185 res!918362) b!1375186))

(declare-fun m!1259051 () Bool)

(assert (=> start!116724 m!1259051))

(declare-fun m!1259053 () Bool)

(assert (=> b!1375184 m!1259053))

(assert (=> b!1375184 m!1259053))

(declare-fun m!1259055 () Bool)

(assert (=> b!1375184 m!1259055))

(declare-fun m!1259057 () Bool)

(assert (=> b!1375185 m!1259057))

(push 1)

(assert (not start!116724))

(assert (not b!1375184))

(assert (not b!1375185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

