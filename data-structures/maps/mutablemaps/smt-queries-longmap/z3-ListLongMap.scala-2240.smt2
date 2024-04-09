; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36912 () Bool)

(assert start!36912)

(declare-fun b_free!8031 () Bool)

(declare-fun b_next!8031 () Bool)

(assert (=> start!36912 (= b_free!8031 (not b_next!8031))))

(declare-fun tp!28809 () Bool)

(declare-fun b_and!15291 () Bool)

(assert (=> start!36912 (= tp!28809 b_and!15291)))

(declare-fun b!369449 () Bool)

(declare-fun res!207374 () Bool)

(declare-fun e!225783 () Bool)

(assert (=> b!369449 (=> (not res!207374) (not e!225783))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21281 0))(
  ( (array!21282 (arr!10106 (Array (_ BitVec 32) (_ BitVec 64))) (size!10458 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21281)

(assert (=> b!369449 (= res!207374 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10458 _keys!658))))))

(declare-fun b!369450 () Bool)

(declare-fun e!225782 () Bool)

(assert (=> b!369450 (= e!225783 e!225782)))

(declare-fun res!207369 () Bool)

(assert (=> b!369450 (=> (not res!207369) (not e!225782))))

(declare-fun lt!169745 () array!21281)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21281 (_ BitVec 32)) Bool)

(assert (=> b!369450 (= res!207369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169745 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!369450 (= lt!169745 (array!21282 (store (arr!10106 _keys!658) i!548 k0!778) (size!10458 _keys!658)))))

(declare-fun b!369451 () Bool)

(declare-fun e!225784 () Bool)

(declare-fun tp_is_empty!8679 () Bool)

(assert (=> b!369451 (= e!225784 tp_is_empty!8679)))

(declare-fun mapNonEmpty!14583 () Bool)

(declare-fun mapRes!14583 () Bool)

(declare-fun tp!28808 () Bool)

(declare-fun e!225785 () Bool)

(assert (=> mapNonEmpty!14583 (= mapRes!14583 (and tp!28808 e!225785))))

(declare-datatypes ((V!12677 0))(
  ( (V!12678 (val!4384 Int)) )
))
(declare-datatypes ((ValueCell!3996 0))(
  ( (ValueCellFull!3996 (v!6577 V!12677)) (EmptyCell!3996) )
))
(declare-datatypes ((array!21283 0))(
  ( (array!21284 (arr!10107 (Array (_ BitVec 32) ValueCell!3996)) (size!10459 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21283)

(declare-fun mapRest!14583 () (Array (_ BitVec 32) ValueCell!3996))

(declare-fun mapKey!14583 () (_ BitVec 32))

(declare-fun mapValue!14583 () ValueCell!3996)

(assert (=> mapNonEmpty!14583 (= (arr!10107 _values!506) (store mapRest!14583 mapKey!14583 mapValue!14583))))

(declare-fun b!369452 () Bool)

(assert (=> b!369452 (= e!225785 tp_is_empty!8679)))

(declare-fun b!369453 () Bool)

(declare-fun res!207371 () Bool)

(assert (=> b!369453 (=> (not res!207371) (not e!225783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369453 (= res!207371 (validKeyInArray!0 k0!778))))

(declare-fun b!369454 () Bool)

(declare-fun res!207366 () Bool)

(assert (=> b!369454 (=> (not res!207366) (not e!225782))))

(declare-datatypes ((List!5669 0))(
  ( (Nil!5666) (Cons!5665 (h!6521 (_ BitVec 64)) (t!10827 List!5669)) )
))
(declare-fun arrayNoDuplicates!0 (array!21281 (_ BitVec 32) List!5669) Bool)

(assert (=> b!369454 (= res!207366 (arrayNoDuplicates!0 lt!169745 #b00000000000000000000000000000000 Nil!5666))))

(declare-fun b!369455 () Bool)

(declare-fun res!207368 () Bool)

(assert (=> b!369455 (=> (not res!207368) (not e!225783))))

(assert (=> b!369455 (= res!207368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369456 () Bool)

(declare-fun res!207373 () Bool)

(assert (=> b!369456 (=> (not res!207373) (not e!225783))))

(assert (=> b!369456 (= res!207373 (or (= (select (arr!10106 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10106 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!207370 () Bool)

(assert (=> start!36912 (=> (not res!207370) (not e!225783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36912 (= res!207370 (validMask!0 mask!970))))

(assert (=> start!36912 e!225783))

(declare-fun e!225786 () Bool)

(declare-fun array_inv!7468 (array!21283) Bool)

(assert (=> start!36912 (and (array_inv!7468 _values!506) e!225786)))

(assert (=> start!36912 tp!28809))

(assert (=> start!36912 true))

(assert (=> start!36912 tp_is_empty!8679))

(declare-fun array_inv!7469 (array!21281) Bool)

(assert (=> start!36912 (array_inv!7469 _keys!658)))

(declare-fun b!369457 () Bool)

(declare-fun res!207367 () Bool)

(assert (=> b!369457 (=> (not res!207367) (not e!225783))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!369457 (= res!207367 (and (= (size!10459 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10458 _keys!658) (size!10459 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369458 () Bool)

(assert (=> b!369458 (= e!225786 (and e!225784 mapRes!14583))))

(declare-fun condMapEmpty!14583 () Bool)

(declare-fun mapDefault!14583 () ValueCell!3996)

(assert (=> b!369458 (= condMapEmpty!14583 (= (arr!10107 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3996)) mapDefault!14583)))))

(declare-fun b!369459 () Bool)

(declare-fun res!207372 () Bool)

(assert (=> b!369459 (=> (not res!207372) (not e!225783))))

(declare-fun arrayContainsKey!0 (array!21281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369459 (= res!207372 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14583 () Bool)

(assert (=> mapIsEmpty!14583 mapRes!14583))

(declare-fun b!369460 () Bool)

(assert (=> b!369460 (= e!225782 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5808 0))(
  ( (tuple2!5809 (_1!2914 (_ BitVec 64)) (_2!2914 V!12677)) )
))
(declare-datatypes ((List!5670 0))(
  ( (Nil!5667) (Cons!5666 (h!6522 tuple2!5808) (t!10828 List!5670)) )
))
(declare-datatypes ((ListLongMap!4735 0))(
  ( (ListLongMap!4736 (toList!2383 List!5670)) )
))
(declare-fun lt!169746 () ListLongMap!4735)

(declare-fun zeroValue!472 () V!12677)

(declare-fun v!373 () V!12677)

(declare-fun minValue!472 () V!12677)

(declare-fun getCurrentListMapNoExtraKeys!651 (array!21281 array!21283 (_ BitVec 32) (_ BitVec 32) V!12677 V!12677 (_ BitVec 32) Int) ListLongMap!4735)

(assert (=> b!369460 (= lt!169746 (getCurrentListMapNoExtraKeys!651 lt!169745 (array!21284 (store (arr!10107 _values!506) i!548 (ValueCellFull!3996 v!373)) (size!10459 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169747 () ListLongMap!4735)

(assert (=> b!369460 (= lt!169747 (getCurrentListMapNoExtraKeys!651 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369461 () Bool)

(declare-fun res!207365 () Bool)

(assert (=> b!369461 (=> (not res!207365) (not e!225783))))

(assert (=> b!369461 (= res!207365 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5666))))

(assert (= (and start!36912 res!207370) b!369457))

(assert (= (and b!369457 res!207367) b!369455))

(assert (= (and b!369455 res!207368) b!369461))

(assert (= (and b!369461 res!207365) b!369449))

(assert (= (and b!369449 res!207374) b!369453))

(assert (= (and b!369453 res!207371) b!369456))

(assert (= (and b!369456 res!207373) b!369459))

(assert (= (and b!369459 res!207372) b!369450))

(assert (= (and b!369450 res!207369) b!369454))

(assert (= (and b!369454 res!207366) b!369460))

(assert (= (and b!369458 condMapEmpty!14583) mapIsEmpty!14583))

(assert (= (and b!369458 (not condMapEmpty!14583)) mapNonEmpty!14583))

(get-info :version)

(assert (= (and mapNonEmpty!14583 ((_ is ValueCellFull!3996) mapValue!14583)) b!369452))

(assert (= (and b!369458 ((_ is ValueCellFull!3996) mapDefault!14583)) b!369451))

(assert (= start!36912 b!369458))

(declare-fun m!365819 () Bool)

(assert (=> mapNonEmpty!14583 m!365819))

(declare-fun m!365821 () Bool)

(assert (=> b!369455 m!365821))

(declare-fun m!365823 () Bool)

(assert (=> b!369453 m!365823))

(declare-fun m!365825 () Bool)

(assert (=> start!36912 m!365825))

(declare-fun m!365827 () Bool)

(assert (=> start!36912 m!365827))

(declare-fun m!365829 () Bool)

(assert (=> start!36912 m!365829))

(declare-fun m!365831 () Bool)

(assert (=> b!369454 m!365831))

(declare-fun m!365833 () Bool)

(assert (=> b!369456 m!365833))

(declare-fun m!365835 () Bool)

(assert (=> b!369461 m!365835))

(declare-fun m!365837 () Bool)

(assert (=> b!369459 m!365837))

(declare-fun m!365839 () Bool)

(assert (=> b!369450 m!365839))

(declare-fun m!365841 () Bool)

(assert (=> b!369450 m!365841))

(declare-fun m!365843 () Bool)

(assert (=> b!369460 m!365843))

(declare-fun m!365845 () Bool)

(assert (=> b!369460 m!365845))

(declare-fun m!365847 () Bool)

(assert (=> b!369460 m!365847))

(check-sat (not b!369459) b_and!15291 (not start!36912) tp_is_empty!8679 (not b!369461) (not mapNonEmpty!14583) (not b_next!8031) (not b!369450) (not b!369455) (not b!369453) (not b!369460) (not b!369454))
(check-sat b_and!15291 (not b_next!8031))
