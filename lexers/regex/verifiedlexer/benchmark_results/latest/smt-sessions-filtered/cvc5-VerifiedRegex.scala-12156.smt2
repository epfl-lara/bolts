; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683726 () Bool)

(assert start!683726)

(declare-fun b!7053084 () Bool)

(assert (=> b!7053084 true))

(declare-fun b!7053080 () Bool)

(assert (=> b!7053080 true))

(declare-fun b!7053089 () Bool)

(assert (=> b!7053089 true))

(declare-fun e!4240173 () Bool)

(declare-fun e!4240169 () Bool)

(assert (=> b!7053080 (= e!4240173 e!4240169)))

(declare-fun res!2879401 () Bool)

(assert (=> b!7053080 (=> res!2879401 e!4240169)))

(declare-datatypes ((C!35386 0))(
  ( (C!35387 (val!27395 Int)) )
))
(declare-datatypes ((Regex!17558 0))(
  ( (ElementMatch!17558 (c!1313787 C!35386)) (Concat!26403 (regOne!35628 Regex!17558) (regTwo!35628 Regex!17558)) (EmptyExpr!17558) (Star!17558 (reg!17887 Regex!17558)) (EmptyLang!17558) (Union!17558 (regOne!35629 Regex!17558) (regTwo!35629 Regex!17558)) )
))
(declare-datatypes ((List!68200 0))(
  ( (Nil!68076) (Cons!68076 (h!74524 Regex!17558) (t!381979 List!68200)) )
))
(declare-datatypes ((Context!13108 0))(
  ( (Context!13109 (exprs!7054 List!68200)) )
))
(declare-fun lt!2530474 () Context!13108)

(declare-fun lt!2530460 () Context!13108)

(declare-fun z1!570 () (Set Context!13108))

(declare-fun lt!2530468 () Context!13108)

(assert (=> b!7053080 (= res!2879401 (or (not (= lt!2530460 lt!2530468)) (not (set.member lt!2530474 z1!570))))))

(declare-fun ct2!306 () Context!13108)

(declare-fun ++!15641 (List!68200 List!68200) List!68200)

(assert (=> b!7053080 (= lt!2530460 (Context!13109 (++!15641 (exprs!7054 lt!2530474) (exprs!7054 ct2!306))))))

(declare-fun lambda!419558 () Int)

(declare-datatypes ((Unit!161789 0))(
  ( (Unit!161790) )
))
(declare-fun lt!2530463 () Unit!161789)

(declare-fun lemmaConcatPreservesForall!869 (List!68200 List!68200 Int) Unit!161789)

(assert (=> b!7053080 (= lt!2530463 (lemmaConcatPreservesForall!869 (exprs!7054 lt!2530474) (exprs!7054 ct2!306) lambda!419558))))

(declare-fun lambda!419557 () Int)

(declare-fun mapPost2!387 ((Set Context!13108) Int Context!13108) Context!13108)

(assert (=> b!7053080 (= lt!2530474 (mapPost2!387 z1!570 lambda!419557 lt!2530468))))

(declare-fun b!7053081 () Bool)

(declare-fun res!2879408 () Bool)

(declare-fun e!4240166 () Bool)

(assert (=> b!7053081 (=> res!2879408 e!4240166)))

(assert (=> b!7053081 (= res!2879408 (not (is-Cons!68076 (exprs!7054 lt!2530474))))))

(declare-fun b!7053082 () Bool)

(declare-fun res!2879409 () Bool)

(assert (=> b!7053082 (=> res!2879409 e!4240173)))

(declare-fun lt!2530473 () (Set Context!13108))

(assert (=> b!7053082 (= res!2879409 (not (set.member lt!2530468 lt!2530473)))))

(declare-fun b!7053083 () Bool)

(declare-fun e!4240172 () Bool)

(declare-fun tp_is_empty!44341 () Bool)

(declare-fun tp!1939773 () Bool)

(assert (=> b!7053083 (= e!4240172 (and tp_is_empty!44341 tp!1939773))))

(declare-fun e!4240167 () Bool)

(assert (=> b!7053084 (= e!4240167 (not e!4240173))))

(declare-fun res!2879407 () Bool)

(assert (=> b!7053084 (=> res!2879407 e!4240173)))

(declare-fun lt!2530462 () (Set Context!13108))

(declare-datatypes ((List!68201 0))(
  ( (Nil!68077) (Cons!68077 (h!74525 C!35386) (t!381980 List!68201)) )
))
(declare-fun s!7408 () List!68201)

(declare-fun matchZipper!3098 ((Set Context!13108) List!68201) Bool)

(assert (=> b!7053084 (= res!2879407 (not (matchZipper!3098 lt!2530462 s!7408)))))

(assert (=> b!7053084 (= lt!2530462 (set.insert lt!2530468 (as set.empty (Set Context!13108))))))

(declare-fun lambda!419556 () Int)

(declare-fun getWitness!1613 ((Set Context!13108) Int) Context!13108)

(assert (=> b!7053084 (= lt!2530468 (getWitness!1613 lt!2530473 lambda!419556))))

(declare-datatypes ((List!68202 0))(
  ( (Nil!68078) (Cons!68078 (h!74526 Context!13108) (t!381981 List!68202)) )
))
(declare-fun lt!2530467 () List!68202)

(declare-fun exists!3539 (List!68202 Int) Bool)

(assert (=> b!7053084 (exists!3539 lt!2530467 lambda!419556)))

(declare-fun lt!2530466 () Unit!161789)

(declare-fun lemmaZipperMatchesExistsMatchingContext!479 (List!68202 List!68201) Unit!161789)

(assert (=> b!7053084 (= lt!2530466 (lemmaZipperMatchesExistsMatchingContext!479 lt!2530467 s!7408))))

(declare-fun toList!10899 ((Set Context!13108)) List!68202)

(assert (=> b!7053084 (= lt!2530467 (toList!10899 lt!2530473))))

(declare-fun b!7053085 () Bool)

(declare-fun res!2879402 () Bool)

(assert (=> b!7053085 (=> res!2879402 e!4240166)))

(declare-fun isEmpty!39706 (List!68200) Bool)

(assert (=> b!7053085 (= res!2879402 (isEmpty!39706 (exprs!7054 lt!2530474)))))

(declare-fun setRes!49768 () Bool)

(declare-fun e!4240174 () Bool)

(declare-fun setElem!49768 () Context!13108)

(declare-fun tp!1939774 () Bool)

(declare-fun setNonEmpty!49768 () Bool)

(declare-fun inv!86755 (Context!13108) Bool)

(assert (=> setNonEmpty!49768 (= setRes!49768 (and tp!1939774 (inv!86755 setElem!49768) e!4240174))))

(declare-fun setRest!49768 () (Set Context!13108))

(assert (=> setNonEmpty!49768 (= z1!570 (set.union (set.insert setElem!49768 (as set.empty (Set Context!13108))) setRest!49768))))

(declare-fun b!7053087 () Bool)

(declare-fun e!4240170 () Bool)

(assert (=> b!7053087 (= e!4240169 e!4240170)))

(declare-fun res!2879403 () Bool)

(assert (=> b!7053087 (=> res!2879403 e!4240170)))

(declare-fun lt!2530465 () (Set Context!13108))

(assert (=> b!7053087 (= res!2879403 (not (= lt!2530465 lt!2530462)))))

(assert (=> b!7053087 (= lt!2530465 (set.insert lt!2530460 (as set.empty (Set Context!13108))))))

(declare-fun lt!2530461 () Unit!161789)

(assert (=> b!7053087 (= lt!2530461 (lemmaConcatPreservesForall!869 (exprs!7054 lt!2530474) (exprs!7054 ct2!306) lambda!419558))))

(declare-fun setIsEmpty!49768 () Bool)

(assert (=> setIsEmpty!49768 setRes!49768))

(declare-fun b!7053088 () Bool)

(declare-fun tp!1939775 () Bool)

(assert (=> b!7053088 (= e!4240174 tp!1939775)))

(assert (=> b!7053089 (= e!4240170 e!4240166)))

(declare-fun res!2879410 () Bool)

(assert (=> b!7053089 (=> res!2879410 e!4240166)))

(declare-fun lt!2530459 () (Set Context!13108))

(declare-fun derivationStepZipper!3008 ((Set Context!13108) C!35386) (Set Context!13108))

(assert (=> b!7053089 (= res!2879410 (not (= (derivationStepZipper!3008 lt!2530465 (h!74525 s!7408)) lt!2530459)))))

(declare-fun lambda!419559 () Int)

(declare-fun flatMap!2484 ((Set Context!13108) Int) (Set Context!13108))

(declare-fun derivationStepZipperUp!2142 (Context!13108 C!35386) (Set Context!13108))

(assert (=> b!7053089 (= (flatMap!2484 lt!2530465 lambda!419559) (derivationStepZipperUp!2142 lt!2530460 (h!74525 s!7408)))))

(declare-fun lt!2530472 () Unit!161789)

(declare-fun lemmaFlatMapOnSingletonSet!1993 ((Set Context!13108) Context!13108 Int) Unit!161789)

(assert (=> b!7053089 (= lt!2530472 (lemmaFlatMapOnSingletonSet!1993 lt!2530465 lt!2530460 lambda!419559))))

(assert (=> b!7053089 (= lt!2530459 (derivationStepZipperUp!2142 lt!2530460 (h!74525 s!7408)))))

(declare-fun lt!2530464 () Unit!161789)

(assert (=> b!7053089 (= lt!2530464 (lemmaConcatPreservesForall!869 (exprs!7054 lt!2530474) (exprs!7054 ct2!306) lambda!419558))))

(declare-fun b!7053090 () Bool)

(declare-fun e!4240171 () Bool)

(declare-fun tp!1939776 () Bool)

(assert (=> b!7053090 (= e!4240171 tp!1939776)))

(declare-fun b!7053091 () Bool)

(declare-fun res!2879405 () Bool)

(assert (=> b!7053091 (=> (not res!2879405) (not e!4240167))))

(assert (=> b!7053091 (= res!2879405 (is-Cons!68077 s!7408))))

(declare-fun b!7053092 () Bool)

(declare-fun e!4240168 () Bool)

(declare-fun lt!2530470 () List!68200)

(assert (=> b!7053092 (= e!4240168 (inv!86755 (Context!13109 (++!15641 lt!2530470 (exprs!7054 ct2!306)))))))

(declare-fun lt!2530471 () Unit!161789)

(assert (=> b!7053092 (= lt!2530471 (lemmaConcatPreservesForall!869 lt!2530470 (exprs!7054 ct2!306) lambda!419558))))

(declare-fun lt!2530469 () Unit!161789)

(assert (=> b!7053092 (= lt!2530469 (lemmaConcatPreservesForall!869 lt!2530470 (exprs!7054 ct2!306) lambda!419558))))

(declare-fun b!7053086 () Bool)

(assert (=> b!7053086 (= e!4240166 e!4240168)))

(declare-fun res!2879404 () Bool)

(assert (=> b!7053086 (=> res!2879404 e!4240168)))

(declare-fun nullable!7241 (Regex!17558) Bool)

(assert (=> b!7053086 (= res!2879404 (not (nullable!7241 (h!74524 (exprs!7054 lt!2530474)))))))

(declare-fun tail!13678 (List!68200) List!68200)

(assert (=> b!7053086 (= lt!2530470 (tail!13678 (exprs!7054 lt!2530474)))))

(declare-fun res!2879406 () Bool)

(assert (=> start!683726 (=> (not res!2879406) (not e!4240167))))

(assert (=> start!683726 (= res!2879406 (matchZipper!3098 lt!2530473 s!7408))))

(declare-fun appendTo!679 ((Set Context!13108) Context!13108) (Set Context!13108))

(assert (=> start!683726 (= lt!2530473 (appendTo!679 z1!570 ct2!306))))

(assert (=> start!683726 e!4240167))

(declare-fun condSetEmpty!49768 () Bool)

(assert (=> start!683726 (= condSetEmpty!49768 (= z1!570 (as set.empty (Set Context!13108))))))

(assert (=> start!683726 setRes!49768))

(assert (=> start!683726 (and (inv!86755 ct2!306) e!4240171)))

(assert (=> start!683726 e!4240172))

(assert (= (and start!683726 res!2879406) b!7053091))

(assert (= (and b!7053091 res!2879405) b!7053084))

(assert (= (and b!7053084 (not res!2879407)) b!7053082))

(assert (= (and b!7053082 (not res!2879409)) b!7053080))

(assert (= (and b!7053080 (not res!2879401)) b!7053087))

(assert (= (and b!7053087 (not res!2879403)) b!7053089))

(assert (= (and b!7053089 (not res!2879410)) b!7053081))

(assert (= (and b!7053081 (not res!2879408)) b!7053085))

(assert (= (and b!7053085 (not res!2879402)) b!7053086))

(assert (= (and b!7053086 (not res!2879404)) b!7053092))

(assert (= (and start!683726 condSetEmpty!49768) setIsEmpty!49768))

(assert (= (and start!683726 (not condSetEmpty!49768)) setNonEmpty!49768))

(assert (= setNonEmpty!49768 b!7053088))

(assert (= start!683726 b!7053090))

(assert (= (and start!683726 (is-Cons!68077 s!7408)) b!7053083))

(declare-fun m!7769998 () Bool)

(assert (=> b!7053086 m!7769998))

(declare-fun m!7770000 () Bool)

(assert (=> b!7053086 m!7770000))

(declare-fun m!7770002 () Bool)

(assert (=> b!7053080 m!7770002))

(declare-fun m!7770004 () Bool)

(assert (=> b!7053080 m!7770004))

(declare-fun m!7770006 () Bool)

(assert (=> b!7053080 m!7770006))

(declare-fun m!7770008 () Bool)

(assert (=> b!7053080 m!7770008))

(declare-fun m!7770010 () Bool)

(assert (=> b!7053092 m!7770010))

(declare-fun m!7770012 () Bool)

(assert (=> b!7053092 m!7770012))

(declare-fun m!7770014 () Bool)

(assert (=> b!7053092 m!7770014))

(assert (=> b!7053092 m!7770014))

(declare-fun m!7770016 () Bool)

(assert (=> b!7053087 m!7770016))

(assert (=> b!7053087 m!7770006))

(declare-fun m!7770018 () Bool)

(assert (=> start!683726 m!7770018))

(declare-fun m!7770020 () Bool)

(assert (=> start!683726 m!7770020))

(declare-fun m!7770022 () Bool)

(assert (=> start!683726 m!7770022))

(declare-fun m!7770024 () Bool)

(assert (=> b!7053082 m!7770024))

(declare-fun m!7770026 () Bool)

(assert (=> setNonEmpty!49768 m!7770026))

(declare-fun m!7770028 () Bool)

(assert (=> b!7053084 m!7770028))

(declare-fun m!7770030 () Bool)

(assert (=> b!7053084 m!7770030))

(declare-fun m!7770032 () Bool)

(assert (=> b!7053084 m!7770032))

(declare-fun m!7770034 () Bool)

(assert (=> b!7053084 m!7770034))

(declare-fun m!7770036 () Bool)

(assert (=> b!7053084 m!7770036))

(declare-fun m!7770038 () Bool)

(assert (=> b!7053084 m!7770038))

(declare-fun m!7770040 () Bool)

(assert (=> b!7053085 m!7770040))

(assert (=> b!7053089 m!7770006))

(declare-fun m!7770042 () Bool)

(assert (=> b!7053089 m!7770042))

(declare-fun m!7770044 () Bool)

(assert (=> b!7053089 m!7770044))

(declare-fun m!7770046 () Bool)

(assert (=> b!7053089 m!7770046))

(declare-fun m!7770048 () Bool)

(assert (=> b!7053089 m!7770048))

(push 1)

(assert (not b!7053080))

(assert tp_is_empty!44341)

(assert (not start!683726))

(assert (not b!7053083))

(assert (not b!7053087))

(assert (not b!7053084))

(assert (not b!7053092))

(assert (not setNonEmpty!49768))

(assert (not b!7053090))

(assert (not b!7053086))

(assert (not b!7053088))

(assert (not b!7053089))

(assert (not b!7053085))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2204055 () Bool)

(declare-fun forall!16497 (List!68200 Int) Bool)

(assert (=> d!2204055 (forall!16497 (++!15641 (exprs!7054 lt!2530474) (exprs!7054 ct2!306)) lambda!419558)))

(declare-fun lt!2530527 () Unit!161789)

(declare-fun choose!53744 (List!68200 List!68200 Int) Unit!161789)

(assert (=> d!2204055 (= lt!2530527 (choose!53744 (exprs!7054 lt!2530474) (exprs!7054 ct2!306) lambda!419558))))

(assert (=> d!2204055 (forall!16497 (exprs!7054 lt!2530474) lambda!419558)))

(assert (=> d!2204055 (= (lemmaConcatPreservesForall!869 (exprs!7054 lt!2530474) (exprs!7054 ct2!306) lambda!419558) lt!2530527)))

(declare-fun bs!1876637 () Bool)

(assert (= bs!1876637 d!2204055))

(assert (=> bs!1876637 m!7770004))

(assert (=> bs!1876637 m!7770004))

(declare-fun m!7770104 () Bool)

(assert (=> bs!1876637 m!7770104))

(declare-fun m!7770106 () Bool)

(assert (=> bs!1876637 m!7770106))

(declare-fun m!7770108 () Bool)

(assert (=> bs!1876637 m!7770108))

(assert (=> b!7053087 d!2204055))

(declare-fun bs!1876638 () Bool)

(declare-fun d!2204057 () Bool)

(assert (= bs!1876638 (and d!2204057 b!7053080)))

(declare-fun lambda!419589 () Int)

(assert (=> bs!1876638 (= lambda!419589 lambda!419558)))

(assert (=> d!2204057 (= (inv!86755 (Context!13109 (++!15641 lt!2530470 (exprs!7054 ct2!306)))) (forall!16497 (exprs!7054 (Context!13109 (++!15641 lt!2530470 (exprs!7054 ct2!306)))) lambda!419589))))

(declare-fun bs!1876639 () Bool)

(assert (= bs!1876639 d!2204057))

(declare-fun m!7770110 () Bool)

(assert (=> bs!1876639 m!7770110))

(assert (=> b!7053092 d!2204057))

(declare-fun b!7053158 () Bool)

(declare-fun e!4240209 () List!68200)

(assert (=> b!7053158 (= e!4240209 (exprs!7054 ct2!306))))

(declare-fun d!2204059 () Bool)

(declare-fun e!4240210 () Bool)

(assert (=> d!2204059 e!4240210))

(declare-fun res!2879448 () Bool)

(assert (=> d!2204059 (=> (not res!2879448) (not e!4240210))))

(declare-fun lt!2530530 () List!68200)

(declare-fun content!13667 (List!68200) (Set Regex!17558))

(assert (=> d!2204059 (= res!2879448 (= (content!13667 lt!2530530) (set.union (content!13667 lt!2530470) (content!13667 (exprs!7054 ct2!306)))))))

(assert (=> d!2204059 (= lt!2530530 e!4240209)))

(declare-fun c!1313802 () Bool)

(assert (=> d!2204059 (= c!1313802 (is-Nil!68076 lt!2530470))))

(assert (=> d!2204059 (= (++!15641 lt!2530470 (exprs!7054 ct2!306)) lt!2530530)))

(declare-fun b!7053159 () Bool)

(assert (=> b!7053159 (= e!4240209 (Cons!68076 (h!74524 lt!2530470) (++!15641 (t!381979 lt!2530470) (exprs!7054 ct2!306))))))

(declare-fun b!7053161 () Bool)

(assert (=> b!7053161 (= e!4240210 (or (not (= (exprs!7054 ct2!306) Nil!68076)) (= lt!2530530 lt!2530470)))))

(declare-fun b!7053160 () Bool)

(declare-fun res!2879447 () Bool)

(assert (=> b!7053160 (=> (not res!2879447) (not e!4240210))))

(declare-fun size!41142 (List!68200) Int)

(assert (=> b!7053160 (= res!2879447 (= (size!41142 lt!2530530) (+ (size!41142 lt!2530470) (size!41142 (exprs!7054 ct2!306)))))))

(assert (= (and d!2204059 c!1313802) b!7053158))

(assert (= (and d!2204059 (not c!1313802)) b!7053159))

(assert (= (and d!2204059 res!2879448) b!7053160))

(assert (= (and b!7053160 res!2879447) b!7053161))

(declare-fun m!7770124 () Bool)

(assert (=> d!2204059 m!7770124))

(declare-fun m!7770126 () Bool)

(assert (=> d!2204059 m!7770126))

(declare-fun m!7770128 () Bool)

(assert (=> d!2204059 m!7770128))

(declare-fun m!7770130 () Bool)

(assert (=> b!7053159 m!7770130))

(declare-fun m!7770132 () Bool)

(assert (=> b!7053160 m!7770132))

(declare-fun m!7770134 () Bool)

(assert (=> b!7053160 m!7770134))

(declare-fun m!7770136 () Bool)

(assert (=> b!7053160 m!7770136))

(assert (=> b!7053092 d!2204059))

(declare-fun d!2204063 () Bool)

(assert (=> d!2204063 (forall!16497 (++!15641 lt!2530470 (exprs!7054 ct2!306)) lambda!419558)))

(declare-fun lt!2530531 () Unit!161789)

(assert (=> d!2204063 (= lt!2530531 (choose!53744 lt!2530470 (exprs!7054 ct2!306) lambda!419558))))

(assert (=> d!2204063 (forall!16497 lt!2530470 lambda!419558)))

(assert (=> d!2204063 (= (lemmaConcatPreservesForall!869 lt!2530470 (exprs!7054 ct2!306) lambda!419558) lt!2530531)))

(declare-fun bs!1876640 () Bool)

(assert (= bs!1876640 d!2204063))

(assert (=> bs!1876640 m!7770010))

(assert (=> bs!1876640 m!7770010))

(declare-fun m!7770138 () Bool)

(assert (=> bs!1876640 m!7770138))

(declare-fun m!7770140 () Bool)

(assert (=> bs!1876640 m!7770140))

(declare-fun m!7770142 () Bool)

(assert (=> bs!1876640 m!7770142))

(assert (=> b!7053092 d!2204063))

(declare-fun d!2204065 () Bool)

(declare-fun e!4240213 () Bool)

(assert (=> d!2204065 e!4240213))

(declare-fun res!2879451 () Bool)

(assert (=> d!2204065 (=> (not res!2879451) (not e!4240213))))

(declare-fun lt!2530534 () List!68202)

(declare-fun noDuplicate!2681 (List!68202) Bool)

(assert (=> d!2204065 (= res!2879451 (noDuplicate!2681 lt!2530534))))

(declare-fun choose!53745 ((Set Context!13108)) List!68202)

(assert (=> d!2204065 (= lt!2530534 (choose!53745 lt!2530473))))

(assert (=> d!2204065 (= (toList!10899 lt!2530473) lt!2530534)))

(declare-fun b!7053164 () Bool)

(declare-fun content!13668 (List!68202) (Set Context!13108))

(assert (=> b!7053164 (= e!4240213 (= (content!13668 lt!2530534) lt!2530473))))

(assert (= (and d!2204065 res!2879451) b!7053164))

(declare-fun m!7770144 () Bool)

(assert (=> d!2204065 m!7770144))

(declare-fun m!7770146 () Bool)

(assert (=> d!2204065 m!7770146))

(declare-fun m!7770148 () Bool)

(assert (=> b!7053164 m!7770148))

(assert (=> b!7053084 d!2204065))

(declare-fun bs!1876641 () Bool)

(declare-fun d!2204067 () Bool)

(assert (= bs!1876641 (and d!2204067 b!7053084)))

(declare-fun lambda!419596 () Int)

(assert (=> bs!1876641 (not (= lambda!419596 lambda!419556))))

(assert (=> d!2204067 true))

(declare-fun order!28293 () Int)

(declare-fun dynLambda!27602 (Int Int) Int)

(assert (=> d!2204067 (< (dynLambda!27602 order!28293 lambda!419556) (dynLambda!27602 order!28293 lambda!419596))))

(declare-fun forall!16498 (List!68202 Int) Bool)

(assert (=> d!2204067 (= (exists!3539 lt!2530467 lambda!419556) (not (forall!16498 lt!2530467 lambda!419596)))))

(declare-fun bs!1876642 () Bool)

(assert (= bs!1876642 d!2204067))

(declare-fun m!7770150 () Bool)

(assert (=> bs!1876642 m!7770150))

(assert (=> b!7053084 d!2204067))

(declare-fun d!2204069 () Bool)

(declare-fun c!1313806 () Bool)

(declare-fun isEmpty!39708 (List!68201) Bool)

(assert (=> d!2204069 (= c!1313806 (isEmpty!39708 s!7408))))

(declare-fun e!4240216 () Bool)

(assert (=> d!2204069 (= (matchZipper!3098 lt!2530462 s!7408) e!4240216)))

(declare-fun b!7053171 () Bool)

(declare-fun nullableZipper!2647 ((Set Context!13108)) Bool)

(assert (=> b!7053171 (= e!4240216 (nullableZipper!2647 lt!2530462))))

(declare-fun b!7053172 () Bool)

(declare-fun head!14348 (List!68201) C!35386)

(declare-fun tail!13680 (List!68201) List!68201)

(assert (=> b!7053172 (= e!4240216 (matchZipper!3098 (derivationStepZipper!3008 lt!2530462 (head!14348 s!7408)) (tail!13680 s!7408)))))

(assert (= (and d!2204069 c!1313806) b!7053171))

(assert (= (and d!2204069 (not c!1313806)) b!7053172))

(declare-fun m!7770158 () Bool)

(assert (=> d!2204069 m!7770158))

(declare-fun m!7770160 () Bool)

(assert (=> b!7053171 m!7770160))

(declare-fun m!7770162 () Bool)

(assert (=> b!7053172 m!7770162))

(assert (=> b!7053172 m!7770162))

(declare-fun m!7770164 () Bool)

(assert (=> b!7053172 m!7770164))

(declare-fun m!7770166 () Bool)

(assert (=> b!7053172 m!7770166))

(assert (=> b!7053172 m!7770164))

(assert (=> b!7053172 m!7770166))

(declare-fun m!7770168 () Bool)

(assert (=> b!7053172 m!7770168))

(assert (=> b!7053084 d!2204069))

(declare-fun bs!1876649 () Bool)

(declare-fun d!2204077 () Bool)

(assert (= bs!1876649 (and d!2204077 b!7053084)))

(declare-fun lambda!419601 () Int)

(assert (=> bs!1876649 (= lambda!419601 lambda!419556)))

(declare-fun bs!1876650 () Bool)

(assert (= bs!1876650 (and d!2204077 d!2204067)))

(assert (=> bs!1876650 (not (= lambda!419601 lambda!419596))))

(assert (=> d!2204077 true))

(assert (=> d!2204077 (exists!3539 lt!2530467 lambda!419601)))

(declare-fun lt!2530539 () Unit!161789)

(declare-fun choose!53746 (List!68202 List!68201) Unit!161789)

(assert (=> d!2204077 (= lt!2530539 (choose!53746 lt!2530467 s!7408))))

(assert (=> d!2204077 (matchZipper!3098 (content!13668 lt!2530467) s!7408)))

(assert (=> d!2204077 (= (lemmaZipperMatchesExistsMatchingContext!479 lt!2530467 s!7408) lt!2530539)))

(declare-fun bs!1876651 () Bool)

(assert (= bs!1876651 d!2204077))

(declare-fun m!7770170 () Bool)

(assert (=> bs!1876651 m!7770170))

(declare-fun m!7770172 () Bool)

(assert (=> bs!1876651 m!7770172))

(declare-fun m!7770174 () Bool)

(assert (=> bs!1876651 m!7770174))

(assert (=> bs!1876651 m!7770174))

(declare-fun m!7770176 () Bool)

(assert (=> bs!1876651 m!7770176))

(assert (=> b!7053084 d!2204077))

(declare-fun d!2204079 () Bool)

(declare-fun e!4240228 () Bool)

(assert (=> d!2204079 e!4240228))

(declare-fun res!2879457 () Bool)

(assert (=> d!2204079 (=> (not res!2879457) (not e!4240228))))

(declare-fun lt!2530542 () Context!13108)

(declare-fun dynLambda!27603 (Int Context!13108) Bool)

(assert (=> d!2204079 (= res!2879457 (dynLambda!27603 lambda!419556 lt!2530542))))

(declare-fun getWitness!1615 (List!68202 Int) Context!13108)

(assert (=> d!2204079 (= lt!2530542 (getWitness!1615 (toList!10899 lt!2530473) lambda!419556))))

(declare-fun exists!3541 ((Set Context!13108) Int) Bool)

(assert (=> d!2204079 (exists!3541 lt!2530473 lambda!419556)))

(assert (=> d!2204079 (= (getWitness!1613 lt!2530473 lambda!419556) lt!2530542)))

(declare-fun b!7053190 () Bool)

(assert (=> b!7053190 (= e!4240228 (set.member lt!2530542 lt!2530473))))

(assert (= (and d!2204079 res!2879457) b!7053190))

(declare-fun b_lambda!268523 () Bool)

(assert (=> (not b_lambda!268523) (not d!2204079)))

(declare-fun m!7770178 () Bool)

(assert (=> d!2204079 m!7770178))

(assert (=> d!2204079 m!7770036))

(assert (=> d!2204079 m!7770036))

(declare-fun m!7770180 () Bool)

(assert (=> d!2204079 m!7770180))

(declare-fun m!7770182 () Bool)

(assert (=> d!2204079 m!7770182))

(declare-fun m!7770184 () Bool)

(assert (=> b!7053190 m!7770184))

(assert (=> b!7053084 d!2204079))

(declare-fun b!7053191 () Bool)

(declare-fun e!4240229 () List!68200)

(assert (=> b!7053191 (= e!4240229 (exprs!7054 ct2!306))))

(declare-fun d!2204081 () Bool)

(declare-fun e!4240230 () Bool)

(assert (=> d!2204081 e!4240230))

(declare-fun res!2879459 () Bool)

(assert (=> d!2204081 (=> (not res!2879459) (not e!4240230))))

(declare-fun lt!2530543 () List!68200)

(assert (=> d!2204081 (= res!2879459 (= (content!13667 lt!2530543) (set.union (content!13667 (exprs!7054 lt!2530474)) (content!13667 (exprs!7054 ct2!306)))))))

(assert (=> d!2204081 (= lt!2530543 e!4240229)))

(declare-fun c!1313815 () Bool)

(assert (=> d!2204081 (= c!1313815 (is-Nil!68076 (exprs!7054 lt!2530474)))))

(assert (=> d!2204081 (= (++!15641 (exprs!7054 lt!2530474) (exprs!7054 ct2!306)) lt!2530543)))

(declare-fun b!7053192 () Bool)

(assert (=> b!7053192 (= e!4240229 (Cons!68076 (h!74524 (exprs!7054 lt!2530474)) (++!15641 (t!381979 (exprs!7054 lt!2530474)) (exprs!7054 ct2!306))))))

(declare-fun b!7053194 () Bool)

(assert (=> b!7053194 (= e!4240230 (or (not (= (exprs!7054 ct2!306) Nil!68076)) (= lt!2530543 (exprs!7054 lt!2530474))))))

(declare-fun b!7053193 () Bool)

(declare-fun res!2879458 () Bool)

(assert (=> b!7053193 (=> (not res!2879458) (not e!4240230))))

(assert (=> b!7053193 (= res!2879458 (= (size!41142 lt!2530543) (+ (size!41142 (exprs!7054 lt!2530474)) (size!41142 (exprs!7054 ct2!306)))))))

(assert (= (and d!2204081 c!1313815) b!7053191))

(assert (= (and d!2204081 (not c!1313815)) b!7053192))

(assert (= (and d!2204081 res!2879459) b!7053193))

(assert (= (and b!7053193 res!2879458) b!7053194))

(declare-fun m!7770192 () Bool)

(assert (=> d!2204081 m!7770192))

(declare-fun m!7770194 () Bool)

(assert (=> d!2204081 m!7770194))

(assert (=> d!2204081 m!7770128))

(declare-fun m!7770196 () Bool)

(assert (=> b!7053192 m!7770196))

(declare-fun m!7770198 () Bool)

(assert (=> b!7053193 m!7770198))

(declare-fun m!7770200 () Bool)

(assert (=> b!7053193 m!7770200))

(assert (=> b!7053193 m!7770136))

(assert (=> b!7053080 d!2204081))

(assert (=> b!7053080 d!2204055))

(declare-fun d!2204085 () Bool)

(declare-fun e!4240233 () Bool)

(assert (=> d!2204085 e!4240233))

(declare-fun res!2879462 () Bool)

(assert (=> d!2204085 (=> (not res!2879462) (not e!4240233))))

(declare-fun lt!2530546 () Context!13108)

(declare-fun dynLambda!27604 (Int Context!13108) Context!13108)

(assert (=> d!2204085 (= res!2879462 (= lt!2530468 (dynLambda!27604 lambda!419557 lt!2530546)))))

(declare-fun choose!53747 ((Set Context!13108) Int Context!13108) Context!13108)

(assert (=> d!2204085 (= lt!2530546 (choose!53747 z1!570 lambda!419557 lt!2530468))))

(declare-fun map!15876 ((Set Context!13108) Int) (Set Context!13108))

(assert (=> d!2204085 (set.member lt!2530468 (map!15876 z1!570 lambda!419557))))

(assert (=> d!2204085 (= (mapPost2!387 z1!570 lambda!419557 lt!2530468) lt!2530546)))

(declare-fun b!7053198 () Bool)

(assert (=> b!7053198 (= e!4240233 (set.member lt!2530546 z1!570))))

(assert (= (and d!2204085 res!2879462) b!7053198))

(declare-fun b_lambda!268525 () Bool)

(assert (=> (not b_lambda!268525) (not d!2204085)))

(declare-fun m!7770202 () Bool)

(assert (=> d!2204085 m!7770202))

(declare-fun m!7770204 () Bool)

(assert (=> d!2204085 m!7770204))

(declare-fun m!7770206 () Bool)

(assert (=> d!2204085 m!7770206))

(declare-fun m!7770208 () Bool)

(assert (=> d!2204085 m!7770208))

(declare-fun m!7770210 () Bool)

(assert (=> b!7053198 m!7770210))

(assert (=> b!7053080 d!2204085))

(declare-fun d!2204087 () Bool)

(assert (=> d!2204087 (= (isEmpty!39706 (exprs!7054 lt!2530474)) (is-Nil!68076 (exprs!7054 lt!2530474)))))

(assert (=> b!7053085 d!2204087))

(declare-fun bs!1876653 () Bool)

(declare-fun d!2204089 () Bool)

(assert (= bs!1876653 (and d!2204089 b!7053080)))

(declare-fun lambda!419605 () Int)

(assert (=> bs!1876653 (= lambda!419605 lambda!419558)))

(declare-fun bs!1876655 () Bool)

(assert (= bs!1876655 (and d!2204089 d!2204057)))

(assert (=> bs!1876655 (= lambda!419605 lambda!419589)))

(assert (=> d!2204089 (= (inv!86755 setElem!49768) (forall!16497 (exprs!7054 setElem!49768) lambda!419605))))

(declare-fun bs!1876656 () Bool)

(assert (= bs!1876656 d!2204089))

(declare-fun m!7770214 () Bool)

(assert (=> bs!1876656 m!7770214))

(assert (=> setNonEmpty!49768 d!2204089))

(declare-fun d!2204093 () Bool)

(declare-fun c!1313818 () Bool)

(assert (=> d!2204093 (= c!1313818 (isEmpty!39708 s!7408))))

(declare-fun e!4240234 () Bool)

(assert (=> d!2204093 (= (matchZipper!3098 lt!2530473 s!7408) e!4240234)))

(declare-fun b!7053201 () Bool)

(assert (=> b!7053201 (= e!4240234 (nullableZipper!2647 lt!2530473))))

(declare-fun b!7053202 () Bool)

(assert (=> b!7053202 (= e!4240234 (matchZipper!3098 (derivationStepZipper!3008 lt!2530473 (head!14348 s!7408)) (tail!13680 s!7408)))))

(assert (= (and d!2204093 c!1313818) b!7053201))

(assert (= (and d!2204093 (not c!1313818)) b!7053202))

(assert (=> d!2204093 m!7770158))

(declare-fun m!7770216 () Bool)

(assert (=> b!7053201 m!7770216))

(assert (=> b!7053202 m!7770162))

(assert (=> b!7053202 m!7770162))

(declare-fun m!7770218 () Bool)

(assert (=> b!7053202 m!7770218))

(assert (=> b!7053202 m!7770166))

(assert (=> b!7053202 m!7770218))

(assert (=> b!7053202 m!7770166))

(declare-fun m!7770220 () Bool)

(assert (=> b!7053202 m!7770220))

(assert (=> start!683726 d!2204093))

(declare-fun bs!1876658 () Bool)

(declare-fun d!2204095 () Bool)

(assert (= bs!1876658 (and d!2204095 b!7053080)))

(declare-fun lambda!419610 () Int)

(assert (=> bs!1876658 (= lambda!419610 lambda!419557)))

(assert (=> d!2204095 true))

(assert (=> d!2204095 (= (appendTo!679 z1!570 ct2!306) (map!15876 z1!570 lambda!419610))))

(declare-fun bs!1876659 () Bool)

(assert (= bs!1876659 d!2204095))

(declare-fun m!7770226 () Bool)

(assert (=> bs!1876659 m!7770226))

(assert (=> start!683726 d!2204095))

(declare-fun bs!1876660 () Bool)

(declare-fun d!2204099 () Bool)

(assert (= bs!1876660 (and d!2204099 b!7053080)))

(declare-fun lambda!419611 () Int)

(assert (=> bs!1876660 (= lambda!419611 lambda!419558)))

(declare-fun bs!1876661 () Bool)

(assert (= bs!1876661 (and d!2204099 d!2204057)))

(assert (=> bs!1876661 (= lambda!419611 lambda!419589)))

(declare-fun bs!1876662 () Bool)

(assert (= bs!1876662 (and d!2204099 d!2204089)))

(assert (=> bs!1876662 (= lambda!419611 lambda!419605)))

(assert (=> d!2204099 (= (inv!86755 ct2!306) (forall!16497 (exprs!7054 ct2!306) lambda!419611))))

(declare-fun bs!1876663 () Bool)

(assert (= bs!1876663 d!2204099))

(declare-fun m!7770228 () Bool)

(assert (=> bs!1876663 m!7770228))

(assert (=> start!683726 d!2204099))

(declare-fun b!7053213 () Bool)

(declare-fun e!4240241 () (Set Context!13108))

(declare-fun call!640671 () (Set Context!13108))

(assert (=> b!7053213 (= e!4240241 call!640671)))

(declare-fun b!7053214 () Bool)

(declare-fun e!4240243 () (Set Context!13108))

(assert (=> b!7053214 (= e!4240243 e!4240241)))

(declare-fun c!1313825 () Bool)

(assert (=> b!7053214 (= c!1313825 (is-Cons!68076 (exprs!7054 lt!2530460)))))

(declare-fun d!2204101 () Bool)

(declare-fun c!1313824 () Bool)

(declare-fun e!4240242 () Bool)

(assert (=> d!2204101 (= c!1313824 e!4240242)))

(declare-fun res!2879465 () Bool)

(assert (=> d!2204101 (=> (not res!2879465) (not e!4240242))))

(assert (=> d!2204101 (= res!2879465 (is-Cons!68076 (exprs!7054 lt!2530460)))))

(assert (=> d!2204101 (= (derivationStepZipperUp!2142 lt!2530460 (h!74525 s!7408)) e!4240243)))

(declare-fun b!7053215 () Bool)

(assert (=> b!7053215 (= e!4240243 (set.union call!640671 (derivationStepZipperUp!2142 (Context!13109 (t!381979 (exprs!7054 lt!2530460))) (h!74525 s!7408))))))

(declare-fun b!7053216 () Bool)

(assert (=> b!7053216 (= e!4240241 (as set.empty (Set Context!13108)))))

(declare-fun b!7053217 () Bool)

(assert (=> b!7053217 (= e!4240242 (nullable!7241 (h!74524 (exprs!7054 lt!2530460))))))

(declare-fun bm!640666 () Bool)

(declare-fun derivationStepZipperDown!2192 (Regex!17558 Context!13108 C!35386) (Set Context!13108))

(assert (=> bm!640666 (= call!640671 (derivationStepZipperDown!2192 (h!74524 (exprs!7054 lt!2530460)) (Context!13109 (t!381979 (exprs!7054 lt!2530460))) (h!74525 s!7408)))))

(assert (= (and d!2204101 res!2879465) b!7053217))

(assert (= (and d!2204101 c!1313824) b!7053215))

(assert (= (and d!2204101 (not c!1313824)) b!7053214))

(assert (= (and b!7053214 c!1313825) b!7053213))

(assert (= (and b!7053214 (not c!1313825)) b!7053216))

(assert (= (or b!7053215 b!7053213) bm!640666))

(declare-fun m!7770236 () Bool)

(assert (=> b!7053215 m!7770236))

(declare-fun m!7770238 () Bool)

(assert (=> b!7053217 m!7770238))

(declare-fun m!7770240 () Bool)

(assert (=> bm!640666 m!7770240))

(assert (=> b!7053089 d!2204101))

(assert (=> b!7053089 d!2204055))

(declare-fun d!2204105 () Bool)

(declare-fun choose!53748 ((Set Context!13108) Int) (Set Context!13108))

(assert (=> d!2204105 (= (flatMap!2484 lt!2530465 lambda!419559) (choose!53748 lt!2530465 lambda!419559))))

(declare-fun bs!1876665 () Bool)

(assert (= bs!1876665 d!2204105))

(declare-fun m!7770242 () Bool)

(assert (=> bs!1876665 m!7770242))

(assert (=> b!7053089 d!2204105))

(declare-fun d!2204107 () Bool)

(declare-fun dynLambda!27605 (Int Context!13108) (Set Context!13108))

(assert (=> d!2204107 (= (flatMap!2484 lt!2530465 lambda!419559) (dynLambda!27605 lambda!419559 lt!2530460))))

(declare-fun lt!2530557 () Unit!161789)

(declare-fun choose!53749 ((Set Context!13108) Context!13108 Int) Unit!161789)

(assert (=> d!2204107 (= lt!2530557 (choose!53749 lt!2530465 lt!2530460 lambda!419559))))

(assert (=> d!2204107 (= lt!2530465 (set.insert lt!2530460 (as set.empty (Set Context!13108))))))

(assert (=> d!2204107 (= (lemmaFlatMapOnSingletonSet!1993 lt!2530465 lt!2530460 lambda!419559) lt!2530557)))

(declare-fun b_lambda!268529 () Bool)

(assert (=> (not b_lambda!268529) (not d!2204107)))

(declare-fun bs!1876668 () Bool)

(assert (= bs!1876668 d!2204107))

(assert (=> bs!1876668 m!7770046))

(declare-fun m!7770246 () Bool)

(assert (=> bs!1876668 m!7770246))

(declare-fun m!7770248 () Bool)

(assert (=> bs!1876668 m!7770248))

(assert (=> bs!1876668 m!7770016))

(assert (=> b!7053089 d!2204107))

(declare-fun bs!1876669 () Bool)

(declare-fun d!2204111 () Bool)

(assert (= bs!1876669 (and d!2204111 b!7053089)))

(declare-fun lambda!419617 () Int)

(assert (=> bs!1876669 (= lambda!419617 lambda!419559)))

(assert (=> d!2204111 true))

(assert (=> d!2204111 (= (derivationStepZipper!3008 lt!2530465 (h!74525 s!7408)) (flatMap!2484 lt!2530465 lambda!419617))))

(declare-fun bs!1876670 () Bool)

(assert (= bs!1876670 d!2204111))

(declare-fun m!7770250 () Bool)

(assert (=> bs!1876670 m!7770250))

(assert (=> b!7053089 d!2204111))

(declare-fun d!2204113 () Bool)

(declare-fun nullableFct!2766 (Regex!17558) Bool)

(assert (=> d!2204113 (= (nullable!7241 (h!74524 (exprs!7054 lt!2530474))) (nullableFct!2766 (h!74524 (exprs!7054 lt!2530474))))))

(declare-fun bs!1876671 () Bool)

(assert (= bs!1876671 d!2204113))

(declare-fun m!7770252 () Bool)

(assert (=> bs!1876671 m!7770252))

(assert (=> b!7053086 d!2204113))

(declare-fun d!2204115 () Bool)

(assert (=> d!2204115 (= (tail!13678 (exprs!7054 lt!2530474)) (t!381979 (exprs!7054 lt!2530474)))))

(assert (=> b!7053086 d!2204115))

(declare-fun b!7053226 () Bool)

(declare-fun e!4240246 () Bool)

(declare-fun tp!1939791 () Bool)

(assert (=> b!7053226 (= e!4240246 (and tp_is_empty!44341 tp!1939791))))

(assert (=> b!7053083 (= tp!1939773 e!4240246)))

(assert (= (and b!7053083 (is-Cons!68077 (t!381980 s!7408))) b!7053226))

(declare-fun b!7053233 () Bool)

(declare-fun e!4240251 () Bool)

(declare-fun tp!1939796 () Bool)

(declare-fun tp!1939797 () Bool)

(assert (=> b!7053233 (= e!4240251 (and tp!1939796 tp!1939797))))

(assert (=> b!7053088 (= tp!1939775 e!4240251)))

(assert (= (and b!7053088 (is-Cons!68076 (exprs!7054 setElem!49768))) b!7053233))

(declare-fun condSetEmpty!49774 () Bool)

(assert (=> setNonEmpty!49768 (= condSetEmpty!49774 (= setRest!49768 (as set.empty (Set Context!13108))))))

(declare-fun setRes!49774 () Bool)

(assert (=> setNonEmpty!49768 (= tp!1939774 setRes!49774)))

(declare-fun setIsEmpty!49774 () Bool)

(assert (=> setIsEmpty!49774 setRes!49774))

(declare-fun e!4240254 () Bool)

(declare-fun setElem!49774 () Context!13108)

(declare-fun setNonEmpty!49774 () Bool)

(declare-fun tp!1939803 () Bool)

(assert (=> setNonEmpty!49774 (= setRes!49774 (and tp!1939803 (inv!86755 setElem!49774) e!4240254))))

(declare-fun setRest!49774 () (Set Context!13108))

(assert (=> setNonEmpty!49774 (= setRest!49768 (set.union (set.insert setElem!49774 (as set.empty (Set Context!13108))) setRest!49774))))

(declare-fun b!7053238 () Bool)

(declare-fun tp!1939802 () Bool)

(assert (=> b!7053238 (= e!4240254 tp!1939802)))

(assert (= (and setNonEmpty!49768 condSetEmpty!49774) setIsEmpty!49774))

(assert (= (and setNonEmpty!49768 (not condSetEmpty!49774)) setNonEmpty!49774))

(assert (= setNonEmpty!49774 b!7053238))

(declare-fun m!7770254 () Bool)

(assert (=> setNonEmpty!49774 m!7770254))

(declare-fun b!7053239 () Bool)

(declare-fun e!4240255 () Bool)

(declare-fun tp!1939804 () Bool)

(declare-fun tp!1939805 () Bool)

(assert (=> b!7053239 (= e!4240255 (and tp!1939804 tp!1939805))))

(assert (=> b!7053090 (= tp!1939776 e!4240255)))

(assert (= (and b!7053090 (is-Cons!68076 (exprs!7054 ct2!306))) b!7053239))

(declare-fun b_lambda!268531 () Bool)

(assert (= b_lambda!268525 (or b!7053080 b_lambda!268531)))

(declare-fun bs!1876672 () Bool)

(declare-fun d!2204117 () Bool)

(assert (= bs!1876672 (and d!2204117 b!7053080)))

(declare-fun lt!2530560 () Unit!161789)

(assert (=> bs!1876672 (= lt!2530560 (lemmaConcatPreservesForall!869 (exprs!7054 lt!2530546) (exprs!7054 ct2!306) lambda!419558))))

(assert (=> bs!1876672 (= (dynLambda!27604 lambda!419557 lt!2530546) (Context!13109 (++!15641 (exprs!7054 lt!2530546) (exprs!7054 ct2!306))))))

(declare-fun m!7770256 () Bool)

(assert (=> bs!1876672 m!7770256))

(declare-fun m!7770258 () Bool)

(assert (=> bs!1876672 m!7770258))

(assert (=> d!2204085 d!2204117))

(declare-fun b_lambda!268533 () Bool)

(assert (= b_lambda!268529 (or b!7053089 b_lambda!268533)))

(declare-fun bs!1876673 () Bool)

(declare-fun d!2204119 () Bool)

(assert (= bs!1876673 (and d!2204119 b!7053089)))

(assert (=> bs!1876673 (= (dynLambda!27605 lambda!419559 lt!2530460) (derivationStepZipperUp!2142 lt!2530460 (h!74525 s!7408)))))

(assert (=> bs!1876673 m!7770044))

(assert (=> d!2204107 d!2204119))

(declare-fun b_lambda!268535 () Bool)

(assert (= b_lambda!268523 (or b!7053084 b_lambda!268535)))

(declare-fun bs!1876674 () Bool)

(declare-fun d!2204121 () Bool)

(assert (= bs!1876674 (and d!2204121 b!7053084)))

(assert (=> bs!1876674 (= (dynLambda!27603 lambda!419556 lt!2530542) (matchZipper!3098 (set.insert lt!2530542 (as set.empty (Set Context!13108))) s!7408))))

(declare-fun m!7770260 () Bool)

(assert (=> bs!1876674 m!7770260))

(assert (=> bs!1876674 m!7770260))

(declare-fun m!7770262 () Bool)

(assert (=> bs!1876674 m!7770262))

(assert (=> d!2204079 d!2204121))

(push 1)

(assert (not bs!1876672))

(assert (not b!7053159))

(assert (not d!2204079))

(assert (not b!7053164))

(assert (not b!7053217))

(assert (not d!2204089))

(assert (not d!2204099))

(assert (not b!7053215))

(assert (not d!2204081))

(assert (not d!2204111))

(assert (not b!7053193))

(assert (not d!2204107))

(assert (not b_lambda!268535))

(assert (not d!2204069))

(assert (not b!7053171))

(assert (not b!7053202))

(assert (not d!2204077))

(assert (not d!2204113))

(assert (not d!2204063))

(assert tp_is_empty!44341)

(assert (not b_lambda!268533))

(assert (not bs!1876673))

(assert (not bs!1876674))

(assert (not d!2204055))

(assert (not d!2204057))

(assert (not setNonEmpty!49774))

(assert (not b!7053226))

(assert (not b!7053172))

(assert (not d!2204059))

(assert (not bm!640666))

(assert (not d!2204065))

(assert (not b!7053238))

(assert (not b!7053201))

(assert (not b_lambda!268531))

(assert (not b!7053239))

(assert (not d!2204093))

(assert (not b!7053192))

(assert (not d!2204105))

(assert (not d!2204095))

(assert (not d!2204067))

(assert (not d!2204085))

(assert (not b!7053160))

(assert (not b!7053233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

