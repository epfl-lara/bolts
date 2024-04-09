; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97304 () Bool)

(assert start!97304)

(declare-fun b_free!23239 () Bool)

(declare-fun b_next!23239 () Bool)

(assert (=> start!97304 (= b_free!23239 (not b_next!23239))))

(declare-fun tp!82017 () Bool)

(declare-fun b_and!37327 () Bool)

(assert (=> start!97304 (= tp!82017 b_and!37327)))

(declare-fun b!1107295 () Bool)

(declare-fun e!631817 () Bool)

(declare-datatypes ((V!41793 0))(
  ( (V!41794 (val!13806 Int)) )
))
(declare-datatypes ((tuple2!17504 0))(
  ( (tuple2!17505 (_1!8762 (_ BitVec 64)) (_2!8762 V!41793)) )
))
(declare-datatypes ((List!24242 0))(
  ( (Nil!24239) (Cons!24238 (h!25447 tuple2!17504) (t!34534 List!24242)) )
))
(declare-datatypes ((ListLongMap!15485 0))(
  ( (ListLongMap!15486 (toList!7758 List!24242)) )
))
(declare-fun call!46415 () ListLongMap!15485)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!46414 () ListLongMap!15485)

(declare-fun -!993 (ListLongMap!15485 (_ BitVec 64)) ListLongMap!15485)

(assert (=> b!1107295 (= e!631817 (= call!46414 (-!993 call!46415 k!934)))))

(declare-fun b!1107296 () Bool)

(declare-fun res!739075 () Bool)

(declare-fun e!631818 () Bool)

(assert (=> b!1107296 (=> (not res!739075) (not e!631818))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107296 (= res!739075 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!41793)

(declare-datatypes ((array!71868 0))(
  ( (array!71869 (arr!34583 (Array (_ BitVec 32) (_ BitVec 64))) (size!35120 (_ BitVec 32))) )
))
(declare-fun lt!495590 () array!71868)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13040 0))(
  ( (ValueCellFull!13040 (v!16440 V!41793)) (EmptyCell!13040) )
))
(declare-datatypes ((array!71870 0))(
  ( (array!71871 (arr!34584 (Array (_ BitVec 32) ValueCell!13040)) (size!35121 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71870)

(declare-fun bm!46411 () Bool)

(declare-fun minValue!944 () V!41793)

(declare-fun getCurrentListMapNoExtraKeys!4227 (array!71868 array!71870 (_ BitVec 32) (_ BitVec 32) V!41793 V!41793 (_ BitVec 32) Int) ListLongMap!15485)

(declare-fun dynLambda!2356 (Int (_ BitVec 64)) V!41793)

(assert (=> bm!46411 (= call!46414 (getCurrentListMapNoExtraKeys!4227 lt!495590 (array!71871 (store (arr!34584 _values!996) i!673 (ValueCellFull!13040 (dynLambda!2356 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35121 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107297 () Bool)

(declare-fun res!739067 () Bool)

(assert (=> b!1107297 (=> (not res!739067) (not e!631818))))

(declare-fun _keys!1208 () array!71868)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71868 (_ BitVec 32)) Bool)

(assert (=> b!1107297 (= res!739067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43066 () Bool)

(declare-fun mapRes!43066 () Bool)

(declare-fun tp!82016 () Bool)

(declare-fun e!631819 () Bool)

(assert (=> mapNonEmpty!43066 (= mapRes!43066 (and tp!82016 e!631819))))

(declare-fun mapKey!43066 () (_ BitVec 32))

(declare-fun mapValue!43066 () ValueCell!13040)

(declare-fun mapRest!43066 () (Array (_ BitVec 32) ValueCell!13040))

(assert (=> mapNonEmpty!43066 (= (arr!34584 _values!996) (store mapRest!43066 mapKey!43066 mapValue!43066))))

(declare-fun b!1107298 () Bool)

(declare-fun res!739074 () Bool)

(assert (=> b!1107298 (=> (not res!739074) (not e!631818))))

(declare-datatypes ((List!24243 0))(
  ( (Nil!24240) (Cons!24239 (h!25448 (_ BitVec 64)) (t!34535 List!24243)) )
))
(declare-fun arrayNoDuplicates!0 (array!71868 (_ BitVec 32) List!24243) Bool)

(assert (=> b!1107298 (= res!739074 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24240))))

(declare-fun b!1107299 () Bool)

(declare-fun e!631821 () Bool)

(declare-fun tp_is_empty!27499 () Bool)

(assert (=> b!1107299 (= e!631821 tp_is_empty!27499)))

(declare-fun b!1107300 () Bool)

(assert (=> b!1107300 (= e!631819 tp_is_empty!27499)))

(declare-fun mapIsEmpty!43066 () Bool)

(assert (=> mapIsEmpty!43066 mapRes!43066))

(declare-fun b!1107301 () Bool)

(declare-fun res!739068 () Bool)

(assert (=> b!1107301 (=> (not res!739068) (not e!631818))))

(assert (=> b!1107301 (= res!739068 (and (= (size!35121 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35120 _keys!1208) (size!35121 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107302 () Bool)

(declare-fun res!739073 () Bool)

(assert (=> b!1107302 (=> (not res!739073) (not e!631818))))

(assert (=> b!1107302 (= res!739073 (= (select (arr!34583 _keys!1208) i!673) k!934))))

(declare-fun b!1107303 () Bool)

(declare-fun res!739070 () Bool)

(assert (=> b!1107303 (=> (not res!739070) (not e!631818))))

(assert (=> b!1107303 (= res!739070 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35120 _keys!1208))))))

(declare-fun res!739077 () Bool)

(assert (=> start!97304 (=> (not res!739077) (not e!631818))))

(assert (=> start!97304 (= res!739077 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35120 _keys!1208))))))

(assert (=> start!97304 e!631818))

(assert (=> start!97304 tp_is_empty!27499))

(declare-fun array_inv!26480 (array!71868) Bool)

(assert (=> start!97304 (array_inv!26480 _keys!1208)))

(assert (=> start!97304 true))

(assert (=> start!97304 tp!82017))

(declare-fun e!631823 () Bool)

(declare-fun array_inv!26481 (array!71870) Bool)

(assert (=> start!97304 (and (array_inv!26481 _values!996) e!631823)))

(declare-fun b!1107304 () Bool)

(declare-fun res!739069 () Bool)

(declare-fun e!631820 () Bool)

(assert (=> b!1107304 (=> (not res!739069) (not e!631820))))

(assert (=> b!1107304 (= res!739069 (arrayNoDuplicates!0 lt!495590 #b00000000000000000000000000000000 Nil!24240))))

(declare-fun b!1107305 () Bool)

(assert (=> b!1107305 (= e!631818 e!631820)))

(declare-fun res!739076 () Bool)

(assert (=> b!1107305 (=> (not res!739076) (not e!631820))))

(assert (=> b!1107305 (= res!739076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495590 mask!1564))))

(assert (=> b!1107305 (= lt!495590 (array!71869 (store (arr!34583 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35120 _keys!1208)))))

(declare-fun b!1107306 () Bool)

(assert (=> b!1107306 (= e!631823 (and e!631821 mapRes!43066))))

(declare-fun condMapEmpty!43066 () Bool)

(declare-fun mapDefault!43066 () ValueCell!13040)

