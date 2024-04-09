; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112280 () Bool)

(assert start!112280)

(declare-fun b_free!30639 () Bool)

(declare-fun b_next!30639 () Bool)

(assert (=> start!112280 (= b_free!30639 (not b_next!30639))))

(declare-fun tp!107554 () Bool)

(declare-fun b_and!49343 () Bool)

(assert (=> start!112280 (= tp!107554 b_and!49343)))

(declare-fun b!1329602 () Bool)

(declare-fun res!882311 () Bool)

(declare-fun e!757967 () Bool)

(assert (=> b!1329602 (=> (not res!882311) (not e!757967))))

(declare-datatypes ((V!53835 0))(
  ( (V!53836 (val!18349 Int)) )
))
(declare-datatypes ((ValueCell!17376 0))(
  ( (ValueCellFull!17376 (v!20984 V!53835)) (EmptyCell!17376) )
))
(declare-datatypes ((array!89953 0))(
  ( (array!89954 (arr!43438 (Array (_ BitVec 32) ValueCell!17376)) (size!43989 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89953)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89955 0))(
  ( (array!89956 (arr!43439 (Array (_ BitVec 32) (_ BitVec 64))) (size!43990 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89955)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53835)

(declare-fun zeroValue!1262 () V!53835)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23770 0))(
  ( (tuple2!23771 (_1!11895 (_ BitVec 64)) (_2!11895 V!53835)) )
))
(declare-datatypes ((List!30960 0))(
  ( (Nil!30957) (Cons!30956 (h!32165 tuple2!23770) (t!45019 List!30960)) )
))
(declare-datatypes ((ListLongMap!21439 0))(
  ( (ListLongMap!21440 (toList!10735 List!30960)) )
))
(declare-fun contains!8835 (ListLongMap!21439 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5667 (array!89955 array!89953 (_ BitVec 32) (_ BitVec 32) V!53835 V!53835 (_ BitVec 32) Int) ListLongMap!21439)

(assert (=> b!1329602 (= res!882311 (contains!8835 (getCurrentListMap!5667 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!882306 () Bool)

(assert (=> start!112280 (=> (not res!882306) (not e!757967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112280 (= res!882306 (validMask!0 mask!1998))))

(assert (=> start!112280 e!757967))

(declare-fun e!757966 () Bool)

(declare-fun array_inv!32723 (array!89953) Bool)

(assert (=> start!112280 (and (array_inv!32723 _values!1320) e!757966)))

(assert (=> start!112280 true))

(declare-fun array_inv!32724 (array!89955) Bool)

(assert (=> start!112280 (array_inv!32724 _keys!1590)))

(assert (=> start!112280 tp!107554))

(declare-fun tp_is_empty!36549 () Bool)

(assert (=> start!112280 tp_is_empty!36549))

(declare-fun mapNonEmpty!56497 () Bool)

(declare-fun mapRes!56497 () Bool)

(declare-fun tp!107555 () Bool)

(declare-fun e!757969 () Bool)

(assert (=> mapNonEmpty!56497 (= mapRes!56497 (and tp!107555 e!757969))))

(declare-fun mapKey!56497 () (_ BitVec 32))

(declare-fun mapRest!56497 () (Array (_ BitVec 32) ValueCell!17376))

(declare-fun mapValue!56497 () ValueCell!17376)

(assert (=> mapNonEmpty!56497 (= (arr!43438 _values!1320) (store mapRest!56497 mapKey!56497 mapValue!56497))))

(declare-fun b!1329603 () Bool)

(declare-fun res!882303 () Bool)

(assert (=> b!1329603 (=> (not res!882303) (not e!757967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89955 (_ BitVec 32)) Bool)

(assert (=> b!1329603 (= res!882303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329604 () Bool)

(declare-fun res!882304 () Bool)

(assert (=> b!1329604 (=> (not res!882304) (not e!757967))))

(declare-datatypes ((List!30961 0))(
  ( (Nil!30958) (Cons!30957 (h!32166 (_ BitVec 64)) (t!45020 List!30961)) )
))
(declare-fun arrayNoDuplicates!0 (array!89955 (_ BitVec 32) List!30961) Bool)

(assert (=> b!1329604 (= res!882304 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30958))))

(declare-fun b!1329605 () Bool)

(declare-fun e!757968 () Bool)

(assert (=> b!1329605 (= e!757968 tp_is_empty!36549)))

(declare-fun b!1329606 () Bool)

(assert (=> b!1329606 (= e!757966 (and e!757968 mapRes!56497))))

(declare-fun condMapEmpty!56497 () Bool)

(declare-fun mapDefault!56497 () ValueCell!17376)

(assert (=> b!1329606 (= condMapEmpty!56497 (= (arr!43438 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17376)) mapDefault!56497)))))

(declare-fun b!1329607 () Bool)

(assert (=> b!1329607 (= e!757967 (not true))))

(declare-fun lt!590930 () ListLongMap!21439)

(assert (=> b!1329607 (contains!8835 lt!590930 k0!1153)))

(declare-datatypes ((Unit!43687 0))(
  ( (Unit!43688) )
))
(declare-fun lt!590929 () Unit!43687)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!235 ((_ BitVec 64) (_ BitVec 64) V!53835 ListLongMap!21439) Unit!43687)

(assert (=> b!1329607 (= lt!590929 (lemmaInListMapAfterAddingDiffThenInBefore!235 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590930))))

(declare-fun +!4630 (ListLongMap!21439 tuple2!23770) ListLongMap!21439)

(declare-fun getCurrentListMapNoExtraKeys!6348 (array!89955 array!89953 (_ BitVec 32) (_ BitVec 32) V!53835 V!53835 (_ BitVec 32) Int) ListLongMap!21439)

(declare-fun get!21928 (ValueCell!17376 V!53835) V!53835)

(declare-fun dynLambda!3667 (Int (_ BitVec 64)) V!53835)

(assert (=> b!1329607 (= lt!590930 (+!4630 (getCurrentListMapNoExtraKeys!6348 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23771 (select (arr!43439 _keys!1590) from!1980) (get!21928 (select (arr!43438 _values!1320) from!1980) (dynLambda!3667 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329608 () Bool)

(declare-fun res!882307 () Bool)

(assert (=> b!1329608 (=> (not res!882307) (not e!757967))))

(assert (=> b!1329608 (= res!882307 (not (= (select (arr!43439 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329609 () Bool)

(assert (=> b!1329609 (= e!757969 tp_is_empty!36549)))

(declare-fun b!1329610 () Bool)

(declare-fun res!882305 () Bool)

(assert (=> b!1329610 (=> (not res!882305) (not e!757967))))

(assert (=> b!1329610 (= res!882305 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43990 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329611 () Bool)

(declare-fun res!882308 () Bool)

(assert (=> b!1329611 (=> (not res!882308) (not e!757967))))

(assert (=> b!1329611 (= res!882308 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329612 () Bool)

(declare-fun res!882310 () Bool)

(assert (=> b!1329612 (=> (not res!882310) (not e!757967))))

(assert (=> b!1329612 (= res!882310 (and (= (size!43989 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43990 _keys!1590) (size!43989 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329613 () Bool)

(declare-fun res!882309 () Bool)

(assert (=> b!1329613 (=> (not res!882309) (not e!757967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329613 (= res!882309 (validKeyInArray!0 (select (arr!43439 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!56497 () Bool)

(assert (=> mapIsEmpty!56497 mapRes!56497))

(assert (= (and start!112280 res!882306) b!1329612))

(assert (= (and b!1329612 res!882310) b!1329603))

(assert (= (and b!1329603 res!882303) b!1329604))

(assert (= (and b!1329604 res!882304) b!1329610))

(assert (= (and b!1329610 res!882305) b!1329602))

(assert (= (and b!1329602 res!882311) b!1329608))

(assert (= (and b!1329608 res!882307) b!1329613))

(assert (= (and b!1329613 res!882309) b!1329611))

(assert (= (and b!1329611 res!882308) b!1329607))

(assert (= (and b!1329606 condMapEmpty!56497) mapIsEmpty!56497))

(assert (= (and b!1329606 (not condMapEmpty!56497)) mapNonEmpty!56497))

(get-info :version)

(assert (= (and mapNonEmpty!56497 ((_ is ValueCellFull!17376) mapValue!56497)) b!1329609))

(assert (= (and b!1329606 ((_ is ValueCellFull!17376) mapDefault!56497)) b!1329605))

(assert (= start!112280 b!1329606))

(declare-fun b_lambda!23909 () Bool)

(assert (=> (not b_lambda!23909) (not b!1329607)))

(declare-fun t!45018 () Bool)

(declare-fun tb!11863 () Bool)

(assert (=> (and start!112280 (= defaultEntry!1323 defaultEntry!1323) t!45018) tb!11863))

(declare-fun result!24789 () Bool)

(assert (=> tb!11863 (= result!24789 tp_is_empty!36549)))

(assert (=> b!1329607 t!45018))

(declare-fun b_and!49345 () Bool)

(assert (= b_and!49343 (and (=> t!45018 result!24789) b_and!49345)))

(declare-fun m!1218373 () Bool)

(assert (=> b!1329603 m!1218373))

(declare-fun m!1218375 () Bool)

(assert (=> b!1329613 m!1218375))

(assert (=> b!1329613 m!1218375))

(declare-fun m!1218377 () Bool)

(assert (=> b!1329613 m!1218377))

(declare-fun m!1218379 () Bool)

(assert (=> start!112280 m!1218379))

(declare-fun m!1218381 () Bool)

(assert (=> start!112280 m!1218381))

(declare-fun m!1218383 () Bool)

(assert (=> start!112280 m!1218383))

(declare-fun m!1218385 () Bool)

(assert (=> b!1329607 m!1218385))

(declare-fun m!1218387 () Bool)

(assert (=> b!1329607 m!1218387))

(declare-fun m!1218389 () Bool)

(assert (=> b!1329607 m!1218389))

(declare-fun m!1218391 () Bool)

(assert (=> b!1329607 m!1218391))

(assert (=> b!1329607 m!1218389))

(declare-fun m!1218393 () Bool)

(assert (=> b!1329607 m!1218393))

(assert (=> b!1329607 m!1218375))

(assert (=> b!1329607 m!1218393))

(assert (=> b!1329607 m!1218387))

(declare-fun m!1218395 () Bool)

(assert (=> b!1329607 m!1218395))

(declare-fun m!1218397 () Bool)

(assert (=> b!1329607 m!1218397))

(declare-fun m!1218399 () Bool)

(assert (=> b!1329602 m!1218399))

(assert (=> b!1329602 m!1218399))

(declare-fun m!1218401 () Bool)

(assert (=> b!1329602 m!1218401))

(declare-fun m!1218403 () Bool)

(assert (=> mapNonEmpty!56497 m!1218403))

(declare-fun m!1218405 () Bool)

(assert (=> b!1329604 m!1218405))

(assert (=> b!1329608 m!1218375))

(check-sat (not b!1329613) (not b!1329602) tp_is_empty!36549 (not start!112280) (not mapNonEmpty!56497) b_and!49345 (not b!1329607) (not b_next!30639) (not b!1329604) (not b_lambda!23909) (not b!1329603))
(check-sat b_and!49345 (not b_next!30639))
