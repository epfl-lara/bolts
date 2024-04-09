; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98418 () Bool)

(assert start!98418)

(declare-fun b_free!23987 () Bool)

(declare-fun b_next!23987 () Bool)

(assert (=> start!98418 (= b_free!23987 (not b_next!23987))))

(declare-fun tp!84672 () Bool)

(declare-fun b_and!38837 () Bool)

(assert (=> start!98418 (= tp!84672 b_and!38837)))

(declare-fun b!1134538 () Bool)

(declare-fun e!645715 () Bool)

(declare-fun e!645721 () Bool)

(assert (=> b!1134538 (= e!645715 e!645721)))

(declare-fun res!757485 () Bool)

(assert (=> b!1134538 (=> (not res!757485) (not e!645721))))

(declare-datatypes ((array!73856 0))(
  ( (array!73857 (arr!35575 (Array (_ BitVec 32) (_ BitVec 64))) (size!36112 (_ BitVec 32))) )
))
(declare-fun lt!504256 () array!73856)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73856 (_ BitVec 32)) Bool)

(assert (=> b!1134538 (= res!757485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504256 mask!1564))))

(declare-fun _keys!1208 () array!73856)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134538 (= lt!504256 (array!73857 (store (arr!35575 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36112 _keys!1208)))))

(declare-fun mapIsEmpty!44600 () Bool)

(declare-fun mapRes!44600 () Bool)

(assert (=> mapIsEmpty!44600 mapRes!44600))

(declare-fun b!1134539 () Bool)

(declare-fun res!757484 () Bool)

(assert (=> b!1134539 (=> (not res!757484) (not e!645715))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134539 (= res!757484 (validKeyInArray!0 k!934))))

(declare-datatypes ((V!43149 0))(
  ( (V!43150 (val!14315 Int)) )
))
(declare-datatypes ((tuple2!18152 0))(
  ( (tuple2!18153 (_1!9086 (_ BitVec 64)) (_2!9086 V!43149)) )
))
(declare-datatypes ((List!24964 0))(
  ( (Nil!24961) (Cons!24960 (h!26169 tuple2!18152) (t!35950 List!24964)) )
))
(declare-datatypes ((ListLongMap!16133 0))(
  ( (ListLongMap!16134 (toList!8082 List!24964)) )
))
(declare-fun lt!504246 () ListLongMap!16133)

(declare-fun call!49390 () ListLongMap!16133)

(declare-fun call!49392 () Bool)

(declare-fun c!110756 () Bool)

(declare-fun bm!49382 () Bool)

(declare-fun contains!6577 (ListLongMap!16133 (_ BitVec 64)) Bool)

(assert (=> bm!49382 (= call!49392 (contains!6577 (ite c!110756 lt!504246 call!49390) k!934))))

(declare-fun b!1134540 () Bool)

(declare-fun e!645708 () Bool)

(declare-fun e!645717 () Bool)

(assert (=> b!1134540 (= e!645708 e!645717)))

(declare-fun res!757489 () Bool)

(assert (=> b!1134540 (=> res!757489 e!645717)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1134540 (= res!757489 (or (bvsge (size!36112 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36112 _keys!1208)) (bvsge from!1455 (size!36112 _keys!1208))))))

(declare-datatypes ((List!24965 0))(
  ( (Nil!24962) (Cons!24961 (h!26170 (_ BitVec 64)) (t!35951 List!24965)) )
))
(declare-fun arrayNoDuplicates!0 (array!73856 (_ BitVec 32) List!24965) Bool)

(assert (=> b!1134540 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24962)))

(declare-datatypes ((Unit!37115 0))(
  ( (Unit!37116) )
))
(declare-fun lt!504255 () Unit!37115)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73856 (_ BitVec 32) (_ BitVec 32)) Unit!37115)

(assert (=> b!1134540 (= lt!504255 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!645722 () Bool)

(assert (=> b!1134540 e!645722))

(declare-fun res!757493 () Bool)

(assert (=> b!1134540 (=> (not res!757493) (not e!645722))))

(declare-fun e!645707 () Bool)

(assert (=> b!1134540 (= res!757493 e!645707)))

(declare-fun c!110754 () Bool)

(assert (=> b!1134540 (= c!110754 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!43149)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!504251 () Unit!37115)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13549 0))(
  ( (ValueCellFull!13549 (v!16953 V!43149)) (EmptyCell!13549) )
))
(declare-datatypes ((array!73858 0))(
  ( (array!73859 (arr!35576 (Array (_ BitVec 32) ValueCell!13549)) (size!36113 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73858)

(declare-fun minValue!944 () V!43149)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!349 (array!73856 array!73858 (_ BitVec 32) (_ BitVec 32) V!43149 V!43149 (_ BitVec 64) (_ BitVec 32) Int) Unit!37115)

(assert (=> b!1134540 (= lt!504251 (lemmaListMapContainsThenArrayContainsFrom!349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504257 () Unit!37115)

(declare-fun e!645710 () Unit!37115)

(assert (=> b!1134540 (= lt!504257 e!645710)))

(declare-fun lt!504253 () Bool)

(assert (=> b!1134540 (= c!110756 (and (not lt!504253) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134540 (= lt!504253 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1134541 () Bool)

(declare-fun e!645709 () Bool)

(declare-fun tp_is_empty!28517 () Bool)

(assert (=> b!1134541 (= e!645709 tp_is_empty!28517)))

(declare-fun b!1134542 () Bool)

(declare-fun e!645714 () Bool)

(declare-fun call!49389 () ListLongMap!16133)

(declare-fun call!49386 () ListLongMap!16133)

(assert (=> b!1134542 (= e!645714 (= call!49389 call!49386))))

(declare-fun b!1134543 () Bool)

(declare-fun e!645713 () Bool)

(declare-fun e!645723 () Bool)

(assert (=> b!1134543 (= e!645713 e!645723)))

(declare-fun res!757483 () Bool)

(assert (=> b!1134543 (=> res!757483 e!645723)))

(assert (=> b!1134543 (= res!757483 (not (= from!1455 i!673)))))

(declare-fun lt!504250 () array!73858)

(declare-fun lt!504254 () ListLongMap!16133)

(declare-fun getCurrentListMapNoExtraKeys!4531 (array!73856 array!73858 (_ BitVec 32) (_ BitVec 32) V!43149 V!43149 (_ BitVec 32) Int) ListLongMap!16133)

(assert (=> b!1134543 (= lt!504254 (getCurrentListMapNoExtraKeys!4531 lt!504256 lt!504250 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2599 (Int (_ BitVec 64)) V!43149)

(assert (=> b!1134543 (= lt!504250 (array!73859 (store (arr!35576 _values!996) i!673 (ValueCellFull!13549 (dynLambda!2599 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36113 _values!996)))))

(declare-fun lt!504252 () ListLongMap!16133)

(assert (=> b!1134543 (= lt!504252 (getCurrentListMapNoExtraKeys!4531 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134544 () Bool)

(declare-fun res!757490 () Bool)

(assert (=> b!1134544 (=> (not res!757490) (not e!645715))))

(assert (=> b!1134544 (= res!757490 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24962))))

(declare-fun b!1134545 () Bool)

(declare-fun res!757488 () Bool)

(assert (=> b!1134545 (=> res!757488 e!645717)))

(declare-fun contains!6578 (List!24965 (_ BitVec 64)) Bool)

(assert (=> b!1134545 (= res!757488 (contains!6578 Nil!24962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134546 () Bool)

(declare-fun e!645716 () Bool)

(assert (=> b!1134546 (= e!645716 (and e!645709 mapRes!44600))))

(declare-fun condMapEmpty!44600 () Bool)

(declare-fun mapDefault!44600 () ValueCell!13549)

