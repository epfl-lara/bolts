; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20802 () Bool)

(assert start!20802)

(declare-fun b_free!5443 () Bool)

(declare-fun b_next!5443 () Bool)

(assert (=> start!20802 (= b_free!5443 (not b_next!5443))))

(declare-fun tp!19369 () Bool)

(declare-fun b_and!12207 () Bool)

(assert (=> start!20802 (= tp!19369 b_and!12207)))

(declare-fun b!208266 () Bool)

(declare-fun e!135862 () Bool)

(declare-fun tp_is_empty!5305 () Bool)

(assert (=> b!208266 (= e!135862 tp_is_empty!5305)))

(declare-fun b!208267 () Bool)

(declare-fun e!135864 () Bool)

(declare-fun e!135865 () Bool)

(declare-fun mapRes!9026 () Bool)

(assert (=> b!208267 (= e!135864 (and e!135865 mapRes!9026))))

(declare-fun condMapEmpty!9026 () Bool)

(declare-datatypes ((V!6721 0))(
  ( (V!6722 (val!2697 Int)) )
))
(declare-datatypes ((ValueCell!2309 0))(
  ( (ValueCellFull!2309 (v!4663 V!6721)) (EmptyCell!2309) )
))
(declare-datatypes ((array!9814 0))(
  ( (array!9815 (arr!4657 (Array (_ BitVec 32) ValueCell!2309)) (size!4982 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9814)

(declare-fun mapDefault!9026 () ValueCell!2309)

