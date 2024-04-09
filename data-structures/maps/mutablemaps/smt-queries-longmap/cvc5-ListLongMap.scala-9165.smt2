; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110100 () Bool)

(assert start!110100)

(declare-fun b_free!29263 () Bool)

(declare-fun b_next!29263 () Bool)

(assert (=> start!110100 (= b_free!29263 (not b_next!29263))))

(declare-fun tp!102940 () Bool)

(declare-fun b_and!47437 () Bool)

(assert (=> start!110100 (= tp!102940 b_and!47437)))

(declare-fun mapIsEmpty!53947 () Bool)

(declare-fun mapRes!53947 () Bool)

(assert (=> mapIsEmpty!53947 mapRes!53947))

(declare-fun b!1303374 () Bool)

(declare-fun e!743462 () Bool)

(declare-fun tp_is_empty!34903 () Bool)

(assert (=> b!1303374 (= e!743462 tp_is_empty!34903)))

(declare-fun b!1303375 () Bool)

(declare-fun res!865774 () Bool)

(declare-fun e!743460 () Bool)

(assert (=> b!1303375 (=> (not res!865774) (not e!743460))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51641 0))(
  ( (V!51642 (val!17526 Int)) )
))
(declare-datatypes ((ValueCell!16553 0))(
  ( (ValueCellFull!16553 (v!20140 V!51641)) (EmptyCell!16553) )
))
(declare-datatypes ((array!86783 0))(
  ( (array!86784 (arr!41878 (Array (_ BitVec 32) ValueCell!16553)) (size!42429 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86783)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86785 0))(
  ( (array!86786 (arr!41879 (Array (_ BitVec 32) (_ BitVec 64))) (size!42430 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86785)

(assert (=> b!1303375 (= res!865774 (and (= (size!42429 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42430 _keys!1741) (size!42429 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303376 () Bool)

(declare-fun e!743461 () Bool)

(assert (=> b!1303376 (= e!743460 (not e!743461))))

(declare-fun res!865773 () Bool)

(assert (=> b!1303376 (=> res!865773 e!743461)))

(assert (=> b!1303376 (= res!865773 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22770 0))(
  ( (tuple2!22771 (_1!11395 (_ BitVec 64)) (_2!11395 V!51641)) )
))
(declare-datatypes ((List!29921 0))(
  ( (Nil!29918) (Cons!29917 (h!31126 tuple2!22770) (t!43522 List!29921)) )
))
(declare-datatypes ((ListLongMap!20439 0))(
  ( (ListLongMap!20440 (toList!10235 List!29921)) )
))
(declare-fun contains!8306 (ListLongMap!20439 (_ BitVec 64)) Bool)

(assert (=> b!1303376 (not (contains!8306 (ListLongMap!20440 Nil!29918) k!1205))))

(declare-datatypes ((Unit!43102 0))(
  ( (Unit!43103) )
))
(declare-fun lt!583236 () Unit!43102)

(declare-fun emptyContainsNothing!221 ((_ BitVec 64)) Unit!43102)

(assert (=> b!1303376 (= lt!583236 (emptyContainsNothing!221 k!1205))))

(declare-fun b!1303377 () Bool)

(declare-fun res!865766 () Bool)

(assert (=> b!1303377 (=> (not res!865766) (not e!743460))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1303377 (= res!865766 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42430 _keys!1741))))))

(declare-fun b!1303378 () Bool)

(assert (=> b!1303378 (= e!743461 true)))

(assert (=> b!1303378 false))

(declare-fun minValue!1387 () V!51641)

(declare-fun lt!583237 () Unit!43102)

(declare-fun lt!583234 () ListLongMap!20439)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!88 ((_ BitVec 64) (_ BitVec 64) V!51641 ListLongMap!20439) Unit!43102)

(assert (=> b!1303378 (= lt!583237 (lemmaInListMapAfterAddingDiffThenInBefore!88 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583234))))

(declare-fun lt!583235 () ListLongMap!20439)

(declare-fun +!4455 (ListLongMap!20439 tuple2!22770) ListLongMap!20439)

(assert (=> b!1303378 (not (contains!8306 (+!4455 lt!583235 (tuple2!22771 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!583239 () Unit!43102)

(declare-fun addStillNotContains!479 (ListLongMap!20439 (_ BitVec 64) V!51641 (_ BitVec 64)) Unit!43102)

(assert (=> b!1303378 (= lt!583239 (addStillNotContains!479 lt!583235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1303378 (not (contains!8306 lt!583234 k!1205))))

(declare-fun zeroValue!1387 () V!51641)

(assert (=> b!1303378 (= lt!583234 (+!4455 lt!583235 (tuple2!22771 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583238 () Unit!43102)

(assert (=> b!1303378 (= lt!583238 (addStillNotContains!479 lt!583235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6169 (array!86785 array!86783 (_ BitVec 32) (_ BitVec 32) V!51641 V!51641 (_ BitVec 32) Int) ListLongMap!20439)

(assert (=> b!1303378 (= lt!583235 (getCurrentListMapNoExtraKeys!6169 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303379 () Bool)

(declare-fun res!865771 () Bool)

(assert (=> b!1303379 (=> (not res!865771) (not e!743460))))

(declare-datatypes ((List!29922 0))(
  ( (Nil!29919) (Cons!29918 (h!31127 (_ BitVec 64)) (t!43523 List!29922)) )
))
(declare-fun arrayNoDuplicates!0 (array!86785 (_ BitVec 32) List!29922) Bool)

(assert (=> b!1303379 (= res!865771 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29919))))

(declare-fun b!1303380 () Bool)

(declare-fun e!743465 () Bool)

(assert (=> b!1303380 (= e!743465 tp_is_empty!34903)))

(declare-fun b!1303381 () Bool)

(declare-fun e!743464 () Bool)

(assert (=> b!1303381 (= e!743464 (and e!743465 mapRes!53947))))

(declare-fun condMapEmpty!53947 () Bool)

(declare-fun mapDefault!53947 () ValueCell!16553)

