; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108570 () Bool)

(assert start!108570)

(declare-fun b_free!28081 () Bool)

(declare-fun b_next!28081 () Bool)

(assert (=> start!108570 (= b_free!28081 (not b_next!28081))))

(declare-fun tp!99354 () Bool)

(declare-fun b_and!46151 () Bool)

(assert (=> start!108570 (= tp!99354 b_and!46151)))

(declare-fun b!1281017 () Bool)

(declare-fun res!851030 () Bool)

(declare-fun e!731946 () Bool)

(assert (=> b!1281017 (=> (not res!851030) (not e!731946))))

(declare-datatypes ((V!50065 0))(
  ( (V!50066 (val!16935 Int)) )
))
(declare-fun minValue!1387 () V!50065)

(declare-fun zeroValue!1387 () V!50065)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15962 0))(
  ( (ValueCellFull!15962 (v!19533 V!50065)) (EmptyCell!15962) )
))
(declare-datatypes ((array!84467 0))(
  ( (array!84468 (arr!40733 (Array (_ BitVec 32) ValueCell!15962)) (size!41284 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84467)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84469 0))(
  ( (array!84470 (arr!40734 (Array (_ BitVec 32) (_ BitVec 64))) (size!41285 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84469)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21828 0))(
  ( (tuple2!21829 (_1!10924 (_ BitVec 64)) (_2!10924 V!50065)) )
))
(declare-datatypes ((List!29038 0))(
  ( (Nil!29035) (Cons!29034 (h!30243 tuple2!21828) (t!42585 List!29038)) )
))
(declare-datatypes ((ListLongMap!19497 0))(
  ( (ListLongMap!19498 (toList!9764 List!29038)) )
))
(declare-fun contains!7817 (ListLongMap!19497 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4784 (array!84469 array!84467 (_ BitVec 32) (_ BitVec 32) V!50065 V!50065 (_ BitVec 32) Int) ListLongMap!19497)

(assert (=> b!1281017 (= res!851030 (contains!7817 (getCurrentListMap!4784 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281018 () Bool)

(assert (=> b!1281018 (= e!731946 (not true))))

(assert (=> b!1281018 (contains!7817 (getCurrentListMap!4784 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42369 0))(
  ( (Unit!42370) )
))
(declare-fun lt!576130 () Unit!42369)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!17 (array!84469 array!84467 (_ BitVec 32) (_ BitVec 32) V!50065 V!50065 (_ BitVec 64) (_ BitVec 32) Int) Unit!42369)

(assert (=> b!1281018 (= lt!576130 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!17 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281019 () Bool)

(declare-fun res!851029 () Bool)

(assert (=> b!1281019 (=> (not res!851029) (not e!731946))))

(assert (=> b!1281019 (= res!851029 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41285 _keys!1741)) (not (= (select (arr!40734 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1281020 () Bool)

(declare-fun e!731947 () Bool)

(declare-fun e!731949 () Bool)

(declare-fun mapRes!52133 () Bool)

(assert (=> b!1281020 (= e!731947 (and e!731949 mapRes!52133))))

(declare-fun condMapEmpty!52133 () Bool)

(declare-fun mapDefault!52133 () ValueCell!15962)

