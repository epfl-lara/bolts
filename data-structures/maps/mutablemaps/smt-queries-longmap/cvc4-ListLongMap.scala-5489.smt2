; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72750 () Bool)

(assert start!72750)

(declare-fun mapNonEmpty!25259 () Bool)

(declare-fun mapRes!25259 () Bool)

(declare-fun tp!48578 () Bool)

(declare-fun e!470984 () Bool)

(assert (=> mapNonEmpty!25259 (= mapRes!25259 (and tp!48578 e!470984))))

(declare-datatypes ((V!26077 0))(
  ( (V!26078 (val!7934 Int)) )
))
(declare-datatypes ((ValueCell!7447 0))(
  ( (ValueCellFull!7447 (v!10355 V!26077)) (EmptyCell!7447) )
))
(declare-fun mapValue!25259 () ValueCell!7447)

(declare-fun mapKey!25259 () (_ BitVec 32))

(declare-fun mapRest!25259 () (Array (_ BitVec 32) ValueCell!7447))

(declare-datatypes ((array!47770 0))(
  ( (array!47771 (arr!22912 (Array (_ BitVec 32) ValueCell!7447)) (size!23353 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47770)

(assert (=> mapNonEmpty!25259 (= (arr!22912 _values!688) (store mapRest!25259 mapKey!25259 mapValue!25259))))

(declare-fun b!843896 () Bool)

(declare-fun e!470982 () Bool)

(declare-fun e!470981 () Bool)

(assert (=> b!843896 (= e!470982 (and e!470981 mapRes!25259))))

(declare-fun condMapEmpty!25259 () Bool)

(declare-fun mapDefault!25259 () ValueCell!7447)

