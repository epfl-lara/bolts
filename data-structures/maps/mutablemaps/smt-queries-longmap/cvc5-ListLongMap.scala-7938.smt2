; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98504 () Bool)

(assert start!98504)

(declare-fun b_free!24073 () Bool)

(declare-fun b_next!24073 () Bool)

(assert (=> start!98504 (= b_free!24073 (not b_next!24073))))

(declare-fun tp!84931 () Bool)

(declare-fun b_and!39009 () Bool)

(assert (=> start!98504 (= tp!84931 b_and!39009)))

(declare-fun b!1138493 () Bool)

(declare-fun res!759545 () Bool)

(declare-fun e!647844 () Bool)

(assert (=> b!1138493 (=> (not res!759545) (not e!647844))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74024 0))(
  ( (array!74025 (arr!35659 (Array (_ BitVec 32) (_ BitVec 64))) (size!36196 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74024)

(assert (=> b!1138493 (= res!759545 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36196 _keys!1208))))))

(declare-fun b!1138494 () Bool)

(declare-fun e!647837 () Bool)

(declare-fun tp_is_empty!28603 () Bool)

(assert (=> b!1138494 (= e!647837 tp_is_empty!28603)))

(declare-fun e!647849 () Bool)

(declare-fun b!1138495 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138495 (= e!647849 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138496 () Bool)

(declare-fun res!759550 () Bool)

(assert (=> b!1138496 (=> (not res!759550) (not e!647844))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43265 0))(
  ( (V!43266 (val!14358 Int)) )
))
(declare-datatypes ((ValueCell!13592 0))(
  ( (ValueCellFull!13592 (v!16996 V!43265)) (EmptyCell!13592) )
))
(declare-datatypes ((array!74026 0))(
  ( (array!74027 (arr!35660 (Array (_ BitVec 32) ValueCell!13592)) (size!36197 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74026)

(assert (=> b!1138496 (= res!759550 (and (= (size!36197 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36196 _keys!1208) (size!36197 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!43265)

(declare-fun bm!50414 () Bool)

(declare-fun c!111468 () Bool)

(declare-datatypes ((tuple2!18232 0))(
  ( (tuple2!18233 (_1!9126 (_ BitVec 64)) (_2!9126 V!43265)) )
))
(declare-datatypes ((List!25037 0))(
  ( (Nil!25034) (Cons!25033 (h!26242 tuple2!18232) (t!36109 List!25037)) )
))
(declare-datatypes ((ListLongMap!16213 0))(
  ( (ListLongMap!16214 (toList!8122 List!25037)) )
))
(declare-fun lt!506517 () ListLongMap!16213)

(declare-datatypes ((Unit!37253 0))(
  ( (Unit!37254) )
))
(declare-fun call!50421 () Unit!37253)

(declare-fun lt!506504 () ListLongMap!16213)

(declare-fun c!111464 () Bool)

(declare-fun minValue!944 () V!43265)

(declare-fun addStillContains!773 (ListLongMap!16213 (_ BitVec 64) V!43265 (_ BitVec 64)) Unit!37253)

(assert (=> bm!50414 (= call!50421 (addStillContains!773 (ite c!111468 lt!506517 lt!506504) (ite c!111468 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111464 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111468 minValue!944 (ite c!111464 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1138497 () Bool)

(declare-fun res!759546 () Bool)

(assert (=> b!1138497 (=> (not res!759546) (not e!647844))))

(assert (=> b!1138497 (= res!759546 (= (select (arr!35659 _keys!1208) i!673) k!934))))

(declare-fun b!1138498 () Bool)

(declare-fun e!647839 () Bool)

(assert (=> b!1138498 (= e!647839 true)))

(declare-fun lt!506514 () Unit!37253)

(declare-fun e!647841 () Unit!37253)

(assert (=> b!1138498 (= lt!506514 e!647841)))

(declare-fun c!111467 () Bool)

(declare-fun contains!6632 (ListLongMap!16213 (_ BitVec 64)) Bool)

(assert (=> b!1138498 (= c!111467 (contains!6632 lt!506504 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4569 (array!74024 array!74026 (_ BitVec 32) (_ BitVec 32) V!43265 V!43265 (_ BitVec 32) Int) ListLongMap!16213)

(assert (=> b!1138498 (= lt!506504 (getCurrentListMapNoExtraKeys!4569 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50415 () Bool)

(declare-fun call!50419 () Unit!37253)

(assert (=> bm!50415 (= call!50419 call!50421)))

(declare-fun b!1138499 () Bool)

(declare-fun res!759551 () Bool)

(declare-fun e!647843 () Bool)

(assert (=> b!1138499 (=> (not res!759551) (not e!647843))))

(declare-fun lt!506519 () array!74024)

(declare-datatypes ((List!25038 0))(
  ( (Nil!25035) (Cons!25034 (h!26243 (_ BitVec 64)) (t!36110 List!25038)) )
))
(declare-fun arrayNoDuplicates!0 (array!74024 (_ BitVec 32) List!25038) Bool)

(assert (=> b!1138499 (= res!759551 (arrayNoDuplicates!0 lt!506519 #b00000000000000000000000000000000 Nil!25035))))

(declare-fun b!1138500 () Bool)

(declare-fun res!759544 () Bool)

(assert (=> b!1138500 (=> (not res!759544) (not e!647844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138500 (= res!759544 (validKeyInArray!0 k!934))))

(declare-fun b!1138501 () Bool)

(declare-fun e!647836 () Bool)

(assert (=> b!1138501 (= e!647836 tp_is_empty!28603)))

(declare-fun bm!50416 () Bool)

(declare-fun call!50417 () ListLongMap!16213)

(declare-fun call!50420 () ListLongMap!16213)

(assert (=> bm!50416 (= call!50417 call!50420)))

(declare-fun b!1138502 () Bool)

(declare-fun e!647845 () Bool)

(declare-fun mapRes!44729 () Bool)

(assert (=> b!1138502 (= e!647845 (and e!647837 mapRes!44729))))

(declare-fun condMapEmpty!44729 () Bool)

(declare-fun mapDefault!44729 () ValueCell!13592)

