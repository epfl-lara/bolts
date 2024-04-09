; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97338 () Bool)

(assert start!97338)

(declare-fun b_free!23273 () Bool)

(declare-fun b_next!23273 () Bool)

(assert (=> start!97338 (= b_free!23273 (not b_next!23273))))

(declare-fun tp!82119 () Bool)

(declare-fun b_and!37397 () Bool)

(assert (=> start!97338 (= tp!82119 b_and!37397)))

(declare-fun b!1108157 () Bool)

(declare-fun res!739638 () Bool)

(declare-fun e!632233 () Bool)

(assert (=> b!1108157 (=> (not res!739638) (not e!632233))))

(declare-datatypes ((array!71934 0))(
  ( (array!71935 (arr!34616 (Array (_ BitVec 32) (_ BitVec 64))) (size!35153 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71934)

(declare-datatypes ((List!24270 0))(
  ( (Nil!24267) (Cons!24266 (h!25475 (_ BitVec 64)) (t!34596 List!24270)) )
))
(declare-fun arrayNoDuplicates!0 (array!71934 (_ BitVec 32) List!24270) Bool)

(assert (=> b!1108157 (= res!739638 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24267))))

(declare-fun res!739633 () Bool)

(assert (=> start!97338 (=> (not res!739633) (not e!632233))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97338 (= res!739633 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35153 _keys!1208))))))

(assert (=> start!97338 e!632233))

(declare-fun tp_is_empty!27533 () Bool)

(assert (=> start!97338 tp_is_empty!27533))

(declare-fun array_inv!26506 (array!71934) Bool)

(assert (=> start!97338 (array_inv!26506 _keys!1208)))

(assert (=> start!97338 true))

(assert (=> start!97338 tp!82119))

(declare-datatypes ((V!41837 0))(
  ( (V!41838 (val!13823 Int)) )
))
(declare-datatypes ((ValueCell!13057 0))(
  ( (ValueCellFull!13057 (v!16457 V!41837)) (EmptyCell!13057) )
))
(declare-datatypes ((array!71936 0))(
  ( (array!71937 (arr!34617 (Array (_ BitVec 32) ValueCell!13057)) (size!35154 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71936)

(declare-fun e!632232 () Bool)

(declare-fun array_inv!26507 (array!71936) Bool)

(assert (=> start!97338 (and (array_inv!26507 _values!996) e!632232)))

(declare-fun b!1108158 () Bool)

(declare-fun res!739635 () Bool)

(assert (=> b!1108158 (=> (not res!739635) (not e!632233))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108158 (= res!739635 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35153 _keys!1208))))))

(declare-fun mapNonEmpty!43117 () Bool)

(declare-fun mapRes!43117 () Bool)

(declare-fun tp!82118 () Bool)

(declare-fun e!632235 () Bool)

(assert (=> mapNonEmpty!43117 (= mapRes!43117 (and tp!82118 e!632235))))

(declare-fun mapKey!43117 () (_ BitVec 32))

(declare-fun mapValue!43117 () ValueCell!13057)

(declare-fun mapRest!43117 () (Array (_ BitVec 32) ValueCell!13057))

(assert (=> mapNonEmpty!43117 (= (arr!34617 _values!996) (store mapRest!43117 mapKey!43117 mapValue!43117))))

(declare-fun b!1108159 () Bool)

(declare-fun res!739632 () Bool)

(assert (=> b!1108159 (=> (not res!739632) (not e!632233))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1108159 (= res!739632 (= (select (arr!34616 _keys!1208) i!673) k!934))))

(declare-fun b!1108160 () Bool)

(declare-fun res!739628 () Bool)

(assert (=> b!1108160 (=> (not res!739628) (not e!632233))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108160 (= res!739628 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!41837)

(declare-datatypes ((tuple2!17534 0))(
  ( (tuple2!17535 (_1!8777 (_ BitVec 64)) (_2!8777 V!41837)) )
))
(declare-datatypes ((List!24271 0))(
  ( (Nil!24268) (Cons!24267 (h!25476 tuple2!17534) (t!34597 List!24271)) )
))
(declare-datatypes ((ListLongMap!15515 0))(
  ( (ListLongMap!15516 (toList!7773 List!24271)) )
))
(declare-fun call!46517 () ListLongMap!15515)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!495742 () array!71934)

(declare-fun bm!46513 () Bool)

(declare-fun minValue!944 () V!41837)

(declare-fun getCurrentListMapNoExtraKeys!4240 (array!71934 array!71936 (_ BitVec 32) (_ BitVec 32) V!41837 V!41837 (_ BitVec 32) Int) ListLongMap!15515)

(declare-fun dynLambda!2365 (Int (_ BitVec 64)) V!41837)

(assert (=> bm!46513 (= call!46517 (getCurrentListMapNoExtraKeys!4240 lt!495742 (array!71937 (store (arr!34617 _values!996) i!673 (ValueCellFull!13057 (dynLambda!2365 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35154 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108161 () Bool)

(declare-fun res!739636 () Bool)

(assert (=> b!1108161 (=> (not res!739636) (not e!632233))))

(assert (=> b!1108161 (= res!739636 (and (= (size!35154 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35153 _keys!1208) (size!35154 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108162 () Bool)

(declare-fun res!739637 () Bool)

(declare-fun e!632231 () Bool)

(assert (=> b!1108162 (=> (not res!739637) (not e!632231))))

(assert (=> b!1108162 (= res!739637 (arrayNoDuplicates!0 lt!495742 #b00000000000000000000000000000000 Nil!24267))))

(declare-fun b!1108163 () Bool)

(declare-fun e!632236 () Bool)

(declare-fun call!46516 () ListLongMap!15515)

(assert (=> b!1108163 (= e!632236 (= call!46517 call!46516))))

(declare-fun b!1108164 () Bool)

(declare-fun res!739631 () Bool)

(assert (=> b!1108164 (=> (not res!739631) (not e!632233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108164 (= res!739631 (validKeyInArray!0 k!934))))

(declare-fun b!1108165 () Bool)

(declare-fun -!1005 (ListLongMap!15515 (_ BitVec 64)) ListLongMap!15515)

(assert (=> b!1108165 (= e!632236 (= call!46517 (-!1005 call!46516 k!934)))))

(declare-fun b!1108166 () Bool)

(declare-fun e!632230 () Bool)

(assert (=> b!1108166 (= e!632232 (and e!632230 mapRes!43117))))

(declare-fun condMapEmpty!43117 () Bool)

(declare-fun mapDefault!43117 () ValueCell!13057)

