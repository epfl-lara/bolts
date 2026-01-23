; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414438 () Bool)

(assert start!414438)

(declare-fun b!4311571 () Bool)

(declare-fun b_free!128683 () Bool)

(declare-fun b_next!129387 () Bool)

(assert (=> b!4311571 (= b_free!128683 (not b_next!129387))))

(declare-fun tp!1325009 () Bool)

(declare-fun b_and!340123 () Bool)

(assert (=> b!4311571 (= tp!1325009 b_and!340123)))

(declare-fun b!4311570 () Bool)

(declare-fun b_free!128685 () Bool)

(declare-fun b_next!129389 () Bool)

(assert (=> b!4311570 (= b_free!128685 (not b_next!129389))))

(declare-fun tp!1325006 () Bool)

(declare-fun b_and!340125 () Bool)

(assert (=> b!4311570 (= tp!1325006 b_and!340125)))

(declare-fun b!4311569 () Bool)

(declare-fun e!2681631 () Bool)

(declare-fun e!2681629 () Bool)

(assert (=> b!4311569 (= e!2681631 e!2681629)))

(declare-fun e!2681638 () Bool)

(declare-fun e!2681636 () Bool)

(assert (=> b!4311570 (= e!2681638 (and e!2681636 tp!1325006))))

(declare-fun tp!1325007 () Bool)

(declare-fun e!2681637 () Bool)

(declare-fun tp!1325004 () Bool)

(declare-datatypes ((V!9651 0))(
  ( (V!9652 (val!15817 Int)) )
))
(declare-datatypes ((K!9449 0))(
  ( (K!9450 (val!15818 Int)) )
))
(declare-datatypes ((tuple2!46742 0))(
  ( (tuple2!46743 (_1!26651 K!9449) (_2!26651 V!9651)) )
))
(declare-datatypes ((List!48354 0))(
  ( (Nil!48230) (Cons!48230 (h!53671 tuple2!46742) (t!355173 List!48354)) )
))
(declare-datatypes ((array!16898 0))(
  ( (array!16899 (arr!7547 (Array (_ BitVec 32) (_ BitVec 64))) (size!35586 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4597 0))(
  ( (HashableExt!4596 (__x!30068 Int)) )
))
(declare-datatypes ((array!16900 0))(
  ( (array!16901 (arr!7548 (Array (_ BitVec 32) List!48354)) (size!35587 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9362 0))(
  ( (LongMapFixedSize!9363 (defaultEntry!5066 Int) (mask!13250 (_ BitVec 32)) (extraKeys!4930 (_ BitVec 32)) (zeroValue!4940 List!48354) (minValue!4940 List!48354) (_size!9405 (_ BitVec 32)) (_keys!4981 array!16898) (_values!4962 array!16900) (_vacant!4742 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18533 0))(
  ( (Cell!18534 (v!42413 LongMapFixedSize!9362)) )
))
(declare-datatypes ((MutLongMap!4681 0))(
  ( (LongMap!4681 (underlying!9591 Cell!18533)) (MutLongMapExt!4680 (__x!30069 Int)) )
))
(declare-datatypes ((Cell!18535 0))(
  ( (Cell!18536 (v!42414 MutLongMap!4681)) )
))
(declare-datatypes ((MutableMap!4587 0))(
  ( (MutableMapExt!4586 (__x!30070 Int)) (HashMap!4587 (underlying!9592 Cell!18535) (hashF!6735 Hashable!4597) (_size!9406 (_ BitVec 32)) (defaultValue!4758 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4587)

(declare-fun array_inv!5419 (array!16898) Bool)

(declare-fun array_inv!5420 (array!16900) Bool)

(assert (=> b!4311571 (= e!2681629 (and tp!1325009 tp!1325004 tp!1325007 (array_inv!5419 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (array_inv!5420 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) e!2681637))))

(declare-fun b!4311572 () Bool)

(declare-fun e!2681635 () Bool)

(assert (=> b!4311572 (= e!2681635 e!2681631)))

(declare-fun b!4311573 () Bool)

(declare-fun res!1767034 () Bool)

(declare-fun e!2681630 () Bool)

(assert (=> b!4311573 (=> (not res!1767034) (not e!2681630))))

(declare-fun valid!3671 (MutableMap!4587) Bool)

(assert (=> b!4311573 (= res!1767034 (valid!3671 thiss!42308))))

(declare-fun b!4311574 () Bool)

(declare-fun lt!1531823 () MutLongMap!4681)

(get-info :version)

(assert (=> b!4311574 (= e!2681636 (and e!2681635 ((_ is LongMap!4681) lt!1531823)))))

(assert (=> b!4311574 (= lt!1531823 (v!42414 (underlying!9592 thiss!42308)))))

(declare-fun res!1767041 () Bool)

(assert (=> start!414438 (=> (not res!1767041) (not e!2681630))))

(assert (=> start!414438 (= res!1767041 ((_ is HashMap!4587) thiss!42308))))

(assert (=> start!414438 e!2681630))

(assert (=> start!414438 e!2681638))

(declare-fun tp_is_empty!23829 () Bool)

(assert (=> start!414438 tp_is_empty!23829))

(declare-fun tp_is_empty!23831 () Bool)

(assert (=> start!414438 tp_is_empty!23831))

(declare-fun b!4311575 () Bool)

(declare-fun res!1767038 () Bool)

(declare-fun e!2681632 () Bool)

(assert (=> b!4311575 (=> res!1767038 e!2681632)))

(declare-datatypes ((tuple2!46744 0))(
  ( (tuple2!46745 (_1!26652 (_ BitVec 64)) (_2!26652 List!48354)) )
))
(declare-datatypes ((List!48355 0))(
  ( (Nil!48231) (Cons!48231 (h!53672 tuple2!46744) (t!355174 List!48355)) )
))
(declare-datatypes ((ListLongMap!1045 0))(
  ( (ListLongMap!1046 (toList!2433 List!48355)) )
))
(declare-fun lt!1531817 () ListLongMap!1045)

(declare-fun allKeysSameHashInMap!344 (ListLongMap!1045 Hashable!4597) Bool)

(assert (=> b!4311575 (= res!1767038 (not (allKeysSameHashInMap!344 lt!1531817 (hashF!6735 thiss!42308))))))

(declare-fun lt!1531821 () List!48354)

(declare-fun b!4311576 () Bool)

(declare-fun lt!1531819 () (_ BitVec 64))

(declare-fun allKeysSameHash!197 (List!48354 (_ BitVec 64) Hashable!4597) Bool)

(assert (=> b!4311576 (= e!2681632 (allKeysSameHash!197 lt!1531821 lt!1531819 (hashF!6735 thiss!42308)))))

(declare-fun b!4311577 () Bool)

(declare-fun e!2681633 () Bool)

(assert (=> b!4311577 (= e!2681630 e!2681633)))

(declare-fun res!1767039 () Bool)

(assert (=> b!4311577 (=> (not res!1767039) (not e!2681633))))

(declare-fun key!2048 () K!9449)

(declare-fun contains!10210 (MutableMap!4587 K!9449) Bool)

(assert (=> b!4311577 (= res!1767039 (contains!10210 thiss!42308 key!2048))))

(declare-fun map!10232 (MutLongMap!4681) ListLongMap!1045)

(assert (=> b!4311577 (= lt!1531817 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))

(declare-datatypes ((ListMap!1715 0))(
  ( (ListMap!1716 (toList!2434 List!48354)) )
))
(declare-fun lt!1531818 () ListMap!1715)

(declare-fun map!10233 (MutableMap!4587) ListMap!1715)

(assert (=> b!4311577 (= lt!1531818 (map!10233 thiss!42308))))

(declare-fun b!4311578 () Bool)

(declare-fun tp!1325010 () Bool)

(declare-fun mapRes!20894 () Bool)

(assert (=> b!4311578 (= e!2681637 (and tp!1325010 mapRes!20894))))

(declare-fun condMapEmpty!20894 () Bool)

(declare-fun mapDefault!20894 () List!48354)

(assert (=> b!4311578 (= condMapEmpty!20894 (= (arr!7548 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48354)) mapDefault!20894)))))

(declare-fun mapNonEmpty!20894 () Bool)

(declare-fun tp!1325008 () Bool)

(declare-fun tp!1325005 () Bool)

(assert (=> mapNonEmpty!20894 (= mapRes!20894 (and tp!1325008 tp!1325005))))

(declare-fun mapValue!20894 () List!48354)

(declare-fun mapRest!20894 () (Array (_ BitVec 32) List!48354))

(declare-fun mapKey!20894 () (_ BitVec 32))

(assert (=> mapNonEmpty!20894 (= (arr!7548 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (store mapRest!20894 mapKey!20894 mapValue!20894))))

(declare-fun b!4311579 () Bool)

(declare-fun res!1767036 () Bool)

(declare-fun e!2681639 () Bool)

(assert (=> b!4311579 (=> (not res!1767036) (not e!2681639))))

(declare-fun lt!1531826 () List!48354)

(declare-fun containsKey!328 (List!48354 K!9449) Bool)

(assert (=> b!4311579 (= res!1767036 (not (containsKey!328 lt!1531826 key!2048)))))

(declare-fun b!4311580 () Bool)

(declare-fun e!2681628 () Bool)

(assert (=> b!4311580 (= e!2681628 (not e!2681632))))

(declare-fun res!1767035 () Bool)

(assert (=> b!4311580 (=> res!1767035 e!2681632)))

(declare-fun lambda!133014 () Int)

(declare-fun forall!8744 (List!48355 Int) Bool)

(assert (=> b!4311580 (= res!1767035 (not (forall!8744 (toList!2433 lt!1531817) lambda!133014)))))

(assert (=> b!4311580 e!2681639))

(declare-fun res!1767037 () Bool)

(assert (=> b!4311580 (=> (not res!1767037) (not e!2681639))))

(declare-fun noDuplicateKeys!224 (List!48354) Bool)

(assert (=> b!4311580 (= res!1767037 (noDuplicateKeys!224 lt!1531826))))

(declare-datatypes ((Unit!67368 0))(
  ( (Unit!67369) )
))
(declare-fun lt!1531820 () Unit!67368)

(declare-fun lt!1531825 () List!48354)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!172 (List!48354 K!9449) Unit!67368)

(assert (=> b!4311580 (= lt!1531820 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!172 lt!1531825 key!2048))))

(assert (=> b!4311580 (allKeysSameHash!197 lt!1531826 lt!1531819 (hashF!6735 thiss!42308))))

(declare-fun lt!1531822 () Unit!67368)

(declare-fun lemmaRemovePairForKeyPreservesHash!177 (List!48354 K!9449 (_ BitVec 64) Hashable!4597) Unit!67368)

(assert (=> b!4311580 (= lt!1531822 (lemmaRemovePairForKeyPreservesHash!177 lt!1531825 key!2048 lt!1531819 (hashF!6735 thiss!42308)))))

(assert (=> b!4311580 (allKeysSameHash!197 lt!1531825 lt!1531819 (hashF!6735 thiss!42308))))

(declare-fun lt!1531824 () Unit!67368)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!184 (List!48355 (_ BitVec 64) List!48354 Hashable!4597) Unit!67368)

(assert (=> b!4311580 (= lt!1531824 (lemmaInLongMapAllKeySameHashThenForTuple!184 (toList!2433 lt!1531817) lt!1531819 lt!1531825 (hashF!6735 thiss!42308)))))

(declare-fun mapIsEmpty!20894 () Bool)

(assert (=> mapIsEmpty!20894 mapRes!20894))

(declare-fun b!4311581 () Bool)

(assert (=> b!4311581 (= e!2681633 e!2681628)))

(declare-fun res!1767040 () Bool)

(assert (=> b!4311581 (=> (not res!1767040) (not e!2681628))))

(declare-datatypes ((tuple2!46746 0))(
  ( (tuple2!46747 (_1!26653 Bool) (_2!26653 MutLongMap!4681)) )
))
(declare-fun update!453 (MutLongMap!4681 (_ BitVec 64) List!48354) tuple2!46746)

(assert (=> b!4311581 (= res!1767040 (_1!26653 (update!453 (v!42414 (underlying!9592 thiss!42308)) lt!1531819 lt!1531821)))))

(declare-fun v!9179 () V!9651)

(assert (=> b!4311581 (= lt!1531821 (Cons!48230 (tuple2!46743 key!2048 v!9179) lt!1531826))))

(declare-fun removePairForKey!223 (List!48354 K!9449) List!48354)

(assert (=> b!4311581 (= lt!1531826 (removePairForKey!223 lt!1531825 key!2048))))

(declare-fun apply!11038 (MutLongMap!4681 (_ BitVec 64)) List!48354)

(assert (=> b!4311581 (= lt!1531825 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531819))))

(declare-fun hash!1034 (Hashable!4597 K!9449) (_ BitVec 64))

(assert (=> b!4311581 (= lt!1531819 (hash!1034 (hashF!6735 thiss!42308) key!2048))))

(declare-fun b!4311582 () Bool)

(assert (=> b!4311582 (= e!2681639 (noDuplicateKeys!224 lt!1531821))))

(assert (= (and start!414438 res!1767041) b!4311573))

(assert (= (and b!4311573 res!1767034) b!4311577))

(assert (= (and b!4311577 res!1767039) b!4311581))

(assert (= (and b!4311581 res!1767040) b!4311580))

(assert (= (and b!4311580 res!1767037) b!4311579))

(assert (= (and b!4311579 res!1767036) b!4311582))

(assert (= (and b!4311580 (not res!1767035)) b!4311575))

(assert (= (and b!4311575 (not res!1767038)) b!4311576))

(assert (= (and b!4311578 condMapEmpty!20894) mapIsEmpty!20894))

(assert (= (and b!4311578 (not condMapEmpty!20894)) mapNonEmpty!20894))

(assert (= b!4311571 b!4311578))

(assert (= b!4311569 b!4311571))

(assert (= b!4311572 b!4311569))

(assert (= (and b!4311574 ((_ is LongMap!4681) (v!42414 (underlying!9592 thiss!42308)))) b!4311572))

(assert (= b!4311570 b!4311574))

(assert (= (and start!414438 ((_ is HashMap!4587) thiss!42308)) b!4311570))

(declare-fun m!4904521 () Bool)

(assert (=> mapNonEmpty!20894 m!4904521))

(declare-fun m!4904523 () Bool)

(assert (=> b!4311582 m!4904523))

(declare-fun m!4904525 () Bool)

(assert (=> b!4311580 m!4904525))

(declare-fun m!4904527 () Bool)

(assert (=> b!4311580 m!4904527))

(declare-fun m!4904529 () Bool)

(assert (=> b!4311580 m!4904529))

(declare-fun m!4904531 () Bool)

(assert (=> b!4311580 m!4904531))

(declare-fun m!4904533 () Bool)

(assert (=> b!4311580 m!4904533))

(declare-fun m!4904535 () Bool)

(assert (=> b!4311580 m!4904535))

(declare-fun m!4904537 () Bool)

(assert (=> b!4311580 m!4904537))

(declare-fun m!4904539 () Bool)

(assert (=> b!4311581 m!4904539))

(declare-fun m!4904541 () Bool)

(assert (=> b!4311581 m!4904541))

(declare-fun m!4904543 () Bool)

(assert (=> b!4311581 m!4904543))

(declare-fun m!4904545 () Bool)

(assert (=> b!4311581 m!4904545))

(declare-fun m!4904547 () Bool)

(assert (=> b!4311576 m!4904547))

(declare-fun m!4904549 () Bool)

(assert (=> b!4311573 m!4904549))

(declare-fun m!4904551 () Bool)

(assert (=> b!4311577 m!4904551))

(declare-fun m!4904553 () Bool)

(assert (=> b!4311577 m!4904553))

(declare-fun m!4904555 () Bool)

(assert (=> b!4311577 m!4904555))

(declare-fun m!4904557 () Bool)

(assert (=> b!4311571 m!4904557))

(declare-fun m!4904559 () Bool)

(assert (=> b!4311571 m!4904559))

(declare-fun m!4904561 () Bool)

(assert (=> b!4311575 m!4904561))

(declare-fun m!4904563 () Bool)

(assert (=> b!4311579 m!4904563))

(check-sat (not b!4311576) b_and!340123 (not b!4311581) (not b!4311579) tp_is_empty!23831 (not mapNonEmpty!20894) b_and!340125 (not b_next!129389) tp_is_empty!23829 (not b!4311573) (not b!4311582) (not b!4311578) (not b!4311575) (not b!4311577) (not b_next!129387) (not b!4311580) (not b!4311571))
(check-sat b_and!340123 b_and!340125 (not b_next!129389) (not b_next!129387))
(get-model)

(declare-fun bm!298066 () Bool)

(declare-fun call!298071 () ListLongMap!1045)

(assert (=> bm!298066 (= call!298071 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun d!1268243 () Bool)

(declare-fun e!2681650 () Bool)

(assert (=> d!1268243 e!2681650))

(declare-fun res!1767049 () Bool)

(assert (=> d!1268243 (=> (not res!1767049) (not e!2681650))))

(declare-fun lt!1531836 () tuple2!46746)

(assert (=> d!1268243 (= res!1767049 ((_ is LongMap!4681) (_2!26653 lt!1531836)))))

(declare-fun e!2681651 () tuple2!46746)

(assert (=> d!1268243 (= lt!1531836 e!2681651)))

(declare-fun c!733006 () Bool)

(declare-fun lt!1531837 () tuple2!46746)

(assert (=> d!1268243 (= c!733006 (_1!26653 lt!1531837))))

(declare-fun e!2681654 () tuple2!46746)

(assert (=> d!1268243 (= lt!1531837 e!2681654)))

(declare-fun c!733007 () Bool)

(declare-fun imbalanced!57 (MutLongMap!4681) Bool)

(assert (=> d!1268243 (= c!733007 (imbalanced!57 (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun valid!3672 (MutLongMap!4681) Bool)

(assert (=> d!1268243 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268243 (= (update!453 (v!42414 (underlying!9592 thiss!42308)) lt!1531819 lt!1531821) lt!1531836)))

(declare-fun b!4311601 () Bool)

(assert (=> b!4311601 (= e!2681654 (tuple2!46747 true (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun b!4311602 () Bool)

(declare-fun e!2681652 () Bool)

(declare-fun e!2681653 () Bool)

(assert (=> b!4311602 (= e!2681652 e!2681653)))

(declare-fun res!1767048 () Bool)

(declare-fun call!298072 () ListLongMap!1045)

(declare-fun contains!10211 (ListLongMap!1045 (_ BitVec 64)) Bool)

(assert (=> b!4311602 (= res!1767048 (contains!10211 call!298072 lt!1531819))))

(assert (=> b!4311602 (=> (not res!1767048) (not e!2681653))))

(declare-fun b!4311603 () Bool)

(assert (=> b!4311603 (= e!2681650 e!2681652)))

(declare-fun c!733008 () Bool)

(assert (=> b!4311603 (= c!733008 (_1!26653 lt!1531836))))

(declare-fun b!4311604 () Bool)

(assert (=> b!4311604 (= e!2681652 (= call!298072 call!298071))))

(declare-fun bm!298067 () Bool)

(assert (=> bm!298067 (= call!298072 (map!10232 (_2!26653 lt!1531836)))))

(declare-fun b!4311605 () Bool)

(declare-datatypes ((tuple2!46748 0))(
  ( (tuple2!46749 (_1!26654 Bool) (_2!26654 LongMapFixedSize!9362)) )
))
(declare-fun lt!1531835 () tuple2!46748)

(assert (=> b!4311605 (= e!2681651 (tuple2!46747 (_1!26654 lt!1531835) (LongMap!4681 (Cell!18534 (_2!26654 lt!1531835)))))))

(declare-fun update!454 (LongMapFixedSize!9362 (_ BitVec 64) List!48354) tuple2!46748)

(assert (=> b!4311605 (= lt!1531835 (update!454 (v!42413 (underlying!9591 (_2!26653 lt!1531837))) lt!1531819 lt!1531821))))

(declare-fun b!4311606 () Bool)

(declare-fun lt!1531838 () tuple2!46746)

(assert (=> b!4311606 (= e!2681654 (tuple2!46747 (_1!26653 lt!1531838) (_2!26653 lt!1531838)))))

(declare-fun repack!61 (MutLongMap!4681) tuple2!46746)

(assert (=> b!4311606 (= lt!1531838 (repack!61 (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun b!4311607 () Bool)

(assert (=> b!4311607 (= e!2681651 (tuple2!46747 false (_2!26653 lt!1531837)))))

(declare-fun b!4311608 () Bool)

(declare-fun res!1767050 () Bool)

(assert (=> b!4311608 (=> (not res!1767050) (not e!2681650))))

(assert (=> b!4311608 (= res!1767050 (valid!3672 (_2!26653 lt!1531836)))))

(declare-fun b!4311609 () Bool)

(declare-fun +!274 (ListLongMap!1045 tuple2!46744) ListLongMap!1045)

(assert (=> b!4311609 (= e!2681653 (= call!298072 (+!274 call!298071 (tuple2!46745 lt!1531819 lt!1531821))))))

(assert (= (and d!1268243 c!733007) b!4311606))

(assert (= (and d!1268243 (not c!733007)) b!4311601))

(assert (= (and d!1268243 c!733006) b!4311605))

(assert (= (and d!1268243 (not c!733006)) b!4311607))

(assert (= (and d!1268243 res!1767049) b!4311608))

(assert (= (and b!4311608 res!1767050) b!4311603))

(assert (= (and b!4311603 c!733008) b!4311602))

(assert (= (and b!4311603 (not c!733008)) b!4311604))

(assert (= (and b!4311602 res!1767048) b!4311609))

(assert (= (or b!4311609 b!4311604) bm!298066))

(assert (= (or b!4311602 b!4311609 b!4311604) bm!298067))

(declare-fun m!4904565 () Bool)

(assert (=> d!1268243 m!4904565))

(declare-fun m!4904567 () Bool)

(assert (=> d!1268243 m!4904567))

(declare-fun m!4904569 () Bool)

(assert (=> b!4311602 m!4904569))

(declare-fun m!4904571 () Bool)

(assert (=> b!4311609 m!4904571))

(declare-fun m!4904573 () Bool)

(assert (=> b!4311605 m!4904573))

(declare-fun m!4904575 () Bool)

(assert (=> bm!298067 m!4904575))

(declare-fun m!4904577 () Bool)

(assert (=> b!4311606 m!4904577))

(assert (=> bm!298066 m!4904553))

(declare-fun m!4904579 () Bool)

(assert (=> b!4311608 m!4904579))

(assert (=> b!4311581 d!1268243))

(declare-fun b!4311619 () Bool)

(declare-fun e!2681660 () List!48354)

(declare-fun e!2681659 () List!48354)

(assert (=> b!4311619 (= e!2681660 e!2681659)))

(declare-fun c!733014 () Bool)

(assert (=> b!4311619 (= c!733014 ((_ is Cons!48230) lt!1531825))))

(declare-fun d!1268245 () Bool)

(declare-fun lt!1531841 () List!48354)

(assert (=> d!1268245 (not (containsKey!328 lt!1531841 key!2048))))

(assert (=> d!1268245 (= lt!1531841 e!2681660)))

(declare-fun c!733013 () Bool)

(assert (=> d!1268245 (= c!733013 (and ((_ is Cons!48230) lt!1531825) (= (_1!26651 (h!53671 lt!1531825)) key!2048)))))

(assert (=> d!1268245 (noDuplicateKeys!224 lt!1531825)))

(assert (=> d!1268245 (= (removePairForKey!223 lt!1531825 key!2048) lt!1531841)))

(declare-fun b!4311618 () Bool)

(assert (=> b!4311618 (= e!2681660 (t!355173 lt!1531825))))

(declare-fun b!4311620 () Bool)

(assert (=> b!4311620 (= e!2681659 (Cons!48230 (h!53671 lt!1531825) (removePairForKey!223 (t!355173 lt!1531825) key!2048)))))

(declare-fun b!4311621 () Bool)

(assert (=> b!4311621 (= e!2681659 Nil!48230)))

(assert (= (and d!1268245 c!733013) b!4311618))

(assert (= (and d!1268245 (not c!733013)) b!4311619))

(assert (= (and b!4311619 c!733014) b!4311620))

(assert (= (and b!4311619 (not c!733014)) b!4311621))

(declare-fun m!4904581 () Bool)

(assert (=> d!1268245 m!4904581))

(declare-fun m!4904583 () Bool)

(assert (=> d!1268245 m!4904583))

(declare-fun m!4904585 () Bool)

(assert (=> b!4311620 m!4904585))

(assert (=> b!4311581 d!1268245))

(declare-fun d!1268247 () Bool)

(declare-fun e!2681663 () Bool)

(assert (=> d!1268247 e!2681663))

(declare-fun c!733017 () Bool)

(declare-fun contains!10212 (MutLongMap!4681 (_ BitVec 64)) Bool)

(assert (=> d!1268247 (= c!733017 (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531819))))

(declare-fun lt!1531844 () List!48354)

(declare-fun apply!11039 (LongMapFixedSize!9362 (_ BitVec 64)) List!48354)

(assert (=> d!1268247 (= lt!1531844 (apply!11039 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819))))

(assert (=> d!1268247 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268247 (= (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531819) lt!1531844)))

(declare-fun b!4311626 () Bool)

(declare-datatypes ((Option!10241 0))(
  ( (None!10240) (Some!10240 (v!42419 List!48354)) )
))
(declare-fun get!15610 (Option!10241) List!48354)

(declare-fun getValueByKey!261 (List!48355 (_ BitVec 64)) Option!10241)

(assert (=> b!4311626 (= e!2681663 (= lt!1531844 (get!15610 (getValueByKey!261 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819))))))

(declare-fun b!4311627 () Bool)

(declare-fun dynLambda!20446 (Int (_ BitVec 64)) List!48354)

(assert (=> b!4311627 (= e!2681663 (= lt!1531844 (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819)))))

(assert (=> b!4311627 ((_ is LongMap!4681) (v!42414 (underlying!9592 thiss!42308)))))

(assert (= (and d!1268247 c!733017) b!4311626))

(assert (= (and d!1268247 (not c!733017)) b!4311627))

(declare-fun b_lambda!126663 () Bool)

(assert (=> (not b_lambda!126663) (not b!4311627)))

(declare-fun t!355176 () Bool)

(declare-fun tb!257305 () Bool)

(assert (=> (and b!4311571 (= (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) t!355176) tb!257305))

(assert (=> b!4311627 t!355176))

(declare-fun result!314726 () Bool)

(declare-fun b_and!340127 () Bool)

(assert (= b_and!340123 (and (=> t!355176 result!314726) b_and!340127)))

(declare-fun m!4904587 () Bool)

(assert (=> d!1268247 m!4904587))

(declare-fun m!4904589 () Bool)

(assert (=> d!1268247 m!4904589))

(assert (=> d!1268247 m!4904567))

(assert (=> b!4311626 m!4904553))

(declare-fun m!4904591 () Bool)

(assert (=> b!4311626 m!4904591))

(assert (=> b!4311626 m!4904591))

(declare-fun m!4904593 () Bool)

(assert (=> b!4311626 m!4904593))

(declare-fun m!4904595 () Bool)

(assert (=> b!4311627 m!4904595))

(assert (=> b!4311581 d!1268247))

(declare-fun d!1268249 () Bool)

(declare-fun hash!1037 (Hashable!4597 K!9449) (_ BitVec 64))

(assert (=> d!1268249 (= (hash!1034 (hashF!6735 thiss!42308) key!2048) (hash!1037 (hashF!6735 thiss!42308) key!2048))))

(declare-fun bs!605149 () Bool)

(assert (= bs!605149 d!1268249))

(declare-fun m!4904597 () Bool)

(assert (=> bs!605149 m!4904597))

(assert (=> b!4311581 d!1268249))

(declare-fun bs!605150 () Bool)

(declare-fun b!4311632 () Bool)

(assert (= bs!605150 (and b!4311632 b!4311580)))

(declare-fun lambda!133017 () Int)

(assert (=> bs!605150 (= lambda!133017 lambda!133014)))

(declare-fun d!1268251 () Bool)

(declare-fun res!1767055 () Bool)

(declare-fun e!2681666 () Bool)

(assert (=> d!1268251 (=> (not res!1767055) (not e!2681666))))

(assert (=> d!1268251 (= res!1767055 (valid!3672 (v!42414 (underlying!9592 thiss!42308))))))

(assert (=> d!1268251 (= (valid!3671 thiss!42308) e!2681666)))

(declare-fun res!1767056 () Bool)

(assert (=> b!4311632 (=> (not res!1767056) (not e!2681666))))

(assert (=> b!4311632 (= res!1767056 (forall!8744 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133017))))

(declare-fun b!4311633 () Bool)

(assert (=> b!4311633 (= e!2681666 (allKeysSameHashInMap!344 (map!10232 (v!42414 (underlying!9592 thiss!42308))) (hashF!6735 thiss!42308)))))

(assert (= (and d!1268251 res!1767055) b!4311632))

(assert (= (and b!4311632 res!1767056) b!4311633))

(assert (=> d!1268251 m!4904567))

(assert (=> b!4311632 m!4904553))

(declare-fun m!4904599 () Bool)

(assert (=> b!4311632 m!4904599))

(assert (=> b!4311633 m!4904553))

(assert (=> b!4311633 m!4904553))

(declare-fun m!4904601 () Bool)

(assert (=> b!4311633 m!4904601))

(assert (=> b!4311573 d!1268251))

(declare-fun d!1268253 () Bool)

(declare-fun res!1767061 () Bool)

(declare-fun e!2681671 () Bool)

(assert (=> d!1268253 (=> res!1767061 e!2681671)))

(assert (=> d!1268253 (= res!1767061 (not ((_ is Cons!48230) lt!1531821)))))

(assert (=> d!1268253 (= (noDuplicateKeys!224 lt!1531821) e!2681671)))

(declare-fun b!4311638 () Bool)

(declare-fun e!2681672 () Bool)

(assert (=> b!4311638 (= e!2681671 e!2681672)))

(declare-fun res!1767062 () Bool)

(assert (=> b!4311638 (=> (not res!1767062) (not e!2681672))))

(assert (=> b!4311638 (= res!1767062 (not (containsKey!328 (t!355173 lt!1531821) (_1!26651 (h!53671 lt!1531821)))))))

(declare-fun b!4311639 () Bool)

(assert (=> b!4311639 (= e!2681672 (noDuplicateKeys!224 (t!355173 lt!1531821)))))

(assert (= (and d!1268253 (not res!1767061)) b!4311638))

(assert (= (and b!4311638 res!1767062) b!4311639))

(declare-fun m!4904603 () Bool)

(assert (=> b!4311638 m!4904603))

(declare-fun m!4904605 () Bool)

(assert (=> b!4311639 m!4904605))

(assert (=> b!4311582 d!1268253))

(declare-fun d!1268255 () Bool)

(declare-fun res!1767067 () Bool)

(declare-fun e!2681677 () Bool)

(assert (=> d!1268255 (=> res!1767067 e!2681677)))

(assert (=> d!1268255 (= res!1767067 (and ((_ is Cons!48230) lt!1531826) (= (_1!26651 (h!53671 lt!1531826)) key!2048)))))

(assert (=> d!1268255 (= (containsKey!328 lt!1531826 key!2048) e!2681677)))

(declare-fun b!4311644 () Bool)

(declare-fun e!2681678 () Bool)

(assert (=> b!4311644 (= e!2681677 e!2681678)))

(declare-fun res!1767068 () Bool)

(assert (=> b!4311644 (=> (not res!1767068) (not e!2681678))))

(assert (=> b!4311644 (= res!1767068 ((_ is Cons!48230) lt!1531826))))

(declare-fun b!4311645 () Bool)

(assert (=> b!4311645 (= e!2681678 (containsKey!328 (t!355173 lt!1531826) key!2048))))

(assert (= (and d!1268255 (not res!1767067)) b!4311644))

(assert (= (and b!4311644 res!1767068) b!4311645))

(declare-fun m!4904607 () Bool)

(assert (=> b!4311645 m!4904607))

(assert (=> b!4311579 d!1268255))

(declare-fun bs!605151 () Bool)

(declare-fun d!1268257 () Bool)

(assert (= bs!605151 (and d!1268257 b!4311580)))

(declare-fun lambda!133020 () Int)

(assert (=> bs!605151 (not (= lambda!133020 lambda!133014))))

(declare-fun bs!605152 () Bool)

(assert (= bs!605152 (and d!1268257 b!4311632)))

(assert (=> bs!605152 (not (= lambda!133020 lambda!133017))))

(assert (=> d!1268257 true))

(assert (=> d!1268257 (= (allKeysSameHashInMap!344 lt!1531817 (hashF!6735 thiss!42308)) (forall!8744 (toList!2433 lt!1531817) lambda!133020))))

(declare-fun bs!605153 () Bool)

(assert (= bs!605153 d!1268257))

(declare-fun m!4904609 () Bool)

(assert (=> bs!605153 m!4904609))

(assert (=> b!4311575 d!1268257))

(declare-fun d!1268259 () Bool)

(assert (=> d!1268259 (noDuplicateKeys!224 (removePairForKey!223 lt!1531825 key!2048))))

(declare-fun lt!1531847 () Unit!67368)

(declare-fun choose!26270 (List!48354 K!9449) Unit!67368)

(assert (=> d!1268259 (= lt!1531847 (choose!26270 lt!1531825 key!2048))))

(assert (=> d!1268259 (noDuplicateKeys!224 lt!1531825)))

(assert (=> d!1268259 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!172 lt!1531825 key!2048) lt!1531847)))

(declare-fun bs!605154 () Bool)

(assert (= bs!605154 d!1268259))

(assert (=> bs!605154 m!4904541))

(assert (=> bs!605154 m!4904541))

(declare-fun m!4904611 () Bool)

(assert (=> bs!605154 m!4904611))

(declare-fun m!4904613 () Bool)

(assert (=> bs!605154 m!4904613))

(assert (=> bs!605154 m!4904583))

(assert (=> b!4311580 d!1268259))

(declare-fun bs!605155 () Bool)

(declare-fun d!1268261 () Bool)

(assert (= bs!605155 (and d!1268261 b!4311580)))

(declare-fun lambda!133023 () Int)

(assert (=> bs!605155 (not (= lambda!133023 lambda!133014))))

(declare-fun bs!605156 () Bool)

(assert (= bs!605156 (and d!1268261 b!4311632)))

(assert (=> bs!605156 (not (= lambda!133023 lambda!133017))))

(declare-fun bs!605157 () Bool)

(assert (= bs!605157 (and d!1268261 d!1268257)))

(assert (=> bs!605157 (= lambda!133023 lambda!133020)))

(assert (=> d!1268261 true))

(assert (=> d!1268261 (allKeysSameHash!197 lt!1531825 lt!1531819 (hashF!6735 thiss!42308))))

(declare-fun lt!1531850 () Unit!67368)

(declare-fun choose!26271 (List!48355 (_ BitVec 64) List!48354 Hashable!4597) Unit!67368)

(assert (=> d!1268261 (= lt!1531850 (choose!26271 (toList!2433 lt!1531817) lt!1531819 lt!1531825 (hashF!6735 thiss!42308)))))

(assert (=> d!1268261 (forall!8744 (toList!2433 lt!1531817) lambda!133023)))

(assert (=> d!1268261 (= (lemmaInLongMapAllKeySameHashThenForTuple!184 (toList!2433 lt!1531817) lt!1531819 lt!1531825 (hashF!6735 thiss!42308)) lt!1531850)))

(declare-fun bs!605158 () Bool)

(assert (= bs!605158 d!1268261))

(assert (=> bs!605158 m!4904529))

(declare-fun m!4904615 () Bool)

(assert (=> bs!605158 m!4904615))

(declare-fun m!4904617 () Bool)

(assert (=> bs!605158 m!4904617))

(assert (=> b!4311580 d!1268261))

(declare-fun d!1268263 () Bool)

(declare-fun res!1767069 () Bool)

(declare-fun e!2681679 () Bool)

(assert (=> d!1268263 (=> res!1767069 e!2681679)))

(assert (=> d!1268263 (= res!1767069 (not ((_ is Cons!48230) lt!1531826)))))

(assert (=> d!1268263 (= (noDuplicateKeys!224 lt!1531826) e!2681679)))

(declare-fun b!4311648 () Bool)

(declare-fun e!2681680 () Bool)

(assert (=> b!4311648 (= e!2681679 e!2681680)))

(declare-fun res!1767070 () Bool)

(assert (=> b!4311648 (=> (not res!1767070) (not e!2681680))))

(assert (=> b!4311648 (= res!1767070 (not (containsKey!328 (t!355173 lt!1531826) (_1!26651 (h!53671 lt!1531826)))))))

(declare-fun b!4311649 () Bool)

(assert (=> b!4311649 (= e!2681680 (noDuplicateKeys!224 (t!355173 lt!1531826)))))

(assert (= (and d!1268263 (not res!1767069)) b!4311648))

(assert (= (and b!4311648 res!1767070) b!4311649))

(declare-fun m!4904619 () Bool)

(assert (=> b!4311648 m!4904619))

(declare-fun m!4904621 () Bool)

(assert (=> b!4311649 m!4904621))

(assert (=> b!4311580 d!1268263))

(declare-fun d!1268265 () Bool)

(declare-fun res!1767075 () Bool)

(declare-fun e!2681685 () Bool)

(assert (=> d!1268265 (=> res!1767075 e!2681685)))

(assert (=> d!1268265 (= res!1767075 ((_ is Nil!48231) (toList!2433 lt!1531817)))))

(assert (=> d!1268265 (= (forall!8744 (toList!2433 lt!1531817) lambda!133014) e!2681685)))

(declare-fun b!4311654 () Bool)

(declare-fun e!2681686 () Bool)

(assert (=> b!4311654 (= e!2681685 e!2681686)))

(declare-fun res!1767076 () Bool)

(assert (=> b!4311654 (=> (not res!1767076) (not e!2681686))))

(declare-fun dynLambda!20447 (Int tuple2!46744) Bool)

(assert (=> b!4311654 (= res!1767076 (dynLambda!20447 lambda!133014 (h!53672 (toList!2433 lt!1531817))))))

(declare-fun b!4311655 () Bool)

(assert (=> b!4311655 (= e!2681686 (forall!8744 (t!355174 (toList!2433 lt!1531817)) lambda!133014))))

(assert (= (and d!1268265 (not res!1767075)) b!4311654))

(assert (= (and b!4311654 res!1767076) b!4311655))

(declare-fun b_lambda!126665 () Bool)

(assert (=> (not b_lambda!126665) (not b!4311654)))

(declare-fun m!4904623 () Bool)

(assert (=> b!4311654 m!4904623))

(declare-fun m!4904625 () Bool)

(assert (=> b!4311655 m!4904625))

(assert (=> b!4311580 d!1268265))

(declare-fun d!1268267 () Bool)

(assert (=> d!1268267 true))

(assert (=> d!1268267 true))

(declare-fun lambda!133026 () Int)

(declare-fun forall!8745 (List!48354 Int) Bool)

(assert (=> d!1268267 (= (allKeysSameHash!197 lt!1531826 lt!1531819 (hashF!6735 thiss!42308)) (forall!8745 lt!1531826 lambda!133026))))

(declare-fun bs!605159 () Bool)

(assert (= bs!605159 d!1268267))

(declare-fun m!4904627 () Bool)

(assert (=> bs!605159 m!4904627))

(assert (=> b!4311580 d!1268267))

(declare-fun bs!605160 () Bool)

(declare-fun d!1268269 () Bool)

(assert (= bs!605160 (and d!1268269 d!1268267)))

(declare-fun lambda!133027 () Int)

(assert (=> bs!605160 (= lambda!133027 lambda!133026)))

(assert (=> d!1268269 true))

(assert (=> d!1268269 true))

(assert (=> d!1268269 (= (allKeysSameHash!197 lt!1531825 lt!1531819 (hashF!6735 thiss!42308)) (forall!8745 lt!1531825 lambda!133027))))

(declare-fun bs!605161 () Bool)

(assert (= bs!605161 d!1268269))

(declare-fun m!4904629 () Bool)

(assert (=> bs!605161 m!4904629))

(assert (=> b!4311580 d!1268269))

(declare-fun d!1268271 () Bool)

(assert (=> d!1268271 (allKeysSameHash!197 (removePairForKey!223 lt!1531825 key!2048) lt!1531819 (hashF!6735 thiss!42308))))

(declare-fun lt!1531853 () Unit!67368)

(declare-fun choose!26272 (List!48354 K!9449 (_ BitVec 64) Hashable!4597) Unit!67368)

(assert (=> d!1268271 (= lt!1531853 (choose!26272 lt!1531825 key!2048 lt!1531819 (hashF!6735 thiss!42308)))))

(assert (=> d!1268271 (noDuplicateKeys!224 lt!1531825)))

(assert (=> d!1268271 (= (lemmaRemovePairForKeyPreservesHash!177 lt!1531825 key!2048 lt!1531819 (hashF!6735 thiss!42308)) lt!1531853)))

(declare-fun bs!605162 () Bool)

(assert (= bs!605162 d!1268271))

(assert (=> bs!605162 m!4904541))

(assert (=> bs!605162 m!4904541))

(declare-fun m!4904631 () Bool)

(assert (=> bs!605162 m!4904631))

(declare-fun m!4904633 () Bool)

(assert (=> bs!605162 m!4904633))

(assert (=> bs!605162 m!4904583))

(assert (=> b!4311580 d!1268271))

(declare-fun bs!605163 () Bool)

(declare-fun d!1268273 () Bool)

(assert (= bs!605163 (and d!1268273 d!1268267)))

(declare-fun lambda!133028 () Int)

(assert (=> bs!605163 (= lambda!133028 lambda!133026)))

(declare-fun bs!605164 () Bool)

(assert (= bs!605164 (and d!1268273 d!1268269)))

(assert (=> bs!605164 (= lambda!133028 lambda!133027)))

(assert (=> d!1268273 true))

(assert (=> d!1268273 true))

(assert (=> d!1268273 (= (allKeysSameHash!197 lt!1531821 lt!1531819 (hashF!6735 thiss!42308)) (forall!8745 lt!1531821 lambda!133028))))

(declare-fun bs!605165 () Bool)

(assert (= bs!605165 d!1268273))

(declare-fun m!4904635 () Bool)

(assert (=> bs!605165 m!4904635))

(assert (=> b!4311576 d!1268273))

(declare-fun d!1268275 () Bool)

(assert (=> d!1268275 (= (array_inv!5419 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (bvsge (size!35586 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311571 d!1268275))

(declare-fun d!1268277 () Bool)

(assert (=> d!1268277 (= (array_inv!5420 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (bvsge (size!35587 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4311571 d!1268277))

(declare-fun bs!605166 () Bool)

(declare-fun b!4311687 () Bool)

(assert (= bs!605166 (and b!4311687 b!4311580)))

(declare-fun lambda!133031 () Int)

(assert (=> bs!605166 (= lambda!133031 lambda!133014)))

(declare-fun bs!605167 () Bool)

(assert (= bs!605167 (and b!4311687 b!4311632)))

(assert (=> bs!605167 (= lambda!133031 lambda!133017)))

(declare-fun bs!605168 () Bool)

(assert (= bs!605168 (and b!4311687 d!1268257)))

(assert (=> bs!605168 (not (= lambda!133031 lambda!133020))))

(declare-fun bs!605169 () Bool)

(assert (= bs!605169 (and b!4311687 d!1268261)))

(assert (=> bs!605169 (not (= lambda!133031 lambda!133023))))

(declare-fun b!4311682 () Bool)

(declare-fun e!2681705 () Unit!67368)

(declare-fun Unit!67370 () Unit!67368)

(assert (=> b!4311682 (= e!2681705 Unit!67370)))

(declare-fun b!4311683 () Bool)

(declare-fun e!2681704 () Bool)

(declare-fun call!298085 () Bool)

(assert (=> b!4311683 (= e!2681704 call!298085)))

(declare-fun e!2681707 () Bool)

(declare-fun lt!1531913 () (_ BitVec 64))

(declare-fun b!4311684 () Bool)

(declare-datatypes ((Option!10242 0))(
  ( (None!10241) (Some!10241 (v!42420 tuple2!46742)) )
))
(declare-fun isDefined!7543 (Option!10242) Bool)

(declare-fun getPair!139 (List!48354 K!9449) Option!10242)

(assert (=> b!4311684 (= e!2681707 (isDefined!7543 (getPair!139 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) key!2048)))))

(declare-fun bm!298080 () Bool)

(declare-fun call!298087 () (_ BitVec 64))

(assert (=> bm!298080 (= call!298087 (hash!1034 (hashF!6735 thiss!42308) key!2048))))

(declare-fun b!4311685 () Bool)

(declare-fun e!2681701 () Unit!67368)

(declare-fun Unit!67371 () Unit!67368)

(assert (=> b!4311685 (= e!2681701 Unit!67371)))

(declare-fun b!4311686 () Bool)

(declare-fun e!2681702 () Unit!67368)

(assert (=> b!4311686 (= e!2681702 e!2681701)))

(declare-fun res!1767083 () Bool)

(declare-fun call!298086 () Bool)

(assert (=> b!4311686 (= res!1767083 call!298086)))

(declare-fun e!2681703 () Bool)

(assert (=> b!4311686 (=> (not res!1767083) (not e!2681703))))

(declare-fun c!733027 () Bool)

(assert (=> b!4311686 (= c!733027 e!2681703)))

(declare-fun forallContained!1506 (List!48355 Int tuple2!46744) Unit!67368)

(assert (=> b!4311687 (= e!2681705 (forallContained!1506 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133031 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(declare-fun c!733029 () Bool)

(declare-fun contains!10213 (List!48355 tuple2!46744) Bool)

(assert (=> b!4311687 (= c!733029 (not (contains!10213 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)))))))

(declare-fun lt!1531905 () Unit!67368)

(declare-fun e!2681706 () Unit!67368)

(assert (=> b!4311687 (= lt!1531905 e!2681706)))

(declare-fun b!4311688 () Bool)

(assert (=> b!4311688 false))

(declare-fun lt!1531897 () Unit!67368)

(declare-fun lt!1531894 () Unit!67368)

(assert (=> b!4311688 (= lt!1531897 lt!1531894)))

(declare-fun lt!1531901 () ListLongMap!1045)

(declare-fun contains!10214 (ListMap!1715 K!9449) Bool)

(declare-fun extractMap!334 (List!48355) ListMap!1715)

(assert (=> b!4311688 (contains!10214 (extractMap!334 (toList!2433 lt!1531901)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!139 (ListLongMap!1045 K!9449 Hashable!4597) Unit!67368)

(assert (=> b!4311688 (= lt!1531894 (lemmaInLongMapThenInGenericMap!139 lt!1531901 key!2048 (hashF!6735 thiss!42308)))))

(declare-fun call!298090 () ListLongMap!1045)

(assert (=> b!4311688 (= lt!1531901 call!298090)))

(declare-fun Unit!67372 () Unit!67368)

(assert (=> b!4311688 (= e!2681701 Unit!67372)))

(declare-fun lt!1531902 () ListLongMap!1045)

(declare-fun bm!298081 () Bool)

(declare-fun c!733026 () Bool)

(assert (=> bm!298081 (= call!298086 (contains!10211 (ite c!733026 lt!1531902 call!298090) call!298087))))

(declare-fun call!298088 () List!48354)

(declare-fun bm!298082 () Bool)

(declare-fun apply!11040 (ListLongMap!1045 (_ BitVec 64)) List!48354)

(assert (=> bm!298082 (= call!298088 (apply!11040 (ite c!733026 lt!1531902 call!298090) call!298087))))

(declare-fun bm!298083 () Bool)

(declare-fun call!298089 () Option!10242)

(assert (=> bm!298083 (= call!298085 (isDefined!7543 call!298089))))

(declare-fun bm!298084 () Bool)

(assert (=> bm!298084 (= call!298089 (getPair!139 call!298088 key!2048))))

(declare-fun bm!298085 () Bool)

(assert (=> bm!298085 (= call!298090 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun b!4311689 () Bool)

(assert (=> b!4311689 (= e!2681703 call!298085)))

(declare-fun d!1268279 () Bool)

(declare-fun lt!1531911 () Bool)

(assert (=> d!1268279 (= lt!1531911 (contains!10214 (map!10233 thiss!42308) key!2048))))

(assert (=> d!1268279 (= lt!1531911 e!2681707)))

(declare-fun res!1767084 () Bool)

(assert (=> d!1268279 (=> (not res!1767084) (not e!2681707))))

(assert (=> d!1268279 (= res!1767084 (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))

(declare-fun lt!1531895 () Unit!67368)

(assert (=> d!1268279 (= lt!1531895 e!2681702)))

(assert (=> d!1268279 (= c!733026 (contains!10214 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) key!2048))))

(declare-fun lt!1531899 () Unit!67368)

(assert (=> d!1268279 (= lt!1531899 e!2681705)))

(declare-fun c!733028 () Bool)

(assert (=> d!1268279 (= c!733028 (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))

(assert (=> d!1268279 (= lt!1531913 (hash!1034 (hashF!6735 thiss!42308) key!2048))))

(assert (=> d!1268279 (valid!3671 thiss!42308)))

(assert (=> d!1268279 (= (contains!10210 thiss!42308 key!2048) lt!1531911)))

(declare-fun b!4311690 () Bool)

(declare-fun Unit!67373 () Unit!67368)

(assert (=> b!4311690 (= e!2681706 Unit!67373)))

(declare-fun b!4311691 () Bool)

(assert (=> b!4311691 false))

(declare-fun lt!1531898 () Unit!67368)

(declare-fun lt!1531896 () Unit!67368)

(assert (=> b!4311691 (= lt!1531898 lt!1531896)))

(declare-fun lt!1531909 () List!48355)

(declare-fun lt!1531908 () List!48354)

(assert (=> b!4311691 (contains!10213 lt!1531909 (tuple2!46745 lt!1531913 lt!1531908))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!150 (List!48355 (_ BitVec 64) List!48354) Unit!67368)

(assert (=> b!4311691 (= lt!1531896 (lemmaGetValueByKeyImpliesContainsTuple!150 lt!1531909 lt!1531913 lt!1531908))))

(assert (=> b!4311691 (= lt!1531908 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))

(assert (=> b!4311691 (= lt!1531909 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))

(declare-fun lt!1531900 () Unit!67368)

(declare-fun lt!1531910 () Unit!67368)

(assert (=> b!4311691 (= lt!1531900 lt!1531910)))

(declare-fun lt!1531904 () List!48355)

(declare-fun isDefined!7544 (Option!10241) Bool)

(assert (=> b!4311691 (isDefined!7544 (getValueByKey!261 lt!1531904 lt!1531913))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!181 (List!48355 (_ BitVec 64)) Unit!67368)

(assert (=> b!4311691 (= lt!1531910 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 lt!1531904 lt!1531913))))

(assert (=> b!4311691 (= lt!1531904 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))

(declare-fun lt!1531903 () Unit!67368)

(declare-fun lt!1531906 () Unit!67368)

(assert (=> b!4311691 (= lt!1531903 lt!1531906)))

(declare-fun lt!1531907 () List!48355)

(declare-fun containsKey!329 (List!48355 (_ BitVec 64)) Bool)

(assert (=> b!4311691 (containsKey!329 lt!1531907 lt!1531913)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!140 (List!48355 (_ BitVec 64)) Unit!67368)

(assert (=> b!4311691 (= lt!1531906 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!140 lt!1531907 lt!1531913))))

(assert (=> b!4311691 (= lt!1531907 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))

(declare-fun Unit!67374 () Unit!67368)

(assert (=> b!4311691 (= e!2681706 Unit!67374)))

(declare-fun b!4311692 () Bool)

(declare-fun lt!1531912 () Unit!67368)

(assert (=> b!4311692 (= e!2681702 lt!1531912)))

(assert (=> b!4311692 (= lt!1531902 call!298090)))

(declare-fun lemmaInGenericMapThenInLongMap!139 (ListLongMap!1045 K!9449 Hashable!4597) Unit!67368)

(assert (=> b!4311692 (= lt!1531912 (lemmaInGenericMapThenInLongMap!139 lt!1531902 key!2048 (hashF!6735 thiss!42308)))))

(declare-fun res!1767085 () Bool)

(assert (=> b!4311692 (= res!1767085 call!298086)))

(assert (=> b!4311692 (=> (not res!1767085) (not e!2681704))))

(assert (=> b!4311692 e!2681704))

(assert (= (and d!1268279 c!733028) b!4311687))

(assert (= (and d!1268279 (not c!733028)) b!4311682))

(assert (= (and b!4311687 c!733029) b!4311691))

(assert (= (and b!4311687 (not c!733029)) b!4311690))

(assert (= (and d!1268279 c!733026) b!4311692))

(assert (= (and d!1268279 (not c!733026)) b!4311686))

(assert (= (and b!4311692 res!1767085) b!4311683))

(assert (= (and b!4311686 res!1767083) b!4311689))

(assert (= (and b!4311686 c!733027) b!4311688))

(assert (= (and b!4311686 (not c!733027)) b!4311685))

(assert (= (or b!4311692 b!4311683 b!4311686 b!4311689) bm!298080))

(assert (= (or b!4311692 b!4311686 b!4311689 b!4311688) bm!298085))

(assert (= (or b!4311692 b!4311686) bm!298081))

(assert (= (or b!4311683 b!4311689) bm!298082))

(assert (= (or b!4311683 b!4311689) bm!298084))

(assert (= (or b!4311683 b!4311689) bm!298083))

(assert (= (and d!1268279 res!1767084) b!4311684))

(declare-fun m!4904637 () Bool)

(assert (=> bm!298081 m!4904637))

(declare-fun m!4904639 () Bool)

(assert (=> bm!298082 m!4904639))

(declare-fun m!4904641 () Bool)

(assert (=> bm!298084 m!4904641))

(declare-fun m!4904643 () Bool)

(assert (=> b!4311688 m!4904643))

(assert (=> b!4311688 m!4904643))

(declare-fun m!4904645 () Bool)

(assert (=> b!4311688 m!4904645))

(declare-fun m!4904647 () Bool)

(assert (=> b!4311688 m!4904647))

(assert (=> bm!298085 m!4904553))

(declare-fun m!4904649 () Bool)

(assert (=> d!1268279 m!4904649))

(declare-fun m!4904651 () Bool)

(assert (=> d!1268279 m!4904651))

(assert (=> d!1268279 m!4904649))

(assert (=> d!1268279 m!4904549))

(assert (=> d!1268279 m!4904553))

(declare-fun m!4904653 () Bool)

(assert (=> d!1268279 m!4904653))

(assert (=> d!1268279 m!4904545))

(assert (=> d!1268279 m!4904555))

(assert (=> d!1268279 m!4904555))

(declare-fun m!4904655 () Bool)

(assert (=> d!1268279 m!4904655))

(assert (=> b!4311687 m!4904553))

(declare-fun m!4904657 () Bool)

(assert (=> b!4311687 m!4904657))

(declare-fun m!4904659 () Bool)

(assert (=> b!4311687 m!4904659))

(declare-fun m!4904661 () Bool)

(assert (=> b!4311687 m!4904661))

(assert (=> bm!298080 m!4904545))

(declare-fun m!4904663 () Bool)

(assert (=> bm!298083 m!4904663))

(assert (=> b!4311684 m!4904657))

(assert (=> b!4311684 m!4904657))

(declare-fun m!4904665 () Bool)

(assert (=> b!4311684 m!4904665))

(assert (=> b!4311684 m!4904665))

(declare-fun m!4904667 () Bool)

(assert (=> b!4311684 m!4904667))

(declare-fun m!4904669 () Bool)

(assert (=> b!4311692 m!4904669))

(declare-fun m!4904671 () Bool)

(assert (=> b!4311691 m!4904671))

(declare-fun m!4904673 () Bool)

(assert (=> b!4311691 m!4904673))

(declare-fun m!4904675 () Bool)

(assert (=> b!4311691 m!4904675))

(declare-fun m!4904677 () Bool)

(assert (=> b!4311691 m!4904677))

(declare-fun m!4904679 () Bool)

(assert (=> b!4311691 m!4904679))

(assert (=> b!4311691 m!4904657))

(assert (=> b!4311691 m!4904673))

(declare-fun m!4904681 () Bool)

(assert (=> b!4311691 m!4904681))

(declare-fun m!4904683 () Bool)

(assert (=> b!4311691 m!4904683))

(assert (=> b!4311691 m!4904553))

(assert (=> b!4311577 d!1268279))

(declare-fun d!1268281 () Bool)

(declare-fun map!10234 (LongMapFixedSize!9362) ListLongMap!1045)

(assert (=> d!1268281 (= (map!10232 (v!42414 (underlying!9592 thiss!42308))) (map!10234 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))

(declare-fun bs!605170 () Bool)

(assert (= bs!605170 d!1268281))

(declare-fun m!4904685 () Bool)

(assert (=> bs!605170 m!4904685))

(assert (=> b!4311577 d!1268281))

(declare-fun d!1268283 () Bool)

(declare-fun lt!1531916 () ListMap!1715)

(declare-fun invariantList!578 (List!48354) Bool)

(assert (=> d!1268283 (invariantList!578 (toList!2434 lt!1531916))))

(assert (=> d!1268283 (= lt!1531916 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))

(assert (=> d!1268283 (valid!3671 thiss!42308)))

(assert (=> d!1268283 (= (map!10233 thiss!42308) lt!1531916)))

(declare-fun bs!605171 () Bool)

(assert (= bs!605171 d!1268283))

(declare-fun m!4904687 () Bool)

(assert (=> bs!605171 m!4904687))

(assert (=> bs!605171 m!4904553))

(assert (=> bs!605171 m!4904649))

(assert (=> bs!605171 m!4904549))

(assert (=> b!4311577 d!1268283))

(declare-fun tp!1325013 () Bool)

(declare-fun e!2681710 () Bool)

(declare-fun b!4311697 () Bool)

(assert (=> b!4311697 (= e!2681710 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325013))))

(assert (=> b!4311578 (= tp!1325010 e!2681710)))

(assert (= (and b!4311578 ((_ is Cons!48230) mapDefault!20894)) b!4311697))

(declare-fun b!4311704 () Bool)

(declare-fun tp!1325021 () Bool)

(declare-fun e!2681716 () Bool)

(assert (=> b!4311704 (= e!2681716 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325021))))

(declare-fun condMapEmpty!20897 () Bool)

(declare-fun mapDefault!20897 () List!48354)

(assert (=> mapNonEmpty!20894 (= condMapEmpty!20897 (= mapRest!20894 ((as const (Array (_ BitVec 32) List!48354)) mapDefault!20897)))))

(declare-fun e!2681715 () Bool)

(declare-fun mapRes!20897 () Bool)

(assert (=> mapNonEmpty!20894 (= tp!1325008 (and e!2681715 mapRes!20897))))

(declare-fun mapIsEmpty!20897 () Bool)

(assert (=> mapIsEmpty!20897 mapRes!20897))

(declare-fun b!4311705 () Bool)

(declare-fun tp!1325022 () Bool)

(assert (=> b!4311705 (= e!2681715 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325022))))

(declare-fun mapNonEmpty!20897 () Bool)

(declare-fun tp!1325020 () Bool)

(assert (=> mapNonEmpty!20897 (= mapRes!20897 (and tp!1325020 e!2681716))))

(declare-fun mapKey!20897 () (_ BitVec 32))

(declare-fun mapValue!20897 () List!48354)

(declare-fun mapRest!20897 () (Array (_ BitVec 32) List!48354))

(assert (=> mapNonEmpty!20897 (= mapRest!20894 (store mapRest!20897 mapKey!20897 mapValue!20897))))

(assert (= (and mapNonEmpty!20894 condMapEmpty!20897) mapIsEmpty!20897))

(assert (= (and mapNonEmpty!20894 (not condMapEmpty!20897)) mapNonEmpty!20897))

(assert (= (and mapNonEmpty!20897 ((_ is Cons!48230) mapValue!20897)) b!4311704))

(assert (= (and mapNonEmpty!20894 ((_ is Cons!48230) mapDefault!20897)) b!4311705))

(declare-fun m!4904689 () Bool)

(assert (=> mapNonEmpty!20897 m!4904689))

(declare-fun e!2681717 () Bool)

(declare-fun b!4311706 () Bool)

(declare-fun tp!1325023 () Bool)

(assert (=> b!4311706 (= e!2681717 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325023))))

(assert (=> mapNonEmpty!20894 (= tp!1325005 e!2681717)))

(assert (= (and mapNonEmpty!20894 ((_ is Cons!48230) mapValue!20894)) b!4311706))

(declare-fun b!4311707 () Bool)

(declare-fun e!2681718 () Bool)

(declare-fun tp!1325024 () Bool)

(assert (=> b!4311707 (= e!2681718 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325024))))

(assert (=> b!4311571 (= tp!1325004 e!2681718)))

(assert (= (and b!4311571 ((_ is Cons!48230) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))) b!4311707))

(declare-fun tp!1325025 () Bool)

(declare-fun b!4311708 () Bool)

(declare-fun e!2681719 () Bool)

(assert (=> b!4311708 (= e!2681719 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325025))))

(assert (=> b!4311571 (= tp!1325007 e!2681719)))

(assert (= (and b!4311571 ((_ is Cons!48230) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))) b!4311708))

(declare-fun b_lambda!126667 () Bool)

(assert (= b_lambda!126663 (or (and b!4311571 b_free!128683) b_lambda!126667)))

(declare-fun b_lambda!126669 () Bool)

(assert (= b_lambda!126665 (or b!4311580 b_lambda!126669)))

(declare-fun bs!605172 () Bool)

(declare-fun d!1268285 () Bool)

(assert (= bs!605172 (and d!1268285 b!4311580)))

(assert (=> bs!605172 (= (dynLambda!20447 lambda!133014 (h!53672 (toList!2433 lt!1531817))) (noDuplicateKeys!224 (_2!26652 (h!53672 (toList!2433 lt!1531817)))))))

(declare-fun m!4904691 () Bool)

(assert (=> bs!605172 m!4904691))

(assert (=> b!4311654 d!1268285))

(check-sat (not d!1268261) (not b!4311633) (not d!1268271) (not d!1268245) (not b!4311605) (not b!4311649) (not d!1268259) (not b!4311632) (not tb!257305) (not mapNonEmpty!20897) (not b_lambda!126669) (not b!4311655) (not b_next!129387) (not d!1268281) (not b!4311687) (not b!4311638) (not bm!298067) (not b!4311626) (not d!1268273) (not b!4311697) (not d!1268269) (not bm!298083) (not b!4311609) (not b!4311620) (not bm!298084) (not bm!298081) tp_is_empty!23831 (not b!4311645) (not bs!605172) (not d!1268251) b_and!340127 (not bm!298085) (not d!1268249) (not d!1268283) (not b!4311688) (not b!4311706) (not bm!298066) (not b!4311704) (not b!4311606) (not b!4311602) (not b!4311705) (not b!4311684) (not b!4311639) (not d!1268243) (not bm!298082) (not b_lambda!126667) (not b!4311608) b_and!340125 (not d!1268267) (not b_next!129389) (not d!1268257) (not b!4311648) (not b!4311707) (not d!1268247) tp_is_empty!23829 (not b!4311692) (not d!1268279) (not bm!298080) (not b!4311691) (not b!4311708))
(check-sat b_and!340127 b_and!340125 (not b_next!129389) (not b_next!129387))
(get-model)

(declare-fun c!733041 () Bool)

(declare-fun lt!1531943 () tuple2!46748)

(declare-fun call!298101 () tuple2!46748)

(declare-fun bm!298094 () Bool)

(declare-fun c!733039 () Bool)

(declare-fun call!298100 () LongMapFixedSize!9362)

(assert (=> bm!298094 (= call!298101 (update!454 (ite c!733039 (_2!26654 lt!1531943) call!298100) (ite c!733039 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!733041 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!733039 (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (ite c!733041 (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))))

(declare-fun bm!298095 () Bool)

(declare-fun call!298102 () LongMapFixedSize!9362)

(assert (=> bm!298095 (= call!298100 call!298102)))

(declare-fun b!4311729 () Bool)

(declare-datatypes ((tuple3!5494 0))(
  ( (tuple3!5495 (_1!26655 Bool) (_2!26655 Cell!18533) (_3!3280 MutLongMap!4681)) )
))
(declare-fun e!2681735 () tuple3!5494)

(declare-datatypes ((tuple2!46750 0))(
  ( (tuple2!46751 (_1!26656 Bool) (_2!26656 Cell!18533)) )
))
(declare-fun lt!1531946 () tuple2!46750)

(assert (=> b!4311729 (= e!2681735 (tuple3!5495 false (_2!26656 lt!1531946) (v!42414 (underlying!9592 thiss!42308))))))

(declare-fun b!4311730 () Bool)

(declare-fun e!2681732 () tuple2!46750)

(declare-fun lt!1531945 () tuple2!46748)

(assert (=> b!4311730 (= e!2681732 (tuple2!46751 (and (_1!26654 lt!1531943) (_1!26654 lt!1531945)) (Cell!18534 (_2!26654 lt!1531945))))))

(assert (=> b!4311730 (= lt!1531943 (update!454 call!298102 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(assert (=> b!4311730 (= lt!1531945 call!298101)))

(declare-fun b!4311731 () Bool)

(declare-fun e!2681736 () Bool)

(declare-fun e!2681733 () Bool)

(assert (=> b!4311731 (= e!2681736 e!2681733)))

(declare-fun res!1767091 () Bool)

(assert (=> b!4311731 (=> res!1767091 e!2681733)))

(declare-fun lt!1531938 () tuple2!46746)

(assert (=> b!4311731 (= res!1767091 (= (_1!26653 lt!1531938) false))))

(declare-fun b!4311732 () Bool)

(declare-fun lt!1531941 () tuple2!46748)

(assert (=> b!4311732 (= e!2681735 (ite (_1!26654 lt!1531941) (tuple3!5495 true (underlying!9591 (v!42414 (underlying!9592 thiss!42308))) (LongMap!4681 (Cell!18534 (_2!26654 lt!1531941)))) (tuple3!5495 false (Cell!18534 (_2!26654 lt!1531941)) (v!42414 (underlying!9592 thiss!42308)))))))

(declare-fun repackFrom!7 (MutLongMap!4681 LongMapFixedSize!9362 (_ BitVec 32)) tuple2!46748)

(assert (=> b!4311732 (= lt!1531941 (repackFrom!7 (v!42414 (underlying!9592 thiss!42308)) (v!42413 (_2!26656 lt!1531946)) (bvsub (size!35586 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4311734 () Bool)

(declare-fun c!733038 () Bool)

(assert (=> b!4311734 (= c!733038 (and (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2681734 () tuple2!46750)

(declare-fun e!2681737 () tuple2!46750)

(assert (=> b!4311734 (= e!2681734 e!2681737)))

(declare-fun bm!298096 () Bool)

(declare-fun call!298099 () tuple2!46748)

(assert (=> bm!298096 (= call!298099 call!298101)))

(declare-fun b!4311735 () Bool)

(declare-fun lt!1531939 () tuple2!46748)

(assert (=> b!4311735 (= lt!1531939 call!298099)))

(assert (=> b!4311735 (= e!2681734 (tuple2!46751 (_1!26654 lt!1531939) (Cell!18534 (_2!26654 lt!1531939))))))

(declare-fun b!4311736 () Bool)

(declare-fun lt!1531937 () Cell!18533)

(assert (=> b!4311736 (= e!2681737 (tuple2!46751 true lt!1531937))))

(declare-fun bm!298097 () Bool)

(declare-fun lt!1531940 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!21 ((_ BitVec 32) Int) LongMapFixedSize!9362)

(assert (=> bm!298097 (= call!298102 (getNewLongMapFixedSize!21 lt!1531940 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311737 () Bool)

(declare-fun lt!1531944 () tuple2!46748)

(assert (=> b!4311737 (= e!2681737 (tuple2!46751 (_1!26654 lt!1531944) (Cell!18534 (_2!26654 lt!1531944))))))

(assert (=> b!4311737 (= lt!1531944 call!298099)))

(declare-fun b!4311738 () Bool)

(assert (=> b!4311738 (= e!2681733 (= (map!10232 (_2!26653 lt!1531938)) (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))

(declare-fun d!1268287 () Bool)

(assert (=> d!1268287 e!2681736))

(declare-fun res!1767090 () Bool)

(assert (=> d!1268287 (=> (not res!1767090) (not e!2681736))))

(assert (=> d!1268287 (= res!1767090 ((_ is LongMap!4681) (_2!26653 lt!1531938)))))

(declare-fun lt!1531942 () tuple3!5494)

(assert (=> d!1268287 (= lt!1531938 (tuple2!46747 (_1!26655 lt!1531942) (_3!3280 lt!1531942)))))

(assert (=> d!1268287 (= lt!1531942 e!2681735)))

(declare-fun c!733040 () Bool)

(assert (=> d!1268287 (= c!733040 (not (_1!26656 lt!1531946)))))

(assert (=> d!1268287 (= lt!1531946 e!2681732)))

(assert (=> d!1268287 (= c!733039 (and (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1268287 (= lt!1531937 (Cell!18534 (getNewLongMapFixedSize!21 lt!1531940 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))))

(declare-fun computeNewMask!7 (MutLongMap!4681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1268287 (= lt!1531940 (computeNewMask!7 (v!42414 (underlying!9592 thiss!42308)) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_vacant!4742 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_size!9405 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(assert (=> d!1268287 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268287 (= (repack!61 (v!42414 (underlying!9592 thiss!42308))) lt!1531938)))

(declare-fun b!4311733 () Bool)

(assert (=> b!4311733 (= e!2681732 e!2681734)))

(assert (=> b!4311733 (= c!733041 (and (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!1268287 c!733039) b!4311730))

(assert (= (and d!1268287 (not c!733039)) b!4311733))

(assert (= (and b!4311733 c!733041) b!4311735))

(assert (= (and b!4311733 (not c!733041)) b!4311734))

(assert (= (and b!4311734 c!733038) b!4311737))

(assert (= (and b!4311734 (not c!733038)) b!4311736))

(assert (= (or b!4311735 b!4311737) bm!298095))

(assert (= (or b!4311735 b!4311737) bm!298096))

(assert (= (or b!4311730 bm!298095) bm!298097))

(assert (= (or b!4311730 bm!298096) bm!298094))

(assert (= (and d!1268287 c!733040) b!4311729))

(assert (= (and d!1268287 (not c!733040)) b!4311732))

(assert (= (and d!1268287 res!1767090) b!4311731))

(assert (= (and b!4311731 (not res!1767091)) b!4311738))

(declare-fun m!4904693 () Bool)

(assert (=> b!4311732 m!4904693))

(declare-fun m!4904695 () Bool)

(assert (=> b!4311730 m!4904695))

(declare-fun m!4904697 () Bool)

(assert (=> bm!298094 m!4904697))

(declare-fun m!4904699 () Bool)

(assert (=> d!1268287 m!4904699))

(declare-fun m!4904701 () Bool)

(assert (=> d!1268287 m!4904701))

(assert (=> d!1268287 m!4904567))

(assert (=> bm!298097 m!4904699))

(declare-fun m!4904703 () Bool)

(assert (=> b!4311738 m!4904703))

(assert (=> b!4311738 m!4904553))

(assert (=> b!4311606 d!1268287))

(declare-fun d!1268289 () Bool)

(declare-fun res!1767092 () Bool)

(declare-fun e!2681738 () Bool)

(assert (=> d!1268289 (=> res!1767092 e!2681738)))

(assert (=> d!1268289 (= res!1767092 ((_ is Nil!48231) (toList!2433 lt!1531817)))))

(assert (=> d!1268289 (= (forall!8744 (toList!2433 lt!1531817) lambda!133020) e!2681738)))

(declare-fun b!4311739 () Bool)

(declare-fun e!2681739 () Bool)

(assert (=> b!4311739 (= e!2681738 e!2681739)))

(declare-fun res!1767093 () Bool)

(assert (=> b!4311739 (=> (not res!1767093) (not e!2681739))))

(assert (=> b!4311739 (= res!1767093 (dynLambda!20447 lambda!133020 (h!53672 (toList!2433 lt!1531817))))))

(declare-fun b!4311740 () Bool)

(assert (=> b!4311740 (= e!2681739 (forall!8744 (t!355174 (toList!2433 lt!1531817)) lambda!133020))))

(assert (= (and d!1268289 (not res!1767092)) b!4311739))

(assert (= (and b!4311739 res!1767093) b!4311740))

(declare-fun b_lambda!126671 () Bool)

(assert (=> (not b_lambda!126671) (not b!4311739)))

(declare-fun m!4904705 () Bool)

(assert (=> b!4311739 m!4904705))

(declare-fun m!4904707 () Bool)

(assert (=> b!4311740 m!4904707))

(assert (=> d!1268257 d!1268289))

(declare-fun d!1268291 () Bool)

(declare-fun valid!3673 (LongMapFixedSize!9362) Bool)

(assert (=> d!1268291 (= (valid!3672 (_2!26653 lt!1531836)) (valid!3673 (v!42413 (underlying!9591 (_2!26653 lt!1531836)))))))

(declare-fun bs!605173 () Bool)

(assert (= bs!605173 d!1268291))

(declare-fun m!4904709 () Bool)

(assert (=> bs!605173 m!4904709))

(assert (=> b!4311608 d!1268291))

(declare-fun d!1268293 () Bool)

(declare-fun res!1767098 () Bool)

(declare-fun e!2681744 () Bool)

(assert (=> d!1268293 (=> res!1767098 e!2681744)))

(assert (=> d!1268293 (= res!1767098 ((_ is Nil!48230) lt!1531826))))

(assert (=> d!1268293 (= (forall!8745 lt!1531826 lambda!133026) e!2681744)))

(declare-fun b!4311745 () Bool)

(declare-fun e!2681745 () Bool)

(assert (=> b!4311745 (= e!2681744 e!2681745)))

(declare-fun res!1767099 () Bool)

(assert (=> b!4311745 (=> (not res!1767099) (not e!2681745))))

(declare-fun dynLambda!20448 (Int tuple2!46742) Bool)

(assert (=> b!4311745 (= res!1767099 (dynLambda!20448 lambda!133026 (h!53671 lt!1531826)))))

(declare-fun b!4311746 () Bool)

(assert (=> b!4311746 (= e!2681745 (forall!8745 (t!355173 lt!1531826) lambda!133026))))

(assert (= (and d!1268293 (not res!1767098)) b!4311745))

(assert (= (and b!4311745 res!1767099) b!4311746))

(declare-fun b_lambda!126673 () Bool)

(assert (=> (not b_lambda!126673) (not b!4311745)))

(declare-fun m!4904711 () Bool)

(assert (=> b!4311745 m!4904711))

(declare-fun m!4904713 () Bool)

(assert (=> b!4311746 m!4904713))

(assert (=> d!1268267 d!1268293))

(declare-fun d!1268295 () Bool)

(declare-fun e!2681748 () Bool)

(assert (=> d!1268295 e!2681748))

(declare-fun res!1767104 () Bool)

(assert (=> d!1268295 (=> (not res!1767104) (not e!2681748))))

(declare-fun lt!1531955 () ListLongMap!1045)

(assert (=> d!1268295 (= res!1767104 (contains!10211 lt!1531955 (_1!26652 (tuple2!46745 lt!1531819 lt!1531821))))))

(declare-fun lt!1531958 () List!48355)

(assert (=> d!1268295 (= lt!1531955 (ListLongMap!1046 lt!1531958))))

(declare-fun lt!1531956 () Unit!67368)

(declare-fun lt!1531957 () Unit!67368)

(assert (=> d!1268295 (= lt!1531956 lt!1531957)))

(assert (=> d!1268295 (= (getValueByKey!261 lt!1531958 (_1!26652 (tuple2!46745 lt!1531819 lt!1531821))) (Some!10240 (_2!26652 (tuple2!46745 lt!1531819 lt!1531821))))))

(declare-fun lemmaContainsTupThenGetReturnValue!75 (List!48355 (_ BitVec 64) List!48354) Unit!67368)

(assert (=> d!1268295 (= lt!1531957 (lemmaContainsTupThenGetReturnValue!75 lt!1531958 (_1!26652 (tuple2!46745 lt!1531819 lt!1531821)) (_2!26652 (tuple2!46745 lt!1531819 lt!1531821))))))

(declare-fun insertStrictlySorted!39 (List!48355 (_ BitVec 64) List!48354) List!48355)

(assert (=> d!1268295 (= lt!1531958 (insertStrictlySorted!39 (toList!2433 call!298071) (_1!26652 (tuple2!46745 lt!1531819 lt!1531821)) (_2!26652 (tuple2!46745 lt!1531819 lt!1531821))))))

(assert (=> d!1268295 (= (+!274 call!298071 (tuple2!46745 lt!1531819 lt!1531821)) lt!1531955)))

(declare-fun b!4311751 () Bool)

(declare-fun res!1767105 () Bool)

(assert (=> b!4311751 (=> (not res!1767105) (not e!2681748))))

(assert (=> b!4311751 (= res!1767105 (= (getValueByKey!261 (toList!2433 lt!1531955) (_1!26652 (tuple2!46745 lt!1531819 lt!1531821))) (Some!10240 (_2!26652 (tuple2!46745 lt!1531819 lt!1531821)))))))

(declare-fun b!4311752 () Bool)

(assert (=> b!4311752 (= e!2681748 (contains!10213 (toList!2433 lt!1531955) (tuple2!46745 lt!1531819 lt!1531821)))))

(assert (= (and d!1268295 res!1767104) b!4311751))

(assert (= (and b!4311751 res!1767105) b!4311752))

(declare-fun m!4904715 () Bool)

(assert (=> d!1268295 m!4904715))

(declare-fun m!4904717 () Bool)

(assert (=> d!1268295 m!4904717))

(declare-fun m!4904719 () Bool)

(assert (=> d!1268295 m!4904719))

(declare-fun m!4904721 () Bool)

(assert (=> d!1268295 m!4904721))

(declare-fun m!4904723 () Bool)

(assert (=> b!4311751 m!4904723))

(declare-fun m!4904725 () Bool)

(assert (=> b!4311752 m!4904725))

(assert (=> b!4311609 d!1268295))

(declare-fun d!1268297 () Bool)

(declare-fun res!1767106 () Bool)

(declare-fun e!2681749 () Bool)

(assert (=> d!1268297 (=> res!1767106 e!2681749)))

(assert (=> d!1268297 (= res!1767106 ((_ is Nil!48231) (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))

(assert (=> d!1268297 (= (forall!8744 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133017) e!2681749)))

(declare-fun b!4311753 () Bool)

(declare-fun e!2681750 () Bool)

(assert (=> b!4311753 (= e!2681749 e!2681750)))

(declare-fun res!1767107 () Bool)

(assert (=> b!4311753 (=> (not res!1767107) (not e!2681750))))

(assert (=> b!4311753 (= res!1767107 (dynLambda!20447 lambda!133017 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311754 () Bool)

(assert (=> b!4311754 (= e!2681750 (forall!8744 (t!355174 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) lambda!133017))))

(assert (= (and d!1268297 (not res!1767106)) b!4311753))

(assert (= (and b!4311753 res!1767107) b!4311754))

(declare-fun b_lambda!126675 () Bool)

(assert (=> (not b_lambda!126675) (not b!4311753)))

(declare-fun m!4904727 () Bool)

(assert (=> b!4311753 m!4904727))

(declare-fun m!4904729 () Bool)

(assert (=> b!4311754 m!4904729))

(assert (=> b!4311632 d!1268297))

(assert (=> b!4311632 d!1268281))

(declare-fun d!1268299 () Bool)

(assert (=> d!1268299 (= (valid!3672 (v!42414 (underlying!9592 thiss!42308))) (valid!3673 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))

(declare-fun bs!605174 () Bool)

(assert (= bs!605174 d!1268299))

(declare-fun m!4904731 () Bool)

(assert (=> bs!605174 m!4904731))

(assert (=> d!1268251 d!1268299))

(declare-fun bs!605175 () Bool)

(declare-fun d!1268301 () Bool)

(assert (= bs!605175 (and d!1268301 b!4311687)))

(declare-fun lambda!133032 () Int)

(assert (=> bs!605175 (not (= lambda!133032 lambda!133031))))

(declare-fun bs!605176 () Bool)

(assert (= bs!605176 (and d!1268301 d!1268257)))

(assert (=> bs!605176 (= lambda!133032 lambda!133020)))

(declare-fun bs!605177 () Bool)

(assert (= bs!605177 (and d!1268301 b!4311632)))

(assert (=> bs!605177 (not (= lambda!133032 lambda!133017))))

(declare-fun bs!605178 () Bool)

(assert (= bs!605178 (and d!1268301 d!1268261)))

(assert (=> bs!605178 (= lambda!133032 lambda!133023)))

(declare-fun bs!605179 () Bool)

(assert (= bs!605179 (and d!1268301 b!4311580)))

(assert (=> bs!605179 (not (= lambda!133032 lambda!133014))))

(assert (=> d!1268301 true))

(assert (=> d!1268301 (= (allKeysSameHashInMap!344 (map!10232 (v!42414 (underlying!9592 thiss!42308))) (hashF!6735 thiss!42308)) (forall!8744 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133032))))

(declare-fun bs!605180 () Bool)

(assert (= bs!605180 d!1268301))

(declare-fun m!4904733 () Bool)

(assert (=> bs!605180 m!4904733))

(assert (=> b!4311633 d!1268301))

(assert (=> b!4311633 d!1268281))

(declare-fun d!1268303 () Bool)

(declare-fun res!1767108 () Bool)

(declare-fun e!2681751 () Bool)

(assert (=> d!1268303 (=> res!1767108 e!2681751)))

(assert (=> d!1268303 (= res!1767108 (not ((_ is Cons!48230) (_2!26652 (h!53672 (toList!2433 lt!1531817))))))))

(assert (=> d!1268303 (= (noDuplicateKeys!224 (_2!26652 (h!53672 (toList!2433 lt!1531817)))) e!2681751)))

(declare-fun b!4311755 () Bool)

(declare-fun e!2681752 () Bool)

(assert (=> b!4311755 (= e!2681751 e!2681752)))

(declare-fun res!1767109 () Bool)

(assert (=> b!4311755 (=> (not res!1767109) (not e!2681752))))

(assert (=> b!4311755 (= res!1767109 (not (containsKey!328 (t!355173 (_2!26652 (h!53672 (toList!2433 lt!1531817)))) (_1!26651 (h!53671 (_2!26652 (h!53672 (toList!2433 lt!1531817))))))))))

(declare-fun b!4311756 () Bool)

(assert (=> b!4311756 (= e!2681752 (noDuplicateKeys!224 (t!355173 (_2!26652 (h!53672 (toList!2433 lt!1531817))))))))

(assert (= (and d!1268303 (not res!1767108)) b!4311755))

(assert (= (and b!4311755 res!1767109) b!4311756))

(declare-fun m!4904735 () Bool)

(assert (=> b!4311755 m!4904735))

(declare-fun m!4904737 () Bool)

(assert (=> b!4311756 m!4904737))

(assert (=> bs!605172 d!1268303))

(declare-fun d!1268305 () Bool)

(declare-fun res!1767110 () Bool)

(declare-fun e!2681753 () Bool)

(assert (=> d!1268305 (=> res!1767110 e!2681753)))

(assert (=> d!1268305 (= res!1767110 (not ((_ is Cons!48230) (removePairForKey!223 lt!1531825 key!2048))))))

(assert (=> d!1268305 (= (noDuplicateKeys!224 (removePairForKey!223 lt!1531825 key!2048)) e!2681753)))

(declare-fun b!4311757 () Bool)

(declare-fun e!2681754 () Bool)

(assert (=> b!4311757 (= e!2681753 e!2681754)))

(declare-fun res!1767111 () Bool)

(assert (=> b!4311757 (=> (not res!1767111) (not e!2681754))))

(assert (=> b!4311757 (= res!1767111 (not (containsKey!328 (t!355173 (removePairForKey!223 lt!1531825 key!2048)) (_1!26651 (h!53671 (removePairForKey!223 lt!1531825 key!2048))))))))

(declare-fun b!4311758 () Bool)

(assert (=> b!4311758 (= e!2681754 (noDuplicateKeys!224 (t!355173 (removePairForKey!223 lt!1531825 key!2048))))))

(assert (= (and d!1268305 (not res!1767110)) b!4311757))

(assert (= (and b!4311757 res!1767111) b!4311758))

(declare-fun m!4904739 () Bool)

(assert (=> b!4311757 m!4904739))

(declare-fun m!4904741 () Bool)

(assert (=> b!4311758 m!4904741))

(assert (=> d!1268259 d!1268305))

(assert (=> d!1268259 d!1268245))

(declare-fun d!1268307 () Bool)

(assert (=> d!1268307 (noDuplicateKeys!224 (removePairForKey!223 lt!1531825 key!2048))))

(assert (=> d!1268307 true))

(declare-fun _$23!160 () Unit!67368)

(assert (=> d!1268307 (= (choose!26270 lt!1531825 key!2048) _$23!160)))

(declare-fun bs!605181 () Bool)

(assert (= bs!605181 d!1268307))

(assert (=> bs!605181 m!4904541))

(assert (=> bs!605181 m!4904541))

(assert (=> bs!605181 m!4904611))

(assert (=> d!1268259 d!1268307))

(declare-fun d!1268309 () Bool)

(declare-fun res!1767112 () Bool)

(declare-fun e!2681755 () Bool)

(assert (=> d!1268309 (=> res!1767112 e!2681755)))

(assert (=> d!1268309 (= res!1767112 (not ((_ is Cons!48230) lt!1531825)))))

(assert (=> d!1268309 (= (noDuplicateKeys!224 lt!1531825) e!2681755)))

(declare-fun b!4311759 () Bool)

(declare-fun e!2681756 () Bool)

(assert (=> b!4311759 (= e!2681755 e!2681756)))

(declare-fun res!1767113 () Bool)

(assert (=> b!4311759 (=> (not res!1767113) (not e!2681756))))

(assert (=> b!4311759 (= res!1767113 (not (containsKey!328 (t!355173 lt!1531825) (_1!26651 (h!53671 lt!1531825)))))))

(declare-fun b!4311760 () Bool)

(assert (=> b!4311760 (= e!2681756 (noDuplicateKeys!224 (t!355173 lt!1531825)))))

(assert (= (and d!1268309 (not res!1767112)) b!4311759))

(assert (= (and b!4311759 res!1767113) b!4311760))

(declare-fun m!4904743 () Bool)

(assert (=> b!4311759 m!4904743))

(declare-fun m!4904745 () Bool)

(assert (=> b!4311760 m!4904745))

(assert (=> d!1268259 d!1268309))

(declare-fun d!1268311 () Bool)

(declare-fun isEmpty!28086 (Option!10242) Bool)

(assert (=> d!1268311 (= (isDefined!7543 (getPair!139 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) key!2048)) (not (isEmpty!28086 (getPair!139 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) key!2048))))))

(declare-fun bs!605182 () Bool)

(assert (= bs!605182 d!1268311))

(assert (=> bs!605182 m!4904665))

(declare-fun m!4904747 () Bool)

(assert (=> bs!605182 m!4904747))

(assert (=> b!4311684 d!1268311))

(declare-fun b!4311777 () Bool)

(declare-fun e!2681770 () Option!10242)

(assert (=> b!4311777 (= e!2681770 None!10241)))

(declare-fun b!4311778 () Bool)

(declare-fun e!2681767 () Option!10242)

(assert (=> b!4311778 (= e!2681767 (Some!10241 (h!53671 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(declare-fun b!4311779 () Bool)

(declare-fun lt!1531961 () Option!10242)

(declare-fun e!2681768 () Bool)

(declare-fun contains!10215 (List!48354 tuple2!46742) Bool)

(declare-fun get!15611 (Option!10242) tuple2!46742)

(assert (=> b!4311779 (= e!2681768 (contains!10215 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) (get!15611 lt!1531961)))))

(declare-fun b!4311780 () Bool)

(assert (=> b!4311780 (= e!2681767 e!2681770)))

(declare-fun c!733047 () Bool)

(assert (=> b!4311780 (= c!733047 ((_ is Cons!48230) (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)))))

(declare-fun b!4311781 () Bool)

(declare-fun e!2681769 () Bool)

(assert (=> b!4311781 (= e!2681769 e!2681768)))

(declare-fun res!1767125 () Bool)

(assert (=> b!4311781 (=> (not res!1767125) (not e!2681768))))

(assert (=> b!4311781 (= res!1767125 (isDefined!7543 lt!1531961))))

(declare-fun b!4311782 () Bool)

(declare-fun res!1767124 () Bool)

(assert (=> b!4311782 (=> (not res!1767124) (not e!2681768))))

(assert (=> b!4311782 (= res!1767124 (= (_1!26651 (get!15611 lt!1531961)) key!2048))))

(declare-fun d!1268313 () Bool)

(assert (=> d!1268313 e!2681769))

(declare-fun res!1767122 () Bool)

(assert (=> d!1268313 (=> res!1767122 e!2681769)))

(declare-fun e!2681771 () Bool)

(assert (=> d!1268313 (= res!1767122 e!2681771)))

(declare-fun res!1767123 () Bool)

(assert (=> d!1268313 (=> (not res!1767123) (not e!2681771))))

(assert (=> d!1268313 (= res!1767123 (isEmpty!28086 lt!1531961))))

(assert (=> d!1268313 (= lt!1531961 e!2681767)))

(declare-fun c!733046 () Bool)

(assert (=> d!1268313 (= c!733046 (and ((_ is Cons!48230) (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)) (= (_1!26651 (h!53671 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))) key!2048)))))

(assert (=> d!1268313 (noDuplicateKeys!224 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))

(assert (=> d!1268313 (= (getPair!139 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) key!2048) lt!1531961)))

(declare-fun b!4311783 () Bool)

(assert (=> b!4311783 (= e!2681771 (not (containsKey!328 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) key!2048)))))

(declare-fun b!4311784 () Bool)

(assert (=> b!4311784 (= e!2681770 (getPair!139 (t!355173 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)) key!2048))))

(assert (= (and d!1268313 c!733046) b!4311778))

(assert (= (and d!1268313 (not c!733046)) b!4311780))

(assert (= (and b!4311780 c!733047) b!4311784))

(assert (= (and b!4311780 (not c!733047)) b!4311777))

(assert (= (and d!1268313 res!1767123) b!4311783))

(assert (= (and d!1268313 (not res!1767122)) b!4311781))

(assert (= (and b!4311781 res!1767125) b!4311782))

(assert (= (and b!4311782 res!1767124) b!4311779))

(declare-fun m!4904749 () Bool)

(assert (=> b!4311784 m!4904749))

(declare-fun m!4904751 () Bool)

(assert (=> b!4311781 m!4904751))

(assert (=> b!4311783 m!4904657))

(declare-fun m!4904753 () Bool)

(assert (=> b!4311783 m!4904753))

(declare-fun m!4904755 () Bool)

(assert (=> d!1268313 m!4904755))

(assert (=> d!1268313 m!4904657))

(declare-fun m!4904757 () Bool)

(assert (=> d!1268313 m!4904757))

(declare-fun m!4904759 () Bool)

(assert (=> b!4311782 m!4904759))

(assert (=> b!4311779 m!4904759))

(assert (=> b!4311779 m!4904657))

(assert (=> b!4311779 m!4904759))

(declare-fun m!4904761 () Bool)

(assert (=> b!4311779 m!4904761))

(assert (=> b!4311684 d!1268313))

(declare-fun d!1268315 () Bool)

(declare-fun e!2681772 () Bool)

(assert (=> d!1268315 e!2681772))

(declare-fun c!733048 () Bool)

(assert (=> d!1268315 (= c!733048 (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))

(declare-fun lt!1531962 () List!48354)

(assert (=> d!1268315 (= lt!1531962 (apply!11039 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531913))))

(assert (=> d!1268315 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268315 (= (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) lt!1531962)))

(declare-fun b!4311785 () Bool)

(assert (=> b!4311785 (= e!2681772 (= lt!1531962 (get!15610 (getValueByKey!261 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lt!1531913))))))

(declare-fun b!4311786 () Bool)

(assert (=> b!4311786 (= e!2681772 (= lt!1531962 (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531913)))))

(assert (=> b!4311786 ((_ is LongMap!4681) (v!42414 (underlying!9592 thiss!42308)))))

(assert (= (and d!1268315 c!733048) b!4311785))

(assert (= (and d!1268315 (not c!733048)) b!4311786))

(declare-fun b_lambda!126677 () Bool)

(assert (=> (not b_lambda!126677) (not b!4311786)))

(declare-fun t!355178 () Bool)

(declare-fun tb!257307 () Bool)

(assert (=> (and b!4311571 (= (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) t!355178) tb!257307))

(assert (=> b!4311786 t!355178))

(declare-fun result!314732 () Bool)

(declare-fun b_and!340129 () Bool)

(assert (= b_and!340127 (and (=> t!355178 result!314732) b_and!340129)))

(assert (=> d!1268315 m!4904653))

(declare-fun m!4904763 () Bool)

(assert (=> d!1268315 m!4904763))

(assert (=> d!1268315 m!4904567))

(assert (=> b!4311785 m!4904553))

(declare-fun m!4904765 () Bool)

(assert (=> b!4311785 m!4904765))

(assert (=> b!4311785 m!4904765))

(declare-fun m!4904767 () Bool)

(assert (=> b!4311785 m!4904767))

(declare-fun m!4904769 () Bool)

(assert (=> b!4311786 m!4904769))

(assert (=> b!4311684 d!1268315))

(assert (=> bm!298080 d!1268249))

(declare-fun d!1268317 () Bool)

(declare-fun res!1767126 () Bool)

(declare-fun e!2681773 () Bool)

(assert (=> d!1268317 (=> res!1767126 e!2681773)))

(assert (=> d!1268317 (= res!1767126 (and ((_ is Cons!48230) (t!355173 lt!1531826)) (= (_1!26651 (h!53671 (t!355173 lt!1531826))) (_1!26651 (h!53671 lt!1531826)))))))

(assert (=> d!1268317 (= (containsKey!328 (t!355173 lt!1531826) (_1!26651 (h!53671 lt!1531826))) e!2681773)))

(declare-fun b!4311787 () Bool)

(declare-fun e!2681774 () Bool)

(assert (=> b!4311787 (= e!2681773 e!2681774)))

(declare-fun res!1767127 () Bool)

(assert (=> b!4311787 (=> (not res!1767127) (not e!2681774))))

(assert (=> b!4311787 (= res!1767127 ((_ is Cons!48230) (t!355173 lt!1531826)))))

(declare-fun b!4311788 () Bool)

(assert (=> b!4311788 (= e!2681774 (containsKey!328 (t!355173 (t!355173 lt!1531826)) (_1!26651 (h!53671 lt!1531826))))))

(assert (= (and d!1268317 (not res!1767126)) b!4311787))

(assert (= (and b!4311787 res!1767127) b!4311788))

(declare-fun m!4904771 () Bool)

(assert (=> b!4311788 m!4904771))

(assert (=> b!4311648 d!1268317))

(declare-fun b!4311790 () Bool)

(declare-fun e!2681776 () List!48354)

(declare-fun e!2681775 () List!48354)

(assert (=> b!4311790 (= e!2681776 e!2681775)))

(declare-fun c!733050 () Bool)

(assert (=> b!4311790 (= c!733050 ((_ is Cons!48230) (t!355173 lt!1531825)))))

(declare-fun d!1268319 () Bool)

(declare-fun lt!1531963 () List!48354)

(assert (=> d!1268319 (not (containsKey!328 lt!1531963 key!2048))))

(assert (=> d!1268319 (= lt!1531963 e!2681776)))

(declare-fun c!733049 () Bool)

(assert (=> d!1268319 (= c!733049 (and ((_ is Cons!48230) (t!355173 lt!1531825)) (= (_1!26651 (h!53671 (t!355173 lt!1531825))) key!2048)))))

(assert (=> d!1268319 (noDuplicateKeys!224 (t!355173 lt!1531825))))

(assert (=> d!1268319 (= (removePairForKey!223 (t!355173 lt!1531825) key!2048) lt!1531963)))

(declare-fun b!4311789 () Bool)

(assert (=> b!4311789 (= e!2681776 (t!355173 (t!355173 lt!1531825)))))

(declare-fun b!4311791 () Bool)

(assert (=> b!4311791 (= e!2681775 (Cons!48230 (h!53671 (t!355173 lt!1531825)) (removePairForKey!223 (t!355173 (t!355173 lt!1531825)) key!2048)))))

(declare-fun b!4311792 () Bool)

(assert (=> b!4311792 (= e!2681775 Nil!48230)))

(assert (= (and d!1268319 c!733049) b!4311789))

(assert (= (and d!1268319 (not c!733049)) b!4311790))

(assert (= (and b!4311790 c!733050) b!4311791))

(assert (= (and b!4311790 (not c!733050)) b!4311792))

(declare-fun m!4904773 () Bool)

(assert (=> d!1268319 m!4904773))

(assert (=> d!1268319 m!4904745))

(declare-fun m!4904775 () Bool)

(assert (=> b!4311791 m!4904775))

(assert (=> b!4311620 d!1268319))

(declare-fun d!1268321 () Bool)

(declare-fun res!1767128 () Bool)

(declare-fun e!2681777 () Bool)

(assert (=> d!1268321 (=> res!1767128 e!2681777)))

(assert (=> d!1268321 (= res!1767128 (not ((_ is Cons!48230) (t!355173 lt!1531826))))))

(assert (=> d!1268321 (= (noDuplicateKeys!224 (t!355173 lt!1531826)) e!2681777)))

(declare-fun b!4311793 () Bool)

(declare-fun e!2681778 () Bool)

(assert (=> b!4311793 (= e!2681777 e!2681778)))

(declare-fun res!1767129 () Bool)

(assert (=> b!4311793 (=> (not res!1767129) (not e!2681778))))

(assert (=> b!4311793 (= res!1767129 (not (containsKey!328 (t!355173 (t!355173 lt!1531826)) (_1!26651 (h!53671 (t!355173 lt!1531826))))))))

(declare-fun b!4311794 () Bool)

(assert (=> b!4311794 (= e!2681778 (noDuplicateKeys!224 (t!355173 (t!355173 lt!1531826))))))

(assert (= (and d!1268321 (not res!1767128)) b!4311793))

(assert (= (and b!4311793 res!1767129) b!4311794))

(declare-fun m!4904777 () Bool)

(assert (=> b!4311793 m!4904777))

(declare-fun m!4904779 () Bool)

(assert (=> b!4311794 m!4904779))

(assert (=> b!4311649 d!1268321))

(declare-fun d!1268323 () Bool)

(declare-fun res!1767130 () Bool)

(declare-fun e!2681779 () Bool)

(assert (=> d!1268323 (=> res!1767130 e!2681779)))

(assert (=> d!1268323 (= res!1767130 (and ((_ is Cons!48230) (t!355173 lt!1531821)) (= (_1!26651 (h!53671 (t!355173 lt!1531821))) (_1!26651 (h!53671 lt!1531821)))))))

(assert (=> d!1268323 (= (containsKey!328 (t!355173 lt!1531821) (_1!26651 (h!53671 lt!1531821))) e!2681779)))

(declare-fun b!4311795 () Bool)

(declare-fun e!2681780 () Bool)

(assert (=> b!4311795 (= e!2681779 e!2681780)))

(declare-fun res!1767131 () Bool)

(assert (=> b!4311795 (=> (not res!1767131) (not e!2681780))))

(assert (=> b!4311795 (= res!1767131 ((_ is Cons!48230) (t!355173 lt!1531821)))))

(declare-fun b!4311796 () Bool)

(assert (=> b!4311796 (= e!2681780 (containsKey!328 (t!355173 (t!355173 lt!1531821)) (_1!26651 (h!53671 lt!1531821))))))

(assert (= (and d!1268323 (not res!1767130)) b!4311795))

(assert (= (and b!4311795 res!1767131) b!4311796))

(declare-fun m!4904781 () Bool)

(assert (=> b!4311796 m!4904781))

(assert (=> b!4311638 d!1268323))

(declare-fun d!1268325 () Bool)

(assert (=> d!1268325 (dynLambda!20447 lambda!133031 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)))))

(declare-fun lt!1531966 () Unit!67368)

(declare-fun choose!26273 (List!48355 Int tuple2!46744) Unit!67368)

(assert (=> d!1268325 (= lt!1531966 (choose!26273 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133031 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(declare-fun e!2681783 () Bool)

(assert (=> d!1268325 e!2681783))

(declare-fun res!1767134 () Bool)

(assert (=> d!1268325 (=> (not res!1767134) (not e!2681783))))

(assert (=> d!1268325 (= res!1767134 (forall!8744 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133031))))

(assert (=> d!1268325 (= (forallContained!1506 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133031 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))) lt!1531966)))

(declare-fun b!4311799 () Bool)

(assert (=> b!4311799 (= e!2681783 (contains!10213 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(assert (= (and d!1268325 res!1767134) b!4311799))

(declare-fun b_lambda!126679 () Bool)

(assert (=> (not b_lambda!126679) (not d!1268325)))

(declare-fun m!4904783 () Bool)

(assert (=> d!1268325 m!4904783))

(declare-fun m!4904785 () Bool)

(assert (=> d!1268325 m!4904785))

(declare-fun m!4904787 () Bool)

(assert (=> d!1268325 m!4904787))

(assert (=> b!4311799 m!4904661))

(assert (=> b!4311687 d!1268325))

(assert (=> b!4311687 d!1268281))

(assert (=> b!4311687 d!1268315))

(declare-fun d!1268327 () Bool)

(declare-fun lt!1531969 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7556 (List!48355) (InoxSet tuple2!46744))

(assert (=> d!1268327 (= lt!1531969 (select (content!7556 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(declare-fun e!2681788 () Bool)

(assert (=> d!1268327 (= lt!1531969 e!2681788)))

(declare-fun res!1767140 () Bool)

(assert (=> d!1268327 (=> (not res!1767140) (not e!2681788))))

(assert (=> d!1268327 (= res!1767140 ((_ is Cons!48231) (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))

(assert (=> d!1268327 (= (contains!10213 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))) lt!1531969)))

(declare-fun b!4311804 () Bool)

(declare-fun e!2681789 () Bool)

(assert (=> b!4311804 (= e!2681788 e!2681789)))

(declare-fun res!1767139 () Bool)

(assert (=> b!4311804 (=> res!1767139 e!2681789)))

(assert (=> b!4311804 (= res!1767139 (= (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(declare-fun b!4311805 () Bool)

(assert (=> b!4311805 (= e!2681789 (contains!10213 (t!355174 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))))))

(assert (= (and d!1268327 res!1767140) b!4311804))

(assert (= (and b!4311804 (not res!1767139)) b!4311805))

(declare-fun m!4904789 () Bool)

(assert (=> d!1268327 m!4904789))

(declare-fun m!4904791 () Bool)

(assert (=> d!1268327 m!4904791))

(declare-fun m!4904793 () Bool)

(assert (=> b!4311805 m!4904793))

(assert (=> b!4311687 d!1268327))

(declare-fun d!1268329 () Bool)

(declare-fun res!1767141 () Bool)

(declare-fun e!2681790 () Bool)

(assert (=> d!1268329 (=> res!1767141 e!2681790)))

(assert (=> d!1268329 (= res!1767141 (not ((_ is Cons!48230) (t!355173 lt!1531821))))))

(assert (=> d!1268329 (= (noDuplicateKeys!224 (t!355173 lt!1531821)) e!2681790)))

(declare-fun b!4311806 () Bool)

(declare-fun e!2681791 () Bool)

(assert (=> b!4311806 (= e!2681790 e!2681791)))

(declare-fun res!1767142 () Bool)

(assert (=> b!4311806 (=> (not res!1767142) (not e!2681791))))

(assert (=> b!4311806 (= res!1767142 (not (containsKey!328 (t!355173 (t!355173 lt!1531821)) (_1!26651 (h!53671 (t!355173 lt!1531821))))))))

(declare-fun b!4311807 () Bool)

(assert (=> b!4311807 (= e!2681791 (noDuplicateKeys!224 (t!355173 (t!355173 lt!1531821))))))

(assert (= (and d!1268329 (not res!1767141)) b!4311806))

(assert (= (and b!4311806 res!1767142) b!4311807))

(declare-fun m!4904795 () Bool)

(assert (=> b!4311806 m!4904795))

(declare-fun m!4904797 () Bool)

(assert (=> b!4311807 m!4904797))

(assert (=> b!4311639 d!1268329))

(declare-fun b!4311826 () Bool)

(declare-fun e!2681808 () Unit!67368)

(declare-fun e!2681805 () Unit!67368)

(assert (=> b!4311826 (= e!2681808 e!2681805)))

(declare-fun c!733059 () Bool)

(declare-fun call!298105 () Bool)

(assert (=> b!4311826 (= c!733059 call!298105)))

(declare-fun b!4311827 () Bool)

(declare-fun e!2681809 () Bool)

(declare-datatypes ((List!48356 0))(
  ( (Nil!48232) (Cons!48232 (h!53674 K!9449) (t!355179 List!48356)) )
))
(declare-fun contains!10216 (List!48356 K!9449) Bool)

(declare-fun keys!16089 (ListMap!1715) List!48356)

(assert (=> b!4311827 (= e!2681809 (contains!10216 (keys!16089 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(declare-fun b!4311828 () Bool)

(declare-fun e!2681804 () Bool)

(assert (=> b!4311828 (= e!2681804 e!2681809)))

(declare-fun res!1767150 () Bool)

(assert (=> b!4311828 (=> (not res!1767150) (not e!2681809))))

(declare-datatypes ((Option!10243 0))(
  ( (None!10242) (Some!10242 (v!42427 V!9651)) )
))
(declare-fun isDefined!7545 (Option!10243) Bool)

(declare-fun getValueByKey!262 (List!48354 K!9449) Option!10243)

(assert (=> b!4311828 (= res!1767150 (isDefined!7545 (getValueByKey!262 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048)))))

(declare-fun b!4311829 () Bool)

(assert (=> b!4311829 false))

(declare-fun lt!1531993 () Unit!67368)

(declare-fun lt!1531990 () Unit!67368)

(assert (=> b!4311829 (= lt!1531993 lt!1531990)))

(declare-fun containsKey!330 (List!48354 K!9449) Bool)

(assert (=> b!4311829 (containsKey!330 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!41 (List!48354 K!9449) Unit!67368)

(assert (=> b!4311829 (= lt!1531990 (lemmaInGetKeysListThenContainsKey!41 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(declare-fun Unit!67375 () Unit!67368)

(assert (=> b!4311829 (= e!2681805 Unit!67375)))

(declare-fun b!4311830 () Bool)

(declare-fun e!2681806 () Bool)

(assert (=> b!4311830 (= e!2681806 (not (contains!10216 (keys!16089 (extractMap!334 (toList!2433 lt!1531901))) key!2048)))))

(declare-fun b!4311831 () Bool)

(declare-fun e!2681807 () List!48356)

(declare-fun getKeysList!44 (List!48354) List!48356)

(assert (=> b!4311831 (= e!2681807 (getKeysList!44 (toList!2434 (extractMap!334 (toList!2433 lt!1531901)))))))

(declare-fun bm!298100 () Bool)

(assert (=> bm!298100 (= call!298105 (contains!10216 e!2681807 key!2048))))

(declare-fun c!733057 () Bool)

(declare-fun c!733058 () Bool)

(assert (=> bm!298100 (= c!733057 c!733058)))

(declare-fun b!4311832 () Bool)

(declare-fun Unit!67376 () Unit!67368)

(assert (=> b!4311832 (= e!2681805 Unit!67376)))

(declare-fun d!1268331 () Bool)

(assert (=> d!1268331 e!2681804))

(declare-fun res!1767151 () Bool)

(assert (=> d!1268331 (=> res!1767151 e!2681804)))

(assert (=> d!1268331 (= res!1767151 e!2681806)))

(declare-fun res!1767149 () Bool)

(assert (=> d!1268331 (=> (not res!1767149) (not e!2681806))))

(declare-fun lt!1531992 () Bool)

(assert (=> d!1268331 (= res!1767149 (not lt!1531992))))

(declare-fun lt!1531988 () Bool)

(assert (=> d!1268331 (= lt!1531992 lt!1531988)))

(declare-fun lt!1531987 () Unit!67368)

(assert (=> d!1268331 (= lt!1531987 e!2681808)))

(assert (=> d!1268331 (= c!733058 lt!1531988)))

(assert (=> d!1268331 (= lt!1531988 (containsKey!330 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(assert (=> d!1268331 (= (contains!10214 (extractMap!334 (toList!2433 lt!1531901)) key!2048) lt!1531992)))

(declare-fun b!4311833 () Bool)

(assert (=> b!4311833 (= e!2681807 (keys!16089 (extractMap!334 (toList!2433 lt!1531901))))))

(declare-fun b!4311834 () Bool)

(declare-fun lt!1531991 () Unit!67368)

(assert (=> b!4311834 (= e!2681808 lt!1531991)))

(declare-fun lt!1531989 () Unit!67368)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!182 (List!48354 K!9449) Unit!67368)

(assert (=> b!4311834 (= lt!1531989 (lemmaContainsKeyImpliesGetValueByKeyDefined!182 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(assert (=> b!4311834 (isDefined!7545 (getValueByKey!262 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(declare-fun lt!1531986 () Unit!67368)

(assert (=> b!4311834 (= lt!1531986 lt!1531989)))

(declare-fun lemmaInListThenGetKeysListContains!41 (List!48354 K!9449) Unit!67368)

(assert (=> b!4311834 (= lt!1531991 (lemmaInListThenGetKeysListContains!41 (toList!2434 (extractMap!334 (toList!2433 lt!1531901))) key!2048))))

(assert (=> b!4311834 call!298105))

(assert (= (and d!1268331 c!733058) b!4311834))

(assert (= (and d!1268331 (not c!733058)) b!4311826))

(assert (= (and b!4311826 c!733059) b!4311829))

(assert (= (and b!4311826 (not c!733059)) b!4311832))

(assert (= (or b!4311834 b!4311826) bm!298100))

(assert (= (and bm!298100 c!733057) b!4311831))

(assert (= (and bm!298100 (not c!733057)) b!4311833))

(assert (= (and d!1268331 res!1767149) b!4311830))

(assert (= (and d!1268331 (not res!1767151)) b!4311828))

(assert (= (and b!4311828 res!1767150) b!4311827))

(declare-fun m!4904799 () Bool)

(assert (=> b!4311828 m!4904799))

(assert (=> b!4311828 m!4904799))

(declare-fun m!4904801 () Bool)

(assert (=> b!4311828 m!4904801))

(declare-fun m!4904803 () Bool)

(assert (=> b!4311834 m!4904803))

(assert (=> b!4311834 m!4904799))

(assert (=> b!4311834 m!4904799))

(assert (=> b!4311834 m!4904801))

(declare-fun m!4904805 () Bool)

(assert (=> b!4311834 m!4904805))

(assert (=> b!4311827 m!4904643))

(declare-fun m!4904807 () Bool)

(assert (=> b!4311827 m!4904807))

(assert (=> b!4311827 m!4904807))

(declare-fun m!4904809 () Bool)

(assert (=> b!4311827 m!4904809))

(assert (=> b!4311833 m!4904643))

(assert (=> b!4311833 m!4904807))

(declare-fun m!4904811 () Bool)

(assert (=> b!4311831 m!4904811))

(declare-fun m!4904813 () Bool)

(assert (=> b!4311829 m!4904813))

(declare-fun m!4904815 () Bool)

(assert (=> b!4311829 m!4904815))

(assert (=> b!4311830 m!4904643))

(assert (=> b!4311830 m!4904807))

(assert (=> b!4311830 m!4904807))

(assert (=> b!4311830 m!4904809))

(declare-fun m!4904817 () Bool)

(assert (=> bm!298100 m!4904817))

(assert (=> d!1268331 m!4904813))

(assert (=> b!4311688 d!1268331))

(declare-fun bs!605183 () Bool)

(declare-fun d!1268333 () Bool)

(assert (= bs!605183 (and d!1268333 b!4311687)))

(declare-fun lambda!133035 () Int)

(assert (=> bs!605183 (= lambda!133035 lambda!133031)))

(declare-fun bs!605184 () Bool)

(assert (= bs!605184 (and d!1268333 d!1268257)))

(assert (=> bs!605184 (not (= lambda!133035 lambda!133020))))

(declare-fun bs!605185 () Bool)

(assert (= bs!605185 (and d!1268333 b!4311632)))

(assert (=> bs!605185 (= lambda!133035 lambda!133017)))

(declare-fun bs!605186 () Bool)

(assert (= bs!605186 (and d!1268333 d!1268261)))

(assert (=> bs!605186 (not (= lambda!133035 lambda!133023))))

(declare-fun bs!605187 () Bool)

(assert (= bs!605187 (and d!1268333 d!1268301)))

(assert (=> bs!605187 (not (= lambda!133035 lambda!133032))))

(declare-fun bs!605188 () Bool)

(assert (= bs!605188 (and d!1268333 b!4311580)))

(assert (=> bs!605188 (= lambda!133035 lambda!133014)))

(declare-fun lt!1531996 () ListMap!1715)

(assert (=> d!1268333 (invariantList!578 (toList!2434 lt!1531996))))

(declare-fun e!2681812 () ListMap!1715)

(assert (=> d!1268333 (= lt!1531996 e!2681812)))

(declare-fun c!733062 () Bool)

(assert (=> d!1268333 (= c!733062 ((_ is Cons!48231) (toList!2433 lt!1531901)))))

(assert (=> d!1268333 (forall!8744 (toList!2433 lt!1531901) lambda!133035)))

(assert (=> d!1268333 (= (extractMap!334 (toList!2433 lt!1531901)) lt!1531996)))

(declare-fun b!4311839 () Bool)

(declare-fun addToMapMapFromBucket!38 (List!48354 ListMap!1715) ListMap!1715)

(assert (=> b!4311839 (= e!2681812 (addToMapMapFromBucket!38 (_2!26652 (h!53672 (toList!2433 lt!1531901))) (extractMap!334 (t!355174 (toList!2433 lt!1531901)))))))

(declare-fun b!4311840 () Bool)

(assert (=> b!4311840 (= e!2681812 (ListMap!1716 Nil!48230))))

(assert (= (and d!1268333 c!733062) b!4311839))

(assert (= (and d!1268333 (not c!733062)) b!4311840))

(declare-fun m!4904819 () Bool)

(assert (=> d!1268333 m!4904819))

(declare-fun m!4904821 () Bool)

(assert (=> d!1268333 m!4904821))

(declare-fun m!4904823 () Bool)

(assert (=> b!4311839 m!4904823))

(assert (=> b!4311839 m!4904823))

(declare-fun m!4904825 () Bool)

(assert (=> b!4311839 m!4904825))

(assert (=> b!4311688 d!1268333))

(declare-fun bs!605189 () Bool)

(declare-fun d!1268335 () Bool)

(assert (= bs!605189 (and d!1268335 b!4311687)))

(declare-fun lambda!133038 () Int)

(assert (=> bs!605189 (= lambda!133038 lambda!133031)))

(declare-fun bs!605190 () Bool)

(assert (= bs!605190 (and d!1268335 d!1268257)))

(assert (=> bs!605190 (not (= lambda!133038 lambda!133020))))

(declare-fun bs!605191 () Bool)

(assert (= bs!605191 (and d!1268335 b!4311632)))

(assert (=> bs!605191 (= lambda!133038 lambda!133017)))

(declare-fun bs!605192 () Bool)

(assert (= bs!605192 (and d!1268335 d!1268333)))

(assert (=> bs!605192 (= lambda!133038 lambda!133035)))

(declare-fun bs!605193 () Bool)

(assert (= bs!605193 (and d!1268335 d!1268261)))

(assert (=> bs!605193 (not (= lambda!133038 lambda!133023))))

(declare-fun bs!605194 () Bool)

(assert (= bs!605194 (and d!1268335 d!1268301)))

(assert (=> bs!605194 (not (= lambda!133038 lambda!133032))))

(declare-fun bs!605195 () Bool)

(assert (= bs!605195 (and d!1268335 b!4311580)))

(assert (=> bs!605195 (= lambda!133038 lambda!133014)))

(assert (=> d!1268335 (contains!10214 (extractMap!334 (toList!2433 lt!1531901)) key!2048)))

(declare-fun lt!1531999 () Unit!67368)

(declare-fun choose!26274 (ListLongMap!1045 K!9449 Hashable!4597) Unit!67368)

(assert (=> d!1268335 (= lt!1531999 (choose!26274 lt!1531901 key!2048 (hashF!6735 thiss!42308)))))

(assert (=> d!1268335 (forall!8744 (toList!2433 lt!1531901) lambda!133038)))

(assert (=> d!1268335 (= (lemmaInLongMapThenInGenericMap!139 lt!1531901 key!2048 (hashF!6735 thiss!42308)) lt!1531999)))

(declare-fun bs!605196 () Bool)

(assert (= bs!605196 d!1268335))

(assert (=> bs!605196 m!4904643))

(assert (=> bs!605196 m!4904643))

(assert (=> bs!605196 m!4904645))

(declare-fun m!4904827 () Bool)

(assert (=> bs!605196 m!4904827))

(declare-fun m!4904829 () Bool)

(assert (=> bs!605196 m!4904829))

(assert (=> b!4311688 d!1268335))

(declare-fun d!1268337 () Bool)

(declare-fun getCurrentListMap!18 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 32) Int) ListLongMap!1045)

(assert (=> d!1268337 (= (map!10234 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun bs!605197 () Bool)

(assert (= bs!605197 d!1268337))

(declare-fun m!4904831 () Bool)

(assert (=> bs!605197 m!4904831))

(assert (=> d!1268281 d!1268337))

(assert (=> d!1268279 d!1268249))

(declare-fun b!4311841 () Bool)

(declare-fun e!2681817 () Unit!67368)

(declare-fun e!2681814 () Unit!67368)

(assert (=> b!4311841 (= e!2681817 e!2681814)))

(declare-fun c!733065 () Bool)

(declare-fun call!298106 () Bool)

(assert (=> b!4311841 (= c!733065 call!298106)))

(declare-fun b!4311842 () Bool)

(declare-fun e!2681818 () Bool)

(assert (=> b!4311842 (= e!2681818 (contains!10216 (keys!16089 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(declare-fun b!4311843 () Bool)

(declare-fun e!2681813 () Bool)

(assert (=> b!4311843 (= e!2681813 e!2681818)))

(declare-fun res!1767153 () Bool)

(assert (=> b!4311843 (=> (not res!1767153) (not e!2681818))))

(assert (=> b!4311843 (= res!1767153 (isDefined!7545 (getValueByKey!262 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048)))))

(declare-fun b!4311844 () Bool)

(assert (=> b!4311844 false))

(declare-fun lt!1532007 () Unit!67368)

(declare-fun lt!1532004 () Unit!67368)

(assert (=> b!4311844 (= lt!1532007 lt!1532004)))

(assert (=> b!4311844 (containsKey!330 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048)))

(assert (=> b!4311844 (= lt!1532004 (lemmaInGetKeysListThenContainsKey!41 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(declare-fun Unit!67377 () Unit!67368)

(assert (=> b!4311844 (= e!2681814 Unit!67377)))

(declare-fun b!4311845 () Bool)

(declare-fun e!2681815 () Bool)

(assert (=> b!4311845 (= e!2681815 (not (contains!10216 (keys!16089 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048)))))

(declare-fun b!4311846 () Bool)

(declare-fun e!2681816 () List!48356)

(assert (=> b!4311846 (= e!2681816 (getKeysList!44 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))))

(declare-fun bm!298101 () Bool)

(assert (=> bm!298101 (= call!298106 (contains!10216 e!2681816 key!2048))))

(declare-fun c!733063 () Bool)

(declare-fun c!733064 () Bool)

(assert (=> bm!298101 (= c!733063 c!733064)))

(declare-fun b!4311847 () Bool)

(declare-fun Unit!67378 () Unit!67368)

(assert (=> b!4311847 (= e!2681814 Unit!67378)))

(declare-fun d!1268339 () Bool)

(assert (=> d!1268339 e!2681813))

(declare-fun res!1767154 () Bool)

(assert (=> d!1268339 (=> res!1767154 e!2681813)))

(assert (=> d!1268339 (= res!1767154 e!2681815)))

(declare-fun res!1767152 () Bool)

(assert (=> d!1268339 (=> (not res!1767152) (not e!2681815))))

(declare-fun lt!1532006 () Bool)

(assert (=> d!1268339 (= res!1767152 (not lt!1532006))))

(declare-fun lt!1532002 () Bool)

(assert (=> d!1268339 (= lt!1532006 lt!1532002)))

(declare-fun lt!1532001 () Unit!67368)

(assert (=> d!1268339 (= lt!1532001 e!2681817)))

(assert (=> d!1268339 (= c!733064 lt!1532002)))

(assert (=> d!1268339 (= lt!1532002 (containsKey!330 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(assert (=> d!1268339 (= (contains!10214 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) key!2048) lt!1532006)))

(declare-fun b!4311848 () Bool)

(assert (=> b!4311848 (= e!2681816 (keys!16089 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311849 () Bool)

(declare-fun lt!1532005 () Unit!67368)

(assert (=> b!4311849 (= e!2681817 lt!1532005)))

(declare-fun lt!1532003 () Unit!67368)

(assert (=> b!4311849 (= lt!1532003 (lemmaContainsKeyImpliesGetValueByKeyDefined!182 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(assert (=> b!4311849 (isDefined!7545 (getValueByKey!262 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(declare-fun lt!1532000 () Unit!67368)

(assert (=> b!4311849 (= lt!1532000 lt!1532003)))

(assert (=> b!4311849 (= lt!1532005 (lemmaInListThenGetKeysListContains!41 (toList!2434 (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) key!2048))))

(assert (=> b!4311849 call!298106))

(assert (= (and d!1268339 c!733064) b!4311849))

(assert (= (and d!1268339 (not c!733064)) b!4311841))

(assert (= (and b!4311841 c!733065) b!4311844))

(assert (= (and b!4311841 (not c!733065)) b!4311847))

(assert (= (or b!4311849 b!4311841) bm!298101))

(assert (= (and bm!298101 c!733063) b!4311846))

(assert (= (and bm!298101 (not c!733063)) b!4311848))

(assert (= (and d!1268339 res!1767152) b!4311845))

(assert (= (and d!1268339 (not res!1767154)) b!4311843))

(assert (= (and b!4311843 res!1767153) b!4311842))

(declare-fun m!4904833 () Bool)

(assert (=> b!4311843 m!4904833))

(assert (=> b!4311843 m!4904833))

(declare-fun m!4904835 () Bool)

(assert (=> b!4311843 m!4904835))

(declare-fun m!4904837 () Bool)

(assert (=> b!4311849 m!4904837))

(assert (=> b!4311849 m!4904833))

(assert (=> b!4311849 m!4904833))

(assert (=> b!4311849 m!4904835))

(declare-fun m!4904839 () Bool)

(assert (=> b!4311849 m!4904839))

(assert (=> b!4311842 m!4904649))

(declare-fun m!4904841 () Bool)

(assert (=> b!4311842 m!4904841))

(assert (=> b!4311842 m!4904841))

(declare-fun m!4904843 () Bool)

(assert (=> b!4311842 m!4904843))

(assert (=> b!4311848 m!4904649))

(assert (=> b!4311848 m!4904841))

(declare-fun m!4904845 () Bool)

(assert (=> b!4311846 m!4904845))

(declare-fun m!4904847 () Bool)

(assert (=> b!4311844 m!4904847))

(declare-fun m!4904849 () Bool)

(assert (=> b!4311844 m!4904849))

(assert (=> b!4311845 m!4904649))

(assert (=> b!4311845 m!4904841))

(assert (=> b!4311845 m!4904841))

(assert (=> b!4311845 m!4904843))

(declare-fun m!4904851 () Bool)

(assert (=> bm!298101 m!4904851))

(assert (=> d!1268339 m!4904847))

(assert (=> d!1268279 d!1268339))

(assert (=> d!1268279 d!1268251))

(assert (=> d!1268279 d!1268283))

(declare-fun d!1268341 () Bool)

(declare-fun lt!1532010 () Bool)

(assert (=> d!1268341 (= lt!1532010 (contains!10211 (map!10232 (v!42414 (underlying!9592 thiss!42308))) lt!1531913))))

(declare-fun contains!10217 (LongMapFixedSize!9362 (_ BitVec 64)) Bool)

(assert (=> d!1268341 (= lt!1532010 (contains!10217 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531913))))

(assert (=> d!1268341 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268341 (= (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531913) lt!1532010)))

(declare-fun bs!605198 () Bool)

(assert (= bs!605198 d!1268341))

(assert (=> bs!605198 m!4904553))

(assert (=> bs!605198 m!4904553))

(declare-fun m!4904853 () Bool)

(assert (=> bs!605198 m!4904853))

(declare-fun m!4904855 () Bool)

(assert (=> bs!605198 m!4904855))

(assert (=> bs!605198 m!4904567))

(assert (=> d!1268279 d!1268341))

(declare-fun b!4311850 () Bool)

(declare-fun e!2681823 () Unit!67368)

(declare-fun e!2681820 () Unit!67368)

(assert (=> b!4311850 (= e!2681823 e!2681820)))

(declare-fun c!733068 () Bool)

(declare-fun call!298107 () Bool)

(assert (=> b!4311850 (= c!733068 call!298107)))

(declare-fun b!4311851 () Bool)

(declare-fun e!2681824 () Bool)

(assert (=> b!4311851 (= e!2681824 (contains!10216 (keys!16089 (map!10233 thiss!42308)) key!2048))))

(declare-fun b!4311852 () Bool)

(declare-fun e!2681819 () Bool)

(assert (=> b!4311852 (= e!2681819 e!2681824)))

(declare-fun res!1767156 () Bool)

(assert (=> b!4311852 (=> (not res!1767156) (not e!2681824))))

(assert (=> b!4311852 (= res!1767156 (isDefined!7545 (getValueByKey!262 (toList!2434 (map!10233 thiss!42308)) key!2048)))))

(declare-fun b!4311853 () Bool)

(assert (=> b!4311853 false))

(declare-fun lt!1532018 () Unit!67368)

(declare-fun lt!1532015 () Unit!67368)

(assert (=> b!4311853 (= lt!1532018 lt!1532015)))

(assert (=> b!4311853 (containsKey!330 (toList!2434 (map!10233 thiss!42308)) key!2048)))

(assert (=> b!4311853 (= lt!1532015 (lemmaInGetKeysListThenContainsKey!41 (toList!2434 (map!10233 thiss!42308)) key!2048))))

(declare-fun Unit!67379 () Unit!67368)

(assert (=> b!4311853 (= e!2681820 Unit!67379)))

(declare-fun b!4311854 () Bool)

(declare-fun e!2681821 () Bool)

(assert (=> b!4311854 (= e!2681821 (not (contains!10216 (keys!16089 (map!10233 thiss!42308)) key!2048)))))

(declare-fun b!4311855 () Bool)

(declare-fun e!2681822 () List!48356)

(assert (=> b!4311855 (= e!2681822 (getKeysList!44 (toList!2434 (map!10233 thiss!42308))))))

(declare-fun bm!298102 () Bool)

(assert (=> bm!298102 (= call!298107 (contains!10216 e!2681822 key!2048))))

(declare-fun c!733066 () Bool)

(declare-fun c!733067 () Bool)

(assert (=> bm!298102 (= c!733066 c!733067)))

(declare-fun b!4311856 () Bool)

(declare-fun Unit!67380 () Unit!67368)

(assert (=> b!4311856 (= e!2681820 Unit!67380)))

(declare-fun d!1268343 () Bool)

(assert (=> d!1268343 e!2681819))

(declare-fun res!1767157 () Bool)

(assert (=> d!1268343 (=> res!1767157 e!2681819)))

(assert (=> d!1268343 (= res!1767157 e!2681821)))

(declare-fun res!1767155 () Bool)

(assert (=> d!1268343 (=> (not res!1767155) (not e!2681821))))

(declare-fun lt!1532017 () Bool)

(assert (=> d!1268343 (= res!1767155 (not lt!1532017))))

(declare-fun lt!1532013 () Bool)

(assert (=> d!1268343 (= lt!1532017 lt!1532013)))

(declare-fun lt!1532012 () Unit!67368)

(assert (=> d!1268343 (= lt!1532012 e!2681823)))

(assert (=> d!1268343 (= c!733067 lt!1532013)))

(assert (=> d!1268343 (= lt!1532013 (containsKey!330 (toList!2434 (map!10233 thiss!42308)) key!2048))))

(assert (=> d!1268343 (= (contains!10214 (map!10233 thiss!42308) key!2048) lt!1532017)))

(declare-fun b!4311857 () Bool)

(assert (=> b!4311857 (= e!2681822 (keys!16089 (map!10233 thiss!42308)))))

(declare-fun b!4311858 () Bool)

(declare-fun lt!1532016 () Unit!67368)

(assert (=> b!4311858 (= e!2681823 lt!1532016)))

(declare-fun lt!1532014 () Unit!67368)

(assert (=> b!4311858 (= lt!1532014 (lemmaContainsKeyImpliesGetValueByKeyDefined!182 (toList!2434 (map!10233 thiss!42308)) key!2048))))

(assert (=> b!4311858 (isDefined!7545 (getValueByKey!262 (toList!2434 (map!10233 thiss!42308)) key!2048))))

(declare-fun lt!1532011 () Unit!67368)

(assert (=> b!4311858 (= lt!1532011 lt!1532014)))

(assert (=> b!4311858 (= lt!1532016 (lemmaInListThenGetKeysListContains!41 (toList!2434 (map!10233 thiss!42308)) key!2048))))

(assert (=> b!4311858 call!298107))

(assert (= (and d!1268343 c!733067) b!4311858))

(assert (= (and d!1268343 (not c!733067)) b!4311850))

(assert (= (and b!4311850 c!733068) b!4311853))

(assert (= (and b!4311850 (not c!733068)) b!4311856))

(assert (= (or b!4311858 b!4311850) bm!298102))

(assert (= (and bm!298102 c!733066) b!4311855))

(assert (= (and bm!298102 (not c!733066)) b!4311857))

(assert (= (and d!1268343 res!1767155) b!4311854))

(assert (= (and d!1268343 (not res!1767157)) b!4311852))

(assert (= (and b!4311852 res!1767156) b!4311851))

(declare-fun m!4904857 () Bool)

(assert (=> b!4311852 m!4904857))

(assert (=> b!4311852 m!4904857))

(declare-fun m!4904859 () Bool)

(assert (=> b!4311852 m!4904859))

(declare-fun m!4904861 () Bool)

(assert (=> b!4311858 m!4904861))

(assert (=> b!4311858 m!4904857))

(assert (=> b!4311858 m!4904857))

(assert (=> b!4311858 m!4904859))

(declare-fun m!4904863 () Bool)

(assert (=> b!4311858 m!4904863))

(assert (=> b!4311851 m!4904555))

(declare-fun m!4904865 () Bool)

(assert (=> b!4311851 m!4904865))

(assert (=> b!4311851 m!4904865))

(declare-fun m!4904867 () Bool)

(assert (=> b!4311851 m!4904867))

(assert (=> b!4311857 m!4904555))

(assert (=> b!4311857 m!4904865))

(declare-fun m!4904869 () Bool)

(assert (=> b!4311855 m!4904869))

(declare-fun m!4904871 () Bool)

(assert (=> b!4311853 m!4904871))

(declare-fun m!4904873 () Bool)

(assert (=> b!4311853 m!4904873))

(assert (=> b!4311854 m!4904555))

(assert (=> b!4311854 m!4904865))

(assert (=> b!4311854 m!4904865))

(assert (=> b!4311854 m!4904867))

(declare-fun m!4904875 () Bool)

(assert (=> bm!298102 m!4904875))

(assert (=> d!1268343 m!4904871))

(assert (=> d!1268279 d!1268343))

(declare-fun bs!605199 () Bool)

(declare-fun d!1268345 () Bool)

(assert (= bs!605199 (and d!1268345 b!4311687)))

(declare-fun lambda!133039 () Int)

(assert (=> bs!605199 (= lambda!133039 lambda!133031)))

(declare-fun bs!605200 () Bool)

(assert (= bs!605200 (and d!1268345 d!1268257)))

(assert (=> bs!605200 (not (= lambda!133039 lambda!133020))))

(declare-fun bs!605201 () Bool)

(assert (= bs!605201 (and d!1268345 b!4311632)))

(assert (=> bs!605201 (= lambda!133039 lambda!133017)))

(declare-fun bs!605202 () Bool)

(assert (= bs!605202 (and d!1268345 d!1268335)))

(assert (=> bs!605202 (= lambda!133039 lambda!133038)))

(declare-fun bs!605203 () Bool)

(assert (= bs!605203 (and d!1268345 d!1268333)))

(assert (=> bs!605203 (= lambda!133039 lambda!133035)))

(declare-fun bs!605204 () Bool)

(assert (= bs!605204 (and d!1268345 d!1268261)))

(assert (=> bs!605204 (not (= lambda!133039 lambda!133023))))

(declare-fun bs!605205 () Bool)

(assert (= bs!605205 (and d!1268345 d!1268301)))

(assert (=> bs!605205 (not (= lambda!133039 lambda!133032))))

(declare-fun bs!605206 () Bool)

(assert (= bs!605206 (and d!1268345 b!4311580)))

(assert (=> bs!605206 (= lambda!133039 lambda!133014)))

(declare-fun lt!1532019 () ListMap!1715)

(assert (=> d!1268345 (invariantList!578 (toList!2434 lt!1532019))))

(declare-fun e!2681825 () ListMap!1715)

(assert (=> d!1268345 (= lt!1532019 e!2681825)))

(declare-fun c!733069 () Bool)

(assert (=> d!1268345 (= c!733069 ((_ is Cons!48231) (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))

(assert (=> d!1268345 (forall!8744 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lambda!133039)))

(assert (=> d!1268345 (= (extractMap!334 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) lt!1532019)))

(declare-fun b!4311859 () Bool)

(assert (=> b!4311859 (= e!2681825 (addToMapMapFromBucket!38 (_2!26652 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) (extractMap!334 (t!355174 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))))

(declare-fun b!4311860 () Bool)

(assert (=> b!4311860 (= e!2681825 (ListMap!1716 Nil!48230))))

(assert (= (and d!1268345 c!733069) b!4311859))

(assert (= (and d!1268345 (not c!733069)) b!4311860))

(declare-fun m!4904877 () Bool)

(assert (=> d!1268345 m!4904877))

(declare-fun m!4904879 () Bool)

(assert (=> d!1268345 m!4904879))

(declare-fun m!4904881 () Bool)

(assert (=> b!4311859 m!4904881))

(assert (=> b!4311859 m!4904881))

(declare-fun m!4904883 () Bool)

(assert (=> b!4311859 m!4904883))

(assert (=> d!1268279 d!1268345))

(assert (=> d!1268279 d!1268281))

(declare-fun d!1268347 () Bool)

(declare-fun e!2681830 () Bool)

(assert (=> d!1268347 e!2681830))

(declare-fun res!1767160 () Bool)

(assert (=> d!1268347 (=> res!1767160 e!2681830)))

(declare-fun lt!1532030 () Bool)

(assert (=> d!1268347 (= res!1767160 (not lt!1532030))))

(declare-fun lt!1532031 () Bool)

(assert (=> d!1268347 (= lt!1532030 lt!1532031)))

(declare-fun lt!1532029 () Unit!67368)

(declare-fun e!2681831 () Unit!67368)

(assert (=> d!1268347 (= lt!1532029 e!2681831)))

(declare-fun c!733072 () Bool)

(assert (=> d!1268347 (= c!733072 lt!1532031)))

(assert (=> d!1268347 (= lt!1532031 (containsKey!329 (toList!2433 (ite c!733026 lt!1531902 call!298090)) call!298087))))

(assert (=> d!1268347 (= (contains!10211 (ite c!733026 lt!1531902 call!298090) call!298087) lt!1532030)))

(declare-fun b!4311867 () Bool)

(declare-fun lt!1532028 () Unit!67368)

(assert (=> b!4311867 (= e!2681831 lt!1532028)))

(assert (=> b!4311867 (= lt!1532028 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!2433 (ite c!733026 lt!1531902 call!298090)) call!298087))))

(assert (=> b!4311867 (isDefined!7544 (getValueByKey!261 (toList!2433 (ite c!733026 lt!1531902 call!298090)) call!298087))))

(declare-fun b!4311868 () Bool)

(declare-fun Unit!67381 () Unit!67368)

(assert (=> b!4311868 (= e!2681831 Unit!67381)))

(declare-fun b!4311869 () Bool)

(assert (=> b!4311869 (= e!2681830 (isDefined!7544 (getValueByKey!261 (toList!2433 (ite c!733026 lt!1531902 call!298090)) call!298087)))))

(assert (= (and d!1268347 c!733072) b!4311867))

(assert (= (and d!1268347 (not c!733072)) b!4311868))

(assert (= (and d!1268347 (not res!1767160)) b!4311869))

(declare-fun m!4904885 () Bool)

(assert (=> d!1268347 m!4904885))

(declare-fun m!4904887 () Bool)

(assert (=> b!4311867 m!4904887))

(declare-fun m!4904889 () Bool)

(assert (=> b!4311867 m!4904889))

(assert (=> b!4311867 m!4904889))

(declare-fun m!4904891 () Bool)

(assert (=> b!4311867 m!4904891))

(assert (=> b!4311869 m!4904889))

(assert (=> b!4311869 m!4904889))

(assert (=> b!4311869 m!4904891))

(assert (=> bm!298081 d!1268347))

(declare-fun d!1268349 () Bool)

(assert (=> d!1268349 (= (apply!11040 (ite c!733026 lt!1531902 call!298090) call!298087) (get!15610 (getValueByKey!261 (toList!2433 (ite c!733026 lt!1531902 call!298090)) call!298087)))))

(declare-fun bs!605207 () Bool)

(assert (= bs!605207 d!1268349))

(assert (=> bs!605207 m!4904889))

(assert (=> bs!605207 m!4904889))

(declare-fun m!4904893 () Bool)

(assert (=> bs!605207 m!4904893))

(assert (=> bm!298082 d!1268349))

(declare-fun d!1268351 () Bool)

(assert (=> d!1268351 (= (get!15610 (getValueByKey!261 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819)) (v!42419 (getValueByKey!261 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819)))))

(assert (=> b!4311626 d!1268351))

(declare-fun b!4311880 () Bool)

(declare-fun e!2681837 () Option!10241)

(assert (=> b!4311880 (= e!2681837 (getValueByKey!261 (t!355174 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819))))

(declare-fun d!1268353 () Bool)

(declare-fun c!733077 () Bool)

(assert (=> d!1268353 (= c!733077 (and ((_ is Cons!48231) (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) (= (_1!26652 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) lt!1531819)))))

(declare-fun e!2681836 () Option!10241)

(assert (=> d!1268353 (= (getValueByKey!261 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819) e!2681836)))

(declare-fun b!4311881 () Bool)

(assert (=> b!4311881 (= e!2681837 None!10240)))

(declare-fun b!4311878 () Bool)

(assert (=> b!4311878 (= e!2681836 (Some!10240 (_2!26652 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))))

(declare-fun b!4311879 () Bool)

(assert (=> b!4311879 (= e!2681836 e!2681837)))

(declare-fun c!733078 () Bool)

(assert (=> b!4311879 (= c!733078 (and ((_ is Cons!48231) (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))) (not (= (_1!26652 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) lt!1531819))))))

(assert (= (and d!1268353 c!733077) b!4311878))

(assert (= (and d!1268353 (not c!733077)) b!4311879))

(assert (= (and b!4311879 c!733078) b!4311880))

(assert (= (and b!4311879 (not c!733078)) b!4311881))

(declare-fun m!4904895 () Bool)

(assert (=> b!4311880 m!4904895))

(assert (=> b!4311626 d!1268353))

(assert (=> b!4311626 d!1268281))

(declare-fun d!1268355 () Bool)

(declare-fun res!1767161 () Bool)

(declare-fun e!2681838 () Bool)

(assert (=> d!1268355 (=> res!1767161 e!2681838)))

(assert (=> d!1268355 (= res!1767161 ((_ is Nil!48230) lt!1531825))))

(assert (=> d!1268355 (= (forall!8745 lt!1531825 lambda!133027) e!2681838)))

(declare-fun b!4311882 () Bool)

(declare-fun e!2681839 () Bool)

(assert (=> b!4311882 (= e!2681838 e!2681839)))

(declare-fun res!1767162 () Bool)

(assert (=> b!4311882 (=> (not res!1767162) (not e!2681839))))

(assert (=> b!4311882 (= res!1767162 (dynLambda!20448 lambda!133027 (h!53671 lt!1531825)))))

(declare-fun b!4311883 () Bool)

(assert (=> b!4311883 (= e!2681839 (forall!8745 (t!355173 lt!1531825) lambda!133027))))

(assert (= (and d!1268355 (not res!1767161)) b!4311882))

(assert (= (and b!4311882 res!1767162) b!4311883))

(declare-fun b_lambda!126681 () Bool)

(assert (=> (not b_lambda!126681) (not b!4311882)))

(declare-fun m!4904897 () Bool)

(assert (=> b!4311882 m!4904897))

(declare-fun m!4904899 () Bool)

(assert (=> b!4311883 m!4904899))

(assert (=> d!1268269 d!1268355))

(assert (=> bm!298066 d!1268281))

(declare-fun d!1268357 () Bool)

(assert (=> d!1268357 (= (isDefined!7543 call!298089) (not (isEmpty!28086 call!298089)))))

(declare-fun bs!605208 () Bool)

(assert (= bs!605208 d!1268357))

(declare-fun m!4904901 () Bool)

(assert (=> bs!605208 m!4904901))

(assert (=> bm!298083 d!1268357))

(declare-fun d!1268359 () Bool)

(declare-fun choose!26275 (Hashable!4597 K!9449) (_ BitVec 64))

(assert (=> d!1268359 (= (hash!1037 (hashF!6735 thiss!42308) key!2048) (choose!26275 (hashF!6735 thiss!42308) key!2048))))

(declare-fun bs!605209 () Bool)

(assert (= bs!605209 d!1268359))

(declare-fun m!4904903 () Bool)

(assert (=> bs!605209 m!4904903))

(assert (=> d!1268249 d!1268359))

(declare-fun b!4311884 () Bool)

(declare-fun e!2681843 () Option!10242)

(assert (=> b!4311884 (= e!2681843 None!10241)))

(declare-fun b!4311885 () Bool)

(declare-fun e!2681840 () Option!10242)

(assert (=> b!4311885 (= e!2681840 (Some!10241 (h!53671 call!298088)))))

(declare-fun b!4311886 () Bool)

(declare-fun e!2681841 () Bool)

(declare-fun lt!1532032 () Option!10242)

(assert (=> b!4311886 (= e!2681841 (contains!10215 call!298088 (get!15611 lt!1532032)))))

(declare-fun b!4311887 () Bool)

(assert (=> b!4311887 (= e!2681840 e!2681843)))

(declare-fun c!733080 () Bool)

(assert (=> b!4311887 (= c!733080 ((_ is Cons!48230) call!298088))))

(declare-fun b!4311888 () Bool)

(declare-fun e!2681842 () Bool)

(assert (=> b!4311888 (= e!2681842 e!2681841)))

(declare-fun res!1767166 () Bool)

(assert (=> b!4311888 (=> (not res!1767166) (not e!2681841))))

(assert (=> b!4311888 (= res!1767166 (isDefined!7543 lt!1532032))))

(declare-fun b!4311889 () Bool)

(declare-fun res!1767165 () Bool)

(assert (=> b!4311889 (=> (not res!1767165) (not e!2681841))))

(assert (=> b!4311889 (= res!1767165 (= (_1!26651 (get!15611 lt!1532032)) key!2048))))

(declare-fun d!1268361 () Bool)

(assert (=> d!1268361 e!2681842))

(declare-fun res!1767163 () Bool)

(assert (=> d!1268361 (=> res!1767163 e!2681842)))

(declare-fun e!2681844 () Bool)

(assert (=> d!1268361 (= res!1767163 e!2681844)))

(declare-fun res!1767164 () Bool)

(assert (=> d!1268361 (=> (not res!1767164) (not e!2681844))))

(assert (=> d!1268361 (= res!1767164 (isEmpty!28086 lt!1532032))))

(assert (=> d!1268361 (= lt!1532032 e!2681840)))

(declare-fun c!733079 () Bool)

(assert (=> d!1268361 (= c!733079 (and ((_ is Cons!48230) call!298088) (= (_1!26651 (h!53671 call!298088)) key!2048)))))

(assert (=> d!1268361 (noDuplicateKeys!224 call!298088)))

(assert (=> d!1268361 (= (getPair!139 call!298088 key!2048) lt!1532032)))

(declare-fun b!4311890 () Bool)

(assert (=> b!4311890 (= e!2681844 (not (containsKey!328 call!298088 key!2048)))))

(declare-fun b!4311891 () Bool)

(assert (=> b!4311891 (= e!2681843 (getPair!139 (t!355173 call!298088) key!2048))))

(assert (= (and d!1268361 c!733079) b!4311885))

(assert (= (and d!1268361 (not c!733079)) b!4311887))

(assert (= (and b!4311887 c!733080) b!4311891))

(assert (= (and b!4311887 (not c!733080)) b!4311884))

(assert (= (and d!1268361 res!1767164) b!4311890))

(assert (= (and d!1268361 (not res!1767163)) b!4311888))

(assert (= (and b!4311888 res!1767166) b!4311889))

(assert (= (and b!4311889 res!1767165) b!4311886))

(declare-fun m!4904905 () Bool)

(assert (=> b!4311891 m!4904905))

(declare-fun m!4904907 () Bool)

(assert (=> b!4311888 m!4904907))

(declare-fun m!4904909 () Bool)

(assert (=> b!4311890 m!4904909))

(declare-fun m!4904911 () Bool)

(assert (=> d!1268361 m!4904911))

(declare-fun m!4904913 () Bool)

(assert (=> d!1268361 m!4904913))

(declare-fun m!4904915 () Bool)

(assert (=> b!4311889 m!4904915))

(assert (=> b!4311886 m!4904915))

(assert (=> b!4311886 m!4904915))

(declare-fun m!4904917 () Bool)

(assert (=> b!4311886 m!4904917))

(assert (=> bm!298084 d!1268361))

(declare-fun d!1268363 () Bool)

(declare-fun res!1767167 () Bool)

(declare-fun e!2681845 () Bool)

(assert (=> d!1268363 (=> res!1767167 e!2681845)))

(assert (=> d!1268363 (= res!1767167 ((_ is Nil!48230) lt!1531821))))

(assert (=> d!1268363 (= (forall!8745 lt!1531821 lambda!133028) e!2681845)))

(declare-fun b!4311892 () Bool)

(declare-fun e!2681846 () Bool)

(assert (=> b!4311892 (= e!2681845 e!2681846)))

(declare-fun res!1767168 () Bool)

(assert (=> b!4311892 (=> (not res!1767168) (not e!2681846))))

(assert (=> b!4311892 (= res!1767168 (dynLambda!20448 lambda!133028 (h!53671 lt!1531821)))))

(declare-fun b!4311893 () Bool)

(assert (=> b!4311893 (= e!2681846 (forall!8745 (t!355173 lt!1531821) lambda!133028))))

(assert (= (and d!1268363 (not res!1767167)) b!4311892))

(assert (= (and b!4311892 res!1767168) b!4311893))

(declare-fun b_lambda!126683 () Bool)

(assert (=> (not b_lambda!126683) (not b!4311892)))

(declare-fun m!4904919 () Bool)

(assert (=> b!4311892 m!4904919))

(declare-fun m!4904921 () Bool)

(assert (=> b!4311893 m!4904921))

(assert (=> d!1268273 d!1268363))

(declare-fun d!1268365 () Bool)

(declare-fun res!1767169 () Bool)

(declare-fun e!2681847 () Bool)

(assert (=> d!1268365 (=> res!1767169 e!2681847)))

(assert (=> d!1268365 (= res!1767169 ((_ is Nil!48231) (t!355174 (toList!2433 lt!1531817))))))

(assert (=> d!1268365 (= (forall!8744 (t!355174 (toList!2433 lt!1531817)) lambda!133014) e!2681847)))

(declare-fun b!4311894 () Bool)

(declare-fun e!2681848 () Bool)

(assert (=> b!4311894 (= e!2681847 e!2681848)))

(declare-fun res!1767170 () Bool)

(assert (=> b!4311894 (=> (not res!1767170) (not e!2681848))))

(assert (=> b!4311894 (= res!1767170 (dynLambda!20447 lambda!133014 (h!53672 (t!355174 (toList!2433 lt!1531817)))))))

(declare-fun b!4311895 () Bool)

(assert (=> b!4311895 (= e!2681848 (forall!8744 (t!355174 (t!355174 (toList!2433 lt!1531817))) lambda!133014))))

(assert (= (and d!1268365 (not res!1767169)) b!4311894))

(assert (= (and b!4311894 res!1767170) b!4311895))

(declare-fun b_lambda!126685 () Bool)

(assert (=> (not b_lambda!126685) (not b!4311894)))

(declare-fun m!4904923 () Bool)

(assert (=> b!4311894 m!4904923))

(declare-fun m!4904925 () Bool)

(assert (=> b!4311895 m!4904925))

(assert (=> b!4311655 d!1268365))

(declare-fun d!1268367 () Bool)

(declare-fun e!2681849 () Bool)

(assert (=> d!1268367 e!2681849))

(declare-fun res!1767171 () Bool)

(assert (=> d!1268367 (=> res!1767171 e!2681849)))

(declare-fun lt!1532035 () Bool)

(assert (=> d!1268367 (= res!1767171 (not lt!1532035))))

(declare-fun lt!1532036 () Bool)

(assert (=> d!1268367 (= lt!1532035 lt!1532036)))

(declare-fun lt!1532034 () Unit!67368)

(declare-fun e!2681850 () Unit!67368)

(assert (=> d!1268367 (= lt!1532034 e!2681850)))

(declare-fun c!733081 () Bool)

(assert (=> d!1268367 (= c!733081 lt!1532036)))

(assert (=> d!1268367 (= lt!1532036 (containsKey!329 (toList!2433 call!298072) lt!1531819))))

(assert (=> d!1268367 (= (contains!10211 call!298072 lt!1531819) lt!1532035)))

(declare-fun b!4311896 () Bool)

(declare-fun lt!1532033 () Unit!67368)

(assert (=> b!4311896 (= e!2681850 lt!1532033)))

(assert (=> b!4311896 (= lt!1532033 (lemmaContainsKeyImpliesGetValueByKeyDefined!181 (toList!2433 call!298072) lt!1531819))))

(assert (=> b!4311896 (isDefined!7544 (getValueByKey!261 (toList!2433 call!298072) lt!1531819))))

(declare-fun b!4311897 () Bool)

(declare-fun Unit!67382 () Unit!67368)

(assert (=> b!4311897 (= e!2681850 Unit!67382)))

(declare-fun b!4311898 () Bool)

(assert (=> b!4311898 (= e!2681849 (isDefined!7544 (getValueByKey!261 (toList!2433 call!298072) lt!1531819)))))

(assert (= (and d!1268367 c!733081) b!4311896))

(assert (= (and d!1268367 (not c!733081)) b!4311897))

(assert (= (and d!1268367 (not res!1767171)) b!4311898))

(declare-fun m!4904927 () Bool)

(assert (=> d!1268367 m!4904927))

(declare-fun m!4904929 () Bool)

(assert (=> b!4311896 m!4904929))

(declare-fun m!4904931 () Bool)

(assert (=> b!4311896 m!4904931))

(assert (=> b!4311896 m!4904931))

(declare-fun m!4904933 () Bool)

(assert (=> b!4311896 m!4904933))

(assert (=> b!4311898 m!4904931))

(assert (=> b!4311898 m!4904931))

(assert (=> b!4311898 m!4904933))

(assert (=> b!4311602 d!1268367))

(assert (=> bm!298085 d!1268281))

(declare-fun d!1268369 () Bool)

(declare-fun lt!1532037 () Bool)

(assert (=> d!1268369 (= lt!1532037 (contains!10211 (map!10232 (v!42414 (underlying!9592 thiss!42308))) lt!1531819))))

(assert (=> d!1268369 (= lt!1532037 (contains!10217 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819))))

(assert (=> d!1268369 (valid!3672 (v!42414 (underlying!9592 thiss!42308)))))

(assert (=> d!1268369 (= (contains!10212 (v!42414 (underlying!9592 thiss!42308)) lt!1531819) lt!1532037)))

(declare-fun bs!605210 () Bool)

(assert (= bs!605210 d!1268369))

(assert (=> bs!605210 m!4904553))

(assert (=> bs!605210 m!4904553))

(declare-fun m!4904935 () Bool)

(assert (=> bs!605210 m!4904935))

(declare-fun m!4904937 () Bool)

(assert (=> bs!605210 m!4904937))

(assert (=> bs!605210 m!4904567))

(assert (=> d!1268247 d!1268369))

(declare-fun b!4311935 () Bool)

(declare-fun res!1767182 () Bool)

(declare-fun e!2681881 () Bool)

(assert (=> b!4311935 (=> (not res!1767182) (not e!2681881))))

(assert (=> b!4311935 (= res!1767182 (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2681875 () Bool)

(assert (=> b!4311935 (= e!2681875 e!2681881)))

(declare-fun call!298117 () List!48354)

(declare-fun call!298118 () ListLongMap!1045)

(declare-fun call!298116 () ListLongMap!1045)

(declare-fun bm!298111 () Bool)

(declare-fun c!733096 () Bool)

(assert (=> bm!298111 (= call!298117 (apply!11040 (ite c!733096 call!298116 call!298118) lt!1531819))))

(declare-fun bm!298112 () Bool)

(assert (=> bm!298112 (= call!298118 call!298116)))

(declare-fun b!4311936 () Bool)

(declare-fun e!2681877 () List!48354)

(declare-fun e!2681874 () List!48354)

(assert (=> b!4311936 (= e!2681877 e!2681874)))

(declare-fun c!733098 () Bool)

(assert (=> b!4311936 (= c!733098 (and (= lt!1531819 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4311937 () Bool)

(declare-fun e!2681873 () List!48354)

(assert (=> b!4311937 (= e!2681873 (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819))))

(declare-fun b!4311939 () Bool)

(declare-fun call!298119 () List!48354)

(assert (=> b!4311939 (= e!2681881 (= call!298119 (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311940 () Bool)

(declare-fun e!2681882 () Bool)

(declare-datatypes ((SeekEntryResult!15 0))(
  ( (Found!15 (index!1439 (_ BitVec 32))) (Undefined!15) (MissingZero!15 (index!1440 (_ BitVec 32))) (MissingVacant!15 (index!1441 (_ BitVec 32))) (Intermediate!15 (undefined!96 Bool) (index!1442 (_ BitVec 32)) (x!748336 (_ BitVec 32))) )
))
(declare-fun lt!1532065 () SeekEntryResult!15)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!4311940 (= e!2681882 (inRange!0 (index!1439 lt!1532065) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun bm!298113 () Bool)

(assert (=> bm!298113 (= call!298119 call!298117)))

(declare-fun b!4311941 () Bool)

(declare-fun lt!1532068 () Unit!67368)

(declare-fun lt!1532060 () Unit!67368)

(assert (=> b!4311941 (= lt!1532068 lt!1532060)))

(declare-fun e!2681879 () Bool)

(assert (=> b!4311941 e!2681879))

(assert (=> b!4311941 (= c!733096 (= lt!1531819 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1532067 () SeekEntryResult!15)

(declare-fun lemmaKeyInListMapThenSameValueInArray!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 64) (_ BitVec 32) Int) Unit!67368)

(assert (=> b!4311941 (= lt!1532060 (lemmaKeyInListMapThenSameValueInArray!5 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819 (index!1439 lt!1532067) (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun lt!1532066 () Unit!67368)

(declare-fun lt!1532061 () Unit!67368)

(assert (=> b!4311941 (= lt!1532066 lt!1532061)))

(assert (=> b!4311941 (contains!10211 (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (index!1439 lt!1532067)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!8 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 32) Int) Unit!67368)

(assert (=> b!4311941 (= lt!1532061 (lemmaValidKeyInArrayIsInListMap!8 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (index!1439 lt!1532067) (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun lt!1532062 () Unit!67368)

(declare-fun lt!1532063 () Unit!67368)

(assert (=> b!4311941 (= lt!1532062 lt!1532063)))

(declare-fun arrayContainsKey!0 (array!16898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4311941 (arrayContainsKey!0 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16898 (_ BitVec 64) (_ BitVec 32)) Unit!67368)

(assert (=> b!4311941 (= lt!1532063 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819 (index!1439 lt!1532067)))))

(declare-fun e!2681883 () List!48354)

(assert (=> b!4311941 (= e!2681883 (select (arr!7548 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (index!1439 lt!1532067)))))

(declare-fun b!4311942 () Bool)

(declare-fun c!733100 () Bool)

(assert (=> b!4311942 (= c!733100 (and (= lt!1531819 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4311942 (= e!2681874 e!2681873)))

(declare-fun b!4311943 () Bool)

(declare-fun e!2681880 () Bool)

(assert (=> b!4311943 (= e!2681880 (= call!298117 (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311944 () Bool)

(assert (=> b!4311944 (= e!2681873 (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))

(declare-fun b!4311945 () Bool)

(declare-fun res!1767180 () Bool)

(declare-fun e!2681876 () Bool)

(assert (=> b!4311945 (=> (not res!1767180) (not e!2681876))))

(assert (=> b!4311945 (= res!1767180 (arrayContainsKey!0 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819 #b00000000000000000000000000000000))))

(assert (=> b!4311945 (= e!2681875 e!2681876)))

(declare-fun b!4311946 () Bool)

(assert (=> b!4311946 (= e!2681879 e!2681880)))

(declare-fun res!1767181 () Bool)

(assert (=> b!4311946 (= res!1767181 (not (= (bvand (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4311946 (=> (not res!1767181) (not e!2681880))))

(declare-fun b!4311947 () Bool)

(assert (=> b!4311947 (= e!2681877 e!2681883)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!16898 (_ BitVec 32)) SeekEntryResult!15)

(assert (=> b!4311947 (= lt!1532067 (seekEntry!0 lt!1531819 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun lt!1532064 () Unit!67368)

(declare-fun lemmaSeekEntryGivesInRangeIndex!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 64)) Unit!67368)

(assert (=> b!4311947 (= lt!1532064 (lemmaSeekEntryGivesInRangeIndex!5 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819))))

(assert (=> b!4311947 (= lt!1532065 (seekEntry!0 lt!1531819 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun res!1767183 () Bool)

(assert (=> b!4311947 (= res!1767183 (not ((_ is Found!15) lt!1532065)))))

(assert (=> b!4311947 (=> res!1767183 e!2681882)))

(assert (=> b!4311947 e!2681882))

(declare-fun lt!1532069 () Unit!67368)

(assert (=> b!4311947 (= lt!1532069 lt!1532064)))

(declare-fun c!733097 () Bool)

(assert (=> b!4311947 (= c!733097 ((_ is Found!15) lt!1532067))))

(declare-fun d!1268371 () Bool)

(declare-fun e!2681878 () Bool)

(assert (=> d!1268371 e!2681878))

(declare-fun c!733101 () Bool)

(assert (=> d!1268371 (= c!733101 (contains!10217 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819))))

(declare-fun lt!1532070 () List!48354)

(assert (=> d!1268371 (= lt!1532070 e!2681877)))

(declare-fun c!733099 () Bool)

(assert (=> d!1268371 (= c!733099 (= lt!1531819 (bvneg lt!1531819)))))

(assert (=> d!1268371 (valid!3673 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))

(assert (=> d!1268371 (= (apply!11039 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))) lt!1531819) lt!1532070)))

(declare-fun b!4311938 () Bool)

(assert (=> b!4311938 (= e!2681879 e!2681875)))

(declare-fun c!733102 () Bool)

(assert (=> b!4311938 (= c!733102 (= lt!1531819 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4311948 () Bool)

(assert (=> b!4311948 (= e!2681874 (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))

(declare-fun bm!298114 () Bool)

(assert (=> bm!298114 (= call!298116 (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (extraKeys!4930 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))))

(declare-fun b!4311949 () Bool)

(assert (=> b!4311949 (= e!2681876 (= call!298119 (select (arr!7548 (_values!4962 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (index!1439 lt!1532067))))))

(declare-fun b!4311950 () Bool)

(assert (=> b!4311950 (= e!2681883 (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819))))

(declare-fun b!4311951 () Bool)

(assert (=> b!4311951 (= e!2681878 (= lt!1532070 (get!15610 (getValueByKey!261 (toList!2433 (map!10234 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) lt!1531819))))))

(declare-fun b!4311952 () Bool)

(assert (=> b!4311952 (= e!2681878 (= lt!1532070 (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819)))))

(assert (= (and d!1268371 c!733099) b!4311936))

(assert (= (and d!1268371 (not c!733099)) b!4311947))

(assert (= (and b!4311936 c!733098) b!4311948))

(assert (= (and b!4311936 (not c!733098)) b!4311942))

(assert (= (and b!4311942 c!733100) b!4311944))

(assert (= (and b!4311942 (not c!733100)) b!4311937))

(assert (= (and b!4311947 (not res!1767183)) b!4311940))

(assert (= (and b!4311947 c!733097) b!4311941))

(assert (= (and b!4311947 (not c!733097)) b!4311950))

(assert (= (and b!4311941 c!733096) b!4311946))

(assert (= (and b!4311941 (not c!733096)) b!4311938))

(assert (= (and b!4311946 res!1767181) b!4311943))

(assert (= (and b!4311938 c!733102) b!4311935))

(assert (= (and b!4311938 (not c!733102)) b!4311945))

(assert (= (and b!4311935 res!1767182) b!4311939))

(assert (= (and b!4311945 res!1767180) b!4311949))

(assert (= (or b!4311939 b!4311949) bm!298112))

(assert (= (or b!4311939 b!4311949) bm!298113))

(assert (= (or b!4311943 bm!298112) bm!298114))

(assert (= (or b!4311943 bm!298113) bm!298111))

(assert (= (and d!1268371 c!733101) b!4311951))

(assert (= (and d!1268371 (not c!733101)) b!4311952))

(declare-fun b_lambda!126687 () Bool)

(assert (=> (not b_lambda!126687) (not b!4311937)))

(assert (=> b!4311937 t!355176))

(declare-fun b_and!340131 () Bool)

(assert (= b_and!340129 (and (=> t!355176 result!314726) b_and!340131)))

(declare-fun b_lambda!126689 () Bool)

(assert (=> (not b_lambda!126689) (not b!4311950)))

(assert (=> b!4311950 t!355176))

(declare-fun b_and!340133 () Bool)

(assert (= b_and!340131 (and (=> t!355176 result!314726) b_and!340133)))

(declare-fun b_lambda!126691 () Bool)

(assert (=> (not b_lambda!126691) (not b!4311952)))

(assert (=> b!4311952 t!355176))

(declare-fun b_and!340135 () Bool)

(assert (= b_and!340133 (and (=> t!355176 result!314726) b_and!340135)))

(assert (=> d!1268371 m!4904937))

(assert (=> d!1268371 m!4904731))

(assert (=> b!4311951 m!4904685))

(declare-fun m!4904939 () Bool)

(assert (=> b!4311951 m!4904939))

(assert (=> b!4311951 m!4904939))

(declare-fun m!4904941 () Bool)

(assert (=> b!4311951 m!4904941))

(declare-fun m!4904943 () Bool)

(assert (=> b!4311949 m!4904943))

(declare-fun m!4904945 () Bool)

(assert (=> b!4311945 m!4904945))

(assert (=> b!4311950 m!4904595))

(declare-fun m!4904947 () Bool)

(assert (=> bm!298111 m!4904947))

(assert (=> b!4311941 m!4904943))

(declare-fun m!4904949 () Bool)

(assert (=> b!4311941 m!4904949))

(assert (=> b!4311941 m!4904831))

(assert (=> b!4311941 m!4904831))

(assert (=> b!4311941 m!4904949))

(declare-fun m!4904951 () Bool)

(assert (=> b!4311941 m!4904951))

(declare-fun m!4904953 () Bool)

(assert (=> b!4311941 m!4904953))

(declare-fun m!4904955 () Bool)

(assert (=> b!4311941 m!4904955))

(assert (=> b!4311941 m!4904945))

(declare-fun m!4904957 () Bool)

(assert (=> b!4311941 m!4904957))

(declare-fun m!4904959 () Bool)

(assert (=> b!4311947 m!4904959))

(declare-fun m!4904961 () Bool)

(assert (=> b!4311947 m!4904961))

(assert (=> b!4311937 m!4904595))

(assert (=> b!4311952 m!4904595))

(declare-fun m!4904963 () Bool)

(assert (=> b!4311940 m!4904963))

(assert (=> bm!298114 m!4904831))

(assert (=> d!1268247 d!1268371))

(assert (=> d!1268247 d!1268299))

(declare-fun d!1268373 () Bool)

(assert (=> d!1268373 (= (imbalanced!57 (v!42414 (underlying!9592 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9405 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_vacant!4742 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))) (mask!13250 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))) (bvsgt (_vacant!4742 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) (_size!9405 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))))))))

(assert (=> d!1268243 d!1268373))

(assert (=> d!1268243 d!1268299))

(declare-fun d!1268375 () Bool)

(declare-fun res!1767184 () Bool)

(declare-fun e!2681884 () Bool)

(assert (=> d!1268375 (=> res!1767184 e!2681884)))

(assert (=> d!1268375 (= res!1767184 (and ((_ is Cons!48230) (t!355173 lt!1531826)) (= (_1!26651 (h!53671 (t!355173 lt!1531826))) key!2048)))))

(assert (=> d!1268375 (= (containsKey!328 (t!355173 lt!1531826) key!2048) e!2681884)))

(declare-fun b!4311953 () Bool)

(declare-fun e!2681885 () Bool)

(assert (=> b!4311953 (= e!2681884 e!2681885)))

(declare-fun res!1767185 () Bool)

(assert (=> b!4311953 (=> (not res!1767185) (not e!2681885))))

(assert (=> b!4311953 (= res!1767185 ((_ is Cons!48230) (t!355173 lt!1531826)))))

(declare-fun b!4311954 () Bool)

(assert (=> b!4311954 (= e!2681885 (containsKey!328 (t!355173 (t!355173 lt!1531826)) key!2048))))

(assert (= (and d!1268375 (not res!1767184)) b!4311953))

(assert (= (and b!4311953 res!1767185) b!4311954))

(declare-fun m!4904965 () Bool)

(assert (=> b!4311954 m!4904965))

(assert (=> b!4311645 d!1268375))

(declare-fun d!1268377 () Bool)

(assert (=> d!1268377 (= (map!10232 (_2!26653 lt!1531836)) (map!10234 (v!42413 (underlying!9591 (_2!26653 lt!1531836)))))))

(declare-fun bs!605211 () Bool)

(assert (= bs!605211 d!1268377))

(declare-fun m!4904967 () Bool)

(assert (=> bs!605211 m!4904967))

(assert (=> bm!298067 d!1268377))

(assert (=> b!4311691 d!1268315))

(declare-fun d!1268379 () Bool)

(declare-fun isEmpty!28087 (Option!10241) Bool)

(assert (=> d!1268379 (= (isDefined!7544 (getValueByKey!261 lt!1531904 lt!1531913)) (not (isEmpty!28087 (getValueByKey!261 lt!1531904 lt!1531913))))))

(declare-fun bs!605212 () Bool)

(assert (= bs!605212 d!1268379))

(assert (=> bs!605212 m!4904673))

(declare-fun m!4904969 () Bool)

(assert (=> bs!605212 m!4904969))

(assert (=> b!4311691 d!1268379))

(declare-fun d!1268381 () Bool)

(declare-fun lt!1532071 () Bool)

(assert (=> d!1268381 (= lt!1532071 (select (content!7556 lt!1531909) (tuple2!46745 lt!1531913 lt!1531908)))))

(declare-fun e!2681886 () Bool)

(assert (=> d!1268381 (= lt!1532071 e!2681886)))

(declare-fun res!1767187 () Bool)

(assert (=> d!1268381 (=> (not res!1767187) (not e!2681886))))

(assert (=> d!1268381 (= res!1767187 ((_ is Cons!48231) lt!1531909))))

(assert (=> d!1268381 (= (contains!10213 lt!1531909 (tuple2!46745 lt!1531913 lt!1531908)) lt!1532071)))

(declare-fun b!4311955 () Bool)

(declare-fun e!2681887 () Bool)

(assert (=> b!4311955 (= e!2681886 e!2681887)))

(declare-fun res!1767186 () Bool)

(assert (=> b!4311955 (=> res!1767186 e!2681887)))

(assert (=> b!4311955 (= res!1767186 (= (h!53672 lt!1531909) (tuple2!46745 lt!1531913 lt!1531908)))))

(declare-fun b!4311956 () Bool)

(assert (=> b!4311956 (= e!2681887 (contains!10213 (t!355174 lt!1531909) (tuple2!46745 lt!1531913 lt!1531908)))))

(assert (= (and d!1268381 res!1767187) b!4311955))

(assert (= (and b!4311955 (not res!1767186)) b!4311956))

(declare-fun m!4904971 () Bool)

(assert (=> d!1268381 m!4904971))

(declare-fun m!4904973 () Bool)

(assert (=> d!1268381 m!4904973))

(declare-fun m!4904975 () Bool)

(assert (=> b!4311956 m!4904975))

(assert (=> b!4311691 d!1268381))

(declare-fun d!1268383 () Bool)

(assert (=> d!1268383 (contains!10213 lt!1531909 (tuple2!46745 lt!1531913 lt!1531908))))

(declare-fun lt!1532074 () Unit!67368)

(declare-fun choose!26276 (List!48355 (_ BitVec 64) List!48354) Unit!67368)

(assert (=> d!1268383 (= lt!1532074 (choose!26276 lt!1531909 lt!1531913 lt!1531908))))

(declare-fun e!2681890 () Bool)

(assert (=> d!1268383 e!2681890))

(declare-fun res!1767190 () Bool)

(assert (=> d!1268383 (=> (not res!1767190) (not e!2681890))))

(declare-fun isStrictlySorted!14 (List!48355) Bool)

(assert (=> d!1268383 (= res!1767190 (isStrictlySorted!14 lt!1531909))))

(assert (=> d!1268383 (= (lemmaGetValueByKeyImpliesContainsTuple!150 lt!1531909 lt!1531913 lt!1531908) lt!1532074)))

(declare-fun b!4311959 () Bool)

(assert (=> b!4311959 (= e!2681890 (= (getValueByKey!261 lt!1531909 lt!1531913) (Some!10240 lt!1531908)))))

(assert (= (and d!1268383 res!1767190) b!4311959))

(assert (=> d!1268383 m!4904671))

(declare-fun m!4904977 () Bool)

(assert (=> d!1268383 m!4904977))

(declare-fun m!4904979 () Bool)

(assert (=> d!1268383 m!4904979))

(declare-fun m!4904981 () Bool)

(assert (=> b!4311959 m!4904981))

(assert (=> b!4311691 d!1268383))

(declare-fun d!1268385 () Bool)

(declare-fun res!1767195 () Bool)

(declare-fun e!2681895 () Bool)

(assert (=> d!1268385 (=> res!1767195 e!2681895)))

(assert (=> d!1268385 (= res!1767195 (and ((_ is Cons!48231) lt!1531907) (= (_1!26652 (h!53672 lt!1531907)) lt!1531913)))))

(assert (=> d!1268385 (= (containsKey!329 lt!1531907 lt!1531913) e!2681895)))

(declare-fun b!4311964 () Bool)

(declare-fun e!2681896 () Bool)

(assert (=> b!4311964 (= e!2681895 e!2681896)))

(declare-fun res!1767196 () Bool)

(assert (=> b!4311964 (=> (not res!1767196) (not e!2681896))))

(assert (=> b!4311964 (= res!1767196 (and (or (not ((_ is Cons!48231) lt!1531907)) (bvsle (_1!26652 (h!53672 lt!1531907)) lt!1531913)) ((_ is Cons!48231) lt!1531907) (bvslt (_1!26652 (h!53672 lt!1531907)) lt!1531913)))))

(declare-fun b!4311965 () Bool)

(assert (=> b!4311965 (= e!2681896 (containsKey!329 (t!355174 lt!1531907) lt!1531913))))

(assert (= (and d!1268385 (not res!1767195)) b!4311964))

(assert (= (and b!4311964 res!1767196) b!4311965))

(declare-fun m!4904983 () Bool)

(assert (=> b!4311965 m!4904983))

(assert (=> b!4311691 d!1268385))

(declare-fun b!4311968 () Bool)

(declare-fun e!2681898 () Option!10241)

(assert (=> b!4311968 (= e!2681898 (getValueByKey!261 (t!355174 lt!1531904) lt!1531913))))

(declare-fun d!1268387 () Bool)

(declare-fun c!733103 () Bool)

(assert (=> d!1268387 (= c!733103 (and ((_ is Cons!48231) lt!1531904) (= (_1!26652 (h!53672 lt!1531904)) lt!1531913)))))

(declare-fun e!2681897 () Option!10241)

(assert (=> d!1268387 (= (getValueByKey!261 lt!1531904 lt!1531913) e!2681897)))

(declare-fun b!4311969 () Bool)

(assert (=> b!4311969 (= e!2681898 None!10240)))

(declare-fun b!4311966 () Bool)

(assert (=> b!4311966 (= e!2681897 (Some!10240 (_2!26652 (h!53672 lt!1531904))))))

(declare-fun b!4311967 () Bool)

(assert (=> b!4311967 (= e!2681897 e!2681898)))

(declare-fun c!733104 () Bool)

(assert (=> b!4311967 (= c!733104 (and ((_ is Cons!48231) lt!1531904) (not (= (_1!26652 (h!53672 lt!1531904)) lt!1531913))))))

(assert (= (and d!1268387 c!733103) b!4311966))

(assert (= (and d!1268387 (not c!733103)) b!4311967))

(assert (= (and b!4311967 c!733104) b!4311968))

(assert (= (and b!4311967 (not c!733104)) b!4311969))

(declare-fun m!4904985 () Bool)

(assert (=> b!4311968 m!4904985))

(assert (=> b!4311691 d!1268387))

(assert (=> b!4311691 d!1268281))

(declare-fun d!1268389 () Bool)

(assert (=> d!1268389 (containsKey!329 lt!1531907 lt!1531913)))

(declare-fun lt!1532077 () Unit!67368)

(declare-fun choose!26277 (List!48355 (_ BitVec 64)) Unit!67368)

(assert (=> d!1268389 (= lt!1532077 (choose!26277 lt!1531907 lt!1531913))))

(declare-fun e!2681901 () Bool)

(assert (=> d!1268389 e!2681901))

(declare-fun res!1767199 () Bool)

(assert (=> d!1268389 (=> (not res!1767199) (not e!2681901))))

(assert (=> d!1268389 (= res!1767199 (isStrictlySorted!14 lt!1531907))))

(assert (=> d!1268389 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!140 lt!1531907 lt!1531913) lt!1532077)))

(declare-fun b!4311972 () Bool)

(assert (=> b!4311972 (= e!2681901 (isDefined!7544 (getValueByKey!261 lt!1531907 lt!1531913)))))

(assert (= (and d!1268389 res!1767199) b!4311972))

(assert (=> d!1268389 m!4904683))

(declare-fun m!4904987 () Bool)

(assert (=> d!1268389 m!4904987))

(declare-fun m!4904989 () Bool)

(assert (=> d!1268389 m!4904989))

(declare-fun m!4904991 () Bool)

(assert (=> b!4311972 m!4904991))

(assert (=> b!4311972 m!4904991))

(declare-fun m!4904993 () Bool)

(assert (=> b!4311972 m!4904993))

(assert (=> b!4311691 d!1268389))

(declare-fun d!1268391 () Bool)

(assert (=> d!1268391 (isDefined!7544 (getValueByKey!261 lt!1531904 lt!1531913))))

(declare-fun lt!1532080 () Unit!67368)

(declare-fun choose!26278 (List!48355 (_ BitVec 64)) Unit!67368)

(assert (=> d!1268391 (= lt!1532080 (choose!26278 lt!1531904 lt!1531913))))

(declare-fun e!2681904 () Bool)

(assert (=> d!1268391 e!2681904))

(declare-fun res!1767202 () Bool)

(assert (=> d!1268391 (=> (not res!1767202) (not e!2681904))))

(assert (=> d!1268391 (= res!1767202 (isStrictlySorted!14 lt!1531904))))

(assert (=> d!1268391 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!181 lt!1531904 lt!1531913) lt!1532080)))

(declare-fun b!4311975 () Bool)

(assert (=> b!4311975 (= e!2681904 (containsKey!329 lt!1531904 lt!1531913))))

(assert (= (and d!1268391 res!1767202) b!4311975))

(assert (=> d!1268391 m!4904673))

(assert (=> d!1268391 m!4904673))

(assert (=> d!1268391 m!4904681))

(declare-fun m!4904995 () Bool)

(assert (=> d!1268391 m!4904995))

(declare-fun m!4904997 () Bool)

(assert (=> d!1268391 m!4904997))

(declare-fun m!4904999 () Bool)

(assert (=> b!4311975 m!4904999))

(assert (=> b!4311691 d!1268391))

(declare-fun d!1268393 () Bool)

(declare-fun noDuplicatedKeys!97 (List!48354) Bool)

(assert (=> d!1268393 (= (invariantList!578 (toList!2434 lt!1531916)) (noDuplicatedKeys!97 (toList!2434 lt!1531916)))))

(declare-fun bs!605213 () Bool)

(assert (= bs!605213 d!1268393))

(declare-fun m!4905001 () Bool)

(assert (=> bs!605213 m!4905001))

(assert (=> d!1268283 d!1268393))

(assert (=> d!1268283 d!1268345))

(assert (=> d!1268283 d!1268281))

(assert (=> d!1268283 d!1268251))

(declare-fun bm!298163 () Bool)

(declare-fun call!298183 () SeekEntryResult!15)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16898 (_ BitVec 32)) SeekEntryResult!15)

(assert (=> bm!298163 (= call!298183 (seekEntryOrOpen!0 lt!1531819 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312056 () Bool)

(declare-fun e!2681963 () Bool)

(declare-fun call!298170 () ListLongMap!1045)

(declare-fun call!298178 () ListLongMap!1045)

(assert (=> b!4312056 (= e!2681963 (= call!298170 call!298178))))

(declare-fun bm!298164 () Bool)

(declare-fun call!298172 () Unit!67368)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 64) Int) Unit!67368)

(assert (=> bm!298164 (= call!298172 (lemmaInListMapThenSeekEntryOrOpenFindsIt!5 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531819 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312057 () Bool)

(declare-fun lt!1532153 () tuple2!46748)

(declare-fun call!298191 () tuple2!46748)

(assert (=> b!4312057 (= lt!1532153 call!298191)))

(declare-fun e!2681960 () tuple2!46748)

(assert (=> b!4312057 (= e!2681960 (tuple2!46749 (_1!26654 lt!1532153) (_2!26654 lt!1532153)))))

(declare-fun b!4312058 () Bool)

(declare-fun e!2681961 () Unit!67368)

(declare-fun lt!1532155 () Unit!67368)

(assert (=> b!4312058 (= e!2681961 lt!1532155)))

(declare-fun call!298168 () Unit!67368)

(assert (=> b!4312058 (= lt!1532155 call!298168)))

(declare-fun lt!1532145 () SeekEntryResult!15)

(declare-fun call!298182 () SeekEntryResult!15)

(assert (=> b!4312058 (= lt!1532145 call!298182)))

(declare-fun c!733138 () Bool)

(assert (=> b!4312058 (= c!733138 ((_ is MissingZero!15) lt!1532145))))

(declare-fun e!2681964 () Bool)

(assert (=> b!4312058 e!2681964))

(declare-fun b!4312059 () Bool)

(declare-fun e!2681967 () Unit!67368)

(declare-fun lt!1532139 () Unit!67368)

(assert (=> b!4312059 (= e!2681967 lt!1532139)))

(assert (=> b!4312059 (= lt!1532139 call!298172)))

(declare-fun lt!1532140 () SeekEntryResult!15)

(declare-fun call!298177 () SeekEntryResult!15)

(assert (=> b!4312059 (= lt!1532140 call!298177)))

(declare-fun res!1767243 () Bool)

(assert (=> b!4312059 (= res!1767243 ((_ is Found!15) lt!1532140))))

(declare-fun e!2681959 () Bool)

(assert (=> b!4312059 (=> (not res!1767243) (not e!2681959))))

(assert (=> b!4312059 e!2681959))

(declare-fun b!4312060 () Bool)

(declare-fun Unit!67383 () Unit!67368)

(assert (=> b!4312060 (= e!2681961 Unit!67383)))

(declare-fun lt!1532156 () Unit!67368)

(assert (=> b!4312060 (= lt!1532156 call!298172)))

(declare-fun lt!1532161 () SeekEntryResult!15)

(assert (=> b!4312060 (= lt!1532161 call!298182)))

(declare-fun res!1767235 () Bool)

(assert (=> b!4312060 (= res!1767235 ((_ is Found!15) lt!1532161))))

(declare-fun e!2681948 () Bool)

(assert (=> b!4312060 (=> (not res!1767235) (not e!2681948))))

(assert (=> b!4312060 e!2681948))

(declare-fun lt!1532135 () Unit!67368)

(assert (=> b!4312060 (= lt!1532135 lt!1532156)))

(assert (=> b!4312060 false))

(declare-fun b!4312061 () Bool)

(declare-fun e!2681955 () tuple2!46748)

(declare-fun lt!1532160 () tuple2!46748)

(assert (=> b!4312061 (= e!2681955 (tuple2!46749 (_1!26654 lt!1532160) (_2!26654 lt!1532160)))))

(assert (=> b!4312061 (= lt!1532160 call!298191)))

(declare-fun bm!298165 () Bool)

(assert (=> bm!298165 (= call!298182 call!298183)))

(declare-fun b!4312062 () Bool)

(declare-fun e!2681956 () tuple2!46748)

(declare-fun e!2681965 () tuple2!46748)

(assert (=> b!4312062 (= e!2681956 e!2681965)))

(declare-fun lt!1532149 () SeekEntryResult!15)

(assert (=> b!4312062 (= lt!1532149 (seekEntryOrOpen!0 lt!1531819 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun c!733136 () Bool)

(assert (=> b!4312062 (= c!733136 ((_ is Undefined!15) lt!1532149))))

(declare-fun bm!298166 () Bool)

(declare-fun call!298174 () Bool)

(declare-fun call!298179 () Bool)

(assert (=> bm!298166 (= call!298174 call!298179)))

(declare-fun b!4312063 () Bool)

(declare-fun res!1767233 () Bool)

(declare-fun e!2681953 () Bool)

(assert (=> b!4312063 (=> (not res!1767233) (not e!2681953))))

(assert (=> b!4312063 (= res!1767233 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1440 lt!1532145)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4312064 () Bool)

(declare-fun e!2681962 () Bool)

(assert (=> b!4312064 (= e!2681962 (= call!298170 (+!274 call!298178 (tuple2!46745 lt!1531819 lt!1531821))))))

(declare-fun b!4312065 () Bool)

(declare-fun e!2681952 () Bool)

(declare-fun call!298169 () Bool)

(assert (=> b!4312065 (= e!2681952 (not call!298169))))

(declare-fun bm!298167 () Bool)

(declare-fun lt!1532159 () tuple2!46748)

(assert (=> bm!298167 (= call!298170 (map!10234 (_2!26654 lt!1532159)))))

(declare-fun b!4312066 () Bool)

(declare-fun e!2681957 () ListLongMap!1045)

(declare-fun call!298176 () ListLongMap!1045)

(assert (=> b!4312066 (= e!2681957 call!298176)))

(declare-fun lt!1532157 () (_ BitVec 32))

(declare-fun bm!298168 () Bool)

(declare-fun c!733133 () Bool)

(declare-fun c!733140 () Bool)

(declare-fun call!298188 () ListLongMap!1045)

(assert (=> bm!298168 (= call!298188 (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (ite c!733133 (ite c!733140 (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1532157) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (ite c!733133 (ite c!733140 (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531821) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312067 () Bool)

(declare-fun res!1767244 () Bool)

(assert (=> b!4312067 (=> (not res!1767244) (not e!2681952))))

(declare-fun lt!1532158 () SeekEntryResult!15)

(assert (=> b!4312067 (= res!1767244 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1440 lt!1532158)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4312068 () Bool)

(declare-fun e!2681958 () tuple2!46748)

(assert (=> b!4312068 (= e!2681956 e!2681958)))

(assert (=> b!4312068 (= c!733140 (= lt!1531819 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!298169 () Bool)

(declare-fun call!298181 () Bool)

(assert (=> bm!298169 (= call!298179 call!298181)))

(declare-fun c!733143 () Bool)

(declare-fun c!733139 () Bool)

(declare-fun bm!298170 () Bool)

(declare-fun c!733132 () Bool)

(assert (=> bm!298170 (= call!298181 (inRange!0 (ite c!733136 (ite c!733139 (index!1439 lt!1532161) (ite c!733138 (index!1440 lt!1532145) (index!1441 lt!1532145))) (ite c!733132 (index!1439 lt!1532140) (ite c!733143 (index!1440 lt!1532158) (index!1441 lt!1532158)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312069 () Bool)

(declare-fun e!2681949 () Bool)

(assert (=> b!4312069 (= e!2681949 ((_ is Undefined!15) lt!1532158))))

(declare-fun b!4312070 () Bool)

(declare-fun e!2681954 () Bool)

(declare-fun e!2681951 () Bool)

(assert (=> b!4312070 (= e!2681954 e!2681951)))

(declare-fun res!1767241 () Bool)

(assert (=> b!4312070 (= res!1767241 call!298174)))

(assert (=> b!4312070 (=> (not res!1767241) (not e!2681951))))

(declare-fun bm!298171 () Bool)

(declare-fun c!733131 () Bool)

(assert (=> bm!298171 (= c!733131 c!733136)))

(declare-fun call!298185 () Bool)

(assert (=> bm!298171 (= call!298185 (contains!10211 e!2681957 (ite c!733136 lt!1531819 (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532149)))))))

(declare-fun bm!298172 () Bool)

(declare-fun call!298187 () ListLongMap!1045)

(declare-fun call!298173 () ListLongMap!1045)

(assert (=> bm!298172 (= call!298187 call!298173)))

(declare-fun b!4312071 () Bool)

(declare-fun lt!1532152 () Unit!67368)

(declare-fun lt!1532137 () Unit!67368)

(assert (=> b!4312071 (= lt!1532152 lt!1532137)))

(declare-fun call!298184 () ListLongMap!1045)

(assert (=> b!4312071 (= call!298187 call!298184)))

(declare-fun lt!1532144 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 List!48354 Int) Unit!67368)

(assert (=> b!4312071 (= lt!1532137 (lemmaChangeZeroKeyThenAddPairToListMap!5 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1532144 (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531821 (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(assert (=> b!4312071 (= lt!1532144 (bvor (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000001))))

(assert (=> b!4312071 (= e!2681958 (tuple2!46749 true (LongMapFixedSize!9363 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (bvor (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000001) lt!1531821 (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_size!9405 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_vacant!4742 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))))

(declare-fun call!298190 () ListLongMap!1045)

(declare-fun call!298186 () ListLongMap!1045)

(declare-fun bm!298173 () Bool)

(assert (=> bm!298173 (= call!298173 (+!274 (ite c!733133 (ite c!733140 call!298190 call!298184) call!298186) (ite c!733133 (ite c!733140 (tuple2!46745 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1531821) (tuple2!46745 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1531821)) (tuple2!46745 lt!1531819 lt!1531821))))))

(declare-fun b!4312072 () Bool)

(declare-fun e!2681950 () Bool)

(assert (=> b!4312072 (= e!2681949 e!2681950)))

(declare-fun res!1767242 () Bool)

(declare-fun call!298180 () Bool)

(assert (=> b!4312072 (= res!1767242 call!298180)))

(assert (=> b!4312072 (=> (not res!1767242) (not e!2681950))))

(declare-fun b!4312073 () Bool)

(assert (=> b!4312073 (= e!2681963 e!2681962)))

(declare-fun res!1767234 () Bool)

(assert (=> b!4312073 (= res!1767234 (contains!10211 call!298170 lt!1531819))))

(assert (=> b!4312073 (=> (not res!1767234) (not e!2681962))))

(declare-fun b!4312074 () Bool)

(declare-fun call!298189 () Bool)

(assert (=> b!4312074 (= e!2681953 (not call!298189))))

(declare-fun b!4312075 () Bool)

(declare-fun res!1767239 () Bool)

(assert (=> b!4312075 (=> (not res!1767239) (not e!2681952))))

(assert (=> b!4312075 (= res!1767239 call!298180)))

(declare-fun e!2681966 () Bool)

(assert (=> b!4312075 (= e!2681966 e!2681952)))

(declare-fun b!4312076 () Bool)

(assert (=> b!4312076 (= e!2681955 e!2681960)))

(declare-fun c!733134 () Bool)

(assert (=> b!4312076 (= c!733134 ((_ is MissingZero!15) lt!1532149))))

(declare-fun bm!298174 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 64) Int) Unit!67368)

(assert (=> bm!298174 (= call!298168 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!5 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531819 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312077 () Bool)

(declare-fun res!1767236 () Bool)

(assert (=> b!4312077 (= res!1767236 call!298179)))

(assert (=> b!4312077 (=> (not res!1767236) (not e!2681948))))

(declare-fun bm!298175 () Bool)

(declare-fun call!298175 () Bool)

(assert (=> bm!298175 (= call!298175 call!298181)))

(declare-fun b!4312078 () Bool)

(assert (=> b!4312078 (= e!2681948 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532161)) lt!1531819))))

(declare-fun b!4312079 () Bool)

(assert (=> b!4312079 (= e!2681950 (not call!298169))))

(declare-fun bm!298176 () Bool)

(assert (=> bm!298176 (= call!298178 (map!10234 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))

(declare-fun b!4312080 () Bool)

(assert (=> b!4312080 (= e!2681957 call!298186)))

(declare-fun d!1268395 () Bool)

(declare-fun e!2681947 () Bool)

(assert (=> d!1268395 e!2681947))

(declare-fun res!1767237 () Bool)

(assert (=> d!1268395 (=> (not res!1767237) (not e!2681947))))

(assert (=> d!1268395 (= res!1767237 (valid!3673 (_2!26654 lt!1532159)))))

(assert (=> d!1268395 (= lt!1532159 e!2681956)))

(assert (=> d!1268395 (= c!733133 (= lt!1531819 (bvneg lt!1531819)))))

(assert (=> d!1268395 (valid!3673 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))

(assert (=> d!1268395 (= (update!454 (v!42413 (underlying!9591 (_2!26653 lt!1531837))) lt!1531819 lt!1531821) lt!1532159)))

(declare-fun b!4312081 () Bool)

(declare-fun lt!1532150 () Unit!67368)

(declare-fun lt!1532141 () Unit!67368)

(assert (=> b!4312081 (= lt!1532150 lt!1532141)))

(assert (=> b!4312081 (= call!298187 call!298190)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 List!48354 Int) Unit!67368)

(assert (=> b!4312081 (= lt!1532141 (lemmaChangeLongMinValueKeyThenAddPairToListMap!5 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1532157 (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531821 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(assert (=> b!4312081 (= lt!1532157 (bvor (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000010))))

(assert (=> b!4312081 (= e!2681958 (tuple2!46749 true (LongMapFixedSize!9363 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (bvor (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000010) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531821 (_size!9405 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_vacant!4742 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))))

(declare-fun b!4312082 () Bool)

(declare-fun c!733141 () Bool)

(assert (=> b!4312082 (= c!733141 ((_ is MissingVacant!15) lt!1532149))))

(assert (=> b!4312082 (= e!2681965 e!2681955)))

(declare-fun b!4312083 () Bool)

(declare-fun c!733135 () Bool)

(assert (=> b!4312083 (= c!733135 ((_ is MissingVacant!15) lt!1532145))))

(assert (=> b!4312083 (= e!2681964 e!2681954)))

(declare-fun b!4312084 () Bool)

(declare-fun lt!1532142 () Unit!67368)

(assert (=> b!4312084 (= lt!1532142 e!2681961)))

(assert (=> b!4312084 (= c!733139 call!298185)))

(assert (=> b!4312084 (= e!2681965 (tuple2!46749 false (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))

(declare-fun bm!298177 () Bool)

(assert (=> bm!298177 (= call!298177 call!298183)))

(declare-fun b!4312085 () Bool)

(assert (=> b!4312085 (= e!2681954 ((_ is Undefined!15) lt!1532145))))

(declare-fun b!4312086 () Bool)

(declare-fun res!1767240 () Bool)

(assert (=> b!4312086 (=> (not res!1767240) (not e!2681953))))

(assert (=> b!4312086 (= res!1767240 call!298174)))

(assert (=> b!4312086 (= e!2681964 e!2681953)))

(declare-fun b!4312087 () Bool)

(declare-fun res!1767231 () Bool)

(assert (=> b!4312087 (= res!1767231 call!298175)))

(assert (=> b!4312087 (=> (not res!1767231) (not e!2681959))))

(declare-fun bm!298178 () Bool)

(declare-fun lt!1532138 () array!16900)

(assert (=> bm!298178 (= call!298176 (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (ite c!733133 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1532138) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (ite (and c!733133 c!733140) lt!1532144 (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (ite (and c!733133 c!733140) lt!1531821 (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun b!4312088 () Bool)

(declare-fun res!1767232 () Bool)

(assert (=> b!4312088 (= res!1767232 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1441 lt!1532145)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4312088 (=> (not res!1767232) (not e!2681951))))

(declare-fun bm!298179 () Bool)

(assert (=> bm!298179 (= call!298190 call!298188)))

(declare-fun bm!298180 () Bool)

(assert (=> bm!298180 (= call!298180 call!298175)))

(declare-fun bm!298181 () Bool)

(declare-fun call!298171 () Bool)

(assert (=> bm!298181 (= call!298171 (arrayContainsKey!0 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1531819 #b00000000000000000000000000000000))))

(declare-fun b!4312089 () Bool)

(assert (=> b!4312089 (= e!2681959 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532140)) lt!1531819))))

(declare-fun b!4312090 () Bool)

(declare-fun Unit!67384 () Unit!67368)

(assert (=> b!4312090 (= e!2681967 Unit!67384)))

(declare-fun lt!1532136 () Unit!67368)

(assert (=> b!4312090 (= lt!1532136 call!298168)))

(assert (=> b!4312090 (= lt!1532158 call!298177)))

(assert (=> b!4312090 (= c!733143 ((_ is MissingZero!15) lt!1532158))))

(assert (=> b!4312090 e!2681966))

(declare-fun lt!1532147 () Unit!67368)

(assert (=> b!4312090 (= lt!1532147 lt!1532136)))

(assert (=> b!4312090 false))

(declare-fun bm!298182 () Bool)

(assert (=> bm!298182 (= call!298184 call!298176)))

(declare-fun b!4312091 () Bool)

(assert (=> b!4312091 (= e!2681947 e!2681963)))

(declare-fun c!733137 () Bool)

(assert (=> b!4312091 (= c!733137 (_1!26654 lt!1532159))))

(declare-fun bm!298183 () Bool)

(assert (=> bm!298183 (= call!298189 call!298171)))

(declare-fun bm!298184 () Bool)

(assert (=> bm!298184 (= call!298169 call!298171)))

(declare-fun bm!298185 () Bool)

(declare-fun updateHelperNewKey!5 (LongMapFixedSize!9362 (_ BitVec 64) List!48354 (_ BitVec 32)) tuple2!46748)

(assert (=> bm!298185 (= call!298191 (updateHelperNewKey!5 (v!42413 (underlying!9591 (_2!26653 lt!1531837))) lt!1531819 lt!1531821 (ite c!733141 (index!1441 lt!1532149) (index!1440 lt!1532149))))))

(declare-fun b!4312092 () Bool)

(declare-fun res!1767238 () Bool)

(assert (=> b!4312092 (= res!1767238 (= (select (arr!7547 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1441 lt!1532158)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4312092 (=> (not res!1767238) (not e!2681950))))

(declare-fun b!4312093 () Bool)

(assert (=> b!4312093 (= e!2681951 (not call!298189))))

(declare-fun b!4312094 () Bool)

(declare-fun lt!1532146 () Unit!67368)

(declare-fun lt!1532143 () Unit!67368)

(assert (=> b!4312094 (= lt!1532146 lt!1532143)))

(assert (=> b!4312094 call!298185))

(assert (=> b!4312094 (= lt!1532143 (lemmaValidKeyInArrayIsInListMap!8 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) lt!1532138 (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (index!1439 lt!1532149) (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(assert (=> b!4312094 (= lt!1532138 (array!16901 (store (arr!7548 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532149) lt!1531821) (size!35587 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))))

(declare-fun lt!1532151 () Unit!67368)

(declare-fun lt!1532148 () Unit!67368)

(assert (=> b!4312094 (= lt!1532151 lt!1532148)))

(assert (=> b!4312094 (= call!298173 (getCurrentListMap!18 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (array!16901 (store (arr!7548 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532149) lt!1531821) (size!35587 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) #b00000000000000000000000000000000 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!5 (array!16898 array!16900 (_ BitVec 32) (_ BitVec 32) List!48354 List!48354 (_ BitVec 32) (_ BitVec 64) List!48354 Int) Unit!67368)

(assert (=> b!4312094 (= lt!1532148 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!5 (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (index!1439 lt!1532149) lt!1531819 lt!1531821 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))))))

(declare-fun lt!1532154 () Unit!67368)

(assert (=> b!4312094 (= lt!1532154 e!2681967)))

(assert (=> b!4312094 (= c!733132 (contains!10211 call!298186 lt!1531819))))

(assert (=> b!4312094 (= e!2681960 (tuple2!46749 true (LongMapFixedSize!9363 (defaultEntry!5066 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (mask!13250 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (extraKeys!4930 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (zeroValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (minValue!4940 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_size!9405 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (_keys!4981 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))) (array!16901 (store (arr!7548 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837))))) (index!1439 lt!1532149) lt!1531821) (size!35587 (_values!4962 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))) (_vacant!4742 (v!42413 (underlying!9591 (_2!26653 lt!1531837)))))))))

(declare-fun bm!298186 () Bool)

(assert (=> bm!298186 (= call!298186 call!298188)))

(declare-fun b!4312095 () Bool)

(declare-fun c!733142 () Bool)

(assert (=> b!4312095 (= c!733142 ((_ is MissingVacant!15) lt!1532158))))

(assert (=> b!4312095 (= e!2681966 e!2681949)))

(assert (= (and d!1268395 c!733133) b!4312068))

(assert (= (and d!1268395 (not c!733133)) b!4312062))

(assert (= (and b!4312068 c!733140) b!4312071))

(assert (= (and b!4312068 (not c!733140)) b!4312081))

(assert (= (or b!4312071 b!4312081) bm!298182))

(assert (= (or b!4312071 b!4312081) bm!298179))

(assert (= (or b!4312071 b!4312081) bm!298172))

(assert (= (and b!4312062 c!733136) b!4312084))

(assert (= (and b!4312062 (not c!733136)) b!4312082))

(assert (= (and b!4312084 c!733139) b!4312060))

(assert (= (and b!4312084 (not c!733139)) b!4312058))

(assert (= (and b!4312060 res!1767235) b!4312077))

(assert (= (and b!4312077 res!1767236) b!4312078))

(assert (= (and b!4312058 c!733138) b!4312086))

(assert (= (and b!4312058 (not c!733138)) b!4312083))

(assert (= (and b!4312086 res!1767240) b!4312063))

(assert (= (and b!4312063 res!1767233) b!4312074))

(assert (= (and b!4312083 c!733135) b!4312070))

(assert (= (and b!4312083 (not c!733135)) b!4312085))

(assert (= (and b!4312070 res!1767241) b!4312088))

(assert (= (and b!4312088 res!1767232) b!4312093))

(assert (= (or b!4312074 b!4312093) bm!298183))

(assert (= (or b!4312086 b!4312070) bm!298166))

(assert (= (or b!4312077 bm!298166) bm!298169))

(assert (= (or b!4312060 b!4312058) bm!298165))

(assert (= (and b!4312082 c!733141) b!4312061))

(assert (= (and b!4312082 (not c!733141)) b!4312076))

(assert (= (and b!4312076 c!733134) b!4312057))

(assert (= (and b!4312076 (not c!733134)) b!4312094))

(assert (= (and b!4312094 c!733132) b!4312059))

(assert (= (and b!4312094 (not c!733132)) b!4312090))

(assert (= (and b!4312059 res!1767243) b!4312087))

(assert (= (and b!4312087 res!1767231) b!4312089))

(assert (= (and b!4312090 c!733143) b!4312075))

(assert (= (and b!4312090 (not c!733143)) b!4312095))

(assert (= (and b!4312075 res!1767239) b!4312067))

(assert (= (and b!4312067 res!1767244) b!4312065))

(assert (= (and b!4312095 c!733142) b!4312072))

(assert (= (and b!4312095 (not c!733142)) b!4312069))

(assert (= (and b!4312072 res!1767242) b!4312092))

(assert (= (and b!4312092 res!1767238) b!4312079))

(assert (= (or b!4312065 b!4312079) bm!298184))

(assert (= (or b!4312075 b!4312072) bm!298180))

(assert (= (or b!4312087 bm!298180) bm!298175))

(assert (= (or b!4312059 b!4312090) bm!298177))

(assert (= (or b!4312061 b!4312057) bm!298185))

(assert (= (or b!4312058 b!4312090) bm!298174))

(assert (= (or bm!298183 bm!298184) bm!298181))

(assert (= (or b!4312084 b!4312094) bm!298186))

(assert (= (or bm!298165 bm!298177) bm!298163))

(assert (= (or b!4312060 b!4312059) bm!298164))

(assert (= (or bm!298169 bm!298175) bm!298170))

(assert (= (or b!4312084 b!4312094) bm!298171))

(assert (= (and bm!298171 c!733131) b!4312080))

(assert (= (and bm!298171 (not c!733131)) b!4312066))

(assert (= (or bm!298179 bm!298186) bm!298168))

(assert (= (or bm!298182 b!4312066) bm!298178))

(assert (= (or bm!298172 b!4312094) bm!298173))

(assert (= (and d!1268395 res!1767237) b!4312091))

(assert (= (and b!4312091 c!733137) b!4312073))

(assert (= (and b!4312091 (not c!733137)) b!4312056))

(assert (= (and b!4312073 res!1767234) b!4312064))

(assert (= (or b!4312064 b!4312056) bm!298176))

(assert (= (or b!4312073 b!4312064 b!4312056) bm!298167))

(declare-fun m!4905003 () Bool)

(assert (=> b!4312071 m!4905003))

(declare-fun m!4905005 () Bool)

(assert (=> b!4312094 m!4905005))

(declare-fun m!4905007 () Bool)

(assert (=> b!4312094 m!4905007))

(declare-fun m!4905009 () Bool)

(assert (=> b!4312094 m!4905009))

(declare-fun m!4905011 () Bool)

(assert (=> b!4312094 m!4905011))

(declare-fun m!4905013 () Bool)

(assert (=> b!4312094 m!4905013))

(declare-fun m!4905015 () Bool)

(assert (=> b!4312089 m!4905015))

(declare-fun m!4905017 () Bool)

(assert (=> bm!298170 m!4905017))

(declare-fun m!4905019 () Bool)

(assert (=> b!4312078 m!4905019))

(declare-fun m!4905021 () Bool)

(assert (=> bm!298185 m!4905021))

(declare-fun m!4905023 () Bool)

(assert (=> b!4312081 m!4905023))

(declare-fun m!4905025 () Bool)

(assert (=> bm!298167 m!4905025))

(declare-fun m!4905027 () Bool)

(assert (=> bm!298181 m!4905027))

(declare-fun m!4905029 () Bool)

(assert (=> bm!298176 m!4905029))

(declare-fun m!4905031 () Bool)

(assert (=> bm!298174 m!4905031))

(declare-fun m!4905033 () Bool)

(assert (=> b!4312063 m!4905033))

(declare-fun m!4905035 () Bool)

(assert (=> bm!298171 m!4905035))

(declare-fun m!4905037 () Bool)

(assert (=> bm!298171 m!4905037))

(declare-fun m!4905039 () Bool)

(assert (=> b!4312064 m!4905039))

(declare-fun m!4905041 () Bool)

(assert (=> b!4312092 m!4905041))

(declare-fun m!4905043 () Bool)

(assert (=> bm!298163 m!4905043))

(declare-fun m!4905045 () Bool)

(assert (=> b!4312067 m!4905045))

(declare-fun m!4905047 () Bool)

(assert (=> bm!298178 m!4905047))

(declare-fun m!4905049 () Bool)

(assert (=> bm!298168 m!4905049))

(declare-fun m!4905051 () Bool)

(assert (=> b!4312088 m!4905051))

(declare-fun m!4905053 () Bool)

(assert (=> bm!298164 m!4905053))

(declare-fun m!4905055 () Bool)

(assert (=> bm!298173 m!4905055))

(assert (=> b!4312062 m!4905043))

(declare-fun m!4905057 () Bool)

(assert (=> b!4312073 m!4905057))

(declare-fun m!4905059 () Bool)

(assert (=> d!1268395 m!4905059))

(declare-fun m!4905061 () Bool)

(assert (=> d!1268395 m!4905061))

(assert (=> b!4311605 d!1268395))

(declare-fun bs!605214 () Bool)

(declare-fun d!1268397 () Bool)

(assert (= bs!605214 (and d!1268397 b!4311687)))

(declare-fun lambda!133042 () Int)

(assert (=> bs!605214 (= lambda!133042 lambda!133031)))

(declare-fun bs!605215 () Bool)

(assert (= bs!605215 (and d!1268397 d!1268257)))

(assert (=> bs!605215 (not (= lambda!133042 lambda!133020))))

(declare-fun bs!605216 () Bool)

(assert (= bs!605216 (and d!1268397 b!4311632)))

(assert (=> bs!605216 (= lambda!133042 lambda!133017)))

(declare-fun bs!605217 () Bool)

(assert (= bs!605217 (and d!1268397 d!1268335)))

(assert (=> bs!605217 (= lambda!133042 lambda!133038)))

(declare-fun bs!605218 () Bool)

(assert (= bs!605218 (and d!1268397 d!1268333)))

(assert (=> bs!605218 (= lambda!133042 lambda!133035)))

(declare-fun bs!605219 () Bool)

(assert (= bs!605219 (and d!1268397 d!1268345)))

(assert (=> bs!605219 (= lambda!133042 lambda!133039)))

(declare-fun bs!605220 () Bool)

(assert (= bs!605220 (and d!1268397 d!1268261)))

(assert (=> bs!605220 (not (= lambda!133042 lambda!133023))))

(declare-fun bs!605221 () Bool)

(assert (= bs!605221 (and d!1268397 d!1268301)))

(assert (=> bs!605221 (not (= lambda!133042 lambda!133032))))

(declare-fun bs!605222 () Bool)

(assert (= bs!605222 (and d!1268397 b!4311580)))

(assert (=> bs!605222 (= lambda!133042 lambda!133014)))

(declare-fun e!2681970 () Bool)

(assert (=> d!1268397 e!2681970))

(declare-fun res!1767247 () Bool)

(assert (=> d!1268397 (=> (not res!1767247) (not e!2681970))))

(assert (=> d!1268397 (= res!1767247 (contains!10211 lt!1531902 (hash!1034 (hashF!6735 thiss!42308) key!2048)))))

(declare-fun lt!1532164 () Unit!67368)

(declare-fun choose!26279 (ListLongMap!1045 K!9449 Hashable!4597) Unit!67368)

(assert (=> d!1268397 (= lt!1532164 (choose!26279 lt!1531902 key!2048 (hashF!6735 thiss!42308)))))

(assert (=> d!1268397 (forall!8744 (toList!2433 lt!1531902) lambda!133042)))

(assert (=> d!1268397 (= (lemmaInGenericMapThenInLongMap!139 lt!1531902 key!2048 (hashF!6735 thiss!42308)) lt!1532164)))

(declare-fun b!4312098 () Bool)

(assert (=> b!4312098 (= e!2681970 (isDefined!7543 (getPair!139 (apply!11040 lt!1531902 (hash!1034 (hashF!6735 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1268397 res!1767247) b!4312098))

(assert (=> d!1268397 m!4904545))

(assert (=> d!1268397 m!4904545))

(declare-fun m!4905063 () Bool)

(assert (=> d!1268397 m!4905063))

(declare-fun m!4905065 () Bool)

(assert (=> d!1268397 m!4905065))

(declare-fun m!4905067 () Bool)

(assert (=> d!1268397 m!4905067))

(assert (=> b!4312098 m!4904545))

(assert (=> b!4312098 m!4904545))

(declare-fun m!4905069 () Bool)

(assert (=> b!4312098 m!4905069))

(assert (=> b!4312098 m!4905069))

(declare-fun m!4905071 () Bool)

(assert (=> b!4312098 m!4905071))

(assert (=> b!4312098 m!4905071))

(declare-fun m!4905073 () Bool)

(assert (=> b!4312098 m!4905073))

(assert (=> b!4311692 d!1268397))

(assert (=> d!1268261 d!1268269))

(declare-fun d!1268399 () Bool)

(assert (=> d!1268399 (allKeysSameHash!197 lt!1531825 lt!1531819 (hashF!6735 thiss!42308))))

(assert (=> d!1268399 true))

(declare-fun _$19!971 () Unit!67368)

(assert (=> d!1268399 (= (choose!26271 (toList!2433 lt!1531817) lt!1531819 lt!1531825 (hashF!6735 thiss!42308)) _$19!971)))

(declare-fun bs!605223 () Bool)

(assert (= bs!605223 d!1268399))

(assert (=> bs!605223 m!4904529))

(assert (=> d!1268261 d!1268399))

(declare-fun d!1268401 () Bool)

(declare-fun res!1767248 () Bool)

(declare-fun e!2681971 () Bool)

(assert (=> d!1268401 (=> res!1767248 e!2681971)))

(assert (=> d!1268401 (= res!1767248 ((_ is Nil!48231) (toList!2433 lt!1531817)))))

(assert (=> d!1268401 (= (forall!8744 (toList!2433 lt!1531817) lambda!133023) e!2681971)))

(declare-fun b!4312099 () Bool)

(declare-fun e!2681972 () Bool)

(assert (=> b!4312099 (= e!2681971 e!2681972)))

(declare-fun res!1767249 () Bool)

(assert (=> b!4312099 (=> (not res!1767249) (not e!2681972))))

(assert (=> b!4312099 (= res!1767249 (dynLambda!20447 lambda!133023 (h!53672 (toList!2433 lt!1531817))))))

(declare-fun b!4312100 () Bool)

(assert (=> b!4312100 (= e!2681972 (forall!8744 (t!355174 (toList!2433 lt!1531817)) lambda!133023))))

(assert (= (and d!1268401 (not res!1767248)) b!4312099))

(assert (= (and b!4312099 res!1767249) b!4312100))

(declare-fun b_lambda!126693 () Bool)

(assert (=> (not b_lambda!126693) (not b!4312099)))

(declare-fun m!4905075 () Bool)

(assert (=> b!4312099 m!4905075))

(declare-fun m!4905077 () Bool)

(assert (=> b!4312100 m!4905077))

(assert (=> d!1268261 d!1268401))

(declare-fun d!1268403 () Bool)

(declare-fun res!1767250 () Bool)

(declare-fun e!2681973 () Bool)

(assert (=> d!1268403 (=> res!1767250 e!2681973)))

(assert (=> d!1268403 (= res!1767250 (and ((_ is Cons!48230) lt!1531841) (= (_1!26651 (h!53671 lt!1531841)) key!2048)))))

(assert (=> d!1268403 (= (containsKey!328 lt!1531841 key!2048) e!2681973)))

(declare-fun b!4312101 () Bool)

(declare-fun e!2681974 () Bool)

(assert (=> b!4312101 (= e!2681973 e!2681974)))

(declare-fun res!1767251 () Bool)

(assert (=> b!4312101 (=> (not res!1767251) (not e!2681974))))

(assert (=> b!4312101 (= res!1767251 ((_ is Cons!48230) lt!1531841))))

(declare-fun b!4312102 () Bool)

(assert (=> b!4312102 (= e!2681974 (containsKey!328 (t!355173 lt!1531841) key!2048))))

(assert (= (and d!1268403 (not res!1767250)) b!4312101))

(assert (= (and b!4312101 res!1767251) b!4312102))

(declare-fun m!4905079 () Bool)

(assert (=> b!4312102 m!4905079))

(assert (=> d!1268245 d!1268403))

(assert (=> d!1268245 d!1268309))

(declare-fun bs!605224 () Bool)

(declare-fun d!1268405 () Bool)

(assert (= bs!605224 (and d!1268405 d!1268267)))

(declare-fun lambda!133043 () Int)

(assert (=> bs!605224 (= lambda!133043 lambda!133026)))

(declare-fun bs!605225 () Bool)

(assert (= bs!605225 (and d!1268405 d!1268269)))

(assert (=> bs!605225 (= lambda!133043 lambda!133027)))

(declare-fun bs!605226 () Bool)

(assert (= bs!605226 (and d!1268405 d!1268273)))

(assert (=> bs!605226 (= lambda!133043 lambda!133028)))

(assert (=> d!1268405 true))

(assert (=> d!1268405 true))

(assert (=> d!1268405 (= (allKeysSameHash!197 (removePairForKey!223 lt!1531825 key!2048) lt!1531819 (hashF!6735 thiss!42308)) (forall!8745 (removePairForKey!223 lt!1531825 key!2048) lambda!133043))))

(declare-fun bs!605227 () Bool)

(assert (= bs!605227 d!1268405))

(assert (=> bs!605227 m!4904541))

(declare-fun m!4905081 () Bool)

(assert (=> bs!605227 m!4905081))

(assert (=> d!1268271 d!1268405))

(assert (=> d!1268271 d!1268245))

(declare-fun d!1268407 () Bool)

(assert (=> d!1268407 (allKeysSameHash!197 (removePairForKey!223 lt!1531825 key!2048) lt!1531819 (hashF!6735 thiss!42308))))

(assert (=> d!1268407 true))

(declare-fun _$20!119 () Unit!67368)

(assert (=> d!1268407 (= (choose!26272 lt!1531825 key!2048 lt!1531819 (hashF!6735 thiss!42308)) _$20!119)))

(declare-fun bs!605228 () Bool)

(assert (= bs!605228 d!1268407))

(assert (=> bs!605228 m!4904541))

(assert (=> bs!605228 m!4904541))

(assert (=> bs!605228 m!4904631))

(assert (=> d!1268271 d!1268407))

(assert (=> d!1268271 d!1268309))

(declare-fun e!2681975 () Bool)

(declare-fun b!4312103 () Bool)

(declare-fun tp!1325026 () Bool)

(assert (=> b!4312103 (= e!2681975 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325026))))

(assert (=> b!4311697 (= tp!1325013 e!2681975)))

(assert (= (and b!4311697 ((_ is Cons!48230) (t!355173 mapDefault!20894))) b!4312103))

(declare-fun b!4312104 () Bool)

(declare-fun tp!1325027 () Bool)

(declare-fun e!2681976 () Bool)

(assert (=> b!4312104 (= e!2681976 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325027))))

(assert (=> b!4311707 (= tp!1325024 e!2681976)))

(assert (= (and b!4311707 ((_ is Cons!48230) (t!355173 (zeroValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))) b!4312104))

(declare-fun b!4312105 () Bool)

(declare-fun e!2681978 () Bool)

(declare-fun tp!1325029 () Bool)

(assert (=> b!4312105 (= e!2681978 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325029))))

(declare-fun condMapEmpty!20898 () Bool)

(declare-fun mapDefault!20898 () List!48354)

(assert (=> mapNonEmpty!20897 (= condMapEmpty!20898 (= mapRest!20897 ((as const (Array (_ BitVec 32) List!48354)) mapDefault!20898)))))

(declare-fun e!2681977 () Bool)

(declare-fun mapRes!20898 () Bool)

(assert (=> mapNonEmpty!20897 (= tp!1325020 (and e!2681977 mapRes!20898))))

(declare-fun mapIsEmpty!20898 () Bool)

(assert (=> mapIsEmpty!20898 mapRes!20898))

(declare-fun b!4312106 () Bool)

(declare-fun tp!1325030 () Bool)

(assert (=> b!4312106 (= e!2681977 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325030))))

(declare-fun mapNonEmpty!20898 () Bool)

(declare-fun tp!1325028 () Bool)

(assert (=> mapNonEmpty!20898 (= mapRes!20898 (and tp!1325028 e!2681978))))

(declare-fun mapKey!20898 () (_ BitVec 32))

(declare-fun mapValue!20898 () List!48354)

(declare-fun mapRest!20898 () (Array (_ BitVec 32) List!48354))

(assert (=> mapNonEmpty!20898 (= mapRest!20897 (store mapRest!20898 mapKey!20898 mapValue!20898))))

(assert (= (and mapNonEmpty!20897 condMapEmpty!20898) mapIsEmpty!20898))

(assert (= (and mapNonEmpty!20897 (not condMapEmpty!20898)) mapNonEmpty!20898))

(assert (= (and mapNonEmpty!20898 ((_ is Cons!48230) mapValue!20898)) b!4312105))

(assert (= (and mapNonEmpty!20897 ((_ is Cons!48230) mapDefault!20898)) b!4312106))

(declare-fun m!4905083 () Bool)

(assert (=> mapNonEmpty!20898 m!4905083))

(declare-fun e!2681979 () Bool)

(declare-fun b!4312107 () Bool)

(declare-fun tp!1325031 () Bool)

(assert (=> b!4312107 (= e!2681979 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325031))))

(assert (=> b!4311704 (= tp!1325021 e!2681979)))

(assert (= (and b!4311704 ((_ is Cons!48230) (t!355173 mapValue!20897))) b!4312107))

(declare-fun b!4312108 () Bool)

(declare-fun e!2681980 () Bool)

(declare-fun tp!1325032 () Bool)

(assert (=> b!4312108 (= e!2681980 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325032))))

(assert (=> b!4311706 (= tp!1325023 e!2681980)))

(assert (= (and b!4311706 ((_ is Cons!48230) (t!355173 mapValue!20894))) b!4312108))

(declare-fun tp!1325033 () Bool)

(declare-fun b!4312109 () Bool)

(declare-fun e!2681981 () Bool)

(assert (=> b!4312109 (= e!2681981 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325033))))

(assert (=> b!4311705 (= tp!1325022 e!2681981)))

(assert (= (and b!4311705 ((_ is Cons!48230) (t!355173 mapDefault!20897))) b!4312109))

(declare-fun b!4312110 () Bool)

(declare-fun e!2681982 () Bool)

(declare-fun tp!1325034 () Bool)

(assert (=> b!4312110 (= e!2681982 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325034))))

(assert (=> b!4311708 (= tp!1325025 e!2681982)))

(assert (= (and b!4311708 ((_ is Cons!48230) (t!355173 (minValue!4940 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308)))))))) b!4312110))

(declare-fun b!4312111 () Bool)

(declare-fun e!2681983 () Bool)

(declare-fun tp!1325035 () Bool)

(assert (=> b!4312111 (= e!2681983 (and tp_is_empty!23829 tp_is_empty!23831 tp!1325035))))

(assert (=> tb!257305 (= result!314726 e!2681983)))

(assert (= (and tb!257305 ((_ is Cons!48230) (dynLambda!20446 (defaultEntry!5066 (v!42413 (underlying!9591 (v!42414 (underlying!9592 thiss!42308))))) lt!1531819))) b!4312111))

(declare-fun b_lambda!126695 () Bool)

(assert (= b_lambda!126681 (or d!1268269 b_lambda!126695)))

(declare-fun bs!605229 () Bool)

(declare-fun d!1268409 () Bool)

(assert (= bs!605229 (and d!1268409 d!1268269)))

(assert (=> bs!605229 (= (dynLambda!20448 lambda!133027 (h!53671 lt!1531825)) (= (hash!1034 (hashF!6735 thiss!42308) (_1!26651 (h!53671 lt!1531825))) lt!1531819))))

(declare-fun m!4905085 () Bool)

(assert (=> bs!605229 m!4905085))

(assert (=> b!4311882 d!1268409))

(declare-fun b_lambda!126697 () Bool)

(assert (= b_lambda!126677 (or (and b!4311571 b_free!128683) b_lambda!126697)))

(declare-fun b_lambda!126699 () Bool)

(assert (= b_lambda!126671 (or d!1268257 b_lambda!126699)))

(declare-fun bs!605230 () Bool)

(declare-fun d!1268411 () Bool)

(assert (= bs!605230 (and d!1268411 d!1268257)))

(assert (=> bs!605230 (= (dynLambda!20447 lambda!133020 (h!53672 (toList!2433 lt!1531817))) (allKeysSameHash!197 (_2!26652 (h!53672 (toList!2433 lt!1531817))) (_1!26652 (h!53672 (toList!2433 lt!1531817))) (hashF!6735 thiss!42308)))))

(declare-fun m!4905087 () Bool)

(assert (=> bs!605230 m!4905087))

(assert (=> b!4311739 d!1268411))

(declare-fun b_lambda!126701 () Bool)

(assert (= b_lambda!126693 (or d!1268261 b_lambda!126701)))

(declare-fun bs!605231 () Bool)

(declare-fun d!1268413 () Bool)

(assert (= bs!605231 (and d!1268413 d!1268261)))

(assert (=> bs!605231 (= (dynLambda!20447 lambda!133023 (h!53672 (toList!2433 lt!1531817))) (allKeysSameHash!197 (_2!26652 (h!53672 (toList!2433 lt!1531817))) (_1!26652 (h!53672 (toList!2433 lt!1531817))) (hashF!6735 thiss!42308)))))

(assert (=> bs!605231 m!4905087))

(assert (=> b!4312099 d!1268413))

(declare-fun b_lambda!126703 () Bool)

(assert (= b_lambda!126673 (or d!1268267 b_lambda!126703)))

(declare-fun bs!605232 () Bool)

(declare-fun d!1268415 () Bool)

(assert (= bs!605232 (and d!1268415 d!1268267)))

(assert (=> bs!605232 (= (dynLambda!20448 lambda!133026 (h!53671 lt!1531826)) (= (hash!1034 (hashF!6735 thiss!42308) (_1!26651 (h!53671 lt!1531826))) lt!1531819))))

(declare-fun m!4905089 () Bool)

(assert (=> bs!605232 m!4905089))

(assert (=> b!4311745 d!1268415))

(declare-fun b_lambda!126705 () Bool)

(assert (= b_lambda!126683 (or d!1268273 b_lambda!126705)))

(declare-fun bs!605233 () Bool)

(declare-fun d!1268417 () Bool)

(assert (= bs!605233 (and d!1268417 d!1268273)))

(assert (=> bs!605233 (= (dynLambda!20448 lambda!133028 (h!53671 lt!1531821)) (= (hash!1034 (hashF!6735 thiss!42308) (_1!26651 (h!53671 lt!1531821))) lt!1531819))))

(declare-fun m!4905091 () Bool)

(assert (=> bs!605233 m!4905091))

(assert (=> b!4311892 d!1268417))

(declare-fun b_lambda!126707 () Bool)

(assert (= b_lambda!126691 (or (and b!4311571 b_free!128683) b_lambda!126707)))

(declare-fun b_lambda!126709 () Bool)

(assert (= b_lambda!126685 (or b!4311580 b_lambda!126709)))

(declare-fun bs!605234 () Bool)

(declare-fun d!1268419 () Bool)

(assert (= bs!605234 (and d!1268419 b!4311580)))

(assert (=> bs!605234 (= (dynLambda!20447 lambda!133014 (h!53672 (t!355174 (toList!2433 lt!1531817)))) (noDuplicateKeys!224 (_2!26652 (h!53672 (t!355174 (toList!2433 lt!1531817))))))))

(declare-fun m!4905093 () Bool)

(assert (=> bs!605234 m!4905093))

(assert (=> b!4311894 d!1268419))

(declare-fun b_lambda!126711 () Bool)

(assert (= b_lambda!126687 (or (and b!4311571 b_free!128683) b_lambda!126711)))

(declare-fun b_lambda!126713 () Bool)

(assert (= b_lambda!126679 (or b!4311687 b_lambda!126713)))

(declare-fun bs!605235 () Bool)

(declare-fun d!1268421 () Bool)

(assert (= bs!605235 (and d!1268421 b!4311687)))

(assert (=> bs!605235 (= (dynLambda!20447 lambda!133031 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913))) (noDuplicateKeys!224 (_2!26652 (tuple2!46745 lt!1531913 (apply!11038 (v!42414 (underlying!9592 thiss!42308)) lt!1531913)))))))

(declare-fun m!4905095 () Bool)

(assert (=> bs!605235 m!4905095))

(assert (=> d!1268325 d!1268421))

(declare-fun b_lambda!126715 () Bool)

(assert (= b_lambda!126689 (or (and b!4311571 b_free!128683) b_lambda!126715)))

(declare-fun b_lambda!126717 () Bool)

(assert (= b_lambda!126675 (or b!4311632 b_lambda!126717)))

(declare-fun bs!605236 () Bool)

(declare-fun d!1268423 () Bool)

(assert (= bs!605236 (and d!1268423 b!4311632)))

(assert (=> bs!605236 (= (dynLambda!20447 lambda!133017 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308)))))) (noDuplicateKeys!224 (_2!26652 (h!53672 (toList!2433 (map!10232 (v!42414 (underlying!9592 thiss!42308))))))))))

(declare-fun m!4905097 () Bool)

(assert (=> bs!605236 m!4905097))

(assert (=> b!4311753 d!1268423))

(check-sat (not d!1268347) (not d!1268331) (not b!4311752) (not b!4311834) (not b!4311829) (not d!1268389) (not b!4311895) (not d!1268395) (not b_lambda!126707) (not b_lambda!126669) (not b!4311867) (not bm!298171) (not b!4312062) (not bs!605234) (not b!4312103) (not d!1268315) (not b!4311828) (not d!1268339) (not bm!298100) (not b!4311975) (not b!4312102) (not b!4312109) (not b_next!129387) (not bs!605235) (not b!4312064) (not b!4312106) (not b!4311783) (not d!1268381) (not d!1268407) (not b!4312110) (not b!4311855) (not b!4311799) (not b!4311785) (not d!1268345) (not d!1268397) (not d!1268391) (not b!4311738) (not b!4311844) (not b_lambda!126699) (not b!4311891) (not b!4312107) (not bs!605232) (not bs!605230) (not mapNonEmpty!20898) (not d!1268379) (not b!4312071) (not d!1268325) (not b!4311848) (not b!4312111) (not d!1268359) (not b!4311959) (not b_lambda!126703) (not b!4311849) (not d!1268341) (not b!4311794) (not d!1268335) (not bm!298102) (not bs!605229) (not b!4311839) tp_is_empty!23831 (not b!4311883) (not b!4311852) (not bs!605233) (not b!4311858) (not d!1268301) (not b!4311754) (not bm!298168) (not d!1268383) (not b!4311784) (not b!4311940) (not b!4311851) (not b!4311890) (not b_lambda!126697) (not b!4311956) (not d!1268349) (not b!4311886) (not d!1268299) (not b!4311898) (not b!4312104) (not d!1268337) (not bs!605231) (not b!4311833) (not b!4311968) (not b!4311730) (not b!4312073) (not b_lambda!126711) (not b!4311896) (not bm!298163) (not d!1268287) (not b!4311757) (not b!4311854) (not bm!298174) (not bm!298176) (not b_lambda!126717) (not b!4311888) (not b!4311846) (not b!4311853) (not b_lambda!126705) (not b!4311732) (not b!4311893) (not b!4311759) b_and!340135 (not b!4311751) (not d!1268291) (not b!4311869) (not b!4311843) (not b!4311806) (not b!4311756) (not d!1268361) (not d!1268333) (not b!4312100) (not d!1268399) (not b!4312098) (not b_lambda!126709) (not b!4311782) (not b_lambda!126667) (not b!4311758) (not bs!605236) (not b!4311889) (not d!1268371) b_and!340125 (not b!4311954) (not b!4311779) (not tb!257307) (not b_lambda!126715) (not b!4312081) (not d!1268319) (not b_next!129389) (not bm!298101) (not b_lambda!126701) (not b!4311830) (not b_lambda!126713) (not bm!298111) (not d!1268377) (not bm!298094) (not bm!298114) (not b!4311788) (not b!4312105) (not b!4311755) (not b_lambda!126695) (not d!1268369) (not b!4311791) (not b!4311857) (not bm!298173) (not b!4311965) (not b!4311945) (not b!4311880) tp_is_empty!23829 (not b!4311941) (not d!1268405) (not d!1268327) (not d!1268367) (not d!1268295) (not b!4311805) (not b!4312108) (not b!4311740) (not bm!298097) (not b!4311951) (not bm!298167) (not b!4311831) (not d!1268393) (not b!4311746) (not b!4311807) (not b!4312094) (not bm!298170) (not d!1268307) (not d!1268357) (not d!1268343) (not bm!298181) (not b!4311842) (not b!4311760) (not d!1268311) (not b!4311796) (not bm!298178) (not bm!298164) (not b!4311947) (not b!4311781) (not bm!298185) (not b!4311793) (not b!4311845) (not b!4311972) (not b!4311827) (not b!4311859) (not d!1268313))
(check-sat b_and!340135 b_and!340125 (not b_next!129389) (not b_next!129387))
