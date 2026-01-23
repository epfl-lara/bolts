; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697866 () Bool)

(assert start!697866)

(declare-fun res!2918629 () Bool)

(declare-fun e!4300268 () Bool)

(assert (=> start!697866 (=> (not res!2918629) (not e!4300268))))

(declare-datatypes ((C!36874 0))(
  ( (C!36875 (val!28385 Int)) )
))
(declare-datatypes ((Regex!18300 0))(
  ( (ElementMatch!18300 (c!1333952 C!36874)) (Concat!27145 (regOne!37112 Regex!18300) (regTwo!37112 Regex!18300)) (EmptyExpr!18300) (Star!18300 (reg!18629 Regex!18300)) (EmptyLang!18300) (Union!18300 (regOne!37113 Regex!18300) (regTwo!37113 Regex!18300)) )
))
(declare-datatypes ((List!69640 0))(
  ( (Nil!69516) (Cons!69516 (h!75964 Regex!18300) (t!383657 List!69640)) )
))
(declare-datatypes ((Context!14504 0))(
  ( (Context!14505 (exprs!7752 List!69640)) )
))
(declare-fun z!3530 () (Set Context!14504))

(declare-datatypes ((List!69641 0))(
  ( (Nil!69517) (Cons!69517 (h!75965 Context!14504) (t!383658 List!69641)) )
))
(declare-fun unfocusZipper!2560 (List!69641) Regex!18300)

(declare-fun toList!11243 ((Set Context!14504)) List!69641)

(assert (=> start!697866 (= res!2918629 (= (unfocusZipper!2560 (toList!11243 z!3530)) EmptyExpr!18300))))

(assert (=> start!697866 e!4300268))

(declare-fun condSetEmpty!52764 () Bool)

(assert (=> start!697866 (= condSetEmpty!52764 (= z!3530 (as set.empty (Set Context!14504))))))

(declare-fun setRes!52764 () Bool)

(assert (=> start!697866 setRes!52764))

(declare-fun e!4300265 () Bool)

(assert (=> start!697866 e!4300265))

(declare-fun b!7158090 () Bool)

(declare-fun tp_is_empty!46173 () Bool)

(declare-fun tp!1979479 () Bool)

(assert (=> b!7158090 (= e!4300265 (and tp_is_empty!46173 tp!1979479))))

(declare-fun setIsEmpty!52764 () Bool)

(assert (=> setIsEmpty!52764 setRes!52764))

(declare-fun b!7158091 () Bool)

(declare-fun e!4300269 () Bool)

(declare-fun tp!1979478 () Bool)

(assert (=> b!7158091 (= e!4300269 tp!1979478)))

(declare-fun b!7158092 () Bool)

(declare-fun e!4300267 () Bool)

(declare-fun e!4300266 () Bool)

(assert (=> b!7158092 (= e!4300267 e!4300266)))

(declare-fun res!2918628 () Bool)

(assert (=> b!7158092 (=> res!2918628 e!4300266)))

(declare-fun lt!2569600 () Context!14504)

(declare-fun lt!2569601 () C!36874)

(declare-fun derivationStepZipperUp!2290 (Context!14504 C!36874) (Set Context!14504))

(assert (=> b!7158092 (= res!2918628 (not (= (derivationStepZipperUp!2290 lt!2569600 lt!2569601) (as set.empty (Set Context!14504)))))))

(declare-fun lt!2569599 () (Set Context!14504))

(declare-fun derivationStepZipper!3185 ((Set Context!14504) C!36874) (Set Context!14504))

(assert (=> b!7158092 (= lt!2569599 (derivationStepZipper!3185 z!3530 lt!2569601))))

(declare-datatypes ((List!69642 0))(
  ( (Nil!69518) (Cons!69518 (h!75966 C!36874) (t!383659 List!69642)) )
))
(declare-fun s!7967 () List!69642)

(declare-fun head!14582 (List!69642) C!36874)

(assert (=> b!7158092 (= lt!2569601 (head!14582 s!7967))))

(declare-fun b!7158093 () Bool)

(declare-fun res!2918630 () Bool)

(assert (=> b!7158093 (=> res!2918630 e!4300266)))

(assert (=> b!7158093 (= res!2918630 (= lt!2569599 (as set.empty (Set Context!14504))))))

(declare-fun b!7158094 () Bool)

(declare-fun res!2918631 () Bool)

(assert (=> b!7158094 (=> (not res!2918631) (not e!4300268))))

(declare-fun focus!375 (Regex!18300) (Set Context!14504))

(assert (=> b!7158094 (= res!2918631 (= z!3530 (focus!375 EmptyExpr!18300)))))

(declare-fun b!7158095 () Bool)

(assert (=> b!7158095 (= e!4300268 (not e!4300267))))

(declare-fun res!2918632 () Bool)

(assert (=> b!7158095 (=> res!2918632 e!4300267)))

(declare-fun isEmpty!40152 (List!69642) Bool)

(assert (=> b!7158095 (= res!2918632 (isEmpty!40152 s!7967))))

(declare-fun nullableContext!173 (Context!14504) Bool)

(assert (=> b!7158095 (nullableContext!173 lt!2569600)))

(assert (=> b!7158095 (= lt!2569600 (Context!14505 (Cons!69516 EmptyExpr!18300 Nil!69516)))))

(declare-fun tp!1979480 () Bool)

(declare-fun setElem!52764 () Context!14504)

(declare-fun setNonEmpty!52764 () Bool)

(declare-fun inv!88773 (Context!14504) Bool)

(assert (=> setNonEmpty!52764 (= setRes!52764 (and tp!1979480 (inv!88773 setElem!52764) e!4300269))))

(declare-fun setRest!52764 () (Set Context!14504))

(assert (=> setNonEmpty!52764 (= z!3530 (set.union (set.insert setElem!52764 (as set.empty (Set Context!14504))) setRest!52764))))

(declare-fun b!7158096 () Bool)

(assert (=> b!7158096 (= e!4300266 (not (= s!7967 Nil!69518)))))

(declare-fun lt!2569602 () List!69641)

(assert (=> b!7158096 (= lt!2569602 (toList!11243 lt!2569599))))

(assert (= (and start!697866 res!2918629) b!7158094))

(assert (= (and b!7158094 res!2918631) b!7158095))

(assert (= (and b!7158095 (not res!2918632)) b!7158092))

(assert (= (and b!7158092 (not res!2918628)) b!7158093))

(assert (= (and b!7158093 (not res!2918630)) b!7158096))

(assert (= (and start!697866 condSetEmpty!52764) setIsEmpty!52764))

(assert (= (and start!697866 (not condSetEmpty!52764)) setNonEmpty!52764))

(assert (= setNonEmpty!52764 b!7158091))

(assert (= (and start!697866 (is-Cons!69518 s!7967)) b!7158090))

(declare-fun m!7864404 () Bool)

(assert (=> b!7158096 m!7864404))

(declare-fun m!7864406 () Bool)

(assert (=> b!7158092 m!7864406))

(declare-fun m!7864408 () Bool)

(assert (=> b!7158092 m!7864408))

(declare-fun m!7864410 () Bool)

(assert (=> b!7158092 m!7864410))

(declare-fun m!7864412 () Bool)

(assert (=> start!697866 m!7864412))

(assert (=> start!697866 m!7864412))

(declare-fun m!7864414 () Bool)

(assert (=> start!697866 m!7864414))

(declare-fun m!7864416 () Bool)

(assert (=> b!7158094 m!7864416))

(declare-fun m!7864418 () Bool)

(assert (=> setNonEmpty!52764 m!7864418))

(declare-fun m!7864420 () Bool)

(assert (=> b!7158095 m!7864420))

(declare-fun m!7864422 () Bool)

(assert (=> b!7158095 m!7864422))

(push 1)

(assert (not start!697866))

(assert (not b!7158094))

(assert (not b!7158090))

(assert (not b!7158095))

(assert tp_is_empty!46173)

(assert (not setNonEmpty!52764))

(assert (not b!7158091))

(assert (not b!7158096))

(assert (not b!7158092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230113 () Bool)

(declare-fun e!4300296 () Bool)

(assert (=> d!2230113 e!4300296))

(declare-fun res!2918654 () Bool)

(assert (=> d!2230113 (=> (not res!2918654) (not e!4300296))))

(declare-fun validRegex!9432 (Regex!18300) Bool)

(assert (=> d!2230113 (= res!2918654 (validRegex!9432 EmptyExpr!18300))))

(assert (=> d!2230113 (= (focus!375 EmptyExpr!18300) (set.insert (Context!14505 (Cons!69516 EmptyExpr!18300 Nil!69516)) (as set.empty (Set Context!14504))))))

(declare-fun b!7158135 () Bool)

(assert (=> b!7158135 (= e!4300296 (= (unfocusZipper!2560 (toList!11243 (set.insert (Context!14505 (Cons!69516 EmptyExpr!18300 Nil!69516)) (as set.empty (Set Context!14504))))) EmptyExpr!18300))))

(assert (= (and d!2230113 res!2918654) b!7158135))

(declare-fun m!7864450 () Bool)

(assert (=> d!2230113 m!7864450))

(declare-fun m!7864452 () Bool)

(assert (=> d!2230113 m!7864452))

(assert (=> b!7158135 m!7864452))

(assert (=> b!7158135 m!7864452))

(declare-fun m!7864454 () Bool)

(assert (=> b!7158135 m!7864454))

(assert (=> b!7158135 m!7864454))

(declare-fun m!7864456 () Bool)

(assert (=> b!7158135 m!7864456))

(assert (=> b!7158094 d!2230113))

(declare-fun d!2230117 () Bool)

(declare-fun lt!2569617 () Regex!18300)

(assert (=> d!2230117 (validRegex!9432 lt!2569617)))

(declare-fun generalisedUnion!2735 (List!69640) Regex!18300)

(declare-fun unfocusZipperList!2291 (List!69641) List!69640)

(assert (=> d!2230117 (= lt!2569617 (generalisedUnion!2735 (unfocusZipperList!2291 (toList!11243 z!3530))))))

(assert (=> d!2230117 (= (unfocusZipper!2560 (toList!11243 z!3530)) lt!2569617)))

(declare-fun bs!1890163 () Bool)

(assert (= bs!1890163 d!2230117))

(declare-fun m!7864458 () Bool)

(assert (=> bs!1890163 m!7864458))

(assert (=> bs!1890163 m!7864412))

(declare-fun m!7864460 () Bool)

(assert (=> bs!1890163 m!7864460))

(assert (=> bs!1890163 m!7864460))

(declare-fun m!7864462 () Bool)

(assert (=> bs!1890163 m!7864462))

(assert (=> start!697866 d!2230117))

(declare-fun d!2230119 () Bool)

(declare-fun e!4300299 () Bool)

(assert (=> d!2230119 e!4300299))

(declare-fun res!2918657 () Bool)

(assert (=> d!2230119 (=> (not res!2918657) (not e!4300299))))

(declare-fun lt!2569620 () List!69641)

(declare-fun noDuplicate!2852 (List!69641) Bool)

(assert (=> d!2230119 (= res!2918657 (noDuplicate!2852 lt!2569620))))

(declare-fun choose!55318 ((Set Context!14504)) List!69641)

(assert (=> d!2230119 (= lt!2569620 (choose!55318 z!3530))))

(assert (=> d!2230119 (= (toList!11243 z!3530) lt!2569620)))

(declare-fun b!7158138 () Bool)

(declare-fun content!14281 (List!69641) (Set Context!14504))

(assert (=> b!7158138 (= e!4300299 (= (content!14281 lt!2569620) z!3530))))

(assert (= (and d!2230119 res!2918657) b!7158138))

(declare-fun m!7864464 () Bool)

(assert (=> d!2230119 m!7864464))

(declare-fun m!7864466 () Bool)

(assert (=> d!2230119 m!7864466))

(declare-fun m!7864468 () Bool)

(assert (=> b!7158138 m!7864468))

(assert (=> start!697866 d!2230119))

(declare-fun d!2230121 () Bool)

(assert (=> d!2230121 (= (isEmpty!40152 s!7967) (is-Nil!69518 s!7967))))

(assert (=> b!7158095 d!2230121))

(declare-fun d!2230123 () Bool)

(declare-fun lambda!436649 () Int)

(declare-fun forall!17135 (List!69640 Int) Bool)

(assert (=> d!2230123 (= (nullableContext!173 lt!2569600) (forall!17135 (exprs!7752 lt!2569600) lambda!436649))))

(declare-fun bs!1890164 () Bool)

(assert (= bs!1890164 d!2230123))

(declare-fun m!7864470 () Bool)

(assert (=> bs!1890164 m!7864470))

(assert (=> b!7158095 d!2230123))

(declare-fun d!2230125 () Bool)

(declare-fun e!4300300 () Bool)

(assert (=> d!2230125 e!4300300))

(declare-fun res!2918658 () Bool)

(assert (=> d!2230125 (=> (not res!2918658) (not e!4300300))))

(declare-fun lt!2569621 () List!69641)

(assert (=> d!2230125 (= res!2918658 (noDuplicate!2852 lt!2569621))))

(assert (=> d!2230125 (= lt!2569621 (choose!55318 lt!2569599))))

(assert (=> d!2230125 (= (toList!11243 lt!2569599) lt!2569621)))

(declare-fun b!7158139 () Bool)

(assert (=> b!7158139 (= e!4300300 (= (content!14281 lt!2569621) lt!2569599))))

(assert (= (and d!2230125 res!2918658) b!7158139))

(declare-fun m!7864472 () Bool)

(assert (=> d!2230125 m!7864472))

(declare-fun m!7864474 () Bool)

(assert (=> d!2230125 m!7864474))

(declare-fun m!7864476 () Bool)

(assert (=> b!7158139 m!7864476))

(assert (=> b!7158096 d!2230125))

(declare-fun bs!1890165 () Bool)

(declare-fun d!2230127 () Bool)

(assert (= bs!1890165 (and d!2230127 d!2230123)))

(declare-fun lambda!436652 () Int)

(assert (=> bs!1890165 (not (= lambda!436652 lambda!436649))))

(assert (=> d!2230127 (= (inv!88773 setElem!52764) (forall!17135 (exprs!7752 setElem!52764) lambda!436652))))

(declare-fun bs!1890166 () Bool)

(assert (= bs!1890166 d!2230127))

(declare-fun m!7864478 () Bool)

(assert (=> bs!1890166 m!7864478))

(assert (=> setNonEmpty!52764 d!2230127))

(declare-fun b!7158150 () Bool)

(declare-fun e!4300308 () (Set Context!14504))

(declare-fun call!651800 () (Set Context!14504))

(assert (=> b!7158150 (= e!4300308 call!651800)))

(declare-fun d!2230129 () Bool)

(declare-fun c!1333968 () Bool)

(declare-fun e!4300309 () Bool)

(assert (=> d!2230129 (= c!1333968 e!4300309)))

(declare-fun res!2918661 () Bool)

(assert (=> d!2230129 (=> (not res!2918661) (not e!4300309))))

(assert (=> d!2230129 (= res!2918661 (is-Cons!69516 (exprs!7752 lt!2569600)))))

(declare-fun e!4300307 () (Set Context!14504))

(assert (=> d!2230129 (= (derivationStepZipperUp!2290 lt!2569600 lt!2569601) e!4300307)))

(declare-fun b!7158151 () Bool)

(assert (=> b!7158151 (= e!4300307 (set.union call!651800 (derivationStepZipperUp!2290 (Context!14505 (t!383657 (exprs!7752 lt!2569600))) lt!2569601)))))

(declare-fun b!7158152 () Bool)

(assert (=> b!7158152 (= e!4300308 (as set.empty (Set Context!14504)))))

(declare-fun bm!651795 () Bool)

(declare-fun derivationStepZipperDown!2487 (Regex!18300 Context!14504 C!36874) (Set Context!14504))

(assert (=> bm!651795 (= call!651800 (derivationStepZipperDown!2487 (h!75964 (exprs!7752 lt!2569600)) (Context!14505 (t!383657 (exprs!7752 lt!2569600))) lt!2569601))))

(declare-fun b!7158153 () Bool)

(assert (=> b!7158153 (= e!4300307 e!4300308)))

(declare-fun c!1333967 () Bool)

(assert (=> b!7158153 (= c!1333967 (is-Cons!69516 (exprs!7752 lt!2569600)))))

(declare-fun b!7158154 () Bool)

(declare-fun nullable!7745 (Regex!18300) Bool)

(assert (=> b!7158154 (= e!4300309 (nullable!7745 (h!75964 (exprs!7752 lt!2569600))))))

(assert (= (and d!2230129 res!2918661) b!7158154))

(assert (= (and d!2230129 c!1333968) b!7158151))

(assert (= (and d!2230129 (not c!1333968)) b!7158153))

(assert (= (and b!7158153 c!1333967) b!7158150))

(assert (= (and b!7158153 (not c!1333967)) b!7158152))

(assert (= (or b!7158151 b!7158150) bm!651795))

(declare-fun m!7864480 () Bool)

(assert (=> b!7158151 m!7864480))

(declare-fun m!7864482 () Bool)

(assert (=> bm!651795 m!7864482))

(declare-fun m!7864484 () Bool)

(assert (=> b!7158154 m!7864484))

(assert (=> b!7158092 d!2230129))

(declare-fun d!2230131 () Bool)

(assert (=> d!2230131 true))

(declare-fun lambda!436655 () Int)

(declare-fun flatMap!2642 ((Set Context!14504) Int) (Set Context!14504))

(assert (=> d!2230131 (= (derivationStepZipper!3185 z!3530 lt!2569601) (flatMap!2642 z!3530 lambda!436655))))

(declare-fun bs!1890167 () Bool)

(assert (= bs!1890167 d!2230131))

(declare-fun m!7864486 () Bool)

(assert (=> bs!1890167 m!7864486))

(assert (=> b!7158092 d!2230131))

(declare-fun d!2230133 () Bool)

(assert (=> d!2230133 (= (head!14582 s!7967) (h!75966 s!7967))))

(assert (=> b!7158092 d!2230133))

(declare-fun b!7158161 () Bool)

(declare-fun e!4300312 () Bool)

(declare-fun tp!1979492 () Bool)

(assert (=> b!7158161 (= e!4300312 (and tp_is_empty!46173 tp!1979492))))

(assert (=> b!7158090 (= tp!1979479 e!4300312)))

(assert (= (and b!7158090 (is-Cons!69518 (t!383659 s!7967))) b!7158161))

(declare-fun condSetEmpty!52770 () Bool)

(assert (=> setNonEmpty!52764 (= condSetEmpty!52770 (= setRest!52764 (as set.empty (Set Context!14504))))))

(declare-fun setRes!52770 () Bool)

(assert (=> setNonEmpty!52764 (= tp!1979480 setRes!52770)))

(declare-fun setIsEmpty!52770 () Bool)

(assert (=> setIsEmpty!52770 setRes!52770))

(declare-fun e!4300315 () Bool)

(declare-fun tp!1979497 () Bool)

(declare-fun setElem!52770 () Context!14504)

(declare-fun setNonEmpty!52770 () Bool)

(assert (=> setNonEmpty!52770 (= setRes!52770 (and tp!1979497 (inv!88773 setElem!52770) e!4300315))))

(declare-fun setRest!52770 () (Set Context!14504))

(assert (=> setNonEmpty!52770 (= setRest!52764 (set.union (set.insert setElem!52770 (as set.empty (Set Context!14504))) setRest!52770))))

(declare-fun b!7158166 () Bool)

(declare-fun tp!1979498 () Bool)

(assert (=> b!7158166 (= e!4300315 tp!1979498)))

(assert (= (and setNonEmpty!52764 condSetEmpty!52770) setIsEmpty!52770))

(assert (= (and setNonEmpty!52764 (not condSetEmpty!52770)) setNonEmpty!52770))

(assert (= setNonEmpty!52770 b!7158166))

(declare-fun m!7864488 () Bool)

(assert (=> setNonEmpty!52770 m!7864488))

(declare-fun b!7158171 () Bool)

(declare-fun e!4300318 () Bool)

(declare-fun tp!1979503 () Bool)

(declare-fun tp!1979504 () Bool)

(assert (=> b!7158171 (= e!4300318 (and tp!1979503 tp!1979504))))

(assert (=> b!7158091 (= tp!1979478 e!4300318)))

(assert (= (and b!7158091 (is-Cons!69516 (exprs!7752 setElem!52764))) b!7158171))

(push 1)

(assert (not d!2230125))

(assert (not d!2230117))

(assert (not d!2230123))

(assert (not b!7158135))

(assert (not b!7158166))

(assert (not b!7158138))

(assert (not b!7158171))

(assert (not d!2230119))

(assert (not bm!651795))

(assert (not d!2230127))

(assert (not b!7158161))

(assert (not b!7158151))

(assert tp_is_empty!46173)

(assert (not d!2230113))

(assert (not b!7158139))

(assert (not b!7158154))

(assert (not setNonEmpty!52770))

(assert (not d!2230131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

