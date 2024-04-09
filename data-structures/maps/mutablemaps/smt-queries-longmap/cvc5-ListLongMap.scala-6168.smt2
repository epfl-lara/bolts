; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79144 () Bool)

(assert start!79144)

(declare-fun b_free!17329 () Bool)

(declare-fun b_next!17329 () Bool)

(assert (=> start!79144 (= b_free!17329 (not b_next!17329))))

(declare-fun tp!60429 () Bool)

(declare-fun b_and!28413 () Bool)

(assert (=> start!79144 (= tp!60429 b_and!28413)))

(declare-fun res!625325 () Bool)

(declare-fun e!521334 () Bool)

(assert (=> start!79144 (=> (not res!625325) (not e!521334))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79144 (= res!625325 (validMask!0 mask!1881))))

(assert (=> start!79144 e!521334))

(assert (=> start!79144 true))

(declare-datatypes ((V!31415 0))(
  ( (V!31416 (val!9969 Int)) )
))
(declare-datatypes ((ValueCell!9437 0))(
  ( (ValueCellFull!9437 (v!12487 V!31415)) (EmptyCell!9437) )
))
(declare-datatypes ((array!55650 0))(
  ( (array!55651 (arr!26766 (Array (_ BitVec 32) ValueCell!9437)) (size!27226 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55650)

(declare-fun e!521336 () Bool)

(declare-fun array_inv!20834 (array!55650) Bool)

(assert (=> start!79144 (and (array_inv!20834 _values!1231) e!521336)))

(assert (=> start!79144 tp!60429))

(declare-datatypes ((array!55652 0))(
  ( (array!55653 (arr!26767 (Array (_ BitVec 32) (_ BitVec 64))) (size!27227 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55652)

(declare-fun array_inv!20835 (array!55652) Bool)

(assert (=> start!79144 (array_inv!20835 _keys!1487)))

(declare-fun tp_is_empty!19837 () Bool)

(assert (=> start!79144 tp_is_empty!19837))

(declare-fun b!928443 () Bool)

(declare-fun e!521333 () Bool)

(declare-fun mapRes!31512 () Bool)

(assert (=> b!928443 (= e!521336 (and e!521333 mapRes!31512))))

(declare-fun condMapEmpty!31512 () Bool)

(declare-fun mapDefault!31512 () ValueCell!9437)

