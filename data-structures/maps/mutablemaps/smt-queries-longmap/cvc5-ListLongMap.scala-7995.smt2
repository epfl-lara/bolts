; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98846 () Bool)

(assert start!98846)

(declare-fun b_free!24415 () Bool)

(declare-fun b_next!24415 () Bool)

(assert (=> start!98846 (= b_free!24415 (not b_next!24415))))

(declare-fun tp!85957 () Bool)

(declare-fun b_and!39693 () Bool)

(assert (=> start!98846 (= tp!85957 b_and!39693)))

(declare-datatypes ((V!43721 0))(
  ( (V!43722 (val!14529 Int)) )
))
(declare-fun zeroValue!944 () V!43721)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18538 0))(
  ( (tuple2!18539 (_1!9279 (_ BitVec 64)) (_2!9279 V!43721)) )
))
(declare-datatypes ((List!25323 0))(
  ( (Nil!25320) (Cons!25319 (h!26528 tuple2!18538) (t!36737 List!25323)) )
))
(declare-datatypes ((ListLongMap!16519 0))(
  ( (ListLongMap!16520 (toList!8275 List!25323)) )
))
(declare-fun call!54528 () ListLongMap!16519)

(declare-fun bm!54518 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13763 0))(
  ( (ValueCellFull!13763 (v!17167 V!43721)) (EmptyCell!13763) )
))
(declare-datatypes ((array!74686 0))(
  ( (array!74687 (arr!35990 (Array (_ BitVec 32) ValueCell!13763)) (size!36527 (_ BitVec 32))) )
))
(declare-fun lt!517379 () array!74686)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43721)

(declare-datatypes ((array!74688 0))(
  ( (array!74689 (arr!35991 (Array (_ BitVec 32) (_ BitVec 64))) (size!36528 (_ BitVec 32))) )
))
(declare-fun lt!517382 () array!74688)

(declare-fun getCurrentListMapNoExtraKeys!4715 (array!74688 array!74686 (_ BitVec 32) (_ BitVec 32) V!43721 V!43721 (_ BitVec 32) Int) ListLongMap!16519)

(assert (=> bm!54518 (= call!54528 (getCurrentListMapNoExtraKeys!4715 lt!517382 lt!517379 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45242 () Bool)

(declare-fun mapRes!45242 () Bool)

(declare-fun tp!85956 () Bool)

(declare-fun e!656381 () Bool)

(assert (=> mapNonEmpty!45242 (= mapRes!45242 (and tp!85956 e!656381))))

(declare-fun mapKey!45242 () (_ BitVec 32))

(declare-fun mapRest!45242 () (Array (_ BitVec 32) ValueCell!13763))

(declare-fun _values!996 () array!74686)

(declare-fun mapValue!45242 () ValueCell!13763)

(assert (=> mapNonEmpty!45242 (= (arr!35990 _values!996) (store mapRest!45242 mapKey!45242 mapValue!45242))))

(declare-fun b!1154038 () Bool)

(declare-fun e!656370 () Bool)

(declare-fun e!656371 () Bool)

(assert (=> b!1154038 (= e!656370 e!656371)))

(declare-fun res!767052 () Bool)

(assert (=> b!1154038 (=> res!767052 e!656371)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154038 (= res!767052 (not (= from!1455 i!673)))))

(declare-fun lt!517377 () ListLongMap!16519)

(assert (=> b!1154038 (= lt!517377 (getCurrentListMapNoExtraKeys!4715 lt!517382 lt!517379 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!517393 () V!43721)

(assert (=> b!1154038 (= lt!517379 (array!74687 (store (arr!35990 _values!996) i!673 (ValueCellFull!13763 lt!517393)) (size!36527 _values!996)))))

(declare-fun dynLambda!2733 (Int (_ BitVec 64)) V!43721)

(assert (=> b!1154038 (= lt!517393 (dynLambda!2733 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74688)

(declare-fun lt!517389 () ListLongMap!16519)

(assert (=> b!1154038 (= lt!517389 (getCurrentListMapNoExtraKeys!4715 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154039 () Bool)

(declare-fun e!656380 () Bool)

(assert (=> b!1154039 (= e!656371 e!656380)))

(declare-fun res!767062 () Bool)

(assert (=> b!1154039 (=> res!767062 e!656380)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1154039 (= res!767062 (not (= (select (arr!35991 _keys!1208) from!1455) k!934)))))

(declare-fun e!656372 () Bool)

(assert (=> b!1154039 e!656372))

(declare-fun c!114546 () Bool)

(assert (=> b!1154039 (= c!114546 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!37890 0))(
  ( (Unit!37891) )
))
(declare-fun lt!517384 () Unit!37890)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!588 (array!74688 array!74686 (_ BitVec 32) (_ BitVec 32) V!43721 V!43721 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37890)

(assert (=> b!1154039 (= lt!517384 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!588 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154040 () Bool)

(declare-fun call!54525 () Bool)

(assert (=> b!1154040 call!54525))

(declare-fun lt!517374 () Unit!37890)

(declare-fun call!54523 () Unit!37890)

(assert (=> b!1154040 (= lt!517374 call!54523)))

(declare-fun e!656383 () Unit!37890)

(assert (=> b!1154040 (= e!656383 lt!517374)))

(declare-fun b!1154041 () Bool)

(declare-fun Unit!37892 () Unit!37890)

(assert (=> b!1154041 (= e!656383 Unit!37892)))

(declare-fun e!656378 () Bool)

(declare-fun lt!517387 () Bool)

(declare-fun b!1154042 () Bool)

(assert (=> b!1154042 (= e!656378 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517387) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154043 () Bool)

(declare-fun e!656375 () Bool)

(declare-fun e!656377 () Bool)

(assert (=> b!1154043 (= e!656375 (and e!656377 mapRes!45242))))

(declare-fun condMapEmpty!45242 () Bool)

(declare-fun mapDefault!45242 () ValueCell!13763)

