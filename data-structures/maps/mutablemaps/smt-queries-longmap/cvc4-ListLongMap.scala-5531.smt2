; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73002 () Bool)

(assert start!73002)

(declare-fun b_free!13889 () Bool)

(declare-fun b_next!13889 () Bool)

(assert (=> start!73002 (= b_free!13889 (not b_next!13889))))

(declare-fun tp!49172 () Bool)

(declare-fun b_and!22993 () Bool)

(assert (=> start!73002 (= tp!49172 b_and!22993)))

(declare-fun b!847480 () Bool)

(declare-fun e!472924 () Bool)

(declare-fun e!472928 () Bool)

(declare-fun mapRes!25637 () Bool)

(assert (=> b!847480 (= e!472924 (and e!472928 mapRes!25637))))

(declare-fun condMapEmpty!25637 () Bool)

(declare-datatypes ((V!26413 0))(
  ( (V!26414 (val!8060 Int)) )
))
(declare-datatypes ((ValueCell!7573 0))(
  ( (ValueCellFull!7573 (v!10481 V!26413)) (EmptyCell!7573) )
))
(declare-datatypes ((array!48244 0))(
  ( (array!48245 (arr!23149 (Array (_ BitVec 32) ValueCell!7573)) (size!23590 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48244)

(declare-fun mapDefault!25637 () ValueCell!7573)

