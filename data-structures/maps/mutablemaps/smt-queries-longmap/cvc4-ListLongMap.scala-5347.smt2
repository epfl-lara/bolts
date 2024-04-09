; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71490 () Bool)

(assert start!71490)

(declare-fun b_free!13493 () Bool)

(declare-fun b_next!13493 () Bool)

(assert (=> start!71490 (= b_free!13493 (not b_next!13493))))

(declare-fun tp!47262 () Bool)

(declare-fun b_and!22529 () Bool)

(assert (=> start!71490 (= tp!47262 b_and!22529)))

(declare-fun b!829804 () Bool)

(declare-fun e!462648 () Bool)

(declare-fun e!462644 () Bool)

(assert (=> b!829804 (= e!462648 e!462644)))

(declare-fun res!565338 () Bool)

(assert (=> b!829804 (=> res!565338 e!462644)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!829804 (= res!565338 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!24454 () Bool)

(declare-fun mapRes!24454 () Bool)

(declare-fun tp!47263 () Bool)

(declare-fun e!462643 () Bool)

(assert (=> mapNonEmpty!24454 (= mapRes!24454 (and tp!47263 e!462643))))

(declare-fun mapKey!24454 () (_ BitVec 32))

(declare-datatypes ((V!25271 0))(
  ( (V!25272 (val!7649 Int)) )
))
(declare-datatypes ((ValueCell!7186 0))(
  ( (ValueCellFull!7186 (v!10086 V!25271)) (EmptyCell!7186) )
))
(declare-datatypes ((array!46550 0))(
  ( (array!46551 (arr!22308 (Array (_ BitVec 32) ValueCell!7186)) (size!22729 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46550)

(declare-fun mapRest!24454 () (Array (_ BitVec 32) ValueCell!7186))

(declare-fun mapValue!24454 () ValueCell!7186)

(assert (=> mapNonEmpty!24454 (= (arr!22308 _values!788) (store mapRest!24454 mapKey!24454 mapValue!24454))))

(declare-fun b!829805 () Bool)

(declare-fun tp_is_empty!15203 () Bool)

(assert (=> b!829805 (= e!462643 tp_is_empty!15203)))

(declare-fun b!829806 () Bool)

(declare-fun e!462642 () Bool)

(declare-fun e!462645 () Bool)

(assert (=> b!829806 (= e!462642 (and e!462645 mapRes!24454))))

(declare-fun condMapEmpty!24454 () Bool)

(declare-fun mapDefault!24454 () ValueCell!7186)

