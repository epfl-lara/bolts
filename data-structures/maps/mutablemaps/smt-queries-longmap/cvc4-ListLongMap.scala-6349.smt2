; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81862 () Bool)

(assert start!81862)

(declare-fun b_free!18329 () Bool)

(declare-fun b_next!18329 () Bool)

(assert (=> start!81862 (= b_free!18329 (not b_next!18329))))

(declare-fun tp!63687 () Bool)

(declare-fun b_and!29833 () Bool)

(assert (=> start!81862 (= tp!63687 b_and!29833)))

(declare-fun b!954169 () Bool)

(declare-fun e!537603 () Bool)

(declare-fun e!537604 () Bool)

(declare-fun mapRes!33271 () Bool)

(assert (=> b!954169 (= e!537603 (and e!537604 mapRes!33271))))

(declare-fun condMapEmpty!33271 () Bool)

(declare-datatypes ((V!32813 0))(
  ( (V!32814 (val!10487 Int)) )
))
(declare-datatypes ((ValueCell!9955 0))(
  ( (ValueCellFull!9955 (v!13042 V!32813)) (EmptyCell!9955) )
))
(declare-datatypes ((array!57873 0))(
  ( (array!57874 (arr!27812 (Array (_ BitVec 32) ValueCell!9955)) (size!28292 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57873)

(declare-fun mapDefault!33271 () ValueCell!9955)

