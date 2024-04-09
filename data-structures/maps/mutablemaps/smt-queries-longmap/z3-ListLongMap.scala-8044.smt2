; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99142 () Bool)

(assert start!99142)

(declare-fun b_free!24711 () Bool)

(declare-fun b_next!24711 () Bool)

(assert (=> start!99142 (= b_free!24711 (not b_next!24711))))

(declare-fun tp!86844 () Bool)

(declare-fun b_and!40285 () Bool)

(assert (=> start!99142 (= tp!86844 b_and!40285)))

(declare-fun mapNonEmpty!45686 () Bool)

(declare-fun mapRes!45686 () Bool)

(declare-fun tp!86845 () Bool)

(declare-fun e!662697 () Bool)

(assert (=> mapNonEmpty!45686 (= mapRes!45686 (and tp!86845 e!662697))))

(declare-datatypes ((V!44115 0))(
  ( (V!44116 (val!14677 Int)) )
))
(declare-datatypes ((ValueCell!13911 0))(
  ( (ValueCellFull!13911 (v!17315 V!44115)) (EmptyCell!13911) )
))
(declare-fun mapValue!45686 () ValueCell!13911)

(declare-fun mapKey!45686 () (_ BitVec 32))

(declare-datatypes ((array!75264 0))(
  ( (array!75265 (arr!36279 (Array (_ BitVec 32) ValueCell!13911)) (size!36816 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75264)

(declare-fun mapRest!45686 () (Array (_ BitVec 32) ValueCell!13911))

(assert (=> mapNonEmpty!45686 (= (arr!36279 _values!996) (store mapRest!45686 mapKey!45686 mapValue!45686))))

(declare-fun b!1165702 () Bool)

(declare-fun e!662698 () Bool)

(declare-fun e!662699 () Bool)

(assert (=> b!1165702 (= e!662698 e!662699)))

(declare-fun res!773224 () Bool)

(assert (=> b!1165702 (=> (not res!773224) (not e!662699))))

(declare-datatypes ((array!75266 0))(
  ( (array!75267 (arr!36280 (Array (_ BitVec 32) (_ BitVec 64))) (size!36817 (_ BitVec 32))) )
))
(declare-fun lt!524949 () array!75266)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75266 (_ BitVec 32)) Bool)

(assert (=> b!1165702 (= res!773224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524949 mask!1564))))

(declare-fun _keys!1208 () array!75266)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165702 (= lt!524949 (array!75267 (store (arr!36280 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36817 _keys!1208)))))

(declare-fun b!1165703 () Bool)

(declare-fun e!662702 () Bool)

(declare-fun e!662701 () Bool)

(assert (=> b!1165703 (= e!662702 (and e!662701 mapRes!45686))))

(declare-fun condMapEmpty!45686 () Bool)

(declare-fun mapDefault!45686 () ValueCell!13911)

(assert (=> b!1165703 (= condMapEmpty!45686 (= (arr!36279 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13911)) mapDefault!45686)))))

(declare-fun b!1165704 () Bool)

(declare-fun tp_is_empty!29241 () Bool)

(assert (=> b!1165704 (= e!662701 tp_is_empty!29241)))

(declare-fun b!1165705 () Bool)

(declare-fun res!773227 () Bool)

(assert (=> b!1165705 (=> (not res!773227) (not e!662698))))

(declare-datatypes ((List!25572 0))(
  ( (Nil!25569) (Cons!25568 (h!26777 (_ BitVec 64)) (t!37282 List!25572)) )
))
(declare-fun arrayNoDuplicates!0 (array!75266 (_ BitVec 32) List!25572) Bool)

(assert (=> b!1165705 (= res!773227 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25569))))

(declare-fun b!1165706 () Bool)

(declare-fun res!773223 () Bool)

(assert (=> b!1165706 (=> (not res!773223) (not e!662698))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1165706 (= res!773223 (= (select (arr!36280 _keys!1208) i!673) k0!934))))

(declare-fun b!1165707 () Bool)

(assert (=> b!1165707 (= e!662697 tp_is_empty!29241)))

(declare-fun b!1165708 () Bool)

(declare-fun e!662700 () Bool)

(assert (=> b!1165708 (= e!662700 true)))

(declare-fun zeroValue!944 () V!44115)

(declare-datatypes ((tuple2!18796 0))(
  ( (tuple2!18797 (_1!9408 (_ BitVec 64)) (_2!9408 V!44115)) )
))
(declare-datatypes ((List!25573 0))(
  ( (Nil!25570) (Cons!25569 (h!26778 tuple2!18796) (t!37283 List!25573)) )
))
(declare-datatypes ((ListLongMap!16777 0))(
  ( (ListLongMap!16778 (toList!8404 List!25573)) )
))
(declare-fun lt!524946 () ListLongMap!16777)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!44115)

(declare-fun getCurrentListMapNoExtraKeys!4837 (array!75266 array!75264 (_ BitVec 32) (_ BitVec 32) V!44115 V!44115 (_ BitVec 32) Int) ListLongMap!16777)

(declare-fun dynLambda!2834 (Int (_ BitVec 64)) V!44115)

(assert (=> b!1165708 (= lt!524946 (getCurrentListMapNoExtraKeys!4837 lt!524949 (array!75265 (store (arr!36279 _values!996) i!673 (ValueCellFull!13911 (dynLambda!2834 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36816 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524947 () ListLongMap!16777)

(assert (=> b!1165708 (= lt!524947 (getCurrentListMapNoExtraKeys!4837 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165709 () Bool)

(declare-fun res!773225 () Bool)

(assert (=> b!1165709 (=> (not res!773225) (not e!662698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165709 (= res!773225 (validMask!0 mask!1564))))

(declare-fun b!1165710 () Bool)

(declare-fun res!773226 () Bool)

(assert (=> b!1165710 (=> (not res!773226) (not e!662698))))

(assert (=> b!1165710 (= res!773226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165711 () Bool)

(declare-fun res!773231 () Bool)

(assert (=> b!1165711 (=> (not res!773231) (not e!662698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165711 (= res!773231 (validKeyInArray!0 k0!934))))

(declare-fun b!1165712 () Bool)

(assert (=> b!1165712 (= e!662699 (not e!662700))))

(declare-fun res!773230 () Bool)

(assert (=> b!1165712 (=> res!773230 e!662700)))

(assert (=> b!1165712 (= res!773230 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165712 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38360 0))(
  ( (Unit!38361) )
))
(declare-fun lt!524948 () Unit!38360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75266 (_ BitVec 64) (_ BitVec 32)) Unit!38360)

(assert (=> b!1165712 (= lt!524948 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165714 () Bool)

(declare-fun res!773228 () Bool)

(assert (=> b!1165714 (=> (not res!773228) (not e!662698))))

(assert (=> b!1165714 (= res!773228 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36817 _keys!1208))))))

(declare-fun res!773221 () Bool)

(assert (=> start!99142 (=> (not res!773221) (not e!662698))))

(assert (=> start!99142 (= res!773221 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36817 _keys!1208))))))

(assert (=> start!99142 e!662698))

(assert (=> start!99142 tp_is_empty!29241))

(declare-fun array_inv!27622 (array!75266) Bool)

(assert (=> start!99142 (array_inv!27622 _keys!1208)))

(assert (=> start!99142 true))

(assert (=> start!99142 tp!86844))

(declare-fun array_inv!27623 (array!75264) Bool)

(assert (=> start!99142 (and (array_inv!27623 _values!996) e!662702)))

(declare-fun b!1165713 () Bool)

(declare-fun res!773229 () Bool)

(assert (=> b!1165713 (=> (not res!773229) (not e!662699))))

(assert (=> b!1165713 (= res!773229 (arrayNoDuplicates!0 lt!524949 #b00000000000000000000000000000000 Nil!25569))))

(declare-fun mapIsEmpty!45686 () Bool)

(assert (=> mapIsEmpty!45686 mapRes!45686))

(declare-fun b!1165715 () Bool)

(declare-fun res!773222 () Bool)

(assert (=> b!1165715 (=> (not res!773222) (not e!662698))))

(assert (=> b!1165715 (= res!773222 (and (= (size!36816 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36817 _keys!1208) (size!36816 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99142 res!773221) b!1165709))

(assert (= (and b!1165709 res!773225) b!1165715))

(assert (= (and b!1165715 res!773222) b!1165710))

(assert (= (and b!1165710 res!773226) b!1165705))

(assert (= (and b!1165705 res!773227) b!1165714))

(assert (= (and b!1165714 res!773228) b!1165711))

(assert (= (and b!1165711 res!773231) b!1165706))

(assert (= (and b!1165706 res!773223) b!1165702))

(assert (= (and b!1165702 res!773224) b!1165713))

(assert (= (and b!1165713 res!773229) b!1165712))

(assert (= (and b!1165712 (not res!773230)) b!1165708))

(assert (= (and b!1165703 condMapEmpty!45686) mapIsEmpty!45686))

(assert (= (and b!1165703 (not condMapEmpty!45686)) mapNonEmpty!45686))

(get-info :version)

(assert (= (and mapNonEmpty!45686 ((_ is ValueCellFull!13911) mapValue!45686)) b!1165707))

(assert (= (and b!1165703 ((_ is ValueCellFull!13911) mapDefault!45686)) b!1165704))

(assert (= start!99142 b!1165703))

(declare-fun b_lambda!19835 () Bool)

(assert (=> (not b_lambda!19835) (not b!1165708)))

(declare-fun t!37281 () Bool)

(declare-fun tb!9531 () Bool)

(assert (=> (and start!99142 (= defaultEntry!1004 defaultEntry!1004) t!37281) tb!9531))

(declare-fun result!19619 () Bool)

(assert (=> tb!9531 (= result!19619 tp_is_empty!29241)))

(assert (=> b!1165708 t!37281))

(declare-fun b_and!40287 () Bool)

(assert (= b_and!40285 (and (=> t!37281 result!19619) b_and!40287)))

(declare-fun m!1073879 () Bool)

(assert (=> b!1165711 m!1073879))

(declare-fun m!1073881 () Bool)

(assert (=> b!1165705 m!1073881))

(declare-fun m!1073883 () Bool)

(assert (=> b!1165709 m!1073883))

(declare-fun m!1073885 () Bool)

(assert (=> b!1165708 m!1073885))

(declare-fun m!1073887 () Bool)

(assert (=> b!1165708 m!1073887))

(declare-fun m!1073889 () Bool)

(assert (=> b!1165708 m!1073889))

(declare-fun m!1073891 () Bool)

(assert (=> b!1165708 m!1073891))

(declare-fun m!1073893 () Bool)

(assert (=> b!1165710 m!1073893))

(declare-fun m!1073895 () Bool)

(assert (=> b!1165712 m!1073895))

(declare-fun m!1073897 () Bool)

(assert (=> b!1165712 m!1073897))

(declare-fun m!1073899 () Bool)

(assert (=> b!1165713 m!1073899))

(declare-fun m!1073901 () Bool)

(assert (=> b!1165706 m!1073901))

(declare-fun m!1073903 () Bool)

(assert (=> start!99142 m!1073903))

(declare-fun m!1073905 () Bool)

(assert (=> start!99142 m!1073905))

(declare-fun m!1073907 () Bool)

(assert (=> mapNonEmpty!45686 m!1073907))

(declare-fun m!1073909 () Bool)

(assert (=> b!1165702 m!1073909))

(declare-fun m!1073911 () Bool)

(assert (=> b!1165702 m!1073911))

(check-sat (not b!1165711) b_and!40287 (not mapNonEmpty!45686) (not b_lambda!19835) (not b!1165709) (not b!1165702) (not b!1165710) (not b!1165712) (not b_next!24711) (not b!1165708) tp_is_empty!29241 (not b!1165705) (not start!99142) (not b!1165713))
(check-sat b_and!40287 (not b_next!24711))
