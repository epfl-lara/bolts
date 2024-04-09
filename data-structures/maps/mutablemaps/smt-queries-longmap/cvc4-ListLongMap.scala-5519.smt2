; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72930 () Bool)

(assert start!72930)

(declare-fun b_free!13817 () Bool)

(declare-fun b_next!13817 () Bool)

(assert (=> start!72930 (= b_free!13817 (not b_next!13817))))

(declare-fun tp!48956 () Bool)

(declare-fun b_and!22921 () Bool)

(assert (=> start!72930 (= tp!48956 b_and!22921)))

(declare-fun b!846214 () Bool)

(declare-fun e!472335 () Bool)

(declare-fun e!472334 () Bool)

(declare-fun mapRes!25529 () Bool)

(assert (=> b!846214 (= e!472335 (and e!472334 mapRes!25529))))

(declare-fun condMapEmpty!25529 () Bool)

(declare-datatypes ((V!26317 0))(
  ( (V!26318 (val!8024 Int)) )
))
(declare-datatypes ((ValueCell!7537 0))(
  ( (ValueCellFull!7537 (v!10445 V!26317)) (EmptyCell!7537) )
))
(declare-datatypes ((array!48106 0))(
  ( (array!48107 (arr!23080 (Array (_ BitVec 32) ValueCell!7537)) (size!23521 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48106)

(declare-fun mapDefault!25529 () ValueCell!7537)

