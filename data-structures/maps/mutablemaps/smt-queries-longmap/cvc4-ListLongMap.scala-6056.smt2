; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78414 () Bool)

(assert start!78414)

(declare-fun b_free!16751 () Bool)

(declare-fun b_next!16751 () Bool)

(assert (=> start!78414 (= b_free!16751 (not b_next!16751))))

(declare-fun tp!58541 () Bool)

(declare-fun b_and!27387 () Bool)

(assert (=> start!78414 (= tp!58541 b_and!27387)))

(declare-fun mapNonEmpty!30492 () Bool)

(declare-fun mapRes!30492 () Bool)

(declare-fun tp!58542 () Bool)

(declare-fun e!512917 () Bool)

(assert (=> mapNonEmpty!30492 (= mapRes!30492 (and tp!58542 e!512917))))

(declare-datatypes ((V!30523 0))(
  ( (V!30524 (val!9635 Int)) )
))
(declare-datatypes ((ValueCell!9103 0))(
  ( (ValueCellFull!9103 (v!12151 V!30523)) (EmptyCell!9103) )
))
(declare-datatypes ((array!54346 0))(
  ( (array!54347 (arr!26120 (Array (_ BitVec 32) ValueCell!9103)) (size!26580 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54346)

(declare-fun mapKey!30492 () (_ BitVec 32))

(declare-fun mapRest!30492 () (Array (_ BitVec 32) ValueCell!9103))

(declare-fun mapValue!30492 () ValueCell!9103)

(assert (=> mapNonEmpty!30492 (= (arr!26120 _values!1152) (store mapRest!30492 mapKey!30492 mapValue!30492))))

(declare-fun b!914258 () Bool)

(declare-fun e!512915 () Bool)

(declare-fun e!512910 () Bool)

(assert (=> b!914258 (= e!512915 (and e!512910 mapRes!30492))))

(declare-fun condMapEmpty!30492 () Bool)

(declare-fun mapDefault!30492 () ValueCell!9103)

