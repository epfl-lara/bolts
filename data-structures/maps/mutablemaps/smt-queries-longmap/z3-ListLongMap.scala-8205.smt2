; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100134 () Bool)

(assert start!100134)

(declare-fun b_free!25671 () Bool)

(declare-fun b_next!25671 () Bool)

(assert (=> start!100134 (= b_free!25671 (not b_next!25671))))

(declare-fun tp!89736 () Bool)

(declare-fun b_and!42223 () Bool)

(assert (=> start!100134 (= tp!89736 b_and!42223)))

(declare-fun b!1193505 () Bool)

(declare-fun e!678359 () Bool)

(declare-fun e!678353 () Bool)

(declare-fun mapRes!47138 () Bool)

(assert (=> b!1193505 (= e!678359 (and e!678353 mapRes!47138))))

(declare-fun condMapEmpty!47138 () Bool)

(declare-datatypes ((V!45403 0))(
  ( (V!45404 (val!15160 Int)) )
))
(declare-datatypes ((ValueCell!14394 0))(
  ( (ValueCellFull!14394 (v!17799 V!45403)) (EmptyCell!14394) )
))
(declare-datatypes ((array!77178 0))(
  ( (array!77179 (arr!37235 (Array (_ BitVec 32) ValueCell!14394)) (size!37772 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77178)

(declare-fun mapDefault!47138 () ValueCell!14394)

(assert (=> b!1193505 (= condMapEmpty!47138 (= (arr!37235 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14394)) mapDefault!47138)))))

(declare-fun mapIsEmpty!47138 () Bool)

(assert (=> mapIsEmpty!47138 mapRes!47138))

(declare-fun b!1193506 () Bool)

(declare-fun res!794158 () Bool)

(declare-fun e!678360 () Bool)

(assert (=> b!1193506 (=> (not res!794158) (not e!678360))))

(declare-datatypes ((array!77180 0))(
  ( (array!77181 (arr!37236 (Array (_ BitVec 32) (_ BitVec 64))) (size!37773 (_ BitVec 32))) )
))
(declare-fun lt!542565 () array!77180)

(declare-datatypes ((List!26395 0))(
  ( (Nil!26392) (Cons!26391 (h!27600 (_ BitVec 64)) (t!39065 List!26395)) )
))
(declare-fun arrayNoDuplicates!0 (array!77180 (_ BitVec 32) List!26395) Bool)

(assert (=> b!1193506 (= res!794158 (arrayNoDuplicates!0 lt!542565 #b00000000000000000000000000000000 Nil!26392))))

(declare-fun res!794152 () Bool)

(declare-fun e!678358 () Bool)

(assert (=> start!100134 (=> (not res!794152) (not e!678358))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!77180)

(assert (=> start!100134 (= res!794152 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37773 _keys!1208))))))

(assert (=> start!100134 e!678358))

(declare-fun tp_is_empty!30207 () Bool)

(assert (=> start!100134 tp_is_empty!30207))

(declare-fun array_inv!28286 (array!77180) Bool)

(assert (=> start!100134 (array_inv!28286 _keys!1208)))

(assert (=> start!100134 true))

(assert (=> start!100134 tp!89736))

(declare-fun array_inv!28287 (array!77178) Bool)

(assert (=> start!100134 (and (array_inv!28287 _values!996) e!678359)))

(declare-fun b!1193507 () Bool)

(assert (=> b!1193507 (= e!678353 tp_is_empty!30207)))

(declare-fun zeroValue!944 () V!45403)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19636 0))(
  ( (tuple2!19637 (_1!9828 (_ BitVec 64)) (_2!9828 V!45403)) )
))
(declare-datatypes ((List!26396 0))(
  ( (Nil!26393) (Cons!26392 (h!27601 tuple2!19636) (t!39066 List!26396)) )
))
(declare-datatypes ((ListLongMap!17617 0))(
  ( (ListLongMap!17618 (toList!8824 List!26396)) )
))
(declare-fun call!57127 () ListLongMap!17617)

(declare-fun bm!57124 () Bool)

(declare-fun minValue!944 () V!45403)

(declare-fun getCurrentListMapNoExtraKeys!5238 (array!77180 array!77178 (_ BitVec 32) (_ BitVec 32) V!45403 V!45403 (_ BitVec 32) Int) ListLongMap!17617)

(assert (=> bm!57124 (= call!57127 (getCurrentListMapNoExtraKeys!5238 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!678354 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!57128 () ListLongMap!17617)

(declare-fun b!1193508 () Bool)

(declare-fun -!1796 (ListLongMap!17617 (_ BitVec 64)) ListLongMap!17617)

(assert (=> b!1193508 (= e!678354 (= call!57128 (-!1796 call!57127 k0!934)))))

(declare-fun b!1193509 () Bool)

(declare-fun res!794154 () Bool)

(assert (=> b!1193509 (=> (not res!794154) (not e!678358))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193509 (= res!794154 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37773 _keys!1208))))))

(declare-fun b!1193510 () Bool)

(assert (=> b!1193510 (= e!678354 (= call!57128 call!57127))))

(declare-fun b!1193511 () Bool)

(declare-fun res!794151 () Bool)

(assert (=> b!1193511 (=> (not res!794151) (not e!678358))))

(assert (=> b!1193511 (= res!794151 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26392))))

(declare-fun b!1193512 () Bool)

(declare-fun res!794149 () Bool)

(assert (=> b!1193512 (=> (not res!794149) (not e!678358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193512 (= res!794149 (validKeyInArray!0 k0!934))))

(declare-fun lt!542564 () array!77178)

(declare-fun bm!57125 () Bool)

(assert (=> bm!57125 (= call!57128 (getCurrentListMapNoExtraKeys!5238 lt!542565 lt!542564 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193513 () Bool)

(declare-fun e!678355 () Bool)

(assert (=> b!1193513 (= e!678355 tp_is_empty!30207)))

(declare-fun b!1193514 () Bool)

(declare-fun res!794157 () Bool)

(assert (=> b!1193514 (=> (not res!794157) (not e!678358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193514 (= res!794157 (validMask!0 mask!1564))))

(declare-fun b!1193515 () Bool)

(declare-fun e!678361 () Bool)

(declare-fun e!678356 () Bool)

(assert (=> b!1193515 (= e!678361 e!678356)))

(declare-fun res!794153 () Bool)

(assert (=> b!1193515 (=> res!794153 e!678356)))

(assert (=> b!1193515 (= res!794153 (not (= from!1455 i!673)))))

(declare-fun lt!542563 () ListLongMap!17617)

(assert (=> b!1193515 (= lt!542563 (getCurrentListMapNoExtraKeys!5238 lt!542565 lt!542564 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3176 (Int (_ BitVec 64)) V!45403)

(assert (=> b!1193515 (= lt!542564 (array!77179 (store (arr!37235 _values!996) i!673 (ValueCellFull!14394 (dynLambda!3176 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37772 _values!996)))))

(declare-fun lt!542568 () ListLongMap!17617)

(assert (=> b!1193515 (= lt!542568 (getCurrentListMapNoExtraKeys!5238 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193516 () Bool)

(assert (=> b!1193516 (= e!678356 (= (select (arr!37236 _keys!1208) from!1455) k0!934))))

(assert (=> b!1193516 e!678354))

(declare-fun c!117254 () Bool)

(assert (=> b!1193516 (= c!117254 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39534 0))(
  ( (Unit!39535) )
))
(declare-fun lt!542566 () Unit!39534)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1002 (array!77180 array!77178 (_ BitVec 32) (_ BitVec 32) V!45403 V!45403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39534)

(assert (=> b!1193516 (= lt!542566 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1002 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193517 () Bool)

(declare-fun res!794155 () Bool)

(assert (=> b!1193517 (=> (not res!794155) (not e!678358))))

(assert (=> b!1193517 (= res!794155 (= (select (arr!37236 _keys!1208) i!673) k0!934))))

(declare-fun b!1193518 () Bool)

(declare-fun res!794148 () Bool)

(assert (=> b!1193518 (=> (not res!794148) (not e!678358))))

(assert (=> b!1193518 (= res!794148 (and (= (size!37772 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37773 _keys!1208) (size!37772 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193519 () Bool)

(declare-fun res!794150 () Bool)

(assert (=> b!1193519 (=> (not res!794150) (not e!678358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77180 (_ BitVec 32)) Bool)

(assert (=> b!1193519 (= res!794150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193520 () Bool)

(assert (=> b!1193520 (= e!678360 (not e!678361))))

(declare-fun res!794147 () Bool)

(assert (=> b!1193520 (=> res!794147 e!678361)))

(assert (=> b!1193520 (= res!794147 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193520 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542567 () Unit!39534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77180 (_ BitVec 64) (_ BitVec 32)) Unit!39534)

(assert (=> b!1193520 (= lt!542567 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!47138 () Bool)

(declare-fun tp!89737 () Bool)

(assert (=> mapNonEmpty!47138 (= mapRes!47138 (and tp!89737 e!678355))))

(declare-fun mapKey!47138 () (_ BitVec 32))

(declare-fun mapRest!47138 () (Array (_ BitVec 32) ValueCell!14394))

(declare-fun mapValue!47138 () ValueCell!14394)

(assert (=> mapNonEmpty!47138 (= (arr!37235 _values!996) (store mapRest!47138 mapKey!47138 mapValue!47138))))

(declare-fun b!1193521 () Bool)

(assert (=> b!1193521 (= e!678358 e!678360)))

(declare-fun res!794156 () Bool)

(assert (=> b!1193521 (=> (not res!794156) (not e!678360))))

(assert (=> b!1193521 (= res!794156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542565 mask!1564))))

(assert (=> b!1193521 (= lt!542565 (array!77181 (store (arr!37236 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37773 _keys!1208)))))

(assert (= (and start!100134 res!794152) b!1193514))

(assert (= (and b!1193514 res!794157) b!1193518))

(assert (= (and b!1193518 res!794148) b!1193519))

(assert (= (and b!1193519 res!794150) b!1193511))

(assert (= (and b!1193511 res!794151) b!1193509))

(assert (= (and b!1193509 res!794154) b!1193512))

(assert (= (and b!1193512 res!794149) b!1193517))

(assert (= (and b!1193517 res!794155) b!1193521))

(assert (= (and b!1193521 res!794156) b!1193506))

(assert (= (and b!1193506 res!794158) b!1193520))

(assert (= (and b!1193520 (not res!794147)) b!1193515))

(assert (= (and b!1193515 (not res!794153)) b!1193516))

(assert (= (and b!1193516 c!117254) b!1193508))

(assert (= (and b!1193516 (not c!117254)) b!1193510))

(assert (= (or b!1193508 b!1193510) bm!57125))

(assert (= (or b!1193508 b!1193510) bm!57124))

(assert (= (and b!1193505 condMapEmpty!47138) mapIsEmpty!47138))

(assert (= (and b!1193505 (not condMapEmpty!47138)) mapNonEmpty!47138))

(get-info :version)

(assert (= (and mapNonEmpty!47138 ((_ is ValueCellFull!14394) mapValue!47138)) b!1193513))

(assert (= (and b!1193505 ((_ is ValueCellFull!14394) mapDefault!47138)) b!1193507))

(assert (= start!100134 b!1193505))

(declare-fun b_lambda!20833 () Bool)

(assert (=> (not b_lambda!20833) (not b!1193515)))

(declare-fun t!39064 () Bool)

(declare-fun tb!10491 () Bool)

(assert (=> (and start!100134 (= defaultEntry!1004 defaultEntry!1004) t!39064) tb!10491))

(declare-fun result!21541 () Bool)

(assert (=> tb!10491 (= result!21541 tp_is_empty!30207)))

(assert (=> b!1193515 t!39064))

(declare-fun b_and!42225 () Bool)

(assert (= b_and!42223 (and (=> t!39064 result!21541) b_and!42225)))

(declare-fun m!1101763 () Bool)

(assert (=> mapNonEmpty!47138 m!1101763))

(declare-fun m!1101765 () Bool)

(assert (=> b!1193515 m!1101765))

(declare-fun m!1101767 () Bool)

(assert (=> b!1193515 m!1101767))

(declare-fun m!1101769 () Bool)

(assert (=> b!1193515 m!1101769))

(declare-fun m!1101771 () Bool)

(assert (=> b!1193515 m!1101771))

(declare-fun m!1101773 () Bool)

(assert (=> b!1193519 m!1101773))

(declare-fun m!1101775 () Bool)

(assert (=> b!1193508 m!1101775))

(declare-fun m!1101777 () Bool)

(assert (=> bm!57124 m!1101777))

(declare-fun m!1101779 () Bool)

(assert (=> start!100134 m!1101779))

(declare-fun m!1101781 () Bool)

(assert (=> start!100134 m!1101781))

(declare-fun m!1101783 () Bool)

(assert (=> b!1193521 m!1101783))

(declare-fun m!1101785 () Bool)

(assert (=> b!1193521 m!1101785))

(declare-fun m!1101787 () Bool)

(assert (=> b!1193512 m!1101787))

(declare-fun m!1101789 () Bool)

(assert (=> b!1193516 m!1101789))

(declare-fun m!1101791 () Bool)

(assert (=> b!1193516 m!1101791))

(declare-fun m!1101793 () Bool)

(assert (=> b!1193506 m!1101793))

(declare-fun m!1101795 () Bool)

(assert (=> bm!57125 m!1101795))

(declare-fun m!1101797 () Bool)

(assert (=> b!1193511 m!1101797))

(declare-fun m!1101799 () Bool)

(assert (=> b!1193517 m!1101799))

(declare-fun m!1101801 () Bool)

(assert (=> b!1193520 m!1101801))

(declare-fun m!1101803 () Bool)

(assert (=> b!1193520 m!1101803))

(declare-fun m!1101805 () Bool)

(assert (=> b!1193514 m!1101805))

(check-sat b_and!42225 (not b!1193519) (not b!1193506) (not b!1193520) (not b!1193508) (not b_next!25671) tp_is_empty!30207 (not b!1193521) (not b!1193516) (not bm!57124) (not b!1193514) (not mapNonEmpty!47138) (not b!1193512) (not b!1193511) (not b!1193515) (not start!100134) (not bm!57125) (not b_lambda!20833))
(check-sat b_and!42225 (not b_next!25671))
