; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112436 () Bool)

(assert start!112436)

(declare-fun b_free!30795 () Bool)

(declare-fun b_next!30795 () Bool)

(assert (=> start!112436 (= b_free!30795 (not b_next!30795))))

(declare-fun tp!108023 () Bool)

(declare-fun b_and!49647 () Bool)

(assert (=> start!112436 (= tp!108023 b_and!49647)))

(declare-fun b!1332502 () Bool)

(declare-fun res!884357 () Bool)

(declare-fun e!759138 () Bool)

(assert (=> b!1332502 (=> (not res!884357) (not e!759138))))

(declare-datatypes ((array!90259 0))(
  ( (array!90260 (arr!43591 (Array (_ BitVec 32) (_ BitVec 64))) (size!44142 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90259)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90259 (_ BitVec 32)) Bool)

(assert (=> b!1332502 (= res!884357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!884354 () Bool)

(assert (=> start!112436 (=> (not res!884354) (not e!759138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112436 (= res!884354 (validMask!0 mask!1998))))

(assert (=> start!112436 e!759138))

(declare-datatypes ((V!54043 0))(
  ( (V!54044 (val!18427 Int)) )
))
(declare-datatypes ((ValueCell!17454 0))(
  ( (ValueCellFull!17454 (v!21062 V!54043)) (EmptyCell!17454) )
))
(declare-datatypes ((array!90261 0))(
  ( (array!90262 (arr!43592 (Array (_ BitVec 32) ValueCell!17454)) (size!44143 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90261)

(declare-fun e!759136 () Bool)

(declare-fun array_inv!32825 (array!90261) Bool)

(assert (=> start!112436 (and (array_inv!32825 _values!1320) e!759136)))

(assert (=> start!112436 true))

(declare-fun array_inv!32826 (array!90259) Bool)

(assert (=> start!112436 (array_inv!32826 _keys!1590)))

(assert (=> start!112436 tp!108023))

(declare-fun tp_is_empty!36705 () Bool)

(assert (=> start!112436 tp_is_empty!36705))

(declare-fun b!1332503 () Bool)

(declare-fun res!884355 () Bool)

(assert (=> b!1332503 (=> (not res!884355) (not e!759138))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332503 (= res!884355 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44142 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332504 () Bool)

(assert (=> b!1332504 (= e!759138 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!591977 () Bool)

(declare-fun minValue!1262 () V!54043)

(declare-fun zeroValue!1262 () V!54043)

(declare-datatypes ((tuple2!23898 0))(
  ( (tuple2!23899 (_1!11959 (_ BitVec 64)) (_2!11959 V!54043)) )
))
(declare-datatypes ((List!31076 0))(
  ( (Nil!31073) (Cons!31072 (h!32281 tuple2!23898) (t!45281 List!31076)) )
))
(declare-datatypes ((ListLongMap!21567 0))(
  ( (ListLongMap!21568 (toList!10799 List!31076)) )
))
(declare-fun contains!8899 (ListLongMap!21567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5720 (array!90259 array!90261 (_ BitVec 32) (_ BitVec 32) V!54043 V!54043 (_ BitVec 32) Int) ListLongMap!21567)

(assert (=> b!1332504 (= lt!591977 (contains!8899 (getCurrentListMap!5720 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56731 () Bool)

(declare-fun mapRes!56731 () Bool)

(declare-fun tp!108022 () Bool)

(declare-fun e!759135 () Bool)

(assert (=> mapNonEmpty!56731 (= mapRes!56731 (and tp!108022 e!759135))))

(declare-fun mapKey!56731 () (_ BitVec 32))

(declare-fun mapValue!56731 () ValueCell!17454)

(declare-fun mapRest!56731 () (Array (_ BitVec 32) ValueCell!17454))

(assert (=> mapNonEmpty!56731 (= (arr!43592 _values!1320) (store mapRest!56731 mapKey!56731 mapValue!56731))))

(declare-fun b!1332505 () Bool)

(declare-fun res!884353 () Bool)

(assert (=> b!1332505 (=> (not res!884353) (not e!759138))))

(declare-datatypes ((List!31077 0))(
  ( (Nil!31074) (Cons!31073 (h!32282 (_ BitVec 64)) (t!45282 List!31077)) )
))
(declare-fun arrayNoDuplicates!0 (array!90259 (_ BitVec 32) List!31077) Bool)

(assert (=> b!1332505 (= res!884353 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31074))))

(declare-fun b!1332506 () Bool)

(assert (=> b!1332506 (= e!759135 tp_is_empty!36705)))

(declare-fun b!1332507 () Bool)

(declare-fun e!759139 () Bool)

(assert (=> b!1332507 (= e!759136 (and e!759139 mapRes!56731))))

(declare-fun condMapEmpty!56731 () Bool)

(declare-fun mapDefault!56731 () ValueCell!17454)

(assert (=> b!1332507 (= condMapEmpty!56731 (= (arr!43592 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17454)) mapDefault!56731)))))

(declare-fun b!1332508 () Bool)

(declare-fun res!884356 () Bool)

(assert (=> b!1332508 (=> (not res!884356) (not e!759138))))

(assert (=> b!1332508 (= res!884356 (and (= (size!44143 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44142 _keys!1590) (size!44143 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56731 () Bool)

(assert (=> mapIsEmpty!56731 mapRes!56731))

(declare-fun b!1332509 () Bool)

(assert (=> b!1332509 (= e!759139 tp_is_empty!36705)))

(assert (= (and start!112436 res!884354) b!1332508))

(assert (= (and b!1332508 res!884356) b!1332502))

(assert (= (and b!1332502 res!884357) b!1332505))

(assert (= (and b!1332505 res!884353) b!1332503))

(assert (= (and b!1332503 res!884355) b!1332504))

(assert (= (and b!1332507 condMapEmpty!56731) mapIsEmpty!56731))

(assert (= (and b!1332507 (not condMapEmpty!56731)) mapNonEmpty!56731))

(get-info :version)

(assert (= (and mapNonEmpty!56731 ((_ is ValueCellFull!17454) mapValue!56731)) b!1332506))

(assert (= (and b!1332507 ((_ is ValueCellFull!17454) mapDefault!56731)) b!1332509))

(assert (= start!112436 b!1332507))

(declare-fun m!1221343 () Bool)

(assert (=> b!1332502 m!1221343))

(declare-fun m!1221345 () Bool)

(assert (=> b!1332504 m!1221345))

(assert (=> b!1332504 m!1221345))

(declare-fun m!1221347 () Bool)

(assert (=> b!1332504 m!1221347))

(declare-fun m!1221349 () Bool)

(assert (=> b!1332505 m!1221349))

(declare-fun m!1221351 () Bool)

(assert (=> mapNonEmpty!56731 m!1221351))

(declare-fun m!1221353 () Bool)

(assert (=> start!112436 m!1221353))

(declare-fun m!1221355 () Bool)

(assert (=> start!112436 m!1221355))

(declare-fun m!1221357 () Bool)

(assert (=> start!112436 m!1221357))

(check-sat tp_is_empty!36705 (not start!112436) (not b_next!30795) (not b!1332502) (not b!1332504) (not b!1332505) b_and!49647 (not mapNonEmpty!56731))
(check-sat b_and!49647 (not b_next!30795))
