; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97410 () Bool)

(assert start!97410)

(declare-fun b_free!23345 () Bool)

(declare-fun b_next!23345 () Bool)

(assert (=> start!97410 (= b_free!23345 (not b_next!23345))))

(declare-fun tp!82334 () Bool)

(declare-fun b_and!37547 () Bool)

(assert (=> start!97410 (= tp!82334 b_and!37547)))

(declare-fun b!1109993 () Bool)

(declare-fun res!740825 () Bool)

(declare-fun e!633114 () Bool)

(assert (=> b!1109993 (=> (not res!740825) (not e!633114))))

(declare-datatypes ((array!72076 0))(
  ( (array!72077 (arr!34687 (Array (_ BitVec 32) (_ BitVec 64))) (size!35224 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72076)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72076 (_ BitVec 32)) Bool)

(assert (=> b!1109993 (= res!740825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43225 () Bool)

(declare-fun mapRes!43225 () Bool)

(assert (=> mapIsEmpty!43225 mapRes!43225))

(declare-fun b!1109994 () Bool)

(declare-fun res!740817 () Bool)

(assert (=> b!1109994 (=> (not res!740817) (not e!633114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109994 (= res!740817 (validMask!0 mask!1564))))

(declare-fun b!1109995 () Bool)

(declare-fun res!740822 () Bool)

(assert (=> b!1109995 (=> (not res!740822) (not e!633114))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41933 0))(
  ( (V!41934 (val!13859 Int)) )
))
(declare-datatypes ((ValueCell!13093 0))(
  ( (ValueCellFull!13093 (v!16493 V!41933)) (EmptyCell!13093) )
))
(declare-datatypes ((array!72078 0))(
  ( (array!72079 (arr!34688 (Array (_ BitVec 32) ValueCell!13093)) (size!35225 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72078)

(assert (=> b!1109995 (= res!740822 (and (= (size!35225 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35224 _keys!1208) (size!35225 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109996 () Bool)

(declare-fun e!633119 () Bool)

(declare-fun tp_is_empty!27605 () Bool)

(assert (=> b!1109996 (= e!633119 tp_is_empty!27605)))

(declare-fun b!1109998 () Bool)

(declare-fun res!740823 () Bool)

(assert (=> b!1109998 (=> (not res!740823) (not e!633114))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1109998 (= res!740823 (= (select (arr!34687 _keys!1208) i!673) k!934))))

(declare-fun b!1109999 () Bool)

(declare-fun e!633113 () Bool)

(assert (=> b!1109999 (= e!633113 true)))

(declare-fun e!633116 () Bool)

(assert (=> b!1109999 e!633116))

(declare-fun c!109169 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1109999 (= c!109169 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41933)

(declare-datatypes ((Unit!36347 0))(
  ( (Unit!36348) )
))
(declare-fun lt!496068 () Unit!36347)

(declare-fun zeroValue!944 () V!41933)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!280 (array!72076 array!72078 (_ BitVec 32) (_ BitVec 32) V!41933 V!41933 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36347)

(assert (=> b!1109999 (= lt!496068 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!280 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43225 () Bool)

(declare-fun tp!82335 () Bool)

(assert (=> mapNonEmpty!43225 (= mapRes!43225 (and tp!82335 e!633119))))

(declare-fun mapKey!43225 () (_ BitVec 32))

(declare-fun mapRest!43225 () (Array (_ BitVec 32) ValueCell!13093))

(declare-fun mapValue!43225 () ValueCell!13093)

(assert (=> mapNonEmpty!43225 (= (arr!34688 _values!996) (store mapRest!43225 mapKey!43225 mapValue!43225))))

(declare-fun b!1110000 () Bool)

(declare-fun e!633112 () Bool)

(assert (=> b!1110000 (= e!633114 e!633112)))

(declare-fun res!740821 () Bool)

(assert (=> b!1110000 (=> (not res!740821) (not e!633112))))

(declare-fun lt!496067 () array!72076)

(assert (=> b!1110000 (= res!740821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496067 mask!1564))))

(assert (=> b!1110000 (= lt!496067 (array!72077 (store (arr!34687 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35224 _keys!1208)))))

(declare-fun b!1110001 () Bool)

(declare-datatypes ((tuple2!17590 0))(
  ( (tuple2!17591 (_1!8805 (_ BitVec 64)) (_2!8805 V!41933)) )
))
(declare-datatypes ((List!24326 0))(
  ( (Nil!24323) (Cons!24322 (h!25531 tuple2!17590) (t!34724 List!24326)) )
))
(declare-datatypes ((ListLongMap!15571 0))(
  ( (ListLongMap!15572 (toList!7801 List!24326)) )
))
(declare-fun call!46733 () ListLongMap!15571)

(declare-fun call!46732 () ListLongMap!15571)

(assert (=> b!1110001 (= e!633116 (= call!46733 call!46732))))

(declare-fun bm!46729 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4264 (array!72076 array!72078 (_ BitVec 32) (_ BitVec 32) V!41933 V!41933 (_ BitVec 32) Int) ListLongMap!15571)

(declare-fun dynLambda!2387 (Int (_ BitVec 64)) V!41933)

(assert (=> bm!46729 (= call!46733 (getCurrentListMapNoExtraKeys!4264 lt!496067 (array!72079 (store (arr!34688 _values!996) i!673 (ValueCellFull!13093 (dynLambda!2387 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35225 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110002 () Bool)

(declare-fun e!633118 () Bool)

(assert (=> b!1110002 (= e!633118 tp_is_empty!27605)))

(declare-fun b!1110003 () Bool)

(declare-fun res!740816 () Bool)

(assert (=> b!1110003 (=> (not res!740816) (not e!633114))))

(declare-datatypes ((List!24327 0))(
  ( (Nil!24324) (Cons!24323 (h!25532 (_ BitVec 64)) (t!34725 List!24327)) )
))
(declare-fun arrayNoDuplicates!0 (array!72076 (_ BitVec 32) List!24327) Bool)

(assert (=> b!1110003 (= res!740816 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24324))))

(declare-fun b!1110004 () Bool)

(declare-fun res!740824 () Bool)

(assert (=> b!1110004 (=> (not res!740824) (not e!633112))))

(assert (=> b!1110004 (= res!740824 (arrayNoDuplicates!0 lt!496067 #b00000000000000000000000000000000 Nil!24324))))

(declare-fun b!1110005 () Bool)

(declare-fun e!633117 () Bool)

(assert (=> b!1110005 (= e!633117 (and e!633118 mapRes!43225))))

(declare-fun condMapEmpty!43225 () Bool)

(declare-fun mapDefault!43225 () ValueCell!13093)

