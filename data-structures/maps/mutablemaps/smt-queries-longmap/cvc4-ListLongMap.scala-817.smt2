; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19970 () Bool)

(assert start!19970)

(declare-fun b!195723 () Bool)

(declare-fun e!128824 () Bool)

(declare-fun tp_is_empty!4517 () Bool)

(assert (=> b!195723 (= e!128824 tp_is_empty!4517)))

(declare-fun b!195724 () Bool)

(declare-fun e!128825 () Bool)

(assert (=> b!195724 (= e!128825 tp_is_empty!4517)))

(declare-fun mapNonEmpty!7829 () Bool)

(declare-fun mapRes!7829 () Bool)

(declare-fun tp!17117 () Bool)

(assert (=> mapNonEmpty!7829 (= mapRes!7829 (and tp!17117 e!128825))))

(declare-fun mapKey!7829 () (_ BitVec 32))

(declare-datatypes ((V!5669 0))(
  ( (V!5670 (val!2303 Int)) )
))
(declare-datatypes ((ValueCell!1915 0))(
  ( (ValueCellFull!1915 (v!4268 V!5669)) (EmptyCell!1915) )
))
(declare-datatypes ((array!8290 0))(
  ( (array!8291 (arr!3900 (Array (_ BitVec 32) ValueCell!1915)) (size!4225 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8290)

(declare-fun mapValue!7829 () ValueCell!1915)

(declare-fun mapRest!7829 () (Array (_ BitVec 32) ValueCell!1915))

(assert (=> mapNonEmpty!7829 (= (arr!3900 _values!649) (store mapRest!7829 mapKey!7829 mapValue!7829))))

(declare-fun mapIsEmpty!7829 () Bool)

(assert (=> mapIsEmpty!7829 mapRes!7829))

(declare-fun b!195726 () Bool)

(declare-fun e!128822 () Bool)

(assert (=> b!195726 (= e!128822 (and e!128824 mapRes!7829))))

(declare-fun condMapEmpty!7829 () Bool)

(declare-fun mapDefault!7829 () ValueCell!1915)

