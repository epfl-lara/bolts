; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99418 () Bool)

(assert start!99418)

(declare-fun b_free!24961 () Bool)

(declare-fun b_next!24961 () Bool)

(assert (=> start!99418 (= b_free!24961 (not b_next!24961))))

(declare-fun tp!87598 () Bool)

(declare-fun b_and!40803 () Bool)

(assert (=> start!99418 (= tp!87598 b_and!40803)))

(declare-fun b!1172671 () Bool)

(declare-fun res!778735 () Bool)

(declare-fun e!666588 () Bool)

(assert (=> b!1172671 (=> (not res!778735) (not e!666588))))

(declare-datatypes ((array!75758 0))(
  ( (array!75759 (arr!36525 (Array (_ BitVec 32) (_ BitVec 64))) (size!37062 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75758)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75758 (_ BitVec 32)) Bool)

(assert (=> b!1172671 (= res!778735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172673 () Bool)

(declare-fun e!666585 () Bool)

(declare-fun tp_is_empty!29491 () Bool)

(assert (=> b!1172673 (= e!666585 tp_is_empty!29491)))

(declare-fun b!1172674 () Bool)

(declare-fun res!778733 () Bool)

(assert (=> b!1172674 (=> (not res!778733) (not e!666588))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44449 0))(
  ( (V!44450 (val!14802 Int)) )
))
(declare-datatypes ((ValueCell!14036 0))(
  ( (ValueCellFull!14036 (v!17441 V!44449)) (EmptyCell!14036) )
))
(declare-datatypes ((array!75760 0))(
  ( (array!75761 (arr!36526 (Array (_ BitVec 32) ValueCell!14036)) (size!37063 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75760)

(assert (=> b!1172674 (= res!778733 (and (= (size!37063 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37062 _keys!1208) (size!37063 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172675 () Bool)

(declare-datatypes ((Unit!38568 0))(
  ( (Unit!38569) )
))
(declare-fun e!666579 () Unit!38568)

(declare-fun Unit!38570 () Unit!38568)

(assert (=> b!1172675 (= e!666579 Unit!38570)))

(declare-fun b!1172676 () Bool)

(declare-fun e!666589 () Bool)

(assert (=> b!1172676 (= e!666588 e!666589)))

(declare-fun res!778732 () Bool)

(assert (=> b!1172676 (=> (not res!778732) (not e!666589))))

(declare-fun lt!528402 () array!75758)

(assert (=> b!1172676 (= res!778732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528402 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172676 (= lt!528402 (array!75759 (store (arr!36525 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37062 _keys!1208)))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1172677 () Bool)

(declare-fun e!666586 () Bool)

(declare-fun arrayContainsKey!0 (array!75758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172677 (= e!666586 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172678 () Bool)

(declare-fun res!778729 () Bool)

(assert (=> b!1172678 (=> (not res!778729) (not e!666588))))

(declare-datatypes ((List!25783 0))(
  ( (Nil!25780) (Cons!25779 (h!26988 (_ BitVec 64)) (t!37743 List!25783)) )
))
(declare-fun arrayNoDuplicates!0 (array!75758 (_ BitVec 32) List!25783) Bool)

(assert (=> b!1172678 (= res!778729 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25780))))

(declare-fun mapNonEmpty!46064 () Bool)

(declare-fun mapRes!46064 () Bool)

(declare-fun tp!87597 () Bool)

(assert (=> mapNonEmpty!46064 (= mapRes!46064 (and tp!87597 e!666585))))

(declare-fun mapValue!46064 () ValueCell!14036)

(declare-fun mapKey!46064 () (_ BitVec 32))

(declare-fun mapRest!46064 () (Array (_ BitVec 32) ValueCell!14036))

(assert (=> mapNonEmpty!46064 (= (arr!36526 _values!996) (store mapRest!46064 mapKey!46064 mapValue!46064))))

(declare-fun b!1172679 () Bool)

(declare-fun res!778728 () Bool)

(assert (=> b!1172679 (=> (not res!778728) (not e!666589))))

(assert (=> b!1172679 (= res!778728 (arrayNoDuplicates!0 lt!528402 #b00000000000000000000000000000000 Nil!25780))))

(declare-fun b!1172680 () Bool)

(declare-fun res!778731 () Bool)

(assert (=> b!1172680 (=> (not res!778731) (not e!666588))))

(assert (=> b!1172680 (= res!778731 (= (select (arr!36525 _keys!1208) i!673) k!934))))

(declare-fun b!1172681 () Bool)

(declare-fun Unit!38571 () Unit!38568)

(assert (=> b!1172681 (= e!666579 Unit!38571)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!528400 () Unit!38568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75758 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38568)

(assert (=> b!1172681 (= lt!528400 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1172681 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528404 () Unit!38568)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75758 (_ BitVec 32) (_ BitVec 32)) Unit!38568)

(assert (=> b!1172681 (= lt!528404 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172681 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25780)))

(declare-fun lt!528399 () Unit!38568)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75758 (_ BitVec 64) (_ BitVec 32) List!25783) Unit!38568)

(assert (=> b!1172681 (= lt!528399 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25780))))

(assert (=> b!1172681 false))

(declare-fun b!1172682 () Bool)

(declare-fun res!778730 () Bool)

(assert (=> b!1172682 (=> (not res!778730) (not e!666588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172682 (= res!778730 (validMask!0 mask!1564))))

(declare-fun b!1172683 () Bool)

(declare-fun res!778737 () Bool)

(assert (=> b!1172683 (=> (not res!778737) (not e!666588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172683 (= res!778737 (validKeyInArray!0 k!934))))

(declare-fun b!1172684 () Bool)

(declare-fun e!666587 () Bool)

(assert (=> b!1172684 (= e!666587 e!666586)))

(declare-fun res!778741 () Bool)

(assert (=> b!1172684 (=> res!778741 e!666586)))

(assert (=> b!1172684 (= res!778741 (not (= (select (arr!36525 _keys!1208) from!1455) k!934)))))

(declare-fun b!1172685 () Bool)

(declare-fun e!666582 () Bool)

(assert (=> b!1172685 (= e!666589 (not e!666582))))

(declare-fun res!778739 () Bool)

(assert (=> b!1172685 (=> res!778739 e!666582)))

(assert (=> b!1172685 (= res!778739 (bvsgt from!1455 i!673))))

(assert (=> b!1172685 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528398 () Unit!38568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75758 (_ BitVec 64) (_ BitVec 32)) Unit!38568)

(assert (=> b!1172685 (= lt!528398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172686 () Bool)

(declare-fun e!666581 () Bool)

(assert (=> b!1172686 (= e!666581 tp_is_empty!29491)))

(declare-fun b!1172687 () Bool)

(declare-fun e!666580 () Bool)

(declare-fun e!666583 () Bool)

(assert (=> b!1172687 (= e!666580 e!666583)))

(declare-fun res!778736 () Bool)

(assert (=> b!1172687 (=> res!778736 e!666583)))

(assert (=> b!1172687 (= res!778736 (not (validKeyInArray!0 (select (arr!36525 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19010 0))(
  ( (tuple2!19011 (_1!9515 (_ BitVec 64)) (_2!9515 V!44449)) )
))
(declare-datatypes ((List!25784 0))(
  ( (Nil!25781) (Cons!25780 (h!26989 tuple2!19010) (t!37744 List!25784)) )
))
(declare-datatypes ((ListLongMap!16991 0))(
  ( (ListLongMap!16992 (toList!8511 List!25784)) )
))
(declare-fun lt!528403 () ListLongMap!16991)

(declare-fun lt!528405 () ListLongMap!16991)

(assert (=> b!1172687 (= lt!528403 lt!528405)))

(declare-fun lt!528408 () ListLongMap!16991)

(declare-fun -!1525 (ListLongMap!16991 (_ BitVec 64)) ListLongMap!16991)

(assert (=> b!1172687 (= lt!528405 (-!1525 lt!528408 k!934))))

(declare-fun zeroValue!944 () V!44449)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528407 () array!75760)

(declare-fun minValue!944 () V!44449)

(declare-fun getCurrentListMapNoExtraKeys!4943 (array!75758 array!75760 (_ BitVec 32) (_ BitVec 32) V!44449 V!44449 (_ BitVec 32) Int) ListLongMap!16991)

(assert (=> b!1172687 (= lt!528403 (getCurrentListMapNoExtraKeys!4943 lt!528402 lt!528407 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172687 (= lt!528408 (getCurrentListMapNoExtraKeys!4943 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528397 () Unit!38568)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!749 (array!75758 array!75760 (_ BitVec 32) (_ BitVec 32) V!44449 V!44449 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38568)

(assert (=> b!1172687 (= lt!528397 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!749 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172672 () Bool)

(assert (=> b!1172672 (= e!666582 e!666580)))

(declare-fun res!778734 () Bool)

(assert (=> b!1172672 (=> res!778734 e!666580)))

(assert (=> b!1172672 (= res!778734 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!528396 () ListLongMap!16991)

(assert (=> b!1172672 (= lt!528396 (getCurrentListMapNoExtraKeys!4943 lt!528402 lt!528407 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528395 () V!44449)

(assert (=> b!1172672 (= lt!528407 (array!75761 (store (arr!36526 _values!996) i!673 (ValueCellFull!14036 lt!528395)) (size!37063 _values!996)))))

(declare-fun dynLambda!2930 (Int (_ BitVec 64)) V!44449)

(assert (=> b!1172672 (= lt!528395 (dynLambda!2930 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528401 () ListLongMap!16991)

(assert (=> b!1172672 (= lt!528401 (getCurrentListMapNoExtraKeys!4943 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!778740 () Bool)

(assert (=> start!99418 (=> (not res!778740) (not e!666588))))

(assert (=> start!99418 (= res!778740 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37062 _keys!1208))))))

(assert (=> start!99418 e!666588))

(assert (=> start!99418 tp_is_empty!29491))

(declare-fun array_inv!27794 (array!75758) Bool)

(assert (=> start!99418 (array_inv!27794 _keys!1208)))

(assert (=> start!99418 true))

(assert (=> start!99418 tp!87598))

(declare-fun e!666578 () Bool)

(declare-fun array_inv!27795 (array!75760) Bool)

(assert (=> start!99418 (and (array_inv!27795 _values!996) e!666578)))

(declare-fun b!1172688 () Bool)

(assert (=> b!1172688 (= e!666583 true)))

(assert (=> b!1172688 (not (= (select (arr!36525 _keys!1208) from!1455) k!934))))

(declare-fun lt!528406 () Unit!38568)

(assert (=> b!1172688 (= lt!528406 e!666579)))

(declare-fun c!116513 () Bool)

(assert (=> b!1172688 (= c!116513 (= (select (arr!36525 _keys!1208) from!1455) k!934))))

(assert (=> b!1172688 e!666587))

(declare-fun res!778727 () Bool)

(assert (=> b!1172688 (=> (not res!778727) (not e!666587))))

(declare-fun +!3747 (ListLongMap!16991 tuple2!19010) ListLongMap!16991)

(declare-fun get!18668 (ValueCell!14036 V!44449) V!44449)

(assert (=> b!1172688 (= res!778727 (= lt!528396 (+!3747 lt!528405 (tuple2!19011 (select (arr!36525 _keys!1208) from!1455) (get!18668 (select (arr!36526 _values!996) from!1455) lt!528395)))))))

(declare-fun mapIsEmpty!46064 () Bool)

(assert (=> mapIsEmpty!46064 mapRes!46064))

(declare-fun b!1172689 () Bool)

(assert (=> b!1172689 (= e!666578 (and e!666581 mapRes!46064))))

(declare-fun condMapEmpty!46064 () Bool)

(declare-fun mapDefault!46064 () ValueCell!14036)

