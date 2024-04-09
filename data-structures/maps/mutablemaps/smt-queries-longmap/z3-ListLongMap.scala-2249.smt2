; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36966 () Bool)

(assert start!36966)

(declare-fun b_free!8085 () Bool)

(declare-fun b_next!8085 () Bool)

(assert (=> start!36966 (= b_free!8085 (not b_next!8085))))

(declare-fun tp!28970 () Bool)

(declare-fun b_and!15345 () Bool)

(assert (=> start!36966 (= tp!28970 b_and!15345)))

(declare-fun b!370502 () Bool)

(declare-fun res!208178 () Bool)

(declare-fun e!226269 () Bool)

(assert (=> b!370502 (=> (not res!208178) (not e!226269))))

(declare-datatypes ((array!21383 0))(
  ( (array!21384 (arr!10157 (Array (_ BitVec 32) (_ BitVec 64))) (size!10509 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21383)

(declare-datatypes ((List!5704 0))(
  ( (Nil!5701) (Cons!5700 (h!6556 (_ BitVec 64)) (t!10862 List!5704)) )
))
(declare-fun arrayNoDuplicates!0 (array!21383 (_ BitVec 32) List!5704) Bool)

(assert (=> b!370502 (= res!208178 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5701))))

(declare-fun b!370503 () Bool)

(declare-fun res!208183 () Bool)

(assert (=> b!370503 (=> (not res!208183) (not e!226269))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370503 (= res!208183 (or (= (select (arr!10157 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10157 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!208184 () Bool)

(assert (=> start!36966 (=> (not res!208184) (not e!226269))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36966 (= res!208184 (validMask!0 mask!970))))

(assert (=> start!36966 e!226269))

(declare-datatypes ((V!12749 0))(
  ( (V!12750 (val!4411 Int)) )
))
(declare-datatypes ((ValueCell!4023 0))(
  ( (ValueCellFull!4023 (v!6604 V!12749)) (EmptyCell!4023) )
))
(declare-datatypes ((array!21385 0))(
  ( (array!21386 (arr!10158 (Array (_ BitVec 32) ValueCell!4023)) (size!10510 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21385)

(declare-fun e!226270 () Bool)

(declare-fun array_inv!7498 (array!21385) Bool)

(assert (=> start!36966 (and (array_inv!7498 _values!506) e!226270)))

(assert (=> start!36966 tp!28970))

(assert (=> start!36966 true))

(declare-fun tp_is_empty!8733 () Bool)

(assert (=> start!36966 tp_is_empty!8733))

(declare-fun array_inv!7499 (array!21383) Bool)

(assert (=> start!36966 (array_inv!7499 _keys!658)))

(declare-fun b!370504 () Bool)

(declare-fun res!208177 () Bool)

(assert (=> b!370504 (=> (not res!208177) (not e!226269))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370504 (= res!208177 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14664 () Bool)

(declare-fun mapRes!14664 () Bool)

(assert (=> mapIsEmpty!14664 mapRes!14664))

(declare-fun b!370505 () Bool)

(declare-fun e!226267 () Bool)

(assert (=> b!370505 (= e!226267 tp_is_empty!8733)))

(declare-fun mapNonEmpty!14664 () Bool)

(declare-fun tp!28971 () Bool)

(declare-fun e!226268 () Bool)

(assert (=> mapNonEmpty!14664 (= mapRes!14664 (and tp!28971 e!226268))))

(declare-fun mapValue!14664 () ValueCell!4023)

(declare-fun mapKey!14664 () (_ BitVec 32))

(declare-fun mapRest!14664 () (Array (_ BitVec 32) ValueCell!4023))

(assert (=> mapNonEmpty!14664 (= (arr!10158 _values!506) (store mapRest!14664 mapKey!14664 mapValue!14664))))

(declare-fun b!370506 () Bool)

(declare-fun res!208182 () Bool)

(assert (=> b!370506 (=> (not res!208182) (not e!226269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21383 (_ BitVec 32)) Bool)

(assert (=> b!370506 (= res!208182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370507 () Bool)

(declare-fun res!208180 () Bool)

(assert (=> b!370507 (=> (not res!208180) (not e!226269))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370507 (= res!208180 (and (= (size!10510 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10509 _keys!658) (size!10510 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370508 () Bool)

(declare-fun e!226272 () Bool)

(assert (=> b!370508 (= e!226269 e!226272)))

(declare-fun res!208175 () Bool)

(assert (=> b!370508 (=> (not res!208175) (not e!226272))))

(declare-fun lt!169990 () array!21383)

(assert (=> b!370508 (= res!208175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169990 mask!970))))

(assert (=> b!370508 (= lt!169990 (array!21384 (store (arr!10157 _keys!658) i!548 k0!778) (size!10509 _keys!658)))))

(declare-fun b!370509 () Bool)

(assert (=> b!370509 (= e!226270 (and e!226267 mapRes!14664))))

(declare-fun condMapEmpty!14664 () Bool)

(declare-fun mapDefault!14664 () ValueCell!4023)

(assert (=> b!370509 (= condMapEmpty!14664 (= (arr!10158 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4023)) mapDefault!14664)))))

(declare-fun b!370510 () Bool)

(assert (=> b!370510 (= e!226272 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12749)

(declare-datatypes ((tuple2!5838 0))(
  ( (tuple2!5839 (_1!2929 (_ BitVec 64)) (_2!2929 V!12749)) )
))
(declare-datatypes ((List!5705 0))(
  ( (Nil!5702) (Cons!5701 (h!6557 tuple2!5838) (t!10863 List!5705)) )
))
(declare-datatypes ((ListLongMap!4765 0))(
  ( (ListLongMap!4766 (toList!2398 List!5705)) )
))
(declare-fun lt!169989 () ListLongMap!4765)

(declare-fun v!373 () V!12749)

(declare-fun minValue!472 () V!12749)

(declare-fun getCurrentListMapNoExtraKeys!666 (array!21383 array!21385 (_ BitVec 32) (_ BitVec 32) V!12749 V!12749 (_ BitVec 32) Int) ListLongMap!4765)

(assert (=> b!370510 (= lt!169989 (getCurrentListMapNoExtraKeys!666 lt!169990 (array!21386 (store (arr!10158 _values!506) i!548 (ValueCellFull!4023 v!373)) (size!10510 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169988 () ListLongMap!4765)

(assert (=> b!370510 (= lt!169988 (getCurrentListMapNoExtraKeys!666 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370511 () Bool)

(declare-fun res!208176 () Bool)

(assert (=> b!370511 (=> (not res!208176) (not e!226269))))

(assert (=> b!370511 (= res!208176 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10509 _keys!658))))))

(declare-fun b!370512 () Bool)

(assert (=> b!370512 (= e!226268 tp_is_empty!8733)))

(declare-fun b!370513 () Bool)

(declare-fun res!208179 () Bool)

(assert (=> b!370513 (=> (not res!208179) (not e!226272))))

(assert (=> b!370513 (= res!208179 (arrayNoDuplicates!0 lt!169990 #b00000000000000000000000000000000 Nil!5701))))

(declare-fun b!370514 () Bool)

(declare-fun res!208181 () Bool)

(assert (=> b!370514 (=> (not res!208181) (not e!226269))))

(declare-fun arrayContainsKey!0 (array!21383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370514 (= res!208181 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!36966 res!208184) b!370507))

(assert (= (and b!370507 res!208180) b!370506))

(assert (= (and b!370506 res!208182) b!370502))

(assert (= (and b!370502 res!208178) b!370511))

(assert (= (and b!370511 res!208176) b!370504))

(assert (= (and b!370504 res!208177) b!370503))

(assert (= (and b!370503 res!208183) b!370514))

(assert (= (and b!370514 res!208181) b!370508))

(assert (= (and b!370508 res!208175) b!370513))

(assert (= (and b!370513 res!208179) b!370510))

(assert (= (and b!370509 condMapEmpty!14664) mapIsEmpty!14664))

(assert (= (and b!370509 (not condMapEmpty!14664)) mapNonEmpty!14664))

(get-info :version)

(assert (= (and mapNonEmpty!14664 ((_ is ValueCellFull!4023) mapValue!14664)) b!370512))

(assert (= (and b!370509 ((_ is ValueCellFull!4023) mapDefault!14664)) b!370505))

(assert (= start!36966 b!370509))

(declare-fun m!366629 () Bool)

(assert (=> b!370514 m!366629))

(declare-fun m!366631 () Bool)

(assert (=> b!370503 m!366631))

(declare-fun m!366633 () Bool)

(assert (=> mapNonEmpty!14664 m!366633))

(declare-fun m!366635 () Bool)

(assert (=> b!370502 m!366635))

(declare-fun m!366637 () Bool)

(assert (=> b!370504 m!366637))

(declare-fun m!366639 () Bool)

(assert (=> b!370506 m!366639))

(declare-fun m!366641 () Bool)

(assert (=> b!370508 m!366641))

(declare-fun m!366643 () Bool)

(assert (=> b!370508 m!366643))

(declare-fun m!366645 () Bool)

(assert (=> start!36966 m!366645))

(declare-fun m!366647 () Bool)

(assert (=> start!36966 m!366647))

(declare-fun m!366649 () Bool)

(assert (=> start!36966 m!366649))

(declare-fun m!366651 () Bool)

(assert (=> b!370513 m!366651))

(declare-fun m!366653 () Bool)

(assert (=> b!370510 m!366653))

(declare-fun m!366655 () Bool)

(assert (=> b!370510 m!366655))

(declare-fun m!366657 () Bool)

(assert (=> b!370510 m!366657))

(check-sat (not b!370510) (not b!370514) b_and!15345 (not b!370502) (not b!370513) tp_is_empty!8733 (not mapNonEmpty!14664) (not b!370508) (not b!370506) (not b_next!8085) (not b!370504) (not start!36966))
(check-sat b_and!15345 (not b_next!8085))
