; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109486 () Bool)

(assert start!109486)

(declare-fun b_free!28939 () Bool)

(declare-fun b_next!28939 () Bool)

(assert (=> start!109486 (= b_free!28939 (not b_next!28939))))

(declare-fun tp!101936 () Bool)

(declare-fun b_and!47039 () Bool)

(assert (=> start!109486 (= tp!101936 b_and!47039)))

(declare-fun res!861439 () Bool)

(declare-fun e!739405 () Bool)

(assert (=> start!109486 (=> (not res!861439) (not e!739405))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109486 (= res!861439 (validMask!0 mask!2175))))

(assert (=> start!109486 e!739405))

(declare-fun tp_is_empty!34579 () Bool)

(assert (=> start!109486 tp_is_empty!34579))

(assert (=> start!109486 true))

(declare-datatypes ((V!51209 0))(
  ( (V!51210 (val!17364 Int)) )
))
(declare-datatypes ((ValueCell!16391 0))(
  ( (ValueCellFull!16391 (v!19965 V!51209)) (EmptyCell!16391) )
))
(declare-datatypes ((array!86137 0))(
  ( (array!86138 (arr!41565 (Array (_ BitVec 32) ValueCell!16391)) (size!42116 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86137)

(declare-fun e!739400 () Bool)

(declare-fun array_inv!31457 (array!86137) Bool)

(assert (=> start!109486 (and (array_inv!31457 _values!1445) e!739400)))

(declare-datatypes ((array!86139 0))(
  ( (array!86140 (arr!41566 (Array (_ BitVec 32) (_ BitVec 64))) (size!42117 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86139)

(declare-fun array_inv!31458 (array!86139) Bool)

(assert (=> start!109486 (array_inv!31458 _keys!1741)))

(assert (=> start!109486 tp!101936))

(declare-fun b!1295925 () Bool)

(declare-fun e!739401 () Bool)

(assert (=> b!1295925 (= e!739401 tp_is_empty!34579)))

(declare-fun b!1295926 () Bool)

(declare-fun res!861442 () Bool)

(assert (=> b!1295926 (=> (not res!861442) (not e!739405))))

(declare-fun minValue!1387 () V!51209)

(declare-fun zeroValue!1387 () V!51209)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22512 0))(
  ( (tuple2!22513 (_1!11266 (_ BitVec 64)) (_2!11266 V!51209)) )
))
(declare-datatypes ((List!29680 0))(
  ( (Nil!29677) (Cons!29676 (h!30885 tuple2!22512) (t!43251 List!29680)) )
))
(declare-datatypes ((ListLongMap!20181 0))(
  ( (ListLongMap!20182 (toList!10106 List!29680)) )
))
(declare-fun contains!8162 (ListLongMap!20181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5084 (array!86139 array!86137 (_ BitVec 32) (_ BitVec 32) V!51209 V!51209 (_ BitVec 32) Int) ListLongMap!20181)

(assert (=> b!1295926 (= res!861442 (contains!8162 (getCurrentListMap!5084 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295927 () Bool)

(declare-fun e!739404 () Bool)

(assert (=> b!1295927 (= e!739405 (not e!739404))))

(declare-fun res!861438 () Bool)

(assert (=> b!1295927 (=> res!861438 e!739404)))

(assert (=> b!1295927 (= res!861438 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295927 (not (contains!8162 (ListLongMap!20182 Nil!29677) k!1205))))

(declare-datatypes ((Unit!42875 0))(
  ( (Unit!42876) )
))
(declare-fun lt!579980 () Unit!42875)

(declare-fun emptyContainsNothing!192 ((_ BitVec 64)) Unit!42875)

(assert (=> b!1295927 (= lt!579980 (emptyContainsNothing!192 k!1205))))

(declare-fun mapNonEmpty!53429 () Bool)

(declare-fun mapRes!53429 () Bool)

(declare-fun tp!101937 () Bool)

(declare-fun e!739402 () Bool)

(assert (=> mapNonEmpty!53429 (= mapRes!53429 (and tp!101937 e!739402))))

(declare-fun mapValue!53429 () ValueCell!16391)

(declare-fun mapKey!53429 () (_ BitVec 32))

(declare-fun mapRest!53429 () (Array (_ BitVec 32) ValueCell!16391))

(assert (=> mapNonEmpty!53429 (= (arr!41565 _values!1445) (store mapRest!53429 mapKey!53429 mapValue!53429))))

(declare-fun b!1295928 () Bool)

(declare-fun res!861444 () Bool)

(assert (=> b!1295928 (=> (not res!861444) (not e!739405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86139 (_ BitVec 32)) Bool)

(assert (=> b!1295928 (= res!861444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295929 () Bool)

(declare-fun res!861440 () Bool)

(assert (=> b!1295929 (=> (not res!861440) (not e!739405))))

(declare-datatypes ((List!29681 0))(
  ( (Nil!29678) (Cons!29677 (h!30886 (_ BitVec 64)) (t!43252 List!29681)) )
))
(declare-fun arrayNoDuplicates!0 (array!86139 (_ BitVec 32) List!29681) Bool)

(assert (=> b!1295929 (= res!861440 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29678))))

(declare-fun b!1295930 () Bool)

(declare-fun res!861436 () Bool)

(assert (=> b!1295930 (=> (not res!861436) (not e!739405))))

(assert (=> b!1295930 (= res!861436 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42117 _keys!1741))))))

(declare-fun b!1295931 () Bool)

(assert (=> b!1295931 (= e!739402 tp_is_empty!34579)))

(declare-fun b!1295932 () Bool)

(declare-fun res!861437 () Bool)

(assert (=> b!1295932 (=> (not res!861437) (not e!739405))))

(assert (=> b!1295932 (= res!861437 (and (= (size!42116 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42117 _keys!1741) (size!42116 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295933 () Bool)

(declare-fun res!861443 () Bool)

(assert (=> b!1295933 (=> (not res!861443) (not e!739405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295933 (= res!861443 (not (validKeyInArray!0 (select (arr!41566 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53429 () Bool)

(assert (=> mapIsEmpty!53429 mapRes!53429))

(declare-fun b!1295934 () Bool)

(assert (=> b!1295934 (= e!739404 true)))

(declare-fun lt!579981 () ListLongMap!20181)

(declare-fun +!4406 (ListLongMap!20181 tuple2!22512) ListLongMap!20181)

(assert (=> b!1295934 (not (contains!8162 (+!4406 lt!579981 (tuple2!22513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579982 () Unit!42875)

(declare-fun addStillNotContains!451 (ListLongMap!20181 (_ BitVec 64) V!51209 (_ BitVec 64)) Unit!42875)

(assert (=> b!1295934 (= lt!579982 (addStillNotContains!451 lt!579981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6122 (array!86139 array!86137 (_ BitVec 32) (_ BitVec 32) V!51209 V!51209 (_ BitVec 32) Int) ListLongMap!20181)

(assert (=> b!1295934 (= lt!579981 (getCurrentListMapNoExtraKeys!6122 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295935 () Bool)

(declare-fun res!861441 () Bool)

(assert (=> b!1295935 (=> (not res!861441) (not e!739405))))

(assert (=> b!1295935 (= res!861441 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42117 _keys!1741))))))

(declare-fun b!1295936 () Bool)

(assert (=> b!1295936 (= e!739400 (and e!739401 mapRes!53429))))

(declare-fun condMapEmpty!53429 () Bool)

(declare-fun mapDefault!53429 () ValueCell!16391)

