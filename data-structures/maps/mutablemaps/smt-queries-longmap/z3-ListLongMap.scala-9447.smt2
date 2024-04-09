; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112328 () Bool)

(assert start!112328)

(declare-fun b_free!30687 () Bool)

(declare-fun b_next!30687 () Bool)

(assert (=> start!112328 (= b_free!30687 (not b_next!30687))))

(declare-fun tp!107699 () Bool)

(declare-fun b_and!49439 () Bool)

(assert (=> start!112328 (= tp!107699 b_and!49439)))

(declare-fun b!1330514 () Bool)

(declare-fun res!882959 () Bool)

(declare-fun e!758329 () Bool)

(assert (=> b!1330514 (=> (not res!882959) (not e!758329))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90047 0))(
  ( (array!90048 (arr!43485 (Array (_ BitVec 32) (_ BitVec 64))) (size!44036 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90047)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1330514 (= res!882959 (not (= (select (arr!43485 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330515 () Bool)

(declare-fun res!882955 () Bool)

(assert (=> b!1330515 (=> (not res!882955) (not e!758329))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330515 (= res!882955 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!882953 () Bool)

(assert (=> start!112328 (=> (not res!882953) (not e!758329))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112328 (= res!882953 (validMask!0 mask!1998))))

(assert (=> start!112328 e!758329))

(declare-datatypes ((V!53899 0))(
  ( (V!53900 (val!18373 Int)) )
))
(declare-datatypes ((ValueCell!17400 0))(
  ( (ValueCellFull!17400 (v!21008 V!53899)) (EmptyCell!17400) )
))
(declare-datatypes ((array!90049 0))(
  ( (array!90050 (arr!43486 (Array (_ BitVec 32) ValueCell!17400)) (size!44037 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90049)

(declare-fun e!758327 () Bool)

(declare-fun array_inv!32757 (array!90049) Bool)

(assert (=> start!112328 (and (array_inv!32757 _values!1320) e!758327)))

(assert (=> start!112328 true))

(declare-fun array_inv!32758 (array!90047) Bool)

(assert (=> start!112328 (array_inv!32758 _keys!1590)))

(assert (=> start!112328 tp!107699))

(declare-fun tp_is_empty!36597 () Bool)

(assert (=> start!112328 tp_is_empty!36597))

(declare-fun b!1330516 () Bool)

(declare-fun e!758325 () Bool)

(assert (=> b!1330516 (= e!758325 tp_is_empty!36597)))

(declare-fun b!1330517 () Bool)

(assert (=> b!1330517 (= e!758329 (not true))))

(declare-datatypes ((tuple2!23808 0))(
  ( (tuple2!23809 (_1!11914 (_ BitVec 64)) (_2!11914 V!53899)) )
))
(declare-datatypes ((List!30996 0))(
  ( (Nil!30993) (Cons!30992 (h!32201 tuple2!23808) (t!45103 List!30996)) )
))
(declare-datatypes ((ListLongMap!21477 0))(
  ( (ListLongMap!21478 (toList!10754 List!30996)) )
))
(declare-fun lt!591145 () ListLongMap!21477)

(declare-fun contains!8854 (ListLongMap!21477 (_ BitVec 64)) Bool)

(assert (=> b!1330517 (contains!8854 lt!591145 k0!1153)))

(declare-datatypes ((Unit!43719 0))(
  ( (Unit!43720) )
))
(declare-fun lt!591142 () Unit!43719)

(declare-fun lt!591143 () V!53899)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!251 ((_ BitVec 64) (_ BitVec 64) V!53899 ListLongMap!21477) Unit!43719)

(assert (=> b!1330517 (= lt!591142 (lemmaInListMapAfterAddingDiffThenInBefore!251 k0!1153 (select (arr!43485 _keys!1590) from!1980) lt!591143 lt!591145))))

(declare-fun lt!591144 () ListLongMap!21477)

(assert (=> b!1330517 (contains!8854 lt!591144 k0!1153)))

(declare-fun lt!591146 () Unit!43719)

(declare-fun minValue!1262 () V!53899)

(assert (=> b!1330517 (= lt!591146 (lemmaInListMapAfterAddingDiffThenInBefore!251 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591144))))

(declare-fun +!4646 (ListLongMap!21477 tuple2!23808) ListLongMap!21477)

(assert (=> b!1330517 (= lt!591144 (+!4646 lt!591145 (tuple2!23809 (select (arr!43485 _keys!1590) from!1980) lt!591143)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21960 (ValueCell!17400 V!53899) V!53899)

(declare-fun dynLambda!3683 (Int (_ BitVec 64)) V!53899)

(assert (=> b!1330517 (= lt!591143 (get!21960 (select (arr!43486 _values!1320) from!1980) (dynLambda!3683 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53899)

(declare-fun getCurrentListMapNoExtraKeys!6364 (array!90047 array!90049 (_ BitVec 32) (_ BitVec 32) V!53899 V!53899 (_ BitVec 32) Int) ListLongMap!21477)

(assert (=> b!1330517 (= lt!591145 (getCurrentListMapNoExtraKeys!6364 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330518 () Bool)

(declare-fun res!882956 () Bool)

(assert (=> b!1330518 (=> (not res!882956) (not e!758329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330518 (= res!882956 (validKeyInArray!0 (select (arr!43485 _keys!1590) from!1980)))))

(declare-fun b!1330519 () Bool)

(declare-fun res!882951 () Bool)

(assert (=> b!1330519 (=> (not res!882951) (not e!758329))))

(declare-fun getCurrentListMap!5682 (array!90047 array!90049 (_ BitVec 32) (_ BitVec 32) V!53899 V!53899 (_ BitVec 32) Int) ListLongMap!21477)

(assert (=> b!1330519 (= res!882951 (contains!8854 (getCurrentListMap!5682 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1330520 () Bool)

(declare-fun res!882952 () Bool)

(assert (=> b!1330520 (=> (not res!882952) (not e!758329))))

(assert (=> b!1330520 (= res!882952 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44036 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330521 () Bool)

(declare-fun res!882954 () Bool)

(assert (=> b!1330521 (=> (not res!882954) (not e!758329))))

(assert (=> b!1330521 (= res!882954 (and (= (size!44037 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44036 _keys!1590) (size!44037 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56569 () Bool)

(declare-fun mapRes!56569 () Bool)

(assert (=> mapIsEmpty!56569 mapRes!56569))

(declare-fun b!1330522 () Bool)

(declare-fun res!882958 () Bool)

(assert (=> b!1330522 (=> (not res!882958) (not e!758329))))

(declare-datatypes ((List!30997 0))(
  ( (Nil!30994) (Cons!30993 (h!32202 (_ BitVec 64)) (t!45104 List!30997)) )
))
(declare-fun arrayNoDuplicates!0 (array!90047 (_ BitVec 32) List!30997) Bool)

(assert (=> b!1330522 (= res!882958 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30994))))

(declare-fun b!1330523 () Bool)

(assert (=> b!1330523 (= e!758327 (and e!758325 mapRes!56569))))

(declare-fun condMapEmpty!56569 () Bool)

(declare-fun mapDefault!56569 () ValueCell!17400)

(assert (=> b!1330523 (= condMapEmpty!56569 (= (arr!43486 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17400)) mapDefault!56569)))))

(declare-fun b!1330524 () Bool)

(declare-fun e!758326 () Bool)

(assert (=> b!1330524 (= e!758326 tp_is_empty!36597)))

(declare-fun b!1330525 () Bool)

(declare-fun res!882957 () Bool)

(assert (=> b!1330525 (=> (not res!882957) (not e!758329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90047 (_ BitVec 32)) Bool)

(assert (=> b!1330525 (= res!882957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56569 () Bool)

(declare-fun tp!107698 () Bool)

(assert (=> mapNonEmpty!56569 (= mapRes!56569 (and tp!107698 e!758326))))

(declare-fun mapKey!56569 () (_ BitVec 32))

(declare-fun mapValue!56569 () ValueCell!17400)

(declare-fun mapRest!56569 () (Array (_ BitVec 32) ValueCell!17400))

(assert (=> mapNonEmpty!56569 (= (arr!43486 _values!1320) (store mapRest!56569 mapKey!56569 mapValue!56569))))

(assert (= (and start!112328 res!882953) b!1330521))

(assert (= (and b!1330521 res!882954) b!1330525))

(assert (= (and b!1330525 res!882957) b!1330522))

(assert (= (and b!1330522 res!882958) b!1330520))

(assert (= (and b!1330520 res!882952) b!1330519))

(assert (= (and b!1330519 res!882951) b!1330514))

(assert (= (and b!1330514 res!882959) b!1330518))

(assert (= (and b!1330518 res!882956) b!1330515))

(assert (= (and b!1330515 res!882955) b!1330517))

(assert (= (and b!1330523 condMapEmpty!56569) mapIsEmpty!56569))

(assert (= (and b!1330523 (not condMapEmpty!56569)) mapNonEmpty!56569))

(get-info :version)

(assert (= (and mapNonEmpty!56569 ((_ is ValueCellFull!17400) mapValue!56569)) b!1330524))

(assert (= (and b!1330523 ((_ is ValueCellFull!17400) mapDefault!56569)) b!1330516))

(assert (= start!112328 b!1330523))

(declare-fun b_lambda!23957 () Bool)

(assert (=> (not b_lambda!23957) (not b!1330517)))

(declare-fun t!45102 () Bool)

(declare-fun tb!11911 () Bool)

(assert (=> (and start!112328 (= defaultEntry!1323 defaultEntry!1323) t!45102) tb!11911))

(declare-fun result!24885 () Bool)

(assert (=> tb!11911 (= result!24885 tp_is_empty!36597)))

(assert (=> b!1330517 t!45102))

(declare-fun b_and!49441 () Bool)

(assert (= b_and!49439 (and (=> t!45102 result!24885) b_and!49441)))

(declare-fun m!1219217 () Bool)

(assert (=> b!1330514 m!1219217))

(declare-fun m!1219219 () Bool)

(assert (=> b!1330522 m!1219219))

(declare-fun m!1219221 () Bool)

(assert (=> start!112328 m!1219221))

(declare-fun m!1219223 () Bool)

(assert (=> start!112328 m!1219223))

(declare-fun m!1219225 () Bool)

(assert (=> start!112328 m!1219225))

(declare-fun m!1219227 () Bool)

(assert (=> b!1330519 m!1219227))

(assert (=> b!1330519 m!1219227))

(declare-fun m!1219229 () Bool)

(assert (=> b!1330519 m!1219229))

(declare-fun m!1219231 () Bool)

(assert (=> b!1330517 m!1219231))

(declare-fun m!1219233 () Bool)

(assert (=> b!1330517 m!1219233))

(declare-fun m!1219235 () Bool)

(assert (=> b!1330517 m!1219235))

(declare-fun m!1219237 () Bool)

(assert (=> b!1330517 m!1219237))

(declare-fun m!1219239 () Bool)

(assert (=> b!1330517 m!1219239))

(declare-fun m!1219241 () Bool)

(assert (=> b!1330517 m!1219241))

(declare-fun m!1219243 () Bool)

(assert (=> b!1330517 m!1219243))

(assert (=> b!1330517 m!1219235))

(assert (=> b!1330517 m!1219217))

(declare-fun m!1219245 () Bool)

(assert (=> b!1330517 m!1219245))

(assert (=> b!1330517 m!1219217))

(assert (=> b!1330517 m!1219237))

(declare-fun m!1219247 () Bool)

(assert (=> b!1330517 m!1219247))

(declare-fun m!1219249 () Bool)

(assert (=> b!1330525 m!1219249))

(declare-fun m!1219251 () Bool)

(assert (=> mapNonEmpty!56569 m!1219251))

(assert (=> b!1330518 m!1219217))

(assert (=> b!1330518 m!1219217))

(declare-fun m!1219253 () Bool)

(assert (=> b!1330518 m!1219253))

(check-sat (not b!1330519) (not b!1330518) tp_is_empty!36597 (not b_lambda!23957) (not b_next!30687) (not b!1330522) (not mapNonEmpty!56569) b_and!49441 (not b!1330525) (not b!1330517) (not start!112328))
(check-sat b_and!49441 (not b_next!30687))
