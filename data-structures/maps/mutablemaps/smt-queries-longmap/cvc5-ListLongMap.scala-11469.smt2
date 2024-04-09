; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133644 () Bool)

(assert start!133644)

(declare-fun b_free!32029 () Bool)

(declare-fun b_next!32029 () Bool)

(assert (=> start!133644 (= b_free!32029 (not b_next!32029))))

(declare-fun tp!113212 () Bool)

(declare-fun b_and!51579 () Bool)

(assert (=> start!133644 (= tp!113212 b_and!51579)))

(declare-fun b!1562078 () Bool)

(declare-fun res!1068118 () Bool)

(declare-fun e!870506 () Bool)

(assert (=> b!1562078 (=> (not res!1068118) (not e!870506))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104059 0))(
  ( (array!104060 (arr!50217 (Array (_ BitVec 32) (_ BitVec 64))) (size!50768 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104059)

(assert (=> b!1562078 (= res!1068118 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50768 _keys!637)) (bvslt from!782 (size!50768 _keys!637))))))

(declare-fun res!1068116 () Bool)

(assert (=> start!133644 (=> (not res!1068116) (not e!870506))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133644 (= res!1068116 (validMask!0 mask!947))))

(assert (=> start!133644 e!870506))

(assert (=> start!133644 tp!113212))

(declare-fun tp_is_empty!38695 () Bool)

(assert (=> start!133644 tp_is_empty!38695))

(assert (=> start!133644 true))

(declare-fun array_inv!38957 (array!104059) Bool)

(assert (=> start!133644 (array_inv!38957 _keys!637)))

(declare-datatypes ((V!59801 0))(
  ( (V!59802 (val!19431 Int)) )
))
(declare-datatypes ((ValueCell!18317 0))(
  ( (ValueCellFull!18317 (v!22180 V!59801)) (EmptyCell!18317) )
))
(declare-datatypes ((array!104061 0))(
  ( (array!104062 (arr!50218 (Array (_ BitVec 32) ValueCell!18317)) (size!50769 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104061)

(declare-fun e!870505 () Bool)

(declare-fun array_inv!38958 (array!104061) Bool)

(assert (=> start!133644 (and (array_inv!38958 _values!487) e!870505)))

(declare-fun mapIsEmpty!59418 () Bool)

(declare-fun mapRes!59418 () Bool)

(assert (=> mapIsEmpty!59418 mapRes!59418))

(declare-fun b!1562079 () Bool)

(declare-fun e!870503 () Bool)

(assert (=> b!1562079 (= e!870503 tp_is_empty!38695)))

(declare-fun b!1562080 () Bool)

(assert (=> b!1562080 (= e!870506 (not true))))

(declare-fun lt!671465 () Bool)

(declare-datatypes ((tuple2!25256 0))(
  ( (tuple2!25257 (_1!12638 (_ BitVec 64)) (_2!12638 V!59801)) )
))
(declare-datatypes ((List!36631 0))(
  ( (Nil!36628) (Cons!36627 (h!38074 tuple2!25256) (t!51457 List!36631)) )
))
(declare-datatypes ((ListLongMap!22703 0))(
  ( (ListLongMap!22704 (toList!11367 List!36631)) )
))
(declare-fun lt!671462 () ListLongMap!22703)

(declare-fun contains!10287 (ListLongMap!22703 (_ BitVec 64)) Bool)

(assert (=> b!1562080 (= lt!671465 (contains!10287 lt!671462 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562080 (not (contains!10287 lt!671462 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671464 () V!59801)

(declare-fun lt!671463 () ListLongMap!22703)

(declare-fun +!5021 (ListLongMap!22703 tuple2!25256) ListLongMap!22703)

(assert (=> b!1562080 (= lt!671462 (+!5021 lt!671463 (tuple2!25257 (select (arr!50217 _keys!637) from!782) lt!671464)))))

(declare-datatypes ((Unit!51906 0))(
  ( (Unit!51907) )
))
(declare-fun lt!671466 () Unit!51906)

(declare-fun addStillNotContains!557 (ListLongMap!22703 (_ BitVec 64) V!59801 (_ BitVec 64)) Unit!51906)

(assert (=> b!1562080 (= lt!671466 (addStillNotContains!557 lt!671463 (select (arr!50217 _keys!637) from!782) lt!671464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26271 (ValueCell!18317 V!59801) V!59801)

(declare-fun dynLambda!3910 (Int (_ BitVec 64)) V!59801)

(assert (=> b!1562080 (= lt!671464 (get!26271 (select (arr!50218 _values!487) from!782) (dynLambda!3910 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59801)

(declare-fun minValue!453 () V!59801)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6727 (array!104059 array!104061 (_ BitVec 32) (_ BitVec 32) V!59801 V!59801 (_ BitVec 32) Int) ListLongMap!22703)

(assert (=> b!1562080 (= lt!671463 (getCurrentListMapNoExtraKeys!6727 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562081 () Bool)

(declare-fun res!1068114 () Bool)

(assert (=> b!1562081 (=> (not res!1068114) (not e!870506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562081 (= res!1068114 (validKeyInArray!0 (select (arr!50217 _keys!637) from!782)))))

(declare-fun b!1562082 () Bool)

(declare-fun e!870502 () Bool)

(assert (=> b!1562082 (= e!870502 tp_is_empty!38695)))

(declare-fun b!1562083 () Bool)

(assert (=> b!1562083 (= e!870505 (and e!870502 mapRes!59418))))

(declare-fun condMapEmpty!59418 () Bool)

(declare-fun mapDefault!59418 () ValueCell!18317)

