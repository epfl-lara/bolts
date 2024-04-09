; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84414 () Bool)

(assert start!84414)

(declare-fun b_free!19973 () Bool)

(declare-fun b_next!19973 () Bool)

(assert (=> start!84414 (= b_free!19973 (not b_next!19973))))

(declare-fun tp!69694 () Bool)

(declare-fun b_and!32025 () Bool)

(assert (=> start!84414 (= tp!69694 b_and!32025)))

(declare-fun mapIsEmpty!36812 () Bool)

(declare-fun mapRes!36812 () Bool)

(assert (=> mapIsEmpty!36812 mapRes!36812))

(declare-fun b!986955 () Bool)

(declare-fun res!660404 () Bool)

(declare-fun e!556576 () Bool)

(assert (=> b!986955 (=> (not res!660404) (not e!556576))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35901 0))(
  ( (V!35902 (val!11645 Int)) )
))
(declare-datatypes ((ValueCell!11113 0))(
  ( (ValueCellFull!11113 (v!14207 V!35901)) (EmptyCell!11113) )
))
(declare-datatypes ((array!62325 0))(
  ( (array!62326 (arr!30016 (Array (_ BitVec 32) ValueCell!11113)) (size!30496 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62325)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62327 0))(
  ( (array!62328 (arr!30017 (Array (_ BitVec 32) (_ BitVec 64))) (size!30497 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62327)

(assert (=> b!986955 (= res!660404 (and (= (size!30496 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30497 _keys!1544) (size!30496 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986956 () Bool)

(declare-fun e!556579 () Bool)

(declare-fun e!556578 () Bool)

(assert (=> b!986956 (= e!556579 (and e!556578 mapRes!36812))))

(declare-fun condMapEmpty!36812 () Bool)

(declare-fun mapDefault!36812 () ValueCell!11113)

