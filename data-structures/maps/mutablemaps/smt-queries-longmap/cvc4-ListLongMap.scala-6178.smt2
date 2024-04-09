; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79208 () Bool)

(assert start!79208)

(declare-fun b_free!17393 () Bool)

(declare-fun b_next!17393 () Bool)

(assert (=> start!79208 (= b_free!17393 (not b_next!17393))))

(declare-fun tp!60621 () Bool)

(declare-fun b_and!28477 () Bool)

(assert (=> start!79208 (= tp!60621 b_and!28477)))

(declare-fun b!929350 () Bool)

(declare-fun res!625940 () Bool)

(declare-fun e!521908 () Bool)

(assert (=> b!929350 (=> (not res!625940) (not e!521908))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55774 0))(
  ( (array!55775 (arr!26828 (Array (_ BitVec 32) (_ BitVec 64))) (size!27288 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55774)

(assert (=> b!929350 (= res!625940 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27288 _keys!1487))))))

(declare-fun b!929351 () Bool)

(declare-fun res!625944 () Bool)

(assert (=> b!929351 (=> (not res!625944) (not e!521908))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55774 (_ BitVec 32)) Bool)

(assert (=> b!929351 (= res!625944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929352 () Bool)

(declare-fun e!521909 () Bool)

(declare-fun tp_is_empty!19901 () Bool)

(assert (=> b!929352 (= e!521909 tp_is_empty!19901)))

(declare-fun b!929353 () Bool)

(declare-fun e!521912 () Bool)

(declare-fun e!521910 () Bool)

(declare-fun mapRes!31608 () Bool)

(assert (=> b!929353 (= e!521912 (and e!521910 mapRes!31608))))

(declare-fun condMapEmpty!31608 () Bool)

(declare-datatypes ((V!31499 0))(
  ( (V!31500 (val!10001 Int)) )
))
(declare-datatypes ((ValueCell!9469 0))(
  ( (ValueCellFull!9469 (v!12519 V!31499)) (EmptyCell!9469) )
))
(declare-datatypes ((array!55776 0))(
  ( (array!55777 (arr!26829 (Array (_ BitVec 32) ValueCell!9469)) (size!27289 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55776)

(declare-fun mapDefault!31608 () ValueCell!9469)

