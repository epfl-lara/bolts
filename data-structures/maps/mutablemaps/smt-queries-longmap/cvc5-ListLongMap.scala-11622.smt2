; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135654 () Bool)

(assert start!135654)

(declare-fun res!1075822 () Bool)

(declare-fun e!878067 () Bool)

(assert (=> start!135654 (=> (not res!1075822) (not e!878067))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135654 (= res!1075822 (validMask!0 mask!898))))

(assert (=> start!135654 e!878067))

(assert (=> start!135654 true))

(declare-datatypes ((array!105253 0))(
  ( (array!105254 (arr!50767 (Array (_ BitVec 32) (_ BitVec 64))) (size!51318 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105253)

(declare-fun array_inv!39412 (array!105253) Bool)

(assert (=> start!135654 (array_inv!39412 _keys!605)))

(declare-fun b!1574388 () Bool)

(declare-fun res!1075823 () Bool)

(assert (=> b!1574388 (=> (not res!1075823) (not e!878067))))

(assert (=> b!1574388 (= res!1075823 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51318 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574389 () Bool)

(declare-fun res!1075821 () Bool)

(assert (=> b!1574389 (=> (not res!1075821) (not e!878067))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574389 (= res!1075821 (validKeyInArray!0 k!761))))

(declare-fun b!1574390 () Bool)

(assert (=> b!1574390 (= e!878067 false)))

(declare-fun lt!674764 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574390 (= lt!674764 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135654 res!1075822) b!1574388))

(assert (= (and b!1574388 res!1075823) b!1574389))

(assert (= (and b!1574389 res!1075821) b!1574390))

(declare-fun m!1447663 () Bool)

(assert (=> start!135654 m!1447663))

(declare-fun m!1447665 () Bool)

(assert (=> start!135654 m!1447665))

(declare-fun m!1447667 () Bool)

(assert (=> b!1574389 m!1447667))

(declare-fun m!1447669 () Bool)

(assert (=> b!1574390 m!1447669))

(push 1)

(assert (not start!135654))

(assert (not b!1574390))

(assert (not b!1574389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

