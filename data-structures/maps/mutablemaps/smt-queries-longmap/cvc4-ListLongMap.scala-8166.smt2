; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99902 () Bool)

(assert start!99902)

(declare-fun b_free!25445 () Bool)

(declare-fun b_next!25445 () Bool)

(assert (=> start!99902 (= b_free!25445 (not b_next!25445))))

(declare-fun tp!89049 () Bool)

(declare-fun b_and!41771 () Bool)

(assert (=> start!99902 (= tp!89049 b_and!41771)))

(declare-fun b!1188017 () Bool)

(declare-fun e!675552 () Bool)

(assert (=> b!1188017 (= e!675552 true)))

(declare-datatypes ((V!45093 0))(
  ( (V!45094 (val!15044 Int)) )
))
(declare-datatypes ((tuple2!19444 0))(
  ( (tuple2!19445 (_1!9732 (_ BitVec 64)) (_2!9732 V!45093)) )
))
(declare-datatypes ((List!26204 0))(
  ( (Nil!26201) (Cons!26200 (h!27409 tuple2!19444) (t!38648 List!26204)) )
))
(declare-datatypes ((ListLongMap!17425 0))(
  ( (ListLongMap!17426 (toList!8728 List!26204)) )
))
(declare-fun lt!540394 () ListLongMap!17425)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!540393 () ListLongMap!17425)

(declare-fun -!1713 (ListLongMap!17425 (_ BitVec 64)) ListLongMap!17425)

(assert (=> b!1188017 (= (-!1713 lt!540394 k!934) lt!540393)))

(declare-datatypes ((Unit!39338 0))(
  ( (Unit!39339) )
))
(declare-fun lt!540395 () Unit!39338)

(declare-datatypes ((array!76718 0))(
  ( (array!76719 (arr!37005 (Array (_ BitVec 32) (_ BitVec 64))) (size!37542 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76718)

(declare-fun lt!540382 () ListLongMap!17425)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!540389 () V!45093)

(declare-fun addRemoveCommutativeForDiffKeys!220 (ListLongMap!17425 (_ BitVec 64) V!45093 (_ BitVec 64)) Unit!39338)

(assert (=> b!1188017 (= lt!540395 (addRemoveCommutativeForDiffKeys!220 lt!540382 (select (arr!37005 _keys!1208) from!1455) lt!540389 k!934))))

(declare-fun lt!540387 () ListLongMap!17425)

(declare-fun lt!540397 () ListLongMap!17425)

(declare-fun lt!540384 () ListLongMap!17425)

(assert (=> b!1188017 (and (= lt!540397 lt!540394) (= lt!540387 lt!540384))))

(declare-fun lt!540381 () tuple2!19444)

(declare-fun +!3930 (ListLongMap!17425 tuple2!19444) ListLongMap!17425)

(assert (=> b!1188017 (= lt!540394 (+!3930 lt!540382 lt!540381))))

(assert (=> b!1188017 (not (= (select (arr!37005 _keys!1208) from!1455) k!934))))

(declare-fun lt!540390 () Unit!39338)

(declare-fun e!675551 () Unit!39338)

(assert (=> b!1188017 (= lt!540390 e!675551)))

(declare-fun c!117239 () Bool)

(assert (=> b!1188017 (= c!117239 (= (select (arr!37005 _keys!1208) from!1455) k!934))))

(declare-fun e!675542 () Bool)

(assert (=> b!1188017 e!675542))

(declare-fun res!789964 () Bool)

(assert (=> b!1188017 (=> (not res!789964) (not e!675542))))

(declare-fun lt!540392 () ListLongMap!17425)

(assert (=> b!1188017 (= res!789964 (= lt!540392 lt!540393))))

(assert (=> b!1188017 (= lt!540393 (+!3930 lt!540387 lt!540381))))

(assert (=> b!1188017 (= lt!540381 (tuple2!19445 (select (arr!37005 _keys!1208) from!1455) lt!540389))))

(declare-fun lt!540396 () V!45093)

(declare-datatypes ((ValueCell!14278 0))(
  ( (ValueCellFull!14278 (v!17683 V!45093)) (EmptyCell!14278) )
))
(declare-datatypes ((array!76720 0))(
  ( (array!76721 (arr!37006 (Array (_ BitVec 32) ValueCell!14278)) (size!37543 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76720)

(declare-fun get!19000 (ValueCell!14278 V!45093) V!45093)

(assert (=> b!1188017 (= lt!540389 (get!19000 (select (arr!37006 _values!996) from!1455) lt!540396))))

(declare-fun b!1188019 () Bool)

(declare-fun e!675550 () Bool)

(declare-fun e!675553 () Bool)

(assert (=> b!1188019 (= e!675550 (not e!675553))))

(declare-fun res!789970 () Bool)

(assert (=> b!1188019 (=> res!789970 e!675553)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188019 (= res!789970 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188019 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!540391 () Unit!39338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76718 (_ BitVec 64) (_ BitVec 32)) Unit!39338)

(assert (=> b!1188019 (= lt!540391 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188020 () Bool)

(declare-fun res!789965 () Bool)

(declare-fun e!675549 () Bool)

(assert (=> b!1188020 (=> (not res!789965) (not e!675549))))

(assert (=> b!1188020 (= res!789965 (= (select (arr!37005 _keys!1208) i!673) k!934))))

(declare-fun b!1188021 () Bool)

(declare-fun res!789963 () Bool)

(assert (=> b!1188021 (=> (not res!789963) (not e!675550))))

(declare-fun lt!540388 () array!76718)

(declare-datatypes ((List!26205 0))(
  ( (Nil!26202) (Cons!26201 (h!27410 (_ BitVec 64)) (t!38649 List!26205)) )
))
(declare-fun arrayNoDuplicates!0 (array!76718 (_ BitVec 32) List!26205) Bool)

(assert (=> b!1188021 (= res!789963 (arrayNoDuplicates!0 lt!540388 #b00000000000000000000000000000000 Nil!26202))))

(declare-fun b!1188022 () Bool)

(declare-fun res!789969 () Bool)

(assert (=> b!1188022 (=> (not res!789969) (not e!675549))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1188022 (= res!789969 (and (= (size!37543 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37542 _keys!1208) (size!37543 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46790 () Bool)

(declare-fun mapRes!46790 () Bool)

(assert (=> mapIsEmpty!46790 mapRes!46790))

(declare-fun b!1188023 () Bool)

(declare-fun res!789959 () Bool)

(assert (=> b!1188023 (=> (not res!789959) (not e!675549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76718 (_ BitVec 32)) Bool)

(assert (=> b!1188023 (= res!789959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188024 () Bool)

(declare-fun res!789961 () Bool)

(assert (=> b!1188024 (=> (not res!789961) (not e!675549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188024 (= res!789961 (validKeyInArray!0 k!934))))

(declare-fun b!1188025 () Bool)

(declare-fun Unit!39340 () Unit!39338)

(assert (=> b!1188025 (= e!675551 Unit!39340)))

(declare-fun lt!540398 () Unit!39338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39338)

(assert (=> b!1188025 (= lt!540398 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1188025 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!540386 () Unit!39338)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76718 (_ BitVec 32) (_ BitVec 32)) Unit!39338)

(assert (=> b!1188025 (= lt!540386 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1188025 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26202)))

(declare-fun lt!540385 () Unit!39338)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76718 (_ BitVec 64) (_ BitVec 32) List!26205) Unit!39338)

(assert (=> b!1188025 (= lt!540385 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26202))))

(assert (=> b!1188025 false))

(declare-fun b!1188026 () Bool)

(assert (=> b!1188026 (= e!675549 e!675550)))

(declare-fun res!789960 () Bool)

(assert (=> b!1188026 (=> (not res!789960) (not e!675550))))

(assert (=> b!1188026 (= res!789960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540388 mask!1564))))

(assert (=> b!1188026 (= lt!540388 (array!76719 (store (arr!37005 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37542 _keys!1208)))))

(declare-fun b!1188027 () Bool)

(declare-fun e!675548 () Bool)

(declare-fun e!675543 () Bool)

(assert (=> b!1188027 (= e!675548 (and e!675543 mapRes!46790))))

(declare-fun condMapEmpty!46790 () Bool)

(declare-fun mapDefault!46790 () ValueCell!14278)

