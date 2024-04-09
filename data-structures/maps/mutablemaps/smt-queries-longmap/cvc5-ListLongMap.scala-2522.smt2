; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38958 () Bool)

(assert start!38958)

(declare-fun res!235713 () Bool)

(declare-fun e!244722 () Bool)

(assert (=> start!38958 (=> (not res!235713) (not e!244722))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24593 0))(
  ( (array!24594 (arr!11743 (Array (_ BitVec 32) (_ BitVec 64))) (size!12095 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24593)

(assert (=> start!38958 (= res!235713 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12095 _keys!709))))))

(assert (=> start!38958 e!244722))

(assert (=> start!38958 true))

(declare-datatypes ((V!14931 0))(
  ( (V!14932 (val!5229 Int)) )
))
(declare-datatypes ((ValueCell!4841 0))(
  ( (ValueCellFull!4841 (v!7472 V!14931)) (EmptyCell!4841) )
))
(declare-datatypes ((array!24595 0))(
  ( (array!24596 (arr!11744 (Array (_ BitVec 32) ValueCell!4841)) (size!12096 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24595)

(declare-fun e!244718 () Bool)

(declare-fun array_inv!8576 (array!24595) Bool)

(assert (=> start!38958 (and (array_inv!8576 _values!549) e!244718)))

(declare-fun array_inv!8577 (array!24593) Bool)

(assert (=> start!38958 (array_inv!8577 _keys!709)))

(declare-fun b!407522 () Bool)

(declare-fun res!235721 () Bool)

(assert (=> b!407522 (=> (not res!235721) (not e!244722))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24593 (_ BitVec 32)) Bool)

(assert (=> b!407522 (= res!235721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407523 () Bool)

(declare-fun res!235714 () Bool)

(assert (=> b!407523 (=> (not res!235714) (not e!244722))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407523 (= res!235714 (and (= (size!12096 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12095 _keys!709) (size!12096 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407524 () Bool)

(declare-fun e!244721 () Bool)

(declare-fun tp_is_empty!10369 () Bool)

(assert (=> b!407524 (= e!244721 tp_is_empty!10369)))

(declare-fun b!407525 () Bool)

(declare-fun res!235715 () Bool)

(assert (=> b!407525 (=> (not res!235715) (not e!244722))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407525 (= res!235715 (validKeyInArray!0 k!794))))

(declare-fun b!407526 () Bool)

(declare-fun res!235720 () Bool)

(assert (=> b!407526 (=> (not res!235720) (not e!244722))))

(declare-datatypes ((List!6789 0))(
  ( (Nil!6786) (Cons!6785 (h!7641 (_ BitVec 64)) (t!11971 List!6789)) )
))
(declare-fun arrayNoDuplicates!0 (array!24593 (_ BitVec 32) List!6789) Bool)

(assert (=> b!407526 (= res!235720 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6786))))

(declare-fun b!407527 () Bool)

(declare-fun e!244720 () Bool)

(assert (=> b!407527 (= e!244720 false)))

(declare-fun lt!188648 () Bool)

(declare-fun lt!188649 () array!24593)

(assert (=> b!407527 (= lt!188648 (arrayNoDuplicates!0 lt!188649 #b00000000000000000000000000000000 Nil!6786))))

(declare-fun b!407528 () Bool)

(declare-fun res!235717 () Bool)

(assert (=> b!407528 (=> (not res!235717) (not e!244722))))

(declare-fun arrayContainsKey!0 (array!24593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407528 (= res!235717 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17175 () Bool)

(declare-fun mapRes!17175 () Bool)

(declare-fun tp!33294 () Bool)

(declare-fun e!244719 () Bool)

(assert (=> mapNonEmpty!17175 (= mapRes!17175 (and tp!33294 e!244719))))

(declare-fun mapValue!17175 () ValueCell!4841)

(declare-fun mapKey!17175 () (_ BitVec 32))

(declare-fun mapRest!17175 () (Array (_ BitVec 32) ValueCell!4841))

(assert (=> mapNonEmpty!17175 (= (arr!11744 _values!549) (store mapRest!17175 mapKey!17175 mapValue!17175))))

(declare-fun b!407529 () Bool)

(declare-fun res!235719 () Bool)

(assert (=> b!407529 (=> (not res!235719) (not e!244722))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407529 (= res!235719 (or (= (select (arr!11743 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11743 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407530 () Bool)

(assert (=> b!407530 (= e!244718 (and e!244721 mapRes!17175))))

(declare-fun condMapEmpty!17175 () Bool)

(declare-fun mapDefault!17175 () ValueCell!4841)

