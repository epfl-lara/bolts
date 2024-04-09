; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98426 () Bool)

(assert start!98426)

(declare-fun b_free!23995 () Bool)

(declare-fun b_next!23995 () Bool)

(assert (=> start!98426 (= b_free!23995 (not b_next!23995))))

(declare-fun tp!84696 () Bool)

(declare-fun b_and!38853 () Bool)

(assert (=> start!98426 (= tp!84696 b_and!38853)))

(declare-fun res!757711 () Bool)

(declare-fun e!645913 () Bool)

(assert (=> start!98426 (=> (not res!757711) (not e!645913))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73872 0))(
  ( (array!73873 (arr!35583 (Array (_ BitVec 32) (_ BitVec 64))) (size!36120 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73872)

(assert (=> start!98426 (= res!757711 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36120 _keys!1208))))))

(assert (=> start!98426 e!645913))

(declare-fun tp_is_empty!28525 () Bool)

(assert (=> start!98426 tp_is_empty!28525))

(declare-fun array_inv!27158 (array!73872) Bool)

(assert (=> start!98426 (array_inv!27158 _keys!1208)))

(assert (=> start!98426 true))

(assert (=> start!98426 tp!84696))

(declare-datatypes ((V!43161 0))(
  ( (V!43162 (val!14319 Int)) )
))
(declare-datatypes ((ValueCell!13553 0))(
  ( (ValueCellFull!13553 (v!16957 V!43161)) (EmptyCell!13553) )
))
(declare-datatypes ((array!73874 0))(
  ( (array!73875 (arr!35584 (Array (_ BitVec 32) ValueCell!13553)) (size!36121 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73874)

(declare-fun e!645922 () Bool)

(declare-fun array_inv!27159 (array!73874) Bool)

(assert (=> start!98426 (and (array_inv!27159 _values!996) e!645922)))

(declare-fun zeroValue!944 () V!43161)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!49478 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43161)

(declare-datatypes ((tuple2!18160 0))(
  ( (tuple2!18161 (_1!9090 (_ BitVec 64)) (_2!9090 V!43161)) )
))
(declare-datatypes ((List!24972 0))(
  ( (Nil!24969) (Cons!24968 (h!26177 tuple2!18160) (t!35966 List!24972)) )
))
(declare-datatypes ((ListLongMap!16141 0))(
  ( (ListLongMap!16142 (toList!8086 List!24972)) )
))
(declare-fun call!49486 () ListLongMap!16141)

(declare-fun getCurrentListMapNoExtraKeys!4535 (array!73872 array!73874 (_ BitVec 32) (_ BitVec 32) V!43161 V!43161 (_ BitVec 32) Int) ListLongMap!16141)

(assert (=> bm!49478 (= call!49486 (getCurrentListMapNoExtraKeys!4535 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!645914 () Bool)

(declare-fun b!1134918 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134918 (= e!645914 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!44612 () Bool)

(declare-fun mapRes!44612 () Bool)

(assert (=> mapIsEmpty!44612 mapRes!44612))

(declare-fun b!1134919 () Bool)

(declare-fun e!645926 () Bool)

(assert (=> b!1134919 (= e!645926 true)))

(declare-fun lt!504460 () Bool)

(declare-datatypes ((List!24973 0))(
  ( (Nil!24970) (Cons!24969 (h!26178 (_ BitVec 64)) (t!35967 List!24973)) )
))
(declare-fun contains!6585 (List!24973 (_ BitVec 64)) Bool)

(assert (=> b!1134919 (= lt!504460 (contains!6585 Nil!24970 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!49479 () Bool)

(declare-fun call!49485 () ListLongMap!16141)

(declare-fun call!49488 () ListLongMap!16141)

(assert (=> bm!49479 (= call!49485 call!49488)))

(declare-fun mapNonEmpty!44612 () Bool)

(declare-fun tp!84697 () Bool)

(declare-fun e!645921 () Bool)

(assert (=> mapNonEmpty!44612 (= mapRes!44612 (and tp!84697 e!645921))))

(declare-fun mapRest!44612 () (Array (_ BitVec 32) ValueCell!13553))

(declare-fun mapKey!44612 () (_ BitVec 32))

(declare-fun mapValue!44612 () ValueCell!13553)

(assert (=> mapNonEmpty!44612 (= (arr!35584 _values!996) (store mapRest!44612 mapKey!44612 mapValue!44612))))

(declare-fun b!1134920 () Bool)

(declare-fun e!645925 () Bool)

(declare-fun e!645920 () Bool)

(assert (=> b!1134920 (= e!645925 (not e!645920))))

(declare-fun res!757702 () Bool)

(assert (=> b!1134920 (=> res!757702 e!645920)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134920 (= res!757702 (bvsgt from!1455 i!673))))

(assert (=> b!1134920 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37125 0))(
  ( (Unit!37126) )
))
(declare-fun lt!504463 () Unit!37125)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73872 (_ BitVec 64) (_ BitVec 32)) Unit!37125)

(assert (=> b!1134920 (= lt!504463 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1134921 () Bool)

(declare-fun res!757700 () Bool)

(assert (=> b!1134921 (=> (not res!757700) (not e!645913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73872 (_ BitVec 32)) Bool)

(assert (=> b!1134921 (= res!757700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134922 () Bool)

(assert (=> b!1134922 (= e!645921 tp_is_empty!28525)))

(declare-fun b!1134923 () Bool)

(declare-fun res!757705 () Bool)

(assert (=> b!1134923 (=> (not res!757705) (not e!645913))))

(assert (=> b!1134923 (= res!757705 (and (= (size!36121 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36120 _keys!1208) (size!36121 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134924 () Bool)

(declare-fun call!49487 () Bool)

(assert (=> b!1134924 call!49487))

(declare-fun lt!504464 () Unit!37125)

(declare-fun call!49481 () Unit!37125)

(assert (=> b!1134924 (= lt!504464 call!49481)))

(declare-fun e!645915 () Unit!37125)

(assert (=> b!1134924 (= e!645915 lt!504464)))

(declare-fun b!1134925 () Bool)

(declare-fun e!645918 () Bool)

(assert (=> b!1134925 (= e!645922 (and e!645918 mapRes!44612))))

(declare-fun condMapEmpty!44612 () Bool)

(declare-fun mapDefault!44612 () ValueCell!13553)

