; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79382 () Bool)

(assert start!79382)

(declare-fun b_free!17541 () Bool)

(declare-fun b_next!17541 () Bool)

(assert (=> start!79382 (= b_free!17541 (not b_next!17541))))

(declare-fun tp!61068 () Bool)

(declare-fun b_and!28659 () Bool)

(assert (=> start!79382 (= tp!61068 b_and!28659)))

(declare-fun b!931926 () Bool)

(declare-fun e!523391 () Bool)

(declare-fun tp_is_empty!20049 () Bool)

(assert (=> b!931926 (= e!523391 tp_is_empty!20049)))

(declare-fun b!931927 () Bool)

(declare-fun e!523396 () Bool)

(declare-fun e!523393 () Bool)

(assert (=> b!931927 (= e!523396 e!523393)))

(declare-fun res!627730 () Bool)

(assert (=> b!931927 (=> (not res!627730) (not e!523393))))

(declare-datatypes ((V!31697 0))(
  ( (V!31698 (val!10075 Int)) )
))
(declare-datatypes ((tuple2!13302 0))(
  ( (tuple2!13303 (_1!6661 (_ BitVec 64)) (_2!6661 V!31697)) )
))
(declare-datatypes ((List!19116 0))(
  ( (Nil!19113) (Cons!19112 (h!20258 tuple2!13302) (t!27209 List!19116)) )
))
(declare-datatypes ((ListLongMap!12013 0))(
  ( (ListLongMap!12014 (toList!6022 List!19116)) )
))
(declare-fun lt!419679 () ListLongMap!12013)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5024 (ListLongMap!12013 (_ BitVec 64)) Bool)

(assert (=> b!931927 (= res!627730 (contains!5024 lt!419679 k0!1099))))

(declare-datatypes ((array!56066 0))(
  ( (array!56067 (arr!26973 (Array (_ BitVec 32) (_ BitVec 64))) (size!27433 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56066)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9543 0))(
  ( (ValueCellFull!9543 (v!12594 V!31697)) (EmptyCell!9543) )
))
(declare-datatypes ((array!56068 0))(
  ( (array!56069 (arr!26974 (Array (_ BitVec 32) ValueCell!9543)) (size!27434 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56068)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31697)

(declare-fun minValue!1173 () V!31697)

(declare-fun getCurrentListMap!3217 (array!56066 array!56068 (_ BitVec 32) (_ BitVec 32) V!31697 V!31697 (_ BitVec 32) Int) ListLongMap!12013)

(assert (=> b!931927 (= lt!419679 (getCurrentListMap!3217 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931928 () Bool)

(declare-fun res!627736 () Bool)

(assert (=> b!931928 (=> (not res!627736) (not e!523393))))

(declare-fun v!791 () V!31697)

(declare-fun apply!807 (ListLongMap!12013 (_ BitVec 64)) V!31697)

(assert (=> b!931928 (= res!627736 (= (apply!807 lt!419679 k0!1099) v!791))))

(declare-fun res!627733 () Bool)

(assert (=> start!79382 (=> (not res!627733) (not e!523396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79382 (= res!627733 (validMask!0 mask!1881))))

(assert (=> start!79382 e!523396))

(assert (=> start!79382 true))

(assert (=> start!79382 tp_is_empty!20049))

(declare-fun e!523394 () Bool)

(declare-fun array_inv!20966 (array!56068) Bool)

(assert (=> start!79382 (and (array_inv!20966 _values!1231) e!523394)))

(assert (=> start!79382 tp!61068))

(declare-fun array_inv!20967 (array!56066) Bool)

(assert (=> start!79382 (array_inv!20967 _keys!1487)))

(declare-fun b!931929 () Bool)

(declare-fun res!627731 () Bool)

(assert (=> b!931929 (=> (not res!627731) (not e!523396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56066 (_ BitVec 32)) Bool)

(assert (=> b!931929 (= res!627731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931930 () Bool)

(declare-fun res!627734 () Bool)

(assert (=> b!931930 (=> (not res!627734) (not e!523393))))

(assert (=> b!931930 (= res!627734 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31833 () Bool)

(declare-fun mapRes!31833 () Bool)

(declare-fun tp!61067 () Bool)

(assert (=> mapNonEmpty!31833 (= mapRes!31833 (and tp!61067 e!523391))))

(declare-fun mapKey!31833 () (_ BitVec 32))

(declare-fun mapRest!31833 () (Array (_ BitVec 32) ValueCell!9543))

(declare-fun mapValue!31833 () ValueCell!9543)

(assert (=> mapNonEmpty!31833 (= (arr!26974 _values!1231) (store mapRest!31833 mapKey!31833 mapValue!31833))))

(declare-fun b!931931 () Bool)

(declare-fun res!627735 () Bool)

(assert (=> b!931931 (=> (not res!627735) (not e!523393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931931 (= res!627735 (validKeyInArray!0 k0!1099))))

(declare-fun mapIsEmpty!31833 () Bool)

(assert (=> mapIsEmpty!31833 mapRes!31833))

(declare-fun b!931932 () Bool)

(declare-fun e!523397 () Bool)

(assert (=> b!931932 (= e!523393 e!523397)))

(declare-fun res!627737 () Bool)

(assert (=> b!931932 (=> (not res!627737) (not e!523397))))

(declare-fun lt!419681 () (_ BitVec 64))

(assert (=> b!931932 (= res!627737 (validKeyInArray!0 lt!419681))))

(assert (=> b!931932 (= lt!419681 (select (arr!26973 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931933 () Bool)

(declare-fun e!523395 () Bool)

(assert (=> b!931933 (= e!523395 tp_is_empty!20049)))

(declare-fun b!931934 () Bool)

(declare-fun res!627728 () Bool)

(assert (=> b!931934 (=> (not res!627728) (not e!523396))))

(assert (=> b!931934 (= res!627728 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27433 _keys!1487))))))

(declare-fun b!931935 () Bool)

(declare-fun res!627732 () Bool)

(assert (=> b!931935 (=> (not res!627732) (not e!523396))))

(declare-datatypes ((List!19117 0))(
  ( (Nil!19114) (Cons!19113 (h!20259 (_ BitVec 64)) (t!27210 List!19117)) )
))
(declare-fun arrayNoDuplicates!0 (array!56066 (_ BitVec 32) List!19117) Bool)

(assert (=> b!931935 (= res!627732 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19114))))

(declare-fun b!931936 () Bool)

(assert (=> b!931936 (= e!523394 (and e!523395 mapRes!31833))))

(declare-fun condMapEmpty!31833 () Bool)

(declare-fun mapDefault!31833 () ValueCell!9543)

(assert (=> b!931936 (= condMapEmpty!31833 (= (arr!26974 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9543)) mapDefault!31833)))))

(declare-fun b!931937 () Bool)

(assert (=> b!931937 (= e!523397 (not true))))

(declare-fun lt!419680 () tuple2!13302)

(declare-fun +!2731 (ListLongMap!12013 tuple2!13302) ListLongMap!12013)

(assert (=> b!931937 (contains!5024 (+!2731 lt!419679 lt!419680) k0!1099)))

(declare-datatypes ((Unit!31450 0))(
  ( (Unit!31451) )
))
(declare-fun lt!419682 () Unit!31450)

(declare-fun lt!419678 () V!31697)

(declare-fun addStillContains!487 (ListLongMap!12013 (_ BitVec 64) V!31697 (_ BitVec 64)) Unit!31450)

(assert (=> b!931937 (= lt!419682 (addStillContains!487 lt!419679 lt!419681 lt!419678 k0!1099))))

(assert (=> b!931937 (= (getCurrentListMap!3217 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2731 (getCurrentListMap!3217 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419680))))

(assert (=> b!931937 (= lt!419680 (tuple2!13303 lt!419681 lt!419678))))

(declare-fun get!14193 (ValueCell!9543 V!31697) V!31697)

(declare-fun dynLambda!1570 (Int (_ BitVec 64)) V!31697)

(assert (=> b!931937 (= lt!419678 (get!14193 (select (arr!26974 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1570 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419683 () Unit!31450)

(declare-fun lemmaListMapRecursiveValidKeyArray!166 (array!56066 array!56068 (_ BitVec 32) (_ BitVec 32) V!31697 V!31697 (_ BitVec 32) Int) Unit!31450)

(assert (=> b!931937 (= lt!419683 (lemmaListMapRecursiveValidKeyArray!166 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931938 () Bool)

(declare-fun res!627729 () Bool)

(assert (=> b!931938 (=> (not res!627729) (not e!523396))))

(assert (=> b!931938 (= res!627729 (and (= (size!27434 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27433 _keys!1487) (size!27434 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79382 res!627733) b!931938))

(assert (= (and b!931938 res!627729) b!931929))

(assert (= (and b!931929 res!627731) b!931935))

(assert (= (and b!931935 res!627732) b!931934))

(assert (= (and b!931934 res!627728) b!931927))

(assert (= (and b!931927 res!627730) b!931928))

(assert (= (and b!931928 res!627736) b!931930))

(assert (= (and b!931930 res!627734) b!931931))

(assert (= (and b!931931 res!627735) b!931932))

(assert (= (and b!931932 res!627737) b!931937))

(assert (= (and b!931936 condMapEmpty!31833) mapIsEmpty!31833))

(assert (= (and b!931936 (not condMapEmpty!31833)) mapNonEmpty!31833))

(get-info :version)

(assert (= (and mapNonEmpty!31833 ((_ is ValueCellFull!9543) mapValue!31833)) b!931926))

(assert (= (and b!931936 ((_ is ValueCellFull!9543) mapDefault!31833)) b!931933))

(assert (= start!79382 b!931936))

(declare-fun b_lambda!13905 () Bool)

(assert (=> (not b_lambda!13905) (not b!931937)))

(declare-fun t!27208 () Bool)

(declare-fun tb!5943 () Bool)

(assert (=> (and start!79382 (= defaultEntry!1235 defaultEntry!1235) t!27208) tb!5943))

(declare-fun result!11703 () Bool)

(assert (=> tb!5943 (= result!11703 tp_is_empty!20049)))

(assert (=> b!931937 t!27208))

(declare-fun b_and!28661 () Bool)

(assert (= b_and!28659 (and (=> t!27208 result!11703) b_and!28661)))

(declare-fun m!865975 () Bool)

(assert (=> b!931929 m!865975))

(declare-fun m!865977 () Bool)

(assert (=> b!931937 m!865977))

(declare-fun m!865979 () Bool)

(assert (=> b!931937 m!865979))

(declare-fun m!865981 () Bool)

(assert (=> b!931937 m!865981))

(assert (=> b!931937 m!865979))

(assert (=> b!931937 m!865981))

(declare-fun m!865983 () Bool)

(assert (=> b!931937 m!865983))

(declare-fun m!865985 () Bool)

(assert (=> b!931937 m!865985))

(assert (=> b!931937 m!865985))

(declare-fun m!865987 () Bool)

(assert (=> b!931937 m!865987))

(declare-fun m!865989 () Bool)

(assert (=> b!931937 m!865989))

(declare-fun m!865991 () Bool)

(assert (=> b!931937 m!865991))

(declare-fun m!865993 () Bool)

(assert (=> b!931937 m!865993))

(assert (=> b!931937 m!865989))

(declare-fun m!865995 () Bool)

(assert (=> b!931937 m!865995))

(declare-fun m!865997 () Bool)

(assert (=> b!931928 m!865997))

(declare-fun m!865999 () Bool)

(assert (=> b!931932 m!865999))

(declare-fun m!866001 () Bool)

(assert (=> b!931932 m!866001))

(declare-fun m!866003 () Bool)

(assert (=> mapNonEmpty!31833 m!866003))

(declare-fun m!866005 () Bool)

(assert (=> b!931931 m!866005))

(declare-fun m!866007 () Bool)

(assert (=> b!931935 m!866007))

(declare-fun m!866009 () Bool)

(assert (=> b!931927 m!866009))

(declare-fun m!866011 () Bool)

(assert (=> b!931927 m!866011))

(declare-fun m!866013 () Bool)

(assert (=> start!79382 m!866013))

(declare-fun m!866015 () Bool)

(assert (=> start!79382 m!866015))

(declare-fun m!866017 () Bool)

(assert (=> start!79382 m!866017))

(check-sat (not b!931937) (not b!931932) (not b_next!17541) b_and!28661 (not b_lambda!13905) (not b!931931) (not b!931935) (not b!931928) (not b!931929) tp_is_empty!20049 (not mapNonEmpty!31833) (not b!931927) (not start!79382))
(check-sat b_and!28661 (not b_next!17541))
