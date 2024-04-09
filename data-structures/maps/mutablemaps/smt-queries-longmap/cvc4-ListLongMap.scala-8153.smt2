; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99824 () Bool)

(assert start!99824)

(declare-fun b_free!25367 () Bool)

(declare-fun b_next!25367 () Bool)

(assert (=> start!99824 (= b_free!25367 (not b_next!25367))))

(declare-fun tp!88816 () Bool)

(declare-fun b_and!41615 () Bool)

(assert (=> start!99824 (= tp!88816 b_and!41615)))

(declare-fun b!1185599 () Bool)

(declare-fun res!788208 () Bool)

(declare-fun e!674144 () Bool)

(assert (=> b!1185599 (=> (not res!788208) (not e!674144))))

(declare-datatypes ((array!76562 0))(
  ( (array!76563 (arr!36927 (Array (_ BitVec 32) (_ BitVec 64))) (size!37464 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76562)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1185599 (= res!788208 (= (select (arr!36927 _keys!1208) i!673) k!934))))

(declare-fun b!1185600 () Bool)

(declare-fun res!788212 () Bool)

(declare-fun e!674143 () Bool)

(assert (=> b!1185600 (=> (not res!788212) (not e!674143))))

(declare-fun lt!538166 () array!76562)

(declare-datatypes ((List!26135 0))(
  ( (Nil!26132) (Cons!26131 (h!27340 (_ BitVec 64)) (t!38501 List!26135)) )
))
(declare-fun arrayNoDuplicates!0 (array!76562 (_ BitVec 32) List!26135) Bool)

(assert (=> b!1185600 (= res!788212 (arrayNoDuplicates!0 lt!538166 #b00000000000000000000000000000000 Nil!26132))))

(declare-fun b!1185601 () Bool)

(declare-fun res!788217 () Bool)

(assert (=> b!1185601 (=> (not res!788217) (not e!674144))))

(assert (=> b!1185601 (= res!788217 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26132))))

(declare-fun b!1185602 () Bool)

(declare-fun res!788215 () Bool)

(assert (=> b!1185602 (=> (not res!788215) (not e!674144))))

(assert (=> b!1185602 (= res!788215 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37464 _keys!1208))))))

(declare-fun b!1185603 () Bool)

(declare-fun res!788204 () Bool)

(assert (=> b!1185603 (=> (not res!788204) (not e!674144))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44989 0))(
  ( (V!44990 (val!15005 Int)) )
))
(declare-datatypes ((ValueCell!14239 0))(
  ( (ValueCellFull!14239 (v!17644 V!44989)) (EmptyCell!14239) )
))
(declare-datatypes ((array!76564 0))(
  ( (array!76565 (arr!36928 (Array (_ BitVec 32) ValueCell!14239)) (size!37465 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76564)

(assert (=> b!1185603 (= res!788204 (and (= (size!37465 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37464 _keys!1208) (size!37465 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1185604 () Bool)

(declare-datatypes ((Unit!39203 0))(
  ( (Unit!39204) )
))
(declare-fun e!674146 () Unit!39203)

(declare-fun Unit!39205 () Unit!39203)

(assert (=> b!1185604 (= e!674146 Unit!39205)))

(declare-fun b!1185605 () Bool)

(declare-fun res!788209 () Bool)

(assert (=> b!1185605 (=> (not res!788209) (not e!674144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1185605 (= res!788209 (validMask!0 mask!1564))))

(declare-fun b!1185606 () Bool)

(declare-fun e!674145 () Bool)

(assert (=> b!1185606 (= e!674145 true)))

(declare-datatypes ((tuple2!19374 0))(
  ( (tuple2!19375 (_1!9697 (_ BitVec 64)) (_2!9697 V!44989)) )
))
(declare-datatypes ((List!26136 0))(
  ( (Nil!26133) (Cons!26132 (h!27341 tuple2!19374) (t!38502 List!26136)) )
))
(declare-datatypes ((ListLongMap!17355 0))(
  ( (ListLongMap!17356 (toList!8693 List!26136)) )
))
(declare-fun lt!538171 () ListLongMap!17355)

(declare-fun lt!538161 () ListLongMap!17355)

(declare-fun -!1678 (ListLongMap!17355 (_ BitVec 64)) ListLongMap!17355)

(assert (=> b!1185606 (= (-!1678 lt!538171 k!934) lt!538161)))

(declare-fun lt!538160 () Unit!39203)

(declare-fun lt!538173 () ListLongMap!17355)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!538162 () V!44989)

(declare-fun addRemoveCommutativeForDiffKeys!189 (ListLongMap!17355 (_ BitVec 64) V!44989 (_ BitVec 64)) Unit!39203)

(assert (=> b!1185606 (= lt!538160 (addRemoveCommutativeForDiffKeys!189 lt!538173 (select (arr!36927 _keys!1208) from!1455) lt!538162 k!934))))

(declare-fun lt!538169 () ListLongMap!17355)

(declare-fun lt!538170 () ListLongMap!17355)

(declare-fun lt!538168 () ListLongMap!17355)

(assert (=> b!1185606 (and (= lt!538169 lt!538171) (= lt!538168 lt!538170))))

(declare-fun lt!538174 () tuple2!19374)

(declare-fun +!3899 (ListLongMap!17355 tuple2!19374) ListLongMap!17355)

(assert (=> b!1185606 (= lt!538171 (+!3899 lt!538173 lt!538174))))

(assert (=> b!1185606 (not (= (select (arr!36927 _keys!1208) from!1455) k!934))))

(declare-fun lt!538175 () Unit!39203)

(assert (=> b!1185606 (= lt!538175 e!674146)))

(declare-fun c!117122 () Bool)

(assert (=> b!1185606 (= c!117122 (= (select (arr!36927 _keys!1208) from!1455) k!934))))

(declare-fun e!674142 () Bool)

(assert (=> b!1185606 e!674142))

(declare-fun res!788210 () Bool)

(assert (=> b!1185606 (=> (not res!788210) (not e!674142))))

(declare-fun lt!538158 () ListLongMap!17355)

(assert (=> b!1185606 (= res!788210 (= lt!538158 lt!538161))))

(assert (=> b!1185606 (= lt!538161 (+!3899 lt!538168 lt!538174))))

(assert (=> b!1185606 (= lt!538174 (tuple2!19375 (select (arr!36927 _keys!1208) from!1455) lt!538162))))

(declare-fun lt!538159 () V!44989)

(declare-fun get!18943 (ValueCell!14239 V!44989) V!44989)

(assert (=> b!1185606 (= lt!538162 (get!18943 (select (arr!36928 _values!996) from!1455) lt!538159))))

(declare-fun b!1185608 () Bool)

(declare-fun e!674138 () Bool)

(declare-fun tp_is_empty!29897 () Bool)

(assert (=> b!1185608 (= e!674138 tp_is_empty!29897)))

(declare-fun b!1185609 () Bool)

(declare-fun e!674141 () Bool)

(assert (=> b!1185609 (= e!674142 e!674141)))

(declare-fun res!788205 () Bool)

(assert (=> b!1185609 (=> res!788205 e!674141)))

(assert (=> b!1185609 (= res!788205 (not (= (select (arr!36927 _keys!1208) from!1455) k!934)))))

(declare-fun b!1185610 () Bool)

(declare-fun e!674147 () Bool)

(declare-fun e!674139 () Bool)

(assert (=> b!1185610 (= e!674147 e!674139)))

(declare-fun res!788218 () Bool)

(assert (=> b!1185610 (=> res!788218 e!674139)))

(assert (=> b!1185610 (= res!788218 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44989)

(declare-fun lt!538176 () array!76564)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44989)

(declare-fun getCurrentListMapNoExtraKeys!5111 (array!76562 array!76564 (_ BitVec 32) (_ BitVec 32) V!44989 V!44989 (_ BitVec 32) Int) ListLongMap!17355)

(assert (=> b!1185610 (= lt!538158 (getCurrentListMapNoExtraKeys!5111 lt!538166 lt!538176 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1185610 (= lt!538176 (array!76565 (store (arr!36928 _values!996) i!673 (ValueCellFull!14239 lt!538159)) (size!37465 _values!996)))))

(declare-fun dynLambda!3071 (Int (_ BitVec 64)) V!44989)

(assert (=> b!1185610 (= lt!538159 (dynLambda!3071 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1185610 (= lt!538169 (getCurrentListMapNoExtraKeys!5111 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1185611 () Bool)

(declare-fun e!674140 () Bool)

(assert (=> b!1185611 (= e!674140 tp_is_empty!29897)))

(declare-fun mapNonEmpty!46673 () Bool)

(declare-fun mapRes!46673 () Bool)

(declare-fun tp!88815 () Bool)

(assert (=> mapNonEmpty!46673 (= mapRes!46673 (and tp!88815 e!674138))))

(declare-fun mapValue!46673 () ValueCell!14239)

(declare-fun mapRest!46673 () (Array (_ BitVec 32) ValueCell!14239))

(declare-fun mapKey!46673 () (_ BitVec 32))

(assert (=> mapNonEmpty!46673 (= (arr!36928 _values!996) (store mapRest!46673 mapKey!46673 mapValue!46673))))

(declare-fun b!1185612 () Bool)

(declare-fun Unit!39206 () Unit!39203)

(assert (=> b!1185612 (= e!674146 Unit!39206)))

(declare-fun lt!538172 () Unit!39203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76562 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39203)

(assert (=> b!1185612 (= lt!538172 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1185612 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538165 () Unit!39203)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76562 (_ BitVec 32) (_ BitVec 32)) Unit!39203)

(assert (=> b!1185612 (= lt!538165 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1185612 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26132)))

(declare-fun lt!538163 () Unit!39203)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76562 (_ BitVec 64) (_ BitVec 32) List!26135) Unit!39203)

(assert (=> b!1185612 (= lt!538163 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26132))))

(assert (=> b!1185612 false))

(declare-fun b!1185613 () Bool)

(declare-fun e!674148 () Bool)

(assert (=> b!1185613 (= e!674148 (and e!674140 mapRes!46673))))

(declare-fun condMapEmpty!46673 () Bool)

(declare-fun mapDefault!46673 () ValueCell!14239)

