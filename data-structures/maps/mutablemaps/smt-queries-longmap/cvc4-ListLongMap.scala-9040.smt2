; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109064 () Bool)

(assert start!109064)

(declare-fun b_free!28517 () Bool)

(declare-fun b_next!28517 () Bool)

(assert (=> start!109064 (= b_free!28517 (not b_next!28517))))

(declare-fun tp!100671 () Bool)

(declare-fun b_and!46617 () Bool)

(assert (=> start!109064 (= tp!100671 b_and!46617)))

(declare-fun b!1288491 () Bool)

(declare-fun res!855908 () Bool)

(declare-fun e!735768 () Bool)

(assert (=> b!1288491 (=> (not res!855908) (not e!735768))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85315 0))(
  ( (array!85316 (arr!41154 (Array (_ BitVec 32) (_ BitVec 64))) (size!41705 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85315)

(assert (=> b!1288491 (= res!855908 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41705 _keys!1741))))))

(declare-fun mapIsEmpty!52796 () Bool)

(declare-fun mapRes!52796 () Bool)

(assert (=> mapIsEmpty!52796 mapRes!52796))

(declare-fun mapNonEmpty!52796 () Bool)

(declare-fun tp!100670 () Bool)

(declare-fun e!735769 () Bool)

(assert (=> mapNonEmpty!52796 (= mapRes!52796 (and tp!100670 e!735769))))

(declare-datatypes ((V!50645 0))(
  ( (V!50646 (val!17153 Int)) )
))
(declare-datatypes ((ValueCell!16180 0))(
  ( (ValueCellFull!16180 (v!19754 V!50645)) (EmptyCell!16180) )
))
(declare-fun mapValue!52796 () ValueCell!16180)

(declare-fun mapRest!52796 () (Array (_ BitVec 32) ValueCell!16180))

(declare-datatypes ((array!85317 0))(
  ( (array!85318 (arr!41155 (Array (_ BitVec 32) ValueCell!16180)) (size!41706 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85317)

(declare-fun mapKey!52796 () (_ BitVec 32))

(assert (=> mapNonEmpty!52796 (= (arr!41155 _values!1445) (store mapRest!52796 mapKey!52796 mapValue!52796))))

(declare-fun b!1288492 () Bool)

(declare-fun res!855907 () Bool)

(assert (=> b!1288492 (=> (not res!855907) (not e!735768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288492 (= res!855907 (not (validKeyInArray!0 (select (arr!41154 _keys!1741) from!2144))))))

(declare-fun b!1288493 () Bool)

(declare-fun res!855905 () Bool)

(assert (=> b!1288493 (=> (not res!855905) (not e!735768))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1288493 (= res!855905 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41705 _keys!1741))))))

(declare-fun b!1288494 () Bool)

(declare-fun res!855901 () Bool)

(assert (=> b!1288494 (=> (not res!855901) (not e!735768))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288494 (= res!855901 (and (= (size!41706 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41705 _keys!1741) (size!41706 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288495 () Bool)

(declare-fun res!855902 () Bool)

(assert (=> b!1288495 (=> (not res!855902) (not e!735768))))

(declare-fun minValue!1387 () V!50645)

(declare-fun zeroValue!1387 () V!50645)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22156 0))(
  ( (tuple2!22157 (_1!11088 (_ BitVec 64)) (_2!11088 V!50645)) )
))
(declare-datatypes ((List!29354 0))(
  ( (Nil!29351) (Cons!29350 (h!30559 tuple2!22156) (t!42925 List!29354)) )
))
(declare-datatypes ((ListLongMap!19825 0))(
  ( (ListLongMap!19826 (toList!9928 List!29354)) )
))
(declare-fun contains!7984 (ListLongMap!19825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4931 (array!85315 array!85317 (_ BitVec 32) (_ BitVec 32) V!50645 V!50645 (_ BitVec 32) Int) ListLongMap!19825)

(assert (=> b!1288495 (= res!855902 (contains!7984 (getCurrentListMap!4931 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288497 () Bool)

(declare-fun e!735766 () Bool)

(assert (=> b!1288497 (= e!735768 (not e!735766))))

(declare-fun res!855909 () Bool)

(assert (=> b!1288497 (=> res!855909 e!735766)))

(assert (=> b!1288497 (= res!855909 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288497 (not (contains!7984 (ListLongMap!19826 Nil!29351) k!1205))))

(declare-datatypes ((Unit!42551 0))(
  ( (Unit!42552) )
))
(declare-fun lt!577966 () Unit!42551)

(declare-fun emptyContainsNothing!42 ((_ BitVec 64)) Unit!42551)

(assert (=> b!1288497 (= lt!577966 (emptyContainsNothing!42 k!1205))))

(declare-fun b!1288498 () Bool)

(declare-fun res!855906 () Bool)

(assert (=> b!1288498 (=> (not res!855906) (not e!735768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85315 (_ BitVec 32)) Bool)

(assert (=> b!1288498 (= res!855906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288499 () Bool)

(declare-fun e!735764 () Bool)

(declare-fun tp_is_empty!34157 () Bool)

(assert (=> b!1288499 (= e!735764 tp_is_empty!34157)))

(declare-fun b!1288500 () Bool)

(assert (=> b!1288500 (= e!735769 tp_is_empty!34157)))

(declare-fun b!1288501 () Bool)

(assert (=> b!1288501 (= e!735766 true)))

(declare-fun lt!577964 () ListLongMap!19825)

(declare-fun +!4303 (ListLongMap!19825 tuple2!22156) ListLongMap!19825)

(assert (=> b!1288501 (not (contains!7984 (+!4303 lt!577964 (tuple2!22157 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!577965 () Unit!42551)

(declare-fun addStillNotContains!348 (ListLongMap!19825 (_ BitVec 64) V!50645 (_ BitVec 64)) Unit!42551)

(assert (=> b!1288501 (= lt!577965 (addStillNotContains!348 lt!577964 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6015 (array!85315 array!85317 (_ BitVec 32) (_ BitVec 32) V!50645 V!50645 (_ BitVec 32) Int) ListLongMap!19825)

(assert (=> b!1288501 (= lt!577964 (getCurrentListMapNoExtraKeys!6015 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288502 () Bool)

(declare-fun res!855903 () Bool)

(assert (=> b!1288502 (=> (not res!855903) (not e!735768))))

(declare-datatypes ((List!29355 0))(
  ( (Nil!29352) (Cons!29351 (h!30560 (_ BitVec 64)) (t!42926 List!29355)) )
))
(declare-fun arrayNoDuplicates!0 (array!85315 (_ BitVec 32) List!29355) Bool)

(assert (=> b!1288502 (= res!855903 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29352))))

(declare-fun res!855904 () Bool)

(assert (=> start!109064 (=> (not res!855904) (not e!735768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109064 (= res!855904 (validMask!0 mask!2175))))

(assert (=> start!109064 e!735768))

(assert (=> start!109064 tp_is_empty!34157))

(assert (=> start!109064 true))

(declare-fun e!735767 () Bool)

(declare-fun array_inv!31177 (array!85317) Bool)

(assert (=> start!109064 (and (array_inv!31177 _values!1445) e!735767)))

(declare-fun array_inv!31178 (array!85315) Bool)

(assert (=> start!109064 (array_inv!31178 _keys!1741)))

(assert (=> start!109064 tp!100671))

(declare-fun b!1288496 () Bool)

(assert (=> b!1288496 (= e!735767 (and e!735764 mapRes!52796))))

(declare-fun condMapEmpty!52796 () Bool)

(declare-fun mapDefault!52796 () ValueCell!16180)

