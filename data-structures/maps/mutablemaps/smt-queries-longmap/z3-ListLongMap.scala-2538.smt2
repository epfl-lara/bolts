; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39056 () Bool)

(assert start!39056)

(declare-fun b_free!9315 () Bool)

(declare-fun b_next!9315 () Bool)

(assert (=> start!39056 (= b_free!9315 (not b_next!9315))))

(declare-fun tp!33474 () Bool)

(declare-fun b_and!16719 () Bool)

(assert (=> start!39056 (= tp!33474 b_and!16719)))

(declare-fun b!409497 () Bool)

(declare-fun e!245604 () Bool)

(declare-fun e!245605 () Bool)

(declare-fun mapRes!17322 () Bool)

(assert (=> b!409497 (= e!245604 (and e!245605 mapRes!17322))))

(declare-fun condMapEmpty!17322 () Bool)

(declare-datatypes ((V!15061 0))(
  ( (V!15062 (val!5278 Int)) )
))
(declare-datatypes ((ValueCell!4890 0))(
  ( (ValueCellFull!4890 (v!7521 V!15061)) (EmptyCell!4890) )
))
(declare-datatypes ((array!24787 0))(
  ( (array!24788 (arr!11840 (Array (_ BitVec 32) ValueCell!4890)) (size!12192 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24787)

(declare-fun mapDefault!17322 () ValueCell!4890)

(assert (=> b!409497 (= condMapEmpty!17322 (= (arr!11840 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4890)) mapDefault!17322)))))

(declare-fun b!409498 () Bool)

(declare-fun tp_is_empty!10467 () Bool)

(assert (=> b!409498 (= e!245605 tp_is_empty!10467)))

(declare-fun b!409499 () Bool)

(declare-fun res!237252 () Bool)

(declare-fun e!245600 () Bool)

(assert (=> b!409499 (=> (not res!237252) (not e!245600))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24789 0))(
  ( (array!24790 (arr!11841 (Array (_ BitVec 32) (_ BitVec 64))) (size!12193 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24789)

(assert (=> b!409499 (= res!237252 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12193 _keys!709))))))

(declare-fun b!409500 () Bool)

(declare-fun res!237248 () Bool)

(assert (=> b!409500 (=> (not res!237248) (not e!245600))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409500 (= res!237248 (validMask!0 mask!1025))))

(declare-fun b!409501 () Bool)

(declare-fun res!237258 () Bool)

(declare-fun e!245603 () Bool)

(assert (=> b!409501 (=> (not res!237258) (not e!245603))))

(declare-fun lt!188942 () array!24789)

(declare-datatypes ((List!6836 0))(
  ( (Nil!6833) (Cons!6832 (h!7688 (_ BitVec 64)) (t!12018 List!6836)) )
))
(declare-fun arrayNoDuplicates!0 (array!24789 (_ BitVec 32) List!6836) Bool)

(assert (=> b!409501 (= res!237258 (arrayNoDuplicates!0 lt!188942 #b00000000000000000000000000000000 Nil!6833))))

(declare-fun b!409502 () Bool)

(assert (=> b!409502 (= e!245600 e!245603)))

(declare-fun res!237256 () Bool)

(assert (=> b!409502 (=> (not res!237256) (not e!245603))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24789 (_ BitVec 32)) Bool)

(assert (=> b!409502 (= res!237256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188942 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!409502 (= lt!188942 (array!24790 (store (arr!11841 _keys!709) i!563 k0!794) (size!12193 _keys!709)))))

(declare-fun b!409503 () Bool)

(assert (=> b!409503 (= e!245603 false)))

(declare-fun minValue!515 () V!15061)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15061)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6788 0))(
  ( (tuple2!6789 (_1!3404 (_ BitVec 64)) (_2!3404 V!15061)) )
))
(declare-datatypes ((List!6837 0))(
  ( (Nil!6834) (Cons!6833 (h!7689 tuple2!6788) (t!12019 List!6837)) )
))
(declare-datatypes ((ListLongMap!5715 0))(
  ( (ListLongMap!5716 (toList!2873 List!6837)) )
))
(declare-fun lt!188943 () ListLongMap!5715)

(declare-fun getCurrentListMapNoExtraKeys!1083 (array!24789 array!24787 (_ BitVec 32) (_ BitVec 32) V!15061 V!15061 (_ BitVec 32) Int) ListLongMap!5715)

(assert (=> b!409503 (= lt!188943 (getCurrentListMapNoExtraKeys!1083 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409504 () Bool)

(declare-fun res!237255 () Bool)

(assert (=> b!409504 (=> (not res!237255) (not e!245600))))

(declare-fun arrayContainsKey!0 (array!24789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409504 (= res!237255 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!409505 () Bool)

(declare-fun res!237247 () Bool)

(assert (=> b!409505 (=> (not res!237247) (not e!245600))))

(assert (=> b!409505 (= res!237247 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6833))))

(declare-fun b!409507 () Bool)

(declare-fun res!237253 () Bool)

(assert (=> b!409507 (=> (not res!237253) (not e!245600))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409507 (= res!237253 (validKeyInArray!0 k0!794))))

(declare-fun b!409508 () Bool)

(declare-fun res!237251 () Bool)

(assert (=> b!409508 (=> (not res!237251) (not e!245600))))

(assert (=> b!409508 (= res!237251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17322 () Bool)

(declare-fun tp!33473 () Bool)

(declare-fun e!245602 () Bool)

(assert (=> mapNonEmpty!17322 (= mapRes!17322 (and tp!33473 e!245602))))

(declare-fun mapValue!17322 () ValueCell!4890)

(declare-fun mapRest!17322 () (Array (_ BitVec 32) ValueCell!4890))

(declare-fun mapKey!17322 () (_ BitVec 32))

(assert (=> mapNonEmpty!17322 (= (arr!11840 _values!549) (store mapRest!17322 mapKey!17322 mapValue!17322))))

(declare-fun b!409509 () Bool)

(declare-fun res!237257 () Bool)

(assert (=> b!409509 (=> (not res!237257) (not e!245600))))

(assert (=> b!409509 (= res!237257 (and (= (size!12192 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12193 _keys!709) (size!12192 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409510 () Bool)

(declare-fun res!237254 () Bool)

(assert (=> b!409510 (=> (not res!237254) (not e!245600))))

(assert (=> b!409510 (= res!237254 (or (= (select (arr!11841 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11841 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17322 () Bool)

(assert (=> mapIsEmpty!17322 mapRes!17322))

(declare-fun b!409511 () Bool)

(declare-fun res!237250 () Bool)

(assert (=> b!409511 (=> (not res!237250) (not e!245603))))

(assert (=> b!409511 (= res!237250 (bvsle from!863 i!563))))

(declare-fun res!237249 () Bool)

(assert (=> start!39056 (=> (not res!237249) (not e!245600))))

(assert (=> start!39056 (= res!237249 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12193 _keys!709))))))

(assert (=> start!39056 e!245600))

(assert (=> start!39056 tp_is_empty!10467))

(assert (=> start!39056 tp!33474))

(assert (=> start!39056 true))

(declare-fun array_inv!8646 (array!24787) Bool)

(assert (=> start!39056 (and (array_inv!8646 _values!549) e!245604)))

(declare-fun array_inv!8647 (array!24789) Bool)

(assert (=> start!39056 (array_inv!8647 _keys!709)))

(declare-fun b!409506 () Bool)

(assert (=> b!409506 (= e!245602 tp_is_empty!10467)))

(assert (= (and start!39056 res!237249) b!409500))

(assert (= (and b!409500 res!237248) b!409509))

(assert (= (and b!409509 res!237257) b!409508))

(assert (= (and b!409508 res!237251) b!409505))

(assert (= (and b!409505 res!237247) b!409499))

(assert (= (and b!409499 res!237252) b!409507))

(assert (= (and b!409507 res!237253) b!409510))

(assert (= (and b!409510 res!237254) b!409504))

(assert (= (and b!409504 res!237255) b!409502))

(assert (= (and b!409502 res!237256) b!409501))

(assert (= (and b!409501 res!237258) b!409511))

(assert (= (and b!409511 res!237250) b!409503))

(assert (= (and b!409497 condMapEmpty!17322) mapIsEmpty!17322))

(assert (= (and b!409497 (not condMapEmpty!17322)) mapNonEmpty!17322))

(get-info :version)

(assert (= (and mapNonEmpty!17322 ((_ is ValueCellFull!4890) mapValue!17322)) b!409506))

(assert (= (and b!409497 ((_ is ValueCellFull!4890) mapDefault!17322)) b!409498))

(assert (= start!39056 b!409497))

(declare-fun m!400337 () Bool)

(assert (=> b!409501 m!400337))

(declare-fun m!400339 () Bool)

(assert (=> b!409500 m!400339))

(declare-fun m!400341 () Bool)

(assert (=> b!409508 m!400341))

(declare-fun m!400343 () Bool)

(assert (=> mapNonEmpty!17322 m!400343))

(declare-fun m!400345 () Bool)

(assert (=> b!409504 m!400345))

(declare-fun m!400347 () Bool)

(assert (=> b!409503 m!400347))

(declare-fun m!400349 () Bool)

(assert (=> b!409510 m!400349))

(declare-fun m!400351 () Bool)

(assert (=> b!409505 m!400351))

(declare-fun m!400353 () Bool)

(assert (=> b!409507 m!400353))

(declare-fun m!400355 () Bool)

(assert (=> start!39056 m!400355))

(declare-fun m!400357 () Bool)

(assert (=> start!39056 m!400357))

(declare-fun m!400359 () Bool)

(assert (=> b!409502 m!400359))

(declare-fun m!400361 () Bool)

(assert (=> b!409502 m!400361))

(check-sat tp_is_empty!10467 (not start!39056) (not b!409508) (not b_next!9315) (not mapNonEmpty!17322) (not b!409503) b_and!16719 (not b!409507) (not b!409502) (not b!409501) (not b!409505) (not b!409504) (not b!409500))
(check-sat b_and!16719 (not b_next!9315))
