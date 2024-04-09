; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111942 () Bool)

(assert start!111942)

(declare-fun b_free!30505 () Bool)

(declare-fun b_next!30505 () Bool)

(assert (=> start!111942 (= b_free!30505 (not b_next!30505))))

(declare-fun tp!106996 () Bool)

(declare-fun b_and!49115 () Bool)

(assert (=> start!111942 (= tp!106996 b_and!49115)))

(declare-fun b!1326017 () Bool)

(declare-fun res!880159 () Bool)

(declare-fun e!755856 () Bool)

(assert (=> b!1326017 (=> (not res!880159) (not e!755856))))

(declare-datatypes ((array!89517 0))(
  ( (array!89518 (arr!43227 (Array (_ BitVec 32) (_ BitVec 64))) (size!43778 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89517)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((V!53537 0))(
  ( (V!53538 (val!18237 Int)) )
))
(declare-datatypes ((ValueCell!17264 0))(
  ( (ValueCellFull!17264 (v!20868 V!53537)) (EmptyCell!17264) )
))
(declare-datatypes ((array!89519 0))(
  ( (array!89520 (arr!43228 (Array (_ BitVec 32) ValueCell!17264)) (size!43779 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89519)

(assert (=> b!1326017 (= res!880159 (and (= (size!43779 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43778 _keys!1609) (size!43779 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!880164 () Bool)

(assert (=> start!111942 (=> (not res!880164) (not e!755856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111942 (= res!880164 (validMask!0 mask!2019))))

(assert (=> start!111942 e!755856))

(declare-fun array_inv!32571 (array!89517) Bool)

(assert (=> start!111942 (array_inv!32571 _keys!1609)))

(assert (=> start!111942 true))

(declare-fun tp_is_empty!36325 () Bool)

(assert (=> start!111942 tp_is_empty!36325))

(declare-fun e!755858 () Bool)

(declare-fun array_inv!32572 (array!89519) Bool)

(assert (=> start!111942 (and (array_inv!32572 _values!1337) e!755858)))

(assert (=> start!111942 tp!106996))

(declare-fun b!1326018 () Bool)

(declare-fun e!755860 () Bool)

(declare-fun mapRes!56139 () Bool)

(assert (=> b!1326018 (= e!755858 (and e!755860 mapRes!56139))))

(declare-fun condMapEmpty!56139 () Bool)

(declare-fun mapDefault!56139 () ValueCell!17264)

