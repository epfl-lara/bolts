; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20906 () Bool)

(assert start!20906)

(declare-fun b_free!5527 () Bool)

(declare-fun b_next!5527 () Bool)

(assert (=> start!20906 (= b_free!5527 (not b_next!5527))))

(declare-fun tp!19624 () Bool)

(declare-fun b_and!12303 () Bool)

(assert (=> start!20906 (= tp!19624 b_and!12303)))

(declare-fun b!209725 () Bool)

(declare-fun e!136625 () Bool)

(declare-fun e!136620 () Bool)

(declare-fun mapRes!9155 () Bool)

(assert (=> b!209725 (= e!136625 (and e!136620 mapRes!9155))))

(declare-fun condMapEmpty!9155 () Bool)

(declare-datatypes ((V!6833 0))(
  ( (V!6834 (val!2739 Int)) )
))
(declare-datatypes ((ValueCell!2351 0))(
  ( (ValueCellFull!2351 (v!4709 V!6833)) (EmptyCell!2351) )
))
(declare-datatypes ((array!9976 0))(
  ( (array!9977 (arr!4737 (Array (_ BitVec 32) ValueCell!2351)) (size!5062 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9976)

(declare-fun mapDefault!9155 () ValueCell!2351)

