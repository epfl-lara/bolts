; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116718 () Bool)

(assert start!116718)

(declare-fun res!918336 () Bool)

(declare-fun e!779053 () Bool)

(assert (=> start!116718 (=> (not res!918336) (not e!779053))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93305 0))(
  ( (array!93306 (arr!45051 (Array (_ BitVec 32) (_ BitVec 64))) (size!45602 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93305)

(assert (=> start!116718 (= res!918336 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45602 a!4032))))))

(assert (=> start!116718 e!779053))

(assert (=> start!116718 true))

(declare-fun array_inv!33996 (array!93305) Bool)

(assert (=> start!116718 (array_inv!33996 a!4032)))

(declare-fun b!1375157 () Bool)

(declare-fun res!918335 () Bool)

(assert (=> b!1375157 (=> (not res!918335) (not e!779053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375157 (= res!918335 (validKeyInArray!0 (select (arr!45051 a!4032) i!1445)))))

(declare-fun b!1375158 () Bool)

(declare-fun res!918334 () Bool)

(assert (=> b!1375158 (=> (not res!918334) (not e!779053))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375158 (= res!918334 (not (validKeyInArray!0 k!2947)))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun b!1375159 () Bool)

(assert (=> b!1375159 (= e!779053 (and (bvslt (size!45602 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45602 a!4032)) (bvsgt to!206 i!1445) (bvslt (bvadd #b00000000000000000000000000000001 i!1445) #b00000000000000000000000000000000)))))

(assert (= (and start!116718 res!918336) b!1375157))

(assert (= (and b!1375157 res!918335) b!1375158))

(assert (= (and b!1375158 res!918334) b!1375159))

(declare-fun m!1259027 () Bool)

(assert (=> start!116718 m!1259027))

(declare-fun m!1259029 () Bool)

(assert (=> b!1375157 m!1259029))

(assert (=> b!1375157 m!1259029))

(declare-fun m!1259031 () Bool)

(assert (=> b!1375157 m!1259031))

(declare-fun m!1259033 () Bool)

(assert (=> b!1375158 m!1259033))

(push 1)

(assert (not b!1375158))

(assert (not start!116718))

(assert (not b!1375157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

