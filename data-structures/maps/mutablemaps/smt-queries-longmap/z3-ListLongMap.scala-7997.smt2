; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98860 () Bool)

(assert start!98860)

(declare-fun b_free!24429 () Bool)

(declare-fun b_next!24429 () Bool)

(assert (=> start!98860 (= b_free!24429 (not b_next!24429))))

(declare-fun tp!85998 () Bool)

(declare-fun b_and!39721 () Bool)

(assert (=> start!98860 (= tp!85998 b_and!39721)))

(declare-fun b!1154682 () Bool)

(declare-fun call!54692 () Bool)

(assert (=> b!1154682 call!54692))

(declare-datatypes ((Unit!37913 0))(
  ( (Unit!37914) )
))
(declare-fun lt!517854 () Unit!37913)

(declare-fun call!54693 () Unit!37913)

(assert (=> b!1154682 (= lt!517854 call!54693)))

(declare-fun e!656740 () Unit!37913)

(assert (=> b!1154682 (= e!656740 lt!517854)))

(declare-fun b!1154683 () Bool)

(declare-fun e!656729 () Bool)

(declare-fun e!656731 () Bool)

(assert (=> b!1154683 (= e!656729 e!656731)))

(declare-fun res!767375 () Bool)

(assert (=> b!1154683 (=> res!767375 e!656731)))

(declare-datatypes ((array!74714 0))(
  ( (array!74715 (arr!36004 (Array (_ BitVec 32) (_ BitVec 64))) (size!36541 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74714)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1154683 (= res!767375 (not (= (select (arr!36004 _keys!1208) from!1455) k0!934)))))

(declare-fun e!656727 () Bool)

(assert (=> b!1154683 e!656727))

(declare-fun c!114668 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154683 (= c!114668 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!43739 0))(
  ( (V!43740 (val!14536 Int)) )
))
(declare-datatypes ((ValueCell!13770 0))(
  ( (ValueCellFull!13770 (v!17174 V!43739)) (EmptyCell!13770) )
))
(declare-datatypes ((array!74716 0))(
  ( (array!74717 (arr!36005 (Array (_ BitVec 32) ValueCell!13770)) (size!36542 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74716)

(declare-fun minValue!944 () V!43739)

(declare-fun lt!517837 () Unit!37913)

(declare-fun zeroValue!944 () V!43739)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!592 (array!74714 array!74716 (_ BitVec 32) (_ BitVec 32) V!43739 V!43739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37913)

(assert (=> b!1154683 (= lt!517837 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!592 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154684 () Bool)

(declare-fun e!656734 () Bool)

(declare-fun tp_is_empty!28959 () Bool)

(assert (=> b!1154684 (= e!656734 tp_is_empty!28959)))

(declare-fun b!1154685 () Bool)

(declare-fun e!656741 () Unit!37913)

(declare-fun lt!517851 () Unit!37913)

(assert (=> b!1154685 (= e!656741 lt!517851)))

(assert (=> b!1154685 (= lt!517851 call!54693)))

(assert (=> b!1154685 call!54692))

(declare-fun b!1154686 () Bool)

(declare-fun e!656739 () Bool)

(declare-fun e!656735 () Bool)

(declare-fun mapRes!45263 () Bool)

(assert (=> b!1154686 (= e!656739 (and e!656735 mapRes!45263))))

(declare-fun condMapEmpty!45263 () Bool)

(declare-fun mapDefault!45263 () ValueCell!13770)

(assert (=> b!1154686 (= condMapEmpty!45263 (= (arr!36005 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13770)) mapDefault!45263)))))

(declare-datatypes ((tuple2!18552 0))(
  ( (tuple2!18553 (_1!9286 (_ BitVec 64)) (_2!9286 V!43739)) )
))
(declare-datatypes ((List!25335 0))(
  ( (Nil!25332) (Cons!25331 (h!26540 tuple2!18552) (t!36763 List!25335)) )
))
(declare-datatypes ((ListLongMap!16533 0))(
  ( (ListLongMap!16534 (toList!8282 List!25335)) )
))
(declare-fun call!54695 () ListLongMap!16533)

(declare-fun bm!54686 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4721 (array!74714 array!74716 (_ BitVec 32) (_ BitVec 32) V!43739 V!43739 (_ BitVec 32) Int) ListLongMap!16533)

(assert (=> bm!54686 (= call!54695 (getCurrentListMapNoExtraKeys!4721 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!656726 () Bool)

(declare-fun b!1154687 () Bool)

(declare-fun arrayContainsKey!0 (array!74714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154687 (= e!656726 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154688 () Bool)

(declare-fun call!54694 () ListLongMap!16533)

(assert (=> b!1154688 (= e!656727 (= call!54694 call!54695))))

(declare-fun b!1154689 () Bool)

(declare-fun e!656737 () Unit!37913)

(declare-fun Unit!37915 () Unit!37913)

(assert (=> b!1154689 (= e!656737 Unit!37915)))

(declare-fun lt!517840 () Bool)

(assert (=> b!1154689 (= lt!517840 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!114672 () Bool)

(assert (=> b!1154689 (= c!114672 (and (not lt!517840) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517836 () Unit!37913)

(declare-fun e!656732 () Unit!37913)

(assert (=> b!1154689 (= lt!517836 e!656732)))

(declare-fun lt!517855 () Unit!37913)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!490 (array!74714 array!74716 (_ BitVec 32) (_ BitVec 32) V!43739 V!43739 (_ BitVec 64) (_ BitVec 32) Int) Unit!37913)

(assert (=> b!1154689 (= lt!517855 (lemmaListMapContainsThenArrayContainsFrom!490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114670 () Bool)

(assert (=> b!1154689 (= c!114670 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767367 () Bool)

(declare-fun e!656738 () Bool)

(assert (=> b!1154689 (= res!767367 e!656738)))

(assert (=> b!1154689 (=> (not res!767367) (not e!656726))))

(assert (=> b!1154689 e!656726))

(declare-fun lt!517841 () Unit!37913)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74714 (_ BitVec 32) (_ BitVec 32)) Unit!37913)

(assert (=> b!1154689 (= lt!517841 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25336 0))(
  ( (Nil!25333) (Cons!25332 (h!26541 (_ BitVec 64)) (t!36764 List!25336)) )
))
(declare-fun arrayNoDuplicates!0 (array!74714 (_ BitVec 32) List!25336) Bool)

(assert (=> b!1154689 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25333)))

(declare-fun lt!517852 () Unit!37913)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74714 (_ BitVec 64) (_ BitVec 32) List!25336) Unit!37913)

(assert (=> b!1154689 (= lt!517852 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25333))))

(assert (=> b!1154689 false))

(declare-fun b!1154690 () Bool)

(assert (=> b!1154690 (= e!656738 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517840) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154691 () Bool)

(assert (=> b!1154691 (= e!656731 true)))

(declare-fun e!656730 () Bool)

(assert (=> b!1154691 e!656730))

(declare-fun res!767365 () Bool)

(assert (=> b!1154691 (=> (not res!767365) (not e!656730))))

(declare-fun lt!517850 () ListLongMap!16533)

(declare-fun lt!517844 () ListLongMap!16533)

(assert (=> b!1154691 (= res!767365 (= lt!517850 lt!517844))))

(declare-fun lt!517843 () ListLongMap!16533)

(declare-fun -!1360 (ListLongMap!16533 (_ BitVec 64)) ListLongMap!16533)

(assert (=> b!1154691 (= lt!517850 (-!1360 lt!517843 k0!934))))

(declare-fun lt!517846 () V!43739)

(declare-fun +!3613 (ListLongMap!16533 tuple2!18552) ListLongMap!16533)

(assert (=> b!1154691 (= (-!1360 (+!3613 lt!517844 (tuple2!18553 (select (arr!36004 _keys!1208) from!1455) lt!517846)) (select (arr!36004 _keys!1208) from!1455)) lt!517844)))

(declare-fun lt!517856 () Unit!37913)

(declare-fun addThenRemoveForNewKeyIsSame!203 (ListLongMap!16533 (_ BitVec 64) V!43739) Unit!37913)

(assert (=> b!1154691 (= lt!517856 (addThenRemoveForNewKeyIsSame!203 lt!517844 (select (arr!36004 _keys!1208) from!1455) lt!517846))))

(declare-fun lt!517853 () V!43739)

(declare-fun get!18367 (ValueCell!13770 V!43739) V!43739)

(assert (=> b!1154691 (= lt!517846 (get!18367 (select (arr!36005 _values!996) from!1455) lt!517853))))

(declare-fun lt!517838 () Unit!37913)

(assert (=> b!1154691 (= lt!517838 e!656737)))

(declare-fun c!114667 () Bool)

(declare-fun contains!6770 (ListLongMap!16533 (_ BitVec 64)) Bool)

(assert (=> b!1154691 (= c!114667 (contains!6770 lt!517844 k0!934))))

(assert (=> b!1154691 (= lt!517844 (getCurrentListMapNoExtraKeys!4721 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154692 () Bool)

(declare-fun res!767374 () Bool)

(declare-fun e!656733 () Bool)

(assert (=> b!1154692 (=> (not res!767374) (not e!656733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154692 (= res!767374 (validMask!0 mask!1564))))

(declare-fun call!54690 () ListLongMap!16533)

(declare-fun call!54689 () Bool)

(declare-fun bm!54687 () Bool)

(declare-fun lt!517849 () ListLongMap!16533)

(assert (=> bm!54687 (= call!54689 (contains!6770 (ite c!114672 lt!517849 call!54690) k0!934))))

(declare-fun res!767373 () Bool)

(assert (=> start!98860 (=> (not res!767373) (not e!656733))))

(assert (=> start!98860 (= res!767373 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36541 _keys!1208))))))

(assert (=> start!98860 e!656733))

(assert (=> start!98860 tp_is_empty!28959))

(declare-fun array_inv!27434 (array!74714) Bool)

(assert (=> start!98860 (array_inv!27434 _keys!1208)))

(assert (=> start!98860 true))

(assert (=> start!98860 tp!85998))

(declare-fun array_inv!27435 (array!74716) Bool)

(assert (=> start!98860 (and (array_inv!27435 _values!996) e!656739)))

(declare-fun c!114671 () Bool)

(declare-fun bm!54688 () Bool)

(declare-fun call!54691 () Unit!37913)

(declare-fun addStillContains!910 (ListLongMap!16533 (_ BitVec 64) V!43739 (_ BitVec 64)) Unit!37913)

(assert (=> bm!54688 (= call!54691 (addStillContains!910 lt!517844 (ite (or c!114672 c!114671) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114672 c!114671) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1154693 () Bool)

(declare-fun e!656742 () Bool)

(assert (=> b!1154693 (= e!656733 e!656742)))

(declare-fun res!767376 () Bool)

(assert (=> b!1154693 (=> (not res!767376) (not e!656742))))

(declare-fun lt!517847 () array!74714)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74714 (_ BitVec 32)) Bool)

(assert (=> b!1154693 (= res!767376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517847 mask!1564))))

(assert (=> b!1154693 (= lt!517847 (array!74715 (store (arr!36004 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36541 _keys!1208)))))

(declare-fun b!1154694 () Bool)

(declare-fun res!767366 () Bool)

(assert (=> b!1154694 (=> (not res!767366) (not e!656733))))

(assert (=> b!1154694 (= res!767366 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36541 _keys!1208))))))

(declare-fun b!1154695 () Bool)

(assert (=> b!1154695 (= e!656741 e!656740)))

(declare-fun c!114669 () Bool)

(assert (=> b!1154695 (= c!114669 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517840))))

(declare-fun b!1154696 () Bool)

(assert (=> b!1154696 (= c!114671 (and (not lt!517840) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1154696 (= e!656732 e!656741)))

(declare-fun mapNonEmpty!45263 () Bool)

(declare-fun tp!85999 () Bool)

(assert (=> mapNonEmpty!45263 (= mapRes!45263 (and tp!85999 e!656734))))

(declare-fun mapRest!45263 () (Array (_ BitVec 32) ValueCell!13770))

(declare-fun mapValue!45263 () ValueCell!13770)

(declare-fun mapKey!45263 () (_ BitVec 32))

(assert (=> mapNonEmpty!45263 (= (arr!36005 _values!996) (store mapRest!45263 mapKey!45263 mapValue!45263))))

(declare-fun b!1154697 () Bool)

(declare-fun Unit!37916 () Unit!37913)

(assert (=> b!1154697 (= e!656737 Unit!37916)))

(declare-fun b!1154698 () Bool)

(assert (=> b!1154698 (= e!656727 (= call!54694 (-!1360 call!54695 k0!934)))))

(declare-fun bm!54689 () Bool)

(declare-fun call!54696 () ListLongMap!16533)

(assert (=> bm!54689 (= call!54690 call!54696)))

(declare-fun b!1154699 () Bool)

(declare-fun e!656728 () Bool)

(assert (=> b!1154699 (= e!656742 (not e!656728))))

(declare-fun res!767370 () Bool)

(assert (=> b!1154699 (=> res!767370 e!656728)))

(assert (=> b!1154699 (= res!767370 (bvsgt from!1455 i!673))))

(assert (=> b!1154699 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!517842 () Unit!37913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74714 (_ BitVec 64) (_ BitVec 32)) Unit!37913)

(assert (=> b!1154699 (= lt!517842 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1154700 () Bool)

(declare-fun res!767372 () Bool)

(assert (=> b!1154700 (=> (not res!767372) (not e!656733))))

(assert (=> b!1154700 (= res!767372 (and (= (size!36542 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36541 _keys!1208) (size!36542 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1154701 () Bool)

(declare-fun res!767364 () Bool)

(assert (=> b!1154701 (=> (not res!767364) (not e!656733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154701 (= res!767364 (validKeyInArray!0 k0!934))))

(declare-fun b!1154702 () Bool)

(declare-fun res!767369 () Bool)

(assert (=> b!1154702 (=> (not res!767369) (not e!656733))))

(assert (=> b!1154702 (= res!767369 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25333))))

(declare-fun b!1154703 () Bool)

(declare-fun res!767368 () Bool)

(assert (=> b!1154703 (=> (not res!767368) (not e!656733))))

(assert (=> b!1154703 (= res!767368 (= (select (arr!36004 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!45263 () Bool)

(assert (=> mapIsEmpty!45263 mapRes!45263))

(declare-fun b!1154704 () Bool)

(declare-fun Unit!37917 () Unit!37913)

(assert (=> b!1154704 (= e!656740 Unit!37917)))

(declare-fun b!1154705 () Bool)

(assert (=> b!1154705 (= e!656738 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!517857 () array!74716)

(declare-fun bm!54690 () Bool)

(assert (=> bm!54690 (= call!54694 (getCurrentListMapNoExtraKeys!4721 lt!517847 lt!517857 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54691 () Bool)

(assert (=> bm!54691 (= call!54696 (+!3613 (ite c!114672 lt!517849 lt!517844) (ite c!114672 (tuple2!18553 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114671 (tuple2!18553 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18553 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1154706 () Bool)

(declare-fun res!767377 () Bool)

(assert (=> b!1154706 (=> (not res!767377) (not e!656733))))

(assert (=> b!1154706 (= res!767377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54692 () Bool)

(assert (=> bm!54692 (= call!54692 call!54689)))

(declare-fun b!1154707 () Bool)

(assert (=> b!1154707 (= e!656730 (= lt!517850 (getCurrentListMapNoExtraKeys!4721 lt!517847 lt!517857 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1154708 () Bool)

(assert (=> b!1154708 (= e!656735 tp_is_empty!28959)))

(declare-fun b!1154709 () Bool)

(assert (=> b!1154709 (contains!6770 call!54696 k0!934)))

(declare-fun lt!517839 () Unit!37913)

(assert (=> b!1154709 (= lt!517839 (addStillContains!910 lt!517849 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1154709 call!54689))

(assert (=> b!1154709 (= lt!517849 (+!3613 lt!517844 (tuple2!18553 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517848 () Unit!37913)

(assert (=> b!1154709 (= lt!517848 call!54691)))

(assert (=> b!1154709 (= e!656732 lt!517839)))

(declare-fun b!1154710 () Bool)

(assert (=> b!1154710 (= e!656728 e!656729)))

(declare-fun res!767371 () Bool)

(assert (=> b!1154710 (=> res!767371 e!656729)))

(assert (=> b!1154710 (= res!767371 (not (= from!1455 i!673)))))

(declare-fun lt!517845 () ListLongMap!16533)

(assert (=> b!1154710 (= lt!517845 (getCurrentListMapNoExtraKeys!4721 lt!517847 lt!517857 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1154710 (= lt!517857 (array!74717 (store (arr!36005 _values!996) i!673 (ValueCellFull!13770 lt!517853)) (size!36542 _values!996)))))

(declare-fun dynLambda!2738 (Int (_ BitVec 64)) V!43739)

(assert (=> b!1154710 (= lt!517853 (dynLambda!2738 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1154710 (= lt!517843 (getCurrentListMapNoExtraKeys!4721 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!54693 () Bool)

(assert (=> bm!54693 (= call!54693 call!54691)))

(declare-fun b!1154711 () Bool)

(declare-fun res!767378 () Bool)

(assert (=> b!1154711 (=> (not res!767378) (not e!656742))))

(assert (=> b!1154711 (= res!767378 (arrayNoDuplicates!0 lt!517847 #b00000000000000000000000000000000 Nil!25333))))

(assert (= (and start!98860 res!767373) b!1154692))

(assert (= (and b!1154692 res!767374) b!1154700))

(assert (= (and b!1154700 res!767372) b!1154706))

(assert (= (and b!1154706 res!767377) b!1154702))

(assert (= (and b!1154702 res!767369) b!1154694))

(assert (= (and b!1154694 res!767366) b!1154701))

(assert (= (and b!1154701 res!767364) b!1154703))

(assert (= (and b!1154703 res!767368) b!1154693))

(assert (= (and b!1154693 res!767376) b!1154711))

(assert (= (and b!1154711 res!767378) b!1154699))

(assert (= (and b!1154699 (not res!767370)) b!1154710))

(assert (= (and b!1154710 (not res!767371)) b!1154683))

(assert (= (and b!1154683 c!114668) b!1154698))

(assert (= (and b!1154683 (not c!114668)) b!1154688))

(assert (= (or b!1154698 b!1154688) bm!54690))

(assert (= (or b!1154698 b!1154688) bm!54686))

(assert (= (and b!1154683 (not res!767375)) b!1154691))

(assert (= (and b!1154691 c!114667) b!1154689))

(assert (= (and b!1154691 (not c!114667)) b!1154697))

(assert (= (and b!1154689 c!114672) b!1154709))

(assert (= (and b!1154689 (not c!114672)) b!1154696))

(assert (= (and b!1154696 c!114671) b!1154685))

(assert (= (and b!1154696 (not c!114671)) b!1154695))

(assert (= (and b!1154695 c!114669) b!1154682))

(assert (= (and b!1154695 (not c!114669)) b!1154704))

(assert (= (or b!1154685 b!1154682) bm!54693))

(assert (= (or b!1154685 b!1154682) bm!54689))

(assert (= (or b!1154685 b!1154682) bm!54692))

(assert (= (or b!1154709 bm!54692) bm!54687))

(assert (= (or b!1154709 bm!54693) bm!54688))

(assert (= (or b!1154709 bm!54689) bm!54691))

(assert (= (and b!1154689 c!114670) b!1154705))

(assert (= (and b!1154689 (not c!114670)) b!1154690))

(assert (= (and b!1154689 res!767367) b!1154687))

(assert (= (and b!1154691 res!767365) b!1154707))

(assert (= (and b!1154686 condMapEmpty!45263) mapIsEmpty!45263))

(assert (= (and b!1154686 (not condMapEmpty!45263)) mapNonEmpty!45263))

(get-info :version)

(assert (= (and mapNonEmpty!45263 ((_ is ValueCellFull!13770) mapValue!45263)) b!1154684))

(assert (= (and b!1154686 ((_ is ValueCellFull!13770) mapDefault!45263)) b!1154708))

(assert (= start!98860 b!1154686))

(declare-fun b_lambda!19553 () Bool)

(assert (=> (not b_lambda!19553) (not b!1154710)))

(declare-fun t!36762 () Bool)

(declare-fun tb!9249 () Bool)

(assert (=> (and start!98860 (= defaultEntry!1004 defaultEntry!1004) t!36762) tb!9249))

(declare-fun result!19055 () Bool)

(assert (=> tb!9249 (= result!19055 tp_is_empty!28959)))

(assert (=> b!1154710 t!36762))

(declare-fun b_and!39723 () Bool)

(assert (= b_and!39721 (and (=> t!36762 result!19055) b_and!39723)))

(declare-fun m!1064419 () Bool)

(assert (=> b!1154691 m!1064419))

(declare-fun m!1064421 () Bool)

(assert (=> b!1154691 m!1064421))

(declare-fun m!1064423 () Bool)

(assert (=> b!1154691 m!1064423))

(declare-fun m!1064425 () Bool)

(assert (=> b!1154691 m!1064425))

(declare-fun m!1064427 () Bool)

(assert (=> b!1154691 m!1064427))

(declare-fun m!1064429 () Bool)

(assert (=> b!1154691 m!1064429))

(declare-fun m!1064431 () Bool)

(assert (=> b!1154691 m!1064431))

(assert (=> b!1154691 m!1064425))

(declare-fun m!1064433 () Bool)

(assert (=> b!1154691 m!1064433))

(assert (=> b!1154691 m!1064425))

(assert (=> b!1154691 m!1064421))

(declare-fun m!1064435 () Bool)

(assert (=> b!1154691 m!1064435))

(assert (=> b!1154691 m!1064431))

(declare-fun m!1064437 () Bool)

(assert (=> b!1154705 m!1064437))

(declare-fun m!1064439 () Bool)

(assert (=> mapNonEmpty!45263 m!1064439))

(declare-fun m!1064441 () Bool)

(assert (=> b!1154689 m!1064441))

(declare-fun m!1064443 () Bool)

(assert (=> b!1154689 m!1064443))

(declare-fun m!1064445 () Bool)

(assert (=> b!1154689 m!1064445))

(declare-fun m!1064447 () Bool)

(assert (=> b!1154689 m!1064447))

(declare-fun m!1064449 () Bool)

(assert (=> b!1154707 m!1064449))

(declare-fun m!1064451 () Bool)

(assert (=> bm!54691 m!1064451))

(declare-fun m!1064453 () Bool)

(assert (=> bm!54688 m!1064453))

(declare-fun m!1064455 () Bool)

(assert (=> bm!54687 m!1064455))

(declare-fun m!1064457 () Bool)

(assert (=> b!1154701 m!1064457))

(assert (=> b!1154683 m!1064425))

(declare-fun m!1064459 () Bool)

(assert (=> b!1154683 m!1064459))

(declare-fun m!1064461 () Bool)

(assert (=> b!1154711 m!1064461))

(assert (=> b!1154687 m!1064437))

(declare-fun m!1064463 () Bool)

(assert (=> b!1154706 m!1064463))

(declare-fun m!1064465 () Bool)

(assert (=> b!1154710 m!1064465))

(declare-fun m!1064467 () Bool)

(assert (=> b!1154710 m!1064467))

(declare-fun m!1064469 () Bool)

(assert (=> b!1154710 m!1064469))

(declare-fun m!1064471 () Bool)

(assert (=> b!1154710 m!1064471))

(declare-fun m!1064473 () Bool)

(assert (=> b!1154703 m!1064473))

(assert (=> bm!54686 m!1064419))

(declare-fun m!1064475 () Bool)

(assert (=> b!1154709 m!1064475))

(declare-fun m!1064477 () Bool)

(assert (=> b!1154709 m!1064477))

(declare-fun m!1064479 () Bool)

(assert (=> b!1154709 m!1064479))

(assert (=> bm!54690 m!1064449))

(declare-fun m!1064481 () Bool)

(assert (=> b!1154698 m!1064481))

(declare-fun m!1064483 () Bool)

(assert (=> start!98860 m!1064483))

(declare-fun m!1064485 () Bool)

(assert (=> start!98860 m!1064485))

(declare-fun m!1064487 () Bool)

(assert (=> b!1154693 m!1064487))

(declare-fun m!1064489 () Bool)

(assert (=> b!1154693 m!1064489))

(declare-fun m!1064491 () Bool)

(assert (=> b!1154692 m!1064491))

(declare-fun m!1064493 () Bool)

(assert (=> b!1154699 m!1064493))

(declare-fun m!1064495 () Bool)

(assert (=> b!1154699 m!1064495))

(declare-fun m!1064497 () Bool)

(assert (=> b!1154702 m!1064497))

(check-sat (not b!1154702) (not b!1154698) (not b!1154701) (not b!1154707) (not bm!54690) (not b!1154683) tp_is_empty!28959 (not b_next!24429) (not b!1154705) (not b!1154711) (not bm!54691) (not mapNonEmpty!45263) (not b!1154691) (not b_lambda!19553) (not b!1154710) (not start!98860) (not b!1154692) (not b!1154689) (not b!1154706) (not bm!54687) (not bm!54686) (not b!1154699) (not bm!54688) b_and!39723 (not b!1154693) (not b!1154687) (not b!1154709))
(check-sat b_and!39723 (not b_next!24429))
