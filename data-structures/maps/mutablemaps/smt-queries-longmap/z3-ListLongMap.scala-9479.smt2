; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112520 () Bool)

(assert start!112520)

(declare-fun b_free!30879 () Bool)

(declare-fun b_next!30879 () Bool)

(assert (=> start!112520 (= b_free!30879 (not b_next!30879))))

(declare-fun tp!108275 () Bool)

(declare-fun b_and!49769 () Bool)

(assert (=> start!112520 (= tp!108275 b_and!49769)))

(declare-fun b!1333893 () Bool)

(declare-fun res!885338 () Bool)

(declare-fun e!759810 () Bool)

(assert (=> b!1333893 (=> (not res!885338) (not e!759810))))

(declare-datatypes ((array!90425 0))(
  ( (array!90426 (arr!43674 (Array (_ BitVec 32) (_ BitVec 64))) (size!44225 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90425)

(declare-datatypes ((List!31141 0))(
  ( (Nil!31138) (Cons!31137 (h!32346 (_ BitVec 64)) (t!45386 List!31141)) )
))
(declare-fun arrayNoDuplicates!0 (array!90425 (_ BitVec 32) List!31141) Bool)

(assert (=> b!1333893 (= res!885338 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31138))))

(declare-fun b!1333894 () Bool)

(declare-fun res!885334 () Bool)

(assert (=> b!1333894 (=> (not res!885334) (not e!759810))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90425 (_ BitVec 32)) Bool)

(assert (=> b!1333894 (= res!885334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333895 () Bool)

(declare-fun e!759811 () Bool)

(assert (=> b!1333895 (= e!759811 (not true))))

(declare-datatypes ((V!54155 0))(
  ( (V!54156 (val!18469 Int)) )
))
(declare-datatypes ((tuple2!23968 0))(
  ( (tuple2!23969 (_1!11994 (_ BitVec 64)) (_2!11994 V!54155)) )
))
(declare-datatypes ((List!31142 0))(
  ( (Nil!31139) (Cons!31138 (h!32347 tuple2!23968) (t!45387 List!31142)) )
))
(declare-datatypes ((ListLongMap!21637 0))(
  ( (ListLongMap!21638 (toList!10834 List!31142)) )
))
(declare-fun lt!592176 () ListLongMap!21637)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun contains!8934 (ListLongMap!21637 (_ BitVec 64)) Bool)

(assert (=> b!1333895 (contains!8934 lt!592176 k0!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43811 0))(
  ( (Unit!43812) )
))
(declare-fun lt!592177 () Unit!43811)

(declare-fun lt!592178 () V!54155)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!297 ((_ BitVec 64) (_ BitVec 64) V!54155 ListLongMap!21637) Unit!43811)

(assert (=> b!1333895 (= lt!592177 (lemmaInListMapAfterAddingDiffThenInBefore!297 k0!1153 (select (arr!43674 _keys!1590) from!1980) lt!592178 lt!592176))))

(declare-fun b!1333896 () Bool)

(declare-fun e!759806 () Bool)

(declare-fun tp_is_empty!36789 () Bool)

(assert (=> b!1333896 (= e!759806 tp_is_empty!36789)))

(declare-fun b!1333897 () Bool)

(declare-fun e!759809 () Bool)

(declare-fun e!759807 () Bool)

(declare-fun mapRes!56857 () Bool)

(assert (=> b!1333897 (= e!759809 (and e!759807 mapRes!56857))))

(declare-fun condMapEmpty!56857 () Bool)

(declare-datatypes ((ValueCell!17496 0))(
  ( (ValueCellFull!17496 (v!21104 V!54155)) (EmptyCell!17496) )
))
(declare-datatypes ((array!90427 0))(
  ( (array!90428 (arr!43675 (Array (_ BitVec 32) ValueCell!17496)) (size!44226 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90427)

(declare-fun mapDefault!56857 () ValueCell!17496)

(assert (=> b!1333897 (= condMapEmpty!56857 (= (arr!43675 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17496)) mapDefault!56857)))))

(declare-fun b!1333898 () Bool)

(declare-fun res!885335 () Bool)

(assert (=> b!1333898 (=> (not res!885335) (not e!759810))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333898 (= res!885335 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333899 () Bool)

(assert (=> b!1333899 (= e!759810 e!759811)))

(declare-fun res!885336 () Bool)

(assert (=> b!1333899 (=> (not res!885336) (not e!759811))))

(declare-fun +!4696 (ListLongMap!21637 tuple2!23968) ListLongMap!21637)

(assert (=> b!1333899 (= res!885336 (contains!8934 (+!4696 lt!592176 (tuple2!23969 (select (arr!43674 _keys!1590) from!1980) lt!592178)) k0!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54155)

(declare-fun zeroValue!1262 () V!54155)

(declare-fun getCurrentListMapNoExtraKeys!6414 (array!90425 array!90427 (_ BitVec 32) (_ BitVec 32) V!54155 V!54155 (_ BitVec 32) Int) ListLongMap!21637)

(assert (=> b!1333899 (= lt!592176 (getCurrentListMapNoExtraKeys!6414 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22074 (ValueCell!17496 V!54155) V!54155)

(declare-fun dynLambda!3733 (Int (_ BitVec 64)) V!54155)

(assert (=> b!1333899 (= lt!592178 (get!22074 (select (arr!43675 _values!1320) from!1980) (dynLambda!3733 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333900 () Bool)

(declare-fun res!885329 () Bool)

(assert (=> b!1333900 (=> (not res!885329) (not e!759810))))

(assert (=> b!1333900 (= res!885329 (and (= (size!44226 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44225 _keys!1590) (size!44226 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333901 () Bool)

(declare-fun res!885328 () Bool)

(assert (=> b!1333901 (=> (not res!885328) (not e!759810))))

(assert (=> b!1333901 (= res!885328 (not (= (select (arr!43674 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333903 () Bool)

(declare-fun res!885332 () Bool)

(assert (=> b!1333903 (=> (not res!885332) (not e!759810))))

(declare-fun getCurrentListMap!5749 (array!90425 array!90427 (_ BitVec 32) (_ BitVec 32) V!54155 V!54155 (_ BitVec 32) Int) ListLongMap!21637)

(assert (=> b!1333903 (= res!885332 (contains!8934 (getCurrentListMap!5749 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1333904 () Bool)

(declare-fun res!885330 () Bool)

(assert (=> b!1333904 (=> (not res!885330) (not e!759811))))

(assert (=> b!1333904 (= res!885330 (not (= k0!1153 (select (arr!43674 _keys!1590) from!1980))))))

(declare-fun mapNonEmpty!56857 () Bool)

(declare-fun tp!108274 () Bool)

(assert (=> mapNonEmpty!56857 (= mapRes!56857 (and tp!108274 e!759806))))

(declare-fun mapValue!56857 () ValueCell!17496)

(declare-fun mapRest!56857 () (Array (_ BitVec 32) ValueCell!17496))

(declare-fun mapKey!56857 () (_ BitVec 32))

(assert (=> mapNonEmpty!56857 (= (arr!43675 _values!1320) (store mapRest!56857 mapKey!56857 mapValue!56857))))

(declare-fun mapIsEmpty!56857 () Bool)

(assert (=> mapIsEmpty!56857 mapRes!56857))

(declare-fun b!1333905 () Bool)

(assert (=> b!1333905 (= e!759807 tp_is_empty!36789)))

(declare-fun b!1333906 () Bool)

(declare-fun res!885331 () Bool)

(assert (=> b!1333906 (=> (not res!885331) (not e!759810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333906 (= res!885331 (validKeyInArray!0 (select (arr!43674 _keys!1590) from!1980)))))

(declare-fun b!1333902 () Bool)

(declare-fun res!885337 () Bool)

(assert (=> b!1333902 (=> (not res!885337) (not e!759810))))

(assert (=> b!1333902 (= res!885337 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44225 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!885333 () Bool)

(assert (=> start!112520 (=> (not res!885333) (not e!759810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112520 (= res!885333 (validMask!0 mask!1998))))

(assert (=> start!112520 e!759810))

(declare-fun array_inv!32881 (array!90427) Bool)

(assert (=> start!112520 (and (array_inv!32881 _values!1320) e!759809)))

(assert (=> start!112520 true))

(declare-fun array_inv!32882 (array!90425) Bool)

(assert (=> start!112520 (array_inv!32882 _keys!1590)))

(assert (=> start!112520 tp!108275))

(assert (=> start!112520 tp_is_empty!36789))

(assert (= (and start!112520 res!885333) b!1333900))

(assert (= (and b!1333900 res!885329) b!1333894))

(assert (= (and b!1333894 res!885334) b!1333893))

(assert (= (and b!1333893 res!885338) b!1333902))

(assert (= (and b!1333902 res!885337) b!1333903))

(assert (= (and b!1333903 res!885332) b!1333901))

(assert (= (and b!1333901 res!885328) b!1333906))

(assert (= (and b!1333906 res!885331) b!1333898))

(assert (= (and b!1333898 res!885335) b!1333899))

(assert (= (and b!1333899 res!885336) b!1333904))

(assert (= (and b!1333904 res!885330) b!1333895))

(assert (= (and b!1333897 condMapEmpty!56857) mapIsEmpty!56857))

(assert (= (and b!1333897 (not condMapEmpty!56857)) mapNonEmpty!56857))

(get-info :version)

(assert (= (and mapNonEmpty!56857 ((_ is ValueCellFull!17496) mapValue!56857)) b!1333896))

(assert (= (and b!1333897 ((_ is ValueCellFull!17496) mapDefault!56857)) b!1333905))

(assert (= start!112520 b!1333897))

(declare-fun b_lambda!24095 () Bool)

(assert (=> (not b_lambda!24095) (not b!1333899)))

(declare-fun t!45385 () Bool)

(declare-fun tb!12049 () Bool)

(assert (=> (and start!112520 (= defaultEntry!1323 defaultEntry!1323) t!45385) tb!12049))

(declare-fun result!25161 () Bool)

(assert (=> tb!12049 (= result!25161 tp_is_empty!36789)))

(assert (=> b!1333899 t!45385))

(declare-fun b_and!49771 () Bool)

(assert (= b_and!49769 (and (=> t!45385 result!25161) b_and!49771)))

(declare-fun m!1222383 () Bool)

(assert (=> b!1333893 m!1222383))

(declare-fun m!1222385 () Bool)

(assert (=> b!1333904 m!1222385))

(assert (=> b!1333901 m!1222385))

(declare-fun m!1222387 () Bool)

(assert (=> mapNonEmpty!56857 m!1222387))

(declare-fun m!1222389 () Bool)

(assert (=> start!112520 m!1222389))

(declare-fun m!1222391 () Bool)

(assert (=> start!112520 m!1222391))

(declare-fun m!1222393 () Bool)

(assert (=> start!112520 m!1222393))

(declare-fun m!1222395 () Bool)

(assert (=> b!1333903 m!1222395))

(assert (=> b!1333903 m!1222395))

(declare-fun m!1222397 () Bool)

(assert (=> b!1333903 m!1222397))

(declare-fun m!1222399 () Bool)

(assert (=> b!1333894 m!1222399))

(declare-fun m!1222401 () Bool)

(assert (=> b!1333895 m!1222401))

(assert (=> b!1333895 m!1222385))

(assert (=> b!1333895 m!1222385))

(declare-fun m!1222403 () Bool)

(assert (=> b!1333895 m!1222403))

(assert (=> b!1333906 m!1222385))

(assert (=> b!1333906 m!1222385))

(declare-fun m!1222405 () Bool)

(assert (=> b!1333906 m!1222405))

(declare-fun m!1222407 () Bool)

(assert (=> b!1333899 m!1222407))

(declare-fun m!1222409 () Bool)

(assert (=> b!1333899 m!1222409))

(assert (=> b!1333899 m!1222407))

(declare-fun m!1222411 () Bool)

(assert (=> b!1333899 m!1222411))

(declare-fun m!1222413 () Bool)

(assert (=> b!1333899 m!1222413))

(declare-fun m!1222415 () Bool)

(assert (=> b!1333899 m!1222415))

(assert (=> b!1333899 m!1222413))

(declare-fun m!1222417 () Bool)

(assert (=> b!1333899 m!1222417))

(assert (=> b!1333899 m!1222409))

(assert (=> b!1333899 m!1222385))

(check-sat (not b_next!30879) (not b!1333903) (not start!112520) (not b!1333895) b_and!49771 (not b!1333893) (not b!1333906) (not b_lambda!24095) tp_is_empty!36789 (not b!1333894) (not mapNonEmpty!56857) (not b!1333899))
(check-sat b_and!49771 (not b_next!30879))
