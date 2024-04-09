; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39062 () Bool)

(assert start!39062)

(declare-fun b_free!9321 () Bool)

(declare-fun b_next!9321 () Bool)

(assert (=> start!39062 (= b_free!9321 (not b_next!9321))))

(declare-fun tp!33492 () Bool)

(declare-fun b_and!16725 () Bool)

(assert (=> start!39062 (= tp!33492 b_and!16725)))

(declare-fun b!409633 () Bool)

(declare-fun res!237365 () Bool)

(declare-fun e!245656 () Bool)

(assert (=> b!409633 (=> (not res!237365) (not e!245656))))

(declare-datatypes ((array!24797 0))(
  ( (array!24798 (arr!11845 (Array (_ BitVec 32) (_ BitVec 64))) (size!12197 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24797)

(declare-datatypes ((List!6839 0))(
  ( (Nil!6836) (Cons!6835 (h!7691 (_ BitVec 64)) (t!12021 List!6839)) )
))
(declare-fun arrayNoDuplicates!0 (array!24797 (_ BitVec 32) List!6839) Bool)

(assert (=> b!409633 (= res!237365 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6836))))

(declare-fun b!409634 () Bool)

(declare-fun e!245659 () Bool)

(declare-fun tp_is_empty!10473 () Bool)

(assert (=> b!409634 (= e!245659 tp_is_empty!10473)))

(declare-fun b!409635 () Bool)

(declare-fun res!237358 () Bool)

(assert (=> b!409635 (=> (not res!237358) (not e!245656))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409635 (= res!237358 (validKeyInArray!0 k0!794))))

(declare-fun b!409636 () Bool)

(declare-fun res!237359 () Bool)

(assert (=> b!409636 (=> (not res!237359) (not e!245656))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409636 (= res!237359 (validMask!0 mask!1025))))

(declare-fun b!409637 () Bool)

(declare-fun res!237363 () Bool)

(assert (=> b!409637 (=> (not res!237363) (not e!245656))))

(declare-fun arrayContainsKey!0 (array!24797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409637 (= res!237363 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!409638 () Bool)

(declare-fun res!237362 () Bool)

(assert (=> b!409638 (=> (not res!237362) (not e!245656))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409638 (= res!237362 (or (= (select (arr!11845 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11845 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17331 () Bool)

(declare-fun mapRes!17331 () Bool)

(declare-fun tp!33491 () Bool)

(declare-fun e!245655 () Bool)

(assert (=> mapNonEmpty!17331 (= mapRes!17331 (and tp!33491 e!245655))))

(declare-datatypes ((V!15069 0))(
  ( (V!15070 (val!5281 Int)) )
))
(declare-datatypes ((ValueCell!4893 0))(
  ( (ValueCellFull!4893 (v!7524 V!15069)) (EmptyCell!4893) )
))
(declare-fun mapValue!17331 () ValueCell!4893)

(declare-fun mapKey!17331 () (_ BitVec 32))

(declare-datatypes ((array!24799 0))(
  ( (array!24800 (arr!11846 (Array (_ BitVec 32) ValueCell!4893)) (size!12198 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24799)

(declare-fun mapRest!17331 () (Array (_ BitVec 32) ValueCell!4893))

(assert (=> mapNonEmpty!17331 (= (arr!11846 _values!549) (store mapRest!17331 mapKey!17331 mapValue!17331))))

(declare-fun b!409639 () Bool)

(declare-fun res!237355 () Bool)

(assert (=> b!409639 (=> (not res!237355) (not e!245656))))

(assert (=> b!409639 (= res!237355 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12197 _keys!709))))))

(declare-fun b!409640 () Bool)

(declare-fun res!237361 () Bool)

(assert (=> b!409640 (=> (not res!237361) (not e!245656))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409640 (= res!237361 (and (= (size!12198 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12197 _keys!709) (size!12198 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409641 () Bool)

(declare-fun res!237357 () Bool)

(assert (=> b!409641 (=> (not res!237357) (not e!245656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24797 (_ BitVec 32)) Bool)

(assert (=> b!409641 (= res!237357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409642 () Bool)

(declare-fun res!237366 () Bool)

(declare-fun e!245658 () Bool)

(assert (=> b!409642 (=> (not res!237366) (not e!245658))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!409642 (= res!237366 (bvsle from!863 i!563))))

(declare-fun b!409643 () Bool)

(assert (=> b!409643 (= e!245658 false)))

(declare-datatypes ((tuple2!6790 0))(
  ( (tuple2!6791 (_1!3405 (_ BitVec 64)) (_2!3405 V!15069)) )
))
(declare-datatypes ((List!6840 0))(
  ( (Nil!6837) (Cons!6836 (h!7692 tuple2!6790) (t!12022 List!6840)) )
))
(declare-datatypes ((ListLongMap!5717 0))(
  ( (ListLongMap!5718 (toList!2874 List!6840)) )
))
(declare-fun lt!188961 () ListLongMap!5717)

(declare-fun minValue!515 () V!15069)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15069)

(declare-fun getCurrentListMapNoExtraKeys!1084 (array!24797 array!24799 (_ BitVec 32) (_ BitVec 32) V!15069 V!15069 (_ BitVec 32) Int) ListLongMap!5717)

(assert (=> b!409643 (= lt!188961 (getCurrentListMapNoExtraKeys!1084 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409644 () Bool)

(assert (=> b!409644 (= e!245655 tp_is_empty!10473)))

(declare-fun res!237360 () Bool)

(assert (=> start!39062 (=> (not res!237360) (not e!245656))))

(assert (=> start!39062 (= res!237360 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12197 _keys!709))))))

(assert (=> start!39062 e!245656))

(assert (=> start!39062 tp_is_empty!10473))

(assert (=> start!39062 tp!33492))

(assert (=> start!39062 true))

(declare-fun e!245657 () Bool)

(declare-fun array_inv!8648 (array!24799) Bool)

(assert (=> start!39062 (and (array_inv!8648 _values!549) e!245657)))

(declare-fun array_inv!8649 (array!24797) Bool)

(assert (=> start!39062 (array_inv!8649 _keys!709)))

(declare-fun b!409632 () Bool)

(assert (=> b!409632 (= e!245656 e!245658)))

(declare-fun res!237364 () Bool)

(assert (=> b!409632 (=> (not res!237364) (not e!245658))))

(declare-fun lt!188960 () array!24797)

(assert (=> b!409632 (= res!237364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188960 mask!1025))))

(assert (=> b!409632 (= lt!188960 (array!24798 (store (arr!11845 _keys!709) i!563 k0!794) (size!12197 _keys!709)))))

(declare-fun b!409645 () Bool)

(assert (=> b!409645 (= e!245657 (and e!245659 mapRes!17331))))

(declare-fun condMapEmpty!17331 () Bool)

(declare-fun mapDefault!17331 () ValueCell!4893)

(assert (=> b!409645 (= condMapEmpty!17331 (= (arr!11846 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4893)) mapDefault!17331)))))

(declare-fun b!409646 () Bool)

(declare-fun res!237356 () Bool)

(assert (=> b!409646 (=> (not res!237356) (not e!245658))))

(assert (=> b!409646 (= res!237356 (arrayNoDuplicates!0 lt!188960 #b00000000000000000000000000000000 Nil!6836))))

(declare-fun mapIsEmpty!17331 () Bool)

(assert (=> mapIsEmpty!17331 mapRes!17331))

(assert (= (and start!39062 res!237360) b!409636))

(assert (= (and b!409636 res!237359) b!409640))

(assert (= (and b!409640 res!237361) b!409641))

(assert (= (and b!409641 res!237357) b!409633))

(assert (= (and b!409633 res!237365) b!409639))

(assert (= (and b!409639 res!237355) b!409635))

(assert (= (and b!409635 res!237358) b!409638))

(assert (= (and b!409638 res!237362) b!409637))

(assert (= (and b!409637 res!237363) b!409632))

(assert (= (and b!409632 res!237364) b!409646))

(assert (= (and b!409646 res!237356) b!409642))

(assert (= (and b!409642 res!237366) b!409643))

(assert (= (and b!409645 condMapEmpty!17331) mapIsEmpty!17331))

(assert (= (and b!409645 (not condMapEmpty!17331)) mapNonEmpty!17331))

(get-info :version)

(assert (= (and mapNonEmpty!17331 ((_ is ValueCellFull!4893) mapValue!17331)) b!409644))

(assert (= (and b!409645 ((_ is ValueCellFull!4893) mapDefault!17331)) b!409634))

(assert (= start!39062 b!409645))

(declare-fun m!400415 () Bool)

(assert (=> b!409646 m!400415))

(declare-fun m!400417 () Bool)

(assert (=> start!39062 m!400417))

(declare-fun m!400419 () Bool)

(assert (=> start!39062 m!400419))

(declare-fun m!400421 () Bool)

(assert (=> mapNonEmpty!17331 m!400421))

(declare-fun m!400423 () Bool)

(assert (=> b!409637 m!400423))

(declare-fun m!400425 () Bool)

(assert (=> b!409633 m!400425))

(declare-fun m!400427 () Bool)

(assert (=> b!409641 m!400427))

(declare-fun m!400429 () Bool)

(assert (=> b!409635 m!400429))

(declare-fun m!400431 () Bool)

(assert (=> b!409632 m!400431))

(declare-fun m!400433 () Bool)

(assert (=> b!409632 m!400433))

(declare-fun m!400435 () Bool)

(assert (=> b!409643 m!400435))

(declare-fun m!400437 () Bool)

(assert (=> b!409638 m!400437))

(declare-fun m!400439 () Bool)

(assert (=> b!409636 m!400439))

(check-sat (not b!409635) (not b!409633) tp_is_empty!10473 (not b!409636) (not b_next!9321) (not b!409646) b_and!16725 (not b!409643) (not b!409641) (not start!39062) (not b!409632) (not b!409637) (not mapNonEmpty!17331))
(check-sat b_and!16725 (not b_next!9321))
