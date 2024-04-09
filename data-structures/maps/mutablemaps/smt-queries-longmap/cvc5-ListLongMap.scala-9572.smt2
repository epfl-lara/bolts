; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113330 () Bool)

(assert start!113330)

(declare-fun b_free!31345 () Bool)

(declare-fun b_next!31345 () Bool)

(assert (=> start!113330 (= b_free!31345 (not b_next!31345))))

(declare-fun tp!109841 () Bool)

(declare-fun b_and!50577 () Bool)

(assert (=> start!113330 (= tp!109841 b_and!50577)))

(declare-fun res!891889 () Bool)

(declare-fun e!765040 () Bool)

(assert (=> start!113330 (=> (not res!891889) (not e!765040))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113330 (= res!891889 (validMask!0 mask!1977))))

(assert (=> start!113330 e!765040))

(declare-fun tp_is_empty!37345 () Bool)

(assert (=> start!113330 tp_is_empty!37345))

(assert (=> start!113330 true))

(declare-datatypes ((array!91487 0))(
  ( (array!91488 (arr!44195 (Array (_ BitVec 32) (_ BitVec 64))) (size!44746 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91487)

(declare-fun array_inv!33225 (array!91487) Bool)

(assert (=> start!113330 (array_inv!33225 _keys!1571)))

(declare-datatypes ((V!54897 0))(
  ( (V!54898 (val!18747 Int)) )
))
(declare-datatypes ((ValueCell!17774 0))(
  ( (ValueCellFull!17774 (v!21393 V!54897)) (EmptyCell!17774) )
))
(declare-datatypes ((array!91489 0))(
  ( (array!91490 (arr!44196 (Array (_ BitVec 32) ValueCell!17774)) (size!44747 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91489)

(declare-fun e!765037 () Bool)

(declare-fun array_inv!33226 (array!91489) Bool)

(assert (=> start!113330 (and (array_inv!33226 _values!1303) e!765037)))

(assert (=> start!113330 tp!109841))

(declare-fun b!1344130 () Bool)

(declare-fun e!765038 () Bool)

(assert (=> b!1344130 (= e!765038 tp_is_empty!37345)))

(declare-fun b!1344131 () Bool)

(declare-fun e!765039 () Bool)

(declare-fun mapRes!57724 () Bool)

(assert (=> b!1344131 (= e!765037 (and e!765039 mapRes!57724))))

(declare-fun condMapEmpty!57724 () Bool)

(declare-fun mapDefault!57724 () ValueCell!17774)

