; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38900 () Bool)

(assert start!38900)

(declare-fun b!406391 () Bool)

(declare-fun res!234849 () Bool)

(declare-fun e!244199 () Bool)

(assert (=> b!406391 (=> (not res!234849) (not e!244199))))

(declare-datatypes ((array!24479 0))(
  ( (array!24480 (arr!11686 (Array (_ BitVec 32) (_ BitVec 64))) (size!12038 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24479)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406391 (= res!234849 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!406392 () Bool)

(declare-fun res!234845 () Bool)

(assert (=> b!406392 (=> (not res!234845) (not e!244199))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14853 0))(
  ( (V!14854 (val!5200 Int)) )
))
(declare-datatypes ((ValueCell!4812 0))(
  ( (ValueCellFull!4812 (v!7443 V!14853)) (EmptyCell!4812) )
))
(declare-datatypes ((array!24481 0))(
  ( (array!24482 (arr!11687 (Array (_ BitVec 32) ValueCell!4812)) (size!12039 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24481)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!406392 (= res!234845 (and (= (size!12039 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12038 _keys!709) (size!12039 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406393 () Bool)

(declare-fun res!234851 () Bool)

(assert (=> b!406393 (=> (not res!234851) (not e!244199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24479 (_ BitVec 32)) Bool)

(assert (=> b!406393 (= res!234851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406394 () Bool)

(declare-fun res!234847 () Bool)

(assert (=> b!406394 (=> (not res!234847) (not e!244199))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406394 (= res!234847 (or (= (select (arr!11686 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11686 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406395 () Bool)

(declare-fun res!234846 () Bool)

(assert (=> b!406395 (=> (not res!234846) (not e!244199))))

(declare-datatypes ((List!6763 0))(
  ( (Nil!6760) (Cons!6759 (h!7615 (_ BitVec 64)) (t!11945 List!6763)) )
))
(declare-fun arrayNoDuplicates!0 (array!24479 (_ BitVec 32) List!6763) Bool)

(assert (=> b!406395 (= res!234846 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6760))))

(declare-fun b!406396 () Bool)

(declare-fun e!244198 () Bool)

(declare-fun tp_is_empty!10311 () Bool)

(assert (=> b!406396 (= e!244198 tp_is_empty!10311)))

(declare-fun b!406397 () Bool)

(declare-fun res!234852 () Bool)

(assert (=> b!406397 (=> (not res!234852) (not e!244199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406397 (= res!234852 (validKeyInArray!0 k0!794))))

(declare-fun b!406398 () Bool)

(declare-fun res!234843 () Bool)

(assert (=> b!406398 (=> (not res!234843) (not e!244199))))

(assert (=> b!406398 (= res!234843 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12038 _keys!709))))))

(declare-fun b!406399 () Bool)

(declare-fun e!244197 () Bool)

(assert (=> b!406399 (= e!244199 e!244197)))

(declare-fun res!234844 () Bool)

(assert (=> b!406399 (=> (not res!234844) (not e!244197))))

(declare-fun lt!188475 () array!24479)

(assert (=> b!406399 (= res!234844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188475 mask!1025))))

(assert (=> b!406399 (= lt!188475 (array!24480 (store (arr!11686 _keys!709) i!563 k0!794) (size!12038 _keys!709)))))

(declare-fun mapNonEmpty!17088 () Bool)

(declare-fun mapRes!17088 () Bool)

(declare-fun tp!33207 () Bool)

(declare-fun e!244196 () Bool)

(assert (=> mapNonEmpty!17088 (= mapRes!17088 (and tp!33207 e!244196))))

(declare-fun mapRest!17088 () (Array (_ BitVec 32) ValueCell!4812))

(declare-fun mapValue!17088 () ValueCell!4812)

(declare-fun mapKey!17088 () (_ BitVec 32))

(assert (=> mapNonEmpty!17088 (= (arr!11687 _values!549) (store mapRest!17088 mapKey!17088 mapValue!17088))))

(declare-fun b!406400 () Bool)

(assert (=> b!406400 (= e!244196 tp_is_empty!10311)))

(declare-fun b!406401 () Bool)

(declare-fun res!234848 () Bool)

(assert (=> b!406401 (=> (not res!234848) (not e!244199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406401 (= res!234848 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17088 () Bool)

(assert (=> mapIsEmpty!17088 mapRes!17088))

(declare-fun res!234850 () Bool)

(assert (=> start!38900 (=> (not res!234850) (not e!244199))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38900 (= res!234850 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12038 _keys!709))))))

(assert (=> start!38900 e!244199))

(assert (=> start!38900 true))

(declare-fun e!244200 () Bool)

(declare-fun array_inv!8536 (array!24481) Bool)

(assert (=> start!38900 (and (array_inv!8536 _values!549) e!244200)))

(declare-fun array_inv!8537 (array!24479) Bool)

(assert (=> start!38900 (array_inv!8537 _keys!709)))

(declare-fun b!406402 () Bool)

(assert (=> b!406402 (= e!244197 false)))

(declare-fun lt!188474 () Bool)

(assert (=> b!406402 (= lt!188474 (arrayNoDuplicates!0 lt!188475 #b00000000000000000000000000000000 Nil!6760))))

(declare-fun b!406403 () Bool)

(assert (=> b!406403 (= e!244200 (and e!244198 mapRes!17088))))

(declare-fun condMapEmpty!17088 () Bool)

(declare-fun mapDefault!17088 () ValueCell!4812)

(assert (=> b!406403 (= condMapEmpty!17088 (= (arr!11687 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4812)) mapDefault!17088)))))

(assert (= (and start!38900 res!234850) b!406401))

(assert (= (and b!406401 res!234848) b!406392))

(assert (= (and b!406392 res!234845) b!406393))

(assert (= (and b!406393 res!234851) b!406395))

(assert (= (and b!406395 res!234846) b!406398))

(assert (= (and b!406398 res!234843) b!406397))

(assert (= (and b!406397 res!234852) b!406394))

(assert (= (and b!406394 res!234847) b!406391))

(assert (= (and b!406391 res!234849) b!406399))

(assert (= (and b!406399 res!234844) b!406402))

(assert (= (and b!406403 condMapEmpty!17088) mapIsEmpty!17088))

(assert (= (and b!406403 (not condMapEmpty!17088)) mapNonEmpty!17088))

(get-info :version)

(assert (= (and mapNonEmpty!17088 ((_ is ValueCellFull!4812) mapValue!17088)) b!406400))

(assert (= (and b!406403 ((_ is ValueCellFull!4812) mapDefault!17088)) b!406396))

(assert (= start!38900 b!406403))

(declare-fun m!398445 () Bool)

(assert (=> b!406399 m!398445))

(declare-fun m!398447 () Bool)

(assert (=> b!406399 m!398447))

(declare-fun m!398449 () Bool)

(assert (=> b!406397 m!398449))

(declare-fun m!398451 () Bool)

(assert (=> b!406402 m!398451))

(declare-fun m!398453 () Bool)

(assert (=> b!406401 m!398453))

(declare-fun m!398455 () Bool)

(assert (=> b!406393 m!398455))

(declare-fun m!398457 () Bool)

(assert (=> mapNonEmpty!17088 m!398457))

(declare-fun m!398459 () Bool)

(assert (=> b!406394 m!398459))

(declare-fun m!398461 () Bool)

(assert (=> b!406395 m!398461))

(declare-fun m!398463 () Bool)

(assert (=> b!406391 m!398463))

(declare-fun m!398465 () Bool)

(assert (=> start!38900 m!398465))

(declare-fun m!398467 () Bool)

(assert (=> start!38900 m!398467))

(check-sat (not b!406402) (not start!38900) (not b!406391) tp_is_empty!10311 (not b!406401) (not mapNonEmpty!17088) (not b!406393) (not b!406397) (not b!406399) (not b!406395))
(check-sat)
