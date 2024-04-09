; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116720 () Bool)

(assert start!116720)

(declare-fun res!918343 () Bool)

(declare-fun e!779059 () Bool)

(assert (=> start!116720 (=> (not res!918343) (not e!779059))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93307 0))(
  ( (array!93308 (arr!45052 (Array (_ BitVec 32) (_ BitVec 64))) (size!45603 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93307)

(assert (=> start!116720 (= res!918343 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45603 a!4032))))))

(assert (=> start!116720 e!779059))

(assert (=> start!116720 true))

(declare-fun array_inv!33997 (array!93307) Bool)

(assert (=> start!116720 (array_inv!33997 a!4032)))

(declare-fun b!1375166 () Bool)

(declare-fun res!918344 () Bool)

(assert (=> b!1375166 (=> (not res!918344) (not e!779059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375166 (= res!918344 (validKeyInArray!0 (select (arr!45052 a!4032) i!1445)))))

(declare-fun b!1375167 () Bool)

(declare-fun res!918345 () Bool)

(assert (=> b!1375167 (=> (not res!918345) (not e!779059))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375167 (= res!918345 (not (validKeyInArray!0 k!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1375168 () Bool)

(assert (=> b!1375168 (= e!779059 (and (bvslt (size!45603 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45603 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116720 res!918343) b!1375166))

(assert (= (and b!1375166 res!918344) b!1375167))

(assert (= (and b!1375167 res!918345) b!1375168))

(declare-fun m!1259035 () Bool)

(assert (=> start!116720 m!1259035))

(declare-fun m!1259037 () Bool)

(assert (=> b!1375166 m!1259037))

(assert (=> b!1375166 m!1259037))

(declare-fun m!1259039 () Bool)

(assert (=> b!1375166 m!1259039))

(declare-fun m!1259041 () Bool)

(assert (=> b!1375167 m!1259041))

(push 1)

(assert (not b!1375166))

(assert (not b!1375167))

(assert (not start!116720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

