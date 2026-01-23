; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279244 () Bool)

(assert start!279244)

(declare-fun res!1189415 () Bool)

(declare-fun e!1813622 () Bool)

(assert (=> start!279244 (=> (not res!1189415) (not e!1813622))))

(declare-datatypes ((C!17530 0))(
  ( (C!17531 (val!10799 Int)) )
))
(declare-datatypes ((Regex!8674 0))(
  ( (ElementMatch!8674 (c!462135 C!17530)) (Concat!13995 (regOne!17860 Regex!8674) (regTwo!17860 Regex!8674)) (EmptyExpr!8674) (Star!8674 (reg!9003 Regex!8674)) (EmptyLang!8674) (Union!8674 (regOne!17861 Regex!8674) (regTwo!17861 Regex!8674)) )
))
(declare-datatypes ((List!34354 0))(
  ( (Nil!34230) (Cons!34230 (h!39650 Regex!8674) (t!233397 List!34354)) )
))
(declare-datatypes ((Context!5268 0))(
  ( (Context!5269 (exprs!3134 List!34354)) )
))
(declare-fun z!691 () (Set Context!5268))

(declare-fun lostCauseZipper!578 ((Set Context!5268)) Bool)

(assert (=> start!279244 (= res!1189415 (not (lostCauseZipper!578 z!691)))))

(assert (=> start!279244 e!1813622))

(declare-fun condSetEmpty!25622 () Bool)

(assert (=> start!279244 (= condSetEmpty!25622 (= z!691 (as set.empty (Set Context!5268))))))

(declare-fun setRes!25622 () Bool)

(assert (=> start!279244 setRes!25622))

(declare-fun b!2864867 () Bool)

(declare-fun lambda!106122 () Int)

(declare-fun forall!7017 ((Set Context!5268) Int) Bool)

(assert (=> b!2864867 (= e!1813622 (forall!7017 z!691 lambda!106122))))

(declare-fun setIsEmpty!25622 () Bool)

(assert (=> setIsEmpty!25622 setRes!25622))

(declare-fun b!2864868 () Bool)

(declare-fun res!1189416 () Bool)

(assert (=> b!2864868 (=> (not res!1189416) (not e!1813622))))

(declare-datatypes ((List!34355 0))(
  ( (Nil!34231) (Cons!34231 (h!39651 C!17530) (t!233398 List!34355)) )
))
(declare-datatypes ((Option!6353 0))(
  ( (None!6352) (Some!6352 (v!34474 List!34355)) )
))
(declare-fun isDefined!4973 (Option!6353) Bool)

(declare-fun getLanguageWitness!309 ((Set Context!5268)) Option!6353)

(assert (=> b!2864868 (= res!1189416 (isDefined!4973 (getLanguageWitness!309 z!691)))))

(declare-fun b!2864869 () Bool)

(declare-fun e!1813623 () Bool)

(declare-fun tp!922619 () Bool)

(assert (=> b!2864869 (= e!1813623 tp!922619)))

(declare-fun setElem!25622 () Context!5268)

(declare-fun tp!922620 () Bool)

(declare-fun setNonEmpty!25622 () Bool)

(declare-fun inv!46273 (Context!5268) Bool)

(assert (=> setNonEmpty!25622 (= setRes!25622 (and tp!922620 (inv!46273 setElem!25622) e!1813623))))

(declare-fun setRest!25622 () (Set Context!5268))

(assert (=> setNonEmpty!25622 (= z!691 (set.union (set.insert setElem!25622 (as set.empty (Set Context!5268))) setRest!25622))))

(assert (= (and start!279244 res!1189415) b!2864868))

(assert (= (and b!2864868 res!1189416) b!2864867))

(assert (= (and start!279244 condSetEmpty!25622) setIsEmpty!25622))

(assert (= (and start!279244 (not condSetEmpty!25622)) setNonEmpty!25622))

(assert (= setNonEmpty!25622 b!2864869))

(declare-fun m!3284809 () Bool)

(assert (=> start!279244 m!3284809))

(declare-fun m!3284811 () Bool)

(assert (=> b!2864867 m!3284811))

(declare-fun m!3284813 () Bool)

(assert (=> b!2864868 m!3284813))

(assert (=> b!2864868 m!3284813))

(declare-fun m!3284815 () Bool)

(assert (=> b!2864868 m!3284815))

(declare-fun m!3284817 () Bool)

(assert (=> setNonEmpty!25622 m!3284817))

(push 1)

(assert (not b!2864867))

(assert (not setNonEmpty!25622))

(assert (not b!2864869))

(assert (not start!279244))

(assert (not b!2864868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828297 () Bool)

(declare-fun isEmpty!18658 (Option!6353) Bool)

(assert (=> d!828297 (= (isDefined!4973 (getLanguageWitness!309 z!691)) (not (isEmpty!18658 (getLanguageWitness!309 z!691))))))

(declare-fun bs!521003 () Bool)

(assert (= bs!521003 d!828297))

(assert (=> bs!521003 m!3284813))

(declare-fun m!3284829 () Bool)

(assert (=> bs!521003 m!3284829))

(assert (=> b!2864868 d!828297))

(declare-fun bs!521004 () Bool)

(declare-fun d!828299 () Bool)

(assert (= bs!521004 (and d!828299 b!2864867)))

(declare-fun lambda!106132 () Int)

(assert (=> bs!521004 (not (= lambda!106132 lambda!106122))))

(declare-fun lt!1015801 () Option!6353)

(declare-fun exists!1092 ((Set Context!5268) Int) Bool)

(assert (=> d!828299 (= (isDefined!4973 lt!1015801) (exists!1092 z!691 lambda!106132))))

(declare-fun e!1813632 () Option!6353)

(assert (=> d!828299 (= lt!1015801 e!1813632)))

(declare-fun c!462147 () Bool)

(assert (=> d!828299 (= c!462147 (exists!1092 z!691 lambda!106132))))

(assert (=> d!828299 (= (getLanguageWitness!309 z!691) lt!1015801)))

(declare-fun b!2864883 () Bool)

(declare-fun getLanguageWitness!311 (Context!5268) Option!6353)

(declare-fun getWitness!603 ((Set Context!5268) Int) Context!5268)

(assert (=> b!2864883 (= e!1813632 (getLanguageWitness!311 (getWitness!603 z!691 lambda!106132)))))

(declare-fun b!2864884 () Bool)

(assert (=> b!2864884 (= e!1813632 None!6352)))

(assert (= (and d!828299 c!462147) b!2864883))

(assert (= (and d!828299 (not c!462147)) b!2864884))

(declare-fun m!3284831 () Bool)

(assert (=> d!828299 m!3284831))

(declare-fun m!3284833 () Bool)

(assert (=> d!828299 m!3284833))

(assert (=> d!828299 m!3284833))

(declare-fun m!3284835 () Bool)

(assert (=> b!2864883 m!3284835))

(assert (=> b!2864883 m!3284835))

(declare-fun m!3284837 () Bool)

(assert (=> b!2864883 m!3284837))

(assert (=> b!2864868 d!828299))

(declare-fun d!828301 () Bool)

(declare-fun lt!1015804 () Bool)

(declare-datatypes ((List!34358 0))(
  ( (Nil!34234) (Cons!34234 (h!39654 Context!5268) (t!233401 List!34358)) )
))
(declare-fun forall!7019 (List!34358 Int) Bool)

(declare-fun toList!2004 ((Set Context!5268)) List!34358)

(assert (=> d!828301 (= lt!1015804 (forall!7019 (toList!2004 z!691) lambda!106122))))

(declare-fun choose!16900 ((Set Context!5268) Int) Bool)

(assert (=> d!828301 (= lt!1015804 (choose!16900 z!691 lambda!106122))))

(assert (=> d!828301 (= (forall!7017 z!691 lambda!106122) lt!1015804)))

(declare-fun bs!521005 () Bool)

(assert (= bs!521005 d!828301))

(declare-fun m!3284839 () Bool)

(assert (=> bs!521005 m!3284839))

(assert (=> bs!521005 m!3284839))

(declare-fun m!3284841 () Bool)

(assert (=> bs!521005 m!3284841))

(declare-fun m!3284843 () Bool)

(assert (=> bs!521005 m!3284843))

(assert (=> b!2864867 d!828301))

(declare-fun bs!521007 () Bool)

(declare-fun d!828303 () Bool)

(assert (= bs!521007 (and d!828303 b!2864867)))

(declare-fun lambda!106145 () Int)

(assert (=> bs!521007 (= lambda!106145 lambda!106122)))

(declare-fun bs!521008 () Bool)

(assert (= bs!521008 (and d!828303 d!828299)))

(assert (=> bs!521008 (not (= lambda!106145 lambda!106132))))

(declare-fun bs!521009 () Bool)

(declare-fun b!2864889 () Bool)

(assert (= bs!521009 (and b!2864889 b!2864867)))

(declare-fun lambda!106146 () Int)

(assert (=> bs!521009 (not (= lambda!106146 lambda!106122))))

(declare-fun bs!521010 () Bool)

(assert (= bs!521010 (and b!2864889 d!828299)))

(assert (=> bs!521010 (= lambda!106146 lambda!106132)))

(declare-fun bs!521011 () Bool)

(assert (= bs!521011 (and b!2864889 d!828303)))

(assert (=> bs!521011 (not (= lambda!106146 lambda!106145))))

(declare-fun bs!521012 () Bool)

(declare-fun b!2864890 () Bool)

(assert (= bs!521012 (and b!2864890 b!2864867)))

(declare-fun lambda!106147 () Int)

(assert (=> bs!521012 (not (= lambda!106147 lambda!106122))))

(declare-fun bs!521013 () Bool)

(assert (= bs!521013 (and b!2864890 d!828299)))

(assert (=> bs!521013 (= lambda!106147 lambda!106132)))

(declare-fun bs!521014 () Bool)

(assert (= bs!521014 (and b!2864890 d!828303)))

(assert (=> bs!521014 (not (= lambda!106147 lambda!106145))))

(declare-fun bs!521015 () Bool)

(assert (= bs!521015 (and b!2864890 b!2864889)))

(assert (=> bs!521015 (= lambda!106147 lambda!106146)))

(declare-datatypes ((Unit!47871 0))(
  ( (Unit!47872) )
))
(declare-fun e!1813639 () Unit!47871)

(declare-fun Unit!47873 () Unit!47871)

(assert (=> b!2864889 (= e!1813639 Unit!47873)))

(declare-fun lt!1015827 () List!34358)

(declare-fun call!184806 () List!34358)

(assert (=> b!2864889 (= lt!1015827 call!184806)))

(declare-fun lt!1015828 () Unit!47871)

(declare-fun lemmaNotForallThenExists!143 (List!34358 Int) Unit!47871)

(assert (=> b!2864889 (= lt!1015828 (lemmaNotForallThenExists!143 lt!1015827 lambda!106145))))

(declare-fun call!184805 () Bool)

(assert (=> b!2864889 call!184805))

(declare-fun lt!1015826 () Unit!47871)

(assert (=> b!2864889 (= lt!1015826 lt!1015828)))

(declare-fun lt!1015829 () Bool)

(assert (=> d!828303 (= lt!1015829 (isEmpty!18658 (getLanguageWitness!309 z!691)))))

(assert (=> d!828303 (= lt!1015829 (forall!7017 z!691 lambda!106145))))

(declare-fun lt!1015830 () Unit!47871)

(assert (=> d!828303 (= lt!1015830 e!1813639)))

(declare-fun c!462158 () Bool)

(assert (=> d!828303 (= c!462158 (not (forall!7017 z!691 lambda!106145)))))

(assert (=> d!828303 (= (lostCauseZipper!578 z!691) lt!1015829)))

(declare-fun Unit!47874 () Unit!47871)

(assert (=> b!2864890 (= e!1813639 Unit!47874)))

(declare-fun lt!1015825 () List!34358)

(assert (=> b!2864890 (= lt!1015825 call!184806)))

(declare-fun lt!1015831 () Unit!47871)

(declare-fun lemmaForallThenNotExists!131 (List!34358 Int) Unit!47871)

(assert (=> b!2864890 (= lt!1015831 (lemmaForallThenNotExists!131 lt!1015825 lambda!106145))))

(assert (=> b!2864890 (not call!184805)))

(declare-fun lt!1015824 () Unit!47871)

(assert (=> b!2864890 (= lt!1015824 lt!1015831)))

(declare-fun bm!184801 () Bool)

(declare-fun exists!1093 (List!34358 Int) Bool)

(assert (=> bm!184801 (= call!184805 (exists!1093 (ite c!462158 lt!1015827 lt!1015825) (ite c!462158 lambda!106146 lambda!106147)))))

(declare-fun bm!184800 () Bool)

(assert (=> bm!184800 (= call!184806 (toList!2004 z!691))))

(assert (= (and d!828303 c!462158) b!2864889))

(assert (= (and d!828303 (not c!462158)) b!2864890))

(assert (= (or b!2864889 b!2864890) bm!184800))

(assert (= (or b!2864889 b!2864890) bm!184801))

(declare-fun m!3284851 () Bool)

(assert (=> bm!184801 m!3284851))

(declare-fun m!3284853 () Bool)

(assert (=> b!2864890 m!3284853))

(assert (=> d!828303 m!3284813))

(assert (=> d!828303 m!3284813))

(assert (=> d!828303 m!3284829))

(declare-fun m!3284855 () Bool)

(assert (=> d!828303 m!3284855))

(assert (=> d!828303 m!3284855))

(assert (=> bm!184800 m!3284839))

(declare-fun m!3284857 () Bool)

(assert (=> b!2864889 m!3284857))

(assert (=> start!279244 d!828303))

(declare-fun d!828309 () Bool)

(declare-fun lambda!106150 () Int)

(declare-fun forall!7020 (List!34354 Int) Bool)

(assert (=> d!828309 (= (inv!46273 setElem!25622) (forall!7020 (exprs!3134 setElem!25622) lambda!106150))))

(declare-fun bs!521016 () Bool)

(assert (= bs!521016 d!828309))

(declare-fun m!3284859 () Bool)

(assert (=> bs!521016 m!3284859))

(assert (=> setNonEmpty!25622 d!828309))

(declare-fun b!2864895 () Bool)

(declare-fun e!1813642 () Bool)

(declare-fun tp!922631 () Bool)

(declare-fun tp!922632 () Bool)

(assert (=> b!2864895 (= e!1813642 (and tp!922631 tp!922632))))

(assert (=> b!2864869 (= tp!922619 e!1813642)))

(assert (= (and b!2864869 (is-Cons!34230 (exprs!3134 setElem!25622))) b!2864895))

(declare-fun condSetEmpty!25628 () Bool)

(assert (=> setNonEmpty!25622 (= condSetEmpty!25628 (= setRest!25622 (as set.empty (Set Context!5268))))))

(declare-fun setRes!25628 () Bool)

(assert (=> setNonEmpty!25622 (= tp!922620 setRes!25628)))

(declare-fun setIsEmpty!25628 () Bool)

(assert (=> setIsEmpty!25628 setRes!25628))

(declare-fun e!1813645 () Bool)

(declare-fun tp!922637 () Bool)

(declare-fun setElem!25628 () Context!5268)

(declare-fun setNonEmpty!25628 () Bool)

(assert (=> setNonEmpty!25628 (= setRes!25628 (and tp!922637 (inv!46273 setElem!25628) e!1813645))))

(declare-fun setRest!25628 () (Set Context!5268))

(assert (=> setNonEmpty!25628 (= setRest!25622 (set.union (set.insert setElem!25628 (as set.empty (Set Context!5268))) setRest!25628))))

(declare-fun b!2864900 () Bool)

(declare-fun tp!922638 () Bool)

(assert (=> b!2864900 (= e!1813645 tp!922638)))

(assert (= (and setNonEmpty!25622 condSetEmpty!25628) setIsEmpty!25628))

(assert (= (and setNonEmpty!25622 (not condSetEmpty!25628)) setNonEmpty!25628))

(assert (= setNonEmpty!25628 b!2864900))

(declare-fun m!3284861 () Bool)

(assert (=> setNonEmpty!25628 m!3284861))

(push 1)

(assert (not b!2864889))

(assert (not b!2864890))

(assert (not bm!184801))

(assert (not d!828297))

(assert (not d!828303))

(assert (not setNonEmpty!25628))

(assert (not b!2864900))

(assert (not d!828299))

(assert (not b!2864883))

(assert (not bm!184800))

(assert (not d!828309))

(assert (not b!2864895))

(assert (not d!828301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

