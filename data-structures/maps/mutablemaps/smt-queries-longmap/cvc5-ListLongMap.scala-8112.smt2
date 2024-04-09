; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99574 () Bool)

(assert start!99574)

(declare-fun b_free!25117 () Bool)

(declare-fun b_next!25117 () Bool)

(assert (=> start!99574 (= b_free!25117 (not b_next!25117))))

(declare-fun tp!88065 () Bool)

(declare-fun b_and!41115 () Bool)

(assert (=> start!99574 (= tp!88065 b_and!41115)))

(declare-fun mapNonEmpty!46298 () Bool)

(declare-fun mapRes!46298 () Bool)

(declare-fun tp!88066 () Bool)

(declare-fun e!669463 () Bool)

(assert (=> mapNonEmpty!46298 (= mapRes!46298 (and tp!88066 e!669463))))

(declare-datatypes ((V!44657 0))(
  ( (V!44658 (val!14880 Int)) )
))
(declare-datatypes ((ValueCell!14114 0))(
  ( (ValueCellFull!14114 (v!17519 V!44657)) (EmptyCell!14114) )
))
(declare-fun mapValue!46298 () ValueCell!14114)

(declare-fun mapKey!46298 () (_ BitVec 32))

(declare-datatypes ((array!76068 0))(
  ( (array!76069 (arr!36680 (Array (_ BitVec 32) ValueCell!14114)) (size!37217 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76068)

(declare-fun mapRest!46298 () (Array (_ BitVec 32) ValueCell!14114))

(assert (=> mapNonEmpty!46298 (= (arr!36680 _values!996) (store mapRest!46298 mapKey!46298 mapValue!46298))))

(declare-fun b!1177581 () Bool)

(declare-datatypes ((Unit!38826 0))(
  ( (Unit!38827) )
))
(declare-fun e!669470 () Unit!38826)

(declare-fun Unit!38828 () Unit!38826)

(assert (=> b!1177581 (= e!669470 Unit!38828)))

(declare-fun b!1177582 () Bool)

(declare-fun e!669464 () Bool)

(declare-fun e!669465 () Bool)

(assert (=> b!1177582 (= e!669464 e!669465)))

(declare-fun res!782314 () Bool)

(assert (=> b!1177582 (=> (not res!782314) (not e!669465))))

(declare-datatypes ((array!76070 0))(
  ( (array!76071 (arr!36681 (Array (_ BitVec 32) (_ BitVec 64))) (size!37218 (_ BitVec 32))) )
))
(declare-fun lt!531745 () array!76070)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76070 (_ BitVec 32)) Bool)

(assert (=> b!1177582 (= res!782314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531745 mask!1564))))

(declare-fun _keys!1208 () array!76070)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177582 (= lt!531745 (array!76071 (store (arr!36681 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37218 _keys!1208)))))

(declare-fun b!1177583 () Bool)

(declare-fun res!782325 () Bool)

(assert (=> b!1177583 (=> (not res!782325) (not e!669465))))

(declare-datatypes ((List!25922 0))(
  ( (Nil!25919) (Cons!25918 (h!27127 (_ BitVec 64)) (t!38038 List!25922)) )
))
(declare-fun arrayNoDuplicates!0 (array!76070 (_ BitVec 32) List!25922) Bool)

(assert (=> b!1177583 (= res!782325 (arrayNoDuplicates!0 lt!531745 #b00000000000000000000000000000000 Nil!25919))))

(declare-fun b!1177584 () Bool)

(declare-fun tp_is_empty!29647 () Bool)

(assert (=> b!1177584 (= e!669463 tp_is_empty!29647)))

(declare-fun b!1177585 () Bool)

(declare-fun e!669468 () Bool)

(assert (=> b!1177585 (= e!669465 (not e!669468))))

(declare-fun res!782324 () Bool)

(assert (=> b!1177585 (=> res!782324 e!669468)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1177585 (= res!782324 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177585 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531749 () Unit!38826)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76070 (_ BitVec 64) (_ BitVec 32)) Unit!38826)

(assert (=> b!1177585 (= lt!531749 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177586 () Bool)

(declare-fun Unit!38829 () Unit!38826)

(assert (=> b!1177586 (= e!669470 Unit!38829)))

(declare-fun lt!531753 () Unit!38826)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76070 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38826)

(assert (=> b!1177586 (= lt!531753 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177586 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531756 () Unit!38826)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76070 (_ BitVec 32) (_ BitVec 32)) Unit!38826)

(assert (=> b!1177586 (= lt!531756 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177586 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25919)))

(declare-fun lt!531748 () Unit!38826)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76070 (_ BitVec 64) (_ BitVec 32) List!25922) Unit!38826)

(assert (=> b!1177586 (= lt!531748 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25919))))

(assert (=> b!1177586 false))

(declare-datatypes ((tuple2!19156 0))(
  ( (tuple2!19157 (_1!9588 (_ BitVec 64)) (_2!9588 V!44657)) )
))
(declare-datatypes ((List!25923 0))(
  ( (Nil!25920) (Cons!25919 (h!27128 tuple2!19156) (t!38039 List!25923)) )
))
(declare-datatypes ((ListLongMap!17137 0))(
  ( (ListLongMap!17138 (toList!8584 List!25923)) )
))
(declare-fun lt!531747 () ListLongMap!17137)

(declare-fun b!1177587 () Bool)

(declare-fun e!669462 () Bool)

(declare-fun lt!531750 () tuple2!19156)

(declare-fun lt!531755 () ListLongMap!17137)

(declare-fun +!3807 (ListLongMap!17137 tuple2!19156) ListLongMap!17137)

(assert (=> b!1177587 (= e!669462 (= lt!531747 (+!3807 lt!531755 lt!531750)))))

(declare-fun b!1177588 () Bool)

(declare-fun e!669467 () Bool)

(assert (=> b!1177588 (= e!669467 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37218 _keys!1208))))))

(assert (=> b!1177588 e!669462))

(declare-fun res!782323 () Bool)

(assert (=> b!1177588 (=> (not res!782323) (not e!669462))))

(assert (=> b!1177588 (= res!782323 (not (= (select (arr!36681 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531759 () Unit!38826)

(assert (=> b!1177588 (= lt!531759 e!669470)))

(declare-fun c!116747 () Bool)

(assert (=> b!1177588 (= c!116747 (= (select (arr!36681 _keys!1208) from!1455) k!934))))

(declare-fun e!669469 () Bool)

(assert (=> b!1177588 e!669469))

(declare-fun res!782311 () Bool)

(assert (=> b!1177588 (=> (not res!782311) (not e!669469))))

(declare-fun lt!531752 () ListLongMap!17137)

(declare-fun lt!531758 () ListLongMap!17137)

(assert (=> b!1177588 (= res!782311 (= lt!531752 (+!3807 lt!531758 lt!531750)))))

(declare-fun lt!531757 () V!44657)

(declare-fun get!18778 (ValueCell!14114 V!44657) V!44657)

(assert (=> b!1177588 (= lt!531750 (tuple2!19157 (select (arr!36681 _keys!1208) from!1455) (get!18778 (select (arr!36680 _values!996) from!1455) lt!531757)))))

(declare-fun b!1177589 () Bool)

(declare-fun res!782319 () Bool)

(assert (=> b!1177589 (=> (not res!782319) (not e!669464))))

(assert (=> b!1177589 (= res!782319 (= (select (arr!36681 _keys!1208) i!673) k!934))))

(declare-fun e!669461 () Bool)

(declare-fun b!1177590 () Bool)

(assert (=> b!1177590 (= e!669461 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177592 () Bool)

(declare-fun res!782315 () Bool)

(assert (=> b!1177592 (=> (not res!782315) (not e!669464))))

(assert (=> b!1177592 (= res!782315 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25919))))

(declare-fun mapIsEmpty!46298 () Bool)

(assert (=> mapIsEmpty!46298 mapRes!46298))

(declare-fun b!1177593 () Bool)

(declare-fun res!782318 () Bool)

(assert (=> b!1177593 (=> (not res!782318) (not e!669464))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1177593 (= res!782318 (and (= (size!37217 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37218 _keys!1208) (size!37217 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177594 () Bool)

(declare-fun res!782316 () Bool)

(assert (=> b!1177594 (=> (not res!782316) (not e!669464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177594 (= res!782316 (validKeyInArray!0 k!934))))

(declare-fun b!1177595 () Bool)

(declare-fun e!669466 () Bool)

(assert (=> b!1177595 (= e!669466 tp_is_empty!29647)))

(declare-fun b!1177596 () Bool)

(declare-fun res!782322 () Bool)

(assert (=> b!1177596 (=> (not res!782322) (not e!669464))))

(assert (=> b!1177596 (= res!782322 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37218 _keys!1208))))))

(declare-fun b!1177597 () Bool)

(declare-fun res!782312 () Bool)

(assert (=> b!1177597 (=> (not res!782312) (not e!669464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177597 (= res!782312 (validMask!0 mask!1564))))

(declare-fun b!1177598 () Bool)

(declare-fun e!669460 () Bool)

(assert (=> b!1177598 (= e!669460 e!669467)))

(declare-fun res!782320 () Bool)

(assert (=> b!1177598 (=> res!782320 e!669467)))

(assert (=> b!1177598 (= res!782320 (not (validKeyInArray!0 (select (arr!36681 _keys!1208) from!1455))))))

(declare-fun lt!531746 () ListLongMap!17137)

(assert (=> b!1177598 (= lt!531746 lt!531758)))

(declare-fun -!1585 (ListLongMap!17137 (_ BitVec 64)) ListLongMap!17137)

(assert (=> b!1177598 (= lt!531758 (-!1585 lt!531755 k!934))))

(declare-fun zeroValue!944 () V!44657)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531754 () array!76068)

(declare-fun minValue!944 () V!44657)

(declare-fun getCurrentListMapNoExtraKeys!5015 (array!76070 array!76068 (_ BitVec 32) (_ BitVec 32) V!44657 V!44657 (_ BitVec 32) Int) ListLongMap!17137)

(assert (=> b!1177598 (= lt!531746 (getCurrentListMapNoExtraKeys!5015 lt!531745 lt!531754 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177598 (= lt!531755 (getCurrentListMapNoExtraKeys!5015 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531751 () Unit!38826)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!809 (array!76070 array!76068 (_ BitVec 32) (_ BitVec 32) V!44657 V!44657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38826)

(assert (=> b!1177598 (= lt!531751 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177599 () Bool)

(declare-fun e!669472 () Bool)

(assert (=> b!1177599 (= e!669472 (and e!669466 mapRes!46298))))

(declare-fun condMapEmpty!46298 () Bool)

(declare-fun mapDefault!46298 () ValueCell!14114)

