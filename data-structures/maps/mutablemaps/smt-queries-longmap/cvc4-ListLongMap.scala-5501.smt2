; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72822 () Bool)

(assert start!72822)

(declare-fun b!844652 () Bool)

(declare-fun e!471525 () Bool)

(declare-fun tp_is_empty!15845 () Bool)

(assert (=> b!844652 (= e!471525 tp_is_empty!15845)))

(declare-fun mapIsEmpty!25367 () Bool)

(declare-fun mapRes!25367 () Bool)

(assert (=> mapIsEmpty!25367 mapRes!25367))

(declare-fun mapNonEmpty!25367 () Bool)

(declare-fun tp!48686 () Bool)

(assert (=> mapNonEmpty!25367 (= mapRes!25367 (and tp!48686 e!471525))))

(declare-datatypes ((V!26173 0))(
  ( (V!26174 (val!7970 Int)) )
))
(declare-datatypes ((ValueCell!7483 0))(
  ( (ValueCellFull!7483 (v!10391 V!26173)) (EmptyCell!7483) )
))
(declare-fun mapValue!25367 () ValueCell!7483)

(declare-datatypes ((array!47904 0))(
  ( (array!47905 (arr!22979 (Array (_ BitVec 32) ValueCell!7483)) (size!23420 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47904)

(declare-fun mapKey!25367 () (_ BitVec 32))

(declare-fun mapRest!25367 () (Array (_ BitVec 32) ValueCell!7483))

(assert (=> mapNonEmpty!25367 (= (arr!22979 _values!688) (store mapRest!25367 mapKey!25367 mapValue!25367))))

(declare-fun b!844653 () Bool)

(declare-fun res!573954 () Bool)

(declare-fun e!471521 () Bool)

(assert (=> b!844653 (=> (not res!573954) (not e!471521))))

(declare-datatypes ((array!47906 0))(
  ( (array!47907 (arr!22980 (Array (_ BitVec 32) (_ BitVec 64))) (size!23421 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47906)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47906 (_ BitVec 32)) Bool)

(assert (=> b!844653 (= res!573954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844654 () Bool)

(declare-fun e!471522 () Bool)

(declare-fun e!471523 () Bool)

(assert (=> b!844654 (= e!471522 (and e!471523 mapRes!25367))))

(declare-fun condMapEmpty!25367 () Bool)

(declare-fun mapDefault!25367 () ValueCell!7483)

