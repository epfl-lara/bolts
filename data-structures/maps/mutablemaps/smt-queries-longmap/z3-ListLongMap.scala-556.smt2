; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15076 () Bool)

(assert start!15076)

(declare-fun b!144847 () Bool)

(declare-fun b_free!3065 () Bool)

(declare-fun b_next!3065 () Bool)

(assert (=> b!144847 (= b_free!3065 (not b_next!3065))))

(declare-fun tp!11688 () Bool)

(declare-fun b_and!9045 () Bool)

(assert (=> b!144847 (= tp!11688 b_and!9045)))

(declare-fun b!144848 () Bool)

(declare-fun b_free!3067 () Bool)

(declare-fun b_next!3067 () Bool)

(assert (=> b!144848 (= b_free!3067 (not b_next!3067))))

(declare-fun tp!11690 () Bool)

(declare-fun b_and!9047 () Bool)

(assert (=> b!144848 (= tp!11690 b_and!9047)))

(declare-fun mapNonEmpty!4909 () Bool)

(declare-fun mapRes!4910 () Bool)

(declare-fun tp!11689 () Bool)

(declare-fun e!94393 () Bool)

(assert (=> mapNonEmpty!4909 (= mapRes!4910 (and tp!11689 e!94393))))

(declare-datatypes ((V!3579 0))(
  ( (V!3580 (val!1519 Int)) )
))
(declare-datatypes ((ValueCell!1131 0))(
  ( (ValueCellFull!1131 (v!3319 V!3579)) (EmptyCell!1131) )
))
(declare-fun mapRest!4910 () (Array (_ BitVec 32) ValueCell!1131))

(declare-datatypes ((array!4938 0))(
  ( (array!4939 (arr!2332 (Array (_ BitVec 32) (_ BitVec 64))) (size!2607 (_ BitVec 32))) )
))
(declare-datatypes ((array!4940 0))(
  ( (array!4941 (arr!2333 (Array (_ BitVec 32) ValueCell!1131)) (size!2608 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1170 0))(
  ( (LongMapFixedSize!1171 (defaultEntry!2989 Int) (mask!7353 (_ BitVec 32)) (extraKeys!2736 (_ BitVec 32)) (zeroValue!2835 V!3579) (minValue!2835 V!3579) (_size!634 (_ BitVec 32)) (_keys!4756 array!4938) (_values!2972 array!4940) (_vacant!634 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!956 0))(
  ( (Cell!957 (v!3320 LongMapFixedSize!1170)) )
))
(declare-datatypes ((LongMap!956 0))(
  ( (LongMap!957 (underlying!489 Cell!956)) )
))
(declare-fun thiss!992 () LongMap!956)

(declare-fun mapValue!4909 () ValueCell!1131)

(declare-fun mapKey!4909 () (_ BitVec 32))

(assert (=> mapNonEmpty!4909 (= (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (store mapRest!4910 mapKey!4909 mapValue!4909))))

(declare-fun b!144835 () Bool)

(declare-fun e!94386 () Bool)

(declare-fun e!94390 () Bool)

(assert (=> b!144835 (= e!94386 (not e!94390))))

(declare-fun res!68969 () Bool)

(assert (=> b!144835 (=> res!68969 e!94390)))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!144835 (= res!68969 (or (bvsge (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992)))))))))

(declare-datatypes ((List!1776 0))(
  ( (Nil!1773) (Cons!1772 (h!2380 (_ BitVec 64)) (t!6429 List!1776)) )
))
(declare-fun lt!76096 () List!1776)

(assert (=> b!144835 (= lt!76096 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773))))

(declare-fun arrayNoDuplicates!0 (array!4938 (_ BitVec 32) List!1776) Bool)

(assert (=> b!144835 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) from!355 Nil!1773)))

(declare-datatypes ((Unit!4592 0))(
  ( (Unit!4593) )
))
(declare-fun lt!76101 () Unit!4592)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4938 (_ BitVec 32) (_ BitVec 32)) Unit!4592)

(assert (=> b!144835 (= lt!76101 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!144835 (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76100 () Unit!4592)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!149 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) (_ BitVec 32) Int) Unit!4592)

(assert (=> b!144835 (= lt!76100 (lemmaListMapContainsThenArrayContainsFrom!149 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun res!68967 () Bool)

(declare-fun e!94400 () Bool)

(assert (=> start!15076 (=> (not res!68967) (not e!94400))))

(declare-fun valid!567 (LongMap!956) Bool)

(assert (=> start!15076 (= res!68967 (valid!567 thiss!992))))

(assert (=> start!15076 e!94400))

(declare-fun e!94395 () Bool)

(assert (=> start!15076 e!94395))

(assert (=> start!15076 true))

(declare-fun e!94389 () Bool)

(assert (=> start!15076 e!94389))

(declare-fun b!144836 () Bool)

(declare-fun e!94392 () Bool)

(declare-fun e!94391 () Bool)

(assert (=> b!144836 (= e!94392 e!94391)))

(declare-fun b!144837 () Bool)

(declare-fun e!94401 () Bool)

(declare-fun e!94394 () Bool)

(assert (=> b!144837 (= e!94401 (and e!94394 mapRes!4910))))

(declare-fun condMapEmpty!4910 () Bool)

(declare-fun mapDefault!4910 () ValueCell!1131)

(assert (=> b!144837 (= condMapEmpty!4910 (= (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4910)))))

(declare-fun b!144838 () Bool)

(declare-fun e!94398 () Bool)

(assert (=> b!144838 (= e!94400 e!94398)))

(declare-fun res!68974 () Bool)

(assert (=> b!144838 (=> (not res!68974) (not e!94398))))

(declare-datatypes ((tuple2!2700 0))(
  ( (tuple2!2701 (_1!1360 (_ BitVec 64)) (_2!1360 V!3579)) )
))
(declare-datatypes ((List!1777 0))(
  ( (Nil!1774) (Cons!1773 (h!2381 tuple2!2700) (t!6430 List!1777)) )
))
(declare-datatypes ((ListLongMap!1757 0))(
  ( (ListLongMap!1758 (toList!894 List!1777)) )
))
(declare-fun lt!76099 () ListLongMap!1757)

(declare-fun lt!76098 () ListLongMap!1757)

(assert (=> b!144838 (= res!68974 (and (= lt!76098 lt!76099) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1170)

(declare-fun map!1449 (LongMapFixedSize!1170) ListLongMap!1757)

(assert (=> b!144838 (= lt!76099 (map!1449 newMap!16))))

(declare-fun getCurrentListMap!560 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) Int) ListLongMap!1757)

(assert (=> b!144838 (= lt!76098 (getCurrentListMap!560 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun mapNonEmpty!4910 () Bool)

(declare-fun mapRes!4909 () Bool)

(declare-fun tp!11687 () Bool)

(declare-fun e!94388 () Bool)

(assert (=> mapNonEmpty!4910 (= mapRes!4909 (and tp!11687 e!94388))))

(declare-fun mapRest!4909 () (Array (_ BitVec 32) ValueCell!1131))

(declare-fun mapKey!4910 () (_ BitVec 32))

(declare-fun mapValue!4910 () ValueCell!1131)

(assert (=> mapNonEmpty!4910 (= (arr!2333 (_values!2972 newMap!16)) (store mapRest!4909 mapKey!4910 mapValue!4910))))

(declare-fun b!144839 () Bool)

(declare-fun res!68975 () Bool)

(assert (=> b!144839 (=> res!68975 e!94390)))

(declare-fun contains!932 (List!1776 (_ BitVec 64)) Bool)

(assert (=> b!144839 (= res!68975 (contains!932 lt!76096 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!4909 () Bool)

(assert (=> mapIsEmpty!4909 mapRes!4909))

(declare-fun b!144840 () Bool)

(declare-fun res!68970 () Bool)

(assert (=> b!144840 (=> res!68970 e!94390)))

(assert (=> b!144840 (= res!68970 (contains!932 lt!76096 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144841 () Bool)

(declare-fun tp_is_empty!2949 () Bool)

(assert (=> b!144841 (= e!94394 tp_is_empty!2949)))

(declare-fun b!144842 () Bool)

(declare-fun e!94399 () Bool)

(assert (=> b!144842 (= e!94399 tp_is_empty!2949)))

(declare-fun b!144843 () Bool)

(declare-fun res!68973 () Bool)

(assert (=> b!144843 (=> (not res!68973) (not e!94400))))

(assert (=> b!144843 (= res!68973 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7353 newMap!16)) (_size!634 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!144844 () Bool)

(declare-fun res!68968 () Bool)

(assert (=> b!144844 (=> (not res!68968) (not e!94400))))

(assert (=> b!144844 (= res!68968 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun b!144845 () Bool)

(assert (=> b!144845 (= e!94393 tp_is_empty!2949)))

(declare-fun b!144846 () Bool)

(declare-fun res!68976 () Bool)

(assert (=> b!144846 (=> (not res!68976) (not e!94400))))

(declare-fun valid!568 (LongMapFixedSize!1170) Bool)

(assert (=> b!144846 (= res!68976 (valid!568 newMap!16))))

(declare-fun array_inv!1445 (array!4938) Bool)

(declare-fun array_inv!1446 (array!4940) Bool)

(assert (=> b!144847 (= e!94391 (and tp!11688 tp_is_empty!2949 (array_inv!1445 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (array_inv!1446 (_values!2972 (v!3320 (underlying!489 thiss!992)))) e!94401))))

(declare-fun e!94397 () Bool)

(assert (=> b!144848 (= e!94389 (and tp!11690 tp_is_empty!2949 (array_inv!1445 (_keys!4756 newMap!16)) (array_inv!1446 (_values!2972 newMap!16)) e!94397))))

(declare-fun b!144849 () Bool)

(assert (=> b!144849 (= e!94397 (and e!94399 mapRes!4909))))

(declare-fun condMapEmpty!4909 () Bool)

(declare-fun mapDefault!4909 () ValueCell!1131)

(assert (=> b!144849 (= condMapEmpty!4909 (= (arr!2333 (_values!2972 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4909)))))

(declare-fun b!144850 () Bool)

(assert (=> b!144850 (= e!94395 e!94392)))

(declare-fun b!144851 () Bool)

(assert (=> b!144851 (= e!94398 e!94386)))

(declare-fun res!68971 () Bool)

(assert (=> b!144851 (=> (not res!68971) (not e!94386))))

(declare-fun contains!933 (ListLongMap!1757 (_ BitVec 64)) Bool)

(assert (=> b!144851 (= res!68971 (contains!933 lt!76099 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2702 0))(
  ( (tuple2!2703 (_1!1361 Bool) (_2!1361 LongMapFixedSize!1170)) )
))
(declare-fun lt!76097 () tuple2!2702)

(declare-fun update!213 (LongMapFixedSize!1170 (_ BitVec 64) V!3579) tuple2!2702)

(declare-fun get!1553 (ValueCell!1131 V!3579) V!3579)

(declare-fun dynLambda!446 (Int (_ BitVec 64)) V!3579)

(assert (=> b!144851 (= lt!76097 (update!213 newMap!16 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!144852 () Bool)

(assert (=> b!144852 (= e!94390 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!76096))))

(declare-fun b!144853 () Bool)

(declare-fun res!68972 () Bool)

(assert (=> b!144853 (=> res!68972 e!94390)))

(declare-fun noDuplicate!55 (List!1776) Bool)

(assert (=> b!144853 (= res!68972 (not (noDuplicate!55 lt!76096)))))

(declare-fun b!144854 () Bool)

(assert (=> b!144854 (= e!94388 tp_is_empty!2949)))

(declare-fun mapIsEmpty!4910 () Bool)

(assert (=> mapIsEmpty!4910 mapRes!4910))

(assert (= (and start!15076 res!68967) b!144844))

(assert (= (and b!144844 res!68968) b!144846))

(assert (= (and b!144846 res!68976) b!144843))

(assert (= (and b!144843 res!68973) b!144838))

(assert (= (and b!144838 res!68974) b!144851))

(assert (= (and b!144851 res!68971) b!144835))

(assert (= (and b!144835 (not res!68969)) b!144853))

(assert (= (and b!144853 (not res!68972)) b!144839))

(assert (= (and b!144839 (not res!68975)) b!144840))

(assert (= (and b!144840 (not res!68970)) b!144852))

(assert (= (and b!144837 condMapEmpty!4910) mapIsEmpty!4910))

(assert (= (and b!144837 (not condMapEmpty!4910)) mapNonEmpty!4909))

(get-info :version)

(assert (= (and mapNonEmpty!4909 ((_ is ValueCellFull!1131) mapValue!4909)) b!144845))

(assert (= (and b!144837 ((_ is ValueCellFull!1131) mapDefault!4910)) b!144841))

(assert (= b!144847 b!144837))

(assert (= b!144836 b!144847))

(assert (= b!144850 b!144836))

(assert (= start!15076 b!144850))

(assert (= (and b!144849 condMapEmpty!4909) mapIsEmpty!4909))

(assert (= (and b!144849 (not condMapEmpty!4909)) mapNonEmpty!4910))

(assert (= (and mapNonEmpty!4910 ((_ is ValueCellFull!1131) mapValue!4910)) b!144854))

(assert (= (and b!144849 ((_ is ValueCellFull!1131) mapDefault!4909)) b!144842))

(assert (= b!144848 b!144849))

(assert (= start!15076 b!144848))

(declare-fun b_lambda!6531 () Bool)

(assert (=> (not b_lambda!6531) (not b!144851)))

(declare-fun t!6426 () Bool)

(declare-fun tb!2613 () Bool)

(assert (=> (and b!144847 (= (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) t!6426) tb!2613))

(declare-fun result!4269 () Bool)

(assert (=> tb!2613 (= result!4269 tp_is_empty!2949)))

(assert (=> b!144851 t!6426))

(declare-fun b_and!9049 () Bool)

(assert (= b_and!9045 (and (=> t!6426 result!4269) b_and!9049)))

(declare-fun tb!2615 () Bool)

(declare-fun t!6428 () Bool)

(assert (=> (and b!144848 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) t!6428) tb!2615))

(declare-fun result!4273 () Bool)

(assert (= result!4273 result!4269))

(assert (=> b!144851 t!6428))

(declare-fun b_and!9051 () Bool)

(assert (= b_and!9047 (and (=> t!6428 result!4273) b_and!9051)))

(declare-fun m!174883 () Bool)

(assert (=> b!144853 m!174883))

(declare-fun m!174885 () Bool)

(assert (=> b!144848 m!174885))

(declare-fun m!174887 () Bool)

(assert (=> b!144848 m!174887))

(declare-fun m!174889 () Bool)

(assert (=> b!144839 m!174889))

(declare-fun m!174891 () Bool)

(assert (=> b!144846 m!174891))

(declare-fun m!174893 () Bool)

(assert (=> mapNonEmpty!4909 m!174893))

(declare-fun m!174895 () Bool)

(assert (=> b!144847 m!174895))

(declare-fun m!174897 () Bool)

(assert (=> b!144847 m!174897))

(declare-fun m!174899 () Bool)

(assert (=> b!144840 m!174899))

(declare-fun m!174901 () Bool)

(assert (=> b!144852 m!174901))

(declare-fun m!174903 () Bool)

(assert (=> start!15076 m!174903))

(declare-fun m!174905 () Bool)

(assert (=> mapNonEmpty!4910 m!174905))

(declare-fun m!174907 () Bool)

(assert (=> b!144835 m!174907))

(declare-fun m!174909 () Bool)

(assert (=> b!144835 m!174909))

(declare-fun m!174911 () Bool)

(assert (=> b!144835 m!174911))

(declare-fun m!174913 () Bool)

(assert (=> b!144835 m!174913))

(assert (=> b!144835 m!174911))

(assert (=> b!144835 m!174911))

(declare-fun m!174915 () Bool)

(assert (=> b!144835 m!174915))

(assert (=> b!144838 m!174911))

(declare-fun m!174917 () Bool)

(assert (=> b!144838 m!174917))

(declare-fun m!174919 () Bool)

(assert (=> b!144838 m!174919))

(declare-fun m!174921 () Bool)

(assert (=> b!144851 m!174921))

(declare-fun m!174923 () Bool)

(assert (=> b!144851 m!174923))

(declare-fun m!174925 () Bool)

(assert (=> b!144851 m!174925))

(assert (=> b!144851 m!174923))

(assert (=> b!144851 m!174911))

(assert (=> b!144851 m!174925))

(declare-fun m!174927 () Bool)

(assert (=> b!144851 m!174927))

(assert (=> b!144851 m!174921))

(assert (=> b!144851 m!174911))

(assert (=> b!144851 m!174911))

(declare-fun m!174929 () Bool)

(assert (=> b!144851 m!174929))

(check-sat (not b!144847) (not b_lambda!6531) (not b!144851) (not b!144848) tp_is_empty!2949 (not b!144846) (not mapNonEmpty!4910) (not mapNonEmpty!4909) (not b_next!3067) (not start!15076) (not b!144838) (not b!144840) (not b!144839) (not b!144835) (not b!144853) (not b!144852) b_and!9051 b_and!9049 (not b_next!3065))
(check-sat b_and!9049 b_and!9051 (not b_next!3065) (not b_next!3067))
(get-model)

(declare-fun b_lambda!6535 () Bool)

(assert (= b_lambda!6531 (or (and b!144847 b_free!3065) (and b!144848 b_free!3067 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))))) b_lambda!6535)))

(check-sat (not b!144847) (not b!144851) (not b!144848) tp_is_empty!2949 (not b!144846) (not mapNonEmpty!4910) (not mapNonEmpty!4909) (not b_next!3067) (not start!15076) (not b!144838) (not b!144840) (not b!144839) (not b_lambda!6535) (not b!144835) (not b!144853) (not b!144852) b_and!9051 b_and!9049 (not b_next!3065))
(check-sat b_and!9049 b_and!9051 (not b_next!3065) (not b_next!3067))
(get-model)

(declare-fun d!46189 () Bool)

(assert (=> d!46189 (= (valid!567 thiss!992) (valid!568 (v!3320 (underlying!489 thiss!992))))))

(declare-fun bs!6116 () Bool)

(assert (= bs!6116 d!46189))

(declare-fun m!174979 () Bool)

(assert (=> bs!6116 m!174979))

(assert (=> start!15076 d!46189))

(declare-fun d!46191 () Bool)

(declare-fun lt!76122 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!140 (List!1776) (InoxSet (_ BitVec 64)))

(assert (=> d!46191 (= lt!76122 (select (content!140 lt!76096) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94455 () Bool)

(assert (=> d!46191 (= lt!76122 e!94455)))

(declare-fun res!69011 () Bool)

(assert (=> d!46191 (=> (not res!69011) (not e!94455))))

(assert (=> d!46191 (= res!69011 ((_ is Cons!1772) lt!76096))))

(assert (=> d!46191 (= (contains!932 lt!76096 #b0000000000000000000000000000000000000000000000000000000000000000) lt!76122)))

(declare-fun b!144923 () Bool)

(declare-fun e!94454 () Bool)

(assert (=> b!144923 (= e!94455 e!94454)))

(declare-fun res!69012 () Bool)

(assert (=> b!144923 (=> res!69012 e!94454)))

(assert (=> b!144923 (= res!69012 (= (h!2380 lt!76096) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144924 () Bool)

(assert (=> b!144924 (= e!94454 (contains!932 (t!6429 lt!76096) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46191 res!69011) b!144923))

(assert (= (and b!144923 (not res!69012)) b!144924))

(declare-fun m!174981 () Bool)

(assert (=> d!46191 m!174981))

(declare-fun m!174983 () Bool)

(assert (=> d!46191 m!174983))

(declare-fun m!174985 () Bool)

(assert (=> b!144924 m!174985))

(assert (=> b!144839 d!46191))

(declare-fun d!46193 () Bool)

(assert (=> d!46193 (= (array_inv!1445 (_keys!4756 newMap!16)) (bvsge (size!2607 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144848 d!46193))

(declare-fun d!46195 () Bool)

(assert (=> d!46195 (= (array_inv!1446 (_values!2972 newMap!16)) (bvsge (size!2608 (_values!2972 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!144848 d!46195))

(declare-fun d!46197 () Bool)

(assert (=> d!46197 (= (map!1449 newMap!16) (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun bs!6117 () Bool)

(assert (= bs!6117 d!46197))

(declare-fun m!174987 () Bool)

(assert (=> bs!6117 m!174987))

(assert (=> b!144838 d!46197))

(declare-fun bm!16128 () Bool)

(declare-fun call!16134 () ListLongMap!1757)

(declare-fun call!16133 () ListLongMap!1757)

(assert (=> bm!16128 (= call!16134 call!16133)))

(declare-fun b!144967 () Bool)

(declare-fun e!94485 () ListLongMap!1757)

(declare-fun call!16132 () ListLongMap!1757)

(assert (=> b!144967 (= e!94485 call!16132)))

(declare-fun b!144968 () Bool)

(declare-fun e!94486 () Bool)

(declare-fun e!94483 () Bool)

(assert (=> b!144968 (= e!94486 e!94483)))

(declare-fun res!69033 () Bool)

(declare-fun call!16137 () Bool)

(assert (=> b!144968 (= res!69033 call!16137)))

(assert (=> b!144968 (=> (not res!69033) (not e!94483))))

(declare-fun b!144969 () Bool)

(declare-fun e!94493 () ListLongMap!1757)

(assert (=> b!144969 (= e!94493 e!94485)))

(declare-fun c!27455 () Bool)

(assert (=> b!144969 (= c!27455 (and (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16129 () Bool)

(declare-fun call!16135 () Bool)

(declare-fun lt!76170 () ListLongMap!1757)

(assert (=> bm!16129 (= call!16135 (contains!933 lt!76170 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144970 () Bool)

(declare-fun e!94492 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!144970 (= e!94492 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!46199 () Bool)

(declare-fun e!94494 () Bool)

(assert (=> d!46199 e!94494))

(declare-fun res!69034 () Bool)

(assert (=> d!46199 (=> (not res!69034) (not e!94494))))

(assert (=> d!46199 (= res!69034 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun lt!76181 () ListLongMap!1757)

(assert (=> d!46199 (= lt!76170 lt!76181)))

(declare-fun lt!76176 () Unit!4592)

(declare-fun e!94487 () Unit!4592)

(assert (=> d!46199 (= lt!76176 e!94487)))

(declare-fun c!27457 () Bool)

(declare-fun e!94488 () Bool)

(assert (=> d!46199 (= c!27457 e!94488)))

(declare-fun res!69035 () Bool)

(assert (=> d!46199 (=> (not res!69035) (not e!94488))))

(assert (=> d!46199 (= res!69035 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46199 (= lt!76181 e!94493)))

(declare-fun c!27459 () Bool)

(assert (=> d!46199 (= c!27459 (and (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!46199 (validMask!0 (mask!7353 (v!3320 (underlying!489 thiss!992))))))

(assert (=> d!46199 (= (getCurrentListMap!560 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) lt!76170)))

(declare-fun bm!16130 () Bool)

(declare-fun call!16131 () ListLongMap!1757)

(declare-fun call!16136 () ListLongMap!1757)

(declare-fun +!177 (ListLongMap!1757 tuple2!2700) ListLongMap!1757)

(assert (=> bm!16130 (= call!16136 (+!177 (ite c!27459 call!16133 (ite c!27455 call!16134 call!16131)) (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun b!144971 () Bool)

(assert (=> b!144971 (= e!94488 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!144972 () Bool)

(declare-fun Unit!4594 () Unit!4592)

(assert (=> b!144972 (= e!94487 Unit!4594)))

(declare-fun b!144973 () Bool)

(declare-fun lt!76184 () Unit!4592)

(assert (=> b!144973 (= e!94487 lt!76184)))

(declare-fun lt!76180 () ListLongMap!1757)

(declare-fun getCurrentListMapNoExtraKeys!144 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) Int) ListLongMap!1757)

(assert (=> b!144973 (= lt!76180 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun lt!76187 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76187 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76173 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76173 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76174 () Unit!4592)

(declare-fun addStillContains!99 (ListLongMap!1757 (_ BitVec 64) V!3579 (_ BitVec 64)) Unit!4592)

(assert (=> b!144973 (= lt!76174 (addStillContains!99 lt!76180 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76173))))

(assert (=> b!144973 (contains!933 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76173)))

(declare-fun lt!76183 () Unit!4592)

(assert (=> b!144973 (= lt!76183 lt!76174)))

(declare-fun lt!76186 () ListLongMap!1757)

(assert (=> b!144973 (= lt!76186 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun lt!76185 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76185 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76172 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76172 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76188 () Unit!4592)

(declare-fun addApplyDifferent!99 (ListLongMap!1757 (_ BitVec 64) V!3579 (_ BitVec 64)) Unit!4592)

(assert (=> b!144973 (= lt!76188 (addApplyDifferent!99 lt!76186 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76172))))

(declare-fun apply!123 (ListLongMap!1757 (_ BitVec 64)) V!3579)

(assert (=> b!144973 (= (apply!123 (+!177 lt!76186 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76172) (apply!123 lt!76186 lt!76172))))

(declare-fun lt!76179 () Unit!4592)

(assert (=> b!144973 (= lt!76179 lt!76188)))

(declare-fun lt!76178 () ListLongMap!1757)

(assert (=> b!144973 (= lt!76178 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun lt!76182 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76182 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76177 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76177 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76175 () Unit!4592)

(assert (=> b!144973 (= lt!76175 (addApplyDifferent!99 lt!76178 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76177))))

(assert (=> b!144973 (= (apply!123 (+!177 lt!76178 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76177) (apply!123 lt!76178 lt!76177))))

(declare-fun lt!76168 () Unit!4592)

(assert (=> b!144973 (= lt!76168 lt!76175)))

(declare-fun lt!76167 () ListLongMap!1757)

(assert (=> b!144973 (= lt!76167 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun lt!76171 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76171 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76169 () (_ BitVec 64))

(assert (=> b!144973 (= lt!76169 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!144973 (= lt!76184 (addApplyDifferent!99 lt!76167 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76169))))

(assert (=> b!144973 (= (apply!123 (+!177 lt!76167 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76169) (apply!123 lt!76167 lt!76169))))

(declare-fun b!144974 () Bool)

(declare-fun e!94490 () Bool)

(declare-fun e!94491 () Bool)

(assert (=> b!144974 (= e!94490 e!94491)))

(declare-fun res!69039 () Bool)

(assert (=> b!144974 (=> (not res!69039) (not e!94491))))

(assert (=> b!144974 (= res!69039 (contains!933 lt!76170 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!144974 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!144975 () Bool)

(declare-fun e!94484 () Bool)

(assert (=> b!144975 (= e!94484 (= (apply!123 lt!76170 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!144976 () Bool)

(declare-fun e!94489 () ListLongMap!1757)

(assert (=> b!144976 (= e!94489 call!16131)))

(declare-fun b!144977 () Bool)

(assert (=> b!144977 (= e!94493 (+!177 call!16136 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun bm!16131 () Bool)

(assert (=> bm!16131 (= call!16132 call!16136)))

(declare-fun b!144978 () Bool)

(declare-fun e!94482 () Bool)

(assert (=> b!144978 (= e!94482 e!94484)))

(declare-fun res!69031 () Bool)

(assert (=> b!144978 (= res!69031 call!16135)))

(assert (=> b!144978 (=> (not res!69031) (not e!94484))))

(declare-fun bm!16132 () Bool)

(assert (=> bm!16132 (= call!16133 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!144979 () Bool)

(assert (=> b!144979 (= e!94482 (not call!16135))))

(declare-fun b!144980 () Bool)

(assert (=> b!144980 (= e!94483 (= (apply!123 lt!76170 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun bm!16133 () Bool)

(assert (=> bm!16133 (= call!16131 call!16134)))

(declare-fun b!144981 () Bool)

(declare-fun c!27460 () Bool)

(assert (=> b!144981 (= c!27460 (and (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!144981 (= e!94485 e!94489)))

(declare-fun b!144982 () Bool)

(declare-fun res!69032 () Bool)

(assert (=> b!144982 (=> (not res!69032) (not e!94494))))

(assert (=> b!144982 (= res!69032 e!94490)))

(declare-fun res!69038 () Bool)

(assert (=> b!144982 (=> res!69038 e!94490)))

(assert (=> b!144982 (= res!69038 (not e!94492))))

(declare-fun res!69037 () Bool)

(assert (=> b!144982 (=> (not res!69037) (not e!94492))))

(assert (=> b!144982 (= res!69037 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!144983 () Bool)

(assert (=> b!144983 (= e!94491 (= (apply!123 lt!76170 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144983 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2608 (_values!2972 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> b!144983 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!144984 () Bool)

(assert (=> b!144984 (= e!94489 call!16132)))

(declare-fun b!144985 () Bool)

(assert (=> b!144985 (= e!94494 e!94482)))

(declare-fun c!27458 () Bool)

(assert (=> b!144985 (= c!27458 (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16134 () Bool)

(assert (=> bm!16134 (= call!16137 (contains!933 lt!76170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!144986 () Bool)

(declare-fun res!69036 () Bool)

(assert (=> b!144986 (=> (not res!69036) (not e!94494))))

(assert (=> b!144986 (= res!69036 e!94486)))

(declare-fun c!27456 () Bool)

(assert (=> b!144986 (= c!27456 (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!144987 () Bool)

(assert (=> b!144987 (= e!94486 (not call!16137))))

(assert (= (and d!46199 c!27459) b!144977))

(assert (= (and d!46199 (not c!27459)) b!144969))

(assert (= (and b!144969 c!27455) b!144967))

(assert (= (and b!144969 (not c!27455)) b!144981))

(assert (= (and b!144981 c!27460) b!144984))

(assert (= (and b!144981 (not c!27460)) b!144976))

(assert (= (or b!144984 b!144976) bm!16133))

(assert (= (or b!144967 bm!16133) bm!16128))

(assert (= (or b!144967 b!144984) bm!16131))

(assert (= (or b!144977 bm!16128) bm!16132))

(assert (= (or b!144977 bm!16131) bm!16130))

(assert (= (and d!46199 res!69035) b!144971))

(assert (= (and d!46199 c!27457) b!144973))

(assert (= (and d!46199 (not c!27457)) b!144972))

(assert (= (and d!46199 res!69034) b!144982))

(assert (= (and b!144982 res!69037) b!144970))

(assert (= (and b!144982 (not res!69038)) b!144974))

(assert (= (and b!144974 res!69039) b!144983))

(assert (= (and b!144982 res!69032) b!144986))

(assert (= (and b!144986 c!27456) b!144968))

(assert (= (and b!144986 (not c!27456)) b!144987))

(assert (= (and b!144968 res!69033) b!144980))

(assert (= (or b!144968 b!144987) bm!16134))

(assert (= (and b!144986 res!69036) b!144985))

(assert (= (and b!144985 c!27458) b!144978))

(assert (= (and b!144985 (not c!27458)) b!144979))

(assert (= (and b!144978 res!69031) b!144975))

(assert (= (or b!144978 b!144979) bm!16129))

(declare-fun b_lambda!6537 () Bool)

(assert (=> (not b_lambda!6537) (not b!144983)))

(assert (=> b!144983 t!6426))

(declare-fun b_and!9061 () Bool)

(assert (= b_and!9049 (and (=> t!6426 result!4269) b_and!9061)))

(assert (=> b!144983 t!6428))

(declare-fun b_and!9063 () Bool)

(assert (= b_and!9051 (and (=> t!6428 result!4273) b_and!9063)))

(declare-fun m!174989 () Bool)

(assert (=> b!144971 m!174989))

(assert (=> b!144971 m!174989))

(declare-fun m!174991 () Bool)

(assert (=> b!144971 m!174991))

(declare-fun m!174993 () Bool)

(assert (=> bm!16130 m!174993))

(declare-fun m!174995 () Bool)

(assert (=> b!144980 m!174995))

(declare-fun m!174997 () Bool)

(assert (=> b!144977 m!174997))

(declare-fun m!174999 () Bool)

(assert (=> b!144973 m!174999))

(declare-fun m!175001 () Bool)

(assert (=> b!144973 m!175001))

(declare-fun m!175003 () Bool)

(assert (=> b!144973 m!175003))

(declare-fun m!175005 () Bool)

(assert (=> b!144973 m!175005))

(declare-fun m!175007 () Bool)

(assert (=> b!144973 m!175007))

(declare-fun m!175009 () Bool)

(assert (=> b!144973 m!175009))

(assert (=> b!144973 m!175007))

(declare-fun m!175011 () Bool)

(assert (=> b!144973 m!175011))

(declare-fun m!175013 () Bool)

(assert (=> b!144973 m!175013))

(declare-fun m!175015 () Bool)

(assert (=> b!144973 m!175015))

(assert (=> b!144973 m!175013))

(assert (=> b!144973 m!175005))

(declare-fun m!175017 () Bool)

(assert (=> b!144973 m!175017))

(assert (=> b!144973 m!174989))

(declare-fun m!175019 () Bool)

(assert (=> b!144973 m!175019))

(declare-fun m!175021 () Bool)

(assert (=> b!144973 m!175021))

(declare-fun m!175023 () Bool)

(assert (=> b!144973 m!175023))

(declare-fun m!175025 () Bool)

(assert (=> b!144973 m!175025))

(declare-fun m!175027 () Bool)

(assert (=> b!144973 m!175027))

(assert (=> b!144973 m!175025))

(declare-fun m!175029 () Bool)

(assert (=> b!144973 m!175029))

(declare-fun m!175031 () Bool)

(assert (=> b!144975 m!175031))

(declare-fun m!175033 () Bool)

(assert (=> d!46199 m!175033))

(assert (=> bm!16132 m!175023))

(declare-fun m!175035 () Bool)

(assert (=> b!144983 m!175035))

(assert (=> b!144983 m!174923))

(declare-fun m!175037 () Bool)

(assert (=> b!144983 m!175037))

(assert (=> b!144983 m!174923))

(assert (=> b!144983 m!174989))

(assert (=> b!144983 m!175035))

(assert (=> b!144983 m!174989))

(declare-fun m!175039 () Bool)

(assert (=> b!144983 m!175039))

(assert (=> b!144974 m!174989))

(assert (=> b!144974 m!174989))

(declare-fun m!175041 () Bool)

(assert (=> b!144974 m!175041))

(declare-fun m!175043 () Bool)

(assert (=> bm!16134 m!175043))

(assert (=> b!144970 m!174989))

(assert (=> b!144970 m!174989))

(assert (=> b!144970 m!174991))

(declare-fun m!175045 () Bool)

(assert (=> bm!16129 m!175045))

(assert (=> b!144838 d!46199))

(declare-fun d!46201 () Bool)

(assert (=> d!46201 (= (array_inv!1445 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvsge (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!144847 d!46201))

(declare-fun d!46203 () Bool)

(assert (=> d!46203 (= (array_inv!1446 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvsge (size!2608 (_values!2972 (v!3320 (underlying!489 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!144847 d!46203))

(declare-fun d!46205 () Bool)

(declare-fun res!69046 () Bool)

(declare-fun e!94497 () Bool)

(assert (=> d!46205 (=> (not res!69046) (not e!94497))))

(declare-fun simpleValid!98 (LongMapFixedSize!1170) Bool)

(assert (=> d!46205 (= res!69046 (simpleValid!98 newMap!16))))

(assert (=> d!46205 (= (valid!568 newMap!16) e!94497)))

(declare-fun b!144994 () Bool)

(declare-fun res!69047 () Bool)

(assert (=> b!144994 (=> (not res!69047) (not e!94497))))

(declare-fun arrayCountValidKeys!0 (array!4938 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!144994 (= res!69047 (= (arrayCountValidKeys!0 (_keys!4756 newMap!16) #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (_size!634 newMap!16)))))

(declare-fun b!144995 () Bool)

(declare-fun res!69048 () Bool)

(assert (=> b!144995 (=> (not res!69048) (not e!94497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4938 (_ BitVec 32)) Bool)

(assert (=> b!144995 (= res!69048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun b!144996 () Bool)

(assert (=> b!144996 (= e!94497 (arrayNoDuplicates!0 (_keys!4756 newMap!16) #b00000000000000000000000000000000 Nil!1773))))

(assert (= (and d!46205 res!69046) b!144994))

(assert (= (and b!144994 res!69047) b!144995))

(assert (= (and b!144995 res!69048) b!144996))

(declare-fun m!175047 () Bool)

(assert (=> d!46205 m!175047))

(declare-fun m!175049 () Bool)

(assert (=> b!144994 m!175049))

(declare-fun m!175051 () Bool)

(assert (=> b!144995 m!175051))

(declare-fun m!175053 () Bool)

(assert (=> b!144996 m!175053))

(assert (=> b!144846 d!46205))

(declare-fun c!27463 () Bool)

(declare-fun bm!16137 () Bool)

(declare-fun call!16140 () Bool)

(assert (=> bm!16137 (= call!16140 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27463 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773) Nil!1773)))))

(declare-fun b!145007 () Bool)

(declare-fun e!94509 () Bool)

(assert (=> b!145007 (= e!94509 call!16140)))

(declare-fun d!46207 () Bool)

(declare-fun res!69057 () Bool)

(declare-fun e!94507 () Bool)

(assert (=> d!46207 (=> res!69057 e!94507)))

(assert (=> d!46207 (= res!69057 (bvsge from!355 (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46207 (= (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) from!355 Nil!1773) e!94507)))

(declare-fun b!145008 () Bool)

(declare-fun e!94508 () Bool)

(assert (=> b!145008 (= e!94508 e!94509)))

(assert (=> b!145008 (= c!27463 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145009 () Bool)

(assert (=> b!145009 (= e!94507 e!94508)))

(declare-fun res!69056 () Bool)

(assert (=> b!145009 (=> (not res!69056) (not e!94508))))

(declare-fun e!94506 () Bool)

(assert (=> b!145009 (= res!69056 (not e!94506))))

(declare-fun res!69055 () Bool)

(assert (=> b!145009 (=> (not res!69055) (not e!94506))))

(assert (=> b!145009 (= res!69055 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145010 () Bool)

(assert (=> b!145010 (= e!94506 (contains!932 Nil!1773 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145011 () Bool)

(assert (=> b!145011 (= e!94509 call!16140)))

(assert (= (and d!46207 (not res!69057)) b!145009))

(assert (= (and b!145009 res!69055) b!145010))

(assert (= (and b!145009 res!69056) b!145008))

(assert (= (and b!145008 c!27463) b!145007))

(assert (= (and b!145008 (not c!27463)) b!145011))

(assert (= (or b!145007 b!145011) bm!16137))

(assert (=> bm!16137 m!174911))

(declare-fun m!175055 () Bool)

(assert (=> bm!16137 m!175055))

(assert (=> b!145008 m!174911))

(assert (=> b!145008 m!174911))

(declare-fun m!175057 () Bool)

(assert (=> b!145008 m!175057))

(assert (=> b!145009 m!174911))

(assert (=> b!145009 m!174911))

(assert (=> b!145009 m!175057))

(assert (=> b!145010 m!174911))

(assert (=> b!145010 m!174911))

(declare-fun m!175059 () Bool)

(assert (=> b!145010 m!175059))

(assert (=> b!144835 d!46207))

(declare-fun d!46209 () Bool)

(assert (=> d!46209 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) from!355 Nil!1773)))

(declare-fun lt!76191 () Unit!4592)

(declare-fun choose!39 (array!4938 (_ BitVec 32) (_ BitVec 32)) Unit!4592)

(assert (=> d!46209 (= lt!76191 (choose!39 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!46209 (bvslt (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!46209 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 from!355) lt!76191)))

(declare-fun bs!6118 () Bool)

(assert (= bs!6118 d!46209))

(assert (=> bs!6118 m!174909))

(declare-fun m!175061 () Bool)

(assert (=> bs!6118 m!175061))

(assert (=> b!144835 d!46209))

(declare-fun d!46211 () Bool)

(declare-fun res!69062 () Bool)

(declare-fun e!94514 () Bool)

(assert (=> d!46211 (=> res!69062 e!94514)))

(assert (=> d!46211 (= res!69062 (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46211 (= (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!94514)))

(declare-fun b!145016 () Bool)

(declare-fun e!94515 () Bool)

(assert (=> b!145016 (= e!94514 e!94515)))

(declare-fun res!69063 () Bool)

(assert (=> b!145016 (=> (not res!69063) (not e!94515))))

(assert (=> b!145016 (= res!69063 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!145017 () Bool)

(assert (=> b!145017 (= e!94515 (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!46211 (not res!69062)) b!145016))

(assert (= (and b!145016 res!69063) b!145017))

(assert (=> d!46211 m!174989))

(assert (=> b!145017 m!174911))

(declare-fun m!175063 () Bool)

(assert (=> b!145017 m!175063))

(assert (=> b!144835 d!46211))

(declare-fun d!46213 () Bool)

(declare-fun e!94518 () Bool)

(assert (=> d!46213 e!94518))

(declare-fun c!27466 () Bool)

(assert (=> d!46213 (= c!27466 (and (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!76194 () Unit!4592)

(declare-fun choose!897 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) (_ BitVec 32) Int) Unit!4592)

(assert (=> d!46213 (= lt!76194 (choose!897 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(assert (=> d!46213 (validMask!0 (mask!7353 (v!3320 (underlying!489 thiss!992))))))

(assert (=> d!46213 (= (lemmaListMapContainsThenArrayContainsFrom!149 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) lt!76194)))

(declare-fun b!145022 () Bool)

(assert (=> b!145022 (= e!94518 (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!145023 () Bool)

(assert (=> b!145023 (= e!94518 (ite (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46213 c!27466) b!145022))

(assert (= (and d!46213 (not c!27466)) b!145023))

(assert (=> d!46213 m!174911))

(declare-fun m!175065 () Bool)

(assert (=> d!46213 m!175065))

(assert (=> d!46213 m!175033))

(assert (=> b!145022 m!174911))

(assert (=> b!145022 m!174915))

(assert (=> b!144835 d!46213))

(declare-fun d!46215 () Bool)

(declare-fun res!69068 () Bool)

(declare-fun e!94523 () Bool)

(assert (=> d!46215 (=> res!69068 e!94523)))

(assert (=> d!46215 (= res!69068 ((_ is Nil!1773) lt!76096))))

(assert (=> d!46215 (= (noDuplicate!55 lt!76096) e!94523)))

(declare-fun b!145028 () Bool)

(declare-fun e!94524 () Bool)

(assert (=> b!145028 (= e!94523 e!94524)))

(declare-fun res!69069 () Bool)

(assert (=> b!145028 (=> (not res!69069) (not e!94524))))

(assert (=> b!145028 (= res!69069 (not (contains!932 (t!6429 lt!76096) (h!2380 lt!76096))))))

(declare-fun b!145029 () Bool)

(assert (=> b!145029 (= e!94524 (noDuplicate!55 (t!6429 lt!76096)))))

(assert (= (and d!46215 (not res!69068)) b!145028))

(assert (= (and b!145028 res!69069) b!145029))

(declare-fun m!175067 () Bool)

(assert (=> b!145028 m!175067))

(declare-fun m!175069 () Bool)

(assert (=> b!145029 m!175069))

(assert (=> b!144853 d!46215))

(declare-fun bm!16138 () Bool)

(declare-fun call!16141 () Bool)

(declare-fun c!27467 () Bool)

(assert (=> bm!16138 (= call!16141 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (ite c!27467 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76096) lt!76096)))))

(declare-fun b!145030 () Bool)

(declare-fun e!94528 () Bool)

(assert (=> b!145030 (= e!94528 call!16141)))

(declare-fun d!46217 () Bool)

(declare-fun res!69072 () Bool)

(declare-fun e!94526 () Bool)

(assert (=> d!46217 (=> res!69072 e!94526)))

(assert (=> d!46217 (= res!69072 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46217 (= (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!76096) e!94526)))

(declare-fun b!145031 () Bool)

(declare-fun e!94527 () Bool)

(assert (=> b!145031 (= e!94527 e!94528)))

(assert (=> b!145031 (= c!27467 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145032 () Bool)

(assert (=> b!145032 (= e!94526 e!94527)))

(declare-fun res!69071 () Bool)

(assert (=> b!145032 (=> (not res!69071) (not e!94527))))

(declare-fun e!94525 () Bool)

(assert (=> b!145032 (= res!69071 (not e!94525))))

(declare-fun res!69070 () Bool)

(assert (=> b!145032 (=> (not res!69070) (not e!94525))))

(assert (=> b!145032 (= res!69070 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145033 () Bool)

(assert (=> b!145033 (= e!94525 (contains!932 lt!76096 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145034 () Bool)

(assert (=> b!145034 (= e!94528 call!16141)))

(assert (= (and d!46217 (not res!69072)) b!145032))

(assert (= (and b!145032 res!69070) b!145033))

(assert (= (and b!145032 res!69071) b!145031))

(assert (= (and b!145031 c!27467) b!145030))

(assert (= (and b!145031 (not c!27467)) b!145034))

(assert (= (or b!145030 b!145034) bm!16138))

(assert (=> bm!16138 m!174989))

(declare-fun m!175071 () Bool)

(assert (=> bm!16138 m!175071))

(assert (=> b!145031 m!174989))

(assert (=> b!145031 m!174989))

(assert (=> b!145031 m!174991))

(assert (=> b!145032 m!174989))

(assert (=> b!145032 m!174989))

(assert (=> b!145032 m!174991))

(assert (=> b!145033 m!174989))

(assert (=> b!145033 m!174989))

(declare-fun m!175073 () Bool)

(assert (=> b!145033 m!175073))

(assert (=> b!144852 d!46217))

(declare-fun d!46219 () Bool)

(declare-fun lt!76195 () Bool)

(assert (=> d!46219 (= lt!76195 (select (content!140 lt!76096) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94530 () Bool)

(assert (=> d!46219 (= lt!76195 e!94530)))

(declare-fun res!69073 () Bool)

(assert (=> d!46219 (=> (not res!69073) (not e!94530))))

(assert (=> d!46219 (= res!69073 ((_ is Cons!1772) lt!76096))))

(assert (=> d!46219 (= (contains!932 lt!76096 #b1000000000000000000000000000000000000000000000000000000000000000) lt!76195)))

(declare-fun b!145035 () Bool)

(declare-fun e!94529 () Bool)

(assert (=> b!145035 (= e!94530 e!94529)))

(declare-fun res!69074 () Bool)

(assert (=> b!145035 (=> res!69074 e!94529)))

(assert (=> b!145035 (= res!69074 (= (h!2380 lt!76096) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145036 () Bool)

(assert (=> b!145036 (= e!94529 (contains!932 (t!6429 lt!76096) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46219 res!69073) b!145035))

(assert (= (and b!145035 (not res!69074)) b!145036))

(assert (=> d!46219 m!174981))

(declare-fun m!175075 () Bool)

(assert (=> d!46219 m!175075))

(declare-fun m!175077 () Bool)

(assert (=> b!145036 m!175077))

(assert (=> b!144840 d!46219))

(declare-fun d!46221 () Bool)

(declare-fun e!94536 () Bool)

(assert (=> d!46221 e!94536))

(declare-fun res!69077 () Bool)

(assert (=> d!46221 (=> res!69077 e!94536)))

(declare-fun lt!76205 () Bool)

(assert (=> d!46221 (= res!69077 (not lt!76205))))

(declare-fun lt!76207 () Bool)

(assert (=> d!46221 (= lt!76205 lt!76207)))

(declare-fun lt!76206 () Unit!4592)

(declare-fun e!94535 () Unit!4592)

(assert (=> d!46221 (= lt!76206 e!94535)))

(declare-fun c!27470 () Bool)

(assert (=> d!46221 (= c!27470 lt!76207)))

(declare-fun containsKey!182 (List!1777 (_ BitVec 64)) Bool)

(assert (=> d!46221 (= lt!76207 (containsKey!182 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46221 (= (contains!933 lt!76099 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) lt!76205)))

(declare-fun b!145043 () Bool)

(declare-fun lt!76204 () Unit!4592)

(assert (=> b!145043 (= e!94535 lt!76204)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!131 (List!1777 (_ BitVec 64)) Unit!4592)

(assert (=> b!145043 (= lt!76204 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-datatypes ((Option!184 0))(
  ( (Some!183 (v!3325 V!3579)) (None!182) )
))
(declare-fun isDefined!132 (Option!184) Bool)

(declare-fun getValueByKey!178 (List!1777 (_ BitVec 64)) Option!184)

(assert (=> b!145043 (isDefined!132 (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145044 () Bool)

(declare-fun Unit!4595 () Unit!4592)

(assert (=> b!145044 (= e!94535 Unit!4595)))

(declare-fun b!145045 () Bool)

(assert (=> b!145045 (= e!94536 (isDefined!132 (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (= (and d!46221 c!27470) b!145043))

(assert (= (and d!46221 (not c!27470)) b!145044))

(assert (= (and d!46221 (not res!69077)) b!145045))

(assert (=> d!46221 m!174911))

(declare-fun m!175079 () Bool)

(assert (=> d!46221 m!175079))

(assert (=> b!145043 m!174911))

(declare-fun m!175081 () Bool)

(assert (=> b!145043 m!175081))

(assert (=> b!145043 m!174911))

(declare-fun m!175083 () Bool)

(assert (=> b!145043 m!175083))

(assert (=> b!145043 m!175083))

(declare-fun m!175085 () Bool)

(assert (=> b!145043 m!175085))

(assert (=> b!145045 m!174911))

(assert (=> b!145045 m!175083))

(assert (=> b!145045 m!175083))

(assert (=> b!145045 m!175085))

(assert (=> b!144851 d!46221))

(declare-fun bm!16187 () Bool)

(declare-fun call!16200 () ListLongMap!1757)

(declare-fun call!16201 () ListLongMap!1757)

(assert (=> bm!16187 (= call!16200 call!16201)))

(declare-fun c!27511 () Bool)

(declare-fun call!16213 () Bool)

(declare-datatypes ((SeekEntryResult!292 0))(
  ( (MissingZero!292 (index!3334 (_ BitVec 32))) (Found!292 (index!3335 (_ BitVec 32))) (Intermediate!292 (undefined!1104 Bool) (index!3336 (_ BitVec 32)) (x!16524 (_ BitVec 32))) (Undefined!292) (MissingVacant!292 (index!3337 (_ BitVec 32))) )
))
(declare-fun lt!76288 () SeekEntryResult!292)

(declare-fun lt!76287 () SeekEntryResult!292)

(declare-fun c!27503 () Bool)

(declare-fun lt!76284 () SeekEntryResult!292)

(declare-fun c!27505 () Bool)

(declare-fun bm!16188 () Bool)

(declare-fun c!27512 () Bool)

(declare-fun lt!76266 () SeekEntryResult!292)

(declare-fun c!27499 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!16188 (= call!16213 (inRange!0 (ite c!27503 (ite c!27512 (index!3335 lt!76266) (ite c!27505 (index!3334 lt!76288) (index!3337 lt!76288))) (ite c!27499 (index!3335 lt!76284) (ite c!27511 (index!3334 lt!76287) (index!3337 lt!76287)))) (mask!7353 newMap!16)))))

(declare-fun b!145130 () Bool)

(declare-fun e!94588 () Bool)

(assert (=> b!145130 (= e!94588 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76266)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun bm!16189 () Bool)

(declare-fun call!16191 () Bool)

(assert (=> bm!16189 (= call!16191 call!16213)))

(declare-fun e!94597 () Bool)

(declare-fun call!16210 () ListLongMap!1757)

(declare-fun call!16196 () ListLongMap!1757)

(declare-fun b!145131 () Bool)

(assert (=> b!145131 (= e!94597 (= call!16196 (+!177 call!16210 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!145132 () Bool)

(declare-fun e!94600 () Bool)

(declare-fun e!94592 () Bool)

(assert (=> b!145132 (= e!94600 e!94592)))

(declare-fun c!27510 () Bool)

(declare-fun lt!76277 () tuple2!2702)

(assert (=> b!145132 (= c!27510 (_1!1361 lt!76277))))

(declare-fun b!145133 () Bool)

(declare-fun e!94585 () tuple2!2702)

(declare-fun e!94584 () tuple2!2702)

(assert (=> b!145133 (= e!94585 e!94584)))

(declare-fun lt!76269 () SeekEntryResult!292)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4938 (_ BitVec 32)) SeekEntryResult!292)

(assert (=> b!145133 (= lt!76269 (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(assert (=> b!145133 (= c!27503 ((_ is Undefined!292) lt!76269))))

(declare-fun bm!16190 () Bool)

(declare-fun call!16203 () Bool)

(declare-fun call!16208 () Bool)

(assert (=> bm!16190 (= call!16203 call!16208)))

(declare-fun bm!16191 () Bool)

(declare-fun call!16198 () Bool)

(assert (=> bm!16191 (= call!16198 call!16208)))

(declare-fun b!145134 () Bool)

(declare-fun e!94582 () tuple2!2702)

(declare-fun e!94596 () tuple2!2702)

(assert (=> b!145134 (= e!94582 e!94596)))

(declare-fun c!27500 () Bool)

(assert (=> b!145134 (= c!27500 ((_ is MissingZero!292) lt!76269))))

(declare-fun bm!16192 () Bool)

(assert (=> bm!16192 (= call!16196 (map!1449 (_2!1361 lt!76277)))))

(declare-fun bm!16193 () Bool)

(declare-fun call!16199 () Bool)

(assert (=> bm!16193 (= call!16199 call!16213)))

(declare-fun b!145135 () Bool)

(declare-fun e!94602 () ListLongMap!1757)

(assert (=> b!145135 (= e!94602 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun b!145136 () Bool)

(declare-fun e!94589 () Bool)

(declare-fun e!94583 () Bool)

(assert (=> b!145136 (= e!94589 e!94583)))

(declare-fun res!69110 () Bool)

(declare-fun call!16205 () Bool)

(assert (=> b!145136 (= res!69110 call!16205)))

(assert (=> b!145136 (=> (not res!69110) (not e!94583))))

(declare-fun b!145137 () Bool)

(declare-fun e!94590 () Unit!4592)

(declare-fun lt!76276 () Unit!4592)

(assert (=> b!145137 (= e!94590 lt!76276)))

(declare-fun call!16212 () Unit!4592)

(assert (=> b!145137 (= lt!76276 call!16212)))

(declare-fun call!16202 () SeekEntryResult!292)

(assert (=> b!145137 (= lt!76288 call!16202)))

(assert (=> b!145137 (= c!27505 ((_ is MissingZero!292) lt!76288))))

(declare-fun e!94587 () Bool)

(assert (=> b!145137 e!94587))

(declare-fun bm!16194 () Bool)

(declare-fun call!16195 () ListLongMap!1757)

(declare-fun call!16207 () ListLongMap!1757)

(assert (=> bm!16194 (= call!16195 call!16207)))

(declare-fun call!16194 () tuple2!2702)

(declare-fun c!27502 () Bool)

(declare-fun bm!16195 () Bool)

(declare-fun updateHelperNewKey!68 (LongMapFixedSize!1170 (_ BitVec 64) V!3579 (_ BitVec 32)) tuple2!2702)

(assert (=> bm!16195 (= call!16194 (updateHelperNewKey!68 newMap!16 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269))))))

(declare-fun bm!16196 () Bool)

(declare-fun call!16190 () Unit!4592)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!68 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) Int) Unit!4592)

(assert (=> bm!16196 (= call!16190 (lemmaInListMapThenSeekEntryOrOpenFindsIt!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(declare-fun b!145138 () Bool)

(assert (=> b!145138 (= e!94583 (not call!16198))))

(declare-fun b!145139 () Bool)

(declare-fun res!69115 () Bool)

(assert (=> b!145139 (= res!69115 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3337 lt!76288)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145139 (=> (not res!69115) (not e!94583))))

(declare-fun bm!16197 () Bool)

(assert (=> bm!16197 (= call!16210 (map!1449 newMap!16))))

(declare-fun b!145140 () Bool)

(assert (=> b!145140 (= e!94592 (= call!16196 call!16210))))

(declare-fun b!145141 () Bool)

(assert (=> b!145141 (= c!27502 ((_ is MissingVacant!292) lt!76269))))

(assert (=> b!145141 (= e!94584 e!94582)))

(declare-fun bm!16198 () Bool)

(declare-fun call!16211 () ListLongMap!1757)

(assert (=> bm!16198 (= call!16211 call!16201)))

(declare-fun b!145142 () Bool)

(declare-fun lt!76273 () tuple2!2702)

(assert (=> b!145142 (= lt!76273 call!16194)))

(assert (=> b!145142 (= e!94596 (tuple2!2703 (_1!1361 lt!76273) (_2!1361 lt!76273)))))

(declare-fun b!145143 () Bool)

(assert (=> b!145143 (= e!94592 e!94597)))

(declare-fun res!69113 () Bool)

(assert (=> b!145143 (= res!69113 (contains!933 call!16196 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145143 (=> (not res!69113) (not e!94597))))

(declare-fun bm!16199 () Bool)

(declare-fun c!27507 () Bool)

(declare-fun lt!76280 () (_ BitVec 32))

(declare-fun c!27501 () Bool)

(assert (=> bm!16199 (= call!16201 (getCurrentListMap!560 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun bm!16200 () Bool)

(assert (=> bm!16200 (= call!16205 call!16191)))

(declare-fun b!145144 () Bool)

(declare-fun res!69107 () Bool)

(assert (=> b!145144 (= res!69107 call!16199)))

(declare-fun e!94598 () Bool)

(assert (=> b!145144 (=> (not res!69107) (not e!94598))))

(declare-fun bm!16201 () Bool)

(assert (=> bm!16201 (= call!16208 (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!145145 () Bool)

(declare-fun res!69118 () Bool)

(declare-fun e!94601 () Bool)

(assert (=> b!145145 (=> (not res!69118) (not e!94601))))

(assert (=> b!145145 (= res!69118 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3334 lt!76288)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145146 () Bool)

(declare-fun res!69106 () Bool)

(assert (=> b!145146 (= res!69106 call!16191)))

(assert (=> b!145146 (=> (not res!69106) (not e!94588))))

(declare-fun b!145147 () Bool)

(declare-fun e!94599 () Bool)

(assert (=> b!145147 (= e!94599 (not call!16203))))

(declare-fun b!145148 () Bool)

(declare-fun res!69111 () Bool)

(assert (=> b!145148 (= res!69111 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3337 lt!76287)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145148 (=> (not res!69111) (not e!94599))))

(declare-fun bm!16202 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!68 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) Int) Unit!4592)

(assert (=> bm!16202 (= call!16212 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(declare-fun bm!16203 () Bool)

(declare-fun call!16204 () ListLongMap!1757)

(declare-fun call!16193 () ListLongMap!1757)

(assert (=> bm!16203 (= call!16204 call!16193)))

(declare-fun d!46223 () Bool)

(assert (=> d!46223 e!94600))

(declare-fun res!69117 () Bool)

(assert (=> d!46223 (=> (not res!69117) (not e!94600))))

(assert (=> d!46223 (= res!69117 (valid!568 (_2!1361 lt!76277)))))

(assert (=> d!46223 (= lt!76277 e!94585)))

(assert (=> d!46223 (= c!27507 (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvneg (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (=> d!46223 (valid!568 newMap!16)))

(assert (=> d!46223 (= (update!213 newMap!16 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!76277)))

(declare-fun b!145149 () Bool)

(declare-fun lt!76281 () Unit!4592)

(assert (=> b!145149 (= lt!76281 e!94590)))

(declare-fun call!16206 () Bool)

(assert (=> b!145149 (= c!27512 call!16206)))

(assert (=> b!145149 (= e!94584 (tuple2!2703 false newMap!16))))

(declare-fun b!145150 () Bool)

(declare-fun e!94581 () ListLongMap!1757)

(assert (=> b!145150 (= e!94581 call!16200)))

(declare-fun bm!16204 () Bool)

(declare-fun call!16197 () SeekEntryResult!292)

(declare-fun call!16192 () SeekEntryResult!292)

(assert (=> bm!16204 (= call!16197 call!16192)))

(declare-fun b!145151 () Bool)

(declare-fun c!27506 () Bool)

(assert (=> b!145151 (= c!27506 ((_ is MissingVacant!292) lt!76288))))

(assert (=> b!145151 (= e!94587 e!94589)))

(declare-fun bm!16205 () Bool)

(assert (=> bm!16205 (= call!16207 (+!177 e!94602 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!27508 () Bool)

(assert (=> bm!16205 (= c!27508 c!27507)))

(declare-fun b!145152 () Bool)

(declare-fun res!69116 () Bool)

(assert (=> b!145152 (=> (not res!69116) (not e!94601))))

(assert (=> b!145152 (= res!69116 call!16205)))

(assert (=> b!145152 (= e!94587 e!94601)))

(declare-fun b!145153 () Bool)

(declare-fun lt!76271 () Unit!4592)

(declare-fun lt!76285 () Unit!4592)

(assert (=> b!145153 (= lt!76271 lt!76285)))

(assert (=> b!145153 (= call!16195 call!16204)))

(declare-fun lt!76275 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!68 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 V!3579 Int) Unit!4592)

(assert (=> b!145153 (= lt!76285 (lemmaChangeLongMinValueKeyThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76275 (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)))))

(assert (=> b!145153 (= lt!76275 (bvor (extraKeys!2736 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!94594 () tuple2!2702)

(assert (=> b!145153 (= e!94594 (tuple2!2703 true (LongMapFixedSize!1171 (defaultEntry!2989 newMap!16) (mask!7353 newMap!16) (bvor (extraKeys!2736 newMap!16) #b00000000000000000000000000000010) (zeroValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!634 newMap!16) (_keys!4756 newMap!16) (_values!2972 newMap!16) (_vacant!634 newMap!16))))))

(declare-fun b!145154 () Bool)

(declare-fun e!94593 () Bool)

(assert (=> b!145154 (= e!94593 ((_ is Undefined!292) lt!76287))))

(declare-fun bm!16206 () Bool)

(declare-fun lt!76270 () array!4940)

(assert (=> bm!16206 (= call!16193 (getCurrentListMap!560 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun b!145155 () Bool)

(declare-fun e!94591 () Bool)

(assert (=> b!145155 (= e!94591 (not call!16203))))

(declare-fun b!145156 () Bool)

(assert (=> b!145156 (= e!94598 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76284)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145157 () Bool)

(assert (=> b!145157 (= e!94602 (ite c!27501 call!16204 call!16211))))

(declare-fun b!145158 () Bool)

(assert (=> b!145158 (= e!94581 call!16193)))

(declare-fun bm!16207 () Bool)

(assert (=> bm!16207 (= call!16202 call!16192)))

(declare-fun b!145159 () Bool)

(declare-fun e!94595 () Unit!4592)

(declare-fun lt!76282 () Unit!4592)

(assert (=> b!145159 (= e!94595 lt!76282)))

(assert (=> b!145159 (= lt!76282 call!16190)))

(assert (=> b!145159 (= lt!76284 call!16197)))

(declare-fun res!69108 () Bool)

(assert (=> b!145159 (= res!69108 ((_ is Found!292) lt!76284))))

(assert (=> b!145159 (=> (not res!69108) (not e!94598))))

(assert (=> b!145159 e!94598))

(declare-fun b!145160 () Bool)

(declare-fun lt!76263 () Unit!4592)

(declare-fun lt!76283 () Unit!4592)

(assert (=> b!145160 (= lt!76263 lt!76283)))

(assert (=> b!145160 (= call!16195 call!16211)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!68 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 V!3579 Int) Unit!4592)

(assert (=> b!145160 (= lt!76283 (lemmaChangeZeroKeyThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76280 (zeroValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2835 newMap!16) (defaultEntry!2989 newMap!16)))))

(assert (=> b!145160 (= lt!76280 (bvor (extraKeys!2736 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!145160 (= e!94594 (tuple2!2703 true (LongMapFixedSize!1171 (defaultEntry!2989 newMap!16) (mask!7353 newMap!16) (bvor (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2835 newMap!16) (_size!634 newMap!16) (_keys!4756 newMap!16) (_values!2972 newMap!16) (_vacant!634 newMap!16))))))

(declare-fun b!145161 () Bool)

(declare-fun res!69119 () Bool)

(assert (=> b!145161 (=> (not res!69119) (not e!94591))))

(assert (=> b!145161 (= res!69119 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3334 lt!76287)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!16208 () Bool)

(declare-fun c!27504 () Bool)

(assert (=> bm!16208 (= c!27504 c!27503)))

(assert (=> bm!16208 (= call!16206 (contains!933 e!94581 (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269)))))))

(declare-fun b!145162 () Bool)

(assert (=> b!145162 (= e!94589 ((_ is Undefined!292) lt!76288))))

(declare-fun bm!16209 () Bool)

(assert (=> bm!16209 (= call!16192 (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun bm!16210 () Bool)

(declare-fun call!16209 () Bool)

(assert (=> bm!16210 (= call!16209 call!16199)))

(declare-fun b!145163 () Bool)

(assert (=> b!145163 (= e!94585 e!94594)))

(assert (=> b!145163 (= c!27501 (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145164 () Bool)

(assert (=> b!145164 (= e!94593 e!94599)))

(declare-fun res!69112 () Bool)

(assert (=> b!145164 (= res!69112 call!16209)))

(assert (=> b!145164 (=> (not res!69112) (not e!94599))))

(declare-fun b!145165 () Bool)

(declare-fun lt!76272 () Unit!4592)

(declare-fun lt!76265 () Unit!4592)

(assert (=> b!145165 (= lt!76272 lt!76265)))

(assert (=> b!145165 call!16206))

(declare-fun lemmaValidKeyInArrayIsInListMap!126 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) Int) Unit!4592)

(assert (=> b!145165 (= lt!76265 (lemmaValidKeyInArrayIsInListMap!126 (_keys!4756 newMap!16) lt!76270 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (defaultEntry!2989 newMap!16)))))

(assert (=> b!145165 (= lt!76270 (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))))))

(declare-fun lt!76278 () Unit!4592)

(declare-fun lt!76286 () Unit!4592)

(assert (=> b!145165 (= lt!76278 lt!76286)))

(assert (=> b!145165 (= call!16207 call!16200)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!68 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) (_ BitVec 64) V!3579 Int) Unit!4592)

(assert (=> b!145165 (= lt!76286 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76274 () Unit!4592)

(assert (=> b!145165 (= lt!76274 e!94595)))

(assert (=> b!145165 (= c!27499 (contains!933 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145165 (= e!94596 (tuple2!2703 true (LongMapFixedSize!1171 (defaultEntry!2989 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (_size!634 newMap!16) (_keys!4756 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))) (_vacant!634 newMap!16))))))

(declare-fun b!145166 () Bool)

(assert (=> b!145166 (= e!94601 (not call!16198))))

(declare-fun b!145167 () Bool)

(declare-fun res!69109 () Bool)

(assert (=> b!145167 (=> (not res!69109) (not e!94591))))

(assert (=> b!145167 (= res!69109 call!16209)))

(declare-fun e!94586 () Bool)

(assert (=> b!145167 (= e!94586 e!94591)))

(declare-fun b!145168 () Bool)

(declare-fun Unit!4596 () Unit!4592)

(assert (=> b!145168 (= e!94590 Unit!4596)))

(declare-fun lt!76267 () Unit!4592)

(assert (=> b!145168 (= lt!76267 call!16190)))

(assert (=> b!145168 (= lt!76266 call!16202)))

(declare-fun res!69114 () Bool)

(assert (=> b!145168 (= res!69114 ((_ is Found!292) lt!76266))))

(assert (=> b!145168 (=> (not res!69114) (not e!94588))))

(assert (=> b!145168 e!94588))

(declare-fun lt!76262 () Unit!4592)

(assert (=> b!145168 (= lt!76262 lt!76267)))

(assert (=> b!145168 false))

(declare-fun b!145169 () Bool)

(declare-fun lt!76264 () tuple2!2702)

(assert (=> b!145169 (= e!94582 (tuple2!2703 (_1!1361 lt!76264) (_2!1361 lt!76264)))))

(assert (=> b!145169 (= lt!76264 call!16194)))

(declare-fun b!145170 () Bool)

(declare-fun Unit!4597 () Unit!4592)

(assert (=> b!145170 (= e!94595 Unit!4597)))

(declare-fun lt!76279 () Unit!4592)

(assert (=> b!145170 (= lt!76279 call!16212)))

(assert (=> b!145170 (= lt!76287 call!16197)))

(assert (=> b!145170 (= c!27511 ((_ is MissingZero!292) lt!76287))))

(assert (=> b!145170 e!94586))

(declare-fun lt!76268 () Unit!4592)

(assert (=> b!145170 (= lt!76268 lt!76279)))

(assert (=> b!145170 false))

(declare-fun b!145171 () Bool)

(declare-fun c!27509 () Bool)

(assert (=> b!145171 (= c!27509 ((_ is MissingVacant!292) lt!76287))))

(assert (=> b!145171 (= e!94586 e!94593)))

(assert (= (and d!46223 c!27507) b!145163))

(assert (= (and d!46223 (not c!27507)) b!145133))

(assert (= (and b!145163 c!27501) b!145160))

(assert (= (and b!145163 (not c!27501)) b!145153))

(assert (= (or b!145160 b!145153) bm!16198))

(assert (= (or b!145160 b!145153) bm!16203))

(assert (= (or b!145160 b!145153) bm!16194))

(assert (= (and b!145133 c!27503) b!145149))

(assert (= (and b!145133 (not c!27503)) b!145141))

(assert (= (and b!145149 c!27512) b!145168))

(assert (= (and b!145149 (not c!27512)) b!145137))

(assert (= (and b!145168 res!69114) b!145146))

(assert (= (and b!145146 res!69106) b!145130))

(assert (= (and b!145137 c!27505) b!145152))

(assert (= (and b!145137 (not c!27505)) b!145151))

(assert (= (and b!145152 res!69116) b!145145))

(assert (= (and b!145145 res!69118) b!145166))

(assert (= (and b!145151 c!27506) b!145136))

(assert (= (and b!145151 (not c!27506)) b!145162))

(assert (= (and b!145136 res!69110) b!145139))

(assert (= (and b!145139 res!69115) b!145138))

(assert (= (or b!145152 b!145136) bm!16200))

(assert (= (or b!145166 b!145138) bm!16191))

(assert (= (or b!145146 bm!16200) bm!16189))

(assert (= (or b!145168 b!145137) bm!16207))

(assert (= (and b!145141 c!27502) b!145169))

(assert (= (and b!145141 (not c!27502)) b!145134))

(assert (= (and b!145134 c!27500) b!145142))

(assert (= (and b!145134 (not c!27500)) b!145165))

(assert (= (and b!145165 c!27499) b!145159))

(assert (= (and b!145165 (not c!27499)) b!145170))

(assert (= (and b!145159 res!69108) b!145144))

(assert (= (and b!145144 res!69107) b!145156))

(assert (= (and b!145170 c!27511) b!145167))

(assert (= (and b!145170 (not c!27511)) b!145171))

(assert (= (and b!145167 res!69109) b!145161))

(assert (= (and b!145161 res!69119) b!145155))

(assert (= (and b!145171 c!27509) b!145164))

(assert (= (and b!145171 (not c!27509)) b!145154))

(assert (= (and b!145164 res!69112) b!145148))

(assert (= (and b!145148 res!69111) b!145147))

(assert (= (or b!145167 b!145164) bm!16210))

(assert (= (or b!145155 b!145147) bm!16190))

(assert (= (or b!145144 bm!16210) bm!16193))

(assert (= (or b!145159 b!145170) bm!16204))

(assert (= (or b!145169 b!145142) bm!16195))

(assert (= (or b!145149 b!145165) bm!16187))

(assert (= (or bm!16191 bm!16190) bm!16201))

(assert (= (or bm!16189 bm!16193) bm!16188))

(assert (= (or b!145137 b!145170) bm!16202))

(assert (= (or bm!16207 bm!16204) bm!16209))

(assert (= (or b!145168 b!145159) bm!16196))

(assert (= (or b!145149 b!145165) bm!16208))

(assert (= (and bm!16208 c!27504) b!145150))

(assert (= (and bm!16208 (not c!27504)) b!145158))

(assert (= (or bm!16198 bm!16187) bm!16199))

(assert (= (or bm!16203 b!145158) bm!16206))

(assert (= (or bm!16194 b!145165) bm!16205))

(assert (= (and bm!16205 c!27508) b!145157))

(assert (= (and bm!16205 (not c!27508)) b!145135))

(assert (= (and d!46223 res!69117) b!145132))

(assert (= (and b!145132 c!27510) b!145143))

(assert (= (and b!145132 (not c!27510)) b!145140))

(assert (= (and b!145143 res!69113) b!145131))

(assert (= (or b!145131 b!145140) bm!16197))

(assert (= (or b!145143 b!145131 b!145140) bm!16192))

(assert (=> bm!16209 m!174911))

(declare-fun m!175087 () Bool)

(assert (=> bm!16209 m!175087))

(declare-fun m!175089 () Bool)

(assert (=> b!145139 m!175089))

(assert (=> bm!16195 m!174911))

(assert (=> bm!16195 m!174925))

(declare-fun m!175091 () Bool)

(assert (=> bm!16195 m!175091))

(declare-fun m!175093 () Bool)

(assert (=> b!145130 m!175093))

(assert (=> b!145135 m!174987))

(declare-fun m!175095 () Bool)

(assert (=> b!145145 m!175095))

(assert (=> bm!16202 m!174911))

(declare-fun m!175097 () Bool)

(assert (=> bm!16202 m!175097))

(declare-fun m!175099 () Bool)

(assert (=> bm!16205 m!175099))

(declare-fun m!175101 () Bool)

(assert (=> bm!16208 m!175101))

(declare-fun m!175103 () Bool)

(assert (=> bm!16208 m!175103))

(assert (=> b!145143 m!174911))

(declare-fun m!175105 () Bool)

(assert (=> b!145143 m!175105))

(assert (=> b!145160 m!174925))

(declare-fun m!175107 () Bool)

(assert (=> b!145160 m!175107))

(declare-fun m!175109 () Bool)

(assert (=> bm!16199 m!175109))

(declare-fun m!175111 () Bool)

(assert (=> bm!16199 m!175111))

(declare-fun m!175113 () Bool)

(assert (=> bm!16206 m!175113))

(declare-fun m!175115 () Bool)

(assert (=> b!145148 m!175115))

(declare-fun m!175117 () Bool)

(assert (=> b!145156 m!175117))

(declare-fun m!175119 () Bool)

(assert (=> d!46223 m!175119))

(assert (=> d!46223 m!174891))

(declare-fun m!175121 () Bool)

(assert (=> b!145161 m!175121))

(assert (=> bm!16197 m!174917))

(assert (=> bm!16196 m!174911))

(declare-fun m!175123 () Bool)

(assert (=> bm!16196 m!175123))

(assert (=> b!145133 m!174911))

(assert (=> b!145133 m!175087))

(declare-fun m!175125 () Bool)

(assert (=> bm!16188 m!175125))

(declare-fun m!175127 () Bool)

(assert (=> b!145131 m!175127))

(assert (=> b!145165 m!175109))

(assert (=> b!145165 m!174911))

(assert (=> b!145165 m!174925))

(declare-fun m!175129 () Bool)

(assert (=> b!145165 m!175129))

(declare-fun m!175131 () Bool)

(assert (=> b!145165 m!175131))

(assert (=> b!145165 m!174987))

(assert (=> b!145165 m!174987))

(assert (=> b!145165 m!174911))

(declare-fun m!175133 () Bool)

(assert (=> b!145165 m!175133))

(declare-fun m!175135 () Bool)

(assert (=> bm!16192 m!175135))

(assert (=> b!145153 m!174925))

(declare-fun m!175137 () Bool)

(assert (=> b!145153 m!175137))

(assert (=> bm!16201 m!174911))

(declare-fun m!175139 () Bool)

(assert (=> bm!16201 m!175139))

(assert (=> b!144851 d!46223))

(declare-fun d!46225 () Bool)

(declare-fun c!27515 () Bool)

(assert (=> d!46225 (= c!27515 ((_ is ValueCellFull!1131) (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun e!94605 () V!3579)

(assert (=> d!46225 (= (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!94605)))

(declare-fun b!145176 () Bool)

(declare-fun get!1555 (ValueCell!1131 V!3579) V!3579)

(assert (=> b!145176 (= e!94605 (get!1555 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!145177 () Bool)

(declare-fun get!1556 (ValueCell!1131 V!3579) V!3579)

(assert (=> b!145177 (= e!94605 (get!1556 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46225 c!27515) b!145176))

(assert (= (and d!46225 (not c!27515)) b!145177))

(assert (=> b!145176 m!174921))

(assert (=> b!145176 m!174923))

(declare-fun m!175141 () Bool)

(assert (=> b!145176 m!175141))

(assert (=> b!145177 m!174921))

(assert (=> b!145177 m!174923))

(declare-fun m!175143 () Bool)

(assert (=> b!145177 m!175143))

(assert (=> b!144851 d!46225))

(declare-fun mapNonEmpty!4919 () Bool)

(declare-fun mapRes!4919 () Bool)

(declare-fun tp!11705 () Bool)

(declare-fun e!94611 () Bool)

(assert (=> mapNonEmpty!4919 (= mapRes!4919 (and tp!11705 e!94611))))

(declare-fun mapRest!4919 () (Array (_ BitVec 32) ValueCell!1131))

(declare-fun mapKey!4919 () (_ BitVec 32))

(declare-fun mapValue!4919 () ValueCell!1131)

(assert (=> mapNonEmpty!4919 (= mapRest!4910 (store mapRest!4919 mapKey!4919 mapValue!4919))))

(declare-fun b!145185 () Bool)

(declare-fun e!94610 () Bool)

(assert (=> b!145185 (= e!94610 tp_is_empty!2949)))

(declare-fun condMapEmpty!4919 () Bool)

(declare-fun mapDefault!4919 () ValueCell!1131)

(assert (=> mapNonEmpty!4909 (= condMapEmpty!4919 (= mapRest!4910 ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4919)))))

(assert (=> mapNonEmpty!4909 (= tp!11689 (and e!94610 mapRes!4919))))

(declare-fun mapIsEmpty!4919 () Bool)

(assert (=> mapIsEmpty!4919 mapRes!4919))

(declare-fun b!145184 () Bool)

(assert (=> b!145184 (= e!94611 tp_is_empty!2949)))

(assert (= (and mapNonEmpty!4909 condMapEmpty!4919) mapIsEmpty!4919))

(assert (= (and mapNonEmpty!4909 (not condMapEmpty!4919)) mapNonEmpty!4919))

(assert (= (and mapNonEmpty!4919 ((_ is ValueCellFull!1131) mapValue!4919)) b!145184))

(assert (= (and mapNonEmpty!4909 ((_ is ValueCellFull!1131) mapDefault!4919)) b!145185))

(declare-fun m!175145 () Bool)

(assert (=> mapNonEmpty!4919 m!175145))

(declare-fun mapNonEmpty!4920 () Bool)

(declare-fun mapRes!4920 () Bool)

(declare-fun tp!11706 () Bool)

(declare-fun e!94613 () Bool)

(assert (=> mapNonEmpty!4920 (= mapRes!4920 (and tp!11706 e!94613))))

(declare-fun mapValue!4920 () ValueCell!1131)

(declare-fun mapRest!4920 () (Array (_ BitVec 32) ValueCell!1131))

(declare-fun mapKey!4920 () (_ BitVec 32))

(assert (=> mapNonEmpty!4920 (= mapRest!4909 (store mapRest!4920 mapKey!4920 mapValue!4920))))

(declare-fun b!145187 () Bool)

(declare-fun e!94612 () Bool)

(assert (=> b!145187 (= e!94612 tp_is_empty!2949)))

(declare-fun condMapEmpty!4920 () Bool)

(declare-fun mapDefault!4920 () ValueCell!1131)

(assert (=> mapNonEmpty!4910 (= condMapEmpty!4920 (= mapRest!4909 ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4920)))))

(assert (=> mapNonEmpty!4910 (= tp!11687 (and e!94612 mapRes!4920))))

(declare-fun mapIsEmpty!4920 () Bool)

(assert (=> mapIsEmpty!4920 mapRes!4920))

(declare-fun b!145186 () Bool)

(assert (=> b!145186 (= e!94613 tp_is_empty!2949)))

(assert (= (and mapNonEmpty!4910 condMapEmpty!4920) mapIsEmpty!4920))

(assert (= (and mapNonEmpty!4910 (not condMapEmpty!4920)) mapNonEmpty!4920))

(assert (= (and mapNonEmpty!4920 ((_ is ValueCellFull!1131) mapValue!4920)) b!145186))

(assert (= (and mapNonEmpty!4910 ((_ is ValueCellFull!1131) mapDefault!4920)) b!145187))

(declare-fun m!175147 () Bool)

(assert (=> mapNonEmpty!4920 m!175147))

(declare-fun b_lambda!6539 () Bool)

(assert (= b_lambda!6537 (or (and b!144847 b_free!3065) (and b!144848 b_free!3067 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))))) b_lambda!6539)))

(check-sat (not d!46197) (not b_lambda!6535) (not d!46213) (not b!145033) (not b!145017) (not b!144975) (not bm!16192) (not b!144924) (not bm!16130) (not b!145131) (not b!145045) (not d!46209) (not b!145029) (not bm!16195) (not bm!16197) (not b!145143) (not d!46219) (not bm!16199) (not b!145176) (not b!144980) (not b!145036) (not b!145028) (not b!144973) (not b!145133) (not bm!16129) (not d!46191) (not b!144996) tp_is_empty!2949 (not bm!16209) (not d!46199) (not b!145008) (not b!145177) (not bm!16202) (not b!144994) (not b!145009) (not bm!16206) (not bm!16208) (not b!145160) (not b!144983) (not bm!16137) (not d!46189) (not b!145165) (not b!145010) (not mapNonEmpty!4920) (not b!144977) (not d!46223) (not d!46221) (not bm!16205) (not b!144970) (not bm!16138) (not bm!16132) (not bm!16196) (not bm!16134) (not bm!16188) (not mapNonEmpty!4919) (not d!46205) (not b!145022) (not b!144974) (not b_next!3067) (not b!145153) (not b!144971) b_and!9063 (not b!145135) (not b!144995) b_and!9061 (not b_next!3065) (not bm!16201) (not b_lambda!6539) (not b!145043) (not b!145032) (not b!145031))
(check-sat b_and!9061 b_and!9063 (not b_next!3065) (not b_next!3067))
(get-model)

(declare-fun d!46227 () Bool)

(assert (=> d!46227 (= (+!177 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) lt!76280 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76291 () Unit!4592)

(declare-fun choose!898 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 V!3579 Int) Unit!4592)

(assert (=> d!46227 (= lt!76291 (choose!898 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76280 (zeroValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2835 newMap!16) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46227 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46227 (= (lemmaChangeZeroKeyThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76280 (zeroValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2835 newMap!16) (defaultEntry!2989 newMap!16)) lt!76291)))

(declare-fun bs!6119 () Bool)

(assert (= bs!6119 d!46227))

(assert (=> bs!6119 m!174925))

(declare-fun m!175149 () Bool)

(assert (=> bs!6119 m!175149))

(assert (=> bs!6119 m!174987))

(declare-fun m!175151 () Bool)

(assert (=> bs!6119 m!175151))

(declare-fun m!175153 () Bool)

(assert (=> bs!6119 m!175153))

(assert (=> bs!6119 m!174925))

(declare-fun m!175155 () Bool)

(assert (=> bs!6119 m!175155))

(assert (=> bs!6119 m!174987))

(assert (=> b!145160 d!46227))

(declare-fun d!46229 () Bool)

(assert (=> d!46229 (= (get!1556 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145177 d!46229))

(declare-fun d!46231 () Bool)

(assert (=> d!46231 (= (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!144970 d!46231))

(declare-fun d!46233 () Bool)

(declare-fun res!69120 () Bool)

(declare-fun e!94614 () Bool)

(assert (=> d!46233 (=> (not res!69120) (not e!94614))))

(assert (=> d!46233 (= res!69120 (simpleValid!98 (v!3320 (underlying!489 thiss!992))))))

(assert (=> d!46233 (= (valid!568 (v!3320 (underlying!489 thiss!992))) e!94614)))

(declare-fun b!145188 () Bool)

(declare-fun res!69121 () Bool)

(assert (=> b!145188 (=> (not res!69121) (not e!94614))))

(assert (=> b!145188 (= res!69121 (= (arrayCountValidKeys!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))) (_size!634 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!145189 () Bool)

(declare-fun res!69122 () Bool)

(assert (=> b!145189 (=> (not res!69122) (not e!94614))))

(assert (=> b!145189 (= res!69122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!145190 () Bool)

(assert (=> b!145190 (= e!94614 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 Nil!1773))))

(assert (= (and d!46233 res!69120) b!145188))

(assert (= (and b!145188 res!69121) b!145189))

(assert (= (and b!145189 res!69122) b!145190))

(declare-fun m!175157 () Bool)

(assert (=> d!46233 m!175157))

(declare-fun m!175159 () Bool)

(assert (=> b!145188 m!175159))

(declare-fun m!175161 () Bool)

(assert (=> b!145189 m!175161))

(declare-fun m!175163 () Bool)

(assert (=> b!145190 m!175163))

(assert (=> d!46189 d!46233))

(declare-fun bm!16211 () Bool)

(declare-fun call!16217 () ListLongMap!1757)

(declare-fun call!16216 () ListLongMap!1757)

(assert (=> bm!16211 (= call!16217 call!16216)))

(declare-fun b!145191 () Bool)

(declare-fun e!94618 () ListLongMap!1757)

(declare-fun call!16215 () ListLongMap!1757)

(assert (=> b!145191 (= e!94618 call!16215)))

(declare-fun b!145192 () Bool)

(declare-fun e!94619 () Bool)

(declare-fun e!94616 () Bool)

(assert (=> b!145192 (= e!94619 e!94616)))

(declare-fun res!69125 () Bool)

(declare-fun call!16220 () Bool)

(assert (=> b!145192 (= res!69125 call!16220)))

(assert (=> b!145192 (=> (not res!69125) (not e!94616))))

(declare-fun b!145193 () Bool)

(declare-fun e!94626 () ListLongMap!1757)

(assert (=> b!145193 (= e!94626 e!94618)))

(declare-fun c!27516 () Bool)

(assert (=> b!145193 (= c!27516 (and (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16212 () Bool)

(declare-fun call!16218 () Bool)

(declare-fun lt!76295 () ListLongMap!1757)

(assert (=> bm!16212 (= call!16218 (contains!933 lt!76295 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145194 () Bool)

(declare-fun e!94625 () Bool)

(assert (=> b!145194 (= e!94625 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46235 () Bool)

(declare-fun e!94627 () Bool)

(assert (=> d!46235 e!94627))

(declare-fun res!69126 () Bool)

(assert (=> d!46235 (=> (not res!69126) (not e!94627))))

(assert (=> d!46235 (= res!69126 (or (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))))

(declare-fun lt!76306 () ListLongMap!1757)

(assert (=> d!46235 (= lt!76295 lt!76306)))

(declare-fun lt!76301 () Unit!4592)

(declare-fun e!94620 () Unit!4592)

(assert (=> d!46235 (= lt!76301 e!94620)))

(declare-fun c!27518 () Bool)

(declare-fun e!94621 () Bool)

(assert (=> d!46235 (= c!27518 e!94621)))

(declare-fun res!69127 () Bool)

(assert (=> d!46235 (=> (not res!69127) (not e!94621))))

(assert (=> d!46235 (= res!69127 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46235 (= lt!76306 e!94626)))

(declare-fun c!27520 () Bool)

(assert (=> d!46235 (= c!27520 (and (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46235 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46235 (= (getCurrentListMap!560 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) lt!76295)))

(declare-fun call!16219 () ListLongMap!1757)

(declare-fun call!16214 () ListLongMap!1757)

(declare-fun bm!16213 () Bool)

(assert (=> bm!16213 (= call!16219 (+!177 (ite c!27520 call!16216 (ite c!27516 call!16217 call!16214)) (ite (or c!27520 c!27516) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 newMap!16)))))))

(declare-fun b!145195 () Bool)

(assert (=> b!145195 (= e!94621 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145196 () Bool)

(declare-fun Unit!4598 () Unit!4592)

(assert (=> b!145196 (= e!94620 Unit!4598)))

(declare-fun b!145197 () Bool)

(declare-fun lt!76309 () Unit!4592)

(assert (=> b!145197 (= e!94620 lt!76309)))

(declare-fun lt!76305 () ListLongMap!1757)

(assert (=> b!145197 (= lt!76305 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76312 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76312 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76298 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76298 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76299 () Unit!4592)

(assert (=> b!145197 (= lt!76299 (addStillContains!99 lt!76305 lt!76312 (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) lt!76298))))

(assert (=> b!145197 (contains!933 (+!177 lt!76305 (tuple2!2701 lt!76312 (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)))) lt!76298)))

(declare-fun lt!76308 () Unit!4592)

(assert (=> b!145197 (= lt!76308 lt!76299)))

(declare-fun lt!76311 () ListLongMap!1757)

(assert (=> b!145197 (= lt!76311 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76310 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76310 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76297 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76297 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76313 () Unit!4592)

(assert (=> b!145197 (= lt!76313 (addApplyDifferent!99 lt!76311 lt!76310 (minValue!2835 newMap!16) lt!76297))))

(assert (=> b!145197 (= (apply!123 (+!177 lt!76311 (tuple2!2701 lt!76310 (minValue!2835 newMap!16))) lt!76297) (apply!123 lt!76311 lt!76297))))

(declare-fun lt!76304 () Unit!4592)

(assert (=> b!145197 (= lt!76304 lt!76313)))

(declare-fun lt!76303 () ListLongMap!1757)

(assert (=> b!145197 (= lt!76303 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76307 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76307 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76302 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76302 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76300 () Unit!4592)

(assert (=> b!145197 (= lt!76300 (addApplyDifferent!99 lt!76303 lt!76307 (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) lt!76302))))

(assert (=> b!145197 (= (apply!123 (+!177 lt!76303 (tuple2!2701 lt!76307 (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)))) lt!76302) (apply!123 lt!76303 lt!76302))))

(declare-fun lt!76293 () Unit!4592)

(assert (=> b!145197 (= lt!76293 lt!76300)))

(declare-fun lt!76292 () ListLongMap!1757)

(assert (=> b!145197 (= lt!76292 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76296 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76296 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76294 () (_ BitVec 64))

(assert (=> b!145197 (= lt!76294 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!145197 (= lt!76309 (addApplyDifferent!99 lt!76292 lt!76296 (minValue!2835 newMap!16) lt!76294))))

(assert (=> b!145197 (= (apply!123 (+!177 lt!76292 (tuple2!2701 lt!76296 (minValue!2835 newMap!16))) lt!76294) (apply!123 lt!76292 lt!76294))))

(declare-fun b!145198 () Bool)

(declare-fun e!94623 () Bool)

(declare-fun e!94624 () Bool)

(assert (=> b!145198 (= e!94623 e!94624)))

(declare-fun res!69131 () Bool)

(assert (=> b!145198 (=> (not res!69131) (not e!94624))))

(assert (=> b!145198 (= res!69131 (contains!933 lt!76295 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!145198 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145199 () Bool)

(declare-fun e!94617 () Bool)

(assert (=> b!145199 (= e!94617 (= (apply!123 lt!76295 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2835 newMap!16)))))

(declare-fun b!145200 () Bool)

(declare-fun e!94622 () ListLongMap!1757)

(assert (=> b!145200 (= e!94622 call!16214)))

(declare-fun b!145201 () Bool)

(assert (=> b!145201 (= e!94626 (+!177 call!16219 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 newMap!16))))))

(declare-fun bm!16214 () Bool)

(assert (=> bm!16214 (= call!16215 call!16219)))

(declare-fun b!145202 () Bool)

(declare-fun e!94615 () Bool)

(assert (=> b!145202 (= e!94615 e!94617)))

(declare-fun res!69123 () Bool)

(assert (=> b!145202 (= res!69123 call!16218)))

(assert (=> b!145202 (=> (not res!69123) (not e!94617))))

(declare-fun bm!16215 () Bool)

(assert (=> bm!16215 (= call!16216 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))) (mask!7353 newMap!16) (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16)) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun b!145203 () Bool)

(assert (=> b!145203 (= e!94615 (not call!16218))))

(declare-fun b!145204 () Bool)

(assert (=> b!145204 (= e!94616 (= (apply!123 lt!76295 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!27507 c!27501) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2835 newMap!16))))))

(declare-fun bm!16216 () Bool)

(assert (=> bm!16216 (= call!16214 call!16217)))

(declare-fun c!27521 () Bool)

(declare-fun b!145205 () Bool)

(assert (=> b!145205 (= c!27521 (and (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!145205 (= e!94618 e!94622)))

(declare-fun b!145206 () Bool)

(declare-fun res!69124 () Bool)

(assert (=> b!145206 (=> (not res!69124) (not e!94627))))

(assert (=> b!145206 (= res!69124 e!94623)))

(declare-fun res!69130 () Bool)

(assert (=> b!145206 (=> res!69130 e!94623)))

(assert (=> b!145206 (= res!69130 (not e!94625))))

(declare-fun res!69129 () Bool)

(assert (=> b!145206 (=> (not res!69129) (not e!94625))))

(assert (=> b!145206 (= res!69129 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145207 () Bool)

(assert (=> b!145207 (= e!94624 (= (apply!123 lt!76295 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)) (get!1553 (select (arr!2333 (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!446 (defaultEntry!2989 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!145207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2608 (ite (or c!27507 c!27503) (_values!2972 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16)))))))))

(assert (=> b!145207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145208 () Bool)

(assert (=> b!145208 (= e!94622 call!16215)))

(declare-fun b!145209 () Bool)

(assert (=> b!145209 (= e!94627 e!94615)))

(declare-fun c!27519 () Bool)

(assert (=> b!145209 (= c!27519 (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16217 () Bool)

(assert (=> bm!16217 (= call!16220 (contains!933 lt!76295 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145210 () Bool)

(declare-fun res!69128 () Bool)

(assert (=> b!145210 (=> (not res!69128) (not e!94627))))

(assert (=> b!145210 (= res!69128 e!94619)))

(declare-fun c!27517 () Bool)

(assert (=> b!145210 (= c!27517 (not (= (bvand (ite (and c!27507 c!27501) lt!76280 (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!145211 () Bool)

(assert (=> b!145211 (= e!94619 (not call!16220))))

(assert (= (and d!46235 c!27520) b!145201))

(assert (= (and d!46235 (not c!27520)) b!145193))

(assert (= (and b!145193 c!27516) b!145191))

(assert (= (and b!145193 (not c!27516)) b!145205))

(assert (= (and b!145205 c!27521) b!145208))

(assert (= (and b!145205 (not c!27521)) b!145200))

(assert (= (or b!145208 b!145200) bm!16216))

(assert (= (or b!145191 bm!16216) bm!16211))

(assert (= (or b!145191 b!145208) bm!16214))

(assert (= (or b!145201 bm!16211) bm!16215))

(assert (= (or b!145201 bm!16214) bm!16213))

(assert (= (and d!46235 res!69127) b!145195))

(assert (= (and d!46235 c!27518) b!145197))

(assert (= (and d!46235 (not c!27518)) b!145196))

(assert (= (and d!46235 res!69126) b!145206))

(assert (= (and b!145206 res!69129) b!145194))

(assert (= (and b!145206 (not res!69130)) b!145198))

(assert (= (and b!145198 res!69131) b!145207))

(assert (= (and b!145206 res!69124) b!145210))

(assert (= (and b!145210 c!27517) b!145192))

(assert (= (and b!145210 (not c!27517)) b!145211))

(assert (= (and b!145192 res!69125) b!145204))

(assert (= (or b!145192 b!145211) bm!16217))

(assert (= (and b!145210 res!69128) b!145209))

(assert (= (and b!145209 c!27519) b!145202))

(assert (= (and b!145209 (not c!27519)) b!145203))

(assert (= (and b!145202 res!69123) b!145199))

(assert (= (or b!145202 b!145203) bm!16212))

(declare-fun b_lambda!6541 () Bool)

(assert (=> (not b_lambda!6541) (not b!145207)))

(declare-fun tb!2621 () Bool)

(declare-fun t!6438 () Bool)

(assert (=> (and b!144847 (= (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) (defaultEntry!2989 newMap!16)) t!6438) tb!2621))

(declare-fun result!4283 () Bool)

(assert (=> tb!2621 (= result!4283 tp_is_empty!2949)))

(assert (=> b!145207 t!6438))

(declare-fun b_and!9065 () Bool)

(assert (= b_and!9061 (and (=> t!6438 result!4283) b_and!9065)))

(declare-fun t!6440 () Bool)

(declare-fun tb!2623 () Bool)

(assert (=> (and b!144848 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 newMap!16)) t!6440) tb!2623))

(declare-fun result!4285 () Bool)

(assert (= result!4285 result!4283))

(assert (=> b!145207 t!6440))

(declare-fun b_and!9067 () Bool)

(assert (= b_and!9063 (and (=> t!6440 result!4285) b_and!9067)))

(declare-fun m!175165 () Bool)

(assert (=> b!145195 m!175165))

(assert (=> b!145195 m!175165))

(declare-fun m!175167 () Bool)

(assert (=> b!145195 m!175167))

(declare-fun m!175169 () Bool)

(assert (=> bm!16213 m!175169))

(declare-fun m!175171 () Bool)

(assert (=> b!145204 m!175171))

(declare-fun m!175173 () Bool)

(assert (=> b!145201 m!175173))

(declare-fun m!175175 () Bool)

(assert (=> b!145197 m!175175))

(declare-fun m!175177 () Bool)

(assert (=> b!145197 m!175177))

(declare-fun m!175179 () Bool)

(assert (=> b!145197 m!175179))

(declare-fun m!175181 () Bool)

(assert (=> b!145197 m!175181))

(declare-fun m!175183 () Bool)

(assert (=> b!145197 m!175183))

(declare-fun m!175185 () Bool)

(assert (=> b!145197 m!175185))

(assert (=> b!145197 m!175183))

(declare-fun m!175187 () Bool)

(assert (=> b!145197 m!175187))

(declare-fun m!175189 () Bool)

(assert (=> b!145197 m!175189))

(declare-fun m!175191 () Bool)

(assert (=> b!145197 m!175191))

(assert (=> b!145197 m!175189))

(assert (=> b!145197 m!175181))

(declare-fun m!175193 () Bool)

(assert (=> b!145197 m!175193))

(assert (=> b!145197 m!175165))

(declare-fun m!175195 () Bool)

(assert (=> b!145197 m!175195))

(declare-fun m!175197 () Bool)

(assert (=> b!145197 m!175197))

(declare-fun m!175199 () Bool)

(assert (=> b!145197 m!175199))

(declare-fun m!175201 () Bool)

(assert (=> b!145197 m!175201))

(declare-fun m!175203 () Bool)

(assert (=> b!145197 m!175203))

(assert (=> b!145197 m!175201))

(declare-fun m!175205 () Bool)

(assert (=> b!145197 m!175205))

(declare-fun m!175207 () Bool)

(assert (=> b!145199 m!175207))

(assert (=> d!46235 m!175153))

(assert (=> bm!16215 m!175199))

(declare-fun m!175209 () Bool)

(assert (=> b!145207 m!175209))

(declare-fun m!175211 () Bool)

(assert (=> b!145207 m!175211))

(declare-fun m!175213 () Bool)

(assert (=> b!145207 m!175213))

(assert (=> b!145207 m!175211))

(assert (=> b!145207 m!175165))

(assert (=> b!145207 m!175209))

(assert (=> b!145207 m!175165))

(declare-fun m!175215 () Bool)

(assert (=> b!145207 m!175215))

(assert (=> b!145198 m!175165))

(assert (=> b!145198 m!175165))

(declare-fun m!175217 () Bool)

(assert (=> b!145198 m!175217))

(declare-fun m!175219 () Bool)

(assert (=> bm!16217 m!175219))

(assert (=> b!145194 m!175165))

(assert (=> b!145194 m!175165))

(assert (=> b!145194 m!175167))

(declare-fun m!175221 () Bool)

(assert (=> bm!16212 m!175221))

(assert (=> bm!16199 d!46235))

(declare-fun d!46237 () Bool)

(declare-fun res!69132 () Bool)

(declare-fun e!94628 () Bool)

(assert (=> d!46237 (=> res!69132 e!94628)))

(assert (=> d!46237 (= res!69132 ((_ is Nil!1773) (t!6429 lt!76096)))))

(assert (=> d!46237 (= (noDuplicate!55 (t!6429 lt!76096)) e!94628)))

(declare-fun b!145212 () Bool)

(declare-fun e!94629 () Bool)

(assert (=> b!145212 (= e!94628 e!94629)))

(declare-fun res!69133 () Bool)

(assert (=> b!145212 (=> (not res!69133) (not e!94629))))

(assert (=> b!145212 (= res!69133 (not (contains!932 (t!6429 (t!6429 lt!76096)) (h!2380 (t!6429 lt!76096)))))))

(declare-fun b!145213 () Bool)

(assert (=> b!145213 (= e!94629 (noDuplicate!55 (t!6429 (t!6429 lt!76096))))))

(assert (= (and d!46237 (not res!69132)) b!145212))

(assert (= (and b!145212 res!69133) b!145213))

(declare-fun m!175223 () Bool)

(assert (=> b!145212 m!175223))

(declare-fun m!175225 () Bool)

(assert (=> b!145213 m!175225))

(assert (=> b!145029 d!46237))

(declare-fun d!46239 () Bool)

(declare-fun get!1557 (Option!184) V!3579)

(assert (=> d!46239 (= (apply!123 lt!76170 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1557 (getValueByKey!178 (toList!894 lt!76170) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6120 () Bool)

(assert (= bs!6120 d!46239))

(declare-fun m!175227 () Bool)

(assert (=> bs!6120 m!175227))

(assert (=> bs!6120 m!175227))

(declare-fun m!175229 () Bool)

(assert (=> bs!6120 m!175229))

(assert (=> b!144975 d!46239))

(declare-fun d!46241 () Bool)

(declare-fun res!69134 () Bool)

(declare-fun e!94630 () Bool)

(assert (=> d!46241 (=> res!69134 e!94630)))

(assert (=> d!46241 (= res!69134 (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46241 (= (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!94630)))

(declare-fun b!145214 () Bool)

(declare-fun e!94631 () Bool)

(assert (=> b!145214 (= e!94630 e!94631)))

(declare-fun res!69135 () Bool)

(assert (=> b!145214 (=> (not res!69135) (not e!94631))))

(assert (=> b!145214 (= res!69135 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!145215 () Bool)

(assert (=> b!145215 (= e!94631 (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!46241 (not res!69134)) b!145214))

(assert (= (and b!145214 res!69135) b!145215))

(declare-fun m!175231 () Bool)

(assert (=> d!46241 m!175231))

(assert (=> b!145215 m!174911))

(declare-fun m!175233 () Bool)

(assert (=> b!145215 m!175233))

(assert (=> b!145017 d!46241))

(declare-fun d!46243 () Bool)

(declare-fun res!69146 () Bool)

(declare-fun e!94634 () Bool)

(assert (=> d!46243 (=> (not res!69146) (not e!94634))))

(assert (=> d!46243 (= res!69146 (validMask!0 (mask!7353 newMap!16)))))

(assert (=> d!46243 (= (simpleValid!98 newMap!16) e!94634)))

(declare-fun b!145225 () Bool)

(declare-fun res!69145 () Bool)

(assert (=> b!145225 (=> (not res!69145) (not e!94634))))

(declare-fun size!2611 (LongMapFixedSize!1170) (_ BitVec 32))

(assert (=> b!145225 (= res!69145 (bvsge (size!2611 newMap!16) (_size!634 newMap!16)))))

(declare-fun b!145224 () Bool)

(declare-fun res!69147 () Bool)

(assert (=> b!145224 (=> (not res!69147) (not e!94634))))

(assert (=> b!145224 (= res!69147 (and (= (size!2608 (_values!2972 newMap!16)) (bvadd (mask!7353 newMap!16) #b00000000000000000000000000000001)) (= (size!2607 (_keys!4756 newMap!16)) (size!2608 (_values!2972 newMap!16))) (bvsge (_size!634 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!634 newMap!16) (bvadd (mask!7353 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!145227 () Bool)

(assert (=> b!145227 (= e!94634 (and (bvsge (extraKeys!2736 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2736 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!634 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!145226 () Bool)

(declare-fun res!69144 () Bool)

(assert (=> b!145226 (=> (not res!69144) (not e!94634))))

(assert (=> b!145226 (= res!69144 (= (size!2611 newMap!16) (bvadd (_size!634 newMap!16) (bvsdiv (bvadd (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!46243 res!69146) b!145224))

(assert (= (and b!145224 res!69147) b!145225))

(assert (= (and b!145225 res!69145) b!145226))

(assert (= (and b!145226 res!69144) b!145227))

(assert (=> d!46243 m!175153))

(declare-fun m!175235 () Bool)

(assert (=> b!145225 m!175235))

(assert (=> b!145226 m!175235))

(assert (=> d!46205 d!46243))

(declare-fun e!94643 () SeekEntryResult!292)

(declare-fun b!145240 () Bool)

(declare-fun lt!76322 () SeekEntryResult!292)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4938 (_ BitVec 32)) SeekEntryResult!292)

(assert (=> b!145240 (= e!94643 (seekKeyOrZeroReturnVacant!0 (x!16524 lt!76322) (index!3336 lt!76322) (index!3336 lt!76322) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun b!145241 () Bool)

(declare-fun c!27530 () Bool)

(declare-fun lt!76320 () (_ BitVec 64))

(assert (=> b!145241 (= c!27530 (= lt!76320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94642 () SeekEntryResult!292)

(assert (=> b!145241 (= e!94642 e!94643)))

(declare-fun lt!76321 () SeekEntryResult!292)

(declare-fun d!46245 () Bool)

(assert (=> d!46245 (and (or ((_ is Undefined!292) lt!76321) (not ((_ is Found!292) lt!76321)) (and (bvsge (index!3335 lt!76321) #b00000000000000000000000000000000) (bvslt (index!3335 lt!76321) (size!2607 (_keys!4756 newMap!16))))) (or ((_ is Undefined!292) lt!76321) ((_ is Found!292) lt!76321) (not ((_ is MissingZero!292) lt!76321)) (and (bvsge (index!3334 lt!76321) #b00000000000000000000000000000000) (bvslt (index!3334 lt!76321) (size!2607 (_keys!4756 newMap!16))))) (or ((_ is Undefined!292) lt!76321) ((_ is Found!292) lt!76321) ((_ is MissingZero!292) lt!76321) (not ((_ is MissingVacant!292) lt!76321)) (and (bvsge (index!3337 lt!76321) #b00000000000000000000000000000000) (bvslt (index!3337 lt!76321) (size!2607 (_keys!4756 newMap!16))))) (or ((_ is Undefined!292) lt!76321) (ite ((_ is Found!292) lt!76321) (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76321)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (ite ((_ is MissingZero!292) lt!76321) (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3334 lt!76321)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!292) lt!76321) (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3337 lt!76321)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!94641 () SeekEntryResult!292)

(assert (=> d!46245 (= lt!76321 e!94641)))

(declare-fun c!27529 () Bool)

(assert (=> d!46245 (= c!27529 (and ((_ is Intermediate!292) lt!76322) (undefined!1104 lt!76322)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4938 (_ BitVec 32)) SeekEntryResult!292)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!46245 (= lt!76322 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (mask!7353 newMap!16)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(assert (=> d!46245 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46245 (= (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)) lt!76321)))

(declare-fun b!145242 () Bool)

(assert (=> b!145242 (= e!94643 (MissingZero!292 (index!3336 lt!76322)))))

(declare-fun b!145243 () Bool)

(assert (=> b!145243 (= e!94641 e!94642)))

(assert (=> b!145243 (= lt!76320 (select (arr!2332 (_keys!4756 newMap!16)) (index!3336 lt!76322)))))

(declare-fun c!27528 () Bool)

(assert (=> b!145243 (= c!27528 (= lt!76320 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145244 () Bool)

(assert (=> b!145244 (= e!94642 (Found!292 (index!3336 lt!76322)))))

(declare-fun b!145245 () Bool)

(assert (=> b!145245 (= e!94641 Undefined!292)))

(assert (= (and d!46245 c!27529) b!145245))

(assert (= (and d!46245 (not c!27529)) b!145243))

(assert (= (and b!145243 c!27528) b!145244))

(assert (= (and b!145243 (not c!27528)) b!145241))

(assert (= (and b!145241 c!27530) b!145242))

(assert (= (and b!145241 (not c!27530)) b!145240))

(assert (=> b!145240 m!174911))

(declare-fun m!175237 () Bool)

(assert (=> b!145240 m!175237))

(assert (=> d!46245 m!174911))

(declare-fun m!175239 () Bool)

(assert (=> d!46245 m!175239))

(declare-fun m!175241 () Bool)

(assert (=> d!46245 m!175241))

(assert (=> d!46245 m!175153))

(assert (=> d!46245 m!175239))

(assert (=> d!46245 m!174911))

(declare-fun m!175243 () Bool)

(assert (=> d!46245 m!175243))

(declare-fun m!175245 () Bool)

(assert (=> d!46245 m!175245))

(declare-fun m!175247 () Bool)

(assert (=> d!46245 m!175247))

(declare-fun m!175249 () Bool)

(assert (=> b!145243 m!175249))

(assert (=> bm!16209 d!46245))

(declare-fun d!46247 () Bool)

(declare-fun c!27533 () Bool)

(assert (=> d!46247 (= c!27533 ((_ is Nil!1773) lt!76096))))

(declare-fun e!94646 () (InoxSet (_ BitVec 64)))

(assert (=> d!46247 (= (content!140 lt!76096) e!94646)))

(declare-fun b!145250 () Bool)

(assert (=> b!145250 (= e!94646 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!145251 () Bool)

(assert (=> b!145251 (= e!94646 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!2380 lt!76096) true) (content!140 (t!6429 lt!76096))))))

(assert (= (and d!46247 c!27533) b!145250))

(assert (= (and d!46247 (not c!27533)) b!145251))

(declare-fun m!175251 () Bool)

(assert (=> b!145251 m!175251))

(declare-fun m!175253 () Bool)

(assert (=> b!145251 m!175253))

(assert (=> d!46191 d!46247))

(declare-fun b!145268 () Bool)

(declare-fun e!94655 () Bool)

(declare-fun e!94657 () Bool)

(assert (=> b!145268 (= e!94655 e!94657)))

(declare-fun res!69159 () Bool)

(declare-fun call!16226 () Bool)

(assert (=> b!145268 (= res!69159 call!16226)))

(assert (=> b!145268 (=> (not res!69159) (not e!94657))))

(declare-fun b!145269 () Bool)

(declare-fun lt!76327 () SeekEntryResult!292)

(assert (=> b!145269 (and (bvsge (index!3334 lt!76327) #b00000000000000000000000000000000) (bvslt (index!3334 lt!76327) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun res!69157 () Bool)

(assert (=> b!145269 (= res!69157 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3334 lt!76327)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145269 (=> (not res!69157) (not e!94657))))

(declare-fun b!145270 () Bool)

(declare-fun res!69158 () Bool)

(declare-fun e!94658 () Bool)

(assert (=> b!145270 (=> (not res!69158) (not e!94658))))

(assert (=> b!145270 (= res!69158 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3337 lt!76327)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145270 (and (bvsge (index!3337 lt!76327) #b00000000000000000000000000000000) (bvslt (index!3337 lt!76327) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145271 () Bool)

(declare-fun res!69156 () Bool)

(assert (=> b!145271 (=> (not res!69156) (not e!94658))))

(assert (=> b!145271 (= res!69156 call!16226)))

(declare-fun e!94656 () Bool)

(assert (=> b!145271 (= e!94656 e!94658)))

(declare-fun c!27538 () Bool)

(declare-fun bm!16222 () Bool)

(assert (=> bm!16222 (= call!16226 (inRange!0 (ite c!27538 (index!3334 lt!76327) (index!3337 lt!76327)) (mask!7353 newMap!16)))))

(declare-fun b!145272 () Bool)

(assert (=> b!145272 (= e!94655 e!94656)))

(declare-fun c!27539 () Bool)

(assert (=> b!145272 (= c!27539 ((_ is MissingVacant!292) lt!76327))))

(declare-fun b!145273 () Bool)

(assert (=> b!145273 (= e!94656 ((_ is Undefined!292) lt!76327))))

(declare-fun d!46249 () Bool)

(assert (=> d!46249 e!94655))

(assert (=> d!46249 (= c!27538 ((_ is MissingZero!292) lt!76327))))

(assert (=> d!46249 (= lt!76327 (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun lt!76328 () Unit!4592)

(declare-fun choose!899 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) Int) Unit!4592)

(assert (=> d!46249 (= lt!76328 (choose!899 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46249 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46249 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)) lt!76328)))

(declare-fun b!145274 () Bool)

(declare-fun call!16225 () Bool)

(assert (=> b!145274 (= e!94657 (not call!16225))))

(declare-fun b!145275 () Bool)

(assert (=> b!145275 (= e!94658 (not call!16225))))

(declare-fun bm!16223 () Bool)

(assert (=> bm!16223 (= call!16225 (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(assert (= (and d!46249 c!27538) b!145268))

(assert (= (and d!46249 (not c!27538)) b!145272))

(assert (= (and b!145268 res!69159) b!145269))

(assert (= (and b!145269 res!69157) b!145274))

(assert (= (and b!145272 c!27539) b!145271))

(assert (= (and b!145272 (not c!27539)) b!145273))

(assert (= (and b!145271 res!69156) b!145270))

(assert (= (and b!145270 res!69158) b!145275))

(assert (= (or b!145268 b!145271) bm!16222))

(assert (= (or b!145274 b!145275) bm!16223))

(assert (=> bm!16223 m!174911))

(assert (=> bm!16223 m!175139))

(declare-fun m!175255 () Bool)

(assert (=> bm!16222 m!175255))

(declare-fun m!175257 () Bool)

(assert (=> b!145269 m!175257))

(declare-fun m!175259 () Bool)

(assert (=> b!145270 m!175259))

(assert (=> d!46249 m!174911))

(assert (=> d!46249 m!175087))

(assert (=> d!46249 m!174911))

(declare-fun m!175261 () Bool)

(assert (=> d!46249 m!175261))

(assert (=> d!46249 m!175153))

(assert (=> bm!16202 d!46249))

(assert (=> d!46219 d!46247))

(declare-fun d!46251 () Bool)

(assert (=> d!46251 (= (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (and (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!145009 d!46251))

(declare-fun d!46253 () Bool)

(assert (=> d!46253 (= (apply!123 lt!76178 lt!76177) (get!1557 (getValueByKey!178 (toList!894 lt!76178) lt!76177)))))

(declare-fun bs!6121 () Bool)

(assert (= bs!6121 d!46253))

(declare-fun m!175263 () Bool)

(assert (=> bs!6121 m!175263))

(assert (=> bs!6121 m!175263))

(declare-fun m!175265 () Bool)

(assert (=> bs!6121 m!175265))

(assert (=> b!144973 d!46253))

(declare-fun d!46255 () Bool)

(assert (=> d!46255 (= (apply!123 (+!177 lt!76167 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76169) (apply!123 lt!76167 lt!76169))))

(declare-fun lt!76331 () Unit!4592)

(declare-fun choose!900 (ListLongMap!1757 (_ BitVec 64) V!3579 (_ BitVec 64)) Unit!4592)

(assert (=> d!46255 (= lt!76331 (choose!900 lt!76167 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76169))))

(declare-fun e!94661 () Bool)

(assert (=> d!46255 e!94661))

(declare-fun res!69162 () Bool)

(assert (=> d!46255 (=> (not res!69162) (not e!94661))))

(assert (=> d!46255 (= res!69162 (contains!933 lt!76167 lt!76169))))

(assert (=> d!46255 (= (addApplyDifferent!99 lt!76167 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76169) lt!76331)))

(declare-fun b!145279 () Bool)

(assert (=> b!145279 (= e!94661 (not (= lt!76169 lt!76171)))))

(assert (= (and d!46255 res!69162) b!145279))

(assert (=> d!46255 m!175027))

(assert (=> d!46255 m!175025))

(assert (=> d!46255 m!175025))

(assert (=> d!46255 m!175029))

(declare-fun m!175267 () Bool)

(assert (=> d!46255 m!175267))

(declare-fun m!175269 () Bool)

(assert (=> d!46255 m!175269))

(assert (=> b!144973 d!46255))

(declare-fun d!46257 () Bool)

(assert (=> d!46257 (= (apply!123 (+!177 lt!76178 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76177) (get!1557 (getValueByKey!178 (toList!894 (+!177 lt!76178 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76177)))))

(declare-fun bs!6122 () Bool)

(assert (= bs!6122 d!46257))

(declare-fun m!175271 () Bool)

(assert (=> bs!6122 m!175271))

(assert (=> bs!6122 m!175271))

(declare-fun m!175273 () Bool)

(assert (=> bs!6122 m!175273))

(assert (=> b!144973 d!46257))

(declare-fun d!46259 () Bool)

(assert (=> d!46259 (= (apply!123 lt!76186 lt!76172) (get!1557 (getValueByKey!178 (toList!894 lt!76186) lt!76172)))))

(declare-fun bs!6123 () Bool)

(assert (= bs!6123 d!46259))

(declare-fun m!175275 () Bool)

(assert (=> bs!6123 m!175275))

(assert (=> bs!6123 m!175275))

(declare-fun m!175277 () Bool)

(assert (=> bs!6123 m!175277))

(assert (=> b!144973 d!46259))

(declare-fun d!46261 () Bool)

(assert (=> d!46261 (= (apply!123 (+!177 lt!76186 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76172) (apply!123 lt!76186 lt!76172))))

(declare-fun lt!76332 () Unit!4592)

(assert (=> d!46261 (= lt!76332 (choose!900 lt!76186 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76172))))

(declare-fun e!94662 () Bool)

(assert (=> d!46261 e!94662))

(declare-fun res!69163 () Bool)

(assert (=> d!46261 (=> (not res!69163) (not e!94662))))

(assert (=> d!46261 (= res!69163 (contains!933 lt!76186 lt!76172))))

(assert (=> d!46261 (= (addApplyDifferent!99 lt!76186 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76172) lt!76332)))

(declare-fun b!145280 () Bool)

(assert (=> b!145280 (= e!94662 (not (= lt!76172 lt!76185)))))

(assert (= (and d!46261 res!69163) b!145280))

(assert (=> d!46261 m!174999))

(assert (=> d!46261 m!175013))

(assert (=> d!46261 m!175013))

(assert (=> d!46261 m!175015))

(declare-fun m!175279 () Bool)

(assert (=> d!46261 m!175279))

(declare-fun m!175281 () Bool)

(assert (=> d!46261 m!175281))

(assert (=> b!144973 d!46261))

(declare-fun d!46263 () Bool)

(declare-fun e!94665 () Bool)

(assert (=> d!46263 e!94665))

(declare-fun res!69169 () Bool)

(assert (=> d!46263 (=> (not res!69169) (not e!94665))))

(declare-fun lt!76342 () ListLongMap!1757)

(assert (=> d!46263 (= res!69169 (contains!933 lt!76342 (_1!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lt!76343 () List!1777)

(assert (=> d!46263 (= lt!76342 (ListLongMap!1758 lt!76343))))

(declare-fun lt!76344 () Unit!4592)

(declare-fun lt!76341 () Unit!4592)

(assert (=> d!46263 (= lt!76344 lt!76341)))

(assert (=> d!46263 (= (getValueByKey!178 lt!76343 (_1!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!94 (List!1777 (_ BitVec 64) V!3579) Unit!4592)

(assert (=> d!46263 (= lt!76341 (lemmaContainsTupThenGetReturnValue!94 lt!76343 (_1!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun insertStrictlySorted!96 (List!1777 (_ BitVec 64) V!3579) List!1777)

(assert (=> d!46263 (= lt!76343 (insertStrictlySorted!96 (toList!894 lt!76180) (_1!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46263 (= (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76342)))

(declare-fun b!145285 () Bool)

(declare-fun res!69168 () Bool)

(assert (=> b!145285 (=> (not res!69168) (not e!94665))))

(assert (=> b!145285 (= res!69168 (= (getValueByKey!178 (toList!894 lt!76342) (_1!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun b!145286 () Bool)

(declare-fun contains!936 (List!1777 tuple2!2700) Bool)

(assert (=> b!145286 (= e!94665 (contains!936 (toList!894 lt!76342) (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(assert (= (and d!46263 res!69169) b!145285))

(assert (= (and b!145285 res!69168) b!145286))

(declare-fun m!175283 () Bool)

(assert (=> d!46263 m!175283))

(declare-fun m!175285 () Bool)

(assert (=> d!46263 m!175285))

(declare-fun m!175287 () Bool)

(assert (=> d!46263 m!175287))

(declare-fun m!175289 () Bool)

(assert (=> d!46263 m!175289))

(declare-fun m!175291 () Bool)

(assert (=> b!145285 m!175291))

(declare-fun m!175293 () Bool)

(assert (=> b!145286 m!175293))

(assert (=> b!144973 d!46263))

(declare-fun d!46265 () Bool)

(declare-fun e!94666 () Bool)

(assert (=> d!46265 e!94666))

(declare-fun res!69171 () Bool)

(assert (=> d!46265 (=> (not res!69171) (not e!94666))))

(declare-fun lt!76346 () ListLongMap!1757)

(assert (=> d!46265 (= res!69171 (contains!933 lt!76346 (_1!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lt!76347 () List!1777)

(assert (=> d!46265 (= lt!76346 (ListLongMap!1758 lt!76347))))

(declare-fun lt!76348 () Unit!4592)

(declare-fun lt!76345 () Unit!4592)

(assert (=> d!46265 (= lt!76348 lt!76345)))

(assert (=> d!46265 (= (getValueByKey!178 lt!76347 (_1!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46265 (= lt!76345 (lemmaContainsTupThenGetReturnValue!94 lt!76347 (_1!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46265 (= lt!76347 (insertStrictlySorted!96 (toList!894 lt!76186) (_1!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46265 (= (+!177 lt!76186 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76346)))

(declare-fun b!145287 () Bool)

(declare-fun res!69170 () Bool)

(assert (=> b!145287 (=> (not res!69170) (not e!94666))))

(assert (=> b!145287 (= res!69170 (= (getValueByKey!178 (toList!894 lt!76346) (_1!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun b!145288 () Bool)

(assert (=> b!145288 (= e!94666 (contains!936 (toList!894 lt!76346) (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(assert (= (and d!46265 res!69171) b!145287))

(assert (= (and b!145287 res!69170) b!145288))

(declare-fun m!175295 () Bool)

(assert (=> d!46265 m!175295))

(declare-fun m!175297 () Bool)

(assert (=> d!46265 m!175297))

(declare-fun m!175299 () Bool)

(assert (=> d!46265 m!175299))

(declare-fun m!175301 () Bool)

(assert (=> d!46265 m!175301))

(declare-fun m!175303 () Bool)

(assert (=> b!145287 m!175303))

(declare-fun m!175305 () Bool)

(assert (=> b!145288 m!175305))

(assert (=> b!144973 d!46265))

(declare-fun d!46267 () Bool)

(assert (=> d!46267 (contains!933 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76173)))

(declare-fun lt!76351 () Unit!4592)

(declare-fun choose!901 (ListLongMap!1757 (_ BitVec 64) V!3579 (_ BitVec 64)) Unit!4592)

(assert (=> d!46267 (= lt!76351 (choose!901 lt!76180 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76173))))

(assert (=> d!46267 (contains!933 lt!76180 lt!76173)))

(assert (=> d!46267 (= (addStillContains!99 lt!76180 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76173) lt!76351)))

(declare-fun bs!6124 () Bool)

(assert (= bs!6124 d!46267))

(assert (=> bs!6124 m!175007))

(assert (=> bs!6124 m!175007))

(assert (=> bs!6124 m!175009))

(declare-fun m!175307 () Bool)

(assert (=> bs!6124 m!175307))

(declare-fun m!175309 () Bool)

(assert (=> bs!6124 m!175309))

(assert (=> b!144973 d!46267))

(declare-fun d!46269 () Bool)

(assert (=> d!46269 (= (apply!123 (+!177 lt!76186 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76172) (get!1557 (getValueByKey!178 (toList!894 (+!177 lt!76186 (tuple2!2701 lt!76185 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76172)))))

(declare-fun bs!6125 () Bool)

(assert (= bs!6125 d!46269))

(declare-fun m!175311 () Bool)

(assert (=> bs!6125 m!175311))

(assert (=> bs!6125 m!175311))

(declare-fun m!175313 () Bool)

(assert (=> bs!6125 m!175313))

(assert (=> b!144973 d!46269))

(declare-fun d!46271 () Bool)

(assert (=> d!46271 (= (apply!123 (+!177 lt!76178 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76177) (apply!123 lt!76178 lt!76177))))

(declare-fun lt!76352 () Unit!4592)

(assert (=> d!46271 (= lt!76352 (choose!900 lt!76178 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76177))))

(declare-fun e!94667 () Bool)

(assert (=> d!46271 e!94667))

(declare-fun res!69172 () Bool)

(assert (=> d!46271 (=> (not res!69172) (not e!94667))))

(assert (=> d!46271 (= res!69172 (contains!933 lt!76178 lt!76177))))

(assert (=> d!46271 (= (addApplyDifferent!99 lt!76178 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) lt!76177) lt!76352)))

(declare-fun b!145290 () Bool)

(assert (=> b!145290 (= e!94667 (not (= lt!76177 lt!76182)))))

(assert (= (and d!46271 res!69172) b!145290))

(assert (=> d!46271 m!175021))

(assert (=> d!46271 m!175005))

(assert (=> d!46271 m!175005))

(assert (=> d!46271 m!175017))

(declare-fun m!175315 () Bool)

(assert (=> d!46271 m!175315))

(declare-fun m!175317 () Bool)

(assert (=> d!46271 m!175317))

(assert (=> b!144973 d!46271))

(declare-fun d!46273 () Bool)

(assert (=> d!46273 (= (apply!123 (+!177 lt!76167 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76169) (get!1557 (getValueByKey!178 (toList!894 (+!177 lt!76167 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76169)))))

(declare-fun bs!6126 () Bool)

(assert (= bs!6126 d!46273))

(declare-fun m!175319 () Bool)

(assert (=> bs!6126 m!175319))

(assert (=> bs!6126 m!175319))

(declare-fun m!175321 () Bool)

(assert (=> bs!6126 m!175321))

(assert (=> b!144973 d!46273))

(declare-fun b!145315 () Bool)

(declare-fun e!94688 () ListLongMap!1757)

(declare-fun e!94685 () ListLongMap!1757)

(assert (=> b!145315 (= e!94688 e!94685)))

(declare-fun c!27551 () Bool)

(assert (=> b!145315 (= c!27551 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145316 () Bool)

(declare-fun e!94687 () Bool)

(assert (=> b!145316 (= e!94687 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!145316 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!145317 () Bool)

(assert (=> b!145317 (= e!94688 (ListLongMap!1758 Nil!1774))))

(declare-fun b!145318 () Bool)

(declare-fun e!94683 () Bool)

(declare-fun lt!76370 () ListLongMap!1757)

(assert (=> b!145318 (= e!94683 (= lt!76370 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!145319 () Bool)

(declare-fun res!69183 () Bool)

(declare-fun e!94686 () Bool)

(assert (=> b!145319 (=> (not res!69183) (not e!94686))))

(assert (=> b!145319 (= res!69183 (not (contains!933 lt!76370 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!145320 () Bool)

(declare-fun e!94684 () Bool)

(declare-fun e!94682 () Bool)

(assert (=> b!145320 (= e!94684 e!94682)))

(assert (=> b!145320 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun res!69184 () Bool)

(assert (=> b!145320 (= res!69184 (contains!933 lt!76370 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!145320 (=> (not res!69184) (not e!94682))))

(declare-fun b!145321 () Bool)

(declare-fun lt!76369 () Unit!4592)

(declare-fun lt!76368 () Unit!4592)

(assert (=> b!145321 (= lt!76369 lt!76368)))

(declare-fun lt!76371 () ListLongMap!1757)

(declare-fun lt!76372 () V!3579)

(declare-fun lt!76373 () (_ BitVec 64))

(declare-fun lt!76367 () (_ BitVec 64))

(assert (=> b!145321 (not (contains!933 (+!177 lt!76371 (tuple2!2701 lt!76367 lt!76372)) lt!76373))))

(declare-fun addStillNotContains!69 (ListLongMap!1757 (_ BitVec 64) V!3579 (_ BitVec 64)) Unit!4592)

(assert (=> b!145321 (= lt!76368 (addStillNotContains!69 lt!76371 lt!76367 lt!76372 lt!76373))))

(assert (=> b!145321 (= lt!76373 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!145321 (= lt!76372 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!145321 (= lt!76367 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!16229 () ListLongMap!1757)

(assert (=> b!145321 (= lt!76371 call!16229)))

(assert (=> b!145321 (= e!94685 (+!177 call!16229 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!46275 () Bool)

(assert (=> d!46275 e!94686))

(declare-fun res!69181 () Bool)

(assert (=> d!46275 (=> (not res!69181) (not e!94686))))

(assert (=> d!46275 (= res!69181 (not (contains!933 lt!76370 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!46275 (= lt!76370 e!94688)))

(declare-fun c!27548 () Bool)

(assert (=> d!46275 (= c!27548 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46275 (validMask!0 (mask!7353 (v!3320 (underlying!489 thiss!992))))))

(assert (=> d!46275 (= (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) lt!76370)))

(declare-fun b!145322 () Bool)

(assert (=> b!145322 (= e!94684 e!94683)))

(declare-fun c!27549 () Bool)

(assert (=> b!145322 (= c!27549 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun bm!16226 () Bool)

(assert (=> bm!16226 (= call!16229 (getCurrentListMapNoExtraKeys!144 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))))))

(declare-fun b!145323 () Bool)

(assert (=> b!145323 (= e!94686 e!94684)))

(declare-fun c!27550 () Bool)

(assert (=> b!145323 (= c!27550 e!94687)))

(declare-fun res!69182 () Bool)

(assert (=> b!145323 (=> (not res!69182) (not e!94687))))

(assert (=> b!145323 (= res!69182 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(declare-fun b!145324 () Bool)

(declare-fun isEmpty!429 (ListLongMap!1757) Bool)

(assert (=> b!145324 (= e!94683 (isEmpty!429 lt!76370))))

(declare-fun b!145325 () Bool)

(assert (=> b!145325 (= e!94685 call!16229)))

(declare-fun b!145326 () Bool)

(assert (=> b!145326 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> b!145326 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2608 (_values!2972 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> b!145326 (= e!94682 (= (apply!123 lt!76370 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!46275 c!27548) b!145317))

(assert (= (and d!46275 (not c!27548)) b!145315))

(assert (= (and b!145315 c!27551) b!145321))

(assert (= (and b!145315 (not c!27551)) b!145325))

(assert (= (or b!145321 b!145325) bm!16226))

(assert (= (and d!46275 res!69181) b!145319))

(assert (= (and b!145319 res!69183) b!145323))

(assert (= (and b!145323 res!69182) b!145316))

(assert (= (and b!145323 c!27550) b!145320))

(assert (= (and b!145323 (not c!27550)) b!145322))

(assert (= (and b!145320 res!69184) b!145326))

(assert (= (and b!145322 c!27549) b!145318))

(assert (= (and b!145322 (not c!27549)) b!145324))

(declare-fun b_lambda!6543 () Bool)

(assert (=> (not b_lambda!6543) (not b!145321)))

(assert (=> b!145321 t!6426))

(declare-fun b_and!9069 () Bool)

(assert (= b_and!9065 (and (=> t!6426 result!4269) b_and!9069)))

(assert (=> b!145321 t!6428))

(declare-fun b_and!9071 () Bool)

(assert (= b_and!9067 (and (=> t!6428 result!4273) b_and!9071)))

(declare-fun b_lambda!6545 () Bool)

(assert (=> (not b_lambda!6545) (not b!145326)))

(assert (=> b!145326 t!6426))

(declare-fun b_and!9073 () Bool)

(assert (= b_and!9069 (and (=> t!6426 result!4269) b_and!9073)))

(assert (=> b!145326 t!6428))

(declare-fun b_and!9075 () Bool)

(assert (= b_and!9071 (and (=> t!6428 result!4273) b_and!9075)))

(declare-fun m!175323 () Bool)

(assert (=> b!145321 m!175323))

(declare-fun m!175325 () Bool)

(assert (=> b!145321 m!175325))

(declare-fun m!175327 () Bool)

(assert (=> b!145321 m!175327))

(assert (=> b!145321 m!174923))

(assert (=> b!145321 m!175035))

(assert (=> b!145321 m!175035))

(assert (=> b!145321 m!174923))

(assert (=> b!145321 m!175037))

(assert (=> b!145321 m!174989))

(declare-fun m!175329 () Bool)

(assert (=> b!145321 m!175329))

(assert (=> b!145321 m!175323))

(assert (=> b!145320 m!174989))

(assert (=> b!145320 m!174989))

(declare-fun m!175331 () Bool)

(assert (=> b!145320 m!175331))

(declare-fun m!175333 () Bool)

(assert (=> b!145319 m!175333))

(assert (=> b!145326 m!174923))

(assert (=> b!145326 m!175035))

(assert (=> b!145326 m!174989))

(declare-fun m!175335 () Bool)

(assert (=> b!145326 m!175335))

(assert (=> b!145326 m!175035))

(assert (=> b!145326 m!174923))

(assert (=> b!145326 m!175037))

(assert (=> b!145326 m!174989))

(declare-fun m!175337 () Bool)

(assert (=> b!145318 m!175337))

(assert (=> bm!16226 m!175337))

(declare-fun m!175339 () Bool)

(assert (=> b!145324 m!175339))

(assert (=> b!145316 m!174989))

(assert (=> b!145316 m!174989))

(assert (=> b!145316 m!174991))

(assert (=> b!145315 m!174989))

(assert (=> b!145315 m!174989))

(assert (=> b!145315 m!174991))

(declare-fun m!175341 () Bool)

(assert (=> d!46275 m!175341))

(assert (=> d!46275 m!175033))

(assert (=> b!144973 d!46275))

(declare-fun d!46277 () Bool)

(declare-fun e!94689 () Bool)

(assert (=> d!46277 e!94689))

(declare-fun res!69186 () Bool)

(assert (=> d!46277 (=> (not res!69186) (not e!94689))))

(declare-fun lt!76375 () ListLongMap!1757)

(assert (=> d!46277 (= res!69186 (contains!933 lt!76375 (_1!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lt!76376 () List!1777)

(assert (=> d!46277 (= lt!76375 (ListLongMap!1758 lt!76376))))

(declare-fun lt!76377 () Unit!4592)

(declare-fun lt!76374 () Unit!4592)

(assert (=> d!46277 (= lt!76377 lt!76374)))

(assert (=> d!46277 (= (getValueByKey!178 lt!76376 (_1!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46277 (= lt!76374 (lemmaContainsTupThenGetReturnValue!94 lt!76376 (_1!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46277 (= lt!76376 (insertStrictlySorted!96 (toList!894 lt!76178) (_1!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46277 (= (+!177 lt!76178 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76375)))

(declare-fun b!145327 () Bool)

(declare-fun res!69185 () Bool)

(assert (=> b!145327 (=> (not res!69185) (not e!94689))))

(assert (=> b!145327 (= res!69185 (= (getValueByKey!178 (toList!894 lt!76375) (_1!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun b!145328 () Bool)

(assert (=> b!145328 (= e!94689 (contains!936 (toList!894 lt!76375) (tuple2!2701 lt!76182 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(assert (= (and d!46277 res!69186) b!145327))

(assert (= (and b!145327 res!69185) b!145328))

(declare-fun m!175343 () Bool)

(assert (=> d!46277 m!175343))

(declare-fun m!175345 () Bool)

(assert (=> d!46277 m!175345))

(declare-fun m!175347 () Bool)

(assert (=> d!46277 m!175347))

(declare-fun m!175349 () Bool)

(assert (=> d!46277 m!175349))

(declare-fun m!175351 () Bool)

(assert (=> b!145327 m!175351))

(declare-fun m!175353 () Bool)

(assert (=> b!145328 m!175353))

(assert (=> b!144973 d!46277))

(declare-fun d!46279 () Bool)

(declare-fun e!94690 () Bool)

(assert (=> d!46279 e!94690))

(declare-fun res!69188 () Bool)

(assert (=> d!46279 (=> (not res!69188) (not e!94690))))

(declare-fun lt!76379 () ListLongMap!1757)

(assert (=> d!46279 (= res!69188 (contains!933 lt!76379 (_1!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lt!76380 () List!1777)

(assert (=> d!46279 (= lt!76379 (ListLongMap!1758 lt!76380))))

(declare-fun lt!76381 () Unit!4592)

(declare-fun lt!76378 () Unit!4592)

(assert (=> d!46279 (= lt!76381 lt!76378)))

(assert (=> d!46279 (= (getValueByKey!178 lt!76380 (_1!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46279 (= lt!76378 (lemmaContainsTupThenGetReturnValue!94 lt!76380 (_1!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46279 (= lt!76380 (insertStrictlySorted!96 (toList!894 lt!76167) (_1!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46279 (= (+!177 lt!76167 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76379)))

(declare-fun b!145329 () Bool)

(declare-fun res!69187 () Bool)

(assert (=> b!145329 (=> (not res!69187) (not e!94690))))

(assert (=> b!145329 (= res!69187 (= (getValueByKey!178 (toList!894 lt!76379) (_1!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun b!145330 () Bool)

(assert (=> b!145330 (= e!94690 (contains!936 (toList!894 lt!76379) (tuple2!2701 lt!76171 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(assert (= (and d!46279 res!69188) b!145329))

(assert (= (and b!145329 res!69187) b!145330))

(declare-fun m!175355 () Bool)

(assert (=> d!46279 m!175355))

(declare-fun m!175357 () Bool)

(assert (=> d!46279 m!175357))

(declare-fun m!175359 () Bool)

(assert (=> d!46279 m!175359))

(declare-fun m!175361 () Bool)

(assert (=> d!46279 m!175361))

(declare-fun m!175363 () Bool)

(assert (=> b!145329 m!175363))

(declare-fun m!175365 () Bool)

(assert (=> b!145330 m!175365))

(assert (=> b!144973 d!46279))

(declare-fun d!46281 () Bool)

(assert (=> d!46281 (= (apply!123 lt!76167 lt!76169) (get!1557 (getValueByKey!178 (toList!894 lt!76167) lt!76169)))))

(declare-fun bs!6127 () Bool)

(assert (= bs!6127 d!46281))

(declare-fun m!175367 () Bool)

(assert (=> bs!6127 m!175367))

(assert (=> bs!6127 m!175367))

(declare-fun m!175369 () Bool)

(assert (=> bs!6127 m!175369))

(assert (=> b!144973 d!46281))

(declare-fun d!46283 () Bool)

(declare-fun e!94692 () Bool)

(assert (=> d!46283 e!94692))

(declare-fun res!69189 () Bool)

(assert (=> d!46283 (=> res!69189 e!94692)))

(declare-fun lt!76383 () Bool)

(assert (=> d!46283 (= res!69189 (not lt!76383))))

(declare-fun lt!76385 () Bool)

(assert (=> d!46283 (= lt!76383 lt!76385)))

(declare-fun lt!76384 () Unit!4592)

(declare-fun e!94691 () Unit!4592)

(assert (=> d!46283 (= lt!76384 e!94691)))

(declare-fun c!27552 () Bool)

(assert (=> d!46283 (= c!27552 lt!76385)))

(assert (=> d!46283 (= lt!76385 (containsKey!182 (toList!894 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76173))))

(assert (=> d!46283 (= (contains!933 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76173) lt!76383)))

(declare-fun b!145331 () Bool)

(declare-fun lt!76382 () Unit!4592)

(assert (=> b!145331 (= e!94691 lt!76382)))

(assert (=> b!145331 (= lt!76382 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76173))))

(assert (=> b!145331 (isDefined!132 (getValueByKey!178 (toList!894 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76173))))

(declare-fun b!145332 () Bool)

(declare-fun Unit!4599 () Unit!4592)

(assert (=> b!145332 (= e!94691 Unit!4599)))

(declare-fun b!145333 () Bool)

(assert (=> b!145333 (= e!94692 (isDefined!132 (getValueByKey!178 (toList!894 (+!177 lt!76180 (tuple2!2701 lt!76187 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76173)))))

(assert (= (and d!46283 c!27552) b!145331))

(assert (= (and d!46283 (not c!27552)) b!145332))

(assert (= (and d!46283 (not res!69189)) b!145333))

(declare-fun m!175371 () Bool)

(assert (=> d!46283 m!175371))

(declare-fun m!175373 () Bool)

(assert (=> b!145331 m!175373))

(declare-fun m!175375 () Bool)

(assert (=> b!145331 m!175375))

(assert (=> b!145331 m!175375))

(declare-fun m!175377 () Bool)

(assert (=> b!145331 m!175377))

(assert (=> b!145333 m!175375))

(assert (=> b!145333 m!175375))

(assert (=> b!145333 m!175377))

(assert (=> b!144973 d!46283))

(assert (=> b!144971 d!46231))

(declare-fun d!46285 () Bool)

(declare-fun e!94694 () Bool)

(assert (=> d!46285 e!94694))

(declare-fun res!69190 () Bool)

(assert (=> d!46285 (=> res!69190 e!94694)))

(declare-fun lt!76387 () Bool)

(assert (=> d!46285 (= res!69190 (not lt!76387))))

(declare-fun lt!76389 () Bool)

(assert (=> d!46285 (= lt!76387 lt!76389)))

(declare-fun lt!76388 () Unit!4592)

(declare-fun e!94693 () Unit!4592)

(assert (=> d!46285 (= lt!76388 e!94693)))

(declare-fun c!27553 () Bool)

(assert (=> d!46285 (= c!27553 lt!76389)))

(assert (=> d!46285 (= lt!76389 (containsKey!182 (toList!894 e!94581) (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269)))))))

(assert (=> d!46285 (= (contains!933 e!94581 (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269)))) lt!76387)))

(declare-fun b!145334 () Bool)

(declare-fun lt!76386 () Unit!4592)

(assert (=> b!145334 (= e!94693 lt!76386)))

(assert (=> b!145334 (= lt!76386 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 e!94581) (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269)))))))

(assert (=> b!145334 (isDefined!132 (getValueByKey!178 (toList!894 e!94581) (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269)))))))

(declare-fun b!145335 () Bool)

(declare-fun Unit!4600 () Unit!4592)

(assert (=> b!145335 (= e!94693 Unit!4600)))

(declare-fun b!145336 () Bool)

(assert (=> b!145336 (= e!94694 (isDefined!132 (getValueByKey!178 (toList!894 e!94581) (ite c!27503 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269))))))))

(assert (= (and d!46285 c!27553) b!145334))

(assert (= (and d!46285 (not c!27553)) b!145335))

(assert (= (and d!46285 (not res!69190)) b!145336))

(declare-fun m!175379 () Bool)

(assert (=> d!46285 m!175379))

(declare-fun m!175381 () Bool)

(assert (=> b!145334 m!175381))

(declare-fun m!175383 () Bool)

(assert (=> b!145334 m!175383))

(assert (=> b!145334 m!175383))

(declare-fun m!175385 () Bool)

(assert (=> b!145334 m!175385))

(assert (=> b!145336 m!175383))

(assert (=> b!145336 m!175383))

(assert (=> b!145336 m!175385))

(assert (=> bm!16208 d!46285))

(declare-fun d!46287 () Bool)

(declare-fun isEmpty!430 (Option!184) Bool)

(assert (=> d!46287 (= (isDefined!132 (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))) (not (isEmpty!430 (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))))

(declare-fun bs!6128 () Bool)

(assert (= bs!6128 d!46287))

(assert (=> bs!6128 m!175083))

(declare-fun m!175387 () Bool)

(assert (=> bs!6128 m!175387))

(assert (=> b!145045 d!46287))

(declare-fun b!145347 () Bool)

(declare-fun e!94700 () Option!184)

(assert (=> b!145347 (= e!94700 (getValueByKey!178 (t!6430 (toList!894 lt!76099)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145345 () Bool)

(declare-fun e!94699 () Option!184)

(assert (=> b!145345 (= e!94699 (Some!183 (_2!1360 (h!2381 (toList!894 lt!76099)))))))

(declare-fun b!145348 () Bool)

(assert (=> b!145348 (= e!94700 None!182)))

(declare-fun c!27558 () Bool)

(declare-fun d!46289 () Bool)

(assert (=> d!46289 (= c!27558 (and ((_ is Cons!1773) (toList!894 lt!76099)) (= (_1!1360 (h!2381 (toList!894 lt!76099))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (=> d!46289 (= (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) e!94699)))

(declare-fun b!145346 () Bool)

(assert (=> b!145346 (= e!94699 e!94700)))

(declare-fun c!27559 () Bool)

(assert (=> b!145346 (= c!27559 (and ((_ is Cons!1773) (toList!894 lt!76099)) (not (= (_1!1360 (h!2381 (toList!894 lt!76099))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))))

(assert (= (and d!46289 c!27558) b!145345))

(assert (= (and d!46289 (not c!27558)) b!145346))

(assert (= (and b!145346 c!27559) b!145347))

(assert (= (and b!145346 (not c!27559)) b!145348))

(assert (=> b!145347 m!174911))

(declare-fun m!175389 () Bool)

(assert (=> b!145347 m!175389))

(assert (=> b!145045 d!46289))

(declare-fun d!46291 () Bool)

(declare-fun e!94703 () Bool)

(assert (=> d!46291 e!94703))

(declare-fun c!27562 () Bool)

(assert (=> d!46291 (= c!27562 (and (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!46291 true))

(declare-fun _$29!174 () Unit!4592)

(assert (=> d!46291 (= (choose!897 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (_values!2972 (v!3320 (underlying!489 thiss!992))) (mask!7353 (v!3320 (underlying!489 thiss!992))) (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) (zeroValue!2835 (v!3320 (underlying!489 thiss!992))) (minValue!2835 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992)))) _$29!174)))

(declare-fun b!145353 () Bool)

(assert (=> b!145353 (= e!94703 (arrayContainsKey!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!145354 () Bool)

(assert (=> b!145354 (= e!94703 (ite (= (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2736 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46291 c!27562) b!145353))

(assert (= (and d!46291 (not c!27562)) b!145354))

(assert (=> b!145353 m!174911))

(assert (=> b!145353 m!174915))

(assert (=> d!46213 d!46291))

(declare-fun d!46293 () Bool)

(assert (=> d!46293 (= (validMask!0 (mask!7353 (v!3320 (underlying!489 thiss!992)))) (and (or (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000001111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000011111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000001111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000011111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000001111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000011111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000001111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000011111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000000111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000001111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000011111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000000111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000001111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000011111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000000111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000001111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000011111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000000111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000001111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000011111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00000111111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00001111111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00011111111111111111111111111111) (= (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7353 (v!3320 (underlying!489 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!46213 d!46293))

(declare-fun d!46295 () Bool)

(declare-fun e!94704 () Bool)

(assert (=> d!46295 e!94704))

(declare-fun res!69192 () Bool)

(assert (=> d!46295 (=> (not res!69192) (not e!94704))))

(declare-fun lt!76391 () ListLongMap!1757)

(assert (=> d!46295 (= res!69192 (contains!933 lt!76391 (_1!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!76392 () List!1777)

(assert (=> d!46295 (= lt!76391 (ListLongMap!1758 lt!76392))))

(declare-fun lt!76393 () Unit!4592)

(declare-fun lt!76390 () Unit!4592)

(assert (=> d!46295 (= lt!76393 lt!76390)))

(assert (=> d!46295 (= (getValueByKey!178 lt!76392 (_1!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!183 (_2!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46295 (= lt!76390 (lemmaContainsTupThenGetReturnValue!94 lt!76392 (_1!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46295 (= lt!76392 (insertStrictlySorted!96 (toList!894 e!94602) (_1!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!46295 (= (+!177 e!94602 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!76391)))

(declare-fun b!145355 () Bool)

(declare-fun res!69191 () Bool)

(assert (=> b!145355 (=> (not res!69191) (not e!94704))))

(assert (=> b!145355 (= res!69191 (= (getValueByKey!178 (toList!894 lt!76391) (_1!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!183 (_2!1360 (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!145356 () Bool)

(assert (=> b!145356 (= e!94704 (contains!936 (toList!894 lt!76391) (ite c!27507 (ite c!27501 (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!46295 res!69192) b!145355))

(assert (= (and b!145355 res!69191) b!145356))

(declare-fun m!175391 () Bool)

(assert (=> d!46295 m!175391))

(declare-fun m!175393 () Bool)

(assert (=> d!46295 m!175393))

(declare-fun m!175395 () Bool)

(assert (=> d!46295 m!175395))

(declare-fun m!175397 () Bool)

(assert (=> d!46295 m!175397))

(declare-fun m!175399 () Bool)

(assert (=> b!145355 m!175399))

(declare-fun m!175401 () Bool)

(assert (=> b!145356 m!175401))

(assert (=> bm!16205 d!46295))

(declare-fun d!46297 () Bool)

(declare-fun e!94707 () Bool)

(assert (=> d!46297 e!94707))

(declare-fun res!69195 () Bool)

(assert (=> d!46297 (=> (not res!69195) (not e!94707))))

(assert (=> d!46297 (= res!69195 (and (bvsge (index!3335 lt!76269) #b00000000000000000000000000000000) (bvslt (index!3335 lt!76269) (size!2607 (_keys!4756 newMap!16)))))))

(declare-fun lt!76396 () Unit!4592)

(declare-fun choose!902 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) Int) Unit!4592)

(assert (=> d!46297 (= lt!76396 (choose!902 (_keys!4756 newMap!16) lt!76270 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46297 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46297 (= (lemmaValidKeyInArrayIsInListMap!126 (_keys!4756 newMap!16) lt!76270 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (defaultEntry!2989 newMap!16)) lt!76396)))

(declare-fun b!145359 () Bool)

(assert (=> b!145359 (= e!94707 (contains!933 (getCurrentListMap!560 (_keys!4756 newMap!16) lt!76270 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76269))))))

(assert (= (and d!46297 res!69195) b!145359))

(declare-fun m!175403 () Bool)

(assert (=> d!46297 m!175403))

(assert (=> d!46297 m!175153))

(declare-fun m!175405 () Bool)

(assert (=> b!145359 m!175405))

(assert (=> b!145359 m!175101))

(assert (=> b!145359 m!175405))

(assert (=> b!145359 m!175101))

(declare-fun m!175407 () Bool)

(assert (=> b!145359 m!175407))

(assert (=> b!145165 d!46297))

(declare-fun d!46299 () Bool)

(declare-fun e!94710 () Bool)

(assert (=> d!46299 e!94710))

(declare-fun res!69198 () Bool)

(assert (=> d!46299 (=> (not res!69198) (not e!94710))))

(assert (=> d!46299 (= res!69198 (and (bvsge (index!3335 lt!76269) #b00000000000000000000000000000000) (bvslt (index!3335 lt!76269) (size!2608 (_values!2972 newMap!16)))))))

(declare-fun lt!76399 () Unit!4592)

(declare-fun choose!903 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) (_ BitVec 64) V!3579 Int) Unit!4592)

(assert (=> d!46299 (= lt!76399 (choose!903 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46299 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46299 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (index!3335 lt!76269) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)) lt!76399)))

(declare-fun b!145362 () Bool)

(assert (=> b!145362 (= e!94710 (= (+!177 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!560 (_keys!4756 newMap!16) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (index!3335 lt!76269) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16))))))

(assert (= (and d!46299 res!69198) b!145362))

(assert (=> d!46299 m!174911))

(assert (=> d!46299 m!174925))

(declare-fun m!175409 () Bool)

(assert (=> d!46299 m!175409))

(assert (=> d!46299 m!175153))

(assert (=> b!145362 m!174987))

(assert (=> b!145362 m!174987))

(declare-fun m!175411 () Bool)

(assert (=> b!145362 m!175411))

(assert (=> b!145362 m!175109))

(declare-fun m!175413 () Bool)

(assert (=> b!145362 m!175413))

(assert (=> b!145165 d!46299))

(declare-fun d!46301 () Bool)

(declare-fun e!94712 () Bool)

(assert (=> d!46301 e!94712))

(declare-fun res!69199 () Bool)

(assert (=> d!46301 (=> res!69199 e!94712)))

(declare-fun lt!76401 () Bool)

(assert (=> d!46301 (= res!69199 (not lt!76401))))

(declare-fun lt!76403 () Bool)

(assert (=> d!46301 (= lt!76401 lt!76403)))

(declare-fun lt!76402 () Unit!4592)

(declare-fun e!94711 () Unit!4592)

(assert (=> d!46301 (= lt!76402 e!94711)))

(declare-fun c!27563 () Bool)

(assert (=> d!46301 (= c!27563 lt!76403)))

(assert (=> d!46301 (= lt!76403 (containsKey!182 (toList!894 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46301 (= (contains!933 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) lt!76401)))

(declare-fun b!145363 () Bool)

(declare-fun lt!76400 () Unit!4592)

(assert (=> b!145363 (= e!94711 lt!76400)))

(assert (=> b!145363 (= lt!76400 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145363 (isDefined!132 (getValueByKey!178 (toList!894 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145364 () Bool)

(declare-fun Unit!4601 () Unit!4592)

(assert (=> b!145364 (= e!94711 Unit!4601)))

(declare-fun b!145365 () Bool)

(assert (=> b!145365 (= e!94712 (isDefined!132 (getValueByKey!178 (toList!894 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (= (and d!46301 c!27563) b!145363))

(assert (= (and d!46301 (not c!27563)) b!145364))

(assert (= (and d!46301 (not res!69199)) b!145365))

(assert (=> d!46301 m!174911))

(declare-fun m!175415 () Bool)

(assert (=> d!46301 m!175415))

(assert (=> b!145363 m!174911))

(declare-fun m!175417 () Bool)

(assert (=> b!145363 m!175417))

(assert (=> b!145363 m!174911))

(declare-fun m!175419 () Bool)

(assert (=> b!145363 m!175419))

(assert (=> b!145363 m!175419))

(declare-fun m!175421 () Bool)

(assert (=> b!145363 m!175421))

(assert (=> b!145365 m!174911))

(assert (=> b!145365 m!175419))

(assert (=> b!145365 m!175419))

(assert (=> b!145365 m!175421))

(assert (=> b!145165 d!46301))

(declare-fun bm!16227 () Bool)

(declare-fun call!16233 () ListLongMap!1757)

(declare-fun call!16232 () ListLongMap!1757)

(assert (=> bm!16227 (= call!16233 call!16232)))

(declare-fun b!145366 () Bool)

(declare-fun e!94716 () ListLongMap!1757)

(declare-fun call!16231 () ListLongMap!1757)

(assert (=> b!145366 (= e!94716 call!16231)))

(declare-fun b!145367 () Bool)

(declare-fun e!94717 () Bool)

(declare-fun e!94714 () Bool)

(assert (=> b!145367 (= e!94717 e!94714)))

(declare-fun res!69202 () Bool)

(declare-fun call!16236 () Bool)

(assert (=> b!145367 (= res!69202 call!16236)))

(assert (=> b!145367 (=> (not res!69202) (not e!94714))))

(declare-fun b!145368 () Bool)

(declare-fun e!94724 () ListLongMap!1757)

(assert (=> b!145368 (= e!94724 e!94716)))

(declare-fun c!27564 () Bool)

(assert (=> b!145368 (= c!27564 (and (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16228 () Bool)

(declare-fun call!16234 () Bool)

(declare-fun lt!76407 () ListLongMap!1757)

(assert (=> bm!16228 (= call!16234 (contains!933 lt!76407 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145369 () Bool)

(declare-fun e!94723 () Bool)

(assert (=> b!145369 (= e!94723 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46303 () Bool)

(declare-fun e!94725 () Bool)

(assert (=> d!46303 e!94725))

(declare-fun res!69203 () Bool)

(assert (=> d!46303 (=> (not res!69203) (not e!94725))))

(assert (=> d!46303 (= res!69203 (or (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))))

(declare-fun lt!76418 () ListLongMap!1757)

(assert (=> d!46303 (= lt!76407 lt!76418)))

(declare-fun lt!76413 () Unit!4592)

(declare-fun e!94718 () Unit!4592)

(assert (=> d!46303 (= lt!76413 e!94718)))

(declare-fun c!27566 () Bool)

(declare-fun e!94719 () Bool)

(assert (=> d!46303 (= c!27566 e!94719)))

(declare-fun res!69204 () Bool)

(assert (=> d!46303 (=> (not res!69204) (not e!94719))))

(assert (=> d!46303 (= res!69204 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46303 (= lt!76418 e!94724)))

(declare-fun c!27568 () Bool)

(assert (=> d!46303 (= c!27568 (and (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46303 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46303 (= (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) lt!76407)))

(declare-fun call!16235 () ListLongMap!1757)

(declare-fun bm!16229 () Bool)

(declare-fun call!16230 () ListLongMap!1757)

(assert (=> bm!16229 (= call!16235 (+!177 (ite c!27568 call!16232 (ite c!27564 call!16233 call!16230)) (ite (or c!27568 c!27564) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 newMap!16)) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 newMap!16)))))))

(declare-fun b!145370 () Bool)

(assert (=> b!145370 (= e!94719 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145371 () Bool)

(declare-fun Unit!4602 () Unit!4592)

(assert (=> b!145371 (= e!94718 Unit!4602)))

(declare-fun b!145372 () Bool)

(declare-fun lt!76421 () Unit!4592)

(assert (=> b!145372 (= e!94718 lt!76421)))

(declare-fun lt!76417 () ListLongMap!1757)

(assert (=> b!145372 (= lt!76417 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76424 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76424 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76410 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76410 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76411 () Unit!4592)

(assert (=> b!145372 (= lt!76411 (addStillContains!99 lt!76417 lt!76424 (zeroValue!2835 newMap!16) lt!76410))))

(assert (=> b!145372 (contains!933 (+!177 lt!76417 (tuple2!2701 lt!76424 (zeroValue!2835 newMap!16))) lt!76410)))

(declare-fun lt!76420 () Unit!4592)

(assert (=> b!145372 (= lt!76420 lt!76411)))

(declare-fun lt!76423 () ListLongMap!1757)

(assert (=> b!145372 (= lt!76423 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76422 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76422 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76409 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76409 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76425 () Unit!4592)

(assert (=> b!145372 (= lt!76425 (addApplyDifferent!99 lt!76423 lt!76422 (minValue!2835 newMap!16) lt!76409))))

(assert (=> b!145372 (= (apply!123 (+!177 lt!76423 (tuple2!2701 lt!76422 (minValue!2835 newMap!16))) lt!76409) (apply!123 lt!76423 lt!76409))))

(declare-fun lt!76416 () Unit!4592)

(assert (=> b!145372 (= lt!76416 lt!76425)))

(declare-fun lt!76415 () ListLongMap!1757)

(assert (=> b!145372 (= lt!76415 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76419 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76419 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76414 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76414 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76412 () Unit!4592)

(assert (=> b!145372 (= lt!76412 (addApplyDifferent!99 lt!76415 lt!76419 (zeroValue!2835 newMap!16) lt!76414))))

(assert (=> b!145372 (= (apply!123 (+!177 lt!76415 (tuple2!2701 lt!76419 (zeroValue!2835 newMap!16))) lt!76414) (apply!123 lt!76415 lt!76414))))

(declare-fun lt!76405 () Unit!4592)

(assert (=> b!145372 (= lt!76405 lt!76412)))

(declare-fun lt!76404 () ListLongMap!1757)

(assert (=> b!145372 (= lt!76404 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76408 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76408 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76406 () (_ BitVec 64))

(assert (=> b!145372 (= lt!76406 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!145372 (= lt!76421 (addApplyDifferent!99 lt!76404 lt!76408 (minValue!2835 newMap!16) lt!76406))))

(assert (=> b!145372 (= (apply!123 (+!177 lt!76404 (tuple2!2701 lt!76408 (minValue!2835 newMap!16))) lt!76406) (apply!123 lt!76404 lt!76406))))

(declare-fun b!145373 () Bool)

(declare-fun e!94721 () Bool)

(declare-fun e!94722 () Bool)

(assert (=> b!145373 (= e!94721 e!94722)))

(declare-fun res!69208 () Bool)

(assert (=> b!145373 (=> (not res!69208) (not e!94722))))

(assert (=> b!145373 (= res!69208 (contains!933 lt!76407 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!145373 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145374 () Bool)

(declare-fun e!94715 () Bool)

(assert (=> b!145374 (= e!94715 (= (apply!123 lt!76407 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2835 newMap!16)))))

(declare-fun b!145375 () Bool)

(declare-fun e!94720 () ListLongMap!1757)

(assert (=> b!145375 (= e!94720 call!16230)))

(declare-fun b!145376 () Bool)

(assert (=> b!145376 (= e!94724 (+!177 call!16235 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 newMap!16))))))

(declare-fun bm!16230 () Bool)

(assert (=> bm!16230 (= call!16231 call!16235)))

(declare-fun b!145377 () Bool)

(declare-fun e!94713 () Bool)

(assert (=> b!145377 (= e!94713 e!94715)))

(declare-fun res!69200 () Bool)

(assert (=> b!145377 (= res!69200 call!16234)))

(assert (=> b!145377 (=> (not res!69200) (not e!94715))))

(declare-fun bm!16231 () Bool)

(assert (=> bm!16231 (= call!16232 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun b!145378 () Bool)

(assert (=> b!145378 (= e!94713 (not call!16234))))

(declare-fun b!145379 () Bool)

(assert (=> b!145379 (= e!94714 (= (apply!123 lt!76407 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2835 newMap!16)))))

(declare-fun bm!16232 () Bool)

(assert (=> bm!16232 (= call!16230 call!16233)))

(declare-fun b!145380 () Bool)

(declare-fun c!27569 () Bool)

(assert (=> b!145380 (= c!27569 (and (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!145380 (= e!94716 e!94720)))

(declare-fun b!145381 () Bool)

(declare-fun res!69201 () Bool)

(assert (=> b!145381 (=> (not res!69201) (not e!94725))))

(assert (=> b!145381 (= res!69201 e!94721)))

(declare-fun res!69207 () Bool)

(assert (=> b!145381 (=> res!69207 e!94721)))

(assert (=> b!145381 (= res!69207 (not e!94723))))

(declare-fun res!69206 () Bool)

(assert (=> b!145381 (=> (not res!69206) (not e!94723))))

(assert (=> b!145381 (= res!69206 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145382 () Bool)

(assert (=> b!145382 (= e!94722 (= (apply!123 lt!76407 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)) (get!1553 (select (arr!2333 (_values!2972 newMap!16)) #b00000000000000000000000000000000) (dynLambda!446 (defaultEntry!2989 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!145382 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2608 (_values!2972 newMap!16))))))

(assert (=> b!145382 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145383 () Bool)

(assert (=> b!145383 (= e!94720 call!16231)))

(declare-fun b!145384 () Bool)

(assert (=> b!145384 (= e!94725 e!94713)))

(declare-fun c!27567 () Bool)

(assert (=> b!145384 (= c!27567 (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16233 () Bool)

(assert (=> bm!16233 (= call!16236 (contains!933 lt!76407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145385 () Bool)

(declare-fun res!69205 () Bool)

(assert (=> b!145385 (=> (not res!69205) (not e!94725))))

(assert (=> b!145385 (= res!69205 e!94717)))

(declare-fun c!27565 () Bool)

(assert (=> b!145385 (= c!27565 (not (= (bvand (extraKeys!2736 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!145386 () Bool)

(assert (=> b!145386 (= e!94717 (not call!16236))))

(assert (= (and d!46303 c!27568) b!145376))

(assert (= (and d!46303 (not c!27568)) b!145368))

(assert (= (and b!145368 c!27564) b!145366))

(assert (= (and b!145368 (not c!27564)) b!145380))

(assert (= (and b!145380 c!27569) b!145383))

(assert (= (and b!145380 (not c!27569)) b!145375))

(assert (= (or b!145383 b!145375) bm!16232))

(assert (= (or b!145366 bm!16232) bm!16227))

(assert (= (or b!145366 b!145383) bm!16230))

(assert (= (or b!145376 bm!16227) bm!16231))

(assert (= (or b!145376 bm!16230) bm!16229))

(assert (= (and d!46303 res!69204) b!145370))

(assert (= (and d!46303 c!27566) b!145372))

(assert (= (and d!46303 (not c!27566)) b!145371))

(assert (= (and d!46303 res!69203) b!145381))

(assert (= (and b!145381 res!69206) b!145369))

(assert (= (and b!145381 (not res!69207)) b!145373))

(assert (= (and b!145373 res!69208) b!145382))

(assert (= (and b!145381 res!69201) b!145385))

(assert (= (and b!145385 c!27565) b!145367))

(assert (= (and b!145385 (not c!27565)) b!145386))

(assert (= (and b!145367 res!69202) b!145379))

(assert (= (or b!145367 b!145386) bm!16233))

(assert (= (and b!145385 res!69205) b!145384))

(assert (= (and b!145384 c!27567) b!145377))

(assert (= (and b!145384 (not c!27567)) b!145378))

(assert (= (and b!145377 res!69200) b!145374))

(assert (= (or b!145377 b!145378) bm!16228))

(declare-fun b_lambda!6547 () Bool)

(assert (=> (not b_lambda!6547) (not b!145382)))

(assert (=> b!145382 t!6438))

(declare-fun b_and!9077 () Bool)

(assert (= b_and!9073 (and (=> t!6438 result!4283) b_and!9077)))

(assert (=> b!145382 t!6440))

(declare-fun b_and!9079 () Bool)

(assert (= b_and!9075 (and (=> t!6440 result!4285) b_and!9079)))

(assert (=> b!145370 m!175165))

(assert (=> b!145370 m!175165))

(assert (=> b!145370 m!175167))

(declare-fun m!175423 () Bool)

(assert (=> bm!16229 m!175423))

(declare-fun m!175425 () Bool)

(assert (=> b!145379 m!175425))

(declare-fun m!175427 () Bool)

(assert (=> b!145376 m!175427))

(declare-fun m!175429 () Bool)

(assert (=> b!145372 m!175429))

(declare-fun m!175431 () Bool)

(assert (=> b!145372 m!175431))

(declare-fun m!175433 () Bool)

(assert (=> b!145372 m!175433))

(declare-fun m!175435 () Bool)

(assert (=> b!145372 m!175435))

(declare-fun m!175437 () Bool)

(assert (=> b!145372 m!175437))

(declare-fun m!175439 () Bool)

(assert (=> b!145372 m!175439))

(assert (=> b!145372 m!175437))

(declare-fun m!175441 () Bool)

(assert (=> b!145372 m!175441))

(declare-fun m!175443 () Bool)

(assert (=> b!145372 m!175443))

(declare-fun m!175445 () Bool)

(assert (=> b!145372 m!175445))

(assert (=> b!145372 m!175443))

(assert (=> b!145372 m!175435))

(declare-fun m!175447 () Bool)

(assert (=> b!145372 m!175447))

(assert (=> b!145372 m!175165))

(declare-fun m!175449 () Bool)

(assert (=> b!145372 m!175449))

(declare-fun m!175451 () Bool)

(assert (=> b!145372 m!175451))

(declare-fun m!175453 () Bool)

(assert (=> b!145372 m!175453))

(declare-fun m!175455 () Bool)

(assert (=> b!145372 m!175455))

(declare-fun m!175457 () Bool)

(assert (=> b!145372 m!175457))

(assert (=> b!145372 m!175455))

(declare-fun m!175459 () Bool)

(assert (=> b!145372 m!175459))

(declare-fun m!175461 () Bool)

(assert (=> b!145374 m!175461))

(assert (=> d!46303 m!175153))

(assert (=> bm!16231 m!175453))

(declare-fun m!175463 () Bool)

(assert (=> b!145382 m!175463))

(assert (=> b!145382 m!175211))

(declare-fun m!175465 () Bool)

(assert (=> b!145382 m!175465))

(assert (=> b!145382 m!175211))

(assert (=> b!145382 m!175165))

(assert (=> b!145382 m!175463))

(assert (=> b!145382 m!175165))

(declare-fun m!175467 () Bool)

(assert (=> b!145382 m!175467))

(assert (=> b!145373 m!175165))

(assert (=> b!145373 m!175165))

(declare-fun m!175469 () Bool)

(assert (=> b!145373 m!175469))

(declare-fun m!175471 () Bool)

(assert (=> bm!16233 m!175471))

(assert (=> b!145369 m!175165))

(assert (=> b!145369 m!175165))

(assert (=> b!145369 m!175167))

(declare-fun m!175473 () Bool)

(assert (=> bm!16228 m!175473))

(assert (=> b!145165 d!46303))

(declare-fun d!46305 () Bool)

(assert (=> d!46305 (isDefined!132 (getValueByKey!178 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun lt!76428 () Unit!4592)

(declare-fun choose!904 (List!1777 (_ BitVec 64)) Unit!4592)

(assert (=> d!46305 (= lt!76428 (choose!904 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun e!94728 () Bool)

(assert (=> d!46305 e!94728))

(declare-fun res!69211 () Bool)

(assert (=> d!46305 (=> (not res!69211) (not e!94728))))

(declare-fun isStrictlySorted!323 (List!1777) Bool)

(assert (=> d!46305 (= res!69211 (isStrictlySorted!323 (toList!894 lt!76099)))))

(assert (=> d!46305 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) lt!76428)))

(declare-fun b!145389 () Bool)

(assert (=> b!145389 (= e!94728 (containsKey!182 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (= (and d!46305 res!69211) b!145389))

(assert (=> d!46305 m!174911))

(assert (=> d!46305 m!175083))

(assert (=> d!46305 m!175083))

(assert (=> d!46305 m!175085))

(assert (=> d!46305 m!174911))

(declare-fun m!175475 () Bool)

(assert (=> d!46305 m!175475))

(declare-fun m!175477 () Bool)

(assert (=> d!46305 m!175477))

(assert (=> b!145389 m!174911))

(assert (=> b!145389 m!175079))

(assert (=> b!145043 d!46305))

(assert (=> b!145043 d!46287))

(assert (=> b!145043 d!46289))

(declare-fun d!46307 () Bool)

(declare-fun e!94731 () Bool)

(assert (=> d!46307 e!94731))

(declare-fun res!69216 () Bool)

(assert (=> d!46307 (=> (not res!69216) (not e!94731))))

(declare-fun lt!76434 () SeekEntryResult!292)

(assert (=> d!46307 (= res!69216 ((_ is Found!292) lt!76434))))

(assert (=> d!46307 (= lt!76434 (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun lt!76433 () Unit!4592)

(declare-fun choose!905 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) Int) Unit!4592)

(assert (=> d!46307 (= lt!76433 (choose!905 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46307 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46307 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)) lt!76433)))

(declare-fun b!145394 () Bool)

(declare-fun res!69217 () Bool)

(assert (=> b!145394 (=> (not res!69217) (not e!94731))))

(assert (=> b!145394 (= res!69217 (inRange!0 (index!3335 lt!76434) (mask!7353 newMap!16)))))

(declare-fun b!145395 () Bool)

(assert (=> b!145395 (= e!94731 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76434)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145395 (and (bvsge (index!3335 lt!76434) #b00000000000000000000000000000000) (bvslt (index!3335 lt!76434) (size!2607 (_keys!4756 newMap!16))))))

(assert (= (and d!46307 res!69216) b!145394))

(assert (= (and b!145394 res!69217) b!145395))

(assert (=> d!46307 m!174911))

(assert (=> d!46307 m!175087))

(assert (=> d!46307 m!174911))

(declare-fun m!175479 () Bool)

(assert (=> d!46307 m!175479))

(assert (=> d!46307 m!175153))

(declare-fun m!175481 () Bool)

(assert (=> b!145394 m!175481))

(declare-fun m!175483 () Bool)

(assert (=> b!145395 m!175483))

(assert (=> bm!16196 d!46307))

(declare-fun d!46309 () Bool)

(declare-fun res!69222 () Bool)

(declare-fun e!94738 () Bool)

(assert (=> d!46309 (=> res!69222 e!94738)))

(assert (=> d!46309 (= res!69222 (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4756 newMap!16) (mask!7353 newMap!16)) e!94738)))

(declare-fun bm!16236 () Bool)

(declare-fun call!16239 () Bool)

(assert (=> bm!16236 (= call!16239 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun b!145404 () Bool)

(declare-fun e!94739 () Bool)

(assert (=> b!145404 (= e!94738 e!94739)))

(declare-fun c!27572 () Bool)

(assert (=> b!145404 (= c!27572 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145405 () Bool)

(declare-fun e!94740 () Bool)

(assert (=> b!145405 (= e!94739 e!94740)))

(declare-fun lt!76441 () (_ BitVec 64))

(assert (=> b!145405 (= lt!76441 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76443 () Unit!4592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4938 (_ BitVec 64) (_ BitVec 32)) Unit!4592)

(assert (=> b!145405 (= lt!76443 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4756 newMap!16) lt!76441 #b00000000000000000000000000000000))))

(assert (=> b!145405 (arrayContainsKey!0 (_keys!4756 newMap!16) lt!76441 #b00000000000000000000000000000000)))

(declare-fun lt!76442 () Unit!4592)

(assert (=> b!145405 (= lt!76442 lt!76443)))

(declare-fun res!69223 () Bool)

(assert (=> b!145405 (= res!69223 (= (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000) (_keys!4756 newMap!16) (mask!7353 newMap!16)) (Found!292 #b00000000000000000000000000000000)))))

(assert (=> b!145405 (=> (not res!69223) (not e!94740))))

(declare-fun b!145406 () Bool)

(assert (=> b!145406 (= e!94740 call!16239)))

(declare-fun b!145407 () Bool)

(assert (=> b!145407 (= e!94739 call!16239)))

(assert (= (and d!46309 (not res!69222)) b!145404))

(assert (= (and b!145404 c!27572) b!145405))

(assert (= (and b!145404 (not c!27572)) b!145407))

(assert (= (and b!145405 res!69223) b!145406))

(assert (= (or b!145406 b!145407) bm!16236))

(declare-fun m!175485 () Bool)

(assert (=> bm!16236 m!175485))

(assert (=> b!145404 m!175165))

(assert (=> b!145404 m!175165))

(assert (=> b!145404 m!175167))

(assert (=> b!145405 m!175165))

(declare-fun m!175487 () Bool)

(assert (=> b!145405 m!175487))

(declare-fun m!175489 () Bool)

(assert (=> b!145405 m!175489))

(assert (=> b!145405 m!175165))

(declare-fun m!175491 () Bool)

(assert (=> b!145405 m!175491))

(assert (=> b!144995 d!46309))

(declare-fun d!46311 () Bool)

(declare-fun lt!76444 () Bool)

(assert (=> d!46311 (= lt!76444 (select (content!140 (t!6429 lt!76096)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94742 () Bool)

(assert (=> d!46311 (= lt!76444 e!94742)))

(declare-fun res!69224 () Bool)

(assert (=> d!46311 (=> (not res!69224) (not e!94742))))

(assert (=> d!46311 (= res!69224 ((_ is Cons!1772) (t!6429 lt!76096)))))

(assert (=> d!46311 (= (contains!932 (t!6429 lt!76096) #b0000000000000000000000000000000000000000000000000000000000000000) lt!76444)))

(declare-fun b!145408 () Bool)

(declare-fun e!94741 () Bool)

(assert (=> b!145408 (= e!94742 e!94741)))

(declare-fun res!69225 () Bool)

(assert (=> b!145408 (=> res!69225 e!94741)))

(assert (=> b!145408 (= res!69225 (= (h!2380 (t!6429 lt!76096)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145409 () Bool)

(assert (=> b!145409 (= e!94741 (contains!932 (t!6429 (t!6429 lt!76096)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46311 res!69224) b!145408))

(assert (= (and b!145408 (not res!69225)) b!145409))

(assert (=> d!46311 m!175253))

(declare-fun m!175493 () Bool)

(assert (=> d!46311 m!175493))

(declare-fun m!175495 () Bool)

(assert (=> b!145409 m!175495))

(assert (=> b!144924 d!46311))

(declare-fun d!46313 () Bool)

(declare-fun e!94743 () Bool)

(assert (=> d!46313 e!94743))

(declare-fun res!69227 () Bool)

(assert (=> d!46313 (=> (not res!69227) (not e!94743))))

(declare-fun lt!76446 () ListLongMap!1757)

(assert (=> d!46313 (= res!69227 (contains!933 lt!76446 (_1!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(declare-fun lt!76447 () List!1777)

(assert (=> d!46313 (= lt!76446 (ListLongMap!1758 lt!76447))))

(declare-fun lt!76448 () Unit!4592)

(declare-fun lt!76445 () Unit!4592)

(assert (=> d!46313 (= lt!76448 lt!76445)))

(assert (=> d!46313 (= (getValueByKey!178 lt!76447 (_1!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46313 (= lt!76445 (lemmaContainsTupThenGetReturnValue!94 lt!76447 (_1!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46313 (= lt!76447 (insertStrictlySorted!96 (toList!894 call!16136) (_1!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) (_2!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (=> d!46313 (= (+!177 call!16136 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))) lt!76446)))

(declare-fun b!145410 () Bool)

(declare-fun res!69226 () Bool)

(assert (=> b!145410 (=> (not res!69226) (not e!94743))))

(assert (=> b!145410 (= res!69226 (= (getValueByKey!178 (toList!894 lt!76446) (_1!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (Some!183 (_2!1360 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun b!145411 () Bool)

(assert (=> b!145411 (= e!94743 (contains!936 (toList!894 lt!76446) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))

(assert (= (and d!46313 res!69227) b!145410))

(assert (= (and b!145410 res!69226) b!145411))

(declare-fun m!175497 () Bool)

(assert (=> d!46313 m!175497))

(declare-fun m!175499 () Bool)

(assert (=> d!46313 m!175499))

(declare-fun m!175501 () Bool)

(assert (=> d!46313 m!175501))

(declare-fun m!175503 () Bool)

(assert (=> d!46313 m!175503))

(declare-fun m!175505 () Bool)

(assert (=> b!145410 m!175505))

(declare-fun m!175507 () Bool)

(assert (=> b!145411 m!175507))

(assert (=> b!144977 d!46313))

(declare-fun d!46315 () Bool)

(declare-fun lt!76449 () Bool)

(assert (=> d!46315 (= lt!76449 (select (content!140 lt!76096) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!94745 () Bool)

(assert (=> d!46315 (= lt!76449 e!94745)))

(declare-fun res!69228 () Bool)

(assert (=> d!46315 (=> (not res!69228) (not e!94745))))

(assert (=> d!46315 (= res!69228 ((_ is Cons!1772) lt!76096))))

(assert (=> d!46315 (= (contains!932 lt!76096 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!76449)))

(declare-fun b!145412 () Bool)

(declare-fun e!94744 () Bool)

(assert (=> b!145412 (= e!94745 e!94744)))

(declare-fun res!69229 () Bool)

(assert (=> b!145412 (=> res!69229 e!94744)))

(assert (=> b!145412 (= res!69229 (= (h!2380 lt!76096) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145413 () Bool)

(assert (=> b!145413 (= e!94744 (contains!932 (t!6429 lt!76096) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!46315 res!69228) b!145412))

(assert (= (and b!145412 (not res!69229)) b!145413))

(assert (=> d!46315 m!174981))

(assert (=> d!46315 m!174989))

(declare-fun m!175509 () Bool)

(assert (=> d!46315 m!175509))

(assert (=> b!145413 m!174989))

(declare-fun m!175511 () Bool)

(assert (=> b!145413 m!175511))

(assert (=> b!145033 d!46315))

(declare-fun d!46317 () Bool)

(declare-fun e!94747 () Bool)

(assert (=> d!46317 e!94747))

(declare-fun res!69230 () Bool)

(assert (=> d!46317 (=> res!69230 e!94747)))

(declare-fun lt!76451 () Bool)

(assert (=> d!46317 (= res!69230 (not lt!76451))))

(declare-fun lt!76453 () Bool)

(assert (=> d!46317 (= lt!76451 lt!76453)))

(declare-fun lt!76452 () Unit!4592)

(declare-fun e!94746 () Unit!4592)

(assert (=> d!46317 (= lt!76452 e!94746)))

(declare-fun c!27573 () Bool)

(assert (=> d!46317 (= c!27573 lt!76453)))

(assert (=> d!46317 (= lt!76453 (containsKey!182 (toList!894 call!16196) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46317 (= (contains!933 call!16196 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) lt!76451)))

(declare-fun b!145414 () Bool)

(declare-fun lt!76450 () Unit!4592)

(assert (=> b!145414 (= e!94746 lt!76450)))

(assert (=> b!145414 (= lt!76450 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 call!16196) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145414 (isDefined!132 (getValueByKey!178 (toList!894 call!16196) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145415 () Bool)

(declare-fun Unit!4603 () Unit!4592)

(assert (=> b!145415 (= e!94746 Unit!4603)))

(declare-fun b!145416 () Bool)

(assert (=> b!145416 (= e!94747 (isDefined!132 (getValueByKey!178 (toList!894 call!16196) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (= (and d!46317 c!27573) b!145414))

(assert (= (and d!46317 (not c!27573)) b!145415))

(assert (= (and d!46317 (not res!69230)) b!145416))

(assert (=> d!46317 m!174911))

(declare-fun m!175513 () Bool)

(assert (=> d!46317 m!175513))

(assert (=> b!145414 m!174911))

(declare-fun m!175515 () Bool)

(assert (=> b!145414 m!175515))

(assert (=> b!145414 m!174911))

(declare-fun m!175517 () Bool)

(assert (=> b!145414 m!175517))

(assert (=> b!145414 m!175517))

(declare-fun m!175519 () Bool)

(assert (=> b!145414 m!175519))

(assert (=> b!145416 m!174911))

(assert (=> b!145416 m!175517))

(assert (=> b!145416 m!175517))

(assert (=> b!145416 m!175519))

(assert (=> b!145143 d!46317))

(declare-fun d!46319 () Bool)

(declare-fun e!94748 () Bool)

(assert (=> d!46319 e!94748))

(declare-fun res!69232 () Bool)

(assert (=> d!46319 (=> (not res!69232) (not e!94748))))

(declare-fun lt!76455 () ListLongMap!1757)

(assert (=> d!46319 (= res!69232 (contains!933 lt!76455 (_1!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!76456 () List!1777)

(assert (=> d!46319 (= lt!76455 (ListLongMap!1758 lt!76456))))

(declare-fun lt!76457 () Unit!4592)

(declare-fun lt!76454 () Unit!4592)

(assert (=> d!46319 (= lt!76457 lt!76454)))

(assert (=> d!46319 (= (getValueByKey!178 lt!76456 (_1!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!183 (_2!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46319 (= lt!76454 (lemmaContainsTupThenGetReturnValue!94 lt!76456 (_1!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46319 (= lt!76456 (insertStrictlySorted!96 (toList!894 call!16210) (_1!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!46319 (= (+!177 call!16210 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!76455)))

(declare-fun b!145417 () Bool)

(declare-fun res!69231 () Bool)

(assert (=> b!145417 (=> (not res!69231) (not e!94748))))

(assert (=> b!145417 (= res!69231 (= (getValueByKey!178 (toList!894 lt!76455) (_1!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!183 (_2!1360 (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!145418 () Bool)

(assert (=> b!145418 (= e!94748 (contains!936 (toList!894 lt!76455) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!46319 res!69232) b!145417))

(assert (= (and b!145417 res!69231) b!145418))

(declare-fun m!175521 () Bool)

(assert (=> d!46319 m!175521))

(declare-fun m!175523 () Bool)

(assert (=> d!46319 m!175523))

(declare-fun m!175525 () Bool)

(assert (=> d!46319 m!175525))

(declare-fun m!175527 () Bool)

(assert (=> d!46319 m!175527))

(declare-fun m!175529 () Bool)

(assert (=> b!145417 m!175529))

(declare-fun m!175531 () Bool)

(assert (=> b!145418 m!175531))

(assert (=> b!145131 d!46319))

(assert (=> b!145031 d!46231))

(assert (=> b!145022 d!46211))

(declare-fun bm!16237 () Bool)

(declare-fun call!16243 () ListLongMap!1757)

(declare-fun call!16242 () ListLongMap!1757)

(assert (=> bm!16237 (= call!16243 call!16242)))

(declare-fun b!145419 () Bool)

(declare-fun e!94752 () ListLongMap!1757)

(declare-fun call!16241 () ListLongMap!1757)

(assert (=> b!145419 (= e!94752 call!16241)))

(declare-fun b!145420 () Bool)

(declare-fun e!94753 () Bool)

(declare-fun e!94750 () Bool)

(assert (=> b!145420 (= e!94753 e!94750)))

(declare-fun res!69235 () Bool)

(declare-fun call!16246 () Bool)

(assert (=> b!145420 (= res!69235 call!16246)))

(assert (=> b!145420 (=> (not res!69235) (not e!94750))))

(declare-fun b!145421 () Bool)

(declare-fun e!94760 () ListLongMap!1757)

(assert (=> b!145421 (= e!94760 e!94752)))

(declare-fun c!27574 () Bool)

(assert (=> b!145421 (= c!27574 (and (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16238 () Bool)

(declare-fun call!16244 () Bool)

(declare-fun lt!76461 () ListLongMap!1757)

(assert (=> bm!16238 (= call!16244 (contains!933 lt!76461 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145422 () Bool)

(declare-fun e!94759 () Bool)

(assert (=> b!145422 (= e!94759 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46321 () Bool)

(declare-fun e!94761 () Bool)

(assert (=> d!46321 e!94761))

(declare-fun res!69236 () Bool)

(assert (=> d!46321 (=> (not res!69236) (not e!94761))))

(assert (=> d!46321 (= res!69236 (or (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))))

(declare-fun lt!76472 () ListLongMap!1757)

(assert (=> d!46321 (= lt!76461 lt!76472)))

(declare-fun lt!76467 () Unit!4592)

(declare-fun e!94754 () Unit!4592)

(assert (=> d!46321 (= lt!76467 e!94754)))

(declare-fun c!27576 () Bool)

(declare-fun e!94755 () Bool)

(assert (=> d!46321 (= c!27576 e!94755)))

(declare-fun res!69237 () Bool)

(assert (=> d!46321 (=> (not res!69237) (not e!94755))))

(assert (=> d!46321 (= res!69237 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46321 (= lt!76472 e!94760)))

(declare-fun c!27578 () Bool)

(assert (=> d!46321 (= c!27578 (and (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46321 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46321 (= (getCurrentListMap!560 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) lt!76461)))

(declare-fun call!16240 () ListLongMap!1757)

(declare-fun call!16245 () ListLongMap!1757)

(declare-fun bm!16239 () Bool)

(assert (=> bm!16239 (= call!16245 (+!177 (ite c!27578 call!16242 (ite c!27574 call!16243 call!16240)) (ite (or c!27578 c!27574) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 newMap!16)) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16))))))))

(declare-fun b!145423 () Bool)

(assert (=> b!145423 (= e!94755 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145424 () Bool)

(declare-fun Unit!4604 () Unit!4592)

(assert (=> b!145424 (= e!94754 Unit!4604)))

(declare-fun b!145425 () Bool)

(declare-fun lt!76475 () Unit!4592)

(assert (=> b!145425 (= e!94754 lt!76475)))

(declare-fun lt!76471 () ListLongMap!1757)

(assert (=> b!145425 (= lt!76471 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76478 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76478 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76464 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76464 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76465 () Unit!4592)

(assert (=> b!145425 (= lt!76465 (addStillContains!99 lt!76471 lt!76478 (zeroValue!2835 newMap!16) lt!76464))))

(assert (=> b!145425 (contains!933 (+!177 lt!76471 (tuple2!2701 lt!76478 (zeroValue!2835 newMap!16))) lt!76464)))

(declare-fun lt!76474 () Unit!4592)

(assert (=> b!145425 (= lt!76474 lt!76465)))

(declare-fun lt!76477 () ListLongMap!1757)

(assert (=> b!145425 (= lt!76477 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76476 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76476 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76463 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76463 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76479 () Unit!4592)

(assert (=> b!145425 (= lt!76479 (addApplyDifferent!99 lt!76477 lt!76476 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) lt!76463))))

(assert (=> b!145425 (= (apply!123 (+!177 lt!76477 (tuple2!2701 lt!76476 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)))) lt!76463) (apply!123 lt!76477 lt!76463))))

(declare-fun lt!76470 () Unit!4592)

(assert (=> b!145425 (= lt!76470 lt!76479)))

(declare-fun lt!76469 () ListLongMap!1757)

(assert (=> b!145425 (= lt!76469 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76473 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76473 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76468 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76468 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!76466 () Unit!4592)

(assert (=> b!145425 (= lt!76466 (addApplyDifferent!99 lt!76469 lt!76473 (zeroValue!2835 newMap!16) lt!76468))))

(assert (=> b!145425 (= (apply!123 (+!177 lt!76469 (tuple2!2701 lt!76473 (zeroValue!2835 newMap!16))) lt!76468) (apply!123 lt!76469 lt!76468))))

(declare-fun lt!76459 () Unit!4592)

(assert (=> b!145425 (= lt!76459 lt!76466)))

(declare-fun lt!76458 () ListLongMap!1757)

(assert (=> b!145425 (= lt!76458 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76462 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76462 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76460 () (_ BitVec 64))

(assert (=> b!145425 (= lt!76460 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!145425 (= lt!76475 (addApplyDifferent!99 lt!76458 lt!76462 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) lt!76460))))

(assert (=> b!145425 (= (apply!123 (+!177 lt!76458 (tuple2!2701 lt!76462 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)))) lt!76460) (apply!123 lt!76458 lt!76460))))

(declare-fun b!145426 () Bool)

(declare-fun e!94757 () Bool)

(declare-fun e!94758 () Bool)

(assert (=> b!145426 (= e!94757 e!94758)))

(declare-fun res!69241 () Bool)

(assert (=> b!145426 (=> (not res!69241) (not e!94758))))

(assert (=> b!145426 (= res!69241 (contains!933 lt!76461 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!145426 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun e!94751 () Bool)

(declare-fun b!145427 () Bool)

(assert (=> b!145427 (= e!94751 (= (apply!123 lt!76461 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16))))))

(declare-fun b!145428 () Bool)

(declare-fun e!94756 () ListLongMap!1757)

(assert (=> b!145428 (= e!94756 call!16240)))

(declare-fun b!145429 () Bool)

(assert (=> b!145429 (= e!94760 (+!177 call!16245 (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)))))))

(declare-fun bm!16240 () Bool)

(assert (=> bm!16240 (= call!16241 call!16245)))

(declare-fun b!145430 () Bool)

(declare-fun e!94749 () Bool)

(assert (=> b!145430 (= e!94749 e!94751)))

(declare-fun res!69233 () Bool)

(assert (=> b!145430 (= res!69233 call!16244)))

(assert (=> b!145430 (=> (not res!69233) (not e!94751))))

(declare-fun bm!16241 () Bool)

(assert (=> bm!16241 (= call!16242 (getCurrentListMapNoExtraKeys!144 (_keys!4756 newMap!16) (ite c!27507 (_values!2972 newMap!16) lt!76270) (mask!7353 newMap!16) (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) (zeroValue!2835 newMap!16) (ite c!27507 (ite c!27501 (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2835 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun b!145431 () Bool)

(assert (=> b!145431 (= e!94749 (not call!16244))))

(declare-fun b!145432 () Bool)

(assert (=> b!145432 (= e!94750 (= (apply!123 lt!76461 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2835 newMap!16)))))

(declare-fun bm!16242 () Bool)

(assert (=> bm!16242 (= call!16240 call!16243)))

(declare-fun b!145433 () Bool)

(declare-fun c!27579 () Bool)

(assert (=> b!145433 (= c!27579 (and (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!145433 (= e!94752 e!94756)))

(declare-fun b!145434 () Bool)

(declare-fun res!69234 () Bool)

(assert (=> b!145434 (=> (not res!69234) (not e!94761))))

(assert (=> b!145434 (= res!69234 e!94757)))

(declare-fun res!69240 () Bool)

(assert (=> b!145434 (=> res!69240 e!94757)))

(assert (=> b!145434 (= res!69240 (not e!94759))))

(declare-fun res!69239 () Bool)

(assert (=> b!145434 (=> (not res!69239) (not e!94759))))

(assert (=> b!145434 (= res!69239 (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145435 () Bool)

(assert (=> b!145435 (= e!94758 (= (apply!123 lt!76461 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)) (get!1553 (select (arr!2333 (ite c!27507 (_values!2972 newMap!16) lt!76270)) #b00000000000000000000000000000000) (dynLambda!446 (defaultEntry!2989 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!145435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2608 (ite c!27507 (_values!2972 newMap!16) lt!76270))))))

(assert (=> b!145435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145436 () Bool)

(assert (=> b!145436 (= e!94756 call!16241)))

(declare-fun b!145437 () Bool)

(assert (=> b!145437 (= e!94761 e!94749)))

(declare-fun c!27577 () Bool)

(assert (=> b!145437 (= c!27577 (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16243 () Bool)

(assert (=> bm!16243 (= call!16246 (contains!933 lt!76461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145438 () Bool)

(declare-fun res!69238 () Bool)

(assert (=> b!145438 (=> (not res!69238) (not e!94761))))

(assert (=> b!145438 (= res!69238 e!94753)))

(declare-fun c!27575 () Bool)

(assert (=> b!145438 (= c!27575 (not (= (bvand (ite c!27507 (ite c!27501 (extraKeys!2736 newMap!16) lt!76275) (extraKeys!2736 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!145439 () Bool)

(assert (=> b!145439 (= e!94753 (not call!16246))))

(assert (= (and d!46321 c!27578) b!145429))

(assert (= (and d!46321 (not c!27578)) b!145421))

(assert (= (and b!145421 c!27574) b!145419))

(assert (= (and b!145421 (not c!27574)) b!145433))

(assert (= (and b!145433 c!27579) b!145436))

(assert (= (and b!145433 (not c!27579)) b!145428))

(assert (= (or b!145436 b!145428) bm!16242))

(assert (= (or b!145419 bm!16242) bm!16237))

(assert (= (or b!145419 b!145436) bm!16240))

(assert (= (or b!145429 bm!16237) bm!16241))

(assert (= (or b!145429 bm!16240) bm!16239))

(assert (= (and d!46321 res!69237) b!145423))

(assert (= (and d!46321 c!27576) b!145425))

(assert (= (and d!46321 (not c!27576)) b!145424))

(assert (= (and d!46321 res!69236) b!145434))

(assert (= (and b!145434 res!69239) b!145422))

(assert (= (and b!145434 (not res!69240)) b!145426))

(assert (= (and b!145426 res!69241) b!145435))

(assert (= (and b!145434 res!69234) b!145438))

(assert (= (and b!145438 c!27575) b!145420))

(assert (= (and b!145438 (not c!27575)) b!145439))

(assert (= (and b!145420 res!69235) b!145432))

(assert (= (or b!145420 b!145439) bm!16243))

(assert (= (and b!145438 res!69238) b!145437))

(assert (= (and b!145437 c!27577) b!145430))

(assert (= (and b!145437 (not c!27577)) b!145431))

(assert (= (and b!145430 res!69233) b!145427))

(assert (= (or b!145430 b!145431) bm!16238))

(declare-fun b_lambda!6549 () Bool)

(assert (=> (not b_lambda!6549) (not b!145435)))

(assert (=> b!145435 t!6438))

(declare-fun b_and!9081 () Bool)

(assert (= b_and!9077 (and (=> t!6438 result!4283) b_and!9081)))

(assert (=> b!145435 t!6440))

(declare-fun b_and!9083 () Bool)

(assert (= b_and!9079 (and (=> t!6440 result!4285) b_and!9083)))

(assert (=> b!145423 m!175165))

(assert (=> b!145423 m!175165))

(assert (=> b!145423 m!175167))

(declare-fun m!175533 () Bool)

(assert (=> bm!16239 m!175533))

(declare-fun m!175535 () Bool)

(assert (=> b!145432 m!175535))

(declare-fun m!175537 () Bool)

(assert (=> b!145429 m!175537))

(declare-fun m!175539 () Bool)

(assert (=> b!145425 m!175539))

(declare-fun m!175541 () Bool)

(assert (=> b!145425 m!175541))

(declare-fun m!175543 () Bool)

(assert (=> b!145425 m!175543))

(declare-fun m!175545 () Bool)

(assert (=> b!145425 m!175545))

(declare-fun m!175547 () Bool)

(assert (=> b!145425 m!175547))

(declare-fun m!175549 () Bool)

(assert (=> b!145425 m!175549))

(assert (=> b!145425 m!175547))

(declare-fun m!175551 () Bool)

(assert (=> b!145425 m!175551))

(declare-fun m!175553 () Bool)

(assert (=> b!145425 m!175553))

(declare-fun m!175555 () Bool)

(assert (=> b!145425 m!175555))

(assert (=> b!145425 m!175553))

(assert (=> b!145425 m!175545))

(declare-fun m!175557 () Bool)

(assert (=> b!145425 m!175557))

(assert (=> b!145425 m!175165))

(declare-fun m!175559 () Bool)

(assert (=> b!145425 m!175559))

(declare-fun m!175561 () Bool)

(assert (=> b!145425 m!175561))

(declare-fun m!175563 () Bool)

(assert (=> b!145425 m!175563))

(declare-fun m!175565 () Bool)

(assert (=> b!145425 m!175565))

(declare-fun m!175567 () Bool)

(assert (=> b!145425 m!175567))

(assert (=> b!145425 m!175565))

(declare-fun m!175569 () Bool)

(assert (=> b!145425 m!175569))

(declare-fun m!175571 () Bool)

(assert (=> b!145427 m!175571))

(assert (=> d!46321 m!175153))

(assert (=> bm!16241 m!175563))

(declare-fun m!175573 () Bool)

(assert (=> b!145435 m!175573))

(assert (=> b!145435 m!175211))

(declare-fun m!175575 () Bool)

(assert (=> b!145435 m!175575))

(assert (=> b!145435 m!175211))

(assert (=> b!145435 m!175165))

(assert (=> b!145435 m!175573))

(assert (=> b!145435 m!175165))

(declare-fun m!175577 () Bool)

(assert (=> b!145435 m!175577))

(assert (=> b!145426 m!175165))

(assert (=> b!145426 m!175165))

(declare-fun m!175579 () Bool)

(assert (=> b!145426 m!175579))

(declare-fun m!175581 () Bool)

(assert (=> bm!16243 m!175581))

(assert (=> b!145422 m!175165))

(assert (=> b!145422 m!175165))

(assert (=> b!145422 m!175167))

(declare-fun m!175583 () Bool)

(assert (=> bm!16238 m!175583))

(assert (=> bm!16206 d!46321))

(declare-fun d!46323 () Bool)

(assert (=> d!46323 (= (+!177 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) lt!76275 (zeroValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76482 () Unit!4592)

(declare-fun choose!906 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 V!3579 Int) Unit!4592)

(assert (=> d!46323 (= lt!76482 (choose!906 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76275 (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46323 (validMask!0 (mask!7353 newMap!16))))

(assert (=> d!46323 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) lt!76275 (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)) lt!76482)))

(declare-fun bs!6129 () Bool)

(assert (= bs!6129 d!46323))

(assert (=> bs!6129 m!174925))

(declare-fun m!175585 () Bool)

(assert (=> bs!6129 m!175585))

(assert (=> bs!6129 m!175153))

(assert (=> bs!6129 m!174987))

(assert (=> bs!6129 m!174925))

(declare-fun m!175587 () Bool)

(assert (=> bs!6129 m!175587))

(assert (=> bs!6129 m!174987))

(declare-fun m!175589 () Bool)

(assert (=> bs!6129 m!175589))

(assert (=> b!145153 d!46323))

(declare-fun bm!16244 () Bool)

(declare-fun c!27580 () Bool)

(declare-fun call!16247 () Bool)

(assert (=> bm!16244 (= call!16247 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!27580 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (ite c!27467 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76096) lt!76096)) (ite c!27467 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76096) lt!76096))))))

(declare-fun b!145440 () Bool)

(declare-fun e!94765 () Bool)

(assert (=> b!145440 (= e!94765 call!16247)))

(declare-fun d!46325 () Bool)

(declare-fun res!69244 () Bool)

(declare-fun e!94763 () Bool)

(assert (=> d!46325 (=> res!69244 e!94763)))

(assert (=> d!46325 (= res!69244 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46325 (= (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (ite c!27467 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76096) lt!76096)) e!94763)))

(declare-fun b!145441 () Bool)

(declare-fun e!94764 () Bool)

(assert (=> b!145441 (= e!94764 e!94765)))

(assert (=> b!145441 (= c!27580 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145442 () Bool)

(assert (=> b!145442 (= e!94763 e!94764)))

(declare-fun res!69243 () Bool)

(assert (=> b!145442 (=> (not res!69243) (not e!94764))))

(declare-fun e!94762 () Bool)

(assert (=> b!145442 (= res!69243 (not e!94762))))

(declare-fun res!69242 () Bool)

(assert (=> b!145442 (=> (not res!69242) (not e!94762))))

(assert (=> b!145442 (= res!69242 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145443 () Bool)

(assert (=> b!145443 (= e!94762 (contains!932 (ite c!27467 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76096) lt!76096) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145444 () Bool)

(assert (=> b!145444 (= e!94765 call!16247)))

(assert (= (and d!46325 (not res!69244)) b!145442))

(assert (= (and b!145442 res!69242) b!145443))

(assert (= (and b!145442 res!69243) b!145441))

(assert (= (and b!145441 c!27580) b!145440))

(assert (= (and b!145441 (not c!27580)) b!145444))

(assert (= (or b!145440 b!145444) bm!16244))

(assert (=> bm!16244 m!175231))

(declare-fun m!175591 () Bool)

(assert (=> bm!16244 m!175591))

(assert (=> b!145441 m!175231))

(assert (=> b!145441 m!175231))

(declare-fun m!175593 () Bool)

(assert (=> b!145441 m!175593))

(assert (=> b!145442 m!175231))

(assert (=> b!145442 m!175231))

(assert (=> b!145442 m!175593))

(assert (=> b!145443 m!175231))

(assert (=> b!145443 m!175231))

(declare-fun m!175595 () Bool)

(assert (=> b!145443 m!175595))

(assert (=> bm!16138 d!46325))

(assert (=> d!46209 d!46207))

(declare-fun d!46327 () Bool)

(assert (=> d!46327 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) from!355 Nil!1773)))

(assert (=> d!46327 true))

(declare-fun _$71!174 () Unit!4592)

(assert (=> d!46327 (= (choose!39 (_keys!4756 (v!3320 (underlying!489 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!174)))

(declare-fun bs!6130 () Bool)

(assert (= bs!6130 d!46327))

(assert (=> bs!6130 m!174909))

(assert (=> d!46209 d!46327))

(declare-fun d!46329 () Bool)

(declare-fun e!94766 () Bool)

(assert (=> d!46329 e!94766))

(declare-fun res!69246 () Bool)

(assert (=> d!46329 (=> (not res!69246) (not e!94766))))

(declare-fun lt!76484 () ListLongMap!1757)

(assert (=> d!46329 (= res!69246 (contains!933 lt!76484 (_1!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(declare-fun lt!76485 () List!1777)

(assert (=> d!46329 (= lt!76484 (ListLongMap!1758 lt!76485))))

(declare-fun lt!76486 () Unit!4592)

(declare-fun lt!76483 () Unit!4592)

(assert (=> d!46329 (= lt!76486 lt!76483)))

(assert (=> d!46329 (= (getValueByKey!178 lt!76485 (_1!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))) (Some!183 (_2!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(assert (=> d!46329 (= lt!76483 (lemmaContainsTupThenGetReturnValue!94 lt!76485 (_1!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (_2!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(assert (=> d!46329 (= lt!76485 (insertStrictlySorted!96 (toList!894 (ite c!27459 call!16133 (ite c!27455 call!16134 call!16131))) (_1!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) (_2!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))))))

(assert (=> d!46329 (= (+!177 (ite c!27459 call!16133 (ite c!27455 call!16134 call!16131)) (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))) lt!76484)))

(declare-fun b!145445 () Bool)

(declare-fun res!69245 () Bool)

(assert (=> b!145445 (=> (not res!69245) (not e!94766))))

(assert (=> b!145445 (= res!69245 (= (getValueByKey!178 (toList!894 lt!76484) (_1!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992))))))) (Some!183 (_2!1360 (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))))

(declare-fun b!145446 () Bool)

(assert (=> b!145446 (= e!94766 (contains!936 (toList!894 lt!76484) (ite (or c!27459 c!27455) (tuple2!2701 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2835 (v!3320 (underlying!489 thiss!992)))) (tuple2!2701 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2835 (v!3320 (underlying!489 thiss!992)))))))))

(assert (= (and d!46329 res!69246) b!145445))

(assert (= (and b!145445 res!69245) b!145446))

(declare-fun m!175597 () Bool)

(assert (=> d!46329 m!175597))

(declare-fun m!175599 () Bool)

(assert (=> d!46329 m!175599))

(declare-fun m!175601 () Bool)

(assert (=> d!46329 m!175601))

(declare-fun m!175603 () Bool)

(assert (=> d!46329 m!175603))

(declare-fun m!175605 () Bool)

(assert (=> b!145445 m!175605))

(declare-fun m!175607 () Bool)

(assert (=> b!145446 m!175607))

(assert (=> bm!16130 d!46329))

(declare-fun d!46331 () Bool)

(declare-fun res!69247 () Bool)

(declare-fun e!94767 () Bool)

(assert (=> d!46331 (=> (not res!69247) (not e!94767))))

(assert (=> d!46331 (= res!69247 (simpleValid!98 (_2!1361 lt!76277)))))

(assert (=> d!46331 (= (valid!568 (_2!1361 lt!76277)) e!94767)))

(declare-fun b!145447 () Bool)

(declare-fun res!69248 () Bool)

(assert (=> b!145447 (=> (not res!69248) (not e!94767))))

(assert (=> b!145447 (= res!69248 (= (arrayCountValidKeys!0 (_keys!4756 (_2!1361 lt!76277)) #b00000000000000000000000000000000 (size!2607 (_keys!4756 (_2!1361 lt!76277)))) (_size!634 (_2!1361 lt!76277))))))

(declare-fun b!145448 () Bool)

(declare-fun res!69249 () Bool)

(assert (=> b!145448 (=> (not res!69249) (not e!94767))))

(assert (=> b!145448 (= res!69249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4756 (_2!1361 lt!76277)) (mask!7353 (_2!1361 lt!76277))))))

(declare-fun b!145449 () Bool)

(assert (=> b!145449 (= e!94767 (arrayNoDuplicates!0 (_keys!4756 (_2!1361 lt!76277)) #b00000000000000000000000000000000 Nil!1773))))

(assert (= (and d!46331 res!69247) b!145447))

(assert (= (and b!145447 res!69248) b!145448))

(assert (= (and b!145448 res!69249) b!145449))

(declare-fun m!175609 () Bool)

(assert (=> d!46331 m!175609))

(declare-fun m!175611 () Bool)

(assert (=> b!145447 m!175611))

(declare-fun m!175613 () Bool)

(assert (=> b!145448 m!175613))

(declare-fun m!175615 () Bool)

(assert (=> b!145449 m!175615))

(assert (=> d!46223 d!46331))

(assert (=> d!46223 d!46205))

(declare-fun call!16248 () Bool)

(declare-fun c!27581 () Bool)

(declare-fun bm!16245 () Bool)

(assert (=> bm!16245 (= call!16248 (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!27581 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!27463 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773) Nil!1773)) (ite c!27463 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773) Nil!1773))))))

(declare-fun b!145450 () Bool)

(declare-fun e!94771 () Bool)

(assert (=> b!145450 (= e!94771 call!16248)))

(declare-fun d!46333 () Bool)

(declare-fun res!69252 () Bool)

(declare-fun e!94769 () Bool)

(assert (=> d!46333 (=> res!69252 e!94769)))

(assert (=> d!46333 (= res!69252 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2607 (_keys!4756 (v!3320 (underlying!489 thiss!992))))))))

(assert (=> d!46333 (= (arrayNoDuplicates!0 (_keys!4756 (v!3320 (underlying!489 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27463 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773) Nil!1773)) e!94769)))

(declare-fun b!145451 () Bool)

(declare-fun e!94770 () Bool)

(assert (=> b!145451 (= e!94770 e!94771)))

(assert (=> b!145451 (= c!27581 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145452 () Bool)

(assert (=> b!145452 (= e!94769 e!94770)))

(declare-fun res!69251 () Bool)

(assert (=> b!145452 (=> (not res!69251) (not e!94770))))

(declare-fun e!94768 () Bool)

(assert (=> b!145452 (= res!69251 (not e!94768))))

(declare-fun res!69250 () Bool)

(assert (=> b!145452 (=> (not res!69250) (not e!94768))))

(assert (=> b!145452 (= res!69250 (validKeyInArray!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145453 () Bool)

(assert (=> b!145453 (= e!94768 (contains!932 (ite c!27463 (Cons!1772 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) Nil!1773) Nil!1773) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!145454 () Bool)

(assert (=> b!145454 (= e!94771 call!16248)))

(assert (= (and d!46333 (not res!69252)) b!145452))

(assert (= (and b!145452 res!69250) b!145453))

(assert (= (and b!145452 res!69251) b!145451))

(assert (= (and b!145451 c!27581) b!145450))

(assert (= (and b!145451 (not c!27581)) b!145454))

(assert (= (or b!145450 b!145454) bm!16245))

(declare-fun m!175617 () Bool)

(assert (=> bm!16245 m!175617))

(declare-fun m!175619 () Bool)

(assert (=> bm!16245 m!175619))

(assert (=> b!145451 m!175617))

(assert (=> b!145451 m!175617))

(declare-fun m!175621 () Bool)

(assert (=> b!145451 m!175621))

(assert (=> b!145452 m!175617))

(assert (=> b!145452 m!175617))

(assert (=> b!145452 m!175621))

(assert (=> b!145453 m!175617))

(assert (=> b!145453 m!175617))

(declare-fun m!175623 () Bool)

(assert (=> b!145453 m!175623))

(assert (=> bm!16137 d!46333))

(declare-fun d!46335 () Bool)

(declare-fun res!69253 () Bool)

(declare-fun e!94772 () Bool)

(assert (=> d!46335 (=> res!69253 e!94772)))

(assert (=> d!46335 (= res!69253 (= (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46335 (= (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000) e!94772)))

(declare-fun b!145455 () Bool)

(declare-fun e!94773 () Bool)

(assert (=> b!145455 (= e!94772 e!94773)))

(declare-fun res!69254 () Bool)

(assert (=> b!145455 (=> (not res!69254) (not e!94773))))

(assert (=> b!145455 (= res!69254 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145456 () Bool)

(assert (=> b!145456 (= e!94773 (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!46335 (not res!69253)) b!145455))

(assert (= (and b!145455 res!69254) b!145456))

(assert (=> d!46335 m!175165))

(assert (=> b!145456 m!174911))

(declare-fun m!175625 () Bool)

(assert (=> b!145456 m!175625))

(assert (=> bm!16201 d!46335))

(declare-fun d!46337 () Bool)

(assert (=> d!46337 (= (get!1555 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3319 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> b!145176 d!46337))

(assert (=> b!145133 d!46245))

(declare-fun d!46339 () Bool)

(declare-fun e!94775 () Bool)

(assert (=> d!46339 e!94775))

(declare-fun res!69255 () Bool)

(assert (=> d!46339 (=> res!69255 e!94775)))

(declare-fun lt!76488 () Bool)

(assert (=> d!46339 (= res!69255 (not lt!76488))))

(declare-fun lt!76490 () Bool)

(assert (=> d!46339 (= lt!76488 lt!76490)))

(declare-fun lt!76489 () Unit!4592)

(declare-fun e!94774 () Unit!4592)

(assert (=> d!46339 (= lt!76489 e!94774)))

(declare-fun c!27582 () Bool)

(assert (=> d!46339 (= c!27582 lt!76490)))

(assert (=> d!46339 (= lt!76490 (containsKey!182 (toList!894 lt!76170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46339 (= (contains!933 lt!76170 #b1000000000000000000000000000000000000000000000000000000000000000) lt!76488)))

(declare-fun b!145457 () Bool)

(declare-fun lt!76487 () Unit!4592)

(assert (=> b!145457 (= e!94774 lt!76487)))

(assert (=> b!145457 (= lt!76487 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 lt!76170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145457 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145458 () Bool)

(declare-fun Unit!4605 () Unit!4592)

(assert (=> b!145458 (= e!94774 Unit!4605)))

(declare-fun b!145459 () Bool)

(assert (=> b!145459 (= e!94775 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46339 c!27582) b!145457))

(assert (= (and d!46339 (not c!27582)) b!145458))

(assert (= (and d!46339 (not res!69255)) b!145459))

(declare-fun m!175627 () Bool)

(assert (=> d!46339 m!175627))

(declare-fun m!175629 () Bool)

(assert (=> b!145457 m!175629))

(assert (=> b!145457 m!175227))

(assert (=> b!145457 m!175227))

(declare-fun m!175631 () Bool)

(assert (=> b!145457 m!175631))

(assert (=> b!145459 m!175227))

(assert (=> b!145459 m!175227))

(assert (=> b!145459 m!175631))

(assert (=> bm!16129 d!46339))

(declare-fun d!46341 () Bool)

(declare-fun e!94777 () Bool)

(assert (=> d!46341 e!94777))

(declare-fun res!69256 () Bool)

(assert (=> d!46341 (=> res!69256 e!94777)))

(declare-fun lt!76492 () Bool)

(assert (=> d!46341 (= res!69256 (not lt!76492))))

(declare-fun lt!76494 () Bool)

(assert (=> d!46341 (= lt!76492 lt!76494)))

(declare-fun lt!76493 () Unit!4592)

(declare-fun e!94776 () Unit!4592)

(assert (=> d!46341 (= lt!76493 e!94776)))

(declare-fun c!27583 () Bool)

(assert (=> d!46341 (= c!27583 lt!76494)))

(assert (=> d!46341 (= lt!76494 (containsKey!182 (toList!894 lt!76170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!46341 (= (contains!933 lt!76170 #b0000000000000000000000000000000000000000000000000000000000000000) lt!76492)))

(declare-fun b!145460 () Bool)

(declare-fun lt!76491 () Unit!4592)

(assert (=> b!145460 (= e!94776 lt!76491)))

(assert (=> b!145460 (= lt!76491 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 lt!76170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145460 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145461 () Bool)

(declare-fun Unit!4606 () Unit!4592)

(assert (=> b!145461 (= e!94776 Unit!4606)))

(declare-fun b!145462 () Bool)

(assert (=> b!145462 (= e!94777 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46341 c!27583) b!145460))

(assert (= (and d!46341 (not c!27583)) b!145461))

(assert (= (and d!46341 (not res!69256)) b!145462))

(declare-fun m!175633 () Bool)

(assert (=> d!46341 m!175633))

(declare-fun m!175635 () Bool)

(assert (=> b!145460 m!175635))

(declare-fun m!175637 () Bool)

(assert (=> b!145460 m!175637))

(assert (=> b!145460 m!175637))

(declare-fun m!175639 () Bool)

(assert (=> b!145460 m!175639))

(assert (=> b!145462 m!175637))

(assert (=> b!145462 m!175637))

(assert (=> b!145462 m!175639))

(assert (=> bm!16134 d!46341))

(declare-fun d!46343 () Bool)

(declare-fun lt!76495 () Bool)

(assert (=> d!46343 (= lt!76495 (select (content!140 (t!6429 lt!76096)) (h!2380 lt!76096)))))

(declare-fun e!94779 () Bool)

(assert (=> d!46343 (= lt!76495 e!94779)))

(declare-fun res!69257 () Bool)

(assert (=> d!46343 (=> (not res!69257) (not e!94779))))

(assert (=> d!46343 (= res!69257 ((_ is Cons!1772) (t!6429 lt!76096)))))

(assert (=> d!46343 (= (contains!932 (t!6429 lt!76096) (h!2380 lt!76096)) lt!76495)))

(declare-fun b!145463 () Bool)

(declare-fun e!94778 () Bool)

(assert (=> b!145463 (= e!94779 e!94778)))

(declare-fun res!69258 () Bool)

(assert (=> b!145463 (=> res!69258 e!94778)))

(assert (=> b!145463 (= res!69258 (= (h!2380 (t!6429 lt!76096)) (h!2380 lt!76096)))))

(declare-fun b!145464 () Bool)

(assert (=> b!145464 (= e!94778 (contains!932 (t!6429 (t!6429 lt!76096)) (h!2380 lt!76096)))))

(assert (= (and d!46343 res!69257) b!145463))

(assert (= (and b!145463 (not res!69258)) b!145464))

(assert (=> d!46343 m!175253))

(declare-fun m!175641 () Bool)

(assert (=> d!46343 m!175641))

(declare-fun m!175643 () Bool)

(assert (=> b!145464 m!175643))

(assert (=> b!145028 d!46343))

(declare-fun d!46345 () Bool)

(declare-fun e!94781 () Bool)

(assert (=> d!46345 e!94781))

(declare-fun res!69259 () Bool)

(assert (=> d!46345 (=> res!69259 e!94781)))

(declare-fun lt!76497 () Bool)

(assert (=> d!46345 (= res!69259 (not lt!76497))))

(declare-fun lt!76499 () Bool)

(assert (=> d!46345 (= lt!76497 lt!76499)))

(declare-fun lt!76498 () Unit!4592)

(declare-fun e!94780 () Unit!4592)

(assert (=> d!46345 (= lt!76498 e!94780)))

(declare-fun c!27584 () Bool)

(assert (=> d!46345 (= c!27584 lt!76499)))

(assert (=> d!46345 (= lt!76499 (containsKey!182 (toList!894 lt!76170) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!46345 (= (contains!933 lt!76170 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!76497)))

(declare-fun b!145465 () Bool)

(declare-fun lt!76496 () Unit!4592)

(assert (=> b!145465 (= e!94780 lt!76496)))

(assert (=> b!145465 (= lt!76496 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 (toList!894 lt!76170) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!145465 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145466 () Bool)

(declare-fun Unit!4607 () Unit!4592)

(assert (=> b!145466 (= e!94780 Unit!4607)))

(declare-fun b!145467 () Bool)

(assert (=> b!145467 (= e!94781 (isDefined!132 (getValueByKey!178 (toList!894 lt!76170) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!46345 c!27584) b!145465))

(assert (= (and d!46345 (not c!27584)) b!145466))

(assert (= (and d!46345 (not res!69259)) b!145467))

(assert (=> d!46345 m!174989))

(declare-fun m!175645 () Bool)

(assert (=> d!46345 m!175645))

(assert (=> b!145465 m!174989))

(declare-fun m!175647 () Bool)

(assert (=> b!145465 m!175647))

(assert (=> b!145465 m!174989))

(declare-fun m!175649 () Bool)

(assert (=> b!145465 m!175649))

(assert (=> b!145465 m!175649))

(declare-fun m!175651 () Bool)

(assert (=> b!145465 m!175651))

(assert (=> b!145467 m!174989))

(assert (=> b!145467 m!175649))

(assert (=> b!145467 m!175649))

(assert (=> b!145467 m!175651))

(assert (=> b!144974 d!46345))

(assert (=> d!46197 d!46303))

(declare-fun d!46347 () Bool)

(declare-fun lt!76500 () Bool)

(assert (=> d!46347 (= lt!76500 (select (content!140 Nil!1773) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun e!94783 () Bool)

(assert (=> d!46347 (= lt!76500 e!94783)))

(declare-fun res!69260 () Bool)

(assert (=> d!46347 (=> (not res!69260) (not e!94783))))

(assert (=> d!46347 (= res!69260 ((_ is Cons!1772) Nil!1773))))

(assert (=> d!46347 (= (contains!932 Nil!1773 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) lt!76500)))

(declare-fun b!145468 () Bool)

(declare-fun e!94782 () Bool)

(assert (=> b!145468 (= e!94783 e!94782)))

(declare-fun res!69261 () Bool)

(assert (=> b!145468 (=> res!69261 e!94782)))

(assert (=> b!145468 (= res!69261 (= (h!2380 Nil!1773) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145469 () Bool)

(assert (=> b!145469 (= e!94782 (contains!932 (t!6429 Nil!1773) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (= (and d!46347 res!69260) b!145468))

(assert (= (and b!145468 (not res!69261)) b!145469))

(declare-fun m!175653 () Bool)

(assert (=> d!46347 m!175653))

(assert (=> d!46347 m!174911))

(declare-fun m!175655 () Bool)

(assert (=> d!46347 m!175655))

(assert (=> b!145469 m!174911))

(declare-fun m!175657 () Bool)

(assert (=> b!145469 m!175657))

(assert (=> b!145010 d!46347))

(assert (=> b!145135 d!46303))

(assert (=> b!145008 d!46251))

(declare-fun d!46349 () Bool)

(assert (=> d!46349 (= (map!1449 (_2!1361 lt!76277)) (getCurrentListMap!560 (_keys!4756 (_2!1361 lt!76277)) (_values!2972 (_2!1361 lt!76277)) (mask!7353 (_2!1361 lt!76277)) (extraKeys!2736 (_2!1361 lt!76277)) (zeroValue!2835 (_2!1361 lt!76277)) (minValue!2835 (_2!1361 lt!76277)) #b00000000000000000000000000000000 (defaultEntry!2989 (_2!1361 lt!76277))))))

(declare-fun bs!6131 () Bool)

(assert (= bs!6131 d!46349))

(declare-fun m!175659 () Bool)

(assert (=> bs!6131 m!175659))

(assert (=> bm!16192 d!46349))

(assert (=> bm!16197 d!46197))

(declare-fun d!46351 () Bool)

(declare-fun lt!76501 () Bool)

(assert (=> d!46351 (= lt!76501 (select (content!140 (t!6429 lt!76096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!94785 () Bool)

(assert (=> d!46351 (= lt!76501 e!94785)))

(declare-fun res!69262 () Bool)

(assert (=> d!46351 (=> (not res!69262) (not e!94785))))

(assert (=> d!46351 (= res!69262 ((_ is Cons!1772) (t!6429 lt!76096)))))

(assert (=> d!46351 (= (contains!932 (t!6429 lt!76096) #b1000000000000000000000000000000000000000000000000000000000000000) lt!76501)))

(declare-fun b!145470 () Bool)

(declare-fun e!94784 () Bool)

(assert (=> b!145470 (= e!94785 e!94784)))

(declare-fun res!69263 () Bool)

(assert (=> b!145470 (=> res!69263 e!94784)))

(assert (=> b!145470 (= res!69263 (= (h!2380 (t!6429 lt!76096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145471 () Bool)

(assert (=> b!145471 (= e!94784 (contains!932 (t!6429 (t!6429 lt!76096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46351 res!69262) b!145470))

(assert (= (and b!145470 (not res!69263)) b!145471))

(assert (=> d!46351 m!175253))

(declare-fun m!175661 () Bool)

(assert (=> d!46351 m!175661))

(declare-fun m!175663 () Bool)

(assert (=> b!145471 m!175663))

(assert (=> b!145036 d!46351))

(assert (=> bm!16132 d!46275))

(declare-fun bm!16246 () Bool)

(declare-fun call!16249 () Bool)

(declare-fun c!27585 () Bool)

(assert (=> bm!16246 (= call!16249 (arrayNoDuplicates!0 (_keys!4756 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!27585 (Cons!1772 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000) Nil!1773) Nil!1773)))))

(declare-fun b!145472 () Bool)

(declare-fun e!94789 () Bool)

(assert (=> b!145472 (= e!94789 call!16249)))

(declare-fun d!46353 () Bool)

(declare-fun res!69266 () Bool)

(declare-fun e!94787 () Bool)

(assert (=> d!46353 (=> res!69266 e!94787)))

(assert (=> d!46353 (= res!69266 (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46353 (= (arrayNoDuplicates!0 (_keys!4756 newMap!16) #b00000000000000000000000000000000 Nil!1773) e!94787)))

(declare-fun b!145473 () Bool)

(declare-fun e!94788 () Bool)

(assert (=> b!145473 (= e!94788 e!94789)))

(assert (=> b!145473 (= c!27585 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145474 () Bool)

(assert (=> b!145474 (= e!94787 e!94788)))

(declare-fun res!69265 () Bool)

(assert (=> b!145474 (=> (not res!69265) (not e!94788))))

(declare-fun e!94786 () Bool)

(assert (=> b!145474 (= res!69265 (not e!94786))))

(declare-fun res!69264 () Bool)

(assert (=> b!145474 (=> (not res!69264) (not e!94786))))

(assert (=> b!145474 (= res!69264 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145475 () Bool)

(assert (=> b!145475 (= e!94786 (contains!932 Nil!1773 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!145476 () Bool)

(assert (=> b!145476 (= e!94789 call!16249)))

(assert (= (and d!46353 (not res!69266)) b!145474))

(assert (= (and b!145474 res!69264) b!145475))

(assert (= (and b!145474 res!69265) b!145473))

(assert (= (and b!145473 c!27585) b!145472))

(assert (= (and b!145473 (not c!27585)) b!145476))

(assert (= (or b!145472 b!145476) bm!16246))

(assert (=> bm!16246 m!175165))

(declare-fun m!175665 () Bool)

(assert (=> bm!16246 m!175665))

(assert (=> b!145473 m!175165))

(assert (=> b!145473 m!175165))

(assert (=> b!145473 m!175167))

(assert (=> b!145474 m!175165))

(assert (=> b!145474 m!175165))

(assert (=> b!145474 m!175167))

(assert (=> b!145475 m!175165))

(assert (=> b!145475 m!175165))

(declare-fun m!175667 () Bool)

(assert (=> b!145475 m!175667))

(assert (=> b!144996 d!46353))

(declare-fun b!145485 () Bool)

(declare-fun e!94795 () (_ BitVec 32))

(declare-fun e!94794 () (_ BitVec 32))

(assert (=> b!145485 (= e!94795 e!94794)))

(declare-fun c!27591 () Bool)

(assert (=> b!145485 (= c!27591 (validKeyInArray!0 (select (arr!2332 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!46355 () Bool)

(declare-fun lt!76504 () (_ BitVec 32))

(assert (=> d!46355 (and (bvsge lt!76504 #b00000000000000000000000000000000) (bvsle lt!76504 (bvsub (size!2607 (_keys!4756 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!46355 (= lt!76504 e!94795)))

(declare-fun c!27590 () Bool)

(assert (=> d!46355 (= c!27590 (bvsge #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46355 (and (bvsle #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2607 (_keys!4756 newMap!16)) (size!2607 (_keys!4756 newMap!16))))))

(assert (=> d!46355 (= (arrayCountValidKeys!0 (_keys!4756 newMap!16) #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) lt!76504)))

(declare-fun b!145486 () Bool)

(declare-fun call!16252 () (_ BitVec 32))

(assert (=> b!145486 (= e!94794 (bvadd #b00000000000000000000000000000001 call!16252))))

(declare-fun bm!16249 () Bool)

(assert (=> bm!16249 (= call!16252 (arrayCountValidKeys!0 (_keys!4756 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun b!145487 () Bool)

(assert (=> b!145487 (= e!94794 call!16252)))

(declare-fun b!145488 () Bool)

(assert (=> b!145488 (= e!94795 #b00000000000000000000000000000000)))

(assert (= (and d!46355 c!27590) b!145488))

(assert (= (and d!46355 (not c!27590)) b!145485))

(assert (= (and b!145485 c!27591) b!145486))

(assert (= (and b!145485 (not c!27591)) b!145487))

(assert (= (or b!145486 b!145487) bm!16249))

(assert (=> b!145485 m!175165))

(assert (=> b!145485 m!175165))

(assert (=> b!145485 m!175167))

(declare-fun m!175669 () Bool)

(assert (=> bm!16249 m!175669))

(assert (=> b!144994 d!46355))

(declare-fun b!145523 () Bool)

(declare-fun e!94813 () Bool)

(declare-fun call!16261 () Bool)

(assert (=> b!145523 (= e!94813 (not call!16261))))

(declare-fun lt!76584 () tuple2!2702)

(declare-fun b!145524 () Bool)

(declare-fun e!94814 () Bool)

(assert (=> b!145524 (= e!94814 (= (map!1449 (_2!1361 lt!76584)) (+!177 (map!1449 newMap!16) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!145525 () Bool)

(declare-fun res!69288 () Bool)

(assert (=> b!145525 (=> (not res!69288) (not e!94814))))

(assert (=> b!145525 (= res!69288 (valid!568 (_2!1361 lt!76584)))))

(declare-fun b!145526 () Bool)

(declare-fun e!94816 () Bool)

(declare-fun lt!76585 () SeekEntryResult!292)

(assert (=> b!145526 (= e!94816 ((_ is Undefined!292) lt!76585))))

(declare-fun b!145527 () Bool)

(declare-fun e!94812 () Unit!4592)

(declare-fun Unit!4608 () Unit!4592)

(assert (=> b!145527 (= e!94812 Unit!4608)))

(declare-fun b!145528 () Bool)

(declare-fun res!69287 () Bool)

(assert (=> b!145528 (=> (not res!69287) (not e!94814))))

(assert (=> b!145528 (= res!69287 (contains!933 (map!1449 (_2!1361 lt!76584)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun b!145529 () Bool)

(declare-fun c!27602 () Bool)

(assert (=> b!145529 (= c!27602 ((_ is MissingVacant!292) lt!76585))))

(declare-fun e!94815 () Bool)

(assert (=> b!145529 (= e!94815 e!94816)))

(declare-fun b!145530 () Bool)

(declare-fun e!94818 () Unit!4592)

(declare-fun lt!76579 () Unit!4592)

(assert (=> b!145530 (= e!94818 lt!76579)))

(assert (=> b!145530 (= lt!76579 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(declare-fun call!16264 () SeekEntryResult!292)

(assert (=> b!145530 (= lt!76585 call!16264)))

(declare-fun c!27601 () Bool)

(assert (=> b!145530 (= c!27601 ((_ is MissingZero!292) lt!76585))))

(assert (=> b!145530 e!94815))

(declare-fun bm!16259 () Bool)

(declare-fun call!16262 () Bool)

(declare-fun call!16263 () Bool)

(assert (=> bm!16259 (= call!16262 call!16263)))

(declare-fun b!145531 () Bool)

(assert (=> b!145531 (= e!94816 e!94813)))

(declare-fun res!69293 () Bool)

(assert (=> b!145531 (= res!69293 call!16262)))

(assert (=> b!145531 (=> (not res!69293) (not e!94813))))

(declare-fun b!145532 () Bool)

(declare-fun res!69290 () Bool)

(assert (=> b!145532 (= res!69290 call!16263)))

(declare-fun e!94819 () Bool)

(assert (=> b!145532 (=> (not res!69290) (not e!94819))))

(declare-fun lt!76577 () SeekEntryResult!292)

(declare-fun c!27603 () Bool)

(declare-fun bm!16260 () Bool)

(assert (=> bm!16260 (= call!16263 (inRange!0 (ite c!27603 (index!3335 lt!76577) (ite c!27601 (index!3334 lt!76585) (index!3337 lt!76585))) (mask!7353 newMap!16)))))

(declare-fun b!145533 () Bool)

(declare-fun e!94817 () Bool)

(assert (=> b!145533 (= e!94817 (not call!16261))))

(declare-fun bm!16258 () Bool)

(assert (=> bm!16258 (= call!16261 (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun d!46357 () Bool)

(assert (=> d!46357 e!94814))

(declare-fun res!69292 () Bool)

(assert (=> d!46357 (=> (not res!69292) (not e!94814))))

(assert (=> d!46357 (= res!69292 (_1!1361 lt!76584))))

(assert (=> d!46357 (= lt!76584 (tuple2!2703 true (LongMapFixedSize!1171 (defaultEntry!2989 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (bvadd (_size!634 newMap!16) #b00000000000000000000000000000001) (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))) (_vacant!634 newMap!16))))))

(declare-fun lt!76576 () Unit!4592)

(declare-fun lt!76568 () Unit!4592)

(assert (=> d!46357 (= lt!76576 lt!76568)))

(declare-fun lt!76570 () array!4938)

(declare-fun lt!76582 () array!4940)

(assert (=> d!46357 (contains!933 (getCurrentListMap!560 lt!76570 lt!76582 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269))))))

(assert (=> d!46357 (= lt!76568 (lemmaValidKeyInArrayIsInListMap!126 lt!76570 lt!76582 (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (defaultEntry!2989 newMap!16)))))

(assert (=> d!46357 (= lt!76582 (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))))))

(assert (=> d!46357 (= lt!76570 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun lt!76569 () Unit!4592)

(declare-fun lt!76578 () Unit!4592)

(assert (=> d!46357 (= lt!76569 lt!76578)))

(declare-fun lt!76586 () array!4938)

(assert (=> d!46357 (= (arrayCountValidKeys!0 lt!76586 (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (bvadd (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4938 (_ BitVec 32)) Unit!4592)

(assert (=> d!46357 (= lt!76578 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!76586 (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269))))))

(assert (=> d!46357 (= lt!76586 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun lt!76592 () Unit!4592)

(declare-fun lt!76583 () Unit!4592)

(assert (=> d!46357 (= lt!76592 lt!76583)))

(declare-fun lt!76574 () array!4938)

(assert (=> d!46357 (arrayContainsKey!0 lt!76574 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!46357 (= lt!76583 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!76574 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269))))))

(assert (=> d!46357 (= lt!76574 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))))))

(declare-fun lt!76594 () Unit!4592)

(declare-fun lt!76589 () Unit!4592)

(assert (=> d!46357 (= lt!76594 lt!76589)))

(assert (=> d!46357 (= (+!177 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (tuple2!2701 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!560 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))) (array!4941 (store (arr!2333 (_values!2972 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (ValueCellFull!1131 (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2608 (_values!2972 newMap!16))) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!48 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 32) (_ BitVec 64) V!3579 Int) Unit!4592)

(assert (=> d!46357 (= lt!76589 (lemmaAddValidKeyToArrayThenAddPairToListMap!48 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2989 newMap!16)))))

(declare-fun lt!76587 () Unit!4592)

(declare-fun lt!76573 () Unit!4592)

(assert (=> d!46357 (= lt!76587 lt!76573)))

(assert (=> d!46357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))) (mask!7353 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4938 (_ BitVec 32) (_ BitVec 32)) Unit!4592)

(assert (=> d!46357 (= lt!76573 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (mask!7353 newMap!16)))))

(declare-fun lt!76567 () Unit!4592)

(declare-fun lt!76591 () Unit!4592)

(assert (=> d!46357 (= lt!76567 lt!76591)))

(assert (=> d!46357 (= (arrayCountValidKeys!0 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))) #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4756 newMap!16) #b00000000000000000000000000000000 (size!2607 (_keys!4756 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4938 (_ BitVec 32) (_ BitVec 64)) Unit!4592)

(assert (=> d!46357 (= lt!76591 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4756 newMap!16) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(declare-fun lt!76581 () Unit!4592)

(declare-fun lt!76575 () Unit!4592)

(assert (=> d!46357 (= lt!76581 lt!76575)))

(declare-fun lt!76590 () List!1776)

(declare-fun lt!76571 () (_ BitVec 32))

(assert (=> d!46357 (arrayNoDuplicates!0 (array!4939 (store (arr!2332 (_keys!4756 newMap!16)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) (size!2607 (_keys!4756 newMap!16))) lt!76571 lt!76590)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4938 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1776) Unit!4592)

(assert (=> d!46357 (= lt!76575 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269)) lt!76571 lt!76590))))

(assert (=> d!46357 (= lt!76590 Nil!1773)))

(assert (=> d!46357 (= lt!76571 #b00000000000000000000000000000000)))

(declare-fun lt!76572 () Unit!4592)

(assert (=> d!46357 (= lt!76572 e!94812)))

(declare-fun c!27600 () Bool)

(assert (=> d!46357 (= c!27600 (arrayContainsKey!0 (_keys!4756 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!76580 () Unit!4592)

(assert (=> d!46357 (= lt!76580 e!94818)))

(assert (=> d!46357 (= c!27603 (contains!933 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (=> d!46357 (valid!568 newMap!16)))

(assert (=> d!46357 (= (updateHelperNewKey!68 newMap!16 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) from!355) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27502 (index!3337 lt!76269) (index!3334 lt!76269))) lt!76584)))

(declare-fun b!145534 () Bool)

(declare-fun res!69285 () Bool)

(assert (=> b!145534 (= res!69285 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3337 lt!76585)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145534 (=> (not res!69285) (not e!94813))))

(declare-fun bm!16261 () Bool)

(assert (=> bm!16261 (= call!16264 (seekEntryOrOpen!0 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (_keys!4756 newMap!16) (mask!7353 newMap!16)))))

(declare-fun b!145535 () Bool)

(declare-fun Unit!4609 () Unit!4592)

(assert (=> b!145535 (= e!94818 Unit!4609)))

(declare-fun lt!76566 () Unit!4592)

(assert (=> b!145535 (= lt!76566 (lemmaInListMapThenSeekEntryOrOpenFindsIt!68 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) (defaultEntry!2989 newMap!16)))))

(assert (=> b!145535 (= lt!76577 call!16264)))

(declare-fun res!69291 () Bool)

(assert (=> b!145535 (= res!69291 ((_ is Found!292) lt!76577))))

(assert (=> b!145535 (=> (not res!69291) (not e!94819))))

(assert (=> b!145535 e!94819))

(declare-fun lt!76588 () Unit!4592)

(assert (=> b!145535 (= lt!76588 lt!76566)))

(assert (=> b!145535 false))

(declare-fun b!145536 () Bool)

(declare-fun res!69286 () Bool)

(assert (=> b!145536 (=> (not res!69286) (not e!94817))))

(assert (=> b!145536 (= res!69286 call!16262)))

(assert (=> b!145536 (= e!94815 e!94817)))

(declare-fun b!145537 () Bool)

(declare-fun res!69289 () Bool)

(assert (=> b!145537 (=> (not res!69289) (not e!94817))))

(assert (=> b!145537 (= res!69289 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3334 lt!76585)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145538 () Bool)

(declare-fun Unit!4610 () Unit!4592)

(assert (=> b!145538 (= e!94812 Unit!4610)))

(declare-fun lt!76565 () Unit!4592)

(declare-fun lemmaArrayContainsKeyThenInListMap!48 (array!4938 array!4940 (_ BitVec 32) (_ BitVec 32) V!3579 V!3579 (_ BitVec 64) (_ BitVec 32) Int) Unit!4592)

(assert (=> b!145538 (= lt!76565 (lemmaArrayContainsKeyThenInListMap!48 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)))))

(assert (=> b!145538 (contains!933 (getCurrentListMap!560 (_keys!4756 newMap!16) (_values!2972 newMap!16) (mask!7353 newMap!16) (extraKeys!2736 newMap!16) (zeroValue!2835 newMap!16) (minValue!2835 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2989 newMap!16)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))

(declare-fun lt!76593 () Unit!4592)

(assert (=> b!145538 (= lt!76593 lt!76565)))

(assert (=> b!145538 false))

(declare-fun b!145539 () Bool)

(assert (=> b!145539 (= e!94819 (= (select (arr!2332 (_keys!4756 newMap!16)) (index!3335 lt!76577)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (= (and d!46357 c!27603) b!145535))

(assert (= (and d!46357 (not c!27603)) b!145530))

(assert (= (and b!145535 res!69291) b!145532))

(assert (= (and b!145532 res!69290) b!145539))

(assert (= (and b!145530 c!27601) b!145536))

(assert (= (and b!145530 (not c!27601)) b!145529))

(assert (= (and b!145536 res!69286) b!145537))

(assert (= (and b!145537 res!69289) b!145533))

(assert (= (and b!145529 c!27602) b!145531))

(assert (= (and b!145529 (not c!27602)) b!145526))

(assert (= (and b!145531 res!69293) b!145534))

(assert (= (and b!145534 res!69285) b!145523))

(assert (= (or b!145536 b!145531) bm!16259))

(assert (= (or b!145533 b!145523) bm!16258))

(assert (= (or b!145532 bm!16259) bm!16260))

(assert (= (or b!145535 b!145530) bm!16261))

(assert (= (and d!46357 c!27600) b!145538))

(assert (= (and d!46357 (not c!27600)) b!145527))

(assert (= (and d!46357 res!69292) b!145525))

(assert (= (and b!145525 res!69288) b!145528))

(assert (= (and b!145528 res!69287) b!145524))

(assert (=> bm!16258 m!174911))

(assert (=> bm!16258 m!175139))

(declare-fun m!175671 () Bool)

(assert (=> b!145534 m!175671))

(declare-fun m!175673 () Bool)

(assert (=> b!145528 m!175673))

(assert (=> b!145528 m!175673))

(assert (=> b!145528 m!174911))

(declare-fun m!175675 () Bool)

(assert (=> b!145528 m!175675))

(assert (=> b!145535 m!174911))

(assert (=> b!145535 m!175123))

(declare-fun m!175677 () Bool)

(assert (=> b!145539 m!175677))

(declare-fun m!175679 () Bool)

(assert (=> b!145537 m!175679))

(assert (=> bm!16261 m!174911))

(assert (=> bm!16261 m!175087))

(assert (=> b!145530 m!174911))

(assert (=> b!145530 m!175097))

(assert (=> b!145524 m!175673))

(assert (=> b!145524 m!174917))

(assert (=> b!145524 m!174917))

(declare-fun m!175681 () Bool)

(assert (=> b!145524 m!175681))

(assert (=> b!145538 m!174911))

(declare-fun m!175683 () Bool)

(assert (=> b!145538 m!175683))

(assert (=> b!145538 m!174987))

(assert (=> b!145538 m!174987))

(assert (=> b!145538 m!174911))

(assert (=> b!145538 m!175133))

(assert (=> d!46357 m!174987))

(assert (=> d!46357 m!175411))

(assert (=> d!46357 m!174911))

(assert (=> d!46357 m!175139))

(declare-fun m!175685 () Bool)

(assert (=> d!46357 m!175685))

(assert (=> d!46357 m!174987))

(assert (=> d!46357 m!174891))

(assert (=> d!46357 m!174911))

(declare-fun m!175687 () Bool)

(assert (=> d!46357 m!175687))

(assert (=> d!46357 m!174911))

(assert (=> d!46357 m!174925))

(declare-fun m!175689 () Bool)

(assert (=> d!46357 m!175689))

(declare-fun m!175691 () Bool)

(assert (=> d!46357 m!175691))

(declare-fun m!175693 () Bool)

(assert (=> d!46357 m!175693))

(assert (=> d!46357 m!175049))

(assert (=> d!46357 m!174911))

(declare-fun m!175695 () Bool)

(assert (=> d!46357 m!175695))

(assert (=> d!46357 m!174911))

(declare-fun m!175697 () Bool)

(assert (=> d!46357 m!175697))

(declare-fun m!175699 () Bool)

(assert (=> d!46357 m!175699))

(assert (=> d!46357 m!174987))

(assert (=> d!46357 m!174911))

(assert (=> d!46357 m!175133))

(assert (=> d!46357 m!174911))

(declare-fun m!175701 () Bool)

(assert (=> d!46357 m!175701))

(declare-fun m!175703 () Bool)

(assert (=> d!46357 m!175703))

(declare-fun m!175705 () Bool)

(assert (=> d!46357 m!175705))

(declare-fun m!175707 () Bool)

(assert (=> d!46357 m!175707))

(declare-fun m!175709 () Bool)

(assert (=> d!46357 m!175709))

(declare-fun m!175711 () Bool)

(assert (=> d!46357 m!175711))

(declare-fun m!175713 () Bool)

(assert (=> d!46357 m!175713))

(assert (=> d!46357 m!175711))

(assert (=> d!46357 m!175685))

(declare-fun m!175715 () Bool)

(assert (=> d!46357 m!175715))

(assert (=> d!46357 m!174911))

(declare-fun m!175717 () Bool)

(assert (=> d!46357 m!175717))

(declare-fun m!175719 () Bool)

(assert (=> d!46357 m!175719))

(declare-fun m!175721 () Bool)

(assert (=> bm!16260 m!175721))

(declare-fun m!175723 () Bool)

(assert (=> b!145525 m!175723))

(assert (=> bm!16195 d!46357))

(declare-fun d!46359 () Bool)

(assert (=> d!46359 (= (apply!123 lt!76170 (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1557 (getValueByKey!178 (toList!894 lt!76170) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!6132 () Bool)

(assert (= bs!6132 d!46359))

(assert (=> bs!6132 m!174989))

(assert (=> bs!6132 m!175649))

(assert (=> bs!6132 m!175649))

(declare-fun m!175725 () Bool)

(assert (=> bs!6132 m!175725))

(assert (=> b!144983 d!46359))

(declare-fun d!46361 () Bool)

(declare-fun c!27604 () Bool)

(assert (=> d!46361 (= c!27604 ((_ is ValueCellFull!1131) (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!94820 () V!3579)

(assert (=> d!46361 (= (get!1553 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!94820)))

(declare-fun b!145540 () Bool)

(assert (=> b!145540 (= e!94820 (get!1555 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!145541 () Bool)

(assert (=> b!145541 (= e!94820 (get!1556 (select (arr!2333 (_values!2972 (v!3320 (underlying!489 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!446 (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46361 c!27604) b!145540))

(assert (= (and d!46361 (not c!27604)) b!145541))

(assert (=> b!145540 m!175035))

(assert (=> b!145540 m!174923))

(declare-fun m!175727 () Bool)

(assert (=> b!145540 m!175727))

(assert (=> b!145541 m!175035))

(assert (=> b!145541 m!174923))

(declare-fun m!175729 () Bool)

(assert (=> b!145541 m!175729))

(assert (=> b!144983 d!46361))

(assert (=> b!145032 d!46231))

(declare-fun d!46363 () Bool)

(declare-fun res!69298 () Bool)

(declare-fun e!94825 () Bool)

(assert (=> d!46363 (=> res!69298 e!94825)))

(assert (=> d!46363 (= res!69298 (and ((_ is Cons!1773) (toList!894 lt!76099)) (= (_1!1360 (h!2381 (toList!894 lt!76099))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(assert (=> d!46363 (= (containsKey!182 (toList!894 lt!76099) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)) e!94825)))

(declare-fun b!145546 () Bool)

(declare-fun e!94826 () Bool)

(assert (=> b!145546 (= e!94825 e!94826)))

(declare-fun res!69299 () Bool)

(assert (=> b!145546 (=> (not res!69299) (not e!94826))))

(assert (=> b!145546 (= res!69299 (and (or (not ((_ is Cons!1773) (toList!894 lt!76099))) (bvsle (_1!1360 (h!2381 (toList!894 lt!76099))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))) ((_ is Cons!1773) (toList!894 lt!76099)) (bvslt (_1!1360 (h!2381 (toList!894 lt!76099))) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355))))))

(declare-fun b!145547 () Bool)

(assert (=> b!145547 (= e!94826 (containsKey!182 (t!6430 (toList!894 lt!76099)) (select (arr!2332 (_keys!4756 (v!3320 (underlying!489 thiss!992)))) from!355)))))

(assert (= (and d!46363 (not res!69298)) b!145546))

(assert (= (and b!145546 res!69299) b!145547))

(assert (=> b!145547 m!174911))

(declare-fun m!175731 () Bool)

(assert (=> b!145547 m!175731))

(assert (=> d!46221 d!46363))

(declare-fun d!46365 () Bool)

(assert (=> d!46365 (= (inRange!0 (ite c!27503 (ite c!27512 (index!3335 lt!76266) (ite c!27505 (index!3334 lt!76288) (index!3337 lt!76288))) (ite c!27499 (index!3335 lt!76284) (ite c!27511 (index!3334 lt!76287) (index!3337 lt!76287)))) (mask!7353 newMap!16)) (and (bvsge (ite c!27503 (ite c!27512 (index!3335 lt!76266) (ite c!27505 (index!3334 lt!76288) (index!3337 lt!76288))) (ite c!27499 (index!3335 lt!76284) (ite c!27511 (index!3334 lt!76287) (index!3337 lt!76287)))) #b00000000000000000000000000000000) (bvslt (ite c!27503 (ite c!27512 (index!3335 lt!76266) (ite c!27505 (index!3334 lt!76288) (index!3337 lt!76288))) (ite c!27499 (index!3335 lt!76284) (ite c!27511 (index!3334 lt!76287) (index!3337 lt!76287)))) (bvadd (mask!7353 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!16188 d!46365))

(declare-fun d!46367 () Bool)

(assert (=> d!46367 (= (apply!123 lt!76170 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1557 (getValueByKey!178 (toList!894 lt!76170) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!6133 () Bool)

(assert (= bs!6133 d!46367))

(assert (=> bs!6133 m!175637))

(assert (=> bs!6133 m!175637))

(declare-fun m!175733 () Bool)

(assert (=> bs!6133 m!175733))

(assert (=> b!144980 d!46367))

(assert (=> d!46199 d!46293))

(declare-fun mapNonEmpty!4921 () Bool)

(declare-fun mapRes!4921 () Bool)

(declare-fun tp!11707 () Bool)

(declare-fun e!94828 () Bool)

(assert (=> mapNonEmpty!4921 (= mapRes!4921 (and tp!11707 e!94828))))

(declare-fun mapKey!4921 () (_ BitVec 32))

(declare-fun mapRest!4921 () (Array (_ BitVec 32) ValueCell!1131))

(declare-fun mapValue!4921 () ValueCell!1131)

(assert (=> mapNonEmpty!4921 (= mapRest!4920 (store mapRest!4921 mapKey!4921 mapValue!4921))))

(declare-fun b!145549 () Bool)

(declare-fun e!94827 () Bool)

(assert (=> b!145549 (= e!94827 tp_is_empty!2949)))

(declare-fun condMapEmpty!4921 () Bool)

(declare-fun mapDefault!4921 () ValueCell!1131)

(assert (=> mapNonEmpty!4920 (= condMapEmpty!4921 (= mapRest!4920 ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4921)))))

(assert (=> mapNonEmpty!4920 (= tp!11706 (and e!94827 mapRes!4921))))

(declare-fun mapIsEmpty!4921 () Bool)

(assert (=> mapIsEmpty!4921 mapRes!4921))

(declare-fun b!145548 () Bool)

(assert (=> b!145548 (= e!94828 tp_is_empty!2949)))

(assert (= (and mapNonEmpty!4920 condMapEmpty!4921) mapIsEmpty!4921))

(assert (= (and mapNonEmpty!4920 (not condMapEmpty!4921)) mapNonEmpty!4921))

(assert (= (and mapNonEmpty!4921 ((_ is ValueCellFull!1131) mapValue!4921)) b!145548))

(assert (= (and mapNonEmpty!4920 ((_ is ValueCellFull!1131) mapDefault!4921)) b!145549))

(declare-fun m!175735 () Bool)

(assert (=> mapNonEmpty!4921 m!175735))

(declare-fun mapNonEmpty!4922 () Bool)

(declare-fun mapRes!4922 () Bool)

(declare-fun tp!11708 () Bool)

(declare-fun e!94830 () Bool)

(assert (=> mapNonEmpty!4922 (= mapRes!4922 (and tp!11708 e!94830))))

(declare-fun mapValue!4922 () ValueCell!1131)

(declare-fun mapKey!4922 () (_ BitVec 32))

(declare-fun mapRest!4922 () (Array (_ BitVec 32) ValueCell!1131))

(assert (=> mapNonEmpty!4922 (= mapRest!4919 (store mapRest!4922 mapKey!4922 mapValue!4922))))

(declare-fun b!145551 () Bool)

(declare-fun e!94829 () Bool)

(assert (=> b!145551 (= e!94829 tp_is_empty!2949)))

(declare-fun condMapEmpty!4922 () Bool)

(declare-fun mapDefault!4922 () ValueCell!1131)

(assert (=> mapNonEmpty!4919 (= condMapEmpty!4922 (= mapRest!4919 ((as const (Array (_ BitVec 32) ValueCell!1131)) mapDefault!4922)))))

(assert (=> mapNonEmpty!4919 (= tp!11705 (and e!94829 mapRes!4922))))

(declare-fun mapIsEmpty!4922 () Bool)

(assert (=> mapIsEmpty!4922 mapRes!4922))

(declare-fun b!145550 () Bool)

(assert (=> b!145550 (= e!94830 tp_is_empty!2949)))

(assert (= (and mapNonEmpty!4919 condMapEmpty!4922) mapIsEmpty!4922))

(assert (= (and mapNonEmpty!4919 (not condMapEmpty!4922)) mapNonEmpty!4922))

(assert (= (and mapNonEmpty!4922 ((_ is ValueCellFull!1131) mapValue!4922)) b!145550))

(assert (= (and mapNonEmpty!4919 ((_ is ValueCellFull!1131) mapDefault!4922)) b!145551))

(declare-fun m!175737 () Bool)

(assert (=> mapNonEmpty!4922 m!175737))

(declare-fun b_lambda!6551 () Bool)

(assert (= b_lambda!6545 (or (and b!144847 b_free!3065) (and b!144848 b_free!3067 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))))) b_lambda!6551)))

(declare-fun b_lambda!6553 () Bool)

(assert (= b_lambda!6549 (or (and b!144847 b_free!3065 (= (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) (defaultEntry!2989 newMap!16))) (and b!144848 b_free!3067) b_lambda!6553)))

(declare-fun b_lambda!6555 () Bool)

(assert (= b_lambda!6543 (or (and b!144847 b_free!3065) (and b!144848 b_free!3067 (= (defaultEntry!2989 newMap!16) (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))))) b_lambda!6555)))

(declare-fun b_lambda!6557 () Bool)

(assert (= b_lambda!6547 (or (and b!144847 b_free!3065 (= (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) (defaultEntry!2989 newMap!16))) (and b!144848 b_free!3067) b_lambda!6557)))

(declare-fun b_lambda!6559 () Bool)

(assert (= b_lambda!6541 (or (and b!144847 b_free!3065 (= (defaultEntry!2989 (v!3320 (underlying!489 thiss!992))) (defaultEntry!2989 newMap!16))) (and b!144848 b_free!3067) b_lambda!6559)))

(check-sat (not bm!16217) (not d!46331) (not d!46239) (not d!46313) (not d!46271) (not bm!16246) (not d!46257) (not b!145414) (not b!145376) (not b!145530) (not b!145416) (not b!145215) (not b!145394) (not d!46279) (not b!145457) (not bm!16244) (not b_lambda!6559) (not b_lambda!6555) (not d!46357) (not d!46249) (not d!46315) (not d!46259) (not b!145316) (not bm!16229) (not d!46305) (not d!46255) (not bm!16228) (not b!145409) (not b!145212) (not b!145199) (not d!46321) (not d!46317) (not d!46343) (not bm!16245) (not b_lambda!6557) (not b!145197) (not b!145285) (not d!46281) (not b!145473) (not b!145195) (not d!46235) (not bm!16233) (not b!145451) (not b_lambda!6535) (not b!145474) (not b!145464) (not b!145240) (not bm!16236) (not b!145441) (not b!145347) (not b!145198) (not b!145452) (not b!145410) (not b_lambda!6551) (not bm!16222) (not d!46283) (not b!145425) (not b!145370) (not b!145382) (not b!145194) (not b!145356) (not b!145413) (not bm!16213) (not b!145286) (not bm!16212) (not b!145528) (not d!46349) (not b!145447) (not b!145188) (not b!145353) (not b!145362) (not d!46345) (not d!46295) (not d!46359) (not b!145445) (not b!145442) (not b!145213) (not d!46287) (not b!145389) (not b!145465) (not d!46339) tp_is_empty!2949 (not b!145327) (not b!145485) (not b!145369) (not d!46367) (not bm!16241) (not b!145423) (not d!46327) (not d!46233) (not b!145204) (not b!145469) (not d!46347) (not b!145432) (not b!145460) (not b!145446) (not d!46319) (not b!145334) (not b!145524) (not d!46263) (not b!145315) (not b!145201) (not bm!16260) (not bm!16249) (not b!145427) (not b!145251) (not d!46265) (not d!46243) (not b!145318) (not d!46267) (not b!145418) (not b!145547) (not d!46227) (not b!145207) (not d!46323) (not b!145319) (not b!145449) (not d!46285) (not b!145372) (not b!145225) (not b!145405) b_and!9083 (not b!145525) (not b!145540) (not b!145467) (not b!145331) (not b!145374) (not b!145541) (not bm!16239) (not b!145330) (not b!145321) (not d!46299) (not b!145326) (not d!46261) (not b!145288) (not mapNonEmpty!4922) (not bm!16223) (not b!145448) (not b!145333) (not b_lambda!6553) (not d!46351) (not b!145435) (not b!145417) (not bm!16231) (not b!145329) (not bm!16261) (not b!145363) (not bm!16238) (not b!145453) (not b!145190) (not b!145379) (not d!46303) (not b!145475) (not b!145189) (not bm!16258) (not mapNonEmpty!4921) (not b!145456) (not b!145226) (not d!46269) (not b_next!3067) (not b!145359) (not b!145429) (not d!46275) (not bm!16215) (not b!145320) (not b!145411) (not bm!16226) (not b!145355) (not b!145462) (not b_next!3065) (not bm!16243) (not b!145404) (not b!145443) (not b!145336) (not b!145535) (not b!145328) (not d!46245) (not d!46253) (not d!46277) (not b_lambda!6539) (not d!46311) (not b!145365) (not b!145459) (not b!145422) (not d!46341) (not d!46307) b_and!9081 (not b!145471) (not d!46301) (not b!145538) (not d!46329) (not b!145287) (not b!145426) (not b!145324) (not b!145373) (not d!46297) (not d!46273))
(check-sat b_and!9081 b_and!9083 (not b_next!3065) (not b_next!3067))
