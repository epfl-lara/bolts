; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110164 () Bool)

(assert start!110164)

(declare-fun b_free!29275 () Bool)

(declare-fun b_next!29275 () Bool)

(assert (=> start!110164 (= b_free!29275 (not b_next!29275))))

(declare-fun tp!102980 () Bool)

(declare-fun b_and!47459 () Bool)

(assert (=> start!110164 (= tp!102980 b_and!47459)))

(declare-fun b!1303899 () Bool)

(declare-fun res!866075 () Bool)

(declare-fun e!743776 () Bool)

(assert (=> b!1303899 (=> (not res!866075) (not e!743776))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51657 0))(
  ( (V!51658 (val!17532 Int)) )
))
(declare-datatypes ((ValueCell!16559 0))(
  ( (ValueCellFull!16559 (v!20148 V!51657)) (EmptyCell!16559) )
))
(declare-datatypes ((array!86809 0))(
  ( (array!86810 (arr!41890 (Array (_ BitVec 32) ValueCell!16559)) (size!42441 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86809)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86811 0))(
  ( (array!86812 (arr!41891 (Array (_ BitVec 32) (_ BitVec 64))) (size!42442 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86811)

(assert (=> b!1303899 (= res!866075 (and (= (size!42441 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42442 _keys!1741) (size!42441 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1303900 () Bool)

(declare-fun res!866068 () Bool)

(assert (=> b!1303900 (=> (not res!866068) (not e!743776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86811 (_ BitVec 32)) Bool)

(assert (=> b!1303900 (= res!866068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303901 () Bool)

(declare-fun res!866072 () Bool)

(assert (=> b!1303901 (=> (not res!866072) (not e!743776))))

(declare-fun minValue!1387 () V!51657)

(declare-fun zeroValue!1387 () V!51657)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22782 0))(
  ( (tuple2!22783 (_1!11401 (_ BitVec 64)) (_2!11401 V!51657)) )
))
(declare-datatypes ((List!29933 0))(
  ( (Nil!29930) (Cons!29929 (h!31138 tuple2!22782) (t!43536 List!29933)) )
))
(declare-datatypes ((ListLongMap!20451 0))(
  ( (ListLongMap!20452 (toList!10241 List!29933)) )
))
(declare-fun contains!8314 (ListLongMap!20451 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5201 (array!86811 array!86809 (_ BitVec 32) (_ BitVec 32) V!51657 V!51657 (_ BitVec 32) Int) ListLongMap!20451)

(assert (=> b!1303901 (= res!866072 (contains!8314 (getCurrentListMap!5201 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53969 () Bool)

(declare-fun mapRes!53969 () Bool)

(assert (=> mapIsEmpty!53969 mapRes!53969))

(declare-fun b!1303902 () Bool)

(declare-fun res!866073 () Bool)

(assert (=> b!1303902 (=> (not res!866073) (not e!743776))))

(assert (=> b!1303902 (= res!866073 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42442 _keys!1741))))))

(declare-fun b!1303903 () Bool)

(declare-fun res!866074 () Bool)

(assert (=> b!1303903 (=> (not res!866074) (not e!743776))))

(declare-datatypes ((List!29934 0))(
  ( (Nil!29931) (Cons!29930 (h!31139 (_ BitVec 64)) (t!43537 List!29934)) )
))
(declare-fun arrayNoDuplicates!0 (array!86811 (_ BitVec 32) List!29934) Bool)

(assert (=> b!1303903 (= res!866074 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29931))))

(declare-fun mapNonEmpty!53969 () Bool)

(declare-fun tp!102981 () Bool)

(declare-fun e!743777 () Bool)

(assert (=> mapNonEmpty!53969 (= mapRes!53969 (and tp!102981 e!743777))))

(declare-fun mapKey!53969 () (_ BitVec 32))

(declare-fun mapRest!53969 () (Array (_ BitVec 32) ValueCell!16559))

(declare-fun mapValue!53969 () ValueCell!16559)

(assert (=> mapNonEmpty!53969 (= (arr!41890 _values!1445) (store mapRest!53969 mapKey!53969 mapValue!53969))))

(declare-fun b!1303904 () Bool)

(declare-fun res!866069 () Bool)

(assert (=> b!1303904 (=> (not res!866069) (not e!743776))))

(assert (=> b!1303904 (= res!866069 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42442 _keys!1741))))))

(declare-fun b!1303905 () Bool)

(declare-fun res!866071 () Bool)

(assert (=> b!1303905 (=> (not res!866071) (not e!743776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303905 (= res!866071 (not (validKeyInArray!0 (select (arr!41891 _keys!1741) from!2144))))))

(declare-fun b!1303906 () Bool)

(declare-fun e!743774 () Bool)

(declare-fun tp_is_empty!34915 () Bool)

(assert (=> b!1303906 (= e!743774 tp_is_empty!34915)))

(declare-fun b!1303907 () Bool)

(assert (=> b!1303907 (= e!743777 tp_is_empty!34915)))

(declare-fun b!1303908 () Bool)

(declare-fun e!743775 () Bool)

(assert (=> b!1303908 (= e!743776 (not e!743775))))

(declare-fun res!866076 () Bool)

(assert (=> b!1303908 (=> res!866076 e!743775)))

(assert (=> b!1303908 (= res!866076 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303908 (not (contains!8314 (ListLongMap!20452 Nil!29930) k!1205))))

(declare-datatypes ((Unit!43126 0))(
  ( (Unit!43127) )
))
(declare-fun lt!583525 () Unit!43126)

(declare-fun emptyContainsNothing!226 ((_ BitVec 64)) Unit!43126)

(assert (=> b!1303908 (= lt!583525 (emptyContainsNothing!226 k!1205))))

(declare-fun res!866070 () Bool)

(assert (=> start!110164 (=> (not res!866070) (not e!743776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110164 (= res!866070 (validMask!0 mask!2175))))

(assert (=> start!110164 e!743776))

(assert (=> start!110164 tp_is_empty!34915))

(assert (=> start!110164 true))

(declare-fun e!743773 () Bool)

(declare-fun array_inv!31679 (array!86809) Bool)

(assert (=> start!110164 (and (array_inv!31679 _values!1445) e!743773)))

(declare-fun array_inv!31680 (array!86811) Bool)

(assert (=> start!110164 (array_inv!31680 _keys!1741)))

(assert (=> start!110164 tp!102980))

(declare-fun b!1303909 () Bool)

(assert (=> b!1303909 (= e!743775 false)))

(declare-fun lt!583523 () ListLongMap!20451)

(declare-fun +!4459 (ListLongMap!20451 tuple2!22782) ListLongMap!20451)

(assert (=> b!1303909 (not (contains!8314 (+!4459 lt!583523 (tuple2!22783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!583524 () Unit!43126)

(declare-fun addStillNotContains!483 (ListLongMap!20451 (_ BitVec 64) V!51657 (_ BitVec 64)) Unit!43126)

(assert (=> b!1303909 (= lt!583524 (addStillNotContains!483 lt!583523 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6175 (array!86811 array!86809 (_ BitVec 32) (_ BitVec 32) V!51657 V!51657 (_ BitVec 32) Int) ListLongMap!20451)

(assert (=> b!1303909 (= lt!583523 (getCurrentListMapNoExtraKeys!6175 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303910 () Bool)

(assert (=> b!1303910 (= e!743773 (and e!743774 mapRes!53969))))

(declare-fun condMapEmpty!53969 () Bool)

(declare-fun mapDefault!53969 () ValueCell!16559)

