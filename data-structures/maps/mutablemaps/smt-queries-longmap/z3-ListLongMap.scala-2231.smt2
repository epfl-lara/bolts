; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36858 () Bool)

(assert start!36858)

(declare-fun b_free!7977 () Bool)

(declare-fun b_next!7977 () Bool)

(assert (=> start!36858 (= b_free!7977 (not b_next!7977))))

(declare-fun tp!28647 () Bool)

(declare-fun b_and!15237 () Bool)

(assert (=> start!36858 (= tp!28647 b_and!15237)))

(declare-fun b!368396 () Bool)

(declare-fun res!206557 () Bool)

(declare-fun e!225298 () Bool)

(assert (=> b!368396 (=> (not res!206557) (not e!225298))))

(declare-datatypes ((array!21175 0))(
  ( (array!21176 (arr!10053 (Array (_ BitVec 32) (_ BitVec 64))) (size!10405 (_ BitVec 32))) )
))
(declare-fun lt!169515 () array!21175)

(declare-datatypes ((List!5626 0))(
  ( (Nil!5623) (Cons!5622 (h!6478 (_ BitVec 64)) (t!10784 List!5626)) )
))
(declare-fun arrayNoDuplicates!0 (array!21175 (_ BitVec 32) List!5626) Bool)

(assert (=> b!368396 (= res!206557 (arrayNoDuplicates!0 lt!169515 #b00000000000000000000000000000000 Nil!5623))))

(declare-fun b!368397 () Bool)

(declare-fun e!225299 () Bool)

(declare-fun tp_is_empty!8625 () Bool)

(assert (=> b!368397 (= e!225299 tp_is_empty!8625)))

(declare-fun mapNonEmpty!14502 () Bool)

(declare-fun mapRes!14502 () Bool)

(declare-fun tp!28646 () Bool)

(assert (=> mapNonEmpty!14502 (= mapRes!14502 (and tp!28646 e!225299))))

(declare-datatypes ((V!12605 0))(
  ( (V!12606 (val!4357 Int)) )
))
(declare-datatypes ((ValueCell!3969 0))(
  ( (ValueCellFull!3969 (v!6550 V!12605)) (EmptyCell!3969) )
))
(declare-datatypes ((array!21177 0))(
  ( (array!21178 (arr!10054 (Array (_ BitVec 32) ValueCell!3969)) (size!10406 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21177)

(declare-fun mapKey!14502 () (_ BitVec 32))

(declare-fun mapValue!14502 () ValueCell!3969)

(declare-fun mapRest!14502 () (Array (_ BitVec 32) ValueCell!3969))

(assert (=> mapNonEmpty!14502 (= (arr!10054 _values!506) (store mapRest!14502 mapKey!14502 mapValue!14502))))

(declare-fun b!368398 () Bool)

(declare-fun e!225296 () Bool)

(assert (=> b!368398 (= e!225296 tp_is_empty!8625)))

(declare-fun b!368399 () Bool)

(assert (=> b!368399 (= e!225298 false)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-fun _keys!658 () array!21175)

(declare-datatypes ((tuple2!5766 0))(
  ( (tuple2!5767 (_1!2893 (_ BitVec 64)) (_2!2893 V!12605)) )
))
(declare-datatypes ((List!5627 0))(
  ( (Nil!5624) (Cons!5623 (h!6479 tuple2!5766) (t!10785 List!5627)) )
))
(declare-datatypes ((ListLongMap!4693 0))(
  ( (ListLongMap!4694 (toList!2362 List!5627)) )
))
(declare-fun lt!169516 () ListLongMap!4693)

(declare-fun zeroValue!472 () V!12605)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12605)

(declare-fun getCurrentListMapNoExtraKeys!630 (array!21175 array!21177 (_ BitVec 32) (_ BitVec 32) V!12605 V!12605 (_ BitVec 32) Int) ListLongMap!4693)

(assert (=> b!368399 (= lt!169516 (getCurrentListMapNoExtraKeys!630 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368400 () Bool)

(declare-fun res!206564 () Bool)

(declare-fun e!225295 () Bool)

(assert (=> b!368400 (=> (not res!206564) (not e!225295))))

(assert (=> b!368400 (= res!206564 (and (= (size!10406 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10405 _keys!658) (size!10406 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368401 () Bool)

(declare-fun res!206562 () Bool)

(assert (=> b!368401 (=> (not res!206562) (not e!225295))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368401 (= res!206562 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!206555 () Bool)

(assert (=> start!36858 (=> (not res!206555) (not e!225295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36858 (= res!206555 (validMask!0 mask!970))))

(assert (=> start!36858 e!225295))

(assert (=> start!36858 true))

(declare-fun e!225300 () Bool)

(declare-fun array_inv!7424 (array!21177) Bool)

(assert (=> start!36858 (and (array_inv!7424 _values!506) e!225300)))

(assert (=> start!36858 tp!28647))

(assert (=> start!36858 tp_is_empty!8625))

(declare-fun array_inv!7425 (array!21175) Bool)

(assert (=> start!36858 (array_inv!7425 _keys!658)))

(declare-fun mapIsEmpty!14502 () Bool)

(assert (=> mapIsEmpty!14502 mapRes!14502))

(declare-fun b!368402 () Bool)

(declare-fun res!206559 () Bool)

(assert (=> b!368402 (=> (not res!206559) (not e!225295))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368402 (= res!206559 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10405 _keys!658))))))

(declare-fun b!368403 () Bool)

(assert (=> b!368403 (= e!225295 e!225298)))

(declare-fun res!206558 () Bool)

(assert (=> b!368403 (=> (not res!206558) (not e!225298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21175 (_ BitVec 32)) Bool)

(assert (=> b!368403 (= res!206558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169515 mask!970))))

(assert (=> b!368403 (= lt!169515 (array!21176 (store (arr!10053 _keys!658) i!548 k0!778) (size!10405 _keys!658)))))

(declare-fun b!368404 () Bool)

(declare-fun res!206560 () Bool)

(assert (=> b!368404 (=> (not res!206560) (not e!225295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368404 (= res!206560 (validKeyInArray!0 k0!778))))

(declare-fun b!368405 () Bool)

(declare-fun res!206561 () Bool)

(assert (=> b!368405 (=> (not res!206561) (not e!225295))))

(assert (=> b!368405 (= res!206561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368406 () Bool)

(declare-fun res!206563 () Bool)

(assert (=> b!368406 (=> (not res!206563) (not e!225295))))

(assert (=> b!368406 (= res!206563 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5623))))

(declare-fun b!368407 () Bool)

(assert (=> b!368407 (= e!225300 (and e!225296 mapRes!14502))))

(declare-fun condMapEmpty!14502 () Bool)

(declare-fun mapDefault!14502 () ValueCell!3969)

(assert (=> b!368407 (= condMapEmpty!14502 (= (arr!10054 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3969)) mapDefault!14502)))))

(declare-fun b!368408 () Bool)

(declare-fun res!206556 () Bool)

(assert (=> b!368408 (=> (not res!206556) (not e!225295))))

(assert (=> b!368408 (= res!206556 (or (= (select (arr!10053 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10053 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!36858 res!206555) b!368400))

(assert (= (and b!368400 res!206564) b!368405))

(assert (= (and b!368405 res!206561) b!368406))

(assert (= (and b!368406 res!206563) b!368402))

(assert (= (and b!368402 res!206559) b!368404))

(assert (= (and b!368404 res!206560) b!368408))

(assert (= (and b!368408 res!206556) b!368401))

(assert (= (and b!368401 res!206562) b!368403))

(assert (= (and b!368403 res!206558) b!368396))

(assert (= (and b!368396 res!206557) b!368399))

(assert (= (and b!368407 condMapEmpty!14502) mapIsEmpty!14502))

(assert (= (and b!368407 (not condMapEmpty!14502)) mapNonEmpty!14502))

(get-info :version)

(assert (= (and mapNonEmpty!14502 ((_ is ValueCellFull!3969) mapValue!14502)) b!368397))

(assert (= (and b!368407 ((_ is ValueCellFull!3969) mapDefault!14502)) b!368398))

(assert (= start!36858 b!368407))

(declare-fun m!365029 () Bool)

(assert (=> b!368404 m!365029))

(declare-fun m!365031 () Bool)

(assert (=> b!368396 m!365031))

(declare-fun m!365033 () Bool)

(assert (=> b!368401 m!365033))

(declare-fun m!365035 () Bool)

(assert (=> start!36858 m!365035))

(declare-fun m!365037 () Bool)

(assert (=> start!36858 m!365037))

(declare-fun m!365039 () Bool)

(assert (=> start!36858 m!365039))

(declare-fun m!365041 () Bool)

(assert (=> b!368408 m!365041))

(declare-fun m!365043 () Bool)

(assert (=> b!368403 m!365043))

(declare-fun m!365045 () Bool)

(assert (=> b!368403 m!365045))

(declare-fun m!365047 () Bool)

(assert (=> mapNonEmpty!14502 m!365047))

(declare-fun m!365049 () Bool)

(assert (=> b!368405 m!365049))

(declare-fun m!365051 () Bool)

(assert (=> b!368406 m!365051))

(declare-fun m!365053 () Bool)

(assert (=> b!368399 m!365053))

(check-sat (not start!36858) (not b!368399) b_and!15237 (not b!368401) (not b!368406) (not b_next!7977) (not b!368403) (not b!368396) (not b!368405) tp_is_empty!8625 (not mapNonEmpty!14502) (not b!368404))
(check-sat b_and!15237 (not b_next!7977))
