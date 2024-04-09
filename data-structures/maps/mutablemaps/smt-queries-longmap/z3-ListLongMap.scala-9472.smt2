; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112478 () Bool)

(assert start!112478)

(declare-fun b_free!30837 () Bool)

(declare-fun b_next!30837 () Bool)

(assert (=> start!112478 (= b_free!30837 (not b_next!30837))))

(declare-fun tp!108149 () Bool)

(declare-fun b_and!49689 () Bool)

(assert (=> start!112478 (= tp!108149 b_and!49689)))

(declare-fun b!1333021 () Bool)

(declare-fun res!884683 () Bool)

(declare-fun e!759453 () Bool)

(assert (=> b!1333021 (=> (not res!884683) (not e!759453))))

(declare-datatypes ((V!54099 0))(
  ( (V!54100 (val!18448 Int)) )
))
(declare-datatypes ((ValueCell!17475 0))(
  ( (ValueCellFull!17475 (v!21083 V!54099)) (EmptyCell!17475) )
))
(declare-datatypes ((array!90341 0))(
  ( (array!90342 (arr!43632 (Array (_ BitVec 32) ValueCell!17475)) (size!44183 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90341)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54099)

(declare-fun zeroValue!1262 () V!54099)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90343 0))(
  ( (array!90344 (arr!43633 (Array (_ BitVec 32) (_ BitVec 64))) (size!44184 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90343)

(declare-datatypes ((tuple2!23926 0))(
  ( (tuple2!23927 (_1!11973 (_ BitVec 64)) (_2!11973 V!54099)) )
))
(declare-datatypes ((List!31107 0))(
  ( (Nil!31104) (Cons!31103 (h!32312 tuple2!23926) (t!45312 List!31107)) )
))
(declare-datatypes ((ListLongMap!21595 0))(
  ( (ListLongMap!21596 (toList!10813 List!31107)) )
))
(declare-fun contains!8913 (ListLongMap!21595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5734 (array!90343 array!90341 (_ BitVec 32) (_ BitVec 32) V!54099 V!54099 (_ BitVec 32) Int) ListLongMap!21595)

(assert (=> b!1333021 (= res!884683 (contains!8913 (getCurrentListMap!5734 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1333022 () Bool)

(declare-fun res!884690 () Bool)

(assert (=> b!1333022 (=> (not res!884690) (not e!759453))))

(declare-datatypes ((List!31108 0))(
  ( (Nil!31105) (Cons!31104 (h!32313 (_ BitVec 64)) (t!45313 List!31108)) )
))
(declare-fun arrayNoDuplicates!0 (array!90343 (_ BitVec 32) List!31108) Bool)

(assert (=> b!1333022 (= res!884690 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31105))))

(declare-fun b!1333023 () Bool)

(declare-fun e!759450 () Bool)

(declare-fun tp_is_empty!36747 () Bool)

(assert (=> b!1333023 (= e!759450 tp_is_empty!36747)))

(declare-fun res!884687 () Bool)

(assert (=> start!112478 (=> (not res!884687) (not e!759453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112478 (= res!884687 (validMask!0 mask!1998))))

(assert (=> start!112478 e!759453))

(declare-fun e!759451 () Bool)

(declare-fun array_inv!32851 (array!90341) Bool)

(assert (=> start!112478 (and (array_inv!32851 _values!1320) e!759451)))

(assert (=> start!112478 true))

(declare-fun array_inv!32852 (array!90343) Bool)

(assert (=> start!112478 (array_inv!32852 _keys!1590)))

(assert (=> start!112478 tp!108149))

(assert (=> start!112478 tp_is_empty!36747))

(declare-fun b!1333024 () Bool)

(declare-fun mapRes!56794 () Bool)

(assert (=> b!1333024 (= e!759451 (and e!759450 mapRes!56794))))

(declare-fun condMapEmpty!56794 () Bool)

(declare-fun mapDefault!56794 () ValueCell!17475)

(assert (=> b!1333024 (= condMapEmpty!56794 (= (arr!43632 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17475)) mapDefault!56794)))))

(declare-fun b!1333025 () Bool)

(declare-fun e!759454 () Bool)

(assert (=> b!1333025 (= e!759454 tp_is_empty!36747)))

(declare-fun b!1333026 () Bool)

(assert (=> b!1333026 (= e!759453 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun b!1333027 () Bool)

(declare-fun res!884684 () Bool)

(assert (=> b!1333027 (=> (not res!884684) (not e!759453))))

(assert (=> b!1333027 (= res!884684 (not (= (select (arr!43633 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333028 () Bool)

(declare-fun res!884689 () Bool)

(assert (=> b!1333028 (=> (not res!884689) (not e!759453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90343 (_ BitVec 32)) Bool)

(assert (=> b!1333028 (= res!884689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56794 () Bool)

(declare-fun tp!108148 () Bool)

(assert (=> mapNonEmpty!56794 (= mapRes!56794 (and tp!108148 e!759454))))

(declare-fun mapKey!56794 () (_ BitVec 32))

(declare-fun mapValue!56794 () ValueCell!17475)

(declare-fun mapRest!56794 () (Array (_ BitVec 32) ValueCell!17475))

(assert (=> mapNonEmpty!56794 (= (arr!43632 _values!1320) (store mapRest!56794 mapKey!56794 mapValue!56794))))

(declare-fun mapIsEmpty!56794 () Bool)

(assert (=> mapIsEmpty!56794 mapRes!56794))

(declare-fun b!1333029 () Bool)

(declare-fun res!884688 () Bool)

(assert (=> b!1333029 (=> (not res!884688) (not e!759453))))

(assert (=> b!1333029 (= res!884688 (and (= (size!44183 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44184 _keys!1590) (size!44183 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333030 () Bool)

(declare-fun res!884685 () Bool)

(assert (=> b!1333030 (=> (not res!884685) (not e!759453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333030 (= res!884685 (validKeyInArray!0 (select (arr!43633 _keys!1590) from!1980)))))

(declare-fun b!1333031 () Bool)

(declare-fun res!884686 () Bool)

(assert (=> b!1333031 (=> (not res!884686) (not e!759453))))

(assert (=> b!1333031 (= res!884686 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44184 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112478 res!884687) b!1333029))

(assert (= (and b!1333029 res!884688) b!1333028))

(assert (= (and b!1333028 res!884689) b!1333022))

(assert (= (and b!1333022 res!884690) b!1333031))

(assert (= (and b!1333031 res!884686) b!1333021))

(assert (= (and b!1333021 res!884683) b!1333027))

(assert (= (and b!1333027 res!884684) b!1333030))

(assert (= (and b!1333030 res!884685) b!1333026))

(assert (= (and b!1333024 condMapEmpty!56794) mapIsEmpty!56794))

(assert (= (and b!1333024 (not condMapEmpty!56794)) mapNonEmpty!56794))

(get-info :version)

(assert (= (and mapNonEmpty!56794 ((_ is ValueCellFull!17475) mapValue!56794)) b!1333025))

(assert (= (and b!1333024 ((_ is ValueCellFull!17475) mapDefault!56794)) b!1333023))

(assert (= start!112478 b!1333024))

(declare-fun m!1221683 () Bool)

(assert (=> b!1333021 m!1221683))

(assert (=> b!1333021 m!1221683))

(declare-fun m!1221685 () Bool)

(assert (=> b!1333021 m!1221685))

(declare-fun m!1221687 () Bool)

(assert (=> mapNonEmpty!56794 m!1221687))

(declare-fun m!1221689 () Bool)

(assert (=> b!1333030 m!1221689))

(assert (=> b!1333030 m!1221689))

(declare-fun m!1221691 () Bool)

(assert (=> b!1333030 m!1221691))

(declare-fun m!1221693 () Bool)

(assert (=> b!1333022 m!1221693))

(declare-fun m!1221695 () Bool)

(assert (=> b!1333028 m!1221695))

(assert (=> b!1333027 m!1221689))

(declare-fun m!1221697 () Bool)

(assert (=> start!112478 m!1221697))

(declare-fun m!1221699 () Bool)

(assert (=> start!112478 m!1221699))

(declare-fun m!1221701 () Bool)

(assert (=> start!112478 m!1221701))

(check-sat b_and!49689 (not b!1333028) (not b_next!30837) (not mapNonEmpty!56794) (not b!1333030) tp_is_empty!36747 (not start!112478) (not b!1333021) (not b!1333022))
(check-sat b_and!49689 (not b_next!30837))
