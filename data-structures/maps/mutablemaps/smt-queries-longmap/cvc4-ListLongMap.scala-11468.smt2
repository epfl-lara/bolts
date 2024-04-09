; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133642 () Bool)

(assert start!133642)

(declare-fun b_free!32027 () Bool)

(declare-fun b_next!32027 () Bool)

(assert (=> start!133642 (= b_free!32027 (not b_next!32027))))

(declare-fun tp!113205 () Bool)

(declare-fun b_and!51575 () Bool)

(assert (=> start!133642 (= tp!113205 b_and!51575)))

(declare-fun b!1562049 () Bool)

(declare-fun e!870489 () Bool)

(assert (=> b!1562049 (= e!870489 (not true))))

(declare-fun lt!671451 () Bool)

(declare-datatypes ((V!59797 0))(
  ( (V!59798 (val!19430 Int)) )
))
(declare-datatypes ((tuple2!25254 0))(
  ( (tuple2!25255 (_1!12637 (_ BitVec 64)) (_2!12637 V!59797)) )
))
(declare-datatypes ((List!36630 0))(
  ( (Nil!36627) (Cons!36626 (h!38073 tuple2!25254) (t!51454 List!36630)) )
))
(declare-datatypes ((ListLongMap!22701 0))(
  ( (ListLongMap!22702 (toList!11366 List!36630)) )
))
(declare-fun lt!671449 () ListLongMap!22701)

(declare-fun contains!10286 (ListLongMap!22701 (_ BitVec 64)) Bool)

(assert (=> b!1562049 (= lt!671451 (contains!10286 lt!671449 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562049 (not (contains!10286 lt!671449 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671448 () V!59797)

(declare-fun lt!671447 () ListLongMap!22701)

(declare-datatypes ((array!104055 0))(
  ( (array!104056 (arr!50215 (Array (_ BitVec 32) (_ BitVec 64))) (size!50766 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104055)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5020 (ListLongMap!22701 tuple2!25254) ListLongMap!22701)

(assert (=> b!1562049 (= lt!671449 (+!5020 lt!671447 (tuple2!25255 (select (arr!50215 _keys!637) from!782) lt!671448)))))

(declare-datatypes ((Unit!51904 0))(
  ( (Unit!51905) )
))
(declare-fun lt!671450 () Unit!51904)

(declare-fun addStillNotContains!556 (ListLongMap!22701 (_ BitVec 64) V!59797 (_ BitVec 64)) Unit!51904)

(assert (=> b!1562049 (= lt!671450 (addStillNotContains!556 lt!671447 (select (arr!50215 _keys!637) from!782) lt!671448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18316 0))(
  ( (ValueCellFull!18316 (v!22179 V!59797)) (EmptyCell!18316) )
))
(declare-datatypes ((array!104057 0))(
  ( (array!104058 (arr!50216 (Array (_ BitVec 32) ValueCell!18316)) (size!50767 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104057)

(declare-fun get!26268 (ValueCell!18316 V!59797) V!59797)

(declare-fun dynLambda!3909 (Int (_ BitVec 64)) V!59797)

(assert (=> b!1562049 (= lt!671448 (get!26268 (select (arr!50216 _values!487) from!782) (dynLambda!3909 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59797)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun minValue!453 () V!59797)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6726 (array!104055 array!104057 (_ BitVec 32) (_ BitVec 32) V!59797 V!59797 (_ BitVec 32) Int) ListLongMap!22701)

(assert (=> b!1562049 (= lt!671447 (getCurrentListMapNoExtraKeys!6726 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562050 () Bool)

(declare-fun res!1068099 () Bool)

(assert (=> b!1562050 (=> (not res!1068099) (not e!870489))))

(assert (=> b!1562050 (= res!1068099 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50766 _keys!637)) (bvslt from!782 (size!50766 _keys!637))))))

(declare-fun b!1562051 () Bool)

(declare-fun res!1068097 () Bool)

(assert (=> b!1562051 (=> (not res!1068097) (not e!870489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104055 (_ BitVec 32)) Bool)

(assert (=> b!1562051 (= res!1068097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562052 () Bool)

(declare-fun e!870488 () Bool)

(declare-fun tp_is_empty!38693 () Bool)

(assert (=> b!1562052 (= e!870488 tp_is_empty!38693)))

(declare-fun b!1562053 () Bool)

(declare-fun res!1068098 () Bool)

(assert (=> b!1562053 (=> (not res!1068098) (not e!870489))))

(assert (=> b!1562053 (= res!1068098 (and (= (size!50767 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50766 _keys!637) (size!50767 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59415 () Bool)

(declare-fun mapRes!59415 () Bool)

(assert (=> mapIsEmpty!59415 mapRes!59415))

(declare-fun mapNonEmpty!59415 () Bool)

(declare-fun tp!113206 () Bool)

(assert (=> mapNonEmpty!59415 (= mapRes!59415 (and tp!113206 e!870488))))

(declare-fun mapValue!59415 () ValueCell!18316)

(declare-fun mapKey!59415 () (_ BitVec 32))

(declare-fun mapRest!59415 () (Array (_ BitVec 32) ValueCell!18316))

(assert (=> mapNonEmpty!59415 (= (arr!50216 _values!487) (store mapRest!59415 mapKey!59415 mapValue!59415))))

(declare-fun res!1068100 () Bool)

(assert (=> start!133642 (=> (not res!1068100) (not e!870489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133642 (= res!1068100 (validMask!0 mask!947))))

(assert (=> start!133642 e!870489))

(assert (=> start!133642 tp!113205))

(assert (=> start!133642 tp_is_empty!38693))

(assert (=> start!133642 true))

(declare-fun array_inv!38955 (array!104055) Bool)

(assert (=> start!133642 (array_inv!38955 _keys!637)))

(declare-fun e!870487 () Bool)

(declare-fun array_inv!38956 (array!104057) Bool)

(assert (=> start!133642 (and (array_inv!38956 _values!487) e!870487)))

(declare-fun b!1562054 () Bool)

(declare-fun e!870491 () Bool)

(assert (=> b!1562054 (= e!870487 (and e!870491 mapRes!59415))))

(declare-fun condMapEmpty!59415 () Bool)

(declare-fun mapDefault!59415 () ValueCell!18316)

