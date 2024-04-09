; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98862 () Bool)

(assert start!98862)

(declare-fun b_free!24431 () Bool)

(declare-fun b_next!24431 () Bool)

(assert (=> start!98862 (= b_free!24431 (not b_next!24431))))

(declare-fun tp!86004 () Bool)

(declare-fun b_and!39725 () Bool)

(assert (=> start!98862 (= tp!86004 b_and!39725)))

(declare-datatypes ((V!43741 0))(
  ( (V!43742 (val!14537 Int)) )
))
(declare-fun zeroValue!944 () V!43741)

(declare-datatypes ((array!74718 0))(
  ( (array!74719 (arr!36006 (Array (_ BitVec 32) (_ BitVec 64))) (size!36543 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74718)

(declare-datatypes ((ValueCell!13771 0))(
  ( (ValueCellFull!13771 (v!17175 V!43741)) (EmptyCell!13771) )
))
(declare-datatypes ((array!74720 0))(
  ( (array!74721 (arr!36007 (Array (_ BitVec 32) ValueCell!13771)) (size!36544 (_ BitVec 32))) )
))
(declare-fun lt!517902 () array!74720)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!517917 () array!74718)

(declare-datatypes ((tuple2!18554 0))(
  ( (tuple2!18555 (_1!9287 (_ BitVec 64)) (_2!9287 V!43741)) )
))
(declare-datatypes ((List!25337 0))(
  ( (Nil!25334) (Cons!25333 (h!26542 tuple2!18554) (t!36767 List!25337)) )
))
(declare-datatypes ((ListLongMap!16535 0))(
  ( (ListLongMap!16536 (toList!8283 List!25337)) )
))
(declare-fun call!54720 () ListLongMap!16535)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!54710 () Bool)

(declare-fun _values!996 () array!74720)

(declare-fun minValue!944 () V!43741)

(declare-fun c!114686 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4722 (array!74718 array!74720 (_ BitVec 32) (_ BitVec 32) V!43741 V!43741 (_ BitVec 32) Int) ListLongMap!16535)

(assert (=> bm!54710 (= call!54720 (getCurrentListMapNoExtraKeys!4722 (ite c!114686 lt!517917 _keys!1208) (ite c!114686 lt!517902 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54711 () Bool)

(declare-datatypes ((Unit!37918 0))(
  ( (Unit!37919) )
))
(declare-fun call!54717 () Unit!37918)

(declare-fun call!54713 () Unit!37918)

(assert (=> bm!54711 (= call!54717 call!54713)))

(declare-fun b!1154774 () Bool)

(declare-fun e!656790 () Bool)

(declare-fun tp_is_empty!28961 () Bool)

(assert (=> b!1154774 (= e!656790 tp_is_empty!28961)))

(declare-fun mapNonEmpty!45266 () Bool)

(declare-fun mapRes!45266 () Bool)

(declare-fun tp!86005 () Bool)

(assert (=> mapNonEmpty!45266 (= mapRes!45266 (and tp!86005 e!656790))))

(declare-fun mapRest!45266 () (Array (_ BitVec 32) ValueCell!13771))

(declare-fun mapValue!45266 () ValueCell!13771)

(declare-fun mapKey!45266 () (_ BitVec 32))

(assert (=> mapNonEmpty!45266 (= (arr!36007 _values!996) (store mapRest!45266 mapKey!45266 mapValue!45266))))

(declare-fun lt!517912 () ListLongMap!16535)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!54712 () Bool)

(declare-fun lt!517908 () ListLongMap!16535)

(declare-fun c!114685 () Bool)

(declare-fun c!114688 () Bool)

(declare-fun addStillContains!911 (ListLongMap!16535 (_ BitVec 64) V!43741 (_ BitVec 64)) Unit!37918)

(assert (=> bm!54712 (= call!54713 (addStillContains!911 (ite c!114688 lt!517908 lt!517912) (ite c!114688 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114685 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114688 minValue!944 (ite c!114685 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!54713 () Bool)

(declare-fun call!54719 () Bool)

(declare-fun call!54714 () Bool)

(assert (=> bm!54713 (= call!54719 call!54714)))

(declare-fun b!1154775 () Bool)

(declare-fun e!656789 () Bool)

(declare-fun e!656778 () Bool)

(assert (=> b!1154775 (= e!656789 e!656778)))

(declare-fun res!767415 () Bool)

(assert (=> b!1154775 (=> res!767415 e!656778)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154775 (= res!767415 (not (= from!1455 i!673)))))

(declare-fun lt!517911 () ListLongMap!16535)

(assert (=> b!1154775 (= lt!517911 (getCurrentListMapNoExtraKeys!4722 lt!517917 lt!517902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!517916 () V!43741)

(assert (=> b!1154775 (= lt!517902 (array!74721 (store (arr!36007 _values!996) i!673 (ValueCellFull!13771 lt!517916)) (size!36544 _values!996)))))

(declare-fun dynLambda!2739 (Int (_ BitVec 64)) V!43741)

(assert (=> b!1154775 (= lt!517916 (dynLambda!2739 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!517919 () ListLongMap!16535)

(assert (=> b!1154775 (= lt!517919 (getCurrentListMapNoExtraKeys!4722 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154777 () Bool)

(declare-fun e!656787 () Bool)

(assert (=> b!1154777 (= e!656787 (not e!656789))))

(declare-fun res!767413 () Bool)

(assert (=> b!1154777 (=> res!767413 e!656789)))

(assert (=> b!1154777 (= res!767413 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154777 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!517904 () Unit!37918)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74718 (_ BitVec 64) (_ BitVec 32)) Unit!37918)

(assert (=> b!1154777 (= lt!517904 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!54714 () Bool)

(declare-fun call!54716 () ListLongMap!16535)

(declare-fun call!54715 () ListLongMap!16535)

(assert (=> bm!54714 (= call!54716 call!54715)))

(declare-fun lt!517907 () Bool)

(declare-fun b!1154778 () Bool)

(declare-fun e!656779 () Bool)

(assert (=> b!1154778 (= e!656779 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517907) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!45266 () Bool)

(assert (=> mapIsEmpty!45266 mapRes!45266))

(declare-fun b!1154779 () Bool)

(declare-fun res!767419 () Bool)

(declare-fun e!656780 () Bool)

(assert (=> b!1154779 (=> (not res!767419) (not e!656780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154779 (= res!767419 (validKeyInArray!0 k!934))))

(declare-fun b!1154780 () Bool)

(declare-fun e!656781 () Unit!37918)

(declare-fun Unit!37920 () Unit!37918)

(assert (=> b!1154780 (= e!656781 Unit!37920)))

(declare-fun b!1154781 () Bool)

(declare-fun e!656791 () Bool)

(assert (=> b!1154781 (= e!656778 e!656791)))

(declare-fun res!767409 () Bool)

(assert (=> b!1154781 (=> res!767409 e!656791)))

(assert (=> b!1154781 (= res!767409 (not (= (select (arr!36006 _keys!1208) from!1455) k!934)))))

(declare-fun e!656788 () Bool)

(assert (=> b!1154781 e!656788))

(assert (=> b!1154781 (= c!114686 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517923 () Unit!37918)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!593 (array!74718 array!74720 (_ BitVec 32) (_ BitVec 32) V!43741 V!43741 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37918)

(assert (=> b!1154781 (= lt!517923 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!593 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!54718 () ListLongMap!16535)

(declare-fun bm!54715 () Bool)

(assert (=> bm!54715 (= call!54718 (getCurrentListMapNoExtraKeys!4722 (ite c!114686 _keys!1208 lt!517917) (ite c!114686 _values!996 lt!517902) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154782 () Bool)

(declare-fun e!656777 () Bool)

(assert (=> b!1154782 (= e!656777 tp_is_empty!28961)))

(declare-fun b!1154783 () Bool)

(declare-fun e!656792 () Unit!37918)

(declare-fun Unit!37921 () Unit!37918)

(assert (=> b!1154783 (= e!656792 Unit!37921)))

(assert (=> b!1154783 (= lt!517907 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1154783 (= c!114688 (and (not lt!517907) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517921 () Unit!37918)

(declare-fun e!656785 () Unit!37918)

(assert (=> b!1154783 (= lt!517921 e!656785)))

(declare-fun lt!517909 () Unit!37918)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!491 (array!74718 array!74720 (_ BitVec 32) (_ BitVec 32) V!43741 V!43741 (_ BitVec 64) (_ BitVec 32) Int) Unit!37918)

(assert (=> b!1154783 (= lt!517909 (lemmaListMapContainsThenArrayContainsFrom!491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114689 () Bool)

(assert (=> b!1154783 (= c!114689 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767420 () Bool)

(assert (=> b!1154783 (= res!767420 e!656779)))

(declare-fun e!656783 () Bool)

(assert (=> b!1154783 (=> (not res!767420) (not e!656783))))

(assert (=> b!1154783 e!656783))

(declare-fun lt!517910 () Unit!37918)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74718 (_ BitVec 32) (_ BitVec 32)) Unit!37918)

(assert (=> b!1154783 (= lt!517910 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25338 0))(
  ( (Nil!25335) (Cons!25334 (h!26543 (_ BitVec 64)) (t!36768 List!25338)) )
))
(declare-fun arrayNoDuplicates!0 (array!74718 (_ BitVec 32) List!25338) Bool)

(assert (=> b!1154783 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25335)))

(declare-fun lt!517906 () Unit!37918)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74718 (_ BitVec 64) (_ BitVec 32) List!25338) Unit!37918)

(assert (=> b!1154783 (= lt!517906 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25335))))

(assert (=> b!1154783 false))

(declare-fun b!1154784 () Bool)

(assert (=> b!1154784 (= e!656783 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54716 () Bool)

(declare-fun contains!6771 (ListLongMap!16535 (_ BitVec 64)) Bool)

(assert (=> bm!54716 (= call!54714 (contains!6771 (ite c!114688 lt!517908 call!54716) k!934))))

(declare-fun b!1154785 () Bool)

(assert (=> b!1154785 (= e!656791 true)))

(declare-fun e!656782 () Bool)

(assert (=> b!1154785 e!656782))

(declare-fun res!767412 () Bool)

(assert (=> b!1154785 (=> (not res!767412) (not e!656782))))

(declare-fun lt!517922 () ListLongMap!16535)

(assert (=> b!1154785 (= res!767412 (= lt!517922 lt!517912))))

(declare-fun -!1361 (ListLongMap!16535 (_ BitVec 64)) ListLongMap!16535)

(assert (=> b!1154785 (= lt!517922 (-!1361 lt!517919 k!934))))

(declare-fun lt!517915 () V!43741)

(declare-fun +!3614 (ListLongMap!16535 tuple2!18554) ListLongMap!16535)

(assert (=> b!1154785 (= (-!1361 (+!3614 lt!517912 (tuple2!18555 (select (arr!36006 _keys!1208) from!1455) lt!517915)) (select (arr!36006 _keys!1208) from!1455)) lt!517912)))

(declare-fun lt!517903 () Unit!37918)

(declare-fun addThenRemoveForNewKeyIsSame!204 (ListLongMap!16535 (_ BitVec 64) V!43741) Unit!37918)

(assert (=> b!1154785 (= lt!517903 (addThenRemoveForNewKeyIsSame!204 lt!517912 (select (arr!36006 _keys!1208) from!1455) lt!517915))))

(declare-fun get!18368 (ValueCell!13771 V!43741) V!43741)

(assert (=> b!1154785 (= lt!517915 (get!18368 (select (arr!36007 _values!996) from!1455) lt!517916))))

(declare-fun lt!517914 () Unit!37918)

(assert (=> b!1154785 (= lt!517914 e!656792)))

(declare-fun c!114690 () Bool)

(assert (=> b!1154785 (= c!114690 (contains!6771 lt!517912 k!934))))

(assert (=> b!1154785 (= lt!517912 (getCurrentListMapNoExtraKeys!4722 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154786 () Bool)

(assert (=> b!1154786 (= e!656782 (= lt!517922 (getCurrentListMapNoExtraKeys!4722 lt!517917 lt!517902 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1154776 () Bool)

(assert (=> b!1154776 (= e!656780 e!656787)))

(declare-fun res!767422 () Bool)

(assert (=> b!1154776 (=> (not res!767422) (not e!656787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74718 (_ BitVec 32)) Bool)

(assert (=> b!1154776 (= res!767422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517917 mask!1564))))

(assert (=> b!1154776 (= lt!517917 (array!74719 (store (arr!36006 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36543 _keys!1208)))))

(declare-fun res!767414 () Bool)

(assert (=> start!98862 (=> (not res!767414) (not e!656780))))

(assert (=> start!98862 (= res!767414 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36543 _keys!1208))))))

(assert (=> start!98862 e!656780))

(assert (=> start!98862 tp_is_empty!28961))

(declare-fun array_inv!27436 (array!74718) Bool)

(assert (=> start!98862 (array_inv!27436 _keys!1208)))

(assert (=> start!98862 true))

(assert (=> start!98862 tp!86004))

(declare-fun e!656786 () Bool)

(declare-fun array_inv!27437 (array!74720) Bool)

(assert (=> start!98862 (and (array_inv!27437 _values!996) e!656786)))

(declare-fun b!1154787 () Bool)

(declare-fun res!767423 () Bool)

(assert (=> b!1154787 (=> (not res!767423) (not e!656780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154787 (= res!767423 (validMask!0 mask!1564))))

(declare-fun b!1154788 () Bool)

(assert (=> b!1154788 (= c!114685 (and (not lt!517907) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656793 () Unit!37918)

(assert (=> b!1154788 (= e!656785 e!656793)))

(declare-fun b!1154789 () Bool)

(declare-fun res!767416 () Bool)

(assert (=> b!1154789 (=> (not res!767416) (not e!656780))))

(assert (=> b!1154789 (= res!767416 (= (select (arr!36006 _keys!1208) i!673) k!934))))

(declare-fun b!1154790 () Bool)

(declare-fun lt!517913 () Unit!37918)

(assert (=> b!1154790 (= e!656793 lt!517913)))

(assert (=> b!1154790 (= lt!517913 call!54717)))

(assert (=> b!1154790 call!54719))

(declare-fun b!1154791 () Bool)

(declare-fun res!767411 () Bool)

(assert (=> b!1154791 (=> (not res!767411) (not e!656780))))

(assert (=> b!1154791 (= res!767411 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25335))))

(declare-fun b!1154792 () Bool)

(assert (=> b!1154792 call!54719))

(declare-fun lt!517918 () Unit!37918)

(assert (=> b!1154792 (= lt!517918 call!54717)))

(assert (=> b!1154792 (= e!656781 lt!517918)))

(declare-fun b!1154793 () Bool)

(assert (=> b!1154793 (= e!656786 (and e!656777 mapRes!45266))))

(declare-fun condMapEmpty!45266 () Bool)

(declare-fun mapDefault!45266 () ValueCell!13771)

