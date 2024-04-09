; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101746 () Bool)

(assert start!101746)

(declare-fun b_free!26399 () Bool)

(declare-fun b_next!26399 () Bool)

(assert (=> start!101746 (= b_free!26399 (not b_next!26399))))

(declare-fun tp!92243 () Bool)

(declare-fun b_and!44069 () Bool)

(assert (=> start!101746 (= tp!92243 b_and!44069)))

(declare-datatypes ((V!46597 0))(
  ( (V!46598 (val!15608 Int)) )
))
(declare-datatypes ((tuple2!20254 0))(
  ( (tuple2!20255 (_1!10137 (_ BitVec 64)) (_2!10137 V!46597)) )
))
(declare-fun lt!557007 () tuple2!20254)

(declare-fun e!695031 () Bool)

(declare-fun b!1223691 () Bool)

(declare-datatypes ((List!27066 0))(
  ( (Nil!27063) (Cons!27062 (h!28271 tuple2!20254) (t!40452 List!27066)) )
))
(declare-datatypes ((ListLongMap!18235 0))(
  ( (ListLongMap!18236 (toList!9133 List!27066)) )
))
(declare-fun lt!557013 () ListLongMap!18235)

(declare-fun lt!557018 () ListLongMap!18235)

(declare-fun +!4096 (ListLongMap!18235 tuple2!20254) ListLongMap!18235)

(assert (=> b!1223691 (= e!695031 (= lt!557013 (+!4096 lt!557018 lt!557007)))))

(declare-fun b!1223692 () Bool)

(declare-fun e!695039 () Bool)

(declare-fun e!695037 () Bool)

(assert (=> b!1223692 (= e!695039 e!695037)))

(declare-fun res!813168 () Bool)

(assert (=> b!1223692 (=> res!813168 e!695037)))

(declare-datatypes ((array!78964 0))(
  ( (array!78965 (arr!38105 (Array (_ BitVec 32) (_ BitVec 64))) (size!38642 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78964)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1223692 (= res!813168 (not (= (select (arr!38105 _keys!1208) from!1455) k!934)))))

(declare-fun b!1223693 () Bool)

(declare-fun e!695034 () Bool)

(declare-fun e!695029 () Bool)

(assert (=> b!1223693 (= e!695034 (not e!695029))))

(declare-fun res!813167 () Bool)

(assert (=> b!1223693 (=> res!813167 e!695029)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223693 (= res!813167 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223693 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40461 0))(
  ( (Unit!40462) )
))
(declare-fun lt!557008 () Unit!40461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78964 (_ BitVec 64) (_ BitVec 32)) Unit!40461)

(assert (=> b!1223693 (= lt!557008 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223694 () Bool)

(declare-fun e!695036 () Bool)

(assert (=> b!1223694 (= e!695029 e!695036)))

(declare-fun res!813179 () Bool)

(assert (=> b!1223694 (=> res!813179 e!695036)))

(assert (=> b!1223694 (= res!813179 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46597)

(declare-fun lt!557010 () array!78964)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14842 0))(
  ( (ValueCellFull!14842 (v!18271 V!46597)) (EmptyCell!14842) )
))
(declare-datatypes ((array!78966 0))(
  ( (array!78967 (arr!38106 (Array (_ BitVec 32) ValueCell!14842)) (size!38643 (_ BitVec 32))) )
))
(declare-fun lt!557009 () array!78966)

(declare-fun minValue!944 () V!46597)

(declare-fun lt!557014 () ListLongMap!18235)

(declare-fun getCurrentListMapNoExtraKeys!5530 (array!78964 array!78966 (_ BitVec 32) (_ BitVec 32) V!46597 V!46597 (_ BitVec 32) Int) ListLongMap!18235)

(assert (=> b!1223694 (= lt!557014 (getCurrentListMapNoExtraKeys!5530 lt!557010 lt!557009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557017 () V!46597)

(declare-fun _values!996 () array!78966)

(assert (=> b!1223694 (= lt!557009 (array!78967 (store (arr!38106 _values!996) i!673 (ValueCellFull!14842 lt!557017)) (size!38643 _values!996)))))

(declare-fun dynLambda!3426 (Int (_ BitVec 64)) V!46597)

(assert (=> b!1223694 (= lt!557017 (dynLambda!3426 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1223694 (= lt!557013 (getCurrentListMapNoExtraKeys!5530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223695 () Bool)

(declare-fun res!813172 () Bool)

(declare-fun e!695035 () Bool)

(assert (=> b!1223695 (=> (not res!813172) (not e!695035))))

(assert (=> b!1223695 (= res!813172 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38642 _keys!1208))))))

(declare-fun res!813165 () Bool)

(assert (=> start!101746 (=> (not res!813165) (not e!695035))))

(assert (=> start!101746 (= res!813165 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38642 _keys!1208))))))

(assert (=> start!101746 e!695035))

(declare-fun tp_is_empty!31103 () Bool)

(assert (=> start!101746 tp_is_empty!31103))

(declare-fun array_inv!28906 (array!78964) Bool)

(assert (=> start!101746 (array_inv!28906 _keys!1208)))

(assert (=> start!101746 true))

(assert (=> start!101746 tp!92243))

(declare-fun e!695028 () Bool)

(declare-fun array_inv!28907 (array!78966) Bool)

(assert (=> start!101746 (and (array_inv!28907 _values!996) e!695028)))

(declare-fun b!1223696 () Bool)

(declare-fun res!813180 () Bool)

(assert (=> b!1223696 (=> (not res!813180) (not e!695034))))

(declare-datatypes ((List!27067 0))(
  ( (Nil!27064) (Cons!27063 (h!28272 (_ BitVec 64)) (t!40453 List!27067)) )
))
(declare-fun arrayNoDuplicates!0 (array!78964 (_ BitVec 32) List!27067) Bool)

(assert (=> b!1223696 (= res!813180 (arrayNoDuplicates!0 lt!557010 #b00000000000000000000000000000000 Nil!27064))))

(declare-fun b!1223697 () Bool)

(declare-fun res!813174 () Bool)

(assert (=> b!1223697 (=> (not res!813174) (not e!695035))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78964 (_ BitVec 32)) Bool)

(assert (=> b!1223697 (= res!813174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223698 () Bool)

(declare-fun res!813173 () Bool)

(assert (=> b!1223698 (=> (not res!813173) (not e!695035))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223698 (= res!813173 (validKeyInArray!0 k!934))))

(declare-fun b!1223699 () Bool)

(declare-fun res!813166 () Bool)

(assert (=> b!1223699 (=> (not res!813166) (not e!695035))))

(assert (=> b!1223699 (= res!813166 (= (select (arr!38105 _keys!1208) i!673) k!934))))

(declare-fun b!1223700 () Bool)

(declare-fun e!695040 () Unit!40461)

(declare-fun Unit!40463 () Unit!40461)

(assert (=> b!1223700 (= e!695040 Unit!40463)))

(declare-fun b!1223701 () Bool)

(declare-fun e!695032 () Bool)

(assert (=> b!1223701 (= e!695032 tp_is_empty!31103)))

(declare-fun b!1223702 () Bool)

(declare-fun res!813176 () Bool)

(assert (=> b!1223702 (=> (not res!813176) (not e!695035))))

(assert (=> b!1223702 (= res!813176 (and (= (size!38643 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38642 _keys!1208) (size!38643 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1223703 () Bool)

(assert (=> b!1223703 (= e!695035 e!695034)))

(declare-fun res!813175 () Bool)

(assert (=> b!1223703 (=> (not res!813175) (not e!695034))))

(assert (=> b!1223703 (= res!813175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557010 mask!1564))))

(assert (=> b!1223703 (= lt!557010 (array!78965 (store (arr!38105 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38642 _keys!1208)))))

(declare-fun b!1223704 () Bool)

(declare-fun Unit!40464 () Unit!40461)

(assert (=> b!1223704 (= e!695040 Unit!40464)))

(declare-fun lt!557011 () Unit!40461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78964 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40461)

(assert (=> b!1223704 (= lt!557011 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223704 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557016 () Unit!40461)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78964 (_ BitVec 32) (_ BitVec 32)) Unit!40461)

(assert (=> b!1223704 (= lt!557016 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1223704 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27064)))

(declare-fun lt!557006 () Unit!40461)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78964 (_ BitVec 64) (_ BitVec 32) List!27067) Unit!40461)

(assert (=> b!1223704 (= lt!557006 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27064))))

(assert (=> b!1223704 false))

(declare-fun b!1223705 () Bool)

(declare-fun e!695033 () Bool)

(assert (=> b!1223705 (= e!695036 e!695033)))

(declare-fun res!813178 () Bool)

(assert (=> b!1223705 (=> res!813178 e!695033)))

(assert (=> b!1223705 (= res!813178 (not (validKeyInArray!0 (select (arr!38105 _keys!1208) from!1455))))))

(declare-fun lt!557019 () ListLongMap!18235)

(declare-fun lt!557020 () ListLongMap!18235)

(assert (=> b!1223705 (= lt!557019 lt!557020)))

(declare-fun -!1973 (ListLongMap!18235 (_ BitVec 64)) ListLongMap!18235)

(assert (=> b!1223705 (= lt!557020 (-!1973 lt!557018 k!934))))

(assert (=> b!1223705 (= lt!557019 (getCurrentListMapNoExtraKeys!5530 lt!557010 lt!557009 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223705 (= lt!557018 (getCurrentListMapNoExtraKeys!5530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557015 () Unit!40461)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1175 (array!78964 array!78966 (_ BitVec 32) (_ BitVec 32) V!46597 V!46597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40461)

(assert (=> b!1223705 (= lt!557015 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1175 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223706 () Bool)

(declare-fun res!813170 () Bool)

(assert (=> b!1223706 (=> (not res!813170) (not e!695035))))

(assert (=> b!1223706 (= res!813170 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27064))))

(declare-fun b!1223707 () Bool)

(declare-fun res!813169 () Bool)

(assert (=> b!1223707 (=> (not res!813169) (not e!695035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223707 (= res!813169 (validMask!0 mask!1564))))

(declare-fun b!1223708 () Bool)

(declare-fun e!695030 () Bool)

(assert (=> b!1223708 (= e!695030 tp_is_empty!31103)))

(declare-fun b!1223709 () Bool)

(assert (=> b!1223709 (= e!695037 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48553 () Bool)

(declare-fun mapRes!48553 () Bool)

(declare-fun tp!92244 () Bool)

(assert (=> mapNonEmpty!48553 (= mapRes!48553 (and tp!92244 e!695030))))

(declare-fun mapRest!48553 () (Array (_ BitVec 32) ValueCell!14842))

(declare-fun mapValue!48553 () ValueCell!14842)

(declare-fun mapKey!48553 () (_ BitVec 32))

(assert (=> mapNonEmpty!48553 (= (arr!38106 _values!996) (store mapRest!48553 mapKey!48553 mapValue!48553))))

(declare-fun b!1223710 () Bool)

(assert (=> b!1223710 (= e!695028 (and e!695032 mapRes!48553))))

(declare-fun condMapEmpty!48553 () Bool)

(declare-fun mapDefault!48553 () ValueCell!14842)

