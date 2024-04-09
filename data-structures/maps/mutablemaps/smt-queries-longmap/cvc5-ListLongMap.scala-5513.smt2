; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72890 () Bool)

(assert start!72890)

(declare-fun b_free!13777 () Bool)

(declare-fun b_next!13777 () Bool)

(assert (=> start!72890 (= b_free!13777 (not b_next!13777))))

(declare-fun tp!48835 () Bool)

(declare-fun b_and!22881 () Bool)

(assert (=> start!72890 (= tp!48835 b_and!22881)))

(declare-fun mapNonEmpty!25469 () Bool)

(declare-fun mapRes!25469 () Bool)

(declare-fun tp!48836 () Bool)

(declare-fun e!472033 () Bool)

(assert (=> mapNonEmpty!25469 (= mapRes!25469 (and tp!48836 e!472033))))

(declare-fun mapKey!25469 () (_ BitVec 32))

(declare-datatypes ((V!26265 0))(
  ( (V!26266 (val!8004 Int)) )
))
(declare-datatypes ((ValueCell!7517 0))(
  ( (ValueCellFull!7517 (v!10425 V!26265)) (EmptyCell!7517) )
))
(declare-fun mapRest!25469 () (Array (_ BitVec 32) ValueCell!7517))

(declare-fun mapValue!25469 () ValueCell!7517)

(declare-datatypes ((array!48028 0))(
  ( (array!48029 (arr!23041 (Array (_ BitVec 32) ValueCell!7517)) (size!23482 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48028)

(assert (=> mapNonEmpty!25469 (= (arr!23041 _values!688) (store mapRest!25469 mapKey!25469 mapValue!25469))))

(declare-fun b!845554 () Bool)

(declare-fun e!472034 () Bool)

(declare-fun e!472031 () Bool)

(assert (=> b!845554 (= e!472034 (and e!472031 mapRes!25469))))

(declare-fun condMapEmpty!25469 () Bool)

(declare-fun mapDefault!25469 () ValueCell!7517)

