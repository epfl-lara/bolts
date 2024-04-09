; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112292 () Bool)

(assert start!112292)

(declare-fun b_free!30651 () Bool)

(declare-fun b_next!30651 () Bool)

(assert (=> start!112292 (= b_free!30651 (not b_next!30651))))

(declare-fun tp!107590 () Bool)

(declare-fun b_and!49367 () Bool)

(assert (=> start!112292 (= tp!107590 b_and!49367)))

(declare-fun b!1329830 () Bool)

(declare-fun res!882465 () Bool)

(declare-fun e!758056 () Bool)

(assert (=> b!1329830 (=> (not res!882465) (not e!758056))))

(declare-datatypes ((array!89977 0))(
  ( (array!89978 (arr!43450 (Array (_ BitVec 32) (_ BitVec 64))) (size!44001 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89977)

(declare-datatypes ((List!30969 0))(
  ( (Nil!30966) (Cons!30965 (h!32174 (_ BitVec 64)) (t!45040 List!30969)) )
))
(declare-fun arrayNoDuplicates!0 (array!89977 (_ BitVec 32) List!30969) Bool)

(assert (=> b!1329830 (= res!882465 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30966))))

(declare-fun b!1329832 () Bool)

(assert (=> b!1329832 (= e!758056 (not true))))

(declare-datatypes ((V!53851 0))(
  ( (V!53852 (val!18355 Int)) )
))
(declare-datatypes ((tuple2!23778 0))(
  ( (tuple2!23779 (_1!11899 (_ BitVec 64)) (_2!11899 V!53851)) )
))
(declare-datatypes ((List!30970 0))(
  ( (Nil!30967) (Cons!30966 (h!32175 tuple2!23778) (t!45041 List!30970)) )
))
(declare-datatypes ((ListLongMap!21447 0))(
  ( (ListLongMap!21448 (toList!10739 List!30970)) )
))
(declare-fun lt!590966 () ListLongMap!21447)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8839 (ListLongMap!21447 (_ BitVec 64)) Bool)

(assert (=> b!1329832 (contains!8839 lt!590966 k0!1153)))

(declare-datatypes ((Unit!43695 0))(
  ( (Unit!43696) )
))
(declare-fun lt!590965 () Unit!43695)

(declare-fun minValue!1262 () V!53851)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!239 ((_ BitVec 64) (_ BitVec 64) V!53851 ListLongMap!21447) Unit!43695)

(assert (=> b!1329832 (= lt!590965 (lemmaInListMapAfterAddingDiffThenInBefore!239 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590966))))

(declare-datatypes ((ValueCell!17382 0))(
  ( (ValueCellFull!17382 (v!20990 V!53851)) (EmptyCell!17382) )
))
(declare-datatypes ((array!89979 0))(
  ( (array!89980 (arr!43451 (Array (_ BitVec 32) ValueCell!17382)) (size!44002 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89979)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53851)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun +!4634 (ListLongMap!21447 tuple2!23778) ListLongMap!21447)

(declare-fun getCurrentListMapNoExtraKeys!6352 (array!89977 array!89979 (_ BitVec 32) (_ BitVec 32) V!53851 V!53851 (_ BitVec 32) Int) ListLongMap!21447)

(declare-fun get!21936 (ValueCell!17382 V!53851) V!53851)

(declare-fun dynLambda!3671 (Int (_ BitVec 64)) V!53851)

(assert (=> b!1329832 (= lt!590966 (+!4634 (getCurrentListMapNoExtraKeys!6352 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23779 (select (arr!43450 _keys!1590) from!1980) (get!21936 (select (arr!43451 _values!1320) from!1980) (dynLambda!3671 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329833 () Bool)

(declare-fun res!882469 () Bool)

(assert (=> b!1329833 (=> (not res!882469) (not e!758056))))

(assert (=> b!1329833 (= res!882469 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329834 () Bool)

(declare-fun res!882468 () Bool)

(assert (=> b!1329834 (=> (not res!882468) (not e!758056))))

(assert (=> b!1329834 (= res!882468 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44001 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329835 () Bool)

(declare-fun res!882470 () Bool)

(assert (=> b!1329835 (=> (not res!882470) (not e!758056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89977 (_ BitVec 32)) Bool)

(assert (=> b!1329835 (= res!882470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329836 () Bool)

(declare-fun e!758058 () Bool)

(declare-fun tp_is_empty!36561 () Bool)

(assert (=> b!1329836 (= e!758058 tp_is_empty!36561)))

(declare-fun b!1329837 () Bool)

(declare-fun e!758055 () Bool)

(declare-fun mapRes!56515 () Bool)

(assert (=> b!1329837 (= e!758055 (and e!758058 mapRes!56515))))

(declare-fun condMapEmpty!56515 () Bool)

(declare-fun mapDefault!56515 () ValueCell!17382)

(assert (=> b!1329837 (= condMapEmpty!56515 (= (arr!43451 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17382)) mapDefault!56515)))))

(declare-fun b!1329838 () Bool)

(declare-fun res!882467 () Bool)

(assert (=> b!1329838 (=> (not res!882467) (not e!758056))))

(declare-fun getCurrentListMap!5671 (array!89977 array!89979 (_ BitVec 32) (_ BitVec 32) V!53851 V!53851 (_ BitVec 32) Int) ListLongMap!21447)

(assert (=> b!1329838 (= res!882467 (contains!8839 (getCurrentListMap!5671 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56515 () Bool)

(declare-fun tp!107591 () Bool)

(declare-fun e!758059 () Bool)

(assert (=> mapNonEmpty!56515 (= mapRes!56515 (and tp!107591 e!758059))))

(declare-fun mapValue!56515 () ValueCell!17382)

(declare-fun mapKey!56515 () (_ BitVec 32))

(declare-fun mapRest!56515 () (Array (_ BitVec 32) ValueCell!17382))

(assert (=> mapNonEmpty!56515 (= (arr!43451 _values!1320) (store mapRest!56515 mapKey!56515 mapValue!56515))))

(declare-fun b!1329839 () Bool)

(declare-fun res!882472 () Bool)

(assert (=> b!1329839 (=> (not res!882472) (not e!758056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329839 (= res!882472 (validKeyInArray!0 (select (arr!43450 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56515 () Bool)

(assert (=> mapIsEmpty!56515 mapRes!56515))

(declare-fun res!882471 () Bool)

(assert (=> start!112292 (=> (not res!882471) (not e!758056))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112292 (= res!882471 (validMask!0 mask!1998))))

(assert (=> start!112292 e!758056))

(declare-fun array_inv!32733 (array!89979) Bool)

(assert (=> start!112292 (and (array_inv!32733 _values!1320) e!758055)))

(assert (=> start!112292 true))

(declare-fun array_inv!32734 (array!89977) Bool)

(assert (=> start!112292 (array_inv!32734 _keys!1590)))

(assert (=> start!112292 tp!107590))

(assert (=> start!112292 tp_is_empty!36561))

(declare-fun b!1329831 () Bool)

(declare-fun res!882473 () Bool)

(assert (=> b!1329831 (=> (not res!882473) (not e!758056))))

(assert (=> b!1329831 (= res!882473 (and (= (size!44002 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44001 _keys!1590) (size!44002 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329840 () Bool)

(declare-fun res!882466 () Bool)

(assert (=> b!1329840 (=> (not res!882466) (not e!758056))))

(assert (=> b!1329840 (= res!882466 (not (= (select (arr!43450 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329841 () Bool)

(assert (=> b!1329841 (= e!758059 tp_is_empty!36561)))

(assert (= (and start!112292 res!882471) b!1329831))

(assert (= (and b!1329831 res!882473) b!1329835))

(assert (= (and b!1329835 res!882470) b!1329830))

(assert (= (and b!1329830 res!882465) b!1329834))

(assert (= (and b!1329834 res!882468) b!1329838))

(assert (= (and b!1329838 res!882467) b!1329840))

(assert (= (and b!1329840 res!882466) b!1329839))

(assert (= (and b!1329839 res!882472) b!1329833))

(assert (= (and b!1329833 res!882469) b!1329832))

(assert (= (and b!1329837 condMapEmpty!56515) mapIsEmpty!56515))

(assert (= (and b!1329837 (not condMapEmpty!56515)) mapNonEmpty!56515))

(get-info :version)

(assert (= (and mapNonEmpty!56515 ((_ is ValueCellFull!17382) mapValue!56515)) b!1329841))

(assert (= (and b!1329837 ((_ is ValueCellFull!17382) mapDefault!56515)) b!1329836))

(assert (= start!112292 b!1329837))

(declare-fun b_lambda!23921 () Bool)

(assert (=> (not b_lambda!23921) (not b!1329832)))

(declare-fun t!45039 () Bool)

(declare-fun tb!11875 () Bool)

(assert (=> (and start!112292 (= defaultEntry!1323 defaultEntry!1323) t!45039) tb!11875))

(declare-fun result!24813 () Bool)

(assert (=> tb!11875 (= result!24813 tp_is_empty!36561)))

(assert (=> b!1329832 t!45039))

(declare-fun b_and!49369 () Bool)

(assert (= b_and!49367 (and (=> t!45039 result!24813) b_and!49369)))

(declare-fun m!1218577 () Bool)

(assert (=> b!1329838 m!1218577))

(assert (=> b!1329838 m!1218577))

(declare-fun m!1218579 () Bool)

(assert (=> b!1329838 m!1218579))

(declare-fun m!1218581 () Bool)

(assert (=> b!1329830 m!1218581))

(declare-fun m!1218583 () Bool)

(assert (=> b!1329832 m!1218583))

(declare-fun m!1218585 () Bool)

(assert (=> b!1329832 m!1218585))

(declare-fun m!1218587 () Bool)

(assert (=> b!1329832 m!1218587))

(declare-fun m!1218589 () Bool)

(assert (=> b!1329832 m!1218589))

(assert (=> b!1329832 m!1218583))

(declare-fun m!1218591 () Bool)

(assert (=> b!1329832 m!1218591))

(assert (=> b!1329832 m!1218585))

(assert (=> b!1329832 m!1218589))

(declare-fun m!1218593 () Bool)

(assert (=> b!1329832 m!1218593))

(declare-fun m!1218595 () Bool)

(assert (=> b!1329832 m!1218595))

(declare-fun m!1218597 () Bool)

(assert (=> b!1329832 m!1218597))

(declare-fun m!1218599 () Bool)

(assert (=> start!112292 m!1218599))

(declare-fun m!1218601 () Bool)

(assert (=> start!112292 m!1218601))

(declare-fun m!1218603 () Bool)

(assert (=> start!112292 m!1218603))

(declare-fun m!1218605 () Bool)

(assert (=> mapNonEmpty!56515 m!1218605))

(assert (=> b!1329840 m!1218597))

(declare-fun m!1218607 () Bool)

(assert (=> b!1329835 m!1218607))

(assert (=> b!1329839 m!1218597))

(assert (=> b!1329839 m!1218597))

(declare-fun m!1218609 () Bool)

(assert (=> b!1329839 m!1218609))

(check-sat (not b!1329830) (not b_next!30651) (not start!112292) (not b!1329832) tp_is_empty!36561 (not b!1329835) (not b!1329838) b_and!49369 (not b!1329839) (not mapNonEmpty!56515) (not b_lambda!23921))
(check-sat b_and!49369 (not b_next!30651))
