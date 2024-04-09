; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70340 () Bool)

(assert start!70340)

(declare-fun b_free!12691 () Bool)

(declare-fun b_next!12691 () Bool)

(assert (=> start!70340 (= b_free!12691 (not b_next!12691))))

(declare-fun tp!44797 () Bool)

(declare-fun b_and!21509 () Bool)

(assert (=> start!70340 (= tp!44797 b_and!21509)))

(declare-fun b!816762 () Bool)

(declare-fun e!453184 () Bool)

(declare-fun e!453185 () Bool)

(declare-fun mapRes!23191 () Bool)

(assert (=> b!816762 (= e!453184 (and e!453185 mapRes!23191))))

(declare-fun condMapEmpty!23191 () Bool)

(declare-datatypes ((V!24203 0))(
  ( (V!24204 (val!7248 Int)) )
))
(declare-datatypes ((ValueCell!6785 0))(
  ( (ValueCellFull!6785 (v!9672 V!24203)) (EmptyCell!6785) )
))
(declare-datatypes ((array!44978 0))(
  ( (array!44979 (arr!21542 (Array (_ BitVec 32) ValueCell!6785)) (size!21963 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44978)

(declare-fun mapDefault!23191 () ValueCell!6785)

