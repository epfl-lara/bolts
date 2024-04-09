; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!928 () Bool)

(assert start!928)

(declare-fun b_free!301 () Bool)

(declare-fun b_next!301 () Bool)

(assert (=> start!928 (= b_free!301 (not b_next!301))))

(declare-fun tp!1135 () Bool)

(declare-fun b_and!449 () Bool)

(assert (=> start!928 (= tp!1135 b_and!449)))

(declare-fun b!7806 () Bool)

(declare-fun e!4393 () Bool)

(declare-fun tp_is_empty!379 () Bool)

(assert (=> b!7806 (= e!4393 tp_is_empty!379)))

(declare-fun b!7807 () Bool)

(declare-fun res!7618 () Bool)

(declare-fun e!4397 () Bool)

(assert (=> b!7807 (=> (not res!7618) (not e!4397))))

(declare-datatypes ((array!687 0))(
  ( (array!688 (arr!331 (Array (_ BitVec 32) (_ BitVec 64))) (size!393 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!687)

(declare-datatypes ((List!226 0))(
  ( (Nil!223) (Cons!222 (h!788 (_ BitVec 64)) (t!2363 List!226)) )
))
(declare-fun arrayNoDuplicates!0 (array!687 (_ BitVec 32) List!226) Bool)

(assert (=> b!7807 (= res!7618 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!223))))

(declare-fun b!7808 () Bool)

(declare-fun e!4394 () Bool)

(declare-fun mapRes!542 () Bool)

(assert (=> b!7808 (= e!4394 (and e!4393 mapRes!542))))

(declare-fun condMapEmpty!542 () Bool)

(declare-datatypes ((V!683 0))(
  ( (V!684 (val!195 Int)) )
))
(declare-datatypes ((ValueCell!173 0))(
  ( (ValueCellFull!173 (v!1287 V!683)) (EmptyCell!173) )
))
(declare-datatypes ((array!689 0))(
  ( (array!690 (arr!332 (Array (_ BitVec 32) ValueCell!173)) (size!394 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!689)

(declare-fun mapDefault!542 () ValueCell!173)

