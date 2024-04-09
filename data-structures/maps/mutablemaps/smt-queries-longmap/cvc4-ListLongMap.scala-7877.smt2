; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98046 () Bool)

(assert start!98046)

(declare-fun b_free!23711 () Bool)

(declare-fun b_next!23711 () Bool)

(assert (=> start!98046 (= b_free!23711 (not b_next!23711))))

(declare-fun tp!83838 () Bool)

(declare-fun b_and!38227 () Bool)

(assert (=> start!98046 (= tp!83838 b_and!38227)))

(declare-fun b!1124362 () Bool)

(declare-fun res!751324 () Bool)

(declare-fun e!640106 () Bool)

(assert (=> b!1124362 (=> (not res!751324) (not e!640106))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124362 (= res!751324 (validKeyInArray!0 k!934))))

(declare-fun b!1124363 () Bool)

(declare-fun e!640101 () Bool)

(declare-fun tp_is_empty!28241 () Bool)

(assert (=> b!1124363 (= e!640101 tp_is_empty!28241)))

(declare-fun b!1124364 () Bool)

(declare-fun e!640104 () Bool)

(declare-fun e!640109 () Bool)

(assert (=> b!1124364 (= e!640104 (not e!640109))))

(declare-fun res!751325 () Bool)

(assert (=> b!1124364 (=> res!751325 e!640109)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124364 (= res!751325 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73306 0))(
  ( (array!73307 (arr!35302 (Array (_ BitVec 32) (_ BitVec 64))) (size!35839 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73306)

(declare-fun arrayContainsKey!0 (array!73306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124364 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36799 0))(
  ( (Unit!36800) )
))
(declare-fun lt!499420 () Unit!36799)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73306 (_ BitVec 64) (_ BitVec 32)) Unit!36799)

(assert (=> b!1124364 (= lt!499420 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1124365 () Bool)

(declare-fun res!751326 () Bool)

(assert (=> b!1124365 (=> (not res!751326) (not e!640106))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124365 (= res!751326 (validMask!0 mask!1564))))

(declare-fun b!1124366 () Bool)

(declare-fun e!640107 () Bool)

(assert (=> b!1124366 (= e!640107 tp_is_empty!28241)))

(declare-datatypes ((V!42781 0))(
  ( (V!42782 (val!14177 Int)) )
))
(declare-datatypes ((tuple2!17888 0))(
  ( (tuple2!17889 (_1!8954 (_ BitVec 64)) (_2!8954 V!42781)) )
))
(declare-datatypes ((List!24720 0))(
  ( (Nil!24717) (Cons!24716 (h!25925 tuple2!17888) (t!35430 List!24720)) )
))
(declare-datatypes ((ListLongMap!15869 0))(
  ( (ListLongMap!15870 (toList!7950 List!24720)) )
))
(declare-fun call!47416 () ListLongMap!15869)

(declare-fun e!640103 () Bool)

(declare-fun b!1124367 () Bool)

(declare-fun call!47417 () ListLongMap!15869)

(declare-fun -!1101 (ListLongMap!15869 (_ BitVec 64)) ListLongMap!15869)

(assert (=> b!1124367 (= e!640103 (= call!47417 (-!1101 call!47416 k!934)))))

(declare-fun b!1124368 () Bool)

(declare-fun res!751315 () Bool)

(assert (=> b!1124368 (=> (not res!751315) (not e!640106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73306 (_ BitVec 32)) Bool)

(assert (=> b!1124368 (= res!751315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124369 () Bool)

(declare-fun res!751317 () Bool)

(declare-fun e!640105 () Bool)

(assert (=> b!1124369 (=> res!751317 e!640105)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1124369 (= res!751317 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124370 () Bool)

(declare-fun e!640099 () Bool)

(assert (=> b!1124370 (= e!640099 e!640105)))

(declare-fun res!751321 () Bool)

(assert (=> b!1124370 (=> res!751321 e!640105)))

(declare-fun lt!499424 () ListLongMap!15869)

(declare-fun contains!6461 (ListLongMap!15869 (_ BitVec 64)) Bool)

(assert (=> b!1124370 (= res!751321 (not (contains!6461 lt!499424 k!934)))))

(declare-fun zeroValue!944 () V!42781)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13411 0))(
  ( (ValueCellFull!13411 (v!16811 V!42781)) (EmptyCell!13411) )
))
(declare-datatypes ((array!73308 0))(
  ( (array!73309 (arr!35303 (Array (_ BitVec 32) ValueCell!13411)) (size!35840 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73308)

(declare-fun minValue!944 () V!42781)

(declare-fun getCurrentListMapNoExtraKeys!4409 (array!73306 array!73308 (_ BitVec 32) (_ BitVec 32) V!42781 V!42781 (_ BitVec 32) Int) ListLongMap!15869)

(assert (=> b!1124370 (= lt!499424 (getCurrentListMapNoExtraKeys!4409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124371 () Bool)

(declare-fun res!751322 () Bool)

(assert (=> b!1124371 (=> (not res!751322) (not e!640106))))

(declare-datatypes ((List!24721 0))(
  ( (Nil!24718) (Cons!24717 (h!25926 (_ BitVec 64)) (t!35431 List!24721)) )
))
(declare-fun arrayNoDuplicates!0 (array!73306 (_ BitVec 32) List!24721) Bool)

(assert (=> b!1124371 (= res!751322 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24718))))

(declare-fun bm!47413 () Bool)

(assert (=> bm!47413 (= call!47416 (getCurrentListMapNoExtraKeys!4409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124372 () Bool)

(declare-fun e!640102 () Bool)

(declare-fun mapRes!44179 () Bool)

(assert (=> b!1124372 (= e!640102 (and e!640101 mapRes!44179))))

(declare-fun condMapEmpty!44179 () Bool)

(declare-fun mapDefault!44179 () ValueCell!13411)

