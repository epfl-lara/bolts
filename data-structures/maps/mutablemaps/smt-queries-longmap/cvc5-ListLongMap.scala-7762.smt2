; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97352 () Bool)

(assert start!97352)

(declare-fun b_free!23287 () Bool)

(declare-fun b_next!23287 () Bool)

(assert (=> start!97352 (= b_free!23287 (not b_next!23287))))

(declare-fun tp!82160 () Bool)

(declare-fun b_and!37427 () Bool)

(assert (=> start!97352 (= tp!82160 b_and!37427)))

(declare-datatypes ((V!41857 0))(
  ( (V!41858 (val!13830 Int)) )
))
(declare-fun zeroValue!944 () V!41857)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46555 () Bool)

(declare-datatypes ((ValueCell!13064 0))(
  ( (ValueCellFull!13064 (v!16464 V!41857)) (EmptyCell!13064) )
))
(declare-datatypes ((array!71962 0))(
  ( (array!71963 (arr!34630 (Array (_ BitVec 32) ValueCell!13064)) (size!35167 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71962)

(declare-fun minValue!944 () V!41857)

(declare-datatypes ((array!71964 0))(
  ( (array!71965 (arr!34631 (Array (_ BitVec 32) (_ BitVec 64))) (size!35168 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71964)

(declare-datatypes ((tuple2!17544 0))(
  ( (tuple2!17545 (_1!8782 (_ BitVec 64)) (_2!8782 V!41857)) )
))
(declare-datatypes ((List!24280 0))(
  ( (Nil!24277) (Cons!24276 (h!25485 tuple2!17544) (t!34620 List!24280)) )
))
(declare-datatypes ((ListLongMap!15525 0))(
  ( (ListLongMap!15526 (toList!7778 List!24280)) )
))
(declare-fun call!46559 () ListLongMap!15525)

(declare-fun getCurrentListMapNoExtraKeys!4245 (array!71964 array!71962 (_ BitVec 32) (_ BitVec 32) V!41857 V!41857 (_ BitVec 32) Int) ListLongMap!15525)

(assert (=> bm!46555 (= call!46559 (getCurrentListMapNoExtraKeys!4245 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108519 () Bool)

(declare-fun res!739860 () Bool)

(declare-fun e!632409 () Bool)

(assert (=> b!1108519 (=> (not res!739860) (not e!632409))))

(assert (=> b!1108519 (= res!739860 (and (= (size!35167 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35168 _keys!1208) (size!35167 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108521 () Bool)

(declare-fun e!632405 () Bool)

(assert (=> b!1108521 (= e!632409 e!632405)))

(declare-fun res!739864 () Bool)

(assert (=> b!1108521 (=> (not res!739864) (not e!632405))))

(declare-fun lt!495807 () array!71964)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71964 (_ BitVec 32)) Bool)

(assert (=> b!1108521 (= res!739864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495807 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108521 (= lt!495807 (array!71965 (store (arr!34631 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35168 _keys!1208)))))

(declare-fun b!1108522 () Bool)

(declare-fun e!632407 () Bool)

(declare-fun call!46558 () ListLongMap!15525)

(assert (=> b!1108522 (= e!632407 (= call!46558 call!46559))))

(declare-fun mapNonEmpty!43138 () Bool)

(declare-fun mapRes!43138 () Bool)

(declare-fun tp!82161 () Bool)

(declare-fun e!632404 () Bool)

(assert (=> mapNonEmpty!43138 (= mapRes!43138 (and tp!82161 e!632404))))

(declare-fun mapRest!43138 () (Array (_ BitVec 32) ValueCell!13064))

(declare-fun mapKey!43138 () (_ BitVec 32))

(declare-fun mapValue!43138 () ValueCell!13064)

(assert (=> mapNonEmpty!43138 (= (arr!34630 _values!996) (store mapRest!43138 mapKey!43138 mapValue!43138))))

(declare-fun b!1108523 () Bool)

(declare-fun tp_is_empty!27547 () Bool)

(assert (=> b!1108523 (= e!632404 tp_is_empty!27547)))

(declare-fun b!1108524 () Bool)

(declare-fun res!739867 () Bool)

(assert (=> b!1108524 (=> (not res!739867) (not e!632409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108524 (= res!739867 (validMask!0 mask!1564))))

(declare-fun b!1108525 () Bool)

(declare-fun res!739868 () Bool)

(assert (=> b!1108525 (=> (not res!739868) (not e!632409))))

(declare-datatypes ((List!24281 0))(
  ( (Nil!24278) (Cons!24277 (h!25486 (_ BitVec 64)) (t!34621 List!24281)) )
))
(declare-fun arrayNoDuplicates!0 (array!71964 (_ BitVec 32) List!24281) Bool)

(assert (=> b!1108525 (= res!739868 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24278))))

(declare-fun b!1108526 () Bool)

(declare-fun e!632411 () Bool)

(assert (=> b!1108526 (= e!632411 tp_is_empty!27547)))

(declare-fun mapIsEmpty!43138 () Bool)

(assert (=> mapIsEmpty!43138 mapRes!43138))

(declare-fun b!1108527 () Bool)

(declare-fun res!739866 () Bool)

(assert (=> b!1108527 (=> (not res!739866) (not e!632409))))

(assert (=> b!1108527 (= res!739866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1108528 () Bool)

(declare-fun -!1009 (ListLongMap!15525 (_ BitVec 64)) ListLongMap!15525)

(assert (=> b!1108528 (= e!632407 (= call!46558 (-!1009 call!46559 k!934)))))

(declare-fun res!739861 () Bool)

(assert (=> start!97352 (=> (not res!739861) (not e!632409))))

(assert (=> start!97352 (= res!739861 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35168 _keys!1208))))))

(assert (=> start!97352 e!632409))

(assert (=> start!97352 tp_is_empty!27547))

(declare-fun array_inv!26514 (array!71964) Bool)

(assert (=> start!97352 (array_inv!26514 _keys!1208)))

(assert (=> start!97352 true))

(assert (=> start!97352 tp!82160))

(declare-fun e!632406 () Bool)

(declare-fun array_inv!26515 (array!71962) Bool)

(assert (=> start!97352 (and (array_inv!26515 _values!996) e!632406)))

(declare-fun b!1108520 () Bool)

(declare-fun res!739863 () Bool)

(assert (=> b!1108520 (=> (not res!739863) (not e!632409))))

(assert (=> b!1108520 (= res!739863 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35168 _keys!1208))))))

(declare-fun b!1108529 () Bool)

(declare-fun e!632408 () Bool)

(assert (=> b!1108529 (= e!632405 (not e!632408))))

(declare-fun res!739862 () Bool)

(assert (=> b!1108529 (=> res!739862 e!632408)))

(assert (=> b!1108529 (= res!739862 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35168 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108529 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36307 0))(
  ( (Unit!36308) )
))
(declare-fun lt!495806 () Unit!36307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71964 (_ BitVec 64) (_ BitVec 32)) Unit!36307)

(assert (=> b!1108529 (= lt!495806 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108530 () Bool)

(assert (=> b!1108530 (= e!632408 true)))

(assert (=> b!1108530 e!632407))

(declare-fun c!109070 () Bool)

(assert (=> b!1108530 (= c!109070 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495805 () Unit!36307)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!262 (array!71964 array!71962 (_ BitVec 32) (_ BitVec 32) V!41857 V!41857 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36307)

(assert (=> b!1108530 (= lt!495805 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!262 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108531 () Bool)

(assert (=> b!1108531 (= e!632406 (and e!632411 mapRes!43138))))

(declare-fun condMapEmpty!43138 () Bool)

(declare-fun mapDefault!43138 () ValueCell!13064)

