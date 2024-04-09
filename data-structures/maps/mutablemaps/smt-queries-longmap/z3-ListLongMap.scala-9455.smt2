; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112376 () Bool)

(assert start!112376)

(declare-fun b_free!30735 () Bool)

(declare-fun b_next!30735 () Bool)

(assert (=> start!112376 (= b_free!30735 (not b_next!30735))))

(declare-fun tp!107842 () Bool)

(declare-fun b_and!49535 () Bool)

(assert (=> start!112376 (= tp!107842 b_and!49535)))

(declare-fun b!1331426 () Bool)

(declare-fun e!758687 () Bool)

(declare-fun e!758686 () Bool)

(declare-fun mapRes!56641 () Bool)

(assert (=> b!1331426 (= e!758687 (and e!758686 mapRes!56641))))

(declare-fun condMapEmpty!56641 () Bool)

(declare-datatypes ((V!53963 0))(
  ( (V!53964 (val!18397 Int)) )
))
(declare-datatypes ((ValueCell!17424 0))(
  ( (ValueCellFull!17424 (v!21032 V!53963)) (EmptyCell!17424) )
))
(declare-datatypes ((array!90141 0))(
  ( (array!90142 (arr!43532 (Array (_ BitVec 32) ValueCell!17424)) (size!44083 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90141)

(declare-fun mapDefault!56641 () ValueCell!17424)

(assert (=> b!1331426 (= condMapEmpty!56641 (= (arr!43532 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17424)) mapDefault!56641)))))

(declare-fun b!1331427 () Bool)

(declare-fun res!883607 () Bool)

(declare-fun e!758685 () Bool)

(assert (=> b!1331427 (=> (not res!883607) (not e!758685))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90143 0))(
  ( (array!90144 (arr!43533 (Array (_ BitVec 32) (_ BitVec 64))) (size!44084 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90143)

(assert (=> b!1331427 (= res!883607 (and (= (size!44083 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44084 _keys!1590) (size!44083 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331428 () Bool)

(declare-fun res!883600 () Bool)

(assert (=> b!1331428 (=> (not res!883600) (not e!758685))))

(declare-datatypes ((List!31031 0))(
  ( (Nil!31028) (Cons!31027 (h!32236 (_ BitVec 64)) (t!45186 List!31031)) )
))
(declare-fun arrayNoDuplicates!0 (array!90143 (_ BitVec 32) List!31031) Bool)

(assert (=> b!1331428 (= res!883600 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31028))))

(declare-fun b!1331429 () Bool)

(declare-fun res!883601 () Bool)

(assert (=> b!1331429 (=> (not res!883601) (not e!758685))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1331429 (= res!883601 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44084 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56641 () Bool)

(declare-fun tp!107843 () Bool)

(declare-fun e!758688 () Bool)

(assert (=> mapNonEmpty!56641 (= mapRes!56641 (and tp!107843 e!758688))))

(declare-fun mapKey!56641 () (_ BitVec 32))

(declare-fun mapRest!56641 () (Array (_ BitVec 32) ValueCell!17424))

(declare-fun mapValue!56641 () ValueCell!17424)

(assert (=> mapNonEmpty!56641 (= (arr!43532 _values!1320) (store mapRest!56641 mapKey!56641 mapValue!56641))))

(declare-fun mapIsEmpty!56641 () Bool)

(assert (=> mapIsEmpty!56641 mapRes!56641))

(declare-fun res!883602 () Bool)

(assert (=> start!112376 (=> (not res!883602) (not e!758685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112376 (= res!883602 (validMask!0 mask!1998))))

(assert (=> start!112376 e!758685))

(declare-fun array_inv!32789 (array!90141) Bool)

(assert (=> start!112376 (and (array_inv!32789 _values!1320) e!758687)))

(assert (=> start!112376 true))

(declare-fun array_inv!32790 (array!90143) Bool)

(assert (=> start!112376 (array_inv!32790 _keys!1590)))

(assert (=> start!112376 tp!107842))

(declare-fun tp_is_empty!36645 () Bool)

(assert (=> start!112376 tp_is_empty!36645))

(declare-fun b!1331430 () Bool)

(declare-fun res!883606 () Bool)

(assert (=> b!1331430 (=> (not res!883606) (not e!758685))))

(assert (=> b!1331430 (= res!883606 (not (= (select (arr!43533 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1331431 () Bool)

(declare-fun res!883604 () Bool)

(assert (=> b!1331431 (=> (not res!883604) (not e!758685))))

(assert (=> b!1331431 (= res!883604 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331432 () Bool)

(assert (=> b!1331432 (= e!758688 tp_is_empty!36645)))

(declare-fun b!1331433 () Bool)

(declare-fun res!883599 () Bool)

(assert (=> b!1331433 (=> (not res!883599) (not e!758685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90143 (_ BitVec 32)) Bool)

(assert (=> b!1331433 (= res!883599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331434 () Bool)

(declare-fun res!883605 () Bool)

(assert (=> b!1331434 (=> (not res!883605) (not e!758685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331434 (= res!883605 (validKeyInArray!0 (select (arr!43533 _keys!1590) from!1980)))))

(declare-fun b!1331435 () Bool)

(assert (=> b!1331435 (= e!758686 tp_is_empty!36645)))

(declare-fun b!1331436 () Bool)

(declare-fun res!883603 () Bool)

(assert (=> b!1331436 (=> (not res!883603) (not e!758685))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53963)

(declare-fun zeroValue!1262 () V!53963)

(declare-datatypes ((tuple2!23846 0))(
  ( (tuple2!23847 (_1!11933 (_ BitVec 64)) (_2!11933 V!53963)) )
))
(declare-datatypes ((List!31032 0))(
  ( (Nil!31029) (Cons!31028 (h!32237 tuple2!23846) (t!45187 List!31032)) )
))
(declare-datatypes ((ListLongMap!21515 0))(
  ( (ListLongMap!21516 (toList!10773 List!31032)) )
))
(declare-fun contains!8873 (ListLongMap!21515 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5696 (array!90143 array!90141 (_ BitVec 32) (_ BitVec 32) V!53963 V!53963 (_ BitVec 32) Int) ListLongMap!21515)

(assert (=> b!1331436 (= res!883603 (contains!8873 (getCurrentListMap!5696 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331437 () Bool)

(assert (=> b!1331437 (= e!758685 (not true))))

(declare-fun lt!591512 () ListLongMap!21515)

(declare-fun +!4664 (ListLongMap!21515 tuple2!23846) ListLongMap!21515)

(assert (=> b!1331437 (contains!8873 (+!4664 lt!591512 (tuple2!23847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43755 0))(
  ( (Unit!43756) )
))
(declare-fun lt!591507 () Unit!43755)

(declare-fun addStillContains!1174 (ListLongMap!21515 (_ BitVec 64) V!53963 (_ BitVec 64)) Unit!43755)

(assert (=> b!1331437 (= lt!591507 (addStillContains!1174 lt!591512 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331437 (contains!8873 lt!591512 k0!1153)))

(declare-fun lt!591511 () Unit!43755)

(declare-fun lt!591509 () V!53963)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!269 ((_ BitVec 64) (_ BitVec 64) V!53963 ListLongMap!21515) Unit!43755)

(assert (=> b!1331437 (= lt!591511 (lemmaInListMapAfterAddingDiffThenInBefore!269 k0!1153 (select (arr!43533 _keys!1590) from!1980) lt!591509 lt!591512))))

(declare-fun lt!591508 () ListLongMap!21515)

(assert (=> b!1331437 (contains!8873 lt!591508 k0!1153)))

(declare-fun lt!591510 () Unit!43755)

(assert (=> b!1331437 (= lt!591510 (lemmaInListMapAfterAddingDiffThenInBefore!269 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591508))))

(assert (=> b!1331437 (= lt!591508 (+!4664 lt!591512 (tuple2!23847 (select (arr!43533 _keys!1590) from!1980) lt!591509)))))

(declare-fun get!21994 (ValueCell!17424 V!53963) V!53963)

(declare-fun dynLambda!3701 (Int (_ BitVec 64)) V!53963)

(assert (=> b!1331437 (= lt!591509 (get!21994 (select (arr!43532 _values!1320) from!1980) (dynLambda!3701 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6382 (array!90143 array!90141 (_ BitVec 32) (_ BitVec 32) V!53963 V!53963 (_ BitVec 32) Int) ListLongMap!21515)

(assert (=> b!1331437 (= lt!591512 (getCurrentListMapNoExtraKeys!6382 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(assert (= (and start!112376 res!883602) b!1331427))

(assert (= (and b!1331427 res!883607) b!1331433))

(assert (= (and b!1331433 res!883599) b!1331428))

(assert (= (and b!1331428 res!883600) b!1331429))

(assert (= (and b!1331429 res!883601) b!1331436))

(assert (= (and b!1331436 res!883603) b!1331430))

(assert (= (and b!1331430 res!883606) b!1331434))

(assert (= (and b!1331434 res!883605) b!1331431))

(assert (= (and b!1331431 res!883604) b!1331437))

(assert (= (and b!1331426 condMapEmpty!56641) mapIsEmpty!56641))

(assert (= (and b!1331426 (not condMapEmpty!56641)) mapNonEmpty!56641))

(get-info :version)

(assert (= (and mapNonEmpty!56641 ((_ is ValueCellFull!17424) mapValue!56641)) b!1331432))

(assert (= (and b!1331426 ((_ is ValueCellFull!17424) mapDefault!56641)) b!1331435))

(assert (= start!112376 b!1331426))

(declare-fun b_lambda!24005 () Bool)

(assert (=> (not b_lambda!24005) (not b!1331437)))

(declare-fun t!45185 () Bool)

(declare-fun tb!11959 () Bool)

(assert (=> (and start!112376 (= defaultEntry!1323 defaultEntry!1323) t!45185) tb!11959))

(declare-fun result!24981 () Bool)

(assert (=> tb!11959 (= result!24981 tp_is_empty!36645)))

(assert (=> b!1331437 t!45185))

(declare-fun b_and!49537 () Bool)

(assert (= b_and!49535 (and (=> t!45185 result!24981) b_and!49537)))

(declare-fun m!1220135 () Bool)

(assert (=> b!1331430 m!1220135))

(declare-fun m!1220137 () Bool)

(assert (=> b!1331433 m!1220137))

(declare-fun m!1220139 () Bool)

(assert (=> mapNonEmpty!56641 m!1220139))

(declare-fun m!1220141 () Bool)

(assert (=> b!1331437 m!1220141))

(declare-fun m!1220143 () Bool)

(assert (=> b!1331437 m!1220143))

(declare-fun m!1220145 () Bool)

(assert (=> b!1331437 m!1220145))

(declare-fun m!1220147 () Bool)

(assert (=> b!1331437 m!1220147))

(declare-fun m!1220149 () Bool)

(assert (=> b!1331437 m!1220149))

(declare-fun m!1220151 () Bool)

(assert (=> b!1331437 m!1220151))

(declare-fun m!1220153 () Bool)

(assert (=> b!1331437 m!1220153))

(declare-fun m!1220155 () Bool)

(assert (=> b!1331437 m!1220155))

(assert (=> b!1331437 m!1220147))

(declare-fun m!1220157 () Bool)

(assert (=> b!1331437 m!1220157))

(assert (=> b!1331437 m!1220153))

(assert (=> b!1331437 m!1220143))

(declare-fun m!1220159 () Bool)

(assert (=> b!1331437 m!1220159))

(assert (=> b!1331437 m!1220135))

(declare-fun m!1220161 () Bool)

(assert (=> b!1331437 m!1220161))

(declare-fun m!1220163 () Bool)

(assert (=> b!1331437 m!1220163))

(assert (=> b!1331437 m!1220135))

(declare-fun m!1220165 () Bool)

(assert (=> b!1331436 m!1220165))

(assert (=> b!1331436 m!1220165))

(declare-fun m!1220167 () Bool)

(assert (=> b!1331436 m!1220167))

(declare-fun m!1220169 () Bool)

(assert (=> b!1331428 m!1220169))

(assert (=> b!1331434 m!1220135))

(assert (=> b!1331434 m!1220135))

(declare-fun m!1220171 () Bool)

(assert (=> b!1331434 m!1220171))

(declare-fun m!1220173 () Bool)

(assert (=> start!112376 m!1220173))

(declare-fun m!1220175 () Bool)

(assert (=> start!112376 m!1220175))

(declare-fun m!1220177 () Bool)

(assert (=> start!112376 m!1220177))

(check-sat b_and!49537 (not b!1331434) (not b_lambda!24005) (not b!1331436) (not b!1331437) tp_is_empty!36645 (not start!112376) (not b_next!30735) (not mapNonEmpty!56641) (not b!1331433) (not b!1331428))
(check-sat b_and!49537 (not b_next!30735))
