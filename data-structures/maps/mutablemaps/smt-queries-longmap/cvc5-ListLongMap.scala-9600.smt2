; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113498 () Bool)

(assert start!113498)

(declare-fun b_free!31513 () Bool)

(declare-fun b_next!31513 () Bool)

(assert (=> start!113498 (= b_free!31513 (not b_next!31513))))

(declare-fun tp!110345 () Bool)

(declare-fun b_and!50811 () Bool)

(assert (=> start!113498 (= tp!110345 b_and!50811)))

(declare-fun b!1346904 () Bool)

(declare-fun res!893838 () Bool)

(declare-fun e!766380 () Bool)

(assert (=> b!1346904 (=> (not res!893838) (not e!766380))))

(declare-datatypes ((V!55121 0))(
  ( (V!55122 (val!18831 Int)) )
))
(declare-fun minValue!1245 () V!55121)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55121)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17858 0))(
  ( (ValueCellFull!17858 (v!21477 V!55121)) (EmptyCell!17858) )
))
(declare-datatypes ((array!91815 0))(
  ( (array!91816 (arr!44359 (Array (_ BitVec 32) ValueCell!17858)) (size!44910 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91815)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91817 0))(
  ( (array!91818 (arr!44360 (Array (_ BitVec 32) (_ BitVec 64))) (size!44911 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91817)

(declare-datatypes ((tuple2!24412 0))(
  ( (tuple2!24413 (_1!12216 (_ BitVec 64)) (_2!12216 V!55121)) )
))
(declare-datatypes ((List!31584 0))(
  ( (Nil!31581) (Cons!31580 (h!32789 tuple2!24412) (t!46183 List!31584)) )
))
(declare-datatypes ((ListLongMap!22081 0))(
  ( (ListLongMap!22082 (toList!11056 List!31584)) )
))
(declare-fun contains!9167 (ListLongMap!22081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5946 (array!91817 array!91815 (_ BitVec 32) (_ BitVec 32) V!55121 V!55121 (_ BitVec 32) Int) ListLongMap!22081)

(assert (=> b!1346904 (= res!893838 (contains!9167 (getCurrentListMap!5946 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346905 () Bool)

(declare-fun res!893846 () Bool)

(assert (=> b!1346905 (=> (not res!893846) (not e!766380))))

(assert (=> b!1346905 (= res!893846 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44911 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346906 () Bool)

(declare-fun e!766378 () Bool)

(declare-fun e!766381 () Bool)

(declare-fun mapRes!57976 () Bool)

(assert (=> b!1346906 (= e!766378 (and e!766381 mapRes!57976))))

(declare-fun condMapEmpty!57976 () Bool)

(declare-fun mapDefault!57976 () ValueCell!17858)

