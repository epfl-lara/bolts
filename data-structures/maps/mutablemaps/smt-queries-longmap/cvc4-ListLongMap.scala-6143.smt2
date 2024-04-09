; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78998 () Bool)

(assert start!78998)

(declare-fun b_free!17183 () Bool)

(declare-fun b_next!17183 () Bool)

(assert (=> start!78998 (= b_free!17183 (not b_next!17183))))

(declare-fun tp!59990 () Bool)

(declare-fun b_and!28121 () Bool)

(assert (=> start!78998 (= tp!59990 b_and!28121)))

(declare-fun b!924031 () Bool)

(declare-datatypes ((Unit!31199 0))(
  ( (Unit!31200) )
))
(declare-fun e!518547 () Unit!31199)

(declare-fun Unit!31201 () Unit!31199)

(assert (=> b!924031 (= e!518547 Unit!31201)))

(declare-fun mapNonEmpty!31293 () Bool)

(declare-fun mapRes!31293 () Bool)

(declare-fun tp!59991 () Bool)

(declare-fun e!518546 () Bool)

(assert (=> mapNonEmpty!31293 (= mapRes!31293 (and tp!59991 e!518546))))

(declare-fun mapKey!31293 () (_ BitVec 32))

(declare-datatypes ((V!31219 0))(
  ( (V!31220 (val!9896 Int)) )
))
(declare-datatypes ((ValueCell!9364 0))(
  ( (ValueCellFull!9364 (v!12414 V!31219)) (EmptyCell!9364) )
))
(declare-fun mapValue!31293 () ValueCell!9364)

(declare-datatypes ((array!55368 0))(
  ( (array!55369 (arr!26625 (Array (_ BitVec 32) ValueCell!9364)) (size!27085 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55368)

(declare-fun mapRest!31293 () (Array (_ BitVec 32) ValueCell!9364))

(assert (=> mapNonEmpty!31293 (= (arr!26625 _values!1231) (store mapRest!31293 mapKey!31293 mapValue!31293))))

(declare-fun b!924032 () Bool)

(declare-fun e!518552 () Bool)

(declare-fun e!518551 () Bool)

(assert (=> b!924032 (= e!518552 (and e!518551 mapRes!31293))))

(declare-fun condMapEmpty!31293 () Bool)

(declare-fun mapDefault!31293 () ValueCell!9364)

