; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4196 () Bool)

(assert start!4196)

(declare-fun b_free!1103 () Bool)

(declare-fun b_next!1103 () Bool)

(assert (=> start!4196 (= b_free!1103 (not b_next!1103))))

(declare-fun tp!4729 () Bool)

(declare-fun b_and!1915 () Bool)

(assert (=> start!4196 (= tp!4729 b_and!1915)))

(declare-fun b!31946 () Bool)

(declare-fun res!19375 () Bool)

(declare-fun e!20354 () Bool)

(assert (=> b!31946 (=> (not res!19375) (not e!20354))))

(declare-datatypes ((V!1767 0))(
  ( (V!1768 (val!755 Int)) )
))
(declare-datatypes ((ValueCell!529 0))(
  ( (ValueCellFull!529 (v!1844 V!1767)) (EmptyCell!529) )
))
(declare-datatypes ((array!2121 0))(
  ( (array!2122 (arr!1014 (Array (_ BitVec 32) ValueCell!529)) (size!1115 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2121)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2123 0))(
  ( (array!2124 (arr!1015 (Array (_ BitVec 32) (_ BitVec 64))) (size!1116 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2123)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!31946 (= res!19375 (and (= (size!1115 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1116 _keys!1833) (size!1115 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31947 () Bool)

(declare-fun res!19376 () Bool)

(assert (=> b!31947 (=> (not res!19376) (not e!20354))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1767)

(declare-fun minValue!1443 () V!1767)

(declare-datatypes ((tuple2!1224 0))(
  ( (tuple2!1225 (_1!622 (_ BitVec 64)) (_2!622 V!1767)) )
))
(declare-datatypes ((List!827 0))(
  ( (Nil!824) (Cons!823 (h!1390 tuple2!1224) (t!3522 List!827)) )
))
(declare-datatypes ((ListLongMap!805 0))(
  ( (ListLongMap!806 (toList!418 List!827)) )
))
(declare-fun contains!355 (ListLongMap!805 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!243 (array!2123 array!2121 (_ BitVec 32) (_ BitVec 32) V!1767 V!1767 (_ BitVec 32) Int) ListLongMap!805)

(assert (=> b!31947 (= res!19376 (not (contains!355 (getCurrentListMap!243 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!31948 () Bool)

(declare-fun e!20356 () Bool)

(declare-fun e!20355 () Bool)

(declare-fun mapRes!1714 () Bool)

(assert (=> b!31948 (= e!20356 (and e!20355 mapRes!1714))))

(declare-fun condMapEmpty!1714 () Bool)

(declare-fun mapDefault!1714 () ValueCell!529)

