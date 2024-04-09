; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73496 () Bool)

(assert start!73496)

(declare-fun b_free!14383 () Bool)

(declare-fun b_next!14383 () Bool)

(assert (=> start!73496 (= b_free!14383 (not b_next!14383))))

(declare-fun tp!50654 () Bool)

(declare-fun b_and!23763 () Bool)

(assert (=> start!73496 (= tp!50654 b_and!23763)))

(declare-fun b!857894 () Bool)

(declare-fun e!478155 () Bool)

(declare-fun e!478158 () Bool)

(declare-fun mapRes!26378 () Bool)

(assert (=> b!857894 (= e!478155 (and e!478158 mapRes!26378))))

(declare-fun condMapEmpty!26378 () Bool)

(declare-datatypes ((V!27073 0))(
  ( (V!27074 (val!8307 Int)) )
))
(declare-datatypes ((ValueCell!7820 0))(
  ( (ValueCellFull!7820 (v!10728 V!27073)) (EmptyCell!7820) )
))
(declare-datatypes ((array!49200 0))(
  ( (array!49201 (arr!23627 (Array (_ BitVec 32) ValueCell!7820)) (size!24068 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49200)

(declare-fun mapDefault!26378 () ValueCell!7820)

