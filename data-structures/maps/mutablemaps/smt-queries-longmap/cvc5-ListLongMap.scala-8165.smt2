; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99892 () Bool)

(assert start!99892)

(declare-fun b_free!25435 () Bool)

(declare-fun b_next!25435 () Bool)

(assert (=> start!99892 (= b_free!25435 (not b_next!25435))))

(declare-fun tp!89020 () Bool)

(declare-fun b_and!41751 () Bool)

(assert (=> start!99892 (= tp!89020 b_and!41751)))

(declare-fun mapNonEmpty!46775 () Bool)

(declare-fun mapRes!46775 () Bool)

(declare-fun tp!89019 () Bool)

(declare-fun e!675367 () Bool)

(assert (=> mapNonEmpty!46775 (= mapRes!46775 (and tp!89019 e!675367))))

(declare-fun mapKey!46775 () (_ BitVec 32))

(declare-datatypes ((V!45081 0))(
  ( (V!45082 (val!15039 Int)) )
))
(declare-datatypes ((ValueCell!14273 0))(
  ( (ValueCellFull!14273 (v!17678 V!45081)) (EmptyCell!14273) )
))
(declare-fun mapValue!46775 () ValueCell!14273)

(declare-fun mapRest!46775 () (Array (_ BitVec 32) ValueCell!14273))

(declare-datatypes ((array!76698 0))(
  ( (array!76699 (arr!36995 (Array (_ BitVec 32) ValueCell!14273)) (size!37532 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76698)

(assert (=> mapNonEmpty!46775 (= (arr!36995 _values!996) (store mapRest!46775 mapKey!46775 mapValue!46775))))

(declare-fun b!1187707 () Bool)

(declare-fun e!675373 () Bool)

(declare-fun e!675368 () Bool)

(assert (=> b!1187707 (= e!675373 (not e!675368))))

(declare-fun res!789744 () Bool)

(assert (=> b!1187707 (=> res!789744 e!675368)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1187707 (= res!789744 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76700 0))(
  ( (array!76701 (arr!36996 (Array (_ BitVec 32) (_ BitVec 64))) (size!37533 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76700)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187707 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39322 0))(
  ( (Unit!39323) )
))
(declare-fun lt!540110 () Unit!39322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76700 (_ BitVec 64) (_ BitVec 32)) Unit!39322)

(assert (=> b!1187707 (= lt!540110 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187708 () Bool)

(declare-fun e!675362 () Bool)

(assert (=> b!1187708 (= e!675362 e!675373)))

(declare-fun res!789745 () Bool)

(assert (=> b!1187708 (=> (not res!789745) (not e!675373))))

(declare-fun lt!540098 () array!76700)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76700 (_ BitVec 32)) Bool)

(assert (=> b!1187708 (= res!789745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540098 mask!1564))))

(assert (=> b!1187708 (= lt!540098 (array!76701 (store (arr!36996 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37533 _keys!1208)))))

(declare-fun b!1187709 () Bool)

(declare-fun tp_is_empty!29965 () Bool)

(assert (=> b!1187709 (= e!675367 tp_is_empty!29965)))

(declare-fun b!1187710 () Bool)

(declare-fun res!789739 () Bool)

(assert (=> b!1187710 (=> (not res!789739) (not e!675362))))

(declare-datatypes ((List!26194 0))(
  ( (Nil!26191) (Cons!26190 (h!27399 (_ BitVec 64)) (t!38628 List!26194)) )
))
(declare-fun arrayNoDuplicates!0 (array!76700 (_ BitVec 32) List!26194) Bool)

(assert (=> b!1187710 (= res!789739 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26191))))

(declare-fun b!1187711 () Bool)

(declare-fun res!789743 () Bool)

(assert (=> b!1187711 (=> (not res!789743) (not e!675362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187711 (= res!789743 (validKeyInArray!0 k!934))))

(declare-fun b!1187712 () Bool)

(declare-fun e!675364 () Bool)

(assert (=> b!1187712 (= e!675364 true)))

(declare-datatypes ((tuple2!19434 0))(
  ( (tuple2!19435 (_1!9727 (_ BitVec 64)) (_2!9727 V!45081)) )
))
(declare-datatypes ((List!26195 0))(
  ( (Nil!26192) (Cons!26191 (h!27400 tuple2!19434) (t!38629 List!26195)) )
))
(declare-datatypes ((ListLongMap!17415 0))(
  ( (ListLongMap!17416 (toList!8723 List!26195)) )
))
(declare-fun lt!540114 () ListLongMap!17415)

(declare-fun lt!540102 () ListLongMap!17415)

(declare-fun -!1708 (ListLongMap!17415 (_ BitVec 64)) ListLongMap!17415)

(assert (=> b!1187712 (= (-!1708 lt!540114 k!934) lt!540102)))

(declare-fun lt!540112 () Unit!39322)

(declare-fun lt!540099 () ListLongMap!17415)

(declare-fun lt!540097 () V!45081)

(declare-fun addRemoveCommutativeForDiffKeys!215 (ListLongMap!17415 (_ BitVec 64) V!45081 (_ BitVec 64)) Unit!39322)

(assert (=> b!1187712 (= lt!540112 (addRemoveCommutativeForDiffKeys!215 lt!540099 (select (arr!36996 _keys!1208) from!1455) lt!540097 k!934))))

(declare-fun lt!540111 () ListLongMap!17415)

(declare-fun lt!540105 () ListLongMap!17415)

(declare-fun lt!540106 () ListLongMap!17415)

(assert (=> b!1187712 (and (= lt!540111 lt!540114) (= lt!540105 lt!540106))))

(declare-fun lt!540113 () tuple2!19434)

(declare-fun +!3925 (ListLongMap!17415 tuple2!19434) ListLongMap!17415)

(assert (=> b!1187712 (= lt!540114 (+!3925 lt!540099 lt!540113))))

(assert (=> b!1187712 (not (= (select (arr!36996 _keys!1208) from!1455) k!934))))

(declare-fun lt!540108 () Unit!39322)

(declare-fun e!675365 () Unit!39322)

(assert (=> b!1187712 (= lt!540108 e!675365)))

(declare-fun c!117224 () Bool)

(assert (=> b!1187712 (= c!117224 (= (select (arr!36996 _keys!1208) from!1455) k!934))))

(declare-fun e!675370 () Bool)

(assert (=> b!1187712 e!675370))

(declare-fun res!789742 () Bool)

(assert (=> b!1187712 (=> (not res!789742) (not e!675370))))

(declare-fun lt!540107 () ListLongMap!17415)

(assert (=> b!1187712 (= res!789742 (= lt!540107 lt!540102))))

(assert (=> b!1187712 (= lt!540102 (+!3925 lt!540105 lt!540113))))

(assert (=> b!1187712 (= lt!540113 (tuple2!19435 (select (arr!36996 _keys!1208) from!1455) lt!540097))))

(declare-fun lt!540096 () V!45081)

(declare-fun get!18993 (ValueCell!14273 V!45081) V!45081)

(assert (=> b!1187712 (= lt!540097 (get!18993 (select (arr!36995 _values!996) from!1455) lt!540096))))

(declare-fun b!1187713 () Bool)

(declare-fun res!789737 () Bool)

(assert (=> b!1187713 (=> (not res!789737) (not e!675362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187713 (= res!789737 (validMask!0 mask!1564))))

(declare-fun b!1187714 () Bool)

(declare-fun e!675366 () Bool)

(assert (=> b!1187714 (= e!675366 tp_is_empty!29965)))

(declare-fun mapIsEmpty!46775 () Bool)

(assert (=> mapIsEmpty!46775 mapRes!46775))

(declare-fun b!1187715 () Bool)

(declare-fun Unit!39324 () Unit!39322)

(assert (=> b!1187715 (= e!675365 Unit!39324)))

(declare-fun b!1187717 () Bool)

(declare-fun res!789736 () Bool)

(assert (=> b!1187717 (=> (not res!789736) (not e!675373))))

(assert (=> b!1187717 (= res!789736 (arrayNoDuplicates!0 lt!540098 #b00000000000000000000000000000000 Nil!26191))))

(declare-fun b!1187718 () Bool)

(declare-fun e!675363 () Bool)

(assert (=> b!1187718 (= e!675368 e!675363)))

(declare-fun res!789746 () Bool)

(assert (=> b!1187718 (=> res!789746 e!675363)))

(assert (=> b!1187718 (= res!789746 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!540100 () array!76698)

(declare-fun minValue!944 () V!45081)

(declare-fun zeroValue!944 () V!45081)

(declare-fun getCurrentListMapNoExtraKeys!5138 (array!76700 array!76698 (_ BitVec 32) (_ BitVec 32) V!45081 V!45081 (_ BitVec 32) Int) ListLongMap!17415)

(assert (=> b!1187718 (= lt!540107 (getCurrentListMapNoExtraKeys!5138 lt!540098 lt!540100 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1187718 (= lt!540100 (array!76699 (store (arr!36995 _values!996) i!673 (ValueCellFull!14273 lt!540096)) (size!37532 _values!996)))))

(declare-fun dynLambda!3095 (Int (_ BitVec 64)) V!45081)

(assert (=> b!1187718 (= lt!540096 (dynLambda!3095 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1187718 (= lt!540111 (getCurrentListMapNoExtraKeys!5138 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187719 () Bool)

(declare-fun res!789738 () Bool)

(assert (=> b!1187719 (=> (not res!789738) (not e!675362))))

(assert (=> b!1187719 (= res!789738 (and (= (size!37532 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37533 _keys!1208) (size!37532 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187720 () Bool)

(declare-fun e!675369 () Bool)

(assert (=> b!1187720 (= e!675369 (and e!675366 mapRes!46775))))

(declare-fun condMapEmpty!46775 () Bool)

(declare-fun mapDefault!46775 () ValueCell!14273)

