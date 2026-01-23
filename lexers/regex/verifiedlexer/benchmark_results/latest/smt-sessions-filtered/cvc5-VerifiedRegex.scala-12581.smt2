; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697490 () Bool)

(assert start!697490)

(declare-fun b!7155999 () Bool)

(declare-fun res!2917869 () Bool)

(declare-fun e!4298776 () Bool)

(assert (=> b!7155999 (=> (not res!2917869) (not e!4298776))))

(declare-datatypes ((C!36814 0))(
  ( (C!36815 (val!28355 Int)) )
))
(declare-datatypes ((Regex!18270 0))(
  ( (ElementMatch!18270 (c!1333583 C!36814)) (Concat!27115 (regOne!37052 Regex!18270) (regTwo!37052 Regex!18270)) (EmptyExpr!18270) (Star!18270 (reg!18599 Regex!18270)) (EmptyLang!18270) (Union!18270 (regOne!37053 Regex!18270) (regTwo!37053 Regex!18270)) )
))
(declare-datatypes ((List!69576 0))(
  ( (Nil!69452) (Cons!69452 (h!75900 Regex!18270) (t!383593 List!69576)) )
))
(declare-datatypes ((Context!14444 0))(
  ( (Context!14445 (exprs!7722 List!69576)) )
))
(declare-datatypes ((List!69577 0))(
  ( (Nil!69453) (Cons!69453 (h!75901 Context!14444) (t!383594 List!69577)) )
))
(declare-fun zl!300 () List!69577)

(declare-fun c!7723 () Context!14444)

(assert (=> b!7155999 (= res!2917869 (and (is-Cons!69453 zl!300) (not (= (h!75901 zl!300) c!7723))))))

(declare-fun b!7156000 () Bool)

(declare-fun e!4298775 () Bool)

(declare-fun tp!1978760 () Bool)

(assert (=> b!7156000 (= e!4298775 tp!1978760)))

(declare-fun b!7156001 () Bool)

(declare-fun e!4298777 () Bool)

(declare-fun tp!1978758 () Bool)

(assert (=> b!7156001 (= e!4298777 tp!1978758)))

(declare-fun b!7156002 () Bool)

(declare-fun lambda!436381 () Int)

(declare-fun forall!17108 (List!69576 Int) Bool)

(assert (=> b!7156002 (= e!4298776 (not (forall!17108 (exprs!7722 c!7723) lambda!436381)))))

(declare-fun lt!2569202 () List!69576)

(declare-fun unfocusZipperList!2267 (List!69577) List!69576)

(assert (=> b!7156002 (= lt!2569202 (unfocusZipperList!2267 zl!300))))

(declare-fun contains!20660 (List!69576 Regex!18270) Bool)

(declare-fun generalisedConcat!2423 (List!69576) Regex!18270)

(assert (=> b!7156002 (contains!20660 (unfocusZipperList!2267 (t!383594 zl!300)) (generalisedConcat!2423 (exprs!7722 c!7723)))))

(declare-datatypes ((Unit!163299 0))(
  ( (Unit!163300) )
))
(declare-fun lt!2569201 () Unit!163299)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!29 (List!69577 Context!14444) Unit!163299)

(assert (=> b!7156002 (= lt!2569201 (lemmaZipperContainsContextThenUnfocusZipperListContains!29 (t!383594 zl!300) c!7723))))

(declare-fun b!7156003 () Bool)

(declare-fun res!2917868 () Bool)

(assert (=> b!7156003 (=> (not res!2917868) (not e!4298776))))

(declare-fun contains!20661 (List!69577 Context!14444) Bool)

(assert (=> b!7156003 (= res!2917868 (contains!20661 (t!383594 zl!300) c!7723))))

(declare-fun b!7155998 () Bool)

(declare-fun e!4298778 () Bool)

(declare-fun tp!1978759 () Bool)

(declare-fun inv!88698 (Context!14444) Bool)

(assert (=> b!7155998 (= e!4298778 (and (inv!88698 (h!75901 zl!300)) e!4298775 tp!1978759))))

(declare-fun res!2917870 () Bool)

(assert (=> start!697490 (=> (not res!2917870) (not e!4298776))))

(assert (=> start!697490 (= res!2917870 (contains!20661 zl!300 c!7723))))

(assert (=> start!697490 e!4298776))

(assert (=> start!697490 e!4298778))

(assert (=> start!697490 (and (inv!88698 c!7723) e!4298777)))

(assert (= (and start!697490 res!2917870) b!7155999))

(assert (= (and b!7155999 res!2917869) b!7156003))

(assert (= (and b!7156003 res!2917868) b!7156002))

(assert (= b!7155998 b!7156000))

(assert (= (and start!697490 (is-Cons!69453 zl!300)) b!7155998))

(assert (= start!697490 b!7156001))

(declare-fun m!7862752 () Bool)

(assert (=> b!7156002 m!7862752))

(declare-fun m!7862754 () Bool)

(assert (=> b!7156002 m!7862754))

(declare-fun m!7862756 () Bool)

(assert (=> b!7156002 m!7862756))

(assert (=> b!7156002 m!7862754))

(declare-fun m!7862758 () Bool)

(assert (=> b!7156002 m!7862758))

(assert (=> b!7156002 m!7862752))

(declare-fun m!7862760 () Bool)

(assert (=> b!7156002 m!7862760))

(declare-fun m!7862762 () Bool)

(assert (=> b!7156002 m!7862762))

(declare-fun m!7862764 () Bool)

(assert (=> b!7156003 m!7862764))

(declare-fun m!7862766 () Bool)

(assert (=> b!7155998 m!7862766))

(declare-fun m!7862768 () Bool)

(assert (=> start!697490 m!7862768))

(declare-fun m!7862770 () Bool)

(assert (=> start!697490 m!7862770))

(push 1)

(assert (not b!7156000))

(assert (not start!697490))

(assert (not b!7155998))

(assert (not b!7156002))

(assert (not b!7156001))

(assert (not b!7156003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1889868 () Bool)

(declare-fun d!2229616 () Bool)

(assert (= bs!1889868 (and d!2229616 b!7156002)))

(declare-fun lambda!436387 () Int)

(assert (=> bs!1889868 (= lambda!436387 lambda!436381)))

(assert (=> d!2229616 (= (inv!88698 (h!75901 zl!300)) (forall!17108 (exprs!7722 (h!75901 zl!300)) lambda!436387))))

(declare-fun bs!1889869 () Bool)

(assert (= bs!1889869 d!2229616))

(declare-fun m!7862792 () Bool)

(assert (=> bs!1889869 m!7862792))

(assert (=> b!7155998 d!2229616))

(declare-fun d!2229618 () Bool)

(declare-fun lt!2569211 () Bool)

(declare-fun content!14246 (List!69577) (Set Context!14444))

(assert (=> d!2229618 (= lt!2569211 (set.member c!7723 (content!14246 (t!383594 zl!300))))))

(declare-fun e!4298795 () Bool)

(assert (=> d!2229618 (= lt!2569211 e!4298795)))

(declare-fun res!2917885 () Bool)

(assert (=> d!2229618 (=> (not res!2917885) (not e!4298795))))

(assert (=> d!2229618 (= res!2917885 (is-Cons!69453 (t!383594 zl!300)))))

(assert (=> d!2229618 (= (contains!20661 (t!383594 zl!300) c!7723) lt!2569211)))

(declare-fun b!7156026 () Bool)

(declare-fun e!4298796 () Bool)

(assert (=> b!7156026 (= e!4298795 e!4298796)))

(declare-fun res!2917884 () Bool)

(assert (=> b!7156026 (=> res!2917884 e!4298796)))

(assert (=> b!7156026 (= res!2917884 (= (h!75901 (t!383594 zl!300)) c!7723))))

(declare-fun b!7156027 () Bool)

(assert (=> b!7156027 (= e!4298796 (contains!20661 (t!383594 (t!383594 zl!300)) c!7723))))

(assert (= (and d!2229618 res!2917885) b!7156026))

(assert (= (and b!7156026 (not res!2917884)) b!7156027))

(declare-fun m!7862794 () Bool)

(assert (=> d!2229618 m!7862794))

(declare-fun m!7862796 () Bool)

(assert (=> d!2229618 m!7862796))

(declare-fun m!7862798 () Bool)

(assert (=> b!7156027 m!7862798))

(assert (=> b!7156003 d!2229618))

(declare-fun bs!1889870 () Bool)

(declare-fun d!2229620 () Bool)

(assert (= bs!1889870 (and d!2229620 b!7156002)))

(declare-fun lambda!436390 () Int)

(assert (=> bs!1889870 (= lambda!436390 lambda!436381)))

(declare-fun bs!1889871 () Bool)

(assert (= bs!1889871 (and d!2229620 d!2229616)))

(assert (=> bs!1889871 (= lambda!436390 lambda!436387)))

(declare-fun lt!2569214 () List!69576)

(assert (=> d!2229620 (forall!17108 lt!2569214 lambda!436390)))

(declare-fun e!4298799 () List!69576)

(assert (=> d!2229620 (= lt!2569214 e!4298799)))

(declare-fun c!1333587 () Bool)

(assert (=> d!2229620 (= c!1333587 (is-Cons!69453 (t!383594 zl!300)))))

(assert (=> d!2229620 (= (unfocusZipperList!2267 (t!383594 zl!300)) lt!2569214)))

(declare-fun b!7156032 () Bool)

(assert (=> b!7156032 (= e!4298799 (Cons!69452 (generalisedConcat!2423 (exprs!7722 (h!75901 (t!383594 zl!300)))) (unfocusZipperList!2267 (t!383594 (t!383594 zl!300)))))))

(declare-fun b!7156033 () Bool)

(assert (=> b!7156033 (= e!4298799 Nil!69452)))

(assert (= (and d!2229620 c!1333587) b!7156032))

(assert (= (and d!2229620 (not c!1333587)) b!7156033))

(declare-fun m!7862800 () Bool)

(assert (=> d!2229620 m!7862800))

(declare-fun m!7862802 () Bool)

(assert (=> b!7156032 m!7862802))

(declare-fun m!7862804 () Bool)

(assert (=> b!7156032 m!7862804))

(assert (=> b!7156002 d!2229620))

(declare-fun d!2229624 () Bool)

(declare-fun res!2917890 () Bool)

(declare-fun e!4298804 () Bool)

(assert (=> d!2229624 (=> res!2917890 e!4298804)))

(assert (=> d!2229624 (= res!2917890 (is-Nil!69452 (exprs!7722 c!7723)))))

(assert (=> d!2229624 (= (forall!17108 (exprs!7722 c!7723) lambda!436381) e!4298804)))

(declare-fun b!7156038 () Bool)

(declare-fun e!4298805 () Bool)

(assert (=> b!7156038 (= e!4298804 e!4298805)))

(declare-fun res!2917891 () Bool)

(assert (=> b!7156038 (=> (not res!2917891) (not e!4298805))))

(declare-fun dynLambda!28307 (Int Regex!18270) Bool)

(assert (=> b!7156038 (= res!2917891 (dynLambda!28307 lambda!436381 (h!75900 (exprs!7722 c!7723))))))

(declare-fun b!7156039 () Bool)

(assert (=> b!7156039 (= e!4298805 (forall!17108 (t!383593 (exprs!7722 c!7723)) lambda!436381))))

(assert (= (and d!2229624 (not res!2917890)) b!7156038))

(assert (= (and b!7156038 res!2917891) b!7156039))

(declare-fun b_lambda!273335 () Bool)

(assert (=> (not b_lambda!273335) (not b!7156038)))

(declare-fun m!7862806 () Bool)

(assert (=> b!7156038 m!7862806))

(declare-fun m!7862808 () Bool)

(assert (=> b!7156039 m!7862808))

(assert (=> b!7156002 d!2229624))

(declare-fun bs!1889872 () Bool)

(declare-fun d!2229626 () Bool)

(assert (= bs!1889872 (and d!2229626 b!7156002)))

(declare-fun lambda!436393 () Int)

(assert (=> bs!1889872 (= lambda!436393 lambda!436381)))

(declare-fun bs!1889873 () Bool)

(assert (= bs!1889873 (and d!2229626 d!2229616)))

(assert (=> bs!1889873 (= lambda!436393 lambda!436387)))

(declare-fun bs!1889874 () Bool)

(assert (= bs!1889874 (and d!2229626 d!2229620)))

(assert (=> bs!1889874 (= lambda!436393 lambda!436390)))

(declare-fun e!4298819 () Bool)

(assert (=> d!2229626 e!4298819))

(declare-fun res!2917897 () Bool)

(assert (=> d!2229626 (=> (not res!2917897) (not e!4298819))))

(declare-fun lt!2569217 () Regex!18270)

(declare-fun validRegex!9414 (Regex!18270) Bool)

(assert (=> d!2229626 (= res!2917897 (validRegex!9414 lt!2569217))))

(declare-fun e!4298820 () Regex!18270)

(assert (=> d!2229626 (= lt!2569217 e!4298820)))

(declare-fun c!1333599 () Bool)

(declare-fun e!4298823 () Bool)

(assert (=> d!2229626 (= c!1333599 e!4298823)))

(declare-fun res!2917896 () Bool)

(assert (=> d!2229626 (=> (not res!2917896) (not e!4298823))))

(assert (=> d!2229626 (= res!2917896 (is-Cons!69452 (exprs!7722 c!7723)))))

(assert (=> d!2229626 (forall!17108 (exprs!7722 c!7723) lambda!436393)))

(assert (=> d!2229626 (= (generalisedConcat!2423 (exprs!7722 c!7723)) lt!2569217)))

(declare-fun b!7156060 () Bool)

(declare-fun e!4298821 () Bool)

(declare-fun e!4298822 () Bool)

(assert (=> b!7156060 (= e!4298821 e!4298822)))

(declare-fun c!1333596 () Bool)

(declare-fun isEmpty!40134 (List!69576) Bool)

(declare-fun tail!14035 (List!69576) List!69576)

(assert (=> b!7156060 (= c!1333596 (isEmpty!40134 (tail!14035 (exprs!7722 c!7723))))))

(declare-fun b!7156061 () Bool)

(declare-fun e!4298818 () Regex!18270)

(assert (=> b!7156061 (= e!4298818 (Concat!27115 (h!75900 (exprs!7722 c!7723)) (generalisedConcat!2423 (t!383593 (exprs!7722 c!7723)))))))

(declare-fun b!7156062 () Bool)

(assert (=> b!7156062 (= e!4298819 e!4298821)))

(declare-fun c!1333597 () Bool)

(assert (=> b!7156062 (= c!1333597 (isEmpty!40134 (exprs!7722 c!7723)))))

(declare-fun b!7156063 () Bool)

(declare-fun isEmptyExpr!2071 (Regex!18270) Bool)

(assert (=> b!7156063 (= e!4298821 (isEmptyExpr!2071 lt!2569217))))

(declare-fun b!7156064 () Bool)

(assert (=> b!7156064 (= e!4298820 e!4298818)))

(declare-fun c!1333598 () Bool)

(assert (=> b!7156064 (= c!1333598 (is-Cons!69452 (exprs!7722 c!7723)))))

(declare-fun b!7156065 () Bool)

(declare-fun isConcat!1593 (Regex!18270) Bool)

(assert (=> b!7156065 (= e!4298822 (isConcat!1593 lt!2569217))))

(declare-fun b!7156066 () Bool)

(assert (=> b!7156066 (= e!4298823 (isEmpty!40134 (t!383593 (exprs!7722 c!7723))))))

(declare-fun b!7156067 () Bool)

(assert (=> b!7156067 (= e!4298820 (h!75900 (exprs!7722 c!7723)))))

(declare-fun b!7156068 () Bool)

(declare-fun head!14566 (List!69576) Regex!18270)

(assert (=> b!7156068 (= e!4298822 (= lt!2569217 (head!14566 (exprs!7722 c!7723))))))

(declare-fun b!7156069 () Bool)

(assert (=> b!7156069 (= e!4298818 EmptyExpr!18270)))

(assert (= (and d!2229626 res!2917896) b!7156066))

(assert (= (and d!2229626 c!1333599) b!7156067))

(assert (= (and d!2229626 (not c!1333599)) b!7156064))

(assert (= (and b!7156064 c!1333598) b!7156061))

(assert (= (and b!7156064 (not c!1333598)) b!7156069))

(assert (= (and d!2229626 res!2917897) b!7156062))

(assert (= (and b!7156062 c!1333597) b!7156063))

(assert (= (and b!7156062 (not c!1333597)) b!7156060))

(assert (= (and b!7156060 c!1333596) b!7156068))

(assert (= (and b!7156060 (not c!1333596)) b!7156065))

(declare-fun m!7862810 () Bool)

(assert (=> b!7156061 m!7862810))

(declare-fun m!7862812 () Bool)

(assert (=> b!7156066 m!7862812))

(declare-fun m!7862814 () Bool)

(assert (=> b!7156062 m!7862814))

(declare-fun m!7862816 () Bool)

(assert (=> b!7156065 m!7862816))

(declare-fun m!7862818 () Bool)

(assert (=> b!7156060 m!7862818))

(assert (=> b!7156060 m!7862818))

(declare-fun m!7862820 () Bool)

(assert (=> b!7156060 m!7862820))

(declare-fun m!7862822 () Bool)

(assert (=> b!7156063 m!7862822))

(declare-fun m!7862824 () Bool)

(assert (=> d!2229626 m!7862824))

(declare-fun m!7862826 () Bool)

(assert (=> d!2229626 m!7862826))

(declare-fun m!7862828 () Bool)

(assert (=> b!7156068 m!7862828))

(assert (=> b!7156002 d!2229626))

(declare-fun bs!1889875 () Bool)

(declare-fun d!2229628 () Bool)

(assert (= bs!1889875 (and d!2229628 b!7156002)))

(declare-fun lambda!436394 () Int)

(assert (=> bs!1889875 (= lambda!436394 lambda!436381)))

(declare-fun bs!1889876 () Bool)

(assert (= bs!1889876 (and d!2229628 d!2229616)))

(assert (=> bs!1889876 (= lambda!436394 lambda!436387)))

(declare-fun bs!1889877 () Bool)

(assert (= bs!1889877 (and d!2229628 d!2229620)))

(assert (=> bs!1889877 (= lambda!436394 lambda!436390)))

(declare-fun bs!1889878 () Bool)

(assert (= bs!1889878 (and d!2229628 d!2229626)))

(assert (=> bs!1889878 (= lambda!436394 lambda!436393)))

(declare-fun lt!2569218 () List!69576)

(assert (=> d!2229628 (forall!17108 lt!2569218 lambda!436394)))

(declare-fun e!4298824 () List!69576)

(assert (=> d!2229628 (= lt!2569218 e!4298824)))

(declare-fun c!1333600 () Bool)

(assert (=> d!2229628 (= c!1333600 (is-Cons!69453 zl!300))))

(assert (=> d!2229628 (= (unfocusZipperList!2267 zl!300) lt!2569218)))

(declare-fun b!7156070 () Bool)

(assert (=> b!7156070 (= e!4298824 (Cons!69452 (generalisedConcat!2423 (exprs!7722 (h!75901 zl!300))) (unfocusZipperList!2267 (t!383594 zl!300))))))

(declare-fun b!7156071 () Bool)

(assert (=> b!7156071 (= e!4298824 Nil!69452)))

(assert (= (and d!2229628 c!1333600) b!7156070))

(assert (= (and d!2229628 (not c!1333600)) b!7156071))

(declare-fun m!7862830 () Bool)

(assert (=> d!2229628 m!7862830))

(declare-fun m!7862832 () Bool)

(assert (=> b!7156070 m!7862832))

(assert (=> b!7156070 m!7862752))

(assert (=> b!7156002 d!2229628))

(declare-fun d!2229630 () Bool)

(declare-fun lt!2569221 () Bool)

(declare-fun content!14247 (List!69576) (Set Regex!18270))

(assert (=> d!2229630 (= lt!2569221 (set.member (generalisedConcat!2423 (exprs!7722 c!7723)) (content!14247 (unfocusZipperList!2267 (t!383594 zl!300)))))))

(declare-fun e!4298830 () Bool)

(assert (=> d!2229630 (= lt!2569221 e!4298830)))

(declare-fun res!2917903 () Bool)

(assert (=> d!2229630 (=> (not res!2917903) (not e!4298830))))

(assert (=> d!2229630 (= res!2917903 (is-Cons!69452 (unfocusZipperList!2267 (t!383594 zl!300))))))

(assert (=> d!2229630 (= (contains!20660 (unfocusZipperList!2267 (t!383594 zl!300)) (generalisedConcat!2423 (exprs!7722 c!7723))) lt!2569221)))

(declare-fun b!7156076 () Bool)

(declare-fun e!4298829 () Bool)

(assert (=> b!7156076 (= e!4298830 e!4298829)))

(declare-fun res!2917902 () Bool)

(assert (=> b!7156076 (=> res!2917902 e!4298829)))

(assert (=> b!7156076 (= res!2917902 (= (h!75900 (unfocusZipperList!2267 (t!383594 zl!300))) (generalisedConcat!2423 (exprs!7722 c!7723))))))

(declare-fun b!7156077 () Bool)

(assert (=> b!7156077 (= e!4298829 (contains!20660 (t!383593 (unfocusZipperList!2267 (t!383594 zl!300))) (generalisedConcat!2423 (exprs!7722 c!7723))))))

(assert (= (and d!2229630 res!2917903) b!7156076))

(assert (= (and b!7156076 (not res!2917902)) b!7156077))

(assert (=> d!2229630 m!7862752))

(declare-fun m!7862834 () Bool)

(assert (=> d!2229630 m!7862834))

(assert (=> d!2229630 m!7862754))

(declare-fun m!7862836 () Bool)

(assert (=> d!2229630 m!7862836))

(assert (=> b!7156077 m!7862754))

(declare-fun m!7862838 () Bool)

(assert (=> b!7156077 m!7862838))

(assert (=> b!7156002 d!2229630))

(declare-fun d!2229632 () Bool)

(assert (=> d!2229632 (contains!20660 (unfocusZipperList!2267 (t!383594 zl!300)) (generalisedConcat!2423 (exprs!7722 c!7723)))))

(declare-fun lt!2569224 () Unit!163299)

(declare-fun choose!55307 (List!69577 Context!14444) Unit!163299)

(assert (=> d!2229632 (= lt!2569224 (choose!55307 (t!383594 zl!300) c!7723))))

(assert (=> d!2229632 (contains!20661 (t!383594 zl!300) c!7723)))

(assert (=> d!2229632 (= (lemmaZipperContainsContextThenUnfocusZipperListContains!29 (t!383594 zl!300) c!7723) lt!2569224)))

(declare-fun bs!1889879 () Bool)

(assert (= bs!1889879 d!2229632))

(declare-fun m!7862840 () Bool)

(assert (=> bs!1889879 m!7862840))

(assert (=> bs!1889879 m!7862754))

(assert (=> bs!1889879 m!7862764))

(assert (=> bs!1889879 m!7862752))

(assert (=> bs!1889879 m!7862754))

(assert (=> bs!1889879 m!7862756))

(assert (=> bs!1889879 m!7862752))

(assert (=> b!7156002 d!2229632))

(declare-fun d!2229634 () Bool)

(declare-fun lt!2569225 () Bool)

(assert (=> d!2229634 (= lt!2569225 (set.member c!7723 (content!14246 zl!300)))))

(declare-fun e!4298831 () Bool)

(assert (=> d!2229634 (= lt!2569225 e!4298831)))

(declare-fun res!2917905 () Bool)

(assert (=> d!2229634 (=> (not res!2917905) (not e!4298831))))

(assert (=> d!2229634 (= res!2917905 (is-Cons!69453 zl!300))))

(assert (=> d!2229634 (= (contains!20661 zl!300 c!7723) lt!2569225)))

(declare-fun b!7156078 () Bool)

(declare-fun e!4298832 () Bool)

(assert (=> b!7156078 (= e!4298831 e!4298832)))

(declare-fun res!2917904 () Bool)

(assert (=> b!7156078 (=> res!2917904 e!4298832)))

(assert (=> b!7156078 (= res!2917904 (= (h!75901 zl!300) c!7723))))

(declare-fun b!7156079 () Bool)

(assert (=> b!7156079 (= e!4298832 (contains!20661 (t!383594 zl!300) c!7723))))

(assert (= (and d!2229634 res!2917905) b!7156078))

(assert (= (and b!7156078 (not res!2917904)) b!7156079))

(declare-fun m!7862842 () Bool)

(assert (=> d!2229634 m!7862842))

(declare-fun m!7862844 () Bool)

(assert (=> d!2229634 m!7862844))

(assert (=> b!7156079 m!7862764))

(assert (=> start!697490 d!2229634))

(declare-fun bs!1889880 () Bool)

(declare-fun d!2229636 () Bool)

(assert (= bs!1889880 (and d!2229636 d!2229616)))

(declare-fun lambda!436395 () Int)

(assert (=> bs!1889880 (= lambda!436395 lambda!436387)))

(declare-fun bs!1889881 () Bool)

(assert (= bs!1889881 (and d!2229636 d!2229620)))

(assert (=> bs!1889881 (= lambda!436395 lambda!436390)))

(declare-fun bs!1889882 () Bool)

(assert (= bs!1889882 (and d!2229636 b!7156002)))

(assert (=> bs!1889882 (= lambda!436395 lambda!436381)))

(declare-fun bs!1889883 () Bool)

(assert (= bs!1889883 (and d!2229636 d!2229626)))

(assert (=> bs!1889883 (= lambda!436395 lambda!436393)))

(declare-fun bs!1889884 () Bool)

(assert (= bs!1889884 (and d!2229636 d!2229628)))

(assert (=> bs!1889884 (= lambda!436395 lambda!436394)))

(assert (=> d!2229636 (= (inv!88698 c!7723) (forall!17108 (exprs!7722 c!7723) lambda!436395))))

(declare-fun bs!1889885 () Bool)

(assert (= bs!1889885 d!2229636))

(declare-fun m!7862846 () Bool)

(assert (=> bs!1889885 m!7862846))

(assert (=> start!697490 d!2229636))

(declare-fun b!7156087 () Bool)

(declare-fun e!4298838 () Bool)

(declare-fun tp!1978774 () Bool)

(assert (=> b!7156087 (= e!4298838 tp!1978774)))

(declare-fun tp!1978775 () Bool)

(declare-fun b!7156086 () Bool)

(declare-fun e!4298837 () Bool)

(assert (=> b!7156086 (= e!4298837 (and (inv!88698 (h!75901 (t!383594 zl!300))) e!4298838 tp!1978775))))

(assert (=> b!7155998 (= tp!1978759 e!4298837)))

(assert (= b!7156086 b!7156087))

(assert (= (and b!7155998 (is-Cons!69453 (t!383594 zl!300))) b!7156086))

(declare-fun m!7862848 () Bool)

(assert (=> b!7156086 m!7862848))

(declare-fun b!7156092 () Bool)

(declare-fun e!4298841 () Bool)

(declare-fun tp!1978780 () Bool)

(declare-fun tp!1978781 () Bool)

(assert (=> b!7156092 (= e!4298841 (and tp!1978780 tp!1978781))))

(assert (=> b!7156001 (= tp!1978758 e!4298841)))

(assert (= (and b!7156001 (is-Cons!69452 (exprs!7722 c!7723))) b!7156092))

(declare-fun b!7156093 () Bool)

(declare-fun e!4298842 () Bool)

(declare-fun tp!1978782 () Bool)

(declare-fun tp!1978783 () Bool)

(assert (=> b!7156093 (= e!4298842 (and tp!1978782 tp!1978783))))

(assert (=> b!7156000 (= tp!1978760 e!4298842)))

(assert (= (and b!7156000 (is-Cons!69452 (exprs!7722 (h!75901 zl!300)))) b!7156093))

(declare-fun b_lambda!273337 () Bool)

(assert (= b_lambda!273335 (or b!7156002 b_lambda!273337)))

(declare-fun bs!1889886 () Bool)

(declare-fun d!2229638 () Bool)

(assert (= bs!1889886 (and d!2229638 b!7156002)))

(assert (=> bs!1889886 (= (dynLambda!28307 lambda!436381 (h!75900 (exprs!7722 c!7723))) (validRegex!9414 (h!75900 (exprs!7722 c!7723))))))

(declare-fun m!7862850 () Bool)

(assert (=> bs!1889886 m!7862850))

(assert (=> b!7156038 d!2229638))

(push 1)

(assert (not b!7156087))

(assert (not b_lambda!273337))

(assert (not b!7156092))

(assert (not b!7156065))

(assert (not b!7156060))

(assert (not b!7156039))

(assert (not bs!1889886))

(assert (not b!7156027))

(assert (not b!7156086))

(assert (not d!2229618))

(assert (not b!7156070))

(assert (not d!2229628))

(assert (not b!7156062))

(assert (not b!7156093))

(assert (not b!7156079))

(assert (not d!2229620))

(assert (not b!7156063))

(assert (not d!2229634))

(assert (not b!7156068))

(assert (not d!2229636))

(assert (not b!7156061))

(assert (not b!7156077))

(assert (not d!2229616))

(assert (not b!7156032))

(assert (not d!2229626))

(assert (not d!2229630))

(assert (not b!7156066))

(assert (not d!2229632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

