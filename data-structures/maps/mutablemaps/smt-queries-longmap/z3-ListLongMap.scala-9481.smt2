; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112532 () Bool)

(assert start!112532)

(declare-fun b_free!30891 () Bool)

(declare-fun b_next!30891 () Bool)

(assert (=> start!112532 (= b_free!30891 (not b_next!30891))))

(declare-fun tp!108311 () Bool)

(declare-fun b_and!49793 () Bool)

(assert (=> start!112532 (= tp!108311 b_and!49793)))

(declare-fun mapNonEmpty!56875 () Bool)

(declare-fun mapRes!56875 () Bool)

(declare-fun tp!108310 () Bool)

(declare-fun e!759914 () Bool)

(assert (=> mapNonEmpty!56875 (= mapRes!56875 (and tp!108310 e!759914))))

(declare-datatypes ((V!54171 0))(
  ( (V!54172 (val!18475 Int)) )
))
(declare-datatypes ((ValueCell!17502 0))(
  ( (ValueCellFull!17502 (v!21110 V!54171)) (EmptyCell!17502) )
))
(declare-datatypes ((array!90447 0))(
  ( (array!90448 (arr!43685 (Array (_ BitVec 32) ValueCell!17502)) (size!44236 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90447)

(declare-fun mapValue!56875 () ValueCell!17502)

(declare-fun mapRest!56875 () (Array (_ BitVec 32) ValueCell!17502))

(declare-fun mapKey!56875 () (_ BitVec 32))

(assert (=> mapNonEmpty!56875 (= (arr!43685 _values!1320) (store mapRest!56875 mapKey!56875 mapValue!56875))))

(declare-fun b!1334157 () Bool)

(declare-fun e!759918 () Bool)

(declare-fun e!759916 () Bool)

(assert (=> b!1334157 (= e!759918 e!759916)))

(declare-fun res!885530 () Bool)

(assert (=> b!1334157 (=> (not res!885530) (not e!759916))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592230 () V!54171)

(declare-datatypes ((array!90449 0))(
  ( (array!90450 (arr!43686 (Array (_ BitVec 32) (_ BitVec 64))) (size!44237 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90449)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!23976 0))(
  ( (tuple2!23977 (_1!11998 (_ BitVec 64)) (_2!11998 V!54171)) )
))
(declare-datatypes ((List!31148 0))(
  ( (Nil!31145) (Cons!31144 (h!32353 tuple2!23976) (t!45405 List!31148)) )
))
(declare-datatypes ((ListLongMap!21645 0))(
  ( (ListLongMap!21646 (toList!10838 List!31148)) )
))
(declare-fun lt!592232 () ListLongMap!21645)

(declare-fun contains!8938 (ListLongMap!21645 (_ BitVec 64)) Bool)

(declare-fun +!4699 (ListLongMap!21645 tuple2!23976) ListLongMap!21645)

(assert (=> b!1334157 (= res!885530 (contains!8938 (+!4699 lt!592232 (tuple2!23977 (select (arr!43686 _keys!1590) from!1980) lt!592230)) k0!1153))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54171)

(declare-fun zeroValue!1262 () V!54171)

(declare-fun getCurrentListMapNoExtraKeys!6417 (array!90449 array!90447 (_ BitVec 32) (_ BitVec 32) V!54171 V!54171 (_ BitVec 32) Int) ListLongMap!21645)

(assert (=> b!1334157 (= lt!592232 (getCurrentListMapNoExtraKeys!6417 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22081 (ValueCell!17502 V!54171) V!54171)

(declare-fun dynLambda!3736 (Int (_ BitVec 64)) V!54171)

(assert (=> b!1334157 (= lt!592230 (get!22081 (select (arr!43685 _values!1320) from!1980) (dynLambda!3736 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334158 () Bool)

(assert (=> b!1334158 (= e!759916 (not true))))

(assert (=> b!1334158 (contains!8938 lt!592232 k0!1153)))

(declare-datatypes ((Unit!43819 0))(
  ( (Unit!43820) )
))
(declare-fun lt!592231 () Unit!43819)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!301 ((_ BitVec 64) (_ BitVec 64) V!54171 ListLongMap!21645) Unit!43819)

(assert (=> b!1334158 (= lt!592231 (lemmaInListMapAfterAddingDiffThenInBefore!301 k0!1153 (select (arr!43686 _keys!1590) from!1980) lt!592230 lt!592232))))

(declare-fun mapIsEmpty!56875 () Bool)

(assert (=> mapIsEmpty!56875 mapRes!56875))

(declare-fun b!1334159 () Bool)

(declare-fun tp_is_empty!36801 () Bool)

(assert (=> b!1334159 (= e!759914 tp_is_empty!36801)))

(declare-fun b!1334160 () Bool)

(declare-fun e!759919 () Bool)

(assert (=> b!1334160 (= e!759919 tp_is_empty!36801)))

(declare-fun b!1334161 () Bool)

(declare-fun res!885535 () Bool)

(assert (=> b!1334161 (=> (not res!885535) (not e!759918))))

(assert (=> b!1334161 (= res!885535 (and (= (size!44236 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44237 _keys!1590) (size!44236 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334162 () Bool)

(declare-fun res!885527 () Bool)

(assert (=> b!1334162 (=> (not res!885527) (not e!759918))))

(declare-datatypes ((List!31149 0))(
  ( (Nil!31146) (Cons!31145 (h!32354 (_ BitVec 64)) (t!45406 List!31149)) )
))
(declare-fun arrayNoDuplicates!0 (array!90449 (_ BitVec 32) List!31149) Bool)

(assert (=> b!1334162 (= res!885527 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31146))))

(declare-fun b!1334164 () Bool)

(declare-fun res!885536 () Bool)

(assert (=> b!1334164 (=> (not res!885536) (not e!759918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334164 (= res!885536 (validKeyInArray!0 (select (arr!43686 _keys!1590) from!1980)))))

(declare-fun b!1334165 () Bool)

(declare-fun res!885529 () Bool)

(assert (=> b!1334165 (=> (not res!885529) (not e!759918))))

(assert (=> b!1334165 (= res!885529 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334166 () Bool)

(declare-fun res!885526 () Bool)

(assert (=> b!1334166 (=> (not res!885526) (not e!759918))))

(declare-fun getCurrentListMap!5752 (array!90449 array!90447 (_ BitVec 32) (_ BitVec 32) V!54171 V!54171 (_ BitVec 32) Int) ListLongMap!21645)

(assert (=> b!1334166 (= res!885526 (contains!8938 (getCurrentListMap!5752 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1334167 () Bool)

(declare-fun res!885532 () Bool)

(assert (=> b!1334167 (=> (not res!885532) (not e!759916))))

(assert (=> b!1334167 (= res!885532 (not (= k0!1153 (select (arr!43686 _keys!1590) from!1980))))))

(declare-fun b!1334168 () Bool)

(declare-fun res!885534 () Bool)

(assert (=> b!1334168 (=> (not res!885534) (not e!759918))))

(assert (=> b!1334168 (= res!885534 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44237 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334169 () Bool)

(declare-fun e!759915 () Bool)

(assert (=> b!1334169 (= e!759915 (and e!759919 mapRes!56875))))

(declare-fun condMapEmpty!56875 () Bool)

(declare-fun mapDefault!56875 () ValueCell!17502)

(assert (=> b!1334169 (= condMapEmpty!56875 (= (arr!43685 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17502)) mapDefault!56875)))))

(declare-fun b!1334170 () Bool)

(declare-fun res!885533 () Bool)

(assert (=> b!1334170 (=> (not res!885533) (not e!759918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90449 (_ BitVec 32)) Bool)

(assert (=> b!1334170 (= res!885533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!885528 () Bool)

(assert (=> start!112532 (=> (not res!885528) (not e!759918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112532 (= res!885528 (validMask!0 mask!1998))))

(assert (=> start!112532 e!759918))

(declare-fun array_inv!32885 (array!90447) Bool)

(assert (=> start!112532 (and (array_inv!32885 _values!1320) e!759915)))

(assert (=> start!112532 true))

(declare-fun array_inv!32886 (array!90449) Bool)

(assert (=> start!112532 (array_inv!32886 _keys!1590)))

(assert (=> start!112532 tp!108311))

(assert (=> start!112532 tp_is_empty!36801))

(declare-fun b!1334163 () Bool)

(declare-fun res!885531 () Bool)

(assert (=> b!1334163 (=> (not res!885531) (not e!759918))))

(assert (=> b!1334163 (= res!885531 (not (= (select (arr!43686 _keys!1590) from!1980) k0!1153)))))

(assert (= (and start!112532 res!885528) b!1334161))

(assert (= (and b!1334161 res!885535) b!1334170))

(assert (= (and b!1334170 res!885533) b!1334162))

(assert (= (and b!1334162 res!885527) b!1334168))

(assert (= (and b!1334168 res!885534) b!1334166))

(assert (= (and b!1334166 res!885526) b!1334163))

(assert (= (and b!1334163 res!885531) b!1334164))

(assert (= (and b!1334164 res!885536) b!1334165))

(assert (= (and b!1334165 res!885529) b!1334157))

(assert (= (and b!1334157 res!885530) b!1334167))

(assert (= (and b!1334167 res!885532) b!1334158))

(assert (= (and b!1334169 condMapEmpty!56875) mapIsEmpty!56875))

(assert (= (and b!1334169 (not condMapEmpty!56875)) mapNonEmpty!56875))

(get-info :version)

(assert (= (and mapNonEmpty!56875 ((_ is ValueCellFull!17502) mapValue!56875)) b!1334159))

(assert (= (and b!1334169 ((_ is ValueCellFull!17502) mapDefault!56875)) b!1334160))

(assert (= start!112532 b!1334169))

(declare-fun b_lambda!24107 () Bool)

(assert (=> (not b_lambda!24107) (not b!1334157)))

(declare-fun t!45404 () Bool)

(declare-fun tb!12061 () Bool)

(assert (=> (and start!112532 (= defaultEntry!1323 defaultEntry!1323) t!45404) tb!12061))

(declare-fun result!25185 () Bool)

(assert (=> tb!12061 (= result!25185 tp_is_empty!36801)))

(assert (=> b!1334157 t!45404))

(declare-fun b_and!49795 () Bool)

(assert (= b_and!49793 (and (=> t!45404 result!25185) b_and!49795)))

(declare-fun m!1222599 () Bool)

(assert (=> b!1334167 m!1222599))

(declare-fun m!1222601 () Bool)

(assert (=> start!112532 m!1222601))

(declare-fun m!1222603 () Bool)

(assert (=> start!112532 m!1222603))

(declare-fun m!1222605 () Bool)

(assert (=> start!112532 m!1222605))

(declare-fun m!1222607 () Bool)

(assert (=> b!1334157 m!1222607))

(declare-fun m!1222609 () Bool)

(assert (=> b!1334157 m!1222609))

(assert (=> b!1334157 m!1222607))

(declare-fun m!1222611 () Bool)

(assert (=> b!1334157 m!1222611))

(declare-fun m!1222613 () Bool)

(assert (=> b!1334157 m!1222613))

(declare-fun m!1222615 () Bool)

(assert (=> b!1334157 m!1222615))

(assert (=> b!1334157 m!1222613))

(declare-fun m!1222617 () Bool)

(assert (=> b!1334157 m!1222617))

(assert (=> b!1334157 m!1222609))

(assert (=> b!1334157 m!1222599))

(assert (=> b!1334163 m!1222599))

(declare-fun m!1222619 () Bool)

(assert (=> b!1334170 m!1222619))

(declare-fun m!1222621 () Bool)

(assert (=> b!1334166 m!1222621))

(assert (=> b!1334166 m!1222621))

(declare-fun m!1222623 () Bool)

(assert (=> b!1334166 m!1222623))

(declare-fun m!1222625 () Bool)

(assert (=> mapNonEmpty!56875 m!1222625))

(declare-fun m!1222627 () Bool)

(assert (=> b!1334162 m!1222627))

(declare-fun m!1222629 () Bool)

(assert (=> b!1334158 m!1222629))

(assert (=> b!1334158 m!1222599))

(assert (=> b!1334158 m!1222599))

(declare-fun m!1222631 () Bool)

(assert (=> b!1334158 m!1222631))

(assert (=> b!1334164 m!1222599))

(assert (=> b!1334164 m!1222599))

(declare-fun m!1222633 () Bool)

(assert (=> b!1334164 m!1222633))

(check-sat (not start!112532) (not b!1334162) (not b_lambda!24107) tp_is_empty!36801 (not mapNonEmpty!56875) (not b!1334164) (not b_next!30891) (not b!1334170) b_and!49795 (not b!1334166) (not b!1334158) (not b!1334157))
(check-sat b_and!49795 (not b_next!30891))
