; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36828 () Bool)

(assert start!36828)

(declare-fun b_free!7947 () Bool)

(declare-fun b_next!7947 () Bool)

(assert (=> start!36828 (= b_free!7947 (not b_next!7947))))

(declare-fun tp!28556 () Bool)

(declare-fun b_and!15207 () Bool)

(assert (=> start!36828 (= tp!28556 b_and!15207)))

(declare-fun b!367811 () Bool)

(declare-fun res!206111 () Bool)

(declare-fun e!225026 () Bool)

(assert (=> b!367811 (=> (not res!206111) (not e!225026))))

(declare-datatypes ((array!21115 0))(
  ( (array!21116 (arr!10023 (Array (_ BitVec 32) (_ BitVec 64))) (size!10375 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21115)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367811 (= res!206111 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367812 () Bool)

(declare-fun res!206108 () Bool)

(assert (=> b!367812 (=> (not res!206108) (not e!225026))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367812 (= res!206108 (or (= (select (arr!10023 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10023 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367813 () Bool)

(declare-fun res!206113 () Bool)

(assert (=> b!367813 (=> (not res!206113) (not e!225026))))

(assert (=> b!367813 (= res!206113 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10375 _keys!658))))))

(declare-fun b!367814 () Bool)

(declare-fun res!206105 () Bool)

(assert (=> b!367814 (=> (not res!206105) (not e!225026))))

(declare-datatypes ((List!5606 0))(
  ( (Nil!5603) (Cons!5602 (h!6458 (_ BitVec 64)) (t!10764 List!5606)) )
))
(declare-fun arrayNoDuplicates!0 (array!21115 (_ BitVec 32) List!5606) Bool)

(assert (=> b!367814 (= res!206105 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5603))))

(declare-fun mapNonEmpty!14457 () Bool)

(declare-fun mapRes!14457 () Bool)

(declare-fun tp!28557 () Bool)

(declare-fun e!225025 () Bool)

(assert (=> mapNonEmpty!14457 (= mapRes!14457 (and tp!28557 e!225025))))

(declare-fun mapKey!14457 () (_ BitVec 32))

(declare-datatypes ((V!12565 0))(
  ( (V!12566 (val!4342 Int)) )
))
(declare-datatypes ((ValueCell!3954 0))(
  ( (ValueCellFull!3954 (v!6535 V!12565)) (EmptyCell!3954) )
))
(declare-fun mapRest!14457 () (Array (_ BitVec 32) ValueCell!3954))

(declare-datatypes ((array!21117 0))(
  ( (array!21118 (arr!10024 (Array (_ BitVec 32) ValueCell!3954)) (size!10376 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21117)

(declare-fun mapValue!14457 () ValueCell!3954)

(assert (=> mapNonEmpty!14457 (= (arr!10024 _values!506) (store mapRest!14457 mapKey!14457 mapValue!14457))))

(declare-fun b!367815 () Bool)

(declare-fun res!206114 () Bool)

(declare-fun e!225029 () Bool)

(assert (=> b!367815 (=> (not res!206114) (not e!225029))))

(declare-fun lt!169426 () array!21115)

(assert (=> b!367815 (= res!206114 (arrayNoDuplicates!0 lt!169426 #b00000000000000000000000000000000 Nil!5603))))

(declare-fun b!367816 () Bool)

(assert (=> b!367816 (= e!225026 e!225029)))

(declare-fun res!206112 () Bool)

(assert (=> b!367816 (=> (not res!206112) (not e!225029))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21115 (_ BitVec 32)) Bool)

(assert (=> b!367816 (= res!206112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169426 mask!970))))

(assert (=> b!367816 (= lt!169426 (array!21116 (store (arr!10023 _keys!658) i!548 k0!778) (size!10375 _keys!658)))))

(declare-fun b!367817 () Bool)

(declare-fun tp_is_empty!8595 () Bool)

(assert (=> b!367817 (= e!225025 tp_is_empty!8595)))

(declare-fun res!206110 () Bool)

(assert (=> start!36828 (=> (not res!206110) (not e!225026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36828 (= res!206110 (validMask!0 mask!970))))

(assert (=> start!36828 e!225026))

(assert (=> start!36828 true))

(declare-fun e!225028 () Bool)

(declare-fun array_inv!7406 (array!21117) Bool)

(assert (=> start!36828 (and (array_inv!7406 _values!506) e!225028)))

(assert (=> start!36828 tp!28556))

(assert (=> start!36828 tp_is_empty!8595))

(declare-fun array_inv!7407 (array!21115) Bool)

(assert (=> start!36828 (array_inv!7407 _keys!658)))

(declare-fun mapIsEmpty!14457 () Bool)

(assert (=> mapIsEmpty!14457 mapRes!14457))

(declare-fun b!367818 () Bool)

(declare-fun res!206106 () Bool)

(assert (=> b!367818 (=> (not res!206106) (not e!225026))))

(assert (=> b!367818 (= res!206106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367819 () Bool)

(declare-fun e!225027 () Bool)

(assert (=> b!367819 (= e!225027 tp_is_empty!8595)))

(declare-fun b!367820 () Bool)

(declare-fun res!206107 () Bool)

(assert (=> b!367820 (=> (not res!206107) (not e!225026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367820 (= res!206107 (validKeyInArray!0 k0!778))))

(declare-fun b!367821 () Bool)

(assert (=> b!367821 (= e!225028 (and e!225027 mapRes!14457))))

(declare-fun condMapEmpty!14457 () Bool)

(declare-fun mapDefault!14457 () ValueCell!3954)

(assert (=> b!367821 (= condMapEmpty!14457 (= (arr!10024 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3954)) mapDefault!14457)))))

(declare-fun b!367822 () Bool)

(assert (=> b!367822 (= e!225029 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12565)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((tuple2!5746 0))(
  ( (tuple2!5747 (_1!2883 (_ BitVec 64)) (_2!2883 V!12565)) )
))
(declare-datatypes ((List!5607 0))(
  ( (Nil!5604) (Cons!5603 (h!6459 tuple2!5746) (t!10765 List!5607)) )
))
(declare-datatypes ((ListLongMap!4673 0))(
  ( (ListLongMap!4674 (toList!2352 List!5607)) )
))
(declare-fun lt!169425 () ListLongMap!4673)

(declare-fun minValue!472 () V!12565)

(declare-fun getCurrentListMapNoExtraKeys!620 (array!21115 array!21117 (_ BitVec 32) (_ BitVec 32) V!12565 V!12565 (_ BitVec 32) Int) ListLongMap!4673)

(assert (=> b!367822 (= lt!169425 (getCurrentListMapNoExtraKeys!620 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367823 () Bool)

(declare-fun res!206109 () Bool)

(assert (=> b!367823 (=> (not res!206109) (not e!225026))))

(assert (=> b!367823 (= res!206109 (and (= (size!10376 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10375 _keys!658) (size!10376 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!36828 res!206110) b!367823))

(assert (= (and b!367823 res!206109) b!367818))

(assert (= (and b!367818 res!206106) b!367814))

(assert (= (and b!367814 res!206105) b!367813))

(assert (= (and b!367813 res!206113) b!367820))

(assert (= (and b!367820 res!206107) b!367812))

(assert (= (and b!367812 res!206108) b!367811))

(assert (= (and b!367811 res!206111) b!367816))

(assert (= (and b!367816 res!206112) b!367815))

(assert (= (and b!367815 res!206114) b!367822))

(assert (= (and b!367821 condMapEmpty!14457) mapIsEmpty!14457))

(assert (= (and b!367821 (not condMapEmpty!14457)) mapNonEmpty!14457))

(get-info :version)

(assert (= (and mapNonEmpty!14457 ((_ is ValueCellFull!3954) mapValue!14457)) b!367817))

(assert (= (and b!367821 ((_ is ValueCellFull!3954) mapDefault!14457)) b!367819))

(assert (= start!36828 b!367821))

(declare-fun m!364639 () Bool)

(assert (=> b!367815 m!364639))

(declare-fun m!364641 () Bool)

(assert (=> b!367812 m!364641))

(declare-fun m!364643 () Bool)

(assert (=> b!367816 m!364643))

(declare-fun m!364645 () Bool)

(assert (=> b!367816 m!364645))

(declare-fun m!364647 () Bool)

(assert (=> b!367814 m!364647))

(declare-fun m!364649 () Bool)

(assert (=> b!367820 m!364649))

(declare-fun m!364651 () Bool)

(assert (=> mapNonEmpty!14457 m!364651))

(declare-fun m!364653 () Bool)

(assert (=> b!367818 m!364653))

(declare-fun m!364655 () Bool)

(assert (=> start!36828 m!364655))

(declare-fun m!364657 () Bool)

(assert (=> start!36828 m!364657))

(declare-fun m!364659 () Bool)

(assert (=> start!36828 m!364659))

(declare-fun m!364661 () Bool)

(assert (=> b!367811 m!364661))

(declare-fun m!364663 () Bool)

(assert (=> b!367822 m!364663))

(check-sat (not b!367811) (not b!367820) (not b_next!7947) (not b!367818) (not b!367822) (not start!36828) tp_is_empty!8595 (not b!367814) (not mapNonEmpty!14457) (not b!367816) (not b!367815) b_and!15207)
(check-sat b_and!15207 (not b_next!7947))
