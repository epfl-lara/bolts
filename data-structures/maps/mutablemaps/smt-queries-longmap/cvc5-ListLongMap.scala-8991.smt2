; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108742 () Bool)

(assert start!108742)

(declare-fun b_free!28219 () Bool)

(declare-fun b_next!28219 () Bool)

(assert (=> start!108742 (= b_free!28219 (not b_next!28219))))

(declare-fun tp!99773 () Bool)

(declare-fun b_and!46295 () Bool)

(assert (=> start!108742 (= tp!99773 b_and!46295)))

(declare-fun res!852531 () Bool)

(declare-fun e!733178 () Bool)

(assert (=> start!108742 (=> (not res!852531) (not e!733178))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108742 (= res!852531 (validMask!0 mask!2175))))

(assert (=> start!108742 e!733178))

(declare-fun tp_is_empty!33859 () Bool)

(assert (=> start!108742 tp_is_empty!33859))

(assert (=> start!108742 true))

(declare-datatypes ((V!50249 0))(
  ( (V!50250 (val!17004 Int)) )
))
(declare-datatypes ((ValueCell!16031 0))(
  ( (ValueCellFull!16031 (v!19604 V!50249)) (EmptyCell!16031) )
))
(declare-datatypes ((array!84737 0))(
  ( (array!84738 (arr!40866 (Array (_ BitVec 32) ValueCell!16031)) (size!41417 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84737)

(declare-fun e!733177 () Bool)

(declare-fun array_inv!30981 (array!84737) Bool)

(assert (=> start!108742 (and (array_inv!30981 _values!1445) e!733177)))

(declare-datatypes ((array!84739 0))(
  ( (array!84740 (arr!40867 (Array (_ BitVec 32) (_ BitVec 64))) (size!41418 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84739)

(declare-fun array_inv!30982 (array!84739) Bool)

(assert (=> start!108742 (array_inv!30982 _keys!1741)))

(assert (=> start!108742 tp!99773))

(declare-fun b!1283282 () Bool)

(declare-fun res!852529 () Bool)

(assert (=> b!1283282 (=> (not res!852529) (not e!733178))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283282 (= res!852529 (and (= (size!41417 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41418 _keys!1741) (size!41417 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283283 () Bool)

(assert (=> b!1283283 (= e!733178 (not true))))

(declare-datatypes ((tuple2!21920 0))(
  ( (tuple2!21921 (_1!10970 (_ BitVec 64)) (_2!10970 V!50249)) )
))
(declare-datatypes ((List!29130 0))(
  ( (Nil!29127) (Cons!29126 (h!30335 tuple2!21920) (t!42681 List!29130)) )
))
(declare-datatypes ((ListLongMap!19589 0))(
  ( (ListLongMap!19590 (toList!9810 List!29130)) )
))
(declare-fun lt!576581 () ListLongMap!19589)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7865 (ListLongMap!19589 (_ BitVec 64)) Bool)

(assert (=> b!1283283 (contains!7865 lt!576581 k!1205)))

(declare-fun minValue!1387 () V!50249)

(declare-datatypes ((Unit!42409 0))(
  ( (Unit!42410) )
))
(declare-fun lt!576582 () Unit!42409)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!6 ((_ BitVec 64) (_ BitVec 64) V!50249 ListLongMap!19589) Unit!42409)

(assert (=> b!1283283 (= lt!576582 (lemmaInListMapAfterAddingDiffThenInBefore!6 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576581))))

(declare-fun zeroValue!1387 () V!50249)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4257 (ListLongMap!19589 tuple2!21920) ListLongMap!19589)

(declare-fun getCurrentListMapNoExtraKeys!5968 (array!84739 array!84737 (_ BitVec 32) (_ BitVec 32) V!50249 V!50249 (_ BitVec 32) Int) ListLongMap!19589)

(assert (=> b!1283283 (= lt!576581 (+!4257 (getCurrentListMapNoExtraKeys!5968 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283284 () Bool)

(declare-fun res!852524 () Bool)

(assert (=> b!1283284 (=> (not res!852524) (not e!733178))))

(assert (=> b!1283284 (= res!852524 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41418 _keys!1741))))))

(declare-fun b!1283285 () Bool)

(declare-fun res!852527 () Bool)

(assert (=> b!1283285 (=> (not res!852527) (not e!733178))))

(assert (=> b!1283285 (= res!852527 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41418 _keys!1741))))))

(declare-fun b!1283286 () Bool)

(declare-fun res!852530 () Bool)

(assert (=> b!1283286 (=> (not res!852530) (not e!733178))))

(assert (=> b!1283286 (= res!852530 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283287 () Bool)

(declare-fun res!852528 () Bool)

(assert (=> b!1283287 (=> (not res!852528) (not e!733178))))

(declare-fun getCurrentListMap!4828 (array!84739 array!84737 (_ BitVec 32) (_ BitVec 32) V!50249 V!50249 (_ BitVec 32) Int) ListLongMap!19589)

(assert (=> b!1283287 (= res!852528 (contains!7865 (getCurrentListMap!4828 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52346 () Bool)

(declare-fun mapRes!52346 () Bool)

(declare-fun tp!99774 () Bool)

(declare-fun e!733180 () Bool)

(assert (=> mapNonEmpty!52346 (= mapRes!52346 (and tp!99774 e!733180))))

(declare-fun mapKey!52346 () (_ BitVec 32))

(declare-fun mapRest!52346 () (Array (_ BitVec 32) ValueCell!16031))

(declare-fun mapValue!52346 () ValueCell!16031)

(assert (=> mapNonEmpty!52346 (= (arr!40866 _values!1445) (store mapRest!52346 mapKey!52346 mapValue!52346))))

(declare-fun b!1283288 () Bool)

(declare-fun e!733176 () Bool)

(assert (=> b!1283288 (= e!733177 (and e!733176 mapRes!52346))))

(declare-fun condMapEmpty!52346 () Bool)

(declare-fun mapDefault!52346 () ValueCell!16031)

