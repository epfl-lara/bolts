; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46760 () Bool)

(assert start!46760)

(declare-fun b!515702 () Bool)

(declare-fun b_free!13559 () Bool)

(declare-fun b_next!13559 () Bool)

(assert (=> b!515702 (= b_free!13559 (not b_next!13559))))

(declare-fun tp!161009 () Bool)

(declare-fun b_and!51011 () Bool)

(assert (=> b!515702 (= tp!161009 b_and!51011)))

(declare-fun b_free!13561 () Bool)

(declare-fun b_next!13561 () Bool)

(assert (=> start!46760 (= b_free!13561 (not b_next!13561))))

(declare-fun tp!161013 () Bool)

(declare-fun b_and!51013 () Bool)

(assert (=> start!46760 (= tp!161013 b_and!51013)))

(declare-fun b!515705 () Bool)

(declare-fun b_free!13563 () Bool)

(declare-fun b_next!13563 () Bool)

(assert (=> b!515705 (= b_free!13563 (not b_next!13563))))

(declare-fun tp!161014 () Bool)

(declare-fun b_and!51015 () Bool)

(assert (=> b!515705 (= tp!161014 b_and!51015)))

(declare-fun b!515695 () Bool)

(declare-fun e!308567 () Bool)

(declare-fun e!308571 () Bool)

(assert (=> b!515695 (= e!308567 e!308571)))

(declare-fun res!218709 () Bool)

(assert (=> b!515695 (=> (not res!218709) (not e!308571))))

(declare-datatypes ((K!1407 0))(
  ( (K!1408 (val!1789 Int)) )
))
(declare-datatypes ((V!1505 0))(
  ( (V!1506 (val!1790 Int)) )
))
(declare-datatypes ((tuple2!5772 0))(
  ( (tuple2!5773 (_1!3102 K!1407) (_2!3102 V!1505)) )
))
(declare-datatypes ((List!4728 0))(
  ( (Nil!4718) (Cons!4718 (h!10115 tuple2!5772) (t!73276 List!4728)) )
))
(declare-datatypes ((ListMap!185 0))(
  ( (ListMap!186 (toList!414 List!4728)) )
))
(declare-fun lt!214049 () ListMap!185)

(declare-fun p!6060 () Int)

(declare-fun forall!1396 (List!4728 Int) Bool)

(assert (=> b!515695 (= res!218709 (forall!1396 (toList!414 lt!214049) p!6060))))

(declare-datatypes ((array!1995 0))(
  ( (array!1996 (arr!918 (Array (_ BitVec 32) List!4728)) (size!3852 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!489 0))(
  ( (HashableExt!488 (__x!3442 Int)) )
))
(declare-datatypes ((array!1997 0))(
  ( (array!1998 (arr!919 (Array (_ BitVec 32) (_ BitVec 64))) (size!3853 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1034 0))(
  ( (LongMapFixedSize!1035 (defaultEntry!868 Int) (mask!1940 (_ BitVec 32)) (extraKeys!763 (_ BitVec 32)) (zeroValue!773 List!4728) (minValue!773 List!4728) (_size!1143 (_ BitVec 32)) (_keys!808 array!1997) (_values!795 array!1995) (_vacant!578 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2009 0))(
  ( (Cell!2010 (v!15751 LongMapFixedSize!1034)) )
))
(declare-datatypes ((MutLongMap!517 0))(
  ( (LongMap!517 (underlying!1213 Cell!2009)) (MutLongMapExt!516 (__x!3443 Int)) )
))
(declare-datatypes ((Cell!2011 0))(
  ( (Cell!2012 (v!15752 MutLongMap!517)) )
))
(declare-datatypes ((MutableMap!489 0))(
  ( (MutableMapExt!488 (__x!3444 Int)) (HashMap!489 (underlying!1214 Cell!2011) (hashF!2365 Hashable!489) (_size!1144 (_ BitVec 32)) (defaultValue!638 Int)) )
))
(declare-fun hm!65 () MutableMap!489)

(declare-fun map!1031 (MutableMap!489) ListMap!185)

(assert (=> b!515695 (= lt!214049 (map!1031 hm!65))))

(declare-fun b!515696 () Bool)

(declare-fun e!308570 () Bool)

(declare-fun e!308561 () Bool)

(declare-fun lt!214048 () MutLongMap!517)

(get-info :version)

(assert (=> b!515696 (= e!308570 (and e!308561 ((_ is LongMap!517) lt!214048)))))

(assert (=> b!515696 (= lt!214048 (v!15752 (underlying!1214 hm!65)))))

(declare-fun res!218708 () Bool)

(assert (=> start!46760 (=> (not res!218708) (not e!308567))))

(assert (=> start!46760 (= res!218708 ((_ is HashMap!489) hm!65))))

(assert (=> start!46760 e!308567))

(declare-fun e!308563 () Bool)

(assert (=> start!46760 e!308563))

(assert (=> start!46760 tp!161013))

(declare-fun tp_is_empty!2615 () Bool)

(assert (=> start!46760 tp_is_empty!2615))

(declare-fun b!515697 () Bool)

(declare-fun res!218710 () Bool)

(assert (=> b!515697 (=> (not res!218710) (not e!308567))))

(declare-fun valid!478 (MutableMap!489) Bool)

(assert (=> b!515697 (= res!218710 (valid!478 hm!65))))

(declare-fun b!515698 () Bool)

(declare-fun e!308564 () Bool)

(declare-fun lt!214050 () ListMap!185)

(declare-fun invariantList!70 (List!4728) Bool)

(assert (=> b!515698 (= e!308564 (not (invariantList!70 (toList!414 lt!214050))))))

(declare-fun b!515699 () Bool)

(declare-fun e!308562 () Bool)

(assert (=> b!515699 (= e!308561 e!308562)))

(declare-fun b!515700 () Bool)

(declare-fun e!308565 () Bool)

(assert (=> b!515700 (= e!308571 e!308565)))

(declare-fun res!218705 () Bool)

(assert (=> b!515700 (=> (not res!218705) (not e!308565))))

(declare-datatypes ((tuple2!5774 0))(
  ( (tuple2!5775 (_1!3103 Bool) (_2!3103 MutableMap!489)) )
))
(declare-fun lt!214047 () tuple2!5774)

(assert (=> b!515700 (= res!218705 (valid!478 (_2!3103 lt!214047)))))

(declare-fun k0!1740 () K!1407)

(declare-fun remove!36 (MutableMap!489 K!1407) tuple2!5774)

(assert (=> b!515700 (= lt!214047 (remove!36 hm!65 k0!1740))))

(declare-fun -!33 (ListMap!185 K!1407) ListMap!185)

(assert (=> b!515700 (= lt!214050 (-!33 lt!214049 k0!1740))))

(declare-fun b!515701 () Bool)

(declare-fun e!308568 () Bool)

(declare-fun tp!161012 () Bool)

(declare-fun mapRes!1993 () Bool)

(assert (=> b!515701 (= e!308568 (and tp!161012 mapRes!1993))))

(declare-fun condMapEmpty!1993 () Bool)

(declare-fun mapDefault!1993 () List!4728)

(assert (=> b!515701 (= condMapEmpty!1993 (= (arr!918 (_values!795 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) ((as const (Array (_ BitVec 32) List!4728)) mapDefault!1993)))))

(declare-fun mapNonEmpty!1993 () Bool)

(declare-fun tp!161007 () Bool)

(declare-fun tp!161008 () Bool)

(assert (=> mapNonEmpty!1993 (= mapRes!1993 (and tp!161007 tp!161008))))

(declare-fun mapValue!1993 () List!4728)

(declare-fun mapKey!1993 () (_ BitVec 32))

(declare-fun mapRest!1993 () (Array (_ BitVec 32) List!4728))

(assert (=> mapNonEmpty!1993 (= (arr!918 (_values!795 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) (store mapRest!1993 mapKey!1993 mapValue!1993))))

(declare-fun e!308566 () Bool)

(declare-fun tp!161010 () Bool)

(declare-fun tp!161011 () Bool)

(declare-fun array_inv!671 (array!1997) Bool)

(declare-fun array_inv!672 (array!1995) Bool)

(assert (=> b!515702 (= e!308566 (and tp!161009 tp!161010 tp!161011 (array_inv!671 (_keys!808 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) (array_inv!672 (_values!795 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) e!308568))))

(declare-fun b!515703 () Bool)

(declare-fun res!218706 () Bool)

(assert (=> b!515703 (=> (not res!218706) (not e!308564))))

(assert (=> b!515703 (= res!218706 (_1!3103 lt!214047))))

(declare-fun mapIsEmpty!1993 () Bool)

(assert (=> mapIsEmpty!1993 mapRes!1993))

(declare-fun b!515704 () Bool)

(assert (=> b!515704 (= e!308562 e!308566)))

(assert (=> b!515705 (= e!308563 (and e!308570 tp!161014))))

(declare-fun b!515706 () Bool)

(declare-fun res!218707 () Bool)

(assert (=> b!515706 (=> (not res!218707) (not e!308564))))

(declare-fun lt!214046 () ListMap!185)

(declare-fun eq!30 (ListMap!185 ListMap!185) Bool)

(assert (=> b!515706 (= res!218707 (eq!30 lt!214046 lt!214050))))

(declare-fun b!515707 () Bool)

(assert (=> b!515707 (= e!308565 e!308564)))

(declare-fun res!218704 () Bool)

(assert (=> b!515707 (=> (not res!218704) (not e!308564))))

(assert (=> b!515707 (= res!218704 (invariantList!70 (toList!414 lt!214046)))))

(assert (=> b!515707 (= lt!214046 (map!1031 (_2!3103 lt!214047)))))

(assert (= (and start!46760 res!218708) b!515697))

(assert (= (and b!515697 res!218710) b!515695))

(assert (= (and b!515695 res!218709) b!515700))

(assert (= (and b!515700 res!218705) b!515707))

(assert (= (and b!515707 res!218704) b!515703))

(assert (= (and b!515703 res!218706) b!515706))

(assert (= (and b!515706 res!218707) b!515698))

(assert (= (and b!515701 condMapEmpty!1993) mapIsEmpty!1993))

(assert (= (and b!515701 (not condMapEmpty!1993)) mapNonEmpty!1993))

(assert (= b!515702 b!515701))

(assert (= b!515704 b!515702))

(assert (= b!515699 b!515704))

(assert (= (and b!515696 ((_ is LongMap!517) (v!15752 (underlying!1214 hm!65)))) b!515699))

(assert (= b!515705 b!515696))

(assert (= (and start!46760 ((_ is HashMap!489) hm!65)) b!515705))

(declare-fun m!761797 () Bool)

(assert (=> b!515706 m!761797))

(declare-fun m!761799 () Bool)

(assert (=> b!515700 m!761799))

(declare-fun m!761801 () Bool)

(assert (=> b!515700 m!761801))

(declare-fun m!761803 () Bool)

(assert (=> b!515700 m!761803))

(declare-fun m!761805 () Bool)

(assert (=> b!515707 m!761805))

(declare-fun m!761807 () Bool)

(assert (=> b!515707 m!761807))

(declare-fun m!761809 () Bool)

(assert (=> b!515697 m!761809))

(declare-fun m!761811 () Bool)

(assert (=> b!515698 m!761811))

(declare-fun m!761813 () Bool)

(assert (=> mapNonEmpty!1993 m!761813))

(declare-fun m!761815 () Bool)

(assert (=> b!515702 m!761815))

(declare-fun m!761817 () Bool)

(assert (=> b!515702 m!761817))

(declare-fun m!761819 () Bool)

(assert (=> b!515695 m!761819))

(declare-fun m!761821 () Bool)

(assert (=> b!515695 m!761821))

(check-sat (not b!515707) (not b!515697) (not b!515702) b_and!51015 (not b!515698) (not b!515700) b_and!51013 (not mapNonEmpty!1993) (not b_next!13559) b_and!51011 (not b_next!13563) (not b_next!13561) (not b!515701) (not b!515695) tp_is_empty!2615 (not b!515706))
(check-sat b_and!51015 b_and!51013 (not b_next!13559) b_and!51011 (not b_next!13563) (not b_next!13561))
(get-model)

(declare-fun d!184469 () Bool)

(declare-fun res!218715 () Bool)

(declare-fun e!308574 () Bool)

(assert (=> d!184469 (=> (not res!218715) (not e!308574))))

(declare-fun valid!479 (MutLongMap!517) Bool)

(assert (=> d!184469 (= res!218715 (valid!479 (v!15752 (underlying!1214 hm!65))))))

(assert (=> d!184469 (= (valid!478 hm!65) e!308574)))

(declare-fun b!515712 () Bool)

(declare-fun res!218716 () Bool)

(assert (=> b!515712 (=> (not res!218716) (not e!308574))))

(declare-fun lambda!14397 () Int)

(declare-datatypes ((tuple2!5776 0))(
  ( (tuple2!5777 (_1!3104 (_ BitVec 64)) (_2!3104 List!4728)) )
))
(declare-datatypes ((List!4729 0))(
  ( (Nil!4719) (Cons!4719 (h!10116 tuple2!5776) (t!73279 List!4729)) )
))
(declare-fun forall!1397 (List!4729 Int) Bool)

(declare-datatypes ((ListLongMap!75 0))(
  ( (ListLongMap!76 (toList!415 List!4729)) )
))
(declare-fun map!1032 (MutLongMap!517) ListLongMap!75)

(assert (=> b!515712 (= res!218716 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14397))))

(declare-fun b!515713 () Bool)

(declare-fun allKeysSameHashInMap!26 (ListLongMap!75 Hashable!489) Bool)

(assert (=> b!515713 (= e!308574 (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 hm!65))) (hashF!2365 hm!65)))))

(assert (= (and d!184469 res!218715) b!515712))

(assert (= (and b!515712 res!218716) b!515713))

(declare-fun m!761823 () Bool)

(assert (=> d!184469 m!761823))

(declare-fun m!761825 () Bool)

(assert (=> b!515712 m!761825))

(declare-fun m!761827 () Bool)

(assert (=> b!515712 m!761827))

(assert (=> b!515713 m!761825))

(assert (=> b!515713 m!761825))

(declare-fun m!761829 () Bool)

(assert (=> b!515713 m!761829))

(assert (=> b!515697 d!184469))

(declare-fun d!184471 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!821 (List!4728) (InoxSet tuple2!5772))

(assert (=> d!184471 (= (eq!30 lt!214046 lt!214050) (= (content!821 (toList!414 lt!214046)) (content!821 (toList!414 lt!214050))))))

(declare-fun bs!59493 () Bool)

(assert (= bs!59493 d!184471))

(declare-fun m!761831 () Bool)

(assert (=> bs!59493 m!761831))

(declare-fun m!761833 () Bool)

(assert (=> bs!59493 m!761833))

(assert (=> b!515706 d!184471))

(declare-fun d!184473 () Bool)

(declare-fun res!218721 () Bool)

(declare-fun e!308579 () Bool)

(assert (=> d!184473 (=> res!218721 e!308579)))

(assert (=> d!184473 (= res!218721 ((_ is Nil!4718) (toList!414 lt!214049)))))

(assert (=> d!184473 (= (forall!1396 (toList!414 lt!214049) p!6060) e!308579)))

(declare-fun b!515718 () Bool)

(declare-fun e!308580 () Bool)

(assert (=> b!515718 (= e!308579 e!308580)))

(declare-fun res!218722 () Bool)

(assert (=> b!515718 (=> (not res!218722) (not e!308580))))

(declare-fun dynLambda!2974 (Int tuple2!5772) Bool)

(assert (=> b!515718 (= res!218722 (dynLambda!2974 p!6060 (h!10115 (toList!414 lt!214049))))))

(declare-fun b!515719 () Bool)

(assert (=> b!515719 (= e!308580 (forall!1396 (t!73276 (toList!414 lt!214049)) p!6060))))

(assert (= (and d!184473 (not res!218721)) b!515718))

(assert (= (and b!515718 res!218722) b!515719))

(declare-fun b_lambda!20017 () Bool)

(assert (=> (not b_lambda!20017) (not b!515718)))

(declare-fun t!73278 () Bool)

(declare-fun tb!47147 () Bool)

(assert (=> (and start!46760 (= p!6060 p!6060) t!73278) tb!47147))

(declare-fun result!52194 () Bool)

(assert (=> tb!47147 (= result!52194 true)))

(assert (=> b!515718 t!73278))

(declare-fun b_and!51017 () Bool)

(assert (= b_and!51013 (and (=> t!73278 result!52194) b_and!51017)))

(declare-fun m!761835 () Bool)

(assert (=> b!515718 m!761835))

(declare-fun m!761837 () Bool)

(assert (=> b!515719 m!761837))

(assert (=> b!515695 d!184473))

(declare-fun d!184475 () Bool)

(declare-fun lt!214053 () ListMap!185)

(assert (=> d!184475 (invariantList!70 (toList!414 lt!214053))))

(declare-fun extractMap!19 (List!4729) ListMap!185)

(assert (=> d!184475 (= lt!214053 (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))))))

(assert (=> d!184475 (valid!478 hm!65)))

(assert (=> d!184475 (= (map!1031 hm!65) lt!214053)))

(declare-fun bs!59494 () Bool)

(assert (= bs!59494 d!184475))

(declare-fun m!761839 () Bool)

(assert (=> bs!59494 m!761839))

(assert (=> bs!59494 m!761825))

(declare-fun m!761841 () Bool)

(assert (=> bs!59494 m!761841))

(assert (=> bs!59494 m!761809))

(assert (=> b!515695 d!184475))

(declare-fun bs!59495 () Bool)

(declare-fun b!515720 () Bool)

(assert (= bs!59495 (and b!515720 b!515712)))

(declare-fun lambda!14398 () Int)

(assert (=> bs!59495 (= lambda!14398 lambda!14397)))

(declare-fun d!184477 () Bool)

(declare-fun res!218723 () Bool)

(declare-fun e!308581 () Bool)

(assert (=> d!184477 (=> (not res!218723) (not e!308581))))

(assert (=> d!184477 (= res!218723 (valid!479 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))

(assert (=> d!184477 (= (valid!478 (_2!3103 lt!214047)) e!308581)))

(declare-fun res!218724 () Bool)

(assert (=> b!515720 (=> (not res!218724) (not e!308581))))

(assert (=> b!515720 (= res!218724 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))) lambda!14398))))

(declare-fun b!515721 () Bool)

(assert (=> b!515721 (= e!308581 (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))) (hashF!2365 (_2!3103 lt!214047))))))

(assert (= (and d!184477 res!218723) b!515720))

(assert (= (and b!515720 res!218724) b!515721))

(declare-fun m!761843 () Bool)

(assert (=> d!184477 m!761843))

(declare-fun m!761845 () Bool)

(assert (=> b!515720 m!761845))

(declare-fun m!761847 () Bool)

(assert (=> b!515720 m!761847))

(assert (=> b!515721 m!761845))

(assert (=> b!515721 m!761845))

(declare-fun m!761849 () Bool)

(assert (=> b!515721 m!761849))

(assert (=> b!515700 d!184477))

(declare-fun bs!59496 () Bool)

(declare-fun b!515751 () Bool)

(assert (= bs!59496 (and b!515751 b!515712)))

(declare-fun lambda!14405 () Int)

(assert (=> bs!59496 (= lambda!14405 lambda!14397)))

(declare-fun bs!59497 () Bool)

(assert (= bs!59497 (and b!515751 b!515720)))

(assert (=> bs!59497 (= lambda!14405 lambda!14398)))

(declare-fun bm!37588 () Bool)

(declare-fun call!37600 () Bool)

(declare-fun call!37597 () ListMap!185)

(declare-fun e!308594 () ListMap!185)

(assert (=> bm!37588 (= call!37600 (eq!30 call!37597 e!308594))))

(declare-fun c!99894 () Bool)

(declare-fun c!99896 () Bool)

(assert (=> bm!37588 (= c!99894 c!99896)))

(declare-fun b!515744 () Bool)

(declare-fun call!37594 () ListMap!185)

(declare-fun call!37595 () ListMap!185)

(assert (=> b!515744 (eq!30 call!37594 call!37595)))

(declare-datatypes ((Unit!8541 0))(
  ( (Unit!8542) )
))
(declare-fun lt!214143 () Unit!8541)

(declare-fun lt!214135 () Unit!8541)

(assert (=> b!515744 (= lt!214143 lt!214135)))

(declare-fun call!37598 () ListMap!185)

(declare-fun lt!214119 () List!4728)

(declare-fun lt!214138 () (_ BitVec 64))

(declare-fun lt!214137 () ListLongMap!75)

(declare-fun +!22 (ListLongMap!75 tuple2!5776) ListLongMap!75)

(assert (=> b!515744 (eq!30 (extractMap!19 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))) (-!33 call!37598 k0!1740))))

(declare-datatypes ((tuple2!5778 0))(
  ( (tuple2!5779 (_1!3105 Unit!8541) (_2!3105 MutableMap!489)) )
))
(declare-fun lt!214142 () tuple2!5778)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!11 (ListLongMap!75 (_ BitVec 64) List!4728 K!1407 Hashable!489) Unit!8541)

(assert (=> b!515744 (= lt!214135 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!11 lt!214137 lt!214138 lt!214119 k0!1740 (hashF!2365 (_2!3105 lt!214142))))))

(declare-fun lt!214133 () Unit!8541)

(declare-fun Unit!8543 () Unit!8541)

(assert (=> b!515744 (= lt!214133 Unit!8543)))

(declare-fun lt!214140 () ListMap!185)

(declare-fun contains!1077 (ListMap!185 K!1407) Bool)

(assert (=> b!515744 (contains!1077 lt!214140 k0!1740)))

(declare-fun lt!214139 () Unit!8541)

(declare-fun Unit!8544 () Unit!8541)

(assert (=> b!515744 (= lt!214139 Unit!8544)))

(declare-fun call!37596 () Bool)

(assert (=> b!515744 call!37596))

(declare-fun lt!214117 () Unit!8541)

(declare-fun Unit!8545 () Unit!8541)

(assert (=> b!515744 (= lt!214117 Unit!8545)))

(declare-fun call!37599 () ListLongMap!75)

(assert (=> b!515744 (allKeysSameHashInMap!26 call!37599 (hashF!2365 (_2!3105 lt!214142)))))

(declare-fun lt!214132 () Unit!8541)

(declare-fun Unit!8546 () Unit!8541)

(assert (=> b!515744 (= lt!214132 Unit!8546)))

(assert (=> b!515744 (forall!1397 (toList!415 call!37599) lambda!14405)))

(declare-fun lt!214131 () Unit!8541)

(declare-fun lt!214121 () Unit!8541)

(assert (=> b!515744 (= lt!214131 lt!214121)))

(declare-fun e!308596 () Bool)

(assert (=> b!515744 e!308596))

(declare-fun res!218731 () Bool)

(assert (=> b!515744 (=> (not res!218731) (not e!308596))))

(declare-fun lt!214116 () ListLongMap!75)

(assert (=> b!515744 (= res!218731 (forall!1397 (toList!415 lt!214116) lambda!14405))))

(assert (=> b!515744 (= lt!214116 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!13 (ListLongMap!75 (_ BitVec 64) List!4728 Hashable!489) Unit!8541)

(assert (=> b!515744 (= lt!214121 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!13 lt!214137 lt!214138 lt!214119 (hashF!2365 (_2!3105 lt!214142))))))

(declare-fun lt!214125 () Unit!8541)

(declare-fun lt!214118 () Unit!8541)

(assert (=> b!515744 (= lt!214125 lt!214118)))

(declare-fun lt!214115 () List!4728)

(declare-fun allKeysSameHash!14 (List!4728 (_ BitVec 64) Hashable!489) Bool)

(declare-fun removePairForKey!13 (List!4728 K!1407) List!4728)

(assert (=> b!515744 (allKeysSameHash!14 (removePairForKey!13 lt!214115 k0!1740) lt!214138 (hashF!2365 (_2!3105 lt!214142)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!13 (List!4728 K!1407 (_ BitVec 64) Hashable!489) Unit!8541)

(assert (=> b!515744 (= lt!214118 (lemmaRemovePairForKeyPreservesHash!13 lt!214115 k0!1740 lt!214138 (hashF!2365 (_2!3105 lt!214142))))))

(declare-fun lt!214136 () Unit!8541)

(declare-fun lt!214124 () Unit!8541)

(assert (=> b!515744 (= lt!214136 lt!214124)))

(assert (=> b!515744 (allKeysSameHash!14 lt!214115 lt!214138 (hashF!2365 (_2!3105 lt!214142)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!13 (List!4729 (_ BitVec 64) List!4728 Hashable!489) Unit!8541)

(assert (=> b!515744 (= lt!214124 (lemmaInLongMapAllKeySameHashThenForTuple!13 (toList!415 lt!214137) lt!214138 lt!214115 (hashF!2365 (_2!3105 lt!214142))))))

(declare-fun e!308599 () Unit!8541)

(declare-fun Unit!8547 () Unit!8541)

(assert (=> b!515744 (= e!308599 Unit!8547)))

(declare-fun bm!37589 () Bool)

(declare-fun lt!214123 () tuple2!5774)

(assert (=> bm!37589 (= call!37597 (map!1031 (_2!3103 lt!214123)))))

(declare-fun bm!37590 () Bool)

(declare-fun call!37593 () ListMap!185)

(assert (=> bm!37590 (= call!37593 (map!1031 hm!65))))

(declare-fun b!515745 () Bool)

(assert (=> b!515745 (= e!308594 call!37593)))

(declare-fun b!515746 () Bool)

(declare-fun e!308597 () tuple2!5774)

(assert (=> b!515746 (= e!308597 (tuple2!5775 true hm!65))))

(declare-fun lt!214120 () ListLongMap!75)

(assert (=> b!515746 (= lt!214120 call!37599)))

(declare-fun lt!214130 () Unit!8541)

(declare-fun lemmaRemoveNotContainedDoesNotChange!11 (ListLongMap!75 K!1407 Hashable!489) Unit!8541)

(assert (=> b!515746 (= lt!214130 (lemmaRemoveNotContainedDoesNotChange!11 lt!214120 k0!1740 (hashF!2365 hm!65)))))

(assert (=> b!515746 (= call!37598 call!37595)))

(declare-fun lt!214141 () Unit!8541)

(assert (=> b!515746 (= lt!214141 lt!214130)))

(declare-fun b!515747 () Bool)

(declare-fun e!308595 () Bool)

(declare-fun e!308598 () Bool)

(assert (=> b!515747 (= e!308595 e!308598)))

(assert (=> b!515747 (= c!99896 (_1!3103 lt!214123))))

(declare-fun b!515748 () Bool)

(declare-fun res!218732 () Bool)

(assert (=> b!515748 (=> (not res!218732) (not e!308595))))

(assert (=> b!515748 (= res!218732 (valid!478 (_2!3103 lt!214123)))))

(declare-fun b!515749 () Bool)

(assert (=> b!515749 (= e!308598 call!37600)))

(declare-fun c!99895 () Bool)

(declare-fun bm!37591 () Bool)

(assert (=> bm!37591 (= call!37598 (extractMap!19 (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137))))))

(declare-fun b!515750 () Bool)

(assert (=> b!515750 (= e!308594 (-!33 call!37593 k0!1740))))

(declare-fun bm!37592 () Bool)

(assert (=> bm!37592 (= call!37596 (valid!478 (_2!3105 lt!214142)))))

(declare-fun bm!37593 () Bool)

(assert (=> bm!37593 (= call!37595 (-!33 (ite c!99895 call!37598 lt!214140) k0!1740))))

(declare-fun b!515752 () Bool)

(assert (=> b!515752 (= e!308596 (allKeysSameHashInMap!26 lt!214116 (hashF!2365 (_2!3105 lt!214142))))))

(declare-fun bm!37594 () Bool)

(assert (=> bm!37594 (= call!37594 (map!1031 (_2!3105 lt!214142)))))

(declare-fun b!515753 () Bool)

(assert (=> b!515753 (= call!37594 lt!214140)))

(declare-fun lt!214122 () Unit!8541)

(declare-fun Unit!8548 () Unit!8541)

(assert (=> b!515753 (= lt!214122 Unit!8548)))

(assert (=> b!515753 call!37596))

(declare-fun Unit!8549 () Unit!8541)

(assert (=> b!515753 (= e!308599 Unit!8549)))

(declare-fun bm!37595 () Bool)

(assert (=> bm!37595 (= call!37599 (map!1032 (ite c!99895 (v!15752 (underlying!1214 hm!65)) (v!15752 (underlying!1214 (_2!3105 lt!214142))))))))

(declare-fun b!515754 () Bool)

(assert (=> b!515754 (= e!308598 call!37600)))

(declare-datatypes ((tuple2!5780 0))(
  ( (tuple2!5781 (_1!3106 Bool) (_2!3106 MutLongMap!517)) )
))
(declare-fun lt!214114 () tuple2!5780)

(assert (=> b!515751 (= e!308597 (tuple2!5775 (_1!3106 lt!214114) (_2!3105 lt!214142)))))

(declare-fun hash!512 (Hashable!489 K!1407) (_ BitVec 64))

(assert (=> b!515751 (= lt!214138 (hash!512 (hashF!2365 hm!65) k0!1740))))

(declare-fun apply!1181 (MutLongMap!517 (_ BitVec 64)) List!4728)

(assert (=> b!515751 (= lt!214115 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))))

(declare-fun lt!214126 () Unit!8541)

(declare-fun forallContained!444 (List!4729 Int tuple2!5776) Unit!8541)

(assert (=> b!515751 (= lt!214126 (forallContained!444 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14405 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))))))

(assert (=> b!515751 (= lt!214140 (map!1031 hm!65))))

(assert (=> b!515751 (= lt!214137 (map!1032 (v!15752 (underlying!1214 hm!65))))))

(assert (=> b!515751 (= lt!214119 (removePairForKey!13 lt!214115 k0!1740))))

(declare-fun update!52 (MutLongMap!517 (_ BitVec 64) List!4728) tuple2!5780)

(assert (=> b!515751 (= lt!214114 (update!52 (v!15752 (underlying!1214 hm!65)) lt!214138 lt!214119))))

(declare-fun lt!214134 () Bool)

(declare-fun Unit!8550 () Unit!8541)

(declare-fun Unit!8551 () Unit!8541)

(assert (=> b!515751 (= lt!214142 (ite (and (_1!3106 lt!214114) lt!214134) (tuple2!5779 Unit!8550 (HashMap!489 (Cell!2012 (_2!3106 lt!214114)) (hashF!2365 hm!65) (bvsub (_size!1144 hm!65) #b00000000000000000000000000000001) (defaultValue!638 hm!65))) (tuple2!5779 Unit!8551 (HashMap!489 (Cell!2012 (_2!3106 lt!214114)) (hashF!2365 hm!65) (_size!1144 hm!65) (defaultValue!638 hm!65)))))))

(declare-fun lt!214128 () Unit!8541)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!13 (List!4728 K!1407) Unit!8541)

(assert (=> b!515751 (= lt!214128 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!13 lt!214115 k0!1740))))

(declare-fun noDuplicateKeys!15 (List!4728) Bool)

(assert (=> b!515751 (noDuplicateKeys!15 (removePairForKey!13 lt!214115 k0!1740))))

(declare-fun lt!214129 () Unit!8541)

(assert (=> b!515751 (= lt!214129 lt!214128)))

(declare-fun c!99897 () Bool)

(assert (=> b!515751 (= c!99897 (_1!3106 lt!214114))))

(declare-fun lt!214127 () Unit!8541)

(assert (=> b!515751 (= lt!214127 e!308599)))

(declare-fun d!184479 () Bool)

(assert (=> d!184479 e!308595))

(declare-fun res!218733 () Bool)

(assert (=> d!184479 (=> (not res!218733) (not e!308595))))

(assert (=> d!184479 (= res!218733 ((_ is HashMap!489) (_2!3103 lt!214123)))))

(assert (=> d!184479 (= lt!214123 e!308597)))

(assert (=> d!184479 (= c!99895 (not lt!214134))))

(declare-fun contains!1078 (MutableMap!489 K!1407) Bool)

(assert (=> d!184479 (= lt!214134 (contains!1078 hm!65 k0!1740))))

(assert (=> d!184479 (valid!478 hm!65)))

(assert (=> d!184479 (= (remove!36 hm!65 k0!1740) lt!214123)))

(assert (= (and d!184479 c!99895) b!515746))

(assert (= (and d!184479 (not c!99895)) b!515751))

(assert (= (and b!515751 c!99897) b!515744))

(assert (= (and b!515751 (not c!99897)) b!515753))

(assert (= (and b!515744 res!218731) b!515752))

(assert (= (or b!515744 b!515753) bm!37592))

(assert (= (or b!515744 b!515753) bm!37594))

(assert (= (or b!515746 b!515744) bm!37595))

(assert (= (or b!515746 b!515744) bm!37591))

(assert (= (or b!515746 b!515744) bm!37593))

(assert (= (and d!184479 res!218733) b!515748))

(assert (= (and b!515748 res!218732) b!515747))

(assert (= (and b!515747 c!99896) b!515749))

(assert (= (and b!515747 (not c!99896)) b!515754))

(assert (= (or b!515749 b!515754) bm!37589))

(assert (= (or b!515749 b!515754) bm!37590))

(assert (= (or b!515749 b!515754) bm!37588))

(assert (= (and bm!37588 c!99894) b!515750))

(assert (= (and bm!37588 (not c!99894)) b!515745))

(declare-fun m!761851 () Bool)

(assert (=> bm!37592 m!761851))

(declare-fun m!761853 () Bool)

(assert (=> b!515751 m!761853))

(declare-fun m!761855 () Bool)

(assert (=> b!515751 m!761855))

(declare-fun m!761857 () Bool)

(assert (=> b!515751 m!761857))

(declare-fun m!761859 () Bool)

(assert (=> b!515751 m!761859))

(declare-fun m!761861 () Bool)

(assert (=> b!515751 m!761861))

(declare-fun m!761863 () Bool)

(assert (=> b!515751 m!761863))

(assert (=> b!515751 m!761825))

(assert (=> b!515751 m!761821))

(assert (=> b!515751 m!761855))

(declare-fun m!761865 () Bool)

(assert (=> b!515751 m!761865))

(declare-fun m!761867 () Bool)

(assert (=> bm!37589 m!761867))

(declare-fun m!761869 () Bool)

(assert (=> bm!37591 m!761869))

(declare-fun m!761871 () Bool)

(assert (=> b!515744 m!761871))

(declare-fun m!761873 () Bool)

(assert (=> b!515744 m!761873))

(declare-fun m!761875 () Bool)

(assert (=> b!515744 m!761875))

(declare-fun m!761877 () Bool)

(assert (=> b!515744 m!761877))

(declare-fun m!761879 () Bool)

(assert (=> b!515744 m!761879))

(declare-fun m!761881 () Bool)

(assert (=> b!515744 m!761881))

(assert (=> b!515744 m!761877))

(declare-fun m!761883 () Bool)

(assert (=> b!515744 m!761883))

(assert (=> b!515744 m!761881))

(declare-fun m!761885 () Bool)

(assert (=> b!515744 m!761885))

(declare-fun m!761887 () Bool)

(assert (=> b!515744 m!761887))

(declare-fun m!761889 () Bool)

(assert (=> b!515744 m!761889))

(assert (=> b!515744 m!761855))

(assert (=> b!515744 m!761855))

(declare-fun m!761891 () Bool)

(assert (=> b!515744 m!761891))

(declare-fun m!761893 () Bool)

(assert (=> b!515744 m!761893))

(declare-fun m!761895 () Bool)

(assert (=> b!515744 m!761895))

(declare-fun m!761897 () Bool)

(assert (=> b!515744 m!761897))

(declare-fun m!761899 () Bool)

(assert (=> b!515744 m!761899))

(declare-fun m!761901 () Bool)

(assert (=> bm!37594 m!761901))

(declare-fun m!761903 () Bool)

(assert (=> b!515746 m!761903))

(declare-fun m!761905 () Bool)

(assert (=> b!515752 m!761905))

(declare-fun m!761907 () Bool)

(assert (=> bm!37595 m!761907))

(declare-fun m!761909 () Bool)

(assert (=> b!515748 m!761909))

(declare-fun m!761911 () Bool)

(assert (=> b!515750 m!761911))

(declare-fun m!761913 () Bool)

(assert (=> bm!37593 m!761913))

(declare-fun m!761915 () Bool)

(assert (=> bm!37588 m!761915))

(declare-fun m!761917 () Bool)

(assert (=> d!184479 m!761917))

(assert (=> d!184479 m!761809))

(assert (=> bm!37590 m!761821))

(assert (=> b!515700 d!184479))

(declare-fun d!184481 () Bool)

(declare-fun e!308602 () Bool)

(assert (=> d!184481 e!308602))

(declare-fun res!218736 () Bool)

(assert (=> d!184481 (=> (not res!218736) (not e!308602))))

(declare-fun lt!214146 () ListMap!185)

(assert (=> d!184481 (= res!218736 (not (contains!1077 lt!214146 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!11 (List!4728 K!1407) List!4728)

(assert (=> d!184481 (= lt!214146 (ListMap!186 (removePresrvNoDuplicatedKeys!11 (toList!414 lt!214049) k0!1740)))))

(assert (=> d!184481 (= (-!33 lt!214049 k0!1740) lt!214146)))

(declare-fun b!515757 () Bool)

(declare-datatypes ((List!4730 0))(
  ( (Nil!4720) (Cons!4720 (h!10117 K!1407) (t!73280 List!4730)) )
))
(declare-fun content!822 (List!4730) (InoxSet K!1407))

(declare-fun keys!1848 (ListMap!185) List!4730)

(assert (=> b!515757 (= e!308602 (= ((_ map and) (content!822 (keys!1848 lt!214049)) ((_ map not) (store ((as const (Array K!1407 Bool)) false) k0!1740 true))) (content!822 (keys!1848 lt!214146))))))

(assert (= (and d!184481 res!218736) b!515757))

(declare-fun m!761919 () Bool)

(assert (=> d!184481 m!761919))

(declare-fun m!761921 () Bool)

(assert (=> d!184481 m!761921))

(declare-fun m!761923 () Bool)

(assert (=> b!515757 m!761923))

(declare-fun m!761925 () Bool)

(assert (=> b!515757 m!761925))

(declare-fun m!761927 () Bool)

(assert (=> b!515757 m!761927))

(assert (=> b!515757 m!761923))

(declare-fun m!761929 () Bool)

(assert (=> b!515757 m!761929))

(assert (=> b!515757 m!761925))

(declare-fun m!761931 () Bool)

(assert (=> b!515757 m!761931))

(assert (=> b!515700 d!184481))

(declare-fun d!184483 () Bool)

(declare-fun noDuplicatedKeys!14 (List!4728) Bool)

(assert (=> d!184483 (= (invariantList!70 (toList!414 lt!214046)) (noDuplicatedKeys!14 (toList!414 lt!214046)))))

(declare-fun bs!59498 () Bool)

(assert (= bs!59498 d!184483))

(declare-fun m!761933 () Bool)

(assert (=> bs!59498 m!761933))

(assert (=> b!515707 d!184483))

(declare-fun d!184485 () Bool)

(declare-fun lt!214147 () ListMap!185)

(assert (=> d!184485 (invariantList!70 (toList!414 lt!214147))))

(assert (=> d!184485 (= lt!214147 (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))

(assert (=> d!184485 (valid!478 (_2!3103 lt!214047))))

(assert (=> d!184485 (= (map!1031 (_2!3103 lt!214047)) lt!214147)))

(declare-fun bs!59499 () Bool)

(assert (= bs!59499 d!184485))

(declare-fun m!761935 () Bool)

(assert (=> bs!59499 m!761935))

(assert (=> bs!59499 m!761845))

(declare-fun m!761937 () Bool)

(assert (=> bs!59499 m!761937))

(assert (=> bs!59499 m!761799))

(assert (=> b!515707 d!184485))

(declare-fun d!184487 () Bool)

(assert (=> d!184487 (= (array_inv!671 (_keys!808 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) (bvsge (size!3853 (_keys!808 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515702 d!184487))

(declare-fun d!184489 () Bool)

(assert (=> d!184489 (= (array_inv!672 (_values!795 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) (bvsge (size!3852 (_values!795 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515702 d!184489))

(declare-fun d!184491 () Bool)

(assert (=> d!184491 (= (invariantList!70 (toList!414 lt!214050)) (noDuplicatedKeys!14 (toList!414 lt!214050)))))

(declare-fun bs!59500 () Bool)

(assert (= bs!59500 d!184491))

(declare-fun m!761939 () Bool)

(assert (=> bs!59500 m!761939))

(assert (=> b!515698 d!184491))

(declare-fun tp!161022 () Bool)

(declare-fun e!308607 () Bool)

(declare-fun tp_is_empty!2617 () Bool)

(declare-fun b!515764 () Bool)

(assert (=> b!515764 (= e!308607 (and tp_is_empty!2615 tp_is_empty!2617 tp!161022))))

(declare-fun condMapEmpty!1996 () Bool)

(declare-fun mapDefault!1996 () List!4728)

(assert (=> mapNonEmpty!1993 (= condMapEmpty!1996 (= mapRest!1993 ((as const (Array (_ BitVec 32) List!4728)) mapDefault!1996)))))

(declare-fun e!308608 () Bool)

(declare-fun mapRes!1996 () Bool)

(assert (=> mapNonEmpty!1993 (= tp!161007 (and e!308608 mapRes!1996))))

(declare-fun mapIsEmpty!1996 () Bool)

(assert (=> mapIsEmpty!1996 mapRes!1996))

(declare-fun tp!161021 () Bool)

(declare-fun b!515765 () Bool)

(assert (=> b!515765 (= e!308608 (and tp_is_empty!2615 tp_is_empty!2617 tp!161021))))

(declare-fun mapNonEmpty!1996 () Bool)

(declare-fun tp!161023 () Bool)

(assert (=> mapNonEmpty!1996 (= mapRes!1996 (and tp!161023 e!308607))))

(declare-fun mapRest!1996 () (Array (_ BitVec 32) List!4728))

(declare-fun mapValue!1996 () List!4728)

(declare-fun mapKey!1996 () (_ BitVec 32))

(assert (=> mapNonEmpty!1996 (= mapRest!1993 (store mapRest!1996 mapKey!1996 mapValue!1996))))

(assert (= (and mapNonEmpty!1993 condMapEmpty!1996) mapIsEmpty!1996))

(assert (= (and mapNonEmpty!1993 (not condMapEmpty!1996)) mapNonEmpty!1996))

(assert (= (and mapNonEmpty!1996 ((_ is Cons!4718) mapValue!1996)) b!515764))

(assert (= (and mapNonEmpty!1993 ((_ is Cons!4718) mapDefault!1996)) b!515765))

(declare-fun m!761941 () Bool)

(assert (=> mapNonEmpty!1996 m!761941))

(declare-fun tp!161026 () Bool)

(declare-fun b!515770 () Bool)

(declare-fun e!308611 () Bool)

(assert (=> b!515770 (= e!308611 (and tp_is_empty!2615 tp_is_empty!2617 tp!161026))))

(assert (=> mapNonEmpty!1993 (= tp!161008 e!308611)))

(assert (= (and mapNonEmpty!1993 ((_ is Cons!4718) mapValue!1993)) b!515770))

(declare-fun tp!161027 () Bool)

(declare-fun b!515771 () Bool)

(declare-fun e!308612 () Bool)

(assert (=> b!515771 (= e!308612 (and tp_is_empty!2615 tp_is_empty!2617 tp!161027))))

(assert (=> b!515701 (= tp!161012 e!308612)))

(assert (= (and b!515701 ((_ is Cons!4718) mapDefault!1993)) b!515771))

(declare-fun e!308613 () Bool)

(declare-fun tp!161028 () Bool)

(declare-fun b!515772 () Bool)

(assert (=> b!515772 (= e!308613 (and tp_is_empty!2615 tp_is_empty!2617 tp!161028))))

(assert (=> b!515702 (= tp!161010 e!308613)))

(assert (= (and b!515702 ((_ is Cons!4718) (zeroValue!773 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))))) b!515772))

(declare-fun tp!161029 () Bool)

(declare-fun b!515773 () Bool)

(declare-fun e!308614 () Bool)

(assert (=> b!515773 (= e!308614 (and tp_is_empty!2615 tp_is_empty!2617 tp!161029))))

(assert (=> b!515702 (= tp!161011 e!308614)))

(assert (= (and b!515702 ((_ is Cons!4718) (minValue!773 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))))) b!515773))

(declare-fun b_lambda!20019 () Bool)

(assert (= b_lambda!20017 (or (and start!46760 b_free!13561) b_lambda!20019)))

(check-sat (not b!515712) (not b!515748) (not b!515772) (not b!515751) (not d!184485) (not b!515757) (not b!515770) tp_is_empty!2615 (not d!184481) (not bm!37594) (not d!184475) (not bm!37589) b_and!51017 (not b_next!13559) b_and!51011 (not b!515721) (not b_next!13563) (not b_next!13561) (not b!515719) (not d!184477) (not b!515713) (not bm!37591) (not d!184471) (not b!515746) (not d!184469) tp_is_empty!2617 (not bm!37593) b_and!51015 (not b!515750) (not d!184491) (not b!515773) (not d!184479) (not b!515764) (not b!515771) (not d!184483) (not bm!37595) (not bm!37588) (not b!515744) (not b!515752) (not bm!37590) (not b!515720) (not bm!37592) (not b_lambda!20019) (not b!515765) (not mapNonEmpty!1996))
(check-sat b_and!51015 b_and!51017 (not b_next!13559) b_and!51011 (not b_next!13563) (not b_next!13561))
(get-model)

(declare-fun d!184493 () Bool)

(declare-fun c!99900 () Bool)

(assert (=> d!184493 (= c!99900 ((_ is Nil!4718) (toList!414 lt!214046)))))

(declare-fun e!308617 () (InoxSet tuple2!5772))

(assert (=> d!184493 (= (content!821 (toList!414 lt!214046)) e!308617)))

(declare-fun b!515778 () Bool)

(assert (=> b!515778 (= e!308617 ((as const (Array tuple2!5772 Bool)) false))))

(declare-fun b!515779 () Bool)

(assert (=> b!515779 (= e!308617 ((_ map or) (store ((as const (Array tuple2!5772 Bool)) false) (h!10115 (toList!414 lt!214046)) true) (content!821 (t!73276 (toList!414 lt!214046)))))))

(assert (= (and d!184493 c!99900) b!515778))

(assert (= (and d!184493 (not c!99900)) b!515779))

(declare-fun m!761943 () Bool)

(assert (=> b!515779 m!761943))

(declare-fun m!761945 () Bool)

(assert (=> b!515779 m!761945))

(assert (=> d!184471 d!184493))

(declare-fun d!184495 () Bool)

(declare-fun c!99901 () Bool)

(assert (=> d!184495 (= c!99901 ((_ is Nil!4718) (toList!414 lt!214050)))))

(declare-fun e!308618 () (InoxSet tuple2!5772))

(assert (=> d!184495 (= (content!821 (toList!414 lt!214050)) e!308618)))

(declare-fun b!515780 () Bool)

(assert (=> b!515780 (= e!308618 ((as const (Array tuple2!5772 Bool)) false))))

(declare-fun b!515781 () Bool)

(assert (=> b!515781 (= e!308618 ((_ map or) (store ((as const (Array tuple2!5772 Bool)) false) (h!10115 (toList!414 lt!214050)) true) (content!821 (t!73276 (toList!414 lt!214050)))))))

(assert (= (and d!184495 c!99901) b!515780))

(assert (= (and d!184495 (not c!99901)) b!515781))

(declare-fun m!761947 () Bool)

(assert (=> b!515781 m!761947))

(declare-fun m!761949 () Bool)

(assert (=> b!515781 m!761949))

(assert (=> d!184471 d!184495))

(declare-fun bs!59501 () Bool)

(declare-fun b!515782 () Bool)

(assert (= bs!59501 (and b!515782 b!515712)))

(declare-fun lambda!14406 () Int)

(assert (=> bs!59501 (= lambda!14406 lambda!14397)))

(declare-fun bs!59502 () Bool)

(assert (= bs!59502 (and b!515782 b!515720)))

(assert (=> bs!59502 (= lambda!14406 lambda!14398)))

(declare-fun bs!59503 () Bool)

(assert (= bs!59503 (and b!515782 b!515751)))

(assert (=> bs!59503 (= lambda!14406 lambda!14405)))

(declare-fun d!184497 () Bool)

(declare-fun res!218737 () Bool)

(declare-fun e!308619 () Bool)

(assert (=> d!184497 (=> (not res!218737) (not e!308619))))

(assert (=> d!184497 (= res!218737 (valid!479 (v!15752 (underlying!1214 (_2!3103 lt!214123)))))))

(assert (=> d!184497 (= (valid!478 (_2!3103 lt!214123)) e!308619)))

(declare-fun res!218738 () Bool)

(assert (=> b!515782 (=> (not res!218738) (not e!308619))))

(assert (=> b!515782 (= res!218738 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214123))))) lambda!14406))))

(declare-fun b!515783 () Bool)

(assert (=> b!515783 (= e!308619 (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214123)))) (hashF!2365 (_2!3103 lt!214123))))))

(assert (= (and d!184497 res!218737) b!515782))

(assert (= (and b!515782 res!218738) b!515783))

(declare-fun m!761951 () Bool)

(assert (=> d!184497 m!761951))

(declare-fun m!761953 () Bool)

(assert (=> b!515782 m!761953))

(declare-fun m!761955 () Bool)

(assert (=> b!515782 m!761955))

(assert (=> b!515783 m!761953))

(assert (=> b!515783 m!761953))

(declare-fun m!761957 () Bool)

(assert (=> b!515783 m!761957))

(assert (=> b!515748 d!184497))

(declare-fun bs!59504 () Bool)

(declare-fun d!184499 () Bool)

(assert (= bs!59504 (and d!184499 b!515712)))

(declare-fun lambda!14409 () Int)

(assert (=> bs!59504 (= lambda!14409 lambda!14397)))

(declare-fun bs!59505 () Bool)

(assert (= bs!59505 (and d!184499 b!515720)))

(assert (=> bs!59505 (= lambda!14409 lambda!14398)))

(declare-fun bs!59506 () Bool)

(assert (= bs!59506 (and d!184499 b!515751)))

(assert (=> bs!59506 (= lambda!14409 lambda!14405)))

(declare-fun bs!59507 () Bool)

(assert (= bs!59507 (and d!184499 b!515782)))

(assert (=> bs!59507 (= lambda!14409 lambda!14406)))

(assert (=> d!184499 (= (extractMap!19 (toList!415 lt!214120)) (-!33 (extractMap!19 (toList!415 lt!214120)) k0!1740))))

(declare-fun lt!214150 () Unit!8541)

(declare-fun choose!3670 (ListLongMap!75 K!1407 Hashable!489) Unit!8541)

(assert (=> d!184499 (= lt!214150 (choose!3670 lt!214120 k0!1740 (hashF!2365 hm!65)))))

(assert (=> d!184499 (forall!1397 (toList!415 lt!214120) lambda!14409)))

(assert (=> d!184499 (= (lemmaRemoveNotContainedDoesNotChange!11 lt!214120 k0!1740 (hashF!2365 hm!65)) lt!214150)))

(declare-fun bs!59508 () Bool)

(assert (= bs!59508 d!184499))

(declare-fun m!761959 () Bool)

(assert (=> bs!59508 m!761959))

(assert (=> bs!59508 m!761959))

(declare-fun m!761961 () Bool)

(assert (=> bs!59508 m!761961))

(declare-fun m!761963 () Bool)

(assert (=> bs!59508 m!761963))

(declare-fun m!761965 () Bool)

(assert (=> bs!59508 m!761965))

(assert (=> b!515746 d!184499))

(declare-fun b!515802 () Bool)

(declare-fun e!308632 () Unit!8541)

(declare-fun Unit!8552 () Unit!8541)

(assert (=> b!515802 (= e!308632 Unit!8552)))

(declare-fun b!515803 () Bool)

(declare-fun e!308635 () Bool)

(declare-fun e!308637 () Bool)

(assert (=> b!515803 (= e!308635 e!308637)))

(declare-fun res!218746 () Bool)

(assert (=> b!515803 (=> (not res!218746) (not e!308637))))

(declare-datatypes ((Option!1230 0))(
  ( (None!1229) (Some!1229 (v!15757 V!1505)) )
))
(declare-fun isDefined!1044 (Option!1230) Bool)

(declare-fun getValueByKey!16 (List!4728 K!1407) Option!1230)

(assert (=> b!515803 (= res!218746 (isDefined!1044 (getValueByKey!16 (toList!414 lt!214146) k0!1740)))))

(declare-fun d!184501 () Bool)

(assert (=> d!184501 e!308635))

(declare-fun res!218747 () Bool)

(assert (=> d!184501 (=> res!218747 e!308635)))

(declare-fun e!308636 () Bool)

(assert (=> d!184501 (= res!218747 e!308636)))

(declare-fun res!218745 () Bool)

(assert (=> d!184501 (=> (not res!218745) (not e!308636))))

(declare-fun lt!214169 () Bool)

(assert (=> d!184501 (= res!218745 (not lt!214169))))

(declare-fun lt!214173 () Bool)

(assert (=> d!184501 (= lt!214169 lt!214173)))

(declare-fun lt!214170 () Unit!8541)

(declare-fun e!308634 () Unit!8541)

(assert (=> d!184501 (= lt!214170 e!308634)))

(declare-fun c!99910 () Bool)

(assert (=> d!184501 (= c!99910 lt!214173)))

(declare-fun containsKey!13 (List!4728 K!1407) Bool)

(assert (=> d!184501 (= lt!214173 (containsKey!13 (toList!414 lt!214146) k0!1740))))

(assert (=> d!184501 (= (contains!1077 lt!214146 k0!1740) lt!214169)))

(declare-fun b!515804 () Bool)

(assert (=> b!515804 false))

(declare-fun lt!214174 () Unit!8541)

(declare-fun lt!214167 () Unit!8541)

(assert (=> b!515804 (= lt!214174 lt!214167)))

(assert (=> b!515804 (containsKey!13 (toList!414 lt!214146) k0!1740)))

(declare-fun lemmaInGetKeysListThenContainsKey!4 (List!4728 K!1407) Unit!8541)

(assert (=> b!515804 (= lt!214167 (lemmaInGetKeysListThenContainsKey!4 (toList!414 lt!214146) k0!1740))))

(declare-fun Unit!8553 () Unit!8541)

(assert (=> b!515804 (= e!308632 Unit!8553)))

(declare-fun b!515805 () Bool)

(declare-fun lt!214168 () Unit!8541)

(assert (=> b!515805 (= e!308634 lt!214168)))

(declare-fun lt!214171 () Unit!8541)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!8 (List!4728 K!1407) Unit!8541)

(assert (=> b!515805 (= lt!214171 (lemmaContainsKeyImpliesGetValueByKeyDefined!8 (toList!414 lt!214146) k0!1740))))

(assert (=> b!515805 (isDefined!1044 (getValueByKey!16 (toList!414 lt!214146) k0!1740))))

(declare-fun lt!214172 () Unit!8541)

(assert (=> b!515805 (= lt!214172 lt!214171)))

(declare-fun lemmaInListThenGetKeysListContains!4 (List!4728 K!1407) Unit!8541)

(assert (=> b!515805 (= lt!214168 (lemmaInListThenGetKeysListContains!4 (toList!414 lt!214146) k0!1740))))

(declare-fun call!37603 () Bool)

(assert (=> b!515805 call!37603))

(declare-fun b!515806 () Bool)

(assert (=> b!515806 (= e!308634 e!308632)))

(declare-fun c!99908 () Bool)

(assert (=> b!515806 (= c!99908 call!37603)))

(declare-fun bm!37598 () Bool)

(declare-fun e!308633 () List!4730)

(declare-fun contains!1079 (List!4730 K!1407) Bool)

(assert (=> bm!37598 (= call!37603 (contains!1079 e!308633 k0!1740))))

(declare-fun c!99909 () Bool)

(assert (=> bm!37598 (= c!99909 c!99910)))

(declare-fun b!515807 () Bool)

(declare-fun getKeysList!5 (List!4728) List!4730)

(assert (=> b!515807 (= e!308633 (getKeysList!5 (toList!414 lt!214146)))))

(declare-fun b!515808 () Bool)

(assert (=> b!515808 (= e!308636 (not (contains!1079 (keys!1848 lt!214146) k0!1740)))))

(declare-fun b!515809 () Bool)

(assert (=> b!515809 (= e!308633 (keys!1848 lt!214146))))

(declare-fun b!515810 () Bool)

(assert (=> b!515810 (= e!308637 (contains!1079 (keys!1848 lt!214146) k0!1740))))

(assert (= (and d!184501 c!99910) b!515805))

(assert (= (and d!184501 (not c!99910)) b!515806))

(assert (= (and b!515806 c!99908) b!515804))

(assert (= (and b!515806 (not c!99908)) b!515802))

(assert (= (or b!515805 b!515806) bm!37598))

(assert (= (and bm!37598 c!99909) b!515807))

(assert (= (and bm!37598 (not c!99909)) b!515809))

(assert (= (and d!184501 res!218745) b!515808))

(assert (= (and d!184501 (not res!218747)) b!515803))

(assert (= (and b!515803 res!218746) b!515810))

(assert (=> b!515809 m!761923))

(declare-fun m!761967 () Bool)

(assert (=> b!515804 m!761967))

(declare-fun m!761969 () Bool)

(assert (=> b!515804 m!761969))

(declare-fun m!761971 () Bool)

(assert (=> b!515805 m!761971))

(declare-fun m!761973 () Bool)

(assert (=> b!515805 m!761973))

(assert (=> b!515805 m!761973))

(declare-fun m!761975 () Bool)

(assert (=> b!515805 m!761975))

(declare-fun m!761977 () Bool)

(assert (=> b!515805 m!761977))

(assert (=> d!184501 m!761967))

(assert (=> b!515803 m!761973))

(assert (=> b!515803 m!761973))

(assert (=> b!515803 m!761975))

(declare-fun m!761979 () Bool)

(assert (=> b!515807 m!761979))

(assert (=> b!515808 m!761923))

(assert (=> b!515808 m!761923))

(declare-fun m!761981 () Bool)

(assert (=> b!515808 m!761981))

(declare-fun m!761983 () Bool)

(assert (=> bm!37598 m!761983))

(assert (=> b!515810 m!761923))

(assert (=> b!515810 m!761923))

(assert (=> b!515810 m!761981))

(assert (=> d!184481 d!184501))

(declare-fun bm!37611 () Bool)

(declare-fun call!37621 () (InoxSet tuple2!5772))

(declare-fun lt!214227 () List!4728)

(assert (=> bm!37611 (= call!37621 (content!821 lt!214227))))

(declare-fun b!515849 () Bool)

(declare-fun e!308664 () Unit!8541)

(declare-fun Unit!8554 () Unit!8541)

(assert (=> b!515849 (= e!308664 Unit!8554)))

(declare-fun lt!214213 () Unit!8541)

(assert (=> b!515849 (= lt!214213 (lemmaInGetKeysListThenContainsKey!4 (t!73276 (toList!414 lt!214049)) (_1!3102 (h!10115 (toList!414 lt!214049)))))))

(declare-fun call!37619 () Bool)

(assert (=> b!515849 call!37619))

(declare-fun lt!214223 () Unit!8541)

(assert (=> b!515849 (= lt!214223 lt!214213)))

(assert (=> b!515849 false))

(declare-fun b!515850 () Bool)

(declare-fun e!308661 () List!4728)

(declare-fun e!308662 () List!4728)

(assert (=> b!515850 (= e!308661 e!308662)))

(declare-fun c!99928 () Bool)

(assert (=> b!515850 (= c!99928 (and ((_ is Cons!4718) (toList!414 lt!214049)) (not (= (_1!3102 (h!10115 (toList!414 lt!214049))) k0!1740))))))

(declare-fun d!184503 () Bool)

(declare-fun e!308665 () Bool)

(assert (=> d!184503 e!308665))

(declare-fun res!218756 () Bool)

(assert (=> d!184503 (=> (not res!218756) (not e!308665))))

(assert (=> d!184503 (= res!218756 (invariantList!70 lt!214227))))

(assert (=> d!184503 (= lt!214227 e!308661)))

(declare-fun c!99930 () Bool)

(assert (=> d!184503 (= c!99930 (and ((_ is Cons!4718) (toList!414 lt!214049)) (= (_1!3102 (h!10115 (toList!414 lt!214049))) k0!1740)))))

(assert (=> d!184503 (invariantList!70 (toList!414 lt!214049))))

(assert (=> d!184503 (= (removePresrvNoDuplicatedKeys!11 (toList!414 lt!214049) k0!1740) lt!214227)))

(declare-fun bm!37612 () Bool)

(declare-fun call!37618 () (InoxSet tuple2!5772))

(assert (=> bm!37612 (= call!37618 (content!821 (toList!414 lt!214049)))))

(declare-fun b!515851 () Bool)

(declare-fun e!308659 () Bool)

(assert (=> b!515851 (= e!308665 e!308659)))

(declare-fun c!99927 () Bool)

(assert (=> b!515851 (= c!99927 (containsKey!13 (toList!414 lt!214049) k0!1740))))

(declare-fun bm!37613 () Bool)

(declare-fun call!37617 () (InoxSet tuple2!5772))

(assert (=> bm!37613 (= call!37617 (content!821 (t!73276 (toList!414 lt!214049))))))

(declare-fun b!515852 () Bool)

(declare-fun e!308666 () Unit!8541)

(declare-fun Unit!8555 () Unit!8541)

(assert (=> b!515852 (= e!308666 Unit!8555)))

(declare-fun bm!37614 () Bool)

(assert (=> bm!37614 (= call!37619 (containsKey!13 (ite c!99930 (toList!414 lt!214049) (t!73276 (toList!414 lt!214049))) (ite c!99930 k0!1740 (_1!3102 (h!10115 (toList!414 lt!214049))))))))

(declare-fun b!515853 () Bool)

(declare-fun get!1794 (Option!1230) V!1505)

(assert (=> b!515853 (= e!308659 (= call!37621 ((_ map and) call!37618 ((_ map not) (store ((as const (Array tuple2!5772 Bool)) false) (tuple2!5773 k0!1740 (get!1794 (getValueByKey!16 (toList!414 lt!214049) k0!1740))) true)))))))

(assert (=> b!515853 (containsKey!13 (toList!414 lt!214049) k0!1740)))

(declare-fun lt!214212 () Unit!8541)

(assert (=> b!515853 (= lt!214212 (lemmaContainsKeyImpliesGetValueByKeyDefined!8 (toList!414 lt!214049) k0!1740))))

(assert (=> b!515853 (isDefined!1044 (getValueByKey!16 (toList!414 lt!214049) k0!1740))))

(declare-fun lt!214211 () Unit!8541)

(assert (=> b!515853 (= lt!214211 lt!214212)))

(declare-fun b!515854 () Bool)

(assert (=> b!515854 (= e!308659 (= call!37621 call!37618))))

(declare-fun b!515855 () Bool)

(declare-fun Unit!8556 () Unit!8541)

(assert (=> b!515855 (= e!308666 Unit!8556)))

(declare-fun lt!214226 () V!1505)

(assert (=> b!515855 (= lt!214226 (get!1794 (getValueByKey!16 (toList!414 lt!214049) k0!1740)))))

(declare-fun lt!214219 () K!1407)

(assert (=> b!515855 (= lt!214219 k0!1740)))

(declare-fun lt!214225 () K!1407)

(assert (=> b!515855 (= lt!214225 k0!1740)))

(declare-fun lt!214220 () Unit!8541)

(declare-fun lemmaContainsTupleThenContainsKey!2 (List!4728 K!1407 V!1505) Unit!8541)

(assert (=> b!515855 (= lt!214220 (lemmaContainsTupleThenContainsKey!2 (t!73276 (toList!414 lt!214049)) lt!214219 (get!1794 (getValueByKey!16 (toList!414 lt!214049) k0!1740))))))

(declare-fun call!37620 () Bool)

(assert (=> b!515855 call!37620))

(declare-fun lt!214215 () Unit!8541)

(assert (=> b!515855 (= lt!214215 lt!214220)))

(assert (=> b!515855 false))

(declare-fun b!515856 () Bool)

(declare-fun res!218754 () Bool)

(assert (=> b!515856 (=> (not res!218754) (not e!308665))))

(assert (=> b!515856 (= res!218754 (= (content!822 (getKeysList!5 lt!214227)) ((_ map and) (content!822 (getKeysList!5 (toList!414 lt!214049))) ((_ map not) (store ((as const (Array K!1407 Bool)) false) k0!1740 true)))))))

(declare-fun bm!37615 () Bool)

(declare-fun call!37616 () (InoxSet tuple2!5772))

(assert (=> bm!37615 (= call!37616 (content!821 (toList!414 lt!214049)))))

(declare-fun b!515857 () Bool)

(declare-fun e!308658 () Unit!8541)

(declare-fun Unit!8557 () Unit!8541)

(assert (=> b!515857 (= e!308658 Unit!8557)))

(declare-fun lt!214217 () List!4728)

(assert (=> b!515857 (= lt!214217 (removePresrvNoDuplicatedKeys!11 (t!73276 (toList!414 lt!214049)) k0!1740))))

(declare-fun lt!214216 () Unit!8541)

(assert (=> b!515857 (= lt!214216 (lemmaInListThenGetKeysListContains!4 lt!214217 (_1!3102 (h!10115 (toList!414 lt!214049)))))))

(assert (=> b!515857 (contains!1079 (getKeysList!5 lt!214217) (_1!3102 (h!10115 (toList!414 lt!214049))))))

(declare-fun lt!214222 () Unit!8541)

(assert (=> b!515857 (= lt!214222 lt!214216)))

(assert (=> b!515857 false))

(declare-fun b!515858 () Bool)

(declare-fun res!218755 () Bool)

(assert (=> b!515858 (=> (not res!218755) (not e!308665))))

(assert (=> b!515858 (= res!218755 (not (containsKey!13 lt!214227 k0!1740)))))

(declare-fun b!515859 () Bool)

(declare-fun Unit!8558 () Unit!8541)

(assert (=> b!515859 (= e!308664 Unit!8558)))

(declare-fun b!515860 () Bool)

(assert (=> b!515860 (= e!308662 Nil!4718)))

(declare-fun b!515861 () Bool)

(declare-fun e!308660 () List!4728)

(assert (=> b!515861 (= e!308660 (removePresrvNoDuplicatedKeys!11 (t!73276 (toList!414 lt!214049)) k0!1740))))

(declare-fun b!515862 () Bool)

(assert (=> b!515862 (= call!37617 call!37616)))

(declare-fun e!308663 () Unit!8541)

(declare-fun Unit!8559 () Unit!8541)

(assert (=> b!515862 (= e!308663 Unit!8559)))

(declare-fun b!515863 () Bool)

(assert (=> b!515863 (= e!308661 (t!73276 (toList!414 lt!214049)))))

(declare-fun c!99932 () Bool)

(assert (=> b!515863 (= c!99932 call!37619)))

(declare-fun lt!214214 () Unit!8541)

(assert (=> b!515863 (= lt!214214 e!308663)))

(declare-fun b!515864 () Bool)

(assert (=> b!515864 (= e!308660 (t!73276 (toList!414 lt!214049)))))

(declare-fun b!515865 () Bool)

(assert (=> b!515865 (= call!37617 ((_ map and) call!37616 ((_ map not) (store ((as const (Array tuple2!5772 Bool)) false) (tuple2!5773 k0!1740 (get!1794 (getValueByKey!16 (toList!414 lt!214049) k0!1740))) true))))))

(declare-fun lt!214221 () Unit!8541)

(assert (=> b!515865 (= lt!214221 e!308666)))

(declare-fun c!99929 () Bool)

(declare-fun contains!1080 (List!4728 tuple2!5772) Bool)

(assert (=> b!515865 (= c!99929 (contains!1080 (t!73276 (toList!414 lt!214049)) (tuple2!5773 k0!1740 (get!1794 (getValueByKey!16 (toList!414 lt!214049) k0!1740)))))))

(declare-fun Unit!8560 () Unit!8541)

(assert (=> b!515865 (= e!308663 Unit!8560)))

(declare-fun bm!37616 () Bool)

(assert (=> bm!37616 (= call!37620 (containsKey!13 e!308660 (ite c!99930 lt!214219 (_1!3102 (h!10115 (toList!414 lt!214049))))))))

(declare-fun c!99934 () Bool)

(assert (=> bm!37616 (= c!99934 c!99930)))

(declare-fun b!515866 () Bool)

(declare-fun Unit!8561 () Unit!8541)

(assert (=> b!515866 (= e!308658 Unit!8561)))

(declare-fun b!515867 () Bool)

(declare-fun lt!214224 () Unit!8541)

(assert (=> b!515867 (= lt!214224 e!308658)))

(declare-fun c!99931 () Bool)

(assert (=> b!515867 (= c!99931 call!37620)))

(declare-fun lt!214228 () Unit!8541)

(assert (=> b!515867 (= lt!214228 e!308664)))

(declare-fun c!99933 () Bool)

(assert (=> b!515867 (= c!99933 (contains!1079 (getKeysList!5 (t!73276 (toList!414 lt!214049))) (_1!3102 (h!10115 (toList!414 lt!214049)))))))

(declare-fun lt!214218 () List!4728)

(declare-fun $colon$colon!40 (List!4728 tuple2!5772) List!4728)

(assert (=> b!515867 (= lt!214218 ($colon$colon!40 (removePresrvNoDuplicatedKeys!11 (t!73276 (toList!414 lt!214049)) k0!1740) (h!10115 (toList!414 lt!214049))))))

(assert (=> b!515867 (= e!308662 lt!214218)))

(assert (= (and d!184503 c!99930) b!515863))

(assert (= (and d!184503 (not c!99930)) b!515850))

(assert (= (and b!515863 c!99932) b!515865))

(assert (= (and b!515863 (not c!99932)) b!515862))

(assert (= (and b!515865 c!99929) b!515855))

(assert (= (and b!515865 (not c!99929)) b!515852))

(assert (= (or b!515865 b!515862) bm!37615))

(assert (= (or b!515865 b!515862) bm!37613))

(assert (= (and b!515850 c!99928) b!515867))

(assert (= (and b!515850 (not c!99928)) b!515860))

(assert (= (and b!515867 c!99933) b!515849))

(assert (= (and b!515867 (not c!99933)) b!515859))

(assert (= (and b!515867 c!99931) b!515857))

(assert (= (and b!515867 (not c!99931)) b!515866))

(assert (= (or b!515863 b!515849) bm!37614))

(assert (= (or b!515855 b!515867) bm!37616))

(assert (= (and bm!37616 c!99934) b!515864))

(assert (= (and bm!37616 (not c!99934)) b!515861))

(assert (= (and d!184503 res!218756) b!515858))

(assert (= (and b!515858 res!218755) b!515856))

(assert (= (and b!515856 res!218754) b!515851))

(assert (= (and b!515851 c!99927) b!515853))

(assert (= (and b!515851 (not c!99927)) b!515854))

(assert (= (or b!515853 b!515854) bm!37612))

(assert (= (or b!515853 b!515854) bm!37611))

(declare-fun m!761985 () Bool)

(assert (=> bm!37616 m!761985))

(declare-fun m!761987 () Bool)

(assert (=> bm!37611 m!761987))

(declare-fun m!761989 () Bool)

(assert (=> b!515853 m!761989))

(declare-fun m!761991 () Bool)

(assert (=> b!515853 m!761991))

(assert (=> b!515853 m!761989))

(declare-fun m!761993 () Bool)

(assert (=> b!515853 m!761993))

(assert (=> b!515853 m!761989))

(declare-fun m!761995 () Bool)

(assert (=> b!515853 m!761995))

(declare-fun m!761997 () Bool)

(assert (=> b!515853 m!761997))

(declare-fun m!761999 () Bool)

(assert (=> b!515853 m!761999))

(declare-fun m!762001 () Bool)

(assert (=> b!515857 m!762001))

(declare-fun m!762003 () Bool)

(assert (=> b!515857 m!762003))

(declare-fun m!762005 () Bool)

(assert (=> b!515857 m!762005))

(assert (=> b!515857 m!762005))

(declare-fun m!762007 () Bool)

(assert (=> b!515857 m!762007))

(assert (=> b!515855 m!761989))

(assert (=> b!515855 m!761989))

(assert (=> b!515855 m!761991))

(assert (=> b!515855 m!761991))

(declare-fun m!762009 () Bool)

(assert (=> b!515855 m!762009))

(assert (=> b!515861 m!762001))

(assert (=> b!515851 m!761993))

(declare-fun m!762011 () Bool)

(assert (=> bm!37613 m!762011))

(declare-fun m!762013 () Bool)

(assert (=> b!515849 m!762013))

(declare-fun m!762015 () Bool)

(assert (=> b!515867 m!762015))

(assert (=> b!515867 m!762015))

(declare-fun m!762017 () Bool)

(assert (=> b!515867 m!762017))

(assert (=> b!515867 m!762001))

(assert (=> b!515867 m!762001))

(declare-fun m!762019 () Bool)

(assert (=> b!515867 m!762019))

(declare-fun m!762021 () Bool)

(assert (=> b!515858 m!762021))

(declare-fun m!762023 () Bool)

(assert (=> d!184503 m!762023))

(declare-fun m!762025 () Bool)

(assert (=> d!184503 m!762025))

(assert (=> b!515865 m!761989))

(assert (=> b!515865 m!761989))

(assert (=> b!515865 m!761991))

(assert (=> b!515865 m!761999))

(declare-fun m!762027 () Bool)

(assert (=> b!515865 m!762027))

(declare-fun m!762029 () Bool)

(assert (=> b!515856 m!762029))

(assert (=> b!515856 m!761927))

(declare-fun m!762031 () Bool)

(assert (=> b!515856 m!762031))

(assert (=> b!515856 m!762029))

(declare-fun m!762033 () Bool)

(assert (=> b!515856 m!762033))

(assert (=> b!515856 m!762031))

(declare-fun m!762035 () Bool)

(assert (=> b!515856 m!762035))

(declare-fun m!762037 () Bool)

(assert (=> bm!37615 m!762037))

(assert (=> bm!37612 m!762037))

(declare-fun m!762039 () Bool)

(assert (=> bm!37614 m!762039))

(assert (=> d!184481 d!184503))

(declare-fun d!184505 () Bool)

(declare-fun valid!480 (LongMapFixedSize!1034) Bool)

(assert (=> d!184505 (= (valid!479 (v!15752 (underlying!1214 (_2!3103 lt!214047)))) (valid!480 (v!15751 (underlying!1213 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))

(declare-fun bs!59509 () Bool)

(assert (= bs!59509 d!184505))

(declare-fun m!762041 () Bool)

(assert (=> bs!59509 m!762041))

(assert (=> d!184477 d!184505))

(declare-fun d!184507 () Bool)

(declare-fun e!308667 () Bool)

(assert (=> d!184507 e!308667))

(declare-fun res!218757 () Bool)

(assert (=> d!184507 (=> (not res!218757) (not e!308667))))

(declare-fun lt!214229 () ListMap!185)

(assert (=> d!184507 (= res!218757 (not (contains!1077 lt!214229 k0!1740)))))

(assert (=> d!184507 (= lt!214229 (ListMap!186 (removePresrvNoDuplicatedKeys!11 (toList!414 (ite c!99895 call!37598 lt!214140)) k0!1740)))))

(assert (=> d!184507 (= (-!33 (ite c!99895 call!37598 lt!214140) k0!1740) lt!214229)))

(declare-fun b!515868 () Bool)

(assert (=> b!515868 (= e!308667 (= ((_ map and) (content!822 (keys!1848 (ite c!99895 call!37598 lt!214140))) ((_ map not) (store ((as const (Array K!1407 Bool)) false) k0!1740 true))) (content!822 (keys!1848 lt!214229))))))

(assert (= (and d!184507 res!218757) b!515868))

(declare-fun m!762043 () Bool)

(assert (=> d!184507 m!762043))

(declare-fun m!762045 () Bool)

(assert (=> d!184507 m!762045))

(declare-fun m!762047 () Bool)

(assert (=> b!515868 m!762047))

(declare-fun m!762049 () Bool)

(assert (=> b!515868 m!762049))

(assert (=> b!515868 m!761927))

(assert (=> b!515868 m!762047))

(declare-fun m!762051 () Bool)

(assert (=> b!515868 m!762051))

(assert (=> b!515868 m!762049))

(declare-fun m!762053 () Bool)

(assert (=> b!515868 m!762053))

(assert (=> bm!37593 d!184507))

(declare-fun d!184509 () Bool)

(assert (=> d!184509 (= (valid!479 (v!15752 (underlying!1214 hm!65))) (valid!480 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))))))

(declare-fun bs!59510 () Bool)

(assert (= bs!59510 d!184509))

(declare-fun m!762055 () Bool)

(assert (=> bs!59510 m!762055))

(assert (=> d!184469 d!184509))

(declare-fun d!184511 () Bool)

(declare-fun res!218762 () Bool)

(declare-fun e!308672 () Bool)

(assert (=> d!184511 (=> res!218762 e!308672)))

(assert (=> d!184511 (= res!218762 (not ((_ is Cons!4718) (removePairForKey!13 lt!214115 k0!1740))))))

(assert (=> d!184511 (= (noDuplicateKeys!15 (removePairForKey!13 lt!214115 k0!1740)) e!308672)))

(declare-fun b!515873 () Bool)

(declare-fun e!308673 () Bool)

(assert (=> b!515873 (= e!308672 e!308673)))

(declare-fun res!218763 () Bool)

(assert (=> b!515873 (=> (not res!218763) (not e!308673))))

(declare-fun containsKey!14 (List!4728 K!1407) Bool)

(assert (=> b!515873 (= res!218763 (not (containsKey!14 (t!73276 (removePairForKey!13 lt!214115 k0!1740)) (_1!3102 (h!10115 (removePairForKey!13 lt!214115 k0!1740))))))))

(declare-fun b!515874 () Bool)

(assert (=> b!515874 (= e!308673 (noDuplicateKeys!15 (t!73276 (removePairForKey!13 lt!214115 k0!1740))))))

(assert (= (and d!184511 (not res!218762)) b!515873))

(assert (= (and b!515873 res!218763) b!515874))

(declare-fun m!762057 () Bool)

(assert (=> b!515873 m!762057))

(declare-fun m!762059 () Bool)

(assert (=> b!515874 m!762059))

(assert (=> b!515751 d!184511))

(declare-fun d!184513 () Bool)

(assert (=> d!184513 (noDuplicateKeys!15 (removePairForKey!13 lt!214115 k0!1740))))

(declare-fun lt!214232 () Unit!8541)

(declare-fun choose!3671 (List!4728 K!1407) Unit!8541)

(assert (=> d!184513 (= lt!214232 (choose!3671 lt!214115 k0!1740))))

(assert (=> d!184513 (noDuplicateKeys!15 lt!214115)))

(assert (=> d!184513 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!13 lt!214115 k0!1740) lt!214232)))

(declare-fun bs!59511 () Bool)

(assert (= bs!59511 d!184513))

(assert (=> bs!59511 m!761855))

(assert (=> bs!59511 m!761855))

(assert (=> bs!59511 m!761857))

(declare-fun m!762061 () Bool)

(assert (=> bs!59511 m!762061))

(declare-fun m!762063 () Bool)

(assert (=> bs!59511 m!762063))

(assert (=> b!515751 d!184513))

(assert (=> b!515751 d!184475))

(declare-fun d!184515 () Bool)

(declare-fun e!308676 () Bool)

(assert (=> d!184515 e!308676))

(declare-fun c!99937 () Bool)

(declare-fun contains!1081 (MutLongMap!517 (_ BitVec 64)) Bool)

(assert (=> d!184515 (= c!99937 (contains!1081 (v!15752 (underlying!1214 hm!65)) lt!214138))))

(declare-fun lt!214235 () List!4728)

(declare-fun apply!1182 (LongMapFixedSize!1034 (_ BitVec 64)) List!4728)

(assert (=> d!184515 (= lt!214235 (apply!1182 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))) lt!214138))))

(assert (=> d!184515 (valid!479 (v!15752 (underlying!1214 hm!65)))))

(assert (=> d!184515 (= (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138) lt!214235)))

(declare-fun b!515879 () Bool)

(declare-datatypes ((Option!1231 0))(
  ( (None!1230) (Some!1230 (v!15758 List!4728)) )
))
(declare-fun get!1795 (Option!1231) List!4728)

(declare-fun getValueByKey!17 (List!4729 (_ BitVec 64)) Option!1231)

(assert (=> b!515879 (= e!308676 (= lt!214235 (get!1795 (getValueByKey!17 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lt!214138))))))

(declare-fun b!515880 () Bool)

(declare-fun dynLambda!2975 (Int (_ BitVec 64)) List!4728)

(assert (=> b!515880 (= e!308676 (= lt!214235 (dynLambda!2975 (defaultEntry!868 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))) lt!214138)))))

(assert (=> b!515880 ((_ is LongMap!517) (v!15752 (underlying!1214 hm!65)))))

(assert (= (and d!184515 c!99937) b!515879))

(assert (= (and d!184515 (not c!99937)) b!515880))

(declare-fun b_lambda!20021 () Bool)

(assert (=> (not b_lambda!20021) (not b!515880)))

(declare-fun t!73282 () Bool)

(declare-fun tb!47149 () Bool)

(assert (=> (and b!515702 (= (defaultEntry!868 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))) (defaultEntry!868 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))) t!73282) tb!47149))

(assert (=> b!515880 t!73282))

(declare-fun result!52200 () Bool)

(declare-fun b_and!51019 () Bool)

(assert (= b_and!51011 (and (=> t!73282 result!52200) b_and!51019)))

(declare-fun m!762065 () Bool)

(assert (=> d!184515 m!762065))

(declare-fun m!762067 () Bool)

(assert (=> d!184515 m!762067))

(assert (=> d!184515 m!761823))

(assert (=> b!515879 m!761825))

(declare-fun m!762069 () Bool)

(assert (=> b!515879 m!762069))

(assert (=> b!515879 m!762069))

(declare-fun m!762071 () Bool)

(assert (=> b!515879 m!762071))

(declare-fun m!762073 () Bool)

(assert (=> b!515880 m!762073))

(assert (=> b!515751 d!184515))

(declare-fun d!184517 () Bool)

(declare-fun map!1033 (LongMapFixedSize!1034) ListLongMap!75)

(assert (=> d!184517 (= (map!1032 (v!15752 (underlying!1214 hm!65))) (map!1033 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65))))))))

(declare-fun bs!59512 () Bool)

(assert (= bs!59512 d!184517))

(declare-fun m!762075 () Bool)

(assert (=> bs!59512 m!762075))

(assert (=> b!515751 d!184517))

(declare-fun d!184519 () Bool)

(declare-fun lt!214238 () List!4728)

(assert (=> d!184519 (not (containsKey!14 lt!214238 k0!1740))))

(declare-fun e!308681 () List!4728)

(assert (=> d!184519 (= lt!214238 e!308681)))

(declare-fun c!99943 () Bool)

(assert (=> d!184519 (= c!99943 (and ((_ is Cons!4718) lt!214115) (= (_1!3102 (h!10115 lt!214115)) k0!1740)))))

(assert (=> d!184519 (noDuplicateKeys!15 lt!214115)))

(assert (=> d!184519 (= (removePairForKey!13 lt!214115 k0!1740) lt!214238)))

(declare-fun b!515892 () Bool)

(declare-fun e!308682 () List!4728)

(assert (=> b!515892 (= e!308682 Nil!4718)))

(declare-fun b!515890 () Bool)

(assert (=> b!515890 (= e!308681 e!308682)))

(declare-fun c!99942 () Bool)

(assert (=> b!515890 (= c!99942 ((_ is Cons!4718) lt!214115))))

(declare-fun b!515891 () Bool)

(assert (=> b!515891 (= e!308682 (Cons!4718 (h!10115 lt!214115) (removePairForKey!13 (t!73276 lt!214115) k0!1740)))))

(declare-fun b!515889 () Bool)

(assert (=> b!515889 (= e!308681 (t!73276 lt!214115))))

(assert (= (and d!184519 c!99943) b!515889))

(assert (= (and d!184519 (not c!99943)) b!515890))

(assert (= (and b!515890 c!99942) b!515891))

(assert (= (and b!515890 (not c!99942)) b!515892))

(declare-fun m!762077 () Bool)

(assert (=> d!184519 m!762077))

(assert (=> d!184519 m!762063))

(declare-fun m!762079 () Bool)

(assert (=> b!515891 m!762079))

(assert (=> b!515751 d!184519))

(declare-fun d!184521 () Bool)

(declare-fun dynLambda!2976 (Int tuple2!5776) Bool)

(assert (=> d!184521 (dynLambda!2976 lambda!14405 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138)))))

(declare-fun lt!214241 () Unit!8541)

(declare-fun choose!3672 (List!4729 Int tuple2!5776) Unit!8541)

(assert (=> d!184521 (= lt!214241 (choose!3672 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14405 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))))))

(declare-fun e!308685 () Bool)

(assert (=> d!184521 e!308685))

(declare-fun res!218766 () Bool)

(assert (=> d!184521 (=> (not res!218766) (not e!308685))))

(assert (=> d!184521 (= res!218766 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14405))))

(assert (=> d!184521 (= (forallContained!444 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14405 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))) lt!214241)))

(declare-fun b!515895 () Bool)

(declare-fun contains!1082 (List!4729 tuple2!5776) Bool)

(assert (=> b!515895 (= e!308685 (contains!1082 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))))))

(assert (= (and d!184521 res!218766) b!515895))

(declare-fun b_lambda!20023 () Bool)

(assert (=> (not b_lambda!20023) (not d!184521)))

(declare-fun m!762081 () Bool)

(assert (=> d!184521 m!762081))

(declare-fun m!762083 () Bool)

(assert (=> d!184521 m!762083))

(declare-fun m!762085 () Bool)

(assert (=> d!184521 m!762085))

(declare-fun m!762087 () Bool)

(assert (=> b!515895 m!762087))

(assert (=> b!515751 d!184521))

(declare-fun b!515914 () Bool)

(declare-fun e!308700 () Bool)

(declare-fun call!37627 () ListLongMap!75)

(declare-fun call!37626 () ListLongMap!75)

(assert (=> b!515914 (= e!308700 (= call!37627 call!37626))))

(declare-fun b!515915 () Bool)

(declare-fun e!308698 () tuple2!5780)

(declare-datatypes ((tuple2!5782 0))(
  ( (tuple2!5783 (_1!3107 Bool) (_2!3107 LongMapFixedSize!1034)) )
))
(declare-fun lt!214252 () tuple2!5782)

(assert (=> b!515915 (= e!308698 (tuple2!5781 (_1!3107 lt!214252) (LongMap!517 (Cell!2010 (_2!3107 lt!214252)))))))

(declare-fun lt!214250 () tuple2!5780)

(declare-fun update!53 (LongMapFixedSize!1034 (_ BitVec 64) List!4728) tuple2!5782)

(assert (=> b!515915 (= lt!214252 (update!53 (v!15751 (underlying!1213 (_2!3106 lt!214250))) lt!214138 lt!214119))))

(declare-fun bm!37621 () Bool)

(declare-fun lt!214253 () tuple2!5780)

(assert (=> bm!37621 (= call!37627 (map!1032 (_2!3106 lt!214253)))))

(declare-fun bm!37622 () Bool)

(assert (=> bm!37622 (= call!37626 (map!1032 (v!15752 (underlying!1214 hm!65))))))

(declare-fun d!184523 () Bool)

(declare-fun e!308697 () Bool)

(assert (=> d!184523 e!308697))

(declare-fun res!218773 () Bool)

(assert (=> d!184523 (=> (not res!218773) (not e!308697))))

(assert (=> d!184523 (= res!218773 ((_ is LongMap!517) (_2!3106 lt!214253)))))

(assert (=> d!184523 (= lt!214253 e!308698)))

(declare-fun c!99951 () Bool)

(assert (=> d!184523 (= c!99951 (_1!3106 lt!214250))))

(declare-fun e!308696 () tuple2!5780)

(assert (=> d!184523 (= lt!214250 e!308696)))

(declare-fun c!99952 () Bool)

(declare-fun imbalanced!4 (MutLongMap!517) Bool)

(assert (=> d!184523 (= c!99952 (imbalanced!4 (v!15752 (underlying!1214 hm!65))))))

(assert (=> d!184523 (valid!479 (v!15752 (underlying!1214 hm!65)))))

(assert (=> d!184523 (= (update!52 (v!15752 (underlying!1214 hm!65)) lt!214138 lt!214119) lt!214253)))

(declare-fun b!515916 () Bool)

(assert (=> b!515916 (= e!308697 e!308700)))

(declare-fun c!99950 () Bool)

(assert (=> b!515916 (= c!99950 (_1!3106 lt!214253))))

(declare-fun b!515917 () Bool)

(declare-fun res!218774 () Bool)

(assert (=> b!515917 (=> (not res!218774) (not e!308697))))

(assert (=> b!515917 (= res!218774 (valid!479 (_2!3106 lt!214253)))))

(declare-fun e!308699 () Bool)

(declare-fun b!515918 () Bool)

(assert (=> b!515918 (= e!308699 (= call!37627 (+!22 call!37626 (tuple2!5777 lt!214138 lt!214119))))))

(declare-fun b!515919 () Bool)

(assert (=> b!515919 (= e!308696 (tuple2!5781 true (v!15752 (underlying!1214 hm!65))))))

(declare-fun b!515920 () Bool)

(declare-fun lt!214251 () tuple2!5780)

(assert (=> b!515920 (= e!308696 (tuple2!5781 (_1!3106 lt!214251) (_2!3106 lt!214251)))))

(declare-fun repack!8 (MutLongMap!517) tuple2!5780)

(assert (=> b!515920 (= lt!214251 (repack!8 (v!15752 (underlying!1214 hm!65))))))

(declare-fun b!515921 () Bool)

(assert (=> b!515921 (= e!308698 (tuple2!5781 false (_2!3106 lt!214250)))))

(declare-fun b!515922 () Bool)

(assert (=> b!515922 (= e!308700 e!308699)))

(declare-fun res!218775 () Bool)

(declare-fun contains!1083 (ListLongMap!75 (_ BitVec 64)) Bool)

(assert (=> b!515922 (= res!218775 (contains!1083 call!37627 lt!214138))))

(assert (=> b!515922 (=> (not res!218775) (not e!308699))))

(assert (= (and d!184523 c!99952) b!515920))

(assert (= (and d!184523 (not c!99952)) b!515919))

(assert (= (and d!184523 c!99951) b!515915))

(assert (= (and d!184523 (not c!99951)) b!515921))

(assert (= (and d!184523 res!218773) b!515917))

(assert (= (and b!515917 res!218774) b!515916))

(assert (= (and b!515916 c!99950) b!515922))

(assert (= (and b!515916 (not c!99950)) b!515914))

(assert (= (and b!515922 res!218775) b!515918))

(assert (= (or b!515918 b!515914) bm!37622))

(assert (= (or b!515922 b!515918 b!515914) bm!37621))

(declare-fun m!762089 () Bool)

(assert (=> bm!37621 m!762089))

(declare-fun m!762091 () Bool)

(assert (=> d!184523 m!762091))

(assert (=> d!184523 m!761823))

(declare-fun m!762093 () Bool)

(assert (=> b!515920 m!762093))

(declare-fun m!762095 () Bool)

(assert (=> b!515918 m!762095))

(declare-fun m!762097 () Bool)

(assert (=> b!515917 m!762097))

(declare-fun m!762099 () Bool)

(assert (=> b!515922 m!762099))

(assert (=> bm!37622 m!761825))

(declare-fun m!762101 () Bool)

(assert (=> b!515915 m!762101))

(assert (=> b!515751 d!184523))

(declare-fun d!184525 () Bool)

(declare-fun hash!517 (Hashable!489 K!1407) (_ BitVec 64))

(assert (=> d!184525 (= (hash!512 (hashF!2365 hm!65) k0!1740) (hash!517 (hashF!2365 hm!65) k0!1740))))

(declare-fun bs!59513 () Bool)

(assert (= bs!59513 d!184525))

(declare-fun m!762103 () Bool)

(assert (=> bs!59513 m!762103))

(assert (=> b!515751 d!184525))

(declare-fun d!184527 () Bool)

(declare-fun e!308701 () Bool)

(assert (=> d!184527 e!308701))

(declare-fun res!218776 () Bool)

(assert (=> d!184527 (=> (not res!218776) (not e!308701))))

(declare-fun lt!214254 () ListMap!185)

(assert (=> d!184527 (= res!218776 (not (contains!1077 lt!214254 k0!1740)))))

(assert (=> d!184527 (= lt!214254 (ListMap!186 (removePresrvNoDuplicatedKeys!11 (toList!414 call!37593) k0!1740)))))

(assert (=> d!184527 (= (-!33 call!37593 k0!1740) lt!214254)))

(declare-fun b!515923 () Bool)

(assert (=> b!515923 (= e!308701 (= ((_ map and) (content!822 (keys!1848 call!37593)) ((_ map not) (store ((as const (Array K!1407 Bool)) false) k0!1740 true))) (content!822 (keys!1848 lt!214254))))))

(assert (= (and d!184527 res!218776) b!515923))

(declare-fun m!762105 () Bool)

(assert (=> d!184527 m!762105))

(declare-fun m!762107 () Bool)

(assert (=> d!184527 m!762107))

(declare-fun m!762109 () Bool)

(assert (=> b!515923 m!762109))

(declare-fun m!762111 () Bool)

(assert (=> b!515923 m!762111))

(assert (=> b!515923 m!761927))

(assert (=> b!515923 m!762109))

(declare-fun m!762113 () Bool)

(assert (=> b!515923 m!762113))

(assert (=> b!515923 m!762111))

(declare-fun m!762115 () Bool)

(assert (=> b!515923 m!762115))

(assert (=> b!515750 d!184527))

(declare-fun bs!59514 () Bool)

(declare-fun b!515924 () Bool)

(assert (= bs!59514 (and b!515924 b!515782)))

(declare-fun lambda!14410 () Int)

(assert (=> bs!59514 (= lambda!14410 lambda!14406)))

(declare-fun bs!59515 () Bool)

(assert (= bs!59515 (and b!515924 b!515712)))

(assert (=> bs!59515 (= lambda!14410 lambda!14397)))

(declare-fun bs!59516 () Bool)

(assert (= bs!59516 (and b!515924 d!184499)))

(assert (=> bs!59516 (= lambda!14410 lambda!14409)))

(declare-fun bs!59517 () Bool)

(assert (= bs!59517 (and b!515924 b!515720)))

(assert (=> bs!59517 (= lambda!14410 lambda!14398)))

(declare-fun bs!59518 () Bool)

(assert (= bs!59518 (and b!515924 b!515751)))

(assert (=> bs!59518 (= lambda!14410 lambda!14405)))

(declare-fun d!184529 () Bool)

(declare-fun res!218777 () Bool)

(declare-fun e!308702 () Bool)

(assert (=> d!184529 (=> (not res!218777) (not e!308702))))

(assert (=> d!184529 (= res!218777 (valid!479 (v!15752 (underlying!1214 (_2!3105 lt!214142)))))))

(assert (=> d!184529 (= (valid!478 (_2!3105 lt!214142)) e!308702)))

(declare-fun res!218778 () Bool)

(assert (=> b!515924 (=> (not res!218778) (not e!308702))))

(assert (=> b!515924 (= res!218778 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3105 lt!214142))))) lambda!14410))))

(declare-fun b!515925 () Bool)

(assert (=> b!515925 (= e!308702 (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 (_2!3105 lt!214142)))) (hashF!2365 (_2!3105 lt!214142))))))

(assert (= (and d!184529 res!218777) b!515924))

(assert (= (and b!515924 res!218778) b!515925))

(declare-fun m!762117 () Bool)

(assert (=> d!184529 m!762117))

(declare-fun m!762119 () Bool)

(assert (=> b!515924 m!762119))

(declare-fun m!762121 () Bool)

(assert (=> b!515924 m!762121))

(assert (=> b!515925 m!762119))

(assert (=> b!515925 m!762119))

(declare-fun m!762123 () Bool)

(assert (=> b!515925 m!762123))

(assert (=> bm!37592 d!184529))

(declare-fun bs!59519 () Bool)

(declare-fun d!184531 () Bool)

(assert (= bs!59519 (and d!184531 b!515924)))

(declare-fun lambda!14413 () Int)

(assert (=> bs!59519 (not (= lambda!14413 lambda!14410))))

(declare-fun bs!59520 () Bool)

(assert (= bs!59520 (and d!184531 b!515782)))

(assert (=> bs!59520 (not (= lambda!14413 lambda!14406))))

(declare-fun bs!59521 () Bool)

(assert (= bs!59521 (and d!184531 b!515712)))

(assert (=> bs!59521 (not (= lambda!14413 lambda!14397))))

(declare-fun bs!59522 () Bool)

(assert (= bs!59522 (and d!184531 d!184499)))

(assert (=> bs!59522 (not (= lambda!14413 lambda!14409))))

(declare-fun bs!59523 () Bool)

(assert (= bs!59523 (and d!184531 b!515720)))

(assert (=> bs!59523 (not (= lambda!14413 lambda!14398))))

(declare-fun bs!59524 () Bool)

(assert (= bs!59524 (and d!184531 b!515751)))

(assert (=> bs!59524 (not (= lambda!14413 lambda!14405))))

(assert (=> d!184531 true))

(assert (=> d!184531 (= (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))) (hashF!2365 (_2!3103 lt!214047))) (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))) lambda!14413))))

(declare-fun bs!59525 () Bool)

(assert (= bs!59525 d!184531))

(declare-fun m!762125 () Bool)

(assert (=> bs!59525 m!762125))

(assert (=> b!515721 d!184531))

(declare-fun d!184533 () Bool)

(assert (=> d!184533 (= (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))) (map!1033 (v!15751 (underlying!1213 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))

(declare-fun bs!59526 () Bool)

(assert (= bs!59526 d!184533))

(declare-fun m!762127 () Bool)

(assert (=> bs!59526 m!762127))

(assert (=> b!515721 d!184533))

(declare-fun bs!59527 () Bool)

(declare-fun d!184535 () Bool)

(assert (= bs!59527 (and d!184535 b!515924)))

(declare-fun lambda!14416 () Int)

(assert (=> bs!59527 (= lambda!14416 lambda!14410)))

(declare-fun bs!59528 () Bool)

(assert (= bs!59528 (and d!184535 b!515782)))

(assert (=> bs!59528 (= lambda!14416 lambda!14406)))

(declare-fun bs!59529 () Bool)

(assert (= bs!59529 (and d!184535 d!184499)))

(assert (=> bs!59529 (= lambda!14416 lambda!14409)))

(declare-fun bs!59530 () Bool)

(assert (= bs!59530 (and d!184535 b!515720)))

(assert (=> bs!59530 (= lambda!14416 lambda!14398)))

(declare-fun bs!59531 () Bool)

(assert (= bs!59531 (and d!184535 b!515751)))

(assert (=> bs!59531 (= lambda!14416 lambda!14405)))

(declare-fun bs!59532 () Bool)

(assert (= bs!59532 (and d!184535 d!184531)))

(assert (=> bs!59532 (not (= lambda!14416 lambda!14413))))

(declare-fun bs!59533 () Bool)

(assert (= bs!59533 (and d!184535 b!515712)))

(assert (=> bs!59533 (= lambda!14416 lambda!14397)))

(declare-fun lt!214257 () ListMap!185)

(assert (=> d!184535 (invariantList!70 (toList!414 lt!214257))))

(declare-fun e!308705 () ListMap!185)

(assert (=> d!184535 (= lt!214257 e!308705)))

(declare-fun c!99955 () Bool)

(assert (=> d!184535 (= c!99955 ((_ is Cons!4719) (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137))))))

(assert (=> d!184535 (forall!1397 (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137)) lambda!14416)))

(assert (=> d!184535 (= (extractMap!19 (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137))) lt!214257)))

(declare-fun b!515932 () Bool)

(declare-fun addToMapMapFromBucket!3 (List!4728 ListMap!185) ListMap!185)

(assert (=> b!515932 (= e!308705 (addToMapMapFromBucket!3 (_2!3104 (h!10116 (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137)))) (extractMap!19 (t!73279 (ite c!99895 (toList!415 lt!214120) (toList!415 lt!214137))))))))

(declare-fun b!515933 () Bool)

(assert (=> b!515933 (= e!308705 (ListMap!186 Nil!4718))))

(assert (= (and d!184535 c!99955) b!515932))

(assert (= (and d!184535 (not c!99955)) b!515933))

(declare-fun m!762129 () Bool)

(assert (=> d!184535 m!762129))

(declare-fun m!762131 () Bool)

(assert (=> d!184535 m!762131))

(declare-fun m!762133 () Bool)

(assert (=> b!515932 m!762133))

(assert (=> b!515932 m!762133))

(declare-fun m!762135 () Bool)

(assert (=> b!515932 m!762135))

(assert (=> bm!37591 d!184535))

(declare-fun d!184537 () Bool)

(declare-fun res!218783 () Bool)

(declare-fun e!308710 () Bool)

(assert (=> d!184537 (=> res!218783 e!308710)))

(assert (=> d!184537 (= res!218783 ((_ is Nil!4719) (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))

(assert (=> d!184537 (= (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))) lambda!14398) e!308710)))

(declare-fun b!515938 () Bool)

(declare-fun e!308711 () Bool)

(assert (=> b!515938 (= e!308710 e!308711)))

(declare-fun res!218784 () Bool)

(assert (=> b!515938 (=> (not res!218784) (not e!308711))))

(assert (=> b!515938 (= res!218784 (dynLambda!2976 lambda!14398 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))))))))

(declare-fun b!515939 () Bool)

(assert (=> b!515939 (= e!308711 (forall!1397 (t!73279 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))) lambda!14398))))

(assert (= (and d!184537 (not res!218783)) b!515938))

(assert (= (and b!515938 res!218784) b!515939))

(declare-fun b_lambda!20025 () Bool)

(assert (=> (not b_lambda!20025) (not b!515938)))

(declare-fun m!762137 () Bool)

(assert (=> b!515938 m!762137))

(declare-fun m!762139 () Bool)

(assert (=> b!515939 m!762139))

(assert (=> b!515720 d!184537))

(assert (=> b!515720 d!184533))

(declare-fun bs!59534 () Bool)

(declare-fun d!184539 () Bool)

(assert (= bs!59534 (and d!184539 b!515924)))

(declare-fun lambda!14417 () Int)

(assert (=> bs!59534 (not (= lambda!14417 lambda!14410))))

(declare-fun bs!59535 () Bool)

(assert (= bs!59535 (and d!184539 b!515782)))

(assert (=> bs!59535 (not (= lambda!14417 lambda!14406))))

(declare-fun bs!59536 () Bool)

(assert (= bs!59536 (and d!184539 d!184499)))

(assert (=> bs!59536 (not (= lambda!14417 lambda!14409))))

(declare-fun bs!59537 () Bool)

(assert (= bs!59537 (and d!184539 d!184535)))

(assert (=> bs!59537 (not (= lambda!14417 lambda!14416))))

(declare-fun bs!59538 () Bool)

(assert (= bs!59538 (and d!184539 b!515720)))

(assert (=> bs!59538 (not (= lambda!14417 lambda!14398))))

(declare-fun bs!59539 () Bool)

(assert (= bs!59539 (and d!184539 b!515751)))

(assert (=> bs!59539 (not (= lambda!14417 lambda!14405))))

(declare-fun bs!59540 () Bool)

(assert (= bs!59540 (and d!184539 d!184531)))

(assert (=> bs!59540 (= (= (hashF!2365 hm!65) (hashF!2365 (_2!3103 lt!214047))) (= lambda!14417 lambda!14413))))

(declare-fun bs!59541 () Bool)

(assert (= bs!59541 (and d!184539 b!515712)))

(assert (=> bs!59541 (not (= lambda!14417 lambda!14397))))

(assert (=> d!184539 true))

(assert (=> d!184539 (= (allKeysSameHashInMap!26 (map!1032 (v!15752 (underlying!1214 hm!65))) (hashF!2365 hm!65)) (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14417))))

(declare-fun bs!59542 () Bool)

(assert (= bs!59542 d!184539))

(declare-fun m!762141 () Bool)

(assert (=> bs!59542 m!762141))

(assert (=> b!515713 d!184539))

(assert (=> b!515713 d!184517))

(declare-fun d!184541 () Bool)

(assert (=> d!184541 (= (map!1032 (ite c!99895 (v!15752 (underlying!1214 hm!65)) (v!15752 (underlying!1214 (_2!3105 lt!214142))))) (map!1033 (v!15751 (underlying!1213 (ite c!99895 (v!15752 (underlying!1214 hm!65)) (v!15752 (underlying!1214 (_2!3105 lt!214142))))))))))

(declare-fun bs!59543 () Bool)

(assert (= bs!59543 d!184541))

(declare-fun m!762143 () Bool)

(assert (=> bs!59543 m!762143))

(assert (=> bm!37595 d!184541))

(declare-fun d!184543 () Bool)

(declare-fun res!218785 () Bool)

(declare-fun e!308712 () Bool)

(assert (=> d!184543 (=> res!218785 e!308712)))

(assert (=> d!184543 (= res!218785 ((_ is Nil!4719) (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))))))

(assert (=> d!184543 (= (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14397) e!308712)))

(declare-fun b!515940 () Bool)

(declare-fun e!308713 () Bool)

(assert (=> b!515940 (= e!308712 e!308713)))

(declare-fun res!218786 () Bool)

(assert (=> b!515940 (=> (not res!218786) (not e!308713))))

(assert (=> b!515940 (= res!218786 (dynLambda!2976 lambda!14397 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))))))

(declare-fun b!515941 () Bool)

(assert (=> b!515941 (= e!308713 (forall!1397 (t!73279 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))) lambda!14397))))

(assert (= (and d!184543 (not res!218785)) b!515940))

(assert (= (and b!515940 res!218786) b!515941))

(declare-fun b_lambda!20027 () Bool)

(assert (=> (not b_lambda!20027) (not b!515940)))

(declare-fun m!762145 () Bool)

(assert (=> b!515940 m!762145))

(declare-fun m!762147 () Bool)

(assert (=> b!515941 m!762147))

(assert (=> b!515712 d!184543))

(assert (=> b!515712 d!184517))

(declare-fun d!184545 () Bool)

(declare-fun res!218791 () Bool)

(declare-fun e!308718 () Bool)

(assert (=> d!184545 (=> res!218791 e!308718)))

(assert (=> d!184545 (= res!218791 (or ((_ is Nil!4718) (toList!414 lt!214046)) ((_ is Nil!4718) (t!73276 (toList!414 lt!214046)))))))

(assert (=> d!184545 (= (noDuplicatedKeys!14 (toList!414 lt!214046)) e!308718)))

(declare-fun b!515946 () Bool)

(declare-fun e!308719 () Bool)

(assert (=> b!515946 (= e!308718 e!308719)))

(declare-fun res!218792 () Bool)

(assert (=> b!515946 (=> (not res!218792) (not e!308719))))

(assert (=> b!515946 (= res!218792 (not (containsKey!13 (t!73276 (toList!414 lt!214046)) (_1!3102 (h!10115 (toList!414 lt!214046))))))))

(declare-fun b!515947 () Bool)

(assert (=> b!515947 (= e!308719 (noDuplicatedKeys!14 (t!73276 (toList!414 lt!214046))))))

(assert (= (and d!184545 (not res!218791)) b!515946))

(assert (= (and b!515946 res!218792) b!515947))

(declare-fun m!762149 () Bool)

(assert (=> b!515946 m!762149))

(declare-fun m!762151 () Bool)

(assert (=> b!515947 m!762151))

(assert (=> d!184483 d!184545))

(declare-fun bs!59544 () Bool)

(declare-fun d!184547 () Bool)

(assert (= bs!59544 (and d!184547 b!515924)))

(declare-fun lambda!14418 () Int)

(assert (=> bs!59544 (not (= lambda!14418 lambda!14410))))

(declare-fun bs!59545 () Bool)

(assert (= bs!59545 (and d!184547 b!515782)))

(assert (=> bs!59545 (not (= lambda!14418 lambda!14406))))

(declare-fun bs!59546 () Bool)

(assert (= bs!59546 (and d!184547 d!184539)))

(assert (=> bs!59546 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 hm!65)) (= lambda!14418 lambda!14417))))

(declare-fun bs!59547 () Bool)

(assert (= bs!59547 (and d!184547 d!184499)))

(assert (=> bs!59547 (not (= lambda!14418 lambda!14409))))

(declare-fun bs!59548 () Bool)

(assert (= bs!59548 (and d!184547 d!184535)))

(assert (=> bs!59548 (not (= lambda!14418 lambda!14416))))

(declare-fun bs!59549 () Bool)

(assert (= bs!59549 (and d!184547 b!515720)))

(assert (=> bs!59549 (not (= lambda!14418 lambda!14398))))

(declare-fun bs!59550 () Bool)

(assert (= bs!59550 (and d!184547 b!515751)))

(assert (=> bs!59550 (not (= lambda!14418 lambda!14405))))

(declare-fun bs!59551 () Bool)

(assert (= bs!59551 (and d!184547 d!184531)))

(assert (=> bs!59551 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 (_2!3103 lt!214047))) (= lambda!14418 lambda!14413))))

(declare-fun bs!59552 () Bool)

(assert (= bs!59552 (and d!184547 b!515712)))

(assert (=> bs!59552 (not (= lambda!14418 lambda!14397))))

(assert (=> d!184547 true))

(assert (=> d!184547 (= (allKeysSameHashInMap!26 lt!214116 (hashF!2365 (_2!3105 lt!214142))) (forall!1397 (toList!415 lt!214116) lambda!14418))))

(declare-fun bs!59553 () Bool)

(assert (= bs!59553 d!184547))

(declare-fun m!762153 () Bool)

(assert (=> bs!59553 m!762153))

(assert (=> b!515752 d!184547))

(declare-fun d!184549 () Bool)

(assert (=> d!184549 (= (invariantList!70 (toList!414 lt!214053)) (noDuplicatedKeys!14 (toList!414 lt!214053)))))

(declare-fun bs!59554 () Bool)

(assert (= bs!59554 d!184549))

(declare-fun m!762155 () Bool)

(assert (=> bs!59554 m!762155))

(assert (=> d!184475 d!184549))

(declare-fun bs!59555 () Bool)

(declare-fun d!184551 () Bool)

(assert (= bs!59555 (and d!184551 b!515924)))

(declare-fun lambda!14419 () Int)

(assert (=> bs!59555 (= lambda!14419 lambda!14410)))

(declare-fun bs!59556 () Bool)

(assert (= bs!59556 (and d!184551 b!515782)))

(assert (=> bs!59556 (= lambda!14419 lambda!14406)))

(declare-fun bs!59557 () Bool)

(assert (= bs!59557 (and d!184551 d!184539)))

(assert (=> bs!59557 (not (= lambda!14419 lambda!14417))))

(declare-fun bs!59558 () Bool)

(assert (= bs!59558 (and d!184551 d!184535)))

(assert (=> bs!59558 (= lambda!14419 lambda!14416)))

(declare-fun bs!59559 () Bool)

(assert (= bs!59559 (and d!184551 b!515720)))

(assert (=> bs!59559 (= lambda!14419 lambda!14398)))

(declare-fun bs!59560 () Bool)

(assert (= bs!59560 (and d!184551 b!515751)))

(assert (=> bs!59560 (= lambda!14419 lambda!14405)))

(declare-fun bs!59561 () Bool)

(assert (= bs!59561 (and d!184551 d!184531)))

(assert (=> bs!59561 (not (= lambda!14419 lambda!14413))))

(declare-fun bs!59562 () Bool)

(assert (= bs!59562 (and d!184551 b!515712)))

(assert (=> bs!59562 (= lambda!14419 lambda!14397)))

(declare-fun bs!59563 () Bool)

(assert (= bs!59563 (and d!184551 d!184547)))

(assert (=> bs!59563 (not (= lambda!14419 lambda!14418))))

(declare-fun bs!59564 () Bool)

(assert (= bs!59564 (and d!184551 d!184499)))

(assert (=> bs!59564 (= lambda!14419 lambda!14409)))

(declare-fun lt!214258 () ListMap!185)

(assert (=> d!184551 (invariantList!70 (toList!414 lt!214258))))

(declare-fun e!308720 () ListMap!185)

(assert (=> d!184551 (= lt!214258 e!308720)))

(declare-fun c!99956 () Bool)

(assert (=> d!184551 (= c!99956 ((_ is Cons!4719) (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))))))

(assert (=> d!184551 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14419)))

(assert (=> d!184551 (= (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))) lt!214258)))

(declare-fun b!515948 () Bool)

(assert (=> b!515948 (= e!308720 (addToMapMapFromBucket!3 (_2!3104 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))) (extractMap!19 (t!73279 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))))))))

(declare-fun b!515949 () Bool)

(assert (=> b!515949 (= e!308720 (ListMap!186 Nil!4718))))

(assert (= (and d!184551 c!99956) b!515948))

(assert (= (and d!184551 (not c!99956)) b!515949))

(declare-fun m!762157 () Bool)

(assert (=> d!184551 m!762157))

(declare-fun m!762159 () Bool)

(assert (=> d!184551 m!762159))

(declare-fun m!762161 () Bool)

(assert (=> b!515948 m!762161))

(assert (=> b!515948 m!762161))

(declare-fun m!762163 () Bool)

(assert (=> b!515948 m!762163))

(assert (=> d!184475 d!184551))

(assert (=> d!184475 d!184517))

(assert (=> d!184475 d!184469))

(declare-fun d!184553 () Bool)

(declare-fun lt!214259 () ListMap!185)

(assert (=> d!184553 (invariantList!70 (toList!414 lt!214259))))

(assert (=> d!184553 (= lt!214259 (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3105 lt!214142)))))))))

(assert (=> d!184553 (valid!478 (_2!3105 lt!214142))))

(assert (=> d!184553 (= (map!1031 (_2!3105 lt!214142)) lt!214259)))

(declare-fun bs!59565 () Bool)

(assert (= bs!59565 d!184553))

(declare-fun m!762165 () Bool)

(assert (=> bs!59565 m!762165))

(assert (=> bs!59565 m!762119))

(declare-fun m!762167 () Bool)

(assert (=> bs!59565 m!762167))

(assert (=> bs!59565 m!761851))

(assert (=> bm!37594 d!184553))

(declare-fun d!184555 () Bool)

(declare-fun lt!214260 () ListMap!185)

(assert (=> d!184555 (invariantList!70 (toList!414 lt!214260))))

(assert (=> d!184555 (= lt!214260 (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214123)))))))))

(assert (=> d!184555 (valid!478 (_2!3103 lt!214123))))

(assert (=> d!184555 (= (map!1031 (_2!3103 lt!214123)) lt!214260)))

(declare-fun bs!59566 () Bool)

(assert (= bs!59566 d!184555))

(declare-fun m!762169 () Bool)

(assert (=> bs!59566 m!762169))

(assert (=> bs!59566 m!761953))

(declare-fun m!762171 () Bool)

(assert (=> bs!59566 m!762171))

(assert (=> bs!59566 m!761909))

(assert (=> bm!37589 d!184555))

(declare-fun d!184557 () Bool)

(assert (=> d!184557 (= (invariantList!70 (toList!414 lt!214147)) (noDuplicatedKeys!14 (toList!414 lt!214147)))))

(declare-fun bs!59567 () Bool)

(assert (= bs!59567 d!184557))

(declare-fun m!762173 () Bool)

(assert (=> bs!59567 m!762173))

(assert (=> d!184485 d!184557))

(declare-fun bs!59568 () Bool)

(declare-fun d!184559 () Bool)

(assert (= bs!59568 (and d!184559 b!515924)))

(declare-fun lambda!14420 () Int)

(assert (=> bs!59568 (= lambda!14420 lambda!14410)))

(declare-fun bs!59569 () Bool)

(assert (= bs!59569 (and d!184559 b!515782)))

(assert (=> bs!59569 (= lambda!14420 lambda!14406)))

(declare-fun bs!59570 () Bool)

(assert (= bs!59570 (and d!184559 d!184551)))

(assert (=> bs!59570 (= lambda!14420 lambda!14419)))

(declare-fun bs!59571 () Bool)

(assert (= bs!59571 (and d!184559 d!184539)))

(assert (=> bs!59571 (not (= lambda!14420 lambda!14417))))

(declare-fun bs!59572 () Bool)

(assert (= bs!59572 (and d!184559 d!184535)))

(assert (=> bs!59572 (= lambda!14420 lambda!14416)))

(declare-fun bs!59573 () Bool)

(assert (= bs!59573 (and d!184559 b!515720)))

(assert (=> bs!59573 (= lambda!14420 lambda!14398)))

(declare-fun bs!59574 () Bool)

(assert (= bs!59574 (and d!184559 b!515751)))

(assert (=> bs!59574 (= lambda!14420 lambda!14405)))

(declare-fun bs!59575 () Bool)

(assert (= bs!59575 (and d!184559 d!184531)))

(assert (=> bs!59575 (not (= lambda!14420 lambda!14413))))

(declare-fun bs!59576 () Bool)

(assert (= bs!59576 (and d!184559 b!515712)))

(assert (=> bs!59576 (= lambda!14420 lambda!14397)))

(declare-fun bs!59577 () Bool)

(assert (= bs!59577 (and d!184559 d!184547)))

(assert (=> bs!59577 (not (= lambda!14420 lambda!14418))))

(declare-fun bs!59578 () Bool)

(assert (= bs!59578 (and d!184559 d!184499)))

(assert (=> bs!59578 (= lambda!14420 lambda!14409)))

(declare-fun lt!214261 () ListMap!185)

(assert (=> d!184559 (invariantList!70 (toList!414 lt!214261))))

(declare-fun e!308721 () ListMap!185)

(assert (=> d!184559 (= lt!214261 e!308721)))

(declare-fun c!99957 () Bool)

(assert (=> d!184559 (= c!99957 ((_ is Cons!4719) (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))

(assert (=> d!184559 (forall!1397 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))) lambda!14420)))

(assert (=> d!184559 (= (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))) lt!214261)))

(declare-fun b!515950 () Bool)

(assert (=> b!515950 (= e!308721 (addToMapMapFromBucket!3 (_2!3104 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))))) (extractMap!19 (t!73279 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))))

(declare-fun b!515951 () Bool)

(assert (=> b!515951 (= e!308721 (ListMap!186 Nil!4718))))

(assert (= (and d!184559 c!99957) b!515950))

(assert (= (and d!184559 (not c!99957)) b!515951))

(declare-fun m!762175 () Bool)

(assert (=> d!184559 m!762175))

(declare-fun m!762177 () Bool)

(assert (=> d!184559 m!762177))

(declare-fun m!762179 () Bool)

(assert (=> b!515950 m!762179))

(assert (=> b!515950 m!762179))

(declare-fun m!762181 () Bool)

(assert (=> b!515950 m!762181))

(assert (=> d!184485 d!184559))

(assert (=> d!184485 d!184533))

(assert (=> d!184485 d!184477))

(assert (=> bm!37590 d!184475))

(declare-fun d!184561 () Bool)

(assert (=> d!184561 (allKeysSameHash!14 (removePairForKey!13 lt!214115 k0!1740) lt!214138 (hashF!2365 (_2!3105 lt!214142)))))

(declare-fun lt!214264 () Unit!8541)

(declare-fun choose!3673 (List!4728 K!1407 (_ BitVec 64) Hashable!489) Unit!8541)

(assert (=> d!184561 (= lt!214264 (choose!3673 lt!214115 k0!1740 lt!214138 (hashF!2365 (_2!3105 lt!214142))))))

(assert (=> d!184561 (noDuplicateKeys!15 lt!214115)))

(assert (=> d!184561 (= (lemmaRemovePairForKeyPreservesHash!13 lt!214115 k0!1740 lt!214138 (hashF!2365 (_2!3105 lt!214142))) lt!214264)))

(declare-fun bs!59579 () Bool)

(assert (= bs!59579 d!184561))

(assert (=> bs!59579 m!761855))

(assert (=> bs!59579 m!761855))

(assert (=> bs!59579 m!761891))

(declare-fun m!762183 () Bool)

(assert (=> bs!59579 m!762183))

(assert (=> bs!59579 m!762063))

(assert (=> b!515744 d!184561))

(declare-fun d!184563 () Bool)

(declare-fun res!218793 () Bool)

(declare-fun e!308722 () Bool)

(assert (=> d!184563 (=> res!218793 e!308722)))

(assert (=> d!184563 (= res!218793 ((_ is Nil!4719) (toList!415 call!37599)))))

(assert (=> d!184563 (= (forall!1397 (toList!415 call!37599) lambda!14405) e!308722)))

(declare-fun b!515952 () Bool)

(declare-fun e!308723 () Bool)

(assert (=> b!515952 (= e!308722 e!308723)))

(declare-fun res!218794 () Bool)

(assert (=> b!515952 (=> (not res!218794) (not e!308723))))

(assert (=> b!515952 (= res!218794 (dynLambda!2976 lambda!14405 (h!10116 (toList!415 call!37599))))))

(declare-fun b!515953 () Bool)

(assert (=> b!515953 (= e!308723 (forall!1397 (t!73279 (toList!415 call!37599)) lambda!14405))))

(assert (= (and d!184563 (not res!218793)) b!515952))

(assert (= (and b!515952 res!218794) b!515953))

(declare-fun b_lambda!20029 () Bool)

(assert (=> (not b_lambda!20029) (not b!515952)))

(declare-fun m!762185 () Bool)

(assert (=> b!515952 m!762185))

(declare-fun m!762187 () Bool)

(assert (=> b!515953 m!762187))

(assert (=> b!515744 d!184563))

(assert (=> b!515744 d!184519))

(declare-fun d!184565 () Bool)

(assert (=> d!184565 true))

(assert (=> d!184565 true))

(declare-fun b_next!13565 () Bool)

(declare-fun lambda!14423 () Int)

(assert (=> start!46760 (= b_next!13561 (or (and d!184565 (= lambda!14423 p!6060)) b_next!13565))))

(assert (=> d!184565 (= (allKeysSameHash!14 (removePairForKey!13 lt!214115 k0!1740) lt!214138 (hashF!2365 (_2!3105 lt!214142))) (forall!1396 (removePairForKey!13 lt!214115 k0!1740) lambda!14423))))

(declare-fun bs!59580 () Bool)

(assert (= bs!59580 d!184565))

(assert (=> bs!59580 m!761855))

(declare-fun m!762189 () Bool)

(assert (=> bs!59580 m!762189))

(assert (=> b!515744 d!184565))

(declare-fun d!184567 () Bool)

(assert (=> d!184567 (= (eq!30 (extractMap!19 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))) (-!33 call!37598 k0!1740)) (= (content!821 (toList!414 (extractMap!19 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))))) (content!821 (toList!414 (-!33 call!37598 k0!1740)))))))

(declare-fun bs!59581 () Bool)

(assert (= bs!59581 d!184567))

(declare-fun m!762191 () Bool)

(assert (=> bs!59581 m!762191))

(declare-fun m!762193 () Bool)

(assert (=> bs!59581 m!762193))

(assert (=> b!515744 d!184567))

(declare-fun bs!59582 () Bool)

(declare-fun d!184569 () Bool)

(assert (= bs!59582 (and d!184569 b!515924)))

(declare-fun lambda!14428 () Int)

(assert (=> bs!59582 (= lambda!14428 lambda!14410)))

(declare-fun bs!59583 () Bool)

(assert (= bs!59583 (and d!184569 b!515782)))

(assert (=> bs!59583 (= lambda!14428 lambda!14406)))

(declare-fun bs!59584 () Bool)

(assert (= bs!59584 (and d!184569 d!184551)))

(assert (=> bs!59584 (= lambda!14428 lambda!14419)))

(declare-fun bs!59585 () Bool)

(assert (= bs!59585 (and d!184569 d!184559)))

(assert (=> bs!59585 (= lambda!14428 lambda!14420)))

(declare-fun bs!59586 () Bool)

(assert (= bs!59586 (and d!184569 d!184539)))

(assert (=> bs!59586 (not (= lambda!14428 lambda!14417))))

(declare-fun bs!59587 () Bool)

(assert (= bs!59587 (and d!184569 d!184535)))

(assert (=> bs!59587 (= lambda!14428 lambda!14416)))

(declare-fun bs!59588 () Bool)

(assert (= bs!59588 (and d!184569 b!515720)))

(assert (=> bs!59588 (= lambda!14428 lambda!14398)))

(declare-fun bs!59589 () Bool)

(assert (= bs!59589 (and d!184569 b!515751)))

(assert (=> bs!59589 (= lambda!14428 lambda!14405)))

(declare-fun bs!59590 () Bool)

(assert (= bs!59590 (and d!184569 d!184531)))

(assert (=> bs!59590 (not (= lambda!14428 lambda!14413))))

(declare-fun bs!59591 () Bool)

(assert (= bs!59591 (and d!184569 b!515712)))

(assert (=> bs!59591 (= lambda!14428 lambda!14397)))

(declare-fun bs!59592 () Bool)

(assert (= bs!59592 (and d!184569 d!184547)))

(assert (=> bs!59592 (not (= lambda!14428 lambda!14418))))

(declare-fun bs!59593 () Bool)

(assert (= bs!59593 (and d!184569 d!184499)))

(assert (=> bs!59593 (= lambda!14428 lambda!14409)))

(declare-fun e!308726 () Bool)

(assert (=> d!184569 e!308726))

(declare-fun res!218797 () Bool)

(assert (=> d!184569 (=> (not res!218797) (not e!308726))))

(declare-fun lt!214270 () ListLongMap!75)

(assert (=> d!184569 (= res!218797 (forall!1397 (toList!415 lt!214270) lambda!14428))))

(assert (=> d!184569 (= lt!214270 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))))

(declare-fun lt!214269 () Unit!8541)

(declare-fun choose!3674 (ListLongMap!75 (_ BitVec 64) List!4728 Hashable!489) Unit!8541)

(assert (=> d!184569 (= lt!214269 (choose!3674 lt!214137 lt!214138 lt!214119 (hashF!2365 (_2!3105 lt!214142))))))

(assert (=> d!184569 (forall!1397 (toList!415 lt!214137) lambda!14428)))

(assert (=> d!184569 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!13 lt!214137 lt!214138 lt!214119 (hashF!2365 (_2!3105 lt!214142))) lt!214269)))

(declare-fun b!515960 () Bool)

(assert (=> b!515960 (= e!308726 (allKeysSameHashInMap!26 lt!214270 (hashF!2365 (_2!3105 lt!214142))))))

(assert (= (and d!184569 res!218797) b!515960))

(declare-fun m!762195 () Bool)

(assert (=> d!184569 m!762195))

(assert (=> d!184569 m!761893))

(declare-fun m!762197 () Bool)

(assert (=> d!184569 m!762197))

(declare-fun m!762199 () Bool)

(assert (=> d!184569 m!762199))

(declare-fun m!762201 () Bool)

(assert (=> b!515960 m!762201))

(assert (=> b!515744 d!184569))

(declare-fun d!184571 () Bool)

(declare-fun e!308727 () Bool)

(assert (=> d!184571 e!308727))

(declare-fun res!218798 () Bool)

(assert (=> d!184571 (=> (not res!218798) (not e!308727))))

(declare-fun lt!214271 () ListMap!185)

(assert (=> d!184571 (= res!218798 (not (contains!1077 lt!214271 k0!1740)))))

(assert (=> d!184571 (= lt!214271 (ListMap!186 (removePresrvNoDuplicatedKeys!11 (toList!414 call!37598) k0!1740)))))

(assert (=> d!184571 (= (-!33 call!37598 k0!1740) lt!214271)))

(declare-fun b!515961 () Bool)

(assert (=> b!515961 (= e!308727 (= ((_ map and) (content!822 (keys!1848 call!37598)) ((_ map not) (store ((as const (Array K!1407 Bool)) false) k0!1740 true))) (content!822 (keys!1848 lt!214271))))))

(assert (= (and d!184571 res!218798) b!515961))

(declare-fun m!762203 () Bool)

(assert (=> d!184571 m!762203))

(declare-fun m!762205 () Bool)

(assert (=> d!184571 m!762205))

(declare-fun m!762207 () Bool)

(assert (=> b!515961 m!762207))

(declare-fun m!762209 () Bool)

(assert (=> b!515961 m!762209))

(assert (=> b!515961 m!761927))

(assert (=> b!515961 m!762207))

(declare-fun m!762211 () Bool)

(assert (=> b!515961 m!762211))

(assert (=> b!515961 m!762209))

(declare-fun m!762213 () Bool)

(assert (=> b!515961 m!762213))

(assert (=> b!515744 d!184571))

(declare-fun d!184573 () Bool)

(assert (=> d!184573 (= (eq!30 call!37594 call!37595) (= (content!821 (toList!414 call!37594)) (content!821 (toList!414 call!37595))))))

(declare-fun bs!59594 () Bool)

(assert (= bs!59594 d!184573))

(declare-fun m!762215 () Bool)

(assert (=> bs!59594 m!762215))

(declare-fun m!762217 () Bool)

(assert (=> bs!59594 m!762217))

(assert (=> b!515744 d!184573))

(declare-fun bs!59595 () Bool)

(declare-fun d!184575 () Bool)

(assert (= bs!59595 (and d!184575 b!515924)))

(declare-fun lambda!14431 () Int)

(assert (=> bs!59595 (not (= lambda!14431 lambda!14410))))

(declare-fun bs!59596 () Bool)

(assert (= bs!59596 (and d!184575 b!515782)))

(assert (=> bs!59596 (not (= lambda!14431 lambda!14406))))

(declare-fun bs!59597 () Bool)

(assert (= bs!59597 (and d!184575 d!184551)))

(assert (=> bs!59597 (not (= lambda!14431 lambda!14419))))

(declare-fun bs!59598 () Bool)

(assert (= bs!59598 (and d!184575 d!184559)))

(assert (=> bs!59598 (not (= lambda!14431 lambda!14420))))

(declare-fun bs!59599 () Bool)

(assert (= bs!59599 (and d!184575 d!184535)))

(assert (=> bs!59599 (not (= lambda!14431 lambda!14416))))

(declare-fun bs!59600 () Bool)

(assert (= bs!59600 (and d!184575 b!515720)))

(assert (=> bs!59600 (not (= lambda!14431 lambda!14398))))

(declare-fun bs!59601 () Bool)

(assert (= bs!59601 (and d!184575 b!515751)))

(assert (=> bs!59601 (not (= lambda!14431 lambda!14405))))

(declare-fun bs!59602 () Bool)

(assert (= bs!59602 (and d!184575 d!184531)))

(assert (=> bs!59602 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 (_2!3103 lt!214047))) (= lambda!14431 lambda!14413))))

(declare-fun bs!59603 () Bool)

(assert (= bs!59603 (and d!184575 b!515712)))

(assert (=> bs!59603 (not (= lambda!14431 lambda!14397))))

(declare-fun bs!59604 () Bool)

(assert (= bs!59604 (and d!184575 d!184539)))

(assert (=> bs!59604 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 hm!65)) (= lambda!14431 lambda!14417))))

(declare-fun bs!59605 () Bool)

(assert (= bs!59605 (and d!184575 d!184569)))

(assert (=> bs!59605 (not (= lambda!14431 lambda!14428))))

(declare-fun bs!59606 () Bool)

(assert (= bs!59606 (and d!184575 d!184547)))

(assert (=> bs!59606 (= lambda!14431 lambda!14418)))

(declare-fun bs!59607 () Bool)

(assert (= bs!59607 (and d!184575 d!184499)))

(assert (=> bs!59607 (not (= lambda!14431 lambda!14409))))

(assert (=> d!184575 true))

(assert (=> d!184575 (allKeysSameHash!14 lt!214115 lt!214138 (hashF!2365 (_2!3105 lt!214142)))))

(declare-fun lt!214274 () Unit!8541)

(declare-fun choose!3675 (List!4729 (_ BitVec 64) List!4728 Hashable!489) Unit!8541)

(assert (=> d!184575 (= lt!214274 (choose!3675 (toList!415 lt!214137) lt!214138 lt!214115 (hashF!2365 (_2!3105 lt!214142))))))

(assert (=> d!184575 (forall!1397 (toList!415 lt!214137) lambda!14431)))

(assert (=> d!184575 (= (lemmaInLongMapAllKeySameHashThenForTuple!13 (toList!415 lt!214137) lt!214138 lt!214115 (hashF!2365 (_2!3105 lt!214142))) lt!214274)))

(declare-fun bs!59608 () Bool)

(assert (= bs!59608 d!184575))

(assert (=> bs!59608 m!761875))

(declare-fun m!762219 () Bool)

(assert (=> bs!59608 m!762219))

(declare-fun m!762221 () Bool)

(assert (=> bs!59608 m!762221))

(assert (=> b!515744 d!184575))

(declare-fun bs!59609 () Bool)

(declare-fun d!184577 () Bool)

(assert (= bs!59609 (and d!184577 b!515924)))

(declare-fun lambda!14432 () Int)

(assert (=> bs!59609 (not (= lambda!14432 lambda!14410))))

(declare-fun bs!59610 () Bool)

(assert (= bs!59610 (and d!184577 b!515782)))

(assert (=> bs!59610 (not (= lambda!14432 lambda!14406))))

(declare-fun bs!59611 () Bool)

(assert (= bs!59611 (and d!184577 d!184551)))

(assert (=> bs!59611 (not (= lambda!14432 lambda!14419))))

(declare-fun bs!59612 () Bool)

(assert (= bs!59612 (and d!184577 d!184559)))

(assert (=> bs!59612 (not (= lambda!14432 lambda!14420))))

(declare-fun bs!59613 () Bool)

(assert (= bs!59613 (and d!184577 d!184535)))

(assert (=> bs!59613 (not (= lambda!14432 lambda!14416))))

(declare-fun bs!59614 () Bool)

(assert (= bs!59614 (and d!184577 b!515720)))

(assert (=> bs!59614 (not (= lambda!14432 lambda!14398))))

(declare-fun bs!59615 () Bool)

(assert (= bs!59615 (and d!184577 b!515751)))

(assert (=> bs!59615 (not (= lambda!14432 lambda!14405))))

(declare-fun bs!59616 () Bool)

(assert (= bs!59616 (and d!184577 d!184531)))

(assert (=> bs!59616 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 (_2!3103 lt!214047))) (= lambda!14432 lambda!14413))))

(declare-fun bs!59617 () Bool)

(assert (= bs!59617 (and d!184577 b!515712)))

(assert (=> bs!59617 (not (= lambda!14432 lambda!14397))))

(declare-fun bs!59618 () Bool)

(assert (= bs!59618 (and d!184577 d!184575)))

(assert (=> bs!59618 (= lambda!14432 lambda!14431)))

(declare-fun bs!59619 () Bool)

(assert (= bs!59619 (and d!184577 d!184539)))

(assert (=> bs!59619 (= (= (hashF!2365 (_2!3105 lt!214142)) (hashF!2365 hm!65)) (= lambda!14432 lambda!14417))))

(declare-fun bs!59620 () Bool)

(assert (= bs!59620 (and d!184577 d!184569)))

(assert (=> bs!59620 (not (= lambda!14432 lambda!14428))))

(declare-fun bs!59621 () Bool)

(assert (= bs!59621 (and d!184577 d!184547)))

(assert (=> bs!59621 (= lambda!14432 lambda!14418)))

(declare-fun bs!59622 () Bool)

(assert (= bs!59622 (and d!184577 d!184499)))

(assert (=> bs!59622 (not (= lambda!14432 lambda!14409))))

(assert (=> d!184577 true))

(assert (=> d!184577 (= (allKeysSameHashInMap!26 call!37599 (hashF!2365 (_2!3105 lt!214142))) (forall!1397 (toList!415 call!37599) lambda!14432))))

(declare-fun bs!59623 () Bool)

(assert (= bs!59623 d!184577))

(declare-fun m!762223 () Bool)

(assert (=> bs!59623 m!762223))

(assert (=> b!515744 d!184577))

(declare-fun d!184579 () Bool)

(declare-fun res!218799 () Bool)

(declare-fun e!308728 () Bool)

(assert (=> d!184579 (=> res!218799 e!308728)))

(assert (=> d!184579 (= res!218799 ((_ is Nil!4719) (toList!415 lt!214116)))))

(assert (=> d!184579 (= (forall!1397 (toList!415 lt!214116) lambda!14405) e!308728)))

(declare-fun b!515962 () Bool)

(declare-fun e!308729 () Bool)

(assert (=> b!515962 (= e!308728 e!308729)))

(declare-fun res!218800 () Bool)

(assert (=> b!515962 (=> (not res!218800) (not e!308729))))

(assert (=> b!515962 (= res!218800 (dynLambda!2976 lambda!14405 (h!10116 (toList!415 lt!214116))))))

(declare-fun b!515963 () Bool)

(assert (=> b!515963 (= e!308729 (forall!1397 (t!73279 (toList!415 lt!214116)) lambda!14405))))

(assert (= (and d!184579 (not res!218799)) b!515962))

(assert (= (and b!515962 res!218800) b!515963))

(declare-fun b_lambda!20031 () Bool)

(assert (=> (not b_lambda!20031) (not b!515962)))

(declare-fun m!762225 () Bool)

(assert (=> b!515962 m!762225))

(declare-fun m!762227 () Bool)

(assert (=> b!515963 m!762227))

(assert (=> b!515744 d!184579))

(declare-fun d!184581 () Bool)

(declare-fun e!308732 () Bool)

(assert (=> d!184581 e!308732))

(declare-fun res!218805 () Bool)

(assert (=> d!184581 (=> (not res!218805) (not e!308732))))

(declare-fun lt!214285 () ListLongMap!75)

(assert (=> d!184581 (= res!218805 (contains!1083 lt!214285 (_1!3104 (tuple2!5777 lt!214138 lt!214119))))))

(declare-fun lt!214283 () List!4729)

(assert (=> d!184581 (= lt!214285 (ListLongMap!76 lt!214283))))

(declare-fun lt!214284 () Unit!8541)

(declare-fun lt!214286 () Unit!8541)

(assert (=> d!184581 (= lt!214284 lt!214286)))

(assert (=> d!184581 (= (getValueByKey!17 lt!214283 (_1!3104 (tuple2!5777 lt!214138 lt!214119))) (Some!1230 (_2!3104 (tuple2!5777 lt!214138 lt!214119))))))

(declare-fun lemmaContainsTupThenGetReturnValue!6 (List!4729 (_ BitVec 64) List!4728) Unit!8541)

(assert (=> d!184581 (= lt!214286 (lemmaContainsTupThenGetReturnValue!6 lt!214283 (_1!3104 (tuple2!5777 lt!214138 lt!214119)) (_2!3104 (tuple2!5777 lt!214138 lt!214119))))))

(declare-fun insertStrictlySorted!2 (List!4729 (_ BitVec 64) List!4728) List!4729)

(assert (=> d!184581 (= lt!214283 (insertStrictlySorted!2 (toList!415 lt!214137) (_1!3104 (tuple2!5777 lt!214138 lt!214119)) (_2!3104 (tuple2!5777 lt!214138 lt!214119))))))

(assert (=> d!184581 (= (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)) lt!214285)))

(declare-fun b!515968 () Bool)

(declare-fun res!218806 () Bool)

(assert (=> b!515968 (=> (not res!218806) (not e!308732))))

(assert (=> b!515968 (= res!218806 (= (getValueByKey!17 (toList!415 lt!214285) (_1!3104 (tuple2!5777 lt!214138 lt!214119))) (Some!1230 (_2!3104 (tuple2!5777 lt!214138 lt!214119)))))))

(declare-fun b!515969 () Bool)

(assert (=> b!515969 (= e!308732 (contains!1082 (toList!415 lt!214285) (tuple2!5777 lt!214138 lt!214119)))))

(assert (= (and d!184581 res!218805) b!515968))

(assert (= (and b!515968 res!218806) b!515969))

(declare-fun m!762229 () Bool)

(assert (=> d!184581 m!762229))

(declare-fun m!762231 () Bool)

(assert (=> d!184581 m!762231))

(declare-fun m!762233 () Bool)

(assert (=> d!184581 m!762233))

(declare-fun m!762235 () Bool)

(assert (=> d!184581 m!762235))

(declare-fun m!762237 () Bool)

(assert (=> b!515968 m!762237))

(declare-fun m!762239 () Bool)

(assert (=> b!515969 m!762239))

(assert (=> b!515744 d!184581))

(declare-fun b!515970 () Bool)

(declare-fun e!308733 () Unit!8541)

(declare-fun Unit!8562 () Unit!8541)

(assert (=> b!515970 (= e!308733 Unit!8562)))

(declare-fun b!515971 () Bool)

(declare-fun e!308736 () Bool)

(declare-fun e!308738 () Bool)

(assert (=> b!515971 (= e!308736 e!308738)))

(declare-fun res!218808 () Bool)

(assert (=> b!515971 (=> (not res!218808) (not e!308738))))

(assert (=> b!515971 (= res!218808 (isDefined!1044 (getValueByKey!16 (toList!414 lt!214140) k0!1740)))))

(declare-fun d!184583 () Bool)

(assert (=> d!184583 e!308736))

(declare-fun res!218809 () Bool)

(assert (=> d!184583 (=> res!218809 e!308736)))

(declare-fun e!308737 () Bool)

(assert (=> d!184583 (= res!218809 e!308737)))

(declare-fun res!218807 () Bool)

(assert (=> d!184583 (=> (not res!218807) (not e!308737))))

(declare-fun lt!214289 () Bool)

(assert (=> d!184583 (= res!218807 (not lt!214289))))

(declare-fun lt!214293 () Bool)

(assert (=> d!184583 (= lt!214289 lt!214293)))

(declare-fun lt!214290 () Unit!8541)

(declare-fun e!308735 () Unit!8541)

(assert (=> d!184583 (= lt!214290 e!308735)))

(declare-fun c!99960 () Bool)

(assert (=> d!184583 (= c!99960 lt!214293)))

(assert (=> d!184583 (= lt!214293 (containsKey!13 (toList!414 lt!214140) k0!1740))))

(assert (=> d!184583 (= (contains!1077 lt!214140 k0!1740) lt!214289)))

(declare-fun b!515972 () Bool)

(assert (=> b!515972 false))

(declare-fun lt!214294 () Unit!8541)

(declare-fun lt!214287 () Unit!8541)

(assert (=> b!515972 (= lt!214294 lt!214287)))

(assert (=> b!515972 (containsKey!13 (toList!414 lt!214140) k0!1740)))

(assert (=> b!515972 (= lt!214287 (lemmaInGetKeysListThenContainsKey!4 (toList!414 lt!214140) k0!1740))))

(declare-fun Unit!8563 () Unit!8541)

(assert (=> b!515972 (= e!308733 Unit!8563)))

(declare-fun b!515973 () Bool)

(declare-fun lt!214288 () Unit!8541)

(assert (=> b!515973 (= e!308735 lt!214288)))

(declare-fun lt!214291 () Unit!8541)

(assert (=> b!515973 (= lt!214291 (lemmaContainsKeyImpliesGetValueByKeyDefined!8 (toList!414 lt!214140) k0!1740))))

(assert (=> b!515973 (isDefined!1044 (getValueByKey!16 (toList!414 lt!214140) k0!1740))))

(declare-fun lt!214292 () Unit!8541)

(assert (=> b!515973 (= lt!214292 lt!214291)))

(assert (=> b!515973 (= lt!214288 (lemmaInListThenGetKeysListContains!4 (toList!414 lt!214140) k0!1740))))

(declare-fun call!37628 () Bool)

(assert (=> b!515973 call!37628))

(declare-fun b!515974 () Bool)

(assert (=> b!515974 (= e!308735 e!308733)))

(declare-fun c!99958 () Bool)

(assert (=> b!515974 (= c!99958 call!37628)))

(declare-fun bm!37623 () Bool)

(declare-fun e!308734 () List!4730)

(assert (=> bm!37623 (= call!37628 (contains!1079 e!308734 k0!1740))))

(declare-fun c!99959 () Bool)

(assert (=> bm!37623 (= c!99959 c!99960)))

(declare-fun b!515975 () Bool)

(assert (=> b!515975 (= e!308734 (getKeysList!5 (toList!414 lt!214140)))))

(declare-fun b!515976 () Bool)

(assert (=> b!515976 (= e!308737 (not (contains!1079 (keys!1848 lt!214140) k0!1740)))))

(declare-fun b!515977 () Bool)

(assert (=> b!515977 (= e!308734 (keys!1848 lt!214140))))

(declare-fun b!515978 () Bool)

(assert (=> b!515978 (= e!308738 (contains!1079 (keys!1848 lt!214140) k0!1740))))

(assert (= (and d!184583 c!99960) b!515973))

(assert (= (and d!184583 (not c!99960)) b!515974))

(assert (= (and b!515974 c!99958) b!515972))

(assert (= (and b!515974 (not c!99958)) b!515970))

(assert (= (or b!515973 b!515974) bm!37623))

(assert (= (and bm!37623 c!99959) b!515975))

(assert (= (and bm!37623 (not c!99959)) b!515977))

(assert (= (and d!184583 res!218807) b!515976))

(assert (= (and d!184583 (not res!218809)) b!515971))

(assert (= (and b!515971 res!218808) b!515978))

(declare-fun m!762241 () Bool)

(assert (=> b!515977 m!762241))

(declare-fun m!762243 () Bool)

(assert (=> b!515972 m!762243))

(declare-fun m!762245 () Bool)

(assert (=> b!515972 m!762245))

(declare-fun m!762247 () Bool)

(assert (=> b!515973 m!762247))

(declare-fun m!762249 () Bool)

(assert (=> b!515973 m!762249))

(assert (=> b!515973 m!762249))

(declare-fun m!762251 () Bool)

(assert (=> b!515973 m!762251))

(declare-fun m!762253 () Bool)

(assert (=> b!515973 m!762253))

(assert (=> d!184583 m!762243))

(assert (=> b!515971 m!762249))

(assert (=> b!515971 m!762249))

(assert (=> b!515971 m!762251))

(declare-fun m!762255 () Bool)

(assert (=> b!515975 m!762255))

(assert (=> b!515976 m!762241))

(assert (=> b!515976 m!762241))

(declare-fun m!762257 () Bool)

(assert (=> b!515976 m!762257))

(declare-fun m!762259 () Bool)

(assert (=> bm!37623 m!762259))

(assert (=> b!515978 m!762241))

(assert (=> b!515978 m!762241))

(assert (=> b!515978 m!762257))

(assert (=> b!515744 d!184583))

(declare-fun bs!59624 () Bool)

(declare-fun d!184585 () Bool)

(assert (= bs!59624 (and d!184585 b!515924)))

(declare-fun lambda!14435 () Int)

(assert (=> bs!59624 (= lambda!14435 lambda!14410)))

(declare-fun bs!59625 () Bool)

(assert (= bs!59625 (and d!184585 b!515782)))

(assert (=> bs!59625 (= lambda!14435 lambda!14406)))

(declare-fun bs!59626 () Bool)

(assert (= bs!59626 (and d!184585 d!184551)))

(assert (=> bs!59626 (= lambda!14435 lambda!14419)))

(declare-fun bs!59627 () Bool)

(assert (= bs!59627 (and d!184585 d!184559)))

(assert (=> bs!59627 (= lambda!14435 lambda!14420)))

(declare-fun bs!59628 () Bool)

(assert (= bs!59628 (and d!184585 d!184535)))

(assert (=> bs!59628 (= lambda!14435 lambda!14416)))

(declare-fun bs!59629 () Bool)

(assert (= bs!59629 (and d!184585 d!184577)))

(assert (=> bs!59629 (not (= lambda!14435 lambda!14432))))

(declare-fun bs!59630 () Bool)

(assert (= bs!59630 (and d!184585 b!515720)))

(assert (=> bs!59630 (= lambda!14435 lambda!14398)))

(declare-fun bs!59631 () Bool)

(assert (= bs!59631 (and d!184585 b!515751)))

(assert (=> bs!59631 (= lambda!14435 lambda!14405)))

(declare-fun bs!59632 () Bool)

(assert (= bs!59632 (and d!184585 d!184531)))

(assert (=> bs!59632 (not (= lambda!14435 lambda!14413))))

(declare-fun bs!59633 () Bool)

(assert (= bs!59633 (and d!184585 b!515712)))

(assert (=> bs!59633 (= lambda!14435 lambda!14397)))

(declare-fun bs!59634 () Bool)

(assert (= bs!59634 (and d!184585 d!184575)))

(assert (=> bs!59634 (not (= lambda!14435 lambda!14431))))

(declare-fun bs!59635 () Bool)

(assert (= bs!59635 (and d!184585 d!184539)))

(assert (=> bs!59635 (not (= lambda!14435 lambda!14417))))

(declare-fun bs!59636 () Bool)

(assert (= bs!59636 (and d!184585 d!184569)))

(assert (=> bs!59636 (= lambda!14435 lambda!14428)))

(declare-fun bs!59637 () Bool)

(assert (= bs!59637 (and d!184585 d!184547)))

(assert (=> bs!59637 (not (= lambda!14435 lambda!14418))))

(declare-fun bs!59638 () Bool)

(assert (= bs!59638 (and d!184585 d!184499)))

(assert (=> bs!59638 (= lambda!14435 lambda!14409)))

(assert (=> d!184585 (eq!30 (extractMap!19 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))) (-!33 (extractMap!19 (toList!415 lt!214137)) k0!1740))))

(declare-fun lt!214297 () Unit!8541)

(declare-fun choose!3676 (ListLongMap!75 (_ BitVec 64) List!4728 K!1407 Hashable!489) Unit!8541)

(assert (=> d!184585 (= lt!214297 (choose!3676 lt!214137 lt!214138 lt!214119 k0!1740 (hashF!2365 (_2!3105 lt!214142))))))

(assert (=> d!184585 (forall!1397 (toList!415 lt!214137) lambda!14435)))

(assert (=> d!184585 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!11 lt!214137 lt!214138 lt!214119 k0!1740 (hashF!2365 (_2!3105 lt!214142))) lt!214297)))

(declare-fun bs!59639 () Bool)

(assert (= bs!59639 d!184585))

(declare-fun m!762261 () Bool)

(assert (=> bs!59639 m!762261))

(declare-fun m!762263 () Bool)

(assert (=> bs!59639 m!762263))

(assert (=> bs!59639 m!761881))

(assert (=> bs!59639 m!761881))

(declare-fun m!762265 () Bool)

(assert (=> bs!59639 m!762265))

(declare-fun m!762267 () Bool)

(assert (=> bs!59639 m!762267))

(declare-fun m!762269 () Bool)

(assert (=> bs!59639 m!762269))

(assert (=> bs!59639 m!761893))

(assert (=> bs!59639 m!762269))

(assert (=> bs!59639 m!762265))

(assert (=> b!515744 d!184585))

(declare-fun bs!59640 () Bool)

(declare-fun d!184587 () Bool)

(assert (= bs!59640 (and d!184587 b!515924)))

(declare-fun lambda!14436 () Int)

(assert (=> bs!59640 (= lambda!14436 lambda!14410)))

(declare-fun bs!59641 () Bool)

(assert (= bs!59641 (and d!184587 b!515782)))

(assert (=> bs!59641 (= lambda!14436 lambda!14406)))

(declare-fun bs!59642 () Bool)

(assert (= bs!59642 (and d!184587 d!184559)))

(assert (=> bs!59642 (= lambda!14436 lambda!14420)))

(declare-fun bs!59643 () Bool)

(assert (= bs!59643 (and d!184587 d!184535)))

(assert (=> bs!59643 (= lambda!14436 lambda!14416)))

(declare-fun bs!59644 () Bool)

(assert (= bs!59644 (and d!184587 d!184577)))

(assert (=> bs!59644 (not (= lambda!14436 lambda!14432))))

(declare-fun bs!59645 () Bool)

(assert (= bs!59645 (and d!184587 d!184585)))

(assert (=> bs!59645 (= lambda!14436 lambda!14435)))

(declare-fun bs!59646 () Bool)

(assert (= bs!59646 (and d!184587 d!184551)))

(assert (=> bs!59646 (= lambda!14436 lambda!14419)))

(declare-fun bs!59647 () Bool)

(assert (= bs!59647 (and d!184587 b!515720)))

(assert (=> bs!59647 (= lambda!14436 lambda!14398)))

(declare-fun bs!59648 () Bool)

(assert (= bs!59648 (and d!184587 b!515751)))

(assert (=> bs!59648 (= lambda!14436 lambda!14405)))

(declare-fun bs!59649 () Bool)

(assert (= bs!59649 (and d!184587 d!184531)))

(assert (=> bs!59649 (not (= lambda!14436 lambda!14413))))

(declare-fun bs!59650 () Bool)

(assert (= bs!59650 (and d!184587 b!515712)))

(assert (=> bs!59650 (= lambda!14436 lambda!14397)))

(declare-fun bs!59651 () Bool)

(assert (= bs!59651 (and d!184587 d!184575)))

(assert (=> bs!59651 (not (= lambda!14436 lambda!14431))))

(declare-fun bs!59652 () Bool)

(assert (= bs!59652 (and d!184587 d!184539)))

(assert (=> bs!59652 (not (= lambda!14436 lambda!14417))))

(declare-fun bs!59653 () Bool)

(assert (= bs!59653 (and d!184587 d!184569)))

(assert (=> bs!59653 (= lambda!14436 lambda!14428)))

(declare-fun bs!59654 () Bool)

(assert (= bs!59654 (and d!184587 d!184547)))

(assert (=> bs!59654 (not (= lambda!14436 lambda!14418))))

(declare-fun bs!59655 () Bool)

(assert (= bs!59655 (and d!184587 d!184499)))

(assert (=> bs!59655 (= lambda!14436 lambda!14409)))

(declare-fun lt!214298 () ListMap!185)

(assert (=> d!184587 (invariantList!70 (toList!414 lt!214298))))

(declare-fun e!308739 () ListMap!185)

(assert (=> d!184587 (= lt!214298 e!308739)))

(declare-fun c!99961 () Bool)

(assert (=> d!184587 (= c!99961 ((_ is Cons!4719) (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))))))

(assert (=> d!184587 (forall!1397 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119))) lambda!14436)))

(assert (=> d!184587 (= (extractMap!19 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))) lt!214298)))

(declare-fun b!515979 () Bool)

(assert (=> b!515979 (= e!308739 (addToMapMapFromBucket!3 (_2!3104 (h!10116 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119))))) (extractMap!19 (t!73279 (toList!415 (+!22 lt!214137 (tuple2!5777 lt!214138 lt!214119)))))))))

(declare-fun b!515980 () Bool)

(assert (=> b!515980 (= e!308739 (ListMap!186 Nil!4718))))

(assert (= (and d!184587 c!99961) b!515979))

(assert (= (and d!184587 (not c!99961)) b!515980))

(declare-fun m!762271 () Bool)

(assert (=> d!184587 m!762271))

(declare-fun m!762273 () Bool)

(assert (=> d!184587 m!762273))

(declare-fun m!762275 () Bool)

(assert (=> b!515979 m!762275))

(assert (=> b!515979 m!762275))

(declare-fun m!762277 () Bool)

(assert (=> b!515979 m!762277))

(assert (=> b!515744 d!184587))

(declare-fun bs!59656 () Bool)

(declare-fun d!184589 () Bool)

(assert (= bs!59656 (and d!184589 d!184565)))

(declare-fun lambda!14437 () Int)

(assert (=> bs!59656 (= lambda!14437 lambda!14423)))

(assert (=> d!184589 true))

(assert (=> d!184589 true))

(declare-fun b_next!13567 () Bool)

(assert (=> start!46760 (= b_next!13565 (or (and d!184589 (= lambda!14437 p!6060)) b_next!13567))))

(assert (=> d!184589 (= (allKeysSameHash!14 lt!214115 lt!214138 (hashF!2365 (_2!3105 lt!214142))) (forall!1396 lt!214115 lambda!14437))))

(declare-fun bs!59657 () Bool)

(assert (= bs!59657 d!184589))

(declare-fun m!762279 () Bool)

(assert (=> bs!59657 m!762279))

(assert (=> b!515744 d!184589))

(declare-fun bs!59658 () Bool)

(declare-fun b!516013 () Bool)

(assert (= bs!59658 (and b!516013 b!515924)))

(declare-fun lambda!14440 () Int)

(assert (=> bs!59658 (= lambda!14440 lambda!14410)))

(declare-fun bs!59659 () Bool)

(assert (= bs!59659 (and b!516013 b!515782)))

(assert (=> bs!59659 (= lambda!14440 lambda!14406)))

(declare-fun bs!59660 () Bool)

(assert (= bs!59660 (and b!516013 d!184587)))

(assert (=> bs!59660 (= lambda!14440 lambda!14436)))

(declare-fun bs!59661 () Bool)

(assert (= bs!59661 (and b!516013 d!184559)))

(assert (=> bs!59661 (= lambda!14440 lambda!14420)))

(declare-fun bs!59662 () Bool)

(assert (= bs!59662 (and b!516013 d!184535)))

(assert (=> bs!59662 (= lambda!14440 lambda!14416)))

(declare-fun bs!59663 () Bool)

(assert (= bs!59663 (and b!516013 d!184577)))

(assert (=> bs!59663 (not (= lambda!14440 lambda!14432))))

(declare-fun bs!59664 () Bool)

(assert (= bs!59664 (and b!516013 d!184585)))

(assert (=> bs!59664 (= lambda!14440 lambda!14435)))

(declare-fun bs!59665 () Bool)

(assert (= bs!59665 (and b!516013 d!184551)))

(assert (=> bs!59665 (= lambda!14440 lambda!14419)))

(declare-fun bs!59666 () Bool)

(assert (= bs!59666 (and b!516013 b!515720)))

(assert (=> bs!59666 (= lambda!14440 lambda!14398)))

(declare-fun bs!59667 () Bool)

(assert (= bs!59667 (and b!516013 b!515751)))

(assert (=> bs!59667 (= lambda!14440 lambda!14405)))

(declare-fun bs!59668 () Bool)

(assert (= bs!59668 (and b!516013 d!184531)))

(assert (=> bs!59668 (not (= lambda!14440 lambda!14413))))

(declare-fun bs!59669 () Bool)

(assert (= bs!59669 (and b!516013 b!515712)))

(assert (=> bs!59669 (= lambda!14440 lambda!14397)))

(declare-fun bs!59670 () Bool)

(assert (= bs!59670 (and b!516013 d!184575)))

(assert (=> bs!59670 (not (= lambda!14440 lambda!14431))))

(declare-fun bs!59671 () Bool)

(assert (= bs!59671 (and b!516013 d!184539)))

(assert (=> bs!59671 (not (= lambda!14440 lambda!14417))))

(declare-fun bs!59672 () Bool)

(assert (= bs!59672 (and b!516013 d!184569)))

(assert (=> bs!59672 (= lambda!14440 lambda!14428)))

(declare-fun bs!59673 () Bool)

(assert (= bs!59673 (and b!516013 d!184547)))

(assert (=> bs!59673 (not (= lambda!14440 lambda!14418))))

(declare-fun bs!59674 () Bool)

(assert (= bs!59674 (and b!516013 d!184499)))

(assert (=> bs!59674 (= lambda!14440 lambda!14409)))

(declare-fun b!516003 () Bool)

(declare-fun lt!214352 () (_ BitVec 64))

(declare-fun e!308760 () Bool)

(declare-datatypes ((Option!1232 0))(
  ( (None!1231) (Some!1231 (v!15759 tuple2!5772)) )
))
(declare-fun isDefined!1045 (Option!1232) Bool)

(declare-fun getPair!2 (List!4728 K!1407) Option!1232)

(assert (=> b!516003 (= e!308760 (isDefined!1045 (getPair!2 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214352) k0!1740)))))

(declare-fun b!516004 () Bool)

(declare-fun e!308754 () Unit!8541)

(declare-fun Unit!8564 () Unit!8541)

(assert (=> b!516004 (= e!308754 Unit!8564)))

(declare-fun bm!37636 () Bool)

(declare-fun call!37641 () Bool)

(declare-fun call!37642 () Option!1232)

(assert (=> bm!37636 (= call!37641 (isDefined!1045 call!37642))))

(declare-fun b!516005 () Bool)

(declare-fun e!308759 () Unit!8541)

(declare-fun Unit!8565 () Unit!8541)

(assert (=> b!516005 (= e!308759 Unit!8565)))

(declare-fun b!516006 () Bool)

(assert (=> b!516006 false))

(declare-fun lt!214342 () Unit!8541)

(declare-fun lt!214346 () Unit!8541)

(assert (=> b!516006 (= lt!214342 lt!214346)))

(declare-fun lt!214350 () ListLongMap!75)

(assert (=> b!516006 (contains!1077 (extractMap!19 (toList!415 lt!214350)) k0!1740)))

(declare-fun lemmaInLongMapThenInGenericMap!2 (ListLongMap!75 K!1407 Hashable!489) Unit!8541)

(assert (=> b!516006 (= lt!214346 (lemmaInLongMapThenInGenericMap!2 lt!214350 k0!1740 (hashF!2365 hm!65)))))

(declare-fun call!37644 () ListLongMap!75)

(assert (=> b!516006 (= lt!214350 call!37644)))

(declare-fun Unit!8566 () Unit!8541)

(assert (=> b!516006 (= e!308759 Unit!8566)))

(declare-fun b!516008 () Bool)

(declare-fun e!308758 () Unit!8541)

(assert (=> b!516008 (= e!308758 e!308759)))

(declare-fun res!218817 () Bool)

(declare-fun call!37646 () Bool)

(assert (=> b!516008 (= res!218817 call!37646)))

(declare-fun e!308755 () Bool)

(assert (=> b!516008 (=> (not res!218817) (not e!308755))))

(declare-fun c!99970 () Bool)

(assert (=> b!516008 (= c!99970 e!308755)))

(declare-fun b!516009 () Bool)

(assert (=> b!516009 (= e!308755 call!37641)))

(declare-fun bm!37637 () Bool)

(declare-fun call!37645 () List!4728)

(assert (=> bm!37637 (= call!37642 (getPair!2 call!37645 k0!1740))))

(declare-fun lt!214353 () ListLongMap!75)

(declare-fun bm!37638 () Bool)

(declare-fun c!99971 () Bool)

(declare-fun call!37643 () (_ BitVec 64))

(assert (=> bm!37638 (= call!37646 (contains!1083 (ite c!99971 lt!214353 call!37644) call!37643))))

(declare-fun b!516010 () Bool)

(declare-fun e!308757 () Unit!8541)

(declare-fun Unit!8567 () Unit!8541)

(assert (=> b!516010 (= e!308757 Unit!8567)))

(declare-fun b!516011 () Bool)

(declare-fun e!308756 () Bool)

(assert (=> b!516011 (= e!308756 call!37641)))

(declare-fun b!516012 () Bool)

(declare-fun lt!214358 () Unit!8541)

(assert (=> b!516012 (= e!308758 lt!214358)))

(assert (=> b!516012 (= lt!214353 call!37644)))

(declare-fun lemmaInGenericMapThenInLongMap!2 (ListLongMap!75 K!1407 Hashable!489) Unit!8541)

(assert (=> b!516012 (= lt!214358 (lemmaInGenericMapThenInLongMap!2 lt!214353 k0!1740 (hashF!2365 hm!65)))))

(declare-fun res!218818 () Bool)

(assert (=> b!516012 (= res!218818 call!37646)))

(assert (=> b!516012 (=> (not res!218818) (not e!308756))))

(assert (=> b!516012 e!308756))

(declare-fun b!516007 () Bool)

(assert (=> b!516007 false))

(declare-fun lt!214354 () Unit!8541)

(declare-fun lt!214351 () Unit!8541)

(assert (=> b!516007 (= lt!214354 lt!214351)))

(declare-fun lt!214355 () List!4729)

(declare-fun lt!214340 () List!4728)

(assert (=> b!516007 (contains!1082 lt!214355 (tuple2!5777 lt!214352 lt!214340))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!3 (List!4729 (_ BitVec 64) List!4728) Unit!8541)

(assert (=> b!516007 (= lt!214351 (lemmaGetValueByKeyImpliesContainsTuple!3 lt!214355 lt!214352 lt!214340))))

(assert (=> b!516007 (= lt!214340 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214352))))

(assert (=> b!516007 (= lt!214355 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))))

(declare-fun lt!214357 () Unit!8541)

(declare-fun lt!214345 () Unit!8541)

(assert (=> b!516007 (= lt!214357 lt!214345)))

(declare-fun lt!214339 () List!4729)

(declare-fun isDefined!1046 (Option!1231) Bool)

(assert (=> b!516007 (isDefined!1046 (getValueByKey!17 lt!214339 lt!214352))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!9 (List!4729 (_ BitVec 64)) Unit!8541)

(assert (=> b!516007 (= lt!214345 (lemmaContainsKeyImpliesGetValueByKeyDefined!9 lt!214339 lt!214352))))

(assert (=> b!516007 (= lt!214339 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))))

(declare-fun lt!214347 () Unit!8541)

(declare-fun lt!214343 () Unit!8541)

(assert (=> b!516007 (= lt!214347 lt!214343)))

(declare-fun lt!214349 () List!4729)

(declare-fun containsKey!15 (List!4729 (_ BitVec 64)) Bool)

(assert (=> b!516007 (containsKey!15 lt!214349 lt!214352)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!3 (List!4729 (_ BitVec 64)) Unit!8541)

(assert (=> b!516007 (= lt!214343 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!3 lt!214349 lt!214352))))

(assert (=> b!516007 (= lt!214349 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))))

(declare-fun Unit!8568 () Unit!8541)

(assert (=> b!516007 (= e!308757 Unit!8568)))

(declare-fun d!184591 () Bool)

(declare-fun lt!214356 () Bool)

(assert (=> d!184591 (= lt!214356 (contains!1077 (map!1031 hm!65) k0!1740))))

(assert (=> d!184591 (= lt!214356 e!308760)))

(declare-fun res!218816 () Bool)

(assert (=> d!184591 (=> (not res!218816) (not e!308760))))

(assert (=> d!184591 (= res!218816 (contains!1081 (v!15752 (underlying!1214 hm!65)) lt!214352))))

(declare-fun lt!214348 () Unit!8541)

(assert (=> d!184591 (= lt!214348 e!308758)))

(assert (=> d!184591 (= c!99971 (contains!1077 (extractMap!19 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))) k0!1740))))

(declare-fun lt!214344 () Unit!8541)

(assert (=> d!184591 (= lt!214344 e!308754)))

(declare-fun c!99973 () Bool)

(assert (=> d!184591 (= c!99973 (contains!1081 (v!15752 (underlying!1214 hm!65)) lt!214352))))

(assert (=> d!184591 (= lt!214352 (hash!512 (hashF!2365 hm!65) k0!1740))))

(assert (=> d!184591 (valid!478 hm!65)))

(assert (=> d!184591 (= (contains!1078 hm!65 k0!1740) lt!214356)))

(declare-fun bm!37639 () Bool)

(assert (=> bm!37639 (= call!37644 (map!1032 (v!15752 (underlying!1214 hm!65))))))

(declare-fun bm!37640 () Bool)

(assert (=> bm!37640 (= call!37643 (hash!512 (hashF!2365 hm!65) k0!1740))))

(declare-fun bm!37641 () Bool)

(declare-fun apply!1183 (ListLongMap!75 (_ BitVec 64)) List!4728)

(assert (=> bm!37641 (= call!37645 (apply!1183 (ite c!99971 lt!214353 call!37644) call!37643))))

(assert (=> b!516013 (= e!308754 (forallContained!444 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) lambda!14440 (tuple2!5777 lt!214352 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214352))))))

(declare-fun c!99972 () Bool)

(assert (=> b!516013 (= c!99972 (not (contains!1082 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))) (tuple2!5777 lt!214352 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214352)))))))

(declare-fun lt!214341 () Unit!8541)

(assert (=> b!516013 (= lt!214341 e!308757)))

(assert (= (and d!184591 c!99973) b!516013))

(assert (= (and d!184591 (not c!99973)) b!516004))

(assert (= (and b!516013 c!99972) b!516007))

(assert (= (and b!516013 (not c!99972)) b!516010))

(assert (= (and d!184591 c!99971) b!516012))

(assert (= (and d!184591 (not c!99971)) b!516008))

(assert (= (and b!516012 res!218818) b!516011))

(assert (= (and b!516008 res!218817) b!516009))

(assert (= (and b!516008 c!99970) b!516006))

(assert (= (and b!516008 (not c!99970)) b!516005))

(assert (= (or b!516012 b!516008 b!516009 b!516006) bm!37639))

(assert (= (or b!516012 b!516011 b!516008 b!516009) bm!37640))

(assert (= (or b!516012 b!516008) bm!37638))

(assert (= (or b!516011 b!516009) bm!37641))

(assert (= (or b!516011 b!516009) bm!37637))

(assert (= (or b!516011 b!516009) bm!37636))

(assert (= (and d!184591 res!218816) b!516003))

(declare-fun m!762281 () Bool)

(assert (=> b!516006 m!762281))

(assert (=> b!516006 m!762281))

(declare-fun m!762283 () Bool)

(assert (=> b!516006 m!762283))

(declare-fun m!762285 () Bool)

(assert (=> b!516006 m!762285))

(declare-fun m!762287 () Bool)

(assert (=> bm!37638 m!762287))

(assert (=> b!516013 m!761825))

(declare-fun m!762289 () Bool)

(assert (=> b!516013 m!762289))

(declare-fun m!762291 () Bool)

(assert (=> b!516013 m!762291))

(declare-fun m!762293 () Bool)

(assert (=> b!516013 m!762293))

(assert (=> b!516003 m!762289))

(assert (=> b!516003 m!762289))

(declare-fun m!762295 () Bool)

(assert (=> b!516003 m!762295))

(assert (=> b!516003 m!762295))

(declare-fun m!762297 () Bool)

(assert (=> b!516003 m!762297))

(assert (=> d!184591 m!761809))

(declare-fun m!762299 () Bool)

(assert (=> d!184591 m!762299))

(assert (=> d!184591 m!761861))

(assert (=> d!184591 m!761821))

(assert (=> d!184591 m!761821))

(declare-fun m!762301 () Bool)

(assert (=> d!184591 m!762301))

(assert (=> d!184591 m!761841))

(declare-fun m!762303 () Bool)

(assert (=> d!184591 m!762303))

(assert (=> d!184591 m!761825))

(assert (=> d!184591 m!761841))

(declare-fun m!762305 () Bool)

(assert (=> b!516007 m!762305))

(assert (=> b!516007 m!762289))

(declare-fun m!762307 () Bool)

(assert (=> b!516007 m!762307))

(declare-fun m!762309 () Bool)

(assert (=> b!516007 m!762309))

(declare-fun m!762311 () Bool)

(assert (=> b!516007 m!762311))

(declare-fun m!762313 () Bool)

(assert (=> b!516007 m!762313))

(assert (=> b!516007 m!761825))

(assert (=> b!516007 m!762305))

(declare-fun m!762315 () Bool)

(assert (=> b!516007 m!762315))

(declare-fun m!762317 () Bool)

(assert (=> b!516007 m!762317))

(assert (=> bm!37639 m!761825))

(declare-fun m!762319 () Bool)

(assert (=> b!516012 m!762319))

(declare-fun m!762321 () Bool)

(assert (=> bm!37636 m!762321))

(assert (=> bm!37640 m!761861))

(declare-fun m!762323 () Bool)

(assert (=> bm!37637 m!762323))

(declare-fun m!762325 () Bool)

(assert (=> bm!37641 m!762325))

(assert (=> d!184479 d!184591))

(assert (=> d!184479 d!184469))

(declare-fun d!184593 () Bool)

(declare-fun res!218819 () Bool)

(declare-fun e!308761 () Bool)

(assert (=> d!184593 (=> res!218819 e!308761)))

(assert (=> d!184593 (= res!218819 (or ((_ is Nil!4718) (toList!414 lt!214050)) ((_ is Nil!4718) (t!73276 (toList!414 lt!214050)))))))

(assert (=> d!184593 (= (noDuplicatedKeys!14 (toList!414 lt!214050)) e!308761)))

(declare-fun b!516014 () Bool)

(declare-fun e!308762 () Bool)

(assert (=> b!516014 (= e!308761 e!308762)))

(declare-fun res!218820 () Bool)

(assert (=> b!516014 (=> (not res!218820) (not e!308762))))

(assert (=> b!516014 (= res!218820 (not (containsKey!13 (t!73276 (toList!414 lt!214050)) (_1!3102 (h!10115 (toList!414 lt!214050))))))))

(declare-fun b!516015 () Bool)

(assert (=> b!516015 (= e!308762 (noDuplicatedKeys!14 (t!73276 (toList!414 lt!214050))))))

(assert (= (and d!184593 (not res!218819)) b!516014))

(assert (= (and b!516014 res!218820) b!516015))

(declare-fun m!762327 () Bool)

(assert (=> b!516014 m!762327))

(declare-fun m!762329 () Bool)

(assert (=> b!516015 m!762329))

(assert (=> d!184491 d!184593))

(declare-fun d!184595 () Bool)

(declare-fun c!99976 () Bool)

(assert (=> d!184595 (= c!99976 ((_ is Nil!4720) (keys!1848 lt!214049)))))

(declare-fun e!308765 () (InoxSet K!1407))

(assert (=> d!184595 (= (content!822 (keys!1848 lt!214049)) e!308765)))

(declare-fun b!516020 () Bool)

(assert (=> b!516020 (= e!308765 ((as const (Array K!1407 Bool)) false))))

(declare-fun b!516021 () Bool)

(assert (=> b!516021 (= e!308765 ((_ map or) (store ((as const (Array K!1407 Bool)) false) (h!10117 (keys!1848 lt!214049)) true) (content!822 (t!73280 (keys!1848 lt!214049)))))))

(assert (= (and d!184595 c!99976) b!516020))

(assert (= (and d!184595 (not c!99976)) b!516021))

(declare-fun m!762331 () Bool)

(assert (=> b!516021 m!762331))

(declare-fun m!762333 () Bool)

(assert (=> b!516021 m!762333))

(assert (=> b!515757 d!184595))

(declare-fun b!516029 () Bool)

(assert (=> b!516029 true))

(declare-fun d!184597 () Bool)

(declare-fun e!308768 () Bool)

(assert (=> d!184597 e!308768))

(declare-fun res!218828 () Bool)

(assert (=> d!184597 (=> (not res!218828) (not e!308768))))

(declare-fun lt!214361 () List!4730)

(declare-fun noDuplicate!110 (List!4730) Bool)

(assert (=> d!184597 (= res!218828 (noDuplicate!110 lt!214361))))

(assert (=> d!184597 (= lt!214361 (getKeysList!5 (toList!414 lt!214049)))))

(assert (=> d!184597 (= (keys!1848 lt!214049) lt!214361)))

(declare-fun b!516028 () Bool)

(declare-fun res!218827 () Bool)

(assert (=> b!516028 (=> (not res!218827) (not e!308768))))

(declare-fun length!6 (List!4730) Int)

(declare-fun length!7 (List!4728) Int)

(assert (=> b!516028 (= res!218827 (= (length!6 lt!214361) (length!7 (toList!414 lt!214049))))))

(declare-fun res!218829 () Bool)

(assert (=> b!516029 (=> (not res!218829) (not e!308768))))

(declare-fun lambda!14445 () Int)

(declare-fun forall!1398 (List!4730 Int) Bool)

(assert (=> b!516029 (= res!218829 (forall!1398 lt!214361 lambda!14445))))

(declare-fun b!516030 () Bool)

(declare-fun lambda!14446 () Int)

(declare-fun map!1034 (List!4728 Int) List!4730)

(assert (=> b!516030 (= e!308768 (= (content!822 lt!214361) (content!822 (map!1034 (toList!414 lt!214049) lambda!14446))))))

(assert (= (and d!184597 res!218828) b!516028))

(assert (= (and b!516028 res!218827) b!516029))

(assert (= (and b!516029 res!218829) b!516030))

(declare-fun m!762335 () Bool)

(assert (=> d!184597 m!762335))

(assert (=> d!184597 m!762029))

(declare-fun m!762337 () Bool)

(assert (=> b!516028 m!762337))

(declare-fun m!762339 () Bool)

(assert (=> b!516028 m!762339))

(declare-fun m!762341 () Bool)

(assert (=> b!516029 m!762341))

(declare-fun m!762343 () Bool)

(assert (=> b!516030 m!762343))

(declare-fun m!762345 () Bool)

(assert (=> b!516030 m!762345))

(assert (=> b!516030 m!762345))

(declare-fun m!762347 () Bool)

(assert (=> b!516030 m!762347))

(assert (=> b!515757 d!184597))

(declare-fun d!184599 () Bool)

(declare-fun c!99977 () Bool)

(assert (=> d!184599 (= c!99977 ((_ is Nil!4720) (keys!1848 lt!214146)))))

(declare-fun e!308769 () (InoxSet K!1407))

(assert (=> d!184599 (= (content!822 (keys!1848 lt!214146)) e!308769)))

(declare-fun b!516033 () Bool)

(assert (=> b!516033 (= e!308769 ((as const (Array K!1407 Bool)) false))))

(declare-fun b!516034 () Bool)

(assert (=> b!516034 (= e!308769 ((_ map or) (store ((as const (Array K!1407 Bool)) false) (h!10117 (keys!1848 lt!214146)) true) (content!822 (t!73280 (keys!1848 lt!214146)))))))

(assert (= (and d!184599 c!99977) b!516033))

(assert (= (and d!184599 (not c!99977)) b!516034))

(declare-fun m!762349 () Bool)

(assert (=> b!516034 m!762349))

(declare-fun m!762351 () Bool)

(assert (=> b!516034 m!762351))

(assert (=> b!515757 d!184599))

(declare-fun bs!59675 () Bool)

(declare-fun b!516036 () Bool)

(assert (= bs!59675 (and b!516036 b!516029)))

(declare-fun lambda!14447 () Int)

(assert (=> bs!59675 (= (= (toList!414 lt!214146) (toList!414 lt!214049)) (= lambda!14447 lambda!14445))))

(assert (=> b!516036 true))

(declare-fun bs!59676 () Bool)

(declare-fun b!516037 () Bool)

(assert (= bs!59676 (and b!516037 b!516030)))

(declare-fun lambda!14448 () Int)

(assert (=> bs!59676 (= lambda!14448 lambda!14446)))

(declare-fun d!184601 () Bool)

(declare-fun e!308770 () Bool)

(assert (=> d!184601 e!308770))

(declare-fun res!218831 () Bool)

(assert (=> d!184601 (=> (not res!218831) (not e!308770))))

(declare-fun lt!214362 () List!4730)

(assert (=> d!184601 (= res!218831 (noDuplicate!110 lt!214362))))

(assert (=> d!184601 (= lt!214362 (getKeysList!5 (toList!414 lt!214146)))))

(assert (=> d!184601 (= (keys!1848 lt!214146) lt!214362)))

(declare-fun b!516035 () Bool)

(declare-fun res!218830 () Bool)

(assert (=> b!516035 (=> (not res!218830) (not e!308770))))

(assert (=> b!516035 (= res!218830 (= (length!6 lt!214362) (length!7 (toList!414 lt!214146))))))

(declare-fun res!218832 () Bool)

(assert (=> b!516036 (=> (not res!218832) (not e!308770))))

(assert (=> b!516036 (= res!218832 (forall!1398 lt!214362 lambda!14447))))

(assert (=> b!516037 (= e!308770 (= (content!822 lt!214362) (content!822 (map!1034 (toList!414 lt!214146) lambda!14448))))))

(assert (= (and d!184601 res!218831) b!516035))

(assert (= (and b!516035 res!218830) b!516036))

(assert (= (and b!516036 res!218832) b!516037))

(declare-fun m!762353 () Bool)

(assert (=> d!184601 m!762353))

(assert (=> d!184601 m!761979))

(declare-fun m!762355 () Bool)

(assert (=> b!516035 m!762355))

(declare-fun m!762357 () Bool)

(assert (=> b!516035 m!762357))

(declare-fun m!762359 () Bool)

(assert (=> b!516036 m!762359))

(declare-fun m!762361 () Bool)

(assert (=> b!516037 m!762361))

(declare-fun m!762363 () Bool)

(assert (=> b!516037 m!762363))

(assert (=> b!516037 m!762363))

(declare-fun m!762365 () Bool)

(assert (=> b!516037 m!762365))

(assert (=> b!515757 d!184601))

(declare-fun d!184603 () Bool)

(assert (=> d!184603 (= (eq!30 call!37597 e!308594) (= (content!821 (toList!414 call!37597)) (content!821 (toList!414 e!308594))))))

(declare-fun bs!59677 () Bool)

(assert (= bs!59677 d!184603))

(declare-fun m!762367 () Bool)

(assert (=> bs!59677 m!762367))

(declare-fun m!762369 () Bool)

(assert (=> bs!59677 m!762369))

(assert (=> bm!37588 d!184603))

(declare-fun d!184605 () Bool)

(declare-fun res!218833 () Bool)

(declare-fun e!308771 () Bool)

(assert (=> d!184605 (=> res!218833 e!308771)))

(assert (=> d!184605 (= res!218833 ((_ is Nil!4718) (t!73276 (toList!414 lt!214049))))))

(assert (=> d!184605 (= (forall!1396 (t!73276 (toList!414 lt!214049)) p!6060) e!308771)))

(declare-fun b!516038 () Bool)

(declare-fun e!308772 () Bool)

(assert (=> b!516038 (= e!308771 e!308772)))

(declare-fun res!218834 () Bool)

(assert (=> b!516038 (=> (not res!218834) (not e!308772))))

(assert (=> b!516038 (= res!218834 (dynLambda!2974 p!6060 (h!10115 (t!73276 (toList!414 lt!214049)))))))

(declare-fun b!516039 () Bool)

(assert (=> b!516039 (= e!308772 (forall!1396 (t!73276 (t!73276 (toList!414 lt!214049))) p!6060))))

(assert (= (and d!184605 (not res!218833)) b!516038))

(assert (= (and b!516038 res!218834) b!516039))

(declare-fun b_lambda!20033 () Bool)

(assert (=> (not b_lambda!20033) (not b!516038)))

(declare-fun t!73284 () Bool)

(declare-fun tb!47151 () Bool)

(assert (=> (and start!46760 (= p!6060 p!6060) t!73284) tb!47151))

(declare-fun result!52202 () Bool)

(assert (=> tb!47151 (= result!52202 true)))

(assert (=> b!516038 t!73284))

(declare-fun b_and!51021 () Bool)

(assert (= b_and!51017 (and (=> t!73284 result!52202) b_and!51021)))

(declare-fun m!762371 () Bool)

(assert (=> b!516038 m!762371))

(declare-fun m!762373 () Bool)

(assert (=> b!516039 m!762373))

(assert (=> b!515719 d!184605))

(declare-fun tp!161030 () Bool)

(declare-fun b!516040 () Bool)

(declare-fun e!308773 () Bool)

(assert (=> b!516040 (= e!308773 (and tp_is_empty!2615 tp_is_empty!2617 tp!161030))))

(assert (=> b!515765 (= tp!161021 e!308773)))

(assert (= (and b!515765 ((_ is Cons!4718) (t!73276 mapDefault!1996))) b!516040))

(declare-fun tp!161031 () Bool)

(declare-fun b!516041 () Bool)

(declare-fun e!308774 () Bool)

(assert (=> b!516041 (= e!308774 (and tp_is_empty!2615 tp_is_empty!2617 tp!161031))))

(assert (=> b!515771 (= tp!161027 e!308774)))

(assert (= (and b!515771 ((_ is Cons!4718) (t!73276 mapDefault!1993))) b!516041))

(declare-fun e!308775 () Bool)

(declare-fun tp!161032 () Bool)

(declare-fun b!516042 () Bool)

(assert (=> b!516042 (= e!308775 (and tp_is_empty!2615 tp_is_empty!2617 tp!161032))))

(assert (=> b!515773 (= tp!161029 e!308775)))

(assert (= (and b!515773 ((_ is Cons!4718) (t!73276 (minValue!773 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))))) b!516042))

(declare-fun b!516043 () Bool)

(declare-fun e!308776 () Bool)

(declare-fun tp!161033 () Bool)

(assert (=> b!516043 (= e!308776 (and tp_is_empty!2615 tp_is_empty!2617 tp!161033))))

(assert (=> b!515764 (= tp!161022 e!308776)))

(assert (= (and b!515764 ((_ is Cons!4718) (t!73276 mapValue!1996))) b!516043))

(declare-fun b!516051 () Bool)

(declare-fun e!308782 () Bool)

(declare-fun lt!214365 () MutLongMap!517)

(assert (=> b!516051 (= e!308782 ((_ is LongMap!517) lt!214365))))

(assert (=> b!516051 (= lt!214365 (v!15752 (underlying!1214 (_2!3103 (remove!36 hm!65 k0!1740)))))))

(declare-fun b!516050 () Bool)

(declare-fun e!308781 () Bool)

(assert (=> b!516050 (= e!308781 e!308782)))

(assert (=> d!184479 (= true e!308781)))

(assert (= b!516050 b!516051))

(assert (= (and d!184479 ((_ is HashMap!489) (_2!3103 (remove!36 hm!65 k0!1740)))) b!516050))

(declare-fun e!308783 () Bool)

(declare-fun b!516052 () Bool)

(declare-fun tp!161035 () Bool)

(assert (=> b!516052 (= e!308783 (and tp_is_empty!2615 tp_is_empty!2617 tp!161035))))

(declare-fun condMapEmpty!1997 () Bool)

(declare-fun mapDefault!1997 () List!4728)

(assert (=> mapNonEmpty!1996 (= condMapEmpty!1997 (= mapRest!1996 ((as const (Array (_ BitVec 32) List!4728)) mapDefault!1997)))))

(declare-fun e!308784 () Bool)

(declare-fun mapRes!1997 () Bool)

(assert (=> mapNonEmpty!1996 (= tp!161023 (and e!308784 mapRes!1997))))

(declare-fun mapIsEmpty!1997 () Bool)

(assert (=> mapIsEmpty!1997 mapRes!1997))

(declare-fun tp!161034 () Bool)

(declare-fun b!516053 () Bool)

(assert (=> b!516053 (= e!308784 (and tp_is_empty!2615 tp_is_empty!2617 tp!161034))))

(declare-fun mapNonEmpty!1997 () Bool)

(declare-fun tp!161036 () Bool)

(assert (=> mapNonEmpty!1997 (= mapRes!1997 (and tp!161036 e!308783))))

(declare-fun mapKey!1997 () (_ BitVec 32))

(declare-fun mapValue!1997 () List!4728)

(declare-fun mapRest!1997 () (Array (_ BitVec 32) List!4728))

(assert (=> mapNonEmpty!1997 (= mapRest!1996 (store mapRest!1997 mapKey!1997 mapValue!1997))))

(assert (= (and mapNonEmpty!1996 condMapEmpty!1997) mapIsEmpty!1997))

(assert (= (and mapNonEmpty!1996 (not condMapEmpty!1997)) mapNonEmpty!1997))

(assert (= (and mapNonEmpty!1997 ((_ is Cons!4718) mapValue!1997)) b!516052))

(assert (= (and mapNonEmpty!1996 ((_ is Cons!4718) mapDefault!1997)) b!516053))

(declare-fun m!762375 () Bool)

(assert (=> mapNonEmpty!1997 m!762375))

(declare-fun e!308785 () Bool)

(declare-fun b!516054 () Bool)

(declare-fun tp!161037 () Bool)

(assert (=> b!516054 (= e!308785 (and tp_is_empty!2615 tp_is_empty!2617 tp!161037))))

(assert (=> b!515770 (= tp!161026 e!308785)))

(assert (= (and b!515770 ((_ is Cons!4718) (t!73276 mapValue!1993))) b!516054))

(declare-fun tp!161038 () Bool)

(declare-fun e!308786 () Bool)

(declare-fun b!516055 () Bool)

(assert (=> b!516055 (= e!308786 (and tp_is_empty!2615 tp_is_empty!2617 tp!161038))))

(assert (=> b!515772 (= tp!161028 e!308786)))

(assert (= (and b!515772 ((_ is Cons!4718) (t!73276 (zeroValue!773 (v!15751 (underlying!1213 (v!15752 (underlying!1214 hm!65)))))))) b!516055))

(declare-fun b_lambda!20035 () Bool)

(assert (= b_lambda!20025 (or b!515720 b_lambda!20035)))

(declare-fun bs!59678 () Bool)

(declare-fun d!184607 () Bool)

(assert (= bs!59678 (and d!184607 b!515720)))

(assert (=> bs!59678 (= (dynLambda!2976 lambda!14398 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047))))))) (noDuplicateKeys!15 (_2!3104 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 (_2!3103 lt!214047)))))))))))

(declare-fun m!762377 () Bool)

(assert (=> bs!59678 m!762377))

(assert (=> b!515938 d!184607))

(declare-fun b_lambda!20037 () Bool)

(assert (= b_lambda!20031 (or b!515751 b_lambda!20037)))

(declare-fun bs!59679 () Bool)

(declare-fun d!184609 () Bool)

(assert (= bs!59679 (and d!184609 b!515751)))

(assert (=> bs!59679 (= (dynLambda!2976 lambda!14405 (h!10116 (toList!415 lt!214116))) (noDuplicateKeys!15 (_2!3104 (h!10116 (toList!415 lt!214116)))))))

(declare-fun m!762379 () Bool)

(assert (=> bs!59679 m!762379))

(assert (=> b!515962 d!184609))

(declare-fun b_lambda!20039 () Bool)

(assert (= b_lambda!20029 (or b!515751 b_lambda!20039)))

(declare-fun bs!59680 () Bool)

(declare-fun d!184611 () Bool)

(assert (= bs!59680 (and d!184611 b!515751)))

(assert (=> bs!59680 (= (dynLambda!2976 lambda!14405 (h!10116 (toList!415 call!37599))) (noDuplicateKeys!15 (_2!3104 (h!10116 (toList!415 call!37599)))))))

(declare-fun m!762381 () Bool)

(assert (=> bs!59680 m!762381))

(assert (=> b!515952 d!184611))

(declare-fun b_lambda!20041 () Bool)

(assert (= b_lambda!20033 (or (and d!184565 (= lambda!14423 p!6060)) (and d!184589 (= lambda!14437 p!6060)) (and start!46760 b_free!13561) b_lambda!20041)))

(declare-fun bs!59681 () Bool)

(declare-fun d!184613 () Bool)

(assert (= bs!59681 (and d!184613 d!184565)))

(assert (=> bs!59681 (= (dynLambda!2974 lambda!14423 (h!10115 (t!73276 (toList!414 lt!214049)))) (= (hash!512 (hashF!2365 (_2!3105 lt!214142)) (_1!3102 (h!10115 (t!73276 (toList!414 lt!214049))))) lt!214138))))

(declare-fun m!762383 () Bool)

(assert (=> bs!59681 m!762383))

(assert (=> (and d!184565 (= lambda!14423 p!6060) b!516038) d!184613))

(declare-fun bs!59682 () Bool)

(declare-fun d!184615 () Bool)

(assert (= bs!59682 (and d!184615 d!184589)))

(assert (=> bs!59682 (= (dynLambda!2974 lambda!14437 (h!10115 (t!73276 (toList!414 lt!214049)))) (= (hash!512 (hashF!2365 (_2!3105 lt!214142)) (_1!3102 (h!10115 (t!73276 (toList!414 lt!214049))))) lt!214138))))

(assert (=> bs!59682 m!762383))

(assert (=> (and d!184589 (= lambda!14437 p!6060) b!516038) d!184615))

(declare-fun b_lambda!20043 () Bool)

(assert (= b_lambda!20027 (or b!515712 b_lambda!20043)))

(declare-fun bs!59683 () Bool)

(declare-fun d!184617 () Bool)

(assert (= bs!59683 (and d!184617 b!515712)))

(assert (=> bs!59683 (= (dynLambda!2976 lambda!14397 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65)))))) (noDuplicateKeys!15 (_2!3104 (h!10116 (toList!415 (map!1032 (v!15752 (underlying!1214 hm!65))))))))))

(declare-fun m!762385 () Bool)

(assert (=> bs!59683 m!762385))

(assert (=> b!515940 d!184617))

(declare-fun b_lambda!20045 () Bool)

(assert (= b_lambda!20023 (or b!515751 b_lambda!20045)))

(declare-fun bs!59684 () Bool)

(declare-fun d!184619 () Bool)

(assert (= bs!59684 (and d!184619 b!515751)))

(assert (=> bs!59684 (= (dynLambda!2976 lambda!14405 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138))) (noDuplicateKeys!15 (_2!3104 (tuple2!5777 lt!214138 (apply!1181 (v!15752 (underlying!1214 hm!65)) lt!214138)))))))

(declare-fun m!762387 () Bool)

(assert (=> bs!59684 m!762387))

(assert (=> d!184521 d!184619))

(declare-fun b_lambda!20047 () Bool)

(assert (= b_lambda!20021 (or (and b!515702 b_free!13559) b_lambda!20047)))

(check-sat (not d!184505) (not b!516041) (not b!516003) (not b!515874) (not b!516030) (not d!184507) (not b_next!13559) (not b_lambda!20043) (not d!184501) (not bm!37611) (not b_next!13563) (not bs!59681) (not b!515946) (not d!184567) (not b!515861) (not d!184499) (not d!184585) (not d!184561) (not d!184503) (not d!184541) (not b!515948) (not d!184525) (not bs!59678) (not b!515868) (not b!516015) (not b!515968) (not b!516013) (not d!184547) (not b!515856) (not b!515779) (not b!515809) (not b_lambda!20039) (not b!515805) (not b!515879) (not b!516042) (not b!515947) (not d!184577) (not b!516035) (not bm!37616) (not bs!59684) (not bs!59683) (not b!516007) (not bm!37639) (not d!184603) (not b_lambda!20035) (not d!184539) (not bs!59680) (not d!184583) (not d!184497) (not b!515873) (not d!184581) (not b!515923) (not d!184509) (not b!515939) (not d!184517) (not b!516021) (not bm!37640) (not b!515918) (not b!516037) (not b!515922) (not b_lambda!20047) b_and!51021 (not b!515920) (not b!515781) (not b!516040) (not b!516039) tp_is_empty!2617 (not b!515941) (not b!515976) b_and!51019 (not bm!37615) (not b!515971) (not b!515950) (not b_next!13567) (not b!516006) (not b!515978) (not b!515932) (not d!184565) (not d!184549) (not bm!37641) (not d!184533) (not bm!37623) (not b!516043) (not b!515853) (not b!516053) (not b!515867) (not bm!37622) (not bm!37637) (not b!515969) (not b!516029) b_and!51015 (not d!184587) (not d!184535) (not b!515857) (not b!515782) (not b!515804) (not b!516036) (not d!184529) (not mapNonEmpty!1997) (not d!184555) (not d!184569) (not bs!59682) (not b!516052) (not b!515973) (not b!516014) (not d!184571) (not b!515953) (not b!515977) (not bm!37612) (not bs!59679) (not b!515783) (not b!515808) (not b!516028) tp_is_empty!2615 (not b!515858) (not b_lambda!20041) (not b!515851) (not b!515979) (not b_lambda!20045) (not b!515807) (not d!184591) (not b!515855) (not b!515891) (not b!515865) (not d!184589) (not d!184513) (not b!515924) (not b!515925) (not b!515849) (not bm!37621) (not b!515810) (not d!184573) (not b!515960) (not b!515961) (not d!184575) (not d!184597) (not bm!37598) (not bm!37614) (not d!184515) (not b!515917) (not d!184559) (not d!184531) (not b_lambda!20037) (not d!184557) (not d!184519) (not b!516034) (not b!515915) (not d!184521) (not b!516055) (not b!515972) (not b!515975) (not d!184523) (not b!516012) (not bm!37638) (not d!184527) (not tb!47149) (not b_lambda!20019) (not d!184553) (not d!184551) (not b!515803) (not d!184601) (not bm!37613) (not b!516054) (not b!515963) (not bm!37636) (not b!515895))
(check-sat (not b_next!13559) (not b_next!13563) b_and!51021 b_and!51019 (not b_next!13567) b_and!51015)
