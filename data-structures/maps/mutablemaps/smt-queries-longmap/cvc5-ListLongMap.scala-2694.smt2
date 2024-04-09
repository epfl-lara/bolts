; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39990 () Bool)

(assert start!39990)

(declare-fun b_free!10249 () Bool)

(declare-fun b_next!10249 () Bool)

(assert (=> start!39990 (= b_free!10249 (not b_next!10249))))

(declare-fun tp!36275 () Bool)

(declare-fun b_and!18175 () Bool)

(assert (=> start!39990 (= tp!36275 b_and!18175)))

(declare-fun b!434725 () Bool)

(declare-fun e!256889 () Bool)

(declare-fun e!256888 () Bool)

(declare-fun mapRes!18723 () Bool)

(assert (=> b!434725 (= e!256889 (and e!256888 mapRes!18723))))

(declare-fun condMapEmpty!18723 () Bool)

(declare-datatypes ((V!16307 0))(
  ( (V!16308 (val!5745 Int)) )
))
(declare-datatypes ((ValueCell!5357 0))(
  ( (ValueCellFull!5357 (v!7988 V!16307)) (EmptyCell!5357) )
))
(declare-datatypes ((array!26609 0))(
  ( (array!26610 (arr!12751 (Array (_ BitVec 32) ValueCell!5357)) (size!13103 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26609)

(declare-fun mapDefault!18723 () ValueCell!5357)

