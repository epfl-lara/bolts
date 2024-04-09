; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70338 () Bool)

(assert start!70338)

(declare-fun b_free!12689 () Bool)

(declare-fun b_next!12689 () Bool)

(assert (=> start!70338 (= b_free!12689 (not b_next!12689))))

(declare-fun tp!44791 () Bool)

(declare-fun b_and!21507 () Bool)

(assert (=> start!70338 (= tp!44791 b_and!21507)))

(declare-fun b!816736 () Bool)

(declare-fun e!453163 () Bool)

(declare-fun e!453167 () Bool)

(declare-fun mapRes!23188 () Bool)

(assert (=> b!816736 (= e!453163 (and e!453167 mapRes!23188))))

(declare-fun condMapEmpty!23188 () Bool)

(declare-datatypes ((V!24199 0))(
  ( (V!24200 (val!7247 Int)) )
))
(declare-datatypes ((ValueCell!6784 0))(
  ( (ValueCellFull!6784 (v!9671 V!24199)) (EmptyCell!6784) )
))
(declare-datatypes ((array!44976 0))(
  ( (array!44977 (arr!21541 (Array (_ BitVec 32) ValueCell!6784)) (size!21962 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44976)

(declare-fun mapDefault!23188 () ValueCell!6784)

