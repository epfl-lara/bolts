; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79056 () Bool)

(assert start!79056)

(declare-fun b_free!17241 () Bool)

(declare-fun b_next!17241 () Bool)

(assert (=> start!79056 (= b_free!17241 (not b_next!17241))))

(declare-fun tp!60165 () Bool)

(declare-fun b_and!28237 () Bool)

(assert (=> start!79056 (= tp!60165 b_and!28237)))

(declare-fun b!925737 () Bool)

(declare-datatypes ((V!31297 0))(
  ( (V!31298 (val!9925 Int)) )
))
(declare-datatypes ((tuple2!13048 0))(
  ( (tuple2!13049 (_1!6534 (_ BitVec 64)) (_2!6534 V!31297)) )
))
(declare-datatypes ((List!18882 0))(
  ( (Nil!18879) (Cons!18878 (h!20024 tuple2!13048) (t!26861 List!18882)) )
))
(declare-datatypes ((ListLongMap!11759 0))(
  ( (ListLongMap!11760 (toList!5895 List!18882)) )
))
(declare-fun lt!416760 () ListLongMap!11759)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!416763 () V!31297)

(declare-fun apply!695 (ListLongMap!11759 (_ BitVec 64)) V!31297)

(assert (=> b!925737 (= (apply!695 lt!416760 k0!1099) lt!416763)))

(declare-fun lt!416757 () V!31297)

(declare-fun lt!416762 () ListLongMap!11759)

(declare-fun lt!416766 () (_ BitVec 64))

(declare-datatypes ((Unit!31291 0))(
  ( (Unit!31292) )
))
(declare-fun lt!416759 () Unit!31291)

(declare-fun addApplyDifferent!382 (ListLongMap!11759 (_ BitVec 64) V!31297 (_ BitVec 64)) Unit!31291)

(assert (=> b!925737 (= lt!416759 (addApplyDifferent!382 lt!416762 lt!416766 lt!416757 k0!1099))))

(assert (=> b!925737 (not (= lt!416766 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!416765 () Unit!31291)

(declare-datatypes ((array!55478 0))(
  ( (array!55479 (arr!26680 (Array (_ BitVec 32) (_ BitVec 64))) (size!27140 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55478)

(declare-datatypes ((List!18883 0))(
  ( (Nil!18880) (Cons!18879 (h!20025 (_ BitVec 64)) (t!26862 List!18883)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55478 (_ BitVec 64) (_ BitVec 32) List!18883) Unit!31291)

(assert (=> b!925737 (= lt!416765 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18880))))

(declare-fun e!519639 () Bool)

(assert (=> b!925737 e!519639))

(declare-fun c!96561 () Bool)

(assert (=> b!925737 (= c!96561 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!416756 () Unit!31291)

(declare-datatypes ((ValueCell!9393 0))(
  ( (ValueCellFull!9393 (v!12443 V!31297)) (EmptyCell!9393) )
))
(declare-datatypes ((array!55480 0))(
  ( (array!55481 (arr!26681 (Array (_ BitVec 32) ValueCell!9393)) (size!27141 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55480)

(declare-fun zeroValue!1173 () V!31297)

(declare-fun minValue!1173 () V!31297)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!242 (array!55478 array!55480 (_ BitVec 32) (_ BitVec 32) V!31297 V!31297 (_ BitVec 64) (_ BitVec 32) Int) Unit!31291)

(assert (=> b!925737 (= lt!416756 (lemmaListMapContainsThenArrayContainsFrom!242 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55478 (_ BitVec 32) List!18883) Bool)

(assert (=> b!925737 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18880)))

(declare-fun lt!416761 () Unit!31291)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55478 (_ BitVec 32) (_ BitVec 32)) Unit!31291)

(assert (=> b!925737 (= lt!416761 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4918 (ListLongMap!11759 (_ BitVec 64)) Bool)

(assert (=> b!925737 (contains!4918 lt!416760 k0!1099)))

(declare-fun lt!416767 () tuple2!13048)

(declare-fun +!2696 (ListLongMap!11759 tuple2!13048) ListLongMap!11759)

(assert (=> b!925737 (= lt!416760 (+!2696 lt!416762 lt!416767))))

(declare-fun lt!416769 () Unit!31291)

(declare-fun addStillContains!458 (ListLongMap!11759 (_ BitVec 64) V!31297 (_ BitVec 64)) Unit!31291)

(assert (=> b!925737 (= lt!416769 (addStillContains!458 lt!416762 lt!416766 lt!416757 k0!1099))))

(declare-fun getCurrentListMap!3112 (array!55478 array!55480 (_ BitVec 32) (_ BitVec 32) V!31297 V!31297 (_ BitVec 32) Int) ListLongMap!11759)

(assert (=> b!925737 (= (getCurrentListMap!3112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2696 (getCurrentListMap!3112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416767))))

(assert (=> b!925737 (= lt!416767 (tuple2!13049 lt!416766 lt!416757))))

(declare-fun get!14055 (ValueCell!9393 V!31297) V!31297)

(declare-fun dynLambda!1535 (Int (_ BitVec 64)) V!31297)

(assert (=> b!925737 (= lt!416757 (get!14055 (select (arr!26681 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1535 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416764 () Unit!31291)

(declare-fun lemmaListMapRecursiveValidKeyArray!131 (array!55478 array!55480 (_ BitVec 32) (_ BitVec 32) V!31297 V!31297 (_ BitVec 32) Int) Unit!31291)

(assert (=> b!925737 (= lt!416764 (lemmaListMapRecursiveValidKeyArray!131 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519630 () Unit!31291)

(assert (=> b!925737 (= e!519630 lt!416759)))

(declare-fun v!791 () V!31297)

(declare-fun b!925738 () Bool)

(declare-fun e!519641 () Bool)

(declare-fun lt!416768 () ListLongMap!11759)

(assert (=> b!925738 (= e!519641 (= (apply!695 lt!416768 k0!1099) v!791))))

(declare-fun b!925739 () Bool)

(assert (=> b!925739 (= e!519639 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!623882 () Bool)

(declare-fun e!519638 () Bool)

(assert (=> start!79056 (=> (not res!623882) (not e!519638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79056 (= res!623882 (validMask!0 mask!1881))))

(assert (=> start!79056 e!519638))

(assert (=> start!79056 true))

(declare-fun tp_is_empty!19749 () Bool)

(assert (=> start!79056 tp_is_empty!19749))

(declare-fun e!519633 () Bool)

(declare-fun array_inv!20772 (array!55480) Bool)

(assert (=> start!79056 (and (array_inv!20772 _values!1231) e!519633)))

(assert (=> start!79056 tp!60165))

(declare-fun array_inv!20773 (array!55478) Bool)

(assert (=> start!79056 (array_inv!20773 _keys!1487)))

(declare-fun b!925740 () Bool)

(declare-fun e!519637 () Bool)

(declare-fun e!519642 () Bool)

(assert (=> b!925740 (= e!519637 e!519642)))

(declare-fun res!623879 () Bool)

(assert (=> b!925740 (=> (not res!623879) (not e!519642))))

(assert (=> b!925740 (= res!623879 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27140 _keys!1487)))))

(declare-fun lt!416755 () Unit!31291)

(declare-fun e!519631 () Unit!31291)

(assert (=> b!925740 (= lt!416755 e!519631)))

(declare-fun c!96562 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925740 (= c!96562 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31380 () Bool)

(declare-fun mapRes!31380 () Bool)

(declare-fun tp!60164 () Bool)

(declare-fun e!519632 () Bool)

(assert (=> mapNonEmpty!31380 (= mapRes!31380 (and tp!60164 e!519632))))

(declare-fun mapKey!31380 () (_ BitVec 32))

(declare-fun mapValue!31380 () ValueCell!9393)

(declare-fun mapRest!31380 () (Array (_ BitVec 32) ValueCell!9393))

(assert (=> mapNonEmpty!31380 (= (arr!26681 _values!1231) (store mapRest!31380 mapKey!31380 mapValue!31380))))

(declare-fun b!925741 () Bool)

(declare-fun e!519636 () Bool)

(assert (=> b!925741 (= e!519633 (and e!519636 mapRes!31380))))

(declare-fun condMapEmpty!31380 () Bool)

(declare-fun mapDefault!31380 () ValueCell!9393)

(assert (=> b!925741 (= condMapEmpty!31380 (= (arr!26681 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9393)) mapDefault!31380)))))

(declare-fun b!925742 () Bool)

(declare-fun e!519635 () Bool)

(assert (=> b!925742 (= e!519635 (not true))))

(assert (=> b!925742 e!519641))

(declare-fun res!623884 () Bool)

(assert (=> b!925742 (=> (not res!623884) (not e!519641))))

(assert (=> b!925742 (= res!623884 (contains!4918 lt!416768 k0!1099))))

(assert (=> b!925742 (= lt!416768 (getCurrentListMap!3112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!416754 () Unit!31291)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!78 (array!55478 array!55480 (_ BitVec 32) (_ BitVec 32) V!31297 V!31297 (_ BitVec 64) V!31297 (_ BitVec 32) Int) Unit!31291)

(assert (=> b!925742 (= lt!416754 (lemmaListMapApplyFromThenApplyFromZero!78 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31380 () Bool)

(assert (=> mapIsEmpty!31380 mapRes!31380))

(declare-fun b!925743 () Bool)

(assert (=> b!925743 (= e!519631 e!519630)))

(assert (=> b!925743 (= lt!416766 (select (arr!26680 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96563 () Bool)

(assert (=> b!925743 (= c!96563 (validKeyInArray!0 lt!416766))))

(declare-fun b!925744 () Bool)

(declare-fun arrayContainsKey!0 (array!55478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925744 (= e!519639 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!925745 () Bool)

(declare-fun res!623880 () Bool)

(assert (=> b!925745 (=> (not res!623880) (not e!519638))))

(assert (=> b!925745 (= res!623880 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27140 _keys!1487))))))

(declare-fun b!925746 () Bool)

(declare-fun res!623887 () Bool)

(assert (=> b!925746 (=> (not res!623887) (not e!519635))))

(declare-fun lt!416758 () ListLongMap!11759)

(assert (=> b!925746 (= res!623887 (= (apply!695 lt!416758 k0!1099) v!791))))

(declare-fun b!925747 () Bool)

(declare-fun Unit!31293 () Unit!31291)

(assert (=> b!925747 (= e!519630 Unit!31293)))

(declare-fun b!925748 () Bool)

(declare-fun e!519640 () Bool)

(assert (=> b!925748 (= e!519640 e!519637)))

(declare-fun res!623881 () Bool)

(assert (=> b!925748 (=> (not res!623881) (not e!519637))))

(assert (=> b!925748 (= res!623881 (and (= lt!416763 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925748 (= lt!416763 (apply!695 lt!416762 k0!1099))))

(declare-fun b!925749 () Bool)

(declare-fun res!623883 () Bool)

(assert (=> b!925749 (=> (not res!623883) (not e!519638))))

(assert (=> b!925749 (= res!623883 (and (= (size!27141 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27140 _keys!1487) (size!27141 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925750 () Bool)

(declare-fun Unit!31294 () Unit!31291)

(assert (=> b!925750 (= e!519631 Unit!31294)))

(declare-fun b!925751 () Bool)

(declare-fun res!623886 () Bool)

(assert (=> b!925751 (=> (not res!623886) (not e!519638))))

(assert (=> b!925751 (= res!623886 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18880))))

(declare-fun b!925752 () Bool)

(assert (=> b!925752 (= e!519638 e!519640)))

(declare-fun res!623885 () Bool)

(assert (=> b!925752 (=> (not res!623885) (not e!519640))))

(assert (=> b!925752 (= res!623885 (contains!4918 lt!416762 k0!1099))))

(assert (=> b!925752 (= lt!416762 (getCurrentListMap!3112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925753 () Bool)

(assert (=> b!925753 (= e!519636 tp_is_empty!19749)))

(declare-fun b!925754 () Bool)

(assert (=> b!925754 (= e!519642 e!519635)))

(declare-fun res!623878 () Bool)

(assert (=> b!925754 (=> (not res!623878) (not e!519635))))

(assert (=> b!925754 (= res!623878 (contains!4918 lt!416758 k0!1099))))

(assert (=> b!925754 (= lt!416758 (getCurrentListMap!3112 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925755 () Bool)

(declare-fun res!623888 () Bool)

(assert (=> b!925755 (=> (not res!623888) (not e!519638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55478 (_ BitVec 32)) Bool)

(assert (=> b!925755 (= res!623888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!925756 () Bool)

(assert (=> b!925756 (= e!519632 tp_is_empty!19749)))

(assert (= (and start!79056 res!623882) b!925749))

(assert (= (and b!925749 res!623883) b!925755))

(assert (= (and b!925755 res!623888) b!925751))

(assert (= (and b!925751 res!623886) b!925745))

(assert (= (and b!925745 res!623880) b!925752))

(assert (= (and b!925752 res!623885) b!925748))

(assert (= (and b!925748 res!623881) b!925740))

(assert (= (and b!925740 c!96562) b!925743))

(assert (= (and b!925740 (not c!96562)) b!925750))

(assert (= (and b!925743 c!96563) b!925737))

(assert (= (and b!925743 (not c!96563)) b!925747))

(assert (= (and b!925737 c!96561) b!925744))

(assert (= (and b!925737 (not c!96561)) b!925739))

(assert (= (and b!925740 res!623879) b!925754))

(assert (= (and b!925754 res!623878) b!925746))

(assert (= (and b!925746 res!623887) b!925742))

(assert (= (and b!925742 res!623884) b!925738))

(assert (= (and b!925741 condMapEmpty!31380) mapIsEmpty!31380))

(assert (= (and b!925741 (not condMapEmpty!31380)) mapNonEmpty!31380))

(get-info :version)

(assert (= (and mapNonEmpty!31380 ((_ is ValueCellFull!9393) mapValue!31380)) b!925756))

(assert (= (and b!925741 ((_ is ValueCellFull!9393) mapDefault!31380)) b!925753))

(assert (= start!79056 b!925741))

(declare-fun b_lambda!13773 () Bool)

(assert (=> (not b_lambda!13773) (not b!925737)))

(declare-fun t!26860 () Bool)

(declare-fun tb!5829 () Bool)

(assert (=> (and start!79056 (= defaultEntry!1235 defaultEntry!1235) t!26860) tb!5829))

(declare-fun result!11473 () Bool)

(assert (=> tb!5829 (= result!11473 tp_is_empty!19749)))

(assert (=> b!925737 t!26860))

(declare-fun b_and!28239 () Bool)

(assert (= b_and!28237 (and (=> t!26860 result!11473) b_and!28239)))

(declare-fun m!860321 () Bool)

(assert (=> b!925752 m!860321))

(declare-fun m!860323 () Bool)

(assert (=> b!925752 m!860323))

(declare-fun m!860325 () Bool)

(assert (=> start!79056 m!860325))

(declare-fun m!860327 () Bool)

(assert (=> start!79056 m!860327))

(declare-fun m!860329 () Bool)

(assert (=> start!79056 m!860329))

(declare-fun m!860331 () Bool)

(assert (=> b!925742 m!860331))

(declare-fun m!860333 () Bool)

(assert (=> b!925742 m!860333))

(declare-fun m!860335 () Bool)

(assert (=> b!925742 m!860335))

(declare-fun m!860337 () Bool)

(assert (=> b!925740 m!860337))

(declare-fun m!860339 () Bool)

(assert (=> mapNonEmpty!31380 m!860339))

(declare-fun m!860341 () Bool)

(assert (=> b!925737 m!860341))

(declare-fun m!860343 () Bool)

(assert (=> b!925737 m!860343))

(declare-fun m!860345 () Bool)

(assert (=> b!925737 m!860345))

(declare-fun m!860347 () Bool)

(assert (=> b!925737 m!860347))

(declare-fun m!860349 () Bool)

(assert (=> b!925737 m!860349))

(declare-fun m!860351 () Bool)

(assert (=> b!925737 m!860351))

(assert (=> b!925737 m!860345))

(assert (=> b!925737 m!860347))

(declare-fun m!860353 () Bool)

(assert (=> b!925737 m!860353))

(declare-fun m!860355 () Bool)

(assert (=> b!925737 m!860355))

(declare-fun m!860357 () Bool)

(assert (=> b!925737 m!860357))

(declare-fun m!860359 () Bool)

(assert (=> b!925737 m!860359))

(declare-fun m!860361 () Bool)

(assert (=> b!925737 m!860361))

(declare-fun m!860363 () Bool)

(assert (=> b!925737 m!860363))

(declare-fun m!860365 () Bool)

(assert (=> b!925737 m!860365))

(declare-fun m!860367 () Bool)

(assert (=> b!925737 m!860367))

(declare-fun m!860369 () Bool)

(assert (=> b!925737 m!860369))

(assert (=> b!925737 m!860365))

(declare-fun m!860371 () Bool)

(assert (=> b!925737 m!860371))

(declare-fun m!860373 () Bool)

(assert (=> b!925754 m!860373))

(assert (=> b!925754 m!860355))

(declare-fun m!860375 () Bool)

(assert (=> b!925748 m!860375))

(declare-fun m!860377 () Bool)

(assert (=> b!925746 m!860377))

(declare-fun m!860379 () Bool)

(assert (=> b!925751 m!860379))

(declare-fun m!860381 () Bool)

(assert (=> b!925743 m!860381))

(declare-fun m!860383 () Bool)

(assert (=> b!925743 m!860383))

(declare-fun m!860385 () Bool)

(assert (=> b!925738 m!860385))

(declare-fun m!860387 () Bool)

(assert (=> b!925755 m!860387))

(declare-fun m!860389 () Bool)

(assert (=> b!925744 m!860389))

(check-sat (not b_next!17241) (not b_lambda!13773) (not b!925744) (not b!925748) (not b!925754) (not b!925743) (not b!925738) (not b!925752) tp_is_empty!19749 (not b!925751) (not b!925755) (not b!925740) b_and!28239 (not b!925742) (not b!925737) (not mapNonEmpty!31380) (not start!79056) (not b!925746))
(check-sat b_and!28239 (not b_next!17241))
