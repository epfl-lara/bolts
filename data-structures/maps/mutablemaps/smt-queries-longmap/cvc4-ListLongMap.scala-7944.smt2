; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98544 () Bool)

(assert start!98544)

(declare-fun b_free!24113 () Bool)

(declare-fun b_next!24113 () Bool)

(assert (=> start!98544 (= b_free!24113 (not b_next!24113))))

(declare-fun tp!85051 () Bool)

(declare-fun b_and!39089 () Bool)

(assert (=> start!98544 (= tp!85051 b_and!39089)))

(declare-fun b!1140274 () Bool)

(declare-fun res!760382 () Bool)

(declare-fun e!648796 () Bool)

(assert (=> b!1140274 (=> (not res!760382) (not e!648796))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140274 (= res!760382 (validMask!0 mask!1564))))

(declare-fun b!1140275 () Bool)

(declare-fun res!760391 () Bool)

(assert (=> b!1140275 (=> (not res!760391) (not e!648796))))

(declare-datatypes ((array!74102 0))(
  ( (array!74103 (arr!35698 (Array (_ BitVec 32) (_ BitVec 64))) (size!36235 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74102)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!43317 0))(
  ( (V!43318 (val!14378 Int)) )
))
(declare-datatypes ((ValueCell!13612 0))(
  ( (ValueCellFull!13612 (v!17016 V!43317)) (EmptyCell!13612) )
))
(declare-datatypes ((array!74104 0))(
  ( (array!74105 (arr!35699 (Array (_ BitVec 32) ValueCell!13612)) (size!36236 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74104)

(assert (=> b!1140275 (= res!760391 (and (= (size!36236 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36235 _keys!1208) (size!36236 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1140276 () Bool)

(declare-datatypes ((tuple2!18268 0))(
  ( (tuple2!18269 (_1!9144 (_ BitVec 64)) (_2!9144 V!43317)) )
))
(declare-datatypes ((List!25070 0))(
  ( (Nil!25067) (Cons!25066 (h!26275 tuple2!18268) (t!36182 List!25070)) )
))
(declare-datatypes ((ListLongMap!16249 0))(
  ( (ListLongMap!16250 (toList!8140 List!25070)) )
))
(declare-fun call!50904 () ListLongMap!16249)

(declare-fun e!648802 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!50899 () ListLongMap!16249)

(declare-fun -!1239 (ListLongMap!16249 (_ BitVec 64)) ListLongMap!16249)

(assert (=> b!1140276 (= e!648802 (= call!50904 (-!1239 call!50899 k!934)))))

(declare-fun b!1140277 () Bool)

(declare-fun e!648800 () Bool)

(declare-fun e!648797 () Bool)

(assert (=> b!1140277 (= e!648800 (not e!648797))))

(declare-fun res!760386 () Bool)

(assert (=> b!1140277 (=> res!760386 e!648797)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140277 (= res!760386 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140277 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37322 0))(
  ( (Unit!37323) )
))
(declare-fun lt!507701 () Unit!37322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74102 (_ BitVec 64) (_ BitVec 32)) Unit!37322)

(assert (=> b!1140277 (= lt!507701 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1140278 () Bool)

(declare-fun res!760385 () Bool)

(assert (=> b!1140278 (=> (not res!760385) (not e!648800))))

(declare-fun lt!507698 () array!74102)

(declare-datatypes ((List!25071 0))(
  ( (Nil!25068) (Cons!25067 (h!26276 (_ BitVec 64)) (t!36183 List!25071)) )
))
(declare-fun arrayNoDuplicates!0 (array!74102 (_ BitVec 32) List!25071) Bool)

(assert (=> b!1140278 (= res!760385 (arrayNoDuplicates!0 lt!507698 #b00000000000000000000000000000000 Nil!25068))))

(declare-fun mapNonEmpty!44789 () Bool)

(declare-fun mapRes!44789 () Bool)

(declare-fun tp!85050 () Bool)

(declare-fun e!648810 () Bool)

(assert (=> mapNonEmpty!44789 (= mapRes!44789 (and tp!85050 e!648810))))

(declare-fun mapKey!44789 () (_ BitVec 32))

(declare-fun mapRest!44789 () (Array (_ BitVec 32) ValueCell!13612))

(declare-fun mapValue!44789 () ValueCell!13612)

(assert (=> mapNonEmpty!44789 (= (arr!35699 _values!996) (store mapRest!44789 mapKey!44789 mapValue!44789))))

(declare-fun b!1140279 () Bool)

(declare-fun res!760390 () Bool)

(assert (=> b!1140279 (=> (not res!760390) (not e!648796))))

(assert (=> b!1140279 (= res!760390 (= (select (arr!35698 _keys!1208) i!673) k!934))))

(declare-fun b!1140280 () Bool)

(declare-fun e!648809 () Bool)

(declare-fun e!648801 () Bool)

(assert (=> b!1140280 (= e!648809 (and e!648801 mapRes!44789))))

(declare-fun condMapEmpty!44789 () Bool)

(declare-fun mapDefault!44789 () ValueCell!13612)

