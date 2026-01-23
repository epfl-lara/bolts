; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542654 () Bool)

(assert start!542654)

(declare-fun b!5131646 () Bool)

(assert (=> b!5131646 true))

(declare-fun bs!1197764 () Bool)

(declare-fun b!5131648 () Bool)

(declare-fun b!5131647 () Bool)

(assert (= bs!1197764 (and b!5131648 b!5131647)))

(declare-fun lambda!254377 () Int)

(declare-fun lambda!254376 () Int)

(assert (=> bs!1197764 (not (= lambda!254377 lambda!254376))))

(declare-fun e!3200608 () Bool)

(declare-fun e!3200605 () Bool)

(assert (=> b!5131646 (= e!3200608 e!3200605)))

(declare-fun res!2185532 () Bool)

(assert (=> b!5131646 (=> (not res!2185532) (not e!3200605))))

(declare-fun lambda!254375 () Int)

(declare-datatypes ((C!28966 0))(
  ( (C!28967 (val!24135 Int)) )
))
(declare-datatypes ((Regex!14350 0))(
  ( (ElementMatch!14350 (c!882897 C!28966)) (Concat!23195 (regOne!29212 Regex!14350) (regTwo!29212 Regex!14350)) (EmptyExpr!14350) (Star!14350 (reg!14679 Regex!14350)) (EmptyLang!14350) (Union!14350 (regOne!29213 Regex!14350) (regTwo!29213 Regex!14350)) )
))
(declare-datatypes ((List!59633 0))(
  ( (Nil!59509) (Cons!59509 (h!65957 Regex!14350) (t!372660 List!59633)) )
))
(declare-datatypes ((Context!7468 0))(
  ( (Context!7469 (exprs!4234 List!59633)) )
))
(declare-fun lt!2117236 () (Set Context!7468))

(declare-fun z!1054 () (Set Context!7468))

(declare-fun flatMap!401 ((Set Context!7468) Int) (Set Context!7468))

(assert (=> b!5131646 (= res!2185532 (= lt!2117236 (flatMap!401 z!1054 lambda!254375)))))

(declare-fun a!1233 () C!28966)

(declare-fun derivationStepZipper!905 ((Set Context!7468) C!28966) (Set Context!7468))

(assert (=> b!5131646 (= lt!2117236 (derivationStepZipper!905 z!1054 a!1233))))

(declare-fun e!3200609 () Bool)

(assert (=> b!5131647 (= e!3200605 e!3200609)))

(declare-fun res!2185534 () Bool)

(assert (=> b!5131647 (=> (not res!2185534) (not e!3200609))))

(declare-fun lt!2117239 () Bool)

(declare-fun forall!13779 ((Set Context!7468) Int) Bool)

(assert (=> b!5131647 (= res!2185534 (= lt!2117239 (forall!13779 lt!2117236 lambda!254376)))))

(declare-fun lostCauseZipper!1194 ((Set Context!7468)) Bool)

(assert (=> b!5131647 (= lt!2117239 (lostCauseZipper!1194 lt!2117236))))

(declare-fun e!3200606 () Bool)

(assert (=> b!5131648 (= e!3200609 (not e!3200606))))

(declare-fun res!2185535 () Bool)

(assert (=> b!5131648 (=> res!2185535 e!3200606)))

(declare-fun exists!1655 ((Set Context!7468) Int) Bool)

(assert (=> b!5131648 (= res!2185535 (not (exists!1655 lt!2117236 lambda!254377)))))

(declare-datatypes ((List!59634 0))(
  ( (Nil!59510) (Cons!59510 (h!65958 Context!7468) (t!372661 List!59634)) )
))
(declare-fun lt!2117237 () List!59634)

(declare-fun exists!1656 (List!59634 Int) Bool)

(assert (=> b!5131648 (exists!1656 lt!2117237 lambda!254377)))

(declare-datatypes ((Unit!150783 0))(
  ( (Unit!150784) )
))
(declare-fun lt!2117238 () Unit!150783)

(declare-fun lemmaNotForallThenExists!383 (List!59634 Int) Unit!150783)

(assert (=> b!5131648 (= lt!2117238 (lemmaNotForallThenExists!383 lt!2117237 lambda!254376))))

(declare-fun toList!8335 ((Set Context!7468)) List!59634)

(assert (=> b!5131648 (= lt!2117237 (toList!8335 lt!2117236))))

(declare-fun tp!1431585 () Bool)

(declare-fun setRes!31129 () Bool)

(declare-fun setElem!31129 () Context!7468)

(declare-fun e!3200607 () Bool)

(declare-fun setNonEmpty!31129 () Bool)

(declare-fun inv!79057 (Context!7468) Bool)

(assert (=> setNonEmpty!31129 (= setRes!31129 (and tp!1431585 (inv!79057 setElem!31129) e!3200607))))

(declare-fun setRest!31129 () (Set Context!7468))

(assert (=> setNonEmpty!31129 (= z!1054 (set.union (set.insert setElem!31129 (as set.empty (Set Context!7468))) setRest!31129))))

(declare-fun b!5131649 () Bool)

(declare-fun tp!1431584 () Bool)

(assert (=> b!5131649 (= e!3200607 tp!1431584)))

(declare-fun res!2185531 () Bool)

(assert (=> start!542654 (=> (not res!2185531) (not e!3200608))))

(assert (=> start!542654 (= res!2185531 (lostCauseZipper!1194 z!1054))))

(assert (=> start!542654 e!3200608))

(declare-fun condSetEmpty!31129 () Bool)

(assert (=> start!542654 (= condSetEmpty!31129 (= z!1054 (as set.empty (Set Context!7468))))))

(assert (=> start!542654 setRes!31129))

(declare-fun tp_is_empty!37873 () Bool)

(assert (=> start!542654 tp_is_empty!37873))

(declare-fun b!5131650 () Bool)

(declare-fun getWitness!796 (List!59634 Int) Context!7468)

(assert (=> b!5131650 (= e!3200606 (set.member (getWitness!796 lt!2117237 lambda!254377) lt!2117236))))

(declare-fun b!5131651 () Bool)

(declare-fun res!2185529 () Bool)

(assert (=> b!5131651 (=> (not res!2185529) (not e!3200609))))

(assert (=> b!5131651 (= res!2185529 (not (forall!13779 lt!2117236 lambda!254376)))))

(declare-fun b!5131652 () Bool)

(declare-fun res!2185533 () Bool)

(assert (=> b!5131652 (=> (not res!2185533) (not e!3200609))))

(assert (=> b!5131652 (= res!2185533 (forall!13779 z!1054 lambda!254376))))

(declare-fun setIsEmpty!31129 () Bool)

(assert (=> setIsEmpty!31129 setRes!31129))

(declare-fun b!5131653 () Bool)

(declare-fun res!2185530 () Bool)

(assert (=> b!5131653 (=> (not res!2185530) (not e!3200609))))

(assert (=> b!5131653 (= res!2185530 (not lt!2117239))))

(assert (= (and start!542654 res!2185531) b!5131646))

(assert (= (and b!5131646 res!2185532) b!5131647))

(assert (= (and b!5131647 res!2185534) b!5131652))

(assert (= (and b!5131652 res!2185533) b!5131653))

(assert (= (and b!5131653 res!2185530) b!5131651))

(assert (= (and b!5131651 res!2185529) b!5131648))

(assert (= (and b!5131648 (not res!2185535)) b!5131650))

(assert (= (and start!542654 condSetEmpty!31129) setIsEmpty!31129))

(assert (= (and start!542654 (not condSetEmpty!31129)) setNonEmpty!31129))

(assert (= setNonEmpty!31129 b!5131649))

(declare-fun m!6197062 () Bool)

(assert (=> b!5131647 m!6197062))

(declare-fun m!6197064 () Bool)

(assert (=> b!5131647 m!6197064))

(declare-fun m!6197066 () Bool)

(assert (=> b!5131646 m!6197066))

(declare-fun m!6197068 () Bool)

(assert (=> b!5131646 m!6197068))

(declare-fun m!6197070 () Bool)

(assert (=> b!5131648 m!6197070))

(declare-fun m!6197072 () Bool)

(assert (=> b!5131648 m!6197072))

(declare-fun m!6197074 () Bool)

(assert (=> b!5131648 m!6197074))

(declare-fun m!6197076 () Bool)

(assert (=> b!5131648 m!6197076))

(assert (=> b!5131651 m!6197062))

(declare-fun m!6197078 () Bool)

(assert (=> b!5131652 m!6197078))

(declare-fun m!6197080 () Bool)

(assert (=> setNonEmpty!31129 m!6197080))

(declare-fun m!6197082 () Bool)

(assert (=> start!542654 m!6197082))

(declare-fun m!6197084 () Bool)

(assert (=> b!5131650 m!6197084))

(assert (=> b!5131650 m!6197084))

(declare-fun m!6197086 () Bool)

(assert (=> b!5131650 m!6197086))

(push 1)

(assert (not b!5131652))

(assert (not b!5131648))

(assert (not start!542654))

(assert tp_is_empty!37873)

(assert (not b!5131646))

(assert (not b!5131651))

(assert (not b!5131650))

(assert (not setNonEmpty!31129))

(assert (not b!5131647))

(assert (not b!5131649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5131694 () Bool)

(declare-fun e!3200638 () Context!7468)

(assert (=> b!5131694 (= e!3200638 (getWitness!796 (t!372661 lt!2117237) lambda!254377))))

(declare-fun b!5131695 () Bool)

(declare-fun e!3200637 () Context!7468)

(assert (=> b!5131695 (= e!3200637 e!3200638)))

(declare-fun c!882913 () Bool)

(assert (=> b!5131695 (= c!882913 (is-Cons!59510 lt!2117237))))

(declare-fun b!5131697 () Bool)

(declare-fun e!3200635 () Bool)

(declare-fun dynLambda!23689 (Int Context!7468) Bool)

(assert (=> b!5131697 (= e!3200635 (dynLambda!23689 lambda!254377 (h!65958 lt!2117237)))))

(declare-fun b!5131698 () Bool)

(declare-fun e!3200636 () Bool)

(declare-fun lt!2117257 () Context!7468)

(declare-fun contains!19637 (List!59634 Context!7468) Bool)

(assert (=> b!5131698 (= e!3200636 (contains!19637 lt!2117237 lt!2117257))))

(declare-fun b!5131699 () Bool)

(declare-fun lt!2117256 () Unit!150783)

(declare-fun Unit!150787 () Unit!150783)

(assert (=> b!5131699 (= lt!2117256 Unit!150787)))

(assert (=> b!5131699 false))

(declare-fun head!10984 (List!59634) Context!7468)

(assert (=> b!5131699 (= e!3200638 (head!10984 lt!2117237))))

(declare-fun d!1660401 () Bool)

(assert (=> d!1660401 e!3200636))

(declare-fun res!2185562 () Bool)

(assert (=> d!1660401 (=> (not res!2185562) (not e!3200636))))

(assert (=> d!1660401 (= res!2185562 (dynLambda!23689 lambda!254377 lt!2117257))))

(assert (=> d!1660401 (= lt!2117257 e!3200637)))

(declare-fun c!882914 () Bool)

(assert (=> d!1660401 (= c!882914 e!3200635)))

(declare-fun res!2185561 () Bool)

(assert (=> d!1660401 (=> (not res!2185561) (not e!3200635))))

(assert (=> d!1660401 (= res!2185561 (is-Cons!59510 lt!2117237))))

(assert (=> d!1660401 (exists!1656 lt!2117237 lambda!254377)))

(assert (=> d!1660401 (= (getWitness!796 lt!2117237 lambda!254377) lt!2117257)))

(declare-fun b!5131696 () Bool)

(assert (=> b!5131696 (= e!3200637 (h!65958 lt!2117237))))

(assert (= (and d!1660401 res!2185561) b!5131697))

(assert (= (and d!1660401 c!882914) b!5131696))

(assert (= (and d!1660401 (not c!882914)) b!5131695))

(assert (= (and b!5131695 c!882913) b!5131694))

(assert (= (and b!5131695 (not c!882913)) b!5131699))

(assert (= (and d!1660401 res!2185562) b!5131698))

(declare-fun b_lambda!199769 () Bool)

(assert (=> (not b_lambda!199769) (not b!5131697)))

(declare-fun b_lambda!199771 () Bool)

(assert (=> (not b_lambda!199771) (not d!1660401)))

(declare-fun m!6197114 () Bool)

(assert (=> b!5131697 m!6197114))

(declare-fun m!6197116 () Bool)

(assert (=> b!5131694 m!6197116))

(declare-fun m!6197118 () Bool)

(assert (=> b!5131699 m!6197118))

(declare-fun m!6197120 () Bool)

(assert (=> d!1660401 m!6197120))

(assert (=> d!1660401 m!6197072))

(declare-fun m!6197122 () Bool)

(assert (=> b!5131698 m!6197122))

(assert (=> b!5131650 d!1660401))

(declare-fun d!1660403 () Bool)

(declare-fun choose!37884 ((Set Context!7468) Int) (Set Context!7468))

(assert (=> d!1660403 (= (flatMap!401 z!1054 lambda!254375) (choose!37884 z!1054 lambda!254375))))

(declare-fun bs!1197766 () Bool)

(assert (= bs!1197766 d!1660403))

(declare-fun m!6197124 () Bool)

(assert (=> bs!1197766 m!6197124))

(assert (=> b!5131646 d!1660403))

(declare-fun bs!1197767 () Bool)

(declare-fun d!1660405 () Bool)

(assert (= bs!1197767 (and d!1660405 b!5131646)))

(declare-fun lambda!254399 () Int)

(assert (=> bs!1197767 (= lambda!254399 lambda!254375)))

(assert (=> d!1660405 true))

(assert (=> d!1660405 (= (derivationStepZipper!905 z!1054 a!1233) (flatMap!401 z!1054 lambda!254399))))

(declare-fun bs!1197768 () Bool)

(assert (= bs!1197768 d!1660405))

(declare-fun m!6197126 () Bool)

(assert (=> bs!1197768 m!6197126))

(assert (=> b!5131646 d!1660405))

(declare-fun d!1660407 () Bool)

(declare-fun lt!2117260 () Bool)

(declare-fun forall!13781 (List!59634 Int) Bool)

(assert (=> d!1660407 (= lt!2117260 (forall!13781 (toList!8335 lt!2117236) lambda!254376))))

(declare-fun choose!37885 ((Set Context!7468) Int) Bool)

(assert (=> d!1660407 (= lt!2117260 (choose!37885 lt!2117236 lambda!254376))))

(assert (=> d!1660407 (= (forall!13779 lt!2117236 lambda!254376) lt!2117260)))

(declare-fun bs!1197769 () Bool)

(assert (= bs!1197769 d!1660407))

(assert (=> bs!1197769 m!6197076))

(assert (=> bs!1197769 m!6197076))

(declare-fun m!6197128 () Bool)

(assert (=> bs!1197769 m!6197128))

(declare-fun m!6197130 () Bool)

(assert (=> bs!1197769 m!6197130))

(assert (=> b!5131651 d!1660407))

(assert (=> b!5131647 d!1660407))

(declare-fun bs!1197771 () Bool)

(declare-fun d!1660409 () Bool)

(assert (= bs!1197771 (and d!1660409 b!5131647)))

(declare-fun lambda!254414 () Int)

(assert (=> bs!1197771 (= lambda!254414 lambda!254376)))

(declare-fun bs!1197772 () Bool)

(assert (= bs!1197772 (and d!1660409 b!5131648)))

(assert (=> bs!1197772 (not (= lambda!254414 lambda!254377))))

(declare-fun bs!1197773 () Bool)

(declare-fun b!5131704 () Bool)

(assert (= bs!1197773 (and b!5131704 b!5131647)))

(declare-fun lambda!254415 () Int)

(assert (=> bs!1197773 (not (= lambda!254415 lambda!254376))))

(declare-fun bs!1197774 () Bool)

(assert (= bs!1197774 (and b!5131704 b!5131648)))

(assert (=> bs!1197774 (= lambda!254415 lambda!254377)))

(declare-fun bs!1197775 () Bool)

(assert (= bs!1197775 (and b!5131704 d!1660409)))

(assert (=> bs!1197775 (not (= lambda!254415 lambda!254414))))

(declare-fun bs!1197776 () Bool)

(declare-fun b!5131705 () Bool)

(assert (= bs!1197776 (and b!5131705 b!5131647)))

(declare-fun lambda!254417 () Int)

(assert (=> bs!1197776 (not (= lambda!254417 lambda!254376))))

(declare-fun bs!1197777 () Bool)

(assert (= bs!1197777 (and b!5131705 b!5131648)))

(assert (=> bs!1197777 (= lambda!254417 lambda!254377)))

(declare-fun bs!1197778 () Bool)

(assert (= bs!1197778 (and b!5131705 d!1660409)))

(assert (=> bs!1197778 (not (= lambda!254417 lambda!254414))))

(declare-fun bs!1197779 () Bool)

(assert (= bs!1197779 (and b!5131705 b!5131704)))

(assert (=> bs!1197779 (= lambda!254417 lambda!254415)))

(declare-fun e!3200645 () Unit!150783)

(declare-fun Unit!150788 () Unit!150783)

(assert (=> b!5131704 (= e!3200645 Unit!150788)))

(declare-fun lt!2117283 () List!59634)

(declare-fun call!357192 () List!59634)

(assert (=> b!5131704 (= lt!2117283 call!357192)))

(declare-fun lt!2117287 () Unit!150783)

(assert (=> b!5131704 (= lt!2117287 (lemmaNotForallThenExists!383 lt!2117283 lambda!254414))))

(declare-fun call!357193 () Bool)

(assert (=> b!5131704 call!357193))

(declare-fun lt!2117280 () Unit!150783)

(assert (=> b!5131704 (= lt!2117280 lt!2117287)))

(declare-fun bm!357187 () Bool)

(assert (=> bm!357187 (= call!357192 (toList!8335 lt!2117236))))

(declare-fun lt!2117281 () Bool)

(declare-datatypes ((List!59637 0))(
  ( (Nil!59513) (Cons!59513 (h!65961 C!28966) (t!372664 List!59637)) )
))
(declare-datatypes ((Option!14736 0))(
  ( (None!14735) (Some!14735 (v!50762 List!59637)) )
))
(declare-fun isEmpty!31997 (Option!14736) Bool)

(declare-fun getLanguageWitness!871 ((Set Context!7468)) Option!14736)

(assert (=> d!1660409 (= lt!2117281 (isEmpty!31997 (getLanguageWitness!871 lt!2117236)))))

(assert (=> d!1660409 (= lt!2117281 (forall!13779 lt!2117236 lambda!254414))))

(declare-fun lt!2117284 () Unit!150783)

(assert (=> d!1660409 (= lt!2117284 e!3200645)))

(declare-fun c!882927 () Bool)

(assert (=> d!1660409 (= c!882927 (not (forall!13779 lt!2117236 lambda!254414)))))

(assert (=> d!1660409 (= (lostCauseZipper!1194 lt!2117236) lt!2117281)))

(declare-fun Unit!150789 () Unit!150783)

(assert (=> b!5131705 (= e!3200645 Unit!150789)))

(declare-fun lt!2117285 () List!59634)

(assert (=> b!5131705 (= lt!2117285 call!357192)))

(declare-fun lt!2117286 () Unit!150783)

(declare-fun lemmaForallThenNotExists!358 (List!59634 Int) Unit!150783)

(assert (=> b!5131705 (= lt!2117286 (lemmaForallThenNotExists!358 lt!2117285 lambda!254414))))

(assert (=> b!5131705 (not call!357193)))

(declare-fun lt!2117282 () Unit!150783)

(assert (=> b!5131705 (= lt!2117282 lt!2117286)))

(declare-fun bm!357188 () Bool)

(assert (=> bm!357188 (= call!357193 (exists!1656 (ite c!882927 lt!2117283 lt!2117285) (ite c!882927 lambda!254415 lambda!254417)))))

(assert (= (and d!1660409 c!882927) b!5131704))

(assert (= (and d!1660409 (not c!882927)) b!5131705))

(assert (= (or b!5131704 b!5131705) bm!357187))

(assert (= (or b!5131704 b!5131705) bm!357188))

(declare-fun m!6197138 () Bool)

(assert (=> bm!357188 m!6197138))

(declare-fun m!6197140 () Bool)

(assert (=> b!5131704 m!6197140))

(assert (=> bm!357187 m!6197076))

(declare-fun m!6197142 () Bool)

(assert (=> d!1660409 m!6197142))

(assert (=> d!1660409 m!6197142))

(declare-fun m!6197144 () Bool)

(assert (=> d!1660409 m!6197144))

(declare-fun m!6197146 () Bool)

(assert (=> d!1660409 m!6197146))

(assert (=> d!1660409 m!6197146))

(declare-fun m!6197148 () Bool)

(assert (=> b!5131705 m!6197148))

(assert (=> b!5131647 d!1660409))

(declare-fun d!1660417 () Bool)

(declare-fun lt!2117288 () Bool)

(assert (=> d!1660417 (= lt!2117288 (forall!13781 (toList!8335 z!1054) lambda!254376))))

(assert (=> d!1660417 (= lt!2117288 (choose!37885 z!1054 lambda!254376))))

(assert (=> d!1660417 (= (forall!13779 z!1054 lambda!254376) lt!2117288)))

(declare-fun bs!1197783 () Bool)

(assert (= bs!1197783 d!1660417))

(declare-fun m!6197150 () Bool)

(assert (=> bs!1197783 m!6197150))

(assert (=> bs!1197783 m!6197150))

(declare-fun m!6197152 () Bool)

(assert (=> bs!1197783 m!6197152))

(declare-fun m!6197154 () Bool)

(assert (=> bs!1197783 m!6197154))

(assert (=> b!5131652 d!1660417))

(declare-fun d!1660419 () Bool)

(declare-fun lt!2117291 () Bool)

(assert (=> d!1660419 (= lt!2117291 (exists!1656 (toList!8335 lt!2117236) lambda!254377))))

(declare-fun choose!37886 ((Set Context!7468) Int) Bool)

(assert (=> d!1660419 (= lt!2117291 (choose!37886 lt!2117236 lambda!254377))))

(assert (=> d!1660419 (= (exists!1655 lt!2117236 lambda!254377) lt!2117291)))

(declare-fun bs!1197784 () Bool)

(assert (= bs!1197784 d!1660419))

(assert (=> bs!1197784 m!6197076))

(assert (=> bs!1197784 m!6197076))

(declare-fun m!6197156 () Bool)

(assert (=> bs!1197784 m!6197156))

(declare-fun m!6197158 () Bool)

(assert (=> bs!1197784 m!6197158))

(assert (=> b!5131648 d!1660419))

(declare-fun bs!1197785 () Bool)

(declare-fun d!1660421 () Bool)

(assert (= bs!1197785 (and d!1660421 b!5131704)))

(declare-fun lambda!254421 () Int)

(assert (=> bs!1197785 (not (= lambda!254421 lambda!254415))))

(declare-fun bs!1197786 () Bool)

(assert (= bs!1197786 (and d!1660421 d!1660409)))

(assert (=> bs!1197786 (not (= lambda!254421 lambda!254414))))

(declare-fun bs!1197787 () Bool)

(assert (= bs!1197787 (and d!1660421 b!5131705)))

(assert (=> bs!1197787 (not (= lambda!254421 lambda!254417))))

(declare-fun bs!1197788 () Bool)

(assert (= bs!1197788 (and d!1660421 b!5131648)))

(assert (=> bs!1197788 (not (= lambda!254421 lambda!254377))))

(declare-fun bs!1197789 () Bool)

(assert (= bs!1197789 (and d!1660421 b!5131647)))

(assert (=> bs!1197789 (not (= lambda!254421 lambda!254376))))

(assert (=> d!1660421 true))

(declare-fun order!26861 () Int)

(declare-fun dynLambda!23690 (Int Int) Int)

(assert (=> d!1660421 (< (dynLambda!23690 order!26861 lambda!254377) (dynLambda!23690 order!26861 lambda!254421))))

(assert (=> d!1660421 (= (exists!1656 lt!2117237 lambda!254377) (not (forall!13781 lt!2117237 lambda!254421)))))

(declare-fun bs!1197790 () Bool)

(assert (= bs!1197790 d!1660421))

(declare-fun m!6197160 () Bool)

(assert (=> bs!1197790 m!6197160))

(assert (=> b!5131648 d!1660421))

(declare-fun bs!1197795 () Bool)

(declare-fun d!1660423 () Bool)

(assert (= bs!1197795 (and d!1660423 b!5131704)))

(declare-fun lambda!254426 () Int)

(assert (=> bs!1197795 (not (= lambda!254426 lambda!254415))))

(declare-fun bs!1197796 () Bool)

(assert (= bs!1197796 (and d!1660423 d!1660409)))

(assert (=> bs!1197796 (not (= lambda!254426 lambda!254414))))

(declare-fun bs!1197797 () Bool)

(assert (= bs!1197797 (and d!1660423 d!1660421)))

(assert (=> bs!1197797 (= (= lambda!254376 lambda!254377) (= lambda!254426 lambda!254421))))

(declare-fun bs!1197798 () Bool)

(assert (= bs!1197798 (and d!1660423 b!5131705)))

(assert (=> bs!1197798 (not (= lambda!254426 lambda!254417))))

(declare-fun bs!1197799 () Bool)

(assert (= bs!1197799 (and d!1660423 b!5131648)))

(assert (=> bs!1197799 (not (= lambda!254426 lambda!254377))))

(declare-fun bs!1197800 () Bool)

(assert (= bs!1197800 (and d!1660423 b!5131647)))

(assert (=> bs!1197800 (not (= lambda!254426 lambda!254376))))

(assert (=> d!1660423 true))

(assert (=> d!1660423 (< (dynLambda!23690 order!26861 lambda!254376) (dynLambda!23690 order!26861 lambda!254426))))

(assert (=> d!1660423 (exists!1656 lt!2117237 lambda!254426)))

(declare-fun lt!2117297 () Unit!150783)

(declare-fun choose!37887 (List!59634 Int) Unit!150783)

(assert (=> d!1660423 (= lt!2117297 (choose!37887 lt!2117237 lambda!254376))))

(assert (=> d!1660423 (not (forall!13781 lt!2117237 lambda!254376))))

(assert (=> d!1660423 (= (lemmaNotForallThenExists!383 lt!2117237 lambda!254376) lt!2117297)))

(declare-fun bs!1197801 () Bool)

(assert (= bs!1197801 d!1660423))

(declare-fun m!6197168 () Bool)

(assert (=> bs!1197801 m!6197168))

(declare-fun m!6197170 () Bool)

(assert (=> bs!1197801 m!6197170))

(declare-fun m!6197172 () Bool)

(assert (=> bs!1197801 m!6197172))

(assert (=> b!5131648 d!1660423))

(declare-fun d!1660427 () Bool)

(declare-fun e!3200654 () Bool)

(assert (=> d!1660427 e!3200654))

(declare-fun res!2185567 () Bool)

(assert (=> d!1660427 (=> (not res!2185567) (not e!3200654))))

(declare-fun lt!2117302 () List!59634)

(declare-fun noDuplicate!1094 (List!59634) Bool)

(assert (=> d!1660427 (= res!2185567 (noDuplicate!1094 lt!2117302))))

(declare-fun choose!37888 ((Set Context!7468)) List!59634)

(assert (=> d!1660427 (= lt!2117302 (choose!37888 lt!2117236))))

(assert (=> d!1660427 (= (toList!8335 lt!2117236) lt!2117302)))

(declare-fun b!5131712 () Bool)

(declare-fun content!10571 (List!59634) (Set Context!7468))

(assert (=> b!5131712 (= e!3200654 (= (content!10571 lt!2117302) lt!2117236))))

(assert (= (and d!1660427 res!2185567) b!5131712))

(declare-fun m!6197174 () Bool)

(assert (=> d!1660427 m!6197174))

(declare-fun m!6197176 () Bool)

(assert (=> d!1660427 m!6197176))

(declare-fun m!6197178 () Bool)

(assert (=> b!5131712 m!6197178))

(assert (=> b!5131648 d!1660427))

(declare-fun d!1660429 () Bool)

(declare-fun lambda!254429 () Int)

(declare-fun forall!13782 (List!59633 Int) Bool)

(assert (=> d!1660429 (= (inv!79057 setElem!31129) (forall!13782 (exprs!4234 setElem!31129) lambda!254429))))

(declare-fun bs!1197802 () Bool)

(assert (= bs!1197802 d!1660429))

(declare-fun m!6197186 () Bool)

(assert (=> bs!1197802 m!6197186))

(assert (=> setNonEmpty!31129 d!1660429))

(declare-fun bs!1197803 () Bool)

(declare-fun d!1660433 () Bool)

(assert (= bs!1197803 (and d!1660433 b!5131704)))

(declare-fun lambda!254430 () Int)

(assert (=> bs!1197803 (not (= lambda!254430 lambda!254415))))

(declare-fun bs!1197804 () Bool)

(assert (= bs!1197804 (and d!1660433 d!1660423)))

(assert (=> bs!1197804 (not (= lambda!254430 lambda!254426))))

(declare-fun bs!1197805 () Bool)

(assert (= bs!1197805 (and d!1660433 d!1660409)))

(assert (=> bs!1197805 (= lambda!254430 lambda!254414)))

(declare-fun bs!1197806 () Bool)

(assert (= bs!1197806 (and d!1660433 d!1660421)))

(assert (=> bs!1197806 (not (= lambda!254430 lambda!254421))))

(declare-fun bs!1197807 () Bool)

(assert (= bs!1197807 (and d!1660433 b!5131705)))

(assert (=> bs!1197807 (not (= lambda!254430 lambda!254417))))

(declare-fun bs!1197808 () Bool)

(assert (= bs!1197808 (and d!1660433 b!5131648)))

(assert (=> bs!1197808 (not (= lambda!254430 lambda!254377))))

(declare-fun bs!1197809 () Bool)

(assert (= bs!1197809 (and d!1660433 b!5131647)))

(assert (=> bs!1197809 (= lambda!254430 lambda!254376)))

(declare-fun bs!1197810 () Bool)

(declare-fun b!5131716 () Bool)

(assert (= bs!1197810 (and b!5131716 b!5131704)))

(declare-fun lambda!254431 () Int)

(assert (=> bs!1197810 (= lambda!254431 lambda!254415)))

(declare-fun bs!1197811 () Bool)

(assert (= bs!1197811 (and b!5131716 d!1660423)))

(assert (=> bs!1197811 (not (= lambda!254431 lambda!254426))))

(declare-fun bs!1197812 () Bool)

(assert (= bs!1197812 (and b!5131716 d!1660421)))

(assert (=> bs!1197812 (not (= lambda!254431 lambda!254421))))

(declare-fun bs!1197813 () Bool)

(assert (= bs!1197813 (and b!5131716 b!5131705)))

(assert (=> bs!1197813 (= lambda!254431 lambda!254417)))

(declare-fun bs!1197814 () Bool)

(assert (= bs!1197814 (and b!5131716 d!1660409)))

(assert (=> bs!1197814 (not (= lambda!254431 lambda!254414))))

(declare-fun bs!1197815 () Bool)

(assert (= bs!1197815 (and b!5131716 d!1660433)))

(assert (=> bs!1197815 (not (= lambda!254431 lambda!254430))))

(declare-fun bs!1197816 () Bool)

(assert (= bs!1197816 (and b!5131716 b!5131648)))

(assert (=> bs!1197816 (= lambda!254431 lambda!254377)))

(declare-fun bs!1197817 () Bool)

(assert (= bs!1197817 (and b!5131716 b!5131647)))

(assert (=> bs!1197817 (not (= lambda!254431 lambda!254376))))

(declare-fun bs!1197818 () Bool)

(declare-fun b!5131717 () Bool)

(assert (= bs!1197818 (and b!5131717 b!5131704)))

(declare-fun lambda!254432 () Int)

(assert (=> bs!1197818 (= lambda!254432 lambda!254415)))

(declare-fun bs!1197819 () Bool)

(assert (= bs!1197819 (and b!5131717 d!1660423)))

(assert (=> bs!1197819 (not (= lambda!254432 lambda!254426))))

(declare-fun bs!1197820 () Bool)

(assert (= bs!1197820 (and b!5131717 d!1660421)))

(assert (=> bs!1197820 (not (= lambda!254432 lambda!254421))))

(declare-fun bs!1197822 () Bool)

(assert (= bs!1197822 (and b!5131717 b!5131705)))

(assert (=> bs!1197822 (= lambda!254432 lambda!254417)))

(declare-fun bs!1197823 () Bool)

(assert (= bs!1197823 (and b!5131717 b!5131716)))

(assert (=> bs!1197823 (= lambda!254432 lambda!254431)))

(declare-fun bs!1197824 () Bool)

(assert (= bs!1197824 (and b!5131717 d!1660409)))

(assert (=> bs!1197824 (not (= lambda!254432 lambda!254414))))

(declare-fun bs!1197825 () Bool)

(assert (= bs!1197825 (and b!5131717 d!1660433)))

(assert (=> bs!1197825 (not (= lambda!254432 lambda!254430))))

(declare-fun bs!1197826 () Bool)

(assert (= bs!1197826 (and b!5131717 b!5131648)))

(assert (=> bs!1197826 (= lambda!254432 lambda!254377)))

(declare-fun bs!1197827 () Bool)

(assert (= bs!1197827 (and b!5131717 b!5131647)))

(assert (=> bs!1197827 (not (= lambda!254432 lambda!254376))))

(declare-fun e!3200656 () Unit!150783)

(declare-fun Unit!150790 () Unit!150783)

(assert (=> b!5131716 (= e!3200656 Unit!150790)))

(declare-fun lt!2117307 () List!59634)

(declare-fun call!357194 () List!59634)

(assert (=> b!5131716 (= lt!2117307 call!357194)))

(declare-fun lt!2117311 () Unit!150783)

(assert (=> b!5131716 (= lt!2117311 (lemmaNotForallThenExists!383 lt!2117307 lambda!254430))))

(declare-fun call!357195 () Bool)

(assert (=> b!5131716 call!357195))

(declare-fun lt!2117304 () Unit!150783)

(assert (=> b!5131716 (= lt!2117304 lt!2117311)))

(declare-fun bm!357189 () Bool)

(assert (=> bm!357189 (= call!357194 (toList!8335 z!1054))))

(declare-fun lt!2117305 () Bool)

(assert (=> d!1660433 (= lt!2117305 (isEmpty!31997 (getLanguageWitness!871 z!1054)))))

(assert (=> d!1660433 (= lt!2117305 (forall!13779 z!1054 lambda!254430))))

(declare-fun lt!2117308 () Unit!150783)

(assert (=> d!1660433 (= lt!2117308 e!3200656)))

(declare-fun c!882928 () Bool)

(assert (=> d!1660433 (= c!882928 (not (forall!13779 z!1054 lambda!254430)))))

(assert (=> d!1660433 (= (lostCauseZipper!1194 z!1054) lt!2117305)))

(declare-fun Unit!150791 () Unit!150783)

(assert (=> b!5131717 (= e!3200656 Unit!150791)))

(declare-fun lt!2117309 () List!59634)

(assert (=> b!5131717 (= lt!2117309 call!357194)))

(declare-fun lt!2117310 () Unit!150783)

(assert (=> b!5131717 (= lt!2117310 (lemmaForallThenNotExists!358 lt!2117309 lambda!254430))))

(assert (=> b!5131717 (not call!357195)))

(declare-fun lt!2117306 () Unit!150783)

(assert (=> b!5131717 (= lt!2117306 lt!2117310)))

(declare-fun bm!357190 () Bool)

(assert (=> bm!357190 (= call!357195 (exists!1656 (ite c!882928 lt!2117307 lt!2117309) (ite c!882928 lambda!254431 lambda!254432)))))

(assert (= (and d!1660433 c!882928) b!5131716))

(assert (= (and d!1660433 (not c!882928)) b!5131717))

(assert (= (or b!5131716 b!5131717) bm!357189))

(assert (= (or b!5131716 b!5131717) bm!357190))

(declare-fun m!6197192 () Bool)

(assert (=> bm!357190 m!6197192))

(declare-fun m!6197194 () Bool)

(assert (=> b!5131716 m!6197194))

(assert (=> bm!357189 m!6197150))

(declare-fun m!6197196 () Bool)

(assert (=> d!1660433 m!6197196))

(assert (=> d!1660433 m!6197196))

(declare-fun m!6197198 () Bool)

(assert (=> d!1660433 m!6197198))

(declare-fun m!6197200 () Bool)

(assert (=> d!1660433 m!6197200))

(assert (=> d!1660433 m!6197200))

(declare-fun m!6197202 () Bool)

(assert (=> b!5131717 m!6197202))

(assert (=> start!542654 d!1660433))

(declare-fun b!5131722 () Bool)

(declare-fun e!3200659 () Bool)

(declare-fun tp!1431596 () Bool)

(declare-fun tp!1431597 () Bool)

(assert (=> b!5131722 (= e!3200659 (and tp!1431596 tp!1431597))))

(assert (=> b!5131649 (= tp!1431584 e!3200659)))

(assert (= (and b!5131649 (is-Cons!59509 (exprs!4234 setElem!31129))) b!5131722))

(declare-fun condSetEmpty!31135 () Bool)

(assert (=> setNonEmpty!31129 (= condSetEmpty!31135 (= setRest!31129 (as set.empty (Set Context!7468))))))

(declare-fun setRes!31135 () Bool)

(assert (=> setNonEmpty!31129 (= tp!1431585 setRes!31135)))

(declare-fun setIsEmpty!31135 () Bool)

(assert (=> setIsEmpty!31135 setRes!31135))

(declare-fun tp!1431603 () Bool)

(declare-fun setElem!31135 () Context!7468)

(declare-fun e!3200662 () Bool)

(declare-fun setNonEmpty!31135 () Bool)

(assert (=> setNonEmpty!31135 (= setRes!31135 (and tp!1431603 (inv!79057 setElem!31135) e!3200662))))

(declare-fun setRest!31135 () (Set Context!7468))

(assert (=> setNonEmpty!31135 (= setRest!31129 (set.union (set.insert setElem!31135 (as set.empty (Set Context!7468))) setRest!31135))))

(declare-fun b!5131727 () Bool)

(declare-fun tp!1431602 () Bool)

(assert (=> b!5131727 (= e!3200662 tp!1431602)))

(assert (= (and setNonEmpty!31129 condSetEmpty!31135) setIsEmpty!31135))

(assert (= (and setNonEmpty!31129 (not condSetEmpty!31135)) setNonEmpty!31135))

(assert (= setNonEmpty!31135 b!5131727))

(declare-fun m!6197204 () Bool)

(assert (=> setNonEmpty!31135 m!6197204))

(declare-fun b_lambda!199773 () Bool)

(assert (= b_lambda!199769 (or b!5131648 b_lambda!199773)))

(declare-fun bs!1197828 () Bool)

(declare-fun d!1660437 () Bool)

(assert (= bs!1197828 (and d!1660437 b!5131648)))

(declare-fun lostCause!1293 (Context!7468) Bool)

(assert (=> bs!1197828 (= (dynLambda!23689 lambda!254377 (h!65958 lt!2117237)) (not (lostCause!1293 (h!65958 lt!2117237))))))

(declare-fun m!6197206 () Bool)

(assert (=> bs!1197828 m!6197206))

(assert (=> b!5131697 d!1660437))

(declare-fun b_lambda!199775 () Bool)

(assert (= b_lambda!199771 (or b!5131648 b_lambda!199775)))

(declare-fun bs!1197829 () Bool)

(declare-fun d!1660439 () Bool)

(assert (= bs!1197829 (and d!1660439 b!5131648)))

(assert (=> bs!1197829 (= (dynLambda!23689 lambda!254377 lt!2117257) (not (lostCause!1293 lt!2117257)))))

(declare-fun m!6197208 () Bool)

(assert (=> bs!1197829 m!6197208))

(assert (=> d!1660401 d!1660439))

(push 1)

(assert (not d!1660401))

(assert (not b!5131722))

(assert (not d!1660429))

(assert (not b_lambda!199773))

(assert (not b!5131694))

(assert (not d!1660427))

(assert (not d!1660407))

(assert (not d!1660421))

(assert (not b!5131699))

(assert (not d!1660409))

(assert (not b!5131727))

(assert (not bs!1197828))

(assert (not b!5131712))

(assert (not d!1660433))

(assert (not b!5131705))

(assert (not bm!357189))

(assert (not d!1660419))

(assert (not d!1660423))

(assert (not b!5131698))

(assert (not bm!357190))

(assert (not setNonEmpty!31135))

(assert (not b!5131716))

(assert (not b!5131704))

(assert (not b!5131717))

(assert (not d!1660403))

(assert tp_is_empty!37873)

(assert (not d!1660417))

(assert (not bm!357187))

(assert (not b_lambda!199775))

(assert (not d!1660405))

(assert (not bm!357188))

(assert (not bs!1197829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660457 () Bool)

(declare-fun res!2185579 () Bool)

(declare-fun e!3200693 () Bool)

(assert (=> d!1660457 (=> res!2185579 e!3200693)))

(assert (=> d!1660457 (= res!2185579 (is-Nil!59510 (toList!8335 z!1054)))))

(assert (=> d!1660457 (= (forall!13781 (toList!8335 z!1054) lambda!254376) e!3200693)))

(declare-fun b!5131768 () Bool)

(declare-fun e!3200694 () Bool)

(assert (=> b!5131768 (= e!3200693 e!3200694)))

(declare-fun res!2185580 () Bool)

(assert (=> b!5131768 (=> (not res!2185580) (not e!3200694))))

(assert (=> b!5131768 (= res!2185580 (dynLambda!23689 lambda!254376 (h!65958 (toList!8335 z!1054))))))

(declare-fun b!5131769 () Bool)

(assert (=> b!5131769 (= e!3200694 (forall!13781 (t!372661 (toList!8335 z!1054)) lambda!254376))))

(assert (= (and d!1660457 (not res!2185579)) b!5131768))

(assert (= (and b!5131768 res!2185580) b!5131769))

(declare-fun b_lambda!199785 () Bool)

(assert (=> (not b_lambda!199785) (not b!5131768)))

(declare-fun m!6197262 () Bool)

(assert (=> b!5131768 m!6197262))

(declare-fun m!6197264 () Bool)

(assert (=> b!5131769 m!6197264))

(assert (=> d!1660417 d!1660457))

(declare-fun d!1660459 () Bool)

(declare-fun e!3200695 () Bool)

(assert (=> d!1660459 e!3200695))

(declare-fun res!2185581 () Bool)

(assert (=> d!1660459 (=> (not res!2185581) (not e!3200695))))

(declare-fun lt!2117354 () List!59634)

(assert (=> d!1660459 (= res!2185581 (noDuplicate!1094 lt!2117354))))

(assert (=> d!1660459 (= lt!2117354 (choose!37888 z!1054))))

(assert (=> d!1660459 (= (toList!8335 z!1054) lt!2117354)))

(declare-fun b!5131770 () Bool)

(assert (=> b!5131770 (= e!3200695 (= (content!10571 lt!2117354) z!1054))))

(assert (= (and d!1660459 res!2185581) b!5131770))

(declare-fun m!6197266 () Bool)

(assert (=> d!1660459 m!6197266))

(declare-fun m!6197268 () Bool)

(assert (=> d!1660459 m!6197268))

(declare-fun m!6197270 () Bool)

(assert (=> b!5131770 m!6197270))

(assert (=> d!1660417 d!1660459))

(declare-fun d!1660461 () Bool)

(declare-fun res!2185584 () Bool)

(assert (=> d!1660461 (= res!2185584 (forall!13781 (toList!8335 z!1054) lambda!254376))))

(assert (=> d!1660461 true))

(assert (=> d!1660461 (= (choose!37885 z!1054 lambda!254376) res!2185584)))

(declare-fun bs!1197876 () Bool)

(assert (= bs!1197876 d!1660461))

(assert (=> bs!1197876 m!6197150))

(assert (=> bs!1197876 m!6197150))

(assert (=> bs!1197876 m!6197152))

(assert (=> d!1660417 d!1660461))

(declare-fun d!1660463 () Bool)

(declare-fun res!2185589 () Bool)

(declare-fun e!3200700 () Bool)

(assert (=> d!1660463 (=> res!2185589 e!3200700)))

(assert (=> d!1660463 (= res!2185589 (is-Nil!59510 lt!2117302))))

(assert (=> d!1660463 (= (noDuplicate!1094 lt!2117302) e!3200700)))

(declare-fun b!5131775 () Bool)

(declare-fun e!3200701 () Bool)

(assert (=> b!5131775 (= e!3200700 e!3200701)))

(declare-fun res!2185590 () Bool)

(assert (=> b!5131775 (=> (not res!2185590) (not e!3200701))))

(assert (=> b!5131775 (= res!2185590 (not (contains!19637 (t!372661 lt!2117302) (h!65958 lt!2117302))))))

(declare-fun b!5131776 () Bool)

(assert (=> b!5131776 (= e!3200701 (noDuplicate!1094 (t!372661 lt!2117302)))))

(assert (= (and d!1660463 (not res!2185589)) b!5131775))

(assert (= (and b!5131775 res!2185590) b!5131776))

(declare-fun m!6197272 () Bool)

(assert (=> b!5131775 m!6197272))

(declare-fun m!6197274 () Bool)

(assert (=> b!5131776 m!6197274))

(assert (=> d!1660427 d!1660463))

(declare-fun d!1660465 () Bool)

(declare-fun e!3200708 () Bool)

(assert (=> d!1660465 e!3200708))

(declare-fun res!2185596 () Bool)

(assert (=> d!1660465 (=> (not res!2185596) (not e!3200708))))

(declare-fun res!2185595 () List!59634)

(assert (=> d!1660465 (= res!2185596 (noDuplicate!1094 res!2185595))))

(declare-fun e!3200709 () Bool)

(assert (=> d!1660465 e!3200709))

(assert (=> d!1660465 (= (choose!37888 lt!2117236) res!2185595)))

(declare-fun b!5131784 () Bool)

(declare-fun e!3200710 () Bool)

(declare-fun tp!1431620 () Bool)

(assert (=> b!5131784 (= e!3200710 tp!1431620)))

(declare-fun b!5131783 () Bool)

(declare-fun tp!1431621 () Bool)

(assert (=> b!5131783 (= e!3200709 (and (inv!79057 (h!65958 res!2185595)) e!3200710 tp!1431621))))

(declare-fun b!5131785 () Bool)

(assert (=> b!5131785 (= e!3200708 (= (content!10571 res!2185595) lt!2117236))))

(assert (= b!5131783 b!5131784))

(assert (= (and d!1660465 (is-Cons!59510 res!2185595)) b!5131783))

(assert (= (and d!1660465 res!2185596) b!5131785))

(declare-fun m!6197276 () Bool)

(assert (=> d!1660465 m!6197276))

(declare-fun m!6197278 () Bool)

(assert (=> b!5131783 m!6197278))

(declare-fun m!6197280 () Bool)

(assert (=> b!5131785 m!6197280))

(assert (=> d!1660427 d!1660465))

(declare-fun d!1660467 () Bool)

(declare-fun res!2185597 () Bool)

(declare-fun e!3200711 () Bool)

(assert (=> d!1660467 (=> res!2185597 e!3200711)))

(assert (=> d!1660467 (= res!2185597 (is-Nil!59510 (toList!8335 lt!2117236)))))

(assert (=> d!1660467 (= (forall!13781 (toList!8335 lt!2117236) lambda!254376) e!3200711)))

(declare-fun b!5131786 () Bool)

(declare-fun e!3200712 () Bool)

(assert (=> b!5131786 (= e!3200711 e!3200712)))

(declare-fun res!2185598 () Bool)

(assert (=> b!5131786 (=> (not res!2185598) (not e!3200712))))

(assert (=> b!5131786 (= res!2185598 (dynLambda!23689 lambda!254376 (h!65958 (toList!8335 lt!2117236))))))

(declare-fun b!5131787 () Bool)

(assert (=> b!5131787 (= e!3200712 (forall!13781 (t!372661 (toList!8335 lt!2117236)) lambda!254376))))

(assert (= (and d!1660467 (not res!2185597)) b!5131786))

(assert (= (and b!5131786 res!2185598) b!5131787))

(declare-fun b_lambda!199787 () Bool)

(assert (=> (not b_lambda!199787) (not b!5131786)))

(declare-fun m!6197282 () Bool)

(assert (=> b!5131786 m!6197282))

(declare-fun m!6197284 () Bool)

(assert (=> b!5131787 m!6197284))

(assert (=> d!1660407 d!1660467))

(assert (=> d!1660407 d!1660427))

(declare-fun d!1660469 () Bool)

(declare-fun res!2185599 () Bool)

(assert (=> d!1660469 (= res!2185599 (forall!13781 (toList!8335 lt!2117236) lambda!254376))))

(assert (=> d!1660469 true))

(assert (=> d!1660469 (= (choose!37885 lt!2117236 lambda!254376) res!2185599)))

(declare-fun bs!1197877 () Bool)

(assert (= bs!1197877 d!1660469))

(assert (=> bs!1197877 m!6197076))

(assert (=> bs!1197877 m!6197076))

(assert (=> bs!1197877 m!6197128))

(assert (=> d!1660407 d!1660469))

(declare-fun bs!1197878 () Bool)

(declare-fun d!1660471 () Bool)

(assert (= bs!1197878 (and d!1660471 b!5131704)))

(declare-fun lambda!254457 () Int)

(assert (=> bs!1197878 (not (= lambda!254457 lambda!254415))))

(declare-fun bs!1197879 () Bool)

(assert (= bs!1197879 (and d!1660471 d!1660423)))

(assert (=> bs!1197879 (= (= lambda!254426 lambda!254376) (= lambda!254457 lambda!254426))))

(declare-fun bs!1197880 () Bool)

(assert (= bs!1197880 (and d!1660471 b!5131717)))

(assert (=> bs!1197880 (not (= lambda!254457 lambda!254432))))

(declare-fun bs!1197881 () Bool)

(assert (= bs!1197881 (and d!1660471 d!1660421)))

(assert (=> bs!1197881 (= (= lambda!254426 lambda!254377) (= lambda!254457 lambda!254421))))

(declare-fun bs!1197882 () Bool)

(assert (= bs!1197882 (and d!1660471 b!5131705)))

(assert (=> bs!1197882 (not (= lambda!254457 lambda!254417))))

(declare-fun bs!1197883 () Bool)

(assert (= bs!1197883 (and d!1660471 b!5131716)))

(assert (=> bs!1197883 (not (= lambda!254457 lambda!254431))))

(declare-fun bs!1197884 () Bool)

(assert (= bs!1197884 (and d!1660471 d!1660409)))

(assert (=> bs!1197884 (not (= lambda!254457 lambda!254414))))

(declare-fun bs!1197885 () Bool)

(assert (= bs!1197885 (and d!1660471 d!1660433)))

(assert (=> bs!1197885 (not (= lambda!254457 lambda!254430))))

(declare-fun bs!1197886 () Bool)

(assert (= bs!1197886 (and d!1660471 b!5131648)))

(assert (=> bs!1197886 (not (= lambda!254457 lambda!254377))))

(declare-fun bs!1197887 () Bool)

(assert (= bs!1197887 (and d!1660471 b!5131647)))

(assert (=> bs!1197887 (not (= lambda!254457 lambda!254376))))

(assert (=> d!1660471 true))

(assert (=> d!1660471 (< (dynLambda!23690 order!26861 lambda!254426) (dynLambda!23690 order!26861 lambda!254457))))

(assert (=> d!1660471 (= (exists!1656 lt!2117237 lambda!254426) (not (forall!13781 lt!2117237 lambda!254457)))))

(declare-fun bs!1197888 () Bool)

(assert (= bs!1197888 d!1660471))

(declare-fun m!6197286 () Bool)

(assert (=> bs!1197888 m!6197286))

(assert (=> d!1660423 d!1660471))

(declare-fun bs!1197889 () Bool)

(declare-fun d!1660473 () Bool)

(assert (= bs!1197889 (and d!1660473 b!5131704)))

(declare-fun lambda!254460 () Int)

(assert (=> bs!1197889 (not (= lambda!254460 lambda!254415))))

(declare-fun bs!1197890 () Bool)

(assert (= bs!1197890 (and d!1660473 d!1660423)))

(assert (=> bs!1197890 (= lambda!254460 lambda!254426)))

(declare-fun bs!1197891 () Bool)

(assert (= bs!1197891 (and d!1660473 d!1660421)))

(assert (=> bs!1197891 (= (= lambda!254376 lambda!254377) (= lambda!254460 lambda!254421))))

(declare-fun bs!1197892 () Bool)

(assert (= bs!1197892 (and d!1660473 b!5131705)))

(assert (=> bs!1197892 (not (= lambda!254460 lambda!254417))))

(declare-fun bs!1197893 () Bool)

(assert (= bs!1197893 (and d!1660473 b!5131716)))

(assert (=> bs!1197893 (not (= lambda!254460 lambda!254431))))

(declare-fun bs!1197894 () Bool)

(assert (= bs!1197894 (and d!1660473 d!1660409)))

(assert (=> bs!1197894 (not (= lambda!254460 lambda!254414))))

(declare-fun bs!1197895 () Bool)

(assert (= bs!1197895 (and d!1660473 d!1660433)))

(assert (=> bs!1197895 (not (= lambda!254460 lambda!254430))))

(declare-fun bs!1197896 () Bool)

(assert (= bs!1197896 (and d!1660473 d!1660471)))

(assert (=> bs!1197896 (= (= lambda!254376 lambda!254426) (= lambda!254460 lambda!254457))))

(declare-fun bs!1197897 () Bool)

(assert (= bs!1197897 (and d!1660473 b!5131717)))

(assert (=> bs!1197897 (not (= lambda!254460 lambda!254432))))

(declare-fun bs!1197898 () Bool)

(assert (= bs!1197898 (and d!1660473 b!5131648)))

(assert (=> bs!1197898 (not (= lambda!254460 lambda!254377))))

(declare-fun bs!1197899 () Bool)

(assert (= bs!1197899 (and d!1660473 b!5131647)))

(assert (=> bs!1197899 (not (= lambda!254460 lambda!254376))))

(assert (=> d!1660473 true))

(assert (=> d!1660473 (< (dynLambda!23690 order!26861 lambda!254376) (dynLambda!23690 order!26861 lambda!254460))))

(assert (=> d!1660473 (exists!1656 lt!2117237 lambda!254460)))

(assert (=> d!1660473 true))

(declare-fun _$97!179 () Unit!150783)

(assert (=> d!1660473 (= (choose!37887 lt!2117237 lambda!254376) _$97!179)))

(declare-fun bs!1197900 () Bool)

(assert (= bs!1197900 d!1660473))

(declare-fun m!6197288 () Bool)

(assert (=> bs!1197900 m!6197288))

(assert (=> d!1660423 d!1660473))

(declare-fun d!1660475 () Bool)

(declare-fun res!2185600 () Bool)

(declare-fun e!3200715 () Bool)

(assert (=> d!1660475 (=> res!2185600 e!3200715)))

(assert (=> d!1660475 (= res!2185600 (is-Nil!59510 lt!2117237))))

(assert (=> d!1660475 (= (forall!13781 lt!2117237 lambda!254376) e!3200715)))

(declare-fun b!5131788 () Bool)

(declare-fun e!3200716 () Bool)

(assert (=> b!5131788 (= e!3200715 e!3200716)))

(declare-fun res!2185601 () Bool)

(assert (=> b!5131788 (=> (not res!2185601) (not e!3200716))))

(assert (=> b!5131788 (= res!2185601 (dynLambda!23689 lambda!254376 (h!65958 lt!2117237)))))

(declare-fun b!5131789 () Bool)

(assert (=> b!5131789 (= e!3200716 (forall!13781 (t!372661 lt!2117237) lambda!254376))))

(assert (= (and d!1660475 (not res!2185600)) b!5131788))

(assert (= (and b!5131788 res!2185601) b!5131789))

(declare-fun b_lambda!199789 () Bool)

(assert (=> (not b_lambda!199789) (not b!5131788)))

(declare-fun m!6197290 () Bool)

(assert (=> b!5131788 m!6197290))

(declare-fun m!6197292 () Bool)

(assert (=> b!5131789 m!6197292))

(assert (=> d!1660423 d!1660475))

(assert (=> d!1660401 d!1660421))

(declare-fun d!1660477 () Bool)

(declare-fun lt!2117357 () Bool)

(assert (=> d!1660477 (= lt!2117357 (set.member lt!2117257 (content!10571 lt!2117237)))))

(declare-fun e!3200722 () Bool)

(assert (=> d!1660477 (= lt!2117357 e!3200722)))

(declare-fun res!2185606 () Bool)

(assert (=> d!1660477 (=> (not res!2185606) (not e!3200722))))

(assert (=> d!1660477 (= res!2185606 (is-Cons!59510 lt!2117237))))

(assert (=> d!1660477 (= (contains!19637 lt!2117237 lt!2117257) lt!2117357)))

(declare-fun b!5131794 () Bool)

(declare-fun e!3200721 () Bool)

(assert (=> b!5131794 (= e!3200722 e!3200721)))

(declare-fun res!2185607 () Bool)

(assert (=> b!5131794 (=> res!2185607 e!3200721)))

(assert (=> b!5131794 (= res!2185607 (= (h!65958 lt!2117237) lt!2117257))))

(declare-fun b!5131795 () Bool)

(assert (=> b!5131795 (= e!3200721 (contains!19637 (t!372661 lt!2117237) lt!2117257))))

(assert (= (and d!1660477 res!2185606) b!5131794))

(assert (= (and b!5131794 (not res!2185607)) b!5131795))

(declare-fun m!6197294 () Bool)

(assert (=> d!1660477 m!6197294))

(declare-fun m!6197296 () Bool)

(assert (=> d!1660477 m!6197296))

(declare-fun m!6197298 () Bool)

(assert (=> b!5131795 m!6197298))

(assert (=> b!5131698 d!1660477))

(assert (=> bm!357187 d!1660427))

(declare-fun d!1660479 () Bool)

(assert (=> d!1660479 (= (head!10984 lt!2117237) (h!65958 lt!2117237))))

(assert (=> b!5131699 d!1660479))

(declare-fun bs!1197901 () Bool)

(declare-fun d!1660481 () Bool)

(assert (= bs!1197901 (and d!1660481 b!5131704)))

(declare-fun lambda!254461 () Int)

(assert (=> bs!1197901 (not (= lambda!254461 lambda!254415))))

(declare-fun bs!1197902 () Bool)

(assert (= bs!1197902 (and d!1660481 d!1660423)))

(assert (=> bs!1197902 (= (= (ite c!882927 lambda!254415 lambda!254417) lambda!254376) (= lambda!254461 lambda!254426))))

(declare-fun bs!1197903 () Bool)

(assert (= bs!1197903 (and d!1660481 d!1660421)))

(assert (=> bs!1197903 (= (= (ite c!882927 lambda!254415 lambda!254417) lambda!254377) (= lambda!254461 lambda!254421))))

(declare-fun bs!1197904 () Bool)

(assert (= bs!1197904 (and d!1660481 b!5131705)))

(assert (=> bs!1197904 (not (= lambda!254461 lambda!254417))))

(declare-fun bs!1197905 () Bool)

(assert (= bs!1197905 (and d!1660481 b!5131716)))

(assert (=> bs!1197905 (not (= lambda!254461 lambda!254431))))

(declare-fun bs!1197906 () Bool)

(assert (= bs!1197906 (and d!1660481 d!1660409)))

(assert (=> bs!1197906 (not (= lambda!254461 lambda!254414))))

(declare-fun bs!1197907 () Bool)

(assert (= bs!1197907 (and d!1660481 d!1660433)))

(assert (=> bs!1197907 (not (= lambda!254461 lambda!254430))))

(declare-fun bs!1197908 () Bool)

(assert (= bs!1197908 (and d!1660481 d!1660473)))

(assert (=> bs!1197908 (= (= (ite c!882927 lambda!254415 lambda!254417) lambda!254376) (= lambda!254461 lambda!254460))))

(declare-fun bs!1197909 () Bool)

(assert (= bs!1197909 (and d!1660481 d!1660471)))

(assert (=> bs!1197909 (= (= (ite c!882927 lambda!254415 lambda!254417) lambda!254426) (= lambda!254461 lambda!254457))))

(declare-fun bs!1197910 () Bool)

(assert (= bs!1197910 (and d!1660481 b!5131717)))

(assert (=> bs!1197910 (not (= lambda!254461 lambda!254432))))

(declare-fun bs!1197911 () Bool)

(assert (= bs!1197911 (and d!1660481 b!5131648)))

(assert (=> bs!1197911 (not (= lambda!254461 lambda!254377))))

(declare-fun bs!1197912 () Bool)

(assert (= bs!1197912 (and d!1660481 b!5131647)))

(assert (=> bs!1197912 (not (= lambda!254461 lambda!254376))))

(assert (=> d!1660481 true))

(assert (=> d!1660481 (< (dynLambda!23690 order!26861 (ite c!882927 lambda!254415 lambda!254417)) (dynLambda!23690 order!26861 lambda!254461))))

(assert (=> d!1660481 (= (exists!1656 (ite c!882927 lt!2117283 lt!2117285) (ite c!882927 lambda!254415 lambda!254417)) (not (forall!13781 (ite c!882927 lt!2117283 lt!2117285) lambda!254461)))))

(declare-fun bs!1197913 () Bool)

(assert (= bs!1197913 d!1660481))

(declare-fun m!6197300 () Bool)

(assert (=> bs!1197913 m!6197300))

(assert (=> bm!357188 d!1660481))

(declare-fun d!1660483 () Bool)

(assert (=> d!1660483 (= (isEmpty!31997 (getLanguageWitness!871 z!1054)) (not (is-Some!14735 (getLanguageWitness!871 z!1054))))))

(assert (=> d!1660433 d!1660483))

(declare-fun bs!1197914 () Bool)

(declare-fun d!1660485 () Bool)

(assert (= bs!1197914 (and d!1660485 d!1660481)))

(declare-fun lambda!254468 () Int)

(assert (=> bs!1197914 (not (= lambda!254468 lambda!254461))))

(declare-fun bs!1197915 () Bool)

(assert (= bs!1197915 (and d!1660485 b!5131704)))

(assert (=> bs!1197915 (= lambda!254468 lambda!254415)))

(declare-fun bs!1197916 () Bool)

(assert (= bs!1197916 (and d!1660485 d!1660423)))

(assert (=> bs!1197916 (not (= lambda!254468 lambda!254426))))

(declare-fun bs!1197917 () Bool)

(assert (= bs!1197917 (and d!1660485 d!1660421)))

(assert (=> bs!1197917 (not (= lambda!254468 lambda!254421))))

(declare-fun bs!1197918 () Bool)

(assert (= bs!1197918 (and d!1660485 b!5131705)))

(assert (=> bs!1197918 (= lambda!254468 lambda!254417)))

(declare-fun bs!1197919 () Bool)

(assert (= bs!1197919 (and d!1660485 b!5131716)))

(assert (=> bs!1197919 (= lambda!254468 lambda!254431)))

(declare-fun bs!1197920 () Bool)

(assert (= bs!1197920 (and d!1660485 d!1660409)))

(assert (=> bs!1197920 (not (= lambda!254468 lambda!254414))))

(declare-fun bs!1197921 () Bool)

(assert (= bs!1197921 (and d!1660485 d!1660433)))

(assert (=> bs!1197921 (not (= lambda!254468 lambda!254430))))

(declare-fun bs!1197922 () Bool)

(assert (= bs!1197922 (and d!1660485 d!1660473)))

(assert (=> bs!1197922 (not (= lambda!254468 lambda!254460))))

(declare-fun bs!1197923 () Bool)

(assert (= bs!1197923 (and d!1660485 d!1660471)))

(assert (=> bs!1197923 (not (= lambda!254468 lambda!254457))))

(declare-fun bs!1197924 () Bool)

(assert (= bs!1197924 (and d!1660485 b!5131717)))

(assert (=> bs!1197924 (= lambda!254468 lambda!254432)))

(declare-fun bs!1197925 () Bool)

(assert (= bs!1197925 (and d!1660485 b!5131648)))

(assert (=> bs!1197925 (= lambda!254468 lambda!254377)))

(declare-fun bs!1197926 () Bool)

(assert (= bs!1197926 (and d!1660485 b!5131647)))

(assert (=> bs!1197926 (not (= lambda!254468 lambda!254376))))

(declare-fun lt!2117360 () Option!14736)

(declare-fun isDefined!11525 (Option!14736) Bool)

(assert (=> d!1660485 (= (isDefined!11525 lt!2117360) (exists!1655 z!1054 lambda!254468))))

(declare-fun e!3200725 () Option!14736)

(assert (=> d!1660485 (= lt!2117360 e!3200725)))

(declare-fun c!882957 () Bool)

(assert (=> d!1660485 (= c!882957 (exists!1655 z!1054 lambda!254468))))

(assert (=> d!1660485 (= (getLanguageWitness!871 z!1054) lt!2117360)))

(declare-fun b!5131800 () Bool)

(declare-fun getLanguageWitness!873 (Context!7468) Option!14736)

(declare-fun getWitness!798 ((Set Context!7468) Int) Context!7468)

(assert (=> b!5131800 (= e!3200725 (getLanguageWitness!873 (getWitness!798 z!1054 lambda!254468)))))

(declare-fun b!5131801 () Bool)

(assert (=> b!5131801 (= e!3200725 None!14735)))

(assert (= (and d!1660485 c!882957) b!5131800))

(assert (= (and d!1660485 (not c!882957)) b!5131801))

(declare-fun m!6197302 () Bool)

(assert (=> d!1660485 m!6197302))

(declare-fun m!6197304 () Bool)

(assert (=> d!1660485 m!6197304))

(assert (=> d!1660485 m!6197304))

(declare-fun m!6197306 () Bool)

(assert (=> b!5131800 m!6197306))

(assert (=> b!5131800 m!6197306))

(declare-fun m!6197308 () Bool)

(assert (=> b!5131800 m!6197308))

(assert (=> d!1660433 d!1660485))

(declare-fun d!1660487 () Bool)

(declare-fun lt!2117361 () Bool)

(assert (=> d!1660487 (= lt!2117361 (forall!13781 (toList!8335 z!1054) lambda!254430))))

(assert (=> d!1660487 (= lt!2117361 (choose!37885 z!1054 lambda!254430))))

(assert (=> d!1660487 (= (forall!13779 z!1054 lambda!254430) lt!2117361)))

(declare-fun bs!1197927 () Bool)

(assert (= bs!1197927 d!1660487))

(assert (=> bs!1197927 m!6197150))

(assert (=> bs!1197927 m!6197150))

(declare-fun m!6197310 () Bool)

(assert (=> bs!1197927 m!6197310))

(declare-fun m!6197312 () Bool)

(assert (=> bs!1197927 m!6197312))

(assert (=> d!1660433 d!1660487))

(declare-fun d!1660489 () Bool)

(assert (=> d!1660489 (= (isEmpty!31997 (getLanguageWitness!871 lt!2117236)) (not (is-Some!14735 (getLanguageWitness!871 lt!2117236))))))

(assert (=> d!1660409 d!1660489))

(declare-fun bs!1197928 () Bool)

(declare-fun d!1660491 () Bool)

(assert (= bs!1197928 (and d!1660491 d!1660481)))

(declare-fun lambda!254469 () Int)

(assert (=> bs!1197928 (not (= lambda!254469 lambda!254461))))

(declare-fun bs!1197929 () Bool)

(assert (= bs!1197929 (and d!1660491 d!1660485)))

(assert (=> bs!1197929 (= lambda!254469 lambda!254468)))

(declare-fun bs!1197930 () Bool)

(assert (= bs!1197930 (and d!1660491 b!5131704)))

(assert (=> bs!1197930 (= lambda!254469 lambda!254415)))

(declare-fun bs!1197931 () Bool)

(assert (= bs!1197931 (and d!1660491 d!1660423)))

(assert (=> bs!1197931 (not (= lambda!254469 lambda!254426))))

(declare-fun bs!1197932 () Bool)

(assert (= bs!1197932 (and d!1660491 d!1660421)))

(assert (=> bs!1197932 (not (= lambda!254469 lambda!254421))))

(declare-fun bs!1197933 () Bool)

(assert (= bs!1197933 (and d!1660491 b!5131705)))

(assert (=> bs!1197933 (= lambda!254469 lambda!254417)))

(declare-fun bs!1197934 () Bool)

(assert (= bs!1197934 (and d!1660491 b!5131716)))

(assert (=> bs!1197934 (= lambda!254469 lambda!254431)))

(declare-fun bs!1197935 () Bool)

(assert (= bs!1197935 (and d!1660491 d!1660409)))

(assert (=> bs!1197935 (not (= lambda!254469 lambda!254414))))

(declare-fun bs!1197936 () Bool)

(assert (= bs!1197936 (and d!1660491 d!1660433)))

(assert (=> bs!1197936 (not (= lambda!254469 lambda!254430))))

(declare-fun bs!1197937 () Bool)

(assert (= bs!1197937 (and d!1660491 d!1660473)))

(assert (=> bs!1197937 (not (= lambda!254469 lambda!254460))))

(declare-fun bs!1197938 () Bool)

(assert (= bs!1197938 (and d!1660491 d!1660471)))

(assert (=> bs!1197938 (not (= lambda!254469 lambda!254457))))

(declare-fun bs!1197939 () Bool)

(assert (= bs!1197939 (and d!1660491 b!5131717)))

(assert (=> bs!1197939 (= lambda!254469 lambda!254432)))

(declare-fun bs!1197940 () Bool)

(assert (= bs!1197940 (and d!1660491 b!5131648)))

(assert (=> bs!1197940 (= lambda!254469 lambda!254377)))

(declare-fun bs!1197941 () Bool)

(assert (= bs!1197941 (and d!1660491 b!5131647)))

(assert (=> bs!1197941 (not (= lambda!254469 lambda!254376))))

(declare-fun lt!2117362 () Option!14736)

(assert (=> d!1660491 (= (isDefined!11525 lt!2117362) (exists!1655 lt!2117236 lambda!254469))))

(declare-fun e!3200726 () Option!14736)

(assert (=> d!1660491 (= lt!2117362 e!3200726)))

(declare-fun c!882958 () Bool)

(assert (=> d!1660491 (= c!882958 (exists!1655 lt!2117236 lambda!254469))))

(assert (=> d!1660491 (= (getLanguageWitness!871 lt!2117236) lt!2117362)))

(declare-fun b!5131802 () Bool)

(assert (=> b!5131802 (= e!3200726 (getLanguageWitness!873 (getWitness!798 lt!2117236 lambda!254469)))))

(declare-fun b!5131803 () Bool)

(assert (=> b!5131803 (= e!3200726 None!14735)))

(assert (= (and d!1660491 c!882958) b!5131802))

(assert (= (and d!1660491 (not c!882958)) b!5131803))

(declare-fun m!6197314 () Bool)

(assert (=> d!1660491 m!6197314))

(declare-fun m!6197316 () Bool)

(assert (=> d!1660491 m!6197316))

(assert (=> d!1660491 m!6197316))

(declare-fun m!6197318 () Bool)

(assert (=> b!5131802 m!6197318))

(assert (=> b!5131802 m!6197318))

(declare-fun m!6197320 () Bool)

(assert (=> b!5131802 m!6197320))

(assert (=> d!1660409 d!1660491))

(declare-fun d!1660493 () Bool)

(declare-fun lt!2117363 () Bool)

(assert (=> d!1660493 (= lt!2117363 (forall!13781 (toList!8335 lt!2117236) lambda!254414))))

(assert (=> d!1660493 (= lt!2117363 (choose!37885 lt!2117236 lambda!254414))))

(assert (=> d!1660493 (= (forall!13779 lt!2117236 lambda!254414) lt!2117363)))

(declare-fun bs!1197942 () Bool)

(assert (= bs!1197942 d!1660493))

(assert (=> bs!1197942 m!6197076))

(assert (=> bs!1197942 m!6197076))

(declare-fun m!6197322 () Bool)

(assert (=> bs!1197942 m!6197322))

(declare-fun m!6197324 () Bool)

(assert (=> bs!1197942 m!6197324))

(assert (=> d!1660409 d!1660493))

(declare-fun bs!1197943 () Bool)

(declare-fun d!1660495 () Bool)

(assert (= bs!1197943 (and d!1660495 d!1660481)))

(declare-fun lambda!254470 () Int)

(assert (=> bs!1197943 (= (= lambda!254414 (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254470 lambda!254461))))

(declare-fun bs!1197944 () Bool)

(assert (= bs!1197944 (and d!1660495 d!1660485)))

(assert (=> bs!1197944 (not (= lambda!254470 lambda!254468))))

(declare-fun bs!1197945 () Bool)

(assert (= bs!1197945 (and d!1660495 b!5131704)))

(assert (=> bs!1197945 (not (= lambda!254470 lambda!254415))))

(declare-fun bs!1197946 () Bool)

(assert (= bs!1197946 (and d!1660495 d!1660423)))

(assert (=> bs!1197946 (= (= lambda!254414 lambda!254376) (= lambda!254470 lambda!254426))))

(declare-fun bs!1197947 () Bool)

(assert (= bs!1197947 (and d!1660495 d!1660421)))

(assert (=> bs!1197947 (= (= lambda!254414 lambda!254377) (= lambda!254470 lambda!254421))))

(declare-fun bs!1197948 () Bool)

(assert (= bs!1197948 (and d!1660495 b!5131716)))

(assert (=> bs!1197948 (not (= lambda!254470 lambda!254431))))

(declare-fun bs!1197949 () Bool)

(assert (= bs!1197949 (and d!1660495 d!1660409)))

(assert (=> bs!1197949 (not (= lambda!254470 lambda!254414))))

(declare-fun bs!1197950 () Bool)

(assert (= bs!1197950 (and d!1660495 d!1660433)))

(assert (=> bs!1197950 (not (= lambda!254470 lambda!254430))))

(declare-fun bs!1197951 () Bool)

(assert (= bs!1197951 (and d!1660495 d!1660473)))

(assert (=> bs!1197951 (= (= lambda!254414 lambda!254376) (= lambda!254470 lambda!254460))))

(declare-fun bs!1197952 () Bool)

(assert (= bs!1197952 (and d!1660495 d!1660471)))

(assert (=> bs!1197952 (= (= lambda!254414 lambda!254426) (= lambda!254470 lambda!254457))))

(declare-fun bs!1197953 () Bool)

(assert (= bs!1197953 (and d!1660495 b!5131717)))

(assert (=> bs!1197953 (not (= lambda!254470 lambda!254432))))

(declare-fun bs!1197954 () Bool)

(assert (= bs!1197954 (and d!1660495 d!1660491)))

(assert (=> bs!1197954 (not (= lambda!254470 lambda!254469))))

(declare-fun bs!1197955 () Bool)

(assert (= bs!1197955 (and d!1660495 b!5131705)))

(assert (=> bs!1197955 (not (= lambda!254470 lambda!254417))))

(declare-fun bs!1197956 () Bool)

(assert (= bs!1197956 (and d!1660495 b!5131648)))

(assert (=> bs!1197956 (not (= lambda!254470 lambda!254377))))

(declare-fun bs!1197957 () Bool)

(assert (= bs!1197957 (and d!1660495 b!5131647)))

(assert (=> bs!1197957 (not (= lambda!254470 lambda!254376))))

(assert (=> d!1660495 true))

(assert (=> d!1660495 (< (dynLambda!23690 order!26861 lambda!254414) (dynLambda!23690 order!26861 lambda!254470))))

(assert (=> d!1660495 (exists!1656 lt!2117283 lambda!254470)))

(declare-fun lt!2117364 () Unit!150783)

(assert (=> d!1660495 (= lt!2117364 (choose!37887 lt!2117283 lambda!254414))))

(assert (=> d!1660495 (not (forall!13781 lt!2117283 lambda!254414))))

(assert (=> d!1660495 (= (lemmaNotForallThenExists!383 lt!2117283 lambda!254414) lt!2117364)))

(declare-fun bs!1197958 () Bool)

(assert (= bs!1197958 d!1660495))

(declare-fun m!6197326 () Bool)

(assert (=> bs!1197958 m!6197326))

(declare-fun m!6197328 () Bool)

(assert (=> bs!1197958 m!6197328))

(declare-fun m!6197330 () Bool)

(assert (=> bs!1197958 m!6197330))

(assert (=> b!5131704 d!1660495))

(declare-fun bs!1197959 () Bool)

(declare-fun d!1660497 () Bool)

(assert (= bs!1197959 (and d!1660497 d!1660481)))

(declare-fun lambda!254473 () Int)

(assert (=> bs!1197959 (= (= lambda!254414 (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254473 lambda!254461))))

(declare-fun bs!1197960 () Bool)

(assert (= bs!1197960 (and d!1660497 d!1660485)))

(assert (=> bs!1197960 (not (= lambda!254473 lambda!254468))))

(declare-fun bs!1197961 () Bool)

(assert (= bs!1197961 (and d!1660497 b!5131704)))

(assert (=> bs!1197961 (not (= lambda!254473 lambda!254415))))

(declare-fun bs!1197962 () Bool)

(assert (= bs!1197962 (and d!1660497 d!1660423)))

(assert (=> bs!1197962 (= (= lambda!254414 lambda!254376) (= lambda!254473 lambda!254426))))

(declare-fun bs!1197963 () Bool)

(assert (= bs!1197963 (and d!1660497 d!1660495)))

(assert (=> bs!1197963 (= lambda!254473 lambda!254470)))

(declare-fun bs!1197964 () Bool)

(assert (= bs!1197964 (and d!1660497 d!1660421)))

(assert (=> bs!1197964 (= (= lambda!254414 lambda!254377) (= lambda!254473 lambda!254421))))

(declare-fun bs!1197965 () Bool)

(assert (= bs!1197965 (and d!1660497 b!5131716)))

(assert (=> bs!1197965 (not (= lambda!254473 lambda!254431))))

(declare-fun bs!1197966 () Bool)

(assert (= bs!1197966 (and d!1660497 d!1660409)))

(assert (=> bs!1197966 (not (= lambda!254473 lambda!254414))))

(declare-fun bs!1197967 () Bool)

(assert (= bs!1197967 (and d!1660497 d!1660433)))

(assert (=> bs!1197967 (not (= lambda!254473 lambda!254430))))

(declare-fun bs!1197968 () Bool)

(assert (= bs!1197968 (and d!1660497 d!1660473)))

(assert (=> bs!1197968 (= (= lambda!254414 lambda!254376) (= lambda!254473 lambda!254460))))

(declare-fun bs!1197969 () Bool)

(assert (= bs!1197969 (and d!1660497 d!1660471)))

(assert (=> bs!1197969 (= (= lambda!254414 lambda!254426) (= lambda!254473 lambda!254457))))

(declare-fun bs!1197970 () Bool)

(assert (= bs!1197970 (and d!1660497 b!5131717)))

(assert (=> bs!1197970 (not (= lambda!254473 lambda!254432))))

(declare-fun bs!1197971 () Bool)

(assert (= bs!1197971 (and d!1660497 d!1660491)))

(assert (=> bs!1197971 (not (= lambda!254473 lambda!254469))))

(declare-fun bs!1197972 () Bool)

(assert (= bs!1197972 (and d!1660497 b!5131705)))

(assert (=> bs!1197972 (not (= lambda!254473 lambda!254417))))

(declare-fun bs!1197973 () Bool)

(assert (= bs!1197973 (and d!1660497 b!5131648)))

(assert (=> bs!1197973 (not (= lambda!254473 lambda!254377))))

(declare-fun bs!1197974 () Bool)

(assert (= bs!1197974 (and d!1660497 b!5131647)))

(assert (=> bs!1197974 (not (= lambda!254473 lambda!254376))))

(assert (=> d!1660497 true))

(assert (=> d!1660497 (< (dynLambda!23690 order!26861 lambda!254414) (dynLambda!23690 order!26861 lambda!254473))))

(assert (=> d!1660497 (not (exists!1656 lt!2117285 lambda!254473))))

(declare-fun lt!2117367 () Unit!150783)

(declare-fun choose!37894 (List!59634 Int) Unit!150783)

(assert (=> d!1660497 (= lt!2117367 (choose!37894 lt!2117285 lambda!254414))))

(assert (=> d!1660497 (forall!13781 lt!2117285 lambda!254414)))

(assert (=> d!1660497 (= (lemmaForallThenNotExists!358 lt!2117285 lambda!254414) lt!2117367)))

(declare-fun bs!1197975 () Bool)

(assert (= bs!1197975 d!1660497))

(declare-fun m!6197332 () Bool)

(assert (=> bs!1197975 m!6197332))

(declare-fun m!6197334 () Bool)

(assert (=> bs!1197975 m!6197334))

(declare-fun m!6197336 () Bool)

(assert (=> bs!1197975 m!6197336))

(assert (=> b!5131705 d!1660497))

(declare-fun d!1660499 () Bool)

(assert (=> d!1660499 true))

(declare-fun setRes!31141 () Bool)

(assert (=> d!1660499 setRes!31141))

(declare-fun condSetEmpty!31141 () Bool)

(declare-fun res!2185610 () (Set Context!7468))

(assert (=> d!1660499 (= condSetEmpty!31141 (= res!2185610 (as set.empty (Set Context!7468))))))

(assert (=> d!1660499 (= (choose!37884 z!1054 lambda!254375) res!2185610)))

(declare-fun setIsEmpty!31141 () Bool)

(assert (=> setIsEmpty!31141 setRes!31141))

(declare-fun tp!1431627 () Bool)

(declare-fun setElem!31141 () Context!7468)

(declare-fun e!3200731 () Bool)

(declare-fun setNonEmpty!31141 () Bool)

(assert (=> setNonEmpty!31141 (= setRes!31141 (and tp!1431627 (inv!79057 setElem!31141) e!3200731))))

(declare-fun setRest!31141 () (Set Context!7468))

(assert (=> setNonEmpty!31141 (= res!2185610 (set.union (set.insert setElem!31141 (as set.empty (Set Context!7468))) setRest!31141))))

(declare-fun b!5131806 () Bool)

(declare-fun tp!1431626 () Bool)

(assert (=> b!5131806 (= e!3200731 tp!1431626)))

(assert (= (and d!1660499 condSetEmpty!31141) setIsEmpty!31141))

(assert (= (and d!1660499 (not condSetEmpty!31141)) setNonEmpty!31141))

(assert (= setNonEmpty!31141 b!5131806))

(declare-fun m!6197338 () Bool)

(assert (=> setNonEmpty!31141 m!6197338))

(assert (=> d!1660403 d!1660499))

(declare-fun bs!1197976 () Bool)

(declare-fun d!1660501 () Bool)

(assert (= bs!1197976 (and d!1660501 d!1660481)))

(declare-fun lambda!254474 () Int)

(assert (=> bs!1197976 (= (= lambda!254430 (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254474 lambda!254461))))

(declare-fun bs!1197977 () Bool)

(assert (= bs!1197977 (and d!1660501 d!1660497)))

(assert (=> bs!1197977 (= (= lambda!254430 lambda!254414) (= lambda!254474 lambda!254473))))

(declare-fun bs!1197978 () Bool)

(assert (= bs!1197978 (and d!1660501 d!1660485)))

(assert (=> bs!1197978 (not (= lambda!254474 lambda!254468))))

(declare-fun bs!1197979 () Bool)

(assert (= bs!1197979 (and d!1660501 b!5131704)))

(assert (=> bs!1197979 (not (= lambda!254474 lambda!254415))))

(declare-fun bs!1197980 () Bool)

(assert (= bs!1197980 (and d!1660501 d!1660423)))

(assert (=> bs!1197980 (= (= lambda!254430 lambda!254376) (= lambda!254474 lambda!254426))))

(declare-fun bs!1197981 () Bool)

(assert (= bs!1197981 (and d!1660501 d!1660495)))

(assert (=> bs!1197981 (= (= lambda!254430 lambda!254414) (= lambda!254474 lambda!254470))))

(declare-fun bs!1197982 () Bool)

(assert (= bs!1197982 (and d!1660501 d!1660421)))

(assert (=> bs!1197982 (= (= lambda!254430 lambda!254377) (= lambda!254474 lambda!254421))))

(declare-fun bs!1197983 () Bool)

(assert (= bs!1197983 (and d!1660501 b!5131716)))

(assert (=> bs!1197983 (not (= lambda!254474 lambda!254431))))

(declare-fun bs!1197984 () Bool)

(assert (= bs!1197984 (and d!1660501 d!1660409)))

(assert (=> bs!1197984 (not (= lambda!254474 lambda!254414))))

(declare-fun bs!1197985 () Bool)

(assert (= bs!1197985 (and d!1660501 d!1660433)))

(assert (=> bs!1197985 (not (= lambda!254474 lambda!254430))))

(declare-fun bs!1197986 () Bool)

(assert (= bs!1197986 (and d!1660501 d!1660473)))

(assert (=> bs!1197986 (= (= lambda!254430 lambda!254376) (= lambda!254474 lambda!254460))))

(declare-fun bs!1197987 () Bool)

(assert (= bs!1197987 (and d!1660501 d!1660471)))

(assert (=> bs!1197987 (= (= lambda!254430 lambda!254426) (= lambda!254474 lambda!254457))))

(declare-fun bs!1197988 () Bool)

(assert (= bs!1197988 (and d!1660501 b!5131717)))

(assert (=> bs!1197988 (not (= lambda!254474 lambda!254432))))

(declare-fun bs!1197989 () Bool)

(assert (= bs!1197989 (and d!1660501 d!1660491)))

(assert (=> bs!1197989 (not (= lambda!254474 lambda!254469))))

(declare-fun bs!1197990 () Bool)

(assert (= bs!1197990 (and d!1660501 b!5131705)))

(assert (=> bs!1197990 (not (= lambda!254474 lambda!254417))))

(declare-fun bs!1197991 () Bool)

(assert (= bs!1197991 (and d!1660501 b!5131648)))

(assert (=> bs!1197991 (not (= lambda!254474 lambda!254377))))

(declare-fun bs!1197992 () Bool)

(assert (= bs!1197992 (and d!1660501 b!5131647)))

(assert (=> bs!1197992 (not (= lambda!254474 lambda!254376))))

(assert (=> d!1660501 true))

(assert (=> d!1660501 (< (dynLambda!23690 order!26861 lambda!254430) (dynLambda!23690 order!26861 lambda!254474))))

(assert (=> d!1660501 (not (exists!1656 lt!2117309 lambda!254474))))

(declare-fun lt!2117368 () Unit!150783)

(assert (=> d!1660501 (= lt!2117368 (choose!37894 lt!2117309 lambda!254430))))

(assert (=> d!1660501 (forall!13781 lt!2117309 lambda!254430)))

(assert (=> d!1660501 (= (lemmaForallThenNotExists!358 lt!2117309 lambda!254430) lt!2117368)))

(declare-fun bs!1197993 () Bool)

(assert (= bs!1197993 d!1660501))

(declare-fun m!6197340 () Bool)

(assert (=> bs!1197993 m!6197340))

(declare-fun m!6197342 () Bool)

(assert (=> bs!1197993 m!6197342))

(declare-fun m!6197344 () Bool)

(assert (=> bs!1197993 m!6197344))

(assert (=> b!5131717 d!1660501))

(assert (=> bm!357189 d!1660459))

(declare-fun b!5131807 () Bool)

(declare-fun e!3200735 () Context!7468)

(assert (=> b!5131807 (= e!3200735 (getWitness!796 (t!372661 (t!372661 lt!2117237)) lambda!254377))))

(declare-fun b!5131808 () Bool)

(declare-fun e!3200734 () Context!7468)

(assert (=> b!5131808 (= e!3200734 e!3200735)))

(declare-fun c!882959 () Bool)

(assert (=> b!5131808 (= c!882959 (is-Cons!59510 (t!372661 lt!2117237)))))

(declare-fun b!5131810 () Bool)

(declare-fun e!3200732 () Bool)

(assert (=> b!5131810 (= e!3200732 (dynLambda!23689 lambda!254377 (h!65958 (t!372661 lt!2117237))))))

(declare-fun b!5131811 () Bool)

(declare-fun e!3200733 () Bool)

(declare-fun lt!2117370 () Context!7468)

(assert (=> b!5131811 (= e!3200733 (contains!19637 (t!372661 lt!2117237) lt!2117370))))

(declare-fun b!5131812 () Bool)

(declare-fun lt!2117369 () Unit!150783)

(declare-fun Unit!150797 () Unit!150783)

(assert (=> b!5131812 (= lt!2117369 Unit!150797)))

(assert (=> b!5131812 false))

(assert (=> b!5131812 (= e!3200735 (head!10984 (t!372661 lt!2117237)))))

(declare-fun d!1660503 () Bool)

(assert (=> d!1660503 e!3200733))

(declare-fun res!2185612 () Bool)

(assert (=> d!1660503 (=> (not res!2185612) (not e!3200733))))

(assert (=> d!1660503 (= res!2185612 (dynLambda!23689 lambda!254377 lt!2117370))))

(assert (=> d!1660503 (= lt!2117370 e!3200734)))

(declare-fun c!882960 () Bool)

(assert (=> d!1660503 (= c!882960 e!3200732)))

(declare-fun res!2185611 () Bool)

(assert (=> d!1660503 (=> (not res!2185611) (not e!3200732))))

(assert (=> d!1660503 (= res!2185611 (is-Cons!59510 (t!372661 lt!2117237)))))

(assert (=> d!1660503 (exists!1656 (t!372661 lt!2117237) lambda!254377)))

(assert (=> d!1660503 (= (getWitness!796 (t!372661 lt!2117237) lambda!254377) lt!2117370)))

(declare-fun b!5131809 () Bool)

(assert (=> b!5131809 (= e!3200734 (h!65958 (t!372661 lt!2117237)))))

(assert (= (and d!1660503 res!2185611) b!5131810))

(assert (= (and d!1660503 c!882960) b!5131809))

(assert (= (and d!1660503 (not c!882960)) b!5131808))

(assert (= (and b!5131808 c!882959) b!5131807))

(assert (= (and b!5131808 (not c!882959)) b!5131812))

(assert (= (and d!1660503 res!2185612) b!5131811))

(declare-fun b_lambda!199791 () Bool)

(assert (=> (not b_lambda!199791) (not b!5131810)))

(declare-fun b_lambda!199793 () Bool)

(assert (=> (not b_lambda!199793) (not d!1660503)))

(declare-fun m!6197346 () Bool)

(assert (=> b!5131810 m!6197346))

(declare-fun m!6197348 () Bool)

(assert (=> b!5131807 m!6197348))

(declare-fun m!6197350 () Bool)

(assert (=> b!5131812 m!6197350))

(declare-fun m!6197352 () Bool)

(assert (=> d!1660503 m!6197352))

(declare-fun m!6197354 () Bool)

(assert (=> d!1660503 m!6197354))

(declare-fun m!6197356 () Bool)

(assert (=> b!5131811 m!6197356))

(assert (=> b!5131694 d!1660503))

(declare-fun bs!1197994 () Bool)

(declare-fun d!1660505 () Bool)

(assert (= bs!1197994 (and d!1660505 d!1660429)))

(declare-fun lambda!254475 () Int)

(assert (=> bs!1197994 (= lambda!254475 lambda!254429)))

(assert (=> d!1660505 (= (inv!79057 setElem!31135) (forall!13782 (exprs!4234 setElem!31135) lambda!254475))))

(declare-fun bs!1197995 () Bool)

(assert (= bs!1197995 d!1660505))

(declare-fun m!6197358 () Bool)

(assert (=> bs!1197995 m!6197358))

(assert (=> setNonEmpty!31135 d!1660505))

(declare-fun bs!1197996 () Bool)

(declare-fun d!1660507 () Bool)

(assert (= bs!1197996 (and d!1660507 d!1660481)))

(declare-fun lambda!254476 () Int)

(assert (=> bs!1197996 (= (= (ite c!882928 lambda!254431 lambda!254432) (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254476 lambda!254461))))

(declare-fun bs!1197997 () Bool)

(assert (= bs!1197997 (and d!1660507 d!1660497)))

(assert (=> bs!1197997 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254414) (= lambda!254476 lambda!254473))))

(declare-fun bs!1197998 () Bool)

(assert (= bs!1197998 (and d!1660507 d!1660485)))

(assert (=> bs!1197998 (not (= lambda!254476 lambda!254468))))

(declare-fun bs!1197999 () Bool)

(assert (= bs!1197999 (and d!1660507 b!5131704)))

(assert (=> bs!1197999 (not (= lambda!254476 lambda!254415))))

(declare-fun bs!1198000 () Bool)

(assert (= bs!1198000 (and d!1660507 d!1660423)))

(assert (=> bs!1198000 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254376) (= lambda!254476 lambda!254426))))

(declare-fun bs!1198001 () Bool)

(assert (= bs!1198001 (and d!1660507 d!1660501)))

(assert (=> bs!1198001 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254430) (= lambda!254476 lambda!254474))))

(declare-fun bs!1198002 () Bool)

(assert (= bs!1198002 (and d!1660507 d!1660495)))

(assert (=> bs!1198002 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254414) (= lambda!254476 lambda!254470))))

(declare-fun bs!1198003 () Bool)

(assert (= bs!1198003 (and d!1660507 d!1660421)))

(assert (=> bs!1198003 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254377) (= lambda!254476 lambda!254421))))

(declare-fun bs!1198004 () Bool)

(assert (= bs!1198004 (and d!1660507 b!5131716)))

(assert (=> bs!1198004 (not (= lambda!254476 lambda!254431))))

(declare-fun bs!1198005 () Bool)

(assert (= bs!1198005 (and d!1660507 d!1660409)))

(assert (=> bs!1198005 (not (= lambda!254476 lambda!254414))))

(declare-fun bs!1198006 () Bool)

(assert (= bs!1198006 (and d!1660507 d!1660433)))

(assert (=> bs!1198006 (not (= lambda!254476 lambda!254430))))

(declare-fun bs!1198007 () Bool)

(assert (= bs!1198007 (and d!1660507 d!1660473)))

(assert (=> bs!1198007 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254376) (= lambda!254476 lambda!254460))))

(declare-fun bs!1198008 () Bool)

(assert (= bs!1198008 (and d!1660507 d!1660471)))

(assert (=> bs!1198008 (= (= (ite c!882928 lambda!254431 lambda!254432) lambda!254426) (= lambda!254476 lambda!254457))))

(declare-fun bs!1198009 () Bool)

(assert (= bs!1198009 (and d!1660507 b!5131717)))

(assert (=> bs!1198009 (not (= lambda!254476 lambda!254432))))

(declare-fun bs!1198010 () Bool)

(assert (= bs!1198010 (and d!1660507 d!1660491)))

(assert (=> bs!1198010 (not (= lambda!254476 lambda!254469))))

(declare-fun bs!1198011 () Bool)

(assert (= bs!1198011 (and d!1660507 b!5131705)))

(assert (=> bs!1198011 (not (= lambda!254476 lambda!254417))))

(declare-fun bs!1198012 () Bool)

(assert (= bs!1198012 (and d!1660507 b!5131648)))

(assert (=> bs!1198012 (not (= lambda!254476 lambda!254377))))

(declare-fun bs!1198013 () Bool)

(assert (= bs!1198013 (and d!1660507 b!5131647)))

(assert (=> bs!1198013 (not (= lambda!254476 lambda!254376))))

(assert (=> d!1660507 true))

(assert (=> d!1660507 (< (dynLambda!23690 order!26861 (ite c!882928 lambda!254431 lambda!254432)) (dynLambda!23690 order!26861 lambda!254476))))

(assert (=> d!1660507 (= (exists!1656 (ite c!882928 lt!2117307 lt!2117309) (ite c!882928 lambda!254431 lambda!254432)) (not (forall!13781 (ite c!882928 lt!2117307 lt!2117309) lambda!254476)))))

(declare-fun bs!1198014 () Bool)

(assert (= bs!1198014 d!1660507))

(declare-fun m!6197360 () Bool)

(assert (=> bs!1198014 m!6197360))

(assert (=> bm!357190 d!1660507))

(declare-fun bs!1198015 () Bool)

(declare-fun d!1660509 () Bool)

(assert (= bs!1198015 (and d!1660509 d!1660481)))

(declare-fun lambda!254477 () Int)

(assert (=> bs!1198015 (= (= lambda!254430 (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254477 lambda!254461))))

(declare-fun bs!1198016 () Bool)

(assert (= bs!1198016 (and d!1660509 d!1660497)))

(assert (=> bs!1198016 (= (= lambda!254430 lambda!254414) (= lambda!254477 lambda!254473))))

(declare-fun bs!1198017 () Bool)

(assert (= bs!1198017 (and d!1660509 d!1660485)))

(assert (=> bs!1198017 (not (= lambda!254477 lambda!254468))))

(declare-fun bs!1198018 () Bool)

(assert (= bs!1198018 (and d!1660509 b!5131704)))

(assert (=> bs!1198018 (not (= lambda!254477 lambda!254415))))

(declare-fun bs!1198019 () Bool)

(assert (= bs!1198019 (and d!1660509 d!1660423)))

(assert (=> bs!1198019 (= (= lambda!254430 lambda!254376) (= lambda!254477 lambda!254426))))

(declare-fun bs!1198020 () Bool)

(assert (= bs!1198020 (and d!1660509 d!1660501)))

(assert (=> bs!1198020 (= lambda!254477 lambda!254474)))

(declare-fun bs!1198021 () Bool)

(assert (= bs!1198021 (and d!1660509 d!1660495)))

(assert (=> bs!1198021 (= (= lambda!254430 lambda!254414) (= lambda!254477 lambda!254470))))

(declare-fun bs!1198022 () Bool)

(assert (= bs!1198022 (and d!1660509 d!1660421)))

(assert (=> bs!1198022 (= (= lambda!254430 lambda!254377) (= lambda!254477 lambda!254421))))

(declare-fun bs!1198023 () Bool)

(assert (= bs!1198023 (and d!1660509 b!5131716)))

(assert (=> bs!1198023 (not (= lambda!254477 lambda!254431))))

(declare-fun bs!1198024 () Bool)

(assert (= bs!1198024 (and d!1660509 d!1660409)))

(assert (=> bs!1198024 (not (= lambda!254477 lambda!254414))))

(declare-fun bs!1198025 () Bool)

(assert (= bs!1198025 (and d!1660509 d!1660433)))

(assert (=> bs!1198025 (not (= lambda!254477 lambda!254430))))

(declare-fun bs!1198026 () Bool)

(assert (= bs!1198026 (and d!1660509 d!1660473)))

(assert (=> bs!1198026 (= (= lambda!254430 lambda!254376) (= lambda!254477 lambda!254460))))

(declare-fun bs!1198027 () Bool)

(assert (= bs!1198027 (and d!1660509 d!1660507)))

(assert (=> bs!1198027 (= (= lambda!254430 (ite c!882928 lambda!254431 lambda!254432)) (= lambda!254477 lambda!254476))))

(declare-fun bs!1198028 () Bool)

(assert (= bs!1198028 (and d!1660509 d!1660471)))

(assert (=> bs!1198028 (= (= lambda!254430 lambda!254426) (= lambda!254477 lambda!254457))))

(declare-fun bs!1198029 () Bool)

(assert (= bs!1198029 (and d!1660509 b!5131717)))

(assert (=> bs!1198029 (not (= lambda!254477 lambda!254432))))

(declare-fun bs!1198030 () Bool)

(assert (= bs!1198030 (and d!1660509 d!1660491)))

(assert (=> bs!1198030 (not (= lambda!254477 lambda!254469))))

(declare-fun bs!1198031 () Bool)

(assert (= bs!1198031 (and d!1660509 b!5131705)))

(assert (=> bs!1198031 (not (= lambda!254477 lambda!254417))))

(declare-fun bs!1198032 () Bool)

(assert (= bs!1198032 (and d!1660509 b!5131648)))

(assert (=> bs!1198032 (not (= lambda!254477 lambda!254377))))

(declare-fun bs!1198033 () Bool)

(assert (= bs!1198033 (and d!1660509 b!5131647)))

(assert (=> bs!1198033 (not (= lambda!254477 lambda!254376))))

(assert (=> d!1660509 true))

(assert (=> d!1660509 (< (dynLambda!23690 order!26861 lambda!254430) (dynLambda!23690 order!26861 lambda!254477))))

(assert (=> d!1660509 (exists!1656 lt!2117307 lambda!254477)))

(declare-fun lt!2117371 () Unit!150783)

(assert (=> d!1660509 (= lt!2117371 (choose!37887 lt!2117307 lambda!254430))))

(assert (=> d!1660509 (not (forall!13781 lt!2117307 lambda!254430))))

(assert (=> d!1660509 (= (lemmaNotForallThenExists!383 lt!2117307 lambda!254430) lt!2117371)))

(declare-fun bs!1198034 () Bool)

(assert (= bs!1198034 d!1660509))

(declare-fun m!6197362 () Bool)

(assert (=> bs!1198034 m!6197362))

(declare-fun m!6197364 () Bool)

(assert (=> bs!1198034 m!6197364))

(declare-fun m!6197366 () Bool)

(assert (=> bs!1198034 m!6197366))

(assert (=> b!5131716 d!1660509))

(declare-fun d!1660511 () Bool)

(declare-fun res!2185617 () Bool)

(declare-fun e!3200740 () Bool)

(assert (=> d!1660511 (=> res!2185617 e!3200740)))

(assert (=> d!1660511 (= res!2185617 (is-Nil!59509 (exprs!4234 setElem!31129)))))

(assert (=> d!1660511 (= (forall!13782 (exprs!4234 setElem!31129) lambda!254429) e!3200740)))

(declare-fun b!5131817 () Bool)

(declare-fun e!3200741 () Bool)

(assert (=> b!5131817 (= e!3200740 e!3200741)))

(declare-fun res!2185618 () Bool)

(assert (=> b!5131817 (=> (not res!2185618) (not e!3200741))))

(declare-fun dynLambda!23693 (Int Regex!14350) Bool)

(assert (=> b!5131817 (= res!2185618 (dynLambda!23693 lambda!254429 (h!65957 (exprs!4234 setElem!31129))))))

(declare-fun b!5131818 () Bool)

(assert (=> b!5131818 (= e!3200741 (forall!13782 (t!372660 (exprs!4234 setElem!31129)) lambda!254429))))

(assert (= (and d!1660511 (not res!2185617)) b!5131817))

(assert (= (and b!5131817 res!2185618) b!5131818))

(declare-fun b_lambda!199795 () Bool)

(assert (=> (not b_lambda!199795) (not b!5131817)))

(declare-fun m!6197368 () Bool)

(assert (=> b!5131817 m!6197368))

(declare-fun m!6197370 () Bool)

(assert (=> b!5131818 m!6197370))

(assert (=> d!1660429 d!1660511))

(declare-fun bs!1198035 () Bool)

(declare-fun d!1660513 () Bool)

(assert (= bs!1198035 (and d!1660513 d!1660429)))

(declare-fun lambda!254480 () Int)

(assert (=> bs!1198035 (not (= lambda!254480 lambda!254429))))

(declare-fun bs!1198036 () Bool)

(assert (= bs!1198036 (and d!1660513 d!1660505)))

(assert (=> bs!1198036 (not (= lambda!254480 lambda!254475))))

(declare-fun exists!1659 (List!59633 Int) Bool)

(assert (=> d!1660513 (= (lostCause!1293 lt!2117257) (exists!1659 (exprs!4234 lt!2117257) lambda!254480))))

(declare-fun bs!1198037 () Bool)

(assert (= bs!1198037 d!1660513))

(declare-fun m!6197372 () Bool)

(assert (=> bs!1198037 m!6197372))

(assert (=> bs!1197829 d!1660513))

(declare-fun bs!1198038 () Bool)

(declare-fun d!1660515 () Bool)

(assert (= bs!1198038 (and d!1660515 d!1660481)))

(declare-fun lambda!254481 () Int)

(assert (=> bs!1198038 (= (= lambda!254377 (ite c!882927 lambda!254415 lambda!254417)) (= lambda!254481 lambda!254461))))

(declare-fun bs!1198039 () Bool)

(assert (= bs!1198039 (and d!1660515 d!1660509)))

(assert (=> bs!1198039 (= (= lambda!254377 lambda!254430) (= lambda!254481 lambda!254477))))

(declare-fun bs!1198040 () Bool)

(assert (= bs!1198040 (and d!1660515 d!1660497)))

(assert (=> bs!1198040 (= (= lambda!254377 lambda!254414) (= lambda!254481 lambda!254473))))

(declare-fun bs!1198041 () Bool)

(assert (= bs!1198041 (and d!1660515 d!1660485)))

(assert (=> bs!1198041 (not (= lambda!254481 lambda!254468))))

(declare-fun bs!1198042 () Bool)

(assert (= bs!1198042 (and d!1660515 b!5131704)))

(assert (=> bs!1198042 (not (= lambda!254481 lambda!254415))))

(declare-fun bs!1198043 () Bool)

(assert (= bs!1198043 (and d!1660515 d!1660423)))

(assert (=> bs!1198043 (= (= lambda!254377 lambda!254376) (= lambda!254481 lambda!254426))))

(declare-fun bs!1198044 () Bool)

(assert (= bs!1198044 (and d!1660515 d!1660501)))

(assert (=> bs!1198044 (= (= lambda!254377 lambda!254430) (= lambda!254481 lambda!254474))))

(declare-fun bs!1198045 () Bool)

(assert (= bs!1198045 (and d!1660515 d!1660495)))

(assert (=> bs!1198045 (= (= lambda!254377 lambda!254414) (= lambda!254481 lambda!254470))))

(declare-fun bs!1198046 () Bool)

(assert (= bs!1198046 (and d!1660515 d!1660421)))

(assert (=> bs!1198046 (= lambda!254481 lambda!254421)))

(declare-fun bs!1198047 () Bool)

(assert (= bs!1198047 (and d!1660515 b!5131716)))

(assert (=> bs!1198047 (not (= lambda!254481 lambda!254431))))

(declare-fun bs!1198048 () Bool)

(assert (= bs!1198048 (and d!1660515 d!1660409)))

(assert (=> bs!1198048 (not (= lambda!254481 lambda!254414))))

(declare-fun bs!1198049 () Bool)

(assert (= bs!1198049 (and d!1660515 d!1660433)))

(assert (=> bs!1198049 (not (= lambda!254481 lambda!254430))))

(declare-fun bs!1198050 () Bool)

(assert (= bs!1198050 (and d!1660515 d!1660473)))

(assert (=> bs!1198050 (= (= lambda!254377 lambda!254376) (= lambda!254481 lambda!254460))))

(declare-fun bs!1198051 () Bool)

(assert (= bs!1198051 (and d!1660515 d!1660507)))

(assert (=> bs!1198051 (= (= lambda!254377 (ite c!882928 lambda!254431 lambda!254432)) (= lambda!254481 lambda!254476))))

(declare-fun bs!1198052 () Bool)

(assert (= bs!1198052 (and d!1660515 d!1660471)))

(assert (=> bs!1198052 (= (= lambda!254377 lambda!254426) (= lambda!254481 lambda!254457))))

(declare-fun bs!1198053 () Bool)

(assert (= bs!1198053 (and d!1660515 b!5131717)))

(assert (=> bs!1198053 (not (= lambda!254481 lambda!254432))))

(declare-fun bs!1198054 () Bool)

(assert (= bs!1198054 (and d!1660515 d!1660491)))

(assert (=> bs!1198054 (not (= lambda!254481 lambda!254469))))

(declare-fun bs!1198055 () Bool)

(assert (= bs!1198055 (and d!1660515 b!5131705)))

(assert (=> bs!1198055 (not (= lambda!254481 lambda!254417))))

(declare-fun bs!1198056 () Bool)

(assert (= bs!1198056 (and d!1660515 b!5131648)))

(assert (=> bs!1198056 (not (= lambda!254481 lambda!254377))))

(declare-fun bs!1198057 () Bool)

(assert (= bs!1198057 (and d!1660515 b!5131647)))

(assert (=> bs!1198057 (not (= lambda!254481 lambda!254376))))

(assert (=> d!1660515 true))

(assert (=> d!1660515 (< (dynLambda!23690 order!26861 lambda!254377) (dynLambda!23690 order!26861 lambda!254481))))

(assert (=> d!1660515 (= (exists!1656 (toList!8335 lt!2117236) lambda!254377) (not (forall!13781 (toList!8335 lt!2117236) lambda!254481)))))

(declare-fun bs!1198058 () Bool)

(assert (= bs!1198058 d!1660515))

(assert (=> bs!1198058 m!6197076))

(declare-fun m!6197374 () Bool)

(assert (=> bs!1198058 m!6197374))

(assert (=> d!1660419 d!1660515))

(assert (=> d!1660419 d!1660427))

(declare-fun d!1660517 () Bool)

(declare-fun res!2185621 () Bool)

(assert (=> d!1660517 (= res!2185621 (exists!1656 (toList!8335 lt!2117236) lambda!254377))))

(assert (=> d!1660517 true))

(assert (=> d!1660517 (= (choose!37886 lt!2117236 lambda!254377) res!2185621)))

(declare-fun bs!1198059 () Bool)

(assert (= bs!1198059 d!1660517))

(assert (=> bs!1198059 m!6197076))

(assert (=> bs!1198059 m!6197076))

(assert (=> bs!1198059 m!6197156))

(assert (=> d!1660419 d!1660517))

(declare-fun d!1660519 () Bool)

(assert (=> d!1660519 (= (flatMap!401 z!1054 lambda!254399) (choose!37884 z!1054 lambda!254399))))

(declare-fun bs!1198060 () Bool)

(assert (= bs!1198060 d!1660519))

(declare-fun m!6197376 () Bool)

(assert (=> bs!1198060 m!6197376))

(assert (=> d!1660405 d!1660519))

(declare-fun d!1660521 () Bool)

(declare-fun res!2185622 () Bool)

(declare-fun e!3200742 () Bool)

(assert (=> d!1660521 (=> res!2185622 e!3200742)))

(assert (=> d!1660521 (= res!2185622 (is-Nil!59510 lt!2117237))))

(assert (=> d!1660521 (= (forall!13781 lt!2117237 lambda!254421) e!3200742)))

(declare-fun b!5131819 () Bool)

(declare-fun e!3200743 () Bool)

(assert (=> b!5131819 (= e!3200742 e!3200743)))

(declare-fun res!2185623 () Bool)

(assert (=> b!5131819 (=> (not res!2185623) (not e!3200743))))

(assert (=> b!5131819 (= res!2185623 (dynLambda!23689 lambda!254421 (h!65958 lt!2117237)))))

(declare-fun b!5131820 () Bool)

(assert (=> b!5131820 (= e!3200743 (forall!13781 (t!372661 lt!2117237) lambda!254421))))

(assert (= (and d!1660521 (not res!2185622)) b!5131819))

(assert (= (and b!5131819 res!2185623) b!5131820))

(declare-fun b_lambda!199797 () Bool)

(assert (=> (not b_lambda!199797) (not b!5131819)))

(declare-fun m!6197378 () Bool)

(assert (=> b!5131819 m!6197378))

(declare-fun m!6197380 () Bool)

(assert (=> b!5131820 m!6197380))

(assert (=> d!1660421 d!1660521))

(declare-fun d!1660523 () Bool)

(declare-fun c!882963 () Bool)

(assert (=> d!1660523 (= c!882963 (is-Nil!59510 lt!2117302))))

(declare-fun e!3200746 () (Set Context!7468))

(assert (=> d!1660523 (= (content!10571 lt!2117302) e!3200746)))

(declare-fun b!5131825 () Bool)

(assert (=> b!5131825 (= e!3200746 (as set.empty (Set Context!7468)))))

(declare-fun b!5131826 () Bool)

(assert (=> b!5131826 (= e!3200746 (set.union (set.insert (h!65958 lt!2117302) (as set.empty (Set Context!7468))) (content!10571 (t!372661 lt!2117302))))))

(assert (= (and d!1660523 c!882963) b!5131825))

(assert (= (and d!1660523 (not c!882963)) b!5131826))

(declare-fun m!6197382 () Bool)

(assert (=> b!5131826 m!6197382))

(declare-fun m!6197384 () Bool)

(assert (=> b!5131826 m!6197384))

(assert (=> b!5131712 d!1660523))

(declare-fun bs!1198061 () Bool)

(declare-fun d!1660525 () Bool)

(assert (= bs!1198061 (and d!1660525 d!1660429)))

(declare-fun lambda!254482 () Int)

(assert (=> bs!1198061 (not (= lambda!254482 lambda!254429))))

(declare-fun bs!1198062 () Bool)

(assert (= bs!1198062 (and d!1660525 d!1660505)))

(assert (=> bs!1198062 (not (= lambda!254482 lambda!254475))))

(declare-fun bs!1198063 () Bool)

(assert (= bs!1198063 (and d!1660525 d!1660513)))

(assert (=> bs!1198063 (= lambda!254482 lambda!254480)))

(assert (=> d!1660525 (= (lostCause!1293 (h!65958 lt!2117237)) (exists!1659 (exprs!4234 (h!65958 lt!2117237)) lambda!254482))))

(declare-fun bs!1198064 () Bool)

(assert (= bs!1198064 d!1660525))

(declare-fun m!6197386 () Bool)

(assert (=> bs!1198064 m!6197386))

(assert (=> bs!1197828 d!1660525))

(declare-fun b!5131840 () Bool)

(declare-fun e!3200749 () Bool)

(declare-fun tp!1431638 () Bool)

(declare-fun tp!1431642 () Bool)

(assert (=> b!5131840 (= e!3200749 (and tp!1431638 tp!1431642))))

(assert (=> b!5131722 (= tp!1431596 e!3200749)))

(declare-fun b!5131839 () Bool)

(declare-fun tp!1431640 () Bool)

(assert (=> b!5131839 (= e!3200749 tp!1431640)))

(declare-fun b!5131838 () Bool)

(declare-fun tp!1431641 () Bool)

(declare-fun tp!1431639 () Bool)

(assert (=> b!5131838 (= e!3200749 (and tp!1431641 tp!1431639))))

(declare-fun b!5131837 () Bool)

(assert (=> b!5131837 (= e!3200749 tp_is_empty!37873)))

(assert (= (and b!5131722 (is-ElementMatch!14350 (h!65957 (exprs!4234 setElem!31129)))) b!5131837))

(assert (= (and b!5131722 (is-Concat!23195 (h!65957 (exprs!4234 setElem!31129)))) b!5131838))

(assert (= (and b!5131722 (is-Star!14350 (h!65957 (exprs!4234 setElem!31129)))) b!5131839))

(assert (= (and b!5131722 (is-Union!14350 (h!65957 (exprs!4234 setElem!31129)))) b!5131840))

(declare-fun b!5131841 () Bool)

(declare-fun e!3200750 () Bool)

(declare-fun tp!1431643 () Bool)

(declare-fun tp!1431644 () Bool)

(assert (=> b!5131841 (= e!3200750 (and tp!1431643 tp!1431644))))

(assert (=> b!5131722 (= tp!1431597 e!3200750)))

(assert (= (and b!5131722 (is-Cons!59509 (t!372660 (exprs!4234 setElem!31129)))) b!5131841))

(declare-fun condSetEmpty!31142 () Bool)

(assert (=> setNonEmpty!31135 (= condSetEmpty!31142 (= setRest!31135 (as set.empty (Set Context!7468))))))

(declare-fun setRes!31142 () Bool)

(assert (=> setNonEmpty!31135 (= tp!1431603 setRes!31142)))

(declare-fun setIsEmpty!31142 () Bool)

(assert (=> setIsEmpty!31142 setRes!31142))

(declare-fun setElem!31142 () Context!7468)

(declare-fun tp!1431646 () Bool)

(declare-fun setNonEmpty!31142 () Bool)

(declare-fun e!3200751 () Bool)

(assert (=> setNonEmpty!31142 (= setRes!31142 (and tp!1431646 (inv!79057 setElem!31142) e!3200751))))

(declare-fun setRest!31142 () (Set Context!7468))

(assert (=> setNonEmpty!31142 (= setRest!31135 (set.union (set.insert setElem!31142 (as set.empty (Set Context!7468))) setRest!31142))))

(declare-fun b!5131842 () Bool)

(declare-fun tp!1431645 () Bool)

(assert (=> b!5131842 (= e!3200751 tp!1431645)))

(assert (= (and setNonEmpty!31135 condSetEmpty!31142) setIsEmpty!31142))

(assert (= (and setNonEmpty!31135 (not condSetEmpty!31142)) setNonEmpty!31142))

(assert (= setNonEmpty!31142 b!5131842))

(declare-fun m!6197388 () Bool)

(assert (=> setNonEmpty!31142 m!6197388))

(declare-fun b!5131843 () Bool)

(declare-fun e!3200752 () Bool)

(declare-fun tp!1431647 () Bool)

(declare-fun tp!1431648 () Bool)

(assert (=> b!5131843 (= e!3200752 (and tp!1431647 tp!1431648))))

(assert (=> b!5131727 (= tp!1431602 e!3200752)))

(assert (= (and b!5131727 (is-Cons!59509 (exprs!4234 setElem!31135))) b!5131843))

(declare-fun b_lambda!199799 () Bool)

(assert (= b_lambda!199793 (or b!5131648 b_lambda!199799)))

(declare-fun bs!1198065 () Bool)

(declare-fun d!1660527 () Bool)

(assert (= bs!1198065 (and d!1660527 b!5131648)))

(assert (=> bs!1198065 (= (dynLambda!23689 lambda!254377 lt!2117370) (not (lostCause!1293 lt!2117370)))))

(declare-fun m!6197390 () Bool)

(assert (=> bs!1198065 m!6197390))

(assert (=> d!1660503 d!1660527))

(declare-fun b_lambda!199801 () Bool)

(assert (= b_lambda!199795 (or d!1660429 b_lambda!199801)))

(declare-fun bs!1198066 () Bool)

(declare-fun d!1660529 () Bool)

(assert (= bs!1198066 (and d!1660529 d!1660429)))

(declare-fun validRegex!6241 (Regex!14350) Bool)

(assert (=> bs!1198066 (= (dynLambda!23693 lambda!254429 (h!65957 (exprs!4234 setElem!31129))) (validRegex!6241 (h!65957 (exprs!4234 setElem!31129))))))

(declare-fun m!6197392 () Bool)

(assert (=> bs!1198066 m!6197392))

(assert (=> b!5131817 d!1660529))

(declare-fun b_lambda!199803 () Bool)

(assert (= b_lambda!199791 (or b!5131648 b_lambda!199803)))

(declare-fun bs!1198067 () Bool)

(declare-fun d!1660531 () Bool)

(assert (= bs!1198067 (and d!1660531 b!5131648)))

(assert (=> bs!1198067 (= (dynLambda!23689 lambda!254377 (h!65958 (t!372661 lt!2117237))) (not (lostCause!1293 (h!65958 (t!372661 lt!2117237)))))))

(declare-fun m!6197394 () Bool)

(assert (=> bs!1198067 m!6197394))

(assert (=> b!5131810 d!1660531))

(declare-fun b_lambda!199805 () Bool)

(assert (= b_lambda!199789 (or b!5131647 b_lambda!199805)))

(declare-fun bs!1198068 () Bool)

(declare-fun d!1660533 () Bool)

(assert (= bs!1198068 (and d!1660533 b!5131647)))

(assert (=> bs!1198068 (= (dynLambda!23689 lambda!254376 (h!65958 lt!2117237)) (lostCause!1293 (h!65958 lt!2117237)))))

(assert (=> bs!1198068 m!6197206))

(assert (=> b!5131788 d!1660533))

(declare-fun b_lambda!199807 () Bool)

(assert (= b_lambda!199785 (or b!5131647 b_lambda!199807)))

(declare-fun bs!1198069 () Bool)

(declare-fun d!1660535 () Bool)

(assert (= bs!1198069 (and d!1660535 b!5131647)))

(assert (=> bs!1198069 (= (dynLambda!23689 lambda!254376 (h!65958 (toList!8335 z!1054))) (lostCause!1293 (h!65958 (toList!8335 z!1054))))))

(declare-fun m!6197396 () Bool)

(assert (=> bs!1198069 m!6197396))

(assert (=> b!5131768 d!1660535))

(declare-fun b_lambda!199809 () Bool)

(assert (= b_lambda!199787 (or b!5131647 b_lambda!199809)))

(declare-fun bs!1198070 () Bool)

(declare-fun d!1660537 () Bool)

(assert (= bs!1198070 (and d!1660537 b!5131647)))

(assert (=> bs!1198070 (= (dynLambda!23689 lambda!254376 (h!65958 (toList!8335 lt!2117236))) (lostCause!1293 (h!65958 (toList!8335 lt!2117236))))))

(declare-fun m!6197398 () Bool)

(assert (=> bs!1198070 m!6197398))

(assert (=> b!5131786 d!1660537))

(declare-fun b_lambda!199811 () Bool)

(assert (= b_lambda!199797 (or d!1660421 b_lambda!199811)))

(declare-fun bs!1198071 () Bool)

(declare-fun d!1660539 () Bool)

(assert (= bs!1198071 (and d!1660539 d!1660421)))

(assert (=> bs!1198071 (= (dynLambda!23689 lambda!254421 (h!65958 lt!2117237)) (not (dynLambda!23689 lambda!254377 (h!65958 lt!2117237))))))

(declare-fun b_lambda!199813 () Bool)

(assert (=> (not b_lambda!199813) (not bs!1198071)))

(assert (=> bs!1198071 m!6197114))

(assert (=> b!5131819 d!1660539))

(push 1)

(assert (not d!1660519))

(assert (not b_lambda!199809))

(assert (not d!1660461))

(assert (not b!5131820))

(assert (not d!1660477))

(assert (not b!5131775))

(assert (not b!5131842))

(assert (not b_lambda!199803))

(assert (not d!1660501))

(assert (not d!1660469))

(assert (not b!5131838))

(assert (not b!5131795))

(assert (not bs!1198068))

(assert (not b!5131806))

(assert (not b!5131776))

(assert (not b_lambda!199773))

(assert (not d!1660515))

(assert (not b!5131826))

(assert (not setNonEmpty!31142))

(assert (not b_lambda!199799))

(assert (not d!1660495))

(assert (not d!1660497))

(assert (not b!5131800))

(assert (not b!5131807))

(assert (not d!1660517))

(assert (not b!5131769))

(assert (not b!5131789))

(assert (not b_lambda!199805))

(assert (not b_lambda!199811))

(assert (not b!5131802))

(assert (not d!1660509))

(assert (not b!5131843))

(assert (not bs!1198067))

(assert tp_is_empty!37873)

(assert (not bs!1198069))

(assert (not b!5131818))

(assert (not bs!1198066))

(assert (not b!5131787))

(assert (not d!1660507))

(assert (not setNonEmpty!31141))

(assert (not d!1660465))

(assert (not d!1660513))

(assert (not d!1660525))

(assert (not b_lambda!199807))

(assert (not b_lambda!199801))

(assert (not b!5131785))

(assert (not d!1660505))

(assert (not d!1660473))

(assert (not d!1660487))

(assert (not b!5131784))

(assert (not d!1660485))

(assert (not b!5131770))

(assert (not bs!1198070))

(assert (not b!5131783))

(assert (not d!1660481))

(assert (not b!5131840))

(assert (not b!5131811))

(assert (not b_lambda!199813))

(assert (not d!1660503))

(assert (not b!5131841))

(assert (not b!5131839))

(assert (not d!1660471))

(assert (not d!1660493))

(assert (not b!5131812))

(assert (not d!1660459))

(assert (not b_lambda!199775))

(assert (not bs!1198065))

(assert (not d!1660491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

