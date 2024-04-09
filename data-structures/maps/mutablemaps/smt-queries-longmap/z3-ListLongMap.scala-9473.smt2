; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112484 () Bool)

(assert start!112484)

(declare-fun b_free!30843 () Bool)

(declare-fun b_next!30843 () Bool)

(assert (=> start!112484 (= b_free!30843 (not b_next!30843))))

(declare-fun tp!108167 () Bool)

(declare-fun b_and!49697 () Bool)

(assert (=> start!112484 (= tp!108167 b_and!49697)))

(declare-fun b!1333127 () Bool)

(declare-fun res!884765 () Bool)

(declare-fun e!759498 () Bool)

(assert (=> b!1333127 (=> (not res!884765) (not e!759498))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90353 0))(
  ( (array!90354 (arr!43638 (Array (_ BitVec 32) (_ BitVec 64))) (size!44189 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90353)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1333127 (= res!884765 (not (= (select (arr!43638 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333128 () Bool)

(declare-fun e!759496 () Bool)

(declare-fun tp_is_empty!36753 () Bool)

(assert (=> b!1333128 (= e!759496 tp_is_empty!36753)))

(declare-fun b!1333129 () Bool)

(declare-fun res!884762 () Bool)

(assert (=> b!1333129 (=> (not res!884762) (not e!759498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333129 (= res!884762 (validKeyInArray!0 (select (arr!43638 _keys!1590) from!1980)))))

(declare-fun b!1333130 () Bool)

(declare-fun res!884767 () Bool)

(assert (=> b!1333130 (=> (not res!884767) (not e!759498))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333130 (= res!884767 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44189 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333131 () Bool)

(declare-fun e!759495 () Bool)

(declare-fun e!759499 () Bool)

(declare-fun mapRes!56803 () Bool)

(assert (=> b!1333131 (= e!759495 (and e!759499 mapRes!56803))))

(declare-fun condMapEmpty!56803 () Bool)

(declare-datatypes ((V!54107 0))(
  ( (V!54108 (val!18451 Int)) )
))
(declare-datatypes ((ValueCell!17478 0))(
  ( (ValueCellFull!17478 (v!21086 V!54107)) (EmptyCell!17478) )
))
(declare-datatypes ((array!90355 0))(
  ( (array!90356 (arr!43639 (Array (_ BitVec 32) ValueCell!17478)) (size!44190 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90355)

(declare-fun mapDefault!56803 () ValueCell!17478)

(assert (=> b!1333131 (= condMapEmpty!56803 (= (arr!43639 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17478)) mapDefault!56803)))))

(declare-fun b!1333132 () Bool)

(assert (=> b!1333132 (= e!759499 tp_is_empty!36753)))

(declare-fun b!1333133 () Bool)

(declare-fun res!884764 () Bool)

(assert (=> b!1333133 (=> (not res!884764) (not e!759498))))

(assert (=> b!1333133 (= res!884764 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333134 () Bool)

(declare-fun res!884766 () Bool)

(assert (=> b!1333134 (=> (not res!884766) (not e!759498))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54107)

(declare-fun zeroValue!1262 () V!54107)

(declare-datatypes ((tuple2!23932 0))(
  ( (tuple2!23933 (_1!11976 (_ BitVec 64)) (_2!11976 V!54107)) )
))
(declare-datatypes ((List!31111 0))(
  ( (Nil!31108) (Cons!31107 (h!32316 tuple2!23932) (t!45320 List!31111)) )
))
(declare-datatypes ((ListLongMap!21601 0))(
  ( (ListLongMap!21602 (toList!10816 List!31111)) )
))
(declare-fun contains!8916 (ListLongMap!21601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5737 (array!90353 array!90355 (_ BitVec 32) (_ BitVec 32) V!54107 V!54107 (_ BitVec 32) Int) ListLongMap!21601)

(assert (=> b!1333134 (= res!884766 (contains!8916 (getCurrentListMap!5737 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!884763 () Bool)

(assert (=> start!112484 (=> (not res!884763) (not e!759498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112484 (= res!884763 (validMask!0 mask!1998))))

(assert (=> start!112484 e!759498))

(declare-fun array_inv!32857 (array!90355) Bool)

(assert (=> start!112484 (and (array_inv!32857 _values!1320) e!759495)))

(assert (=> start!112484 true))

(declare-fun array_inv!32858 (array!90353) Bool)

(assert (=> start!112484 (array_inv!32858 _keys!1590)))

(assert (=> start!112484 tp!108167))

(assert (=> start!112484 tp_is_empty!36753))

(declare-fun mapNonEmpty!56803 () Bool)

(declare-fun tp!108166 () Bool)

(assert (=> mapNonEmpty!56803 (= mapRes!56803 (and tp!108166 e!759496))))

(declare-fun mapValue!56803 () ValueCell!17478)

(declare-fun mapKey!56803 () (_ BitVec 32))

(declare-fun mapRest!56803 () (Array (_ BitVec 32) ValueCell!17478))

(assert (=> mapNonEmpty!56803 (= (arr!43639 _values!1320) (store mapRest!56803 mapKey!56803 mapValue!56803))))

(declare-fun b!1333135 () Bool)

(declare-fun res!884761 () Bool)

(assert (=> b!1333135 (=> (not res!884761) (not e!759498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90353 (_ BitVec 32)) Bool)

(assert (=> b!1333135 (= res!884761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333136 () Bool)

(declare-fun res!884760 () Bool)

(assert (=> b!1333136 (=> (not res!884760) (not e!759498))))

(assert (=> b!1333136 (= res!884760 (and (= (size!44190 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44189 _keys!1590) (size!44190 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333137 () Bool)

(assert (=> b!1333137 (= e!759498 false)))

(declare-fun lt!592040 () Bool)

(declare-fun +!4684 (ListLongMap!21601 tuple2!23932) ListLongMap!21601)

(declare-fun getCurrentListMapNoExtraKeys!6402 (array!90353 array!90355 (_ BitVec 32) (_ BitVec 32) V!54107 V!54107 (_ BitVec 32) Int) ListLongMap!21601)

(declare-fun get!22050 (ValueCell!17478 V!54107) V!54107)

(declare-fun dynLambda!3721 (Int (_ BitVec 64)) V!54107)

(assert (=> b!1333137 (= lt!592040 (contains!8916 (+!4684 (getCurrentListMapNoExtraKeys!6402 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23933 (select (arr!43638 _keys!1590) from!1980) (get!22050 (select (arr!43639 _values!1320) from!1980) (dynLambda!3721 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1153))))

(declare-fun mapIsEmpty!56803 () Bool)

(assert (=> mapIsEmpty!56803 mapRes!56803))

(declare-fun b!1333138 () Bool)

(declare-fun res!884768 () Bool)

(assert (=> b!1333138 (=> (not res!884768) (not e!759498))))

(declare-datatypes ((List!31112 0))(
  ( (Nil!31109) (Cons!31108 (h!32317 (_ BitVec 64)) (t!45321 List!31112)) )
))
(declare-fun arrayNoDuplicates!0 (array!90353 (_ BitVec 32) List!31112) Bool)

(assert (=> b!1333138 (= res!884768 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31109))))

(assert (= (and start!112484 res!884763) b!1333136))

(assert (= (and b!1333136 res!884760) b!1333135))

(assert (= (and b!1333135 res!884761) b!1333138))

(assert (= (and b!1333138 res!884768) b!1333130))

(assert (= (and b!1333130 res!884767) b!1333134))

(assert (= (and b!1333134 res!884766) b!1333127))

(assert (= (and b!1333127 res!884765) b!1333129))

(assert (= (and b!1333129 res!884762) b!1333133))

(assert (= (and b!1333133 res!884764) b!1333137))

(assert (= (and b!1333131 condMapEmpty!56803) mapIsEmpty!56803))

(assert (= (and b!1333131 (not condMapEmpty!56803)) mapNonEmpty!56803))

(get-info :version)

(assert (= (and mapNonEmpty!56803 ((_ is ValueCellFull!17478) mapValue!56803)) b!1333128))

(assert (= (and b!1333131 ((_ is ValueCellFull!17478) mapDefault!56803)) b!1333132))

(assert (= start!112484 b!1333131))

(declare-fun b_lambda!24059 () Bool)

(assert (=> (not b_lambda!24059) (not b!1333137)))

(declare-fun t!45319 () Bool)

(declare-fun tb!12013 () Bool)

(assert (=> (and start!112484 (= defaultEntry!1323 defaultEntry!1323) t!45319) tb!12013))

(declare-fun result!25089 () Bool)

(assert (=> tb!12013 (= result!25089 tp_is_empty!36753)))

(assert (=> b!1333137 t!45319))

(declare-fun b_and!49699 () Bool)

(assert (= b_and!49697 (and (=> t!45319 result!25089) b_and!49699)))

(declare-fun m!1221755 () Bool)

(assert (=> b!1333137 m!1221755))

(declare-fun m!1221757 () Bool)

(assert (=> b!1333137 m!1221757))

(declare-fun m!1221759 () Bool)

(assert (=> b!1333137 m!1221759))

(declare-fun m!1221761 () Bool)

(assert (=> b!1333137 m!1221761))

(assert (=> b!1333137 m!1221755))

(declare-fun m!1221763 () Bool)

(assert (=> b!1333137 m!1221763))

(assert (=> b!1333137 m!1221759))

(declare-fun m!1221765 () Bool)

(assert (=> b!1333137 m!1221765))

(assert (=> b!1333137 m!1221757))

(assert (=> b!1333137 m!1221761))

(declare-fun m!1221767 () Bool)

(assert (=> b!1333137 m!1221767))

(declare-fun m!1221769 () Bool)

(assert (=> mapNonEmpty!56803 m!1221769))

(declare-fun m!1221771 () Bool)

(assert (=> b!1333135 m!1221771))

(declare-fun m!1221773 () Bool)

(assert (=> b!1333134 m!1221773))

(assert (=> b!1333134 m!1221773))

(declare-fun m!1221775 () Bool)

(assert (=> b!1333134 m!1221775))

(assert (=> b!1333127 m!1221767))

(assert (=> b!1333129 m!1221767))

(assert (=> b!1333129 m!1221767))

(declare-fun m!1221777 () Bool)

(assert (=> b!1333129 m!1221777))

(declare-fun m!1221779 () Bool)

(assert (=> start!112484 m!1221779))

(declare-fun m!1221781 () Bool)

(assert (=> start!112484 m!1221781))

(declare-fun m!1221783 () Bool)

(assert (=> start!112484 m!1221783))

(declare-fun m!1221785 () Bool)

(assert (=> b!1333138 m!1221785))

(check-sat (not b!1333135) (not b_lambda!24059) (not start!112484) (not b!1333134) (not b!1333137) b_and!49699 (not b!1333138) tp_is_empty!36753 (not b_next!30843) (not mapNonEmpty!56803) (not b!1333129))
(check-sat b_and!49699 (not b_next!30843))
