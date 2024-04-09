; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112874 () Bool)

(assert start!112874)

(declare-fun b_free!31067 () Bool)

(declare-fun b_next!31067 () Bool)

(assert (=> start!112874 (= b_free!31067 (not b_next!31067))))

(declare-fun tp!108852 () Bool)

(declare-fun b_and!50095 () Bool)

(assert (=> start!112874 (= tp!108852 b_and!50095)))

(declare-fun b!1338173 () Bool)

(declare-fun res!888024 () Bool)

(declare-fun e!761976 () Bool)

(assert (=> b!1338173 (=> (not res!888024) (not e!761976))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90789 0))(
  ( (array!90790 (arr!43852 (Array (_ BitVec 32) (_ BitVec 64))) (size!44403 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90789)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1338173 (= res!888024 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44403 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!54405 0))(
  ( (V!54406 (val!18563 Int)) )
))
(declare-datatypes ((ValueCell!17590 0))(
  ( (ValueCellFull!17590 (v!21206 V!54405)) (EmptyCell!17590) )
))
(declare-datatypes ((array!90791 0))(
  ( (array!90792 (arr!43853 (Array (_ BitVec 32) ValueCell!17590)) (size!44404 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90791)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun b!1338174 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54405)

(declare-fun zeroValue!1262 () V!54405)

(declare-datatypes ((tuple2!24096 0))(
  ( (tuple2!24097 (_1!12058 (_ BitVec 64)) (_2!12058 V!54405)) )
))
(declare-datatypes ((List!31262 0))(
  ( (Nil!31259) (Cons!31258 (h!32467 tuple2!24096) (t!45599 List!31262)) )
))
(declare-datatypes ((ListLongMap!21765 0))(
  ( (ListLongMap!21766 (toList!10898 List!31262)) )
))
(declare-fun contains!9005 (ListLongMap!21765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5802 (array!90789 array!90791 (_ BitVec 32) (_ BitVec 32) V!54405 V!54405 (_ BitVec 32) Int) ListLongMap!21765)

(assert (=> b!1338174 (= e!761976 (not (contains!9005 (getCurrentListMap!5802 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k!1153)))))

(declare-fun b!1338175 () Bool)

(declare-fun e!761977 () Bool)

(declare-fun e!761978 () Bool)

(declare-fun mapRes!57153 () Bool)

(assert (=> b!1338175 (= e!761977 (and e!761978 mapRes!57153))))

(declare-fun condMapEmpty!57153 () Bool)

(declare-fun mapDefault!57153 () ValueCell!17590)

