; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37026 () Bool)

(assert start!37026)

(declare-fun b_free!8145 () Bool)

(declare-fun b_next!8145 () Bool)

(assert (=> start!37026 (= b_free!8145 (not b_next!8145))))

(declare-fun tp!29150 () Bool)

(declare-fun b_and!15405 () Bool)

(assert (=> start!37026 (= tp!29150 b_and!15405)))

(declare-fun mapIsEmpty!14754 () Bool)

(declare-fun mapRes!14754 () Bool)

(assert (=> mapIsEmpty!14754 mapRes!14754))

(declare-fun b!371672 () Bool)

(declare-fun res!209076 () Bool)

(declare-fun e!226807 () Bool)

(assert (=> b!371672 (=> (not res!209076) (not e!226807))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12829 0))(
  ( (V!12830 (val!4441 Int)) )
))
(declare-datatypes ((ValueCell!4053 0))(
  ( (ValueCellFull!4053 (v!6634 V!12829)) (EmptyCell!4053) )
))
(declare-datatypes ((array!21497 0))(
  ( (array!21498 (arr!10214 (Array (_ BitVec 32) ValueCell!4053)) (size!10566 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21497)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((array!21499 0))(
  ( (array!21500 (arr!10215 (Array (_ BitVec 32) (_ BitVec 64))) (size!10567 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21499)

(assert (=> b!371672 (= res!209076 (and (= (size!10566 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10567 _keys!658) (size!10566 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371673 () Bool)

(declare-fun e!226808 () Bool)

(declare-fun tp_is_empty!8793 () Bool)

(assert (=> b!371673 (= e!226808 tp_is_empty!8793)))

(declare-fun b!371674 () Bool)

(declare-fun res!209075 () Bool)

(declare-fun e!226810 () Bool)

(assert (=> b!371674 (=> (not res!209075) (not e!226810))))

(declare-fun lt!170416 () array!21499)

(declare-datatypes ((List!5740 0))(
  ( (Nil!5737) (Cons!5736 (h!6592 (_ BitVec 64)) (t!10898 List!5740)) )
))
(declare-fun arrayNoDuplicates!0 (array!21499 (_ BitVec 32) List!5740) Bool)

(assert (=> b!371674 (= res!209075 (arrayNoDuplicates!0 lt!170416 #b00000000000000000000000000000000 Nil!5737))))

(declare-fun b!371675 () Bool)

(declare-fun e!226812 () Bool)

(assert (=> b!371675 (= e!226812 tp_is_empty!8793)))

(declare-fun b!371676 () Bool)

(declare-fun res!209083 () Bool)

(assert (=> b!371676 (=> (not res!209083) (not e!226807))))

(assert (=> b!371676 (= res!209083 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5737))))

(declare-fun b!371677 () Bool)

(declare-fun res!209084 () Bool)

(assert (=> b!371677 (=> (not res!209084) (not e!226807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21499 (_ BitVec 32)) Bool)

(assert (=> b!371677 (= res!209084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14754 () Bool)

(declare-fun tp!29151 () Bool)

(assert (=> mapNonEmpty!14754 (= mapRes!14754 (and tp!29151 e!226812))))

(declare-fun mapRest!14754 () (Array (_ BitVec 32) ValueCell!4053))

(declare-fun mapValue!14754 () ValueCell!4053)

(declare-fun mapKey!14754 () (_ BitVec 32))

(assert (=> mapNonEmpty!14754 (= (arr!10214 _values!506) (store mapRest!14754 mapKey!14754 mapValue!14754))))

(declare-fun b!371678 () Bool)

(declare-fun res!209079 () Bool)

(assert (=> b!371678 (=> (not res!209079) (not e!226807))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371678 (= res!209079 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371679 () Bool)

(declare-fun e!226811 () Bool)

(assert (=> b!371679 (= e!226811 (and e!226808 mapRes!14754))))

(declare-fun condMapEmpty!14754 () Bool)

(declare-fun mapDefault!14754 () ValueCell!4053)

(assert (=> b!371679 (= condMapEmpty!14754 (= (arr!10214 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4053)) mapDefault!14754)))))

(declare-fun b!371680 () Bool)

(declare-fun res!209081 () Bool)

(assert (=> b!371680 (=> (not res!209081) (not e!226807))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371680 (= res!209081 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10567 _keys!658))))))

(declare-fun b!371681 () Bool)

(declare-fun res!209080 () Bool)

(assert (=> b!371681 (=> (not res!209080) (not e!226807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371681 (= res!209080 (validKeyInArray!0 k0!778))))

(declare-fun b!371682 () Bool)

(assert (=> b!371682 (= e!226807 e!226810)))

(declare-fun res!209077 () Bool)

(assert (=> b!371682 (=> (not res!209077) (not e!226810))))

(assert (=> b!371682 (= res!209077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170416 mask!970))))

(assert (=> b!371682 (= lt!170416 (array!21500 (store (arr!10215 _keys!658) i!548 k0!778) (size!10567 _keys!658)))))

(declare-fun b!371683 () Bool)

(assert (=> b!371683 (= e!226810 (not (bvsle #b00000000000000000000000000000000 (size!10567 _keys!658))))))

(declare-datatypes ((tuple2!5868 0))(
  ( (tuple2!5869 (_1!2944 (_ BitVec 64)) (_2!2944 V!12829)) )
))
(declare-datatypes ((List!5741 0))(
  ( (Nil!5738) (Cons!5737 (h!6593 tuple2!5868) (t!10899 List!5741)) )
))
(declare-datatypes ((ListLongMap!4795 0))(
  ( (ListLongMap!4796 (toList!2413 List!5741)) )
))
(declare-fun lt!170415 () ListLongMap!4795)

(declare-fun lt!170413 () ListLongMap!4795)

(assert (=> b!371683 (and (= lt!170415 lt!170413) (= lt!170413 lt!170415))))

(declare-fun v!373 () V!12829)

(declare-fun lt!170412 () ListLongMap!4795)

(declare-fun +!754 (ListLongMap!4795 tuple2!5868) ListLongMap!4795)

(assert (=> b!371683 (= lt!170413 (+!754 lt!170412 (tuple2!5869 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12829)

(declare-datatypes ((Unit!11413 0))(
  ( (Unit!11414) )
))
(declare-fun lt!170414 () Unit!11413)

(declare-fun minValue!472 () V!12829)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!14 (array!21499 array!21497 (_ BitVec 32) (_ BitVec 32) V!12829 V!12829 (_ BitVec 32) (_ BitVec 64) V!12829 (_ BitVec 32) Int) Unit!11413)

(assert (=> b!371683 (= lt!170414 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!14 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!681 (array!21499 array!21497 (_ BitVec 32) (_ BitVec 32) V!12829 V!12829 (_ BitVec 32) Int) ListLongMap!4795)

(assert (=> b!371683 (= lt!170415 (getCurrentListMapNoExtraKeys!681 lt!170416 (array!21498 (store (arr!10214 _values!506) i!548 (ValueCellFull!4053 v!373)) (size!10566 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371683 (= lt!170412 (getCurrentListMapNoExtraKeys!681 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!209078 () Bool)

(assert (=> start!37026 (=> (not res!209078) (not e!226807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37026 (= res!209078 (validMask!0 mask!970))))

(assert (=> start!37026 e!226807))

(declare-fun array_inv!7544 (array!21497) Bool)

(assert (=> start!37026 (and (array_inv!7544 _values!506) e!226811)))

(assert (=> start!37026 tp!29150))

(assert (=> start!37026 true))

(assert (=> start!37026 tp_is_empty!8793))

(declare-fun array_inv!7545 (array!21499) Bool)

(assert (=> start!37026 (array_inv!7545 _keys!658)))

(declare-fun b!371684 () Bool)

(declare-fun res!209082 () Bool)

(assert (=> b!371684 (=> (not res!209082) (not e!226807))))

(assert (=> b!371684 (= res!209082 (or (= (select (arr!10215 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10215 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37026 res!209078) b!371672))

(assert (= (and b!371672 res!209076) b!371677))

(assert (= (and b!371677 res!209084) b!371676))

(assert (= (and b!371676 res!209083) b!371680))

(assert (= (and b!371680 res!209081) b!371681))

(assert (= (and b!371681 res!209080) b!371684))

(assert (= (and b!371684 res!209082) b!371678))

(assert (= (and b!371678 res!209079) b!371682))

(assert (= (and b!371682 res!209077) b!371674))

(assert (= (and b!371674 res!209075) b!371683))

(assert (= (and b!371679 condMapEmpty!14754) mapIsEmpty!14754))

(assert (= (and b!371679 (not condMapEmpty!14754)) mapNonEmpty!14754))

(get-info :version)

(assert (= (and mapNonEmpty!14754 ((_ is ValueCellFull!4053) mapValue!14754)) b!371675))

(assert (= (and b!371679 ((_ is ValueCellFull!4053) mapDefault!14754)) b!371673))

(assert (= start!37026 b!371679))

(declare-fun m!367629 () Bool)

(assert (=> b!371683 m!367629))

(declare-fun m!367631 () Bool)

(assert (=> b!371683 m!367631))

(declare-fun m!367633 () Bool)

(assert (=> b!371683 m!367633))

(declare-fun m!367635 () Bool)

(assert (=> b!371683 m!367635))

(declare-fun m!367637 () Bool)

(assert (=> b!371683 m!367637))

(declare-fun m!367639 () Bool)

(assert (=> b!371678 m!367639))

(declare-fun m!367641 () Bool)

(assert (=> b!371677 m!367641))

(declare-fun m!367643 () Bool)

(assert (=> b!371682 m!367643))

(declare-fun m!367645 () Bool)

(assert (=> b!371682 m!367645))

(declare-fun m!367647 () Bool)

(assert (=> b!371676 m!367647))

(declare-fun m!367649 () Bool)

(assert (=> b!371684 m!367649))

(declare-fun m!367651 () Bool)

(assert (=> b!371674 m!367651))

(declare-fun m!367653 () Bool)

(assert (=> mapNonEmpty!14754 m!367653))

(declare-fun m!367655 () Bool)

(assert (=> start!37026 m!367655))

(declare-fun m!367657 () Bool)

(assert (=> start!37026 m!367657))

(declare-fun m!367659 () Bool)

(assert (=> start!37026 m!367659))

(declare-fun m!367661 () Bool)

(assert (=> b!371681 m!367661))

(check-sat (not b!371674) (not b!371683) tp_is_empty!8793 (not b!371678) (not b!371677) (not b_next!8145) (not b!371682) b_and!15405 (not b!371676) (not mapNonEmpty!14754) (not b!371681) (not start!37026))
(check-sat b_and!15405 (not b_next!8145))
