; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4078 () Bool)

(assert start!4078)

(declare-fun b_free!985 () Bool)

(declare-fun b_next!985 () Bool)

(assert (=> start!4078 (= b_free!985 (not b_next!985))))

(declare-fun tp!4375 () Bool)

(declare-fun b_and!1797 () Bool)

(assert (=> start!4078 (= tp!4375 b_and!1797)))

(declare-fun b!30194 () Bool)

(declare-fun res!18157 () Bool)

(declare-fun e!19413 () Bool)

(assert (=> b!30194 (=> (not res!18157) (not e!19413))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1611 0))(
  ( (V!1612 (val!696 Int)) )
))
(declare-datatypes ((ValueCell!470 0))(
  ( (ValueCellFull!470 (v!1785 V!1611)) (EmptyCell!470) )
))
(declare-datatypes ((array!1895 0))(
  ( (array!1896 (arr!901 (Array (_ BitVec 32) ValueCell!470)) (size!1002 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1895)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1897 0))(
  ( (array!1898 (arr!902 (Array (_ BitVec 32) (_ BitVec 64))) (size!1003 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1897)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1611)

(declare-fun minValue!1443 () V!1611)

(declare-datatypes ((tuple2!1136 0))(
  ( (tuple2!1137 (_1!578 (_ BitVec 64)) (_2!578 V!1611)) )
))
(declare-datatypes ((List!740 0))(
  ( (Nil!737) (Cons!736 (h!1303 tuple2!1136) (t!3435 List!740)) )
))
(declare-datatypes ((ListLongMap!717 0))(
  ( (ListLongMap!718 (toList!374 List!740)) )
))
(declare-fun contains!311 (ListLongMap!717 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!201 (array!1897 array!1895 (_ BitVec 32) (_ BitVec 32) V!1611 V!1611 (_ BitVec 32) Int) ListLongMap!717)

(assert (=> b!30194 (= res!18157 (not (contains!311 (getCurrentListMap!201 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun mapIsEmpty!1537 () Bool)

(declare-fun mapRes!1537 () Bool)

(assert (=> mapIsEmpty!1537 mapRes!1537))

(declare-fun b!30195 () Bool)

(declare-fun e!19416 () Bool)

(declare-fun e!19414 () Bool)

(assert (=> b!30195 (= e!19416 (and e!19414 mapRes!1537))))

(declare-fun condMapEmpty!1537 () Bool)

(declare-fun mapDefault!1537 () ValueCell!470)

