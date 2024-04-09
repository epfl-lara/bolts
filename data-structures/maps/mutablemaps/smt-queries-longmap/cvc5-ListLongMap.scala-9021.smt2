; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108922 () Bool)

(assert start!108922)

(declare-fun b_free!28399 () Bool)

(declare-fun b_next!28399 () Bool)

(assert (=> start!108922 (= b_free!28399 (not b_next!28399))))

(declare-fun tp!100313 () Bool)

(declare-fun b_and!46475 () Bool)

(assert (=> start!108922 (= tp!100313 b_and!46475)))

(declare-datatypes ((V!50489 0))(
  ( (V!50490 (val!17094 Int)) )
))
(declare-fun minValue!1387 () V!50489)

(declare-fun zeroValue!1387 () V!50489)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!62783 () Bool)

(declare-datatypes ((tuple2!22050 0))(
  ( (tuple2!22051 (_1!11035 (_ BitVec 64)) (_2!11035 V!50489)) )
))
(declare-datatypes ((List!29259 0))(
  ( (Nil!29256) (Cons!29255 (h!30464 tuple2!22050) (t!42810 List!29259)) )
))
(declare-datatypes ((ListLongMap!19719 0))(
  ( (ListLongMap!19720 (toList!9875 List!29259)) )
))
(declare-fun call!62786 () ListLongMap!19719)

(declare-datatypes ((ValueCell!16121 0))(
  ( (ValueCellFull!16121 (v!19694 V!50489)) (EmptyCell!16121) )
))
(declare-datatypes ((array!85087 0))(
  ( (array!85088 (arr!41041 (Array (_ BitVec 32) ValueCell!16121)) (size!41592 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85087)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85089 0))(
  ( (array!85090 (arr!41042 (Array (_ BitVec 32) (_ BitVec 64))) (size!41593 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85089)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5995 (array!85089 array!85087 (_ BitVec 32) (_ BitVec 32) V!50489 V!50489 (_ BitVec 32) Int) ListLongMap!19719)

(assert (=> bm!62783 (= call!62786 (getCurrentListMapNoExtraKeys!5995 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1285938 () Bool)

(declare-fun res!854361 () Bool)

(declare-fun e!734537 () Bool)

(assert (=> b!1285938 (=> (not res!854361) (not e!734537))))

(assert (=> b!1285938 (= res!854361 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41593 _keys!1741))))))

(declare-fun mapIsEmpty!52616 () Bool)

(declare-fun mapRes!52616 () Bool)

(assert (=> mapIsEmpty!52616 mapRes!52616))

(declare-fun b!1285939 () Bool)

(declare-fun e!734532 () Bool)

(declare-fun e!734533 () Bool)

(assert (=> b!1285939 (= e!734532 (and e!734533 mapRes!52616))))

(declare-fun condMapEmpty!52616 () Bool)

(declare-fun mapDefault!52616 () ValueCell!16121)

