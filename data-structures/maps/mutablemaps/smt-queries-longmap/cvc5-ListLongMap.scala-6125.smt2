; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78886 () Bool)

(assert start!78886)

(declare-fun b_free!17071 () Bool)

(declare-fun b_next!17071 () Bool)

(assert (=> start!78886 (= b_free!17071 (not b_next!17071))))

(declare-fun tp!59654 () Bool)

(declare-fun b_and!27897 () Bool)

(assert (=> start!78886 (= tp!59654 b_and!27897)))

(declare-fun b!921165 () Bool)

(declare-fun e!516968 () Bool)

(declare-fun e!516972 () Bool)

(declare-fun mapRes!31125 () Bool)

(assert (=> b!921165 (= e!516968 (and e!516972 mapRes!31125))))

(declare-fun condMapEmpty!31125 () Bool)

(declare-datatypes ((V!31071 0))(
  ( (V!31072 (val!9840 Int)) )
))
(declare-datatypes ((ValueCell!9308 0))(
  ( (ValueCellFull!9308 (v!12358 V!31071)) (EmptyCell!9308) )
))
(declare-datatypes ((array!55150 0))(
  ( (array!55151 (arr!26516 (Array (_ BitVec 32) ValueCell!9308)) (size!26976 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55150)

(declare-fun mapDefault!31125 () ValueCell!9308)

