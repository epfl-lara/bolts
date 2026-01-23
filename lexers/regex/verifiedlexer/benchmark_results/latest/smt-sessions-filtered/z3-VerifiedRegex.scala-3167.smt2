; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185506 () Bool)

(assert start!185506)

(declare-fun b!1858614 () Bool)

(declare-fun b_free!51969 () Bool)

(declare-fun b_next!52673 () Bool)

(assert (=> b!1858614 (= b_free!51969 (not b_next!52673))))

(declare-fun tp!529853 () Bool)

(declare-fun b_and!144227 () Bool)

(assert (=> b!1858614 (= tp!529853 b_and!144227)))

(declare-fun res!832557 () Bool)

(declare-fun e!1186883 () Bool)

(assert (=> start!185506 (=> (not res!832557) (not e!1186883))))

(declare-datatypes ((V!3878 0))(
  ( (V!3879 (val!5890 Int)) )
))
(declare-datatypes ((array!6541 0))(
  ( (array!6542 (arr!2906 (Array (_ BitVec 32) (_ BitVec 64))) (size!16291 (_ BitVec 32))) )
))
(declare-datatypes ((array!6543 0))(
  ( (array!6544 (arr!2907 (Array (_ BitVec 32) V!3878)) (size!16292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3808 0))(
  ( (LongMapFixedSize!3809 (defaultEntry!2269 Int) (mask!5620 (_ BitVec 32)) (extraKeys!2152 (_ BitVec 32)) (zeroValue!2162 V!3878) (minValue!2162 V!3878) (_size!3882 (_ BitVec 32)) (_keys!2201 array!6541) (_values!2184 array!6543) (_vacant!1965 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7487 0))(
  ( (Cell!7488 (v!26048 LongMapFixedSize!3808)) )
))
(declare-datatypes ((MutLongMap!1904 0))(
  ( (LongMap!1904 (underlying!4022 Cell!7487)) (MutLongMapExt!1903 (__x!12973 Int)) )
))
(declare-fun thiss!47603 () MutLongMap!1904)

(declare-fun valid!1526 (MutLongMap!1904) Bool)

(assert (=> start!185506 (= res!832557 (valid!1526 thiss!47603))))

(assert (=> start!185506 e!1186883))

(declare-fun e!1186882 () Bool)

(assert (=> start!185506 e!1186882))

(assert (=> start!185506 true))

(declare-fun b!1858608 () Bool)

(declare-fun e!1186880 () Bool)

(declare-fun e!1186884 () Bool)

(assert (=> b!1858608 (= e!1186880 e!1186884)))

(declare-fun c!302583 () Bool)

(declare-datatypes ((tuple2!19858 0))(
  ( (tuple2!19859 (_1!11356 Bool) (_2!11356 MutLongMap!1904)) )
))
(declare-fun lt!717217 () tuple2!19858)

(assert (=> b!1858608 (= c!302583 (_1!11356 lt!717217))))

(declare-fun bm!115540 () Bool)

(declare-datatypes ((tuple2!19860 0))(
  ( (tuple2!19861 (_1!11357 (_ BitVec 64)) (_2!11357 V!3878)) )
))
(declare-datatypes ((List!20688 0))(
  ( (Nil!20608) (Cons!20608 (h!26009 tuple2!19860) (t!172553 List!20688)) )
))
(declare-datatypes ((ListLongMap!211 0))(
  ( (ListLongMap!212 (toList!991 List!20688)) )
))
(declare-fun call!115546 () ListLongMap!211)

(declare-fun abstractMap!60 (MutLongMap!1904) ListLongMap!211)

(assert (=> bm!115540 (= call!115546 (abstractMap!60 (_2!11356 lt!717217)))))

(declare-fun b!1858609 () Bool)

(declare-fun call!115545 () ListLongMap!211)

(assert (=> b!1858609 (= e!1186884 (not (= call!115546 call!115545)))))

(declare-fun b!1858610 () Bool)

(declare-fun e!1186878 () Bool)

(declare-fun e!1186885 () Bool)

(assert (=> b!1858610 (= e!1186878 e!1186885)))

(declare-fun b!1858611 () Bool)

(assert (=> b!1858611 (= e!1186883 e!1186880)))

(declare-fun res!832558 () Bool)

(assert (=> b!1858611 (=> res!832558 e!1186880)))

(assert (=> b!1858611 (= res!832558 (not (valid!1526 (_2!11356 lt!717217))))))

(declare-fun key!7122 () (_ BitVec 64))

(declare-fun remove!54 (MutLongMap!1904 (_ BitVec 64)) tuple2!19858)

(assert (=> b!1858611 (= lt!717217 (remove!54 thiss!47603 key!7122))))

(declare-fun b!1858612 () Bool)

(declare-fun -!100 (ListLongMap!211 (_ BitVec 64)) ListLongMap!211)

(assert (=> b!1858612 (= e!1186884 (not (= call!115546 (-!100 call!115545 key!7122))))))

(declare-fun mapIsEmpty!8850 () Bool)

(declare-fun mapRes!8850 () Bool)

(assert (=> mapIsEmpty!8850 mapRes!8850))

(declare-fun b!1858613 () Bool)

(declare-fun res!832559 () Bool)

(assert (=> b!1858613 (=> (not res!832559) (not e!1186883))))

(get-info :version)

(assert (=> b!1858613 (= res!832559 ((_ is LongMap!1904) thiss!47603))))

(declare-fun mapNonEmpty!8850 () Bool)

(declare-fun tp!529852 () Bool)

(declare-fun tp_is_empty!8575 () Bool)

(assert (=> mapNonEmpty!8850 (= mapRes!8850 (and tp!529852 tp_is_empty!8575))))

(declare-fun mapRest!8850 () (Array (_ BitVec 32) V!3878))

(declare-fun mapValue!8850 () V!3878)

(declare-fun mapKey!8850 () (_ BitVec 32))

(assert (=> mapNonEmpty!8850 (= (arr!2907 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) (store mapRest!8850 mapKey!8850 mapValue!8850))))

(declare-fun e!1186881 () Bool)

(declare-fun array_inv!2089 (array!6541) Bool)

(declare-fun array_inv!2090 (array!6543) Bool)

(assert (=> b!1858614 (= e!1186885 (and tp!529853 tp_is_empty!8575 (array_inv!2089 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (array_inv!2090 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) e!1186881))))

(declare-fun b!1858615 () Bool)

(assert (=> b!1858615 (= e!1186881 (and tp_is_empty!8575 mapRes!8850))))

(declare-fun condMapEmpty!8850 () Bool)

(declare-fun mapDefault!8850 () V!3878)

(assert (=> b!1858615 (= condMapEmpty!8850 (= (arr!2907 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) ((as const (Array (_ BitVec 32) V!3878)) mapDefault!8850)))))

(declare-fun b!1858616 () Bool)

(assert (=> b!1858616 (= e!1186882 e!1186878)))

(declare-fun bm!115541 () Bool)

(assert (=> bm!115541 (= call!115545 (abstractMap!60 thiss!47603))))

(assert (= (and start!185506 res!832557) b!1858613))

(assert (= (and b!1858613 res!832559) b!1858611))

(assert (= (and b!1858611 (not res!832558)) b!1858608))

(assert (= (and b!1858608 c!302583) b!1858612))

(assert (= (and b!1858608 (not c!302583)) b!1858609))

(assert (= (or b!1858612 b!1858609) bm!115540))

(assert (= (or b!1858612 b!1858609) bm!115541))

(assert (= (and b!1858615 condMapEmpty!8850) mapIsEmpty!8850))

(assert (= (and b!1858615 (not condMapEmpty!8850)) mapNonEmpty!8850))

(assert (= b!1858614 b!1858615))

(assert (= b!1858610 b!1858614))

(assert (= b!1858616 b!1858610))

(assert (= (and start!185506 ((_ is LongMap!1904) thiss!47603)) b!1858616))

(declare-fun m!2282095 () Bool)

(assert (=> mapNonEmpty!8850 m!2282095))

(declare-fun m!2282097 () Bool)

(assert (=> bm!115540 m!2282097))

(declare-fun m!2282099 () Bool)

(assert (=> b!1858614 m!2282099))

(declare-fun m!2282101 () Bool)

(assert (=> b!1858614 m!2282101))

(declare-fun m!2282103 () Bool)

(assert (=> start!185506 m!2282103))

(declare-fun m!2282105 () Bool)

(assert (=> b!1858612 m!2282105))

(declare-fun m!2282107 () Bool)

(assert (=> bm!115541 m!2282107))

(declare-fun m!2282109 () Bool)

(assert (=> b!1858611 m!2282109))

(declare-fun m!2282111 () Bool)

(assert (=> b!1858611 m!2282111))

(check-sat (not b!1858614) (not bm!115541) (not start!185506) (not b!1858612) (not bm!115540) (not mapNonEmpty!8850) b_and!144227 tp_is_empty!8575 (not b!1858611) (not b_next!52673))
(check-sat b_and!144227 (not b_next!52673))
(get-model)

(declare-fun d!567120 () Bool)

(declare-fun c!302586 () Bool)

(assert (=> d!567120 (= c!302586 ((_ is LongMap!1904) thiss!47603))))

(declare-fun e!1186888 () ListLongMap!211)

(assert (=> d!567120 (= (abstractMap!60 thiss!47603) e!1186888)))

(declare-fun b!1858621 () Bool)

(declare-fun abstractMap!61 (MutLongMap!1904) ListLongMap!211)

(assert (=> b!1858621 (= e!1186888 (abstractMap!61 thiss!47603))))

(declare-fun b!1858622 () Bool)

(declare-fun abstractMap!62 (MutLongMap!1904) ListLongMap!211)

(assert (=> b!1858622 (= e!1186888 (abstractMap!62 thiss!47603))))

(assert (= (and d!567120 c!302586) b!1858621))

(assert (= (and d!567120 (not c!302586)) b!1858622))

(declare-fun m!2282113 () Bool)

(assert (=> b!1858621 m!2282113))

(declare-fun m!2282115 () Bool)

(assert (=> b!1858622 m!2282115))

(assert (=> bm!115541 d!567120))

(declare-fun d!567122 () Bool)

(assert (=> d!567122 (= (array_inv!2089 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (bvsge (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858614 d!567122))

(declare-fun d!567124 () Bool)

(assert (=> d!567124 (= (array_inv!2090 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) (bvsge (size!16292 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) #b00000000000000000000000000000000))))

(assert (=> b!1858614 d!567124))

(declare-fun d!567126 () Bool)

(declare-fun c!302589 () Bool)

(assert (=> d!567126 (= c!302589 ((_ is LongMap!1904) thiss!47603))))

(declare-fun e!1186891 () Bool)

(assert (=> d!567126 (= (valid!1526 thiss!47603) e!1186891)))

(declare-fun b!1858627 () Bool)

(declare-fun valid!1527 (MutLongMap!1904) Bool)

(assert (=> b!1858627 (= e!1186891 (valid!1527 thiss!47603))))

(declare-fun b!1858628 () Bool)

(declare-fun valid!1528 (MutLongMap!1904) Bool)

(assert (=> b!1858628 (= e!1186891 (valid!1528 thiss!47603))))

(assert (= (and d!567126 c!302589) b!1858627))

(assert (= (and d!567126 (not c!302589)) b!1858628))

(declare-fun m!2282117 () Bool)

(assert (=> b!1858627 m!2282117))

(declare-fun m!2282119 () Bool)

(assert (=> b!1858628 m!2282119))

(assert (=> start!185506 d!567126))

(declare-fun d!567128 () Bool)

(declare-fun c!302590 () Bool)

(assert (=> d!567128 (= c!302590 ((_ is LongMap!1904) (_2!11356 lt!717217)))))

(declare-fun e!1186892 () Bool)

(assert (=> d!567128 (= (valid!1526 (_2!11356 lt!717217)) e!1186892)))

(declare-fun b!1858629 () Bool)

(assert (=> b!1858629 (= e!1186892 (valid!1527 (_2!11356 lt!717217)))))

(declare-fun b!1858630 () Bool)

(assert (=> b!1858630 (= e!1186892 (valid!1528 (_2!11356 lt!717217)))))

(assert (= (and d!567128 c!302590) b!1858629))

(assert (= (and d!567128 (not c!302590)) b!1858630))

(declare-fun m!2282121 () Bool)

(assert (=> b!1858629 m!2282121))

(declare-fun m!2282123 () Bool)

(assert (=> b!1858630 m!2282123))

(assert (=> b!1858611 d!567128))

(declare-fun b!1858639 () Bool)

(declare-fun e!1186898 () Bool)

(declare-fun e!1186897 () Bool)

(assert (=> b!1858639 (= e!1186898 e!1186897)))

(declare-fun c!302593 () Bool)

(declare-fun lt!717223 () tuple2!19858)

(assert (=> b!1858639 (= c!302593 (_1!11356 lt!717223))))

(declare-fun b!1858640 () Bool)

(declare-fun res!832565 () Bool)

(assert (=> b!1858640 (=> (not res!832565) (not e!1186898))))

(assert (=> b!1858640 (= res!832565 (valid!1527 (_2!11356 lt!717223)))))

(declare-fun d!567130 () Bool)

(assert (=> d!567130 e!1186898))

(declare-fun res!832564 () Bool)

(assert (=> d!567130 (=> (not res!832564) (not e!1186898))))

(assert (=> d!567130 (= res!832564 ((_ is LongMap!1904) (_2!11356 lt!717223)))))

(declare-datatypes ((tuple2!19862 0))(
  ( (tuple2!19863 (_1!11358 Bool) (_2!11358 LongMapFixedSize!3808)) )
))
(declare-fun lt!717222 () tuple2!19862)

(assert (=> d!567130 (= lt!717223 (tuple2!19859 (_1!11358 lt!717222) (LongMap!1904 (Cell!7488 (_2!11358 lt!717222)))))))

(declare-fun remove!55 (LongMapFixedSize!3808 (_ BitVec 64)) tuple2!19862)

(assert (=> d!567130 (= lt!717222 (remove!55 (v!26048 (underlying!4022 thiss!47603)) key!7122))))

(assert (=> d!567130 (valid!1527 thiss!47603)))

(assert (=> d!567130 (= (remove!54 thiss!47603 key!7122) lt!717223)))

(declare-fun b!1858641 () Bool)

(declare-fun call!115551 () ListLongMap!211)

(declare-fun call!115552 () ListLongMap!211)

(assert (=> b!1858641 (= e!1186897 (= call!115551 call!115552))))

(declare-fun bm!115546 () Bool)

(declare-fun map!4355 (MutLongMap!1904) ListLongMap!211)

(assert (=> bm!115546 (= call!115551 (map!4355 (_2!11356 lt!717223)))))

(declare-fun bm!115547 () Bool)

(assert (=> bm!115547 (= call!115552 (map!4355 thiss!47603))))

(declare-fun b!1858642 () Bool)

(assert (=> b!1858642 (= e!1186897 (= call!115551 (-!100 call!115552 key!7122)))))

(assert (= (and d!567130 res!832564) b!1858640))

(assert (= (and b!1858640 res!832565) b!1858639))

(assert (= (and b!1858639 c!302593) b!1858642))

(assert (= (and b!1858639 (not c!302593)) b!1858641))

(assert (= (or b!1858642 b!1858641) bm!115546))

(assert (= (or b!1858642 b!1858641) bm!115547))

(declare-fun m!2282125 () Bool)

(assert (=> bm!115547 m!2282125))

(declare-fun m!2282127 () Bool)

(assert (=> bm!115546 m!2282127))

(declare-fun m!2282129 () Bool)

(assert (=> b!1858642 m!2282129))

(declare-fun m!2282131 () Bool)

(assert (=> b!1858640 m!2282131))

(declare-fun m!2282133 () Bool)

(assert (=> d!567130 m!2282133))

(assert (=> d!567130 m!2282117))

(assert (=> b!1858611 d!567130))

(declare-fun d!567132 () Bool)

(declare-fun lt!717226 () ListLongMap!211)

(declare-fun contains!3801 (ListLongMap!211 (_ BitVec 64)) Bool)

(assert (=> d!567132 (not (contains!3801 lt!717226 key!7122))))

(declare-fun removeStrictlySorted!1 (List!20688 (_ BitVec 64)) List!20688)

(assert (=> d!567132 (= lt!717226 (ListLongMap!212 (removeStrictlySorted!1 (toList!991 call!115545) key!7122)))))

(assert (=> d!567132 (= (-!100 call!115545 key!7122) lt!717226)))

(declare-fun bs!410739 () Bool)

(assert (= bs!410739 d!567132))

(declare-fun m!2282135 () Bool)

(assert (=> bs!410739 m!2282135))

(declare-fun m!2282137 () Bool)

(assert (=> bs!410739 m!2282137))

(assert (=> b!1858612 d!567132))

(declare-fun d!567134 () Bool)

(declare-fun c!302594 () Bool)

(assert (=> d!567134 (= c!302594 ((_ is LongMap!1904) (_2!11356 lt!717217)))))

(declare-fun e!1186899 () ListLongMap!211)

(assert (=> d!567134 (= (abstractMap!60 (_2!11356 lt!717217)) e!1186899)))

(declare-fun b!1858643 () Bool)

(assert (=> b!1858643 (= e!1186899 (abstractMap!61 (_2!11356 lt!717217)))))

(declare-fun b!1858644 () Bool)

(assert (=> b!1858644 (= e!1186899 (abstractMap!62 (_2!11356 lt!717217)))))

(assert (= (and d!567134 c!302594) b!1858643))

(assert (= (and d!567134 (not c!302594)) b!1858644))

(declare-fun m!2282139 () Bool)

(assert (=> b!1858643 m!2282139))

(declare-fun m!2282141 () Bool)

(assert (=> b!1858644 m!2282141))

(assert (=> bm!115540 d!567134))

(declare-fun condMapEmpty!8853 () Bool)

(declare-fun mapDefault!8853 () V!3878)

(assert (=> mapNonEmpty!8850 (= condMapEmpty!8853 (= mapRest!8850 ((as const (Array (_ BitVec 32) V!3878)) mapDefault!8853)))))

(declare-fun mapRes!8853 () Bool)

(assert (=> mapNonEmpty!8850 (= tp!529852 (and tp_is_empty!8575 mapRes!8853))))

(declare-fun mapIsEmpty!8853 () Bool)

(assert (=> mapIsEmpty!8853 mapRes!8853))

(declare-fun mapNonEmpty!8853 () Bool)

(declare-fun tp!529856 () Bool)

(assert (=> mapNonEmpty!8853 (= mapRes!8853 (and tp!529856 tp_is_empty!8575))))

(declare-fun mapRest!8853 () (Array (_ BitVec 32) V!3878))

(declare-fun mapValue!8853 () V!3878)

(declare-fun mapKey!8853 () (_ BitVec 32))

(assert (=> mapNonEmpty!8853 (= mapRest!8850 (store mapRest!8853 mapKey!8853 mapValue!8853))))

(assert (= (and mapNonEmpty!8850 condMapEmpty!8853) mapIsEmpty!8853))

(assert (= (and mapNonEmpty!8850 (not condMapEmpty!8853)) mapNonEmpty!8853))

(declare-fun m!2282143 () Bool)

(assert (=> mapNonEmpty!8853 m!2282143))

(check-sat (not b!1858629) (not b_next!52673) (not b!1858644) (not b!1858622) (not b!1858628) (not b!1858627) (not b!1858643) (not mapNonEmpty!8853) (not bm!115547) b_and!144227 (not b!1858642) tp_is_empty!8575 (not bm!115546) (not d!567130) (not b!1858621) (not b!1858630) (not d!567132) (not b!1858640))
(check-sat b_and!144227 (not b_next!52673))
(get-model)

(declare-fun d!567136 () Bool)

(declare-fun e!1186904 () Bool)

(assert (=> d!567136 e!1186904))

(declare-fun res!832568 () Bool)

(assert (=> d!567136 (=> res!832568 e!1186904)))

(declare-fun lt!717237 () Bool)

(assert (=> d!567136 (= res!832568 (not lt!717237))))

(declare-fun lt!717235 () Bool)

(assert (=> d!567136 (= lt!717237 lt!717235)))

(declare-datatypes ((Unit!35211 0))(
  ( (Unit!35212) )
))
(declare-fun lt!717236 () Unit!35211)

(declare-fun e!1186905 () Unit!35211)

(assert (=> d!567136 (= lt!717236 e!1186905)))

(declare-fun c!302597 () Bool)

(assert (=> d!567136 (= c!302597 lt!717235)))

(declare-fun containsKey!38 (List!20688 (_ BitVec 64)) Bool)

(assert (=> d!567136 (= lt!717235 (containsKey!38 (toList!991 lt!717226) key!7122))))

(assert (=> d!567136 (= (contains!3801 lt!717226 key!7122) lt!717237)))

(declare-fun b!1858653 () Bool)

(declare-fun lt!717238 () Unit!35211)

(assert (=> b!1858653 (= e!1186905 lt!717238)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!19 (List!20688 (_ BitVec 64)) Unit!35211)

(assert (=> b!1858653 (= lt!717238 (lemmaContainsKeyImpliesGetValueByKeyDefined!19 (toList!991 lt!717226) key!7122))))

(declare-datatypes ((Option!4235 0))(
  ( (None!4234) (Some!4234 (v!26049 V!3878)) )
))
(declare-fun isDefined!3535 (Option!4235) Bool)

(declare-fun getValueByKey!29 (List!20688 (_ BitVec 64)) Option!4235)

(assert (=> b!1858653 (isDefined!3535 (getValueByKey!29 (toList!991 lt!717226) key!7122))))

(declare-fun b!1858654 () Bool)

(declare-fun Unit!35213 () Unit!35211)

(assert (=> b!1858654 (= e!1186905 Unit!35213)))

(declare-fun b!1858655 () Bool)

(assert (=> b!1858655 (= e!1186904 (isDefined!3535 (getValueByKey!29 (toList!991 lt!717226) key!7122)))))

(assert (= (and d!567136 c!302597) b!1858653))

(assert (= (and d!567136 (not c!302597)) b!1858654))

(assert (= (and d!567136 (not res!832568)) b!1858655))

(declare-fun m!2282145 () Bool)

(assert (=> d!567136 m!2282145))

(declare-fun m!2282147 () Bool)

(assert (=> b!1858653 m!2282147))

(declare-fun m!2282149 () Bool)

(assert (=> b!1858653 m!2282149))

(assert (=> b!1858653 m!2282149))

(declare-fun m!2282151 () Bool)

(assert (=> b!1858653 m!2282151))

(assert (=> b!1858655 m!2282149))

(assert (=> b!1858655 m!2282149))

(assert (=> b!1858655 m!2282151))

(assert (=> d!567132 d!567136))

(declare-fun b!1858666 () Bool)

(declare-fun e!1186912 () List!20688)

(assert (=> b!1858666 (= e!1186912 Nil!20608)))

(declare-fun b!1858668 () Bool)

(declare-fun e!1186913 () List!20688)

(assert (=> b!1858668 (= e!1186913 e!1186912)))

(declare-fun c!302603 () Bool)

(assert (=> b!1858668 (= c!302603 (and ((_ is Cons!20608) (toList!991 call!115545)) (not (= (_1!11357 (h!26009 (toList!991 call!115545))) key!7122))))))

(declare-fun b!1858669 () Bool)

(declare-fun e!1186914 () Bool)

(declare-fun lt!717241 () List!20688)

(assert (=> b!1858669 (= e!1186914 (not (containsKey!38 lt!717241 key!7122)))))

(declare-fun b!1858670 () Bool)

(assert (=> b!1858670 (= e!1186913 (t!172553 (toList!991 call!115545)))))

(declare-fun b!1858667 () Bool)

(declare-fun $colon$colon!487 (List!20688 tuple2!19860) List!20688)

(assert (=> b!1858667 (= e!1186912 ($colon$colon!487 (removeStrictlySorted!1 (t!172553 (toList!991 call!115545)) key!7122) (h!26009 (toList!991 call!115545))))))

(declare-fun d!567138 () Bool)

(assert (=> d!567138 e!1186914))

(declare-fun res!832571 () Bool)

(assert (=> d!567138 (=> (not res!832571) (not e!1186914))))

(declare-fun isStrictlySorted!3 (List!20688) Bool)

(assert (=> d!567138 (= res!832571 (isStrictlySorted!3 lt!717241))))

(assert (=> d!567138 (= lt!717241 e!1186913)))

(declare-fun c!302602 () Bool)

(assert (=> d!567138 (= c!302602 (and ((_ is Cons!20608) (toList!991 call!115545)) (= (_1!11357 (h!26009 (toList!991 call!115545))) key!7122)))))

(assert (=> d!567138 (isStrictlySorted!3 (toList!991 call!115545))))

(assert (=> d!567138 (= (removeStrictlySorted!1 (toList!991 call!115545) key!7122) lt!717241)))

(assert (= (and d!567138 c!302602) b!1858670))

(assert (= (and d!567138 (not c!302602)) b!1858668))

(assert (= (and b!1858668 c!302603) b!1858667))

(assert (= (and b!1858668 (not c!302603)) b!1858666))

(assert (= (and d!567138 res!832571) b!1858669))

(declare-fun m!2282153 () Bool)

(assert (=> b!1858669 m!2282153))

(declare-fun m!2282155 () Bool)

(assert (=> b!1858667 m!2282155))

(assert (=> b!1858667 m!2282155))

(declare-fun m!2282157 () Bool)

(assert (=> b!1858667 m!2282157))

(declare-fun m!2282159 () Bool)

(assert (=> d!567138 m!2282159))

(declare-fun m!2282161 () Bool)

(assert (=> d!567138 m!2282161))

(assert (=> d!567132 d!567138))

(declare-fun d!567140 () Bool)

(declare-fun valid!1529 (LongMapFixedSize!3808) Bool)

(assert (=> d!567140 (= (valid!1527 thiss!47603) (valid!1529 (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun bs!410740 () Bool)

(assert (= bs!410740 d!567140))

(declare-fun m!2282163 () Bool)

(assert (=> bs!410740 m!2282163))

(assert (=> b!1858627 d!567140))

(declare-fun d!567142 () Bool)

(declare-fun map!4356 (LongMapFixedSize!3808) ListLongMap!211)

(assert (=> d!567142 (= (map!4355 (_2!11356 lt!717223)) (map!4356 (v!26048 (underlying!4022 (_2!11356 lt!717223)))))))

(declare-fun bs!410741 () Bool)

(assert (= bs!410741 d!567142))

(declare-fun m!2282165 () Bool)

(assert (=> bs!410741 m!2282165))

(assert (=> bm!115546 d!567142))

(declare-fun d!567144 () Bool)

(declare-fun choose!11684 (MutLongMap!1904) ListLongMap!211)

(assert (=> d!567144 (= (abstractMap!62 (_2!11356 lt!717217)) (choose!11684 (_2!11356 lt!717217)))))

(declare-fun bs!410742 () Bool)

(assert (= bs!410742 d!567144))

(declare-fun m!2282167 () Bool)

(assert (=> bs!410742 m!2282167))

(assert (=> b!1858644 d!567144))

(declare-fun d!567146 () Bool)

(declare-fun choose!11685 (MutLongMap!1904) Bool)

(assert (=> d!567146 (= (valid!1528 (_2!11356 lt!717217)) (choose!11685 (_2!11356 lt!717217)))))

(declare-fun bs!410743 () Bool)

(assert (= bs!410743 d!567146))

(declare-fun m!2282169 () Bool)

(assert (=> bs!410743 m!2282169))

(assert (=> b!1858630 d!567146))

(declare-fun d!567148 () Bool)

(assert (=> d!567148 (= (valid!1528 thiss!47603) (choose!11685 thiss!47603))))

(declare-fun bs!410744 () Bool)

(assert (= bs!410744 d!567148))

(declare-fun m!2282171 () Bool)

(assert (=> bs!410744 m!2282171))

(assert (=> b!1858628 d!567148))

(declare-fun d!567150 () Bool)

(assert (=> d!567150 (= (abstractMap!61 thiss!47603) (map!4355 thiss!47603))))

(declare-fun bs!410745 () Bool)

(assert (= bs!410745 d!567150))

(assert (=> bs!410745 m!2282125))

(assert (=> b!1858621 d!567150))

(declare-fun d!567152 () Bool)

(assert (=> d!567152 (= (map!4355 thiss!47603) (map!4356 (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun bs!410746 () Bool)

(assert (= bs!410746 d!567152))

(declare-fun m!2282173 () Bool)

(assert (=> bs!410746 m!2282173))

(assert (=> bm!115547 d!567152))

(declare-fun d!567154 () Bool)

(assert (=> d!567154 (= (abstractMap!62 thiss!47603) (choose!11684 thiss!47603))))

(declare-fun bs!410747 () Bool)

(assert (= bs!410747 d!567154))

(declare-fun m!2282175 () Bool)

(assert (=> bs!410747 m!2282175))

(assert (=> b!1858622 d!567154))

(declare-fun d!567156 () Bool)

(declare-fun lt!717242 () ListLongMap!211)

(assert (=> d!567156 (not (contains!3801 lt!717242 key!7122))))

(assert (=> d!567156 (= lt!717242 (ListLongMap!212 (removeStrictlySorted!1 (toList!991 call!115552) key!7122)))))

(assert (=> d!567156 (= (-!100 call!115552 key!7122) lt!717242)))

(declare-fun bs!410748 () Bool)

(assert (= bs!410748 d!567156))

(declare-fun m!2282177 () Bool)

(assert (=> bs!410748 m!2282177))

(declare-fun m!2282179 () Bool)

(assert (=> bs!410748 m!2282179))

(assert (=> b!1858642 d!567156))

(declare-fun d!567158 () Bool)

(assert (=> d!567158 (= (valid!1527 (_2!11356 lt!717223)) (valid!1529 (v!26048 (underlying!4022 (_2!11356 lt!717223)))))))

(declare-fun bs!410749 () Bool)

(assert (= bs!410749 d!567158))

(declare-fun m!2282181 () Bool)

(assert (=> bs!410749 m!2282181))

(assert (=> b!1858640 d!567158))

(declare-fun d!567160 () Bool)

(assert (=> d!567160 (= (valid!1527 (_2!11356 lt!717217)) (valid!1529 (v!26048 (underlying!4022 (_2!11356 lt!717217)))))))

(declare-fun bs!410750 () Bool)

(assert (= bs!410750 d!567160))

(declare-fun m!2282183 () Bool)

(assert (=> bs!410750 m!2282183))

(assert (=> b!1858629 d!567160))

(declare-fun d!567162 () Bool)

(assert (=> d!567162 (= (abstractMap!61 (_2!11356 lt!717217)) (map!4355 (_2!11356 lt!717217)))))

(declare-fun bs!410751 () Bool)

(assert (= bs!410751 d!567162))

(declare-fun m!2282185 () Bool)

(assert (=> bs!410751 m!2282185))

(assert (=> b!1858643 d!567162))

(declare-fun c!302624 () Bool)

(declare-fun e!1186944 () ListLongMap!211)

(declare-fun call!115576 () ListLongMap!211)

(declare-fun b!1858709 () Bool)

(declare-fun call!115573 () ListLongMap!211)

(assert (=> b!1858709 (= e!1186944 (ite c!302624 call!115573 call!115576))))

(declare-fun b!1858710 () Bool)

(declare-datatypes ((tuple2!19864 0))(
  ( (tuple2!19865 (_1!11359 Unit!35211) (_2!11359 LongMapFixedSize!3808)) )
))
(declare-fun e!1186939 () tuple2!19864)

(declare-datatypes ((SeekEntryResult!8 0))(
  ( (Found!8 (index!1073 (_ BitVec 32))) (Undefined!8) (MissingZero!8 (index!1074 (_ BitVec 32))) (MissingVacant!8 (index!1075 (_ BitVec 32))) (Intermediate!8 (undefined!89 Bool) (index!1076 (_ BitVec 32)) (x!372422 (_ BitVec 32))) )
))
(declare-fun lt!717312 () SeekEntryResult!8)

(declare-fun Unit!35214 () Unit!35211)

(declare-fun dynLambda!10201 (Int (_ BitVec 64)) V!3878)

(assert (=> b!1858710 (= e!1186939 (tuple2!19865 Unit!35214 (LongMapFixedSize!3809 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (bvsub (_size!3882 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000001) (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) (array!6544 (store (arr!2907 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16292 (_values!2184 (v!26048 (underlying!4022 thiss!47603))))) (_vacant!1965 (v!26048 (underlying!4022 thiss!47603))))))))

(declare-fun b!1858711 () Bool)

(declare-fun lt!717326 () Unit!35211)

(declare-fun lt!717318 () Unit!35211)

(assert (=> b!1858711 (= lt!717326 lt!717318)))

(declare-fun call!115574 () ListLongMap!211)

(assert (=> b!1858711 (= call!115574 call!115573)))

(declare-fun lt!717308 () (_ BitVec 32))

(declare-fun lt!717314 () V!3878)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!1 (array!6541 array!6543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3878 V!3878 V!3878 Int) Unit!35211)

(assert (=> b!1858711 (= lt!717318 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!1 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) lt!717308 (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) lt!717314 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))))))

(assert (=> b!1858711 (= lt!717314 (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1858711 (= lt!717308 (bvand (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000001))))

(declare-fun e!1186937 () tuple2!19862)

(assert (=> b!1858711 (= e!1186937 (tuple2!19863 true (LongMapFixedSize!3809 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (bvand (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000001) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b1000000000000000000000000000000000000000000000000000000000000000) (_size!3882 (v!26048 (underlying!4022 thiss!47603))) (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (_vacant!1965 (v!26048 (underlying!4022 thiss!47603))))))))

(declare-fun b!1858712 () Bool)

(declare-fun e!1186943 () Unit!35211)

(declare-fun Unit!35215 () Unit!35211)

(assert (=> b!1858712 (= e!1186943 Unit!35215)))

(declare-fun lt!717323 () Unit!35211)

(declare-fun lt!717322 () tuple2!19864)

(declare-fun lemmaKeyInListMapIsInArray!8 (array!6541 array!6543 (_ BitVec 32) (_ BitVec 32) V!3878 V!3878 (_ BitVec 64) Int) Unit!35211)

(assert (=> b!1858712 (= lt!717323 (lemmaKeyInListMapIsInArray!8 (_keys!2201 (_2!11359 lt!717322)) (_values!2184 (_2!11359 lt!717322)) (mask!5620 (_2!11359 lt!717322)) (extraKeys!2152 (_2!11359 lt!717322)) (zeroValue!2162 (_2!11359 lt!717322)) (minValue!2162 (_2!11359 lt!717322)) key!7122 (defaultEntry!2269 (_2!11359 lt!717322))))))

(declare-fun c!302622 () Bool)

(assert (=> b!1858712 (= c!302622 (and (not (= key!7122 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!7122 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!1186941 () Bool)

(assert (=> b!1858712 e!1186941))

(declare-fun lt!717301 () Unit!35211)

(assert (=> b!1858712 (= lt!717301 lt!717323)))

(assert (=> b!1858712 false))

(declare-fun b!1858713 () Bool)

(declare-fun lt!717305 () Unit!35211)

(assert (=> b!1858713 (= lt!717305 e!1186943)))

(declare-fun c!302630 () Bool)

(declare-fun call!115572 () ListLongMap!211)

(assert (=> b!1858713 (= c!302630 (contains!3801 call!115572 key!7122))))

(assert (=> b!1858713 (= lt!717322 e!1186939)))

(declare-fun c!302626 () Bool)

(declare-fun lt!717303 () (_ BitVec 32))

(assert (=> b!1858713 (= c!302626 (bvsgt lt!717303 #b00000000000000000000000000000000))))

(assert (=> b!1858713 (= lt!717303 (bvadd (_vacant!1965 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000001))))

(declare-fun lt!717325 () Unit!35211)

(declare-fun lt!717304 () Unit!35211)

(assert (=> b!1858713 (= lt!717325 lt!717304)))

(declare-fun call!115575 () ListLongMap!211)

(declare-fun call!115570 () ListLongMap!211)

(assert (=> b!1858713 (= call!115575 call!115570)))

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!1 (array!6541 array!6543 (_ BitVec 32) (_ BitVec 32) V!3878 V!3878 (_ BitVec 32) (_ BitVec 64) Int) Unit!35211)

(assert (=> b!1858713 (= lt!717304 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!1 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (index!1073 lt!717312) key!7122 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))))))

(declare-fun lt!717309 () Unit!35211)

(declare-fun lt!717315 () Unit!35211)

(assert (=> b!1858713 (= lt!717309 lt!717315)))

(declare-fun arrayContainsKey!0 (array!6541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1858713 (not (arrayContainsKey!0 (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) key!7122 #b00000000000000000000000000000000))))

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!6541 (_ BitVec 32) (_ BitVec 64)) Unit!35211)

(assert (=> b!1858713 (= lt!717315 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (index!1073 lt!717312) key!7122))))

(declare-fun lt!717311 () Unit!35211)

(declare-fun lt!717302 () Unit!35211)

(assert (=> b!1858713 (= lt!717311 lt!717302)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6541 (_ BitVec 32)) Bool)

(assert (=> b!1858713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!6541 (_ BitVec 32) (_ BitVec 32)) Unit!35211)

(assert (=> b!1858713 (= lt!717302 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (index!1073 lt!717312) (mask!5620 (v!26048 (underlying!4022 thiss!47603)))))))

(declare-fun lt!717306 () Unit!35211)

(declare-fun lt!717317 () Unit!35211)

(assert (=> b!1858713 (= lt!717306 lt!717317)))

(declare-fun lt!717316 () (_ BitVec 64))

(declare-fun lt!717313 () (_ BitVec 32))

(declare-datatypes ((List!20689 0))(
  ( (Nil!20609) (Cons!20609 (h!26010 (_ BitVec 64)) (t!172558 List!20689)) )
))
(declare-fun lt!717327 () List!20689)

(declare-fun arrayNoDuplicates!0 (array!6541 (_ BitVec 32) List!20689) Bool)

(assert (=> b!1858713 (arrayNoDuplicates!0 (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) lt!717316) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) lt!717313 lt!717327)))

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!6541 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!20689) Unit!35211)

(assert (=> b!1858713 (= lt!717317 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) lt!717316 (index!1073 lt!717312) lt!717313 lt!717327))))

(assert (=> b!1858713 (= lt!717327 Nil!20609)))

(assert (=> b!1858713 (= lt!717313 #b00000000000000000000000000000000)))

(assert (=> b!1858713 (= lt!717316 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!717307 () Unit!35211)

(declare-fun lt!717321 () Unit!35211)

(assert (=> b!1858713 (= lt!717307 lt!717321)))

(declare-fun lt!717310 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!6541 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1858713 (= (arrayCountValidKeys!0 (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) lt!717310) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) #b00000000000000000000000000000000 (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) (bvsub (arrayCountValidKeys!0 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000000 (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) #b00000000000000000000000000000001))))

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!6541 (_ BitVec 32) (_ BitVec 64)) Unit!35211)

(assert (=> b!1858713 (= lt!717321 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (index!1073 lt!717312) lt!717310))))

(assert (=> b!1858713 (= lt!717310 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!1186938 () tuple2!19862)

(assert (=> b!1858713 (= e!1186938 (tuple2!19863 true (_2!11359 lt!717322)))))

(declare-fun b!1858714 () Bool)

(declare-fun e!1186936 () tuple2!19862)

(assert (=> b!1858714 (= e!1186936 e!1186938)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!6541 (_ BitVec 32)) SeekEntryResult!8)

(assert (=> b!1858714 (= lt!717312 (seekEntry!0 key!7122 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603)))))))

(declare-fun c!302628 () Bool)

(assert (=> b!1858714 (= c!302628 ((_ is Found!8) lt!717312))))

(declare-fun b!1858715 () Bool)

(declare-fun e!1186935 () Bool)

(declare-fun call!115569 () ListLongMap!211)

(declare-fun call!115571 () ListLongMap!211)

(assert (=> b!1858715 (= e!1186935 (= call!115569 call!115571))))

(declare-fun bm!115565 () Bool)

(declare-fun c!302625 () Bool)

(declare-fun e!1186942 () array!6543)

(declare-fun getCurrentListMap!9 (array!6541 array!6543 (_ BitVec 32) (_ BitVec 32) V!3878 V!3878 (_ BitVec 32) Int) ListLongMap!211)

(assert (=> bm!115565 (= call!115570 (getCurrentListMap!9 (ite c!302625 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))))) e!1186942 (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (ite c!302625 (ite c!302624 (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) lt!717308) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603)))) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (ite c!302625 (ite c!302624 (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) lt!717314) (minValue!2162 (v!26048 (underlying!4022 thiss!47603)))) #b00000000000000000000000000000000 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))))))

(declare-fun c!302629 () Bool)

(assert (=> bm!115565 (= c!302629 c!302625)))

(declare-fun bm!115566 () Bool)

(declare-fun lt!717319 () tuple2!19862)

(assert (=> bm!115566 (= call!115569 (map!4356 (_2!11358 lt!717319)))))

(declare-fun b!1858716 () Bool)

(declare-fun lt!717329 () Unit!35211)

(declare-fun lt!717320 () Unit!35211)

(assert (=> b!1858716 (= lt!717329 lt!717320)))

(assert (=> b!1858716 (= call!115574 call!115576)))

(declare-fun lt!717328 () (_ BitVec 32))

(declare-fun lt!717324 () V!3878)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!1 (array!6541 array!6543 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3878 V!3878 V!3878 Int) Unit!35211)

(assert (=> b!1858716 (= lt!717320 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!1 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) lt!717328 (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) lt!717324 (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))))))

(assert (=> b!1858716 (= lt!717324 (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1858716 (= lt!717328 (bvand (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000010))))

(assert (=> b!1858716 (= e!1186937 (tuple2!19863 true (LongMapFixedSize!3809 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (bvand (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000010) (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b0000000000000000000000000000000000000000000000000000000000000000) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (_size!3882 (v!26048 (underlying!4022 thiss!47603))) (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (_vacant!1965 (v!26048 (underlying!4022 thiss!47603))))))))

(declare-fun bm!115567 () Bool)

(assert (=> bm!115567 (= call!115572 (getCurrentListMap!9 (ite c!302625 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_keys!2201 (_2!11359 lt!717322))) (ite c!302625 (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (_2!11359 lt!717322))) (ite c!302625 (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (_2!11359 lt!717322))) (ite c!302625 (ite c!302624 lt!717328 (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603)))) (extraKeys!2152 (_2!11359 lt!717322))) (ite c!302625 (ite c!302624 lt!717324 (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603)))) (zeroValue!2162 (_2!11359 lt!717322))) (ite c!302625 (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (_2!11359 lt!717322))) #b00000000000000000000000000000000 (ite c!302625 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (defaultEntry!2269 (_2!11359 lt!717322)))))))

(declare-fun bm!115568 () Bool)

(assert (=> bm!115568 (= call!115575 (-!100 e!1186944 (ite c!302625 (ite c!302624 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) key!7122)))))

(declare-fun c!302623 () Bool)

(assert (=> bm!115568 (= c!302623 c!302625)))

(declare-fun bm!115564 () Bool)

(assert (=> bm!115564 (= call!115573 call!115570)))

(declare-fun d!567164 () Bool)

(declare-fun e!1186940 () Bool)

(assert (=> d!567164 e!1186940))

(declare-fun res!832574 () Bool)

(assert (=> d!567164 (=> (not res!832574) (not e!1186940))))

(assert (=> d!567164 (= res!832574 (valid!1529 (_2!11358 lt!717319)))))

(assert (=> d!567164 (= lt!717319 e!1186936)))

(assert (=> d!567164 (= c!302625 (= key!7122 (bvneg key!7122)))))

(assert (=> d!567164 (valid!1529 (v!26048 (underlying!4022 thiss!47603)))))

(assert (=> d!567164 (= (remove!55 (v!26048 (underlying!4022 thiss!47603)) key!7122) lt!717319)))

(declare-fun b!1858717 () Bool)

(assert (=> b!1858717 (= e!1186941 (arrayContainsKey!0 (_keys!2201 (_2!11359 lt!717322)) key!7122 #b00000000000000000000000000000000))))

(declare-fun b!1858718 () Bool)

(assert (=> b!1858718 (= e!1186942 (_values!2184 (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun b!1858719 () Bool)

(declare-fun Unit!35216 () Unit!35211)

(assert (=> b!1858719 (= e!1186939 (tuple2!19865 Unit!35216 (LongMapFixedSize!3809 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) (bvsub (_size!3882 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000001) (array!6542 (store (arr!2906 (_keys!2201 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) #b1000000000000000000000000000000000000000000000000000000000000000) (size!16291 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))))) (array!6544 (store (arr!2907 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16292 (_values!2184 (v!26048 (underlying!4022 thiss!47603))))) lt!717303)))))

(declare-fun b!1858720 () Bool)

(assert (=> b!1858720 (= e!1186936 e!1186937)))

(assert (=> b!1858720 (= c!302624 (= key!7122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1858721 () Bool)

(assert (=> b!1858721 (= e!1186944 (getCurrentListMap!9 (_keys!2201 (v!26048 (underlying!4022 thiss!47603))) (_values!2184 (v!26048 (underlying!4022 thiss!47603))) (mask!5620 (v!26048 (underlying!4022 thiss!47603))) (extraKeys!2152 (v!26048 (underlying!4022 thiss!47603))) (zeroValue!2162 (v!26048 (underlying!4022 thiss!47603))) (minValue!2162 (v!26048 (underlying!4022 thiss!47603))) #b00000000000000000000000000000000 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))))))

(declare-fun b!1858722 () Bool)

(assert (=> b!1858722 (= e!1186938 (tuple2!19863 false (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun b!1858723 () Bool)

(assert (=> b!1858723 (= e!1186935 (= call!115569 (-!100 call!115571 key!7122)))))

(declare-fun b!1858724 () Bool)

(assert (=> b!1858724 (= e!1186941 (ite (= key!7122 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2152 (_2!11359 lt!717322)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2152 (_2!11359 lt!717322)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!115569 () Bool)

(assert (=> bm!115569 (= call!115571 (map!4356 (v!26048 (underlying!4022 thiss!47603))))))

(declare-fun bm!115570 () Bool)

(assert (=> bm!115570 (= call!115574 call!115575)))

(declare-fun b!1858725 () Bool)

(assert (=> b!1858725 (= e!1186940 e!1186935)))

(declare-fun c!302627 () Bool)

(assert (=> b!1858725 (= c!302627 (_1!11358 lt!717319))))

(declare-fun b!1858726 () Bool)

(declare-fun Unit!35217 () Unit!35211)

(assert (=> b!1858726 (= e!1186943 Unit!35217)))

(declare-fun b!1858727 () Bool)

(assert (=> b!1858727 (= e!1186942 (array!6544 (store (arr!2907 (_values!2184 (v!26048 (underlying!4022 thiss!47603)))) (index!1073 lt!717312) (dynLambda!10201 (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) #b0000000000000000000000000000000000000000000000000000000000000000)) (size!16292 (_values!2184 (v!26048 (underlying!4022 thiss!47603))))))))

(declare-fun bm!115571 () Bool)

(assert (=> bm!115571 (= call!115576 call!115572)))

(assert (= (and d!567164 c!302625) b!1858720))

(assert (= (and d!567164 (not c!302625)) b!1858714))

(assert (= (and b!1858720 c!302624) b!1858716))

(assert (= (and b!1858720 (not c!302624)) b!1858711))

(assert (= (or b!1858716 b!1858711) bm!115571))

(assert (= (or b!1858716 b!1858711) bm!115564))

(assert (= (or b!1858716 b!1858711) bm!115570))

(assert (= (and b!1858714 c!302628) b!1858713))

(assert (= (and b!1858714 (not c!302628)) b!1858722))

(assert (= (and b!1858713 c!302626) b!1858719))

(assert (= (and b!1858713 (not c!302626)) b!1858710))

(assert (= (and b!1858713 c!302630) b!1858712))

(assert (= (and b!1858713 (not c!302630)) b!1858726))

(assert (= (and b!1858712 c!302622) b!1858717))

(assert (= (and b!1858712 (not c!302622)) b!1858724))

(assert (= (or bm!115564 b!1858713) bm!115565))

(assert (= (and bm!115565 c!302629) b!1858718))

(assert (= (and bm!115565 (not c!302629)) b!1858727))

(assert (= (or bm!115571 b!1858713) bm!115567))

(assert (= (or bm!115570 b!1858713) bm!115568))

(assert (= (and bm!115568 c!302623) b!1858709))

(assert (= (and bm!115568 (not c!302623)) b!1858721))

(assert (= (and d!567164 res!832574) b!1858725))

(assert (= (and b!1858725 c!302627) b!1858723))

(assert (= (and b!1858725 (not c!302627)) b!1858715))

(assert (= (or b!1858723 b!1858715) bm!115569))

(assert (= (or b!1858723 b!1858715) bm!115566))

(declare-fun b_lambda!61545 () Bool)

(assert (=> (not b_lambda!61545) (not b!1858710)))

(declare-fun t!172555 () Bool)

(declare-fun tb!112929 () Bool)

(assert (=> (and b!1858614 (= (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))) t!172555) tb!112929))

(declare-fun result!136252 () Bool)

(assert (=> tb!112929 (= result!136252 tp_is_empty!8575)))

(assert (=> b!1858710 t!172555))

(declare-fun b_and!144229 () Bool)

(assert (= b_and!144227 (and (=> t!172555 result!136252) b_and!144229)))

(declare-fun b_lambda!61547 () Bool)

(assert (=> (not b_lambda!61547) (not b!1858711)))

(declare-fun t!172557 () Bool)

(declare-fun tb!112931 () Bool)

(assert (=> (and b!1858614 (= (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603))) (defaultEntry!2269 (v!26048 (underlying!4022 thiss!47603)))) t!172557) tb!112931))

(declare-fun result!136256 () Bool)

(assert (=> tb!112931 (= result!136256 tp_is_empty!8575)))

(assert (=> b!1858711 t!172557))

(declare-fun b_and!144231 () Bool)

(assert (= b_and!144229 (and (=> t!172557 result!136256) b_and!144231)))

(declare-fun b_lambda!61549 () Bool)

(assert (=> (not b_lambda!61549) (not b!1858716)))

(assert (=> b!1858716 t!172555))

(declare-fun b_and!144233 () Bool)

(assert (= b_and!144231 (and (=> t!172555 result!136252) b_and!144233)))

(declare-fun b_lambda!61551 () Bool)

(assert (=> (not b_lambda!61551) (not b!1858727)))

(assert (=> b!1858727 t!172555))

(declare-fun b_and!144235 () Bool)

(assert (= b_and!144233 (and (=> t!172555 result!136252) b_and!144235)))

(declare-fun b_lambda!61553 () Bool)

(assert (=> (not b_lambda!61553) (not b!1858719)))

(assert (=> b!1858719 t!172555))

(declare-fun b_and!144237 () Bool)

(assert (= b_and!144235 (and (=> t!172555 result!136252) b_and!144237)))

(declare-fun m!2282187 () Bool)

(assert (=> b!1858717 m!2282187))

(declare-fun m!2282189 () Bool)

(assert (=> d!567164 m!2282189))

(assert (=> d!567164 m!2282163))

(declare-fun m!2282191 () Bool)

(assert (=> b!1858712 m!2282191))

(declare-fun m!2282193 () Bool)

(assert (=> bm!115568 m!2282193))

(declare-fun m!2282195 () Bool)

(assert (=> b!1858727 m!2282195))

(declare-fun m!2282197 () Bool)

(assert (=> b!1858727 m!2282197))

(declare-fun m!2282199 () Bool)

(assert (=> b!1858714 m!2282199))

(declare-fun m!2282201 () Bool)

(assert (=> b!1858723 m!2282201))

(declare-fun m!2282203 () Bool)

(assert (=> bm!115566 m!2282203))

(declare-fun m!2282205 () Bool)

(assert (=> b!1858716 m!2282205))

(assert (=> b!1858716 m!2282195))

(declare-fun m!2282207 () Bool)

(assert (=> b!1858710 m!2282207))

(assert (=> b!1858710 m!2282195))

(assert (=> b!1858710 m!2282197))

(declare-fun m!2282209 () Bool)

(assert (=> b!1858711 m!2282209))

(declare-fun m!2282211 () Bool)

(assert (=> b!1858711 m!2282211))

(assert (=> b!1858719 m!2282207))

(assert (=> b!1858719 m!2282195))

(assert (=> b!1858719 m!2282197))

(assert (=> bm!115565 m!2282207))

(declare-fun m!2282213 () Bool)

(assert (=> bm!115565 m!2282213))

(declare-fun m!2282215 () Bool)

(assert (=> b!1858713 m!2282215))

(declare-fun m!2282217 () Bool)

(assert (=> b!1858713 m!2282217))

(declare-fun m!2282219 () Bool)

(assert (=> b!1858713 m!2282219))

(declare-fun m!2282221 () Bool)

(assert (=> b!1858713 m!2282221))

(declare-fun m!2282223 () Bool)

(assert (=> b!1858713 m!2282223))

(declare-fun m!2282225 () Bool)

(assert (=> b!1858713 m!2282225))

(assert (=> b!1858713 m!2282207))

(declare-fun m!2282227 () Bool)

(assert (=> b!1858713 m!2282227))

(declare-fun m!2282229 () Bool)

(assert (=> b!1858713 m!2282229))

(declare-fun m!2282231 () Bool)

(assert (=> b!1858713 m!2282231))

(declare-fun m!2282233 () Bool)

(assert (=> b!1858713 m!2282233))

(declare-fun m!2282235 () Bool)

(assert (=> b!1858713 m!2282235))

(declare-fun m!2282237 () Bool)

(assert (=> b!1858713 m!2282237))

(declare-fun m!2282239 () Bool)

(assert (=> b!1858713 m!2282239))

(declare-fun m!2282241 () Bool)

(assert (=> bm!115567 m!2282241))

(declare-fun m!2282243 () Bool)

(assert (=> b!1858721 m!2282243))

(assert (=> bm!115569 m!2282173))

(assert (=> d!567130 d!567164))

(assert (=> d!567130 d!567140))

(declare-fun condMapEmpty!8854 () Bool)

(declare-fun mapDefault!8854 () V!3878)

(assert (=> mapNonEmpty!8853 (= condMapEmpty!8854 (= mapRest!8853 ((as const (Array (_ BitVec 32) V!3878)) mapDefault!8854)))))

(declare-fun mapRes!8854 () Bool)

(assert (=> mapNonEmpty!8853 (= tp!529856 (and tp_is_empty!8575 mapRes!8854))))

(declare-fun mapIsEmpty!8854 () Bool)

(assert (=> mapIsEmpty!8854 mapRes!8854))

(declare-fun mapNonEmpty!8854 () Bool)

(declare-fun tp!529857 () Bool)

(assert (=> mapNonEmpty!8854 (= mapRes!8854 (and tp!529857 tp_is_empty!8575))))

(declare-fun mapKey!8854 () (_ BitVec 32))

(declare-fun mapValue!8854 () V!3878)

(declare-fun mapRest!8854 () (Array (_ BitVec 32) V!3878))

(assert (=> mapNonEmpty!8854 (= mapRest!8853 (store mapRest!8854 mapKey!8854 mapValue!8854))))

(assert (= (and mapNonEmpty!8853 condMapEmpty!8854) mapIsEmpty!8854))

(assert (= (and mapNonEmpty!8853 (not condMapEmpty!8854)) mapNonEmpty!8854))

(declare-fun m!2282245 () Bool)

(assert (=> mapNonEmpty!8854 m!2282245))

(declare-fun b_lambda!61555 () Bool)

(assert (= b_lambda!61551 (or (and b!1858614 b_free!51969) b_lambda!61555)))

(declare-fun b_lambda!61557 () Bool)

(assert (= b_lambda!61553 (or (and b!1858614 b_free!51969) b_lambda!61557)))

(declare-fun b_lambda!61559 () Bool)

(assert (= b_lambda!61545 (or (and b!1858614 b_free!51969) b_lambda!61559)))

(declare-fun b_lambda!61561 () Bool)

(assert (= b_lambda!61549 (or (and b!1858614 b_free!51969) b_lambda!61561)))

(declare-fun b_lambda!61563 () Bool)

(assert (= b_lambda!61547 (or (and b!1858614 b_free!51969) b_lambda!61563)))

(check-sat tp_is_empty!8575 (not d!567136) (not b!1858717) (not b!1858653) (not d!567142) (not b!1858712) (not b!1858716) (not bm!115568) (not bm!115565) (not d!567160) (not b!1858667) (not b!1858669) (not bm!115566) (not b!1858655) (not b_lambda!61563) (not b!1858714) (not d!567146) (not d!567144) (not b_next!52673) (not d!567154) (not b_lambda!61561) (not d!567164) (not d!567138) (not b!1858713) (not b_lambda!61559) (not b_lambda!61557) b_and!144237 (not d!567150) (not d!567158) (not b!1858723) (not b_lambda!61555) (not d!567162) (not d!567148) (not d!567152) (not b!1858721) (not mapNonEmpty!8854) (not bm!115567) (not d!567156) (not bm!115569) (not d!567140) (not b!1858711))
(check-sat b_and!144237 (not b_next!52673))
