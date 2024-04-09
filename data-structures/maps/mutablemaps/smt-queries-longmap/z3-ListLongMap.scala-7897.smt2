; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98164 () Bool)

(assert start!98164)

(declare-fun b_free!23829 () Bool)

(declare-fun b_next!23829 () Bool)

(assert (=> start!98164 (= b_free!23829 (not b_next!23829))))

(declare-fun tp!84192 () Bool)

(declare-fun b_and!38463 () Bool)

(assert (=> start!98164 (= tp!84192 b_and!38463)))

(declare-fun b!1127785 () Bool)

(declare-fun res!753740 () Bool)

(declare-fun e!641933 () Bool)

(assert (=> b!1127785 (=> (not res!753740) (not e!641933))))

(declare-datatypes ((array!73538 0))(
  ( (array!73539 (arr!35418 (Array (_ BitVec 32) (_ BitVec 64))) (size!35955 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73538)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1127785 (= res!753740 (= (select (arr!35418 _keys!1208) i!673) k0!934))))

(declare-fun b!1127786 () Bool)

(declare-fun e!641928 () Bool)

(declare-fun e!641925 () Bool)

(assert (=> b!1127786 (= e!641928 (not e!641925))))

(declare-fun res!753746 () Bool)

(assert (=> b!1127786 (=> res!753746 e!641925)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1127786 (= res!753746 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127786 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36897 0))(
  ( (Unit!36898) )
))
(declare-fun lt!500703 () Unit!36897)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73538 (_ BitVec 64) (_ BitVec 32)) Unit!36897)

(assert (=> b!1127786 (= lt!500703 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!44356 () Bool)

(declare-fun mapRes!44356 () Bool)

(declare-fun tp!84191 () Bool)

(declare-fun e!641924 () Bool)

(assert (=> mapNonEmpty!44356 (= mapRes!44356 (and tp!84191 e!641924))))

(declare-fun mapKey!44356 () (_ BitVec 32))

(declare-datatypes ((V!42939 0))(
  ( (V!42940 (val!14236 Int)) )
))
(declare-datatypes ((ValueCell!13470 0))(
  ( (ValueCellFull!13470 (v!16870 V!42939)) (EmptyCell!13470) )
))
(declare-fun mapRest!44356 () (Array (_ BitVec 32) ValueCell!13470))

(declare-datatypes ((array!73540 0))(
  ( (array!73541 (arr!35419 (Array (_ BitVec 32) ValueCell!13470)) (size!35956 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73540)

(declare-fun mapValue!44356 () ValueCell!13470)

(assert (=> mapNonEmpty!44356 (= (arr!35419 _values!996) (store mapRest!44356 mapKey!44356 mapValue!44356))))

(declare-fun b!1127787 () Bool)

(declare-fun res!753747 () Bool)

(assert (=> b!1127787 (=> (not res!753747) (not e!641933))))

(assert (=> b!1127787 (= res!753747 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35955 _keys!1208))))))

(declare-fun b!1127788 () Bool)

(declare-fun res!753744 () Bool)

(assert (=> b!1127788 (=> (not res!753744) (not e!641928))))

(declare-fun lt!500709 () array!73538)

(declare-datatypes ((List!24823 0))(
  ( (Nil!24820) (Cons!24819 (h!26028 (_ BitVec 64)) (t!35651 List!24823)) )
))
(declare-fun arrayNoDuplicates!0 (array!73538 (_ BitVec 32) List!24823) Bool)

(assert (=> b!1127788 (= res!753744 (arrayNoDuplicates!0 lt!500709 #b00000000000000000000000000000000 Nil!24820))))

(declare-fun b!1127789 () Bool)

(declare-fun e!641929 () Bool)

(declare-fun e!641932 () Bool)

(assert (=> b!1127789 (= e!641929 (and e!641932 mapRes!44356))))

(declare-fun condMapEmpty!44356 () Bool)

(declare-fun mapDefault!44356 () ValueCell!13470)

(assert (=> b!1127789 (= condMapEmpty!44356 (= (arr!35419 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13470)) mapDefault!44356)))))

(declare-fun b!1127790 () Bool)

(declare-fun tp_is_empty!28359 () Bool)

(assert (=> b!1127790 (= e!641932 tp_is_empty!28359)))

(declare-fun zeroValue!944 () V!42939)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17998 0))(
  ( (tuple2!17999 (_1!9009 (_ BitVec 64)) (_2!9009 V!42939)) )
))
(declare-datatypes ((List!24824 0))(
  ( (Nil!24821) (Cons!24820 (h!26029 tuple2!17998) (t!35652 List!24824)) )
))
(declare-datatypes ((ListLongMap!15979 0))(
  ( (ListLongMap!15980 (toList!8005 List!24824)) )
))
(declare-fun call!47771 () ListLongMap!15979)

(declare-fun minValue!944 () V!42939)

(declare-fun bm!47767 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4462 (array!73538 array!73540 (_ BitVec 32) (_ BitVec 32) V!42939 V!42939 (_ BitVec 32) Int) ListLongMap!15979)

(assert (=> bm!47767 (= call!47771 (getCurrentListMapNoExtraKeys!4462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127791 () Bool)

(assert (=> b!1127791 (= e!641924 tp_is_empty!28359)))

(declare-fun b!1127792 () Bool)

(declare-fun res!753738 () Bool)

(assert (=> b!1127792 (=> (not res!753738) (not e!641933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127792 (= res!753738 (validMask!0 mask!1564))))

(declare-fun b!1127793 () Bool)

(declare-fun e!641931 () Bool)

(assert (=> b!1127793 (= e!641931 true)))

(declare-fun lt!500707 () Bool)

(declare-fun contains!6506 (ListLongMap!15979 (_ BitVec 64)) Bool)

(assert (=> b!1127793 (= lt!500707 (contains!6506 (getCurrentListMapNoExtraKeys!4462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1127794 () Bool)

(declare-fun e!641926 () Bool)

(declare-fun call!47770 () ListLongMap!15979)

(assert (=> b!1127794 (= e!641926 (= call!47770 call!47771))))

(declare-fun b!1127795 () Bool)

(assert (=> b!1127795 (= e!641933 e!641928)))

(declare-fun res!753742 () Bool)

(assert (=> b!1127795 (=> (not res!753742) (not e!641928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73538 (_ BitVec 32)) Bool)

(assert (=> b!1127795 (= res!753742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500709 mask!1564))))

(assert (=> b!1127795 (= lt!500709 (array!73539 (store (arr!35418 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35955 _keys!1208)))))

(declare-fun bm!47768 () Bool)

(declare-fun lt!500704 () array!73540)

(assert (=> bm!47768 (= call!47770 (getCurrentListMapNoExtraKeys!4462 lt!500709 lt!500704 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127796 () Bool)

(declare-fun e!641930 () Bool)

(assert (=> b!1127796 (= e!641930 e!641931)))

(declare-fun res!753736 () Bool)

(assert (=> b!1127796 (=> res!753736 e!641931)))

(assert (=> b!1127796 (= res!753736 (not (= (select (arr!35418 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1127796 e!641926))

(declare-fun c!109694 () Bool)

(assert (=> b!1127796 (= c!109694 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500705 () Unit!36897)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!397 (array!73538 array!73540 (_ BitVec 32) (_ BitVec 32) V!42939 V!42939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36897)

(assert (=> b!1127796 (= lt!500705 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!753741 () Bool)

(assert (=> start!98164 (=> (not res!753741) (not e!641933))))

(assert (=> start!98164 (= res!753741 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35955 _keys!1208))))))

(assert (=> start!98164 e!641933))

(assert (=> start!98164 tp_is_empty!28359))

(declare-fun array_inv!27044 (array!73538) Bool)

(assert (=> start!98164 (array_inv!27044 _keys!1208)))

(assert (=> start!98164 true))

(assert (=> start!98164 tp!84192))

(declare-fun array_inv!27045 (array!73540) Bool)

(assert (=> start!98164 (and (array_inv!27045 _values!996) e!641929)))

(declare-fun mapIsEmpty!44356 () Bool)

(assert (=> mapIsEmpty!44356 mapRes!44356))

(declare-fun b!1127797 () Bool)

(declare-fun res!753745 () Bool)

(assert (=> b!1127797 (=> (not res!753745) (not e!641933))))

(assert (=> b!1127797 (= res!753745 (and (= (size!35956 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35955 _keys!1208) (size!35956 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127798 () Bool)

(assert (=> b!1127798 (= e!641925 e!641930)))

(declare-fun res!753743 () Bool)

(assert (=> b!1127798 (=> res!753743 e!641930)))

(assert (=> b!1127798 (= res!753743 (not (= from!1455 i!673)))))

(declare-fun lt!500708 () ListLongMap!15979)

(assert (=> b!1127798 (= lt!500708 (getCurrentListMapNoExtraKeys!4462 lt!500709 lt!500704 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2540 (Int (_ BitVec 64)) V!42939)

(assert (=> b!1127798 (= lt!500704 (array!73541 (store (arr!35419 _values!996) i!673 (ValueCellFull!13470 (dynLambda!2540 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35956 _values!996)))))

(declare-fun lt!500706 () ListLongMap!15979)

(assert (=> b!1127798 (= lt!500706 (getCurrentListMapNoExtraKeys!4462 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127799 () Bool)

(declare-fun res!753737 () Bool)

(assert (=> b!1127799 (=> (not res!753737) (not e!641933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127799 (= res!753737 (validKeyInArray!0 k0!934))))

(declare-fun b!1127800 () Bool)

(declare-fun res!753735 () Bool)

(assert (=> b!1127800 (=> (not res!753735) (not e!641933))))

(assert (=> b!1127800 (= res!753735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127801 () Bool)

(declare-fun res!753739 () Bool)

(assert (=> b!1127801 (=> (not res!753739) (not e!641933))))

(assert (=> b!1127801 (= res!753739 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24820))))

(declare-fun b!1127802 () Bool)

(declare-fun -!1141 (ListLongMap!15979 (_ BitVec 64)) ListLongMap!15979)

(assert (=> b!1127802 (= e!641926 (= call!47770 (-!1141 call!47771 k0!934)))))

(assert (= (and start!98164 res!753741) b!1127792))

(assert (= (and b!1127792 res!753738) b!1127797))

(assert (= (and b!1127797 res!753745) b!1127800))

(assert (= (and b!1127800 res!753735) b!1127801))

(assert (= (and b!1127801 res!753739) b!1127787))

(assert (= (and b!1127787 res!753747) b!1127799))

(assert (= (and b!1127799 res!753737) b!1127785))

(assert (= (and b!1127785 res!753740) b!1127795))

(assert (= (and b!1127795 res!753742) b!1127788))

(assert (= (and b!1127788 res!753744) b!1127786))

(assert (= (and b!1127786 (not res!753746)) b!1127798))

(assert (= (and b!1127798 (not res!753743)) b!1127796))

(assert (= (and b!1127796 c!109694) b!1127802))

(assert (= (and b!1127796 (not c!109694)) b!1127794))

(assert (= (or b!1127802 b!1127794) bm!47768))

(assert (= (or b!1127802 b!1127794) bm!47767))

(assert (= (and b!1127796 (not res!753736)) b!1127793))

(assert (= (and b!1127789 condMapEmpty!44356) mapIsEmpty!44356))

(assert (= (and b!1127789 (not condMapEmpty!44356)) mapNonEmpty!44356))

(get-info :version)

(assert (= (and mapNonEmpty!44356 ((_ is ValueCellFull!13470) mapValue!44356)) b!1127791))

(assert (= (and b!1127789 ((_ is ValueCellFull!13470) mapDefault!44356)) b!1127790))

(assert (= start!98164 b!1127789))

(declare-fun b_lambda!18833 () Bool)

(assert (=> (not b_lambda!18833) (not b!1127798)))

(declare-fun t!35650 () Bool)

(declare-fun tb!8649 () Bool)

(assert (=> (and start!98164 (= defaultEntry!1004 defaultEntry!1004) t!35650) tb!8649))

(declare-fun result!17851 () Bool)

(assert (=> tb!8649 (= result!17851 tp_is_empty!28359)))

(assert (=> b!1127798 t!35650))

(declare-fun b_and!38465 () Bool)

(assert (= b_and!38463 (and (=> t!35650 result!17851) b_and!38465)))

(declare-fun m!1041617 () Bool)

(assert (=> b!1127799 m!1041617))

(declare-fun m!1041619 () Bool)

(assert (=> b!1127785 m!1041619))

(declare-fun m!1041621 () Bool)

(assert (=> b!1127798 m!1041621))

(declare-fun m!1041623 () Bool)

(assert (=> b!1127798 m!1041623))

(declare-fun m!1041625 () Bool)

(assert (=> b!1127798 m!1041625))

(declare-fun m!1041627 () Bool)

(assert (=> b!1127798 m!1041627))

(declare-fun m!1041629 () Bool)

(assert (=> bm!47768 m!1041629))

(declare-fun m!1041631 () Bool)

(assert (=> b!1127793 m!1041631))

(assert (=> b!1127793 m!1041631))

(declare-fun m!1041633 () Bool)

(assert (=> b!1127793 m!1041633))

(declare-fun m!1041635 () Bool)

(assert (=> b!1127800 m!1041635))

(declare-fun m!1041637 () Bool)

(assert (=> mapNonEmpty!44356 m!1041637))

(declare-fun m!1041639 () Bool)

(assert (=> start!98164 m!1041639))

(declare-fun m!1041641 () Bool)

(assert (=> start!98164 m!1041641))

(declare-fun m!1041643 () Bool)

(assert (=> b!1127801 m!1041643))

(declare-fun m!1041645 () Bool)

(assert (=> b!1127802 m!1041645))

(declare-fun m!1041647 () Bool)

(assert (=> b!1127792 m!1041647))

(declare-fun m!1041649 () Bool)

(assert (=> b!1127795 m!1041649))

(declare-fun m!1041651 () Bool)

(assert (=> b!1127795 m!1041651))

(declare-fun m!1041653 () Bool)

(assert (=> b!1127796 m!1041653))

(declare-fun m!1041655 () Bool)

(assert (=> b!1127796 m!1041655))

(declare-fun m!1041657 () Bool)

(assert (=> b!1127788 m!1041657))

(declare-fun m!1041659 () Bool)

(assert (=> b!1127786 m!1041659))

(declare-fun m!1041661 () Bool)

(assert (=> b!1127786 m!1041661))

(assert (=> bm!47767 m!1041631))

(check-sat (not b!1127802) (not bm!47768) (not b_lambda!18833) (not mapNonEmpty!44356) (not b!1127786) (not b!1127799) (not bm!47767) (not b!1127801) (not b!1127798) tp_is_empty!28359 (not b!1127800) (not b_next!23829) (not b!1127792) (not start!98164) (not b!1127795) (not b!1127788) b_and!38465 (not b!1127796) (not b!1127793))
(check-sat b_and!38465 (not b_next!23829))
