; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542030 () Bool)

(assert start!542030)

(declare-fun bs!1195213 () Bool)

(declare-fun b!5129158 () Bool)

(declare-fun b!5129168 () Bool)

(assert (= bs!1195213 (and b!5129158 b!5129168)))

(declare-fun lambda!252967 () Int)

(declare-fun lambda!252966 () Int)

(assert (=> bs!1195213 (not (= lambda!252967 lambda!252966))))

(declare-fun bs!1195214 () Bool)

(declare-fun b!5129165 () Bool)

(assert (= bs!1195214 (and b!5129165 b!5129168)))

(declare-fun lambda!252968 () Int)

(assert (=> bs!1195214 (not (= lambda!252968 lambda!252966))))

(declare-fun bs!1195215 () Bool)

(assert (= bs!1195215 (and b!5129165 b!5129158)))

(assert (=> bs!1195215 (not (= lambda!252968 lambda!252967))))

(declare-fun bs!1195216 () Bool)

(declare-fun b!5129159 () Bool)

(declare-fun b!5129161 () Bool)

(assert (= bs!1195216 (and b!5129159 b!5129161)))

(declare-fun lambda!252969 () Int)

(declare-fun lambda!252965 () Int)

(assert (=> bs!1195216 (not (= lambda!252969 lambda!252965))))

(declare-fun res!2184065 () Bool)

(declare-fun e!3198875 () Bool)

(assert (=> b!5129158 (=> res!2184065 e!3198875)))

(declare-datatypes ((C!28886 0))(
  ( (C!28887 (val!24095 Int)) )
))
(declare-datatypes ((Regex!14310 0))(
  ( (ElementMatch!14310 (c!882079 C!28886)) (Concat!23155 (regOne!29132 Regex!14310) (regTwo!29132 Regex!14310)) (EmptyExpr!14310) (Star!14310 (reg!14639 Regex!14310)) (EmptyLang!14310) (Union!14310 (regOne!29133 Regex!14310) (regTwo!29133 Regex!14310)) )
))
(declare-datatypes ((List!59547 0))(
  ( (Nil!59423) (Cons!59423 (h!65871 Regex!14310) (t!372574 List!59547)) )
))
(declare-datatypes ((Context!7388 0))(
  ( (Context!7389 (exprs!4194 List!59547)) )
))
(declare-fun lt!2115551 () Context!7388)

(declare-fun forall!13703 (List!59547 Int) Bool)

(assert (=> b!5129158 (= res!2184065 (not (forall!13703 (exprs!4194 lt!2115551) lambda!252967)))))

(declare-fun e!3198876 () Bool)

(declare-fun z!1113 () (Set Context!7388))

(declare-fun forall!13704 ((Set Context!7388) Int) Bool)

(assert (=> b!5129159 (= e!3198876 (forall!13704 z!1113 lambda!252969))))

(declare-fun b!5129160 () Bool)

(declare-fun e!3198879 () Bool)

(declare-fun tp!1431031 () Bool)

(assert (=> b!5129160 (= e!3198879 tp!1431031)))

(declare-fun res!2184067 () Bool)

(declare-fun e!3198880 () Bool)

(assert (=> b!5129161 (=> (not res!2184067) (not e!3198880))))

(declare-fun exists!1586 ((Set Context!7388) Int) Bool)

(assert (=> b!5129161 (= res!2184067 (exists!1586 z!1113 lambda!252965))))

(declare-fun setIsEmpty!30941 () Bool)

(declare-fun setRes!30941 () Bool)

(assert (=> setIsEmpty!30941 setRes!30941))

(declare-fun setElem!30941 () Context!7388)

(declare-fun tp!1431030 () Bool)

(declare-fun setNonEmpty!30941 () Bool)

(declare-fun inv!78957 (Context!7388) Bool)

(assert (=> setNonEmpty!30941 (= setRes!30941 (and tp!1431030 (inv!78957 setElem!30941) e!3198879))))

(declare-fun setRest!30941 () (Set Context!7388))

(assert (=> setNonEmpty!30941 (= z!1113 (set.union (set.insert setElem!30941 (as set.empty (Set Context!7388))) setRest!30941))))

(declare-fun b!5129162 () Bool)

(assert (=> b!5129162 (= e!3198875 e!3198876)))

(declare-fun res!2184062 () Bool)

(assert (=> b!5129162 (=> res!2184062 e!3198876)))

(declare-fun lt!2115549 () Bool)

(assert (=> b!5129162 (= res!2184062 lt!2115549)))

(declare-datatypes ((Unit!150634 0))(
  ( (Unit!150635) )
))
(declare-fun lt!2115550 () Unit!150634)

(declare-fun e!3198878 () Unit!150634)

(assert (=> b!5129162 (= lt!2115550 e!3198878)))

(declare-fun c!882078 () Bool)

(assert (=> b!5129162 (= c!882078 lt!2115549)))

(declare-fun lostCause!1251 (Context!7388) Bool)

(assert (=> b!5129162 (= lt!2115549 (lostCause!1251 lt!2115551))))

(declare-fun b!5129163 () Bool)

(declare-fun Unit!150636 () Unit!150634)

(assert (=> b!5129163 (= e!3198878 Unit!150636)))

(declare-fun b!5129164 () Bool)

(declare-fun e!3198877 () Bool)

(assert (=> b!5129164 (= e!3198877 false)))

(declare-fun Unit!150637 () Unit!150634)

(assert (=> b!5129165 (= e!3198878 Unit!150637)))

(declare-fun lt!2115552 () Regex!14310)

(declare-fun getWitness!743 (List!59547 Int) Regex!14310)

(assert (=> b!5129165 (= lt!2115552 (getWitness!743 (exprs!4194 lt!2115551) lambda!252968))))

(declare-fun lt!2115546 () Unit!150634)

(declare-fun forallContained!4598 (List!59547 Int Regex!14310) Unit!150634)

(assert (=> b!5129165 (= lt!2115546 (forallContained!4598 (exprs!4194 lt!2115551) lambda!252967 lt!2115552))))

(declare-fun lt!2115548 () Unit!150634)

(assert (=> b!5129165 (= lt!2115548 (forallContained!4598 (exprs!4194 lt!2115551) lambda!252966 lt!2115552))))

(declare-fun lt!2115545 () Unit!150634)

(declare-fun lemmaNullableThenNotLostCause!19 (Regex!14310) Unit!150634)

(assert (=> b!5129165 (= lt!2115545 (lemmaNullableThenNotLostCause!19 lt!2115552))))

(declare-fun res!2184061 () Bool)

(declare-fun lostCause!1252 (Regex!14310) Bool)

(assert (=> b!5129165 (= res!2184061 (not (lostCause!1252 lt!2115552)))))

(assert (=> b!5129165 (=> (not res!2184061) (not e!3198877))))

(assert (=> b!5129165 e!3198877))

(declare-fun b!5129166 () Bool)

(declare-fun res!2184068 () Bool)

(assert (=> b!5129166 (=> res!2184068 e!3198876)))

(declare-fun lostCauseZipper!1158 ((Set Context!7388)) Bool)

(assert (=> b!5129166 (= res!2184068 (not (lostCauseZipper!1158 z!1113)))))

(declare-fun res!2184063 () Bool)

(assert (=> start!542030 (=> (not res!2184063) (not e!3198880))))

(declare-fun nullableZipper!1095 ((Set Context!7388)) Bool)

(assert (=> start!542030 (= res!2184063 (nullableZipper!1095 z!1113))))

(assert (=> start!542030 e!3198880))

(declare-fun condSetEmpty!30941 () Bool)

(assert (=> start!542030 (= condSetEmpty!30941 (= z!1113 (as set.empty (Set Context!7388))))))

(assert (=> start!542030 setRes!30941))

(declare-fun b!5129167 () Bool)

(declare-fun e!3198874 () Bool)

(assert (=> b!5129167 (= e!3198880 e!3198874)))

(declare-fun res!2184066 () Bool)

(assert (=> b!5129167 (=> (not res!2184066) (not e!3198874))))

(declare-fun nullableContext!29 (Context!7388) Bool)

(assert (=> b!5129167 (= res!2184066 (nullableContext!29 lt!2115551))))

(declare-fun getWitness!744 ((Set Context!7388) Int) Context!7388)

(assert (=> b!5129167 (= lt!2115551 (getWitness!744 z!1113 lambda!252965))))

(assert (=> b!5129168 (= e!3198874 (not e!3198875))))

(declare-fun res!2184064 () Bool)

(assert (=> b!5129168 (=> res!2184064 e!3198875)))

(assert (=> b!5129168 (= res!2184064 (not (set.member lt!2115551 z!1113)))))

(assert (=> b!5129168 (forall!13703 (exprs!4194 lt!2115551) lambda!252966)))

(declare-fun lt!2115547 () Unit!150634)

(declare-fun lemmaContextForallValidExprs!25 (Context!7388 List!59547) Unit!150634)

(assert (=> b!5129168 (= lt!2115547 (lemmaContextForallValidExprs!25 lt!2115551 (exprs!4194 lt!2115551)))))

(assert (= (and start!542030 res!2184063) b!5129161))

(assert (= (and b!5129161 res!2184067) b!5129167))

(assert (= (and b!5129167 res!2184066) b!5129168))

(assert (= (and b!5129168 (not res!2184064)) b!5129158))

(assert (= (and b!5129158 (not res!2184065)) b!5129162))

(assert (= (and b!5129162 c!882078) b!5129165))

(assert (= (and b!5129162 (not c!882078)) b!5129163))

(assert (= (and b!5129165 res!2184061) b!5129164))

(assert (= (and b!5129162 (not res!2184062)) b!5129166))

(assert (= (and b!5129166 (not res!2184068)) b!5129159))

(assert (= (and start!542030 condSetEmpty!30941) setIsEmpty!30941))

(assert (= (and start!542030 (not condSetEmpty!30941)) setNonEmpty!30941))

(assert (= setNonEmpty!30941 b!5129160))

(declare-fun m!6193650 () Bool)

(assert (=> b!5129159 m!6193650))

(declare-fun m!6193652 () Bool)

(assert (=> start!542030 m!6193652))

(declare-fun m!6193654 () Bool)

(assert (=> b!5129166 m!6193654))

(declare-fun m!6193656 () Bool)

(assert (=> b!5129167 m!6193656))

(declare-fun m!6193658 () Bool)

(assert (=> b!5129167 m!6193658))

(declare-fun m!6193660 () Bool)

(assert (=> b!5129162 m!6193660))

(declare-fun m!6193662 () Bool)

(assert (=> b!5129165 m!6193662))

(declare-fun m!6193664 () Bool)

(assert (=> b!5129165 m!6193664))

(declare-fun m!6193666 () Bool)

(assert (=> b!5129165 m!6193666))

(declare-fun m!6193668 () Bool)

(assert (=> b!5129165 m!6193668))

(declare-fun m!6193670 () Bool)

(assert (=> b!5129165 m!6193670))

(declare-fun m!6193672 () Bool)

(assert (=> b!5129168 m!6193672))

(declare-fun m!6193674 () Bool)

(assert (=> b!5129168 m!6193674))

(declare-fun m!6193676 () Bool)

(assert (=> b!5129168 m!6193676))

(declare-fun m!6193678 () Bool)

(assert (=> b!5129161 m!6193678))

(declare-fun m!6193680 () Bool)

(assert (=> setNonEmpty!30941 m!6193680))

(declare-fun m!6193682 () Bool)

(assert (=> b!5129158 m!6193682))

(push 1)

(assert (not b!5129165))

(assert (not b!5129162))

(assert (not setNonEmpty!30941))

(assert (not b!5129166))

(assert (not b!5129161))

(assert (not b!5129158))

(assert (not start!542030))

(assert (not b!5129167))

(assert (not b!5129160))

(assert (not b!5129159))

(assert (not b!5129168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1659329 () Bool)

(declare-fun lt!2115579 () Bool)

(declare-datatypes ((List!59549 0))(
  ( (Nil!59425) (Cons!59425 (h!65873 Context!7388) (t!372576 List!59549)) )
))
(declare-fun exists!1588 (List!59549 Int) Bool)

(declare-fun toList!8304 ((Set Context!7388)) List!59549)

(assert (=> d!1659329 (= lt!2115579 (exists!1588 (toList!8304 z!1113) lambda!252965))))

(declare-fun choose!37811 ((Set Context!7388) Int) Bool)

(assert (=> d!1659329 (= lt!2115579 (choose!37811 z!1113 lambda!252965))))

(assert (=> d!1659329 (= (exists!1586 z!1113 lambda!252965) lt!2115579)))

(declare-fun bs!1195221 () Bool)

(assert (= bs!1195221 d!1659329))

(declare-fun m!6193718 () Bool)

(assert (=> bs!1195221 m!6193718))

(assert (=> bs!1195221 m!6193718))

(declare-fun m!6193720 () Bool)

(assert (=> bs!1195221 m!6193720))

(declare-fun m!6193722 () Bool)

(assert (=> bs!1195221 m!6193722))

(assert (=> b!5129161 d!1659329))

(declare-fun bs!1195222 () Bool)

(declare-fun d!1659331 () Bool)

(assert (= bs!1195222 (and d!1659331 b!5129161)))

(declare-fun lambda!252993 () Int)

(assert (=> bs!1195222 (= lambda!252993 lambda!252965)))

(declare-fun bs!1195223 () Bool)

(assert (= bs!1195223 (and d!1659331 b!5129159)))

(assert (=> bs!1195223 (not (= lambda!252993 lambda!252969))))

(assert (=> d!1659331 (= (nullableZipper!1095 z!1113) (exists!1586 z!1113 lambda!252993))))

(declare-fun bs!1195224 () Bool)

(assert (= bs!1195224 d!1659331))

(declare-fun m!6193724 () Bool)

(assert (=> bs!1195224 m!6193724))

(assert (=> start!542030 d!1659331))

(declare-fun d!1659333 () Bool)

(declare-fun dynLambda!23658 (Int Regex!14310) Bool)

(assert (=> d!1659333 (dynLambda!23658 lambda!252967 lt!2115552)))

(declare-fun lt!2115582 () Unit!150634)

(declare-fun choose!37812 (List!59547 Int Regex!14310) Unit!150634)

(assert (=> d!1659333 (= lt!2115582 (choose!37812 (exprs!4194 lt!2115551) lambda!252967 lt!2115552))))

(declare-fun e!3198904 () Bool)

(assert (=> d!1659333 e!3198904))

(declare-fun res!2184095 () Bool)

(assert (=> d!1659333 (=> (not res!2184095) (not e!3198904))))

(assert (=> d!1659333 (= res!2184095 (forall!13703 (exprs!4194 lt!2115551) lambda!252967))))

(assert (=> d!1659333 (= (forallContained!4598 (exprs!4194 lt!2115551) lambda!252967 lt!2115552) lt!2115582)))

(declare-fun b!5129204 () Bool)

(declare-fun contains!19623 (List!59547 Regex!14310) Bool)

(assert (=> b!5129204 (= e!3198904 (contains!19623 (exprs!4194 lt!2115551) lt!2115552))))

(assert (= (and d!1659333 res!2184095) b!5129204))

(declare-fun b_lambda!199357 () Bool)

(assert (=> (not b_lambda!199357) (not d!1659333)))

(declare-fun m!6193726 () Bool)

(assert (=> d!1659333 m!6193726))

(declare-fun m!6193728 () Bool)

(assert (=> d!1659333 m!6193728))

(assert (=> d!1659333 m!6193682))

(declare-fun m!6193730 () Bool)

(assert (=> b!5129204 m!6193730))

(assert (=> b!5129165 d!1659333))

(declare-fun d!1659335 () Bool)

(assert (=> d!1659335 (not (lostCause!1252 lt!2115552))))

(declare-fun lt!2115585 () Unit!150634)

(declare-fun choose!37813 (Regex!14310) Unit!150634)

(assert (=> d!1659335 (= lt!2115585 (choose!37813 lt!2115552))))

(declare-fun validRegex!6232 (Regex!14310) Bool)

(assert (=> d!1659335 (validRegex!6232 lt!2115552)))

(assert (=> d!1659335 (= (lemmaNullableThenNotLostCause!19 lt!2115552) lt!2115585)))

(declare-fun bs!1195225 () Bool)

(assert (= bs!1195225 d!1659335))

(assert (=> bs!1195225 m!6193664))

(declare-fun m!6193732 () Bool)

(assert (=> bs!1195225 m!6193732))

(declare-fun m!6193734 () Bool)

(assert (=> bs!1195225 m!6193734))

(assert (=> b!5129165 d!1659335))

(declare-fun b!5129217 () Bool)

(declare-fun lt!2115590 () Unit!150634)

(declare-fun Unit!150642 () Unit!150634)

(assert (=> b!5129217 (= lt!2115590 Unit!150642)))

(assert (=> b!5129217 false))

(declare-fun e!3198913 () Regex!14310)

(declare-fun head!10975 (List!59547) Regex!14310)

(assert (=> b!5129217 (= e!3198913 (head!10975 (exprs!4194 lt!2115551)))))

(declare-fun b!5129218 () Bool)

(declare-fun e!3198915 () Bool)

(declare-fun lt!2115591 () Regex!14310)

(assert (=> b!5129218 (= e!3198915 (contains!19623 (exprs!4194 lt!2115551) lt!2115591))))

(declare-fun d!1659337 () Bool)

(assert (=> d!1659337 e!3198915))

(declare-fun res!2184101 () Bool)

(assert (=> d!1659337 (=> (not res!2184101) (not e!3198915))))

(assert (=> d!1659337 (= res!2184101 (dynLambda!23658 lambda!252968 lt!2115591))))

(declare-fun e!3198916 () Regex!14310)

(assert (=> d!1659337 (= lt!2115591 e!3198916)))

(declare-fun c!882097 () Bool)

(declare-fun e!3198914 () Bool)

(assert (=> d!1659337 (= c!882097 e!3198914)))

(declare-fun res!2184100 () Bool)

(assert (=> d!1659337 (=> (not res!2184100) (not e!3198914))))

(assert (=> d!1659337 (= res!2184100 (is-Cons!59423 (exprs!4194 lt!2115551)))))

(declare-fun exists!1589 (List!59547 Int) Bool)

(assert (=> d!1659337 (exists!1589 (exprs!4194 lt!2115551) lambda!252968)))

(assert (=> d!1659337 (= (getWitness!743 (exprs!4194 lt!2115551) lambda!252968) lt!2115591)))

(declare-fun b!5129219 () Bool)

(assert (=> b!5129219 (= e!3198916 (h!65871 (exprs!4194 lt!2115551)))))

(declare-fun b!5129220 () Bool)

(assert (=> b!5129220 (= e!3198913 (getWitness!743 (t!372574 (exprs!4194 lt!2115551)) lambda!252968))))

(declare-fun b!5129221 () Bool)

(assert (=> b!5129221 (= e!3198916 e!3198913)))

(declare-fun c!882096 () Bool)

(assert (=> b!5129221 (= c!882096 (is-Cons!59423 (exprs!4194 lt!2115551)))))

(declare-fun b!5129222 () Bool)

(assert (=> b!5129222 (= e!3198914 (dynLambda!23658 lambda!252968 (h!65871 (exprs!4194 lt!2115551))))))

(assert (= (and d!1659337 res!2184100) b!5129222))

(assert (= (and d!1659337 c!882097) b!5129219))

(assert (= (and d!1659337 (not c!882097)) b!5129221))

(assert (= (and b!5129221 c!882096) b!5129220))

(assert (= (and b!5129221 (not c!882096)) b!5129217))

(assert (= (and d!1659337 res!2184101) b!5129218))

(declare-fun b_lambda!199359 () Bool)

(assert (=> (not b_lambda!199359) (not d!1659337)))

(declare-fun b_lambda!199361 () Bool)

(assert (=> (not b_lambda!199361) (not b!5129222)))

(declare-fun m!6193736 () Bool)

(assert (=> d!1659337 m!6193736))

(declare-fun m!6193738 () Bool)

(assert (=> d!1659337 m!6193738))

(declare-fun m!6193740 () Bool)

(assert (=> b!5129218 m!6193740))

(declare-fun m!6193742 () Bool)

(assert (=> b!5129222 m!6193742))

(declare-fun m!6193744 () Bool)

(assert (=> b!5129217 m!6193744))

(declare-fun m!6193746 () Bool)

(assert (=> b!5129220 m!6193746))

(assert (=> b!5129165 d!1659337))

(declare-fun d!1659341 () Bool)

(assert (=> d!1659341 (dynLambda!23658 lambda!252966 lt!2115552)))

(declare-fun lt!2115592 () Unit!150634)

(assert (=> d!1659341 (= lt!2115592 (choose!37812 (exprs!4194 lt!2115551) lambda!252966 lt!2115552))))

(declare-fun e!3198917 () Bool)

(assert (=> d!1659341 e!3198917))

(declare-fun res!2184102 () Bool)

(assert (=> d!1659341 (=> (not res!2184102) (not e!3198917))))

(assert (=> d!1659341 (= res!2184102 (forall!13703 (exprs!4194 lt!2115551) lambda!252966))))

(assert (=> d!1659341 (= (forallContained!4598 (exprs!4194 lt!2115551) lambda!252966 lt!2115552) lt!2115592)))

(declare-fun b!5129223 () Bool)

(assert (=> b!5129223 (= e!3198917 (contains!19623 (exprs!4194 lt!2115551) lt!2115552))))

(assert (= (and d!1659341 res!2184102) b!5129223))

(declare-fun b_lambda!199363 () Bool)

(assert (=> (not b_lambda!199363) (not d!1659341)))

(declare-fun m!6193748 () Bool)

(assert (=> d!1659341 m!6193748))

(declare-fun m!6193750 () Bool)

(assert (=> d!1659341 m!6193750))

(assert (=> d!1659341 m!6193674))

(assert (=> b!5129223 m!6193730))

(assert (=> b!5129165 d!1659341))

(declare-fun d!1659343 () Bool)

(declare-fun lostCauseFct!309 (Regex!14310) Bool)

(assert (=> d!1659343 (= (lostCause!1252 lt!2115552) (lostCauseFct!309 lt!2115552))))

(declare-fun bs!1195226 () Bool)

(assert (= bs!1195226 d!1659343))

(declare-fun m!6193752 () Bool)

(assert (=> bs!1195226 m!6193752))

(assert (=> b!5129165 d!1659343))

(declare-fun bs!1195231 () Bool)

(declare-fun d!1659345 () Bool)

(assert (= bs!1195231 (and d!1659345 b!5129161)))

(declare-fun lambda!253009 () Int)

(assert (=> bs!1195231 (not (= lambda!253009 lambda!252965))))

(declare-fun bs!1195232 () Bool)

(assert (= bs!1195232 (and d!1659345 b!5129159)))

(assert (=> bs!1195232 (= lambda!253009 lambda!252969)))

(declare-fun bs!1195233 () Bool)

(assert (= bs!1195233 (and d!1659345 d!1659331)))

(assert (=> bs!1195233 (not (= lambda!253009 lambda!252993))))

(declare-fun bs!1195234 () Bool)

(declare-fun b!5129230 () Bool)

(assert (= bs!1195234 (and b!5129230 b!5129161)))

(declare-fun lambda!253010 () Int)

(assert (=> bs!1195234 (not (= lambda!253010 lambda!252965))))

(declare-fun bs!1195235 () Bool)

(assert (= bs!1195235 (and b!5129230 b!5129159)))

(assert (=> bs!1195235 (not (= lambda!253010 lambda!252969))))

(declare-fun bs!1195236 () Bool)

(assert (= bs!1195236 (and b!5129230 d!1659331)))

(assert (=> bs!1195236 (not (= lambda!253010 lambda!252993))))

(declare-fun bs!1195237 () Bool)

(assert (= bs!1195237 (and b!5129230 d!1659345)))

(assert (=> bs!1195237 (not (= lambda!253010 lambda!253009))))

(declare-fun bs!1195238 () Bool)

(declare-fun b!5129231 () Bool)

(assert (= bs!1195238 (and b!5129231 d!1659331)))

(declare-fun lambda!253011 () Int)

(assert (=> bs!1195238 (not (= lambda!253011 lambda!252993))))

(declare-fun bs!1195239 () Bool)

(assert (= bs!1195239 (and b!5129231 b!5129230)))

(assert (=> bs!1195239 (= lambda!253011 lambda!253010)))

(declare-fun bs!1195240 () Bool)

(assert (= bs!1195240 (and b!5129231 d!1659345)))

(assert (=> bs!1195240 (not (= lambda!253011 lambda!253009))))

(declare-fun bs!1195241 () Bool)

(assert (= bs!1195241 (and b!5129231 b!5129159)))

(assert (=> bs!1195241 (not (= lambda!253011 lambda!252969))))

(declare-fun bs!1195242 () Bool)

(assert (= bs!1195242 (and b!5129231 b!5129161)))

(assert (=> bs!1195242 (not (= lambda!253011 lambda!252965))))

(declare-fun e!3198926 () Unit!150634)

(declare-fun Unit!150643 () Unit!150634)

(assert (=> b!5129230 (= e!3198926 Unit!150643)))

(declare-fun lt!2115620 () List!59549)

(declare-fun call!356989 () List!59549)

(assert (=> b!5129230 (= lt!2115620 call!356989)))

(declare-fun lt!2115614 () Unit!150634)

(declare-fun lemmaNotForallThenExists!362 (List!59549 Int) Unit!150634)

(assert (=> b!5129230 (= lt!2115614 (lemmaNotForallThenExists!362 lt!2115620 lambda!253009))))

(declare-fun call!356988 () Bool)

(assert (=> b!5129230 call!356988))

(declare-fun lt!2115616 () Unit!150634)

(assert (=> b!5129230 (= lt!2115616 lt!2115614)))

(declare-fun Unit!150644 () Unit!150634)

(assert (=> b!5129231 (= e!3198926 Unit!150644)))

(declare-fun lt!2115618 () List!59549)

(assert (=> b!5129231 (= lt!2115618 call!356989)))

(declare-fun lt!2115619 () Unit!150634)

(declare-fun lemmaForallThenNotExists!345 (List!59549 Int) Unit!150634)

(assert (=> b!5129231 (= lt!2115619 (lemmaForallThenNotExists!345 lt!2115618 lambda!253009))))

(assert (=> b!5129231 (not call!356988)))

(declare-fun lt!2115615 () Unit!150634)

(assert (=> b!5129231 (= lt!2115615 lt!2115619)))

(declare-fun lt!2115621 () Bool)

(declare-datatypes ((List!59550 0))(
  ( (Nil!59426) (Cons!59426 (h!65874 C!28886) (t!372577 List!59550)) )
))
(declare-datatypes ((Option!14722 0))(
  ( (None!14721) (Some!14721 (v!50742 List!59550)) )
))
(declare-fun isEmpty!31983 (Option!14722) Bool)

(declare-fun getLanguageWitness!855 ((Set Context!7388)) Option!14722)

(assert (=> d!1659345 (= lt!2115621 (isEmpty!31983 (getLanguageWitness!855 z!1113)))))

(assert (=> d!1659345 (= lt!2115621 (forall!13704 z!1113 lambda!253009))))

(declare-fun lt!2115617 () Unit!150634)

(assert (=> d!1659345 (= lt!2115617 e!3198926)))

(declare-fun c!882110 () Bool)

(assert (=> d!1659345 (= c!882110 (not (forall!13704 z!1113 lambda!253009)))))

(assert (=> d!1659345 (= (lostCauseZipper!1158 z!1113) lt!2115621)))

(declare-fun bm!356983 () Bool)

(assert (=> bm!356983 (= call!356988 (exists!1588 (ite c!882110 lt!2115620 lt!2115618) (ite c!882110 lambda!253010 lambda!253011)))))

(declare-fun bm!356984 () Bool)

(assert (=> bm!356984 (= call!356989 (toList!8304 z!1113))))

(assert (= (and d!1659345 c!882110) b!5129230))

(assert (= (and d!1659345 (not c!882110)) b!5129231))

(assert (= (or b!5129230 b!5129231) bm!356983))

(assert (= (or b!5129230 b!5129231) bm!356984))

(declare-fun m!6193768 () Bool)

(assert (=> b!5129230 m!6193768))

(declare-fun m!6193770 () Bool)

(assert (=> bm!356983 m!6193770))

(assert (=> bm!356984 m!6193718))

(declare-fun m!6193772 () Bool)

(assert (=> b!5129231 m!6193772))

(declare-fun m!6193774 () Bool)

(assert (=> d!1659345 m!6193774))

(assert (=> d!1659345 m!6193774))

(declare-fun m!6193776 () Bool)

(assert (=> d!1659345 m!6193776))

(declare-fun m!6193778 () Bool)

(assert (=> d!1659345 m!6193778))

(assert (=> d!1659345 m!6193778))

(assert (=> b!5129166 d!1659345))

(declare-fun d!1659353 () Bool)

(declare-fun res!2184110 () Bool)

(declare-fun e!3198932 () Bool)

(assert (=> d!1659353 (=> res!2184110 e!3198932)))

(assert (=> d!1659353 (= res!2184110 (is-Nil!59423 (exprs!4194 lt!2115551)))))

(assert (=> d!1659353 (= (forall!13703 (exprs!4194 lt!2115551) lambda!252967) e!3198932)))

(declare-fun b!5129237 () Bool)

(declare-fun e!3198933 () Bool)

(assert (=> b!5129237 (= e!3198932 e!3198933)))

(declare-fun res!2184111 () Bool)

(assert (=> b!5129237 (=> (not res!2184111) (not e!3198933))))

(assert (=> b!5129237 (= res!2184111 (dynLambda!23658 lambda!252967 (h!65871 (exprs!4194 lt!2115551))))))

(declare-fun b!5129238 () Bool)

(assert (=> b!5129238 (= e!3198933 (forall!13703 (t!372574 (exprs!4194 lt!2115551)) lambda!252967))))

(assert (= (and d!1659353 (not res!2184110)) b!5129237))

(assert (= (and b!5129237 res!2184111) b!5129238))

(declare-fun b_lambda!199367 () Bool)

(assert (=> (not b_lambda!199367) (not b!5129237)))

(declare-fun m!6193780 () Bool)

(assert (=> b!5129237 m!6193780))

(declare-fun m!6193782 () Bool)

(assert (=> b!5129238 m!6193782))

(assert (=> b!5129158 d!1659353))

(declare-fun bs!1195243 () Bool)

(declare-fun d!1659355 () Bool)

(assert (= bs!1195243 (and d!1659355 b!5129168)))

(declare-fun lambda!253014 () Int)

(assert (=> bs!1195243 (= lambda!253014 lambda!252966)))

(declare-fun bs!1195244 () Bool)

(assert (= bs!1195244 (and d!1659355 b!5129158)))

(assert (=> bs!1195244 (not (= lambda!253014 lambda!252967))))

(declare-fun bs!1195245 () Bool)

(assert (= bs!1195245 (and d!1659355 b!5129165)))

(assert (=> bs!1195245 (not (= lambda!253014 lambda!252968))))

(assert (=> d!1659355 (= (inv!78957 setElem!30941) (forall!13703 (exprs!4194 setElem!30941) lambda!253014))))

(declare-fun bs!1195246 () Bool)

(assert (= bs!1195246 d!1659355))

(declare-fun m!6193784 () Bool)

(assert (=> bs!1195246 m!6193784))

(assert (=> setNonEmpty!30941 d!1659355))

(declare-fun bs!1195247 () Bool)

(declare-fun d!1659357 () Bool)

(assert (= bs!1195247 (and d!1659357 b!5129168)))

(declare-fun lambda!253017 () Int)

(assert (=> bs!1195247 (not (= lambda!253017 lambda!252966))))

(declare-fun bs!1195248 () Bool)

(assert (= bs!1195248 (and d!1659357 b!5129158)))

(assert (=> bs!1195248 (not (= lambda!253017 lambda!252967))))

(declare-fun bs!1195249 () Bool)

(assert (= bs!1195249 (and d!1659357 b!5129165)))

(assert (=> bs!1195249 (= lambda!253017 lambda!252968)))

(declare-fun bs!1195250 () Bool)

(assert (= bs!1195250 (and d!1659357 d!1659355)))

(assert (=> bs!1195250 (not (= lambda!253017 lambda!253014))))

(assert (=> d!1659357 (= (lostCause!1251 lt!2115551) (exists!1589 (exprs!4194 lt!2115551) lambda!253017))))

(declare-fun bs!1195251 () Bool)

(assert (= bs!1195251 d!1659357))

(declare-fun m!6193786 () Bool)

(assert (=> bs!1195251 m!6193786))

(assert (=> b!5129162 d!1659357))

(declare-fun bs!1195252 () Bool)

(declare-fun d!1659359 () Bool)

(assert (= bs!1195252 (and d!1659359 b!5129165)))

(declare-fun lambda!253020 () Int)

(assert (=> bs!1195252 (not (= lambda!253020 lambda!252968))))

(declare-fun bs!1195253 () Bool)

(assert (= bs!1195253 (and d!1659359 b!5129158)))

(assert (=> bs!1195253 (= lambda!253020 lambda!252967)))

(declare-fun bs!1195254 () Bool)

(assert (= bs!1195254 (and d!1659359 d!1659355)))

(assert (=> bs!1195254 (not (= lambda!253020 lambda!253014))))

(declare-fun bs!1195255 () Bool)

(assert (= bs!1195255 (and d!1659359 b!5129168)))

(assert (=> bs!1195255 (not (= lambda!253020 lambda!252966))))

(declare-fun bs!1195256 () Bool)

(assert (= bs!1195256 (and d!1659359 d!1659357)))

(assert (=> bs!1195256 (not (= lambda!253020 lambda!253017))))

(assert (=> d!1659359 (= (nullableContext!29 lt!2115551) (forall!13703 (exprs!4194 lt!2115551) lambda!253020))))

(declare-fun bs!1195257 () Bool)

(assert (= bs!1195257 d!1659359))

(declare-fun m!6193788 () Bool)

(assert (=> bs!1195257 m!6193788))

(assert (=> b!5129167 d!1659359))

(declare-fun d!1659361 () Bool)

(declare-fun e!3198944 () Bool)

(assert (=> d!1659361 e!3198944))

(declare-fun res!2184118 () Bool)

(assert (=> d!1659361 (=> (not res!2184118) (not e!3198944))))

(declare-fun lt!2115629 () Context!7388)

(declare-fun dynLambda!23659 (Int Context!7388) Bool)

(assert (=> d!1659361 (= res!2184118 (dynLambda!23659 lambda!252965 lt!2115629))))

(declare-fun getWitness!747 (List!59549 Int) Context!7388)

(assert (=> d!1659361 (= lt!2115629 (getWitness!747 (toList!8304 z!1113) lambda!252965))))

(assert (=> d!1659361 (exists!1586 z!1113 lambda!252965)))

(assert (=> d!1659361 (= (getWitness!744 z!1113 lambda!252965) lt!2115629)))

(declare-fun b!5129253 () Bool)

(assert (=> b!5129253 (= e!3198944 (set.member lt!2115629 z!1113))))

(assert (= (and d!1659361 res!2184118) b!5129253))

(declare-fun b_lambda!199369 () Bool)

(assert (=> (not b_lambda!199369) (not d!1659361)))

(declare-fun m!6193790 () Bool)

(assert (=> d!1659361 m!6193790))

(assert (=> d!1659361 m!6193718))

(assert (=> d!1659361 m!6193718))

(declare-fun m!6193792 () Bool)

(assert (=> d!1659361 m!6193792))

(assert (=> d!1659361 m!6193678))

(declare-fun m!6193794 () Bool)

(assert (=> b!5129253 m!6193794))

(assert (=> b!5129167 d!1659361))

(declare-fun d!1659363 () Bool)

(declare-fun res!2184119 () Bool)

(declare-fun e!3198945 () Bool)

(assert (=> d!1659363 (=> res!2184119 e!3198945)))

(assert (=> d!1659363 (= res!2184119 (is-Nil!59423 (exprs!4194 lt!2115551)))))

(assert (=> d!1659363 (= (forall!13703 (exprs!4194 lt!2115551) lambda!252966) e!3198945)))

(declare-fun b!5129254 () Bool)

(declare-fun e!3198946 () Bool)

(assert (=> b!5129254 (= e!3198945 e!3198946)))

(declare-fun res!2184120 () Bool)

(assert (=> b!5129254 (=> (not res!2184120) (not e!3198946))))

(assert (=> b!5129254 (= res!2184120 (dynLambda!23658 lambda!252966 (h!65871 (exprs!4194 lt!2115551))))))

(declare-fun b!5129255 () Bool)

(assert (=> b!5129255 (= e!3198946 (forall!13703 (t!372574 (exprs!4194 lt!2115551)) lambda!252966))))

(assert (= (and d!1659363 (not res!2184119)) b!5129254))

(assert (= (and b!5129254 res!2184120) b!5129255))

(declare-fun b_lambda!199371 () Bool)

(assert (=> (not b_lambda!199371) (not b!5129254)))

(declare-fun m!6193796 () Bool)

(assert (=> b!5129254 m!6193796))

(declare-fun m!6193798 () Bool)

(assert (=> b!5129255 m!6193798))

(assert (=> b!5129168 d!1659363))

(declare-fun bs!1195258 () Bool)

(declare-fun d!1659365 () Bool)

(assert (= bs!1195258 (and d!1659365 b!5129165)))

(declare-fun lambda!253023 () Int)

(assert (=> bs!1195258 (not (= lambda!253023 lambda!252968))))

(declare-fun bs!1195259 () Bool)

(assert (= bs!1195259 (and d!1659365 b!5129158)))

(assert (=> bs!1195259 (not (= lambda!253023 lambda!252967))))

(declare-fun bs!1195260 () Bool)

(assert (= bs!1195260 (and d!1659365 d!1659355)))

(assert (=> bs!1195260 (= lambda!253023 lambda!253014)))

(declare-fun bs!1195261 () Bool)

(assert (= bs!1195261 (and d!1659365 b!5129168)))

(assert (=> bs!1195261 (= lambda!253023 lambda!252966)))

(declare-fun bs!1195262 () Bool)

(assert (= bs!1195262 (and d!1659365 d!1659357)))

(assert (=> bs!1195262 (not (= lambda!253023 lambda!253017))))

(declare-fun bs!1195263 () Bool)

(assert (= bs!1195263 (and d!1659365 d!1659359)))

(assert (=> bs!1195263 (not (= lambda!253023 lambda!253020))))

(assert (=> d!1659365 (forall!13703 (exprs!4194 lt!2115551) lambda!253023)))

(declare-fun lt!2115634 () Unit!150634)

(declare-fun choose!37814 (Context!7388 List!59547) Unit!150634)

(assert (=> d!1659365 (= lt!2115634 (choose!37814 lt!2115551 (exprs!4194 lt!2115551)))))

(assert (=> d!1659365 (= (exprs!4194 lt!2115551) (exprs!4194 lt!2115551))))

(assert (=> d!1659365 (= (lemmaContextForallValidExprs!25 lt!2115551 (exprs!4194 lt!2115551)) lt!2115634)))

(declare-fun bs!1195264 () Bool)

(assert (= bs!1195264 d!1659365))

(declare-fun m!6193812 () Bool)

(assert (=> bs!1195264 m!6193812))

(declare-fun m!6193814 () Bool)

(assert (=> bs!1195264 m!6193814))

(assert (=> b!5129168 d!1659365))

(declare-fun d!1659369 () Bool)

(declare-fun lt!2115637 () Bool)

(declare-fun forall!13707 (List!59549 Int) Bool)

(assert (=> d!1659369 (= lt!2115637 (forall!13707 (toList!8304 z!1113) lambda!252969))))

(declare-fun choose!37815 ((Set Context!7388) Int) Bool)

(assert (=> d!1659369 (= lt!2115637 (choose!37815 z!1113 lambda!252969))))

(assert (=> d!1659369 (= (forall!13704 z!1113 lambda!252969) lt!2115637)))

(declare-fun bs!1195265 () Bool)

(assert (= bs!1195265 d!1659369))

(assert (=> bs!1195265 m!6193718))

(assert (=> bs!1195265 m!6193718))

(declare-fun m!6193816 () Bool)

(assert (=> bs!1195265 m!6193816))

(declare-fun m!6193818 () Bool)

(assert (=> bs!1195265 m!6193818))

(assert (=> b!5129159 d!1659369))

(declare-fun condSetEmpty!30947 () Bool)

(assert (=> setNonEmpty!30941 (= condSetEmpty!30947 (= setRest!30941 (as set.empty (Set Context!7388))))))

(declare-fun setRes!30947 () Bool)

(assert (=> setNonEmpty!30941 (= tp!1431030 setRes!30947)))

(declare-fun setIsEmpty!30947 () Bool)

(assert (=> setIsEmpty!30947 setRes!30947))

(declare-fun e!3198953 () Bool)

(declare-fun setElem!30947 () Context!7388)

(declare-fun tp!1431042 () Bool)

(declare-fun setNonEmpty!30947 () Bool)

(assert (=> setNonEmpty!30947 (= setRes!30947 (and tp!1431042 (inv!78957 setElem!30947) e!3198953))))

(declare-fun setRest!30947 () (Set Context!7388))

(assert (=> setNonEmpty!30947 (= setRest!30941 (set.union (set.insert setElem!30947 (as set.empty (Set Context!7388))) setRest!30947))))

(declare-fun b!5129266 () Bool)

(declare-fun tp!1431043 () Bool)

(assert (=> b!5129266 (= e!3198953 tp!1431043)))

(assert (= (and setNonEmpty!30941 condSetEmpty!30947) setIsEmpty!30947))

(assert (= (and setNonEmpty!30941 (not condSetEmpty!30947)) setNonEmpty!30947))

(assert (= setNonEmpty!30947 b!5129266))

(declare-fun m!6193822 () Bool)

(assert (=> setNonEmpty!30947 m!6193822))

(declare-fun b!5129271 () Bool)

(declare-fun e!3198956 () Bool)

(declare-fun tp!1431048 () Bool)

(declare-fun tp!1431049 () Bool)

(assert (=> b!5129271 (= e!3198956 (and tp!1431048 tp!1431049))))

(assert (=> b!5129160 (= tp!1431031 e!3198956)))

(assert (= (and b!5129160 (is-Cons!59423 (exprs!4194 setElem!30941))) b!5129271))

(declare-fun b_lambda!199377 () Bool)

(assert (= b_lambda!199369 (or b!5129161 b_lambda!199377)))

(declare-fun bs!1195267 () Bool)

(declare-fun d!1659373 () Bool)

(assert (= bs!1195267 (and d!1659373 b!5129161)))

(assert (=> bs!1195267 (= (dynLambda!23659 lambda!252965 lt!2115629) (nullableContext!29 lt!2115629))))

(declare-fun m!6193824 () Bool)

(assert (=> bs!1195267 m!6193824))

(assert (=> d!1659361 d!1659373))

(declare-fun b_lambda!199379 () Bool)

(assert (= b_lambda!199371 (or b!5129168 b_lambda!199379)))

(declare-fun bs!1195268 () Bool)

(declare-fun d!1659375 () Bool)

(assert (= bs!1195268 (and d!1659375 b!5129168)))

(assert (=> bs!1195268 (= (dynLambda!23658 lambda!252966 (h!65871 (exprs!4194 lt!2115551))) (validRegex!6232 (h!65871 (exprs!4194 lt!2115551))))))

(declare-fun m!6193826 () Bool)

(assert (=> bs!1195268 m!6193826))

(assert (=> b!5129254 d!1659375))

(declare-fun b_lambda!199381 () Bool)

(assert (= b_lambda!199363 (or b!5129168 b_lambda!199381)))

(declare-fun bs!1195269 () Bool)

(declare-fun d!1659377 () Bool)

(assert (= bs!1195269 (and d!1659377 b!5129168)))

(assert (=> bs!1195269 (= (dynLambda!23658 lambda!252966 lt!2115552) (validRegex!6232 lt!2115552))))

(assert (=> bs!1195269 m!6193734))

(assert (=> d!1659341 d!1659377))

(declare-fun b_lambda!199383 () Bool)

(assert (= b_lambda!199357 (or b!5129158 b_lambda!199383)))

(declare-fun bs!1195270 () Bool)

(declare-fun d!1659379 () Bool)

(assert (= bs!1195270 (and d!1659379 b!5129158)))

(declare-fun nullable!4737 (Regex!14310) Bool)

(assert (=> bs!1195270 (= (dynLambda!23658 lambda!252967 lt!2115552) (nullable!4737 lt!2115552))))

(declare-fun m!6193828 () Bool)

(assert (=> bs!1195270 m!6193828))

(assert (=> d!1659333 d!1659379))

(declare-fun b_lambda!199385 () Bool)

(assert (= b_lambda!199361 (or b!5129165 b_lambda!199385)))

(declare-fun bs!1195271 () Bool)

(declare-fun d!1659381 () Bool)

(assert (= bs!1195271 (and d!1659381 b!5129165)))

(assert (=> bs!1195271 (= (dynLambda!23658 lambda!252968 (h!65871 (exprs!4194 lt!2115551))) (lostCause!1252 (h!65871 (exprs!4194 lt!2115551))))))

(declare-fun m!6193830 () Bool)

(assert (=> bs!1195271 m!6193830))

(assert (=> b!5129222 d!1659381))

(declare-fun b_lambda!199387 () Bool)

(assert (= b_lambda!199359 (or b!5129165 b_lambda!199387)))

(declare-fun bs!1195272 () Bool)

(declare-fun d!1659383 () Bool)

(assert (= bs!1195272 (and d!1659383 b!5129165)))

(assert (=> bs!1195272 (= (dynLambda!23658 lambda!252968 lt!2115591) (lostCause!1252 lt!2115591))))

(declare-fun m!6193832 () Bool)

(assert (=> bs!1195272 m!6193832))

(assert (=> d!1659337 d!1659383))

(declare-fun b_lambda!199389 () Bool)

(assert (= b_lambda!199367 (or b!5129158 b_lambda!199389)))

(declare-fun bs!1195273 () Bool)

(declare-fun d!1659385 () Bool)

(assert (= bs!1195273 (and d!1659385 b!5129158)))

(assert (=> bs!1195273 (= (dynLambda!23658 lambda!252967 (h!65871 (exprs!4194 lt!2115551))) (nullable!4737 (h!65871 (exprs!4194 lt!2115551))))))

(declare-fun m!6193834 () Bool)

(assert (=> bs!1195273 m!6193834))

(assert (=> b!5129237 d!1659385))

(push 1)

(assert (not d!1659365))

(assert (not d!1659343))

(assert (not b_lambda!199385))

(assert (not b!5129223))

(assert (not b!5129230))

(assert (not d!1659337))

(assert (not d!1659335))

(assert (not b!5129217))

(assert (not b_lambda!199377))

(assert (not b_lambda!199389))

(assert (not d!1659355))

(assert (not b!5129204))

(assert (not d!1659359))

(assert (not bm!356983))

(assert (not b!5129220))

(assert (not b_lambda!199383))

(assert (not d!1659329))

(assert (not d!1659341))

(assert (not bs!1195268))

(assert (not d!1659331))

(assert (not bm!356984))

(assert (not b!5129231))

(assert (not d!1659361))

(assert (not d!1659345))

(assert (not d!1659333))

(assert (not bs!1195272))

(assert (not d!1659357))

(assert (not setNonEmpty!30947))

(assert (not bs!1195271))

(assert (not b_lambda!199379))

(assert (not b!5129218))

(assert (not b_lambda!199381))

(assert (not b!5129271))

(assert (not bs!1195270))

(assert (not b!5129266))

(assert (not b_lambda!199387))

(assert (not b!5129238))

(assert (not bs!1195273))

(assert (not d!1659369))

(assert (not bs!1195267))

(assert (not bs!1195269))

(assert (not b!5129255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

