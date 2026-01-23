; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721876 () Bool)

(assert start!721876)

(declare-fun b!7409632 () Bool)

(assert (=> b!7409632 true))

(declare-fun b!7409631 () Bool)

(assert (=> b!7409631 true))

(declare-fun lambda!459878 () Int)

(declare-fun lambda!459877 () Int)

(assert (=> b!7409631 (not (= lambda!459878 lambda!459877))))

(assert (=> b!7409631 true))

(assert (=> b!7409631 true))

(declare-fun b!7409624 () Bool)

(declare-fun e!4431609 () Bool)

(declare-fun tp!2120019 () Bool)

(assert (=> b!7409624 (= e!4431609 tp!2120019)))

(declare-fun b!7409625 () Bool)

(declare-fun e!4431610 () Bool)

(declare-datatypes ((C!39098 0))(
  ( (C!39099 (val!29923 Int)) )
))
(declare-datatypes ((Regex!19412 0))(
  ( (ElementMatch!19412 (c!1375355 C!39098)) (Concat!28257 (regOne!39336 Regex!19412) (regTwo!39336 Regex!19412)) (EmptyExpr!19412) (Star!19412 (reg!19741 Regex!19412)) (EmptyLang!19412) (Union!19412 (regOne!39337 Regex!19412) (regTwo!39337 Regex!19412)) )
))
(declare-datatypes ((List!72022 0))(
  ( (Nil!71898) (Cons!71898 (h!78346 Regex!19412) (t!386581 List!72022)) )
))
(declare-datatypes ((Context!16704 0))(
  ( (Context!16705 (exprs!8852 List!72022)) )
))
(declare-fun z!3451 () (Set Context!16704))

(declare-datatypes ((List!72023 0))(
  ( (Nil!71899) (Cons!71899 (h!78347 C!39098) (t!386582 List!72023)) )
))
(declare-fun s!7927 () List!72023)

(declare-fun matchZipper!3812 ((Set Context!16704) List!72023) Bool)

(assert (=> b!7409625 (= e!4431610 (not (matchZipper!3812 z!3451 s!7927)))))

(declare-fun lt!2618819 () (Set Context!16704))

(assert (=> b!7409625 (not (matchZipper!3812 lt!2618819 (t!386582 s!7927)))))

(declare-datatypes ((Unit!165720 0))(
  ( (Unit!165721) )
))
(declare-fun lt!2618818 () Unit!165720)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!67 ((Set Context!16704) List!72023) Unit!165720)

(assert (=> b!7409625 (= lt!2618818 (lemmaZipperOfEmptyContextMatchesEmptyString!67 lt!2618819 (t!386582 s!7927)))))

(declare-fun b!7409626 () Bool)

(declare-fun res!2982930 () Bool)

(declare-fun e!4431614 () Bool)

(assert (=> b!7409626 (=> (not res!2982930) (not e!4431614))))

(declare-fun c!10532 () Context!16704)

(declare-fun isEmpty!41058 (List!72022) Bool)

(assert (=> b!7409626 (= res!2982930 (not (isEmpty!41058 (exprs!8852 c!10532))))))

(declare-fun b!7409627 () Bool)

(declare-fun res!2982927 () Bool)

(assert (=> b!7409627 (=> (not res!2982927) (not e!4431614))))

(declare-fun a!2228 () C!39098)

(assert (=> b!7409627 (= res!2982927 (and (is-Cons!71899 s!7927) (= (h!78347 s!7927) a!2228)))))

(declare-fun b!7409628 () Bool)

(declare-fun res!2982933 () Bool)

(assert (=> b!7409628 (=> (not res!2982933) (not e!4431614))))

(declare-fun head!15214 (List!72022) Regex!19412)

(assert (=> b!7409628 (= res!2982933 (= (head!15214 (exprs!8852 c!10532)) (ElementMatch!19412 a!2228)))))

(declare-fun e!4431612 () Bool)

(declare-fun setNonEmpty!56280 () Bool)

(declare-fun setRes!56280 () Bool)

(declare-fun setElem!56280 () Context!16704)

(declare-fun tp!2120016 () Bool)

(declare-fun inv!91892 (Context!16704) Bool)

(assert (=> setNonEmpty!56280 (= setRes!56280 (and tp!2120016 (inv!91892 setElem!56280) e!4431612))))

(declare-fun setRest!56280 () (Set Context!16704))

(assert (=> setNonEmpty!56280 (= z!3451 (set.union (set.insert setElem!56280 (as set.empty (Set Context!16704))) setRest!56280))))

(declare-fun setIsEmpty!56280 () Bool)

(assert (=> setIsEmpty!56280 setRes!56280))

(declare-fun b!7409629 () Bool)

(declare-fun e!4431606 () Bool)

(assert (=> b!7409629 (= e!4431614 e!4431606)))

(declare-fun res!2982929 () Bool)

(assert (=> b!7409629 (=> (not res!2982929) (not e!4431606))))

(declare-fun lt!2618822 () C!39098)

(declare-fun lt!2618825 () (Set Context!16704))

(declare-fun derivationStepZipperUp!2816 (Context!16704 C!39098) (Set Context!16704))

(assert (=> b!7409629 (= res!2982929 (= (derivationStepZipperUp!2816 c!10532 lt!2618822) lt!2618825))))

(declare-fun lt!2618817 () Context!16704)

(assert (=> b!7409629 (= lt!2618825 (set.insert lt!2618817 (as set.empty (Set Context!16704))))))

(assert (=> b!7409629 (= lt!2618817 (Context!16705 Nil!71898))))

(declare-fun derivationStepZipper!3686 ((Set Context!16704) C!39098) (Set Context!16704))

(assert (=> b!7409629 (= lt!2618819 (derivationStepZipper!3686 z!3451 lt!2618822))))

(declare-fun head!15215 (List!72023) C!39098)

(assert (=> b!7409629 (= lt!2618822 (head!15215 s!7927))))

(declare-fun b!7409630 () Bool)

(declare-fun e!4431608 () Unit!165720)

(declare-fun Unit!165722 () Unit!165720)

(assert (=> b!7409630 (= e!4431608 Unit!165722)))

(declare-fun e!4431613 () Bool)

(assert (=> b!7409632 (= e!4431606 (not e!4431613))))

(declare-fun res!2982931 () Bool)

(assert (=> b!7409632 (=> res!2982931 e!4431613)))

(assert (=> b!7409632 (= res!2982931 (not (set.member lt!2618817 lt!2618819)))))

(declare-fun lambda!459876 () Int)

(declare-fun lt!2618816 () Context!16704)

(declare-fun flatMapPost!219 ((Set Context!16704) Int Context!16704) Context!16704)

(assert (=> b!7409632 (= (flatMapPost!219 z!3451 lambda!459876 lt!2618817) lt!2618816)))

(declare-fun empty!3595 () Context!16704)

(assert (=> b!7409632 (= lt!2618816 empty!3595)))

(assert (=> b!7409632 true))

(declare-fun e!4431607 () Bool)

(assert (=> b!7409632 (and (inv!91892 empty!3595) e!4431607)))

(declare-fun b!7409633 () Bool)

(declare-fun e!4431611 () Bool)

(declare-fun tp_is_empty!49087 () Bool)

(declare-fun tp!2120017 () Bool)

(assert (=> b!7409633 (= e!4431611 (and tp_is_empty!49087 tp!2120017))))

(declare-fun b!7409634 () Bool)

(declare-fun res!2982934 () Bool)

(assert (=> b!7409634 (=> (not res!2982934) (not e!4431614))))

(declare-fun tail!14823 (List!72022) List!72022)

(assert (=> b!7409634 (= res!2982934 (isEmpty!41058 (tail!14823 (exprs!8852 c!10532))))))

(declare-fun b!7409635 () Bool)

(assert (=> b!7409635 (= e!4431613 e!4431610)))

(declare-fun res!2982932 () Bool)

(assert (=> b!7409635 (=> res!2982932 e!4431610)))

(declare-fun isEmpty!41059 (List!72023) Bool)

(assert (=> b!7409635 (= res!2982932 (isEmpty!41059 (t!386582 s!7927)))))

(declare-fun lt!2618821 () Bool)

(assert (=> b!7409635 lt!2618821))

(declare-fun lt!2618823 () Unit!165720)

(assert (=> b!7409635 (= lt!2618823 e!4431608)))

(declare-fun c!1375354 () Bool)

(assert (=> b!7409635 (= c!1375354 (not lt!2618821))))

(assert (=> b!7409635 (= lt!2618821 (= lt!2618819 lt!2618825))))

(declare-fun b!7409636 () Bool)

(declare-fun tp!2120015 () Bool)

(assert (=> b!7409636 (= e!4431612 tp!2120015)))

(declare-fun b!7409637 () Bool)

(declare-fun tp!2120018 () Bool)

(assert (=> b!7409637 (= e!4431607 tp!2120018)))

(declare-fun res!2982928 () Bool)

(assert (=> start!721876 (=> (not res!2982928) (not e!4431614))))

(assert (=> start!721876 (= res!2982928 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16704)))))))

(assert (=> start!721876 e!4431614))

(declare-fun condSetEmpty!56280 () Bool)

(assert (=> start!721876 (= condSetEmpty!56280 (= z!3451 (as set.empty (Set Context!16704))))))

(assert (=> start!721876 setRes!56280))

(assert (=> start!721876 (and (inv!91892 c!10532) e!4431609)))

(assert (=> start!721876 tp_is_empty!49087))

(assert (=> start!721876 e!4431611))

(declare-fun Unit!165723 () Unit!165720)

(assert (=> b!7409631 (= e!4431608 Unit!165723)))

(declare-fun lt!2618824 () Context!16704)

(declare-fun getWitness!2457 ((Set Context!16704) Int) Context!16704)

(assert (=> b!7409631 (= lt!2618824 (getWitness!2457 lt!2618819 lambda!459877))))

(assert (=> b!7409631 (= (flatMapPost!219 z!3451 lambda!459876 lt!2618824) lt!2618816)))

(declare-fun lt!2618820 () Context!16704)

(assert (=> b!7409631 (= lt!2618820 (getWitness!2457 z!3451 lambda!459878))))

(assert (=> b!7409631 false))

(assert (= (and start!721876 res!2982928) b!7409626))

(assert (= (and b!7409626 res!2982930) b!7409628))

(assert (= (and b!7409628 res!2982933) b!7409634))

(assert (= (and b!7409634 res!2982934) b!7409627))

(assert (= (and b!7409627 res!2982927) b!7409629))

(assert (= (and b!7409629 res!2982929) b!7409632))

(assert (= b!7409632 b!7409637))

(assert (= (and b!7409632 (not res!2982931)) b!7409635))

(assert (= (and b!7409635 c!1375354) b!7409631))

(assert (= (and b!7409635 (not c!1375354)) b!7409630))

(assert (= (and b!7409635 (not res!2982932)) b!7409625))

(assert (= (and start!721876 condSetEmpty!56280) setIsEmpty!56280))

(assert (= (and start!721876 (not condSetEmpty!56280)) setNonEmpty!56280))

(assert (= setNonEmpty!56280 b!7409636))

(assert (= start!721876 b!7409624))

(assert (= (and start!721876 (is-Cons!71899 s!7927)) b!7409633))

(declare-fun m!8045024 () Bool)

(assert (=> start!721876 m!8045024))

(declare-fun m!8045026 () Bool)

(assert (=> start!721876 m!8045026))

(declare-fun m!8045028 () Bool)

(assert (=> b!7409625 m!8045028))

(declare-fun m!8045030 () Bool)

(assert (=> b!7409625 m!8045030))

(declare-fun m!8045032 () Bool)

(assert (=> b!7409625 m!8045032))

(declare-fun m!8045034 () Bool)

(assert (=> setNonEmpty!56280 m!8045034))

(declare-fun m!8045036 () Bool)

(assert (=> b!7409634 m!8045036))

(assert (=> b!7409634 m!8045036))

(declare-fun m!8045038 () Bool)

(assert (=> b!7409634 m!8045038))

(declare-fun m!8045040 () Bool)

(assert (=> b!7409632 m!8045040))

(declare-fun m!8045042 () Bool)

(assert (=> b!7409632 m!8045042))

(declare-fun m!8045044 () Bool)

(assert (=> b!7409632 m!8045044))

(declare-fun m!8045046 () Bool)

(assert (=> b!7409626 m!8045046))

(declare-fun m!8045048 () Bool)

(assert (=> b!7409631 m!8045048))

(declare-fun m!8045050 () Bool)

(assert (=> b!7409631 m!8045050))

(declare-fun m!8045052 () Bool)

(assert (=> b!7409631 m!8045052))

(declare-fun m!8045054 () Bool)

(assert (=> b!7409628 m!8045054))

(declare-fun m!8045056 () Bool)

(assert (=> b!7409629 m!8045056))

(declare-fun m!8045058 () Bool)

(assert (=> b!7409629 m!8045058))

(declare-fun m!8045060 () Bool)

(assert (=> b!7409629 m!8045060))

(declare-fun m!8045062 () Bool)

(assert (=> b!7409629 m!8045062))

(declare-fun m!8045064 () Bool)

(assert (=> b!7409635 m!8045064))

(push 1)

(assert (not b!7409631))

(assert (not b!7409625))

(assert (not b!7409635))

(assert (not b!7409637))

(assert (not start!721876))

(assert (not b!7409632))

(assert tp_is_empty!49087)

(assert (not b!7409624))

(assert (not b!7409626))

(assert (not b!7409629))

(assert (not b!7409633))

(assert (not b!7409628))

(assert (not b!7409636))

(assert (not setNonEmpty!56280))

(assert (not b!7409634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1924439 () Bool)

(declare-fun d!2291586 () Bool)

(assert (= bs!1924439 (and d!2291586 b!7409631)))

(declare-fun lambda!459892 () Int)

(assert (=> bs!1924439 (not (= lambda!459892 lambda!459877))))

(assert (=> bs!1924439 (not (= lambda!459892 lambda!459878))))

(assert (=> d!2291586 true))

(assert (=> d!2291586 true))

(declare-fun order!29539 () Int)

(declare-fun order!29537 () Int)

(declare-fun dynLambda!29670 (Int Int) Int)

(declare-fun dynLambda!29671 (Int Int) Int)

(assert (=> d!2291586 (< (dynLambda!29670 order!29537 lambda!459876) (dynLambda!29671 order!29539 lambda!459892))))

(declare-fun flatMap!3212 ((Set Context!16704) Int) (Set Context!16704))

(declare-fun exists!4780 ((Set Context!16704) Int) Bool)

(assert (=> d!2291586 (= (set.member lt!2618817 (flatMap!3212 z!3451 lambda!459876)) (exists!4780 z!3451 lambda!459892))))

(declare-fun lt!2618858 () Context!16704)

(declare-fun choose!57466 ((Set Context!16704) Int Context!16704) Context!16704)

(assert (=> d!2291586 (= lt!2618858 (choose!57466 z!3451 lambda!459876 lt!2618817))))

(assert (=> d!2291586 (= (flatMapPost!219 z!3451 lambda!459876 lt!2618817) lt!2618858)))

(declare-fun bs!1924440 () Bool)

(assert (= bs!1924440 d!2291586))

(declare-fun m!8045108 () Bool)

(assert (=> bs!1924440 m!8045108))

(declare-fun m!8045110 () Bool)

(assert (=> bs!1924440 m!8045110))

(declare-fun m!8045112 () Bool)

(assert (=> bs!1924440 m!8045112))

(declare-fun m!8045114 () Bool)

(assert (=> bs!1924440 m!8045114))

(assert (=> b!7409632 d!2291586))

(declare-fun d!2291588 () Bool)

(declare-fun lambda!459895 () Int)

(declare-fun forall!18196 (List!72022 Int) Bool)

(assert (=> d!2291588 (= (inv!91892 empty!3595) (forall!18196 (exprs!8852 empty!3595) lambda!459895))))

(declare-fun bs!1924441 () Bool)

(assert (= bs!1924441 d!2291588))

(declare-fun m!8045116 () Bool)

(assert (=> bs!1924441 m!8045116))

(assert (=> b!7409632 d!2291588))

(declare-fun d!2291590 () Bool)

(declare-fun e!4431644 () Bool)

(assert (=> d!2291590 e!4431644))

(declare-fun res!2982961 () Bool)

(assert (=> d!2291590 (=> (not res!2982961) (not e!4431644))))

(declare-fun lt!2618861 () Context!16704)

(declare-fun dynLambda!29672 (Int Context!16704) Bool)

(assert (=> d!2291590 (= res!2982961 (dynLambda!29672 lambda!459877 lt!2618861))))

(declare-datatypes ((List!72026 0))(
  ( (Nil!71902) (Cons!71902 (h!78350 Context!16704) (t!386585 List!72026)) )
))
(declare-fun getWitness!2459 (List!72026 Int) Context!16704)

(declare-fun toList!11763 ((Set Context!16704)) List!72026)

(assert (=> d!2291590 (= lt!2618861 (getWitness!2459 (toList!11763 lt!2618819) lambda!459877))))

(assert (=> d!2291590 (exists!4780 lt!2618819 lambda!459877)))

(assert (=> d!2291590 (= (getWitness!2457 lt!2618819 lambda!459877) lt!2618861)))

(declare-fun b!7409697 () Bool)

(assert (=> b!7409697 (= e!4431644 (set.member lt!2618861 lt!2618819))))

(assert (= (and d!2291590 res!2982961) b!7409697))

(declare-fun b_lambda!286511 () Bool)

(assert (=> (not b_lambda!286511) (not d!2291590)))

(declare-fun m!8045118 () Bool)

(assert (=> d!2291590 m!8045118))

(declare-fun m!8045120 () Bool)

(assert (=> d!2291590 m!8045120))

(assert (=> d!2291590 m!8045120))

(declare-fun m!8045122 () Bool)

(assert (=> d!2291590 m!8045122))

(declare-fun m!8045124 () Bool)

(assert (=> d!2291590 m!8045124))

(declare-fun m!8045126 () Bool)

(assert (=> b!7409697 m!8045126))

(assert (=> b!7409631 d!2291590))

(declare-fun bs!1924442 () Bool)

(declare-fun d!2291592 () Bool)

(assert (= bs!1924442 (and d!2291592 b!7409631)))

(declare-fun lambda!459896 () Int)

(assert (=> bs!1924442 (not (= lambda!459896 lambda!459877))))

(assert (=> bs!1924442 (not (= lambda!459896 lambda!459878))))

(declare-fun bs!1924443 () Bool)

(assert (= bs!1924443 (and d!2291592 d!2291586)))

(assert (=> bs!1924443 (= (= lt!2618824 lt!2618817) (= lambda!459896 lambda!459892))))

(assert (=> d!2291592 true))

(assert (=> d!2291592 true))

(assert (=> d!2291592 (< (dynLambda!29670 order!29537 lambda!459876) (dynLambda!29671 order!29539 lambda!459896))))

(assert (=> d!2291592 (= (set.member lt!2618824 (flatMap!3212 z!3451 lambda!459876)) (exists!4780 z!3451 lambda!459896))))

(declare-fun lt!2618862 () Context!16704)

(assert (=> d!2291592 (= lt!2618862 (choose!57466 z!3451 lambda!459876 lt!2618824))))

(assert (=> d!2291592 (= (flatMapPost!219 z!3451 lambda!459876 lt!2618824) lt!2618862)))

(declare-fun bs!1924444 () Bool)

(assert (= bs!1924444 d!2291592))

(assert (=> bs!1924444 m!8045108))

(declare-fun m!8045128 () Bool)

(assert (=> bs!1924444 m!8045128))

(declare-fun m!8045130 () Bool)

(assert (=> bs!1924444 m!8045130))

(declare-fun m!8045132 () Bool)

(assert (=> bs!1924444 m!8045132))

(assert (=> b!7409631 d!2291592))

(declare-fun d!2291594 () Bool)

(declare-fun e!4431645 () Bool)

(assert (=> d!2291594 e!4431645))

(declare-fun res!2982962 () Bool)

(assert (=> d!2291594 (=> (not res!2982962) (not e!4431645))))

(declare-fun lt!2618863 () Context!16704)

(assert (=> d!2291594 (= res!2982962 (dynLambda!29672 lambda!459878 lt!2618863))))

(assert (=> d!2291594 (= lt!2618863 (getWitness!2459 (toList!11763 z!3451) lambda!459878))))

(assert (=> d!2291594 (exists!4780 z!3451 lambda!459878)))

(assert (=> d!2291594 (= (getWitness!2457 z!3451 lambda!459878) lt!2618863)))

(declare-fun b!7409698 () Bool)

(assert (=> b!7409698 (= e!4431645 (set.member lt!2618863 z!3451))))

(assert (= (and d!2291594 res!2982962) b!7409698))

(declare-fun b_lambda!286513 () Bool)

(assert (=> (not b_lambda!286513) (not d!2291594)))

(declare-fun m!8045134 () Bool)

(assert (=> d!2291594 m!8045134))

(declare-fun m!8045136 () Bool)

(assert (=> d!2291594 m!8045136))

(assert (=> d!2291594 m!8045136))

(declare-fun m!8045138 () Bool)

(assert (=> d!2291594 m!8045138))

(declare-fun m!8045140 () Bool)

(assert (=> d!2291594 m!8045140))

(declare-fun m!8045142 () Bool)

(assert (=> b!7409698 m!8045142))

(assert (=> b!7409631 d!2291594))

(declare-fun d!2291596 () Bool)

(assert (=> d!2291596 (= (head!15214 (exprs!8852 c!10532)) (h!78346 (exprs!8852 c!10532)))))

(assert (=> b!7409628 d!2291596))

(declare-fun bs!1924445 () Bool)

(declare-fun d!2291598 () Bool)

(assert (= bs!1924445 (and d!2291598 d!2291588)))

(declare-fun lambda!459897 () Int)

(assert (=> bs!1924445 (= lambda!459897 lambda!459895)))

(assert (=> d!2291598 (= (inv!91892 setElem!56280) (forall!18196 (exprs!8852 setElem!56280) lambda!459897))))

(declare-fun bs!1924446 () Bool)

(assert (= bs!1924446 d!2291598))

(declare-fun m!8045144 () Bool)

(assert (=> bs!1924446 m!8045144))

(assert (=> setNonEmpty!56280 d!2291598))

(declare-fun d!2291600 () Bool)

(declare-fun c!1375372 () Bool)

(declare-fun e!4431652 () Bool)

(assert (=> d!2291600 (= c!1375372 e!4431652)))

(declare-fun res!2982965 () Bool)

(assert (=> d!2291600 (=> (not res!2982965) (not e!4431652))))

(assert (=> d!2291600 (= res!2982965 (is-Cons!71898 (exprs!8852 c!10532)))))

(declare-fun e!4431654 () (Set Context!16704))

(assert (=> d!2291600 (= (derivationStepZipperUp!2816 c!10532 lt!2618822) e!4431654)))

(declare-fun bm!682194 () Bool)

(declare-fun call!682199 () (Set Context!16704))

(declare-fun derivationStepZipperDown!3208 (Regex!19412 Context!16704 C!39098) (Set Context!16704))

(assert (=> bm!682194 (= call!682199 (derivationStepZipperDown!3208 (h!78346 (exprs!8852 c!10532)) (Context!16705 (t!386581 (exprs!8852 c!10532))) lt!2618822))))

(declare-fun b!7409709 () Bool)

(declare-fun e!4431653 () (Set Context!16704))

(assert (=> b!7409709 (= e!4431654 e!4431653)))

(declare-fun c!1375373 () Bool)

(assert (=> b!7409709 (= c!1375373 (is-Cons!71898 (exprs!8852 c!10532)))))

(declare-fun b!7409710 () Bool)

(assert (=> b!7409710 (= e!4431653 (as set.empty (Set Context!16704)))))

(declare-fun b!7409711 () Bool)

(assert (=> b!7409711 (= e!4431654 (set.union call!682199 (derivationStepZipperUp!2816 (Context!16705 (t!386581 (exprs!8852 c!10532))) lt!2618822)))))

(declare-fun b!7409712 () Bool)

(declare-fun nullable!8456 (Regex!19412) Bool)

(assert (=> b!7409712 (= e!4431652 (nullable!8456 (h!78346 (exprs!8852 c!10532))))))

(declare-fun b!7409713 () Bool)

(assert (=> b!7409713 (= e!4431653 call!682199)))

(assert (= (and d!2291600 res!2982965) b!7409712))

(assert (= (and d!2291600 c!1375372) b!7409711))

(assert (= (and d!2291600 (not c!1375372)) b!7409709))

(assert (= (and b!7409709 c!1375373) b!7409713))

(assert (= (and b!7409709 (not c!1375373)) b!7409710))

(assert (= (or b!7409711 b!7409713) bm!682194))

(declare-fun m!8045146 () Bool)

(assert (=> bm!682194 m!8045146))

(declare-fun m!8045148 () Bool)

(assert (=> b!7409711 m!8045148))

(declare-fun m!8045150 () Bool)

(assert (=> b!7409712 m!8045150))

(assert (=> b!7409629 d!2291600))

(declare-fun bs!1924447 () Bool)

(declare-fun d!2291608 () Bool)

(assert (= bs!1924447 (and d!2291608 b!7409632)))

(declare-fun lambda!459900 () Int)

(assert (=> bs!1924447 (= (= lt!2618822 a!2228) (= lambda!459900 lambda!459876))))

(assert (=> d!2291608 true))

(assert (=> d!2291608 (= (derivationStepZipper!3686 z!3451 lt!2618822) (flatMap!3212 z!3451 lambda!459900))))

(declare-fun bs!1924448 () Bool)

(assert (= bs!1924448 d!2291608))

(declare-fun m!8045152 () Bool)

(assert (=> bs!1924448 m!8045152))

(assert (=> b!7409629 d!2291608))

(declare-fun d!2291612 () Bool)

(assert (=> d!2291612 (= (head!15215 s!7927) (h!78347 s!7927))))

(assert (=> b!7409629 d!2291612))

(declare-fun d!2291614 () Bool)

(assert (=> d!2291614 (= (isEmpty!41058 (exprs!8852 c!10532)) (is-Nil!71898 (exprs!8852 c!10532)))))

(assert (=> b!7409626 d!2291614))

(declare-fun d!2291616 () Bool)

(declare-fun c!1375378 () Bool)

(assert (=> d!2291616 (= c!1375378 (isEmpty!41059 s!7927))))

(declare-fun e!4431657 () Bool)

(assert (=> d!2291616 (= (matchZipper!3812 z!3451 s!7927) e!4431657)))

(declare-fun b!7409718 () Bool)

(declare-fun nullableZipper!3141 ((Set Context!16704)) Bool)

(assert (=> b!7409718 (= e!4431657 (nullableZipper!3141 z!3451))))

(declare-fun b!7409719 () Bool)

(declare-fun tail!14825 (List!72023) List!72023)

(assert (=> b!7409719 (= e!4431657 (matchZipper!3812 (derivationStepZipper!3686 z!3451 (head!15215 s!7927)) (tail!14825 s!7927)))))

(assert (= (and d!2291616 c!1375378) b!7409718))

(assert (= (and d!2291616 (not c!1375378)) b!7409719))

(declare-fun m!8045154 () Bool)

(assert (=> d!2291616 m!8045154))

(declare-fun m!8045156 () Bool)

(assert (=> b!7409718 m!8045156))

(assert (=> b!7409719 m!8045062))

(assert (=> b!7409719 m!8045062))

(declare-fun m!8045158 () Bool)

(assert (=> b!7409719 m!8045158))

(declare-fun m!8045160 () Bool)

(assert (=> b!7409719 m!8045160))

(assert (=> b!7409719 m!8045158))

(assert (=> b!7409719 m!8045160))

(declare-fun m!8045162 () Bool)

(assert (=> b!7409719 m!8045162))

(assert (=> b!7409625 d!2291616))

(declare-fun d!2291618 () Bool)

(declare-fun c!1375379 () Bool)

(assert (=> d!2291618 (= c!1375379 (isEmpty!41059 (t!386582 s!7927)))))

(declare-fun e!4431658 () Bool)

(assert (=> d!2291618 (= (matchZipper!3812 lt!2618819 (t!386582 s!7927)) e!4431658)))

(declare-fun b!7409720 () Bool)

(assert (=> b!7409720 (= e!4431658 (nullableZipper!3141 lt!2618819))))

(declare-fun b!7409721 () Bool)

(assert (=> b!7409721 (= e!4431658 (matchZipper!3812 (derivationStepZipper!3686 lt!2618819 (head!15215 (t!386582 s!7927))) (tail!14825 (t!386582 s!7927))))))

(assert (= (and d!2291618 c!1375379) b!7409720))

(assert (= (and d!2291618 (not c!1375379)) b!7409721))

(assert (=> d!2291618 m!8045064))

(declare-fun m!8045164 () Bool)

(assert (=> b!7409720 m!8045164))

(declare-fun m!8045166 () Bool)

(assert (=> b!7409721 m!8045166))

(assert (=> b!7409721 m!8045166))

(declare-fun m!8045168 () Bool)

(assert (=> b!7409721 m!8045168))

(declare-fun m!8045170 () Bool)

(assert (=> b!7409721 m!8045170))

(assert (=> b!7409721 m!8045168))

(assert (=> b!7409721 m!8045170))

(declare-fun m!8045172 () Bool)

(assert (=> b!7409721 m!8045172))

(assert (=> b!7409625 d!2291618))

(declare-fun d!2291620 () Bool)

(assert (=> d!2291620 (= (matchZipper!3812 lt!2618819 (t!386582 s!7927)) (isEmpty!41059 (t!386582 s!7927)))))

(declare-fun lt!2618866 () Unit!165720)

(declare-fun choose!57467 ((Set Context!16704) List!72023) Unit!165720)

(assert (=> d!2291620 (= lt!2618866 (choose!57467 lt!2618819 (t!386582 s!7927)))))

(assert (=> d!2291620 (= lt!2618819 (set.singleton (Context!16705 Nil!71898)))))

(assert (=> d!2291620 (= (lemmaZipperOfEmptyContextMatchesEmptyString!67 lt!2618819 (t!386582 s!7927)) lt!2618866)))

(declare-fun bs!1924450 () Bool)

(assert (= bs!1924450 d!2291620))

(assert (=> bs!1924450 m!8045030))

(assert (=> bs!1924450 m!8045064))

(declare-fun m!8045176 () Bool)

(assert (=> bs!1924450 m!8045176))

(assert (=> b!7409625 d!2291620))

(declare-fun d!2291626 () Bool)

(assert (=> d!2291626 (= (isEmpty!41058 (tail!14823 (exprs!8852 c!10532))) (is-Nil!71898 (tail!14823 (exprs!8852 c!10532))))))

(assert (=> b!7409634 d!2291626))

(declare-fun d!2291628 () Bool)

(assert (=> d!2291628 (= (tail!14823 (exprs!8852 c!10532)) (t!386581 (exprs!8852 c!10532)))))

(assert (=> b!7409634 d!2291628))

(declare-fun bs!1924451 () Bool)

(declare-fun d!2291630 () Bool)

(assert (= bs!1924451 (and d!2291630 d!2291588)))

(declare-fun lambda!459904 () Int)

(assert (=> bs!1924451 (= lambda!459904 lambda!459895)))

(declare-fun bs!1924452 () Bool)

(assert (= bs!1924452 (and d!2291630 d!2291598)))

(assert (=> bs!1924452 (= lambda!459904 lambda!459897)))

(assert (=> d!2291630 (= (inv!91892 c!10532) (forall!18196 (exprs!8852 c!10532) lambda!459904))))

(declare-fun bs!1924453 () Bool)

(assert (= bs!1924453 d!2291630))

(declare-fun m!8045178 () Bool)

(assert (=> bs!1924453 m!8045178))

(assert (=> start!721876 d!2291630))

(declare-fun d!2291632 () Bool)

(assert (=> d!2291632 (= (isEmpty!41059 (t!386582 s!7927)) (is-Nil!71899 (t!386582 s!7927)))))

(assert (=> b!7409635 d!2291632))

(declare-fun b!7409726 () Bool)

(declare-fun e!4431661 () Bool)

(declare-fun tp!2120039 () Bool)

(declare-fun tp!2120040 () Bool)

(assert (=> b!7409726 (= e!4431661 (and tp!2120039 tp!2120040))))

(assert (=> b!7409637 (= tp!2120018 e!4431661)))

(assert (= (and b!7409637 (is-Cons!71898 (exprs!8852 empty!3595))) b!7409726))

(declare-fun b!7409731 () Bool)

(declare-fun e!4431664 () Bool)

(declare-fun tp!2120043 () Bool)

(assert (=> b!7409731 (= e!4431664 (and tp_is_empty!49087 tp!2120043))))

(assert (=> b!7409633 (= tp!2120017 e!4431664)))

(assert (= (and b!7409633 (is-Cons!71899 (t!386582 s!7927))) b!7409731))

(declare-fun condSetEmpty!56286 () Bool)

(assert (=> setNonEmpty!56280 (= condSetEmpty!56286 (= setRest!56280 (as set.empty (Set Context!16704))))))

(declare-fun setRes!56286 () Bool)

(assert (=> setNonEmpty!56280 (= tp!2120016 setRes!56286)))

(declare-fun setIsEmpty!56286 () Bool)

(assert (=> setIsEmpty!56286 setRes!56286))

(declare-fun setNonEmpty!56286 () Bool)

(declare-fun setElem!56286 () Context!16704)

(declare-fun e!4431667 () Bool)

(declare-fun tp!2120049 () Bool)

(assert (=> setNonEmpty!56286 (= setRes!56286 (and tp!2120049 (inv!91892 setElem!56286) e!4431667))))

(declare-fun setRest!56286 () (Set Context!16704))

(assert (=> setNonEmpty!56286 (= setRest!56280 (set.union (set.insert setElem!56286 (as set.empty (Set Context!16704))) setRest!56286))))

(declare-fun b!7409736 () Bool)

(declare-fun tp!2120048 () Bool)

(assert (=> b!7409736 (= e!4431667 tp!2120048)))

(assert (= (and setNonEmpty!56280 condSetEmpty!56286) setIsEmpty!56286))

(assert (= (and setNonEmpty!56280 (not condSetEmpty!56286)) setNonEmpty!56286))

(assert (= setNonEmpty!56286 b!7409736))

(declare-fun m!8045180 () Bool)

(assert (=> setNonEmpty!56286 m!8045180))

(declare-fun b!7409737 () Bool)

(declare-fun e!4431668 () Bool)

(declare-fun tp!2120050 () Bool)

(declare-fun tp!2120051 () Bool)

(assert (=> b!7409737 (= e!4431668 (and tp!2120050 tp!2120051))))

(assert (=> b!7409624 (= tp!2120019 e!4431668)))

(assert (= (and b!7409624 (is-Cons!71898 (exprs!8852 c!10532))) b!7409737))

(declare-fun b!7409738 () Bool)

(declare-fun e!4431669 () Bool)

(declare-fun tp!2120052 () Bool)

(declare-fun tp!2120053 () Bool)

(assert (=> b!7409738 (= e!4431669 (and tp!2120052 tp!2120053))))

(assert (=> b!7409636 (= tp!2120015 e!4431669)))

(assert (= (and b!7409636 (is-Cons!71898 (exprs!8852 setElem!56280))) b!7409738))

(declare-fun b_lambda!286515 () Bool)

(assert (= b_lambda!286511 (or b!7409631 b_lambda!286515)))

(declare-fun bs!1924454 () Bool)

(declare-fun d!2291634 () Bool)

(assert (= bs!1924454 (and d!2291634 b!7409631)))

(assert (=> bs!1924454 (= (dynLambda!29672 lambda!459877 lt!2618861) (not (= lt!2618861 lt!2618817)))))

(assert (=> d!2291590 d!2291634))

(declare-fun b_lambda!286517 () Bool)

(assert (= b_lambda!286513 (or b!7409631 b_lambda!286517)))

(declare-fun bs!1924455 () Bool)

(declare-fun d!2291636 () Bool)

(assert (= bs!1924455 (and d!2291636 b!7409631)))

(assert (=> bs!1924455 (= (dynLambda!29672 lambda!459878 lt!2618863) (set.member lt!2618824 (derivationStepZipperUp!2816 lt!2618863 lt!2618822)))))

(declare-fun m!8045182 () Bool)

(assert (=> bs!1924455 m!8045182))

(declare-fun m!8045184 () Bool)

(assert (=> bs!1924455 m!8045184))

(assert (=> d!2291594 d!2291636))

(push 1)

(assert (not b_lambda!286515))

(assert (not setNonEmpty!56286))

(assert (not b!7409736))

(assert (not d!2291592))

(assert (not d!2291630))

(assert (not d!2291590))

(assert tp_is_empty!49087)

(assert (not d!2291586))

(assert (not b!7409719))

(assert (not b!7409738))

(assert (not d!2291618))

(assert (not b!7409718))

(assert (not b!7409711))

(assert (not d!2291616))

(assert (not b!7409712))

(assert (not b!7409720))

(assert (not d!2291608))

(assert (not b_lambda!286517))

(assert (not d!2291588))

(assert (not b!7409721))

(assert (not b!7409737))

(assert (not d!2291598))

(assert (not b!7409726))

(assert (not d!2291620))

(assert (not bm!682194))

(assert (not b!7409731))

(assert (not d!2291594))

(assert (not bs!1924455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1924471 () Bool)

(declare-fun d!2291666 () Bool)

(assert (= bs!1924471 (and d!2291666 d!2291588)))

(declare-fun lambda!459914 () Int)

(assert (=> bs!1924471 (= lambda!459914 lambda!459895)))

(declare-fun bs!1924472 () Bool)

(assert (= bs!1924472 (and d!2291666 d!2291598)))

(assert (=> bs!1924472 (= lambda!459914 lambda!459897)))

(declare-fun bs!1924473 () Bool)

(assert (= bs!1924473 (and d!2291666 d!2291630)))

(assert (=> bs!1924473 (= lambda!459914 lambda!459904)))

(assert (=> d!2291666 (= (inv!91892 setElem!56286) (forall!18196 (exprs!8852 setElem!56286) lambda!459914))))

(declare-fun bs!1924474 () Bool)

(assert (= bs!1924474 d!2291666))

(declare-fun m!8045260 () Bool)

(assert (=> bs!1924474 m!8045260))

(assert (=> setNonEmpty!56286 d!2291666))

(declare-fun d!2291668 () Bool)

(declare-fun choose!57470 ((Set Context!16704) Int) (Set Context!16704))

(assert (=> d!2291668 (= (flatMap!3212 z!3451 lambda!459876) (choose!57470 z!3451 lambda!459876))))

(declare-fun bs!1924475 () Bool)

(assert (= bs!1924475 d!2291668))

(declare-fun m!8045262 () Bool)

(assert (=> bs!1924475 m!8045262))

(assert (=> d!2291592 d!2291668))

(declare-fun d!2291670 () Bool)

(declare-fun lt!2618880 () Bool)

(declare-fun exists!4782 (List!72026 Int) Bool)

(assert (=> d!2291670 (= lt!2618880 (exists!4782 (toList!11763 z!3451) lambda!459896))))

(declare-fun choose!57471 ((Set Context!16704) Int) Bool)

(assert (=> d!2291670 (= lt!2618880 (choose!57471 z!3451 lambda!459896))))

(assert (=> d!2291670 (= (exists!4780 z!3451 lambda!459896) lt!2618880)))

(declare-fun bs!1924476 () Bool)

(assert (= bs!1924476 d!2291670))

(assert (=> bs!1924476 m!8045136))

(assert (=> bs!1924476 m!8045136))

(declare-fun m!8045264 () Bool)

(assert (=> bs!1924476 m!8045264))

(declare-fun m!8045266 () Bool)

(assert (=> bs!1924476 m!8045266))

(assert (=> d!2291592 d!2291670))

(declare-fun bs!1924477 () Bool)

(declare-fun d!2291672 () Bool)

(assert (= bs!1924477 (and d!2291672 b!7409631)))

(declare-fun lambda!459917 () Int)

(assert (=> bs!1924477 (not (= lambda!459917 lambda!459877))))

(assert (=> bs!1924477 (not (= lambda!459917 lambda!459878))))

(declare-fun bs!1924478 () Bool)

(assert (= bs!1924478 (and d!2291672 d!2291586)))

(assert (=> bs!1924478 (= (= lt!2618824 lt!2618817) (= lambda!459917 lambda!459892))))

(declare-fun bs!1924479 () Bool)

(assert (= bs!1924479 (and d!2291672 d!2291592)))

(assert (=> bs!1924479 (= lambda!459917 lambda!459896)))

(assert (=> d!2291672 true))

(assert (=> d!2291672 true))

(assert (=> d!2291672 (< (dynLambda!29670 order!29537 lambda!459876) (dynLambda!29671 order!29539 lambda!459917))))

(assert (=> d!2291672 (= (set.member lt!2618824 (flatMap!3212 z!3451 lambda!459876)) (exists!4780 z!3451 lambda!459917))))

(declare-fun _$3!575 () Context!16704)

(declare-fun e!4431700 () Bool)

(assert (=> d!2291672 (and (inv!91892 _$3!575) e!4431700)))

(assert (=> d!2291672 (= (choose!57466 z!3451 lambda!459876 lt!2618824) _$3!575)))

(declare-fun b!7409789 () Bool)

(declare-fun tp!2120075 () Bool)

(assert (=> b!7409789 (= e!4431700 tp!2120075)))

(assert (= d!2291672 b!7409789))

(assert (=> d!2291672 m!8045108))

(assert (=> d!2291672 m!8045128))

(declare-fun m!8045268 () Bool)

(assert (=> d!2291672 m!8045268))

(declare-fun m!8045270 () Bool)

(assert (=> d!2291672 m!8045270))

(assert (=> d!2291592 d!2291672))

(declare-fun call!682220 () List!72022)

(declare-fun c!1375405 () Bool)

(declare-fun bm!682210 () Bool)

(declare-fun call!682219 () (Set Context!16704))

(declare-fun c!1375406 () Bool)

(declare-fun c!1375404 () Bool)

(assert (=> bm!682210 (= call!682219 (derivationStepZipperDown!3208 (ite c!1375406 (regTwo!39337 (h!78346 (exprs!8852 c!10532))) (ite c!1375404 (regTwo!39336 (h!78346 (exprs!8852 c!10532))) (ite c!1375405 (regOne!39336 (h!78346 (exprs!8852 c!10532))) (reg!19741 (h!78346 (exprs!8852 c!10532)))))) (ite (or c!1375406 c!1375404) (Context!16705 (t!386581 (exprs!8852 c!10532))) (Context!16705 call!682220)) lt!2618822))))

(declare-fun call!682217 () (Set Context!16704))

(declare-fun bm!682211 () Bool)

(declare-fun call!682218 () List!72022)

(assert (=> bm!682211 (= call!682217 (derivationStepZipperDown!3208 (ite c!1375406 (regOne!39337 (h!78346 (exprs!8852 c!10532))) (regOne!39336 (h!78346 (exprs!8852 c!10532)))) (ite c!1375406 (Context!16705 (t!386581 (exprs!8852 c!10532))) (Context!16705 call!682218)) lt!2618822))))

(declare-fun b!7409812 () Bool)

(declare-fun e!4431713 () (Set Context!16704))

(declare-fun call!682216 () (Set Context!16704))

(assert (=> b!7409812 (= e!4431713 call!682216)))

(declare-fun bm!682212 () Bool)

(declare-fun call!682215 () (Set Context!16704))

(assert (=> bm!682212 (= call!682215 call!682219)))

(declare-fun b!7409813 () Bool)

(declare-fun e!4431714 () (Set Context!16704))

(declare-fun e!4431715 () (Set Context!16704))

(assert (=> b!7409813 (= e!4431714 e!4431715)))

(assert (=> b!7409813 (= c!1375406 (is-Union!19412 (h!78346 (exprs!8852 c!10532))))))

(declare-fun b!7409814 () Bool)

(declare-fun c!1375403 () Bool)

(assert (=> b!7409814 (= c!1375403 (is-Star!19412 (h!78346 (exprs!8852 c!10532))))))

(declare-fun e!4431717 () (Set Context!16704))

(assert (=> b!7409814 (= e!4431717 e!4431713)))

(declare-fun d!2291674 () Bool)

(declare-fun c!1375402 () Bool)

(assert (=> d!2291674 (= c!1375402 (and (is-ElementMatch!19412 (h!78346 (exprs!8852 c!10532))) (= (c!1375355 (h!78346 (exprs!8852 c!10532))) lt!2618822)))))

(assert (=> d!2291674 (= (derivationStepZipperDown!3208 (h!78346 (exprs!8852 c!10532)) (Context!16705 (t!386581 (exprs!8852 c!10532))) lt!2618822) e!4431714)))

(declare-fun b!7409815 () Bool)

(assert (=> b!7409815 (= e!4431714 (set.insert (Context!16705 (t!386581 (exprs!8852 c!10532))) (as set.empty (Set Context!16704))))))

(declare-fun b!7409816 () Bool)

(declare-fun e!4431716 () (Set Context!16704))

(assert (=> b!7409816 (= e!4431716 (set.union call!682217 call!682215))))

(declare-fun b!7409817 () Bool)

(assert (=> b!7409817 (= e!4431715 (set.union call!682217 call!682219))))

(declare-fun b!7409818 () Bool)

(assert (=> b!7409818 (= e!4431717 call!682216)))

(declare-fun bm!682213 () Bool)

(assert (=> bm!682213 (= call!682220 call!682218)))

(declare-fun b!7409819 () Bool)

(assert (=> b!7409819 (= e!4431713 (as set.empty (Set Context!16704)))))

(declare-fun b!7409820 () Bool)

(declare-fun e!4431718 () Bool)

(assert (=> b!7409820 (= e!4431718 (nullable!8456 (regOne!39336 (h!78346 (exprs!8852 c!10532)))))))

(declare-fun bm!682214 () Bool)

(assert (=> bm!682214 (= call!682216 call!682215)))

(declare-fun bm!682215 () Bool)

(declare-fun $colon$colon!3345 (List!72022 Regex!19412) List!72022)

(assert (=> bm!682215 (= call!682218 ($colon$colon!3345 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532)))) (ite (or c!1375404 c!1375405) (regTwo!39336 (h!78346 (exprs!8852 c!10532))) (h!78346 (exprs!8852 c!10532)))))))

(declare-fun b!7409821 () Bool)

(assert (=> b!7409821 (= e!4431716 e!4431717)))

(assert (=> b!7409821 (= c!1375405 (is-Concat!28257 (h!78346 (exprs!8852 c!10532))))))

(declare-fun b!7409822 () Bool)

(assert (=> b!7409822 (= c!1375404 e!4431718)))

(declare-fun res!2982975 () Bool)

(assert (=> b!7409822 (=> (not res!2982975) (not e!4431718))))

(assert (=> b!7409822 (= res!2982975 (is-Concat!28257 (h!78346 (exprs!8852 c!10532))))))

(assert (=> b!7409822 (= e!4431715 e!4431716)))

(assert (= (and d!2291674 c!1375402) b!7409815))

(assert (= (and d!2291674 (not c!1375402)) b!7409813))

(assert (= (and b!7409813 c!1375406) b!7409817))

(assert (= (and b!7409813 (not c!1375406)) b!7409822))

(assert (= (and b!7409822 res!2982975) b!7409820))

(assert (= (and b!7409822 c!1375404) b!7409816))

(assert (= (and b!7409822 (not c!1375404)) b!7409821))

(assert (= (and b!7409821 c!1375405) b!7409818))

(assert (= (and b!7409821 (not c!1375405)) b!7409814))

(assert (= (and b!7409814 c!1375403) b!7409812))

(assert (= (and b!7409814 (not c!1375403)) b!7409819))

(assert (= (or b!7409818 b!7409812) bm!682213))

(assert (= (or b!7409818 b!7409812) bm!682214))

(assert (= (or b!7409816 bm!682213) bm!682215))

(assert (= (or b!7409816 bm!682214) bm!682212))

(assert (= (or b!7409817 b!7409816) bm!682211))

(assert (= (or b!7409817 bm!682212) bm!682210))

(declare-fun m!8045272 () Bool)

(assert (=> bm!682210 m!8045272))

(declare-fun m!8045274 () Bool)

(assert (=> bm!682211 m!8045274))

(declare-fun m!8045276 () Bool)

(assert (=> b!7409815 m!8045276))

(declare-fun m!8045278 () Bool)

(assert (=> bm!682215 m!8045278))

(declare-fun m!8045280 () Bool)

(assert (=> b!7409820 m!8045280))

(assert (=> bm!682194 d!2291674))

(declare-fun b!7409835 () Bool)

(declare-fun e!4431729 () Bool)

(assert (=> b!7409835 (= e!4431729 (dynLambda!29672 lambda!459878 (h!78350 (toList!11763 z!3451))))))

(declare-fun b!7409836 () Bool)

(declare-fun e!4431728 () Context!16704)

(declare-fun e!4431730 () Context!16704)

(assert (=> b!7409836 (= e!4431728 e!4431730)))

(declare-fun c!1375412 () Bool)

(assert (=> b!7409836 (= c!1375412 (is-Cons!71902 (toList!11763 z!3451)))))

(declare-fun b!7409837 () Bool)

(assert (=> b!7409837 (= e!4431730 (getWitness!2459 (t!386585 (toList!11763 z!3451)) lambda!459878))))

(declare-fun b!7409838 () Bool)

(assert (=> b!7409838 (= e!4431728 (h!78350 (toList!11763 z!3451)))))

(declare-fun b!7409839 () Bool)

(declare-fun e!4431727 () Bool)

(declare-fun lt!2618885 () Context!16704)

(declare-fun contains!20849 (List!72026 Context!16704) Bool)

(assert (=> b!7409839 (= e!4431727 (contains!20849 (toList!11763 z!3451) lt!2618885))))

(declare-fun b!7409840 () Bool)

(declare-fun lt!2618886 () Unit!165720)

(declare-fun Unit!165728 () Unit!165720)

(assert (=> b!7409840 (= lt!2618886 Unit!165728)))

(assert (=> b!7409840 false))

(declare-fun head!15218 (List!72026) Context!16704)

(assert (=> b!7409840 (= e!4431730 (head!15218 (toList!11763 z!3451)))))

(declare-fun d!2291676 () Bool)

(assert (=> d!2291676 e!4431727))

(declare-fun res!2982981 () Bool)

(assert (=> d!2291676 (=> (not res!2982981) (not e!4431727))))

(assert (=> d!2291676 (= res!2982981 (dynLambda!29672 lambda!459878 lt!2618885))))

(assert (=> d!2291676 (= lt!2618885 e!4431728)))

(declare-fun c!1375411 () Bool)

(assert (=> d!2291676 (= c!1375411 e!4431729)))

(declare-fun res!2982980 () Bool)

(assert (=> d!2291676 (=> (not res!2982980) (not e!4431729))))

(assert (=> d!2291676 (= res!2982980 (is-Cons!71902 (toList!11763 z!3451)))))

(assert (=> d!2291676 (exists!4782 (toList!11763 z!3451) lambda!459878)))

(assert (=> d!2291676 (= (getWitness!2459 (toList!11763 z!3451) lambda!459878) lt!2618885)))

(assert (= (and d!2291676 res!2982980) b!7409835))

(assert (= (and d!2291676 c!1375411) b!7409838))

(assert (= (and d!2291676 (not c!1375411)) b!7409836))

(assert (= (and b!7409836 c!1375412) b!7409837))

(assert (= (and b!7409836 (not c!1375412)) b!7409840))

(assert (= (and d!2291676 res!2982981) b!7409839))

(declare-fun b_lambda!286527 () Bool)

(assert (=> (not b_lambda!286527) (not b!7409835)))

(declare-fun b_lambda!286529 () Bool)

(assert (=> (not b_lambda!286529) (not d!2291676)))

(assert (=> b!7409839 m!8045136))

(declare-fun m!8045282 () Bool)

(assert (=> b!7409839 m!8045282))

(declare-fun m!8045284 () Bool)

(assert (=> d!2291676 m!8045284))

(assert (=> d!2291676 m!8045136))

(declare-fun m!8045286 () Bool)

(assert (=> d!2291676 m!8045286))

(assert (=> b!7409840 m!8045136))

(declare-fun m!8045288 () Bool)

(assert (=> b!7409840 m!8045288))

(declare-fun m!8045290 () Bool)

(assert (=> b!7409835 m!8045290))

(declare-fun m!8045292 () Bool)

(assert (=> b!7409837 m!8045292))

(assert (=> d!2291594 d!2291676))

(declare-fun d!2291678 () Bool)

(declare-fun e!4431733 () Bool)

(assert (=> d!2291678 e!4431733))

(declare-fun res!2982984 () Bool)

(assert (=> d!2291678 (=> (not res!2982984) (not e!4431733))))

(declare-fun lt!2618889 () List!72026)

(declare-fun noDuplicate!3108 (List!72026) Bool)

(assert (=> d!2291678 (= res!2982984 (noDuplicate!3108 lt!2618889))))

(declare-fun choose!57472 ((Set Context!16704)) List!72026)

(assert (=> d!2291678 (= lt!2618889 (choose!57472 z!3451))))

(assert (=> d!2291678 (= (toList!11763 z!3451) lt!2618889)))

(declare-fun b!7409843 () Bool)

(declare-fun content!15220 (List!72026) (Set Context!16704))

(assert (=> b!7409843 (= e!4431733 (= (content!15220 lt!2618889) z!3451))))

(assert (= (and d!2291678 res!2982984) b!7409843))

(declare-fun m!8045294 () Bool)

(assert (=> d!2291678 m!8045294))

(declare-fun m!8045296 () Bool)

(assert (=> d!2291678 m!8045296))

(declare-fun m!8045298 () Bool)

(assert (=> b!7409843 m!8045298))

(assert (=> d!2291594 d!2291678))

(declare-fun d!2291680 () Bool)

(declare-fun lt!2618890 () Bool)

(assert (=> d!2291680 (= lt!2618890 (exists!4782 (toList!11763 z!3451) lambda!459878))))

(assert (=> d!2291680 (= lt!2618890 (choose!57471 z!3451 lambda!459878))))

(assert (=> d!2291680 (= (exists!4780 z!3451 lambda!459878) lt!2618890)))

(declare-fun bs!1924480 () Bool)

(assert (= bs!1924480 d!2291680))

(assert (=> bs!1924480 m!8045136))

(assert (=> bs!1924480 m!8045136))

(assert (=> bs!1924480 m!8045286))

(declare-fun m!8045300 () Bool)

(assert (=> bs!1924480 m!8045300))

(assert (=> d!2291594 d!2291680))

(declare-fun d!2291682 () Bool)

(assert (=> d!2291682 (= (isEmpty!41059 s!7927) (is-Nil!71899 s!7927))))

(assert (=> d!2291616 d!2291682))

(declare-fun d!2291684 () Bool)

(declare-fun c!1375413 () Bool)

(assert (=> d!2291684 (= c!1375413 (isEmpty!41059 (tail!14825 (t!386582 s!7927))))))

(declare-fun e!4431734 () Bool)

(assert (=> d!2291684 (= (matchZipper!3812 (derivationStepZipper!3686 lt!2618819 (head!15215 (t!386582 s!7927))) (tail!14825 (t!386582 s!7927))) e!4431734)))

(declare-fun b!7409844 () Bool)

(assert (=> b!7409844 (= e!4431734 (nullableZipper!3141 (derivationStepZipper!3686 lt!2618819 (head!15215 (t!386582 s!7927)))))))

(declare-fun b!7409845 () Bool)

(assert (=> b!7409845 (= e!4431734 (matchZipper!3812 (derivationStepZipper!3686 (derivationStepZipper!3686 lt!2618819 (head!15215 (t!386582 s!7927))) (head!15215 (tail!14825 (t!386582 s!7927)))) (tail!14825 (tail!14825 (t!386582 s!7927)))))))

(assert (= (and d!2291684 c!1375413) b!7409844))

(assert (= (and d!2291684 (not c!1375413)) b!7409845))

(assert (=> d!2291684 m!8045170))

(declare-fun m!8045302 () Bool)

(assert (=> d!2291684 m!8045302))

(assert (=> b!7409844 m!8045168))

(declare-fun m!8045304 () Bool)

(assert (=> b!7409844 m!8045304))

(assert (=> b!7409845 m!8045170))

(declare-fun m!8045306 () Bool)

(assert (=> b!7409845 m!8045306))

(assert (=> b!7409845 m!8045168))

(assert (=> b!7409845 m!8045306))

(declare-fun m!8045308 () Bool)

(assert (=> b!7409845 m!8045308))

(assert (=> b!7409845 m!8045170))

(declare-fun m!8045310 () Bool)

(assert (=> b!7409845 m!8045310))

(assert (=> b!7409845 m!8045308))

(assert (=> b!7409845 m!8045310))

(declare-fun m!8045312 () Bool)

(assert (=> b!7409845 m!8045312))

(assert (=> b!7409721 d!2291684))

(declare-fun bs!1924481 () Bool)

(declare-fun d!2291686 () Bool)

(assert (= bs!1924481 (and d!2291686 b!7409632)))

(declare-fun lambda!459918 () Int)

(assert (=> bs!1924481 (= (= (head!15215 (t!386582 s!7927)) a!2228) (= lambda!459918 lambda!459876))))

(declare-fun bs!1924482 () Bool)

(assert (= bs!1924482 (and d!2291686 d!2291608)))

(assert (=> bs!1924482 (= (= (head!15215 (t!386582 s!7927)) lt!2618822) (= lambda!459918 lambda!459900))))

(assert (=> d!2291686 true))

(assert (=> d!2291686 (= (derivationStepZipper!3686 lt!2618819 (head!15215 (t!386582 s!7927))) (flatMap!3212 lt!2618819 lambda!459918))))

(declare-fun bs!1924483 () Bool)

(assert (= bs!1924483 d!2291686))

(declare-fun m!8045314 () Bool)

(assert (=> bs!1924483 m!8045314))

(assert (=> b!7409721 d!2291686))

(declare-fun d!2291688 () Bool)

(assert (=> d!2291688 (= (head!15215 (t!386582 s!7927)) (h!78347 (t!386582 s!7927)))))

(assert (=> b!7409721 d!2291688))

(declare-fun d!2291690 () Bool)

(assert (=> d!2291690 (= (tail!14825 (t!386582 s!7927)) (t!386582 (t!386582 s!7927)))))

(assert (=> b!7409721 d!2291690))

(declare-fun bs!1924484 () Bool)

(declare-fun d!2291692 () Bool)

(assert (= bs!1924484 (and d!2291692 d!2291586)))

(declare-fun lambda!459921 () Int)

(assert (=> bs!1924484 (not (= lambda!459921 lambda!459892))))

(declare-fun bs!1924485 () Bool)

(assert (= bs!1924485 (and d!2291692 d!2291592)))

(assert (=> bs!1924485 (not (= lambda!459921 lambda!459896))))

(declare-fun bs!1924486 () Bool)

(assert (= bs!1924486 (and d!2291692 b!7409631)))

(assert (=> bs!1924486 (not (= lambda!459921 lambda!459878))))

(declare-fun bs!1924487 () Bool)

(assert (= bs!1924487 (and d!2291692 d!2291672)))

(assert (=> bs!1924487 (not (= lambda!459921 lambda!459917))))

(assert (=> bs!1924486 (not (= lambda!459921 lambda!459877))))

(assert (=> d!2291692 (= (nullableZipper!3141 lt!2618819) (exists!4780 lt!2618819 lambda!459921))))

(declare-fun bs!1924488 () Bool)

(assert (= bs!1924488 d!2291692))

(declare-fun m!8045316 () Bool)

(assert (=> bs!1924488 m!8045316))

(assert (=> b!7409720 d!2291692))

(assert (=> d!2291620 d!2291618))

(assert (=> d!2291620 d!2291632))

(declare-fun d!2291694 () Bool)

(assert (=> d!2291694 (= (matchZipper!3812 lt!2618819 (t!386582 s!7927)) (isEmpty!41059 (t!386582 s!7927)))))

(assert (=> d!2291694 true))

(declare-fun _$63!1334 () Unit!165720)

(assert (=> d!2291694 (= (choose!57467 lt!2618819 (t!386582 s!7927)) _$63!1334)))

(declare-fun bs!1924489 () Bool)

(assert (= bs!1924489 d!2291694))

(assert (=> bs!1924489 m!8045030))

(assert (=> bs!1924489 m!8045064))

(assert (=> d!2291620 d!2291694))

(assert (=> d!2291586 d!2291668))

(declare-fun d!2291696 () Bool)

(declare-fun lt!2618891 () Bool)

(assert (=> d!2291696 (= lt!2618891 (exists!4782 (toList!11763 z!3451) lambda!459892))))

(assert (=> d!2291696 (= lt!2618891 (choose!57471 z!3451 lambda!459892))))

(assert (=> d!2291696 (= (exists!4780 z!3451 lambda!459892) lt!2618891)))

(declare-fun bs!1924490 () Bool)

(assert (= bs!1924490 d!2291696))

(assert (=> bs!1924490 m!8045136))

(assert (=> bs!1924490 m!8045136))

(declare-fun m!8045318 () Bool)

(assert (=> bs!1924490 m!8045318))

(declare-fun m!8045320 () Bool)

(assert (=> bs!1924490 m!8045320))

(assert (=> d!2291586 d!2291696))

(declare-fun bs!1924491 () Bool)

(declare-fun d!2291698 () Bool)

(assert (= bs!1924491 (and d!2291698 d!2291692)))

(declare-fun lambda!459922 () Int)

(assert (=> bs!1924491 (not (= lambda!459922 lambda!459921))))

(declare-fun bs!1924492 () Bool)

(assert (= bs!1924492 (and d!2291698 d!2291586)))

(assert (=> bs!1924492 (= lambda!459922 lambda!459892)))

(declare-fun bs!1924493 () Bool)

(assert (= bs!1924493 (and d!2291698 d!2291592)))

(assert (=> bs!1924493 (= (= lt!2618817 lt!2618824) (= lambda!459922 lambda!459896))))

(declare-fun bs!1924494 () Bool)

(assert (= bs!1924494 (and d!2291698 b!7409631)))

(assert (=> bs!1924494 (not (= lambda!459922 lambda!459878))))

(declare-fun bs!1924495 () Bool)

(assert (= bs!1924495 (and d!2291698 d!2291672)))

(assert (=> bs!1924495 (= (= lt!2618817 lt!2618824) (= lambda!459922 lambda!459917))))

(assert (=> bs!1924494 (not (= lambda!459922 lambda!459877))))

(assert (=> d!2291698 true))

(assert (=> d!2291698 true))

(assert (=> d!2291698 (< (dynLambda!29670 order!29537 lambda!459876) (dynLambda!29671 order!29539 lambda!459922))))

(assert (=> d!2291698 (= (set.member lt!2618817 (flatMap!3212 z!3451 lambda!459876)) (exists!4780 z!3451 lambda!459922))))

(declare-fun _$3!576 () Context!16704)

(declare-fun e!4431735 () Bool)

(assert (=> d!2291698 (and (inv!91892 _$3!576) e!4431735)))

(assert (=> d!2291698 (= (choose!57466 z!3451 lambda!459876 lt!2618817) _$3!576)))

(declare-fun b!7409846 () Bool)

(declare-fun tp!2120076 () Bool)

(assert (=> b!7409846 (= e!4431735 tp!2120076)))

(assert (= d!2291698 b!7409846))

(assert (=> d!2291698 m!8045108))

(assert (=> d!2291698 m!8045110))

(declare-fun m!8045322 () Bool)

(assert (=> d!2291698 m!8045322))

(declare-fun m!8045324 () Bool)

(assert (=> d!2291698 m!8045324))

(assert (=> d!2291586 d!2291698))

(declare-fun b!7409847 () Bool)

(declare-fun e!4431738 () Bool)

(assert (=> b!7409847 (= e!4431738 (dynLambda!29672 lambda!459877 (h!78350 (toList!11763 lt!2618819))))))

(declare-fun b!7409848 () Bool)

(declare-fun e!4431737 () Context!16704)

(declare-fun e!4431739 () Context!16704)

(assert (=> b!7409848 (= e!4431737 e!4431739)))

(declare-fun c!1375417 () Bool)

(assert (=> b!7409848 (= c!1375417 (is-Cons!71902 (toList!11763 lt!2618819)))))

(declare-fun b!7409849 () Bool)

(assert (=> b!7409849 (= e!4431739 (getWitness!2459 (t!386585 (toList!11763 lt!2618819)) lambda!459877))))

(declare-fun b!7409850 () Bool)

(assert (=> b!7409850 (= e!4431737 (h!78350 (toList!11763 lt!2618819)))))

(declare-fun b!7409851 () Bool)

(declare-fun e!4431736 () Bool)

(declare-fun lt!2618892 () Context!16704)

(assert (=> b!7409851 (= e!4431736 (contains!20849 (toList!11763 lt!2618819) lt!2618892))))

(declare-fun b!7409852 () Bool)

(declare-fun lt!2618893 () Unit!165720)

(declare-fun Unit!165729 () Unit!165720)

(assert (=> b!7409852 (= lt!2618893 Unit!165729)))

(assert (=> b!7409852 false))

(assert (=> b!7409852 (= e!4431739 (head!15218 (toList!11763 lt!2618819)))))

(declare-fun d!2291700 () Bool)

(assert (=> d!2291700 e!4431736))

(declare-fun res!2982986 () Bool)

(assert (=> d!2291700 (=> (not res!2982986) (not e!4431736))))

(assert (=> d!2291700 (= res!2982986 (dynLambda!29672 lambda!459877 lt!2618892))))

(assert (=> d!2291700 (= lt!2618892 e!4431737)))

(declare-fun c!1375416 () Bool)

(assert (=> d!2291700 (= c!1375416 e!4431738)))

(declare-fun res!2982985 () Bool)

(assert (=> d!2291700 (=> (not res!2982985) (not e!4431738))))

(assert (=> d!2291700 (= res!2982985 (is-Cons!71902 (toList!11763 lt!2618819)))))

(assert (=> d!2291700 (exists!4782 (toList!11763 lt!2618819) lambda!459877)))

(assert (=> d!2291700 (= (getWitness!2459 (toList!11763 lt!2618819) lambda!459877) lt!2618892)))

(assert (= (and d!2291700 res!2982985) b!7409847))

(assert (= (and d!2291700 c!1375416) b!7409850))

(assert (= (and d!2291700 (not c!1375416)) b!7409848))

(assert (= (and b!7409848 c!1375417) b!7409849))

(assert (= (and b!7409848 (not c!1375417)) b!7409852))

(assert (= (and d!2291700 res!2982986) b!7409851))

(declare-fun b_lambda!286531 () Bool)

(assert (=> (not b_lambda!286531) (not b!7409847)))

(declare-fun b_lambda!286533 () Bool)

(assert (=> (not b_lambda!286533) (not d!2291700)))

(assert (=> b!7409851 m!8045120))

(declare-fun m!8045326 () Bool)

(assert (=> b!7409851 m!8045326))

(declare-fun m!8045328 () Bool)

(assert (=> d!2291700 m!8045328))

(assert (=> d!2291700 m!8045120))

(declare-fun m!8045330 () Bool)

(assert (=> d!2291700 m!8045330))

(assert (=> b!7409852 m!8045120))

(declare-fun m!8045332 () Bool)

(assert (=> b!7409852 m!8045332))

(declare-fun m!8045334 () Bool)

(assert (=> b!7409847 m!8045334))

(declare-fun m!8045336 () Bool)

(assert (=> b!7409849 m!8045336))

(assert (=> d!2291590 d!2291700))

(declare-fun d!2291702 () Bool)

(declare-fun e!4431740 () Bool)

(assert (=> d!2291702 e!4431740))

(declare-fun res!2982987 () Bool)

(assert (=> d!2291702 (=> (not res!2982987) (not e!4431740))))

(declare-fun lt!2618894 () List!72026)

(assert (=> d!2291702 (= res!2982987 (noDuplicate!3108 lt!2618894))))

(assert (=> d!2291702 (= lt!2618894 (choose!57472 lt!2618819))))

(assert (=> d!2291702 (= (toList!11763 lt!2618819) lt!2618894)))

(declare-fun b!7409853 () Bool)

(assert (=> b!7409853 (= e!4431740 (= (content!15220 lt!2618894) lt!2618819))))

(assert (= (and d!2291702 res!2982987) b!7409853))

(declare-fun m!8045338 () Bool)

(assert (=> d!2291702 m!8045338))

(declare-fun m!8045340 () Bool)

(assert (=> d!2291702 m!8045340))

(declare-fun m!8045342 () Bool)

(assert (=> b!7409853 m!8045342))

(assert (=> d!2291590 d!2291702))

(declare-fun d!2291704 () Bool)

(declare-fun lt!2618895 () Bool)

(assert (=> d!2291704 (= lt!2618895 (exists!4782 (toList!11763 lt!2618819) lambda!459877))))

(assert (=> d!2291704 (= lt!2618895 (choose!57471 lt!2618819 lambda!459877))))

(assert (=> d!2291704 (= (exists!4780 lt!2618819 lambda!459877) lt!2618895)))

(declare-fun bs!1924496 () Bool)

(assert (= bs!1924496 d!2291704))

(assert (=> bs!1924496 m!8045120))

(assert (=> bs!1924496 m!8045120))

(assert (=> bs!1924496 m!8045330))

(declare-fun m!8045344 () Bool)

(assert (=> bs!1924496 m!8045344))

(assert (=> d!2291590 d!2291704))

(declare-fun d!2291706 () Bool)

(declare-fun res!2982992 () Bool)

(declare-fun e!4431745 () Bool)

(assert (=> d!2291706 (=> res!2982992 e!4431745)))

(assert (=> d!2291706 (= res!2982992 (is-Nil!71898 (exprs!8852 empty!3595)))))

(assert (=> d!2291706 (= (forall!18196 (exprs!8852 empty!3595) lambda!459895) e!4431745)))

(declare-fun b!7409858 () Bool)

(declare-fun e!4431746 () Bool)

(assert (=> b!7409858 (= e!4431745 e!4431746)))

(declare-fun res!2982993 () Bool)

(assert (=> b!7409858 (=> (not res!2982993) (not e!4431746))))

(declare-fun dynLambda!29676 (Int Regex!19412) Bool)

(assert (=> b!7409858 (= res!2982993 (dynLambda!29676 lambda!459895 (h!78346 (exprs!8852 empty!3595))))))

(declare-fun b!7409859 () Bool)

(assert (=> b!7409859 (= e!4431746 (forall!18196 (t!386581 (exprs!8852 empty!3595)) lambda!459895))))

(assert (= (and d!2291706 (not res!2982992)) b!7409858))

(assert (= (and b!7409858 res!2982993) b!7409859))

(declare-fun b_lambda!286535 () Bool)

(assert (=> (not b_lambda!286535) (not b!7409858)))

(declare-fun m!8045346 () Bool)

(assert (=> b!7409858 m!8045346))

(declare-fun m!8045348 () Bool)

(assert (=> b!7409859 m!8045348))

(assert (=> d!2291588 d!2291706))

(declare-fun d!2291708 () Bool)

(declare-fun nullableFct!3406 (Regex!19412) Bool)

(assert (=> d!2291708 (= (nullable!8456 (h!78346 (exprs!8852 c!10532))) (nullableFct!3406 (h!78346 (exprs!8852 c!10532))))))

(declare-fun bs!1924497 () Bool)

(assert (= bs!1924497 d!2291708))

(declare-fun m!8045350 () Bool)

(assert (=> bs!1924497 m!8045350))

(assert (=> b!7409712 d!2291708))

(declare-fun d!2291710 () Bool)

(declare-fun res!2982994 () Bool)

(declare-fun e!4431747 () Bool)

(assert (=> d!2291710 (=> res!2982994 e!4431747)))

(assert (=> d!2291710 (= res!2982994 (is-Nil!71898 (exprs!8852 c!10532)))))

(assert (=> d!2291710 (= (forall!18196 (exprs!8852 c!10532) lambda!459904) e!4431747)))

(declare-fun b!7409860 () Bool)

(declare-fun e!4431748 () Bool)

(assert (=> b!7409860 (= e!4431747 e!4431748)))

(declare-fun res!2982995 () Bool)

(assert (=> b!7409860 (=> (not res!2982995) (not e!4431748))))

(assert (=> b!7409860 (= res!2982995 (dynLambda!29676 lambda!459904 (h!78346 (exprs!8852 c!10532))))))

(declare-fun b!7409861 () Bool)

(assert (=> b!7409861 (= e!4431748 (forall!18196 (t!386581 (exprs!8852 c!10532)) lambda!459904))))

(assert (= (and d!2291710 (not res!2982994)) b!7409860))

(assert (= (and b!7409860 res!2982995) b!7409861))

(declare-fun b_lambda!286537 () Bool)

(assert (=> (not b_lambda!286537) (not b!7409860)))

(declare-fun m!8045352 () Bool)

(assert (=> b!7409860 m!8045352))

(declare-fun m!8045354 () Bool)

(assert (=> b!7409861 m!8045354))

(assert (=> d!2291630 d!2291710))

(declare-fun d!2291712 () Bool)

(declare-fun c!1375418 () Bool)

(declare-fun e!4431749 () Bool)

(assert (=> d!2291712 (= c!1375418 e!4431749)))

(declare-fun res!2982996 () Bool)

(assert (=> d!2291712 (=> (not res!2982996) (not e!4431749))))

(assert (=> d!2291712 (= res!2982996 (is-Cons!71898 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532))))))))

(declare-fun e!4431751 () (Set Context!16704))

(assert (=> d!2291712 (= (derivationStepZipperUp!2816 (Context!16705 (t!386581 (exprs!8852 c!10532))) lt!2618822) e!4431751)))

(declare-fun bm!682216 () Bool)

(declare-fun call!682221 () (Set Context!16704))

(assert (=> bm!682216 (= call!682221 (derivationStepZipperDown!3208 (h!78346 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532))))) (Context!16705 (t!386581 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532)))))) lt!2618822))))

(declare-fun b!7409862 () Bool)

(declare-fun e!4431750 () (Set Context!16704))

(assert (=> b!7409862 (= e!4431751 e!4431750)))

(declare-fun c!1375419 () Bool)

(assert (=> b!7409862 (= c!1375419 (is-Cons!71898 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532))))))))

(declare-fun b!7409863 () Bool)

(assert (=> b!7409863 (= e!4431750 (as set.empty (Set Context!16704)))))

(declare-fun b!7409864 () Bool)

(assert (=> b!7409864 (= e!4431751 (set.union call!682221 (derivationStepZipperUp!2816 (Context!16705 (t!386581 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532)))))) lt!2618822)))))

(declare-fun b!7409865 () Bool)

(assert (=> b!7409865 (= e!4431749 (nullable!8456 (h!78346 (exprs!8852 (Context!16705 (t!386581 (exprs!8852 c!10532)))))))))

(declare-fun b!7409866 () Bool)

(assert (=> b!7409866 (= e!4431750 call!682221)))

(assert (= (and d!2291712 res!2982996) b!7409865))

(assert (= (and d!2291712 c!1375418) b!7409864))

(assert (= (and d!2291712 (not c!1375418)) b!7409862))

(assert (= (and b!7409862 c!1375419) b!7409866))

(assert (= (and b!7409862 (not c!1375419)) b!7409863))

(assert (= (or b!7409864 b!7409866) bm!682216))

(declare-fun m!8045356 () Bool)

(assert (=> bm!682216 m!8045356))

(declare-fun m!8045358 () Bool)

(assert (=> b!7409864 m!8045358))

(declare-fun m!8045360 () Bool)

(assert (=> b!7409865 m!8045360))

(assert (=> b!7409711 d!2291712))

(declare-fun d!2291714 () Bool)

(assert (=> d!2291714 (= (flatMap!3212 z!3451 lambda!459900) (choose!57470 z!3451 lambda!459900))))

(declare-fun bs!1924498 () Bool)

(assert (= bs!1924498 d!2291714))

(declare-fun m!8045362 () Bool)

(assert (=> bs!1924498 m!8045362))

(assert (=> d!2291608 d!2291714))

(declare-fun d!2291716 () Bool)

(declare-fun c!1375420 () Bool)

(assert (=> d!2291716 (= c!1375420 (isEmpty!41059 (tail!14825 s!7927)))))

(declare-fun e!4431752 () Bool)

(assert (=> d!2291716 (= (matchZipper!3812 (derivationStepZipper!3686 z!3451 (head!15215 s!7927)) (tail!14825 s!7927)) e!4431752)))

(declare-fun b!7409867 () Bool)

(assert (=> b!7409867 (= e!4431752 (nullableZipper!3141 (derivationStepZipper!3686 z!3451 (head!15215 s!7927))))))

(declare-fun b!7409868 () Bool)

(assert (=> b!7409868 (= e!4431752 (matchZipper!3812 (derivationStepZipper!3686 (derivationStepZipper!3686 z!3451 (head!15215 s!7927)) (head!15215 (tail!14825 s!7927))) (tail!14825 (tail!14825 s!7927))))))

(assert (= (and d!2291716 c!1375420) b!7409867))

(assert (= (and d!2291716 (not c!1375420)) b!7409868))

(assert (=> d!2291716 m!8045160))

(declare-fun m!8045364 () Bool)

(assert (=> d!2291716 m!8045364))

(assert (=> b!7409867 m!8045158))

(declare-fun m!8045366 () Bool)

(assert (=> b!7409867 m!8045366))

(assert (=> b!7409868 m!8045160))

(declare-fun m!8045368 () Bool)

(assert (=> b!7409868 m!8045368))

(assert (=> b!7409868 m!8045158))

(assert (=> b!7409868 m!8045368))

(declare-fun m!8045370 () Bool)

(assert (=> b!7409868 m!8045370))

(assert (=> b!7409868 m!8045160))

(declare-fun m!8045372 () Bool)

(assert (=> b!7409868 m!8045372))

(assert (=> b!7409868 m!8045370))

(assert (=> b!7409868 m!8045372))

(declare-fun m!8045374 () Bool)

(assert (=> b!7409868 m!8045374))

(assert (=> b!7409719 d!2291716))

(declare-fun bs!1924499 () Bool)

(declare-fun d!2291718 () Bool)

(assert (= bs!1924499 (and d!2291718 b!7409632)))

(declare-fun lambda!459923 () Int)

(assert (=> bs!1924499 (= (= (head!15215 s!7927) a!2228) (= lambda!459923 lambda!459876))))

(declare-fun bs!1924500 () Bool)

(assert (= bs!1924500 (and d!2291718 d!2291608)))

(assert (=> bs!1924500 (= (= (head!15215 s!7927) lt!2618822) (= lambda!459923 lambda!459900))))

(declare-fun bs!1924501 () Bool)

(assert (= bs!1924501 (and d!2291718 d!2291686)))

(assert (=> bs!1924501 (= (= (head!15215 s!7927) (head!15215 (t!386582 s!7927))) (= lambda!459923 lambda!459918))))

(assert (=> d!2291718 true))

(assert (=> d!2291718 (= (derivationStepZipper!3686 z!3451 (head!15215 s!7927)) (flatMap!3212 z!3451 lambda!459923))))

(declare-fun bs!1924502 () Bool)

(assert (= bs!1924502 d!2291718))

(declare-fun m!8045376 () Bool)

(assert (=> bs!1924502 m!8045376))

(assert (=> b!7409719 d!2291718))

(assert (=> b!7409719 d!2291612))

(declare-fun d!2291720 () Bool)

(assert (=> d!2291720 (= (tail!14825 s!7927) (t!386582 s!7927))))

(assert (=> b!7409719 d!2291720))

(declare-fun bs!1924503 () Bool)

(declare-fun d!2291722 () Bool)

(assert (= bs!1924503 (and d!2291722 d!2291692)))

(declare-fun lambda!459924 () Int)

(assert (=> bs!1924503 (= lambda!459924 lambda!459921)))

(declare-fun bs!1924504 () Bool)

(assert (= bs!1924504 (and d!2291722 d!2291586)))

(assert (=> bs!1924504 (not (= lambda!459924 lambda!459892))))

(declare-fun bs!1924505 () Bool)

(assert (= bs!1924505 (and d!2291722 d!2291592)))

(assert (=> bs!1924505 (not (= lambda!459924 lambda!459896))))

(declare-fun bs!1924506 () Bool)

(assert (= bs!1924506 (and d!2291722 b!7409631)))

(assert (=> bs!1924506 (not (= lambda!459924 lambda!459878))))

(assert (=> bs!1924506 (not (= lambda!459924 lambda!459877))))

(declare-fun bs!1924507 () Bool)

(assert (= bs!1924507 (and d!2291722 d!2291698)))

(assert (=> bs!1924507 (not (= lambda!459924 lambda!459922))))

(declare-fun bs!1924508 () Bool)

(assert (= bs!1924508 (and d!2291722 d!2291672)))

(assert (=> bs!1924508 (not (= lambda!459924 lambda!459917))))

(assert (=> d!2291722 (= (nullableZipper!3141 z!3451) (exists!4780 z!3451 lambda!459924))))

(declare-fun bs!1924509 () Bool)

(assert (= bs!1924509 d!2291722))

(declare-fun m!8045378 () Bool)

(assert (=> bs!1924509 m!8045378))

(assert (=> b!7409718 d!2291722))

(assert (=> d!2291618 d!2291632))

(declare-fun d!2291724 () Bool)

(declare-fun c!1375421 () Bool)

(declare-fun e!4431753 () Bool)

(assert (=> d!2291724 (= c!1375421 e!4431753)))

(declare-fun res!2982997 () Bool)

(assert (=> d!2291724 (=> (not res!2982997) (not e!4431753))))

(assert (=> d!2291724 (= res!2982997 (is-Cons!71898 (exprs!8852 lt!2618863)))))

(declare-fun e!4431755 () (Set Context!16704))

(assert (=> d!2291724 (= (derivationStepZipperUp!2816 lt!2618863 lt!2618822) e!4431755)))

(declare-fun bm!682217 () Bool)

(declare-fun call!682222 () (Set Context!16704))

(assert (=> bm!682217 (= call!682222 (derivationStepZipperDown!3208 (h!78346 (exprs!8852 lt!2618863)) (Context!16705 (t!386581 (exprs!8852 lt!2618863))) lt!2618822))))

(declare-fun b!7409869 () Bool)

(declare-fun e!4431754 () (Set Context!16704))

(assert (=> b!7409869 (= e!4431755 e!4431754)))

(declare-fun c!1375422 () Bool)

(assert (=> b!7409869 (= c!1375422 (is-Cons!71898 (exprs!8852 lt!2618863)))))

(declare-fun b!7409870 () Bool)

(assert (=> b!7409870 (= e!4431754 (as set.empty (Set Context!16704)))))

(declare-fun b!7409871 () Bool)

(assert (=> b!7409871 (= e!4431755 (set.union call!682222 (derivationStepZipperUp!2816 (Context!16705 (t!386581 (exprs!8852 lt!2618863))) lt!2618822)))))

(declare-fun b!7409872 () Bool)

(assert (=> b!7409872 (= e!4431753 (nullable!8456 (h!78346 (exprs!8852 lt!2618863))))))

(declare-fun b!7409873 () Bool)

(assert (=> b!7409873 (= e!4431754 call!682222)))

(assert (= (and d!2291724 res!2982997) b!7409872))

(assert (= (and d!2291724 c!1375421) b!7409871))

(assert (= (and d!2291724 (not c!1375421)) b!7409869))

(assert (= (and b!7409869 c!1375422) b!7409873))

(assert (= (and b!7409869 (not c!1375422)) b!7409870))

(assert (= (or b!7409871 b!7409873) bm!682217))

(declare-fun m!8045380 () Bool)

(assert (=> bm!682217 m!8045380))

(declare-fun m!8045382 () Bool)

(assert (=> b!7409871 m!8045382))

(declare-fun m!8045384 () Bool)

(assert (=> b!7409872 m!8045384))

(assert (=> bs!1924455 d!2291724))

(declare-fun d!2291726 () Bool)

(declare-fun res!2982998 () Bool)

(declare-fun e!4431756 () Bool)

(assert (=> d!2291726 (=> res!2982998 e!4431756)))

(assert (=> d!2291726 (= res!2982998 (is-Nil!71898 (exprs!8852 setElem!56280)))))

(assert (=> d!2291726 (= (forall!18196 (exprs!8852 setElem!56280) lambda!459897) e!4431756)))

(declare-fun b!7409874 () Bool)

(declare-fun e!4431757 () Bool)

(assert (=> b!7409874 (= e!4431756 e!4431757)))

(declare-fun res!2982999 () Bool)

(assert (=> b!7409874 (=> (not res!2982999) (not e!4431757))))

(assert (=> b!7409874 (= res!2982999 (dynLambda!29676 lambda!459897 (h!78346 (exprs!8852 setElem!56280))))))

(declare-fun b!7409875 () Bool)

(assert (=> b!7409875 (= e!4431757 (forall!18196 (t!386581 (exprs!8852 setElem!56280)) lambda!459897))))

(assert (= (and d!2291726 (not res!2982998)) b!7409874))

(assert (= (and b!7409874 res!2982999) b!7409875))

(declare-fun b_lambda!286539 () Bool)

(assert (=> (not b_lambda!286539) (not b!7409874)))

(declare-fun m!8045386 () Bool)

(assert (=> b!7409874 m!8045386))

(declare-fun m!8045388 () Bool)

(assert (=> b!7409875 m!8045388))

(assert (=> d!2291598 d!2291726))

(declare-fun b!7409876 () Bool)

(declare-fun e!4431758 () Bool)

(declare-fun tp!2120077 () Bool)

(declare-fun tp!2120078 () Bool)

(assert (=> b!7409876 (= e!4431758 (and tp!2120077 tp!2120078))))

(assert (=> b!7409736 (= tp!2120048 e!4431758)))

(assert (= (and b!7409736 (is-Cons!71898 (exprs!8852 setElem!56286))) b!7409876))

(declare-fun condSetEmpty!56290 () Bool)

(assert (=> setNonEmpty!56286 (= condSetEmpty!56290 (= setRest!56286 (as set.empty (Set Context!16704))))))

(declare-fun setRes!56290 () Bool)

(assert (=> setNonEmpty!56286 (= tp!2120049 setRes!56290)))

(declare-fun setIsEmpty!56290 () Bool)

(assert (=> setIsEmpty!56290 setRes!56290))

(declare-fun setNonEmpty!56290 () Bool)

(declare-fun e!4431759 () Bool)

(declare-fun setElem!56290 () Context!16704)

(declare-fun tp!2120080 () Bool)

(assert (=> setNonEmpty!56290 (= setRes!56290 (and tp!2120080 (inv!91892 setElem!56290) e!4431759))))

(declare-fun setRest!56290 () (Set Context!16704))

(assert (=> setNonEmpty!56290 (= setRest!56286 (set.union (set.insert setElem!56290 (as set.empty (Set Context!16704))) setRest!56290))))

(declare-fun b!7409877 () Bool)

(declare-fun tp!2120079 () Bool)

(assert (=> b!7409877 (= e!4431759 tp!2120079)))

(assert (= (and setNonEmpty!56286 condSetEmpty!56290) setIsEmpty!56290))

(assert (= (and setNonEmpty!56286 (not condSetEmpty!56290)) setNonEmpty!56290))

(assert (= setNonEmpty!56290 b!7409877))

(declare-fun m!8045390 () Bool)

(assert (=> setNonEmpty!56290 m!8045390))

(declare-fun b!7409888 () Bool)

(declare-fun e!4431762 () Bool)

(assert (=> b!7409888 (= e!4431762 tp_is_empty!49087)))

(declare-fun b!7409889 () Bool)

(declare-fun tp!2120091 () Bool)

(declare-fun tp!2120092 () Bool)

(assert (=> b!7409889 (= e!4431762 (and tp!2120091 tp!2120092))))

(assert (=> b!7409738 (= tp!2120052 e!4431762)))

(declare-fun b!7409891 () Bool)

(declare-fun tp!2120093 () Bool)

(declare-fun tp!2120095 () Bool)

(assert (=> b!7409891 (= e!4431762 (and tp!2120093 tp!2120095))))

(declare-fun b!7409890 () Bool)

(declare-fun tp!2120094 () Bool)

(assert (=> b!7409890 (= e!4431762 tp!2120094)))

(assert (= (and b!7409738 (is-ElementMatch!19412 (h!78346 (exprs!8852 setElem!56280)))) b!7409888))

(assert (= (and b!7409738 (is-Concat!28257 (h!78346 (exprs!8852 setElem!56280)))) b!7409889))

(assert (= (and b!7409738 (is-Star!19412 (h!78346 (exprs!8852 setElem!56280)))) b!7409890))

(assert (= (and b!7409738 (is-Union!19412 (h!78346 (exprs!8852 setElem!56280)))) b!7409891))

(declare-fun b!7409892 () Bool)

(declare-fun e!4431763 () Bool)

(declare-fun tp!2120096 () Bool)

(declare-fun tp!2120097 () Bool)

(assert (=> b!7409892 (= e!4431763 (and tp!2120096 tp!2120097))))

(assert (=> b!7409738 (= tp!2120053 e!4431763)))

(assert (= (and b!7409738 (is-Cons!71898 (t!386581 (exprs!8852 setElem!56280)))) b!7409892))

(declare-fun b!7409893 () Bool)

(declare-fun e!4431764 () Bool)

(declare-fun tp!2120098 () Bool)

(assert (=> b!7409893 (= e!4431764 (and tp_is_empty!49087 tp!2120098))))

(assert (=> b!7409731 (= tp!2120043 e!4431764)))

(assert (= (and b!7409731 (is-Cons!71899 (t!386582 (t!386582 s!7927)))) b!7409893))

(declare-fun b!7409894 () Bool)

(declare-fun e!4431765 () Bool)

(assert (=> b!7409894 (= e!4431765 tp_is_empty!49087)))

(declare-fun b!7409895 () Bool)

(declare-fun tp!2120099 () Bool)

(declare-fun tp!2120100 () Bool)

(assert (=> b!7409895 (= e!4431765 (and tp!2120099 tp!2120100))))

(assert (=> b!7409737 (= tp!2120050 e!4431765)))

(declare-fun b!7409897 () Bool)

(declare-fun tp!2120101 () Bool)

(declare-fun tp!2120103 () Bool)

(assert (=> b!7409897 (= e!4431765 (and tp!2120101 tp!2120103))))

(declare-fun b!7409896 () Bool)

(declare-fun tp!2120102 () Bool)

(assert (=> b!7409896 (= e!4431765 tp!2120102)))

(assert (= (and b!7409737 (is-ElementMatch!19412 (h!78346 (exprs!8852 c!10532)))) b!7409894))

(assert (= (and b!7409737 (is-Concat!28257 (h!78346 (exprs!8852 c!10532)))) b!7409895))

(assert (= (and b!7409737 (is-Star!19412 (h!78346 (exprs!8852 c!10532)))) b!7409896))

(assert (= (and b!7409737 (is-Union!19412 (h!78346 (exprs!8852 c!10532)))) b!7409897))

(declare-fun b!7409898 () Bool)

(declare-fun e!4431766 () Bool)

(declare-fun tp!2120104 () Bool)

(declare-fun tp!2120105 () Bool)

(assert (=> b!7409898 (= e!4431766 (and tp!2120104 tp!2120105))))

(assert (=> b!7409737 (= tp!2120051 e!4431766)))

(assert (= (and b!7409737 (is-Cons!71898 (t!386581 (exprs!8852 c!10532)))) b!7409898))

(declare-fun b!7409899 () Bool)

(declare-fun e!4431767 () Bool)

(assert (=> b!7409899 (= e!4431767 tp_is_empty!49087)))

(declare-fun b!7409900 () Bool)

(declare-fun tp!2120106 () Bool)

(declare-fun tp!2120107 () Bool)

(assert (=> b!7409900 (= e!4431767 (and tp!2120106 tp!2120107))))

(assert (=> b!7409726 (= tp!2120039 e!4431767)))

(declare-fun b!7409902 () Bool)

(declare-fun tp!2120108 () Bool)

(declare-fun tp!2120110 () Bool)

(assert (=> b!7409902 (= e!4431767 (and tp!2120108 tp!2120110))))

(declare-fun b!7409901 () Bool)

(declare-fun tp!2120109 () Bool)

(assert (=> b!7409901 (= e!4431767 tp!2120109)))

(assert (= (and b!7409726 (is-ElementMatch!19412 (h!78346 (exprs!8852 empty!3595)))) b!7409899))

(assert (= (and b!7409726 (is-Concat!28257 (h!78346 (exprs!8852 empty!3595)))) b!7409900))

(assert (= (and b!7409726 (is-Star!19412 (h!78346 (exprs!8852 empty!3595)))) b!7409901))

(assert (= (and b!7409726 (is-Union!19412 (h!78346 (exprs!8852 empty!3595)))) b!7409902))

(declare-fun b!7409903 () Bool)

(declare-fun e!4431768 () Bool)

(declare-fun tp!2120111 () Bool)

(declare-fun tp!2120112 () Bool)

(assert (=> b!7409903 (= e!4431768 (and tp!2120111 tp!2120112))))

(assert (=> b!7409726 (= tp!2120040 e!4431768)))

(assert (= (and b!7409726 (is-Cons!71898 (t!386581 (exprs!8852 empty!3595)))) b!7409903))

(declare-fun b_lambda!286541 () Bool)

(assert (= b_lambda!286527 (or b!7409631 b_lambda!286541)))

(declare-fun bs!1924510 () Bool)

(declare-fun d!2291728 () Bool)

(assert (= bs!1924510 (and d!2291728 b!7409631)))

(assert (=> bs!1924510 (= (dynLambda!29672 lambda!459878 (h!78350 (toList!11763 z!3451))) (set.member lt!2618824 (derivationStepZipperUp!2816 (h!78350 (toList!11763 z!3451)) lt!2618822)))))

(declare-fun m!8045392 () Bool)

(assert (=> bs!1924510 m!8045392))

(declare-fun m!8045394 () Bool)

(assert (=> bs!1924510 m!8045394))

(assert (=> b!7409835 d!2291728))

(declare-fun b_lambda!286543 () Bool)

(assert (= b_lambda!286535 (or d!2291588 b_lambda!286543)))

(declare-fun bs!1924511 () Bool)

(declare-fun d!2291730 () Bool)

(assert (= bs!1924511 (and d!2291730 d!2291588)))

(declare-fun validRegex!9964 (Regex!19412) Bool)

(assert (=> bs!1924511 (= (dynLambda!29676 lambda!459895 (h!78346 (exprs!8852 empty!3595))) (validRegex!9964 (h!78346 (exprs!8852 empty!3595))))))

(declare-fun m!8045396 () Bool)

(assert (=> bs!1924511 m!8045396))

(assert (=> b!7409858 d!2291730))

(declare-fun b_lambda!286545 () Bool)

(assert (= b_lambda!286533 (or b!7409631 b_lambda!286545)))

(declare-fun bs!1924512 () Bool)

(declare-fun d!2291732 () Bool)

(assert (= bs!1924512 (and d!2291732 b!7409631)))

(assert (=> bs!1924512 (= (dynLambda!29672 lambda!459877 lt!2618892) (not (= lt!2618892 lt!2618817)))))

(assert (=> d!2291700 d!2291732))

(declare-fun b_lambda!286547 () Bool)

(assert (= b_lambda!286531 (or b!7409631 b_lambda!286547)))

(declare-fun bs!1924513 () Bool)

(declare-fun d!2291734 () Bool)

(assert (= bs!1924513 (and d!2291734 b!7409631)))

(assert (=> bs!1924513 (= (dynLambda!29672 lambda!459877 (h!78350 (toList!11763 lt!2618819))) (not (= (h!78350 (toList!11763 lt!2618819)) lt!2618817)))))

(assert (=> b!7409847 d!2291734))

(declare-fun b_lambda!286549 () Bool)

(assert (= b_lambda!286539 (or d!2291598 b_lambda!286549)))

(declare-fun bs!1924514 () Bool)

(declare-fun d!2291736 () Bool)

(assert (= bs!1924514 (and d!2291736 d!2291598)))

(assert (=> bs!1924514 (= (dynLambda!29676 lambda!459897 (h!78346 (exprs!8852 setElem!56280))) (validRegex!9964 (h!78346 (exprs!8852 setElem!56280))))))

(declare-fun m!8045398 () Bool)

(assert (=> bs!1924514 m!8045398))

(assert (=> b!7409874 d!2291736))

(declare-fun b_lambda!286551 () Bool)

(assert (= b_lambda!286537 (or d!2291630 b_lambda!286551)))

(declare-fun bs!1924515 () Bool)

(declare-fun d!2291738 () Bool)

(assert (= bs!1924515 (and d!2291738 d!2291630)))

(assert (=> bs!1924515 (= (dynLambda!29676 lambda!459904 (h!78346 (exprs!8852 c!10532))) (validRegex!9964 (h!78346 (exprs!8852 c!10532))))))

(declare-fun m!8045400 () Bool)

(assert (=> bs!1924515 m!8045400))

(assert (=> b!7409860 d!2291738))

(declare-fun b_lambda!286553 () Bool)

(assert (= b_lambda!286529 (or b!7409631 b_lambda!286553)))

(declare-fun bs!1924516 () Bool)

(declare-fun d!2291740 () Bool)

(assert (= bs!1924516 (and d!2291740 b!7409631)))

(assert (=> bs!1924516 (= (dynLambda!29672 lambda!459878 lt!2618885) (set.member lt!2618824 (derivationStepZipperUp!2816 lt!2618885 lt!2618822)))))

(declare-fun m!8045402 () Bool)

(assert (=> bs!1924516 m!8045402))

(declare-fun m!8045404 () Bool)

(assert (=> bs!1924516 m!8045404))

(assert (=> d!2291676 d!2291740))

(push 1)

(assert (not d!2291722))

(assert (not d!2291698))

(assert (not b!7409840))

(assert (not bm!682211))

(assert (not b!7409846))

(assert (not bs!1924515))

(assert (not b_lambda!286545))

(assert (not b!7409895))

(assert (not bm!682216))

(assert (not b!7409861))

(assert (not b!7409903))

(assert (not b!7409864))

(assert (not d!2291684))

(assert (not b_lambda!286515))

(assert (not b_lambda!286549))

(assert (not d!2291686))

(assert (not d!2291678))

(assert (not b!7409889))

(assert (not b!7409875))

(assert (not b!7409839))

(assert (not bs!1924511))

(assert (not b!7409900))

(assert (not b!7409789))

(assert (not b!7409901))

(assert (not d!2291672))

(assert (not b!7409871))

(assert (not d!2291696))

(assert (not setNonEmpty!56290))

(assert (not bs!1924514))

(assert (not b!7409890))

(assert (not d!2291668))

(assert (not b_lambda!286517))

(assert (not b!7409893))

(assert (not d!2291680))

(assert (not bm!682217))

(assert (not b!7409837))

(assert (not bm!682210))

(assert (not d!2291714))

(assert (not bs!1924516))

(assert (not d!2291676))

(assert (not d!2291708))

(assert (not b!7409877))

(assert (not b!7409851))

(assert (not b!7409820))

(assert (not d!2291694))

(assert (not b!7409891))

(assert (not b!7409872))

(assert (not d!2291700))

(assert (not b!7409892))

(assert (not b!7409845))

(assert (not d!2291692))

(assert (not b_lambda!286541))

(assert (not d!2291670))

(assert (not d!2291718))

(assert (not b_lambda!286551))

(assert (not b!7409868))

(assert (not b!7409844))

(assert (not b!7409849))

(assert (not b!7409843))

(assert (not b!7409853))

(assert (not bs!1924510))

(assert (not b!7409902))

(assert (not b!7409865))

(assert (not d!2291702))

(assert (not b!7409897))

(assert (not d!2291666))

(assert tp_is_empty!49087)

(assert (not b_lambda!286553))

(assert (not d!2291716))

(assert (not b!7409859))

(assert (not b_lambda!286547))

(assert (not b_lambda!286543))

(assert (not b!7409852))

(assert (not d!2291704))

(assert (not b!7409867))

(assert (not bm!682215))

(assert (not b!7409896))

(assert (not b!7409898))

(assert (not b!7409876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

