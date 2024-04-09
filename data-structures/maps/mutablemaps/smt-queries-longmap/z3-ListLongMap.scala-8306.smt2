; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101222 () Bool)

(assert start!101222)

(declare-fun b_free!26109 () Bool)

(declare-fun b_next!26109 () Bool)

(assert (=> start!101222 (= b_free!26109 (not b_next!26109))))

(declare-fun tp!91349 () Bool)

(declare-fun b_and!43345 () Bool)

(assert (=> start!101222 (= tp!91349 b_and!43345)))

(declare-fun b!1214596 () Bool)

(declare-fun res!806471 () Bool)

(declare-fun e!689776 () Bool)

(assert (=> b!1214596 (=> (not res!806471) (not e!689776))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214596 (= res!806471 (validKeyInArray!0 k0!934))))

(declare-fun b!1214597 () Bool)

(declare-fun e!689773 () Bool)

(assert (=> b!1214597 (= e!689773 true)))

(declare-datatypes ((V!46211 0))(
  ( (V!46212 (val!15463 Int)) )
))
(declare-fun zeroValue!944 () V!46211)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((tuple2!20016 0))(
  ( (tuple2!20017 (_1!10018 (_ BitVec 64)) (_2!10018 V!46211)) )
))
(declare-datatypes ((List!26835 0))(
  ( (Nil!26832) (Cons!26831 (h!28040 tuple2!20016) (t!39931 List!26835)) )
))
(declare-datatypes ((ListLongMap!17997 0))(
  ( (ListLongMap!17998 (toList!9014 List!26835)) )
))
(declare-fun lt!552344 () ListLongMap!17997)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14697 0))(
  ( (ValueCellFull!14697 (v!18117 V!46211)) (EmptyCell!14697) )
))
(declare-datatypes ((array!78384 0))(
  ( (array!78385 (arr!37823 (Array (_ BitVec 32) ValueCell!14697)) (size!38360 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78384)

(declare-fun minValue!944 () V!46211)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78386 0))(
  ( (array!78387 (arr!37824 (Array (_ BitVec 32) (_ BitVec 64))) (size!38361 (_ BitVec 32))) )
))
(declare-fun lt!552346 () array!78386)

(declare-fun getCurrentListMapNoExtraKeys!5419 (array!78386 array!78384 (_ BitVec 32) (_ BitVec 32) V!46211 V!46211 (_ BitVec 32) Int) ListLongMap!17997)

(declare-fun dynLambda!3328 (Int (_ BitVec 64)) V!46211)

(assert (=> b!1214597 (= lt!552344 (getCurrentListMapNoExtraKeys!5419 lt!552346 (array!78385 (store (arr!37823 _values!996) i!673 (ValueCellFull!14697 (dynLambda!3328 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38360 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78386)

(declare-fun lt!552345 () ListLongMap!17997)

(assert (=> b!1214597 (= lt!552345 (getCurrentListMapNoExtraKeys!5419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214598 () Bool)

(declare-fun e!689778 () Bool)

(declare-fun e!689774 () Bool)

(declare-fun mapRes!48094 () Bool)

(assert (=> b!1214598 (= e!689778 (and e!689774 mapRes!48094))))

(declare-fun condMapEmpty!48094 () Bool)

(declare-fun mapDefault!48094 () ValueCell!14697)

(assert (=> b!1214598 (= condMapEmpty!48094 (= (arr!37823 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14697)) mapDefault!48094)))))

(declare-fun b!1214599 () Bool)

(declare-fun res!806473 () Bool)

(declare-fun e!689775 () Bool)

(assert (=> b!1214599 (=> (not res!806473) (not e!689775))))

(declare-datatypes ((List!26836 0))(
  ( (Nil!26833) (Cons!26832 (h!28041 (_ BitVec 64)) (t!39932 List!26836)) )
))
(declare-fun arrayNoDuplicates!0 (array!78386 (_ BitVec 32) List!26836) Bool)

(assert (=> b!1214599 (= res!806473 (arrayNoDuplicates!0 lt!552346 #b00000000000000000000000000000000 Nil!26833))))

(declare-fun b!1214600 () Bool)

(declare-fun res!806469 () Bool)

(assert (=> b!1214600 (=> (not res!806469) (not e!689776))))

(assert (=> b!1214600 (= res!806469 (and (= (size!38360 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38361 _keys!1208) (size!38360 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214601 () Bool)

(declare-fun res!806477 () Bool)

(assert (=> b!1214601 (=> (not res!806477) (not e!689776))))

(assert (=> b!1214601 (= res!806477 (= (select (arr!37824 _keys!1208) i!673) k0!934))))

(declare-fun b!1214602 () Bool)

(declare-fun res!806474 () Bool)

(assert (=> b!1214602 (=> (not res!806474) (not e!689776))))

(assert (=> b!1214602 (= res!806474 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38361 _keys!1208))))))

(declare-fun b!1214603 () Bool)

(declare-fun e!689772 () Bool)

(declare-fun tp_is_empty!30813 () Bool)

(assert (=> b!1214603 (= e!689772 tp_is_empty!30813)))

(declare-fun b!1214604 () Bool)

(declare-fun res!806470 () Bool)

(assert (=> b!1214604 (=> (not res!806470) (not e!689776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78386 (_ BitVec 32)) Bool)

(assert (=> b!1214604 (= res!806470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48094 () Bool)

(declare-fun tp!91350 () Bool)

(assert (=> mapNonEmpty!48094 (= mapRes!48094 (and tp!91350 e!689772))))

(declare-fun mapValue!48094 () ValueCell!14697)

(declare-fun mapKey!48094 () (_ BitVec 32))

(declare-fun mapRest!48094 () (Array (_ BitVec 32) ValueCell!14697))

(assert (=> mapNonEmpty!48094 (= (arr!37823 _values!996) (store mapRest!48094 mapKey!48094 mapValue!48094))))

(declare-fun res!806478 () Bool)

(assert (=> start!101222 (=> (not res!806478) (not e!689776))))

(assert (=> start!101222 (= res!806478 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38361 _keys!1208))))))

(assert (=> start!101222 e!689776))

(assert (=> start!101222 tp_is_empty!30813))

(declare-fun array_inv!28708 (array!78386) Bool)

(assert (=> start!101222 (array_inv!28708 _keys!1208)))

(assert (=> start!101222 true))

(assert (=> start!101222 tp!91349))

(declare-fun array_inv!28709 (array!78384) Bool)

(assert (=> start!101222 (and (array_inv!28709 _values!996) e!689778)))

(declare-fun mapIsEmpty!48094 () Bool)

(assert (=> mapIsEmpty!48094 mapRes!48094))

(declare-fun b!1214605 () Bool)

(assert (=> b!1214605 (= e!689776 e!689775)))

(declare-fun res!806472 () Bool)

(assert (=> b!1214605 (=> (not res!806472) (not e!689775))))

(assert (=> b!1214605 (= res!806472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552346 mask!1564))))

(assert (=> b!1214605 (= lt!552346 (array!78387 (store (arr!37824 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38361 _keys!1208)))))

(declare-fun b!1214606 () Bool)

(declare-fun res!806475 () Bool)

(assert (=> b!1214606 (=> (not res!806475) (not e!689776))))

(assert (=> b!1214606 (= res!806475 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26833))))

(declare-fun b!1214607 () Bool)

(declare-fun res!806476 () Bool)

(assert (=> b!1214607 (=> (not res!806476) (not e!689776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214607 (= res!806476 (validMask!0 mask!1564))))

(declare-fun b!1214608 () Bool)

(assert (=> b!1214608 (= e!689774 tp_is_empty!30813)))

(declare-fun b!1214609 () Bool)

(assert (=> b!1214609 (= e!689775 (not e!689773))))

(declare-fun res!806479 () Bool)

(assert (=> b!1214609 (=> res!806479 e!689773)))

(assert (=> b!1214609 (= res!806479 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214609 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40212 0))(
  ( (Unit!40213) )
))
(declare-fun lt!552347 () Unit!40212)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78386 (_ BitVec 64) (_ BitVec 32)) Unit!40212)

(assert (=> b!1214609 (= lt!552347 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101222 res!806478) b!1214607))

(assert (= (and b!1214607 res!806476) b!1214600))

(assert (= (and b!1214600 res!806469) b!1214604))

(assert (= (and b!1214604 res!806470) b!1214606))

(assert (= (and b!1214606 res!806475) b!1214602))

(assert (= (and b!1214602 res!806474) b!1214596))

(assert (= (and b!1214596 res!806471) b!1214601))

(assert (= (and b!1214601 res!806477) b!1214605))

(assert (= (and b!1214605 res!806472) b!1214599))

(assert (= (and b!1214599 res!806473) b!1214609))

(assert (= (and b!1214609 (not res!806479)) b!1214597))

(assert (= (and b!1214598 condMapEmpty!48094) mapIsEmpty!48094))

(assert (= (and b!1214598 (not condMapEmpty!48094)) mapNonEmpty!48094))

(get-info :version)

(assert (= (and mapNonEmpty!48094 ((_ is ValueCellFull!14697) mapValue!48094)) b!1214603))

(assert (= (and b!1214598 ((_ is ValueCellFull!14697) mapDefault!48094)) b!1214608))

(assert (= start!101222 b!1214598))

(declare-fun b_lambda!21795 () Bool)

(assert (=> (not b_lambda!21795) (not b!1214597)))

(declare-fun t!39930 () Bool)

(declare-fun tb!10917 () Bool)

(assert (=> (and start!101222 (= defaultEntry!1004 defaultEntry!1004) t!39930) tb!10917))

(declare-fun result!22423 () Bool)

(assert (=> tb!10917 (= result!22423 tp_is_empty!30813)))

(assert (=> b!1214597 t!39930))

(declare-fun b_and!43347 () Bool)

(assert (= b_and!43345 (and (=> t!39930 result!22423) b_and!43347)))

(declare-fun m!1119783 () Bool)

(assert (=> b!1214605 m!1119783))

(declare-fun m!1119785 () Bool)

(assert (=> b!1214605 m!1119785))

(declare-fun m!1119787 () Bool)

(assert (=> b!1214609 m!1119787))

(declare-fun m!1119789 () Bool)

(assert (=> b!1214609 m!1119789))

(declare-fun m!1119791 () Bool)

(assert (=> b!1214604 m!1119791))

(declare-fun m!1119793 () Bool)

(assert (=> start!101222 m!1119793))

(declare-fun m!1119795 () Bool)

(assert (=> start!101222 m!1119795))

(declare-fun m!1119797 () Bool)

(assert (=> b!1214599 m!1119797))

(declare-fun m!1119799 () Bool)

(assert (=> b!1214601 m!1119799))

(declare-fun m!1119801 () Bool)

(assert (=> mapNonEmpty!48094 m!1119801))

(declare-fun m!1119803 () Bool)

(assert (=> b!1214596 m!1119803))

(declare-fun m!1119805 () Bool)

(assert (=> b!1214606 m!1119805))

(declare-fun m!1119807 () Bool)

(assert (=> b!1214597 m!1119807))

(declare-fun m!1119809 () Bool)

(assert (=> b!1214597 m!1119809))

(declare-fun m!1119811 () Bool)

(assert (=> b!1214597 m!1119811))

(declare-fun m!1119813 () Bool)

(assert (=> b!1214597 m!1119813))

(declare-fun m!1119815 () Bool)

(assert (=> b!1214607 m!1119815))

(check-sat (not start!101222) (not b!1214596) (not b!1214607) (not b!1214597) tp_is_empty!30813 (not b_lambda!21795) (not mapNonEmpty!48094) (not b!1214604) (not b_next!26109) (not b!1214606) (not b!1214609) (not b!1214599) (not b!1214605) b_and!43347)
(check-sat b_and!43347 (not b_next!26109))
