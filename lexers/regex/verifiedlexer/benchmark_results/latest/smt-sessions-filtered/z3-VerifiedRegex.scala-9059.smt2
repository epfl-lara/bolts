; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486244 () Bool)

(assert start!486244)

(declare-datatypes ((K!14700 0))(
  ( (K!14701 (val!20031 Int)) )
))
(declare-datatypes ((V!14946 0))(
  ( (V!14947 (val!20032 Int)) )
))
(declare-datatypes ((tuple2!55000 0))(
  ( (tuple2!55001 (_1!30794 K!14700) (_2!30794 V!14946)) )
))
(declare-datatypes ((List!53284 0))(
  ( (Nil!53160) (Cons!53160 (h!59557 tuple2!55000) (t!360628 List!53284)) )
))
(declare-datatypes ((ListMap!5685 0))(
  ( (ListMap!5686 (toList!6188 List!53284)) )
))
(declare-fun lhm1!51 () ListMap!5685)

(declare-fun b!4755886 () Bool)

(declare-fun l!13115 () List!53284)

(declare-fun e!2966934 () Bool)

(declare-fun lhm2!51 () ListMap!5685)

(declare-fun eq!1283 (ListMap!5685 ListMap!5685) Bool)

(declare-fun addToMapMapFromBucket!1620 (List!53284 ListMap!5685) ListMap!5685)

(assert (=> b!4755886 (= e!2966934 (not (eq!1283 (addToMapMapFromBucket!1620 l!13115 lhm1!51) (addToMapMapFromBucket!1620 l!13115 lhm2!51))))))

(declare-fun res!2017659 () Bool)

(assert (=> start!486244 (=> (not res!2017659) (not e!2966934))))

(declare-fun noDuplicateKeys!2220 (List!53284) Bool)

(assert (=> start!486244 (= res!2017659 (noDuplicateKeys!2220 l!13115))))

(assert (=> start!486244 e!2966934))

(declare-fun e!2966932 () Bool)

(assert (=> start!486244 e!2966932))

(declare-fun e!2966933 () Bool)

(declare-fun inv!68570 (ListMap!5685) Bool)

(assert (=> start!486244 (and (inv!68570 lhm1!51) e!2966933)))

(declare-fun e!2966931 () Bool)

(assert (=> start!486244 (and (inv!68570 lhm2!51) e!2966931)))

(declare-fun b!4755887 () Bool)

(declare-fun res!2017661 () Bool)

(assert (=> b!4755887 (=> (not res!2017661) (not e!2966934))))

(get-info :version)

(assert (=> b!4755887 (= res!2017661 (not ((_ is Cons!53160) l!13115)))))

(declare-fun tp_is_empty!32173 () Bool)

(declare-fun tp!1350859 () Bool)

(declare-fun b!4755888 () Bool)

(declare-fun tp_is_empty!32175 () Bool)

(assert (=> b!4755888 (= e!2966932 (and tp_is_empty!32173 tp_is_empty!32175 tp!1350859))))

(declare-fun b!4755889 () Bool)

(declare-fun tp!1350861 () Bool)

(assert (=> b!4755889 (= e!2966931 tp!1350861)))

(declare-fun b!4755890 () Bool)

(declare-fun tp!1350860 () Bool)

(assert (=> b!4755890 (= e!2966933 tp!1350860)))

(declare-fun b!4755891 () Bool)

(declare-fun res!2017660 () Bool)

(assert (=> b!4755891 (=> (not res!2017660) (not e!2966934))))

(assert (=> b!4755891 (= res!2017660 (eq!1283 lhm1!51 lhm2!51))))

(assert (= (and start!486244 res!2017659) b!4755891))

(assert (= (and b!4755891 res!2017660) b!4755887))

(assert (= (and b!4755887 res!2017661) b!4755886))

(assert (= (and start!486244 ((_ is Cons!53160) l!13115)) b!4755888))

(assert (= start!486244 b!4755890))

(assert (= start!486244 b!4755889))

(declare-fun m!5726031 () Bool)

(assert (=> b!4755886 m!5726031))

(declare-fun m!5726033 () Bool)

(assert (=> b!4755886 m!5726033))

(assert (=> b!4755886 m!5726031))

(assert (=> b!4755886 m!5726033))

(declare-fun m!5726035 () Bool)

(assert (=> b!4755886 m!5726035))

(declare-fun m!5726037 () Bool)

(assert (=> start!486244 m!5726037))

(declare-fun m!5726039 () Bool)

(assert (=> start!486244 m!5726039))

(declare-fun m!5726041 () Bool)

(assert (=> start!486244 m!5726041))

(declare-fun m!5726043 () Bool)

(assert (=> b!4755891 m!5726043))

(check-sat tp_is_empty!32173 tp_is_empty!32175 (not b!4755890) (not start!486244) (not b!4755888) (not b!4755886) (not b!4755889) (not b!4755891))
(check-sat)
(get-model)

(declare-fun d!1520750 () Bool)

(declare-fun res!2017666 () Bool)

(declare-fun e!2966939 () Bool)

(assert (=> d!1520750 (=> res!2017666 e!2966939)))

(assert (=> d!1520750 (= res!2017666 (not ((_ is Cons!53160) l!13115)))))

(assert (=> d!1520750 (= (noDuplicateKeys!2220 l!13115) e!2966939)))

(declare-fun b!4755896 () Bool)

(declare-fun e!2966940 () Bool)

(assert (=> b!4755896 (= e!2966939 e!2966940)))

(declare-fun res!2017667 () Bool)

(assert (=> b!4755896 (=> (not res!2017667) (not e!2966940))))

(declare-fun containsKey!3611 (List!53284 K!14700) Bool)

(assert (=> b!4755896 (= res!2017667 (not (containsKey!3611 (t!360628 l!13115) (_1!30794 (h!59557 l!13115)))))))

(declare-fun b!4755897 () Bool)

(assert (=> b!4755897 (= e!2966940 (noDuplicateKeys!2220 (t!360628 l!13115)))))

(assert (= (and d!1520750 (not res!2017666)) b!4755896))

(assert (= (and b!4755896 res!2017667) b!4755897))

(declare-fun m!5726053 () Bool)

(assert (=> b!4755896 m!5726053))

(declare-fun m!5726055 () Bool)

(assert (=> b!4755897 m!5726055))

(assert (=> start!486244 d!1520750))

(declare-fun d!1520756 () Bool)

(declare-fun invariantList!1633 (List!53284) Bool)

(assert (=> d!1520756 (= (inv!68570 lhm1!51) (invariantList!1633 (toList!6188 lhm1!51)))))

(declare-fun bs!1146852 () Bool)

(assert (= bs!1146852 d!1520756))

(declare-fun m!5726057 () Bool)

(assert (=> bs!1146852 m!5726057))

(assert (=> start!486244 d!1520756))

(declare-fun d!1520758 () Bool)

(assert (=> d!1520758 (= (inv!68570 lhm2!51) (invariantList!1633 (toList!6188 lhm2!51)))))

(declare-fun bs!1146853 () Bool)

(assert (= bs!1146853 d!1520758))

(declare-fun m!5726059 () Bool)

(assert (=> bs!1146853 m!5726059))

(assert (=> start!486244 d!1520758))

(declare-fun d!1520760 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9568 (List!53284) (InoxSet tuple2!55000))

(assert (=> d!1520760 (= (eq!1283 lhm1!51 lhm2!51) (= (content!9568 (toList!6188 lhm1!51)) (content!9568 (toList!6188 lhm2!51))))))

(declare-fun bs!1146854 () Bool)

(assert (= bs!1146854 d!1520760))

(declare-fun m!5726061 () Bool)

(assert (=> bs!1146854 m!5726061))

(declare-fun m!5726063 () Bool)

(assert (=> bs!1146854 m!5726063))

(assert (=> b!4755891 d!1520760))

(declare-fun d!1520762 () Bool)

(assert (=> d!1520762 (= (eq!1283 (addToMapMapFromBucket!1620 l!13115 lhm1!51) (addToMapMapFromBucket!1620 l!13115 lhm2!51)) (= (content!9568 (toList!6188 (addToMapMapFromBucket!1620 l!13115 lhm1!51))) (content!9568 (toList!6188 (addToMapMapFromBucket!1620 l!13115 lhm2!51)))))))

(declare-fun bs!1146855 () Bool)

(assert (= bs!1146855 d!1520762))

(declare-fun m!5726065 () Bool)

(assert (=> bs!1146855 m!5726065))

(declare-fun m!5726067 () Bool)

(assert (=> bs!1146855 m!5726067))

(assert (=> b!4755886 d!1520762))

(declare-fun b!4755944 () Bool)

(assert (=> b!4755944 true))

(declare-fun bs!1146873 () Bool)

(declare-fun b!4755947 () Bool)

(assert (= bs!1146873 (and b!4755947 b!4755944)))

(declare-fun lambda!223458 () Int)

(declare-fun lambda!223457 () Int)

(assert (=> bs!1146873 (= lambda!223458 lambda!223457)))

(assert (=> b!4755947 true))

(declare-fun lt!1922934 () ListMap!5685)

(declare-fun lambda!223459 () Int)

(assert (=> bs!1146873 (= (= lt!1922934 lhm1!51) (= lambda!223459 lambda!223457))))

(assert (=> b!4755947 (= (= lt!1922934 lhm1!51) (= lambda!223459 lambda!223458))))

(assert (=> b!4755947 true))

(declare-fun bs!1146874 () Bool)

(declare-fun d!1520764 () Bool)

(assert (= bs!1146874 (and d!1520764 b!4755944)))

(declare-fun lambda!223460 () Int)

(declare-fun lt!1922921 () ListMap!5685)

(assert (=> bs!1146874 (= (= lt!1922921 lhm1!51) (= lambda!223460 lambda!223457))))

(declare-fun bs!1146875 () Bool)

(assert (= bs!1146875 (and d!1520764 b!4755947)))

(assert (=> bs!1146875 (= (= lt!1922921 lhm1!51) (= lambda!223460 lambda!223458))))

(assert (=> bs!1146875 (= (= lt!1922921 lt!1922934) (= lambda!223460 lambda!223459))))

(assert (=> d!1520764 true))

(declare-fun b!4755943 () Bool)

(declare-fun e!2966971 () Bool)

(declare-fun call!333545 () Bool)

(assert (=> b!4755943 (= e!2966971 call!333545)))

(declare-fun e!2966970 () Bool)

(assert (=> d!1520764 e!2966970))

(declare-fun res!2017693 () Bool)

(assert (=> d!1520764 (=> (not res!2017693) (not e!2966970))))

(declare-fun forall!11790 (List!53284 Int) Bool)

(assert (=> d!1520764 (= res!2017693 (forall!11790 l!13115 lambda!223460))))

(declare-fun e!2966972 () ListMap!5685)

(assert (=> d!1520764 (= lt!1922921 e!2966972)))

(declare-fun c!811686 () Bool)

(assert (=> d!1520764 (= c!811686 ((_ is Nil!53160) l!13115))))

(assert (=> d!1520764 (noDuplicateKeys!2220 l!13115)))

(assert (=> d!1520764 (= (addToMapMapFromBucket!1620 l!13115 lhm1!51) lt!1922921)))

(declare-fun bm!333539 () Bool)

(declare-fun call!333544 () Bool)

(assert (=> bm!333539 (= call!333544 (forall!11790 (ite c!811686 (toList!6188 lhm1!51) (t!360628 l!13115)) (ite c!811686 lambda!223457 lambda!223459)))))

(declare-fun bm!333540 () Bool)

(assert (=> bm!333540 (= call!333545 (forall!11790 (toList!6188 lhm1!51) (ite c!811686 lambda!223457 lambda!223459)))))

(assert (=> b!4755944 (= e!2966972 lhm1!51)))

(declare-datatypes ((Unit!137676 0))(
  ( (Unit!137677) )
))
(declare-fun lt!1922925 () Unit!137676)

(declare-fun call!333546 () Unit!137676)

(assert (=> b!4755944 (= lt!1922925 call!333546)))

(assert (=> b!4755944 call!333545))

(declare-fun lt!1922924 () Unit!137676)

(assert (=> b!4755944 (= lt!1922924 lt!1922925)))

(assert (=> b!4755944 call!333544))

(declare-fun lt!1922919 () Unit!137676)

(declare-fun Unit!137678 () Unit!137676)

(assert (=> b!4755944 (= lt!1922919 Unit!137678)))

(declare-fun b!4755945 () Bool)

(declare-fun res!2017692 () Bool)

(assert (=> b!4755945 (=> (not res!2017692) (not e!2966970))))

(assert (=> b!4755945 (= res!2017692 (forall!11790 (toList!6188 lhm1!51) lambda!223460))))

(declare-fun b!4755946 () Bool)

(assert (=> b!4755946 (= e!2966970 (invariantList!1633 (toList!6188 lt!1922921)))))

(assert (=> b!4755947 (= e!2966972 lt!1922934)))

(declare-fun lt!1922920 () ListMap!5685)

(declare-fun +!2448 (ListMap!5685 tuple2!55000) ListMap!5685)

(assert (=> b!4755947 (= lt!1922920 (+!2448 lhm1!51 (h!59557 l!13115)))))

(assert (=> b!4755947 (= lt!1922934 (addToMapMapFromBucket!1620 (t!360628 l!13115) (+!2448 lhm1!51 (h!59557 l!13115))))))

(declare-fun lt!1922922 () Unit!137676)

(assert (=> b!4755947 (= lt!1922922 call!333546)))

(assert (=> b!4755947 (forall!11790 (toList!6188 lhm1!51) lambda!223458)))

(declare-fun lt!1922928 () Unit!137676)

(assert (=> b!4755947 (= lt!1922928 lt!1922922)))

(assert (=> b!4755947 (forall!11790 (toList!6188 lt!1922920) lambda!223459)))

(declare-fun lt!1922915 () Unit!137676)

(declare-fun Unit!137679 () Unit!137676)

(assert (=> b!4755947 (= lt!1922915 Unit!137679)))

(assert (=> b!4755947 call!333544))

(declare-fun lt!1922931 () Unit!137676)

(declare-fun Unit!137680 () Unit!137676)

(assert (=> b!4755947 (= lt!1922931 Unit!137680)))

(declare-fun lt!1922929 () Unit!137676)

(declare-fun Unit!137681 () Unit!137676)

(assert (=> b!4755947 (= lt!1922929 Unit!137681)))

(declare-fun lt!1922918 () Unit!137676)

(declare-fun forallContained!3816 (List!53284 Int tuple2!55000) Unit!137676)

(assert (=> b!4755947 (= lt!1922918 (forallContained!3816 (toList!6188 lt!1922920) lambda!223459 (h!59557 l!13115)))))

(declare-fun contains!16587 (ListMap!5685 K!14700) Bool)

(assert (=> b!4755947 (contains!16587 lt!1922920 (_1!30794 (h!59557 l!13115)))))

(declare-fun lt!1922932 () Unit!137676)

(declare-fun Unit!137682 () Unit!137676)

(assert (=> b!4755947 (= lt!1922932 Unit!137682)))

(assert (=> b!4755947 (contains!16587 lt!1922934 (_1!30794 (h!59557 l!13115)))))

(declare-fun lt!1922930 () Unit!137676)

(declare-fun Unit!137683 () Unit!137676)

(assert (=> b!4755947 (= lt!1922930 Unit!137683)))

(assert (=> b!4755947 (forall!11790 l!13115 lambda!223459)))

(declare-fun lt!1922923 () Unit!137676)

(declare-fun Unit!137684 () Unit!137676)

(assert (=> b!4755947 (= lt!1922923 Unit!137684)))

(assert (=> b!4755947 (forall!11790 (toList!6188 lt!1922920) lambda!223459)))

(declare-fun lt!1922926 () Unit!137676)

(declare-fun Unit!137685 () Unit!137676)

(assert (=> b!4755947 (= lt!1922926 Unit!137685)))

(declare-fun lt!1922914 () Unit!137676)

(declare-fun Unit!137686 () Unit!137676)

(assert (=> b!4755947 (= lt!1922914 Unit!137686)))

(declare-fun lt!1922933 () Unit!137676)

(declare-fun addForallContainsKeyThenBeforeAdding!904 (ListMap!5685 ListMap!5685 K!14700 V!14946) Unit!137676)

(assert (=> b!4755947 (= lt!1922933 (addForallContainsKeyThenBeforeAdding!904 lhm1!51 lt!1922934 (_1!30794 (h!59557 l!13115)) (_2!30794 (h!59557 l!13115))))))

(assert (=> b!4755947 (forall!11790 (toList!6188 lhm1!51) lambda!223459)))

(declare-fun lt!1922916 () Unit!137676)

(assert (=> b!4755947 (= lt!1922916 lt!1922933)))

(assert (=> b!4755947 (forall!11790 (toList!6188 lhm1!51) lambda!223459)))

(declare-fun lt!1922917 () Unit!137676)

(declare-fun Unit!137687 () Unit!137676)

(assert (=> b!4755947 (= lt!1922917 Unit!137687)))

(declare-fun res!2017694 () Bool)

(assert (=> b!4755947 (= res!2017694 (forall!11790 l!13115 lambda!223459))))

(assert (=> b!4755947 (=> (not res!2017694) (not e!2966971))))

(assert (=> b!4755947 e!2966971))

(declare-fun lt!1922927 () Unit!137676)

(declare-fun Unit!137688 () Unit!137676)

(assert (=> b!4755947 (= lt!1922927 Unit!137688)))

(declare-fun bm!333541 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!905 (ListMap!5685) Unit!137676)

(assert (=> bm!333541 (= call!333546 (lemmaContainsAllItsOwnKeys!905 lhm1!51))))

(assert (= (and d!1520764 c!811686) b!4755944))

(assert (= (and d!1520764 (not c!811686)) b!4755947))

(assert (= (and b!4755947 res!2017694) b!4755943))

(assert (= (or b!4755944 b!4755943) bm!333540))

(assert (= (or b!4755944 b!4755947) bm!333539))

(assert (= (or b!4755944 b!4755947) bm!333541))

(assert (= (and d!1520764 res!2017693) b!4755945))

(assert (= (and b!4755945 res!2017692) b!4755946))

(declare-fun m!5726137 () Bool)

(assert (=> b!4755947 m!5726137))

(declare-fun m!5726139 () Bool)

(assert (=> b!4755947 m!5726139))

(declare-fun m!5726141 () Bool)

(assert (=> b!4755947 m!5726141))

(declare-fun m!5726143 () Bool)

(assert (=> b!4755947 m!5726143))

(assert (=> b!4755947 m!5726137))

(declare-fun m!5726145 () Bool)

(assert (=> b!4755947 m!5726145))

(declare-fun m!5726147 () Bool)

(assert (=> b!4755947 m!5726147))

(declare-fun m!5726149 () Bool)

(assert (=> b!4755947 m!5726149))

(declare-fun m!5726151 () Bool)

(assert (=> b!4755947 m!5726151))

(assert (=> b!4755947 m!5726141))

(assert (=> b!4755947 m!5726151))

(declare-fun m!5726153 () Bool)

(assert (=> b!4755947 m!5726153))

(declare-fun m!5726155 () Bool)

(assert (=> b!4755947 m!5726155))

(assert (=> b!4755947 m!5726145))

(declare-fun m!5726157 () Bool)

(assert (=> b!4755945 m!5726157))

(declare-fun m!5726159 () Bool)

(assert (=> b!4755946 m!5726159))

(declare-fun m!5726161 () Bool)

(assert (=> bm!333539 m!5726161))

(declare-fun m!5726163 () Bool)

(assert (=> bm!333540 m!5726163))

(declare-fun m!5726165 () Bool)

(assert (=> bm!333541 m!5726165))

(declare-fun m!5726167 () Bool)

(assert (=> d!1520764 m!5726167))

(assert (=> d!1520764 m!5726037))

(assert (=> b!4755886 d!1520764))

(declare-fun bs!1146876 () Bool)

(declare-fun b!4755951 () Bool)

(assert (= bs!1146876 (and b!4755951 b!4755944)))

(declare-fun lambda!223461 () Int)

(assert (=> bs!1146876 (= (= lhm2!51 lhm1!51) (= lambda!223461 lambda!223457))))

(declare-fun bs!1146877 () Bool)

(assert (= bs!1146877 (and b!4755951 b!4755947)))

(assert (=> bs!1146877 (= (= lhm2!51 lhm1!51) (= lambda!223461 lambda!223458))))

(assert (=> bs!1146877 (= (= lhm2!51 lt!1922934) (= lambda!223461 lambda!223459))))

(declare-fun bs!1146878 () Bool)

(assert (= bs!1146878 (and b!4755951 d!1520764)))

(assert (=> bs!1146878 (= (= lhm2!51 lt!1922921) (= lambda!223461 lambda!223460))))

(assert (=> b!4755951 true))

(declare-fun bs!1146879 () Bool)

(declare-fun b!4755954 () Bool)

(assert (= bs!1146879 (and b!4755954 d!1520764)))

(declare-fun lambda!223462 () Int)

(assert (=> bs!1146879 (= (= lhm2!51 lt!1922921) (= lambda!223462 lambda!223460))))

(declare-fun bs!1146880 () Bool)

(assert (= bs!1146880 (and b!4755954 b!4755944)))

(assert (=> bs!1146880 (= (= lhm2!51 lhm1!51) (= lambda!223462 lambda!223457))))

(declare-fun bs!1146881 () Bool)

(assert (= bs!1146881 (and b!4755954 b!4755947)))

(assert (=> bs!1146881 (= (= lhm2!51 lhm1!51) (= lambda!223462 lambda!223458))))

(assert (=> bs!1146881 (= (= lhm2!51 lt!1922934) (= lambda!223462 lambda!223459))))

(declare-fun bs!1146882 () Bool)

(assert (= bs!1146882 (and b!4755954 b!4755951)))

(assert (=> bs!1146882 (= lambda!223462 lambda!223461)))

(assert (=> b!4755954 true))

(declare-fun lambda!223463 () Int)

(declare-fun lt!1922955 () ListMap!5685)

(assert (=> bs!1146879 (= (= lt!1922955 lt!1922921) (= lambda!223463 lambda!223460))))

(assert (=> b!4755954 (= (= lt!1922955 lhm2!51) (= lambda!223463 lambda!223462))))

(assert (=> bs!1146880 (= (= lt!1922955 lhm1!51) (= lambda!223463 lambda!223457))))

(assert (=> bs!1146881 (= (= lt!1922955 lhm1!51) (= lambda!223463 lambda!223458))))

(assert (=> bs!1146881 (= (= lt!1922955 lt!1922934) (= lambda!223463 lambda!223459))))

(assert (=> bs!1146882 (= (= lt!1922955 lhm2!51) (= lambda!223463 lambda!223461))))

(assert (=> b!4755954 true))

(declare-fun bs!1146883 () Bool)

(declare-fun d!1520774 () Bool)

(assert (= bs!1146883 (and d!1520774 b!4755954)))

(declare-fun lambda!223464 () Int)

(declare-fun lt!1922942 () ListMap!5685)

(assert (=> bs!1146883 (= (= lt!1922942 lt!1922955) (= lambda!223464 lambda!223463))))

(declare-fun bs!1146884 () Bool)

(assert (= bs!1146884 (and d!1520774 d!1520764)))

(assert (=> bs!1146884 (= (= lt!1922942 lt!1922921) (= lambda!223464 lambda!223460))))

(assert (=> bs!1146883 (= (= lt!1922942 lhm2!51) (= lambda!223464 lambda!223462))))

(declare-fun bs!1146885 () Bool)

(assert (= bs!1146885 (and d!1520774 b!4755944)))

(assert (=> bs!1146885 (= (= lt!1922942 lhm1!51) (= lambda!223464 lambda!223457))))

(declare-fun bs!1146886 () Bool)

(assert (= bs!1146886 (and d!1520774 b!4755947)))

(assert (=> bs!1146886 (= (= lt!1922942 lhm1!51) (= lambda!223464 lambda!223458))))

(assert (=> bs!1146886 (= (= lt!1922942 lt!1922934) (= lambda!223464 lambda!223459))))

(declare-fun bs!1146887 () Bool)

(assert (= bs!1146887 (and d!1520774 b!4755951)))

(assert (=> bs!1146887 (= (= lt!1922942 lhm2!51) (= lambda!223464 lambda!223461))))

(assert (=> d!1520774 true))

(declare-fun b!4755950 () Bool)

(declare-fun e!2966974 () Bool)

(declare-fun call!333548 () Bool)

(assert (=> b!4755950 (= e!2966974 call!333548)))

(declare-fun e!2966973 () Bool)

(assert (=> d!1520774 e!2966973))

(declare-fun res!2017696 () Bool)

(assert (=> d!1520774 (=> (not res!2017696) (not e!2966973))))

(assert (=> d!1520774 (= res!2017696 (forall!11790 l!13115 lambda!223464))))

(declare-fun e!2966975 () ListMap!5685)

(assert (=> d!1520774 (= lt!1922942 e!2966975)))

(declare-fun c!811687 () Bool)

(assert (=> d!1520774 (= c!811687 ((_ is Nil!53160) l!13115))))

(assert (=> d!1520774 (noDuplicateKeys!2220 l!13115)))

(assert (=> d!1520774 (= (addToMapMapFromBucket!1620 l!13115 lhm2!51) lt!1922942)))

(declare-fun bm!333542 () Bool)

(declare-fun call!333547 () Bool)

(assert (=> bm!333542 (= call!333547 (forall!11790 (ite c!811687 (toList!6188 lhm2!51) (t!360628 l!13115)) (ite c!811687 lambda!223461 lambda!223463)))))

(declare-fun bm!333543 () Bool)

(assert (=> bm!333543 (= call!333548 (forall!11790 (toList!6188 lhm2!51) (ite c!811687 lambda!223461 lambda!223463)))))

(assert (=> b!4755951 (= e!2966975 lhm2!51)))

(declare-fun lt!1922946 () Unit!137676)

(declare-fun call!333549 () Unit!137676)

(assert (=> b!4755951 (= lt!1922946 call!333549)))

(assert (=> b!4755951 call!333548))

(declare-fun lt!1922945 () Unit!137676)

(assert (=> b!4755951 (= lt!1922945 lt!1922946)))

(assert (=> b!4755951 call!333547))

(declare-fun lt!1922940 () Unit!137676)

(declare-fun Unit!137689 () Unit!137676)

(assert (=> b!4755951 (= lt!1922940 Unit!137689)))

(declare-fun b!4755952 () Bool)

(declare-fun res!2017695 () Bool)

(assert (=> b!4755952 (=> (not res!2017695) (not e!2966973))))

(assert (=> b!4755952 (= res!2017695 (forall!11790 (toList!6188 lhm2!51) lambda!223464))))

(declare-fun b!4755953 () Bool)

(assert (=> b!4755953 (= e!2966973 (invariantList!1633 (toList!6188 lt!1922942)))))

(assert (=> b!4755954 (= e!2966975 lt!1922955)))

(declare-fun lt!1922941 () ListMap!5685)

(assert (=> b!4755954 (= lt!1922941 (+!2448 lhm2!51 (h!59557 l!13115)))))

(assert (=> b!4755954 (= lt!1922955 (addToMapMapFromBucket!1620 (t!360628 l!13115) (+!2448 lhm2!51 (h!59557 l!13115))))))

(declare-fun lt!1922943 () Unit!137676)

(assert (=> b!4755954 (= lt!1922943 call!333549)))

(assert (=> b!4755954 (forall!11790 (toList!6188 lhm2!51) lambda!223462)))

(declare-fun lt!1922949 () Unit!137676)

(assert (=> b!4755954 (= lt!1922949 lt!1922943)))

(assert (=> b!4755954 (forall!11790 (toList!6188 lt!1922941) lambda!223463)))

(declare-fun lt!1922936 () Unit!137676)

(declare-fun Unit!137690 () Unit!137676)

(assert (=> b!4755954 (= lt!1922936 Unit!137690)))

(assert (=> b!4755954 call!333547))

(declare-fun lt!1922952 () Unit!137676)

(declare-fun Unit!137691 () Unit!137676)

(assert (=> b!4755954 (= lt!1922952 Unit!137691)))

(declare-fun lt!1922950 () Unit!137676)

(declare-fun Unit!137692 () Unit!137676)

(assert (=> b!4755954 (= lt!1922950 Unit!137692)))

(declare-fun lt!1922939 () Unit!137676)

(assert (=> b!4755954 (= lt!1922939 (forallContained!3816 (toList!6188 lt!1922941) lambda!223463 (h!59557 l!13115)))))

(assert (=> b!4755954 (contains!16587 lt!1922941 (_1!30794 (h!59557 l!13115)))))

(declare-fun lt!1922953 () Unit!137676)

(declare-fun Unit!137693 () Unit!137676)

(assert (=> b!4755954 (= lt!1922953 Unit!137693)))

(assert (=> b!4755954 (contains!16587 lt!1922955 (_1!30794 (h!59557 l!13115)))))

(declare-fun lt!1922951 () Unit!137676)

(declare-fun Unit!137694 () Unit!137676)

(assert (=> b!4755954 (= lt!1922951 Unit!137694)))

(assert (=> b!4755954 (forall!11790 l!13115 lambda!223463)))

(declare-fun lt!1922944 () Unit!137676)

(declare-fun Unit!137695 () Unit!137676)

(assert (=> b!4755954 (= lt!1922944 Unit!137695)))

(assert (=> b!4755954 (forall!11790 (toList!6188 lt!1922941) lambda!223463)))

(declare-fun lt!1922947 () Unit!137676)

(declare-fun Unit!137696 () Unit!137676)

(assert (=> b!4755954 (= lt!1922947 Unit!137696)))

(declare-fun lt!1922935 () Unit!137676)

(declare-fun Unit!137697 () Unit!137676)

(assert (=> b!4755954 (= lt!1922935 Unit!137697)))

(declare-fun lt!1922954 () Unit!137676)

(assert (=> b!4755954 (= lt!1922954 (addForallContainsKeyThenBeforeAdding!904 lhm2!51 lt!1922955 (_1!30794 (h!59557 l!13115)) (_2!30794 (h!59557 l!13115))))))

(assert (=> b!4755954 (forall!11790 (toList!6188 lhm2!51) lambda!223463)))

(declare-fun lt!1922937 () Unit!137676)

(assert (=> b!4755954 (= lt!1922937 lt!1922954)))

(assert (=> b!4755954 (forall!11790 (toList!6188 lhm2!51) lambda!223463)))

(declare-fun lt!1922938 () Unit!137676)

(declare-fun Unit!137698 () Unit!137676)

(assert (=> b!4755954 (= lt!1922938 Unit!137698)))

(declare-fun res!2017697 () Bool)

(assert (=> b!4755954 (= res!2017697 (forall!11790 l!13115 lambda!223463))))

(assert (=> b!4755954 (=> (not res!2017697) (not e!2966974))))

(assert (=> b!4755954 e!2966974))

(declare-fun lt!1922948 () Unit!137676)

(declare-fun Unit!137699 () Unit!137676)

(assert (=> b!4755954 (= lt!1922948 Unit!137699)))

(declare-fun bm!333544 () Bool)

(assert (=> bm!333544 (= call!333549 (lemmaContainsAllItsOwnKeys!905 lhm2!51))))

(assert (= (and d!1520774 c!811687) b!4755951))

(assert (= (and d!1520774 (not c!811687)) b!4755954))

(assert (= (and b!4755954 res!2017697) b!4755950))

(assert (= (or b!4755951 b!4755950) bm!333543))

(assert (= (or b!4755951 b!4755954) bm!333542))

(assert (= (or b!4755951 b!4755954) bm!333544))

(assert (= (and d!1520774 res!2017696) b!4755952))

(assert (= (and b!4755952 res!2017695) b!4755953))

(declare-fun m!5726169 () Bool)

(assert (=> b!4755954 m!5726169))

(declare-fun m!5726171 () Bool)

(assert (=> b!4755954 m!5726171))

(declare-fun m!5726173 () Bool)

(assert (=> b!4755954 m!5726173))

(declare-fun m!5726175 () Bool)

(assert (=> b!4755954 m!5726175))

(assert (=> b!4755954 m!5726169))

(declare-fun m!5726177 () Bool)

(assert (=> b!4755954 m!5726177))

(declare-fun m!5726179 () Bool)

(assert (=> b!4755954 m!5726179))

(declare-fun m!5726181 () Bool)

(assert (=> b!4755954 m!5726181))

(declare-fun m!5726183 () Bool)

(assert (=> b!4755954 m!5726183))

(assert (=> b!4755954 m!5726173))

(assert (=> b!4755954 m!5726183))

(declare-fun m!5726185 () Bool)

(assert (=> b!4755954 m!5726185))

(declare-fun m!5726187 () Bool)

(assert (=> b!4755954 m!5726187))

(assert (=> b!4755954 m!5726177))

(declare-fun m!5726189 () Bool)

(assert (=> b!4755952 m!5726189))

(declare-fun m!5726191 () Bool)

(assert (=> b!4755953 m!5726191))

(declare-fun m!5726193 () Bool)

(assert (=> bm!333542 m!5726193))

(declare-fun m!5726195 () Bool)

(assert (=> bm!333543 m!5726195))

(declare-fun m!5726197 () Bool)

(assert (=> bm!333544 m!5726197))

(declare-fun m!5726199 () Bool)

(assert (=> d!1520774 m!5726199))

(assert (=> d!1520774 m!5726037))

(assert (=> b!4755886 d!1520774))

(declare-fun b!4755959 () Bool)

(declare-fun tp!1350869 () Bool)

(declare-fun e!2966978 () Bool)

(assert (=> b!4755959 (= e!2966978 (and tp_is_empty!32173 tp_is_empty!32175 tp!1350869))))

(assert (=> b!4755888 (= tp!1350859 e!2966978)))

(assert (= (and b!4755888 ((_ is Cons!53160) (t!360628 l!13115))) b!4755959))

(declare-fun e!2966979 () Bool)

(declare-fun tp!1350870 () Bool)

(declare-fun b!4755960 () Bool)

(assert (=> b!4755960 (= e!2966979 (and tp_is_empty!32173 tp_is_empty!32175 tp!1350870))))

(assert (=> b!4755890 (= tp!1350860 e!2966979)))

(assert (= (and b!4755890 ((_ is Cons!53160) (toList!6188 lhm1!51))) b!4755960))

(declare-fun b!4755961 () Bool)

(declare-fun e!2966980 () Bool)

(declare-fun tp!1350871 () Bool)

(assert (=> b!4755961 (= e!2966980 (and tp_is_empty!32173 tp_is_empty!32175 tp!1350871))))

(assert (=> b!4755889 (= tp!1350861 e!2966980)))

(assert (= (and b!4755889 ((_ is Cons!53160) (toList!6188 lhm2!51))) b!4755961))

(check-sat (not b!4755954) (not b!4755961) (not bm!333543) (not b!4755960) (not d!1520762) (not b!4755896) (not d!1520760) (not b!4755952) (not d!1520756) (not bm!333539) (not bm!333540) tp_is_empty!32173 (not d!1520764) (not bm!333542) tp_is_empty!32175 (not d!1520774) (not d!1520758) (not b!4755946) (not b!4755945) (not b!4755959) (not bm!333541) (not b!4755947) (not b!4755953) (not bm!333544) (not b!4755897))
(check-sat)
