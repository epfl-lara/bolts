; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98020 () Bool)

(assert start!98020)

(declare-fun b_free!23685 () Bool)

(declare-fun b_next!23685 () Bool)

(assert (=> start!98020 (= b_free!23685 (not b_next!23685))))

(declare-fun tp!83759 () Bool)

(declare-fun b_and!38175 () Bool)

(assert (=> start!98020 (= tp!83759 b_and!38175)))

(declare-fun b!1123564 () Bool)

(declare-fun res!750741 () Bool)

(declare-fun e!639680 () Bool)

(assert (=> b!1123564 (=> (not res!750741) (not e!639680))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123564 (= res!750741 (validMask!0 mask!1564))))

(declare-fun res!750747 () Bool)

(assert (=> start!98020 (=> (not res!750747) (not e!639680))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73256 0))(
  ( (array!73257 (arr!35277 (Array (_ BitVec 32) (_ BitVec 64))) (size!35814 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73256)

(assert (=> start!98020 (= res!750747 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35814 _keys!1208))))))

(assert (=> start!98020 e!639680))

(declare-fun tp_is_empty!28215 () Bool)

(assert (=> start!98020 tp_is_empty!28215))

(declare-fun array_inv!26956 (array!73256) Bool)

(assert (=> start!98020 (array_inv!26956 _keys!1208)))

(assert (=> start!98020 true))

(assert (=> start!98020 tp!83759))

(declare-datatypes ((V!42747 0))(
  ( (V!42748 (val!14164 Int)) )
))
(declare-datatypes ((ValueCell!13398 0))(
  ( (ValueCellFull!13398 (v!16798 V!42747)) (EmptyCell!13398) )
))
(declare-datatypes ((array!73258 0))(
  ( (array!73259 (arr!35278 (Array (_ BitVec 32) ValueCell!13398)) (size!35815 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73258)

(declare-fun e!639682 () Bool)

(declare-fun array_inv!26957 (array!73258) Bool)

(assert (=> start!98020 (and (array_inv!26957 _values!996) e!639682)))

(declare-fun b!1123565 () Bool)

(declare-fun res!750744 () Bool)

(assert (=> b!1123565 (=> (not res!750744) (not e!639680))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1123565 (= res!750744 (and (= (size!35815 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35814 _keys!1208) (size!35815 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123566 () Bool)

(declare-fun e!639675 () Bool)

(assert (=> b!1123566 (= e!639675 tp_is_empty!28215)))

(declare-fun b!1123567 () Bool)

(declare-fun e!639683 () Bool)

(declare-fun mapRes!44140 () Bool)

(assert (=> b!1123567 (= e!639682 (and e!639683 mapRes!44140))))

(declare-fun condMapEmpty!44140 () Bool)

(declare-fun mapDefault!44140 () ValueCell!13398)

(assert (=> b!1123567 (= condMapEmpty!44140 (= (arr!35278 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13398)) mapDefault!44140)))))

(declare-fun zeroValue!944 () V!42747)

(declare-fun lt!499113 () array!73258)

(declare-fun lt!499115 () array!73256)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17864 0))(
  ( (tuple2!17865 (_1!8942 (_ BitVec 64)) (_2!8942 V!42747)) )
))
(declare-datatypes ((List!24698 0))(
  ( (Nil!24695) (Cons!24694 (h!25903 tuple2!17864) (t!35382 List!24698)) )
))
(declare-datatypes ((ListLongMap!15845 0))(
  ( (ListLongMap!15846 (toList!7938 List!24698)) )
))
(declare-fun call!47338 () ListLongMap!15845)

(declare-fun minValue!944 () V!42747)

(declare-fun bm!47335 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4398 (array!73256 array!73258 (_ BitVec 32) (_ BitVec 32) V!42747 V!42747 (_ BitVec 32) Int) ListLongMap!15845)

(assert (=> bm!47335 (= call!47338 (getCurrentListMapNoExtraKeys!4398 lt!499115 lt!499113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123568 () Bool)

(declare-fun e!639678 () Bool)

(declare-fun call!47339 () ListLongMap!15845)

(assert (=> b!1123568 (= e!639678 (= call!47338 call!47339))))

(declare-fun b!1123569 () Bool)

(declare-fun res!750739 () Bool)

(assert (=> b!1123569 (=> (not res!750739) (not e!639680))))

(declare-datatypes ((List!24699 0))(
  ( (Nil!24696) (Cons!24695 (h!25904 (_ BitVec 64)) (t!35383 List!24699)) )
))
(declare-fun arrayNoDuplicates!0 (array!73256 (_ BitVec 32) List!24699) Bool)

(assert (=> b!1123569 (= res!750739 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24696))))

(declare-fun b!1123570 () Bool)

(declare-fun res!750745 () Bool)

(assert (=> b!1123570 (=> (not res!750745) (not e!639680))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123570 (= res!750745 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35814 _keys!1208))))))

(declare-fun bm!47336 () Bool)

(assert (=> bm!47336 (= call!47339 (getCurrentListMapNoExtraKeys!4398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123571 () Bool)

(declare-fun e!639674 () Bool)

(declare-fun e!639677 () Bool)

(assert (=> b!1123571 (= e!639674 e!639677)))

(declare-fun res!750749 () Bool)

(assert (=> b!1123571 (=> res!750749 e!639677)))

(assert (=> b!1123571 (= res!750749 (not (= from!1455 i!673)))))

(declare-fun lt!499114 () ListLongMap!15845)

(assert (=> b!1123571 (= lt!499114 (getCurrentListMapNoExtraKeys!4398 lt!499115 lt!499113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2490 (Int (_ BitVec 64)) V!42747)

(assert (=> b!1123571 (= lt!499113 (array!73259 (store (arr!35278 _values!996) i!673 (ValueCellFull!13398 (dynLambda!2490 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35815 _values!996)))))

(declare-fun lt!499110 () ListLongMap!15845)

(assert (=> b!1123571 (= lt!499110 (getCurrentListMapNoExtraKeys!4398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123572 () Bool)

(declare-fun res!750750 () Bool)

(assert (=> b!1123572 (=> (not res!750750) (not e!639680))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1123572 (= res!750750 (= (select (arr!35277 _keys!1208) i!673) k0!934))))

(declare-fun b!1123573 () Bool)

(declare-fun res!750746 () Bool)

(assert (=> b!1123573 (=> (not res!750746) (not e!639680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73256 (_ BitVec 32)) Bool)

(assert (=> b!1123573 (= res!750746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123574 () Bool)

(declare-fun res!750748 () Bool)

(declare-fun e!639681 () Bool)

(assert (=> b!1123574 (=> (not res!750748) (not e!639681))))

(assert (=> b!1123574 (= res!750748 (arrayNoDuplicates!0 lt!499115 #b00000000000000000000000000000000 Nil!24696))))

(declare-fun b!1123575 () Bool)

(assert (=> b!1123575 (= e!639680 e!639681)))

(declare-fun res!750743 () Bool)

(assert (=> b!1123575 (=> (not res!750743) (not e!639681))))

(assert (=> b!1123575 (= res!750743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499115 mask!1564))))

(assert (=> b!1123575 (= lt!499115 (array!73257 (store (arr!35277 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35814 _keys!1208)))))

(declare-fun mapIsEmpty!44140 () Bool)

(assert (=> mapIsEmpty!44140 mapRes!44140))

(declare-fun b!1123576 () Bool)

(assert (=> b!1123576 (= e!639683 tp_is_empty!28215)))

(declare-fun mapNonEmpty!44140 () Bool)

(declare-fun tp!83760 () Bool)

(assert (=> mapNonEmpty!44140 (= mapRes!44140 (and tp!83760 e!639675))))

(declare-fun mapRest!44140 () (Array (_ BitVec 32) ValueCell!13398))

(declare-fun mapValue!44140 () ValueCell!13398)

(declare-fun mapKey!44140 () (_ BitVec 32))

(assert (=> mapNonEmpty!44140 (= (arr!35278 _values!996) (store mapRest!44140 mapKey!44140 mapValue!44140))))

(declare-fun b!1123577 () Bool)

(declare-fun e!639679 () Bool)

(assert (=> b!1123577 (= e!639677 e!639679)))

(declare-fun res!750742 () Bool)

(assert (=> b!1123577 (=> res!750742 e!639679)))

(assert (=> b!1123577 (= res!750742 (not (= (select (arr!35277 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1123577 e!639678))

(declare-fun c!109478 () Bool)

(assert (=> b!1123577 (= c!109478 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36779 0))(
  ( (Unit!36780) )
))
(declare-fun lt!499112 () Unit!36779)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!347 (array!73256 array!73258 (_ BitVec 32) (_ BitVec 32) V!42747 V!42747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36779)

(assert (=> b!1123577 (= lt!499112 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!347 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123578 () Bool)

(declare-fun -!1094 (ListLongMap!15845 (_ BitVec 64)) ListLongMap!15845)

(assert (=> b!1123578 (= e!639678 (= call!47338 (-!1094 call!47339 k0!934)))))

(declare-fun b!1123579 () Bool)

(assert (=> b!1123579 (= e!639679 true)))

(declare-fun lt!499111 () Bool)

(declare-fun contains!6453 (ListLongMap!15845 (_ BitVec 64)) Bool)

(assert (=> b!1123579 (= lt!499111 (contains!6453 (getCurrentListMapNoExtraKeys!4398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1123580 () Bool)

(declare-fun res!750738 () Bool)

(assert (=> b!1123580 (=> (not res!750738) (not e!639680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123580 (= res!750738 (validKeyInArray!0 k0!934))))

(declare-fun b!1123581 () Bool)

(assert (=> b!1123581 (= e!639681 (not e!639674))))

(declare-fun res!750740 () Bool)

(assert (=> b!1123581 (=> res!750740 e!639674)))

(assert (=> b!1123581 (= res!750740 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123581 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499116 () Unit!36779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73256 (_ BitVec 64) (_ BitVec 32)) Unit!36779)

(assert (=> b!1123581 (= lt!499116 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!98020 res!750747) b!1123564))

(assert (= (and b!1123564 res!750741) b!1123565))

(assert (= (and b!1123565 res!750744) b!1123573))

(assert (= (and b!1123573 res!750746) b!1123569))

(assert (= (and b!1123569 res!750739) b!1123570))

(assert (= (and b!1123570 res!750745) b!1123580))

(assert (= (and b!1123580 res!750738) b!1123572))

(assert (= (and b!1123572 res!750750) b!1123575))

(assert (= (and b!1123575 res!750743) b!1123574))

(assert (= (and b!1123574 res!750748) b!1123581))

(assert (= (and b!1123581 (not res!750740)) b!1123571))

(assert (= (and b!1123571 (not res!750749)) b!1123577))

(assert (= (and b!1123577 c!109478) b!1123578))

(assert (= (and b!1123577 (not c!109478)) b!1123568))

(assert (= (or b!1123578 b!1123568) bm!47335))

(assert (= (or b!1123578 b!1123568) bm!47336))

(assert (= (and b!1123577 (not res!750742)) b!1123579))

(assert (= (and b!1123567 condMapEmpty!44140) mapIsEmpty!44140))

(assert (= (and b!1123567 (not condMapEmpty!44140)) mapNonEmpty!44140))

(get-info :version)

(assert (= (and mapNonEmpty!44140 ((_ is ValueCellFull!13398) mapValue!44140)) b!1123566))

(assert (= (and b!1123567 ((_ is ValueCellFull!13398) mapDefault!44140)) b!1123576))

(assert (= start!98020 b!1123567))

(declare-fun b_lambda!18689 () Bool)

(assert (=> (not b_lambda!18689) (not b!1123571)))

(declare-fun t!35381 () Bool)

(declare-fun tb!8505 () Bool)

(assert (=> (and start!98020 (= defaultEntry!1004 defaultEntry!1004) t!35381) tb!8505))

(declare-fun result!17563 () Bool)

(assert (=> tb!8505 (= result!17563 tp_is_empty!28215)))

(assert (=> b!1123571 t!35381))

(declare-fun b_and!38177 () Bool)

(assert (= b_and!38175 (and (=> t!35381 result!17563) b_and!38177)))

(declare-fun m!1038115 () Bool)

(assert (=> b!1123575 m!1038115))

(declare-fun m!1038117 () Bool)

(assert (=> b!1123575 m!1038117))

(declare-fun m!1038119 () Bool)

(assert (=> b!1123578 m!1038119))

(declare-fun m!1038121 () Bool)

(assert (=> b!1123564 m!1038121))

(declare-fun m!1038123 () Bool)

(assert (=> b!1123579 m!1038123))

(assert (=> b!1123579 m!1038123))

(declare-fun m!1038125 () Bool)

(assert (=> b!1123579 m!1038125))

(declare-fun m!1038127 () Bool)

(assert (=> b!1123569 m!1038127))

(declare-fun m!1038129 () Bool)

(assert (=> b!1123572 m!1038129))

(declare-fun m!1038131 () Bool)

(assert (=> b!1123573 m!1038131))

(declare-fun m!1038133 () Bool)

(assert (=> mapNonEmpty!44140 m!1038133))

(declare-fun m!1038135 () Bool)

(assert (=> b!1123574 m!1038135))

(declare-fun m!1038137 () Bool)

(assert (=> b!1123580 m!1038137))

(declare-fun m!1038139 () Bool)

(assert (=> b!1123577 m!1038139))

(declare-fun m!1038141 () Bool)

(assert (=> b!1123577 m!1038141))

(declare-fun m!1038143 () Bool)

(assert (=> start!98020 m!1038143))

(declare-fun m!1038145 () Bool)

(assert (=> start!98020 m!1038145))

(declare-fun m!1038147 () Bool)

(assert (=> b!1123571 m!1038147))

(declare-fun m!1038149 () Bool)

(assert (=> b!1123571 m!1038149))

(declare-fun m!1038151 () Bool)

(assert (=> b!1123571 m!1038151))

(declare-fun m!1038153 () Bool)

(assert (=> b!1123571 m!1038153))

(declare-fun m!1038155 () Bool)

(assert (=> b!1123581 m!1038155))

(declare-fun m!1038157 () Bool)

(assert (=> b!1123581 m!1038157))

(assert (=> bm!47336 m!1038123))

(declare-fun m!1038159 () Bool)

(assert (=> bm!47335 m!1038159))

(check-sat (not b!1123569) tp_is_empty!28215 (not start!98020) (not b!1123579) (not b!1123575) (not b!1123564) (not b!1123571) (not b!1123573) (not b!1123574) (not bm!47335) (not b!1123580) (not b!1123581) (not mapNonEmpty!44140) (not b_next!23685) b_and!38177 (not b!1123577) (not b_lambda!18689) (not b!1123578) (not bm!47336))
(check-sat b_and!38177 (not b_next!23685))
