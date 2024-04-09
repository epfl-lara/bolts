; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79392 () Bool)

(assert start!79392)

(declare-fun b_free!17551 () Bool)

(declare-fun b_next!17551 () Bool)

(assert (=> start!79392 (= b_free!17551 (not b_next!17551))))

(declare-fun tp!61097 () Bool)

(declare-fun b_and!28679 () Bool)

(assert (=> start!79392 (= tp!61097 b_and!28679)))

(declare-fun b!932131 () Bool)

(declare-fun e!523497 () Bool)

(declare-fun tp_is_empty!20059 () Bool)

(assert (=> b!932131 (= e!523497 tp_is_empty!20059)))

(declare-fun b!932132 () Bool)

(declare-fun e!523501 () Bool)

(declare-fun mapRes!31848 () Bool)

(assert (=> b!932132 (= e!523501 (and e!523497 mapRes!31848))))

(declare-fun condMapEmpty!31848 () Bool)

(declare-datatypes ((V!31711 0))(
  ( (V!31712 (val!10080 Int)) )
))
(declare-datatypes ((ValueCell!9548 0))(
  ( (ValueCellFull!9548 (v!12599 V!31711)) (EmptyCell!9548) )
))
(declare-datatypes ((array!56084 0))(
  ( (array!56085 (arr!26982 (Array (_ BitVec 32) ValueCell!9548)) (size!27442 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56084)

(declare-fun mapDefault!31848 () ValueCell!9548)

