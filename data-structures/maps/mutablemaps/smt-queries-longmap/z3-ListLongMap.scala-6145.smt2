; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79008 () Bool)

(assert start!79008)

(declare-fun b_free!17193 () Bool)

(declare-fun b_next!17193 () Bool)

(assert (=> start!79008 (= b_free!17193 (not b_next!17193))))

(declare-fun tp!60021 () Bool)

(declare-fun b_and!28141 () Bool)

(assert (=> start!79008 (= tp!60021 b_and!28141)))

(declare-fun b!924311 () Bool)

(declare-fun e!518728 () Bool)

(declare-fun e!518735 () Bool)

(assert (=> b!924311 (= e!518728 e!518735)))

(declare-fun res!623152 () Bool)

(assert (=> b!924311 (=> (not res!623152) (not e!518735))))

(declare-datatypes ((V!31233 0))(
  ( (V!31234 (val!9901 Int)) )
))
(declare-datatypes ((tuple2!13008 0))(
  ( (tuple2!13009 (_1!6514 (_ BitVec 64)) (_2!6514 V!31233)) )
))
(declare-datatypes ((List!18844 0))(
  ( (Nil!18841) (Cons!18840 (h!19986 tuple2!13008) (t!26775 List!18844)) )
))
(declare-datatypes ((ListLongMap!11719 0))(
  ( (ListLongMap!11720 (toList!5875 List!18844)) )
))
(declare-fun lt!415647 () ListLongMap!11719)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4899 (ListLongMap!11719 (_ BitVec 64)) Bool)

(assert (=> b!924311 (= res!623152 (contains!4899 lt!415647 k0!1099))))

(declare-datatypes ((array!55386 0))(
  ( (array!55387 (arr!26634 (Array (_ BitVec 32) (_ BitVec 64))) (size!27094 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55386)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9369 0))(
  ( (ValueCellFull!9369 (v!12419 V!31233)) (EmptyCell!9369) )
))
(declare-datatypes ((array!55388 0))(
  ( (array!55389 (arr!26635 (Array (_ BitVec 32) ValueCell!9369)) (size!27095 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55388)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31233)

(declare-fun minValue!1173 () V!31233)

(declare-fun getCurrentListMap!3093 (array!55386 array!55388 (_ BitVec 32) (_ BitVec 32) V!31233 V!31233 (_ BitVec 32) Int) ListLongMap!11719)

(assert (=> b!924311 (= lt!415647 (getCurrentListMap!3093 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924312 () Bool)

(declare-fun lt!415637 () ListLongMap!11719)

(declare-fun lt!415643 () V!31233)

(declare-fun apply!677 (ListLongMap!11719 (_ BitVec 64)) V!31233)

(assert (=> b!924312 (= (apply!677 lt!415637 k0!1099) lt!415643)))

(declare-fun lt!415646 () (_ BitVec 64))

(declare-datatypes ((Unit!31214 0))(
  ( (Unit!31215) )
))
(declare-fun lt!415645 () Unit!31214)

(declare-fun lt!415636 () V!31233)

(declare-fun addApplyDifferent!368 (ListLongMap!11719 (_ BitVec 64) V!31233 (_ BitVec 64)) Unit!31214)

(assert (=> b!924312 (= lt!415645 (addApplyDifferent!368 lt!415647 lt!415646 lt!415636 k0!1099))))

(assert (=> b!924312 (not (= lt!415646 k0!1099))))

(declare-fun lt!415635 () Unit!31214)

(declare-datatypes ((List!18845 0))(
  ( (Nil!18842) (Cons!18841 (h!19987 (_ BitVec 64)) (t!26776 List!18845)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55386 (_ BitVec 64) (_ BitVec 32) List!18845) Unit!31214)

(assert (=> b!924312 (= lt!415635 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18842))))

(declare-fun e!518729 () Bool)

(assert (=> b!924312 e!518729))

(declare-fun c!96346 () Bool)

(assert (=> b!924312 (= c!96346 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415644 () Unit!31214)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!228 (array!55386 array!55388 (_ BitVec 32) (_ BitVec 32) V!31233 V!31233 (_ BitVec 64) (_ BitVec 32) Int) Unit!31214)

(assert (=> b!924312 (= lt!415644 (lemmaListMapContainsThenArrayContainsFrom!228 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55386 (_ BitVec 32) List!18845) Bool)

(assert (=> b!924312 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18842)))

(declare-fun lt!415638 () Unit!31214)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55386 (_ BitVec 32) (_ BitVec 32)) Unit!31214)

(assert (=> b!924312 (= lt!415638 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!924312 (contains!4899 lt!415637 k0!1099)))

(declare-fun lt!415639 () tuple2!13008)

(declare-fun +!2682 (ListLongMap!11719 tuple2!13008) ListLongMap!11719)

(assert (=> b!924312 (= lt!415637 (+!2682 lt!415647 lt!415639))))

(declare-fun lt!415640 () Unit!31214)

(declare-fun addStillContains!444 (ListLongMap!11719 (_ BitVec 64) V!31233 (_ BitVec 64)) Unit!31214)

(assert (=> b!924312 (= lt!415640 (addStillContains!444 lt!415647 lt!415646 lt!415636 k0!1099))))

(assert (=> b!924312 (= (getCurrentListMap!3093 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2682 (getCurrentListMap!3093 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415639))))

(assert (=> b!924312 (= lt!415639 (tuple2!13009 lt!415646 lt!415636))))

(declare-fun get!14025 (ValueCell!9369 V!31233) V!31233)

(declare-fun dynLambda!1521 (Int (_ BitVec 64)) V!31233)

(assert (=> b!924312 (= lt!415636 (get!14025 (select (arr!26635 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1521 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415641 () Unit!31214)

(declare-fun lemmaListMapRecursiveValidKeyArray!117 (array!55386 array!55388 (_ BitVec 32) (_ BitVec 32) V!31233 V!31233 (_ BitVec 32) Int) Unit!31214)

(assert (=> b!924312 (= lt!415641 (lemmaListMapRecursiveValidKeyArray!117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518732 () Unit!31214)

(assert (=> b!924312 (= e!518732 lt!415645)))

(declare-fun b!924313 () Bool)

(declare-fun e!518730 () Bool)

(declare-fun e!518725 () Bool)

(assert (=> b!924313 (= e!518730 e!518725)))

(declare-fun res!623155 () Bool)

(assert (=> b!924313 (=> (not res!623155) (not e!518725))))

(assert (=> b!924313 (= res!623155 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27094 _keys!1487)))))

(declare-fun lt!415633 () Unit!31214)

(declare-fun e!518726 () Unit!31214)

(assert (=> b!924313 (= lt!415633 e!518726)))

(declare-fun c!96345 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924313 (= c!96345 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31308 () Bool)

(declare-fun mapRes!31308 () Bool)

(declare-fun tp!60020 () Bool)

(declare-fun e!518733 () Bool)

(assert (=> mapNonEmpty!31308 (= mapRes!31308 (and tp!60020 e!518733))))

(declare-fun mapRest!31308 () (Array (_ BitVec 32) ValueCell!9369))

(declare-fun mapKey!31308 () (_ BitVec 32))

(declare-fun mapValue!31308 () ValueCell!9369)

(assert (=> mapNonEmpty!31308 (= (arr!26635 _values!1231) (store mapRest!31308 mapKey!31308 mapValue!31308))))

(declare-fun b!924314 () Bool)

(assert (=> b!924314 (= e!518729 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924315 () Bool)

(declare-fun Unit!31216 () Unit!31214)

(assert (=> b!924315 (= e!518726 Unit!31216)))

(declare-fun b!924316 () Bool)

(declare-fun res!623154 () Bool)

(assert (=> b!924316 (=> (not res!623154) (not e!518728))))

(assert (=> b!924316 (= res!623154 (and (= (size!27095 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27094 _keys!1487) (size!27095 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924317 () Bool)

(declare-fun res!623156 () Bool)

(assert (=> b!924317 (=> (not res!623156) (not e!518728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55386 (_ BitVec 32)) Bool)

(assert (=> b!924317 (= res!623156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924318 () Bool)

(declare-fun tp_is_empty!19701 () Bool)

(assert (=> b!924318 (= e!518733 tp_is_empty!19701)))

(declare-fun b!924319 () Bool)

(declare-fun e!518734 () Bool)

(assert (=> b!924319 (= e!518725 e!518734)))

(declare-fun res!623150 () Bool)

(assert (=> b!924319 (=> (not res!623150) (not e!518734))))

(declare-fun lt!415634 () ListLongMap!11719)

(assert (=> b!924319 (= res!623150 (contains!4899 lt!415634 k0!1099))))

(assert (=> b!924319 (= lt!415634 (getCurrentListMap!3093 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924320 () Bool)

(assert (=> b!924320 (= e!518734 false)))

(declare-fun lt!415642 () V!31233)

(assert (=> b!924320 (= lt!415642 (apply!677 lt!415634 k0!1099))))

(declare-fun res!623149 () Bool)

(assert (=> start!79008 (=> (not res!623149) (not e!518728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79008 (= res!623149 (validMask!0 mask!1881))))

(assert (=> start!79008 e!518728))

(assert (=> start!79008 true))

(assert (=> start!79008 tp_is_empty!19701))

(declare-fun e!518727 () Bool)

(declare-fun array_inv!20740 (array!55388) Bool)

(assert (=> start!79008 (and (array_inv!20740 _values!1231) e!518727)))

(assert (=> start!79008 tp!60021))

(declare-fun array_inv!20741 (array!55386) Bool)

(assert (=> start!79008 (array_inv!20741 _keys!1487)))

(declare-fun b!924321 () Bool)

(assert (=> b!924321 (= e!518735 e!518730)))

(declare-fun res!623153 () Bool)

(assert (=> b!924321 (=> (not res!623153) (not e!518730))))

(declare-fun v!791 () V!31233)

(assert (=> b!924321 (= res!623153 (and (= lt!415643 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!924321 (= lt!415643 (apply!677 lt!415647 k0!1099))))

(declare-fun b!924322 () Bool)

(assert (=> b!924322 (= e!518726 e!518732)))

(assert (=> b!924322 (= lt!415646 (select (arr!26634 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96347 () Bool)

(assert (=> b!924322 (= c!96347 (validKeyInArray!0 lt!415646))))

(declare-fun mapIsEmpty!31308 () Bool)

(assert (=> mapIsEmpty!31308 mapRes!31308))

(declare-fun b!924323 () Bool)

(declare-fun res!623148 () Bool)

(assert (=> b!924323 (=> (not res!623148) (not e!518728))))

(assert (=> b!924323 (= res!623148 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27094 _keys!1487))))))

(declare-fun b!924324 () Bool)

(declare-fun arrayContainsKey!0 (array!55386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924324 (= e!518729 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!924325 () Bool)

(declare-fun e!518736 () Bool)

(assert (=> b!924325 (= e!518727 (and e!518736 mapRes!31308))))

(declare-fun condMapEmpty!31308 () Bool)

(declare-fun mapDefault!31308 () ValueCell!9369)

(assert (=> b!924325 (= condMapEmpty!31308 (= (arr!26635 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9369)) mapDefault!31308)))))

(declare-fun b!924326 () Bool)

(assert (=> b!924326 (= e!518736 tp_is_empty!19701)))

(declare-fun b!924327 () Bool)

(declare-fun res!623151 () Bool)

(assert (=> b!924327 (=> (not res!623151) (not e!518728))))

(assert (=> b!924327 (= res!623151 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18842))))

(declare-fun b!924328 () Bool)

(declare-fun Unit!31217 () Unit!31214)

(assert (=> b!924328 (= e!518732 Unit!31217)))

(assert (= (and start!79008 res!623149) b!924316))

(assert (= (and b!924316 res!623154) b!924317))

(assert (= (and b!924317 res!623156) b!924327))

(assert (= (and b!924327 res!623151) b!924323))

(assert (= (and b!924323 res!623148) b!924311))

(assert (= (and b!924311 res!623152) b!924321))

(assert (= (and b!924321 res!623153) b!924313))

(assert (= (and b!924313 c!96345) b!924322))

(assert (= (and b!924313 (not c!96345)) b!924315))

(assert (= (and b!924322 c!96347) b!924312))

(assert (= (and b!924322 (not c!96347)) b!924328))

(assert (= (and b!924312 c!96346) b!924324))

(assert (= (and b!924312 (not c!96346)) b!924314))

(assert (= (and b!924313 res!623155) b!924319))

(assert (= (and b!924319 res!623150) b!924320))

(assert (= (and b!924325 condMapEmpty!31308) mapIsEmpty!31308))

(assert (= (and b!924325 (not condMapEmpty!31308)) mapNonEmpty!31308))

(get-info :version)

(assert (= (and mapNonEmpty!31308 ((_ is ValueCellFull!9369) mapValue!31308)) b!924318))

(assert (= (and b!924325 ((_ is ValueCellFull!9369) mapDefault!31308)) b!924326))

(assert (= start!79008 b!924325))

(declare-fun b_lambda!13725 () Bool)

(assert (=> (not b_lambda!13725) (not b!924312)))

(declare-fun t!26774 () Bool)

(declare-fun tb!5781 () Bool)

(assert (=> (and start!79008 (= defaultEntry!1235 defaultEntry!1235) t!26774) tb!5781))

(declare-fun result!11377 () Bool)

(assert (=> tb!5781 (= result!11377 tp_is_empty!19701)))

(assert (=> b!924312 t!26774))

(declare-fun b_and!28143 () Bool)

(assert (= b_and!28141 (and (=> t!26774 result!11377) b_and!28143)))

(declare-fun m!858729 () Bool)

(assert (=> b!924321 m!858729))

(declare-fun m!858731 () Bool)

(assert (=> b!924322 m!858731))

(declare-fun m!858733 () Bool)

(assert (=> b!924322 m!858733))

(declare-fun m!858735 () Bool)

(assert (=> start!79008 m!858735))

(declare-fun m!858737 () Bool)

(assert (=> start!79008 m!858737))

(declare-fun m!858739 () Bool)

(assert (=> start!79008 m!858739))

(declare-fun m!858741 () Bool)

(assert (=> b!924327 m!858741))

(declare-fun m!858743 () Bool)

(assert (=> b!924313 m!858743))

(declare-fun m!858745 () Bool)

(assert (=> mapNonEmpty!31308 m!858745))

(declare-fun m!858747 () Bool)

(assert (=> b!924320 m!858747))

(declare-fun m!858749 () Bool)

(assert (=> b!924317 m!858749))

(declare-fun m!858751 () Bool)

(assert (=> b!924311 m!858751))

(declare-fun m!858753 () Bool)

(assert (=> b!924311 m!858753))

(declare-fun m!858755 () Bool)

(assert (=> b!924324 m!858755))

(declare-fun m!858757 () Bool)

(assert (=> b!924319 m!858757))

(declare-fun m!858759 () Bool)

(assert (=> b!924319 m!858759))

(declare-fun m!858761 () Bool)

(assert (=> b!924312 m!858761))

(declare-fun m!858763 () Bool)

(assert (=> b!924312 m!858763))

(declare-fun m!858765 () Bool)

(assert (=> b!924312 m!858765))

(declare-fun m!858767 () Bool)

(assert (=> b!924312 m!858767))

(assert (=> b!924312 m!858765))

(declare-fun m!858769 () Bool)

(assert (=> b!924312 m!858769))

(declare-fun m!858771 () Bool)

(assert (=> b!924312 m!858771))

(declare-fun m!858773 () Bool)

(assert (=> b!924312 m!858773))

(declare-fun m!858775 () Bool)

(assert (=> b!924312 m!858775))

(declare-fun m!858777 () Bool)

(assert (=> b!924312 m!858777))

(declare-fun m!858779 () Bool)

(assert (=> b!924312 m!858779))

(assert (=> b!924312 m!858769))

(declare-fun m!858781 () Bool)

(assert (=> b!924312 m!858781))

(assert (=> b!924312 m!858759))

(declare-fun m!858783 () Bool)

(assert (=> b!924312 m!858783))

(assert (=> b!924312 m!858775))

(declare-fun m!858785 () Bool)

(assert (=> b!924312 m!858785))

(declare-fun m!858787 () Bool)

(assert (=> b!924312 m!858787))

(declare-fun m!858789 () Bool)

(assert (=> b!924312 m!858789))

(check-sat (not b_next!17193) (not start!79008) (not b!924320) (not b!924321) (not b!924317) b_and!28143 (not b!924319) (not b!924312) (not b!924313) (not b!924311) (not mapNonEmpty!31308) (not b!924322) (not b_lambda!13725) tp_is_empty!19701 (not b!924327) (not b!924324))
(check-sat b_and!28143 (not b_next!17193))
