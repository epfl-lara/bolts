; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99970 () Bool)

(assert start!99970)

(declare-fun b_free!25513 () Bool)

(declare-fun b_next!25513 () Bool)

(assert (=> start!99970 (= b_free!25513 (not b_next!25513))))

(declare-fun tp!89253 () Bool)

(declare-fun b_and!41907 () Bool)

(assert (=> start!99970 (= tp!89253 b_and!41907)))

(declare-fun b!1189665 () Bool)

(declare-fun res!791221 () Bool)

(declare-fun e!676402 () Bool)

(assert (=> b!1189665 (=> (not res!791221) (not e!676402))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76852 0))(
  ( (array!76853 (arr!37072 (Array (_ BitVec 32) (_ BitVec 64))) (size!37609 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76852)

(assert (=> b!1189665 (= res!791221 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37609 _keys!1208))))))

(declare-fun b!1189666 () Bool)

(declare-fun res!791218 () Bool)

(assert (=> b!1189666 (=> (not res!791218) (not e!676402))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76852 (_ BitVec 32)) Bool)

(assert (=> b!1189666 (= res!791218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189667 () Bool)

(declare-fun e!676403 () Bool)

(declare-fun tp_is_empty!30043 () Bool)

(assert (=> b!1189667 (= e!676403 tp_is_empty!30043)))

(declare-fun b!1189668 () Bool)

(declare-fun e!676398 () Bool)

(declare-fun e!676405 () Bool)

(assert (=> b!1189668 (= e!676398 (not e!676405))))

(declare-fun res!791224 () Bool)

(assert (=> b!1189668 (=> res!791224 e!676405)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189668 (= res!791224 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189668 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39404 0))(
  ( (Unit!39405) )
))
(declare-fun lt!541127 () Unit!39404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76852 (_ BitVec 64) (_ BitVec 32)) Unit!39404)

(assert (=> b!1189668 (= lt!541127 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189669 () Bool)

(declare-fun res!791220 () Bool)

(assert (=> b!1189669 (=> (not res!791220) (not e!676398))))

(declare-fun lt!541125 () array!76852)

(declare-datatypes ((List!26259 0))(
  ( (Nil!26256) (Cons!26255 (h!27464 (_ BitVec 64)) (t!38771 List!26259)) )
))
(declare-fun arrayNoDuplicates!0 (array!76852 (_ BitVec 32) List!26259) Bool)

(assert (=> b!1189669 (= res!791220 (arrayNoDuplicates!0 lt!541125 #b00000000000000000000000000000000 Nil!26256))))

(declare-fun b!1189670 () Bool)

(declare-fun e!676401 () Bool)

(assert (=> b!1189670 (= e!676405 e!676401)))

(declare-fun res!791216 () Bool)

(assert (=> b!1189670 (=> res!791216 e!676401)))

(assert (=> b!1189670 (= res!791216 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45185 0))(
  ( (V!45186 (val!15078 Int)) )
))
(declare-fun zeroValue!944 () V!45185)

(declare-datatypes ((tuple2!19500 0))(
  ( (tuple2!19501 (_1!9760 (_ BitVec 64)) (_2!9760 V!45185)) )
))
(declare-datatypes ((List!26260 0))(
  ( (Nil!26257) (Cons!26256 (h!27465 tuple2!19500) (t!38772 List!26260)) )
))
(declare-datatypes ((ListLongMap!17481 0))(
  ( (ListLongMap!17482 (toList!8756 List!26260)) )
))
(declare-fun lt!541124 () ListLongMap!17481)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14312 0))(
  ( (ValueCellFull!14312 (v!17717 V!45185)) (EmptyCell!14312) )
))
(declare-datatypes ((array!76854 0))(
  ( (array!76855 (arr!37073 (Array (_ BitVec 32) ValueCell!14312)) (size!37610 (_ BitVec 32))) )
))
(declare-fun lt!541123 () array!76854)

(declare-fun minValue!944 () V!45185)

(declare-fun getCurrentListMapNoExtraKeys!5170 (array!76852 array!76854 (_ BitVec 32) (_ BitVec 32) V!45185 V!45185 (_ BitVec 32) Int) ListLongMap!17481)

(assert (=> b!1189670 (= lt!541124 (getCurrentListMapNoExtraKeys!5170 lt!541125 lt!541123 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76854)

(declare-fun dynLambda!3122 (Int (_ BitVec 64)) V!45185)

(assert (=> b!1189670 (= lt!541123 (array!76855 (store (arr!37073 _values!996) i!673 (ValueCellFull!14312 (dynLambda!3122 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37610 _values!996)))))

(declare-fun lt!541126 () ListLongMap!17481)

(assert (=> b!1189670 (= lt!541126 (getCurrentListMapNoExtraKeys!5170 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46892 () Bool)

(declare-fun mapRes!46892 () Bool)

(declare-fun tp!89254 () Bool)

(assert (=> mapNonEmpty!46892 (= mapRes!46892 (and tp!89254 e!676403))))

(declare-fun mapValue!46892 () ValueCell!14312)

(declare-fun mapRest!46892 () (Array (_ BitVec 32) ValueCell!14312))

(declare-fun mapKey!46892 () (_ BitVec 32))

(assert (=> mapNonEmpty!46892 (= (arr!37073 _values!996) (store mapRest!46892 mapKey!46892 mapValue!46892))))

(declare-fun b!1189671 () Bool)

(assert (=> b!1189671 (= e!676401 true)))

(declare-fun -!1738 (ListLongMap!17481 (_ BitVec 64)) ListLongMap!17481)

(assert (=> b!1189671 (= (getCurrentListMapNoExtraKeys!5170 lt!541125 lt!541123 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1738 (getCurrentListMapNoExtraKeys!5170 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!541128 () Unit!39404)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!944 (array!76852 array!76854 (_ BitVec 32) (_ BitVec 32) V!45185 V!45185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39404)

(assert (=> b!1189671 (= lt!541128 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!944 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46892 () Bool)

(assert (=> mapIsEmpty!46892 mapRes!46892))

(declare-fun res!791219 () Bool)

(assert (=> start!99970 (=> (not res!791219) (not e!676402))))

(assert (=> start!99970 (= res!791219 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37609 _keys!1208))))))

(assert (=> start!99970 e!676402))

(assert (=> start!99970 tp_is_empty!30043))

(declare-fun array_inv!28168 (array!76852) Bool)

(assert (=> start!99970 (array_inv!28168 _keys!1208)))

(assert (=> start!99970 true))

(assert (=> start!99970 tp!89253))

(declare-fun e!676404 () Bool)

(declare-fun array_inv!28169 (array!76854) Bool)

(assert (=> start!99970 (and (array_inv!28169 _values!996) e!676404)))

(declare-fun b!1189672 () Bool)

(declare-fun res!791223 () Bool)

(assert (=> b!1189672 (=> (not res!791223) (not e!676402))))

(assert (=> b!1189672 (= res!791223 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26256))))

(declare-fun b!1189673 () Bool)

(declare-fun res!791213 () Bool)

(assert (=> b!1189673 (=> (not res!791213) (not e!676402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189673 (= res!791213 (validKeyInArray!0 k!934))))

(declare-fun b!1189674 () Bool)

(declare-fun e!676400 () Bool)

(assert (=> b!1189674 (= e!676400 tp_is_empty!30043)))

(declare-fun b!1189675 () Bool)

(declare-fun res!791214 () Bool)

(assert (=> b!1189675 (=> (not res!791214) (not e!676402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189675 (= res!791214 (validMask!0 mask!1564))))

(declare-fun b!1189676 () Bool)

(declare-fun res!791217 () Bool)

(assert (=> b!1189676 (=> (not res!791217) (not e!676402))))

(assert (=> b!1189676 (= res!791217 (= (select (arr!37072 _keys!1208) i!673) k!934))))

(declare-fun b!1189677 () Bool)

(assert (=> b!1189677 (= e!676402 e!676398)))

(declare-fun res!791215 () Bool)

(assert (=> b!1189677 (=> (not res!791215) (not e!676398))))

(assert (=> b!1189677 (= res!791215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541125 mask!1564))))

(assert (=> b!1189677 (= lt!541125 (array!76853 (store (arr!37072 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37609 _keys!1208)))))

(declare-fun b!1189678 () Bool)

(assert (=> b!1189678 (= e!676404 (and e!676400 mapRes!46892))))

(declare-fun condMapEmpty!46892 () Bool)

(declare-fun mapDefault!46892 () ValueCell!14312)

