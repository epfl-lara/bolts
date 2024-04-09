; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135658 () Bool)

(assert start!135658)

(declare-fun res!1075840 () Bool)

(declare-fun e!878078 () Bool)

(assert (=> start!135658 (=> (not res!1075840) (not e!878078))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135658 (= res!1075840 (validMask!0 mask!898))))

(assert (=> start!135658 e!878078))

(assert (=> start!135658 true))

(declare-datatypes ((array!105257 0))(
  ( (array!105258 (arr!50769 (Array (_ BitVec 32) (_ BitVec 64))) (size!51320 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105257)

(declare-fun array_inv!39414 (array!105257) Bool)

(assert (=> start!135658 (array_inv!39414 _keys!605)))

(declare-fun b!1574406 () Bool)

(declare-fun res!1075841 () Bool)

(assert (=> b!1574406 (=> (not res!1075841) (not e!878078))))

(assert (=> b!1574406 (= res!1075841 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51320 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574407 () Bool)

(declare-fun res!1075839 () Bool)

(assert (=> b!1574407 (=> (not res!1075839) (not e!878078))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574407 (= res!1075839 (validKeyInArray!0 k!761))))

(declare-fun b!1574408 () Bool)

(assert (=> b!1574408 (= e!878078 false)))

(declare-fun lt!674770 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574408 (= lt!674770 (toIndex!0 k!761 mask!898))))

(assert (= (and start!135658 res!1075840) b!1574406))

(assert (= (and b!1574406 res!1075841) b!1574407))

(assert (= (and b!1574407 res!1075839) b!1574408))

(declare-fun m!1447679 () Bool)

(assert (=> start!135658 m!1447679))

(declare-fun m!1447681 () Bool)

(assert (=> start!135658 m!1447681))

(declare-fun m!1447683 () Bool)

(assert (=> b!1574407 m!1447683))

(declare-fun m!1447685 () Bool)

(assert (=> b!1574408 m!1447685))

(push 1)

(assert (not b!1574407))

(assert (not start!135658))

(assert (not b!1574408))

(check-sat)

