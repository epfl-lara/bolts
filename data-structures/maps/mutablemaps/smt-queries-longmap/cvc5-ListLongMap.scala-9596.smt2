; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113474 () Bool)

(assert start!113474)

(declare-fun b_free!31489 () Bool)

(declare-fun b_next!31489 () Bool)

(assert (=> start!113474 (= b_free!31489 (not b_next!31489))))

(declare-fun tp!110272 () Bool)

(declare-fun b_and!50787 () Bool)

(assert (=> start!113474 (= tp!110272 b_and!50787)))

(declare-fun b!1346536 () Bool)

(declare-fun e!766198 () Bool)

(declare-fun tp_is_empty!37489 () Bool)

(assert (=> b!1346536 (= e!766198 tp_is_empty!37489)))

(declare-fun mapIsEmpty!57940 () Bool)

(declare-fun mapRes!57940 () Bool)

(assert (=> mapIsEmpty!57940 mapRes!57940))

(declare-fun b!1346538 () Bool)

(declare-fun res!893580 () Bool)

(declare-fun e!766199 () Bool)

(assert (=> b!1346538 (=> (not res!893580) (not e!766199))))

(declare-datatypes ((array!91767 0))(
  ( (array!91768 (arr!44335 (Array (_ BitVec 32) (_ BitVec 64))) (size!44886 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91767)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91767 (_ BitVec 32)) Bool)

(assert (=> b!1346538 (= res!893580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346539 () Bool)

(assert (=> b!1346539 (= e!766199 false)))

(declare-datatypes ((V!55089 0))(
  ( (V!55090 (val!18819 Int)) )
))
(declare-fun zeroValue!1245 () V!55089)

(declare-fun lt!595459 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17846 0))(
  ( (ValueCellFull!17846 (v!21465 V!55089)) (EmptyCell!17846) )
))
(declare-datatypes ((array!91769 0))(
  ( (array!91770 (arr!44336 (Array (_ BitVec 32) ValueCell!17846)) (size!44887 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91769)

(declare-fun minValue!1245 () V!55089)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24394 0))(
  ( (tuple2!24395 (_1!12207 (_ BitVec 64)) (_2!12207 V!55089)) )
))
(declare-datatypes ((List!31569 0))(
  ( (Nil!31566) (Cons!31565 (h!32774 tuple2!24394) (t!46166 List!31569)) )
))
(declare-datatypes ((ListLongMap!22063 0))(
  ( (ListLongMap!22064 (toList!11047 List!31569)) )
))
(declare-fun contains!9159 (ListLongMap!22063 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5938 (array!91767 array!91769 (_ BitVec 32) (_ BitVec 32) V!55089 V!55089 (_ BitVec 32) Int) ListLongMap!22063)

(assert (=> b!1346539 (= lt!595459 (contains!9159 (getCurrentListMap!5938 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346540 () Bool)

(declare-fun res!893582 () Bool)

(assert (=> b!1346540 (=> (not res!893582) (not e!766199))))

(assert (=> b!1346540 (= res!893582 (and (= (size!44887 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44886 _keys!1571) (size!44887 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57940 () Bool)

(declare-fun tp!110273 () Bool)

(declare-fun e!766200 () Bool)

(assert (=> mapNonEmpty!57940 (= mapRes!57940 (and tp!110273 e!766200))))

(declare-fun mapKey!57940 () (_ BitVec 32))

(declare-fun mapRest!57940 () (Array (_ BitVec 32) ValueCell!17846))

(declare-fun mapValue!57940 () ValueCell!17846)

(assert (=> mapNonEmpty!57940 (= (arr!44336 _values!1303) (store mapRest!57940 mapKey!57940 mapValue!57940))))

(declare-fun b!1346541 () Bool)

(declare-fun e!766202 () Bool)

(assert (=> b!1346541 (= e!766202 (and e!766198 mapRes!57940))))

(declare-fun condMapEmpty!57940 () Bool)

(declare-fun mapDefault!57940 () ValueCell!17846)

