; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497014 () Bool)

(assert start!497014)

(declare-fun b!4808660 () Bool)

(declare-fun b_free!130043 () Bool)

(declare-fun b_next!130833 () Bool)

(assert (=> b!4808660 (= b_free!130043 (not b_next!130833))))

(declare-fun tp!1359951 () Bool)

(declare-fun b_and!341817 () Bool)

(assert (=> b!4808660 (= tp!1359951 b_and!341817)))

(declare-fun b!4808658 () Bool)

(declare-fun b_free!130045 () Bool)

(declare-fun b_next!130835 () Bool)

(assert (=> b!4808658 (= b_free!130045 (not b_next!130835))))

(declare-fun tp!1359956 () Bool)

(declare-fun b_and!341819 () Bool)

(assert (=> b!4808658 (= tp!1359956 b_and!341819)))

(declare-fun res!2045603 () Bool)

(declare-fun e!3003677 () Bool)

(assert (=> start!497014 (=> (not res!2045603) (not e!3003677))))

(declare-datatypes ((K!16079 0))(
  ( (K!16080 (val!21169 Int)) )
))
(declare-datatypes ((array!18464 0))(
  ( (array!18465 (arr!8235 (Array (_ BitVec 32) (_ BitVec 64))) (size!36481 (_ BitVec 32))) )
))
(declare-datatypes ((V!16325 0))(
  ( (V!16326 (val!21170 Int)) )
))
(declare-datatypes ((tuple2!57292 0))(
  ( (tuple2!57293 (_1!31940 K!16079) (_2!31940 V!16325)) )
))
(declare-datatypes ((List!54602 0))(
  ( (Nil!54478) (Cons!54478 (h!60910 tuple2!57292) (t!362072 List!54602)) )
))
(declare-datatypes ((array!18466 0))(
  ( (array!18467 (arr!8236 (Array (_ BitVec 32) List!54602)) (size!36482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10050 0))(
  ( (LongMapFixedSize!10051 (defaultEntry!5443 Int) (mask!15008 (_ BitVec 32)) (extraKeys!5300 (_ BitVec 32)) (zeroValue!5313 List!54602) (minValue!5313 List!54602) (_size!10075 (_ BitVec 32)) (_keys!5367 array!18464) (_values!5338 array!18466) (_vacant!5090 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19865 0))(
  ( (Cell!19866 (v!48739 LongMapFixedSize!10050)) )
))
(declare-datatypes ((MutLongMap!5025 0))(
  ( (LongMap!5025 (underlying!10257 Cell!19865)) (MutLongMapExt!5024 (__x!33173 Int)) )
))
(declare-datatypes ((Hashable!7036 0))(
  ( (HashableExt!7035 (__x!33174 Int)) )
))
(declare-datatypes ((Cell!19867 0))(
  ( (Cell!19868 (v!48740 MutLongMap!5025)) )
))
(declare-datatypes ((MutableMap!4909 0))(
  ( (MutableMapExt!4908 (__x!33175 Int)) (HashMap!4909 (underlying!10258 Cell!19867) (hashF!13304 Hashable!7036) (_size!10076 (_ BitVec 32)) (defaultValue!5080 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4909)

(get-info :version)

(assert (=> start!497014 (= res!2045603 ((_ is HashMap!4909) thiss!41921))))

(assert (=> start!497014 e!3003677))

(declare-fun e!3003668 () Bool)

(assert (=> start!497014 e!3003668))

(declare-fun tp_is_empty!33915 () Bool)

(assert (=> start!497014 tp_is_empty!33915))

(declare-fun e!3003674 () Bool)

(assert (=> b!4808658 (= e!3003668 (and e!3003674 tp!1359956))))

(declare-fun mapNonEmpty!22229 () Bool)

(declare-fun mapRes!22229 () Bool)

(declare-fun tp!1359950 () Bool)

(declare-fun tp!1359955 () Bool)

(assert (=> mapNonEmpty!22229 (= mapRes!22229 (and tp!1359950 tp!1359955))))

(declare-fun mapKey!22229 () (_ BitVec 32))

(declare-fun mapValue!22229 () List!54602)

(declare-fun mapRest!22229 () (Array (_ BitVec 32) List!54602))

(assert (=> mapNonEmpty!22229 (= (arr!8236 (_values!5338 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) (store mapRest!22229 mapKey!22229 mapValue!22229))))

(declare-fun b!4808659 () Bool)

(declare-fun e!3003672 () Bool)

(declare-fun e!3003676 () Bool)

(assert (=> b!4808659 (= e!3003672 e!3003676)))

(declare-fun tp!1359953 () Bool)

(declare-fun e!3003670 () Bool)

(declare-fun tp!1359952 () Bool)

(declare-fun array_inv!5941 (array!18464) Bool)

(declare-fun array_inv!5942 (array!18466) Bool)

(assert (=> b!4808660 (= e!3003676 (and tp!1359951 tp!1359953 tp!1359952 (array_inv!5941 (_keys!5367 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) (array_inv!5942 (_values!5338 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) e!3003670))))

(declare-datatypes ((Unit!141418 0))(
  ( (Unit!141419) )
))
(declare-fun e!3003675 () Unit!141418)

(declare-datatypes ((tuple2!57294 0))(
  ( (tuple2!57295 (_1!31941 (_ BitVec 64)) (_2!31941 List!54602)) )
))
(declare-datatypes ((List!54603 0))(
  ( (Nil!54479) (Cons!54479 (h!60911 tuple2!57294) (t!362073 List!54603)) )
))
(declare-datatypes ((ListLongMap!5553 0))(
  ( (ListLongMap!5554 (toList!7099 List!54603)) )
))
(declare-fun lt!1961326 () ListLongMap!5553)

(declare-fun b!4808661 () Bool)

(declare-fun lambda!233604 () Int)

(declare-fun lt!1961327 () tuple2!57294)

(declare-fun forallContained!4252 (List!54603 Int tuple2!57294) Unit!141418)

(assert (=> b!4808661 (= e!3003675 (forallContained!4252 (toList!7099 lt!1961326) lambda!233604 lt!1961327))))

(declare-fun map!12374 (MutLongMap!5025) ListLongMap!5553)

(assert (=> b!4808661 (= lt!1961326 (map!12374 (v!48740 (underlying!10258 thiss!41921))))))

(declare-fun lt!1961332 () List!54602)

(declare-fun lt!1961335 () (_ BitVec 64))

(declare-fun apply!13110 (MutLongMap!5025 (_ BitVec 64)) List!54602)

(assert (=> b!4808661 (= lt!1961332 (apply!13110 (v!48740 (underlying!10258 thiss!41921)) lt!1961335))))

(assert (=> b!4808661 (= lt!1961327 (tuple2!57295 lt!1961335 lt!1961332))))

(declare-fun c!819570 () Bool)

(declare-fun contains!18168 (List!54603 tuple2!57294) Bool)

(assert (=> b!4808661 (= c!819570 (not (contains!18168 (toList!7099 lt!1961326) lt!1961327)))))

(declare-fun lt!1961334 () Unit!141418)

(declare-fun e!3003669 () Unit!141418)

(assert (=> b!4808661 (= lt!1961334 e!3003669)))

(declare-fun b!4808662 () Bool)

(declare-fun Unit!141420 () Unit!141418)

(assert (=> b!4808662 (= e!3003669 Unit!141420)))

(declare-fun b!4808663 () Bool)

(declare-fun e!3003678 () Bool)

(assert (=> b!4808663 (= e!3003677 e!3003678)))

(declare-fun res!2045601 () Bool)

(assert (=> b!4808663 (=> (not res!2045601) (not e!3003678))))

(declare-fun lt!1961328 () ListLongMap!5553)

(declare-fun key!1652 () K!16079)

(declare-datatypes ((ListMap!6539 0))(
  ( (ListMap!6540 (toList!7100 List!54602)) )
))
(declare-fun contains!18169 (ListMap!6539 K!16079) Bool)

(declare-fun extractMap!2521 (List!54603) ListMap!6539)

(assert (=> b!4808663 (= res!2045601 (not (contains!18169 (extractMap!2521 (toList!7099 lt!1961328)) key!1652)))))

(assert (=> b!4808663 (= lt!1961328 (map!12374 (v!48740 (underlying!10258 thiss!41921))))))

(declare-fun lt!1961329 () Unit!141418)

(assert (=> b!4808663 (= lt!1961329 e!3003675)))

(declare-fun c!819569 () Bool)

(declare-fun contains!18170 (MutLongMap!5025 (_ BitVec 64)) Bool)

(assert (=> b!4808663 (= c!819569 (contains!18170 (v!48740 (underlying!10258 thiss!41921)) lt!1961335))))

(declare-fun hash!5105 (Hashable!7036 K!16079) (_ BitVec 64))

(assert (=> b!4808663 (= lt!1961335 (hash!5105 (hashF!13304 thiss!41921) key!1652))))

(declare-fun b!4808664 () Bool)

(declare-fun noDuplicateKeys!2384 (List!54602) Bool)

(declare-fun apply!13111 (ListLongMap!5553 (_ BitVec 64)) List!54602)

(assert (=> b!4808664 (= e!3003678 (not (noDuplicateKeys!2384 (apply!13111 lt!1961328 lt!1961335))))))

(declare-fun b!4808665 () Bool)

(declare-fun res!2045602 () Bool)

(assert (=> b!4808665 (=> (not res!2045602) (not e!3003677))))

(declare-fun valid!4045 (MutableMap!4909) Bool)

(assert (=> b!4808665 (= res!2045602 (valid!4045 thiss!41921))))

(declare-fun b!4808666 () Bool)

(declare-fun e!3003673 () Bool)

(assert (=> b!4808666 (= e!3003673 e!3003672)))

(declare-fun b!4808667 () Bool)

(declare-fun res!2045600 () Bool)

(assert (=> b!4808667 (=> (not res!2045600) (not e!3003678))))

(declare-fun contains!18171 (ListLongMap!5553 (_ BitVec 64)) Bool)

(assert (=> b!4808667 (= res!2045600 (contains!18171 lt!1961328 lt!1961335))))

(declare-fun mapIsEmpty!22229 () Bool)

(assert (=> mapIsEmpty!22229 mapRes!22229))

(declare-fun b!4808668 () Bool)

(declare-fun lt!1961333 () MutLongMap!5025)

(assert (=> b!4808668 (= e!3003674 (and e!3003673 ((_ is LongMap!5025) lt!1961333)))))

(assert (=> b!4808668 (= lt!1961333 (v!48740 (underlying!10258 thiss!41921)))))

(declare-fun b!4808669 () Bool)

(declare-fun Unit!141421 () Unit!141418)

(assert (=> b!4808669 (= e!3003675 Unit!141421)))

(declare-fun b!4808670 () Bool)

(assert (=> b!4808670 false))

(declare-fun lt!1961331 () Unit!141418)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!981 (List!54603 (_ BitVec 64) List!54602) Unit!141418)

(assert (=> b!4808670 (= lt!1961331 (lemmaGetValueByKeyImpliesContainsTuple!981 (toList!7099 lt!1961326) lt!1961335 lt!1961332))))

(declare-datatypes ((Option!13268 0))(
  ( (None!13267) (Some!13267 (v!48741 List!54602)) )
))
(declare-fun isDefined!10407 (Option!13268) Bool)

(declare-fun getValueByKey!2465 (List!54603 (_ BitVec 64)) Option!13268)

(assert (=> b!4808670 (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun lt!1961325 () Unit!141418)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2253 (List!54603 (_ BitVec 64)) Unit!141418)

(assert (=> b!4808670 (= lt!1961325 (lemmaContainsKeyImpliesGetValueByKeyDefined!2253 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun containsKey!4120 (List!54603 (_ BitVec 64)) Bool)

(assert (=> b!4808670 (containsKey!4120 (toList!7099 lt!1961326) lt!1961335)))

(declare-fun lt!1961330 () Unit!141418)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!252 (List!54603 (_ BitVec 64)) Unit!141418)

(assert (=> b!4808670 (= lt!1961330 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!252 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun Unit!141422 () Unit!141418)

(assert (=> b!4808670 (= e!3003669 Unit!141422)))

(declare-fun b!4808671 () Bool)

(declare-fun tp!1359954 () Bool)

(assert (=> b!4808671 (= e!3003670 (and tp!1359954 mapRes!22229))))

(declare-fun condMapEmpty!22229 () Bool)

(declare-fun mapDefault!22229 () List!54602)

(assert (=> b!4808671 (= condMapEmpty!22229 (= (arr!8236 (_values!5338 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54602)) mapDefault!22229)))))

(assert (= (and start!497014 res!2045603) b!4808665))

(assert (= (and b!4808665 res!2045602) b!4808663))

(assert (= (and b!4808663 c!819569) b!4808661))

(assert (= (and b!4808663 (not c!819569)) b!4808669))

(assert (= (and b!4808661 c!819570) b!4808670))

(assert (= (and b!4808661 (not c!819570)) b!4808662))

(assert (= (and b!4808663 res!2045601) b!4808667))

(assert (= (and b!4808667 res!2045600) b!4808664))

(assert (= (and b!4808671 condMapEmpty!22229) mapIsEmpty!22229))

(assert (= (and b!4808671 (not condMapEmpty!22229)) mapNonEmpty!22229))

(assert (= b!4808660 b!4808671))

(assert (= b!4808659 b!4808660))

(assert (= b!4808666 b!4808659))

(assert (= (and b!4808668 ((_ is LongMap!5025) (v!48740 (underlying!10258 thiss!41921)))) b!4808666))

(assert (= b!4808658 b!4808668))

(assert (= (and start!497014 ((_ is HashMap!4909) thiss!41921)) b!4808658))

(declare-fun m!5794728 () Bool)

(assert (=> b!4808665 m!5794728))

(declare-fun m!5794730 () Bool)

(assert (=> b!4808670 m!5794730))

(declare-fun m!5794732 () Bool)

(assert (=> b!4808670 m!5794732))

(declare-fun m!5794734 () Bool)

(assert (=> b!4808670 m!5794734))

(assert (=> b!4808670 m!5794732))

(declare-fun m!5794736 () Bool)

(assert (=> b!4808670 m!5794736))

(declare-fun m!5794738 () Bool)

(assert (=> b!4808670 m!5794738))

(declare-fun m!5794740 () Bool)

(assert (=> b!4808670 m!5794740))

(declare-fun m!5794742 () Bool)

(assert (=> b!4808663 m!5794742))

(declare-fun m!5794744 () Bool)

(assert (=> b!4808663 m!5794744))

(declare-fun m!5794746 () Bool)

(assert (=> b!4808663 m!5794746))

(declare-fun m!5794748 () Bool)

(assert (=> b!4808663 m!5794748))

(assert (=> b!4808663 m!5794742))

(declare-fun m!5794750 () Bool)

(assert (=> b!4808663 m!5794750))

(declare-fun m!5794752 () Bool)

(assert (=> b!4808664 m!5794752))

(assert (=> b!4808664 m!5794752))

(declare-fun m!5794754 () Bool)

(assert (=> b!4808664 m!5794754))

(declare-fun m!5794756 () Bool)

(assert (=> mapNonEmpty!22229 m!5794756))

(declare-fun m!5794758 () Bool)

(assert (=> b!4808667 m!5794758))

(declare-fun m!5794760 () Bool)

(assert (=> b!4808661 m!5794760))

(assert (=> b!4808661 m!5794748))

(declare-fun m!5794762 () Bool)

(assert (=> b!4808661 m!5794762))

(declare-fun m!5794764 () Bool)

(assert (=> b!4808661 m!5794764))

(declare-fun m!5794766 () Bool)

(assert (=> b!4808660 m!5794766))

(declare-fun m!5794768 () Bool)

(assert (=> b!4808660 m!5794768))

(check-sat (not b!4808665) (not b!4808670) (not b!4808664) (not b_next!130833) (not b!4808661) (not b_next!130835) (not b!4808660) b_and!341819 tp_is_empty!33915 (not mapNonEmpty!22229) b_and!341817 (not b!4808667) (not b!4808663) (not b!4808671))
(check-sat b_and!341817 b_and!341819 (not b_next!130833) (not b_next!130835))
(get-model)

(declare-fun d!1540077 () Bool)

(declare-fun res!2045608 () Bool)

(declare-fun e!3003683 () Bool)

(assert (=> d!1540077 (=> res!2045608 e!3003683)))

(assert (=> d!1540077 (= res!2045608 (not ((_ is Cons!54478) (apply!13111 lt!1961328 lt!1961335))))))

(assert (=> d!1540077 (= (noDuplicateKeys!2384 (apply!13111 lt!1961328 lt!1961335)) e!3003683)))

(declare-fun b!4808676 () Bool)

(declare-fun e!3003684 () Bool)

(assert (=> b!4808676 (= e!3003683 e!3003684)))

(declare-fun res!2045609 () Bool)

(assert (=> b!4808676 (=> (not res!2045609) (not e!3003684))))

(declare-fun containsKey!4121 (List!54602 K!16079) Bool)

(assert (=> b!4808676 (= res!2045609 (not (containsKey!4121 (t!362072 (apply!13111 lt!1961328 lt!1961335)) (_1!31940 (h!60910 (apply!13111 lt!1961328 lt!1961335))))))))

(declare-fun b!4808677 () Bool)

(assert (=> b!4808677 (= e!3003684 (noDuplicateKeys!2384 (t!362072 (apply!13111 lt!1961328 lt!1961335))))))

(assert (= (and d!1540077 (not res!2045608)) b!4808676))

(assert (= (and b!4808676 res!2045609) b!4808677))

(declare-fun m!5794770 () Bool)

(assert (=> b!4808676 m!5794770))

(declare-fun m!5794772 () Bool)

(assert (=> b!4808677 m!5794772))

(assert (=> b!4808664 d!1540077))

(declare-fun d!1540079 () Bool)

(declare-fun get!18635 (Option!13268) List!54602)

(assert (=> d!1540079 (= (apply!13111 lt!1961328 lt!1961335) (get!18635 (getValueByKey!2465 (toList!7099 lt!1961328) lt!1961335)))))

(declare-fun bs!1159985 () Bool)

(assert (= bs!1159985 d!1540079))

(declare-fun m!5794774 () Bool)

(assert (=> bs!1159985 m!5794774))

(assert (=> bs!1159985 m!5794774))

(declare-fun m!5794776 () Bool)

(assert (=> bs!1159985 m!5794776))

(assert (=> b!4808664 d!1540079))

(declare-fun bs!1159986 () Bool)

(declare-fun b!4808682 () Bool)

(assert (= bs!1159986 (and b!4808682 b!4808661)))

(declare-fun lambda!233607 () Int)

(assert (=> bs!1159986 (= lambda!233607 lambda!233604)))

(declare-fun d!1540081 () Bool)

(declare-fun res!2045614 () Bool)

(declare-fun e!3003687 () Bool)

(assert (=> d!1540081 (=> (not res!2045614) (not e!3003687))))

(declare-fun valid!4046 (MutLongMap!5025) Bool)

(assert (=> d!1540081 (= res!2045614 (valid!4046 (v!48740 (underlying!10258 thiss!41921))))))

(assert (=> d!1540081 (= (valid!4045 thiss!41921) e!3003687)))

(declare-fun res!2045615 () Bool)

(assert (=> b!4808682 (=> (not res!2045615) (not e!3003687))))

(declare-fun forall!12383 (List!54603 Int) Bool)

(assert (=> b!4808682 (= res!2045615 (forall!12383 (toList!7099 (map!12374 (v!48740 (underlying!10258 thiss!41921)))) lambda!233607))))

(declare-fun b!4808683 () Bool)

(declare-fun allKeysSameHashInMap!2399 (ListLongMap!5553 Hashable!7036) Bool)

(assert (=> b!4808683 (= e!3003687 (allKeysSameHashInMap!2399 (map!12374 (v!48740 (underlying!10258 thiss!41921))) (hashF!13304 thiss!41921)))))

(assert (= (and d!1540081 res!2045614) b!4808682))

(assert (= (and b!4808682 res!2045615) b!4808683))

(declare-fun m!5794778 () Bool)

(assert (=> d!1540081 m!5794778))

(assert (=> b!4808682 m!5794748))

(declare-fun m!5794780 () Bool)

(assert (=> b!4808682 m!5794780))

(assert (=> b!4808683 m!5794748))

(assert (=> b!4808683 m!5794748))

(declare-fun m!5794782 () Bool)

(assert (=> b!4808683 m!5794782))

(assert (=> b!4808665 d!1540081))

(declare-fun b!4808692 () Bool)

(declare-fun e!3003692 () Option!13268)

(assert (=> b!4808692 (= e!3003692 (Some!13267 (_2!31941 (h!60911 (toList!7099 lt!1961326)))))))

(declare-fun d!1540083 () Bool)

(declare-fun c!819575 () Bool)

(assert (=> d!1540083 (= c!819575 (and ((_ is Cons!54479) (toList!7099 lt!1961326)) (= (_1!31941 (h!60911 (toList!7099 lt!1961326))) lt!1961335)))))

(assert (=> d!1540083 (= (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335) e!3003692)))

(declare-fun b!4808694 () Bool)

(declare-fun e!3003693 () Option!13268)

(assert (=> b!4808694 (= e!3003693 (getValueByKey!2465 (t!362073 (toList!7099 lt!1961326)) lt!1961335))))

(declare-fun b!4808693 () Bool)

(assert (=> b!4808693 (= e!3003692 e!3003693)))

(declare-fun c!819576 () Bool)

(assert (=> b!4808693 (= c!819576 (and ((_ is Cons!54479) (toList!7099 lt!1961326)) (not (= (_1!31941 (h!60911 (toList!7099 lt!1961326))) lt!1961335))))))

(declare-fun b!4808695 () Bool)

(assert (=> b!4808695 (= e!3003693 None!13267)))

(assert (= (and d!1540083 c!819575) b!4808692))

(assert (= (and d!1540083 (not c!819575)) b!4808693))

(assert (= (and b!4808693 c!819576) b!4808694))

(assert (= (and b!4808693 (not c!819576)) b!4808695))

(declare-fun m!5794784 () Bool)

(assert (=> b!4808694 m!5794784))

(assert (=> b!4808670 d!1540083))

(declare-fun d!1540085 () Bool)

(assert (=> d!1540085 (contains!18168 (toList!7099 lt!1961326) (tuple2!57295 lt!1961335 lt!1961332))))

(declare-fun lt!1961338 () Unit!141418)

(declare-fun choose!34828 (List!54603 (_ BitVec 64) List!54602) Unit!141418)

(assert (=> d!1540085 (= lt!1961338 (choose!34828 (toList!7099 lt!1961326) lt!1961335 lt!1961332))))

(declare-fun e!3003696 () Bool)

(assert (=> d!1540085 e!3003696))

(declare-fun res!2045618 () Bool)

(assert (=> d!1540085 (=> (not res!2045618) (not e!3003696))))

(declare-fun isStrictlySorted!924 (List!54603) Bool)

(assert (=> d!1540085 (= res!2045618 (isStrictlySorted!924 (toList!7099 lt!1961326)))))

(assert (=> d!1540085 (= (lemmaGetValueByKeyImpliesContainsTuple!981 (toList!7099 lt!1961326) lt!1961335 lt!1961332) lt!1961338)))

(declare-fun b!4808698 () Bool)

(assert (=> b!4808698 (= e!3003696 (= (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335) (Some!13267 lt!1961332)))))

(assert (= (and d!1540085 res!2045618) b!4808698))

(declare-fun m!5794786 () Bool)

(assert (=> d!1540085 m!5794786))

(declare-fun m!5794788 () Bool)

(assert (=> d!1540085 m!5794788))

(declare-fun m!5794790 () Bool)

(assert (=> d!1540085 m!5794790))

(assert (=> b!4808698 m!5794732))

(assert (=> b!4808670 d!1540085))

(declare-fun d!1540087 () Bool)

(assert (=> d!1540087 (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun lt!1961341 () Unit!141418)

(declare-fun choose!34829 (List!54603 (_ BitVec 64)) Unit!141418)

(assert (=> d!1540087 (= lt!1961341 (choose!34829 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun e!3003699 () Bool)

(assert (=> d!1540087 e!3003699))

(declare-fun res!2045621 () Bool)

(assert (=> d!1540087 (=> (not res!2045621) (not e!3003699))))

(assert (=> d!1540087 (= res!2045621 (isStrictlySorted!924 (toList!7099 lt!1961326)))))

(assert (=> d!1540087 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2253 (toList!7099 lt!1961326) lt!1961335) lt!1961341)))

(declare-fun b!4808701 () Bool)

(assert (=> b!4808701 (= e!3003699 (containsKey!4120 (toList!7099 lt!1961326) lt!1961335))))

(assert (= (and d!1540087 res!2045621) b!4808701))

(assert (=> d!1540087 m!5794732))

(assert (=> d!1540087 m!5794732))

(assert (=> d!1540087 m!5794734))

(declare-fun m!5794792 () Bool)

(assert (=> d!1540087 m!5794792))

(assert (=> d!1540087 m!5794790))

(assert (=> b!4808701 m!5794738))

(assert (=> b!4808670 d!1540087))

(declare-fun d!1540089 () Bool)

(assert (=> d!1540089 (containsKey!4120 (toList!7099 lt!1961326) lt!1961335)))

(declare-fun lt!1961344 () Unit!141418)

(declare-fun choose!34830 (List!54603 (_ BitVec 64)) Unit!141418)

(assert (=> d!1540089 (= lt!1961344 (choose!34830 (toList!7099 lt!1961326) lt!1961335))))

(declare-fun e!3003702 () Bool)

(assert (=> d!1540089 e!3003702))

(declare-fun res!2045624 () Bool)

(assert (=> d!1540089 (=> (not res!2045624) (not e!3003702))))

(assert (=> d!1540089 (= res!2045624 (isStrictlySorted!924 (toList!7099 lt!1961326)))))

(assert (=> d!1540089 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!252 (toList!7099 lt!1961326) lt!1961335) lt!1961344)))

(declare-fun b!4808704 () Bool)

(assert (=> b!4808704 (= e!3003702 (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335)))))

(assert (= (and d!1540089 res!2045624) b!4808704))

(assert (=> d!1540089 m!5794738))

(declare-fun m!5794794 () Bool)

(assert (=> d!1540089 m!5794794))

(assert (=> d!1540089 m!5794790))

(assert (=> b!4808704 m!5794732))

(assert (=> b!4808704 m!5794732))

(assert (=> b!4808704 m!5794734))

(assert (=> b!4808670 d!1540089))

(declare-fun d!1540091 () Bool)

(declare-fun res!2045629 () Bool)

(declare-fun e!3003707 () Bool)

(assert (=> d!1540091 (=> res!2045629 e!3003707)))

(assert (=> d!1540091 (= res!2045629 (and ((_ is Cons!54479) (toList!7099 lt!1961326)) (= (_1!31941 (h!60911 (toList!7099 lt!1961326))) lt!1961335)))))

(assert (=> d!1540091 (= (containsKey!4120 (toList!7099 lt!1961326) lt!1961335) e!3003707)))

(declare-fun b!4808709 () Bool)

(declare-fun e!3003708 () Bool)

(assert (=> b!4808709 (= e!3003707 e!3003708)))

(declare-fun res!2045630 () Bool)

(assert (=> b!4808709 (=> (not res!2045630) (not e!3003708))))

(assert (=> b!4808709 (= res!2045630 (and (or (not ((_ is Cons!54479) (toList!7099 lt!1961326))) (bvsle (_1!31941 (h!60911 (toList!7099 lt!1961326))) lt!1961335)) ((_ is Cons!54479) (toList!7099 lt!1961326)) (bvslt (_1!31941 (h!60911 (toList!7099 lt!1961326))) lt!1961335)))))

(declare-fun b!4808710 () Bool)

(assert (=> b!4808710 (= e!3003708 (containsKey!4120 (t!362073 (toList!7099 lt!1961326)) lt!1961335))))

(assert (= (and d!1540091 (not res!2045629)) b!4808709))

(assert (= (and b!4808709 res!2045630) b!4808710))

(declare-fun m!5794796 () Bool)

(assert (=> b!4808710 m!5794796))

(assert (=> b!4808670 d!1540091))

(declare-fun d!1540093 () Bool)

(declare-fun isEmpty!29542 (Option!13268) Bool)

(assert (=> d!1540093 (= (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335)) (not (isEmpty!29542 (getValueByKey!2465 (toList!7099 lt!1961326) lt!1961335))))))

(declare-fun bs!1159987 () Bool)

(assert (= bs!1159987 d!1540093))

(assert (=> bs!1159987 m!5794732))

(declare-fun m!5794798 () Bool)

(assert (=> bs!1159987 m!5794798))

(assert (=> b!4808670 d!1540093))

(declare-fun d!1540095 () Bool)

(assert (=> d!1540095 (= (array_inv!5941 (_keys!5367 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) (bvsge (size!36481 (_keys!5367 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808660 d!1540095))

(declare-fun d!1540097 () Bool)

(assert (=> d!1540097 (= (array_inv!5942 (_values!5338 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) (bvsge (size!36482 (_values!5338 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808660 d!1540097))

(declare-fun d!1540099 () Bool)

(declare-fun dynLambda!22126 (Int tuple2!57294) Bool)

(assert (=> d!1540099 (dynLambda!22126 lambda!233604 lt!1961327)))

(declare-fun lt!1961347 () Unit!141418)

(declare-fun choose!34831 (List!54603 Int tuple2!57294) Unit!141418)

(assert (=> d!1540099 (= lt!1961347 (choose!34831 (toList!7099 lt!1961326) lambda!233604 lt!1961327))))

(declare-fun e!3003711 () Bool)

(assert (=> d!1540099 e!3003711))

(declare-fun res!2045633 () Bool)

(assert (=> d!1540099 (=> (not res!2045633) (not e!3003711))))

(assert (=> d!1540099 (= res!2045633 (forall!12383 (toList!7099 lt!1961326) lambda!233604))))

(assert (=> d!1540099 (= (forallContained!4252 (toList!7099 lt!1961326) lambda!233604 lt!1961327) lt!1961347)))

(declare-fun b!4808713 () Bool)

(assert (=> b!4808713 (= e!3003711 (contains!18168 (toList!7099 lt!1961326) lt!1961327))))

(assert (= (and d!1540099 res!2045633) b!4808713))

(declare-fun b_lambda!188173 () Bool)

(assert (=> (not b_lambda!188173) (not d!1540099)))

(declare-fun m!5794800 () Bool)

(assert (=> d!1540099 m!5794800))

(declare-fun m!5794802 () Bool)

(assert (=> d!1540099 m!5794802))

(declare-fun m!5794804 () Bool)

(assert (=> d!1540099 m!5794804))

(assert (=> b!4808713 m!5794764))

(assert (=> b!4808661 d!1540099))

(declare-fun d!1540101 () Bool)

(declare-fun map!12375 (LongMapFixedSize!10050) ListLongMap!5553)

(assert (=> d!1540101 (= (map!12374 (v!48740 (underlying!10258 thiss!41921))) (map!12375 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921))))))))

(declare-fun bs!1159988 () Bool)

(assert (= bs!1159988 d!1540101))

(declare-fun m!5794806 () Bool)

(assert (=> bs!1159988 m!5794806))

(assert (=> b!4808661 d!1540101))

(declare-fun d!1540103 () Bool)

(declare-fun e!3003714 () Bool)

(assert (=> d!1540103 e!3003714))

(declare-fun c!819579 () Bool)

(assert (=> d!1540103 (= c!819579 (contains!18170 (v!48740 (underlying!10258 thiss!41921)) lt!1961335))))

(declare-fun lt!1961350 () List!54602)

(declare-fun apply!13112 (LongMapFixedSize!10050 (_ BitVec 64)) List!54602)

(assert (=> d!1540103 (= lt!1961350 (apply!13112 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))) lt!1961335))))

(assert (=> d!1540103 (valid!4046 (v!48740 (underlying!10258 thiss!41921)))))

(assert (=> d!1540103 (= (apply!13110 (v!48740 (underlying!10258 thiss!41921)) lt!1961335) lt!1961350)))

(declare-fun b!4808718 () Bool)

(assert (=> b!4808718 (= e!3003714 (= lt!1961350 (get!18635 (getValueByKey!2465 (toList!7099 (map!12374 (v!48740 (underlying!10258 thiss!41921)))) lt!1961335))))))

(declare-fun b!4808719 () Bool)

(declare-fun dynLambda!22127 (Int (_ BitVec 64)) List!54602)

(assert (=> b!4808719 (= e!3003714 (= lt!1961350 (dynLambda!22127 (defaultEntry!5443 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921))))) lt!1961335)))))

(assert (=> b!4808719 ((_ is LongMap!5025) (v!48740 (underlying!10258 thiss!41921)))))

(assert (= (and d!1540103 c!819579) b!4808718))

(assert (= (and d!1540103 (not c!819579)) b!4808719))

(declare-fun b_lambda!188175 () Bool)

(assert (=> (not b_lambda!188175) (not b!4808719)))

(declare-fun t!362075 () Bool)

(declare-fun tb!257523 () Bool)

(assert (=> (and b!4808660 (= (defaultEntry!5443 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921))))) (defaultEntry!5443 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))))) t!362075) tb!257523))

(assert (=> b!4808719 t!362075))

(declare-fun result!319582 () Bool)

(declare-fun b_and!341821 () Bool)

(assert (= b_and!341817 (and (=> t!362075 result!319582) b_and!341821)))

(assert (=> d!1540103 m!5794750))

(declare-fun m!5794808 () Bool)

(assert (=> d!1540103 m!5794808))

(assert (=> d!1540103 m!5794778))

(assert (=> b!4808718 m!5794748))

(declare-fun m!5794810 () Bool)

(assert (=> b!4808718 m!5794810))

(assert (=> b!4808718 m!5794810))

(declare-fun m!5794812 () Bool)

(assert (=> b!4808718 m!5794812))

(declare-fun m!5794814 () Bool)

(assert (=> b!4808719 m!5794814))

(assert (=> b!4808661 d!1540103))

(declare-fun d!1540105 () Bool)

(declare-fun lt!1961353 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9771 (List!54603) (InoxSet tuple2!57294))

(assert (=> d!1540105 (= lt!1961353 (select (content!9771 (toList!7099 lt!1961326)) lt!1961327))))

(declare-fun e!3003719 () Bool)

(assert (=> d!1540105 (= lt!1961353 e!3003719)))

(declare-fun res!2045638 () Bool)

(assert (=> d!1540105 (=> (not res!2045638) (not e!3003719))))

(assert (=> d!1540105 (= res!2045638 ((_ is Cons!54479) (toList!7099 lt!1961326)))))

(assert (=> d!1540105 (= (contains!18168 (toList!7099 lt!1961326) lt!1961327) lt!1961353)))

(declare-fun b!4808724 () Bool)

(declare-fun e!3003720 () Bool)

(assert (=> b!4808724 (= e!3003719 e!3003720)))

(declare-fun res!2045639 () Bool)

(assert (=> b!4808724 (=> res!2045639 e!3003720)))

(assert (=> b!4808724 (= res!2045639 (= (h!60911 (toList!7099 lt!1961326)) lt!1961327))))

(declare-fun b!4808725 () Bool)

(assert (=> b!4808725 (= e!3003720 (contains!18168 (t!362073 (toList!7099 lt!1961326)) lt!1961327))))

(assert (= (and d!1540105 res!2045638) b!4808724))

(assert (= (and b!4808724 (not res!2045639)) b!4808725))

(declare-fun m!5794816 () Bool)

(assert (=> d!1540105 m!5794816))

(declare-fun m!5794818 () Bool)

(assert (=> d!1540105 m!5794818))

(declare-fun m!5794820 () Bool)

(assert (=> b!4808725 m!5794820))

(assert (=> b!4808661 d!1540105))

(declare-fun d!1540107 () Bool)

(declare-fun e!3003725 () Bool)

(assert (=> d!1540107 e!3003725))

(declare-fun res!2045642 () Bool)

(assert (=> d!1540107 (=> res!2045642 e!3003725)))

(declare-fun lt!1961364 () Bool)

(assert (=> d!1540107 (= res!2045642 (not lt!1961364))))

(declare-fun lt!1961362 () Bool)

(assert (=> d!1540107 (= lt!1961364 lt!1961362)))

(declare-fun lt!1961363 () Unit!141418)

(declare-fun e!3003726 () Unit!141418)

(assert (=> d!1540107 (= lt!1961363 e!3003726)))

(declare-fun c!819582 () Bool)

(assert (=> d!1540107 (= c!819582 lt!1961362)))

(assert (=> d!1540107 (= lt!1961362 (containsKey!4120 (toList!7099 lt!1961328) lt!1961335))))

(assert (=> d!1540107 (= (contains!18171 lt!1961328 lt!1961335) lt!1961364)))

(declare-fun b!4808732 () Bool)

(declare-fun lt!1961365 () Unit!141418)

(assert (=> b!4808732 (= e!3003726 lt!1961365)))

(assert (=> b!4808732 (= lt!1961365 (lemmaContainsKeyImpliesGetValueByKeyDefined!2253 (toList!7099 lt!1961328) lt!1961335))))

(assert (=> b!4808732 (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961328) lt!1961335))))

(declare-fun b!4808733 () Bool)

(declare-fun Unit!141423 () Unit!141418)

(assert (=> b!4808733 (= e!3003726 Unit!141423)))

(declare-fun b!4808734 () Bool)

(assert (=> b!4808734 (= e!3003725 (isDefined!10407 (getValueByKey!2465 (toList!7099 lt!1961328) lt!1961335)))))

(assert (= (and d!1540107 c!819582) b!4808732))

(assert (= (and d!1540107 (not c!819582)) b!4808733))

(assert (= (and d!1540107 (not res!2045642)) b!4808734))

(declare-fun m!5794822 () Bool)

(assert (=> d!1540107 m!5794822))

(declare-fun m!5794824 () Bool)

(assert (=> b!4808732 m!5794824))

(assert (=> b!4808732 m!5794774))

(assert (=> b!4808732 m!5794774))

(declare-fun m!5794826 () Bool)

(assert (=> b!4808732 m!5794826))

(assert (=> b!4808734 m!5794774))

(assert (=> b!4808734 m!5794774))

(assert (=> b!4808734 m!5794826))

(assert (=> b!4808667 d!1540107))

(assert (=> b!4808663 d!1540101))

(declare-fun d!1540109 () Bool)

(declare-fun lt!1961368 () Bool)

(assert (=> d!1540109 (= lt!1961368 (contains!18171 (map!12374 (v!48740 (underlying!10258 thiss!41921))) lt!1961335))))

(declare-fun contains!18172 (LongMapFixedSize!10050 (_ BitVec 64)) Bool)

(assert (=> d!1540109 (= lt!1961368 (contains!18172 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921)))) lt!1961335))))

(assert (=> d!1540109 (valid!4046 (v!48740 (underlying!10258 thiss!41921)))))

(assert (=> d!1540109 (= (contains!18170 (v!48740 (underlying!10258 thiss!41921)) lt!1961335) lt!1961368)))

(declare-fun bs!1159989 () Bool)

(assert (= bs!1159989 d!1540109))

(assert (=> bs!1159989 m!5794748))

(assert (=> bs!1159989 m!5794748))

(declare-fun m!5794828 () Bool)

(assert (=> bs!1159989 m!5794828))

(declare-fun m!5794830 () Bool)

(assert (=> bs!1159989 m!5794830))

(assert (=> bs!1159989 m!5794778))

(assert (=> b!4808663 d!1540109))

(declare-fun d!1540111 () Bool)

(declare-fun e!3003740 () Bool)

(assert (=> d!1540111 e!3003740))

(declare-fun res!2045651 () Bool)

(assert (=> d!1540111 (=> res!2045651 e!3003740)))

(declare-fun e!3003741 () Bool)

(assert (=> d!1540111 (= res!2045651 e!3003741)))

(declare-fun res!2045649 () Bool)

(assert (=> d!1540111 (=> (not res!2045649) (not e!3003741))))

(declare-fun lt!1961391 () Bool)

(assert (=> d!1540111 (= res!2045649 (not lt!1961391))))

(declare-fun lt!1961392 () Bool)

(assert (=> d!1540111 (= lt!1961391 lt!1961392)))

(declare-fun lt!1961388 () Unit!141418)

(declare-fun e!3003744 () Unit!141418)

(assert (=> d!1540111 (= lt!1961388 e!3003744)))

(declare-fun c!819591 () Bool)

(assert (=> d!1540111 (= c!819591 lt!1961392)))

(declare-fun containsKey!4122 (List!54602 K!16079) Bool)

(assert (=> d!1540111 (= lt!1961392 (containsKey!4122 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(assert (=> d!1540111 (= (contains!18169 (extractMap!2521 (toList!7099 lt!1961328)) key!1652) lt!1961391)))

(declare-fun b!4808753 () Bool)

(declare-datatypes ((List!54604 0))(
  ( (Nil!54480) (Cons!54480 (h!60912 K!16079) (t!362076 List!54604)) )
))
(declare-fun e!3003742 () List!54604)

(declare-fun keys!19952 (ListMap!6539) List!54604)

(assert (=> b!4808753 (= e!3003742 (keys!19952 (extractMap!2521 (toList!7099 lt!1961328))))))

(declare-fun b!4808754 () Bool)

(declare-fun e!3003743 () Unit!141418)

(assert (=> b!4808754 (= e!3003744 e!3003743)))

(declare-fun c!819589 () Bool)

(declare-fun call!335610 () Bool)

(assert (=> b!4808754 (= c!819589 call!335610)))

(declare-fun b!4808755 () Bool)

(declare-fun getKeysList!1117 (List!54602) List!54604)

(assert (=> b!4808755 (= e!3003742 (getKeysList!1117 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328)))))))

(declare-fun b!4808756 () Bool)

(declare-fun contains!18173 (List!54604 K!16079) Bool)

(assert (=> b!4808756 (= e!3003741 (not (contains!18173 (keys!19952 (extractMap!2521 (toList!7099 lt!1961328))) key!1652)))))

(declare-fun b!4808757 () Bool)

(declare-fun lt!1961390 () Unit!141418)

(assert (=> b!4808757 (= e!3003744 lt!1961390)))

(declare-fun lt!1961389 () Unit!141418)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2254 (List!54602 K!16079) Unit!141418)

(assert (=> b!4808757 (= lt!1961389 (lemmaContainsKeyImpliesGetValueByKeyDefined!2254 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(declare-datatypes ((Option!13269 0))(
  ( (None!13268) (Some!13268 (v!48744 V!16325)) )
))
(declare-fun isDefined!10408 (Option!13269) Bool)

(declare-fun getValueByKey!2466 (List!54602 K!16079) Option!13269)

(assert (=> b!4808757 (isDefined!10408 (getValueByKey!2466 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(declare-fun lt!1961385 () Unit!141418)

(assert (=> b!4808757 (= lt!1961385 lt!1961389)))

(declare-fun lemmaInListThenGetKeysListContains!1112 (List!54602 K!16079) Unit!141418)

(assert (=> b!4808757 (= lt!1961390 (lemmaInListThenGetKeysListContains!1112 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(assert (=> b!4808757 call!335610))

(declare-fun b!4808758 () Bool)

(declare-fun e!3003739 () Bool)

(assert (=> b!4808758 (= e!3003740 e!3003739)))

(declare-fun res!2045650 () Bool)

(assert (=> b!4808758 (=> (not res!2045650) (not e!3003739))))

(assert (=> b!4808758 (= res!2045650 (isDefined!10408 (getValueByKey!2466 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652)))))

(declare-fun bm!335605 () Bool)

(assert (=> bm!335605 (= call!335610 (contains!18173 e!3003742 key!1652))))

(declare-fun c!819590 () Bool)

(assert (=> bm!335605 (= c!819590 c!819591)))

(declare-fun b!4808759 () Bool)

(declare-fun Unit!141424 () Unit!141418)

(assert (=> b!4808759 (= e!3003743 Unit!141424)))

(declare-fun b!4808760 () Bool)

(assert (=> b!4808760 (= e!3003739 (contains!18173 (keys!19952 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(declare-fun b!4808761 () Bool)

(assert (=> b!4808761 false))

(declare-fun lt!1961386 () Unit!141418)

(declare-fun lt!1961387 () Unit!141418)

(assert (=> b!4808761 (= lt!1961386 lt!1961387)))

(assert (=> b!4808761 (containsKey!4122 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1117 (List!54602 K!16079) Unit!141418)

(assert (=> b!4808761 (= lt!1961387 (lemmaInGetKeysListThenContainsKey!1117 (toList!7100 (extractMap!2521 (toList!7099 lt!1961328))) key!1652))))

(declare-fun Unit!141425 () Unit!141418)

(assert (=> b!4808761 (= e!3003743 Unit!141425)))

(assert (= (and d!1540111 c!819591) b!4808757))

(assert (= (and d!1540111 (not c!819591)) b!4808754))

(assert (= (and b!4808754 c!819589) b!4808761))

(assert (= (and b!4808754 (not c!819589)) b!4808759))

(assert (= (or b!4808757 b!4808754) bm!335605))

(assert (= (and bm!335605 c!819590) b!4808755))

(assert (= (and bm!335605 (not c!819590)) b!4808753))

(assert (= (and d!1540111 res!2045649) b!4808756))

(assert (= (and d!1540111 (not res!2045651)) b!4808758))

(assert (= (and b!4808758 res!2045650) b!4808760))

(declare-fun m!5794832 () Bool)

(assert (=> b!4808755 m!5794832))

(declare-fun m!5794834 () Bool)

(assert (=> b!4808758 m!5794834))

(assert (=> b!4808758 m!5794834))

(declare-fun m!5794836 () Bool)

(assert (=> b!4808758 m!5794836))

(assert (=> b!4808756 m!5794742))

(declare-fun m!5794838 () Bool)

(assert (=> b!4808756 m!5794838))

(assert (=> b!4808756 m!5794838))

(declare-fun m!5794840 () Bool)

(assert (=> b!4808756 m!5794840))

(declare-fun m!5794842 () Bool)

(assert (=> d!1540111 m!5794842))

(assert (=> b!4808761 m!5794842))

(declare-fun m!5794844 () Bool)

(assert (=> b!4808761 m!5794844))

(declare-fun m!5794846 () Bool)

(assert (=> bm!335605 m!5794846))

(declare-fun m!5794848 () Bool)

(assert (=> b!4808757 m!5794848))

(assert (=> b!4808757 m!5794834))

(assert (=> b!4808757 m!5794834))

(assert (=> b!4808757 m!5794836))

(declare-fun m!5794850 () Bool)

(assert (=> b!4808757 m!5794850))

(assert (=> b!4808753 m!5794742))

(assert (=> b!4808753 m!5794838))

(assert (=> b!4808760 m!5794742))

(assert (=> b!4808760 m!5794838))

(assert (=> b!4808760 m!5794838))

(assert (=> b!4808760 m!5794840))

(assert (=> b!4808663 d!1540111))

(declare-fun d!1540113 () Bool)

(declare-fun hash!5106 (Hashable!7036 K!16079) (_ BitVec 64))

(assert (=> d!1540113 (= (hash!5105 (hashF!13304 thiss!41921) key!1652) (hash!5106 (hashF!13304 thiss!41921) key!1652))))

(declare-fun bs!1159990 () Bool)

(assert (= bs!1159990 d!1540113))

(declare-fun m!5794852 () Bool)

(assert (=> bs!1159990 m!5794852))

(assert (=> b!4808663 d!1540113))

(declare-fun bs!1159991 () Bool)

(declare-fun d!1540115 () Bool)

(assert (= bs!1159991 (and d!1540115 b!4808661)))

(declare-fun lambda!233610 () Int)

(assert (=> bs!1159991 (= lambda!233610 lambda!233604)))

(declare-fun bs!1159992 () Bool)

(assert (= bs!1159992 (and d!1540115 b!4808682)))

(assert (=> bs!1159992 (= lambda!233610 lambda!233607)))

(declare-fun lt!1961395 () ListMap!6539)

(declare-fun invariantList!1771 (List!54602) Bool)

(assert (=> d!1540115 (invariantList!1771 (toList!7100 lt!1961395))))

(declare-fun e!3003747 () ListMap!6539)

(assert (=> d!1540115 (= lt!1961395 e!3003747)))

(declare-fun c!819594 () Bool)

(assert (=> d!1540115 (= c!819594 ((_ is Cons!54479) (toList!7099 lt!1961328)))))

(assert (=> d!1540115 (forall!12383 (toList!7099 lt!1961328) lambda!233610)))

(assert (=> d!1540115 (= (extractMap!2521 (toList!7099 lt!1961328)) lt!1961395)))

(declare-fun b!4808766 () Bool)

(declare-fun addToMapMapFromBucket!1748 (List!54602 ListMap!6539) ListMap!6539)

(assert (=> b!4808766 (= e!3003747 (addToMapMapFromBucket!1748 (_2!31941 (h!60911 (toList!7099 lt!1961328))) (extractMap!2521 (t!362073 (toList!7099 lt!1961328)))))))

(declare-fun b!4808767 () Bool)

(assert (=> b!4808767 (= e!3003747 (ListMap!6540 Nil!54478))))

(assert (= (and d!1540115 c!819594) b!4808766))

(assert (= (and d!1540115 (not c!819594)) b!4808767))

(declare-fun m!5794854 () Bool)

(assert (=> d!1540115 m!5794854))

(declare-fun m!5794856 () Bool)

(assert (=> d!1540115 m!5794856))

(declare-fun m!5794858 () Bool)

(assert (=> b!4808766 m!5794858))

(assert (=> b!4808766 m!5794858))

(declare-fun m!5794860 () Bool)

(assert (=> b!4808766 m!5794860))

(assert (=> b!4808663 d!1540115))

(declare-fun condMapEmpty!22232 () Bool)

(declare-fun mapDefault!22232 () List!54602)

(assert (=> mapNonEmpty!22229 (= condMapEmpty!22232 (= mapRest!22229 ((as const (Array (_ BitVec 32) List!54602)) mapDefault!22232)))))

(declare-fun e!3003752 () Bool)

(declare-fun mapRes!22232 () Bool)

(assert (=> mapNonEmpty!22229 (= tp!1359950 (and e!3003752 mapRes!22232))))

(declare-fun b!4808774 () Bool)

(declare-fun tp_is_empty!33917 () Bool)

(declare-fun tp!1359964 () Bool)

(declare-fun e!3003753 () Bool)

(assert (=> b!4808774 (= e!3003753 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359964))))

(declare-fun tp!1359963 () Bool)

(declare-fun b!4808775 () Bool)

(assert (=> b!4808775 (= e!3003752 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359963))))

(declare-fun mapNonEmpty!22232 () Bool)

(declare-fun tp!1359965 () Bool)

(assert (=> mapNonEmpty!22232 (= mapRes!22232 (and tp!1359965 e!3003753))))

(declare-fun mapRest!22232 () (Array (_ BitVec 32) List!54602))

(declare-fun mapValue!22232 () List!54602)

(declare-fun mapKey!22232 () (_ BitVec 32))

(assert (=> mapNonEmpty!22232 (= mapRest!22229 (store mapRest!22232 mapKey!22232 mapValue!22232))))

(declare-fun mapIsEmpty!22232 () Bool)

(assert (=> mapIsEmpty!22232 mapRes!22232))

(assert (= (and mapNonEmpty!22229 condMapEmpty!22232) mapIsEmpty!22232))

(assert (= (and mapNonEmpty!22229 (not condMapEmpty!22232)) mapNonEmpty!22232))

(assert (= (and mapNonEmpty!22232 ((_ is Cons!54478) mapValue!22232)) b!4808774))

(assert (= (and mapNonEmpty!22229 ((_ is Cons!54478) mapDefault!22232)) b!4808775))

(declare-fun m!5794862 () Bool)

(assert (=> mapNonEmpty!22232 m!5794862))

(declare-fun tp!1359968 () Bool)

(declare-fun b!4808780 () Bool)

(declare-fun e!3003756 () Bool)

(assert (=> b!4808780 (= e!3003756 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359968))))

(assert (=> mapNonEmpty!22229 (= tp!1359955 e!3003756)))

(assert (= (and mapNonEmpty!22229 ((_ is Cons!54478) mapValue!22229)) b!4808780))

(declare-fun b!4808781 () Bool)

(declare-fun e!3003757 () Bool)

(declare-fun tp!1359969 () Bool)

(assert (=> b!4808781 (= e!3003757 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359969))))

(assert (=> b!4808660 (= tp!1359953 e!3003757)))

(assert (= (and b!4808660 ((_ is Cons!54478) (zeroValue!5313 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921))))))) b!4808781))

(declare-fun e!3003758 () Bool)

(declare-fun b!4808782 () Bool)

(declare-fun tp!1359970 () Bool)

(assert (=> b!4808782 (= e!3003758 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359970))))

(assert (=> b!4808660 (= tp!1359952 e!3003758)))

(assert (= (and b!4808660 ((_ is Cons!54478) (minValue!5313 (v!48739 (underlying!10257 (v!48740 (underlying!10258 thiss!41921))))))) b!4808782))

(declare-fun e!3003759 () Bool)

(declare-fun tp!1359971 () Bool)

(declare-fun b!4808783 () Bool)

(assert (=> b!4808783 (= e!3003759 (and tp_is_empty!33915 tp_is_empty!33917 tp!1359971))))

(assert (=> b!4808671 (= tp!1359954 e!3003759)))

(assert (= (and b!4808671 ((_ is Cons!54478) mapDefault!22229)) b!4808783))

(declare-fun b_lambda!188177 () Bool)

(assert (= b_lambda!188175 (or (and b!4808660 b_free!130043) b_lambda!188177)))

(declare-fun b_lambda!188179 () Bool)

(assert (= b_lambda!188173 (or b!4808661 b_lambda!188179)))

(declare-fun bs!1159993 () Bool)

(declare-fun d!1540117 () Bool)

(assert (= bs!1159993 (and d!1540117 b!4808661)))

(assert (=> bs!1159993 (= (dynLambda!22126 lambda!233604 lt!1961327) (noDuplicateKeys!2384 (_2!31941 lt!1961327)))))

(declare-fun m!5794864 () Bool)

(assert (=> bs!1159993 m!5794864))

(assert (=> d!1540099 d!1540117))

(check-sat (not d!1540085) (not bm!335605) (not d!1540103) (not b!4808755) (not b!4808753) (not b!4808701) (not b!4808676) (not d!1540115) (not b!4808713) (not b!4808760) (not b!4808761) (not b_lambda!188179) (not b_lambda!188177) (not mapNonEmpty!22232) (not d!1540101) (not d!1540107) (not b!4808725) (not b_next!130835) (not b!4808756) (not b!4808682) (not d!1540109) (not b!4808698) (not bs!1159993) (not b!4808757) (not d!1540087) (not b!4808710) (not b!4808782) (not b!4808732) b_and!341819 (not d!1540081) tp_is_empty!33915 (not b!4808774) (not d!1540079) (not tb!257523) (not d!1540099) (not b!4808780) (not b!4808694) b_and!341821 (not b!4808758) (not b!4808683) (not b!4808783) (not b!4808718) (not b!4808734) (not b!4808766) (not b!4808781) (not d!1540089) (not d!1540093) tp_is_empty!33917 (not d!1540105) (not b!4808775) (not b!4808677) (not b_next!130833) (not d!1540113) (not d!1540111) (not b!4808704))
(check-sat b_and!341821 b_and!341819 (not b_next!130833) (not b_next!130835))
