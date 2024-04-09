; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4290 () Bool)

(assert start!4290)

(declare-fun b_free!1157 () Bool)

(declare-fun b_next!1157 () Bool)

(assert (=> start!4290 (= b_free!1157 (not b_next!1157))))

(declare-fun tp!4896 () Bool)

(declare-fun b_and!1973 () Bool)

(assert (=> start!4290 (= tp!4896 b_and!1973)))

(declare-fun b!33007 () Bool)

(declare-fun res!20050 () Bool)

(declare-fun e!20966 () Bool)

(assert (=> b!33007 (=> (not res!20050) (not e!20966))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33007 (= res!20050 (validKeyInArray!0 k!1304))))

(declare-fun b!33008 () Bool)

(declare-fun res!20053 () Bool)

(declare-fun e!20965 () Bool)

(assert (=> b!33008 (=> (not res!20053) (not e!20965))))

(declare-datatypes ((array!2231 0))(
  ( (array!2232 (arr!1067 (Array (_ BitVec 32) (_ BitVec 64))) (size!1168 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2231)

(declare-fun arrayContainsKey!0 (array!2231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33008 (= res!20053 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1801 () Bool)

(declare-fun mapRes!1801 () Bool)

(declare-fun tp!4897 () Bool)

(declare-fun e!20964 () Bool)

(assert (=> mapNonEmpty!1801 (= mapRes!1801 (and tp!4897 e!20964))))

(declare-datatypes ((V!1839 0))(
  ( (V!1840 (val!782 Int)) )
))
(declare-datatypes ((ValueCell!556 0))(
  ( (ValueCellFull!556 (v!1873 V!1839)) (EmptyCell!556) )
))
(declare-datatypes ((array!2233 0))(
  ( (array!2234 (arr!1068 (Array (_ BitVec 32) ValueCell!556)) (size!1169 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2233)

(declare-fun mapValue!1801 () ValueCell!556)

(declare-fun mapKey!1801 () (_ BitVec 32))

(declare-fun mapRest!1801 () (Array (_ BitVec 32) ValueCell!556))

(assert (=> mapNonEmpty!1801 (= (arr!1068 _values!1501) (store mapRest!1801 mapKey!1801 mapValue!1801))))

(declare-fun b!33009 () Bool)

(declare-fun e!20967 () Bool)

(declare-fun e!20968 () Bool)

(assert (=> b!33009 (= e!20967 (and e!20968 mapRes!1801))))

(declare-fun condMapEmpty!1801 () Bool)

(declare-fun mapDefault!1801 () ValueCell!556)

