; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721460 () Bool)

(assert start!721460)

(declare-fun b!7407613 () Bool)

(assert (=> b!7407613 true))

(declare-fun b!7407607 () Bool)

(assert (=> b!7407607 true))

(declare-fun b!7407604 () Bool)

(declare-fun e!4430426 () Bool)

(declare-fun tp!2119260 () Bool)

(assert (=> b!7407604 (= e!4430426 tp!2119260)))

(declare-fun b!7407605 () Bool)

(declare-fun e!4430432 () Bool)

(declare-fun tp_is_empty!49059 () Bool)

(declare-fun tp!2119263 () Bool)

(assert (=> b!7407605 (= e!4430432 (and tp_is_empty!49059 tp!2119263))))

(declare-datatypes ((C!39070 0))(
  ( (C!39071 (val!29909 Int)) )
))
(declare-datatypes ((Regex!19398 0))(
  ( (ElementMatch!19398 (c!1374876 C!39070)) (Concat!28243 (regOne!39308 Regex!19398) (regTwo!39308 Regex!19398)) (EmptyExpr!19398) (Star!19398 (reg!19727 Regex!19398)) (EmptyLang!19398) (Union!19398 (regOne!39309 Regex!19398) (regTwo!39309 Regex!19398)) )
))
(declare-datatypes ((List!71982 0))(
  ( (Nil!71858) (Cons!71858 (h!78306 Regex!19398) (t!386541 List!71982)) )
))
(declare-datatypes ((Context!16676 0))(
  ( (Context!16677 (exprs!8838 List!71982)) )
))
(declare-fun setElem!56194 () Context!16676)

(declare-fun setNonEmpty!56194 () Bool)

(declare-fun setRes!56194 () Bool)

(declare-fun tp!2119261 () Bool)

(declare-fun inv!91857 (Context!16676) Bool)

(assert (=> setNonEmpty!56194 (= setRes!56194 (and tp!2119261 (inv!91857 setElem!56194) e!4430426))))

(declare-fun z!3451 () (Set Context!16676))

(declare-fun setRest!56194 () (Set Context!16676))

(assert (=> setNonEmpty!56194 (= z!3451 (set.union (set.insert setElem!56194 (as set.empty (Set Context!16676))) setRest!56194))))

(declare-fun b!7407606 () Bool)

(declare-fun res!2982295 () Bool)

(declare-fun e!4430431 () Bool)

(assert (=> b!7407606 (=> (not res!2982295) (not e!4430431))))

(declare-fun c!10532 () Context!16676)

(declare-fun a!2228 () C!39070)

(declare-fun head!15180 (List!71982) Regex!19398)

(assert (=> b!7407606 (= res!2982295 (= (head!15180 (exprs!8838 c!10532)) (ElementMatch!19398 a!2228)))))

(declare-fun res!2982298 () Bool)

(declare-fun e!4430429 () Bool)

(assert (=> b!7407607 (=> res!2982298 e!4430429)))

(declare-fun lt!2618242 () (Set Context!16676))

(declare-fun lambda!459517 () Int)

(declare-fun exists!4758 ((Set Context!16676) Int) Bool)

(assert (=> b!7407607 (= res!2982298 (not (exists!4758 lt!2618242 lambda!459517)))))

(declare-fun b!7407608 () Bool)

(declare-fun res!2982297 () Bool)

(assert (=> b!7407608 (=> (not res!2982297) (not e!4430431))))

(declare-fun isEmpty!41038 (List!71982) Bool)

(assert (=> b!7407608 (= res!2982297 (not (isEmpty!41038 (exprs!8838 c!10532))))))

(declare-fun b!7407609 () Bool)

(declare-fun lt!2618241 () Context!16676)

(assert (=> b!7407609 (= e!4430429 (inv!91857 lt!2618241))))

(declare-fun b!7407610 () Bool)

(declare-fun e!4430427 () Bool)

(declare-fun tp!2119259 () Bool)

(assert (=> b!7407610 (= e!4430427 tp!2119259)))

(declare-fun b!7407611 () Bool)

(declare-fun res!2982299 () Bool)

(assert (=> b!7407611 (=> (not res!2982299) (not e!4430431))))

(declare-fun tail!14805 (List!71982) List!71982)

(assert (=> b!7407611 (= res!2982299 (isEmpty!41038 (tail!14805 (exprs!8838 c!10532))))))

(declare-fun res!2982300 () Bool)

(assert (=> start!721460 (=> (not res!2982300) (not e!4430431))))

(assert (=> start!721460 (= res!2982300 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16676)))))))

(assert (=> start!721460 e!4430431))

(declare-fun condSetEmpty!56194 () Bool)

(assert (=> start!721460 (= condSetEmpty!56194 (= z!3451 (as set.empty (Set Context!16676))))))

(assert (=> start!721460 setRes!56194))

(declare-fun e!4430430 () Bool)

(assert (=> start!721460 (and (inv!91857 c!10532) e!4430430)))

(assert (=> start!721460 tp_is_empty!49059))

(assert (=> start!721460 e!4430432))

(declare-fun b!7407612 () Bool)

(declare-fun tp!2119262 () Bool)

(assert (=> b!7407612 (= e!4430430 tp!2119262)))

(declare-fun e!4430428 () Bool)

(assert (=> b!7407613 (= e!4430428 (not e!4430429))))

(declare-fun res!2982301 () Bool)

(assert (=> b!7407613 (=> res!2982301 e!4430429)))

(declare-fun lt!2618240 () (Set Context!16676))

(assert (=> b!7407613 (= res!2982301 (or (not (set.member lt!2618241 lt!2618242)) (= lt!2618242 lt!2618240)))))

(declare-fun empty!3539 () Context!16676)

(declare-fun lambda!459516 () Int)

(declare-fun flatMapPost!205 ((Set Context!16676) Int Context!16676) Context!16676)

(assert (=> b!7407613 (= (flatMapPost!205 z!3451 lambda!459516 lt!2618241) empty!3539)))

(assert (=> b!7407613 true))

(assert (=> b!7407613 (and (inv!91857 empty!3539) e!4430427)))

(declare-fun b!7407614 () Bool)

(assert (=> b!7407614 (= e!4430431 e!4430428)))

(declare-fun res!2982296 () Bool)

(assert (=> b!7407614 (=> (not res!2982296) (not e!4430428))))

(declare-fun lt!2618243 () C!39070)

(declare-fun derivationStepZipperUp!2802 (Context!16676 C!39070) (Set Context!16676))

(assert (=> b!7407614 (= res!2982296 (= (derivationStepZipperUp!2802 c!10532 lt!2618243) lt!2618240))))

(assert (=> b!7407614 (= lt!2618240 (set.insert lt!2618241 (as set.empty (Set Context!16676))))))

(assert (=> b!7407614 (= lt!2618241 (Context!16677 Nil!71858))))

(declare-fun derivationStepZipper!3672 ((Set Context!16676) C!39070) (Set Context!16676))

(assert (=> b!7407614 (= lt!2618242 (derivationStepZipper!3672 z!3451 lt!2618243))))

(declare-datatypes ((List!71983 0))(
  ( (Nil!71859) (Cons!71859 (h!78307 C!39070) (t!386542 List!71983)) )
))
(declare-fun s!7927 () List!71983)

(declare-fun head!15181 (List!71983) C!39070)

(assert (=> b!7407614 (= lt!2618243 (head!15181 s!7927))))

(declare-fun setIsEmpty!56194 () Bool)

(assert (=> setIsEmpty!56194 setRes!56194))

(declare-fun b!7407615 () Bool)

(declare-fun res!2982302 () Bool)

(assert (=> b!7407615 (=> (not res!2982302) (not e!4430431))))

(assert (=> b!7407615 (= res!2982302 (and (is-Cons!71859 s!7927) (= (h!78307 s!7927) a!2228)))))

(assert (= (and start!721460 res!2982300) b!7407608))

(assert (= (and b!7407608 res!2982297) b!7407606))

(assert (= (and b!7407606 res!2982295) b!7407611))

(assert (= (and b!7407611 res!2982299) b!7407615))

(assert (= (and b!7407615 res!2982302) b!7407614))

(assert (= (and b!7407614 res!2982296) b!7407613))

(assert (= b!7407613 b!7407610))

(assert (= (and b!7407613 (not res!2982301)) b!7407607))

(assert (= (and b!7407607 (not res!2982298)) b!7407609))

(assert (= (and start!721460 condSetEmpty!56194) setIsEmpty!56194))

(assert (= (and start!721460 (not condSetEmpty!56194)) setNonEmpty!56194))

(assert (= setNonEmpty!56194 b!7407604))

(assert (= start!721460 b!7407612))

(assert (= (and start!721460 (is-Cons!71859 s!7927)) b!7407605))

(declare-fun m!8042876 () Bool)

(assert (=> b!7407606 m!8042876))

(declare-fun m!8042878 () Bool)

(assert (=> start!721460 m!8042878))

(declare-fun m!8042880 () Bool)

(assert (=> start!721460 m!8042880))

(declare-fun m!8042882 () Bool)

(assert (=> b!7407611 m!8042882))

(assert (=> b!7407611 m!8042882))

(declare-fun m!8042884 () Bool)

(assert (=> b!7407611 m!8042884))

(declare-fun m!8042886 () Bool)

(assert (=> b!7407609 m!8042886))

(declare-fun m!8042888 () Bool)

(assert (=> b!7407608 m!8042888))

(declare-fun m!8042890 () Bool)

(assert (=> b!7407607 m!8042890))

(declare-fun m!8042892 () Bool)

(assert (=> setNonEmpty!56194 m!8042892))

(declare-fun m!8042894 () Bool)

(assert (=> b!7407614 m!8042894))

(declare-fun m!8042896 () Bool)

(assert (=> b!7407614 m!8042896))

(declare-fun m!8042898 () Bool)

(assert (=> b!7407614 m!8042898))

(declare-fun m!8042900 () Bool)

(assert (=> b!7407614 m!8042900))

(declare-fun m!8042902 () Bool)

(assert (=> b!7407613 m!8042902))

(declare-fun m!8042904 () Bool)

(assert (=> b!7407613 m!8042904))

(declare-fun m!8042906 () Bool)

(assert (=> b!7407613 m!8042906))

(push 1)

(assert (not b!7407612))

(assert (not b!7407609))

(assert (not b!7407604))

(assert (not b!7407610))

(assert (not b!7407607))

(assert (not b!7407608))

(assert (not b!7407606))

(assert (not b!7407614))

(assert (not b!7407611))

(assert (not b!7407605))

(assert (not start!721460))

(assert (not b!7407613))

(assert tp_is_empty!49059)

(assert (not setNonEmpty!56194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290695 () Bool)

(assert (=> d!2290695 (= (isEmpty!41038 (exprs!8838 c!10532)) (is-Nil!71858 (exprs!8838 c!10532)))))

(assert (=> b!7407608 d!2290695))

(declare-fun b!7407670 () Bool)

(declare-fun e!4430462 () (Set Context!16676))

(assert (=> b!7407670 (= e!4430462 (as set.empty (Set Context!16676)))))

(declare-fun bm!682000 () Bool)

(declare-fun call!682005 () (Set Context!16676))

(declare-fun derivationStepZipperDown!3196 (Regex!19398 Context!16676 C!39070) (Set Context!16676))

(assert (=> bm!682000 (= call!682005 (derivationStepZipperDown!3196 (h!78306 (exprs!8838 c!10532)) (Context!16677 (t!386541 (exprs!8838 c!10532))) lt!2618243))))

(declare-fun b!7407671 () Bool)

(declare-fun e!4430460 () (Set Context!16676))

(assert (=> b!7407671 (= e!4430460 e!4430462)))

(declare-fun c!1374886 () Bool)

(assert (=> b!7407671 (= c!1374886 (is-Cons!71858 (exprs!8838 c!10532)))))

(declare-fun b!7407672 () Bool)

(assert (=> b!7407672 (= e!4430460 (set.union call!682005 (derivationStepZipperUp!2802 (Context!16677 (t!386541 (exprs!8838 c!10532))) lt!2618243)))))

(declare-fun d!2290697 () Bool)

(declare-fun c!1374887 () Bool)

(declare-fun e!4430461 () Bool)

(assert (=> d!2290697 (= c!1374887 e!4430461)))

(declare-fun res!2982329 () Bool)

(assert (=> d!2290697 (=> (not res!2982329) (not e!4430461))))

(assert (=> d!2290697 (= res!2982329 (is-Cons!71858 (exprs!8838 c!10532)))))

(assert (=> d!2290697 (= (derivationStepZipperUp!2802 c!10532 lt!2618243) e!4430460)))

(declare-fun b!7407673 () Bool)

(assert (=> b!7407673 (= e!4430462 call!682005)))

(declare-fun b!7407674 () Bool)

(declare-fun nullable!8444 (Regex!19398) Bool)

(assert (=> b!7407674 (= e!4430461 (nullable!8444 (h!78306 (exprs!8838 c!10532))))))

(assert (= (and d!2290697 res!2982329) b!7407674))

(assert (= (and d!2290697 c!1374887) b!7407672))

(assert (= (and d!2290697 (not c!1374887)) b!7407671))

(assert (= (and b!7407671 c!1374886) b!7407673))

(assert (= (and b!7407671 (not c!1374886)) b!7407670))

(assert (= (or b!7407672 b!7407673) bm!682000))

(declare-fun m!8042940 () Bool)

(assert (=> bm!682000 m!8042940))

(declare-fun m!8042942 () Bool)

(assert (=> b!7407672 m!8042942))

(declare-fun m!8042944 () Bool)

(assert (=> b!7407674 m!8042944))

(assert (=> b!7407614 d!2290697))

(declare-fun bs!1923975 () Bool)

(declare-fun d!2290699 () Bool)

(assert (= bs!1923975 (and d!2290699 b!7407613)))

(declare-fun lambda!459526 () Int)

(assert (=> bs!1923975 (= (= lt!2618243 a!2228) (= lambda!459526 lambda!459516))))

(assert (=> d!2290699 true))

(declare-fun flatMap!3200 ((Set Context!16676) Int) (Set Context!16676))

(assert (=> d!2290699 (= (derivationStepZipper!3672 z!3451 lt!2618243) (flatMap!3200 z!3451 lambda!459526))))

(declare-fun bs!1923976 () Bool)

(assert (= bs!1923976 d!2290699))

(declare-fun m!8042946 () Bool)

(assert (=> bs!1923976 m!8042946))

(assert (=> b!7407614 d!2290699))

(declare-fun d!2290701 () Bool)

(assert (=> d!2290701 (= (head!15181 s!7927) (h!78307 s!7927))))

(assert (=> b!7407614 d!2290701))

(declare-fun d!2290703 () Bool)

(declare-fun lambda!459529 () Int)

(declare-fun forall!18183 (List!71982 Int) Bool)

(assert (=> d!2290703 (= (inv!91857 lt!2618241) (forall!18183 (exprs!8838 lt!2618241) lambda!459529))))

(declare-fun bs!1923977 () Bool)

(assert (= bs!1923977 d!2290703))

(declare-fun m!8042948 () Bool)

(assert (=> bs!1923977 m!8042948))

(assert (=> b!7407609 d!2290703))

(declare-fun bs!1923978 () Bool)

(declare-fun d!2290705 () Bool)

(assert (= bs!1923978 (and d!2290705 d!2290703)))

(declare-fun lambda!459530 () Int)

(assert (=> bs!1923978 (= lambda!459530 lambda!459529)))

(assert (=> d!2290705 (= (inv!91857 setElem!56194) (forall!18183 (exprs!8838 setElem!56194) lambda!459530))))

(declare-fun bs!1923979 () Bool)

(assert (= bs!1923979 d!2290705))

(declare-fun m!8042950 () Bool)

(assert (=> bs!1923979 m!8042950))

(assert (=> setNonEmpty!56194 d!2290705))

(declare-fun d!2290707 () Bool)

(assert (=> d!2290707 (= (isEmpty!41038 (tail!14805 (exprs!8838 c!10532))) (is-Nil!71858 (tail!14805 (exprs!8838 c!10532))))))

(assert (=> b!7407611 d!2290707))

(declare-fun d!2290709 () Bool)

(assert (=> d!2290709 (= (tail!14805 (exprs!8838 c!10532)) (t!386541 (exprs!8838 c!10532)))))

(assert (=> b!7407611 d!2290709))

(declare-fun bs!1923980 () Bool)

(declare-fun d!2290711 () Bool)

(assert (= bs!1923980 (and d!2290711 d!2290703)))

(declare-fun lambda!459531 () Int)

(assert (=> bs!1923980 (= lambda!459531 lambda!459529)))

(declare-fun bs!1923981 () Bool)

(assert (= bs!1923981 (and d!2290711 d!2290705)))

(assert (=> bs!1923981 (= lambda!459531 lambda!459530)))

(assert (=> d!2290711 (= (inv!91857 c!10532) (forall!18183 (exprs!8838 c!10532) lambda!459531))))

(declare-fun bs!1923982 () Bool)

(assert (= bs!1923982 d!2290711))

(declare-fun m!8042952 () Bool)

(assert (=> bs!1923982 m!8042952))

(assert (=> start!721460 d!2290711))

(declare-fun d!2290713 () Bool)

(assert (=> d!2290713 (= (head!15180 (exprs!8838 c!10532)) (h!78306 (exprs!8838 c!10532)))))

(assert (=> b!7407606 d!2290713))

(declare-fun d!2290715 () Bool)

(declare-fun lt!2618258 () Bool)

(declare-datatypes ((List!71986 0))(
  ( (Nil!71862) (Cons!71862 (h!78310 Context!16676) (t!386545 List!71986)) )
))
(declare-fun exists!4760 (List!71986 Int) Bool)

(declare-fun toList!11751 ((Set Context!16676)) List!71986)

(assert (=> d!2290715 (= lt!2618258 (exists!4760 (toList!11751 lt!2618242) lambda!459517))))

(declare-fun choose!57426 ((Set Context!16676) Int) Bool)

(assert (=> d!2290715 (= lt!2618258 (choose!57426 lt!2618242 lambda!459517))))

(assert (=> d!2290715 (= (exists!4758 lt!2618242 lambda!459517) lt!2618258)))

(declare-fun bs!1923983 () Bool)

(assert (= bs!1923983 d!2290715))

(declare-fun m!8042954 () Bool)

(assert (=> bs!1923983 m!8042954))

(assert (=> bs!1923983 m!8042954))

(declare-fun m!8042956 () Bool)

(assert (=> bs!1923983 m!8042956))

(declare-fun m!8042958 () Bool)

(assert (=> bs!1923983 m!8042958))

(assert (=> b!7407607 d!2290715))

(declare-fun bs!1923984 () Bool)

(declare-fun d!2290717 () Bool)

(assert (= bs!1923984 (and d!2290717 b!7407607)))

(declare-fun lambda!459534 () Int)

(assert (=> bs!1923984 (not (= lambda!459534 lambda!459517))))

(assert (=> d!2290717 true))

(assert (=> d!2290717 true))

(declare-fun order!29489 () Int)

(declare-fun order!29491 () Int)

(declare-fun dynLambda!29629 (Int Int) Int)

(declare-fun dynLambda!29630 (Int Int) Int)

(assert (=> d!2290717 (< (dynLambda!29629 order!29489 lambda!459516) (dynLambda!29630 order!29491 lambda!459534))))

(assert (=> d!2290717 (= (set.member lt!2618241 (flatMap!3200 z!3451 lambda!459516)) (exists!4758 z!3451 lambda!459534))))

(declare-fun lt!2618261 () Context!16676)

(declare-fun choose!57427 ((Set Context!16676) Int Context!16676) Context!16676)

(assert (=> d!2290717 (= lt!2618261 (choose!57427 z!3451 lambda!459516 lt!2618241))))

(assert (=> d!2290717 (= (flatMapPost!205 z!3451 lambda!459516 lt!2618241) lt!2618261)))

(declare-fun bs!1923985 () Bool)

(assert (= bs!1923985 d!2290717))

(declare-fun m!8042960 () Bool)

(assert (=> bs!1923985 m!8042960))

(declare-fun m!8042962 () Bool)

(assert (=> bs!1923985 m!8042962))

(declare-fun m!8042964 () Bool)

(assert (=> bs!1923985 m!8042964))

(declare-fun m!8042966 () Bool)

(assert (=> bs!1923985 m!8042966))

(assert (=> b!7407613 d!2290717))

(declare-fun bs!1923986 () Bool)

(declare-fun d!2290719 () Bool)

(assert (= bs!1923986 (and d!2290719 d!2290703)))

(declare-fun lambda!459535 () Int)

(assert (=> bs!1923986 (= lambda!459535 lambda!459529)))

(declare-fun bs!1923987 () Bool)

(assert (= bs!1923987 (and d!2290719 d!2290705)))

(assert (=> bs!1923987 (= lambda!459535 lambda!459530)))

(declare-fun bs!1923988 () Bool)

(assert (= bs!1923988 (and d!2290719 d!2290711)))

(assert (=> bs!1923988 (= lambda!459535 lambda!459531)))

(assert (=> d!2290719 (= (inv!91857 empty!3539) (forall!18183 (exprs!8838 empty!3539) lambda!459535))))

(declare-fun bs!1923989 () Bool)

(assert (= bs!1923989 d!2290719))

(declare-fun m!8042968 () Bool)

(assert (=> bs!1923989 m!8042968))

(assert (=> b!7407613 d!2290719))

(declare-fun b!7407682 () Bool)

(declare-fun e!4430465 () Bool)

(declare-fun tp!2119283 () Bool)

(declare-fun tp!2119284 () Bool)

(assert (=> b!7407682 (= e!4430465 (and tp!2119283 tp!2119284))))

(assert (=> b!7407604 (= tp!2119260 e!4430465)))

(assert (= (and b!7407604 (is-Cons!71858 (exprs!8838 setElem!56194))) b!7407682))

(declare-fun b!7407687 () Bool)

(declare-fun e!4430468 () Bool)

(declare-fun tp!2119287 () Bool)

(assert (=> b!7407687 (= e!4430468 (and tp_is_empty!49059 tp!2119287))))

(assert (=> b!7407605 (= tp!2119263 e!4430468)))

(assert (= (and b!7407605 (is-Cons!71859 (t!386542 s!7927))) b!7407687))

(declare-fun b!7407688 () Bool)

(declare-fun e!4430469 () Bool)

(declare-fun tp!2119288 () Bool)

(declare-fun tp!2119289 () Bool)

(assert (=> b!7407688 (= e!4430469 (and tp!2119288 tp!2119289))))

(assert (=> b!7407610 (= tp!2119259 e!4430469)))

(assert (= (and b!7407610 (is-Cons!71858 (exprs!8838 empty!3539))) b!7407688))

(declare-fun condSetEmpty!56200 () Bool)

(assert (=> setNonEmpty!56194 (= condSetEmpty!56200 (= setRest!56194 (as set.empty (Set Context!16676))))))

(declare-fun setRes!56200 () Bool)

(assert (=> setNonEmpty!56194 (= tp!2119261 setRes!56200)))

(declare-fun setIsEmpty!56200 () Bool)

(assert (=> setIsEmpty!56200 setRes!56200))

(declare-fun tp!2119294 () Bool)

(declare-fun setNonEmpty!56200 () Bool)

(declare-fun setElem!56200 () Context!16676)

(declare-fun e!4430472 () Bool)

(assert (=> setNonEmpty!56200 (= setRes!56200 (and tp!2119294 (inv!91857 setElem!56200) e!4430472))))

(declare-fun setRest!56200 () (Set Context!16676))

(assert (=> setNonEmpty!56200 (= setRest!56194 (set.union (set.insert setElem!56200 (as set.empty (Set Context!16676))) setRest!56200))))

(declare-fun b!7407693 () Bool)

(declare-fun tp!2119295 () Bool)

(assert (=> b!7407693 (= e!4430472 tp!2119295)))

(assert (= (and setNonEmpty!56194 condSetEmpty!56200) setIsEmpty!56200))

(assert (= (and setNonEmpty!56194 (not condSetEmpty!56200)) setNonEmpty!56200))

(assert (= setNonEmpty!56200 b!7407693))

(declare-fun m!8042970 () Bool)

(assert (=> setNonEmpty!56200 m!8042970))

(declare-fun b!7407694 () Bool)

(declare-fun e!4430473 () Bool)

(declare-fun tp!2119296 () Bool)

(declare-fun tp!2119297 () Bool)

(assert (=> b!7407694 (= e!4430473 (and tp!2119296 tp!2119297))))

(assert (=> b!7407612 (= tp!2119262 e!4430473)))

(assert (= (and b!7407612 (is-Cons!71858 (exprs!8838 c!10532))) b!7407694))

(push 1)

(assert (not d!2290705))

(assert (not b!7407693))

(assert (not b!7407687))

(assert (not d!2290699))

(assert (not bm!682000))

(assert (not b!7407688))

(assert (not setNonEmpty!56200))

(assert (not b!7407674))

(assert tp_is_empty!49059)

(assert (not d!2290703))

(assert (not b!7407694))

(assert (not d!2290711))

(assert (not b!7407672))

(assert (not d!2290719))

(assert (not d!2290715))

(assert (not b!7407682))

(assert (not d!2290717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7407752 () Bool)

(declare-fun e!4430508 () (Set Context!16676))

(declare-fun call!682022 () (Set Context!16676))

(declare-fun call!682023 () (Set Context!16676))

(assert (=> b!7407752 (= e!4430508 (set.union call!682022 call!682023))))

(declare-fun b!7407753 () Bool)

(declare-fun e!4430509 () (Set Context!16676))

(declare-fun e!4430511 () (Set Context!16676))

(assert (=> b!7407753 (= e!4430509 e!4430511)))

(declare-fun c!1374912 () Bool)

(assert (=> b!7407753 (= c!1374912 (is-Concat!28243 (h!78306 (exprs!8838 c!10532))))))

(declare-fun bm!682016 () Bool)

(declare-fun call!682025 () (Set Context!16676))

(assert (=> bm!682016 (= call!682025 call!682022)))

(declare-fun b!7407754 () Bool)

(declare-fun e!4430510 () (Set Context!16676))

(assert (=> b!7407754 (= e!4430510 (as set.empty (Set Context!16676)))))

(declare-fun b!7407755 () Bool)

(declare-fun c!1374909 () Bool)

(declare-fun e!4430506 () Bool)

(assert (=> b!7407755 (= c!1374909 e!4430506)))

(declare-fun res!2982335 () Bool)

(assert (=> b!7407755 (=> (not res!2982335) (not e!4430506))))

(assert (=> b!7407755 (= res!2982335 (is-Concat!28243 (h!78306 (exprs!8838 c!10532))))))

(assert (=> b!7407755 (= e!4430508 e!4430509)))

(declare-fun b!7407757 () Bool)

(assert (=> b!7407757 (= e!4430506 (nullable!8444 (regOne!39308 (h!78306 (exprs!8838 c!10532)))))))

(declare-fun b!7407758 () Bool)

(declare-fun call!682024 () (Set Context!16676))

(assert (=> b!7407758 (= e!4430511 call!682024)))

(declare-fun bm!682017 () Bool)

(declare-fun call!682026 () List!71982)

(declare-fun call!682021 () List!71982)

(assert (=> bm!682017 (= call!682026 call!682021)))

(declare-fun b!7407759 () Bool)

(declare-fun c!1374908 () Bool)

(assert (=> b!7407759 (= c!1374908 (is-Star!19398 (h!78306 (exprs!8838 c!10532))))))

(assert (=> b!7407759 (= e!4430511 e!4430510)))

(declare-fun bm!682018 () Bool)

(declare-fun c!1374910 () Bool)

(assert (=> bm!682018 (= call!682022 (derivationStepZipperDown!3196 (ite c!1374910 (regOne!39309 (h!78306 (exprs!8838 c!10532))) (ite c!1374909 (regTwo!39308 (h!78306 (exprs!8838 c!10532))) (ite c!1374912 (regOne!39308 (h!78306 (exprs!8838 c!10532))) (reg!19727 (h!78306 (exprs!8838 c!10532)))))) (ite (or c!1374910 c!1374909) (Context!16677 (t!386541 (exprs!8838 c!10532))) (Context!16677 call!682026)) lt!2618243))))

(declare-fun b!7407760 () Bool)

(declare-fun e!4430507 () (Set Context!16676))

(assert (=> b!7407760 (= e!4430507 e!4430508)))

(assert (=> b!7407760 (= c!1374910 (is-Union!19398 (h!78306 (exprs!8838 c!10532))))))

(declare-fun b!7407761 () Bool)

(assert (=> b!7407761 (= e!4430509 (set.union call!682023 call!682025))))

(declare-fun b!7407756 () Bool)

(assert (=> b!7407756 (= e!4430507 (set.insert (Context!16677 (t!386541 (exprs!8838 c!10532))) (as set.empty (Set Context!16676))))))

(declare-fun d!2290747 () Bool)

(declare-fun c!1374911 () Bool)

(assert (=> d!2290747 (= c!1374911 (and (is-ElementMatch!19398 (h!78306 (exprs!8838 c!10532))) (= (c!1374876 (h!78306 (exprs!8838 c!10532))) lt!2618243)))))

(assert (=> d!2290747 (= (derivationStepZipperDown!3196 (h!78306 (exprs!8838 c!10532)) (Context!16677 (t!386541 (exprs!8838 c!10532))) lt!2618243) e!4430507)))

(declare-fun bm!682019 () Bool)

(assert (=> bm!682019 (= call!682023 (derivationStepZipperDown!3196 (ite c!1374910 (regTwo!39309 (h!78306 (exprs!8838 c!10532))) (regOne!39308 (h!78306 (exprs!8838 c!10532)))) (ite c!1374910 (Context!16677 (t!386541 (exprs!8838 c!10532))) (Context!16677 call!682021)) lt!2618243))))

(declare-fun b!7407762 () Bool)

(assert (=> b!7407762 (= e!4430510 call!682024)))

(declare-fun bm!682020 () Bool)

(assert (=> bm!682020 (= call!682024 call!682025)))

(declare-fun bm!682021 () Bool)

(declare-fun $colon$colon!3338 (List!71982 Regex!19398) List!71982)

(assert (=> bm!682021 (= call!682021 ($colon$colon!3338 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532)))) (ite (or c!1374909 c!1374912) (regTwo!39308 (h!78306 (exprs!8838 c!10532))) (h!78306 (exprs!8838 c!10532)))))))

(assert (= (and d!2290747 c!1374911) b!7407756))

(assert (= (and d!2290747 (not c!1374911)) b!7407760))

(assert (= (and b!7407760 c!1374910) b!7407752))

(assert (= (and b!7407760 (not c!1374910)) b!7407755))

(assert (= (and b!7407755 res!2982335) b!7407757))

(assert (= (and b!7407755 c!1374909) b!7407761))

(assert (= (and b!7407755 (not c!1374909)) b!7407753))

(assert (= (and b!7407753 c!1374912) b!7407758))

(assert (= (and b!7407753 (not c!1374912)) b!7407759))

(assert (= (and b!7407759 c!1374908) b!7407762))

(assert (= (and b!7407759 (not c!1374908)) b!7407754))

(assert (= (or b!7407758 b!7407762) bm!682017))

(assert (= (or b!7407758 b!7407762) bm!682020))

(assert (= (or b!7407761 bm!682017) bm!682021))

(assert (= (or b!7407761 bm!682020) bm!682016))

(assert (= (or b!7407752 bm!682016) bm!682018))

(assert (= (or b!7407752 b!7407761) bm!682019))

(declare-fun m!8043004 () Bool)

(assert (=> b!7407757 m!8043004))

(declare-fun m!8043006 () Bool)

(assert (=> bm!682019 m!8043006))

(declare-fun m!8043008 () Bool)

(assert (=> b!7407756 m!8043008))

(declare-fun m!8043010 () Bool)

(assert (=> bm!682018 m!8043010))

(declare-fun m!8043012 () Bool)

(assert (=> bm!682021 m!8043012))

(assert (=> bm!682000 d!2290747))

(declare-fun d!2290749 () Bool)

(declare-fun res!2982340 () Bool)

(declare-fun e!4430516 () Bool)

(assert (=> d!2290749 (=> res!2982340 e!4430516)))

(assert (=> d!2290749 (= res!2982340 (is-Nil!71858 (exprs!8838 empty!3539)))))

(assert (=> d!2290749 (= (forall!18183 (exprs!8838 empty!3539) lambda!459535) e!4430516)))

(declare-fun b!7407767 () Bool)

(declare-fun e!4430517 () Bool)

(assert (=> b!7407767 (= e!4430516 e!4430517)))

(declare-fun res!2982341 () Bool)

(assert (=> b!7407767 (=> (not res!2982341) (not e!4430517))))

(declare-fun dynLambda!29633 (Int Regex!19398) Bool)

(assert (=> b!7407767 (= res!2982341 (dynLambda!29633 lambda!459535 (h!78306 (exprs!8838 empty!3539))))))

(declare-fun b!7407768 () Bool)

(assert (=> b!7407768 (= e!4430517 (forall!18183 (t!386541 (exprs!8838 empty!3539)) lambda!459535))))

(assert (= (and d!2290749 (not res!2982340)) b!7407767))

(assert (= (and b!7407767 res!2982341) b!7407768))

(declare-fun b_lambda!286215 () Bool)

(assert (=> (not b_lambda!286215) (not b!7407767)))

(declare-fun m!8043014 () Bool)

(assert (=> b!7407767 m!8043014))

(declare-fun m!8043016 () Bool)

(assert (=> b!7407768 m!8043016))

(assert (=> d!2290719 d!2290749))

(declare-fun d!2290751 () Bool)

(declare-fun res!2982342 () Bool)

(declare-fun e!4430518 () Bool)

(assert (=> d!2290751 (=> res!2982342 e!4430518)))

(assert (=> d!2290751 (= res!2982342 (is-Nil!71858 (exprs!8838 c!10532)))))

(assert (=> d!2290751 (= (forall!18183 (exprs!8838 c!10532) lambda!459531) e!4430518)))

(declare-fun b!7407769 () Bool)

(declare-fun e!4430519 () Bool)

(assert (=> b!7407769 (= e!4430518 e!4430519)))

(declare-fun res!2982343 () Bool)

(assert (=> b!7407769 (=> (not res!2982343) (not e!4430519))))

(assert (=> b!7407769 (= res!2982343 (dynLambda!29633 lambda!459531 (h!78306 (exprs!8838 c!10532))))))

(declare-fun b!7407770 () Bool)

(assert (=> b!7407770 (= e!4430519 (forall!18183 (t!386541 (exprs!8838 c!10532)) lambda!459531))))

(assert (= (and d!2290751 (not res!2982342)) b!7407769))

(assert (= (and b!7407769 res!2982343) b!7407770))

(declare-fun b_lambda!286217 () Bool)

(assert (=> (not b_lambda!286217) (not b!7407769)))

(declare-fun m!8043018 () Bool)

(assert (=> b!7407769 m!8043018))

(declare-fun m!8043020 () Bool)

(assert (=> b!7407770 m!8043020))

(assert (=> d!2290711 d!2290751))

(declare-fun d!2290753 () Bool)

(declare-fun choose!57430 ((Set Context!16676) Int) (Set Context!16676))

(assert (=> d!2290753 (= (flatMap!3200 z!3451 lambda!459526) (choose!57430 z!3451 lambda!459526))))

(declare-fun bs!1924005 () Bool)

(assert (= bs!1924005 d!2290753))

(declare-fun m!8043022 () Bool)

(assert (=> bs!1924005 m!8043022))

(assert (=> d!2290699 d!2290753))

(declare-fun bs!1924006 () Bool)

(declare-fun d!2290755 () Bool)

(assert (= bs!1924006 (and d!2290755 d!2290703)))

(declare-fun lambda!459548 () Int)

(assert (=> bs!1924006 (= lambda!459548 lambda!459529)))

(declare-fun bs!1924007 () Bool)

(assert (= bs!1924007 (and d!2290755 d!2290705)))

(assert (=> bs!1924007 (= lambda!459548 lambda!459530)))

(declare-fun bs!1924008 () Bool)

(assert (= bs!1924008 (and d!2290755 d!2290711)))

(assert (=> bs!1924008 (= lambda!459548 lambda!459531)))

(declare-fun bs!1924009 () Bool)

(assert (= bs!1924009 (and d!2290755 d!2290719)))

(assert (=> bs!1924009 (= lambda!459548 lambda!459535)))

(assert (=> d!2290755 (= (inv!91857 setElem!56200) (forall!18183 (exprs!8838 setElem!56200) lambda!459548))))

(declare-fun bs!1924010 () Bool)

(assert (= bs!1924010 d!2290755))

(declare-fun m!8043024 () Bool)

(assert (=> bs!1924010 m!8043024))

(assert (=> setNonEmpty!56200 d!2290755))

(declare-fun b!7407771 () Bool)

(declare-fun e!4430522 () (Set Context!16676))

(assert (=> b!7407771 (= e!4430522 (as set.empty (Set Context!16676)))))

(declare-fun bm!682022 () Bool)

(declare-fun call!682027 () (Set Context!16676))

(assert (=> bm!682022 (= call!682027 (derivationStepZipperDown!3196 (h!78306 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532))))) (Context!16677 (t!386541 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532)))))) lt!2618243))))

(declare-fun b!7407772 () Bool)

(declare-fun e!4430520 () (Set Context!16676))

(assert (=> b!7407772 (= e!4430520 e!4430522)))

(declare-fun c!1374913 () Bool)

(assert (=> b!7407772 (= c!1374913 (is-Cons!71858 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532))))))))

(declare-fun b!7407773 () Bool)

(assert (=> b!7407773 (= e!4430520 (set.union call!682027 (derivationStepZipperUp!2802 (Context!16677 (t!386541 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532)))))) lt!2618243)))))

(declare-fun d!2290757 () Bool)

(declare-fun c!1374914 () Bool)

(declare-fun e!4430521 () Bool)

(assert (=> d!2290757 (= c!1374914 e!4430521)))

(declare-fun res!2982344 () Bool)

(assert (=> d!2290757 (=> (not res!2982344) (not e!4430521))))

(assert (=> d!2290757 (= res!2982344 (is-Cons!71858 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532))))))))

(assert (=> d!2290757 (= (derivationStepZipperUp!2802 (Context!16677 (t!386541 (exprs!8838 c!10532))) lt!2618243) e!4430520)))

(declare-fun b!7407774 () Bool)

(assert (=> b!7407774 (= e!4430522 call!682027)))

(declare-fun b!7407775 () Bool)

(assert (=> b!7407775 (= e!4430521 (nullable!8444 (h!78306 (exprs!8838 (Context!16677 (t!386541 (exprs!8838 c!10532)))))))))

(assert (= (and d!2290757 res!2982344) b!7407775))

(assert (= (and d!2290757 c!1374914) b!7407773))

(assert (= (and d!2290757 (not c!1374914)) b!7407772))

(assert (= (and b!7407772 c!1374913) b!7407774))

(assert (= (and b!7407772 (not c!1374913)) b!7407771))

(assert (= (or b!7407773 b!7407774) bm!682022))

(declare-fun m!8043026 () Bool)

(assert (=> bm!682022 m!8043026))

(declare-fun m!8043028 () Bool)

(assert (=> b!7407773 m!8043028))

(declare-fun m!8043030 () Bool)

(assert (=> b!7407775 m!8043030))

(assert (=> b!7407672 d!2290757))

(declare-fun d!2290759 () Bool)

(declare-fun res!2982345 () Bool)

(declare-fun e!4430523 () Bool)

(assert (=> d!2290759 (=> res!2982345 e!4430523)))

(assert (=> d!2290759 (= res!2982345 (is-Nil!71858 (exprs!8838 lt!2618241)))))

(assert (=> d!2290759 (= (forall!18183 (exprs!8838 lt!2618241) lambda!459529) e!4430523)))

(declare-fun b!7407776 () Bool)

(declare-fun e!4430524 () Bool)

(assert (=> b!7407776 (= e!4430523 e!4430524)))

(declare-fun res!2982346 () Bool)

(assert (=> b!7407776 (=> (not res!2982346) (not e!4430524))))

(assert (=> b!7407776 (= res!2982346 (dynLambda!29633 lambda!459529 (h!78306 (exprs!8838 lt!2618241))))))

(declare-fun b!7407777 () Bool)

(assert (=> b!7407777 (= e!4430524 (forall!18183 (t!386541 (exprs!8838 lt!2618241)) lambda!459529))))

(assert (= (and d!2290759 (not res!2982345)) b!7407776))

(assert (= (and b!7407776 res!2982346) b!7407777))

(declare-fun b_lambda!286219 () Bool)

(assert (=> (not b_lambda!286219) (not b!7407776)))

(declare-fun m!8043032 () Bool)

(assert (=> b!7407776 m!8043032))

(declare-fun m!8043034 () Bool)

(assert (=> b!7407777 m!8043034))

(assert (=> d!2290703 d!2290759))

(declare-fun d!2290761 () Bool)

(declare-fun res!2982347 () Bool)

(declare-fun e!4430525 () Bool)

(assert (=> d!2290761 (=> res!2982347 e!4430525)))

(assert (=> d!2290761 (= res!2982347 (is-Nil!71858 (exprs!8838 setElem!56194)))))

(assert (=> d!2290761 (= (forall!18183 (exprs!8838 setElem!56194) lambda!459530) e!4430525)))

(declare-fun b!7407778 () Bool)

(declare-fun e!4430526 () Bool)

(assert (=> b!7407778 (= e!4430525 e!4430526)))

(declare-fun res!2982348 () Bool)

(assert (=> b!7407778 (=> (not res!2982348) (not e!4430526))))

(assert (=> b!7407778 (= res!2982348 (dynLambda!29633 lambda!459530 (h!78306 (exprs!8838 setElem!56194))))))

(declare-fun b!7407779 () Bool)

(assert (=> b!7407779 (= e!4430526 (forall!18183 (t!386541 (exprs!8838 setElem!56194)) lambda!459530))))

(assert (= (and d!2290761 (not res!2982347)) b!7407778))

(assert (= (and b!7407778 res!2982348) b!7407779))

(declare-fun b_lambda!286221 () Bool)

(assert (=> (not b_lambda!286221) (not b!7407778)))

(declare-fun m!8043036 () Bool)

(assert (=> b!7407778 m!8043036))

(declare-fun m!8043038 () Bool)

(assert (=> b!7407779 m!8043038))

(assert (=> d!2290705 d!2290761))

(declare-fun d!2290763 () Bool)

(declare-fun nullableFct!3399 (Regex!19398) Bool)

(assert (=> d!2290763 (= (nullable!8444 (h!78306 (exprs!8838 c!10532))) (nullableFct!3399 (h!78306 (exprs!8838 c!10532))))))

(declare-fun bs!1924011 () Bool)

(assert (= bs!1924011 d!2290763))

(declare-fun m!8043040 () Bool)

(assert (=> bs!1924011 m!8043040))

(assert (=> b!7407674 d!2290763))

(declare-fun d!2290765 () Bool)

(assert (=> d!2290765 (= (flatMap!3200 z!3451 lambda!459516) (choose!57430 z!3451 lambda!459516))))

(declare-fun bs!1924012 () Bool)

(assert (= bs!1924012 d!2290765))

(declare-fun m!8043042 () Bool)

(assert (=> bs!1924012 m!8043042))

(assert (=> d!2290717 d!2290765))

(declare-fun d!2290767 () Bool)

(declare-fun lt!2618268 () Bool)

(assert (=> d!2290767 (= lt!2618268 (exists!4760 (toList!11751 z!3451) lambda!459534))))

(assert (=> d!2290767 (= lt!2618268 (choose!57426 z!3451 lambda!459534))))

(assert (=> d!2290767 (= (exists!4758 z!3451 lambda!459534) lt!2618268)))

(declare-fun bs!1924013 () Bool)

(assert (= bs!1924013 d!2290767))

(declare-fun m!8043044 () Bool)

(assert (=> bs!1924013 m!8043044))

(assert (=> bs!1924013 m!8043044))

(declare-fun m!8043046 () Bool)

(assert (=> bs!1924013 m!8043046))

(declare-fun m!8043048 () Bool)

(assert (=> bs!1924013 m!8043048))

(assert (=> d!2290717 d!2290767))

(declare-fun bs!1924014 () Bool)

(declare-fun d!2290769 () Bool)

(assert (= bs!1924014 (and d!2290769 b!7407607)))

(declare-fun lambda!459551 () Int)

(assert (=> bs!1924014 (not (= lambda!459551 lambda!459517))))

(declare-fun bs!1924015 () Bool)

(assert (= bs!1924015 (and d!2290769 d!2290717)))

(assert (=> bs!1924015 (= lambda!459551 lambda!459534)))

(assert (=> d!2290769 true))

(assert (=> d!2290769 true))

(assert (=> d!2290769 (< (dynLambda!29629 order!29489 lambda!459516) (dynLambda!29630 order!29491 lambda!459551))))

(assert (=> d!2290769 (= (set.member lt!2618241 (flatMap!3200 z!3451 lambda!459516)) (exists!4758 z!3451 lambda!459551))))

(declare-fun _$3!545 () Context!16676)

(declare-fun e!4430529 () Bool)

(assert (=> d!2290769 (and (inv!91857 _$3!545) e!4430529)))

(assert (=> d!2290769 (= (choose!57427 z!3451 lambda!459516 lt!2618241) _$3!545)))

(declare-fun b!7407783 () Bool)

(declare-fun tp!2119319 () Bool)

(assert (=> b!7407783 (= e!4430529 tp!2119319)))

(assert (= d!2290769 b!7407783))

(assert (=> d!2290769 m!8042960))

(assert (=> d!2290769 m!8042962))

(declare-fun m!8043050 () Bool)

(assert (=> d!2290769 m!8043050))

(declare-fun m!8043052 () Bool)

(assert (=> d!2290769 m!8043052))

(assert (=> d!2290717 d!2290769))

(declare-fun bs!1924016 () Bool)

(declare-fun d!2290771 () Bool)

(assert (= bs!1924016 (and d!2290771 b!7407607)))

(declare-fun lambda!459554 () Int)

(assert (=> bs!1924016 (not (= lambda!459554 lambda!459517))))

(declare-fun bs!1924017 () Bool)

(assert (= bs!1924017 (and d!2290771 d!2290717)))

(assert (=> bs!1924017 (not (= lambda!459554 lambda!459534))))

(declare-fun bs!1924018 () Bool)

(assert (= bs!1924018 (and d!2290771 d!2290769)))

(assert (=> bs!1924018 (not (= lambda!459554 lambda!459551))))

(assert (=> d!2290771 true))

(assert (=> d!2290771 (< (dynLambda!29630 order!29491 lambda!459517) (dynLambda!29630 order!29491 lambda!459554))))

(declare-fun forall!18185 (List!71986 Int) Bool)

(assert (=> d!2290771 (= (exists!4760 (toList!11751 lt!2618242) lambda!459517) (not (forall!18185 (toList!11751 lt!2618242) lambda!459554)))))

(declare-fun bs!1924019 () Bool)

(assert (= bs!1924019 d!2290771))

(assert (=> bs!1924019 m!8042954))

(declare-fun m!8043054 () Bool)

(assert (=> bs!1924019 m!8043054))

(assert (=> d!2290715 d!2290771))

(declare-fun d!2290773 () Bool)

(declare-fun e!4430532 () Bool)

(assert (=> d!2290773 e!4430532))

(declare-fun res!2982351 () Bool)

(assert (=> d!2290773 (=> (not res!2982351) (not e!4430532))))

(declare-fun lt!2618271 () List!71986)

(declare-fun noDuplicate!3101 (List!71986) Bool)

(assert (=> d!2290773 (= res!2982351 (noDuplicate!3101 lt!2618271))))

(declare-fun choose!57431 ((Set Context!16676)) List!71986)

(assert (=> d!2290773 (= lt!2618271 (choose!57431 lt!2618242))))

(assert (=> d!2290773 (= (toList!11751 lt!2618242) lt!2618271)))

(declare-fun b!7407788 () Bool)

(declare-fun content!15213 (List!71986) (Set Context!16676))

(assert (=> b!7407788 (= e!4430532 (= (content!15213 lt!2618271) lt!2618242))))

(assert (= (and d!2290773 res!2982351) b!7407788))

(declare-fun m!8043056 () Bool)

(assert (=> d!2290773 m!8043056))

(declare-fun m!8043058 () Bool)

(assert (=> d!2290773 m!8043058))

(declare-fun m!8043060 () Bool)

(assert (=> b!7407788 m!8043060))

(assert (=> d!2290715 d!2290773))

(declare-fun d!2290775 () Bool)

(declare-fun res!2982354 () Bool)

(assert (=> d!2290775 (= res!2982354 (exists!4760 (toList!11751 lt!2618242) lambda!459517))))

(assert (=> d!2290775 true))

(assert (=> d!2290775 (= (choose!57426 lt!2618242 lambda!459517) res!2982354)))

(declare-fun bs!1924020 () Bool)

(assert (= bs!1924020 d!2290775))

(assert (=> bs!1924020 m!8042954))

(assert (=> bs!1924020 m!8042954))

(assert (=> bs!1924020 m!8042956))

(assert (=> d!2290715 d!2290775))

(declare-fun b!7407789 () Bool)

(declare-fun e!4430533 () Bool)

(declare-fun tp!2119320 () Bool)

(declare-fun tp!2119321 () Bool)

(assert (=> b!7407789 (= e!4430533 (and tp!2119320 tp!2119321))))

(assert (=> b!7407693 (= tp!2119295 e!4430533)))

(assert (= (and b!7407693 (is-Cons!71858 (exprs!8838 setElem!56200))) b!7407789))

(declare-fun condSetEmpty!56204 () Bool)

(assert (=> setNonEmpty!56200 (= condSetEmpty!56204 (= setRest!56200 (as set.empty (Set Context!16676))))))

(declare-fun setRes!56204 () Bool)

(assert (=> setNonEmpty!56200 (= tp!2119294 setRes!56204)))

(declare-fun setIsEmpty!56204 () Bool)

(assert (=> setIsEmpty!56204 setRes!56204))

(declare-fun setNonEmpty!56204 () Bool)

(declare-fun setElem!56204 () Context!16676)

(declare-fun tp!2119322 () Bool)

(declare-fun e!4430534 () Bool)

(assert (=> setNonEmpty!56204 (= setRes!56204 (and tp!2119322 (inv!91857 setElem!56204) e!4430534))))

(declare-fun setRest!56204 () (Set Context!16676))

(assert (=> setNonEmpty!56204 (= setRest!56200 (set.union (set.insert setElem!56204 (as set.empty (Set Context!16676))) setRest!56204))))

(declare-fun b!7407790 () Bool)

(declare-fun tp!2119323 () Bool)

(assert (=> b!7407790 (= e!4430534 tp!2119323)))

(assert (= (and setNonEmpty!56200 condSetEmpty!56204) setIsEmpty!56204))

(assert (= (and setNonEmpty!56200 (not condSetEmpty!56204)) setNonEmpty!56204))

(assert (= setNonEmpty!56204 b!7407790))

(declare-fun m!8043062 () Bool)

(assert (=> setNonEmpty!56204 m!8043062))

(declare-fun b!7407803 () Bool)

(declare-fun e!4430537 () Bool)

(declare-fun tp!2119335 () Bool)

(assert (=> b!7407803 (= e!4430537 tp!2119335)))

(declare-fun b!7407804 () Bool)

(declare-fun tp!2119336 () Bool)

(declare-fun tp!2119337 () Bool)

(assert (=> b!7407804 (= e!4430537 (and tp!2119336 tp!2119337))))

(assert (=> b!7407682 (= tp!2119283 e!4430537)))

(declare-fun b!7407801 () Bool)

(assert (=> b!7407801 (= e!4430537 tp_is_empty!49059)))

(declare-fun b!7407802 () Bool)

(declare-fun tp!2119334 () Bool)

(declare-fun tp!2119338 () Bool)

(assert (=> b!7407802 (= e!4430537 (and tp!2119334 tp!2119338))))

(assert (= (and b!7407682 (is-ElementMatch!19398 (h!78306 (exprs!8838 setElem!56194)))) b!7407801))

(assert (= (and b!7407682 (is-Concat!28243 (h!78306 (exprs!8838 setElem!56194)))) b!7407802))

(assert (= (and b!7407682 (is-Star!19398 (h!78306 (exprs!8838 setElem!56194)))) b!7407803))

(assert (= (and b!7407682 (is-Union!19398 (h!78306 (exprs!8838 setElem!56194)))) b!7407804))

(declare-fun b!7407805 () Bool)

(declare-fun e!4430538 () Bool)

(declare-fun tp!2119339 () Bool)

(declare-fun tp!2119340 () Bool)

(assert (=> b!7407805 (= e!4430538 (and tp!2119339 tp!2119340))))

(assert (=> b!7407682 (= tp!2119284 e!4430538)))

(assert (= (and b!7407682 (is-Cons!71858 (t!386541 (exprs!8838 setElem!56194)))) b!7407805))

(declare-fun b!7407808 () Bool)

(declare-fun e!4430539 () Bool)

(declare-fun tp!2119342 () Bool)

(assert (=> b!7407808 (= e!4430539 tp!2119342)))

(declare-fun b!7407809 () Bool)

(declare-fun tp!2119343 () Bool)

(declare-fun tp!2119344 () Bool)

(assert (=> b!7407809 (= e!4430539 (and tp!2119343 tp!2119344))))

(assert (=> b!7407694 (= tp!2119296 e!4430539)))

(declare-fun b!7407806 () Bool)

(assert (=> b!7407806 (= e!4430539 tp_is_empty!49059)))

(declare-fun b!7407807 () Bool)

(declare-fun tp!2119341 () Bool)

(declare-fun tp!2119345 () Bool)

(assert (=> b!7407807 (= e!4430539 (and tp!2119341 tp!2119345))))

(assert (= (and b!7407694 (is-ElementMatch!19398 (h!78306 (exprs!8838 c!10532)))) b!7407806))

(assert (= (and b!7407694 (is-Concat!28243 (h!78306 (exprs!8838 c!10532)))) b!7407807))

(assert (= (and b!7407694 (is-Star!19398 (h!78306 (exprs!8838 c!10532)))) b!7407808))

(assert (= (and b!7407694 (is-Union!19398 (h!78306 (exprs!8838 c!10532)))) b!7407809))

(declare-fun b!7407810 () Bool)

(declare-fun e!4430540 () Bool)

(declare-fun tp!2119346 () Bool)

(declare-fun tp!2119347 () Bool)

(assert (=> b!7407810 (= e!4430540 (and tp!2119346 tp!2119347))))

(assert (=> b!7407694 (= tp!2119297 e!4430540)))

(assert (= (and b!7407694 (is-Cons!71858 (t!386541 (exprs!8838 c!10532)))) b!7407810))

(declare-fun b!7407811 () Bool)

(declare-fun e!4430541 () Bool)

(declare-fun tp!2119348 () Bool)

(assert (=> b!7407811 (= e!4430541 (and tp_is_empty!49059 tp!2119348))))

(assert (=> b!7407687 (= tp!2119287 e!4430541)))

(assert (= (and b!7407687 (is-Cons!71859 (t!386542 (t!386542 s!7927)))) b!7407811))

(declare-fun b!7407814 () Bool)

(declare-fun e!4430542 () Bool)

(declare-fun tp!2119350 () Bool)

(assert (=> b!7407814 (= e!4430542 tp!2119350)))

(declare-fun b!7407815 () Bool)

(declare-fun tp!2119351 () Bool)

(declare-fun tp!2119352 () Bool)

(assert (=> b!7407815 (= e!4430542 (and tp!2119351 tp!2119352))))

(assert (=> b!7407688 (= tp!2119288 e!4430542)))

(declare-fun b!7407812 () Bool)

(assert (=> b!7407812 (= e!4430542 tp_is_empty!49059)))

(declare-fun b!7407813 () Bool)

(declare-fun tp!2119349 () Bool)

(declare-fun tp!2119353 () Bool)

(assert (=> b!7407813 (= e!4430542 (and tp!2119349 tp!2119353))))

(assert (= (and b!7407688 (is-ElementMatch!19398 (h!78306 (exprs!8838 empty!3539)))) b!7407812))

(assert (= (and b!7407688 (is-Concat!28243 (h!78306 (exprs!8838 empty!3539)))) b!7407813))

(assert (= (and b!7407688 (is-Star!19398 (h!78306 (exprs!8838 empty!3539)))) b!7407814))

(assert (= (and b!7407688 (is-Union!19398 (h!78306 (exprs!8838 empty!3539)))) b!7407815))

(declare-fun b!7407816 () Bool)

(declare-fun e!4430543 () Bool)

(declare-fun tp!2119354 () Bool)

(declare-fun tp!2119355 () Bool)

(assert (=> b!7407816 (= e!4430543 (and tp!2119354 tp!2119355))))

(assert (=> b!7407688 (= tp!2119289 e!4430543)))

(assert (= (and b!7407688 (is-Cons!71858 (t!386541 (exprs!8838 empty!3539)))) b!7407816))

(declare-fun b_lambda!286223 () Bool)

(assert (= b_lambda!286219 (or d!2290703 b_lambda!286223)))

(declare-fun bs!1924021 () Bool)

(declare-fun d!2290777 () Bool)

(assert (= bs!1924021 (and d!2290777 d!2290703)))

(declare-fun validRegex!9958 (Regex!19398) Bool)

(assert (=> bs!1924021 (= (dynLambda!29633 lambda!459529 (h!78306 (exprs!8838 lt!2618241))) (validRegex!9958 (h!78306 (exprs!8838 lt!2618241))))))

(declare-fun m!8043064 () Bool)

(assert (=> bs!1924021 m!8043064))

(assert (=> b!7407776 d!2290777))

(declare-fun b_lambda!286225 () Bool)

(assert (= b_lambda!286221 (or d!2290705 b_lambda!286225)))

(declare-fun bs!1924022 () Bool)

(declare-fun d!2290779 () Bool)

(assert (= bs!1924022 (and d!2290779 d!2290705)))

(assert (=> bs!1924022 (= (dynLambda!29633 lambda!459530 (h!78306 (exprs!8838 setElem!56194))) (validRegex!9958 (h!78306 (exprs!8838 setElem!56194))))))

(declare-fun m!8043066 () Bool)

(assert (=> bs!1924022 m!8043066))

(assert (=> b!7407778 d!2290779))

(declare-fun b_lambda!286227 () Bool)

(assert (= b_lambda!286217 (or d!2290711 b_lambda!286227)))

(declare-fun bs!1924023 () Bool)

(declare-fun d!2290781 () Bool)

(assert (= bs!1924023 (and d!2290781 d!2290711)))

(assert (=> bs!1924023 (= (dynLambda!29633 lambda!459531 (h!78306 (exprs!8838 c!10532))) (validRegex!9958 (h!78306 (exprs!8838 c!10532))))))

(declare-fun m!8043068 () Bool)

(assert (=> bs!1924023 m!8043068))

(assert (=> b!7407769 d!2290781))

(declare-fun b_lambda!286229 () Bool)

(assert (= b_lambda!286215 (or d!2290719 b_lambda!286229)))

(declare-fun bs!1924024 () Bool)

(declare-fun d!2290783 () Bool)

(assert (= bs!1924024 (and d!2290783 d!2290719)))

(assert (=> bs!1924024 (= (dynLambda!29633 lambda!459535 (h!78306 (exprs!8838 empty!3539))) (validRegex!9958 (h!78306 (exprs!8838 empty!3539))))))

(declare-fun m!8043070 () Bool)

(assert (=> bs!1924024 m!8043070))

(assert (=> b!7407767 d!2290783))

(push 1)

(assert (not b!7407757))

(assert (not b!7407804))

(assert (not b!7407768))

(assert (not d!2290753))

(assert (not b!7407802))

(assert (not b!7407809))

(assert (not b_lambda!286225))

(assert (not setNonEmpty!56204))

(assert (not b!7407788))

(assert (not b!7407808))

(assert (not b!7407775))

(assert (not d!2290755))

(assert (not b!7407770))

(assert (not b!7407789))

(assert (not bm!682021))

(assert (not d!2290765))

(assert (not b!7407803))

(assert (not d!2290767))

(assert (not b!7407779))

(assert (not b_lambda!286229))

(assert (not b!7407815))

(assert (not bs!1924024))

(assert (not d!2290773))

(assert (not b!7407810))

(assert (not b!7407773))

(assert (not b!7407790))

(assert (not b!7407777))

(assert (not d!2290769))

(assert (not b!7407814))

(assert (not bs!1924023))

(assert (not b!7407807))

(assert (not bm!682019))

(assert (not b!7407813))

(assert (not bs!1924022))

(assert tp_is_empty!49059)

(assert (not bm!682022))

(assert (not b!7407805))

(assert (not d!2290771))

(assert (not b!7407783))

(assert (not b!7407811))

(assert (not b!7407816))

(assert (not bm!682018))

(assert (not b_lambda!286227))

(assert (not bs!1924021))

(assert (not d!2290775))

(assert (not b_lambda!286223))

(assert (not d!2290763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

