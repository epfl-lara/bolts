; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101404 () Bool)

(assert start!101404)

(declare-fun b_free!26239 () Bool)

(declare-fun b_next!26239 () Bool)

(assert (=> start!101404 (= b_free!26239 (not b_next!26239))))

(declare-fun tp!91746 () Bool)

(declare-fun b_and!43641 () Bool)

(assert (=> start!101404 (= tp!91746 b_and!43641)))

(declare-fun b!1217923 () Bool)

(declare-fun e!691516 () Bool)

(declare-fun e!691510 () Bool)

(assert (=> b!1217923 (= e!691516 e!691510)))

(declare-fun res!808927 () Bool)

(assert (=> b!1217923 (=> res!808927 e!691510)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217923 (= res!808927 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46385 0))(
  ( (V!46386 (val!15528 Int)) )
))
(declare-fun zeroValue!944 () V!46385)

(declare-datatypes ((tuple2!20108 0))(
  ( (tuple2!20109 (_1!10064 (_ BitVec 64)) (_2!10064 V!46385)) )
))
(declare-datatypes ((List!26929 0))(
  ( (Nil!26926) (Cons!26925 (h!28134 tuple2!20108) (t!40155 List!26929)) )
))
(declare-datatypes ((ListLongMap!18089 0))(
  ( (ListLongMap!18090 (toList!9060 List!26929)) )
))
(declare-fun lt!553599 () ListLongMap!18089)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78636 0))(
  ( (array!78637 (arr!37947 (Array (_ BitVec 32) (_ BitVec 64))) (size!38484 (_ BitVec 32))) )
))
(declare-fun lt!553596 () array!78636)

(declare-fun minValue!944 () V!46385)

(declare-datatypes ((ValueCell!14762 0))(
  ( (ValueCellFull!14762 (v!18184 V!46385)) (EmptyCell!14762) )
))
(declare-datatypes ((array!78638 0))(
  ( (array!78639 (arr!37948 (Array (_ BitVec 32) ValueCell!14762)) (size!38485 (_ BitVec 32))) )
))
(declare-fun lt!553597 () array!78638)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5464 (array!78636 array!78638 (_ BitVec 32) (_ BitVec 32) V!46385 V!46385 (_ BitVec 32) Int) ListLongMap!18089)

(assert (=> b!1217923 (= lt!553599 (getCurrentListMapNoExtraKeys!5464 lt!553596 lt!553597 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78638)

(declare-fun lt!553595 () V!46385)

(assert (=> b!1217923 (= lt!553597 (array!78639 (store (arr!37948 _values!996) i!673 (ValueCellFull!14762 lt!553595)) (size!38485 _values!996)))))

(declare-fun dynLambda!3368 (Int (_ BitVec 64)) V!46385)

(assert (=> b!1217923 (= lt!553595 (dynLambda!3368 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78636)

(declare-fun lt!553598 () ListLongMap!18089)

(assert (=> b!1217923 (= lt!553598 (getCurrentListMapNoExtraKeys!5464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1217924 () Bool)

(declare-fun res!808916 () Bool)

(declare-fun e!691512 () Bool)

(assert (=> b!1217924 (=> (not res!808916) (not e!691512))))

(assert (=> b!1217924 (= res!808916 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38484 _keys!1208))))))

(declare-fun b!1217926 () Bool)

(declare-fun e!691511 () Bool)

(assert (=> b!1217926 (= e!691511 true)))

(declare-fun e!691509 () Bool)

(assert (=> b!1217926 e!691509))

(declare-fun res!808921 () Bool)

(assert (=> b!1217926 (=> (not res!808921) (not e!691509))))

(declare-fun lt!553593 () ListLongMap!18089)

(declare-fun +!4041 (ListLongMap!18089 tuple2!20108) ListLongMap!18089)

(declare-fun get!19383 (ValueCell!14762 V!46385) V!46385)

(assert (=> b!1217926 (= res!808921 (= lt!553599 (+!4041 lt!553593 (tuple2!20109 (select (arr!37947 _keys!1208) from!1455) (get!19383 (select (arr!37948 _values!996) from!1455) lt!553595)))))))

(declare-fun b!1217927 () Bool)

(declare-fun res!808915 () Bool)

(declare-fun e!691513 () Bool)

(assert (=> b!1217927 (=> (not res!808915) (not e!691513))))

(declare-datatypes ((List!26930 0))(
  ( (Nil!26927) (Cons!26926 (h!28135 (_ BitVec 64)) (t!40156 List!26930)) )
))
(declare-fun arrayNoDuplicates!0 (array!78636 (_ BitVec 32) List!26930) Bool)

(assert (=> b!1217927 (= res!808915 (arrayNoDuplicates!0 lt!553596 #b00000000000000000000000000000000 Nil!26927))))

(declare-fun b!1217928 () Bool)

(declare-fun res!808918 () Bool)

(assert (=> b!1217928 (=> (not res!808918) (not e!691512))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1217928 (= res!808918 (validKeyInArray!0 k!934))))

(declare-fun b!1217929 () Bool)

(declare-fun e!691507 () Bool)

(declare-fun tp_is_empty!30943 () Bool)

(assert (=> b!1217929 (= e!691507 tp_is_empty!30943)))

(declare-fun b!1217930 () Bool)

(declare-fun e!691508 () Bool)

(assert (=> b!1217930 (= e!691509 e!691508)))

(declare-fun res!808917 () Bool)

(assert (=> b!1217930 (=> res!808917 e!691508)))

(assert (=> b!1217930 (= res!808917 (not (= (select (arr!37947 _keys!1208) from!1455) k!934)))))

(declare-fun b!1217931 () Bool)

(declare-fun res!808913 () Bool)

(assert (=> b!1217931 (=> (not res!808913) (not e!691512))))

(assert (=> b!1217931 (= res!808913 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26927))))

(declare-fun b!1217932 () Bool)

(assert (=> b!1217932 (= e!691510 e!691511)))

(declare-fun res!808922 () Bool)

(assert (=> b!1217932 (=> res!808922 e!691511)))

(assert (=> b!1217932 (= res!808922 (not (validKeyInArray!0 (select (arr!37947 _keys!1208) from!1455))))))

(declare-fun lt!553592 () ListLongMap!18089)

(assert (=> b!1217932 (= lt!553592 lt!553593)))

(declare-fun lt!553594 () ListLongMap!18089)

(declare-fun -!1921 (ListLongMap!18089 (_ BitVec 64)) ListLongMap!18089)

(assert (=> b!1217932 (= lt!553593 (-!1921 lt!553594 k!934))))

(assert (=> b!1217932 (= lt!553592 (getCurrentListMapNoExtraKeys!5464 lt!553596 lt!553597 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1217932 (= lt!553594 (getCurrentListMapNoExtraKeys!5464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40306 0))(
  ( (Unit!40307) )
))
(declare-fun lt!553601 () Unit!40306)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1123 (array!78636 array!78638 (_ BitVec 32) (_ BitVec 32) V!46385 V!46385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40306)

(assert (=> b!1217932 (= lt!553601 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1123 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1217933 () Bool)

(assert (=> b!1217933 (= e!691513 (not e!691516))))

(declare-fun res!808919 () Bool)

(assert (=> b!1217933 (=> res!808919 e!691516)))

(assert (=> b!1217933 (= res!808919 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217933 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!553600 () Unit!40306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78636 (_ BitVec 64) (_ BitVec 32)) Unit!40306)

(assert (=> b!1217933 (= lt!553600 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217934 () Bool)

(declare-fun res!808926 () Bool)

(assert (=> b!1217934 (=> (not res!808926) (not e!691512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1217934 (= res!808926 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48295 () Bool)

(declare-fun mapRes!48295 () Bool)

(assert (=> mapIsEmpty!48295 mapRes!48295))

(declare-fun b!1217935 () Bool)

(declare-fun res!808923 () Bool)

(assert (=> b!1217935 (=> (not res!808923) (not e!691512))))

(assert (=> b!1217935 (= res!808923 (= (select (arr!37947 _keys!1208) i!673) k!934))))

(declare-fun res!808924 () Bool)

(assert (=> start!101404 (=> (not res!808924) (not e!691512))))

(assert (=> start!101404 (= res!808924 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38484 _keys!1208))))))

(assert (=> start!101404 e!691512))

(assert (=> start!101404 tp_is_empty!30943))

(declare-fun array_inv!28796 (array!78636) Bool)

(assert (=> start!101404 (array_inv!28796 _keys!1208)))

(assert (=> start!101404 true))

(assert (=> start!101404 tp!91746))

(declare-fun e!691506 () Bool)

(declare-fun array_inv!28797 (array!78638) Bool)

(assert (=> start!101404 (and (array_inv!28797 _values!996) e!691506)))

(declare-fun b!1217925 () Bool)

(declare-fun res!808920 () Bool)

(assert (=> b!1217925 (=> (not res!808920) (not e!691512))))

(assert (=> b!1217925 (= res!808920 (and (= (size!38485 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38484 _keys!1208) (size!38485 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1217936 () Bool)

(assert (=> b!1217936 (= e!691506 (and e!691507 mapRes!48295))))

(declare-fun condMapEmpty!48295 () Bool)

(declare-fun mapDefault!48295 () ValueCell!14762)

