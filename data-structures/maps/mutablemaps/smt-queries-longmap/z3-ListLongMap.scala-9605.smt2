; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113588 () Bool)

(assert start!113588)

(declare-fun b_free!31545 () Bool)

(declare-fun b_next!31545 () Bool)

(assert (=> start!113588 (= b_free!31545 (not b_next!31545))))

(declare-fun tp!110445 () Bool)

(declare-fun b_and!50889 () Bool)

(assert (=> start!113588 (= tp!110445 b_and!50889)))

(declare-fun b!1347896 () Bool)

(declare-fun e!766861 () Bool)

(declare-fun tp_is_empty!37545 () Bool)

(assert (=> b!1347896 (= e!766861 tp_is_empty!37545)))

(declare-fun b!1347897 () Bool)

(declare-fun res!894432 () Bool)

(declare-fun e!766864 () Bool)

(assert (=> b!1347897 (=> (not res!894432) (not e!766864))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1347897 (= res!894432 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347898 () Bool)

(declare-fun res!894433 () Bool)

(assert (=> b!1347898 (=> (not res!894433) (not e!766864))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91881 0))(
  ( (array!91882 (arr!44391 (Array (_ BitVec 32) (_ BitVec 64))) (size!44942 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91881)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347898 (= res!894433 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44942 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347899 () Bool)

(assert (=> b!1347899 (= e!766864 (not (not (= k0!1142 (select (arr!44391 _keys!1571) from!1960)))))))

(declare-datatypes ((V!55163 0))(
  ( (V!55164 (val!18847 Int)) )
))
(declare-datatypes ((tuple2!24442 0))(
  ( (tuple2!24443 (_1!12231 (_ BitVec 64)) (_2!12231 V!55163)) )
))
(declare-datatypes ((List!31612 0))(
  ( (Nil!31609) (Cons!31608 (h!32817 tuple2!24442) (t!46243 List!31612)) )
))
(declare-datatypes ((ListLongMap!22111 0))(
  ( (ListLongMap!22112 (toList!11071 List!31612)) )
))
(declare-fun lt!595826 () ListLongMap!22111)

(declare-fun contains!9184 (ListLongMap!22111 (_ BitVec 64)) Bool)

(assert (=> b!1347899 (contains!9184 lt!595826 k0!1142)))

(declare-datatypes ((Unit!44108 0))(
  ( (Unit!44109) )
))
(declare-fun lt!595825 () Unit!44108)

(declare-fun zeroValue!1245 () V!55163)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!406 ((_ BitVec 64) (_ BitVec 64) V!55163 ListLongMap!22111) Unit!44108)

(assert (=> b!1347899 (= lt!595825 (lemmaInListMapAfterAddingDiffThenInBefore!406 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595826))))

(declare-fun minValue!1245 () V!55163)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17874 0))(
  ( (ValueCellFull!17874 (v!21496 V!55163)) (EmptyCell!17874) )
))
(declare-datatypes ((array!91883 0))(
  ( (array!91884 (arr!44392 (Array (_ BitVec 32) ValueCell!17874)) (size!44943 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91883)

(declare-fun +!4820 (ListLongMap!22111 tuple2!24442) ListLongMap!22111)

(declare-fun getCurrentListMapNoExtraKeys!6547 (array!91881 array!91883 (_ BitVec 32) (_ BitVec 32) V!55163 V!55163 (_ BitVec 32) Int) ListLongMap!22111)

(declare-fun get!22466 (ValueCell!17874 V!55163) V!55163)

(declare-fun dynLambda!3857 (Int (_ BitVec 64)) V!55163)

(assert (=> b!1347899 (= lt!595826 (+!4820 (getCurrentListMapNoExtraKeys!6547 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24443 (select (arr!44391 _keys!1571) from!1960) (get!22466 (select (arr!44392 _values!1303) from!1960) (dynLambda!3857 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!58028 () Bool)

(declare-fun mapRes!58028 () Bool)

(declare-fun tp!110444 () Bool)

(assert (=> mapNonEmpty!58028 (= mapRes!58028 (and tp!110444 e!766861))))

(declare-fun mapRest!58028 () (Array (_ BitVec 32) ValueCell!17874))

(declare-fun mapKey!58028 () (_ BitVec 32))

(declare-fun mapValue!58028 () ValueCell!17874)

(assert (=> mapNonEmpty!58028 (= (arr!44392 _values!1303) (store mapRest!58028 mapKey!58028 mapValue!58028))))

(declare-fun b!1347900 () Bool)

(declare-fun res!894437 () Bool)

(assert (=> b!1347900 (=> (not res!894437) (not e!766864))))

(declare-datatypes ((List!31613 0))(
  ( (Nil!31610) (Cons!31609 (h!32818 (_ BitVec 64)) (t!46244 List!31613)) )
))
(declare-fun arrayNoDuplicates!0 (array!91881 (_ BitVec 32) List!31613) Bool)

(assert (=> b!1347900 (= res!894437 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31610))))

(declare-fun b!1347901 () Bool)

(declare-fun res!894435 () Bool)

(assert (=> b!1347901 (=> (not res!894435) (not e!766864))))

(declare-fun getCurrentListMap!5961 (array!91881 array!91883 (_ BitVec 32) (_ BitVec 32) V!55163 V!55163 (_ BitVec 32) Int) ListLongMap!22111)

(assert (=> b!1347901 (= res!894435 (contains!9184 (getCurrentListMap!5961 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1347902 () Bool)

(declare-fun e!766865 () Bool)

(declare-fun e!766863 () Bool)

(assert (=> b!1347902 (= e!766865 (and e!766863 mapRes!58028))))

(declare-fun condMapEmpty!58028 () Bool)

(declare-fun mapDefault!58028 () ValueCell!17874)

(assert (=> b!1347902 (= condMapEmpty!58028 (= (arr!44392 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17874)) mapDefault!58028)))))

(declare-fun b!1347903 () Bool)

(declare-fun res!894436 () Bool)

(assert (=> b!1347903 (=> (not res!894436) (not e!766864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91881 (_ BitVec 32)) Bool)

(assert (=> b!1347903 (= res!894436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347904 () Bool)

(assert (=> b!1347904 (= e!766863 tp_is_empty!37545)))

(declare-fun b!1347905 () Bool)

(declare-fun res!894434 () Bool)

(assert (=> b!1347905 (=> (not res!894434) (not e!766864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347905 (= res!894434 (validKeyInArray!0 (select (arr!44391 _keys!1571) from!1960)))))

(declare-fun b!1347906 () Bool)

(declare-fun res!894431 () Bool)

(assert (=> b!1347906 (=> (not res!894431) (not e!766864))))

(assert (=> b!1347906 (= res!894431 (and (= (size!44943 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44942 _keys!1571) (size!44943 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347907 () Bool)

(declare-fun res!894439 () Bool)

(assert (=> b!1347907 (=> (not res!894439) (not e!766864))))

(assert (=> b!1347907 (= res!894439 (not (= (select (arr!44391 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!894438 () Bool)

(assert (=> start!113588 (=> (not res!894438) (not e!766864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113588 (= res!894438 (validMask!0 mask!1977))))

(assert (=> start!113588 e!766864))

(assert (=> start!113588 tp_is_empty!37545))

(assert (=> start!113588 true))

(declare-fun array_inv!33353 (array!91881) Bool)

(assert (=> start!113588 (array_inv!33353 _keys!1571)))

(declare-fun array_inv!33354 (array!91883) Bool)

(assert (=> start!113588 (and (array_inv!33354 _values!1303) e!766865)))

(assert (=> start!113588 tp!110445))

(declare-fun mapIsEmpty!58028 () Bool)

(assert (=> mapIsEmpty!58028 mapRes!58028))

(assert (= (and start!113588 res!894438) b!1347906))

(assert (= (and b!1347906 res!894431) b!1347903))

(assert (= (and b!1347903 res!894436) b!1347900))

(assert (= (and b!1347900 res!894437) b!1347898))

(assert (= (and b!1347898 res!894433) b!1347901))

(assert (= (and b!1347901 res!894435) b!1347907))

(assert (= (and b!1347907 res!894439) b!1347905))

(assert (= (and b!1347905 res!894434) b!1347897))

(assert (= (and b!1347897 res!894432) b!1347899))

(assert (= (and b!1347902 condMapEmpty!58028) mapIsEmpty!58028))

(assert (= (and b!1347902 (not condMapEmpty!58028)) mapNonEmpty!58028))

(get-info :version)

(assert (= (and mapNonEmpty!58028 ((_ is ValueCellFull!17874) mapValue!58028)) b!1347896))

(assert (= (and b!1347902 ((_ is ValueCellFull!17874) mapDefault!58028)) b!1347904))

(assert (= start!113588 b!1347902))

(declare-fun b_lambda!24629 () Bool)

(assert (=> (not b_lambda!24629) (not b!1347899)))

(declare-fun t!46242 () Bool)

(declare-fun tb!12435 () Bool)

(assert (=> (and start!113588 (= defaultEntry!1306 defaultEntry!1306) t!46242) tb!12435))

(declare-fun result!25955 () Bool)

(assert (=> tb!12435 (= result!25955 tp_is_empty!37545)))

(assert (=> b!1347899 t!46242))

(declare-fun b_and!50891 () Bool)

(assert (= b_and!50889 (and (=> t!46242 result!25955) b_and!50891)))

(declare-fun m!1234965 () Bool)

(assert (=> mapNonEmpty!58028 m!1234965))

(declare-fun m!1234967 () Bool)

(assert (=> b!1347905 m!1234967))

(assert (=> b!1347905 m!1234967))

(declare-fun m!1234969 () Bool)

(assert (=> b!1347905 m!1234969))

(declare-fun m!1234971 () Bool)

(assert (=> b!1347899 m!1234971))

(declare-fun m!1234973 () Bool)

(assert (=> b!1347899 m!1234973))

(declare-fun m!1234975 () Bool)

(assert (=> b!1347899 m!1234975))

(declare-fun m!1234977 () Bool)

(assert (=> b!1347899 m!1234977))

(assert (=> b!1347899 m!1234971))

(declare-fun m!1234979 () Bool)

(assert (=> b!1347899 m!1234979))

(assert (=> b!1347899 m!1234973))

(assert (=> b!1347899 m!1234975))

(declare-fun m!1234981 () Bool)

(assert (=> b!1347899 m!1234981))

(assert (=> b!1347899 m!1234967))

(declare-fun m!1234983 () Bool)

(assert (=> b!1347899 m!1234983))

(declare-fun m!1234985 () Bool)

(assert (=> b!1347901 m!1234985))

(assert (=> b!1347901 m!1234985))

(declare-fun m!1234987 () Bool)

(assert (=> b!1347901 m!1234987))

(declare-fun m!1234989 () Bool)

(assert (=> b!1347903 m!1234989))

(declare-fun m!1234991 () Bool)

(assert (=> b!1347900 m!1234991))

(assert (=> b!1347907 m!1234967))

(declare-fun m!1234993 () Bool)

(assert (=> start!113588 m!1234993))

(declare-fun m!1234995 () Bool)

(assert (=> start!113588 m!1234995))

(declare-fun m!1234997 () Bool)

(assert (=> start!113588 m!1234997))

(check-sat b_and!50891 (not b_next!31545) (not b!1347899) (not b_lambda!24629) tp_is_empty!37545 (not b!1347900) (not b!1347905) (not mapNonEmpty!58028) (not b!1347901) (not start!113588) (not b!1347903))
(check-sat b_and!50891 (not b_next!31545))
