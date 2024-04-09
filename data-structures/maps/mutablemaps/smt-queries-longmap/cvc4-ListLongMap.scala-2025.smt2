; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35274 () Bool)

(assert start!35274)

(declare-fun mapNonEmpty!13152 () Bool)

(declare-fun mapRes!13152 () Bool)

(declare-fun tp!27048 () Bool)

(declare-fun e!216374 () Bool)

(assert (=> mapNonEmpty!13152 (= mapRes!13152 (and tp!27048 e!216374))))

(declare-datatypes ((V!11343 0))(
  ( (V!11344 (val!3932 Int)) )
))
(declare-datatypes ((ValueCell!3544 0))(
  ( (ValueCellFull!3544 (v!6121 V!11343)) (EmptyCell!3544) )
))
(declare-fun mapRest!13152 () (Array (_ BitVec 32) ValueCell!3544))

(declare-fun mapValue!13152 () ValueCell!3544)

(declare-datatypes ((array!19101 0))(
  ( (array!19102 (arr!9047 (Array (_ BitVec 32) ValueCell!3544)) (size!9399 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19101)

(declare-fun mapKey!13152 () (_ BitVec 32))

(assert (=> mapNonEmpty!13152 (= (arr!9047 _values!1208) (store mapRest!13152 mapKey!13152 mapValue!13152))))

(declare-fun mapIsEmpty!13152 () Bool)

(assert (=> mapIsEmpty!13152 mapRes!13152))

(declare-fun b!353286 () Bool)

(declare-fun e!216376 () Bool)

(declare-fun tp_is_empty!7775 () Bool)

(assert (=> b!353286 (= e!216376 tp_is_empty!7775)))

(declare-fun b!353287 () Bool)

(declare-fun e!216375 () Bool)

(assert (=> b!353287 (= e!216375 (and e!216376 mapRes!13152))))

(declare-fun condMapEmpty!13152 () Bool)

(declare-fun mapDefault!13152 () ValueCell!3544)

