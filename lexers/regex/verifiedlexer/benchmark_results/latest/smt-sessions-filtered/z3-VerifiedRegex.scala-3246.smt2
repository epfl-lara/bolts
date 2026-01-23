; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187670 () Bool)

(assert start!187670)

(declare-fun b!1872922 () Bool)

(declare-fun b_free!52015 () Bool)

(declare-fun b_next!52719 () Bool)

(assert (=> b!1872922 (= b_free!52015 (not b_next!52719))))

(declare-fun tp!532666 () Bool)

(declare-fun b_and!144301 () Bool)

(assert (=> b!1872922 (= tp!532666 b_and!144301)))

(declare-fun b!1872919 () Bool)

(declare-fun e!1194885 () Bool)

(declare-datatypes ((array!6631 0))(
  ( (array!6632 (arr!2946 (Array (_ BitVec 32) (_ BitVec 64))) (size!16488 (_ BitVec 32))) )
))
(declare-datatypes ((V!3997 0))(
  ( (V!3998 (val!6028 Int)) )
))
(declare-datatypes ((array!6633 0))(
  ( (array!6634 (arr!2947 (Array (_ BitVec 32) V!3997)) (size!16489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3848 0))(
  ( (LongMapFixedSize!3849 (defaultEntry!2289 Int) (mask!5719 (_ BitVec 32)) (extraKeys!2172 (_ BitVec 32)) (zeroValue!2182 V!3997) (minValue!2182 V!3997) (_size!3902 (_ BitVec 32)) (_keys!2221 array!6631) (_values!2204 array!6633) (_vacant!1985 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7527 0))(
  ( (Cell!7528 (v!26150 LongMapFixedSize!3848)) )
))
(declare-datatypes ((MutLongMap!1924 0))(
  ( (LongMap!1924 (underlying!4044 Cell!7527)) (MutLongMapExt!1923 (__x!13013 Int)) )
))
(declare-fun thiss!47421 () MutLongMap!1924)

(declare-fun key!7039 () (_ BitVec 64))

(declare-fun contains!3811 (MutLongMap!1924 (_ BitVec 64)) Bool)

(declare-datatypes ((tuple2!19908 0))(
  ( (tuple2!19909 (_1!11381 (_ BitVec 64)) (_2!11381 V!3997)) )
))
(declare-datatypes ((List!20841 0))(
  ( (Nil!20759) (Cons!20759 (h!26160 tuple2!19908) (t!173058 List!20841)) )
))
(declare-datatypes ((ListLongMap!229 0))(
  ( (ListLongMap!230 (toList!1000 List!20841)) )
))
(declare-fun contains!3812 (ListLongMap!229 (_ BitVec 64)) Bool)

(declare-fun abstractMap!73 (MutLongMap!1924) ListLongMap!229)

(assert (=> b!1872919 (= e!1194885 (not (= (contains!3811 thiss!47421 key!7039) (contains!3812 (abstractMap!73 thiss!47421) key!7039))))))

(declare-fun b!1872920 () Bool)

(declare-fun e!1194881 () Bool)

(declare-fun e!1194880 () Bool)

(assert (=> b!1872920 (= e!1194881 e!1194880)))

(declare-fun b!1872921 () Bool)

(declare-fun e!1194884 () Bool)

(assert (=> b!1872921 (= e!1194880 e!1194884)))

(declare-fun res!838198 () Bool)

(assert (=> start!187670 (=> (not res!838198) (not e!1194885))))

(declare-fun valid!1553 (MutLongMap!1924) Bool)

(assert (=> start!187670 (= res!838198 (valid!1553 thiss!47421))))

(assert (=> start!187670 e!1194885))

(assert (=> start!187670 e!1194881))

(assert (=> start!187670 true))

(declare-fun e!1194882 () Bool)

(declare-fun tp_is_empty!8823 () Bool)

(declare-fun array_inv!2121 (array!6631) Bool)

(declare-fun array_inv!2122 (array!6633) Bool)

(assert (=> b!1872922 (= e!1194884 (and tp!532666 tp_is_empty!8823 (array_inv!2121 (_keys!2221 (v!26150 (underlying!4044 thiss!47421)))) (array_inv!2122 (_values!2204 (v!26150 (underlying!4044 thiss!47421)))) e!1194882))))

(declare-fun b!1872923 () Bool)

(declare-fun res!838199 () Bool)

(assert (=> b!1872923 (=> (not res!838199) (not e!1194885))))

(get-info :version)

(assert (=> b!1872923 (= res!838199 ((_ is LongMap!1924) thiss!47421))))

(declare-fun b!1872924 () Bool)

(declare-fun mapRes!8930 () Bool)

(assert (=> b!1872924 (= e!1194882 (and tp_is_empty!8823 mapRes!8930))))

(declare-fun condMapEmpty!8930 () Bool)

(declare-fun mapDefault!8930 () V!3997)

(assert (=> b!1872924 (= condMapEmpty!8930 (= (arr!2947 (_values!2204 (v!26150 (underlying!4044 thiss!47421)))) ((as const (Array (_ BitVec 32) V!3997)) mapDefault!8930)))))

(declare-fun mapNonEmpty!8930 () Bool)

(declare-fun tp!532667 () Bool)

(assert (=> mapNonEmpty!8930 (= mapRes!8930 (and tp!532667 tp_is_empty!8823))))

(declare-fun mapValue!8930 () V!3997)

(declare-fun mapRest!8930 () (Array (_ BitVec 32) V!3997))

(declare-fun mapKey!8930 () (_ BitVec 32))

(assert (=> mapNonEmpty!8930 (= (arr!2947 (_values!2204 (v!26150 (underlying!4044 thiss!47421)))) (store mapRest!8930 mapKey!8930 mapValue!8930))))

(declare-fun mapIsEmpty!8930 () Bool)

(assert (=> mapIsEmpty!8930 mapRes!8930))

(assert (= (and start!187670 res!838198) b!1872923))

(assert (= (and b!1872923 res!838199) b!1872919))

(assert (= (and b!1872924 condMapEmpty!8930) mapIsEmpty!8930))

(assert (= (and b!1872924 (not condMapEmpty!8930)) mapNonEmpty!8930))

(assert (= b!1872922 b!1872924))

(assert (= b!1872921 b!1872922))

(assert (= b!1872920 b!1872921))

(assert (= (and start!187670 ((_ is LongMap!1924) thiss!47421)) b!1872920))

(declare-fun m!2298629 () Bool)

(assert (=> b!1872919 m!2298629))

(declare-fun m!2298631 () Bool)

(assert (=> b!1872919 m!2298631))

(assert (=> b!1872919 m!2298631))

(declare-fun m!2298633 () Bool)

(assert (=> b!1872919 m!2298633))

(declare-fun m!2298635 () Bool)

(assert (=> start!187670 m!2298635))

(declare-fun m!2298637 () Bool)

(assert (=> b!1872922 m!2298637))

(declare-fun m!2298639 () Bool)

(assert (=> b!1872922 m!2298639))

(declare-fun m!2298641 () Bool)

(assert (=> mapNonEmpty!8930 m!2298641))

(check-sat (not b!1872922) b_and!144301 (not mapNonEmpty!8930) (not start!187670) tp_is_empty!8823 (not b!1872919) (not b_next!52719))
(check-sat b_and!144301 (not b_next!52719))
(get-model)

(declare-fun d!572599 () Bool)

(declare-fun lt!719750 () Bool)

(declare-fun map!4440 (MutLongMap!1924) ListLongMap!229)

(assert (=> d!572599 (= lt!719750 (contains!3812 (map!4440 thiss!47421) key!7039))))

(declare-fun contains!3813 (LongMapFixedSize!3848 (_ BitVec 64)) Bool)

(assert (=> d!572599 (= lt!719750 (contains!3813 (v!26150 (underlying!4044 thiss!47421)) key!7039))))

(declare-fun valid!1554 (MutLongMap!1924) Bool)

(assert (=> d!572599 (valid!1554 thiss!47421)))

(assert (=> d!572599 (= (contains!3811 thiss!47421 key!7039) lt!719750)))

(declare-fun bs!412110 () Bool)

(assert (= bs!412110 d!572599))

(declare-fun m!2298643 () Bool)

(assert (=> bs!412110 m!2298643))

(assert (=> bs!412110 m!2298643))

(declare-fun m!2298645 () Bool)

(assert (=> bs!412110 m!2298645))

(declare-fun m!2298647 () Bool)

(assert (=> bs!412110 m!2298647))

(declare-fun m!2298649 () Bool)

(assert (=> bs!412110 m!2298649))

(assert (=> b!1872919 d!572599))

(declare-fun d!572601 () Bool)

(declare-fun e!1194890 () Bool)

(assert (=> d!572601 e!1194890))

(declare-fun res!838202 () Bool)

(assert (=> d!572601 (=> res!838202 e!1194890)))

(declare-fun lt!719762 () Bool)

(assert (=> d!572601 (= res!838202 (not lt!719762))))

(declare-fun lt!719759 () Bool)

(assert (=> d!572601 (= lt!719762 lt!719759)))

(declare-datatypes ((Unit!35345 0))(
  ( (Unit!35346) )
))
(declare-fun lt!719761 () Unit!35345)

(declare-fun e!1194891 () Unit!35345)

(assert (=> d!572601 (= lt!719761 e!1194891)))

(declare-fun c!305308 () Bool)

(assert (=> d!572601 (= c!305308 lt!719759)))

(declare-fun containsKey!40 (List!20841 (_ BitVec 64)) Bool)

(assert (=> d!572601 (= lt!719759 (containsKey!40 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(assert (=> d!572601 (= (contains!3812 (abstractMap!73 thiss!47421) key!7039) lt!719762)))

(declare-fun b!1872931 () Bool)

(declare-fun lt!719760 () Unit!35345)

(assert (=> b!1872931 (= e!1194891 lt!719760)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!21 (List!20841 (_ BitVec 64)) Unit!35345)

(assert (=> b!1872931 (= lt!719760 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(declare-datatypes ((Option!4237 0))(
  ( (None!4236) (Some!4236 (v!26151 V!3997)) )
))
(declare-fun isDefined!3537 (Option!4237) Bool)

(declare-fun getValueByKey!31 (List!20841 (_ BitVec 64)) Option!4237)

(assert (=> b!1872931 (isDefined!3537 (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(declare-fun b!1872932 () Bool)

(declare-fun Unit!35347 () Unit!35345)

(assert (=> b!1872932 (= e!1194891 Unit!35347)))

(declare-fun b!1872933 () Bool)

(assert (=> b!1872933 (= e!1194890 (isDefined!3537 (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039)))))

(assert (= (and d!572601 c!305308) b!1872931))

(assert (= (and d!572601 (not c!305308)) b!1872932))

(assert (= (and d!572601 (not res!838202)) b!1872933))

(declare-fun m!2298651 () Bool)

(assert (=> d!572601 m!2298651))

(declare-fun m!2298653 () Bool)

(assert (=> b!1872931 m!2298653))

(declare-fun m!2298655 () Bool)

(assert (=> b!1872931 m!2298655))

(assert (=> b!1872931 m!2298655))

(declare-fun m!2298657 () Bool)

(assert (=> b!1872931 m!2298657))

(assert (=> b!1872933 m!2298655))

(assert (=> b!1872933 m!2298655))

(assert (=> b!1872933 m!2298657))

(assert (=> b!1872919 d!572601))

(declare-fun d!572603 () Bool)

(declare-fun c!305311 () Bool)

(assert (=> d!572603 (= c!305311 ((_ is LongMap!1924) thiss!47421))))

(declare-fun e!1194894 () ListLongMap!229)

(assert (=> d!572603 (= (abstractMap!73 thiss!47421) e!1194894)))

(declare-fun b!1872938 () Bool)

(declare-fun abstractMap!74 (MutLongMap!1924) ListLongMap!229)

(assert (=> b!1872938 (= e!1194894 (abstractMap!74 thiss!47421))))

(declare-fun b!1872939 () Bool)

(declare-fun abstractMap!75 (MutLongMap!1924) ListLongMap!229)

(assert (=> b!1872939 (= e!1194894 (abstractMap!75 thiss!47421))))

(assert (= (and d!572603 c!305311) b!1872938))

(assert (= (and d!572603 (not c!305311)) b!1872939))

(declare-fun m!2298659 () Bool)

(assert (=> b!1872938 m!2298659))

(declare-fun m!2298661 () Bool)

(assert (=> b!1872939 m!2298661))

(assert (=> b!1872919 d!572603))

(declare-fun d!572605 () Bool)

(assert (=> d!572605 (= (array_inv!2121 (_keys!2221 (v!26150 (underlying!4044 thiss!47421)))) (bvsge (size!16488 (_keys!2221 (v!26150 (underlying!4044 thiss!47421)))) #b00000000000000000000000000000000))))

(assert (=> b!1872922 d!572605))

(declare-fun d!572607 () Bool)

(assert (=> d!572607 (= (array_inv!2122 (_values!2204 (v!26150 (underlying!4044 thiss!47421)))) (bvsge (size!16489 (_values!2204 (v!26150 (underlying!4044 thiss!47421)))) #b00000000000000000000000000000000))))

(assert (=> b!1872922 d!572607))

(declare-fun d!572609 () Bool)

(declare-fun c!305314 () Bool)

(assert (=> d!572609 (= c!305314 ((_ is LongMap!1924) thiss!47421))))

(declare-fun e!1194897 () Bool)

(assert (=> d!572609 (= (valid!1553 thiss!47421) e!1194897)))

(declare-fun b!1872944 () Bool)

(assert (=> b!1872944 (= e!1194897 (valid!1554 thiss!47421))))

(declare-fun b!1872945 () Bool)

(declare-fun valid!1555 (MutLongMap!1924) Bool)

(assert (=> b!1872945 (= e!1194897 (valid!1555 thiss!47421))))

(assert (= (and d!572609 c!305314) b!1872944))

(assert (= (and d!572609 (not c!305314)) b!1872945))

(assert (=> b!1872944 m!2298649))

(declare-fun m!2298663 () Bool)

(assert (=> b!1872945 m!2298663))

(assert (=> start!187670 d!572609))

(declare-fun condMapEmpty!8933 () Bool)

(declare-fun mapDefault!8933 () V!3997)

(assert (=> mapNonEmpty!8930 (= condMapEmpty!8933 (= mapRest!8930 ((as const (Array (_ BitVec 32) V!3997)) mapDefault!8933)))))

(declare-fun mapRes!8933 () Bool)

(assert (=> mapNonEmpty!8930 (= tp!532667 (and tp_is_empty!8823 mapRes!8933))))

(declare-fun mapIsEmpty!8933 () Bool)

(assert (=> mapIsEmpty!8933 mapRes!8933))

(declare-fun mapNonEmpty!8933 () Bool)

(declare-fun tp!532670 () Bool)

(assert (=> mapNonEmpty!8933 (= mapRes!8933 (and tp!532670 tp_is_empty!8823))))

(declare-fun mapKey!8933 () (_ BitVec 32))

(declare-fun mapValue!8933 () V!3997)

(declare-fun mapRest!8933 () (Array (_ BitVec 32) V!3997))

(assert (=> mapNonEmpty!8933 (= mapRest!8930 (store mapRest!8933 mapKey!8933 mapValue!8933))))

(assert (= (and mapNonEmpty!8930 condMapEmpty!8933) mapIsEmpty!8933))

(assert (= (and mapNonEmpty!8930 (not condMapEmpty!8933)) mapNonEmpty!8933))

(declare-fun m!2298665 () Bool)

(assert (=> mapNonEmpty!8933 m!2298665))

(check-sat (not b!1872938) (not d!572599) (not b!1872939) (not b!1872945) (not b!1872944) b_and!144301 (not mapNonEmpty!8933) tp_is_empty!8823 (not b!1872933) (not b_next!52719) (not b!1872931) (not d!572601))
(check-sat b_and!144301 (not b_next!52719))
(get-model)

(declare-fun d!572611 () Bool)

(assert (=> d!572611 (isDefined!3537 (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(declare-fun lt!719765 () Unit!35345)

(declare-fun choose!11758 (List!20841 (_ BitVec 64)) Unit!35345)

(assert (=> d!572611 (= lt!719765 (choose!11758 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(declare-fun e!1194900 () Bool)

(assert (=> d!572611 e!1194900))

(declare-fun res!838205 () Bool)

(assert (=> d!572611 (=> (not res!838205) (not e!1194900))))

(declare-fun isStrictlySorted!5 (List!20841) Bool)

(assert (=> d!572611 (= res!838205 (isStrictlySorted!5 (toList!1000 (abstractMap!73 thiss!47421))))))

(assert (=> d!572611 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!1000 (abstractMap!73 thiss!47421)) key!7039) lt!719765)))

(declare-fun b!1872950 () Bool)

(assert (=> b!1872950 (= e!1194900 (containsKey!40 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))

(assert (= (and d!572611 res!838205) b!1872950))

(assert (=> d!572611 m!2298655))

(assert (=> d!572611 m!2298655))

(assert (=> d!572611 m!2298657))

(declare-fun m!2298667 () Bool)

(assert (=> d!572611 m!2298667))

(declare-fun m!2298669 () Bool)

(assert (=> d!572611 m!2298669))

(assert (=> b!1872950 m!2298651))

(assert (=> b!1872931 d!572611))

(declare-fun d!572613 () Bool)

(declare-fun isEmpty!12958 (Option!4237) Bool)

(assert (=> d!572613 (= (isDefined!3537 (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039)) (not (isEmpty!12958 (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039))))))

(declare-fun bs!412111 () Bool)

(assert (= bs!412111 d!572613))

(assert (=> bs!412111 m!2298655))

(declare-fun m!2298671 () Bool)

(assert (=> bs!412111 m!2298671))

(assert (=> b!1872931 d!572613))

(declare-fun b!1872960 () Bool)

(declare-fun e!1194905 () Option!4237)

(declare-fun e!1194906 () Option!4237)

(assert (=> b!1872960 (= e!1194905 e!1194906)))

(declare-fun c!305320 () Bool)

(assert (=> b!1872960 (= c!305320 (and ((_ is Cons!20759) (toList!1000 (abstractMap!73 thiss!47421))) (not (= (_1!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421)))) key!7039))))))

(declare-fun d!572615 () Bool)

(declare-fun c!305319 () Bool)

(assert (=> d!572615 (= c!305319 (and ((_ is Cons!20759) (toList!1000 (abstractMap!73 thiss!47421))) (= (_1!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421)))) key!7039)))))

(assert (=> d!572615 (= (getValueByKey!31 (toList!1000 (abstractMap!73 thiss!47421)) key!7039) e!1194905)))

(declare-fun b!1872961 () Bool)

(assert (=> b!1872961 (= e!1194906 (getValueByKey!31 (t!173058 (toList!1000 (abstractMap!73 thiss!47421))) key!7039))))

(declare-fun b!1872962 () Bool)

(assert (=> b!1872962 (= e!1194906 None!4236)))

(declare-fun b!1872959 () Bool)

(assert (=> b!1872959 (= e!1194905 (Some!4236 (_2!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421))))))))

(assert (= (and d!572615 c!305319) b!1872959))

(assert (= (and d!572615 (not c!305319)) b!1872960))

(assert (= (and b!1872960 c!305320) b!1872961))

(assert (= (and b!1872960 (not c!305320)) b!1872962))

(declare-fun m!2298673 () Bool)

(assert (=> b!1872961 m!2298673))

(assert (=> b!1872931 d!572615))

(declare-fun d!572617 () Bool)

(declare-fun e!1194907 () Bool)

(assert (=> d!572617 e!1194907))

(declare-fun res!838206 () Bool)

(assert (=> d!572617 (=> res!838206 e!1194907)))

(declare-fun lt!719769 () Bool)

(assert (=> d!572617 (= res!838206 (not lt!719769))))

(declare-fun lt!719766 () Bool)

(assert (=> d!572617 (= lt!719769 lt!719766)))

(declare-fun lt!719768 () Unit!35345)

(declare-fun e!1194908 () Unit!35345)

(assert (=> d!572617 (= lt!719768 e!1194908)))

(declare-fun c!305321 () Bool)

(assert (=> d!572617 (= c!305321 lt!719766)))

(assert (=> d!572617 (= lt!719766 (containsKey!40 (toList!1000 (map!4440 thiss!47421)) key!7039))))

(assert (=> d!572617 (= (contains!3812 (map!4440 thiss!47421) key!7039) lt!719769)))

(declare-fun b!1872963 () Bool)

(declare-fun lt!719767 () Unit!35345)

(assert (=> b!1872963 (= e!1194908 lt!719767)))

(assert (=> b!1872963 (= lt!719767 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!1000 (map!4440 thiss!47421)) key!7039))))

(assert (=> b!1872963 (isDefined!3537 (getValueByKey!31 (toList!1000 (map!4440 thiss!47421)) key!7039))))

(declare-fun b!1872964 () Bool)

(declare-fun Unit!35348 () Unit!35345)

(assert (=> b!1872964 (= e!1194908 Unit!35348)))

(declare-fun b!1872965 () Bool)

(assert (=> b!1872965 (= e!1194907 (isDefined!3537 (getValueByKey!31 (toList!1000 (map!4440 thiss!47421)) key!7039)))))

(assert (= (and d!572617 c!305321) b!1872963))

(assert (= (and d!572617 (not c!305321)) b!1872964))

(assert (= (and d!572617 (not res!838206)) b!1872965))

(declare-fun m!2298675 () Bool)

(assert (=> d!572617 m!2298675))

(declare-fun m!2298677 () Bool)

(assert (=> b!1872963 m!2298677))

(declare-fun m!2298679 () Bool)

(assert (=> b!1872963 m!2298679))

(assert (=> b!1872963 m!2298679))

(declare-fun m!2298681 () Bool)

(assert (=> b!1872963 m!2298681))

(assert (=> b!1872965 m!2298679))

(assert (=> b!1872965 m!2298679))

(assert (=> b!1872965 m!2298681))

(assert (=> d!572599 d!572617))

(declare-fun d!572619 () Bool)

(declare-fun map!4441 (LongMapFixedSize!3848) ListLongMap!229)

(assert (=> d!572619 (= (map!4440 thiss!47421) (map!4441 (v!26150 (underlying!4044 thiss!47421))))))

(declare-fun bs!412112 () Bool)

(assert (= bs!412112 d!572619))

(declare-fun m!2298683 () Bool)

(assert (=> bs!412112 m!2298683))

(assert (=> d!572599 d!572619))

(declare-fun bm!116091 () Bool)

(declare-fun call!116096 () ListLongMap!229)

(declare-fun getCurrentListMap!11 (array!6631 array!6633 (_ BitVec 32) (_ BitVec 32) V!3997 V!3997 (_ BitVec 32) Int) ListLongMap!229)

(assert (=> bm!116091 (= call!116096 (getCurrentListMap!11 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (_values!2204 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421))) (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) (zeroValue!2182 (v!26150 (underlying!4044 thiss!47421))) (minValue!2182 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000000 (defaultEntry!2289 (v!26150 (underlying!4044 thiss!47421)))))))

(declare-datatypes ((SeekEntryResult!10 0))(
  ( (Found!10 (index!1081 (_ BitVec 32))) (Undefined!10) (MissingZero!10 (index!1082 (_ BitVec 32))) (MissingVacant!10 (index!1083 (_ BitVec 32))) (Intermediate!10 (undefined!91 Bool) (index!1084 (_ BitVec 32)) (x!374486 (_ BitVec 32))) )
))
(declare-fun lt!719805 () SeekEntryResult!10)

(declare-fun bm!116092 () Bool)

(declare-fun c!305332 () Bool)

(declare-fun call!116097 () Bool)

(assert (=> bm!116092 (= call!116097 (contains!3812 call!116096 (ite c!305332 (select (arr!2946 (_keys!2221 (v!26150 (underlying!4044 thiss!47421)))) (index!1081 lt!719805)) key!7039)))))

(declare-fun b!1872986 () Bool)

(declare-fun e!1194919 () Bool)

(assert (=> b!1872986 (= e!1194919 false)))

(declare-fun c!305336 () Bool)

(assert (=> b!1872986 (= c!305336 call!116097)))

(declare-fun lt!719801 () Unit!35345)

(declare-fun e!1194923 () Unit!35345)

(assert (=> b!1872986 (= lt!719801 e!1194923)))

(declare-fun b!1872987 () Bool)

(declare-fun e!1194922 () Bool)

(declare-fun e!1194920 () Bool)

(assert (=> b!1872987 (= e!1194922 e!1194920)))

(declare-fun c!305333 () Bool)

(assert (=> b!1872987 (= c!305333 (= key!7039 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1872988 () Bool)

(assert (=> b!1872988 (= e!1194919 true)))

(declare-fun lt!719807 () Unit!35345)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6631 (_ BitVec 64) (_ BitVec 32)) Unit!35345)

(assert (=> b!1872988 (= lt!719807 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) key!7039 (index!1081 lt!719805)))))

(declare-fun call!116098 () Bool)

(assert (=> b!1872988 call!116098))

(declare-fun lt!719803 () Unit!35345)

(assert (=> b!1872988 (= lt!719803 lt!719807)))

(declare-fun lt!719806 () Unit!35345)

(declare-fun lemmaValidKeyInArrayIsInListMap!4 (array!6631 array!6633 (_ BitVec 32) (_ BitVec 32) V!3997 V!3997 (_ BitVec 32) Int) Unit!35345)

(assert (=> b!1872988 (= lt!719806 (lemmaValidKeyInArrayIsInListMap!4 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (_values!2204 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421))) (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) (zeroValue!2182 (v!26150 (underlying!4044 thiss!47421))) (minValue!2182 (v!26150 (underlying!4044 thiss!47421))) (index!1081 lt!719805) (defaultEntry!2289 (v!26150 (underlying!4044 thiss!47421)))))))

(assert (=> b!1872988 call!116097))

(declare-fun lt!719813 () Unit!35345)

(assert (=> b!1872988 (= lt!719813 lt!719806)))

(declare-fun b!1872989 () Bool)

(assert (=> b!1872989 (= e!1194922 (not (= (bvand (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1872990 () Bool)

(declare-fun Unit!35349 () Unit!35345)

(assert (=> b!1872990 (= e!1194923 Unit!35349)))

(declare-fun b!1872991 () Bool)

(assert (=> b!1872991 false))

(declare-fun lt!719812 () Unit!35345)

(declare-fun lt!719802 () Unit!35345)

(assert (=> b!1872991 (= lt!719812 lt!719802)))

(declare-fun lt!719811 () SeekEntryResult!10)

(declare-fun lt!719800 () (_ BitVec 32))

(assert (=> b!1872991 (and ((_ is Found!10) lt!719811) (= (index!1081 lt!719811) lt!719800))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!6631 (_ BitVec 32)) SeekEntryResult!10)

(assert (=> b!1872991 (= lt!719811 (seekEntry!0 key!7039 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421)))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!6631 (_ BitVec 32)) Unit!35345)

(assert (=> b!1872991 (= lt!719802 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!7039 lt!719800 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421)))))))

(declare-fun lt!719809 () Unit!35345)

(declare-fun lt!719810 () Unit!35345)

(assert (=> b!1872991 (= lt!719809 lt!719810)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6631 (_ BitVec 32)) Bool)

(assert (=> b!1872991 (arrayForallSeekEntryOrOpenFound!0 lt!719800 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!6631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!35345)

(assert (=> b!1872991 (= lt!719810 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000000 lt!719800))))

(declare-fun arrayScanForKey!0 (array!6631 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1872991 (= lt!719800 (arrayScanForKey!0 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) key!7039 #b00000000000000000000000000000000))))

(declare-fun lt!719808 () Unit!35345)

(declare-fun lt!719814 () Unit!35345)

(assert (=> b!1872991 (= lt!719808 lt!719814)))

(declare-fun e!1194921 () Bool)

(assert (=> b!1872991 e!1194921))

(declare-fun c!305335 () Bool)

(assert (=> b!1872991 (= c!305335 (and (not (= key!7039 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!7039 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!10 (array!6631 array!6633 (_ BitVec 32) (_ BitVec 32) V!3997 V!3997 (_ BitVec 64) Int) Unit!35345)

(assert (=> b!1872991 (= lt!719814 (lemmaKeyInListMapIsInArray!10 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (_values!2204 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421))) (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) (zeroValue!2182 (v!26150 (underlying!4044 thiss!47421))) (minValue!2182 (v!26150 (underlying!4044 thiss!47421))) key!7039 (defaultEntry!2289 (v!26150 (underlying!4044 thiss!47421)))))))

(declare-fun Unit!35350 () Unit!35345)

(assert (=> b!1872991 (= e!1194923 Unit!35350)))

(declare-fun b!1872992 () Bool)

(assert (=> b!1872992 (= e!1194921 call!116098)))

(declare-fun d!572621 () Bool)

(declare-fun lt!719804 () Bool)

(assert (=> d!572621 (= lt!719804 (contains!3812 (map!4441 (v!26150 (underlying!4044 thiss!47421))) key!7039))))

(assert (=> d!572621 (= lt!719804 e!1194922)))

(declare-fun c!305334 () Bool)

(assert (=> d!572621 (= c!305334 (= key!7039 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun valid!1556 (LongMapFixedSize!3848) Bool)

(assert (=> d!572621 (valid!1556 (v!26150 (underlying!4044 thiss!47421)))))

(assert (=> d!572621 (= (contains!3813 (v!26150 (underlying!4044 thiss!47421)) key!7039) lt!719804)))

(declare-fun b!1872993 () Bool)

(assert (=> b!1872993 (= c!305332 ((_ is Found!10) lt!719805))))

(assert (=> b!1872993 (= lt!719805 (seekEntry!0 key!7039 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) (mask!5719 (v!26150 (underlying!4044 thiss!47421)))))))

(assert (=> b!1872993 (= e!1194920 e!1194919)))

(declare-fun bm!116093 () Bool)

(declare-fun arrayContainsKey!0 (array!6631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!116093 (= call!116098 (arrayContainsKey!0 (_keys!2221 (v!26150 (underlying!4044 thiss!47421))) key!7039 #b00000000000000000000000000000000))))

(declare-fun b!1872994 () Bool)

(assert (=> b!1872994 (= e!1194921 (ite (= key!7039 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1872995 () Bool)

(assert (=> b!1872995 (= e!1194920 (not (= (bvand (extraKeys!2172 (v!26150 (underlying!4044 thiss!47421))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!572621 c!305334) b!1872989))

(assert (= (and d!572621 (not c!305334)) b!1872987))

(assert (= (and b!1872987 c!305333) b!1872995))

(assert (= (and b!1872987 (not c!305333)) b!1872993))

(assert (= (and b!1872993 c!305332) b!1872988))

(assert (= (and b!1872993 (not c!305332)) b!1872986))

(assert (= (and b!1872986 c!305336) b!1872991))

(assert (= (and b!1872986 (not c!305336)) b!1872990))

(assert (= (and b!1872991 c!305335) b!1872992))

(assert (= (and b!1872991 (not c!305335)) b!1872994))

(assert (= (or b!1872988 b!1872992) bm!116093))

(assert (= (or b!1872988 b!1872986) bm!116091))

(assert (= (or b!1872988 b!1872986) bm!116092))

(declare-fun m!2298685 () Bool)

(assert (=> bm!116091 m!2298685))

(declare-fun m!2298687 () Bool)

(assert (=> b!1872988 m!2298687))

(declare-fun m!2298689 () Bool)

(assert (=> b!1872988 m!2298689))

(declare-fun m!2298691 () Bool)

(assert (=> b!1872993 m!2298691))

(declare-fun m!2298693 () Bool)

(assert (=> bm!116093 m!2298693))

(assert (=> d!572621 m!2298683))

(assert (=> d!572621 m!2298683))

(declare-fun m!2298695 () Bool)

(assert (=> d!572621 m!2298695))

(declare-fun m!2298697 () Bool)

(assert (=> d!572621 m!2298697))

(declare-fun m!2298699 () Bool)

(assert (=> bm!116092 m!2298699))

(declare-fun m!2298701 () Bool)

(assert (=> bm!116092 m!2298701))

(declare-fun m!2298703 () Bool)

(assert (=> b!1872991 m!2298703))

(declare-fun m!2298705 () Bool)

(assert (=> b!1872991 m!2298705))

(declare-fun m!2298707 () Bool)

(assert (=> b!1872991 m!2298707))

(declare-fun m!2298709 () Bool)

(assert (=> b!1872991 m!2298709))

(declare-fun m!2298711 () Bool)

(assert (=> b!1872991 m!2298711))

(assert (=> b!1872991 m!2298691))

(assert (=> d!572599 d!572621))

(declare-fun d!572623 () Bool)

(assert (=> d!572623 (= (valid!1554 thiss!47421) (valid!1556 (v!26150 (underlying!4044 thiss!47421))))))

(declare-fun bs!412113 () Bool)

(assert (= bs!412113 d!572623))

(assert (=> bs!412113 m!2298697))

(assert (=> d!572599 d!572623))

(declare-fun d!572625 () Bool)

(declare-fun choose!11759 (MutLongMap!1924) ListLongMap!229)

(assert (=> d!572625 (= (abstractMap!75 thiss!47421) (choose!11759 thiss!47421))))

(declare-fun bs!412114 () Bool)

(assert (= bs!412114 d!572625))

(declare-fun m!2298713 () Bool)

(assert (=> bs!412114 m!2298713))

(assert (=> b!1872939 d!572625))

(assert (=> b!1872944 d!572623))

(declare-fun d!572627 () Bool)

(declare-fun choose!11760 (MutLongMap!1924) Bool)

(assert (=> d!572627 (= (valid!1555 thiss!47421) (choose!11760 thiss!47421))))

(declare-fun bs!412115 () Bool)

(assert (= bs!412115 d!572627))

(declare-fun m!2298715 () Bool)

(assert (=> bs!412115 m!2298715))

(assert (=> b!1872945 d!572627))

(declare-fun d!572629 () Bool)

(assert (=> d!572629 (= (abstractMap!74 thiss!47421) (map!4440 thiss!47421))))

(declare-fun bs!412116 () Bool)

(assert (= bs!412116 d!572629))

(assert (=> bs!412116 m!2298643))

(assert (=> b!1872938 d!572629))

(declare-fun d!572631 () Bool)

(declare-fun res!838211 () Bool)

(declare-fun e!1194928 () Bool)

(assert (=> d!572631 (=> res!838211 e!1194928)))

(assert (=> d!572631 (= res!838211 (and ((_ is Cons!20759) (toList!1000 (abstractMap!73 thiss!47421))) (= (_1!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421)))) key!7039)))))

(assert (=> d!572631 (= (containsKey!40 (toList!1000 (abstractMap!73 thiss!47421)) key!7039) e!1194928)))

(declare-fun b!1873000 () Bool)

(declare-fun e!1194929 () Bool)

(assert (=> b!1873000 (= e!1194928 e!1194929)))

(declare-fun res!838212 () Bool)

(assert (=> b!1873000 (=> (not res!838212) (not e!1194929))))

(assert (=> b!1873000 (= res!838212 (and (or (not ((_ is Cons!20759) (toList!1000 (abstractMap!73 thiss!47421)))) (bvsle (_1!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421)))) key!7039)) ((_ is Cons!20759) (toList!1000 (abstractMap!73 thiss!47421))) (bvslt (_1!11381 (h!26160 (toList!1000 (abstractMap!73 thiss!47421)))) key!7039)))))

(declare-fun b!1873001 () Bool)

(assert (=> b!1873001 (= e!1194929 (containsKey!40 (t!173058 (toList!1000 (abstractMap!73 thiss!47421))) key!7039))))

(assert (= (and d!572631 (not res!838211)) b!1873000))

(assert (= (and b!1873000 res!838212) b!1873001))

(declare-fun m!2298717 () Bool)

(assert (=> b!1873001 m!2298717))

(assert (=> d!572601 d!572631))

(assert (=> b!1872933 d!572613))

(assert (=> b!1872933 d!572615))

(declare-fun condMapEmpty!8934 () Bool)

(declare-fun mapDefault!8934 () V!3997)

(assert (=> mapNonEmpty!8933 (= condMapEmpty!8934 (= mapRest!8933 ((as const (Array (_ BitVec 32) V!3997)) mapDefault!8934)))))

(declare-fun mapRes!8934 () Bool)

(assert (=> mapNonEmpty!8933 (= tp!532670 (and tp_is_empty!8823 mapRes!8934))))

(declare-fun mapIsEmpty!8934 () Bool)

(assert (=> mapIsEmpty!8934 mapRes!8934))

(declare-fun mapNonEmpty!8934 () Bool)

(declare-fun tp!532671 () Bool)

(assert (=> mapNonEmpty!8934 (= mapRes!8934 (and tp!532671 tp_is_empty!8823))))

(declare-fun mapValue!8934 () V!3997)

(declare-fun mapKey!8934 () (_ BitVec 32))

(declare-fun mapRest!8934 () (Array (_ BitVec 32) V!3997))

(assert (=> mapNonEmpty!8934 (= mapRest!8933 (store mapRest!8934 mapKey!8934 mapValue!8934))))

(assert (= (and mapNonEmpty!8933 condMapEmpty!8934) mapIsEmpty!8934))

(assert (= (and mapNonEmpty!8933 (not condMapEmpty!8934)) mapNonEmpty!8934))

(declare-fun m!2298719 () Bool)

(assert (=> mapNonEmpty!8934 m!2298719))

(check-sat (not d!572617) (not bm!116091) (not b!1872961) (not d!572611) (not bm!116092) b_and!144301 (not d!572623) (not bm!116093) (not b!1872963) (not b!1872950) tp_is_empty!8823 (not d!572621) (not d!572627) (not d!572613) (not b!1872993) (not b!1872988) (not b!1872991) (not b!1872965) (not mapNonEmpty!8934) (not d!572625) (not d!572619) (not b!1873001) (not b_next!52719) (not d!572629))
(check-sat b_and!144301 (not b_next!52719))
