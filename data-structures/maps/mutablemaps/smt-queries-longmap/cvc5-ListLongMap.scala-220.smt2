; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4000 () Bool)

(assert start!4000)

(declare-fun b_free!907 () Bool)

(declare-fun b_next!907 () Bool)

(assert (=> start!4000 (= b_free!907 (not b_next!907))))

(declare-fun tp!4140 () Bool)

(declare-fun b_and!1719 () Bool)

(assert (=> start!4000 (= tp!4140 b_and!1719)))

(declare-fun b!29060 () Bool)

(declare-fun res!17372 () Bool)

(declare-fun e!18777 () Bool)

(assert (=> b!29060 (=> (not res!17372) (not e!18777))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29060 (= res!17372 (validKeyInArray!0 k!1304))))

(declare-fun b!29061 () Bool)

(declare-fun e!18780 () Bool)

(declare-fun tp_is_empty!1261 () Bool)

(assert (=> b!29061 (= e!18780 tp_is_empty!1261)))

(declare-fun res!17371 () Bool)

(assert (=> start!4000 (=> (not res!17371) (not e!18777))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4000 (= res!17371 (validMask!0 mask!2294))))

(assert (=> start!4000 e!18777))

(assert (=> start!4000 true))

(assert (=> start!4000 tp!4140))

(declare-datatypes ((V!1507 0))(
  ( (V!1508 (val!657 Int)) )
))
(declare-datatypes ((ValueCell!431 0))(
  ( (ValueCellFull!431 (v!1746 V!1507)) (EmptyCell!431) )
))
(declare-datatypes ((array!1743 0))(
  ( (array!1744 (arr!825 (Array (_ BitVec 32) ValueCell!431)) (size!926 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1743)

(declare-fun e!18776 () Bool)

(declare-fun array_inv!559 (array!1743) Bool)

(assert (=> start!4000 (and (array_inv!559 _values!1501) e!18776)))

(declare-datatypes ((array!1745 0))(
  ( (array!1746 (arr!826 (Array (_ BitVec 32) (_ BitVec 64))) (size!927 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1745)

(declare-fun array_inv!560 (array!1745) Bool)

(assert (=> start!4000 (array_inv!560 _keys!1833)))

(assert (=> start!4000 tp_is_empty!1261))

(declare-fun b!29062 () Bool)

(declare-fun res!17370 () Bool)

(assert (=> b!29062 (=> (not res!17370) (not e!18777))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!29062 (= res!17370 (and (= (size!926 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!927 _keys!1833) (size!926 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1420 () Bool)

(declare-fun mapRes!1420 () Bool)

(declare-fun tp!4141 () Bool)

(declare-fun e!18781 () Bool)

(assert (=> mapNonEmpty!1420 (= mapRes!1420 (and tp!4141 e!18781))))

(declare-fun mapRest!1420 () (Array (_ BitVec 32) ValueCell!431))

(declare-fun mapKey!1420 () (_ BitVec 32))

(declare-fun mapValue!1420 () ValueCell!431)

(assert (=> mapNonEmpty!1420 (= (arr!825 _values!1501) (store mapRest!1420 mapKey!1420 mapValue!1420))))

(declare-fun b!29063 () Bool)

(assert (=> b!29063 (= e!18776 (and e!18780 mapRes!1420))))

(declare-fun condMapEmpty!1420 () Bool)

(declare-fun mapDefault!1420 () ValueCell!431)

