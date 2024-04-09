; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98048 () Bool)

(assert start!98048)

(declare-fun b_free!23713 () Bool)

(declare-fun b_next!23713 () Bool)

(assert (=> start!98048 (= b_free!23713 (not b_next!23713))))

(declare-fun tp!83844 () Bool)

(declare-fun b_and!38231 () Bool)

(assert (=> start!98048 (= tp!83844 b_and!38231)))

(declare-fun b!1124424 () Bool)

(declare-fun e!640133 () Bool)

(declare-fun e!640139 () Bool)

(assert (=> b!1124424 (= e!640133 e!640139)))

(declare-fun res!751365 () Bool)

(assert (=> b!1124424 (=> res!751365 e!640139)))

(declare-datatypes ((V!42785 0))(
  ( (V!42786 (val!14178 Int)) )
))
(declare-datatypes ((tuple2!17890 0))(
  ( (tuple2!17891 (_1!8955 (_ BitVec 64)) (_2!8955 V!42785)) )
))
(declare-datatypes ((List!24722 0))(
  ( (Nil!24719) (Cons!24718 (h!25927 tuple2!17890) (t!35434 List!24722)) )
))
(declare-datatypes ((ListLongMap!15871 0))(
  ( (ListLongMap!15872 (toList!7951 List!24722)) )
))
(declare-fun lt!499445 () ListLongMap!15871)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6462 (ListLongMap!15871 (_ BitVec 64)) Bool)

(assert (=> b!1124424 (= res!751365 (not (contains!6462 lt!499445 k!934)))))

(declare-fun zeroValue!944 () V!42785)

(declare-datatypes ((array!73310 0))(
  ( (array!73311 (arr!35304 (Array (_ BitVec 32) (_ BitVec 64))) (size!35841 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73310)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42785)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13412 0))(
  ( (ValueCellFull!13412 (v!16812 V!42785)) (EmptyCell!13412) )
))
(declare-datatypes ((array!73312 0))(
  ( (array!73313 (arr!35305 (Array (_ BitVec 32) ValueCell!13412)) (size!35842 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73312)

(declare-fun getCurrentListMapNoExtraKeys!4410 (array!73310 array!73312 (_ BitVec 32) (_ BitVec 32) V!42785 V!42785 (_ BitVec 32) Int) ListLongMap!15871)

(assert (=> b!1124424 (= lt!499445 (getCurrentListMapNoExtraKeys!4410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124425 () Bool)

(declare-fun res!751364 () Bool)

(declare-fun e!640135 () Bool)

(assert (=> b!1124425 (=> (not res!751364) (not e!640135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124425 (= res!751364 (validMask!0 mask!1564))))

(declare-fun b!1124426 () Bool)

(declare-fun res!751370 () Bool)

(assert (=> b!1124426 (=> (not res!751370) (not e!640135))))

(assert (=> b!1124426 (= res!751370 (and (= (size!35842 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35841 _keys!1208) (size!35842 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124427 () Bool)

(assert (=> b!1124427 (= e!640139 true)))

(declare-fun +!3379 (ListLongMap!15871 tuple2!17890) ListLongMap!15871)

(assert (=> b!1124427 (contains!6462 (+!3379 lt!499445 (tuple2!17891 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-datatypes ((Unit!36801 0))(
  ( (Unit!36802) )
))
(declare-fun lt!499443 () Unit!36801)

(declare-fun addStillContains!678 (ListLongMap!15871 (_ BitVec 64) V!42785 (_ BitVec 64)) Unit!36801)

(assert (=> b!1124427 (= lt!499443 (addStillContains!678 lt!499445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1124429 () Bool)

(declare-fun e!640140 () Bool)

(declare-fun tp_is_empty!28243 () Bool)

(assert (=> b!1124429 (= e!640140 tp_is_empty!28243)))

(declare-fun b!1124430 () Bool)

(declare-fun res!751373 () Bool)

(assert (=> b!1124430 (=> res!751373 e!640139)))

(assert (=> b!1124430 (= res!751373 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124431 () Bool)

(declare-fun e!640141 () Bool)

(declare-fun e!640134 () Bool)

(assert (=> b!1124431 (= e!640141 e!640134)))

(declare-fun res!751368 () Bool)

(assert (=> b!1124431 (=> res!751368 e!640134)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124431 (= res!751368 (not (= from!1455 i!673)))))

(declare-fun lt!499448 () ListLongMap!15871)

(declare-fun lt!499444 () array!73310)

(declare-fun lt!499447 () array!73312)

(assert (=> b!1124431 (= lt!499448 (getCurrentListMapNoExtraKeys!4410 lt!499444 lt!499447 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2499 (Int (_ BitVec 64)) V!42785)

(assert (=> b!1124431 (= lt!499447 (array!73313 (store (arr!35305 _values!996) i!673 (ValueCellFull!13412 (dynLambda!2499 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35842 _values!996)))))

(declare-fun lt!499446 () ListLongMap!15871)

(assert (=> b!1124431 (= lt!499446 (getCurrentListMapNoExtraKeys!4410 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124432 () Bool)

(declare-fun e!640132 () Bool)

(assert (=> b!1124432 (= e!640135 e!640132)))

(declare-fun res!751366 () Bool)

(assert (=> b!1124432 (=> (not res!751366) (not e!640132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73310 (_ BitVec 32)) Bool)

(assert (=> b!1124432 (= res!751366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499444 mask!1564))))

(assert (=> b!1124432 (= lt!499444 (array!73311 (store (arr!35304 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35841 _keys!1208)))))

(declare-fun b!1124433 () Bool)

(declare-fun e!640136 () Bool)

(declare-fun call!47423 () ListLongMap!15871)

(declare-fun call!47422 () ListLongMap!15871)

(assert (=> b!1124433 (= e!640136 (= call!47423 call!47422))))

(declare-fun b!1124434 () Bool)

(assert (=> b!1124434 (= e!640132 (not e!640141))))

(declare-fun res!751361 () Bool)

(assert (=> b!1124434 (=> res!751361 e!640141)))

(assert (=> b!1124434 (= res!751361 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124434 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!499449 () Unit!36801)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73310 (_ BitVec 64) (_ BitVec 32)) Unit!36801)

(assert (=> b!1124434 (= lt!499449 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1124435 () Bool)

(declare-fun res!751369 () Bool)

(assert (=> b!1124435 (=> (not res!751369) (not e!640135))))

(assert (=> b!1124435 (= res!751369 (= (select (arr!35304 _keys!1208) i!673) k!934))))

(declare-fun b!1124436 () Bool)

(declare-fun -!1102 (ListLongMap!15871 (_ BitVec 64)) ListLongMap!15871)

(assert (=> b!1124436 (= e!640136 (= call!47423 (-!1102 call!47422 k!934)))))

(declare-fun b!1124437 () Bool)

(declare-fun e!640138 () Bool)

(declare-fun mapRes!44182 () Bool)

(assert (=> b!1124437 (= e!640138 (and e!640140 mapRes!44182))))

(declare-fun condMapEmpty!44182 () Bool)

(declare-fun mapDefault!44182 () ValueCell!13412)

