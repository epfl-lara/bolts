; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112382 () Bool)

(assert start!112382)

(declare-fun b_free!30741 () Bool)

(declare-fun b_next!30741 () Bool)

(assert (=> start!112382 (= b_free!30741 (not b_next!30741))))

(declare-fun tp!107861 () Bool)

(declare-fun b_and!49547 () Bool)

(assert (=> start!112382 (= tp!107861 b_and!49547)))

(declare-fun b!1331540 () Bool)

(declare-fun res!883685 () Bool)

(declare-fun e!758733 () Bool)

(assert (=> b!1331540 (=> (not res!883685) (not e!758733))))

(declare-datatypes ((array!90151 0))(
  ( (array!90152 (arr!43537 (Array (_ BitVec 32) (_ BitVec 64))) (size!44088 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90151)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331540 (= res!883685 (validKeyInArray!0 (select (arr!43537 _keys!1590) from!1980)))))

(declare-fun b!1331541 () Bool)

(declare-fun res!883680 () Bool)

(assert (=> b!1331541 (=> (not res!883680) (not e!758733))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90151 (_ BitVec 32)) Bool)

(assert (=> b!1331541 (= res!883680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331542 () Bool)

(declare-fun res!883688 () Bool)

(assert (=> b!1331542 (=> (not res!883688) (not e!758733))))

(declare-datatypes ((List!31034 0))(
  ( (Nil!31031) (Cons!31030 (h!32239 (_ BitVec 64)) (t!45195 List!31034)) )
))
(declare-fun arrayNoDuplicates!0 (array!90151 (_ BitVec 32) List!31034) Bool)

(assert (=> b!1331542 (= res!883688 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31031))))

(declare-fun b!1331543 () Bool)

(declare-fun res!883684 () Bool)

(assert (=> b!1331543 (=> (not res!883684) (not e!758733))))

(declare-datatypes ((V!53971 0))(
  ( (V!53972 (val!18400 Int)) )
))
(declare-datatypes ((ValueCell!17427 0))(
  ( (ValueCellFull!17427 (v!21035 V!53971)) (EmptyCell!17427) )
))
(declare-datatypes ((array!90153 0))(
  ( (array!90154 (arr!43538 (Array (_ BitVec 32) ValueCell!17427)) (size!44089 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90153)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53971)

(declare-fun zeroValue!1262 () V!53971)

(declare-datatypes ((tuple2!23850 0))(
  ( (tuple2!23851 (_1!11935 (_ BitVec 64)) (_2!11935 V!53971)) )
))
(declare-datatypes ((List!31035 0))(
  ( (Nil!31032) (Cons!31031 (h!32240 tuple2!23850) (t!45196 List!31035)) )
))
(declare-datatypes ((ListLongMap!21519 0))(
  ( (ListLongMap!21520 (toList!10775 List!31035)) )
))
(declare-fun contains!8875 (ListLongMap!21519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5698 (array!90151 array!90153 (_ BitVec 32) (_ BitVec 32) V!53971 V!53971 (_ BitVec 32) Int) ListLongMap!21519)

(assert (=> b!1331543 (= res!883684 (contains!8875 (getCurrentListMap!5698 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331544 () Bool)

(assert (=> b!1331544 (= e!758733 (not true))))

(declare-fun lt!591564 () ListLongMap!21519)

(declare-fun +!4665 (ListLongMap!21519 tuple2!23850) ListLongMap!21519)

(assert (=> b!1331544 (contains!8875 (+!4665 lt!591564 (tuple2!23851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43757 0))(
  ( (Unit!43758) )
))
(declare-fun lt!591565 () Unit!43757)

(declare-fun addStillContains!1175 (ListLongMap!21519 (_ BitVec 64) V!53971 (_ BitVec 64)) Unit!43757)

(assert (=> b!1331544 (= lt!591565 (addStillContains!1175 lt!591564 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331544 (contains!8875 lt!591564 k0!1153)))

(declare-fun lt!591561 () Unit!43757)

(declare-fun lt!591562 () V!53971)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!270 ((_ BitVec 64) (_ BitVec 64) V!53971 ListLongMap!21519) Unit!43757)

(assert (=> b!1331544 (= lt!591561 (lemmaInListMapAfterAddingDiffThenInBefore!270 k0!1153 (select (arr!43537 _keys!1590) from!1980) lt!591562 lt!591564))))

(declare-fun lt!591566 () ListLongMap!21519)

(assert (=> b!1331544 (contains!8875 lt!591566 k0!1153)))

(declare-fun lt!591563 () Unit!43757)

(assert (=> b!1331544 (= lt!591563 (lemmaInListMapAfterAddingDiffThenInBefore!270 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591566))))

(assert (=> b!1331544 (= lt!591566 (+!4665 lt!591564 (tuple2!23851 (select (arr!43537 _keys!1590) from!1980) lt!591562)))))

(declare-fun get!21997 (ValueCell!17427 V!53971) V!53971)

(declare-fun dynLambda!3702 (Int (_ BitVec 64)) V!53971)

(assert (=> b!1331544 (= lt!591562 (get!21997 (select (arr!43538 _values!1320) from!1980) (dynLambda!3702 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6383 (array!90151 array!90153 (_ BitVec 32) (_ BitVec 32) V!53971 V!53971 (_ BitVec 32) Int) ListLongMap!21519)

(assert (=> b!1331544 (= lt!591564 (getCurrentListMapNoExtraKeys!6383 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331545 () Bool)

(declare-fun res!883686 () Bool)

(assert (=> b!1331545 (=> (not res!883686) (not e!758733))))

(assert (=> b!1331545 (= res!883686 (not (= (select (arr!43537 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1331546 () Bool)

(declare-fun res!883687 () Bool)

(assert (=> b!1331546 (=> (not res!883687) (not e!758733))))

(assert (=> b!1331546 (= res!883687 (and (= (size!44089 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44088 _keys!1590) (size!44089 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331547 () Bool)

(declare-fun res!883683 () Bool)

(assert (=> b!1331547 (=> (not res!883683) (not e!758733))))

(assert (=> b!1331547 (= res!883683 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44088 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56650 () Bool)

(declare-fun mapRes!56650 () Bool)

(assert (=> mapIsEmpty!56650 mapRes!56650))

(declare-fun mapNonEmpty!56650 () Bool)

(declare-fun tp!107860 () Bool)

(declare-fun e!758734 () Bool)

(assert (=> mapNonEmpty!56650 (= mapRes!56650 (and tp!107860 e!758734))))

(declare-fun mapRest!56650 () (Array (_ BitVec 32) ValueCell!17427))

(declare-fun mapValue!56650 () ValueCell!17427)

(declare-fun mapKey!56650 () (_ BitVec 32))

(assert (=> mapNonEmpty!56650 (= (arr!43538 _values!1320) (store mapRest!56650 mapKey!56650 mapValue!56650))))

(declare-fun res!883682 () Bool)

(assert (=> start!112382 (=> (not res!883682) (not e!758733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112382 (= res!883682 (validMask!0 mask!1998))))

(assert (=> start!112382 e!758733))

(declare-fun e!758731 () Bool)

(declare-fun array_inv!32793 (array!90153) Bool)

(assert (=> start!112382 (and (array_inv!32793 _values!1320) e!758731)))

(assert (=> start!112382 true))

(declare-fun array_inv!32794 (array!90151) Bool)

(assert (=> start!112382 (array_inv!32794 _keys!1590)))

(assert (=> start!112382 tp!107861))

(declare-fun tp_is_empty!36651 () Bool)

(assert (=> start!112382 tp_is_empty!36651))

(declare-fun b!1331548 () Bool)

(declare-fun e!758730 () Bool)

(assert (=> b!1331548 (= e!758730 tp_is_empty!36651)))

(declare-fun b!1331549 () Bool)

(assert (=> b!1331549 (= e!758731 (and e!758730 mapRes!56650))))

(declare-fun condMapEmpty!56650 () Bool)

(declare-fun mapDefault!56650 () ValueCell!17427)

(assert (=> b!1331549 (= condMapEmpty!56650 (= (arr!43538 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17427)) mapDefault!56650)))))

(declare-fun b!1331550 () Bool)

(assert (=> b!1331550 (= e!758734 tp_is_empty!36651)))

(declare-fun b!1331551 () Bool)

(declare-fun res!883681 () Bool)

(assert (=> b!1331551 (=> (not res!883681) (not e!758733))))

(assert (=> b!1331551 (= res!883681 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!112382 res!883682) b!1331546))

(assert (= (and b!1331546 res!883687) b!1331541))

(assert (= (and b!1331541 res!883680) b!1331542))

(assert (= (and b!1331542 res!883688) b!1331547))

(assert (= (and b!1331547 res!883683) b!1331543))

(assert (= (and b!1331543 res!883684) b!1331545))

(assert (= (and b!1331545 res!883686) b!1331540))

(assert (= (and b!1331540 res!883685) b!1331551))

(assert (= (and b!1331551 res!883681) b!1331544))

(assert (= (and b!1331549 condMapEmpty!56650) mapIsEmpty!56650))

(assert (= (and b!1331549 (not condMapEmpty!56650)) mapNonEmpty!56650))

(get-info :version)

(assert (= (and mapNonEmpty!56650 ((_ is ValueCellFull!17427) mapValue!56650)) b!1331550))

(assert (= (and b!1331549 ((_ is ValueCellFull!17427) mapDefault!56650)) b!1331548))

(assert (= start!112382 b!1331549))

(declare-fun b_lambda!24011 () Bool)

(assert (=> (not b_lambda!24011) (not b!1331544)))

(declare-fun t!45194 () Bool)

(declare-fun tb!11965 () Bool)

(assert (=> (and start!112382 (= defaultEntry!1323 defaultEntry!1323) t!45194) tb!11965))

(declare-fun result!24993 () Bool)

(assert (=> tb!11965 (= result!24993 tp_is_empty!36651)))

(assert (=> b!1331544 t!45194))

(declare-fun b_and!49549 () Bool)

(assert (= b_and!49547 (and (=> t!45194 result!24993) b_and!49549)))

(declare-fun m!1220267 () Bool)

(assert (=> b!1331541 m!1220267))

(declare-fun m!1220269 () Bool)

(assert (=> b!1331544 m!1220269))

(declare-fun m!1220271 () Bool)

(assert (=> b!1331544 m!1220271))

(declare-fun m!1220273 () Bool)

(assert (=> b!1331544 m!1220273))

(declare-fun m!1220275 () Bool)

(assert (=> b!1331544 m!1220275))

(declare-fun m!1220277 () Bool)

(assert (=> b!1331544 m!1220277))

(declare-fun m!1220279 () Bool)

(assert (=> b!1331544 m!1220279))

(assert (=> b!1331544 m!1220277))

(declare-fun m!1220281 () Bool)

(assert (=> b!1331544 m!1220281))

(declare-fun m!1220283 () Bool)

(assert (=> b!1331544 m!1220283))

(assert (=> b!1331544 m!1220271))

(declare-fun m!1220285 () Bool)

(assert (=> b!1331544 m!1220285))

(declare-fun m!1220287 () Bool)

(assert (=> b!1331544 m!1220287))

(assert (=> b!1331544 m!1220273))

(declare-fun m!1220289 () Bool)

(assert (=> b!1331544 m!1220289))

(assert (=> b!1331544 m!1220287))

(declare-fun m!1220291 () Bool)

(assert (=> b!1331544 m!1220291))

(declare-fun m!1220293 () Bool)

(assert (=> b!1331544 m!1220293))

(declare-fun m!1220295 () Bool)

(assert (=> b!1331543 m!1220295))

(assert (=> b!1331543 m!1220295))

(declare-fun m!1220297 () Bool)

(assert (=> b!1331543 m!1220297))

(declare-fun m!1220299 () Bool)

(assert (=> start!112382 m!1220299))

(declare-fun m!1220301 () Bool)

(assert (=> start!112382 m!1220301))

(declare-fun m!1220303 () Bool)

(assert (=> start!112382 m!1220303))

(assert (=> b!1331540 m!1220287))

(assert (=> b!1331540 m!1220287))

(declare-fun m!1220305 () Bool)

(assert (=> b!1331540 m!1220305))

(assert (=> b!1331545 m!1220287))

(declare-fun m!1220307 () Bool)

(assert (=> mapNonEmpty!56650 m!1220307))

(declare-fun m!1220309 () Bool)

(assert (=> b!1331542 m!1220309))

(check-sat (not b!1331540) (not b!1331544) (not b_next!30741) b_and!49549 (not mapNonEmpty!56650) tp_is_empty!36651 (not b!1331541) (not b_lambda!24011) (not b!1331543) (not b!1331542) (not start!112382))
(check-sat b_and!49549 (not b_next!30741))
