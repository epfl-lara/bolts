; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101498 () Bool)

(assert start!101498)

(declare-fun b_free!26279 () Bool)

(declare-fun b_next!26279 () Bool)

(assert (=> start!101498 (= b_free!26279 (not b_next!26279))))

(declare-fun tp!91872 () Bool)

(declare-fun b_and!43757 () Bool)

(assert (=> start!101498 (= tp!91872 b_and!43757)))

(declare-fun b!1219352 () Bool)

(declare-fun res!809963 () Bool)

(declare-fun e!692383 () Bool)

(assert (=> b!1219352 (=> (not res!809963) (not e!692383))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219352 (= res!809963 (validMask!0 mask!1564))))

(declare-fun b!1219353 () Bool)

(declare-fun res!809954 () Bool)

(declare-fun e!692388 () Bool)

(assert (=> b!1219353 (=> (not res!809954) (not e!692388))))

(declare-datatypes ((array!78718 0))(
  ( (array!78719 (arr!37986 (Array (_ BitVec 32) (_ BitVec 64))) (size!38523 (_ BitVec 32))) )
))
(declare-fun lt!554365 () array!78718)

(declare-datatypes ((List!26959 0))(
  ( (Nil!26956) (Cons!26955 (h!28164 (_ BitVec 64)) (t!40225 List!26959)) )
))
(declare-fun arrayNoDuplicates!0 (array!78718 (_ BitVec 32) List!26959) Bool)

(assert (=> b!1219353 (= res!809954 (arrayNoDuplicates!0 lt!554365 #b00000000000000000000000000000000 Nil!26956))))

(declare-fun b!1219354 () Bool)

(declare-fun res!809956 () Bool)

(assert (=> b!1219354 (=> (not res!809956) (not e!692383))))

(declare-fun _keys!1208 () array!78718)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46437 0))(
  ( (V!46438 (val!15548 Int)) )
))
(declare-datatypes ((ValueCell!14782 0))(
  ( (ValueCellFull!14782 (v!18206 V!46437)) (EmptyCell!14782) )
))
(declare-datatypes ((array!78720 0))(
  ( (array!78721 (arr!37987 (Array (_ BitVec 32) ValueCell!14782)) (size!38524 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78720)

(assert (=> b!1219354 (= res!809956 (and (= (size!38524 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38523 _keys!1208) (size!38524 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1219355 () Bool)

(declare-fun res!809967 () Bool)

(assert (=> b!1219355 (=> (not res!809967) (not e!692383))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1219355 (= res!809967 (= (select (arr!37986 _keys!1208) i!673) k!934))))

(declare-fun b!1219356 () Bool)

(declare-fun e!692386 () Bool)

(declare-fun tp_is_empty!30983 () Bool)

(assert (=> b!1219356 (= e!692386 tp_is_empty!30983)))

(declare-fun b!1219357 () Bool)

(declare-fun e!692378 () Bool)

(declare-fun e!692380 () Bool)

(assert (=> b!1219357 (= e!692378 e!692380)))

(declare-fun res!809960 () Bool)

(assert (=> b!1219357 (=> res!809960 e!692380)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1219357 (= res!809960 (not (validKeyInArray!0 (select (arr!37986 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!20140 0))(
  ( (tuple2!20141 (_1!10080 (_ BitVec 64)) (_2!10080 V!46437)) )
))
(declare-datatypes ((List!26960 0))(
  ( (Nil!26957) (Cons!26956 (h!28165 tuple2!20140) (t!40226 List!26960)) )
))
(declare-datatypes ((ListLongMap!18121 0))(
  ( (ListLongMap!18122 (toList!9076 List!26960)) )
))
(declare-fun lt!554364 () ListLongMap!18121)

(declare-fun lt!554370 () ListLongMap!18121)

(assert (=> b!1219357 (= lt!554364 lt!554370)))

(declare-fun lt!554369 () ListLongMap!18121)

(declare-fun -!1931 (ListLongMap!18121 (_ BitVec 64)) ListLongMap!18121)

(assert (=> b!1219357 (= lt!554370 (-!1931 lt!554369 k!934))))

(declare-fun zeroValue!944 () V!46437)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46437)

(declare-fun lt!554362 () array!78720)

(declare-fun getCurrentListMapNoExtraKeys!5477 (array!78718 array!78720 (_ BitVec 32) (_ BitVec 32) V!46437 V!46437 (_ BitVec 32) Int) ListLongMap!18121)

(assert (=> b!1219357 (= lt!554364 (getCurrentListMapNoExtraKeys!5477 lt!554365 lt!554362 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1219357 (= lt!554369 (getCurrentListMapNoExtraKeys!5477 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40330 0))(
  ( (Unit!40331) )
))
(declare-fun lt!554368 () Unit!40330)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1133 (array!78718 array!78720 (_ BitVec 32) (_ BitVec 32) V!46437 V!46437 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40330)

(assert (=> b!1219357 (= lt!554368 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1133 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1219358 () Bool)

(declare-fun e!692385 () Bool)

(declare-fun e!692377 () Bool)

(declare-fun mapRes!48361 () Bool)

(assert (=> b!1219358 (= e!692385 (and e!692377 mapRes!48361))))

(declare-fun condMapEmpty!48361 () Bool)

(declare-fun mapDefault!48361 () ValueCell!14782)

