; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20122 () Bool)

(assert start!20122)

(declare-fun b_free!4769 () Bool)

(declare-fun b_next!4769 () Bool)

(assert (=> start!20122 (= b_free!4769 (not b_next!4769))))

(declare-fun tp!17338 () Bool)

(declare-fun b_and!11533 () Bool)

(assert (=> start!20122 (= tp!17338 b_and!11533)))

(declare-fun res!93134 () Bool)

(declare-fun e!129727 () Bool)

(assert (=> start!20122 (=> (not res!93134) (not e!129727))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20122 (= res!93134 (validMask!0 mask!1149))))

(assert (=> start!20122 e!129727))

(declare-datatypes ((V!5813 0))(
  ( (V!5814 (val!2357 Int)) )
))
(declare-datatypes ((ValueCell!1969 0))(
  ( (ValueCellFull!1969 (v!4323 V!5813)) (EmptyCell!1969) )
))
(declare-datatypes ((array!8504 0))(
  ( (array!8505 (arr!4002 (Array (_ BitVec 32) ValueCell!1969)) (size!4327 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8504)

(declare-fun e!129729 () Bool)

(declare-fun array_inv!2603 (array!8504) Bool)

(assert (=> start!20122 (and (array_inv!2603 _values!649) e!129729)))

(assert (=> start!20122 true))

(declare-fun tp_is_empty!4625 () Bool)

(assert (=> start!20122 tp_is_empty!4625))

(declare-datatypes ((array!8506 0))(
  ( (array!8507 (arr!4003 (Array (_ BitVec 32) (_ BitVec 64))) (size!4328 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8506)

(declare-fun array_inv!2604 (array!8506) Bool)

(assert (=> start!20122 (array_inv!2604 _keys!825)))

(assert (=> start!20122 tp!17338))

(declare-fun b!197040 () Bool)

(declare-fun res!93136 () Bool)

(assert (=> b!197040 (=> (not res!93136) (not e!129727))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197040 (= res!93136 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4328 _keys!825))))))

(declare-fun b!197041 () Bool)

(declare-fun res!93138 () Bool)

(assert (=> b!197041 (=> (not res!93138) (not e!129727))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197041 (= res!93138 (validKeyInArray!0 k!843))))

(declare-fun b!197042 () Bool)

(declare-fun e!129726 () Bool)

(declare-fun mapRes!8006 () Bool)

(assert (=> b!197042 (= e!129729 (and e!129726 mapRes!8006))))

(declare-fun condMapEmpty!8006 () Bool)

(declare-fun mapDefault!8006 () ValueCell!1969)

