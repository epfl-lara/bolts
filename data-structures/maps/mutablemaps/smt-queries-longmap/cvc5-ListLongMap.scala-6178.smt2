; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79204 () Bool)

(assert start!79204)

(declare-fun b_free!17389 () Bool)

(declare-fun b_next!17389 () Bool)

(assert (=> start!79204 (= b_free!17389 (not b_next!17389))))

(declare-fun tp!60609 () Bool)

(declare-fun b_and!28473 () Bool)

(assert (=> start!79204 (= tp!60609 b_and!28473)))

(declare-fun mapIsEmpty!31602 () Bool)

(declare-fun mapRes!31602 () Bool)

(assert (=> mapIsEmpty!31602 mapRes!31602))

(declare-fun res!625896 () Bool)

(declare-fun e!521877 () Bool)

(assert (=> start!79204 (=> (not res!625896) (not e!521877))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79204 (= res!625896 (validMask!0 mask!1881))))

(assert (=> start!79204 e!521877))

(assert (=> start!79204 true))

(declare-fun tp_is_empty!19897 () Bool)

(assert (=> start!79204 tp_is_empty!19897))

(declare-datatypes ((V!31495 0))(
  ( (V!31496 (val!9999 Int)) )
))
(declare-datatypes ((ValueCell!9467 0))(
  ( (ValueCellFull!9467 (v!12517 V!31495)) (EmptyCell!9467) )
))
(declare-datatypes ((array!55766 0))(
  ( (array!55767 (arr!26824 (Array (_ BitVec 32) ValueCell!9467)) (size!27284 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55766)

(declare-fun e!521872 () Bool)

(declare-fun array_inv!20870 (array!55766) Bool)

(assert (=> start!79204 (and (array_inv!20870 _values!1231) e!521872)))

(assert (=> start!79204 tp!60609))

(declare-datatypes ((array!55768 0))(
  ( (array!55769 (arr!26825 (Array (_ BitVec 32) (_ BitVec 64))) (size!27285 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55768)

(declare-fun array_inv!20871 (array!55768) Bool)

(assert (=> start!79204 (array_inv!20871 _keys!1487)))

(declare-fun b!929284 () Bool)

(declare-fun e!521874 () Bool)

(assert (=> b!929284 (= e!521872 (and e!521874 mapRes!31602))))

(declare-fun condMapEmpty!31602 () Bool)

(declare-fun mapDefault!31602 () ValueCell!9467)

