; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99330 () Bool)

(assert start!99330)

(declare-fun b_free!24873 () Bool)

(declare-fun b_next!24873 () Bool)

(assert (=> start!99330 (= b_free!24873 (not b_next!24873))))

(declare-fun tp!87333 () Bool)

(declare-fun b_and!40627 () Bool)

(assert (=> start!99330 (= tp!87333 b_and!40627)))

(declare-fun b!1169834 () Bool)

(declare-fun e!664917 () Bool)

(declare-fun e!664924 () Bool)

(assert (=> b!1169834 (= e!664917 e!664924)))

(declare-fun res!776378 () Bool)

(assert (=> b!1169834 (=> res!776378 e!664924)))

(declare-datatypes ((array!75582 0))(
  ( (array!75583 (arr!36437 (Array (_ BitVec 32) (_ BitVec 64))) (size!36974 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75582)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169834 (= res!776378 (not (= (select (arr!36437 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1169835 () Bool)

(declare-fun res!776384 () Bool)

(declare-fun e!664919 () Bool)

(assert (=> b!1169835 (=> (not res!776384) (not e!664919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169835 (= res!776384 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45932 () Bool)

(declare-fun mapRes!45932 () Bool)

(assert (=> mapIsEmpty!45932 mapRes!45932))

(declare-fun b!1169836 () Bool)

(declare-fun res!776386 () Bool)

(assert (=> b!1169836 (=> (not res!776386) (not e!664919))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169836 (= res!776386 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36974 _keys!1208))))))

(declare-fun b!1169837 () Bool)

(declare-fun e!664926 () Bool)

(assert (=> b!1169837 (= e!664926 true)))

(assert (=> b!1169837 e!664917))

(declare-fun res!776385 () Bool)

(assert (=> b!1169837 (=> (not res!776385) (not e!664917))))

(declare-datatypes ((V!44331 0))(
  ( (V!44332 (val!14758 Int)) )
))
(declare-datatypes ((tuple2!18932 0))(
  ( (tuple2!18933 (_1!9476 (_ BitVec 64)) (_2!9476 V!44331)) )
))
(declare-datatypes ((List!25704 0))(
  ( (Nil!25701) (Cons!25700 (h!26909 tuple2!18932) (t!37576 List!25704)) )
))
(declare-datatypes ((ListLongMap!16913 0))(
  ( (ListLongMap!16914 (toList!8472 List!25704)) )
))
(declare-fun lt!526779 () ListLongMap!16913)

(declare-fun lt!526783 () V!44331)

(declare-fun lt!526782 () ListLongMap!16913)

(declare-datatypes ((ValueCell!13992 0))(
  ( (ValueCellFull!13992 (v!17397 V!44331)) (EmptyCell!13992) )
))
(declare-datatypes ((array!75584 0))(
  ( (array!75585 (arr!36438 (Array (_ BitVec 32) ValueCell!13992)) (size!36975 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75584)

(declare-fun +!3717 (ListLongMap!16913 tuple2!18932) ListLongMap!16913)

(declare-fun get!18608 (ValueCell!13992 V!44331) V!44331)

(assert (=> b!1169837 (= res!776385 (= lt!526779 (+!3717 lt!526782 (tuple2!18933 (select (arr!36437 _keys!1208) from!1455) (get!18608 (select (arr!36438 _values!996) from!1455) lt!526783)))))))

(declare-fun b!1169838 () Bool)

(declare-fun res!776387 () Bool)

(assert (=> b!1169838 (=> (not res!776387) (not e!664919))))

(assert (=> b!1169838 (= res!776387 (= (select (arr!36437 _keys!1208) i!673) k0!934))))

(declare-fun b!1169839 () Bool)

(declare-fun res!776382 () Bool)

(declare-fun e!664927 () Bool)

(assert (=> b!1169839 (=> (not res!776382) (not e!664927))))

(declare-fun lt!526786 () array!75582)

(declare-datatypes ((List!25705 0))(
  ( (Nil!25702) (Cons!25701 (h!26910 (_ BitVec 64)) (t!37577 List!25705)) )
))
(declare-fun arrayNoDuplicates!0 (array!75582 (_ BitVec 32) List!25705) Bool)

(assert (=> b!1169839 (= res!776382 (arrayNoDuplicates!0 lt!526786 #b00000000000000000000000000000000 Nil!25702))))

(declare-fun b!1169840 () Bool)

(declare-fun e!664923 () Bool)

(declare-fun tp_is_empty!29403 () Bool)

(assert (=> b!1169840 (= e!664923 tp_is_empty!29403)))

(declare-fun b!1169841 () Bool)

(declare-fun e!664921 () Bool)

(assert (=> b!1169841 (= e!664921 (and e!664923 mapRes!45932))))

(declare-fun condMapEmpty!45932 () Bool)

(declare-fun mapDefault!45932 () ValueCell!13992)

(assert (=> b!1169841 (= condMapEmpty!45932 (= (arr!36438 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13992)) mapDefault!45932)))))

(declare-fun b!1169842 () Bool)

(declare-fun e!664918 () Bool)

(declare-fun e!664920 () Bool)

(assert (=> b!1169842 (= e!664918 e!664920)))

(declare-fun res!776392 () Bool)

(assert (=> b!1169842 (=> res!776392 e!664920)))

(assert (=> b!1169842 (= res!776392 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526785 () array!75584)

(declare-fun minValue!944 () V!44331)

(declare-fun zeroValue!944 () V!44331)

(declare-fun getCurrentListMapNoExtraKeys!4905 (array!75582 array!75584 (_ BitVec 32) (_ BitVec 32) V!44331 V!44331 (_ BitVec 32) Int) ListLongMap!16913)

(assert (=> b!1169842 (= lt!526779 (getCurrentListMapNoExtraKeys!4905 lt!526786 lt!526785 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1169842 (= lt!526785 (array!75585 (store (arr!36438 _values!996) i!673 (ValueCellFull!13992 lt!526783)) (size!36975 _values!996)))))

(declare-fun dynLambda!2895 (Int (_ BitVec 64)) V!44331)

(assert (=> b!1169842 (= lt!526783 (dynLambda!2895 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526787 () ListLongMap!16913)

(assert (=> b!1169842 (= lt!526787 (getCurrentListMapNoExtraKeys!4905 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169843 () Bool)

(declare-fun res!776391 () Bool)

(assert (=> b!1169843 (=> (not res!776391) (not e!664919))))

(assert (=> b!1169843 (= res!776391 (and (= (size!36975 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36974 _keys!1208) (size!36975 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169844 () Bool)

(declare-fun e!664922 () Bool)

(assert (=> b!1169844 (= e!664922 tp_is_empty!29403)))

(declare-fun b!1169845 () Bool)

(assert (=> b!1169845 (= e!664927 (not e!664918))))

(declare-fun res!776379 () Bool)

(assert (=> b!1169845 (=> res!776379 e!664918)))

(assert (=> b!1169845 (= res!776379 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169845 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38488 0))(
  ( (Unit!38489) )
))
(declare-fun lt!526784 () Unit!38488)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75582 (_ BitVec 64) (_ BitVec 32)) Unit!38488)

(assert (=> b!1169845 (= lt!526784 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169846 () Bool)

(assert (=> b!1169846 (= e!664920 e!664926)))

(declare-fun res!776390 () Bool)

(assert (=> b!1169846 (=> res!776390 e!664926)))

(assert (=> b!1169846 (= res!776390 (not (validKeyInArray!0 (select (arr!36437 _keys!1208) from!1455))))))

(declare-fun lt!526788 () ListLongMap!16913)

(assert (=> b!1169846 (= lt!526788 lt!526782)))

(declare-fun lt!526781 () ListLongMap!16913)

(declare-fun -!1495 (ListLongMap!16913 (_ BitVec 64)) ListLongMap!16913)

(assert (=> b!1169846 (= lt!526782 (-!1495 lt!526781 k0!934))))

(assert (=> b!1169846 (= lt!526788 (getCurrentListMapNoExtraKeys!4905 lt!526786 lt!526785 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169846 (= lt!526781 (getCurrentListMapNoExtraKeys!4905 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526780 () Unit!38488)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!719 (array!75582 array!75584 (_ BitVec 32) (_ BitVec 32) V!44331 V!44331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38488)

(assert (=> b!1169846 (= lt!526780 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!719 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169847 () Bool)

(declare-fun res!776383 () Bool)

(assert (=> b!1169847 (=> (not res!776383) (not e!664919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169847 (= res!776383 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!45932 () Bool)

(declare-fun tp!87334 () Bool)

(assert (=> mapNonEmpty!45932 (= mapRes!45932 (and tp!87334 e!664922))))

(declare-fun mapValue!45932 () ValueCell!13992)

(declare-fun mapKey!45932 () (_ BitVec 32))

(declare-fun mapRest!45932 () (Array (_ BitVec 32) ValueCell!13992))

(assert (=> mapNonEmpty!45932 (= (arr!36438 _values!996) (store mapRest!45932 mapKey!45932 mapValue!45932))))

(declare-fun b!1169849 () Bool)

(assert (=> b!1169849 (= e!664924 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!776380 () Bool)

(assert (=> start!99330 (=> (not res!776380) (not e!664919))))

(assert (=> start!99330 (= res!776380 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36974 _keys!1208))))))

(assert (=> start!99330 e!664919))

(assert (=> start!99330 tp_is_empty!29403))

(declare-fun array_inv!27732 (array!75582) Bool)

(assert (=> start!99330 (array_inv!27732 _keys!1208)))

(assert (=> start!99330 true))

(assert (=> start!99330 tp!87333))

(declare-fun array_inv!27733 (array!75584) Bool)

(assert (=> start!99330 (and (array_inv!27733 _values!996) e!664921)))

(declare-fun b!1169848 () Bool)

(assert (=> b!1169848 (= e!664919 e!664927)))

(declare-fun res!776388 () Bool)

(assert (=> b!1169848 (=> (not res!776388) (not e!664927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75582 (_ BitVec 32)) Bool)

(assert (=> b!1169848 (= res!776388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526786 mask!1564))))

(assert (=> b!1169848 (= lt!526786 (array!75583 (store (arr!36437 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36974 _keys!1208)))))

(declare-fun b!1169850 () Bool)

(declare-fun res!776381 () Bool)

(assert (=> b!1169850 (=> (not res!776381) (not e!664919))))

(assert (=> b!1169850 (= res!776381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169851 () Bool)

(declare-fun res!776389 () Bool)

(assert (=> b!1169851 (=> (not res!776389) (not e!664919))))

(assert (=> b!1169851 (= res!776389 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25702))))

(assert (= (and start!99330 res!776380) b!1169847))

(assert (= (and b!1169847 res!776383) b!1169843))

(assert (= (and b!1169843 res!776391) b!1169850))

(assert (= (and b!1169850 res!776381) b!1169851))

(assert (= (and b!1169851 res!776389) b!1169836))

(assert (= (and b!1169836 res!776386) b!1169835))

(assert (= (and b!1169835 res!776384) b!1169838))

(assert (= (and b!1169838 res!776387) b!1169848))

(assert (= (and b!1169848 res!776388) b!1169839))

(assert (= (and b!1169839 res!776382) b!1169845))

(assert (= (and b!1169845 (not res!776379)) b!1169842))

(assert (= (and b!1169842 (not res!776392)) b!1169846))

(assert (= (and b!1169846 (not res!776390)) b!1169837))

(assert (= (and b!1169837 res!776385) b!1169834))

(assert (= (and b!1169834 (not res!776378)) b!1169849))

(assert (= (and b!1169841 condMapEmpty!45932) mapIsEmpty!45932))

(assert (= (and b!1169841 (not condMapEmpty!45932)) mapNonEmpty!45932))

(get-info :version)

(assert (= (and mapNonEmpty!45932 ((_ is ValueCellFull!13992) mapValue!45932)) b!1169844))

(assert (= (and b!1169841 ((_ is ValueCellFull!13992) mapDefault!45932)) b!1169840))

(assert (= start!99330 b!1169841))

(declare-fun b_lambda!20035 () Bool)

(assert (=> (not b_lambda!20035) (not b!1169842)))

(declare-fun t!37575 () Bool)

(declare-fun tb!9693 () Bool)

(assert (=> (and start!99330 (= defaultEntry!1004 defaultEntry!1004) t!37575) tb!9693))

(declare-fun result!19945 () Bool)

(assert (=> tb!9693 (= result!19945 tp_is_empty!29403)))

(assert (=> b!1169842 t!37575))

(declare-fun b_and!40629 () Bool)

(assert (= b_and!40627 (and (=> t!37575 result!19945) b_and!40629)))

(declare-fun m!1077731 () Bool)

(assert (=> b!1169851 m!1077731))

(declare-fun m!1077733 () Bool)

(assert (=> b!1169848 m!1077733))

(declare-fun m!1077735 () Bool)

(assert (=> b!1169848 m!1077735))

(declare-fun m!1077737 () Bool)

(assert (=> b!1169849 m!1077737))

(declare-fun m!1077739 () Bool)

(assert (=> b!1169838 m!1077739))

(declare-fun m!1077741 () Bool)

(assert (=> b!1169842 m!1077741))

(declare-fun m!1077743 () Bool)

(assert (=> b!1169842 m!1077743))

(declare-fun m!1077745 () Bool)

(assert (=> b!1169842 m!1077745))

(declare-fun m!1077747 () Bool)

(assert (=> b!1169842 m!1077747))

(declare-fun m!1077749 () Bool)

(assert (=> b!1169834 m!1077749))

(declare-fun m!1077751 () Bool)

(assert (=> b!1169845 m!1077751))

(declare-fun m!1077753 () Bool)

(assert (=> b!1169845 m!1077753))

(declare-fun m!1077755 () Bool)

(assert (=> mapNonEmpty!45932 m!1077755))

(declare-fun m!1077757 () Bool)

(assert (=> b!1169846 m!1077757))

(declare-fun m!1077759 () Bool)

(assert (=> b!1169846 m!1077759))

(declare-fun m!1077761 () Bool)

(assert (=> b!1169846 m!1077761))

(assert (=> b!1169846 m!1077749))

(declare-fun m!1077763 () Bool)

(assert (=> b!1169846 m!1077763))

(declare-fun m!1077765 () Bool)

(assert (=> b!1169846 m!1077765))

(assert (=> b!1169846 m!1077749))

(declare-fun m!1077767 () Bool)

(assert (=> start!99330 m!1077767))

(declare-fun m!1077769 () Bool)

(assert (=> start!99330 m!1077769))

(declare-fun m!1077771 () Bool)

(assert (=> b!1169835 m!1077771))

(declare-fun m!1077773 () Bool)

(assert (=> b!1169847 m!1077773))

(declare-fun m!1077775 () Bool)

(assert (=> b!1169850 m!1077775))

(declare-fun m!1077777 () Bool)

(assert (=> b!1169839 m!1077777))

(assert (=> b!1169837 m!1077749))

(declare-fun m!1077779 () Bool)

(assert (=> b!1169837 m!1077779))

(assert (=> b!1169837 m!1077779))

(declare-fun m!1077781 () Bool)

(assert (=> b!1169837 m!1077781))

(declare-fun m!1077783 () Bool)

(assert (=> b!1169837 m!1077783))

(check-sat (not b!1169851) tp_is_empty!29403 (not b!1169842) (not b!1169849) (not b!1169837) (not b!1169847) b_and!40629 (not b_lambda!20035) (not b!1169850) (not b!1169839) (not b_next!24873) (not b!1169846) (not start!99330) (not b!1169835) (not mapNonEmpty!45932) (not b!1169848) (not b!1169845))
(check-sat b_and!40629 (not b_next!24873))
