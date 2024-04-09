; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108748 () Bool)

(assert start!108748)

(declare-fun b_free!28225 () Bool)

(declare-fun b_next!28225 () Bool)

(assert (=> start!108748 (= b_free!28225 (not b_next!28225))))

(declare-fun tp!99791 () Bool)

(declare-fun b_and!46301 () Bool)

(assert (=> start!108748 (= tp!99791 b_and!46301)))

(declare-fun b!1283390 () Bool)

(declare-fun e!733224 () Bool)

(declare-fun tp_is_empty!33865 () Bool)

(assert (=> b!1283390 (= e!733224 tp_is_empty!33865)))

(declare-fun b!1283391 () Bool)

(declare-fun e!733221 () Bool)

(assert (=> b!1283391 (= e!733221 tp_is_empty!33865)))

(declare-fun b!1283392 () Bool)

(declare-fun res!852611 () Bool)

(declare-fun e!733223 () Bool)

(assert (=> b!1283392 (=> (not res!852611) (not e!733223))))

(declare-datatypes ((array!84749 0))(
  ( (array!84750 (arr!40872 (Array (_ BitVec 32) (_ BitVec 64))) (size!41423 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84749)

(declare-datatypes ((List!29133 0))(
  ( (Nil!29130) (Cons!29129 (h!30338 (_ BitVec 64)) (t!42684 List!29133)) )
))
(declare-fun arrayNoDuplicates!0 (array!84749 (_ BitVec 32) List!29133) Bool)

(assert (=> b!1283392 (= res!852611 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29130))))

(declare-fun mapNonEmpty!52355 () Bool)

(declare-fun mapRes!52355 () Bool)

(declare-fun tp!99792 () Bool)

(assert (=> mapNonEmpty!52355 (= mapRes!52355 (and tp!99792 e!733221))))

(declare-fun mapKey!52355 () (_ BitVec 32))

(declare-datatypes ((V!50257 0))(
  ( (V!50258 (val!17007 Int)) )
))
(declare-datatypes ((ValueCell!16034 0))(
  ( (ValueCellFull!16034 (v!19607 V!50257)) (EmptyCell!16034) )
))
(declare-fun mapRest!52355 () (Array (_ BitVec 32) ValueCell!16034))

(declare-fun mapValue!52355 () ValueCell!16034)

(declare-datatypes ((array!84751 0))(
  ( (array!84752 (arr!40873 (Array (_ BitVec 32) ValueCell!16034)) (size!41424 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84751)

(assert (=> mapNonEmpty!52355 (= (arr!40873 _values!1445) (store mapRest!52355 mapKey!52355 mapValue!52355))))

(declare-fun b!1283393 () Bool)

(declare-fun res!852608 () Bool)

(assert (=> b!1283393 (=> (not res!852608) (not e!733223))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84749 (_ BitVec 32)) Bool)

(assert (=> b!1283393 (= res!852608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283394 () Bool)

(declare-fun res!852606 () Bool)

(assert (=> b!1283394 (=> (not res!852606) (not e!733223))))

(declare-fun minValue!1387 () V!50257)

(declare-fun zeroValue!1387 () V!50257)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21924 0))(
  ( (tuple2!21925 (_1!10972 (_ BitVec 64)) (_2!10972 V!50257)) )
))
(declare-datatypes ((List!29134 0))(
  ( (Nil!29131) (Cons!29130 (h!30339 tuple2!21924) (t!42685 List!29134)) )
))
(declare-datatypes ((ListLongMap!19593 0))(
  ( (ListLongMap!19594 (toList!9812 List!29134)) )
))
(declare-fun contains!7867 (ListLongMap!19593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4830 (array!84749 array!84751 (_ BitVec 32) (_ BitVec 32) V!50257 V!50257 (_ BitVec 32) Int) ListLongMap!19593)

(assert (=> b!1283394 (= res!852606 (contains!7867 (getCurrentListMap!4830 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283395 () Bool)

(declare-fun res!852609 () Bool)

(assert (=> b!1283395 (=> (not res!852609) (not e!733223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283395 (= res!852609 (validKeyInArray!0 (select (arr!40872 _keys!1741) from!2144)))))

(declare-fun mapIsEmpty!52355 () Bool)

(assert (=> mapIsEmpty!52355 mapRes!52355))

(declare-fun b!1283396 () Bool)

(assert (=> b!1283396 (= e!733223 (not true))))

(declare-fun lt!576600 () ListLongMap!19593)

(assert (=> b!1283396 (contains!7867 lt!576600 k!1205)))

(declare-datatypes ((Unit!42413 0))(
  ( (Unit!42414) )
))
(declare-fun lt!576599 () Unit!42413)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!8 ((_ BitVec 64) (_ BitVec 64) V!50257 ListLongMap!19593) Unit!42413)

(assert (=> b!1283396 (= lt!576599 (lemmaInListMapAfterAddingDiffThenInBefore!8 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576600))))

(declare-fun +!4259 (ListLongMap!19593 tuple2!21924) ListLongMap!19593)

(declare-fun getCurrentListMapNoExtraKeys!5970 (array!84749 array!84751 (_ BitVec 32) (_ BitVec 32) V!50257 V!50257 (_ BitVec 32) Int) ListLongMap!19593)

(assert (=> b!1283396 (= lt!576600 (+!4259 (getCurrentListMapNoExtraKeys!5970 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21925 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283398 () Bool)

(declare-fun res!852604 () Bool)

(assert (=> b!1283398 (=> (not res!852604) (not e!733223))))

(assert (=> b!1283398 (= res!852604 (and (= (size!41424 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41423 _keys!1741) (size!41424 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283399 () Bool)

(declare-fun res!852607 () Bool)

(assert (=> b!1283399 (=> (not res!852607) (not e!733223))))

(assert (=> b!1283399 (= res!852607 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41423 _keys!1741))))))

(declare-fun b!1283400 () Bool)

(declare-fun e!733222 () Bool)

(assert (=> b!1283400 (= e!733222 (and e!733224 mapRes!52355))))

(declare-fun condMapEmpty!52355 () Bool)

(declare-fun mapDefault!52355 () ValueCell!16034)

