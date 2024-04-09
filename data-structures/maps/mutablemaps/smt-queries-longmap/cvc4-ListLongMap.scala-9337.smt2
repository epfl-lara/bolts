; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111498 () Bool)

(assert start!111498)

(declare-fun b_free!30119 () Bool)

(declare-fun b_next!30119 () Bool)

(assert (=> start!111498 (= b_free!30119 (not b_next!30119))))

(declare-fun tp!105834 () Bool)

(declare-fun b_and!48407 () Bool)

(assert (=> start!111498 (= tp!105834 b_and!48407)))

(declare-fun mapNonEmpty!55556 () Bool)

(declare-fun mapRes!55556 () Bool)

(declare-fun tp!105833 () Bool)

(declare-fun e!752706 () Bool)

(assert (=> mapNonEmpty!55556 (= mapRes!55556 (and tp!105833 e!752706))))

(declare-datatypes ((V!53021 0))(
  ( (V!53022 (val!18044 Int)) )
))
(declare-datatypes ((ValueCell!17071 0))(
  ( (ValueCellFull!17071 (v!20672 V!53021)) (EmptyCell!17071) )
))
(declare-fun mapValue!55556 () ValueCell!17071)

(declare-fun mapRest!55556 () (Array (_ BitVec 32) ValueCell!17071))

(declare-fun mapKey!55556 () (_ BitVec 32))

(declare-datatypes ((array!88777 0))(
  ( (array!88778 (arr!42858 (Array (_ BitVec 32) ValueCell!17071)) (size!43409 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88777)

(assert (=> mapNonEmpty!55556 (= (arr!42858 _values!1337) (store mapRest!55556 mapKey!55556 mapValue!55556))))

(declare-fun b!1319199 () Bool)

(declare-fun e!752705 () Bool)

(assert (=> b!1319199 (= e!752705 (not true))))

(declare-datatypes ((tuple2!23382 0))(
  ( (tuple2!23383 (_1!11701 (_ BitVec 64)) (_2!11701 V!53021)) )
))
(declare-datatypes ((List!30569 0))(
  ( (Nil!30566) (Cons!30565 (h!31774 tuple2!23382) (t!44244 List!30569)) )
))
(declare-datatypes ((ListLongMap!21051 0))(
  ( (ListLongMap!21052 (toList!10541 List!30569)) )
))
(declare-fun lt!586548 () ListLongMap!21051)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8632 (ListLongMap!21051 (_ BitVec 64)) Bool)

(assert (=> b!1319199 (contains!8632 lt!586548 k!1164)))

(declare-datatypes ((Unit!43398 0))(
  ( (Unit!43399) )
))
(declare-fun lt!586549 () Unit!43398)

(declare-fun minValue!1279 () V!53021)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!114 ((_ BitVec 64) (_ BitVec 64) V!53021 ListLongMap!21051) Unit!43398)

(assert (=> b!1319199 (= lt!586549 (lemmaInListMapAfterAddingDiffThenInBefore!114 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586548))))

(declare-datatypes ((array!88779 0))(
  ( (array!88780 (arr!42859 (Array (_ BitVec 32) (_ BitVec 64))) (size!43410 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88779)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53021)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4499 (ListLongMap!21051 tuple2!23382) ListLongMap!21051)

(declare-fun getCurrentListMapNoExtraKeys!6214 (array!88779 array!88777 (_ BitVec 32) (_ BitVec 32) V!53021 V!53021 (_ BitVec 32) Int) ListLongMap!21051)

(declare-fun get!21585 (ValueCell!17071 V!53021) V!53021)

(declare-fun dynLambda!3536 (Int (_ BitVec 64)) V!53021)

(assert (=> b!1319199 (= lt!586548 (+!4499 (+!4499 (getCurrentListMapNoExtraKeys!6214 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23383 (select (arr!42859 _keys!1609) from!2000) (get!21585 (select (arr!42858 _values!1337) from!2000) (dynLambda!3536 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23383 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun res!875625 () Bool)

(assert (=> start!111498 (=> (not res!875625) (not e!752705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111498 (= res!875625 (validMask!0 mask!2019))))

(assert (=> start!111498 e!752705))

(declare-fun array_inv!32311 (array!88779) Bool)

(assert (=> start!111498 (array_inv!32311 _keys!1609)))

(assert (=> start!111498 true))

(declare-fun tp_is_empty!35939 () Bool)

(assert (=> start!111498 tp_is_empty!35939))

(declare-fun e!752704 () Bool)

(declare-fun array_inv!32312 (array!88777) Bool)

(assert (=> start!111498 (and (array_inv!32312 _values!1337) e!752704)))

(assert (=> start!111498 tp!105834))

(declare-fun b!1319200 () Bool)

(declare-fun e!752703 () Bool)

(assert (=> b!1319200 (= e!752703 tp_is_empty!35939)))

(declare-fun b!1319201 () Bool)

(assert (=> b!1319201 (= e!752704 (and e!752703 mapRes!55556))))

(declare-fun condMapEmpty!55556 () Bool)

(declare-fun mapDefault!55556 () ValueCell!17071)

