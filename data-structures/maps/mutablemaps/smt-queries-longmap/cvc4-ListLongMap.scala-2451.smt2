; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38536 () Bool)

(assert start!38536)

(declare-fun b!397997 () Bool)

(declare-fun e!240600 () Bool)

(declare-fun tp_is_empty!9947 () Bool)

(assert (=> b!397997 (= e!240600 tp_is_empty!9947)))

(declare-fun mapNonEmpty!16542 () Bool)

(declare-fun mapRes!16542 () Bool)

(declare-fun tp!32337 () Bool)

(assert (=> mapNonEmpty!16542 (= mapRes!16542 (and tp!32337 e!240600))))

(declare-datatypes ((V!14367 0))(
  ( (V!14368 (val!5018 Int)) )
))
(declare-datatypes ((ValueCell!4630 0))(
  ( (ValueCellFull!4630 (v!7261 V!14367)) (EmptyCell!4630) )
))
(declare-fun mapRest!16542 () (Array (_ BitVec 32) ValueCell!4630))

(declare-datatypes ((array!23777 0))(
  ( (array!23778 (arr!11335 (Array (_ BitVec 32) ValueCell!4630)) (size!11687 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23777)

(declare-fun mapKey!16542 () (_ BitVec 32))

(declare-fun mapValue!16542 () ValueCell!4630)

(assert (=> mapNonEmpty!16542 (= (arr!11335 _values!549) (store mapRest!16542 mapKey!16542 mapValue!16542))))

(declare-fun b!397998 () Bool)

(declare-fun e!240598 () Bool)

(declare-fun e!240597 () Bool)

(assert (=> b!397998 (= e!240598 (and e!240597 mapRes!16542))))

(declare-fun condMapEmpty!16542 () Bool)

(declare-fun mapDefault!16542 () ValueCell!4630)

