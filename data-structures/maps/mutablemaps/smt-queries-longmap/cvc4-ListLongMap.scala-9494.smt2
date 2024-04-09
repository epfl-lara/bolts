; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112612 () Bool)

(assert start!112612)

(declare-fun b_free!30971 () Bool)

(declare-fun b_next!30971 () Bool)

(assert (=> start!112612 (= b_free!30971 (not b_next!30971))))

(declare-fun tp!108550 () Bool)

(declare-fun b_and!49889 () Bool)

(assert (=> start!112612 (= tp!108550 b_and!49889)))

(declare-fun b!1335292 () Bool)

(declare-fun res!886286 () Bool)

(declare-fun e!760536 () Bool)

(assert (=> b!1335292 (=> (not res!886286) (not e!760536))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90599 0))(
  ( (array!90600 (arr!43761 (Array (_ BitVec 32) (_ BitVec 64))) (size!44312 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90599)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1335292 (= res!886286 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44312 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!886285 () Bool)

(assert (=> start!112612 (=> (not res!886285) (not e!760536))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112612 (= res!886285 (validMask!0 mask!1998))))

(assert (=> start!112612 e!760536))

(declare-datatypes ((V!54277 0))(
  ( (V!54278 (val!18515 Int)) )
))
(declare-datatypes ((ValueCell!17542 0))(
  ( (ValueCellFull!17542 (v!21150 V!54277)) (EmptyCell!17542) )
))
(declare-datatypes ((array!90601 0))(
  ( (array!90602 (arr!43762 (Array (_ BitVec 32) ValueCell!17542)) (size!44313 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90601)

(declare-fun e!760538 () Bool)

(declare-fun array_inv!32939 (array!90601) Bool)

(assert (=> start!112612 (and (array_inv!32939 _values!1320) e!760538)))

(assert (=> start!112612 true))

(declare-fun array_inv!32940 (array!90599) Bool)

(assert (=> start!112612 (array_inv!32940 _keys!1590)))

(assert (=> start!112612 tp!108550))

(declare-fun tp_is_empty!36881 () Bool)

(assert (=> start!112612 tp_is_empty!36881))

(declare-fun b!1335293 () Bool)

(declare-fun e!760540 () Bool)

(declare-fun mapRes!56995 () Bool)

(assert (=> b!1335293 (= e!760538 (and e!760540 mapRes!56995))))

(declare-fun condMapEmpty!56995 () Bool)

(declare-fun mapDefault!56995 () ValueCell!17542)

