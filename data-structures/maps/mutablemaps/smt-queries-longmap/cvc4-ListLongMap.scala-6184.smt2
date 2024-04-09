; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79244 () Bool)

(assert start!79244)

(declare-fun b_free!17429 () Bool)

(declare-fun b_next!17429 () Bool)

(assert (=> start!79244 (= b_free!17429 (not b_next!17429))))

(declare-fun tp!60729 () Bool)

(declare-fun b_and!28513 () Bool)

(assert (=> start!79244 (= tp!60729 b_and!28513)))

(declare-fun b!929944 () Bool)

(declare-fun res!626376 () Bool)

(declare-fun e!522235 () Bool)

(assert (=> b!929944 (=> (not res!626376) (not e!522235))))

(declare-datatypes ((array!55844 0))(
  ( (array!55845 (arr!26863 (Array (_ BitVec 32) (_ BitVec 64))) (size!27323 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55844)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55844 (_ BitVec 32)) Bool)

(assert (=> b!929944 (= res!626376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929945 () Bool)

(declare-fun e!522236 () Bool)

(declare-fun e!522232 () Bool)

(declare-fun mapRes!31662 () Bool)

(assert (=> b!929945 (= e!522236 (and e!522232 mapRes!31662))))

(declare-fun condMapEmpty!31662 () Bool)

(declare-datatypes ((V!31547 0))(
  ( (V!31548 (val!10019 Int)) )
))
(declare-datatypes ((ValueCell!9487 0))(
  ( (ValueCellFull!9487 (v!12537 V!31547)) (EmptyCell!9487) )
))
(declare-datatypes ((array!55846 0))(
  ( (array!55847 (arr!26864 (Array (_ BitVec 32) ValueCell!9487)) (size!27324 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55846)

(declare-fun mapDefault!31662 () ValueCell!9487)

