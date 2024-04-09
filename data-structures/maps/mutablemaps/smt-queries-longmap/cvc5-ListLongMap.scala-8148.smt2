; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99790 () Bool)

(assert start!99790)

(declare-fun b_free!25333 () Bool)

(declare-fun b_next!25333 () Bool)

(assert (=> start!99790 (= b_free!25333 (not b_next!25333))))

(declare-fun tp!88714 () Bool)

(declare-fun b_and!41547 () Bool)

(assert (=> start!99790 (= tp!88714 b_and!41547)))

(declare-fun b!1184545 () Bool)

(declare-fun res!787444 () Bool)

(declare-fun e!673527 () Bool)

(assert (=> b!1184545 (=> (not res!787444) (not e!673527))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184545 (= res!787444 (validKeyInArray!0 k!934))))

(declare-fun b!1184546 () Bool)

(declare-fun e!673529 () Bool)

(declare-fun e!673537 () Bool)

(assert (=> b!1184546 (= e!673529 (not e!673537))))

(declare-fun res!787440 () Bool)

(assert (=> b!1184546 (=> res!787440 e!673537)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184546 (= res!787440 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76494 0))(
  ( (array!76495 (arr!36893 (Array (_ BitVec 32) (_ BitVec 64))) (size!37430 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76494)

(declare-fun arrayContainsKey!0 (array!76494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184546 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39149 0))(
  ( (Unit!39150) )
))
(declare-fun lt!537206 () Unit!39149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76494 (_ BitVec 64) (_ BitVec 32)) Unit!39149)

(assert (=> b!1184546 (= lt!537206 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184547 () Bool)

(declare-fun e!673534 () Bool)

(assert (=> b!1184547 (= e!673534 true)))

(declare-datatypes ((V!44945 0))(
  ( (V!44946 (val!14988 Int)) )
))
(declare-datatypes ((tuple2!19340 0))(
  ( (tuple2!19341 (_1!9680 (_ BitVec 64)) (_2!9680 V!44945)) )
))
(declare-datatypes ((List!26103 0))(
  ( (Nil!26100) (Cons!26099 (h!27308 tuple2!19340) (t!38435 List!26103)) )
))
(declare-datatypes ((ListLongMap!17321 0))(
  ( (ListLongMap!17322 (toList!8676 List!26103)) )
))
(declare-fun lt!537200 () ListLongMap!17321)

(declare-fun lt!537195 () ListLongMap!17321)

(declare-fun -!1663 (ListLongMap!17321 (_ BitVec 64)) ListLongMap!17321)

(assert (=> b!1184547 (= (-!1663 lt!537200 k!934) lt!537195)))

(declare-fun lt!537207 () ListLongMap!17321)

(declare-fun lt!537203 () Unit!39149)

(declare-fun lt!537205 () V!44945)

(declare-fun addRemoveCommutativeForDiffKeys!176 (ListLongMap!17321 (_ BitVec 64) V!44945 (_ BitVec 64)) Unit!39149)

(assert (=> b!1184547 (= lt!537203 (addRemoveCommutativeForDiffKeys!176 lt!537207 (select (arr!36893 _keys!1208) from!1455) lt!537205 k!934))))

(declare-fun lt!537191 () ListLongMap!17321)

(declare-fun lt!537194 () ListLongMap!17321)

(declare-fun lt!537202 () ListLongMap!17321)

(assert (=> b!1184547 (and (= lt!537194 lt!537200) (= lt!537191 lt!537202))))

(declare-fun lt!537198 () tuple2!19340)

(declare-fun +!3886 (ListLongMap!17321 tuple2!19340) ListLongMap!17321)

(assert (=> b!1184547 (= lt!537200 (+!3886 lt!537207 lt!537198))))

(assert (=> b!1184547 (not (= (select (arr!36893 _keys!1208) from!1455) k!934))))

(declare-fun lt!537192 () Unit!39149)

(declare-fun e!673531 () Unit!39149)

(assert (=> b!1184547 (= lt!537192 e!673531)))

(declare-fun c!117071 () Bool)

(assert (=> b!1184547 (= c!117071 (= (select (arr!36893 _keys!1208) from!1455) k!934))))

(declare-fun e!673528 () Bool)

(assert (=> b!1184547 e!673528))

(declare-fun res!787448 () Bool)

(assert (=> b!1184547 (=> (not res!787448) (not e!673528))))

(declare-fun lt!537201 () ListLongMap!17321)

(assert (=> b!1184547 (= res!787448 (= lt!537201 lt!537195))))

(assert (=> b!1184547 (= lt!537195 (+!3886 lt!537191 lt!537198))))

(assert (=> b!1184547 (= lt!537198 (tuple2!19341 (select (arr!36893 _keys!1208) from!1455) lt!537205))))

(declare-fun lt!537196 () V!44945)

(declare-datatypes ((ValueCell!14222 0))(
  ( (ValueCellFull!14222 (v!17627 V!44945)) (EmptyCell!14222) )
))
(declare-datatypes ((array!76496 0))(
  ( (array!76497 (arr!36894 (Array (_ BitVec 32) ValueCell!14222)) (size!37431 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76496)

(declare-fun get!18920 (ValueCell!14222 V!44945) V!44945)

(assert (=> b!1184547 (= lt!537205 (get!18920 (select (arr!36894 _values!996) from!1455) lt!537196))))

(declare-fun b!1184548 () Bool)

(declare-fun Unit!39151 () Unit!39149)

(assert (=> b!1184548 (= e!673531 Unit!39151)))

(declare-fun b!1184549 () Bool)

(assert (=> b!1184549 (= e!673527 e!673529)))

(declare-fun res!787439 () Bool)

(assert (=> b!1184549 (=> (not res!787439) (not e!673529))))

(declare-fun lt!537190 () array!76494)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76494 (_ BitVec 32)) Bool)

(assert (=> b!1184549 (= res!787439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537190 mask!1564))))

(assert (=> b!1184549 (= lt!537190 (array!76495 (store (arr!36893 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37430 _keys!1208)))))

(declare-fun b!1184550 () Bool)

(declare-fun res!787441 () Bool)

(assert (=> b!1184550 (=> (not res!787441) (not e!673527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184550 (= res!787441 (validMask!0 mask!1564))))

(declare-fun b!1184551 () Bool)

(declare-fun res!787452 () Bool)

(assert (=> b!1184551 (=> (not res!787452) (not e!673527))))

(assert (=> b!1184551 (= res!787452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184552 () Bool)

(declare-fun e!673526 () Bool)

(assert (=> b!1184552 (= e!673528 e!673526)))

(declare-fun res!787442 () Bool)

(assert (=> b!1184552 (=> res!787442 e!673526)))

(assert (=> b!1184552 (= res!787442 (not (= (select (arr!36893 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184553 () Bool)

(declare-fun res!787445 () Bool)

(assert (=> b!1184553 (=> (not res!787445) (not e!673527))))

(assert (=> b!1184553 (= res!787445 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37430 _keys!1208))))))

(declare-fun b!1184554 () Bool)

(declare-fun e!673532 () Bool)

(assert (=> b!1184554 (= e!673537 e!673532)))

(declare-fun res!787453 () Bool)

(assert (=> b!1184554 (=> res!787453 e!673532)))

(assert (=> b!1184554 (= res!787453 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44945)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44945)

(declare-fun lt!537197 () array!76496)

(declare-fun getCurrentListMapNoExtraKeys!5096 (array!76494 array!76496 (_ BitVec 32) (_ BitVec 32) V!44945 V!44945 (_ BitVec 32) Int) ListLongMap!17321)

(assert (=> b!1184554 (= lt!537201 (getCurrentListMapNoExtraKeys!5096 lt!537190 lt!537197 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184554 (= lt!537197 (array!76497 (store (arr!36894 _values!996) i!673 (ValueCellFull!14222 lt!537196)) (size!37431 _values!996)))))

(declare-fun dynLambda!3060 (Int (_ BitVec 64)) V!44945)

(assert (=> b!1184554 (= lt!537196 (dynLambda!3060 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184554 (= lt!537194 (getCurrentListMapNoExtraKeys!5096 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184555 () Bool)

(declare-fun res!787449 () Bool)

(assert (=> b!1184555 (=> (not res!787449) (not e!673527))))

(assert (=> b!1184555 (= res!787449 (= (select (arr!36893 _keys!1208) i!673) k!934))))

(declare-fun b!1184556 () Bool)

(assert (=> b!1184556 (= e!673526 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184557 () Bool)

(declare-fun e!673536 () Bool)

(declare-fun tp_is_empty!29863 () Bool)

(assert (=> b!1184557 (= e!673536 tp_is_empty!29863)))

(declare-fun b!1184558 () Bool)

(declare-fun Unit!39152 () Unit!39149)

(assert (=> b!1184558 (= e!673531 Unit!39152)))

(declare-fun lt!537189 () Unit!39149)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39149)

(assert (=> b!1184558 (= lt!537189 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184558 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537199 () Unit!39149)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76494 (_ BitVec 32) (_ BitVec 32)) Unit!39149)

(assert (=> b!1184558 (= lt!537199 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26104 0))(
  ( (Nil!26101) (Cons!26100 (h!27309 (_ BitVec 64)) (t!38436 List!26104)) )
))
(declare-fun arrayNoDuplicates!0 (array!76494 (_ BitVec 32) List!26104) Bool)

(assert (=> b!1184558 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26101)))

(declare-fun lt!537204 () Unit!39149)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76494 (_ BitVec 64) (_ BitVec 32) List!26104) Unit!39149)

(assert (=> b!1184558 (= lt!537204 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26101))))

(assert (=> b!1184558 false))

(declare-fun b!1184559 () Bool)

(declare-fun res!787443 () Bool)

(assert (=> b!1184559 (=> (not res!787443) (not e!673529))))

(assert (=> b!1184559 (= res!787443 (arrayNoDuplicates!0 lt!537190 #b00000000000000000000000000000000 Nil!26101))))

(declare-fun b!1184560 () Bool)

(declare-fun res!787447 () Bool)

(assert (=> b!1184560 (=> (not res!787447) (not e!673527))))

(assert (=> b!1184560 (= res!787447 (and (= (size!37431 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37430 _keys!1208) (size!37431 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46622 () Bool)

(declare-fun mapRes!46622 () Bool)

(declare-fun tp!88713 () Bool)

(assert (=> mapNonEmpty!46622 (= mapRes!46622 (and tp!88713 e!673536))))

(declare-fun mapKey!46622 () (_ BitVec 32))

(declare-fun mapValue!46622 () ValueCell!14222)

(declare-fun mapRest!46622 () (Array (_ BitVec 32) ValueCell!14222))

(assert (=> mapNonEmpty!46622 (= (arr!36894 _values!996) (store mapRest!46622 mapKey!46622 mapValue!46622))))

(declare-fun res!787451 () Bool)

(assert (=> start!99790 (=> (not res!787451) (not e!673527))))

(assert (=> start!99790 (= res!787451 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37430 _keys!1208))))))

(assert (=> start!99790 e!673527))

(assert (=> start!99790 tp_is_empty!29863))

(declare-fun array_inv!28036 (array!76494) Bool)

(assert (=> start!99790 (array_inv!28036 _keys!1208)))

(assert (=> start!99790 true))

(assert (=> start!99790 tp!88714))

(declare-fun e!673535 () Bool)

(declare-fun array_inv!28037 (array!76496) Bool)

(assert (=> start!99790 (and (array_inv!28037 _values!996) e!673535)))

(declare-fun mapIsEmpty!46622 () Bool)

(assert (=> mapIsEmpty!46622 mapRes!46622))

(declare-fun b!1184561 () Bool)

(assert (=> b!1184561 (= e!673532 e!673534)))

(declare-fun res!787446 () Bool)

(assert (=> b!1184561 (=> res!787446 e!673534)))

(assert (=> b!1184561 (= res!787446 (not (validKeyInArray!0 (select (arr!36893 _keys!1208) from!1455))))))

(assert (=> b!1184561 (= lt!537202 lt!537191)))

(assert (=> b!1184561 (= lt!537191 (-!1663 lt!537207 k!934))))

(assert (=> b!1184561 (= lt!537202 (getCurrentListMapNoExtraKeys!5096 lt!537190 lt!537197 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184561 (= lt!537207 (getCurrentListMapNoExtraKeys!5096 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537193 () Unit!39149)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!879 (array!76494 array!76496 (_ BitVec 32) (_ BitVec 32) V!44945 V!44945 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39149)

(assert (=> b!1184561 (= lt!537193 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!879 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184562 () Bool)

(declare-fun res!787450 () Bool)

(assert (=> b!1184562 (=> (not res!787450) (not e!673527))))

(assert (=> b!1184562 (= res!787450 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26101))))

(declare-fun b!1184563 () Bool)

(declare-fun e!673530 () Bool)

(assert (=> b!1184563 (= e!673530 tp_is_empty!29863)))

(declare-fun b!1184564 () Bool)

(assert (=> b!1184564 (= e!673535 (and e!673530 mapRes!46622))))

(declare-fun condMapEmpty!46622 () Bool)

(declare-fun mapDefault!46622 () ValueCell!14222)

