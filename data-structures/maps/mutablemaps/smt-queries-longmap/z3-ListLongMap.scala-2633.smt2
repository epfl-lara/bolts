; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39626 () Bool)

(assert start!39626)

(declare-fun b_free!9885 () Bool)

(declare-fun b_next!9885 () Bool)

(assert (=> start!39626 (= b_free!9885 (not b_next!9885))))

(declare-fun tp!35184 () Bool)

(declare-fun b_and!17559 () Bool)

(assert (=> start!39626 (= tp!35184 b_and!17559)))

(declare-fun b!424464 () Bool)

(declare-fun e!252116 () Bool)

(assert (=> b!424464 (= e!252116 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15821 0))(
  ( (V!15822 (val!5563 Int)) )
))
(declare-fun minValue!515 () V!15821)

(declare-datatypes ((ValueCell!5175 0))(
  ( (ValueCellFull!5175 (v!7806 V!15821)) (EmptyCell!5175) )
))
(declare-datatypes ((array!25901 0))(
  ( (array!25902 (arr!12397 (Array (_ BitVec 32) ValueCell!5175)) (size!12749 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25901)

(declare-fun zeroValue!515 () V!15821)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7240 0))(
  ( (tuple2!7241 (_1!3630 (_ BitVec 64)) (_2!3630 V!15821)) )
))
(declare-datatypes ((List!7285 0))(
  ( (Nil!7282) (Cons!7281 (h!8137 tuple2!7240) (t!12737 List!7285)) )
))
(declare-datatypes ((ListLongMap!6167 0))(
  ( (ListLongMap!6168 (toList!3099 List!7285)) )
))
(declare-fun lt!194374 () ListLongMap!6167)

(declare-fun v!412 () V!15821)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25903 0))(
  ( (array!25904 (arr!12398 (Array (_ BitVec 32) (_ BitVec 64))) (size!12750 (_ BitVec 32))) )
))
(declare-fun lt!194375 () array!25903)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1300 (array!25903 array!25901 (_ BitVec 32) (_ BitVec 32) V!15821 V!15821 (_ BitVec 32) Int) ListLongMap!6167)

(assert (=> b!424464 (= lt!194374 (getCurrentListMapNoExtraKeys!1300 lt!194375 (array!25902 (store (arr!12397 _values!549) i!563 (ValueCellFull!5175 v!412)) (size!12749 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194376 () ListLongMap!6167)

(declare-fun _keys!709 () array!25903)

(assert (=> b!424464 (= lt!194376 (getCurrentListMapNoExtraKeys!1300 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18177 () Bool)

(declare-fun mapRes!18177 () Bool)

(assert (=> mapIsEmpty!18177 mapRes!18177))

(declare-fun b!424465 () Bool)

(declare-fun res!248413 () Bool)

(assert (=> b!424465 (=> (not res!248413) (not e!252116))))

(declare-datatypes ((List!7286 0))(
  ( (Nil!7283) (Cons!7282 (h!8138 (_ BitVec 64)) (t!12738 List!7286)) )
))
(declare-fun arrayNoDuplicates!0 (array!25903 (_ BitVec 32) List!7286) Bool)

(assert (=> b!424465 (= res!248413 (arrayNoDuplicates!0 lt!194375 #b00000000000000000000000000000000 Nil!7283))))

(declare-fun b!424466 () Bool)

(declare-fun res!248408 () Bool)

(declare-fun e!252117 () Bool)

(assert (=> b!424466 (=> (not res!248408) (not e!252117))))

(assert (=> b!424466 (= res!248408 (and (= (size!12749 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12750 _keys!709) (size!12749 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18177 () Bool)

(declare-fun tp!35183 () Bool)

(declare-fun e!252120 () Bool)

(assert (=> mapNonEmpty!18177 (= mapRes!18177 (and tp!35183 e!252120))))

(declare-fun mapRest!18177 () (Array (_ BitVec 32) ValueCell!5175))

(declare-fun mapKey!18177 () (_ BitVec 32))

(declare-fun mapValue!18177 () ValueCell!5175)

(assert (=> mapNonEmpty!18177 (= (arr!12397 _values!549) (store mapRest!18177 mapKey!18177 mapValue!18177))))

(declare-fun res!248415 () Bool)

(assert (=> start!39626 (=> (not res!248415) (not e!252117))))

(assert (=> start!39626 (= res!248415 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12750 _keys!709))))))

(assert (=> start!39626 e!252117))

(declare-fun tp_is_empty!11037 () Bool)

(assert (=> start!39626 tp_is_empty!11037))

(assert (=> start!39626 tp!35184))

(assert (=> start!39626 true))

(declare-fun e!252119 () Bool)

(declare-fun array_inv!9038 (array!25901) Bool)

(assert (=> start!39626 (and (array_inv!9038 _values!549) e!252119)))

(declare-fun array_inv!9039 (array!25903) Bool)

(assert (=> start!39626 (array_inv!9039 _keys!709)))

(declare-fun b!424467 () Bool)

(assert (=> b!424467 (= e!252117 e!252116)))

(declare-fun res!248412 () Bool)

(assert (=> b!424467 (=> (not res!248412) (not e!252116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25903 (_ BitVec 32)) Bool)

(assert (=> b!424467 (= res!248412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194375 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!424467 (= lt!194375 (array!25904 (store (arr!12398 _keys!709) i!563 k0!794) (size!12750 _keys!709)))))

(declare-fun b!424468 () Bool)

(declare-fun res!248414 () Bool)

(assert (=> b!424468 (=> (not res!248414) (not e!252117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424468 (= res!248414 (validMask!0 mask!1025))))

(declare-fun b!424469 () Bool)

(declare-fun res!248407 () Bool)

(assert (=> b!424469 (=> (not res!248407) (not e!252117))))

(declare-fun arrayContainsKey!0 (array!25903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424469 (= res!248407 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424470 () Bool)

(declare-fun res!248416 () Bool)

(assert (=> b!424470 (=> (not res!248416) (not e!252117))))

(assert (=> b!424470 (= res!248416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424471 () Bool)

(declare-fun res!248411 () Bool)

(assert (=> b!424471 (=> (not res!248411) (not e!252117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424471 (= res!248411 (validKeyInArray!0 k0!794))))

(declare-fun b!424472 () Bool)

(declare-fun res!248418 () Bool)

(assert (=> b!424472 (=> (not res!248418) (not e!252117))))

(assert (=> b!424472 (= res!248418 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12750 _keys!709))))))

(declare-fun b!424473 () Bool)

(declare-fun res!248409 () Bool)

(assert (=> b!424473 (=> (not res!248409) (not e!252117))))

(assert (=> b!424473 (= res!248409 (or (= (select (arr!12398 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12398 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424474 () Bool)

(declare-fun res!248417 () Bool)

(assert (=> b!424474 (=> (not res!248417) (not e!252117))))

(assert (=> b!424474 (= res!248417 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7283))))

(declare-fun b!424475 () Bool)

(assert (=> b!424475 (= e!252120 tp_is_empty!11037)))

(declare-fun b!424476 () Bool)

(declare-fun e!252121 () Bool)

(assert (=> b!424476 (= e!252119 (and e!252121 mapRes!18177))))

(declare-fun condMapEmpty!18177 () Bool)

(declare-fun mapDefault!18177 () ValueCell!5175)

(assert (=> b!424476 (= condMapEmpty!18177 (= (arr!12397 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5175)) mapDefault!18177)))))

(declare-fun b!424477 () Bool)

(assert (=> b!424477 (= e!252121 tp_is_empty!11037)))

(declare-fun b!424478 () Bool)

(declare-fun res!248410 () Bool)

(assert (=> b!424478 (=> (not res!248410) (not e!252116))))

(assert (=> b!424478 (= res!248410 (bvsle from!863 i!563))))

(assert (= (and start!39626 res!248415) b!424468))

(assert (= (and b!424468 res!248414) b!424466))

(assert (= (and b!424466 res!248408) b!424470))

(assert (= (and b!424470 res!248416) b!424474))

(assert (= (and b!424474 res!248417) b!424472))

(assert (= (and b!424472 res!248418) b!424471))

(assert (= (and b!424471 res!248411) b!424473))

(assert (= (and b!424473 res!248409) b!424469))

(assert (= (and b!424469 res!248407) b!424467))

(assert (= (and b!424467 res!248412) b!424465))

(assert (= (and b!424465 res!248413) b!424478))

(assert (= (and b!424478 res!248410) b!424464))

(assert (= (and b!424476 condMapEmpty!18177) mapIsEmpty!18177))

(assert (= (and b!424476 (not condMapEmpty!18177)) mapNonEmpty!18177))

(get-info :version)

(assert (= (and mapNonEmpty!18177 ((_ is ValueCellFull!5175) mapValue!18177)) b!424475))

(assert (= (and b!424476 ((_ is ValueCellFull!5175) mapDefault!18177)) b!424477))

(assert (= start!39626 b!424476))

(declare-fun m!413575 () Bool)

(assert (=> b!424464 m!413575))

(declare-fun m!413577 () Bool)

(assert (=> b!424464 m!413577))

(declare-fun m!413579 () Bool)

(assert (=> b!424464 m!413579))

(declare-fun m!413581 () Bool)

(assert (=> b!424474 m!413581))

(declare-fun m!413583 () Bool)

(assert (=> mapNonEmpty!18177 m!413583))

(declare-fun m!413585 () Bool)

(assert (=> b!424473 m!413585))

(declare-fun m!413587 () Bool)

(assert (=> b!424467 m!413587))

(declare-fun m!413589 () Bool)

(assert (=> b!424467 m!413589))

(declare-fun m!413591 () Bool)

(assert (=> b!424465 m!413591))

(declare-fun m!413593 () Bool)

(assert (=> b!424469 m!413593))

(declare-fun m!413595 () Bool)

(assert (=> start!39626 m!413595))

(declare-fun m!413597 () Bool)

(assert (=> start!39626 m!413597))

(declare-fun m!413599 () Bool)

(assert (=> b!424468 m!413599))

(declare-fun m!413601 () Bool)

(assert (=> b!424471 m!413601))

(declare-fun m!413603 () Bool)

(assert (=> b!424470 m!413603))

(check-sat (not b!424467) (not b!424474) (not b!424464) (not b!424470) (not start!39626) (not b!424469) (not b!424465) (not mapNonEmpty!18177) (not b!424468) (not b!424471) b_and!17559 tp_is_empty!11037 (not b_next!9885))
(check-sat b_and!17559 (not b_next!9885))
