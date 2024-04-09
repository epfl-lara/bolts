; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133964 () Bool)

(assert start!133964)

(declare-fun b_free!32155 () Bool)

(declare-fun b_next!32155 () Bool)

(assert (=> start!133964 (= b_free!32155 (not b_next!32155))))

(declare-fun tp!113767 () Bool)

(declare-fun b_and!51761 () Bool)

(assert (=> start!133964 (= tp!113767 b_and!51761)))

(declare-fun b!1565481 () Bool)

(declare-fun e!872607 () Bool)

(assert (=> b!1565481 (= e!872607 (not true))))

(declare-fun lt!672247 () Bool)

(declare-datatypes ((V!60113 0))(
  ( (V!60114 (val!19548 Int)) )
))
(declare-datatypes ((tuple2!25382 0))(
  ( (tuple2!25383 (_1!12701 (_ BitVec 64)) (_2!12701 V!60113)) )
))
(declare-datatypes ((List!36771 0))(
  ( (Nil!36768) (Cons!36767 (h!38214 tuple2!25382) (t!51647 List!36771)) )
))
(declare-datatypes ((ListLongMap!22829 0))(
  ( (ListLongMap!22830 (toList!11430 List!36771)) )
))
(declare-fun lt!672249 () ListLongMap!22829)

(declare-fun contains!10351 (ListLongMap!22829 (_ BitVec 64)) Bool)

(assert (=> b!1565481 (= lt!672247 (contains!10351 lt!672249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1565481 (not (contains!10351 lt!672249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672248 () V!60113)

(declare-fun lt!672251 () ListLongMap!22829)

(declare-datatypes ((array!104519 0))(
  ( (array!104520 (arr!50442 (Array (_ BitVec 32) (_ BitVec 64))) (size!50993 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104519)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5037 (ListLongMap!22829 tuple2!25382) ListLongMap!22829)

(assert (=> b!1565481 (= lt!672249 (+!5037 lt!672251 (tuple2!25383 (select (arr!50442 _keys!637) from!782) lt!672248)))))

(declare-datatypes ((Unit!51948 0))(
  ( (Unit!51949) )
))
(declare-fun lt!672250 () Unit!51948)

(declare-fun addStillNotContains!573 (ListLongMap!22829 (_ BitVec 64) V!60113 (_ BitVec 64)) Unit!51948)

(assert (=> b!1565481 (= lt!672250 (addStillNotContains!573 lt!672251 (select (arr!50442 _keys!637) from!782) lt!672248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18434 0))(
  ( (ValueCellFull!18434 (v!22301 V!60113)) (EmptyCell!18434) )
))
(declare-datatypes ((array!104521 0))(
  ( (array!104522 (arr!50443 (Array (_ BitVec 32) ValueCell!18434)) (size!50994 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104521)

(declare-fun get!26367 (ValueCell!18434 V!60113) V!60113)

(declare-fun dynLambda!3926 (Int (_ BitVec 64)) V!60113)

(assert (=> b!1565481 (= lt!672248 (get!26367 (select (arr!50443 _values!487) from!782) (dynLambda!3926 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60113)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60113)

(declare-fun getCurrentListMapNoExtraKeys!6770 (array!104519 array!104521 (_ BitVec 32) (_ BitVec 32) V!60113 V!60113 (_ BitVec 32) Int) ListLongMap!22829)

(assert (=> b!1565481 (= lt!672251 (getCurrentListMapNoExtraKeys!6770 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565482 () Bool)

(declare-fun res!1070220 () Bool)

(assert (=> b!1565482 (=> (not res!1070220) (not e!872607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104519 (_ BitVec 32)) Bool)

(assert (=> b!1565482 (= res!1070220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565483 () Bool)

(declare-fun e!872606 () Bool)

(declare-fun e!872605 () Bool)

(declare-fun mapRes!59785 () Bool)

(assert (=> b!1565483 (= e!872606 (and e!872605 mapRes!59785))))

(declare-fun condMapEmpty!59785 () Bool)

(declare-fun mapDefault!59785 () ValueCell!18434)

