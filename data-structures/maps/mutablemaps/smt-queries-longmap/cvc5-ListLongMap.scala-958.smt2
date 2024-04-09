; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20856 () Bool)

(assert start!20856)

(declare-fun b_free!5497 () Bool)

(declare-fun b_next!5497 () Bool)

(assert (=> start!20856 (= b_free!5497 (not b_next!5497))))

(declare-fun tp!19531 () Bool)

(declare-fun b_and!12261 () Bool)

(assert (=> start!20856 (= tp!19531 b_and!12261)))

(declare-fun b!209076 () Bool)

(declare-fun e!136267 () Bool)

(declare-fun e!136269 () Bool)

(declare-fun mapRes!9107 () Bool)

(assert (=> b!209076 (= e!136267 (and e!136269 mapRes!9107))))

(declare-fun condMapEmpty!9107 () Bool)

(declare-datatypes ((V!6793 0))(
  ( (V!6794 (val!2724 Int)) )
))
(declare-datatypes ((ValueCell!2336 0))(
  ( (ValueCellFull!2336 (v!4690 V!6793)) (EmptyCell!2336) )
))
(declare-datatypes ((array!9918 0))(
  ( (array!9919 (arr!4709 (Array (_ BitVec 32) ValueCell!2336)) (size!5034 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9918)

(declare-fun mapDefault!9107 () ValueCell!2336)

