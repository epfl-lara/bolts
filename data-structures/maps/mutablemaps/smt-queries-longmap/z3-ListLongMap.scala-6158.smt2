; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79086 () Bool)

(assert start!79086)

(declare-fun b_free!17271 () Bool)

(declare-fun b_next!17271 () Bool)

(assert (=> start!79086 (= b_free!17271 (not b_next!17271))))

(declare-fun tp!60254 () Bool)

(declare-fun b_and!28297 () Bool)

(assert (=> start!79086 (= tp!60254 b_and!28297)))

(declare-fun b!926667 () Bool)

(declare-fun res!624373 () Bool)

(declare-fun e!520220 () Bool)

(assert (=> b!926667 (=> (not res!624373) (not e!520220))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31337 0))(
  ( (V!31338 (val!9940 Int)) )
))
(declare-fun v!791 () V!31337)

(declare-datatypes ((tuple2!13076 0))(
  ( (tuple2!13077 (_1!6548 (_ BitVec 64)) (_2!6548 V!31337)) )
))
(declare-datatypes ((List!18905 0))(
  ( (Nil!18902) (Cons!18901 (h!20047 tuple2!13076) (t!26914 List!18905)) )
))
(declare-datatypes ((ListLongMap!11787 0))(
  ( (ListLongMap!11788 (toList!5909 List!18905)) )
))
(declare-fun lt!417479 () ListLongMap!11787)

(declare-fun apply!707 (ListLongMap!11787 (_ BitVec 64)) V!31337)

(assert (=> b!926667 (= res!624373 (= (apply!707 lt!417479 k0!1099) v!791))))

(declare-fun b!926668 () Bool)

(declare-fun res!624376 () Bool)

(declare-fun e!520223 () Bool)

(assert (=> b!926668 (=> (not res!624376) (not e!520223))))

(declare-datatypes ((array!55538 0))(
  ( (array!55539 (arr!26710 (Array (_ BitVec 32) (_ BitVec 64))) (size!27170 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55538)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55538 (_ BitVec 32)) Bool)

(assert (=> b!926668 (= res!624376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926669 () Bool)

(declare-datatypes ((Unit!31333 0))(
  ( (Unit!31334) )
))
(declare-fun e!520219 () Unit!31333)

(declare-fun Unit!31335 () Unit!31333)

(assert (=> b!926669 (= e!520219 Unit!31335)))

(declare-fun b!926670 () Bool)

(declare-fun res!624375 () Bool)

(assert (=> b!926670 (=> (not res!624375) (not e!520223))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926670 (= res!624375 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27170 _keys!1487))))))

(declare-fun b!926671 () Bool)

(declare-fun e!520221 () Bool)

(declare-fun e!520227 () Bool)

(assert (=> b!926671 (= e!520221 e!520227)))

(declare-fun res!624374 () Bool)

(assert (=> b!926671 (=> (not res!624374) (not e!520227))))

(declare-fun lt!417478 () V!31337)

(assert (=> b!926671 (= res!624374 (and (= lt!417478 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417480 () ListLongMap!11787)

(assert (=> b!926671 (= lt!417478 (apply!707 lt!417480 k0!1099))))

(declare-fun b!926672 () Bool)

(declare-fun e!520215 () Bool)

(declare-fun e!520226 () Bool)

(declare-fun mapRes!31425 () Bool)

(assert (=> b!926672 (= e!520215 (and e!520226 mapRes!31425))))

(declare-fun condMapEmpty!31425 () Bool)

(declare-datatypes ((ValueCell!9408 0))(
  ( (ValueCellFull!9408 (v!12458 V!31337)) (EmptyCell!9408) )
))
(declare-datatypes ((array!55540 0))(
  ( (array!55541 (arr!26711 (Array (_ BitVec 32) ValueCell!9408)) (size!27171 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55540)

(declare-fun mapDefault!31425 () ValueCell!9408)

(assert (=> b!926672 (= condMapEmpty!31425 (= (arr!26711 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9408)) mapDefault!31425)))))

(declare-fun b!926673 () Bool)

(assert (=> b!926673 (= e!520223 e!520221)))

(declare-fun res!624382 () Bool)

(assert (=> b!926673 (=> (not res!624382) (not e!520221))))

(declare-fun contains!4929 (ListLongMap!11787 (_ BitVec 64)) Bool)

(assert (=> b!926673 (= res!624382 (contains!4929 lt!417480 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31337)

(declare-fun minValue!1173 () V!31337)

(declare-fun getCurrentListMap!3123 (array!55538 array!55540 (_ BitVec 32) (_ BitVec 32) V!31337 V!31337 (_ BitVec 32) Int) ListLongMap!11787)

(assert (=> b!926673 (= lt!417480 (getCurrentListMap!3123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31425 () Bool)

(assert (=> mapIsEmpty!31425 mapRes!31425))

(declare-fun b!926674 () Bool)

(declare-fun res!624377 () Bool)

(assert (=> b!926674 (=> (not res!624377) (not e!520223))))

(declare-datatypes ((List!18906 0))(
  ( (Nil!18903) (Cons!18902 (h!20048 (_ BitVec 64)) (t!26915 List!18906)) )
))
(declare-fun arrayNoDuplicates!0 (array!55538 (_ BitVec 32) List!18906) Bool)

(assert (=> b!926674 (= res!624377 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18903))))

(declare-fun b!926675 () Bool)

(declare-fun e!520218 () Bool)

(assert (=> b!926675 (= e!520218 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926676 () Bool)

(declare-fun e!520225 () Bool)

(declare-fun tp_is_empty!19779 () Bool)

(assert (=> b!926676 (= e!520225 tp_is_empty!19779)))

(declare-fun b!926677 () Bool)

(assert (=> b!926677 (= e!520220 (not true))))

(declare-fun e!520216 () Bool)

(assert (=> b!926677 e!520216))

(declare-fun res!624378 () Bool)

(assert (=> b!926677 (=> (not res!624378) (not e!520216))))

(declare-fun lt!417475 () ListLongMap!11787)

(assert (=> b!926677 (= res!624378 (contains!4929 lt!417475 k0!1099))))

(assert (=> b!926677 (= lt!417475 (getCurrentListMap!3123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417485 () Unit!31333)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!87 (array!55538 array!55540 (_ BitVec 32) (_ BitVec 32) V!31337 V!31337 (_ BitVec 64) V!31337 (_ BitVec 32) Int) Unit!31333)

(assert (=> b!926677 (= lt!417485 (lemmaListMapApplyFromThenApplyFromZero!87 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926678 () Bool)

(declare-fun e!520222 () Bool)

(assert (=> b!926678 (= e!520222 e!520220)))

(declare-fun res!624383 () Bool)

(assert (=> b!926678 (=> (not res!624383) (not e!520220))))

(assert (=> b!926678 (= res!624383 (contains!4929 lt!417479 k0!1099))))

(assert (=> b!926678 (= lt!417479 (getCurrentListMap!3123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!624381 () Bool)

(assert (=> start!79086 (=> (not res!624381) (not e!520223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79086 (= res!624381 (validMask!0 mask!1881))))

(assert (=> start!79086 e!520223))

(assert (=> start!79086 true))

(assert (=> start!79086 tp_is_empty!19779))

(declare-fun array_inv!20790 (array!55540) Bool)

(assert (=> start!79086 (and (array_inv!20790 _values!1231) e!520215)))

(assert (=> start!79086 tp!60254))

(declare-fun array_inv!20791 (array!55538) Bool)

(assert (=> start!79086 (array_inv!20791 _keys!1487)))

(declare-fun b!926679 () Bool)

(declare-fun e!520224 () Unit!31333)

(assert (=> b!926679 (= e!520224 e!520219)))

(declare-fun lt!417482 () (_ BitVec 64))

(assert (=> b!926679 (= lt!417482 (select (arr!26710 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96697 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926679 (= c!96697 (validKeyInArray!0 lt!417482))))

(declare-fun b!926680 () Bool)

(assert (=> b!926680 (= e!520226 tp_is_empty!19779)))

(declare-fun b!926681 () Bool)

(declare-fun arrayContainsKey!0 (array!55538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926681 (= e!520218 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapNonEmpty!31425 () Bool)

(declare-fun tp!60255 () Bool)

(assert (=> mapNonEmpty!31425 (= mapRes!31425 (and tp!60255 e!520225))))

(declare-fun mapRest!31425 () (Array (_ BitVec 32) ValueCell!9408))

(declare-fun mapValue!31425 () ValueCell!9408)

(declare-fun mapKey!31425 () (_ BitVec 32))

(assert (=> mapNonEmpty!31425 (= (arr!26711 _values!1231) (store mapRest!31425 mapKey!31425 mapValue!31425))))

(declare-fun b!926682 () Bool)

(declare-fun lt!417484 () ListLongMap!11787)

(assert (=> b!926682 (= (apply!707 lt!417484 k0!1099) lt!417478)))

(declare-fun lt!417474 () V!31337)

(declare-fun lt!417489 () Unit!31333)

(declare-fun addApplyDifferent!389 (ListLongMap!11787 (_ BitVec 64) V!31337 (_ BitVec 64)) Unit!31333)

(assert (=> b!926682 (= lt!417489 (addApplyDifferent!389 lt!417480 lt!417482 lt!417474 k0!1099))))

(assert (=> b!926682 (not (= lt!417482 k0!1099))))

(declare-fun lt!417483 () Unit!31333)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55538 (_ BitVec 64) (_ BitVec 32) List!18906) Unit!31333)

(assert (=> b!926682 (= lt!417483 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18903))))

(assert (=> b!926682 e!520218))

(declare-fun c!96696 () Bool)

(assert (=> b!926682 (= c!96696 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417486 () Unit!31333)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!249 (array!55538 array!55540 (_ BitVec 32) (_ BitVec 32) V!31337 V!31337 (_ BitVec 64) (_ BitVec 32) Int) Unit!31333)

(assert (=> b!926682 (= lt!417486 (lemmaListMapContainsThenArrayContainsFrom!249 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!926682 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18903)))

(declare-fun lt!417481 () Unit!31333)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55538 (_ BitVec 32) (_ BitVec 32)) Unit!31333)

(assert (=> b!926682 (= lt!417481 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926682 (contains!4929 lt!417484 k0!1099)))

(declare-fun lt!417476 () tuple2!13076)

(declare-fun +!2703 (ListLongMap!11787 tuple2!13076) ListLongMap!11787)

(assert (=> b!926682 (= lt!417484 (+!2703 lt!417480 lt!417476))))

(declare-fun lt!417477 () Unit!31333)

(declare-fun addStillContains!465 (ListLongMap!11787 (_ BitVec 64) V!31337 (_ BitVec 64)) Unit!31333)

(assert (=> b!926682 (= lt!417477 (addStillContains!465 lt!417480 lt!417482 lt!417474 k0!1099))))

(assert (=> b!926682 (= (getCurrentListMap!3123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2703 (getCurrentListMap!3123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417476))))

(assert (=> b!926682 (= lt!417476 (tuple2!13077 lt!417482 lt!417474))))

(declare-fun get!14072 (ValueCell!9408 V!31337) V!31337)

(declare-fun dynLambda!1542 (Int (_ BitVec 64)) V!31337)

(assert (=> b!926682 (= lt!417474 (get!14072 (select (arr!26711 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1542 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417487 () Unit!31333)

(declare-fun lemmaListMapRecursiveValidKeyArray!138 (array!55538 array!55540 (_ BitVec 32) (_ BitVec 32) V!31337 V!31337 (_ BitVec 32) Int) Unit!31333)

(assert (=> b!926682 (= lt!417487 (lemmaListMapRecursiveValidKeyArray!138 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926682 (= e!520219 lt!417489)))

(declare-fun b!926683 () Bool)

(declare-fun Unit!31336 () Unit!31333)

(assert (=> b!926683 (= e!520224 Unit!31336)))

(declare-fun b!926684 () Bool)

(assert (=> b!926684 (= e!520216 (= (apply!707 lt!417475 k0!1099) v!791))))

(declare-fun b!926685 () Bool)

(declare-fun res!624379 () Bool)

(assert (=> b!926685 (=> (not res!624379) (not e!520223))))

(assert (=> b!926685 (= res!624379 (and (= (size!27171 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27170 _keys!1487) (size!27171 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926686 () Bool)

(assert (=> b!926686 (= e!520227 e!520222)))

(declare-fun res!624380 () Bool)

(assert (=> b!926686 (=> (not res!624380) (not e!520222))))

(assert (=> b!926686 (= res!624380 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27170 _keys!1487)))))

(declare-fun lt!417488 () Unit!31333)

(assert (=> b!926686 (= lt!417488 e!520224)))

(declare-fun c!96698 () Bool)

(assert (=> b!926686 (= c!96698 (validKeyInArray!0 k0!1099))))

(assert (= (and start!79086 res!624381) b!926685))

(assert (= (and b!926685 res!624379) b!926668))

(assert (= (and b!926668 res!624376) b!926674))

(assert (= (and b!926674 res!624377) b!926670))

(assert (= (and b!926670 res!624375) b!926673))

(assert (= (and b!926673 res!624382) b!926671))

(assert (= (and b!926671 res!624374) b!926686))

(assert (= (and b!926686 c!96698) b!926679))

(assert (= (and b!926686 (not c!96698)) b!926683))

(assert (= (and b!926679 c!96697) b!926682))

(assert (= (and b!926679 (not c!96697)) b!926669))

(assert (= (and b!926682 c!96696) b!926681))

(assert (= (and b!926682 (not c!96696)) b!926675))

(assert (= (and b!926686 res!624380) b!926678))

(assert (= (and b!926678 res!624383) b!926667))

(assert (= (and b!926667 res!624373) b!926677))

(assert (= (and b!926677 res!624378) b!926684))

(assert (= (and b!926672 condMapEmpty!31425) mapIsEmpty!31425))

(assert (= (and b!926672 (not condMapEmpty!31425)) mapNonEmpty!31425))

(get-info :version)

(assert (= (and mapNonEmpty!31425 ((_ is ValueCellFull!9408) mapValue!31425)) b!926676))

(assert (= (and b!926672 ((_ is ValueCellFull!9408) mapDefault!31425)) b!926680))

(assert (= start!79086 b!926672))

(declare-fun b_lambda!13803 () Bool)

(assert (=> (not b_lambda!13803) (not b!926682)))

(declare-fun t!26913 () Bool)

(declare-fun tb!5859 () Bool)

(assert (=> (and start!79086 (= defaultEntry!1235 defaultEntry!1235) t!26913) tb!5859))

(declare-fun result!11533 () Bool)

(assert (=> tb!5859 (= result!11533 tp_is_empty!19779)))

(assert (=> b!926682 t!26913))

(declare-fun b_and!28299 () Bool)

(assert (= b_and!28297 (and (=> t!26913 result!11533) b_and!28299)))

(declare-fun m!861371 () Bool)

(assert (=> b!926674 m!861371))

(declare-fun m!861373 () Bool)

(assert (=> b!926679 m!861373))

(declare-fun m!861375 () Bool)

(assert (=> b!926679 m!861375))

(declare-fun m!861377 () Bool)

(assert (=> b!926684 m!861377))

(declare-fun m!861379 () Bool)

(assert (=> b!926678 m!861379))

(declare-fun m!861381 () Bool)

(assert (=> b!926678 m!861381))

(declare-fun m!861383 () Bool)

(assert (=> b!926671 m!861383))

(declare-fun m!861385 () Bool)

(assert (=> b!926682 m!861385))

(declare-fun m!861387 () Bool)

(assert (=> b!926682 m!861387))

(declare-fun m!861389 () Bool)

(assert (=> b!926682 m!861389))

(declare-fun m!861391 () Bool)

(assert (=> b!926682 m!861391))

(declare-fun m!861393 () Bool)

(assert (=> b!926682 m!861393))

(declare-fun m!861395 () Bool)

(assert (=> b!926682 m!861395))

(assert (=> b!926682 m!861393))

(assert (=> b!926682 m!861395))

(declare-fun m!861397 () Bool)

(assert (=> b!926682 m!861397))

(assert (=> b!926682 m!861381))

(declare-fun m!861399 () Bool)

(assert (=> b!926682 m!861399))

(declare-fun m!861401 () Bool)

(assert (=> b!926682 m!861401))

(declare-fun m!861403 () Bool)

(assert (=> b!926682 m!861403))

(declare-fun m!861405 () Bool)

(assert (=> b!926682 m!861405))

(declare-fun m!861407 () Bool)

(assert (=> b!926682 m!861407))

(declare-fun m!861409 () Bool)

(assert (=> b!926682 m!861409))

(declare-fun m!861411 () Bool)

(assert (=> b!926682 m!861411))

(assert (=> b!926682 m!861385))

(declare-fun m!861413 () Bool)

(assert (=> b!926682 m!861413))

(declare-fun m!861415 () Bool)

(assert (=> b!926673 m!861415))

(declare-fun m!861417 () Bool)

(assert (=> b!926673 m!861417))

(declare-fun m!861419 () Bool)

(assert (=> mapNonEmpty!31425 m!861419))

(declare-fun m!861421 () Bool)

(assert (=> b!926681 m!861421))

(declare-fun m!861423 () Bool)

(assert (=> start!79086 m!861423))

(declare-fun m!861425 () Bool)

(assert (=> start!79086 m!861425))

(declare-fun m!861427 () Bool)

(assert (=> start!79086 m!861427))

(declare-fun m!861429 () Bool)

(assert (=> b!926667 m!861429))

(declare-fun m!861431 () Bool)

(assert (=> b!926686 m!861431))

(declare-fun m!861433 () Bool)

(assert (=> b!926668 m!861433))

(declare-fun m!861435 () Bool)

(assert (=> b!926677 m!861435))

(declare-fun m!861437 () Bool)

(assert (=> b!926677 m!861437))

(declare-fun m!861439 () Bool)

(assert (=> b!926677 m!861439))

(check-sat (not mapNonEmpty!31425) (not b!926681) (not b!926674) (not b!926668) tp_is_empty!19779 b_and!28299 (not b!926684) (not b!926667) (not b_lambda!13803) (not b!926679) (not start!79086) (not b!926673) (not b!926677) (not b!926686) (not b_next!17271) (not b!926678) (not b!926682) (not b!926671))
(check-sat b_and!28299 (not b_next!17271))
