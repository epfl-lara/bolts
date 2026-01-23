; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696530 () Bool)

(assert start!696530)

(declare-fun res!2914787 () Bool)

(declare-fun e!4293243 () Bool)

(assert (=> start!696530 (=> (not res!2914787) (not e!4293243))))

(declare-datatypes ((C!36650 0))(
  ( (C!36651 (val!28273 Int)) )
))
(declare-datatypes ((Regex!18188 0))(
  ( (ElementMatch!18188 (c!1332281 C!36650)) (Concat!27033 (regOne!36888 Regex!18188) (regTwo!36888 Regex!18188)) (EmptyExpr!18188) (Star!18188 (reg!18517 Regex!18188)) (EmptyLang!18188) (Union!18188 (regOne!36889 Regex!18188) (regTwo!36889 Regex!18188)) )
))
(declare-fun r!11483 () Regex!18188)

(declare-fun validRegex!9355 (Regex!18188) Bool)

(assert (=> start!696530 (= res!2914787 (validRegex!9355 r!11483))))

(assert (=> start!696530 e!4293243))

(declare-fun e!4293240 () Bool)

(assert (=> start!696530 e!4293240))

(declare-fun condSetEmpty!52660 () Bool)

(declare-datatypes ((List!69454 0))(
  ( (Nil!69330) (Cons!69330 (h!75778 Regex!18188) (t!383471 List!69454)) )
))
(declare-datatypes ((Context!14364 0))(
  ( (Context!14365 (exprs!7682 List!69454)) )
))
(declare-fun z!3189 () (Set Context!14364))

(assert (=> start!696530 (= condSetEmpty!52660 (= z!3189 (as set.empty (Set Context!14364))))))

(declare-fun setRes!52660 () Bool)

(assert (=> start!696530 setRes!52660))

(declare-fun setIsEmpty!52660 () Bool)

(assert (=> setIsEmpty!52660 setRes!52660))

(declare-fun b!7144008 () Bool)

(declare-fun e!4293241 () Bool)

(assert (=> b!7144008 (= e!4293243 e!4293241)))

(declare-fun res!2914786 () Bool)

(assert (=> b!7144008 (=> (not res!2914786) (not e!4293241))))

(declare-datatypes ((List!69455 0))(
  ( (Nil!69331) (Cons!69331 (h!75779 Context!14364) (t!383472 List!69455)) )
))
(declare-fun lt!2568261 () List!69455)

(declare-fun unfocusZipper!2536 (List!69455) Regex!18188)

(assert (=> b!7144008 (= res!2914786 (= r!11483 (unfocusZipper!2536 lt!2568261)))))

(declare-fun toList!11219 ((Set Context!14364)) List!69455)

(assert (=> b!7144008 (= lt!2568261 (toList!11219 z!3189))))

(declare-fun b!7144009 () Bool)

(declare-fun e!4293242 () Bool)

(declare-fun lt!2568262 () List!69454)

(declare-fun lambda!435335 () Int)

(declare-fun forall!17026 (List!69454 Int) Bool)

(assert (=> b!7144009 (= e!4293242 (not (forall!17026 lt!2568262 lambda!435335)))))

(declare-fun b!7144010 () Bool)

(declare-fun tp_is_empty!46013 () Bool)

(assert (=> b!7144010 (= e!4293240 tp_is_empty!46013)))

(declare-fun b!7144011 () Bool)

(declare-fun tp!1970598 () Bool)

(declare-fun tp!1970599 () Bool)

(assert (=> b!7144011 (= e!4293240 (and tp!1970598 tp!1970599))))

(declare-fun b!7144012 () Bool)

(declare-fun e!4293239 () Bool)

(declare-fun tp!1970601 () Bool)

(assert (=> b!7144012 (= e!4293239 tp!1970601)))

(declare-fun tp!1970600 () Bool)

(declare-fun setNonEmpty!52660 () Bool)

(declare-fun setElem!52660 () Context!14364)

(declare-fun inv!88535 (Context!14364) Bool)

(assert (=> setNonEmpty!52660 (= setRes!52660 (and tp!1970600 (inv!88535 setElem!52660) e!4293239))))

(declare-fun setRest!52660 () (Set Context!14364))

(assert (=> setNonEmpty!52660 (= z!3189 (set.union (set.insert setElem!52660 (as set.empty (Set Context!14364))) setRest!52660))))

(declare-fun b!7144013 () Bool)

(assert (=> b!7144013 (= e!4293241 e!4293242)))

(declare-fun res!2914788 () Bool)

(assert (=> b!7144013 (=> (not res!2914788) (not e!4293242))))

(declare-fun generalisedUnion!2693 (List!69454) Regex!18188)

(assert (=> b!7144013 (= res!2914788 (= r!11483 (generalisedUnion!2693 lt!2568262)))))

(declare-fun unfocusZipperList!2229 (List!69455) List!69454)

(assert (=> b!7144013 (= lt!2568262 (unfocusZipperList!2229 lt!2568261))))

(declare-fun b!7144014 () Bool)

(declare-fun tp!1970603 () Bool)

(declare-fun tp!1970604 () Bool)

(assert (=> b!7144014 (= e!4293240 (and tp!1970603 tp!1970604))))

(declare-fun b!7144015 () Bool)

(declare-fun tp!1970602 () Bool)

(assert (=> b!7144015 (= e!4293240 tp!1970602)))

(assert (= (and start!696530 res!2914787) b!7144008))

(assert (= (and b!7144008 res!2914786) b!7144013))

(assert (= (and b!7144013 res!2914788) b!7144009))

(assert (= (and start!696530 (is-ElementMatch!18188 r!11483)) b!7144010))

(assert (= (and start!696530 (is-Concat!27033 r!11483)) b!7144011))

(assert (= (and start!696530 (is-Star!18188 r!11483)) b!7144015))

(assert (= (and start!696530 (is-Union!18188 r!11483)) b!7144014))

(assert (= (and start!696530 condSetEmpty!52660) setIsEmpty!52660))

(assert (= (and start!696530 (not condSetEmpty!52660)) setNonEmpty!52660))

(assert (= setNonEmpty!52660 b!7144012))

(declare-fun m!7857870 () Bool)

(assert (=> b!7144008 m!7857870))

(declare-fun m!7857872 () Bool)

(assert (=> b!7144008 m!7857872))

(declare-fun m!7857874 () Bool)

(assert (=> b!7144009 m!7857874))

(declare-fun m!7857876 () Bool)

(assert (=> b!7144013 m!7857876))

(declare-fun m!7857878 () Bool)

(assert (=> b!7144013 m!7857878))

(declare-fun m!7857880 () Bool)

(assert (=> start!696530 m!7857880))

(declare-fun m!7857882 () Bool)

(assert (=> setNonEmpty!52660 m!7857882))

(push 1)

(assert tp_is_empty!46013)

(assert (not b!7144012))

(assert (not setNonEmpty!52660))

(assert (not b!7144013))

(assert (not start!696530))

(assert (not b!7144014))

(assert (not b!7144008))

(assert (not b!7144011))

(assert (not b!7144009))

(assert (not b!7144015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!651366 () Bool)

(declare-fun call!651371 () Bool)

(declare-fun c!1332291 () Bool)

(assert (=> bm!651366 (= call!651371 (validRegex!9355 (ite c!1332291 (regOne!36889 r!11483) (regOne!36888 r!11483))))))

(declare-fun b!7144076 () Bool)

(declare-fun e!4293293 () Bool)

(declare-fun call!651373 () Bool)

(assert (=> b!7144076 (= e!4293293 call!651373)))

(declare-fun b!7144077 () Bool)

(declare-fun e!4293291 () Bool)

(assert (=> b!7144077 (= e!4293291 e!4293293)))

(declare-fun res!2914818 () Bool)

(declare-fun nullable!7707 (Regex!18188) Bool)

(assert (=> b!7144077 (= res!2914818 (not (nullable!7707 (reg!18517 r!11483))))))

(assert (=> b!7144077 (=> (not res!2914818) (not e!4293293))))

(declare-fun b!7144078 () Bool)

(declare-fun e!4293289 () Bool)

(declare-fun call!651372 () Bool)

(assert (=> b!7144078 (= e!4293289 call!651372)))

(declare-fun b!7144079 () Bool)

(declare-fun e!4293290 () Bool)

(assert (=> b!7144079 (= e!4293291 e!4293290)))

(assert (=> b!7144079 (= c!1332291 (is-Union!18188 r!11483))))

(declare-fun b!7144080 () Bool)

(declare-fun e!4293288 () Bool)

(assert (=> b!7144080 (= e!4293288 call!651372)))

(declare-fun d!2227851 () Bool)

(declare-fun res!2914820 () Bool)

(declare-fun e!4293287 () Bool)

(assert (=> d!2227851 (=> res!2914820 e!4293287)))

(assert (=> d!2227851 (= res!2914820 (is-ElementMatch!18188 r!11483))))

(assert (=> d!2227851 (= (validRegex!9355 r!11483) e!4293287)))

(declare-fun b!7144081 () Bool)

(assert (=> b!7144081 (= e!4293287 e!4293291)))

(declare-fun c!1332292 () Bool)

(assert (=> b!7144081 (= c!1332292 (is-Star!18188 r!11483))))

(declare-fun b!7144082 () Bool)

(declare-fun e!4293292 () Bool)

(assert (=> b!7144082 (= e!4293292 e!4293288)))

(declare-fun res!2914821 () Bool)

(assert (=> b!7144082 (=> (not res!2914821) (not e!4293288))))

(assert (=> b!7144082 (= res!2914821 call!651371)))

(declare-fun bm!651367 () Bool)

(assert (=> bm!651367 (= call!651372 call!651373)))

(declare-fun bm!651368 () Bool)

(assert (=> bm!651368 (= call!651373 (validRegex!9355 (ite c!1332292 (reg!18517 r!11483) (ite c!1332291 (regTwo!36889 r!11483) (regTwo!36888 r!11483)))))))

(declare-fun b!7144083 () Bool)

(declare-fun res!2914822 () Bool)

(assert (=> b!7144083 (=> res!2914822 e!4293292)))

(assert (=> b!7144083 (= res!2914822 (not (is-Concat!27033 r!11483)))))

(assert (=> b!7144083 (= e!4293290 e!4293292)))

(declare-fun b!7144084 () Bool)

(declare-fun res!2914819 () Bool)

(assert (=> b!7144084 (=> (not res!2914819) (not e!4293289))))

(assert (=> b!7144084 (= res!2914819 call!651371)))

(assert (=> b!7144084 (= e!4293290 e!4293289)))

(assert (= (and d!2227851 (not res!2914820)) b!7144081))

(assert (= (and b!7144081 c!1332292) b!7144077))

(assert (= (and b!7144081 (not c!1332292)) b!7144079))

(assert (= (and b!7144077 res!2914818) b!7144076))

(assert (= (and b!7144079 c!1332291) b!7144084))

(assert (= (and b!7144079 (not c!1332291)) b!7144083))

(assert (= (and b!7144084 res!2914819) b!7144078))

(assert (= (and b!7144083 (not res!2914822)) b!7144082))

(assert (= (and b!7144082 res!2914821) b!7144080))

(assert (= (or b!7144078 b!7144080) bm!651367))

(assert (= (or b!7144084 b!7144082) bm!651366))

(assert (= (or b!7144076 bm!651367) bm!651368))

(declare-fun m!7857898 () Bool)

(assert (=> bm!651366 m!7857898))

(declare-fun m!7857900 () Bool)

(assert (=> b!7144077 m!7857900))

(declare-fun m!7857902 () Bool)

(assert (=> bm!651368 m!7857902))

(assert (=> start!696530 d!2227851))

(declare-fun d!2227853 () Bool)

(declare-fun res!2914827 () Bool)

(declare-fun e!4293298 () Bool)

(assert (=> d!2227853 (=> res!2914827 e!4293298)))

(assert (=> d!2227853 (= res!2914827 (is-Nil!69330 lt!2568262))))

(assert (=> d!2227853 (= (forall!17026 lt!2568262 lambda!435335) e!4293298)))

(declare-fun b!7144089 () Bool)

(declare-fun e!4293299 () Bool)

(assert (=> b!7144089 (= e!4293298 e!4293299)))

(declare-fun res!2914828 () Bool)

(assert (=> b!7144089 (=> (not res!2914828) (not e!4293299))))

(declare-fun dynLambda!28238 (Int Regex!18188) Bool)

(assert (=> b!7144089 (= res!2914828 (dynLambda!28238 lambda!435335 (h!75778 lt!2568262)))))

(declare-fun b!7144090 () Bool)

(assert (=> b!7144090 (= e!4293299 (forall!17026 (t!383471 lt!2568262) lambda!435335))))

(assert (= (and d!2227853 (not res!2914827)) b!7144089))

(assert (= (and b!7144089 res!2914828) b!7144090))

(declare-fun b_lambda!272685 () Bool)

(assert (=> (not b_lambda!272685) (not b!7144089)))

(declare-fun m!7857904 () Bool)

(assert (=> b!7144089 m!7857904))

(declare-fun m!7857906 () Bool)

(assert (=> b!7144090 m!7857906))

(assert (=> b!7144009 d!2227853))

(declare-fun bs!1888893 () Bool)

(declare-fun d!2227855 () Bool)

(assert (= bs!1888893 (and d!2227855 b!7144009)))

(declare-fun lambda!435341 () Int)

(assert (=> bs!1888893 (= lambda!435341 lambda!435335)))

(declare-fun e!4293322 () Bool)

(assert (=> d!2227855 e!4293322))

(declare-fun res!2914838 () Bool)

(assert (=> d!2227855 (=> (not res!2914838) (not e!4293322))))

(declare-fun lt!2568273 () Regex!18188)

(assert (=> d!2227855 (= res!2914838 (validRegex!9355 lt!2568273))))

(declare-fun e!4293324 () Regex!18188)

(assert (=> d!2227855 (= lt!2568273 e!4293324)))

(declare-fun c!1332304 () Bool)

(declare-fun e!4293320 () Bool)

(assert (=> d!2227855 (= c!1332304 e!4293320)))

(declare-fun res!2914839 () Bool)

(assert (=> d!2227855 (=> (not res!2914839) (not e!4293320))))

(assert (=> d!2227855 (= res!2914839 (is-Cons!69330 lt!2568262))))

(assert (=> d!2227855 (forall!17026 lt!2568262 lambda!435341)))

(assert (=> d!2227855 (= (generalisedUnion!2693 lt!2568262) lt!2568273)))

(declare-fun b!7144120 () Bool)

(declare-fun e!4293323 () Bool)

(declare-fun head!14520 (List!69454) Regex!18188)

(assert (=> b!7144120 (= e!4293323 (= lt!2568273 (head!14520 lt!2568262)))))

(declare-fun b!7144121 () Bool)

(declare-fun e!4293321 () Regex!18188)

(assert (=> b!7144121 (= e!4293321 EmptyLang!18188)))

(declare-fun b!7144122 () Bool)

(declare-fun isEmpty!40079 (List!69454) Bool)

(assert (=> b!7144122 (= e!4293320 (isEmpty!40079 (t!383471 lt!2568262)))))

(declare-fun b!7144123 () Bool)

(assert (=> b!7144123 (= e!4293324 (h!75778 lt!2568262))))

(declare-fun b!7144124 () Bool)

(declare-fun e!4293319 () Bool)

(declare-fun isEmptyLang!2111 (Regex!18188) Bool)

(assert (=> b!7144124 (= e!4293319 (isEmptyLang!2111 lt!2568273))))

(declare-fun b!7144125 () Bool)

(assert (=> b!7144125 (= e!4293322 e!4293319)))

(declare-fun c!1332306 () Bool)

(assert (=> b!7144125 (= c!1332306 (isEmpty!40079 lt!2568262))))

(declare-fun b!7144126 () Bool)

(assert (=> b!7144126 (= e!4293321 (Union!18188 (h!75778 lt!2568262) (generalisedUnion!2693 (t!383471 lt!2568262))))))

(declare-fun b!7144127 () Bool)

(assert (=> b!7144127 (= e!4293324 e!4293321)))

(declare-fun c!1332305 () Bool)

(assert (=> b!7144127 (= c!1332305 (is-Cons!69330 lt!2568262))))

(declare-fun b!7144128 () Bool)

(assert (=> b!7144128 (= e!4293319 e!4293323)))

(declare-fun c!1332303 () Bool)

(declare-fun tail!13990 (List!69454) List!69454)

(assert (=> b!7144128 (= c!1332303 (isEmpty!40079 (tail!13990 lt!2568262)))))

(declare-fun b!7144129 () Bool)

(declare-fun isUnion!1538 (Regex!18188) Bool)

(assert (=> b!7144129 (= e!4293323 (isUnion!1538 lt!2568273))))

(assert (= (and d!2227855 res!2914839) b!7144122))

(assert (= (and d!2227855 c!1332304) b!7144123))

(assert (= (and d!2227855 (not c!1332304)) b!7144127))

(assert (= (and b!7144127 c!1332305) b!7144126))

(assert (= (and b!7144127 (not c!1332305)) b!7144121))

(assert (= (and d!2227855 res!2914838) b!7144125))

(assert (= (and b!7144125 c!1332306) b!7144124))

(assert (= (and b!7144125 (not c!1332306)) b!7144128))

(assert (= (and b!7144128 c!1332303) b!7144120))

(assert (= (and b!7144128 (not c!1332303)) b!7144129))

(declare-fun m!7857914 () Bool)

(assert (=> b!7144125 m!7857914))

(declare-fun m!7857916 () Bool)

(assert (=> b!7144129 m!7857916))

(declare-fun m!7857918 () Bool)

(assert (=> b!7144126 m!7857918))

(declare-fun m!7857920 () Bool)

(assert (=> d!2227855 m!7857920))

(declare-fun m!7857922 () Bool)

(assert (=> d!2227855 m!7857922))

(declare-fun m!7857924 () Bool)

(assert (=> b!7144124 m!7857924))

(declare-fun m!7857926 () Bool)

(assert (=> b!7144120 m!7857926))

(declare-fun m!7857930 () Bool)

(assert (=> b!7144128 m!7857930))

(assert (=> b!7144128 m!7857930))

(declare-fun m!7857932 () Bool)

(assert (=> b!7144128 m!7857932))

(declare-fun m!7857934 () Bool)

(assert (=> b!7144122 m!7857934))

(assert (=> b!7144013 d!2227855))

(declare-fun bs!1888895 () Bool)

(declare-fun d!2227859 () Bool)

(assert (= bs!1888895 (and d!2227859 b!7144009)))

(declare-fun lambda!435344 () Int)

(assert (=> bs!1888895 (= lambda!435344 lambda!435335)))

(declare-fun bs!1888896 () Bool)

(assert (= bs!1888896 (and d!2227859 d!2227855)))

(assert (=> bs!1888896 (= lambda!435344 lambda!435341)))

(declare-fun lt!2568279 () List!69454)

(assert (=> d!2227859 (forall!17026 lt!2568279 lambda!435344)))

(declare-fun e!4293329 () List!69454)

(assert (=> d!2227859 (= lt!2568279 e!4293329)))

(declare-fun c!1332309 () Bool)

(assert (=> d!2227859 (= c!1332309 (is-Cons!69331 lt!2568261))))

(assert (=> d!2227859 (= (unfocusZipperList!2229 lt!2568261) lt!2568279)))

(declare-fun b!7144136 () Bool)

(declare-fun generalisedConcat!2367 (List!69454) Regex!18188)

(assert (=> b!7144136 (= e!4293329 (Cons!69330 (generalisedConcat!2367 (exprs!7682 (h!75779 lt!2568261))) (unfocusZipperList!2229 (t!383472 lt!2568261))))))

(declare-fun b!7144137 () Bool)

(assert (=> b!7144137 (= e!4293329 Nil!69330)))

(assert (= (and d!2227859 c!1332309) b!7144136))

(assert (= (and d!2227859 (not c!1332309)) b!7144137))

(declare-fun m!7857938 () Bool)

(assert (=> d!2227859 m!7857938))

(declare-fun m!7857940 () Bool)

(assert (=> b!7144136 m!7857940))

(declare-fun m!7857942 () Bool)

(assert (=> b!7144136 m!7857942))

(assert (=> b!7144013 d!2227859))

(declare-fun bs!1888897 () Bool)

(declare-fun d!2227863 () Bool)

(assert (= bs!1888897 (and d!2227863 b!7144009)))

(declare-fun lambda!435347 () Int)

(assert (=> bs!1888897 (= lambda!435347 lambda!435335)))

(declare-fun bs!1888898 () Bool)

(assert (= bs!1888898 (and d!2227863 d!2227855)))

(assert (=> bs!1888898 (= lambda!435347 lambda!435341)))

(declare-fun bs!1888899 () Bool)

(assert (= bs!1888899 (and d!2227863 d!2227859)))

(assert (=> bs!1888899 (= lambda!435347 lambda!435344)))

(assert (=> d!2227863 (= (inv!88535 setElem!52660) (forall!17026 (exprs!7682 setElem!52660) lambda!435347))))

(declare-fun bs!1888900 () Bool)

(assert (= bs!1888900 d!2227863))

(declare-fun m!7857950 () Bool)

(assert (=> bs!1888900 m!7857950))

(assert (=> setNonEmpty!52660 d!2227863))

(declare-fun d!2227867 () Bool)

(declare-fun lt!2568283 () Regex!18188)

(assert (=> d!2227867 (validRegex!9355 lt!2568283)))

(assert (=> d!2227867 (= lt!2568283 (generalisedUnion!2693 (unfocusZipperList!2229 lt!2568261)))))

(assert (=> d!2227867 (= (unfocusZipper!2536 lt!2568261) lt!2568283)))

(declare-fun bs!1888901 () Bool)

(assert (= bs!1888901 d!2227867))

(declare-fun m!7857952 () Bool)

(assert (=> bs!1888901 m!7857952))

(assert (=> bs!1888901 m!7857878))

(assert (=> bs!1888901 m!7857878))

(declare-fun m!7857954 () Bool)

(assert (=> bs!1888901 m!7857954))

(assert (=> b!7144008 d!2227867))

(declare-fun d!2227869 () Bool)

(declare-fun e!4293333 () Bool)

(assert (=> d!2227869 e!4293333))

(declare-fun res!2914845 () Bool)

(assert (=> d!2227869 (=> (not res!2914845) (not e!4293333))))

(declare-fun lt!2568286 () List!69455)

(declare-fun noDuplicate!2842 (List!69455) Bool)

(assert (=> d!2227869 (= res!2914845 (noDuplicate!2842 lt!2568286))))

(declare-fun choose!55283 ((Set Context!14364)) List!69455)

(assert (=> d!2227869 (= lt!2568286 (choose!55283 z!3189))))

(assert (=> d!2227869 (= (toList!11219 z!3189) lt!2568286)))

(declare-fun b!7144141 () Bool)

(declare-fun content!14222 (List!69455) (Set Context!14364))

(assert (=> b!7144141 (= e!4293333 (= (content!14222 lt!2568286) z!3189))))

(assert (= (and d!2227869 res!2914845) b!7144141))

(declare-fun m!7857958 () Bool)

(assert (=> d!2227869 m!7857958))

(declare-fun m!7857960 () Bool)

(assert (=> d!2227869 m!7857960))

(declare-fun m!7857962 () Bool)

(assert (=> b!7144141 m!7857962))

(assert (=> b!7144008 d!2227869))

(declare-fun b!7144155 () Bool)

(declare-fun e!4293336 () Bool)

(declare-fun tp!1970638 () Bool)

(declare-fun tp!1970637 () Bool)

(assert (=> b!7144155 (= e!4293336 (and tp!1970638 tp!1970637))))

(assert (=> b!7144015 (= tp!1970602 e!4293336)))

(declare-fun b!7144152 () Bool)

(assert (=> b!7144152 (= e!4293336 tp_is_empty!46013)))

(declare-fun b!7144154 () Bool)

(declare-fun tp!1970639 () Bool)

(assert (=> b!7144154 (= e!4293336 tp!1970639)))

(declare-fun b!7144153 () Bool)

(declare-fun tp!1970636 () Bool)

(declare-fun tp!1970640 () Bool)

(assert (=> b!7144153 (= e!4293336 (and tp!1970636 tp!1970640))))

(assert (= (and b!7144015 (is-ElementMatch!18188 (reg!18517 r!11483))) b!7144152))

(assert (= (and b!7144015 (is-Concat!27033 (reg!18517 r!11483))) b!7144153))

(assert (= (and b!7144015 (is-Star!18188 (reg!18517 r!11483))) b!7144154))

(assert (= (and b!7144015 (is-Union!18188 (reg!18517 r!11483))) b!7144155))

(declare-fun b!7144159 () Bool)

(declare-fun e!4293337 () Bool)

(declare-fun tp!1970643 () Bool)

(declare-fun tp!1970642 () Bool)

(assert (=> b!7144159 (= e!4293337 (and tp!1970643 tp!1970642))))

(assert (=> b!7144014 (= tp!1970603 e!4293337)))

(declare-fun b!7144156 () Bool)

(assert (=> b!7144156 (= e!4293337 tp_is_empty!46013)))

(declare-fun b!7144158 () Bool)

(declare-fun tp!1970644 () Bool)

(assert (=> b!7144158 (= e!4293337 tp!1970644)))

(declare-fun b!7144157 () Bool)

(declare-fun tp!1970641 () Bool)

(declare-fun tp!1970645 () Bool)

(assert (=> b!7144157 (= e!4293337 (and tp!1970641 tp!1970645))))

(assert (= (and b!7144014 (is-ElementMatch!18188 (regOne!36889 r!11483))) b!7144156))

(assert (= (and b!7144014 (is-Concat!27033 (regOne!36889 r!11483))) b!7144157))

(assert (= (and b!7144014 (is-Star!18188 (regOne!36889 r!11483))) b!7144158))

(assert (= (and b!7144014 (is-Union!18188 (regOne!36889 r!11483))) b!7144159))

(declare-fun b!7144163 () Bool)

(declare-fun e!4293338 () Bool)

(declare-fun tp!1970648 () Bool)

(declare-fun tp!1970647 () Bool)

(assert (=> b!7144163 (= e!4293338 (and tp!1970648 tp!1970647))))

(assert (=> b!7144014 (= tp!1970604 e!4293338)))

(declare-fun b!7144160 () Bool)

(assert (=> b!7144160 (= e!4293338 tp_is_empty!46013)))

(declare-fun b!7144162 () Bool)

(declare-fun tp!1970649 () Bool)

(assert (=> b!7144162 (= e!4293338 tp!1970649)))

(declare-fun b!7144161 () Bool)

(declare-fun tp!1970646 () Bool)

(declare-fun tp!1970650 () Bool)

(assert (=> b!7144161 (= e!4293338 (and tp!1970646 tp!1970650))))

(assert (= (and b!7144014 (is-ElementMatch!18188 (regTwo!36889 r!11483))) b!7144160))

(assert (= (and b!7144014 (is-Concat!27033 (regTwo!36889 r!11483))) b!7144161))

(assert (= (and b!7144014 (is-Star!18188 (regTwo!36889 r!11483))) b!7144162))

(assert (= (and b!7144014 (is-Union!18188 (regTwo!36889 r!11483))) b!7144163))

(declare-fun condSetEmpty!52666 () Bool)

(assert (=> setNonEmpty!52660 (= condSetEmpty!52666 (= setRest!52660 (as set.empty (Set Context!14364))))))

(declare-fun setRes!52666 () Bool)

(assert (=> setNonEmpty!52660 (= tp!1970600 setRes!52666)))

(declare-fun setIsEmpty!52666 () Bool)

(assert (=> setIsEmpty!52666 setRes!52666))

(declare-fun setNonEmpty!52666 () Bool)

(declare-fun e!4293341 () Bool)

(declare-fun setElem!52666 () Context!14364)

(declare-fun tp!1970655 () Bool)

(assert (=> setNonEmpty!52666 (= setRes!52666 (and tp!1970655 (inv!88535 setElem!52666) e!4293341))))

(declare-fun setRest!52666 () (Set Context!14364))

(assert (=> setNonEmpty!52666 (= setRest!52660 (set.union (set.insert setElem!52666 (as set.empty (Set Context!14364))) setRest!52666))))

(declare-fun b!7144168 () Bool)

(declare-fun tp!1970656 () Bool)

(assert (=> b!7144168 (= e!4293341 tp!1970656)))

(assert (= (and setNonEmpty!52660 condSetEmpty!52666) setIsEmpty!52666))

(assert (= (and setNonEmpty!52660 (not condSetEmpty!52666)) setNonEmpty!52666))

(assert (= setNonEmpty!52666 b!7144168))

(declare-fun m!7857964 () Bool)

(assert (=> setNonEmpty!52666 m!7857964))

(declare-fun b!7144173 () Bool)

(declare-fun e!4293344 () Bool)

(declare-fun tp!1970661 () Bool)

(declare-fun tp!1970662 () Bool)

(assert (=> b!7144173 (= e!4293344 (and tp!1970661 tp!1970662))))

(assert (=> b!7144012 (= tp!1970601 e!4293344)))

(assert (= (and b!7144012 (is-Cons!69330 (exprs!7682 setElem!52660))) b!7144173))

(declare-fun b!7144177 () Bool)

(declare-fun e!4293345 () Bool)

(declare-fun tp!1970665 () Bool)

(declare-fun tp!1970664 () Bool)

(assert (=> b!7144177 (= e!4293345 (and tp!1970665 tp!1970664))))

(assert (=> b!7144011 (= tp!1970598 e!4293345)))

(declare-fun b!7144174 () Bool)

(assert (=> b!7144174 (= e!4293345 tp_is_empty!46013)))

(declare-fun b!7144176 () Bool)

(declare-fun tp!1970666 () Bool)

(assert (=> b!7144176 (= e!4293345 tp!1970666)))

(declare-fun b!7144175 () Bool)

(declare-fun tp!1970663 () Bool)

(declare-fun tp!1970667 () Bool)

(assert (=> b!7144175 (= e!4293345 (and tp!1970663 tp!1970667))))

(assert (= (and b!7144011 (is-ElementMatch!18188 (regOne!36888 r!11483))) b!7144174))

(assert (= (and b!7144011 (is-Concat!27033 (regOne!36888 r!11483))) b!7144175))

(assert (= (and b!7144011 (is-Star!18188 (regOne!36888 r!11483))) b!7144176))

(assert (= (and b!7144011 (is-Union!18188 (regOne!36888 r!11483))) b!7144177))

(declare-fun b!7144181 () Bool)

(declare-fun e!4293346 () Bool)

(declare-fun tp!1970670 () Bool)

(declare-fun tp!1970669 () Bool)

(assert (=> b!7144181 (= e!4293346 (and tp!1970670 tp!1970669))))

(assert (=> b!7144011 (= tp!1970599 e!4293346)))

(declare-fun b!7144178 () Bool)

(assert (=> b!7144178 (= e!4293346 tp_is_empty!46013)))

(declare-fun b!7144180 () Bool)

(declare-fun tp!1970671 () Bool)

(assert (=> b!7144180 (= e!4293346 tp!1970671)))

(declare-fun b!7144179 () Bool)

(declare-fun tp!1970668 () Bool)

(declare-fun tp!1970672 () Bool)

(assert (=> b!7144179 (= e!4293346 (and tp!1970668 tp!1970672))))

(assert (= (and b!7144011 (is-ElementMatch!18188 (regTwo!36888 r!11483))) b!7144178))

(assert (= (and b!7144011 (is-Concat!27033 (regTwo!36888 r!11483))) b!7144179))

(assert (= (and b!7144011 (is-Star!18188 (regTwo!36888 r!11483))) b!7144180))

(assert (= (and b!7144011 (is-Union!18188 (regTwo!36888 r!11483))) b!7144181))

(declare-fun b_lambda!272687 () Bool)

(assert (= b_lambda!272685 (or b!7144009 b_lambda!272687)))

(declare-fun bs!1888904 () Bool)

(declare-fun d!2227873 () Bool)

(assert (= bs!1888904 (and d!2227873 b!7144009)))

(assert (=> bs!1888904 (= (dynLambda!28238 lambda!435335 (h!75778 lt!2568262)) (validRegex!9355 (h!75778 lt!2568262)))))

(declare-fun m!7857966 () Bool)

(assert (=> bs!1888904 m!7857966))

(assert (=> b!7144089 d!2227873))

(push 1)

(assert (not b!7144163))

(assert (not b!7144168))

(assert (not d!2227867))

(assert (not b!7144120))

(assert (not b!7144141))

(assert (not b!7144157))

(assert (not b!7144136))

(assert (not b!7144161))

(assert (not d!2227859))

(assert (not b_lambda!272687))

(assert (not b!7144176))

(assert (not b!7144159))

(assert (not d!2227855))

(assert tp_is_empty!46013)

(assert (not b!7144155))

(assert (not b!7144090))

(assert (not d!2227863))

(assert (not b!7144153))

(assert (not b!7144162))

(assert (not b!7144077))

(assert (not b!7144173))

(assert (not b!7144122))

(assert (not b!7144125))

(assert (not bm!651366))

(assert (not bs!1888904))

(assert (not b!7144158))

(assert (not d!2227869))

(assert (not bm!651368))

(assert (not b!7144179))

(assert (not b!7144126))

(assert (not b!7144180))

(assert (not b!7144128))

(assert (not b!7144124))

(assert (not b!7144181))

(assert (not b!7144154))

(assert (not b!7144129))

(assert (not b!7144175))

(assert (not b!7144177))

(assert (not setNonEmpty!52666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

