; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89646 () Bool)

(assert start!89646)

(declare-fun b!1027712 () Bool)

(declare-fun b_free!20577 () Bool)

(declare-fun b_next!20577 () Bool)

(assert (=> b!1027712 (= b_free!20577 (not b_next!20577))))

(declare-fun tp!72781 () Bool)

(declare-fun b_and!32855 () Bool)

(assert (=> b!1027712 (= tp!72781 b_and!32855)))

(declare-fun b!1027710 () Bool)

(declare-fun e!580101 () Bool)

(declare-fun e!580103 () Bool)

(declare-fun mapRes!37877 () Bool)

(assert (=> b!1027710 (= e!580101 (and e!580103 mapRes!37877))))

(declare-fun condMapEmpty!37877 () Bool)

(declare-datatypes ((V!37269 0))(
  ( (V!37270 (val!12199 Int)) )
))
(declare-datatypes ((ValueCell!11445 0))(
  ( (ValueCellFull!11445 (v!14769 V!37269)) (EmptyCell!11445) )
))
(declare-datatypes ((array!64630 0))(
  ( (array!64631 (arr!31119 (Array (_ BitVec 32) (_ BitVec 64))) (size!31633 (_ BitVec 32))) )
))
(declare-datatypes ((array!64632 0))(
  ( (array!64633 (arr!31120 (Array (_ BitVec 32) ValueCell!11445)) (size!31634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5484 0))(
  ( (LongMapFixedSize!5485 (defaultEntry!6096 Int) (mask!29815 (_ BitVec 32)) (extraKeys!5828 (_ BitVec 32)) (zeroValue!5932 V!37269) (minValue!5932 V!37269) (_size!2797 (_ BitVec 32)) (_keys!11242 array!64630) (_values!6119 array!64632) (_vacant!2797 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5484)

(declare-fun mapDefault!37877 () ValueCell!11445)

(assert (=> b!1027710 (= condMapEmpty!37877 (= (arr!31120 (_values!6119 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11445)) mapDefault!37877)))))

(declare-fun res!687912 () Bool)

(declare-fun e!580100 () Bool)

(assert (=> start!89646 (=> (not res!687912) (not e!580100))))

(declare-fun valid!2030 (LongMapFixedSize!5484) Bool)

(assert (=> start!89646 (= res!687912 (valid!2030 thiss!1427))))

(assert (=> start!89646 e!580100))

(declare-fun e!580104 () Bool)

(assert (=> start!89646 e!580104))

(assert (=> start!89646 true))

(declare-fun b!1027711 () Bool)

(declare-fun res!687911 () Bool)

(assert (=> b!1027711 (=> (not res!687911) (not e!580100))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1027711 (= res!687911 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24297 () Bool)

(declare-fun array_inv!23939 (array!64630) Bool)

(declare-fun array_inv!23940 (array!64632) Bool)

(assert (=> b!1027712 (= e!580104 (and tp!72781 tp_is_empty!24297 (array_inv!23939 (_keys!11242 thiss!1427)) (array_inv!23940 (_values!6119 thiss!1427)) e!580101))))

(declare-fun mapNonEmpty!37877 () Bool)

(declare-fun tp!72780 () Bool)

(declare-fun e!580099 () Bool)

(assert (=> mapNonEmpty!37877 (= mapRes!37877 (and tp!72780 e!580099))))

(declare-fun mapKey!37877 () (_ BitVec 32))

(declare-fun mapRest!37877 () (Array (_ BitVec 32) ValueCell!11445))

(declare-fun mapValue!37877 () ValueCell!11445)

(assert (=> mapNonEmpty!37877 (= (arr!31120 (_values!6119 thiss!1427)) (store mapRest!37877 mapKey!37877 mapValue!37877))))

(declare-fun b!1027713 () Bool)

(assert (=> b!1027713 (= e!580099 tp_is_empty!24297)))

(declare-fun b!1027714 () Bool)

(declare-fun e!580102 () Bool)

(declare-datatypes ((Unit!33514 0))(
  ( (Unit!33515) )
))
(declare-datatypes ((tuple2!15618 0))(
  ( (tuple2!15619 (_1!7819 Unit!33514) (_2!7819 LongMapFixedSize!5484)) )
))
(declare-fun lt!452505 () tuple2!15618)

(assert (=> b!1027714 (= e!580102 (= (size!31634 (_values!6119 (_2!7819 lt!452505))) (bvadd #b00000000000000000000000000000001 (mask!29815 (_2!7819 lt!452505)))))))

(declare-fun mapIsEmpty!37877 () Bool)

(assert (=> mapIsEmpty!37877 mapRes!37877))

(declare-fun b!1027715 () Bool)

(declare-fun e!580105 () Bool)

(assert (=> b!1027715 (= e!580105 (not e!580102))))

(declare-fun res!687910 () Bool)

(assert (=> b!1027715 (=> res!687910 e!580102)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027715 (= res!687910 (not (validMask!0 (mask!29815 (_2!7819 lt!452505)))))))

(declare-fun lt!452502 () array!64632)

(declare-fun lt!452500 () array!64630)

(declare-fun Unit!33516 () Unit!33514)

(declare-fun Unit!33517 () Unit!33514)

(assert (=> b!1027715 (= lt!452505 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2797 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15619 Unit!33516 (LongMapFixedSize!5485 (defaultEntry!6096 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvsub (_size!2797 thiss!1427) #b00000000000000000000000000000001) lt!452500 lt!452502 (bvadd #b00000000000000000000000000000001 (_vacant!2797 thiss!1427)))) (tuple2!15619 Unit!33517 (LongMapFixedSize!5485 (defaultEntry!6096 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvsub (_size!2797 thiss!1427) #b00000000000000000000000000000001) lt!452500 lt!452502 (_vacant!2797 thiss!1427)))))))

(declare-datatypes ((tuple2!15620 0))(
  ( (tuple2!15621 (_1!7820 (_ BitVec 64)) (_2!7820 V!37269)) )
))
(declare-datatypes ((List!21917 0))(
  ( (Nil!21914) (Cons!21913 (h!23111 tuple2!15620) (t!30996 List!21917)) )
))
(declare-datatypes ((ListLongMap!13775 0))(
  ( (ListLongMap!13776 (toList!6903 List!21917)) )
))
(declare-fun -!479 (ListLongMap!13775 (_ BitVec 64)) ListLongMap!13775)

(declare-fun getCurrentListMap!3910 (array!64630 array!64632 (_ BitVec 32) (_ BitVec 32) V!37269 V!37269 (_ BitVec 32) Int) ListLongMap!13775)

(assert (=> b!1027715 (= (-!479 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) key!909) (getCurrentListMap!3910 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9663 0))(
  ( (MissingZero!9663 (index!41022 (_ BitVec 32))) (Found!9663 (index!41023 (_ BitVec 32))) (Intermediate!9663 (undefined!10475 Bool) (index!41024 (_ BitVec 32)) (x!91444 (_ BitVec 32))) (Undefined!9663) (MissingVacant!9663 (index!41025 (_ BitVec 32))) )
))
(declare-fun lt!452501 () SeekEntryResult!9663)

(declare-fun dynLambda!1954 (Int (_ BitVec 64)) V!37269)

(assert (=> b!1027715 (= lt!452502 (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))))))

(declare-fun lt!452499 () Unit!33514)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!3 (array!64630 array!64632 (_ BitVec 32) (_ BitVec 32) V!37269 V!37269 (_ BitVec 32) (_ BitVec 64) Int) Unit!33514)

(assert (=> b!1027715 (= lt!452499 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!3 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (index!41023 lt!452501) key!909 (defaultEntry!6096 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027715 (not (arrayContainsKey!0 lt!452500 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!452504 () Unit!33514)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64630 (_ BitVec 32) (_ BitVec 64)) Unit!33514)

(assert (=> b!1027715 (= lt!452504 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64630 (_ BitVec 32)) Bool)

(assert (=> b!1027715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452500 (mask!29815 thiss!1427))))

(declare-fun lt!452503 () Unit!33514)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64630 (_ BitVec 32) (_ BitVec 32)) Unit!33514)

(assert (=> b!1027715 (= lt!452503 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) (mask!29815 thiss!1427)))))

(declare-datatypes ((List!21918 0))(
  ( (Nil!21915) (Cons!21914 (h!23112 (_ BitVec 64)) (t!30997 List!21918)) )
))
(declare-fun arrayNoDuplicates!0 (array!64630 (_ BitVec 32) List!21918) Bool)

(assert (=> b!1027715 (arrayNoDuplicates!0 lt!452500 #b00000000000000000000000000000000 Nil!21915)))

(declare-fun lt!452497 () Unit!33514)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64630 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21918) Unit!33514)

(assert (=> b!1027715 (= lt!452497 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11242 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41023 lt!452501) #b00000000000000000000000000000000 Nil!21915))))

(declare-fun arrayCountValidKeys!0 (array!64630 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027715 (= (arrayCountValidKeys!0 lt!452500 #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027715 (= lt!452500 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun lt!452498 () Unit!33514)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64630 (_ BitVec 32) (_ BitVec 64)) Unit!33514)

(assert (=> b!1027715 (= lt!452498 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027716 () Bool)

(assert (=> b!1027716 (= e!580103 tp_is_empty!24297)))

(declare-fun b!1027717 () Bool)

(assert (=> b!1027717 (= e!580100 e!580105)))

(declare-fun res!687909 () Bool)

(assert (=> b!1027717 (=> (not res!687909) (not e!580105))))

(get-info :version)

(assert (=> b!1027717 (= res!687909 ((_ is Found!9663) lt!452501))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64630 (_ BitVec 32)) SeekEntryResult!9663)

(assert (=> b!1027717 (= lt!452501 (seekEntry!0 key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(assert (= (and start!89646 res!687912) b!1027711))

(assert (= (and b!1027711 res!687911) b!1027717))

(assert (= (and b!1027717 res!687909) b!1027715))

(assert (= (and b!1027715 (not res!687910)) b!1027714))

(assert (= (and b!1027710 condMapEmpty!37877) mapIsEmpty!37877))

(assert (= (and b!1027710 (not condMapEmpty!37877)) mapNonEmpty!37877))

(assert (= (and mapNonEmpty!37877 ((_ is ValueCellFull!11445) mapValue!37877)) b!1027713))

(assert (= (and b!1027710 ((_ is ValueCellFull!11445) mapDefault!37877)) b!1027716))

(assert (= b!1027712 b!1027710))

(assert (= start!89646 b!1027712))

(declare-fun b_lambda!15771 () Bool)

(assert (=> (not b_lambda!15771) (not b!1027715)))

(declare-fun t!30995 () Bool)

(declare-fun tb!6903 () Bool)

(assert (=> (and b!1027712 (= (defaultEntry!6096 thiss!1427) (defaultEntry!6096 thiss!1427)) t!30995) tb!6903))

(declare-fun result!14115 () Bool)

(assert (=> tb!6903 (= result!14115 tp_is_empty!24297)))

(assert (=> b!1027715 t!30995))

(declare-fun b_and!32857 () Bool)

(assert (= b_and!32855 (and (=> t!30995 result!14115) b_and!32857)))

(declare-fun m!946395 () Bool)

(assert (=> mapNonEmpty!37877 m!946395))

(declare-fun m!946397 () Bool)

(assert (=> b!1027715 m!946397))

(declare-fun m!946399 () Bool)

(assert (=> b!1027715 m!946399))

(declare-fun m!946401 () Bool)

(assert (=> b!1027715 m!946401))

(declare-fun m!946403 () Bool)

(assert (=> b!1027715 m!946403))

(declare-fun m!946405 () Bool)

(assert (=> b!1027715 m!946405))

(declare-fun m!946407 () Bool)

(assert (=> b!1027715 m!946407))

(declare-fun m!946409 () Bool)

(assert (=> b!1027715 m!946409))

(declare-fun m!946411 () Bool)

(assert (=> b!1027715 m!946411))

(declare-fun m!946413 () Bool)

(assert (=> b!1027715 m!946413))

(declare-fun m!946415 () Bool)

(assert (=> b!1027715 m!946415))

(declare-fun m!946417 () Bool)

(assert (=> b!1027715 m!946417))

(declare-fun m!946419 () Bool)

(assert (=> b!1027715 m!946419))

(declare-fun m!946421 () Bool)

(assert (=> b!1027715 m!946421))

(declare-fun m!946423 () Bool)

(assert (=> b!1027715 m!946423))

(assert (=> b!1027715 m!946415))

(declare-fun m!946425 () Bool)

(assert (=> b!1027715 m!946425))

(declare-fun m!946427 () Bool)

(assert (=> b!1027715 m!946427))

(declare-fun m!946429 () Bool)

(assert (=> b!1027715 m!946429))

(declare-fun m!946431 () Bool)

(assert (=> b!1027712 m!946431))

(declare-fun m!946433 () Bool)

(assert (=> b!1027712 m!946433))

(declare-fun m!946435 () Bool)

(assert (=> start!89646 m!946435))

(declare-fun m!946437 () Bool)

(assert (=> b!1027717 m!946437))

(check-sat (not b_next!20577) (not start!89646) (not b_lambda!15771) (not mapNonEmpty!37877) b_and!32857 (not b!1027717) (not b!1027715) tp_is_empty!24297 (not b!1027712))
(check-sat b_and!32857 (not b_next!20577))
(get-model)

(declare-fun b_lambda!15775 () Bool)

(assert (= b_lambda!15771 (or (and b!1027712 b_free!20577) b_lambda!15775)))

(check-sat (not b_lambda!15775) (not b_next!20577) (not start!89646) (not mapNonEmpty!37877) b_and!32857 (not b!1027717) (not b!1027715) tp_is_empty!24297 (not b!1027712))
(check-sat b_and!32857 (not b_next!20577))
(get-model)

(declare-fun d!122699 () Bool)

(declare-fun e!580133 () Bool)

(assert (=> d!122699 e!580133))

(declare-fun res!687927 () Bool)

(assert (=> d!122699 (=> (not res!687927) (not e!580133))))

(assert (=> d!122699 (= res!687927 (and (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427)))))))

(declare-fun lt!452535 () Unit!33514)

(declare-fun choose!25 (array!64630 (_ BitVec 32) (_ BitVec 32)) Unit!33514)

(assert (=> d!122699 (= lt!452535 (choose!25 (_keys!11242 thiss!1427) (index!41023 lt!452501) (mask!29815 thiss!1427)))))

(assert (=> d!122699 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122699 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) (mask!29815 thiss!1427)) lt!452535)))

(declare-fun b!1027748 () Bool)

(assert (=> b!1027748 (= e!580133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (mask!29815 thiss!1427)))))

(assert (= (and d!122699 res!687927) b!1027748))

(declare-fun m!946483 () Bool)

(assert (=> d!122699 m!946483))

(declare-fun m!946485 () Bool)

(assert (=> d!122699 m!946485))

(assert (=> b!1027748 m!946397))

(declare-fun m!946487 () Bool)

(assert (=> b!1027748 m!946487))

(assert (=> b!1027715 d!122699))

(declare-fun b!1027791 () Bool)

(declare-fun res!687946 () Bool)

(declare-fun e!580172 () Bool)

(assert (=> b!1027791 (=> (not res!687946) (not e!580172))))

(declare-fun e!580170 () Bool)

(assert (=> b!1027791 (= res!687946 e!580170)))

(declare-fun c!103578 () Bool)

(assert (=> b!1027791 (= c!103578 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1027793 () Bool)

(declare-fun e!580171 () Bool)

(assert (=> b!1027793 (= e!580170 e!580171)))

(declare-fun res!687953 () Bool)

(declare-fun call!43299 () Bool)

(assert (=> b!1027793 (= res!687953 call!43299)))

(assert (=> b!1027793 (=> (not res!687953) (not e!580171))))

(declare-fun b!1027794 () Bool)

(declare-fun e!580163 () ListLongMap!13775)

(declare-fun call!43296 () ListLongMap!13775)

(assert (=> b!1027794 (= e!580163 call!43296)))

(declare-fun bm!43293 () Bool)

(declare-fun call!43298 () ListLongMap!13775)

(declare-fun getCurrentListMapNoExtraKeys!3528 (array!64630 array!64632 (_ BitVec 32) (_ BitVec 32) V!37269 V!37269 (_ BitVec 32) Int) ListLongMap!13775)

(assert (=> bm!43293 (= call!43298 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun b!1027795 () Bool)

(declare-fun e!580164 () Bool)

(declare-fun call!43301 () Bool)

(assert (=> b!1027795 (= e!580164 (not call!43301))))

(declare-fun b!1027796 () Bool)

(declare-fun e!580161 () Unit!33514)

(declare-fun Unit!33522 () Unit!33514)

(assert (=> b!1027796 (= e!580161 Unit!33522)))

(declare-fun b!1027797 () Bool)

(declare-fun e!580169 () Bool)

(declare-fun e!580165 () Bool)

(assert (=> b!1027797 (= e!580169 e!580165)))

(declare-fun res!687951 () Bool)

(assert (=> b!1027797 (=> (not res!687951) (not e!580165))))

(declare-fun lt!452593 () ListLongMap!13775)

(declare-fun contains!5982 (ListLongMap!13775 (_ BitVec 64)) Bool)

(assert (=> b!1027797 (= res!687951 (contains!5982 lt!452593 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1027797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun b!1027798 () Bool)

(declare-fun e!580160 () Bool)

(declare-fun apply!935 (ListLongMap!13775 (_ BitVec 64)) V!37269)

(assert (=> b!1027798 (= e!580160 (= (apply!935 lt!452593 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5932 thiss!1427)))))

(declare-fun c!103583 () Bool)

(declare-fun call!43300 () ListLongMap!13775)

(declare-fun call!43297 () ListLongMap!13775)

(declare-fun c!103582 () Bool)

(declare-fun bm!43294 () Bool)

(declare-fun +!3058 (ListLongMap!13775 tuple2!15620) ListLongMap!13775)

(assert (=> bm!43294 (= call!43297 (+!3058 (ite c!103583 call!43298 (ite c!103582 call!43300 call!43296)) (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(declare-fun bm!43295 () Bool)

(assert (=> bm!43295 (= call!43301 (contains!5982 lt!452593 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027799 () Bool)

(declare-fun c!103580 () Bool)

(assert (=> b!1027799 (= c!103580 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580162 () ListLongMap!13775)

(assert (=> b!1027799 (= e!580162 e!580163)))

(declare-fun b!1027800 () Bool)

(declare-fun get!16352 (ValueCell!11445 V!37269) V!37269)

(assert (=> b!1027800 (= e!580165 (= (apply!935 lt!452593 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)) (get!16352 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027800 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31634 (_values!6119 thiss!1427))))))

(assert (=> b!1027800 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun b!1027792 () Bool)

(assert (=> b!1027792 (= e!580164 e!580160)))

(declare-fun res!687947 () Bool)

(assert (=> b!1027792 (= res!687947 call!43301)))

(assert (=> b!1027792 (=> (not res!687947) (not e!580160))))

(declare-fun d!122701 () Bool)

(assert (=> d!122701 e!580172))

(declare-fun res!687954 () Bool)

(assert (=> d!122701 (=> (not res!687954) (not e!580172))))

(assert (=> d!122701 (= res!687954 (or (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun lt!452583 () ListLongMap!13775)

(assert (=> d!122701 (= lt!452593 lt!452583)))

(declare-fun lt!452588 () Unit!33514)

(assert (=> d!122701 (= lt!452588 e!580161)))

(declare-fun c!103579 () Bool)

(declare-fun e!580166 () Bool)

(assert (=> d!122701 (= c!103579 e!580166)))

(declare-fun res!687948 () Bool)

(assert (=> d!122701 (=> (not res!687948) (not e!580166))))

(assert (=> d!122701 (= res!687948 (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun e!580167 () ListLongMap!13775)

(assert (=> d!122701 (= lt!452583 e!580167)))

(assert (=> d!122701 (= c!103583 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122701 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122701 (= (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) lt!452593)))

(declare-fun b!1027801 () Bool)

(assert (=> b!1027801 (= e!580172 e!580164)))

(declare-fun c!103581 () Bool)

(assert (=> b!1027801 (= c!103581 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027802 () Bool)

(assert (=> b!1027802 (= e!580171 (= (apply!935 lt!452593 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5932 thiss!1427)))))

(declare-fun b!1027803 () Bool)

(assert (=> b!1027803 (= e!580167 (+!3058 call!43297 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))

(declare-fun b!1027804 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1027804 (= e!580166 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43296 () Bool)

(assert (=> bm!43296 (= call!43299 (contains!5982 lt!452593 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027805 () Bool)

(assert (=> b!1027805 (= e!580167 e!580162)))

(assert (=> b!1027805 (= c!103582 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027806 () Bool)

(declare-fun e!580168 () Bool)

(assert (=> b!1027806 (= e!580168 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43297 () Bool)

(assert (=> bm!43297 (= call!43296 call!43300)))

(declare-fun b!1027807 () Bool)

(declare-fun lt!452591 () Unit!33514)

(assert (=> b!1027807 (= e!580161 lt!452591)))

(declare-fun lt!452584 () ListLongMap!13775)

(assert (=> b!1027807 (= lt!452584 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452599 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452599 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452581 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452581 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452582 () Unit!33514)

(declare-fun addStillContains!623 (ListLongMap!13775 (_ BitVec 64) V!37269 (_ BitVec 64)) Unit!33514)

(assert (=> b!1027807 (= lt!452582 (addStillContains!623 lt!452584 lt!452599 (zeroValue!5932 thiss!1427) lt!452581))))

(assert (=> b!1027807 (contains!5982 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) lt!452581)))

(declare-fun lt!452601 () Unit!33514)

(assert (=> b!1027807 (= lt!452601 lt!452582)))

(declare-fun lt!452585 () ListLongMap!13775)

(assert (=> b!1027807 (= lt!452585 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452589 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452589 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452600 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452600 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452587 () Unit!33514)

(declare-fun addApplyDifferent!475 (ListLongMap!13775 (_ BitVec 64) V!37269 (_ BitVec 64)) Unit!33514)

(assert (=> b!1027807 (= lt!452587 (addApplyDifferent!475 lt!452585 lt!452589 (minValue!5932 thiss!1427) lt!452600))))

(assert (=> b!1027807 (= (apply!935 (+!3058 lt!452585 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) lt!452600) (apply!935 lt!452585 lt!452600))))

(declare-fun lt!452580 () Unit!33514)

(assert (=> b!1027807 (= lt!452580 lt!452587)))

(declare-fun lt!452592 () ListLongMap!13775)

(assert (=> b!1027807 (= lt!452592 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452594 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452594 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452598 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452598 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452595 () Unit!33514)

(assert (=> b!1027807 (= lt!452595 (addApplyDifferent!475 lt!452592 lt!452594 (zeroValue!5932 thiss!1427) lt!452598))))

(assert (=> b!1027807 (= (apply!935 (+!3058 lt!452592 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) lt!452598) (apply!935 lt!452592 lt!452598))))

(declare-fun lt!452586 () Unit!33514)

(assert (=> b!1027807 (= lt!452586 lt!452595)))

(declare-fun lt!452597 () ListLongMap!13775)

(assert (=> b!1027807 (= lt!452597 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452590 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452590 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452596 () (_ BitVec 64))

(assert (=> b!1027807 (= lt!452596 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027807 (= lt!452591 (addApplyDifferent!475 lt!452597 lt!452590 (minValue!5932 thiss!1427) lt!452596))))

(assert (=> b!1027807 (= (apply!935 (+!3058 lt!452597 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) lt!452596) (apply!935 lt!452597 lt!452596))))

(declare-fun b!1027808 () Bool)

(declare-fun res!687952 () Bool)

(assert (=> b!1027808 (=> (not res!687952) (not e!580172))))

(assert (=> b!1027808 (= res!687952 e!580169)))

(declare-fun res!687950 () Bool)

(assert (=> b!1027808 (=> res!687950 e!580169)))

(assert (=> b!1027808 (= res!687950 (not e!580168))))

(declare-fun res!687949 () Bool)

(assert (=> b!1027808 (=> (not res!687949) (not e!580168))))

(assert (=> b!1027808 (= res!687949 (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun bm!43298 () Bool)

(declare-fun call!43302 () ListLongMap!13775)

(assert (=> bm!43298 (= call!43302 call!43297)))

(declare-fun bm!43299 () Bool)

(assert (=> bm!43299 (= call!43300 call!43298)))

(declare-fun b!1027809 () Bool)

(assert (=> b!1027809 (= e!580162 call!43302)))

(declare-fun b!1027810 () Bool)

(assert (=> b!1027810 (= e!580170 (not call!43299))))

(declare-fun b!1027811 () Bool)

(assert (=> b!1027811 (= e!580163 call!43302)))

(assert (= (and d!122701 c!103583) b!1027803))

(assert (= (and d!122701 (not c!103583)) b!1027805))

(assert (= (and b!1027805 c!103582) b!1027809))

(assert (= (and b!1027805 (not c!103582)) b!1027799))

(assert (= (and b!1027799 c!103580) b!1027811))

(assert (= (and b!1027799 (not c!103580)) b!1027794))

(assert (= (or b!1027811 b!1027794) bm!43297))

(assert (= (or b!1027809 bm!43297) bm!43299))

(assert (= (or b!1027809 b!1027811) bm!43298))

(assert (= (or b!1027803 bm!43299) bm!43293))

(assert (= (or b!1027803 bm!43298) bm!43294))

(assert (= (and d!122701 res!687948) b!1027804))

(assert (= (and d!122701 c!103579) b!1027807))

(assert (= (and d!122701 (not c!103579)) b!1027796))

(assert (= (and d!122701 res!687954) b!1027808))

(assert (= (and b!1027808 res!687949) b!1027806))

(assert (= (and b!1027808 (not res!687950)) b!1027797))

(assert (= (and b!1027797 res!687951) b!1027800))

(assert (= (and b!1027808 res!687952) b!1027791))

(assert (= (and b!1027791 c!103578) b!1027793))

(assert (= (and b!1027791 (not c!103578)) b!1027810))

(assert (= (and b!1027793 res!687953) b!1027802))

(assert (= (or b!1027793 b!1027810) bm!43296))

(assert (= (and b!1027791 res!687946) b!1027801))

(assert (= (and b!1027801 c!103581) b!1027792))

(assert (= (and b!1027801 (not c!103581)) b!1027795))

(assert (= (and b!1027792 res!687947) b!1027798))

(assert (= (or b!1027792 b!1027795) bm!43295))

(declare-fun b_lambda!15777 () Bool)

(assert (=> (not b_lambda!15777) (not b!1027800)))

(assert (=> b!1027800 t!30995))

(declare-fun b_and!32863 () Bool)

(assert (= b_and!32857 (and (=> t!30995 result!14115) b_and!32863)))

(declare-fun m!946489 () Bool)

(assert (=> bm!43294 m!946489))

(declare-fun m!946491 () Bool)

(assert (=> b!1027804 m!946491))

(assert (=> b!1027804 m!946491))

(declare-fun m!946493 () Bool)

(assert (=> b!1027804 m!946493))

(declare-fun m!946495 () Bool)

(assert (=> bm!43296 m!946495))

(assert (=> b!1027806 m!946491))

(assert (=> b!1027806 m!946491))

(assert (=> b!1027806 m!946493))

(assert (=> b!1027800 m!946491))

(assert (=> b!1027800 m!946491))

(declare-fun m!946497 () Bool)

(assert (=> b!1027800 m!946497))

(declare-fun m!946499 () Bool)

(assert (=> b!1027800 m!946499))

(assert (=> b!1027800 m!946429))

(declare-fun m!946501 () Bool)

(assert (=> b!1027800 m!946501))

(assert (=> b!1027800 m!946429))

(assert (=> b!1027800 m!946499))

(declare-fun m!946503 () Bool)

(assert (=> b!1027802 m!946503))

(declare-fun m!946505 () Bool)

(assert (=> bm!43293 m!946505))

(declare-fun m!946507 () Bool)

(assert (=> b!1027807 m!946507))

(declare-fun m!946509 () Bool)

(assert (=> b!1027807 m!946509))

(declare-fun m!946511 () Bool)

(assert (=> b!1027807 m!946511))

(declare-fun m!946513 () Bool)

(assert (=> b!1027807 m!946513))

(declare-fun m!946515 () Bool)

(assert (=> b!1027807 m!946515))

(declare-fun m!946517 () Bool)

(assert (=> b!1027807 m!946517))

(declare-fun m!946519 () Bool)

(assert (=> b!1027807 m!946519))

(assert (=> b!1027807 m!946507))

(declare-fun m!946521 () Bool)

(assert (=> b!1027807 m!946521))

(declare-fun m!946523 () Bool)

(assert (=> b!1027807 m!946523))

(declare-fun m!946525 () Bool)

(assert (=> b!1027807 m!946525))

(assert (=> b!1027807 m!946505))

(declare-fun m!946527 () Bool)

(assert (=> b!1027807 m!946527))

(assert (=> b!1027807 m!946513))

(declare-fun m!946529 () Bool)

(assert (=> b!1027807 m!946529))

(assert (=> b!1027807 m!946491))

(declare-fun m!946531 () Bool)

(assert (=> b!1027807 m!946531))

(assert (=> b!1027807 m!946519))

(declare-fun m!946533 () Bool)

(assert (=> b!1027807 m!946533))

(assert (=> b!1027807 m!946523))

(declare-fun m!946535 () Bool)

(assert (=> b!1027807 m!946535))

(assert (=> b!1027797 m!946491))

(assert (=> b!1027797 m!946491))

(declare-fun m!946537 () Bool)

(assert (=> b!1027797 m!946537))

(declare-fun m!946539 () Bool)

(assert (=> b!1027798 m!946539))

(declare-fun m!946541 () Bool)

(assert (=> bm!43295 m!946541))

(assert (=> d!122701 m!946485))

(declare-fun m!946543 () Bool)

(assert (=> b!1027803 m!946543))

(assert (=> b!1027715 d!122701))

(declare-fun b!1027820 () Bool)

(declare-fun res!687965 () Bool)

(declare-fun e!580178 () Bool)

(assert (=> b!1027820 (=> (not res!687965) (not e!580178))))

(assert (=> b!1027820 (= res!687965 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501))))))

(declare-fun d!122703 () Bool)

(declare-fun e!580177 () Bool)

(assert (=> d!122703 e!580177))

(declare-fun res!687963 () Bool)

(assert (=> d!122703 (=> (not res!687963) (not e!580177))))

(assert (=> d!122703 (= res!687963 (and (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427)))))))

(declare-fun lt!452604 () Unit!33514)

(declare-fun choose!82 (array!64630 (_ BitVec 32) (_ BitVec 64)) Unit!33514)

(assert (=> d!122703 (= lt!452604 (choose!82 (_keys!11242 thiss!1427) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122703 e!580178))

(declare-fun res!687964 () Bool)

(assert (=> d!122703 (=> (not res!687964) (not e!580178))))

(assert (=> d!122703 (= res!687964 (and (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427)))))))

(assert (=> d!122703 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) lt!452604)))

(declare-fun b!1027822 () Bool)

(assert (=> b!1027822 (= e!580178 (bvslt (size!31633 (_keys!11242 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1027823 () Bool)

(assert (=> b!1027823 (= e!580177 (= (arrayCountValidKeys!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1027821 () Bool)

(declare-fun res!687966 () Bool)

(assert (=> b!1027821 (=> (not res!687966) (not e!580178))))

(assert (=> b!1027821 (= res!687966 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122703 res!687964) b!1027820))

(assert (= (and b!1027820 res!687965) b!1027821))

(assert (= (and b!1027821 res!687966) b!1027822))

(assert (= (and d!122703 res!687963) b!1027823))

(declare-fun m!946545 () Bool)

(assert (=> b!1027820 m!946545))

(assert (=> b!1027820 m!946545))

(declare-fun m!946547 () Bool)

(assert (=> b!1027820 m!946547))

(declare-fun m!946549 () Bool)

(assert (=> d!122703 m!946549))

(assert (=> b!1027823 m!946397))

(declare-fun m!946551 () Bool)

(assert (=> b!1027823 m!946551))

(assert (=> b!1027823 m!946411))

(declare-fun m!946553 () Bool)

(assert (=> b!1027821 m!946553))

(assert (=> b!1027715 d!122703))

(declare-fun d!122705 () Bool)

(declare-fun lt!452607 () ListLongMap!13775)

(assert (=> d!122705 (not (contains!5982 lt!452607 key!909))))

(declare-fun removeStrictlySorted!51 (List!21917 (_ BitVec 64)) List!21917)

(assert (=> d!122705 (= lt!452607 (ListLongMap!13776 (removeStrictlySorted!51 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))) key!909)))))

(assert (=> d!122705 (= (-!479 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) key!909) lt!452607)))

(declare-fun bs!29990 () Bool)

(assert (= bs!29990 d!122705))

(declare-fun m!946555 () Bool)

(assert (=> bs!29990 m!946555))

(declare-fun m!946557 () Bool)

(assert (=> bs!29990 m!946557))

(assert (=> b!1027715 d!122705))

(declare-fun d!122707 () Bool)

(declare-fun e!580181 () Bool)

(assert (=> d!122707 e!580181))

(declare-fun res!687969 () Bool)

(assert (=> d!122707 (=> (not res!687969) (not e!580181))))

(assert (=> d!122707 (= res!687969 (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun lt!452610 () Unit!33514)

(declare-fun choose!121 (array!64630 (_ BitVec 32) (_ BitVec 64)) Unit!33514)

(assert (=> d!122707 (= lt!452610 (choose!121 (_keys!11242 thiss!1427) (index!41023 lt!452501) key!909))))

(assert (=> d!122707 (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000)))

(assert (=> d!122707 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11242 thiss!1427) (index!41023 lt!452501) key!909) lt!452610)))

(declare-fun b!1027826 () Bool)

(assert (=> b!1027826 (= e!580181 (not (arrayContainsKey!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!122707 res!687969) b!1027826))

(declare-fun m!946559 () Bool)

(assert (=> d!122707 m!946559))

(assert (=> b!1027826 m!946397))

(declare-fun m!946561 () Bool)

(assert (=> b!1027826 m!946561))

(assert (=> b!1027715 d!122707))

(declare-fun b!1027835 () Bool)

(declare-fun e!580187 () (_ BitVec 32))

(declare-fun call!43305 () (_ BitVec 32))

(assert (=> b!1027835 (= e!580187 (bvadd #b00000000000000000000000000000001 call!43305))))

(declare-fun b!1027836 () Bool)

(declare-fun e!580186 () (_ BitVec 32))

(assert (=> b!1027836 (= e!580186 e!580187)))

(declare-fun c!103589 () Bool)

(assert (=> b!1027836 (= c!103589 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1027837 () Bool)

(assert (=> b!1027837 (= e!580187 call!43305)))

(declare-fun bm!43302 () Bool)

(assert (=> bm!43302 (= call!43305 (arrayCountValidKeys!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun d!122709 () Bool)

(declare-fun lt!452613 () (_ BitVec 32))

(assert (=> d!122709 (and (bvsge lt!452613 #b00000000000000000000000000000000) (bvsle lt!452613 (bvsub (size!31633 lt!452500) #b00000000000000000000000000000000)))))

(assert (=> d!122709 (= lt!452613 e!580186)))

(declare-fun c!103588 () Bool)

(assert (=> d!122709 (= c!103588 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122709 (and (bvsle #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31633 (_keys!11242 thiss!1427)) (size!31633 lt!452500)))))

(assert (=> d!122709 (= (arrayCountValidKeys!0 lt!452500 #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) lt!452613)))

(declare-fun b!1027838 () Bool)

(assert (=> b!1027838 (= e!580186 #b00000000000000000000000000000000)))

(assert (= (and d!122709 c!103588) b!1027838))

(assert (= (and d!122709 (not c!103588)) b!1027836))

(assert (= (and b!1027836 c!103589) b!1027835))

(assert (= (and b!1027836 (not c!103589)) b!1027837))

(assert (= (or b!1027835 b!1027837) bm!43302))

(declare-fun m!946563 () Bool)

(assert (=> b!1027836 m!946563))

(assert (=> b!1027836 m!946563))

(declare-fun m!946565 () Bool)

(assert (=> b!1027836 m!946565))

(declare-fun m!946567 () Bool)

(assert (=> bm!43302 m!946567))

(assert (=> b!1027715 d!122709))

(declare-fun b!1027839 () Bool)

(declare-fun e!580189 () (_ BitVec 32))

(declare-fun call!43306 () (_ BitVec 32))

(assert (=> b!1027839 (= e!580189 (bvadd #b00000000000000000000000000000001 call!43306))))

(declare-fun b!1027840 () Bool)

(declare-fun e!580188 () (_ BitVec 32))

(assert (=> b!1027840 (= e!580188 e!580189)))

(declare-fun c!103591 () Bool)

(assert (=> b!1027840 (= c!103591 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027841 () Bool)

(assert (=> b!1027841 (= e!580189 call!43306)))

(declare-fun bm!43303 () Bool)

(assert (=> bm!43303 (= call!43306 (arrayCountValidKeys!0 (_keys!11242 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun d!122711 () Bool)

(declare-fun lt!452614 () (_ BitVec 32))

(assert (=> d!122711 (and (bvsge lt!452614 #b00000000000000000000000000000000) (bvsle lt!452614 (bvsub (size!31633 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!122711 (= lt!452614 e!580188)))

(declare-fun c!103590 () Bool)

(assert (=> d!122711 (= c!103590 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122711 (and (bvsle #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31633 (_keys!11242 thiss!1427)) (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122711 (= (arrayCountValidKeys!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) lt!452614)))

(declare-fun b!1027842 () Bool)

(assert (=> b!1027842 (= e!580188 #b00000000000000000000000000000000)))

(assert (= (and d!122711 c!103590) b!1027842))

(assert (= (and d!122711 (not c!103590)) b!1027840))

(assert (= (and b!1027840 c!103591) b!1027839))

(assert (= (and b!1027840 (not c!103591)) b!1027841))

(assert (= (or b!1027839 b!1027841) bm!43303))

(assert (=> b!1027840 m!946491))

(assert (=> b!1027840 m!946491))

(assert (=> b!1027840 m!946493))

(declare-fun m!946569 () Bool)

(assert (=> bm!43303 m!946569))

(assert (=> b!1027715 d!122711))

(declare-fun d!122713 () Bool)

(declare-fun res!687974 () Bool)

(declare-fun e!580194 () Bool)

(assert (=> d!122713 (=> res!687974 e!580194)))

(assert (=> d!122713 (= res!687974 (= (select (arr!31119 lt!452500) #b00000000000000000000000000000000) key!909))))

(assert (=> d!122713 (= (arrayContainsKey!0 lt!452500 key!909 #b00000000000000000000000000000000) e!580194)))

(declare-fun b!1027847 () Bool)

(declare-fun e!580195 () Bool)

(assert (=> b!1027847 (= e!580194 e!580195)))

(declare-fun res!687975 () Bool)

(assert (=> b!1027847 (=> (not res!687975) (not e!580195))))

(assert (=> b!1027847 (= res!687975 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 lt!452500)))))

(declare-fun b!1027848 () Bool)

(assert (=> b!1027848 (= e!580195 (arrayContainsKey!0 lt!452500 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122713 (not res!687974)) b!1027847))

(assert (= (and b!1027847 res!687975) b!1027848))

(assert (=> d!122713 m!946563))

(declare-fun m!946571 () Bool)

(assert (=> b!1027848 m!946571))

(assert (=> b!1027715 d!122713))

(declare-fun bm!43306 () Bool)

(declare-fun call!43309 () Bool)

(assert (=> bm!43306 (= call!43309 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!452500 (mask!29815 thiss!1427)))))

(declare-fun b!1027857 () Bool)

(declare-fun e!580203 () Bool)

(declare-fun e!580204 () Bool)

(assert (=> b!1027857 (= e!580203 e!580204)))

(declare-fun c!103594 () Bool)

(assert (=> b!1027857 (= c!103594 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1027858 () Bool)

(declare-fun e!580202 () Bool)

(assert (=> b!1027858 (= e!580204 e!580202)))

(declare-fun lt!452621 () (_ BitVec 64))

(assert (=> b!1027858 (= lt!452621 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(declare-fun lt!452622 () Unit!33514)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64630 (_ BitVec 64) (_ BitVec 32)) Unit!33514)

(assert (=> b!1027858 (= lt!452622 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452500 lt!452621 #b00000000000000000000000000000000))))

(assert (=> b!1027858 (arrayContainsKey!0 lt!452500 lt!452621 #b00000000000000000000000000000000)))

(declare-fun lt!452623 () Unit!33514)

(assert (=> b!1027858 (= lt!452623 lt!452622)))

(declare-fun res!687980 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64630 (_ BitVec 32)) SeekEntryResult!9663)

(assert (=> b!1027858 (= res!687980 (= (seekEntryOrOpen!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) lt!452500 (mask!29815 thiss!1427)) (Found!9663 #b00000000000000000000000000000000)))))

(assert (=> b!1027858 (=> (not res!687980) (not e!580202))))

(declare-fun d!122715 () Bool)

(declare-fun res!687981 () Bool)

(assert (=> d!122715 (=> res!687981 e!580203)))

(assert (=> d!122715 (= res!687981 (bvsge #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(assert (=> d!122715 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452500 (mask!29815 thiss!1427)) e!580203)))

(declare-fun b!1027859 () Bool)

(assert (=> b!1027859 (= e!580202 call!43309)))

(declare-fun b!1027860 () Bool)

(assert (=> b!1027860 (= e!580204 call!43309)))

(assert (= (and d!122715 (not res!687981)) b!1027857))

(assert (= (and b!1027857 c!103594) b!1027858))

(assert (= (and b!1027857 (not c!103594)) b!1027860))

(assert (= (and b!1027858 res!687980) b!1027859))

(assert (= (or b!1027859 b!1027860) bm!43306))

(declare-fun m!946573 () Bool)

(assert (=> bm!43306 m!946573))

(assert (=> b!1027857 m!946563))

(assert (=> b!1027857 m!946563))

(assert (=> b!1027857 m!946565))

(assert (=> b!1027858 m!946563))

(declare-fun m!946575 () Bool)

(assert (=> b!1027858 m!946575))

(declare-fun m!946577 () Bool)

(assert (=> b!1027858 m!946577))

(assert (=> b!1027858 m!946563))

(declare-fun m!946579 () Bool)

(assert (=> b!1027858 m!946579))

(assert (=> b!1027715 d!122715))

(declare-fun b!1027861 () Bool)

(declare-fun res!687982 () Bool)

(declare-fun e!580217 () Bool)

(assert (=> b!1027861 (=> (not res!687982) (not e!580217))))

(declare-fun e!580215 () Bool)

(assert (=> b!1027861 (= res!687982 e!580215)))

(declare-fun c!103595 () Bool)

(assert (=> b!1027861 (= c!103595 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1027863 () Bool)

(declare-fun e!580216 () Bool)

(assert (=> b!1027863 (= e!580215 e!580216)))

(declare-fun res!687989 () Bool)

(declare-fun call!43313 () Bool)

(assert (=> b!1027863 (= res!687989 call!43313)))

(assert (=> b!1027863 (=> (not res!687989) (not e!580216))))

(declare-fun b!1027864 () Bool)

(declare-fun e!580208 () ListLongMap!13775)

(declare-fun call!43310 () ListLongMap!13775)

(assert (=> b!1027864 (= e!580208 call!43310)))

(declare-fun call!43312 () ListLongMap!13775)

(declare-fun bm!43307 () Bool)

(assert (=> bm!43307 (= call!43312 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun b!1027865 () Bool)

(declare-fun e!580209 () Bool)

(declare-fun call!43315 () Bool)

(assert (=> b!1027865 (= e!580209 (not call!43315))))

(declare-fun b!1027866 () Bool)

(declare-fun e!580206 () Unit!33514)

(declare-fun Unit!33523 () Unit!33514)

(assert (=> b!1027866 (= e!580206 Unit!33523)))

(declare-fun b!1027867 () Bool)

(declare-fun e!580214 () Bool)

(declare-fun e!580210 () Bool)

(assert (=> b!1027867 (= e!580214 e!580210)))

(declare-fun res!687987 () Bool)

(assert (=> b!1027867 (=> (not res!687987) (not e!580210))))

(declare-fun lt!452637 () ListLongMap!13775)

(assert (=> b!1027867 (= res!687987 (contains!5982 lt!452637 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(assert (=> b!1027867 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun b!1027868 () Bool)

(declare-fun e!580205 () Bool)

(assert (=> b!1027868 (= e!580205 (= (apply!935 lt!452637 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5932 thiss!1427)))))

(declare-fun call!43311 () ListLongMap!13775)

(declare-fun bm!43308 () Bool)

(declare-fun c!103600 () Bool)

(declare-fun call!43314 () ListLongMap!13775)

(declare-fun c!103599 () Bool)

(assert (=> bm!43308 (= call!43311 (+!3058 (ite c!103600 call!43312 (ite c!103599 call!43314 call!43310)) (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(declare-fun bm!43309 () Bool)

(assert (=> bm!43309 (= call!43315 (contains!5982 lt!452637 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027869 () Bool)

(declare-fun c!103597 () Bool)

(assert (=> b!1027869 (= c!103597 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580207 () ListLongMap!13775)

(assert (=> b!1027869 (= e!580207 e!580208)))

(declare-fun b!1027870 () Bool)

(assert (=> b!1027870 (= e!580210 (= (apply!935 lt!452637 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) (get!16352 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027870 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31634 lt!452502)))))

(assert (=> b!1027870 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun b!1027862 () Bool)

(assert (=> b!1027862 (= e!580209 e!580205)))

(declare-fun res!687983 () Bool)

(assert (=> b!1027862 (= res!687983 call!43315)))

(assert (=> b!1027862 (=> (not res!687983) (not e!580205))))

(declare-fun d!122717 () Bool)

(assert (=> d!122717 e!580217))

(declare-fun res!687990 () Bool)

(assert (=> d!122717 (=> (not res!687990) (not e!580217))))

(assert (=> d!122717 (= res!687990 (or (bvsge #b00000000000000000000000000000000 (size!31633 lt!452500)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))))

(declare-fun lt!452627 () ListLongMap!13775)

(assert (=> d!122717 (= lt!452637 lt!452627)))

(declare-fun lt!452632 () Unit!33514)

(assert (=> d!122717 (= lt!452632 e!580206)))

(declare-fun c!103596 () Bool)

(declare-fun e!580211 () Bool)

(assert (=> d!122717 (= c!103596 e!580211)))

(declare-fun res!687984 () Bool)

(assert (=> d!122717 (=> (not res!687984) (not e!580211))))

(assert (=> d!122717 (= res!687984 (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun e!580212 () ListLongMap!13775)

(assert (=> d!122717 (= lt!452627 e!580212)))

(assert (=> d!122717 (= c!103600 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122717 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122717 (= (getCurrentListMap!3910 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) lt!452637)))

(declare-fun b!1027871 () Bool)

(assert (=> b!1027871 (= e!580217 e!580209)))

(declare-fun c!103598 () Bool)

(assert (=> b!1027871 (= c!103598 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027872 () Bool)

(assert (=> b!1027872 (= e!580216 (= (apply!935 lt!452637 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5932 thiss!1427)))))

(declare-fun b!1027873 () Bool)

(assert (=> b!1027873 (= e!580212 (+!3058 call!43311 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))

(declare-fun b!1027874 () Bool)

(assert (=> b!1027874 (= e!580211 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun bm!43310 () Bool)

(assert (=> bm!43310 (= call!43313 (contains!5982 lt!452637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027875 () Bool)

(assert (=> b!1027875 (= e!580212 e!580207)))

(assert (=> b!1027875 (= c!103599 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027876 () Bool)

(declare-fun e!580213 () Bool)

(assert (=> b!1027876 (= e!580213 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun bm!43311 () Bool)

(assert (=> bm!43311 (= call!43310 call!43314)))

(declare-fun b!1027877 () Bool)

(declare-fun lt!452635 () Unit!33514)

(assert (=> b!1027877 (= e!580206 lt!452635)))

(declare-fun lt!452628 () ListLongMap!13775)

(assert (=> b!1027877 (= lt!452628 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452643 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452643 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452625 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452625 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(declare-fun lt!452626 () Unit!33514)

(assert (=> b!1027877 (= lt!452626 (addStillContains!623 lt!452628 lt!452643 (zeroValue!5932 thiss!1427) lt!452625))))

(assert (=> b!1027877 (contains!5982 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) lt!452625)))

(declare-fun lt!452645 () Unit!33514)

(assert (=> b!1027877 (= lt!452645 lt!452626)))

(declare-fun lt!452629 () ListLongMap!13775)

(assert (=> b!1027877 (= lt!452629 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452633 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452633 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452644 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452644 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(declare-fun lt!452631 () Unit!33514)

(assert (=> b!1027877 (= lt!452631 (addApplyDifferent!475 lt!452629 lt!452633 (minValue!5932 thiss!1427) lt!452644))))

(assert (=> b!1027877 (= (apply!935 (+!3058 lt!452629 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) lt!452644) (apply!935 lt!452629 lt!452644))))

(declare-fun lt!452624 () Unit!33514)

(assert (=> b!1027877 (= lt!452624 lt!452631)))

(declare-fun lt!452636 () ListLongMap!13775)

(assert (=> b!1027877 (= lt!452636 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452638 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452638 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452642 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452642 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(declare-fun lt!452639 () Unit!33514)

(assert (=> b!1027877 (= lt!452639 (addApplyDifferent!475 lt!452636 lt!452638 (zeroValue!5932 thiss!1427) lt!452642))))

(assert (=> b!1027877 (= (apply!935 (+!3058 lt!452636 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) lt!452642) (apply!935 lt!452636 lt!452642))))

(declare-fun lt!452630 () Unit!33514)

(assert (=> b!1027877 (= lt!452630 lt!452639)))

(declare-fun lt!452641 () ListLongMap!13775)

(assert (=> b!1027877 (= lt!452641 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452634 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452634 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452640 () (_ BitVec 64))

(assert (=> b!1027877 (= lt!452640 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(assert (=> b!1027877 (= lt!452635 (addApplyDifferent!475 lt!452641 lt!452634 (minValue!5932 thiss!1427) lt!452640))))

(assert (=> b!1027877 (= (apply!935 (+!3058 lt!452641 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) lt!452640) (apply!935 lt!452641 lt!452640))))

(declare-fun b!1027878 () Bool)

(declare-fun res!687988 () Bool)

(assert (=> b!1027878 (=> (not res!687988) (not e!580217))))

(assert (=> b!1027878 (= res!687988 e!580214)))

(declare-fun res!687986 () Bool)

(assert (=> b!1027878 (=> res!687986 e!580214)))

(assert (=> b!1027878 (= res!687986 (not e!580213))))

(declare-fun res!687985 () Bool)

(assert (=> b!1027878 (=> (not res!687985) (not e!580213))))

(assert (=> b!1027878 (= res!687985 (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun bm!43312 () Bool)

(declare-fun call!43316 () ListLongMap!13775)

(assert (=> bm!43312 (= call!43316 call!43311)))

(declare-fun bm!43313 () Bool)

(assert (=> bm!43313 (= call!43314 call!43312)))

(declare-fun b!1027879 () Bool)

(assert (=> b!1027879 (= e!580207 call!43316)))

(declare-fun b!1027880 () Bool)

(assert (=> b!1027880 (= e!580215 (not call!43313))))

(declare-fun b!1027881 () Bool)

(assert (=> b!1027881 (= e!580208 call!43316)))

(assert (= (and d!122717 c!103600) b!1027873))

(assert (= (and d!122717 (not c!103600)) b!1027875))

(assert (= (and b!1027875 c!103599) b!1027879))

(assert (= (and b!1027875 (not c!103599)) b!1027869))

(assert (= (and b!1027869 c!103597) b!1027881))

(assert (= (and b!1027869 (not c!103597)) b!1027864))

(assert (= (or b!1027881 b!1027864) bm!43311))

(assert (= (or b!1027879 bm!43311) bm!43313))

(assert (= (or b!1027879 b!1027881) bm!43312))

(assert (= (or b!1027873 bm!43313) bm!43307))

(assert (= (or b!1027873 bm!43312) bm!43308))

(assert (= (and d!122717 res!687984) b!1027874))

(assert (= (and d!122717 c!103596) b!1027877))

(assert (= (and d!122717 (not c!103596)) b!1027866))

(assert (= (and d!122717 res!687990) b!1027878))

(assert (= (and b!1027878 res!687985) b!1027876))

(assert (= (and b!1027878 (not res!687986)) b!1027867))

(assert (= (and b!1027867 res!687987) b!1027870))

(assert (= (and b!1027878 res!687988) b!1027861))

(assert (= (and b!1027861 c!103595) b!1027863))

(assert (= (and b!1027861 (not c!103595)) b!1027880))

(assert (= (and b!1027863 res!687989) b!1027872))

(assert (= (or b!1027863 b!1027880) bm!43310))

(assert (= (and b!1027861 res!687982) b!1027871))

(assert (= (and b!1027871 c!103598) b!1027862))

(assert (= (and b!1027871 (not c!103598)) b!1027865))

(assert (= (and b!1027862 res!687983) b!1027868))

(assert (= (or b!1027862 b!1027865) bm!43309))

(declare-fun b_lambda!15779 () Bool)

(assert (=> (not b_lambda!15779) (not b!1027870)))

(assert (=> b!1027870 t!30995))

(declare-fun b_and!32865 () Bool)

(assert (= b_and!32863 (and (=> t!30995 result!14115) b_and!32865)))

(declare-fun m!946581 () Bool)

(assert (=> bm!43308 m!946581))

(assert (=> b!1027874 m!946563))

(assert (=> b!1027874 m!946563))

(assert (=> b!1027874 m!946565))

(declare-fun m!946583 () Bool)

(assert (=> bm!43310 m!946583))

(assert (=> b!1027876 m!946563))

(assert (=> b!1027876 m!946563))

(assert (=> b!1027876 m!946565))

(assert (=> b!1027870 m!946563))

(assert (=> b!1027870 m!946563))

(declare-fun m!946585 () Bool)

(assert (=> b!1027870 m!946585))

(declare-fun m!946587 () Bool)

(assert (=> b!1027870 m!946587))

(assert (=> b!1027870 m!946429))

(declare-fun m!946589 () Bool)

(assert (=> b!1027870 m!946589))

(assert (=> b!1027870 m!946429))

(assert (=> b!1027870 m!946587))

(declare-fun m!946591 () Bool)

(assert (=> b!1027872 m!946591))

(declare-fun m!946593 () Bool)

(assert (=> bm!43307 m!946593))

(declare-fun m!946595 () Bool)

(assert (=> b!1027877 m!946595))

(declare-fun m!946597 () Bool)

(assert (=> b!1027877 m!946597))

(declare-fun m!946599 () Bool)

(assert (=> b!1027877 m!946599))

(declare-fun m!946601 () Bool)

(assert (=> b!1027877 m!946601))

(declare-fun m!946603 () Bool)

(assert (=> b!1027877 m!946603))

(declare-fun m!946605 () Bool)

(assert (=> b!1027877 m!946605))

(declare-fun m!946607 () Bool)

(assert (=> b!1027877 m!946607))

(assert (=> b!1027877 m!946595))

(declare-fun m!946609 () Bool)

(assert (=> b!1027877 m!946609))

(declare-fun m!946611 () Bool)

(assert (=> b!1027877 m!946611))

(declare-fun m!946613 () Bool)

(assert (=> b!1027877 m!946613))

(assert (=> b!1027877 m!946593))

(declare-fun m!946615 () Bool)

(assert (=> b!1027877 m!946615))

(assert (=> b!1027877 m!946601))

(declare-fun m!946617 () Bool)

(assert (=> b!1027877 m!946617))

(assert (=> b!1027877 m!946563))

(declare-fun m!946619 () Bool)

(assert (=> b!1027877 m!946619))

(assert (=> b!1027877 m!946607))

(declare-fun m!946621 () Bool)

(assert (=> b!1027877 m!946621))

(assert (=> b!1027877 m!946611))

(declare-fun m!946623 () Bool)

(assert (=> b!1027877 m!946623))

(assert (=> b!1027867 m!946563))

(assert (=> b!1027867 m!946563))

(declare-fun m!946625 () Bool)

(assert (=> b!1027867 m!946625))

(declare-fun m!946627 () Bool)

(assert (=> b!1027868 m!946627))

(declare-fun m!946629 () Bool)

(assert (=> bm!43309 m!946629))

(assert (=> d!122717 m!946485))

(declare-fun m!946631 () Bool)

(assert (=> b!1027873 m!946631))

(assert (=> b!1027715 d!122717))

(declare-fun d!122719 () Bool)

(declare-fun e!580220 () Bool)

(assert (=> d!122719 e!580220))

(declare-fun res!687993 () Bool)

(assert (=> d!122719 (=> (not res!687993) (not e!580220))))

(assert (=> d!122719 (= res!687993 (and (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427)))))))

(declare-fun lt!452648 () Unit!33514)

(declare-fun choose!1688 (array!64630 array!64632 (_ BitVec 32) (_ BitVec 32) V!37269 V!37269 (_ BitVec 32) (_ BitVec 64) Int) Unit!33514)

(assert (=> d!122719 (= lt!452648 (choose!1688 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (index!41023 lt!452501) key!909 (defaultEntry!6096 thiss!1427)))))

(assert (=> d!122719 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122719 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!3 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (index!41023 lt!452501) key!909 (defaultEntry!6096 thiss!1427)) lt!452648)))

(declare-fun b!1027884 () Bool)

(assert (=> b!1027884 (= e!580220 (= (-!479 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) key!909) (getCurrentListMap!3910 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))))))

(assert (=> b!1027884 (bvslt (index!41023 lt!452501) (size!31634 (_values!6119 thiss!1427)))))

(assert (= (and d!122719 res!687993) b!1027884))

(declare-fun b_lambda!15781 () Bool)

(assert (=> (not b_lambda!15781) (not b!1027884)))

(assert (=> b!1027884 t!30995))

(declare-fun b_and!32867 () Bool)

(assert (= b_and!32865 (and (=> t!30995 result!14115) b_and!32867)))

(declare-fun m!946633 () Bool)

(assert (=> d!122719 m!946633))

(assert (=> d!122719 m!946485))

(assert (=> b!1027884 m!946397))

(declare-fun m!946635 () Bool)

(assert (=> b!1027884 m!946635))

(assert (=> b!1027884 m!946415))

(assert (=> b!1027884 m!946429))

(assert (=> b!1027884 m!946413))

(assert (=> b!1027884 m!946415))

(assert (=> b!1027884 m!946417))

(assert (=> b!1027715 d!122719))

(declare-fun b!1027895 () Bool)

(declare-fun e!580232 () Bool)

(declare-fun e!580231 () Bool)

(assert (=> b!1027895 (= e!580232 e!580231)))

(declare-fun res!688001 () Bool)

(assert (=> b!1027895 (=> (not res!688001) (not e!580231))))

(declare-fun e!580230 () Bool)

(assert (=> b!1027895 (= res!688001 (not e!580230))))

(declare-fun res!688000 () Bool)

(assert (=> b!1027895 (=> (not res!688000) (not e!580230))))

(assert (=> b!1027895 (= res!688000 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1027896 () Bool)

(declare-fun e!580229 () Bool)

(declare-fun call!43319 () Bool)

(assert (=> b!1027896 (= e!580229 call!43319)))

(declare-fun b!1027897 () Bool)

(assert (=> b!1027897 (= e!580229 call!43319)))

(declare-fun b!1027898 () Bool)

(declare-fun contains!5983 (List!21918 (_ BitVec 64)) Bool)

(assert (=> b!1027898 (= e!580230 (contains!5983 Nil!21915 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun bm!43316 () Bool)

(declare-fun c!103603 () Bool)

(assert (=> bm!43316 (= call!43319 (arrayNoDuplicates!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103603 (Cons!21914 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) Nil!21915) Nil!21915)))))

(declare-fun b!1027899 () Bool)

(assert (=> b!1027899 (= e!580231 e!580229)))

(assert (=> b!1027899 (= c!103603 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun d!122721 () Bool)

(declare-fun res!688002 () Bool)

(assert (=> d!122721 (=> res!688002 e!580232)))

(assert (=> d!122721 (= res!688002 (bvsge #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(assert (=> d!122721 (= (arrayNoDuplicates!0 lt!452500 #b00000000000000000000000000000000 Nil!21915) e!580232)))

(assert (= (and d!122721 (not res!688002)) b!1027895))

(assert (= (and b!1027895 res!688000) b!1027898))

(assert (= (and b!1027895 res!688001) b!1027899))

(assert (= (and b!1027899 c!103603) b!1027896))

(assert (= (and b!1027899 (not c!103603)) b!1027897))

(assert (= (or b!1027896 b!1027897) bm!43316))

(assert (=> b!1027895 m!946563))

(assert (=> b!1027895 m!946563))

(assert (=> b!1027895 m!946565))

(assert (=> b!1027898 m!946563))

(assert (=> b!1027898 m!946563))

(declare-fun m!946637 () Bool)

(assert (=> b!1027898 m!946637))

(assert (=> bm!43316 m!946563))

(declare-fun m!946639 () Bool)

(assert (=> bm!43316 m!946639))

(assert (=> b!1027899 m!946563))

(assert (=> b!1027899 m!946563))

(assert (=> b!1027899 m!946565))

(assert (=> b!1027715 d!122721))

(declare-fun d!122723 () Bool)

(declare-fun e!580235 () Bool)

(assert (=> d!122723 e!580235))

(declare-fun res!688005 () Bool)

(assert (=> d!122723 (=> (not res!688005) (not e!580235))))

(assert (=> d!122723 (= res!688005 (and (bvsge (index!41023 lt!452501) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452501) (size!31633 (_keys!11242 thiss!1427)))))))

(declare-fun lt!452651 () Unit!33514)

(declare-fun choose!53 (array!64630 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21918) Unit!33514)

(assert (=> d!122723 (= lt!452651 (choose!53 (_keys!11242 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41023 lt!452501) #b00000000000000000000000000000000 Nil!21915))))

(assert (=> d!122723 (bvslt (size!31633 (_keys!11242 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!122723 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11242 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41023 lt!452501) #b00000000000000000000000000000000 Nil!21915) lt!452651)))

(declare-fun b!1027902 () Bool)

(assert (=> b!1027902 (= e!580235 (arrayNoDuplicates!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 Nil!21915))))

(assert (= (and d!122723 res!688005) b!1027902))

(declare-fun m!946641 () Bool)

(assert (=> d!122723 m!946641))

(assert (=> b!1027902 m!946397))

(declare-fun m!946643 () Bool)

(assert (=> b!1027902 m!946643))

(assert (=> b!1027715 d!122723))

(declare-fun d!122725 () Bool)

(assert (=> d!122725 (= (validMask!0 (mask!29815 (_2!7819 lt!452505))) (and (or (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000000000111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000000001111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000000011111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000000111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000001111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000011111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000000111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000001111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000011111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000000111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000001111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000011111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000000111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000001111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000011111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000000111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000001111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000011111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000000111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000001111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000011111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000000111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000001111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000011111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00000111111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00001111111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00011111111111111111111111111111) (= (mask!29815 (_2!7819 lt!452505)) #b00111111111111111111111111111111)) (bvsle (mask!29815 (_2!7819 lt!452505)) #b00111111111111111111111111111111)))))

(assert (=> b!1027715 d!122725))

(declare-fun d!122727 () Bool)

(assert (=> d!122727 (= (array_inv!23939 (_keys!11242 thiss!1427)) (bvsge (size!31633 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027712 d!122727))

(declare-fun d!122729 () Bool)

(assert (=> d!122729 (= (array_inv!23940 (_values!6119 thiss!1427)) (bvsge (size!31634 (_values!6119 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1027712 d!122729))

(declare-fun d!122731 () Bool)

(declare-fun res!688012 () Bool)

(declare-fun e!580238 () Bool)

(assert (=> d!122731 (=> (not res!688012) (not e!580238))))

(declare-fun simpleValid!390 (LongMapFixedSize!5484) Bool)

(assert (=> d!122731 (= res!688012 (simpleValid!390 thiss!1427))))

(assert (=> d!122731 (= (valid!2030 thiss!1427) e!580238)))

(declare-fun b!1027909 () Bool)

(declare-fun res!688013 () Bool)

(assert (=> b!1027909 (=> (not res!688013) (not e!580238))))

(assert (=> b!1027909 (= res!688013 (= (arrayCountValidKeys!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (_size!2797 thiss!1427)))))

(declare-fun b!1027910 () Bool)

(declare-fun res!688014 () Bool)

(assert (=> b!1027910 (=> (not res!688014) (not e!580238))))

(assert (=> b!1027910 (= res!688014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(declare-fun b!1027911 () Bool)

(assert (=> b!1027911 (= e!580238 (arrayNoDuplicates!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 Nil!21915))))

(assert (= (and d!122731 res!688012) b!1027909))

(assert (= (and b!1027909 res!688013) b!1027910))

(assert (= (and b!1027910 res!688014) b!1027911))

(declare-fun m!946645 () Bool)

(assert (=> d!122731 m!946645))

(assert (=> b!1027909 m!946411))

(declare-fun m!946647 () Bool)

(assert (=> b!1027910 m!946647))

(declare-fun m!946649 () Bool)

(assert (=> b!1027911 m!946649))

(assert (=> start!89646 d!122731))

(declare-fun b!1027924 () Bool)

(declare-fun c!103611 () Bool)

(declare-fun lt!452661 () (_ BitVec 64))

(assert (=> b!1027924 (= c!103611 (= lt!452661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580245 () SeekEntryResult!9663)

(declare-fun e!580247 () SeekEntryResult!9663)

(assert (=> b!1027924 (= e!580245 e!580247)))

(declare-fun b!1027925 () Bool)

(declare-fun lt!452660 () SeekEntryResult!9663)

(assert (=> b!1027925 (= e!580247 (MissingZero!9663 (index!41024 lt!452660)))))

(declare-fun b!1027926 () Bool)

(declare-fun lt!452662 () SeekEntryResult!9663)

(assert (=> b!1027926 (= e!580247 (ite ((_ is MissingVacant!9663) lt!452662) (MissingZero!9663 (index!41025 lt!452662)) lt!452662))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64630 (_ BitVec 32)) SeekEntryResult!9663)

(assert (=> b!1027926 (= lt!452662 (seekKeyOrZeroReturnVacant!0 (x!91444 lt!452660) (index!41024 lt!452660) (index!41024 lt!452660) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(declare-fun d!122733 () Bool)

(declare-fun lt!452663 () SeekEntryResult!9663)

(assert (=> d!122733 (and (or ((_ is MissingVacant!9663) lt!452663) (not ((_ is Found!9663) lt!452663)) (and (bvsge (index!41023 lt!452663) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452663) (size!31633 (_keys!11242 thiss!1427))))) (not ((_ is MissingVacant!9663) lt!452663)) (or (not ((_ is Found!9663) lt!452663)) (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452663)) key!909)))))

(declare-fun e!580246 () SeekEntryResult!9663)

(assert (=> d!122733 (= lt!452663 e!580246)))

(declare-fun c!103610 () Bool)

(assert (=> d!122733 (= c!103610 (and ((_ is Intermediate!9663) lt!452660) (undefined!10475 lt!452660)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64630 (_ BitVec 32)) SeekEntryResult!9663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!122733 (= lt!452660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29815 thiss!1427)) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(assert (=> d!122733 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122733 (= (seekEntry!0 key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)) lt!452663)))

(declare-fun b!1027927 () Bool)

(assert (=> b!1027927 (= e!580246 e!580245)))

(assert (=> b!1027927 (= lt!452661 (select (arr!31119 (_keys!11242 thiss!1427)) (index!41024 lt!452660)))))

(declare-fun c!103612 () Bool)

(assert (=> b!1027927 (= c!103612 (= lt!452661 key!909))))

(declare-fun b!1027928 () Bool)

(assert (=> b!1027928 (= e!580246 Undefined!9663)))

(declare-fun b!1027929 () Bool)

(assert (=> b!1027929 (= e!580245 (Found!9663 (index!41024 lt!452660)))))

(assert (= (and d!122733 c!103610) b!1027928))

(assert (= (and d!122733 (not c!103610)) b!1027927))

(assert (= (and b!1027927 c!103612) b!1027929))

(assert (= (and b!1027927 (not c!103612)) b!1027924))

(assert (= (and b!1027924 c!103611) b!1027925))

(assert (= (and b!1027924 (not c!103611)) b!1027926))

(declare-fun m!946651 () Bool)

(assert (=> b!1027926 m!946651))

(declare-fun m!946653 () Bool)

(assert (=> d!122733 m!946653))

(declare-fun m!946655 () Bool)

(assert (=> d!122733 m!946655))

(assert (=> d!122733 m!946655))

(declare-fun m!946657 () Bool)

(assert (=> d!122733 m!946657))

(assert (=> d!122733 m!946485))

(declare-fun m!946659 () Bool)

(assert (=> b!1027927 m!946659))

(assert (=> b!1027717 d!122733))

(declare-fun mapIsEmpty!37883 () Bool)

(declare-fun mapRes!37883 () Bool)

(assert (=> mapIsEmpty!37883 mapRes!37883))

(declare-fun b!1027936 () Bool)

(declare-fun e!580252 () Bool)

(assert (=> b!1027936 (= e!580252 tp_is_empty!24297)))

(declare-fun b!1027937 () Bool)

(declare-fun e!580253 () Bool)

(assert (=> b!1027937 (= e!580253 tp_is_empty!24297)))

(declare-fun condMapEmpty!37883 () Bool)

(declare-fun mapDefault!37883 () ValueCell!11445)

(assert (=> mapNonEmpty!37877 (= condMapEmpty!37883 (= mapRest!37877 ((as const (Array (_ BitVec 32) ValueCell!11445)) mapDefault!37883)))))

(assert (=> mapNonEmpty!37877 (= tp!72780 (and e!580253 mapRes!37883))))

(declare-fun mapNonEmpty!37883 () Bool)

(declare-fun tp!72790 () Bool)

(assert (=> mapNonEmpty!37883 (= mapRes!37883 (and tp!72790 e!580252))))

(declare-fun mapRest!37883 () (Array (_ BitVec 32) ValueCell!11445))

(declare-fun mapValue!37883 () ValueCell!11445)

(declare-fun mapKey!37883 () (_ BitVec 32))

(assert (=> mapNonEmpty!37883 (= mapRest!37877 (store mapRest!37883 mapKey!37883 mapValue!37883))))

(assert (= (and mapNonEmpty!37877 condMapEmpty!37883) mapIsEmpty!37883))

(assert (= (and mapNonEmpty!37877 (not condMapEmpty!37883)) mapNonEmpty!37883))

(assert (= (and mapNonEmpty!37883 ((_ is ValueCellFull!11445) mapValue!37883)) b!1027936))

(assert (= (and mapNonEmpty!37877 ((_ is ValueCellFull!11445) mapDefault!37883)) b!1027937))

(declare-fun m!946661 () Bool)

(assert (=> mapNonEmpty!37883 m!946661))

(declare-fun b_lambda!15783 () Bool)

(assert (= b_lambda!15777 (or (and b!1027712 b_free!20577) b_lambda!15783)))

(declare-fun b_lambda!15785 () Bool)

(assert (= b_lambda!15781 (or (and b!1027712 b_free!20577) b_lambda!15785)))

(declare-fun b_lambda!15787 () Bool)

(assert (= b_lambda!15779 (or (and b!1027712 b_free!20577) b_lambda!15787)))

(check-sat (not b!1027858) (not b!1027872) (not bm!43309) (not bm!43308) (not b!1027826) (not d!122703) (not d!122701) (not b!1027748) (not b!1027800) (not b!1027867) (not b!1027877) (not b_lambda!15775) (not b!1027909) (not b!1027806) (not b_next!20577) (not mapNonEmpty!37883) (not bm!43293) (not bm!43294) (not b_lambda!15783) (not b!1027848) (not bm!43296) (not d!122733) (not b!1027840) (not b!1027797) (not b!1027798) (not b!1027803) (not bm!43306) (not b!1027874) tp_is_empty!24297 (not b!1027821) (not bm!43307) (not b!1027884) (not b!1027836) (not bm!43310) (not bm!43303) (not b!1027857) (not b!1027804) (not b!1027868) (not bm!43295) (not d!122719) (not d!122723) (not d!122707) (not b!1027910) (not d!122731) (not b!1027802) (not b!1027898) (not b_lambda!15787) (not bm!43302) (not b!1027876) (not b!1027870) b_and!32867 (not b!1027895) (not b_lambda!15785) (not b!1027823) (not bm!43316) (not d!122705) (not b!1027820) (not d!122699) (not b!1027807) (not b!1027926) (not b!1027873) (not d!122717) (not b!1027902) (not b!1027911) (not b!1027899))
(check-sat b_and!32867 (not b_next!20577))
(get-model)

(declare-fun b!1027938 () Bool)

(declare-fun e!580255 () (_ BitVec 32))

(declare-fun call!43320 () (_ BitVec 32))

(assert (=> b!1027938 (= e!580255 (bvadd #b00000000000000000000000000000001 call!43320))))

(declare-fun b!1027939 () Bool)

(declare-fun e!580254 () (_ BitVec 32))

(assert (=> b!1027939 (= e!580254 e!580255)))

(declare-fun c!103614 () Bool)

(assert (=> b!1027939 (= c!103614 (validKeyInArray!0 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1027940 () Bool)

(assert (=> b!1027940 (= e!580255 call!43320)))

(declare-fun bm!43317 () Bool)

(assert (=> bm!43317 (= call!43320 (arrayCountValidKeys!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun d!122735 () Bool)

(declare-fun lt!452664 () (_ BitVec 32))

(assert (=> d!122735 (and (bvsge lt!452664 #b00000000000000000000000000000000) (bvsle lt!452664 (bvsub (size!31633 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!122735 (= lt!452664 e!580254)))

(declare-fun c!103613 () Bool)

(assert (=> d!122735 (= c!103613 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122735 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31633 (_keys!11242 thiss!1427)) (size!31633 lt!452500)))))

(assert (=> d!122735 (= (arrayCountValidKeys!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))) lt!452664)))

(declare-fun b!1027941 () Bool)

(assert (=> b!1027941 (= e!580254 #b00000000000000000000000000000000)))

(assert (= (and d!122735 c!103613) b!1027941))

(assert (= (and d!122735 (not c!103613)) b!1027939))

(assert (= (and b!1027939 c!103614) b!1027938))

(assert (= (and b!1027939 (not c!103614)) b!1027940))

(assert (= (or b!1027938 b!1027940) bm!43317))

(declare-fun m!946663 () Bool)

(assert (=> b!1027939 m!946663))

(assert (=> b!1027939 m!946663))

(declare-fun m!946665 () Bool)

(assert (=> b!1027939 m!946665))

(declare-fun m!946667 () Bool)

(assert (=> bm!43317 m!946667))

(assert (=> bm!43302 d!122735))

(assert (=> b!1027909 d!122711))

(assert (=> b!1027884 d!122705))

(assert (=> b!1027884 d!122701))

(declare-fun b!1027942 () Bool)

(declare-fun res!688015 () Bool)

(declare-fun e!580268 () Bool)

(assert (=> b!1027942 (=> (not res!688015) (not e!580268))))

(declare-fun e!580266 () Bool)

(assert (=> b!1027942 (= res!688015 e!580266)))

(declare-fun c!103615 () Bool)

(assert (=> b!1027942 (= c!103615 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1027944 () Bool)

(declare-fun e!580267 () Bool)

(assert (=> b!1027944 (= e!580266 e!580267)))

(declare-fun res!688022 () Bool)

(declare-fun call!43324 () Bool)

(assert (=> b!1027944 (= res!688022 call!43324)))

(assert (=> b!1027944 (=> (not res!688022) (not e!580267))))

(declare-fun b!1027945 () Bool)

(declare-fun e!580259 () ListLongMap!13775)

(declare-fun call!43321 () ListLongMap!13775)

(assert (=> b!1027945 (= e!580259 call!43321)))

(declare-fun bm!43318 () Bool)

(declare-fun call!43323 () ListLongMap!13775)

(assert (=> bm!43318 (= call!43323 (getCurrentListMapNoExtraKeys!3528 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun b!1027946 () Bool)

(declare-fun e!580260 () Bool)

(declare-fun call!43326 () Bool)

(assert (=> b!1027946 (= e!580260 (not call!43326))))

(declare-fun b!1027947 () Bool)

(declare-fun e!580257 () Unit!33514)

(declare-fun Unit!33524 () Unit!33514)

(assert (=> b!1027947 (= e!580257 Unit!33524)))

(declare-fun b!1027948 () Bool)

(declare-fun e!580265 () Bool)

(declare-fun e!580261 () Bool)

(assert (=> b!1027948 (= e!580265 e!580261)))

(declare-fun res!688020 () Bool)

(assert (=> b!1027948 (=> (not res!688020) (not e!580261))))

(declare-fun lt!452678 () ListLongMap!13775)

(assert (=> b!1027948 (= res!688020 (contains!5982 lt!452678 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> b!1027948 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun b!1027949 () Bool)

(declare-fun e!580256 () Bool)

(assert (=> b!1027949 (= e!580256 (= (apply!935 lt!452678 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5932 thiss!1427)))))

(declare-fun bm!43319 () Bool)

(declare-fun c!103620 () Bool)

(declare-fun call!43325 () ListLongMap!13775)

(declare-fun c!103619 () Bool)

(declare-fun call!43322 () ListLongMap!13775)

(assert (=> bm!43319 (= call!43322 (+!3058 (ite c!103620 call!43323 (ite c!103619 call!43325 call!43321)) (ite (or c!103620 c!103619) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(declare-fun bm!43320 () Bool)

(assert (=> bm!43320 (= call!43326 (contains!5982 lt!452678 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027950 () Bool)

(declare-fun c!103617 () Bool)

(assert (=> b!1027950 (= c!103617 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580258 () ListLongMap!13775)

(assert (=> b!1027950 (= e!580258 e!580259)))

(declare-fun b!1027951 () Bool)

(assert (=> b!1027951 (= e!580261 (= (apply!935 lt!452678 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)) (get!16352 (select (arr!31120 (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427)))) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027951 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31634 (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))))))))

(assert (=> b!1027951 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun b!1027943 () Bool)

(assert (=> b!1027943 (= e!580260 e!580256)))

(declare-fun res!688016 () Bool)

(assert (=> b!1027943 (= res!688016 call!43326)))

(assert (=> b!1027943 (=> (not res!688016) (not e!580256))))

(declare-fun d!122737 () Bool)

(assert (=> d!122737 e!580268))

(declare-fun res!688023 () Bool)

(assert (=> d!122737 (=> (not res!688023) (not e!580268))))

(assert (=> d!122737 (= res!688023 (or (bvsge #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))))

(declare-fun lt!452668 () ListLongMap!13775)

(assert (=> d!122737 (= lt!452678 lt!452668)))

(declare-fun lt!452673 () Unit!33514)

(assert (=> d!122737 (= lt!452673 e!580257)))

(declare-fun c!103616 () Bool)

(declare-fun e!580262 () Bool)

(assert (=> d!122737 (= c!103616 e!580262)))

(declare-fun res!688017 () Bool)

(assert (=> d!122737 (=> (not res!688017) (not e!580262))))

(assert (=> d!122737 (= res!688017 (bvslt #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun e!580263 () ListLongMap!13775)

(assert (=> d!122737 (= lt!452668 e!580263)))

(assert (=> d!122737 (= c!103620 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!122737 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122737 (= (getCurrentListMap!3910 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) lt!452678)))

(declare-fun b!1027952 () Bool)

(assert (=> b!1027952 (= e!580268 e!580260)))

(declare-fun c!103618 () Bool)

(assert (=> b!1027952 (= c!103618 (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027953 () Bool)

(assert (=> b!1027953 (= e!580267 (= (apply!935 lt!452678 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5932 thiss!1427)))))

(declare-fun b!1027954 () Bool)

(assert (=> b!1027954 (= e!580263 (+!3058 call!43322 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))

(declare-fun b!1027955 () Bool)

(assert (=> b!1027955 (= e!580262 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!43321 () Bool)

(assert (=> bm!43321 (= call!43324 (contains!5982 lt!452678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027956 () Bool)

(assert (=> b!1027956 (= e!580263 e!580258)))

(assert (=> b!1027956 (= c!103619 (and (not (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5828 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1027957 () Bool)

(declare-fun e!580264 () Bool)

(assert (=> b!1027957 (= e!580264 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun bm!43322 () Bool)

(assert (=> bm!43322 (= call!43321 call!43325)))

(declare-fun b!1027958 () Bool)

(declare-fun lt!452676 () Unit!33514)

(assert (=> b!1027958 (= e!580257 lt!452676)))

(declare-fun lt!452669 () ListLongMap!13775)

(assert (=> b!1027958 (= lt!452669 (getCurrentListMapNoExtraKeys!3528 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452684 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452684 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452666 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452666 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!452667 () Unit!33514)

(assert (=> b!1027958 (= lt!452667 (addStillContains!623 lt!452669 lt!452684 (zeroValue!5932 thiss!1427) lt!452666))))

(assert (=> b!1027958 (contains!5982 (+!3058 lt!452669 (tuple2!15621 lt!452684 (zeroValue!5932 thiss!1427))) lt!452666)))

(declare-fun lt!452686 () Unit!33514)

(assert (=> b!1027958 (= lt!452686 lt!452667)))

(declare-fun lt!452670 () ListLongMap!13775)

(assert (=> b!1027958 (= lt!452670 (getCurrentListMapNoExtraKeys!3528 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452674 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452674 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452685 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452685 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!452672 () Unit!33514)

(assert (=> b!1027958 (= lt!452672 (addApplyDifferent!475 lt!452670 lt!452674 (minValue!5932 thiss!1427) lt!452685))))

(assert (=> b!1027958 (= (apply!935 (+!3058 lt!452670 (tuple2!15621 lt!452674 (minValue!5932 thiss!1427))) lt!452685) (apply!935 lt!452670 lt!452685))))

(declare-fun lt!452665 () Unit!33514)

(assert (=> b!1027958 (= lt!452665 lt!452672)))

(declare-fun lt!452677 () ListLongMap!13775)

(assert (=> b!1027958 (= lt!452677 (getCurrentListMapNoExtraKeys!3528 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452679 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452679 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452683 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452683 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!452680 () Unit!33514)

(assert (=> b!1027958 (= lt!452680 (addApplyDifferent!475 lt!452677 lt!452679 (zeroValue!5932 thiss!1427) lt!452683))))

(assert (=> b!1027958 (= (apply!935 (+!3058 lt!452677 (tuple2!15621 lt!452679 (zeroValue!5932 thiss!1427))) lt!452683) (apply!935 lt!452677 lt!452683))))

(declare-fun lt!452671 () Unit!33514)

(assert (=> b!1027958 (= lt!452671 lt!452680)))

(declare-fun lt!452682 () ListLongMap!13775)

(assert (=> b!1027958 (= lt!452682 (getCurrentListMapNoExtraKeys!3528 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(declare-fun lt!452675 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452675 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!452681 () (_ BitVec 64))

(assert (=> b!1027958 (= lt!452681 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000))))

(assert (=> b!1027958 (= lt!452676 (addApplyDifferent!475 lt!452682 lt!452675 (minValue!5932 thiss!1427) lt!452681))))

(assert (=> b!1027958 (= (apply!935 (+!3058 lt!452682 (tuple2!15621 lt!452675 (minValue!5932 thiss!1427))) lt!452681) (apply!935 lt!452682 lt!452681))))

(declare-fun b!1027959 () Bool)

(declare-fun res!688021 () Bool)

(assert (=> b!1027959 (=> (not res!688021) (not e!580268))))

(assert (=> b!1027959 (= res!688021 e!580265)))

(declare-fun res!688019 () Bool)

(assert (=> b!1027959 (=> res!688019 e!580265)))

(assert (=> b!1027959 (= res!688019 (not e!580264))))

(declare-fun res!688018 () Bool)

(assert (=> b!1027959 (=> (not res!688018) (not e!580264))))

(assert (=> b!1027959 (= res!688018 (bvslt #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun bm!43323 () Bool)

(declare-fun call!43327 () ListLongMap!13775)

(assert (=> bm!43323 (= call!43327 call!43322)))

(declare-fun bm!43324 () Bool)

(assert (=> bm!43324 (= call!43325 call!43323)))

(declare-fun b!1027960 () Bool)

(assert (=> b!1027960 (= e!580258 call!43327)))

(declare-fun b!1027961 () Bool)

(assert (=> b!1027961 (= e!580266 (not call!43324))))

(declare-fun b!1027962 () Bool)

(assert (=> b!1027962 (= e!580259 call!43327)))

(assert (= (and d!122737 c!103620) b!1027954))

(assert (= (and d!122737 (not c!103620)) b!1027956))

(assert (= (and b!1027956 c!103619) b!1027960))

(assert (= (and b!1027956 (not c!103619)) b!1027950))

(assert (= (and b!1027950 c!103617) b!1027962))

(assert (= (and b!1027950 (not c!103617)) b!1027945))

(assert (= (or b!1027962 b!1027945) bm!43322))

(assert (= (or b!1027960 bm!43322) bm!43324))

(assert (= (or b!1027960 b!1027962) bm!43323))

(assert (= (or b!1027954 bm!43324) bm!43318))

(assert (= (or b!1027954 bm!43323) bm!43319))

(assert (= (and d!122737 res!688017) b!1027955))

(assert (= (and d!122737 c!103616) b!1027958))

(assert (= (and d!122737 (not c!103616)) b!1027947))

(assert (= (and d!122737 res!688023) b!1027959))

(assert (= (and b!1027959 res!688018) b!1027957))

(assert (= (and b!1027959 (not res!688019)) b!1027948))

(assert (= (and b!1027948 res!688020) b!1027951))

(assert (= (and b!1027959 res!688021) b!1027942))

(assert (= (and b!1027942 c!103615) b!1027944))

(assert (= (and b!1027942 (not c!103615)) b!1027961))

(assert (= (and b!1027944 res!688022) b!1027953))

(assert (= (or b!1027944 b!1027961) bm!43321))

(assert (= (and b!1027942 res!688015) b!1027952))

(assert (= (and b!1027952 c!103618) b!1027943))

(assert (= (and b!1027952 (not c!103618)) b!1027946))

(assert (= (and b!1027943 res!688016) b!1027949))

(assert (= (or b!1027943 b!1027946) bm!43320))

(declare-fun b_lambda!15789 () Bool)

(assert (=> (not b_lambda!15789) (not b!1027951)))

(assert (=> b!1027951 t!30995))

(declare-fun b_and!32869 () Bool)

(assert (= b_and!32867 (and (=> t!30995 result!14115) b_and!32869)))

(declare-fun m!946669 () Bool)

(assert (=> bm!43319 m!946669))

(declare-fun m!946671 () Bool)

(assert (=> b!1027955 m!946671))

(assert (=> b!1027955 m!946671))

(declare-fun m!946673 () Bool)

(assert (=> b!1027955 m!946673))

(declare-fun m!946675 () Bool)

(assert (=> bm!43321 m!946675))

(assert (=> b!1027957 m!946671))

(assert (=> b!1027957 m!946671))

(assert (=> b!1027957 m!946673))

(assert (=> b!1027951 m!946671))

(assert (=> b!1027951 m!946671))

(declare-fun m!946677 () Bool)

(assert (=> b!1027951 m!946677))

(declare-fun m!946679 () Bool)

(assert (=> b!1027951 m!946679))

(assert (=> b!1027951 m!946429))

(declare-fun m!946681 () Bool)

(assert (=> b!1027951 m!946681))

(assert (=> b!1027951 m!946429))

(assert (=> b!1027951 m!946679))

(declare-fun m!946683 () Bool)

(assert (=> b!1027953 m!946683))

(declare-fun m!946685 () Bool)

(assert (=> bm!43318 m!946685))

(declare-fun m!946687 () Bool)

(assert (=> b!1027958 m!946687))

(declare-fun m!946689 () Bool)

(assert (=> b!1027958 m!946689))

(declare-fun m!946691 () Bool)

(assert (=> b!1027958 m!946691))

(declare-fun m!946693 () Bool)

(assert (=> b!1027958 m!946693))

(declare-fun m!946695 () Bool)

(assert (=> b!1027958 m!946695))

(declare-fun m!946697 () Bool)

(assert (=> b!1027958 m!946697))

(declare-fun m!946699 () Bool)

(assert (=> b!1027958 m!946699))

(assert (=> b!1027958 m!946687))

(declare-fun m!946701 () Bool)

(assert (=> b!1027958 m!946701))

(declare-fun m!946703 () Bool)

(assert (=> b!1027958 m!946703))

(declare-fun m!946705 () Bool)

(assert (=> b!1027958 m!946705))

(assert (=> b!1027958 m!946685))

(declare-fun m!946707 () Bool)

(assert (=> b!1027958 m!946707))

(assert (=> b!1027958 m!946693))

(declare-fun m!946709 () Bool)

(assert (=> b!1027958 m!946709))

(assert (=> b!1027958 m!946671))

(declare-fun m!946711 () Bool)

(assert (=> b!1027958 m!946711))

(assert (=> b!1027958 m!946699))

(declare-fun m!946713 () Bool)

(assert (=> b!1027958 m!946713))

(assert (=> b!1027958 m!946703))

(declare-fun m!946715 () Bool)

(assert (=> b!1027958 m!946715))

(assert (=> b!1027948 m!946671))

(assert (=> b!1027948 m!946671))

(declare-fun m!946717 () Bool)

(assert (=> b!1027948 m!946717))

(declare-fun m!946719 () Bool)

(assert (=> b!1027949 m!946719))

(declare-fun m!946721 () Bool)

(assert (=> bm!43320 m!946721))

(assert (=> d!122737 m!946485))

(declare-fun m!946723 () Bool)

(assert (=> b!1027954 m!946723))

(assert (=> b!1027884 d!122737))

(declare-fun b!1027963 () Bool)

(declare-fun e!580270 () (_ BitVec 32))

(declare-fun call!43328 () (_ BitVec 32))

(assert (=> b!1027963 (= e!580270 (bvadd #b00000000000000000000000000000001 call!43328))))

(declare-fun b!1027964 () Bool)

(declare-fun e!580269 () (_ BitVec 32))

(assert (=> b!1027964 (= e!580269 e!580270)))

(declare-fun c!103622 () Bool)

(assert (=> b!1027964 (= c!103622 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1027965 () Bool)

(assert (=> b!1027965 (= e!580270 call!43328)))

(declare-fun bm!43325 () Bool)

(assert (=> bm!43325 (= call!43328 (arrayCountValidKeys!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun d!122739 () Bool)

(declare-fun lt!452687 () (_ BitVec 32))

(assert (=> d!122739 (and (bvsge lt!452687 #b00000000000000000000000000000000) (bvsle lt!452687 (bvsub (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!122739 (= lt!452687 e!580269)))

(declare-fun c!103621 () Bool)

(assert (=> d!122739 (= c!103621 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122739 (and (bvsle #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31633 (_keys!11242 thiss!1427)) (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(assert (=> d!122739 (= (arrayCountValidKeys!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) lt!452687)))

(declare-fun b!1027966 () Bool)

(assert (=> b!1027966 (= e!580269 #b00000000000000000000000000000000)))

(assert (= (and d!122739 c!103621) b!1027966))

(assert (= (and d!122739 (not c!103621)) b!1027964))

(assert (= (and b!1027964 c!103622) b!1027963))

(assert (= (and b!1027964 (not c!103622)) b!1027965))

(assert (= (or b!1027963 b!1027965) bm!43325))

(assert (=> b!1027964 m!946671))

(assert (=> b!1027964 m!946671))

(assert (=> b!1027964 m!946673))

(declare-fun m!946725 () Bool)

(assert (=> bm!43325 m!946725))

(assert (=> b!1027823 d!122739))

(assert (=> b!1027823 d!122711))

(declare-fun b!1027967 () Bool)

(declare-fun e!580274 () Bool)

(declare-fun e!580273 () Bool)

(assert (=> b!1027967 (= e!580274 e!580273)))

(declare-fun res!688025 () Bool)

(assert (=> b!1027967 (=> (not res!688025) (not e!580273))))

(declare-fun e!580272 () Bool)

(assert (=> b!1027967 (= res!688025 (not e!580272))))

(declare-fun res!688024 () Bool)

(assert (=> b!1027967 (=> (not res!688024) (not e!580272))))

(assert (=> b!1027967 (= res!688024 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027968 () Bool)

(declare-fun e!580271 () Bool)

(declare-fun call!43329 () Bool)

(assert (=> b!1027968 (= e!580271 call!43329)))

(declare-fun b!1027969 () Bool)

(assert (=> b!1027969 (= e!580271 call!43329)))

(declare-fun b!1027970 () Bool)

(assert (=> b!1027970 (= e!580272 (contains!5983 Nil!21915 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43326 () Bool)

(declare-fun c!103623 () Bool)

(assert (=> bm!43326 (= call!43329 (arrayNoDuplicates!0 (_keys!11242 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103623 (Cons!21914 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000) Nil!21915) Nil!21915)))))

(declare-fun b!1027971 () Bool)

(assert (=> b!1027971 (= e!580273 e!580271)))

(assert (=> b!1027971 (= c!103623 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!122741 () Bool)

(declare-fun res!688026 () Bool)

(assert (=> d!122741 (=> res!688026 e!580274)))

(assert (=> d!122741 (= res!688026 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122741 (= (arrayNoDuplicates!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 Nil!21915) e!580274)))

(assert (= (and d!122741 (not res!688026)) b!1027967))

(assert (= (and b!1027967 res!688024) b!1027970))

(assert (= (and b!1027967 res!688025) b!1027971))

(assert (= (and b!1027971 c!103623) b!1027968))

(assert (= (and b!1027971 (not c!103623)) b!1027969))

(assert (= (or b!1027968 b!1027969) bm!43326))

(assert (=> b!1027967 m!946491))

(assert (=> b!1027967 m!946491))

(assert (=> b!1027967 m!946493))

(assert (=> b!1027970 m!946491))

(assert (=> b!1027970 m!946491))

(declare-fun m!946727 () Bool)

(assert (=> b!1027970 m!946727))

(assert (=> bm!43326 m!946491))

(declare-fun m!946729 () Bool)

(assert (=> bm!43326 m!946729))

(assert (=> b!1027971 m!946491))

(assert (=> b!1027971 m!946491))

(assert (=> b!1027971 m!946493))

(assert (=> b!1027911 d!122741))

(declare-fun d!122743 () Bool)

(declare-fun e!580279 () Bool)

(assert (=> d!122743 e!580279))

(declare-fun res!688029 () Bool)

(assert (=> d!122743 (=> res!688029 e!580279)))

(declare-fun lt!452696 () Bool)

(assert (=> d!122743 (= res!688029 (not lt!452696))))

(declare-fun lt!452699 () Bool)

(assert (=> d!122743 (= lt!452696 lt!452699)))

(declare-fun lt!452698 () Unit!33514)

(declare-fun e!580280 () Unit!33514)

(assert (=> d!122743 (= lt!452698 e!580280)))

(declare-fun c!103626 () Bool)

(assert (=> d!122743 (= c!103626 lt!452699)))

(declare-fun containsKey!560 (List!21917 (_ BitVec 64)) Bool)

(assert (=> d!122743 (= lt!452699 (containsKey!560 (toList!6903 lt!452637) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(assert (=> d!122743 (= (contains!5982 lt!452637 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) lt!452696)))

(declare-fun b!1027978 () Bool)

(declare-fun lt!452697 () Unit!33514)

(assert (=> b!1027978 (= e!580280 lt!452697)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!392 (List!21917 (_ BitVec 64)) Unit!33514)

(assert (=> b!1027978 (= lt!452697 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452637) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-datatypes ((Option!638 0))(
  ( (Some!637 (v!14772 V!37269)) (None!636) )
))
(declare-fun isDefined!432 (Option!638) Bool)

(declare-fun getValueByKey!587 (List!21917 (_ BitVec 64)) Option!638)

(assert (=> b!1027978 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1027979 () Bool)

(declare-fun Unit!33525 () Unit!33514)

(assert (=> b!1027979 (= e!580280 Unit!33525)))

(declare-fun b!1027980 () Bool)

(assert (=> b!1027980 (= e!580279 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))))

(assert (= (and d!122743 c!103626) b!1027978))

(assert (= (and d!122743 (not c!103626)) b!1027979))

(assert (= (and d!122743 (not res!688029)) b!1027980))

(assert (=> d!122743 m!946563))

(declare-fun m!946731 () Bool)

(assert (=> d!122743 m!946731))

(assert (=> b!1027978 m!946563))

(declare-fun m!946733 () Bool)

(assert (=> b!1027978 m!946733))

(assert (=> b!1027978 m!946563))

(declare-fun m!946735 () Bool)

(assert (=> b!1027978 m!946735))

(assert (=> b!1027978 m!946735))

(declare-fun m!946737 () Bool)

(assert (=> b!1027978 m!946737))

(assert (=> b!1027980 m!946563))

(assert (=> b!1027980 m!946735))

(assert (=> b!1027980 m!946735))

(assert (=> b!1027980 m!946737))

(assert (=> b!1027867 d!122743))

(declare-fun d!122745 () Bool)

(assert (=> d!122745 (= (arrayCountValidKeys!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11242 thiss!1427) #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> d!122745 true))

(declare-fun _$79!8 () Unit!33514)

(assert (=> d!122745 (= (choose!82 (_keys!11242 thiss!1427) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) _$79!8)))

(declare-fun bs!29991 () Bool)

(assert (= bs!29991 d!122745))

(assert (=> bs!29991 m!946397))

(assert (=> bs!29991 m!946551))

(assert (=> bs!29991 m!946411))

(assert (=> d!122703 d!122745))

(declare-fun d!122747 () Bool)

(assert (=> d!122747 (= (validMask!0 (mask!29815 thiss!1427)) (and (or (= (mask!29815 thiss!1427) #b00000000000000000000000000000111) (= (mask!29815 thiss!1427) #b00000000000000000000000000001111) (= (mask!29815 thiss!1427) #b00000000000000000000000000011111) (= (mask!29815 thiss!1427) #b00000000000000000000000000111111) (= (mask!29815 thiss!1427) #b00000000000000000000000001111111) (= (mask!29815 thiss!1427) #b00000000000000000000000011111111) (= (mask!29815 thiss!1427) #b00000000000000000000000111111111) (= (mask!29815 thiss!1427) #b00000000000000000000001111111111) (= (mask!29815 thiss!1427) #b00000000000000000000011111111111) (= (mask!29815 thiss!1427) #b00000000000000000000111111111111) (= (mask!29815 thiss!1427) #b00000000000000000001111111111111) (= (mask!29815 thiss!1427) #b00000000000000000011111111111111) (= (mask!29815 thiss!1427) #b00000000000000000111111111111111) (= (mask!29815 thiss!1427) #b00000000000000001111111111111111) (= (mask!29815 thiss!1427) #b00000000000000011111111111111111) (= (mask!29815 thiss!1427) #b00000000000000111111111111111111) (= (mask!29815 thiss!1427) #b00000000000001111111111111111111) (= (mask!29815 thiss!1427) #b00000000000011111111111111111111) (= (mask!29815 thiss!1427) #b00000000000111111111111111111111) (= (mask!29815 thiss!1427) #b00000000001111111111111111111111) (= (mask!29815 thiss!1427) #b00000000011111111111111111111111) (= (mask!29815 thiss!1427) #b00000000111111111111111111111111) (= (mask!29815 thiss!1427) #b00000001111111111111111111111111) (= (mask!29815 thiss!1427) #b00000011111111111111111111111111) (= (mask!29815 thiss!1427) #b00000111111111111111111111111111) (= (mask!29815 thiss!1427) #b00001111111111111111111111111111) (= (mask!29815 thiss!1427) #b00011111111111111111111111111111) (= (mask!29815 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29815 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!122717 d!122747))

(declare-fun d!122749 () Bool)

(declare-fun e!580283 () Bool)

(assert (=> d!122749 e!580283))

(declare-fun res!688034 () Bool)

(assert (=> d!122749 (=> (not res!688034) (not e!580283))))

(declare-fun lt!452709 () ListLongMap!13775)

(assert (=> d!122749 (= res!688034 (contains!5982 lt!452709 (_1!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun lt!452711 () List!21917)

(assert (=> d!122749 (= lt!452709 (ListLongMap!13776 lt!452711))))

(declare-fun lt!452710 () Unit!33514)

(declare-fun lt!452708 () Unit!33514)

(assert (=> d!122749 (= lt!452710 lt!452708)))

(assert (=> d!122749 (= (getValueByKey!587 lt!452711 (_1!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))) (Some!637 (_2!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!276 (List!21917 (_ BitVec 64) V!37269) Unit!33514)

(assert (=> d!122749 (= lt!452708 (lemmaContainsTupThenGetReturnValue!276 lt!452711 (_1!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (_2!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun insertStrictlySorted!368 (List!21917 (_ BitVec 64) V!37269) List!21917)

(assert (=> d!122749 (= lt!452711 (insertStrictlySorted!368 (toList!6903 (ite c!103600 call!43312 (ite c!103599 call!43314 call!43310))) (_1!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (_2!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(assert (=> d!122749 (= (+!3058 (ite c!103600 call!43312 (ite c!103599 call!43314 call!43310)) (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) lt!452709)))

(declare-fun b!1027985 () Bool)

(declare-fun res!688035 () Bool)

(assert (=> b!1027985 (=> (not res!688035) (not e!580283))))

(assert (=> b!1027985 (= res!688035 (= (getValueByKey!587 (toList!6903 lt!452709) (_1!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))) (Some!637 (_2!7820 (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))))

(declare-fun b!1027986 () Bool)

(declare-fun contains!5984 (List!21917 tuple2!15620) Bool)

(assert (=> b!1027986 (= e!580283 (contains!5984 (toList!6903 lt!452709) (ite (or c!103600 c!103599) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (= (and d!122749 res!688034) b!1027985))

(assert (= (and b!1027985 res!688035) b!1027986))

(declare-fun m!946739 () Bool)

(assert (=> d!122749 m!946739))

(declare-fun m!946741 () Bool)

(assert (=> d!122749 m!946741))

(declare-fun m!946743 () Bool)

(assert (=> d!122749 m!946743))

(declare-fun m!946745 () Bool)

(assert (=> d!122749 m!946745))

(declare-fun m!946747 () Bool)

(assert (=> b!1027985 m!946747))

(declare-fun m!946749 () Bool)

(assert (=> b!1027986 m!946749))

(assert (=> bm!43308 d!122749))

(declare-fun d!122751 () Bool)

(declare-fun e!580284 () Bool)

(assert (=> d!122751 e!580284))

(declare-fun res!688036 () Bool)

(assert (=> d!122751 (=> res!688036 e!580284)))

(declare-fun lt!452712 () Bool)

(assert (=> d!122751 (= res!688036 (not lt!452712))))

(declare-fun lt!452715 () Bool)

(assert (=> d!122751 (= lt!452712 lt!452715)))

(declare-fun lt!452714 () Unit!33514)

(declare-fun e!580285 () Unit!33514)

(assert (=> d!122751 (= lt!452714 e!580285)))

(declare-fun c!103627 () Bool)

(assert (=> d!122751 (= c!103627 lt!452715)))

(assert (=> d!122751 (= lt!452715 (containsKey!560 (toList!6903 lt!452593) (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!122751 (= (contains!5982 lt!452593 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)) lt!452712)))

(declare-fun b!1027987 () Bool)

(declare-fun lt!452713 () Unit!33514)

(assert (=> b!1027987 (= e!580285 lt!452713)))

(assert (=> b!1027987 (= lt!452713 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452593) (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1027987 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1027988 () Bool)

(declare-fun Unit!33526 () Unit!33514)

(assert (=> b!1027988 (= e!580285 Unit!33526)))

(declare-fun b!1027989 () Bool)

(assert (=> b!1027989 (= e!580284 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!122751 c!103627) b!1027987))

(assert (= (and d!122751 (not c!103627)) b!1027988))

(assert (= (and d!122751 (not res!688036)) b!1027989))

(assert (=> d!122751 m!946491))

(declare-fun m!946751 () Bool)

(assert (=> d!122751 m!946751))

(assert (=> b!1027987 m!946491))

(declare-fun m!946753 () Bool)

(assert (=> b!1027987 m!946753))

(assert (=> b!1027987 m!946491))

(declare-fun m!946755 () Bool)

(assert (=> b!1027987 m!946755))

(assert (=> b!1027987 m!946755))

(declare-fun m!946757 () Bool)

(assert (=> b!1027987 m!946757))

(assert (=> b!1027989 m!946491))

(assert (=> b!1027989 m!946755))

(assert (=> b!1027989 m!946755))

(assert (=> b!1027989 m!946757))

(assert (=> b!1027797 d!122751))

(declare-fun d!122753 () Bool)

(declare-fun get!16353 (Option!638) V!37269)

(assert (=> d!122753 (= (apply!935 lt!452637 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) (get!16353 (getValueByKey!587 (toList!6903 lt!452637) (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))))

(declare-fun bs!29992 () Bool)

(assert (= bs!29992 d!122753))

(assert (=> bs!29992 m!946563))

(assert (=> bs!29992 m!946735))

(assert (=> bs!29992 m!946735))

(declare-fun m!946759 () Bool)

(assert (=> bs!29992 m!946759))

(assert (=> b!1027870 d!122753))

(declare-fun d!122755 () Bool)

(declare-fun c!103630 () Bool)

(assert (=> d!122755 (= c!103630 ((_ is ValueCellFull!11445) (select (arr!31120 lt!452502) #b00000000000000000000000000000000)))))

(declare-fun e!580288 () V!37269)

(assert (=> d!122755 (= (get!16352 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!580288)))

(declare-fun b!1027994 () Bool)

(declare-fun get!16354 (ValueCell!11445 V!37269) V!37269)

(assert (=> b!1027994 (= e!580288 (get!16354 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1027995 () Bool)

(declare-fun get!16355 (ValueCell!11445 V!37269) V!37269)

(assert (=> b!1027995 (= e!580288 (get!16355 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122755 c!103630) b!1027994))

(assert (= (and d!122755 (not c!103630)) b!1027995))

(assert (=> b!1027994 m!946587))

(assert (=> b!1027994 m!946429))

(declare-fun m!946761 () Bool)

(assert (=> b!1027994 m!946761))

(assert (=> b!1027995 m!946587))

(assert (=> b!1027995 m!946429))

(declare-fun m!946763 () Bool)

(assert (=> b!1027995 m!946763))

(assert (=> b!1027870 d!122755))

(declare-fun d!122757 () Bool)

(declare-fun e!580289 () Bool)

(assert (=> d!122757 e!580289))

(declare-fun res!688037 () Bool)

(assert (=> d!122757 (=> res!688037 e!580289)))

(declare-fun lt!452716 () Bool)

(assert (=> d!122757 (= res!688037 (not lt!452716))))

(declare-fun lt!452719 () Bool)

(assert (=> d!122757 (= lt!452716 lt!452719)))

(declare-fun lt!452718 () Unit!33514)

(declare-fun e!580290 () Unit!33514)

(assert (=> d!122757 (= lt!452718 e!580290)))

(declare-fun c!103631 () Bool)

(assert (=> d!122757 (= c!103631 lt!452719)))

(assert (=> d!122757 (= lt!452719 (containsKey!560 (toList!6903 lt!452593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122757 (= (contains!5982 lt!452593 #b1000000000000000000000000000000000000000000000000000000000000000) lt!452716)))

(declare-fun b!1027996 () Bool)

(declare-fun lt!452717 () Unit!33514)

(assert (=> b!1027996 (= e!580290 lt!452717)))

(assert (=> b!1027996 (= lt!452717 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1027996 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027997 () Bool)

(declare-fun Unit!33527 () Unit!33514)

(assert (=> b!1027997 (= e!580290 Unit!33527)))

(declare-fun b!1027998 () Bool)

(assert (=> b!1027998 (= e!580289 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122757 c!103631) b!1027996))

(assert (= (and d!122757 (not c!103631)) b!1027997))

(assert (= (and d!122757 (not res!688037)) b!1027998))

(declare-fun m!946765 () Bool)

(assert (=> d!122757 m!946765))

(declare-fun m!946767 () Bool)

(assert (=> b!1027996 m!946767))

(declare-fun m!946769 () Bool)

(assert (=> b!1027996 m!946769))

(assert (=> b!1027996 m!946769))

(declare-fun m!946771 () Bool)

(assert (=> b!1027996 m!946771))

(assert (=> b!1027998 m!946769))

(assert (=> b!1027998 m!946769))

(assert (=> b!1027998 m!946771))

(assert (=> bm!43295 d!122757))

(declare-fun bm!43327 () Bool)

(declare-fun call!43330 () Bool)

(assert (=> bm!43327 (= call!43330 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (mask!29815 thiss!1427)))))

(declare-fun b!1027999 () Bool)

(declare-fun e!580292 () Bool)

(declare-fun e!580293 () Bool)

(assert (=> b!1027999 (= e!580292 e!580293)))

(declare-fun c!103632 () Bool)

(assert (=> b!1027999 (= c!103632 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028000 () Bool)

(declare-fun e!580291 () Bool)

(assert (=> b!1028000 (= e!580293 e!580291)))

(declare-fun lt!452720 () (_ BitVec 64))

(assert (=> b!1028000 (= lt!452720 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000))))

(declare-fun lt!452721 () Unit!33514)

(assert (=> b!1028000 (= lt!452721 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) lt!452720 #b00000000000000000000000000000000))))

(assert (=> b!1028000 (arrayContainsKey!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) lt!452720 #b00000000000000000000000000000000)))

(declare-fun lt!452722 () Unit!33514)

(assert (=> b!1028000 (= lt!452722 lt!452721)))

(declare-fun res!688038 () Bool)

(assert (=> b!1028000 (= res!688038 (= (seekEntryOrOpen!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000) (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (mask!29815 thiss!1427)) (Found!9663 #b00000000000000000000000000000000)))))

(assert (=> b!1028000 (=> (not res!688038) (not e!580291))))

(declare-fun d!122759 () Bool)

(declare-fun res!688039 () Bool)

(assert (=> d!122759 (=> res!688039 e!580292)))

(assert (=> d!122759 (= res!688039 (bvsge #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(assert (=> d!122759 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (mask!29815 thiss!1427)) e!580292)))

(declare-fun b!1028001 () Bool)

(assert (=> b!1028001 (= e!580291 call!43330)))

(declare-fun b!1028002 () Bool)

(assert (=> b!1028002 (= e!580293 call!43330)))

(assert (= (and d!122759 (not res!688039)) b!1027999))

(assert (= (and b!1027999 c!103632) b!1028000))

(assert (= (and b!1027999 (not c!103632)) b!1028002))

(assert (= (and b!1028000 res!688038) b!1028001))

(assert (= (or b!1028001 b!1028002) bm!43327))

(declare-fun m!946773 () Bool)

(assert (=> bm!43327 m!946773))

(assert (=> b!1027999 m!946671))

(assert (=> b!1027999 m!946671))

(assert (=> b!1027999 m!946673))

(assert (=> b!1028000 m!946671))

(declare-fun m!946775 () Bool)

(assert (=> b!1028000 m!946775))

(declare-fun m!946777 () Bool)

(assert (=> b!1028000 m!946777))

(assert (=> b!1028000 m!946671))

(declare-fun m!946779 () Bool)

(assert (=> b!1028000 m!946779))

(assert (=> b!1027748 d!122759))

(declare-fun d!122761 () Bool)

(assert (=> d!122761 (arrayContainsKey!0 lt!452500 lt!452621 #b00000000000000000000000000000000)))

(declare-fun lt!452725 () Unit!33514)

(declare-fun choose!13 (array!64630 (_ BitVec 64) (_ BitVec 32)) Unit!33514)

(assert (=> d!122761 (= lt!452725 (choose!13 lt!452500 lt!452621 #b00000000000000000000000000000000))))

(assert (=> d!122761 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!122761 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452500 lt!452621 #b00000000000000000000000000000000) lt!452725)))

(declare-fun bs!29993 () Bool)

(assert (= bs!29993 d!122761))

(assert (=> bs!29993 m!946577))

(declare-fun m!946781 () Bool)

(assert (=> bs!29993 m!946781))

(assert (=> b!1027858 d!122761))

(declare-fun d!122763 () Bool)

(declare-fun res!688040 () Bool)

(declare-fun e!580294 () Bool)

(assert (=> d!122763 (=> res!688040 e!580294)))

(assert (=> d!122763 (= res!688040 (= (select (arr!31119 lt!452500) #b00000000000000000000000000000000) lt!452621))))

(assert (=> d!122763 (= (arrayContainsKey!0 lt!452500 lt!452621 #b00000000000000000000000000000000) e!580294)))

(declare-fun b!1028003 () Bool)

(declare-fun e!580295 () Bool)

(assert (=> b!1028003 (= e!580294 e!580295)))

(declare-fun res!688041 () Bool)

(assert (=> b!1028003 (=> (not res!688041) (not e!580295))))

(assert (=> b!1028003 (= res!688041 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 lt!452500)))))

(declare-fun b!1028004 () Bool)

(assert (=> b!1028004 (= e!580295 (arrayContainsKey!0 lt!452500 lt!452621 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122763 (not res!688040)) b!1028003))

(assert (= (and b!1028003 res!688041) b!1028004))

(assert (=> d!122763 m!946563))

(declare-fun m!946783 () Bool)

(assert (=> b!1028004 m!946783))

(assert (=> b!1027858 d!122763))

(declare-fun b!1028017 () Bool)

(declare-fun e!580302 () SeekEntryResult!9663)

(declare-fun lt!452732 () SeekEntryResult!9663)

(assert (=> b!1028017 (= e!580302 (MissingZero!9663 (index!41024 lt!452732)))))

(declare-fun b!1028018 () Bool)

(assert (=> b!1028018 (= e!580302 (seekKeyOrZeroReturnVacant!0 (x!91444 lt!452732) (index!41024 lt!452732) (index!41024 lt!452732) (select (arr!31119 lt!452500) #b00000000000000000000000000000000) lt!452500 (mask!29815 thiss!1427)))))

(declare-fun b!1028019 () Bool)

(declare-fun e!580304 () SeekEntryResult!9663)

(declare-fun e!580303 () SeekEntryResult!9663)

(assert (=> b!1028019 (= e!580304 e!580303)))

(declare-fun lt!452734 () (_ BitVec 64))

(assert (=> b!1028019 (= lt!452734 (select (arr!31119 lt!452500) (index!41024 lt!452732)))))

(declare-fun c!103641 () Bool)

(assert (=> b!1028019 (= c!103641 (= lt!452734 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1028020 () Bool)

(declare-fun c!103640 () Bool)

(assert (=> b!1028020 (= c!103640 (= lt!452734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028020 (= e!580303 e!580302)))

(declare-fun b!1028021 () Bool)

(assert (=> b!1028021 (= e!580303 (Found!9663 (index!41024 lt!452732)))))

(declare-fun d!122765 () Bool)

(declare-fun lt!452733 () SeekEntryResult!9663)

(assert (=> d!122765 (and (or ((_ is Undefined!9663) lt!452733) (not ((_ is Found!9663) lt!452733)) (and (bvsge (index!41023 lt!452733) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452733) (size!31633 lt!452500)))) (or ((_ is Undefined!9663) lt!452733) ((_ is Found!9663) lt!452733) (not ((_ is MissingZero!9663) lt!452733)) (and (bvsge (index!41022 lt!452733) #b00000000000000000000000000000000) (bvslt (index!41022 lt!452733) (size!31633 lt!452500)))) (or ((_ is Undefined!9663) lt!452733) ((_ is Found!9663) lt!452733) ((_ is MissingZero!9663) lt!452733) (not ((_ is MissingVacant!9663) lt!452733)) (and (bvsge (index!41025 lt!452733) #b00000000000000000000000000000000) (bvslt (index!41025 lt!452733) (size!31633 lt!452500)))) (or ((_ is Undefined!9663) lt!452733) (ite ((_ is Found!9663) lt!452733) (= (select (arr!31119 lt!452500) (index!41023 lt!452733)) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9663) lt!452733) (= (select (arr!31119 lt!452500) (index!41022 lt!452733)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9663) lt!452733) (= (select (arr!31119 lt!452500) (index!41025 lt!452733)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!122765 (= lt!452733 e!580304)))

(declare-fun c!103639 () Bool)

(assert (=> d!122765 (= c!103639 (and ((_ is Intermediate!9663) lt!452732) (undefined!10475 lt!452732)))))

(assert (=> d!122765 (= lt!452732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) (mask!29815 thiss!1427)) (select (arr!31119 lt!452500) #b00000000000000000000000000000000) lt!452500 (mask!29815 thiss!1427)))))

(assert (=> d!122765 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122765 (= (seekEntryOrOpen!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) lt!452500 (mask!29815 thiss!1427)) lt!452733)))

(declare-fun b!1028022 () Bool)

(assert (=> b!1028022 (= e!580304 Undefined!9663)))

(assert (= (and d!122765 c!103639) b!1028022))

(assert (= (and d!122765 (not c!103639)) b!1028019))

(assert (= (and b!1028019 c!103641) b!1028021))

(assert (= (and b!1028019 (not c!103641)) b!1028020))

(assert (= (and b!1028020 c!103640) b!1028017))

(assert (= (and b!1028020 (not c!103640)) b!1028018))

(assert (=> b!1028018 m!946563))

(declare-fun m!946785 () Bool)

(assert (=> b!1028018 m!946785))

(declare-fun m!946787 () Bool)

(assert (=> b!1028019 m!946787))

(assert (=> d!122765 m!946563))

(declare-fun m!946789 () Bool)

(assert (=> d!122765 m!946789))

(assert (=> d!122765 m!946485))

(assert (=> d!122765 m!946789))

(assert (=> d!122765 m!946563))

(declare-fun m!946791 () Bool)

(assert (=> d!122765 m!946791))

(declare-fun m!946793 () Bool)

(assert (=> d!122765 m!946793))

(declare-fun m!946795 () Bool)

(assert (=> d!122765 m!946795))

(declare-fun m!946797 () Bool)

(assert (=> d!122765 m!946797))

(assert (=> b!1027858 d!122765))

(declare-fun bm!43328 () Bool)

(declare-fun call!43331 () Bool)

(assert (=> bm!43328 (= call!43331 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!452500 (mask!29815 thiss!1427)))))

(declare-fun b!1028023 () Bool)

(declare-fun e!580306 () Bool)

(declare-fun e!580307 () Bool)

(assert (=> b!1028023 (= e!580306 e!580307)))

(declare-fun c!103642 () Bool)

(assert (=> b!1028023 (= c!103642 (validKeyInArray!0 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028024 () Bool)

(declare-fun e!580305 () Bool)

(assert (=> b!1028024 (= e!580307 e!580305)))

(declare-fun lt!452735 () (_ BitVec 64))

(assert (=> b!1028024 (= lt!452735 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!452736 () Unit!33514)

(assert (=> b!1028024 (= lt!452736 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!452500 lt!452735 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1028024 (arrayContainsKey!0 lt!452500 lt!452735 #b00000000000000000000000000000000)))

(declare-fun lt!452737 () Unit!33514)

(assert (=> b!1028024 (= lt!452737 lt!452736)))

(declare-fun res!688042 () Bool)

(assert (=> b!1028024 (= res!688042 (= (seekEntryOrOpen!0 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!452500 (mask!29815 thiss!1427)) (Found!9663 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1028024 (=> (not res!688042) (not e!580305))))

(declare-fun d!122767 () Bool)

(declare-fun res!688043 () Bool)

(assert (=> d!122767 (=> res!688043 e!580306)))

(assert (=> d!122767 (= res!688043 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 lt!452500)))))

(assert (=> d!122767 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!452500 (mask!29815 thiss!1427)) e!580306)))

(declare-fun b!1028025 () Bool)

(assert (=> b!1028025 (= e!580305 call!43331)))

(declare-fun b!1028026 () Bool)

(assert (=> b!1028026 (= e!580307 call!43331)))

(assert (= (and d!122767 (not res!688043)) b!1028023))

(assert (= (and b!1028023 c!103642) b!1028024))

(assert (= (and b!1028023 (not c!103642)) b!1028026))

(assert (= (and b!1028024 res!688042) b!1028025))

(assert (= (or b!1028025 b!1028026) bm!43328))

(declare-fun m!946799 () Bool)

(assert (=> bm!43328 m!946799))

(assert (=> b!1028023 m!946663))

(assert (=> b!1028023 m!946663))

(assert (=> b!1028023 m!946665))

(assert (=> b!1028024 m!946663))

(declare-fun m!946801 () Bool)

(assert (=> b!1028024 m!946801))

(declare-fun m!946803 () Bool)

(assert (=> b!1028024 m!946803))

(assert (=> b!1028024 m!946663))

(declare-fun m!946805 () Bool)

(assert (=> b!1028024 m!946805))

(assert (=> bm!43306 d!122767))

(declare-fun d!122769 () Bool)

(assert (=> d!122769 (= (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) (and (not (= (select (arr!31119 lt!452500) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31119 lt!452500) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027895 d!122769))

(declare-fun d!122771 () Bool)

(assert (=> d!122771 (= (apply!935 lt!452637 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16353 (getValueByKey!587 (toList!6903 lt!452637) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!29994 () Bool)

(assert (= bs!29994 d!122771))

(declare-fun m!946807 () Bool)

(assert (=> bs!29994 m!946807))

(assert (=> bs!29994 m!946807))

(declare-fun m!946809 () Bool)

(assert (=> bs!29994 m!946809))

(assert (=> b!1027872 d!122771))

(declare-fun d!122773 () Bool)

(assert (=> d!122773 (= (apply!935 lt!452593 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)) (get!16353 (getValueByKey!587 (toList!6903 lt!452593) (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!29995 () Bool)

(assert (= bs!29995 d!122773))

(assert (=> bs!29995 m!946491))

(assert (=> bs!29995 m!946755))

(assert (=> bs!29995 m!946755))

(declare-fun m!946811 () Bool)

(assert (=> bs!29995 m!946811))

(assert (=> b!1027800 d!122773))

(declare-fun d!122775 () Bool)

(declare-fun c!103643 () Bool)

(assert (=> d!122775 (= c!103643 ((_ is ValueCellFull!11445) (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!580308 () V!37269)

(assert (=> d!122775 (= (get!16352 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!580308)))

(declare-fun b!1028027 () Bool)

(assert (=> b!1028027 (= e!580308 (get!16354 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028028 () Bool)

(assert (=> b!1028028 (= e!580308 (get!16355 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122775 c!103643) b!1028027))

(assert (= (and d!122775 (not c!103643)) b!1028028))

(assert (=> b!1028027 m!946499))

(assert (=> b!1028027 m!946429))

(declare-fun m!946813 () Bool)

(assert (=> b!1028027 m!946813))

(assert (=> b!1028028 m!946499))

(assert (=> b!1028028 m!946429))

(declare-fun m!946815 () Bool)

(assert (=> b!1028028 m!946815))

(assert (=> b!1027800 d!122775))

(declare-fun b!1028029 () Bool)

(declare-fun e!580312 () Bool)

(declare-fun e!580311 () Bool)

(assert (=> b!1028029 (= e!580312 e!580311)))

(declare-fun res!688045 () Bool)

(assert (=> b!1028029 (=> (not res!688045) (not e!580311))))

(declare-fun e!580310 () Bool)

(assert (=> b!1028029 (= res!688045 (not e!580310))))

(declare-fun res!688044 () Bool)

(assert (=> b!1028029 (=> (not res!688044) (not e!580310))))

(assert (=> b!1028029 (= res!688044 (validKeyInArray!0 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028030 () Bool)

(declare-fun e!580309 () Bool)

(declare-fun call!43332 () Bool)

(assert (=> b!1028030 (= e!580309 call!43332)))

(declare-fun b!1028031 () Bool)

(assert (=> b!1028031 (= e!580309 call!43332)))

(declare-fun b!1028032 () Bool)

(assert (=> b!1028032 (= e!580310 (contains!5983 (ite c!103603 (Cons!21914 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) Nil!21915) Nil!21915) (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!103644 () Bool)

(declare-fun bm!43329 () Bool)

(assert (=> bm!43329 (= call!43332 (arrayNoDuplicates!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!103644 (Cons!21914 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!103603 (Cons!21914 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) Nil!21915) Nil!21915)) (ite c!103603 (Cons!21914 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) Nil!21915) Nil!21915))))))

(declare-fun b!1028033 () Bool)

(assert (=> b!1028033 (= e!580311 e!580309)))

(assert (=> b!1028033 (= c!103644 (validKeyInArray!0 (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!122777 () Bool)

(declare-fun res!688046 () Bool)

(assert (=> d!122777 (=> res!688046 e!580312)))

(assert (=> d!122777 (= res!688046 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 lt!452500)))))

(assert (=> d!122777 (= (arrayNoDuplicates!0 lt!452500 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103603 (Cons!21914 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) Nil!21915) Nil!21915)) e!580312)))

(assert (= (and d!122777 (not res!688046)) b!1028029))

(assert (= (and b!1028029 res!688044) b!1028032))

(assert (= (and b!1028029 res!688045) b!1028033))

(assert (= (and b!1028033 c!103644) b!1028030))

(assert (= (and b!1028033 (not c!103644)) b!1028031))

(assert (= (or b!1028030 b!1028031) bm!43329))

(assert (=> b!1028029 m!946663))

(assert (=> b!1028029 m!946663))

(assert (=> b!1028029 m!946665))

(assert (=> b!1028032 m!946663))

(assert (=> b!1028032 m!946663))

(declare-fun m!946817 () Bool)

(assert (=> b!1028032 m!946817))

(assert (=> bm!43329 m!946663))

(declare-fun m!946819 () Bool)

(assert (=> bm!43329 m!946819))

(assert (=> b!1028033 m!946663))

(assert (=> b!1028033 m!946663))

(assert (=> b!1028033 m!946665))

(assert (=> bm!43316 d!122777))

(declare-fun d!122779 () Bool)

(assert (=> d!122779 (= (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027804 d!122779))

(declare-fun d!122781 () Bool)

(assert (=> d!122781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (mask!29815 thiss!1427))))

(assert (=> d!122781 true))

(declare-fun _$44!9 () Unit!33514)

(assert (=> d!122781 (= (choose!25 (_keys!11242 thiss!1427) (index!41023 lt!452501) (mask!29815 thiss!1427)) _$44!9)))

(declare-fun bs!29996 () Bool)

(assert (= bs!29996 d!122781))

(assert (=> bs!29996 m!946397))

(assert (=> bs!29996 m!946487))

(assert (=> d!122699 d!122781))

(assert (=> d!122699 d!122747))

(assert (=> b!1027874 d!122769))

(declare-fun d!122783 () Bool)

(assert (=> d!122783 (= (apply!935 lt!452593 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16353 (getValueByKey!587 (toList!6903 lt!452593) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!29997 () Bool)

(assert (= bs!29997 d!122783))

(declare-fun m!946821 () Bool)

(assert (=> bs!29997 m!946821))

(assert (=> bs!29997 m!946821))

(declare-fun m!946823 () Bool)

(assert (=> bs!29997 m!946823))

(assert (=> b!1027802 d!122783))

(declare-fun d!122785 () Bool)

(assert (=> d!122785 (= (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000) false)))

(assert (=> b!1027821 d!122785))

(assert (=> d!122701 d!122747))

(assert (=> b!1027836 d!122769))

(declare-fun b!1028034 () Bool)

(declare-fun e!580314 () (_ BitVec 32))

(declare-fun call!43333 () (_ BitVec 32))

(assert (=> b!1028034 (= e!580314 (bvadd #b00000000000000000000000000000001 call!43333))))

(declare-fun b!1028035 () Bool)

(declare-fun e!580313 () (_ BitVec 32))

(assert (=> b!1028035 (= e!580313 e!580314)))

(declare-fun c!103646 () Bool)

(assert (=> b!1028035 (= c!103646 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1028036 () Bool)

(assert (=> b!1028036 (= e!580314 call!43333)))

(declare-fun bm!43330 () Bool)

(assert (=> bm!43330 (= call!43333 (arrayCountValidKeys!0 (_keys!11242 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun d!122787 () Bool)

(declare-fun lt!452738 () (_ BitVec 32))

(assert (=> d!122787 (and (bvsge lt!452738 #b00000000000000000000000000000000) (bvsle lt!452738 (bvsub (size!31633 (_keys!11242 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!122787 (= lt!452738 e!580313)))

(declare-fun c!103645 () Bool)

(assert (=> d!122787 (= c!103645 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122787 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31633 (_keys!11242 thiss!1427)) (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122787 (= (arrayCountValidKeys!0 (_keys!11242 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (_keys!11242 thiss!1427))) lt!452738)))

(declare-fun b!1028037 () Bool)

(assert (=> b!1028037 (= e!580313 #b00000000000000000000000000000000)))

(assert (= (and d!122787 c!103645) b!1028037))

(assert (= (and d!122787 (not c!103645)) b!1028035))

(assert (= (and b!1028035 c!103646) b!1028034))

(assert (= (and b!1028035 (not c!103646)) b!1028036))

(assert (= (or b!1028034 b!1028036) bm!43330))

(declare-fun m!946825 () Bool)

(assert (=> b!1028035 m!946825))

(assert (=> b!1028035 m!946825))

(declare-fun m!946827 () Bool)

(assert (=> b!1028035 m!946827))

(declare-fun m!946829 () Bool)

(assert (=> bm!43330 m!946829))

(assert (=> bm!43303 d!122787))

(declare-fun d!122789 () Bool)

(assert (=> d!122789 (= (-!479 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) key!909) (getCurrentListMap!3910 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (array!64633 (store (arr!31120 (_values!6119 thiss!1427)) (index!41023 lt!452501) (ValueCellFull!11445 (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31634 (_values!6119 thiss!1427))) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))

(assert (=> d!122789 true))

(declare-fun _$9!35 () Unit!33514)

(assert (=> d!122789 (= (choose!1688 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (index!41023 lt!452501) key!909 (defaultEntry!6096 thiss!1427)) _$9!35)))

(declare-fun b_lambda!15791 () Bool)

(assert (=> (not b_lambda!15791) (not d!122789)))

(assert (=> d!122789 t!30995))

(declare-fun b_and!32871 () Bool)

(assert (= b_and!32869 (and (=> t!30995 result!14115) b_and!32871)))

(assert (=> d!122789 m!946429))

(assert (=> d!122789 m!946413))

(assert (=> d!122789 m!946415))

(assert (=> d!122789 m!946417))

(assert (=> d!122789 m!946415))

(assert (=> d!122789 m!946635))

(assert (=> d!122789 m!946397))

(assert (=> d!122719 d!122789))

(assert (=> d!122719 d!122747))

(assert (=> b!1027840 d!122779))

(declare-fun b!1028050 () Bool)

(declare-fun e!580323 () SeekEntryResult!9663)

(assert (=> b!1028050 (= e!580323 Undefined!9663)))

(declare-fun e!580322 () SeekEntryResult!9663)

(declare-fun b!1028051 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1028051 (= e!580322 (seekKeyOrZeroReturnVacant!0 (bvadd (x!91444 lt!452660) #b00000000000000000000000000000001) (nextIndex!0 (index!41024 lt!452660) (x!91444 lt!452660) (mask!29815 thiss!1427)) (index!41024 lt!452660) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(declare-fun b!1028053 () Bool)

(declare-fun e!580321 () SeekEntryResult!9663)

(assert (=> b!1028053 (= e!580321 (Found!9663 (index!41024 lt!452660)))))

(declare-fun d!122791 () Bool)

(declare-fun lt!452744 () SeekEntryResult!9663)

(assert (=> d!122791 (and (or ((_ is Undefined!9663) lt!452744) (not ((_ is Found!9663) lt!452744)) (and (bvsge (index!41023 lt!452744) #b00000000000000000000000000000000) (bvslt (index!41023 lt!452744) (size!31633 (_keys!11242 thiss!1427))))) (or ((_ is Undefined!9663) lt!452744) ((_ is Found!9663) lt!452744) (not ((_ is MissingVacant!9663) lt!452744)) (not (= (index!41025 lt!452744) (index!41024 lt!452660))) (and (bvsge (index!41025 lt!452744) #b00000000000000000000000000000000) (bvslt (index!41025 lt!452744) (size!31633 (_keys!11242 thiss!1427))))) (or ((_ is Undefined!9663) lt!452744) (ite ((_ is Found!9663) lt!452744) (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452744)) key!909) (and ((_ is MissingVacant!9663) lt!452744) (= (index!41025 lt!452744) (index!41024 lt!452660)) (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41025 lt!452744)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!122791 (= lt!452744 e!580323)))

(declare-fun c!103655 () Bool)

(assert (=> d!122791 (= c!103655 (bvsge (x!91444 lt!452660) #b01111111111111111111111111111110))))

(declare-fun lt!452743 () (_ BitVec 64))

(assert (=> d!122791 (= lt!452743 (select (arr!31119 (_keys!11242 thiss!1427)) (index!41024 lt!452660)))))

(assert (=> d!122791 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122791 (= (seekKeyOrZeroReturnVacant!0 (x!91444 lt!452660) (index!41024 lt!452660) (index!41024 lt!452660) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)) lt!452744)))

(declare-fun b!1028052 () Bool)

(assert (=> b!1028052 (= e!580323 e!580321)))

(declare-fun c!103653 () Bool)

(assert (=> b!1028052 (= c!103653 (= lt!452743 key!909))))

(declare-fun b!1028054 () Bool)

(assert (=> b!1028054 (= e!580322 (MissingVacant!9663 (index!41024 lt!452660)))))

(declare-fun b!1028055 () Bool)

(declare-fun c!103654 () Bool)

(assert (=> b!1028055 (= c!103654 (= lt!452743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028055 (= e!580321 e!580322)))

(assert (= (and d!122791 c!103655) b!1028050))

(assert (= (and d!122791 (not c!103655)) b!1028052))

(assert (= (and b!1028052 c!103653) b!1028053))

(assert (= (and b!1028052 (not c!103653)) b!1028055))

(assert (= (and b!1028055 c!103654) b!1028054))

(assert (= (and b!1028055 (not c!103654)) b!1028051))

(declare-fun m!946831 () Bool)

(assert (=> b!1028051 m!946831))

(assert (=> b!1028051 m!946831))

(declare-fun m!946833 () Bool)

(assert (=> b!1028051 m!946833))

(declare-fun m!946835 () Bool)

(assert (=> d!122791 m!946835))

(declare-fun m!946837 () Bool)

(assert (=> d!122791 m!946837))

(assert (=> d!122791 m!946659))

(assert (=> d!122791 m!946485))

(assert (=> b!1027926 d!122791))

(declare-fun d!122793 () Bool)

(assert (=> d!122793 (= (apply!935 (+!3058 lt!452597 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) lt!452596) (apply!935 lt!452597 lt!452596))))

(declare-fun lt!452747 () Unit!33514)

(declare-fun choose!1689 (ListLongMap!13775 (_ BitVec 64) V!37269 (_ BitVec 64)) Unit!33514)

(assert (=> d!122793 (= lt!452747 (choose!1689 lt!452597 lt!452590 (minValue!5932 thiss!1427) lt!452596))))

(declare-fun e!580326 () Bool)

(assert (=> d!122793 e!580326))

(declare-fun res!688049 () Bool)

(assert (=> d!122793 (=> (not res!688049) (not e!580326))))

(assert (=> d!122793 (= res!688049 (contains!5982 lt!452597 lt!452596))))

(assert (=> d!122793 (= (addApplyDifferent!475 lt!452597 lt!452590 (minValue!5932 thiss!1427) lt!452596) lt!452747)))

(declare-fun b!1028059 () Bool)

(assert (=> b!1028059 (= e!580326 (not (= lt!452596 lt!452590)))))

(assert (= (and d!122793 res!688049) b!1028059))

(declare-fun m!946839 () Bool)

(assert (=> d!122793 m!946839))

(assert (=> d!122793 m!946535))

(assert (=> d!122793 m!946513))

(assert (=> d!122793 m!946513))

(assert (=> d!122793 m!946515))

(declare-fun m!946841 () Bool)

(assert (=> d!122793 m!946841))

(assert (=> b!1027807 d!122793))

(declare-fun d!122795 () Bool)

(assert (=> d!122795 (= (apply!935 (+!3058 lt!452592 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) lt!452598) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452592 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))) lt!452598)))))

(declare-fun bs!29998 () Bool)

(assert (= bs!29998 d!122795))

(declare-fun m!946843 () Bool)

(assert (=> bs!29998 m!946843))

(assert (=> bs!29998 m!946843))

(declare-fun m!946845 () Bool)

(assert (=> bs!29998 m!946845))

(assert (=> b!1027807 d!122795))

(declare-fun d!122797 () Bool)

(declare-fun e!580327 () Bool)

(assert (=> d!122797 e!580327))

(declare-fun res!688050 () Bool)

(assert (=> d!122797 (=> (not res!688050) (not e!580327))))

(declare-fun lt!452749 () ListLongMap!13775)

(assert (=> d!122797 (= res!688050 (contains!5982 lt!452749 (_1!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452751 () List!21917)

(assert (=> d!122797 (= lt!452749 (ListLongMap!13776 lt!452751))))

(declare-fun lt!452750 () Unit!33514)

(declare-fun lt!452748 () Unit!33514)

(assert (=> d!122797 (= lt!452750 lt!452748)))

(assert (=> d!122797 (= (getValueByKey!587 lt!452751 (_1!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))))))

(assert (=> d!122797 (= lt!452748 (lemmaContainsTupThenGetReturnValue!276 lt!452751 (_1!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))))))

(assert (=> d!122797 (= lt!452751 (insertStrictlySorted!368 (toList!6903 lt!452597) (_1!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))))))

(assert (=> d!122797 (= (+!3058 lt!452597 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) lt!452749)))

(declare-fun b!1028060 () Bool)

(declare-fun res!688051 () Bool)

(assert (=> b!1028060 (=> (not res!688051) (not e!580327))))

(assert (=> b!1028060 (= res!688051 (= (getValueByKey!587 (toList!6903 lt!452749) (_1!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028061 () Bool)

(assert (=> b!1028061 (= e!580327 (contains!5984 (toList!6903 lt!452749) (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))))))

(assert (= (and d!122797 res!688050) b!1028060))

(assert (= (and b!1028060 res!688051) b!1028061))

(declare-fun m!946847 () Bool)

(assert (=> d!122797 m!946847))

(declare-fun m!946849 () Bool)

(assert (=> d!122797 m!946849))

(declare-fun m!946851 () Bool)

(assert (=> d!122797 m!946851))

(declare-fun m!946853 () Bool)

(assert (=> d!122797 m!946853))

(declare-fun m!946855 () Bool)

(assert (=> b!1028060 m!946855))

(declare-fun m!946857 () Bool)

(assert (=> b!1028061 m!946857))

(assert (=> b!1027807 d!122797))

(declare-fun d!122799 () Bool)

(declare-fun e!580328 () Bool)

(assert (=> d!122799 e!580328))

(declare-fun res!688052 () Bool)

(assert (=> d!122799 (=> (not res!688052) (not e!580328))))

(declare-fun lt!452753 () ListLongMap!13775)

(assert (=> d!122799 (= res!688052 (contains!5982 lt!452753 (_1!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))))))

(declare-fun lt!452755 () List!21917)

(assert (=> d!122799 (= lt!452753 (ListLongMap!13776 lt!452755))))

(declare-fun lt!452754 () Unit!33514)

(declare-fun lt!452752 () Unit!33514)

(assert (=> d!122799 (= lt!452754 lt!452752)))

(assert (=> d!122799 (= (getValueByKey!587 lt!452755 (_1!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122799 (= lt!452752 (lemmaContainsTupThenGetReturnValue!276 lt!452755 (_1!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122799 (= lt!452755 (insertStrictlySorted!368 (toList!6903 lt!452584) (_1!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122799 (= (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) lt!452753)))

(declare-fun b!1028062 () Bool)

(declare-fun res!688053 () Bool)

(assert (=> b!1028062 (=> (not res!688053) (not e!580328))))

(assert (=> b!1028062 (= res!688053 (= (getValueByKey!587 (toList!6903 lt!452753) (_1!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))))))))

(declare-fun b!1028063 () Bool)

(assert (=> b!1028063 (= e!580328 (contains!5984 (toList!6903 lt!452753) (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))))))

(assert (= (and d!122799 res!688052) b!1028062))

(assert (= (and b!1028062 res!688053) b!1028063))

(declare-fun m!946859 () Bool)

(assert (=> d!122799 m!946859))

(declare-fun m!946861 () Bool)

(assert (=> d!122799 m!946861))

(declare-fun m!946863 () Bool)

(assert (=> d!122799 m!946863))

(declare-fun m!946865 () Bool)

(assert (=> d!122799 m!946865))

(declare-fun m!946867 () Bool)

(assert (=> b!1028062 m!946867))

(declare-fun m!946869 () Bool)

(assert (=> b!1028063 m!946869))

(assert (=> b!1027807 d!122799))

(declare-fun d!122801 () Bool)

(declare-fun e!580329 () Bool)

(assert (=> d!122801 e!580329))

(declare-fun res!688054 () Bool)

(assert (=> d!122801 (=> res!688054 e!580329)))

(declare-fun lt!452756 () Bool)

(assert (=> d!122801 (= res!688054 (not lt!452756))))

(declare-fun lt!452759 () Bool)

(assert (=> d!122801 (= lt!452756 lt!452759)))

(declare-fun lt!452758 () Unit!33514)

(declare-fun e!580330 () Unit!33514)

(assert (=> d!122801 (= lt!452758 e!580330)))

(declare-fun c!103656 () Bool)

(assert (=> d!122801 (= c!103656 lt!452759)))

(assert (=> d!122801 (= lt!452759 (containsKey!560 (toList!6903 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) lt!452581))))

(assert (=> d!122801 (= (contains!5982 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) lt!452581) lt!452756)))

(declare-fun b!1028064 () Bool)

(declare-fun lt!452757 () Unit!33514)

(assert (=> b!1028064 (= e!580330 lt!452757)))

(assert (=> b!1028064 (= lt!452757 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) lt!452581))))

(assert (=> b!1028064 (isDefined!432 (getValueByKey!587 (toList!6903 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) lt!452581))))

(declare-fun b!1028065 () Bool)

(declare-fun Unit!33528 () Unit!33514)

(assert (=> b!1028065 (= e!580330 Unit!33528)))

(declare-fun b!1028066 () Bool)

(assert (=> b!1028066 (= e!580329 (isDefined!432 (getValueByKey!587 (toList!6903 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427)))) lt!452581)))))

(assert (= (and d!122801 c!103656) b!1028064))

(assert (= (and d!122801 (not c!103656)) b!1028065))

(assert (= (and d!122801 (not res!688054)) b!1028066))

(declare-fun m!946871 () Bool)

(assert (=> d!122801 m!946871))

(declare-fun m!946873 () Bool)

(assert (=> b!1028064 m!946873))

(declare-fun m!946875 () Bool)

(assert (=> b!1028064 m!946875))

(assert (=> b!1028064 m!946875))

(declare-fun m!946877 () Bool)

(assert (=> b!1028064 m!946877))

(assert (=> b!1028066 m!946875))

(assert (=> b!1028066 m!946875))

(assert (=> b!1028066 m!946877))

(assert (=> b!1027807 d!122801))

(declare-fun d!122803 () Bool)

(assert (=> d!122803 (= (apply!935 lt!452597 lt!452596) (get!16353 (getValueByKey!587 (toList!6903 lt!452597) lt!452596)))))

(declare-fun bs!29999 () Bool)

(assert (= bs!29999 d!122803))

(declare-fun m!946879 () Bool)

(assert (=> bs!29999 m!946879))

(assert (=> bs!29999 m!946879))

(declare-fun m!946881 () Bool)

(assert (=> bs!29999 m!946881))

(assert (=> b!1027807 d!122803))

(declare-fun d!122805 () Bool)

(declare-fun e!580331 () Bool)

(assert (=> d!122805 e!580331))

(declare-fun res!688055 () Bool)

(assert (=> d!122805 (=> (not res!688055) (not e!580331))))

(declare-fun lt!452761 () ListLongMap!13775)

(assert (=> d!122805 (= res!688055 (contains!5982 lt!452761 (_1!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))))))

(declare-fun lt!452763 () List!21917)

(assert (=> d!122805 (= lt!452761 (ListLongMap!13776 lt!452763))))

(declare-fun lt!452762 () Unit!33514)

(declare-fun lt!452760 () Unit!33514)

(assert (=> d!122805 (= lt!452762 lt!452760)))

(assert (=> d!122805 (= (getValueByKey!587 lt!452763 (_1!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122805 (= lt!452760 (lemmaContainsTupThenGetReturnValue!276 lt!452763 (_1!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122805 (= lt!452763 (insertStrictlySorted!368 (toList!6903 lt!452592) (_1!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122805 (= (+!3058 lt!452592 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) lt!452761)))

(declare-fun b!1028067 () Bool)

(declare-fun res!688056 () Bool)

(assert (=> b!1028067 (=> (not res!688056) (not e!580331))))

(assert (=> b!1028067 (= res!688056 (= (getValueByKey!587 (toList!6903 lt!452761) (_1!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))))))))

(declare-fun b!1028068 () Bool)

(assert (=> b!1028068 (= e!580331 (contains!5984 (toList!6903 lt!452761) (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))))))

(assert (= (and d!122805 res!688055) b!1028067))

(assert (= (and b!1028067 res!688056) b!1028068))

(declare-fun m!946883 () Bool)

(assert (=> d!122805 m!946883))

(declare-fun m!946885 () Bool)

(assert (=> d!122805 m!946885))

(declare-fun m!946887 () Bool)

(assert (=> d!122805 m!946887))

(declare-fun m!946889 () Bool)

(assert (=> d!122805 m!946889))

(declare-fun m!946891 () Bool)

(assert (=> b!1028067 m!946891))

(declare-fun m!946893 () Bool)

(assert (=> b!1028068 m!946893))

(assert (=> b!1027807 d!122805))

(declare-fun d!122807 () Bool)

(assert (=> d!122807 (= (apply!935 (+!3058 lt!452585 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) lt!452600) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452585 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))) lt!452600)))))

(declare-fun bs!30000 () Bool)

(assert (= bs!30000 d!122807))

(declare-fun m!946895 () Bool)

(assert (=> bs!30000 m!946895))

(assert (=> bs!30000 m!946895))

(declare-fun m!946897 () Bool)

(assert (=> bs!30000 m!946897))

(assert (=> b!1027807 d!122807))

(declare-fun d!122809 () Bool)

(assert (=> d!122809 (= (apply!935 lt!452592 lt!452598) (get!16353 (getValueByKey!587 (toList!6903 lt!452592) lt!452598)))))

(declare-fun bs!30001 () Bool)

(assert (= bs!30001 d!122809))

(declare-fun m!946899 () Bool)

(assert (=> bs!30001 m!946899))

(assert (=> bs!30001 m!946899))

(declare-fun m!946901 () Bool)

(assert (=> bs!30001 m!946901))

(assert (=> b!1027807 d!122809))

(declare-fun d!122811 () Bool)

(assert (=> d!122811 (= (apply!935 (+!3058 lt!452597 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427))) lt!452596) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452597 (tuple2!15621 lt!452590 (minValue!5932 thiss!1427)))) lt!452596)))))

(declare-fun bs!30002 () Bool)

(assert (= bs!30002 d!122811))

(declare-fun m!946903 () Bool)

(assert (=> bs!30002 m!946903))

(assert (=> bs!30002 m!946903))

(declare-fun m!946905 () Bool)

(assert (=> bs!30002 m!946905))

(assert (=> b!1027807 d!122811))

(declare-fun d!122813 () Bool)

(assert (=> d!122813 (contains!5982 (+!3058 lt!452584 (tuple2!15621 lt!452599 (zeroValue!5932 thiss!1427))) lt!452581)))

(declare-fun lt!452766 () Unit!33514)

(declare-fun choose!1690 (ListLongMap!13775 (_ BitVec 64) V!37269 (_ BitVec 64)) Unit!33514)

(assert (=> d!122813 (= lt!452766 (choose!1690 lt!452584 lt!452599 (zeroValue!5932 thiss!1427) lt!452581))))

(assert (=> d!122813 (contains!5982 lt!452584 lt!452581)))

(assert (=> d!122813 (= (addStillContains!623 lt!452584 lt!452599 (zeroValue!5932 thiss!1427) lt!452581) lt!452766)))

(declare-fun bs!30003 () Bool)

(assert (= bs!30003 d!122813))

(assert (=> bs!30003 m!946519))

(assert (=> bs!30003 m!946519))

(assert (=> bs!30003 m!946533))

(declare-fun m!946907 () Bool)

(assert (=> bs!30003 m!946907))

(declare-fun m!946909 () Bool)

(assert (=> bs!30003 m!946909))

(assert (=> b!1027807 d!122813))

(declare-fun b!1028094 () Bool)

(declare-fun e!580351 () Bool)

(declare-fun e!580346 () Bool)

(assert (=> b!1028094 (= e!580351 e!580346)))

(assert (=> b!1028094 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun res!688066 () Bool)

(declare-fun lt!452786 () ListLongMap!13775)

(assert (=> b!1028094 (= res!688066 (contains!5982 lt!452786 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028094 (=> (not res!688066) (not e!580346))))

(declare-fun b!1028095 () Bool)

(declare-fun e!580348 () Bool)

(assert (=> b!1028095 (= e!580348 e!580351)))

(declare-fun c!103666 () Bool)

(declare-fun e!580349 () Bool)

(assert (=> b!1028095 (= c!103666 e!580349)))

(declare-fun res!688068 () Bool)

(assert (=> b!1028095 (=> (not res!688068) (not e!580349))))

(assert (=> b!1028095 (= res!688068 (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun b!1028096 () Bool)

(declare-fun res!688067 () Bool)

(assert (=> b!1028096 (=> (not res!688067) (not e!580348))))

(assert (=> b!1028096 (= res!688067 (not (contains!5982 lt!452786 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028097 () Bool)

(declare-fun lt!452783 () Unit!33514)

(declare-fun lt!452785 () Unit!33514)

(assert (=> b!1028097 (= lt!452783 lt!452785)))

(declare-fun lt!452784 () (_ BitVec 64))

(declare-fun lt!452781 () ListLongMap!13775)

(declare-fun lt!452782 () (_ BitVec 64))

(declare-fun lt!452787 () V!37269)

(assert (=> b!1028097 (not (contains!5982 (+!3058 lt!452781 (tuple2!15621 lt!452782 lt!452787)) lt!452784))))

(declare-fun addStillNotContains!240 (ListLongMap!13775 (_ BitVec 64) V!37269 (_ BitVec 64)) Unit!33514)

(assert (=> b!1028097 (= lt!452785 (addStillNotContains!240 lt!452781 lt!452782 lt!452787 lt!452784))))

(assert (=> b!1028097 (= lt!452784 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1028097 (= lt!452787 (get!16352 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1028097 (= lt!452782 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun call!43336 () ListLongMap!13775)

(assert (=> b!1028097 (= lt!452781 call!43336)))

(declare-fun e!580347 () ListLongMap!13775)

(assert (=> b!1028097 (= e!580347 (+!3058 call!43336 (tuple2!15621 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000) (get!16352 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1028098 () Bool)

(declare-fun e!580352 () ListLongMap!13775)

(assert (=> b!1028098 (= e!580352 (ListLongMap!13776 Nil!21914))))

(declare-fun d!122815 () Bool)

(assert (=> d!122815 e!580348))

(declare-fun res!688065 () Bool)

(assert (=> d!122815 (=> (not res!688065) (not e!580348))))

(assert (=> d!122815 (= res!688065 (not (contains!5982 lt!452786 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!122815 (= lt!452786 e!580352)))

(declare-fun c!103668 () Bool)

(assert (=> d!122815 (= c!103668 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122815 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122815 (= (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) lt!452786)))

(declare-fun b!1028099 () Bool)

(assert (=> b!1028099 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> b!1028099 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31634 (_values!6119 thiss!1427))))))

(assert (=> b!1028099 (= e!580346 (= (apply!935 lt!452786 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)) (get!16352 (select (arr!31120 (_values!6119 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1028100 () Bool)

(declare-fun e!580350 () Bool)

(assert (=> b!1028100 (= e!580351 e!580350)))

(declare-fun c!103665 () Bool)

(assert (=> b!1028100 (= c!103665 (bvslt #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun b!1028101 () Bool)

(assert (=> b!1028101 (= e!580349 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028101 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1028102 () Bool)

(assert (=> b!1028102 (= e!580347 call!43336)))

(declare-fun b!1028103 () Bool)

(assert (=> b!1028103 (= e!580352 e!580347)))

(declare-fun c!103667 () Bool)

(assert (=> b!1028103 (= c!103667 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43333 () Bool)

(assert (=> bm!43333 (= call!43336 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6096 thiss!1427)))))

(declare-fun b!1028104 () Bool)

(declare-fun isEmpty!925 (ListLongMap!13775) Bool)

(assert (=> b!1028104 (= e!580350 (isEmpty!925 lt!452786))))

(declare-fun b!1028105 () Bool)

(assert (=> b!1028105 (= e!580350 (= lt!452786 (getCurrentListMapNoExtraKeys!3528 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6096 thiss!1427))))))

(assert (= (and d!122815 c!103668) b!1028098))

(assert (= (and d!122815 (not c!103668)) b!1028103))

(assert (= (and b!1028103 c!103667) b!1028097))

(assert (= (and b!1028103 (not c!103667)) b!1028102))

(assert (= (or b!1028097 b!1028102) bm!43333))

(assert (= (and d!122815 res!688065) b!1028096))

(assert (= (and b!1028096 res!688067) b!1028095))

(assert (= (and b!1028095 res!688068) b!1028101))

(assert (= (and b!1028095 c!103666) b!1028094))

(assert (= (and b!1028095 (not c!103666)) b!1028100))

(assert (= (and b!1028094 res!688066) b!1028099))

(assert (= (and b!1028100 c!103665) b!1028105))

(assert (= (and b!1028100 (not c!103665)) b!1028104))

(declare-fun b_lambda!15793 () Bool)

(assert (=> (not b_lambda!15793) (not b!1028097)))

(assert (=> b!1028097 t!30995))

(declare-fun b_and!32873 () Bool)

(assert (= b_and!32871 (and (=> t!30995 result!14115) b_and!32873)))

(declare-fun b_lambda!15795 () Bool)

(assert (=> (not b_lambda!15795) (not b!1028099)))

(assert (=> b!1028099 t!30995))

(declare-fun b_and!32875 () Bool)

(assert (= b_and!32873 (and (=> t!30995 result!14115) b_and!32875)))

(assert (=> b!1028103 m!946491))

(assert (=> b!1028103 m!946491))

(assert (=> b!1028103 m!946493))

(declare-fun m!946911 () Bool)

(assert (=> b!1028097 m!946911))

(assert (=> b!1028097 m!946499))

(assert (=> b!1028097 m!946429))

(assert (=> b!1028097 m!946501))

(declare-fun m!946913 () Bool)

(assert (=> b!1028097 m!946913))

(assert (=> b!1028097 m!946911))

(declare-fun m!946915 () Bool)

(assert (=> b!1028097 m!946915))

(declare-fun m!946917 () Bool)

(assert (=> b!1028097 m!946917))

(assert (=> b!1028097 m!946491))

(assert (=> b!1028097 m!946499))

(assert (=> b!1028097 m!946429))

(declare-fun m!946919 () Bool)

(assert (=> b!1028104 m!946919))

(declare-fun m!946921 () Bool)

(assert (=> b!1028105 m!946921))

(declare-fun m!946923 () Bool)

(assert (=> b!1028096 m!946923))

(assert (=> b!1028101 m!946491))

(assert (=> b!1028101 m!946491))

(assert (=> b!1028101 m!946493))

(assert (=> b!1028094 m!946491))

(assert (=> b!1028094 m!946491))

(declare-fun m!946925 () Bool)

(assert (=> b!1028094 m!946925))

(declare-fun m!946927 () Bool)

(assert (=> d!122815 m!946927))

(assert (=> d!122815 m!946485))

(assert (=> bm!43333 m!946921))

(assert (=> b!1028099 m!946499))

(assert (=> b!1028099 m!946429))

(assert (=> b!1028099 m!946501))

(assert (=> b!1028099 m!946491))

(declare-fun m!946929 () Bool)

(assert (=> b!1028099 m!946929))

(assert (=> b!1028099 m!946491))

(assert (=> b!1028099 m!946499))

(assert (=> b!1028099 m!946429))

(assert (=> b!1027807 d!122815))

(declare-fun d!122817 () Bool)

(assert (=> d!122817 (= (apply!935 lt!452585 lt!452600) (get!16353 (getValueByKey!587 (toList!6903 lt!452585) lt!452600)))))

(declare-fun bs!30004 () Bool)

(assert (= bs!30004 d!122817))

(declare-fun m!946931 () Bool)

(assert (=> bs!30004 m!946931))

(assert (=> bs!30004 m!946931))

(declare-fun m!946933 () Bool)

(assert (=> bs!30004 m!946933))

(assert (=> b!1027807 d!122817))

(declare-fun d!122819 () Bool)

(declare-fun e!580353 () Bool)

(assert (=> d!122819 e!580353))

(declare-fun res!688069 () Bool)

(assert (=> d!122819 (=> (not res!688069) (not e!580353))))

(declare-fun lt!452789 () ListLongMap!13775)

(assert (=> d!122819 (= res!688069 (contains!5982 lt!452789 (_1!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452791 () List!21917)

(assert (=> d!122819 (= lt!452789 (ListLongMap!13776 lt!452791))))

(declare-fun lt!452790 () Unit!33514)

(declare-fun lt!452788 () Unit!33514)

(assert (=> d!122819 (= lt!452790 lt!452788)))

(assert (=> d!122819 (= (getValueByKey!587 lt!452791 (_1!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))))))

(assert (=> d!122819 (= lt!452788 (lemmaContainsTupThenGetReturnValue!276 lt!452791 (_1!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))))))

(assert (=> d!122819 (= lt!452791 (insertStrictlySorted!368 (toList!6903 lt!452585) (_1!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))))))

(assert (=> d!122819 (= (+!3058 lt!452585 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) lt!452789)))

(declare-fun b!1028106 () Bool)

(declare-fun res!688070 () Bool)

(assert (=> b!1028106 (=> (not res!688070) (not e!580353))))

(assert (=> b!1028106 (= res!688070 (= (getValueByKey!587 (toList!6903 lt!452789) (_1!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028107 () Bool)

(assert (=> b!1028107 (= e!580353 (contains!5984 (toList!6903 lt!452789) (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))))))

(assert (= (and d!122819 res!688069) b!1028106))

(assert (= (and b!1028106 res!688070) b!1028107))

(declare-fun m!946935 () Bool)

(assert (=> d!122819 m!946935))

(declare-fun m!946937 () Bool)

(assert (=> d!122819 m!946937))

(declare-fun m!946939 () Bool)

(assert (=> d!122819 m!946939))

(declare-fun m!946941 () Bool)

(assert (=> d!122819 m!946941))

(declare-fun m!946943 () Bool)

(assert (=> b!1028106 m!946943))

(declare-fun m!946945 () Bool)

(assert (=> b!1028107 m!946945))

(assert (=> b!1027807 d!122819))

(declare-fun d!122821 () Bool)

(assert (=> d!122821 (= (apply!935 (+!3058 lt!452592 (tuple2!15621 lt!452594 (zeroValue!5932 thiss!1427))) lt!452598) (apply!935 lt!452592 lt!452598))))

(declare-fun lt!452792 () Unit!33514)

(assert (=> d!122821 (= lt!452792 (choose!1689 lt!452592 lt!452594 (zeroValue!5932 thiss!1427) lt!452598))))

(declare-fun e!580354 () Bool)

(assert (=> d!122821 e!580354))

(declare-fun res!688071 () Bool)

(assert (=> d!122821 (=> (not res!688071) (not e!580354))))

(assert (=> d!122821 (= res!688071 (contains!5982 lt!452592 lt!452598))))

(assert (=> d!122821 (= (addApplyDifferent!475 lt!452592 lt!452594 (zeroValue!5932 thiss!1427) lt!452598) lt!452792)))

(declare-fun b!1028108 () Bool)

(assert (=> b!1028108 (= e!580354 (not (= lt!452598 lt!452594)))))

(assert (= (and d!122821 res!688071) b!1028108))

(declare-fun m!946947 () Bool)

(assert (=> d!122821 m!946947))

(assert (=> d!122821 m!946521))

(assert (=> d!122821 m!946523))

(assert (=> d!122821 m!946523))

(assert (=> d!122821 m!946525))

(declare-fun m!946949 () Bool)

(assert (=> d!122821 m!946949))

(assert (=> b!1027807 d!122821))

(declare-fun d!122823 () Bool)

(assert (=> d!122823 (= (apply!935 (+!3058 lt!452585 (tuple2!15621 lt!452589 (minValue!5932 thiss!1427))) lt!452600) (apply!935 lt!452585 lt!452600))))

(declare-fun lt!452793 () Unit!33514)

(assert (=> d!122823 (= lt!452793 (choose!1689 lt!452585 lt!452589 (minValue!5932 thiss!1427) lt!452600))))

(declare-fun e!580355 () Bool)

(assert (=> d!122823 e!580355))

(declare-fun res!688072 () Bool)

(assert (=> d!122823 (=> (not res!688072) (not e!580355))))

(assert (=> d!122823 (= res!688072 (contains!5982 lt!452585 lt!452600))))

(assert (=> d!122823 (= (addApplyDifferent!475 lt!452585 lt!452589 (minValue!5932 thiss!1427) lt!452600) lt!452793)))

(declare-fun b!1028109 () Bool)

(assert (=> b!1028109 (= e!580355 (not (= lt!452600 lt!452589)))))

(assert (= (and d!122823 res!688072) b!1028109))

(declare-fun m!946951 () Bool)

(assert (=> d!122823 m!946951))

(assert (=> d!122823 m!946511))

(assert (=> d!122823 m!946507))

(assert (=> d!122823 m!946507))

(assert (=> d!122823 m!946509))

(declare-fun m!946953 () Bool)

(assert (=> d!122823 m!946953))

(assert (=> b!1027807 d!122823))

(declare-fun d!122825 () Bool)

(declare-fun res!688073 () Bool)

(declare-fun e!580356 () Bool)

(assert (=> d!122825 (=> res!688073 e!580356)))

(assert (=> d!122825 (= res!688073 (= (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000) key!909))))

(assert (=> d!122825 (= (arrayContainsKey!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) key!909 #b00000000000000000000000000000000) e!580356)))

(declare-fun b!1028110 () Bool)

(declare-fun e!580357 () Bool)

(assert (=> b!1028110 (= e!580356 e!580357)))

(declare-fun res!688074 () Bool)

(assert (=> b!1028110 (=> (not res!688074) (not e!580357))))

(assert (=> b!1028110 (= res!688074 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(declare-fun b!1028111 () Bool)

(assert (=> b!1028111 (= e!580357 (arrayContainsKey!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!122825 (not res!688073)) b!1028110))

(assert (= (and b!1028110 res!688074) b!1028111))

(assert (=> d!122825 m!946671))

(declare-fun m!946955 () Bool)

(assert (=> b!1028111 m!946955))

(assert (=> b!1027826 d!122825))

(declare-fun bm!43334 () Bool)

(declare-fun call!43337 () Bool)

(assert (=> bm!43334 (= call!43337 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(declare-fun b!1028112 () Bool)

(declare-fun e!580359 () Bool)

(declare-fun e!580360 () Bool)

(assert (=> b!1028112 (= e!580359 e!580360)))

(declare-fun c!103669 () Bool)

(assert (=> b!1028112 (= c!103669 (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028113 () Bool)

(declare-fun e!580358 () Bool)

(assert (=> b!1028113 (= e!580360 e!580358)))

(declare-fun lt!452794 () (_ BitVec 64))

(assert (=> b!1028113 (= lt!452794 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!452795 () Unit!33514)

(assert (=> b!1028113 (= lt!452795 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11242 thiss!1427) lt!452794 #b00000000000000000000000000000000))))

(assert (=> b!1028113 (arrayContainsKey!0 (_keys!11242 thiss!1427) lt!452794 #b00000000000000000000000000000000)))

(declare-fun lt!452796 () Unit!33514)

(assert (=> b!1028113 (= lt!452796 lt!452795)))

(declare-fun res!688075 () Bool)

(assert (=> b!1028113 (= res!688075 (= (seekEntryOrOpen!0 (select (arr!31119 (_keys!11242 thiss!1427)) #b00000000000000000000000000000000) (_keys!11242 thiss!1427) (mask!29815 thiss!1427)) (Found!9663 #b00000000000000000000000000000000)))))

(assert (=> b!1028113 (=> (not res!688075) (not e!580358))))

(declare-fun d!122827 () Bool)

(declare-fun res!688076 () Bool)

(assert (=> d!122827 (=> res!688076 e!580359)))

(assert (=> d!122827 (= res!688076 (bvsge #b00000000000000000000000000000000 (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> d!122827 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)) e!580359)))

(declare-fun b!1028114 () Bool)

(assert (=> b!1028114 (= e!580358 call!43337)))

(declare-fun b!1028115 () Bool)

(assert (=> b!1028115 (= e!580360 call!43337)))

(assert (= (and d!122827 (not res!688076)) b!1028112))

(assert (= (and b!1028112 c!103669) b!1028113))

(assert (= (and b!1028112 (not c!103669)) b!1028115))

(assert (= (and b!1028113 res!688075) b!1028114))

(assert (= (or b!1028114 b!1028115) bm!43334))

(declare-fun m!946957 () Bool)

(assert (=> bm!43334 m!946957))

(assert (=> b!1028112 m!946491))

(assert (=> b!1028112 m!946491))

(assert (=> b!1028112 m!946493))

(assert (=> b!1028113 m!946491))

(declare-fun m!946959 () Bool)

(assert (=> b!1028113 m!946959))

(declare-fun m!946961 () Bool)

(assert (=> b!1028113 m!946961))

(assert (=> b!1028113 m!946491))

(declare-fun m!946963 () Bool)

(assert (=> b!1028113 m!946963))

(assert (=> b!1027910 d!122827))

(declare-fun b!1028125 () Bool)

(declare-fun res!688086 () Bool)

(declare-fun e!580363 () Bool)

(assert (=> b!1028125 (=> (not res!688086) (not e!580363))))

(declare-fun size!31637 (LongMapFixedSize!5484) (_ BitVec 32))

(assert (=> b!1028125 (= res!688086 (bvsge (size!31637 thiss!1427) (_size!2797 thiss!1427)))))

(declare-fun b!1028126 () Bool)

(declare-fun res!688088 () Bool)

(assert (=> b!1028126 (=> (not res!688088) (not e!580363))))

(assert (=> b!1028126 (= res!688088 (= (size!31637 thiss!1427) (bvadd (_size!2797 thiss!1427) (bvsdiv (bvadd (extraKeys!5828 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1028127 () Bool)

(assert (=> b!1028127 (= e!580363 (and (bvsge (extraKeys!5828 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5828 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2797 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1028124 () Bool)

(declare-fun res!688087 () Bool)

(assert (=> b!1028124 (=> (not res!688087) (not e!580363))))

(assert (=> b!1028124 (= res!688087 (and (= (size!31634 (_values!6119 thiss!1427)) (bvadd (mask!29815 thiss!1427) #b00000000000000000000000000000001)) (= (size!31633 (_keys!11242 thiss!1427)) (size!31634 (_values!6119 thiss!1427))) (bvsge (_size!2797 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2797 thiss!1427) (bvadd (mask!29815 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!122829 () Bool)

(declare-fun res!688085 () Bool)

(assert (=> d!122829 (=> (not res!688085) (not e!580363))))

(assert (=> d!122829 (= res!688085 (validMask!0 (mask!29815 thiss!1427)))))

(assert (=> d!122829 (= (simpleValid!390 thiss!1427) e!580363)))

(assert (= (and d!122829 res!688085) b!1028124))

(assert (= (and b!1028124 res!688087) b!1028125))

(assert (= (and b!1028125 res!688086) b!1028126))

(assert (= (and b!1028126 res!688088) b!1028127))

(declare-fun m!946965 () Bool)

(assert (=> b!1028125 m!946965))

(assert (=> b!1028126 m!946965))

(assert (=> d!122829 m!946485))

(assert (=> d!122731 d!122829))

(declare-fun b!1028128 () Bool)

(declare-fun e!580367 () Bool)

(declare-fun e!580366 () Bool)

(assert (=> b!1028128 (= e!580367 e!580366)))

(declare-fun res!688090 () Bool)

(assert (=> b!1028128 (=> (not res!688090) (not e!580366))))

(declare-fun e!580365 () Bool)

(assert (=> b!1028128 (= res!688090 (not e!580365))))

(declare-fun res!688089 () Bool)

(assert (=> b!1028128 (=> (not res!688089) (not e!580365))))

(assert (=> b!1028128 (= res!688089 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1028129 () Bool)

(declare-fun e!580364 () Bool)

(declare-fun call!43338 () Bool)

(assert (=> b!1028129 (= e!580364 call!43338)))

(declare-fun b!1028130 () Bool)

(assert (=> b!1028130 (= e!580364 call!43338)))

(declare-fun b!1028131 () Bool)

(assert (=> b!1028131 (= e!580365 (contains!5983 Nil!21915 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun c!103670 () Bool)

(declare-fun bm!43335 () Bool)

(assert (=> bm!43335 (= call!43338 (arrayNoDuplicates!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103670 (Cons!21914 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000) Nil!21915) Nil!21915)))))

(declare-fun b!1028132 () Bool)

(assert (=> b!1028132 (= e!580366 e!580364)))

(assert (=> b!1028132 (= c!103670 (validKeyInArray!0 (select (arr!31119 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun d!122831 () Bool)

(declare-fun res!688091 () Bool)

(assert (=> d!122831 (=> res!688091 e!580367)))

(assert (=> d!122831 (= res!688091 (bvsge #b00000000000000000000000000000000 (size!31633 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))))))))

(assert (=> d!122831 (= (arrayNoDuplicates!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 Nil!21915) e!580367)))

(assert (= (and d!122831 (not res!688091)) b!1028128))

(assert (= (and b!1028128 res!688089) b!1028131))

(assert (= (and b!1028128 res!688090) b!1028132))

(assert (= (and b!1028132 c!103670) b!1028129))

(assert (= (and b!1028132 (not c!103670)) b!1028130))

(assert (= (or b!1028129 b!1028130) bm!43335))

(assert (=> b!1028128 m!946671))

(assert (=> b!1028128 m!946671))

(assert (=> b!1028128 m!946673))

(assert (=> b!1028131 m!946671))

(assert (=> b!1028131 m!946671))

(declare-fun m!946967 () Bool)

(assert (=> b!1028131 m!946967))

(assert (=> bm!43335 m!946671))

(declare-fun m!946969 () Bool)

(assert (=> bm!43335 m!946969))

(assert (=> b!1028132 m!946671))

(assert (=> b!1028132 m!946671))

(assert (=> b!1028132 m!946673))

(assert (=> b!1027902 d!122831))

(declare-fun b!1028133 () Bool)

(declare-fun e!580373 () Bool)

(declare-fun e!580368 () Bool)

(assert (=> b!1028133 (= e!580373 e!580368)))

(assert (=> b!1028133 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun res!688093 () Bool)

(declare-fun lt!452802 () ListLongMap!13775)

(assert (=> b!1028133 (= res!688093 (contains!5982 lt!452802 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(assert (=> b!1028133 (=> (not res!688093) (not e!580368))))

(declare-fun b!1028134 () Bool)

(declare-fun e!580370 () Bool)

(assert (=> b!1028134 (= e!580370 e!580373)))

(declare-fun c!103672 () Bool)

(declare-fun e!580371 () Bool)

(assert (=> b!1028134 (= c!103672 e!580371)))

(declare-fun res!688095 () Bool)

(assert (=> b!1028134 (=> (not res!688095) (not e!580371))))

(assert (=> b!1028134 (= res!688095 (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun b!1028135 () Bool)

(declare-fun res!688094 () Bool)

(assert (=> b!1028135 (=> (not res!688094) (not e!580370))))

(assert (=> b!1028135 (= res!688094 (not (contains!5982 lt!452802 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028136 () Bool)

(declare-fun lt!452799 () Unit!33514)

(declare-fun lt!452801 () Unit!33514)

(assert (=> b!1028136 (= lt!452799 lt!452801)))

(declare-fun lt!452797 () ListLongMap!13775)

(declare-fun lt!452803 () V!37269)

(declare-fun lt!452800 () (_ BitVec 64))

(declare-fun lt!452798 () (_ BitVec 64))

(assert (=> b!1028136 (not (contains!5982 (+!3058 lt!452797 (tuple2!15621 lt!452798 lt!452803)) lt!452800))))

(assert (=> b!1028136 (= lt!452801 (addStillNotContains!240 lt!452797 lt!452798 lt!452803 lt!452800))))

(assert (=> b!1028136 (= lt!452800 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1028136 (= lt!452803 (get!16352 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1028136 (= lt!452798 (select (arr!31119 lt!452500) #b00000000000000000000000000000000))))

(declare-fun call!43339 () ListLongMap!13775)

(assert (=> b!1028136 (= lt!452797 call!43339)))

(declare-fun e!580369 () ListLongMap!13775)

(assert (=> b!1028136 (= e!580369 (+!3058 call!43339 (tuple2!15621 (select (arr!31119 lt!452500) #b00000000000000000000000000000000) (get!16352 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1028137 () Bool)

(declare-fun e!580374 () ListLongMap!13775)

(assert (=> b!1028137 (= e!580374 (ListLongMap!13776 Nil!21914))))

(declare-fun d!122833 () Bool)

(assert (=> d!122833 e!580370))

(declare-fun res!688092 () Bool)

(assert (=> d!122833 (=> (not res!688092) (not e!580370))))

(assert (=> d!122833 (= res!688092 (not (contains!5982 lt!452802 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!122833 (= lt!452802 e!580374)))

(declare-fun c!103674 () Bool)

(assert (=> d!122833 (= c!103674 (bvsge #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(assert (=> d!122833 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122833 (= (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)) lt!452802)))

(declare-fun b!1028138 () Bool)

(assert (=> b!1028138 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(assert (=> b!1028138 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31634 lt!452502)))))

(assert (=> b!1028138 (= e!580368 (= (apply!935 lt!452802 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) (get!16352 (select (arr!31120 lt!452502) #b00000000000000000000000000000000) (dynLambda!1954 (defaultEntry!6096 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1028139 () Bool)

(declare-fun e!580372 () Bool)

(assert (=> b!1028139 (= e!580373 e!580372)))

(declare-fun c!103671 () Bool)

(assert (=> b!1028139 (= c!103671 (bvslt #b00000000000000000000000000000000 (size!31633 lt!452500)))))

(declare-fun b!1028140 () Bool)

(assert (=> b!1028140 (= e!580371 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(assert (=> b!1028140 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1028141 () Bool)

(assert (=> b!1028141 (= e!580369 call!43339)))

(declare-fun b!1028142 () Bool)

(assert (=> b!1028142 (= e!580374 e!580369)))

(declare-fun c!103673 () Bool)

(assert (=> b!1028142 (= c!103673 (validKeyInArray!0 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun bm!43336 () Bool)

(assert (=> bm!43336 (= call!43339 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6096 thiss!1427)))))

(declare-fun b!1028143 () Bool)

(assert (=> b!1028143 (= e!580372 (isEmpty!925 lt!452802))))

(declare-fun b!1028144 () Bool)

(assert (=> b!1028144 (= e!580372 (= lt!452802 (getCurrentListMapNoExtraKeys!3528 lt!452500 lt!452502 (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6096 thiss!1427))))))

(assert (= (and d!122833 c!103674) b!1028137))

(assert (= (and d!122833 (not c!103674)) b!1028142))

(assert (= (and b!1028142 c!103673) b!1028136))

(assert (= (and b!1028142 (not c!103673)) b!1028141))

(assert (= (or b!1028136 b!1028141) bm!43336))

(assert (= (and d!122833 res!688092) b!1028135))

(assert (= (and b!1028135 res!688094) b!1028134))

(assert (= (and b!1028134 res!688095) b!1028140))

(assert (= (and b!1028134 c!103672) b!1028133))

(assert (= (and b!1028134 (not c!103672)) b!1028139))

(assert (= (and b!1028133 res!688093) b!1028138))

(assert (= (and b!1028139 c!103671) b!1028144))

(assert (= (and b!1028139 (not c!103671)) b!1028143))

(declare-fun b_lambda!15797 () Bool)

(assert (=> (not b_lambda!15797) (not b!1028136)))

(assert (=> b!1028136 t!30995))

(declare-fun b_and!32877 () Bool)

(assert (= b_and!32875 (and (=> t!30995 result!14115) b_and!32877)))

(declare-fun b_lambda!15799 () Bool)

(assert (=> (not b_lambda!15799) (not b!1028138)))

(assert (=> b!1028138 t!30995))

(declare-fun b_and!32879 () Bool)

(assert (= b_and!32877 (and (=> t!30995 result!14115) b_and!32879)))

(assert (=> b!1028142 m!946563))

(assert (=> b!1028142 m!946563))

(assert (=> b!1028142 m!946565))

(declare-fun m!946971 () Bool)

(assert (=> b!1028136 m!946971))

(assert (=> b!1028136 m!946587))

(assert (=> b!1028136 m!946429))

(assert (=> b!1028136 m!946589))

(declare-fun m!946973 () Bool)

(assert (=> b!1028136 m!946973))

(assert (=> b!1028136 m!946971))

(declare-fun m!946975 () Bool)

(assert (=> b!1028136 m!946975))

(declare-fun m!946977 () Bool)

(assert (=> b!1028136 m!946977))

(assert (=> b!1028136 m!946563))

(assert (=> b!1028136 m!946587))

(assert (=> b!1028136 m!946429))

(declare-fun m!946979 () Bool)

(assert (=> b!1028143 m!946979))

(declare-fun m!946981 () Bool)

(assert (=> b!1028144 m!946981))

(declare-fun m!946983 () Bool)

(assert (=> b!1028135 m!946983))

(assert (=> b!1028140 m!946563))

(assert (=> b!1028140 m!946563))

(assert (=> b!1028140 m!946565))

(assert (=> b!1028133 m!946563))

(assert (=> b!1028133 m!946563))

(declare-fun m!946985 () Bool)

(assert (=> b!1028133 m!946985))

(declare-fun m!946987 () Bool)

(assert (=> d!122833 m!946987))

(assert (=> d!122833 m!946485))

(assert (=> bm!43336 m!946981))

(assert (=> b!1028138 m!946587))

(assert (=> b!1028138 m!946429))

(assert (=> b!1028138 m!946589))

(assert (=> b!1028138 m!946563))

(declare-fun m!946989 () Bool)

(assert (=> b!1028138 m!946989))

(assert (=> b!1028138 m!946563))

(assert (=> b!1028138 m!946587))

(assert (=> b!1028138 m!946429))

(assert (=> bm!43307 d!122833))

(declare-fun d!122835 () Bool)

(assert (=> d!122835 (arrayNoDuplicates!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) #b00000000000000000000000000000000 Nil!21915)))

(assert (=> d!122835 true))

(declare-fun _$66!32 () Unit!33514)

(assert (=> d!122835 (= (choose!53 (_keys!11242 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41023 lt!452501) #b00000000000000000000000000000000 Nil!21915) _$66!32)))

(declare-fun bs!30005 () Bool)

(assert (= bs!30005 d!122835))

(assert (=> bs!30005 m!946397))

(assert (=> bs!30005 m!946643))

(assert (=> d!122723 d!122835))

(declare-fun d!122837 () Bool)

(assert (=> d!122837 (not (arrayContainsKey!0 (array!64631 (store (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31633 (_keys!11242 thiss!1427))) key!909 #b00000000000000000000000000000000))))

(assert (=> d!122837 true))

(declare-fun _$59!11 () Unit!33514)

(assert (=> d!122837 (= (choose!121 (_keys!11242 thiss!1427) (index!41023 lt!452501) key!909) _$59!11)))

(declare-fun bs!30006 () Bool)

(assert (= bs!30006 d!122837))

(assert (=> bs!30006 m!946397))

(assert (=> bs!30006 m!946561))

(assert (=> d!122707 d!122837))

(declare-fun d!122839 () Bool)

(declare-fun res!688096 () Bool)

(declare-fun e!580375 () Bool)

(assert (=> d!122839 (=> res!688096 e!580375)))

(assert (=> d!122839 (= res!688096 (= (select (arr!31119 lt!452500) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!909))))

(assert (=> d!122839 (= (arrayContainsKey!0 lt!452500 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!580375)))

(declare-fun b!1028145 () Bool)

(declare-fun e!580376 () Bool)

(assert (=> b!1028145 (= e!580375 e!580376)))

(declare-fun res!688097 () Bool)

(assert (=> b!1028145 (=> (not res!688097) (not e!580376))))

(assert (=> b!1028145 (= res!688097 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31633 lt!452500)))))

(declare-fun b!1028146 () Bool)

(assert (=> b!1028146 (= e!580376 (arrayContainsKey!0 lt!452500 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!122839 (not res!688096)) b!1028145))

(assert (= (and b!1028145 res!688097) b!1028146))

(assert (=> d!122839 m!946663))

(declare-fun m!946991 () Bool)

(assert (=> b!1028146 m!946991))

(assert (=> b!1027848 d!122839))

(assert (=> bm!43293 d!122815))

(declare-fun d!122841 () Bool)

(declare-fun e!580377 () Bool)

(assert (=> d!122841 e!580377))

(declare-fun res!688098 () Bool)

(assert (=> d!122841 (=> res!688098 e!580377)))

(declare-fun lt!452804 () Bool)

(assert (=> d!122841 (= res!688098 (not lt!452804))))

(declare-fun lt!452807 () Bool)

(assert (=> d!122841 (= lt!452804 lt!452807)))

(declare-fun lt!452806 () Unit!33514)

(declare-fun e!580378 () Unit!33514)

(assert (=> d!122841 (= lt!452806 e!580378)))

(declare-fun c!103675 () Bool)

(assert (=> d!122841 (= c!103675 lt!452807)))

(assert (=> d!122841 (= lt!452807 (containsKey!560 (toList!6903 lt!452637) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122841 (= (contains!5982 lt!452637 #b1000000000000000000000000000000000000000000000000000000000000000) lt!452804)))

(declare-fun b!1028147 () Bool)

(declare-fun lt!452805 () Unit!33514)

(assert (=> b!1028147 (= e!580378 lt!452805)))

(assert (=> b!1028147 (= lt!452805 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452637) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028147 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028148 () Bool)

(declare-fun Unit!33529 () Unit!33514)

(assert (=> b!1028148 (= e!580378 Unit!33529)))

(declare-fun b!1028149 () Bool)

(assert (=> b!1028149 (= e!580377 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122841 c!103675) b!1028147))

(assert (= (and d!122841 (not c!103675)) b!1028148))

(assert (= (and d!122841 (not res!688098)) b!1028149))

(declare-fun m!946993 () Bool)

(assert (=> d!122841 m!946993))

(declare-fun m!946995 () Bool)

(assert (=> b!1028147 m!946995))

(declare-fun m!946997 () Bool)

(assert (=> b!1028147 m!946997))

(assert (=> b!1028147 m!946997))

(declare-fun m!946999 () Bool)

(assert (=> b!1028147 m!946999))

(assert (=> b!1028149 m!946997))

(assert (=> b!1028149 m!946997))

(assert (=> b!1028149 m!946999))

(assert (=> bm!43309 d!122841))

(declare-fun d!122843 () Bool)

(assert (=> d!122843 (= (apply!935 lt!452593 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16353 (getValueByKey!587 (toList!6903 lt!452593) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30007 () Bool)

(assert (= bs!30007 d!122843))

(assert (=> bs!30007 m!946769))

(assert (=> bs!30007 m!946769))

(declare-fun m!947001 () Bool)

(assert (=> bs!30007 m!947001))

(assert (=> b!1027798 d!122843))

(declare-fun d!122845 () Bool)

(assert (=> d!122845 (= (apply!935 lt!452637 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16353 (getValueByKey!587 (toList!6903 lt!452637) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30008 () Bool)

(assert (= bs!30008 d!122845))

(assert (=> bs!30008 m!946997))

(assert (=> bs!30008 m!946997))

(declare-fun m!947003 () Bool)

(assert (=> bs!30008 m!947003))

(assert (=> b!1027868 d!122845))

(declare-fun d!122847 () Bool)

(declare-fun e!580379 () Bool)

(assert (=> d!122847 e!580379))

(declare-fun res!688099 () Bool)

(assert (=> d!122847 (=> res!688099 e!580379)))

(declare-fun lt!452808 () Bool)

(assert (=> d!122847 (= res!688099 (not lt!452808))))

(declare-fun lt!452811 () Bool)

(assert (=> d!122847 (= lt!452808 lt!452811)))

(declare-fun lt!452810 () Unit!33514)

(declare-fun e!580380 () Unit!33514)

(assert (=> d!122847 (= lt!452810 e!580380)))

(declare-fun c!103676 () Bool)

(assert (=> d!122847 (= c!103676 lt!452811)))

(assert (=> d!122847 (= lt!452811 (containsKey!560 (toList!6903 lt!452607) key!909))))

(assert (=> d!122847 (= (contains!5982 lt!452607 key!909) lt!452808)))

(declare-fun b!1028150 () Bool)

(declare-fun lt!452809 () Unit!33514)

(assert (=> b!1028150 (= e!580380 lt!452809)))

(assert (=> b!1028150 (= lt!452809 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452607) key!909))))

(assert (=> b!1028150 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452607) key!909))))

(declare-fun b!1028151 () Bool)

(declare-fun Unit!33530 () Unit!33514)

(assert (=> b!1028151 (= e!580380 Unit!33530)))

(declare-fun b!1028152 () Bool)

(assert (=> b!1028152 (= e!580379 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452607) key!909)))))

(assert (= (and d!122847 c!103676) b!1028150))

(assert (= (and d!122847 (not c!103676)) b!1028151))

(assert (= (and d!122847 (not res!688099)) b!1028152))

(declare-fun m!947005 () Bool)

(assert (=> d!122847 m!947005))

(declare-fun m!947007 () Bool)

(assert (=> b!1028150 m!947007))

(declare-fun m!947009 () Bool)

(assert (=> b!1028150 m!947009))

(assert (=> b!1028150 m!947009))

(declare-fun m!947011 () Bool)

(assert (=> b!1028150 m!947011))

(assert (=> b!1028152 m!947009))

(assert (=> b!1028152 m!947009))

(assert (=> b!1028152 m!947011))

(assert (=> d!122705 d!122847))

(declare-fun b!1028163 () Bool)

(declare-fun e!580387 () List!21917)

(assert (=> b!1028163 (= e!580387 (t!30996 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))))))

(declare-fun b!1028164 () Bool)

(declare-fun e!580389 () List!21917)

(declare-fun $colon$colon!601 (List!21917 tuple2!15620) List!21917)

(assert (=> b!1028164 (= e!580389 ($colon$colon!601 (removeStrictlySorted!51 (t!30996 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))) key!909) (h!23111 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))))))))

(declare-fun b!1028165 () Bool)

(assert (=> b!1028165 (= e!580387 e!580389)))

(declare-fun c!103681 () Bool)

(assert (=> b!1028165 (= c!103681 (and ((_ is Cons!21913) (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))) (not (= (_1!7820 (h!23111 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))))) key!909))))))

(declare-fun b!1028166 () Bool)

(declare-fun e!580388 () Bool)

(declare-fun lt!452814 () List!21917)

(assert (=> b!1028166 (= e!580388 (not (containsKey!560 lt!452814 key!909)))))

(declare-fun d!122849 () Bool)

(assert (=> d!122849 e!580388))

(declare-fun res!688102 () Bool)

(assert (=> d!122849 (=> (not res!688102) (not e!580388))))

(declare-fun isStrictlySorted!710 (List!21917) Bool)

(assert (=> d!122849 (= res!688102 (isStrictlySorted!710 lt!452814))))

(assert (=> d!122849 (= lt!452814 e!580387)))

(declare-fun c!103682 () Bool)

(assert (=> d!122849 (= c!103682 (and ((_ is Cons!21913) (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427)))) (= (_1!7820 (h!23111 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))))) key!909)))))

(assert (=> d!122849 (isStrictlySorted!710 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))))))

(assert (=> d!122849 (= (removeStrictlySorted!51 (toList!6903 (getCurrentListMap!3910 (_keys!11242 thiss!1427) (_values!6119 thiss!1427) (mask!29815 thiss!1427) (extraKeys!5828 thiss!1427) (zeroValue!5932 thiss!1427) (minValue!5932 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6096 thiss!1427))) key!909) lt!452814)))

(declare-fun b!1028167 () Bool)

(assert (=> b!1028167 (= e!580389 Nil!21914)))

(assert (= (and d!122849 c!103682) b!1028163))

(assert (= (and d!122849 (not c!103682)) b!1028165))

(assert (= (and b!1028165 c!103681) b!1028164))

(assert (= (and b!1028165 (not c!103681)) b!1028167))

(assert (= (and d!122849 res!688102) b!1028166))

(declare-fun m!947013 () Bool)

(assert (=> b!1028164 m!947013))

(assert (=> b!1028164 m!947013))

(declare-fun m!947015 () Bool)

(assert (=> b!1028164 m!947015))

(declare-fun m!947017 () Bool)

(assert (=> b!1028166 m!947017))

(declare-fun m!947019 () Bool)

(assert (=> d!122849 m!947019))

(declare-fun m!947021 () Bool)

(assert (=> d!122849 m!947021))

(assert (=> d!122705 d!122849))

(declare-fun d!122851 () Bool)

(declare-fun e!580390 () Bool)

(assert (=> d!122851 e!580390))

(declare-fun res!688103 () Bool)

(assert (=> d!122851 (=> (not res!688103) (not e!580390))))

(declare-fun lt!452816 () ListLongMap!13775)

(assert (=> d!122851 (= res!688103 (contains!5982 lt!452816 (_1!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun lt!452818 () List!21917)

(assert (=> d!122851 (= lt!452816 (ListLongMap!13776 lt!452818))))

(declare-fun lt!452817 () Unit!33514)

(declare-fun lt!452815 () Unit!33514)

(assert (=> d!122851 (= lt!452817 lt!452815)))

(assert (=> d!122851 (= (getValueByKey!587 lt!452818 (_1!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))) (Some!637 (_2!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(assert (=> d!122851 (= lt!452815 (lemmaContainsTupThenGetReturnValue!276 lt!452818 (_1!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (_2!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(assert (=> d!122851 (= lt!452818 (insertStrictlySorted!368 (toList!6903 (ite c!103583 call!43298 (ite c!103582 call!43300 call!43296))) (_1!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (_2!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(assert (=> d!122851 (= (+!3058 (ite c!103583 call!43298 (ite c!103582 call!43300 call!43296)) (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) lt!452816)))

(declare-fun b!1028168 () Bool)

(declare-fun res!688104 () Bool)

(assert (=> b!1028168 (=> (not res!688104) (not e!580390))))

(assert (=> b!1028168 (= res!688104 (= (getValueByKey!587 (toList!6903 lt!452816) (_1!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))) (Some!637 (_2!7820 (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))))

(declare-fun b!1028169 () Bool)

(assert (=> b!1028169 (= e!580390 (contains!5984 (toList!6903 lt!452816) (ite (or c!103583 c!103582) (tuple2!15621 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5932 thiss!1427)) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (= (and d!122851 res!688103) b!1028168))

(assert (= (and b!1028168 res!688104) b!1028169))

(declare-fun m!947023 () Bool)

(assert (=> d!122851 m!947023))

(declare-fun m!947025 () Bool)

(assert (=> d!122851 m!947025))

(declare-fun m!947027 () Bool)

(assert (=> d!122851 m!947027))

(declare-fun m!947029 () Bool)

(assert (=> d!122851 m!947029))

(declare-fun m!947031 () Bool)

(assert (=> b!1028168 m!947031))

(declare-fun m!947033 () Bool)

(assert (=> b!1028169 m!947033))

(assert (=> bm!43294 d!122851))

(declare-fun b!1028188 () Bool)

(declare-fun e!580404 () SeekEntryResult!9663)

(assert (=> b!1028188 (= e!580404 (Intermediate!9663 true (toIndex!0 key!909 (mask!29815 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1028189 () Bool)

(declare-fun lt!452824 () SeekEntryResult!9663)

(assert (=> b!1028189 (and (bvsge (index!41024 lt!452824) #b00000000000000000000000000000000) (bvslt (index!41024 lt!452824) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun res!688111 () Bool)

(assert (=> b!1028189 (= res!688111 (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41024 lt!452824)) key!909))))

(declare-fun e!580405 () Bool)

(assert (=> b!1028189 (=> res!688111 e!580405)))

(declare-fun e!580402 () Bool)

(assert (=> b!1028189 (= e!580402 e!580405)))

(declare-fun b!1028190 () Bool)

(assert (=> b!1028190 (and (bvsge (index!41024 lt!452824) #b00000000000000000000000000000000) (bvslt (index!41024 lt!452824) (size!31633 (_keys!11242 thiss!1427))))))

(declare-fun res!688113 () Bool)

(assert (=> b!1028190 (= res!688113 (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41024 lt!452824)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028190 (=> res!688113 e!580405)))

(declare-fun b!1028191 () Bool)

(declare-fun e!580403 () SeekEntryResult!9663)

(assert (=> b!1028191 (= e!580403 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!29815 thiss!1427)) #b00000000000000000000000000000000 (mask!29815 thiss!1427)) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)))))

(declare-fun b!1028192 () Bool)

(assert (=> b!1028192 (= e!580404 e!580403)))

(declare-fun c!103691 () Bool)

(declare-fun lt!452823 () (_ BitVec 64))

(assert (=> b!1028192 (= c!103691 (or (= lt!452823 key!909) (= (bvadd lt!452823 lt!452823) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!122853 () Bool)

(declare-fun e!580401 () Bool)

(assert (=> d!122853 e!580401))

(declare-fun c!103690 () Bool)

(assert (=> d!122853 (= c!103690 (and ((_ is Intermediate!9663) lt!452824) (undefined!10475 lt!452824)))))

(assert (=> d!122853 (= lt!452824 e!580404)))

(declare-fun c!103689 () Bool)

(assert (=> d!122853 (= c!103689 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!122853 (= lt!452823 (select (arr!31119 (_keys!11242 thiss!1427)) (toIndex!0 key!909 (mask!29815 thiss!1427))))))

(assert (=> d!122853 (validMask!0 (mask!29815 thiss!1427))))

(assert (=> d!122853 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29815 thiss!1427)) key!909 (_keys!11242 thiss!1427) (mask!29815 thiss!1427)) lt!452824)))

(declare-fun b!1028193 () Bool)

(assert (=> b!1028193 (= e!580401 (bvsge (x!91444 lt!452824) #b01111111111111111111111111111110))))

(declare-fun b!1028194 () Bool)

(assert (=> b!1028194 (and (bvsge (index!41024 lt!452824) #b00000000000000000000000000000000) (bvslt (index!41024 lt!452824) (size!31633 (_keys!11242 thiss!1427))))))

(assert (=> b!1028194 (= e!580405 (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41024 lt!452824)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028195 () Bool)

(assert (=> b!1028195 (= e!580403 (Intermediate!9663 false (toIndex!0 key!909 (mask!29815 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1028196 () Bool)

(assert (=> b!1028196 (= e!580401 e!580402)))

(declare-fun res!688112 () Bool)

(assert (=> b!1028196 (= res!688112 (and ((_ is Intermediate!9663) lt!452824) (not (undefined!10475 lt!452824)) (bvslt (x!91444 lt!452824) #b01111111111111111111111111111110) (bvsge (x!91444 lt!452824) #b00000000000000000000000000000000) (bvsge (x!91444 lt!452824) #b00000000000000000000000000000000)))))

(assert (=> b!1028196 (=> (not res!688112) (not e!580402))))

(assert (= (and d!122853 c!103689) b!1028188))

(assert (= (and d!122853 (not c!103689)) b!1028192))

(assert (= (and b!1028192 c!103691) b!1028195))

(assert (= (and b!1028192 (not c!103691)) b!1028191))

(assert (= (and d!122853 c!103690) b!1028193))

(assert (= (and d!122853 (not c!103690)) b!1028196))

(assert (= (and b!1028196 res!688112) b!1028189))

(assert (= (and b!1028189 (not res!688111)) b!1028190))

(assert (= (and b!1028190 (not res!688113)) b!1028194))

(assert (=> b!1028191 m!946655))

(declare-fun m!947035 () Bool)

(assert (=> b!1028191 m!947035))

(assert (=> b!1028191 m!947035))

(declare-fun m!947037 () Bool)

(assert (=> b!1028191 m!947037))

(declare-fun m!947039 () Bool)

(assert (=> b!1028194 m!947039))

(assert (=> b!1028190 m!947039))

(assert (=> b!1028189 m!947039))

(assert (=> d!122853 m!946655))

(declare-fun m!947041 () Bool)

(assert (=> d!122853 m!947041))

(assert (=> d!122853 m!946485))

(assert (=> d!122733 d!122853))

(declare-fun d!122855 () Bool)

(declare-fun lt!452830 () (_ BitVec 32))

(declare-fun lt!452829 () (_ BitVec 32))

(assert (=> d!122855 (= lt!452830 (bvmul (bvxor lt!452829 (bvlshr lt!452829 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!122855 (= lt!452829 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!122855 (and (bvsge (mask!29815 thiss!1427) #b00000000000000000000000000000000) (let ((res!688114 (let ((h!23115 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!91477 (bvmul (bvxor h!23115 (bvlshr h!23115 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!91477 (bvlshr x!91477 #b00000000000000000000000000001101)) (mask!29815 thiss!1427)))))) (and (bvslt res!688114 (bvadd (mask!29815 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!688114 #b00000000000000000000000000000000))))))

(assert (=> d!122855 (= (toIndex!0 key!909 (mask!29815 thiss!1427)) (bvand (bvxor lt!452830 (bvlshr lt!452830 #b00000000000000000000000000001101)) (mask!29815 thiss!1427)))))

(assert (=> d!122733 d!122855))

(assert (=> d!122733 d!122747))

(declare-fun d!122857 () Bool)

(declare-fun e!580406 () Bool)

(assert (=> d!122857 e!580406))

(declare-fun res!688115 () Bool)

(assert (=> d!122857 (=> (not res!688115) (not e!580406))))

(declare-fun lt!452832 () ListLongMap!13775)

(assert (=> d!122857 (= res!688115 (contains!5982 lt!452832 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452834 () List!21917)

(assert (=> d!122857 (= lt!452832 (ListLongMap!13776 lt!452834))))

(declare-fun lt!452833 () Unit!33514)

(declare-fun lt!452831 () Unit!33514)

(assert (=> d!122857 (= lt!452833 lt!452831)))

(assert (=> d!122857 (= (getValueByKey!587 lt!452834 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122857 (= lt!452831 (lemmaContainsTupThenGetReturnValue!276 lt!452834 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122857 (= lt!452834 (insertStrictlySorted!368 (toList!6903 call!43311) (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122857 (= (+!3058 call!43311 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) lt!452832)))

(declare-fun b!1028197 () Bool)

(declare-fun res!688116 () Bool)

(assert (=> b!1028197 (=> (not res!688116) (not e!580406))))

(assert (=> b!1028197 (= res!688116 (= (getValueByKey!587 (toList!6903 lt!452832) (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028198 () Bool)

(assert (=> b!1028198 (= e!580406 (contains!5984 (toList!6903 lt!452832) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))

(assert (= (and d!122857 res!688115) b!1028197))

(assert (= (and b!1028197 res!688116) b!1028198))

(declare-fun m!947043 () Bool)

(assert (=> d!122857 m!947043))

(declare-fun m!947045 () Bool)

(assert (=> d!122857 m!947045))

(declare-fun m!947047 () Bool)

(assert (=> d!122857 m!947047))

(declare-fun m!947049 () Bool)

(assert (=> d!122857 m!947049))

(declare-fun m!947051 () Bool)

(assert (=> b!1028197 m!947051))

(declare-fun m!947053 () Bool)

(assert (=> b!1028198 m!947053))

(assert (=> b!1027873 d!122857))

(assert (=> b!1027857 d!122769))

(declare-fun d!122859 () Bool)

(declare-fun e!580407 () Bool)

(assert (=> d!122859 e!580407))

(declare-fun res!688117 () Bool)

(assert (=> d!122859 (=> res!688117 e!580407)))

(declare-fun lt!452835 () Bool)

(assert (=> d!122859 (= res!688117 (not lt!452835))))

(declare-fun lt!452838 () Bool)

(assert (=> d!122859 (= lt!452835 lt!452838)))

(declare-fun lt!452837 () Unit!33514)

(declare-fun e!580408 () Unit!33514)

(assert (=> d!122859 (= lt!452837 e!580408)))

(declare-fun c!103692 () Bool)

(assert (=> d!122859 (= c!103692 lt!452838)))

(assert (=> d!122859 (= lt!452838 (containsKey!560 (toList!6903 lt!452637) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122859 (= (contains!5982 lt!452637 #b0000000000000000000000000000000000000000000000000000000000000000) lt!452835)))

(declare-fun b!1028199 () Bool)

(declare-fun lt!452836 () Unit!33514)

(assert (=> b!1028199 (= e!580408 lt!452836)))

(assert (=> b!1028199 (= lt!452836 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452637) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028199 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028200 () Bool)

(declare-fun Unit!33531 () Unit!33514)

(assert (=> b!1028200 (= e!580408 Unit!33531)))

(declare-fun b!1028201 () Bool)

(assert (=> b!1028201 (= e!580407 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452637) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122859 c!103692) b!1028199))

(assert (= (and d!122859 (not c!103692)) b!1028200))

(assert (= (and d!122859 (not res!688117)) b!1028201))

(declare-fun m!947055 () Bool)

(assert (=> d!122859 m!947055))

(declare-fun m!947057 () Bool)

(assert (=> b!1028199 m!947057))

(assert (=> b!1028199 m!946807))

(assert (=> b!1028199 m!946807))

(declare-fun m!947059 () Bool)

(assert (=> b!1028199 m!947059))

(assert (=> b!1028201 m!946807))

(assert (=> b!1028201 m!946807))

(assert (=> b!1028201 m!947059))

(assert (=> bm!43310 d!122859))

(declare-fun d!122861 () Bool)

(declare-fun e!580409 () Bool)

(assert (=> d!122861 e!580409))

(declare-fun res!688118 () Bool)

(assert (=> d!122861 (=> (not res!688118) (not e!580409))))

(declare-fun lt!452840 () ListLongMap!13775)

(assert (=> d!122861 (= res!688118 (contains!5982 lt!452840 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452842 () List!21917)

(assert (=> d!122861 (= lt!452840 (ListLongMap!13776 lt!452842))))

(declare-fun lt!452841 () Unit!33514)

(declare-fun lt!452839 () Unit!33514)

(assert (=> d!122861 (= lt!452841 lt!452839)))

(assert (=> d!122861 (= (getValueByKey!587 lt!452842 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122861 (= lt!452839 (lemmaContainsTupThenGetReturnValue!276 lt!452842 (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122861 (= lt!452842 (insertStrictlySorted!368 (toList!6903 call!43297) (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))))))

(assert (=> d!122861 (= (+!3058 call!43297 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))) lt!452840)))

(declare-fun b!1028202 () Bool)

(declare-fun res!688119 () Bool)

(assert (=> b!1028202 (=> (not res!688119) (not e!580409))))

(assert (=> b!1028202 (= res!688119 (= (getValueByKey!587 (toList!6903 lt!452840) (_1!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028203 () Bool)

(assert (=> b!1028203 (= e!580409 (contains!5984 (toList!6903 lt!452840) (tuple2!15621 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5932 thiss!1427))))))

(assert (= (and d!122861 res!688118) b!1028202))

(assert (= (and b!1028202 res!688119) b!1028203))

(declare-fun m!947061 () Bool)

(assert (=> d!122861 m!947061))

(declare-fun m!947063 () Bool)

(assert (=> d!122861 m!947063))

(declare-fun m!947065 () Bool)

(assert (=> d!122861 m!947065))

(declare-fun m!947067 () Bool)

(assert (=> d!122861 m!947067))

(declare-fun m!947069 () Bool)

(assert (=> b!1028202 m!947069))

(declare-fun m!947071 () Bool)

(assert (=> b!1028203 m!947071))

(assert (=> b!1027803 d!122861))

(declare-fun d!122863 () Bool)

(declare-fun lt!452845 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!512 (List!21918) (InoxSet (_ BitVec 64)))

(assert (=> d!122863 (= lt!452845 (select (content!512 Nil!21915) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun e!580414 () Bool)

(assert (=> d!122863 (= lt!452845 e!580414)))

(declare-fun res!688125 () Bool)

(assert (=> d!122863 (=> (not res!688125) (not e!580414))))

(assert (=> d!122863 (= res!688125 ((_ is Cons!21914) Nil!21915))))

(assert (=> d!122863 (= (contains!5983 Nil!21915 (select (arr!31119 lt!452500) #b00000000000000000000000000000000)) lt!452845)))

(declare-fun b!1028208 () Bool)

(declare-fun e!580415 () Bool)

(assert (=> b!1028208 (= e!580414 e!580415)))

(declare-fun res!688124 () Bool)

(assert (=> b!1028208 (=> res!688124 e!580415)))

(assert (=> b!1028208 (= res!688124 (= (h!23112 Nil!21915) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(declare-fun b!1028209 () Bool)

(assert (=> b!1028209 (= e!580415 (contains!5983 (t!30997 Nil!21915) (select (arr!31119 lt!452500) #b00000000000000000000000000000000)))))

(assert (= (and d!122863 res!688125) b!1028208))

(assert (= (and b!1028208 (not res!688124)) b!1028209))

(declare-fun m!947073 () Bool)

(assert (=> d!122863 m!947073))

(assert (=> d!122863 m!946563))

(declare-fun m!947075 () Bool)

(assert (=> d!122863 m!947075))

(assert (=> b!1028209 m!946563))

(declare-fun m!947077 () Bool)

(assert (=> b!1028209 m!947077))

(assert (=> b!1027898 d!122863))

(declare-fun d!122865 () Bool)

(declare-fun e!580416 () Bool)

(assert (=> d!122865 e!580416))

(declare-fun res!688126 () Bool)

(assert (=> d!122865 (=> (not res!688126) (not e!580416))))

(declare-fun lt!452847 () ListLongMap!13775)

(assert (=> d!122865 (= res!688126 (contains!5982 lt!452847 (_1!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))))))

(declare-fun lt!452849 () List!21917)

(assert (=> d!122865 (= lt!452847 (ListLongMap!13776 lt!452849))))

(declare-fun lt!452848 () Unit!33514)

(declare-fun lt!452846 () Unit!33514)

(assert (=> d!122865 (= lt!452848 lt!452846)))

(assert (=> d!122865 (= (getValueByKey!587 lt!452849 (_1!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122865 (= lt!452846 (lemmaContainsTupThenGetReturnValue!276 lt!452849 (_1!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122865 (= lt!452849 (insertStrictlySorted!368 (toList!6903 lt!452636) (_1!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122865 (= (+!3058 lt!452636 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) lt!452847)))

(declare-fun b!1028210 () Bool)

(declare-fun res!688127 () Bool)

(assert (=> b!1028210 (=> (not res!688127) (not e!580416))))

(assert (=> b!1028210 (= res!688127 (= (getValueByKey!587 (toList!6903 lt!452847) (_1!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))))))))

(declare-fun b!1028211 () Bool)

(assert (=> b!1028211 (= e!580416 (contains!5984 (toList!6903 lt!452847) (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))))))

(assert (= (and d!122865 res!688126) b!1028210))

(assert (= (and b!1028210 res!688127) b!1028211))

(declare-fun m!947079 () Bool)

(assert (=> d!122865 m!947079))

(declare-fun m!947081 () Bool)

(assert (=> d!122865 m!947081))

(declare-fun m!947083 () Bool)

(assert (=> d!122865 m!947083))

(declare-fun m!947085 () Bool)

(assert (=> d!122865 m!947085))

(declare-fun m!947087 () Bool)

(assert (=> b!1028210 m!947087))

(declare-fun m!947089 () Bool)

(assert (=> b!1028211 m!947089))

(assert (=> b!1027877 d!122865))

(declare-fun d!122867 () Bool)

(assert (=> d!122867 (= (apply!935 lt!452641 lt!452640) (get!16353 (getValueByKey!587 (toList!6903 lt!452641) lt!452640)))))

(declare-fun bs!30009 () Bool)

(assert (= bs!30009 d!122867))

(declare-fun m!947091 () Bool)

(assert (=> bs!30009 m!947091))

(assert (=> bs!30009 m!947091))

(declare-fun m!947093 () Bool)

(assert (=> bs!30009 m!947093))

(assert (=> b!1027877 d!122867))

(assert (=> b!1027877 d!122833))

(declare-fun d!122869 () Bool)

(assert (=> d!122869 (contains!5982 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) lt!452625)))

(declare-fun lt!452850 () Unit!33514)

(assert (=> d!122869 (= lt!452850 (choose!1690 lt!452628 lt!452643 (zeroValue!5932 thiss!1427) lt!452625))))

(assert (=> d!122869 (contains!5982 lt!452628 lt!452625)))

(assert (=> d!122869 (= (addStillContains!623 lt!452628 lt!452643 (zeroValue!5932 thiss!1427) lt!452625) lt!452850)))

(declare-fun bs!30010 () Bool)

(assert (= bs!30010 d!122869))

(assert (=> bs!30010 m!946607))

(assert (=> bs!30010 m!946607))

(assert (=> bs!30010 m!946621))

(declare-fun m!947095 () Bool)

(assert (=> bs!30010 m!947095))

(declare-fun m!947097 () Bool)

(assert (=> bs!30010 m!947097))

(assert (=> b!1027877 d!122869))

(declare-fun d!122871 () Bool)

(assert (=> d!122871 (= (apply!935 (+!3058 lt!452636 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) lt!452642) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452636 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427)))) lt!452642)))))

(declare-fun bs!30011 () Bool)

(assert (= bs!30011 d!122871))

(declare-fun m!947099 () Bool)

(assert (=> bs!30011 m!947099))

(assert (=> bs!30011 m!947099))

(declare-fun m!947101 () Bool)

(assert (=> bs!30011 m!947101))

(assert (=> b!1027877 d!122871))

(declare-fun d!122873 () Bool)

(assert (=> d!122873 (= (apply!935 (+!3058 lt!452641 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) lt!452640) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452641 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))) lt!452640)))))

(declare-fun bs!30012 () Bool)

(assert (= bs!30012 d!122873))

(declare-fun m!947103 () Bool)

(assert (=> bs!30012 m!947103))

(assert (=> bs!30012 m!947103))

(declare-fun m!947105 () Bool)

(assert (=> bs!30012 m!947105))

(assert (=> b!1027877 d!122873))

(declare-fun d!122875 () Bool)

(assert (=> d!122875 (= (apply!935 (+!3058 lt!452636 (tuple2!15621 lt!452638 (zeroValue!5932 thiss!1427))) lt!452642) (apply!935 lt!452636 lt!452642))))

(declare-fun lt!452851 () Unit!33514)

(assert (=> d!122875 (= lt!452851 (choose!1689 lt!452636 lt!452638 (zeroValue!5932 thiss!1427) lt!452642))))

(declare-fun e!580417 () Bool)

(assert (=> d!122875 e!580417))

(declare-fun res!688128 () Bool)

(assert (=> d!122875 (=> (not res!688128) (not e!580417))))

(assert (=> d!122875 (= res!688128 (contains!5982 lt!452636 lt!452642))))

(assert (=> d!122875 (= (addApplyDifferent!475 lt!452636 lt!452638 (zeroValue!5932 thiss!1427) lt!452642) lt!452851)))

(declare-fun b!1028212 () Bool)

(assert (=> b!1028212 (= e!580417 (not (= lt!452642 lt!452638)))))

(assert (= (and d!122875 res!688128) b!1028212))

(declare-fun m!947107 () Bool)

(assert (=> d!122875 m!947107))

(assert (=> d!122875 m!946609))

(assert (=> d!122875 m!946611))

(assert (=> d!122875 m!946611))

(assert (=> d!122875 m!946613))

(declare-fun m!947109 () Bool)

(assert (=> d!122875 m!947109))

(assert (=> b!1027877 d!122875))

(declare-fun d!122877 () Bool)

(assert (=> d!122877 (= (apply!935 (+!3058 lt!452629 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) lt!452644) (get!16353 (getValueByKey!587 (toList!6903 (+!3058 lt!452629 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))) lt!452644)))))

(declare-fun bs!30013 () Bool)

(assert (= bs!30013 d!122877))

(declare-fun m!947111 () Bool)

(assert (=> bs!30013 m!947111))

(assert (=> bs!30013 m!947111))

(declare-fun m!947113 () Bool)

(assert (=> bs!30013 m!947113))

(assert (=> b!1027877 d!122877))

(declare-fun d!122879 () Bool)

(declare-fun e!580418 () Bool)

(assert (=> d!122879 e!580418))

(declare-fun res!688129 () Bool)

(assert (=> d!122879 (=> (not res!688129) (not e!580418))))

(declare-fun lt!452853 () ListLongMap!13775)

(assert (=> d!122879 (= res!688129 (contains!5982 lt!452853 (_1!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))))))

(declare-fun lt!452855 () List!21917)

(assert (=> d!122879 (= lt!452853 (ListLongMap!13776 lt!452855))))

(declare-fun lt!452854 () Unit!33514)

(declare-fun lt!452852 () Unit!33514)

(assert (=> d!122879 (= lt!452854 lt!452852)))

(assert (=> d!122879 (= (getValueByKey!587 lt!452855 (_1!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122879 (= lt!452852 (lemmaContainsTupThenGetReturnValue!276 lt!452855 (_1!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122879 (= lt!452855 (insertStrictlySorted!368 (toList!6903 lt!452628) (_1!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))))))

(assert (=> d!122879 (= (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) lt!452853)))

(declare-fun b!1028213 () Bool)

(declare-fun res!688130 () Bool)

(assert (=> b!1028213 (=> (not res!688130) (not e!580418))))

(assert (=> b!1028213 (= res!688130 (= (getValueByKey!587 (toList!6903 lt!452853) (_1!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))))))))

(declare-fun b!1028214 () Bool)

(assert (=> b!1028214 (= e!580418 (contains!5984 (toList!6903 lt!452853) (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))))))

(assert (= (and d!122879 res!688129) b!1028213))

(assert (= (and b!1028213 res!688130) b!1028214))

(declare-fun m!947115 () Bool)

(assert (=> d!122879 m!947115))

(declare-fun m!947117 () Bool)

(assert (=> d!122879 m!947117))

(declare-fun m!947119 () Bool)

(assert (=> d!122879 m!947119))

(declare-fun m!947121 () Bool)

(assert (=> d!122879 m!947121))

(declare-fun m!947123 () Bool)

(assert (=> b!1028213 m!947123))

(declare-fun m!947125 () Bool)

(assert (=> b!1028214 m!947125))

(assert (=> b!1027877 d!122879))

(declare-fun d!122881 () Bool)

(assert (=> d!122881 (= (apply!935 lt!452629 lt!452644) (get!16353 (getValueByKey!587 (toList!6903 lt!452629) lt!452644)))))

(declare-fun bs!30014 () Bool)

(assert (= bs!30014 d!122881))

(declare-fun m!947127 () Bool)

(assert (=> bs!30014 m!947127))

(assert (=> bs!30014 m!947127))

(declare-fun m!947129 () Bool)

(assert (=> bs!30014 m!947129))

(assert (=> b!1027877 d!122881))

(declare-fun d!122883 () Bool)

(assert (=> d!122883 (= (apply!935 (+!3058 lt!452629 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) lt!452644) (apply!935 lt!452629 lt!452644))))

(declare-fun lt!452856 () Unit!33514)

(assert (=> d!122883 (= lt!452856 (choose!1689 lt!452629 lt!452633 (minValue!5932 thiss!1427) lt!452644))))

(declare-fun e!580419 () Bool)

(assert (=> d!122883 e!580419))

(declare-fun res!688131 () Bool)

(assert (=> d!122883 (=> (not res!688131) (not e!580419))))

(assert (=> d!122883 (= res!688131 (contains!5982 lt!452629 lt!452644))))

(assert (=> d!122883 (= (addApplyDifferent!475 lt!452629 lt!452633 (minValue!5932 thiss!1427) lt!452644) lt!452856)))

(declare-fun b!1028215 () Bool)

(assert (=> b!1028215 (= e!580419 (not (= lt!452644 lt!452633)))))

(assert (= (and d!122883 res!688131) b!1028215))

(declare-fun m!947131 () Bool)

(assert (=> d!122883 m!947131))

(assert (=> d!122883 m!946599))

(assert (=> d!122883 m!946595))

(assert (=> d!122883 m!946595))

(assert (=> d!122883 m!946597))

(declare-fun m!947133 () Bool)

(assert (=> d!122883 m!947133))

(assert (=> b!1027877 d!122883))

(declare-fun d!122885 () Bool)

(declare-fun e!580420 () Bool)

(assert (=> d!122885 e!580420))

(declare-fun res!688132 () Bool)

(assert (=> d!122885 (=> (not res!688132) (not e!580420))))

(declare-fun lt!452858 () ListLongMap!13775)

(assert (=> d!122885 (= res!688132 (contains!5982 lt!452858 (_1!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452860 () List!21917)

(assert (=> d!122885 (= lt!452858 (ListLongMap!13776 lt!452860))))

(declare-fun lt!452859 () Unit!33514)

(declare-fun lt!452857 () Unit!33514)

(assert (=> d!122885 (= lt!452859 lt!452857)))

(assert (=> d!122885 (= (getValueByKey!587 lt!452860 (_1!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))))))

(assert (=> d!122885 (= lt!452857 (lemmaContainsTupThenGetReturnValue!276 lt!452860 (_1!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))))))

(assert (=> d!122885 (= lt!452860 (insertStrictlySorted!368 (toList!6903 lt!452629) (_1!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))))))

(assert (=> d!122885 (= (+!3058 lt!452629 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))) lt!452858)))

(declare-fun b!1028216 () Bool)

(declare-fun res!688133 () Bool)

(assert (=> b!1028216 (=> (not res!688133) (not e!580420))))

(assert (=> b!1028216 (= res!688133 (= (getValueByKey!587 (toList!6903 lt!452858) (_1!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028217 () Bool)

(assert (=> b!1028217 (= e!580420 (contains!5984 (toList!6903 lt!452858) (tuple2!15621 lt!452633 (minValue!5932 thiss!1427))))))

(assert (= (and d!122885 res!688132) b!1028216))

(assert (= (and b!1028216 res!688133) b!1028217))

(declare-fun m!947135 () Bool)

(assert (=> d!122885 m!947135))

(declare-fun m!947137 () Bool)

(assert (=> d!122885 m!947137))

(declare-fun m!947139 () Bool)

(assert (=> d!122885 m!947139))

(declare-fun m!947141 () Bool)

(assert (=> d!122885 m!947141))

(declare-fun m!947143 () Bool)

(assert (=> b!1028216 m!947143))

(declare-fun m!947145 () Bool)

(assert (=> b!1028217 m!947145))

(assert (=> b!1027877 d!122885))

(declare-fun d!122887 () Bool)

(assert (=> d!122887 (= (apply!935 lt!452636 lt!452642) (get!16353 (getValueByKey!587 (toList!6903 lt!452636) lt!452642)))))

(declare-fun bs!30015 () Bool)

(assert (= bs!30015 d!122887))

(declare-fun m!947147 () Bool)

(assert (=> bs!30015 m!947147))

(assert (=> bs!30015 m!947147))

(declare-fun m!947149 () Bool)

(assert (=> bs!30015 m!947149))

(assert (=> b!1027877 d!122887))

(declare-fun d!122889 () Bool)

(declare-fun e!580421 () Bool)

(assert (=> d!122889 e!580421))

(declare-fun res!688134 () Bool)

(assert (=> d!122889 (=> (not res!688134) (not e!580421))))

(declare-fun lt!452862 () ListLongMap!13775)

(assert (=> d!122889 (= res!688134 (contains!5982 lt!452862 (_1!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))))))

(declare-fun lt!452864 () List!21917)

(assert (=> d!122889 (= lt!452862 (ListLongMap!13776 lt!452864))))

(declare-fun lt!452863 () Unit!33514)

(declare-fun lt!452861 () Unit!33514)

(assert (=> d!122889 (= lt!452863 lt!452861)))

(assert (=> d!122889 (= (getValueByKey!587 lt!452864 (_1!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))))))

(assert (=> d!122889 (= lt!452861 (lemmaContainsTupThenGetReturnValue!276 lt!452864 (_1!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))))))

(assert (=> d!122889 (= lt!452864 (insertStrictlySorted!368 (toList!6903 lt!452641) (_1!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) (_2!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))))))

(assert (=> d!122889 (= (+!3058 lt!452641 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) lt!452862)))

(declare-fun b!1028218 () Bool)

(declare-fun res!688135 () Bool)

(assert (=> b!1028218 (=> (not res!688135) (not e!580421))))

(assert (=> b!1028218 (= res!688135 (= (getValueByKey!587 (toList!6903 lt!452862) (_1!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427)))) (Some!637 (_2!7820 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))))))))

(declare-fun b!1028219 () Bool)

(assert (=> b!1028219 (= e!580421 (contains!5984 (toList!6903 lt!452862) (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))))))

(assert (= (and d!122889 res!688134) b!1028218))

(assert (= (and b!1028218 res!688135) b!1028219))

(declare-fun m!947151 () Bool)

(assert (=> d!122889 m!947151))

(declare-fun m!947153 () Bool)

(assert (=> d!122889 m!947153))

(declare-fun m!947155 () Bool)

(assert (=> d!122889 m!947155))

(declare-fun m!947157 () Bool)

(assert (=> d!122889 m!947157))

(declare-fun m!947159 () Bool)

(assert (=> b!1028218 m!947159))

(declare-fun m!947161 () Bool)

(assert (=> b!1028219 m!947161))

(assert (=> b!1027877 d!122889))

(declare-fun d!122891 () Bool)

(assert (=> d!122891 (= (apply!935 (+!3058 lt!452641 (tuple2!15621 lt!452634 (minValue!5932 thiss!1427))) lt!452640) (apply!935 lt!452641 lt!452640))))

(declare-fun lt!452865 () Unit!33514)

(assert (=> d!122891 (= lt!452865 (choose!1689 lt!452641 lt!452634 (minValue!5932 thiss!1427) lt!452640))))

(declare-fun e!580422 () Bool)

(assert (=> d!122891 e!580422))

(declare-fun res!688136 () Bool)

(assert (=> d!122891 (=> (not res!688136) (not e!580422))))

(assert (=> d!122891 (= res!688136 (contains!5982 lt!452641 lt!452640))))

(assert (=> d!122891 (= (addApplyDifferent!475 lt!452641 lt!452634 (minValue!5932 thiss!1427) lt!452640) lt!452865)))

(declare-fun b!1028220 () Bool)

(assert (=> b!1028220 (= e!580422 (not (= lt!452640 lt!452634)))))

(assert (= (and d!122891 res!688136) b!1028220))

(declare-fun m!947163 () Bool)

(assert (=> d!122891 m!947163))

(assert (=> d!122891 m!946623))

(assert (=> d!122891 m!946601))

(assert (=> d!122891 m!946601))

(assert (=> d!122891 m!946603))

(declare-fun m!947165 () Bool)

(assert (=> d!122891 m!947165))

(assert (=> b!1027877 d!122891))

(declare-fun d!122893 () Bool)

(declare-fun e!580423 () Bool)

(assert (=> d!122893 e!580423))

(declare-fun res!688137 () Bool)

(assert (=> d!122893 (=> res!688137 e!580423)))

(declare-fun lt!452866 () Bool)

(assert (=> d!122893 (= res!688137 (not lt!452866))))

(declare-fun lt!452869 () Bool)

(assert (=> d!122893 (= lt!452866 lt!452869)))

(declare-fun lt!452868 () Unit!33514)

(declare-fun e!580424 () Unit!33514)

(assert (=> d!122893 (= lt!452868 e!580424)))

(declare-fun c!103693 () Bool)

(assert (=> d!122893 (= c!103693 lt!452869)))

(assert (=> d!122893 (= lt!452869 (containsKey!560 (toList!6903 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) lt!452625))))

(assert (=> d!122893 (= (contains!5982 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427))) lt!452625) lt!452866)))

(declare-fun b!1028221 () Bool)

(declare-fun lt!452867 () Unit!33514)

(assert (=> b!1028221 (= e!580424 lt!452867)))

(assert (=> b!1028221 (= lt!452867 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) lt!452625))))

(assert (=> b!1028221 (isDefined!432 (getValueByKey!587 (toList!6903 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) lt!452625))))

(declare-fun b!1028222 () Bool)

(declare-fun Unit!33532 () Unit!33514)

(assert (=> b!1028222 (= e!580424 Unit!33532)))

(declare-fun b!1028223 () Bool)

(assert (=> b!1028223 (= e!580423 (isDefined!432 (getValueByKey!587 (toList!6903 (+!3058 lt!452628 (tuple2!15621 lt!452643 (zeroValue!5932 thiss!1427)))) lt!452625)))))

(assert (= (and d!122893 c!103693) b!1028221))

(assert (= (and d!122893 (not c!103693)) b!1028222))

(assert (= (and d!122893 (not res!688137)) b!1028223))

(declare-fun m!947167 () Bool)

(assert (=> d!122893 m!947167))

(declare-fun m!947169 () Bool)

(assert (=> b!1028221 m!947169))

(declare-fun m!947171 () Bool)

(assert (=> b!1028221 m!947171))

(assert (=> b!1028221 m!947171))

(declare-fun m!947173 () Bool)

(assert (=> b!1028221 m!947173))

(assert (=> b!1028223 m!947171))

(assert (=> b!1028223 m!947171))

(assert (=> b!1028223 m!947173))

(assert (=> b!1027877 d!122893))

(assert (=> b!1027806 d!122779))

(assert (=> b!1027876 d!122769))

(declare-fun d!122895 () Bool)

(declare-fun e!580425 () Bool)

(assert (=> d!122895 e!580425))

(declare-fun res!688138 () Bool)

(assert (=> d!122895 (=> res!688138 e!580425)))

(declare-fun lt!452870 () Bool)

(assert (=> d!122895 (= res!688138 (not lt!452870))))

(declare-fun lt!452873 () Bool)

(assert (=> d!122895 (= lt!452870 lt!452873)))

(declare-fun lt!452872 () Unit!33514)

(declare-fun e!580426 () Unit!33514)

(assert (=> d!122895 (= lt!452872 e!580426)))

(declare-fun c!103694 () Bool)

(assert (=> d!122895 (= c!103694 lt!452873)))

(assert (=> d!122895 (= lt!452873 (containsKey!560 (toList!6903 lt!452593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!122895 (= (contains!5982 lt!452593 #b0000000000000000000000000000000000000000000000000000000000000000) lt!452870)))

(declare-fun b!1028224 () Bool)

(declare-fun lt!452871 () Unit!33514)

(assert (=> b!1028224 (= e!580426 lt!452871)))

(assert (=> b!1028224 (= lt!452871 (lemmaContainsKeyImpliesGetValueByKeyDefined!392 (toList!6903 lt!452593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1028224 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028225 () Bool)

(declare-fun Unit!33533 () Unit!33514)

(assert (=> b!1028225 (= e!580426 Unit!33533)))

(declare-fun b!1028226 () Bool)

(assert (=> b!1028226 (= e!580425 (isDefined!432 (getValueByKey!587 (toList!6903 lt!452593) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!122895 c!103694) b!1028224))

(assert (= (and d!122895 (not c!103694)) b!1028225))

(assert (= (and d!122895 (not res!688138)) b!1028226))

(declare-fun m!947175 () Bool)

(assert (=> d!122895 m!947175))

(declare-fun m!947177 () Bool)

(assert (=> b!1028224 m!947177))

(assert (=> b!1028224 m!946821))

(assert (=> b!1028224 m!946821))

(declare-fun m!947179 () Bool)

(assert (=> b!1028224 m!947179))

(assert (=> b!1028226 m!946821))

(assert (=> b!1028226 m!946821))

(assert (=> b!1028226 m!947179))

(assert (=> bm!43296 d!122895))

(assert (=> b!1027899 d!122769))

(declare-fun d!122897 () Bool)

(assert (=> d!122897 (= (validKeyInArray!0 (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501))) (and (not (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31119 (_keys!11242 thiss!1427)) (index!41023 lt!452501)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1027820 d!122897))

(declare-fun mapIsEmpty!37884 () Bool)

(declare-fun mapRes!37884 () Bool)

(assert (=> mapIsEmpty!37884 mapRes!37884))

(declare-fun b!1028227 () Bool)

(declare-fun e!580427 () Bool)

(assert (=> b!1028227 (= e!580427 tp_is_empty!24297)))

(declare-fun b!1028228 () Bool)

(declare-fun e!580428 () Bool)

(assert (=> b!1028228 (= e!580428 tp_is_empty!24297)))

(declare-fun condMapEmpty!37884 () Bool)

(declare-fun mapDefault!37884 () ValueCell!11445)

(assert (=> mapNonEmpty!37883 (= condMapEmpty!37884 (= mapRest!37883 ((as const (Array (_ BitVec 32) ValueCell!11445)) mapDefault!37884)))))

(assert (=> mapNonEmpty!37883 (= tp!72790 (and e!580428 mapRes!37884))))

(declare-fun mapNonEmpty!37884 () Bool)

(declare-fun tp!72791 () Bool)

(assert (=> mapNonEmpty!37884 (= mapRes!37884 (and tp!72791 e!580427))))

(declare-fun mapRest!37884 () (Array (_ BitVec 32) ValueCell!11445))

(declare-fun mapKey!37884 () (_ BitVec 32))

(declare-fun mapValue!37884 () ValueCell!11445)

(assert (=> mapNonEmpty!37884 (= mapRest!37883 (store mapRest!37884 mapKey!37884 mapValue!37884))))

(assert (= (and mapNonEmpty!37883 condMapEmpty!37884) mapIsEmpty!37884))

(assert (= (and mapNonEmpty!37883 (not condMapEmpty!37884)) mapNonEmpty!37884))

(assert (= (and mapNonEmpty!37884 ((_ is ValueCellFull!11445) mapValue!37884)) b!1028227))

(assert (= (and mapNonEmpty!37883 ((_ is ValueCellFull!11445) mapDefault!37884)) b!1028228))

(declare-fun m!947181 () Bool)

(assert (=> mapNonEmpty!37884 m!947181))

(declare-fun b_lambda!15801 () Bool)

(assert (= b_lambda!15799 (or (and b!1027712 b_free!20577) b_lambda!15801)))

(declare-fun b_lambda!15803 () Bool)

(assert (= b_lambda!15795 (or (and b!1027712 b_free!20577) b_lambda!15803)))

(declare-fun b_lambda!15805 () Bool)

(assert (= b_lambda!15793 (or (and b!1027712 b_free!20577) b_lambda!15805)))

(declare-fun b_lambda!15807 () Bool)

(assert (= b_lambda!15789 (or (and b!1027712 b_free!20577) b_lambda!15807)))

(declare-fun b_lambda!15809 () Bool)

(assert (= b_lambda!15797 (or (and b!1027712 b_free!20577) b_lambda!15809)))

(declare-fun b_lambda!15811 () Bool)

(assert (= b_lambda!15791 (or (and b!1027712 b_free!20577) b_lambda!15811)))

(check-sat (not b_lambda!15775) (not b!1028191) (not d!122809) (not d!122847) (not b!1028099) (not b!1028104) (not b!1027954) (not d!122829) (not b_next!20577) (not b!1028132) (not d!122745) (not d!122771) (not b!1028131) (not b!1028024) (not d!122865) (not bm!43334) (not d!122797) (not b!1028096) (not b!1027989) (not b!1028062) (not b!1028140) (not b!1027995) (not d!122873) (not b!1027999) (not b!1028224) (not b!1028063) (not b!1028203) (not b_lambda!15809) (not b_lambda!15805) (not b!1028226) (not b!1028144) (not b!1028164) (not bm!43333) (not b!1028143) (not d!122807) (not b!1028126) (not b_lambda!15783) (not b!1028128) (not d!122795) (not d!122879) (not d!122761) (not b!1027986) (not b!1027994) (not d!122851) (not b!1028198) (not d!122789) (not b!1027967) (not b!1028033) (not d!122833) (not b!1028152) (not d!122751) (not b!1028199) (not b!1028060) (not d!122891) (not d!122881) (not b!1028213) (not b!1028107) (not b!1027987) (not b!1027951) (not b!1028097) (not b!1028214) (not b!1028023) (not d!122885) tp_is_empty!24297 (not b_lambda!15801) (not bm!43330) (not b!1028135) (not bm!43320) (not d!122757) (not b!1028150) (not d!122887) (not b_lambda!15807) (not b!1028138) b_and!32879 (not b!1028051) (not b!1028217) (not b!1028218) (not d!122815) (not b!1028219) (not d!122883) (not d!122765) (not b!1027955) (not d!122781) (not b!1028028) (not d!122823) (not d!122813) (not d!122821) (not b!1027958) (not d!122749) (not d!122893) (not d!122841) (not bm!43318) (not b!1028202) (not d!122743) (not b!1028064) (not d!122835) (not b!1028032) (not b!1028004) (not d!122853) (not b!1028113) (not b!1028168) (not bm!43319) (not b!1027996) (not bm!43317) (not b!1028067) (not d!122849) (not d!122753) (not d!122819) (not b!1028169) (not b!1028094) (not d!122799) (not b!1027971) (not d!122895) (not b!1028211) (not b!1028209) (not d!122817) (not d!122869) (not b_lambda!15811) (not b!1028101) (not b!1028106) (not b!1027953) (not bm!43328) (not b_lambda!15803) (not b!1028210) (not b!1028146) (not b!1028142) (not d!122861) (not d!122805) (not b!1027998) (not d!122863) (not b!1028018) (not d!122793) (not b!1028133) (not d!122773) (not b!1027949) (not bm!43325) (not b!1028000) (not d!122867) (not b!1028136) (not b!1028197) (not d!122845) (not b!1028061) (not bm!43326) (not d!122801) (not d!122811) (not d!122837) (not b_lambda!15787) (not d!122875) (not b!1028103) (not b!1028027) (not d!122871) (not b!1028029) (not b!1027957) (not b!1028105) (not b!1028066) (not b!1027948) (not b_lambda!15785) (not d!122783) (not bm!43321) (not b!1028035) (not b!1027939) (not mapNonEmpty!37884) (not b!1027980) (not d!122843) (not d!122857) (not b!1028221) (not b!1028216) (not d!122791) (not d!122803) (not b!1028147) (not b!1028068) (not b!1028166) (not d!122737) (not b!1028111) (not bm!43329) (not b!1028201) (not b!1028223) (not b!1028112) (not d!122889) (not bm!43327) (not b!1028125) (not b!1027970) (not bm!43335) (not b!1027978) (not b!1027985) (not bm!43336) (not d!122877) (not b!1028149) (not d!122859) (not b!1027964))
(check-sat b_and!32879 (not b_next!20577))
