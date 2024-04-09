; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108124 () Bool)

(assert start!108124)

(declare-fun b_free!27801 () Bool)

(declare-fun b_next!27801 () Bool)

(assert (=> start!108124 (= b_free!27801 (not b_next!27801))))

(declare-fun tp!98358 () Bool)

(declare-fun b_and!45867 () Bool)

(assert (=> start!108124 (= tp!98358 b_and!45867)))

(declare-fun b!1276383 () Bool)

(declare-fun e!728887 () Bool)

(declare-fun tp_is_empty!33351 () Bool)

(assert (=> b!1276383 (= e!728887 tp_is_empty!33351)))

(declare-fun res!848329 () Bool)

(declare-fun e!728891 () Bool)

(assert (=> start!108124 (=> (not res!848329) (not e!728891))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108124 (= res!848329 (validMask!0 mask!1805))))

(assert (=> start!108124 e!728891))

(assert (=> start!108124 true))

(assert (=> start!108124 tp!98358))

(assert (=> start!108124 tp_is_empty!33351))

(declare-datatypes ((V!49571 0))(
  ( (V!49572 (val!16750 Int)) )
))
(declare-datatypes ((ValueCell!15777 0))(
  ( (ValueCellFull!15777 (v!19345 V!49571)) (EmptyCell!15777) )
))
(declare-datatypes ((array!83747 0))(
  ( (array!83748 (arr!40380 (Array (_ BitVec 32) ValueCell!15777)) (size!40931 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83747)

(declare-fun e!728890 () Bool)

(declare-fun array_inv!30647 (array!83747) Bool)

(assert (=> start!108124 (and (array_inv!30647 _values!1187) e!728890)))

(declare-datatypes ((array!83749 0))(
  ( (array!83750 (arr!40381 (Array (_ BitVec 32) (_ BitVec 64))) (size!40932 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83749)

(declare-fun array_inv!30648 (array!83749) Bool)

(assert (=> start!108124 (array_inv!30648 _keys!1427)))

(declare-fun b!1276384 () Bool)

(assert (=> b!1276384 (= e!728891 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575430 () Bool)

(declare-fun minValue!1129 () V!49571)

(declare-fun k0!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49571)

(declare-datatypes ((tuple2!21628 0))(
  ( (tuple2!21629 (_1!10824 (_ BitVec 64)) (_2!10824 V!49571)) )
))
(declare-datatypes ((List!28813 0))(
  ( (Nil!28810) (Cons!28809 (h!30018 tuple2!21628) (t!42356 List!28813)) )
))
(declare-datatypes ((ListLongMap!19297 0))(
  ( (ListLongMap!19298 (toList!9664 List!28813)) )
))
(declare-fun contains!7711 (ListLongMap!19297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4684 (array!83749 array!83747 (_ BitVec 32) (_ BitVec 32) V!49571 V!49571 (_ BitVec 32) Int) ListLongMap!19297)

(assert (=> b!1276384 (= lt!575430 (contains!7711 (getCurrentListMap!4684 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k0!1053))))

(declare-fun b!1276385 () Bool)

(declare-fun res!848330 () Bool)

(assert (=> b!1276385 (=> (not res!848330) (not e!728891))))

(declare-datatypes ((List!28814 0))(
  ( (Nil!28811) (Cons!28810 (h!30019 (_ BitVec 64)) (t!42357 List!28814)) )
))
(declare-fun arrayNoDuplicates!0 (array!83749 (_ BitVec 32) List!28814) Bool)

(assert (=> b!1276385 (= res!848330 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28811))))

(declare-fun b!1276386 () Bool)

(declare-fun res!848331 () Bool)

(assert (=> b!1276386 (=> (not res!848331) (not e!728891))))

(assert (=> b!1276386 (= res!848331 (and (= (size!40931 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40932 _keys!1427) (size!40931 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51557 () Bool)

(declare-fun mapRes!51557 () Bool)

(declare-fun tp!98357 () Bool)

(assert (=> mapNonEmpty!51557 (= mapRes!51557 (and tp!98357 e!728887))))

(declare-fun mapKey!51557 () (_ BitVec 32))

(declare-fun mapValue!51557 () ValueCell!15777)

(declare-fun mapRest!51557 () (Array (_ BitVec 32) ValueCell!15777))

(assert (=> mapNonEmpty!51557 (= (arr!40380 _values!1187) (store mapRest!51557 mapKey!51557 mapValue!51557))))

(declare-fun mapIsEmpty!51557 () Bool)

(assert (=> mapIsEmpty!51557 mapRes!51557))

(declare-fun b!1276387 () Bool)

(declare-fun e!728888 () Bool)

(assert (=> b!1276387 (= e!728888 tp_is_empty!33351)))

(declare-fun b!1276388 () Bool)

(assert (=> b!1276388 (= e!728890 (and e!728888 mapRes!51557))))

(declare-fun condMapEmpty!51557 () Bool)

(declare-fun mapDefault!51557 () ValueCell!15777)

(assert (=> b!1276388 (= condMapEmpty!51557 (= (arr!40380 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15777)) mapDefault!51557)))))

(declare-fun b!1276389 () Bool)

(declare-fun res!848328 () Bool)

(assert (=> b!1276389 (=> (not res!848328) (not e!728891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83749 (_ BitVec 32)) Bool)

(assert (=> b!1276389 (= res!848328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(assert (= (and start!108124 res!848329) b!1276386))

(assert (= (and b!1276386 res!848331) b!1276389))

(assert (= (and b!1276389 res!848328) b!1276385))

(assert (= (and b!1276385 res!848330) b!1276384))

(assert (= (and b!1276388 condMapEmpty!51557) mapIsEmpty!51557))

(assert (= (and b!1276388 (not condMapEmpty!51557)) mapNonEmpty!51557))

(get-info :version)

(assert (= (and mapNonEmpty!51557 ((_ is ValueCellFull!15777) mapValue!51557)) b!1276383))

(assert (= (and b!1276388 ((_ is ValueCellFull!15777) mapDefault!51557)) b!1276387))

(assert (= start!108124 b!1276388))

(declare-fun m!1172331 () Bool)

(assert (=> b!1276385 m!1172331))

(declare-fun m!1172333 () Bool)

(assert (=> b!1276389 m!1172333))

(declare-fun m!1172335 () Bool)

(assert (=> b!1276384 m!1172335))

(assert (=> b!1276384 m!1172335))

(declare-fun m!1172337 () Bool)

(assert (=> b!1276384 m!1172337))

(declare-fun m!1172339 () Bool)

(assert (=> start!108124 m!1172339))

(declare-fun m!1172341 () Bool)

(assert (=> start!108124 m!1172341))

(declare-fun m!1172343 () Bool)

(assert (=> start!108124 m!1172343))

(declare-fun m!1172345 () Bool)

(assert (=> mapNonEmpty!51557 m!1172345))

(check-sat (not b!1276384) (not mapNonEmpty!51557) (not b!1276389) (not b_next!27801) (not start!108124) b_and!45867 (not b!1276385) tp_is_empty!33351)
(check-sat b_and!45867 (not b_next!27801))
