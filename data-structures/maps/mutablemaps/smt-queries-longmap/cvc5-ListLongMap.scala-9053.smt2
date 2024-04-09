; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109138 () Bool)

(assert start!109138)

(declare-fun b_free!28591 () Bool)

(declare-fun b_next!28591 () Bool)

(assert (=> start!109138 (= b_free!28591 (not b_next!28591))))

(declare-fun tp!100892 () Bool)

(declare-fun b_and!46691 () Bool)

(assert (=> start!109138 (= tp!100892 b_and!46691)))

(declare-fun b!1289823 () Bool)

(declare-fun res!856908 () Bool)

(declare-fun e!736432 () Bool)

(assert (=> b!1289823 (=> (not res!856908) (not e!736432))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85461 0))(
  ( (array!85462 (arr!41227 (Array (_ BitVec 32) (_ BitVec 64))) (size!41778 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85461)

(assert (=> b!1289823 (= res!856908 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41778 _keys!1741))))))

(declare-fun b!1289825 () Bool)

(declare-fun res!856907 () Bool)

(assert (=> b!1289825 (=> (not res!856907) (not e!736432))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85461 (_ BitVec 32)) Bool)

(assert (=> b!1289825 (= res!856907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289826 () Bool)

(declare-fun e!736430 () Bool)

(assert (=> b!1289826 (= e!736430 true)))

(declare-datatypes ((V!50745 0))(
  ( (V!50746 (val!17190 Int)) )
))
(declare-datatypes ((tuple2!22218 0))(
  ( (tuple2!22219 (_1!11119 (_ BitVec 64)) (_2!11119 V!50745)) )
))
(declare-datatypes ((List!29416 0))(
  ( (Nil!29413) (Cons!29412 (h!30621 tuple2!22218) (t!42987 List!29416)) )
))
(declare-datatypes ((ListLongMap!19887 0))(
  ( (ListLongMap!19888 (toList!9959 List!29416)) )
))
(declare-fun lt!578354 () ListLongMap!19887)

(declare-fun minValue!1387 () V!50745)

(declare-fun contains!8015 (ListLongMap!19887 (_ BitVec 64)) Bool)

(declare-fun +!4329 (ListLongMap!19887 tuple2!22218) ListLongMap!19887)

(assert (=> b!1289826 (not (contains!8015 (+!4329 lt!578354 (tuple2!22219 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42609 0))(
  ( (Unit!42610) )
))
(declare-fun lt!578355 () Unit!42609)

(declare-fun addStillNotContains!374 (ListLongMap!19887 (_ BitVec 64) V!50745 (_ BitVec 64)) Unit!42609)

(assert (=> b!1289826 (= lt!578355 (addStillNotContains!374 lt!578354 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!50745)

(assert (=> b!1289826 (not (contains!8015 (+!4329 lt!578354 (tuple2!22219 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!578353 () Unit!42609)

(assert (=> b!1289826 (= lt!578353 (addStillNotContains!374 lt!578354 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-datatypes ((ValueCell!16217 0))(
  ( (ValueCellFull!16217 (v!19791 V!50745)) (EmptyCell!16217) )
))
(declare-datatypes ((array!85463 0))(
  ( (array!85464 (arr!41228 (Array (_ BitVec 32) ValueCell!16217)) (size!41779 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85463)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6041 (array!85461 array!85463 (_ BitVec 32) (_ BitVec 32) V!50745 V!50745 (_ BitVec 32) Int) ListLongMap!19887)

(assert (=> b!1289826 (= lt!578354 (getCurrentListMapNoExtraKeys!6041 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52907 () Bool)

(declare-fun mapRes!52907 () Bool)

(declare-fun tp!100893 () Bool)

(declare-fun e!736434 () Bool)

(assert (=> mapNonEmpty!52907 (= mapRes!52907 (and tp!100893 e!736434))))

(declare-fun mapValue!52907 () ValueCell!16217)

(declare-fun mapKey!52907 () (_ BitVec 32))

(declare-fun mapRest!52907 () (Array (_ BitVec 32) ValueCell!16217))

(assert (=> mapNonEmpty!52907 (= (arr!41228 _values!1445) (store mapRest!52907 mapKey!52907 mapValue!52907))))

(declare-fun b!1289827 () Bool)

(declare-fun e!736435 () Bool)

(declare-fun tp_is_empty!34231 () Bool)

(assert (=> b!1289827 (= e!736435 tp_is_empty!34231)))

(declare-fun b!1289828 () Bool)

(declare-fun res!856903 () Bool)

(assert (=> b!1289828 (=> (not res!856903) (not e!736432))))

(assert (=> b!1289828 (= res!856903 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41778 _keys!1741))))))

(declare-fun b!1289829 () Bool)

(declare-fun res!856905 () Bool)

(assert (=> b!1289829 (=> (not res!856905) (not e!736432))))

(declare-fun getCurrentListMap!4961 (array!85461 array!85463 (_ BitVec 32) (_ BitVec 32) V!50745 V!50745 (_ BitVec 32) Int) ListLongMap!19887)

(assert (=> b!1289829 (= res!856905 (contains!8015 (getCurrentListMap!4961 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289830 () Bool)

(assert (=> b!1289830 (= e!736434 tp_is_empty!34231)))

(declare-fun b!1289831 () Bool)

(declare-fun e!736433 () Bool)

(assert (=> b!1289831 (= e!736433 (and e!736435 mapRes!52907))))

(declare-fun condMapEmpty!52907 () Bool)

(declare-fun mapDefault!52907 () ValueCell!16217)

