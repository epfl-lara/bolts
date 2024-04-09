; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110288 () Bool)

(assert start!110288)

(declare-fun b_free!29299 () Bool)

(declare-fun b_next!29299 () Bool)

(assert (=> start!110288 (= b_free!29299 (not b_next!29299))))

(declare-fun tp!103062 () Bool)

(declare-fun b_and!47505 () Bool)

(assert (=> start!110288 (= tp!103062 b_and!47505)))

(declare-fun mapIsEmpty!54015 () Bool)

(declare-fun mapRes!54015 () Bool)

(assert (=> mapIsEmpty!54015 mapRes!54015))

(declare-fun b!1304962 () Bool)

(declare-fun e!744402 () Bool)

(assert (=> b!1304962 (= e!744402 true)))

(declare-datatypes ((V!51689 0))(
  ( (V!51690 (val!17544 Int)) )
))
(declare-datatypes ((tuple2!22804 0))(
  ( (tuple2!22805 (_1!11412 (_ BitVec 64)) (_2!11412 V!51689)) )
))
(declare-datatypes ((List!29953 0))(
  ( (Nil!29950) (Cons!29949 (h!31158 tuple2!22804) (t!43562 List!29953)) )
))
(declare-datatypes ((ListLongMap!20473 0))(
  ( (ListLongMap!20474 (toList!10252 List!29953)) )
))
(declare-fun lt!584114 () ListLongMap!20473)

(declare-fun minValue!1387 () V!51689)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8331 (ListLongMap!20473 (_ BitVec 64)) Bool)

(declare-fun +!4469 (ListLongMap!20473 tuple2!22804) ListLongMap!20473)

(assert (=> b!1304962 (not (contains!8331 (+!4469 lt!584114 (tuple2!22805 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!43168 0))(
  ( (Unit!43169) )
))
(declare-fun lt!584113 () Unit!43168)

(declare-fun addStillNotContains!493 (ListLongMap!20473 (_ BitVec 64) V!51689 (_ BitVec 64)) Unit!43168)

(assert (=> b!1304962 (= lt!584113 (addStillNotContains!493 lt!584114 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51689)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16571 0))(
  ( (ValueCellFull!16571 (v!20164 V!51689)) (EmptyCell!16571) )
))
(declare-datatypes ((array!86861 0))(
  ( (array!86862 (arr!41913 (Array (_ BitVec 32) ValueCell!16571)) (size!42464 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86861)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86863 0))(
  ( (array!86864 (arr!41914 (Array (_ BitVec 32) (_ BitVec 64))) (size!42465 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86863)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6186 (array!86863 array!86861 (_ BitVec 32) (_ BitVec 32) V!51689 V!51689 (_ BitVec 32) Int) ListLongMap!20473)

(assert (=> b!1304962 (= lt!584114 (getCurrentListMapNoExtraKeys!6186 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304963 () Bool)

(declare-fun res!866672 () Bool)

(declare-fun e!744401 () Bool)

(assert (=> b!1304963 (=> (not res!866672) (not e!744401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304963 (= res!866672 (not (validKeyInArray!0 (select (arr!41914 _keys!1741) from!2144))))))

(declare-fun b!1304964 () Bool)

(declare-fun res!866675 () Bool)

(assert (=> b!1304964 (=> (not res!866675) (not e!744401))))

(assert (=> b!1304964 (= res!866675 (and (= (size!42464 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42465 _keys!1741) (size!42464 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1304965 () Bool)

(declare-fun res!866674 () Bool)

(assert (=> b!1304965 (=> (not res!866674) (not e!744401))))

(declare-fun getCurrentListMap!5209 (array!86863 array!86861 (_ BitVec 32) (_ BitVec 32) V!51689 V!51689 (_ BitVec 32) Int) ListLongMap!20473)

(assert (=> b!1304965 (= res!866674 (contains!8331 (getCurrentListMap!5209 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1304966 () Bool)

(declare-fun res!866670 () Bool)

(assert (=> b!1304966 (=> (not res!866670) (not e!744401))))

(declare-datatypes ((List!29954 0))(
  ( (Nil!29951) (Cons!29950 (h!31159 (_ BitVec 64)) (t!43563 List!29954)) )
))
(declare-fun arrayNoDuplicates!0 (array!86863 (_ BitVec 32) List!29954) Bool)

(assert (=> b!1304966 (= res!866670 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29951))))

(declare-fun b!1304967 () Bool)

(declare-fun res!866669 () Bool)

(assert (=> b!1304967 (=> (not res!866669) (not e!744401))))

(assert (=> b!1304967 (= res!866669 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42465 _keys!1741))))))

(declare-fun b!1304969 () Bool)

(declare-fun res!866676 () Bool)

(assert (=> b!1304969 (=> (not res!866676) (not e!744401))))

(assert (=> b!1304969 (= res!866676 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42465 _keys!1741))))))

(declare-fun mapNonEmpty!54015 () Bool)

(declare-fun tp!103063 () Bool)

(declare-fun e!744405 () Bool)

(assert (=> mapNonEmpty!54015 (= mapRes!54015 (and tp!103063 e!744405))))

(declare-fun mapKey!54015 () (_ BitVec 32))

(declare-fun mapValue!54015 () ValueCell!16571)

(declare-fun mapRest!54015 () (Array (_ BitVec 32) ValueCell!16571))

(assert (=> mapNonEmpty!54015 (= (arr!41913 _values!1445) (store mapRest!54015 mapKey!54015 mapValue!54015))))

(declare-fun b!1304970 () Bool)

(declare-fun tp_is_empty!34939 () Bool)

(assert (=> b!1304970 (= e!744405 tp_is_empty!34939)))

(declare-fun b!1304971 () Bool)

(declare-fun e!744400 () Bool)

(declare-fun e!744404 () Bool)

(assert (=> b!1304971 (= e!744400 (and e!744404 mapRes!54015))))

(declare-fun condMapEmpty!54015 () Bool)

(declare-fun mapDefault!54015 () ValueCell!16571)

