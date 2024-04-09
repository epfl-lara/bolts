; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112298 () Bool)

(assert start!112298)

(declare-fun b_free!30657 () Bool)

(declare-fun b_next!30657 () Bool)

(assert (=> start!112298 (= b_free!30657 (not b_next!30657))))

(declare-fun tp!107609 () Bool)

(declare-fun b_and!49379 () Bool)

(assert (=> start!112298 (= tp!107609 b_and!49379)))

(declare-fun b!1329944 () Bool)

(declare-fun e!758101 () Bool)

(declare-fun e!758100 () Bool)

(declare-fun mapRes!56524 () Bool)

(assert (=> b!1329944 (= e!758101 (and e!758100 mapRes!56524))))

(declare-fun condMapEmpty!56524 () Bool)

(declare-datatypes ((V!53859 0))(
  ( (V!53860 (val!18358 Int)) )
))
(declare-datatypes ((ValueCell!17385 0))(
  ( (ValueCellFull!17385 (v!20993 V!53859)) (EmptyCell!17385) )
))
(declare-datatypes ((array!89989 0))(
  ( (array!89990 (arr!43456 (Array (_ BitVec 32) ValueCell!17385)) (size!44007 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89989)

(declare-fun mapDefault!56524 () ValueCell!17385)

(assert (=> b!1329944 (= condMapEmpty!56524 (= (arr!43456 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17385)) mapDefault!56524)))))

(declare-fun b!1329945 () Bool)

(declare-fun res!882554 () Bool)

(declare-fun e!758103 () Bool)

(assert (=> b!1329945 (=> (not res!882554) (not e!758103))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89991 0))(
  ( (array!89992 (arr!43457 (Array (_ BitVec 32) (_ BitVec 64))) (size!44008 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89991)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1329945 (= res!882554 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44008 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329946 () Bool)

(declare-fun res!882552 () Bool)

(assert (=> b!1329946 (=> (not res!882552) (not e!758103))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53859)

(declare-fun zeroValue!1262 () V!53859)

(declare-datatypes ((tuple2!23784 0))(
  ( (tuple2!23785 (_1!11902 (_ BitVec 64)) (_2!11902 V!53859)) )
))
(declare-datatypes ((List!30974 0))(
  ( (Nil!30971) (Cons!30970 (h!32179 tuple2!23784) (t!45051 List!30974)) )
))
(declare-datatypes ((ListLongMap!21453 0))(
  ( (ListLongMap!21454 (toList!10742 List!30974)) )
))
(declare-fun contains!8842 (ListLongMap!21453 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5673 (array!89991 array!89989 (_ BitVec 32) (_ BitVec 32) V!53859 V!53859 (_ BitVec 32) Int) ListLongMap!21453)

(assert (=> b!1329946 (= res!882552 (contains!8842 (getCurrentListMap!5673 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1329947 () Bool)

(assert (=> b!1329947 (= e!758103 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!590984 () ListLongMap!21453)

(assert (=> b!1329947 (contains!8842 lt!590984 k0!1153)))

(declare-datatypes ((Unit!43701 0))(
  ( (Unit!43702) )
))
(declare-fun lt!590983 () Unit!43701)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!242 ((_ BitVec 64) (_ BitVec 64) V!53859 ListLongMap!21453) Unit!43701)

(assert (=> b!1329947 (= lt!590983 (lemmaInListMapAfterAddingDiffThenInBefore!242 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590984))))

(declare-fun +!4637 (ListLongMap!21453 tuple2!23784) ListLongMap!21453)

(declare-fun getCurrentListMapNoExtraKeys!6355 (array!89991 array!89989 (_ BitVec 32) (_ BitVec 32) V!53859 V!53859 (_ BitVec 32) Int) ListLongMap!21453)

(declare-fun get!21941 (ValueCell!17385 V!53859) V!53859)

(declare-fun dynLambda!3674 (Int (_ BitVec 64)) V!53859)

(assert (=> b!1329947 (= lt!590984 (+!4637 (getCurrentListMapNoExtraKeys!6355 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23785 (select (arr!43457 _keys!1590) from!1980) (get!21941 (select (arr!43456 _values!1320) from!1980) (dynLambda!3674 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329948 () Bool)

(declare-fun res!882547 () Bool)

(assert (=> b!1329948 (=> (not res!882547) (not e!758103))))

(assert (=> b!1329948 (= res!882547 (not (= (select (arr!43457 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapNonEmpty!56524 () Bool)

(declare-fun tp!107608 () Bool)

(declare-fun e!758102 () Bool)

(assert (=> mapNonEmpty!56524 (= mapRes!56524 (and tp!107608 e!758102))))

(declare-fun mapValue!56524 () ValueCell!17385)

(declare-fun mapRest!56524 () (Array (_ BitVec 32) ValueCell!17385))

(declare-fun mapKey!56524 () (_ BitVec 32))

(assert (=> mapNonEmpty!56524 (= (arr!43456 _values!1320) (store mapRest!56524 mapKey!56524 mapValue!56524))))

(declare-fun b!1329949 () Bool)

(declare-fun tp_is_empty!36567 () Bool)

(assert (=> b!1329949 (= e!758100 tp_is_empty!36567)))

(declare-fun b!1329950 () Bool)

(declare-fun res!882550 () Bool)

(assert (=> b!1329950 (=> (not res!882550) (not e!758103))))

(assert (=> b!1329950 (= res!882550 (and (= (size!44007 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44008 _keys!1590) (size!44007 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329951 () Bool)

(declare-fun res!882546 () Bool)

(assert (=> b!1329951 (=> (not res!882546) (not e!758103))))

(assert (=> b!1329951 (= res!882546 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329952 () Bool)

(declare-fun res!882549 () Bool)

(assert (=> b!1329952 (=> (not res!882549) (not e!758103))))

(declare-datatypes ((List!30975 0))(
  ( (Nil!30972) (Cons!30971 (h!32180 (_ BitVec 64)) (t!45052 List!30975)) )
))
(declare-fun arrayNoDuplicates!0 (array!89991 (_ BitVec 32) List!30975) Bool)

(assert (=> b!1329952 (= res!882549 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30972))))

(declare-fun b!1329953 () Bool)

(declare-fun res!882551 () Bool)

(assert (=> b!1329953 (=> (not res!882551) (not e!758103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329953 (= res!882551 (validKeyInArray!0 (select (arr!43457 _keys!1590) from!1980)))))

(declare-fun b!1329954 () Bool)

(declare-fun res!882553 () Bool)

(assert (=> b!1329954 (=> (not res!882553) (not e!758103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89991 (_ BitVec 32)) Bool)

(assert (=> b!1329954 (= res!882553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!882548 () Bool)

(assert (=> start!112298 (=> (not res!882548) (not e!758103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112298 (= res!882548 (validMask!0 mask!1998))))

(assert (=> start!112298 e!758103))

(declare-fun array_inv!32737 (array!89989) Bool)

(assert (=> start!112298 (and (array_inv!32737 _values!1320) e!758101)))

(assert (=> start!112298 true))

(declare-fun array_inv!32738 (array!89991) Bool)

(assert (=> start!112298 (array_inv!32738 _keys!1590)))

(assert (=> start!112298 tp!107609))

(assert (=> start!112298 tp_is_empty!36567))

(declare-fun mapIsEmpty!56524 () Bool)

(assert (=> mapIsEmpty!56524 mapRes!56524))

(declare-fun b!1329955 () Bool)

(assert (=> b!1329955 (= e!758102 tp_is_empty!36567)))

(assert (= (and start!112298 res!882548) b!1329950))

(assert (= (and b!1329950 res!882550) b!1329954))

(assert (= (and b!1329954 res!882553) b!1329952))

(assert (= (and b!1329952 res!882549) b!1329945))

(assert (= (and b!1329945 res!882554) b!1329946))

(assert (= (and b!1329946 res!882552) b!1329948))

(assert (= (and b!1329948 res!882547) b!1329953))

(assert (= (and b!1329953 res!882551) b!1329951))

(assert (= (and b!1329951 res!882546) b!1329947))

(assert (= (and b!1329944 condMapEmpty!56524) mapIsEmpty!56524))

(assert (= (and b!1329944 (not condMapEmpty!56524)) mapNonEmpty!56524))

(get-info :version)

(assert (= (and mapNonEmpty!56524 ((_ is ValueCellFull!17385) mapValue!56524)) b!1329955))

(assert (= (and b!1329944 ((_ is ValueCellFull!17385) mapDefault!56524)) b!1329949))

(assert (= start!112298 b!1329944))

(declare-fun b_lambda!23927 () Bool)

(assert (=> (not b_lambda!23927) (not b!1329947)))

(declare-fun t!45050 () Bool)

(declare-fun tb!11881 () Bool)

(assert (=> (and start!112298 (= defaultEntry!1323 defaultEntry!1323) t!45050) tb!11881))

(declare-fun result!24825 () Bool)

(assert (=> tb!11881 (= result!24825 tp_is_empty!36567)))

(assert (=> b!1329947 t!45050))

(declare-fun b_and!49381 () Bool)

(assert (= b_and!49379 (and (=> t!45050 result!24825) b_and!49381)))

(declare-fun m!1218679 () Bool)

(assert (=> b!1329952 m!1218679))

(declare-fun m!1218681 () Bool)

(assert (=> b!1329954 m!1218681))

(declare-fun m!1218683 () Bool)

(assert (=> start!112298 m!1218683))

(declare-fun m!1218685 () Bool)

(assert (=> start!112298 m!1218685))

(declare-fun m!1218687 () Bool)

(assert (=> start!112298 m!1218687))

(declare-fun m!1218689 () Bool)

(assert (=> b!1329953 m!1218689))

(assert (=> b!1329953 m!1218689))

(declare-fun m!1218691 () Bool)

(assert (=> b!1329953 m!1218691))

(declare-fun m!1218693 () Bool)

(assert (=> b!1329946 m!1218693))

(assert (=> b!1329946 m!1218693))

(declare-fun m!1218695 () Bool)

(assert (=> b!1329946 m!1218695))

(assert (=> b!1329948 m!1218689))

(declare-fun m!1218697 () Bool)

(assert (=> b!1329947 m!1218697))

(declare-fun m!1218699 () Bool)

(assert (=> b!1329947 m!1218699))

(declare-fun m!1218701 () Bool)

(assert (=> b!1329947 m!1218701))

(declare-fun m!1218703 () Bool)

(assert (=> b!1329947 m!1218703))

(assert (=> b!1329947 m!1218697))

(declare-fun m!1218705 () Bool)

(assert (=> b!1329947 m!1218705))

(assert (=> b!1329947 m!1218699))

(assert (=> b!1329947 m!1218703))

(declare-fun m!1218707 () Bool)

(assert (=> b!1329947 m!1218707))

(declare-fun m!1218709 () Bool)

(assert (=> b!1329947 m!1218709))

(assert (=> b!1329947 m!1218689))

(declare-fun m!1218711 () Bool)

(assert (=> mapNonEmpty!56524 m!1218711))

(check-sat b_and!49381 (not b!1329946) (not start!112298) (not b_next!30657) (not b!1329952) (not b!1329953) (not b!1329954) (not b_lambda!23927) (not mapNonEmpty!56524) tp_is_empty!36567 (not b!1329947))
(check-sat b_and!49381 (not b_next!30657))
