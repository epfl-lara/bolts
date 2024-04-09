; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2946 () Bool)

(assert start!2946)

(declare-fun b!16853 () Bool)

(declare-fun b_free!585 () Bool)

(declare-fun b_next!585 () Bool)

(assert (=> b!16853 (= b_free!585 (not b_next!585))))

(declare-fun tp!2941 () Bool)

(declare-fun b_and!1229 () Bool)

(assert (=> b!16853 (= tp!2941 b_and!1229)))

(declare-fun b!16844 () Bool)

(declare-fun e!10501 () Bool)

(declare-datatypes ((V!957 0))(
  ( (V!958 (val!451 Int)) )
))
(declare-datatypes ((ValueCell!225 0))(
  ( (ValueCellFull!225 (v!1402 V!957)) (EmptyCell!225) )
))
(declare-datatypes ((array!893 0))(
  ( (array!894 (arr!429 (Array (_ BitVec 32) ValueCell!225)) (size!518 (_ BitVec 32))) )
))
(declare-datatypes ((array!895 0))(
  ( (array!896 (arr!430 (Array (_ BitVec 32) (_ BitVec 64))) (size!519 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!36 0))(
  ( (LongMapFixedSize!37 (defaultEntry!1628 Int) (mask!4538 (_ BitVec 32)) (extraKeys!1542 (_ BitVec 32)) (zeroValue!1565 V!957) (minValue!1565 V!957) (_size!49 (_ BitVec 32)) (_keys!3053 array!895) (_values!1626 array!893) (_vacant!49 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!36 0))(
  ( (Cell!37 (v!1403 LongMapFixedSize!36)) )
))
(declare-datatypes ((LongMap!36 0))(
  ( (LongMap!37 (underlying!29 Cell!36)) )
))
(declare-datatypes ((tuple2!678 0))(
  ( (tuple2!679 (_1!339 Bool) (_2!339 LongMap!36)) )
))
(declare-fun lt!4146 () tuple2!678)

(declare-fun valid!26 (LongMapFixedSize!36) Bool)

(assert (=> b!16844 (= e!10501 (not (valid!26 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(declare-fun b!16845 () Bool)

(declare-fun e!10500 () Bool)

(declare-fun e!10493 () Bool)

(assert (=> b!16845 (= e!10500 e!10493)))

(declare-fun mapIsEmpty!704 () Bool)

(declare-fun mapRes!704 () Bool)

(assert (=> mapIsEmpty!704 mapRes!704))

(declare-fun b!16846 () Bool)

(declare-fun e!10495 () Bool)

(assert (=> b!16846 (= e!10493 e!10495)))

(declare-fun b!16847 () Bool)

(declare-fun e!10496 () tuple2!678)

(declare-fun thiss!848 () LongMap!36)

(assert (=> b!16847 (= e!10496 (tuple2!679 true thiss!848))))

(declare-fun res!12400 () Bool)

(declare-fun e!10497 () Bool)

(assert (=> start!2946 (=> (not res!12400) (not e!10497))))

(declare-fun valid!27 (LongMap!36) Bool)

(assert (=> start!2946 (= res!12400 (valid!27 thiss!848))))

(assert (=> start!2946 e!10497))

(assert (=> start!2946 e!10500))

(declare-fun b!16848 () Bool)

(assert (=> b!16848 (= e!10497 e!10501)))

(declare-fun res!12399 () Bool)

(assert (=> b!16848 (=> (not res!12399) (not e!10501))))

(assert (=> b!16848 (= res!12399 (_1!339 lt!4146))))

(assert (=> b!16848 (= lt!4146 e!10496)))

(declare-fun c!1625 () Bool)

(declare-fun imbalanced!3 (LongMap!36) Bool)

(assert (=> b!16848 (= c!1625 (imbalanced!3 thiss!848))))

(declare-fun mapNonEmpty!704 () Bool)

(declare-fun tp!2942 () Bool)

(declare-fun e!10494 () Bool)

(assert (=> mapNonEmpty!704 (= mapRes!704 (and tp!2942 e!10494))))

(declare-fun mapValue!704 () ValueCell!225)

(declare-fun mapRest!704 () (Array (_ BitVec 32) ValueCell!225))

(declare-fun mapKey!704 () (_ BitVec 32))

(assert (=> mapNonEmpty!704 (= (arr!429 (_values!1626 (v!1403 (underlying!29 thiss!848)))) (store mapRest!704 mapKey!704 mapValue!704))))

(declare-fun b!16849 () Bool)

(declare-fun repack!1 (LongMap!36) tuple2!678)

(assert (=> b!16849 (= e!10496 (repack!1 thiss!848))))

(declare-fun b!16850 () Bool)

(declare-fun e!10498 () Bool)

(declare-fun e!10492 () Bool)

(assert (=> b!16850 (= e!10498 (and e!10492 mapRes!704))))

(declare-fun condMapEmpty!704 () Bool)

(declare-fun mapDefault!704 () ValueCell!225)

(assert (=> b!16850 (= condMapEmpty!704 (= (arr!429 (_values!1626 (v!1403 (underlying!29 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!225)) mapDefault!704)))))

(declare-fun b!16851 () Bool)

(declare-fun tp_is_empty!849 () Bool)

(assert (=> b!16851 (= e!10492 tp_is_empty!849)))

(declare-fun b!16852 () Bool)

(assert (=> b!16852 (= e!10494 tp_is_empty!849)))

(declare-fun array_inv!305 (array!895) Bool)

(declare-fun array_inv!306 (array!893) Bool)

(assert (=> b!16853 (= e!10495 (and tp!2941 tp_is_empty!849 (array_inv!305 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) (array_inv!306 (_values!1626 (v!1403 (underlying!29 thiss!848)))) e!10498))))

(assert (= (and start!2946 res!12400) b!16848))

(assert (= (and b!16848 c!1625) b!16849))

(assert (= (and b!16848 (not c!1625)) b!16847))

(assert (= (and b!16848 res!12399) b!16844))

(assert (= (and b!16850 condMapEmpty!704) mapIsEmpty!704))

(assert (= (and b!16850 (not condMapEmpty!704)) mapNonEmpty!704))

(get-info :version)

(assert (= (and mapNonEmpty!704 ((_ is ValueCellFull!225) mapValue!704)) b!16852))

(assert (= (and b!16850 ((_ is ValueCellFull!225) mapDefault!704)) b!16851))

(assert (= b!16853 b!16850))

(assert (= b!16846 b!16853))

(assert (= b!16845 b!16846))

(assert (= start!2946 b!16845))

(declare-fun m!11865 () Bool)

(assert (=> start!2946 m!11865))

(declare-fun m!11867 () Bool)

(assert (=> b!16853 m!11867))

(declare-fun m!11869 () Bool)

(assert (=> b!16853 m!11869))

(declare-fun m!11871 () Bool)

(assert (=> mapNonEmpty!704 m!11871))

(declare-fun m!11873 () Bool)

(assert (=> b!16849 m!11873))

(declare-fun m!11875 () Bool)

(assert (=> b!16844 m!11875))

(declare-fun m!11877 () Bool)

(assert (=> b!16848 m!11877))

(check-sat (not b!16849) (not b!16848) (not mapNonEmpty!704) b_and!1229 (not start!2946) (not b_next!585) (not b!16853) tp_is_empty!849 (not b!16844))
(check-sat b_and!1229 (not b_next!585))
(get-model)

(declare-fun b!16902 () Bool)

(declare-datatypes ((tuple2!680 0))(
  ( (tuple2!681 (_1!340 Bool) (_2!340 LongMapFixedSize!36)) )
))
(declare-fun lt!4174 () tuple2!680)

(declare-fun call!468 () tuple2!680)

(assert (=> b!16902 (= lt!4174 call!468)))

(declare-datatypes ((tuple2!682 0))(
  ( (tuple2!683 (_1!341 Bool) (_2!341 Cell!36)) )
))
(declare-fun e!10544 () tuple2!682)

(assert (=> b!16902 (= e!10544 (tuple2!683 (_1!340 lt!4174) (Cell!37 (_2!340 lt!4174))))))

(declare-fun c!1640 () Bool)

(declare-fun call!467 () tuple2!680)

(declare-fun lt!4171 () tuple2!680)

(declare-fun bm!464 () Bool)

(declare-fun call!470 () LongMapFixedSize!36)

(declare-fun c!1637 () Bool)

(declare-fun update!2 (LongMapFixedSize!36 (_ BitVec 64) V!957) tuple2!680)

(assert (=> bm!464 (= call!467 (update!2 (ite c!1637 (_2!340 lt!4171) call!470) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun b!16903 () Bool)

(declare-fun e!10542 () Bool)

(declare-fun lt!4178 () tuple2!678)

(declare-datatypes ((tuple2!684 0))(
  ( (tuple2!685 (_1!342 (_ BitVec 64)) (_2!342 V!957)) )
))
(declare-datatypes ((List!527 0))(
  ( (Nil!524) (Cons!523 (h!1089 tuple2!684) (t!3166 List!527)) )
))
(declare-datatypes ((ListLongMap!507 0))(
  ( (ListLongMap!508 (toList!269 List!527)) )
))
(declare-fun map!326 (LongMap!36) ListLongMap!507)

(assert (=> b!16903 (= e!10542 (= (map!326 (_2!339 lt!4178)) (map!326 thiss!848)))))

(declare-fun b!16904 () Bool)

(declare-fun e!10545 () tuple2!682)

(declare-fun lt!4175 () tuple2!680)

(assert (=> b!16904 (= e!10545 (tuple2!683 (and (_1!340 lt!4171) (_1!340 lt!4175)) (Cell!37 (_2!340 lt!4175))))))

(declare-fun call!469 () LongMapFixedSize!36)

(assert (=> b!16904 (= lt!4171 (update!2 call!469 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))

(assert (=> b!16904 (= lt!4175 call!467)))

(declare-fun bm!465 () Bool)

(assert (=> bm!465 (= call!470 call!469)))

(declare-fun b!16906 () Bool)

(declare-fun e!10546 () tuple2!682)

(declare-fun lt!4177 () tuple2!680)

(assert (=> b!16906 (= e!10546 (tuple2!683 (_1!340 lt!4177) (Cell!37 (_2!340 lt!4177))))))

(assert (=> b!16906 (= lt!4177 call!468)))

(declare-fun b!16907 () Bool)

(declare-fun c!1639 () Bool)

(assert (=> b!16907 (= c!1639 (and (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!16907 (= e!10544 e!10546)))

(declare-fun bm!466 () Bool)

(assert (=> bm!466 (= call!468 call!467)))

(declare-fun b!16905 () Bool)

(declare-fun lt!4173 () Cell!36)

(assert (=> b!16905 (= e!10546 (tuple2!683 true lt!4173))))

(declare-fun d!3365 () Bool)

(assert (=> d!3365 e!10542))

(declare-fun res!12409 () Bool)

(assert (=> d!3365 (=> res!12409 e!10542)))

(assert (=> d!3365 (= res!12409 (= (_1!339 lt!4178) false))))

(declare-datatypes ((tuple3!0 0))(
  ( (tuple3!1 (_1!343 Bool) (_2!343 Cell!36) (_3!0 LongMap!36)) )
))
(declare-fun lt!4170 () tuple3!0)

(assert (=> d!3365 (= lt!4178 (tuple2!679 (_1!343 lt!4170) (_3!0 lt!4170)))))

(declare-fun e!10543 () tuple3!0)

(assert (=> d!3365 (= lt!4170 e!10543)))

(declare-fun c!1638 () Bool)

(declare-fun lt!4179 () tuple2!682)

(assert (=> d!3365 (= c!1638 (not (_1!341 lt!4179)))))

(assert (=> d!3365 (= lt!4179 e!10545)))

(assert (=> d!3365 (= c!1637 (and (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!4172 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!7 ((_ BitVec 32) Int) LongMapFixedSize!36)

(assert (=> d!3365 (= lt!4173 (Cell!37 (getNewLongMapFixedSize!7 lt!4172 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))))))))

(declare-fun computeNewMask!1 (LongMap!36 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3365 (= lt!4172 (computeNewMask!1 thiss!848 (mask!4538 (v!1403 (underlying!29 thiss!848))) (_vacant!49 (v!1403 (underlying!29 thiss!848))) (_size!49 (v!1403 (underlying!29 thiss!848)))))))

(assert (=> d!3365 (valid!27 thiss!848)))

(assert (=> d!3365 (= (repack!1 thiss!848) lt!4178)))

(declare-fun b!16908 () Bool)

(declare-fun lt!4176 () tuple2!680)

(assert (=> b!16908 (= e!10543 (ite (_1!340 lt!4176) (tuple3!1 true (underlying!29 thiss!848) (LongMap!37 (Cell!37 (_2!340 lt!4176)))) (tuple3!1 false (Cell!37 (_2!340 lt!4176)) thiss!848)))))

(declare-fun repackFrom!1 (LongMap!36 LongMapFixedSize!36 (_ BitVec 32)) tuple2!680)

(assert (=> b!16908 (= lt!4176 (repackFrom!1 thiss!848 (v!1403 (_2!341 lt!4179)) (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001)))))

(declare-fun b!16909 () Bool)

(assert (=> b!16909 (= e!10545 e!10544)))

(assert (=> b!16909 (= c!1640 (and (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!467 () Bool)

(assert (=> bm!467 (= call!469 (getNewLongMapFixedSize!7 lt!4172 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun b!16910 () Bool)

(assert (=> b!16910 (= e!10543 (tuple3!1 false (_2!341 lt!4179) thiss!848))))

(assert (= (and d!3365 c!1637) b!16904))

(assert (= (and d!3365 (not c!1637)) b!16909))

(assert (= (and b!16909 c!1640) b!16902))

(assert (= (and b!16909 (not c!1640)) b!16907))

(assert (= (and b!16907 c!1639) b!16906))

(assert (= (and b!16907 (not c!1639)) b!16905))

(assert (= (or b!16902 b!16906) bm!465))

(assert (= (or b!16902 b!16906) bm!466))

(assert (= (or b!16904 bm!466) bm!464))

(assert (= (or b!16904 bm!465) bm!467))

(assert (= (and d!3365 c!1638) b!16910))

(assert (= (and d!3365 (not c!1638)) b!16908))

(assert (= (and d!3365 (not res!12409)) b!16903))

(declare-fun m!11893 () Bool)

(assert (=> bm!464 m!11893))

(declare-fun m!11895 () Bool)

(assert (=> d!3365 m!11895))

(declare-fun m!11897 () Bool)

(assert (=> d!3365 m!11897))

(assert (=> d!3365 m!11865))

(declare-fun m!11899 () Bool)

(assert (=> b!16904 m!11899))

(declare-fun m!11901 () Bool)

(assert (=> b!16908 m!11901))

(assert (=> bm!467 m!11895))

(declare-fun m!11903 () Bool)

(assert (=> b!16903 m!11903))

(declare-fun m!11905 () Bool)

(assert (=> b!16903 m!11905))

(assert (=> b!16849 d!3365))

(declare-fun d!3367 () Bool)

(assert (=> d!3367 (= (valid!27 thiss!848) (valid!26 (v!1403 (underlying!29 thiss!848))))))

(declare-fun bs!803 () Bool)

(assert (= bs!803 d!3367))

(declare-fun m!11907 () Bool)

(assert (=> bs!803 m!11907))

(assert (=> start!2946 d!3367))

(declare-fun d!3369 () Bool)

(assert (=> d!3369 (= (imbalanced!3 thiss!848) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!49 (v!1403 (underlying!29 thiss!848))) (_vacant!49 (v!1403 (underlying!29 thiss!848))))) (mask!4538 (v!1403 (underlying!29 thiss!848)))) (bvsgt (_vacant!49 (v!1403 (underlying!29 thiss!848))) (_size!49 (v!1403 (underlying!29 thiss!848))))))))

(assert (=> b!16848 d!3369))

(declare-fun d!3371 () Bool)

(assert (=> d!3371 (= (array_inv!305 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) (bvsge (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!16853 d!3371))

(declare-fun d!3373 () Bool)

(assert (=> d!3373 (= (array_inv!306 (_values!1626 (v!1403 (underlying!29 thiss!848)))) (bvsge (size!518 (_values!1626 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!16853 d!3373))

(declare-fun d!3375 () Bool)

(declare-fun res!12416 () Bool)

(declare-fun e!10549 () Bool)

(assert (=> d!3375 (=> (not res!12416) (not e!10549))))

(declare-fun simpleValid!7 (LongMapFixedSize!36) Bool)

(assert (=> d!3375 (= res!12416 (simpleValid!7 (v!1403 (underlying!29 (_2!339 lt!4146)))))))

(assert (=> d!3375 (= (valid!26 (v!1403 (underlying!29 (_2!339 lt!4146)))) e!10549)))

(declare-fun b!16917 () Bool)

(declare-fun res!12417 () Bool)

(assert (=> b!16917 (=> (not res!12417) (not e!10549))))

(declare-fun arrayCountValidKeys!0 (array!895 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!16917 (= res!12417 (= (arrayCountValidKeys!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))) (_size!49 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(declare-fun b!16918 () Bool)

(declare-fun res!12418 () Bool)

(assert (=> b!16918 (=> (not res!12418) (not e!10549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!895 (_ BitVec 32)) Bool)

(assert (=> b!16918 (= res!12418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(declare-fun b!16919 () Bool)

(declare-datatypes ((List!528 0))(
  ( (Nil!525) (Cons!524 (h!1090 (_ BitVec 64)) (t!3167 List!528)) )
))
(declare-fun arrayNoDuplicates!0 (array!895 (_ BitVec 32) List!528) Bool)

(assert (=> b!16919 (= e!10549 (arrayNoDuplicates!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000 Nil!525))))

(assert (= (and d!3375 res!12416) b!16917))

(assert (= (and b!16917 res!12417) b!16918))

(assert (= (and b!16918 res!12418) b!16919))

(declare-fun m!11909 () Bool)

(assert (=> d!3375 m!11909))

(declare-fun m!11911 () Bool)

(assert (=> b!16917 m!11911))

(declare-fun m!11913 () Bool)

(assert (=> b!16918 m!11913))

(declare-fun m!11915 () Bool)

(assert (=> b!16919 m!11915))

(assert (=> b!16844 d!3375))

(declare-fun condMapEmpty!710 () Bool)

(declare-fun mapDefault!710 () ValueCell!225)

(assert (=> mapNonEmpty!704 (= condMapEmpty!710 (= mapRest!704 ((as const (Array (_ BitVec 32) ValueCell!225)) mapDefault!710)))))

(declare-fun e!10555 () Bool)

(declare-fun mapRes!710 () Bool)

(assert (=> mapNonEmpty!704 (= tp!2942 (and e!10555 mapRes!710))))

(declare-fun mapNonEmpty!710 () Bool)

(declare-fun tp!2951 () Bool)

(declare-fun e!10554 () Bool)

(assert (=> mapNonEmpty!710 (= mapRes!710 (and tp!2951 e!10554))))

(declare-fun mapRest!710 () (Array (_ BitVec 32) ValueCell!225))

(declare-fun mapValue!710 () ValueCell!225)

(declare-fun mapKey!710 () (_ BitVec 32))

(assert (=> mapNonEmpty!710 (= mapRest!704 (store mapRest!710 mapKey!710 mapValue!710))))

(declare-fun mapIsEmpty!710 () Bool)

(assert (=> mapIsEmpty!710 mapRes!710))

(declare-fun b!16926 () Bool)

(assert (=> b!16926 (= e!10554 tp_is_empty!849)))

(declare-fun b!16927 () Bool)

(assert (=> b!16927 (= e!10555 tp_is_empty!849)))

(assert (= (and mapNonEmpty!704 condMapEmpty!710) mapIsEmpty!710))

(assert (= (and mapNonEmpty!704 (not condMapEmpty!710)) mapNonEmpty!710))

(assert (= (and mapNonEmpty!710 ((_ is ValueCellFull!225) mapValue!710)) b!16926))

(assert (= (and mapNonEmpty!704 ((_ is ValueCellFull!225) mapDefault!710)) b!16927))

(declare-fun m!11917 () Bool)

(assert (=> mapNonEmpty!710 m!11917))

(check-sat (not mapNonEmpty!710) (not b!16918) tp_is_empty!849 (not bm!467) (not b!16908) b_and!1229 (not d!3367) (not d!3375) (not b_next!585) (not bm!464) (not b!16903) (not b!16904) (not d!3365) (not b!16919) (not b!16917))
(check-sat b_and!1229 (not b_next!585))
(get-model)

(declare-fun b!16936 () Bool)

(declare-fun e!10564 () Bool)

(declare-fun e!10563 () Bool)

(assert (=> b!16936 (= e!10564 e!10563)))

(declare-fun c!1643 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!16936 (= c!1643 (validKeyInArray!0 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun d!3377 () Bool)

(declare-fun res!12424 () Bool)

(assert (=> d!3377 (=> res!12424 e!10564)))

(assert (=> d!3377 (= res!12424 (bvsge #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))))))

(assert (=> d!3377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146))))) e!10564)))

(declare-fun b!16937 () Bool)

(declare-fun e!10562 () Bool)

(assert (=> b!16937 (= e!10563 e!10562)))

(declare-fun lt!4188 () (_ BitVec 64))

(assert (=> b!16937 (= lt!4188 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!341 0))(
  ( (Unit!342) )
))
(declare-fun lt!4186 () Unit!341)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!895 (_ BitVec 64) (_ BitVec 32)) Unit!341)

(assert (=> b!16937 (= lt!4186 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) lt!4188 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!16937 (arrayContainsKey!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) lt!4188 #b00000000000000000000000000000000)))

(declare-fun lt!4187 () Unit!341)

(assert (=> b!16937 (= lt!4187 lt!4186)))

(declare-fun res!12423 () Bool)

(declare-datatypes ((SeekEntryResult!47 0))(
  ( (MissingZero!47 (index!2307 (_ BitVec 32))) (Found!47 (index!2308 (_ BitVec 32))) (Intermediate!47 (undefined!859 Bool) (index!2309 (_ BitVec 32)) (x!4378 (_ BitVec 32))) (Undefined!47) (MissingVacant!47 (index!2310 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!895 (_ BitVec 32)) SeekEntryResult!47)

(assert (=> b!16937 (= res!12423 (= (seekEntryOrOpen!0 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000) (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146))))) (Found!47 #b00000000000000000000000000000000)))))

(assert (=> b!16937 (=> (not res!12423) (not e!10562))))

(declare-fun b!16938 () Bool)

(declare-fun call!473 () Bool)

(assert (=> b!16938 (= e!10563 call!473)))

(declare-fun bm!470 () Bool)

(assert (=> bm!470 (= call!473 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(declare-fun b!16939 () Bool)

(assert (=> b!16939 (= e!10562 call!473)))

(assert (= (and d!3377 (not res!12424)) b!16936))

(assert (= (and b!16936 c!1643) b!16937))

(assert (= (and b!16936 (not c!1643)) b!16938))

(assert (= (and b!16937 res!12423) b!16939))

(assert (= (or b!16939 b!16938) bm!470))

(declare-fun m!11919 () Bool)

(assert (=> b!16936 m!11919))

(assert (=> b!16936 m!11919))

(declare-fun m!11921 () Bool)

(assert (=> b!16936 m!11921))

(assert (=> b!16937 m!11919))

(declare-fun m!11923 () Bool)

(assert (=> b!16937 m!11923))

(declare-fun m!11925 () Bool)

(assert (=> b!16937 m!11925))

(assert (=> b!16937 m!11919))

(declare-fun m!11927 () Bool)

(assert (=> b!16937 m!11927))

(declare-fun m!11929 () Bool)

(assert (=> bm!470 m!11929))

(assert (=> b!16918 d!3377))

(declare-fun b!16950 () Bool)

(declare-fun e!10574 () Bool)

(declare-fun contains!199 (List!528 (_ BitVec 64)) Bool)

(assert (=> b!16950 (= e!10574 (contains!199 Nil!525 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun b!16951 () Bool)

(declare-fun e!10573 () Bool)

(declare-fun call!476 () Bool)

(assert (=> b!16951 (= e!10573 call!476)))

(declare-fun d!3379 () Bool)

(declare-fun res!12431 () Bool)

(declare-fun e!10575 () Bool)

(assert (=> d!3379 (=> res!12431 e!10575)))

(assert (=> d!3379 (= res!12431 (bvsge #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))))))

(assert (=> d!3379 (= (arrayNoDuplicates!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000 Nil!525) e!10575)))

(declare-fun b!16952 () Bool)

(declare-fun e!10576 () Bool)

(assert (=> b!16952 (= e!10575 e!10576)))

(declare-fun res!12433 () Bool)

(assert (=> b!16952 (=> (not res!12433) (not e!10576))))

(assert (=> b!16952 (= res!12433 (not e!10574))))

(declare-fun res!12432 () Bool)

(assert (=> b!16952 (=> (not res!12432) (not e!10574))))

(assert (=> b!16952 (= res!12432 (validKeyInArray!0 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun bm!473 () Bool)

(declare-fun c!1646 () Bool)

(assert (=> bm!473 (= call!476 (arrayNoDuplicates!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!1646 (Cons!524 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000) Nil!525) Nil!525)))))

(declare-fun b!16953 () Bool)

(assert (=> b!16953 (= e!10576 e!10573)))

(assert (=> b!16953 (= c!1646 (validKeyInArray!0 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun b!16954 () Bool)

(assert (=> b!16954 (= e!10573 call!476)))

(assert (= (and d!3379 (not res!12431)) b!16952))

(assert (= (and b!16952 res!12432) b!16950))

(assert (= (and b!16952 res!12433) b!16953))

(assert (= (and b!16953 c!1646) b!16951))

(assert (= (and b!16953 (not c!1646)) b!16954))

(assert (= (or b!16951 b!16954) bm!473))

(assert (=> b!16950 m!11919))

(assert (=> b!16950 m!11919))

(declare-fun m!11931 () Bool)

(assert (=> b!16950 m!11931))

(assert (=> b!16952 m!11919))

(assert (=> b!16952 m!11919))

(assert (=> b!16952 m!11921))

(assert (=> bm!473 m!11919))

(declare-fun m!11933 () Bool)

(assert (=> bm!473 m!11933))

(assert (=> b!16953 m!11919))

(assert (=> b!16953 m!11919))

(assert (=> b!16953 m!11921))

(assert (=> b!16919 d!3379))

(declare-fun b!16967 () Bool)

(declare-fun e!10585 () Bool)

(declare-fun lt!4251 () tuple2!684)

(declare-fun lt!4240 () (_ BitVec 32))

(assert (=> b!16967 (= e!10585 (ite (= (_1!342 lt!4251) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!4240 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!4240 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!16968 () Bool)

(declare-fun e!10584 () Unit!341)

(declare-fun Unit!343 () Unit!341)

(assert (=> b!16968 (= e!10584 Unit!343)))

(declare-fun b!16969 () Bool)

(declare-fun res!12439 () Bool)

(declare-fun e!10583 () Bool)

(assert (=> b!16969 (=> (not res!12439) (not e!10583))))

(declare-fun lt!4256 () LongMapFixedSize!36)

(assert (=> b!16969 (= res!12439 (= (mask!4538 lt!4256) lt!4172))))

(declare-fun b!16970 () Bool)

(declare-fun lt!4243 () array!895)

(assert (=> b!16970 (= e!10585 (arrayContainsKey!0 lt!4243 (_1!342 lt!4251) #b00000000000000000000000000000000))))

(declare-fun d!3381 () Bool)

(assert (=> d!3381 e!10583))

(declare-fun res!12438 () Bool)

(assert (=> d!3381 (=> (not res!12438) (not e!10583))))

(assert (=> d!3381 (= res!12438 (valid!26 lt!4256))))

(declare-fun lt!4241 () LongMapFixedSize!36)

(assert (=> d!3381 (= lt!4256 lt!4241)))

(declare-fun lt!4245 () Unit!341)

(assert (=> d!3381 (= lt!4245 e!10584)))

(declare-fun c!1651 () Bool)

(declare-fun map!327 (LongMapFixedSize!36) ListLongMap!507)

(assert (=> d!3381 (= c!1651 (not (= (map!327 lt!4241) (ListLongMap!508 Nil!524))))))

(declare-fun lt!4252 () Unit!341)

(declare-fun lt!4242 () Unit!341)

(assert (=> d!3381 (= lt!4252 lt!4242)))

(declare-fun lt!4239 () array!895)

(declare-fun lt!4257 () (_ BitVec 32))

(declare-fun lt!4248 () List!528)

(assert (=> d!3381 (arrayNoDuplicates!0 lt!4239 lt!4257 lt!4248)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!895 (_ BitVec 32) (_ BitVec 32) List!528) Unit!341)

(assert (=> d!3381 (= lt!4242 (lemmaArrayNoDuplicatesInAll0Array!0 lt!4239 lt!4257 (bvadd lt!4172 #b00000000000000000000000000000001) lt!4248))))

(assert (=> d!3381 (= lt!4248 Nil!525)))

(assert (=> d!3381 (= lt!4257 #b00000000000000000000000000000000)))

(assert (=> d!3381 (= lt!4239 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)))))

(declare-fun lt!4254 () Unit!341)

(declare-fun lt!4237 () Unit!341)

(assert (=> d!3381 (= lt!4254 lt!4237)))

(declare-fun lt!4244 () (_ BitVec 32))

(declare-fun lt!4235 () array!895)

(assert (=> d!3381 (arrayForallSeekEntryOrOpenFound!0 lt!4244 lt!4235 lt!4172)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!895 (_ BitVec 32) (_ BitVec 32)) Unit!341)

(assert (=> d!3381 (= lt!4237 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!4235 lt!4172 lt!4244))))

(assert (=> d!3381 (= lt!4244 #b00000000000000000000000000000000)))

(assert (=> d!3381 (= lt!4235 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)))))

(declare-fun lt!4247 () Unit!341)

(declare-fun lt!4253 () Unit!341)

(assert (=> d!3381 (= lt!4247 lt!4253)))

(declare-fun lt!4255 () array!895)

(declare-fun lt!4246 () (_ BitVec 32))

(declare-fun lt!4236 () (_ BitVec 32))

(assert (=> d!3381 (= (arrayCountValidKeys!0 lt!4255 lt!4246 lt!4236) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!895 (_ BitVec 32) (_ BitVec 32)) Unit!341)

(assert (=> d!3381 (= lt!4253 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!4255 lt!4246 lt!4236))))

(assert (=> d!3381 (= lt!4236 (bvadd lt!4172 #b00000000000000000000000000000001))))

(assert (=> d!3381 (= lt!4246 #b00000000000000000000000000000000)))

(assert (=> d!3381 (= lt!4255 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)))))

(declare-fun dynLambda!132 (Int (_ BitVec 64)) V!957)

(assert (=> d!3381 (= lt!4241 (LongMapFixedSize!37 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) lt!4172 #b00000000000000000000000000000000 (dynLambda!132 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!132 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)) (array!894 ((as const (Array (_ BitVec 32) ValueCell!225)) EmptyCell!225) (bvadd lt!4172 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3381 (validMask!0 lt!4172)))

(assert (=> d!3381 (= (getNewLongMapFixedSize!7 lt!4172 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))) lt!4256)))

(declare-fun b!16971 () Bool)

(declare-fun Unit!344 () Unit!341)

(assert (=> b!16971 (= e!10584 Unit!344)))

(declare-fun head!818 (List!527) tuple2!684)

(assert (=> b!16971 (= lt!4251 (head!818 (toList!269 (map!327 lt!4241))))))

(assert (=> b!16971 (= lt!4243 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)))))

(assert (=> b!16971 (= lt!4240 #b00000000000000000000000000000000)))

(declare-fun lt!4250 () Unit!341)

(declare-fun lemmaKeyInListMapIsInArray!81 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 64) Int) Unit!341)

(assert (=> b!16971 (= lt!4250 (lemmaKeyInListMapIsInArray!81 lt!4243 (array!894 ((as const (Array (_ BitVec 32) ValueCell!225)) EmptyCell!225) (bvadd lt!4172 #b00000000000000000000000000000001)) lt!4172 lt!4240 (dynLambda!132 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!132 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!342 lt!4251) (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun c!1652 () Bool)

(assert (=> b!16971 (= c!1652 (and (not (= (_1!342 lt!4251) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!342 lt!4251) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!16971 e!10585))

(declare-fun lt!4238 () Unit!341)

(assert (=> b!16971 (= lt!4238 lt!4250)))

(declare-fun lt!4249 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!895 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!16971 (= lt!4249 (arrayScanForKey!0 (array!896 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!4172 #b00000000000000000000000000000001)) (_1!342 lt!4251) #b00000000000000000000000000000000))))

(assert (=> b!16971 false))

(declare-fun b!16972 () Bool)

(assert (=> b!16972 (= e!10583 (= (map!327 lt!4256) (ListLongMap!508 Nil!524)))))

(assert (= (and d!3381 c!1651) b!16971))

(assert (= (and d!3381 (not c!1651)) b!16968))

(assert (= (and b!16971 c!1652) b!16970))

(assert (= (and b!16971 (not c!1652)) b!16967))

(assert (= (and d!3381 res!12438) b!16969))

(assert (= (and b!16969 res!12439) b!16972))

(declare-fun b_lambda!1439 () Bool)

(assert (=> (not b_lambda!1439) (not d!3381)))

(declare-fun t!3169 () Bool)

(declare-fun tb!627 () Bool)

(assert (=> (and b!16853 (= (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))) t!3169) tb!627))

(declare-fun result!1007 () Bool)

(assert (=> tb!627 (= result!1007 tp_is_empty!849)))

(assert (=> d!3381 t!3169))

(declare-fun b_and!1233 () Bool)

(assert (= b_and!1229 (and (=> t!3169 result!1007) b_and!1233)))

(declare-fun b_lambda!1441 () Bool)

(assert (=> (not b_lambda!1441) (not b!16971)))

(assert (=> b!16971 t!3169))

(declare-fun b_and!1235 () Bool)

(assert (= b_and!1233 (and (=> t!3169 result!1007) b_and!1235)))

(declare-fun m!11935 () Bool)

(assert (=> b!16970 m!11935))

(declare-fun m!11937 () Bool)

(assert (=> d!3381 m!11937))

(declare-fun m!11939 () Bool)

(assert (=> d!3381 m!11939))

(declare-fun m!11941 () Bool)

(assert (=> d!3381 m!11941))

(declare-fun m!11943 () Bool)

(assert (=> d!3381 m!11943))

(declare-fun m!11945 () Bool)

(assert (=> d!3381 m!11945))

(declare-fun m!11947 () Bool)

(assert (=> d!3381 m!11947))

(declare-fun m!11949 () Bool)

(assert (=> d!3381 m!11949))

(declare-fun m!11951 () Bool)

(assert (=> d!3381 m!11951))

(declare-fun m!11953 () Bool)

(assert (=> d!3381 m!11953))

(declare-fun m!11955 () Bool)

(assert (=> d!3381 m!11955))

(declare-fun m!11957 () Bool)

(assert (=> b!16971 m!11957))

(assert (=> b!16971 m!11947))

(declare-fun m!11959 () Bool)

(assert (=> b!16971 m!11959))

(assert (=> b!16971 m!11947))

(assert (=> b!16971 m!11947))

(declare-fun m!11961 () Bool)

(assert (=> b!16971 m!11961))

(assert (=> b!16971 m!11955))

(declare-fun m!11963 () Bool)

(assert (=> b!16972 m!11963))

(assert (=> bm!467 d!3381))

(declare-fun call!527 () ListLongMap!507)

(declare-fun bm!522 () Bool)

(assert (=> bm!522 (= call!527 (map!327 (ite c!1637 (_2!340 lt!4171) call!470)))))

(declare-fun bm!523 () Bool)

(declare-fun call!530 () SeekEntryResult!47)

(declare-fun call!529 () SeekEntryResult!47)

(assert (=> bm!523 (= call!530 call!529)))

(declare-fun call!526 () Unit!341)

(declare-fun bm!524 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 64) Int) Unit!341)

(assert (=> bm!524 (= call!526 (lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun b!17059 () Bool)

(declare-fun e!10636 () tuple2!680)

(declare-fun e!10645 () tuple2!680)

(assert (=> b!17059 (= e!10636 e!10645)))

(declare-fun lt!4326 () SeekEntryResult!47)

(assert (=> b!17059 (= lt!4326 (seekEntryOrOpen!0 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun c!1684 () Bool)

(assert (=> b!17059 (= c!1684 ((_ is Undefined!47) lt!4326))))

(declare-fun b!17060 () Bool)

(declare-fun lt!4322 () Unit!341)

(declare-fun lt!4319 () Unit!341)

(assert (=> b!17060 (= lt!4322 lt!4319)))

(declare-fun call!546 () ListLongMap!507)

(declare-fun call!542 () ListLongMap!507)

(assert (=> b!17060 (= call!546 call!542)))

(declare-fun lt!4324 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!957 V!957 V!957 Int) Unit!341)

(assert (=> b!17060 (= lt!4319 (lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) lt!4324 (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(assert (=> b!17060 (= lt!4324 (bvor (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000010))))

(declare-fun e!10633 () tuple2!680)

(assert (=> b!17060 (= e!10633 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (bvor (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000010) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (_size!49 (ite c!1637 (_2!340 lt!4171) call!470)) (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (_vacant!49 (ite c!1637 (_2!340 lt!4171) call!470)))))))

(declare-fun b!17061 () Bool)

(declare-fun e!10634 () ListLongMap!507)

(declare-fun getCurrentListMap!110 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 32) Int) ListLongMap!507)

(assert (=> b!17061 (= e!10634 (getCurrentListMap!110 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000000 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun b!17062 () Bool)

(declare-fun res!12477 () Bool)

(declare-fun e!10648 () Bool)

(assert (=> b!17062 (=> (not res!12477) (not e!10648))))

(declare-fun call!543 () Bool)

(assert (=> b!17062 (= res!12477 call!543)))

(declare-fun e!10638 () Bool)

(assert (=> b!17062 (= e!10638 e!10648)))

(declare-fun bm!525 () Bool)

(declare-fun call!536 () ListLongMap!507)

(declare-fun call!539 () ListLongMap!507)

(assert (=> bm!525 (= call!536 call!539)))

(declare-fun bm!526 () Bool)

(declare-fun call!547 () tuple2!680)

(declare-fun c!1682 () Bool)

(declare-fun updateHelperNewKey!1 (LongMapFixedSize!36 (_ BitVec 64) V!957 (_ BitVec 32)) tuple2!680)

(assert (=> bm!526 (= call!547 (updateHelperNewKey!1 (ite c!1637 (_2!340 lt!4171) call!470) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (ite c!1682 (index!2310 lt!4326) (index!2307 lt!4326))))))

(declare-fun call!545 () Unit!341)

(declare-fun bm!527 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 64) Int) Unit!341)

(assert (=> bm!527 (= call!545 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun b!17063 () Bool)

(declare-fun e!10631 () Bool)

(declare-fun e!10632 () Bool)

(assert (=> b!17063 (= e!10631 e!10632)))

(declare-fun res!12473 () Bool)

(assert (=> b!17063 (= res!12473 call!543)))

(assert (=> b!17063 (=> (not res!12473) (not e!10632))))

(declare-fun bm!528 () Bool)

(declare-fun call!537 () Bool)

(declare-fun call!533 () Bool)

(assert (=> bm!528 (= call!537 call!533)))

(declare-fun lt!4316 () SeekEntryResult!47)

(declare-fun b!17064 () Bool)

(declare-fun res!12480 () Bool)

(assert (=> b!17064 (= res!12480 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2310 lt!4316)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!10650 () Bool)

(assert (=> b!17064 (=> (not res!12480) (not e!10650))))

(declare-fun b!17065 () Bool)

(assert (=> b!17065 (= c!1682 ((_ is MissingVacant!47) lt!4326))))

(declare-fun e!10640 () tuple2!680)

(assert (=> b!17065 (= e!10645 e!10640)))

(declare-fun bm!529 () Bool)

(declare-fun call!538 () ListLongMap!507)

(assert (=> bm!529 (= call!542 call!538)))

(declare-fun b!17066 () Bool)

(declare-fun e!10637 () Bool)

(declare-fun e!10644 () Bool)

(assert (=> b!17066 (= e!10637 e!10644)))

(declare-fun c!1688 () Bool)

(declare-fun lt!4338 () tuple2!680)

(assert (=> b!17066 (= c!1688 (_1!340 lt!4338))))

(declare-fun lt!4317 () SeekEntryResult!47)

(declare-fun e!10635 () Bool)

(declare-fun b!17067 () Bool)

(assert (=> b!17067 (= e!10635 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4317)) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!17068 () Bool)

(declare-fun c!1693 () Bool)

(declare-fun lt!4333 () SeekEntryResult!47)

(assert (=> b!17068 (= c!1693 ((_ is MissingVacant!47) lt!4333))))

(assert (=> b!17068 (= e!10638 e!10631)))

(declare-fun bm!530 () Bool)

(declare-fun c!1683 () Bool)

(assert (=> bm!530 (= call!539 (getCurrentListMap!110 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (ite (or c!1683 c!1684) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (array!894 (store (arr!429 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4326) (ValueCellFull!225 (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))))) (size!518 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470))))) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000000 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun res!12481 () Bool)

(declare-fun b!17069 () Bool)

(assert (=> b!17069 (= res!12481 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2310 lt!4333)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!17069 (=> (not res!12481) (not e!10632))))

(declare-fun b!17070 () Bool)

(declare-fun c!1689 () Bool)

(assert (=> b!17070 (= c!1689 ((_ is MissingVacant!47) lt!4316))))

(declare-fun e!10647 () Bool)

(declare-fun e!10642 () Bool)

(assert (=> b!17070 (= e!10647 e!10642)))

(declare-fun b!17071 () Bool)

(declare-fun lt!4327 () Unit!341)

(declare-fun e!10646 () Unit!341)

(assert (=> b!17071 (= lt!4327 e!10646)))

(declare-fun c!1690 () Bool)

(declare-fun call!534 () Bool)

(assert (=> b!17071 (= c!1690 call!534)))

(assert (=> b!17071 (= e!10645 (tuple2!681 false (ite c!1637 (_2!340 lt!4171) call!470)))))

(declare-fun bm!531 () Bool)

(declare-fun call!540 () Bool)

(declare-fun call!541 () Bool)

(assert (=> bm!531 (= call!540 call!541)))

(declare-fun bm!532 () Bool)

(declare-fun call!531 () SeekEntryResult!47)

(assert (=> bm!532 (= call!531 call!529)))

(declare-fun b!17072 () Bool)

(assert (=> b!17072 (= e!10631 ((_ is Undefined!47) lt!4333))))

(declare-fun b!17073 () Bool)

(declare-fun res!12475 () Bool)

(assert (=> b!17073 (= res!12475 call!540)))

(assert (=> b!17073 (=> (not res!12475) (not e!10635))))

(declare-fun b!17074 () Bool)

(assert (=> b!17074 (= e!10642 e!10650)))

(declare-fun res!12471 () Bool)

(declare-fun call!532 () Bool)

(assert (=> b!17074 (= res!12471 call!532)))

(assert (=> b!17074 (=> (not res!12471) (not e!10650))))

(declare-fun bm!533 () Bool)

(declare-fun call!528 () Bool)

(assert (=> bm!533 (= call!528 call!533)))

(declare-fun bm!534 () Bool)

(declare-fun c!1694 () Bool)

(declare-fun c!1692 () Bool)

(declare-fun c!1685 () Bool)

(declare-fun lt!4332 () SeekEntryResult!47)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!534 (= call!541 (inRange!0 (ite c!1684 (ite c!1690 (index!2308 lt!4317) (ite c!1692 (index!2307 lt!4316) (index!2310 lt!4316))) (ite c!1694 (index!2308 lt!4332) (ite c!1685 (index!2307 lt!4333) (index!2310 lt!4333)))) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun bm!535 () Bool)

(declare-fun call!544 () ListLongMap!507)

(assert (=> bm!535 (= call!544 (map!327 (_2!340 lt!4338)))))

(declare-fun c!1691 () Bool)

(declare-fun lt!4320 () (_ BitVec 32))

(declare-fun bm!536 () Bool)

(declare-fun lt!4315 () array!893)

(assert (=> bm!536 (= call!538 (getCurrentListMap!110 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1683 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) lt!4315) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1683 (ite c!1691 lt!4320 lt!4324) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470))) (ite (and c!1683 c!1691) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470))) (ite c!1683 (ite c!1691 (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470))) #b00000000000000000000000000000000 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun b!17075 () Bool)

(declare-fun lt!4312 () tuple2!680)

(assert (=> b!17075 (= lt!4312 call!547)))

(declare-fun e!10651 () tuple2!680)

(assert (=> b!17075 (= e!10651 (tuple2!681 (_1!340 lt!4312) (_2!340 lt!4312)))))

(declare-fun b!17076 () Bool)

(declare-fun e!10643 () Bool)

(assert (=> b!17076 (= e!10643 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4332)) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!17077 () Bool)

(declare-fun lt!4328 () tuple2!680)

(assert (=> b!17077 (= e!10640 (tuple2!681 (_1!340 lt!4328) (_2!340 lt!4328)))))

(assert (=> b!17077 (= lt!4328 call!547)))

(declare-fun bm!537 () Bool)

(assert (=> bm!537 (= call!533 (arrayContainsKey!0 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!17078 () Bool)

(declare-fun lt!4330 () Unit!341)

(assert (=> b!17078 (= e!10646 lt!4330)))

(assert (=> b!17078 (= lt!4330 call!545)))

(assert (=> b!17078 (= lt!4316 call!530)))

(assert (=> b!17078 (= c!1692 ((_ is MissingZero!47) lt!4316))))

(assert (=> b!17078 e!10647))

(declare-fun bm!538 () Bool)

(declare-fun call!548 () Bool)

(assert (=> bm!538 (= call!548 call!541)))

(declare-fun call!525 () ListLongMap!507)

(declare-fun bm!539 () Bool)

(declare-fun +!35 (ListLongMap!507 tuple2!684) ListLongMap!507)

(assert (=> bm!539 (= call!525 (+!35 e!10634 (ite c!1683 (ite c!1691 (tuple2!685 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))) (tuple2!685 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))))) (tuple2!685 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))))))

(declare-fun c!1681 () Bool)

(assert (=> bm!539 (= c!1681 c!1683)))

(declare-fun b!17079 () Bool)

(declare-fun e!10639 () Bool)

(assert (=> b!17079 (= e!10639 (not call!537))))

(declare-fun bm!540 () Bool)

(assert (=> bm!540 (= call!543 call!548)))

(declare-fun bm!541 () Bool)

(assert (=> bm!541 (= call!546 call!525)))

(declare-fun b!17080 () Bool)

(declare-fun lt!4313 () Unit!341)

(declare-fun lt!4334 () Unit!341)

(assert (=> b!17080 (= lt!4313 lt!4334)))

(declare-fun contains!200 (ListLongMap!507 (_ BitVec 64)) Bool)

(assert (=> b!17080 (contains!200 call!538 (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4326)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 32) Int) Unit!341)

(assert (=> b!17080 (= lt!4334 (lemmaValidKeyInArrayIsInListMap!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) lt!4315 (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (index!2308 lt!4326) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(assert (=> b!17080 (= lt!4315 (array!894 (store (arr!429 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4326) (ValueCellFull!225 (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))))) (size!518 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)))))))

(declare-fun lt!4331 () Unit!341)

(declare-fun lt!4335 () Unit!341)

(assert (=> b!17080 (= lt!4331 lt!4335)))

(assert (=> b!17080 (= call!525 call!536)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 32) (_ BitVec 64) V!957 Int) Unit!341)

(assert (=> b!17080 (= lt!4335 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (index!2308 lt!4326) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun lt!4321 () Unit!341)

(declare-fun e!10630 () Unit!341)

(assert (=> b!17080 (= lt!4321 e!10630)))

(assert (=> b!17080 (= c!1694 call!534)))

(assert (=> b!17080 (= e!10651 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (_size!49 (ite c!1637 (_2!340 lt!4171) call!470)) (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (array!894 (store (arr!429 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2308 lt!4326) (ValueCellFull!225 (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))))) (size!518 (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)))) (_vacant!49 (ite c!1637 (_2!340 lt!4171) call!470)))))))

(declare-fun b!17081 () Bool)

(assert (=> b!17081 (= e!10648 (not call!528))))

(declare-fun bm!542 () Bool)

(declare-fun c!1687 () Bool)

(assert (=> bm!542 (= c!1687 c!1684)))

(declare-fun e!10649 () ListLongMap!507)

(assert (=> bm!542 (= call!534 (contains!200 e!10649 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!17082 () Bool)

(assert (=> b!17082 (= e!10636 e!10633)))

(assert (=> b!17082 (= c!1691 (= (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!543 () Bool)

(assert (=> bm!543 (= call!529 (seekEntryOrOpen!0 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun b!17083 () Bool)

(declare-fun Unit!345 () Unit!341)

(assert (=> b!17083 (= e!10630 Unit!345)))

(declare-fun lt!4336 () Unit!341)

(assert (=> b!17083 (= lt!4336 call!545)))

(assert (=> b!17083 (= lt!4333 call!531)))

(assert (=> b!17083 (= c!1685 ((_ is MissingZero!47) lt!4333))))

(assert (=> b!17083 e!10638))

(declare-fun lt!4318 () Unit!341)

(assert (=> b!17083 (= lt!4318 lt!4336)))

(assert (=> b!17083 false))

(declare-fun b!17084 () Bool)

(assert (=> b!17084 (= e!10649 call!536)))

(declare-fun e!10641 () Bool)

(declare-fun b!17085 () Bool)

(assert (=> b!17085 (= e!10641 (= call!544 (+!35 call!527 (tuple2!685 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))))))

(declare-fun bm!544 () Bool)

(declare-fun call!535 () ListLongMap!507)

(assert (=> bm!544 (= call!535 call!539)))

(declare-fun b!17086 () Bool)

(assert (=> b!17086 (= e!10642 ((_ is Undefined!47) lt!4316))))

(declare-fun b!17087 () Bool)

(assert (=> b!17087 (= e!10649 (getCurrentListMap!110 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000000 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(declare-fun d!3383 () Bool)

(assert (=> d!3383 e!10637))

(declare-fun res!12479 () Bool)

(assert (=> d!3383 (=> (not res!12479) (not e!10637))))

(assert (=> d!3383 (= res!12479 (valid!26 (_2!340 lt!4338)))))

(assert (=> d!3383 (= lt!4338 e!10636)))

(assert (=> d!3383 (= c!1683 (= (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!3383 (valid!26 (ite c!1637 (_2!340 lt!4171) call!470))))

(assert (=> d!3383 (= (update!2 (ite c!1637 (_2!340 lt!4171) call!470) (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))) lt!4338)))

(declare-fun b!17088 () Bool)

(declare-fun res!12474 () Bool)

(assert (=> b!17088 (=> (not res!12474) (not e!10639))))

(assert (=> b!17088 (= res!12474 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2307 lt!4316)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17089 () Bool)

(assert (=> b!17089 (= e!10632 (not call!528))))

(declare-fun bm!545 () Bool)

(assert (=> bm!545 (= call!532 call!540)))

(declare-fun b!17090 () Bool)

(declare-fun lt!4323 () Unit!341)

(assert (=> b!17090 (= e!10630 lt!4323)))

(assert (=> b!17090 (= lt!4323 call!526)))

(assert (=> b!17090 (= lt!4332 call!531)))

(declare-fun res!12472 () Bool)

(assert (=> b!17090 (= res!12472 ((_ is Found!47) lt!4332))))

(assert (=> b!17090 (=> (not res!12472) (not e!10643))))

(assert (=> b!17090 e!10643))

(declare-fun b!17091 () Bool)

(assert (=> b!17091 (= e!10644 e!10641)))

(declare-fun res!12468 () Bool)

(assert (=> b!17091 (= res!12468 (contains!200 call!544 (ite c!1637 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!1640 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!17091 (=> (not res!12468) (not e!10641))))

(declare-fun b!17092 () Bool)

(declare-fun res!12469 () Bool)

(assert (=> b!17092 (= res!12469 call!548)))

(assert (=> b!17092 (=> (not res!12469) (not e!10643))))

(declare-fun b!17093 () Bool)

(assert (=> b!17093 (= e!10634 call!535)))

(declare-fun b!17094 () Bool)

(declare-fun lt!4314 () Unit!341)

(declare-fun lt!4337 () Unit!341)

(assert (=> b!17094 (= lt!4314 lt!4337)))

(assert (=> b!17094 (= call!546 call!542)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!957 V!957 V!957 Int) Unit!341)

(assert (=> b!17094 (= lt!4337 (lemmaChangeZeroKeyThenAddPairToListMap!1 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) lt!4320 (zeroValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470))))))

(assert (=> b!17094 (= lt!4320 (bvor (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000001))))

(assert (=> b!17094 (= e!10633 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 (ite c!1637 (_2!340 lt!4171) call!470)) (mask!4538 (ite c!1637 (_2!340 lt!4171) call!470)) (bvor (extraKeys!1542 (ite c!1637 (_2!340 lt!4171) call!470)) #b00000000000000000000000000000001) (ite c!1637 (minValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1640 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))))) (minValue!1565 (ite c!1637 (_2!340 lt!4171) call!470)) (_size!49 (ite c!1637 (_2!340 lt!4171) call!470)) (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470)) (_values!1626 (ite c!1637 (_2!340 lt!4171) call!470)) (_vacant!49 (ite c!1637 (_2!340 lt!4171) call!470)))))))

(declare-fun b!17095 () Bool)

(declare-fun res!12478 () Bool)

(assert (=> b!17095 (=> (not res!12478) (not e!10639))))

(assert (=> b!17095 (= res!12478 call!532)))

(assert (=> b!17095 (= e!10647 e!10639)))

(declare-fun b!17096 () Bool)

(declare-fun Unit!346 () Unit!341)

(assert (=> b!17096 (= e!10646 Unit!346)))

(declare-fun lt!4325 () Unit!341)

(assert (=> b!17096 (= lt!4325 call!526)))

(assert (=> b!17096 (= lt!4317 call!530)))

(declare-fun res!12470 () Bool)

(assert (=> b!17096 (= res!12470 ((_ is Found!47) lt!4317))))

(assert (=> b!17096 (=> (not res!12470) (not e!10635))))

(assert (=> b!17096 e!10635))

(declare-fun lt!4329 () Unit!341)

(assert (=> b!17096 (= lt!4329 lt!4325)))

(assert (=> b!17096 false))

(declare-fun b!17097 () Bool)

(assert (=> b!17097 (= e!10650 (not call!537))))

(declare-fun b!17098 () Bool)

(declare-fun res!12476 () Bool)

(assert (=> b!17098 (=> (not res!12476) (not e!10648))))

(assert (=> b!17098 (= res!12476 (= (select (arr!430 (_keys!3053 (ite c!1637 (_2!340 lt!4171) call!470))) (index!2307 lt!4333)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17099 () Bool)

(assert (=> b!17099 (= e!10640 e!10651)))

(declare-fun c!1686 () Bool)

(assert (=> b!17099 (= c!1686 ((_ is MissingZero!47) lt!4326))))

(declare-fun b!17100 () Bool)

(assert (=> b!17100 (= e!10644 (= call!544 call!527))))

(assert (= (and d!3383 c!1683) b!17082))

(assert (= (and d!3383 (not c!1683)) b!17059))

(assert (= (and b!17082 c!1691) b!17094))

(assert (= (and b!17082 (not c!1691)) b!17060))

(assert (= (or b!17094 b!17060) bm!544))

(assert (= (or b!17094 b!17060) bm!529))

(assert (= (or b!17094 b!17060) bm!541))

(assert (= (and b!17059 c!1684) b!17071))

(assert (= (and b!17059 (not c!1684)) b!17065))

(assert (= (and b!17071 c!1690) b!17096))

(assert (= (and b!17071 (not c!1690)) b!17078))

(assert (= (and b!17096 res!12470) b!17073))

(assert (= (and b!17073 res!12475) b!17067))

(assert (= (and b!17078 c!1692) b!17095))

(assert (= (and b!17078 (not c!1692)) b!17070))

(assert (= (and b!17095 res!12478) b!17088))

(assert (= (and b!17088 res!12474) b!17079))

(assert (= (and b!17070 c!1689) b!17074))

(assert (= (and b!17070 (not c!1689)) b!17086))

(assert (= (and b!17074 res!12471) b!17064))

(assert (= (and b!17064 res!12480) b!17097))

(assert (= (or b!17095 b!17074) bm!545))

(assert (= (or b!17079 b!17097) bm!528))

(assert (= (or b!17073 bm!545) bm!531))

(assert (= (or b!17096 b!17078) bm!523))

(assert (= (and b!17065 c!1682) b!17077))

(assert (= (and b!17065 (not c!1682)) b!17099))

(assert (= (and b!17099 c!1686) b!17075))

(assert (= (and b!17099 (not c!1686)) b!17080))

(assert (= (and b!17080 c!1694) b!17090))

(assert (= (and b!17080 (not c!1694)) b!17083))

(assert (= (and b!17090 res!12472) b!17092))

(assert (= (and b!17092 res!12469) b!17076))

(assert (= (and b!17083 c!1685) b!17062))

(assert (= (and b!17083 (not c!1685)) b!17068))

(assert (= (and b!17062 res!12477) b!17098))

(assert (= (and b!17098 res!12476) b!17081))

(assert (= (and b!17068 c!1693) b!17063))

(assert (= (and b!17068 (not c!1693)) b!17072))

(assert (= (and b!17063 res!12473) b!17069))

(assert (= (and b!17069 res!12481) b!17089))

(assert (= (or b!17062 b!17063) bm!540))

(assert (= (or b!17081 b!17089) bm!533))

(assert (= (or b!17092 bm!540) bm!538))

(assert (= (or b!17090 b!17083) bm!532))

(assert (= (or b!17077 b!17075) bm!526))

(assert (= (or bm!523 bm!532) bm!543))

(assert (= (or b!17078 b!17083) bm!527))

(assert (= (or bm!531 bm!538) bm!534))

(assert (= (or b!17096 b!17090) bm!524))

(assert (= (or bm!528 bm!533) bm!537))

(assert (= (or b!17071 b!17080) bm!525))

(assert (= (or b!17071 b!17080) bm!542))

(assert (= (and bm!542 c!1687) b!17084))

(assert (= (and bm!542 (not c!1687)) b!17087))

(assert (= (or bm!544 bm!525) bm!530))

(assert (= (or bm!529 b!17080) bm!536))

(assert (= (or bm!541 b!17080) bm!539))

(assert (= (and bm!539 c!1681) b!17093))

(assert (= (and bm!539 (not c!1681)) b!17061))

(assert (= (and d!3383 res!12479) b!17066))

(assert (= (and b!17066 c!1688) b!17091))

(assert (= (and b!17066 (not c!1688)) b!17100))

(assert (= (and b!17091 res!12468) b!17085))

(assert (= (or b!17085 b!17100) bm!522))

(assert (= (or b!17091 b!17085 b!17100) bm!535))

(declare-fun m!11965 () Bool)

(assert (=> bm!536 m!11965))

(declare-fun m!11967 () Bool)

(assert (=> bm!534 m!11967))

(declare-fun m!11969 () Bool)

(assert (=> bm!522 m!11969))

(declare-fun m!11971 () Bool)

(assert (=> bm!535 m!11971))

(declare-fun m!11973 () Bool)

(assert (=> b!17076 m!11973))

(declare-fun m!11975 () Bool)

(assert (=> bm!530 m!11975))

(declare-fun m!11977 () Bool)

(assert (=> bm!530 m!11977))

(declare-fun m!11979 () Bool)

(assert (=> b!17080 m!11979))

(assert (=> b!17080 m!11979))

(declare-fun m!11981 () Bool)

(assert (=> b!17080 m!11981))

(declare-fun m!11983 () Bool)

(assert (=> b!17080 m!11983))

(declare-fun m!11985 () Bool)

(assert (=> b!17080 m!11985))

(assert (=> b!17080 m!11975))

(declare-fun m!11987 () Bool)

(assert (=> b!17061 m!11987))

(declare-fun m!11989 () Bool)

(assert (=> b!17085 m!11989))

(declare-fun m!11991 () Bool)

(assert (=> b!17069 m!11991))

(declare-fun m!11993 () Bool)

(assert (=> bm!524 m!11993))

(declare-fun m!11995 () Bool)

(assert (=> bm!543 m!11995))

(declare-fun m!11997 () Bool)

(assert (=> bm!537 m!11997))

(assert (=> b!17059 m!11995))

(declare-fun m!11999 () Bool)

(assert (=> b!17088 m!11999))

(declare-fun m!12001 () Bool)

(assert (=> b!17064 m!12001))

(assert (=> b!17087 m!11987))

(declare-fun m!12003 () Bool)

(assert (=> bm!539 m!12003))

(declare-fun m!12005 () Bool)

(assert (=> b!17094 m!12005))

(declare-fun m!12007 () Bool)

(assert (=> b!17060 m!12007))

(declare-fun m!12009 () Bool)

(assert (=> d!3383 m!12009))

(declare-fun m!12011 () Bool)

(assert (=> d!3383 m!12011))

(declare-fun m!12013 () Bool)

(assert (=> b!17098 m!12013))

(declare-fun m!12015 () Bool)

(assert (=> bm!526 m!12015))

(declare-fun m!12017 () Bool)

(assert (=> bm!542 m!12017))

(declare-fun m!12019 () Bool)

(assert (=> b!17091 m!12019))

(declare-fun m!12021 () Bool)

(assert (=> b!17067 m!12021))

(declare-fun m!12023 () Bool)

(assert (=> bm!527 m!12023))

(assert (=> bm!464 d!3383))

(assert (=> d!3365 d!3381))

(declare-fun d!3385 () Bool)

(declare-fun e!10656 () Bool)

(assert (=> d!3385 e!10656))

(declare-fun res!12484 () Bool)

(assert (=> d!3385 (=> (not res!12484) (not e!10656))))

(declare-fun lt!4344 () (_ BitVec 32))

(assert (=> d!3385 (= res!12484 (validMask!0 lt!4344))))

(declare-datatypes ((tuple2!686 0))(
  ( (tuple2!687 (_1!344 Unit!341) (_2!344 (_ BitVec 32))) )
))
(declare-fun e!10657 () tuple2!686)

(assert (=> d!3385 (= lt!4344 (_2!344 e!10657))))

(declare-fun c!1697 () Bool)

(declare-fun lt!4343 () tuple2!686)

(assert (=> d!3385 (= c!1697 (and (bvsgt (_2!344 lt!4343) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!49 (v!1403 (underlying!29 thiss!848)))) (_2!344 lt!4343)) (bvsge (bvadd (bvand (bvashr (_2!344 lt!4343) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!49 (v!1403 (underlying!29 thiss!848))))))))

(declare-fun Unit!347 () Unit!341)

(declare-fun Unit!348 () Unit!341)

(assert (=> d!3385 (= lt!4343 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!49 (v!1403 (underlying!29 thiss!848))) (_vacant!49 (v!1403 (underlying!29 thiss!848))))) (mask!4538 (v!1403 (underlying!29 thiss!848)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!49 (v!1403 (underlying!29 thiss!848)))) (mask!4538 (v!1403 (underlying!29 thiss!848))))) (tuple2!687 Unit!347 (bvand (bvadd (bvshl (mask!4538 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!687 Unit!348 (mask!4538 (v!1403 (underlying!29 thiss!848))))))))

(assert (=> d!3385 (validMask!0 (mask!4538 (v!1403 (underlying!29 thiss!848))))))

(assert (=> d!3385 (= (computeNewMask!1 thiss!848 (mask!4538 (v!1403 (underlying!29 thiss!848))) (_vacant!49 (v!1403 (underlying!29 thiss!848))) (_size!49 (v!1403 (underlying!29 thiss!848)))) lt!4344)))

(declare-fun b!17107 () Bool)

(declare-fun computeNewMaskWhile!1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!686)

(assert (=> b!17107 (= e!10657 (computeNewMaskWhile!1 (_size!49 (v!1403 (underlying!29 thiss!848))) (_vacant!49 (v!1403 (underlying!29 thiss!848))) (mask!4538 (v!1403 (underlying!29 thiss!848))) (_2!344 lt!4343)))))

(declare-fun b!17108 () Bool)

(declare-fun Unit!349 () Unit!341)

(assert (=> b!17108 (= e!10657 (tuple2!687 Unit!349 (_2!344 lt!4343)))))

(declare-fun b!17109 () Bool)

(assert (=> b!17109 (= e!10656 (bvsle (_size!49 (v!1403 (underlying!29 thiss!848))) (bvadd lt!4344 #b00000000000000000000000000000001)))))

(assert (= (and d!3385 c!1697) b!17107))

(assert (= (and d!3385 (not c!1697)) b!17108))

(assert (= (and d!3385 res!12484) b!17109))

(declare-fun m!12025 () Bool)

(assert (=> d!3385 m!12025))

(declare-fun m!12027 () Bool)

(assert (=> d!3385 m!12027))

(declare-fun m!12029 () Bool)

(assert (=> b!17107 m!12029))

(assert (=> d!3365 d!3385))

(assert (=> d!3365 d!3367))

(declare-fun d!3387 () Bool)

(declare-fun res!12485 () Bool)

(declare-fun e!10658 () Bool)

(assert (=> d!3387 (=> (not res!12485) (not e!10658))))

(assert (=> d!3387 (= res!12485 (simpleValid!7 (v!1403 (underlying!29 thiss!848))))))

(assert (=> d!3387 (= (valid!26 (v!1403 (underlying!29 thiss!848))) e!10658)))

(declare-fun b!17110 () Bool)

(declare-fun res!12486 () Bool)

(assert (=> b!17110 (=> (not res!12486) (not e!10658))))

(assert (=> b!17110 (= res!12486 (= (arrayCountValidKeys!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848))))) (_size!49 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun b!17111 () Bool)

(declare-fun res!12487 () Bool)

(assert (=> b!17111 (=> (not res!12487) (not e!10658))))

(assert (=> b!17111 (= res!12487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3053 (v!1403 (underlying!29 thiss!848))) (mask!4538 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun b!17112 () Bool)

(assert (=> b!17112 (= e!10658 (arrayNoDuplicates!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000000 Nil!525))))

(assert (= (and d!3387 res!12485) b!17110))

(assert (= (and b!17110 res!12486) b!17111))

(assert (= (and b!17111 res!12487) b!17112))

(declare-fun m!12031 () Bool)

(assert (=> d!3387 m!12031))

(declare-fun m!12033 () Bool)

(assert (=> b!17110 m!12033))

(declare-fun m!12035 () Bool)

(assert (=> b!17111 m!12035))

(declare-fun m!12037 () Bool)

(assert (=> b!17112 m!12037))

(assert (=> d!3367 d!3387))

(declare-fun d!3389 () Bool)

(assert (=> d!3389 (= (map!326 (_2!339 lt!4178)) (map!327 (v!1403 (underlying!29 (_2!339 lt!4178)))))))

(declare-fun bs!804 () Bool)

(assert (= bs!804 d!3389))

(declare-fun m!12039 () Bool)

(assert (=> bs!804 m!12039))

(assert (=> b!16903 d!3389))

(declare-fun d!3391 () Bool)

(assert (=> d!3391 (= (map!326 thiss!848) (map!327 (v!1403 (underlying!29 thiss!848))))))

(declare-fun bs!805 () Bool)

(assert (= bs!805 d!3391))

(declare-fun m!12041 () Bool)

(assert (=> bs!805 m!12041))

(assert (=> b!16903 d!3391))

(declare-fun b!17121 () Bool)

(declare-fun res!12497 () Bool)

(declare-fun e!10661 () Bool)

(assert (=> b!17121 (=> (not res!12497) (not e!10661))))

(assert (=> b!17121 (= res!12497 (and (= (size!518 (_values!1626 (v!1403 (underlying!29 (_2!339 lt!4146))))) (bvadd (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000001)) (= (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) (size!518 (_values!1626 (v!1403 (underlying!29 (_2!339 lt!4146)))))) (bvsge (_size!49 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000) (bvsle (_size!49 (v!1403 (underlying!29 (_2!339 lt!4146)))) (bvadd (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000001))))))

(declare-fun b!17124 () Bool)

(assert (=> b!17124 (= e!10661 (and (bvsge (extraKeys!1542 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000) (bvsle (extraKeys!1542 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000011) (bvsge (_vacant!49 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000)))))

(declare-fun b!17123 () Bool)

(declare-fun res!12499 () Bool)

(assert (=> b!17123 (=> (not res!12499) (not e!10661))))

(declare-fun size!522 (LongMapFixedSize!36) (_ BitVec 32))

(assert (=> b!17123 (= res!12499 (= (size!522 (v!1403 (underlying!29 (_2!339 lt!4146)))) (bvadd (_size!49 (v!1403 (underlying!29 (_2!339 lt!4146)))) (bvsdiv (bvadd (extraKeys!1542 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!17122 () Bool)

(declare-fun res!12498 () Bool)

(assert (=> b!17122 (=> (not res!12498) (not e!10661))))

(assert (=> b!17122 (= res!12498 (bvsge (size!522 (v!1403 (underlying!29 (_2!339 lt!4146)))) (_size!49 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(declare-fun d!3393 () Bool)

(declare-fun res!12496 () Bool)

(assert (=> d!3393 (=> (not res!12496) (not e!10661))))

(assert (=> d!3393 (= res!12496 (validMask!0 (mask!4538 (v!1403 (underlying!29 (_2!339 lt!4146))))))))

(assert (=> d!3393 (= (simpleValid!7 (v!1403 (underlying!29 (_2!339 lt!4146)))) e!10661)))

(assert (= (and d!3393 res!12496) b!17121))

(assert (= (and b!17121 res!12497) b!17122))

(assert (= (and b!17122 res!12498) b!17123))

(assert (= (and b!17123 res!12499) b!17124))

(declare-fun m!12043 () Bool)

(assert (=> b!17123 m!12043))

(assert (=> b!17122 m!12043))

(declare-fun m!12045 () Bool)

(assert (=> d!3393 m!12045))

(assert (=> d!3375 d!3393))

(declare-fun bm!546 () Bool)

(declare-fun call!551 () ListLongMap!507)

(assert (=> bm!546 (= call!551 (map!327 call!469))))

(declare-fun bm!547 () Bool)

(declare-fun call!554 () SeekEntryResult!47)

(declare-fun call!553 () SeekEntryResult!47)

(assert (=> bm!547 (= call!554 call!553)))

(declare-fun bm!548 () Bool)

(declare-fun call!550 () Unit!341)

(assert (=> bm!548 (= call!550 (lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun b!17125 () Bool)

(declare-fun e!10668 () tuple2!680)

(declare-fun e!10677 () tuple2!680)

(assert (=> b!17125 (= e!10668 e!10677)))

(declare-fun lt!4359 () SeekEntryResult!47)

(assert (=> b!17125 (= lt!4359 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3053 call!469) (mask!4538 call!469)))))

(declare-fun c!1701 () Bool)

(assert (=> b!17125 (= c!1701 ((_ is Undefined!47) lt!4359))))

(declare-fun b!17126 () Bool)

(declare-fun lt!4355 () Unit!341)

(declare-fun lt!4352 () Unit!341)

(assert (=> b!17126 (= lt!4355 lt!4352)))

(declare-fun call!570 () ListLongMap!507)

(declare-fun call!566 () ListLongMap!507)

(assert (=> b!17126 (= call!570 call!566)))

(declare-fun lt!4357 () (_ BitVec 32))

(assert (=> b!17126 (= lt!4352 (lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) lt!4357 (zeroValue!1565 call!469) (minValue!1565 call!469) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (defaultEntry!1628 call!469)))))

(assert (=> b!17126 (= lt!4357 (bvor (extraKeys!1542 call!469) #b00000000000000000000000000000010))))

(declare-fun e!10665 () tuple2!680)

(assert (=> b!17126 (= e!10665 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 call!469) (mask!4538 call!469) (bvor (extraKeys!1542 call!469) #b00000000000000000000000000000010) (zeroValue!1565 call!469) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (_size!49 call!469) (_keys!3053 call!469) (_values!1626 call!469) (_vacant!49 call!469))))))

(declare-fun b!17127 () Bool)

(declare-fun e!10666 () ListLongMap!507)

(assert (=> b!17127 (= e!10666 (getCurrentListMap!110 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) #b00000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun b!17128 () Bool)

(declare-fun res!12509 () Bool)

(declare-fun e!10680 () Bool)

(assert (=> b!17128 (=> (not res!12509) (not e!10680))))

(declare-fun call!567 () Bool)

(assert (=> b!17128 (= res!12509 call!567)))

(declare-fun e!10670 () Bool)

(assert (=> b!17128 (= e!10670 e!10680)))

(declare-fun bm!549 () Bool)

(declare-fun call!560 () ListLongMap!507)

(declare-fun call!563 () ListLongMap!507)

(assert (=> bm!549 (= call!560 call!563)))

(declare-fun bm!550 () Bool)

(declare-fun c!1699 () Bool)

(declare-fun call!571 () tuple2!680)

(assert (=> bm!550 (= call!571 (updateHelperNewKey!1 call!469 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (ite c!1699 (index!2310 lt!4359) (index!2307 lt!4359))))))

(declare-fun bm!551 () Bool)

(declare-fun call!569 () Unit!341)

(assert (=> bm!551 (= call!569 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun b!17129 () Bool)

(declare-fun e!10663 () Bool)

(declare-fun e!10664 () Bool)

(assert (=> b!17129 (= e!10663 e!10664)))

(declare-fun res!12505 () Bool)

(assert (=> b!17129 (= res!12505 call!567)))

(assert (=> b!17129 (=> (not res!12505) (not e!10664))))

(declare-fun bm!552 () Bool)

(declare-fun call!561 () Bool)

(declare-fun call!557 () Bool)

(assert (=> bm!552 (= call!561 call!557)))

(declare-fun b!17130 () Bool)

(declare-fun res!12512 () Bool)

(declare-fun lt!4349 () SeekEntryResult!47)

(assert (=> b!17130 (= res!12512 (= (select (arr!430 (_keys!3053 call!469)) (index!2310 lt!4349)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!10682 () Bool)

(assert (=> b!17130 (=> (not res!12512) (not e!10682))))

(declare-fun b!17131 () Bool)

(assert (=> b!17131 (= c!1699 ((_ is MissingVacant!47) lt!4359))))

(declare-fun e!10672 () tuple2!680)

(assert (=> b!17131 (= e!10677 e!10672)))

(declare-fun bm!553 () Bool)

(declare-fun call!562 () ListLongMap!507)

(assert (=> bm!553 (= call!566 call!562)))

(declare-fun b!17132 () Bool)

(declare-fun e!10669 () Bool)

(declare-fun e!10676 () Bool)

(assert (=> b!17132 (= e!10669 e!10676)))

(declare-fun c!1705 () Bool)

(declare-fun lt!4371 () tuple2!680)

(assert (=> b!17132 (= c!1705 (_1!340 lt!4371))))

(declare-fun b!17133 () Bool)

(declare-fun e!10667 () Bool)

(declare-fun lt!4350 () SeekEntryResult!47)

(assert (=> b!17133 (= e!10667 (= (select (arr!430 (_keys!3053 call!469)) (index!2308 lt!4350)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17134 () Bool)

(declare-fun c!1710 () Bool)

(declare-fun lt!4366 () SeekEntryResult!47)

(assert (=> b!17134 (= c!1710 ((_ is MissingVacant!47) lt!4366))))

(assert (=> b!17134 (= e!10670 e!10663)))

(declare-fun bm!554 () Bool)

(declare-fun c!1700 () Bool)

(assert (=> bm!554 (= call!563 (getCurrentListMap!110 (_keys!3053 call!469) (ite (or c!1700 c!1701) (_values!1626 call!469) (array!894 (store (arr!429 (_values!1626 call!469)) (index!2308 lt!4359) (ValueCellFull!225 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))))) (size!518 (_values!1626 call!469)))) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) #b00000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun b!17135 () Bool)

(declare-fun res!12513 () Bool)

(assert (=> b!17135 (= res!12513 (= (select (arr!430 (_keys!3053 call!469)) (index!2310 lt!4366)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!17135 (=> (not res!12513) (not e!10664))))

(declare-fun b!17136 () Bool)

(declare-fun c!1706 () Bool)

(assert (=> b!17136 (= c!1706 ((_ is MissingVacant!47) lt!4349))))

(declare-fun e!10679 () Bool)

(declare-fun e!10674 () Bool)

(assert (=> b!17136 (= e!10679 e!10674)))

(declare-fun b!17137 () Bool)

(declare-fun lt!4360 () Unit!341)

(declare-fun e!10678 () Unit!341)

(assert (=> b!17137 (= lt!4360 e!10678)))

(declare-fun c!1707 () Bool)

(declare-fun call!558 () Bool)

(assert (=> b!17137 (= c!1707 call!558)))

(assert (=> b!17137 (= e!10677 (tuple2!681 false call!469))))

(declare-fun bm!555 () Bool)

(declare-fun call!564 () Bool)

(declare-fun call!565 () Bool)

(assert (=> bm!555 (= call!564 call!565)))

(declare-fun bm!556 () Bool)

(declare-fun call!555 () SeekEntryResult!47)

(assert (=> bm!556 (= call!555 call!553)))

(declare-fun b!17138 () Bool)

(assert (=> b!17138 (= e!10663 ((_ is Undefined!47) lt!4366))))

(declare-fun b!17139 () Bool)

(declare-fun res!12507 () Bool)

(assert (=> b!17139 (= res!12507 call!564)))

(assert (=> b!17139 (=> (not res!12507) (not e!10667))))

(declare-fun b!17140 () Bool)

(assert (=> b!17140 (= e!10674 e!10682)))

(declare-fun res!12503 () Bool)

(declare-fun call!556 () Bool)

(assert (=> b!17140 (= res!12503 call!556)))

(assert (=> b!17140 (=> (not res!12503) (not e!10682))))

(declare-fun bm!557 () Bool)

(declare-fun call!552 () Bool)

(assert (=> bm!557 (= call!552 call!557)))

(declare-fun c!1711 () Bool)

(declare-fun lt!4365 () SeekEntryResult!47)

(declare-fun c!1709 () Bool)

(declare-fun bm!558 () Bool)

(declare-fun c!1702 () Bool)

(assert (=> bm!558 (= call!565 (inRange!0 (ite c!1701 (ite c!1707 (index!2308 lt!4350) (ite c!1709 (index!2307 lt!4349) (index!2310 lt!4349))) (ite c!1711 (index!2308 lt!4365) (ite c!1702 (index!2307 lt!4366) (index!2310 lt!4366)))) (mask!4538 call!469)))))

(declare-fun bm!559 () Bool)

(declare-fun call!568 () ListLongMap!507)

(assert (=> bm!559 (= call!568 (map!327 (_2!340 lt!4371)))))

(declare-fun lt!4348 () array!893)

(declare-fun bm!560 () Bool)

(declare-fun c!1708 () Bool)

(declare-fun lt!4353 () (_ BitVec 32))

(assert (=> bm!560 (= call!562 (getCurrentListMap!110 (_keys!3053 call!469) (ite c!1700 (_values!1626 call!469) lt!4348) (mask!4538 call!469) (ite c!1700 (ite c!1708 lt!4353 lt!4357) (extraKeys!1542 call!469)) (ite (and c!1700 c!1708) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (zeroValue!1565 call!469)) (ite c!1700 (ite c!1708 (minValue!1565 call!469) (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))) (minValue!1565 call!469)) #b00000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun b!17141 () Bool)

(declare-fun lt!4345 () tuple2!680)

(assert (=> b!17141 (= lt!4345 call!571)))

(declare-fun e!10683 () tuple2!680)

(assert (=> b!17141 (= e!10683 (tuple2!681 (_1!340 lt!4345) (_2!340 lt!4345)))))

(declare-fun b!17142 () Bool)

(declare-fun e!10675 () Bool)

(assert (=> b!17142 (= e!10675 (= (select (arr!430 (_keys!3053 call!469)) (index!2308 lt!4365)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17143 () Bool)

(declare-fun lt!4361 () tuple2!680)

(assert (=> b!17143 (= e!10672 (tuple2!681 (_1!340 lt!4361) (_2!340 lt!4361)))))

(assert (=> b!17143 (= lt!4361 call!571)))

(declare-fun bm!561 () Bool)

(assert (=> bm!561 (= call!557 (arrayContainsKey!0 (_keys!3053 call!469) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!17144 () Bool)

(declare-fun lt!4363 () Unit!341)

(assert (=> b!17144 (= e!10678 lt!4363)))

(assert (=> b!17144 (= lt!4363 call!569)))

(assert (=> b!17144 (= lt!4349 call!554)))

(assert (=> b!17144 (= c!1709 ((_ is MissingZero!47) lt!4349))))

(assert (=> b!17144 e!10679))

(declare-fun bm!562 () Bool)

(declare-fun call!572 () Bool)

(assert (=> bm!562 (= call!572 call!565)))

(declare-fun call!549 () ListLongMap!507)

(declare-fun bm!563 () Bool)

(assert (=> bm!563 (= call!549 (+!35 e!10666 (ite c!1700 (ite c!1708 (tuple2!685 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))) (tuple2!685 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))))) (tuple2!685 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun c!1698 () Bool)

(assert (=> bm!563 (= c!1698 c!1700)))

(declare-fun b!17145 () Bool)

(declare-fun e!10671 () Bool)

(assert (=> b!17145 (= e!10671 (not call!561))))

(declare-fun bm!564 () Bool)

(assert (=> bm!564 (= call!567 call!572)))

(declare-fun bm!565 () Bool)

(assert (=> bm!565 (= call!570 call!549)))

(declare-fun b!17146 () Bool)

(declare-fun lt!4346 () Unit!341)

(declare-fun lt!4367 () Unit!341)

(assert (=> b!17146 (= lt!4346 lt!4367)))

(assert (=> b!17146 (contains!200 call!562 (select (arr!430 (_keys!3053 call!469)) (index!2308 lt!4359)))))

(assert (=> b!17146 (= lt!4367 (lemmaValidKeyInArrayIsInListMap!1 (_keys!3053 call!469) lt!4348 (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) (index!2308 lt!4359) (defaultEntry!1628 call!469)))))

(assert (=> b!17146 (= lt!4348 (array!894 (store (arr!429 (_values!1626 call!469)) (index!2308 lt!4359) (ValueCellFull!225 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))))) (size!518 (_values!1626 call!469))))))

(declare-fun lt!4364 () Unit!341)

(declare-fun lt!4368 () Unit!341)

(assert (=> b!17146 (= lt!4364 lt!4368)))

(assert (=> b!17146 (= call!549 call!560)))

(assert (=> b!17146 (= lt!4368 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) (index!2308 lt!4359) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (defaultEntry!1628 call!469)))))

(declare-fun lt!4354 () Unit!341)

(declare-fun e!10662 () Unit!341)

(assert (=> b!17146 (= lt!4354 e!10662)))

(assert (=> b!17146 (= c!1711 call!558)))

(assert (=> b!17146 (= e!10683 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) (_size!49 call!469) (_keys!3053 call!469) (array!894 (store (arr!429 (_values!1626 call!469)) (index!2308 lt!4359) (ValueCellFull!225 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))))) (size!518 (_values!1626 call!469))) (_vacant!49 call!469))))))

(declare-fun b!17147 () Bool)

(assert (=> b!17147 (= e!10680 (not call!552))))

(declare-fun bm!566 () Bool)

(declare-fun c!1704 () Bool)

(assert (=> bm!566 (= c!1704 c!1701)))

(declare-fun e!10681 () ListLongMap!507)

(assert (=> bm!566 (= call!558 (contains!200 e!10681 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17148 () Bool)

(assert (=> b!17148 (= e!10668 e!10665)))

(assert (=> b!17148 (= c!1708 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!567 () Bool)

(assert (=> bm!567 (= call!553 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3053 call!469) (mask!4538 call!469)))))

(declare-fun b!17149 () Bool)

(declare-fun Unit!350 () Unit!341)

(assert (=> b!17149 (= e!10662 Unit!350)))

(declare-fun lt!4369 () Unit!341)

(assert (=> b!17149 (= lt!4369 call!569)))

(assert (=> b!17149 (= lt!4366 call!555)))

(assert (=> b!17149 (= c!1702 ((_ is MissingZero!47) lt!4366))))

(assert (=> b!17149 e!10670))

(declare-fun lt!4351 () Unit!341)

(assert (=> b!17149 (= lt!4351 lt!4369)))

(assert (=> b!17149 false))

(declare-fun b!17150 () Bool)

(assert (=> b!17150 (= e!10681 call!560)))

(declare-fun e!10673 () Bool)

(declare-fun b!17151 () Bool)

(assert (=> b!17151 (= e!10673 (= call!568 (+!35 call!551 (tuple2!685 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun bm!568 () Bool)

(declare-fun call!559 () ListLongMap!507)

(assert (=> bm!568 (= call!559 call!563)))

(declare-fun b!17152 () Bool)

(assert (=> b!17152 (= e!10674 ((_ is Undefined!47) lt!4349))))

(declare-fun b!17153 () Bool)

(assert (=> b!17153 (= e!10681 (getCurrentListMap!110 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) (zeroValue!1565 call!469) (minValue!1565 call!469) #b00000000000000000000000000000000 (defaultEntry!1628 call!469)))))

(declare-fun d!3395 () Bool)

(assert (=> d!3395 e!10669))

(declare-fun res!12511 () Bool)

(assert (=> d!3395 (=> (not res!12511) (not e!10669))))

(assert (=> d!3395 (= res!12511 (valid!26 (_2!340 lt!4371)))))

(assert (=> d!3395 (= lt!4371 e!10668)))

(assert (=> d!3395 (= c!1700 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3395 (valid!26 call!469)))

(assert (=> d!3395 (= (update!2 call!469 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))) lt!4371)))

(declare-fun b!17154 () Bool)

(declare-fun res!12506 () Bool)

(assert (=> b!17154 (=> (not res!12506) (not e!10671))))

(assert (=> b!17154 (= res!12506 (= (select (arr!430 (_keys!3053 call!469)) (index!2307 lt!4349)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17155 () Bool)

(assert (=> b!17155 (= e!10664 (not call!552))))

(declare-fun bm!569 () Bool)

(assert (=> bm!569 (= call!556 call!564)))

(declare-fun b!17156 () Bool)

(declare-fun lt!4356 () Unit!341)

(assert (=> b!17156 (= e!10662 lt!4356)))

(assert (=> b!17156 (= lt!4356 call!550)))

(assert (=> b!17156 (= lt!4365 call!555)))

(declare-fun res!12504 () Bool)

(assert (=> b!17156 (= res!12504 ((_ is Found!47) lt!4365))))

(assert (=> b!17156 (=> (not res!12504) (not e!10675))))

(assert (=> b!17156 e!10675))

(declare-fun b!17157 () Bool)

(assert (=> b!17157 (= e!10676 e!10673)))

(declare-fun res!12500 () Bool)

(assert (=> b!17157 (= res!12500 (contains!200 call!568 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!17157 (=> (not res!12500) (not e!10673))))

(declare-fun b!17158 () Bool)

(declare-fun res!12501 () Bool)

(assert (=> b!17158 (= res!12501 call!572)))

(assert (=> b!17158 (=> (not res!12501) (not e!10675))))

(declare-fun b!17159 () Bool)

(assert (=> b!17159 (= e!10666 call!559)))

(declare-fun b!17160 () Bool)

(declare-fun lt!4347 () Unit!341)

(declare-fun lt!4370 () Unit!341)

(assert (=> b!17160 (= lt!4347 lt!4370)))

(assert (=> b!17160 (= call!570 call!566)))

(assert (=> b!17160 (= lt!4370 (lemmaChangeZeroKeyThenAddPairToListMap!1 (_keys!3053 call!469) (_values!1626 call!469) (mask!4538 call!469) (extraKeys!1542 call!469) lt!4353 (zeroValue!1565 call!469) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 call!469) (defaultEntry!1628 call!469)))))

(assert (=> b!17160 (= lt!4353 (bvor (extraKeys!1542 call!469) #b00000000000000000000000000000001))))

(assert (=> b!17160 (= e!10665 (tuple2!681 true (LongMapFixedSize!37 (defaultEntry!1628 call!469) (mask!4538 call!469) (bvor (extraKeys!1542 call!469) #b00000000000000000000000000000001) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 call!469) (_size!49 call!469) (_keys!3053 call!469) (_values!1626 call!469) (_vacant!49 call!469))))))

(declare-fun b!17161 () Bool)

(declare-fun res!12510 () Bool)

(assert (=> b!17161 (=> (not res!12510) (not e!10671))))

(assert (=> b!17161 (= res!12510 call!556)))

(assert (=> b!17161 (= e!10679 e!10671)))

(declare-fun b!17162 () Bool)

(declare-fun Unit!351 () Unit!341)

(assert (=> b!17162 (= e!10678 Unit!351)))

(declare-fun lt!4358 () Unit!341)

(assert (=> b!17162 (= lt!4358 call!550)))

(assert (=> b!17162 (= lt!4350 call!554)))

(declare-fun res!12502 () Bool)

(assert (=> b!17162 (= res!12502 ((_ is Found!47) lt!4350))))

(assert (=> b!17162 (=> (not res!12502) (not e!10667))))

(assert (=> b!17162 e!10667))

(declare-fun lt!4362 () Unit!341)

(assert (=> b!17162 (= lt!4362 lt!4358)))

(assert (=> b!17162 false))

(declare-fun b!17163 () Bool)

(assert (=> b!17163 (= e!10682 (not call!561))))

(declare-fun b!17164 () Bool)

(declare-fun res!12508 () Bool)

(assert (=> b!17164 (=> (not res!12508) (not e!10680))))

(assert (=> b!17164 (= res!12508 (= (select (arr!430 (_keys!3053 call!469)) (index!2307 lt!4366)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!17165 () Bool)

(assert (=> b!17165 (= e!10672 e!10683)))

(declare-fun c!1703 () Bool)

(assert (=> b!17165 (= c!1703 ((_ is MissingZero!47) lt!4359))))

(declare-fun b!17166 () Bool)

(assert (=> b!17166 (= e!10676 (= call!568 call!551))))

(assert (= (and d!3395 c!1700) b!17148))

(assert (= (and d!3395 (not c!1700)) b!17125))

(assert (= (and b!17148 c!1708) b!17160))

(assert (= (and b!17148 (not c!1708)) b!17126))

(assert (= (or b!17160 b!17126) bm!568))

(assert (= (or b!17160 b!17126) bm!553))

(assert (= (or b!17160 b!17126) bm!565))

(assert (= (and b!17125 c!1701) b!17137))

(assert (= (and b!17125 (not c!1701)) b!17131))

(assert (= (and b!17137 c!1707) b!17162))

(assert (= (and b!17137 (not c!1707)) b!17144))

(assert (= (and b!17162 res!12502) b!17139))

(assert (= (and b!17139 res!12507) b!17133))

(assert (= (and b!17144 c!1709) b!17161))

(assert (= (and b!17144 (not c!1709)) b!17136))

(assert (= (and b!17161 res!12510) b!17154))

(assert (= (and b!17154 res!12506) b!17145))

(assert (= (and b!17136 c!1706) b!17140))

(assert (= (and b!17136 (not c!1706)) b!17152))

(assert (= (and b!17140 res!12503) b!17130))

(assert (= (and b!17130 res!12512) b!17163))

(assert (= (or b!17161 b!17140) bm!569))

(assert (= (or b!17145 b!17163) bm!552))

(assert (= (or b!17139 bm!569) bm!555))

(assert (= (or b!17162 b!17144) bm!547))

(assert (= (and b!17131 c!1699) b!17143))

(assert (= (and b!17131 (not c!1699)) b!17165))

(assert (= (and b!17165 c!1703) b!17141))

(assert (= (and b!17165 (not c!1703)) b!17146))

(assert (= (and b!17146 c!1711) b!17156))

(assert (= (and b!17146 (not c!1711)) b!17149))

(assert (= (and b!17156 res!12504) b!17158))

(assert (= (and b!17158 res!12501) b!17142))

(assert (= (and b!17149 c!1702) b!17128))

(assert (= (and b!17149 (not c!1702)) b!17134))

(assert (= (and b!17128 res!12509) b!17164))

(assert (= (and b!17164 res!12508) b!17147))

(assert (= (and b!17134 c!1710) b!17129))

(assert (= (and b!17134 (not c!1710)) b!17138))

(assert (= (and b!17129 res!12505) b!17135))

(assert (= (and b!17135 res!12513) b!17155))

(assert (= (or b!17128 b!17129) bm!564))

(assert (= (or b!17147 b!17155) bm!557))

(assert (= (or b!17158 bm!564) bm!562))

(assert (= (or b!17156 b!17149) bm!556))

(assert (= (or b!17143 b!17141) bm!550))

(assert (= (or bm!547 bm!556) bm!567))

(assert (= (or b!17144 b!17149) bm!551))

(assert (= (or bm!555 bm!562) bm!558))

(assert (= (or b!17162 b!17156) bm!548))

(assert (= (or bm!552 bm!557) bm!561))

(assert (= (or b!17137 b!17146) bm!549))

(assert (= (or b!17137 b!17146) bm!566))

(assert (= (and bm!566 c!1704) b!17150))

(assert (= (and bm!566 (not c!1704)) b!17153))

(assert (= (or bm!568 bm!549) bm!554))

(assert (= (or bm!553 b!17146) bm!560))

(assert (= (or bm!565 b!17146) bm!563))

(assert (= (and bm!563 c!1698) b!17159))

(assert (= (and bm!563 (not c!1698)) b!17127))

(assert (= (and d!3395 res!12511) b!17132))

(assert (= (and b!17132 c!1705) b!17157))

(assert (= (and b!17132 (not c!1705)) b!17166))

(assert (= (and b!17157 res!12500) b!17151))

(assert (= (or b!17151 b!17166) bm!546))

(assert (= (or b!17157 b!17151 b!17166) bm!559))

(declare-fun m!12047 () Bool)

(assert (=> bm!560 m!12047))

(declare-fun m!12049 () Bool)

(assert (=> bm!558 m!12049))

(declare-fun m!12051 () Bool)

(assert (=> bm!546 m!12051))

(declare-fun m!12053 () Bool)

(assert (=> bm!559 m!12053))

(declare-fun m!12055 () Bool)

(assert (=> b!17142 m!12055))

(declare-fun m!12057 () Bool)

(assert (=> bm!554 m!12057))

(declare-fun m!12059 () Bool)

(assert (=> bm!554 m!12059))

(declare-fun m!12061 () Bool)

(assert (=> b!17146 m!12061))

(assert (=> b!17146 m!12061))

(declare-fun m!12063 () Bool)

(assert (=> b!17146 m!12063))

(declare-fun m!12065 () Bool)

(assert (=> b!17146 m!12065))

(declare-fun m!12067 () Bool)

(assert (=> b!17146 m!12067))

(assert (=> b!17146 m!12057))

(declare-fun m!12069 () Bool)

(assert (=> b!17127 m!12069))

(declare-fun m!12071 () Bool)

(assert (=> b!17151 m!12071))

(declare-fun m!12073 () Bool)

(assert (=> b!17135 m!12073))

(declare-fun m!12075 () Bool)

(assert (=> bm!548 m!12075))

(declare-fun m!12077 () Bool)

(assert (=> bm!567 m!12077))

(declare-fun m!12079 () Bool)

(assert (=> bm!561 m!12079))

(assert (=> b!17125 m!12077))

(declare-fun m!12081 () Bool)

(assert (=> b!17154 m!12081))

(declare-fun m!12083 () Bool)

(assert (=> b!17130 m!12083))

(assert (=> b!17153 m!12069))

(declare-fun m!12085 () Bool)

(assert (=> bm!563 m!12085))

(declare-fun m!12087 () Bool)

(assert (=> b!17160 m!12087))

(declare-fun m!12089 () Bool)

(assert (=> b!17126 m!12089))

(declare-fun m!12091 () Bool)

(assert (=> d!3395 m!12091))

(declare-fun m!12093 () Bool)

(assert (=> d!3395 m!12093))

(declare-fun m!12095 () Bool)

(assert (=> b!17164 m!12095))

(declare-fun m!12097 () Bool)

(assert (=> bm!550 m!12097))

(declare-fun m!12099 () Bool)

(assert (=> bm!566 m!12099))

(declare-fun m!12101 () Bool)

(assert (=> b!17157 m!12101))

(declare-fun m!12103 () Bool)

(assert (=> b!17133 m!12103))

(declare-fun m!12105 () Bool)

(assert (=> bm!551 m!12105))

(assert (=> b!16904 d!3395))

(declare-fun d!3397 () Bool)

(declare-fun lt!4374 () (_ BitVec 32))

(assert (=> d!3397 (and (bvsge lt!4374 #b00000000000000000000000000000000) (bvsle lt!4374 (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun e!10688 () (_ BitVec 32))

(assert (=> d!3397 (= lt!4374 e!10688)))

(declare-fun c!1716 () Bool)

(assert (=> d!3397 (= c!1716 (bvsge #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))))))

(assert (=> d!3397 (and (bvsle #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))))))

(assert (=> d!3397 (= (arrayCountValidKeys!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) #b00000000000000000000000000000000 (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))) lt!4374)))

(declare-fun bm!572 () Bool)

(declare-fun call!575 () (_ BitVec 32))

(assert (=> bm!572 (= call!575 (arrayCountValidKeys!0 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!519 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146)))))))))

(declare-fun b!17175 () Bool)

(declare-fun e!10689 () (_ BitVec 32))

(assert (=> b!17175 (= e!10689 (bvadd #b00000000000000000000000000000001 call!575))))

(declare-fun b!17176 () Bool)

(assert (=> b!17176 (= e!10688 #b00000000000000000000000000000000)))

(declare-fun b!17177 () Bool)

(assert (=> b!17177 (= e!10688 e!10689)))

(declare-fun c!1717 () Bool)

(assert (=> b!17177 (= c!1717 (validKeyInArray!0 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 (_2!339 lt!4146))))) #b00000000000000000000000000000000)))))

(declare-fun b!17178 () Bool)

(assert (=> b!17178 (= e!10689 call!575)))

(assert (= (and d!3397 c!1716) b!17176))

(assert (= (and d!3397 (not c!1716)) b!17177))

(assert (= (and b!17177 c!1717) b!17175))

(assert (= (and b!17177 (not c!1717)) b!17178))

(assert (= (or b!17175 b!17178) bm!572))

(declare-fun m!12107 () Bool)

(assert (=> bm!572 m!12107))

(assert (=> b!17177 m!11919))

(assert (=> b!17177 m!11919))

(assert (=> b!17177 m!11921))

(assert (=> b!16917 d!3397))

(declare-fun b!17207 () Bool)

(declare-fun e!10708 () tuple2!680)

(declare-fun e!10711 () tuple2!680)

(assert (=> b!17207 (= e!10708 e!10711)))

(declare-fun lt!4457 () V!957)

(declare-fun lt!4469 () (_ BitVec 64))

(declare-fun lt!4452 () tuple2!680)

(assert (=> b!17207 (= lt!4452 (update!2 (v!1403 (_2!341 lt!4179)) lt!4469 lt!4457))))

(declare-fun c!1735 () Bool)

(declare-fun lt!4454 () ListLongMap!507)

(assert (=> b!17207 (= c!1735 (contains!200 lt!4454 lt!4469))))

(declare-fun lt!4444 () Unit!341)

(declare-fun e!10713 () Unit!341)

(assert (=> b!17207 (= lt!4444 e!10713)))

(declare-fun c!1730 () Bool)

(assert (=> b!17207 (= c!1730 (_1!340 lt!4452))))

(declare-fun c!1733 () Bool)

(declare-fun lt!4465 () (_ BitVec 64))

(declare-fun call!602 () Unit!341)

(declare-fun lt!4439 () (_ BitVec 64))

(declare-fun lt!4464 () ListLongMap!507)

(declare-fun bm!599 () Bool)

(declare-fun lt!4468 () ListLongMap!507)

(declare-fun addCommutativeForDiffKeys!1 (ListLongMap!507 (_ BitVec 64) V!957 (_ BitVec 64) V!957) Unit!341)

(assert (=> bm!599 (= call!602 (addCommutativeForDiffKeys!1 (ite c!1733 lt!4468 lt!4464) lt!4469 lt!4457 (ite c!1733 lt!4465 lt!4439) (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun b!17208 () Bool)

(declare-fun e!10712 () Bool)

(declare-fun e!10706 () Bool)

(assert (=> b!17208 (= e!10712 e!10706)))

(declare-fun res!12519 () Bool)

(assert (=> b!17208 (=> (not res!12519) (not e!10706))))

(declare-fun lt!4466 () tuple2!680)

(assert (=> b!17208 (= res!12519 (valid!26 (_2!340 lt!4466)))))

(declare-fun bm!600 () Bool)

(declare-fun call!614 () ListLongMap!507)

(declare-fun call!613 () ListLongMap!507)

(assert (=> bm!600 (= call!614 (+!35 call!613 (tuple2!685 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1565 (v!1403 (underlying!29 thiss!848))))))))

(declare-fun d!3399 () Bool)

(assert (=> d!3399 e!10712))

(declare-fun res!12518 () Bool)

(assert (=> d!3399 (=> res!12518 e!10712)))

(assert (=> d!3399 (= res!12518 (not (_1!340 lt!4466)))))

(assert (=> d!3399 (= lt!4466 e!10708)))

(declare-fun c!1731 () Bool)

(assert (=> d!3399 (= c!1731 (and (not (= lt!4469 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!4469 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3399 (= lt!4454 (map!327 (v!1403 (_2!341 lt!4179))))))

(declare-fun get!325 (ValueCell!225 V!957) V!957)

(assert (=> d!3399 (= lt!4457 (get!325 (select (arr!429 (_values!1626 (v!1403 (underlying!29 thiss!848)))) (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001)) (dynLambda!132 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3399 (= lt!4469 (select (arr!430 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001)))))

(assert (=> d!3399 (valid!27 thiss!848)))

(assert (=> d!3399 (= (repackFrom!1 thiss!848 (v!1403 (_2!341 lt!4179)) (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001)) lt!4466)))

(declare-fun b!17209 () Bool)

(declare-fun Unit!352 () Unit!341)

(assert (=> b!17209 (= e!10713 Unit!352)))

(declare-fun b!17210 () Bool)

(declare-fun e!10707 () tuple2!680)

(assert (=> b!17210 (= e!10707 (tuple2!681 true (v!1403 (_2!341 lt!4179))))))

(declare-fun lt!4449 () (_ BitVec 64))

(declare-fun call!605 () Unit!341)

(declare-fun lt!4456 () ListLongMap!507)

(declare-fun bm!601 () Bool)

(declare-fun lt!4453 () (_ BitVec 64))

(declare-fun lt!4450 () ListLongMap!507)

(assert (=> bm!601 (= call!605 (addCommutativeForDiffKeys!1 (ite c!1733 lt!4450 lt!4456) lt!4469 lt!4457 (ite c!1733 lt!4453 lt!4449) (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun call!611 () tuple2!680)

(declare-fun bm!602 () Bool)

(assert (=> bm!602 (= call!611 (repackFrom!1 thiss!848 (ite c!1731 (_2!340 lt!4452) (v!1403 (_2!341 lt!4179))) (bvsub (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!603 () Bool)

(declare-fun call!604 () ListLongMap!507)

(declare-fun call!606 () ListLongMap!507)

(declare-fun call!603 () ListLongMap!507)

(assert (=> bm!603 (= call!606 (+!35 (ite c!1733 call!604 call!603) (ite c!1733 (tuple2!685 lt!4465 (minValue!1565 (v!1403 (underlying!29 thiss!848)))) (tuple2!685 lt!4469 lt!4457))))))

(declare-fun b!17211 () Bool)

(declare-fun e!10710 () tuple2!680)

(assert (=> b!17211 (= e!10710 (tuple2!681 true (_2!340 lt!4452)))))

(assert (=> b!17211 (= lt!4456 call!613)))

(assert (=> b!17211 (= lt!4449 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!4448 () Unit!341)

(assert (=> b!17211 (= lt!4448 call!605)))

(declare-fun call!609 () ListLongMap!507)

(declare-fun call!610 () ListLongMap!507)

(assert (=> b!17211 (= call!609 call!610)))

(declare-fun lt!4451 () Unit!341)

(assert (=> b!17211 (= lt!4451 lt!4448)))

(assert (=> b!17211 (= lt!4464 call!614)))

(assert (=> b!17211 (= lt!4439 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!4440 () Unit!341)

(assert (=> b!17211 (= lt!4440 call!602)))

(declare-fun call!612 () ListLongMap!507)

(assert (=> b!17211 (= call!612 call!606)))

(declare-fun lt!4443 () Unit!341)

(assert (=> b!17211 (= lt!4443 lt!4440)))

(declare-fun b!17212 () Bool)

(declare-fun e!10709 () Bool)

(assert (=> b!17212 (= e!10709 (ite (= lt!4469 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!604 () Bool)

(assert (=> bm!604 (= call!604 (+!35 (ite c!1733 lt!4468 lt!4464) (tuple2!685 lt!4469 lt!4457)))))

(declare-fun b!17213 () Bool)

(assert (=> b!17213 (= e!10711 (tuple2!681 false (_2!340 lt!4452)))))

(declare-fun b!17214 () Bool)

(declare-fun lt!4467 () tuple2!680)

(assert (=> b!17214 (= e!10710 (tuple2!681 (_1!340 lt!4467) (_2!340 lt!4467)))))

(assert (=> b!17214 (= lt!4450 call!613)))

(assert (=> b!17214 (= lt!4453 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!4459 () Unit!341)

(assert (=> b!17214 (= lt!4459 call!605)))

(assert (=> b!17214 (= call!612 call!610)))

(declare-fun lt!4462 () Unit!341)

(assert (=> b!17214 (= lt!4462 lt!4459)))

(assert (=> b!17214 (= lt!4468 call!614)))

(assert (=> b!17214 (= lt!4465 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!4470 () Unit!341)

(assert (=> b!17214 (= lt!4470 call!602)))

(assert (=> b!17214 (= call!606 call!609)))

(declare-fun lt!4455 () Unit!341)

(assert (=> b!17214 (= lt!4455 lt!4470)))

(assert (=> b!17214 (= lt!4467 call!611)))

(declare-fun bm!605 () Bool)

(assert (=> bm!605 (= call!603 (+!35 (ite c!1733 lt!4450 lt!4464) (ite c!1733 (tuple2!685 lt!4469 lt!4457) (tuple2!685 lt!4439 (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun lt!4442 () (_ BitVec 32))

(declare-fun b!17215 () Bool)

(assert (=> b!17215 (= e!10709 (arrayContainsKey!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) lt!4469 lt!4442))))

(declare-fun b!17216 () Bool)

(assert (=> b!17216 false))

(declare-fun lt!4447 () Unit!341)

(declare-fun lt!4463 () Unit!341)

(assert (=> b!17216 (= lt!4447 lt!4463)))

(declare-fun lt!4458 () (_ BitVec 32))

(assert (=> b!17216 (not (arrayContainsKey!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) lt!4469 lt!4458))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!895 (_ BitVec 32) (_ BitVec 64) List!528) Unit!341)

(assert (=> b!17216 (= lt!4463 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) lt!4458 lt!4469 (Cons!524 lt!4469 Nil!525)))))

(assert (=> b!17216 (= lt!4458 (bvadd (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!4460 () Unit!341)

(declare-fun lt!4461 () Unit!341)

(assert (=> b!17216 (= lt!4460 lt!4461)))

(assert (=> b!17216 (arrayNoDuplicates!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) Nil!525)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!895 (_ BitVec 32) (_ BitVec 32)) Unit!341)

(assert (=> b!17216 (= lt!4461 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3053 (v!1403 (underlying!29 thiss!848))) #b00000000000000000000000000000000 (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001)))))

(declare-fun lt!4441 () Unit!341)

(declare-fun lt!4445 () Unit!341)

(assert (=> b!17216 (= lt!4441 lt!4445)))

(assert (=> b!17216 e!10709))

(declare-fun c!1732 () Bool)

(assert (=> b!17216 (= c!1732 (and (not (= lt!4469 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!4469 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!1 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 64) (_ BitVec 32) Int) Unit!341)

(assert (=> b!17216 (= lt!4445 (lemmaListMapContainsThenArrayContainsFrom!1 (_keys!3053 (v!1403 (underlying!29 thiss!848))) (_values!1626 (v!1403 (underlying!29 thiss!848))) (mask!4538 (v!1403 (underlying!29 thiss!848))) (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))) lt!4469 lt!4442 (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))))))

(assert (=> b!17216 (= lt!4442 (bvadd (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!353 () Unit!341)

(assert (=> b!17216 (= e!10713 Unit!353)))

(declare-fun b!17217 () Bool)

(declare-fun lt!4446 () tuple2!680)

(assert (=> b!17217 (= lt!4446 call!611)))

(assert (=> b!17217 (= e!10707 (tuple2!681 (_1!340 lt!4446) (_2!340 lt!4446)))))

(declare-fun b!17218 () Bool)

(assert (=> b!17218 (= c!1733 (bvsgt (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!17218 (= e!10711 e!10710)))

(declare-fun call!608 () ListLongMap!507)

(declare-fun bm!606 () Bool)

(assert (=> bm!606 (= call!608 (+!35 (ite c!1733 lt!4450 lt!4456) (ite c!1733 (tuple2!685 lt!4453 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))) (tuple2!685 lt!4449 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun b!17219 () Bool)

(assert (=> b!17219 (= e!10706 (= (map!327 (_2!340 lt!4466)) (map!327 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun bm!607 () Bool)

(assert (=> bm!607 (= call!610 (+!35 call!608 (tuple2!685 lt!4469 lt!4457)))))

(declare-fun bm!608 () Bool)

(assert (=> bm!608 (= call!612 (+!35 (ite c!1733 call!603 call!604) (ite c!1733 (tuple2!685 lt!4453 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))) (tuple2!685 lt!4439 (minValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(declare-fun b!17220 () Bool)

(assert (=> b!17220 (= e!10708 e!10707)))

(declare-fun c!1734 () Bool)

(assert (=> b!17220 (= c!1734 (bvsgt (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!609 () Bool)

(declare-fun call!607 () ListLongMap!507)

(assert (=> bm!609 (= call!607 (+!35 (ite c!1733 lt!4468 lt!4456) (ite c!1733 (tuple2!685 lt!4465 (minValue!1565 (v!1403 (underlying!29 thiss!848)))) (tuple2!685 lt!4469 lt!4457))))))

(declare-fun bm!610 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!11 (array!895 array!893 (_ BitVec 32) (_ BitVec 32) V!957 V!957 (_ BitVec 32) Int) ListLongMap!507)

(assert (=> bm!610 (= call!613 (getCurrentListMapNoExtraKeys!11 (_keys!3053 (v!1403 (underlying!29 thiss!848))) (_values!1626 (v!1403 (underlying!29 thiss!848))) (mask!4538 (v!1403 (underlying!29 thiss!848))) (extraKeys!1542 (v!1403 (underlying!29 thiss!848))) (zeroValue!1565 (v!1403 (underlying!29 thiss!848))) (minValue!1565 (v!1403 (underlying!29 thiss!848))) (bvadd (bvsub (size!519 (_keys!3053 (v!1403 (underlying!29 thiss!848)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1628 (v!1403 (underlying!29 thiss!848)))))))

(declare-fun bm!611 () Bool)

(assert (=> bm!611 (= call!609 (+!35 call!607 (ite c!1733 (tuple2!685 lt!4469 lt!4457) (tuple2!685 lt!4449 (zeroValue!1565 (v!1403 (underlying!29 thiss!848)))))))))

(assert (= (and d!3399 c!1731) b!17207))

(assert (= (and d!3399 (not c!1731)) b!17220))

(assert (= (and b!17207 c!1735) b!17216))

(assert (= (and b!17207 (not c!1735)) b!17209))

(assert (= (and b!17216 c!1732) b!17215))

(assert (= (and b!17216 (not c!1732)) b!17212))

(assert (= (and b!17207 c!1730) b!17218))

(assert (= (and b!17207 (not c!1730)) b!17213))

(assert (= (and b!17218 c!1733) b!17214))

(assert (= (and b!17218 (not c!1733)) b!17211))

(assert (= (or b!17214 b!17211) bm!606))

(assert (= (or b!17214 b!17211) bm!604))

(assert (= (or b!17214 b!17211) bm!601))

(assert (= (or b!17214 b!17211) bm!610))

(assert (= (or b!17214 b!17211) bm!609))

(assert (= (or b!17214 b!17211) bm!599))

(assert (= (or b!17214 b!17211) bm!605))

(assert (= (or b!17214 b!17211) bm!607))

(assert (= (or b!17214 b!17211) bm!603))

(assert (= (or b!17214 b!17211) bm!600))

(assert (= (or b!17214 b!17211) bm!608))

(assert (= (or b!17214 b!17211) bm!611))

(assert (= (and b!17220 c!1734) b!17217))

(assert (= (and b!17220 (not c!1734)) b!17210))

(assert (= (or b!17214 b!17217) bm!602))

(assert (= (and d!3399 (not res!12518)) b!17208))

(assert (= (and b!17208 res!12519) b!17219))

(declare-fun b_lambda!1443 () Bool)

(assert (=> (not b_lambda!1443) (not d!3399)))

(assert (=> d!3399 t!3169))

(declare-fun b_and!1237 () Bool)

(assert (= b_and!1235 (and (=> t!3169 result!1007) b_and!1237)))

(declare-fun m!12109 () Bool)

(assert (=> b!17216 m!12109))

(declare-fun m!12111 () Bool)

(assert (=> b!17216 m!12111))

(declare-fun m!12113 () Bool)

(assert (=> b!17216 m!12113))

(declare-fun m!12115 () Bool)

(assert (=> b!17216 m!12115))

(declare-fun m!12117 () Bool)

(assert (=> b!17216 m!12117))

(declare-fun m!12119 () Bool)

(assert (=> bm!601 m!12119))

(declare-fun m!12121 () Bool)

(assert (=> bm!610 m!12121))

(declare-fun m!12123 () Bool)

(assert (=> bm!604 m!12123))

(declare-fun m!12125 () Bool)

(assert (=> bm!605 m!12125))

(declare-fun m!12127 () Bool)

(assert (=> d!3399 m!12127))

(assert (=> d!3399 m!11947))

(declare-fun m!12129 () Bool)

(assert (=> d!3399 m!12129))

(assert (=> d!3399 m!11865))

(declare-fun m!12131 () Bool)

(assert (=> d!3399 m!12131))

(assert (=> d!3399 m!12127))

(declare-fun m!12133 () Bool)

(assert (=> d!3399 m!12133))

(assert (=> d!3399 m!11947))

(declare-fun m!12135 () Bool)

(assert (=> bm!600 m!12135))

(declare-fun m!12137 () Bool)

(assert (=> b!17207 m!12137))

(declare-fun m!12139 () Bool)

(assert (=> b!17207 m!12139))

(declare-fun m!12141 () Bool)

(assert (=> b!17208 m!12141))

(declare-fun m!12143 () Bool)

(assert (=> b!17219 m!12143))

(assert (=> b!17219 m!12041))

(declare-fun m!12145 () Bool)

(assert (=> bm!608 m!12145))

(declare-fun m!12147 () Bool)

(assert (=> bm!599 m!12147))

(declare-fun m!12149 () Bool)

(assert (=> bm!611 m!12149))

(declare-fun m!12151 () Bool)

(assert (=> bm!606 m!12151))

(declare-fun m!12153 () Bool)

(assert (=> bm!603 m!12153))

(declare-fun m!12155 () Bool)

(assert (=> bm!607 m!12155))

(declare-fun m!12157 () Bool)

(assert (=> bm!602 m!12157))

(declare-fun m!12159 () Bool)

(assert (=> b!17215 m!12159))

(declare-fun m!12161 () Bool)

(assert (=> bm!609 m!12161))

(assert (=> b!16908 d!3399))

(declare-fun condMapEmpty!711 () Bool)

(declare-fun mapDefault!711 () ValueCell!225)

(assert (=> mapNonEmpty!710 (= condMapEmpty!711 (= mapRest!710 ((as const (Array (_ BitVec 32) ValueCell!225)) mapDefault!711)))))

(declare-fun e!10715 () Bool)

(declare-fun mapRes!711 () Bool)

(assert (=> mapNonEmpty!710 (= tp!2951 (and e!10715 mapRes!711))))

(declare-fun mapNonEmpty!711 () Bool)

(declare-fun tp!2952 () Bool)

(declare-fun e!10714 () Bool)

(assert (=> mapNonEmpty!711 (= mapRes!711 (and tp!2952 e!10714))))

(declare-fun mapValue!711 () ValueCell!225)

(declare-fun mapKey!711 () (_ BitVec 32))

(declare-fun mapRest!711 () (Array (_ BitVec 32) ValueCell!225))

(assert (=> mapNonEmpty!711 (= mapRest!710 (store mapRest!711 mapKey!711 mapValue!711))))

(declare-fun mapIsEmpty!711 () Bool)

(assert (=> mapIsEmpty!711 mapRes!711))

(declare-fun b!17221 () Bool)

(assert (=> b!17221 (= e!10714 tp_is_empty!849)))

(declare-fun b!17222 () Bool)

(assert (=> b!17222 (= e!10715 tp_is_empty!849)))

(assert (= (and mapNonEmpty!710 condMapEmpty!711) mapIsEmpty!711))

(assert (= (and mapNonEmpty!710 (not condMapEmpty!711)) mapNonEmpty!711))

(assert (= (and mapNonEmpty!711 ((_ is ValueCellFull!225) mapValue!711)) b!17221))

(assert (= (and mapNonEmpty!710 ((_ is ValueCellFull!225) mapDefault!711)) b!17222))

(declare-fun m!12163 () Bool)

(assert (=> mapNonEmpty!711 m!12163))

(declare-fun b_lambda!1445 () Bool)

(assert (= b_lambda!1441 (or (and b!16853 b_free!585) b_lambda!1445)))

(declare-fun b_lambda!1447 () Bool)

(assert (= b_lambda!1443 (or (and b!16853 b_free!585) b_lambda!1447)))

(declare-fun b_lambda!1449 () Bool)

(assert (= b_lambda!1439 (or (and b!16853 b_free!585) b_lambda!1449)))

(check-sat (not d!3385) (not b!17122) (not bm!600) (not bm!527) (not b!17061) (not b!17060) (not bm!610) (not bm!561) (not b_next!585) (not b_lambda!1449) (not b!17151) (not b!17216) (not bm!608) (not bm!526) (not bm!605) (not bm!609) (not d!3399) b_and!1237 (not bm!603) (not b!17157) (not bm!534) (not b!16936) (not b!16972) (not b!17127) (not b!16970) (not b_lambda!1447) (not bm!572) (not bm!524) (not bm!566) (not bm!473) (not b_lambda!1445) (not bm!560) (not bm!607) (not d!3383) tp_is_empty!849 (not d!3395) (not b!16953) (not b!16971) (not bm!604) (not bm!567) (not bm!602) (not bm!601) (not b!17107) (not b!17085) (not bm!551) (not d!3393) (not b!17177) (not bm!554) (not b!17208) (not bm!537) (not b!17123) (not b!17112) (not bm!599) (not mapNonEmpty!711) (not b!16937) (not bm!546) (not b!16952) (not b!17126) (not b!17080) (not bm!559) (not bm!548) (not b!17111) (not bm!530) (not b!17146) (not b!17160) (not bm!611) (not b!16950) (not b!17153) (not b!17087) (not d!3387) (not bm!606) (not bm!470) (not b!17091) (not bm!543) (not bm!535) (not b!17059) (not b!17094) (not b!17207) (not d!3389) (not bm!542) (not bm!550) (not bm!536) (not b!17215) (not b!17219) (not d!3391) (not bm!563) (not b!17125) (not d!3381) (not bm!539) (not bm!522) (not bm!558) (not b!17110))
(check-sat b_and!1237 (not b_next!585))
