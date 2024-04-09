; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101240 () Bool)

(assert start!101240)

(declare-fun b_free!26127 () Bool)

(declare-fun b_next!26127 () Bool)

(assert (=> start!101240 (= b_free!26127 (not b_next!26127))))

(declare-fun tp!91404 () Bool)

(declare-fun b_and!43381 () Bool)

(assert (=> start!101240 (= tp!91404 b_and!43381)))

(declare-fun b!1214993 () Bool)

(declare-fun e!689967 () Bool)

(declare-fun e!689966 () Bool)

(declare-fun mapRes!48121 () Bool)

(assert (=> b!1214993 (= e!689967 (and e!689966 mapRes!48121))))

(declare-fun condMapEmpty!48121 () Bool)

(declare-datatypes ((V!46235 0))(
  ( (V!46236 (val!15472 Int)) )
))
(declare-datatypes ((ValueCell!14706 0))(
  ( (ValueCellFull!14706 (v!18126 V!46235)) (EmptyCell!14706) )
))
(declare-datatypes ((array!78416 0))(
  ( (array!78417 (arr!37839 (Array (_ BitVec 32) ValueCell!14706)) (size!38376 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78416)

(declare-fun mapDefault!48121 () ValueCell!14706)

(assert (=> b!1214993 (= condMapEmpty!48121 (= (arr!37839 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14706)) mapDefault!48121)))))

(declare-fun mapIsEmpty!48121 () Bool)

(assert (=> mapIsEmpty!48121 mapRes!48121))

(declare-fun b!1214994 () Bool)

(declare-fun e!689962 () Bool)

(declare-fun tp_is_empty!30831 () Bool)

(assert (=> b!1214994 (= e!689962 tp_is_empty!30831)))

(declare-fun b!1214995 () Bool)

(declare-fun res!806769 () Bool)

(declare-fun e!689964 () Bool)

(assert (=> b!1214995 (=> (not res!806769) (not e!689964))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214995 (= res!806769 (validMask!0 mask!1564))))

(declare-fun b!1214996 () Bool)

(declare-fun res!806773 () Bool)

(assert (=> b!1214996 (=> (not res!806773) (not e!689964))))

(declare-datatypes ((array!78418 0))(
  ( (array!78419 (arr!37840 (Array (_ BitVec 32) (_ BitVec 64))) (size!38377 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78418)

(declare-datatypes ((List!26844 0))(
  ( (Nil!26841) (Cons!26840 (h!28049 (_ BitVec 64)) (t!39958 List!26844)) )
))
(declare-fun arrayNoDuplicates!0 (array!78418 (_ BitVec 32) List!26844) Bool)

(assert (=> b!1214996 (= res!806773 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26841))))

(declare-fun b!1214997 () Bool)

(declare-fun e!689963 () Bool)

(assert (=> b!1214997 (= e!689963 true)))

(declare-fun zeroValue!944 () V!46235)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!552452 () array!78418)

(declare-fun minValue!944 () V!46235)

(declare-datatypes ((tuple2!20026 0))(
  ( (tuple2!20027 (_1!10023 (_ BitVec 64)) (_2!10023 V!46235)) )
))
(declare-datatypes ((List!26845 0))(
  ( (Nil!26842) (Cons!26841 (h!28050 tuple2!20026) (t!39959 List!26845)) )
))
(declare-datatypes ((ListLongMap!18007 0))(
  ( (ListLongMap!18008 (toList!9019 List!26845)) )
))
(declare-fun lt!552455 () ListLongMap!18007)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5424 (array!78418 array!78416 (_ BitVec 32) (_ BitVec 32) V!46235 V!46235 (_ BitVec 32) Int) ListLongMap!18007)

(declare-fun dynLambda!3333 (Int (_ BitVec 64)) V!46235)

(assert (=> b!1214997 (= lt!552455 (getCurrentListMapNoExtraKeys!5424 lt!552452 (array!78417 (store (arr!37839 _values!996) i!673 (ValueCellFull!14706 (dynLambda!3333 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38376 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552453 () ListLongMap!18007)

(assert (=> b!1214997 (= lt!552453 (getCurrentListMapNoExtraKeys!5424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214998 () Bool)

(declare-fun e!689961 () Bool)

(assert (=> b!1214998 (= e!689964 e!689961)))

(declare-fun res!806772 () Bool)

(assert (=> b!1214998 (=> (not res!806772) (not e!689961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78418 (_ BitVec 32)) Bool)

(assert (=> b!1214998 (= res!806772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552452 mask!1564))))

(assert (=> b!1214998 (= lt!552452 (array!78419 (store (arr!37840 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38377 _keys!1208)))))

(declare-fun b!1214999 () Bool)

(declare-fun res!806768 () Bool)

(assert (=> b!1214999 (=> (not res!806768) (not e!689964))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214999 (= res!806768 (validKeyInArray!0 k0!934))))

(declare-fun b!1215000 () Bool)

(declare-fun res!806774 () Bool)

(assert (=> b!1215000 (=> (not res!806774) (not e!689964))))

(assert (=> b!1215000 (= res!806774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!806775 () Bool)

(assert (=> start!101240 (=> (not res!806775) (not e!689964))))

(assert (=> start!101240 (= res!806775 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38377 _keys!1208))))))

(assert (=> start!101240 e!689964))

(assert (=> start!101240 tp_is_empty!30831))

(declare-fun array_inv!28716 (array!78418) Bool)

(assert (=> start!101240 (array_inv!28716 _keys!1208)))

(assert (=> start!101240 true))

(assert (=> start!101240 tp!91404))

(declare-fun array_inv!28717 (array!78416) Bool)

(assert (=> start!101240 (and (array_inv!28717 _values!996) e!689967)))

(declare-fun b!1214992 () Bool)

(declare-fun res!806776 () Bool)

(assert (=> b!1214992 (=> (not res!806776) (not e!689961))))

(assert (=> b!1214992 (= res!806776 (arrayNoDuplicates!0 lt!552452 #b00000000000000000000000000000000 Nil!26841))))

(declare-fun b!1215001 () Bool)

(declare-fun res!806770 () Bool)

(assert (=> b!1215001 (=> (not res!806770) (not e!689964))))

(assert (=> b!1215001 (= res!806770 (and (= (size!38376 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38377 _keys!1208) (size!38376 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215002 () Bool)

(assert (=> b!1215002 (= e!689966 tp_is_empty!30831)))

(declare-fun b!1215003 () Bool)

(assert (=> b!1215003 (= e!689961 (not e!689963))))

(declare-fun res!806767 () Bool)

(assert (=> b!1215003 (=> res!806767 e!689963)))

(assert (=> b!1215003 (= res!806767 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215003 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40220 0))(
  ( (Unit!40221) )
))
(declare-fun lt!552454 () Unit!40220)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78418 (_ BitVec 64) (_ BitVec 32)) Unit!40220)

(assert (=> b!1215003 (= lt!552454 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215004 () Bool)

(declare-fun res!806766 () Bool)

(assert (=> b!1215004 (=> (not res!806766) (not e!689964))))

(assert (=> b!1215004 (= res!806766 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38377 _keys!1208))))))

(declare-fun mapNonEmpty!48121 () Bool)

(declare-fun tp!91403 () Bool)

(assert (=> mapNonEmpty!48121 (= mapRes!48121 (and tp!91403 e!689962))))

(declare-fun mapKey!48121 () (_ BitVec 32))

(declare-fun mapRest!48121 () (Array (_ BitVec 32) ValueCell!14706))

(declare-fun mapValue!48121 () ValueCell!14706)

(assert (=> mapNonEmpty!48121 (= (arr!37839 _values!996) (store mapRest!48121 mapKey!48121 mapValue!48121))))

(declare-fun b!1215005 () Bool)

(declare-fun res!806771 () Bool)

(assert (=> b!1215005 (=> (not res!806771) (not e!689964))))

(assert (=> b!1215005 (= res!806771 (= (select (arr!37840 _keys!1208) i!673) k0!934))))

(assert (= (and start!101240 res!806775) b!1214995))

(assert (= (and b!1214995 res!806769) b!1215001))

(assert (= (and b!1215001 res!806770) b!1215000))

(assert (= (and b!1215000 res!806774) b!1214996))

(assert (= (and b!1214996 res!806773) b!1215004))

(assert (= (and b!1215004 res!806766) b!1214999))

(assert (= (and b!1214999 res!806768) b!1215005))

(assert (= (and b!1215005 res!806771) b!1214998))

(assert (= (and b!1214998 res!806772) b!1214992))

(assert (= (and b!1214992 res!806776) b!1215003))

(assert (= (and b!1215003 (not res!806767)) b!1214997))

(assert (= (and b!1214993 condMapEmpty!48121) mapIsEmpty!48121))

(assert (= (and b!1214993 (not condMapEmpty!48121)) mapNonEmpty!48121))

(get-info :version)

(assert (= (and mapNonEmpty!48121 ((_ is ValueCellFull!14706) mapValue!48121)) b!1214994))

(assert (= (and b!1214993 ((_ is ValueCellFull!14706) mapDefault!48121)) b!1215002))

(assert (= start!101240 b!1214993))

(declare-fun b_lambda!21813 () Bool)

(assert (=> (not b_lambda!21813) (not b!1214997)))

(declare-fun t!39957 () Bool)

(declare-fun tb!10935 () Bool)

(assert (=> (and start!101240 (= defaultEntry!1004 defaultEntry!1004) t!39957) tb!10935))

(declare-fun result!22459 () Bool)

(assert (=> tb!10935 (= result!22459 tp_is_empty!30831)))

(assert (=> b!1214997 t!39957))

(declare-fun b_and!43383 () Bool)

(assert (= b_and!43381 (and (=> t!39957 result!22459) b_and!43383)))

(declare-fun m!1120089 () Bool)

(assert (=> b!1214999 m!1120089))

(declare-fun m!1120091 () Bool)

(assert (=> b!1214997 m!1120091))

(declare-fun m!1120093 () Bool)

(assert (=> b!1214997 m!1120093))

(declare-fun m!1120095 () Bool)

(assert (=> b!1214997 m!1120095))

(declare-fun m!1120097 () Bool)

(assert (=> b!1214997 m!1120097))

(declare-fun m!1120099 () Bool)

(assert (=> b!1215003 m!1120099))

(declare-fun m!1120101 () Bool)

(assert (=> b!1215003 m!1120101))

(declare-fun m!1120103 () Bool)

(assert (=> b!1214992 m!1120103))

(declare-fun m!1120105 () Bool)

(assert (=> b!1215005 m!1120105))

(declare-fun m!1120107 () Bool)

(assert (=> b!1215000 m!1120107))

(declare-fun m!1120109 () Bool)

(assert (=> mapNonEmpty!48121 m!1120109))

(declare-fun m!1120111 () Bool)

(assert (=> b!1214995 m!1120111))

(declare-fun m!1120113 () Bool)

(assert (=> b!1214998 m!1120113))

(declare-fun m!1120115 () Bool)

(assert (=> b!1214998 m!1120115))

(declare-fun m!1120117 () Bool)

(assert (=> start!101240 m!1120117))

(declare-fun m!1120119 () Bool)

(assert (=> start!101240 m!1120119))

(declare-fun m!1120121 () Bool)

(assert (=> b!1214996 m!1120121))

(check-sat (not b_lambda!21813) (not b!1214999) (not b_next!26127) (not b!1214998) (not b!1215003) (not b!1214992) (not b!1214996) b_and!43383 (not b!1215000) (not mapNonEmpty!48121) tp_is_empty!30831 (not b!1214995) (not b!1214997) (not start!101240))
(check-sat b_and!43383 (not b_next!26127))
