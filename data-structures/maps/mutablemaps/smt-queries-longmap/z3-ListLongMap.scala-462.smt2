; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8398 () Bool)

(assert start!8398)

(declare-fun b!56788 () Bool)

(declare-fun b_free!1937 () Bool)

(declare-fun b_next!1937 () Bool)

(assert (=> b!56788 (= b_free!1937 (not b_next!1937))))

(declare-fun tp!7911 () Bool)

(declare-fun b_and!3425 () Bool)

(assert (=> b!56788 (= tp!7911 b_and!3425)))

(declare-fun b!56784 () Bool)

(declare-fun b_free!1939 () Bool)

(declare-fun b_next!1939 () Bool)

(assert (=> b!56784 (= b_free!1939 (not b_next!1939))))

(declare-fun tp!7912 () Bool)

(declare-fun b_and!3427 () Bool)

(assert (=> b!56784 (= tp!7912 b_and!3427)))

(declare-fun mapNonEmpty!2825 () Bool)

(declare-fun mapRes!2825 () Bool)

(declare-fun tp!7913 () Bool)

(declare-fun e!37422 () Bool)

(assert (=> mapNonEmpty!2825 (= mapRes!2825 (and tp!7913 e!37422))))

(declare-fun mapKey!2825 () (_ BitVec 32))

(declare-datatypes ((V!2827 0))(
  ( (V!2828 (val!1237 Int)) )
))
(declare-datatypes ((ValueCell!849 0))(
  ( (ValueCellFull!849 (v!2356 V!2827)) (EmptyCell!849) )
))
(declare-fun mapRest!2826 () (Array (_ BitVec 32) ValueCell!849))

(declare-datatypes ((array!3692 0))(
  ( (array!3693 (arr!1768 (Array (_ BitVec 32) (_ BitVec 64))) (size!1997 (_ BitVec 32))) )
))
(declare-datatypes ((array!3694 0))(
  ( (array!3695 (arr!1769 (Array (_ BitVec 32) ValueCell!849)) (size!1998 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!606 0))(
  ( (LongMapFixedSize!607 (defaultEntry!2017 Int) (mask!5888 (_ BitVec 32)) (extraKeys!1908 (_ BitVec 32)) (zeroValue!1935 V!2827) (minValue!1935 V!2827) (_size!352 (_ BitVec 32)) (_keys!3637 array!3692) (_values!2000 array!3694) (_vacant!352 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!606)

(declare-fun mapValue!2826 () ValueCell!849)

(assert (=> mapNonEmpty!2825 (= (arr!1769 (_values!2000 newMap!16)) (store mapRest!2826 mapKey!2825 mapValue!2826))))

(declare-fun b!56778 () Bool)

(declare-fun e!37421 () Bool)

(declare-fun e!37428 () Bool)

(declare-fun mapRes!2826 () Bool)

(assert (=> b!56778 (= e!37421 (and e!37428 mapRes!2826))))

(declare-fun condMapEmpty!2826 () Bool)

(declare-datatypes ((Cell!416 0))(
  ( (Cell!417 (v!2357 LongMapFixedSize!606)) )
))
(declare-datatypes ((LongMap!416 0))(
  ( (LongMap!417 (underlying!219 Cell!416)) )
))
(declare-fun thiss!992 () LongMap!416)

(declare-fun mapDefault!2826 () ValueCell!849)

(assert (=> b!56778 (= condMapEmpty!2826 (= (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!849)) mapDefault!2826)))))

(declare-fun b!56779 () Bool)

(declare-fun tp_is_empty!2385 () Bool)

(assert (=> b!56779 (= e!37422 tp_is_empty!2385)))

(declare-fun b!56780 () Bool)

(declare-fun res!31879 () Bool)

(declare-fun e!37431 () Bool)

(assert (=> b!56780 (=> (not res!31879) (not e!37431))))

(assert (=> b!56780 (= res!31879 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5888 newMap!16)) (_size!352 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun b!56781 () Bool)

(assert (=> b!56781 (= e!37428 tp_is_empty!2385)))

(declare-fun b!56782 () Bool)

(declare-fun e!37420 () Bool)

(assert (=> b!56782 (= e!37420 tp_is_empty!2385)))

(declare-fun b!56783 () Bool)

(declare-datatypes ((Unit!1474 0))(
  ( (Unit!1475) )
))
(declare-fun e!37427 () Unit!1474)

(declare-fun Unit!1476 () Unit!1474)

(assert (=> b!56783 (= e!37427 Unit!1476)))

(declare-fun e!37433 () Bool)

(declare-fun e!37423 () Bool)

(declare-fun array_inv!1045 (array!3692) Bool)

(declare-fun array_inv!1046 (array!3694) Bool)

(assert (=> b!56784 (= e!37433 (and tp!7912 tp_is_empty!2385 (array_inv!1045 (_keys!3637 newMap!16)) (array_inv!1046 (_values!2000 newMap!16)) e!37423))))

(declare-fun b!56785 () Bool)

(declare-fun e!37426 () Bool)

(assert (=> b!56785 (= e!37426 tp_is_empty!2385)))

(declare-fun b!56786 () Bool)

(declare-fun e!37429 () Bool)

(declare-fun e!37425 () Bool)

(assert (=> b!56786 (= e!37429 e!37425)))

(declare-fun b!56787 () Bool)

(declare-fun Unit!1477 () Unit!1474)

(assert (=> b!56787 (= e!37427 Unit!1477)))

(declare-fun lt!22369 () Unit!1474)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!25 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 64) (_ BitVec 32) Int) Unit!1474)

(assert (=> b!56787 (= lt!22369 (lemmaListMapContainsThenArrayContainsFrom!25 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56787 (arrayContainsKey!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22374 () Unit!1474)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3692 (_ BitVec 32) (_ BitVec 32)) Unit!1474)

(assert (=> b!56787 (= lt!22374 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1447 0))(
  ( (Nil!1444) (Cons!1443 (h!2023 (_ BitVec 64)) (t!4761 List!1447)) )
))
(declare-fun arrayNoDuplicates!0 (array!3692 (_ BitVec 32) List!1447) Bool)

(assert (=> b!56787 (arrayNoDuplicates!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) from!355 Nil!1444)))

(declare-fun lt!22370 () Unit!1474)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3692 (_ BitVec 32) (_ BitVec 64) List!1447) Unit!1474)

(assert (=> b!56787 (= lt!22370 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (Cons!1443 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) Nil!1444)))))

(assert (=> b!56787 false))

(declare-fun mapIsEmpty!2825 () Bool)

(assert (=> mapIsEmpty!2825 mapRes!2825))

(declare-fun b!56789 () Bool)

(assert (=> b!56789 (= e!37423 (and e!37426 mapRes!2825))))

(declare-fun condMapEmpty!2825 () Bool)

(declare-fun mapDefault!2825 () ValueCell!849)

(assert (=> b!56789 (= condMapEmpty!2825 (= (arr!1769 (_values!2000 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!849)) mapDefault!2825)))))

(declare-fun mapIsEmpty!2826 () Bool)

(assert (=> mapIsEmpty!2826 mapRes!2826))

(declare-fun b!56790 () Bool)

(declare-fun res!31883 () Bool)

(assert (=> b!56790 (=> (not res!31883) (not e!37431))))

(declare-fun valid!244 (LongMapFixedSize!606) Bool)

(assert (=> b!56790 (= res!31883 (valid!244 newMap!16))))

(declare-fun mapNonEmpty!2826 () Bool)

(declare-fun tp!7914 () Bool)

(assert (=> mapNonEmpty!2826 (= mapRes!2826 (and tp!7914 e!37420))))

(declare-fun mapKey!2826 () (_ BitVec 32))

(declare-fun mapRest!2825 () (Array (_ BitVec 32) ValueCell!849))

(declare-fun mapValue!2825 () ValueCell!849)

(assert (=> mapNonEmpty!2826 (= (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) (store mapRest!2825 mapKey!2826 mapValue!2825))))

(declare-fun b!56791 () Bool)

(declare-fun e!37419 () Bool)

(assert (=> b!56791 (= e!37419 e!37429)))

(declare-fun b!56792 () Bool)

(declare-fun e!37432 () Bool)

(assert (=> b!56792 (= e!37431 e!37432)))

(declare-fun res!31881 () Bool)

(assert (=> b!56792 (=> (not res!31881) (not e!37432))))

(declare-datatypes ((tuple2!2034 0))(
  ( (tuple2!2035 (_1!1027 (_ BitVec 64)) (_2!1027 V!2827)) )
))
(declare-datatypes ((List!1448 0))(
  ( (Nil!1445) (Cons!1444 (h!2024 tuple2!2034) (t!4762 List!1448)) )
))
(declare-datatypes ((ListLongMap!1371 0))(
  ( (ListLongMap!1372 (toList!701 List!1448)) )
))
(declare-fun lt!22373 () ListLongMap!1371)

(declare-fun lt!22372 () ListLongMap!1371)

(assert (=> b!56792 (= res!31881 (and (= lt!22373 lt!22372) (not (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1101 (LongMapFixedSize!606) ListLongMap!1371)

(assert (=> b!56792 (= lt!22372 (map!1101 newMap!16))))

(declare-fun getCurrentListMap!399 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 32) Int) ListLongMap!1371)

(assert (=> b!56792 (= lt!22373 (getCurrentListMap!399 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun b!56793 () Bool)

(declare-fun res!31880 () Bool)

(assert (=> b!56793 (=> (not res!31880) (not e!37431))))

(assert (=> b!56793 (= res!31880 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992)))))))))

(declare-fun b!56794 () Bool)

(declare-fun e!37430 () Bool)

(assert (=> b!56794 (= e!37432 e!37430)))

(declare-fun res!31882 () Bool)

(assert (=> b!56794 (=> (not res!31882) (not e!37430))))

(declare-datatypes ((tuple2!2036 0))(
  ( (tuple2!2037 (_1!1028 Bool) (_2!1028 LongMapFixedSize!606)) )
))
(declare-fun lt!22375 () tuple2!2036)

(assert (=> b!56794 (= res!31882 (and (_1!1028 lt!22375) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!22371 () Unit!1474)

(assert (=> b!56794 (= lt!22371 e!37427)))

(declare-fun c!6976 () Bool)

(declare-fun contains!686 (ListLongMap!1371 (_ BitVec 64)) Bool)

(assert (=> b!56794 (= c!6976 (contains!686 lt!22372 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun update!81 (LongMapFixedSize!606 (_ BitVec 64) V!2827) tuple2!2036)

(declare-fun get!1068 (ValueCell!849 V!2827) V!2827)

(declare-fun dynLambda!309 (Int (_ BitVec 64)) V!2827)

(assert (=> b!56794 (= lt!22375 (update!81 newMap!16 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56795 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!56795 (= e!37430 (not (validMask!0 (mask!5888 (v!2357 (underlying!219 thiss!992))))))))

(assert (=> b!56788 (= e!37425 (and tp!7911 tp_is_empty!2385 (array_inv!1045 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (array_inv!1046 (_values!2000 (v!2357 (underlying!219 thiss!992)))) e!37421))))

(declare-fun res!31884 () Bool)

(assert (=> start!8398 (=> (not res!31884) (not e!37431))))

(declare-fun valid!245 (LongMap!416) Bool)

(assert (=> start!8398 (= res!31884 (valid!245 thiss!992))))

(assert (=> start!8398 e!37431))

(assert (=> start!8398 e!37419))

(assert (=> start!8398 true))

(assert (=> start!8398 e!37433))

(assert (= (and start!8398 res!31884) b!56793))

(assert (= (and b!56793 res!31880) b!56790))

(assert (= (and b!56790 res!31883) b!56780))

(assert (= (and b!56780 res!31879) b!56792))

(assert (= (and b!56792 res!31881) b!56794))

(assert (= (and b!56794 c!6976) b!56787))

(assert (= (and b!56794 (not c!6976)) b!56783))

(assert (= (and b!56794 res!31882) b!56795))

(assert (= (and b!56778 condMapEmpty!2826) mapIsEmpty!2826))

(assert (= (and b!56778 (not condMapEmpty!2826)) mapNonEmpty!2826))

(get-info :version)

(assert (= (and mapNonEmpty!2826 ((_ is ValueCellFull!849) mapValue!2825)) b!56782))

(assert (= (and b!56778 ((_ is ValueCellFull!849) mapDefault!2826)) b!56781))

(assert (= b!56788 b!56778))

(assert (= b!56786 b!56788))

(assert (= b!56791 b!56786))

(assert (= start!8398 b!56791))

(assert (= (and b!56789 condMapEmpty!2825) mapIsEmpty!2825))

(assert (= (and b!56789 (not condMapEmpty!2825)) mapNonEmpty!2825))

(assert (= (and mapNonEmpty!2825 ((_ is ValueCellFull!849) mapValue!2826)) b!56779))

(assert (= (and b!56789 ((_ is ValueCellFull!849) mapDefault!2825)) b!56785))

(assert (= b!56784 b!56789))

(assert (= start!8398 b!56784))

(declare-fun b_lambda!2499 () Bool)

(assert (=> (not b_lambda!2499) (not b!56794)))

(declare-fun t!4758 () Bool)

(declare-fun tb!1289 () Bool)

(assert (=> (and b!56788 (= (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))) t!4758) tb!1289))

(declare-fun result!2327 () Bool)

(assert (=> tb!1289 (= result!2327 tp_is_empty!2385)))

(assert (=> b!56794 t!4758))

(declare-fun b_and!3429 () Bool)

(assert (= b_and!3425 (and (=> t!4758 result!2327) b_and!3429)))

(declare-fun t!4760 () Bool)

(declare-fun tb!1291 () Bool)

(assert (=> (and b!56784 (= (defaultEntry!2017 newMap!16) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))) t!4760) tb!1291))

(declare-fun result!2331 () Bool)

(assert (= result!2331 result!2327))

(assert (=> b!56794 t!4760))

(declare-fun b_and!3431 () Bool)

(assert (= b_and!3427 (and (=> t!4760 result!2331) b_and!3431)))

(declare-fun m!47815 () Bool)

(assert (=> b!56792 m!47815))

(declare-fun m!47817 () Bool)

(assert (=> b!56792 m!47817))

(declare-fun m!47819 () Bool)

(assert (=> b!56792 m!47819))

(declare-fun m!47821 () Bool)

(assert (=> mapNonEmpty!2826 m!47821))

(declare-fun m!47823 () Bool)

(assert (=> b!56794 m!47823))

(declare-fun m!47825 () Bool)

(assert (=> b!56794 m!47825))

(declare-fun m!47827 () Bool)

(assert (=> b!56794 m!47827))

(assert (=> b!56794 m!47815))

(assert (=> b!56794 m!47825))

(assert (=> b!56794 m!47815))

(declare-fun m!47829 () Bool)

(assert (=> b!56794 m!47829))

(assert (=> b!56794 m!47815))

(assert (=> b!56794 m!47827))

(declare-fun m!47831 () Bool)

(assert (=> b!56794 m!47831))

(assert (=> b!56794 m!47823))

(declare-fun m!47833 () Bool)

(assert (=> mapNonEmpty!2825 m!47833))

(declare-fun m!47835 () Bool)

(assert (=> b!56784 m!47835))

(declare-fun m!47837 () Bool)

(assert (=> b!56784 m!47837))

(declare-fun m!47839 () Bool)

(assert (=> b!56787 m!47839))

(declare-fun m!47841 () Bool)

(assert (=> b!56787 m!47841))

(assert (=> b!56787 m!47815))

(declare-fun m!47843 () Bool)

(assert (=> b!56787 m!47843))

(assert (=> b!56787 m!47815))

(assert (=> b!56787 m!47815))

(declare-fun m!47845 () Bool)

(assert (=> b!56787 m!47845))

(assert (=> b!56787 m!47815))

(declare-fun m!47847 () Bool)

(assert (=> b!56787 m!47847))

(declare-fun m!47849 () Bool)

(assert (=> b!56795 m!47849))

(declare-fun m!47851 () Bool)

(assert (=> start!8398 m!47851))

(declare-fun m!47853 () Bool)

(assert (=> b!56788 m!47853))

(declare-fun m!47855 () Bool)

(assert (=> b!56788 m!47855))

(declare-fun m!47857 () Bool)

(assert (=> b!56790 m!47857))

(check-sat (not b!56794) (not b!56784) tp_is_empty!2385 (not b_next!1939) (not start!8398) (not mapNonEmpty!2826) (not b_lambda!2499) (not b!56790) (not b!56795) (not b_next!1937) b_and!3429 (not mapNonEmpty!2825) (not b!56792) (not b!56787) b_and!3431 (not b!56788))
(check-sat b_and!3429 b_and!3431 (not b_next!1937) (not b_next!1939))
(get-model)

(declare-fun b_lambda!2503 () Bool)

(assert (= b_lambda!2499 (or (and b!56788 b_free!1937) (and b!56784 b_free!1939 (= (defaultEntry!2017 newMap!16) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))))) b_lambda!2503)))

(check-sat (not b!56794) (not b!56784) tp_is_empty!2385 (not b_next!1939) (not start!8398) (not mapNonEmpty!2826) (not b!56790) (not b!56795) b_and!3429 (not mapNonEmpty!2825) (not b_lambda!2503) (not b_next!1937) (not b!56792) (not b!56787) b_and!3431 (not b!56788))
(check-sat b_and!3429 b_and!3431 (not b_next!1937) (not b_next!1939))
(get-model)

(declare-fun d!10531 () Bool)

(assert (=> d!10531 (= (array_inv!1045 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvsge (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!56788 d!10531))

(declare-fun d!10533 () Bool)

(assert (=> d!10533 (= (array_inv!1046 (_values!2000 (v!2357 (underlying!219 thiss!992)))) (bvsge (size!1998 (_values!2000 (v!2357 (underlying!219 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!56788 d!10533))

(declare-fun d!10535 () Bool)

(declare-fun e!37487 () Bool)

(assert (=> d!10535 e!37487))

(declare-fun res!31905 () Bool)

(assert (=> d!10535 (=> res!31905 e!37487)))

(declare-fun lt!22407 () Bool)

(assert (=> d!10535 (= res!31905 (not lt!22407))))

(declare-fun lt!22408 () Bool)

(assert (=> d!10535 (= lt!22407 lt!22408)))

(declare-fun lt!22405 () Unit!1474)

(declare-fun e!37486 () Unit!1474)

(assert (=> d!10535 (= lt!22405 e!37486)))

(declare-fun c!6982 () Bool)

(assert (=> d!10535 (= c!6982 lt!22408)))

(declare-fun containsKey!125 (List!1448 (_ BitVec 64)) Bool)

(assert (=> d!10535 (= lt!22408 (containsKey!125 (toList!701 lt!22372) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(assert (=> d!10535 (= (contains!686 lt!22372 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)) lt!22407)))

(declare-fun b!56860 () Bool)

(declare-fun lt!22406 () Unit!1474)

(assert (=> b!56860 (= e!37486 lt!22406)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!74 (List!1448 (_ BitVec 64)) Unit!1474)

(assert (=> b!56860 (= lt!22406 (lemmaContainsKeyImpliesGetValueByKeyDefined!74 (toList!701 lt!22372) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-datatypes ((Option!127 0))(
  ( (Some!126 (v!2361 V!2827)) (None!125) )
))
(declare-fun isDefined!75 (Option!127) Bool)

(declare-fun getValueByKey!121 (List!1448 (_ BitVec 64)) Option!127)

(assert (=> b!56860 (isDefined!75 (getValueByKey!121 (toList!701 lt!22372) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun b!56861 () Bool)

(declare-fun Unit!1481 () Unit!1474)

(assert (=> b!56861 (= e!37486 Unit!1481)))

(declare-fun b!56862 () Bool)

(assert (=> b!56862 (= e!37487 (isDefined!75 (getValueByKey!121 (toList!701 lt!22372) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355))))))

(assert (= (and d!10535 c!6982) b!56860))

(assert (= (and d!10535 (not c!6982)) b!56861))

(assert (= (and d!10535 (not res!31905)) b!56862))

(assert (=> d!10535 m!47815))

(declare-fun m!47903 () Bool)

(assert (=> d!10535 m!47903))

(assert (=> b!56860 m!47815))

(declare-fun m!47905 () Bool)

(assert (=> b!56860 m!47905))

(assert (=> b!56860 m!47815))

(declare-fun m!47907 () Bool)

(assert (=> b!56860 m!47907))

(assert (=> b!56860 m!47907))

(declare-fun m!47909 () Bool)

(assert (=> b!56860 m!47909))

(assert (=> b!56862 m!47815))

(assert (=> b!56862 m!47907))

(assert (=> b!56862 m!47907))

(assert (=> b!56862 m!47909))

(assert (=> b!56794 d!10535))

(declare-fun b!56947 () Bool)

(declare-fun e!37535 () Bool)

(declare-datatypes ((SeekEntryResult!235 0))(
  ( (MissingZero!235 (index!3062 (_ BitVec 32))) (Found!235 (index!3063 (_ BitVec 32))) (Intermediate!235 (undefined!1047 Bool) (index!3064 (_ BitVec 32)) (x!9827 (_ BitVec 32))) (Undefined!235) (MissingVacant!235 (index!3065 (_ BitVec 32))) )
))
(declare-fun lt!22478 () SeekEntryResult!235)

(assert (=> b!56947 (= e!37535 ((_ is Undefined!235) lt!22478))))

(declare-fun bm!4018 () Bool)

(declare-fun call!4044 () ListLongMap!1371)

(declare-fun call!4030 () ListLongMap!1371)

(assert (=> bm!4018 (= call!4044 call!4030)))

(declare-fun lt!22468 () (_ BitVec 32))

(declare-fun c!7021 () Bool)

(declare-fun c!7013 () Bool)

(declare-fun bm!4019 () Bool)

(declare-fun c!7016 () Bool)

(declare-fun lt!22466 () SeekEntryResult!235)

(declare-fun call!4042 () ListLongMap!1371)

(declare-fun lt!22463 () (_ BitVec 32))

(assert (=> bm!4019 (= call!4042 (getCurrentListMap!399 (_keys!3637 newMap!16) (ite (or c!7013 c!7016) (_values!2000 newMap!16) (array!3695 (store (arr!1769 (_values!2000 newMap!16)) (index!3063 lt!22466) (ValueCellFull!849 (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!1998 (_values!2000 newMap!16)))) (mask!5888 newMap!16) (ite c!7013 (ite c!7021 lt!22463 lt!22468) (extraKeys!1908 newMap!16)) (ite (and c!7013 c!7021) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!1935 newMap!16)) (ite c!7013 (ite c!7021 (minValue!1935 newMap!16) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!1935 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2017 newMap!16)))))

(declare-fun bm!4020 () Bool)

(declare-fun call!4021 () SeekEntryResult!235)

(declare-fun call!4032 () SeekEntryResult!235)

(assert (=> bm!4020 (= call!4021 call!4032)))

(declare-fun lt!22475 () SeekEntryResult!235)

(declare-fun e!37534 () Bool)

(declare-fun b!56948 () Bool)

(assert (=> b!56948 (= e!37534 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3063 lt!22475)) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun bm!4021 () Bool)

(declare-fun e!37546 () ListLongMap!1371)

(declare-fun +!79 (ListLongMap!1371 tuple2!2034) ListLongMap!1371)

(assert (=> bm!4021 (= call!4030 (+!79 e!37546 (ite c!7013 (ite c!7021 (tuple2!2035 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2035 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2035 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!7011 () Bool)

(assert (=> bm!4021 (= c!7011 c!7013)))

(declare-fun b!56949 () Bool)

(declare-fun e!37553 () Unit!1474)

(declare-fun lt!22484 () Unit!1474)

(assert (=> b!56949 (= e!37553 lt!22484)))

(declare-fun call!4022 () Unit!1474)

(assert (=> b!56949 (= lt!22484 call!4022)))

(declare-fun lt!22474 () SeekEntryResult!235)

(declare-fun call!4031 () SeekEntryResult!235)

(assert (=> b!56949 (= lt!22474 call!4031)))

(declare-fun res!31936 () Bool)

(assert (=> b!56949 (= res!31936 ((_ is Found!235) lt!22474))))

(declare-fun e!37547 () Bool)

(assert (=> b!56949 (=> (not res!31936) (not e!37547))))

(assert (=> b!56949 e!37547))

(declare-fun bm!4022 () Bool)

(declare-fun call!4040 () ListLongMap!1371)

(assert (=> bm!4022 (= call!4040 call!4042)))

(declare-fun b!56950 () Bool)

(declare-fun e!37551 () Bool)

(declare-fun call!4023 () ListLongMap!1371)

(declare-fun call!4027 () ListLongMap!1371)

(assert (=> b!56950 (= e!37551 (= call!4023 call!4027))))

(declare-fun b!56951 () Bool)

(declare-fun res!31945 () Bool)

(declare-fun e!37549 () Bool)

(assert (=> b!56951 (=> (not res!31945) (not e!37549))))

(assert (=> b!56951 (= res!31945 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3062 lt!22478)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56952 () Bool)

(declare-fun Unit!1482 () Unit!1474)

(assert (=> b!56952 (= e!37553 Unit!1482)))

(declare-fun lt!22479 () Unit!1474)

(declare-fun call!4035 () Unit!1474)

(assert (=> b!56952 (= lt!22479 call!4035)))

(assert (=> b!56952 (= lt!22478 call!4031)))

(declare-fun c!7015 () Bool)

(assert (=> b!56952 (= c!7015 ((_ is MissingZero!235) lt!22478))))

(declare-fun e!37538 () Bool)

(assert (=> b!56952 e!37538))

(declare-fun lt!22485 () Unit!1474)

(assert (=> b!56952 (= lt!22485 lt!22479)))

(assert (=> b!56952 false))

(declare-fun b!56953 () Bool)

(declare-fun e!37548 () Bool)

(declare-fun e!37532 () Bool)

(assert (=> b!56953 (= e!37548 e!37532)))

(declare-fun res!31935 () Bool)

(declare-fun call!4038 () Bool)

(assert (=> b!56953 (= res!31935 call!4038)))

(assert (=> b!56953 (=> (not res!31935) (not e!37532))))

(declare-fun b!56954 () Bool)

(declare-fun lt!22482 () tuple2!2036)

(declare-fun call!4036 () tuple2!2036)

(assert (=> b!56954 (= lt!22482 call!4036)))

(declare-fun e!37536 () tuple2!2036)

(assert (=> b!56954 (= e!37536 (tuple2!2037 (_1!1028 lt!22482) (_2!1028 lt!22482)))))

(declare-fun b!56955 () Bool)

(declare-fun call!4041 () ListLongMap!1371)

(assert (=> b!56955 (= e!37546 call!4041)))

(declare-fun bm!4023 () Bool)

(declare-fun call!4029 () Bool)

(declare-fun call!4033 () Bool)

(assert (=> bm!4023 (= call!4029 call!4033)))

(declare-fun c!7020 () Bool)

(declare-fun bm!4024 () Bool)

(declare-fun updateHelperNewKey!13 (LongMapFixedSize!606 (_ BitVec 64) V!2827 (_ BitVec 32)) tuple2!2036)

(assert (=> bm!4024 (= call!4036 (updateHelperNewKey!13 newMap!16 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!7020 (index!3065 lt!22466) (index!3062 lt!22466))))))

(declare-fun bm!4025 () Bool)

(declare-fun lt!22465 () tuple2!2036)

(assert (=> bm!4025 (= call!4023 (map!1101 (_2!1028 lt!22465)))))

(declare-fun c!7022 () Bool)

(declare-fun c!7012 () Bool)

(declare-fun call!4043 () Bool)

(declare-fun bm!4026 () Bool)

(declare-fun c!7018 () Bool)

(declare-fun lt!22487 () SeekEntryResult!235)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!4026 (= call!4043 (inRange!0 (ite c!7016 (ite c!7018 (index!3063 lt!22475) (ite c!7012 (index!3062 lt!22487) (index!3065 lt!22487))) (ite c!7022 (index!3063 lt!22474) (ite c!7015 (index!3062 lt!22478) (index!3065 lt!22478)))) (mask!5888 newMap!16)))))

(declare-fun b!56956 () Bool)

(assert (=> b!56956 (= e!37546 (getCurrentListMap!399 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2017 newMap!16)))))

(declare-fun bm!4027 () Bool)

(assert (=> bm!4027 (= call!4033 call!4043)))

(declare-fun b!56957 () Bool)

(declare-fun e!37537 () Bool)

(assert (=> b!56957 (= e!37535 e!37537)))

(declare-fun res!31934 () Bool)

(assert (=> b!56957 (= res!31934 call!4029)))

(assert (=> b!56957 (=> (not res!31934) (not e!37537))))

(declare-fun bm!4028 () Bool)

(assert (=> bm!4028 (= call!4031 call!4032)))

(declare-fun b!56958 () Bool)

(declare-fun res!31943 () Bool)

(assert (=> b!56958 (= res!31943 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3065 lt!22487)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!56958 (=> (not res!31943) (not e!37532))))

(declare-fun b!56959 () Bool)

(declare-fun res!31940 () Bool)

(declare-fun call!4028 () Bool)

(assert (=> b!56959 (= res!31940 call!4028)))

(assert (=> b!56959 (=> (not res!31940) (not e!37534))))

(declare-fun b!56960 () Bool)

(assert (=> b!56960 (= c!7020 ((_ is MissingVacant!235) lt!22466))))

(declare-fun e!37550 () tuple2!2036)

(declare-fun e!37552 () tuple2!2036)

(assert (=> b!56960 (= e!37550 e!37552)))

(declare-fun b!56961 () Bool)

(declare-fun e!37533 () Unit!1474)

(declare-fun Unit!1483 () Unit!1474)

(assert (=> b!56961 (= e!37533 Unit!1483)))

(declare-fun lt!22476 () Unit!1474)

(assert (=> b!56961 (= lt!22476 call!4022)))

(assert (=> b!56961 (= lt!22475 call!4021)))

(declare-fun res!31947 () Bool)

(assert (=> b!56961 (= res!31947 ((_ is Found!235) lt!22475))))

(assert (=> b!56961 (=> (not res!31947) (not e!37534))))

(assert (=> b!56961 e!37534))

(declare-fun lt!22480 () Unit!1474)

(assert (=> b!56961 (= lt!22480 lt!22476)))

(assert (=> b!56961 false))

(declare-fun b!56962 () Bool)

(declare-fun call!4034 () Bool)

(assert (=> b!56962 (= e!37537 (not call!4034))))

(declare-fun b!56963 () Bool)

(declare-fun c!7024 () Bool)

(assert (=> b!56963 (= c!7024 ((_ is MissingVacant!235) lt!22487))))

(declare-fun e!37540 () Bool)

(assert (=> b!56963 (= e!37540 e!37548)))

(declare-fun bm!4029 () Bool)

(declare-fun c!7014 () Bool)

(assert (=> bm!4029 (= c!7014 c!7016)))

(declare-fun call!4039 () Bool)

(declare-fun e!37542 () ListLongMap!1371)

(assert (=> bm!4029 (= call!4039 (contains!686 e!37542 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun bm!4030 () Bool)

(declare-fun call!4025 () Bool)

(assert (=> bm!4030 (= call!4025 (arrayContainsKey!0 (_keys!3637 newMap!16) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!56964 () Bool)

(assert (=> b!56964 (= e!37548 ((_ is Undefined!235) lt!22487))))

(declare-fun b!56965 () Bool)

(assert (=> b!56965 (= e!37542 (getCurrentListMap!399 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2017 newMap!16)))))

(declare-fun b!56966 () Bool)

(declare-fun lt!22486 () Unit!1474)

(declare-fun lt!22471 () Unit!1474)

(assert (=> b!56966 (= lt!22486 lt!22471)))

(declare-fun call!4024 () ListLongMap!1371)

(assert (=> b!56966 (contains!686 call!4024 (select (arr!1768 (_keys!3637 newMap!16)) (index!3063 lt!22466)))))

(declare-fun lt!22489 () array!3694)

(declare-fun lemmaValidKeyInArrayIsInListMap!71 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 32) Int) Unit!1474)

(assert (=> b!56966 (= lt!22471 (lemmaValidKeyInArrayIsInListMap!71 (_keys!3637 newMap!16) lt!22489 (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (index!3063 lt!22466) (defaultEntry!2017 newMap!16)))))

(assert (=> b!56966 (= lt!22489 (array!3695 (store (arr!1769 (_values!2000 newMap!16)) (index!3063 lt!22466) (ValueCellFull!849 (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!1998 (_values!2000 newMap!16))))))

(declare-fun lt!22473 () Unit!1474)

(declare-fun lt!22483 () Unit!1474)

(assert (=> b!56966 (= lt!22473 lt!22483)))

(assert (=> b!56966 (= call!4030 call!4040)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!13 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 32) (_ BitVec 64) V!2827 Int) Unit!1474)

(assert (=> b!56966 (= lt!22483 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!13 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (index!3063 lt!22466) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2017 newMap!16)))))

(declare-fun lt!22464 () Unit!1474)

(assert (=> b!56966 (= lt!22464 e!37553)))

(assert (=> b!56966 (= c!7022 call!4039)))

(assert (=> b!56966 (= e!37536 (tuple2!2037 true (LongMapFixedSize!607 (defaultEntry!2017 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (_size!352 newMap!16) (_keys!3637 newMap!16) (array!3695 (store (arr!1769 (_values!2000 newMap!16)) (index!3063 lt!22466) (ValueCellFull!849 (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!1998 (_values!2000 newMap!16))) (_vacant!352 newMap!16))))))

(declare-fun b!56967 () Bool)

(declare-fun res!31946 () Bool)

(assert (=> b!56967 (=> (not res!31946) (not e!37549))))

(assert (=> b!56967 (= res!31946 call!4029)))

(assert (=> b!56967 (= e!37538 e!37549)))

(declare-fun b!56968 () Bool)

(declare-fun res!31944 () Bool)

(declare-fun e!37544 () Bool)

(assert (=> b!56968 (=> (not res!31944) (not e!37544))))

(assert (=> b!56968 (= res!31944 call!4038)))

(assert (=> b!56968 (= e!37540 e!37544)))

(declare-fun b!56969 () Bool)

(declare-fun call!4037 () Bool)

(assert (=> b!56969 (= e!37532 (not call!4037))))

(declare-fun b!56970 () Bool)

(declare-fun lt!22488 () Unit!1474)

(declare-fun lt!22467 () Unit!1474)

(assert (=> b!56970 (= lt!22488 lt!22467)))

(declare-fun call!4026 () ListLongMap!1371)

(assert (=> b!56970 (= call!4044 call!4026)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!13 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 V!2827 Int) Unit!1474)

(assert (=> b!56970 (= lt!22467 (lemmaChangeLongMinValueKeyThenAddPairToListMap!13 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) lt!22468 (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2017 newMap!16)))))

(assert (=> b!56970 (= lt!22468 (bvor (extraKeys!1908 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!37539 () tuple2!2036)

(assert (=> b!56970 (= e!37539 (tuple2!2037 true (LongMapFixedSize!607 (defaultEntry!2017 newMap!16) (mask!5888 newMap!16) (bvor (extraKeys!1908 newMap!16) #b00000000000000000000000000000010) (zeroValue!1935 newMap!16) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!352 newMap!16) (_keys!3637 newMap!16) (_values!2000 newMap!16) (_vacant!352 newMap!16))))))

(declare-fun b!56971 () Bool)

(declare-fun res!31937 () Bool)

(assert (=> b!56971 (= res!31937 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3065 lt!22478)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!56971 (=> (not res!31937) (not e!37537))))

(declare-fun bm!4031 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!13 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 64) Int) Unit!1474)

(assert (=> bm!4031 (= call!4022 (lemmaInListMapThenSeekEntryOrOpenFindsIt!13 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (defaultEntry!2017 newMap!16)))))

(declare-fun b!56972 () Bool)

(declare-fun e!37545 () Bool)

(assert (=> b!56972 (= e!37545 (= call!4023 (+!79 call!4027 (tuple2!2035 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!10537 () Bool)

(declare-fun e!37543 () Bool)

(assert (=> d!10537 e!37543))

(declare-fun res!31939 () Bool)

(assert (=> d!10537 (=> (not res!31939) (not e!37543))))

(assert (=> d!10537 (= res!31939 (valid!244 (_2!1028 lt!22465)))))

(declare-fun e!37541 () tuple2!2036)

(assert (=> d!10537 (= lt!22465 e!37541)))

(assert (=> d!10537 (= c!7013 (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvneg (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355))))))

(assert (=> d!10537 (valid!244 newMap!16)))

(assert (=> d!10537 (= (update!81 newMap!16 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!22465)))

(declare-fun b!56973 () Bool)

(assert (=> b!56973 (= e!37541 e!37539)))

(assert (=> b!56973 (= c!7021 (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56974 () Bool)

(declare-fun res!31941 () Bool)

(assert (=> b!56974 (= res!31941 call!4033)))

(assert (=> b!56974 (=> (not res!31941) (not e!37547))))

(declare-fun bm!4032 () Bool)

(assert (=> bm!4032 (= call!4027 (map!1101 newMap!16))))

(declare-fun bm!4033 () Bool)

(assert (=> bm!4033 (= call!4024 (getCurrentListMap!399 (_keys!3637 newMap!16) (ite c!7013 (_values!2000 newMap!16) lt!22489) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2017 newMap!16)))))

(declare-fun bm!4034 () Bool)

(assert (=> bm!4034 (= call!4026 call!4042)))

(declare-fun b!56975 () Bool)

(assert (=> b!56975 (= e!37544 (not call!4037))))

(declare-fun b!56976 () Bool)

(assert (=> b!56976 (= e!37541 e!37550)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3692 (_ BitVec 32)) SeekEntryResult!235)

(assert (=> b!56976 (= lt!22466 (seekEntryOrOpen!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (_keys!3637 newMap!16) (mask!5888 newMap!16)))))

(assert (=> b!56976 (= c!7016 ((_ is Undefined!235) lt!22466))))

(declare-fun b!56977 () Bool)

(assert (=> b!56977 (= e!37549 (not call!4034))))

(declare-fun b!56978 () Bool)

(declare-fun lt!22469 () Unit!1474)

(assert (=> b!56978 (= lt!22469 e!37533)))

(assert (=> b!56978 (= c!7018 call!4039)))

(assert (=> b!56978 (= e!37550 (tuple2!2037 false newMap!16))))

(declare-fun bm!4035 () Bool)

(assert (=> bm!4035 (= call!4028 call!4043)))

(declare-fun bm!4036 () Bool)

(assert (=> bm!4036 (= call!4032 (seekEntryOrOpen!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (_keys!3637 newMap!16) (mask!5888 newMap!16)))))

(declare-fun bm!4037 () Bool)

(assert (=> bm!4037 (= call!4037 call!4025)))

(declare-fun bm!4038 () Bool)

(assert (=> bm!4038 (= call!4041 call!4024)))

(declare-fun b!56979 () Bool)

(declare-fun c!7019 () Bool)

(assert (=> b!56979 (= c!7019 ((_ is MissingVacant!235) lt!22478))))

(assert (=> b!56979 (= e!37538 e!37535)))

(declare-fun b!56980 () Bool)

(declare-fun lt!22470 () Unit!1474)

(declare-fun lt!22481 () Unit!1474)

(assert (=> b!56980 (= lt!22470 lt!22481)))

(assert (=> b!56980 (= call!4044 call!4026)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!13 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 V!2827 Int) Unit!1474)

(assert (=> b!56980 (= lt!22481 (lemmaChangeZeroKeyThenAddPairToListMap!13 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) lt!22463 (zeroValue!1935 newMap!16) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!1935 newMap!16) (defaultEntry!2017 newMap!16)))))

(assert (=> b!56980 (= lt!22463 (bvor (extraKeys!1908 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!56980 (= e!37539 (tuple2!2037 true (LongMapFixedSize!607 (defaultEntry!2017 newMap!16) (mask!5888 newMap!16) (bvor (extraKeys!1908 newMap!16) #b00000000000000000000000000000001) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!1935 newMap!16) (_size!352 newMap!16) (_keys!3637 newMap!16) (_values!2000 newMap!16) (_vacant!352 newMap!16))))))

(declare-fun b!56981 () Bool)

(assert (=> b!56981 (= e!37543 e!37551)))

(declare-fun c!7017 () Bool)

(assert (=> b!56981 (= c!7017 (_1!1028 lt!22465))))

(declare-fun bm!4039 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!13 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 64) Int) Unit!1474)

(assert (=> bm!4039 (= call!4035 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!13 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (defaultEntry!2017 newMap!16)))))

(declare-fun b!56982 () Bool)

(assert (=> b!56982 (= e!37547 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3063 lt!22474)) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun b!56983 () Bool)

(assert (=> b!56983 (= e!37542 call!4040)))

(declare-fun bm!4040 () Bool)

(assert (=> bm!4040 (= call!4038 call!4028)))

(declare-fun b!56984 () Bool)

(declare-fun res!31938 () Bool)

(assert (=> b!56984 (=> (not res!31938) (not e!37544))))

(assert (=> b!56984 (= res!31938 (= (select (arr!1768 (_keys!3637 newMap!16)) (index!3062 lt!22487)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56985 () Bool)

(declare-fun lt!22472 () tuple2!2036)

(assert (=> b!56985 (= e!37552 (tuple2!2037 (_1!1028 lt!22472) (_2!1028 lt!22472)))))

(assert (=> b!56985 (= lt!22472 call!4036)))

(declare-fun bm!4041 () Bool)

(assert (=> bm!4041 (= call!4034 call!4025)))

(declare-fun b!56986 () Bool)

(assert (=> b!56986 (= e!37552 e!37536)))

(declare-fun c!7023 () Bool)

(assert (=> b!56986 (= c!7023 ((_ is MissingZero!235) lt!22466))))

(declare-fun b!56987 () Bool)

(declare-fun lt!22477 () Unit!1474)

(assert (=> b!56987 (= e!37533 lt!22477)))

(assert (=> b!56987 (= lt!22477 call!4035)))

(assert (=> b!56987 (= lt!22487 call!4021)))

(assert (=> b!56987 (= c!7012 ((_ is MissingZero!235) lt!22487))))

(assert (=> b!56987 e!37540))

(declare-fun b!56988 () Bool)

(assert (=> b!56988 (= e!37551 e!37545)))

(declare-fun res!31942 () Bool)

(assert (=> b!56988 (= res!31942 (contains!686 call!4023 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(assert (=> b!56988 (=> (not res!31942) (not e!37545))))

(assert (= (and d!10537 c!7013) b!56973))

(assert (= (and d!10537 (not c!7013)) b!56976))

(assert (= (and b!56973 c!7021) b!56980))

(assert (= (and b!56973 (not c!7021)) b!56970))

(assert (= (or b!56980 b!56970) bm!4034))

(assert (= (or b!56980 b!56970) bm!4038))

(assert (= (or b!56980 b!56970) bm!4018))

(assert (= (and b!56976 c!7016) b!56978))

(assert (= (and b!56976 (not c!7016)) b!56960))

(assert (= (and b!56978 c!7018) b!56961))

(assert (= (and b!56978 (not c!7018)) b!56987))

(assert (= (and b!56961 res!31947) b!56959))

(assert (= (and b!56959 res!31940) b!56948))

(assert (= (and b!56987 c!7012) b!56968))

(assert (= (and b!56987 (not c!7012)) b!56963))

(assert (= (and b!56968 res!31944) b!56984))

(assert (= (and b!56984 res!31938) b!56975))

(assert (= (and b!56963 c!7024) b!56953))

(assert (= (and b!56963 (not c!7024)) b!56964))

(assert (= (and b!56953 res!31935) b!56958))

(assert (= (and b!56958 res!31943) b!56969))

(assert (= (or b!56968 b!56953) bm!4040))

(assert (= (or b!56975 b!56969) bm!4037))

(assert (= (or b!56959 bm!4040) bm!4035))

(assert (= (or b!56961 b!56987) bm!4020))

(assert (= (and b!56960 c!7020) b!56985))

(assert (= (and b!56960 (not c!7020)) b!56986))

(assert (= (and b!56986 c!7023) b!56954))

(assert (= (and b!56986 (not c!7023)) b!56966))

(assert (= (and b!56966 c!7022) b!56949))

(assert (= (and b!56966 (not c!7022)) b!56952))

(assert (= (and b!56949 res!31936) b!56974))

(assert (= (and b!56974 res!31941) b!56982))

(assert (= (and b!56952 c!7015) b!56967))

(assert (= (and b!56952 (not c!7015)) b!56979))

(assert (= (and b!56967 res!31946) b!56951))

(assert (= (and b!56951 res!31945) b!56977))

(assert (= (and b!56979 c!7019) b!56957))

(assert (= (and b!56979 (not c!7019)) b!56947))

(assert (= (and b!56957 res!31934) b!56971))

(assert (= (and b!56971 res!31937) b!56962))

(assert (= (or b!56967 b!56957) bm!4023))

(assert (= (or b!56977 b!56962) bm!4041))

(assert (= (or b!56974 bm!4023) bm!4027))

(assert (= (or b!56949 b!56952) bm!4028))

(assert (= (or b!56985 b!56954) bm!4024))

(assert (= (or bm!4037 bm!4041) bm!4030))

(assert (= (or b!56961 b!56949) bm!4031))

(assert (= (or b!56987 b!56952) bm!4039))

(assert (= (or bm!4020 bm!4028) bm!4036))

(assert (= (or bm!4035 bm!4027) bm!4026))

(assert (= (or b!56978 b!56966) bm!4022))

(assert (= (or b!56978 b!56966) bm!4029))

(assert (= (and bm!4029 c!7014) b!56983))

(assert (= (and bm!4029 (not c!7014)) b!56965))

(assert (= (or bm!4034 bm!4022) bm!4019))

(assert (= (or bm!4038 b!56966) bm!4033))

(assert (= (or bm!4018 b!56966) bm!4021))

(assert (= (and bm!4021 c!7011) b!56955))

(assert (= (and bm!4021 (not c!7011)) b!56956))

(assert (= (and d!10537 res!31939) b!56981))

(assert (= (and b!56981 c!7017) b!56988))

(assert (= (and b!56981 (not c!7017)) b!56950))

(assert (= (and b!56988 res!31942) b!56972))

(assert (= (or b!56972 b!56950) bm!4032))

(assert (= (or b!56988 b!56972 b!56950) bm!4025))

(assert (=> b!56966 m!47815))

(assert (=> b!56966 m!47827))

(declare-fun m!47911 () Bool)

(assert (=> b!56966 m!47911))

(declare-fun m!47913 () Bool)

(assert (=> b!56966 m!47913))

(declare-fun m!47915 () Bool)

(assert (=> b!56966 m!47915))

(assert (=> b!56966 m!47915))

(declare-fun m!47917 () Bool)

(assert (=> b!56966 m!47917))

(declare-fun m!47919 () Bool)

(assert (=> b!56966 m!47919))

(declare-fun m!47921 () Bool)

(assert (=> b!56951 m!47921))

(assert (=> bm!4036 m!47815))

(declare-fun m!47923 () Bool)

(assert (=> bm!4036 m!47923))

(declare-fun m!47925 () Bool)

(assert (=> bm!4021 m!47925))

(assert (=> bm!4024 m!47815))

(assert (=> bm!4024 m!47827))

(declare-fun m!47927 () Bool)

(assert (=> bm!4024 m!47927))

(declare-fun m!47929 () Bool)

(assert (=> b!56982 m!47929))

(declare-fun m!47931 () Bool)

(assert (=> b!56956 m!47931))

(declare-fun m!47933 () Bool)

(assert (=> b!56958 m!47933))

(declare-fun m!47935 () Bool)

(assert (=> b!56948 m!47935))

(declare-fun m!47937 () Bool)

(assert (=> bm!4033 m!47937))

(assert (=> b!56988 m!47815))

(declare-fun m!47939 () Bool)

(assert (=> b!56988 m!47939))

(assert (=> b!56980 m!47827))

(declare-fun m!47941 () Bool)

(assert (=> b!56980 m!47941))

(declare-fun m!47943 () Bool)

(assert (=> b!56972 m!47943))

(assert (=> bm!4039 m!47815))

(declare-fun m!47945 () Bool)

(assert (=> bm!4039 m!47945))

(declare-fun m!47947 () Bool)

(assert (=> d!10537 m!47947))

(assert (=> d!10537 m!47857))

(assert (=> b!56970 m!47827))

(declare-fun m!47949 () Bool)

(assert (=> b!56970 m!47949))

(declare-fun m!47951 () Bool)

(assert (=> b!56971 m!47951))

(assert (=> bm!4031 m!47815))

(declare-fun m!47953 () Bool)

(assert (=> bm!4031 m!47953))

(assert (=> bm!4030 m!47815))

(declare-fun m!47955 () Bool)

(assert (=> bm!4030 m!47955))

(assert (=> bm!4029 m!47815))

(declare-fun m!47957 () Bool)

(assert (=> bm!4029 m!47957))

(assert (=> bm!4032 m!47817))

(declare-fun m!47959 () Bool)

(assert (=> b!56984 m!47959))

(assert (=> b!56976 m!47815))

(assert (=> b!56976 m!47923))

(assert (=> b!56965 m!47931))

(assert (=> bm!4019 m!47913))

(declare-fun m!47961 () Bool)

(assert (=> bm!4019 m!47961))

(declare-fun m!47963 () Bool)

(assert (=> bm!4025 m!47963))

(declare-fun m!47965 () Bool)

(assert (=> bm!4026 m!47965))

(assert (=> b!56794 d!10537))

(declare-fun d!10539 () Bool)

(declare-fun c!7027 () Bool)

(assert (=> d!10539 (= c!7027 ((_ is ValueCellFull!849) (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun e!37556 () V!2827)

(assert (=> d!10539 (= (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!37556)))

(declare-fun b!56993 () Bool)

(declare-fun get!1069 (ValueCell!849 V!2827) V!2827)

(assert (=> b!56993 (= e!37556 (get!1069 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!56994 () Bool)

(declare-fun get!1070 (ValueCell!849 V!2827) V!2827)

(assert (=> b!56994 (= e!37556 (get!1070 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) from!355) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!10539 c!7027) b!56993))

(assert (= (and d!10539 (not c!7027)) b!56994))

(assert (=> b!56993 m!47823))

(assert (=> b!56993 m!47825))

(declare-fun m!47967 () Bool)

(assert (=> b!56993 m!47967))

(assert (=> b!56994 m!47823))

(assert (=> b!56994 m!47825))

(declare-fun m!47969 () Bool)

(assert (=> b!56994 m!47969))

(assert (=> b!56794 d!10539))

(declare-fun d!10541 () Bool)

(declare-fun res!31954 () Bool)

(declare-fun e!37559 () Bool)

(assert (=> d!10541 (=> (not res!31954) (not e!37559))))

(declare-fun simpleValid!39 (LongMapFixedSize!606) Bool)

(assert (=> d!10541 (= res!31954 (simpleValid!39 newMap!16))))

(assert (=> d!10541 (= (valid!244 newMap!16) e!37559)))

(declare-fun b!57001 () Bool)

(declare-fun res!31955 () Bool)

(assert (=> b!57001 (=> (not res!31955) (not e!37559))))

(declare-fun arrayCountValidKeys!0 (array!3692 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!57001 (= res!31955 (= (arrayCountValidKeys!0 (_keys!3637 newMap!16) #b00000000000000000000000000000000 (size!1997 (_keys!3637 newMap!16))) (_size!352 newMap!16)))))

(declare-fun b!57002 () Bool)

(declare-fun res!31956 () Bool)

(assert (=> b!57002 (=> (not res!31956) (not e!37559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3692 (_ BitVec 32)) Bool)

(assert (=> b!57002 (= res!31956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3637 newMap!16) (mask!5888 newMap!16)))))

(declare-fun b!57003 () Bool)

(assert (=> b!57003 (= e!37559 (arrayNoDuplicates!0 (_keys!3637 newMap!16) #b00000000000000000000000000000000 Nil!1444))))

(assert (= (and d!10541 res!31954) b!57001))

(assert (= (and b!57001 res!31955) b!57002))

(assert (= (and b!57002 res!31956) b!57003))

(declare-fun m!47971 () Bool)

(assert (=> d!10541 m!47971))

(declare-fun m!47973 () Bool)

(assert (=> b!57001 m!47973))

(declare-fun m!47975 () Bool)

(assert (=> b!57002 m!47975))

(declare-fun m!47977 () Bool)

(assert (=> b!57003 m!47977))

(assert (=> b!56790 d!10541))

(declare-fun d!10543 () Bool)

(assert (=> d!10543 (not (arrayContainsKey!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!22492 () Unit!1474)

(declare-fun choose!68 (array!3692 (_ BitVec 32) (_ BitVec 64) List!1447) Unit!1474)

(assert (=> d!10543 (= lt!22492 (choose!68 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (Cons!1443 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) Nil!1444)))))

(assert (=> d!10543 (bvslt (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!10543 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (Cons!1443 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) Nil!1444)) lt!22492)))

(declare-fun bs!2470 () Bool)

(assert (= bs!2470 d!10543))

(assert (=> bs!2470 m!47815))

(assert (=> bs!2470 m!47845))

(assert (=> bs!2470 m!47815))

(declare-fun m!47979 () Bool)

(assert (=> bs!2470 m!47979))

(assert (=> b!56787 d!10543))

(declare-fun d!10545 () Bool)

(assert (=> d!10545 (arrayNoDuplicates!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) from!355 Nil!1444)))

(declare-fun lt!22495 () Unit!1474)

(declare-fun choose!39 (array!3692 (_ BitVec 32) (_ BitVec 32)) Unit!1474)

(assert (=> d!10545 (= lt!22495 (choose!39 (_keys!3637 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!10545 (bvslt (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!10545 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000000 from!355) lt!22495)))

(declare-fun bs!2471 () Bool)

(assert (= bs!2471 d!10545))

(assert (=> bs!2471 m!47841))

(declare-fun m!47981 () Bool)

(assert (=> bs!2471 m!47981))

(assert (=> b!56787 d!10545))

(declare-fun d!10547 () Bool)

(declare-fun res!31961 () Bool)

(declare-fun e!37564 () Bool)

(assert (=> d!10547 (=> res!31961 e!37564)))

(assert (=> d!10547 (= res!31961 (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(assert (=> d!10547 (= (arrayContainsKey!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!37564)))

(declare-fun b!57008 () Bool)

(declare-fun e!37565 () Bool)

(assert (=> b!57008 (= e!37564 e!37565)))

(declare-fun res!31962 () Bool)

(assert (=> b!57008 (=> (not res!31962) (not e!37565))))

(assert (=> b!57008 (= res!31962 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(declare-fun b!57009 () Bool)

(assert (=> b!57009 (= e!37565 (arrayContainsKey!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!10547 (not res!31961)) b!57008))

(assert (= (and b!57008 res!31962) b!57009))

(declare-fun m!47983 () Bool)

(assert (=> d!10547 m!47983))

(assert (=> b!57009 m!47815))

(declare-fun m!47985 () Bool)

(assert (=> b!57009 m!47985))

(assert (=> b!56787 d!10547))

(declare-fun d!10549 () Bool)

(declare-fun e!37568 () Bool)

(assert (=> d!10549 e!37568))

(declare-fun c!7030 () Bool)

(assert (=> d!10549 (= c!7030 (and (not (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!22498 () Unit!1474)

(declare-fun choose!294 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 64) (_ BitVec 32) Int) Unit!1474)

(assert (=> d!10549 (= lt!22498 (choose!294 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(assert (=> d!10549 (validMask!0 (mask!5888 (v!2357 (underlying!219 thiss!992))))))

(assert (=> d!10549 (= (lemmaListMapContainsThenArrayContainsFrom!25 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))) lt!22498)))

(declare-fun b!57014 () Bool)

(assert (=> b!57014 (= e!37568 (arrayContainsKey!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!57015 () Bool)

(assert (=> b!57015 (= e!37568 (ite (= (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!10549 c!7030) b!57014))

(assert (= (and d!10549 (not c!7030)) b!57015))

(assert (=> d!10549 m!47815))

(declare-fun m!47987 () Bool)

(assert (=> d!10549 m!47987))

(assert (=> d!10549 m!47849))

(assert (=> b!57014 m!47815))

(assert (=> b!57014 m!47845))

(assert (=> b!56787 d!10549))

(declare-fun d!10551 () Bool)

(declare-fun res!31969 () Bool)

(declare-fun e!37578 () Bool)

(assert (=> d!10551 (=> res!31969 e!37578)))

(assert (=> d!10551 (= res!31969 (bvsge from!355 (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(assert (=> d!10551 (= (arrayNoDuplicates!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) from!355 Nil!1444) e!37578)))

(declare-fun b!57026 () Bool)

(declare-fun e!37577 () Bool)

(declare-fun e!37579 () Bool)

(assert (=> b!57026 (= e!37577 e!37579)))

(declare-fun c!7033 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!57026 (= c!7033 (validKeyInArray!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun bm!4044 () Bool)

(declare-fun call!4047 () Bool)

(assert (=> bm!4044 (= call!4047 (arrayNoDuplicates!0 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!7033 (Cons!1443 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355) Nil!1444) Nil!1444)))))

(declare-fun b!57027 () Bool)

(assert (=> b!57027 (= e!37579 call!4047)))

(declare-fun b!57028 () Bool)

(assert (=> b!57028 (= e!37578 e!37577)))

(declare-fun res!31971 () Bool)

(assert (=> b!57028 (=> (not res!31971) (not e!37577))))

(declare-fun e!37580 () Bool)

(assert (=> b!57028 (= res!31971 (not e!37580))))

(declare-fun res!31970 () Bool)

(assert (=> b!57028 (=> (not res!31970) (not e!37580))))

(assert (=> b!57028 (= res!31970 (validKeyInArray!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(declare-fun b!57029 () Bool)

(assert (=> b!57029 (= e!37579 call!4047)))

(declare-fun b!57030 () Bool)

(declare-fun contains!687 (List!1447 (_ BitVec 64)) Bool)

(assert (=> b!57030 (= e!37580 (contains!687 Nil!1444 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) from!355)))))

(assert (= (and d!10551 (not res!31969)) b!57028))

(assert (= (and b!57028 res!31970) b!57030))

(assert (= (and b!57028 res!31971) b!57026))

(assert (= (and b!57026 c!7033) b!57027))

(assert (= (and b!57026 (not c!7033)) b!57029))

(assert (= (or b!57027 b!57029) bm!4044))

(assert (=> b!57026 m!47815))

(assert (=> b!57026 m!47815))

(declare-fun m!47989 () Bool)

(assert (=> b!57026 m!47989))

(assert (=> bm!4044 m!47815))

(declare-fun m!47991 () Bool)

(assert (=> bm!4044 m!47991))

(assert (=> b!57028 m!47815))

(assert (=> b!57028 m!47815))

(assert (=> b!57028 m!47989))

(assert (=> b!57030 m!47815))

(assert (=> b!57030 m!47815))

(declare-fun m!47993 () Bool)

(assert (=> b!57030 m!47993))

(assert (=> b!56787 d!10551))

(declare-fun d!10553 () Bool)

(assert (=> d!10553 (= (validMask!0 (mask!5888 (v!2357 (underlying!219 thiss!992)))) (and (or (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000001111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000011111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000001111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000011111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000001111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000011111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000001111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000011111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000000111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000001111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000011111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000000111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000001111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000011111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000000111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000001111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000011111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000000111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000001111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000011111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00000111111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00001111111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00011111111111111111111111111111) (= (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5888 (v!2357 (underlying!219 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!56795 d!10553))

(declare-fun d!10555 () Bool)

(assert (=> d!10555 (= (array_inv!1045 (_keys!3637 newMap!16)) (bvsge (size!1997 (_keys!3637 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!56784 d!10555))

(declare-fun d!10557 () Bool)

(assert (=> d!10557 (= (array_inv!1046 (_values!2000 newMap!16)) (bvsge (size!1998 (_values!2000 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!56784 d!10557))

(declare-fun d!10559 () Bool)

(assert (=> d!10559 (= (valid!245 thiss!992) (valid!244 (v!2357 (underlying!219 thiss!992))))))

(declare-fun bs!2472 () Bool)

(assert (= bs!2472 d!10559))

(declare-fun m!47995 () Bool)

(assert (=> bs!2472 m!47995))

(assert (=> start!8398 d!10559))

(declare-fun d!10561 () Bool)

(assert (=> d!10561 (= (map!1101 newMap!16) (getCurrentListMap!399 (_keys!3637 newMap!16) (_values!2000 newMap!16) (mask!5888 newMap!16) (extraKeys!1908 newMap!16) (zeroValue!1935 newMap!16) (minValue!1935 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2017 newMap!16)))))

(declare-fun bs!2473 () Bool)

(assert (= bs!2473 d!10561))

(assert (=> bs!2473 m!47931))

(assert (=> b!56792 d!10561))

(declare-fun b!57073 () Bool)

(declare-fun e!37615 () Bool)

(declare-fun e!37611 () Bool)

(assert (=> b!57073 (= e!37615 e!37611)))

(declare-fun res!31995 () Bool)

(declare-fun call!4062 () Bool)

(assert (=> b!57073 (= res!31995 call!4062)))

(assert (=> b!57073 (=> (not res!31995) (not e!37611))))

(declare-fun b!57074 () Bool)

(declare-fun e!37613 () ListLongMap!1371)

(declare-fun call!4067 () ListLongMap!1371)

(assert (=> b!57074 (= e!37613 call!4067)))

(declare-fun bm!4059 () Bool)

(declare-fun call!4068 () ListLongMap!1371)

(declare-fun call!4065 () ListLongMap!1371)

(assert (=> bm!4059 (= call!4068 call!4065)))

(declare-fun bm!4060 () Bool)

(declare-fun lt!22552 () ListLongMap!1371)

(assert (=> bm!4060 (= call!4062 (contains!686 lt!22552 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!4061 () Bool)

(declare-fun call!4064 () ListLongMap!1371)

(assert (=> bm!4061 (= call!4067 call!4064)))

(declare-fun b!57076 () Bool)

(declare-fun e!37619 () ListLongMap!1371)

(assert (=> b!57076 (= e!37619 (+!79 call!4065 (tuple2!2035 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1935 (v!2357 (underlying!219 thiss!992))))))))

(declare-fun b!57077 () Bool)

(declare-fun e!37614 () Unit!1474)

(declare-fun lt!22563 () Unit!1474)

(assert (=> b!57077 (= e!37614 lt!22563)))

(declare-fun lt!22558 () ListLongMap!1371)

(declare-fun getCurrentListMapNoExtraKeys!42 (array!3692 array!3694 (_ BitVec 32) (_ BitVec 32) V!2827 V!2827 (_ BitVec 32) Int) ListLongMap!1371)

(assert (=> b!57077 (= lt!22558 (getCurrentListMapNoExtraKeys!42 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun lt!22545 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!22555 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22555 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!22556 () Unit!1474)

(declare-fun addStillContains!40 (ListLongMap!1371 (_ BitVec 64) V!2827 (_ BitVec 64)) Unit!1474)

(assert (=> b!57077 (= lt!22556 (addStillContains!40 lt!22558 lt!22545 (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) lt!22555))))

(assert (=> b!57077 (contains!686 (+!79 lt!22558 (tuple2!2035 lt!22545 (zeroValue!1935 (v!2357 (underlying!219 thiss!992))))) lt!22555)))

(declare-fun lt!22554 () Unit!1474)

(assert (=> b!57077 (= lt!22554 lt!22556)))

(declare-fun lt!22553 () ListLongMap!1371)

(assert (=> b!57077 (= lt!22553 (getCurrentListMapNoExtraKeys!42 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun lt!22551 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22551 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!22546 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22546 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!22547 () Unit!1474)

(declare-fun addApplyDifferent!40 (ListLongMap!1371 (_ BitVec 64) V!2827 (_ BitVec 64)) Unit!1474)

(assert (=> b!57077 (= lt!22547 (addApplyDifferent!40 lt!22553 lt!22551 (minValue!1935 (v!2357 (underlying!219 thiss!992))) lt!22546))))

(declare-fun apply!64 (ListLongMap!1371 (_ BitVec 64)) V!2827)

(assert (=> b!57077 (= (apply!64 (+!79 lt!22553 (tuple2!2035 lt!22551 (minValue!1935 (v!2357 (underlying!219 thiss!992))))) lt!22546) (apply!64 lt!22553 lt!22546))))

(declare-fun lt!22550 () Unit!1474)

(assert (=> b!57077 (= lt!22550 lt!22547)))

(declare-fun lt!22544 () ListLongMap!1371)

(assert (=> b!57077 (= lt!22544 (getCurrentListMapNoExtraKeys!42 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun lt!22564 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22564 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!22548 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22548 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!22543 () Unit!1474)

(assert (=> b!57077 (= lt!22543 (addApplyDifferent!40 lt!22544 lt!22564 (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) lt!22548))))

(assert (=> b!57077 (= (apply!64 (+!79 lt!22544 (tuple2!2035 lt!22564 (zeroValue!1935 (v!2357 (underlying!219 thiss!992))))) lt!22548) (apply!64 lt!22544 lt!22548))))

(declare-fun lt!22557 () Unit!1474)

(assert (=> b!57077 (= lt!22557 lt!22543)))

(declare-fun lt!22549 () ListLongMap!1371)

(assert (=> b!57077 (= lt!22549 (getCurrentListMapNoExtraKeys!42 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun lt!22562 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22562 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!22561 () (_ BitVec 64))

(assert (=> b!57077 (= lt!22561 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!57077 (= lt!22563 (addApplyDifferent!40 lt!22549 lt!22562 (minValue!1935 (v!2357 (underlying!219 thiss!992))) lt!22561))))

(assert (=> b!57077 (= (apply!64 (+!79 lt!22549 (tuple2!2035 lt!22562 (minValue!1935 (v!2357 (underlying!219 thiss!992))))) lt!22561) (apply!64 lt!22549 lt!22561))))

(declare-fun b!57078 () Bool)

(declare-fun e!37618 () Bool)

(assert (=> b!57078 (= e!37618 (validKeyInArray!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!57079 () Bool)

(declare-fun e!37610 () Bool)

(declare-fun e!37612 () Bool)

(assert (=> b!57079 (= e!37610 e!37612)))

(declare-fun res!31997 () Bool)

(declare-fun call!4063 () Bool)

(assert (=> b!57079 (= res!31997 call!4063)))

(assert (=> b!57079 (=> (not res!31997) (not e!37612))))

(declare-fun b!57080 () Bool)

(declare-fun res!31991 () Bool)

(declare-fun e!37608 () Bool)

(assert (=> b!57080 (=> (not res!31991) (not e!37608))))

(assert (=> b!57080 (= res!31991 e!37615)))

(declare-fun c!7046 () Bool)

(assert (=> b!57080 (= c!7046 (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!4062 () Bool)

(assert (=> bm!4062 (= call!4063 (contains!686 lt!22552 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!4063 () Bool)

(declare-fun call!4066 () ListLongMap!1371)

(assert (=> bm!4063 (= call!4064 call!4066)))

(declare-fun b!57081 () Bool)

(assert (=> b!57081 (= e!37612 (= (apply!64 lt!22552 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1935 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun b!57082 () Bool)

(assert (=> b!57082 (= e!37615 (not call!4062))))

(declare-fun c!7047 () Bool)

(declare-fun c!7050 () Bool)

(declare-fun bm!4064 () Bool)

(assert (=> bm!4064 (= call!4065 (+!79 (ite c!7050 call!4066 (ite c!7047 call!4064 call!4067)) (ite (or c!7050 c!7047) (tuple2!2035 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1935 (v!2357 (underlying!219 thiss!992)))) (tuple2!2035 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1935 (v!2357 (underlying!219 thiss!992)))))))))

(declare-fun b!57083 () Bool)

(assert (=> b!57083 (= e!37611 (= (apply!64 lt!22552 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1935 (v!2357 (underlying!219 thiss!992)))))))

(declare-fun b!57084 () Bool)

(assert (=> b!57084 (= e!37610 (not call!4063))))

(declare-fun b!57085 () Bool)

(declare-fun c!7051 () Bool)

(assert (=> b!57085 (= c!7051 (and (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!37607 () ListLongMap!1371)

(assert (=> b!57085 (= e!37607 e!37613)))

(declare-fun b!57086 () Bool)

(declare-fun e!37616 () Bool)

(assert (=> b!57086 (= e!37616 (= (apply!64 lt!22552 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1068 (select (arr!1769 (_values!2000 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!309 (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!57086 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1998 (_values!2000 (v!2357 (underlying!219 thiss!992))))))))

(assert (=> b!57086 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(declare-fun b!57087 () Bool)

(assert (=> b!57087 (= e!37619 e!37607)))

(assert (=> b!57087 (= c!7047 (and (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!10563 () Bool)

(assert (=> d!10563 e!37608))

(declare-fun res!31996 () Bool)

(assert (=> d!10563 (=> (not res!31996) (not e!37608))))

(assert (=> d!10563 (= res!31996 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))))

(declare-fun lt!22560 () ListLongMap!1371)

(assert (=> d!10563 (= lt!22552 lt!22560)))

(declare-fun lt!22559 () Unit!1474)

(assert (=> d!10563 (= lt!22559 e!37614)))

(declare-fun c!7048 () Bool)

(declare-fun e!37617 () Bool)

(assert (=> d!10563 (= c!7048 e!37617)))

(declare-fun res!31993 () Bool)

(assert (=> d!10563 (=> (not res!31993) (not e!37617))))

(assert (=> d!10563 (= res!31993 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(assert (=> d!10563 (= lt!22560 e!37619)))

(assert (=> d!10563 (= c!7050 (and (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!10563 (validMask!0 (mask!5888 (v!2357 (underlying!219 thiss!992))))))

(assert (=> d!10563 (= (getCurrentListMap!399 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))) lt!22552)))

(declare-fun b!57075 () Bool)

(declare-fun Unit!1484 () Unit!1474)

(assert (=> b!57075 (= e!37614 Unit!1484)))

(declare-fun b!57088 () Bool)

(assert (=> b!57088 (= e!37608 e!37610)))

(declare-fun c!7049 () Bool)

(assert (=> b!57088 (= c!7049 (not (= (bvand (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!57089 () Bool)

(assert (=> b!57089 (= e!37613 call!4068)))

(declare-fun b!57090 () Bool)

(assert (=> b!57090 (= e!37617 (validKeyInArray!0 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!57091 () Bool)

(declare-fun e!37609 () Bool)

(assert (=> b!57091 (= e!37609 e!37616)))

(declare-fun res!31990 () Bool)

(assert (=> b!57091 (=> (not res!31990) (not e!37616))))

(assert (=> b!57091 (= res!31990 (contains!686 lt!22552 (select (arr!1768 (_keys!3637 (v!2357 (underlying!219 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!57091 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(declare-fun b!57092 () Bool)

(declare-fun res!31992 () Bool)

(assert (=> b!57092 (=> (not res!31992) (not e!37608))))

(assert (=> b!57092 (= res!31992 e!37609)))

(declare-fun res!31994 () Bool)

(assert (=> b!57092 (=> res!31994 e!37609)))

(assert (=> b!57092 (= res!31994 (not e!37618))))

(declare-fun res!31998 () Bool)

(assert (=> b!57092 (=> (not res!31998) (not e!37618))))

(assert (=> b!57092 (= res!31998 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1997 (_keys!3637 (v!2357 (underlying!219 thiss!992))))))))

(declare-fun b!57093 () Bool)

(assert (=> b!57093 (= e!37607 call!4068)))

(declare-fun bm!4065 () Bool)

(assert (=> bm!4065 (= call!4066 (getCurrentListMapNoExtraKeys!42 (_keys!3637 (v!2357 (underlying!219 thiss!992))) (_values!2000 (v!2357 (underlying!219 thiss!992))) (mask!5888 (v!2357 (underlying!219 thiss!992))) (extraKeys!1908 (v!2357 (underlying!219 thiss!992))) (zeroValue!1935 (v!2357 (underlying!219 thiss!992))) (minValue!1935 (v!2357 (underlying!219 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992)))))))

(assert (= (and d!10563 c!7050) b!57076))

(assert (= (and d!10563 (not c!7050)) b!57087))

(assert (= (and b!57087 c!7047) b!57093))

(assert (= (and b!57087 (not c!7047)) b!57085))

(assert (= (and b!57085 c!7051) b!57089))

(assert (= (and b!57085 (not c!7051)) b!57074))

(assert (= (or b!57089 b!57074) bm!4061))

(assert (= (or b!57093 bm!4061) bm!4063))

(assert (= (or b!57093 b!57089) bm!4059))

(assert (= (or b!57076 bm!4063) bm!4065))

(assert (= (or b!57076 bm!4059) bm!4064))

(assert (= (and d!10563 res!31993) b!57090))

(assert (= (and d!10563 c!7048) b!57077))

(assert (= (and d!10563 (not c!7048)) b!57075))

(assert (= (and d!10563 res!31996) b!57092))

(assert (= (and b!57092 res!31998) b!57078))

(assert (= (and b!57092 (not res!31994)) b!57091))

(assert (= (and b!57091 res!31990) b!57086))

(assert (= (and b!57092 res!31992) b!57080))

(assert (= (and b!57080 c!7046) b!57073))

(assert (= (and b!57080 (not c!7046)) b!57082))

(assert (= (and b!57073 res!31995) b!57083))

(assert (= (or b!57073 b!57082) bm!4060))

(assert (= (and b!57080 res!31991) b!57088))

(assert (= (and b!57088 c!7049) b!57079))

(assert (= (and b!57088 (not c!7049)) b!57084))

(assert (= (and b!57079 res!31997) b!57081))

(assert (= (or b!57079 b!57084) bm!4062))

(declare-fun b_lambda!2505 () Bool)

(assert (=> (not b_lambda!2505) (not b!57086)))

(assert (=> b!57086 t!4758))

(declare-fun b_and!3441 () Bool)

(assert (= b_and!3429 (and (=> t!4758 result!2327) b_and!3441)))

(assert (=> b!57086 t!4760))

(declare-fun b_and!3443 () Bool)

(assert (= b_and!3431 (and (=> t!4760 result!2331) b_and!3443)))

(declare-fun m!47997 () Bool)

(assert (=> b!57077 m!47997))

(declare-fun m!47999 () Bool)

(assert (=> b!57077 m!47999))

(declare-fun m!48001 () Bool)

(assert (=> b!57077 m!48001))

(declare-fun m!48003 () Bool)

(assert (=> b!57077 m!48003))

(declare-fun m!48005 () Bool)

(assert (=> b!57077 m!48005))

(declare-fun m!48007 () Bool)

(assert (=> b!57077 m!48007))

(declare-fun m!48009 () Bool)

(assert (=> b!57077 m!48009))

(declare-fun m!48011 () Bool)

(assert (=> b!57077 m!48011))

(declare-fun m!48013 () Bool)

(assert (=> b!57077 m!48013))

(declare-fun m!48015 () Bool)

(assert (=> b!57077 m!48015))

(assert (=> b!57077 m!48009))

(declare-fun m!48017 () Bool)

(assert (=> b!57077 m!48017))

(assert (=> b!57077 m!47999))

(declare-fun m!48019 () Bool)

(assert (=> b!57077 m!48019))

(declare-fun m!48021 () Bool)

(assert (=> b!57077 m!48021))

(assert (=> b!57077 m!47983))

(declare-fun m!48023 () Bool)

(assert (=> b!57077 m!48023))

(declare-fun m!48025 () Bool)

(assert (=> b!57077 m!48025))

(assert (=> b!57077 m!48023))

(declare-fun m!48027 () Bool)

(assert (=> b!57077 m!48027))

(assert (=> b!57077 m!48013))

(declare-fun m!48029 () Bool)

(assert (=> bm!4064 m!48029))

(assert (=> b!57086 m!47983))

(declare-fun m!48031 () Bool)

(assert (=> b!57086 m!48031))

(assert (=> b!57086 m!48031))

(assert (=> b!57086 m!47825))

(declare-fun m!48033 () Bool)

(assert (=> b!57086 m!48033))

(assert (=> b!57086 m!47825))

(assert (=> b!57086 m!47983))

(declare-fun m!48035 () Bool)

(assert (=> b!57086 m!48035))

(declare-fun m!48037 () Bool)

(assert (=> b!57083 m!48037))

(assert (=> b!57091 m!47983))

(assert (=> b!57091 m!47983))

(declare-fun m!48039 () Bool)

(assert (=> b!57091 m!48039))

(declare-fun m!48041 () Bool)

(assert (=> bm!4062 m!48041))

(declare-fun m!48043 () Bool)

(assert (=> b!57076 m!48043))

(declare-fun m!48045 () Bool)

(assert (=> bm!4060 m!48045))

(assert (=> bm!4065 m!47997))

(assert (=> d!10563 m!47849))

(assert (=> b!57090 m!47983))

(assert (=> b!57090 m!47983))

(declare-fun m!48047 () Bool)

(assert (=> b!57090 m!48047))

(assert (=> b!57078 m!47983))

(assert (=> b!57078 m!47983))

(assert (=> b!57078 m!48047))

(declare-fun m!48049 () Bool)

(assert (=> b!57081 m!48049))

(assert (=> b!56792 d!10563))

(declare-fun b!57101 () Bool)

(declare-fun e!37624 () Bool)

(assert (=> b!57101 (= e!37624 tp_is_empty!2385)))

(declare-fun b!57100 () Bool)

(declare-fun e!37625 () Bool)

(assert (=> b!57100 (= e!37625 tp_is_empty!2385)))

(declare-fun mapNonEmpty!2835 () Bool)

(declare-fun mapRes!2835 () Bool)

(declare-fun tp!7929 () Bool)

(assert (=> mapNonEmpty!2835 (= mapRes!2835 (and tp!7929 e!37625))))

(declare-fun mapKey!2835 () (_ BitVec 32))

(declare-fun mapRest!2835 () (Array (_ BitVec 32) ValueCell!849))

(declare-fun mapValue!2835 () ValueCell!849)

(assert (=> mapNonEmpty!2835 (= mapRest!2825 (store mapRest!2835 mapKey!2835 mapValue!2835))))

(declare-fun mapIsEmpty!2835 () Bool)

(assert (=> mapIsEmpty!2835 mapRes!2835))

(declare-fun condMapEmpty!2835 () Bool)

(declare-fun mapDefault!2835 () ValueCell!849)

(assert (=> mapNonEmpty!2826 (= condMapEmpty!2835 (= mapRest!2825 ((as const (Array (_ BitVec 32) ValueCell!849)) mapDefault!2835)))))

(assert (=> mapNonEmpty!2826 (= tp!7914 (and e!37624 mapRes!2835))))

(assert (= (and mapNonEmpty!2826 condMapEmpty!2835) mapIsEmpty!2835))

(assert (= (and mapNonEmpty!2826 (not condMapEmpty!2835)) mapNonEmpty!2835))

(assert (= (and mapNonEmpty!2835 ((_ is ValueCellFull!849) mapValue!2835)) b!57100))

(assert (= (and mapNonEmpty!2826 ((_ is ValueCellFull!849) mapDefault!2835)) b!57101))

(declare-fun m!48051 () Bool)

(assert (=> mapNonEmpty!2835 m!48051))

(declare-fun b!57103 () Bool)

(declare-fun e!37626 () Bool)

(assert (=> b!57103 (= e!37626 tp_is_empty!2385)))

(declare-fun b!57102 () Bool)

(declare-fun e!37627 () Bool)

(assert (=> b!57102 (= e!37627 tp_is_empty!2385)))

(declare-fun mapNonEmpty!2836 () Bool)

(declare-fun mapRes!2836 () Bool)

(declare-fun tp!7930 () Bool)

(assert (=> mapNonEmpty!2836 (= mapRes!2836 (and tp!7930 e!37627))))

(declare-fun mapRest!2836 () (Array (_ BitVec 32) ValueCell!849))

(declare-fun mapValue!2836 () ValueCell!849)

(declare-fun mapKey!2836 () (_ BitVec 32))

(assert (=> mapNonEmpty!2836 (= mapRest!2826 (store mapRest!2836 mapKey!2836 mapValue!2836))))

(declare-fun mapIsEmpty!2836 () Bool)

(assert (=> mapIsEmpty!2836 mapRes!2836))

(declare-fun condMapEmpty!2836 () Bool)

(declare-fun mapDefault!2836 () ValueCell!849)

(assert (=> mapNonEmpty!2825 (= condMapEmpty!2836 (= mapRest!2826 ((as const (Array (_ BitVec 32) ValueCell!849)) mapDefault!2836)))))

(assert (=> mapNonEmpty!2825 (= tp!7913 (and e!37626 mapRes!2836))))

(assert (= (and mapNonEmpty!2825 condMapEmpty!2836) mapIsEmpty!2836))

(assert (= (and mapNonEmpty!2825 (not condMapEmpty!2836)) mapNonEmpty!2836))

(assert (= (and mapNonEmpty!2836 ((_ is ValueCellFull!849) mapValue!2836)) b!57102))

(assert (= (and mapNonEmpty!2825 ((_ is ValueCellFull!849) mapDefault!2836)) b!57103))

(declare-fun m!48053 () Bool)

(assert (=> mapNonEmpty!2836 m!48053))

(declare-fun b_lambda!2507 () Bool)

(assert (= b_lambda!2505 (or (and b!56788 b_free!1937) (and b!56784 b_free!1939 (= (defaultEntry!2017 newMap!16) (defaultEntry!2017 (v!2357 (underlying!219 thiss!992))))) b_lambda!2507)))

(check-sat (not b!56966) (not b!57030) (not bm!4033) (not b!57077) (not b!56972) (not b!57086) (not bm!4062) (not bm!4031) (not d!10559) (not d!10549) (not bm!4021) (not b!56956) (not b!56970) (not bm!4026) (not b!57081) b_and!3443 (not b!57028) (not b!57026) (not bm!4060) (not b!56965) (not bm!4029) (not bm!4032) (not bm!4019) (not b!57009) (not d!10537) (not bm!4065) tp_is_empty!2385 (not b!56994) (not b!57091) (not b_next!1939) (not d!10535) (not b!57014) (not b!56988) (not b!57083) b_and!3441 (not b_lambda!2507) (not b!56860) (not bm!4064) (not d!10541) (not d!10545) (not b!57078) (not b!57001) (not bm!4036) (not b_lambda!2503) (not b!57076) (not b!56862) (not b!56993) (not b_next!1937) (not b!57090) (not bm!4025) (not b!56980) (not d!10561) (not mapNonEmpty!2836) (not b!57002) (not mapNonEmpty!2835) (not bm!4024) (not d!10563) (not bm!4044) (not bm!4030) (not b!56976) (not bm!4039) (not d!10543) (not b!57003))
(check-sat b_and!3441 b_and!3443 (not b_next!1937) (not b_next!1939))
