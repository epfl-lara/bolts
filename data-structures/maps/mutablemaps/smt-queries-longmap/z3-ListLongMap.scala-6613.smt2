; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83592 () Bool)

(assert start!83592)

(declare-fun b_free!19551 () Bool)

(declare-fun b_next!19551 () Bool)

(assert (=> start!83592 (= b_free!19551 (not b_next!19551))))

(declare-fun tp!67942 () Bool)

(declare-fun b_and!31207 () Bool)

(assert (=> start!83592 (= tp!67942 b_and!31207)))

(declare-fun b!976380 () Bool)

(declare-fun res!653754 () Bool)

(declare-fun e!550283 () Bool)

(assert (=> b!976380 (=> (not res!653754) (not e!550283))))

(declare-datatypes ((array!60923 0))(
  ( (array!60924 (arr!29321 (Array (_ BitVec 32) (_ BitVec 64))) (size!29801 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60923)

(declare-datatypes ((List!20484 0))(
  ( (Nil!20481) (Cons!20480 (h!21642 (_ BitVec 64)) (t!29005 List!20484)) )
))
(declare-fun arrayNoDuplicates!0 (array!60923 (_ BitVec 32) List!20484) Bool)

(assert (=> b!976380 (= res!653754 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20481))))

(declare-fun b!976381 () Bool)

(declare-fun e!550284 () Bool)

(assert (=> b!976381 (= e!550283 e!550284)))

(declare-fun res!653759 () Bool)

(assert (=> b!976381 (=> (not res!653759) (not e!550284))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976381 (= res!653759 (not (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34923 0))(
  ( (V!34924 (val!11278 Int)) )
))
(declare-datatypes ((ValueCell!10746 0))(
  ( (ValueCellFull!10746 (v!13837 V!34923)) (EmptyCell!10746) )
))
(declare-datatypes ((array!60925 0))(
  ( (array!60926 (arr!29322 (Array (_ BitVec 32) ValueCell!10746)) (size!29802 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60925)

(declare-fun zeroValue!1367 () V!34923)

(declare-datatypes ((tuple2!14612 0))(
  ( (tuple2!14613 (_1!7316 (_ BitVec 64)) (_2!7316 V!34923)) )
))
(declare-datatypes ((List!20485 0))(
  ( (Nil!20482) (Cons!20481 (h!21643 tuple2!14612) (t!29006 List!20485)) )
))
(declare-datatypes ((ListLongMap!13323 0))(
  ( (ListLongMap!13324 (toList!6677 List!20485)) )
))
(declare-fun lt!433087 () ListLongMap!13323)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34923)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3862 (array!60923 array!60925 (_ BitVec 32) (_ BitVec 32) V!34923 V!34923 (_ BitVec 32) Int) ListLongMap!13323)

(assert (=> b!976381 (= lt!433087 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976382 () Bool)

(declare-fun res!653755 () Bool)

(assert (=> b!976382 (=> (not res!653755) (not e!550283))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5708 (ListLongMap!13323 (_ BitVec 64)) Bool)

(assert (=> b!976382 (= res!653755 (contains!5708 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun b!976383 () Bool)

(declare-fun res!653760 () Bool)

(assert (=> b!976383 (=> (not res!653760) (not e!550283))))

(assert (=> b!976383 (= res!653760 (and (= (size!29802 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29801 _keys!1717) (size!29802 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976384 () Bool)

(declare-fun res!653757 () Bool)

(assert (=> b!976384 (=> (not res!653757) (not e!550283))))

(assert (=> b!976384 (= res!653757 (validKeyInArray!0 (select (arr!29321 _keys!1717) i!822)))))

(declare-fun res!653761 () Bool)

(assert (=> start!83592 (=> (not res!653761) (not e!550283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83592 (= res!653761 (validMask!0 mask!2147))))

(assert (=> start!83592 e!550283))

(assert (=> start!83592 true))

(declare-fun e!550282 () Bool)

(declare-fun array_inv!22575 (array!60925) Bool)

(assert (=> start!83592 (and (array_inv!22575 _values!1425) e!550282)))

(declare-fun tp_is_empty!22455 () Bool)

(assert (=> start!83592 tp_is_empty!22455))

(assert (=> start!83592 tp!67942))

(declare-fun array_inv!22576 (array!60923) Bool)

(assert (=> start!83592 (array_inv!22576 _keys!1717)))

(declare-fun b!976385 () Bool)

(declare-fun e!550281 () Bool)

(assert (=> b!976385 (= e!550281 tp_is_empty!22455)))

(declare-fun b!976386 () Bool)

(declare-fun e!550279 () Bool)

(declare-fun mapRes!35692 () Bool)

(assert (=> b!976386 (= e!550282 (and e!550279 mapRes!35692))))

(declare-fun condMapEmpty!35692 () Bool)

(declare-fun mapDefault!35692 () ValueCell!10746)

(assert (=> b!976386 (= condMapEmpty!35692 (= (arr!29322 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10746)) mapDefault!35692)))))

(declare-fun b!976387 () Bool)

(assert (=> b!976387 (= e!550284 (not (contains!5708 lt!433087 (select (arr!29321 _keys!1717) i!822))))))

(declare-fun b!976388 () Bool)

(declare-fun res!653756 () Bool)

(assert (=> b!976388 (=> (not res!653756) (not e!550283))))

(assert (=> b!976388 (= res!653756 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29801 _keys!1717))))))

(declare-fun mapNonEmpty!35692 () Bool)

(declare-fun tp!67941 () Bool)

(assert (=> mapNonEmpty!35692 (= mapRes!35692 (and tp!67941 e!550281))))

(declare-fun mapValue!35692 () ValueCell!10746)

(declare-fun mapRest!35692 () (Array (_ BitVec 32) ValueCell!10746))

(declare-fun mapKey!35692 () (_ BitVec 32))

(assert (=> mapNonEmpty!35692 (= (arr!29322 _values!1425) (store mapRest!35692 mapKey!35692 mapValue!35692))))

(declare-fun mapIsEmpty!35692 () Bool)

(assert (=> mapIsEmpty!35692 mapRes!35692))

(declare-fun b!976389 () Bool)

(assert (=> b!976389 (= e!550279 tp_is_empty!22455)))

(declare-fun b!976390 () Bool)

(declare-fun res!653758 () Bool)

(assert (=> b!976390 (=> (not res!653758) (not e!550283))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60923 (_ BitVec 32)) Bool)

(assert (=> b!976390 (= res!653758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83592 res!653761) b!976383))

(assert (= (and b!976383 res!653760) b!976390))

(assert (= (and b!976390 res!653758) b!976380))

(assert (= (and b!976380 res!653754) b!976388))

(assert (= (and b!976388 res!653756) b!976384))

(assert (= (and b!976384 res!653757) b!976382))

(assert (= (and b!976382 res!653755) b!976381))

(assert (= (and b!976381 res!653759) b!976387))

(assert (= (and b!976386 condMapEmpty!35692) mapIsEmpty!35692))

(assert (= (and b!976386 (not condMapEmpty!35692)) mapNonEmpty!35692))

(get-info :version)

(assert (= (and mapNonEmpty!35692 ((_ is ValueCellFull!10746) mapValue!35692)) b!976385))

(assert (= (and b!976386 ((_ is ValueCellFull!10746) mapDefault!35692)) b!976389))

(assert (= start!83592 b!976386))

(declare-fun m!903717 () Bool)

(assert (=> start!83592 m!903717))

(declare-fun m!903719 () Bool)

(assert (=> start!83592 m!903719))

(declare-fun m!903721 () Bool)

(assert (=> start!83592 m!903721))

(declare-fun m!903723 () Bool)

(assert (=> mapNonEmpty!35692 m!903723))

(declare-fun m!903725 () Bool)

(assert (=> b!976382 m!903725))

(declare-fun m!903727 () Bool)

(assert (=> b!976382 m!903727))

(assert (=> b!976382 m!903725))

(assert (=> b!976382 m!903727))

(declare-fun m!903729 () Bool)

(assert (=> b!976382 m!903729))

(assert (=> b!976387 m!903727))

(assert (=> b!976387 m!903727))

(declare-fun m!903731 () Bool)

(assert (=> b!976387 m!903731))

(declare-fun m!903733 () Bool)

(assert (=> b!976390 m!903733))

(declare-fun m!903735 () Bool)

(assert (=> b!976380 m!903735))

(declare-fun m!903737 () Bool)

(assert (=> b!976381 m!903737))

(assert (=> b!976381 m!903737))

(declare-fun m!903739 () Bool)

(assert (=> b!976381 m!903739))

(declare-fun m!903741 () Bool)

(assert (=> b!976381 m!903741))

(assert (=> b!976384 m!903727))

(assert (=> b!976384 m!903727))

(declare-fun m!903743 () Bool)

(assert (=> b!976384 m!903743))

(check-sat (not b!976384) (not b!976381) (not b!976387) (not b_next!19551) (not b!976390) b_and!31207 (not mapNonEmpty!35692) (not b!976380) tp_is_empty!22455 (not start!83592) (not b!976382))
(check-sat b_and!31207 (not b_next!19551))
(get-model)

(declare-fun d!116381 () Bool)

(declare-fun e!550307 () Bool)

(assert (=> d!116381 e!550307))

(declare-fun res!653788 () Bool)

(assert (=> d!116381 (=> res!653788 e!550307)))

(declare-fun lt!433101 () Bool)

(assert (=> d!116381 (= res!653788 (not lt!433101))))

(declare-fun lt!433102 () Bool)

(assert (=> d!116381 (= lt!433101 lt!433102)))

(declare-datatypes ((Unit!32429 0))(
  ( (Unit!32430) )
))
(declare-fun lt!433100 () Unit!32429)

(declare-fun e!550308 () Unit!32429)

(assert (=> d!116381 (= lt!433100 e!550308)))

(declare-fun c!99850 () Bool)

(assert (=> d!116381 (= c!99850 lt!433102)))

(declare-fun containsKey!477 (List!20485 (_ BitVec 64)) Bool)

(assert (=> d!116381 (= lt!433102 (containsKey!477 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(assert (=> d!116381 (= (contains!5708 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29321 _keys!1717) i!822)) lt!433101)))

(declare-fun b!976430 () Bool)

(declare-fun lt!433099 () Unit!32429)

(assert (=> b!976430 (= e!550308 lt!433099)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!372 (List!20485 (_ BitVec 64)) Unit!32429)

(assert (=> b!976430 (= lt!433099 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(declare-datatypes ((Option!518 0))(
  ( (Some!517 (v!13839 V!34923)) (None!516) )
))
(declare-fun isDefined!382 (Option!518) Bool)

(declare-fun getValueByKey!512 (List!20485 (_ BitVec 64)) Option!518)

(assert (=> b!976430 (isDefined!382 (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun b!976431 () Bool)

(declare-fun Unit!32431 () Unit!32429)

(assert (=> b!976431 (= e!550308 Unit!32431)))

(declare-fun b!976432 () Bool)

(assert (=> b!976432 (= e!550307 (isDefined!382 (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822))))))

(assert (= (and d!116381 c!99850) b!976430))

(assert (= (and d!116381 (not c!99850)) b!976431))

(assert (= (and d!116381 (not res!653788)) b!976432))

(assert (=> d!116381 m!903727))

(declare-fun m!903773 () Bool)

(assert (=> d!116381 m!903773))

(assert (=> b!976430 m!903727))

(declare-fun m!903775 () Bool)

(assert (=> b!976430 m!903775))

(assert (=> b!976430 m!903727))

(declare-fun m!903777 () Bool)

(assert (=> b!976430 m!903777))

(assert (=> b!976430 m!903777))

(declare-fun m!903779 () Bool)

(assert (=> b!976430 m!903779))

(assert (=> b!976432 m!903727))

(assert (=> b!976432 m!903777))

(assert (=> b!976432 m!903777))

(assert (=> b!976432 m!903779))

(assert (=> b!976382 d!116381))

(declare-fun b!976475 () Bool)

(declare-fun e!550336 () Bool)

(declare-fun e!550342 () Bool)

(assert (=> b!976475 (= e!550336 e!550342)))

(declare-fun res!653808 () Bool)

(assert (=> b!976475 (=> (not res!653808) (not e!550342))))

(declare-fun lt!433154 () ListLongMap!13323)

(assert (=> b!976475 (= res!653808 (contains!5708 lt!433154 (select (arr!29321 _keys!1717) from!2118)))))

(assert (=> b!976475 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun bm!41753 () Bool)

(declare-fun call!41758 () ListLongMap!13323)

(declare-fun call!41759 () ListLongMap!13323)

(assert (=> bm!41753 (= call!41758 call!41759)))

(declare-fun b!976476 () Bool)

(declare-fun e!550339 () Bool)

(declare-fun e!550344 () Bool)

(assert (=> b!976476 (= e!550339 e!550344)))

(declare-fun res!653810 () Bool)

(declare-fun call!41757 () Bool)

(assert (=> b!976476 (= res!653810 call!41757)))

(assert (=> b!976476 (=> (not res!653810) (not e!550344))))

(declare-fun bm!41754 () Bool)

(declare-fun call!41761 () Bool)

(assert (=> bm!41754 (= call!41761 (contains!5708 lt!433154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976477 () Bool)

(declare-fun e!550337 () Bool)

(declare-fun e!550338 () Bool)

(assert (=> b!976477 (= e!550337 e!550338)))

(declare-fun res!653814 () Bool)

(assert (=> b!976477 (= res!653814 call!41761)))

(assert (=> b!976477 (=> (not res!653814) (not e!550338))))

(declare-fun b!976478 () Bool)

(declare-fun apply!925 (ListLongMap!13323 (_ BitVec 64)) V!34923)

(assert (=> b!976478 (= e!550344 (= (apply!925 lt!433154 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1367))))

(declare-fun b!976479 () Bool)

(declare-fun e!550346 () Unit!32429)

(declare-fun lt!433159 () Unit!32429)

(assert (=> b!976479 (= e!550346 lt!433159)))

(declare-fun lt!433166 () ListLongMap!13323)

(declare-fun getCurrentListMapNoExtraKeys!3345 (array!60923 array!60925 (_ BitVec 32) (_ BitVec 32) V!34923 V!34923 (_ BitVec 32) Int) ListLongMap!13323)

(assert (=> b!976479 (= lt!433166 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun lt!433148 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433148 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433158 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433158 (select (arr!29321 _keys!1717) from!2118))))

(declare-fun lt!433160 () Unit!32429)

(declare-fun addStillContains!617 (ListLongMap!13323 (_ BitVec 64) V!34923 (_ BitVec 64)) Unit!32429)

(assert (=> b!976479 (= lt!433160 (addStillContains!617 lt!433166 lt!433148 zeroValue!1367 lt!433158))))

(declare-fun +!2884 (ListLongMap!13323 tuple2!14612) ListLongMap!13323)

(assert (=> b!976479 (contains!5708 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367)) lt!433158)))

(declare-fun lt!433153 () Unit!32429)

(assert (=> b!976479 (= lt!433153 lt!433160)))

(declare-fun lt!433156 () ListLongMap!13323)

(assert (=> b!976479 (= lt!433156 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun lt!433155 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433155 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433147 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433147 (select (arr!29321 _keys!1717) from!2118))))

(declare-fun lt!433168 () Unit!32429)

(declare-fun addApplyDifferent!469 (ListLongMap!13323 (_ BitVec 64) V!34923 (_ BitVec 64)) Unit!32429)

(assert (=> b!976479 (= lt!433168 (addApplyDifferent!469 lt!433156 lt!433155 minValue!1367 lt!433147))))

(assert (=> b!976479 (= (apply!925 (+!2884 lt!433156 (tuple2!14613 lt!433155 minValue!1367)) lt!433147) (apply!925 lt!433156 lt!433147))))

(declare-fun lt!433151 () Unit!32429)

(assert (=> b!976479 (= lt!433151 lt!433168)))

(declare-fun lt!433163 () ListLongMap!13323)

(assert (=> b!976479 (= lt!433163 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun lt!433157 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433157 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433152 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433152 (select (arr!29321 _keys!1717) from!2118))))

(declare-fun lt!433165 () Unit!32429)

(assert (=> b!976479 (= lt!433165 (addApplyDifferent!469 lt!433163 lt!433157 zeroValue!1367 lt!433152))))

(assert (=> b!976479 (= (apply!925 (+!2884 lt!433163 (tuple2!14613 lt!433157 zeroValue!1367)) lt!433152) (apply!925 lt!433163 lt!433152))))

(declare-fun lt!433162 () Unit!32429)

(assert (=> b!976479 (= lt!433162 lt!433165)))

(declare-fun lt!433161 () ListLongMap!13323)

(assert (=> b!976479 (= lt!433161 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun lt!433167 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433167 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433164 () (_ BitVec 64))

(assert (=> b!976479 (= lt!433164 (select (arr!29321 _keys!1717) from!2118))))

(assert (=> b!976479 (= lt!433159 (addApplyDifferent!469 lt!433161 lt!433167 minValue!1367 lt!433164))))

(assert (=> b!976479 (= (apply!925 (+!2884 lt!433161 (tuple2!14613 lt!433167 minValue!1367)) lt!433164) (apply!925 lt!433161 lt!433164))))

(declare-fun b!976480 () Bool)

(declare-fun e!550345 () Bool)

(assert (=> b!976480 (= e!550345 e!550339)))

(declare-fun c!99865 () Bool)

(assert (=> b!976480 (= c!99865 (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!976481 () Bool)

(declare-fun res!653812 () Bool)

(assert (=> b!976481 (=> (not res!653812) (not e!550345))))

(assert (=> b!976481 (= res!653812 e!550336)))

(declare-fun res!653811 () Bool)

(assert (=> b!976481 (=> res!653811 e!550336)))

(declare-fun e!550335 () Bool)

(assert (=> b!976481 (= res!653811 (not e!550335))))

(declare-fun res!653813 () Bool)

(assert (=> b!976481 (=> (not res!653813) (not e!550335))))

(assert (=> b!976481 (= res!653813 (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun b!976482 () Bool)

(assert (=> b!976482 (= e!550338 (= (apply!925 lt!433154 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1367))))

(declare-fun b!976483 () Bool)

(declare-fun e!550343 () ListLongMap!13323)

(assert (=> b!976483 (= e!550343 (+!2884 call!41759 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))

(declare-fun c!99863 () Bool)

(declare-fun call!41756 () ListLongMap!13323)

(declare-fun call!41760 () ListLongMap!13323)

(declare-fun call!41762 () ListLongMap!13323)

(declare-fun bm!41755 () Bool)

(declare-fun c!99864 () Bool)

(assert (=> bm!41755 (= call!41759 (+!2884 (ite c!99863 call!41760 (ite c!99864 call!41756 call!41762)) (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(declare-fun b!976484 () Bool)

(declare-fun get!15205 (ValueCell!10746 V!34923) V!34923)

(declare-fun dynLambda!1723 (Int (_ BitVec 64)) V!34923)

(assert (=> b!976484 (= e!550342 (= (apply!925 lt!433154 (select (arr!29321 _keys!1717) from!2118)) (get!15205 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976484 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29802 _values!1425)))))

(assert (=> b!976484 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun b!976485 () Bool)

(declare-fun c!99866 () Bool)

(assert (=> b!976485 (= c!99866 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!550341 () ListLongMap!13323)

(declare-fun e!550340 () ListLongMap!13323)

(assert (=> b!976485 (= e!550341 e!550340)))

(declare-fun b!976486 () Bool)

(assert (=> b!976486 (= e!550341 call!41758)))

(declare-fun b!976487 () Bool)

(assert (=> b!976487 (= e!550343 e!550341)))

(assert (=> b!976487 (= c!99864 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!116383 () Bool)

(assert (=> d!116383 e!550345))

(declare-fun res!653807 () Bool)

(assert (=> d!116383 (=> (not res!653807) (not e!550345))))

(assert (=> d!116383 (= res!653807 (or (bvsge from!2118 (size!29801 _keys!1717)) (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)))))))

(declare-fun lt!433150 () ListLongMap!13323)

(assert (=> d!116383 (= lt!433154 lt!433150)))

(declare-fun lt!433149 () Unit!32429)

(assert (=> d!116383 (= lt!433149 e!550346)))

(declare-fun c!99868 () Bool)

(declare-fun e!550347 () Bool)

(assert (=> d!116383 (= c!99868 e!550347)))

(declare-fun res!653815 () Bool)

(assert (=> d!116383 (=> (not res!653815) (not e!550347))))

(assert (=> d!116383 (= res!653815 (bvslt from!2118 (size!29801 _keys!1717)))))

(assert (=> d!116383 (= lt!433150 e!550343)))

(assert (=> d!116383 (= c!99863 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!116383 (validMask!0 mask!2147)))

(assert (=> d!116383 (= (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) lt!433154)))

(declare-fun b!976488 () Bool)

(declare-fun res!653809 () Bool)

(assert (=> b!976488 (=> (not res!653809) (not e!550345))))

(assert (=> b!976488 (= res!653809 e!550337)))

(declare-fun c!99867 () Bool)

(assert (=> b!976488 (= c!99867 (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!976489 () Bool)

(assert (=> b!976489 (= e!550340 call!41758)))

(declare-fun bm!41756 () Bool)

(assert (=> bm!41756 (= call!41762 call!41756)))

(declare-fun bm!41757 () Bool)

(assert (=> bm!41757 (= call!41760 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))

(declare-fun b!976490 () Bool)

(assert (=> b!976490 (= e!550347 (validKeyInArray!0 (select (arr!29321 _keys!1717) from!2118)))))

(declare-fun b!976491 () Bool)

(assert (=> b!976491 (= e!550340 call!41762)))

(declare-fun b!976492 () Bool)

(assert (=> b!976492 (= e!550337 (not call!41761))))

(declare-fun bm!41758 () Bool)

(assert (=> bm!41758 (= call!41757 (contains!5708 lt!433154 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976493 () Bool)

(assert (=> b!976493 (= e!550339 (not call!41757))))

(declare-fun b!976494 () Bool)

(declare-fun Unit!32432 () Unit!32429)

(assert (=> b!976494 (= e!550346 Unit!32432)))

(declare-fun bm!41759 () Bool)

(assert (=> bm!41759 (= call!41756 call!41760)))

(declare-fun b!976495 () Bool)

(assert (=> b!976495 (= e!550335 (validKeyInArray!0 (select (arr!29321 _keys!1717) from!2118)))))

(assert (= (and d!116383 c!99863) b!976483))

(assert (= (and d!116383 (not c!99863)) b!976487))

(assert (= (and b!976487 c!99864) b!976486))

(assert (= (and b!976487 (not c!99864)) b!976485))

(assert (= (and b!976485 c!99866) b!976489))

(assert (= (and b!976485 (not c!99866)) b!976491))

(assert (= (or b!976489 b!976491) bm!41756))

(assert (= (or b!976486 bm!41756) bm!41759))

(assert (= (or b!976486 b!976489) bm!41753))

(assert (= (or b!976483 bm!41759) bm!41757))

(assert (= (or b!976483 bm!41753) bm!41755))

(assert (= (and d!116383 res!653815) b!976490))

(assert (= (and d!116383 c!99868) b!976479))

(assert (= (and d!116383 (not c!99868)) b!976494))

(assert (= (and d!116383 res!653807) b!976481))

(assert (= (and b!976481 res!653813) b!976495))

(assert (= (and b!976481 (not res!653811)) b!976475))

(assert (= (and b!976475 res!653808) b!976484))

(assert (= (and b!976481 res!653812) b!976488))

(assert (= (and b!976488 c!99867) b!976477))

(assert (= (and b!976488 (not c!99867)) b!976492))

(assert (= (and b!976477 res!653814) b!976482))

(assert (= (or b!976477 b!976492) bm!41754))

(assert (= (and b!976488 res!653809) b!976480))

(assert (= (and b!976480 c!99865) b!976476))

(assert (= (and b!976480 (not c!99865)) b!976493))

(assert (= (and b!976476 res!653810) b!976478))

(assert (= (or b!976476 b!976493) bm!41758))

(declare-fun b_lambda!14611 () Bool)

(assert (=> (not b_lambda!14611) (not b!976484)))

(declare-fun t!29010 () Bool)

(declare-fun tb!6373 () Bool)

(assert (=> (and start!83592 (= defaultEntry!1428 defaultEntry!1428) t!29010) tb!6373))

(declare-fun result!12715 () Bool)

(assert (=> tb!6373 (= result!12715 tp_is_empty!22455)))

(assert (=> b!976484 t!29010))

(declare-fun b_and!31211 () Bool)

(assert (= b_and!31207 (and (=> t!29010 result!12715) b_and!31211)))

(declare-fun m!903781 () Bool)

(assert (=> b!976478 m!903781))

(declare-fun m!903783 () Bool)

(assert (=> bm!41754 m!903783))

(declare-fun m!903785 () Bool)

(assert (=> b!976483 m!903785))

(declare-fun m!903787 () Bool)

(assert (=> bm!41755 m!903787))

(declare-fun m!903789 () Bool)

(assert (=> b!976475 m!903789))

(assert (=> b!976475 m!903789))

(declare-fun m!903791 () Bool)

(assert (=> b!976475 m!903791))

(assert (=> d!116383 m!903717))

(declare-fun m!903793 () Bool)

(assert (=> b!976482 m!903793))

(assert (=> b!976495 m!903789))

(assert (=> b!976495 m!903789))

(declare-fun m!903795 () Bool)

(assert (=> b!976495 m!903795))

(declare-fun m!903797 () Bool)

(assert (=> b!976479 m!903797))

(declare-fun m!903799 () Bool)

(assert (=> b!976479 m!903799))

(declare-fun m!903801 () Bool)

(assert (=> b!976479 m!903801))

(declare-fun m!903803 () Bool)

(assert (=> b!976479 m!903803))

(declare-fun m!903805 () Bool)

(assert (=> b!976479 m!903805))

(declare-fun m!903807 () Bool)

(assert (=> b!976479 m!903807))

(declare-fun m!903809 () Bool)

(assert (=> b!976479 m!903809))

(declare-fun m!903811 () Bool)

(assert (=> b!976479 m!903811))

(assert (=> b!976479 m!903799))

(declare-fun m!903813 () Bool)

(assert (=> b!976479 m!903813))

(assert (=> b!976479 m!903813))

(declare-fun m!903815 () Bool)

(assert (=> b!976479 m!903815))

(declare-fun m!903817 () Bool)

(assert (=> b!976479 m!903817))

(declare-fun m!903819 () Bool)

(assert (=> b!976479 m!903819))

(assert (=> b!976479 m!903817))

(declare-fun m!903821 () Bool)

(assert (=> b!976479 m!903821))

(declare-fun m!903823 () Bool)

(assert (=> b!976479 m!903823))

(declare-fun m!903825 () Bool)

(assert (=> b!976479 m!903825))

(declare-fun m!903827 () Bool)

(assert (=> b!976479 m!903827))

(assert (=> b!976479 m!903807))

(assert (=> b!976479 m!903789))

(assert (=> b!976490 m!903789))

(assert (=> b!976490 m!903789))

(assert (=> b!976490 m!903795))

(declare-fun m!903829 () Bool)

(assert (=> bm!41758 m!903829))

(assert (=> bm!41757 m!903821))

(declare-fun m!903831 () Bool)

(assert (=> b!976484 m!903831))

(declare-fun m!903833 () Bool)

(assert (=> b!976484 m!903833))

(declare-fun m!903835 () Bool)

(assert (=> b!976484 m!903835))

(assert (=> b!976484 m!903789))

(assert (=> b!976484 m!903831))

(assert (=> b!976484 m!903833))

(assert (=> b!976484 m!903789))

(declare-fun m!903837 () Bool)

(assert (=> b!976484 m!903837))

(assert (=> b!976382 d!116383))

(declare-fun d!116385 () Bool)

(assert (=> d!116385 (= (validKeyInArray!0 (select (arr!29321 _keys!1717) i!822)) (and (not (= (select (arr!29321 _keys!1717) i!822) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!29321 _keys!1717) i!822) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976384 d!116385))

(declare-fun d!116387 () Bool)

(assert (=> d!116387 (= (validMask!0 mask!2147) (and (or (= mask!2147 #b00000000000000000000000000000111) (= mask!2147 #b00000000000000000000000000001111) (= mask!2147 #b00000000000000000000000000011111) (= mask!2147 #b00000000000000000000000000111111) (= mask!2147 #b00000000000000000000000001111111) (= mask!2147 #b00000000000000000000000011111111) (= mask!2147 #b00000000000000000000000111111111) (= mask!2147 #b00000000000000000000001111111111) (= mask!2147 #b00000000000000000000011111111111) (= mask!2147 #b00000000000000000000111111111111) (= mask!2147 #b00000000000000000001111111111111) (= mask!2147 #b00000000000000000011111111111111) (= mask!2147 #b00000000000000000111111111111111) (= mask!2147 #b00000000000000001111111111111111) (= mask!2147 #b00000000000000011111111111111111) (= mask!2147 #b00000000000000111111111111111111) (= mask!2147 #b00000000000001111111111111111111) (= mask!2147 #b00000000000011111111111111111111) (= mask!2147 #b00000000000111111111111111111111) (= mask!2147 #b00000000001111111111111111111111) (= mask!2147 #b00000000011111111111111111111111) (= mask!2147 #b00000000111111111111111111111111) (= mask!2147 #b00000001111111111111111111111111) (= mask!2147 #b00000011111111111111111111111111) (= mask!2147 #b00000111111111111111111111111111) (= mask!2147 #b00001111111111111111111111111111) (= mask!2147 #b00011111111111111111111111111111) (= mask!2147 #b00111111111111111111111111111111)) (bvsle mask!2147 #b00111111111111111111111111111111)))))

(assert (=> start!83592 d!116387))

(declare-fun d!116389 () Bool)

(assert (=> d!116389 (= (array_inv!22575 _values!1425) (bvsge (size!29802 _values!1425) #b00000000000000000000000000000000))))

(assert (=> start!83592 d!116389))

(declare-fun d!116391 () Bool)

(assert (=> d!116391 (= (array_inv!22576 _keys!1717) (bvsge (size!29801 _keys!1717) #b00000000000000000000000000000000))))

(assert (=> start!83592 d!116391))

(declare-fun b!976508 () Bool)

(declare-fun e!550357 () Bool)

(declare-fun e!550356 () Bool)

(assert (=> b!976508 (= e!550357 e!550356)))

(declare-fun res!653824 () Bool)

(assert (=> b!976508 (=> (not res!653824) (not e!550356))))

(declare-fun e!550358 () Bool)

(assert (=> b!976508 (= res!653824 (not e!550358))))

(declare-fun res!653822 () Bool)

(assert (=> b!976508 (=> (not res!653822) (not e!550358))))

(assert (=> b!976508 (= res!653822 (validKeyInArray!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun d!116393 () Bool)

(declare-fun res!653823 () Bool)

(assert (=> d!116393 (=> res!653823 e!550357)))

(assert (=> d!116393 (= res!653823 (bvsge #b00000000000000000000000000000000 (size!29801 _keys!1717)))))

(assert (=> d!116393 (= (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20481) e!550357)))

(declare-fun b!976509 () Bool)

(declare-fun e!550359 () Bool)

(declare-fun call!41765 () Bool)

(assert (=> b!976509 (= e!550359 call!41765)))

(declare-fun bm!41762 () Bool)

(declare-fun c!99871 () Bool)

(assert (=> bm!41762 (= call!41765 (arrayNoDuplicates!0 _keys!1717 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99871 (Cons!20480 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) Nil!20481) Nil!20481)))))

(declare-fun b!976510 () Bool)

(assert (=> b!976510 (= e!550359 call!41765)))

(declare-fun b!976511 () Bool)

(assert (=> b!976511 (= e!550356 e!550359)))

(assert (=> b!976511 (= c!99871 (validKeyInArray!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!976512 () Bool)

(declare-fun contains!5710 (List!20484 (_ BitVec 64)) Bool)

(assert (=> b!976512 (= e!550358 (contains!5710 Nil!20481 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(assert (= (and d!116393 (not res!653823)) b!976508))

(assert (= (and b!976508 res!653822) b!976512))

(assert (= (and b!976508 res!653824) b!976511))

(assert (= (and b!976511 c!99871) b!976510))

(assert (= (and b!976511 (not c!99871)) b!976509))

(assert (= (or b!976510 b!976509) bm!41762))

(declare-fun m!903839 () Bool)

(assert (=> b!976508 m!903839))

(assert (=> b!976508 m!903839))

(declare-fun m!903841 () Bool)

(assert (=> b!976508 m!903841))

(assert (=> bm!41762 m!903839))

(declare-fun m!903843 () Bool)

(assert (=> bm!41762 m!903843))

(assert (=> b!976511 m!903839))

(assert (=> b!976511 m!903839))

(assert (=> b!976511 m!903841))

(assert (=> b!976512 m!903839))

(assert (=> b!976512 m!903839))

(declare-fun m!903845 () Bool)

(assert (=> b!976512 m!903845))

(assert (=> b!976380 d!116393))

(declare-fun d!116395 () Bool)

(declare-fun e!550360 () Bool)

(assert (=> d!116395 e!550360))

(declare-fun res!653825 () Bool)

(assert (=> d!116395 (=> res!653825 e!550360)))

(declare-fun lt!433171 () Bool)

(assert (=> d!116395 (= res!653825 (not lt!433171))))

(declare-fun lt!433172 () Bool)

(assert (=> d!116395 (= lt!433171 lt!433172)))

(declare-fun lt!433170 () Unit!32429)

(declare-fun e!550361 () Unit!32429)

(assert (=> d!116395 (= lt!433170 e!550361)))

(declare-fun c!99872 () Bool)

(assert (=> d!116395 (= c!99872 lt!433172)))

(assert (=> d!116395 (= lt!433172 (containsKey!477 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(assert (=> d!116395 (= (contains!5708 lt!433087 (select (arr!29321 _keys!1717) i!822)) lt!433171)))

(declare-fun b!976513 () Bool)

(declare-fun lt!433169 () Unit!32429)

(assert (=> b!976513 (= e!550361 lt!433169)))

(assert (=> b!976513 (= lt!433169 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(assert (=> b!976513 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun b!976514 () Bool)

(declare-fun Unit!32433 () Unit!32429)

(assert (=> b!976514 (= e!550361 Unit!32433)))

(declare-fun b!976515 () Bool)

(assert (=> b!976515 (= e!550360 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822))))))

(assert (= (and d!116395 c!99872) b!976513))

(assert (= (and d!116395 (not c!99872)) b!976514))

(assert (= (and d!116395 (not res!653825)) b!976515))

(assert (=> d!116395 m!903727))

(declare-fun m!903847 () Bool)

(assert (=> d!116395 m!903847))

(assert (=> b!976513 m!903727))

(declare-fun m!903849 () Bool)

(assert (=> b!976513 m!903849))

(assert (=> b!976513 m!903727))

(declare-fun m!903851 () Bool)

(assert (=> b!976513 m!903851))

(assert (=> b!976513 m!903851))

(declare-fun m!903853 () Bool)

(assert (=> b!976513 m!903853))

(assert (=> b!976515 m!903727))

(assert (=> b!976515 m!903851))

(assert (=> b!976515 m!903851))

(assert (=> b!976515 m!903853))

(assert (=> b!976387 d!116395))

(declare-fun b!976524 () Bool)

(declare-fun e!550370 () Bool)

(declare-fun e!550368 () Bool)

(assert (=> b!976524 (= e!550370 e!550368)))

(declare-fun c!99875 () Bool)

(assert (=> b!976524 (= c!99875 (validKeyInArray!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun d!116397 () Bool)

(declare-fun res!653830 () Bool)

(assert (=> d!116397 (=> res!653830 e!550370)))

(assert (=> d!116397 (= res!653830 (bvsge #b00000000000000000000000000000000 (size!29801 _keys!1717)))))

(assert (=> d!116397 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147) e!550370)))

(declare-fun b!976525 () Bool)

(declare-fun call!41768 () Bool)

(assert (=> b!976525 (= e!550368 call!41768)))

(declare-fun b!976526 () Bool)

(declare-fun e!550369 () Bool)

(assert (=> b!976526 (= e!550369 call!41768)))

(declare-fun b!976527 () Bool)

(assert (=> b!976527 (= e!550368 e!550369)))

(declare-fun lt!433179 () (_ BitVec 64))

(assert (=> b!976527 (= lt!433179 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000))))

(declare-fun lt!433180 () Unit!32429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!60923 (_ BitVec 64) (_ BitVec 32)) Unit!32429)

(assert (=> b!976527 (= lt!433180 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!433179 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!60923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!976527 (arrayContainsKey!0 _keys!1717 lt!433179 #b00000000000000000000000000000000)))

(declare-fun lt!433181 () Unit!32429)

(assert (=> b!976527 (= lt!433181 lt!433180)))

(declare-fun res!653831 () Bool)

(declare-datatypes ((SeekEntryResult!9189 0))(
  ( (MissingZero!9189 (index!39126 (_ BitVec 32))) (Found!9189 (index!39127 (_ BitVec 32))) (Intermediate!9189 (undefined!10001 Bool) (index!39128 (_ BitVec 32)) (x!84480 (_ BitVec 32))) (Undefined!9189) (MissingVacant!9189 (index!39129 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!60923 (_ BitVec 32)) SeekEntryResult!9189)

(assert (=> b!976527 (= res!653831 (= (seekEntryOrOpen!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) (Found!9189 #b00000000000000000000000000000000)))))

(assert (=> b!976527 (=> (not res!653831) (not e!550369))))

(declare-fun bm!41765 () Bool)

(assert (=> bm!41765 (= call!41768 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(assert (= (and d!116397 (not res!653830)) b!976524))

(assert (= (and b!976524 c!99875) b!976527))

(assert (= (and b!976524 (not c!99875)) b!976525))

(assert (= (and b!976527 res!653831) b!976526))

(assert (= (or b!976526 b!976525) bm!41765))

(assert (=> b!976524 m!903839))

(assert (=> b!976524 m!903839))

(assert (=> b!976524 m!903841))

(assert (=> b!976527 m!903839))

(declare-fun m!903855 () Bool)

(assert (=> b!976527 m!903855))

(declare-fun m!903857 () Bool)

(assert (=> b!976527 m!903857))

(assert (=> b!976527 m!903839))

(declare-fun m!903859 () Bool)

(assert (=> b!976527 m!903859))

(declare-fun m!903861 () Bool)

(assert (=> bm!41765 m!903861))

(assert (=> b!976390 d!116397))

(declare-fun d!116399 () Bool)

(assert (=> d!116399 (= (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))) (and (not (= (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976381 d!116399))

(declare-fun b!976528 () Bool)

(declare-fun e!550372 () Bool)

(declare-fun e!550378 () Bool)

(assert (=> b!976528 (= e!550372 e!550378)))

(declare-fun res!653833 () Bool)

(assert (=> b!976528 (=> (not res!653833) (not e!550378))))

(declare-fun lt!433189 () ListLongMap!13323)

(assert (=> b!976528 (= res!653833 (contains!5708 lt!433189 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (=> b!976528 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun bm!41766 () Bool)

(declare-fun call!41771 () ListLongMap!13323)

(declare-fun call!41772 () ListLongMap!13323)

(assert (=> bm!41766 (= call!41771 call!41772)))

(declare-fun b!976529 () Bool)

(declare-fun e!550375 () Bool)

(declare-fun e!550380 () Bool)

(assert (=> b!976529 (= e!550375 e!550380)))

(declare-fun res!653835 () Bool)

(declare-fun call!41770 () Bool)

(assert (=> b!976529 (= res!653835 call!41770)))

(assert (=> b!976529 (=> (not res!653835) (not e!550380))))

(declare-fun bm!41767 () Bool)

(declare-fun call!41774 () Bool)

(assert (=> bm!41767 (= call!41774 (contains!5708 lt!433189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976530 () Bool)

(declare-fun e!550373 () Bool)

(declare-fun e!550374 () Bool)

(assert (=> b!976530 (= e!550373 e!550374)))

(declare-fun res!653839 () Bool)

(assert (=> b!976530 (= res!653839 call!41774)))

(assert (=> b!976530 (=> (not res!653839) (not e!550374))))

(declare-fun b!976531 () Bool)

(assert (=> b!976531 (= e!550380 (= (apply!925 lt!433189 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1367))))

(declare-fun b!976532 () Bool)

(declare-fun e!550382 () Unit!32429)

(declare-fun lt!433194 () Unit!32429)

(assert (=> b!976532 (= e!550382 lt!433194)))

(declare-fun lt!433201 () ListLongMap!13323)

(assert (=> b!976532 (= lt!433201 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun lt!433183 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433183 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433193 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433193 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!433195 () Unit!32429)

(assert (=> b!976532 (= lt!433195 (addStillContains!617 lt!433201 lt!433183 zeroValue!1367 lt!433193))))

(assert (=> b!976532 (contains!5708 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367)) lt!433193)))

(declare-fun lt!433188 () Unit!32429)

(assert (=> b!976532 (= lt!433188 lt!433195)))

(declare-fun lt!433191 () ListLongMap!13323)

(assert (=> b!976532 (= lt!433191 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun lt!433190 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433190 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433182 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433182 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!433203 () Unit!32429)

(assert (=> b!976532 (= lt!433203 (addApplyDifferent!469 lt!433191 lt!433190 minValue!1367 lt!433182))))

(assert (=> b!976532 (= (apply!925 (+!2884 lt!433191 (tuple2!14613 lt!433190 minValue!1367)) lt!433182) (apply!925 lt!433191 lt!433182))))

(declare-fun lt!433186 () Unit!32429)

(assert (=> b!976532 (= lt!433186 lt!433203)))

(declare-fun lt!433198 () ListLongMap!13323)

(assert (=> b!976532 (= lt!433198 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun lt!433192 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433192 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433187 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433187 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!433200 () Unit!32429)

(assert (=> b!976532 (= lt!433200 (addApplyDifferent!469 lt!433198 lt!433192 zeroValue!1367 lt!433187))))

(assert (=> b!976532 (= (apply!925 (+!2884 lt!433198 (tuple2!14613 lt!433192 zeroValue!1367)) lt!433187) (apply!925 lt!433198 lt!433187))))

(declare-fun lt!433197 () Unit!32429)

(assert (=> b!976532 (= lt!433197 lt!433200)))

(declare-fun lt!433196 () ListLongMap!13323)

(assert (=> b!976532 (= lt!433196 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun lt!433202 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433202 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!433199 () (_ BitVec 64))

(assert (=> b!976532 (= lt!433199 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!976532 (= lt!433194 (addApplyDifferent!469 lt!433196 lt!433202 minValue!1367 lt!433199))))

(assert (=> b!976532 (= (apply!925 (+!2884 lt!433196 (tuple2!14613 lt!433202 minValue!1367)) lt!433199) (apply!925 lt!433196 lt!433199))))

(declare-fun b!976533 () Bool)

(declare-fun e!550381 () Bool)

(assert (=> b!976533 (= e!550381 e!550375)))

(declare-fun c!99878 () Bool)

(assert (=> b!976533 (= c!99878 (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!976534 () Bool)

(declare-fun res!653837 () Bool)

(assert (=> b!976534 (=> (not res!653837) (not e!550381))))

(assert (=> b!976534 (= res!653837 e!550372)))

(declare-fun res!653836 () Bool)

(assert (=> b!976534 (=> res!653836 e!550372)))

(declare-fun e!550371 () Bool)

(assert (=> b!976534 (= res!653836 (not e!550371))))

(declare-fun res!653838 () Bool)

(assert (=> b!976534 (=> (not res!653838) (not e!550371))))

(assert (=> b!976534 (= res!653838 (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun b!976535 () Bool)

(assert (=> b!976535 (= e!550374 (= (apply!925 lt!433189 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1367))))

(declare-fun b!976536 () Bool)

(declare-fun e!550379 () ListLongMap!13323)

(assert (=> b!976536 (= e!550379 (+!2884 call!41772 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))

(declare-fun call!41769 () ListLongMap!13323)

(declare-fun call!41775 () ListLongMap!13323)

(declare-fun c!99876 () Bool)

(declare-fun c!99877 () Bool)

(declare-fun bm!41768 () Bool)

(declare-fun call!41773 () ListLongMap!13323)

(assert (=> bm!41768 (= call!41772 (+!2884 (ite c!99876 call!41773 (ite c!99877 call!41769 call!41775)) (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(declare-fun b!976537 () Bool)

(assert (=> b!976537 (= e!550378 (= (apply!925 lt!433189 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))) (get!15205 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976537 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29802 _values!1425)))))

(assert (=> b!976537 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun b!976538 () Bool)

(declare-fun c!99879 () Bool)

(assert (=> b!976538 (= c!99879 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!550377 () ListLongMap!13323)

(declare-fun e!550376 () ListLongMap!13323)

(assert (=> b!976538 (= e!550377 e!550376)))

(declare-fun b!976539 () Bool)

(assert (=> b!976539 (= e!550377 call!41771)))

(declare-fun b!976540 () Bool)

(assert (=> b!976540 (= e!550379 e!550377)))

(assert (=> b!976540 (= c!99877 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!116401 () Bool)

(assert (=> d!116401 e!550381))

(declare-fun res!653832 () Bool)

(assert (=> d!116401 (=> (not res!653832) (not e!550381))))

(assert (=> d!116401 (= res!653832 (or (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)) (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))))

(declare-fun lt!433185 () ListLongMap!13323)

(assert (=> d!116401 (= lt!433189 lt!433185)))

(declare-fun lt!433184 () Unit!32429)

(assert (=> d!116401 (= lt!433184 e!550382)))

(declare-fun c!99881 () Bool)

(declare-fun e!550383 () Bool)

(assert (=> d!116401 (= c!99881 e!550383)))

(declare-fun res!653840 () Bool)

(assert (=> d!116401 (=> (not res!653840) (not e!550383))))

(assert (=> d!116401 (= res!653840 (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(assert (=> d!116401 (= lt!433185 e!550379)))

(assert (=> d!116401 (= c!99876 (and (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1346 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!116401 (validMask!0 mask!2147)))

(assert (=> d!116401 (= (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428) lt!433189)))

(declare-fun b!976541 () Bool)

(declare-fun res!653834 () Bool)

(assert (=> b!976541 (=> (not res!653834) (not e!550381))))

(assert (=> b!976541 (= res!653834 e!550373)))

(declare-fun c!99880 () Bool)

(assert (=> b!976541 (= c!99880 (not (= (bvand extraKeys!1346 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!976542 () Bool)

(assert (=> b!976542 (= e!550376 call!41771)))

(declare-fun bm!41769 () Bool)

(assert (=> bm!41769 (= call!41775 call!41769)))

(declare-fun bm!41770 () Bool)

(assert (=> bm!41770 (= call!41773 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976543 () Bool)

(assert (=> b!976543 (= e!550383 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(declare-fun b!976544 () Bool)

(assert (=> b!976544 (= e!550376 call!41775)))

(declare-fun b!976545 () Bool)

(assert (=> b!976545 (= e!550373 (not call!41774))))

(declare-fun bm!41771 () Bool)

(assert (=> bm!41771 (= call!41770 (contains!5708 lt!433189 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976546 () Bool)

(assert (=> b!976546 (= e!550375 (not call!41770))))

(declare-fun b!976547 () Bool)

(declare-fun Unit!32434 () Unit!32429)

(assert (=> b!976547 (= e!550382 Unit!32434)))

(declare-fun bm!41772 () Bool)

(assert (=> bm!41772 (= call!41769 call!41773)))

(declare-fun b!976548 () Bool)

(assert (=> b!976548 (= e!550371 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (= (and d!116401 c!99876) b!976536))

(assert (= (and d!116401 (not c!99876)) b!976540))

(assert (= (and b!976540 c!99877) b!976539))

(assert (= (and b!976540 (not c!99877)) b!976538))

(assert (= (and b!976538 c!99879) b!976542))

(assert (= (and b!976538 (not c!99879)) b!976544))

(assert (= (or b!976542 b!976544) bm!41769))

(assert (= (or b!976539 bm!41769) bm!41772))

(assert (= (or b!976539 b!976542) bm!41766))

(assert (= (or b!976536 bm!41772) bm!41770))

(assert (= (or b!976536 bm!41766) bm!41768))

(assert (= (and d!116401 res!653840) b!976543))

(assert (= (and d!116401 c!99881) b!976532))

(assert (= (and d!116401 (not c!99881)) b!976547))

(assert (= (and d!116401 res!653832) b!976534))

(assert (= (and b!976534 res!653838) b!976548))

(assert (= (and b!976534 (not res!653836)) b!976528))

(assert (= (and b!976528 res!653833) b!976537))

(assert (= (and b!976534 res!653837) b!976541))

(assert (= (and b!976541 c!99880) b!976530))

(assert (= (and b!976541 (not c!99880)) b!976545))

(assert (= (and b!976530 res!653839) b!976535))

(assert (= (or b!976530 b!976545) bm!41767))

(assert (= (and b!976541 res!653834) b!976533))

(assert (= (and b!976533 c!99878) b!976529))

(assert (= (and b!976533 (not c!99878)) b!976546))

(assert (= (and b!976529 res!653835) b!976531))

(assert (= (or b!976529 b!976546) bm!41771))

(declare-fun b_lambda!14613 () Bool)

(assert (=> (not b_lambda!14613) (not b!976537)))

(assert (=> b!976537 t!29010))

(declare-fun b_and!31213 () Bool)

(assert (= b_and!31211 (and (=> t!29010 result!12715) b_and!31213)))

(declare-fun m!903863 () Bool)

(assert (=> b!976531 m!903863))

(declare-fun m!903865 () Bool)

(assert (=> bm!41767 m!903865))

(declare-fun m!903867 () Bool)

(assert (=> b!976536 m!903867))

(declare-fun m!903869 () Bool)

(assert (=> bm!41768 m!903869))

(assert (=> b!976528 m!903737))

(assert (=> b!976528 m!903737))

(declare-fun m!903871 () Bool)

(assert (=> b!976528 m!903871))

(assert (=> d!116401 m!903717))

(declare-fun m!903873 () Bool)

(assert (=> b!976535 m!903873))

(assert (=> b!976548 m!903737))

(assert (=> b!976548 m!903737))

(assert (=> b!976548 m!903739))

(declare-fun m!903875 () Bool)

(assert (=> b!976532 m!903875))

(declare-fun m!903877 () Bool)

(assert (=> b!976532 m!903877))

(declare-fun m!903879 () Bool)

(assert (=> b!976532 m!903879))

(declare-fun m!903881 () Bool)

(assert (=> b!976532 m!903881))

(declare-fun m!903883 () Bool)

(assert (=> b!976532 m!903883))

(declare-fun m!903885 () Bool)

(assert (=> b!976532 m!903885))

(declare-fun m!903887 () Bool)

(assert (=> b!976532 m!903887))

(declare-fun m!903889 () Bool)

(assert (=> b!976532 m!903889))

(assert (=> b!976532 m!903877))

(declare-fun m!903891 () Bool)

(assert (=> b!976532 m!903891))

(assert (=> b!976532 m!903891))

(declare-fun m!903893 () Bool)

(assert (=> b!976532 m!903893))

(declare-fun m!903895 () Bool)

(assert (=> b!976532 m!903895))

(declare-fun m!903897 () Bool)

(assert (=> b!976532 m!903897))

(assert (=> b!976532 m!903895))

(declare-fun m!903899 () Bool)

(assert (=> b!976532 m!903899))

(declare-fun m!903901 () Bool)

(assert (=> b!976532 m!903901))

(declare-fun m!903903 () Bool)

(assert (=> b!976532 m!903903))

(declare-fun m!903905 () Bool)

(assert (=> b!976532 m!903905))

(assert (=> b!976532 m!903885))

(assert (=> b!976532 m!903737))

(assert (=> b!976543 m!903737))

(assert (=> b!976543 m!903737))

(assert (=> b!976543 m!903739))

(declare-fun m!903907 () Bool)

(assert (=> bm!41771 m!903907))

(assert (=> bm!41770 m!903899))

(declare-fun m!903909 () Bool)

(assert (=> b!976537 m!903909))

(assert (=> b!976537 m!903833))

(declare-fun m!903911 () Bool)

(assert (=> b!976537 m!903911))

(assert (=> b!976537 m!903737))

(assert (=> b!976537 m!903909))

(assert (=> b!976537 m!903833))

(assert (=> b!976537 m!903737))

(declare-fun m!903913 () Bool)

(assert (=> b!976537 m!903913))

(assert (=> b!976381 d!116401))

(declare-fun mapIsEmpty!35698 () Bool)

(declare-fun mapRes!35698 () Bool)

(assert (=> mapIsEmpty!35698 mapRes!35698))

(declare-fun mapNonEmpty!35698 () Bool)

(declare-fun tp!67951 () Bool)

(declare-fun e!550388 () Bool)

(assert (=> mapNonEmpty!35698 (= mapRes!35698 (and tp!67951 e!550388))))

(declare-fun mapValue!35698 () ValueCell!10746)

(declare-fun mapKey!35698 () (_ BitVec 32))

(declare-fun mapRest!35698 () (Array (_ BitVec 32) ValueCell!10746))

(assert (=> mapNonEmpty!35698 (= mapRest!35692 (store mapRest!35698 mapKey!35698 mapValue!35698))))

(declare-fun b!976556 () Bool)

(declare-fun e!550389 () Bool)

(assert (=> b!976556 (= e!550389 tp_is_empty!22455)))

(declare-fun condMapEmpty!35698 () Bool)

(declare-fun mapDefault!35698 () ValueCell!10746)

(assert (=> mapNonEmpty!35692 (= condMapEmpty!35698 (= mapRest!35692 ((as const (Array (_ BitVec 32) ValueCell!10746)) mapDefault!35698)))))

(assert (=> mapNonEmpty!35692 (= tp!67941 (and e!550389 mapRes!35698))))

(declare-fun b!976555 () Bool)

(assert (=> b!976555 (= e!550388 tp_is_empty!22455)))

(assert (= (and mapNonEmpty!35692 condMapEmpty!35698) mapIsEmpty!35698))

(assert (= (and mapNonEmpty!35692 (not condMapEmpty!35698)) mapNonEmpty!35698))

(assert (= (and mapNonEmpty!35698 ((_ is ValueCellFull!10746) mapValue!35698)) b!976555))

(assert (= (and mapNonEmpty!35692 ((_ is ValueCellFull!10746) mapDefault!35698)) b!976556))

(declare-fun m!903915 () Bool)

(assert (=> mapNonEmpty!35698 m!903915))

(declare-fun b_lambda!14615 () Bool)

(assert (= b_lambda!14613 (or (and start!83592 b_free!19551) b_lambda!14615)))

(declare-fun b_lambda!14617 () Bool)

(assert (= b_lambda!14611 (or (and start!83592 b_free!19551) b_lambda!14617)))

(check-sat (not b!976475) (not b!976524) (not b!976528) (not b!976508) (not b!976490) (not b_lambda!14617) (not bm!41770) (not b!976537) (not b!976511) (not d!116401) (not bm!41762) (not b_next!19551) (not b!976515) (not b!976478) (not bm!41754) (not b_lambda!14615) (not b!976532) (not b!976483) (not d!116395) (not bm!41765) (not b!976531) (not bm!41768) (not b!976527) (not d!116381) (not b!976512) (not d!116383) b_and!31213 (not b!976513) (not b!976536) (not b!976495) (not bm!41767) (not bm!41771) tp_is_empty!22455 (not b!976430) (not bm!41757) (not bm!41755) (not b!976479) (not mapNonEmpty!35698) (not b!976484) (not b!976482) (not bm!41758) (not b!976535) (not b!976543) (not b!976548) (not b!976432))
(check-sat b_and!31213 (not b_next!19551))
(get-model)

(declare-fun d!116403 () Bool)

(assert (=> d!116403 (= (validKeyInArray!0 (select (arr!29321 _keys!1717) from!2118)) (and (not (= (select (arr!29321 _keys!1717) from!2118) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!29321 _keys!1717) from!2118) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976490 d!116403))

(declare-fun b!976581 () Bool)

(declare-fun e!550405 () Bool)

(assert (=> b!976581 (= e!550405 (validKeyInArray!0 (select (arr!29321 _keys!1717) from!2118)))))

(assert (=> b!976581 (bvsge from!2118 #b00000000000000000000000000000000)))

(declare-fun b!976582 () Bool)

(declare-fun e!550409 () ListLongMap!13323)

(declare-fun e!550406 () ListLongMap!13323)

(assert (=> b!976582 (= e!550409 e!550406)))

(declare-fun c!99892 () Bool)

(assert (=> b!976582 (= c!99892 (validKeyInArray!0 (select (arr!29321 _keys!1717) from!2118)))))

(declare-fun call!41778 () ListLongMap!13323)

(declare-fun bm!41775 () Bool)

(assert (=> bm!41775 (= call!41778 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976583 () Bool)

(declare-fun res!653849 () Bool)

(declare-fun e!550410 () Bool)

(assert (=> b!976583 (=> (not res!653849) (not e!550410))))

(declare-fun lt!433222 () ListLongMap!13323)

(assert (=> b!976583 (= res!653849 (not (contains!5708 lt!433222 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!976584 () Bool)

(declare-fun lt!433219 () Unit!32429)

(declare-fun lt!433223 () Unit!32429)

(assert (=> b!976584 (= lt!433219 lt!433223)))

(declare-fun lt!433224 () ListLongMap!13323)

(declare-fun lt!433218 () (_ BitVec 64))

(declare-fun lt!433221 () (_ BitVec 64))

(declare-fun lt!433220 () V!34923)

(assert (=> b!976584 (not (contains!5708 (+!2884 lt!433224 (tuple2!14613 lt!433218 lt!433220)) lt!433221))))

(declare-fun addStillNotContains!231 (ListLongMap!13323 (_ BitVec 64) V!34923 (_ BitVec 64)) Unit!32429)

(assert (=> b!976584 (= lt!433223 (addStillNotContains!231 lt!433224 lt!433218 lt!433220 lt!433221))))

(assert (=> b!976584 (= lt!433221 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!976584 (= lt!433220 (get!15205 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!976584 (= lt!433218 (select (arr!29321 _keys!1717) from!2118))))

(assert (=> b!976584 (= lt!433224 call!41778)))

(assert (=> b!976584 (= e!550406 (+!2884 call!41778 (tuple2!14613 (select (arr!29321 _keys!1717) from!2118) (get!15205 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!976585 () Bool)

(declare-fun e!550404 () Bool)

(assert (=> b!976585 (= e!550410 e!550404)))

(declare-fun c!99891 () Bool)

(assert (=> b!976585 (= c!99891 e!550405)))

(declare-fun res!653850 () Bool)

(assert (=> b!976585 (=> (not res!653850) (not e!550405))))

(assert (=> b!976585 (= res!653850 (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun d!116405 () Bool)

(assert (=> d!116405 e!550410))

(declare-fun res!653851 () Bool)

(assert (=> d!116405 (=> (not res!653851) (not e!550410))))

(assert (=> d!116405 (= res!653851 (not (contains!5708 lt!433222 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!116405 (= lt!433222 e!550409)))

(declare-fun c!99890 () Bool)

(assert (=> d!116405 (= c!99890 (bvsge from!2118 (size!29801 _keys!1717)))))

(assert (=> d!116405 (validMask!0 mask!2147)))

(assert (=> d!116405 (= (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) lt!433222)))

(declare-fun b!976586 () Bool)

(declare-fun e!550407 () Bool)

(assert (=> b!976586 (= e!550404 e!550407)))

(assert (=> b!976586 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun res!653852 () Bool)

(assert (=> b!976586 (= res!653852 (contains!5708 lt!433222 (select (arr!29321 _keys!1717) from!2118)))))

(assert (=> b!976586 (=> (not res!653852) (not e!550407))))

(declare-fun b!976587 () Bool)

(assert (=> b!976587 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29801 _keys!1717)))))

(assert (=> b!976587 (and (bvsge from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29802 _values!1425)))))

(assert (=> b!976587 (= e!550407 (= (apply!925 lt!433222 (select (arr!29321 _keys!1717) from!2118)) (get!15205 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!976588 () Bool)

(declare-fun e!550408 () Bool)

(assert (=> b!976588 (= e!550404 e!550408)))

(declare-fun c!99893 () Bool)

(assert (=> b!976588 (= c!99893 (bvslt from!2118 (size!29801 _keys!1717)))))

(declare-fun b!976589 () Bool)

(assert (=> b!976589 (= e!550409 (ListLongMap!13324 Nil!20482))))

(declare-fun b!976590 () Bool)

(declare-fun isEmpty!721 (ListLongMap!13323) Bool)

(assert (=> b!976590 (= e!550408 (isEmpty!721 lt!433222))))

(declare-fun b!976591 () Bool)

(assert (=> b!976591 (= e!550408 (= lt!433222 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd from!2118 #b00000000000000000000000000000001) defaultEntry!1428)))))

(declare-fun b!976592 () Bool)

(assert (=> b!976592 (= e!550406 call!41778)))

(assert (= (and d!116405 c!99890) b!976589))

(assert (= (and d!116405 (not c!99890)) b!976582))

(assert (= (and b!976582 c!99892) b!976584))

(assert (= (and b!976582 (not c!99892)) b!976592))

(assert (= (or b!976584 b!976592) bm!41775))

(assert (= (and d!116405 res!653851) b!976583))

(assert (= (and b!976583 res!653849) b!976585))

(assert (= (and b!976585 res!653850) b!976581))

(assert (= (and b!976585 c!99891) b!976586))

(assert (= (and b!976585 (not c!99891)) b!976588))

(assert (= (and b!976586 res!653852) b!976587))

(assert (= (and b!976588 c!99893) b!976591))

(assert (= (and b!976588 (not c!99893)) b!976590))

(declare-fun b_lambda!14619 () Bool)

(assert (=> (not b_lambda!14619) (not b!976584)))

(assert (=> b!976584 t!29010))

(declare-fun b_and!31215 () Bool)

(assert (= b_and!31213 (and (=> t!29010 result!12715) b_and!31215)))

(declare-fun b_lambda!14621 () Bool)

(assert (=> (not b_lambda!14621) (not b!976587)))

(assert (=> b!976587 t!29010))

(declare-fun b_and!31217 () Bool)

(assert (= b_and!31215 (and (=> t!29010 result!12715) b_and!31217)))

(declare-fun m!903917 () Bool)

(assert (=> b!976590 m!903917))

(declare-fun m!903919 () Bool)

(assert (=> b!976591 m!903919))

(assert (=> b!976581 m!903789))

(assert (=> b!976581 m!903789))

(assert (=> b!976581 m!903795))

(assert (=> bm!41775 m!903919))

(assert (=> b!976587 m!903831))

(assert (=> b!976587 m!903789))

(assert (=> b!976587 m!903831))

(assert (=> b!976587 m!903833))

(assert (=> b!976587 m!903835))

(assert (=> b!976587 m!903833))

(assert (=> b!976587 m!903789))

(declare-fun m!903921 () Bool)

(assert (=> b!976587 m!903921))

(declare-fun m!903923 () Bool)

(assert (=> d!116405 m!903923))

(assert (=> d!116405 m!903717))

(declare-fun m!903925 () Bool)

(assert (=> b!976583 m!903925))

(assert (=> b!976586 m!903789))

(assert (=> b!976586 m!903789))

(declare-fun m!903927 () Bool)

(assert (=> b!976586 m!903927))

(assert (=> b!976582 m!903789))

(assert (=> b!976582 m!903789))

(assert (=> b!976582 m!903795))

(assert (=> b!976584 m!903831))

(assert (=> b!976584 m!903789))

(assert (=> b!976584 m!903831))

(assert (=> b!976584 m!903833))

(assert (=> b!976584 m!903835))

(declare-fun m!903929 () Bool)

(assert (=> b!976584 m!903929))

(declare-fun m!903931 () Bool)

(assert (=> b!976584 m!903931))

(assert (=> b!976584 m!903929))

(declare-fun m!903933 () Bool)

(assert (=> b!976584 m!903933))

(assert (=> b!976584 m!903833))

(declare-fun m!903935 () Bool)

(assert (=> b!976584 m!903935))

(assert (=> bm!41757 d!116405))

(declare-fun b!976593 () Bool)

(declare-fun e!550413 () Bool)

(declare-fun e!550411 () Bool)

(assert (=> b!976593 (= e!550413 e!550411)))

(declare-fun c!99894 () Bool)

(assert (=> b!976593 (= c!99894 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!116407 () Bool)

(declare-fun res!653853 () Bool)

(assert (=> d!116407 (=> res!653853 e!550413)))

(assert (=> d!116407 (= res!653853 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(assert (=> d!116407 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1717 mask!2147) e!550413)))

(declare-fun b!976594 () Bool)

(declare-fun call!41779 () Bool)

(assert (=> b!976594 (= e!550411 call!41779)))

(declare-fun b!976595 () Bool)

(declare-fun e!550412 () Bool)

(assert (=> b!976595 (= e!550412 call!41779)))

(declare-fun b!976596 () Bool)

(assert (=> b!976596 (= e!550411 e!550412)))

(declare-fun lt!433225 () (_ BitVec 64))

(assert (=> b!976596 (= lt!433225 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!433226 () Unit!32429)

(assert (=> b!976596 (= lt!433226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!433225 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!976596 (arrayContainsKey!0 _keys!1717 lt!433225 #b00000000000000000000000000000000)))

(declare-fun lt!433227 () Unit!32429)

(assert (=> b!976596 (= lt!433227 lt!433226)))

(declare-fun res!653854 () Bool)

(assert (=> b!976596 (= res!653854 (= (seekEntryOrOpen!0 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1717 mask!2147) (Found!9189 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!976596 (=> (not res!653854) (not e!550412))))

(declare-fun bm!41776 () Bool)

(assert (=> bm!41776 (= call!41779 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1717 mask!2147))))

(assert (= (and d!116407 (not res!653853)) b!976593))

(assert (= (and b!976593 c!99894) b!976596))

(assert (= (and b!976593 (not c!99894)) b!976594))

(assert (= (and b!976596 res!653854) b!976595))

(assert (= (or b!976595 b!976594) bm!41776))

(declare-fun m!903937 () Bool)

(assert (=> b!976593 m!903937))

(assert (=> b!976593 m!903937))

(declare-fun m!903939 () Bool)

(assert (=> b!976593 m!903939))

(assert (=> b!976596 m!903937))

(declare-fun m!903941 () Bool)

(assert (=> b!976596 m!903941))

(declare-fun m!903943 () Bool)

(assert (=> b!976596 m!903943))

(assert (=> b!976596 m!903937))

(declare-fun m!903945 () Bool)

(assert (=> b!976596 m!903945))

(declare-fun m!903947 () Bool)

(assert (=> bm!41776 m!903947))

(assert (=> bm!41765 d!116407))

(declare-fun d!116409 () Bool)

(assert (=> d!116409 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun lt!433230 () Unit!32429)

(declare-fun choose!1609 (List!20485 (_ BitVec 64)) Unit!32429)

(assert (=> d!116409 (= lt!433230 (choose!1609 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun e!550416 () Bool)

(assert (=> d!116409 e!550416))

(declare-fun res!653857 () Bool)

(assert (=> d!116409 (=> (not res!653857) (not e!550416))))

(declare-fun isStrictlySorted!510 (List!20485) Bool)

(assert (=> d!116409 (= res!653857 (isStrictlySorted!510 (toList!6677 lt!433087)))))

(assert (=> d!116409 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)) lt!433230)))

(declare-fun b!976599 () Bool)

(assert (=> b!976599 (= e!550416 (containsKey!477 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))

(assert (= (and d!116409 res!653857) b!976599))

(assert (=> d!116409 m!903727))

(assert (=> d!116409 m!903851))

(assert (=> d!116409 m!903851))

(assert (=> d!116409 m!903853))

(assert (=> d!116409 m!903727))

(declare-fun m!903949 () Bool)

(assert (=> d!116409 m!903949))

(declare-fun m!903951 () Bool)

(assert (=> d!116409 m!903951))

(assert (=> b!976599 m!903727))

(assert (=> b!976599 m!903847))

(assert (=> b!976513 d!116409))

(declare-fun d!116411 () Bool)

(declare-fun isEmpty!722 (Option!518) Bool)

(assert (=> d!116411 (= (isDefined!382 (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822))) (not (isEmpty!722 (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)))))))

(declare-fun bs!27615 () Bool)

(assert (= bs!27615 d!116411))

(assert (=> bs!27615 m!903851))

(declare-fun m!903953 () Bool)

(assert (=> bs!27615 m!903953))

(assert (=> b!976513 d!116411))

(declare-fun d!116413 () Bool)

(declare-fun c!99899 () Bool)

(assert (=> d!116413 (= c!99899 (and ((_ is Cons!20481) (toList!6677 lt!433087)) (= (_1!7316 (h!21643 (toList!6677 lt!433087))) (select (arr!29321 _keys!1717) i!822))))))

(declare-fun e!550421 () Option!518)

(assert (=> d!116413 (= (getValueByKey!512 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)) e!550421)))

(declare-fun b!976608 () Bool)

(assert (=> b!976608 (= e!550421 (Some!517 (_2!7316 (h!21643 (toList!6677 lt!433087)))))))

(declare-fun b!976609 () Bool)

(declare-fun e!550422 () Option!518)

(assert (=> b!976609 (= e!550421 e!550422)))

(declare-fun c!99900 () Bool)

(assert (=> b!976609 (= c!99900 (and ((_ is Cons!20481) (toList!6677 lt!433087)) (not (= (_1!7316 (h!21643 (toList!6677 lt!433087))) (select (arr!29321 _keys!1717) i!822)))))))

(declare-fun b!976610 () Bool)

(assert (=> b!976610 (= e!550422 (getValueByKey!512 (t!29006 (toList!6677 lt!433087)) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun b!976611 () Bool)

(assert (=> b!976611 (= e!550422 None!516)))

(assert (= (and d!116413 c!99899) b!976608))

(assert (= (and d!116413 (not c!99899)) b!976609))

(assert (= (and b!976609 c!99900) b!976610))

(assert (= (and b!976609 (not c!99900)) b!976611))

(assert (=> b!976610 m!903727))

(declare-fun m!903955 () Bool)

(assert (=> b!976610 m!903955))

(assert (=> b!976513 d!116413))

(declare-fun d!116415 () Bool)

(declare-fun e!550423 () Bool)

(assert (=> d!116415 e!550423))

(declare-fun res!653858 () Bool)

(assert (=> d!116415 (=> res!653858 e!550423)))

(declare-fun lt!433233 () Bool)

(assert (=> d!116415 (= res!653858 (not lt!433233))))

(declare-fun lt!433234 () Bool)

(assert (=> d!116415 (= lt!433233 lt!433234)))

(declare-fun lt!433232 () Unit!32429)

(declare-fun e!550424 () Unit!32429)

(assert (=> d!116415 (= lt!433232 e!550424)))

(declare-fun c!99901 () Bool)

(assert (=> d!116415 (= c!99901 lt!433234)))

(assert (=> d!116415 (= lt!433234 (containsKey!477 (toList!6677 lt!433154) (select (arr!29321 _keys!1717) from!2118)))))

(assert (=> d!116415 (= (contains!5708 lt!433154 (select (arr!29321 _keys!1717) from!2118)) lt!433233)))

(declare-fun b!976612 () Bool)

(declare-fun lt!433231 () Unit!32429)

(assert (=> b!976612 (= e!550424 lt!433231)))

(assert (=> b!976612 (= lt!433231 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433154) (select (arr!29321 _keys!1717) from!2118)))))

(assert (=> b!976612 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) (select (arr!29321 _keys!1717) from!2118)))))

(declare-fun b!976613 () Bool)

(declare-fun Unit!32435 () Unit!32429)

(assert (=> b!976613 (= e!550424 Unit!32435)))

(declare-fun b!976614 () Bool)

(assert (=> b!976614 (= e!550423 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) (select (arr!29321 _keys!1717) from!2118))))))

(assert (= (and d!116415 c!99901) b!976612))

(assert (= (and d!116415 (not c!99901)) b!976613))

(assert (= (and d!116415 (not res!653858)) b!976614))

(assert (=> d!116415 m!903789))

(declare-fun m!903957 () Bool)

(assert (=> d!116415 m!903957))

(assert (=> b!976612 m!903789))

(declare-fun m!903959 () Bool)

(assert (=> b!976612 m!903959))

(assert (=> b!976612 m!903789))

(declare-fun m!903961 () Bool)

(assert (=> b!976612 m!903961))

(assert (=> b!976612 m!903961))

(declare-fun m!903963 () Bool)

(assert (=> b!976612 m!903963))

(assert (=> b!976614 m!903789))

(assert (=> b!976614 m!903961))

(assert (=> b!976614 m!903961))

(assert (=> b!976614 m!903963))

(assert (=> b!976475 d!116415))

(declare-fun b!976615 () Bool)

(declare-fun e!550426 () Bool)

(declare-fun e!550425 () Bool)

(assert (=> b!976615 (= e!550426 e!550425)))

(declare-fun res!653861 () Bool)

(assert (=> b!976615 (=> (not res!653861) (not e!550425))))

(declare-fun e!550427 () Bool)

(assert (=> b!976615 (= res!653861 (not e!550427))))

(declare-fun res!653859 () Bool)

(assert (=> b!976615 (=> (not res!653859) (not e!550427))))

(assert (=> b!976615 (= res!653859 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!116417 () Bool)

(declare-fun res!653860 () Bool)

(assert (=> d!116417 (=> res!653860 e!550426)))

(assert (=> d!116417 (= res!653860 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(assert (=> d!116417 (= (arrayNoDuplicates!0 _keys!1717 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99871 (Cons!20480 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) Nil!20481) Nil!20481)) e!550426)))

(declare-fun b!976616 () Bool)

(declare-fun e!550428 () Bool)

(declare-fun call!41780 () Bool)

(assert (=> b!976616 (= e!550428 call!41780)))

(declare-fun bm!41777 () Bool)

(declare-fun c!99902 () Bool)

(assert (=> bm!41777 (= call!41780 (arrayNoDuplicates!0 _keys!1717 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!99902 (Cons!20480 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!99871 (Cons!20480 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) Nil!20481) Nil!20481)) (ite c!99871 (Cons!20480 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) Nil!20481) Nil!20481))))))

(declare-fun b!976617 () Bool)

(assert (=> b!976617 (= e!550428 call!41780)))

(declare-fun b!976618 () Bool)

(assert (=> b!976618 (= e!550425 e!550428)))

(assert (=> b!976618 (= c!99902 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!976619 () Bool)

(assert (=> b!976619 (= e!550427 (contains!5710 (ite c!99871 (Cons!20480 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) Nil!20481) Nil!20481) (select (arr!29321 _keys!1717) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!116417 (not res!653860)) b!976615))

(assert (= (and b!976615 res!653859) b!976619))

(assert (= (and b!976615 res!653861) b!976618))

(assert (= (and b!976618 c!99902) b!976617))

(assert (= (and b!976618 (not c!99902)) b!976616))

(assert (= (or b!976617 b!976616) bm!41777))

(assert (=> b!976615 m!903937))

(assert (=> b!976615 m!903937))

(assert (=> b!976615 m!903939))

(assert (=> bm!41777 m!903937))

(declare-fun m!903965 () Bool)

(assert (=> bm!41777 m!903965))

(assert (=> b!976618 m!903937))

(assert (=> b!976618 m!903937))

(assert (=> b!976618 m!903939))

(assert (=> b!976619 m!903937))

(assert (=> b!976619 m!903937))

(declare-fun m!903967 () Bool)

(assert (=> b!976619 m!903967))

(assert (=> bm!41762 d!116417))

(declare-fun d!116419 () Bool)

(assert (=> d!116419 (= (validKeyInArray!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)) (and (not (= (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!976511 d!116419))

(declare-fun d!116421 () Bool)

(declare-fun lt!433237 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!418 (List!20484) (InoxSet (_ BitVec 64)))

(assert (=> d!116421 (= lt!433237 (select (content!418 Nil!20481) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun e!550434 () Bool)

(assert (=> d!116421 (= lt!433237 e!550434)))

(declare-fun res!653866 () Bool)

(assert (=> d!116421 (=> (not res!653866) (not e!550434))))

(assert (=> d!116421 (= res!653866 ((_ is Cons!20480) Nil!20481))))

(assert (=> d!116421 (= (contains!5710 Nil!20481 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)) lt!433237)))

(declare-fun b!976624 () Bool)

(declare-fun e!550433 () Bool)

(assert (=> b!976624 (= e!550434 e!550433)))

(declare-fun res!653867 () Bool)

(assert (=> b!976624 (=> res!653867 e!550433)))

(assert (=> b!976624 (= res!653867 (= (h!21642 Nil!20481) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!976625 () Bool)

(assert (=> b!976625 (= e!550433 (contains!5710 (t!29005 Nil!20481) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(assert (= (and d!116421 res!653866) b!976624))

(assert (= (and b!976624 (not res!653867)) b!976625))

(declare-fun m!903969 () Bool)

(assert (=> d!116421 m!903969))

(assert (=> d!116421 m!903839))

(declare-fun m!903971 () Bool)

(assert (=> d!116421 m!903971))

(assert (=> b!976625 m!903839))

(declare-fun m!903973 () Bool)

(assert (=> b!976625 m!903973))

(assert (=> b!976512 d!116421))

(assert (=> b!976543 d!116399))

(declare-fun b!976626 () Bool)

(declare-fun e!550436 () Bool)

(assert (=> b!976626 (= e!550436 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (=> b!976626 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!976627 () Bool)

(declare-fun e!550440 () ListLongMap!13323)

(declare-fun e!550437 () ListLongMap!13323)

(assert (=> b!976627 (= e!550440 e!550437)))

(declare-fun c!99905 () Bool)

(assert (=> b!976627 (= c!99905 (validKeyInArray!0 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(declare-fun call!41781 () ListLongMap!13323)

(declare-fun bm!41778 () Bool)

(assert (=> bm!41778 (= call!41781 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976628 () Bool)

(declare-fun res!653868 () Bool)

(declare-fun e!550441 () Bool)

(assert (=> b!976628 (=> (not res!653868) (not e!550441))))

(declare-fun lt!433242 () ListLongMap!13323)

(assert (=> b!976628 (= res!653868 (not (contains!5708 lt!433242 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!976629 () Bool)

(declare-fun lt!433239 () Unit!32429)

(declare-fun lt!433243 () Unit!32429)

(assert (=> b!976629 (= lt!433239 lt!433243)))

(declare-fun lt!433244 () ListLongMap!13323)

(declare-fun lt!433238 () (_ BitVec 64))

(declare-fun lt!433240 () V!34923)

(declare-fun lt!433241 () (_ BitVec 64))

(assert (=> b!976629 (not (contains!5708 (+!2884 lt!433244 (tuple2!14613 lt!433238 lt!433240)) lt!433241))))

(assert (=> b!976629 (= lt!433243 (addStillNotContains!231 lt!433244 lt!433238 lt!433240 lt!433241))))

(assert (=> b!976629 (= lt!433241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!976629 (= lt!433240 (get!15205 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!976629 (= lt!433238 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!976629 (= lt!433244 call!41781)))

(assert (=> b!976629 (= e!550437 (+!2884 call!41781 (tuple2!14613 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)) (get!15205 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!976630 () Bool)

(declare-fun e!550435 () Bool)

(assert (=> b!976630 (= e!550441 e!550435)))

(declare-fun c!99904 () Bool)

(assert (=> b!976630 (= c!99904 e!550436)))

(declare-fun res!653869 () Bool)

(assert (=> b!976630 (=> (not res!653869) (not e!550436))))

(assert (=> b!976630 (= res!653869 (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun d!116423 () Bool)

(assert (=> d!116423 e!550441))

(declare-fun res!653870 () Bool)

(assert (=> d!116423 (=> (not res!653870) (not e!550441))))

(assert (=> d!116423 (= res!653870 (not (contains!5708 lt!433242 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!116423 (= lt!433242 e!550440)))

(declare-fun c!99903 () Bool)

(assert (=> d!116423 (= c!99903 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(assert (=> d!116423 (validMask!0 mask!2147)))

(assert (=> d!116423 (= (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428) lt!433242)))

(declare-fun b!976631 () Bool)

(declare-fun e!550438 () Bool)

(assert (=> b!976631 (= e!550435 e!550438)))

(assert (=> b!976631 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun res!653871 () Bool)

(assert (=> b!976631 (= res!653871 (contains!5708 lt!433242 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (=> b!976631 (=> (not res!653871) (not e!550438))))

(declare-fun b!976632 () Bool)

(assert (=> b!976632 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(assert (=> b!976632 (and (bvsge (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29802 _values!1425)))))

(assert (=> b!976632 (= e!550438 (= (apply!925 lt!433242 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))) (get!15205 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!976633 () Bool)

(declare-fun e!550439 () Bool)

(assert (=> b!976633 (= e!550435 e!550439)))

(declare-fun c!99906 () Bool)

(assert (=> b!976633 (= c!99906 (bvslt (bvsub from!2118 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun b!976634 () Bool)

(assert (=> b!976634 (= e!550440 (ListLongMap!13324 Nil!20482))))

(declare-fun b!976635 () Bool)

(assert (=> b!976635 (= e!550439 (isEmpty!721 lt!433242))))

(declare-fun b!976636 () Bool)

(assert (=> b!976636 (= e!550439 (= lt!433242 (getCurrentListMapNoExtraKeys!3345 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd (bvsub from!2118 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1428)))))

(declare-fun b!976637 () Bool)

(assert (=> b!976637 (= e!550437 call!41781)))

(assert (= (and d!116423 c!99903) b!976634))

(assert (= (and d!116423 (not c!99903)) b!976627))

(assert (= (and b!976627 c!99905) b!976629))

(assert (= (and b!976627 (not c!99905)) b!976637))

(assert (= (or b!976629 b!976637) bm!41778))

(assert (= (and d!116423 res!653870) b!976628))

(assert (= (and b!976628 res!653868) b!976630))

(assert (= (and b!976630 res!653869) b!976626))

(assert (= (and b!976630 c!99904) b!976631))

(assert (= (and b!976630 (not c!99904)) b!976633))

(assert (= (and b!976631 res!653871) b!976632))

(assert (= (and b!976633 c!99906) b!976636))

(assert (= (and b!976633 (not c!99906)) b!976635))

(declare-fun b_lambda!14623 () Bool)

(assert (=> (not b_lambda!14623) (not b!976629)))

(assert (=> b!976629 t!29010))

(declare-fun b_and!31219 () Bool)

(assert (= b_and!31217 (and (=> t!29010 result!12715) b_and!31219)))

(declare-fun b_lambda!14625 () Bool)

(assert (=> (not b_lambda!14625) (not b!976632)))

(assert (=> b!976632 t!29010))

(declare-fun b_and!31221 () Bool)

(assert (= b_and!31219 (and (=> t!29010 result!12715) b_and!31221)))

(declare-fun m!903975 () Bool)

(assert (=> b!976635 m!903975))

(declare-fun m!903977 () Bool)

(assert (=> b!976636 m!903977))

(assert (=> b!976626 m!903737))

(assert (=> b!976626 m!903737))

(assert (=> b!976626 m!903739))

(assert (=> bm!41778 m!903977))

(assert (=> b!976632 m!903909))

(assert (=> b!976632 m!903737))

(assert (=> b!976632 m!903909))

(assert (=> b!976632 m!903833))

(assert (=> b!976632 m!903911))

(assert (=> b!976632 m!903833))

(assert (=> b!976632 m!903737))

(declare-fun m!903979 () Bool)

(assert (=> b!976632 m!903979))

(declare-fun m!903981 () Bool)

(assert (=> d!116423 m!903981))

(assert (=> d!116423 m!903717))

(declare-fun m!903983 () Bool)

(assert (=> b!976628 m!903983))

(assert (=> b!976631 m!903737))

(assert (=> b!976631 m!903737))

(declare-fun m!903985 () Bool)

(assert (=> b!976631 m!903985))

(assert (=> b!976627 m!903737))

(assert (=> b!976627 m!903737))

(assert (=> b!976627 m!903739))

(assert (=> b!976629 m!903909))

(assert (=> b!976629 m!903737))

(assert (=> b!976629 m!903909))

(assert (=> b!976629 m!903833))

(assert (=> b!976629 m!903911))

(declare-fun m!903987 () Bool)

(assert (=> b!976629 m!903987))

(declare-fun m!903989 () Bool)

(assert (=> b!976629 m!903989))

(assert (=> b!976629 m!903987))

(declare-fun m!903991 () Bool)

(assert (=> b!976629 m!903991))

(assert (=> b!976629 m!903833))

(declare-fun m!903993 () Bool)

(assert (=> b!976629 m!903993))

(assert (=> bm!41770 d!116423))

(declare-fun d!116425 () Bool)

(declare-fun e!550442 () Bool)

(assert (=> d!116425 e!550442))

(declare-fun res!653872 () Bool)

(assert (=> d!116425 (=> res!653872 e!550442)))

(declare-fun lt!433247 () Bool)

(assert (=> d!116425 (= res!653872 (not lt!433247))))

(declare-fun lt!433248 () Bool)

(assert (=> d!116425 (= lt!433247 lt!433248)))

(declare-fun lt!433246 () Unit!32429)

(declare-fun e!550443 () Unit!32429)

(assert (=> d!116425 (= lt!433246 e!550443)))

(declare-fun c!99907 () Bool)

(assert (=> d!116425 (= c!99907 lt!433248)))

(assert (=> d!116425 (= lt!433248 (containsKey!477 (toList!6677 lt!433154) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!116425 (= (contains!5708 lt!433154 #b1000000000000000000000000000000000000000000000000000000000000000) lt!433247)))

(declare-fun b!976638 () Bool)

(declare-fun lt!433245 () Unit!32429)

(assert (=> b!976638 (= e!550443 lt!433245)))

(assert (=> b!976638 (= lt!433245 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433154) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!976638 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976639 () Bool)

(declare-fun Unit!32436 () Unit!32429)

(assert (=> b!976639 (= e!550443 Unit!32436)))

(declare-fun b!976640 () Bool)

(assert (=> b!976640 (= e!550442 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116425 c!99907) b!976638))

(assert (= (and d!116425 (not c!99907)) b!976639))

(assert (= (and d!116425 (not res!653872)) b!976640))

(declare-fun m!903995 () Bool)

(assert (=> d!116425 m!903995))

(declare-fun m!903997 () Bool)

(assert (=> b!976638 m!903997))

(declare-fun m!903999 () Bool)

(assert (=> b!976638 m!903999))

(assert (=> b!976638 m!903999))

(declare-fun m!904001 () Bool)

(assert (=> b!976638 m!904001))

(assert (=> b!976640 m!903999))

(assert (=> b!976640 m!903999))

(assert (=> b!976640 m!904001))

(assert (=> bm!41758 d!116425))

(assert (=> b!976515 d!116411))

(assert (=> b!976515 d!116413))

(declare-fun d!116427 () Bool)

(declare-fun e!550444 () Bool)

(assert (=> d!116427 e!550444))

(declare-fun res!653873 () Bool)

(assert (=> d!116427 (=> res!653873 e!550444)))

(declare-fun lt!433251 () Bool)

(assert (=> d!116427 (= res!653873 (not lt!433251))))

(declare-fun lt!433252 () Bool)

(assert (=> d!116427 (= lt!433251 lt!433252)))

(declare-fun lt!433250 () Unit!32429)

(declare-fun e!550445 () Unit!32429)

(assert (=> d!116427 (= lt!433250 e!550445)))

(declare-fun c!99908 () Bool)

(assert (=> d!116427 (= c!99908 lt!433252)))

(assert (=> d!116427 (= lt!433252 (containsKey!477 (toList!6677 lt!433189) (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (=> d!116427 (= (contains!5708 lt!433189 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))) lt!433251)))

(declare-fun b!976641 () Bool)

(declare-fun lt!433249 () Unit!32429)

(assert (=> b!976641 (= e!550445 lt!433249)))

(assert (=> b!976641 (= lt!433249 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433189) (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(assert (=> b!976641 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))))))

(declare-fun b!976642 () Bool)

(declare-fun Unit!32437 () Unit!32429)

(assert (=> b!976642 (= e!550445 Unit!32437)))

(declare-fun b!976643 () Bool)

(assert (=> b!976643 (= e!550444 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(assert (= (and d!116427 c!99908) b!976641))

(assert (= (and d!116427 (not c!99908)) b!976642))

(assert (= (and d!116427 (not res!653873)) b!976643))

(assert (=> d!116427 m!903737))

(declare-fun m!904003 () Bool)

(assert (=> d!116427 m!904003))

(assert (=> b!976641 m!903737))

(declare-fun m!904005 () Bool)

(assert (=> b!976641 m!904005))

(assert (=> b!976641 m!903737))

(declare-fun m!904007 () Bool)

(assert (=> b!976641 m!904007))

(assert (=> b!976641 m!904007))

(declare-fun m!904009 () Bool)

(assert (=> b!976641 m!904009))

(assert (=> b!976643 m!903737))

(assert (=> b!976643 m!904007))

(assert (=> b!976643 m!904007))

(assert (=> b!976643 m!904009))

(assert (=> b!976528 d!116427))

(declare-fun d!116429 () Bool)

(declare-fun e!550446 () Bool)

(assert (=> d!116429 e!550446))

(declare-fun res!653874 () Bool)

(assert (=> d!116429 (=> res!653874 e!550446)))

(declare-fun lt!433255 () Bool)

(assert (=> d!116429 (= res!653874 (not lt!433255))))

(declare-fun lt!433256 () Bool)

(assert (=> d!116429 (= lt!433255 lt!433256)))

(declare-fun lt!433254 () Unit!32429)

(declare-fun e!550447 () Unit!32429)

(assert (=> d!116429 (= lt!433254 e!550447)))

(declare-fun c!99909 () Bool)

(assert (=> d!116429 (= c!99909 lt!433256)))

(assert (=> d!116429 (= lt!433256 (containsKey!477 (toList!6677 lt!433154) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!116429 (= (contains!5708 lt!433154 #b0000000000000000000000000000000000000000000000000000000000000000) lt!433255)))

(declare-fun b!976644 () Bool)

(declare-fun lt!433253 () Unit!32429)

(assert (=> b!976644 (= e!550447 lt!433253)))

(assert (=> b!976644 (= lt!433253 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433154) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!976644 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976645 () Bool)

(declare-fun Unit!32438 () Unit!32429)

(assert (=> b!976645 (= e!550447 Unit!32438)))

(declare-fun b!976646 () Bool)

(assert (=> b!976646 (= e!550446 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433154) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116429 c!99909) b!976644))

(assert (= (and d!116429 (not c!99909)) b!976645))

(assert (= (and d!116429 (not res!653874)) b!976646))

(declare-fun m!904011 () Bool)

(assert (=> d!116429 m!904011))

(declare-fun m!904013 () Bool)

(assert (=> b!976644 m!904013))

(declare-fun m!904015 () Bool)

(assert (=> b!976644 m!904015))

(assert (=> b!976644 m!904015))

(declare-fun m!904017 () Bool)

(assert (=> b!976644 m!904017))

(assert (=> b!976646 m!904015))

(assert (=> b!976646 m!904015))

(assert (=> b!976646 m!904017))

(assert (=> bm!41754 d!116429))

(declare-fun d!116431 () Bool)

(declare-fun get!15206 (Option!518) V!34923)

(assert (=> d!116431 (= (apply!925 lt!433154 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15206 (getValueByKey!512 (toList!6677 lt!433154) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!27616 () Bool)

(assert (= bs!27616 d!116431))

(assert (=> bs!27616 m!903999))

(assert (=> bs!27616 m!903999))

(declare-fun m!904019 () Bool)

(assert (=> bs!27616 m!904019))

(assert (=> b!976478 d!116431))

(declare-fun d!116433 () Bool)

(declare-fun e!550448 () Bool)

(assert (=> d!116433 e!550448))

(declare-fun res!653875 () Bool)

(assert (=> d!116433 (=> res!653875 e!550448)))

(declare-fun lt!433259 () Bool)

(assert (=> d!116433 (= res!653875 (not lt!433259))))

(declare-fun lt!433260 () Bool)

(assert (=> d!116433 (= lt!433259 lt!433260)))

(declare-fun lt!433258 () Unit!32429)

(declare-fun e!550449 () Unit!32429)

(assert (=> d!116433 (= lt!433258 e!550449)))

(declare-fun c!99910 () Bool)

(assert (=> d!116433 (= c!99910 lt!433260)))

(assert (=> d!116433 (= lt!433260 (containsKey!477 (toList!6677 lt!433189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!116433 (= (contains!5708 lt!433189 #b1000000000000000000000000000000000000000000000000000000000000000) lt!433259)))

(declare-fun b!976647 () Bool)

(declare-fun lt!433257 () Unit!32429)

(assert (=> b!976647 (= e!550449 lt!433257)))

(assert (=> b!976647 (= lt!433257 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!976647 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976648 () Bool)

(declare-fun Unit!32439 () Unit!32429)

(assert (=> b!976648 (= e!550449 Unit!32439)))

(declare-fun b!976649 () Bool)

(assert (=> b!976649 (= e!550448 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116433 c!99910) b!976647))

(assert (= (and d!116433 (not c!99910)) b!976648))

(assert (= (and d!116433 (not res!653875)) b!976649))

(declare-fun m!904021 () Bool)

(assert (=> d!116433 m!904021))

(declare-fun m!904023 () Bool)

(assert (=> b!976647 m!904023))

(declare-fun m!904025 () Bool)

(assert (=> b!976647 m!904025))

(assert (=> b!976647 m!904025))

(declare-fun m!904027 () Bool)

(assert (=> b!976647 m!904027))

(assert (=> b!976649 m!904025))

(assert (=> b!976649 m!904025))

(assert (=> b!976649 m!904027))

(assert (=> bm!41771 d!116433))

(assert (=> b!976495 d!116403))

(declare-fun d!116435 () Bool)

(assert (=> d!116435 (= (apply!925 (+!2884 lt!433156 (tuple2!14613 lt!433155 minValue!1367)) lt!433147) (apply!925 lt!433156 lt!433147))))

(declare-fun lt!433263 () Unit!32429)

(declare-fun choose!1610 (ListLongMap!13323 (_ BitVec 64) V!34923 (_ BitVec 64)) Unit!32429)

(assert (=> d!116435 (= lt!433263 (choose!1610 lt!433156 lt!433155 minValue!1367 lt!433147))))

(declare-fun e!550452 () Bool)

(assert (=> d!116435 e!550452))

(declare-fun res!653878 () Bool)

(assert (=> d!116435 (=> (not res!653878) (not e!550452))))

(assert (=> d!116435 (= res!653878 (contains!5708 lt!433156 lt!433147))))

(assert (=> d!116435 (= (addApplyDifferent!469 lt!433156 lt!433155 minValue!1367 lt!433147) lt!433263)))

(declare-fun b!976653 () Bool)

(assert (=> b!976653 (= e!550452 (not (= lt!433147 lt!433155)))))

(assert (= (and d!116435 res!653878) b!976653))

(assert (=> d!116435 m!903817))

(assert (=> d!116435 m!903819))

(declare-fun m!904029 () Bool)

(assert (=> d!116435 m!904029))

(assert (=> d!116435 m!903805))

(declare-fun m!904031 () Bool)

(assert (=> d!116435 m!904031))

(assert (=> d!116435 m!903817))

(assert (=> b!976479 d!116435))

(declare-fun d!116437 () Bool)

(declare-fun e!550455 () Bool)

(assert (=> d!116437 e!550455))

(declare-fun res!653883 () Bool)

(assert (=> d!116437 (=> (not res!653883) (not e!550455))))

(declare-fun lt!433275 () ListLongMap!13323)

(assert (=> d!116437 (= res!653883 (contains!5708 lt!433275 (_1!7316 (tuple2!14613 lt!433155 minValue!1367))))))

(declare-fun lt!433273 () List!20485)

(assert (=> d!116437 (= lt!433275 (ListLongMap!13324 lt!433273))))

(declare-fun lt!433274 () Unit!32429)

(declare-fun lt!433272 () Unit!32429)

(assert (=> d!116437 (= lt!433274 lt!433272)))

(assert (=> d!116437 (= (getValueByKey!512 lt!433273 (_1!7316 (tuple2!14613 lt!433155 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433155 minValue!1367))))))

(declare-fun lemmaContainsTupThenGetReturnValue!269 (List!20485 (_ BitVec 64) V!34923) Unit!32429)

(assert (=> d!116437 (= lt!433272 (lemmaContainsTupThenGetReturnValue!269 lt!433273 (_1!7316 (tuple2!14613 lt!433155 minValue!1367)) (_2!7316 (tuple2!14613 lt!433155 minValue!1367))))))

(declare-fun insertStrictlySorted!325 (List!20485 (_ BitVec 64) V!34923) List!20485)

(assert (=> d!116437 (= lt!433273 (insertStrictlySorted!325 (toList!6677 lt!433156) (_1!7316 (tuple2!14613 lt!433155 minValue!1367)) (_2!7316 (tuple2!14613 lt!433155 minValue!1367))))))

(assert (=> d!116437 (= (+!2884 lt!433156 (tuple2!14613 lt!433155 minValue!1367)) lt!433275)))

(declare-fun b!976658 () Bool)

(declare-fun res!653884 () Bool)

(assert (=> b!976658 (=> (not res!653884) (not e!550455))))

(assert (=> b!976658 (= res!653884 (= (getValueByKey!512 (toList!6677 lt!433275) (_1!7316 (tuple2!14613 lt!433155 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433155 minValue!1367)))))))

(declare-fun b!976659 () Bool)

(declare-fun contains!5711 (List!20485 tuple2!14612) Bool)

(assert (=> b!976659 (= e!550455 (contains!5711 (toList!6677 lt!433275) (tuple2!14613 lt!433155 minValue!1367)))))

(assert (= (and d!116437 res!653883) b!976658))

(assert (= (and b!976658 res!653884) b!976659))

(declare-fun m!904033 () Bool)

(assert (=> d!116437 m!904033))

(declare-fun m!904035 () Bool)

(assert (=> d!116437 m!904035))

(declare-fun m!904037 () Bool)

(assert (=> d!116437 m!904037))

(declare-fun m!904039 () Bool)

(assert (=> d!116437 m!904039))

(declare-fun m!904041 () Bool)

(assert (=> b!976658 m!904041))

(declare-fun m!904043 () Bool)

(assert (=> b!976659 m!904043))

(assert (=> b!976479 d!116437))

(declare-fun d!116439 () Bool)

(assert (=> d!116439 (= (apply!925 (+!2884 lt!433156 (tuple2!14613 lt!433155 minValue!1367)) lt!433147) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433156 (tuple2!14613 lt!433155 minValue!1367))) lt!433147)))))

(declare-fun bs!27617 () Bool)

(assert (= bs!27617 d!116439))

(declare-fun m!904045 () Bool)

(assert (=> bs!27617 m!904045))

(assert (=> bs!27617 m!904045))

(declare-fun m!904047 () Bool)

(assert (=> bs!27617 m!904047))

(assert (=> b!976479 d!116439))

(declare-fun d!116441 () Bool)

(assert (=> d!116441 (= (apply!925 lt!433163 lt!433152) (get!15206 (getValueByKey!512 (toList!6677 lt!433163) lt!433152)))))

(declare-fun bs!27618 () Bool)

(assert (= bs!27618 d!116441))

(declare-fun m!904049 () Bool)

(assert (=> bs!27618 m!904049))

(assert (=> bs!27618 m!904049))

(declare-fun m!904051 () Bool)

(assert (=> bs!27618 m!904051))

(assert (=> b!976479 d!116441))

(declare-fun d!116443 () Bool)

(assert (=> d!116443 (= (apply!925 (+!2884 lt!433161 (tuple2!14613 lt!433167 minValue!1367)) lt!433164) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433161 (tuple2!14613 lt!433167 minValue!1367))) lt!433164)))))

(declare-fun bs!27619 () Bool)

(assert (= bs!27619 d!116443))

(declare-fun m!904053 () Bool)

(assert (=> bs!27619 m!904053))

(assert (=> bs!27619 m!904053))

(declare-fun m!904055 () Bool)

(assert (=> bs!27619 m!904055))

(assert (=> b!976479 d!116443))

(declare-fun d!116445 () Bool)

(assert (=> d!116445 (= (apply!925 (+!2884 lt!433163 (tuple2!14613 lt!433157 zeroValue!1367)) lt!433152) (apply!925 lt!433163 lt!433152))))

(declare-fun lt!433276 () Unit!32429)

(assert (=> d!116445 (= lt!433276 (choose!1610 lt!433163 lt!433157 zeroValue!1367 lt!433152))))

(declare-fun e!550456 () Bool)

(assert (=> d!116445 e!550456))

(declare-fun res!653885 () Bool)

(assert (=> d!116445 (=> (not res!653885) (not e!550456))))

(assert (=> d!116445 (= res!653885 (contains!5708 lt!433163 lt!433152))))

(assert (=> d!116445 (= (addApplyDifferent!469 lt!433163 lt!433157 zeroValue!1367 lt!433152) lt!433276)))

(declare-fun b!976660 () Bool)

(assert (=> b!976660 (= e!550456 (not (= lt!433152 lt!433157)))))

(assert (= (and d!116445 res!653885) b!976660))

(assert (=> d!116445 m!903799))

(assert (=> d!116445 m!903801))

(declare-fun m!904057 () Bool)

(assert (=> d!116445 m!904057))

(assert (=> d!116445 m!903827))

(declare-fun m!904059 () Bool)

(assert (=> d!116445 m!904059))

(assert (=> d!116445 m!903799))

(assert (=> b!976479 d!116445))

(declare-fun d!116447 () Bool)

(declare-fun e!550457 () Bool)

(assert (=> d!116447 e!550457))

(declare-fun res!653886 () Bool)

(assert (=> d!116447 (=> (not res!653886) (not e!550457))))

(declare-fun lt!433280 () ListLongMap!13323)

(assert (=> d!116447 (= res!653886 (contains!5708 lt!433280 (_1!7316 (tuple2!14613 lt!433167 minValue!1367))))))

(declare-fun lt!433278 () List!20485)

(assert (=> d!116447 (= lt!433280 (ListLongMap!13324 lt!433278))))

(declare-fun lt!433279 () Unit!32429)

(declare-fun lt!433277 () Unit!32429)

(assert (=> d!116447 (= lt!433279 lt!433277)))

(assert (=> d!116447 (= (getValueByKey!512 lt!433278 (_1!7316 (tuple2!14613 lt!433167 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433167 minValue!1367))))))

(assert (=> d!116447 (= lt!433277 (lemmaContainsTupThenGetReturnValue!269 lt!433278 (_1!7316 (tuple2!14613 lt!433167 minValue!1367)) (_2!7316 (tuple2!14613 lt!433167 minValue!1367))))))

(assert (=> d!116447 (= lt!433278 (insertStrictlySorted!325 (toList!6677 lt!433161) (_1!7316 (tuple2!14613 lt!433167 minValue!1367)) (_2!7316 (tuple2!14613 lt!433167 minValue!1367))))))

(assert (=> d!116447 (= (+!2884 lt!433161 (tuple2!14613 lt!433167 minValue!1367)) lt!433280)))

(declare-fun b!976661 () Bool)

(declare-fun res!653887 () Bool)

(assert (=> b!976661 (=> (not res!653887) (not e!550457))))

(assert (=> b!976661 (= res!653887 (= (getValueByKey!512 (toList!6677 lt!433280) (_1!7316 (tuple2!14613 lt!433167 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433167 minValue!1367)))))))

(declare-fun b!976662 () Bool)

(assert (=> b!976662 (= e!550457 (contains!5711 (toList!6677 lt!433280) (tuple2!14613 lt!433167 minValue!1367)))))

(assert (= (and d!116447 res!653886) b!976661))

(assert (= (and b!976661 res!653887) b!976662))

(declare-fun m!904061 () Bool)

(assert (=> d!116447 m!904061))

(declare-fun m!904063 () Bool)

(assert (=> d!116447 m!904063))

(declare-fun m!904065 () Bool)

(assert (=> d!116447 m!904065))

(declare-fun m!904067 () Bool)

(assert (=> d!116447 m!904067))

(declare-fun m!904069 () Bool)

(assert (=> b!976661 m!904069))

(declare-fun m!904071 () Bool)

(assert (=> b!976662 m!904071))

(assert (=> b!976479 d!116447))

(declare-fun d!116449 () Bool)

(declare-fun e!550458 () Bool)

(assert (=> d!116449 e!550458))

(declare-fun res!653888 () Bool)

(assert (=> d!116449 (=> res!653888 e!550458)))

(declare-fun lt!433283 () Bool)

(assert (=> d!116449 (= res!653888 (not lt!433283))))

(declare-fun lt!433284 () Bool)

(assert (=> d!116449 (= lt!433283 lt!433284)))

(declare-fun lt!433282 () Unit!32429)

(declare-fun e!550459 () Unit!32429)

(assert (=> d!116449 (= lt!433282 e!550459)))

(declare-fun c!99911 () Bool)

(assert (=> d!116449 (= c!99911 lt!433284)))

(assert (=> d!116449 (= lt!433284 (containsKey!477 (toList!6677 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367))) lt!433158))))

(assert (=> d!116449 (= (contains!5708 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367)) lt!433158) lt!433283)))

(declare-fun b!976663 () Bool)

(declare-fun lt!433281 () Unit!32429)

(assert (=> b!976663 (= e!550459 lt!433281)))

(assert (=> b!976663 (= lt!433281 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367))) lt!433158))))

(assert (=> b!976663 (isDefined!382 (getValueByKey!512 (toList!6677 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367))) lt!433158))))

(declare-fun b!976664 () Bool)

(declare-fun Unit!32440 () Unit!32429)

(assert (=> b!976664 (= e!550459 Unit!32440)))

(declare-fun b!976665 () Bool)

(assert (=> b!976665 (= e!550458 (isDefined!382 (getValueByKey!512 (toList!6677 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367))) lt!433158)))))

(assert (= (and d!116449 c!99911) b!976663))

(assert (= (and d!116449 (not c!99911)) b!976664))

(assert (= (and d!116449 (not res!653888)) b!976665))

(declare-fun m!904073 () Bool)

(assert (=> d!116449 m!904073))

(declare-fun m!904075 () Bool)

(assert (=> b!976663 m!904075))

(declare-fun m!904077 () Bool)

(assert (=> b!976663 m!904077))

(assert (=> b!976663 m!904077))

(declare-fun m!904079 () Bool)

(assert (=> b!976663 m!904079))

(assert (=> b!976665 m!904077))

(assert (=> b!976665 m!904077))

(assert (=> b!976665 m!904079))

(assert (=> b!976479 d!116449))

(declare-fun d!116451 () Bool)

(assert (=> d!116451 (contains!5708 (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367)) lt!433158)))

(declare-fun lt!433287 () Unit!32429)

(declare-fun choose!1611 (ListLongMap!13323 (_ BitVec 64) V!34923 (_ BitVec 64)) Unit!32429)

(assert (=> d!116451 (= lt!433287 (choose!1611 lt!433166 lt!433148 zeroValue!1367 lt!433158))))

(assert (=> d!116451 (contains!5708 lt!433166 lt!433158)))

(assert (=> d!116451 (= (addStillContains!617 lt!433166 lt!433148 zeroValue!1367 lt!433158) lt!433287)))

(declare-fun bs!27620 () Bool)

(assert (= bs!27620 d!116451))

(assert (=> bs!27620 m!903813))

(assert (=> bs!27620 m!903813))

(assert (=> bs!27620 m!903815))

(declare-fun m!904081 () Bool)

(assert (=> bs!27620 m!904081))

(declare-fun m!904083 () Bool)

(assert (=> bs!27620 m!904083))

(assert (=> b!976479 d!116451))

(declare-fun d!116453 () Bool)

(declare-fun e!550460 () Bool)

(assert (=> d!116453 e!550460))

(declare-fun res!653889 () Bool)

(assert (=> d!116453 (=> (not res!653889) (not e!550460))))

(declare-fun lt!433291 () ListLongMap!13323)

(assert (=> d!116453 (= res!653889 (contains!5708 lt!433291 (_1!7316 (tuple2!14613 lt!433157 zeroValue!1367))))))

(declare-fun lt!433289 () List!20485)

(assert (=> d!116453 (= lt!433291 (ListLongMap!13324 lt!433289))))

(declare-fun lt!433290 () Unit!32429)

(declare-fun lt!433288 () Unit!32429)

(assert (=> d!116453 (= lt!433290 lt!433288)))

(assert (=> d!116453 (= (getValueByKey!512 lt!433289 (_1!7316 (tuple2!14613 lt!433157 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433157 zeroValue!1367))))))

(assert (=> d!116453 (= lt!433288 (lemmaContainsTupThenGetReturnValue!269 lt!433289 (_1!7316 (tuple2!14613 lt!433157 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433157 zeroValue!1367))))))

(assert (=> d!116453 (= lt!433289 (insertStrictlySorted!325 (toList!6677 lt!433163) (_1!7316 (tuple2!14613 lt!433157 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433157 zeroValue!1367))))))

(assert (=> d!116453 (= (+!2884 lt!433163 (tuple2!14613 lt!433157 zeroValue!1367)) lt!433291)))

(declare-fun b!976667 () Bool)

(declare-fun res!653890 () Bool)

(assert (=> b!976667 (=> (not res!653890) (not e!550460))))

(assert (=> b!976667 (= res!653890 (= (getValueByKey!512 (toList!6677 lt!433291) (_1!7316 (tuple2!14613 lt!433157 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433157 zeroValue!1367)))))))

(declare-fun b!976668 () Bool)

(assert (=> b!976668 (= e!550460 (contains!5711 (toList!6677 lt!433291) (tuple2!14613 lt!433157 zeroValue!1367)))))

(assert (= (and d!116453 res!653889) b!976667))

(assert (= (and b!976667 res!653890) b!976668))

(declare-fun m!904085 () Bool)

(assert (=> d!116453 m!904085))

(declare-fun m!904087 () Bool)

(assert (=> d!116453 m!904087))

(declare-fun m!904089 () Bool)

(assert (=> d!116453 m!904089))

(declare-fun m!904091 () Bool)

(assert (=> d!116453 m!904091))

(declare-fun m!904093 () Bool)

(assert (=> b!976667 m!904093))

(declare-fun m!904095 () Bool)

(assert (=> b!976668 m!904095))

(assert (=> b!976479 d!116453))

(declare-fun d!116455 () Bool)

(assert (=> d!116455 (= (apply!925 (+!2884 lt!433163 (tuple2!14613 lt!433157 zeroValue!1367)) lt!433152) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433163 (tuple2!14613 lt!433157 zeroValue!1367))) lt!433152)))))

(declare-fun bs!27621 () Bool)

(assert (= bs!27621 d!116455))

(declare-fun m!904097 () Bool)

(assert (=> bs!27621 m!904097))

(assert (=> bs!27621 m!904097))

(declare-fun m!904099 () Bool)

(assert (=> bs!27621 m!904099))

(assert (=> b!976479 d!116455))

(declare-fun d!116457 () Bool)

(declare-fun e!550461 () Bool)

(assert (=> d!116457 e!550461))

(declare-fun res!653891 () Bool)

(assert (=> d!116457 (=> (not res!653891) (not e!550461))))

(declare-fun lt!433295 () ListLongMap!13323)

(assert (=> d!116457 (= res!653891 (contains!5708 lt!433295 (_1!7316 (tuple2!14613 lt!433148 zeroValue!1367))))))

(declare-fun lt!433293 () List!20485)

(assert (=> d!116457 (= lt!433295 (ListLongMap!13324 lt!433293))))

(declare-fun lt!433294 () Unit!32429)

(declare-fun lt!433292 () Unit!32429)

(assert (=> d!116457 (= lt!433294 lt!433292)))

(assert (=> d!116457 (= (getValueByKey!512 lt!433293 (_1!7316 (tuple2!14613 lt!433148 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433148 zeroValue!1367))))))

(assert (=> d!116457 (= lt!433292 (lemmaContainsTupThenGetReturnValue!269 lt!433293 (_1!7316 (tuple2!14613 lt!433148 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433148 zeroValue!1367))))))

(assert (=> d!116457 (= lt!433293 (insertStrictlySorted!325 (toList!6677 lt!433166) (_1!7316 (tuple2!14613 lt!433148 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433148 zeroValue!1367))))))

(assert (=> d!116457 (= (+!2884 lt!433166 (tuple2!14613 lt!433148 zeroValue!1367)) lt!433295)))

(declare-fun b!976669 () Bool)

(declare-fun res!653892 () Bool)

(assert (=> b!976669 (=> (not res!653892) (not e!550461))))

(assert (=> b!976669 (= res!653892 (= (getValueByKey!512 (toList!6677 lt!433295) (_1!7316 (tuple2!14613 lt!433148 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433148 zeroValue!1367)))))))

(declare-fun b!976670 () Bool)

(assert (=> b!976670 (= e!550461 (contains!5711 (toList!6677 lt!433295) (tuple2!14613 lt!433148 zeroValue!1367)))))

(assert (= (and d!116457 res!653891) b!976669))

(assert (= (and b!976669 res!653892) b!976670))

(declare-fun m!904101 () Bool)

(assert (=> d!116457 m!904101))

(declare-fun m!904103 () Bool)

(assert (=> d!116457 m!904103))

(declare-fun m!904105 () Bool)

(assert (=> d!116457 m!904105))

(declare-fun m!904107 () Bool)

(assert (=> d!116457 m!904107))

(declare-fun m!904109 () Bool)

(assert (=> b!976669 m!904109))

(declare-fun m!904111 () Bool)

(assert (=> b!976670 m!904111))

(assert (=> b!976479 d!116457))

(declare-fun d!116459 () Bool)

(assert (=> d!116459 (= (apply!925 lt!433156 lt!433147) (get!15206 (getValueByKey!512 (toList!6677 lt!433156) lt!433147)))))

(declare-fun bs!27622 () Bool)

(assert (= bs!27622 d!116459))

(declare-fun m!904113 () Bool)

(assert (=> bs!27622 m!904113))

(assert (=> bs!27622 m!904113))

(declare-fun m!904115 () Bool)

(assert (=> bs!27622 m!904115))

(assert (=> b!976479 d!116459))

(assert (=> b!976479 d!116405))

(declare-fun d!116461 () Bool)

(assert (=> d!116461 (= (apply!925 (+!2884 lt!433161 (tuple2!14613 lt!433167 minValue!1367)) lt!433164) (apply!925 lt!433161 lt!433164))))

(declare-fun lt!433296 () Unit!32429)

(assert (=> d!116461 (= lt!433296 (choose!1610 lt!433161 lt!433167 minValue!1367 lt!433164))))

(declare-fun e!550462 () Bool)

(assert (=> d!116461 e!550462))

(declare-fun res!653893 () Bool)

(assert (=> d!116461 (=> (not res!653893) (not e!550462))))

(assert (=> d!116461 (= res!653893 (contains!5708 lt!433161 lt!433164))))

(assert (=> d!116461 (= (addApplyDifferent!469 lt!433161 lt!433167 minValue!1367 lt!433164) lt!433296)))

(declare-fun b!976671 () Bool)

(assert (=> b!976671 (= e!550462 (not (= lt!433164 lt!433167)))))

(assert (= (and d!116461 res!653893) b!976671))

(assert (=> d!116461 m!903807))

(assert (=> d!116461 m!903809))

(declare-fun m!904117 () Bool)

(assert (=> d!116461 m!904117))

(assert (=> d!116461 m!903811))

(declare-fun m!904119 () Bool)

(assert (=> d!116461 m!904119))

(assert (=> d!116461 m!903807))

(assert (=> b!976479 d!116461))

(declare-fun d!116463 () Bool)

(assert (=> d!116463 (= (apply!925 lt!433161 lt!433164) (get!15206 (getValueByKey!512 (toList!6677 lt!433161) lt!433164)))))

(declare-fun bs!27623 () Bool)

(assert (= bs!27623 d!116463))

(declare-fun m!904121 () Bool)

(assert (=> bs!27623 m!904121))

(assert (=> bs!27623 m!904121))

(declare-fun m!904123 () Bool)

(assert (=> bs!27623 m!904123))

(assert (=> b!976479 d!116463))

(declare-fun d!116465 () Bool)

(assert (=> d!116465 (isDefined!382 (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun lt!433297 () Unit!32429)

(assert (=> d!116465 (= lt!433297 (choose!1609 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun e!550463 () Bool)

(assert (=> d!116465 e!550463))

(declare-fun res!653894 () Bool)

(assert (=> d!116465 (=> (not res!653894) (not e!550463))))

(assert (=> d!116465 (= res!653894 (isStrictlySorted!510 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))))

(assert (=> d!116465 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)) lt!433297)))

(declare-fun b!976672 () Bool)

(assert (=> b!976672 (= e!550463 (containsKey!477 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))

(assert (= (and d!116465 res!653894) b!976672))

(assert (=> d!116465 m!903727))

(assert (=> d!116465 m!903777))

(assert (=> d!116465 m!903777))

(assert (=> d!116465 m!903779))

(assert (=> d!116465 m!903727))

(declare-fun m!904125 () Bool)

(assert (=> d!116465 m!904125))

(declare-fun m!904127 () Bool)

(assert (=> d!116465 m!904127))

(assert (=> b!976672 m!903727))

(assert (=> b!976672 m!903773))

(assert (=> b!976430 d!116465))

(declare-fun d!116467 () Bool)

(assert (=> d!116467 (= (isDefined!382 (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822))) (not (isEmpty!722 (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)))))))

(declare-fun bs!27624 () Bool)

(assert (= bs!27624 d!116467))

(assert (=> bs!27624 m!903777))

(declare-fun m!904129 () Bool)

(assert (=> bs!27624 m!904129))

(assert (=> b!976430 d!116467))

(declare-fun c!99912 () Bool)

(declare-fun d!116469 () Bool)

(assert (=> d!116469 (= c!99912 (and ((_ is Cons!20481) (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (= (_1!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (select (arr!29321 _keys!1717) i!822))))))

(declare-fun e!550464 () Option!518)

(assert (=> d!116469 (= (getValueByKey!512 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)) e!550464)))

(declare-fun b!976673 () Bool)

(assert (=> b!976673 (= e!550464 (Some!517 (_2!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))))))))

(declare-fun b!976674 () Bool)

(declare-fun e!550465 () Option!518)

(assert (=> b!976674 (= e!550464 e!550465)))

(declare-fun c!99913 () Bool)

(assert (=> b!976674 (= c!99913 (and ((_ is Cons!20481) (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (not (= (_1!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (select (arr!29321 _keys!1717) i!822)))))))

(declare-fun b!976675 () Bool)

(assert (=> b!976675 (= e!550465 (getValueByKey!512 (t!29006 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (select (arr!29321 _keys!1717) i!822)))))

(declare-fun b!976676 () Bool)

(assert (=> b!976676 (= e!550465 None!516)))

(assert (= (and d!116469 c!99912) b!976673))

(assert (= (and d!116469 (not c!99912)) b!976674))

(assert (= (and b!976674 c!99913) b!976675))

(assert (= (and b!976674 (not c!99913)) b!976676))

(assert (=> b!976675 m!903727))

(declare-fun m!904131 () Bool)

(assert (=> b!976675 m!904131))

(assert (=> b!976430 d!116469))

(assert (=> b!976432 d!116467))

(assert (=> b!976432 d!116469))

(declare-fun d!116471 () Bool)

(declare-fun e!550466 () Bool)

(assert (=> d!116471 e!550466))

(declare-fun res!653895 () Bool)

(assert (=> d!116471 (=> res!653895 e!550466)))

(declare-fun lt!433300 () Bool)

(assert (=> d!116471 (= res!653895 (not lt!433300))))

(declare-fun lt!433301 () Bool)

(assert (=> d!116471 (= lt!433300 lt!433301)))

(declare-fun lt!433299 () Unit!32429)

(declare-fun e!550467 () Unit!32429)

(assert (=> d!116471 (= lt!433299 e!550467)))

(declare-fun c!99914 () Bool)

(assert (=> d!116471 (= c!99914 lt!433301)))

(assert (=> d!116471 (= lt!433301 (containsKey!477 (toList!6677 lt!433189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!116471 (= (contains!5708 lt!433189 #b0000000000000000000000000000000000000000000000000000000000000000) lt!433300)))

(declare-fun b!976677 () Bool)

(declare-fun lt!433298 () Unit!32429)

(assert (=> b!976677 (= e!550467 lt!433298)))

(assert (=> b!976677 (= lt!433298 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 lt!433189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!976677 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!976678 () Bool)

(declare-fun Unit!32441 () Unit!32429)

(assert (=> b!976678 (= e!550467 Unit!32441)))

(declare-fun b!976679 () Bool)

(assert (=> b!976679 (= e!550466 (isDefined!382 (getValueByKey!512 (toList!6677 lt!433189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116471 c!99914) b!976677))

(assert (= (and d!116471 (not c!99914)) b!976678))

(assert (= (and d!116471 (not res!653895)) b!976679))

(declare-fun m!904133 () Bool)

(assert (=> d!116471 m!904133))

(declare-fun m!904135 () Bool)

(assert (=> b!976677 m!904135))

(declare-fun m!904137 () Bool)

(assert (=> b!976677 m!904137))

(assert (=> b!976677 m!904137))

(declare-fun m!904139 () Bool)

(assert (=> b!976677 m!904139))

(assert (=> b!976679 m!904137))

(assert (=> b!976679 m!904137))

(assert (=> b!976679 m!904139))

(assert (=> bm!41767 d!116471))

(declare-fun d!116473 () Bool)

(assert (=> d!116473 (= (apply!925 lt!433189 #b1000000000000000000000000000000000000000000000000000000000000000) (get!15206 (getValueByKey!512 (toList!6677 lt!433189) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!27625 () Bool)

(assert (= bs!27625 d!116473))

(assert (=> bs!27625 m!904025))

(assert (=> bs!27625 m!904025))

(declare-fun m!904141 () Bool)

(assert (=> bs!27625 m!904141))

(assert (=> b!976531 d!116473))

(declare-fun d!116475 () Bool)

(assert (=> d!116475 (= (apply!925 lt!433154 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15206 (getValueByKey!512 (toList!6677 lt!433154) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!27626 () Bool)

(assert (= bs!27626 d!116475))

(assert (=> bs!27626 m!904015))

(assert (=> bs!27626 m!904015))

(declare-fun m!904143 () Bool)

(assert (=> bs!27626 m!904143))

(assert (=> b!976482 d!116475))

(assert (=> b!976548 d!116399))

(declare-fun d!116477 () Bool)

(assert (=> d!116477 (= (apply!925 lt!433198 lt!433187) (get!15206 (getValueByKey!512 (toList!6677 lt!433198) lt!433187)))))

(declare-fun bs!27627 () Bool)

(assert (= bs!27627 d!116477))

(declare-fun m!904145 () Bool)

(assert (=> bs!27627 m!904145))

(assert (=> bs!27627 m!904145))

(declare-fun m!904147 () Bool)

(assert (=> bs!27627 m!904147))

(assert (=> b!976532 d!116477))

(assert (=> b!976532 d!116423))

(declare-fun d!116479 () Bool)

(declare-fun e!550468 () Bool)

(assert (=> d!116479 e!550468))

(declare-fun res!653896 () Bool)

(assert (=> d!116479 (=> res!653896 e!550468)))

(declare-fun lt!433304 () Bool)

(assert (=> d!116479 (= res!653896 (not lt!433304))))

(declare-fun lt!433305 () Bool)

(assert (=> d!116479 (= lt!433304 lt!433305)))

(declare-fun lt!433303 () Unit!32429)

(declare-fun e!550469 () Unit!32429)

(assert (=> d!116479 (= lt!433303 e!550469)))

(declare-fun c!99915 () Bool)

(assert (=> d!116479 (= c!99915 lt!433305)))

(assert (=> d!116479 (= lt!433305 (containsKey!477 (toList!6677 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367))) lt!433193))))

(assert (=> d!116479 (= (contains!5708 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367)) lt!433193) lt!433304)))

(declare-fun b!976680 () Bool)

(declare-fun lt!433302 () Unit!32429)

(assert (=> b!976680 (= e!550469 lt!433302)))

(assert (=> b!976680 (= lt!433302 (lemmaContainsKeyImpliesGetValueByKeyDefined!372 (toList!6677 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367))) lt!433193))))

(assert (=> b!976680 (isDefined!382 (getValueByKey!512 (toList!6677 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367))) lt!433193))))

(declare-fun b!976681 () Bool)

(declare-fun Unit!32442 () Unit!32429)

(assert (=> b!976681 (= e!550469 Unit!32442)))

(declare-fun b!976682 () Bool)

(assert (=> b!976682 (= e!550468 (isDefined!382 (getValueByKey!512 (toList!6677 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367))) lt!433193)))))

(assert (= (and d!116479 c!99915) b!976680))

(assert (= (and d!116479 (not c!99915)) b!976681))

(assert (= (and d!116479 (not res!653896)) b!976682))

(declare-fun m!904149 () Bool)

(assert (=> d!116479 m!904149))

(declare-fun m!904151 () Bool)

(assert (=> b!976680 m!904151))

(declare-fun m!904153 () Bool)

(assert (=> b!976680 m!904153))

(assert (=> b!976680 m!904153))

(declare-fun m!904155 () Bool)

(assert (=> b!976680 m!904155))

(assert (=> b!976682 m!904153))

(assert (=> b!976682 m!904153))

(assert (=> b!976682 m!904155))

(assert (=> b!976532 d!116479))

(declare-fun d!116481 () Bool)

(declare-fun e!550470 () Bool)

(assert (=> d!116481 e!550470))

(declare-fun res!653897 () Bool)

(assert (=> d!116481 (=> (not res!653897) (not e!550470))))

(declare-fun lt!433309 () ListLongMap!13323)

(assert (=> d!116481 (= res!653897 (contains!5708 lt!433309 (_1!7316 (tuple2!14613 lt!433202 minValue!1367))))))

(declare-fun lt!433307 () List!20485)

(assert (=> d!116481 (= lt!433309 (ListLongMap!13324 lt!433307))))

(declare-fun lt!433308 () Unit!32429)

(declare-fun lt!433306 () Unit!32429)

(assert (=> d!116481 (= lt!433308 lt!433306)))

(assert (=> d!116481 (= (getValueByKey!512 lt!433307 (_1!7316 (tuple2!14613 lt!433202 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433202 minValue!1367))))))

(assert (=> d!116481 (= lt!433306 (lemmaContainsTupThenGetReturnValue!269 lt!433307 (_1!7316 (tuple2!14613 lt!433202 minValue!1367)) (_2!7316 (tuple2!14613 lt!433202 minValue!1367))))))

(assert (=> d!116481 (= lt!433307 (insertStrictlySorted!325 (toList!6677 lt!433196) (_1!7316 (tuple2!14613 lt!433202 minValue!1367)) (_2!7316 (tuple2!14613 lt!433202 minValue!1367))))))

(assert (=> d!116481 (= (+!2884 lt!433196 (tuple2!14613 lt!433202 minValue!1367)) lt!433309)))

(declare-fun b!976683 () Bool)

(declare-fun res!653898 () Bool)

(assert (=> b!976683 (=> (not res!653898) (not e!550470))))

(assert (=> b!976683 (= res!653898 (= (getValueByKey!512 (toList!6677 lt!433309) (_1!7316 (tuple2!14613 lt!433202 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433202 minValue!1367)))))))

(declare-fun b!976684 () Bool)

(assert (=> b!976684 (= e!550470 (contains!5711 (toList!6677 lt!433309) (tuple2!14613 lt!433202 minValue!1367)))))

(assert (= (and d!116481 res!653897) b!976683))

(assert (= (and b!976683 res!653898) b!976684))

(declare-fun m!904157 () Bool)

(assert (=> d!116481 m!904157))

(declare-fun m!904159 () Bool)

(assert (=> d!116481 m!904159))

(declare-fun m!904161 () Bool)

(assert (=> d!116481 m!904161))

(declare-fun m!904163 () Bool)

(assert (=> d!116481 m!904163))

(declare-fun m!904165 () Bool)

(assert (=> b!976683 m!904165))

(declare-fun m!904167 () Bool)

(assert (=> b!976684 m!904167))

(assert (=> b!976532 d!116481))

(declare-fun d!116483 () Bool)

(declare-fun e!550471 () Bool)

(assert (=> d!116483 e!550471))

(declare-fun res!653899 () Bool)

(assert (=> d!116483 (=> (not res!653899) (not e!550471))))

(declare-fun lt!433313 () ListLongMap!13323)

(assert (=> d!116483 (= res!653899 (contains!5708 lt!433313 (_1!7316 (tuple2!14613 lt!433192 zeroValue!1367))))))

(declare-fun lt!433311 () List!20485)

(assert (=> d!116483 (= lt!433313 (ListLongMap!13324 lt!433311))))

(declare-fun lt!433312 () Unit!32429)

(declare-fun lt!433310 () Unit!32429)

(assert (=> d!116483 (= lt!433312 lt!433310)))

(assert (=> d!116483 (= (getValueByKey!512 lt!433311 (_1!7316 (tuple2!14613 lt!433192 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433192 zeroValue!1367))))))

(assert (=> d!116483 (= lt!433310 (lemmaContainsTupThenGetReturnValue!269 lt!433311 (_1!7316 (tuple2!14613 lt!433192 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433192 zeroValue!1367))))))

(assert (=> d!116483 (= lt!433311 (insertStrictlySorted!325 (toList!6677 lt!433198) (_1!7316 (tuple2!14613 lt!433192 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433192 zeroValue!1367))))))

(assert (=> d!116483 (= (+!2884 lt!433198 (tuple2!14613 lt!433192 zeroValue!1367)) lt!433313)))

(declare-fun b!976685 () Bool)

(declare-fun res!653900 () Bool)

(assert (=> b!976685 (=> (not res!653900) (not e!550471))))

(assert (=> b!976685 (= res!653900 (= (getValueByKey!512 (toList!6677 lt!433313) (_1!7316 (tuple2!14613 lt!433192 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433192 zeroValue!1367)))))))

(declare-fun b!976686 () Bool)

(assert (=> b!976686 (= e!550471 (contains!5711 (toList!6677 lt!433313) (tuple2!14613 lt!433192 zeroValue!1367)))))

(assert (= (and d!116483 res!653899) b!976685))

(assert (= (and b!976685 res!653900) b!976686))

(declare-fun m!904169 () Bool)

(assert (=> d!116483 m!904169))

(declare-fun m!904171 () Bool)

(assert (=> d!116483 m!904171))

(declare-fun m!904173 () Bool)

(assert (=> d!116483 m!904173))

(declare-fun m!904175 () Bool)

(assert (=> d!116483 m!904175))

(declare-fun m!904177 () Bool)

(assert (=> b!976685 m!904177))

(declare-fun m!904179 () Bool)

(assert (=> b!976686 m!904179))

(assert (=> b!976532 d!116483))

(declare-fun d!116485 () Bool)

(declare-fun e!550472 () Bool)

(assert (=> d!116485 e!550472))

(declare-fun res!653901 () Bool)

(assert (=> d!116485 (=> (not res!653901) (not e!550472))))

(declare-fun lt!433317 () ListLongMap!13323)

(assert (=> d!116485 (= res!653901 (contains!5708 lt!433317 (_1!7316 (tuple2!14613 lt!433183 zeroValue!1367))))))

(declare-fun lt!433315 () List!20485)

(assert (=> d!116485 (= lt!433317 (ListLongMap!13324 lt!433315))))

(declare-fun lt!433316 () Unit!32429)

(declare-fun lt!433314 () Unit!32429)

(assert (=> d!116485 (= lt!433316 lt!433314)))

(assert (=> d!116485 (= (getValueByKey!512 lt!433315 (_1!7316 (tuple2!14613 lt!433183 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433183 zeroValue!1367))))))

(assert (=> d!116485 (= lt!433314 (lemmaContainsTupThenGetReturnValue!269 lt!433315 (_1!7316 (tuple2!14613 lt!433183 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433183 zeroValue!1367))))))

(assert (=> d!116485 (= lt!433315 (insertStrictlySorted!325 (toList!6677 lt!433201) (_1!7316 (tuple2!14613 lt!433183 zeroValue!1367)) (_2!7316 (tuple2!14613 lt!433183 zeroValue!1367))))))

(assert (=> d!116485 (= (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367)) lt!433317)))

(declare-fun b!976687 () Bool)

(declare-fun res!653902 () Bool)

(assert (=> b!976687 (=> (not res!653902) (not e!550472))))

(assert (=> b!976687 (= res!653902 (= (getValueByKey!512 (toList!6677 lt!433317) (_1!7316 (tuple2!14613 lt!433183 zeroValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433183 zeroValue!1367)))))))

(declare-fun b!976688 () Bool)

(assert (=> b!976688 (= e!550472 (contains!5711 (toList!6677 lt!433317) (tuple2!14613 lt!433183 zeroValue!1367)))))

(assert (= (and d!116485 res!653901) b!976687))

(assert (= (and b!976687 res!653902) b!976688))

(declare-fun m!904181 () Bool)

(assert (=> d!116485 m!904181))

(declare-fun m!904183 () Bool)

(assert (=> d!116485 m!904183))

(declare-fun m!904185 () Bool)

(assert (=> d!116485 m!904185))

(declare-fun m!904187 () Bool)

(assert (=> d!116485 m!904187))

(declare-fun m!904189 () Bool)

(assert (=> b!976687 m!904189))

(declare-fun m!904191 () Bool)

(assert (=> b!976688 m!904191))

(assert (=> b!976532 d!116485))

(declare-fun d!116487 () Bool)

(assert (=> d!116487 (contains!5708 (+!2884 lt!433201 (tuple2!14613 lt!433183 zeroValue!1367)) lt!433193)))

(declare-fun lt!433318 () Unit!32429)

(assert (=> d!116487 (= lt!433318 (choose!1611 lt!433201 lt!433183 zeroValue!1367 lt!433193))))

(assert (=> d!116487 (contains!5708 lt!433201 lt!433193)))

(assert (=> d!116487 (= (addStillContains!617 lt!433201 lt!433183 zeroValue!1367 lt!433193) lt!433318)))

(declare-fun bs!27628 () Bool)

(assert (= bs!27628 d!116487))

(assert (=> bs!27628 m!903891))

(assert (=> bs!27628 m!903891))

(assert (=> bs!27628 m!903893))

(declare-fun m!904193 () Bool)

(assert (=> bs!27628 m!904193))

(declare-fun m!904195 () Bool)

(assert (=> bs!27628 m!904195))

(assert (=> b!976532 d!116487))

(declare-fun d!116489 () Bool)

(declare-fun e!550473 () Bool)

(assert (=> d!116489 e!550473))

(declare-fun res!653903 () Bool)

(assert (=> d!116489 (=> (not res!653903) (not e!550473))))

(declare-fun lt!433322 () ListLongMap!13323)

(assert (=> d!116489 (= res!653903 (contains!5708 lt!433322 (_1!7316 (tuple2!14613 lt!433190 minValue!1367))))))

(declare-fun lt!433320 () List!20485)

(assert (=> d!116489 (= lt!433322 (ListLongMap!13324 lt!433320))))

(declare-fun lt!433321 () Unit!32429)

(declare-fun lt!433319 () Unit!32429)

(assert (=> d!116489 (= lt!433321 lt!433319)))

(assert (=> d!116489 (= (getValueByKey!512 lt!433320 (_1!7316 (tuple2!14613 lt!433190 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433190 minValue!1367))))))

(assert (=> d!116489 (= lt!433319 (lemmaContainsTupThenGetReturnValue!269 lt!433320 (_1!7316 (tuple2!14613 lt!433190 minValue!1367)) (_2!7316 (tuple2!14613 lt!433190 minValue!1367))))))

(assert (=> d!116489 (= lt!433320 (insertStrictlySorted!325 (toList!6677 lt!433191) (_1!7316 (tuple2!14613 lt!433190 minValue!1367)) (_2!7316 (tuple2!14613 lt!433190 minValue!1367))))))

(assert (=> d!116489 (= (+!2884 lt!433191 (tuple2!14613 lt!433190 minValue!1367)) lt!433322)))

(declare-fun b!976689 () Bool)

(declare-fun res!653904 () Bool)

(assert (=> b!976689 (=> (not res!653904) (not e!550473))))

(assert (=> b!976689 (= res!653904 (= (getValueByKey!512 (toList!6677 lt!433322) (_1!7316 (tuple2!14613 lt!433190 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 lt!433190 minValue!1367)))))))

(declare-fun b!976690 () Bool)

(assert (=> b!976690 (= e!550473 (contains!5711 (toList!6677 lt!433322) (tuple2!14613 lt!433190 minValue!1367)))))

(assert (= (and d!116489 res!653903) b!976689))

(assert (= (and b!976689 res!653904) b!976690))

(declare-fun m!904197 () Bool)

(assert (=> d!116489 m!904197))

(declare-fun m!904199 () Bool)

(assert (=> d!116489 m!904199))

(declare-fun m!904201 () Bool)

(assert (=> d!116489 m!904201))

(declare-fun m!904203 () Bool)

(assert (=> d!116489 m!904203))

(declare-fun m!904205 () Bool)

(assert (=> b!976689 m!904205))

(declare-fun m!904207 () Bool)

(assert (=> b!976690 m!904207))

(assert (=> b!976532 d!116489))

(declare-fun d!116491 () Bool)

(assert (=> d!116491 (= (apply!925 (+!2884 lt!433196 (tuple2!14613 lt!433202 minValue!1367)) lt!433199) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433196 (tuple2!14613 lt!433202 minValue!1367))) lt!433199)))))

(declare-fun bs!27629 () Bool)

(assert (= bs!27629 d!116491))

(declare-fun m!904209 () Bool)

(assert (=> bs!27629 m!904209))

(assert (=> bs!27629 m!904209))

(declare-fun m!904211 () Bool)

(assert (=> bs!27629 m!904211))

(assert (=> b!976532 d!116491))

(declare-fun d!116493 () Bool)

(assert (=> d!116493 (= (apply!925 (+!2884 lt!433196 (tuple2!14613 lt!433202 minValue!1367)) lt!433199) (apply!925 lt!433196 lt!433199))))

(declare-fun lt!433323 () Unit!32429)

(assert (=> d!116493 (= lt!433323 (choose!1610 lt!433196 lt!433202 minValue!1367 lt!433199))))

(declare-fun e!550474 () Bool)

(assert (=> d!116493 e!550474))

(declare-fun res!653905 () Bool)

(assert (=> d!116493 (=> (not res!653905) (not e!550474))))

(assert (=> d!116493 (= res!653905 (contains!5708 lt!433196 lt!433199))))

(assert (=> d!116493 (= (addApplyDifferent!469 lt!433196 lt!433202 minValue!1367 lt!433199) lt!433323)))

(declare-fun b!976691 () Bool)

(assert (=> b!976691 (= e!550474 (not (= lt!433199 lt!433202)))))

(assert (= (and d!116493 res!653905) b!976691))

(assert (=> d!116493 m!903885))

(assert (=> d!116493 m!903887))

(declare-fun m!904213 () Bool)

(assert (=> d!116493 m!904213))

(assert (=> d!116493 m!903889))

(declare-fun m!904215 () Bool)

(assert (=> d!116493 m!904215))

(assert (=> d!116493 m!903885))

(assert (=> b!976532 d!116493))

(declare-fun d!116495 () Bool)

(assert (=> d!116495 (= (apply!925 (+!2884 lt!433198 (tuple2!14613 lt!433192 zeroValue!1367)) lt!433187) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433198 (tuple2!14613 lt!433192 zeroValue!1367))) lt!433187)))))

(declare-fun bs!27630 () Bool)

(assert (= bs!27630 d!116495))

(declare-fun m!904217 () Bool)

(assert (=> bs!27630 m!904217))

(assert (=> bs!27630 m!904217))

(declare-fun m!904219 () Bool)

(assert (=> bs!27630 m!904219))

(assert (=> b!976532 d!116495))

(declare-fun d!116497 () Bool)

(assert (=> d!116497 (= (apply!925 lt!433191 lt!433182) (get!15206 (getValueByKey!512 (toList!6677 lt!433191) lt!433182)))))

(declare-fun bs!27631 () Bool)

(assert (= bs!27631 d!116497))

(declare-fun m!904221 () Bool)

(assert (=> bs!27631 m!904221))

(assert (=> bs!27631 m!904221))

(declare-fun m!904223 () Bool)

(assert (=> bs!27631 m!904223))

(assert (=> b!976532 d!116497))

(declare-fun d!116499 () Bool)

(assert (=> d!116499 (= (apply!925 (+!2884 lt!433191 (tuple2!14613 lt!433190 minValue!1367)) lt!433182) (apply!925 lt!433191 lt!433182))))

(declare-fun lt!433324 () Unit!32429)

(assert (=> d!116499 (= lt!433324 (choose!1610 lt!433191 lt!433190 minValue!1367 lt!433182))))

(declare-fun e!550475 () Bool)

(assert (=> d!116499 e!550475))

(declare-fun res!653906 () Bool)

(assert (=> d!116499 (=> (not res!653906) (not e!550475))))

(assert (=> d!116499 (= res!653906 (contains!5708 lt!433191 lt!433182))))

(assert (=> d!116499 (= (addApplyDifferent!469 lt!433191 lt!433190 minValue!1367 lt!433182) lt!433324)))

(declare-fun b!976692 () Bool)

(assert (=> b!976692 (= e!550475 (not (= lt!433182 lt!433190)))))

(assert (= (and d!116499 res!653906) b!976692))

(assert (=> d!116499 m!903895))

(assert (=> d!116499 m!903897))

(declare-fun m!904225 () Bool)

(assert (=> d!116499 m!904225))

(assert (=> d!116499 m!903883))

(declare-fun m!904227 () Bool)

(assert (=> d!116499 m!904227))

(assert (=> d!116499 m!903895))

(assert (=> b!976532 d!116499))

(declare-fun d!116501 () Bool)

(assert (=> d!116501 (= (apply!925 (+!2884 lt!433191 (tuple2!14613 lt!433190 minValue!1367)) lt!433182) (get!15206 (getValueByKey!512 (toList!6677 (+!2884 lt!433191 (tuple2!14613 lt!433190 minValue!1367))) lt!433182)))))

(declare-fun bs!27632 () Bool)

(assert (= bs!27632 d!116501))

(declare-fun m!904229 () Bool)

(assert (=> bs!27632 m!904229))

(assert (=> bs!27632 m!904229))

(declare-fun m!904231 () Bool)

(assert (=> bs!27632 m!904231))

(assert (=> b!976532 d!116501))

(declare-fun d!116503 () Bool)

(assert (=> d!116503 (= (apply!925 lt!433196 lt!433199) (get!15206 (getValueByKey!512 (toList!6677 lt!433196) lt!433199)))))

(declare-fun bs!27633 () Bool)

(assert (= bs!27633 d!116503))

(declare-fun m!904233 () Bool)

(assert (=> bs!27633 m!904233))

(assert (=> bs!27633 m!904233))

(declare-fun m!904235 () Bool)

(assert (=> bs!27633 m!904235))

(assert (=> b!976532 d!116503))

(declare-fun d!116505 () Bool)

(assert (=> d!116505 (= (apply!925 (+!2884 lt!433198 (tuple2!14613 lt!433192 zeroValue!1367)) lt!433187) (apply!925 lt!433198 lt!433187))))

(declare-fun lt!433325 () Unit!32429)

(assert (=> d!116505 (= lt!433325 (choose!1610 lt!433198 lt!433192 zeroValue!1367 lt!433187))))

(declare-fun e!550476 () Bool)

(assert (=> d!116505 e!550476))

(declare-fun res!653907 () Bool)

(assert (=> d!116505 (=> (not res!653907) (not e!550476))))

(assert (=> d!116505 (= res!653907 (contains!5708 lt!433198 lt!433187))))

(assert (=> d!116505 (= (addApplyDifferent!469 lt!433198 lt!433192 zeroValue!1367 lt!433187) lt!433325)))

(declare-fun b!976693 () Bool)

(assert (=> b!976693 (= e!550476 (not (= lt!433187 lt!433192)))))

(assert (= (and d!116505 res!653907) b!976693))

(assert (=> d!116505 m!903877))

(assert (=> d!116505 m!903879))

(declare-fun m!904237 () Bool)

(assert (=> d!116505 m!904237))

(assert (=> d!116505 m!903905))

(declare-fun m!904239 () Bool)

(assert (=> d!116505 m!904239))

(assert (=> d!116505 m!903877))

(assert (=> b!976532 d!116505))

(assert (=> d!116401 d!116387))

(declare-fun d!116507 () Bool)

(declare-fun e!550477 () Bool)

(assert (=> d!116507 e!550477))

(declare-fun res!653908 () Bool)

(assert (=> d!116507 (=> (not res!653908) (not e!550477))))

(declare-fun lt!433329 () ListLongMap!13323)

(assert (=> d!116507 (= res!653908 (contains!5708 lt!433329 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(declare-fun lt!433327 () List!20485)

(assert (=> d!116507 (= lt!433329 (ListLongMap!13324 lt!433327))))

(declare-fun lt!433328 () Unit!32429)

(declare-fun lt!433326 () Unit!32429)

(assert (=> d!116507 (= lt!433328 lt!433326)))

(assert (=> d!116507 (= (getValueByKey!512 lt!433327 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116507 (= lt!433326 (lemmaContainsTupThenGetReturnValue!269 lt!433327 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116507 (= lt!433327 (insertStrictlySorted!325 (toList!6677 call!41759) (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116507 (= (+!2884 call!41759 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) lt!433329)))

(declare-fun b!976694 () Bool)

(declare-fun res!653909 () Bool)

(assert (=> b!976694 (=> (not res!653909) (not e!550477))))

(assert (=> b!976694 (= res!653909 (= (getValueByKey!512 (toList!6677 lt!433329) (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(declare-fun b!976695 () Bool)

(assert (=> b!976695 (= e!550477 (contains!5711 (toList!6677 lt!433329) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))

(assert (= (and d!116507 res!653908) b!976694))

(assert (= (and b!976694 res!653909) b!976695))

(declare-fun m!904241 () Bool)

(assert (=> d!116507 m!904241))

(declare-fun m!904243 () Bool)

(assert (=> d!116507 m!904243))

(declare-fun m!904245 () Bool)

(assert (=> d!116507 m!904245))

(declare-fun m!904247 () Bool)

(assert (=> d!116507 m!904247))

(declare-fun m!904249 () Bool)

(assert (=> b!976694 m!904249))

(declare-fun m!904251 () Bool)

(assert (=> b!976695 m!904251))

(assert (=> b!976483 d!116507))

(declare-fun d!116509 () Bool)

(assert (=> d!116509 (= (apply!925 lt!433154 (select (arr!29321 _keys!1717) from!2118)) (get!15206 (getValueByKey!512 (toList!6677 lt!433154) (select (arr!29321 _keys!1717) from!2118))))))

(declare-fun bs!27634 () Bool)

(assert (= bs!27634 d!116509))

(assert (=> bs!27634 m!903789))

(assert (=> bs!27634 m!903961))

(assert (=> bs!27634 m!903961))

(declare-fun m!904253 () Bool)

(assert (=> bs!27634 m!904253))

(assert (=> b!976484 d!116509))

(declare-fun d!116511 () Bool)

(declare-fun c!99918 () Bool)

(assert (=> d!116511 (= c!99918 ((_ is ValueCellFull!10746) (select (arr!29322 _values!1425) from!2118)))))

(declare-fun e!550480 () V!34923)

(assert (=> d!116511 (= (get!15205 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)) e!550480)))

(declare-fun b!976700 () Bool)

(declare-fun get!15207 (ValueCell!10746 V!34923) V!34923)

(assert (=> b!976700 (= e!550480 (get!15207 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!976701 () Bool)

(declare-fun get!15208 (ValueCell!10746 V!34923) V!34923)

(assert (=> b!976701 (= e!550480 (get!15208 (select (arr!29322 _values!1425) from!2118) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116511 c!99918) b!976700))

(assert (= (and d!116511 (not c!99918)) b!976701))

(assert (=> b!976700 m!903831))

(assert (=> b!976700 m!903833))

(declare-fun m!904255 () Bool)

(assert (=> b!976700 m!904255))

(assert (=> b!976701 m!903831))

(assert (=> b!976701 m!903833))

(declare-fun m!904257 () Bool)

(assert (=> b!976701 m!904257))

(assert (=> b!976484 d!116511))

(declare-fun d!116513 () Bool)

(declare-fun e!550481 () Bool)

(assert (=> d!116513 e!550481))

(declare-fun res!653910 () Bool)

(assert (=> d!116513 (=> (not res!653910) (not e!550481))))

(declare-fun lt!433333 () ListLongMap!13323)

(assert (=> d!116513 (= res!653910 (contains!5708 lt!433333 (_1!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(declare-fun lt!433331 () List!20485)

(assert (=> d!116513 (= lt!433333 (ListLongMap!13324 lt!433331))))

(declare-fun lt!433332 () Unit!32429)

(declare-fun lt!433330 () Unit!32429)

(assert (=> d!116513 (= lt!433332 lt!433330)))

(assert (=> d!116513 (= (getValueByKey!512 lt!433331 (_1!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))) (Some!517 (_2!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116513 (= lt!433330 (lemmaContainsTupThenGetReturnValue!269 lt!433331 (_1!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (_2!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116513 (= lt!433331 (insertStrictlySorted!325 (toList!6677 (ite c!99863 call!41760 (ite c!99864 call!41756 call!41762))) (_1!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (_2!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116513 (= (+!2884 (ite c!99863 call!41760 (ite c!99864 call!41756 call!41762)) (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) lt!433333)))

(declare-fun b!976702 () Bool)

(declare-fun res!653911 () Bool)

(assert (=> b!976702 (=> (not res!653911) (not e!550481))))

(assert (=> b!976702 (= res!653911 (= (getValueByKey!512 (toList!6677 lt!433333) (_1!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))) (Some!517 (_2!7316 (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))))

(declare-fun b!976703 () Bool)

(assert (=> b!976703 (= e!550481 (contains!5711 (toList!6677 lt!433333) (ite (or c!99863 c!99864) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (= (and d!116513 res!653910) b!976702))

(assert (= (and b!976702 res!653911) b!976703))

(declare-fun m!904259 () Bool)

(assert (=> d!116513 m!904259))

(declare-fun m!904261 () Bool)

(assert (=> d!116513 m!904261))

(declare-fun m!904263 () Bool)

(assert (=> d!116513 m!904263))

(declare-fun m!904265 () Bool)

(assert (=> d!116513 m!904265))

(declare-fun m!904267 () Bool)

(assert (=> b!976702 m!904267))

(declare-fun m!904269 () Bool)

(assert (=> b!976703 m!904269))

(assert (=> bm!41755 d!116513))

(declare-fun d!116515 () Bool)

(assert (=> d!116515 (= (apply!925 lt!433189 #b0000000000000000000000000000000000000000000000000000000000000000) (get!15206 (getValueByKey!512 (toList!6677 lt!433189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!27635 () Bool)

(assert (= bs!27635 d!116515))

(assert (=> bs!27635 m!904137))

(assert (=> bs!27635 m!904137))

(declare-fun m!904271 () Bool)

(assert (=> bs!27635 m!904271))

(assert (=> b!976535 d!116515))

(declare-fun d!116517 () Bool)

(declare-fun res!653916 () Bool)

(declare-fun e!550486 () Bool)

(assert (=> d!116517 (=> res!653916 e!550486)))

(assert (=> d!116517 (= res!653916 (and ((_ is Cons!20481) (toList!6677 lt!433087)) (= (_1!7316 (h!21643 (toList!6677 lt!433087))) (select (arr!29321 _keys!1717) i!822))))))

(assert (=> d!116517 (= (containsKey!477 (toList!6677 lt!433087) (select (arr!29321 _keys!1717) i!822)) e!550486)))

(declare-fun b!976708 () Bool)

(declare-fun e!550487 () Bool)

(assert (=> b!976708 (= e!550486 e!550487)))

(declare-fun res!653917 () Bool)

(assert (=> b!976708 (=> (not res!653917) (not e!550487))))

(assert (=> b!976708 (= res!653917 (and (or (not ((_ is Cons!20481) (toList!6677 lt!433087))) (bvsle (_1!7316 (h!21643 (toList!6677 lt!433087))) (select (arr!29321 _keys!1717) i!822))) ((_ is Cons!20481) (toList!6677 lt!433087)) (bvslt (_1!7316 (h!21643 (toList!6677 lt!433087))) (select (arr!29321 _keys!1717) i!822))))))

(declare-fun b!976709 () Bool)

(assert (=> b!976709 (= e!550487 (containsKey!477 (t!29006 (toList!6677 lt!433087)) (select (arr!29321 _keys!1717) i!822)))))

(assert (= (and d!116517 (not res!653916)) b!976708))

(assert (= (and b!976708 res!653917) b!976709))

(assert (=> b!976709 m!903727))

(declare-fun m!904273 () Bool)

(assert (=> b!976709 m!904273))

(assert (=> d!116395 d!116517))

(declare-fun d!116519 () Bool)

(declare-fun res!653918 () Bool)

(declare-fun e!550488 () Bool)

(assert (=> d!116519 (=> res!653918 e!550488)))

(assert (=> d!116519 (= res!653918 (and ((_ is Cons!20481) (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (= (_1!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (select (arr!29321 _keys!1717) i!822))))))

(assert (=> d!116519 (= (containsKey!477 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)) (select (arr!29321 _keys!1717) i!822)) e!550488)))

(declare-fun b!976710 () Bool)

(declare-fun e!550489 () Bool)

(assert (=> b!976710 (= e!550488 e!550489)))

(declare-fun res!653919 () Bool)

(assert (=> b!976710 (=> (not res!653919) (not e!550489))))

(assert (=> b!976710 (= res!653919 (and (or (not ((_ is Cons!20481) (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (bvsle (_1!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (select (arr!29321 _keys!1717) i!822))) ((_ is Cons!20481) (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (bvslt (_1!7316 (h!21643 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428)))) (select (arr!29321 _keys!1717) i!822))))))

(declare-fun b!976711 () Bool)

(assert (=> b!976711 (= e!550489 (containsKey!477 (t!29006 (toList!6677 (getCurrentListMap!3862 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428))) (select (arr!29321 _keys!1717) i!822)))))

(assert (= (and d!116519 (not res!653918)) b!976710))

(assert (= (and b!976710 res!653919) b!976711))

(assert (=> b!976711 m!903727))

(declare-fun m!904275 () Bool)

(assert (=> b!976711 m!904275))

(assert (=> d!116381 d!116519))

(declare-fun d!116521 () Bool)

(declare-fun e!550490 () Bool)

(assert (=> d!116521 e!550490))

(declare-fun res!653920 () Bool)

(assert (=> d!116521 (=> (not res!653920) (not e!550490))))

(declare-fun lt!433337 () ListLongMap!13323)

(assert (=> d!116521 (= res!653920 (contains!5708 lt!433337 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(declare-fun lt!433335 () List!20485)

(assert (=> d!116521 (= lt!433337 (ListLongMap!13324 lt!433335))))

(declare-fun lt!433336 () Unit!32429)

(declare-fun lt!433334 () Unit!32429)

(assert (=> d!116521 (= lt!433336 lt!433334)))

(assert (=> d!116521 (= (getValueByKey!512 lt!433335 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116521 (= lt!433334 (lemmaContainsTupThenGetReturnValue!269 lt!433335 (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116521 (= lt!433335 (insertStrictlySorted!325 (toList!6677 call!41772) (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (=> d!116521 (= (+!2884 call!41772 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)) lt!433337)))

(declare-fun b!976712 () Bool)

(declare-fun res!653921 () Bool)

(assert (=> b!976712 (=> (not res!653921) (not e!550490))))

(assert (=> b!976712 (= res!653921 (= (getValueByKey!512 (toList!6677 lt!433337) (_1!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (Some!517 (_2!7316 (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(declare-fun b!976713 () Bool)

(assert (=> b!976713 (= e!550490 (contains!5711 (toList!6677 lt!433337) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))

(assert (= (and d!116521 res!653920) b!976712))

(assert (= (and b!976712 res!653921) b!976713))

(declare-fun m!904277 () Bool)

(assert (=> d!116521 m!904277))

(declare-fun m!904279 () Bool)

(assert (=> d!116521 m!904279))

(declare-fun m!904281 () Bool)

(assert (=> d!116521 m!904281))

(declare-fun m!904283 () Bool)

(assert (=> d!116521 m!904283))

(declare-fun m!904285 () Bool)

(assert (=> b!976712 m!904285))

(declare-fun m!904287 () Bool)

(assert (=> b!976713 m!904287))

(assert (=> b!976536 d!116521))

(declare-fun d!116523 () Bool)

(assert (=> d!116523 (= (apply!925 lt!433189 (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001))) (get!15206 (getValueByKey!512 (toList!6677 lt!433189) (select (arr!29321 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun bs!27636 () Bool)

(assert (= bs!27636 d!116523))

(assert (=> bs!27636 m!903737))

(assert (=> bs!27636 m!904007))

(assert (=> bs!27636 m!904007))

(declare-fun m!904289 () Bool)

(assert (=> bs!27636 m!904289))

(assert (=> b!976537 d!116523))

(declare-fun d!116525 () Bool)

(declare-fun c!99919 () Bool)

(assert (=> d!116525 (= c!99919 ((_ is ValueCellFull!10746) (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001))))))

(declare-fun e!550491 () V!34923)

(assert (=> d!116525 (= (get!15205 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)) e!550491)))

(declare-fun b!976714 () Bool)

(assert (=> b!976714 (= e!550491 (get!15207 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!976715 () Bool)

(assert (=> b!976715 (= e!550491 (get!15208 (select (arr!29322 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1723 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116525 c!99919) b!976714))

(assert (= (and d!116525 (not c!99919)) b!976715))

(assert (=> b!976714 m!903909))

(assert (=> b!976714 m!903833))

(declare-fun m!904291 () Bool)

(assert (=> b!976714 m!904291))

(assert (=> b!976715 m!903909))

(assert (=> b!976715 m!903833))

(declare-fun m!904293 () Bool)

(assert (=> b!976715 m!904293))

(assert (=> b!976537 d!116525))

(declare-fun d!116527 () Bool)

(declare-fun e!550492 () Bool)

(assert (=> d!116527 e!550492))

(declare-fun res!653922 () Bool)

(assert (=> d!116527 (=> (not res!653922) (not e!550492))))

(declare-fun lt!433341 () ListLongMap!13323)

(assert (=> d!116527 (= res!653922 (contains!5708 lt!433341 (_1!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(declare-fun lt!433339 () List!20485)

(assert (=> d!116527 (= lt!433341 (ListLongMap!13324 lt!433339))))

(declare-fun lt!433340 () Unit!32429)

(declare-fun lt!433338 () Unit!32429)

(assert (=> d!116527 (= lt!433340 lt!433338)))

(assert (=> d!116527 (= (getValueByKey!512 lt!433339 (_1!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))) (Some!517 (_2!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116527 (= lt!433338 (lemmaContainsTupThenGetReturnValue!269 lt!433339 (_1!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (_2!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116527 (= lt!433339 (insertStrictlySorted!325 (toList!6677 (ite c!99876 call!41773 (ite c!99877 call!41769 call!41775))) (_1!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) (_2!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))))))

(assert (=> d!116527 (= (+!2884 (ite c!99876 call!41773 (ite c!99877 call!41769 call!41775)) (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))) lt!433341)))

(declare-fun b!976716 () Bool)

(declare-fun res!653923 () Bool)

(assert (=> b!976716 (=> (not res!653923) (not e!550492))))

(assert (=> b!976716 (= res!653923 (= (getValueByKey!512 (toList!6677 lt!433341) (_1!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367)))) (Some!517 (_2!7316 (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))))

(declare-fun b!976717 () Bool)

(assert (=> b!976717 (= e!550492 (contains!5711 (toList!6677 lt!433341) (ite (or c!99876 c!99877) (tuple2!14613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1367) (tuple2!14613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1367))))))

(assert (= (and d!116527 res!653922) b!976716))

(assert (= (and b!976716 res!653923) b!976717))

(declare-fun m!904295 () Bool)

(assert (=> d!116527 m!904295))

(declare-fun m!904297 () Bool)

(assert (=> d!116527 m!904297))

(declare-fun m!904299 () Bool)

(assert (=> d!116527 m!904299))

(declare-fun m!904301 () Bool)

(assert (=> d!116527 m!904301))

(declare-fun m!904303 () Bool)

(assert (=> b!976716 m!904303))

(declare-fun m!904305 () Bool)

(assert (=> b!976717 m!904305))

(assert (=> bm!41768 d!116527))

(assert (=> b!976524 d!116419))

(declare-fun d!116529 () Bool)

(assert (=> d!116529 (arrayContainsKey!0 _keys!1717 lt!433179 #b00000000000000000000000000000000)))

(declare-fun lt!433344 () Unit!32429)

(declare-fun choose!13 (array!60923 (_ BitVec 64) (_ BitVec 32)) Unit!32429)

(assert (=> d!116529 (= lt!433344 (choose!13 _keys!1717 lt!433179 #b00000000000000000000000000000000))))

(assert (=> d!116529 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!116529 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1717 lt!433179 #b00000000000000000000000000000000) lt!433344)))

(declare-fun bs!27637 () Bool)

(assert (= bs!27637 d!116529))

(assert (=> bs!27637 m!903857))

(declare-fun m!904307 () Bool)

(assert (=> bs!27637 m!904307))

(assert (=> b!976527 d!116529))

(declare-fun d!116531 () Bool)

(declare-fun res!653928 () Bool)

(declare-fun e!550497 () Bool)

(assert (=> d!116531 (=> res!653928 e!550497)))

(assert (=> d!116531 (= res!653928 (= (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) lt!433179))))

(assert (=> d!116531 (= (arrayContainsKey!0 _keys!1717 lt!433179 #b00000000000000000000000000000000) e!550497)))

(declare-fun b!976722 () Bool)

(declare-fun e!550498 () Bool)

(assert (=> b!976722 (= e!550497 e!550498)))

(declare-fun res!653929 () Bool)

(assert (=> b!976722 (=> (not res!653929) (not e!550498))))

(assert (=> b!976722 (= res!653929 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!29801 _keys!1717)))))

(declare-fun b!976723 () Bool)

(assert (=> b!976723 (= e!550498 (arrayContainsKey!0 _keys!1717 lt!433179 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!116531 (not res!653928)) b!976722))

(assert (= (and b!976722 res!653929) b!976723))

(assert (=> d!116531 m!903839))

(declare-fun m!904309 () Bool)

(assert (=> b!976723 m!904309))

(assert (=> b!976527 d!116531))

(declare-fun b!976736 () Bool)

(declare-fun e!550507 () SeekEntryResult!9189)

(declare-fun e!550505 () SeekEntryResult!9189)

(assert (=> b!976736 (= e!550507 e!550505)))

(declare-fun lt!433352 () (_ BitVec 64))

(declare-fun lt!433351 () SeekEntryResult!9189)

(assert (=> b!976736 (= lt!433352 (select (arr!29321 _keys!1717) (index!39128 lt!433351)))))

(declare-fun c!99928 () Bool)

(assert (=> b!976736 (= c!99928 (= lt!433352 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)))))

(declare-fun b!976737 () Bool)

(declare-fun c!99927 () Bool)

(assert (=> b!976737 (= c!99927 (= lt!433352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!550506 () SeekEntryResult!9189)

(assert (=> b!976737 (= e!550505 e!550506)))

(declare-fun d!116533 () Bool)

(declare-fun lt!433353 () SeekEntryResult!9189)

(assert (=> d!116533 (and (or ((_ is Undefined!9189) lt!433353) (not ((_ is Found!9189) lt!433353)) (and (bvsge (index!39127 lt!433353) #b00000000000000000000000000000000) (bvslt (index!39127 lt!433353) (size!29801 _keys!1717)))) (or ((_ is Undefined!9189) lt!433353) ((_ is Found!9189) lt!433353) (not ((_ is MissingZero!9189) lt!433353)) (and (bvsge (index!39126 lt!433353) #b00000000000000000000000000000000) (bvslt (index!39126 lt!433353) (size!29801 _keys!1717)))) (or ((_ is Undefined!9189) lt!433353) ((_ is Found!9189) lt!433353) ((_ is MissingZero!9189) lt!433353) (not ((_ is MissingVacant!9189) lt!433353)) (and (bvsge (index!39129 lt!433353) #b00000000000000000000000000000000) (bvslt (index!39129 lt!433353) (size!29801 _keys!1717)))) (or ((_ is Undefined!9189) lt!433353) (ite ((_ is Found!9189) lt!433353) (= (select (arr!29321 _keys!1717) (index!39127 lt!433353)) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9189) lt!433353) (= (select (arr!29321 _keys!1717) (index!39126 lt!433353)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9189) lt!433353) (= (select (arr!29321 _keys!1717) (index!39129 lt!433353)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!116533 (= lt!433353 e!550507)))

(declare-fun c!99926 () Bool)

(assert (=> d!116533 (= c!99926 (and ((_ is Intermediate!9189) lt!433351) (undefined!10001 lt!433351)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!60923 (_ BitVec 32)) SeekEntryResult!9189)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!116533 (= lt!433351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) mask!2147) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147))))

(assert (=> d!116533 (validMask!0 mask!2147)))

(assert (=> d!116533 (= (seekEntryOrOpen!0 (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147) lt!433353)))

(declare-fun b!976738 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!60923 (_ BitVec 32)) SeekEntryResult!9189)

(assert (=> b!976738 (= e!550506 (seekKeyOrZeroReturnVacant!0 (x!84480 lt!433351) (index!39128 lt!433351) (index!39128 lt!433351) (select (arr!29321 _keys!1717) #b00000000000000000000000000000000) _keys!1717 mask!2147))))

(declare-fun b!976739 () Bool)

(assert (=> b!976739 (= e!550507 Undefined!9189)))

(declare-fun b!976740 () Bool)

(assert (=> b!976740 (= e!550505 (Found!9189 (index!39128 lt!433351)))))

(declare-fun b!976741 () Bool)

(assert (=> b!976741 (= e!550506 (MissingZero!9189 (index!39128 lt!433351)))))

(assert (= (and d!116533 c!99926) b!976739))

(assert (= (and d!116533 (not c!99926)) b!976736))

(assert (= (and b!976736 c!99928) b!976740))

(assert (= (and b!976736 (not c!99928)) b!976737))

(assert (= (and b!976737 c!99927) b!976741))

(assert (= (and b!976737 (not c!99927)) b!976738))

(declare-fun m!904311 () Bool)

(assert (=> b!976736 m!904311))

(declare-fun m!904313 () Bool)

(assert (=> d!116533 m!904313))

(assert (=> d!116533 m!903839))

(declare-fun m!904315 () Bool)

(assert (=> d!116533 m!904315))

(assert (=> d!116533 m!903717))

(declare-fun m!904317 () Bool)

(assert (=> d!116533 m!904317))

(assert (=> d!116533 m!903839))

(assert (=> d!116533 m!904313))

(declare-fun m!904319 () Bool)

(assert (=> d!116533 m!904319))

(declare-fun m!904321 () Bool)

(assert (=> d!116533 m!904321))

(assert (=> b!976738 m!903839))

(declare-fun m!904323 () Bool)

(assert (=> b!976738 m!904323))

(assert (=> b!976527 d!116533))

(assert (=> b!976508 d!116419))

(assert (=> d!116383 d!116387))

(declare-fun mapIsEmpty!35699 () Bool)

(declare-fun mapRes!35699 () Bool)

(assert (=> mapIsEmpty!35699 mapRes!35699))

(declare-fun mapNonEmpty!35699 () Bool)

(declare-fun tp!67952 () Bool)

(declare-fun e!550508 () Bool)

(assert (=> mapNonEmpty!35699 (= mapRes!35699 (and tp!67952 e!550508))))

(declare-fun mapKey!35699 () (_ BitVec 32))

(declare-fun mapRest!35699 () (Array (_ BitVec 32) ValueCell!10746))

(declare-fun mapValue!35699 () ValueCell!10746)

(assert (=> mapNonEmpty!35699 (= mapRest!35698 (store mapRest!35699 mapKey!35699 mapValue!35699))))

(declare-fun b!976743 () Bool)

(declare-fun e!550509 () Bool)

(assert (=> b!976743 (= e!550509 tp_is_empty!22455)))

(declare-fun condMapEmpty!35699 () Bool)

(declare-fun mapDefault!35699 () ValueCell!10746)

(assert (=> mapNonEmpty!35698 (= condMapEmpty!35699 (= mapRest!35698 ((as const (Array (_ BitVec 32) ValueCell!10746)) mapDefault!35699)))))

(assert (=> mapNonEmpty!35698 (= tp!67951 (and e!550509 mapRes!35699))))

(declare-fun b!976742 () Bool)

(assert (=> b!976742 (= e!550508 tp_is_empty!22455)))

(assert (= (and mapNonEmpty!35698 condMapEmpty!35699) mapIsEmpty!35699))

(assert (= (and mapNonEmpty!35698 (not condMapEmpty!35699)) mapNonEmpty!35699))

(assert (= (and mapNonEmpty!35699 ((_ is ValueCellFull!10746) mapValue!35699)) b!976742))

(assert (= (and mapNonEmpty!35698 ((_ is ValueCellFull!10746) mapDefault!35699)) b!976743))

(declare-fun m!904325 () Bool)

(assert (=> mapNonEmpty!35699 m!904325))

(declare-fun b_lambda!14627 () Bool)

(assert (= b_lambda!14619 (or (and start!83592 b_free!19551) b_lambda!14627)))

(declare-fun b_lambda!14629 () Bool)

(assert (= b_lambda!14625 (or (and start!83592 b_free!19551) b_lambda!14629)))

(declare-fun b_lambda!14631 () Bool)

(assert (= b_lambda!14621 (or (and start!83592 b_free!19551) b_lambda!14631)))

(declare-fun b_lambda!14633 () Bool)

(assert (= b_lambda!14623 (or (and start!83592 b_free!19551) b_lambda!14633)))

(check-sat (not d!116475) (not b!976714) (not b!976711) (not d!116513) (not b!976625) (not b!976649) (not b!976599) (not bm!41778) (not d!116455) (not b_lambda!14615) (not b!976682) (not d!116443) (not b!976668) (not bm!41776) (not b!976584) (not d!116497) (not b!976638) (not d!116423) (not d!116415) (not d!116459) (not b!976670) (not b!976582) (not d!116437) (not b!976690) (not d!116485) (not b!976685) (not d!116429) (not b!976636) (not d!116491) (not d!116433) (not b!976717) (not d!116471) (not b!976612) (not d!116489) (not b!976700) (not b!976677) (not b_lambda!14627) (not bm!41777) (not b_lambda!14617) (not d!116483) (not b!976635) (not d!116435) (not b!976689) (not b_lambda!14633) (not b!976629) (not b!976640) (not d!116439) (not d!116499) (not d!116463) (not d!116467) (not d!116427) (not d!116505) (not d!116461) (not d!116441) (not b!976627) (not b_lambda!14629) (not d!116431) (not b!976675) (not d!116457) (not d!116477) (not d!116507) (not b!976586) (not b!976596) (not b!976628) (not b!976679) (not b!976687) (not b!976702) (not b!976716) (not d!116523) (not b!976615) (not b!976683) (not b!976619) (not d!116425) (not d!116409) (not d!116515) (not d!116451) (not b!976626) (not mapNonEmpty!35699) (not b!976646) (not b!976643) (not bm!41775) (not b!976686) (not b!976631) (not b!976583) (not b!976712) (not d!116533) (not b!976709) (not d!116527) (not b!976618) (not b!976587) (not d!116529) (not b!976672) (not b!976738) (not b!976647) (not b!976688) (not b!976590) (not b!976665) (not b!976713) (not b!976723) (not d!116465) (not d!116473) (not b!976644) (not b!976632) (not b!976703) (not d!116411) (not b!976684) (not d!116501) (not b_lambda!14631) (not b!976680) (not b_next!19551) (not b!976701) (not b!976667) (not b!976663) (not d!116449) (not b!976593) (not b!976715) b_and!31221 (not b!976581) (not b!976669) tp_is_empty!22455 (not b!976614) (not d!116447) (not d!116421) (not d!116479) (not b!976695) (not d!116503) (not b!976659) (not d!116445) (not d!116487) (not d!116481) (not d!116405) (not d!116509) (not d!116521) (not d!116453) (not b!976658) (not b!976591) (not b!976662) (not d!116493) (not b!976661) (not b!976610) (not b!976694) (not b!976641) (not d!116495))
(check-sat b_and!31221 (not b_next!19551))
