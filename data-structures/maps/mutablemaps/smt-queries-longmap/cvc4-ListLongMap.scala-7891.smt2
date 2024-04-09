; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98130 () Bool)

(assert start!98130)

(declare-fun b_free!23795 () Bool)

(declare-fun b_next!23795 () Bool)

(assert (=> start!98130 (= b_free!23795 (not b_next!23795))))

(declare-fun tp!84089 () Bool)

(declare-fun b_and!38395 () Bool)

(assert (=> start!98130 (= tp!84089 b_and!38395)))

(declare-fun b!1126824 () Bool)

(declare-fun res!753063 () Bool)

(declare-fun e!641422 () Bool)

(assert (=> b!1126824 (=> (not res!753063) (not e!641422))))

(declare-datatypes ((array!73472 0))(
  ( (array!73473 (arr!35385 (Array (_ BitVec 32) (_ BitVec 64))) (size!35922 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73472)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1126824 (= res!753063 (= (select (arr!35385 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!42893 0))(
  ( (V!42894 (val!14219 Int)) )
))
(declare-fun zeroValue!944 () V!42893)

(declare-datatypes ((tuple2!17970 0))(
  ( (tuple2!17971 (_1!8995 (_ BitVec 64)) (_2!8995 V!42893)) )
))
(declare-datatypes ((List!24797 0))(
  ( (Nil!24794) (Cons!24793 (h!26002 tuple2!17970) (t!35591 List!24797)) )
))
(declare-datatypes ((ListLongMap!15951 0))(
  ( (ListLongMap!15952 (toList!7991 List!24797)) )
))
(declare-fun call!47669 () ListLongMap!15951)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13453 0))(
  ( (ValueCellFull!13453 (v!16853 V!42893)) (EmptyCell!13453) )
))
(declare-datatypes ((array!73474 0))(
  ( (array!73475 (arr!35386 (Array (_ BitVec 32) ValueCell!13453)) (size!35923 (_ BitVec 32))) )
))
(declare-fun lt!500360 () array!73474)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!47665 () Bool)

(declare-fun lt!500361 () array!73472)

(declare-fun minValue!944 () V!42893)

(declare-fun getCurrentListMapNoExtraKeys!4450 (array!73472 array!73474 (_ BitVec 32) (_ BitVec 32) V!42893 V!42893 (_ BitVec 32) Int) ListLongMap!15951)

(assert (=> bm!47665 (= call!47669 (getCurrentListMapNoExtraKeys!4450 lt!500361 lt!500360 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126825 () Bool)

(declare-fun e!641416 () Bool)

(declare-fun tp_is_empty!28325 () Bool)

(assert (=> b!1126825 (= e!641416 tp_is_empty!28325)))

(declare-fun b!1126826 () Bool)

(declare-fun res!753065 () Bool)

(assert (=> b!1126826 (=> (not res!753065) (not e!641422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126826 (= res!753065 (validMask!0 mask!1564))))

(declare-fun b!1126827 () Bool)

(declare-fun e!641419 () Bool)

(declare-fun e!641418 () Bool)

(assert (=> b!1126827 (= e!641419 e!641418)))

(declare-fun res!753069 () Bool)

(assert (=> b!1126827 (=> res!753069 e!641418)))

(assert (=> b!1126827 (= res!753069 (not (= from!1455 i!673)))))

(declare-fun lt!500359 () ListLongMap!15951)

(assert (=> b!1126827 (= lt!500359 (getCurrentListMapNoExtraKeys!4450 lt!500361 lt!500360 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73474)

(declare-fun dynLambda!2530 (Int (_ BitVec 64)) V!42893)

(assert (=> b!1126827 (= lt!500360 (array!73475 (store (arr!35386 _values!996) i!673 (ValueCellFull!13453 (dynLambda!2530 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35923 _values!996)))))

(declare-fun lt!500357 () ListLongMap!15951)

(assert (=> b!1126827 (= lt!500357 (getCurrentListMapNoExtraKeys!4450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126828 () Bool)

(declare-fun e!641415 () Bool)

(assert (=> b!1126828 (= e!641422 e!641415)))

(declare-fun res!753066 () Bool)

(assert (=> b!1126828 (=> (not res!753066) (not e!641415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73472 (_ BitVec 32)) Bool)

(assert (=> b!1126828 (= res!753066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500361 mask!1564))))

(assert (=> b!1126828 (= lt!500361 (array!73473 (store (arr!35385 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35922 _keys!1208)))))

(declare-fun b!1126829 () Bool)

(declare-fun e!641423 () Bool)

(assert (=> b!1126829 (= e!641423 true)))

(declare-fun lt!500358 () Bool)

(declare-fun contains!6498 (ListLongMap!15951 (_ BitVec 64)) Bool)

(assert (=> b!1126829 (= lt!500358 (contains!6498 (getCurrentListMapNoExtraKeys!4450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1126830 () Bool)

(declare-fun e!641417 () Bool)

(declare-fun e!641421 () Bool)

(declare-fun mapRes!44305 () Bool)

(assert (=> b!1126830 (= e!641417 (and e!641421 mapRes!44305))))

(declare-fun condMapEmpty!44305 () Bool)

(declare-fun mapDefault!44305 () ValueCell!13453)

