; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98056 () Bool)

(assert start!98056)

(declare-fun b_free!23721 () Bool)

(declare-fun b_next!23721 () Bool)

(assert (=> start!98056 (= b_free!23721 (not b_next!23721))))

(declare-fun tp!83868 () Bool)

(declare-fun b_and!38247 () Bool)

(assert (=> start!98056 (= tp!83868 b_and!38247)))

(declare-fun b!1124672 () Bool)

(declare-fun e!640264 () Bool)

(declare-fun e!640274 () Bool)

(declare-fun mapRes!44194 () Bool)

(assert (=> b!1124672 (= e!640264 (and e!640274 mapRes!44194))))

(declare-fun condMapEmpty!44194 () Bool)

(declare-datatypes ((V!42795 0))(
  ( (V!42796 (val!14182 Int)) )
))
(declare-datatypes ((ValueCell!13416 0))(
  ( (ValueCellFull!13416 (v!16816 V!42795)) (EmptyCell!13416) )
))
(declare-datatypes ((array!73326 0))(
  ( (array!73327 (arr!35312 (Array (_ BitVec 32) ValueCell!13416)) (size!35849 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73326)

(declare-fun mapDefault!44194 () ValueCell!13416)

(assert (=> b!1124672 (= condMapEmpty!44194 (= (arr!35312 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13416)) mapDefault!44194)))))

(declare-fun mapNonEmpty!44194 () Bool)

(declare-fun tp!83867 () Bool)

(declare-fun e!640267 () Bool)

(assert (=> mapNonEmpty!44194 (= mapRes!44194 (and tp!83867 e!640267))))

(declare-fun mapValue!44194 () ValueCell!13416)

(declare-fun mapKey!44194 () (_ BitVec 32))

(declare-fun mapRest!44194 () (Array (_ BitVec 32) ValueCell!13416))

(assert (=> mapNonEmpty!44194 (= (arr!35312 _values!996) (store mapRest!44194 mapKey!44194 mapValue!44194))))

(declare-fun mapIsEmpty!44194 () Bool)

(assert (=> mapIsEmpty!44194 mapRes!44194))

(declare-fun zeroValue!944 () V!42795)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47443 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42795)

(declare-datatypes ((tuple2!17898 0))(
  ( (tuple2!17899 (_1!8959 (_ BitVec 64)) (_2!8959 V!42795)) )
))
(declare-datatypes ((List!24728 0))(
  ( (Nil!24725) (Cons!24724 (h!25933 tuple2!17898) (t!35448 List!24728)) )
))
(declare-datatypes ((ListLongMap!15879 0))(
  ( (ListLongMap!15880 (toList!7955 List!24728)) )
))
(declare-fun call!47447 () ListLongMap!15879)

(declare-datatypes ((array!73328 0))(
  ( (array!73329 (arr!35313 (Array (_ BitVec 32) (_ BitVec 64))) (size!35850 (_ BitVec 32))) )
))
(declare-fun lt!499540 () array!73328)

(declare-fun lt!499539 () array!73326)

(declare-fun getCurrentListMapNoExtraKeys!4414 (array!73328 array!73326 (_ BitVec 32) (_ BitVec 32) V!42795 V!42795 (_ BitVec 32) Int) ListLongMap!15879)

(assert (=> bm!47443 (= call!47447 (getCurrentListMapNoExtraKeys!4414 lt!499540 lt!499539 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124673 () Bool)

(declare-fun res!751545 () Bool)

(declare-fun e!640269 () Bool)

(assert (=> b!1124673 (=> (not res!751545) (not e!640269))))

(declare-fun _keys!1208 () array!73328)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73328 (_ BitVec 32)) Bool)

(assert (=> b!1124673 (= res!751545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124674 () Bool)

(declare-fun tp_is_empty!28251 () Bool)

(assert (=> b!1124674 (= e!640267 tp_is_empty!28251)))

(declare-fun res!751554 () Bool)

(assert (=> start!98056 (=> (not res!751554) (not e!640269))))

(assert (=> start!98056 (= res!751554 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35850 _keys!1208))))))

(assert (=> start!98056 e!640269))

(assert (=> start!98056 tp_is_empty!28251))

(declare-fun array_inv!26978 (array!73328) Bool)

(assert (=> start!98056 (array_inv!26978 _keys!1208)))

(assert (=> start!98056 true))

(assert (=> start!98056 tp!83868))

(declare-fun array_inv!26979 (array!73326) Bool)

(assert (=> start!98056 (and (array_inv!26979 _values!996) e!640264)))

(declare-fun b!1124675 () Bool)

(assert (=> b!1124675 (= e!640274 tp_is_empty!28251)))

(declare-fun b!1124676 () Bool)

(declare-fun e!640270 () Bool)

(declare-fun e!640272 () Bool)

(assert (=> b!1124676 (= e!640270 e!640272)))

(declare-fun res!751542 () Bool)

(assert (=> b!1124676 (=> res!751542 e!640272)))

(declare-fun lt!499542 () ListLongMap!15879)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6466 (ListLongMap!15879 (_ BitVec 64)) Bool)

(assert (=> b!1124676 (= res!751542 (not (contains!6466 lt!499542 k0!934)))))

(assert (=> b!1124676 (= lt!499542 (getCurrentListMapNoExtraKeys!4414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124677 () Bool)

(declare-fun e!640266 () Bool)

(assert (=> b!1124677 (= e!640266 e!640270)))

(declare-fun res!751550 () Bool)

(assert (=> b!1124677 (=> res!751550 e!640270)))

(assert (=> b!1124677 (= res!751550 (not (= (select (arr!35313 _keys!1208) from!1455) k0!934)))))

(declare-fun e!640268 () Bool)

(assert (=> b!1124677 e!640268))

(declare-fun c!109532 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124677 (= c!109532 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36807 0))(
  ( (Unit!36808) )
))
(declare-fun lt!499544 () Unit!36807)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!358 (array!73328 array!73326 (_ BitVec 32) (_ BitVec 32) V!42795 V!42795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36807)

(assert (=> b!1124677 (= lt!499544 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!358 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124678 () Bool)

(declare-fun call!47446 () ListLongMap!15879)

(assert (=> b!1124678 (= e!640268 (= call!47447 call!47446))))

(declare-fun b!1124679 () Bool)

(declare-fun e!640271 () Bool)

(assert (=> b!1124679 (= e!640271 e!640266)))

(declare-fun res!751541 () Bool)

(assert (=> b!1124679 (=> res!751541 e!640266)))

(assert (=> b!1124679 (= res!751541 (not (= from!1455 i!673)))))

(declare-fun lt!499543 () ListLongMap!15879)

(assert (=> b!1124679 (= lt!499543 (getCurrentListMapNoExtraKeys!4414 lt!499540 lt!499539 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2502 (Int (_ BitVec 64)) V!42795)

(assert (=> b!1124679 (= lt!499539 (array!73327 (store (arr!35312 _values!996) i!673 (ValueCellFull!13416 (dynLambda!2502 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35849 _values!996)))))

(declare-fun lt!499538 () ListLongMap!15879)

(assert (=> b!1124679 (= lt!499538 (getCurrentListMapNoExtraKeys!4414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124680 () Bool)

(declare-fun res!751543 () Bool)

(declare-fun e!640273 () Bool)

(assert (=> b!1124680 (=> (not res!751543) (not e!640273))))

(declare-datatypes ((List!24729 0))(
  ( (Nil!24726) (Cons!24725 (h!25934 (_ BitVec 64)) (t!35449 List!24729)) )
))
(declare-fun arrayNoDuplicates!0 (array!73328 (_ BitVec 32) List!24729) Bool)

(assert (=> b!1124680 (= res!751543 (arrayNoDuplicates!0 lt!499540 #b00000000000000000000000000000000 Nil!24726))))

(declare-fun b!1124681 () Bool)

(declare-fun res!751549 () Bool)

(assert (=> b!1124681 (=> (not res!751549) (not e!640269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124681 (= res!751549 (validMask!0 mask!1564))))

(declare-fun b!1124682 () Bool)

(assert (=> b!1124682 (= e!640273 (not e!640271))))

(declare-fun res!751544 () Bool)

(assert (=> b!1124682 (=> res!751544 e!640271)))

(assert (=> b!1124682 (= res!751544 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124682 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499541 () Unit!36807)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73328 (_ BitVec 64) (_ BitVec 32)) Unit!36807)

(assert (=> b!1124682 (= lt!499541 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1124683 () Bool)

(declare-fun -!1104 (ListLongMap!15879 (_ BitVec 64)) ListLongMap!15879)

(assert (=> b!1124683 (= e!640268 (= call!47447 (-!1104 call!47446 k0!934)))))

(declare-fun b!1124684 () Bool)

(declare-fun res!751553 () Bool)

(assert (=> b!1124684 (=> (not res!751553) (not e!640269))))

(assert (=> b!1124684 (= res!751553 (= (select (arr!35313 _keys!1208) i!673) k0!934))))

(declare-fun b!1124685 () Bool)

(declare-fun res!751551 () Bool)

(assert (=> b!1124685 (=> (not res!751551) (not e!640269))))

(assert (=> b!1124685 (= res!751551 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24726))))

(declare-fun bm!47444 () Bool)

(assert (=> bm!47444 (= call!47446 (getCurrentListMapNoExtraKeys!4414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124686 () Bool)

(declare-fun res!751546 () Bool)

(assert (=> b!1124686 (=> (not res!751546) (not e!640269))))

(assert (=> b!1124686 (= res!751546 (and (= (size!35849 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35850 _keys!1208) (size!35849 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124687 () Bool)

(declare-fun res!751552 () Bool)

(assert (=> b!1124687 (=> res!751552 e!640272)))

(assert (=> b!1124687 (= res!751552 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124688 () Bool)

(declare-fun res!751540 () Bool)

(assert (=> b!1124688 (=> (not res!751540) (not e!640269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124688 (= res!751540 (validKeyInArray!0 k0!934))))

(declare-fun b!1124689 () Bool)

(assert (=> b!1124689 (= e!640272 true)))

(declare-fun +!3381 (ListLongMap!15879 tuple2!17898) ListLongMap!15879)

(assert (=> b!1124689 (contains!6466 (+!3381 lt!499542 (tuple2!17899 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499545 () Unit!36807)

(declare-fun addStillContains!680 (ListLongMap!15879 (_ BitVec 64) V!42795 (_ BitVec 64)) Unit!36807)

(assert (=> b!1124689 (= lt!499545 (addStillContains!680 lt!499542 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1124690 () Bool)

(declare-fun res!751548 () Bool)

(assert (=> b!1124690 (=> (not res!751548) (not e!640269))))

(assert (=> b!1124690 (= res!751548 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35850 _keys!1208))))))

(declare-fun b!1124691 () Bool)

(assert (=> b!1124691 (= e!640269 e!640273)))

(declare-fun res!751547 () Bool)

(assert (=> b!1124691 (=> (not res!751547) (not e!640273))))

(assert (=> b!1124691 (= res!751547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499540 mask!1564))))

(assert (=> b!1124691 (= lt!499540 (array!73329 (store (arr!35313 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35850 _keys!1208)))))

(assert (= (and start!98056 res!751554) b!1124681))

(assert (= (and b!1124681 res!751549) b!1124686))

(assert (= (and b!1124686 res!751546) b!1124673))

(assert (= (and b!1124673 res!751545) b!1124685))

(assert (= (and b!1124685 res!751551) b!1124690))

(assert (= (and b!1124690 res!751548) b!1124688))

(assert (= (and b!1124688 res!751540) b!1124684))

(assert (= (and b!1124684 res!751553) b!1124691))

(assert (= (and b!1124691 res!751547) b!1124680))

(assert (= (and b!1124680 res!751543) b!1124682))

(assert (= (and b!1124682 (not res!751544)) b!1124679))

(assert (= (and b!1124679 (not res!751541)) b!1124677))

(assert (= (and b!1124677 c!109532) b!1124683))

(assert (= (and b!1124677 (not c!109532)) b!1124678))

(assert (= (or b!1124683 b!1124678) bm!47443))

(assert (= (or b!1124683 b!1124678) bm!47444))

(assert (= (and b!1124677 (not res!751550)) b!1124676))

(assert (= (and b!1124676 (not res!751542)) b!1124687))

(assert (= (and b!1124687 (not res!751552)) b!1124689))

(assert (= (and b!1124672 condMapEmpty!44194) mapIsEmpty!44194))

(assert (= (and b!1124672 (not condMapEmpty!44194)) mapNonEmpty!44194))

(get-info :version)

(assert (= (and mapNonEmpty!44194 ((_ is ValueCellFull!13416) mapValue!44194)) b!1124674))

(assert (= (and b!1124672 ((_ is ValueCellFull!13416) mapDefault!44194)) b!1124675))

(assert (= start!98056 b!1124672))

(declare-fun b_lambda!18725 () Bool)

(assert (=> (not b_lambda!18725) (not b!1124679)))

(declare-fun t!35447 () Bool)

(declare-fun tb!8541 () Bool)

(assert (=> (and start!98056 (= defaultEntry!1004 defaultEntry!1004) t!35447) tb!8541))

(declare-fun result!17635 () Bool)

(assert (=> tb!8541 (= result!17635 tp_is_empty!28251)))

(assert (=> b!1124679 t!35447))

(declare-fun b_and!38249 () Bool)

(assert (= b_and!38247 (and (=> t!35447 result!17635) b_and!38249)))

(declare-fun m!1039039 () Bool)

(assert (=> b!1124688 m!1039039))

(declare-fun m!1039041 () Bool)

(assert (=> b!1124682 m!1039041))

(declare-fun m!1039043 () Bool)

(assert (=> b!1124682 m!1039043))

(declare-fun m!1039045 () Bool)

(assert (=> b!1124689 m!1039045))

(assert (=> b!1124689 m!1039045))

(declare-fun m!1039047 () Bool)

(assert (=> b!1124689 m!1039047))

(declare-fun m!1039049 () Bool)

(assert (=> b!1124689 m!1039049))

(declare-fun m!1039051 () Bool)

(assert (=> start!98056 m!1039051))

(declare-fun m!1039053 () Bool)

(assert (=> start!98056 m!1039053))

(declare-fun m!1039055 () Bool)

(assert (=> mapNonEmpty!44194 m!1039055))

(declare-fun m!1039057 () Bool)

(assert (=> b!1124685 m!1039057))

(declare-fun m!1039059 () Bool)

(assert (=> b!1124684 m!1039059))

(declare-fun m!1039061 () Bool)

(assert (=> b!1124673 m!1039061))

(declare-fun m!1039063 () Bool)

(assert (=> b!1124691 m!1039063))

(declare-fun m!1039065 () Bool)

(assert (=> b!1124691 m!1039065))

(declare-fun m!1039067 () Bool)

(assert (=> b!1124680 m!1039067))

(declare-fun m!1039069 () Bool)

(assert (=> bm!47443 m!1039069))

(declare-fun m!1039071 () Bool)

(assert (=> b!1124681 m!1039071))

(declare-fun m!1039073 () Bool)

(assert (=> b!1124676 m!1039073))

(declare-fun m!1039075 () Bool)

(assert (=> b!1124676 m!1039075))

(declare-fun m!1039077 () Bool)

(assert (=> b!1124683 m!1039077))

(declare-fun m!1039079 () Bool)

(assert (=> b!1124677 m!1039079))

(declare-fun m!1039081 () Bool)

(assert (=> b!1124677 m!1039081))

(assert (=> bm!47444 m!1039075))

(declare-fun m!1039083 () Bool)

(assert (=> b!1124679 m!1039083))

(declare-fun m!1039085 () Bool)

(assert (=> b!1124679 m!1039085))

(declare-fun m!1039087 () Bool)

(assert (=> b!1124679 m!1039087))

(declare-fun m!1039089 () Bool)

(assert (=> b!1124679 m!1039089))

(check-sat b_and!38249 (not b!1124688) (not b!1124680) (not bm!47443) (not b!1124682) (not b!1124673) (not b!1124677) tp_is_empty!28251 (not b!1124685) (not bm!47444) (not b!1124683) (not b_lambda!18725) (not b!1124679) (not b!1124691) (not b!1124676) (not b_next!23721) (not mapNonEmpty!44194) (not b!1124681) (not start!98056) (not b!1124689))
(check-sat b_and!38249 (not b_next!23721))
