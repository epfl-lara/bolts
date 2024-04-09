; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38804 () Bool)

(assert start!38804)

(declare-fun b!404519 () Bool)

(declare-fun res!233410 () Bool)

(declare-fun e!243336 () Bool)

(assert (=> b!404519 (=> (not res!233410) (not e!243336))))

(declare-datatypes ((array!24293 0))(
  ( (array!24294 (arr!11593 (Array (_ BitVec 32) (_ BitVec 64))) (size!11945 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24293)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14725 0))(
  ( (V!14726 (val!5152 Int)) )
))
(declare-datatypes ((ValueCell!4764 0))(
  ( (ValueCellFull!4764 (v!7395 V!14725)) (EmptyCell!4764) )
))
(declare-datatypes ((array!24295 0))(
  ( (array!24296 (arr!11594 (Array (_ BitVec 32) ValueCell!4764)) (size!11946 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24295)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!404519 (= res!233410 (and (= (size!11946 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11945 _keys!709) (size!11946 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404520 () Bool)

(declare-fun res!233403 () Bool)

(assert (=> b!404520 (=> (not res!233403) (not e!243336))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404520 (= res!233403 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11945 _keys!709))))))

(declare-fun b!404521 () Bool)

(declare-fun e!243332 () Bool)

(declare-fun tp_is_empty!10215 () Bool)

(assert (=> b!404521 (= e!243332 tp_is_empty!10215)))

(declare-fun b!404522 () Bool)

(declare-fun res!233411 () Bool)

(assert (=> b!404522 (=> (not res!233411) (not e!243336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404522 (= res!233411 (validMask!0 mask!1025))))

(declare-fun b!404523 () Bool)

(declare-fun res!233405 () Bool)

(assert (=> b!404523 (=> (not res!233405) (not e!243336))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404523 (= res!233405 (validKeyInArray!0 k0!794))))

(declare-fun b!404524 () Bool)

(declare-fun res!233408 () Bool)

(assert (=> b!404524 (=> (not res!233408) (not e!243336))))

(assert (=> b!404524 (= res!233408 (or (= (select (arr!11593 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11593 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404525 () Bool)

(declare-fun e!243337 () Bool)

(assert (=> b!404525 (= e!243337 tp_is_empty!10215)))

(declare-fun b!404526 () Bool)

(declare-fun res!233412 () Bool)

(assert (=> b!404526 (=> (not res!233412) (not e!243336))))

(declare-datatypes ((List!6726 0))(
  ( (Nil!6723) (Cons!6722 (h!7578 (_ BitVec 64)) (t!11908 List!6726)) )
))
(declare-fun arrayNoDuplicates!0 (array!24293 (_ BitVec 32) List!6726) Bool)

(assert (=> b!404526 (= res!233412 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6723))))

(declare-fun b!404527 () Bool)

(declare-fun res!233407 () Bool)

(assert (=> b!404527 (=> (not res!233407) (not e!243336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24293 (_ BitVec 32)) Bool)

(assert (=> b!404527 (= res!233407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!233404 () Bool)

(assert (=> start!38804 (=> (not res!233404) (not e!243336))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38804 (= res!233404 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11945 _keys!709))))))

(assert (=> start!38804 e!243336))

(assert (=> start!38804 true))

(declare-fun e!243335 () Bool)

(declare-fun array_inv!8470 (array!24295) Bool)

(assert (=> start!38804 (and (array_inv!8470 _values!549) e!243335)))

(declare-fun array_inv!8471 (array!24293) Bool)

(assert (=> start!38804 (array_inv!8471 _keys!709)))

(declare-fun mapNonEmpty!16944 () Bool)

(declare-fun mapRes!16944 () Bool)

(declare-fun tp!33063 () Bool)

(assert (=> mapNonEmpty!16944 (= mapRes!16944 (and tp!33063 e!243337))))

(declare-fun mapValue!16944 () ValueCell!4764)

(declare-fun mapKey!16944 () (_ BitVec 32))

(declare-fun mapRest!16944 () (Array (_ BitVec 32) ValueCell!4764))

(assert (=> mapNonEmpty!16944 (= (arr!11594 _values!549) (store mapRest!16944 mapKey!16944 mapValue!16944))))

(declare-fun b!404528 () Bool)

(declare-fun res!233406 () Bool)

(assert (=> b!404528 (=> (not res!233406) (not e!243336))))

(declare-fun arrayContainsKey!0 (array!24293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404528 (= res!233406 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404529 () Bool)

(assert (=> b!404529 (= e!243335 (and e!243332 mapRes!16944))))

(declare-fun condMapEmpty!16944 () Bool)

(declare-fun mapDefault!16944 () ValueCell!4764)

(assert (=> b!404529 (= condMapEmpty!16944 (= (arr!11594 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4764)) mapDefault!16944)))))

(declare-fun b!404530 () Bool)

(declare-fun e!243334 () Bool)

(assert (=> b!404530 (= e!243336 e!243334)))

(declare-fun res!233409 () Bool)

(assert (=> b!404530 (=> (not res!233409) (not e!243334))))

(declare-fun lt!188186 () array!24293)

(assert (=> b!404530 (= res!233409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188186 mask!1025))))

(assert (=> b!404530 (= lt!188186 (array!24294 (store (arr!11593 _keys!709) i!563 k0!794) (size!11945 _keys!709)))))

(declare-fun mapIsEmpty!16944 () Bool)

(assert (=> mapIsEmpty!16944 mapRes!16944))

(declare-fun b!404531 () Bool)

(assert (=> b!404531 (= e!243334 false)))

(declare-fun lt!188187 () Bool)

(assert (=> b!404531 (= lt!188187 (arrayNoDuplicates!0 lt!188186 #b00000000000000000000000000000000 Nil!6723))))

(assert (= (and start!38804 res!233404) b!404522))

(assert (= (and b!404522 res!233411) b!404519))

(assert (= (and b!404519 res!233410) b!404527))

(assert (= (and b!404527 res!233407) b!404526))

(assert (= (and b!404526 res!233412) b!404520))

(assert (= (and b!404520 res!233403) b!404523))

(assert (= (and b!404523 res!233405) b!404524))

(assert (= (and b!404524 res!233408) b!404528))

(assert (= (and b!404528 res!233406) b!404530))

(assert (= (and b!404530 res!233409) b!404531))

(assert (= (and b!404529 condMapEmpty!16944) mapIsEmpty!16944))

(assert (= (and b!404529 (not condMapEmpty!16944)) mapNonEmpty!16944))

(get-info :version)

(assert (= (and mapNonEmpty!16944 ((_ is ValueCellFull!4764) mapValue!16944)) b!404525))

(assert (= (and b!404529 ((_ is ValueCellFull!4764) mapDefault!16944)) b!404521))

(assert (= start!38804 b!404529))

(declare-fun m!397293 () Bool)

(assert (=> start!38804 m!397293))

(declare-fun m!397295 () Bool)

(assert (=> start!38804 m!397295))

(declare-fun m!397297 () Bool)

(assert (=> b!404523 m!397297))

(declare-fun m!397299 () Bool)

(assert (=> b!404527 m!397299))

(declare-fun m!397301 () Bool)

(assert (=> b!404530 m!397301))

(declare-fun m!397303 () Bool)

(assert (=> b!404530 m!397303))

(declare-fun m!397305 () Bool)

(assert (=> b!404531 m!397305))

(declare-fun m!397307 () Bool)

(assert (=> b!404522 m!397307))

(declare-fun m!397309 () Bool)

(assert (=> b!404528 m!397309))

(declare-fun m!397311 () Bool)

(assert (=> mapNonEmpty!16944 m!397311))

(declare-fun m!397313 () Bool)

(assert (=> b!404524 m!397313))

(declare-fun m!397315 () Bool)

(assert (=> b!404526 m!397315))

(check-sat (not b!404523) (not b!404526) (not b!404531) (not start!38804) tp_is_empty!10215 (not b!404522) (not b!404528) (not mapNonEmpty!16944) (not b!404530) (not b!404527))
(check-sat)
