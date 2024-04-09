; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38518 () Bool)

(assert start!38518)

(declare-fun b!397646 () Bool)

(declare-fun res!228466 () Bool)

(declare-fun e!240434 () Bool)

(assert (=> b!397646 (=> (not res!228466) (not e!240434))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!397646 (= res!228466 (validKeyInArray!0 k!794))))

(declare-fun b!397647 () Bool)

(declare-fun e!240436 () Bool)

(assert (=> b!397647 (= e!240436 false)))

(declare-fun lt!187329 () Bool)

(declare-datatypes ((array!23741 0))(
  ( (array!23742 (arr!11317 (Array (_ BitVec 32) (_ BitVec 64))) (size!11669 (_ BitVec 32))) )
))
(declare-fun lt!187328 () array!23741)

(declare-datatypes ((List!6520 0))(
  ( (Nil!6517) (Cons!6516 (h!7372 (_ BitVec 64)) (t!11702 List!6520)) )
))
(declare-fun arrayNoDuplicates!0 (array!23741 (_ BitVec 32) List!6520) Bool)

(assert (=> b!397647 (= lt!187329 (arrayNoDuplicates!0 lt!187328 #b00000000000000000000000000000000 Nil!6517))))

(declare-fun b!397648 () Bool)

(declare-fun e!240439 () Bool)

(declare-fun tp_is_empty!9929 () Bool)

(assert (=> b!397648 (= e!240439 tp_is_empty!9929)))

(declare-fun b!397649 () Bool)

(declare-fun res!228465 () Bool)

(assert (=> b!397649 (=> (not res!228465) (not e!240434))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!23741)

(assert (=> b!397649 (= res!228465 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11669 _keys!709))))))

(declare-fun b!397650 () Bool)

(declare-fun res!228472 () Bool)

(assert (=> b!397650 (=> (not res!228472) (not e!240434))))

(declare-fun arrayContainsKey!0 (array!23741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!397650 (= res!228472 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!397651 () Bool)

(declare-fun res!228474 () Bool)

(assert (=> b!397651 (=> (not res!228474) (not e!240434))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23741 (_ BitVec 32)) Bool)

(assert (=> b!397651 (= res!228474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!397653 () Bool)

(declare-fun e!240435 () Bool)

(assert (=> b!397653 (= e!240435 tp_is_empty!9929)))

(declare-fun b!397654 () Bool)

(declare-fun res!228471 () Bool)

(assert (=> b!397654 (=> (not res!228471) (not e!240434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!397654 (= res!228471 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16515 () Bool)

(declare-fun mapRes!16515 () Bool)

(declare-fun tp!32310 () Bool)

(assert (=> mapNonEmpty!16515 (= mapRes!16515 (and tp!32310 e!240439))))

(declare-datatypes ((V!14343 0))(
  ( (V!14344 (val!5009 Int)) )
))
(declare-datatypes ((ValueCell!4621 0))(
  ( (ValueCellFull!4621 (v!7252 V!14343)) (EmptyCell!4621) )
))
(declare-fun mapValue!16515 () ValueCell!4621)

(declare-fun mapRest!16515 () (Array (_ BitVec 32) ValueCell!4621))

(declare-fun mapKey!16515 () (_ BitVec 32))

(declare-datatypes ((array!23743 0))(
  ( (array!23744 (arr!11318 (Array (_ BitVec 32) ValueCell!4621)) (size!11670 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23743)

(assert (=> mapNonEmpty!16515 (= (arr!11318 _values!549) (store mapRest!16515 mapKey!16515 mapValue!16515))))

(declare-fun b!397655 () Bool)

(declare-fun res!228470 () Bool)

(assert (=> b!397655 (=> (not res!228470) (not e!240434))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!397655 (= res!228470 (and (= (size!11670 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11669 _keys!709) (size!11670 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!397656 () Bool)

(declare-fun res!228468 () Bool)

(assert (=> b!397656 (=> (not res!228468) (not e!240434))))

(assert (=> b!397656 (= res!228468 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6517))))

(declare-fun b!397657 () Bool)

(declare-fun res!228467 () Bool)

(assert (=> b!397657 (=> (not res!228467) (not e!240434))))

(assert (=> b!397657 (= res!228467 (or (= (select (arr!11317 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11317 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16515 () Bool)

(assert (=> mapIsEmpty!16515 mapRes!16515))

(declare-fun b!397658 () Bool)

(declare-fun e!240438 () Bool)

(assert (=> b!397658 (= e!240438 (and e!240435 mapRes!16515))))

(declare-fun condMapEmpty!16515 () Bool)

(declare-fun mapDefault!16515 () ValueCell!4621)

