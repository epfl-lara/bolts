; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112370 () Bool)

(assert start!112370)

(declare-fun b_free!30729 () Bool)

(declare-fun b_next!30729 () Bool)

(assert (=> start!112370 (= b_free!30729 (not b_next!30729))))

(declare-fun tp!107824 () Bool)

(declare-fun b_and!49523 () Bool)

(assert (=> start!112370 (= tp!107824 b_and!49523)))

(declare-fun b!1331312 () Bool)

(declare-fun res!883521 () Bool)

(declare-fun e!758640 () Bool)

(assert (=> b!1331312 (=> (not res!883521) (not e!758640))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331312 (= res!883521 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331313 () Bool)

(declare-fun e!758644 () Bool)

(declare-fun tp_is_empty!36639 () Bool)

(assert (=> b!1331313 (= e!758644 tp_is_empty!36639)))

(declare-fun b!1331314 () Bool)

(declare-fun e!758641 () Bool)

(declare-fun mapRes!56632 () Bool)

(assert (=> b!1331314 (= e!758641 (and e!758644 mapRes!56632))))

(declare-fun condMapEmpty!56632 () Bool)

(declare-datatypes ((V!53955 0))(
  ( (V!53956 (val!18394 Int)) )
))
(declare-datatypes ((ValueCell!17421 0))(
  ( (ValueCellFull!17421 (v!21029 V!53955)) (EmptyCell!17421) )
))
(declare-datatypes ((array!90129 0))(
  ( (array!90130 (arr!43526 (Array (_ BitVec 32) ValueCell!17421)) (size!44077 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90129)

(declare-fun mapDefault!56632 () ValueCell!17421)

(assert (=> b!1331314 (= condMapEmpty!56632 (= (arr!43526 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17421)) mapDefault!56632)))))

(declare-fun mapIsEmpty!56632 () Bool)

(assert (=> mapIsEmpty!56632 mapRes!56632))

(declare-fun b!1331315 () Bool)

(assert (=> b!1331315 (= e!758640 (not true))))

(declare-datatypes ((tuple2!23842 0))(
  ( (tuple2!23843 (_1!11931 (_ BitVec 64)) (_2!11931 V!53955)) )
))
(declare-datatypes ((List!31027 0))(
  ( (Nil!31024) (Cons!31023 (h!32232 tuple2!23842) (t!45176 List!31027)) )
))
(declare-datatypes ((ListLongMap!21511 0))(
  ( (ListLongMap!21512 (toList!10771 List!31027)) )
))
(declare-fun lt!591461 () ListLongMap!21511)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8871 (ListLongMap!21511 (_ BitVec 64)) Bool)

(assert (=> b!1331315 (contains!8871 lt!591461 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591460 () V!53955)

(declare-datatypes ((array!90131 0))(
  ( (array!90132 (arr!43527 (Array (_ BitVec 32) (_ BitVec 64))) (size!44078 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90131)

(declare-datatypes ((Unit!43751 0))(
  ( (Unit!43752) )
))
(declare-fun lt!591457 () Unit!43751)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!267 ((_ BitVec 64) (_ BitVec 64) V!53955 ListLongMap!21511) Unit!43751)

(assert (=> b!1331315 (= lt!591457 (lemmaInListMapAfterAddingDiffThenInBefore!267 k0!1153 (select (arr!43527 _keys!1590) from!1980) lt!591460 lt!591461))))

(declare-fun lt!591459 () ListLongMap!21511)

(assert (=> b!1331315 (contains!8871 lt!591459 k0!1153)))

(declare-fun lt!591458 () Unit!43751)

(declare-fun minValue!1262 () V!53955)

(assert (=> b!1331315 (= lt!591458 (lemmaInListMapAfterAddingDiffThenInBefore!267 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591459))))

(declare-fun +!4662 (ListLongMap!21511 tuple2!23842) ListLongMap!21511)

(assert (=> b!1331315 (= lt!591459 (+!4662 lt!591461 (tuple2!23843 (select (arr!43527 _keys!1590) from!1980) lt!591460)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21990 (ValueCell!17421 V!53955) V!53955)

(declare-fun dynLambda!3699 (Int (_ BitVec 64)) V!53955)

(assert (=> b!1331315 (= lt!591460 (get!21990 (select (arr!43526 _values!1320) from!1980) (dynLambda!3699 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53955)

(declare-fun getCurrentListMapNoExtraKeys!6380 (array!90131 array!90129 (_ BitVec 32) (_ BitVec 32) V!53955 V!53955 (_ BitVec 32) Int) ListLongMap!21511)

(assert (=> b!1331315 (= lt!591461 (getCurrentListMapNoExtraKeys!6380 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun res!883526 () Bool)

(assert (=> start!112370 (=> (not res!883526) (not e!758640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112370 (= res!883526 (validMask!0 mask!1998))))

(assert (=> start!112370 e!758640))

(declare-fun array_inv!32787 (array!90129) Bool)

(assert (=> start!112370 (and (array_inv!32787 _values!1320) e!758641)))

(assert (=> start!112370 true))

(declare-fun array_inv!32788 (array!90131) Bool)

(assert (=> start!112370 (array_inv!32788 _keys!1590)))

(assert (=> start!112370 tp!107824))

(assert (=> start!112370 tp_is_empty!36639))

(declare-fun b!1331316 () Bool)

(declare-fun res!883518 () Bool)

(assert (=> b!1331316 (=> (not res!883518) (not e!758640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331316 (= res!883518 (validKeyInArray!0 (select (arr!43527 _keys!1590) from!1980)))))

(declare-fun b!1331317 () Bool)

(declare-fun res!883525 () Bool)

(assert (=> b!1331317 (=> (not res!883525) (not e!758640))))

(assert (=> b!1331317 (= res!883525 (and (= (size!44077 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44078 _keys!1590) (size!44077 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331318 () Bool)

(declare-fun e!758643 () Bool)

(assert (=> b!1331318 (= e!758643 tp_is_empty!36639)))

(declare-fun b!1331319 () Bool)

(declare-fun res!883520 () Bool)

(assert (=> b!1331319 (=> (not res!883520) (not e!758640))))

(declare-fun getCurrentListMap!5694 (array!90131 array!90129 (_ BitVec 32) (_ BitVec 32) V!53955 V!53955 (_ BitVec 32) Int) ListLongMap!21511)

(assert (=> b!1331319 (= res!883520 (contains!8871 (getCurrentListMap!5694 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331320 () Bool)

(declare-fun res!883523 () Bool)

(assert (=> b!1331320 (=> (not res!883523) (not e!758640))))

(assert (=> b!1331320 (= res!883523 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44078 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56632 () Bool)

(declare-fun tp!107825 () Bool)

(assert (=> mapNonEmpty!56632 (= mapRes!56632 (and tp!107825 e!758643))))

(declare-fun mapRest!56632 () (Array (_ BitVec 32) ValueCell!17421))

(declare-fun mapKey!56632 () (_ BitVec 32))

(declare-fun mapValue!56632 () ValueCell!17421)

(assert (=> mapNonEmpty!56632 (= (arr!43526 _values!1320) (store mapRest!56632 mapKey!56632 mapValue!56632))))

(declare-fun b!1331321 () Bool)

(declare-fun res!883522 () Bool)

(assert (=> b!1331321 (=> (not res!883522) (not e!758640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90131 (_ BitVec 32)) Bool)

(assert (=> b!1331321 (= res!883522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331322 () Bool)

(declare-fun res!883519 () Bool)

(assert (=> b!1331322 (=> (not res!883519) (not e!758640))))

(declare-datatypes ((List!31028 0))(
  ( (Nil!31025) (Cons!31024 (h!32233 (_ BitVec 64)) (t!45177 List!31028)) )
))
(declare-fun arrayNoDuplicates!0 (array!90131 (_ BitVec 32) List!31028) Bool)

(assert (=> b!1331322 (= res!883519 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31025))))

(declare-fun b!1331323 () Bool)

(declare-fun res!883524 () Bool)

(assert (=> b!1331323 (=> (not res!883524) (not e!758640))))

(assert (=> b!1331323 (= res!883524 (not (= (select (arr!43527 _keys!1590) from!1980) k0!1153)))))

(assert (= (and start!112370 res!883526) b!1331317))

(assert (= (and b!1331317 res!883525) b!1331321))

(assert (= (and b!1331321 res!883522) b!1331322))

(assert (= (and b!1331322 res!883519) b!1331320))

(assert (= (and b!1331320 res!883523) b!1331319))

(assert (= (and b!1331319 res!883520) b!1331323))

(assert (= (and b!1331323 res!883524) b!1331316))

(assert (= (and b!1331316 res!883518) b!1331312))

(assert (= (and b!1331312 res!883521) b!1331315))

(assert (= (and b!1331314 condMapEmpty!56632) mapIsEmpty!56632))

(assert (= (and b!1331314 (not condMapEmpty!56632)) mapNonEmpty!56632))

(get-info :version)

(assert (= (and mapNonEmpty!56632 ((_ is ValueCellFull!17421) mapValue!56632)) b!1331318))

(assert (= (and b!1331314 ((_ is ValueCellFull!17421) mapDefault!56632)) b!1331313))

(assert (= start!112370 b!1331314))

(declare-fun b_lambda!23999 () Bool)

(assert (=> (not b_lambda!23999) (not b!1331315)))

(declare-fun t!45175 () Bool)

(declare-fun tb!11953 () Bool)

(assert (=> (and start!112370 (= defaultEntry!1323 defaultEntry!1323) t!45175) tb!11953))

(declare-fun result!24969 () Bool)

(assert (=> tb!11953 (= result!24969 tp_is_empty!36639)))

(assert (=> b!1331315 t!45175))

(declare-fun b_and!49525 () Bool)

(assert (= b_and!49523 (and (=> t!45175 result!24969) b_and!49525)))

(declare-fun m!1220015 () Bool)

(assert (=> mapNonEmpty!56632 m!1220015))

(declare-fun m!1220017 () Bool)

(assert (=> b!1331315 m!1220017))

(declare-fun m!1220019 () Bool)

(assert (=> b!1331315 m!1220019))

(declare-fun m!1220021 () Bool)

(assert (=> b!1331315 m!1220021))

(declare-fun m!1220023 () Bool)

(assert (=> b!1331315 m!1220023))

(declare-fun m!1220025 () Bool)

(assert (=> b!1331315 m!1220025))

(declare-fun m!1220027 () Bool)

(assert (=> b!1331315 m!1220027))

(declare-fun m!1220029 () Bool)

(assert (=> b!1331315 m!1220029))

(assert (=> b!1331315 m!1220019))

(declare-fun m!1220031 () Bool)

(assert (=> b!1331315 m!1220031))

(declare-fun m!1220033 () Bool)

(assert (=> b!1331315 m!1220033))

(assert (=> b!1331315 m!1220029))

(assert (=> b!1331315 m!1220027))

(declare-fun m!1220035 () Bool)

(assert (=> b!1331315 m!1220035))

(declare-fun m!1220037 () Bool)

(assert (=> b!1331319 m!1220037))

(assert (=> b!1331319 m!1220037))

(declare-fun m!1220039 () Bool)

(assert (=> b!1331319 m!1220039))

(assert (=> b!1331316 m!1220027))

(assert (=> b!1331316 m!1220027))

(declare-fun m!1220041 () Bool)

(assert (=> b!1331316 m!1220041))

(declare-fun m!1220043 () Bool)

(assert (=> b!1331321 m!1220043))

(declare-fun m!1220045 () Bool)

(assert (=> b!1331322 m!1220045))

(declare-fun m!1220047 () Bool)

(assert (=> start!112370 m!1220047))

(declare-fun m!1220049 () Bool)

(assert (=> start!112370 m!1220049))

(declare-fun m!1220051 () Bool)

(assert (=> start!112370 m!1220051))

(assert (=> b!1331323 m!1220027))

(check-sat (not b!1331316) (not mapNonEmpty!56632) (not start!112370) (not b!1331322) (not b!1331315) (not b_next!30729) tp_is_empty!36639 (not b!1331319) (not b_lambda!23999) b_and!49525 (not b!1331321))
(check-sat b_and!49525 (not b_next!30729))
