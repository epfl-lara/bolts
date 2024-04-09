; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97288 () Bool)

(assert start!97288)

(declare-fun b_free!23223 () Bool)

(declare-fun b_next!23223 () Bool)

(assert (=> start!97288 (= b_free!23223 (not b_next!23223))))

(declare-fun tp!81969 () Bool)

(declare-fun b_and!37295 () Bool)

(assert (=> start!97288 (= tp!81969 b_and!37295)))

(declare-fun b!1106895 () Bool)

(declare-fun res!738810 () Bool)

(declare-fun e!631627 () Bool)

(assert (=> b!1106895 (=> (not res!738810) (not e!631627))))

(declare-datatypes ((array!71836 0))(
  ( (array!71837 (arr!34567 (Array (_ BitVec 32) (_ BitVec 64))) (size!35104 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71836)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1106895 (= res!738810 (= (select (arr!34567 _keys!1208) i!673) k0!934))))

(declare-fun b!1106896 () Bool)

(declare-fun e!631625 () Bool)

(assert (=> b!1106896 (= e!631627 e!631625)))

(declare-fun res!738811 () Bool)

(assert (=> b!1106896 (=> (not res!738811) (not e!631625))))

(declare-fun lt!495519 () array!71836)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71836 (_ BitVec 32)) Bool)

(assert (=> b!1106896 (= res!738811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495519 mask!1564))))

(assert (=> b!1106896 (= lt!495519 (array!71837 (store (arr!34567 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35104 _keys!1208)))))

(declare-fun b!1106897 () Bool)

(declare-fun e!631626 () Bool)

(assert (=> b!1106897 (= e!631625 (not e!631626))))

(declare-fun res!738808 () Bool)

(assert (=> b!1106897 (=> res!738808 e!631626)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1106897 (= res!738808 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35104 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106897 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36263 0))(
  ( (Unit!36264) )
))
(declare-fun lt!495518 () Unit!36263)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71836 (_ BitVec 64) (_ BitVec 32)) Unit!36263)

(assert (=> b!1106897 (= lt!495518 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1106898 () Bool)

(declare-fun e!631631 () Bool)

(declare-fun tp_is_empty!27483 () Bool)

(assert (=> b!1106898 (= e!631631 tp_is_empty!27483)))

(declare-fun b!1106899 () Bool)

(declare-fun res!738813 () Bool)

(assert (=> b!1106899 (=> (not res!738813) (not e!631627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106899 (= res!738813 (validMask!0 mask!1564))))

(declare-fun b!1106900 () Bool)

(declare-fun e!631629 () Bool)

(assert (=> b!1106900 (= e!631629 tp_is_empty!27483)))

(declare-fun b!1106901 () Bool)

(assert (=> b!1106901 (= e!631626 true)))

(declare-fun e!631624 () Bool)

(assert (=> b!1106901 e!631624))

(declare-fun c!108962 () Bool)

(assert (=> b!1106901 (= c!108962 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!41771 0))(
  ( (V!41772 (val!13798 Int)) )
))
(declare-fun zeroValue!944 () V!41771)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!495517 () Unit!36263)

(declare-datatypes ((ValueCell!13032 0))(
  ( (ValueCellFull!13032 (v!16432 V!41771)) (EmptyCell!13032) )
))
(declare-datatypes ((array!71838 0))(
  ( (array!71839 (arr!34568 (Array (_ BitVec 32) ValueCell!13032)) (size!35105 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71838)

(declare-fun minValue!944 () V!41771)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!243 (array!71836 array!71838 (_ BitVec 32) (_ BitVec 32) V!41771 V!41771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36263)

(assert (=> b!1106901 (= lt!495517 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!243 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43042 () Bool)

(declare-fun mapRes!43042 () Bool)

(assert (=> mapIsEmpty!43042 mapRes!43042))

(declare-fun b!1106902 () Bool)

(declare-datatypes ((tuple2!17488 0))(
  ( (tuple2!17489 (_1!8754 (_ BitVec 64)) (_2!8754 V!41771)) )
))
(declare-datatypes ((List!24226 0))(
  ( (Nil!24223) (Cons!24222 (h!25431 tuple2!17488) (t!34502 List!24226)) )
))
(declare-datatypes ((ListLongMap!15469 0))(
  ( (ListLongMap!15470 (toList!7750 List!24226)) )
))
(declare-fun call!46367 () ListLongMap!15469)

(declare-fun call!46366 () ListLongMap!15469)

(assert (=> b!1106902 (= e!631624 (= call!46367 call!46366))))

(declare-fun bm!46363 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4219 (array!71836 array!71838 (_ BitVec 32) (_ BitVec 32) V!41771 V!41771 (_ BitVec 32) Int) ListLongMap!15469)

(declare-fun dynLambda!2350 (Int (_ BitVec 64)) V!41771)

(assert (=> bm!46363 (= call!46367 (getCurrentListMapNoExtraKeys!4219 lt!495519 (array!71839 (store (arr!34568 _values!996) i!673 (ValueCellFull!13032 (dynLambda!2350 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35105 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1106903 () Bool)

(declare-fun res!738804 () Bool)

(assert (=> b!1106903 (=> (not res!738804) (not e!631627))))

(assert (=> b!1106903 (= res!738804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106904 () Bool)

(declare-fun res!738805 () Bool)

(assert (=> b!1106904 (=> (not res!738805) (not e!631627))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106904 (= res!738805 (validKeyInArray!0 k0!934))))

(declare-fun b!1106905 () Bool)

(declare-fun e!631628 () Bool)

(assert (=> b!1106905 (= e!631628 (and e!631631 mapRes!43042))))

(declare-fun condMapEmpty!43042 () Bool)

(declare-fun mapDefault!43042 () ValueCell!13032)

(assert (=> b!1106905 (= condMapEmpty!43042 (= (arr!34568 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13032)) mapDefault!43042)))))

(declare-fun b!1106906 () Bool)

(declare-fun res!738809 () Bool)

(assert (=> b!1106906 (=> (not res!738809) (not e!631625))))

(declare-datatypes ((List!24227 0))(
  ( (Nil!24224) (Cons!24223 (h!25432 (_ BitVec 64)) (t!34503 List!24227)) )
))
(declare-fun arrayNoDuplicates!0 (array!71836 (_ BitVec 32) List!24227) Bool)

(assert (=> b!1106906 (= res!738809 (arrayNoDuplicates!0 lt!495519 #b00000000000000000000000000000000 Nil!24224))))

(declare-fun bm!46364 () Bool)

(assert (=> bm!46364 (= call!46366 (getCurrentListMapNoExtraKeys!4219 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43042 () Bool)

(declare-fun tp!81968 () Bool)

(assert (=> mapNonEmpty!43042 (= mapRes!43042 (and tp!81968 e!631629))))

(declare-fun mapKey!43042 () (_ BitVec 32))

(declare-fun mapRest!43042 () (Array (_ BitVec 32) ValueCell!13032))

(declare-fun mapValue!43042 () ValueCell!13032)

(assert (=> mapNonEmpty!43042 (= (arr!34568 _values!996) (store mapRest!43042 mapKey!43042 mapValue!43042))))

(declare-fun b!1106907 () Bool)

(declare-fun res!738803 () Bool)

(assert (=> b!1106907 (=> (not res!738803) (not e!631627))))

(assert (=> b!1106907 (= res!738803 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24224))))

(declare-fun res!738806 () Bool)

(assert (=> start!97288 (=> (not res!738806) (not e!631627))))

(assert (=> start!97288 (= res!738806 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35104 _keys!1208))))))

(assert (=> start!97288 e!631627))

(assert (=> start!97288 tp_is_empty!27483))

(declare-fun array_inv!26464 (array!71836) Bool)

(assert (=> start!97288 (array_inv!26464 _keys!1208)))

(assert (=> start!97288 true))

(assert (=> start!97288 tp!81969))

(declare-fun array_inv!26465 (array!71838) Bool)

(assert (=> start!97288 (and (array_inv!26465 _values!996) e!631628)))

(declare-fun b!1106908 () Bool)

(declare-fun res!738807 () Bool)

(assert (=> b!1106908 (=> (not res!738807) (not e!631627))))

(assert (=> b!1106908 (= res!738807 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35104 _keys!1208))))))

(declare-fun b!1106909 () Bool)

(declare-fun res!738812 () Bool)

(assert (=> b!1106909 (=> (not res!738812) (not e!631627))))

(assert (=> b!1106909 (= res!738812 (and (= (size!35105 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35104 _keys!1208) (size!35105 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106910 () Bool)

(declare-fun -!986 (ListLongMap!15469 (_ BitVec 64)) ListLongMap!15469)

(assert (=> b!1106910 (= e!631624 (= call!46367 (-!986 call!46366 k0!934)))))

(assert (= (and start!97288 res!738806) b!1106899))

(assert (= (and b!1106899 res!738813) b!1106909))

(assert (= (and b!1106909 res!738812) b!1106903))

(assert (= (and b!1106903 res!738804) b!1106907))

(assert (= (and b!1106907 res!738803) b!1106908))

(assert (= (and b!1106908 res!738807) b!1106904))

(assert (= (and b!1106904 res!738805) b!1106895))

(assert (= (and b!1106895 res!738810) b!1106896))

(assert (= (and b!1106896 res!738811) b!1106906))

(assert (= (and b!1106906 res!738809) b!1106897))

(assert (= (and b!1106897 (not res!738808)) b!1106901))

(assert (= (and b!1106901 c!108962) b!1106910))

(assert (= (and b!1106901 (not c!108962)) b!1106902))

(assert (= (or b!1106910 b!1106902) bm!46363))

(assert (= (or b!1106910 b!1106902) bm!46364))

(assert (= (and b!1106905 condMapEmpty!43042) mapIsEmpty!43042))

(assert (= (and b!1106905 (not condMapEmpty!43042)) mapNonEmpty!43042))

(get-info :version)

(assert (= (and mapNonEmpty!43042 ((_ is ValueCellFull!13032) mapValue!43042)) b!1106900))

(assert (= (and b!1106905 ((_ is ValueCellFull!13032) mapDefault!43042)) b!1106898))

(assert (= start!97288 b!1106905))

(declare-fun b_lambda!18271 () Bool)

(assert (=> (not b_lambda!18271) (not bm!46363)))

(declare-fun t!34501 () Bool)

(declare-fun tb!8097 () Bool)

(assert (=> (and start!97288 (= defaultEntry!1004 defaultEntry!1004) t!34501) tb!8097))

(declare-fun result!16747 () Bool)

(assert (=> tb!8097 (= result!16747 tp_is_empty!27483)))

(assert (=> bm!46363 t!34501))

(declare-fun b_and!37297 () Bool)

(assert (= b_and!37295 (and (=> t!34501 result!16747) b_and!37297)))

(declare-fun m!1025925 () Bool)

(assert (=> b!1106904 m!1025925))

(declare-fun m!1025927 () Bool)

(assert (=> bm!46364 m!1025927))

(declare-fun m!1025929 () Bool)

(assert (=> b!1106906 m!1025929))

(declare-fun m!1025931 () Bool)

(assert (=> bm!46363 m!1025931))

(declare-fun m!1025933 () Bool)

(assert (=> bm!46363 m!1025933))

(declare-fun m!1025935 () Bool)

(assert (=> bm!46363 m!1025935))

(declare-fun m!1025937 () Bool)

(assert (=> b!1106899 m!1025937))

(declare-fun m!1025939 () Bool)

(assert (=> mapNonEmpty!43042 m!1025939))

(declare-fun m!1025941 () Bool)

(assert (=> b!1106901 m!1025941))

(declare-fun m!1025943 () Bool)

(assert (=> start!97288 m!1025943))

(declare-fun m!1025945 () Bool)

(assert (=> start!97288 m!1025945))

(declare-fun m!1025947 () Bool)

(assert (=> b!1106897 m!1025947))

(declare-fun m!1025949 () Bool)

(assert (=> b!1106897 m!1025949))

(declare-fun m!1025951 () Bool)

(assert (=> b!1106903 m!1025951))

(declare-fun m!1025953 () Bool)

(assert (=> b!1106896 m!1025953))

(declare-fun m!1025955 () Bool)

(assert (=> b!1106896 m!1025955))

(declare-fun m!1025957 () Bool)

(assert (=> b!1106895 m!1025957))

(declare-fun m!1025959 () Bool)

(assert (=> b!1106910 m!1025959))

(declare-fun m!1025961 () Bool)

(assert (=> b!1106907 m!1025961))

(check-sat tp_is_empty!27483 (not b!1106899) (not b!1106906) (not b!1106901) (not b!1106903) b_and!37297 (not b!1106904) (not b!1106897) (not mapNonEmpty!43042) (not b_lambda!18271) (not b!1106907) (not b!1106896) (not b_next!23223) (not bm!46363) (not start!97288) (not bm!46364) (not b!1106910))
(check-sat b_and!37297 (not b_next!23223))
