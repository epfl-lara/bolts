; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110258 () Bool)

(assert start!110258)

(declare-fun b_free!29293 () Bool)

(declare-fun b_next!29293 () Bool)

(assert (=> start!110258 (= b_free!29293 (not b_next!29293))))

(declare-fun tp!103041 () Bool)

(declare-fun b_and!47493 () Bool)

(assert (=> start!110258 (= tp!103041 b_and!47493)))

(declare-fun b!1304693 () Bool)

(declare-fun e!744243 () Bool)

(declare-fun tp_is_empty!34933 () Bool)

(assert (=> b!1304693 (= e!744243 tp_is_empty!34933)))

(declare-fun b!1304694 () Bool)

(declare-fun res!866522 () Bool)

(declare-fun e!744247 () Bool)

(assert (=> b!1304694 (=> (not res!866522) (not e!744247))))

(declare-datatypes ((array!86847 0))(
  ( (array!86848 (arr!41907 (Array (_ BitVec 32) (_ BitVec 64))) (size!42458 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86847)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304694 (= res!866522 (not (validKeyInArray!0 (select (arr!41907 _keys!1741) from!2144))))))

(declare-fun b!1304695 () Bool)

(declare-fun res!866524 () Bool)

(assert (=> b!1304695 (=> (not res!866524) (not e!744247))))

(declare-datatypes ((V!51681 0))(
  ( (V!51682 (val!17541 Int)) )
))
(declare-fun minValue!1387 () V!51681)

(declare-fun zeroValue!1387 () V!51681)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16568 0))(
  ( (ValueCellFull!16568 (v!20160 V!51681)) (EmptyCell!16568) )
))
(declare-datatypes ((array!86849 0))(
  ( (array!86850 (arr!41908 (Array (_ BitVec 32) ValueCell!16568)) (size!42459 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86849)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22798 0))(
  ( (tuple2!22799 (_1!11409 (_ BitVec 64)) (_2!11409 V!51681)) )
))
(declare-datatypes ((List!29948 0))(
  ( (Nil!29945) (Cons!29944 (h!31153 tuple2!22798) (t!43555 List!29948)) )
))
(declare-datatypes ((ListLongMap!20467 0))(
  ( (ListLongMap!20468 (toList!10249 List!29948)) )
))
(declare-fun contains!8326 (ListLongMap!20467 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5207 (array!86847 array!86849 (_ BitVec 32) (_ BitVec 32) V!51681 V!51681 (_ BitVec 32) Int) ListLongMap!20467)

(assert (=> b!1304695 (= res!866524 (contains!8326 (getCurrentListMap!5207 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1304696 () Bool)

(declare-fun res!866526 () Bool)

(assert (=> b!1304696 (=> (not res!866526) (not e!744247))))

(assert (=> b!1304696 (= res!866526 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42458 _keys!1741))))))

(declare-fun b!1304697 () Bool)

(declare-fun e!744246 () Bool)

(assert (=> b!1304697 (= e!744246 tp_is_empty!34933)))

(declare-fun res!866527 () Bool)

(assert (=> start!110258 (=> (not res!866527) (not e!744247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110258 (= res!866527 (validMask!0 mask!2175))))

(assert (=> start!110258 e!744247))

(assert (=> start!110258 tp_is_empty!34933))

(assert (=> start!110258 true))

(declare-fun e!744244 () Bool)

(declare-fun array_inv!31693 (array!86849) Bool)

(assert (=> start!110258 (and (array_inv!31693 _values!1445) e!744244)))

(declare-fun array_inv!31694 (array!86847) Bool)

(assert (=> start!110258 (array_inv!31694 _keys!1741)))

(assert (=> start!110258 tp!103041))

(declare-fun b!1304698 () Bool)

(declare-fun e!744248 () Bool)

(assert (=> b!1304698 (= e!744247 (not e!744248))))

(declare-fun res!866520 () Bool)

(assert (=> b!1304698 (=> res!866520 e!744248)))

(assert (=> b!1304698 (= res!866520 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1304698 (not (contains!8326 (ListLongMap!20468 Nil!29945) k!1205))))

(declare-datatypes ((Unit!43158 0))(
  ( (Unit!43159) )
))
(declare-fun lt!583952 () Unit!43158)

(declare-fun emptyContainsNothing!232 ((_ BitVec 64)) Unit!43158)

(assert (=> b!1304698 (= lt!583952 (emptyContainsNothing!232 k!1205))))

(declare-fun mapNonEmpty!54003 () Bool)

(declare-fun mapRes!54003 () Bool)

(declare-fun tp!103042 () Bool)

(assert (=> mapNonEmpty!54003 (= mapRes!54003 (and tp!103042 e!744243))))

(declare-fun mapValue!54003 () ValueCell!16568)

(declare-fun mapKey!54003 () (_ BitVec 32))

(declare-fun mapRest!54003 () (Array (_ BitVec 32) ValueCell!16568))

(assert (=> mapNonEmpty!54003 (= (arr!41908 _values!1445) (store mapRest!54003 mapKey!54003 mapValue!54003))))

(declare-fun b!1304699 () Bool)

(declare-fun res!866519 () Bool)

(assert (=> b!1304699 (=> (not res!866519) (not e!744247))))

(declare-datatypes ((List!29949 0))(
  ( (Nil!29946) (Cons!29945 (h!31154 (_ BitVec 64)) (t!43556 List!29949)) )
))
(declare-fun arrayNoDuplicates!0 (array!86847 (_ BitVec 32) List!29949) Bool)

(assert (=> b!1304699 (= res!866519 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29946))))

(declare-fun b!1304700 () Bool)

(assert (=> b!1304700 (= e!744248 false)))

(declare-fun lt!583953 () ListLongMap!20467)

(declare-fun +!4466 (ListLongMap!20467 tuple2!22798) ListLongMap!20467)

(assert (=> b!1304700 (not (contains!8326 (+!4466 lt!583953 (tuple2!22799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!583954 () Unit!43158)

(declare-fun addStillNotContains!490 (ListLongMap!20467 (_ BitVec 64) V!51681 (_ BitVec 64)) Unit!43158)

(assert (=> b!1304700 (= lt!583954 (addStillNotContains!490 lt!583953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6183 (array!86847 array!86849 (_ BitVec 32) (_ BitVec 32) V!51681 V!51681 (_ BitVec 32) Int) ListLongMap!20467)

(assert (=> b!1304700 (= lt!583953 (getCurrentListMapNoExtraKeys!6183 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304701 () Bool)

(declare-fun res!866523 () Bool)

(assert (=> b!1304701 (=> (not res!866523) (not e!744247))))

(assert (=> b!1304701 (= res!866523 (and (= (size!42459 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42458 _keys!1741) (size!42459 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54003 () Bool)

(assert (=> mapIsEmpty!54003 mapRes!54003))

(declare-fun b!1304702 () Bool)

(declare-fun res!866525 () Bool)

(assert (=> b!1304702 (=> (not res!866525) (not e!744247))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86847 (_ BitVec 32)) Bool)

(assert (=> b!1304702 (= res!866525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1304703 () Bool)

(assert (=> b!1304703 (= e!744244 (and e!744246 mapRes!54003))))

(declare-fun condMapEmpty!54003 () Bool)

(declare-fun mapDefault!54003 () ValueCell!16568)

