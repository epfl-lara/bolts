; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!686260 () Bool)

(assert start!686260)

(declare-fun b!7067614 () Bool)

(assert (=> b!7067614 true))

(declare-fun b!7067616 () Bool)

(assert (=> b!7067616 true))

(declare-fun b!7067611 () Bool)

(assert (=> b!7067611 true))

(declare-fun b!7067602 () Bool)

(declare-fun res!2886111 () Bool)

(declare-fun e!4248955 () Bool)

(assert (=> b!7067602 (=> res!2886111 e!4248955)))

(declare-datatypes ((C!35518 0))(
  ( (C!35519 (val!27461 Int)) )
))
(declare-datatypes ((Regex!17624 0))(
  ( (ElementMatch!17624 (c!1318057 C!35518)) (Concat!26469 (regOne!35760 Regex!17624) (regTwo!35760 Regex!17624)) (EmptyExpr!17624) (Star!17624 (reg!17953 Regex!17624)) (EmptyLang!17624) (Union!17624 (regOne!35761 Regex!17624) (regTwo!35761 Regex!17624)) )
))
(declare-datatypes ((List!68398 0))(
  ( (Nil!68274) (Cons!68274 (h!74722 Regex!17624) (t!382179 List!68398)) )
))
(declare-datatypes ((Context!13240 0))(
  ( (Context!13241 (exprs!7120 List!68398)) )
))
(declare-fun lt!2542617 () Context!13240)

(declare-fun isEmpty!39844 (List!68398) Bool)

(assert (=> b!7067602 (= res!2886111 (isEmpty!39844 (exprs!7120 lt!2542617)))))

(declare-fun b!7067603 () Bool)

(declare-fun res!2886119 () Bool)

(assert (=> b!7067603 (=> res!2886119 e!4248955)))

(assert (=> b!7067603 (= res!2886119 (not (is-Cons!68274 (exprs!7120 lt!2542617))))))

(declare-fun b!7067604 () Bool)

(declare-fun res!2886117 () Bool)

(declare-fun e!4248960 () Bool)

(assert (=> b!7067604 (=> res!2886117 e!4248960)))

(declare-fun lt!2542616 () Context!13240)

(declare-fun lt!2542618 () (Set Context!13240))

(assert (=> b!7067604 (= res!2886117 (not (set.member lt!2542616 lt!2542618)))))

(declare-fun b!7067605 () Bool)

(declare-fun e!4248954 () Bool)

(declare-fun tp!1941750 () Bool)

(assert (=> b!7067605 (= e!4248954 tp!1941750)))

(declare-fun b!7067606 () Bool)

(declare-fun e!4248962 () Bool)

(declare-fun e!4248966 () Bool)

(assert (=> b!7067606 (= e!4248962 e!4248966)))

(declare-fun res!2886116 () Bool)

(assert (=> b!7067606 (=> res!2886116 e!4248966)))

(declare-fun lt!2542623 () (Set Context!13240))

(declare-fun lt!2542608 () (Set Context!13240))

(assert (=> b!7067606 (= res!2886116 (not (= lt!2542623 lt!2542608)))))

(declare-fun lt!2542626 () (Set Context!13240))

(declare-fun lt!2542625 () (Set Context!13240))

(assert (=> b!7067606 (= lt!2542608 (set.union lt!2542626 lt!2542625))))

(declare-fun lt!2542635 () Context!13240)

(declare-datatypes ((List!68399 0))(
  ( (Nil!68275) (Cons!68275 (h!74723 C!35518) (t!382180 List!68399)) )
))
(declare-fun s!7408 () List!68399)

(declare-fun derivationStepZipperUp!2208 (Context!13240 C!35518) (Set Context!13240))

(assert (=> b!7067606 (= lt!2542625 (derivationStepZipperUp!2208 lt!2542635 (h!74723 s!7408)))))

(declare-fun derivationStepZipperDown!2258 (Regex!17624 Context!13240 C!35518) (Set Context!13240))

(assert (=> b!7067606 (= lt!2542626 (derivationStepZipperDown!2258 (h!74722 (exprs!7120 lt!2542617)) lt!2542635 (h!74723 s!7408)))))

(declare-fun lt!2542631 () List!68398)

(declare-fun ct2!306 () Context!13240)

(declare-fun ++!15741 (List!68398 List!68398) List!68398)

(assert (=> b!7067606 (= lt!2542635 (Context!13241 (++!15741 lt!2542631 (exprs!7120 ct2!306))))))

(declare-fun lambda!424358 () Int)

(declare-datatypes ((Unit!161956 0))(
  ( (Unit!161957) )
))
(declare-fun lt!2542614 () Unit!161956)

(declare-fun lemmaConcatPreservesForall!935 (List!68398 List!68398 Int) Unit!161956)

(assert (=> b!7067606 (= lt!2542614 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun lt!2542610 () Unit!161956)

(assert (=> b!7067606 (= lt!2542610 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun b!7067607 () Bool)

(assert (=> b!7067607 (= e!4248955 e!4248962)))

(declare-fun res!2886121 () Bool)

(assert (=> b!7067607 (=> res!2886121 e!4248962)))

(declare-fun nullable!7307 (Regex!17624) Bool)

(assert (=> b!7067607 (= res!2886121 (not (nullable!7307 (h!74722 (exprs!7120 lt!2542617)))))))

(declare-fun tail!13794 (List!68398) List!68398)

(assert (=> b!7067607 (= lt!2542631 (tail!13794 (exprs!7120 lt!2542617)))))

(declare-fun setIsEmpty!50148 () Bool)

(declare-fun setRes!50148 () Bool)

(assert (=> setIsEmpty!50148 setRes!50148))

(declare-fun b!7067608 () Bool)

(declare-fun e!4248965 () Bool)

(declare-fun matchZipper!3164 ((Set Context!13240) List!68399) Bool)

(assert (=> b!7067608 (= e!4248965 (matchZipper!3164 lt!2542625 (t!382180 s!7408)))))

(declare-fun b!7067609 () Bool)

(declare-fun e!4248958 () Bool)

(declare-fun e!4248956 () Bool)

(assert (=> b!7067609 (= e!4248958 e!4248956)))

(declare-fun res!2886110 () Bool)

(assert (=> b!7067609 (=> res!2886110 e!4248956)))

(assert (=> b!7067609 (= res!2886110 (matchZipper!3164 lt!2542625 (t!382180 s!7408)))))

(declare-fun lt!2542637 () Unit!161956)

(assert (=> b!7067609 (= lt!2542637 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun b!7067610 () Bool)

(declare-fun res!2886115 () Bool)

(assert (=> b!7067610 (=> res!2886115 e!4248958)))

(declare-fun lt!2542636 () Bool)

(assert (=> b!7067610 (= res!2886115 (not lt!2542636))))

(declare-fun e!4248959 () Bool)

(assert (=> b!7067611 (= e!4248959 e!4248955)))

(declare-fun res!2886122 () Bool)

(assert (=> b!7067611 (=> res!2886122 e!4248955)))

(declare-fun lt!2542622 () (Set Context!13240))

(declare-fun derivationStepZipper!3074 ((Set Context!13240) C!35518) (Set Context!13240))

(assert (=> b!7067611 (= res!2886122 (not (= (derivationStepZipper!3074 lt!2542622 (h!74723 s!7408)) lt!2542623)))))

(declare-fun lambda!424359 () Int)

(declare-fun lt!2542633 () Context!13240)

(declare-fun flatMap!2550 ((Set Context!13240) Int) (Set Context!13240))

(assert (=> b!7067611 (= (flatMap!2550 lt!2542622 lambda!424359) (derivationStepZipperUp!2208 lt!2542633 (h!74723 s!7408)))))

(declare-fun lt!2542627 () Unit!161956)

(declare-fun lemmaFlatMapOnSingletonSet!2059 ((Set Context!13240) Context!13240 Int) Unit!161956)

(assert (=> b!7067611 (= lt!2542627 (lemmaFlatMapOnSingletonSet!2059 lt!2542622 lt!2542633 lambda!424359))))

(assert (=> b!7067611 (= lt!2542623 (derivationStepZipperUp!2208 lt!2542633 (h!74723 s!7408)))))

(declare-fun lt!2542609 () Unit!161956)

(assert (=> b!7067611 (= lt!2542609 (lemmaConcatPreservesForall!935 (exprs!7120 lt!2542617) (exprs!7120 ct2!306) lambda!424358))))

(declare-fun setElem!50148 () Context!13240)

(declare-fun tp!1941747 () Bool)

(declare-fun setNonEmpty!50148 () Bool)

(declare-fun inv!86920 (Context!13240) Bool)

(assert (=> setNonEmpty!50148 (= setRes!50148 (and tp!1941747 (inv!86920 setElem!50148) e!4248954))))

(declare-fun z1!570 () (Set Context!13240))

(declare-fun setRest!50148 () (Set Context!13240))

(assert (=> setNonEmpty!50148 (= z1!570 (set.union (set.insert setElem!50148 (as set.empty (Set Context!13240))) setRest!50148))))

(declare-fun b!7067612 () Bool)

(declare-fun e!4248964 () Bool)

(declare-fun tp!1941749 () Bool)

(assert (=> b!7067612 (= e!4248964 tp!1941749)))

(declare-fun b!7067613 () Bool)

(declare-fun e!4248961 () Bool)

(assert (=> b!7067613 (= e!4248961 e!4248959)))

(declare-fun res!2886109 () Bool)

(assert (=> b!7067613 (=> res!2886109 e!4248959)))

(declare-fun lt!2542620 () (Set Context!13240))

(assert (=> b!7067613 (= res!2886109 (not (= lt!2542622 lt!2542620)))))

(assert (=> b!7067613 (= lt!2542622 (set.insert lt!2542633 (as set.empty (Set Context!13240))))))

(declare-fun lt!2542629 () Unit!161956)

(assert (=> b!7067613 (= lt!2542629 (lemmaConcatPreservesForall!935 (exprs!7120 lt!2542617) (exprs!7120 ct2!306) lambda!424358))))

(declare-fun e!4248957 () Bool)

(assert (=> b!7067614 (= e!4248957 (not e!4248960))))

(declare-fun res!2886108 () Bool)

(assert (=> b!7067614 (=> res!2886108 e!4248960)))

(assert (=> b!7067614 (= res!2886108 (not (matchZipper!3164 lt!2542620 s!7408)))))

(assert (=> b!7067614 (= lt!2542620 (set.insert lt!2542616 (as set.empty (Set Context!13240))))))

(declare-fun lambda!424356 () Int)

(declare-fun getWitness!1713 ((Set Context!13240) Int) Context!13240)

(assert (=> b!7067614 (= lt!2542616 (getWitness!1713 lt!2542618 lambda!424356))))

(declare-datatypes ((List!68400 0))(
  ( (Nil!68276) (Cons!68276 (h!74724 Context!13240) (t!382181 List!68400)) )
))
(declare-fun lt!2542632 () List!68400)

(declare-fun exists!3656 (List!68400 Int) Bool)

(assert (=> b!7067614 (exists!3656 lt!2542632 lambda!424356)))

(declare-fun lt!2542634 () Unit!161956)

(declare-fun lemmaZipperMatchesExistsMatchingContext!545 (List!68400 List!68399) Unit!161956)

(assert (=> b!7067614 (= lt!2542634 (lemmaZipperMatchesExistsMatchingContext!545 lt!2542632 s!7408))))

(declare-fun toList!10965 ((Set Context!13240)) List!68400)

(assert (=> b!7067614 (= lt!2542632 (toList!10965 lt!2542618))))

(declare-fun b!7067615 () Bool)

(declare-fun e!4248963 () Bool)

(assert (=> b!7067615 (= e!4248963 (not (matchZipper!3164 lt!2542625 (t!382180 s!7408))))))

(declare-fun lt!2542621 () Unit!161956)

(assert (=> b!7067615 (= lt!2542621 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(assert (=> b!7067616 (= e!4248960 e!4248961)))

(declare-fun res!2886107 () Bool)

(assert (=> b!7067616 (=> res!2886107 e!4248961)))

(assert (=> b!7067616 (= res!2886107 (or (not (= lt!2542633 lt!2542616)) (not (set.member lt!2542617 z1!570))))))

(assert (=> b!7067616 (= lt!2542633 (Context!13241 (++!15741 (exprs!7120 lt!2542617) (exprs!7120 ct2!306))))))

(declare-fun lt!2542613 () Unit!161956)

(assert (=> b!7067616 (= lt!2542613 (lemmaConcatPreservesForall!935 (exprs!7120 lt!2542617) (exprs!7120 ct2!306) lambda!424358))))

(declare-fun lambda!424357 () Int)

(declare-fun mapPost2!453 ((Set Context!13240) Int Context!13240) Context!13240)

(assert (=> b!7067616 (= lt!2542617 (mapPost2!453 z1!570 lambda!424357 lt!2542616))))

(declare-fun b!7067617 () Bool)

(assert (=> b!7067617 (= e!4248966 e!4248958)))

(declare-fun res!2886113 () Bool)

(assert (=> b!7067617 (=> res!2886113 e!4248958)))

(assert (=> b!7067617 (= res!2886113 e!4248963)))

(declare-fun res!2886114 () Bool)

(assert (=> b!7067617 (=> (not res!2886114) (not e!4248963))))

(declare-fun lt!2542628 () Bool)

(assert (=> b!7067617 (= res!2886114 (not (= lt!2542636 lt!2542628)))))

(assert (=> b!7067617 (= lt!2542636 (matchZipper!3164 lt!2542623 (t!382180 s!7408)))))

(declare-fun lt!2542611 () Unit!161956)

(assert (=> b!7067617 (= lt!2542611 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(assert (=> b!7067617 (= (matchZipper!3164 lt!2542608 (t!382180 s!7408)) e!4248965)))

(declare-fun res!2886120 () Bool)

(assert (=> b!7067617 (=> res!2886120 e!4248965)))

(assert (=> b!7067617 (= res!2886120 lt!2542628)))

(assert (=> b!7067617 (= lt!2542628 (matchZipper!3164 lt!2542626 (t!382180 s!7408)))))

(declare-fun lt!2542612 () Unit!161956)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1637 ((Set Context!13240) (Set Context!13240) List!68399) Unit!161956)

(assert (=> b!7067617 (= lt!2542612 (lemmaZipperConcatMatchesSameAsBothZippers!1637 lt!2542626 lt!2542625 (t!382180 s!7408)))))

(declare-fun lt!2542615 () Unit!161956)

(assert (=> b!7067617 (= lt!2542615 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun lt!2542619 () Unit!161956)

(assert (=> b!7067617 (= lt!2542619 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun b!7067618 () Bool)

(declare-fun e!4248967 () Bool)

(declare-fun tp_is_empty!44473 () Bool)

(declare-fun tp!1941748 () Bool)

(assert (=> b!7067618 (= e!4248967 (and tp_is_empty!44473 tp!1941748))))

(declare-fun res!2886112 () Bool)

(assert (=> start!686260 (=> (not res!2886112) (not e!4248957))))

(assert (=> start!686260 (= res!2886112 (matchZipper!3164 lt!2542618 s!7408))))

(declare-fun appendTo!745 ((Set Context!13240) Context!13240) (Set Context!13240))

(assert (=> start!686260 (= lt!2542618 (appendTo!745 z1!570 ct2!306))))

(assert (=> start!686260 e!4248957))

(declare-fun condSetEmpty!50148 () Bool)

(assert (=> start!686260 (= condSetEmpty!50148 (= z1!570 (as set.empty (Set Context!13240))))))

(assert (=> start!686260 setRes!50148))

(assert (=> start!686260 (and (inv!86920 ct2!306) e!4248964)))

(assert (=> start!686260 e!4248967))

(declare-fun b!7067619 () Bool)

(declare-fun res!2886118 () Bool)

(assert (=> b!7067619 (=> (not res!2886118) (not e!4248957))))

(assert (=> b!7067619 (= res!2886118 (is-Cons!68275 s!7408))))

(declare-fun b!7067620 () Bool)

(assert (=> b!7067620 (= e!4248956 (inv!86920 lt!2542635))))

(declare-fun lt!2542630 () Unit!161956)

(assert (=> b!7067620 (= lt!2542630 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(declare-fun lt!2542624 () Unit!161956)

(assert (=> b!7067620 (= lt!2542624 (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(assert (= (and start!686260 res!2886112) b!7067619))

(assert (= (and b!7067619 res!2886118) b!7067614))

(assert (= (and b!7067614 (not res!2886108)) b!7067604))

(assert (= (and b!7067604 (not res!2886117)) b!7067616))

(assert (= (and b!7067616 (not res!2886107)) b!7067613))

(assert (= (and b!7067613 (not res!2886109)) b!7067611))

(assert (= (and b!7067611 (not res!2886122)) b!7067603))

(assert (= (and b!7067603 (not res!2886119)) b!7067602))

(assert (= (and b!7067602 (not res!2886111)) b!7067607))

(assert (= (and b!7067607 (not res!2886121)) b!7067606))

(assert (= (and b!7067606 (not res!2886116)) b!7067617))

(assert (= (and b!7067617 (not res!2886120)) b!7067608))

(assert (= (and b!7067617 res!2886114) b!7067615))

(assert (= (and b!7067617 (not res!2886113)) b!7067610))

(assert (= (and b!7067610 (not res!2886115)) b!7067609))

(assert (= (and b!7067609 (not res!2886110)) b!7067620))

(assert (= (and start!686260 condSetEmpty!50148) setIsEmpty!50148))

(assert (= (and start!686260 (not condSetEmpty!50148)) setNonEmpty!50148))

(assert (= setNonEmpty!50148 b!7067605))

(assert (= start!686260 b!7067612))

(assert (= (and start!686260 (is-Cons!68275 s!7408)) b!7067618))

(declare-fun m!7791874 () Bool)

(assert (=> start!686260 m!7791874))

(declare-fun m!7791876 () Bool)

(assert (=> start!686260 m!7791876))

(declare-fun m!7791878 () Bool)

(assert (=> start!686260 m!7791878))

(declare-fun m!7791880 () Bool)

(assert (=> b!7067606 m!7791880))

(declare-fun m!7791882 () Bool)

(assert (=> b!7067606 m!7791882))

(declare-fun m!7791884 () Bool)

(assert (=> b!7067606 m!7791884))

(assert (=> b!7067606 m!7791880))

(declare-fun m!7791886 () Bool)

(assert (=> b!7067606 m!7791886))

(declare-fun m!7791888 () Bool)

(assert (=> b!7067604 m!7791888))

(declare-fun m!7791890 () Bool)

(assert (=> b!7067614 m!7791890))

(declare-fun m!7791892 () Bool)

(assert (=> b!7067614 m!7791892))

(declare-fun m!7791894 () Bool)

(assert (=> b!7067614 m!7791894))

(declare-fun m!7791896 () Bool)

(assert (=> b!7067614 m!7791896))

(declare-fun m!7791898 () Bool)

(assert (=> b!7067614 m!7791898))

(declare-fun m!7791900 () Bool)

(assert (=> b!7067614 m!7791900))

(declare-fun m!7791902 () Bool)

(assert (=> b!7067620 m!7791902))

(assert (=> b!7067620 m!7791880))

(assert (=> b!7067620 m!7791880))

(declare-fun m!7791904 () Bool)

(assert (=> b!7067609 m!7791904))

(assert (=> b!7067609 m!7791880))

(declare-fun m!7791906 () Bool)

(assert (=> b!7067613 m!7791906))

(declare-fun m!7791908 () Bool)

(assert (=> b!7067613 m!7791908))

(declare-fun m!7791910 () Bool)

(assert (=> b!7067607 m!7791910))

(declare-fun m!7791912 () Bool)

(assert (=> b!7067607 m!7791912))

(assert (=> b!7067615 m!7791904))

(assert (=> b!7067615 m!7791880))

(declare-fun m!7791914 () Bool)

(assert (=> b!7067602 m!7791914))

(declare-fun m!7791916 () Bool)

(assert (=> setNonEmpty!50148 m!7791916))

(assert (=> b!7067611 m!7791908))

(declare-fun m!7791918 () Bool)

(assert (=> b!7067611 m!7791918))

(declare-fun m!7791920 () Bool)

(assert (=> b!7067611 m!7791920))

(declare-fun m!7791922 () Bool)

(assert (=> b!7067611 m!7791922))

(declare-fun m!7791924 () Bool)

(assert (=> b!7067611 m!7791924))

(assert (=> b!7067608 m!7791904))

(declare-fun m!7791926 () Bool)

(assert (=> b!7067617 m!7791926))

(assert (=> b!7067617 m!7791880))

(declare-fun m!7791928 () Bool)

(assert (=> b!7067617 m!7791928))

(assert (=> b!7067617 m!7791880))

(declare-fun m!7791930 () Bool)

(assert (=> b!7067617 m!7791930))

(declare-fun m!7791932 () Bool)

(assert (=> b!7067617 m!7791932))

(assert (=> b!7067617 m!7791880))

(declare-fun m!7791934 () Bool)

(assert (=> b!7067616 m!7791934))

(declare-fun m!7791936 () Bool)

(assert (=> b!7067616 m!7791936))

(assert (=> b!7067616 m!7791908))

(declare-fun m!7791938 () Bool)

(assert (=> b!7067616 m!7791938))

(push 1)

(assert (not b!7067620))

(assert (not b!7067606))

(assert (not b!7067618))

(assert (not b!7067617))

(assert (not b!7067611))

(assert tp_is_empty!44473)

(assert (not setNonEmpty!50148))

(assert (not b!7067608))

(assert (not b!7067607))

(assert (not b!7067609))

(assert (not b!7067614))

(assert (not b!7067613))

(assert (not b!7067615))

(assert (not b!7067605))

(assert (not b!7067612))

(assert (not b!7067616))

(assert (not start!686260))

(assert (not b!7067602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2210014 () Bool)

(declare-fun forall!16571 (List!68398 Int) Bool)

(assert (=> d!2210014 (forall!16571 (++!15741 (exprs!7120 lt!2542617) (exprs!7120 ct2!306)) lambda!424358)))

(declare-fun lt!2542732 () Unit!161956)

(declare-fun choose!54101 (List!68398 List!68398 Int) Unit!161956)

(assert (=> d!2210014 (= lt!2542732 (choose!54101 (exprs!7120 lt!2542617) (exprs!7120 ct2!306) lambda!424358))))

(assert (=> d!2210014 (forall!16571 (exprs!7120 lt!2542617) lambda!424358)))

(assert (=> d!2210014 (= (lemmaConcatPreservesForall!935 (exprs!7120 lt!2542617) (exprs!7120 ct2!306) lambda!424358) lt!2542732)))

(declare-fun bs!1879985 () Bool)

(assert (= bs!1879985 d!2210014))

(assert (=> bs!1879985 m!7791936))

(assert (=> bs!1879985 m!7791936))

(declare-fun m!7792006 () Bool)

(assert (=> bs!1879985 m!7792006))

(declare-fun m!7792008 () Bool)

(assert (=> bs!1879985 m!7792008))

(declare-fun m!7792010 () Bool)

(assert (=> bs!1879985 m!7792010))

(assert (=> b!7067613 d!2210014))

(declare-fun d!2210016 () Bool)

(declare-fun choose!54102 ((Set Context!13240) Int) (Set Context!13240))

(assert (=> d!2210016 (= (flatMap!2550 lt!2542622 lambda!424359) (choose!54102 lt!2542622 lambda!424359))))

(declare-fun bs!1879986 () Bool)

(assert (= bs!1879986 d!2210016))

(declare-fun m!7792012 () Bool)

(assert (=> bs!1879986 m!7792012))

(assert (=> b!7067611 d!2210016))

(declare-fun b!7067700 () Bool)

(declare-fun e!4249018 () (Set Context!13240))

(assert (=> b!7067700 (= e!4249018 (as set.empty (Set Context!13240)))))

(declare-fun b!7067701 () Bool)

(declare-fun e!4249017 () Bool)

(assert (=> b!7067701 (= e!4249017 (nullable!7307 (h!74722 (exprs!7120 lt!2542633))))))

(declare-fun b!7067702 () Bool)

(declare-fun e!4249016 () (Set Context!13240))

(assert (=> b!7067702 (= e!4249016 e!4249018)))

(declare-fun c!1318072 () Bool)

(assert (=> b!7067702 (= c!1318072 (is-Cons!68274 (exprs!7120 lt!2542633)))))

(declare-fun call!642283 () (Set Context!13240))

(declare-fun b!7067703 () Bool)

(assert (=> b!7067703 (= e!4249016 (set.union call!642283 (derivationStepZipperUp!2208 (Context!13241 (t!382179 (exprs!7120 lt!2542633))) (h!74723 s!7408))))))

(declare-fun b!7067704 () Bool)

(assert (=> b!7067704 (= e!4249018 call!642283)))

(declare-fun d!2210018 () Bool)

(declare-fun c!1318071 () Bool)

(assert (=> d!2210018 (= c!1318071 e!4249017)))

(declare-fun res!2886174 () Bool)

(assert (=> d!2210018 (=> (not res!2886174) (not e!4249017))))

(assert (=> d!2210018 (= res!2886174 (is-Cons!68274 (exprs!7120 lt!2542633)))))

(assert (=> d!2210018 (= (derivationStepZipperUp!2208 lt!2542633 (h!74723 s!7408)) e!4249016)))

(declare-fun bm!642278 () Bool)

(assert (=> bm!642278 (= call!642283 (derivationStepZipperDown!2258 (h!74722 (exprs!7120 lt!2542633)) (Context!13241 (t!382179 (exprs!7120 lt!2542633))) (h!74723 s!7408)))))

(assert (= (and d!2210018 res!2886174) b!7067701))

(assert (= (and d!2210018 c!1318071) b!7067703))

(assert (= (and d!2210018 (not c!1318071)) b!7067702))

(assert (= (and b!7067702 c!1318072) b!7067704))

(assert (= (and b!7067702 (not c!1318072)) b!7067700))

(assert (= (or b!7067703 b!7067704) bm!642278))

(declare-fun m!7792014 () Bool)

(assert (=> b!7067701 m!7792014))

(declare-fun m!7792016 () Bool)

(assert (=> b!7067703 m!7792016))

(declare-fun m!7792018 () Bool)

(assert (=> bm!642278 m!7792018))

(assert (=> b!7067611 d!2210018))

(declare-fun bs!1879987 () Bool)

(declare-fun d!2210020 () Bool)

(assert (= bs!1879987 (and d!2210020 b!7067611)))

(declare-fun lambda!424400 () Int)

(assert (=> bs!1879987 (= lambda!424400 lambda!424359)))

(assert (=> d!2210020 true))

(assert (=> d!2210020 (= (derivationStepZipper!3074 lt!2542622 (h!74723 s!7408)) (flatMap!2550 lt!2542622 lambda!424400))))

(declare-fun bs!1879988 () Bool)

(assert (= bs!1879988 d!2210020))

(declare-fun m!7792020 () Bool)

(assert (=> bs!1879988 m!7792020))

(assert (=> b!7067611 d!2210020))

(declare-fun d!2210022 () Bool)

(declare-fun dynLambda!27745 (Int Context!13240) (Set Context!13240))

(assert (=> d!2210022 (= (flatMap!2550 lt!2542622 lambda!424359) (dynLambda!27745 lambda!424359 lt!2542633))))

(declare-fun lt!2542735 () Unit!161956)

(declare-fun choose!54103 ((Set Context!13240) Context!13240 Int) Unit!161956)

(assert (=> d!2210022 (= lt!2542735 (choose!54103 lt!2542622 lt!2542633 lambda!424359))))

(assert (=> d!2210022 (= lt!2542622 (set.insert lt!2542633 (as set.empty (Set Context!13240))))))

(assert (=> d!2210022 (= (lemmaFlatMapOnSingletonSet!2059 lt!2542622 lt!2542633 lambda!424359) lt!2542735)))

(declare-fun b_lambda!269719 () Bool)

(assert (=> (not b_lambda!269719) (not d!2210022)))

(declare-fun bs!1879989 () Bool)

(assert (= bs!1879989 d!2210022))

(assert (=> bs!1879989 m!7791920))

(declare-fun m!7792022 () Bool)

(assert (=> bs!1879989 m!7792022))

(declare-fun m!7792024 () Bool)

(assert (=> bs!1879989 m!7792024))

(assert (=> bs!1879989 m!7791906))

(assert (=> b!7067611 d!2210022))

(assert (=> b!7067611 d!2210014))

(declare-fun bs!1879990 () Bool)

(declare-fun d!2210024 () Bool)

(assert (= bs!1879990 (and d!2210024 b!7067616)))

(declare-fun lambda!424403 () Int)

(assert (=> bs!1879990 (= lambda!424403 lambda!424358)))

(assert (=> d!2210024 (= (inv!86920 setElem!50148) (forall!16571 (exprs!7120 setElem!50148) lambda!424403))))

(declare-fun bs!1879991 () Bool)

(assert (= bs!1879991 d!2210024))

(declare-fun m!7792026 () Bool)

(assert (=> bs!1879991 m!7792026))

(assert (=> setNonEmpty!50148 d!2210024))

(declare-fun d!2210026 () Bool)

(assert (=> d!2210026 (= (isEmpty!39844 (exprs!7120 lt!2542617)) (is-Nil!68274 (exprs!7120 lt!2542617)))))

(assert (=> b!7067602 d!2210026))

(declare-fun bs!1879992 () Bool)

(declare-fun d!2210028 () Bool)

(assert (= bs!1879992 (and d!2210028 b!7067616)))

(declare-fun lambda!424404 () Int)

(assert (=> bs!1879992 (= lambda!424404 lambda!424358)))

(declare-fun bs!1879993 () Bool)

(assert (= bs!1879993 (and d!2210028 d!2210024)))

(assert (=> bs!1879993 (= lambda!424404 lambda!424403)))

(assert (=> d!2210028 (= (inv!86920 lt!2542635) (forall!16571 (exprs!7120 lt!2542635) lambda!424404))))

(declare-fun bs!1879994 () Bool)

(assert (= bs!1879994 d!2210028))

(declare-fun m!7792028 () Bool)

(assert (=> bs!1879994 m!7792028))

(assert (=> b!7067620 d!2210028))

(declare-fun d!2210030 () Bool)

(assert (=> d!2210030 (forall!16571 (++!15741 lt!2542631 (exprs!7120 ct2!306)) lambda!424358)))

(declare-fun lt!2542736 () Unit!161956)

(assert (=> d!2210030 (= lt!2542736 (choose!54101 lt!2542631 (exprs!7120 ct2!306) lambda!424358))))

(assert (=> d!2210030 (forall!16571 lt!2542631 lambda!424358)))

(assert (=> d!2210030 (= (lemmaConcatPreservesForall!935 lt!2542631 (exprs!7120 ct2!306) lambda!424358) lt!2542736)))

(declare-fun bs!1879995 () Bool)

(assert (= bs!1879995 d!2210030))

(assert (=> bs!1879995 m!7791886))

(assert (=> bs!1879995 m!7791886))

(declare-fun m!7792030 () Bool)

(assert (=> bs!1879995 m!7792030))

(declare-fun m!7792032 () Bool)

(assert (=> bs!1879995 m!7792032))

(declare-fun m!7792034 () Bool)

(assert (=> bs!1879995 m!7792034))

(assert (=> b!7067620 d!2210030))

(declare-fun d!2210032 () Bool)

(declare-fun c!1318077 () Bool)

(declare-fun isEmpty!39846 (List!68399) Bool)

(assert (=> d!2210032 (= c!1318077 (isEmpty!39846 s!7408))))

(declare-fun e!4249021 () Bool)

(assert (=> d!2210032 (= (matchZipper!3164 lt!2542618 s!7408) e!4249021)))

(declare-fun b!7067711 () Bool)

(declare-fun nullableZipper!2686 ((Set Context!13240)) Bool)

(assert (=> b!7067711 (= e!4249021 (nullableZipper!2686 lt!2542618))))

(declare-fun b!7067712 () Bool)

(declare-fun head!14392 (List!68399) C!35518)

(declare-fun tail!13796 (List!68399) List!68399)

(assert (=> b!7067712 (= e!4249021 (matchZipper!3164 (derivationStepZipper!3074 lt!2542618 (head!14392 s!7408)) (tail!13796 s!7408)))))

(assert (= (and d!2210032 c!1318077) b!7067711))

(assert (= (and d!2210032 (not c!1318077)) b!7067712))

(declare-fun m!7792036 () Bool)

(assert (=> d!2210032 m!7792036))

(declare-fun m!7792038 () Bool)

(assert (=> b!7067711 m!7792038))

(declare-fun m!7792040 () Bool)

(assert (=> b!7067712 m!7792040))

(assert (=> b!7067712 m!7792040))

(declare-fun m!7792042 () Bool)

(assert (=> b!7067712 m!7792042))

(declare-fun m!7792044 () Bool)

(assert (=> b!7067712 m!7792044))

(assert (=> b!7067712 m!7792042))

(assert (=> b!7067712 m!7792044))

(declare-fun m!7792046 () Bool)

(assert (=> b!7067712 m!7792046))

(assert (=> start!686260 d!2210032))

(declare-fun bs!1879996 () Bool)

(declare-fun d!2210034 () Bool)

(assert (= bs!1879996 (and d!2210034 b!7067616)))

(declare-fun lambda!424409 () Int)

(assert (=> bs!1879996 (= lambda!424409 lambda!424357)))

(assert (=> d!2210034 true))

(declare-fun map!15967 ((Set Context!13240) Int) (Set Context!13240))

(assert (=> d!2210034 (= (appendTo!745 z1!570 ct2!306) (map!15967 z1!570 lambda!424409))))

(declare-fun bs!1879997 () Bool)

(assert (= bs!1879997 d!2210034))

(declare-fun m!7792048 () Bool)

(assert (=> bs!1879997 m!7792048))

(assert (=> start!686260 d!2210034))

(declare-fun bs!1879998 () Bool)

(declare-fun d!2210036 () Bool)

(assert (= bs!1879998 (and d!2210036 b!7067616)))

(declare-fun lambda!424410 () Int)

(assert (=> bs!1879998 (= lambda!424410 lambda!424358)))

(declare-fun bs!1879999 () Bool)

(assert (= bs!1879999 (and d!2210036 d!2210024)))

(assert (=> bs!1879999 (= lambda!424410 lambda!424403)))

(declare-fun bs!1880000 () Bool)

(assert (= bs!1880000 (and d!2210036 d!2210028)))

(assert (=> bs!1880000 (= lambda!424410 lambda!424404)))

(assert (=> d!2210036 (= (inv!86920 ct2!306) (forall!16571 (exprs!7120 ct2!306) lambda!424410))))

(declare-fun bs!1880001 () Bool)

(assert (= bs!1880001 d!2210036))

(declare-fun m!7792050 () Bool)

(assert (=> bs!1880001 m!7792050))

(assert (=> start!686260 d!2210036))

(declare-fun d!2210038 () Bool)

(declare-fun c!1318079 () Bool)

(assert (=> d!2210038 (= c!1318079 (isEmpty!39846 (t!382180 s!7408)))))

(declare-fun e!4249022 () Bool)

(assert (=> d!2210038 (= (matchZipper!3164 lt!2542625 (t!382180 s!7408)) e!4249022)))

(declare-fun b!7067713 () Bool)

(assert (=> b!7067713 (= e!4249022 (nullableZipper!2686 lt!2542625))))

(declare-fun b!7067714 () Bool)

(assert (=> b!7067714 (= e!4249022 (matchZipper!3164 (derivationStepZipper!3074 lt!2542625 (head!14392 (t!382180 s!7408))) (tail!13796 (t!382180 s!7408))))))

(assert (= (and d!2210038 c!1318079) b!7067713))

(assert (= (and d!2210038 (not c!1318079)) b!7067714))

(declare-fun m!7792052 () Bool)

(assert (=> d!2210038 m!7792052))

(declare-fun m!7792054 () Bool)

(assert (=> b!7067713 m!7792054))

(declare-fun m!7792056 () Bool)

(assert (=> b!7067714 m!7792056))

(assert (=> b!7067714 m!7792056))

(declare-fun m!7792058 () Bool)

(assert (=> b!7067714 m!7792058))

(declare-fun m!7792060 () Bool)

(assert (=> b!7067714 m!7792060))

(assert (=> b!7067714 m!7792058))

(assert (=> b!7067714 m!7792060))

(declare-fun m!7792062 () Bool)

(assert (=> b!7067714 m!7792062))

(assert (=> b!7067609 d!2210038))

(assert (=> b!7067609 d!2210030))

(assert (=> b!7067617 d!2210030))

(declare-fun d!2210040 () Bool)

(declare-fun c!1318080 () Bool)

(assert (=> d!2210040 (= c!1318080 (isEmpty!39846 (t!382180 s!7408)))))

(declare-fun e!4249023 () Bool)

(assert (=> d!2210040 (= (matchZipper!3164 lt!2542608 (t!382180 s!7408)) e!4249023)))

(declare-fun b!7067715 () Bool)

(assert (=> b!7067715 (= e!4249023 (nullableZipper!2686 lt!2542608))))

(declare-fun b!7067716 () Bool)

(assert (=> b!7067716 (= e!4249023 (matchZipper!3164 (derivationStepZipper!3074 lt!2542608 (head!14392 (t!382180 s!7408))) (tail!13796 (t!382180 s!7408))))))

(assert (= (and d!2210040 c!1318080) b!7067715))

(assert (= (and d!2210040 (not c!1318080)) b!7067716))

(assert (=> d!2210040 m!7792052))

(declare-fun m!7792064 () Bool)

(assert (=> b!7067715 m!7792064))

(assert (=> b!7067716 m!7792056))

(assert (=> b!7067716 m!7792056))

(declare-fun m!7792066 () Bool)

(assert (=> b!7067716 m!7792066))

(assert (=> b!7067716 m!7792060))

(assert (=> b!7067716 m!7792066))

(assert (=> b!7067716 m!7792060))

(declare-fun m!7792068 () Bool)

(assert (=> b!7067716 m!7792068))

(assert (=> b!7067617 d!2210040))

(declare-fun d!2210042 () Bool)

(declare-fun c!1318081 () Bool)

(assert (=> d!2210042 (= c!1318081 (isEmpty!39846 (t!382180 s!7408)))))

(declare-fun e!4249024 () Bool)

(assert (=> d!2210042 (= (matchZipper!3164 lt!2542623 (t!382180 s!7408)) e!4249024)))

(declare-fun b!7067717 () Bool)

(assert (=> b!7067717 (= e!4249024 (nullableZipper!2686 lt!2542623))))

(declare-fun b!7067718 () Bool)

(assert (=> b!7067718 (= e!4249024 (matchZipper!3164 (derivationStepZipper!3074 lt!2542623 (head!14392 (t!382180 s!7408))) (tail!13796 (t!382180 s!7408))))))

(assert (= (and d!2210042 c!1318081) b!7067717))

(assert (= (and d!2210042 (not c!1318081)) b!7067718))

(assert (=> d!2210042 m!7792052))

(declare-fun m!7792070 () Bool)

(assert (=> b!7067717 m!7792070))

(assert (=> b!7067718 m!7792056))

(assert (=> b!7067718 m!7792056))

(declare-fun m!7792072 () Bool)

(assert (=> b!7067718 m!7792072))

(assert (=> b!7067718 m!7792060))

(assert (=> b!7067718 m!7792072))

(assert (=> b!7067718 m!7792060))

(declare-fun m!7792074 () Bool)

(assert (=> b!7067718 m!7792074))

(assert (=> b!7067617 d!2210042))

(declare-fun d!2210044 () Bool)

(declare-fun c!1318082 () Bool)

(assert (=> d!2210044 (= c!1318082 (isEmpty!39846 (t!382180 s!7408)))))

(declare-fun e!4249025 () Bool)

(assert (=> d!2210044 (= (matchZipper!3164 lt!2542626 (t!382180 s!7408)) e!4249025)))

(declare-fun b!7067719 () Bool)

(assert (=> b!7067719 (= e!4249025 (nullableZipper!2686 lt!2542626))))

(declare-fun b!7067720 () Bool)

(assert (=> b!7067720 (= e!4249025 (matchZipper!3164 (derivationStepZipper!3074 lt!2542626 (head!14392 (t!382180 s!7408))) (tail!13796 (t!382180 s!7408))))))

(assert (= (and d!2210044 c!1318082) b!7067719))

(assert (= (and d!2210044 (not c!1318082)) b!7067720))

(assert (=> d!2210044 m!7792052))

(declare-fun m!7792076 () Bool)

(assert (=> b!7067719 m!7792076))

(assert (=> b!7067720 m!7792056))

(assert (=> b!7067720 m!7792056))

(declare-fun m!7792078 () Bool)

(assert (=> b!7067720 m!7792078))

(assert (=> b!7067720 m!7792060))

(assert (=> b!7067720 m!7792078))

(assert (=> b!7067720 m!7792060))

(declare-fun m!7792080 () Bool)

(assert (=> b!7067720 m!7792080))

(assert (=> b!7067617 d!2210044))

(declare-fun e!4249028 () Bool)

(declare-fun d!2210046 () Bool)

(assert (=> d!2210046 (= (matchZipper!3164 (set.union lt!2542626 lt!2542625) (t!382180 s!7408)) e!4249028)))

(declare-fun res!2886177 () Bool)

(assert (=> d!2210046 (=> res!2886177 e!4249028)))

(assert (=> d!2210046 (= res!2886177 (matchZipper!3164 lt!2542626 (t!382180 s!7408)))))

(declare-fun lt!2542741 () Unit!161956)

(declare-fun choose!54104 ((Set Context!13240) (Set Context!13240) List!68399) Unit!161956)

(assert (=> d!2210046 (= lt!2542741 (choose!54104 lt!2542626 lt!2542625 (t!382180 s!7408)))))

(assert (=> d!2210046 (= (lemmaZipperConcatMatchesSameAsBothZippers!1637 lt!2542626 lt!2542625 (t!382180 s!7408)) lt!2542741)))

(declare-fun b!7067723 () Bool)

(assert (=> b!7067723 (= e!4249028 (matchZipper!3164 lt!2542625 (t!382180 s!7408)))))

(assert (= (and d!2210046 (not res!2886177)) b!7067723))

(declare-fun m!7792082 () Bool)

(assert (=> d!2210046 m!7792082))

(assert (=> d!2210046 m!7791930))

(declare-fun m!7792084 () Bool)

(assert (=> d!2210046 m!7792084))

(assert (=> b!7067723 m!7791904))

(assert (=> b!7067617 d!2210046))

(assert (=> b!7067608 d!2210038))

(declare-fun d!2210048 () Bool)

(declare-fun nullableFct!2801 (Regex!17624) Bool)

(assert (=> d!2210048 (= (nullable!7307 (h!74722 (exprs!7120 lt!2542617))) (nullableFct!2801 (h!74722 (exprs!7120 lt!2542617))))))

(declare-fun bs!1880002 () Bool)

(assert (= bs!1880002 d!2210048))

(declare-fun m!7792086 () Bool)

(assert (=> bs!1880002 m!7792086))

(assert (=> b!7067607 d!2210048))

(declare-fun d!2210050 () Bool)

(assert (=> d!2210050 (= (tail!13794 (exprs!7120 lt!2542617)) (t!382179 (exprs!7120 lt!2542617)))))

(assert (=> b!7067607 d!2210050))

(declare-fun b!7067734 () Bool)

(declare-fun res!2886183 () Bool)

(declare-fun e!4249033 () Bool)

(assert (=> b!7067734 (=> (not res!2886183) (not e!4249033))))

(declare-fun lt!2542744 () List!68398)

(declare-fun size!41195 (List!68398) Int)

(assert (=> b!7067734 (= res!2886183 (= (size!41195 lt!2542744) (+ (size!41195 (exprs!7120 lt!2542617)) (size!41195 (exprs!7120 ct2!306)))))))

(declare-fun b!7067732 () Bool)

(declare-fun e!4249034 () List!68398)

(assert (=> b!7067732 (= e!4249034 (exprs!7120 ct2!306))))

(declare-fun b!7067733 () Bool)

(assert (=> b!7067733 (= e!4249034 (Cons!68274 (h!74722 (exprs!7120 lt!2542617)) (++!15741 (t!382179 (exprs!7120 lt!2542617)) (exprs!7120 ct2!306))))))

(declare-fun b!7067735 () Bool)

(assert (=> b!7067735 (= e!4249033 (or (not (= (exprs!7120 ct2!306) Nil!68274)) (= lt!2542744 (exprs!7120 lt!2542617))))))

(declare-fun d!2210052 () Bool)

(assert (=> d!2210052 e!4249033))

(declare-fun res!2886182 () Bool)

(assert (=> d!2210052 (=> (not res!2886182) (not e!4249033))))

(declare-fun content!13759 (List!68398) (Set Regex!17624))

(assert (=> d!2210052 (= res!2886182 (= (content!13759 lt!2542744) (set.union (content!13759 (exprs!7120 lt!2542617)) (content!13759 (exprs!7120 ct2!306)))))))

(assert (=> d!2210052 (= lt!2542744 e!4249034)))

(declare-fun c!1318085 () Bool)

(assert (=> d!2210052 (= c!1318085 (is-Nil!68274 (exprs!7120 lt!2542617)))))

(assert (=> d!2210052 (= (++!15741 (exprs!7120 lt!2542617) (exprs!7120 ct2!306)) lt!2542744)))

(assert (= (and d!2210052 c!1318085) b!7067732))

(assert (= (and d!2210052 (not c!1318085)) b!7067733))

(assert (= (and d!2210052 res!2886182) b!7067734))

(assert (= (and b!7067734 res!2886183) b!7067735))

(declare-fun m!7792088 () Bool)

(assert (=> b!7067734 m!7792088))

(declare-fun m!7792090 () Bool)

(assert (=> b!7067734 m!7792090))

(declare-fun m!7792092 () Bool)

(assert (=> b!7067734 m!7792092))

(declare-fun m!7792094 () Bool)

(assert (=> b!7067733 m!7792094))

(declare-fun m!7792096 () Bool)

(assert (=> d!2210052 m!7792096))

(declare-fun m!7792098 () Bool)

(assert (=> d!2210052 m!7792098))

(declare-fun m!7792100 () Bool)

(assert (=> d!2210052 m!7792100))

(assert (=> b!7067616 d!2210052))

(assert (=> b!7067616 d!2210014))

(declare-fun d!2210054 () Bool)

(declare-fun e!4249037 () Bool)

(assert (=> d!2210054 e!4249037))

(declare-fun res!2886186 () Bool)

(assert (=> d!2210054 (=> (not res!2886186) (not e!4249037))))

(declare-fun lt!2542747 () Context!13240)

(declare-fun dynLambda!27746 (Int Context!13240) Context!13240)

(assert (=> d!2210054 (= res!2886186 (= lt!2542616 (dynLambda!27746 lambda!424357 lt!2542747)))))

(declare-fun choose!54105 ((Set Context!13240) Int Context!13240) Context!13240)

(assert (=> d!2210054 (= lt!2542747 (choose!54105 z1!570 lambda!424357 lt!2542616))))

(assert (=> d!2210054 (set.member lt!2542616 (map!15967 z1!570 lambda!424357))))

(assert (=> d!2210054 (= (mapPost2!453 z1!570 lambda!424357 lt!2542616) lt!2542747)))

(declare-fun b!7067739 () Bool)

(assert (=> b!7067739 (= e!4249037 (set.member lt!2542747 z1!570))))

(assert (= (and d!2210054 res!2886186) b!7067739))

(declare-fun b_lambda!269721 () Bool)

(assert (=> (not b_lambda!269721) (not d!2210054)))

(declare-fun m!7792102 () Bool)

(assert (=> d!2210054 m!7792102))

(declare-fun m!7792104 () Bool)

(assert (=> d!2210054 m!7792104))

(declare-fun m!7792106 () Bool)

(assert (=> d!2210054 m!7792106))

(declare-fun m!7792108 () Bool)

(assert (=> d!2210054 m!7792108))

(declare-fun m!7792110 () Bool)

(assert (=> b!7067739 m!7792110))

(assert (=> b!7067616 d!2210054))

(declare-fun bs!1880003 () Bool)

(declare-fun d!2210056 () Bool)

(assert (= bs!1880003 (and d!2210056 b!7067614)))

(declare-fun lambda!424413 () Int)

(assert (=> bs!1880003 (= lambda!424413 lambda!424356)))

(assert (=> d!2210056 true))

(assert (=> d!2210056 (exists!3656 lt!2542632 lambda!424413)))

(declare-fun lt!2542750 () Unit!161956)

(declare-fun choose!54106 (List!68400 List!68399) Unit!161956)

(assert (=> d!2210056 (= lt!2542750 (choose!54106 lt!2542632 s!7408))))

(declare-fun content!13760 (List!68400) (Set Context!13240))

(assert (=> d!2210056 (matchZipper!3164 (content!13760 lt!2542632) s!7408)))

(assert (=> d!2210056 (= (lemmaZipperMatchesExistsMatchingContext!545 lt!2542632 s!7408) lt!2542750)))

(declare-fun bs!1880004 () Bool)

(assert (= bs!1880004 d!2210056))

(declare-fun m!7792112 () Bool)

(assert (=> bs!1880004 m!7792112))

(declare-fun m!7792114 () Bool)

(assert (=> bs!1880004 m!7792114))

(declare-fun m!7792116 () Bool)

(assert (=> bs!1880004 m!7792116))

(assert (=> bs!1880004 m!7792116))

(declare-fun m!7792118 () Bool)

(assert (=> bs!1880004 m!7792118))

(assert (=> b!7067614 d!2210056))

(declare-fun d!2210058 () Bool)

(declare-fun c!1318088 () Bool)

(assert (=> d!2210058 (= c!1318088 (isEmpty!39846 s!7408))))

(declare-fun e!4249038 () Bool)

(assert (=> d!2210058 (= (matchZipper!3164 lt!2542620 s!7408) e!4249038)))

(declare-fun b!7067740 () Bool)

(assert (=> b!7067740 (= e!4249038 (nullableZipper!2686 lt!2542620))))

(declare-fun b!7067741 () Bool)

(assert (=> b!7067741 (= e!4249038 (matchZipper!3164 (derivationStepZipper!3074 lt!2542620 (head!14392 s!7408)) (tail!13796 s!7408)))))

(assert (= (and d!2210058 c!1318088) b!7067740))

(assert (= (and d!2210058 (not c!1318088)) b!7067741))

(assert (=> d!2210058 m!7792036))

(declare-fun m!7792120 () Bool)

(assert (=> b!7067740 m!7792120))

(assert (=> b!7067741 m!7792040))

(assert (=> b!7067741 m!7792040))

(declare-fun m!7792122 () Bool)

(assert (=> b!7067741 m!7792122))

(assert (=> b!7067741 m!7792044))

(assert (=> b!7067741 m!7792122))

(assert (=> b!7067741 m!7792044))

(declare-fun m!7792124 () Bool)

(assert (=> b!7067741 m!7792124))

(assert (=> b!7067614 d!2210058))

(declare-fun bs!1880005 () Bool)

(declare-fun d!2210060 () Bool)

(assert (= bs!1880005 (and d!2210060 b!7067614)))

(declare-fun lambda!424416 () Int)

(assert (=> bs!1880005 (not (= lambda!424416 lambda!424356))))

(declare-fun bs!1880006 () Bool)

(assert (= bs!1880006 (and d!2210060 d!2210056)))

(assert (=> bs!1880006 (not (= lambda!424416 lambda!424413))))

(assert (=> d!2210060 true))

(declare-fun order!28381 () Int)

(declare-fun dynLambda!27747 (Int Int) Int)

(assert (=> d!2210060 (< (dynLambda!27747 order!28381 lambda!424356) (dynLambda!27747 order!28381 lambda!424416))))

(declare-fun forall!16572 (List!68400 Int) Bool)

(assert (=> d!2210060 (= (exists!3656 lt!2542632 lambda!424356) (not (forall!16572 lt!2542632 lambda!424416)))))

(declare-fun bs!1880007 () Bool)

(assert (= bs!1880007 d!2210060))

(declare-fun m!7792126 () Bool)

(assert (=> bs!1880007 m!7792126))

(assert (=> b!7067614 d!2210060))

(declare-fun d!2210062 () Bool)

(declare-fun e!4249041 () Bool)

(assert (=> d!2210062 e!4249041))

(declare-fun res!2886189 () Bool)

(assert (=> d!2210062 (=> (not res!2886189) (not e!4249041))))

(declare-fun lt!2542753 () List!68400)

(declare-fun noDuplicate!2715 (List!68400) Bool)

(assert (=> d!2210062 (= res!2886189 (noDuplicate!2715 lt!2542753))))

(declare-fun choose!54107 ((Set Context!13240)) List!68400)

(assert (=> d!2210062 (= lt!2542753 (choose!54107 lt!2542618))))

(assert (=> d!2210062 (= (toList!10965 lt!2542618) lt!2542753)))

(declare-fun b!7067746 () Bool)

(assert (=> b!7067746 (= e!4249041 (= (content!13760 lt!2542753) lt!2542618))))

(assert (= (and d!2210062 res!2886189) b!7067746))

(declare-fun m!7792128 () Bool)

(assert (=> d!2210062 m!7792128))

(declare-fun m!7792130 () Bool)

(assert (=> d!2210062 m!7792130))

(declare-fun m!7792132 () Bool)

(assert (=> b!7067746 m!7792132))

(assert (=> b!7067614 d!2210062))

(declare-fun d!2210064 () Bool)

(declare-fun e!4249044 () Bool)

(assert (=> d!2210064 e!4249044))

(declare-fun res!2886192 () Bool)

(assert (=> d!2210064 (=> (not res!2886192) (not e!4249044))))

(declare-fun lt!2542756 () Context!13240)

(declare-fun dynLambda!27748 (Int Context!13240) Bool)

(assert (=> d!2210064 (= res!2886192 (dynLambda!27748 lambda!424356 lt!2542756))))

(declare-fun getWitness!1715 (List!68400 Int) Context!13240)

(assert (=> d!2210064 (= lt!2542756 (getWitness!1715 (toList!10965 lt!2542618) lambda!424356))))

(declare-fun exists!3658 ((Set Context!13240) Int) Bool)

(assert (=> d!2210064 (exists!3658 lt!2542618 lambda!424356)))

(assert (=> d!2210064 (= (getWitness!1713 lt!2542618 lambda!424356) lt!2542756)))

(declare-fun b!7067749 () Bool)

(assert (=> b!7067749 (= e!4249044 (set.member lt!2542756 lt!2542618))))

(assert (= (and d!2210064 res!2886192) b!7067749))

(declare-fun b_lambda!269723 () Bool)

(assert (=> (not b_lambda!269723) (not d!2210064)))

(declare-fun m!7792134 () Bool)

(assert (=> d!2210064 m!7792134))

(assert (=> d!2210064 m!7791892))

(assert (=> d!2210064 m!7791892))

(declare-fun m!7792136 () Bool)

(assert (=> d!2210064 m!7792136))

(declare-fun m!7792138 () Bool)

(assert (=> d!2210064 m!7792138))

(declare-fun m!7792140 () Bool)

(assert (=> b!7067749 m!7792140))

(assert (=> b!7067614 d!2210064))

(assert (=> b!7067615 d!2210038))

(assert (=> b!7067615 d!2210030))

(assert (=> b!7067606 d!2210030))

(declare-fun b!7067772 () Bool)

(declare-fun e!4249062 () (Set Context!13240))

(declare-fun e!4249060 () (Set Context!13240))

(assert (=> b!7067772 (= e!4249062 e!4249060)))

(declare-fun c!1318099 () Bool)

(assert (=> b!7067772 (= c!1318099 (is-Concat!26469 (h!74722 (exprs!7120 lt!2542617))))))

(declare-fun b!7067773 () Bool)

(declare-fun e!4249061 () (Set Context!13240))

(declare-fun e!4249058 () (Set Context!13240))

(assert (=> b!7067773 (= e!4249061 e!4249058)))

(declare-fun c!1318102 () Bool)

(assert (=> b!7067773 (= c!1318102 (is-Union!17624 (h!74722 (exprs!7120 lt!2542617))))))

(declare-fun b!7067774 () Bool)

(declare-fun e!4249059 () (Set Context!13240))

(assert (=> b!7067774 (= e!4249059 (as set.empty (Set Context!13240)))))

(declare-fun b!7067775 () Bool)

(declare-fun call!642297 () (Set Context!13240))

(assert (=> b!7067775 (= e!4249059 call!642297)))

(declare-fun d!2210066 () Bool)

(declare-fun c!1318103 () Bool)

(assert (=> d!2210066 (= c!1318103 (and (is-ElementMatch!17624 (h!74722 (exprs!7120 lt!2542617))) (= (c!1318057 (h!74722 (exprs!7120 lt!2542617))) (h!74723 s!7408))))))

(assert (=> d!2210066 (= (derivationStepZipperDown!2258 (h!74722 (exprs!7120 lt!2542617)) lt!2542635 (h!74723 s!7408)) e!4249061)))

(declare-fun b!7067776 () Bool)

(declare-fun c!1318101 () Bool)

(declare-fun e!4249057 () Bool)

(assert (=> b!7067776 (= c!1318101 e!4249057)))

(declare-fun res!2886196 () Bool)

(assert (=> b!7067776 (=> (not res!2886196) (not e!4249057))))

(assert (=> b!7067776 (= res!2886196 (is-Concat!26469 (h!74722 (exprs!7120 lt!2542617))))))

(assert (=> b!7067776 (= e!4249058 e!4249062)))

(declare-fun call!642301 () (Set Context!13240))

(declare-fun call!642299 () List!68398)

(declare-fun bm!642291 () Bool)

(assert (=> bm!642291 (= call!642301 (derivationStepZipperDown!2258 (ite c!1318102 (regOne!35761 (h!74722 (exprs!7120 lt!2542617))) (regOne!35760 (h!74722 (exprs!7120 lt!2542617)))) (ite c!1318102 lt!2542635 (Context!13241 call!642299)) (h!74723 s!7408)))))

(declare-fun call!642296 () (Set Context!13240))

(declare-fun bm!642292 () Bool)

(declare-fun call!642300 () List!68398)

(assert (=> bm!642292 (= call!642296 (derivationStepZipperDown!2258 (ite c!1318102 (regTwo!35761 (h!74722 (exprs!7120 lt!2542617))) (ite c!1318101 (regTwo!35760 (h!74722 (exprs!7120 lt!2542617))) (ite c!1318099 (regOne!35760 (h!74722 (exprs!7120 lt!2542617))) (reg!17953 (h!74722 (exprs!7120 lt!2542617)))))) (ite (or c!1318102 c!1318101) lt!2542635 (Context!13241 call!642300)) (h!74723 s!7408)))))

(declare-fun b!7067777 () Bool)

(declare-fun c!1318100 () Bool)

(assert (=> b!7067777 (= c!1318100 (is-Star!17624 (h!74722 (exprs!7120 lt!2542617))))))

(assert (=> b!7067777 (= e!4249060 e!4249059)))

(declare-fun b!7067778 () Bool)

(assert (=> b!7067778 (= e!4249057 (nullable!7307 (regOne!35760 (h!74722 (exprs!7120 lt!2542617)))))))

(declare-fun bm!642293 () Bool)

(declare-fun call!642298 () (Set Context!13240))

(assert (=> bm!642293 (= call!642298 call!642296)))

(declare-fun b!7067779 () Bool)

(assert (=> b!7067779 (= e!4249061 (set.insert lt!2542635 (as set.empty (Set Context!13240))))))

(declare-fun bm!642294 () Bool)

(declare-fun $colon$colon!2647 (List!68398 Regex!17624) List!68398)

(assert (=> bm!642294 (= call!642299 ($colon$colon!2647 (exprs!7120 lt!2542635) (ite (or c!1318101 c!1318099) (regTwo!35760 (h!74722 (exprs!7120 lt!2542617))) (h!74722 (exprs!7120 lt!2542617)))))))

(declare-fun b!7067780 () Bool)

(assert (=> b!7067780 (= e!4249060 call!642297)))

(declare-fun bm!642295 () Bool)

(assert (=> bm!642295 (= call!642300 call!642299)))

(declare-fun bm!642296 () Bool)

(assert (=> bm!642296 (= call!642297 call!642298)))

(declare-fun b!7067781 () Bool)

(assert (=> b!7067781 (= e!4249062 (set.union call!642301 call!642298))))

(declare-fun b!7067782 () Bool)

(assert (=> b!7067782 (= e!4249058 (set.union call!642301 call!642296))))

(assert (= (and d!2210066 c!1318103) b!7067779))

(assert (= (and d!2210066 (not c!1318103)) b!7067773))

(assert (= (and b!7067773 c!1318102) b!7067782))

(assert (= (and b!7067773 (not c!1318102)) b!7067776))

(assert (= (and b!7067776 res!2886196) b!7067778))

(assert (= (and b!7067776 c!1318101) b!7067781))

(assert (= (and b!7067776 (not c!1318101)) b!7067772))

(assert (= (and b!7067772 c!1318099) b!7067780))

(assert (= (and b!7067772 (not c!1318099)) b!7067777))

(assert (= (and b!7067777 c!1318100) b!7067775))

(assert (= (and b!7067777 (not c!1318100)) b!7067774))

(assert (= (or b!7067780 b!7067775) bm!642295))

(assert (= (or b!7067780 b!7067775) bm!642296))

(assert (= (or b!7067781 bm!642296) bm!642293))

(assert (= (or b!7067781 bm!642295) bm!642294))

(assert (= (or b!7067782 b!7067781) bm!642291))

(assert (= (or b!7067782 bm!642293) bm!642292))

(declare-fun m!7792142 () Bool)

(assert (=> b!7067778 m!7792142))

(declare-fun m!7792144 () Bool)

(assert (=> bm!642291 m!7792144))

(declare-fun m!7792146 () Bool)

(assert (=> b!7067779 m!7792146))

(declare-fun m!7792148 () Bool)

(assert (=> bm!642292 m!7792148))

(declare-fun m!7792150 () Bool)

(assert (=> bm!642294 m!7792150))

(assert (=> b!7067606 d!2210066))

(declare-fun b!7067785 () Bool)

(declare-fun res!2886198 () Bool)

(declare-fun e!4249063 () Bool)

(assert (=> b!7067785 (=> (not res!2886198) (not e!4249063))))

(declare-fun lt!2542757 () List!68398)

(assert (=> b!7067785 (= res!2886198 (= (size!41195 lt!2542757) (+ (size!41195 lt!2542631) (size!41195 (exprs!7120 ct2!306)))))))

(declare-fun b!7067783 () Bool)

(declare-fun e!4249064 () List!68398)

(assert (=> b!7067783 (= e!4249064 (exprs!7120 ct2!306))))

(declare-fun b!7067784 () Bool)

(assert (=> b!7067784 (= e!4249064 (Cons!68274 (h!74722 lt!2542631) (++!15741 (t!382179 lt!2542631) (exprs!7120 ct2!306))))))

(declare-fun b!7067786 () Bool)

(assert (=> b!7067786 (= e!4249063 (or (not (= (exprs!7120 ct2!306) Nil!68274)) (= lt!2542757 lt!2542631)))))

(declare-fun d!2210068 () Bool)

(assert (=> d!2210068 e!4249063))

(declare-fun res!2886197 () Bool)

(assert (=> d!2210068 (=> (not res!2886197) (not e!4249063))))

(assert (=> d!2210068 (= res!2886197 (= (content!13759 lt!2542757) (set.union (content!13759 lt!2542631) (content!13759 (exprs!7120 ct2!306)))))))

(assert (=> d!2210068 (= lt!2542757 e!4249064)))

(declare-fun c!1318104 () Bool)

(assert (=> d!2210068 (= c!1318104 (is-Nil!68274 lt!2542631))))

(assert (=> d!2210068 (= (++!15741 lt!2542631 (exprs!7120 ct2!306)) lt!2542757)))

(assert (= (and d!2210068 c!1318104) b!7067783))

(assert (= (and d!2210068 (not c!1318104)) b!7067784))

(assert (= (and d!2210068 res!2886197) b!7067785))

(assert (= (and b!7067785 res!2886198) b!7067786))

(declare-fun m!7792152 () Bool)

(assert (=> b!7067785 m!7792152))

(declare-fun m!7792154 () Bool)

(assert (=> b!7067785 m!7792154))

(assert (=> b!7067785 m!7792092))

(declare-fun m!7792156 () Bool)

(assert (=> b!7067784 m!7792156))

(declare-fun m!7792158 () Bool)

(assert (=> d!2210068 m!7792158))

(declare-fun m!7792160 () Bool)

(assert (=> d!2210068 m!7792160))

(assert (=> d!2210068 m!7792100))

(assert (=> b!7067606 d!2210068))

(declare-fun b!7067787 () Bool)

(declare-fun e!4249067 () (Set Context!13240))

(assert (=> b!7067787 (= e!4249067 (as set.empty (Set Context!13240)))))

(declare-fun b!7067788 () Bool)

(declare-fun e!4249066 () Bool)

(assert (=> b!7067788 (= e!4249066 (nullable!7307 (h!74722 (exprs!7120 lt!2542635))))))

(declare-fun b!7067789 () Bool)

(declare-fun e!4249065 () (Set Context!13240))

(assert (=> b!7067789 (= e!4249065 e!4249067)))

(declare-fun c!1318106 () Bool)

(assert (=> b!7067789 (= c!1318106 (is-Cons!68274 (exprs!7120 lt!2542635)))))

(declare-fun b!7067790 () Bool)

(declare-fun call!642302 () (Set Context!13240))

(assert (=> b!7067790 (= e!4249065 (set.union call!642302 (derivationStepZipperUp!2208 (Context!13241 (t!382179 (exprs!7120 lt!2542635))) (h!74723 s!7408))))))

(declare-fun b!7067791 () Bool)

(assert (=> b!7067791 (= e!4249067 call!642302)))

(declare-fun d!2210070 () Bool)

(declare-fun c!1318105 () Bool)

(assert (=> d!2210070 (= c!1318105 e!4249066)))

(declare-fun res!2886199 () Bool)

(assert (=> d!2210070 (=> (not res!2886199) (not e!4249066))))

(assert (=> d!2210070 (= res!2886199 (is-Cons!68274 (exprs!7120 lt!2542635)))))

(assert (=> d!2210070 (= (derivationStepZipperUp!2208 lt!2542635 (h!74723 s!7408)) e!4249065)))

(declare-fun bm!642297 () Bool)

(assert (=> bm!642297 (= call!642302 (derivationStepZipperDown!2258 (h!74722 (exprs!7120 lt!2542635)) (Context!13241 (t!382179 (exprs!7120 lt!2542635))) (h!74723 s!7408)))))

(assert (= (and d!2210070 res!2886199) b!7067788))

(assert (= (and d!2210070 c!1318105) b!7067790))

(assert (= (and d!2210070 (not c!1318105)) b!7067789))

(assert (= (and b!7067789 c!1318106) b!7067791))

(assert (= (and b!7067789 (not c!1318106)) b!7067787))

(assert (= (or b!7067790 b!7067791) bm!642297))

(declare-fun m!7792162 () Bool)

(assert (=> b!7067788 m!7792162))

(declare-fun m!7792164 () Bool)

(assert (=> b!7067790 m!7792164))

(declare-fun m!7792166 () Bool)

(assert (=> bm!642297 m!7792166))

(assert (=> b!7067606 d!2210070))

(declare-fun b!7067796 () Bool)

(declare-fun e!4249070 () Bool)

(declare-fun tp!1941765 () Bool)

(assert (=> b!7067796 (= e!4249070 (and tp_is_empty!44473 tp!1941765))))

(assert (=> b!7067618 (= tp!1941748 e!4249070)))

(assert (= (and b!7067618 (is-Cons!68275 (t!382180 s!7408))) b!7067796))

(declare-fun b!7067801 () Bool)

(declare-fun e!4249073 () Bool)

(declare-fun tp!1941770 () Bool)

(declare-fun tp!1941771 () Bool)

(assert (=> b!7067801 (= e!4249073 (and tp!1941770 tp!1941771))))

(assert (=> b!7067605 (= tp!1941750 e!4249073)))

(assert (= (and b!7067605 (is-Cons!68274 (exprs!7120 setElem!50148))) b!7067801))

(declare-fun b!7067802 () Bool)

(declare-fun e!4249074 () Bool)

(declare-fun tp!1941772 () Bool)

(declare-fun tp!1941773 () Bool)

(assert (=> b!7067802 (= e!4249074 (and tp!1941772 tp!1941773))))

(assert (=> b!7067612 (= tp!1941749 e!4249074)))

(assert (= (and b!7067612 (is-Cons!68274 (exprs!7120 ct2!306))) b!7067802))

(declare-fun condSetEmpty!50154 () Bool)

(assert (=> setNonEmpty!50148 (= condSetEmpty!50154 (= setRest!50148 (as set.empty (Set Context!13240))))))

(declare-fun setRes!50154 () Bool)

(assert (=> setNonEmpty!50148 (= tp!1941747 setRes!50154)))

(declare-fun setIsEmpty!50154 () Bool)

(assert (=> setIsEmpty!50154 setRes!50154))

(declare-fun e!4249077 () Bool)

(declare-fun tp!1941778 () Bool)

(declare-fun setNonEmpty!50154 () Bool)

(declare-fun setElem!50154 () Context!13240)

(assert (=> setNonEmpty!50154 (= setRes!50154 (and tp!1941778 (inv!86920 setElem!50154) e!4249077))))

(declare-fun setRest!50154 () (Set Context!13240))

(assert (=> setNonEmpty!50154 (= setRest!50148 (set.union (set.insert setElem!50154 (as set.empty (Set Context!13240))) setRest!50154))))

(declare-fun b!7067807 () Bool)

(declare-fun tp!1941779 () Bool)

(assert (=> b!7067807 (= e!4249077 tp!1941779)))

(assert (= (and setNonEmpty!50148 condSetEmpty!50154) setIsEmpty!50154))

(assert (= (and setNonEmpty!50148 (not condSetEmpty!50154)) setNonEmpty!50154))

(assert (= setNonEmpty!50154 b!7067807))

(declare-fun m!7792168 () Bool)

(assert (=> setNonEmpty!50154 m!7792168))

(declare-fun b_lambda!269725 () Bool)

(assert (= b_lambda!269721 (or b!7067616 b_lambda!269725)))

(declare-fun bs!1880008 () Bool)

(declare-fun d!2210072 () Bool)

(assert (= bs!1880008 (and d!2210072 b!7067616)))

(declare-fun lt!2542758 () Unit!161956)

(assert (=> bs!1880008 (= lt!2542758 (lemmaConcatPreservesForall!935 (exprs!7120 lt!2542747) (exprs!7120 ct2!306) lambda!424358))))

(assert (=> bs!1880008 (= (dynLambda!27746 lambda!424357 lt!2542747) (Context!13241 (++!15741 (exprs!7120 lt!2542747) (exprs!7120 ct2!306))))))

(declare-fun m!7792170 () Bool)

(assert (=> bs!1880008 m!7792170))

(declare-fun m!7792172 () Bool)

(assert (=> bs!1880008 m!7792172))

(assert (=> d!2210054 d!2210072))

(declare-fun b_lambda!269727 () Bool)

(assert (= b_lambda!269723 (or b!7067614 b_lambda!269727)))

(declare-fun bs!1880009 () Bool)

(declare-fun d!2210074 () Bool)

(assert (= bs!1880009 (and d!2210074 b!7067614)))

(assert (=> bs!1880009 (= (dynLambda!27748 lambda!424356 lt!2542756) (matchZipper!3164 (set.insert lt!2542756 (as set.empty (Set Context!13240))) s!7408))))

(declare-fun m!7792174 () Bool)

(assert (=> bs!1880009 m!7792174))

(assert (=> bs!1880009 m!7792174))

(declare-fun m!7792176 () Bool)

(assert (=> bs!1880009 m!7792176))

(assert (=> d!2210064 d!2210074))

(declare-fun b_lambda!269729 () Bool)

(assert (= b_lambda!269719 (or b!7067611 b_lambda!269729)))

(declare-fun bs!1880010 () Bool)

(declare-fun d!2210076 () Bool)

(assert (= bs!1880010 (and d!2210076 b!7067611)))

(assert (=> bs!1880010 (= (dynLambda!27745 lambda!424359 lt!2542633) (derivationStepZipperUp!2208 lt!2542633 (h!74723 s!7408)))))

(assert (=> bs!1880010 m!7791924))

(assert (=> d!2210022 d!2210076))

(push 1)

(assert (not b!7067714))

(assert (not bs!1880010))

(assert (not b!7067741))

(assert (not b!7067719))

(assert (not b!7067740))

(assert (not d!2210044))

(assert (not setNonEmpty!50154))

(assert (not d!2210062))

(assert (not bm!642291))

(assert (not d!2210024))

(assert (not b!7067788))

(assert (not d!2210038))

(assert (not d!2210016))

(assert (not b!7067778))

(assert (not bm!642294))

(assert (not b!7067790))

(assert (not d!2210040))

(assert (not bm!642292))

(assert (not b!7067784))

(assert (not b!7067713))

(assert (not b!7067717))

(assert (not d!2210020))

(assert (not b!7067723))

(assert (not bm!642297))

(assert (not d!2210046))

(assert (not b!7067796))

(assert tp_is_empty!44473)

(assert (not d!2210068))

(assert (not b!7067807))

(assert (not b!7067802))

(assert (not d!2210048))

(assert (not bs!1880008))

(assert (not b!7067711))

(assert (not d!2210032))

(assert (not d!2210028))

(assert (not d!2210030))

(assert (not d!2210060))

(assert (not bs!1880009))

(assert (not b!7067712))

(assert (not d!2210056))

(assert (not b!7067734))

(assert (not d!2210036))

(assert (not d!2210058))

(assert (not b_lambda!269729))

(assert (not d!2210042))

(assert (not b!7067716))

(assert (not d!2210034))

(assert (not b!7067785))

(assert (not d!2210022))

(assert (not b!7067746))

(assert (not b!7067801))

(assert (not b!7067720))

(assert (not b!7067718))

(assert (not d!2210054))

(assert (not b!7067701))

(assert (not d!2210052))

(assert (not bm!642278))

(assert (not b!7067715))

(assert (not b!7067733))

(assert (not b_lambda!269727))

(assert (not b_lambda!269725))

(assert (not b!7067703))

(assert (not d!2210014))

(assert (not d!2210064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

