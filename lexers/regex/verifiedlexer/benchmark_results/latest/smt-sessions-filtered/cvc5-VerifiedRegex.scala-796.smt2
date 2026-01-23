; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45108 () Bool)

(assert start!45108)

(declare-fun b_free!13149 () Bool)

(declare-fun b_next!13149 () Bool)

(assert (=> start!45108 (= b_free!13149 (not b_next!13149))))

(declare-fun tp!130682 () Bool)

(declare-fun b_and!50445 () Bool)

(assert (=> start!45108 (= tp!130682 b_and!50445)))

(declare-fun b_free!13151 () Bool)

(declare-fun b_next!13151 () Bool)

(assert (=> start!45108 (= b_free!13151 (not b_next!13151))))

(declare-fun tp!130681 () Bool)

(declare-fun b_and!50447 () Bool)

(assert (=> start!45108 (= tp!130681 b_and!50447)))

(assert (=> start!45108 true))

(declare-fun order!4181 () Int)

(declare-fun lambda!13971 () Int)

(declare-fun f!1027 () Int)

(declare-fun order!4179 () Int)

(declare-fun dynLambda!2853 (Int Int) Int)

(declare-fun dynLambda!2854 (Int Int) Int)

(assert (=> start!45108 (< (dynLambda!2853 order!4179 f!1027) (dynLambda!2854 order!4181 lambda!13971))))

(assert (=> start!45108 true))

(declare-fun p!1789 () Int)

(declare-fun order!4183 () Int)

(declare-fun dynLambda!2855 (Int Int) Int)

(assert (=> start!45108 (< (dynLambda!2855 order!4183 p!1789) (dynLambda!2854 order!4181 lambda!13971))))

(declare-fun setNonEmpty!1937 () Bool)

(declare-fun setRes!1937 () Bool)

(declare-fun tp!130683 () Bool)

(declare-fun tp_is_empty!2117 () Bool)

(assert (=> setNonEmpty!1937 (= setRes!1937 (and tp!130683 tp_is_empty!2117))))

(declare-datatypes ((A!369 0))(
  ( (A!370 (val!1507 Int)) )
))
(declare-fun s!1494 () (Set A!369))

(declare-fun setElem!1937 () A!369)

(declare-fun setRest!1937 () (Set A!369))

(assert (=> setNonEmpty!1937 (= s!1494 (set.union (set.insert setElem!1937 (as set.empty (Set A!369))) setRest!1937))))

(declare-fun b!471722 () Bool)

(declare-fun e!288507 () Bool)

(declare-fun e!288505 () Bool)

(assert (=> b!471722 (= e!288507 e!288505)))

(declare-fun res!209227 () Bool)

(assert (=> b!471722 (=> (not res!209227) (not e!288505))))

(declare-datatypes ((B!931 0))(
  ( (B!932 (val!1508 Int)) )
))
(declare-datatypes ((List!4553 0))(
  ( (Nil!4543) (Cons!4543 (h!9940 B!931) (t!72977 List!4553)) )
))
(declare-fun l!2882 () List!4553)

(declare-fun lt!210133 () List!4553)

(declare-fun subseq!110 (List!4553 List!4553) Bool)

(assert (=> b!471722 (= res!209227 (subseq!110 l!2882 lt!210133))))

(declare-fun lt!210134 () (Set B!931))

(declare-fun toList!324 ((Set B!931)) List!4553)

(assert (=> b!471722 (= lt!210133 (toList!324 lt!210134))))

(declare-fun flatMap!89 ((Set A!369) Int) (Set B!931))

(assert (=> b!471722 (= lt!210134 (flatMap!89 s!1494 f!1027))))

(declare-fun b!471723 () Bool)

(declare-fun e!288504 () Bool)

(declare-fun e!288508 () Bool)

(assert (=> b!471723 (= e!288504 (not e!288508))))

(declare-fun res!209224 () Bool)

(assert (=> b!471723 (=> res!209224 e!288508)))

(declare-fun Forall!239 (Int) Bool)

(assert (=> b!471723 (= res!209224 (not (Forall!239 lambda!13971)))))

(declare-datatypes ((Unit!8291 0))(
  ( (Unit!8292) )
))
(declare-fun lt!210131 () Unit!8291)

(declare-fun subseqTail!9 (List!4553 List!4553) Unit!8291)

(assert (=> b!471723 (= lt!210131 (subseqTail!9 l!2882 lt!210133))))

(declare-fun dynLambda!2856 (Int B!931) Bool)

(assert (=> b!471723 (dynLambda!2856 p!1789 (h!9940 l!2882))))

(declare-fun lt!210135 () Unit!8291)

(declare-fun lemmaFlatMapForallElem!11 ((Set A!369) Int Int B!931) Unit!8291)

(assert (=> b!471723 (= lt!210135 (lemmaFlatMapForallElem!11 s!1494 f!1027 p!1789 (h!9940 l!2882)))))

(declare-fun empty!2599 () A!369)

(declare-fun flatMapPost!17 ((Set A!369) Int B!931) A!369)

(assert (=> b!471723 (= (flatMapPost!17 s!1494 f!1027 (h!9940 l!2882)) empty!2599)))

(assert (=> b!471723 true))

(assert (=> b!471723 tp_is_empty!2117))

(declare-fun b!471724 () Bool)

(declare-fun ListPrimitiveSize!39 (List!4553) Int)

(assert (=> b!471724 (= e!288508 (< (ListPrimitiveSize!39 (t!72977 l!2882)) (ListPrimitiveSize!39 l!2882)))))

(declare-fun setIsEmpty!1937 () Bool)

(assert (=> setIsEmpty!1937 setRes!1937))

(declare-fun res!209222 () Bool)

(assert (=> start!45108 (=> (not res!209222) (not e!288507))))

(assert (=> start!45108 (= res!209222 (Forall!239 lambda!13971))))

(assert (=> start!45108 e!288507))

(assert (=> start!45108 tp!130682))

(assert (=> start!45108 tp!130681))

(declare-fun condSetEmpty!1937 () Bool)

(assert (=> start!45108 (= condSetEmpty!1937 (= s!1494 (as set.empty (Set A!369))))))

(assert (=> start!45108 setRes!1937))

(declare-fun e!288506 () Bool)

(assert (=> start!45108 e!288506))

(declare-fun b!471725 () Bool)

(assert (=> b!471725 (= e!288505 e!288504)))

(declare-fun res!209226 () Bool)

(assert (=> b!471725 (=> (not res!209226) (not e!288504))))

(assert (=> b!471725 (= res!209226 (set.member (h!9940 l!2882) lt!210134))))

(declare-fun lt!210132 () Unit!8291)

(declare-fun subseqContains!19 (List!4553 List!4553 B!931) Unit!8291)

(assert (=> b!471725 (= lt!210132 (subseqContains!19 l!2882 lt!210133 (h!9940 l!2882)))))

(declare-fun b!471726 () Bool)

(declare-fun tp_is_empty!2119 () Bool)

(declare-fun tp!130680 () Bool)

(assert (=> b!471726 (= e!288506 (and tp_is_empty!2119 tp!130680))))

(declare-fun b!471727 () Bool)

(declare-fun res!209225 () Bool)

(assert (=> b!471727 (=> res!209225 e!288508)))

(assert (=> b!471727 (= res!209225 (not (subseq!110 (t!72977 l!2882) lt!210133)))))

(declare-fun b!471728 () Bool)

(declare-fun res!209223 () Bool)

(assert (=> b!471728 (=> (not res!209223) (not e!288505))))

(assert (=> b!471728 (= res!209223 (is-Cons!4543 l!2882))))

(assert (= (and start!45108 res!209222) b!471722))

(assert (= (and b!471722 res!209227) b!471728))

(assert (= (and b!471728 res!209223) b!471725))

(assert (= (and b!471725 res!209226) b!471723))

(assert (= (and b!471723 (not res!209224)) b!471727))

(assert (= (and b!471727 (not res!209225)) b!471724))

(assert (= (and start!45108 condSetEmpty!1937) setIsEmpty!1937))

(assert (= (and start!45108 (not condSetEmpty!1937)) setNonEmpty!1937))

(assert (= (and start!45108 (is-Cons!4543 l!2882)) b!471726))

(declare-fun b_lambda!19687 () Bool)

(assert (=> (not b_lambda!19687) (not b!471723)))

(declare-fun t!72976 () Bool)

(declare-fun tb!47025 () Bool)

(assert (=> (and start!45108 (= p!1789 p!1789) t!72976) tb!47025))

(declare-fun result!51788 () Bool)

(assert (=> tb!47025 (= result!51788 true)))

(assert (=> b!471723 t!72976))

(declare-fun b_and!50449 () Bool)

(assert (= b_and!50447 (and (=> t!72976 result!51788) b_and!50449)))

(declare-fun m!745195 () Bool)

(assert (=> b!471725 m!745195))

(declare-fun m!745197 () Bool)

(assert (=> b!471725 m!745197))

(declare-fun m!745199 () Bool)

(assert (=> b!471727 m!745199))

(declare-fun m!745201 () Bool)

(assert (=> b!471724 m!745201))

(declare-fun m!745203 () Bool)

(assert (=> b!471724 m!745203))

(declare-fun m!745205 () Bool)

(assert (=> b!471723 m!745205))

(declare-fun m!745207 () Bool)

(assert (=> b!471723 m!745207))

(declare-fun m!745209 () Bool)

(assert (=> b!471723 m!745209))

(declare-fun m!745211 () Bool)

(assert (=> b!471723 m!745211))

(declare-fun m!745213 () Bool)

(assert (=> b!471723 m!745213))

(declare-fun m!745215 () Bool)

(assert (=> b!471722 m!745215))

(declare-fun m!745217 () Bool)

(assert (=> b!471722 m!745217))

(declare-fun m!745219 () Bool)

(assert (=> b!471722 m!745219))

(assert (=> start!45108 m!745213))

(push 1)

(assert tp_is_empty!2119)

(assert (not b_next!13151))

(assert (not b_lambda!19687))

(assert tp_is_empty!2117)

(assert b_and!50445)

(assert (not start!45108))

(assert (not b!471726))

(assert b_and!50449)

(assert (not b!471725))

(assert (not b!471724))

(assert (not b!471722))

(assert (not b!471727))

(assert (not b!471723))

(assert (not b_next!13149))

(assert (not setNonEmpty!1937))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50445)

(assert b_and!50449)

(assert (not b_next!13151))

(assert (not b_next!13149))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19691 () Bool)

(assert (= b_lambda!19687 (or (and start!45108 b_free!13151) b_lambda!19691)))

(push 1)

(assert tp_is_empty!2119)

(assert (not b_next!13151))

(assert b_and!50445)

(assert (not start!45108))

(assert (not b!471726))

(assert b_and!50449)

(assert (not b!471725))

(assert (not b!471724))

(assert (not b!471722))

(assert (not b!471727))

(assert (not b!471723))

(assert (not b_lambda!19691))

(assert tp_is_empty!2117)

(assert (not b_next!13149))

(assert (not setNonEmpty!1937))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50445)

(assert b_and!50449)

(assert (not b_next!13151))

(assert (not b_next!13149))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179393 () Bool)

(declare-fun contains!1025 (List!4553 B!931) Bool)

(assert (=> d!179393 (contains!1025 lt!210133 (h!9940 l!2882))))

(declare-fun lt!210153 () Unit!8291)

(declare-fun choose!3563 (List!4553 List!4553 B!931) Unit!8291)

(assert (=> d!179393 (= lt!210153 (choose!3563 l!2882 lt!210133 (h!9940 l!2882)))))

(declare-fun e!288526 () Bool)

(assert (=> d!179393 e!288526))

(declare-fun res!209248 () Bool)

(assert (=> d!179393 (=> (not res!209248) (not e!288526))))

(assert (=> d!179393 (= res!209248 (subseq!110 l!2882 lt!210133))))

(assert (=> d!179393 (= (subseqContains!19 l!2882 lt!210133 (h!9940 l!2882)) lt!210153)))

(declare-fun b!471760 () Bool)

(assert (=> b!471760 (= e!288526 (contains!1025 l!2882 (h!9940 l!2882)))))

(assert (= (and d!179393 res!209248) b!471760))

(declare-fun m!745247 () Bool)

(assert (=> d!179393 m!745247))

(declare-fun m!745249 () Bool)

(assert (=> d!179393 m!745249))

(assert (=> d!179393 m!745215))

(declare-fun m!745251 () Bool)

(assert (=> b!471760 m!745251))

(assert (=> b!471725 d!179393))

(declare-fun d!179395 () Bool)

(declare-fun lt!210156 () Int)

(assert (=> d!179395 (>= lt!210156 0)))

(declare-fun e!288529 () Int)

(assert (=> d!179395 (= lt!210156 e!288529)))

(declare-fun c!94827 () Bool)

(assert (=> d!179395 (= c!94827 (is-Nil!4543 (t!72977 l!2882)))))

(assert (=> d!179395 (= (ListPrimitiveSize!39 (t!72977 l!2882)) lt!210156)))

(declare-fun b!471765 () Bool)

(assert (=> b!471765 (= e!288529 0)))

(declare-fun b!471766 () Bool)

(assert (=> b!471766 (= e!288529 (+ 1 (ListPrimitiveSize!39 (t!72977 (t!72977 l!2882)))))))

(assert (= (and d!179395 c!94827) b!471765))

(assert (= (and d!179395 (not c!94827)) b!471766))

(declare-fun m!745253 () Bool)

(assert (=> b!471766 m!745253))

(assert (=> b!471724 d!179395))

(declare-fun d!179397 () Bool)

(declare-fun lt!210157 () Int)

(assert (=> d!179397 (>= lt!210157 0)))

(declare-fun e!288530 () Int)

(assert (=> d!179397 (= lt!210157 e!288530)))

(declare-fun c!94828 () Bool)

(assert (=> d!179397 (= c!94828 (is-Nil!4543 l!2882))))

(assert (=> d!179397 (= (ListPrimitiveSize!39 l!2882) lt!210157)))

(declare-fun b!471767 () Bool)

(assert (=> b!471767 (= e!288530 0)))

(declare-fun b!471768 () Bool)

(assert (=> b!471768 (= e!288530 (+ 1 (ListPrimitiveSize!39 (t!72977 l!2882))))))

(assert (= (and d!179397 c!94828) b!471767))

(assert (= (and d!179397 (not c!94828)) b!471768))

(assert (=> b!471768 m!745201))

(assert (=> b!471724 d!179397))

(declare-fun d!179399 () Bool)

(declare-fun choose!3564 (Int) Bool)

(assert (=> d!179399 (= (Forall!239 lambda!13971) (choose!3564 lambda!13971))))

(declare-fun bs!58436 () Bool)

(assert (= bs!58436 d!179399))

(declare-fun m!745255 () Bool)

(assert (=> bs!58436 m!745255))

(assert (=> start!45108 d!179399))

(declare-fun b!471778 () Bool)

(declare-fun e!288539 () Bool)

(declare-fun e!288540 () Bool)

(assert (=> b!471778 (= e!288539 e!288540)))

(declare-fun res!209257 () Bool)

(assert (=> b!471778 (=> res!209257 e!288540)))

(declare-fun e!288542 () Bool)

(assert (=> b!471778 (= res!209257 e!288542)))

(declare-fun res!209260 () Bool)

(assert (=> b!471778 (=> (not res!209260) (not e!288542))))

(assert (=> b!471778 (= res!209260 (= (h!9940 (t!72977 l!2882)) (h!9940 lt!210133)))))

(declare-fun d!179401 () Bool)

(declare-fun res!209258 () Bool)

(declare-fun e!288541 () Bool)

(assert (=> d!179401 (=> res!209258 e!288541)))

(assert (=> d!179401 (= res!209258 (is-Nil!4543 (t!72977 l!2882)))))

(assert (=> d!179401 (= (subseq!110 (t!72977 l!2882) lt!210133) e!288541)))

(declare-fun b!471780 () Bool)

(assert (=> b!471780 (= e!288540 (subseq!110 (t!72977 l!2882) (t!72977 lt!210133)))))

(declare-fun b!471779 () Bool)

(assert (=> b!471779 (= e!288542 (subseq!110 (t!72977 (t!72977 l!2882)) (t!72977 lt!210133)))))

(declare-fun b!471777 () Bool)

(assert (=> b!471777 (= e!288541 e!288539)))

(declare-fun res!209259 () Bool)

(assert (=> b!471777 (=> (not res!209259) (not e!288539))))

(assert (=> b!471777 (= res!209259 (is-Cons!4543 lt!210133))))

(assert (= (and d!179401 (not res!209258)) b!471777))

(assert (= (and b!471777 res!209259) b!471778))

(assert (= (and b!471778 res!209260) b!471779))

(assert (= (and b!471778 (not res!209257)) b!471780))

(declare-fun m!745257 () Bool)

(assert (=> b!471780 m!745257))

(declare-fun m!745259 () Bool)

(assert (=> b!471779 m!745259))

(assert (=> b!471727 d!179401))

(assert (=> b!471723 d!179399))

(declare-fun b!471795 () Bool)

(declare-fun e!288551 () Bool)

(assert (=> b!471795 (= e!288551 (subseq!110 l!2882 lt!210133))))

(declare-fun b!471796 () Bool)

(declare-fun e!288554 () Unit!8291)

(declare-fun call!32808 () Unit!8291)

(assert (=> b!471796 (= e!288554 call!32808)))

(declare-fun d!179403 () Bool)

(declare-fun tail!664 (List!4553) List!4553)

(assert (=> d!179403 (subseq!110 (tail!664 l!2882) lt!210133)))

(declare-fun lt!210160 () Unit!8291)

(declare-fun e!288553 () Unit!8291)

(assert (=> d!179403 (= lt!210160 e!288553)))

(declare-fun c!94835 () Bool)

(assert (=> d!179403 (= c!94835 (and (is-Cons!4543 l!2882) (is-Cons!4543 lt!210133)))))

(assert (=> d!179403 e!288551))

(declare-fun res!209263 () Bool)

(assert (=> d!179403 (=> (not res!209263) (not e!288551))))

(declare-fun isEmpty!3529 (List!4553) Bool)

(assert (=> d!179403 (= res!209263 (not (isEmpty!3529 l!2882)))))

(assert (=> d!179403 (= (subseqTail!9 l!2882 lt!210133) lt!210160)))

(declare-fun b!471797 () Bool)

(declare-fun c!94836 () Bool)

(assert (=> b!471797 (= c!94836 (not (isEmpty!3529 (t!72977 l!2882))))))

(declare-fun e!288552 () Unit!8291)

(assert (=> b!471797 (= e!288552 e!288554)))

(declare-fun bm!32803 () Bool)

(declare-fun c!94837 () Bool)

(assert (=> bm!32803 (= call!32808 (subseqTail!9 (ite c!94837 l!2882 (t!72977 l!2882)) (t!72977 lt!210133)))))

(declare-fun b!471798 () Bool)

(declare-fun Unit!8295 () Unit!8291)

(assert (=> b!471798 (= e!288553 Unit!8295)))

(declare-fun b!471799 () Bool)

(declare-fun Unit!8296 () Unit!8291)

(assert (=> b!471799 (= e!288554 Unit!8296)))

(declare-fun b!471800 () Bool)

(assert (=> b!471800 (= e!288553 e!288552)))

(assert (=> b!471800 (= c!94837 (subseq!110 l!2882 (t!72977 lt!210133)))))

(declare-fun b!471801 () Bool)

(assert (=> b!471801 (= e!288552 call!32808)))

(assert (= (and d!179403 res!209263) b!471795))

(assert (= (and d!179403 c!94835) b!471800))

(assert (= (and d!179403 (not c!94835)) b!471798))

(assert (= (and b!471800 c!94837) b!471801))

(assert (= (and b!471800 (not c!94837)) b!471797))

(assert (= (and b!471797 c!94836) b!471796))

(assert (= (and b!471797 (not c!94836)) b!471799))

(assert (= (or b!471801 b!471796) bm!32803))

(assert (=> b!471795 m!745215))

(declare-fun m!745261 () Bool)

(assert (=> b!471797 m!745261))

(declare-fun m!745263 () Bool)

(assert (=> b!471800 m!745263))

(declare-fun m!745265 () Bool)

(assert (=> d!179403 m!745265))

(assert (=> d!179403 m!745265))

(declare-fun m!745267 () Bool)

(assert (=> d!179403 m!745267))

(declare-fun m!745269 () Bool)

(assert (=> d!179403 m!745269))

(declare-fun m!745271 () Bool)

(assert (=> bm!32803 m!745271))

(assert (=> b!471723 d!179403))

(declare-fun d!179405 () Bool)

(assert (=> d!179405 (dynLambda!2856 p!1789 (h!9940 l!2882))))

(declare-fun lt!210163 () Unit!8291)

(declare-fun choose!3565 ((Set A!369) Int Int B!931) Unit!8291)

(assert (=> d!179405 (= lt!210163 (choose!3565 s!1494 f!1027 p!1789 (h!9940 l!2882)))))

(assert (=> d!179405 (set.member (h!9940 l!2882) (flatMap!89 s!1494 f!1027))))

(assert (=> d!179405 (= (lemmaFlatMapForallElem!11 s!1494 f!1027 p!1789 (h!9940 l!2882)) lt!210163)))

(declare-fun b_lambda!19695 () Bool)

(assert (=> (not b_lambda!19695) (not d!179405)))

(assert (=> d!179405 t!72976))

(declare-fun b_and!50457 () Bool)

(assert (= b_and!50449 (and (=> t!72976 result!51788) b_and!50457)))

(assert (=> d!179405 m!745205))

(declare-fun m!745273 () Bool)

(assert (=> d!179405 m!745273))

(assert (=> d!179405 m!745219))

(declare-fun m!745275 () Bool)

(assert (=> d!179405 m!745275))

(assert (=> b!471723 d!179405))

(declare-fun bs!58437 () Bool)

(declare-fun d!179407 () Bool)

(assert (= bs!58437 (and d!179407 start!45108)))

(declare-fun lambda!13979 () Int)

(assert (=> bs!58437 (not (= lambda!13979 lambda!13971))))

(assert (=> d!179407 true))

(assert (=> d!179407 true))

(assert (=> d!179407 (< (dynLambda!2853 order!4179 f!1027) (dynLambda!2854 order!4181 lambda!13979))))

(declare-fun exists!51 ((Set A!369) Int) Bool)

(assert (=> d!179407 (= (set.member (h!9940 l!2882) (flatMap!89 s!1494 f!1027)) (exists!51 s!1494 lambda!13979))))

(declare-fun lt!210166 () A!369)

(declare-fun choose!3566 ((Set A!369) Int B!931) A!369)

(assert (=> d!179407 (= lt!210166 (choose!3566 s!1494 f!1027 (h!9940 l!2882)))))

(assert (=> d!179407 (= (flatMapPost!17 s!1494 f!1027 (h!9940 l!2882)) lt!210166)))

(declare-fun bs!58438 () Bool)

(assert (= bs!58438 d!179407))

(assert (=> bs!58438 m!745219))

(assert (=> bs!58438 m!745275))

(declare-fun m!745277 () Bool)

(assert (=> bs!58438 m!745277))

(declare-fun m!745279 () Bool)

(assert (=> bs!58438 m!745279))

(assert (=> b!471723 d!179407))

(declare-fun b!471806 () Bool)

(declare-fun e!288555 () Bool)

(declare-fun e!288556 () Bool)

(assert (=> b!471806 (= e!288555 e!288556)))

(declare-fun res!209264 () Bool)

(assert (=> b!471806 (=> res!209264 e!288556)))

(declare-fun e!288558 () Bool)

(assert (=> b!471806 (= res!209264 e!288558)))

(declare-fun res!209267 () Bool)

(assert (=> b!471806 (=> (not res!209267) (not e!288558))))

(assert (=> b!471806 (= res!209267 (= (h!9940 l!2882) (h!9940 lt!210133)))))

(declare-fun d!179409 () Bool)

(declare-fun res!209265 () Bool)

(declare-fun e!288557 () Bool)

(assert (=> d!179409 (=> res!209265 e!288557)))

(assert (=> d!179409 (= res!209265 (is-Nil!4543 l!2882))))

(assert (=> d!179409 (= (subseq!110 l!2882 lt!210133) e!288557)))

(declare-fun b!471808 () Bool)

(assert (=> b!471808 (= e!288556 (subseq!110 l!2882 (t!72977 lt!210133)))))

(declare-fun b!471807 () Bool)

(assert (=> b!471807 (= e!288558 (subseq!110 (t!72977 l!2882) (t!72977 lt!210133)))))

(declare-fun b!471805 () Bool)

(assert (=> b!471805 (= e!288557 e!288555)))

(declare-fun res!209266 () Bool)

(assert (=> b!471805 (=> (not res!209266) (not e!288555))))

(assert (=> b!471805 (= res!209266 (is-Cons!4543 lt!210133))))

(assert (= (and d!179409 (not res!209265)) b!471805))

(assert (= (and b!471805 res!209266) b!471806))

(assert (= (and b!471806 res!209267) b!471807))

(assert (= (and b!471806 (not res!209264)) b!471808))

(assert (=> b!471808 m!745263))

(assert (=> b!471807 m!745257))

(assert (=> b!471722 d!179409))

(declare-fun d!179411 () Bool)

(declare-fun e!288561 () Bool)

(assert (=> d!179411 e!288561))

(declare-fun res!209270 () Bool)

(assert (=> d!179411 (=> (not res!209270) (not e!288561))))

(declare-fun lt!210169 () List!4553)

(declare-fun noDuplicate!96 (List!4553) Bool)

(assert (=> d!179411 (= res!209270 (noDuplicate!96 lt!210169))))

(declare-fun choose!3567 ((Set B!931)) List!4553)

(assert (=> d!179411 (= lt!210169 (choose!3567 lt!210134))))

(assert (=> d!179411 (= (toList!324 lt!210134) lt!210169)))

(declare-fun b!471811 () Bool)

(declare-fun content!773 (List!4553) (Set B!931))

(assert (=> b!471811 (= e!288561 (= (content!773 lt!210169) lt!210134))))

(assert (= (and d!179411 res!209270) b!471811))

(declare-fun m!745283 () Bool)

(assert (=> d!179411 m!745283))

(declare-fun m!745285 () Bool)

(assert (=> d!179411 m!745285))

(declare-fun m!745287 () Bool)

(assert (=> b!471811 m!745287))

(assert (=> b!471722 d!179411))

(declare-fun d!179417 () Bool)

(declare-fun choose!3568 ((Set A!369) Int) (Set B!931))

(assert (=> d!179417 (= (flatMap!89 s!1494 f!1027) (choose!3568 s!1494 f!1027))))

(declare-fun bs!58440 () Bool)

(assert (= bs!58440 d!179417))

(declare-fun m!745289 () Bool)

(assert (=> bs!58440 m!745289))

(assert (=> b!471722 d!179417))

(declare-fun condSetEmpty!1943 () Bool)

(assert (=> setNonEmpty!1937 (= condSetEmpty!1943 (= setRest!1937 (as set.empty (Set A!369))))))

(declare-fun setRes!1943 () Bool)

(assert (=> setNonEmpty!1937 (= tp!130683 setRes!1943)))

(declare-fun setIsEmpty!1943 () Bool)

(assert (=> setIsEmpty!1943 setRes!1943))

(declare-fun setNonEmpty!1943 () Bool)

(declare-fun tp!130698 () Bool)

(assert (=> setNonEmpty!1943 (= setRes!1943 (and tp!130698 tp_is_empty!2117))))

(declare-fun setElem!1943 () A!369)

(declare-fun setRest!1943 () (Set A!369))

(assert (=> setNonEmpty!1943 (= setRest!1937 (set.union (set.insert setElem!1943 (as set.empty (Set A!369))) setRest!1943))))

(assert (= (and setNonEmpty!1937 condSetEmpty!1943) setIsEmpty!1943))

(assert (= (and setNonEmpty!1937 (not condSetEmpty!1943)) setNonEmpty!1943))

(declare-fun b!471818 () Bool)

(declare-fun e!288564 () Bool)

(declare-fun tp!130701 () Bool)

(assert (=> b!471818 (= e!288564 (and tp_is_empty!2119 tp!130701))))

(assert (=> b!471726 (= tp!130680 e!288564)))

(assert (= (and b!471726 (is-Cons!4543 (t!72977 l!2882))) b!471818))

(declare-fun b_lambda!19697 () Bool)

(assert (= b_lambda!19695 (or (and start!45108 b_free!13151) b_lambda!19697)))

(push 1)

(assert (not d!179407))

(assert (not d!179405))

(assert (not d!179417))

(assert (not b!471768))

(assert (not d!179399))

(assert (not b_next!13149))

(assert (not d!179393))

(assert (not b!471811))

(assert b_and!50457)

(assert (not b!471780))

(assert (not d!179411))

(assert tp_is_empty!2119)

(assert (not b!471797))

(assert (not b_next!13151))

(assert (not b!471779))

(assert (not b!471808))

(assert (not setNonEmpty!1943))

(assert (not b_lambda!19697))

(assert (not bm!32803))

(assert (not b!471800))

(assert (not b_lambda!19691))

(assert tp_is_empty!2117)

(assert b_and!50445)

(assert (not b!471760))

(assert (not b!471807))

(assert (not b!471766))

(assert (not b!471795))

(assert (not b!471818))

(assert (not d!179403))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50445)

(assert b_and!50457)

(assert (not b_next!13151))

(assert (not b_next!13149))

(check-sat)

(pop 1)

