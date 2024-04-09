; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99228 () Bool)

(assert start!99228)

(declare-fun b_free!24797 () Bool)

(declare-fun b_next!24797 () Bool)

(assert (=> start!99228 (= b_free!24797 (not b_next!24797))))

(declare-fun tp!87102 () Bool)

(declare-fun b_and!40457 () Bool)

(assert (=> start!99228 (= tp!87102 b_and!40457)))

(declare-fun b!1167719 () Bool)

(declare-fun res!774772 () Bool)

(declare-fun e!663730 () Bool)

(assert (=> b!1167719 (=> (not res!774772) (not e!663730))))

(declare-datatypes ((array!75432 0))(
  ( (array!75433 (arr!36363 (Array (_ BitVec 32) (_ BitVec 64))) (size!36900 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75432)

(declare-datatypes ((List!25640 0))(
  ( (Nil!25637) (Cons!25636 (h!26845 (_ BitVec 64)) (t!37436 List!25640)) )
))
(declare-fun arrayNoDuplicates!0 (array!75432 (_ BitVec 32) List!25640) Bool)

(assert (=> b!1167719 (= res!774772 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25637))))

(declare-fun b!1167720 () Bool)

(declare-fun res!774774 () Bool)

(declare-fun e!663725 () Bool)

(assert (=> b!1167720 (=> (not res!774774) (not e!663725))))

(declare-fun lt!525713 () array!75432)

(assert (=> b!1167720 (= res!774774 (arrayNoDuplicates!0 lt!525713 #b00000000000000000000000000000000 Nil!25637))))

(declare-fun b!1167721 () Bool)

(declare-fun res!774767 () Bool)

(assert (=> b!1167721 (=> (not res!774767) (not e!663730))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75432 (_ BitVec 32)) Bool)

(assert (=> b!1167721 (= res!774767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167722 () Bool)

(declare-fun e!663726 () Bool)

(declare-fun e!663729 () Bool)

(assert (=> b!1167722 (= e!663726 e!663729)))

(declare-fun res!774770 () Bool)

(assert (=> b!1167722 (=> res!774770 e!663729)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167722 (= res!774770 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44229 0))(
  ( (V!44230 (val!14720 Int)) )
))
(declare-fun zeroValue!944 () V!44229)

(declare-datatypes ((tuple2!18864 0))(
  ( (tuple2!18865 (_1!9442 (_ BitVec 64)) (_2!9442 V!44229)) )
))
(declare-datatypes ((List!25641 0))(
  ( (Nil!25638) (Cons!25637 (h!26846 tuple2!18864) (t!37437 List!25641)) )
))
(declare-datatypes ((ListLongMap!16845 0))(
  ( (ListLongMap!16846 (toList!8438 List!25641)) )
))
(declare-fun lt!525716 () ListLongMap!16845)

(declare-datatypes ((ValueCell!13954 0))(
  ( (ValueCellFull!13954 (v!17358 V!44229)) (EmptyCell!13954) )
))
(declare-datatypes ((array!75434 0))(
  ( (array!75435 (arr!36364 (Array (_ BitVec 32) ValueCell!13954)) (size!36901 (_ BitVec 32))) )
))
(declare-fun lt!525717 () array!75434)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44229)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4871 (array!75432 array!75434 (_ BitVec 32) (_ BitVec 32) V!44229 V!44229 (_ BitVec 32) Int) ListLongMap!16845)

(assert (=> b!1167722 (= lt!525716 (getCurrentListMapNoExtraKeys!4871 lt!525713 lt!525717 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75434)

(declare-fun dynLambda!2863 (Int (_ BitVec 64)) V!44229)

(assert (=> b!1167722 (= lt!525717 (array!75435 (store (arr!36364 _values!996) i!673 (ValueCellFull!13954 (dynLambda!2863 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36901 _values!996)))))

(declare-fun lt!525712 () ListLongMap!16845)

(assert (=> b!1167722 (= lt!525712 (getCurrentListMapNoExtraKeys!4871 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1167723 () Bool)

(assert (=> b!1167723 (= e!663725 (not e!663726))))

(declare-fun res!774765 () Bool)

(assert (=> b!1167723 (=> res!774765 e!663726)))

(assert (=> b!1167723 (= res!774765 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167723 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38428 0))(
  ( (Unit!38429) )
))
(declare-fun lt!525714 () Unit!38428)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75432 (_ BitVec 64) (_ BitVec 32)) Unit!38428)

(assert (=> b!1167723 (= lt!525714 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1167724 () Bool)

(declare-fun res!774766 () Bool)

(assert (=> b!1167724 (=> (not res!774766) (not e!663730))))

(assert (=> b!1167724 (= res!774766 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36900 _keys!1208))))))

(declare-fun b!1167725 () Bool)

(declare-fun e!663732 () Bool)

(declare-fun tp_is_empty!29327 () Bool)

(assert (=> b!1167725 (= e!663732 tp_is_empty!29327)))

(declare-fun b!1167727 () Bool)

(assert (=> b!1167727 (= e!663729 true)))

(declare-fun -!1470 (ListLongMap!16845 (_ BitVec 64)) ListLongMap!16845)

(assert (=> b!1167727 (= (getCurrentListMapNoExtraKeys!4871 lt!525713 lt!525717 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1470 (getCurrentListMapNoExtraKeys!4871 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!525715 () Unit!38428)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!694 (array!75432 array!75434 (_ BitVec 32) (_ BitVec 32) V!44229 V!44229 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38428)

(assert (=> b!1167727 (= lt!525715 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!694 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45815 () Bool)

(declare-fun mapRes!45815 () Bool)

(declare-fun tp!87103 () Bool)

(declare-fun e!663728 () Bool)

(assert (=> mapNonEmpty!45815 (= mapRes!45815 (and tp!87103 e!663728))))

(declare-fun mapKey!45815 () (_ BitVec 32))

(declare-fun mapValue!45815 () ValueCell!13954)

(declare-fun mapRest!45815 () (Array (_ BitVec 32) ValueCell!13954))

(assert (=> mapNonEmpty!45815 (= (arr!36364 _values!996) (store mapRest!45815 mapKey!45815 mapValue!45815))))

(declare-fun b!1167728 () Bool)

(declare-fun res!774773 () Bool)

(assert (=> b!1167728 (=> (not res!774773) (not e!663730))))

(assert (=> b!1167728 (= res!774773 (= (select (arr!36363 _keys!1208) i!673) k!934))))

(declare-fun b!1167729 () Bool)

(declare-fun res!774776 () Bool)

(assert (=> b!1167729 (=> (not res!774776) (not e!663730))))

(assert (=> b!1167729 (= res!774776 (and (= (size!36901 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36900 _keys!1208) (size!36901 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167730 () Bool)

(declare-fun res!774771 () Bool)

(assert (=> b!1167730 (=> (not res!774771) (not e!663730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167730 (= res!774771 (validKeyInArray!0 k!934))))

(declare-fun b!1167731 () Bool)

(declare-fun res!774775 () Bool)

(assert (=> b!1167731 (=> (not res!774775) (not e!663730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167731 (= res!774775 (validMask!0 mask!1564))))

(declare-fun b!1167726 () Bool)

(declare-fun e!663727 () Bool)

(assert (=> b!1167726 (= e!663727 (and e!663732 mapRes!45815))))

(declare-fun condMapEmpty!45815 () Bool)

(declare-fun mapDefault!45815 () ValueCell!13954)

