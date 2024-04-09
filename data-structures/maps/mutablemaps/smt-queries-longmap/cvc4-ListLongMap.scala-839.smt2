; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20146 () Bool)

(assert start!20146)

(declare-fun b_free!4793 () Bool)

(declare-fun b_next!4793 () Bool)

(assert (=> start!20146 (= b_free!4793 (not b_next!4793))))

(declare-fun tp!17411 () Bool)

(declare-fun b_and!11557 () Bool)

(assert (=> start!20146 (= tp!17411 b_and!11557)))

(declare-fun b!197400 () Bool)

(declare-fun res!93390 () Bool)

(declare-fun e!129908 () Bool)

(assert (=> b!197400 (=> (not res!93390) (not e!129908))))

(declare-datatypes ((array!8550 0))(
  ( (array!8551 (arr!4025 (Array (_ BitVec 32) (_ BitVec 64))) (size!4350 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8550)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197400 (= res!93390 (= (select (arr!4025 _keys!825) i!601) k!843))))

(declare-fun b!197401 () Bool)

(declare-fun e!129907 () Bool)

(declare-fun e!129909 () Bool)

(declare-fun mapRes!8042 () Bool)

(assert (=> b!197401 (= e!129907 (and e!129909 mapRes!8042))))

(declare-fun condMapEmpty!8042 () Bool)

(declare-datatypes ((V!5845 0))(
  ( (V!5846 (val!2369 Int)) )
))
(declare-datatypes ((ValueCell!1981 0))(
  ( (ValueCellFull!1981 (v!4335 V!5845)) (EmptyCell!1981) )
))
(declare-datatypes ((array!8552 0))(
  ( (array!8553 (arr!4026 (Array (_ BitVec 32) ValueCell!1981)) (size!4351 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8552)

(declare-fun mapDefault!8042 () ValueCell!1981)

