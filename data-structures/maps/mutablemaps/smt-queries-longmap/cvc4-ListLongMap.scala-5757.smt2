; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74402 () Bool)

(assert start!74402)

(declare-fun b_free!15137 () Bool)

(declare-fun b_next!15137 () Bool)

(assert (=> start!74402 (= b_free!15137 (not b_next!15137))))

(declare-fun tp!53086 () Bool)

(declare-fun b_and!24931 () Bool)

(assert (=> start!74402 (= tp!53086 b_and!24931)))

(declare-fun b!875452 () Bool)

(declare-fun e!487397 () Bool)

(declare-fun e!487395 () Bool)

(declare-fun mapRes!27680 () Bool)

(assert (=> b!875452 (= e!487397 (and e!487395 mapRes!27680))))

(declare-fun condMapEmpty!27680 () Bool)

(declare-datatypes ((V!28221 0))(
  ( (V!28222 (val!8738 Int)) )
))
(declare-datatypes ((ValueCell!8251 0))(
  ( (ValueCellFull!8251 (v!11163 V!28221)) (EmptyCell!8251) )
))
(declare-datatypes ((array!50872 0))(
  ( (array!50873 (arr!24460 (Array (_ BitVec 32) ValueCell!8251)) (size!24901 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50872)

(declare-fun mapDefault!27680 () ValueCell!8251)

