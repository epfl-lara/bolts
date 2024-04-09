; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97934 () Bool)

(assert start!97934)

(declare-fun b_free!23599 () Bool)

(declare-fun b_next!23599 () Bool)

(assert (=> start!97934 (= b_free!23599 (not b_next!23599))))

(declare-fun tp!83502 () Bool)

(declare-fun b_and!38003 () Bool)

(assert (=> start!97934 (= tp!83502 b_and!38003)))

(declare-fun b!1121190 () Bool)

(declare-fun res!749095 () Bool)

(declare-fun e!638432 () Bool)

(assert (=> b!1121190 (=> (not res!749095) (not e!638432))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73084 0))(
  ( (array!73085 (arr!35191 (Array (_ BitVec 32) (_ BitVec 64))) (size!35728 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73084)

(assert (=> b!1121190 (= res!749095 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35728 _keys!1208))))))

(declare-fun b!1121191 () Bool)

(declare-fun e!638435 () Bool)

(declare-fun e!638433 () Bool)

(assert (=> b!1121191 (= e!638435 e!638433)))

(declare-fun res!749103 () Bool)

(assert (=> b!1121191 (=> res!749103 e!638433)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1121191 (= res!749103 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42633 0))(
  ( (V!42634 (val!14121 Int)) )
))
(declare-fun zeroValue!944 () V!42633)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17784 0))(
  ( (tuple2!17785 (_1!8902 (_ BitVec 64)) (_2!8902 V!42633)) )
))
(declare-datatypes ((List!24622 0))(
  ( (Nil!24619) (Cons!24618 (h!25827 tuple2!17784) (t!35220 List!24622)) )
))
(declare-datatypes ((ListLongMap!15765 0))(
  ( (ListLongMap!15766 (toList!7898 List!24622)) )
))
(declare-fun lt!498259 () ListLongMap!15765)

(declare-fun minValue!944 () V!42633)

(declare-datatypes ((ValueCell!13355 0))(
  ( (ValueCellFull!13355 (v!16755 V!42633)) (EmptyCell!13355) )
))
(declare-datatypes ((array!73086 0))(
  ( (array!73087 (arr!35192 (Array (_ BitVec 32) ValueCell!13355)) (size!35729 (_ BitVec 32))) )
))
(declare-fun lt!498263 () array!73086)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!498262 () array!73084)

(declare-fun getCurrentListMapNoExtraKeys!4359 (array!73084 array!73086 (_ BitVec 32) (_ BitVec 32) V!42633 V!42633 (_ BitVec 32) Int) ListLongMap!15765)

(assert (=> b!1121191 (= lt!498259 (getCurrentListMapNoExtraKeys!4359 lt!498262 lt!498263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73086)

(declare-fun dynLambda!2459 (Int (_ BitVec 64)) V!42633)

(assert (=> b!1121191 (= lt!498263 (array!73087 (store (arr!35192 _values!996) i!673 (ValueCellFull!13355 (dynLambda!2459 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35729 _values!996)))))

(declare-fun lt!498264 () ListLongMap!15765)

(assert (=> b!1121191 (= lt!498264 (getCurrentListMapNoExtraKeys!4359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121192 () Bool)

(declare-fun e!638430 () Bool)

(declare-fun tp_is_empty!28129 () Bool)

(assert (=> b!1121192 (= e!638430 tp_is_empty!28129)))

(declare-fun b!1121193 () Bool)

(declare-fun res!749100 () Bool)

(declare-fun e!638431 () Bool)

(assert (=> b!1121193 (=> (not res!749100) (not e!638431))))

(declare-datatypes ((List!24623 0))(
  ( (Nil!24620) (Cons!24619 (h!25828 (_ BitVec 64)) (t!35221 List!24623)) )
))
(declare-fun arrayNoDuplicates!0 (array!73084 (_ BitVec 32) List!24623) Bool)

(assert (=> b!1121193 (= res!749100 (arrayNoDuplicates!0 lt!498262 #b00000000000000000000000000000000 Nil!24620))))

(declare-fun b!1121194 () Bool)

(declare-fun e!638434 () Bool)

(declare-fun call!47080 () ListLongMap!15765)

(declare-fun call!47081 () ListLongMap!15765)

(assert (=> b!1121194 (= e!638434 (= call!47080 call!47081))))

(declare-fun b!1121195 () Bool)

(declare-fun res!749106 () Bool)

(assert (=> b!1121195 (=> (not res!749106) (not e!638432))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121195 (= res!749106 (validKeyInArray!0 k!934))))

(declare-fun b!1121197 () Bool)

(declare-fun res!749098 () Bool)

(assert (=> b!1121197 (=> (not res!749098) (not e!638432))))

(assert (=> b!1121197 (= res!749098 (and (= (size!35729 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35728 _keys!1208) (size!35729 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44011 () Bool)

(declare-fun mapRes!44011 () Bool)

(declare-fun tp!83501 () Bool)

(assert (=> mapNonEmpty!44011 (= mapRes!44011 (and tp!83501 e!638430))))

(declare-fun mapRest!44011 () (Array (_ BitVec 32) ValueCell!13355))

(declare-fun mapValue!44011 () ValueCell!13355)

(declare-fun mapKey!44011 () (_ BitVec 32))

(assert (=> mapNonEmpty!44011 (= (arr!35192 _values!996) (store mapRest!44011 mapKey!44011 mapValue!44011))))

(declare-fun b!1121198 () Bool)

(declare-fun res!749104 () Bool)

(assert (=> b!1121198 (=> (not res!749104) (not e!638432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121198 (= res!749104 (validMask!0 mask!1564))))

(declare-fun b!1121199 () Bool)

(assert (=> b!1121199 (= e!638432 e!638431)))

(declare-fun res!749102 () Bool)

(assert (=> b!1121199 (=> (not res!749102) (not e!638431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73084 (_ BitVec 32)) Bool)

(assert (=> b!1121199 (= res!749102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498262 mask!1564))))

(assert (=> b!1121199 (= lt!498262 (array!73085 (store (arr!35191 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35728 _keys!1208)))))

(declare-fun b!1121200 () Bool)

(declare-fun res!749101 () Bool)

(assert (=> b!1121200 (=> (not res!749101) (not e!638432))))

(assert (=> b!1121200 (= res!749101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47077 () Bool)

(assert (=> bm!47077 (= call!47081 (getCurrentListMapNoExtraKeys!4359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44011 () Bool)

(assert (=> mapIsEmpty!44011 mapRes!44011))

(declare-fun b!1121201 () Bool)

(declare-fun res!749105 () Bool)

(assert (=> b!1121201 (=> (not res!749105) (not e!638432))))

(assert (=> b!1121201 (= res!749105 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24620))))

(declare-fun b!1121202 () Bool)

(declare-fun e!638428 () Bool)

(assert (=> b!1121202 (= e!638428 tp_is_empty!28129)))

(declare-fun b!1121203 () Bool)

(declare-fun res!749097 () Bool)

(assert (=> b!1121203 (=> (not res!749097) (not e!638432))))

(assert (=> b!1121203 (= res!749097 (= (select (arr!35191 _keys!1208) i!673) k!934))))

(declare-fun bm!47078 () Bool)

(assert (=> bm!47078 (= call!47080 (getCurrentListMapNoExtraKeys!4359 lt!498262 lt!498263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121204 () Bool)

(declare-fun -!1064 (ListLongMap!15765 (_ BitVec 64)) ListLongMap!15765)

(assert (=> b!1121204 (= e!638434 (= call!47080 (-!1064 call!47081 k!934)))))

(declare-fun res!749099 () Bool)

(assert (=> start!97934 (=> (not res!749099) (not e!638432))))

(assert (=> start!97934 (= res!749099 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35728 _keys!1208))))))

(assert (=> start!97934 e!638432))

(assert (=> start!97934 tp_is_empty!28129))

(declare-fun array_inv!26900 (array!73084) Bool)

(assert (=> start!97934 (array_inv!26900 _keys!1208)))

(assert (=> start!97934 true))

(assert (=> start!97934 tp!83502))

(declare-fun e!638429 () Bool)

(declare-fun array_inv!26901 (array!73086) Bool)

(assert (=> start!97934 (and (array_inv!26901 _values!996) e!638429)))

(declare-fun b!1121196 () Bool)

(assert (=> b!1121196 (= e!638431 (not e!638435))))

(declare-fun res!749096 () Bool)

(assert (=> b!1121196 (=> res!749096 e!638435)))

(assert (=> b!1121196 (= res!749096 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121196 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36711 0))(
  ( (Unit!36712) )
))
(declare-fun lt!498261 () Unit!36711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73084 (_ BitVec 64) (_ BitVec 32)) Unit!36711)

(assert (=> b!1121196 (= lt!498261 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1121205 () Bool)

(assert (=> b!1121205 (= e!638429 (and e!638428 mapRes!44011))))

(declare-fun condMapEmpty!44011 () Bool)

(declare-fun mapDefault!44011 () ValueCell!13355)

