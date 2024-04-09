; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112352 () Bool)

(assert start!112352)

(declare-fun b_free!30711 () Bool)

(declare-fun b_next!30711 () Bool)

(assert (=> start!112352 (= b_free!30711 (not b_next!30711))))

(declare-fun tp!107770 () Bool)

(declare-fun b_and!49487 () Bool)

(assert (=> start!112352 (= tp!107770 b_and!49487)))

(declare-fun mapNonEmpty!56605 () Bool)

(declare-fun mapRes!56605 () Bool)

(declare-fun tp!107771 () Bool)

(declare-fun e!758505 () Bool)

(assert (=> mapNonEmpty!56605 (= mapRes!56605 (and tp!107771 e!758505))))

(declare-datatypes ((V!53931 0))(
  ( (V!53932 (val!18385 Int)) )
))
(declare-datatypes ((ValueCell!17412 0))(
  ( (ValueCellFull!17412 (v!21020 V!53931)) (EmptyCell!17412) )
))
(declare-datatypes ((array!90093 0))(
  ( (array!90094 (arr!43508 (Array (_ BitVec 32) ValueCell!17412)) (size!44059 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90093)

(declare-fun mapRest!56605 () (Array (_ BitVec 32) ValueCell!17412))

(declare-fun mapValue!56605 () ValueCell!17412)

(declare-fun mapKey!56605 () (_ BitVec 32))

(assert (=> mapNonEmpty!56605 (= (arr!43508 _values!1320) (store mapRest!56605 mapKey!56605 mapValue!56605))))

(declare-fun b!1330971 () Bool)

(declare-fun e!758509 () Bool)

(assert (=> b!1330971 (= e!758509 (not true))))

(declare-datatypes ((tuple2!23828 0))(
  ( (tuple2!23829 (_1!11924 (_ BitVec 64)) (_2!11924 V!53931)) )
))
(declare-datatypes ((List!31014 0))(
  ( (Nil!31011) (Cons!31010 (h!32219 tuple2!23828) (t!45145 List!31014)) )
))
(declare-datatypes ((ListLongMap!21497 0))(
  ( (ListLongMap!21498 (toList!10764 List!31014)) )
))
(declare-fun lt!591325 () ListLongMap!21497)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8864 (ListLongMap!21497 (_ BitVec 64)) Bool)

(assert (=> b!1330971 (contains!8864 lt!591325 k0!1153)))

(declare-fun lt!591322 () V!53931)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43737 0))(
  ( (Unit!43738) )
))
(declare-fun lt!591323 () Unit!43737)

(declare-datatypes ((array!90095 0))(
  ( (array!90096 (arr!43509 (Array (_ BitVec 32) (_ BitVec 64))) (size!44060 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90095)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!260 ((_ BitVec 64) (_ BitVec 64) V!53931 ListLongMap!21497) Unit!43737)

(assert (=> b!1330971 (= lt!591323 (lemmaInListMapAfterAddingDiffThenInBefore!260 k0!1153 (select (arr!43509 _keys!1590) from!1980) lt!591322 lt!591325))))

(declare-fun lt!591324 () ListLongMap!21497)

(assert (=> b!1330971 (contains!8864 lt!591324 k0!1153)))

(declare-fun lt!591326 () Unit!43737)

(declare-fun minValue!1262 () V!53931)

(assert (=> b!1330971 (= lt!591326 (lemmaInListMapAfterAddingDiffThenInBefore!260 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591324))))

(declare-fun +!4655 (ListLongMap!21497 tuple2!23828) ListLongMap!21497)

(assert (=> b!1330971 (= lt!591324 (+!4655 lt!591325 (tuple2!23829 (select (arr!43509 _keys!1590) from!1980) lt!591322)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21977 (ValueCell!17412 V!53931) V!53931)

(declare-fun dynLambda!3692 (Int (_ BitVec 64)) V!53931)

(assert (=> b!1330971 (= lt!591322 (get!21977 (select (arr!43508 _values!1320) from!1980) (dynLambda!3692 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53931)

(declare-fun getCurrentListMapNoExtraKeys!6373 (array!90095 array!90093 (_ BitVec 32) (_ BitVec 32) V!53931 V!53931 (_ BitVec 32) Int) ListLongMap!21497)

(assert (=> b!1330971 (= lt!591325 (getCurrentListMapNoExtraKeys!6373 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330972 () Bool)

(declare-fun res!883282 () Bool)

(assert (=> b!1330972 (=> (not res!883282) (not e!758509))))

(assert (=> b!1330972 (= res!883282 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44060 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56605 () Bool)

(assert (=> mapIsEmpty!56605 mapRes!56605))

(declare-fun b!1330973 () Bool)

(declare-fun res!883280 () Bool)

(assert (=> b!1330973 (=> (not res!883280) (not e!758509))))

(declare-datatypes ((List!31015 0))(
  ( (Nil!31012) (Cons!31011 (h!32220 (_ BitVec 64)) (t!45146 List!31015)) )
))
(declare-fun arrayNoDuplicates!0 (array!90095 (_ BitVec 32) List!31015) Bool)

(assert (=> b!1330973 (= res!883280 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31012))))

(declare-fun b!1330974 () Bool)

(declare-fun res!883283 () Bool)

(assert (=> b!1330974 (=> (not res!883283) (not e!758509))))

(assert (=> b!1330974 (= res!883283 (not (= (select (arr!43509 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1330975 () Bool)

(declare-fun res!883276 () Bool)

(assert (=> b!1330975 (=> (not res!883276) (not e!758509))))

(declare-fun getCurrentListMap!5689 (array!90095 array!90093 (_ BitVec 32) (_ BitVec 32) V!53931 V!53931 (_ BitVec 32) Int) ListLongMap!21497)

(assert (=> b!1330975 (= res!883276 (contains!8864 (getCurrentListMap!5689 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1330976 () Bool)

(declare-fun res!883278 () Bool)

(assert (=> b!1330976 (=> (not res!883278) (not e!758509))))

(assert (=> b!1330976 (= res!883278 (and (= (size!44059 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44060 _keys!1590) (size!44059 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330977 () Bool)

(declare-fun res!883275 () Bool)

(assert (=> b!1330977 (=> (not res!883275) (not e!758509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90095 (_ BitVec 32)) Bool)

(assert (=> b!1330977 (= res!883275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330978 () Bool)

(declare-fun res!883279 () Bool)

(assert (=> b!1330978 (=> (not res!883279) (not e!758509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330978 (= res!883279 (validKeyInArray!0 (select (arr!43509 _keys!1590) from!1980)))))

(declare-fun b!1330979 () Bool)

(declare-fun res!883277 () Bool)

(assert (=> b!1330979 (=> (not res!883277) (not e!758509))))

(assert (=> b!1330979 (= res!883277 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330980 () Bool)

(declare-fun e!758506 () Bool)

(declare-fun tp_is_empty!36621 () Bool)

(assert (=> b!1330980 (= e!758506 tp_is_empty!36621)))

(declare-fun b!1330981 () Bool)

(assert (=> b!1330981 (= e!758505 tp_is_empty!36621)))

(declare-fun b!1330970 () Bool)

(declare-fun e!758507 () Bool)

(assert (=> b!1330970 (= e!758507 (and e!758506 mapRes!56605))))

(declare-fun condMapEmpty!56605 () Bool)

(declare-fun mapDefault!56605 () ValueCell!17412)

(assert (=> b!1330970 (= condMapEmpty!56605 (= (arr!43508 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17412)) mapDefault!56605)))))

(declare-fun res!883281 () Bool)

(assert (=> start!112352 (=> (not res!883281) (not e!758509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112352 (= res!883281 (validMask!0 mask!1998))))

(assert (=> start!112352 e!758509))

(declare-fun array_inv!32769 (array!90093) Bool)

(assert (=> start!112352 (and (array_inv!32769 _values!1320) e!758507)))

(assert (=> start!112352 true))

(declare-fun array_inv!32770 (array!90095) Bool)

(assert (=> start!112352 (array_inv!32770 _keys!1590)))

(assert (=> start!112352 tp!107770))

(assert (=> start!112352 tp_is_empty!36621))

(assert (= (and start!112352 res!883281) b!1330976))

(assert (= (and b!1330976 res!883278) b!1330977))

(assert (= (and b!1330977 res!883275) b!1330973))

(assert (= (and b!1330973 res!883280) b!1330972))

(assert (= (and b!1330972 res!883282) b!1330975))

(assert (= (and b!1330975 res!883276) b!1330974))

(assert (= (and b!1330974 res!883283) b!1330978))

(assert (= (and b!1330978 res!883279) b!1330979))

(assert (= (and b!1330979 res!883277) b!1330971))

(assert (= (and b!1330970 condMapEmpty!56605) mapIsEmpty!56605))

(assert (= (and b!1330970 (not condMapEmpty!56605)) mapNonEmpty!56605))

(get-info :version)

(assert (= (and mapNonEmpty!56605 ((_ is ValueCellFull!17412) mapValue!56605)) b!1330981))

(assert (= (and b!1330970 ((_ is ValueCellFull!17412) mapDefault!56605)) b!1330980))

(assert (= start!112352 b!1330970))

(declare-fun b_lambda!23981 () Bool)

(assert (=> (not b_lambda!23981) (not b!1330971)))

(declare-fun t!45144 () Bool)

(declare-fun tb!11935 () Bool)

(assert (=> (and start!112352 (= defaultEntry!1323 defaultEntry!1323) t!45144) tb!11935))

(declare-fun result!24933 () Bool)

(assert (=> tb!11935 (= result!24933 tp_is_empty!36621)))

(assert (=> b!1330971 t!45144))

(declare-fun b_and!49489 () Bool)

(assert (= b_and!49487 (and (=> t!45144 result!24933) b_and!49489)))

(declare-fun m!1219673 () Bool)

(assert (=> b!1330977 m!1219673))

(declare-fun m!1219675 () Bool)

(assert (=> b!1330975 m!1219675))

(assert (=> b!1330975 m!1219675))

(declare-fun m!1219677 () Bool)

(assert (=> b!1330975 m!1219677))

(declare-fun m!1219679 () Bool)

(assert (=> b!1330974 m!1219679))

(declare-fun m!1219681 () Bool)

(assert (=> b!1330971 m!1219681))

(declare-fun m!1219683 () Bool)

(assert (=> b!1330971 m!1219683))

(declare-fun m!1219685 () Bool)

(assert (=> b!1330971 m!1219685))

(declare-fun m!1219687 () Bool)

(assert (=> b!1330971 m!1219687))

(declare-fun m!1219689 () Bool)

(assert (=> b!1330971 m!1219689))

(declare-fun m!1219691 () Bool)

(assert (=> b!1330971 m!1219691))

(assert (=> b!1330971 m!1219683))

(assert (=> b!1330971 m!1219679))

(declare-fun m!1219693 () Bool)

(assert (=> b!1330971 m!1219693))

(assert (=> b!1330971 m!1219685))

(declare-fun m!1219695 () Bool)

(assert (=> b!1330971 m!1219695))

(declare-fun m!1219697 () Bool)

(assert (=> b!1330971 m!1219697))

(assert (=> b!1330971 m!1219679))

(declare-fun m!1219699 () Bool)

(assert (=> b!1330973 m!1219699))

(declare-fun m!1219701 () Bool)

(assert (=> mapNonEmpty!56605 m!1219701))

(assert (=> b!1330978 m!1219679))

(assert (=> b!1330978 m!1219679))

(declare-fun m!1219703 () Bool)

(assert (=> b!1330978 m!1219703))

(declare-fun m!1219705 () Bool)

(assert (=> start!112352 m!1219705))

(declare-fun m!1219707 () Bool)

(assert (=> start!112352 m!1219707))

(declare-fun m!1219709 () Bool)

(assert (=> start!112352 m!1219709))

(check-sat (not b!1330977) (not b!1330973) tp_is_empty!36621 (not b_lambda!23981) (not mapNonEmpty!56605) (not b_next!30711) (not start!112352) (not b!1330978) (not b!1330971) b_and!49489 (not b!1330975))
(check-sat b_and!49489 (not b_next!30711))
