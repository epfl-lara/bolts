; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4166 () Bool)

(assert start!4166)

(declare-fun b_free!1073 () Bool)

(declare-fun b_next!1073 () Bool)

(assert (=> start!4166 (= b_free!1073 (not b_next!1073))))

(declare-fun tp!4638 () Bool)

(declare-fun b_and!1885 () Bool)

(assert (=> start!4166 (= tp!4638 b_and!1885)))

(declare-fun b!31498 () Bool)

(declare-fun e!20128 () Bool)

(declare-fun tp_is_empty!1427 () Bool)

(assert (=> b!31498 (= e!20128 tp_is_empty!1427)))

(declare-fun res!19060 () Bool)

(declare-fun e!20127 () Bool)

(assert (=> start!4166 (=> (not res!19060) (not e!20127))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4166 (= res!19060 (validMask!0 mask!2294))))

(assert (=> start!4166 e!20127))

(assert (=> start!4166 true))

(assert (=> start!4166 tp!4638))

(declare-datatypes ((V!1727 0))(
  ( (V!1728 (val!740 Int)) )
))
(declare-datatypes ((ValueCell!514 0))(
  ( (ValueCellFull!514 (v!1829 V!1727)) (EmptyCell!514) )
))
(declare-datatypes ((array!2061 0))(
  ( (array!2062 (arr!984 (Array (_ BitVec 32) ValueCell!514)) (size!1085 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2061)

(declare-fun e!20129 () Bool)

(declare-fun array_inv!661 (array!2061) Bool)

(assert (=> start!4166 (and (array_inv!661 _values!1501) e!20129)))

(declare-datatypes ((array!2063 0))(
  ( (array!2064 (arr!985 (Array (_ BitVec 32) (_ BitVec 64))) (size!1086 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2063)

(declare-fun array_inv!662 (array!2063) Bool)

(assert (=> start!4166 (array_inv!662 _keys!1833)))

(assert (=> start!4166 tp_is_empty!1427))

(declare-fun b!31499 () Bool)

(assert (=> b!31499 (= e!20127 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11580 () Bool)

(declare-fun zeroValue!1443 () V!1727)

(declare-fun minValue!1443 () V!1727)

(declare-datatypes ((tuple2!1204 0))(
  ( (tuple2!1205 (_1!612 (_ BitVec 64)) (_2!612 V!1727)) )
))
(declare-datatypes ((List!807 0))(
  ( (Nil!804) (Cons!803 (h!1370 tuple2!1204) (t!3502 List!807)) )
))
(declare-datatypes ((ListLongMap!785 0))(
  ( (ListLongMap!786 (toList!408 List!807)) )
))
(declare-fun contains!345 (ListLongMap!785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!233 (array!2063 array!2061 (_ BitVec 32) (_ BitVec 32) V!1727 V!1727 (_ BitVec 32) Int) ListLongMap!785)

(assert (=> b!31499 (= lt!11580 (contains!345 (getCurrentListMap!233 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!31500 () Bool)

(declare-fun mapRes!1669 () Bool)

(assert (=> b!31500 (= e!20129 (and e!20128 mapRes!1669))))

(declare-fun condMapEmpty!1669 () Bool)

(declare-fun mapDefault!1669 () ValueCell!514)

