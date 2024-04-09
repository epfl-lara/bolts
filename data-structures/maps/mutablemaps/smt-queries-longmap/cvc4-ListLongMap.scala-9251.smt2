; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110894 () Bool)

(assert start!110894)

(declare-fun b_free!29693 () Bool)

(declare-fun b_next!29693 () Bool)

(assert (=> start!110894 (= b_free!29693 (not b_next!29693))))

(declare-fun tp!104401 () Bool)

(declare-fun b_and!47911 () Bool)

(assert (=> start!110894 (= tp!104401 b_and!47911)))

(declare-fun b!1312286 () Bool)

(declare-fun e!748532 () Bool)

(declare-fun tp_is_empty!35423 () Bool)

(assert (=> b!1312286 (= e!748532 tp_is_empty!35423)))

(declare-fun b!1312287 () Bool)

(declare-fun res!871335 () Bool)

(declare-fun e!748534 () Bool)

(assert (=> b!1312287 (=> (not res!871335) (not e!748534))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312287 (= res!871335 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1312288 () Bool)

(assert (=> b!1312288 (= e!748534 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87797 0))(
  ( (array!87798 (arr!42374 (Array (_ BitVec 32) (_ BitVec 64))) (size!42925 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87797)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52333 0))(
  ( (V!52334 (val!17786 Int)) )
))
(declare-fun minValue!1296 () V!52333)

(declare-datatypes ((ValueCell!16813 0))(
  ( (ValueCellFull!16813 (v!20411 V!52333)) (EmptyCell!16813) )
))
(declare-datatypes ((array!87799 0))(
  ( (array!87800 (arr!42375 (Array (_ BitVec 32) ValueCell!16813)) (size!42926 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87799)

(declare-fun zeroValue!1296 () V!52333)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23102 0))(
  ( (tuple2!23103 (_1!11561 (_ BitVec 64)) (_2!11561 V!52333)) )
))
(declare-datatypes ((List!30262 0))(
  ( (Nil!30259) (Cons!30258 (h!31467 tuple2!23102) (t!43875 List!30262)) )
))
(declare-datatypes ((ListLongMap!20771 0))(
  ( (ListLongMap!20772 (toList!10401 List!30262)) )
))
(declare-fun contains!8487 (ListLongMap!20771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5357 (array!87797 array!87799 (_ BitVec 32) (_ BitVec 32) V!52333 V!52333 (_ BitVec 32) Int) ListLongMap!20771)

(assert (=> b!1312288 (contains!8487 (getCurrentListMap!5357 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43324 0))(
  ( (Unit!43325) )
))
(declare-fun lt!585490 () Unit!43324)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!15 (array!87797 array!87799 (_ BitVec 32) (_ BitVec 32) V!52333 V!52333 (_ BitVec 64) (_ BitVec 32) Int) Unit!43324)

(assert (=> b!1312288 (= lt!585490 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!15 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun mapNonEmpty!54763 () Bool)

(declare-fun mapRes!54763 () Bool)

(declare-fun tp!104402 () Bool)

(assert (=> mapNonEmpty!54763 (= mapRes!54763 (and tp!104402 e!748532))))

(declare-fun mapValue!54763 () ValueCell!16813)

(declare-fun mapRest!54763 () (Array (_ BitVec 32) ValueCell!16813))

(declare-fun mapKey!54763 () (_ BitVec 32))

(assert (=> mapNonEmpty!54763 (= (arr!42375 _values!1354) (store mapRest!54763 mapKey!54763 mapValue!54763))))

(declare-fun b!1312289 () Bool)

(declare-fun e!748535 () Bool)

(declare-fun e!748531 () Bool)

(assert (=> b!1312289 (= e!748535 (and e!748531 mapRes!54763))))

(declare-fun condMapEmpty!54763 () Bool)

(declare-fun mapDefault!54763 () ValueCell!16813)

