; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19960 () Bool)

(assert start!19960)

(declare-fun mapIsEmpty!7814 () Bool)

(declare-fun mapRes!7814 () Bool)

(assert (=> mapIsEmpty!7814 mapRes!7814))

(declare-fun mapNonEmpty!7814 () Bool)

(declare-fun tp!17102 () Bool)

(declare-fun e!128746 () Bool)

(assert (=> mapNonEmpty!7814 (= mapRes!7814 (and tp!17102 e!128746))))

(declare-datatypes ((V!5657 0))(
  ( (V!5658 (val!2298 Int)) )
))
(declare-datatypes ((ValueCell!1910 0))(
  ( (ValueCellFull!1910 (v!4263 V!5657)) (EmptyCell!1910) )
))
(declare-fun mapRest!7814 () (Array (_ BitVec 32) ValueCell!1910))

(declare-fun mapKey!7814 () (_ BitVec 32))

(declare-datatypes ((array!8270 0))(
  ( (array!8271 (arr!3890 (Array (_ BitVec 32) ValueCell!1910)) (size!4215 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8270)

(declare-fun mapValue!7814 () ValueCell!1910)

(assert (=> mapNonEmpty!7814 (= (arr!3890 _values!649) (store mapRest!7814 mapKey!7814 mapValue!7814))))

(declare-fun e!128748 () Bool)

(declare-datatypes ((array!8272 0))(
  ( (array!8273 (arr!3891 (Array (_ BitVec 32) (_ BitVec 64))) (size!4216 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8272)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun b!195663 () Bool)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!195663 (= e!128748 (and (= (size!4215 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4216 _keys!825) (size!4215 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011) (not (= (size!4216 _keys!825) (bvadd #b00000000000000000000000000000001 mask!1149)))))))

(declare-fun b!195664 () Bool)

(declare-fun tp_is_empty!4507 () Bool)

(assert (=> b!195664 (= e!128746 tp_is_empty!4507)))

(declare-fun res!92351 () Bool)

(assert (=> start!19960 (=> (not res!92351) (not e!128748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!19960 (= res!92351 (validMask!0 mask!1149))))

(assert (=> start!19960 e!128748))

(assert (=> start!19960 true))

(declare-fun e!128749 () Bool)

(declare-fun array_inv!2515 (array!8270) Bool)

(assert (=> start!19960 (and (array_inv!2515 _values!649) e!128749)))

(declare-fun array_inv!2516 (array!8272) Bool)

(assert (=> start!19960 (array_inv!2516 _keys!825)))

(declare-fun b!195665 () Bool)

(declare-fun e!128750 () Bool)

(assert (=> b!195665 (= e!128750 tp_is_empty!4507)))

(declare-fun b!195666 () Bool)

(assert (=> b!195666 (= e!128749 (and e!128750 mapRes!7814))))

(declare-fun condMapEmpty!7814 () Bool)

(declare-fun mapDefault!7814 () ValueCell!1910)

