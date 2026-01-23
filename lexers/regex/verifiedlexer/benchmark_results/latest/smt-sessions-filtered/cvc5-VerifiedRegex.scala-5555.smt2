; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279158 () Bool)

(assert start!279158)

(declare-fun bs!520895 () Bool)

(declare-fun b!2864556 () Bool)

(declare-fun b!2864553 () Bool)

(assert (= bs!520895 (and b!2864556 b!2864553)))

(declare-fun lambda!105907 () Int)

(declare-fun lambda!105906 () Int)

(assert (=> bs!520895 (not (= lambda!105907 lambda!105906))))

(declare-fun b!2864551 () Bool)

(declare-fun e!1813407 () Bool)

(declare-fun tp!922512 () Bool)

(assert (=> b!2864551 (= e!1813407 tp!922512)))

(declare-fun res!1189265 () Bool)

(declare-fun e!1813404 () Bool)

(assert (=> start!279158 (=> (not res!1189265) (not e!1813404))))

(declare-datatypes ((C!17510 0))(
  ( (C!17511 (val!10789 Int)) )
))
(declare-datatypes ((Regex!8664 0))(
  ( (ElementMatch!8664 (c!461951 C!17510)) (Concat!13985 (regOne!17840 Regex!8664) (regTwo!17840 Regex!8664)) (EmptyExpr!8664) (Star!8664 (reg!8993 Regex!8664)) (EmptyLang!8664) (Union!8664 (regOne!17841 Regex!8664) (regTwo!17841 Regex!8664)) )
))
(declare-datatypes ((List!34325 0))(
  ( (Nil!34201) (Cons!34201 (h!39621 Regex!8664) (t!233368 List!34325)) )
))
(declare-datatypes ((Context!5248 0))(
  ( (Context!5249 (exprs!3124 List!34325)) )
))
(declare-fun z!691 () (Set Context!5248))

(declare-fun lostCauseZipper!568 ((Set Context!5248)) Bool)

(assert (=> start!279158 (= res!1189265 (not (lostCauseZipper!568 z!691)))))

(assert (=> start!279158 e!1813404))

(declare-fun condSetEmpty!25580 () Bool)

(assert (=> start!279158 (= condSetEmpty!25580 (= z!691 (as set.empty (Set Context!5248))))))

(declare-fun setRes!25580 () Bool)

(assert (=> start!279158 setRes!25580))

(declare-fun b!2864552 () Bool)

(declare-fun e!1813405 () Bool)

(declare-fun e!1813406 () Bool)

(assert (=> b!2864552 (= e!1813405 e!1813406)))

(declare-fun res!1189268 () Bool)

(assert (=> b!2864552 (=> res!1189268 e!1813406)))

(declare-fun lt!1015546 () Context!5248)

(assert (=> b!2864552 (= res!1189268 (not (set.member lt!1015546 z!691)))))

(declare-datatypes ((List!34326 0))(
  ( (Nil!34202) (Cons!34202 (h!39622 C!17510) (t!233369 List!34326)) )
))
(declare-datatypes ((Option!6343 0))(
  ( (None!6342) (Some!6342 (v!34464 List!34326)) )
))
(declare-fun lt!1015542 () Option!6343)

(declare-fun matchZipper!444 ((Set Context!5248) List!34326) Bool)

(declare-fun get!10255 (Option!6343) List!34326)

(assert (=> b!2864552 (matchZipper!444 (set.insert lt!1015546 (as set.empty (Set Context!5248))) (get!10255 lt!1015542))))

(declare-fun getLanguageWitness!289 (Context!5248) Option!6343)

(assert (=> b!2864552 (= lt!1015542 (getLanguageWitness!289 lt!1015546))))

(declare-datatypes ((Unit!47849 0))(
  ( (Unit!47850) )
))
(declare-fun lt!1015543 () Unit!47849)

(declare-fun lemmaGetWitnessMatchesContext!3 (Context!5248) Unit!47849)

(assert (=> b!2864552 (= lt!1015543 (lemmaGetWitnessMatchesContext!3 lt!1015546))))

(declare-fun getWitness!593 ((Set Context!5248) Int) Context!5248)

(assert (=> b!2864552 (= lt!1015546 (getWitness!593 z!691 lambda!105907))))

(declare-fun res!1189269 () Bool)

(assert (=> b!2864553 (=> (not res!1189269) (not e!1813404))))

(declare-fun forall!7003 ((Set Context!5248) Int) Bool)

(assert (=> b!2864553 (= res!1189269 (not (forall!7003 z!691 lambda!105906)))))

(declare-fun tp!922511 () Bool)

(declare-fun setNonEmpty!25580 () Bool)

(declare-fun setElem!25580 () Context!5248)

(declare-fun inv!46248 (Context!5248) Bool)

(assert (=> setNonEmpty!25580 (= setRes!25580 (and tp!922511 (inv!46248 setElem!25580) e!1813407))))

(declare-fun setRest!25580 () (Set Context!5248))

(assert (=> setNonEmpty!25580 (= z!691 (set.union (set.insert setElem!25580 (as set.empty (Set Context!5248))) setRest!25580))))

(declare-fun b!2864554 () Bool)

(declare-fun isDefined!4963 (Option!6343) Bool)

(assert (=> b!2864554 (= e!1813406 (isDefined!4963 lt!1015542))))

(declare-fun setIsEmpty!25580 () Bool)

(assert (=> setIsEmpty!25580 setRes!25580))

(declare-fun b!2864555 () Bool)

(declare-fun res!1189267 () Bool)

(assert (=> b!2864555 (=> (not res!1189267) (not e!1813404))))

(declare-fun getLanguageWitness!290 ((Set Context!5248)) Option!6343)

(assert (=> b!2864555 (= res!1189267 (isDefined!4963 (getLanguageWitness!290 z!691)))))

(assert (=> b!2864556 (= e!1813404 (not e!1813405))))

(declare-fun res!1189266 () Bool)

(assert (=> b!2864556 (=> res!1189266 e!1813405)))

(declare-fun exists!1073 ((Set Context!5248) Int) Bool)

(assert (=> b!2864556 (= res!1189266 (not (exists!1073 z!691 lambda!105907)))))

(declare-datatypes ((List!34327 0))(
  ( (Nil!34203) (Cons!34203 (h!39623 Context!5248) (t!233370 List!34327)) )
))
(declare-fun lt!1015545 () List!34327)

(declare-fun exists!1074 (List!34327 Int) Bool)

(assert (=> b!2864556 (exists!1074 lt!1015545 lambda!105907)))

(declare-fun lt!1015544 () Unit!47849)

(declare-fun lemmaNotForallThenExists!134 (List!34327 Int) Unit!47849)

(assert (=> b!2864556 (= lt!1015544 (lemmaNotForallThenExists!134 lt!1015545 lambda!105906))))

(declare-fun toList!1995 ((Set Context!5248)) List!34327)

(assert (=> b!2864556 (= lt!1015545 (toList!1995 z!691))))

(assert (= (and start!279158 res!1189265) b!2864555))

(assert (= (and b!2864555 res!1189267) b!2864553))

(assert (= (and b!2864553 res!1189269) b!2864556))

(assert (= (and b!2864556 (not res!1189266)) b!2864552))

(assert (= (and b!2864552 (not res!1189268)) b!2864554))

(assert (= (and start!279158 condSetEmpty!25580) setIsEmpty!25580))

(assert (= (and start!279158 (not condSetEmpty!25580)) setNonEmpty!25580))

(assert (= setNonEmpty!25580 b!2864551))

(declare-fun m!3284309 () Bool)

(assert (=> b!2864554 m!3284309))

(declare-fun m!3284311 () Bool)

(assert (=> b!2864555 m!3284311))

(assert (=> b!2864555 m!3284311))

(declare-fun m!3284313 () Bool)

(assert (=> b!2864555 m!3284313))

(declare-fun m!3284315 () Bool)

(assert (=> start!279158 m!3284315))

(declare-fun m!3284317 () Bool)

(assert (=> b!2864553 m!3284317))

(declare-fun m!3284319 () Bool)

(assert (=> b!2864556 m!3284319))

(declare-fun m!3284321 () Bool)

(assert (=> b!2864556 m!3284321))

(declare-fun m!3284323 () Bool)

(assert (=> b!2864556 m!3284323))

(declare-fun m!3284325 () Bool)

(assert (=> b!2864556 m!3284325))

(declare-fun m!3284327 () Bool)

(assert (=> b!2864552 m!3284327))

(declare-fun m!3284329 () Bool)

(assert (=> b!2864552 m!3284329))

(declare-fun m!3284331 () Bool)

(assert (=> b!2864552 m!3284331))

(declare-fun m!3284333 () Bool)

(assert (=> b!2864552 m!3284333))

(declare-fun m!3284335 () Bool)

(assert (=> b!2864552 m!3284335))

(assert (=> b!2864552 m!3284329))

(declare-fun m!3284337 () Bool)

(assert (=> b!2864552 m!3284337))

(assert (=> b!2864552 m!3284335))

(declare-fun m!3284339 () Bool)

(assert (=> b!2864552 m!3284339))

(declare-fun m!3284341 () Bool)

(assert (=> setNonEmpty!25580 m!3284341))

(push 1)

(assert (not b!2864551))

(assert (not b!2864555))

(assert (not start!279158))

(assert (not b!2864554))

(assert (not b!2864553))

(assert (not b!2864556))

(assert (not setNonEmpty!25580))

(assert (not b!2864552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828218 () Bool)

(declare-fun lambda!105922 () Int)

(declare-fun forall!7005 (List!34325 Int) Bool)

(assert (=> d!828218 (= (inv!46248 setElem!25580) (forall!7005 (exprs!3124 setElem!25580) lambda!105922))))

(declare-fun bs!520897 () Bool)

(assert (= bs!520897 d!828218))

(declare-fun m!3284377 () Bool)

(assert (=> bs!520897 m!3284377))

(assert (=> setNonEmpty!25580 d!828218))

(declare-fun d!828220 () Bool)

(declare-fun isEmpty!18655 (Option!6343) Bool)

(assert (=> d!828220 (= (isDefined!4963 lt!1015542) (not (isEmpty!18655 lt!1015542)))))

(declare-fun bs!520898 () Bool)

(assert (= bs!520898 d!828220))

(declare-fun m!3284379 () Bool)

(assert (=> bs!520898 m!3284379))

(assert (=> b!2864554 d!828220))

(declare-fun bs!520899 () Bool)

(declare-fun d!828222 () Bool)

(assert (= bs!520899 (and d!828222 b!2864553)))

(declare-fun lambda!105935 () Int)

(assert (=> bs!520899 (= lambda!105935 lambda!105906)))

(declare-fun bs!520900 () Bool)

(assert (= bs!520900 (and d!828222 b!2864556)))

(assert (=> bs!520900 (not (= lambda!105935 lambda!105907))))

(declare-fun bs!520901 () Bool)

(declare-fun b!2864579 () Bool)

(assert (= bs!520901 (and b!2864579 b!2864553)))

(declare-fun lambda!105936 () Int)

(assert (=> bs!520901 (not (= lambda!105936 lambda!105906))))

(declare-fun bs!520902 () Bool)

(assert (= bs!520902 (and b!2864579 b!2864556)))

(assert (=> bs!520902 (= lambda!105936 lambda!105907)))

(declare-fun bs!520903 () Bool)

(assert (= bs!520903 (and b!2864579 d!828222)))

(assert (=> bs!520903 (not (= lambda!105936 lambda!105935))))

(declare-fun bs!520904 () Bool)

(declare-fun b!2864580 () Bool)

(assert (= bs!520904 (and b!2864580 b!2864553)))

(declare-fun lambda!105937 () Int)

(assert (=> bs!520904 (not (= lambda!105937 lambda!105906))))

(declare-fun bs!520905 () Bool)

(assert (= bs!520905 (and b!2864580 b!2864556)))

(assert (=> bs!520905 (= lambda!105937 lambda!105907)))

(declare-fun bs!520906 () Bool)

(assert (= bs!520906 (and b!2864580 d!828222)))

(assert (=> bs!520906 (not (= lambda!105937 lambda!105935))))

(declare-fun bs!520907 () Bool)

(assert (= bs!520907 (and b!2864580 b!2864579)))

(assert (=> bs!520907 (= lambda!105937 lambda!105936)))

(declare-fun lt!1015578 () List!34327)

(declare-fun bm!184783 () Bool)

(declare-fun call!184787 () Bool)

(declare-fun c!461971 () Bool)

(declare-fun lt!1015585 () List!34327)

(assert (=> bm!184783 (= call!184787 (exists!1074 (ite c!461971 lt!1015585 lt!1015578) (ite c!461971 lambda!105936 lambda!105937)))))

(declare-fun e!1813428 () Unit!47849)

(declare-fun Unit!47853 () Unit!47849)

(assert (=> b!2864579 (= e!1813428 Unit!47853)))

(declare-fun call!184788 () List!34327)

(assert (=> b!2864579 (= lt!1015585 call!184788)))

(declare-fun lt!1015584 () Unit!47849)

(assert (=> b!2864579 (= lt!1015584 (lemmaNotForallThenExists!134 lt!1015585 lambda!105935))))

(assert (=> b!2864579 call!184787))

(declare-fun lt!1015580 () Unit!47849)

(assert (=> b!2864579 (= lt!1015580 lt!1015584)))

(declare-fun bm!184782 () Bool)

(assert (=> bm!184782 (= call!184788 (toList!1995 z!691))))

(declare-fun Unit!47854 () Unit!47849)

(assert (=> b!2864580 (= e!1813428 Unit!47854)))

(assert (=> b!2864580 (= lt!1015578 call!184788)))

(declare-fun lt!1015582 () Unit!47849)

(declare-fun lemmaForallThenNotExists!129 (List!34327 Int) Unit!47849)

(assert (=> b!2864580 (= lt!1015582 (lemmaForallThenNotExists!129 lt!1015578 lambda!105935))))

(assert (=> b!2864580 (not call!184787)))

(declare-fun lt!1015583 () Unit!47849)

(assert (=> b!2864580 (= lt!1015583 lt!1015582)))

(declare-fun lt!1015579 () Bool)

(assert (=> d!828222 (= lt!1015579 (isEmpty!18655 (getLanguageWitness!290 z!691)))))

(assert (=> d!828222 (= lt!1015579 (forall!7003 z!691 lambda!105935))))

(declare-fun lt!1015581 () Unit!47849)

(assert (=> d!828222 (= lt!1015581 e!1813428)))

(assert (=> d!828222 (= c!461971 (not (forall!7003 z!691 lambda!105935)))))

(assert (=> d!828222 (= (lostCauseZipper!568 z!691) lt!1015579)))

(assert (= (and d!828222 c!461971) b!2864579))

(assert (= (and d!828222 (not c!461971)) b!2864580))

(assert (= (or b!2864579 b!2864580) bm!184782))

(assert (= (or b!2864579 b!2864580) bm!184783))

(assert (=> bm!184782 m!3284325))

(declare-fun m!3284381 () Bool)

(assert (=> b!2864579 m!3284381))

(declare-fun m!3284383 () Bool)

(assert (=> bm!184783 m!3284383))

(assert (=> d!828222 m!3284311))

(assert (=> d!828222 m!3284311))

(declare-fun m!3284385 () Bool)

(assert (=> d!828222 m!3284385))

(declare-fun m!3284387 () Bool)

(assert (=> d!828222 m!3284387))

(assert (=> d!828222 m!3284387))

(declare-fun m!3284389 () Bool)

(assert (=> b!2864580 m!3284389))

(assert (=> start!279158 d!828222))

(declare-fun d!828224 () Bool)

(assert (=> d!828224 (= (isDefined!4963 (getLanguageWitness!290 z!691)) (not (isEmpty!18655 (getLanguageWitness!290 z!691))))))

(declare-fun bs!520908 () Bool)

(assert (= bs!520908 d!828224))

(assert (=> bs!520908 m!3284311))

(assert (=> bs!520908 m!3284385))

(assert (=> b!2864555 d!828224))

(declare-fun bs!520909 () Bool)

(declare-fun d!828226 () Bool)

(assert (= bs!520909 (and d!828226 b!2864580)))

(declare-fun lambda!105944 () Int)

(assert (=> bs!520909 (= lambda!105944 lambda!105937)))

(declare-fun bs!520910 () Bool)

(assert (= bs!520910 (and d!828226 b!2864556)))

(assert (=> bs!520910 (= lambda!105944 lambda!105907)))

(declare-fun bs!520911 () Bool)

(assert (= bs!520911 (and d!828226 b!2864579)))

(assert (=> bs!520911 (= lambda!105944 lambda!105936)))

(declare-fun bs!520912 () Bool)

(assert (= bs!520912 (and d!828226 b!2864553)))

(assert (=> bs!520912 (not (= lambda!105944 lambda!105906))))

(declare-fun bs!520913 () Bool)

(assert (= bs!520913 (and d!828226 d!828222)))

(assert (=> bs!520913 (not (= lambda!105944 lambda!105935))))

(declare-fun lt!1015588 () Option!6343)

(assert (=> d!828226 (= (isDefined!4963 lt!1015588) (exists!1073 z!691 lambda!105944))))

(declare-fun e!1813431 () Option!6343)

(assert (=> d!828226 (= lt!1015588 e!1813431)))

(declare-fun c!461980 () Bool)

(assert (=> d!828226 (= c!461980 (exists!1073 z!691 lambda!105944))))

(assert (=> d!828226 (= (getLanguageWitness!290 z!691) lt!1015588)))

(declare-fun b!2864585 () Bool)

(assert (=> b!2864585 (= e!1813431 (getLanguageWitness!289 (getWitness!593 z!691 lambda!105944)))))

(declare-fun b!2864586 () Bool)

(assert (=> b!2864586 (= e!1813431 None!6342)))

(assert (= (and d!828226 c!461980) b!2864585))

(assert (= (and d!828226 (not c!461980)) b!2864586))

(declare-fun m!3284391 () Bool)

(assert (=> d!828226 m!3284391))

(declare-fun m!3284393 () Bool)

(assert (=> d!828226 m!3284393))

(assert (=> d!828226 m!3284393))

(declare-fun m!3284395 () Bool)

(assert (=> b!2864585 m!3284395))

(assert (=> b!2864585 m!3284395))

(declare-fun m!3284397 () Bool)

(assert (=> b!2864585 m!3284397))

(assert (=> b!2864555 d!828226))

(declare-fun d!828230 () Bool)

(assert (=> d!828230 (matchZipper!444 (set.insert lt!1015546 (as set.empty (Set Context!5248))) (get!10255 (getLanguageWitness!289 lt!1015546)))))

(declare-fun lt!1015591 () Unit!47849)

(declare-fun choose!16891 (Context!5248) Unit!47849)

(assert (=> d!828230 (= lt!1015591 (choose!16891 lt!1015546))))

(declare-fun lostCause!772 (Context!5248) Bool)

(assert (=> d!828230 (not (lostCause!772 lt!1015546))))

(assert (=> d!828230 (= (lemmaGetWitnessMatchesContext!3 lt!1015546) lt!1015591)))

(declare-fun bs!520914 () Bool)

(assert (= bs!520914 d!828230))

(assert (=> bs!520914 m!3284335))

(declare-fun m!3284399 () Bool)

(assert (=> bs!520914 m!3284399))

(declare-fun m!3284401 () Bool)

(assert (=> bs!520914 m!3284401))

(assert (=> bs!520914 m!3284335))

(assert (=> bs!520914 m!3284331))

(assert (=> bs!520914 m!3284331))

(assert (=> bs!520914 m!3284399))

(declare-fun m!3284403 () Bool)

(assert (=> bs!520914 m!3284403))

(declare-fun m!3284405 () Bool)

(assert (=> bs!520914 m!3284405))

(assert (=> b!2864552 d!828230))

(declare-fun d!828232 () Bool)

(declare-fun c!461984 () Bool)

(declare-fun isEmpty!18656 (List!34326) Bool)

(assert (=> d!828232 (= c!461984 (isEmpty!18656 (get!10255 lt!1015542)))))

(declare-fun e!1813434 () Bool)

(assert (=> d!828232 (= (matchZipper!444 (set.insert lt!1015546 (as set.empty (Set Context!5248))) (get!10255 lt!1015542)) e!1813434)))

(declare-fun b!2864591 () Bool)

(declare-fun nullableZipper!698 ((Set Context!5248)) Bool)

(assert (=> b!2864591 (= e!1813434 (nullableZipper!698 (set.insert lt!1015546 (as set.empty (Set Context!5248)))))))

(declare-fun b!2864592 () Bool)

(declare-fun derivationStepZipper!454 ((Set Context!5248) C!17510) (Set Context!5248))

(declare-fun head!6319 (List!34326) C!17510)

(declare-fun tail!4544 (List!34326) List!34326)

(assert (=> b!2864592 (= e!1813434 (matchZipper!444 (derivationStepZipper!454 (set.insert lt!1015546 (as set.empty (Set Context!5248))) (head!6319 (get!10255 lt!1015542))) (tail!4544 (get!10255 lt!1015542))))))

(assert (= (and d!828232 c!461984) b!2864591))

(assert (= (and d!828232 (not c!461984)) b!2864592))

(assert (=> d!828232 m!3284329))

(declare-fun m!3284409 () Bool)

(assert (=> d!828232 m!3284409))

(assert (=> b!2864591 m!3284335))

(declare-fun m!3284411 () Bool)

(assert (=> b!2864591 m!3284411))

(assert (=> b!2864592 m!3284329))

(declare-fun m!3284413 () Bool)

(assert (=> b!2864592 m!3284413))

(assert (=> b!2864592 m!3284335))

(assert (=> b!2864592 m!3284413))

(declare-fun m!3284415 () Bool)

(assert (=> b!2864592 m!3284415))

(assert (=> b!2864592 m!3284329))

(declare-fun m!3284417 () Bool)

(assert (=> b!2864592 m!3284417))

(assert (=> b!2864592 m!3284415))

(assert (=> b!2864592 m!3284417))

(declare-fun m!3284419 () Bool)

(assert (=> b!2864592 m!3284419))

(assert (=> b!2864552 d!828232))

(declare-fun bs!520918 () Bool)

(declare-fun d!828236 () Bool)

(assert (= bs!520918 (and d!828236 d!828218)))

(declare-fun lambda!105952 () Int)

(assert (=> bs!520918 (not (= lambda!105952 lambda!105922))))

(declare-fun b!2864605 () Bool)

(declare-fun e!1813442 () Option!6343)

(assert (=> b!2864605 (= e!1813442 None!6342)))

(declare-fun b!2864606 () Bool)

(declare-fun c!461992 () Bool)

(declare-fun lt!1015605 () Option!6343)

(assert (=> b!2864606 (= c!461992 (is-Some!6342 lt!1015605))))

(assert (=> b!2864606 (= lt!1015605 (getLanguageWitness!289 (Context!5249 (t!233368 (exprs!3124 lt!1015546)))))))

(declare-fun e!1813443 () Option!6343)

(assert (=> b!2864606 (= e!1813442 e!1813443)))

(declare-fun b!2864607 () Bool)

(declare-fun lt!1015604 () Option!6343)

(declare-fun ++!8140 (List!34326 List!34326) List!34326)

(assert (=> b!2864607 (= e!1813443 (Some!6342 (++!8140 (v!34464 lt!1015604) (v!34464 lt!1015605))))))

(declare-fun b!2864608 () Bool)

(declare-fun e!1813441 () Option!6343)

(assert (=> b!2864608 (= e!1813441 (Some!6342 Nil!34202))))

(declare-fun b!2864609 () Bool)

(assert (=> b!2864609 (= e!1813441 e!1813442)))

(declare-fun getLanguageWitness!293 (Regex!8664) Option!6343)

(assert (=> b!2864609 (= lt!1015604 (getLanguageWitness!293 (h!39621 (exprs!3124 lt!1015546))))))

(declare-fun c!461994 () Bool)

(assert (=> b!2864609 (= c!461994 (is-Some!6342 lt!1015604))))

(declare-fun lt!1015606 () Option!6343)

(declare-fun exists!1077 (List!34325 Int) Bool)

(assert (=> d!828236 (= (isEmpty!18655 lt!1015606) (exists!1077 (exprs!3124 lt!1015546) lambda!105952))))

(assert (=> d!828236 (= lt!1015606 e!1813441)))

(declare-fun c!461993 () Bool)

(assert (=> d!828236 (= c!461993 (is-Cons!34201 (exprs!3124 lt!1015546)))))

(assert (=> d!828236 (= (getLanguageWitness!289 lt!1015546) lt!1015606)))

(declare-fun b!2864610 () Bool)

(assert (=> b!2864610 (= e!1813443 None!6342)))

(assert (= (and d!828236 c!461993) b!2864609))

(assert (= (and d!828236 (not c!461993)) b!2864608))

(assert (= (and b!2864609 c!461994) b!2864606))

(assert (= (and b!2864609 (not c!461994)) b!2864605))

(assert (= (and b!2864606 c!461992) b!2864607))

(assert (= (and b!2864606 (not c!461992)) b!2864610))

(declare-fun m!3284429 () Bool)

(assert (=> b!2864606 m!3284429))

(declare-fun m!3284431 () Bool)

(assert (=> b!2864607 m!3284431))

(declare-fun m!3284433 () Bool)

(assert (=> b!2864609 m!3284433))

(declare-fun m!3284435 () Bool)

(assert (=> d!828236 m!3284435))

(declare-fun m!3284437 () Bool)

(assert (=> d!828236 m!3284437))

(assert (=> b!2864552 d!828236))

(declare-fun d!828242 () Bool)

(assert (=> d!828242 (= (get!10255 lt!1015542) (v!34464 lt!1015542))))

(assert (=> b!2864552 d!828242))

(declare-fun d!828244 () Bool)

(declare-fun e!1813446 () Bool)

(assert (=> d!828244 e!1813446))

(declare-fun res!1189287 () Bool)

(assert (=> d!828244 (=> (not res!1189287) (not e!1813446))))

(declare-fun lt!1015609 () Context!5248)

(declare-fun dynLambda!14268 (Int Context!5248) Bool)

(assert (=> d!828244 (= res!1189287 (dynLambda!14268 lambda!105907 lt!1015609))))

(declare-fun getWitness!595 (List!34327 Int) Context!5248)

(assert (=> d!828244 (= lt!1015609 (getWitness!595 (toList!1995 z!691) lambda!105907))))

(assert (=> d!828244 (exists!1073 z!691 lambda!105907)))

(assert (=> d!828244 (= (getWitness!593 z!691 lambda!105907) lt!1015609)))

(declare-fun b!2864615 () Bool)

(assert (=> b!2864615 (= e!1813446 (set.member lt!1015609 z!691))))

(assert (= (and d!828244 res!1189287) b!2864615))

(declare-fun b_lambda!85895 () Bool)

(assert (=> (not b_lambda!85895) (not d!828244)))

(declare-fun m!3284441 () Bool)

(assert (=> d!828244 m!3284441))

(assert (=> d!828244 m!3284325))

(assert (=> d!828244 m!3284325))

(declare-fun m!3284443 () Bool)

(assert (=> d!828244 m!3284443))

(assert (=> d!828244 m!3284319))

(declare-fun m!3284445 () Bool)

(assert (=> b!2864615 m!3284445))

(assert (=> b!2864552 d!828244))

(declare-fun d!828248 () Bool)

(declare-fun lt!1015614 () Bool)

(assert (=> d!828248 (= lt!1015614 (exists!1074 (toList!1995 z!691) lambda!105907))))

(declare-fun choose!16892 ((Set Context!5248) Int) Bool)

(assert (=> d!828248 (= lt!1015614 (choose!16892 z!691 lambda!105907))))

(assert (=> d!828248 (= (exists!1073 z!691 lambda!105907) lt!1015614)))

(declare-fun bs!520922 () Bool)

(assert (= bs!520922 d!828248))

(assert (=> bs!520922 m!3284325))

(assert (=> bs!520922 m!3284325))

(declare-fun m!3284447 () Bool)

(assert (=> bs!520922 m!3284447))

(declare-fun m!3284449 () Bool)

(assert (=> bs!520922 m!3284449))

(assert (=> b!2864556 d!828248))

(declare-fun bs!520924 () Bool)

(declare-fun d!828250 () Bool)

(assert (= bs!520924 (and d!828250 b!2864556)))

(declare-fun lambda!105958 () Int)

(assert (=> bs!520924 (not (= lambda!105958 lambda!105907))))

(declare-fun bs!520925 () Bool)

(assert (= bs!520925 (and d!828250 b!2864579)))

(assert (=> bs!520925 (not (= lambda!105958 lambda!105936))))

(declare-fun bs!520927 () Bool)

(assert (= bs!520927 (and d!828250 b!2864553)))

(assert (=> bs!520927 (not (= lambda!105958 lambda!105906))))

(declare-fun bs!520928 () Bool)

(assert (= bs!520928 (and d!828250 d!828222)))

(assert (=> bs!520928 (not (= lambda!105958 lambda!105935))))

(declare-fun bs!520929 () Bool)

(assert (= bs!520929 (and d!828250 d!828226)))

(assert (=> bs!520929 (not (= lambda!105958 lambda!105944))))

(declare-fun bs!520931 () Bool)

(assert (= bs!520931 (and d!828250 b!2864580)))

(assert (=> bs!520931 (not (= lambda!105958 lambda!105937))))

(assert (=> d!828250 true))

(declare-fun order!18083 () Int)

(declare-fun dynLambda!14269 (Int Int) Int)

(assert (=> d!828250 (< (dynLambda!14269 order!18083 lambda!105907) (dynLambda!14269 order!18083 lambda!105958))))

(declare-fun forall!7006 (List!34327 Int) Bool)

(assert (=> d!828250 (= (exists!1074 lt!1015545 lambda!105907) (not (forall!7006 lt!1015545 lambda!105958)))))

(declare-fun bs!520932 () Bool)

(assert (= bs!520932 d!828250))

(declare-fun m!3284451 () Bool)

(assert (=> bs!520932 m!3284451))

(assert (=> b!2864556 d!828250))

(declare-fun bs!520934 () Bool)

(declare-fun d!828252 () Bool)

(assert (= bs!520934 (and d!828252 b!2864579)))

(declare-fun lambda!105962 () Int)

(assert (=> bs!520934 (not (= lambda!105962 lambda!105936))))

(declare-fun bs!520935 () Bool)

(assert (= bs!520935 (and d!828252 b!2864553)))

(assert (=> bs!520935 (not (= lambda!105962 lambda!105906))))

(declare-fun bs!520936 () Bool)

(assert (= bs!520936 (and d!828252 d!828222)))

(assert (=> bs!520936 (not (= lambda!105962 lambda!105935))))

(declare-fun bs!520937 () Bool)

(assert (= bs!520937 (and d!828252 d!828226)))

(assert (=> bs!520937 (not (= lambda!105962 lambda!105944))))

(declare-fun bs!520938 () Bool)

(assert (= bs!520938 (and d!828252 b!2864580)))

(assert (=> bs!520938 (not (= lambda!105962 lambda!105937))))

(declare-fun bs!520939 () Bool)

(assert (= bs!520939 (and d!828252 d!828250)))

(assert (=> bs!520939 (= (= lambda!105906 lambda!105907) (= lambda!105962 lambda!105958))))

(declare-fun bs!520940 () Bool)

(assert (= bs!520940 (and d!828252 b!2864556)))

(assert (=> bs!520940 (not (= lambda!105962 lambda!105907))))

(assert (=> d!828252 true))

(assert (=> d!828252 (< (dynLambda!14269 order!18083 lambda!105906) (dynLambda!14269 order!18083 lambda!105962))))

(assert (=> d!828252 (exists!1074 lt!1015545 lambda!105962)))

(declare-fun lt!1015618 () Unit!47849)

(declare-fun choose!16893 (List!34327 Int) Unit!47849)

(assert (=> d!828252 (= lt!1015618 (choose!16893 lt!1015545 lambda!105906))))

(assert (=> d!828252 (not (forall!7006 lt!1015545 lambda!105906))))

(assert (=> d!828252 (= (lemmaNotForallThenExists!134 lt!1015545 lambda!105906) lt!1015618)))

(declare-fun bs!520941 () Bool)

(assert (= bs!520941 d!828252))

(declare-fun m!3284459 () Bool)

(assert (=> bs!520941 m!3284459))

(declare-fun m!3284461 () Bool)

(assert (=> bs!520941 m!3284461))

(declare-fun m!3284463 () Bool)

(assert (=> bs!520941 m!3284463))

(assert (=> b!2864556 d!828252))

(declare-fun d!828256 () Bool)

(declare-fun e!1813456 () Bool)

(assert (=> d!828256 e!1813456))

(declare-fun res!1189293 () Bool)

(assert (=> d!828256 (=> (not res!1189293) (not e!1813456))))

(declare-fun lt!1015624 () List!34327)

(declare-fun noDuplicate!568 (List!34327) Bool)

(assert (=> d!828256 (= res!1189293 (noDuplicate!568 lt!1015624))))

(declare-fun choose!16894 ((Set Context!5248)) List!34327)

(assert (=> d!828256 (= lt!1015624 (choose!16894 z!691))))

(assert (=> d!828256 (= (toList!1995 z!691) lt!1015624)))

(declare-fun b!2864623 () Bool)

(declare-fun content!4670 (List!34327) (Set Context!5248))

(assert (=> b!2864623 (= e!1813456 (= (content!4670 lt!1015624) z!691))))

(assert (= (and d!828256 res!1189293) b!2864623))

(declare-fun m!3284471 () Bool)

(assert (=> d!828256 m!3284471))

(declare-fun m!3284473 () Bool)

(assert (=> d!828256 m!3284473))

(declare-fun m!3284475 () Bool)

(assert (=> b!2864623 m!3284475))

(assert (=> b!2864556 d!828256))

(declare-fun d!828260 () Bool)

(declare-fun lt!1015627 () Bool)

(assert (=> d!828260 (= lt!1015627 (forall!7006 (toList!1995 z!691) lambda!105906))))

(declare-fun choose!16895 ((Set Context!5248) Int) Bool)

(assert (=> d!828260 (= lt!1015627 (choose!16895 z!691 lambda!105906))))

(assert (=> d!828260 (= (forall!7003 z!691 lambda!105906) lt!1015627)))

(declare-fun bs!520942 () Bool)

(assert (= bs!520942 d!828260))

(assert (=> bs!520942 m!3284325))

(assert (=> bs!520942 m!3284325))

(declare-fun m!3284477 () Bool)

(assert (=> bs!520942 m!3284477))

(declare-fun m!3284479 () Bool)

(assert (=> bs!520942 m!3284479))

(assert (=> b!2864553 d!828260))

(declare-fun condSetEmpty!25586 () Bool)

(assert (=> setNonEmpty!25580 (= condSetEmpty!25586 (= setRest!25580 (as set.empty (Set Context!5248))))))

(declare-fun setRes!25586 () Bool)

(assert (=> setNonEmpty!25580 (= tp!922511 setRes!25586)))

(declare-fun setIsEmpty!25586 () Bool)

(assert (=> setIsEmpty!25586 setRes!25586))

(declare-fun e!1813459 () Bool)

(declare-fun setElem!25586 () Context!5248)

(declare-fun tp!922523 () Bool)

(declare-fun setNonEmpty!25586 () Bool)

(assert (=> setNonEmpty!25586 (= setRes!25586 (and tp!922523 (inv!46248 setElem!25586) e!1813459))))

(declare-fun setRest!25586 () (Set Context!5248))

(assert (=> setNonEmpty!25586 (= setRest!25580 (set.union (set.insert setElem!25586 (as set.empty (Set Context!5248))) setRest!25586))))

(declare-fun b!2864628 () Bool)

(declare-fun tp!922524 () Bool)

(assert (=> b!2864628 (= e!1813459 tp!922524)))

(assert (= (and setNonEmpty!25580 condSetEmpty!25586) setIsEmpty!25586))

(assert (= (and setNonEmpty!25580 (not condSetEmpty!25586)) setNonEmpty!25586))

(assert (= setNonEmpty!25586 b!2864628))

(declare-fun m!3284481 () Bool)

(assert (=> setNonEmpty!25586 m!3284481))

(declare-fun b!2864633 () Bool)

(declare-fun e!1813462 () Bool)

(declare-fun tp!922529 () Bool)

(declare-fun tp!922530 () Bool)

(assert (=> b!2864633 (= e!1813462 (and tp!922529 tp!922530))))

(assert (=> b!2864551 (= tp!922512 e!1813462)))

(assert (= (and b!2864551 (is-Cons!34201 (exprs!3124 setElem!25580))) b!2864633))

(declare-fun b_lambda!85897 () Bool)

(assert (= b_lambda!85895 (or b!2864556 b_lambda!85897)))

(declare-fun bs!520943 () Bool)

(declare-fun d!828262 () Bool)

(assert (= bs!520943 (and d!828262 b!2864556)))

(assert (=> bs!520943 (= (dynLambda!14268 lambda!105907 lt!1015609) (not (lostCause!772 lt!1015609)))))

(declare-fun m!3284483 () Bool)

(assert (=> bs!520943 m!3284483))

(assert (=> d!828244 d!828262))

(push 1)

(assert (not bs!520943))

(assert (not d!828252))

(assert (not b!2864633))

(assert (not d!828250))

(assert (not d!828244))

(assert (not b!2864623))

(assert (not b!2864628))

(assert (not b!2864580))

(assert (not d!828232))

(assert (not b!2864591))

(assert (not d!828220))

(assert (not b!2864607))

(assert (not b!2864592))

(assert (not b!2864585))

(assert (not d!828224))

(assert (not b_lambda!85897))

(assert (not b!2864606))

(assert (not setNonEmpty!25586))

(assert (not d!828230))

(assert (not d!828260))

(assert (not bm!184783))

(assert (not d!828218))

(assert (not d!828248))

(assert (not d!828222))

(assert (not b!2864609))

(assert (not b!2864579))

(assert (not d!828256))

(assert (not d!828236))

(assert (not d!828226))

(assert (not bm!184782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

