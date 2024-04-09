; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98064 () Bool)

(assert start!98064)

(declare-fun b_free!23729 () Bool)

(declare-fun b_next!23729 () Bool)

(assert (=> start!98064 (= b_free!23729 (not b_next!23729))))

(declare-fun tp!83891 () Bool)

(declare-fun b_and!38263 () Bool)

(assert (=> start!98064 (= tp!83891 b_and!38263)))

(declare-fun b!1124920 () Bool)

(declare-fun e!640396 () Bool)

(declare-fun e!640398 () Bool)

(assert (=> b!1124920 (= e!640396 e!640398)))

(declare-fun res!751730 () Bool)

(assert (=> b!1124920 (=> res!751730 e!640398)))

(declare-datatypes ((V!42805 0))(
  ( (V!42806 (val!14186 Int)) )
))
(declare-datatypes ((tuple2!17906 0))(
  ( (tuple2!17907 (_1!8963 (_ BitVec 64)) (_2!8963 V!42805)) )
))
(declare-datatypes ((List!24736 0))(
  ( (Nil!24733) (Cons!24732 (h!25941 tuple2!17906) (t!35464 List!24736)) )
))
(declare-datatypes ((ListLongMap!15887 0))(
  ( (ListLongMap!15888 (toList!7959 List!24736)) )
))
(declare-fun lt!499641 () ListLongMap!15887)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6470 (ListLongMap!15887 (_ BitVec 64)) Bool)

(assert (=> b!1124920 (= res!751730 (not (contains!6470 lt!499641 k!934)))))

(declare-fun zeroValue!944 () V!42805)

(declare-datatypes ((array!73342 0))(
  ( (array!73343 (arr!35320 (Array (_ BitVec 32) (_ BitVec 64))) (size!35857 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73342)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13420 0))(
  ( (ValueCellFull!13420 (v!16820 V!42805)) (EmptyCell!13420) )
))
(declare-datatypes ((array!73344 0))(
  ( (array!73345 (arr!35321 (Array (_ BitVec 32) ValueCell!13420)) (size!35858 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73344)

(declare-fun minValue!944 () V!42805)

(declare-fun getCurrentListMapNoExtraKeys!4418 (array!73342 array!73344 (_ BitVec 32) (_ BitVec 32) V!42805 V!42805 (_ BitVec 32) Int) ListLongMap!15887)

(assert (=> b!1124920 (= lt!499641 (getCurrentListMapNoExtraKeys!4418 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47471 () ListLongMap!15887)

(declare-fun lt!499634 () array!73344)

(declare-fun bm!47467 () Bool)

(declare-fun lt!499638 () array!73342)

(assert (=> bm!47467 (= call!47471 (getCurrentListMapNoExtraKeys!4418 lt!499638 lt!499634 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124921 () Bool)

(declare-fun res!751724 () Bool)

(declare-fun e!640405 () Bool)

(assert (=> b!1124921 (=> (not res!751724) (not e!640405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73342 (_ BitVec 32)) Bool)

(assert (=> b!1124921 (= res!751724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124922 () Bool)

(declare-fun res!751720 () Bool)

(assert (=> b!1124922 (=> res!751720 e!640398)))

(assert (=> b!1124922 (= res!751720 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124923 () Bool)

(declare-fun res!751722 () Bool)

(assert (=> b!1124923 (=> (not res!751722) (not e!640405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124923 (= res!751722 (validMask!0 mask!1564))))

(declare-fun b!1124924 () Bool)

(declare-fun res!751726 () Bool)

(assert (=> b!1124924 (=> (not res!751726) (not e!640405))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124924 (= res!751726 (= (select (arr!35320 _keys!1208) i!673) k!934))))

(declare-fun b!1124925 () Bool)

(declare-fun e!640400 () Bool)

(declare-fun tp_is_empty!28259 () Bool)

(assert (=> b!1124925 (= e!640400 tp_is_empty!28259)))

(declare-fun b!1124926 () Bool)

(declare-fun res!751727 () Bool)

(declare-fun e!640404 () Bool)

(assert (=> b!1124926 (=> (not res!751727) (not e!640404))))

(declare-datatypes ((List!24737 0))(
  ( (Nil!24734) (Cons!24733 (h!25942 (_ BitVec 64)) (t!35465 List!24737)) )
))
(declare-fun arrayNoDuplicates!0 (array!73342 (_ BitVec 32) List!24737) Bool)

(assert (=> b!1124926 (= res!751727 (arrayNoDuplicates!0 lt!499638 #b00000000000000000000000000000000 Nil!24734))))

(declare-fun b!1124927 () Bool)

(declare-fun e!640406 () Bool)

(assert (=> b!1124927 (= e!640406 e!640396)))

(declare-fun res!751729 () Bool)

(assert (=> b!1124927 (=> res!751729 e!640396)))

(assert (=> b!1124927 (= res!751729 (not (= (select (arr!35320 _keys!1208) from!1455) k!934)))))

(declare-fun e!640402 () Bool)

(assert (=> b!1124927 e!640402))

(declare-fun c!109544 () Bool)

(assert (=> b!1124927 (= c!109544 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36815 0))(
  ( (Unit!36816) )
))
(declare-fun lt!499639 () Unit!36815)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!361 (array!73342 array!73344 (_ BitVec 32) (_ BitVec 32) V!42805 V!42805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36815)

(assert (=> b!1124927 (= lt!499639 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124928 () Bool)

(declare-fun e!640403 () Bool)

(assert (=> b!1124928 (= e!640404 (not e!640403))))

(declare-fun res!751721 () Bool)

(assert (=> b!1124928 (=> res!751721 e!640403)))

(assert (=> b!1124928 (= res!751721 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124928 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499637 () Unit!36815)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73342 (_ BitVec 64) (_ BitVec 32)) Unit!36815)

(assert (=> b!1124928 (= lt!499637 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1124929 () Bool)

(assert (=> b!1124929 (= e!640405 e!640404)))

(declare-fun res!751723 () Bool)

(assert (=> b!1124929 (=> (not res!751723) (not e!640404))))

(assert (=> b!1124929 (= res!751723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499638 mask!1564))))

(assert (=> b!1124929 (= lt!499638 (array!73343 (store (arr!35320 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35857 _keys!1208)))))

(declare-fun b!1124930 () Bool)

(declare-fun res!751731 () Bool)

(assert (=> b!1124930 (=> (not res!751731) (not e!640405))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124930 (= res!751731 (validKeyInArray!0 k!934))))

(declare-fun res!751725 () Bool)

(assert (=> start!98064 (=> (not res!751725) (not e!640405))))

(assert (=> start!98064 (= res!751725 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35857 _keys!1208))))))

(assert (=> start!98064 e!640405))

(assert (=> start!98064 tp_is_empty!28259))

(declare-fun array_inv!26984 (array!73342) Bool)

(assert (=> start!98064 (array_inv!26984 _keys!1208)))

(assert (=> start!98064 true))

(assert (=> start!98064 tp!83891))

(declare-fun e!640397 () Bool)

(declare-fun array_inv!26985 (array!73344) Bool)

(assert (=> start!98064 (and (array_inv!26985 _values!996) e!640397)))

(declare-fun mapIsEmpty!44206 () Bool)

(declare-fun mapRes!44206 () Bool)

(assert (=> mapIsEmpty!44206 mapRes!44206))

(declare-fun b!1124931 () Bool)

(declare-fun call!47470 () ListLongMap!15887)

(assert (=> b!1124931 (= e!640402 (= call!47471 call!47470))))

(declare-fun mapNonEmpty!44206 () Bool)

(declare-fun tp!83892 () Bool)

(assert (=> mapNonEmpty!44206 (= mapRes!44206 (and tp!83892 e!640400))))

(declare-fun mapKey!44206 () (_ BitVec 32))

(declare-fun mapRest!44206 () (Array (_ BitVec 32) ValueCell!13420))

(declare-fun mapValue!44206 () ValueCell!13420)

(assert (=> mapNonEmpty!44206 (= (arr!35321 _values!996) (store mapRest!44206 mapKey!44206 mapValue!44206))))

(declare-fun b!1124932 () Bool)

(declare-fun e!640401 () Bool)

(assert (=> b!1124932 (= e!640397 (and e!640401 mapRes!44206))))

(declare-fun condMapEmpty!44206 () Bool)

(declare-fun mapDefault!44206 () ValueCell!13420)

