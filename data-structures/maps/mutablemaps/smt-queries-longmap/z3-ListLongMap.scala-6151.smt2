; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79044 () Bool)

(assert start!79044)

(declare-fun b_free!17229 () Bool)

(declare-fun b_next!17229 () Bool)

(assert (=> start!79044 (= b_free!17229 (not b_next!17229))))

(declare-fun tp!60129 () Bool)

(declare-fun b_and!28213 () Bool)

(assert (=> start!79044 (= tp!60129 b_and!28213)))

(declare-fun b!925365 () Bool)

(declare-fun res!623685 () Bool)

(declare-fun e!519405 () Bool)

(assert (=> b!925365 (=> (not res!623685) (not e!519405))))

(declare-datatypes ((array!55456 0))(
  ( (array!55457 (arr!26669 (Array (_ BitVec 32) (_ BitVec 64))) (size!27129 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55456)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31281 0))(
  ( (V!31282 (val!9919 Int)) )
))
(declare-datatypes ((ValueCell!9387 0))(
  ( (ValueCellFull!9387 (v!12437 V!31281)) (EmptyCell!9387) )
))
(declare-datatypes ((array!55458 0))(
  ( (array!55459 (arr!26670 (Array (_ BitVec 32) ValueCell!9387)) (size!27130 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55458)

(assert (=> b!925365 (= res!623685 (and (= (size!27130 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27129 _keys!1487) (size!27130 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925366 () Bool)

(declare-fun e!519398 () Bool)

(assert (=> b!925366 (= e!519405 e!519398)))

(declare-fun res!623681 () Bool)

(assert (=> b!925366 (=> (not res!623681) (not e!519398))))

(declare-datatypes ((tuple2!13040 0))(
  ( (tuple2!13041 (_1!6530 (_ BitVec 64)) (_2!6530 V!31281)) )
))
(declare-datatypes ((List!18875 0))(
  ( (Nil!18872) (Cons!18871 (h!20017 tuple2!13040) (t!26842 List!18875)) )
))
(declare-datatypes ((ListLongMap!11751 0))(
  ( (ListLongMap!11752 (toList!5891 List!18875)) )
))
(declare-fun lt!416472 () ListLongMap!11751)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4914 (ListLongMap!11751 (_ BitVec 64)) Bool)

(assert (=> b!925366 (= res!623681 (contains!4914 lt!416472 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31281)

(declare-fun minValue!1173 () V!31281)

(declare-fun getCurrentListMap!3108 (array!55456 array!55458 (_ BitVec 32) (_ BitVec 32) V!31281 V!31281 (_ BitVec 32) Int) ListLongMap!11751)

(assert (=> b!925366 (= lt!416472 (getCurrentListMap!3108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925367 () Bool)

(declare-fun e!519404 () Bool)

(assert (=> b!925367 (= e!519398 e!519404)))

(declare-fun res!623684 () Bool)

(assert (=> b!925367 (=> (not res!623684) (not e!519404))))

(declare-fun lt!416467 () V!31281)

(declare-fun v!791 () V!31281)

(assert (=> b!925367 (= res!623684 (and (= lt!416467 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!692 (ListLongMap!11751 (_ BitVec 64)) V!31281)

(assert (=> b!925367 (= lt!416467 (apply!692 lt!416472 k0!1099))))

(declare-fun b!925368 () Bool)

(declare-fun e!519407 () Bool)

(declare-fun tp_is_empty!19737 () Bool)

(assert (=> b!925368 (= e!519407 tp_is_empty!19737)))

(declare-fun b!925369 () Bool)

(declare-fun e!519406 () Bool)

(declare-fun e!519396 () Bool)

(declare-fun mapRes!31362 () Bool)

(assert (=> b!925369 (= e!519406 (and e!519396 mapRes!31362))))

(declare-fun condMapEmpty!31362 () Bool)

(declare-fun mapDefault!31362 () ValueCell!9387)

(assert (=> b!925369 (= condMapEmpty!31362 (= (arr!26670 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9387)) mapDefault!31362)))))

(declare-fun b!925370 () Bool)

(declare-fun res!623686 () Bool)

(assert (=> b!925370 (=> (not res!623686) (not e!519405))))

(assert (=> b!925370 (= res!623686 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27129 _keys!1487))))))

(declare-fun mapIsEmpty!31362 () Bool)

(assert (=> mapIsEmpty!31362 mapRes!31362))

(declare-fun b!925372 () Bool)

(declare-fun e!519402 () Bool)

(declare-fun e!519400 () Bool)

(assert (=> b!925372 (= e!519402 e!519400)))

(declare-fun res!623689 () Bool)

(assert (=> b!925372 (=> (not res!623689) (not e!519400))))

(declare-fun lt!416477 () ListLongMap!11751)

(assert (=> b!925372 (= res!623689 (contains!4914 lt!416477 k0!1099))))

(assert (=> b!925372 (= lt!416477 (getCurrentListMap!3108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31362 () Bool)

(declare-fun tp!60128 () Bool)

(assert (=> mapNonEmpty!31362 (= mapRes!31362 (and tp!60128 e!519407))))

(declare-fun mapValue!31362 () ValueCell!9387)

(declare-fun mapKey!31362 () (_ BitVec 32))

(declare-fun mapRest!31362 () (Array (_ BitVec 32) ValueCell!9387))

(assert (=> mapNonEmpty!31362 (= (arr!26670 _values!1231) (store mapRest!31362 mapKey!31362 mapValue!31362))))

(declare-fun b!925373 () Bool)

(assert (=> b!925373 (= e!519400 (not true))))

(declare-fun e!519408 () Bool)

(assert (=> b!925373 e!519408))

(declare-fun res!623680 () Bool)

(assert (=> b!925373 (=> (not res!623680) (not e!519408))))

(declare-fun lt!416481 () ListLongMap!11751)

(assert (=> b!925373 (= res!623680 (contains!4914 lt!416481 k0!1099))))

(assert (=> b!925373 (= lt!416481 (getCurrentListMap!3108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-datatypes ((Unit!31272 0))(
  ( (Unit!31273) )
))
(declare-fun lt!416466 () Unit!31272)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!74 (array!55456 array!55458 (_ BitVec 32) (_ BitVec 32) V!31281 V!31281 (_ BitVec 64) V!31281 (_ BitVec 32) Int) Unit!31272)

(assert (=> b!925373 (= lt!416466 (lemmaListMapApplyFromThenApplyFromZero!74 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925374 () Bool)

(assert (=> b!925374 (= e!519404 e!519402)))

(declare-fun res!623683 () Bool)

(assert (=> b!925374 (=> (not res!623683) (not e!519402))))

(assert (=> b!925374 (= res!623683 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27129 _keys!1487)))))

(declare-fun lt!416478 () Unit!31272)

(declare-fun e!519397 () Unit!31272)

(assert (=> b!925374 (= lt!416478 e!519397)))

(declare-fun c!96508 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925374 (= c!96508 (validKeyInArray!0 k0!1099))))

(declare-fun b!925371 () Bool)

(declare-fun e!519401 () Unit!31272)

(declare-fun Unit!31274 () Unit!31272)

(assert (=> b!925371 (= e!519401 Unit!31274)))

(declare-fun res!623690 () Bool)

(assert (=> start!79044 (=> (not res!623690) (not e!519405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79044 (= res!623690 (validMask!0 mask!1881))))

(assert (=> start!79044 e!519405))

(assert (=> start!79044 true))

(assert (=> start!79044 tp_is_empty!19737))

(declare-fun array_inv!20764 (array!55458) Bool)

(assert (=> start!79044 (and (array_inv!20764 _values!1231) e!519406)))

(assert (=> start!79044 tp!60129))

(declare-fun array_inv!20765 (array!55456) Bool)

(assert (=> start!79044 (array_inv!20765 _keys!1487)))

(declare-fun b!925375 () Bool)

(assert (=> b!925375 (= e!519408 (= (apply!692 lt!416481 k0!1099) v!791))))

(declare-fun b!925376 () Bool)

(declare-fun Unit!31275 () Unit!31272)

(assert (=> b!925376 (= e!519397 Unit!31275)))

(declare-fun b!925377 () Bool)

(declare-fun e!519399 () Bool)

(assert (=> b!925377 (= e!519399 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925378 () Bool)

(assert (=> b!925378 (= e!519396 tp_is_empty!19737)))

(declare-fun b!925379 () Bool)

(declare-fun res!623687 () Bool)

(assert (=> b!925379 (=> (not res!623687) (not e!519405))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55456 (_ BitVec 32)) Bool)

(assert (=> b!925379 (= res!623687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!925380 () Bool)

(declare-fun arrayContainsKey!0 (array!55456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925380 (= e!519399 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!925381 () Bool)

(assert (=> b!925381 (= e!519397 e!519401)))

(declare-fun lt!416475 () (_ BitVec 64))

(assert (=> b!925381 (= lt!416475 (select (arr!26669 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96509 () Bool)

(assert (=> b!925381 (= c!96509 (validKeyInArray!0 lt!416475))))

(declare-fun b!925382 () Bool)

(declare-fun res!623688 () Bool)

(assert (=> b!925382 (=> (not res!623688) (not e!519400))))

(assert (=> b!925382 (= res!623688 (= (apply!692 lt!416477 k0!1099) v!791))))

(declare-fun b!925383 () Bool)

(declare-fun res!623682 () Bool)

(assert (=> b!925383 (=> (not res!623682) (not e!519405))))

(declare-datatypes ((List!18876 0))(
  ( (Nil!18873) (Cons!18872 (h!20018 (_ BitVec 64)) (t!26843 List!18876)) )
))
(declare-fun arrayNoDuplicates!0 (array!55456 (_ BitVec 32) List!18876) Bool)

(assert (=> b!925383 (= res!623682 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18873))))

(declare-fun b!925384 () Bool)

(declare-fun lt!416474 () ListLongMap!11751)

(assert (=> b!925384 (= (apply!692 lt!416474 k0!1099) lt!416467)))

(declare-fun lt!416468 () V!31281)

(declare-fun lt!416470 () Unit!31272)

(declare-fun addApplyDifferent!379 (ListLongMap!11751 (_ BitVec 64) V!31281 (_ BitVec 64)) Unit!31272)

(assert (=> b!925384 (= lt!416470 (addApplyDifferent!379 lt!416472 lt!416475 lt!416468 k0!1099))))

(assert (=> b!925384 (not (= lt!416475 k0!1099))))

(declare-fun lt!416469 () Unit!31272)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55456 (_ BitVec 64) (_ BitVec 32) List!18876) Unit!31272)

(assert (=> b!925384 (= lt!416469 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18873))))

(assert (=> b!925384 e!519399))

(declare-fun c!96507 () Bool)

(assert (=> b!925384 (= c!96507 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416471 () Unit!31272)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!239 (array!55456 array!55458 (_ BitVec 32) (_ BitVec 32) V!31281 V!31281 (_ BitVec 64) (_ BitVec 32) Int) Unit!31272)

(assert (=> b!925384 (= lt!416471 (lemmaListMapContainsThenArrayContainsFrom!239 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!925384 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18873)))

(declare-fun lt!416473 () Unit!31272)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55456 (_ BitVec 32) (_ BitVec 32)) Unit!31272)

(assert (=> b!925384 (= lt!416473 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!925384 (contains!4914 lt!416474 k0!1099)))

(declare-fun lt!416476 () tuple2!13040)

(declare-fun +!2693 (ListLongMap!11751 tuple2!13040) ListLongMap!11751)

(assert (=> b!925384 (= lt!416474 (+!2693 lt!416472 lt!416476))))

(declare-fun lt!416479 () Unit!31272)

(declare-fun addStillContains!455 (ListLongMap!11751 (_ BitVec 64) V!31281 (_ BitVec 64)) Unit!31272)

(assert (=> b!925384 (= lt!416479 (addStillContains!455 lt!416472 lt!416475 lt!416468 k0!1099))))

(assert (=> b!925384 (= (getCurrentListMap!3108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2693 (getCurrentListMap!3108 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416476))))

(assert (=> b!925384 (= lt!416476 (tuple2!13041 lt!416475 lt!416468))))

(declare-fun get!14048 (ValueCell!9387 V!31281) V!31281)

(declare-fun dynLambda!1532 (Int (_ BitVec 64)) V!31281)

(assert (=> b!925384 (= lt!416468 (get!14048 (select (arr!26670 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1532 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416480 () Unit!31272)

(declare-fun lemmaListMapRecursiveValidKeyArray!128 (array!55456 array!55458 (_ BitVec 32) (_ BitVec 32) V!31281 V!31281 (_ BitVec 32) Int) Unit!31272)

(assert (=> b!925384 (= lt!416480 (lemmaListMapRecursiveValidKeyArray!128 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!925384 (= e!519401 lt!416470)))

(assert (= (and start!79044 res!623690) b!925365))

(assert (= (and b!925365 res!623685) b!925379))

(assert (= (and b!925379 res!623687) b!925383))

(assert (= (and b!925383 res!623682) b!925370))

(assert (= (and b!925370 res!623686) b!925366))

(assert (= (and b!925366 res!623681) b!925367))

(assert (= (and b!925367 res!623684) b!925374))

(assert (= (and b!925374 c!96508) b!925381))

(assert (= (and b!925374 (not c!96508)) b!925376))

(assert (= (and b!925381 c!96509) b!925384))

(assert (= (and b!925381 (not c!96509)) b!925371))

(assert (= (and b!925384 c!96507) b!925380))

(assert (= (and b!925384 (not c!96507)) b!925377))

(assert (= (and b!925374 res!623683) b!925372))

(assert (= (and b!925372 res!623689) b!925382))

(assert (= (and b!925382 res!623688) b!925373))

(assert (= (and b!925373 res!623680) b!925375))

(assert (= (and b!925369 condMapEmpty!31362) mapIsEmpty!31362))

(assert (= (and b!925369 (not condMapEmpty!31362)) mapNonEmpty!31362))

(get-info :version)

(assert (= (and mapNonEmpty!31362 ((_ is ValueCellFull!9387) mapValue!31362)) b!925368))

(assert (= (and b!925369 ((_ is ValueCellFull!9387) mapDefault!31362)) b!925378))

(assert (= start!79044 b!925369))

(declare-fun b_lambda!13761 () Bool)

(assert (=> (not b_lambda!13761) (not b!925384)))

(declare-fun t!26841 () Bool)

(declare-fun tb!5817 () Bool)

(assert (=> (and start!79044 (= defaultEntry!1235 defaultEntry!1235) t!26841) tb!5817))

(declare-fun result!11449 () Bool)

(assert (=> tb!5817 (= result!11449 tp_is_empty!19737)))

(assert (=> b!925384 t!26841))

(declare-fun b_and!28215 () Bool)

(assert (= b_and!28213 (and (=> t!26841 result!11449) b_and!28215)))

(declare-fun m!859901 () Bool)

(assert (=> b!925366 m!859901))

(declare-fun m!859903 () Bool)

(assert (=> b!925366 m!859903))

(declare-fun m!859905 () Bool)

(assert (=> b!925373 m!859905))

(declare-fun m!859907 () Bool)

(assert (=> b!925373 m!859907))

(declare-fun m!859909 () Bool)

(assert (=> b!925373 m!859909))

(declare-fun m!859911 () Bool)

(assert (=> b!925367 m!859911))

(declare-fun m!859913 () Bool)

(assert (=> b!925380 m!859913))

(declare-fun m!859915 () Bool)

(assert (=> b!925375 m!859915))

(declare-fun m!859917 () Bool)

(assert (=> mapNonEmpty!31362 m!859917))

(declare-fun m!859919 () Bool)

(assert (=> b!925383 m!859919))

(declare-fun m!859921 () Bool)

(assert (=> b!925379 m!859921))

(declare-fun m!859923 () Bool)

(assert (=> b!925382 m!859923))

(declare-fun m!859925 () Bool)

(assert (=> b!925374 m!859925))

(declare-fun m!859927 () Bool)

(assert (=> b!925381 m!859927))

(declare-fun m!859929 () Bool)

(assert (=> b!925381 m!859929))

(declare-fun m!859931 () Bool)

(assert (=> b!925372 m!859931))

(declare-fun m!859933 () Bool)

(assert (=> b!925372 m!859933))

(declare-fun m!859935 () Bool)

(assert (=> start!79044 m!859935))

(declare-fun m!859937 () Bool)

(assert (=> start!79044 m!859937))

(declare-fun m!859939 () Bool)

(assert (=> start!79044 m!859939))

(declare-fun m!859941 () Bool)

(assert (=> b!925384 m!859941))

(declare-fun m!859943 () Bool)

(assert (=> b!925384 m!859943))

(declare-fun m!859945 () Bool)

(assert (=> b!925384 m!859945))

(declare-fun m!859947 () Bool)

(assert (=> b!925384 m!859947))

(declare-fun m!859949 () Bool)

(assert (=> b!925384 m!859949))

(assert (=> b!925384 m!859933))

(declare-fun m!859951 () Bool)

(assert (=> b!925384 m!859951))

(declare-fun m!859953 () Bool)

(assert (=> b!925384 m!859953))

(declare-fun m!859955 () Bool)

(assert (=> b!925384 m!859955))

(declare-fun m!859957 () Bool)

(assert (=> b!925384 m!859957))

(declare-fun m!859959 () Bool)

(assert (=> b!925384 m!859959))

(declare-fun m!859961 () Bool)

(assert (=> b!925384 m!859961))

(assert (=> b!925384 m!859945))

(assert (=> b!925384 m!859949))

(declare-fun m!859963 () Bool)

(assert (=> b!925384 m!859963))

(assert (=> b!925384 m!859957))

(declare-fun m!859965 () Bool)

(assert (=> b!925384 m!859965))

(declare-fun m!859967 () Bool)

(assert (=> b!925384 m!859967))

(declare-fun m!859969 () Bool)

(assert (=> b!925384 m!859969))

(check-sat (not b!925372) (not mapNonEmpty!31362) (not b!925383) (not b!925366) (not b!925379) (not b!925367) (not b!925384) (not b_lambda!13761) (not b!925375) (not b!925374) (not b!925381) tp_is_empty!19737 (not b!925382) (not start!79044) b_and!28215 (not b_next!17229) (not b!925373) (not b!925380))
(check-sat b_and!28215 (not b_next!17229))
