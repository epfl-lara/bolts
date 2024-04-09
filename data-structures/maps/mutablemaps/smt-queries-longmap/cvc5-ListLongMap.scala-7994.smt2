; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98840 () Bool)

(assert start!98840)

(declare-fun b_free!24409 () Bool)

(declare-fun b_next!24409 () Bool)

(assert (=> start!98840 (= b_free!24409 (not b_next!24409))))

(declare-fun tp!85939 () Bool)

(declare-fun b_and!39681 () Bool)

(assert (=> start!98840 (= tp!85939 b_and!39681)))

(declare-fun b!1153762 () Bool)

(declare-fun res!766914 () Bool)

(declare-fun e!656223 () Bool)

(assert (=> b!1153762 (=> (not res!766914) (not e!656223))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153762 (= res!766914 (validMask!0 mask!1564))))

(declare-fun b!1153763 () Bool)

(declare-datatypes ((Unit!37883 0))(
  ( (Unit!37884) )
))
(declare-fun e!656232 () Unit!37883)

(declare-fun lt!517194 () Unit!37883)

(assert (=> b!1153763 (= e!656232 lt!517194)))

(declare-fun call!54451 () Unit!37883)

(assert (=> b!1153763 (= lt!517194 call!54451)))

(declare-fun call!54454 () Bool)

(assert (=> b!1153763 call!54454))

(declare-fun b!1153764 () Bool)

(assert (=> b!1153764 call!54454))

(declare-fun lt!517192 () Unit!37883)

(assert (=> b!1153764 (= lt!517192 call!54451)))

(declare-fun e!656217 () Unit!37883)

(assert (=> b!1153764 (= e!656217 lt!517192)))

(declare-datatypes ((V!43713 0))(
  ( (V!43714 (val!14526 Int)) )
))
(declare-fun zeroValue!944 () V!43713)

(declare-fun c!114490 () Bool)

(declare-fun c!114488 () Bool)

(declare-datatypes ((tuple2!18532 0))(
  ( (tuple2!18533 (_1!9276 (_ BitVec 64)) (_2!9276 V!43713)) )
))
(declare-datatypes ((List!25319 0))(
  ( (Nil!25316) (Cons!25315 (h!26524 tuple2!18532) (t!36727 List!25319)) )
))
(declare-datatypes ((ListLongMap!16513 0))(
  ( (ListLongMap!16514 (toList!8272 List!25319)) )
))
(declare-fun lt!517183 () ListLongMap!16513)

(declare-fun bm!54446 () Bool)

(declare-fun call!54453 () ListLongMap!16513)

(declare-fun minValue!944 () V!43713)

(declare-fun +!3606 (ListLongMap!16513 tuple2!18532) ListLongMap!16513)

(assert (=> bm!54446 (= call!54453 (+!3606 lt!517183 (ite (or c!114488 c!114490) (tuple2!18533 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18533 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74674 0))(
  ( (array!74675 (arr!35984 (Array (_ BitVec 32) (_ BitVec 64))) (size!36521 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74674)

(declare-fun bm!54447 () Bool)

(declare-datatypes ((ValueCell!13760 0))(
  ( (ValueCellFull!13760 (v!17164 V!43713)) (EmptyCell!13760) )
))
(declare-datatypes ((array!74676 0))(
  ( (array!74677 (arr!35985 (Array (_ BitVec 32) ValueCell!13760)) (size!36522 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74676)

(declare-fun call!54456 () ListLongMap!16513)

(declare-fun getCurrentListMapNoExtraKeys!4712 (array!74674 array!74676 (_ BitVec 32) (_ BitVec 32) V!43713 V!43713 (_ BitVec 32) Int) ListLongMap!16513)

(assert (=> bm!54447 (= call!54456 (getCurrentListMapNoExtraKeys!4712 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45233 () Bool)

(declare-fun mapRes!45233 () Bool)

(assert (=> mapIsEmpty!45233 mapRes!45233))

(declare-fun b!1153765 () Bool)

(assert (=> b!1153765 (= e!656232 e!656217)))

(declare-fun c!114489 () Bool)

(declare-fun lt!517176 () Bool)

(assert (=> b!1153765 (= c!114489 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517176))))

(declare-fun b!1153767 () Bool)

(declare-fun e!656225 () Bool)

(assert (=> b!1153767 (= e!656223 e!656225)))

(declare-fun res!766918 () Bool)

(assert (=> b!1153767 (=> (not res!766918) (not e!656225))))

(declare-fun lt!517177 () array!74674)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74674 (_ BitVec 32)) Bool)

(assert (=> b!1153767 (= res!766918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517177 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153767 (= lt!517177 (array!74675 (store (arr!35984 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36521 _keys!1208)))))

(declare-fun b!1153768 () Bool)

(declare-fun e!656230 () Bool)

(assert (=> b!1153768 (= e!656230 true)))

(declare-fun e!656216 () Bool)

(assert (=> b!1153768 e!656216))

(declare-fun res!766923 () Bool)

(assert (=> b!1153768 (=> (not res!766923) (not e!656216))))

(declare-fun lt!517197 () ListLongMap!16513)

(assert (=> b!1153768 (= res!766923 (= lt!517197 lt!517183))))

(declare-fun lt!517185 () ListLongMap!16513)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1354 (ListLongMap!16513 (_ BitVec 64)) ListLongMap!16513)

(assert (=> b!1153768 (= lt!517197 (-!1354 lt!517185 k!934))))

(declare-fun lt!517179 () V!43713)

(assert (=> b!1153768 (= (-!1354 (+!3606 lt!517183 (tuple2!18533 (select (arr!35984 _keys!1208) from!1455) lt!517179)) (select (arr!35984 _keys!1208) from!1455)) lt!517183)))

(declare-fun lt!517184 () Unit!37883)

(declare-fun addThenRemoveForNewKeyIsSame!198 (ListLongMap!16513 (_ BitVec 64) V!43713) Unit!37883)

(assert (=> b!1153768 (= lt!517184 (addThenRemoveForNewKeyIsSame!198 lt!517183 (select (arr!35984 _keys!1208) from!1455) lt!517179))))

(declare-fun lt!517180 () V!43713)

(declare-fun get!18356 (ValueCell!13760 V!43713) V!43713)

(assert (=> b!1153768 (= lt!517179 (get!18356 (select (arr!35985 _values!996) from!1455) lt!517180))))

(declare-fun lt!517178 () Unit!37883)

(declare-fun e!656219 () Unit!37883)

(assert (=> b!1153768 (= lt!517178 e!656219)))

(declare-fun c!114492 () Bool)

(declare-fun contains!6763 (ListLongMap!16513 (_ BitVec 64)) Bool)

(assert (=> b!1153768 (= c!114492 (contains!6763 lt!517183 k!934))))

(assert (=> b!1153768 (= lt!517183 (getCurrentListMapNoExtraKeys!4712 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153769 () Bool)

(declare-fun e!656218 () Bool)

(declare-fun call!54449 () ListLongMap!16513)

(assert (=> b!1153769 (= e!656218 (= call!54449 call!54456))))

(declare-fun bm!54448 () Bool)

(declare-fun call!54452 () Unit!37883)

(assert (=> bm!54448 (= call!54451 call!54452)))

(declare-fun b!1153770 () Bool)

(declare-fun e!656229 () Bool)

(assert (=> b!1153770 (= e!656229 e!656230)))

(declare-fun res!766928 () Bool)

(assert (=> b!1153770 (=> res!766928 e!656230)))

(assert (=> b!1153770 (= res!766928 (not (= (select (arr!35984 _keys!1208) from!1455) k!934)))))

(assert (=> b!1153770 e!656218))

(declare-fun c!114487 () Bool)

(assert (=> b!1153770 (= c!114487 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517181 () Unit!37883)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!586 (array!74674 array!74676 (_ BitVec 32) (_ BitVec 32) V!43713 V!43713 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37883)

(assert (=> b!1153770 (= lt!517181 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!586 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153771 () Bool)

(declare-fun lt!517182 () ListLongMap!16513)

(assert (=> b!1153771 (contains!6763 (+!3606 lt!517182 (tuple2!18533 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!517186 () Unit!37883)

(assert (=> b!1153771 (= lt!517186 call!54452)))

(declare-fun call!54450 () Bool)

(assert (=> b!1153771 call!54450))

(assert (=> b!1153771 (= lt!517182 call!54453)))

(declare-fun lt!517191 () Unit!37883)

(declare-fun addStillContains!904 (ListLongMap!16513 (_ BitVec 64) V!43713 (_ BitVec 64)) Unit!37883)

(assert (=> b!1153771 (= lt!517191 (addStillContains!904 lt!517183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!656221 () Unit!37883)

(assert (=> b!1153771 (= e!656221 lt!517186)))

(declare-fun e!656222 () Bool)

(declare-fun b!1153772 () Bool)

(declare-fun arrayContainsKey!0 (array!74674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153772 (= e!656222 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153773 () Bool)

(declare-fun res!766922 () Bool)

(assert (=> b!1153773 (=> (not res!766922) (not e!656223))))

(assert (=> b!1153773 (= res!766922 (= (select (arr!35984 _keys!1208) i!673) k!934))))

(declare-fun lt!517187 () array!74676)

(declare-fun b!1153774 () Bool)

(assert (=> b!1153774 (= e!656216 (= lt!517197 (getCurrentListMapNoExtraKeys!4712 lt!517177 lt!517187 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153775 () Bool)

(declare-fun e!656231 () Bool)

(declare-fun tp_is_empty!28939 () Bool)

(assert (=> b!1153775 (= e!656231 tp_is_empty!28939)))

(declare-fun b!1153776 () Bool)

(declare-fun res!766926 () Bool)

(assert (=> b!1153776 (=> (not res!766926) (not e!656223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153776 (= res!766926 (validKeyInArray!0 k!934))))

(declare-fun bm!54449 () Bool)

(assert (=> bm!54449 (= call!54452 (addStillContains!904 (ite c!114488 lt!517182 lt!517183) (ite c!114488 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114490 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114488 minValue!944 (ite c!114490 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!54450 () Bool)

(declare-fun call!54455 () ListLongMap!16513)

(assert (=> bm!54450 (= call!54455 call!54453)))

(declare-fun b!1153777 () Bool)

(declare-fun res!766917 () Bool)

(assert (=> b!1153777 (=> (not res!766917) (not e!656223))))

(assert (=> b!1153777 (= res!766917 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36521 _keys!1208))))))

(declare-fun b!1153778 () Bool)

(declare-fun e!656227 () Bool)

(declare-fun e!656226 () Bool)

(assert (=> b!1153778 (= e!656227 (and e!656226 mapRes!45233))))

(declare-fun condMapEmpty!45233 () Bool)

(declare-fun mapDefault!45233 () ValueCell!13760)

