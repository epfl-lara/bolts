; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79062 () Bool)

(assert start!79062)

(declare-fun b_free!17247 () Bool)

(declare-fun b_next!17247 () Bool)

(assert (=> start!79062 (= b_free!17247 (not b_next!17247))))

(declare-fun tp!60182 () Bool)

(declare-fun b_and!28249 () Bool)

(assert (=> start!79062 (= tp!60182 b_and!28249)))

(declare-fun b!925923 () Bool)

(declare-fun res!623987 () Bool)

(declare-fun e!519756 () Bool)

(assert (=> b!925923 (=> (not res!623987) (not e!519756))))

(declare-datatypes ((array!55490 0))(
  ( (array!55491 (arr!26686 (Array (_ BitVec 32) (_ BitVec 64))) (size!27146 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55490)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55490 (_ BitVec 32)) Bool)

(assert (=> b!925923 (= res!623987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31389 () Bool)

(declare-fun mapRes!31389 () Bool)

(assert (=> mapIsEmpty!31389 mapRes!31389))

(declare-fun b!925924 () Bool)

(declare-fun res!623985 () Bool)

(declare-fun e!519748 () Bool)

(assert (=> b!925924 (=> (not res!623985) (not e!519748))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31305 0))(
  ( (V!31306 (val!9928 Int)) )
))
(declare-fun v!791 () V!31305)

(declare-datatypes ((tuple2!13052 0))(
  ( (tuple2!13053 (_1!6536 (_ BitVec 64)) (_2!6536 V!31305)) )
))
(declare-datatypes ((List!18885 0))(
  ( (Nil!18882) (Cons!18881 (h!20027 tuple2!13052) (t!26870 List!18885)) )
))
(declare-datatypes ((ListLongMap!11763 0))(
  ( (ListLongMap!11764 (toList!5897 List!18885)) )
))
(declare-fun lt!416901 () ListLongMap!11763)

(declare-fun apply!697 (ListLongMap!11763 (_ BitVec 64)) V!31305)

(assert (=> b!925924 (= res!623985 (= (apply!697 lt!416901 k0!1099) v!791))))

(declare-fun b!925925 () Bool)

(declare-fun lt!416907 () ListLongMap!11763)

(declare-fun lt!416898 () V!31305)

(assert (=> b!925925 (= (apply!697 lt!416907 k0!1099) lt!416898)))

(declare-fun lt!416905 () V!31305)

(declare-fun lt!416900 () ListLongMap!11763)

(declare-fun lt!416902 () (_ BitVec 64))

(declare-datatypes ((Unit!31299 0))(
  ( (Unit!31300) )
))
(declare-fun lt!416906 () Unit!31299)

(declare-fun addApplyDifferent!383 (ListLongMap!11763 (_ BitVec 64) V!31305 (_ BitVec 64)) Unit!31299)

(assert (=> b!925925 (= lt!416906 (addApplyDifferent!383 lt!416900 lt!416902 lt!416905 k0!1099))))

(assert (=> b!925925 (not (= lt!416902 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!416904 () Unit!31299)

(declare-datatypes ((List!18886 0))(
  ( (Nil!18883) (Cons!18882 (h!20028 (_ BitVec 64)) (t!26871 List!18886)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55490 (_ BitVec 64) (_ BitVec 32) List!18886) Unit!31299)

(assert (=> b!925925 (= lt!416904 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18883))))

(declare-fun e!519758 () Bool)

(assert (=> b!925925 e!519758))

(declare-fun c!96589 () Bool)

(assert (=> b!925925 (= c!96589 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!416913 () Unit!31299)

(declare-datatypes ((ValueCell!9396 0))(
  ( (ValueCellFull!9396 (v!12446 V!31305)) (EmptyCell!9396) )
))
(declare-datatypes ((array!55492 0))(
  ( (array!55493 (arr!26687 (Array (_ BitVec 32) ValueCell!9396)) (size!27147 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55492)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31305)

(declare-fun minValue!1173 () V!31305)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!243 (array!55490 array!55492 (_ BitVec 32) (_ BitVec 32) V!31305 V!31305 (_ BitVec 64) (_ BitVec 32) Int) Unit!31299)

(assert (=> b!925925 (= lt!416913 (lemmaListMapContainsThenArrayContainsFrom!243 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55490 (_ BitVec 32) List!18886) Bool)

(assert (=> b!925925 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18883)))

(declare-fun lt!416909 () Unit!31299)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55490 (_ BitVec 32) (_ BitVec 32)) Unit!31299)

(assert (=> b!925925 (= lt!416909 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4919 (ListLongMap!11763 (_ BitVec 64)) Bool)

(assert (=> b!925925 (contains!4919 lt!416907 k0!1099)))

(declare-fun lt!416903 () tuple2!13052)

(declare-fun +!2697 (ListLongMap!11763 tuple2!13052) ListLongMap!11763)

(assert (=> b!925925 (= lt!416907 (+!2697 lt!416900 lt!416903))))

(declare-fun lt!416912 () Unit!31299)

(declare-fun addStillContains!459 (ListLongMap!11763 (_ BitVec 64) V!31305 (_ BitVec 64)) Unit!31299)

(assert (=> b!925925 (= lt!416912 (addStillContains!459 lt!416900 lt!416902 lt!416905 k0!1099))))

(declare-fun getCurrentListMap!3113 (array!55490 array!55492 (_ BitVec 32) (_ BitVec 32) V!31305 V!31305 (_ BitVec 32) Int) ListLongMap!11763)

(assert (=> b!925925 (= (getCurrentListMap!3113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2697 (getCurrentListMap!3113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416903))))

(assert (=> b!925925 (= lt!416903 (tuple2!13053 lt!416902 lt!416905))))

(declare-fun get!14058 (ValueCell!9396 V!31305) V!31305)

(declare-fun dynLambda!1536 (Int (_ BitVec 64)) V!31305)

(assert (=> b!925925 (= lt!416905 (get!14058 (select (arr!26687 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1536 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416908 () Unit!31299)

(declare-fun lemmaListMapRecursiveValidKeyArray!132 (array!55490 array!55492 (_ BitVec 32) (_ BitVec 32) V!31305 V!31305 (_ BitVec 32) Int) Unit!31299)

(assert (=> b!925925 (= lt!416908 (lemmaListMapRecursiveValidKeyArray!132 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519753 () Unit!31299)

(assert (=> b!925925 (= e!519753 lt!416906)))

(declare-fun b!925926 () Bool)

(declare-fun lt!416899 () ListLongMap!11763)

(declare-fun e!519751 () Bool)

(assert (=> b!925926 (= e!519751 (= (apply!697 lt!416899 k0!1099) v!791))))

(declare-fun b!925927 () Bool)

(declare-fun arrayContainsKey!0 (array!55490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925927 (= e!519758 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!925928 () Bool)

(assert (=> b!925928 (= e!519748 (not true))))

(assert (=> b!925928 e!519751))

(declare-fun res!623986 () Bool)

(assert (=> b!925928 (=> (not res!623986) (not e!519751))))

(assert (=> b!925928 (= res!623986 (contains!4919 lt!416899 k0!1099))))

(assert (=> b!925928 (= lt!416899 (getCurrentListMap!3113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!416911 () Unit!31299)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!79 (array!55490 array!55492 (_ BitVec 32) (_ BitVec 32) V!31305 V!31305 (_ BitVec 64) V!31305 (_ BitVec 32) Int) Unit!31299)

(assert (=> b!925928 (= lt!416911 (lemmaListMapApplyFromThenApplyFromZero!79 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!623984 () Bool)

(assert (=> start!79062 (=> (not res!623984) (not e!519756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79062 (= res!623984 (validMask!0 mask!1881))))

(assert (=> start!79062 e!519756))

(assert (=> start!79062 true))

(declare-fun tp_is_empty!19755 () Bool)

(assert (=> start!79062 tp_is_empty!19755))

(declare-fun e!519754 () Bool)

(declare-fun array_inv!20774 (array!55492) Bool)

(assert (=> start!79062 (and (array_inv!20774 _values!1231) e!519754)))

(assert (=> start!79062 tp!60182))

(declare-fun array_inv!20775 (array!55490) Bool)

(assert (=> start!79062 (array_inv!20775 _keys!1487)))

(declare-fun b!925929 () Bool)

(declare-fun e!519749 () Bool)

(assert (=> b!925929 (= e!519749 e!519748)))

(declare-fun res!623977 () Bool)

(assert (=> b!925929 (=> (not res!623977) (not e!519748))))

(assert (=> b!925929 (= res!623977 (contains!4919 lt!416901 k0!1099))))

(assert (=> b!925929 (= lt!416901 (getCurrentListMap!3113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925930 () Bool)

(declare-fun Unit!31301 () Unit!31299)

(assert (=> b!925930 (= e!519753 Unit!31301)))

(declare-fun b!925931 () Bool)

(declare-fun e!519747 () Bool)

(assert (=> b!925931 (= e!519756 e!519747)))

(declare-fun res!623978 () Bool)

(assert (=> b!925931 (=> (not res!623978) (not e!519747))))

(assert (=> b!925931 (= res!623978 (contains!4919 lt!416900 k0!1099))))

(assert (=> b!925931 (= lt!416900 (getCurrentListMap!3113 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925932 () Bool)

(declare-fun e!519750 () Unit!31299)

(assert (=> b!925932 (= e!519750 e!519753)))

(assert (=> b!925932 (= lt!416902 (select (arr!26686 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96590 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925932 (= c!96590 (validKeyInArray!0 lt!416902))))

(declare-fun b!925933 () Bool)

(declare-fun e!519759 () Bool)

(assert (=> b!925933 (= e!519759 e!519749)))

(declare-fun res!623979 () Bool)

(assert (=> b!925933 (=> (not res!623979) (not e!519749))))

(assert (=> b!925933 (= res!623979 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27146 _keys!1487)))))

(declare-fun lt!416910 () Unit!31299)

(assert (=> b!925933 (= lt!416910 e!519750)))

(declare-fun c!96588 () Bool)

(assert (=> b!925933 (= c!96588 (validKeyInArray!0 k0!1099))))

(declare-fun b!925934 () Bool)

(declare-fun res!623981 () Bool)

(assert (=> b!925934 (=> (not res!623981) (not e!519756))))

(assert (=> b!925934 (= res!623981 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27146 _keys!1487))))))

(declare-fun b!925935 () Bool)

(declare-fun res!623980 () Bool)

(assert (=> b!925935 (=> (not res!623980) (not e!519756))))

(assert (=> b!925935 (= res!623980 (and (= (size!27147 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27146 _keys!1487) (size!27147 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925936 () Bool)

(declare-fun e!519752 () Bool)

(assert (=> b!925936 (= e!519754 (and e!519752 mapRes!31389))))

(declare-fun condMapEmpty!31389 () Bool)

(declare-fun mapDefault!31389 () ValueCell!9396)

(assert (=> b!925936 (= condMapEmpty!31389 (= (arr!26687 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9396)) mapDefault!31389)))))

(declare-fun b!925937 () Bool)

(declare-fun res!623983 () Bool)

(assert (=> b!925937 (=> (not res!623983) (not e!519756))))

(assert (=> b!925937 (= res!623983 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18883))))

(declare-fun mapNonEmpty!31389 () Bool)

(declare-fun tp!60183 () Bool)

(declare-fun e!519757 () Bool)

(assert (=> mapNonEmpty!31389 (= mapRes!31389 (and tp!60183 e!519757))))

(declare-fun mapKey!31389 () (_ BitVec 32))

(declare-fun mapRest!31389 () (Array (_ BitVec 32) ValueCell!9396))

(declare-fun mapValue!31389 () ValueCell!9396)

(assert (=> mapNonEmpty!31389 (= (arr!26687 _values!1231) (store mapRest!31389 mapKey!31389 mapValue!31389))))

(declare-fun b!925938 () Bool)

(assert (=> b!925938 (= e!519757 tp_is_empty!19755)))

(declare-fun b!925939 () Bool)

(assert (=> b!925939 (= e!519752 tp_is_empty!19755)))

(declare-fun b!925940 () Bool)

(assert (=> b!925940 (= e!519758 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925941 () Bool)

(assert (=> b!925941 (= e!519747 e!519759)))

(declare-fun res!623982 () Bool)

(assert (=> b!925941 (=> (not res!623982) (not e!519759))))

(assert (=> b!925941 (= res!623982 (and (= lt!416898 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925941 (= lt!416898 (apply!697 lt!416900 k0!1099))))

(declare-fun b!925942 () Bool)

(declare-fun Unit!31302 () Unit!31299)

(assert (=> b!925942 (= e!519750 Unit!31302)))

(assert (= (and start!79062 res!623984) b!925935))

(assert (= (and b!925935 res!623980) b!925923))

(assert (= (and b!925923 res!623987) b!925937))

(assert (= (and b!925937 res!623983) b!925934))

(assert (= (and b!925934 res!623981) b!925931))

(assert (= (and b!925931 res!623978) b!925941))

(assert (= (and b!925941 res!623982) b!925933))

(assert (= (and b!925933 c!96588) b!925932))

(assert (= (and b!925933 (not c!96588)) b!925942))

(assert (= (and b!925932 c!96590) b!925925))

(assert (= (and b!925932 (not c!96590)) b!925930))

(assert (= (and b!925925 c!96589) b!925927))

(assert (= (and b!925925 (not c!96589)) b!925940))

(assert (= (and b!925933 res!623979) b!925929))

(assert (= (and b!925929 res!623977) b!925924))

(assert (= (and b!925924 res!623985) b!925928))

(assert (= (and b!925928 res!623986) b!925926))

(assert (= (and b!925936 condMapEmpty!31389) mapIsEmpty!31389))

(assert (= (and b!925936 (not condMapEmpty!31389)) mapNonEmpty!31389))

(get-info :version)

(assert (= (and mapNonEmpty!31389 ((_ is ValueCellFull!9396) mapValue!31389)) b!925938))

(assert (= (and b!925936 ((_ is ValueCellFull!9396) mapDefault!31389)) b!925939))

(assert (= start!79062 b!925936))

(declare-fun b_lambda!13779 () Bool)

(assert (=> (not b_lambda!13779) (not b!925925)))

(declare-fun t!26869 () Bool)

(declare-fun tb!5835 () Bool)

(assert (=> (and start!79062 (= defaultEntry!1235 defaultEntry!1235) t!26869) tb!5835))

(declare-fun result!11485 () Bool)

(assert (=> tb!5835 (= result!11485 tp_is_empty!19755)))

(assert (=> b!925925 t!26869))

(declare-fun b_and!28251 () Bool)

(assert (= b_and!28249 (and (=> t!26869 result!11485) b_and!28251)))

(declare-fun m!860531 () Bool)

(assert (=> b!925937 m!860531))

(declare-fun m!860533 () Bool)

(assert (=> b!925929 m!860533))

(declare-fun m!860535 () Bool)

(assert (=> b!925929 m!860535))

(declare-fun m!860537 () Bool)

(assert (=> b!925928 m!860537))

(declare-fun m!860539 () Bool)

(assert (=> b!925928 m!860539))

(declare-fun m!860541 () Bool)

(assert (=> b!925928 m!860541))

(declare-fun m!860543 () Bool)

(assert (=> b!925941 m!860543))

(declare-fun m!860545 () Bool)

(assert (=> b!925933 m!860545))

(declare-fun m!860547 () Bool)

(assert (=> mapNonEmpty!31389 m!860547))

(declare-fun m!860549 () Bool)

(assert (=> b!925924 m!860549))

(declare-fun m!860551 () Bool)

(assert (=> b!925925 m!860551))

(declare-fun m!860553 () Bool)

(assert (=> b!925925 m!860553))

(declare-fun m!860555 () Bool)

(assert (=> b!925925 m!860555))

(declare-fun m!860557 () Bool)

(assert (=> b!925925 m!860557))

(declare-fun m!860559 () Bool)

(assert (=> b!925925 m!860559))

(declare-fun m!860561 () Bool)

(assert (=> b!925925 m!860561))

(declare-fun m!860563 () Bool)

(assert (=> b!925925 m!860563))

(declare-fun m!860565 () Bool)

(assert (=> b!925925 m!860565))

(declare-fun m!860567 () Bool)

(assert (=> b!925925 m!860567))

(declare-fun m!860569 () Bool)

(assert (=> b!925925 m!860569))

(assert (=> b!925925 m!860557))

(assert (=> b!925925 m!860561))

(declare-fun m!860571 () Bool)

(assert (=> b!925925 m!860571))

(assert (=> b!925925 m!860535))

(declare-fun m!860573 () Bool)

(assert (=> b!925925 m!860573))

(declare-fun m!860575 () Bool)

(assert (=> b!925925 m!860575))

(declare-fun m!860577 () Bool)

(assert (=> b!925925 m!860577))

(assert (=> b!925925 m!860567))

(declare-fun m!860579 () Bool)

(assert (=> b!925925 m!860579))

(declare-fun m!860581 () Bool)

(assert (=> b!925932 m!860581))

(declare-fun m!860583 () Bool)

(assert (=> b!925932 m!860583))

(declare-fun m!860585 () Bool)

(assert (=> b!925926 m!860585))

(declare-fun m!860587 () Bool)

(assert (=> b!925923 m!860587))

(declare-fun m!860589 () Bool)

(assert (=> b!925931 m!860589))

(declare-fun m!860591 () Bool)

(assert (=> b!925931 m!860591))

(declare-fun m!860593 () Bool)

(assert (=> start!79062 m!860593))

(declare-fun m!860595 () Bool)

(assert (=> start!79062 m!860595))

(declare-fun m!860597 () Bool)

(assert (=> start!79062 m!860597))

(declare-fun m!860599 () Bool)

(assert (=> b!925927 m!860599))

(check-sat (not b!925927) (not b!925926) (not b!925924) b_and!28251 (not b!925932) (not mapNonEmpty!31389) (not b_next!17247) (not b_lambda!13779) tp_is_empty!19755 (not b!925933) (not b!925928) (not b!925929) (not b!925937) (not b!925931) (not start!79062) (not b!925941) (not b!925925) (not b!925923))
(check-sat b_and!28251 (not b_next!17247))
