; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98208 () Bool)

(assert start!98208)

(declare-fun b_free!23873 () Bool)

(declare-fun b_next!23873 () Bool)

(assert (=> start!98208 (= b_free!23873 (not b_next!23873))))

(declare-fun tp!84324 () Bool)

(declare-fun b_and!38551 () Bool)

(assert (=> start!98208 (= tp!84324 b_and!38551)))

(declare-fun b!1129090 () Bool)

(declare-fun res!754622 () Bool)

(declare-fun e!642636 () Bool)

(assert (=> b!1129090 (=> (not res!754622) (not e!642636))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129090 (= res!754622 (validMask!0 mask!1564))))

(declare-fun b!1129091 () Bool)

(declare-fun e!642625 () Bool)

(declare-fun tp_is_empty!28403 () Bool)

(assert (=> b!1129091 (= e!642625 tp_is_empty!28403)))

(declare-fun b!1129092 () Bool)

(declare-fun e!642634 () Bool)

(declare-datatypes ((V!42997 0))(
  ( (V!42998 (val!14258 Int)) )
))
(declare-datatypes ((tuple2!18040 0))(
  ( (tuple2!18041 (_1!9030 (_ BitVec 64)) (_2!9030 V!42997)) )
))
(declare-datatypes ((List!24860 0))(
  ( (Nil!24857) (Cons!24856 (h!26065 tuple2!18040) (t!35732 List!24860)) )
))
(declare-datatypes ((ListLongMap!16021 0))(
  ( (ListLongMap!16022 (toList!8026 List!24860)) )
))
(declare-fun call!47954 () ListLongMap!16021)

(declare-fun call!47950 () ListLongMap!16021)

(assert (=> b!1129092 (= e!642634 (= call!47954 call!47950))))

(declare-fun b!1129093 () Bool)

(declare-fun c!109784 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!501234 () Bool)

(assert (=> b!1129093 (= c!109784 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501234))))

(declare-datatypes ((Unit!36939 0))(
  ( (Unit!36940) )
))
(declare-fun e!642637 () Unit!36939)

(declare-fun e!642638 () Unit!36939)

(assert (=> b!1129093 (= e!642637 e!642638)))

(declare-fun b!1129094 () Bool)

(declare-fun res!754620 () Bool)

(assert (=> b!1129094 (=> (not res!754620) (not e!642636))))

(declare-datatypes ((array!73624 0))(
  ( (array!73625 (arr!35461 (Array (_ BitVec 32) (_ BitVec 64))) (size!35998 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73624)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73624 (_ BitVec 32)) Bool)

(assert (=> b!1129094 (= res!754620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!42997)

(declare-fun call!47953 () Unit!36939)

(declare-fun lt!501233 () ListLongMap!16021)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!109785 () Bool)

(declare-fun bm!47947 () Bool)

(declare-fun minValue!944 () V!42997)

(declare-fun c!109786 () Bool)

(declare-fun addStillContains!693 (ListLongMap!16021 (_ BitVec 64) V!42997 (_ BitVec 64)) Unit!36939)

(assert (=> bm!47947 (= call!47953 (addStillContains!693 lt!501233 (ite (or c!109786 c!109785) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109786 c!109785) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1129095 () Bool)

(declare-fun e!642624 () Unit!36939)

(declare-fun lt!501227 () Unit!36939)

(assert (=> b!1129095 (= e!642624 lt!501227)))

(declare-fun lt!501220 () Unit!36939)

(assert (=> b!1129095 (= lt!501220 call!47953)))

(declare-fun lt!501225 () ListLongMap!16021)

(declare-fun +!3394 (ListLongMap!16021 tuple2!18040) ListLongMap!16021)

(assert (=> b!1129095 (= lt!501225 (+!3394 lt!501233 (tuple2!18041 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!47956 () Bool)

(assert (=> b!1129095 call!47956))

(assert (=> b!1129095 (= lt!501227 (addStillContains!693 lt!501225 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!47957 () ListLongMap!16021)

(declare-fun contains!6520 (ListLongMap!16021 (_ BitVec 64)) Bool)

(assert (=> b!1129095 (contains!6520 call!47957 k!934)))

(declare-fun b!1129096 () Bool)

(declare-fun e!642633 () Bool)

(declare-fun mapRes!44422 () Bool)

(assert (=> b!1129096 (= e!642633 (and e!642625 mapRes!44422))))

(declare-fun condMapEmpty!44422 () Bool)

(declare-datatypes ((ValueCell!13492 0))(
  ( (ValueCellFull!13492 (v!16892 V!42997)) (EmptyCell!13492) )
))
(declare-datatypes ((array!73626 0))(
  ( (array!73627 (arr!35462 (Array (_ BitVec 32) ValueCell!13492)) (size!35999 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73626)

(declare-fun mapDefault!44422 () ValueCell!13492)

