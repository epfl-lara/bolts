; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4178 () Bool)

(assert start!4178)

(declare-fun b_free!1085 () Bool)

(declare-fun b_next!1085 () Bool)

(assert (=> start!4178 (= b_free!1085 (not b_next!1085))))

(declare-fun tp!4675 () Bool)

(declare-fun b_and!1897 () Bool)

(assert (=> start!4178 (= tp!4675 b_and!1897)))

(declare-fun b!31676 () Bool)

(declare-fun res!19183 () Bool)

(declare-fun e!20218 () Bool)

(assert (=> b!31676 (=> (not res!19183) (not e!20218))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31676 (= res!19183 (validKeyInArray!0 k!1304))))

(declare-fun b!31677 () Bool)

(declare-fun res!19185 () Bool)

(assert (=> b!31677 (=> (not res!19185) (not e!20218))))

(declare-datatypes ((V!1743 0))(
  ( (V!1744 (val!746 Int)) )
))
(declare-datatypes ((ValueCell!520 0))(
  ( (ValueCellFull!520 (v!1835 V!1743)) (EmptyCell!520) )
))
(declare-datatypes ((array!2085 0))(
  ( (array!2086 (arr!996 (Array (_ BitVec 32) ValueCell!520)) (size!1097 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2085)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2087 0))(
  ( (array!2088 (arr!997 (Array (_ BitVec 32) (_ BitVec 64))) (size!1098 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2087)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31677 (= res!19185 (and (= (size!1097 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1098 _keys!1833) (size!1097 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31678 () Bool)

(declare-fun e!20221 () Bool)

(declare-fun e!20219 () Bool)

(declare-fun mapRes!1687 () Bool)

(assert (=> b!31678 (= e!20221 (and e!20219 mapRes!1687))))

(declare-fun condMapEmpty!1687 () Bool)

(declare-fun mapDefault!1687 () ValueCell!520)

