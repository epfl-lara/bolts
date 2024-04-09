; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36822 () Bool)

(assert start!36822)

(declare-fun b_free!7941 () Bool)

(declare-fun b_next!7941 () Bool)

(assert (=> start!36822 (= b_free!7941 (not b_next!7941))))

(declare-fun tp!28538 () Bool)

(declare-fun b_and!15201 () Bool)

(assert (=> start!36822 (= tp!28538 b_and!15201)))

(declare-fun b!367694 () Bool)

(declare-fun e!224976 () Bool)

(assert (=> b!367694 (= e!224976 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12557 0))(
  ( (V!12558 (val!4339 Int)) )
))
(declare-datatypes ((ValueCell!3951 0))(
  ( (ValueCellFull!3951 (v!6532 V!12557)) (EmptyCell!3951) )
))
(declare-datatypes ((array!21103 0))(
  ( (array!21104 (arr!10017 (Array (_ BitVec 32) ValueCell!3951)) (size!10369 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21103)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!21105 0))(
  ( (array!21106 (arr!10018 (Array (_ BitVec 32) (_ BitVec 64))) (size!10370 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21105)

(declare-fun zeroValue!472 () V!12557)

(declare-datatypes ((tuple2!5744 0))(
  ( (tuple2!5745 (_1!2882 (_ BitVec 64)) (_2!2882 V!12557)) )
))
(declare-datatypes ((List!5602 0))(
  ( (Nil!5599) (Cons!5598 (h!6454 tuple2!5744) (t!10760 List!5602)) )
))
(declare-datatypes ((ListLongMap!4671 0))(
  ( (ListLongMap!4672 (toList!2351 List!5602)) )
))
(declare-fun lt!169407 () ListLongMap!4671)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12557)

(declare-fun getCurrentListMapNoExtraKeys!619 (array!21105 array!21103 (_ BitVec 32) (_ BitVec 32) V!12557 V!12557 (_ BitVec 32) Int) ListLongMap!4671)

(assert (=> b!367694 (= lt!169407 (getCurrentListMapNoExtraKeys!619 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!367695 () Bool)

(declare-fun res!206017 () Bool)

(declare-fun e!224972 () Bool)

(assert (=> b!367695 (=> (not res!206017) (not e!224972))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!367695 (= res!206017 (validKeyInArray!0 k0!778))))

(declare-fun b!367696 () Bool)

(declare-fun res!206023 () Bool)

(assert (=> b!367696 (=> (not res!206023) (not e!224972))))

(declare-fun arrayContainsKey!0 (array!21105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!367696 (= res!206023 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!367697 () Bool)

(declare-fun res!206018 () Bool)

(assert (=> b!367697 (=> (not res!206018) (not e!224972))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!367697 (= res!206018 (or (= (select (arr!10018 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10018 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!367698 () Bool)

(declare-fun e!224973 () Bool)

(declare-fun tp_is_empty!8589 () Bool)

(assert (=> b!367698 (= e!224973 tp_is_empty!8589)))

(declare-fun res!206016 () Bool)

(assert (=> start!36822 (=> (not res!206016) (not e!224972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36822 (= res!206016 (validMask!0 mask!970))))

(assert (=> start!36822 e!224972))

(assert (=> start!36822 true))

(declare-fun e!224975 () Bool)

(declare-fun array_inv!7402 (array!21103) Bool)

(assert (=> start!36822 (and (array_inv!7402 _values!506) e!224975)))

(assert (=> start!36822 tp!28538))

(assert (=> start!36822 tp_is_empty!8589))

(declare-fun array_inv!7403 (array!21105) Bool)

(assert (=> start!36822 (array_inv!7403 _keys!658)))

(declare-fun mapIsEmpty!14448 () Bool)

(declare-fun mapRes!14448 () Bool)

(assert (=> mapIsEmpty!14448 mapRes!14448))

(declare-fun b!367699 () Bool)

(declare-fun e!224971 () Bool)

(assert (=> b!367699 (= e!224971 tp_is_empty!8589)))

(declare-fun b!367700 () Bool)

(declare-fun res!206022 () Bool)

(assert (=> b!367700 (=> (not res!206022) (not e!224972))))

(assert (=> b!367700 (= res!206022 (and (= (size!10369 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10370 _keys!658) (size!10369 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!367701 () Bool)

(assert (=> b!367701 (= e!224972 e!224976)))

(declare-fun res!206020 () Bool)

(assert (=> b!367701 (=> (not res!206020) (not e!224976))))

(declare-fun lt!169408 () array!21105)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21105 (_ BitVec 32)) Bool)

(assert (=> b!367701 (= res!206020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169408 mask!970))))

(assert (=> b!367701 (= lt!169408 (array!21106 (store (arr!10018 _keys!658) i!548 k0!778) (size!10370 _keys!658)))))

(declare-fun b!367702 () Bool)

(declare-fun res!206015 () Bool)

(assert (=> b!367702 (=> (not res!206015) (not e!224972))))

(declare-datatypes ((List!5603 0))(
  ( (Nil!5600) (Cons!5599 (h!6455 (_ BitVec 64)) (t!10761 List!5603)) )
))
(declare-fun arrayNoDuplicates!0 (array!21105 (_ BitVec 32) List!5603) Bool)

(assert (=> b!367702 (= res!206015 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5600))))

(declare-fun b!367703 () Bool)

(declare-fun res!206019 () Bool)

(assert (=> b!367703 (=> (not res!206019) (not e!224972))))

(assert (=> b!367703 (= res!206019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!367704 () Bool)

(declare-fun res!206021 () Bool)

(assert (=> b!367704 (=> (not res!206021) (not e!224972))))

(assert (=> b!367704 (= res!206021 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10370 _keys!658))))))

(declare-fun mapNonEmpty!14448 () Bool)

(declare-fun tp!28539 () Bool)

(assert (=> mapNonEmpty!14448 (= mapRes!14448 (and tp!28539 e!224971))))

(declare-fun mapKey!14448 () (_ BitVec 32))

(declare-fun mapValue!14448 () ValueCell!3951)

(declare-fun mapRest!14448 () (Array (_ BitVec 32) ValueCell!3951))

(assert (=> mapNonEmpty!14448 (= (arr!10017 _values!506) (store mapRest!14448 mapKey!14448 mapValue!14448))))

(declare-fun b!367705 () Bool)

(assert (=> b!367705 (= e!224975 (and e!224973 mapRes!14448))))

(declare-fun condMapEmpty!14448 () Bool)

(declare-fun mapDefault!14448 () ValueCell!3951)

(assert (=> b!367705 (= condMapEmpty!14448 (= (arr!10017 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3951)) mapDefault!14448)))))

(declare-fun b!367706 () Bool)

(declare-fun res!206024 () Bool)

(assert (=> b!367706 (=> (not res!206024) (not e!224976))))

(assert (=> b!367706 (= res!206024 (arrayNoDuplicates!0 lt!169408 #b00000000000000000000000000000000 Nil!5600))))

(assert (= (and start!36822 res!206016) b!367700))

(assert (= (and b!367700 res!206022) b!367703))

(assert (= (and b!367703 res!206019) b!367702))

(assert (= (and b!367702 res!206015) b!367704))

(assert (= (and b!367704 res!206021) b!367695))

(assert (= (and b!367695 res!206017) b!367697))

(assert (= (and b!367697 res!206018) b!367696))

(assert (= (and b!367696 res!206023) b!367701))

(assert (= (and b!367701 res!206020) b!367706))

(assert (= (and b!367706 res!206024) b!367694))

(assert (= (and b!367705 condMapEmpty!14448) mapIsEmpty!14448))

(assert (= (and b!367705 (not condMapEmpty!14448)) mapNonEmpty!14448))

(get-info :version)

(assert (= (and mapNonEmpty!14448 ((_ is ValueCellFull!3951) mapValue!14448)) b!367699))

(assert (= (and b!367705 ((_ is ValueCellFull!3951) mapDefault!14448)) b!367698))

(assert (= start!36822 b!367705))

(declare-fun m!364561 () Bool)

(assert (=> start!36822 m!364561))

(declare-fun m!364563 () Bool)

(assert (=> start!36822 m!364563))

(declare-fun m!364565 () Bool)

(assert (=> start!36822 m!364565))

(declare-fun m!364567 () Bool)

(assert (=> b!367701 m!364567))

(declare-fun m!364569 () Bool)

(assert (=> b!367701 m!364569))

(declare-fun m!364571 () Bool)

(assert (=> b!367702 m!364571))

(declare-fun m!364573 () Bool)

(assert (=> b!367697 m!364573))

(declare-fun m!364575 () Bool)

(assert (=> b!367703 m!364575))

(declare-fun m!364577 () Bool)

(assert (=> b!367695 m!364577))

(declare-fun m!364579 () Bool)

(assert (=> b!367694 m!364579))

(declare-fun m!364581 () Bool)

(assert (=> mapNonEmpty!14448 m!364581))

(declare-fun m!364583 () Bool)

(assert (=> b!367696 m!364583))

(declare-fun m!364585 () Bool)

(assert (=> b!367706 m!364585))

(check-sat (not b!367702) (not b!367696) (not b!367694) (not mapNonEmpty!14448) b_and!15201 (not start!36822) (not b!367695) (not b!367701) tp_is_empty!8589 (not b_next!7941) (not b!367706) (not b!367703))
(check-sat b_and!15201 (not b_next!7941))
