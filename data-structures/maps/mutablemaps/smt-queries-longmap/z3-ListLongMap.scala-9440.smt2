; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112286 () Bool)

(assert start!112286)

(declare-fun b_free!30645 () Bool)

(declare-fun b_next!30645 () Bool)

(assert (=> start!112286 (= b_free!30645 (not b_next!30645))))

(declare-fun tp!107572 () Bool)

(declare-fun b_and!49355 () Bool)

(assert (=> start!112286 (= tp!107572 b_and!49355)))

(declare-fun b!1329716 () Bool)

(declare-fun res!882389 () Bool)

(declare-fun e!758013 () Bool)

(assert (=> b!1329716 (=> (not res!882389) (not e!758013))))

(declare-datatypes ((V!53843 0))(
  ( (V!53844 (val!18352 Int)) )
))
(declare-datatypes ((ValueCell!17379 0))(
  ( (ValueCellFull!17379 (v!20987 V!53843)) (EmptyCell!17379) )
))
(declare-datatypes ((array!89965 0))(
  ( (array!89966 (arr!43444 (Array (_ BitVec 32) ValueCell!17379)) (size!43995 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89965)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89967 0))(
  ( (array!89968 (arr!43445 (Array (_ BitVec 32) (_ BitVec 64))) (size!43996 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89967)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53843)

(declare-fun zeroValue!1262 () V!53843)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23772 0))(
  ( (tuple2!23773 (_1!11896 (_ BitVec 64)) (_2!11896 V!53843)) )
))
(declare-datatypes ((List!30963 0))(
  ( (Nil!30960) (Cons!30959 (h!32168 tuple2!23772) (t!45028 List!30963)) )
))
(declare-datatypes ((ListLongMap!21441 0))(
  ( (ListLongMap!21442 (toList!10736 List!30963)) )
))
(declare-fun contains!8836 (ListLongMap!21441 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5668 (array!89967 array!89965 (_ BitVec 32) (_ BitVec 32) V!53843 V!53843 (_ BitVec 32) Int) ListLongMap!21441)

(assert (=> b!1329716 (= res!882389 (contains!8836 (getCurrentListMap!5668 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!882387 () Bool)

(assert (=> start!112286 (=> (not res!882387) (not e!758013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112286 (= res!882387 (validMask!0 mask!1998))))

(assert (=> start!112286 e!758013))

(declare-fun e!758011 () Bool)

(declare-fun array_inv!32727 (array!89965) Bool)

(assert (=> start!112286 (and (array_inv!32727 _values!1320) e!758011)))

(assert (=> start!112286 true))

(declare-fun array_inv!32728 (array!89967) Bool)

(assert (=> start!112286 (array_inv!32728 _keys!1590)))

(assert (=> start!112286 tp!107572))

(declare-fun tp_is_empty!36555 () Bool)

(assert (=> start!112286 tp_is_empty!36555))

(declare-fun mapNonEmpty!56506 () Bool)

(declare-fun mapRes!56506 () Bool)

(declare-fun tp!107573 () Bool)

(declare-fun e!758010 () Bool)

(assert (=> mapNonEmpty!56506 (= mapRes!56506 (and tp!107573 e!758010))))

(declare-fun mapRest!56506 () (Array (_ BitVec 32) ValueCell!17379))

(declare-fun mapKey!56506 () (_ BitVec 32))

(declare-fun mapValue!56506 () ValueCell!17379)

(assert (=> mapNonEmpty!56506 (= (arr!43444 _values!1320) (store mapRest!56506 mapKey!56506 mapValue!56506))))

(declare-fun b!1329717 () Bool)

(declare-fun res!882391 () Bool)

(assert (=> b!1329717 (=> (not res!882391) (not e!758013))))

(assert (=> b!1329717 (= res!882391 (and (= (size!43995 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43996 _keys!1590) (size!43995 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329718 () Bool)

(assert (=> b!1329718 (= e!758013 (not true))))

(declare-fun lt!590948 () ListLongMap!21441)

(assert (=> b!1329718 (contains!8836 lt!590948 k0!1153)))

(declare-datatypes ((Unit!43689 0))(
  ( (Unit!43690) )
))
(declare-fun lt!590947 () Unit!43689)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!236 ((_ BitVec 64) (_ BitVec 64) V!53843 ListLongMap!21441) Unit!43689)

(assert (=> b!1329718 (= lt!590947 (lemmaInListMapAfterAddingDiffThenInBefore!236 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590948))))

(declare-fun +!4631 (ListLongMap!21441 tuple2!23772) ListLongMap!21441)

(declare-fun getCurrentListMapNoExtraKeys!6349 (array!89967 array!89965 (_ BitVec 32) (_ BitVec 32) V!53843 V!53843 (_ BitVec 32) Int) ListLongMap!21441)

(declare-fun get!21931 (ValueCell!17379 V!53843) V!53843)

(declare-fun dynLambda!3668 (Int (_ BitVec 64)) V!53843)

(assert (=> b!1329718 (= lt!590948 (+!4631 (getCurrentListMapNoExtraKeys!6349 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23773 (select (arr!43445 _keys!1590) from!1980) (get!21931 (select (arr!43444 _values!1320) from!1980) (dynLambda!3668 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!56506 () Bool)

(assert (=> mapIsEmpty!56506 mapRes!56506))

(declare-fun b!1329719 () Bool)

(declare-fun e!758014 () Bool)

(assert (=> b!1329719 (= e!758011 (and e!758014 mapRes!56506))))

(declare-fun condMapEmpty!56506 () Bool)

(declare-fun mapDefault!56506 () ValueCell!17379)

(assert (=> b!1329719 (= condMapEmpty!56506 (= (arr!43444 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17379)) mapDefault!56506)))))

(declare-fun b!1329720 () Bool)

(declare-fun res!882384 () Bool)

(assert (=> b!1329720 (=> (not res!882384) (not e!758013))))

(assert (=> b!1329720 (= res!882384 (not (= (select (arr!43445 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329721 () Bool)

(declare-fun res!882390 () Bool)

(assert (=> b!1329721 (=> (not res!882390) (not e!758013))))

(declare-datatypes ((List!30964 0))(
  ( (Nil!30961) (Cons!30960 (h!32169 (_ BitVec 64)) (t!45029 List!30964)) )
))
(declare-fun arrayNoDuplicates!0 (array!89967 (_ BitVec 32) List!30964) Bool)

(assert (=> b!1329721 (= res!882390 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30961))))

(declare-fun b!1329722 () Bool)

(declare-fun res!882388 () Bool)

(assert (=> b!1329722 (=> (not res!882388) (not e!758013))))

(assert (=> b!1329722 (= res!882388 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329723 () Bool)

(assert (=> b!1329723 (= e!758014 tp_is_empty!36555)))

(declare-fun b!1329724 () Bool)

(declare-fun res!882392 () Bool)

(assert (=> b!1329724 (=> (not res!882392) (not e!758013))))

(assert (=> b!1329724 (= res!882392 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43996 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329725 () Bool)

(declare-fun res!882386 () Bool)

(assert (=> b!1329725 (=> (not res!882386) (not e!758013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329725 (= res!882386 (validKeyInArray!0 (select (arr!43445 _keys!1590) from!1980)))))

(declare-fun b!1329726 () Bool)

(assert (=> b!1329726 (= e!758010 tp_is_empty!36555)))

(declare-fun b!1329727 () Bool)

(declare-fun res!882385 () Bool)

(assert (=> b!1329727 (=> (not res!882385) (not e!758013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89967 (_ BitVec 32)) Bool)

(assert (=> b!1329727 (= res!882385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112286 res!882387) b!1329717))

(assert (= (and b!1329717 res!882391) b!1329727))

(assert (= (and b!1329727 res!882385) b!1329721))

(assert (= (and b!1329721 res!882390) b!1329724))

(assert (= (and b!1329724 res!882392) b!1329716))

(assert (= (and b!1329716 res!882389) b!1329720))

(assert (= (and b!1329720 res!882384) b!1329725))

(assert (= (and b!1329725 res!882386) b!1329722))

(assert (= (and b!1329722 res!882388) b!1329718))

(assert (= (and b!1329719 condMapEmpty!56506) mapIsEmpty!56506))

(assert (= (and b!1329719 (not condMapEmpty!56506)) mapNonEmpty!56506))

(get-info :version)

(assert (= (and mapNonEmpty!56506 ((_ is ValueCellFull!17379) mapValue!56506)) b!1329726))

(assert (= (and b!1329719 ((_ is ValueCellFull!17379) mapDefault!56506)) b!1329723))

(assert (= start!112286 b!1329719))

(declare-fun b_lambda!23915 () Bool)

(assert (=> (not b_lambda!23915) (not b!1329718)))

(declare-fun t!45027 () Bool)

(declare-fun tb!11869 () Bool)

(assert (=> (and start!112286 (= defaultEntry!1323 defaultEntry!1323) t!45027) tb!11869))

(declare-fun result!24801 () Bool)

(assert (=> tb!11869 (= result!24801 tp_is_empty!36555)))

(assert (=> b!1329718 t!45027))

(declare-fun b_and!49357 () Bool)

(assert (= b_and!49355 (and (=> t!45027 result!24801) b_and!49357)))

(declare-fun m!1218475 () Bool)

(assert (=> mapNonEmpty!56506 m!1218475))

(declare-fun m!1218477 () Bool)

(assert (=> b!1329727 m!1218477))

(declare-fun m!1218479 () Bool)

(assert (=> b!1329725 m!1218479))

(assert (=> b!1329725 m!1218479))

(declare-fun m!1218481 () Bool)

(assert (=> b!1329725 m!1218481))

(declare-fun m!1218483 () Bool)

(assert (=> b!1329721 m!1218483))

(declare-fun m!1218485 () Bool)

(assert (=> b!1329718 m!1218485))

(declare-fun m!1218487 () Bool)

(assert (=> b!1329718 m!1218487))

(declare-fun m!1218489 () Bool)

(assert (=> b!1329718 m!1218489))

(declare-fun m!1218491 () Bool)

(assert (=> b!1329718 m!1218491))

(declare-fun m!1218493 () Bool)

(assert (=> b!1329718 m!1218493))

(assert (=> b!1329718 m!1218487))

(declare-fun m!1218495 () Bool)

(assert (=> b!1329718 m!1218495))

(declare-fun m!1218497 () Bool)

(assert (=> b!1329718 m!1218497))

(assert (=> b!1329718 m!1218489))

(assert (=> b!1329718 m!1218493))

(assert (=> b!1329718 m!1218479))

(declare-fun m!1218499 () Bool)

(assert (=> b!1329716 m!1218499))

(assert (=> b!1329716 m!1218499))

(declare-fun m!1218501 () Bool)

(assert (=> b!1329716 m!1218501))

(assert (=> b!1329720 m!1218479))

(declare-fun m!1218503 () Bool)

(assert (=> start!112286 m!1218503))

(declare-fun m!1218505 () Bool)

(assert (=> start!112286 m!1218505))

(declare-fun m!1218507 () Bool)

(assert (=> start!112286 m!1218507))

(check-sat (not b_lambda!23915) (not b!1329721) (not b!1329718) (not b!1329725) (not mapNonEmpty!56506) (not b!1329716) (not start!112286) (not b!1329727) b_and!49357 (not b_next!30645) tp_is_empty!36555)
(check-sat b_and!49357 (not b_next!30645))
