; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669610 () Bool)

(assert start!669610)

(declare-fun b!6979875 () Bool)

(assert (=> b!6979875 true))

(declare-fun b!6979874 () Bool)

(assert (=> b!6979874 true))

(declare-fun b!6979876 () Bool)

(assert (=> b!6979876 true))

(declare-datatypes ((C!34610 0))(
  ( (C!34611 (val!27007 Int)) )
))
(declare-datatypes ((Regex!17170 0))(
  ( (ElementMatch!17170 (c!1293805 C!34610)) (Concat!26015 (regOne!34852 Regex!17170) (regTwo!34852 Regex!17170)) (EmptyExpr!17170) (Star!17170 (reg!17499 Regex!17170)) (EmptyLang!17170) (Union!17170 (regOne!34853 Regex!17170) (regTwo!34853 Regex!17170)) )
))
(declare-datatypes ((List!67055 0))(
  ( (Nil!66931) (Cons!66931 (h!73379 Regex!17170) (t!380798 List!67055)) )
))
(declare-datatypes ((Context!12332 0))(
  ( (Context!12333 (exprs!6666 List!67055)) )
))
(declare-fun setElem!47502 () Context!12332)

(declare-fun tp!1928057 () Bool)

(declare-fun setNonEmpty!47502 () Bool)

(declare-fun setRes!47502 () Bool)

(declare-fun e!4194971 () Bool)

(declare-fun inv!85785 (Context!12332) Bool)

(assert (=> setNonEmpty!47502 (= setRes!47502 (and tp!1928057 (inv!85785 setElem!47502) e!4194971))))

(declare-fun z1!570 () (Set Context!12332))

(declare-fun setRest!47502 () (Set Context!12332))

(assert (=> setNonEmpty!47502 (= z1!570 (set.union (set.insert setElem!47502 (as set.empty (Set Context!12332))) setRest!47502))))

(declare-fun res!2846268 () Bool)

(declare-fun e!4194969 () Bool)

(assert (=> start!669610 (=> (not res!2846268) (not e!4194969))))

(declare-fun lt!2481413 () (Set Context!12332))

(declare-datatypes ((List!67056 0))(
  ( (Nil!66932) (Cons!66932 (h!73380 C!34610) (t!380799 List!67056)) )
))
(declare-fun s!7408 () List!67056)

(declare-fun matchZipper!2710 ((Set Context!12332) List!67056) Bool)

(assert (=> start!669610 (= res!2846268 (matchZipper!2710 lt!2481413 s!7408))))

(declare-fun ct2!306 () Context!12332)

(declare-fun appendTo!291 ((Set Context!12332) Context!12332) (Set Context!12332))

(assert (=> start!669610 (= lt!2481413 (appendTo!291 z1!570 ct2!306))))

(assert (=> start!669610 e!4194969))

(declare-fun condSetEmpty!47502 () Bool)

(assert (=> start!669610 (= condSetEmpty!47502 (= z1!570 (as set.empty (Set Context!12332))))))

(assert (=> start!669610 setRes!47502))

(declare-fun e!4194965 () Bool)

(assert (=> start!669610 (and (inv!85785 ct2!306) e!4194965)))

(declare-fun e!4194964 () Bool)

(assert (=> start!669610 e!4194964))

(declare-fun b!6979869 () Bool)

(declare-fun res!2846271 () Bool)

(declare-fun e!4194972 () Bool)

(assert (=> b!6979869 (=> res!2846271 e!4194972)))

(declare-fun lt!2481420 () Context!12332)

(assert (=> b!6979869 (= res!2846271 (not (is-Cons!66931 (exprs!6666 lt!2481420))))))

(declare-fun b!6979870 () Bool)

(declare-fun res!2846263 () Bool)

(assert (=> b!6979870 (=> (not res!2846263) (not e!4194969))))

(assert (=> b!6979870 (= res!2846263 (is-Cons!66932 s!7408))))

(declare-fun b!6979871 () Bool)

(declare-fun tp!1928058 () Bool)

(assert (=> b!6979871 (= e!4194965 tp!1928058)))

(declare-fun b!6979872 () Bool)

(declare-fun e!4194967 () Bool)

(declare-fun e!4194966 () Bool)

(assert (=> b!6979872 (= e!4194967 e!4194966)))

(declare-fun res!2846267 () Bool)

(assert (=> b!6979872 (=> res!2846267 e!4194966)))

(declare-fun lt!2481410 () (Set Context!12332))

(declare-fun lt!2481415 () (Set Context!12332))

(assert (=> b!6979872 (= res!2846267 (not (= lt!2481410 lt!2481415)))))

(declare-fun lt!2481411 () Context!12332)

(assert (=> b!6979872 (= lt!2481410 (set.insert lt!2481411 (as set.empty (Set Context!12332))))))

(declare-fun lambda!398964 () Int)

(declare-datatypes ((Unit!160990 0))(
  ( (Unit!160991) )
))
(declare-fun lt!2481409 () Unit!160990)

(declare-fun lemmaConcatPreservesForall!506 (List!67055 List!67055 Int) Unit!160990)

(assert (=> b!6979872 (= lt!2481409 (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964))))

(declare-fun b!6979873 () Bool)

(declare-fun tp_is_empty!43565 () Bool)

(declare-fun tp!1928055 () Bool)

(assert (=> b!6979873 (= e!4194964 (and tp_is_empty!43565 tp!1928055))))

(declare-fun setIsEmpty!47502 () Bool)

(assert (=> setIsEmpty!47502 setRes!47502))

(declare-fun e!4194968 () Bool)

(assert (=> b!6979874 (= e!4194968 e!4194967)))

(declare-fun res!2846269 () Bool)

(assert (=> b!6979874 (=> res!2846269 e!4194967)))

(declare-fun lt!2481419 () Context!12332)

(assert (=> b!6979874 (= res!2846269 (or (not (= lt!2481411 lt!2481419)) (not (set.member lt!2481420 z1!570))))))

(declare-fun ++!15115 (List!67055 List!67055) List!67055)

(assert (=> b!6979874 (= lt!2481411 (Context!12333 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306))))))

(declare-fun lt!2481408 () Unit!160990)

(assert (=> b!6979874 (= lt!2481408 (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964))))

(declare-fun lambda!398963 () Int)

(declare-fun mapPost2!25 ((Set Context!12332) Int Context!12332) Context!12332)

(assert (=> b!6979874 (= lt!2481420 (mapPost2!25 z1!570 lambda!398963 lt!2481419))))

(assert (=> b!6979875 (= e!4194969 (not e!4194968))))

(declare-fun res!2846265 () Bool)

(assert (=> b!6979875 (=> res!2846265 e!4194968)))

(assert (=> b!6979875 (= res!2846265 (not (matchZipper!2710 lt!2481415 s!7408)))))

(assert (=> b!6979875 (= lt!2481415 (set.insert lt!2481419 (as set.empty (Set Context!12332))))))

(declare-fun lambda!398962 () Int)

(declare-fun getWitness!1036 ((Set Context!12332) Int) Context!12332)

(assert (=> b!6979875 (= lt!2481419 (getWitness!1036 lt!2481413 lambda!398962))))

(declare-datatypes ((List!67057 0))(
  ( (Nil!66933) (Cons!66933 (h!73381 Context!12332) (t!380800 List!67057)) )
))
(declare-fun lt!2481416 () List!67057)

(declare-fun exists!2925 (List!67057 Int) Bool)

(assert (=> b!6979875 (exists!2925 lt!2481416 lambda!398962)))

(declare-fun lt!2481406 () Unit!160990)

(declare-fun lemmaZipperMatchesExistsMatchingContext!139 (List!67057 List!67056) Unit!160990)

(assert (=> b!6979875 (= lt!2481406 (lemmaZipperMatchesExistsMatchingContext!139 lt!2481416 s!7408))))

(declare-fun toList!10530 ((Set Context!12332)) List!67057)

(assert (=> b!6979875 (= lt!2481416 (toList!10530 lt!2481413))))

(assert (=> b!6979876 (= e!4194966 e!4194972)))

(declare-fun res!2846266 () Bool)

(assert (=> b!6979876 (=> res!2846266 e!4194972)))

(declare-fun lt!2481404 () (Set Context!12332))

(declare-fun derivationStepZipper!2650 ((Set Context!12332) C!34610) (Set Context!12332))

(assert (=> b!6979876 (= res!2846266 (not (= (derivationStepZipper!2650 lt!2481410 (h!73380 s!7408)) lt!2481404)))))

(declare-fun lambda!398965 () Int)

(declare-fun flatMap!2156 ((Set Context!12332) Int) (Set Context!12332))

(declare-fun derivationStepZipperUp!1820 (Context!12332 C!34610) (Set Context!12332))

(assert (=> b!6979876 (= (flatMap!2156 lt!2481410 lambda!398965) (derivationStepZipperUp!1820 lt!2481411 (h!73380 s!7408)))))

(declare-fun lt!2481405 () Unit!160990)

(declare-fun lemmaFlatMapOnSingletonSet!1671 ((Set Context!12332) Context!12332 Int) Unit!160990)

(assert (=> b!6979876 (= lt!2481405 (lemmaFlatMapOnSingletonSet!1671 lt!2481410 lt!2481411 lambda!398965))))

(assert (=> b!6979876 (= lt!2481404 (derivationStepZipperUp!1820 lt!2481411 (h!73380 s!7408)))))

(declare-fun lt!2481407 () Unit!160990)

(assert (=> b!6979876 (= lt!2481407 (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964))))

(declare-fun b!6979877 () Bool)

(declare-fun res!2846264 () Bool)

(assert (=> b!6979877 (=> res!2846264 e!4194972)))

(declare-fun isEmpty!39066 (List!67055) Bool)

(assert (=> b!6979877 (= res!2846264 (isEmpty!39066 (exprs!6666 lt!2481420)))))

(declare-fun b!6979878 () Bool)

(declare-fun e!4194970 () Bool)

(declare-fun validRegex!8834 (Regex!17170) Bool)

(assert (=> b!6979878 (= e!4194970 (validRegex!8834 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun lt!2481417 () List!67055)

(declare-fun lt!2481418 () List!67055)

(assert (=> b!6979878 (= lt!2481417 (++!15115 lt!2481418 (exprs!6666 ct2!306)))))

(declare-fun lt!2481412 () Unit!160990)

(assert (=> b!6979878 (= lt!2481412 (lemmaConcatPreservesForall!506 lt!2481418 (exprs!6666 ct2!306) lambda!398964))))

(declare-fun lt!2481414 () Unit!160990)

(assert (=> b!6979878 (= lt!2481414 (lemmaConcatPreservesForall!506 lt!2481418 (exprs!6666 ct2!306) lambda!398964))))

(declare-fun b!6979879 () Bool)

(assert (=> b!6979879 (= e!4194972 e!4194970)))

(declare-fun res!2846270 () Bool)

(assert (=> b!6979879 (=> res!2846270 e!4194970)))

(declare-fun nullable!6930 (Regex!17170) Bool)

(assert (=> b!6979879 (= res!2846270 (not (nullable!6930 (h!73379 (exprs!6666 lt!2481420)))))))

(declare-fun tail!13142 (List!67055) List!67055)

(assert (=> b!6979879 (= lt!2481418 (tail!13142 (exprs!6666 lt!2481420)))))

(declare-fun b!6979880 () Bool)

(declare-fun tp!1928056 () Bool)

(assert (=> b!6979880 (= e!4194971 tp!1928056)))

(declare-fun b!6979881 () Bool)

(declare-fun res!2846272 () Bool)

(assert (=> b!6979881 (=> res!2846272 e!4194968)))

(assert (=> b!6979881 (= res!2846272 (not (set.member lt!2481419 lt!2481413)))))

(assert (= (and start!669610 res!2846268) b!6979870))

(assert (= (and b!6979870 res!2846263) b!6979875))

(assert (= (and b!6979875 (not res!2846265)) b!6979881))

(assert (= (and b!6979881 (not res!2846272)) b!6979874))

(assert (= (and b!6979874 (not res!2846269)) b!6979872))

(assert (= (and b!6979872 (not res!2846267)) b!6979876))

(assert (= (and b!6979876 (not res!2846266)) b!6979869))

(assert (= (and b!6979869 (not res!2846271)) b!6979877))

(assert (= (and b!6979877 (not res!2846264)) b!6979879))

(assert (= (and b!6979879 (not res!2846270)) b!6979878))

(assert (= (and start!669610 condSetEmpty!47502) setIsEmpty!47502))

(assert (= (and start!669610 (not condSetEmpty!47502)) setNonEmpty!47502))

(assert (= setNonEmpty!47502 b!6979880))

(assert (= start!669610 b!6979871))

(assert (= (and start!669610 (is-Cons!66932 s!7408)) b!6979873))

(declare-fun m!7666082 () Bool)

(assert (=> setNonEmpty!47502 m!7666082))

(declare-fun m!7666084 () Bool)

(assert (=> b!6979876 m!7666084))

(declare-fun m!7666086 () Bool)

(assert (=> b!6979876 m!7666086))

(declare-fun m!7666088 () Bool)

(assert (=> b!6979876 m!7666088))

(declare-fun m!7666090 () Bool)

(assert (=> b!6979876 m!7666090))

(declare-fun m!7666092 () Bool)

(assert (=> b!6979876 m!7666092))

(declare-fun m!7666094 () Bool)

(assert (=> b!6979881 m!7666094))

(declare-fun m!7666096 () Bool)

(assert (=> b!6979875 m!7666096))

(declare-fun m!7666098 () Bool)

(assert (=> b!6979875 m!7666098))

(declare-fun m!7666100 () Bool)

(assert (=> b!6979875 m!7666100))

(declare-fun m!7666102 () Bool)

(assert (=> b!6979875 m!7666102))

(declare-fun m!7666104 () Bool)

(assert (=> b!6979875 m!7666104))

(declare-fun m!7666106 () Bool)

(assert (=> b!6979875 m!7666106))

(declare-fun m!7666108 () Bool)

(assert (=> b!6979878 m!7666108))

(declare-fun m!7666110 () Bool)

(assert (=> b!6979878 m!7666110))

(declare-fun m!7666112 () Bool)

(assert (=> b!6979878 m!7666112))

(assert (=> b!6979878 m!7666112))

(declare-fun m!7666114 () Bool)

(assert (=> b!6979879 m!7666114))

(declare-fun m!7666116 () Bool)

(assert (=> b!6979879 m!7666116))

(declare-fun m!7666118 () Bool)

(assert (=> b!6979874 m!7666118))

(declare-fun m!7666120 () Bool)

(assert (=> b!6979874 m!7666120))

(assert (=> b!6979874 m!7666086))

(declare-fun m!7666122 () Bool)

(assert (=> b!6979874 m!7666122))

(declare-fun m!7666124 () Bool)

(assert (=> b!6979872 m!7666124))

(assert (=> b!6979872 m!7666086))

(declare-fun m!7666126 () Bool)

(assert (=> start!669610 m!7666126))

(declare-fun m!7666128 () Bool)

(assert (=> start!669610 m!7666128))

(declare-fun m!7666130 () Bool)

(assert (=> start!669610 m!7666130))

(declare-fun m!7666132 () Bool)

(assert (=> b!6979877 m!7666132))

(push 1)

(assert (not b!6979878))

(assert (not setNonEmpty!47502))

(assert (not b!6979872))

(assert (not b!6979880))

(assert (not b!6979876))

(assert (not start!669610))

(assert (not b!6979875))

(assert (not b!6979871))

(assert (not b!6979877))

(assert tp_is_empty!43565)

(assert (not b!6979874))

(assert (not b!6979873))

(assert (not b!6979879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1860647 () Bool)

(declare-fun d!2173455 () Bool)

(assert (= bs!1860647 (and d!2173455 b!6979876)))

(declare-fun lambda!398992 () Int)

(assert (=> bs!1860647 (= lambda!398992 lambda!398965)))

(assert (=> d!2173455 true))

(assert (=> d!2173455 (= (derivationStepZipper!2650 lt!2481410 (h!73380 s!7408)) (flatMap!2156 lt!2481410 lambda!398992))))

(declare-fun bs!1860648 () Bool)

(assert (= bs!1860648 d!2173455))

(declare-fun m!7666186 () Bool)

(assert (=> bs!1860648 m!7666186))

(assert (=> b!6979876 d!2173455))

(declare-fun d!2173457 () Bool)

(declare-fun forall!16054 (List!67055 Int) Bool)

(assert (=> d!2173457 (forall!16054 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)) lambda!398964)))

(declare-fun lt!2481476 () Unit!160990)

(declare-fun choose!52016 (List!67055 List!67055 Int) Unit!160990)

(assert (=> d!2173457 (= lt!2481476 (choose!52016 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964))))

(assert (=> d!2173457 (forall!16054 (exprs!6666 lt!2481420) lambda!398964)))

(assert (=> d!2173457 (= (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964) lt!2481476)))

(declare-fun bs!1860649 () Bool)

(assert (= bs!1860649 d!2173457))

(assert (=> bs!1860649 m!7666120))

(assert (=> bs!1860649 m!7666120))

(declare-fun m!7666188 () Bool)

(assert (=> bs!1860649 m!7666188))

(declare-fun m!7666190 () Bool)

(assert (=> bs!1860649 m!7666190))

(declare-fun m!7666192 () Bool)

(assert (=> bs!1860649 m!7666192))

(assert (=> b!6979876 d!2173457))

(declare-fun d!2173459 () Bool)

(declare-fun dynLambda!26734 (Int Context!12332) (Set Context!12332))

(assert (=> d!2173459 (= (flatMap!2156 lt!2481410 lambda!398965) (dynLambda!26734 lambda!398965 lt!2481411))))

(declare-fun lt!2481479 () Unit!160990)

(declare-fun choose!52017 ((Set Context!12332) Context!12332 Int) Unit!160990)

(assert (=> d!2173459 (= lt!2481479 (choose!52017 lt!2481410 lt!2481411 lambda!398965))))

(assert (=> d!2173459 (= lt!2481410 (set.insert lt!2481411 (as set.empty (Set Context!12332))))))

(assert (=> d!2173459 (= (lemmaFlatMapOnSingletonSet!1671 lt!2481410 lt!2481411 lambda!398965) lt!2481479)))

(declare-fun b_lambda!261491 () Bool)

(assert (=> (not b_lambda!261491) (not d!2173459)))

(declare-fun bs!1860650 () Bool)

(assert (= bs!1860650 d!2173459))

(assert (=> bs!1860650 m!7666084))

(declare-fun m!7666206 () Bool)

(assert (=> bs!1860650 m!7666206))

(declare-fun m!7666208 () Bool)

(assert (=> bs!1860650 m!7666208))

(assert (=> bs!1860650 m!7666124))

(assert (=> b!6979876 d!2173459))

(declare-fun d!2173463 () Bool)

(declare-fun choose!52018 ((Set Context!12332) Int) (Set Context!12332))

(assert (=> d!2173463 (= (flatMap!2156 lt!2481410 lambda!398965) (choose!52018 lt!2481410 lambda!398965))))

(declare-fun bs!1860651 () Bool)

(assert (= bs!1860651 d!2173463))

(declare-fun m!7666210 () Bool)

(assert (=> bs!1860651 m!7666210))

(assert (=> b!6979876 d!2173463))

(declare-fun d!2173465 () Bool)

(declare-fun c!1293826 () Bool)

(declare-fun e!4195010 () Bool)

(assert (=> d!2173465 (= c!1293826 e!4195010)))

(declare-fun res!2846307 () Bool)

(assert (=> d!2173465 (=> (not res!2846307) (not e!4195010))))

(assert (=> d!2173465 (= res!2846307 (is-Cons!66931 (exprs!6666 lt!2481411)))))

(declare-fun e!4195011 () (Set Context!12332))

(assert (=> d!2173465 (= (derivationStepZipperUp!1820 lt!2481411 (h!73380 s!7408)) e!4195011)))

(declare-fun b!6979951 () Bool)

(declare-fun call!633335 () (Set Context!12332))

(assert (=> b!6979951 (= e!4195011 (set.union call!633335 (derivationStepZipperUp!1820 (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (h!73380 s!7408))))))

(declare-fun b!6979952 () Bool)

(assert (=> b!6979952 (= e!4195010 (nullable!6930 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun b!6979953 () Bool)

(declare-fun e!4195009 () (Set Context!12332))

(assert (=> b!6979953 (= e!4195009 (as set.empty (Set Context!12332)))))

(declare-fun bm!633330 () Bool)

(declare-fun derivationStepZipperDown!1888 (Regex!17170 Context!12332 C!34610) (Set Context!12332))

(assert (=> bm!633330 (= call!633335 (derivationStepZipperDown!1888 (h!73379 (exprs!6666 lt!2481411)) (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (h!73380 s!7408)))))

(declare-fun b!6979954 () Bool)

(assert (=> b!6979954 (= e!4195011 e!4195009)))

(declare-fun c!1293825 () Bool)

(assert (=> b!6979954 (= c!1293825 (is-Cons!66931 (exprs!6666 lt!2481411)))))

(declare-fun b!6979955 () Bool)

(assert (=> b!6979955 (= e!4195009 call!633335)))

(assert (= (and d!2173465 res!2846307) b!6979952))

(assert (= (and d!2173465 c!1293826) b!6979951))

(assert (= (and d!2173465 (not c!1293826)) b!6979954))

(assert (= (and b!6979954 c!1293825) b!6979955))

(assert (= (and b!6979954 (not c!1293825)) b!6979953))

(assert (= (or b!6979951 b!6979955) bm!633330))

(declare-fun m!7666212 () Bool)

(assert (=> b!6979951 m!7666212))

(declare-fun m!7666214 () Bool)

(assert (=> b!6979952 m!7666214))

(declare-fun m!7666216 () Bool)

(assert (=> bm!633330 m!7666216))

(assert (=> b!6979876 d!2173465))

(assert (=> b!6979872 d!2173457))

(declare-fun d!2173467 () Bool)

(declare-fun c!1293829 () Bool)

(declare-fun isEmpty!39068 (List!67056) Bool)

(assert (=> d!2173467 (= c!1293829 (isEmpty!39068 s!7408))))

(declare-fun e!4195014 () Bool)

(assert (=> d!2173467 (= (matchZipper!2710 lt!2481413 s!7408) e!4195014)))

(declare-fun b!6979960 () Bool)

(declare-fun nullableZipper!2399 ((Set Context!12332)) Bool)

(assert (=> b!6979960 (= e!4195014 (nullableZipper!2399 lt!2481413))))

(declare-fun b!6979961 () Bool)

(declare-fun head!14069 (List!67056) C!34610)

(declare-fun tail!13144 (List!67056) List!67056)

(assert (=> b!6979961 (= e!4195014 (matchZipper!2710 (derivationStepZipper!2650 lt!2481413 (head!14069 s!7408)) (tail!13144 s!7408)))))

(assert (= (and d!2173467 c!1293829) b!6979960))

(assert (= (and d!2173467 (not c!1293829)) b!6979961))

(declare-fun m!7666218 () Bool)

(assert (=> d!2173467 m!7666218))

(declare-fun m!7666220 () Bool)

(assert (=> b!6979960 m!7666220))

(declare-fun m!7666222 () Bool)

(assert (=> b!6979961 m!7666222))

(assert (=> b!6979961 m!7666222))

(declare-fun m!7666224 () Bool)

(assert (=> b!6979961 m!7666224))

(declare-fun m!7666226 () Bool)

(assert (=> b!6979961 m!7666226))

(assert (=> b!6979961 m!7666224))

(assert (=> b!6979961 m!7666226))

(declare-fun m!7666228 () Bool)

(assert (=> b!6979961 m!7666228))

(assert (=> start!669610 d!2173467))

(declare-fun bs!1860654 () Bool)

(declare-fun d!2173469 () Bool)

(assert (= bs!1860654 (and d!2173469 b!6979874)))

(declare-fun lambda!399004 () Int)

(assert (=> bs!1860654 (= lambda!399004 lambda!398963)))

(assert (=> d!2173469 true))

(declare-fun map!15421 ((Set Context!12332) Int) (Set Context!12332))

(assert (=> d!2173469 (= (appendTo!291 z1!570 ct2!306) (map!15421 z1!570 lambda!399004))))

(declare-fun bs!1860655 () Bool)

(assert (= bs!1860655 d!2173469))

(declare-fun m!7666232 () Bool)

(assert (=> bs!1860655 m!7666232))

(assert (=> start!669610 d!2173469))

(declare-fun bs!1860658 () Bool)

(declare-fun d!2173473 () Bool)

(assert (= bs!1860658 (and d!2173473 b!6979874)))

(declare-fun lambda!399008 () Int)

(assert (=> bs!1860658 (= lambda!399008 lambda!398964)))

(assert (=> d!2173473 (= (inv!85785 ct2!306) (forall!16054 (exprs!6666 ct2!306) lambda!399008))))

(declare-fun bs!1860659 () Bool)

(assert (= bs!1860659 d!2173473))

(declare-fun m!7666236 () Bool)

(assert (=> bs!1860659 m!7666236))

(assert (=> start!669610 d!2173473))

(declare-fun bs!1860663 () Bool)

(declare-fun d!2173477 () Bool)

(assert (= bs!1860663 (and d!2173477 b!6979875)))

(declare-fun lambda!399012 () Int)

(assert (=> bs!1860663 (not (= lambda!399012 lambda!398962))))

(assert (=> d!2173477 true))

(declare-fun order!27837 () Int)

(declare-fun dynLambda!26735 (Int Int) Int)

(assert (=> d!2173477 (< (dynLambda!26735 order!27837 lambda!398962) (dynLambda!26735 order!27837 lambda!399012))))

(declare-fun forall!16055 (List!67057 Int) Bool)

(assert (=> d!2173477 (= (exists!2925 lt!2481416 lambda!398962) (not (forall!16055 lt!2481416 lambda!399012)))))

(declare-fun bs!1860664 () Bool)

(assert (= bs!1860664 d!2173477))

(declare-fun m!7666240 () Bool)

(assert (=> bs!1860664 m!7666240))

(assert (=> b!6979875 d!2173477))

(declare-fun d!2173483 () Bool)

(declare-fun e!4195018 () Bool)

(assert (=> d!2173483 e!4195018))

(declare-fun res!2846310 () Bool)

(assert (=> d!2173483 (=> (not res!2846310) (not e!4195018))))

(declare-fun lt!2481486 () Context!12332)

(declare-fun dynLambda!26736 (Int Context!12332) Bool)

(assert (=> d!2173483 (= res!2846310 (dynLambda!26736 lambda!398962 lt!2481486))))

(declare-fun getWitness!1038 (List!67057 Int) Context!12332)

(assert (=> d!2173483 (= lt!2481486 (getWitness!1038 (toList!10530 lt!2481413) lambda!398962))))

(declare-fun exists!2927 ((Set Context!12332) Int) Bool)

(assert (=> d!2173483 (exists!2927 lt!2481413 lambda!398962)))

(assert (=> d!2173483 (= (getWitness!1036 lt!2481413 lambda!398962) lt!2481486)))

(declare-fun b!6979968 () Bool)

(assert (=> b!6979968 (= e!4195018 (set.member lt!2481486 lt!2481413))))

(assert (= (and d!2173483 res!2846310) b!6979968))

(declare-fun b_lambda!261493 () Bool)

(assert (=> (not b_lambda!261493) (not d!2173483)))

(declare-fun m!7666250 () Bool)

(assert (=> d!2173483 m!7666250))

(assert (=> d!2173483 m!7666096))

(assert (=> d!2173483 m!7666096))

(declare-fun m!7666252 () Bool)

(assert (=> d!2173483 m!7666252))

(declare-fun m!7666254 () Bool)

(assert (=> d!2173483 m!7666254))

(declare-fun m!7666256 () Bool)

(assert (=> b!6979968 m!7666256))

(assert (=> b!6979875 d!2173483))

(declare-fun bs!1860666 () Bool)

(declare-fun d!2173491 () Bool)

(assert (= bs!1860666 (and d!2173491 b!6979875)))

(declare-fun lambda!399015 () Int)

(assert (=> bs!1860666 (= lambda!399015 lambda!398962)))

(declare-fun bs!1860667 () Bool)

(assert (= bs!1860667 (and d!2173491 d!2173477)))

(assert (=> bs!1860667 (not (= lambda!399015 lambda!399012))))

(assert (=> d!2173491 true))

(assert (=> d!2173491 (exists!2925 lt!2481416 lambda!399015)))

(declare-fun lt!2481492 () Unit!160990)

(declare-fun choose!52019 (List!67057 List!67056) Unit!160990)

(assert (=> d!2173491 (= lt!2481492 (choose!52019 lt!2481416 s!7408))))

(declare-fun content!13193 (List!67057) (Set Context!12332))

(assert (=> d!2173491 (matchZipper!2710 (content!13193 lt!2481416) s!7408)))

(assert (=> d!2173491 (= (lemmaZipperMatchesExistsMatchingContext!139 lt!2481416 s!7408) lt!2481492)))

(declare-fun bs!1860668 () Bool)

(assert (= bs!1860668 d!2173491))

(declare-fun m!7666264 () Bool)

(assert (=> bs!1860668 m!7666264))

(declare-fun m!7666266 () Bool)

(assert (=> bs!1860668 m!7666266))

(declare-fun m!7666268 () Bool)

(assert (=> bs!1860668 m!7666268))

(assert (=> bs!1860668 m!7666268))

(declare-fun m!7666270 () Bool)

(assert (=> bs!1860668 m!7666270))

(assert (=> b!6979875 d!2173491))

(declare-fun d!2173495 () Bool)

(declare-fun c!1293834 () Bool)

(assert (=> d!2173495 (= c!1293834 (isEmpty!39068 s!7408))))

(declare-fun e!4195022 () Bool)

(assert (=> d!2173495 (= (matchZipper!2710 lt!2481415 s!7408) e!4195022)))

(declare-fun b!6979972 () Bool)

(assert (=> b!6979972 (= e!4195022 (nullableZipper!2399 lt!2481415))))

(declare-fun b!6979973 () Bool)

(assert (=> b!6979973 (= e!4195022 (matchZipper!2710 (derivationStepZipper!2650 lt!2481415 (head!14069 s!7408)) (tail!13144 s!7408)))))

(assert (= (and d!2173495 c!1293834) b!6979972))

(assert (= (and d!2173495 (not c!1293834)) b!6979973))

(assert (=> d!2173495 m!7666218))

(declare-fun m!7666272 () Bool)

(assert (=> b!6979972 m!7666272))

(assert (=> b!6979973 m!7666222))

(assert (=> b!6979973 m!7666222))

(declare-fun m!7666274 () Bool)

(assert (=> b!6979973 m!7666274))

(assert (=> b!6979973 m!7666226))

(assert (=> b!6979973 m!7666274))

(assert (=> b!6979973 m!7666226))

(declare-fun m!7666276 () Bool)

(assert (=> b!6979973 m!7666276))

(assert (=> b!6979875 d!2173495))

(declare-fun d!2173497 () Bool)

(declare-fun e!4195025 () Bool)

(assert (=> d!2173497 e!4195025))

(declare-fun res!2846316 () Bool)

(assert (=> d!2173497 (=> (not res!2846316) (not e!4195025))))

(declare-fun lt!2481495 () List!67057)

(declare-fun noDuplicate!2490 (List!67057) Bool)

(assert (=> d!2173497 (= res!2846316 (noDuplicate!2490 lt!2481495))))

(declare-fun choose!52020 ((Set Context!12332)) List!67057)

(assert (=> d!2173497 (= lt!2481495 (choose!52020 lt!2481413))))

(assert (=> d!2173497 (= (toList!10530 lt!2481413) lt!2481495)))

(declare-fun b!6979976 () Bool)

(assert (=> b!6979976 (= e!4195025 (= (content!13193 lt!2481495) lt!2481413))))

(assert (= (and d!2173497 res!2846316) b!6979976))

(declare-fun m!7666278 () Bool)

(assert (=> d!2173497 m!7666278))

(declare-fun m!7666280 () Bool)

(assert (=> d!2173497 m!7666280))

(declare-fun m!7666282 () Bool)

(assert (=> b!6979976 m!7666282))

(assert (=> b!6979875 d!2173497))

(declare-fun e!4195030 () Bool)

(declare-fun lt!2481498 () List!67055)

(declare-fun b!6979990 () Bool)

(assert (=> b!6979990 (= e!4195030 (or (not (= (exprs!6666 ct2!306) Nil!66931)) (= lt!2481498 (exprs!6666 lt!2481420))))))

(declare-fun d!2173499 () Bool)

(assert (=> d!2173499 e!4195030))

(declare-fun res!2846321 () Bool)

(assert (=> d!2173499 (=> (not res!2846321) (not e!4195030))))

(declare-fun content!13194 (List!67055) (Set Regex!17170))

(assert (=> d!2173499 (= res!2846321 (= (content!13194 lt!2481498) (set.union (content!13194 (exprs!6666 lt!2481420)) (content!13194 (exprs!6666 ct2!306)))))))

(declare-fun e!4195031 () List!67055)

(assert (=> d!2173499 (= lt!2481498 e!4195031)))

(declare-fun c!1293837 () Bool)

(assert (=> d!2173499 (= c!1293837 (is-Nil!66931 (exprs!6666 lt!2481420)))))

(assert (=> d!2173499 (= (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)) lt!2481498)))

(declare-fun b!6979989 () Bool)

(declare-fun res!2846322 () Bool)

(assert (=> b!6979989 (=> (not res!2846322) (not e!4195030))))

(declare-fun size!40870 (List!67055) Int)

(assert (=> b!6979989 (= res!2846322 (= (size!40870 lt!2481498) (+ (size!40870 (exprs!6666 lt!2481420)) (size!40870 (exprs!6666 ct2!306)))))))

(declare-fun b!6979987 () Bool)

(assert (=> b!6979987 (= e!4195031 (exprs!6666 ct2!306))))

(declare-fun b!6979988 () Bool)

(assert (=> b!6979988 (= e!4195031 (Cons!66931 (h!73379 (exprs!6666 lt!2481420)) (++!15115 (t!380798 (exprs!6666 lt!2481420)) (exprs!6666 ct2!306))))))

(assert (= (and d!2173499 c!1293837) b!6979987))

(assert (= (and d!2173499 (not c!1293837)) b!6979988))

(assert (= (and d!2173499 res!2846321) b!6979989))

(assert (= (and b!6979989 res!2846322) b!6979990))

(declare-fun m!7666286 () Bool)

(assert (=> d!2173499 m!7666286))

(declare-fun m!7666288 () Bool)

(assert (=> d!2173499 m!7666288))

(declare-fun m!7666290 () Bool)

(assert (=> d!2173499 m!7666290))

(declare-fun m!7666292 () Bool)

(assert (=> b!6979989 m!7666292))

(declare-fun m!7666294 () Bool)

(assert (=> b!6979989 m!7666294))

(declare-fun m!7666296 () Bool)

(assert (=> b!6979989 m!7666296))

(declare-fun m!7666298 () Bool)

(assert (=> b!6979988 m!7666298))

(assert (=> b!6979874 d!2173499))

(assert (=> b!6979874 d!2173457))

(declare-fun d!2173503 () Bool)

(declare-fun e!4195034 () Bool)

(assert (=> d!2173503 e!4195034))

(declare-fun res!2846325 () Bool)

(assert (=> d!2173503 (=> (not res!2846325) (not e!4195034))))

(declare-fun lt!2481501 () Context!12332)

(declare-fun dynLambda!26737 (Int Context!12332) Context!12332)

(assert (=> d!2173503 (= res!2846325 (= lt!2481419 (dynLambda!26737 lambda!398963 lt!2481501)))))

(declare-fun choose!52021 ((Set Context!12332) Int Context!12332) Context!12332)

(assert (=> d!2173503 (= lt!2481501 (choose!52021 z1!570 lambda!398963 lt!2481419))))

(assert (=> d!2173503 (set.member lt!2481419 (map!15421 z1!570 lambda!398963))))

(assert (=> d!2173503 (= (mapPost2!25 z1!570 lambda!398963 lt!2481419) lt!2481501)))

(declare-fun b!6979994 () Bool)

(assert (=> b!6979994 (= e!4195034 (set.member lt!2481501 z1!570))))

(assert (= (and d!2173503 res!2846325) b!6979994))

(declare-fun b_lambda!261495 () Bool)

(assert (=> (not b_lambda!261495) (not d!2173503)))

(declare-fun m!7666300 () Bool)

(assert (=> d!2173503 m!7666300))

(declare-fun m!7666302 () Bool)

(assert (=> d!2173503 m!7666302))

(declare-fun m!7666304 () Bool)

(assert (=> d!2173503 m!7666304))

(declare-fun m!7666306 () Bool)

(assert (=> d!2173503 m!7666306))

(declare-fun m!7666308 () Bool)

(assert (=> b!6979994 m!7666308))

(assert (=> b!6979874 d!2173503))

(declare-fun d!2173505 () Bool)

(declare-fun nullableFct!2602 (Regex!17170) Bool)

(assert (=> d!2173505 (= (nullable!6930 (h!73379 (exprs!6666 lt!2481420))) (nullableFct!2602 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun bs!1860671 () Bool)

(assert (= bs!1860671 d!2173505))

(declare-fun m!7666310 () Bool)

(assert (=> bs!1860671 m!7666310))

(assert (=> b!6979879 d!2173505))

(declare-fun d!2173507 () Bool)

(assert (=> d!2173507 (= (tail!13142 (exprs!6666 lt!2481420)) (t!380798 (exprs!6666 lt!2481420)))))

(assert (=> b!6979879 d!2173507))

(declare-fun b!6980013 () Bool)

(declare-fun e!4195053 () Bool)

(declare-fun call!633344 () Bool)

(assert (=> b!6980013 (= e!4195053 call!633344)))

(declare-fun b!6980014 () Bool)

(declare-fun e!4195055 () Bool)

(declare-fun call!633343 () Bool)

(assert (=> b!6980014 (= e!4195055 call!633343)))

(declare-fun bm!633337 () Bool)

(declare-fun c!1293845 () Bool)

(declare-fun c!1293844 () Bool)

(assert (=> bm!633337 (= call!633344 (validRegex!8834 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))

(declare-fun bm!633338 () Bool)

(declare-fun call!633342 () Bool)

(assert (=> bm!633338 (= call!633342 call!633344)))

(declare-fun b!6980015 () Bool)

(declare-fun e!4195051 () Bool)

(assert (=> b!6980015 (= e!4195051 call!633343)))

(declare-fun b!6980016 () Bool)

(declare-fun e!4195054 () Bool)

(assert (=> b!6980016 (= e!4195054 e!4195051)))

(declare-fun res!2846338 () Bool)

(assert (=> b!6980016 (=> (not res!2846338) (not e!4195051))))

(assert (=> b!6980016 (= res!2846338 call!633342)))

(declare-fun b!6980017 () Bool)

(declare-fun e!4195050 () Bool)

(assert (=> b!6980017 (= e!4195050 e!4195053)))

(declare-fun res!2846339 () Bool)

(assert (=> b!6980017 (= res!2846339 (not (nullable!6930 (reg!17499 (h!73379 (exprs!6666 lt!2481420))))))))

(assert (=> b!6980017 (=> (not res!2846339) (not e!4195053))))

(declare-fun b!6980018 () Bool)

(declare-fun e!4195052 () Bool)

(assert (=> b!6980018 (= e!4195050 e!4195052)))

(assert (=> b!6980018 (= c!1293845 (is-Union!17170 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun b!6980019 () Bool)

(declare-fun e!4195049 () Bool)

(assert (=> b!6980019 (= e!4195049 e!4195050)))

(assert (=> b!6980019 (= c!1293844 (is-Star!17170 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun d!2173509 () Bool)

(declare-fun res!2846340 () Bool)

(assert (=> d!2173509 (=> res!2846340 e!4195049)))

(assert (=> d!2173509 (= res!2846340 (is-ElementMatch!17170 (h!73379 (exprs!6666 lt!2481420))))))

(assert (=> d!2173509 (= (validRegex!8834 (h!73379 (exprs!6666 lt!2481420))) e!4195049)))

(declare-fun bm!633339 () Bool)

(assert (=> bm!633339 (= call!633343 (validRegex!8834 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(declare-fun b!6980020 () Bool)

(declare-fun res!2846336 () Bool)

(assert (=> b!6980020 (=> (not res!2846336) (not e!4195055))))

(assert (=> b!6980020 (= res!2846336 call!633342)))

(assert (=> b!6980020 (= e!4195052 e!4195055)))

(declare-fun b!6980021 () Bool)

(declare-fun res!2846337 () Bool)

(assert (=> b!6980021 (=> res!2846337 e!4195054)))

(assert (=> b!6980021 (= res!2846337 (not (is-Concat!26015 (h!73379 (exprs!6666 lt!2481420)))))))

(assert (=> b!6980021 (= e!4195052 e!4195054)))

(assert (= (and d!2173509 (not res!2846340)) b!6980019))

(assert (= (and b!6980019 c!1293844) b!6980017))

(assert (= (and b!6980019 (not c!1293844)) b!6980018))

(assert (= (and b!6980017 res!2846339) b!6980013))

(assert (= (and b!6980018 c!1293845) b!6980020))

(assert (= (and b!6980018 (not c!1293845)) b!6980021))

(assert (= (and b!6980020 res!2846336) b!6980014))

(assert (= (and b!6980021 (not res!2846337)) b!6980016))

(assert (= (and b!6980016 res!2846338) b!6980015))

(assert (= (or b!6980014 b!6980015) bm!633339))

(assert (= (or b!6980020 b!6980016) bm!633338))

(assert (= (or b!6980013 bm!633338) bm!633337))

(declare-fun m!7666320 () Bool)

(assert (=> bm!633337 m!7666320))

(declare-fun m!7666322 () Bool)

(assert (=> b!6980017 m!7666322))

(declare-fun m!7666324 () Bool)

(assert (=> bm!633339 m!7666324))

(assert (=> b!6979878 d!2173509))

(declare-fun b!6980025 () Bool)

(declare-fun e!4195056 () Bool)

(declare-fun lt!2481505 () List!67055)

(assert (=> b!6980025 (= e!4195056 (or (not (= (exprs!6666 ct2!306) Nil!66931)) (= lt!2481505 lt!2481418)))))

(declare-fun d!2173513 () Bool)

(assert (=> d!2173513 e!4195056))

(declare-fun res!2846341 () Bool)

(assert (=> d!2173513 (=> (not res!2846341) (not e!4195056))))

(assert (=> d!2173513 (= res!2846341 (= (content!13194 lt!2481505) (set.union (content!13194 lt!2481418) (content!13194 (exprs!6666 ct2!306)))))))

(declare-fun e!4195057 () List!67055)

(assert (=> d!2173513 (= lt!2481505 e!4195057)))

(declare-fun c!1293846 () Bool)

(assert (=> d!2173513 (= c!1293846 (is-Nil!66931 lt!2481418))))

(assert (=> d!2173513 (= (++!15115 lt!2481418 (exprs!6666 ct2!306)) lt!2481505)))

(declare-fun b!6980024 () Bool)

(declare-fun res!2846342 () Bool)

(assert (=> b!6980024 (=> (not res!2846342) (not e!4195056))))

(assert (=> b!6980024 (= res!2846342 (= (size!40870 lt!2481505) (+ (size!40870 lt!2481418) (size!40870 (exprs!6666 ct2!306)))))))

(declare-fun b!6980022 () Bool)

(assert (=> b!6980022 (= e!4195057 (exprs!6666 ct2!306))))

(declare-fun b!6980023 () Bool)

(assert (=> b!6980023 (= e!4195057 (Cons!66931 (h!73379 lt!2481418) (++!15115 (t!380798 lt!2481418) (exprs!6666 ct2!306))))))

(assert (= (and d!2173513 c!1293846) b!6980022))

(assert (= (and d!2173513 (not c!1293846)) b!6980023))

(assert (= (and d!2173513 res!2846341) b!6980024))

(assert (= (and b!6980024 res!2846342) b!6980025))

(declare-fun m!7666326 () Bool)

(assert (=> d!2173513 m!7666326))

(declare-fun m!7666328 () Bool)

(assert (=> d!2173513 m!7666328))

(assert (=> d!2173513 m!7666290))

(declare-fun m!7666330 () Bool)

(assert (=> b!6980024 m!7666330))

(declare-fun m!7666332 () Bool)

(assert (=> b!6980024 m!7666332))

(assert (=> b!6980024 m!7666296))

(declare-fun m!7666334 () Bool)

(assert (=> b!6980023 m!7666334))

(assert (=> b!6979878 d!2173513))

(declare-fun d!2173515 () Bool)

(assert (=> d!2173515 (forall!16054 (++!15115 lt!2481418 (exprs!6666 ct2!306)) lambda!398964)))

(declare-fun lt!2481506 () Unit!160990)

(assert (=> d!2173515 (= lt!2481506 (choose!52016 lt!2481418 (exprs!6666 ct2!306) lambda!398964))))

(assert (=> d!2173515 (forall!16054 lt!2481418 lambda!398964)))

(assert (=> d!2173515 (= (lemmaConcatPreservesForall!506 lt!2481418 (exprs!6666 ct2!306) lambda!398964) lt!2481506)))

(declare-fun bs!1860675 () Bool)

(assert (= bs!1860675 d!2173515))

(assert (=> bs!1860675 m!7666110))

(assert (=> bs!1860675 m!7666110))

(declare-fun m!7666336 () Bool)

(assert (=> bs!1860675 m!7666336))

(declare-fun m!7666338 () Bool)

(assert (=> bs!1860675 m!7666338))

(declare-fun m!7666340 () Bool)

(assert (=> bs!1860675 m!7666340))

(assert (=> b!6979878 d!2173515))

(declare-fun bs!1860676 () Bool)

(declare-fun d!2173517 () Bool)

(assert (= bs!1860676 (and d!2173517 b!6979874)))

(declare-fun lambda!399022 () Int)

(assert (=> bs!1860676 (= lambda!399022 lambda!398964)))

(declare-fun bs!1860677 () Bool)

(assert (= bs!1860677 (and d!2173517 d!2173473)))

(assert (=> bs!1860677 (= lambda!399022 lambda!399008)))

(assert (=> d!2173517 (= (inv!85785 setElem!47502) (forall!16054 (exprs!6666 setElem!47502) lambda!399022))))

(declare-fun bs!1860678 () Bool)

(assert (= bs!1860678 d!2173517))

(declare-fun m!7666342 () Bool)

(assert (=> bs!1860678 m!7666342))

(assert (=> setNonEmpty!47502 d!2173517))

(declare-fun d!2173519 () Bool)

(assert (=> d!2173519 (= (isEmpty!39066 (exprs!6666 lt!2481420)) (is-Nil!66931 (exprs!6666 lt!2481420)))))

(assert (=> b!6979877 d!2173519))

(declare-fun b!6980030 () Bool)

(declare-fun e!4195060 () Bool)

(declare-fun tp!1928075 () Bool)

(declare-fun tp!1928076 () Bool)

(assert (=> b!6980030 (= e!4195060 (and tp!1928075 tp!1928076))))

(assert (=> b!6979871 (= tp!1928058 e!4195060)))

(assert (= (and b!6979871 (is-Cons!66931 (exprs!6666 ct2!306))) b!6980030))

(declare-fun b!6980031 () Bool)

(declare-fun e!4195061 () Bool)

(declare-fun tp!1928077 () Bool)

(declare-fun tp!1928078 () Bool)

(assert (=> b!6980031 (= e!4195061 (and tp!1928077 tp!1928078))))

(assert (=> b!6979880 (= tp!1928056 e!4195061)))

(assert (= (and b!6979880 (is-Cons!66931 (exprs!6666 setElem!47502))) b!6980031))

(declare-fun b!6980036 () Bool)

(declare-fun e!4195064 () Bool)

(declare-fun tp!1928081 () Bool)

(assert (=> b!6980036 (= e!4195064 (and tp_is_empty!43565 tp!1928081))))

(assert (=> b!6979873 (= tp!1928055 e!4195064)))

(assert (= (and b!6979873 (is-Cons!66932 (t!380799 s!7408))) b!6980036))

(declare-fun condSetEmpty!47508 () Bool)

(assert (=> setNonEmpty!47502 (= condSetEmpty!47508 (= setRest!47502 (as set.empty (Set Context!12332))))))

(declare-fun setRes!47508 () Bool)

(assert (=> setNonEmpty!47502 (= tp!1928057 setRes!47508)))

(declare-fun setIsEmpty!47508 () Bool)

(assert (=> setIsEmpty!47508 setRes!47508))

(declare-fun setElem!47508 () Context!12332)

(declare-fun setNonEmpty!47508 () Bool)

(declare-fun tp!1928086 () Bool)

(declare-fun e!4195069 () Bool)

(assert (=> setNonEmpty!47508 (= setRes!47508 (and tp!1928086 (inv!85785 setElem!47508) e!4195069))))

(declare-fun setRest!47508 () (Set Context!12332))

(assert (=> setNonEmpty!47508 (= setRest!47502 (set.union (set.insert setElem!47508 (as set.empty (Set Context!12332))) setRest!47508))))

(declare-fun b!6980041 () Bool)

(declare-fun tp!1928087 () Bool)

(assert (=> b!6980041 (= e!4195069 tp!1928087)))

(assert (= (and setNonEmpty!47502 condSetEmpty!47508) setIsEmpty!47508))

(assert (= (and setNonEmpty!47502 (not condSetEmpty!47508)) setNonEmpty!47508))

(assert (= setNonEmpty!47508 b!6980041))

(declare-fun m!7666344 () Bool)

(assert (=> setNonEmpty!47508 m!7666344))

(declare-fun b_lambda!261497 () Bool)

(assert (= b_lambda!261495 (or b!6979874 b_lambda!261497)))

(declare-fun bs!1860679 () Bool)

(declare-fun d!2173521 () Bool)

(assert (= bs!1860679 (and d!2173521 b!6979874)))

(declare-fun lt!2481509 () Unit!160990)

(assert (=> bs!1860679 (= lt!2481509 (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481501) (exprs!6666 ct2!306) lambda!398964))))

(assert (=> bs!1860679 (= (dynLambda!26737 lambda!398963 lt!2481501) (Context!12333 (++!15115 (exprs!6666 lt!2481501) (exprs!6666 ct2!306))))))

(declare-fun m!7666346 () Bool)

(assert (=> bs!1860679 m!7666346))

(declare-fun m!7666348 () Bool)

(assert (=> bs!1860679 m!7666348))

(assert (=> d!2173503 d!2173521))

(declare-fun b_lambda!261499 () Bool)

(assert (= b_lambda!261491 (or b!6979876 b_lambda!261499)))

(declare-fun bs!1860680 () Bool)

(declare-fun d!2173523 () Bool)

(assert (= bs!1860680 (and d!2173523 b!6979876)))

(assert (=> bs!1860680 (= (dynLambda!26734 lambda!398965 lt!2481411) (derivationStepZipperUp!1820 lt!2481411 (h!73380 s!7408)))))

(assert (=> bs!1860680 m!7666088))

(assert (=> d!2173459 d!2173523))

(declare-fun b_lambda!261501 () Bool)

(assert (= b_lambda!261493 (or b!6979875 b_lambda!261501)))

(declare-fun bs!1860681 () Bool)

(declare-fun d!2173525 () Bool)

(assert (= bs!1860681 (and d!2173525 b!6979875)))

(assert (=> bs!1860681 (= (dynLambda!26736 lambda!398962 lt!2481486) (matchZipper!2710 (set.insert lt!2481486 (as set.empty (Set Context!12332))) s!7408))))

(declare-fun m!7666350 () Bool)

(assert (=> bs!1860681 m!7666350))

(assert (=> bs!1860681 m!7666350))

(declare-fun m!7666352 () Bool)

(assert (=> bs!1860681 m!7666352))

(assert (=> d!2173483 d!2173525))

(push 1)

(assert (not d!2173499))

(assert (not bs!1860681))

(assert (not b!6979951))

(assert (not d!2173495))

(assert tp_is_empty!43565)

(assert (not b!6980030))

(assert (not b!6980017))

(assert (not b!6979952))

(assert (not d!2173497))

(assert (not d!2173515))

(assert (not d!2173503))

(assert (not b!6979976))

(assert (not d!2173467))

(assert (not d!2173505))

(assert (not b!6980023))

(assert (not d!2173459))

(assert (not d!2173513))

(assert (not b!6980036))

(assert (not b!6980031))

(assert (not d!2173517))

(assert (not b_lambda!261497))

(assert (not b!6980041))

(assert (not b!6980024))

(assert (not bs!1860680))

(assert (not b_lambda!261499))

(assert (not b_lambda!261501))

(assert (not b!6979973))

(assert (not d!2173477))

(assert (not b!6979989))

(assert (not bm!633339))

(assert (not b!6979972))

(assert (not d!2173457))

(assert (not bs!1860679))

(assert (not d!2173463))

(assert (not d!2173473))

(assert (not b!6979960))

(assert (not d!2173469))

(assert (not bm!633337))

(assert (not d!2173491))

(assert (not bm!633330))

(assert (not b!6979988))

(assert (not setNonEmpty!47508))

(assert (not d!2173455))

(assert (not b!6979961))

(assert (not d!2173483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2173459 d!2173463))

(declare-fun d!2173553 () Bool)

(assert (=> d!2173553 (= (flatMap!2156 lt!2481410 lambda!398965) (dynLambda!26734 lambda!398965 lt!2481411))))

(assert (=> d!2173553 true))

(declare-fun _$13!4358 () Unit!160990)

(assert (=> d!2173553 (= (choose!52017 lt!2481410 lt!2481411 lambda!398965) _$13!4358)))

(declare-fun b_lambda!261515 () Bool)

(assert (=> (not b_lambda!261515) (not d!2173553)))

(declare-fun bs!1860691 () Bool)

(assert (= bs!1860691 d!2173553))

(assert (=> bs!1860691 m!7666084))

(assert (=> bs!1860691 m!7666206))

(assert (=> d!2173459 d!2173553))

(declare-fun bs!1860692 () Bool)

(declare-fun d!2173555 () Bool)

(assert (= bs!1860692 (and d!2173555 b!6979875)))

(declare-fun lambda!399028 () Int)

(assert (=> bs!1860692 (not (= lambda!399028 lambda!398962))))

(declare-fun bs!1860693 () Bool)

(assert (= bs!1860693 (and d!2173555 d!2173477)))

(assert (=> bs!1860693 (not (= lambda!399028 lambda!399012))))

(declare-fun bs!1860694 () Bool)

(assert (= bs!1860694 (and d!2173555 d!2173491)))

(assert (=> bs!1860694 (not (= lambda!399028 lambda!399015))))

(assert (=> d!2173555 (= (nullableZipper!2399 lt!2481413) (exists!2927 lt!2481413 lambda!399028))))

(declare-fun bs!1860695 () Bool)

(assert (= bs!1860695 d!2173555))

(declare-fun m!7666438 () Bool)

(assert (=> bs!1860695 m!7666438))

(assert (=> b!6979960 d!2173555))

(declare-fun d!2173557 () Bool)

(declare-fun res!2846379 () Bool)

(declare-fun e!4195126 () Bool)

(assert (=> d!2173557 (=> res!2846379 e!4195126)))

(assert (=> d!2173557 (= res!2846379 (is-Nil!66933 lt!2481495))))

(assert (=> d!2173557 (= (noDuplicate!2490 lt!2481495) e!4195126)))

(declare-fun b!6980129 () Bool)

(declare-fun e!4195127 () Bool)

(assert (=> b!6980129 (= e!4195126 e!4195127)))

(declare-fun res!2846380 () Bool)

(assert (=> b!6980129 (=> (not res!2846380) (not e!4195127))))

(declare-fun contains!20406 (List!67057 Context!12332) Bool)

(assert (=> b!6980129 (= res!2846380 (not (contains!20406 (t!380800 lt!2481495) (h!73381 lt!2481495))))))

(declare-fun b!6980130 () Bool)

(assert (=> b!6980130 (= e!4195127 (noDuplicate!2490 (t!380800 lt!2481495)))))

(assert (= (and d!2173557 (not res!2846379)) b!6980129))

(assert (= (and b!6980129 res!2846380) b!6980130))

(declare-fun m!7666440 () Bool)

(assert (=> b!6980129 m!7666440))

(declare-fun m!7666442 () Bool)

(assert (=> b!6980130 m!7666442))

(assert (=> d!2173497 d!2173557))

(declare-fun d!2173559 () Bool)

(declare-fun e!4195135 () Bool)

(assert (=> d!2173559 e!4195135))

(declare-fun res!2846386 () Bool)

(assert (=> d!2173559 (=> (not res!2846386) (not e!4195135))))

(declare-fun res!2846385 () List!67057)

(assert (=> d!2173559 (= res!2846386 (noDuplicate!2490 res!2846385))))

(declare-fun e!4195134 () Bool)

(assert (=> d!2173559 e!4195134))

(assert (=> d!2173559 (= (choose!52020 lt!2481413) res!2846385)))

(declare-fun b!6980138 () Bool)

(declare-fun e!4195136 () Bool)

(declare-fun tp!1928109 () Bool)

(assert (=> b!6980138 (= e!4195136 tp!1928109)))

(declare-fun b!6980137 () Bool)

(declare-fun tp!1928110 () Bool)

(assert (=> b!6980137 (= e!4195134 (and (inv!85785 (h!73381 res!2846385)) e!4195136 tp!1928110))))

(declare-fun b!6980139 () Bool)

(assert (=> b!6980139 (= e!4195135 (= (content!13193 res!2846385) lt!2481413))))

(assert (= b!6980137 b!6980138))

(assert (= (and d!2173559 (is-Cons!66933 res!2846385)) b!6980137))

(assert (= (and d!2173559 res!2846386) b!6980139))

(declare-fun m!7666444 () Bool)

(assert (=> d!2173559 m!7666444))

(declare-fun m!7666446 () Bool)

(assert (=> b!6980137 m!7666446))

(declare-fun m!7666448 () Bool)

(assert (=> b!6980139 m!7666448))

(assert (=> d!2173497 d!2173559))

(declare-fun d!2173561 () Bool)

(declare-fun c!1293867 () Bool)

(assert (=> d!2173561 (= c!1293867 (isEmpty!39068 (tail!13144 s!7408)))))

(declare-fun e!4195137 () Bool)

(assert (=> d!2173561 (= (matchZipper!2710 (derivationStepZipper!2650 lt!2481413 (head!14069 s!7408)) (tail!13144 s!7408)) e!4195137)))

(declare-fun b!6980140 () Bool)

(assert (=> b!6980140 (= e!4195137 (nullableZipper!2399 (derivationStepZipper!2650 lt!2481413 (head!14069 s!7408))))))

(declare-fun b!6980141 () Bool)

(assert (=> b!6980141 (= e!4195137 (matchZipper!2710 (derivationStepZipper!2650 (derivationStepZipper!2650 lt!2481413 (head!14069 s!7408)) (head!14069 (tail!13144 s!7408))) (tail!13144 (tail!13144 s!7408))))))

(assert (= (and d!2173561 c!1293867) b!6980140))

(assert (= (and d!2173561 (not c!1293867)) b!6980141))

(assert (=> d!2173561 m!7666226))

(declare-fun m!7666450 () Bool)

(assert (=> d!2173561 m!7666450))

(assert (=> b!6980140 m!7666224))

(declare-fun m!7666452 () Bool)

(assert (=> b!6980140 m!7666452))

(assert (=> b!6980141 m!7666226))

(declare-fun m!7666454 () Bool)

(assert (=> b!6980141 m!7666454))

(assert (=> b!6980141 m!7666224))

(assert (=> b!6980141 m!7666454))

(declare-fun m!7666456 () Bool)

(assert (=> b!6980141 m!7666456))

(assert (=> b!6980141 m!7666226))

(declare-fun m!7666458 () Bool)

(assert (=> b!6980141 m!7666458))

(assert (=> b!6980141 m!7666456))

(assert (=> b!6980141 m!7666458))

(declare-fun m!7666460 () Bool)

(assert (=> b!6980141 m!7666460))

(assert (=> b!6979961 d!2173561))

(declare-fun bs!1860696 () Bool)

(declare-fun d!2173563 () Bool)

(assert (= bs!1860696 (and d!2173563 b!6979876)))

(declare-fun lambda!399029 () Int)

(assert (=> bs!1860696 (= (= (head!14069 s!7408) (h!73380 s!7408)) (= lambda!399029 lambda!398965))))

(declare-fun bs!1860697 () Bool)

(assert (= bs!1860697 (and d!2173563 d!2173455)))

(assert (=> bs!1860697 (= (= (head!14069 s!7408) (h!73380 s!7408)) (= lambda!399029 lambda!398992))))

(assert (=> d!2173563 true))

(assert (=> d!2173563 (= (derivationStepZipper!2650 lt!2481413 (head!14069 s!7408)) (flatMap!2156 lt!2481413 lambda!399029))))

(declare-fun bs!1860698 () Bool)

(assert (= bs!1860698 d!2173563))

(declare-fun m!7666462 () Bool)

(assert (=> bs!1860698 m!7666462))

(assert (=> b!6979961 d!2173563))

(declare-fun d!2173565 () Bool)

(assert (=> d!2173565 (= (head!14069 s!7408) (h!73380 s!7408))))

(assert (=> b!6979961 d!2173565))

(declare-fun d!2173567 () Bool)

(assert (=> d!2173567 (= (tail!13144 s!7408) (t!380799 s!7408))))

(assert (=> b!6979961 d!2173567))

(declare-fun d!2173569 () Bool)

(assert (=> d!2173569 (= (nullable!6930 (h!73379 (exprs!6666 lt!2481411))) (nullableFct!2602 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun bs!1860699 () Bool)

(assert (= bs!1860699 d!2173569))

(declare-fun m!7666464 () Bool)

(assert (=> bs!1860699 m!7666464))

(assert (=> b!6979952 d!2173569))

(declare-fun d!2173571 () Bool)

(declare-fun c!1293869 () Bool)

(declare-fun e!4195139 () Bool)

(assert (=> d!2173571 (= c!1293869 e!4195139)))

(declare-fun res!2846387 () Bool)

(assert (=> d!2173571 (=> (not res!2846387) (not e!4195139))))

(assert (=> d!2173571 (= res!2846387 (is-Cons!66931 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411))))))))

(declare-fun e!4195140 () (Set Context!12332))

(assert (=> d!2173571 (= (derivationStepZipperUp!1820 (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (h!73380 s!7408)) e!4195140)))

(declare-fun b!6980142 () Bool)

(declare-fun call!633357 () (Set Context!12332))

(assert (=> b!6980142 (= e!4195140 (set.union call!633357 (derivationStepZipperUp!1820 (Context!12333 (t!380798 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411)))))) (h!73380 s!7408))))))

(declare-fun b!6980143 () Bool)

(assert (=> b!6980143 (= e!4195139 (nullable!6930 (h!73379 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411)))))))))

(declare-fun b!6980144 () Bool)

(declare-fun e!4195138 () (Set Context!12332))

(assert (=> b!6980144 (= e!4195138 (as set.empty (Set Context!12332)))))

(declare-fun bm!633352 () Bool)

(assert (=> bm!633352 (= call!633357 (derivationStepZipperDown!1888 (h!73379 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411))))) (Context!12333 (t!380798 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411)))))) (h!73380 s!7408)))))

(declare-fun b!6980145 () Bool)

(assert (=> b!6980145 (= e!4195140 e!4195138)))

(declare-fun c!1293868 () Bool)

(assert (=> b!6980145 (= c!1293868 (is-Cons!66931 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411))))))))

(declare-fun b!6980146 () Bool)

(assert (=> b!6980146 (= e!4195138 call!633357)))

(assert (= (and d!2173571 res!2846387) b!6980143))

(assert (= (and d!2173571 c!1293869) b!6980142))

(assert (= (and d!2173571 (not c!1293869)) b!6980145))

(assert (= (and b!6980145 c!1293868) b!6980146))

(assert (= (and b!6980145 (not c!1293868)) b!6980144))

(assert (= (or b!6980142 b!6980146) bm!633352))

(declare-fun m!7666466 () Bool)

(assert (=> b!6980142 m!7666466))

(declare-fun m!7666468 () Bool)

(assert (=> b!6980143 m!7666468))

(declare-fun m!7666470 () Bool)

(assert (=> bm!633352 m!7666470))

(assert (=> b!6979951 d!2173571))

(declare-fun bs!1860700 () Bool)

(declare-fun d!2173573 () Bool)

(assert (= bs!1860700 (and d!2173573 b!6979874)))

(declare-fun lambda!399030 () Int)

(assert (=> bs!1860700 (= lambda!399030 lambda!398964)))

(declare-fun bs!1860701 () Bool)

(assert (= bs!1860701 (and d!2173573 d!2173473)))

(assert (=> bs!1860701 (= lambda!399030 lambda!399008)))

(declare-fun bs!1860702 () Bool)

(assert (= bs!1860702 (and d!2173573 d!2173517)))

(assert (=> bs!1860702 (= lambda!399030 lambda!399022)))

(assert (=> d!2173573 (= (inv!85785 setElem!47508) (forall!16054 (exprs!6666 setElem!47508) lambda!399030))))

(declare-fun bs!1860703 () Bool)

(assert (= bs!1860703 d!2173573))

(declare-fun m!7666472 () Bool)

(assert (=> bs!1860703 m!7666472))

(assert (=> setNonEmpty!47508 d!2173573))

(assert (=> bs!1860680 d!2173465))

(declare-fun d!2173575 () Bool)

(assert (=> d!2173575 (= (isEmpty!39068 s!7408) (is-Nil!66932 s!7408))))

(assert (=> d!2173495 d!2173575))

(declare-fun b!6980159 () Bool)

(declare-fun e!4195152 () Context!12332)

(assert (=> b!6980159 (= e!4195152 (getWitness!1038 (t!380800 (toList!10530 lt!2481413)) lambda!398962))))

(declare-fun b!6980160 () Bool)

(declare-fun e!4195149 () Bool)

(assert (=> b!6980160 (= e!4195149 (dynLambda!26736 lambda!398962 (h!73381 (toList!10530 lt!2481413))))))

(declare-fun b!6980161 () Bool)

(declare-fun e!4195150 () Context!12332)

(assert (=> b!6980161 (= e!4195150 (h!73381 (toList!10530 lt!2481413)))))

(declare-fun b!6980162 () Bool)

(declare-fun lt!2481531 () Unit!160990)

(declare-fun Unit!160994 () Unit!160990)

(assert (=> b!6980162 (= lt!2481531 Unit!160994)))

(assert (=> b!6980162 false))

(declare-fun head!14071 (List!67057) Context!12332)

(assert (=> b!6980162 (= e!4195152 (head!14071 (toList!10530 lt!2481413)))))

(declare-fun b!6980163 () Bool)

(declare-fun e!4195151 () Bool)

(declare-fun lt!2481530 () Context!12332)

(assert (=> b!6980163 (= e!4195151 (contains!20406 (toList!10530 lt!2481413) lt!2481530))))

(declare-fun d!2173577 () Bool)

(assert (=> d!2173577 e!4195151))

(declare-fun res!2846393 () Bool)

(assert (=> d!2173577 (=> (not res!2846393) (not e!4195151))))

(assert (=> d!2173577 (= res!2846393 (dynLambda!26736 lambda!398962 lt!2481530))))

(assert (=> d!2173577 (= lt!2481530 e!4195150)))

(declare-fun c!1293875 () Bool)

(assert (=> d!2173577 (= c!1293875 e!4195149)))

(declare-fun res!2846392 () Bool)

(assert (=> d!2173577 (=> (not res!2846392) (not e!4195149))))

(assert (=> d!2173577 (= res!2846392 (is-Cons!66933 (toList!10530 lt!2481413)))))

(assert (=> d!2173577 (exists!2925 (toList!10530 lt!2481413) lambda!398962)))

(assert (=> d!2173577 (= (getWitness!1038 (toList!10530 lt!2481413) lambda!398962) lt!2481530)))

(declare-fun b!6980164 () Bool)

(assert (=> b!6980164 (= e!4195150 e!4195152)))

(declare-fun c!1293874 () Bool)

(assert (=> b!6980164 (= c!1293874 (is-Cons!66933 (toList!10530 lt!2481413)))))

(assert (= (and d!2173577 res!2846392) b!6980160))

(assert (= (and d!2173577 c!1293875) b!6980161))

(assert (= (and d!2173577 (not c!1293875)) b!6980164))

(assert (= (and b!6980164 c!1293874) b!6980159))

(assert (= (and b!6980164 (not c!1293874)) b!6980162))

(assert (= (and d!2173577 res!2846393) b!6980163))

(declare-fun b_lambda!261517 () Bool)

(assert (=> (not b_lambda!261517) (not b!6980160)))

(declare-fun b_lambda!261519 () Bool)

(assert (=> (not b_lambda!261519) (not d!2173577)))

(declare-fun m!7666474 () Bool)

(assert (=> d!2173577 m!7666474))

(assert (=> d!2173577 m!7666096))

(declare-fun m!7666476 () Bool)

(assert (=> d!2173577 m!7666476))

(assert (=> b!6980162 m!7666096))

(declare-fun m!7666478 () Bool)

(assert (=> b!6980162 m!7666478))

(declare-fun m!7666480 () Bool)

(assert (=> b!6980159 m!7666480))

(assert (=> b!6980163 m!7666096))

(declare-fun m!7666482 () Bool)

(assert (=> b!6980163 m!7666482))

(declare-fun m!7666484 () Bool)

(assert (=> b!6980160 m!7666484))

(assert (=> d!2173483 d!2173577))

(assert (=> d!2173483 d!2173497))

(declare-fun d!2173579 () Bool)

(declare-fun lt!2481534 () Bool)

(assert (=> d!2173579 (= lt!2481534 (exists!2925 (toList!10530 lt!2481413) lambda!398962))))

(declare-fun choose!52028 ((Set Context!12332) Int) Bool)

(assert (=> d!2173579 (= lt!2481534 (choose!52028 lt!2481413 lambda!398962))))

(assert (=> d!2173579 (= (exists!2927 lt!2481413 lambda!398962) lt!2481534)))

(declare-fun bs!1860704 () Bool)

(assert (= bs!1860704 d!2173579))

(assert (=> bs!1860704 m!7666096))

(assert (=> bs!1860704 m!7666096))

(assert (=> bs!1860704 m!7666476))

(declare-fun m!7666486 () Bool)

(assert (=> bs!1860704 m!7666486))

(assert (=> d!2173483 d!2173579))

(declare-fun b!6980187 () Bool)

(declare-fun c!1293887 () Bool)

(declare-fun e!4195168 () Bool)

(assert (=> b!6980187 (= c!1293887 e!4195168)))

(declare-fun res!2846396 () Bool)

(assert (=> b!6980187 (=> (not res!2846396) (not e!4195168))))

(assert (=> b!6980187 (= res!2846396 (is-Concat!26015 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun e!4195165 () (Set Context!12332))

(declare-fun e!4195169 () (Set Context!12332))

(assert (=> b!6980187 (= e!4195165 e!4195169)))

(declare-fun b!6980188 () Bool)

(declare-fun e!4195167 () (Set Context!12332))

(assert (=> b!6980188 (= e!4195167 (as set.empty (Set Context!12332)))))

(declare-fun b!6980189 () Bool)

(declare-fun call!633370 () (Set Context!12332))

(declare-fun call!633375 () (Set Context!12332))

(assert (=> b!6980189 (= e!4195169 (set.union call!633370 call!633375))))

(declare-fun call!633374 () (Set Context!12332))

(declare-fun c!1293888 () Bool)

(declare-fun bm!633365 () Bool)

(declare-fun c!1293890 () Bool)

(declare-fun call!633371 () List!67055)

(assert (=> bm!633365 (= call!633374 (derivationStepZipperDown!1888 (ite c!1293888 (regOne!34853 (h!73379 (exprs!6666 lt!2481411))) (ite c!1293887 (regTwo!34852 (h!73379 (exprs!6666 lt!2481411))) (ite c!1293890 (regOne!34852 (h!73379 (exprs!6666 lt!2481411))) (reg!17499 (h!73379 (exprs!6666 lt!2481411)))))) (ite (or c!1293888 c!1293887) (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (Context!12333 call!633371)) (h!73380 s!7408)))))

(declare-fun b!6980190 () Bool)

(declare-fun c!1293886 () Bool)

(assert (=> b!6980190 (= c!1293886 (is-Star!17170 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun e!4195170 () (Set Context!12332))

(assert (=> b!6980190 (= e!4195170 e!4195167)))

(declare-fun b!6980191 () Bool)

(assert (=> b!6980191 (= e!4195169 e!4195170)))

(assert (=> b!6980191 (= c!1293890 (is-Concat!26015 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun b!6980192 () Bool)

(declare-fun call!633373 () (Set Context!12332))

(assert (=> b!6980192 (= e!4195170 call!633373)))

(declare-fun call!633372 () List!67055)

(declare-fun bm!633366 () Bool)

(assert (=> bm!633366 (= call!633370 (derivationStepZipperDown!1888 (ite c!1293888 (regTwo!34853 (h!73379 (exprs!6666 lt!2481411))) (regOne!34852 (h!73379 (exprs!6666 lt!2481411)))) (ite c!1293888 (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (Context!12333 call!633372)) (h!73380 s!7408)))))

(declare-fun b!6980193 () Bool)

(assert (=> b!6980193 (= e!4195165 (set.union call!633374 call!633370))))

(declare-fun bm!633367 () Bool)

(assert (=> bm!633367 (= call!633375 call!633374)))

(declare-fun b!6980194 () Bool)

(assert (=> b!6980194 (= e!4195168 (nullable!6930 (regOne!34852 (h!73379 (exprs!6666 lt!2481411)))))))

(declare-fun bm!633368 () Bool)

(assert (=> bm!633368 (= call!633371 call!633372)))

(declare-fun bm!633369 () Bool)

(assert (=> bm!633369 (= call!633373 call!633375)))

(declare-fun bm!633370 () Bool)

(declare-fun $colon$colon!2453 (List!67055 Regex!17170) List!67055)

(assert (=> bm!633370 (= call!633372 ($colon$colon!2453 (exprs!6666 (Context!12333 (t!380798 (exprs!6666 lt!2481411)))) (ite (or c!1293887 c!1293890) (regTwo!34852 (h!73379 (exprs!6666 lt!2481411))) (h!73379 (exprs!6666 lt!2481411)))))))

(declare-fun d!2173581 () Bool)

(declare-fun c!1293889 () Bool)

(assert (=> d!2173581 (= c!1293889 (and (is-ElementMatch!17170 (h!73379 (exprs!6666 lt!2481411))) (= (c!1293805 (h!73379 (exprs!6666 lt!2481411))) (h!73380 s!7408))))))

(declare-fun e!4195166 () (Set Context!12332))

(assert (=> d!2173581 (= (derivationStepZipperDown!1888 (h!73379 (exprs!6666 lt!2481411)) (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (h!73380 s!7408)) e!4195166)))

(declare-fun b!6980195 () Bool)

(assert (=> b!6980195 (= e!4195166 e!4195165)))

(assert (=> b!6980195 (= c!1293888 (is-Union!17170 (h!73379 (exprs!6666 lt!2481411))))))

(declare-fun b!6980196 () Bool)

(assert (=> b!6980196 (= e!4195166 (set.insert (Context!12333 (t!380798 (exprs!6666 lt!2481411))) (as set.empty (Set Context!12332))))))

(declare-fun b!6980197 () Bool)

(assert (=> b!6980197 (= e!4195167 call!633373)))

(assert (= (and d!2173581 c!1293889) b!6980196))

(assert (= (and d!2173581 (not c!1293889)) b!6980195))

(assert (= (and b!6980195 c!1293888) b!6980193))

(assert (= (and b!6980195 (not c!1293888)) b!6980187))

(assert (= (and b!6980187 res!2846396) b!6980194))

(assert (= (and b!6980187 c!1293887) b!6980189))

(assert (= (and b!6980187 (not c!1293887)) b!6980191))

(assert (= (and b!6980191 c!1293890) b!6980192))

(assert (= (and b!6980191 (not c!1293890)) b!6980190))

(assert (= (and b!6980190 c!1293886) b!6980197))

(assert (= (and b!6980190 (not c!1293886)) b!6980188))

(assert (= (or b!6980192 b!6980197) bm!633368))

(assert (= (or b!6980192 b!6980197) bm!633369))

(assert (= (or b!6980189 bm!633369) bm!633367))

(assert (= (or b!6980189 bm!633368) bm!633370))

(assert (= (or b!6980193 bm!633367) bm!633365))

(assert (= (or b!6980193 b!6980189) bm!633366))

(declare-fun m!7666488 () Bool)

(assert (=> bm!633366 m!7666488))

(declare-fun m!7666490 () Bool)

(assert (=> b!6980194 m!7666490))

(declare-fun m!7666492 () Bool)

(assert (=> b!6980196 m!7666492))

(declare-fun m!7666494 () Bool)

(assert (=> bm!633370 m!7666494))

(declare-fun m!7666496 () Bool)

(assert (=> bm!633365 m!7666496))

(assert (=> bm!633330 d!2173581))

(declare-fun d!2173583 () Bool)

(declare-fun e!4195176 () Bool)

(assert (=> d!2173583 e!4195176))

(declare-fun res!2846399 () Bool)

(assert (=> d!2173583 (=> (not res!2846399) (not e!4195176))))

(declare-fun a!12604 () Context!12332)

(assert (=> d!2173583 (= res!2846399 (= lt!2481419 (dynLambda!26737 lambda!398963 a!12604)))))

(declare-fun e!4195175 () Bool)

(assert (=> d!2173583 (and (inv!85785 a!12604) e!4195175)))

(assert (=> d!2173583 (= (choose!52021 z1!570 lambda!398963 lt!2481419) a!12604)))

(declare-fun b!6980203 () Bool)

(declare-fun tp!1928113 () Bool)

(assert (=> b!6980203 (= e!4195175 tp!1928113)))

(declare-fun b!6980204 () Bool)

(assert (=> b!6980204 (= e!4195176 (set.member a!12604 z1!570))))

(assert (= d!2173583 b!6980203))

(assert (= (and d!2173583 res!2846399) b!6980204))

(declare-fun b_lambda!261521 () Bool)

(assert (=> (not b_lambda!261521) (not d!2173583)))

(declare-fun m!7666498 () Bool)

(assert (=> d!2173583 m!7666498))

(declare-fun m!7666500 () Bool)

(assert (=> d!2173583 m!7666500))

(declare-fun m!7666502 () Bool)

(assert (=> b!6980204 m!7666502))

(assert (=> d!2173503 d!2173583))

(declare-fun d!2173585 () Bool)

(declare-fun choose!52029 ((Set Context!12332) Int) (Set Context!12332))

(assert (=> d!2173585 (= (map!15421 z1!570 lambda!398963) (choose!52029 z1!570 lambda!398963))))

(declare-fun bs!1860705 () Bool)

(assert (= bs!1860705 d!2173585))

(declare-fun m!7666504 () Bool)

(assert (=> bs!1860705 m!7666504))

(assert (=> d!2173503 d!2173585))

(declare-fun d!2173587 () Bool)

(declare-fun c!1293893 () Bool)

(assert (=> d!2173587 (= c!1293893 (is-Nil!66931 lt!2481505))))

(declare-fun e!4195179 () (Set Regex!17170))

(assert (=> d!2173587 (= (content!13194 lt!2481505) e!4195179)))

(declare-fun b!6980209 () Bool)

(assert (=> b!6980209 (= e!4195179 (as set.empty (Set Regex!17170)))))

(declare-fun b!6980210 () Bool)

(assert (=> b!6980210 (= e!4195179 (set.union (set.insert (h!73379 lt!2481505) (as set.empty (Set Regex!17170))) (content!13194 (t!380798 lt!2481505))))))

(assert (= (and d!2173587 c!1293893) b!6980209))

(assert (= (and d!2173587 (not c!1293893)) b!6980210))

(declare-fun m!7666506 () Bool)

(assert (=> b!6980210 m!7666506))

(declare-fun m!7666508 () Bool)

(assert (=> b!6980210 m!7666508))

(assert (=> d!2173513 d!2173587))

(declare-fun d!2173589 () Bool)

(declare-fun c!1293894 () Bool)

(assert (=> d!2173589 (= c!1293894 (is-Nil!66931 lt!2481418))))

(declare-fun e!4195180 () (Set Regex!17170))

(assert (=> d!2173589 (= (content!13194 lt!2481418) e!4195180)))

(declare-fun b!6980211 () Bool)

(assert (=> b!6980211 (= e!4195180 (as set.empty (Set Regex!17170)))))

(declare-fun b!6980212 () Bool)

(assert (=> b!6980212 (= e!4195180 (set.union (set.insert (h!73379 lt!2481418) (as set.empty (Set Regex!17170))) (content!13194 (t!380798 lt!2481418))))))

(assert (= (and d!2173589 c!1293894) b!6980211))

(assert (= (and d!2173589 (not c!1293894)) b!6980212))

(declare-fun m!7666510 () Bool)

(assert (=> b!6980212 m!7666510))

(declare-fun m!7666512 () Bool)

(assert (=> b!6980212 m!7666512))

(assert (=> d!2173513 d!2173589))

(declare-fun d!2173591 () Bool)

(declare-fun c!1293895 () Bool)

(assert (=> d!2173591 (= c!1293895 (is-Nil!66931 (exprs!6666 ct2!306)))))

(declare-fun e!4195181 () (Set Regex!17170))

(assert (=> d!2173591 (= (content!13194 (exprs!6666 ct2!306)) e!4195181)))

(declare-fun b!6980213 () Bool)

(assert (=> b!6980213 (= e!4195181 (as set.empty (Set Regex!17170)))))

(declare-fun b!6980214 () Bool)

(assert (=> b!6980214 (= e!4195181 (set.union (set.insert (h!73379 (exprs!6666 ct2!306)) (as set.empty (Set Regex!17170))) (content!13194 (t!380798 (exprs!6666 ct2!306)))))))

(assert (= (and d!2173591 c!1293895) b!6980213))

(assert (= (and d!2173591 (not c!1293895)) b!6980214))

(declare-fun m!7666514 () Bool)

(assert (=> b!6980214 m!7666514))

(declare-fun m!7666516 () Bool)

(assert (=> b!6980214 m!7666516))

(assert (=> d!2173513 d!2173591))

(declare-fun d!2173593 () Bool)

(declare-fun res!2846404 () Bool)

(declare-fun e!4195186 () Bool)

(assert (=> d!2173593 (=> res!2846404 e!4195186)))

(assert (=> d!2173593 (= res!2846404 (is-Nil!66931 (++!15115 lt!2481418 (exprs!6666 ct2!306))))))

(assert (=> d!2173593 (= (forall!16054 (++!15115 lt!2481418 (exprs!6666 ct2!306)) lambda!398964) e!4195186)))

(declare-fun b!6980219 () Bool)

(declare-fun e!4195187 () Bool)

(assert (=> b!6980219 (= e!4195186 e!4195187)))

(declare-fun res!2846405 () Bool)

(assert (=> b!6980219 (=> (not res!2846405) (not e!4195187))))

(declare-fun dynLambda!26742 (Int Regex!17170) Bool)

(assert (=> b!6980219 (= res!2846405 (dynLambda!26742 lambda!398964 (h!73379 (++!15115 lt!2481418 (exprs!6666 ct2!306)))))))

(declare-fun b!6980220 () Bool)

(assert (=> b!6980220 (= e!4195187 (forall!16054 (t!380798 (++!15115 lt!2481418 (exprs!6666 ct2!306))) lambda!398964))))

(assert (= (and d!2173593 (not res!2846404)) b!6980219))

(assert (= (and b!6980219 res!2846405) b!6980220))

(declare-fun b_lambda!261523 () Bool)

(assert (=> (not b_lambda!261523) (not b!6980219)))

(declare-fun m!7666518 () Bool)

(assert (=> b!6980219 m!7666518))

(declare-fun m!7666520 () Bool)

(assert (=> b!6980220 m!7666520))

(assert (=> d!2173515 d!2173593))

(assert (=> d!2173515 d!2173513))

(declare-fun d!2173595 () Bool)

(assert (=> d!2173595 (forall!16054 (++!15115 lt!2481418 (exprs!6666 ct2!306)) lambda!398964)))

(assert (=> d!2173595 true))

(declare-fun _$78!471 () Unit!160990)

(assert (=> d!2173595 (= (choose!52016 lt!2481418 (exprs!6666 ct2!306) lambda!398964) _$78!471)))

(declare-fun bs!1860706 () Bool)

(assert (= bs!1860706 d!2173595))

(assert (=> bs!1860706 m!7666110))

(assert (=> bs!1860706 m!7666110))

(assert (=> bs!1860706 m!7666336))

(assert (=> d!2173515 d!2173595))

(declare-fun d!2173597 () Bool)

(declare-fun res!2846406 () Bool)

(declare-fun e!4195188 () Bool)

(assert (=> d!2173597 (=> res!2846406 e!4195188)))

(assert (=> d!2173597 (= res!2846406 (is-Nil!66931 lt!2481418))))

(assert (=> d!2173597 (= (forall!16054 lt!2481418 lambda!398964) e!4195188)))

(declare-fun b!6980221 () Bool)

(declare-fun e!4195189 () Bool)

(assert (=> b!6980221 (= e!4195188 e!4195189)))

(declare-fun res!2846407 () Bool)

(assert (=> b!6980221 (=> (not res!2846407) (not e!4195189))))

(assert (=> b!6980221 (= res!2846407 (dynLambda!26742 lambda!398964 (h!73379 lt!2481418)))))

(declare-fun b!6980222 () Bool)

(assert (=> b!6980222 (= e!4195189 (forall!16054 (t!380798 lt!2481418) lambda!398964))))

(assert (= (and d!2173597 (not res!2846406)) b!6980221))

(assert (= (and b!6980221 res!2846407) b!6980222))

(declare-fun b_lambda!261525 () Bool)

(assert (=> (not b_lambda!261525) (not b!6980221)))

(declare-fun m!7666522 () Bool)

(assert (=> b!6980221 m!7666522))

(declare-fun m!7666524 () Bool)

(assert (=> b!6980222 m!7666524))

(assert (=> d!2173515 d!2173597))

(declare-fun d!2173599 () Bool)

(declare-fun c!1293896 () Bool)

(assert (=> d!2173599 (= c!1293896 (isEmpty!39068 s!7408))))

(declare-fun e!4195190 () Bool)

(assert (=> d!2173599 (= (matchZipper!2710 (set.insert lt!2481486 (as set.empty (Set Context!12332))) s!7408) e!4195190)))

(declare-fun b!6980223 () Bool)

(assert (=> b!6980223 (= e!4195190 (nullableZipper!2399 (set.insert lt!2481486 (as set.empty (Set Context!12332)))))))

(declare-fun b!6980224 () Bool)

(assert (=> b!6980224 (= e!4195190 (matchZipper!2710 (derivationStepZipper!2650 (set.insert lt!2481486 (as set.empty (Set Context!12332))) (head!14069 s!7408)) (tail!13144 s!7408)))))

(assert (= (and d!2173599 c!1293896) b!6980223))

(assert (= (and d!2173599 (not c!1293896)) b!6980224))

(assert (=> d!2173599 m!7666218))

(assert (=> b!6980223 m!7666350))

(declare-fun m!7666526 () Bool)

(assert (=> b!6980223 m!7666526))

(assert (=> b!6980224 m!7666222))

(assert (=> b!6980224 m!7666350))

(assert (=> b!6980224 m!7666222))

(declare-fun m!7666528 () Bool)

(assert (=> b!6980224 m!7666528))

(assert (=> b!6980224 m!7666226))

(assert (=> b!6980224 m!7666528))

(assert (=> b!6980224 m!7666226))

(declare-fun m!7666530 () Bool)

(assert (=> b!6980224 m!7666530))

(assert (=> bs!1860681 d!2173599))

(declare-fun d!2173601 () Bool)

(declare-fun res!2846412 () Bool)

(declare-fun e!4195195 () Bool)

(assert (=> d!2173601 (=> res!2846412 e!4195195)))

(assert (=> d!2173601 (= res!2846412 (is-Nil!66933 lt!2481416))))

(assert (=> d!2173601 (= (forall!16055 lt!2481416 lambda!399012) e!4195195)))

(declare-fun b!6980229 () Bool)

(declare-fun e!4195196 () Bool)

(assert (=> b!6980229 (= e!4195195 e!4195196)))

(declare-fun res!2846413 () Bool)

(assert (=> b!6980229 (=> (not res!2846413) (not e!4195196))))

(assert (=> b!6980229 (= res!2846413 (dynLambda!26736 lambda!399012 (h!73381 lt!2481416)))))

(declare-fun b!6980230 () Bool)

(assert (=> b!6980230 (= e!4195196 (forall!16055 (t!380800 lt!2481416) lambda!399012))))

(assert (= (and d!2173601 (not res!2846412)) b!6980229))

(assert (= (and b!6980229 res!2846413) b!6980230))

(declare-fun b_lambda!261527 () Bool)

(assert (=> (not b_lambda!261527) (not b!6980229)))

(declare-fun m!7666532 () Bool)

(assert (=> b!6980229 m!7666532))

(declare-fun m!7666534 () Bool)

(assert (=> b!6980230 m!7666534))

(assert (=> d!2173477 d!2173601))

(declare-fun b!6980231 () Bool)

(declare-fun e!4195201 () Bool)

(declare-fun call!633378 () Bool)

(assert (=> b!6980231 (= e!4195201 call!633378)))

(declare-fun b!6980232 () Bool)

(declare-fun e!4195203 () Bool)

(declare-fun call!633377 () Bool)

(assert (=> b!6980232 (= e!4195203 call!633377)))

(declare-fun c!1293898 () Bool)

(declare-fun bm!633371 () Bool)

(declare-fun c!1293897 () Bool)

(assert (=> bm!633371 (= call!633378 (validRegex!8834 (ite c!1293897 (reg!17499 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))) (ite c!1293898 (regOne!34853 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))) (regOne!34852 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420))))))))))))

(declare-fun bm!633372 () Bool)

(declare-fun call!633376 () Bool)

(assert (=> bm!633372 (= call!633376 call!633378)))

(declare-fun b!6980233 () Bool)

(declare-fun e!4195199 () Bool)

(assert (=> b!6980233 (= e!4195199 call!633377)))

(declare-fun b!6980234 () Bool)

(declare-fun e!4195202 () Bool)

(assert (=> b!6980234 (= e!4195202 e!4195199)))

(declare-fun res!2846416 () Bool)

(assert (=> b!6980234 (=> (not res!2846416) (not e!4195199))))

(assert (=> b!6980234 (= res!2846416 call!633376)))

(declare-fun b!6980235 () Bool)

(declare-fun e!4195198 () Bool)

(assert (=> b!6980235 (= e!4195198 e!4195201)))

(declare-fun res!2846417 () Bool)

(assert (=> b!6980235 (= res!2846417 (not (nullable!6930 (reg!17499 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))))

(assert (=> b!6980235 (=> (not res!2846417) (not e!4195201))))

(declare-fun b!6980236 () Bool)

(declare-fun e!4195200 () Bool)

(assert (=> b!6980236 (= e!4195198 e!4195200)))

(assert (=> b!6980236 (= c!1293898 (is-Union!17170 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))

(declare-fun b!6980237 () Bool)

(declare-fun e!4195197 () Bool)

(assert (=> b!6980237 (= e!4195197 e!4195198)))

(assert (=> b!6980237 (= c!1293897 (is-Star!17170 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))

(declare-fun d!2173603 () Bool)

(declare-fun res!2846418 () Bool)

(assert (=> d!2173603 (=> res!2846418 e!4195197)))

(assert (=> d!2173603 (= res!2846418 (is-ElementMatch!17170 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))

(assert (=> d!2173603 (= (validRegex!8834 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))) e!4195197)))

(declare-fun bm!633373 () Bool)

(assert (=> bm!633373 (= call!633377 (validRegex!8834 (ite c!1293898 (regTwo!34853 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))) (regTwo!34852 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420)))))))))))

(declare-fun b!6980238 () Bool)

(declare-fun res!2846414 () Bool)

(assert (=> b!6980238 (=> (not res!2846414) (not e!4195203))))

(assert (=> b!6980238 (= res!2846414 call!633376)))

(assert (=> b!6980238 (= e!4195200 e!4195203)))

(declare-fun b!6980239 () Bool)

(declare-fun res!2846415 () Bool)

(assert (=> b!6980239 (=> res!2846415 e!4195202)))

(assert (=> b!6980239 (= res!2846415 (not (is-Concat!26015 (ite c!1293844 (reg!17499 (h!73379 (exprs!6666 lt!2481420))) (ite c!1293845 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420))))))))))

(assert (=> b!6980239 (= e!4195200 e!4195202)))

(assert (= (and d!2173603 (not res!2846418)) b!6980237))

(assert (= (and b!6980237 c!1293897) b!6980235))

(assert (= (and b!6980237 (not c!1293897)) b!6980236))

(assert (= (and b!6980235 res!2846417) b!6980231))

(assert (= (and b!6980236 c!1293898) b!6980238))

(assert (= (and b!6980236 (not c!1293898)) b!6980239))

(assert (= (and b!6980238 res!2846414) b!6980232))

(assert (= (and b!6980239 (not res!2846415)) b!6980234))

(assert (= (and b!6980234 res!2846416) b!6980233))

(assert (= (or b!6980232 b!6980233) bm!633373))

(assert (= (or b!6980238 b!6980234) bm!633372))

(assert (= (or b!6980231 bm!633372) bm!633371))

(declare-fun m!7666536 () Bool)

(assert (=> bm!633371 m!7666536))

(declare-fun m!7666538 () Bool)

(assert (=> b!6980235 m!7666538))

(declare-fun m!7666540 () Bool)

(assert (=> bm!633373 m!7666540))

(assert (=> bm!633337 d!2173603))

(declare-fun d!2173605 () Bool)

(declare-fun res!2846419 () Bool)

(declare-fun e!4195204 () Bool)

(assert (=> d!2173605 (=> res!2846419 e!4195204)))

(assert (=> d!2173605 (= res!2846419 (is-Nil!66931 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306))))))

(assert (=> d!2173605 (= (forall!16054 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)) lambda!398964) e!4195204)))

(declare-fun b!6980240 () Bool)

(declare-fun e!4195205 () Bool)

(assert (=> b!6980240 (= e!4195204 e!4195205)))

(declare-fun res!2846420 () Bool)

(assert (=> b!6980240 (=> (not res!2846420) (not e!4195205))))

(assert (=> b!6980240 (= res!2846420 (dynLambda!26742 lambda!398964 (h!73379 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)))))))

(declare-fun b!6980241 () Bool)

(assert (=> b!6980241 (= e!4195205 (forall!16054 (t!380798 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306))) lambda!398964))))

(assert (= (and d!2173605 (not res!2846419)) b!6980240))

(assert (= (and b!6980240 res!2846420) b!6980241))

(declare-fun b_lambda!261529 () Bool)

(assert (=> (not b_lambda!261529) (not b!6980240)))

(declare-fun m!7666542 () Bool)

(assert (=> b!6980240 m!7666542))

(declare-fun m!7666544 () Bool)

(assert (=> b!6980241 m!7666544))

(assert (=> d!2173457 d!2173605))

(assert (=> d!2173457 d!2173499))

(declare-fun d!2173607 () Bool)

(assert (=> d!2173607 (forall!16054 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)) lambda!398964)))

(assert (=> d!2173607 true))

(declare-fun _$78!472 () Unit!160990)

(assert (=> d!2173607 (= (choose!52016 (exprs!6666 lt!2481420) (exprs!6666 ct2!306) lambda!398964) _$78!472)))

(declare-fun bs!1860707 () Bool)

(assert (= bs!1860707 d!2173607))

(assert (=> bs!1860707 m!7666120))

(assert (=> bs!1860707 m!7666120))

(assert (=> bs!1860707 m!7666188))

(assert (=> d!2173457 d!2173607))

(declare-fun d!2173609 () Bool)

(declare-fun res!2846421 () Bool)

(declare-fun e!4195206 () Bool)

(assert (=> d!2173609 (=> res!2846421 e!4195206)))

(assert (=> d!2173609 (= res!2846421 (is-Nil!66931 (exprs!6666 lt!2481420)))))

(assert (=> d!2173609 (= (forall!16054 (exprs!6666 lt!2481420) lambda!398964) e!4195206)))

(declare-fun b!6980242 () Bool)

(declare-fun e!4195207 () Bool)

(assert (=> b!6980242 (= e!4195206 e!4195207)))

(declare-fun res!2846422 () Bool)

(assert (=> b!6980242 (=> (not res!2846422) (not e!4195207))))

(assert (=> b!6980242 (= res!2846422 (dynLambda!26742 lambda!398964 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun b!6980243 () Bool)

(assert (=> b!6980243 (= e!4195207 (forall!16054 (t!380798 (exprs!6666 lt!2481420)) lambda!398964))))

(assert (= (and d!2173609 (not res!2846421)) b!6980242))

(assert (= (and b!6980242 res!2846422) b!6980243))

(declare-fun b_lambda!261531 () Bool)

(assert (=> (not b_lambda!261531) (not b!6980242)))

(declare-fun m!7666546 () Bool)

(assert (=> b!6980242 m!7666546))

(declare-fun m!7666548 () Bool)

(assert (=> b!6980243 m!7666548))

(assert (=> d!2173457 d!2173609))

(declare-fun d!2173611 () Bool)

(assert (=> d!2173611 true))

(declare-fun setRes!47514 () Bool)

(assert (=> d!2173611 setRes!47514))

(declare-fun condSetEmpty!47514 () Bool)

(declare-fun res!2846425 () (Set Context!12332))

(assert (=> d!2173611 (= condSetEmpty!47514 (= res!2846425 (as set.empty (Set Context!12332))))))

(assert (=> d!2173611 (= (choose!52018 lt!2481410 lambda!398965) res!2846425)))

(declare-fun setIsEmpty!47514 () Bool)

(assert (=> setIsEmpty!47514 setRes!47514))

(declare-fun setNonEmpty!47514 () Bool)

(declare-fun setElem!47514 () Context!12332)

(declare-fun tp!1928118 () Bool)

(declare-fun e!4195210 () Bool)

(assert (=> setNonEmpty!47514 (= setRes!47514 (and tp!1928118 (inv!85785 setElem!47514) e!4195210))))

(declare-fun setRest!47514 () (Set Context!12332))

(assert (=> setNonEmpty!47514 (= res!2846425 (set.union (set.insert setElem!47514 (as set.empty (Set Context!12332))) setRest!47514))))

(declare-fun b!6980246 () Bool)

(declare-fun tp!1928119 () Bool)

(assert (=> b!6980246 (= e!4195210 tp!1928119)))

(assert (= (and d!2173611 condSetEmpty!47514) setIsEmpty!47514))

(assert (= (and d!2173611 (not condSetEmpty!47514)) setNonEmpty!47514))

(assert (= setNonEmpty!47514 b!6980246))

(declare-fun m!7666550 () Bool)

(assert (=> setNonEmpty!47514 m!7666550))

(assert (=> d!2173463 d!2173611))

(declare-fun bs!1860708 () Bool)

(declare-fun d!2173613 () Bool)

(assert (= bs!1860708 (and d!2173613 b!6979875)))

(declare-fun lambda!399031 () Int)

(assert (=> bs!1860708 (not (= lambda!399031 lambda!398962))))

(declare-fun bs!1860709 () Bool)

(assert (= bs!1860709 (and d!2173613 d!2173477)))

(assert (=> bs!1860709 (not (= lambda!399031 lambda!399012))))

(declare-fun bs!1860710 () Bool)

(assert (= bs!1860710 (and d!2173613 d!2173491)))

(assert (=> bs!1860710 (not (= lambda!399031 lambda!399015))))

(declare-fun bs!1860711 () Bool)

(assert (= bs!1860711 (and d!2173613 d!2173555)))

(assert (=> bs!1860711 (= lambda!399031 lambda!399028)))

(assert (=> d!2173613 (= (nullableZipper!2399 lt!2481415) (exists!2927 lt!2481415 lambda!399031))))

(declare-fun bs!1860712 () Bool)

(assert (= bs!1860712 d!2173613))

(declare-fun m!7666552 () Bool)

(assert (=> bs!1860712 m!7666552))

(assert (=> b!6979972 d!2173613))

(declare-fun d!2173615 () Bool)

(declare-fun c!1293899 () Bool)

(assert (=> d!2173615 (= c!1293899 (isEmpty!39068 (tail!13144 s!7408)))))

(declare-fun e!4195211 () Bool)

(assert (=> d!2173615 (= (matchZipper!2710 (derivationStepZipper!2650 lt!2481415 (head!14069 s!7408)) (tail!13144 s!7408)) e!4195211)))

(declare-fun b!6980247 () Bool)

(assert (=> b!6980247 (= e!4195211 (nullableZipper!2399 (derivationStepZipper!2650 lt!2481415 (head!14069 s!7408))))))

(declare-fun b!6980248 () Bool)

(assert (=> b!6980248 (= e!4195211 (matchZipper!2710 (derivationStepZipper!2650 (derivationStepZipper!2650 lt!2481415 (head!14069 s!7408)) (head!14069 (tail!13144 s!7408))) (tail!13144 (tail!13144 s!7408))))))

(assert (= (and d!2173615 c!1293899) b!6980247))

(assert (= (and d!2173615 (not c!1293899)) b!6980248))

(assert (=> d!2173615 m!7666226))

(assert (=> d!2173615 m!7666450))

(assert (=> b!6980247 m!7666274))

(declare-fun m!7666554 () Bool)

(assert (=> b!6980247 m!7666554))

(assert (=> b!6980248 m!7666226))

(assert (=> b!6980248 m!7666454))

(assert (=> b!6980248 m!7666274))

(assert (=> b!6980248 m!7666454))

(declare-fun m!7666556 () Bool)

(assert (=> b!6980248 m!7666556))

(assert (=> b!6980248 m!7666226))

(assert (=> b!6980248 m!7666458))

(assert (=> b!6980248 m!7666556))

(assert (=> b!6980248 m!7666458))

(declare-fun m!7666558 () Bool)

(assert (=> b!6980248 m!7666558))

(assert (=> b!6979973 d!2173615))

(declare-fun bs!1860713 () Bool)

(declare-fun d!2173617 () Bool)

(assert (= bs!1860713 (and d!2173617 b!6979876)))

(declare-fun lambda!399032 () Int)

(assert (=> bs!1860713 (= (= (head!14069 s!7408) (h!73380 s!7408)) (= lambda!399032 lambda!398965))))

(declare-fun bs!1860714 () Bool)

(assert (= bs!1860714 (and d!2173617 d!2173455)))

(assert (=> bs!1860714 (= (= (head!14069 s!7408) (h!73380 s!7408)) (= lambda!399032 lambda!398992))))

(declare-fun bs!1860715 () Bool)

(assert (= bs!1860715 (and d!2173617 d!2173563)))

(assert (=> bs!1860715 (= lambda!399032 lambda!399029)))

(assert (=> d!2173617 true))

(assert (=> d!2173617 (= (derivationStepZipper!2650 lt!2481415 (head!14069 s!7408)) (flatMap!2156 lt!2481415 lambda!399032))))

(declare-fun bs!1860716 () Bool)

(assert (= bs!1860716 d!2173617))

(declare-fun m!7666560 () Bool)

(assert (=> bs!1860716 m!7666560))

(assert (=> b!6979973 d!2173617))

(assert (=> b!6979973 d!2173565))

(assert (=> b!6979973 d!2173567))

(declare-fun b!6980249 () Bool)

(declare-fun e!4195216 () Bool)

(declare-fun call!633381 () Bool)

(assert (=> b!6980249 (= e!4195216 call!633381)))

(declare-fun b!6980250 () Bool)

(declare-fun e!4195218 () Bool)

(declare-fun call!633380 () Bool)

(assert (=> b!6980250 (= e!4195218 call!633380)))

(declare-fun bm!633374 () Bool)

(declare-fun c!1293901 () Bool)

(declare-fun c!1293900 () Bool)

(assert (=> bm!633374 (= call!633381 (validRegex!8834 (ite c!1293900 (reg!17499 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))) (ite c!1293901 (regOne!34853 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))) (regOne!34852 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420)))))))))))

(declare-fun bm!633375 () Bool)

(declare-fun call!633379 () Bool)

(assert (=> bm!633375 (= call!633379 call!633381)))

(declare-fun b!6980251 () Bool)

(declare-fun e!4195214 () Bool)

(assert (=> b!6980251 (= e!4195214 call!633380)))

(declare-fun b!6980252 () Bool)

(declare-fun e!4195217 () Bool)

(assert (=> b!6980252 (= e!4195217 e!4195214)))

(declare-fun res!2846428 () Bool)

(assert (=> b!6980252 (=> (not res!2846428) (not e!4195214))))

(assert (=> b!6980252 (= res!2846428 call!633379)))

(declare-fun b!6980253 () Bool)

(declare-fun e!4195213 () Bool)

(assert (=> b!6980253 (= e!4195213 e!4195216)))

(declare-fun res!2846429 () Bool)

(assert (=> b!6980253 (= res!2846429 (not (nullable!6930 (reg!17499 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))))

(assert (=> b!6980253 (=> (not res!2846429) (not e!4195216))))

(declare-fun b!6980254 () Bool)

(declare-fun e!4195215 () Bool)

(assert (=> b!6980254 (= e!4195213 e!4195215)))

(assert (=> b!6980254 (= c!1293901 (is-Union!17170 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(declare-fun b!6980255 () Bool)

(declare-fun e!4195212 () Bool)

(assert (=> b!6980255 (= e!4195212 e!4195213)))

(assert (=> b!6980255 (= c!1293900 (is-Star!17170 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(declare-fun d!2173619 () Bool)

(declare-fun res!2846430 () Bool)

(assert (=> d!2173619 (=> res!2846430 e!4195212)))

(assert (=> d!2173619 (= res!2846430 (is-ElementMatch!17170 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(assert (=> d!2173619 (= (validRegex!8834 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))) e!4195212)))

(declare-fun bm!633376 () Bool)

(assert (=> bm!633376 (= call!633380 (validRegex!8834 (ite c!1293901 (regTwo!34853 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))) (regTwo!34852 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))))

(declare-fun b!6980256 () Bool)

(declare-fun res!2846426 () Bool)

(assert (=> b!6980256 (=> (not res!2846426) (not e!4195218))))

(assert (=> b!6980256 (= res!2846426 call!633379)))

(assert (=> b!6980256 (= e!4195215 e!4195218)))

(declare-fun b!6980257 () Bool)

(declare-fun res!2846427 () Bool)

(assert (=> b!6980257 (=> res!2846427 e!4195217)))

(assert (=> b!6980257 (= res!2846427 (not (is-Concat!26015 (ite c!1293845 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420)))))))))

(assert (=> b!6980257 (= e!4195215 e!4195217)))

(assert (= (and d!2173619 (not res!2846430)) b!6980255))

(assert (= (and b!6980255 c!1293900) b!6980253))

(assert (= (and b!6980255 (not c!1293900)) b!6980254))

(assert (= (and b!6980253 res!2846429) b!6980249))

(assert (= (and b!6980254 c!1293901) b!6980256))

(assert (= (and b!6980254 (not c!1293901)) b!6980257))

(assert (= (and b!6980256 res!2846426) b!6980250))

(assert (= (and b!6980257 (not res!2846427)) b!6980252))

(assert (= (and b!6980252 res!2846428) b!6980251))

(assert (= (or b!6980250 b!6980251) bm!633376))

(assert (= (or b!6980256 b!6980252) bm!633375))

(assert (= (or b!6980249 bm!633375) bm!633374))

(declare-fun m!7666562 () Bool)

(assert (=> bm!633374 m!7666562))

(declare-fun m!7666564 () Bool)

(assert (=> b!6980253 m!7666564))

(declare-fun m!7666566 () Bool)

(assert (=> bm!633376 m!7666566))

(assert (=> bm!633339 d!2173619))

(declare-fun d!2173621 () Bool)

(assert (=> d!2173621 (= (flatMap!2156 lt!2481410 lambda!398992) (choose!52018 lt!2481410 lambda!398992))))

(declare-fun bs!1860717 () Bool)

(assert (= bs!1860717 d!2173621))

(declare-fun m!7666568 () Bool)

(assert (=> bs!1860717 m!7666568))

(assert (=> d!2173455 d!2173621))

(declare-fun b!6980261 () Bool)

(declare-fun e!4195219 () Bool)

(declare-fun lt!2481535 () List!67055)

(assert (=> b!6980261 (= e!4195219 (or (not (= (exprs!6666 ct2!306) Nil!66931)) (= lt!2481535 (t!380798 (exprs!6666 lt!2481420)))))))

(declare-fun d!2173623 () Bool)

(assert (=> d!2173623 e!4195219))

(declare-fun res!2846431 () Bool)

(assert (=> d!2173623 (=> (not res!2846431) (not e!4195219))))

(assert (=> d!2173623 (= res!2846431 (= (content!13194 lt!2481535) (set.union (content!13194 (t!380798 (exprs!6666 lt!2481420))) (content!13194 (exprs!6666 ct2!306)))))))

(declare-fun e!4195220 () List!67055)

(assert (=> d!2173623 (= lt!2481535 e!4195220)))

(declare-fun c!1293902 () Bool)

(assert (=> d!2173623 (= c!1293902 (is-Nil!66931 (t!380798 (exprs!6666 lt!2481420))))))

(assert (=> d!2173623 (= (++!15115 (t!380798 (exprs!6666 lt!2481420)) (exprs!6666 ct2!306)) lt!2481535)))

(declare-fun b!6980260 () Bool)

(declare-fun res!2846432 () Bool)

(assert (=> b!6980260 (=> (not res!2846432) (not e!4195219))))

(assert (=> b!6980260 (= res!2846432 (= (size!40870 lt!2481535) (+ (size!40870 (t!380798 (exprs!6666 lt!2481420))) (size!40870 (exprs!6666 ct2!306)))))))

(declare-fun b!6980258 () Bool)

(assert (=> b!6980258 (= e!4195220 (exprs!6666 ct2!306))))

(declare-fun b!6980259 () Bool)

(assert (=> b!6980259 (= e!4195220 (Cons!66931 (h!73379 (t!380798 (exprs!6666 lt!2481420))) (++!15115 (t!380798 (t!380798 (exprs!6666 lt!2481420))) (exprs!6666 ct2!306))))))

(assert (= (and d!2173623 c!1293902) b!6980258))

(assert (= (and d!2173623 (not c!1293902)) b!6980259))

(assert (= (and d!2173623 res!2846431) b!6980260))

(assert (= (and b!6980260 res!2846432) b!6980261))

(declare-fun m!7666570 () Bool)

(assert (=> d!2173623 m!7666570))

(declare-fun m!7666572 () Bool)

(assert (=> d!2173623 m!7666572))

(assert (=> d!2173623 m!7666290))

(declare-fun m!7666574 () Bool)

(assert (=> b!6980260 m!7666574))

(declare-fun m!7666576 () Bool)

(assert (=> b!6980260 m!7666576))

(assert (=> b!6980260 m!7666296))

(declare-fun m!7666578 () Bool)

(assert (=> b!6980259 m!7666578))

(assert (=> b!6979988 d!2173623))

(declare-fun d!2173625 () Bool)

(declare-fun res!2846433 () Bool)

(declare-fun e!4195221 () Bool)

(assert (=> d!2173625 (=> res!2846433 e!4195221)))

(assert (=> d!2173625 (= res!2846433 (is-Nil!66931 (exprs!6666 ct2!306)))))

(assert (=> d!2173625 (= (forall!16054 (exprs!6666 ct2!306) lambda!399008) e!4195221)))

(declare-fun b!6980262 () Bool)

(declare-fun e!4195222 () Bool)

(assert (=> b!6980262 (= e!4195221 e!4195222)))

(declare-fun res!2846434 () Bool)

(assert (=> b!6980262 (=> (not res!2846434) (not e!4195222))))

(assert (=> b!6980262 (= res!2846434 (dynLambda!26742 lambda!399008 (h!73379 (exprs!6666 ct2!306))))))

(declare-fun b!6980263 () Bool)

(assert (=> b!6980263 (= e!4195222 (forall!16054 (t!380798 (exprs!6666 ct2!306)) lambda!399008))))

(assert (= (and d!2173625 (not res!2846433)) b!6980262))

(assert (= (and b!6980262 res!2846434) b!6980263))

(declare-fun b_lambda!261533 () Bool)

(assert (=> (not b_lambda!261533) (not b!6980262)))

(declare-fun m!7666580 () Bool)

(assert (=> b!6980262 m!7666580))

(declare-fun m!7666582 () Bool)

(assert (=> b!6980263 m!7666582))

(assert (=> d!2173473 d!2173625))

(declare-fun d!2173627 () Bool)

(declare-fun lt!2481538 () Int)

(assert (=> d!2173627 (>= lt!2481538 0)))

(declare-fun e!4195225 () Int)

(assert (=> d!2173627 (= lt!2481538 e!4195225)))

(declare-fun c!1293905 () Bool)

(assert (=> d!2173627 (= c!1293905 (is-Nil!66931 lt!2481498))))

(assert (=> d!2173627 (= (size!40870 lt!2481498) lt!2481538)))

(declare-fun b!6980268 () Bool)

(assert (=> b!6980268 (= e!4195225 0)))

(declare-fun b!6980269 () Bool)

(assert (=> b!6980269 (= e!4195225 (+ 1 (size!40870 (t!380798 lt!2481498))))))

(assert (= (and d!2173627 c!1293905) b!6980268))

(assert (= (and d!2173627 (not c!1293905)) b!6980269))

(declare-fun m!7666584 () Bool)

(assert (=> b!6980269 m!7666584))

(assert (=> b!6979989 d!2173627))

(declare-fun d!2173629 () Bool)

(declare-fun lt!2481539 () Int)

(assert (=> d!2173629 (>= lt!2481539 0)))

(declare-fun e!4195226 () Int)

(assert (=> d!2173629 (= lt!2481539 e!4195226)))

(declare-fun c!1293906 () Bool)

(assert (=> d!2173629 (= c!1293906 (is-Nil!66931 (exprs!6666 lt!2481420)))))

(assert (=> d!2173629 (= (size!40870 (exprs!6666 lt!2481420)) lt!2481539)))

(declare-fun b!6980270 () Bool)

(assert (=> b!6980270 (= e!4195226 0)))

(declare-fun b!6980271 () Bool)

(assert (=> b!6980271 (= e!4195226 (+ 1 (size!40870 (t!380798 (exprs!6666 lt!2481420)))))))

(assert (= (and d!2173629 c!1293906) b!6980270))

(assert (= (and d!2173629 (not c!1293906)) b!6980271))

(assert (=> b!6980271 m!7666576))

(assert (=> b!6979989 d!2173629))

(declare-fun d!2173631 () Bool)

(declare-fun lt!2481540 () Int)

(assert (=> d!2173631 (>= lt!2481540 0)))

(declare-fun e!4195227 () Int)

(assert (=> d!2173631 (= lt!2481540 e!4195227)))

(declare-fun c!1293907 () Bool)

(assert (=> d!2173631 (= c!1293907 (is-Nil!66931 (exprs!6666 ct2!306)))))

(assert (=> d!2173631 (= (size!40870 (exprs!6666 ct2!306)) lt!2481540)))

(declare-fun b!6980272 () Bool)

(assert (=> b!6980272 (= e!4195227 0)))

(declare-fun b!6980273 () Bool)

(assert (=> b!6980273 (= e!4195227 (+ 1 (size!40870 (t!380798 (exprs!6666 ct2!306)))))))

(assert (= (and d!2173631 c!1293907) b!6980272))

(assert (= (and d!2173631 (not c!1293907)) b!6980273))

(declare-fun m!7666586 () Bool)

(assert (=> b!6980273 m!7666586))

(assert (=> b!6979989 d!2173631))

(declare-fun d!2173633 () Bool)

(declare-fun c!1293908 () Bool)

(assert (=> d!2173633 (= c!1293908 (is-Nil!66931 lt!2481498))))

(declare-fun e!4195228 () (Set Regex!17170))

(assert (=> d!2173633 (= (content!13194 lt!2481498) e!4195228)))

(declare-fun b!6980274 () Bool)

(assert (=> b!6980274 (= e!4195228 (as set.empty (Set Regex!17170)))))

(declare-fun b!6980275 () Bool)

(assert (=> b!6980275 (= e!4195228 (set.union (set.insert (h!73379 lt!2481498) (as set.empty (Set Regex!17170))) (content!13194 (t!380798 lt!2481498))))))

(assert (= (and d!2173633 c!1293908) b!6980274))

(assert (= (and d!2173633 (not c!1293908)) b!6980275))

(declare-fun m!7666588 () Bool)

(assert (=> b!6980275 m!7666588))

(declare-fun m!7666590 () Bool)

(assert (=> b!6980275 m!7666590))

(assert (=> d!2173499 d!2173633))

(declare-fun d!2173635 () Bool)

(declare-fun c!1293909 () Bool)

(assert (=> d!2173635 (= c!1293909 (is-Nil!66931 (exprs!6666 lt!2481420)))))

(declare-fun e!4195229 () (Set Regex!17170))

(assert (=> d!2173635 (= (content!13194 (exprs!6666 lt!2481420)) e!4195229)))

(declare-fun b!6980276 () Bool)

(assert (=> b!6980276 (= e!4195229 (as set.empty (Set Regex!17170)))))

(declare-fun b!6980277 () Bool)

(assert (=> b!6980277 (= e!4195229 (set.union (set.insert (h!73379 (exprs!6666 lt!2481420)) (as set.empty (Set Regex!17170))) (content!13194 (t!380798 (exprs!6666 lt!2481420)))))))

(assert (= (and d!2173635 c!1293909) b!6980276))

(assert (= (and d!2173635 (not c!1293909)) b!6980277))

(declare-fun m!7666592 () Bool)

(assert (=> b!6980277 m!7666592))

(assert (=> b!6980277 m!7666572))

(assert (=> d!2173499 d!2173635))

(assert (=> d!2173499 d!2173591))

(declare-fun d!2173637 () Bool)

(assert (=> d!2173637 (= (nullable!6930 (reg!17499 (h!73379 (exprs!6666 lt!2481420)))) (nullableFct!2602 (reg!17499 (h!73379 (exprs!6666 lt!2481420)))))))

(declare-fun bs!1860718 () Bool)

(assert (= bs!1860718 d!2173637))

(declare-fun m!7666594 () Bool)

(assert (=> bs!1860718 m!7666594))

(assert (=> b!6980017 d!2173637))

(declare-fun d!2173639 () Bool)

(declare-fun lt!2481541 () Int)

(assert (=> d!2173639 (>= lt!2481541 0)))

(declare-fun e!4195230 () Int)

(assert (=> d!2173639 (= lt!2481541 e!4195230)))

(declare-fun c!1293910 () Bool)

(assert (=> d!2173639 (= c!1293910 (is-Nil!66931 lt!2481505))))

(assert (=> d!2173639 (= (size!40870 lt!2481505) lt!2481541)))

(declare-fun b!6980278 () Bool)

(assert (=> b!6980278 (= e!4195230 0)))

(declare-fun b!6980279 () Bool)

(assert (=> b!6980279 (= e!4195230 (+ 1 (size!40870 (t!380798 lt!2481505))))))

(assert (= (and d!2173639 c!1293910) b!6980278))

(assert (= (and d!2173639 (not c!1293910)) b!6980279))

(declare-fun m!7666596 () Bool)

(assert (=> b!6980279 m!7666596))

(assert (=> b!6980024 d!2173639))

(declare-fun d!2173641 () Bool)

(declare-fun lt!2481542 () Int)

(assert (=> d!2173641 (>= lt!2481542 0)))

(declare-fun e!4195231 () Int)

(assert (=> d!2173641 (= lt!2481542 e!4195231)))

(declare-fun c!1293911 () Bool)

(assert (=> d!2173641 (= c!1293911 (is-Nil!66931 lt!2481418))))

(assert (=> d!2173641 (= (size!40870 lt!2481418) lt!2481542)))

(declare-fun b!6980280 () Bool)

(assert (=> b!6980280 (= e!4195231 0)))

(declare-fun b!6980281 () Bool)

(assert (=> b!6980281 (= e!4195231 (+ 1 (size!40870 (t!380798 lt!2481418))))))

(assert (= (and d!2173641 c!1293911) b!6980280))

(assert (= (and d!2173641 (not c!1293911)) b!6980281))

(declare-fun m!7666598 () Bool)

(assert (=> b!6980281 m!7666598))

(assert (=> b!6980024 d!2173641))

(assert (=> b!6980024 d!2173631))

(declare-fun b!6980285 () Bool)

(declare-fun e!4195232 () Bool)

(declare-fun lt!2481543 () List!67055)

(assert (=> b!6980285 (= e!4195232 (or (not (= (exprs!6666 ct2!306) Nil!66931)) (= lt!2481543 (t!380798 lt!2481418))))))

(declare-fun d!2173643 () Bool)

(assert (=> d!2173643 e!4195232))

(declare-fun res!2846435 () Bool)

(assert (=> d!2173643 (=> (not res!2846435) (not e!4195232))))

(assert (=> d!2173643 (= res!2846435 (= (content!13194 lt!2481543) (set.union (content!13194 (t!380798 lt!2481418)) (content!13194 (exprs!6666 ct2!306)))))))

(declare-fun e!4195233 () List!67055)

(assert (=> d!2173643 (= lt!2481543 e!4195233)))

(declare-fun c!1293912 () Bool)

(assert (=> d!2173643 (= c!1293912 (is-Nil!66931 (t!380798 lt!2481418)))))

(assert (=> d!2173643 (= (++!15115 (t!380798 lt!2481418) (exprs!6666 ct2!306)) lt!2481543)))

(declare-fun b!6980284 () Bool)

(declare-fun res!2846436 () Bool)

(assert (=> b!6980284 (=> (not res!2846436) (not e!4195232))))

(assert (=> b!6980284 (= res!2846436 (= (size!40870 lt!2481543) (+ (size!40870 (t!380798 lt!2481418)) (size!40870 (exprs!6666 ct2!306)))))))

(declare-fun b!6980282 () Bool)

(assert (=> b!6980282 (= e!4195233 (exprs!6666 ct2!306))))

(declare-fun b!6980283 () Bool)

(assert (=> b!6980283 (= e!4195233 (Cons!66931 (h!73379 (t!380798 lt!2481418)) (++!15115 (t!380798 (t!380798 lt!2481418)) (exprs!6666 ct2!306))))))

(assert (= (and d!2173643 c!1293912) b!6980282))

(assert (= (and d!2173643 (not c!1293912)) b!6980283))

(assert (= (and d!2173643 res!2846435) b!6980284))

(assert (= (and b!6980284 res!2846436) b!6980285))

(declare-fun m!7666600 () Bool)

(assert (=> d!2173643 m!7666600))

(assert (=> d!2173643 m!7666512))

(assert (=> d!2173643 m!7666290))

(declare-fun m!7666602 () Bool)

(assert (=> b!6980284 m!7666602))

(assert (=> b!6980284 m!7666598))

(assert (=> b!6980284 m!7666296))

(declare-fun m!7666604 () Bool)

(assert (=> b!6980283 m!7666604))

(assert (=> b!6980023 d!2173643))

(declare-fun d!2173645 () Bool)

(assert (=> d!2173645 (= (map!15421 z1!570 lambda!399004) (choose!52029 z1!570 lambda!399004))))

(declare-fun bs!1860719 () Bool)

(assert (= bs!1860719 d!2173645))

(declare-fun m!7666606 () Bool)

(assert (=> bs!1860719 m!7666606))

(assert (=> d!2173469 d!2173645))

(declare-fun d!2173647 () Bool)

(declare-fun c!1293915 () Bool)

(assert (=> d!2173647 (= c!1293915 (is-Nil!66933 lt!2481495))))

(declare-fun e!4195236 () (Set Context!12332))

(assert (=> d!2173647 (= (content!13193 lt!2481495) e!4195236)))

(declare-fun b!6980290 () Bool)

(assert (=> b!6980290 (= e!4195236 (as set.empty (Set Context!12332)))))

(declare-fun b!6980291 () Bool)

(assert (=> b!6980291 (= e!4195236 (set.union (set.insert (h!73381 lt!2481495) (as set.empty (Set Context!12332))) (content!13193 (t!380800 lt!2481495))))))

(assert (= (and d!2173647 c!1293915) b!6980290))

(assert (= (and d!2173647 (not c!1293915)) b!6980291))

(declare-fun m!7666608 () Bool)

(assert (=> b!6980291 m!7666608))

(declare-fun m!7666610 () Bool)

(assert (=> b!6980291 m!7666610))

(assert (=> b!6979976 d!2173647))

(declare-fun d!2173649 () Bool)

(declare-fun res!2846437 () Bool)

(declare-fun e!4195237 () Bool)

(assert (=> d!2173649 (=> res!2846437 e!4195237)))

(assert (=> d!2173649 (= res!2846437 (is-Nil!66931 (exprs!6666 setElem!47502)))))

(assert (=> d!2173649 (= (forall!16054 (exprs!6666 setElem!47502) lambda!399022) e!4195237)))

(declare-fun b!6980292 () Bool)

(declare-fun e!4195238 () Bool)

(assert (=> b!6980292 (= e!4195237 e!4195238)))

(declare-fun res!2846438 () Bool)

(assert (=> b!6980292 (=> (not res!2846438) (not e!4195238))))

(assert (=> b!6980292 (= res!2846438 (dynLambda!26742 lambda!399022 (h!73379 (exprs!6666 setElem!47502))))))

(declare-fun b!6980293 () Bool)

(assert (=> b!6980293 (= e!4195238 (forall!16054 (t!380798 (exprs!6666 setElem!47502)) lambda!399022))))

(assert (= (and d!2173649 (not res!2846437)) b!6980292))

(assert (= (and b!6980292 res!2846438) b!6980293))

(declare-fun b_lambda!261535 () Bool)

(assert (=> (not b_lambda!261535) (not b!6980292)))

(declare-fun m!7666612 () Bool)

(assert (=> b!6980292 m!7666612))

(declare-fun m!7666614 () Bool)

(assert (=> b!6980293 m!7666614))

(assert (=> d!2173517 d!2173649))

(assert (=> d!2173467 d!2173575))

(declare-fun bs!1860720 () Bool)

(declare-fun d!2173651 () Bool)

(assert (= bs!1860720 (and d!2173651 d!2173613)))

(declare-fun lambda!399033 () Int)

(assert (=> bs!1860720 (not (= lambda!399033 lambda!399031))))

(declare-fun bs!1860721 () Bool)

(assert (= bs!1860721 (and d!2173651 d!2173477)))

(assert (=> bs!1860721 (= (= lambda!399015 lambda!398962) (= lambda!399033 lambda!399012))))

(declare-fun bs!1860722 () Bool)

(assert (= bs!1860722 (and d!2173651 b!6979875)))

(assert (=> bs!1860722 (not (= lambda!399033 lambda!398962))))

(declare-fun bs!1860723 () Bool)

(assert (= bs!1860723 (and d!2173651 d!2173491)))

(assert (=> bs!1860723 (not (= lambda!399033 lambda!399015))))

(declare-fun bs!1860724 () Bool)

(assert (= bs!1860724 (and d!2173651 d!2173555)))

(assert (=> bs!1860724 (not (= lambda!399033 lambda!399028))))

(assert (=> d!2173651 true))

(assert (=> d!2173651 (< (dynLambda!26735 order!27837 lambda!399015) (dynLambda!26735 order!27837 lambda!399033))))

(assert (=> d!2173651 (= (exists!2925 lt!2481416 lambda!399015) (not (forall!16055 lt!2481416 lambda!399033)))))

(declare-fun bs!1860725 () Bool)

(assert (= bs!1860725 d!2173651))

(declare-fun m!7666616 () Bool)

(assert (=> bs!1860725 m!7666616))

(assert (=> d!2173491 d!2173651))

(declare-fun bs!1860726 () Bool)

(declare-fun d!2173653 () Bool)

(assert (= bs!1860726 (and d!2173653 d!2173613)))

(declare-fun lambda!399036 () Int)

(assert (=> bs!1860726 (not (= lambda!399036 lambda!399031))))

(declare-fun bs!1860727 () Bool)

(assert (= bs!1860727 (and d!2173653 b!6979875)))

(assert (=> bs!1860727 (= lambda!399036 lambda!398962)))

(declare-fun bs!1860728 () Bool)

(assert (= bs!1860728 (and d!2173653 d!2173491)))

(assert (=> bs!1860728 (= lambda!399036 lambda!399015)))

(declare-fun bs!1860729 () Bool)

(assert (= bs!1860729 (and d!2173653 d!2173555)))

(assert (=> bs!1860729 (not (= lambda!399036 lambda!399028))))

(declare-fun bs!1860730 () Bool)

(assert (= bs!1860730 (and d!2173653 d!2173477)))

(assert (=> bs!1860730 (not (= lambda!399036 lambda!399012))))

(declare-fun bs!1860731 () Bool)

(assert (= bs!1860731 (and d!2173653 d!2173651)))

(assert (=> bs!1860731 (not (= lambda!399036 lambda!399033))))

(assert (=> d!2173653 true))

(assert (=> d!2173653 (exists!2925 lt!2481416 lambda!399036)))

(assert (=> d!2173653 true))

(declare-fun _$60!1039 () Unit!160990)

(assert (=> d!2173653 (= (choose!52019 lt!2481416 s!7408) _$60!1039)))

(declare-fun bs!1860732 () Bool)

(assert (= bs!1860732 d!2173653))

(declare-fun m!7666618 () Bool)

(assert (=> bs!1860732 m!7666618))

(assert (=> d!2173491 d!2173653))

(declare-fun d!2173655 () Bool)

(declare-fun c!1293918 () Bool)

(assert (=> d!2173655 (= c!1293918 (isEmpty!39068 s!7408))))

(declare-fun e!4195239 () Bool)

(assert (=> d!2173655 (= (matchZipper!2710 (content!13193 lt!2481416) s!7408) e!4195239)))

(declare-fun b!6980294 () Bool)

(assert (=> b!6980294 (= e!4195239 (nullableZipper!2399 (content!13193 lt!2481416)))))

(declare-fun b!6980295 () Bool)

(assert (=> b!6980295 (= e!4195239 (matchZipper!2710 (derivationStepZipper!2650 (content!13193 lt!2481416) (head!14069 s!7408)) (tail!13144 s!7408)))))

(assert (= (and d!2173655 c!1293918) b!6980294))

(assert (= (and d!2173655 (not c!1293918)) b!6980295))

(assert (=> d!2173655 m!7666218))

(assert (=> b!6980294 m!7666268))

(declare-fun m!7666620 () Bool)

(assert (=> b!6980294 m!7666620))

(assert (=> b!6980295 m!7666222))

(assert (=> b!6980295 m!7666268))

(assert (=> b!6980295 m!7666222))

(declare-fun m!7666622 () Bool)

(assert (=> b!6980295 m!7666622))

(assert (=> b!6980295 m!7666226))

(assert (=> b!6980295 m!7666622))

(assert (=> b!6980295 m!7666226))

(declare-fun m!7666624 () Bool)

(assert (=> b!6980295 m!7666624))

(assert (=> d!2173491 d!2173655))

(declare-fun d!2173657 () Bool)

(declare-fun c!1293919 () Bool)

(assert (=> d!2173657 (= c!1293919 (is-Nil!66933 lt!2481416))))

(declare-fun e!4195240 () (Set Context!12332))

(assert (=> d!2173657 (= (content!13193 lt!2481416) e!4195240)))

(declare-fun b!6980296 () Bool)

(assert (=> b!6980296 (= e!4195240 (as set.empty (Set Context!12332)))))

(declare-fun b!6980297 () Bool)

(assert (=> b!6980297 (= e!4195240 (set.union (set.insert (h!73381 lt!2481416) (as set.empty (Set Context!12332))) (content!13193 (t!380800 lt!2481416))))))

(assert (= (and d!2173657 c!1293919) b!6980296))

(assert (= (and d!2173657 (not c!1293919)) b!6980297))

(declare-fun m!7666626 () Bool)

(assert (=> b!6980297 m!7666626))

(declare-fun m!7666628 () Bool)

(assert (=> b!6980297 m!7666628))

(assert (=> d!2173491 d!2173657))

(declare-fun b!6980312 () Bool)

(declare-fun e!4195256 () Bool)

(declare-fun call!633387 () Bool)

(assert (=> b!6980312 (= e!4195256 call!633387)))

(declare-fun b!6980314 () Bool)

(declare-fun e!4195257 () Bool)

(assert (=> b!6980314 (= e!4195257 e!4195256)))

(declare-fun res!2846453 () Bool)

(declare-fun call!633386 () Bool)

(assert (=> b!6980314 (= res!2846453 call!633386)))

(assert (=> b!6980314 (=> res!2846453 e!4195256)))

(declare-fun b!6980315 () Bool)

(declare-fun e!4195253 () Bool)

(assert (=> b!6980315 (= e!4195253 e!4195257)))

(declare-fun c!1293922 () Bool)

(assert (=> b!6980315 (= c!1293922 (is-Union!17170 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun bm!633381 () Bool)

(assert (=> bm!633381 (= call!633386 (nullable!6930 (ite c!1293922 (regOne!34853 (h!73379 (exprs!6666 lt!2481420))) (regTwo!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(declare-fun d!2173659 () Bool)

(declare-fun res!2846450 () Bool)

(declare-fun e!4195258 () Bool)

(assert (=> d!2173659 (=> res!2846450 e!4195258)))

(assert (=> d!2173659 (= res!2846450 (is-EmptyExpr!17170 (h!73379 (exprs!6666 lt!2481420))))))

(assert (=> d!2173659 (= (nullableFct!2602 (h!73379 (exprs!6666 lt!2481420))) e!4195258)))

(declare-fun b!6980313 () Bool)

(declare-fun e!4195255 () Bool)

(assert (=> b!6980313 (= e!4195258 e!4195255)))

(declare-fun res!2846452 () Bool)

(assert (=> b!6980313 (=> (not res!2846452) (not e!4195255))))

(assert (=> b!6980313 (= res!2846452 (and (not (is-EmptyLang!17170 (h!73379 (exprs!6666 lt!2481420)))) (not (is-ElementMatch!17170 (h!73379 (exprs!6666 lt!2481420))))))))

(declare-fun b!6980316 () Bool)

(assert (=> b!6980316 (= e!4195255 e!4195253)))

(declare-fun res!2846449 () Bool)

(assert (=> b!6980316 (=> res!2846449 e!4195253)))

(assert (=> b!6980316 (= res!2846449 (is-Star!17170 (h!73379 (exprs!6666 lt!2481420))))))

(declare-fun b!6980317 () Bool)

(declare-fun e!4195254 () Bool)

(assert (=> b!6980317 (= e!4195257 e!4195254)))

(declare-fun res!2846451 () Bool)

(assert (=> b!6980317 (= res!2846451 call!633387)))

(assert (=> b!6980317 (=> (not res!2846451) (not e!4195254))))

(declare-fun b!6980318 () Bool)

(assert (=> b!6980318 (= e!4195254 call!633386)))

(declare-fun bm!633382 () Bool)

(assert (=> bm!633382 (= call!633387 (nullable!6930 (ite c!1293922 (regTwo!34853 (h!73379 (exprs!6666 lt!2481420))) (regOne!34852 (h!73379 (exprs!6666 lt!2481420))))))))

(assert (= (and d!2173659 (not res!2846450)) b!6980313))

(assert (= (and b!6980313 res!2846452) b!6980316))

(assert (= (and b!6980316 (not res!2846449)) b!6980315))

(assert (= (and b!6980315 c!1293922) b!6980314))

(assert (= (and b!6980315 (not c!1293922)) b!6980317))

(assert (= (and b!6980314 (not res!2846453)) b!6980312))

(assert (= (and b!6980317 res!2846451) b!6980318))

(assert (= (or b!6980312 b!6980317) bm!633382))

(assert (= (or b!6980314 b!6980318) bm!633381))

(declare-fun m!7666630 () Bool)

(assert (=> bm!633381 m!7666630))

(declare-fun m!7666632 () Bool)

(assert (=> bm!633382 m!7666632))

(assert (=> d!2173505 d!2173659))

(declare-fun d!2173661 () Bool)

(assert (=> d!2173661 (forall!16054 (++!15115 (exprs!6666 lt!2481501) (exprs!6666 ct2!306)) lambda!398964)))

(declare-fun lt!2481544 () Unit!160990)

(assert (=> d!2173661 (= lt!2481544 (choose!52016 (exprs!6666 lt!2481501) (exprs!6666 ct2!306) lambda!398964))))

(assert (=> d!2173661 (forall!16054 (exprs!6666 lt!2481501) lambda!398964)))

(assert (=> d!2173661 (= (lemmaConcatPreservesForall!506 (exprs!6666 lt!2481501) (exprs!6666 ct2!306) lambda!398964) lt!2481544)))

(declare-fun bs!1860733 () Bool)

(assert (= bs!1860733 d!2173661))

(assert (=> bs!1860733 m!7666348))

(assert (=> bs!1860733 m!7666348))

(declare-fun m!7666634 () Bool)

(assert (=> bs!1860733 m!7666634))

(declare-fun m!7666636 () Bool)

(assert (=> bs!1860733 m!7666636))

(declare-fun m!7666638 () Bool)

(assert (=> bs!1860733 m!7666638))

(assert (=> bs!1860679 d!2173661))

(declare-fun e!4195259 () Bool)

(declare-fun b!6980322 () Bool)

(declare-fun lt!2481545 () List!67055)

(assert (=> b!6980322 (= e!4195259 (or (not (= (exprs!6666 ct2!306) Nil!66931)) (= lt!2481545 (exprs!6666 lt!2481501))))))

(declare-fun d!2173663 () Bool)

(assert (=> d!2173663 e!4195259))

(declare-fun res!2846454 () Bool)

(assert (=> d!2173663 (=> (not res!2846454) (not e!4195259))))

(assert (=> d!2173663 (= res!2846454 (= (content!13194 lt!2481545) (set.union (content!13194 (exprs!6666 lt!2481501)) (content!13194 (exprs!6666 ct2!306)))))))

(declare-fun e!4195260 () List!67055)

(assert (=> d!2173663 (= lt!2481545 e!4195260)))

(declare-fun c!1293923 () Bool)

(assert (=> d!2173663 (= c!1293923 (is-Nil!66931 (exprs!6666 lt!2481501)))))

(assert (=> d!2173663 (= (++!15115 (exprs!6666 lt!2481501) (exprs!6666 ct2!306)) lt!2481545)))

(declare-fun b!6980321 () Bool)

(declare-fun res!2846455 () Bool)

(assert (=> b!6980321 (=> (not res!2846455) (not e!4195259))))

(assert (=> b!6980321 (= res!2846455 (= (size!40870 lt!2481545) (+ (size!40870 (exprs!6666 lt!2481501)) (size!40870 (exprs!6666 ct2!306)))))))

(declare-fun b!6980319 () Bool)

(assert (=> b!6980319 (= e!4195260 (exprs!6666 ct2!306))))

(declare-fun b!6980320 () Bool)

(assert (=> b!6980320 (= e!4195260 (Cons!66931 (h!73379 (exprs!6666 lt!2481501)) (++!15115 (t!380798 (exprs!6666 lt!2481501)) (exprs!6666 ct2!306))))))

(assert (= (and d!2173663 c!1293923) b!6980319))

(assert (= (and d!2173663 (not c!1293923)) b!6980320))

(assert (= (and d!2173663 res!2846454) b!6980321))

(assert (= (and b!6980321 res!2846455) b!6980322))

(declare-fun m!7666640 () Bool)

(assert (=> d!2173663 m!7666640))

(declare-fun m!7666642 () Bool)

(assert (=> d!2173663 m!7666642))

(assert (=> d!2173663 m!7666290))

(declare-fun m!7666644 () Bool)

(assert (=> b!6980321 m!7666644))

(declare-fun m!7666646 () Bool)

(assert (=> b!6980321 m!7666646))

(assert (=> b!6980321 m!7666296))

(declare-fun m!7666648 () Bool)

(assert (=> b!6980320 m!7666648))

(assert (=> bs!1860679 d!2173663))

(declare-fun b!6980336 () Bool)

(declare-fun e!4195263 () Bool)

(declare-fun tp!1928130 () Bool)

(declare-fun tp!1928133 () Bool)

(assert (=> b!6980336 (= e!4195263 (and tp!1928130 tp!1928133))))

(declare-fun b!6980333 () Bool)

(assert (=> b!6980333 (= e!4195263 tp_is_empty!43565)))

(declare-fun b!6980335 () Bool)

(declare-fun tp!1928131 () Bool)

(assert (=> b!6980335 (= e!4195263 tp!1928131)))

(assert (=> b!6980030 (= tp!1928075 e!4195263)))

(declare-fun b!6980334 () Bool)

(declare-fun tp!1928134 () Bool)

(declare-fun tp!1928132 () Bool)

(assert (=> b!6980334 (= e!4195263 (and tp!1928134 tp!1928132))))

(assert (= (and b!6980030 (is-ElementMatch!17170 (h!73379 (exprs!6666 ct2!306)))) b!6980333))

(assert (= (and b!6980030 (is-Concat!26015 (h!73379 (exprs!6666 ct2!306)))) b!6980334))

(assert (= (and b!6980030 (is-Star!17170 (h!73379 (exprs!6666 ct2!306)))) b!6980335))

(assert (= (and b!6980030 (is-Union!17170 (h!73379 (exprs!6666 ct2!306)))) b!6980336))

(declare-fun b!6980337 () Bool)

(declare-fun e!4195264 () Bool)

(declare-fun tp!1928135 () Bool)

(declare-fun tp!1928136 () Bool)

(assert (=> b!6980337 (= e!4195264 (and tp!1928135 tp!1928136))))

(assert (=> b!6980030 (= tp!1928076 e!4195264)))

(assert (= (and b!6980030 (is-Cons!66931 (t!380798 (exprs!6666 ct2!306)))) b!6980337))

(declare-fun condSetEmpty!47515 () Bool)

(assert (=> setNonEmpty!47508 (= condSetEmpty!47515 (= setRest!47508 (as set.empty (Set Context!12332))))))

(declare-fun setRes!47515 () Bool)

(assert (=> setNonEmpty!47508 (= tp!1928086 setRes!47515)))

(declare-fun setIsEmpty!47515 () Bool)

(assert (=> setIsEmpty!47515 setRes!47515))

(declare-fun e!4195265 () Bool)

(declare-fun setElem!47515 () Context!12332)

(declare-fun setNonEmpty!47515 () Bool)

(declare-fun tp!1928137 () Bool)

(assert (=> setNonEmpty!47515 (= setRes!47515 (and tp!1928137 (inv!85785 setElem!47515) e!4195265))))

(declare-fun setRest!47515 () (Set Context!12332))

(assert (=> setNonEmpty!47515 (= setRest!47508 (set.union (set.insert setElem!47515 (as set.empty (Set Context!12332))) setRest!47515))))

(declare-fun b!6980338 () Bool)

(declare-fun tp!1928138 () Bool)

(assert (=> b!6980338 (= e!4195265 tp!1928138)))

(assert (= (and setNonEmpty!47508 condSetEmpty!47515) setIsEmpty!47515))

(assert (= (and setNonEmpty!47508 (not condSetEmpty!47515)) setNonEmpty!47515))

(assert (= setNonEmpty!47515 b!6980338))

(declare-fun m!7666650 () Bool)

(assert (=> setNonEmpty!47515 m!7666650))

(declare-fun b!6980339 () Bool)

(declare-fun e!4195266 () Bool)

(declare-fun tp!1928139 () Bool)

(declare-fun tp!1928140 () Bool)

(assert (=> b!6980339 (= e!4195266 (and tp!1928139 tp!1928140))))

(assert (=> b!6980041 (= tp!1928087 e!4195266)))

(assert (= (and b!6980041 (is-Cons!66931 (exprs!6666 setElem!47508))) b!6980339))

(declare-fun b!6980343 () Bool)

(declare-fun e!4195267 () Bool)

(declare-fun tp!1928141 () Bool)

(declare-fun tp!1928144 () Bool)

(assert (=> b!6980343 (= e!4195267 (and tp!1928141 tp!1928144))))

(declare-fun b!6980340 () Bool)

(assert (=> b!6980340 (= e!4195267 tp_is_empty!43565)))

(declare-fun b!6980342 () Bool)

(declare-fun tp!1928142 () Bool)

(assert (=> b!6980342 (= e!4195267 tp!1928142)))

(assert (=> b!6980031 (= tp!1928077 e!4195267)))

(declare-fun b!6980341 () Bool)

(declare-fun tp!1928145 () Bool)

(declare-fun tp!1928143 () Bool)

(assert (=> b!6980341 (= e!4195267 (and tp!1928145 tp!1928143))))

(assert (= (and b!6980031 (is-ElementMatch!17170 (h!73379 (exprs!6666 setElem!47502)))) b!6980340))

(assert (= (and b!6980031 (is-Concat!26015 (h!73379 (exprs!6666 setElem!47502)))) b!6980341))

(assert (= (and b!6980031 (is-Star!17170 (h!73379 (exprs!6666 setElem!47502)))) b!6980342))

(assert (= (and b!6980031 (is-Union!17170 (h!73379 (exprs!6666 setElem!47502)))) b!6980343))

(declare-fun b!6980344 () Bool)

(declare-fun e!4195268 () Bool)

(declare-fun tp!1928146 () Bool)

(declare-fun tp!1928147 () Bool)

(assert (=> b!6980344 (= e!4195268 (and tp!1928146 tp!1928147))))

(assert (=> b!6980031 (= tp!1928078 e!4195268)))

(assert (= (and b!6980031 (is-Cons!66931 (t!380798 (exprs!6666 setElem!47502)))) b!6980344))

(declare-fun b!6980345 () Bool)

(declare-fun e!4195269 () Bool)

(declare-fun tp!1928148 () Bool)

(assert (=> b!6980345 (= e!4195269 (and tp_is_empty!43565 tp!1928148))))

(assert (=> b!6980036 (= tp!1928081 e!4195269)))

(assert (= (and b!6980036 (is-Cons!66932 (t!380799 (t!380799 s!7408)))) b!6980345))

(declare-fun b_lambda!261537 () Bool)

(assert (= b_lambda!261519 (or b!6979875 b_lambda!261537)))

(declare-fun bs!1860734 () Bool)

(declare-fun d!2173665 () Bool)

(assert (= bs!1860734 (and d!2173665 b!6979875)))

(assert (=> bs!1860734 (= (dynLambda!26736 lambda!398962 lt!2481530) (matchZipper!2710 (set.insert lt!2481530 (as set.empty (Set Context!12332))) s!7408))))

(declare-fun m!7666652 () Bool)

(assert (=> bs!1860734 m!7666652))

(assert (=> bs!1860734 m!7666652))

(declare-fun m!7666654 () Bool)

(assert (=> bs!1860734 m!7666654))

(assert (=> d!2173577 d!2173665))

(declare-fun b_lambda!261539 () Bool)

(assert (= b_lambda!261515 (or b!6979876 b_lambda!261539)))

(assert (=> d!2173553 d!2173523))

(declare-fun b_lambda!261541 () Bool)

(assert (= b_lambda!261517 (or b!6979875 b_lambda!261541)))

(declare-fun bs!1860735 () Bool)

(declare-fun d!2173667 () Bool)

(assert (= bs!1860735 (and d!2173667 b!6979875)))

(assert (=> bs!1860735 (= (dynLambda!26736 lambda!398962 (h!73381 (toList!10530 lt!2481413))) (matchZipper!2710 (set.insert (h!73381 (toList!10530 lt!2481413)) (as set.empty (Set Context!12332))) s!7408))))

(declare-fun m!7666656 () Bool)

(assert (=> bs!1860735 m!7666656))

(assert (=> bs!1860735 m!7666656))

(declare-fun m!7666658 () Bool)

(assert (=> bs!1860735 m!7666658))

(assert (=> b!6980160 d!2173667))

(declare-fun b_lambda!261543 () Bool)

(assert (= b_lambda!261525 (or b!6979874 b_lambda!261543)))

(declare-fun bs!1860736 () Bool)

(declare-fun d!2173669 () Bool)

(assert (= bs!1860736 (and d!2173669 b!6979874)))

(assert (=> bs!1860736 (= (dynLambda!26742 lambda!398964 (h!73379 lt!2481418)) (validRegex!8834 (h!73379 lt!2481418)))))

(declare-fun m!7666660 () Bool)

(assert (=> bs!1860736 m!7666660))

(assert (=> b!6980221 d!2173669))

(declare-fun b_lambda!261545 () Bool)

(assert (= b_lambda!261529 (or b!6979874 b_lambda!261545)))

(declare-fun bs!1860737 () Bool)

(declare-fun d!2173671 () Bool)

(assert (= bs!1860737 (and d!2173671 b!6979874)))

(assert (=> bs!1860737 (= (dynLambda!26742 lambda!398964 (h!73379 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)))) (validRegex!8834 (h!73379 (++!15115 (exprs!6666 lt!2481420) (exprs!6666 ct2!306)))))))

(declare-fun m!7666662 () Bool)

(assert (=> bs!1860737 m!7666662))

(assert (=> b!6980240 d!2173671))

(declare-fun b_lambda!261547 () Bool)

(assert (= b_lambda!261535 (or d!2173517 b_lambda!261547)))

(declare-fun bs!1860738 () Bool)

(declare-fun d!2173673 () Bool)

(assert (= bs!1860738 (and d!2173673 d!2173517)))

(assert (=> bs!1860738 (= (dynLambda!26742 lambda!399022 (h!73379 (exprs!6666 setElem!47502))) (validRegex!8834 (h!73379 (exprs!6666 setElem!47502))))))

(declare-fun m!7666664 () Bool)

(assert (=> bs!1860738 m!7666664))

(assert (=> b!6980292 d!2173673))

(declare-fun b_lambda!261549 () Bool)

(assert (= b_lambda!261521 (or b!6979874 b_lambda!261549)))

(declare-fun bs!1860739 () Bool)

(declare-fun d!2173675 () Bool)

(assert (= bs!1860739 (and d!2173675 b!6979874)))

(declare-fun lt!2481546 () Unit!160990)

(assert (=> bs!1860739 (= lt!2481546 (lemmaConcatPreservesForall!506 (exprs!6666 a!12604) (exprs!6666 ct2!306) lambda!398964))))

(assert (=> bs!1860739 (= (dynLambda!26737 lambda!398963 a!12604) (Context!12333 (++!15115 (exprs!6666 a!12604) (exprs!6666 ct2!306))))))

(declare-fun m!7666666 () Bool)

(assert (=> bs!1860739 m!7666666))

(declare-fun m!7666668 () Bool)

(assert (=> bs!1860739 m!7666668))

(assert (=> d!2173583 d!2173675))

(declare-fun b_lambda!261551 () Bool)

(assert (= b_lambda!261527 (or d!2173477 b_lambda!261551)))

(declare-fun bs!1860740 () Bool)

(declare-fun d!2173677 () Bool)

(assert (= bs!1860740 (and d!2173677 d!2173477)))

(assert (=> bs!1860740 (= (dynLambda!26736 lambda!399012 (h!73381 lt!2481416)) (not (dynLambda!26736 lambda!398962 (h!73381 lt!2481416))))))

(declare-fun b_lambda!261559 () Bool)

(assert (=> (not b_lambda!261559) (not bs!1860740)))

(declare-fun m!7666670 () Bool)

(assert (=> bs!1860740 m!7666670))

(assert (=> b!6980229 d!2173677))

(declare-fun b_lambda!261553 () Bool)

(assert (= b_lambda!261531 (or b!6979874 b_lambda!261553)))

(declare-fun bs!1860741 () Bool)

(declare-fun d!2173679 () Bool)

(assert (= bs!1860741 (and d!2173679 b!6979874)))

(assert (=> bs!1860741 (= (dynLambda!26742 lambda!398964 (h!73379 (exprs!6666 lt!2481420))) (validRegex!8834 (h!73379 (exprs!6666 lt!2481420))))))

(assert (=> bs!1860741 m!7666108))

(assert (=> b!6980242 d!2173679))

(declare-fun b_lambda!261555 () Bool)

(assert (= b_lambda!261533 (or d!2173473 b_lambda!261555)))

(declare-fun bs!1860742 () Bool)

(declare-fun d!2173681 () Bool)

(assert (= bs!1860742 (and d!2173681 d!2173473)))

(assert (=> bs!1860742 (= (dynLambda!26742 lambda!399008 (h!73379 (exprs!6666 ct2!306))) (validRegex!8834 (h!73379 (exprs!6666 ct2!306))))))

(declare-fun m!7666672 () Bool)

(assert (=> bs!1860742 m!7666672))

(assert (=> b!6980262 d!2173681))

(declare-fun b_lambda!261557 () Bool)

(assert (= b_lambda!261523 (or b!6979874 b_lambda!261557)))

(declare-fun bs!1860743 () Bool)

(declare-fun d!2173683 () Bool)

(assert (= bs!1860743 (and d!2173683 b!6979874)))

(assert (=> bs!1860743 (= (dynLambda!26742 lambda!398964 (h!73379 (++!15115 lt!2481418 (exprs!6666 ct2!306)))) (validRegex!8834 (h!73379 (++!15115 lt!2481418 (exprs!6666 ct2!306)))))))

(declare-fun m!7666674 () Bool)

(assert (=> bs!1860743 m!7666674))

(assert (=> b!6980219 d!2173683))

(push 1)

(assert (not d!2173569))

(assert (not bs!1860738))

(assert (not b!6980263))

(assert (not b!6980140))

(assert (not b!6980271))

(assert (not b!6980246))

(assert (not b!6980253))

(assert (not b!6980138))

(assert (not b!6980343))

(assert (not bm!633371))

(assert (not d!2173561))

(assert (not bs!1860734))

(assert (not b!6980247))

(assert (not d!2173577))

(assert (not b!6980235))

(assert (not b!6980194))

(assert (not b!6980203))

(assert (not b!6980294))

(assert (not b!6980129))

(assert (not bm!633374))

(assert (not d!2173583))

(assert (not b!6980222))

(assert (not b_lambda!261543))

(assert (not d!2173553))

(assert (not b!6980220))

(assert (not bm!633373))

(assert (not b!6980223))

(assert (not b!6980130))

(assert (not b!6980210))

(assert (not d!2173607))

(assert (not b!6980273))

(assert (not b!6980243))

(assert (not d!2173613))

(assert (not b!6980277))

(assert (not d!2173655))

(assert (not b!6980139))

(assert (not b!6980248))

(assert (not setNonEmpty!47514))

(assert (not b!6980337))

(assert (not bm!633366))

(assert (not b_lambda!261547))

(assert (not b!6980344))

(assert (not b_lambda!261497))

(assert (not b!6980338))

(assert (not b!6980143))

(assert (not d!2173615))

(assert (not b!6980159))

(assert (not b_lambda!261551))

(assert (not b_lambda!261537))

(assert (not d!2173643))

(assert (not b_lambda!261555))

(assert (not b!6980259))

(assert (not b!6980137))

(assert (not b!6980335))

(assert (not b_lambda!261549))

(assert (not b!6980269))

(assert (not b!6980230))

(assert (not bs!1860735))

(assert (not bs!1860743))

(assert (not bm!633381))

(assert (not b_lambda!261541))

(assert (not b!6980281))

(assert (not b!6980275))

(assert tp_is_empty!43565)

(assert (not b!6980142))

(assert (not b!6980212))

(assert (not b!6980279))

(assert (not b!6980339))

(assert (not b_lambda!261553))

(assert (not d!2173645))

(assert (not bs!1860737))

(assert (not b_lambda!261499))

(assert (not b_lambda!261501))

(assert (not b!6980214))

(assert (not b_lambda!261559))

(assert (not b!6980163))

(assert (not d!2173579))

(assert (not b_lambda!261545))

(assert (not bm!633365))

(assert (not d!2173599))

(assert (not bs!1860739))

(assert (not d!2173563))

(assert (not bs!1860742))

(assert (not b!6980341))

(assert (not b!6980336))

(assert (not d!2173621))

(assert (not b!6980224))

(assert (not d!2173617))

(assert (not b!6980293))

(assert (not b!6980345))

(assert (not b!6980320))

(assert (not b!6980260))

(assert (not d!2173595))

(assert (not b!6980334))

(assert (not b_lambda!261539))

(assert (not d!2173653))

(assert (not b!6980283))

(assert (not d!2173663))

(assert (not d!2173651))

(assert (not d!2173637))

(assert (not b!6980141))

(assert (not b!6980342))

(assert (not b!6980284))

(assert (not d!2173555))

(assert (not bs!1860736))

(assert (not b!6980162))

(assert (not d!2173559))

(assert (not b!6980321))

(assert (not b!6980295))

(assert (not b!6980241))

(assert (not d!2173585))

(assert (not d!2173623))

(assert (not b!6980297))

(assert (not b_lambda!261557))

(assert (not d!2173573))

(assert (not d!2173661))

(assert (not bm!633376))

(assert (not setNonEmpty!47515))

(assert (not b!6980291))

(assert (not bm!633370))

(assert (not bm!633352))

(assert (not bs!1860741))

(assert (not bm!633382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

