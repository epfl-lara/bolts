; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97946 () Bool)

(assert start!97946)

(declare-fun b_free!23611 () Bool)

(declare-fun b_next!23611 () Bool)

(assert (=> start!97946 (= b_free!23611 (not b_next!23611))))

(declare-fun tp!83538 () Bool)

(declare-fun b_and!38027 () Bool)

(assert (=> start!97946 (= tp!83538 b_and!38027)))

(declare-fun b!1121508 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!42649 0))(
  ( (V!42650 (val!14127 Int)) )
))
(declare-datatypes ((tuple2!17794 0))(
  ( (tuple2!17795 (_1!8907 (_ BitVec 64)) (_2!8907 V!42649)) )
))
(declare-datatypes ((List!24632 0))(
  ( (Nil!24629) (Cons!24628 (h!25837 tuple2!17794) (t!35242 List!24632)) )
))
(declare-datatypes ((ListLongMap!15775 0))(
  ( (ListLongMap!15776 (toList!7903 List!24632)) )
))
(declare-fun call!47117 () ListLongMap!15775)

(declare-fun e!638594 () Bool)

(declare-fun call!47116 () ListLongMap!15775)

(declare-fun -!1068 (ListLongMap!15775 (_ BitVec 64)) ListLongMap!15775)

(assert (=> b!1121508 (= e!638594 (= call!47116 (-!1068 call!47117 k!934)))))

(declare-fun b!1121509 () Bool)

(assert (=> b!1121509 (= e!638594 (= call!47116 call!47117))))

(declare-fun mapNonEmpty!44029 () Bool)

(declare-fun mapRes!44029 () Bool)

(declare-fun tp!83537 () Bool)

(declare-fun e!638591 () Bool)

(assert (=> mapNonEmpty!44029 (= mapRes!44029 (and tp!83537 e!638591))))

(declare-datatypes ((ValueCell!13361 0))(
  ( (ValueCellFull!13361 (v!16761 V!42649)) (EmptyCell!13361) )
))
(declare-fun mapValue!44029 () ValueCell!13361)

(declare-fun mapKey!44029 () (_ BitVec 32))

(declare-datatypes ((array!73108 0))(
  ( (array!73109 (arr!35203 (Array (_ BitVec 32) ValueCell!13361)) (size!35740 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73108)

(declare-fun mapRest!44029 () (Array (_ BitVec 32) ValueCell!13361))

(assert (=> mapNonEmpty!44029 (= (arr!35203 _values!996) (store mapRest!44029 mapKey!44029 mapValue!44029))))

(declare-fun b!1121510 () Bool)

(declare-fun res!749313 () Bool)

(declare-fun e!638593 () Bool)

(assert (=> b!1121510 (=> (not res!749313) (not e!638593))))

(declare-datatypes ((array!73110 0))(
  ( (array!73111 (arr!35204 (Array (_ BitVec 32) (_ BitVec 64))) (size!35741 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73110)

(declare-datatypes ((List!24633 0))(
  ( (Nil!24630) (Cons!24629 (h!25838 (_ BitVec 64)) (t!35243 List!24633)) )
))
(declare-fun arrayNoDuplicates!0 (array!73110 (_ BitVec 32) List!24633) Bool)

(assert (=> b!1121510 (= res!749313 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24630))))

(declare-fun b!1121511 () Bool)

(declare-fun e!638597 () Bool)

(assert (=> b!1121511 (= e!638597 true)))

(assert (=> b!1121511 e!638594))

(declare-fun c!109367 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121511 (= c!109367 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42649)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36721 0))(
  ( (Unit!36722) )
))
(declare-fun lt!498367 () Unit!36721)

(declare-fun minValue!944 () V!42649)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!323 (array!73110 array!73108 (_ BitVec 32) (_ BitVec 32) V!42649 V!42649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36721)

(assert (=> b!1121511 (= lt!498367 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!323 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121512 () Bool)

(declare-fun res!749315 () Bool)

(assert (=> b!1121512 (=> (not res!749315) (not e!638593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121512 (= res!749315 (validKeyInArray!0 k!934))))

(declare-fun b!1121513 () Bool)

(declare-fun e!638596 () Bool)

(assert (=> b!1121513 (= e!638596 e!638597)))

(declare-fun res!749320 () Bool)

(assert (=> b!1121513 (=> res!749320 e!638597)))

(assert (=> b!1121513 (= res!749320 (not (= from!1455 i!673)))))

(declare-fun lt!498370 () ListLongMap!15775)

(declare-fun lt!498371 () array!73110)

(declare-fun lt!498368 () array!73108)

(declare-fun getCurrentListMapNoExtraKeys!4364 (array!73110 array!73108 (_ BitVec 32) (_ BitVec 32) V!42649 V!42649 (_ BitVec 32) Int) ListLongMap!15775)

(assert (=> b!1121513 (= lt!498370 (getCurrentListMapNoExtraKeys!4364 lt!498371 lt!498368 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2463 (Int (_ BitVec 64)) V!42649)

(assert (=> b!1121513 (= lt!498368 (array!73109 (store (arr!35203 _values!996) i!673 (ValueCellFull!13361 (dynLambda!2463 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35740 _values!996)))))

(declare-fun lt!498369 () ListLongMap!15775)

(assert (=> b!1121513 (= lt!498369 (getCurrentListMapNoExtraKeys!4364 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121514 () Bool)

(declare-fun res!749321 () Bool)

(assert (=> b!1121514 (=> (not res!749321) (not e!638593))))

(assert (=> b!1121514 (= res!749321 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35741 _keys!1208))))))

(declare-fun b!1121515 () Bool)

(declare-fun res!749316 () Bool)

(declare-fun e!638589 () Bool)

(assert (=> b!1121515 (=> (not res!749316) (not e!638589))))

(assert (=> b!1121515 (= res!749316 (arrayNoDuplicates!0 lt!498371 #b00000000000000000000000000000000 Nil!24630))))

(declare-fun b!1121516 () Bool)

(declare-fun res!749322 () Bool)

(assert (=> b!1121516 (=> (not res!749322) (not e!638593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121516 (= res!749322 (validMask!0 mask!1564))))

(declare-fun b!1121517 () Bool)

(assert (=> b!1121517 (= e!638593 e!638589)))

(declare-fun res!749318 () Bool)

(assert (=> b!1121517 (=> (not res!749318) (not e!638589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73110 (_ BitVec 32)) Bool)

(assert (=> b!1121517 (= res!749318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498371 mask!1564))))

(assert (=> b!1121517 (= lt!498371 (array!73111 (store (arr!35204 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35741 _keys!1208)))))

(declare-fun b!1121518 () Bool)

(declare-fun res!749317 () Bool)

(assert (=> b!1121518 (=> (not res!749317) (not e!638593))))

(assert (=> b!1121518 (= res!749317 (= (select (arr!35204 _keys!1208) i!673) k!934))))

(declare-fun b!1121519 () Bool)

(declare-fun e!638590 () Bool)

(declare-fun e!638595 () Bool)

(assert (=> b!1121519 (= e!638590 (and e!638595 mapRes!44029))))

(declare-fun condMapEmpty!44029 () Bool)

(declare-fun mapDefault!44029 () ValueCell!13361)

