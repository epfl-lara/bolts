; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20170 () Bool)

(assert start!20170)

(declare-fun b_free!4817 () Bool)

(declare-fun b_next!4817 () Bool)

(assert (=> start!20170 (= b_free!4817 (not b_next!4817))))

(declare-fun tp!17483 () Bool)

(declare-fun b_and!11581 () Bool)

(assert (=> start!20170 (= tp!17483 b_and!11581)))

(declare-fun mapIsEmpty!8078 () Bool)

(declare-fun mapRes!8078 () Bool)

(assert (=> mapIsEmpty!8078 mapRes!8078))

(declare-fun mapNonEmpty!8078 () Bool)

(declare-fun tp!17482 () Bool)

(declare-fun e!130086 () Bool)

(assert (=> mapNonEmpty!8078 (= mapRes!8078 (and tp!17482 e!130086))))

(declare-fun mapKey!8078 () (_ BitVec 32))

(declare-datatypes ((V!5877 0))(
  ( (V!5878 (val!2381 Int)) )
))
(declare-datatypes ((ValueCell!1993 0))(
  ( (ValueCellFull!1993 (v!4347 V!5877)) (EmptyCell!1993) )
))
(declare-fun mapRest!8078 () (Array (_ BitVec 32) ValueCell!1993))

(declare-fun mapValue!8078 () ValueCell!1993)

(declare-datatypes ((array!8598 0))(
  ( (array!8599 (arr!4049 (Array (_ BitVec 32) ValueCell!1993)) (size!4374 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8598)

(assert (=> mapNonEmpty!8078 (= (arr!4049 _values!649) (store mapRest!8078 mapKey!8078 mapValue!8078))))

(declare-fun res!93638 () Bool)

(declare-fun e!130089 () Bool)

(assert (=> start!20170 (=> (not res!93638) (not e!130089))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20170 (= res!93638 (validMask!0 mask!1149))))

(assert (=> start!20170 e!130089))

(declare-fun e!130088 () Bool)

(declare-fun array_inv!2635 (array!8598) Bool)

(assert (=> start!20170 (and (array_inv!2635 _values!649) e!130088)))

(assert (=> start!20170 true))

(declare-fun tp_is_empty!4673 () Bool)

(assert (=> start!20170 tp_is_empty!4673))

(declare-datatypes ((array!8600 0))(
  ( (array!8601 (arr!4050 (Array (_ BitVec 32) (_ BitVec 64))) (size!4375 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8600)

(declare-fun array_inv!2636 (array!8600) Bool)

(assert (=> start!20170 (array_inv!2636 _keys!825)))

(assert (=> start!20170 tp!17483))

(declare-fun b!197760 () Bool)

(declare-fun e!130087 () Bool)

(assert (=> b!197760 (= e!130088 (and e!130087 mapRes!8078))))

(declare-fun condMapEmpty!8078 () Bool)

(declare-fun mapDefault!8078 () ValueCell!1993)

