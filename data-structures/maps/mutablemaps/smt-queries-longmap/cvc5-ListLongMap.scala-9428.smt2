; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112212 () Bool)

(assert start!112212)

(declare-fun b_free!30571 () Bool)

(declare-fun b_next!30571 () Bool)

(assert (=> start!112212 (= b_free!30571 (not b_next!30571))))

(declare-fun tp!107350 () Bool)

(declare-fun b_and!49231 () Bool)

(assert (=> start!112212 (= tp!107350 b_and!49231)))

(declare-fun b!1328443 () Bool)

(declare-fun e!757459 () Bool)

(declare-fun tp_is_empty!36481 () Bool)

(assert (=> b!1328443 (= e!757459 tp_is_empty!36481)))

(declare-fun res!881495 () Bool)

(declare-fun e!757455 () Bool)

(assert (=> start!112212 (=> (not res!881495) (not e!757455))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112212 (= res!881495 (validMask!0 mask!1998))))

(assert (=> start!112212 e!757455))

(declare-datatypes ((V!53745 0))(
  ( (V!53746 (val!18315 Int)) )
))
(declare-datatypes ((ValueCell!17342 0))(
  ( (ValueCellFull!17342 (v!20950 V!53745)) (EmptyCell!17342) )
))
(declare-datatypes ((array!89823 0))(
  ( (array!89824 (arr!43373 (Array (_ BitVec 32) ValueCell!17342)) (size!43924 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89823)

(declare-fun e!757458 () Bool)

(declare-fun array_inv!32681 (array!89823) Bool)

(assert (=> start!112212 (and (array_inv!32681 _values!1320) e!757458)))

(assert (=> start!112212 true))

(declare-datatypes ((array!89825 0))(
  ( (array!89826 (arr!43374 (Array (_ BitVec 32) (_ BitVec 64))) (size!43925 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89825)

(declare-fun array_inv!32682 (array!89825) Bool)

(assert (=> start!112212 (array_inv!32682 _keys!1590)))

(assert (=> start!112212 tp!107350))

(assert (=> start!112212 tp_is_empty!36481))

(declare-fun b!1328444 () Bool)

(declare-fun mapRes!56395 () Bool)

(assert (=> b!1328444 (= e!757458 (and e!757459 mapRes!56395))))

(declare-fun condMapEmpty!56395 () Bool)

(declare-fun mapDefault!56395 () ValueCell!17342)

