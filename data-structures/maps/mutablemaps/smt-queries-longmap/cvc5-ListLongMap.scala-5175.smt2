; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70060 () Bool)

(assert start!70060)

(declare-fun b_free!12457 () Bool)

(declare-fun b_next!12457 () Bool)

(assert (=> start!70060 (= b_free!12457 (not b_next!12457))))

(declare-fun tp!44086 () Bool)

(declare-fun b_and!21247 () Bool)

(assert (=> start!70060 (= tp!44086 b_and!21247)))

(declare-fun b!813794 () Bool)

(declare-fun e!451053 () Bool)

(declare-fun e!451051 () Bool)

(declare-fun mapRes!22831 () Bool)

(assert (=> b!813794 (= e!451053 (and e!451051 mapRes!22831))))

(declare-fun condMapEmpty!22831 () Bool)

(declare-datatypes ((V!23891 0))(
  ( (V!23892 (val!7131 Int)) )
))
(declare-datatypes ((ValueCell!6668 0))(
  ( (ValueCellFull!6668 (v!9554 V!23891)) (EmptyCell!6668) )
))
(declare-datatypes ((array!44524 0))(
  ( (array!44525 (arr!21318 (Array (_ BitVec 32) ValueCell!6668)) (size!21739 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44524)

(declare-fun mapDefault!22831 () ValueCell!6668)

