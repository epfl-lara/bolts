; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70536 () Bool)

(assert start!70536)

(declare-fun b_free!12839 () Bool)

(declare-fun b_next!12839 () Bool)

(assert (=> start!70536 (= b_free!12839 (not b_next!12839))))

(declare-fun tp!45249 () Bool)

(declare-fun b_and!21687 () Bool)

(assert (=> start!70536 (= tp!45249 b_and!21687)))

(declare-fun b!818925 () Bool)

(declare-fun e!454744 () Bool)

(declare-fun e!454748 () Bool)

(declare-fun mapRes!23422 () Bool)

(assert (=> b!818925 (= e!454744 (and e!454748 mapRes!23422))))

(declare-fun condMapEmpty!23422 () Bool)

(declare-datatypes ((V!24399 0))(
  ( (V!24400 (val!7322 Int)) )
))
(declare-datatypes ((ValueCell!6859 0))(
  ( (ValueCellFull!6859 (v!9747 V!24399)) (EmptyCell!6859) )
))
(declare-datatypes ((array!45270 0))(
  ( (array!45271 (arr!21685 (Array (_ BitVec 32) ValueCell!6859)) (size!22106 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45270)

(declare-fun mapDefault!23422 () ValueCell!6859)

