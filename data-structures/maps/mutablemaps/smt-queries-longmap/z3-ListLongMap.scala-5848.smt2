; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75592 () Bool)

(assert start!75592)

(declare-fun b!888681 () Bool)

(declare-fun b_free!15591 () Bool)

(declare-fun b_next!15591 () Bool)

(assert (=> b!888681 (= b_free!15591 (not b_next!15591))))

(declare-fun tp!54729 () Bool)

(declare-fun b_and!25849 () Bool)

(assert (=> b!888681 (= tp!54729 b_and!25849)))

(declare-fun mapIsEmpty!28419 () Bool)

(declare-fun mapRes!28419 () Bool)

(assert (=> mapIsEmpty!28419 mapRes!28419))

(declare-fun res!602516 () Bool)

(declare-fun e!495292 () Bool)

(assert (=> start!75592 (=> (not res!602516) (not e!495292))))

(declare-datatypes ((array!51796 0))(
  ( (array!51797 (arr!24904 (Array (_ BitVec 32) (_ BitVec 64))) (size!25347 (_ BitVec 32))) )
))
(declare-datatypes ((V!28857 0))(
  ( (V!28858 (val!9010 Int)) )
))
(declare-datatypes ((ValueCell!8478 0))(
  ( (ValueCellFull!8478 (v!11480 V!28857)) (EmptyCell!8478) )
))
(declare-datatypes ((array!51798 0))(
  ( (array!51799 (arr!24905 (Array (_ BitVec 32) ValueCell!8478)) (size!25348 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3972 0))(
  ( (LongMapFixedSize!3973 (defaultEntry!5183 Int) (mask!25608 (_ BitVec 32)) (extraKeys!4877 (_ BitVec 32)) (zeroValue!4981 V!28857) (minValue!4981 V!28857) (_size!2041 (_ BitVec 32)) (_keys!9860 array!51796) (_values!5168 array!51798) (_vacant!2041 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3972)

(declare-fun valid!1536 (LongMapFixedSize!3972) Bool)

(assert (=> start!75592 (= res!602516 (valid!1536 thiss!1181))))

(assert (=> start!75592 e!495292))

(declare-fun e!495294 () Bool)

(assert (=> start!75592 e!495294))

(assert (=> start!75592 true))

(declare-fun tp_is_empty!17919 () Bool)

(declare-fun e!495295 () Bool)

(declare-fun array_inv!19566 (array!51796) Bool)

(declare-fun array_inv!19567 (array!51798) Bool)

(assert (=> b!888681 (= e!495294 (and tp!54729 tp_is_empty!17919 (array_inv!19566 (_keys!9860 thiss!1181)) (array_inv!19567 (_values!5168 thiss!1181)) e!495295))))

(declare-fun b!888682 () Bool)

(declare-fun res!602515 () Bool)

(assert (=> b!888682 (=> (not res!602515) (not e!495292))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4326 (LongMapFixedSize!3972 (_ BitVec 64)) Bool)

(assert (=> b!888682 (= res!602515 (contains!4326 thiss!1181 key!785))))

(declare-fun mapNonEmpty!28419 () Bool)

(declare-fun tp!54728 () Bool)

(declare-fun e!495293 () Bool)

(assert (=> mapNonEmpty!28419 (= mapRes!28419 (and tp!54728 e!495293))))

(declare-fun mapKey!28419 () (_ BitVec 32))

(declare-fun mapRest!28419 () (Array (_ BitVec 32) ValueCell!8478))

(declare-fun mapValue!28419 () ValueCell!8478)

(assert (=> mapNonEmpty!28419 (= (arr!24905 (_values!5168 thiss!1181)) (store mapRest!28419 mapKey!28419 mapValue!28419))))

(declare-fun b!888683 () Bool)

(assert (=> b!888683 (= e!495293 tp_is_empty!17919)))

(declare-fun b!888684 () Bool)

(declare-fun e!495290 () Bool)

(assert (=> b!888684 (= e!495295 (and e!495290 mapRes!28419))))

(declare-fun condMapEmpty!28419 () Bool)

(declare-fun mapDefault!28419 () ValueCell!8478)

(assert (=> b!888684 (= condMapEmpty!28419 (= (arr!24905 (_values!5168 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8478)) mapDefault!28419)))))

(declare-fun b!888685 () Bool)

(assert (=> b!888685 (= e!495290 tp_is_empty!17919)))

(declare-fun b!888686 () Bool)

(declare-fun res!602517 () Bool)

(assert (=> b!888686 (=> (not res!602517) (not e!495292))))

(assert (=> b!888686 (= res!602517 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (or (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888687 () Bool)

(declare-datatypes ((Option!446 0))(
  ( (Some!445 (v!11481 V!28857)) (None!444) )
))
(declare-fun isDefined!321 (Option!446) Bool)

(declare-datatypes ((tuple2!11960 0))(
  ( (tuple2!11961 (_1!5990 (_ BitVec 64)) (_2!5990 V!28857)) )
))
(declare-datatypes ((List!17775 0))(
  ( (Nil!17772) (Cons!17771 (h!18902 tuple2!11960) (t!25082 List!17775)) )
))
(declare-fun getValueByKey!440 (List!17775 (_ BitVec 64)) Option!446)

(declare-datatypes ((ListLongMap!10671 0))(
  ( (ListLongMap!10672 (toList!5351 List!17775)) )
))
(declare-fun map!12119 (LongMapFixedSize!3972) ListLongMap!10671)

(assert (=> b!888687 (= e!495292 (not (isDefined!321 (getValueByKey!440 (toList!5351 (map!12119 thiss!1181)) key!785))))))

(assert (= (and start!75592 res!602516) b!888686))

(assert (= (and b!888686 res!602517) b!888682))

(assert (= (and b!888682 res!602515) b!888687))

(assert (= (and b!888684 condMapEmpty!28419) mapIsEmpty!28419))

(assert (= (and b!888684 (not condMapEmpty!28419)) mapNonEmpty!28419))

(get-info :version)

(assert (= (and mapNonEmpty!28419 ((_ is ValueCellFull!8478) mapValue!28419)) b!888683))

(assert (= (and b!888684 ((_ is ValueCellFull!8478) mapDefault!28419)) b!888685))

(assert (= b!888681 b!888684))

(assert (= start!75592 b!888681))

(declare-fun m!827975 () Bool)

(assert (=> b!888687 m!827975))

(declare-fun m!827977 () Bool)

(assert (=> b!888687 m!827977))

(assert (=> b!888687 m!827977))

(declare-fun m!827979 () Bool)

(assert (=> b!888687 m!827979))

(declare-fun m!827981 () Bool)

(assert (=> b!888681 m!827981))

(declare-fun m!827983 () Bool)

(assert (=> b!888681 m!827983))

(declare-fun m!827985 () Bool)

(assert (=> b!888682 m!827985))

(declare-fun m!827987 () Bool)

(assert (=> mapNonEmpty!28419 m!827987))

(declare-fun m!827989 () Bool)

(assert (=> start!75592 m!827989))

(check-sat (not start!75592) tp_is_empty!17919 b_and!25849 (not b!888682) (not b!888681) (not b_next!15591) (not mapNonEmpty!28419) (not b!888687))
(check-sat b_and!25849 (not b_next!15591))
(get-model)

(declare-fun d!110025 () Bool)

(assert (=> d!110025 (= (array_inv!19566 (_keys!9860 thiss!1181)) (bvsge (size!25347 (_keys!9860 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888681 d!110025))

(declare-fun d!110027 () Bool)

(assert (=> d!110027 (= (array_inv!19567 (_values!5168 thiss!1181)) (bvsge (size!25348 (_values!5168 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!888681 d!110027))

(declare-fun b!888729 () Bool)

(declare-fun e!495324 () Bool)

(assert (=> b!888729 (= e!495324 (not (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!888730 () Bool)

(declare-fun e!495327 () Bool)

(assert (=> b!888730 (= e!495324 e!495327)))

(declare-fun c!93829 () Bool)

(assert (=> b!888730 (= c!93829 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!888731 () Bool)

(declare-fun c!93833 () Bool)

(declare-datatypes ((SeekEntryResult!8757 0))(
  ( (MissingZero!8757 (index!37398 (_ BitVec 32))) (Found!8757 (index!37399 (_ BitVec 32))) (Intermediate!8757 (undefined!9569 Bool) (index!37400 (_ BitVec 32)) (x!75410 (_ BitVec 32))) (Undefined!8757) (MissingVacant!8757 (index!37401 (_ BitVec 32))) )
))
(declare-fun lt!401907 () SeekEntryResult!8757)

(assert (=> b!888731 (= c!93833 ((_ is Found!8757) lt!401907))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51796 (_ BitVec 32)) SeekEntryResult!8757)

(assert (=> b!888731 (= lt!401907 (seekEntry!0 key!785 (_keys!9860 thiss!1181) (mask!25608 thiss!1181)))))

(declare-fun e!495325 () Bool)

(assert (=> b!888731 (= e!495327 e!495325)))

(declare-fun b!888732 () Bool)

(declare-fun e!495328 () Bool)

(assert (=> b!888732 (= e!495328 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888733 () Bool)

(assert (=> b!888733 (= e!495327 (not (= (bvand (extraKeys!4877 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!888734 () Bool)

(assert (=> b!888734 false))

(declare-datatypes ((Unit!30239 0))(
  ( (Unit!30240) )
))
(declare-fun lt!401913 () Unit!30239)

(declare-fun lt!401909 () Unit!30239)

(assert (=> b!888734 (= lt!401913 lt!401909)))

(declare-fun lt!401903 () SeekEntryResult!8757)

(declare-fun lt!401899 () (_ BitVec 32))

(assert (=> b!888734 (and ((_ is Found!8757) lt!401903) (= (index!37399 lt!401903) lt!401899))))

(assert (=> b!888734 (= lt!401903 (seekEntry!0 key!785 (_keys!9860 thiss!1181) (mask!25608 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!51796 (_ BitVec 32)) Unit!30239)

(assert (=> b!888734 (= lt!401909 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!401899 (_keys!9860 thiss!1181) (mask!25608 thiss!1181)))))

(declare-fun lt!401904 () Unit!30239)

(declare-fun lt!401900 () Unit!30239)

(assert (=> b!888734 (= lt!401904 lt!401900)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51796 (_ BitVec 32)) Bool)

(assert (=> b!888734 (arrayForallSeekEntryOrOpenFound!0 lt!401899 (_keys!9860 thiss!1181) (mask!25608 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!51796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30239)

(assert (=> b!888734 (= lt!401900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9860 thiss!1181) (mask!25608 thiss!1181) #b00000000000000000000000000000000 lt!401899))))

(declare-fun arrayScanForKey!0 (array!51796 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888734 (= lt!401899 (arrayScanForKey!0 (_keys!9860 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!401906 () Unit!30239)

(declare-fun lt!401910 () Unit!30239)

(assert (=> b!888734 (= lt!401906 lt!401910)))

(assert (=> b!888734 e!495328))

(declare-fun c!93832 () Bool)

(assert (=> b!888734 (= c!93832 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!161 (array!51796 array!51798 (_ BitVec 32) (_ BitVec 32) V!28857 V!28857 (_ BitVec 64) Int) Unit!30239)

(assert (=> b!888734 (= lt!401910 (lemmaKeyInListMapIsInArray!161 (_keys!9860 thiss!1181) (_values!5168 thiss!1181) (mask!25608 thiss!1181) (extraKeys!4877 thiss!1181) (zeroValue!4981 thiss!1181) (minValue!4981 thiss!1181) key!785 (defaultEntry!5183 thiss!1181)))))

(declare-fun e!495326 () Unit!30239)

(declare-fun Unit!30241 () Unit!30239)

(assert (=> b!888734 (= e!495326 Unit!30241)))

(declare-fun b!888735 () Bool)

(assert (=> b!888735 (= e!495325 false)))

(declare-fun c!93830 () Bool)

(declare-fun call!39491 () Bool)

(assert (=> b!888735 (= c!93830 call!39491)))

(declare-fun lt!401902 () Unit!30239)

(assert (=> b!888735 (= lt!401902 e!495326)))

(declare-fun b!888736 () Bool)

(declare-fun call!39492 () Bool)

(assert (=> b!888736 (= e!495328 call!39492)))

(declare-fun bm!39488 () Bool)

(declare-fun call!39490 () ListLongMap!10671)

(declare-fun getCurrentListMap!2606 (array!51796 array!51798 (_ BitVec 32) (_ BitVec 32) V!28857 V!28857 (_ BitVec 32) Int) ListLongMap!10671)

(assert (=> bm!39488 (= call!39490 (getCurrentListMap!2606 (_keys!9860 thiss!1181) (_values!5168 thiss!1181) (mask!25608 thiss!1181) (extraKeys!4877 thiss!1181) (zeroValue!4981 thiss!1181) (minValue!4981 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5183 thiss!1181)))))

(declare-fun bm!39487 () Bool)

(declare-fun contains!4327 (ListLongMap!10671 (_ BitVec 64)) Bool)

(assert (=> bm!39487 (= call!39491 (contains!4327 call!39490 (ite c!93833 (select (arr!24904 (_keys!9860 thiss!1181)) (index!37399 lt!401907)) key!785)))))

(declare-fun d!110029 () Bool)

(declare-fun lt!401912 () Bool)

(assert (=> d!110029 (= lt!401912 (contains!4327 (map!12119 thiss!1181) key!785))))

(assert (=> d!110029 (= lt!401912 e!495324)))

(declare-fun c!93831 () Bool)

(assert (=> d!110029 (= c!93831 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!110029 (valid!1536 thiss!1181)))

(assert (=> d!110029 (= (contains!4326 thiss!1181 key!785) lt!401912)))

(declare-fun bm!39489 () Bool)

(declare-fun arrayContainsKey!0 (array!51796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!39489 (= call!39492 (arrayContainsKey!0 (_keys!9860 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun b!888737 () Bool)

(assert (=> b!888737 (= e!495325 true)))

(declare-fun lt!401901 () Unit!30239)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51796 (_ BitVec 64) (_ BitVec 32)) Unit!30239)

(assert (=> b!888737 (= lt!401901 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9860 thiss!1181) key!785 (index!37399 lt!401907)))))

(assert (=> b!888737 call!39492))

(declare-fun lt!401905 () Unit!30239)

(assert (=> b!888737 (= lt!401905 lt!401901)))

(declare-fun lt!401908 () Unit!30239)

(declare-fun lemmaValidKeyInArrayIsInListMap!199 (array!51796 array!51798 (_ BitVec 32) (_ BitVec 32) V!28857 V!28857 (_ BitVec 32) Int) Unit!30239)

(assert (=> b!888737 (= lt!401908 (lemmaValidKeyInArrayIsInListMap!199 (_keys!9860 thiss!1181) (_values!5168 thiss!1181) (mask!25608 thiss!1181) (extraKeys!4877 thiss!1181) (zeroValue!4981 thiss!1181) (minValue!4981 thiss!1181) (index!37399 lt!401907) (defaultEntry!5183 thiss!1181)))))

(assert (=> b!888737 call!39491))

(declare-fun lt!401911 () Unit!30239)

(assert (=> b!888737 (= lt!401911 lt!401908)))

(declare-fun b!888738 () Bool)

(declare-fun Unit!30242 () Unit!30239)

(assert (=> b!888738 (= e!495326 Unit!30242)))

(assert (= (and d!110029 c!93831) b!888729))

(assert (= (and d!110029 (not c!93831)) b!888730))

(assert (= (and b!888730 c!93829) b!888733))

(assert (= (and b!888730 (not c!93829)) b!888731))

(assert (= (and b!888731 c!93833) b!888737))

(assert (= (and b!888731 (not c!93833)) b!888735))

(assert (= (and b!888735 c!93830) b!888734))

(assert (= (and b!888735 (not c!93830)) b!888738))

(assert (= (and b!888734 c!93832) b!888736))

(assert (= (and b!888734 (not c!93832)) b!888732))

(assert (= (or b!888737 b!888736) bm!39489))

(assert (= (or b!888737 b!888735) bm!39488))

(assert (= (or b!888737 b!888735) bm!39487))

(declare-fun m!828007 () Bool)

(assert (=> b!888737 m!828007))

(declare-fun m!828009 () Bool)

(assert (=> b!888737 m!828009))

(declare-fun m!828011 () Bool)

(assert (=> bm!39488 m!828011))

(declare-fun m!828013 () Bool)

(assert (=> bm!39489 m!828013))

(assert (=> d!110029 m!827975))

(assert (=> d!110029 m!827975))

(declare-fun m!828015 () Bool)

(assert (=> d!110029 m!828015))

(assert (=> d!110029 m!827989))

(declare-fun m!828017 () Bool)

(assert (=> b!888734 m!828017))

(declare-fun m!828019 () Bool)

(assert (=> b!888734 m!828019))

(declare-fun m!828021 () Bool)

(assert (=> b!888734 m!828021))

(declare-fun m!828023 () Bool)

(assert (=> b!888734 m!828023))

(declare-fun m!828025 () Bool)

(assert (=> b!888734 m!828025))

(declare-fun m!828027 () Bool)

(assert (=> b!888734 m!828027))

(declare-fun m!828029 () Bool)

(assert (=> bm!39487 m!828029))

(declare-fun m!828031 () Bool)

(assert (=> bm!39487 m!828031))

(assert (=> b!888731 m!828027))

(assert (=> b!888682 d!110029))

(declare-fun d!110031 () Bool)

(declare-fun isEmpty!682 (Option!446) Bool)

(assert (=> d!110031 (= (isDefined!321 (getValueByKey!440 (toList!5351 (map!12119 thiss!1181)) key!785)) (not (isEmpty!682 (getValueByKey!440 (toList!5351 (map!12119 thiss!1181)) key!785))))))

(declare-fun bs!24925 () Bool)

(assert (= bs!24925 d!110031))

(assert (=> bs!24925 m!827977))

(declare-fun m!828033 () Bool)

(assert (=> bs!24925 m!828033))

(assert (=> b!888687 d!110031))

(declare-fun b!888748 () Bool)

(declare-fun e!495333 () Option!446)

(declare-fun e!495334 () Option!446)

(assert (=> b!888748 (= e!495333 e!495334)))

(declare-fun c!93839 () Bool)

(assert (=> b!888748 (= c!93839 (and ((_ is Cons!17771) (toList!5351 (map!12119 thiss!1181))) (not (= (_1!5990 (h!18902 (toList!5351 (map!12119 thiss!1181)))) key!785))))))

(declare-fun d!110033 () Bool)

(declare-fun c!93838 () Bool)

(assert (=> d!110033 (= c!93838 (and ((_ is Cons!17771) (toList!5351 (map!12119 thiss!1181))) (= (_1!5990 (h!18902 (toList!5351 (map!12119 thiss!1181)))) key!785)))))

(assert (=> d!110033 (= (getValueByKey!440 (toList!5351 (map!12119 thiss!1181)) key!785) e!495333)))

(declare-fun b!888749 () Bool)

(assert (=> b!888749 (= e!495334 (getValueByKey!440 (t!25082 (toList!5351 (map!12119 thiss!1181))) key!785))))

(declare-fun b!888750 () Bool)

(assert (=> b!888750 (= e!495334 None!444)))

(declare-fun b!888747 () Bool)

(assert (=> b!888747 (= e!495333 (Some!445 (_2!5990 (h!18902 (toList!5351 (map!12119 thiss!1181))))))))

(assert (= (and d!110033 c!93838) b!888747))

(assert (= (and d!110033 (not c!93838)) b!888748))

(assert (= (and b!888748 c!93839) b!888749))

(assert (= (and b!888748 (not c!93839)) b!888750))

(declare-fun m!828035 () Bool)

(assert (=> b!888749 m!828035))

(assert (=> b!888687 d!110033))

(declare-fun d!110035 () Bool)

(assert (=> d!110035 (= (map!12119 thiss!1181) (getCurrentListMap!2606 (_keys!9860 thiss!1181) (_values!5168 thiss!1181) (mask!25608 thiss!1181) (extraKeys!4877 thiss!1181) (zeroValue!4981 thiss!1181) (minValue!4981 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5183 thiss!1181)))))

(declare-fun bs!24926 () Bool)

(assert (= bs!24926 d!110035))

(assert (=> bs!24926 m!828011))

(assert (=> b!888687 d!110035))

(declare-fun d!110037 () Bool)

(declare-fun res!602533 () Bool)

(declare-fun e!495337 () Bool)

(assert (=> d!110037 (=> (not res!602533) (not e!495337))))

(declare-fun simpleValid!290 (LongMapFixedSize!3972) Bool)

(assert (=> d!110037 (= res!602533 (simpleValid!290 thiss!1181))))

(assert (=> d!110037 (= (valid!1536 thiss!1181) e!495337)))

(declare-fun b!888757 () Bool)

(declare-fun res!602534 () Bool)

(assert (=> b!888757 (=> (not res!602534) (not e!495337))))

(declare-fun arrayCountValidKeys!0 (array!51796 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!888757 (= res!602534 (= (arrayCountValidKeys!0 (_keys!9860 thiss!1181) #b00000000000000000000000000000000 (size!25347 (_keys!9860 thiss!1181))) (_size!2041 thiss!1181)))))

(declare-fun b!888758 () Bool)

(declare-fun res!602535 () Bool)

(assert (=> b!888758 (=> (not res!602535) (not e!495337))))

(assert (=> b!888758 (= res!602535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9860 thiss!1181) (mask!25608 thiss!1181)))))

(declare-fun b!888759 () Bool)

(declare-datatypes ((List!17777 0))(
  ( (Nil!17774) (Cons!17773 (h!18904 (_ BitVec 64)) (t!25084 List!17777)) )
))
(declare-fun arrayNoDuplicates!0 (array!51796 (_ BitVec 32) List!17777) Bool)

(assert (=> b!888759 (= e!495337 (arrayNoDuplicates!0 (_keys!9860 thiss!1181) #b00000000000000000000000000000000 Nil!17774))))

(assert (= (and d!110037 res!602533) b!888757))

(assert (= (and b!888757 res!602534) b!888758))

(assert (= (and b!888758 res!602535) b!888759))

(declare-fun m!828037 () Bool)

(assert (=> d!110037 m!828037))

(declare-fun m!828039 () Bool)

(assert (=> b!888757 m!828039))

(declare-fun m!828041 () Bool)

(assert (=> b!888758 m!828041))

(declare-fun m!828043 () Bool)

(assert (=> b!888759 m!828043))

(assert (=> start!75592 d!110037))

(declare-fun mapIsEmpty!28425 () Bool)

(declare-fun mapRes!28425 () Bool)

(assert (=> mapIsEmpty!28425 mapRes!28425))

(declare-fun b!888767 () Bool)

(declare-fun e!495343 () Bool)

(assert (=> b!888767 (= e!495343 tp_is_empty!17919)))

(declare-fun mapNonEmpty!28425 () Bool)

(declare-fun tp!54738 () Bool)

(declare-fun e!495342 () Bool)

(assert (=> mapNonEmpty!28425 (= mapRes!28425 (and tp!54738 e!495342))))

(declare-fun mapKey!28425 () (_ BitVec 32))

(declare-fun mapRest!28425 () (Array (_ BitVec 32) ValueCell!8478))

(declare-fun mapValue!28425 () ValueCell!8478)

(assert (=> mapNonEmpty!28425 (= mapRest!28419 (store mapRest!28425 mapKey!28425 mapValue!28425))))

(declare-fun condMapEmpty!28425 () Bool)

(declare-fun mapDefault!28425 () ValueCell!8478)

(assert (=> mapNonEmpty!28419 (= condMapEmpty!28425 (= mapRest!28419 ((as const (Array (_ BitVec 32) ValueCell!8478)) mapDefault!28425)))))

(assert (=> mapNonEmpty!28419 (= tp!54728 (and e!495343 mapRes!28425))))

(declare-fun b!888766 () Bool)

(assert (=> b!888766 (= e!495342 tp_is_empty!17919)))

(assert (= (and mapNonEmpty!28419 condMapEmpty!28425) mapIsEmpty!28425))

(assert (= (and mapNonEmpty!28419 (not condMapEmpty!28425)) mapNonEmpty!28425))

(assert (= (and mapNonEmpty!28425 ((_ is ValueCellFull!8478) mapValue!28425)) b!888766))

(assert (= (and mapNonEmpty!28419 ((_ is ValueCellFull!8478) mapDefault!28425)) b!888767))

(declare-fun m!828045 () Bool)

(assert (=> mapNonEmpty!28425 m!828045))

(check-sat (not bm!39488) (not b!888759) (not d!110035) (not bm!39489) tp_is_empty!17919 (not bm!39487) (not b!888757) b_and!25849 (not b!888731) (not d!110031) (not b!888749) (not d!110029) (not b_next!15591) (not d!110037) (not b!888737) (not b!888758) (not mapNonEmpty!28425) (not b!888734))
(check-sat b_and!25849 (not b_next!15591))
