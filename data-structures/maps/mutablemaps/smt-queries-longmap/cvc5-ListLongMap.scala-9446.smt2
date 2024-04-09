; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112320 () Bool)

(assert start!112320)

(declare-fun b_free!30679 () Bool)

(declare-fun b_next!30679 () Bool)

(assert (=> start!112320 (= b_free!30679 (not b_next!30679))))

(declare-fun tp!107674 () Bool)

(declare-fun b_and!49423 () Bool)

(assert (=> start!112320 (= tp!107674 b_and!49423)))

(declare-fun b!1330362 () Bool)

(declare-fun res!882848 () Bool)

(declare-fun e!758267 () Bool)

(assert (=> b!1330362 (=> (not res!882848) (not e!758267))))

(declare-datatypes ((V!53889 0))(
  ( (V!53890 (val!18369 Int)) )
))
(declare-datatypes ((ValueCell!17396 0))(
  ( (ValueCellFull!17396 (v!21004 V!53889)) (EmptyCell!17396) )
))
(declare-datatypes ((array!90033 0))(
  ( (array!90034 (arr!43478 (Array (_ BitVec 32) ValueCell!17396)) (size!44029 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90033)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90035 0))(
  ( (array!90036 (arr!43479 (Array (_ BitVec 32) (_ BitVec 64))) (size!44030 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90035)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53889)

(declare-fun zeroValue!1262 () V!53889)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23804 0))(
  ( (tuple2!23805 (_1!11912 (_ BitVec 64)) (_2!11912 V!53889)) )
))
(declare-datatypes ((List!30992 0))(
  ( (Nil!30989) (Cons!30988 (h!32197 tuple2!23804) (t!45091 List!30992)) )
))
(declare-datatypes ((ListLongMap!21473 0))(
  ( (ListLongMap!21474 (toList!10752 List!30992)) )
))
(declare-fun contains!8852 (ListLongMap!21473 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5680 (array!90035 array!90033 (_ BitVec 32) (_ BitVec 32) V!53889 V!53889 (_ BitVec 32) Int) ListLongMap!21473)

(assert (=> b!1330362 (= res!882848 (contains!8852 (getCurrentListMap!5680 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1330363 () Bool)

(declare-fun e!758268 () Bool)

(declare-fun e!758265 () Bool)

(declare-fun mapRes!56557 () Bool)

(assert (=> b!1330363 (= e!758268 (and e!758265 mapRes!56557))))

(declare-fun condMapEmpty!56557 () Bool)

(declare-fun mapDefault!56557 () ValueCell!17396)

