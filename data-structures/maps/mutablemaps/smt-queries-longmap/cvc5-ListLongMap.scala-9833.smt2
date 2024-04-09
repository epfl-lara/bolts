; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116726 () Bool)

(assert start!116726)

(declare-fun b!1375195 () Bool)

(declare-fun res!918374 () Bool)

(declare-fun e!779077 () Bool)

(assert (=> b!1375195 (=> (not res!918374) (not e!779077))))

(declare-datatypes ((array!93313 0))(
  ( (array!93314 (arr!45055 (Array (_ BitVec 32) (_ BitVec 64))) (size!45606 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93313)

(declare-fun i!1445 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375195 (= res!918374 (validKeyInArray!0 (select (arr!45055 a!4032) i!1445)))))

(declare-fun b!1375198 () Bool)

(assert (=> b!1375198 (= e!779077 false)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun lt!604236 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93313 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375198 (= lt!604236 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun lt!604237 () (_ BitVec 32))

(assert (=> b!1375198 (= lt!604237 (arrayCountValidKeys!0 (array!93314 (store (arr!45055 a!4032) i!1445 k!2947) (size!45606 a!4032)) (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun b!1375196 () Bool)

(declare-fun res!918372 () Bool)

(assert (=> b!1375196 (=> (not res!918372) (not e!779077))))

(assert (=> b!1375196 (= res!918372 (not (validKeyInArray!0 k!2947)))))

(declare-fun res!918375 () Bool)

(assert (=> start!116726 (=> (not res!918375) (not e!779077))))

(assert (=> start!116726 (= res!918375 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45606 a!4032))))))

(assert (=> start!116726 e!779077))

(assert (=> start!116726 true))

(declare-fun array_inv!34000 (array!93313) Bool)

(assert (=> start!116726 (array_inv!34000 a!4032)))

(declare-fun b!1375197 () Bool)

(declare-fun res!918373 () Bool)

(assert (=> b!1375197 (=> (not res!918373) (not e!779077))))

(assert (=> b!1375197 (= res!918373 (and (bvslt (size!45606 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45606 a!4032)) (bvsgt to!206 i!1445)))))

(assert (= (and start!116726 res!918375) b!1375195))

(assert (= (and b!1375195 res!918374) b!1375196))

(assert (= (and b!1375196 res!918372) b!1375197))

(assert (= (and b!1375197 res!918373) b!1375198))

(declare-fun m!1259059 () Bool)

(assert (=> b!1375195 m!1259059))

(assert (=> b!1375195 m!1259059))

(declare-fun m!1259061 () Bool)

(assert (=> b!1375195 m!1259061))

(declare-fun m!1259063 () Bool)

(assert (=> b!1375198 m!1259063))

(declare-fun m!1259065 () Bool)

(assert (=> b!1375198 m!1259065))

(declare-fun m!1259067 () Bool)

(assert (=> b!1375198 m!1259067))

(declare-fun m!1259069 () Bool)

(assert (=> b!1375196 m!1259069))

(declare-fun m!1259071 () Bool)

(assert (=> start!116726 m!1259071))

(push 1)

(assert (not start!116726))

(assert (not b!1375195))

(assert (not b!1375196))

(assert (not b!1375198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

