; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79568 () Bool)

(assert start!79568)

(declare-fun b_free!17661 () Bool)

(declare-fun b_next!17661 () Bool)

(assert (=> start!79568 (= b_free!17661 (not b_next!17661))))

(declare-fun tp!61433 () Bool)

(declare-fun b_and!28915 () Bool)

(assert (=> start!79568 (= tp!61433 b_and!28915)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!934908 () Bool)

(declare-fun e!524982 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!56298 0))(
  ( (array!56299 (arr!27087 (Array (_ BitVec 32) (_ BitVec 64))) (size!27547 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56298)

(declare-fun arrayContainsKey!0 (array!56298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934908 (= e!524982 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!934909 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!934909 (= e!524982 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32019 () Bool)

(declare-fun mapRes!32019 () Bool)

(assert (=> mapIsEmpty!32019 mapRes!32019))

(declare-fun b!934910 () Bool)

(declare-fun e!524985 () Bool)

(declare-fun tp_is_empty!20169 () Bool)

(assert (=> b!934910 (= e!524985 tp_is_empty!20169)))

(declare-fun b!934911 () Bool)

(declare-fun e!524987 () Bool)

(declare-fun e!524989 () Bool)

(assert (=> b!934911 (= e!524987 e!524989)))

(declare-fun res!629726 () Bool)

(assert (=> b!934911 (=> (not res!629726) (not e!524989))))

(declare-datatypes ((V!31857 0))(
  ( (V!31858 (val!10135 Int)) )
))
(declare-datatypes ((tuple2!13404 0))(
  ( (tuple2!13405 (_1!6712 (_ BitVec 64)) (_2!6712 V!31857)) )
))
(declare-datatypes ((List!19211 0))(
  ( (Nil!19208) (Cons!19207 (h!20353 tuple2!13404) (t!27424 List!19211)) )
))
(declare-datatypes ((ListLongMap!12115 0))(
  ( (ListLongMap!12116 (toList!6073 List!19211)) )
))
(declare-fun lt!421294 () ListLongMap!12115)

(declare-fun contains!5077 (ListLongMap!12115 (_ BitVec 64)) Bool)

(assert (=> b!934911 (= res!629726 (contains!5077 lt!421294 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9603 0))(
  ( (ValueCellFull!9603 (v!12656 V!31857)) (EmptyCell!9603) )
))
(declare-datatypes ((array!56300 0))(
  ( (array!56301 (arr!27088 (Array (_ BitVec 32) ValueCell!9603)) (size!27548 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56300)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31857)

(declare-fun minValue!1173 () V!31857)

(declare-fun getCurrentListMap!3265 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 32) Int) ListLongMap!12115)

(assert (=> b!934911 (= lt!421294 (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934912 () Bool)

(declare-fun e!524983 () Bool)

(assert (=> b!934912 (= e!524989 e!524983)))

(declare-fun res!629730 () Bool)

(assert (=> b!934912 (=> (not res!629730) (not e!524983))))

(declare-fun lt!421296 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934912 (= res!629730 (validKeyInArray!0 lt!421296))))

(assert (=> b!934912 (= lt!421296 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934913 () Bool)

(declare-fun e!524984 () Bool)

(assert (=> b!934913 (= e!524984 tp_is_empty!20169)))

(declare-fun b!934914 () Bool)

(declare-fun res!629731 () Bool)

(assert (=> b!934914 (=> (not res!629731) (not e!524989))))

(assert (=> b!934914 (= res!629731 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934915 () Bool)

(declare-fun res!629736 () Bool)

(assert (=> b!934915 (=> (not res!629736) (not e!524987))))

(assert (=> b!934915 (= res!629736 (and (= (size!27548 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27547 _keys!1487) (size!27548 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934916 () Bool)

(declare-fun res!629728 () Bool)

(assert (=> b!934916 (=> (not res!629728) (not e!524989))))

(declare-fun v!791 () V!31857)

(declare-fun apply!852 (ListLongMap!12115 (_ BitVec 64)) V!31857)

(assert (=> b!934916 (= res!629728 (= (apply!852 lt!421294 k0!1099) v!791))))

(declare-fun b!934917 () Bool)

(declare-fun e!524981 () Bool)

(declare-datatypes ((List!19212 0))(
  ( (Nil!19209) (Cons!19208 (h!20354 (_ BitVec 64)) (t!27425 List!19212)) )
))
(declare-fun contains!5078 (List!19212 (_ BitVec 64)) Bool)

(assert (=> b!934917 (= e!524981 (not (contains!5078 Nil!19209 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934919 () Bool)

(declare-fun e!524990 () Bool)

(assert (=> b!934919 (= e!524990 e!524981)))

(declare-fun res!629735 () Bool)

(assert (=> b!934919 (=> (not res!629735) (not e!524981))))

(assert (=> b!934919 (= res!629735 (not (contains!5078 Nil!19209 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934920 () Bool)

(declare-fun res!629738 () Bool)

(assert (=> b!934920 (=> (not res!629738) (not e!524987))))

(declare-fun arrayNoDuplicates!0 (array!56298 (_ BitVec 32) List!19212) Bool)

(assert (=> b!934920 (= res!629738 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19209))))

(declare-fun mapNonEmpty!32019 () Bool)

(declare-fun tp!61434 () Bool)

(assert (=> mapNonEmpty!32019 (= mapRes!32019 (and tp!61434 e!524985))))

(declare-fun mapRest!32019 () (Array (_ BitVec 32) ValueCell!9603))

(declare-fun mapKey!32019 () (_ BitVec 32))

(declare-fun mapValue!32019 () ValueCell!9603)

(assert (=> mapNonEmpty!32019 (= (arr!27088 _values!1231) (store mapRest!32019 mapKey!32019 mapValue!32019))))

(declare-fun b!934921 () Bool)

(declare-fun e!524986 () Bool)

(assert (=> b!934921 (= e!524986 (and e!524984 mapRes!32019))))

(declare-fun condMapEmpty!32019 () Bool)

(declare-fun mapDefault!32019 () ValueCell!9603)

(assert (=> b!934921 (= condMapEmpty!32019 (= (arr!27088 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9603)) mapDefault!32019)))))

(declare-fun b!934922 () Bool)

(declare-fun res!629737 () Bool)

(assert (=> b!934922 (=> (not res!629737) (not e!524987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56298 (_ BitVec 32)) Bool)

(assert (=> b!934922 (= res!629737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934923 () Bool)

(declare-fun res!629727 () Bool)

(assert (=> b!934923 (=> res!629727 e!524990)))

(declare-fun noDuplicate!1355 (List!19212) Bool)

(assert (=> b!934923 (= res!629727 (not (noDuplicate!1355 Nil!19209)))))

(declare-fun b!934924 () Bool)

(declare-fun res!629729 () Bool)

(assert (=> b!934924 (=> (not res!629729) (not e!524987))))

(assert (=> b!934924 (= res!629729 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27547 _keys!1487))))))

(declare-fun b!934925 () Bool)

(assert (=> b!934925 (= e!524983 (not e!524990))))

(declare-fun res!629734 () Bool)

(assert (=> b!934925 (=> res!629734 e!524990)))

(assert (=> b!934925 (= res!629734 (or (bvsge (size!27547 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487))))))

(assert (=> b!934925 e!524982))

(declare-fun c!97147 () Bool)

(assert (=> b!934925 (= c!97147 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31542 0))(
  ( (Unit!31543) )
))
(declare-fun lt!421299 () Unit!31542)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!285 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 64) (_ BitVec 32) Int) Unit!31542)

(assert (=> b!934925 (= lt!421299 (lemmaListMapContainsThenArrayContainsFrom!285 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934925 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19209)))

(declare-fun lt!421297 () Unit!31542)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56298 (_ BitVec 32) (_ BitVec 32)) Unit!31542)

(assert (=> b!934925 (= lt!421297 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421298 () tuple2!13404)

(declare-fun +!2772 (ListLongMap!12115 tuple2!13404) ListLongMap!12115)

(assert (=> b!934925 (contains!5077 (+!2772 lt!421294 lt!421298) k0!1099)))

(declare-fun lt!421295 () V!31857)

(declare-fun lt!421292 () Unit!31542)

(declare-fun addStillContains!528 (ListLongMap!12115 (_ BitVec 64) V!31857 (_ BitVec 64)) Unit!31542)

(assert (=> b!934925 (= lt!421292 (addStillContains!528 lt!421294 lt!421296 lt!421295 k0!1099))))

(assert (=> b!934925 (= (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2772 (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421298))))

(assert (=> b!934925 (= lt!421298 (tuple2!13405 lt!421296 lt!421295))))

(declare-fun get!14280 (ValueCell!9603 V!31857) V!31857)

(declare-fun dynLambda!1611 (Int (_ BitVec 64)) V!31857)

(assert (=> b!934925 (= lt!421295 (get!14280 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421293 () Unit!31542)

(declare-fun lemmaListMapRecursiveValidKeyArray!207 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 32) Int) Unit!31542)

(assert (=> b!934925 (= lt!421293 (lemmaListMapRecursiveValidKeyArray!207 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!629733 () Bool)

(assert (=> start!79568 (=> (not res!629733) (not e!524987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79568 (= res!629733 (validMask!0 mask!1881))))

(assert (=> start!79568 e!524987))

(assert (=> start!79568 true))

(assert (=> start!79568 tp_is_empty!20169))

(declare-fun array_inv!21034 (array!56300) Bool)

(assert (=> start!79568 (and (array_inv!21034 _values!1231) e!524986)))

(assert (=> start!79568 tp!61433))

(declare-fun array_inv!21035 (array!56298) Bool)

(assert (=> start!79568 (array_inv!21035 _keys!1487)))

(declare-fun b!934918 () Bool)

(declare-fun res!629732 () Bool)

(assert (=> b!934918 (=> (not res!629732) (not e!524989))))

(assert (=> b!934918 (= res!629732 (validKeyInArray!0 k0!1099))))

(assert (= (and start!79568 res!629733) b!934915))

(assert (= (and b!934915 res!629736) b!934922))

(assert (= (and b!934922 res!629737) b!934920))

(assert (= (and b!934920 res!629738) b!934924))

(assert (= (and b!934924 res!629729) b!934911))

(assert (= (and b!934911 res!629726) b!934916))

(assert (= (and b!934916 res!629728) b!934914))

(assert (= (and b!934914 res!629731) b!934918))

(assert (= (and b!934918 res!629732) b!934912))

(assert (= (and b!934912 res!629730) b!934925))

(assert (= (and b!934925 c!97147) b!934908))

(assert (= (and b!934925 (not c!97147)) b!934909))

(assert (= (and b!934925 (not res!629734)) b!934923))

(assert (= (and b!934923 (not res!629727)) b!934919))

(assert (= (and b!934919 res!629735) b!934917))

(assert (= (and b!934921 condMapEmpty!32019) mapIsEmpty!32019))

(assert (= (and b!934921 (not condMapEmpty!32019)) mapNonEmpty!32019))

(get-info :version)

(assert (= (and mapNonEmpty!32019 ((_ is ValueCellFull!9603) mapValue!32019)) b!934910))

(assert (= (and b!934921 ((_ is ValueCellFull!9603) mapDefault!32019)) b!934913))

(assert (= start!79568 b!934921))

(declare-fun b_lambda!14061 () Bool)

(assert (=> (not b_lambda!14061) (not b!934925)))

(declare-fun t!27423 () Bool)

(declare-fun tb!6063 () Bool)

(assert (=> (and start!79568 (= defaultEntry!1235 defaultEntry!1235) t!27423) tb!6063))

(declare-fun result!11947 () Bool)

(assert (=> tb!6063 (= result!11947 tp_is_empty!20169)))

(assert (=> b!934925 t!27423))

(declare-fun b_and!28917 () Bool)

(assert (= b_and!28915 (and (=> t!27423 result!11947) b_and!28917)))

(declare-fun m!869399 () Bool)

(assert (=> mapNonEmpty!32019 m!869399))

(declare-fun m!869401 () Bool)

(assert (=> b!934925 m!869401))

(declare-fun m!869403 () Bool)

(assert (=> b!934925 m!869403))

(declare-fun m!869405 () Bool)

(assert (=> b!934925 m!869405))

(declare-fun m!869407 () Bool)

(assert (=> b!934925 m!869407))

(declare-fun m!869409 () Bool)

(assert (=> b!934925 m!869409))

(declare-fun m!869411 () Bool)

(assert (=> b!934925 m!869411))

(declare-fun m!869413 () Bool)

(assert (=> b!934925 m!869413))

(declare-fun m!869415 () Bool)

(assert (=> b!934925 m!869415))

(assert (=> b!934925 m!869411))

(assert (=> b!934925 m!869413))

(declare-fun m!869417 () Bool)

(assert (=> b!934925 m!869417))

(declare-fun m!869419 () Bool)

(assert (=> b!934925 m!869419))

(assert (=> b!934925 m!869401))

(declare-fun m!869421 () Bool)

(assert (=> b!934925 m!869421))

(declare-fun m!869423 () Bool)

(assert (=> b!934925 m!869423))

(assert (=> b!934925 m!869405))

(declare-fun m!869425 () Bool)

(assert (=> b!934925 m!869425))

(declare-fun m!869427 () Bool)

(assert (=> b!934908 m!869427))

(declare-fun m!869429 () Bool)

(assert (=> b!934920 m!869429))

(declare-fun m!869431 () Bool)

(assert (=> b!934912 m!869431))

(declare-fun m!869433 () Bool)

(assert (=> b!934912 m!869433))

(declare-fun m!869435 () Bool)

(assert (=> start!79568 m!869435))

(declare-fun m!869437 () Bool)

(assert (=> start!79568 m!869437))

(declare-fun m!869439 () Bool)

(assert (=> start!79568 m!869439))

(declare-fun m!869441 () Bool)

(assert (=> b!934922 m!869441))

(declare-fun m!869443 () Bool)

(assert (=> b!934916 m!869443))

(declare-fun m!869445 () Bool)

(assert (=> b!934917 m!869445))

(declare-fun m!869447 () Bool)

(assert (=> b!934918 m!869447))

(declare-fun m!869449 () Bool)

(assert (=> b!934919 m!869449))

(declare-fun m!869451 () Bool)

(assert (=> b!934923 m!869451))

(declare-fun m!869453 () Bool)

(assert (=> b!934911 m!869453))

(declare-fun m!869455 () Bool)

(assert (=> b!934911 m!869455))

(check-sat (not b!934920) (not b!934911) (not b!934917) (not start!79568) (not b!934912) (not b!934925) tp_is_empty!20169 (not b!934923) (not b!934916) (not b!934919) (not b!934908) (not b!934922) b_and!28917 (not b_next!17661) (not b!934918) (not b_lambda!14061) (not mapNonEmpty!32019))
(check-sat b_and!28917 (not b_next!17661))
(get-model)

(declare-fun b_lambda!14065 () Bool)

(assert (= b_lambda!14061 (or (and start!79568 b_free!17661) b_lambda!14065)))

(check-sat (not b!934920) (not b!934911) (not b!934917) (not start!79568) (not b!934912) (not b!934925) tp_is_empty!20169 (not b!934923) (not b!934916) (not b!934919) (not b!934908) (not b!934922) (not mapNonEmpty!32019) (not b_next!17661) (not b!934918) b_and!28917 (not b_lambda!14065))
(check-sat b_and!28917 (not b_next!17661))
(get-model)

(declare-fun b!935026 () Bool)

(declare-fun e!525058 () Bool)

(declare-fun call!40693 () Bool)

(assert (=> b!935026 (= e!525058 (not call!40693))))

(declare-fun b!935027 () Bool)

(declare-fun e!525055 () Unit!31542)

(declare-fun Unit!31546 () Unit!31542)

(assert (=> b!935027 (= e!525055 Unit!31546)))

(declare-fun bm!40686 () Bool)

(declare-fun call!40695 () ListLongMap!12115)

(declare-fun call!40689 () ListLongMap!12115)

(assert (=> bm!40686 (= call!40695 call!40689)))

(declare-fun b!935028 () Bool)

(declare-fun res!629796 () Bool)

(declare-fun e!525054 () Bool)

(assert (=> b!935028 (=> (not res!629796) (not e!525054))))

(declare-fun e!525057 () Bool)

(assert (=> b!935028 (= res!629796 e!525057)))

(declare-fun c!97167 () Bool)

(assert (=> b!935028 (= c!97167 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40687 () Bool)

(declare-fun call!40694 () Bool)

(declare-fun lt!421370 () ListLongMap!12115)

(assert (=> bm!40687 (= call!40694 (contains!5077 lt!421370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935029 () Bool)

(declare-fun c!97163 () Bool)

(assert (=> b!935029 (= c!97163 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525056 () ListLongMap!12115)

(declare-fun e!525052 () ListLongMap!12115)

(assert (=> b!935029 (= e!525056 e!525052)))

(declare-fun b!935030 () Bool)

(declare-fun call!40690 () ListLongMap!12115)

(assert (=> b!935030 (= e!525056 call!40690)))

(declare-fun b!935031 () Bool)

(assert (=> b!935031 (= e!525057 (not call!40694))))

(declare-fun bm!40688 () Bool)

(declare-fun call!40691 () ListLongMap!12115)

(assert (=> bm!40688 (= call!40689 call!40691)))

(declare-fun b!935032 () Bool)

(declare-fun e!525059 () Bool)

(assert (=> b!935032 (= e!525059 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!935033 () Bool)

(declare-fun e!525047 () Bool)

(assert (=> b!935033 (= e!525047 (= (apply!852 lt!421370 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935034 () Bool)

(declare-fun res!629799 () Bool)

(assert (=> b!935034 (=> (not res!629799) (not e!525054))))

(declare-fun e!525048 () Bool)

(assert (=> b!935034 (= res!629799 e!525048)))

(declare-fun res!629798 () Bool)

(assert (=> b!935034 (=> res!629798 e!525048)))

(declare-fun e!525051 () Bool)

(assert (=> b!935034 (= res!629798 (not e!525051))))

(declare-fun res!629803 () Bool)

(assert (=> b!935034 (=> (not res!629803) (not e!525051))))

(assert (=> b!935034 (= res!629803 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(declare-fun bm!40689 () Bool)

(assert (=> bm!40689 (= call!40693 (contains!5077 lt!421370 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935035 () Bool)

(assert (=> b!935035 (= e!525058 e!525047)))

(declare-fun res!629804 () Bool)

(assert (=> b!935035 (= res!629804 call!40693)))

(assert (=> b!935035 (=> (not res!629804) (not e!525047))))

(declare-fun b!935036 () Bool)

(assert (=> b!935036 (= e!525052 call!40690)))

(declare-fun b!935037 () Bool)

(declare-fun e!525053 () ListLongMap!12115)

(assert (=> b!935037 (= e!525053 e!525056)))

(declare-fun c!97165 () Bool)

(assert (=> b!935037 (= c!97165 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935038 () Bool)

(assert (=> b!935038 (= e!525051 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!935039 () Bool)

(declare-fun e!525050 () Bool)

(assert (=> b!935039 (= e!525050 (= (apply!852 lt!421370 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935040 () Bool)

(declare-fun lt!421376 () Unit!31542)

(assert (=> b!935040 (= e!525055 lt!421376)))

(declare-fun lt!421374 () ListLongMap!12115)

(declare-fun getCurrentListMapNoExtraKeys!3317 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 32) Int) ListLongMap!12115)

(assert (=> b!935040 (= lt!421374 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421379 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421379 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421368 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421368 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421382 () Unit!31542)

(assert (=> b!935040 (= lt!421382 (addStillContains!528 lt!421374 lt!421379 zeroValue!1173 lt!421368))))

(assert (=> b!935040 (contains!5077 (+!2772 lt!421374 (tuple2!13405 lt!421379 zeroValue!1173)) lt!421368)))

(declare-fun lt!421372 () Unit!31542)

(assert (=> b!935040 (= lt!421372 lt!421382)))

(declare-fun lt!421373 () ListLongMap!12115)

(assert (=> b!935040 (= lt!421373 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421385 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421385 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421380 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421380 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421386 () Unit!31542)

(declare-fun addApplyDifferent!412 (ListLongMap!12115 (_ BitVec 64) V!31857 (_ BitVec 64)) Unit!31542)

(assert (=> b!935040 (= lt!421386 (addApplyDifferent!412 lt!421373 lt!421385 minValue!1173 lt!421380))))

(assert (=> b!935040 (= (apply!852 (+!2772 lt!421373 (tuple2!13405 lt!421385 minValue!1173)) lt!421380) (apply!852 lt!421373 lt!421380))))

(declare-fun lt!421387 () Unit!31542)

(assert (=> b!935040 (= lt!421387 lt!421386)))

(declare-fun lt!421389 () ListLongMap!12115)

(assert (=> b!935040 (= lt!421389 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421369 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421369 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421371 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421371 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421388 () Unit!31542)

(assert (=> b!935040 (= lt!421388 (addApplyDifferent!412 lt!421389 lt!421369 zeroValue!1173 lt!421371))))

(assert (=> b!935040 (= (apply!852 (+!2772 lt!421389 (tuple2!13405 lt!421369 zeroValue!1173)) lt!421371) (apply!852 lt!421389 lt!421371))))

(declare-fun lt!421377 () Unit!31542)

(assert (=> b!935040 (= lt!421377 lt!421388)))

(declare-fun lt!421375 () ListLongMap!12115)

(assert (=> b!935040 (= lt!421375 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421378 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421378 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421381 () (_ BitVec 64))

(assert (=> b!935040 (= lt!421381 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!935040 (= lt!421376 (addApplyDifferent!412 lt!421375 lt!421378 minValue!1173 lt!421381))))

(assert (=> b!935040 (= (apply!852 (+!2772 lt!421375 (tuple2!13405 lt!421378 minValue!1173)) lt!421381) (apply!852 lt!421375 lt!421381))))

(declare-fun b!935041 () Bool)

(assert (=> b!935041 (= e!525054 e!525058)))

(declare-fun c!97164 () Bool)

(assert (=> b!935041 (= c!97164 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113117 () Bool)

(assert (=> d!113117 e!525054))

(declare-fun res!629800 () Bool)

(assert (=> d!113117 (=> (not res!629800) (not e!525054))))

(assert (=> d!113117 (= res!629800 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))))

(declare-fun lt!421384 () ListLongMap!12115)

(assert (=> d!113117 (= lt!421370 lt!421384)))

(declare-fun lt!421383 () Unit!31542)

(assert (=> d!113117 (= lt!421383 e!525055)))

(declare-fun c!97166 () Bool)

(assert (=> d!113117 (= c!97166 e!525059)))

(declare-fun res!629801 () Bool)

(assert (=> d!113117 (=> (not res!629801) (not e!525059))))

(assert (=> d!113117 (= res!629801 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(assert (=> d!113117 (= lt!421384 e!525053)))

(declare-fun c!97168 () Bool)

(assert (=> d!113117 (= c!97168 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113117 (validMask!0 mask!1881)))

(assert (=> d!113117 (= (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421370)))

(declare-fun b!935042 () Bool)

(assert (=> b!935042 (= e!525057 e!525050)))

(declare-fun res!629797 () Bool)

(assert (=> b!935042 (= res!629797 call!40694)))

(assert (=> b!935042 (=> (not res!629797) (not e!525050))))

(declare-fun b!935043 () Bool)

(assert (=> b!935043 (= e!525052 call!40695)))

(declare-fun b!935044 () Bool)

(declare-fun e!525049 () Bool)

(assert (=> b!935044 (= e!525049 (= (apply!852 lt!421370 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14280 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935044 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27548 _values!1231)))))

(assert (=> b!935044 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(declare-fun bm!40690 () Bool)

(declare-fun call!40692 () ListLongMap!12115)

(assert (=> bm!40690 (= call!40690 call!40692)))

(declare-fun bm!40691 () Bool)

(assert (=> bm!40691 (= call!40692 (+!2772 (ite c!97168 call!40691 (ite c!97165 call!40689 call!40695)) (ite (or c!97168 c!97165) (tuple2!13405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935045 () Bool)

(assert (=> b!935045 (= e!525048 e!525049)))

(declare-fun res!629802 () Bool)

(assert (=> b!935045 (=> (not res!629802) (not e!525049))))

(assert (=> b!935045 (= res!629802 (contains!5077 lt!421370 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!935045 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(declare-fun bm!40692 () Bool)

(assert (=> bm!40692 (= call!40691 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935046 () Bool)

(assert (=> b!935046 (= e!525053 (+!2772 call!40692 (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113117 c!97168) b!935046))

(assert (= (and d!113117 (not c!97168)) b!935037))

(assert (= (and b!935037 c!97165) b!935030))

(assert (= (and b!935037 (not c!97165)) b!935029))

(assert (= (and b!935029 c!97163) b!935036))

(assert (= (and b!935029 (not c!97163)) b!935043))

(assert (= (or b!935036 b!935043) bm!40686))

(assert (= (or b!935030 bm!40686) bm!40688))

(assert (= (or b!935030 b!935036) bm!40690))

(assert (= (or b!935046 bm!40688) bm!40692))

(assert (= (or b!935046 bm!40690) bm!40691))

(assert (= (and d!113117 res!629801) b!935032))

(assert (= (and d!113117 c!97166) b!935040))

(assert (= (and d!113117 (not c!97166)) b!935027))

(assert (= (and d!113117 res!629800) b!935034))

(assert (= (and b!935034 res!629803) b!935038))

(assert (= (and b!935034 (not res!629798)) b!935045))

(assert (= (and b!935045 res!629802) b!935044))

(assert (= (and b!935034 res!629799) b!935028))

(assert (= (and b!935028 c!97167) b!935042))

(assert (= (and b!935028 (not c!97167)) b!935031))

(assert (= (and b!935042 res!629797) b!935039))

(assert (= (or b!935042 b!935031) bm!40687))

(assert (= (and b!935028 res!629796) b!935041))

(assert (= (and b!935041 c!97164) b!935035))

(assert (= (and b!935041 (not c!97164)) b!935026))

(assert (= (and b!935035 res!629804) b!935033))

(assert (= (or b!935035 b!935026) bm!40689))

(declare-fun b_lambda!14067 () Bool)

(assert (=> (not b_lambda!14067) (not b!935044)))

(assert (=> b!935044 t!27423))

(declare-fun b_and!28923 () Bool)

(assert (= b_and!28917 (and (=> t!27423 result!11947) b_and!28923)))

(assert (=> b!935045 m!869433))

(assert (=> b!935045 m!869433))

(declare-fun m!869515 () Bool)

(assert (=> b!935045 m!869515))

(declare-fun m!869517 () Bool)

(assert (=> bm!40687 m!869517))

(assert (=> b!935032 m!869433))

(assert (=> b!935032 m!869433))

(declare-fun m!869519 () Bool)

(assert (=> b!935032 m!869519))

(declare-fun m!869521 () Bool)

(assert (=> b!935039 m!869521))

(declare-fun m!869523 () Bool)

(assert (=> bm!40691 m!869523))

(assert (=> b!935044 m!869433))

(declare-fun m!869525 () Bool)

(assert (=> b!935044 m!869525))

(assert (=> b!935044 m!869411))

(assert (=> b!935044 m!869413))

(assert (=> b!935044 m!869411))

(assert (=> b!935044 m!869413))

(assert (=> b!935044 m!869417))

(assert (=> b!935044 m!869433))

(declare-fun m!869527 () Bool)

(assert (=> b!935033 m!869527))

(assert (=> b!935038 m!869433))

(assert (=> b!935038 m!869433))

(assert (=> b!935038 m!869519))

(declare-fun m!869529 () Bool)

(assert (=> b!935046 m!869529))

(declare-fun m!869531 () Bool)

(assert (=> b!935040 m!869531))

(declare-fun m!869533 () Bool)

(assert (=> b!935040 m!869533))

(assert (=> b!935040 m!869533))

(declare-fun m!869535 () Bool)

(assert (=> b!935040 m!869535))

(declare-fun m!869537 () Bool)

(assert (=> b!935040 m!869537))

(declare-fun m!869539 () Bool)

(assert (=> b!935040 m!869539))

(declare-fun m!869541 () Bool)

(assert (=> b!935040 m!869541))

(declare-fun m!869543 () Bool)

(assert (=> b!935040 m!869543))

(assert (=> b!935040 m!869433))

(declare-fun m!869545 () Bool)

(assert (=> b!935040 m!869545))

(assert (=> b!935040 m!869541))

(declare-fun m!869547 () Bool)

(assert (=> b!935040 m!869547))

(declare-fun m!869549 () Bool)

(assert (=> b!935040 m!869549))

(declare-fun m!869551 () Bool)

(assert (=> b!935040 m!869551))

(declare-fun m!869553 () Bool)

(assert (=> b!935040 m!869553))

(declare-fun m!869555 () Bool)

(assert (=> b!935040 m!869555))

(assert (=> b!935040 m!869537))

(declare-fun m!869557 () Bool)

(assert (=> b!935040 m!869557))

(assert (=> b!935040 m!869547))

(declare-fun m!869559 () Bool)

(assert (=> b!935040 m!869559))

(declare-fun m!869561 () Bool)

(assert (=> b!935040 m!869561))

(assert (=> bm!40692 m!869545))

(declare-fun m!869563 () Bool)

(assert (=> bm!40689 m!869563))

(assert (=> d!113117 m!869435))

(assert (=> b!934925 d!113117))

(declare-fun b!935047 () Bool)

(declare-fun e!525071 () Bool)

(declare-fun call!40700 () Bool)

(assert (=> b!935047 (= e!525071 (not call!40700))))

(declare-fun b!935048 () Bool)

(declare-fun e!525068 () Unit!31542)

(declare-fun Unit!31547 () Unit!31542)

(assert (=> b!935048 (= e!525068 Unit!31547)))

(declare-fun bm!40693 () Bool)

(declare-fun call!40702 () ListLongMap!12115)

(declare-fun call!40696 () ListLongMap!12115)

(assert (=> bm!40693 (= call!40702 call!40696)))

(declare-fun b!935049 () Bool)

(declare-fun res!629805 () Bool)

(declare-fun e!525067 () Bool)

(assert (=> b!935049 (=> (not res!629805) (not e!525067))))

(declare-fun e!525070 () Bool)

(assert (=> b!935049 (= res!629805 e!525070)))

(declare-fun c!97173 () Bool)

(assert (=> b!935049 (= c!97173 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40694 () Bool)

(declare-fun call!40701 () Bool)

(declare-fun lt!421392 () ListLongMap!12115)

(assert (=> bm!40694 (= call!40701 (contains!5077 lt!421392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935050 () Bool)

(declare-fun c!97169 () Bool)

(assert (=> b!935050 (= c!97169 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525069 () ListLongMap!12115)

(declare-fun e!525065 () ListLongMap!12115)

(assert (=> b!935050 (= e!525069 e!525065)))

(declare-fun b!935051 () Bool)

(declare-fun call!40697 () ListLongMap!12115)

(assert (=> b!935051 (= e!525069 call!40697)))

(declare-fun b!935052 () Bool)

(assert (=> b!935052 (= e!525070 (not call!40701))))

(declare-fun bm!40695 () Bool)

(declare-fun call!40698 () ListLongMap!12115)

(assert (=> bm!40695 (= call!40696 call!40698)))

(declare-fun b!935053 () Bool)

(declare-fun e!525072 () Bool)

(assert (=> b!935053 (= e!525072 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!935054 () Bool)

(declare-fun e!525060 () Bool)

(assert (=> b!935054 (= e!525060 (= (apply!852 lt!421392 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935055 () Bool)

(declare-fun res!629808 () Bool)

(assert (=> b!935055 (=> (not res!629808) (not e!525067))))

(declare-fun e!525061 () Bool)

(assert (=> b!935055 (= res!629808 e!525061)))

(declare-fun res!629807 () Bool)

(assert (=> b!935055 (=> res!629807 e!525061)))

(declare-fun e!525064 () Bool)

(assert (=> b!935055 (= res!629807 (not e!525064))))

(declare-fun res!629812 () Bool)

(assert (=> b!935055 (=> (not res!629812) (not e!525064))))

(assert (=> b!935055 (= res!629812 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)))))

(declare-fun bm!40696 () Bool)

(assert (=> bm!40696 (= call!40700 (contains!5077 lt!421392 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935056 () Bool)

(assert (=> b!935056 (= e!525071 e!525060)))

(declare-fun res!629813 () Bool)

(assert (=> b!935056 (= res!629813 call!40700)))

(assert (=> b!935056 (=> (not res!629813) (not e!525060))))

(declare-fun b!935057 () Bool)

(assert (=> b!935057 (= e!525065 call!40697)))

(declare-fun b!935058 () Bool)

(declare-fun e!525066 () ListLongMap!12115)

(assert (=> b!935058 (= e!525066 e!525069)))

(declare-fun c!97171 () Bool)

(assert (=> b!935058 (= c!97171 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935059 () Bool)

(assert (=> b!935059 (= e!525064 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!935060 () Bool)

(declare-fun e!525063 () Bool)

(assert (=> b!935060 (= e!525063 (= (apply!852 lt!421392 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935061 () Bool)

(declare-fun lt!421398 () Unit!31542)

(assert (=> b!935061 (= e!525068 lt!421398)))

(declare-fun lt!421396 () ListLongMap!12115)

(assert (=> b!935061 (= lt!421396 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421401 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421401 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421390 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421390 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421404 () Unit!31542)

(assert (=> b!935061 (= lt!421404 (addStillContains!528 lt!421396 lt!421401 zeroValue!1173 lt!421390))))

(assert (=> b!935061 (contains!5077 (+!2772 lt!421396 (tuple2!13405 lt!421401 zeroValue!1173)) lt!421390)))

(declare-fun lt!421394 () Unit!31542)

(assert (=> b!935061 (= lt!421394 lt!421404)))

(declare-fun lt!421395 () ListLongMap!12115)

(assert (=> b!935061 (= lt!421395 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421407 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421407 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421402 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421402 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421408 () Unit!31542)

(assert (=> b!935061 (= lt!421408 (addApplyDifferent!412 lt!421395 lt!421407 minValue!1173 lt!421402))))

(assert (=> b!935061 (= (apply!852 (+!2772 lt!421395 (tuple2!13405 lt!421407 minValue!1173)) lt!421402) (apply!852 lt!421395 lt!421402))))

(declare-fun lt!421409 () Unit!31542)

(assert (=> b!935061 (= lt!421409 lt!421408)))

(declare-fun lt!421411 () ListLongMap!12115)

(assert (=> b!935061 (= lt!421411 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421391 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421391 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421393 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421393 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421410 () Unit!31542)

(assert (=> b!935061 (= lt!421410 (addApplyDifferent!412 lt!421411 lt!421391 zeroValue!1173 lt!421393))))

(assert (=> b!935061 (= (apply!852 (+!2772 lt!421411 (tuple2!13405 lt!421391 zeroValue!1173)) lt!421393) (apply!852 lt!421411 lt!421393))))

(declare-fun lt!421399 () Unit!31542)

(assert (=> b!935061 (= lt!421399 lt!421410)))

(declare-fun lt!421397 () ListLongMap!12115)

(assert (=> b!935061 (= lt!421397 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421400 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421400 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421403 () (_ BitVec 64))

(assert (=> b!935061 (= lt!421403 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!935061 (= lt!421398 (addApplyDifferent!412 lt!421397 lt!421400 minValue!1173 lt!421403))))

(assert (=> b!935061 (= (apply!852 (+!2772 lt!421397 (tuple2!13405 lt!421400 minValue!1173)) lt!421403) (apply!852 lt!421397 lt!421403))))

(declare-fun b!935062 () Bool)

(assert (=> b!935062 (= e!525067 e!525071)))

(declare-fun c!97170 () Bool)

(assert (=> b!935062 (= c!97170 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113119 () Bool)

(assert (=> d!113119 e!525067))

(declare-fun res!629809 () Bool)

(assert (=> d!113119 (=> (not res!629809) (not e!525067))))

(assert (=> d!113119 (= res!629809 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)))))))

(declare-fun lt!421406 () ListLongMap!12115)

(assert (=> d!113119 (= lt!421392 lt!421406)))

(declare-fun lt!421405 () Unit!31542)

(assert (=> d!113119 (= lt!421405 e!525068)))

(declare-fun c!97172 () Bool)

(assert (=> d!113119 (= c!97172 e!525072)))

(declare-fun res!629810 () Bool)

(assert (=> d!113119 (=> (not res!629810) (not e!525072))))

(assert (=> d!113119 (= res!629810 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)))))

(assert (=> d!113119 (= lt!421406 e!525066)))

(declare-fun c!97174 () Bool)

(assert (=> d!113119 (= c!97174 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113119 (validMask!0 mask!1881)))

(assert (=> d!113119 (= (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421392)))

(declare-fun b!935063 () Bool)

(assert (=> b!935063 (= e!525070 e!525063)))

(declare-fun res!629806 () Bool)

(assert (=> b!935063 (= res!629806 call!40701)))

(assert (=> b!935063 (=> (not res!629806) (not e!525063))))

(declare-fun b!935064 () Bool)

(assert (=> b!935064 (= e!525065 call!40702)))

(declare-fun e!525062 () Bool)

(declare-fun b!935065 () Bool)

(assert (=> b!935065 (= e!525062 (= (apply!852 lt!421392 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14280 (select (arr!27088 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935065 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27548 _values!1231)))))

(assert (=> b!935065 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)))))

(declare-fun bm!40697 () Bool)

(declare-fun call!40699 () ListLongMap!12115)

(assert (=> bm!40697 (= call!40697 call!40699)))

(declare-fun bm!40698 () Bool)

(assert (=> bm!40698 (= call!40699 (+!2772 (ite c!97174 call!40698 (ite c!97171 call!40696 call!40702)) (ite (or c!97174 c!97171) (tuple2!13405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935066 () Bool)

(assert (=> b!935066 (= e!525061 e!525062)))

(declare-fun res!629811 () Bool)

(assert (=> b!935066 (=> (not res!629811) (not e!525062))))

(assert (=> b!935066 (= res!629811 (contains!5077 lt!421392 (select (arr!27087 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!935066 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27547 _keys!1487)))))

(declare-fun bm!40699 () Bool)

(assert (=> bm!40699 (= call!40698 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun b!935067 () Bool)

(assert (=> b!935067 (= e!525066 (+!2772 call!40699 (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113119 c!97174) b!935067))

(assert (= (and d!113119 (not c!97174)) b!935058))

(assert (= (and b!935058 c!97171) b!935051))

(assert (= (and b!935058 (not c!97171)) b!935050))

(assert (= (and b!935050 c!97169) b!935057))

(assert (= (and b!935050 (not c!97169)) b!935064))

(assert (= (or b!935057 b!935064) bm!40693))

(assert (= (or b!935051 bm!40693) bm!40695))

(assert (= (or b!935051 b!935057) bm!40697))

(assert (= (or b!935067 bm!40695) bm!40699))

(assert (= (or b!935067 bm!40697) bm!40698))

(assert (= (and d!113119 res!629810) b!935053))

(assert (= (and d!113119 c!97172) b!935061))

(assert (= (and d!113119 (not c!97172)) b!935048))

(assert (= (and d!113119 res!629809) b!935055))

(assert (= (and b!935055 res!629812) b!935059))

(assert (= (and b!935055 (not res!629807)) b!935066))

(assert (= (and b!935066 res!629811) b!935065))

(assert (= (and b!935055 res!629808) b!935049))

(assert (= (and b!935049 c!97173) b!935063))

(assert (= (and b!935049 (not c!97173)) b!935052))

(assert (= (and b!935063 res!629806) b!935060))

(assert (= (or b!935063 b!935052) bm!40694))

(assert (= (and b!935049 res!629805) b!935062))

(assert (= (and b!935062 c!97170) b!935056))

(assert (= (and b!935062 (not c!97170)) b!935047))

(assert (= (and b!935056 res!629813) b!935054))

(assert (= (or b!935056 b!935047) bm!40696))

(declare-fun b_lambda!14069 () Bool)

(assert (=> (not b_lambda!14069) (not b!935065)))

(assert (=> b!935065 t!27423))

(declare-fun b_and!28925 () Bool)

(assert (= b_and!28923 (and (=> t!27423 result!11947) b_and!28925)))

(declare-fun m!869565 () Bool)

(assert (=> b!935066 m!869565))

(assert (=> b!935066 m!869565))

(declare-fun m!869567 () Bool)

(assert (=> b!935066 m!869567))

(declare-fun m!869569 () Bool)

(assert (=> bm!40694 m!869569))

(assert (=> b!935053 m!869565))

(assert (=> b!935053 m!869565))

(declare-fun m!869571 () Bool)

(assert (=> b!935053 m!869571))

(declare-fun m!869573 () Bool)

(assert (=> b!935060 m!869573))

(declare-fun m!869575 () Bool)

(assert (=> bm!40698 m!869575))

(assert (=> b!935065 m!869565))

(declare-fun m!869577 () Bool)

(assert (=> b!935065 m!869577))

(declare-fun m!869579 () Bool)

(assert (=> b!935065 m!869579))

(assert (=> b!935065 m!869413))

(assert (=> b!935065 m!869579))

(assert (=> b!935065 m!869413))

(declare-fun m!869581 () Bool)

(assert (=> b!935065 m!869581))

(assert (=> b!935065 m!869565))

(declare-fun m!869583 () Bool)

(assert (=> b!935054 m!869583))

(assert (=> b!935059 m!869565))

(assert (=> b!935059 m!869565))

(assert (=> b!935059 m!869571))

(declare-fun m!869585 () Bool)

(assert (=> b!935067 m!869585))

(declare-fun m!869587 () Bool)

(assert (=> b!935061 m!869587))

(declare-fun m!869589 () Bool)

(assert (=> b!935061 m!869589))

(assert (=> b!935061 m!869589))

(declare-fun m!869591 () Bool)

(assert (=> b!935061 m!869591))

(declare-fun m!869593 () Bool)

(assert (=> b!935061 m!869593))

(declare-fun m!869595 () Bool)

(assert (=> b!935061 m!869595))

(declare-fun m!869597 () Bool)

(assert (=> b!935061 m!869597))

(declare-fun m!869599 () Bool)

(assert (=> b!935061 m!869599))

(assert (=> b!935061 m!869565))

(declare-fun m!869601 () Bool)

(assert (=> b!935061 m!869601))

(assert (=> b!935061 m!869597))

(declare-fun m!869603 () Bool)

(assert (=> b!935061 m!869603))

(declare-fun m!869605 () Bool)

(assert (=> b!935061 m!869605))

(declare-fun m!869607 () Bool)

(assert (=> b!935061 m!869607))

(declare-fun m!869609 () Bool)

(assert (=> b!935061 m!869609))

(declare-fun m!869611 () Bool)

(assert (=> b!935061 m!869611))

(assert (=> b!935061 m!869593))

(declare-fun m!869613 () Bool)

(assert (=> b!935061 m!869613))

(assert (=> b!935061 m!869603))

(declare-fun m!869615 () Bool)

(assert (=> b!935061 m!869615))

(declare-fun m!869617 () Bool)

(assert (=> b!935061 m!869617))

(assert (=> bm!40699 m!869601))

(declare-fun m!869619 () Bool)

(assert (=> bm!40696 m!869619))

(assert (=> d!113119 m!869435))

(assert (=> b!934925 d!113119))

(declare-fun d!113121 () Bool)

(assert (=> d!113121 (contains!5077 (+!2772 lt!421294 (tuple2!13405 lt!421296 lt!421295)) k0!1099)))

(declare-fun lt!421414 () Unit!31542)

(declare-fun choose!1555 (ListLongMap!12115 (_ BitVec 64) V!31857 (_ BitVec 64)) Unit!31542)

(assert (=> d!113121 (= lt!421414 (choose!1555 lt!421294 lt!421296 lt!421295 k0!1099))))

(assert (=> d!113121 (contains!5077 lt!421294 k0!1099)))

(assert (=> d!113121 (= (addStillContains!528 lt!421294 lt!421296 lt!421295 k0!1099) lt!421414)))

(declare-fun bs!26243 () Bool)

(assert (= bs!26243 d!113121))

(declare-fun m!869621 () Bool)

(assert (=> bs!26243 m!869621))

(assert (=> bs!26243 m!869621))

(declare-fun m!869623 () Bool)

(assert (=> bs!26243 m!869623))

(declare-fun m!869625 () Bool)

(assert (=> bs!26243 m!869625))

(assert (=> bs!26243 m!869453))

(assert (=> b!934925 d!113121))

(declare-fun d!113123 () Bool)

(declare-fun e!525077 () Bool)

(assert (=> d!113123 e!525077))

(declare-fun res!629816 () Bool)

(assert (=> d!113123 (=> res!629816 e!525077)))

(declare-fun lt!421424 () Bool)

(assert (=> d!113123 (= res!629816 (not lt!421424))))

(declare-fun lt!421426 () Bool)

(assert (=> d!113123 (= lt!421424 lt!421426)))

(declare-fun lt!421425 () Unit!31542)

(declare-fun e!525078 () Unit!31542)

(assert (=> d!113123 (= lt!421425 e!525078)))

(declare-fun c!97177 () Bool)

(assert (=> d!113123 (= c!97177 lt!421426)))

(declare-fun containsKey!449 (List!19211 (_ BitVec 64)) Bool)

(assert (=> d!113123 (= lt!421426 (containsKey!449 (toList!6073 (+!2772 lt!421294 lt!421298)) k0!1099))))

(assert (=> d!113123 (= (contains!5077 (+!2772 lt!421294 lt!421298) k0!1099) lt!421424)))

(declare-fun b!935075 () Bool)

(declare-fun lt!421423 () Unit!31542)

(assert (=> b!935075 (= e!525078 lt!421423)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!344 (List!19211 (_ BitVec 64)) Unit!31542)

(assert (=> b!935075 (= lt!421423 (lemmaContainsKeyImpliesGetValueByKeyDefined!344 (toList!6073 (+!2772 lt!421294 lt!421298)) k0!1099))))

(declare-datatypes ((Option!490 0))(
  ( (Some!489 (v!12659 V!31857)) (None!488) )
))
(declare-fun isDefined!354 (Option!490) Bool)

(declare-fun getValueByKey!484 (List!19211 (_ BitVec 64)) Option!490)

(assert (=> b!935075 (isDefined!354 (getValueByKey!484 (toList!6073 (+!2772 lt!421294 lt!421298)) k0!1099))))

(declare-fun b!935076 () Bool)

(declare-fun Unit!31548 () Unit!31542)

(assert (=> b!935076 (= e!525078 Unit!31548)))

(declare-fun b!935077 () Bool)

(assert (=> b!935077 (= e!525077 (isDefined!354 (getValueByKey!484 (toList!6073 (+!2772 lt!421294 lt!421298)) k0!1099)))))

(assert (= (and d!113123 c!97177) b!935075))

(assert (= (and d!113123 (not c!97177)) b!935076))

(assert (= (and d!113123 (not res!629816)) b!935077))

(declare-fun m!869627 () Bool)

(assert (=> d!113123 m!869627))

(declare-fun m!869629 () Bool)

(assert (=> b!935075 m!869629))

(declare-fun m!869631 () Bool)

(assert (=> b!935075 m!869631))

(assert (=> b!935075 m!869631))

(declare-fun m!869633 () Bool)

(assert (=> b!935075 m!869633))

(assert (=> b!935077 m!869631))

(assert (=> b!935077 m!869631))

(assert (=> b!935077 m!869633))

(assert (=> b!934925 d!113123))

(declare-fun d!113125 () Bool)

(declare-fun e!525081 () Bool)

(assert (=> d!113125 e!525081))

(declare-fun res!629822 () Bool)

(assert (=> d!113125 (=> (not res!629822) (not e!525081))))

(declare-fun lt!421435 () ListLongMap!12115)

(assert (=> d!113125 (= res!629822 (contains!5077 lt!421435 (_1!6712 lt!421298)))))

(declare-fun lt!421438 () List!19211)

(assert (=> d!113125 (= lt!421435 (ListLongMap!12116 lt!421438))))

(declare-fun lt!421437 () Unit!31542)

(declare-fun lt!421436 () Unit!31542)

(assert (=> d!113125 (= lt!421437 lt!421436)))

(assert (=> d!113125 (= (getValueByKey!484 lt!421438 (_1!6712 lt!421298)) (Some!489 (_2!6712 lt!421298)))))

(declare-fun lemmaContainsTupThenGetReturnValue!258 (List!19211 (_ BitVec 64) V!31857) Unit!31542)

(assert (=> d!113125 (= lt!421436 (lemmaContainsTupThenGetReturnValue!258 lt!421438 (_1!6712 lt!421298) (_2!6712 lt!421298)))))

(declare-fun insertStrictlySorted!314 (List!19211 (_ BitVec 64) V!31857) List!19211)

(assert (=> d!113125 (= lt!421438 (insertStrictlySorted!314 (toList!6073 (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6712 lt!421298) (_2!6712 lt!421298)))))

(assert (=> d!113125 (= (+!2772 (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421298) lt!421435)))

(declare-fun b!935082 () Bool)

(declare-fun res!629821 () Bool)

(assert (=> b!935082 (=> (not res!629821) (not e!525081))))

(assert (=> b!935082 (= res!629821 (= (getValueByKey!484 (toList!6073 lt!421435) (_1!6712 lt!421298)) (Some!489 (_2!6712 lt!421298))))))

(declare-fun b!935083 () Bool)

(declare-fun contains!5081 (List!19211 tuple2!13404) Bool)

(assert (=> b!935083 (= e!525081 (contains!5081 (toList!6073 lt!421435) lt!421298))))

(assert (= (and d!113125 res!629822) b!935082))

(assert (= (and b!935082 res!629821) b!935083))

(declare-fun m!869635 () Bool)

(assert (=> d!113125 m!869635))

(declare-fun m!869637 () Bool)

(assert (=> d!113125 m!869637))

(declare-fun m!869639 () Bool)

(assert (=> d!113125 m!869639))

(declare-fun m!869641 () Bool)

(assert (=> d!113125 m!869641))

(declare-fun m!869643 () Bool)

(assert (=> b!935082 m!869643))

(declare-fun m!869645 () Bool)

(assert (=> b!935083 m!869645))

(assert (=> b!934925 d!113125))

(declare-fun d!113127 () Bool)

(declare-fun e!525084 () Bool)

(assert (=> d!113127 e!525084))

(declare-fun res!629825 () Bool)

(assert (=> d!113127 (=> (not res!629825) (not e!525084))))

(assert (=> d!113127 (= res!629825 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27548 _values!1231))))))

(declare-fun lt!421441 () Unit!31542)

(declare-fun choose!1556 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 32) Int) Unit!31542)

(assert (=> d!113127 (= lt!421441 (choose!1556 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113127 (validMask!0 mask!1881)))

(assert (=> d!113127 (= (lemmaListMapRecursiveValidKeyArray!207 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421441)))

(declare-fun b!935086 () Bool)

(assert (=> b!935086 (= e!525084 (= (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2772 (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13405 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14280 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113127 res!629825) b!935086))

(declare-fun b_lambda!14071 () Bool)

(assert (=> (not b_lambda!14071) (not b!935086)))

(assert (=> b!935086 t!27423))

(declare-fun b_and!28927 () Bool)

(assert (= b_and!28925 (and (=> t!27423 result!11947) b_and!28927)))

(declare-fun m!869647 () Bool)

(assert (=> d!113127 m!869647))

(assert (=> d!113127 m!869435))

(assert (=> b!935086 m!869419))

(declare-fun m!869649 () Bool)

(assert (=> b!935086 m!869649))

(assert (=> b!935086 m!869411))

(assert (=> b!935086 m!869433))

(assert (=> b!935086 m!869411))

(assert (=> b!935086 m!869413))

(assert (=> b!935086 m!869417))

(assert (=> b!935086 m!869413))

(assert (=> b!935086 m!869649))

(declare-fun m!869651 () Bool)

(assert (=> b!935086 m!869651))

(assert (=> b!934925 d!113127))

(declare-fun b!935097 () Bool)

(declare-fun e!525095 () Bool)

(declare-fun e!525096 () Bool)

(assert (=> b!935097 (= e!525095 e!525096)))

(declare-fun c!97180 () Bool)

(assert (=> b!935097 (= c!97180 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun d!113129 () Bool)

(declare-fun res!629832 () Bool)

(declare-fun e!525094 () Bool)

(assert (=> d!113129 (=> res!629832 e!525094)))

(assert (=> d!113129 (= res!629832 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(assert (=> d!113129 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19209) e!525094)))

(declare-fun b!935098 () Bool)

(assert (=> b!935098 (= e!525094 e!525095)))

(declare-fun res!629834 () Bool)

(assert (=> b!935098 (=> (not res!629834) (not e!525095))))

(declare-fun e!525093 () Bool)

(assert (=> b!935098 (= res!629834 (not e!525093))))

(declare-fun res!629833 () Bool)

(assert (=> b!935098 (=> (not res!629833) (not e!525093))))

(assert (=> b!935098 (= res!629833 (validKeyInArray!0 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!935099 () Bool)

(declare-fun call!40705 () Bool)

(assert (=> b!935099 (= e!525096 call!40705)))

(declare-fun bm!40702 () Bool)

(assert (=> bm!40702 (= call!40705 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97180 (Cons!19208 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19209) Nil!19209)))))

(declare-fun b!935100 () Bool)

(assert (=> b!935100 (= e!525096 call!40705)))

(declare-fun b!935101 () Bool)

(assert (=> b!935101 (= e!525093 (contains!5078 Nil!19209 (select (arr!27087 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!113129 (not res!629832)) b!935098))

(assert (= (and b!935098 res!629833) b!935101))

(assert (= (and b!935098 res!629834) b!935097))

(assert (= (and b!935097 c!97180) b!935099))

(assert (= (and b!935097 (not c!97180)) b!935100))

(assert (= (or b!935099 b!935100) bm!40702))

(assert (=> b!935097 m!869433))

(assert (=> b!935097 m!869433))

(assert (=> b!935097 m!869519))

(assert (=> b!935098 m!869433))

(assert (=> b!935098 m!869433))

(assert (=> b!935098 m!869519))

(assert (=> bm!40702 m!869433))

(declare-fun m!869653 () Bool)

(assert (=> bm!40702 m!869653))

(assert (=> b!935101 m!869433))

(assert (=> b!935101 m!869433))

(declare-fun m!869655 () Bool)

(assert (=> b!935101 m!869655))

(assert (=> b!934925 d!113129))

(declare-fun d!113131 () Bool)

(declare-fun e!525099 () Bool)

(assert (=> d!113131 e!525099))

(declare-fun c!97183 () Bool)

(assert (=> d!113131 (= c!97183 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421444 () Unit!31542)

(declare-fun choose!1557 (array!56298 array!56300 (_ BitVec 32) (_ BitVec 32) V!31857 V!31857 (_ BitVec 64) (_ BitVec 32) Int) Unit!31542)

(assert (=> d!113131 (= lt!421444 (choose!1557 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113131 (validMask!0 mask!1881)))

(assert (=> d!113131 (= (lemmaListMapContainsThenArrayContainsFrom!285 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!421444)))

(declare-fun b!935106 () Bool)

(assert (=> b!935106 (= e!525099 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!935107 () Bool)

(assert (=> b!935107 (= e!525099 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113131 c!97183) b!935106))

(assert (= (and d!113131 (not c!97183)) b!935107))

(declare-fun m!869657 () Bool)

(assert (=> d!113131 m!869657))

(assert (=> d!113131 m!869435))

(assert (=> b!935106 m!869427))

(assert (=> b!934925 d!113131))

(declare-fun d!113133 () Bool)

(declare-fun e!525100 () Bool)

(assert (=> d!113133 e!525100))

(declare-fun res!629836 () Bool)

(assert (=> d!113133 (=> (not res!629836) (not e!525100))))

(declare-fun lt!421445 () ListLongMap!12115)

(assert (=> d!113133 (= res!629836 (contains!5077 lt!421445 (_1!6712 lt!421298)))))

(declare-fun lt!421448 () List!19211)

(assert (=> d!113133 (= lt!421445 (ListLongMap!12116 lt!421448))))

(declare-fun lt!421447 () Unit!31542)

(declare-fun lt!421446 () Unit!31542)

(assert (=> d!113133 (= lt!421447 lt!421446)))

(assert (=> d!113133 (= (getValueByKey!484 lt!421448 (_1!6712 lt!421298)) (Some!489 (_2!6712 lt!421298)))))

(assert (=> d!113133 (= lt!421446 (lemmaContainsTupThenGetReturnValue!258 lt!421448 (_1!6712 lt!421298) (_2!6712 lt!421298)))))

(assert (=> d!113133 (= lt!421448 (insertStrictlySorted!314 (toList!6073 lt!421294) (_1!6712 lt!421298) (_2!6712 lt!421298)))))

(assert (=> d!113133 (= (+!2772 lt!421294 lt!421298) lt!421445)))

(declare-fun b!935108 () Bool)

(declare-fun res!629835 () Bool)

(assert (=> b!935108 (=> (not res!629835) (not e!525100))))

(assert (=> b!935108 (= res!629835 (= (getValueByKey!484 (toList!6073 lt!421445) (_1!6712 lt!421298)) (Some!489 (_2!6712 lt!421298))))))

(declare-fun b!935109 () Bool)

(assert (=> b!935109 (= e!525100 (contains!5081 (toList!6073 lt!421445) lt!421298))))

(assert (= (and d!113133 res!629836) b!935108))

(assert (= (and b!935108 res!629835) b!935109))

(declare-fun m!869659 () Bool)

(assert (=> d!113133 m!869659))

(declare-fun m!869661 () Bool)

(assert (=> d!113133 m!869661))

(declare-fun m!869663 () Bool)

(assert (=> d!113133 m!869663))

(declare-fun m!869665 () Bool)

(assert (=> d!113133 m!869665))

(declare-fun m!869667 () Bool)

(assert (=> b!935108 m!869667))

(declare-fun m!869669 () Bool)

(assert (=> b!935109 m!869669))

(assert (=> b!934925 d!113133))

(declare-fun d!113135 () Bool)

(declare-fun c!97186 () Bool)

(assert (=> d!113135 (= c!97186 ((_ is ValueCellFull!9603) (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!525103 () V!31857)

(assert (=> d!113135 (= (get!14280 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!525103)))

(declare-fun b!935114 () Bool)

(declare-fun get!14282 (ValueCell!9603 V!31857) V!31857)

(assert (=> b!935114 (= e!525103 (get!14282 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!935115 () Bool)

(declare-fun get!14283 (ValueCell!9603 V!31857) V!31857)

(assert (=> b!935115 (= e!525103 (get!14283 (select (arr!27088 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113135 c!97186) b!935114))

(assert (= (and d!113135 (not c!97186)) b!935115))

(assert (=> b!935114 m!869411))

(assert (=> b!935114 m!869413))

(declare-fun m!869671 () Bool)

(assert (=> b!935114 m!869671))

(assert (=> b!935115 m!869411))

(assert (=> b!935115 m!869413))

(declare-fun m!869673 () Bool)

(assert (=> b!935115 m!869673))

(assert (=> b!934925 d!113135))

(declare-fun d!113137 () Bool)

(assert (=> d!113137 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19209)))

(declare-fun lt!421451 () Unit!31542)

(declare-fun choose!39 (array!56298 (_ BitVec 32) (_ BitVec 32)) Unit!31542)

(assert (=> d!113137 (= lt!421451 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113137 (bvslt (size!27547 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113137 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!421451)))

(declare-fun bs!26244 () Bool)

(assert (= bs!26244 d!113137))

(assert (=> bs!26244 m!869421))

(declare-fun m!869675 () Bool)

(assert (=> bs!26244 m!869675))

(assert (=> b!934925 d!113137))

(declare-fun d!113139 () Bool)

(declare-fun get!14284 (Option!490) V!31857)

(assert (=> d!113139 (= (apply!852 lt!421294 k0!1099) (get!14284 (getValueByKey!484 (toList!6073 lt!421294) k0!1099)))))

(declare-fun bs!26245 () Bool)

(assert (= bs!26245 d!113139))

(declare-fun m!869677 () Bool)

(assert (=> bs!26245 m!869677))

(assert (=> bs!26245 m!869677))

(declare-fun m!869679 () Bool)

(assert (=> bs!26245 m!869679))

(assert (=> b!934916 d!113139))

(declare-fun d!113141 () Bool)

(declare-fun lt!421454 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!408 (List!19212) (InoxSet (_ BitVec 64)))

(assert (=> d!113141 (= lt!421454 (select (content!408 Nil!19209) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!525109 () Bool)

(assert (=> d!113141 (= lt!421454 e!525109)))

(declare-fun res!629842 () Bool)

(assert (=> d!113141 (=> (not res!629842) (not e!525109))))

(assert (=> d!113141 (= res!629842 ((_ is Cons!19208) Nil!19209))))

(assert (=> d!113141 (= (contains!5078 Nil!19209 #b1000000000000000000000000000000000000000000000000000000000000000) lt!421454)))

(declare-fun b!935120 () Bool)

(declare-fun e!525108 () Bool)

(assert (=> b!935120 (= e!525109 e!525108)))

(declare-fun res!629841 () Bool)

(assert (=> b!935120 (=> res!629841 e!525108)))

(assert (=> b!935120 (= res!629841 (= (h!20354 Nil!19209) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935121 () Bool)

(assert (=> b!935121 (= e!525108 (contains!5078 (t!27425 Nil!19209) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!113141 res!629842) b!935120))

(assert (= (and b!935120 (not res!629841)) b!935121))

(declare-fun m!869681 () Bool)

(assert (=> d!113141 m!869681))

(declare-fun m!869683 () Bool)

(assert (=> d!113141 m!869683))

(declare-fun m!869685 () Bool)

(assert (=> b!935121 m!869685))

(assert (=> b!934917 d!113141))

(declare-fun d!113143 () Bool)

(declare-fun res!629847 () Bool)

(declare-fun e!525114 () Bool)

(assert (=> d!113143 (=> res!629847 e!525114)))

(assert (=> d!113143 (= res!629847 (= (select (arr!27087 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113143 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!525114)))

(declare-fun b!935126 () Bool)

(declare-fun e!525115 () Bool)

(assert (=> b!935126 (= e!525114 e!525115)))

(declare-fun res!629848 () Bool)

(assert (=> b!935126 (=> (not res!629848) (not e!525115))))

(assert (=> b!935126 (= res!629848 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27547 _keys!1487)))))

(declare-fun b!935127 () Bool)

(assert (=> b!935127 (= e!525115 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113143 (not res!629847)) b!935126))

(assert (= (and b!935126 res!629848) b!935127))

(declare-fun m!869687 () Bool)

(assert (=> d!113143 m!869687))

(declare-fun m!869689 () Bool)

(assert (=> b!935127 m!869689))

(assert (=> b!934908 d!113143))

(declare-fun d!113145 () Bool)

(assert (=> d!113145 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934918 d!113145))

(declare-fun d!113147 () Bool)

(declare-fun lt!421455 () Bool)

(assert (=> d!113147 (= lt!421455 (select (content!408 Nil!19209) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!525117 () Bool)

(assert (=> d!113147 (= lt!421455 e!525117)))

(declare-fun res!629850 () Bool)

(assert (=> d!113147 (=> (not res!629850) (not e!525117))))

(assert (=> d!113147 (= res!629850 ((_ is Cons!19208) Nil!19209))))

(assert (=> d!113147 (= (contains!5078 Nil!19209 #b0000000000000000000000000000000000000000000000000000000000000000) lt!421455)))

(declare-fun b!935128 () Bool)

(declare-fun e!525116 () Bool)

(assert (=> b!935128 (= e!525117 e!525116)))

(declare-fun res!629849 () Bool)

(assert (=> b!935128 (=> res!629849 e!525116)))

(assert (=> b!935128 (= res!629849 (= (h!20354 Nil!19209) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935129 () Bool)

(assert (=> b!935129 (= e!525116 (contains!5078 (t!27425 Nil!19209) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!113147 res!629850) b!935128))

(assert (= (and b!935128 (not res!629849)) b!935129))

(assert (=> d!113147 m!869681))

(declare-fun m!869691 () Bool)

(assert (=> d!113147 m!869691))

(declare-fun m!869693 () Bool)

(assert (=> b!935129 m!869693))

(assert (=> b!934919 d!113147))

(declare-fun b!935130 () Bool)

(declare-fun e!525120 () Bool)

(declare-fun e!525121 () Bool)

(assert (=> b!935130 (= e!525120 e!525121)))

(declare-fun c!97187 () Bool)

(assert (=> b!935130 (= c!97187 (validKeyInArray!0 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!113149 () Bool)

(declare-fun res!629851 () Bool)

(declare-fun e!525119 () Bool)

(assert (=> d!113149 (=> res!629851 e!525119)))

(assert (=> d!113149 (= res!629851 (bvsge #b00000000000000000000000000000000 (size!27547 _keys!1487)))))

(assert (=> d!113149 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19209) e!525119)))

(declare-fun b!935131 () Bool)

(assert (=> b!935131 (= e!525119 e!525120)))

(declare-fun res!629853 () Bool)

(assert (=> b!935131 (=> (not res!629853) (not e!525120))))

(declare-fun e!525118 () Bool)

(assert (=> b!935131 (= res!629853 (not e!525118))))

(declare-fun res!629852 () Bool)

(assert (=> b!935131 (=> (not res!629852) (not e!525118))))

(assert (=> b!935131 (= res!629852 (validKeyInArray!0 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!935132 () Bool)

(declare-fun call!40706 () Bool)

(assert (=> b!935132 (= e!525121 call!40706)))

(declare-fun bm!40703 () Bool)

(assert (=> bm!40703 (= call!40706 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97187 (Cons!19208 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000) Nil!19209) Nil!19209)))))

(declare-fun b!935133 () Bool)

(assert (=> b!935133 (= e!525121 call!40706)))

(declare-fun b!935134 () Bool)

(assert (=> b!935134 (= e!525118 (contains!5078 Nil!19209 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!113149 (not res!629851)) b!935131))

(assert (= (and b!935131 res!629852) b!935134))

(assert (= (and b!935131 res!629853) b!935130))

(assert (= (and b!935130 c!97187) b!935132))

(assert (= (and b!935130 (not c!97187)) b!935133))

(assert (= (or b!935132 b!935133) bm!40703))

(declare-fun m!869695 () Bool)

(assert (=> b!935130 m!869695))

(assert (=> b!935130 m!869695))

(declare-fun m!869697 () Bool)

(assert (=> b!935130 m!869697))

(assert (=> b!935131 m!869695))

(assert (=> b!935131 m!869695))

(assert (=> b!935131 m!869697))

(assert (=> bm!40703 m!869695))

(declare-fun m!869699 () Bool)

(assert (=> bm!40703 m!869699))

(assert (=> b!935134 m!869695))

(assert (=> b!935134 m!869695))

(declare-fun m!869701 () Bool)

(assert (=> b!935134 m!869701))

(assert (=> b!934920 d!113149))

(declare-fun d!113151 () Bool)

(declare-fun e!525122 () Bool)

(assert (=> d!113151 e!525122))

(declare-fun res!629854 () Bool)

(assert (=> d!113151 (=> res!629854 e!525122)))

(declare-fun lt!421457 () Bool)

(assert (=> d!113151 (= res!629854 (not lt!421457))))

(declare-fun lt!421459 () Bool)

(assert (=> d!113151 (= lt!421457 lt!421459)))

(declare-fun lt!421458 () Unit!31542)

(declare-fun e!525123 () Unit!31542)

(assert (=> d!113151 (= lt!421458 e!525123)))

(declare-fun c!97188 () Bool)

(assert (=> d!113151 (= c!97188 lt!421459)))

(assert (=> d!113151 (= lt!421459 (containsKey!449 (toList!6073 lt!421294) k0!1099))))

(assert (=> d!113151 (= (contains!5077 lt!421294 k0!1099) lt!421457)))

(declare-fun b!935135 () Bool)

(declare-fun lt!421456 () Unit!31542)

(assert (=> b!935135 (= e!525123 lt!421456)))

(assert (=> b!935135 (= lt!421456 (lemmaContainsKeyImpliesGetValueByKeyDefined!344 (toList!6073 lt!421294) k0!1099))))

(assert (=> b!935135 (isDefined!354 (getValueByKey!484 (toList!6073 lt!421294) k0!1099))))

(declare-fun b!935136 () Bool)

(declare-fun Unit!31549 () Unit!31542)

(assert (=> b!935136 (= e!525123 Unit!31549)))

(declare-fun b!935137 () Bool)

(assert (=> b!935137 (= e!525122 (isDefined!354 (getValueByKey!484 (toList!6073 lt!421294) k0!1099)))))

(assert (= (and d!113151 c!97188) b!935135))

(assert (= (and d!113151 (not c!97188)) b!935136))

(assert (= (and d!113151 (not res!629854)) b!935137))

(declare-fun m!869703 () Bool)

(assert (=> d!113151 m!869703))

(declare-fun m!869705 () Bool)

(assert (=> b!935135 m!869705))

(assert (=> b!935135 m!869677))

(assert (=> b!935135 m!869677))

(declare-fun m!869707 () Bool)

(assert (=> b!935135 m!869707))

(assert (=> b!935137 m!869677))

(assert (=> b!935137 m!869677))

(assert (=> b!935137 m!869707))

(assert (=> b!934911 d!113151))

(declare-fun b!935138 () Bool)

(declare-fun e!525135 () Bool)

(declare-fun call!40711 () Bool)

(assert (=> b!935138 (= e!525135 (not call!40711))))

(declare-fun b!935139 () Bool)

(declare-fun e!525132 () Unit!31542)

(declare-fun Unit!31550 () Unit!31542)

(assert (=> b!935139 (= e!525132 Unit!31550)))

(declare-fun bm!40704 () Bool)

(declare-fun call!40713 () ListLongMap!12115)

(declare-fun call!40707 () ListLongMap!12115)

(assert (=> bm!40704 (= call!40713 call!40707)))

(declare-fun b!935140 () Bool)

(declare-fun res!629855 () Bool)

(declare-fun e!525131 () Bool)

(assert (=> b!935140 (=> (not res!629855) (not e!525131))))

(declare-fun e!525134 () Bool)

(assert (=> b!935140 (= res!629855 e!525134)))

(declare-fun c!97193 () Bool)

(assert (=> b!935140 (= c!97193 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40705 () Bool)

(declare-fun call!40712 () Bool)

(declare-fun lt!421462 () ListLongMap!12115)

(assert (=> bm!40705 (= call!40712 (contains!5077 lt!421462 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935141 () Bool)

(declare-fun c!97189 () Bool)

(assert (=> b!935141 (= c!97189 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525133 () ListLongMap!12115)

(declare-fun e!525129 () ListLongMap!12115)

(assert (=> b!935141 (= e!525133 e!525129)))

(declare-fun b!935142 () Bool)

(declare-fun call!40708 () ListLongMap!12115)

(assert (=> b!935142 (= e!525133 call!40708)))

(declare-fun b!935143 () Bool)

(assert (=> b!935143 (= e!525134 (not call!40712))))

(declare-fun bm!40706 () Bool)

(declare-fun call!40709 () ListLongMap!12115)

(assert (=> bm!40706 (= call!40707 call!40709)))

(declare-fun b!935144 () Bool)

(declare-fun e!525136 () Bool)

(assert (=> b!935144 (= e!525136 (validKeyInArray!0 (select (arr!27087 _keys!1487) from!1844)))))

(declare-fun b!935145 () Bool)

(declare-fun e!525124 () Bool)

(assert (=> b!935145 (= e!525124 (= (apply!852 lt!421462 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935146 () Bool)

(declare-fun res!629858 () Bool)

(assert (=> b!935146 (=> (not res!629858) (not e!525131))))

(declare-fun e!525125 () Bool)

(assert (=> b!935146 (= res!629858 e!525125)))

(declare-fun res!629857 () Bool)

(assert (=> b!935146 (=> res!629857 e!525125)))

(declare-fun e!525128 () Bool)

(assert (=> b!935146 (= res!629857 (not e!525128))))

(declare-fun res!629862 () Bool)

(assert (=> b!935146 (=> (not res!629862) (not e!525128))))

(assert (=> b!935146 (= res!629862 (bvslt from!1844 (size!27547 _keys!1487)))))

(declare-fun bm!40707 () Bool)

(assert (=> bm!40707 (= call!40711 (contains!5077 lt!421462 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935147 () Bool)

(assert (=> b!935147 (= e!525135 e!525124)))

(declare-fun res!629863 () Bool)

(assert (=> b!935147 (= res!629863 call!40711)))

(assert (=> b!935147 (=> (not res!629863) (not e!525124))))

(declare-fun b!935148 () Bool)

(assert (=> b!935148 (= e!525129 call!40708)))

(declare-fun b!935149 () Bool)

(declare-fun e!525130 () ListLongMap!12115)

(assert (=> b!935149 (= e!525130 e!525133)))

(declare-fun c!97191 () Bool)

(assert (=> b!935149 (= c!97191 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935150 () Bool)

(assert (=> b!935150 (= e!525128 (validKeyInArray!0 (select (arr!27087 _keys!1487) from!1844)))))

(declare-fun b!935151 () Bool)

(declare-fun e!525127 () Bool)

(assert (=> b!935151 (= e!525127 (= (apply!852 lt!421462 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935152 () Bool)

(declare-fun lt!421468 () Unit!31542)

(assert (=> b!935152 (= e!525132 lt!421468)))

(declare-fun lt!421466 () ListLongMap!12115)

(assert (=> b!935152 (= lt!421466 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421471 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421460 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421460 (select (arr!27087 _keys!1487) from!1844))))

(declare-fun lt!421474 () Unit!31542)

(assert (=> b!935152 (= lt!421474 (addStillContains!528 lt!421466 lt!421471 zeroValue!1173 lt!421460))))

(assert (=> b!935152 (contains!5077 (+!2772 lt!421466 (tuple2!13405 lt!421471 zeroValue!1173)) lt!421460)))

(declare-fun lt!421464 () Unit!31542)

(assert (=> b!935152 (= lt!421464 lt!421474)))

(declare-fun lt!421465 () ListLongMap!12115)

(assert (=> b!935152 (= lt!421465 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421477 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421477 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421472 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421472 (select (arr!27087 _keys!1487) from!1844))))

(declare-fun lt!421478 () Unit!31542)

(assert (=> b!935152 (= lt!421478 (addApplyDifferent!412 lt!421465 lt!421477 minValue!1173 lt!421472))))

(assert (=> b!935152 (= (apply!852 (+!2772 lt!421465 (tuple2!13405 lt!421477 minValue!1173)) lt!421472) (apply!852 lt!421465 lt!421472))))

(declare-fun lt!421479 () Unit!31542)

(assert (=> b!935152 (= lt!421479 lt!421478)))

(declare-fun lt!421481 () ListLongMap!12115)

(assert (=> b!935152 (= lt!421481 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421461 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421461 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421463 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421463 (select (arr!27087 _keys!1487) from!1844))))

(declare-fun lt!421480 () Unit!31542)

(assert (=> b!935152 (= lt!421480 (addApplyDifferent!412 lt!421481 lt!421461 zeroValue!1173 lt!421463))))

(assert (=> b!935152 (= (apply!852 (+!2772 lt!421481 (tuple2!13405 lt!421461 zeroValue!1173)) lt!421463) (apply!852 lt!421481 lt!421463))))

(declare-fun lt!421469 () Unit!31542)

(assert (=> b!935152 (= lt!421469 lt!421480)))

(declare-fun lt!421467 () ListLongMap!12115)

(assert (=> b!935152 (= lt!421467 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421470 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421470 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421473 () (_ BitVec 64))

(assert (=> b!935152 (= lt!421473 (select (arr!27087 _keys!1487) from!1844))))

(assert (=> b!935152 (= lt!421468 (addApplyDifferent!412 lt!421467 lt!421470 minValue!1173 lt!421473))))

(assert (=> b!935152 (= (apply!852 (+!2772 lt!421467 (tuple2!13405 lt!421470 minValue!1173)) lt!421473) (apply!852 lt!421467 lt!421473))))

(declare-fun b!935153 () Bool)

(assert (=> b!935153 (= e!525131 e!525135)))

(declare-fun c!97190 () Bool)

(assert (=> b!935153 (= c!97190 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!113153 () Bool)

(assert (=> d!113153 e!525131))

(declare-fun res!629859 () Bool)

(assert (=> d!113153 (=> (not res!629859) (not e!525131))))

(assert (=> d!113153 (= res!629859 (or (bvsge from!1844 (size!27547 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27547 _keys!1487)))))))

(declare-fun lt!421476 () ListLongMap!12115)

(assert (=> d!113153 (= lt!421462 lt!421476)))

(declare-fun lt!421475 () Unit!31542)

(assert (=> d!113153 (= lt!421475 e!525132)))

(declare-fun c!97192 () Bool)

(assert (=> d!113153 (= c!97192 e!525136)))

(declare-fun res!629860 () Bool)

(assert (=> d!113153 (=> (not res!629860) (not e!525136))))

(assert (=> d!113153 (= res!629860 (bvslt from!1844 (size!27547 _keys!1487)))))

(assert (=> d!113153 (= lt!421476 e!525130)))

(declare-fun c!97194 () Bool)

(assert (=> d!113153 (= c!97194 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113153 (validMask!0 mask!1881)))

(assert (=> d!113153 (= (getCurrentListMap!3265 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!421462)))

(declare-fun b!935154 () Bool)

(assert (=> b!935154 (= e!525134 e!525127)))

(declare-fun res!629856 () Bool)

(assert (=> b!935154 (= res!629856 call!40712)))

(assert (=> b!935154 (=> (not res!629856) (not e!525127))))

(declare-fun b!935155 () Bool)

(assert (=> b!935155 (= e!525129 call!40713)))

(declare-fun e!525126 () Bool)

(declare-fun b!935156 () Bool)

(assert (=> b!935156 (= e!525126 (= (apply!852 lt!421462 (select (arr!27087 _keys!1487) from!1844)) (get!14280 (select (arr!27088 _values!1231) from!1844) (dynLambda!1611 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935156 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27548 _values!1231)))))

(assert (=> b!935156 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27547 _keys!1487)))))

(declare-fun bm!40708 () Bool)

(declare-fun call!40710 () ListLongMap!12115)

(assert (=> bm!40708 (= call!40708 call!40710)))

(declare-fun bm!40709 () Bool)

(assert (=> bm!40709 (= call!40710 (+!2772 (ite c!97194 call!40709 (ite c!97191 call!40707 call!40713)) (ite (or c!97194 c!97191) (tuple2!13405 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935157 () Bool)

(assert (=> b!935157 (= e!525125 e!525126)))

(declare-fun res!629861 () Bool)

(assert (=> b!935157 (=> (not res!629861) (not e!525126))))

(assert (=> b!935157 (= res!629861 (contains!5077 lt!421462 (select (arr!27087 _keys!1487) from!1844)))))

(assert (=> b!935157 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27547 _keys!1487)))))

(declare-fun bm!40710 () Bool)

(assert (=> bm!40710 (= call!40709 (getCurrentListMapNoExtraKeys!3317 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935158 () Bool)

(assert (=> b!935158 (= e!525130 (+!2772 call!40710 (tuple2!13405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113153 c!97194) b!935158))

(assert (= (and d!113153 (not c!97194)) b!935149))

(assert (= (and b!935149 c!97191) b!935142))

(assert (= (and b!935149 (not c!97191)) b!935141))

(assert (= (and b!935141 c!97189) b!935148))

(assert (= (and b!935141 (not c!97189)) b!935155))

(assert (= (or b!935148 b!935155) bm!40704))

(assert (= (or b!935142 bm!40704) bm!40706))

(assert (= (or b!935142 b!935148) bm!40708))

(assert (= (or b!935158 bm!40706) bm!40710))

(assert (= (or b!935158 bm!40708) bm!40709))

(assert (= (and d!113153 res!629860) b!935144))

(assert (= (and d!113153 c!97192) b!935152))

(assert (= (and d!113153 (not c!97192)) b!935139))

(assert (= (and d!113153 res!629859) b!935146))

(assert (= (and b!935146 res!629862) b!935150))

(assert (= (and b!935146 (not res!629857)) b!935157))

(assert (= (and b!935157 res!629861) b!935156))

(assert (= (and b!935146 res!629858) b!935140))

(assert (= (and b!935140 c!97193) b!935154))

(assert (= (and b!935140 (not c!97193)) b!935143))

(assert (= (and b!935154 res!629856) b!935151))

(assert (= (or b!935154 b!935143) bm!40705))

(assert (= (and b!935140 res!629855) b!935153))

(assert (= (and b!935153 c!97190) b!935147))

(assert (= (and b!935153 (not c!97190)) b!935138))

(assert (= (and b!935147 res!629863) b!935145))

(assert (= (or b!935147 b!935138) bm!40707))

(declare-fun b_lambda!14073 () Bool)

(assert (=> (not b_lambda!14073) (not b!935156)))

(assert (=> b!935156 t!27423))

(declare-fun b_and!28929 () Bool)

(assert (= b_and!28927 (and (=> t!27423 result!11947) b_and!28929)))

(assert (=> b!935157 m!869687))

(assert (=> b!935157 m!869687))

(declare-fun m!869709 () Bool)

(assert (=> b!935157 m!869709))

(declare-fun m!869711 () Bool)

(assert (=> bm!40705 m!869711))

(assert (=> b!935144 m!869687))

(assert (=> b!935144 m!869687))

(declare-fun m!869713 () Bool)

(assert (=> b!935144 m!869713))

(declare-fun m!869715 () Bool)

(assert (=> b!935151 m!869715))

(declare-fun m!869717 () Bool)

(assert (=> bm!40709 m!869717))

(assert (=> b!935156 m!869687))

(declare-fun m!869719 () Bool)

(assert (=> b!935156 m!869719))

(declare-fun m!869721 () Bool)

(assert (=> b!935156 m!869721))

(assert (=> b!935156 m!869413))

(assert (=> b!935156 m!869721))

(assert (=> b!935156 m!869413))

(declare-fun m!869723 () Bool)

(assert (=> b!935156 m!869723))

(assert (=> b!935156 m!869687))

(declare-fun m!869725 () Bool)

(assert (=> b!935145 m!869725))

(assert (=> b!935150 m!869687))

(assert (=> b!935150 m!869687))

(assert (=> b!935150 m!869713))

(declare-fun m!869727 () Bool)

(assert (=> b!935158 m!869727))

(declare-fun m!869729 () Bool)

(assert (=> b!935152 m!869729))

(declare-fun m!869731 () Bool)

(assert (=> b!935152 m!869731))

(assert (=> b!935152 m!869731))

(declare-fun m!869733 () Bool)

(assert (=> b!935152 m!869733))

(declare-fun m!869735 () Bool)

(assert (=> b!935152 m!869735))

(declare-fun m!869737 () Bool)

(assert (=> b!935152 m!869737))

(declare-fun m!869739 () Bool)

(assert (=> b!935152 m!869739))

(declare-fun m!869741 () Bool)

(assert (=> b!935152 m!869741))

(assert (=> b!935152 m!869687))

(declare-fun m!869743 () Bool)

(assert (=> b!935152 m!869743))

(assert (=> b!935152 m!869739))

(declare-fun m!869745 () Bool)

(assert (=> b!935152 m!869745))

(declare-fun m!869747 () Bool)

(assert (=> b!935152 m!869747))

(declare-fun m!869749 () Bool)

(assert (=> b!935152 m!869749))

(declare-fun m!869751 () Bool)

(assert (=> b!935152 m!869751))

(declare-fun m!869753 () Bool)

(assert (=> b!935152 m!869753))

(assert (=> b!935152 m!869735))

(declare-fun m!869755 () Bool)

(assert (=> b!935152 m!869755))

(assert (=> b!935152 m!869745))

(declare-fun m!869757 () Bool)

(assert (=> b!935152 m!869757))

(declare-fun m!869759 () Bool)

(assert (=> b!935152 m!869759))

(assert (=> bm!40710 m!869743))

(declare-fun m!869761 () Bool)

(assert (=> bm!40707 m!869761))

(assert (=> d!113153 m!869435))

(assert (=> b!934911 d!113153))

(declare-fun b!935167 () Bool)

(declare-fun e!525145 () Bool)

(declare-fun call!40716 () Bool)

(assert (=> b!935167 (= e!525145 call!40716)))

(declare-fun d!113155 () Bool)

(declare-fun res!629869 () Bool)

(declare-fun e!525143 () Bool)

(assert (=> d!113155 (=> res!629869 e!525143)))

(assert (=> d!113155 (= res!629869 (bvsge #b00000000000000000000000000000000 (size!27547 _keys!1487)))))

(assert (=> d!113155 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!525143)))

(declare-fun b!935168 () Bool)

(declare-fun e!525144 () Bool)

(assert (=> b!935168 (= e!525144 call!40716)))

(declare-fun b!935169 () Bool)

(assert (=> b!935169 (= e!525145 e!525144)))

(declare-fun lt!421488 () (_ BitVec 64))

(assert (=> b!935169 (= lt!421488 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!421490 () Unit!31542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56298 (_ BitVec 64) (_ BitVec 32)) Unit!31542)

(assert (=> b!935169 (= lt!421490 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!421488 #b00000000000000000000000000000000))))

(assert (=> b!935169 (arrayContainsKey!0 _keys!1487 lt!421488 #b00000000000000000000000000000000)))

(declare-fun lt!421489 () Unit!31542)

(assert (=> b!935169 (= lt!421489 lt!421490)))

(declare-fun res!629868 () Bool)

(declare-datatypes ((SeekEntryResult!8966 0))(
  ( (MissingZero!8966 (index!38234 (_ BitVec 32))) (Found!8966 (index!38235 (_ BitVec 32))) (Intermediate!8966 (undefined!9778 Bool) (index!38236 (_ BitVec 32)) (x!80180 (_ BitVec 32))) (Undefined!8966) (MissingVacant!8966 (index!38237 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56298 (_ BitVec 32)) SeekEntryResult!8966)

(assert (=> b!935169 (= res!629868 (= (seekEntryOrOpen!0 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8966 #b00000000000000000000000000000000)))))

(assert (=> b!935169 (=> (not res!629868) (not e!525144))))

(declare-fun b!935170 () Bool)

(assert (=> b!935170 (= e!525143 e!525145)))

(declare-fun c!97197 () Bool)

(assert (=> b!935170 (= c!97197 (validKeyInArray!0 (select (arr!27087 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun bm!40713 () Bool)

(assert (=> bm!40713 (= call!40716 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(assert (= (and d!113155 (not res!629869)) b!935170))

(assert (= (and b!935170 c!97197) b!935169))

(assert (= (and b!935170 (not c!97197)) b!935167))

(assert (= (and b!935169 res!629868) b!935168))

(assert (= (or b!935168 b!935167) bm!40713))

(assert (=> b!935169 m!869695))

(declare-fun m!869763 () Bool)

(assert (=> b!935169 m!869763))

(declare-fun m!869765 () Bool)

(assert (=> b!935169 m!869765))

(assert (=> b!935169 m!869695))

(declare-fun m!869767 () Bool)

(assert (=> b!935169 m!869767))

(assert (=> b!935170 m!869695))

(assert (=> b!935170 m!869695))

(assert (=> b!935170 m!869697))

(declare-fun m!869769 () Bool)

(assert (=> bm!40713 m!869769))

(assert (=> b!934922 d!113155))

(declare-fun d!113157 () Bool)

(assert (=> d!113157 (= (validKeyInArray!0 lt!421296) (and (not (= lt!421296 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!421296 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934912 d!113157))

(declare-fun d!113159 () Bool)

(declare-fun res!629874 () Bool)

(declare-fun e!525150 () Bool)

(assert (=> d!113159 (=> res!629874 e!525150)))

(assert (=> d!113159 (= res!629874 ((_ is Nil!19209) Nil!19209))))

(assert (=> d!113159 (= (noDuplicate!1355 Nil!19209) e!525150)))

(declare-fun b!935175 () Bool)

(declare-fun e!525151 () Bool)

(assert (=> b!935175 (= e!525150 e!525151)))

(declare-fun res!629875 () Bool)

(assert (=> b!935175 (=> (not res!629875) (not e!525151))))

(assert (=> b!935175 (= res!629875 (not (contains!5078 (t!27425 Nil!19209) (h!20354 Nil!19209))))))

(declare-fun b!935176 () Bool)

(assert (=> b!935176 (= e!525151 (noDuplicate!1355 (t!27425 Nil!19209)))))

(assert (= (and d!113159 (not res!629874)) b!935175))

(assert (= (and b!935175 res!629875) b!935176))

(declare-fun m!869771 () Bool)

(assert (=> b!935175 m!869771))

(declare-fun m!869773 () Bool)

(assert (=> b!935176 m!869773))

(assert (=> b!934923 d!113159))

(declare-fun d!113161 () Bool)

(assert (=> d!113161 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79568 d!113161))

(declare-fun d!113163 () Bool)

(assert (=> d!113163 (= (array_inv!21034 _values!1231) (bvsge (size!27548 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79568 d!113163))

(declare-fun d!113165 () Bool)

(assert (=> d!113165 (= (array_inv!21035 _keys!1487) (bvsge (size!27547 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79568 d!113165))

(declare-fun condMapEmpty!32025 () Bool)

(declare-fun mapDefault!32025 () ValueCell!9603)

(assert (=> mapNonEmpty!32019 (= condMapEmpty!32025 (= mapRest!32019 ((as const (Array (_ BitVec 32) ValueCell!9603)) mapDefault!32025)))))

(declare-fun e!525156 () Bool)

(declare-fun mapRes!32025 () Bool)

(assert (=> mapNonEmpty!32019 (= tp!61434 (and e!525156 mapRes!32025))))

(declare-fun mapNonEmpty!32025 () Bool)

(declare-fun tp!61443 () Bool)

(declare-fun e!525157 () Bool)

(assert (=> mapNonEmpty!32025 (= mapRes!32025 (and tp!61443 e!525157))))

(declare-fun mapKey!32025 () (_ BitVec 32))

(declare-fun mapValue!32025 () ValueCell!9603)

(declare-fun mapRest!32025 () (Array (_ BitVec 32) ValueCell!9603))

(assert (=> mapNonEmpty!32025 (= mapRest!32019 (store mapRest!32025 mapKey!32025 mapValue!32025))))

(declare-fun b!935184 () Bool)

(assert (=> b!935184 (= e!525156 tp_is_empty!20169)))

(declare-fun b!935183 () Bool)

(assert (=> b!935183 (= e!525157 tp_is_empty!20169)))

(declare-fun mapIsEmpty!32025 () Bool)

(assert (=> mapIsEmpty!32025 mapRes!32025))

(assert (= (and mapNonEmpty!32019 condMapEmpty!32025) mapIsEmpty!32025))

(assert (= (and mapNonEmpty!32019 (not condMapEmpty!32025)) mapNonEmpty!32025))

(assert (= (and mapNonEmpty!32025 ((_ is ValueCellFull!9603) mapValue!32025)) b!935183))

(assert (= (and mapNonEmpty!32019 ((_ is ValueCellFull!9603) mapDefault!32025)) b!935184))

(declare-fun m!869775 () Bool)

(assert (=> mapNonEmpty!32025 m!869775))

(declare-fun b_lambda!14075 () Bool)

(assert (= b_lambda!14069 (or (and start!79568 b_free!17661) b_lambda!14075)))

(declare-fun b_lambda!14077 () Bool)

(assert (= b_lambda!14073 (or (and start!79568 b_free!17661) b_lambda!14077)))

(declare-fun b_lambda!14079 () Bool)

(assert (= b_lambda!14067 (or (and start!79568 b_free!17661) b_lambda!14079)))

(declare-fun b_lambda!14081 () Bool)

(assert (= b_lambda!14071 (or (and start!79568 b_free!17661) b_lambda!14081)))

(check-sat (not b!935169) (not b!935135) (not bm!40698) (not d!113123) (not d!113141) (not d!113151) (not d!113117) (not d!113125) b_and!28929 (not mapNonEmpty!32025) (not b_lambda!14075) (not bm!40689) (not bm!40707) (not d!113153) (not d!113137) (not b!935101) (not b!935145) (not bm!40709) (not d!113139) (not b!935108) (not b!935175) (not b!935129) (not b!935067) (not d!113147) (not b!935075) (not b!935131) (not b!935054) (not b!935086) (not b!935039) (not b!935114) (not b!935045) (not b_next!17661) (not bm!40699) (not b!935033) (not b!935097) (not b!935083) (not b_lambda!14077) (not bm!40687) (not bm!40694) (not b_lambda!14081) (not d!113121) (not b!935144) (not b!935032) (not b!935053) (not b!935156) (not bm!40691) tp_is_empty!20169 (not b!935065) (not bm!40692) (not b!935059) (not b!935151) (not b!935130) (not b!935077) (not b!935137) (not b!935040) (not bm!40703) (not bm!40710) (not b!935170) (not b!935060) (not b!935157) (not b!935109) (not b!935098) (not bm!40713) (not b!935134) (not b!935150) (not d!113119) (not b!935152) (not bm!40702) (not b!935044) (not d!113127) (not b!935038) (not bm!40705) (not b!935066) (not d!113131) (not b_lambda!14079) (not bm!40696) (not b!935115) (not b!935121) (not b!935046) (not b!935106) (not b!935158) (not d!113133) (not b!935061) (not b!935176) (not b!935082) (not b_lambda!14065) (not b!935127))
(check-sat b_and!28929 (not b_next!17661))
