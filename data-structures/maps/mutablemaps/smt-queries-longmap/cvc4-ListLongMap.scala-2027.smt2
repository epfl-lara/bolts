; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35300 () Bool)

(assert start!35300)

(declare-fun mapNonEmpty!13176 () Bool)

(declare-fun mapRes!13176 () Bool)

(declare-fun tp!27072 () Bool)

(declare-fun e!216487 () Bool)

(assert (=> mapNonEmpty!13176 (= mapRes!13176 (and tp!27072 e!216487))))

(declare-datatypes ((V!11359 0))(
  ( (V!11360 (val!3938 Int)) )
))
(declare-datatypes ((ValueCell!3550 0))(
  ( (ValueCellFull!3550 (v!6127 V!11359)) (EmptyCell!3550) )
))
(declare-fun mapValue!13176 () ValueCell!3550)

(declare-fun mapKey!13176 () (_ BitVec 32))

(declare-datatypes ((array!19125 0))(
  ( (array!19126 (arr!9057 (Array (_ BitVec 32) ValueCell!3550)) (size!9409 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19125)

(declare-fun mapRest!13176 () (Array (_ BitVec 32) ValueCell!3550))

(assert (=> mapNonEmpty!13176 (= (arr!9057 _values!1208) (store mapRest!13176 mapKey!13176 mapValue!13176))))

(declare-fun mapIsEmpty!13176 () Bool)

(assert (=> mapIsEmpty!13176 mapRes!13176))

(declare-fun b!353420 () Bool)

(declare-fun e!216486 () Bool)

(declare-datatypes ((array!19127 0))(
  ( (array!19128 (arr!9058 (Array (_ BitVec 32) (_ BitVec 64))) (size!9410 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19127)

(assert (=> b!353420 (= e!216486 (and (bvsle #b00000000000000000000000000000000 (size!9410 _keys!1456)) (bvsge (size!9410 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353421 () Bool)

(declare-fun e!216489 () Bool)

(declare-fun tp_is_empty!7787 () Bool)

(assert (=> b!353421 (= e!216489 tp_is_empty!7787)))

(declare-fun b!353422 () Bool)

(declare-fun e!216488 () Bool)

(assert (=> b!353422 (= e!216488 (and e!216489 mapRes!13176))))

(declare-fun condMapEmpty!13176 () Bool)

(declare-fun mapDefault!13176 () ValueCell!3550)

