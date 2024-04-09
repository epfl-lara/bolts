; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37032 () Bool)

(assert start!37032)

(declare-fun b_free!8151 () Bool)

(declare-fun b_next!8151 () Bool)

(assert (=> start!37032 (= b_free!8151 (not b_next!8151))))

(declare-fun tp!29168 () Bool)

(declare-fun b_and!15411 () Bool)

(assert (=> start!37032 (= tp!29168 b_and!15411)))

(declare-fun b!371789 () Bool)

(declare-fun e!226864 () Bool)

(declare-fun e!226866 () Bool)

(declare-fun mapRes!14763 () Bool)

(assert (=> b!371789 (= e!226864 (and e!226866 mapRes!14763))))

(declare-fun condMapEmpty!14763 () Bool)

(declare-datatypes ((V!12837 0))(
  ( (V!12838 (val!4444 Int)) )
))
(declare-datatypes ((ValueCell!4056 0))(
  ( (ValueCellFull!4056 (v!6637 V!12837)) (EmptyCell!4056) )
))
(declare-datatypes ((array!21509 0))(
  ( (array!21510 (arr!10220 (Array (_ BitVec 32) ValueCell!4056)) (size!10572 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21509)

(declare-fun mapDefault!14763 () ValueCell!4056)

(assert (=> b!371789 (= condMapEmpty!14763 (= (arr!10220 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4056)) mapDefault!14763)))))

(declare-fun mapNonEmpty!14763 () Bool)

(declare-fun tp!29169 () Bool)

(declare-fun e!226862 () Bool)

(assert (=> mapNonEmpty!14763 (= mapRes!14763 (and tp!29169 e!226862))))

(declare-fun mapRest!14763 () (Array (_ BitVec 32) ValueCell!4056))

(declare-fun mapKey!14763 () (_ BitVec 32))

(declare-fun mapValue!14763 () ValueCell!4056)

(assert (=> mapNonEmpty!14763 (= (arr!10220 _values!506) (store mapRest!14763 mapKey!14763 mapValue!14763))))

(declare-fun mapIsEmpty!14763 () Bool)

(assert (=> mapIsEmpty!14763 mapRes!14763))

(declare-fun b!371791 () Bool)

(declare-fun res!209173 () Bool)

(declare-fun e!226863 () Bool)

(assert (=> b!371791 (=> (not res!209173) (not e!226863))))

(declare-datatypes ((array!21511 0))(
  ( (array!21512 (arr!10221 (Array (_ BitVec 32) (_ BitVec 64))) (size!10573 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21511)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371791 (= res!209173 (or (= (select (arr!10221 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10221 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371792 () Bool)

(declare-fun e!226861 () Bool)

(assert (=> b!371792 (= e!226861 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!170467 () array!21511)

(declare-fun zeroValue!472 () V!12837)

(declare-datatypes ((tuple2!5874 0))(
  ( (tuple2!5875 (_1!2947 (_ BitVec 64)) (_2!2947 V!12837)) )
))
(declare-datatypes ((List!5745 0))(
  ( (Nil!5742) (Cons!5741 (h!6597 tuple2!5874) (t!10903 List!5745)) )
))
(declare-datatypes ((ListLongMap!4801 0))(
  ( (ListLongMap!4802 (toList!2416 List!5745)) )
))
(declare-fun lt!170472 () ListLongMap!4801)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12837)

(declare-fun lt!170469 () array!21509)

(declare-fun getCurrentListMap!1866 (array!21511 array!21509 (_ BitVec 32) (_ BitVec 32) V!12837 V!12837 (_ BitVec 32) Int) ListLongMap!4801)

(assert (=> b!371792 (= lt!170472 (getCurrentListMap!1866 lt!170467 lt!170469 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170473 () ListLongMap!4801)

(declare-fun lt!170468 () ListLongMap!4801)

(assert (=> b!371792 (and (= lt!170473 lt!170468) (= lt!170468 lt!170473))))

(declare-fun v!373 () V!12837)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun lt!170471 () ListLongMap!4801)

(declare-fun +!757 (ListLongMap!4801 tuple2!5874) ListLongMap!4801)

(assert (=> b!371792 (= lt!170468 (+!757 lt!170471 (tuple2!5875 k0!778 v!373)))))

(declare-datatypes ((Unit!11419 0))(
  ( (Unit!11420) )
))
(declare-fun lt!170470 () Unit!11419)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!17 (array!21511 array!21509 (_ BitVec 32) (_ BitVec 32) V!12837 V!12837 (_ BitVec 32) (_ BitVec 64) V!12837 (_ BitVec 32) Int) Unit!11419)

(assert (=> b!371792 (= lt!170470 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!17 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!684 (array!21511 array!21509 (_ BitVec 32) (_ BitVec 32) V!12837 V!12837 (_ BitVec 32) Int) ListLongMap!4801)

(assert (=> b!371792 (= lt!170473 (getCurrentListMapNoExtraKeys!684 lt!170467 lt!170469 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371792 (= lt!170469 (array!21510 (store (arr!10220 _values!506) i!548 (ValueCellFull!4056 v!373)) (size!10572 _values!506)))))

(assert (=> b!371792 (= lt!170471 (getCurrentListMapNoExtraKeys!684 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371793 () Bool)

(assert (=> b!371793 (= e!226863 e!226861)))

(declare-fun res!209172 () Bool)

(assert (=> b!371793 (=> (not res!209172) (not e!226861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21511 (_ BitVec 32)) Bool)

(assert (=> b!371793 (= res!209172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170467 mask!970))))

(assert (=> b!371793 (= lt!170467 (array!21512 (store (arr!10221 _keys!658) i!548 k0!778) (size!10573 _keys!658)))))

(declare-fun b!371794 () Bool)

(declare-fun res!209165 () Bool)

(assert (=> b!371794 (=> (not res!209165) (not e!226863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371794 (= res!209165 (validKeyInArray!0 k0!778))))

(declare-fun res!209171 () Bool)

(assert (=> start!37032 (=> (not res!209171) (not e!226863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37032 (= res!209171 (validMask!0 mask!970))))

(assert (=> start!37032 e!226863))

(declare-fun array_inv!7546 (array!21509) Bool)

(assert (=> start!37032 (and (array_inv!7546 _values!506) e!226864)))

(assert (=> start!37032 tp!29168))

(assert (=> start!37032 true))

(declare-fun tp_is_empty!8799 () Bool)

(assert (=> start!37032 tp_is_empty!8799))

(declare-fun array_inv!7547 (array!21511) Bool)

(assert (=> start!37032 (array_inv!7547 _keys!658)))

(declare-fun b!371790 () Bool)

(declare-fun res!209168 () Bool)

(assert (=> b!371790 (=> (not res!209168) (not e!226863))))

(assert (=> b!371790 (= res!209168 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10573 _keys!658))))))

(declare-fun b!371795 () Bool)

(declare-fun res!209169 () Bool)

(assert (=> b!371795 (=> (not res!209169) (not e!226863))))

(assert (=> b!371795 (= res!209169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371796 () Bool)

(declare-fun res!209170 () Bool)

(assert (=> b!371796 (=> (not res!209170) (not e!226863))))

(assert (=> b!371796 (= res!209170 (and (= (size!10572 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10573 _keys!658) (size!10572 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371797 () Bool)

(declare-fun res!209174 () Bool)

(assert (=> b!371797 (=> (not res!209174) (not e!226861))))

(declare-datatypes ((List!5746 0))(
  ( (Nil!5743) (Cons!5742 (h!6598 (_ BitVec 64)) (t!10904 List!5746)) )
))
(declare-fun arrayNoDuplicates!0 (array!21511 (_ BitVec 32) List!5746) Bool)

(assert (=> b!371797 (= res!209174 (arrayNoDuplicates!0 lt!170467 #b00000000000000000000000000000000 Nil!5743))))

(declare-fun b!371798 () Bool)

(assert (=> b!371798 (= e!226866 tp_is_empty!8799)))

(declare-fun b!371799 () Bool)

(declare-fun res!209166 () Bool)

(assert (=> b!371799 (=> (not res!209166) (not e!226863))))

(declare-fun arrayContainsKey!0 (array!21511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371799 (= res!209166 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371800 () Bool)

(assert (=> b!371800 (= e!226862 tp_is_empty!8799)))

(declare-fun b!371801 () Bool)

(declare-fun res!209167 () Bool)

(assert (=> b!371801 (=> (not res!209167) (not e!226863))))

(assert (=> b!371801 (= res!209167 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5743))))

(assert (= (and start!37032 res!209171) b!371796))

(assert (= (and b!371796 res!209170) b!371795))

(assert (= (and b!371795 res!209169) b!371801))

(assert (= (and b!371801 res!209167) b!371790))

(assert (= (and b!371790 res!209168) b!371794))

(assert (= (and b!371794 res!209165) b!371791))

(assert (= (and b!371791 res!209173) b!371799))

(assert (= (and b!371799 res!209166) b!371793))

(assert (= (and b!371793 res!209172) b!371797))

(assert (= (and b!371797 res!209174) b!371792))

(assert (= (and b!371789 condMapEmpty!14763) mapIsEmpty!14763))

(assert (= (and b!371789 (not condMapEmpty!14763)) mapNonEmpty!14763))

(get-info :version)

(assert (= (and mapNonEmpty!14763 ((_ is ValueCellFull!4056) mapValue!14763)) b!371800))

(assert (= (and b!371789 ((_ is ValueCellFull!4056) mapDefault!14763)) b!371798))

(assert (= start!37032 b!371789))

(declare-fun m!367733 () Bool)

(assert (=> b!371791 m!367733))

(declare-fun m!367735 () Bool)

(assert (=> b!371797 m!367735))

(declare-fun m!367737 () Bool)

(assert (=> start!37032 m!367737))

(declare-fun m!367739 () Bool)

(assert (=> start!37032 m!367739))

(declare-fun m!367741 () Bool)

(assert (=> start!37032 m!367741))

(declare-fun m!367743 () Bool)

(assert (=> b!371793 m!367743))

(declare-fun m!367745 () Bool)

(assert (=> b!371793 m!367745))

(declare-fun m!367747 () Bool)

(assert (=> b!371799 m!367747))

(declare-fun m!367749 () Bool)

(assert (=> b!371801 m!367749))

(declare-fun m!367751 () Bool)

(assert (=> b!371794 m!367751))

(declare-fun m!367753 () Bool)

(assert (=> b!371792 m!367753))

(declare-fun m!367755 () Bool)

(assert (=> b!371792 m!367755))

(declare-fun m!367757 () Bool)

(assert (=> b!371792 m!367757))

(declare-fun m!367759 () Bool)

(assert (=> b!371792 m!367759))

(declare-fun m!367761 () Bool)

(assert (=> b!371792 m!367761))

(declare-fun m!367763 () Bool)

(assert (=> b!371792 m!367763))

(declare-fun m!367765 () Bool)

(assert (=> mapNonEmpty!14763 m!367765))

(declare-fun m!367767 () Bool)

(assert (=> b!371795 m!367767))

(check-sat b_and!15411 (not b!371801) (not b_next!8151) tp_is_empty!8799 (not b!371799) (not mapNonEmpty!14763) (not b!371793) (not b!371792) (not b!371795) (not b!371797) (not b!371794) (not start!37032))
(check-sat b_and!15411 (not b_next!8151))
