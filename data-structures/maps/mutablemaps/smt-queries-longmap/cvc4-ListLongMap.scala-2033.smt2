; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35378 () Bool)

(assert start!35378)

(declare-fun b!353913 () Bool)

(declare-fun e!216860 () Bool)

(declare-fun tp_is_empty!7823 () Bool)

(assert (=> b!353913 (= e!216860 tp_is_empty!7823)))

(declare-fun mapNonEmpty!13242 () Bool)

(declare-fun mapRes!13242 () Bool)

(declare-fun tp!27138 () Bool)

(declare-fun e!216857 () Bool)

(assert (=> mapNonEmpty!13242 (= mapRes!13242 (and tp!27138 e!216857))))

(declare-datatypes ((V!11407 0))(
  ( (V!11408 (val!3956 Int)) )
))
(declare-datatypes ((ValueCell!3568 0))(
  ( (ValueCellFull!3568 (v!6146 V!11407)) (EmptyCell!3568) )
))
(declare-fun mapRest!13242 () (Array (_ BitVec 32) ValueCell!3568))

(declare-fun mapKey!13242 () (_ BitVec 32))

(declare-fun mapValue!13242 () ValueCell!3568)

(declare-datatypes ((array!19205 0))(
  ( (array!19206 (arr!9093 (Array (_ BitVec 32) ValueCell!3568)) (size!9445 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19205)

(assert (=> mapNonEmpty!13242 (= (arr!9093 _values!1208) (store mapRest!13242 mapKey!13242 mapValue!13242))))

(declare-fun b!353914 () Bool)

(assert (=> b!353914 (= e!216857 tp_is_empty!7823)))

(declare-fun mapIsEmpty!13242 () Bool)

(assert (=> mapIsEmpty!13242 mapRes!13242))

(declare-fun b!353915 () Bool)

(declare-fun e!216858 () Bool)

(assert (=> b!353915 (= e!216858 (and e!216860 mapRes!13242))))

(declare-fun condMapEmpty!13242 () Bool)

(declare-fun mapDefault!13242 () ValueCell!3568)

