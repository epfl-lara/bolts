; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135580 () Bool)

(assert start!135580)

(declare-fun res!1075676 () Bool)

(declare-fun e!877970 () Bool)

(assert (=> start!135580 (=> (not res!1075676) (not e!877970))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135580 (= res!1075676 (validMask!0 mask!898))))

(assert (=> start!135580 e!877970))

(assert (=> start!135580 true))

(declare-datatypes ((array!105215 0))(
  ( (array!105216 (arr!50751 (Array (_ BitVec 32) (_ BitVec 64))) (size!51302 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105215)

(declare-fun array_inv!39396 (array!105215) Bool)

(assert (=> start!135580 (array_inv!39396 _keys!605)))

(declare-fun b!1574244 () Bool)

(declare-fun res!1075674 () Bool)

(assert (=> b!1574244 (=> (not res!1075674) (not e!877970))))

(assert (=> b!1574244 (= res!1075674 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51302 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574245 () Bool)

(declare-fun res!1075675 () Bool)

(assert (=> b!1574245 (=> (not res!1075675) (not e!877970))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574245 (= res!1075675 (validKeyInArray!0 k!761))))

(declare-fun b!1574246 () Bool)

(assert (=> b!1574246 (= e!877970 (bvsgt mask!898 #b00111111111111111111111111111111))))

(assert (= (and start!135580 res!1075676) b!1574244))

(assert (= (and b!1574244 res!1075674) b!1574245))

(assert (= (and b!1574245 res!1075675) b!1574246))

(declare-fun m!1447537 () Bool)

(assert (=> start!135580 m!1447537))

(declare-fun m!1447539 () Bool)

(assert (=> start!135580 m!1447539))

(declare-fun m!1447541 () Bool)

(assert (=> b!1574245 m!1447541))

(push 1)

(assert (not b!1574245))

(assert (not start!135580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165127 () Bool)

(assert (=> d!165127 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

