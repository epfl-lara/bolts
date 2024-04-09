; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36840 () Bool)

(assert start!36840)

(declare-fun b_free!7959 () Bool)

(declare-fun b_next!7959 () Bool)

(assert (=> start!36840 (= b_free!7959 (not b_next!7959))))

(declare-fun tp!28592 () Bool)

(declare-fun b_and!15219 () Bool)

(assert (=> start!36840 (= tp!28592 b_and!15219)))

(declare-fun b!368045 () Bool)

(declare-fun res!206288 () Bool)

(declare-fun e!225134 () Bool)

(assert (=> b!368045 (=> (not res!206288) (not e!225134))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12581 0))(
  ( (V!12582 (val!4348 Int)) )
))
(declare-datatypes ((ValueCell!3960 0))(
  ( (ValueCellFull!3960 (v!6541 V!12581)) (EmptyCell!3960) )
))
(declare-datatypes ((array!21139 0))(
  ( (array!21140 (arr!10035 (Array (_ BitVec 32) ValueCell!3960)) (size!10387 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21139)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((array!21141 0))(
  ( (array!21142 (arr!10036 (Array (_ BitVec 32) (_ BitVec 64))) (size!10388 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21141)

(assert (=> b!368045 (= res!206288 (and (= (size!10387 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10388 _keys!658) (size!10387 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14475 () Bool)

(declare-fun mapRes!14475 () Bool)

(assert (=> mapIsEmpty!14475 mapRes!14475))

(declare-fun b!368046 () Bool)

(declare-fun res!206286 () Bool)

(assert (=> b!368046 (=> (not res!206286) (not e!225134))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368046 (= res!206286 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368048 () Bool)

(declare-fun res!206289 () Bool)

(assert (=> b!368048 (=> (not res!206289) (not e!225134))))

(declare-datatypes ((List!5613 0))(
  ( (Nil!5610) (Cons!5609 (h!6465 (_ BitVec 64)) (t!10771 List!5613)) )
))
(declare-fun arrayNoDuplicates!0 (array!21141 (_ BitVec 32) List!5613) Bool)

(assert (=> b!368048 (= res!206289 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5610))))

(declare-fun b!368049 () Bool)

(declare-fun e!225135 () Bool)

(assert (=> b!368049 (= e!225135 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5752 0))(
  ( (tuple2!5753 (_1!2886 (_ BitVec 64)) (_2!2886 V!12581)) )
))
(declare-datatypes ((List!5614 0))(
  ( (Nil!5611) (Cons!5610 (h!6466 tuple2!5752) (t!10772 List!5614)) )
))
(declare-datatypes ((ListLongMap!4679 0))(
  ( (ListLongMap!4680 (toList!2355 List!5614)) )
))
(declare-fun lt!169462 () ListLongMap!4679)

(declare-fun zeroValue!472 () V!12581)

(declare-fun minValue!472 () V!12581)

(declare-fun getCurrentListMapNoExtraKeys!623 (array!21141 array!21139 (_ BitVec 32) (_ BitVec 32) V!12581 V!12581 (_ BitVec 32) Int) ListLongMap!4679)

(assert (=> b!368049 (= lt!169462 (getCurrentListMapNoExtraKeys!623 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368050 () Bool)

(declare-fun e!225133 () Bool)

(declare-fun tp_is_empty!8607 () Bool)

(assert (=> b!368050 (= e!225133 tp_is_empty!8607)))

(declare-fun b!368051 () Bool)

(declare-fun res!206285 () Bool)

(assert (=> b!368051 (=> (not res!206285) (not e!225134))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368051 (= res!206285 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10388 _keys!658))))))

(declare-fun b!368052 () Bool)

(declare-fun res!206287 () Bool)

(assert (=> b!368052 (=> (not res!206287) (not e!225134))))

(assert (=> b!368052 (= res!206287 (or (= (select (arr!10036 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10036 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14475 () Bool)

(declare-fun tp!28593 () Bool)

(declare-fun e!225136 () Bool)

(assert (=> mapNonEmpty!14475 (= mapRes!14475 (and tp!28593 e!225136))))

(declare-fun mapValue!14475 () ValueCell!3960)

(declare-fun mapKey!14475 () (_ BitVec 32))

(declare-fun mapRest!14475 () (Array (_ BitVec 32) ValueCell!3960))

(assert (=> mapNonEmpty!14475 (= (arr!10035 _values!506) (store mapRest!14475 mapKey!14475 mapValue!14475))))

(declare-fun b!368053 () Bool)

(declare-fun res!206292 () Bool)

(assert (=> b!368053 (=> (not res!206292) (not e!225134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21141 (_ BitVec 32)) Bool)

(assert (=> b!368053 (= res!206292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368054 () Bool)

(assert (=> b!368054 (= e!225136 tp_is_empty!8607)))

(declare-fun res!206290 () Bool)

(assert (=> start!36840 (=> (not res!206290) (not e!225134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36840 (= res!206290 (validMask!0 mask!970))))

(assert (=> start!36840 e!225134))

(assert (=> start!36840 true))

(declare-fun e!225138 () Bool)

(declare-fun array_inv!7414 (array!21139) Bool)

(assert (=> start!36840 (and (array_inv!7414 _values!506) e!225138)))

(assert (=> start!36840 tp!28592))

(assert (=> start!36840 tp_is_empty!8607))

(declare-fun array_inv!7415 (array!21141) Bool)

(assert (=> start!36840 (array_inv!7415 _keys!658)))

(declare-fun b!368047 () Bool)

(assert (=> b!368047 (= e!225138 (and e!225133 mapRes!14475))))

(declare-fun condMapEmpty!14475 () Bool)

(declare-fun mapDefault!14475 () ValueCell!3960)

(assert (=> b!368047 (= condMapEmpty!14475 (= (arr!10035 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3960)) mapDefault!14475)))))

(declare-fun b!368055 () Bool)

(declare-fun res!206293 () Bool)

(assert (=> b!368055 (=> (not res!206293) (not e!225134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368055 (= res!206293 (validKeyInArray!0 k0!778))))

(declare-fun b!368056 () Bool)

(declare-fun res!206291 () Bool)

(assert (=> b!368056 (=> (not res!206291) (not e!225135))))

(declare-fun lt!169461 () array!21141)

(assert (=> b!368056 (= res!206291 (arrayNoDuplicates!0 lt!169461 #b00000000000000000000000000000000 Nil!5610))))

(declare-fun b!368057 () Bool)

(assert (=> b!368057 (= e!225134 e!225135)))

(declare-fun res!206294 () Bool)

(assert (=> b!368057 (=> (not res!206294) (not e!225135))))

(assert (=> b!368057 (= res!206294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169461 mask!970))))

(assert (=> b!368057 (= lt!169461 (array!21142 (store (arr!10036 _keys!658) i!548 k0!778) (size!10388 _keys!658)))))

(assert (= (and start!36840 res!206290) b!368045))

(assert (= (and b!368045 res!206288) b!368053))

(assert (= (and b!368053 res!206292) b!368048))

(assert (= (and b!368048 res!206289) b!368051))

(assert (= (and b!368051 res!206285) b!368055))

(assert (= (and b!368055 res!206293) b!368052))

(assert (= (and b!368052 res!206287) b!368046))

(assert (= (and b!368046 res!206286) b!368057))

(assert (= (and b!368057 res!206294) b!368056))

(assert (= (and b!368056 res!206291) b!368049))

(assert (= (and b!368047 condMapEmpty!14475) mapIsEmpty!14475))

(assert (= (and b!368047 (not condMapEmpty!14475)) mapNonEmpty!14475))

(get-info :version)

(assert (= (and mapNonEmpty!14475 ((_ is ValueCellFull!3960) mapValue!14475)) b!368054))

(assert (= (and b!368047 ((_ is ValueCellFull!3960) mapDefault!14475)) b!368050))

(assert (= start!36840 b!368047))

(declare-fun m!364795 () Bool)

(assert (=> b!368056 m!364795))

(declare-fun m!364797 () Bool)

(assert (=> b!368055 m!364797))

(declare-fun m!364799 () Bool)

(assert (=> b!368057 m!364799))

(declare-fun m!364801 () Bool)

(assert (=> b!368057 m!364801))

(declare-fun m!364803 () Bool)

(assert (=> mapNonEmpty!14475 m!364803))

(declare-fun m!364805 () Bool)

(assert (=> b!368048 m!364805))

(declare-fun m!364807 () Bool)

(assert (=> b!368049 m!364807))

(declare-fun m!364809 () Bool)

(assert (=> b!368052 m!364809))

(declare-fun m!364811 () Bool)

(assert (=> start!36840 m!364811))

(declare-fun m!364813 () Bool)

(assert (=> start!36840 m!364813))

(declare-fun m!364815 () Bool)

(assert (=> start!36840 m!364815))

(declare-fun m!364817 () Bool)

(assert (=> b!368053 m!364817))

(declare-fun m!364819 () Bool)

(assert (=> b!368046 m!364819))

(check-sat (not b!368053) (not b_next!7959) (not b!368049) tp_is_empty!8607 (not mapNonEmpty!14475) (not b!368055) (not b!368046) (not b!368048) (not start!36840) (not b!368057) (not b!368056) b_and!15219)
(check-sat b_and!15219 (not b_next!7959))
