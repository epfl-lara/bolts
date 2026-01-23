; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698300 () Bool)

(assert start!698300)

(declare-fun b!7160135 () Bool)

(assert (=> b!7160135 true))

(declare-fun b!7160128 () Bool)

(declare-fun e!4301612 () Bool)

(declare-fun tp_is_empty!46213 () Bool)

(declare-fun tp!1980120 () Bool)

(assert (=> b!7160128 (= e!4301612 (and tp_is_empty!46213 tp!1980120))))

(declare-fun b!7160129 () Bool)

(declare-fun e!4301614 () Bool)

(declare-fun e!4301615 () Bool)

(assert (=> b!7160129 (= e!4301614 e!4301615)))

(declare-fun res!2919396 () Bool)

(assert (=> b!7160129 (=> res!2919396 e!4301615)))

(declare-datatypes ((C!36914 0))(
  ( (C!36915 (val!28405 Int)) )
))
(declare-datatypes ((Regex!18320 0))(
  ( (ElementMatch!18320 (c!1334362 C!36914)) (Concat!27165 (regOne!37152 Regex!18320) (regTwo!37152 Regex!18320)) (EmptyExpr!18320) (Star!18320 (reg!18649 Regex!18320)) (EmptyLang!18320) (Union!18320 (regOne!37153 Regex!18320) (regTwo!37153 Regex!18320)) )
))
(declare-datatypes ((List!69700 0))(
  ( (Nil!69576) (Cons!69576 (h!76024 Regex!18320) (t!383717 List!69700)) )
))
(declare-datatypes ((Context!14544 0))(
  ( (Context!14545 (exprs!7772 List!69700)) )
))
(declare-fun lt!2569953 () Context!14544)

(declare-fun lt!2569956 () C!36914)

(declare-fun derivationStepZipperUp!2308 (Context!14544 C!36914) (Set Context!14544))

(assert (=> b!7160129 (= res!2919396 (not (= (derivationStepZipperUp!2308 lt!2569953 lt!2569956) (as set.empty (Set Context!14544)))))))

(declare-fun lt!2569954 () (Set Context!14544))

(declare-fun z!3530 () (Set Context!14544))

(declare-fun derivationStepZipper!3201 ((Set Context!14544) C!36914) (Set Context!14544))

(assert (=> b!7160129 (= lt!2569954 (derivationStepZipper!3201 z!3530 lt!2569956))))

(declare-datatypes ((List!69701 0))(
  ( (Nil!69577) (Cons!69577 (h!76025 C!36914) (t!383718 List!69701)) )
))
(declare-fun s!7967 () List!69701)

(declare-fun head!14616 (List!69701) C!36914)

(assert (=> b!7160129 (= lt!2569956 (head!14616 s!7967))))

(declare-fun res!2919398 () Bool)

(declare-fun e!4301611 () Bool)

(assert (=> start!698300 (=> (not res!2919398) (not e!4301611))))

(declare-datatypes ((List!69702 0))(
  ( (Nil!69578) (Cons!69578 (h!76026 Context!14544) (t!383719 List!69702)) )
))
(declare-fun unfocusZipper!2580 (List!69702) Regex!18320)

(declare-fun toList!11263 ((Set Context!14544)) List!69702)

(assert (=> start!698300 (= res!2919398 (= (unfocusZipper!2580 (toList!11263 z!3530)) EmptyExpr!18320))))

(assert (=> start!698300 e!4301611))

(declare-fun condSetEmpty!52884 () Bool)

(assert (=> start!698300 (= condSetEmpty!52884 (= z!3530 (as set.empty (Set Context!14544))))))

(declare-fun setRes!52884 () Bool)

(assert (=> start!698300 setRes!52884))

(assert (=> start!698300 e!4301612))

(declare-fun b!7160130 () Bool)

(declare-fun res!2919401 () Bool)

(assert (=> b!7160130 (=> res!2919401 e!4301615)))

(assert (=> b!7160130 (= res!2919401 (= lt!2569954 (as set.empty (Set Context!14544))))))

(declare-fun b!7160131 () Bool)

(declare-fun res!2919400 () Bool)

(assert (=> b!7160131 (=> (not res!2919400) (not e!4301611))))

(declare-fun focus!395 (Regex!18320) (Set Context!14544))

(assert (=> b!7160131 (= res!2919400 (= z!3530 (focus!395 EmptyExpr!18320)))))

(declare-fun b!7160132 () Bool)

(assert (=> b!7160132 (= e!4301611 (not e!4301614))))

(declare-fun res!2919399 () Bool)

(assert (=> b!7160132 (=> res!2919399 e!4301614)))

(declare-fun isEmpty!40178 (List!69701) Bool)

(assert (=> b!7160132 (= res!2919399 (isEmpty!40178 s!7967))))

(declare-fun nullableContext!183 (Context!14544) Bool)

(assert (=> b!7160132 (nullableContext!183 lt!2569953)))

(assert (=> b!7160132 (= lt!2569953 (Context!14545 (Cons!69576 EmptyExpr!18320 Nil!69576)))))

(declare-fun tp!1980118 () Bool)

(declare-fun setNonEmpty!52884 () Bool)

(declare-fun e!4301616 () Bool)

(declare-fun setElem!52884 () Context!14544)

(declare-fun inv!88823 (Context!14544) Bool)

(assert (=> setNonEmpty!52884 (= setRes!52884 (and tp!1980118 (inv!88823 setElem!52884) e!4301616))))

(declare-fun setRest!52884 () (Set Context!14544))

(assert (=> setNonEmpty!52884 (= z!3530 (set.union (set.insert setElem!52884 (as set.empty (Set Context!14544))) setRest!52884))))

(declare-fun b!7160133 () Bool)

(declare-fun e!4301613 () Bool)

(declare-fun lt!2569955 () Context!14544)

(assert (=> b!7160133 (= e!4301613 (set.member lt!2569955 lt!2569954))))

(declare-fun b!7160134 () Bool)

(declare-fun tp!1980119 () Bool)

(assert (=> b!7160134 (= e!4301616 tp!1980119)))

(declare-fun setIsEmpty!52884 () Bool)

(assert (=> setIsEmpty!52884 setRes!52884))

(assert (=> b!7160135 (= e!4301615 e!4301613)))

(declare-fun res!2919397 () Bool)

(assert (=> b!7160135 (=> res!2919397 e!4301613)))

(declare-fun lambda!436844 () Int)

(declare-fun flatMap!2652 ((Set Context!14544) Int) (Set Context!14544))

(assert (=> b!7160135 (= res!2919397 (not (set.member lt!2569955 (flatMap!2652 z!3530 lambda!436844))))))

(declare-fun head!14617 (List!69702) Context!14544)

(assert (=> b!7160135 (= lt!2569955 (head!14617 (toList!11263 lt!2569954)))))

(assert (= (and start!698300 res!2919398) b!7160131))

(assert (= (and b!7160131 res!2919400) b!7160132))

(assert (= (and b!7160132 (not res!2919399)) b!7160129))

(assert (= (and b!7160129 (not res!2919396)) b!7160130))

(assert (= (and b!7160130 (not res!2919401)) b!7160135))

(assert (= (and b!7160135 (not res!2919397)) b!7160133))

(assert (= (and start!698300 condSetEmpty!52884) setIsEmpty!52884))

(assert (= (and start!698300 (not condSetEmpty!52884)) setNonEmpty!52884))

(assert (= setNonEmpty!52884 b!7160134))

(assert (= (and start!698300 (is-Cons!69577 s!7967)) b!7160128))

(declare-fun m!7866038 () Bool)

(assert (=> b!7160135 m!7866038))

(declare-fun m!7866040 () Bool)

(assert (=> b!7160135 m!7866040))

(declare-fun m!7866042 () Bool)

(assert (=> b!7160135 m!7866042))

(assert (=> b!7160135 m!7866042))

(declare-fun m!7866044 () Bool)

(assert (=> b!7160135 m!7866044))

(declare-fun m!7866046 () Bool)

(assert (=> start!698300 m!7866046))

(assert (=> start!698300 m!7866046))

(declare-fun m!7866048 () Bool)

(assert (=> start!698300 m!7866048))

(declare-fun m!7866050 () Bool)

(assert (=> setNonEmpty!52884 m!7866050))

(declare-fun m!7866052 () Bool)

(assert (=> b!7160129 m!7866052))

(declare-fun m!7866054 () Bool)

(assert (=> b!7160129 m!7866054))

(declare-fun m!7866056 () Bool)

(assert (=> b!7160129 m!7866056))

(declare-fun m!7866058 () Bool)

(assert (=> b!7160131 m!7866058))

(declare-fun m!7866060 () Bool)

(assert (=> b!7160133 m!7866060))

(declare-fun m!7866062 () Bool)

(assert (=> b!7160132 m!7866062))

(declare-fun m!7866064 () Bool)

(assert (=> b!7160132 m!7866064))

(push 1)

(assert (not b!7160131))

(assert (not b!7160128))

(assert (not b!7160134))

(assert (not b!7160135))

(assert tp_is_empty!46213)

(assert (not b!7160129))

(assert (not start!698300))

(assert (not b!7160132))

(assert (not setNonEmpty!52884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7160174 () Bool)

(declare-fun e!4301641 () (Set Context!14544))

(declare-fun e!4301642 () (Set Context!14544))

(assert (=> b!7160174 (= e!4301641 e!4301642)))

(declare-fun c!1334368 () Bool)

(assert (=> b!7160174 (= c!1334368 (is-Cons!69576 (exprs!7772 lt!2569953)))))

(declare-fun b!7160175 () Bool)

(declare-fun e!4301643 () Bool)

(declare-fun nullable!7757 (Regex!18320) Bool)

(assert (=> b!7160175 (= e!4301643 (nullable!7757 (h!76024 (exprs!7772 lt!2569953))))))

(declare-fun d!2230661 () Bool)

(declare-fun c!1334369 () Bool)

(assert (=> d!2230661 (= c!1334369 e!4301643)))

(declare-fun res!2919422 () Bool)

(assert (=> d!2230661 (=> (not res!2919422) (not e!4301643))))

(assert (=> d!2230661 (= res!2919422 (is-Cons!69576 (exprs!7772 lt!2569953)))))

(assert (=> d!2230661 (= (derivationStepZipperUp!2308 lt!2569953 lt!2569956) e!4301641)))

(declare-fun b!7160176 () Bool)

(assert (=> b!7160176 (= e!4301642 (as set.empty (Set Context!14544)))))

(declare-fun call!652007 () (Set Context!14544))

(declare-fun b!7160177 () Bool)

(assert (=> b!7160177 (= e!4301641 (set.union call!652007 (derivationStepZipperUp!2308 (Context!14545 (t!383717 (exprs!7772 lt!2569953))) lt!2569956)))))

(declare-fun bm!652002 () Bool)

(declare-fun derivationStepZipperDown!2499 (Regex!18320 Context!14544 C!36914) (Set Context!14544))

(assert (=> bm!652002 (= call!652007 (derivationStepZipperDown!2499 (h!76024 (exprs!7772 lt!2569953)) (Context!14545 (t!383717 (exprs!7772 lt!2569953))) lt!2569956))))

(declare-fun b!7160178 () Bool)

(assert (=> b!7160178 (= e!4301642 call!652007)))

(assert (= (and d!2230661 res!2919422) b!7160175))

(assert (= (and d!2230661 c!1334369) b!7160177))

(assert (= (and d!2230661 (not c!1334369)) b!7160174))

(assert (= (and b!7160174 c!1334368) b!7160178))

(assert (= (and b!7160174 (not c!1334368)) b!7160176))

(assert (= (or b!7160177 b!7160178) bm!652002))

(declare-fun m!7866094 () Bool)

(assert (=> b!7160175 m!7866094))

(declare-fun m!7866096 () Bool)

(assert (=> b!7160177 m!7866096))

(declare-fun m!7866098 () Bool)

(assert (=> bm!652002 m!7866098))

(assert (=> b!7160129 d!2230661))

(declare-fun bs!1890342 () Bool)

(declare-fun d!2230663 () Bool)

(assert (= bs!1890342 (and d!2230663 b!7160135)))

(declare-fun lambda!436850 () Int)

(assert (=> bs!1890342 (= lambda!436850 lambda!436844)))

(assert (=> d!2230663 true))

(assert (=> d!2230663 (= (derivationStepZipper!3201 z!3530 lt!2569956) (flatMap!2652 z!3530 lambda!436850))))

(declare-fun bs!1890343 () Bool)

(assert (= bs!1890343 d!2230663))

(declare-fun m!7866100 () Bool)

(assert (=> bs!1890343 m!7866100))

(assert (=> b!7160129 d!2230663))

(declare-fun d!2230665 () Bool)

(assert (=> d!2230665 (= (head!14616 s!7967) (h!76025 s!7967))))

(assert (=> b!7160129 d!2230665))

(declare-fun d!2230667 () Bool)

(declare-fun lt!2569971 () Regex!18320)

(declare-fun validRegex!9446 (Regex!18320) Bool)

(assert (=> d!2230667 (validRegex!9446 lt!2569971)))

(declare-fun generalisedUnion!2749 (List!69700) Regex!18320)

(declare-fun unfocusZipperList!2305 (List!69702) List!69700)

(assert (=> d!2230667 (= lt!2569971 (generalisedUnion!2749 (unfocusZipperList!2305 (toList!11263 z!3530))))))

(assert (=> d!2230667 (= (unfocusZipper!2580 (toList!11263 z!3530)) lt!2569971)))

(declare-fun bs!1890344 () Bool)

(assert (= bs!1890344 d!2230667))

(declare-fun m!7866102 () Bool)

(assert (=> bs!1890344 m!7866102))

(assert (=> bs!1890344 m!7866046))

(declare-fun m!7866104 () Bool)

(assert (=> bs!1890344 m!7866104))

(assert (=> bs!1890344 m!7866104))

(declare-fun m!7866106 () Bool)

(assert (=> bs!1890344 m!7866106))

(assert (=> start!698300 d!2230667))

(declare-fun d!2230669 () Bool)

(declare-fun e!4301646 () Bool)

(assert (=> d!2230669 e!4301646))

(declare-fun res!2919425 () Bool)

(assert (=> d!2230669 (=> (not res!2919425) (not e!4301646))))

(declare-fun lt!2569974 () List!69702)

(declare-fun noDuplicate!2865 (List!69702) Bool)

(assert (=> d!2230669 (= res!2919425 (noDuplicate!2865 lt!2569974))))

(declare-fun choose!55338 ((Set Context!14544)) List!69702)

(assert (=> d!2230669 (= lt!2569974 (choose!55338 z!3530))))

(assert (=> d!2230669 (= (toList!11263 z!3530) lt!2569974)))

(declare-fun b!7160181 () Bool)

(declare-fun content!14294 (List!69702) (Set Context!14544))

(assert (=> b!7160181 (= e!4301646 (= (content!14294 lt!2569974) z!3530))))

(assert (= (and d!2230669 res!2919425) b!7160181))

(declare-fun m!7866108 () Bool)

(assert (=> d!2230669 m!7866108))

(declare-fun m!7866110 () Bool)

(assert (=> d!2230669 m!7866110))

(declare-fun m!7866112 () Bool)

(assert (=> b!7160181 m!7866112))

(assert (=> start!698300 d!2230669))

(declare-fun d!2230673 () Bool)

(declare-fun lambda!436853 () Int)

(declare-fun forall!17149 (List!69700 Int) Bool)

(assert (=> d!2230673 (= (inv!88823 setElem!52884) (forall!17149 (exprs!7772 setElem!52884) lambda!436853))))

(declare-fun bs!1890345 () Bool)

(assert (= bs!1890345 d!2230673))

(declare-fun m!7866114 () Bool)

(assert (=> bs!1890345 m!7866114))

(assert (=> setNonEmpty!52884 d!2230673))

(declare-fun d!2230675 () Bool)

(assert (=> d!2230675 (= (isEmpty!40178 s!7967) (is-Nil!69577 s!7967))))

(assert (=> b!7160132 d!2230675))

(declare-fun bs!1890347 () Bool)

(declare-fun d!2230679 () Bool)

(assert (= bs!1890347 (and d!2230679 d!2230673)))

(declare-fun lambda!436856 () Int)

(assert (=> bs!1890347 (not (= lambda!436856 lambda!436853))))

(assert (=> d!2230679 (= (nullableContext!183 lt!2569953) (forall!17149 (exprs!7772 lt!2569953) lambda!436856))))

(declare-fun bs!1890348 () Bool)

(assert (= bs!1890348 d!2230679))

(declare-fun m!7866118 () Bool)

(assert (=> bs!1890348 m!7866118))

(assert (=> b!7160132 d!2230679))

(declare-fun d!2230683 () Bool)

(declare-fun choose!55339 ((Set Context!14544) Int) (Set Context!14544))

(assert (=> d!2230683 (= (flatMap!2652 z!3530 lambda!436844) (choose!55339 z!3530 lambda!436844))))

(declare-fun bs!1890349 () Bool)

(assert (= bs!1890349 d!2230683))

(declare-fun m!7866120 () Bool)

(assert (=> bs!1890349 m!7866120))

(assert (=> b!7160135 d!2230683))

(declare-fun d!2230685 () Bool)

(assert (=> d!2230685 (= (head!14617 (toList!11263 lt!2569954)) (h!76026 (toList!11263 lt!2569954)))))

(assert (=> b!7160135 d!2230685))

(declare-fun d!2230687 () Bool)

(declare-fun e!4301647 () Bool)

(assert (=> d!2230687 e!4301647))

(declare-fun res!2919426 () Bool)

(assert (=> d!2230687 (=> (not res!2919426) (not e!4301647))))

(declare-fun lt!2569975 () List!69702)

(assert (=> d!2230687 (= res!2919426 (noDuplicate!2865 lt!2569975))))

(assert (=> d!2230687 (= lt!2569975 (choose!55338 lt!2569954))))

(assert (=> d!2230687 (= (toList!11263 lt!2569954) lt!2569975)))

(declare-fun b!7160182 () Bool)

(assert (=> b!7160182 (= e!4301647 (= (content!14294 lt!2569975) lt!2569954))))

(assert (= (and d!2230687 res!2919426) b!7160182))

(declare-fun m!7866122 () Bool)

(assert (=> d!2230687 m!7866122))

(declare-fun m!7866124 () Bool)

(assert (=> d!2230687 m!7866124))

(declare-fun m!7866126 () Bool)

(assert (=> b!7160182 m!7866126))

(assert (=> b!7160135 d!2230687))

(declare-fun d!2230689 () Bool)

(declare-fun e!4301653 () Bool)

(assert (=> d!2230689 e!4301653))

(declare-fun res!2919433 () Bool)

(assert (=> d!2230689 (=> (not res!2919433) (not e!4301653))))

(assert (=> d!2230689 (= res!2919433 (validRegex!9446 EmptyExpr!18320))))

(assert (=> d!2230689 (= (focus!395 EmptyExpr!18320) (set.insert (Context!14545 (Cons!69576 EmptyExpr!18320 Nil!69576)) (as set.empty (Set Context!14544))))))

(declare-fun b!7160188 () Bool)

(assert (=> b!7160188 (= e!4301653 (= (unfocusZipper!2580 (toList!11263 (set.insert (Context!14545 (Cons!69576 EmptyExpr!18320 Nil!69576)) (as set.empty (Set Context!14544))))) EmptyExpr!18320))))

(assert (= (and d!2230689 res!2919433) b!7160188))

(declare-fun m!7866134 () Bool)

(assert (=> d!2230689 m!7866134))

(declare-fun m!7866136 () Bool)

(assert (=> d!2230689 m!7866136))

(assert (=> b!7160188 m!7866136))

(assert (=> b!7160188 m!7866136))

(declare-fun m!7866138 () Bool)

(assert (=> b!7160188 m!7866138))

(assert (=> b!7160188 m!7866138))

(declare-fun m!7866140 () Bool)

(assert (=> b!7160188 m!7866140))

(assert (=> b!7160131 d!2230689))

(declare-fun b!7160193 () Bool)

(declare-fun e!4301656 () Bool)

(declare-fun tp!1980132 () Bool)

(assert (=> b!7160193 (= e!4301656 (and tp_is_empty!46213 tp!1980132))))

(assert (=> b!7160128 (= tp!1980120 e!4301656)))

(assert (= (and b!7160128 (is-Cons!69577 (t!383718 s!7967))) b!7160193))

(declare-fun condSetEmpty!52890 () Bool)

(assert (=> setNonEmpty!52884 (= condSetEmpty!52890 (= setRest!52884 (as set.empty (Set Context!14544))))))

(declare-fun setRes!52890 () Bool)

(assert (=> setNonEmpty!52884 (= tp!1980118 setRes!52890)))

(declare-fun setIsEmpty!52890 () Bool)

(assert (=> setIsEmpty!52890 setRes!52890))

(declare-fun setElem!52890 () Context!14544)

(declare-fun e!4301659 () Bool)

(declare-fun tp!1980138 () Bool)

(declare-fun setNonEmpty!52890 () Bool)

(assert (=> setNonEmpty!52890 (= setRes!52890 (and tp!1980138 (inv!88823 setElem!52890) e!4301659))))

(declare-fun setRest!52890 () (Set Context!14544))

(assert (=> setNonEmpty!52890 (= setRest!52884 (set.union (set.insert setElem!52890 (as set.empty (Set Context!14544))) setRest!52890))))

(declare-fun b!7160198 () Bool)

(declare-fun tp!1980137 () Bool)

(assert (=> b!7160198 (= e!4301659 tp!1980137)))

(assert (= (and setNonEmpty!52884 condSetEmpty!52890) setIsEmpty!52890))

(assert (= (and setNonEmpty!52884 (not condSetEmpty!52890)) setNonEmpty!52890))

(assert (= setNonEmpty!52890 b!7160198))

(declare-fun m!7866142 () Bool)

(assert (=> setNonEmpty!52890 m!7866142))

(declare-fun b!7160203 () Bool)

(declare-fun e!4301662 () Bool)

(declare-fun tp!1980143 () Bool)

(declare-fun tp!1980144 () Bool)

(assert (=> b!7160203 (= e!4301662 (and tp!1980143 tp!1980144))))

(assert (=> b!7160134 (= tp!1980119 e!4301662)))

(assert (= (and b!7160134 (is-Cons!69576 (exprs!7772 setElem!52884))) b!7160203))

(push 1)

(assert (not d!2230663))

(assert (not d!2230687))

(assert (not b!7160175))

(assert (not b!7160177))

(assert (not d!2230689))

(assert (not d!2230683))

(assert tp_is_empty!46213)

(assert (not b!7160193))

(assert (not bm!652002))

(assert (not b!7160188))

(assert (not b!7160182))

(assert (not d!2230673))

(assert (not b!7160198))

(assert (not b!7160203))

(assert (not d!2230669))

(assert (not b!7160181))

(assert (not d!2230679))

(assert (not setNonEmpty!52890))

(assert (not d!2230667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

