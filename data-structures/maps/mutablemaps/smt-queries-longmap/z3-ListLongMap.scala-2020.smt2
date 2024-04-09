; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35206 () Bool)

(assert start!35206)

(declare-fun b_free!7791 () Bool)

(declare-fun b_next!7791 () Bool)

(assert (=> start!35206 (= b_free!7791 (not b_next!7791))))

(declare-fun tp!26964 () Bool)

(declare-fun b_and!15047 () Bool)

(assert (=> start!35206 (= tp!26964 b_and!15047)))

(declare-fun b!352685 () Bool)

(declare-fun res!195651 () Bool)

(declare-fun e!215973 () Bool)

(assert (=> b!352685 (=> (not res!195651) (not e!215973))))

(declare-datatypes ((array!19035 0))(
  ( (array!19036 (arr!9016 (Array (_ BitVec 32) (_ BitVec 64))) (size!9368 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19035)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19035 (_ BitVec 32)) Bool)

(assert (=> b!352685 (= res!195651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!13098 () Bool)

(declare-fun mapRes!13098 () Bool)

(declare-fun tp!26963 () Bool)

(declare-fun e!215974 () Bool)

(assert (=> mapNonEmpty!13098 (= mapRes!13098 (and tp!26963 e!215974))))

(declare-datatypes ((V!11301 0))(
  ( (V!11302 (val!3916 Int)) )
))
(declare-datatypes ((ValueCell!3528 0))(
  ( (ValueCellFull!3528 (v!6103 V!11301)) (EmptyCell!3528) )
))
(declare-fun mapRest!13098 () (Array (_ BitVec 32) ValueCell!3528))

(declare-datatypes ((array!19037 0))(
  ( (array!19038 (arr!9017 (Array (_ BitVec 32) ValueCell!3528)) (size!9369 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19037)

(declare-fun mapValue!13098 () ValueCell!3528)

(declare-fun mapKey!13098 () (_ BitVec 32))

(assert (=> mapNonEmpty!13098 (= (arr!9017 _values!1525) (store mapRest!13098 mapKey!13098 mapValue!13098))))

(declare-fun b!352686 () Bool)

(declare-fun res!195652 () Bool)

(assert (=> b!352686 (=> (not res!195652) (not e!215973))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11301)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11301)

(declare-datatypes ((tuple2!5644 0))(
  ( (tuple2!5645 (_1!2832 (_ BitVec 64)) (_2!2832 V!11301)) )
))
(declare-datatypes ((List!5280 0))(
  ( (Nil!5277) (Cons!5276 (h!6132 tuple2!5644) (t!10434 List!5280)) )
))
(declare-datatypes ((ListLongMap!4571 0))(
  ( (ListLongMap!4572 (toList!2301 List!5280)) )
))
(declare-fun contains!2370 (ListLongMap!4571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1818 (array!19035 array!19037 (_ BitVec 32) (_ BitVec 32) V!11301 V!11301 (_ BitVec 32) Int) ListLongMap!4571)

(assert (=> b!352686 (= res!195652 (not (contains!2370 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352687 () Bool)

(declare-fun res!195655 () Bool)

(assert (=> b!352687 (=> (not res!195655) (not e!215973))))

(assert (=> b!352687 (= res!195655 (and (= (size!9369 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9368 _keys!1895) (size!9369 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352688 () Bool)

(declare-fun res!195656 () Bool)

(assert (=> b!352688 (=> (not res!195656) (not e!215973))))

(declare-datatypes ((List!5281 0))(
  ( (Nil!5278) (Cons!5277 (h!6133 (_ BitVec 64)) (t!10435 List!5281)) )
))
(declare-fun arrayNoDuplicates!0 (array!19035 (_ BitVec 32) List!5281) Bool)

(assert (=> b!352688 (= res!195656 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5278))))

(declare-fun b!352689 () Bool)

(declare-fun e!215976 () Bool)

(declare-fun tp_is_empty!7743 () Bool)

(assert (=> b!352689 (= e!215976 tp_is_empty!7743)))

(declare-fun b!352690 () Bool)

(assert (=> b!352690 (= e!215974 tp_is_empty!7743)))

(declare-fun b!352692 () Bool)

(declare-fun e!215975 () Bool)

(assert (=> b!352692 (= e!215975 (and e!215976 mapRes!13098))))

(declare-fun condMapEmpty!13098 () Bool)

(declare-fun mapDefault!13098 () ValueCell!3528)

(assert (=> b!352692 (= condMapEmpty!13098 (= (arr!9017 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3528)) mapDefault!13098)))))

(declare-fun b!352693 () Bool)

(declare-fun res!195654 () Bool)

(assert (=> b!352693 (=> (not res!195654) (not e!215973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352693 (= res!195654 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!13098 () Bool)

(assert (=> mapIsEmpty!13098 mapRes!13098))

(declare-fun b!352691 () Bool)

(declare-datatypes ((SeekEntryResult!3467 0))(
  ( (MissingZero!3467 (index!16047 (_ BitVec 32))) (Found!3467 (index!16048 (_ BitVec 32))) (Intermediate!3467 (undefined!4279 Bool) (index!16049 (_ BitVec 32)) (x!35094 (_ BitVec 32))) (Undefined!3467) (MissingVacant!3467 (index!16050 (_ BitVec 32))) )
))
(declare-fun lt!165312 () SeekEntryResult!3467)

(get-info :version)

(assert (=> b!352691 (= e!215973 (and (not ((_ is Found!3467) lt!165312)) (not ((_ is MissingZero!3467) lt!165312)) (not ((_ is MissingVacant!3467) lt!165312)) (not ((_ is Undefined!3467) lt!165312))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19035 (_ BitVec 32)) SeekEntryResult!3467)

(assert (=> b!352691 (= lt!165312 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!195653 () Bool)

(assert (=> start!35206 (=> (not res!195653) (not e!215973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35206 (= res!195653 (validMask!0 mask!2385))))

(assert (=> start!35206 e!215973))

(assert (=> start!35206 true))

(assert (=> start!35206 tp_is_empty!7743))

(assert (=> start!35206 tp!26964))

(declare-fun array_inv!6642 (array!19037) Bool)

(assert (=> start!35206 (and (array_inv!6642 _values!1525) e!215975)))

(declare-fun array_inv!6643 (array!19035) Bool)

(assert (=> start!35206 (array_inv!6643 _keys!1895)))

(assert (= (and start!35206 res!195653) b!352687))

(assert (= (and b!352687 res!195655) b!352685))

(assert (= (and b!352685 res!195651) b!352688))

(assert (= (and b!352688 res!195656) b!352693))

(assert (= (and b!352693 res!195654) b!352686))

(assert (= (and b!352686 res!195652) b!352691))

(assert (= (and b!352692 condMapEmpty!13098) mapIsEmpty!13098))

(assert (= (and b!352692 (not condMapEmpty!13098)) mapNonEmpty!13098))

(assert (= (and mapNonEmpty!13098 ((_ is ValueCellFull!3528) mapValue!13098)) b!352690))

(assert (= (and b!352692 ((_ is ValueCellFull!3528) mapDefault!13098)) b!352689))

(assert (= start!35206 b!352692))

(declare-fun m!352247 () Bool)

(assert (=> b!352693 m!352247))

(declare-fun m!352249 () Bool)

(assert (=> b!352688 m!352249))

(declare-fun m!352251 () Bool)

(assert (=> mapNonEmpty!13098 m!352251))

(declare-fun m!352253 () Bool)

(assert (=> start!35206 m!352253))

(declare-fun m!352255 () Bool)

(assert (=> start!35206 m!352255))

(declare-fun m!352257 () Bool)

(assert (=> start!35206 m!352257))

(declare-fun m!352259 () Bool)

(assert (=> b!352691 m!352259))

(declare-fun m!352261 () Bool)

(assert (=> b!352685 m!352261))

(declare-fun m!352263 () Bool)

(assert (=> b!352686 m!352263))

(assert (=> b!352686 m!352263))

(declare-fun m!352265 () Bool)

(assert (=> b!352686 m!352265))

(check-sat (not b!352691) tp_is_empty!7743 (not b!352686) (not b_next!7791) (not b!352685) b_and!15047 (not b!352693) (not mapNonEmpty!13098) (not b!352688) (not start!35206))
(check-sat b_and!15047 (not b_next!7791))
(get-model)

(declare-fun d!71435 () Bool)

(assert (=> d!71435 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35206 d!71435))

(declare-fun d!71437 () Bool)

(assert (=> d!71437 (= (array_inv!6642 _values!1525) (bvsge (size!9369 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35206 d!71437))

(declare-fun d!71439 () Bool)

(assert (=> d!71439 (= (array_inv!6643 _keys!1895) (bvsge (size!9368 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35206 d!71439))

(declare-fun d!71441 () Bool)

(declare-fun res!195679 () Bool)

(declare-fun e!215998 () Bool)

(assert (=> d!71441 (=> res!195679 e!215998)))

(assert (=> d!71441 (= res!195679 (bvsge #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(assert (=> d!71441 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!215998)))

(declare-fun b!352729 () Bool)

(declare-fun e!215999 () Bool)

(declare-fun call!27086 () Bool)

(assert (=> b!352729 (= e!215999 call!27086)))

(declare-fun b!352730 () Bool)

(assert (=> b!352730 (= e!215998 e!215999)))

(declare-fun c!53543 () Bool)

(assert (=> b!352730 (= c!53543 (validKeyInArray!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352731 () Bool)

(declare-fun e!216000 () Bool)

(assert (=> b!352731 (= e!216000 call!27086)))

(declare-fun bm!27083 () Bool)

(assert (=> bm!27083 (= call!27086 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!352732 () Bool)

(assert (=> b!352732 (= e!215999 e!216000)))

(declare-fun lt!165323 () (_ BitVec 64))

(assert (=> b!352732 (= lt!165323 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10907 0))(
  ( (Unit!10908) )
))
(declare-fun lt!165322 () Unit!10907)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19035 (_ BitVec 64) (_ BitVec 32)) Unit!10907)

(assert (=> b!352732 (= lt!165322 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!165323 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!352732 (arrayContainsKey!0 _keys!1895 lt!165323 #b00000000000000000000000000000000)))

(declare-fun lt!165324 () Unit!10907)

(assert (=> b!352732 (= lt!165324 lt!165322)))

(declare-fun res!195680 () Bool)

(assert (=> b!352732 (= res!195680 (= (seekEntryOrOpen!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3467 #b00000000000000000000000000000000)))))

(assert (=> b!352732 (=> (not res!195680) (not e!216000))))

(assert (= (and d!71441 (not res!195679)) b!352730))

(assert (= (and b!352730 c!53543) b!352732))

(assert (= (and b!352730 (not c!53543)) b!352729))

(assert (= (and b!352732 res!195680) b!352731))

(assert (= (or b!352731 b!352729) bm!27083))

(declare-fun m!352287 () Bool)

(assert (=> b!352730 m!352287))

(assert (=> b!352730 m!352287))

(declare-fun m!352289 () Bool)

(assert (=> b!352730 m!352289))

(declare-fun m!352291 () Bool)

(assert (=> bm!27083 m!352291))

(assert (=> b!352732 m!352287))

(declare-fun m!352293 () Bool)

(assert (=> b!352732 m!352293))

(declare-fun m!352295 () Bool)

(assert (=> b!352732 m!352295))

(assert (=> b!352732 m!352287))

(declare-fun m!352297 () Bool)

(assert (=> b!352732 m!352297))

(assert (=> b!352685 d!71441))

(declare-fun d!71443 () Bool)

(assert (=> d!71443 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!352693 d!71443))

(declare-fun b!352743 () Bool)

(declare-fun e!216011 () Bool)

(declare-fun contains!2371 (List!5281 (_ BitVec 64)) Bool)

(assert (=> b!352743 (= e!216011 (contains!2371 Nil!5278 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71445 () Bool)

(declare-fun res!195689 () Bool)

(declare-fun e!216010 () Bool)

(assert (=> d!71445 (=> res!195689 e!216010)))

(assert (=> d!71445 (= res!195689 (bvsge #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(assert (=> d!71445 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5278) e!216010)))

(declare-fun b!352744 () Bool)

(declare-fun e!216009 () Bool)

(declare-fun call!27089 () Bool)

(assert (=> b!352744 (= e!216009 call!27089)))

(declare-fun b!352745 () Bool)

(assert (=> b!352745 (= e!216009 call!27089)))

(declare-fun bm!27086 () Bool)

(declare-fun c!53546 () Bool)

(assert (=> bm!27086 (= call!27089 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53546 (Cons!5277 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000) Nil!5278) Nil!5278)))))

(declare-fun b!352746 () Bool)

(declare-fun e!216012 () Bool)

(assert (=> b!352746 (= e!216010 e!216012)))

(declare-fun res!195687 () Bool)

(assert (=> b!352746 (=> (not res!195687) (not e!216012))))

(assert (=> b!352746 (= res!195687 (not e!216011))))

(declare-fun res!195688 () Bool)

(assert (=> b!352746 (=> (not res!195688) (not e!216011))))

(assert (=> b!352746 (= res!195688 (validKeyInArray!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352747 () Bool)

(assert (=> b!352747 (= e!216012 e!216009)))

(assert (=> b!352747 (= c!53546 (validKeyInArray!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71445 (not res!195689)) b!352746))

(assert (= (and b!352746 res!195688) b!352743))

(assert (= (and b!352746 res!195687) b!352747))

(assert (= (and b!352747 c!53546) b!352744))

(assert (= (and b!352747 (not c!53546)) b!352745))

(assert (= (or b!352744 b!352745) bm!27086))

(assert (=> b!352743 m!352287))

(assert (=> b!352743 m!352287))

(declare-fun m!352299 () Bool)

(assert (=> b!352743 m!352299))

(assert (=> bm!27086 m!352287))

(declare-fun m!352301 () Bool)

(assert (=> bm!27086 m!352301))

(assert (=> b!352746 m!352287))

(assert (=> b!352746 m!352287))

(assert (=> b!352746 m!352289))

(assert (=> b!352747 m!352287))

(assert (=> b!352747 m!352287))

(assert (=> b!352747 m!352289))

(assert (=> b!352688 d!71445))

(declare-fun d!71447 () Bool)

(declare-fun e!216017 () Bool)

(assert (=> d!71447 e!216017))

(declare-fun res!195692 () Bool)

(assert (=> d!71447 (=> res!195692 e!216017)))

(declare-fun lt!165336 () Bool)

(assert (=> d!71447 (= res!195692 (not lt!165336))))

(declare-fun lt!165335 () Bool)

(assert (=> d!71447 (= lt!165336 lt!165335)))

(declare-fun lt!165333 () Unit!10907)

(declare-fun e!216018 () Unit!10907)

(assert (=> d!71447 (= lt!165333 e!216018)))

(declare-fun c!53549 () Bool)

(assert (=> d!71447 (= c!53549 lt!165335)))

(declare-fun containsKey!344 (List!5280 (_ BitVec 64)) Bool)

(assert (=> d!71447 (= lt!165335 (containsKey!344 (toList!2301 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71447 (= (contains!2370 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!165336)))

(declare-fun b!352754 () Bool)

(declare-fun lt!165334 () Unit!10907)

(assert (=> b!352754 (= e!216018 lt!165334)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!293 (List!5280 (_ BitVec 64)) Unit!10907)

(assert (=> b!352754 (= lt!165334 (lemmaContainsKeyImpliesGetValueByKeyDefined!293 (toList!2301 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!358 0))(
  ( (Some!357 (v!6105 V!11301)) (None!356) )
))
(declare-fun isDefined!294 (Option!358) Bool)

(declare-fun getValueByKey!352 (List!5280 (_ BitVec 64)) Option!358)

(assert (=> b!352754 (isDefined!294 (getValueByKey!352 (toList!2301 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!352755 () Bool)

(declare-fun Unit!10909 () Unit!10907)

(assert (=> b!352755 (= e!216018 Unit!10909)))

(declare-fun b!352756 () Bool)

(assert (=> b!352756 (= e!216017 (isDefined!294 (getValueByKey!352 (toList!2301 (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71447 c!53549) b!352754))

(assert (= (and d!71447 (not c!53549)) b!352755))

(assert (= (and d!71447 (not res!195692)) b!352756))

(declare-fun m!352303 () Bool)

(assert (=> d!71447 m!352303))

(declare-fun m!352305 () Bool)

(assert (=> b!352754 m!352305))

(declare-fun m!352307 () Bool)

(assert (=> b!352754 m!352307))

(assert (=> b!352754 m!352307))

(declare-fun m!352309 () Bool)

(assert (=> b!352754 m!352309))

(assert (=> b!352756 m!352307))

(assert (=> b!352756 m!352307))

(assert (=> b!352756 m!352309))

(assert (=> b!352686 d!71447))

(declare-fun b!352799 () Bool)

(declare-fun c!53567 () Bool)

(assert (=> b!352799 (= c!53567 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!216054 () ListLongMap!4571)

(declare-fun e!216045 () ListLongMap!4571)

(assert (=> b!352799 (= e!216054 e!216045)))

(declare-fun b!352800 () Bool)

(declare-fun e!216047 () Bool)

(assert (=> b!352800 (= e!216047 (validKeyInArray!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352801 () Bool)

(declare-fun e!216046 () Bool)

(declare-fun call!27106 () Bool)

(assert (=> b!352801 (= e!216046 (not call!27106))))

(declare-fun b!352802 () Bool)

(declare-fun e!216051 () ListLongMap!4571)

(declare-fun call!27109 () ListLongMap!4571)

(declare-fun +!739 (ListLongMap!4571 tuple2!5644) ListLongMap!4571)

(assert (=> b!352802 (= e!216051 (+!739 call!27109 (tuple2!5645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!27101 () Bool)

(declare-fun call!27104 () ListLongMap!4571)

(assert (=> bm!27101 (= call!27104 call!27109)))

(declare-fun b!352803 () Bool)

(declare-fun lt!165381 () ListLongMap!4571)

(declare-fun e!216055 () Bool)

(declare-fun apply!295 (ListLongMap!4571 (_ BitVec 64)) V!11301)

(declare-fun get!4822 (ValueCell!3528 V!11301) V!11301)

(declare-fun dynLambda!633 (Int (_ BitVec 64)) V!11301)

(assert (=> b!352803 (= e!216055 (= (apply!295 lt!165381 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)) (get!4822 (select (arr!9017 _values!1525) #b00000000000000000000000000000000) (dynLambda!633 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!352803 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9369 _values!1525)))))

(assert (=> b!352803 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(declare-fun bm!27102 () Bool)

(declare-fun call!27108 () Bool)

(assert (=> bm!27102 (= call!27108 (contains!2370 lt!165381 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27103 () Bool)

(declare-fun call!27107 () ListLongMap!4571)

(declare-fun call!27110 () ListLongMap!4571)

(assert (=> bm!27103 (= call!27107 call!27110)))

(declare-fun b!352804 () Bool)

(declare-fun e!216049 () Bool)

(assert (=> b!352804 (= e!216049 (= (apply!295 lt!165381 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!27104 () Bool)

(declare-fun call!27105 () ListLongMap!4571)

(assert (=> bm!27104 (= call!27105 call!27107)))

(declare-fun b!352805 () Bool)

(assert (=> b!352805 (= e!216054 call!27104)))

(declare-fun b!352806 () Bool)

(declare-fun e!216056 () Bool)

(assert (=> b!352806 (= e!216056 e!216049)))

(declare-fun res!195715 () Bool)

(assert (=> b!352806 (= res!195715 call!27108)))

(assert (=> b!352806 (=> (not res!195715) (not e!216049))))

(declare-fun b!352807 () Bool)

(assert (=> b!352807 (= e!216056 (not call!27108))))

(declare-fun d!71449 () Bool)

(declare-fun e!216050 () Bool)

(assert (=> d!71449 e!216050))

(declare-fun res!195711 () Bool)

(assert (=> d!71449 (=> (not res!195711) (not e!216050))))

(assert (=> d!71449 (= res!195711 (or (bvsge #b00000000000000000000000000000000 (size!9368 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9368 _keys!1895)))))))

(declare-fun lt!165397 () ListLongMap!4571)

(assert (=> d!71449 (= lt!165381 lt!165397)))

(declare-fun lt!165384 () Unit!10907)

(declare-fun e!216057 () Unit!10907)

(assert (=> d!71449 (= lt!165384 e!216057)))

(declare-fun c!53563 () Bool)

(declare-fun e!216053 () Bool)

(assert (=> d!71449 (= c!53563 e!216053)))

(declare-fun res!195717 () Bool)

(assert (=> d!71449 (=> (not res!195717) (not e!216053))))

(assert (=> d!71449 (= res!195717 (bvslt #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(assert (=> d!71449 (= lt!165397 e!216051)))

(declare-fun c!53564 () Bool)

(assert (=> d!71449 (= c!53564 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71449 (validMask!0 mask!2385)))

(assert (=> d!71449 (= (getCurrentListMap!1818 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!165381)))

(declare-fun b!352808 () Bool)

(declare-fun res!195716 () Bool)

(assert (=> b!352808 (=> (not res!195716) (not e!216050))))

(assert (=> b!352808 (= res!195716 e!216046)))

(declare-fun c!53566 () Bool)

(assert (=> b!352808 (= c!53566 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!27105 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!614 (array!19035 array!19037 (_ BitVec 32) (_ BitVec 32) V!11301 V!11301 (_ BitVec 32) Int) ListLongMap!4571)

(assert (=> bm!27105 (= call!27110 (getCurrentListMapNoExtraKeys!614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!352809 () Bool)

(assert (=> b!352809 (= e!216050 e!216056)))

(declare-fun c!53562 () Bool)

(assert (=> b!352809 (= c!53562 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!352810 () Bool)

(assert (=> b!352810 (= e!216045 call!27104)))

(declare-fun b!352811 () Bool)

(assert (=> b!352811 (= e!216045 call!27105)))

(declare-fun b!352812 () Bool)

(declare-fun Unit!10910 () Unit!10907)

(assert (=> b!352812 (= e!216057 Unit!10910)))

(declare-fun b!352813 () Bool)

(declare-fun e!216048 () Bool)

(assert (=> b!352813 (= e!216046 e!216048)))

(declare-fun res!195719 () Bool)

(assert (=> b!352813 (= res!195719 call!27106)))

(assert (=> b!352813 (=> (not res!195719) (not e!216048))))

(declare-fun b!352814 () Bool)

(declare-fun lt!165391 () Unit!10907)

(assert (=> b!352814 (= e!216057 lt!165391)))

(declare-fun lt!165394 () ListLongMap!4571)

(assert (=> b!352814 (= lt!165394 (getCurrentListMapNoExtraKeys!614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165396 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165396 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165382 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165382 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165399 () Unit!10907)

(declare-fun addStillContains!271 (ListLongMap!4571 (_ BitVec 64) V!11301 (_ BitVec 64)) Unit!10907)

(assert (=> b!352814 (= lt!165399 (addStillContains!271 lt!165394 lt!165396 zeroValue!1467 lt!165382))))

(assert (=> b!352814 (contains!2370 (+!739 lt!165394 (tuple2!5645 lt!165396 zeroValue!1467)) lt!165382)))

(declare-fun lt!165401 () Unit!10907)

(assert (=> b!352814 (= lt!165401 lt!165399)))

(declare-fun lt!165398 () ListLongMap!4571)

(assert (=> b!352814 (= lt!165398 (getCurrentListMapNoExtraKeys!614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165392 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165392 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165395 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165395 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165388 () Unit!10907)

(declare-fun addApplyDifferent!271 (ListLongMap!4571 (_ BitVec 64) V!11301 (_ BitVec 64)) Unit!10907)

(assert (=> b!352814 (= lt!165388 (addApplyDifferent!271 lt!165398 lt!165392 minValue!1467 lt!165395))))

(assert (=> b!352814 (= (apply!295 (+!739 lt!165398 (tuple2!5645 lt!165392 minValue!1467)) lt!165395) (apply!295 lt!165398 lt!165395))))

(declare-fun lt!165383 () Unit!10907)

(assert (=> b!352814 (= lt!165383 lt!165388)))

(declare-fun lt!165390 () ListLongMap!4571)

(assert (=> b!352814 (= lt!165390 (getCurrentListMapNoExtraKeys!614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165389 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165389 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165385 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165385 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165393 () Unit!10907)

(assert (=> b!352814 (= lt!165393 (addApplyDifferent!271 lt!165390 lt!165389 zeroValue!1467 lt!165385))))

(assert (=> b!352814 (= (apply!295 (+!739 lt!165390 (tuple2!5645 lt!165389 zeroValue!1467)) lt!165385) (apply!295 lt!165390 lt!165385))))

(declare-fun lt!165387 () Unit!10907)

(assert (=> b!352814 (= lt!165387 lt!165393)))

(declare-fun lt!165400 () ListLongMap!4571)

(assert (=> b!352814 (= lt!165400 (getCurrentListMapNoExtraKeys!614 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165386 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165386 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165402 () (_ BitVec 64))

(assert (=> b!352814 (= lt!165402 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!352814 (= lt!165391 (addApplyDifferent!271 lt!165400 lt!165386 minValue!1467 lt!165402))))

(assert (=> b!352814 (= (apply!295 (+!739 lt!165400 (tuple2!5645 lt!165386 minValue!1467)) lt!165402) (apply!295 lt!165400 lt!165402))))

(declare-fun b!352815 () Bool)

(assert (=> b!352815 (= e!216053 (validKeyInArray!0 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27106 () Bool)

(declare-fun c!53565 () Bool)

(assert (=> bm!27106 (= call!27109 (+!739 (ite c!53564 call!27110 (ite c!53565 call!27107 call!27105)) (ite (or c!53564 c!53565) (tuple2!5645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!352816 () Bool)

(assert (=> b!352816 (= e!216048 (= (apply!295 lt!165381 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!27107 () Bool)

(assert (=> bm!27107 (= call!27106 (contains!2370 lt!165381 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!352817 () Bool)

(assert (=> b!352817 (= e!216051 e!216054)))

(assert (=> b!352817 (= c!53565 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!352818 () Bool)

(declare-fun res!195718 () Bool)

(assert (=> b!352818 (=> (not res!195718) (not e!216050))))

(declare-fun e!216052 () Bool)

(assert (=> b!352818 (= res!195718 e!216052)))

(declare-fun res!195713 () Bool)

(assert (=> b!352818 (=> res!195713 e!216052)))

(assert (=> b!352818 (= res!195713 (not e!216047))))

(declare-fun res!195714 () Bool)

(assert (=> b!352818 (=> (not res!195714) (not e!216047))))

(assert (=> b!352818 (= res!195714 (bvslt #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(declare-fun b!352819 () Bool)

(assert (=> b!352819 (= e!216052 e!216055)))

(declare-fun res!195712 () Bool)

(assert (=> b!352819 (=> (not res!195712) (not e!216055))))

(assert (=> b!352819 (= res!195712 (contains!2370 lt!165381 (select (arr!9016 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!352819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9368 _keys!1895)))))

(assert (= (and d!71449 c!53564) b!352802))

(assert (= (and d!71449 (not c!53564)) b!352817))

(assert (= (and b!352817 c!53565) b!352805))

(assert (= (and b!352817 (not c!53565)) b!352799))

(assert (= (and b!352799 c!53567) b!352810))

(assert (= (and b!352799 (not c!53567)) b!352811))

(assert (= (or b!352810 b!352811) bm!27104))

(assert (= (or b!352805 bm!27104) bm!27103))

(assert (= (or b!352805 b!352810) bm!27101))

(assert (= (or b!352802 bm!27103) bm!27105))

(assert (= (or b!352802 bm!27101) bm!27106))

(assert (= (and d!71449 res!195717) b!352815))

(assert (= (and d!71449 c!53563) b!352814))

(assert (= (and d!71449 (not c!53563)) b!352812))

(assert (= (and d!71449 res!195711) b!352818))

(assert (= (and b!352818 res!195714) b!352800))

(assert (= (and b!352818 (not res!195713)) b!352819))

(assert (= (and b!352819 res!195712) b!352803))

(assert (= (and b!352818 res!195718) b!352808))

(assert (= (and b!352808 c!53566) b!352813))

(assert (= (and b!352808 (not c!53566)) b!352801))

(assert (= (and b!352813 res!195719) b!352816))

(assert (= (or b!352813 b!352801) bm!27107))

(assert (= (and b!352808 res!195716) b!352809))

(assert (= (and b!352809 c!53562) b!352806))

(assert (= (and b!352809 (not c!53562)) b!352807))

(assert (= (and b!352806 res!195715) b!352804))

(assert (= (or b!352806 b!352807) bm!27102))

(declare-fun b_lambda!8549 () Bool)

(assert (=> (not b_lambda!8549) (not b!352803)))

(declare-fun t!10437 () Bool)

(declare-fun tb!3113 () Bool)

(assert (=> (and start!35206 (= defaultEntry!1528 defaultEntry!1528) t!10437) tb!3113))

(declare-fun result!5653 () Bool)

(assert (=> tb!3113 (= result!5653 tp_is_empty!7743)))

(assert (=> b!352803 t!10437))

(declare-fun b_and!15051 () Bool)

(assert (= b_and!15047 (and (=> t!10437 result!5653) b_and!15051)))

(declare-fun m!352311 () Bool)

(assert (=> bm!27106 m!352311))

(assert (=> b!352815 m!352287))

(assert (=> b!352815 m!352287))

(assert (=> b!352815 m!352289))

(declare-fun m!352313 () Bool)

(assert (=> bm!27102 m!352313))

(declare-fun m!352315 () Bool)

(assert (=> bm!27107 m!352315))

(assert (=> d!71449 m!352253))

(declare-fun m!352317 () Bool)

(assert (=> b!352804 m!352317))

(assert (=> b!352800 m!352287))

(assert (=> b!352800 m!352287))

(assert (=> b!352800 m!352289))

(declare-fun m!352319 () Bool)

(assert (=> b!352814 m!352319))

(declare-fun m!352321 () Bool)

(assert (=> b!352814 m!352321))

(declare-fun m!352323 () Bool)

(assert (=> b!352814 m!352323))

(declare-fun m!352325 () Bool)

(assert (=> b!352814 m!352325))

(declare-fun m!352327 () Bool)

(assert (=> b!352814 m!352327))

(declare-fun m!352329 () Bool)

(assert (=> b!352814 m!352329))

(declare-fun m!352331 () Bool)

(assert (=> b!352814 m!352331))

(declare-fun m!352333 () Bool)

(assert (=> b!352814 m!352333))

(declare-fun m!352335 () Bool)

(assert (=> b!352814 m!352335))

(declare-fun m!352337 () Bool)

(assert (=> b!352814 m!352337))

(declare-fun m!352339 () Bool)

(assert (=> b!352814 m!352339))

(declare-fun m!352341 () Bool)

(assert (=> b!352814 m!352341))

(assert (=> b!352814 m!352287))

(assert (=> b!352814 m!352325))

(assert (=> b!352814 m!352339))

(declare-fun m!352343 () Bool)

(assert (=> b!352814 m!352343))

(declare-fun m!352345 () Bool)

(assert (=> b!352814 m!352345))

(declare-fun m!352347 () Bool)

(assert (=> b!352814 m!352347))

(assert (=> b!352814 m!352345))

(declare-fun m!352349 () Bool)

(assert (=> b!352814 m!352349))

(assert (=> b!352814 m!352335))

(assert (=> bm!27105 m!352331))

(declare-fun m!352351 () Bool)

(assert (=> b!352816 m!352351))

(assert (=> b!352819 m!352287))

(assert (=> b!352819 m!352287))

(declare-fun m!352353 () Bool)

(assert (=> b!352819 m!352353))

(declare-fun m!352355 () Bool)

(assert (=> b!352802 m!352355))

(assert (=> b!352803 m!352287))

(declare-fun m!352357 () Bool)

(assert (=> b!352803 m!352357))

(assert (=> b!352803 m!352287))

(declare-fun m!352359 () Bool)

(assert (=> b!352803 m!352359))

(declare-fun m!352361 () Bool)

(assert (=> b!352803 m!352361))

(assert (=> b!352803 m!352357))

(assert (=> b!352803 m!352361))

(declare-fun m!352363 () Bool)

(assert (=> b!352803 m!352363))

(assert (=> b!352686 d!71449))

(declare-fun b!352834 () Bool)

(declare-fun e!216066 () SeekEntryResult!3467)

(declare-fun lt!165410 () SeekEntryResult!3467)

(assert (=> b!352834 (= e!216066 (Found!3467 (index!16049 lt!165410)))))

(declare-fun b!352835 () Bool)

(declare-fun e!216064 () SeekEntryResult!3467)

(assert (=> b!352835 (= e!216064 e!216066)))

(declare-fun lt!165411 () (_ BitVec 64))

(assert (=> b!352835 (= lt!165411 (select (arr!9016 _keys!1895) (index!16049 lt!165410)))))

(declare-fun c!53575 () Bool)

(assert (=> b!352835 (= c!53575 (= lt!165411 k0!1348))))

(declare-fun e!216065 () SeekEntryResult!3467)

(declare-fun b!352836 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!19035 (_ BitVec 32)) SeekEntryResult!3467)

(assert (=> b!352836 (= e!216065 (seekKeyOrZeroReturnVacant!0 (x!35094 lt!165410) (index!16049 lt!165410) (index!16049 lt!165410) k0!1348 _keys!1895 mask!2385))))

(declare-fun d!71451 () Bool)

(declare-fun lt!165409 () SeekEntryResult!3467)

(assert (=> d!71451 (and (or ((_ is Undefined!3467) lt!165409) (not ((_ is Found!3467) lt!165409)) (and (bvsge (index!16048 lt!165409) #b00000000000000000000000000000000) (bvslt (index!16048 lt!165409) (size!9368 _keys!1895)))) (or ((_ is Undefined!3467) lt!165409) ((_ is Found!3467) lt!165409) (not ((_ is MissingZero!3467) lt!165409)) (and (bvsge (index!16047 lt!165409) #b00000000000000000000000000000000) (bvslt (index!16047 lt!165409) (size!9368 _keys!1895)))) (or ((_ is Undefined!3467) lt!165409) ((_ is Found!3467) lt!165409) ((_ is MissingZero!3467) lt!165409) (not ((_ is MissingVacant!3467) lt!165409)) (and (bvsge (index!16050 lt!165409) #b00000000000000000000000000000000) (bvslt (index!16050 lt!165409) (size!9368 _keys!1895)))) (or ((_ is Undefined!3467) lt!165409) (ite ((_ is Found!3467) lt!165409) (= (select (arr!9016 _keys!1895) (index!16048 lt!165409)) k0!1348) (ite ((_ is MissingZero!3467) lt!165409) (= (select (arr!9016 _keys!1895) (index!16047 lt!165409)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3467) lt!165409) (= (select (arr!9016 _keys!1895) (index!16050 lt!165409)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71451 (= lt!165409 e!216064)))

(declare-fun c!53576 () Bool)

(assert (=> d!71451 (= c!53576 (and ((_ is Intermediate!3467) lt!165410) (undefined!4279 lt!165410)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!19035 (_ BitVec 32)) SeekEntryResult!3467)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71451 (= lt!165410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71451 (validMask!0 mask!2385)))

(assert (=> d!71451 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!165409)))

(declare-fun b!352837 () Bool)

(declare-fun c!53574 () Bool)

(assert (=> b!352837 (= c!53574 (= lt!165411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!352837 (= e!216066 e!216065)))

(declare-fun b!352838 () Bool)

(assert (=> b!352838 (= e!216064 Undefined!3467)))

(declare-fun b!352839 () Bool)

(assert (=> b!352839 (= e!216065 (MissingZero!3467 (index!16049 lt!165410)))))

(assert (= (and d!71451 c!53576) b!352838))

(assert (= (and d!71451 (not c!53576)) b!352835))

(assert (= (and b!352835 c!53575) b!352834))

(assert (= (and b!352835 (not c!53575)) b!352837))

(assert (= (and b!352837 c!53574) b!352839))

(assert (= (and b!352837 (not c!53574)) b!352836))

(declare-fun m!352365 () Bool)

(assert (=> b!352835 m!352365))

(declare-fun m!352367 () Bool)

(assert (=> b!352836 m!352367))

(declare-fun m!352369 () Bool)

(assert (=> d!71451 m!352369))

(declare-fun m!352371 () Bool)

(assert (=> d!71451 m!352371))

(declare-fun m!352373 () Bool)

(assert (=> d!71451 m!352373))

(declare-fun m!352375 () Bool)

(assert (=> d!71451 m!352375))

(assert (=> d!71451 m!352253))

(assert (=> d!71451 m!352375))

(declare-fun m!352377 () Bool)

(assert (=> d!71451 m!352377))

(assert (=> b!352691 d!71451))

(declare-fun b!352846 () Bool)

(declare-fun e!216071 () Bool)

(assert (=> b!352846 (= e!216071 tp_is_empty!7743)))

(declare-fun b!352847 () Bool)

(declare-fun e!216072 () Bool)

(assert (=> b!352847 (= e!216072 tp_is_empty!7743)))

(declare-fun condMapEmpty!13104 () Bool)

(declare-fun mapDefault!13104 () ValueCell!3528)

(assert (=> mapNonEmpty!13098 (= condMapEmpty!13104 (= mapRest!13098 ((as const (Array (_ BitVec 32) ValueCell!3528)) mapDefault!13104)))))

(declare-fun mapRes!13104 () Bool)

(assert (=> mapNonEmpty!13098 (= tp!26963 (and e!216072 mapRes!13104))))

(declare-fun mapIsEmpty!13104 () Bool)

(assert (=> mapIsEmpty!13104 mapRes!13104))

(declare-fun mapNonEmpty!13104 () Bool)

(declare-fun tp!26973 () Bool)

(assert (=> mapNonEmpty!13104 (= mapRes!13104 (and tp!26973 e!216071))))

(declare-fun mapKey!13104 () (_ BitVec 32))

(declare-fun mapValue!13104 () ValueCell!3528)

(declare-fun mapRest!13104 () (Array (_ BitVec 32) ValueCell!3528))

(assert (=> mapNonEmpty!13104 (= mapRest!13098 (store mapRest!13104 mapKey!13104 mapValue!13104))))

(assert (= (and mapNonEmpty!13098 condMapEmpty!13104) mapIsEmpty!13104))

(assert (= (and mapNonEmpty!13098 (not condMapEmpty!13104)) mapNonEmpty!13104))

(assert (= (and mapNonEmpty!13104 ((_ is ValueCellFull!3528) mapValue!13104)) b!352846))

(assert (= (and mapNonEmpty!13098 ((_ is ValueCellFull!3528) mapDefault!13104)) b!352847))

(declare-fun m!352379 () Bool)

(assert (=> mapNonEmpty!13104 m!352379))

(declare-fun b_lambda!8551 () Bool)

(assert (= b_lambda!8549 (or (and start!35206 b_free!7791) b_lambda!8551)))

(check-sat (not b!352819) (not b!352803) (not bm!27086) (not b!352802) tp_is_empty!7743 (not b!352815) (not bm!27102) (not b!352814) (not b_next!7791) b_and!15051 (not d!71447) (not b!352746) (not b!352800) (not d!71449) (not b_lambda!8551) (not b!352747) (not bm!27106) (not bm!27105) (not bm!27107) (not mapNonEmpty!13104) (not d!71451) (not b!352804) (not b!352836) (not bm!27083) (not b!352732) (not b!352756) (not b!352816) (not b!352743) (not b!352754) (not b!352730))
(check-sat b_and!15051 (not b_next!7791))
