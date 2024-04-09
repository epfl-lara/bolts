; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98072 () Bool)

(assert start!98072)

(declare-fun b_free!23737 () Bool)

(declare-fun b_next!23737 () Bool)

(assert (=> start!98072 (= b_free!23737 (not b_next!23737))))

(declare-fun tp!83915 () Bool)

(declare-fun b_and!38279 () Bool)

(assert (=> start!98072 (= tp!83915 b_and!38279)))

(declare-fun b!1125168 () Bool)

(declare-fun e!640533 () Bool)

(declare-fun e!640530 () Bool)

(assert (=> b!1125168 (= e!640533 e!640530)))

(declare-fun res!751908 () Bool)

(assert (=> b!1125168 (=> res!751908 e!640530)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125168 (= res!751908 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42817 0))(
  ( (V!42818 (val!14190 Int)) )
))
(declare-fun zeroValue!944 () V!42817)

(declare-datatypes ((tuple2!17912 0))(
  ( (tuple2!17913 (_1!8966 (_ BitVec 64)) (_2!8966 V!42817)) )
))
(declare-datatypes ((List!24742 0))(
  ( (Nil!24739) (Cons!24738 (h!25947 tuple2!17912) (t!35478 List!24742)) )
))
(declare-datatypes ((ListLongMap!15893 0))(
  ( (ListLongMap!15894 (toList!7962 List!24742)) )
))
(declare-fun lt!499736 () ListLongMap!15893)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13424 0))(
  ( (ValueCellFull!13424 (v!16824 V!42817)) (EmptyCell!13424) )
))
(declare-datatypes ((array!73356 0))(
  ( (array!73357 (arr!35327 (Array (_ BitVec 32) ValueCell!13424)) (size!35864 (_ BitVec 32))) )
))
(declare-fun lt!499730 () array!73356)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42817)

(declare-datatypes ((array!73358 0))(
  ( (array!73359 (arr!35328 (Array (_ BitVec 32) (_ BitVec 64))) (size!35865 (_ BitVec 32))) )
))
(declare-fun lt!499734 () array!73358)

(declare-fun getCurrentListMapNoExtraKeys!4421 (array!73358 array!73356 (_ BitVec 32) (_ BitVec 32) V!42817 V!42817 (_ BitVec 32) Int) ListLongMap!15893)

(assert (=> b!1125168 (= lt!499736 (getCurrentListMapNoExtraKeys!4421 lt!499734 lt!499730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73356)

(declare-fun dynLambda!2506 (Int (_ BitVec 64)) V!42817)

(assert (=> b!1125168 (= lt!499730 (array!73357 (store (arr!35327 _values!996) i!673 (ValueCellFull!13424 (dynLambda!2506 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35864 _values!996)))))

(declare-fun lt!499732 () ListLongMap!15893)

(declare-fun _keys!1208 () array!73358)

(assert (=> b!1125168 (= lt!499732 (getCurrentListMapNoExtraKeys!4421 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!47495 () ListLongMap!15893)

(declare-fun bm!47491 () Bool)

(assert (=> bm!47491 (= call!47495 (getCurrentListMapNoExtraKeys!4421 lt!499734 lt!499730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44218 () Bool)

(declare-fun mapRes!44218 () Bool)

(declare-fun tp!83916 () Bool)

(declare-fun e!640532 () Bool)

(assert (=> mapNonEmpty!44218 (= mapRes!44218 (and tp!83916 e!640532))))

(declare-fun mapValue!44218 () ValueCell!13424)

(declare-fun mapRest!44218 () (Array (_ BitVec 32) ValueCell!13424))

(declare-fun mapKey!44218 () (_ BitVec 32))

(assert (=> mapNonEmpty!44218 (= (arr!35327 _values!996) (store mapRest!44218 mapKey!44218 mapValue!44218))))

(declare-fun b!1125169 () Bool)

(declare-fun res!751906 () Bool)

(declare-fun e!640538 () Bool)

(assert (=> b!1125169 (=> (not res!751906) (not e!640538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125169 (= res!751906 (validMask!0 mask!1564))))

(declare-fun b!1125170 () Bool)

(declare-fun res!751904 () Bool)

(declare-fun e!640534 () Bool)

(assert (=> b!1125170 (=> res!751904 e!640534)))

(assert (=> b!1125170 (= res!751904 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125171 () Bool)

(declare-fun e!640535 () Bool)

(declare-fun call!47494 () ListLongMap!15893)

(assert (=> b!1125171 (= e!640535 (= call!47495 call!47494))))

(declare-fun b!1125172 () Bool)

(declare-fun res!751901 () Bool)

(assert (=> b!1125172 (=> (not res!751901) (not e!640538))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1125172 (= res!751901 (= (select (arr!35328 _keys!1208) i!673) k!934))))

(declare-fun b!1125173 () Bool)

(declare-fun e!640528 () Bool)

(assert (=> b!1125173 (= e!640530 e!640528)))

(declare-fun res!751912 () Bool)

(assert (=> b!1125173 (=> res!751912 e!640528)))

(assert (=> b!1125173 (= res!751912 (not (= (select (arr!35328 _keys!1208) from!1455) k!934)))))

(assert (=> b!1125173 e!640535))

(declare-fun c!109556 () Bool)

(assert (=> b!1125173 (= c!109556 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36821 0))(
  ( (Unit!36822) )
))
(declare-fun lt!499731 () Unit!36821)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!363 (array!73358 array!73356 (_ BitVec 32) (_ BitVec 32) V!42817 V!42817 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36821)

(assert (=> b!1125173 (= lt!499731 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125174 () Bool)

(declare-fun res!751914 () Bool)

(assert (=> b!1125174 (=> (not res!751914) (not e!640538))))

(assert (=> b!1125174 (= res!751914 (and (= (size!35864 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35865 _keys!1208) (size!35864 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125175 () Bool)

(declare-fun e!640537 () Bool)

(declare-fun tp_is_empty!28267 () Bool)

(assert (=> b!1125175 (= e!640537 tp_is_empty!28267)))

(declare-fun b!1125176 () Bool)

(declare-fun e!640536 () Bool)

(assert (=> b!1125176 (= e!640538 e!640536)))

(declare-fun res!751903 () Bool)

(assert (=> b!1125176 (=> (not res!751903) (not e!640536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73358 (_ BitVec 32)) Bool)

(assert (=> b!1125176 (= res!751903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499734 mask!1564))))

(assert (=> b!1125176 (= lt!499734 (array!73359 (store (arr!35328 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35865 _keys!1208)))))

(declare-fun b!1125177 () Bool)

(declare-fun res!751902 () Bool)

(assert (=> b!1125177 (=> (not res!751902) (not e!640536))))

(declare-datatypes ((List!24743 0))(
  ( (Nil!24740) (Cons!24739 (h!25948 (_ BitVec 64)) (t!35479 List!24743)) )
))
(declare-fun arrayNoDuplicates!0 (array!73358 (_ BitVec 32) List!24743) Bool)

(assert (=> b!1125177 (= res!751902 (arrayNoDuplicates!0 lt!499734 #b00000000000000000000000000000000 Nil!24740))))

(declare-fun bm!47492 () Bool)

(assert (=> bm!47492 (= call!47494 (getCurrentListMapNoExtraKeys!4421 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44218 () Bool)

(assert (=> mapIsEmpty!44218 mapRes!44218))

(declare-fun b!1125178 () Bool)

(declare-fun res!751911 () Bool)

(assert (=> b!1125178 (=> (not res!751911) (not e!640538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125178 (= res!751911 (validKeyInArray!0 k!934))))

(declare-fun b!1125179 () Bool)

(assert (=> b!1125179 (= e!640534 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35865 _keys!1208))))))

(declare-fun lt!499735 () ListLongMap!15893)

(declare-fun contains!6473 (ListLongMap!15893 (_ BitVec 64)) Bool)

(declare-fun +!3386 (ListLongMap!15893 tuple2!17912) ListLongMap!15893)

(assert (=> b!1125179 (contains!6473 (+!3386 lt!499735 (tuple2!17913 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-fun lt!499733 () Unit!36821)

(declare-fun addStillContains!685 (ListLongMap!15893 (_ BitVec 64) V!42817 (_ BitVec 64)) Unit!36821)

(assert (=> b!1125179 (= lt!499733 (addStillContains!685 lt!499735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1125180 () Bool)

(declare-fun res!751913 () Bool)

(assert (=> b!1125180 (=> (not res!751913) (not e!640538))))

(assert (=> b!1125180 (= res!751913 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24740))))

(declare-fun b!1125181 () Bool)

(assert (=> b!1125181 (= e!640532 tp_is_empty!28267)))

(declare-fun b!1125182 () Bool)

(declare-fun -!1110 (ListLongMap!15893 (_ BitVec 64)) ListLongMap!15893)

(assert (=> b!1125182 (= e!640535 (= call!47495 (-!1110 call!47494 k!934)))))

(declare-fun b!1125183 () Bool)

(declare-fun e!640529 () Bool)

(assert (=> b!1125183 (= e!640529 (and e!640537 mapRes!44218))))

(declare-fun condMapEmpty!44218 () Bool)

(declare-fun mapDefault!44218 () ValueCell!13424)

