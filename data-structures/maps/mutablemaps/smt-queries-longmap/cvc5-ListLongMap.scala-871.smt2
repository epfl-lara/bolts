; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20334 () Bool)

(assert start!20334)

(declare-fun b_free!4981 () Bool)

(declare-fun b_next!4981 () Bool)

(assert (=> start!20334 (= b_free!4981 (not b_next!4981))))

(declare-fun tp!17975 () Bool)

(declare-fun b_and!11745 () Bool)

(assert (=> start!20334 (= tp!17975 b_and!11745)))

(declare-fun mapIsEmpty!8324 () Bool)

(declare-fun mapRes!8324 () Bool)

(assert (=> mapIsEmpty!8324 mapRes!8324))

(declare-fun mapNonEmpty!8324 () Bool)

(declare-fun tp!17974 () Bool)

(declare-fun e!131341 () Bool)

(assert (=> mapNonEmpty!8324 (= mapRes!8324 (and tp!17974 e!131341))))

(declare-datatypes ((V!6097 0))(
  ( (V!6098 (val!2463 Int)) )
))
(declare-datatypes ((ValueCell!2075 0))(
  ( (ValueCellFull!2075 (v!4429 V!6097)) (EmptyCell!2075) )
))
(declare-fun mapValue!8324 () ValueCell!2075)

(declare-fun mapKey!8324 () (_ BitVec 32))

(declare-datatypes ((array!8906 0))(
  ( (array!8907 (arr!4203 (Array (_ BitVec 32) ValueCell!2075)) (size!4528 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8906)

(declare-fun mapRest!8324 () (Array (_ BitVec 32) ValueCell!2075))

(assert (=> mapNonEmpty!8324 (= (arr!4203 _values!649) (store mapRest!8324 mapKey!8324 mapValue!8324))))

(declare-fun b!200249 () Bool)

(declare-fun e!131338 () Bool)

(declare-fun e!131336 () Bool)

(assert (=> b!200249 (= e!131338 (and e!131336 mapRes!8324))))

(declare-fun condMapEmpty!8324 () Bool)

(declare-fun mapDefault!8324 () ValueCell!2075)

