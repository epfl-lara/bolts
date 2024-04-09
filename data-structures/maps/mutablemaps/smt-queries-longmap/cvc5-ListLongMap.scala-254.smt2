; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4204 () Bool)

(assert start!4204)

(declare-fun b_free!1111 () Bool)

(declare-fun b_next!1111 () Bool)

(assert (=> start!4204 (= b_free!1111 (not b_next!1111))))

(declare-fun tp!4752 () Bool)

(declare-fun b_and!1923 () Bool)

(assert (=> start!4204 (= tp!4752 b_and!1923)))

(declare-fun b!32066 () Bool)

(declare-fun e!20416 () Bool)

(declare-fun tp_is_empty!1465 () Bool)

(assert (=> b!32066 (= e!20416 tp_is_empty!1465)))

(declare-fun b!32067 () Bool)

(declare-fun e!20413 () Bool)

(assert (=> b!32067 (= e!20413 tp_is_empty!1465)))

(declare-fun b!32068 () Bool)

(declare-fun res!19462 () Bool)

(declare-fun e!20414 () Bool)

(assert (=> b!32068 (=> (not res!19462) (not e!20414))))

(declare-datatypes ((array!2137 0))(
  ( (array!2138 (arr!1022 (Array (_ BitVec 32) (_ BitVec 64))) (size!1123 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2137)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32068 (= res!19462 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32069 () Bool)

(declare-fun e!20415 () Bool)

(declare-fun mapRes!1726 () Bool)

(assert (=> b!32069 (= e!20415 (and e!20413 mapRes!1726))))

(declare-fun condMapEmpty!1726 () Bool)

(declare-datatypes ((V!1779 0))(
  ( (V!1780 (val!759 Int)) )
))
(declare-datatypes ((ValueCell!533 0))(
  ( (ValueCellFull!533 (v!1848 V!1779)) (EmptyCell!533) )
))
(declare-datatypes ((array!2139 0))(
  ( (array!2140 (arr!1023 (Array (_ BitVec 32) ValueCell!533)) (size!1124 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2139)

(declare-fun mapDefault!1726 () ValueCell!533)

