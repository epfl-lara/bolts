; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683934 () Bool)

(assert start!683934)

(declare-fun b!7053949 () Bool)

(assert (=> b!7053949 true))

(declare-fun b!7053936 () Bool)

(assert (=> b!7053936 true))

(declare-fun b!7053940 () Bool)

(assert (=> b!7053940 true))

(declare-fun setIsEmpty!49804 () Bool)

(declare-fun setRes!49804 () Bool)

(assert (=> setIsEmpty!49804 setRes!49804))

(declare-fun b!7053934 () Bool)

(declare-fun res!2879754 () Bool)

(declare-fun e!4240678 () Bool)

(assert (=> b!7053934 (=> res!2879754 e!4240678)))

(declare-datatypes ((C!35398 0))(
  ( (C!35399 (val!27401 Int)) )
))
(declare-datatypes ((Regex!17564 0))(
  ( (ElementMatch!17564 (c!1314020 C!35398)) (Concat!26409 (regOne!35640 Regex!17564) (regTwo!35640 Regex!17564)) (EmptyExpr!17564) (Star!17564 (reg!17893 Regex!17564)) (EmptyLang!17564) (Union!17564 (regOne!35641 Regex!17564) (regTwo!35641 Regex!17564)) )
))
(declare-datatypes ((List!68218 0))(
  ( (Nil!68094) (Cons!68094 (h!74542 Regex!17564) (t!381997 List!68218)) )
))
(declare-datatypes ((Context!13120 0))(
  ( (Context!13121 (exprs!7060 List!68218)) )
))
(declare-fun lt!2530994 () Context!13120)

(assert (=> b!7053934 (= res!2879754 (not (is-Cons!68094 (exprs!7060 lt!2530994))))))

(declare-fun b!7053935 () Bool)

(declare-fun e!4240683 () Bool)

(declare-fun tp!1939949 () Bool)

(assert (=> b!7053935 (= e!4240683 tp!1939949)))

(declare-fun e!4240680 () Bool)

(declare-fun e!4240676 () Bool)

(assert (=> b!7053936 (= e!4240680 e!4240676)))

(declare-fun res!2879743 () Bool)

(assert (=> b!7053936 (=> res!2879743 e!4240676)))

(declare-fun lt!2530996 () Context!13120)

(declare-fun z1!570 () (Set Context!13120))

(declare-fun lt!2530998 () Context!13120)

(assert (=> b!7053936 (= res!2879743 (or (not (= lt!2530996 lt!2530998)) (not (set.member lt!2530994 z1!570))))))

(declare-fun ct2!306 () Context!13120)

(declare-fun ++!15647 (List!68218 List!68218) List!68218)

(assert (=> b!7053936 (= lt!2530996 (Context!13121 (++!15647 (exprs!7060 lt!2530994) (exprs!7060 ct2!306))))))

(declare-datatypes ((Unit!161801 0))(
  ( (Unit!161802) )
))
(declare-fun lt!2530992 () Unit!161801)

(declare-fun lambda!419828 () Int)

(declare-fun lemmaConcatPreservesForall!875 (List!68218 List!68218 Int) Unit!161801)

(assert (=> b!7053936 (= lt!2530992 (lemmaConcatPreservesForall!875 (exprs!7060 lt!2530994) (exprs!7060 ct2!306) lambda!419828))))

(declare-fun lambda!419827 () Int)

(declare-fun mapPost2!393 ((Set Context!13120) Int Context!13120) Context!13120)

(assert (=> b!7053936 (= lt!2530994 (mapPost2!393 z1!570 lambda!419827 lt!2530998))))

(declare-fun b!7053937 () Bool)

(declare-fun res!2879746 () Bool)

(assert (=> b!7053937 (=> res!2879746 e!4240678)))

(declare-fun isEmpty!39716 (List!68218) Bool)

(assert (=> b!7053937 (= res!2879746 (isEmpty!39716 (exprs!7060 lt!2530994)))))

(declare-fun b!7053938 () Bool)

(declare-fun e!4240675 () Bool)

(declare-fun e!4240681 () Bool)

(assert (=> b!7053938 (= e!4240675 e!4240681)))

(declare-fun res!2879749 () Bool)

(assert (=> b!7053938 (=> res!2879749 e!4240681)))

(declare-fun lt!2531013 () (Set Context!13120))

(declare-fun lt!2531009 () (Set Context!13120))

(assert (=> b!7053938 (= res!2879749 (not (= lt!2531013 lt!2531009)))))

(declare-fun lt!2530991 () (Set Context!13120))

(declare-fun lt!2531015 () (Set Context!13120))

(assert (=> b!7053938 (= lt!2531009 (set.union lt!2530991 lt!2531015))))

(declare-fun lt!2531007 () Context!13120)

(declare-datatypes ((List!68219 0))(
  ( (Nil!68095) (Cons!68095 (h!74543 C!35398) (t!381998 List!68219)) )
))
(declare-fun s!7408 () List!68219)

(declare-fun derivationStepZipperUp!2148 (Context!13120 C!35398) (Set Context!13120))

(assert (=> b!7053938 (= lt!2531015 (derivationStepZipperUp!2148 lt!2531007 (h!74543 s!7408)))))

(declare-fun derivationStepZipperDown!2198 (Regex!17564 Context!13120 C!35398) (Set Context!13120))

(assert (=> b!7053938 (= lt!2530991 (derivationStepZipperDown!2198 (h!74542 (exprs!7060 lt!2530994)) lt!2531007 (h!74543 s!7408)))))

(declare-fun lt!2531010 () List!68218)

(assert (=> b!7053938 (= lt!2531007 (Context!13121 (++!15647 lt!2531010 (exprs!7060 ct2!306))))))

(declare-fun lt!2531012 () Unit!161801)

(assert (=> b!7053938 (= lt!2531012 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(declare-fun lt!2530993 () Unit!161801)

(assert (=> b!7053938 (= lt!2530993 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(declare-fun b!7053939 () Bool)

(declare-fun e!4240685 () Bool)

(declare-fun matchZipper!3104 ((Set Context!13120) List!68219) Bool)

(assert (=> b!7053939 (= e!4240685 (matchZipper!3104 lt!2531015 (t!381998 s!7408)))))

(declare-fun res!2879751 () Bool)

(declare-fun e!4240682 () Bool)

(assert (=> start!683934 (=> (not res!2879751) (not e!4240682))))

(declare-fun lt!2530995 () (Set Context!13120))

(assert (=> start!683934 (= res!2879751 (matchZipper!3104 lt!2530995 s!7408))))

(declare-fun appendTo!685 ((Set Context!13120) Context!13120) (Set Context!13120))

(assert (=> start!683934 (= lt!2530995 (appendTo!685 z1!570 ct2!306))))

(assert (=> start!683934 e!4240682))

(declare-fun condSetEmpty!49804 () Bool)

(assert (=> start!683934 (= condSetEmpty!49804 (= z1!570 (as set.empty (Set Context!13120))))))

(assert (=> start!683934 setRes!49804))

(declare-fun inv!86770 (Context!13120) Bool)

(assert (=> start!683934 (and (inv!86770 ct2!306) e!4240683)))

(declare-fun e!4240677 () Bool)

(assert (=> start!683934 e!4240677))

(declare-fun e!4240684 () Bool)

(assert (=> b!7053940 (= e!4240684 e!4240678)))

(declare-fun res!2879752 () Bool)

(assert (=> b!7053940 (=> res!2879752 e!4240678)))

(declare-fun lt!2531006 () (Set Context!13120))

(declare-fun derivationStepZipper!3014 ((Set Context!13120) C!35398) (Set Context!13120))

(assert (=> b!7053940 (= res!2879752 (not (= (derivationStepZipper!3014 lt!2531006 (h!74543 s!7408)) lt!2531013)))))

(declare-fun lambda!419829 () Int)

(declare-fun flatMap!2490 ((Set Context!13120) Int) (Set Context!13120))

(assert (=> b!7053940 (= (flatMap!2490 lt!2531006 lambda!419829) (derivationStepZipperUp!2148 lt!2530996 (h!74543 s!7408)))))

(declare-fun lt!2531001 () Unit!161801)

(declare-fun lemmaFlatMapOnSingletonSet!1999 ((Set Context!13120) Context!13120 Int) Unit!161801)

(assert (=> b!7053940 (= lt!2531001 (lemmaFlatMapOnSingletonSet!1999 lt!2531006 lt!2530996 lambda!419829))))

(assert (=> b!7053940 (= lt!2531013 (derivationStepZipperUp!2148 lt!2530996 (h!74543 s!7408)))))

(declare-fun lt!2531005 () Unit!161801)

(assert (=> b!7053940 (= lt!2531005 (lemmaConcatPreservesForall!875 (exprs!7060 lt!2530994) (exprs!7060 ct2!306) lambda!419828))))

(declare-fun b!7053941 () Bool)

(declare-fun e!4240674 () Bool)

(assert (=> b!7053941 (= e!4240681 e!4240674)))

(declare-fun res!2879744 () Bool)

(assert (=> b!7053941 (=> res!2879744 e!4240674)))

(declare-fun lt!2531000 () Bool)

(assert (=> b!7053941 (= res!2879744 (= (matchZipper!3104 lt!2531013 (t!381998 s!7408)) lt!2531000))))

(declare-fun lt!2531011 () Unit!161801)

(assert (=> b!7053941 (= lt!2531011 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(assert (=> b!7053941 (= (matchZipper!3104 lt!2531009 (t!381998 s!7408)) e!4240685)))

(declare-fun res!2879748 () Bool)

(assert (=> b!7053941 (=> res!2879748 e!4240685)))

(assert (=> b!7053941 (= res!2879748 lt!2531000)))

(assert (=> b!7053941 (= lt!2531000 (matchZipper!3104 lt!2530991 (t!381998 s!7408)))))

(declare-fun lt!2530990 () Unit!161801)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1577 ((Set Context!13120) (Set Context!13120) List!68219) Unit!161801)

(assert (=> b!7053941 (= lt!2530990 (lemmaZipperConcatMatchesSameAsBothZippers!1577 lt!2530991 lt!2531015 (t!381998 s!7408)))))

(declare-fun lt!2531008 () Unit!161801)

(assert (=> b!7053941 (= lt!2531008 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(declare-fun lt!2530999 () Unit!161801)

(assert (=> b!7053941 (= lt!2530999 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(declare-fun b!7053942 () Bool)

(assert (=> b!7053942 (= e!4240674 (inv!86770 lt!2531007))))

(declare-fun lt!2531014 () Unit!161801)

(assert (=> b!7053942 (= lt!2531014 (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(declare-fun tp!1939950 () Bool)

(declare-fun e!4240679 () Bool)

(declare-fun setElem!49804 () Context!13120)

(declare-fun setNonEmpty!49804 () Bool)

(assert (=> setNonEmpty!49804 (= setRes!49804 (and tp!1939950 (inv!86770 setElem!49804) e!4240679))))

(declare-fun setRest!49804 () (Set Context!13120))

(assert (=> setNonEmpty!49804 (= z1!570 (set.union (set.insert setElem!49804 (as set.empty (Set Context!13120))) setRest!49804))))

(declare-fun b!7053943 () Bool)

(declare-fun res!2879742 () Bool)

(assert (=> b!7053943 (=> res!2879742 e!4240680)))

(assert (=> b!7053943 (= res!2879742 (not (set.member lt!2530998 lt!2530995)))))

(declare-fun b!7053944 () Bool)

(declare-fun tp!1939947 () Bool)

(assert (=> b!7053944 (= e!4240679 tp!1939947)))

(declare-fun b!7053945 () Bool)

(assert (=> b!7053945 (= e!4240676 e!4240684)))

(declare-fun res!2879753 () Bool)

(assert (=> b!7053945 (=> res!2879753 e!4240684)))

(declare-fun lt!2531004 () (Set Context!13120))

(assert (=> b!7053945 (= res!2879753 (not (= lt!2531006 lt!2531004)))))

(assert (=> b!7053945 (= lt!2531006 (set.insert lt!2530996 (as set.empty (Set Context!13120))))))

(declare-fun lt!2531003 () Unit!161801)

(assert (=> b!7053945 (= lt!2531003 (lemmaConcatPreservesForall!875 (exprs!7060 lt!2530994) (exprs!7060 ct2!306) lambda!419828))))

(declare-fun b!7053946 () Bool)

(declare-fun tp_is_empty!44353 () Bool)

(declare-fun tp!1939948 () Bool)

(assert (=> b!7053946 (= e!4240677 (and tp_is_empty!44353 tp!1939948))))

(declare-fun b!7053947 () Bool)

(declare-fun res!2879745 () Bool)

(assert (=> b!7053947 (=> (not res!2879745) (not e!4240682))))

(assert (=> b!7053947 (= res!2879745 (is-Cons!68095 s!7408))))

(declare-fun b!7053948 () Bool)

(assert (=> b!7053948 (= e!4240678 e!4240675)))

(declare-fun res!2879747 () Bool)

(assert (=> b!7053948 (=> res!2879747 e!4240675)))

(declare-fun nullable!7247 (Regex!17564) Bool)

(assert (=> b!7053948 (= res!2879747 (not (nullable!7247 (h!74542 (exprs!7060 lt!2530994)))))))

(declare-fun tail!13688 (List!68218) List!68218)

(assert (=> b!7053948 (= lt!2531010 (tail!13688 (exprs!7060 lt!2530994)))))

(assert (=> b!7053949 (= e!4240682 (not e!4240680))))

(declare-fun res!2879750 () Bool)

(assert (=> b!7053949 (=> res!2879750 e!4240680)))

(assert (=> b!7053949 (= res!2879750 (not (matchZipper!3104 lt!2531004 s!7408)))))

(assert (=> b!7053949 (= lt!2531004 (set.insert lt!2530998 (as set.empty (Set Context!13120))))))

(declare-fun lambda!419826 () Int)

(declare-fun getWitness!1623 ((Set Context!13120) Int) Context!13120)

(assert (=> b!7053949 (= lt!2530998 (getWitness!1623 lt!2530995 lambda!419826))))

(declare-datatypes ((List!68220 0))(
  ( (Nil!68096) (Cons!68096 (h!74544 Context!13120) (t!381999 List!68220)) )
))
(declare-fun lt!2531002 () List!68220)

(declare-fun exists!3549 (List!68220 Int) Bool)

(assert (=> b!7053949 (exists!3549 lt!2531002 lambda!419826)))

(declare-fun lt!2530997 () Unit!161801)

(declare-fun lemmaZipperMatchesExistsMatchingContext!485 (List!68220 List!68219) Unit!161801)

(assert (=> b!7053949 (= lt!2530997 (lemmaZipperMatchesExistsMatchingContext!485 lt!2531002 s!7408))))

(declare-fun toList!10905 ((Set Context!13120)) List!68220)

(assert (=> b!7053949 (= lt!2531002 (toList!10905 lt!2530995))))

(assert (= (and start!683934 res!2879751) b!7053947))

(assert (= (and b!7053947 res!2879745) b!7053949))

(assert (= (and b!7053949 (not res!2879750)) b!7053943))

(assert (= (and b!7053943 (not res!2879742)) b!7053936))

(assert (= (and b!7053936 (not res!2879743)) b!7053945))

(assert (= (and b!7053945 (not res!2879753)) b!7053940))

(assert (= (and b!7053940 (not res!2879752)) b!7053934))

(assert (= (and b!7053934 (not res!2879754)) b!7053937))

(assert (= (and b!7053937 (not res!2879746)) b!7053948))

(assert (= (and b!7053948 (not res!2879747)) b!7053938))

(assert (= (and b!7053938 (not res!2879749)) b!7053941))

(assert (= (and b!7053941 (not res!2879748)) b!7053939))

(assert (= (and b!7053941 (not res!2879744)) b!7053942))

(assert (= (and start!683934 condSetEmpty!49804) setIsEmpty!49804))

(assert (= (and start!683934 (not condSetEmpty!49804)) setNonEmpty!49804))

(assert (= setNonEmpty!49804 b!7053944))

(assert (= start!683934 b!7053935))

(assert (= (and start!683934 (is-Cons!68095 s!7408)) b!7053946))

(declare-fun m!7771094 () Bool)

(assert (=> b!7053938 m!7771094))

(declare-fun m!7771096 () Bool)

(assert (=> b!7053938 m!7771096))

(declare-fun m!7771098 () Bool)

(assert (=> b!7053938 m!7771098))

(declare-fun m!7771100 () Bool)

(assert (=> b!7053938 m!7771100))

(assert (=> b!7053938 m!7771094))

(declare-fun m!7771102 () Bool)

(assert (=> b!7053943 m!7771102))

(declare-fun m!7771104 () Bool)

(assert (=> b!7053937 m!7771104))

(declare-fun m!7771106 () Bool)

(assert (=> b!7053948 m!7771106))

(declare-fun m!7771108 () Bool)

(assert (=> b!7053948 m!7771108))

(declare-fun m!7771110 () Bool)

(assert (=> b!7053941 m!7771110))

(assert (=> b!7053941 m!7771094))

(declare-fun m!7771112 () Bool)

(assert (=> b!7053941 m!7771112))

(assert (=> b!7053941 m!7771094))

(declare-fun m!7771114 () Bool)

(assert (=> b!7053941 m!7771114))

(declare-fun m!7771116 () Bool)

(assert (=> b!7053941 m!7771116))

(assert (=> b!7053941 m!7771094))

(declare-fun m!7771118 () Bool)

(assert (=> b!7053945 m!7771118))

(declare-fun m!7771120 () Bool)

(assert (=> b!7053945 m!7771120))

(declare-fun m!7771122 () Bool)

(assert (=> setNonEmpty!49804 m!7771122))

(assert (=> b!7053940 m!7771120))

(declare-fun m!7771124 () Bool)

(assert (=> b!7053940 m!7771124))

(declare-fun m!7771126 () Bool)

(assert (=> b!7053940 m!7771126))

(declare-fun m!7771128 () Bool)

(assert (=> b!7053940 m!7771128))

(declare-fun m!7771130 () Bool)

(assert (=> b!7053940 m!7771130))

(declare-fun m!7771132 () Bool)

(assert (=> b!7053939 m!7771132))

(declare-fun m!7771134 () Bool)

(assert (=> b!7053949 m!7771134))

(declare-fun m!7771136 () Bool)

(assert (=> b!7053949 m!7771136))

(declare-fun m!7771138 () Bool)

(assert (=> b!7053949 m!7771138))

(declare-fun m!7771140 () Bool)

(assert (=> b!7053949 m!7771140))

(declare-fun m!7771142 () Bool)

(assert (=> b!7053949 m!7771142))

(declare-fun m!7771144 () Bool)

(assert (=> b!7053949 m!7771144))

(declare-fun m!7771146 () Bool)

(assert (=> b!7053942 m!7771146))

(assert (=> b!7053942 m!7771094))

(declare-fun m!7771148 () Bool)

(assert (=> b!7053936 m!7771148))

(declare-fun m!7771150 () Bool)

(assert (=> b!7053936 m!7771150))

(assert (=> b!7053936 m!7771120))

(declare-fun m!7771152 () Bool)

(assert (=> b!7053936 m!7771152))

(declare-fun m!7771154 () Bool)

(assert (=> start!683934 m!7771154))

(declare-fun m!7771156 () Bool)

(assert (=> start!683934 m!7771156))

(declare-fun m!7771158 () Bool)

(assert (=> start!683934 m!7771158))

(push 1)

(assert (not setNonEmpty!49804))

(assert (not b!7053946))

(assert (not b!7053941))

(assert (not b!7053937))

(assert (not b!7053944))

(assert (not b!7053940))

(assert (not b!7053945))

(assert (not b!7053938))

(assert (not b!7053949))

(assert (not b!7053942))

(assert (not b!7053935))

(assert (not b!7053948))

(assert tp_is_empty!44353)

(assert (not b!7053936))

(assert (not b!7053939))

(assert (not start!683934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2204346 () Bool)

(declare-fun c!1314032 () Bool)

(declare-fun isEmpty!39718 (List!68219) Bool)

(assert (=> d!2204346 (= c!1314032 (isEmpty!39718 (t!381998 s!7408)))))

(declare-fun e!4240724 () Bool)

(assert (=> d!2204346 (= (matchZipper!3104 lt!2531009 (t!381998 s!7408)) e!4240724)))

(declare-fun b!7054014 () Bool)

(declare-fun nullableZipper!2651 ((Set Context!13120)) Bool)

(assert (=> b!7054014 (= e!4240724 (nullableZipper!2651 lt!2531009))))

(declare-fun b!7054015 () Bool)

(declare-fun head!14352 (List!68219) C!35398)

(declare-fun tail!13690 (List!68219) List!68219)

(assert (=> b!7054015 (= e!4240724 (matchZipper!3104 (derivationStepZipper!3014 lt!2531009 (head!14352 (t!381998 s!7408))) (tail!13690 (t!381998 s!7408))))))

(assert (= (and d!2204346 c!1314032) b!7054014))

(assert (= (and d!2204346 (not c!1314032)) b!7054015))

(declare-fun m!7771226 () Bool)

(assert (=> d!2204346 m!7771226))

(declare-fun m!7771228 () Bool)

(assert (=> b!7054014 m!7771228))

(declare-fun m!7771230 () Bool)

(assert (=> b!7054015 m!7771230))

(assert (=> b!7054015 m!7771230))

(declare-fun m!7771232 () Bool)

(assert (=> b!7054015 m!7771232))

(declare-fun m!7771234 () Bool)

(assert (=> b!7054015 m!7771234))

(assert (=> b!7054015 m!7771232))

(assert (=> b!7054015 m!7771234))

(declare-fun m!7771236 () Bool)

(assert (=> b!7054015 m!7771236))

(assert (=> b!7053941 d!2204346))

(declare-fun d!2204348 () Bool)

(declare-fun c!1314033 () Bool)

(assert (=> d!2204348 (= c!1314033 (isEmpty!39718 (t!381998 s!7408)))))

(declare-fun e!4240725 () Bool)

(assert (=> d!2204348 (= (matchZipper!3104 lt!2531013 (t!381998 s!7408)) e!4240725)))

(declare-fun b!7054016 () Bool)

(assert (=> b!7054016 (= e!4240725 (nullableZipper!2651 lt!2531013))))

(declare-fun b!7054017 () Bool)

(assert (=> b!7054017 (= e!4240725 (matchZipper!3104 (derivationStepZipper!3014 lt!2531013 (head!14352 (t!381998 s!7408))) (tail!13690 (t!381998 s!7408))))))

(assert (= (and d!2204348 c!1314033) b!7054016))

(assert (= (and d!2204348 (not c!1314033)) b!7054017))

(assert (=> d!2204348 m!7771226))

(declare-fun m!7771238 () Bool)

(assert (=> b!7054016 m!7771238))

(assert (=> b!7054017 m!7771230))

(assert (=> b!7054017 m!7771230))

(declare-fun m!7771240 () Bool)

(assert (=> b!7054017 m!7771240))

(assert (=> b!7054017 m!7771234))

(assert (=> b!7054017 m!7771240))

(assert (=> b!7054017 m!7771234))

(declare-fun m!7771242 () Bool)

(assert (=> b!7054017 m!7771242))

(assert (=> b!7053941 d!2204348))

(declare-fun d!2204350 () Bool)

(declare-fun forall!16506 (List!68218 Int) Bool)

(assert (=> d!2204350 (forall!16506 (++!15647 lt!2531010 (exprs!7060 ct2!306)) lambda!419828)))

(declare-fun lt!2531098 () Unit!161801)

(declare-fun choose!53770 (List!68218 List!68218 Int) Unit!161801)

(assert (=> d!2204350 (= lt!2531098 (choose!53770 lt!2531010 (exprs!7060 ct2!306) lambda!419828))))

(assert (=> d!2204350 (forall!16506 lt!2531010 lambda!419828)))

(assert (=> d!2204350 (= (lemmaConcatPreservesForall!875 lt!2531010 (exprs!7060 ct2!306) lambda!419828) lt!2531098)))

(declare-fun bs!1876776 () Bool)

(assert (= bs!1876776 d!2204350))

(assert (=> bs!1876776 m!7771100))

(assert (=> bs!1876776 m!7771100))

(declare-fun m!7771244 () Bool)

(assert (=> bs!1876776 m!7771244))

(declare-fun m!7771246 () Bool)

(assert (=> bs!1876776 m!7771246))

(declare-fun m!7771248 () Bool)

(assert (=> bs!1876776 m!7771248))

(assert (=> b!7053941 d!2204350))

(declare-fun d!2204352 () Bool)

(declare-fun c!1314034 () Bool)

(assert (=> d!2204352 (= c!1314034 (isEmpty!39718 (t!381998 s!7408)))))

(declare-fun e!4240726 () Bool)

(assert (=> d!2204352 (= (matchZipper!3104 lt!2530991 (t!381998 s!7408)) e!4240726)))

(declare-fun b!7054018 () Bool)

(assert (=> b!7054018 (= e!4240726 (nullableZipper!2651 lt!2530991))))

(declare-fun b!7054019 () Bool)

(assert (=> b!7054019 (= e!4240726 (matchZipper!3104 (derivationStepZipper!3014 lt!2530991 (head!14352 (t!381998 s!7408))) (tail!13690 (t!381998 s!7408))))))

(assert (= (and d!2204352 c!1314034) b!7054018))

(assert (= (and d!2204352 (not c!1314034)) b!7054019))

(assert (=> d!2204352 m!7771226))

(declare-fun m!7771250 () Bool)

(assert (=> b!7054018 m!7771250))

(assert (=> b!7054019 m!7771230))

(assert (=> b!7054019 m!7771230))

(declare-fun m!7771252 () Bool)

(assert (=> b!7054019 m!7771252))

(assert (=> b!7054019 m!7771234))

(assert (=> b!7054019 m!7771252))

(assert (=> b!7054019 m!7771234))

(declare-fun m!7771254 () Bool)

(assert (=> b!7054019 m!7771254))

(assert (=> b!7053941 d!2204352))

(declare-fun d!2204354 () Bool)

(declare-fun e!4240729 () Bool)

(assert (=> d!2204354 (= (matchZipper!3104 (set.union lt!2530991 lt!2531015) (t!381998 s!7408)) e!4240729)))

(declare-fun res!2879797 () Bool)

(assert (=> d!2204354 (=> res!2879797 e!4240729)))

(assert (=> d!2204354 (= res!2879797 (matchZipper!3104 lt!2530991 (t!381998 s!7408)))))

(declare-fun lt!2531101 () Unit!161801)

(declare-fun choose!53771 ((Set Context!13120) (Set Context!13120) List!68219) Unit!161801)

(assert (=> d!2204354 (= lt!2531101 (choose!53771 lt!2530991 lt!2531015 (t!381998 s!7408)))))

(assert (=> d!2204354 (= (lemmaZipperConcatMatchesSameAsBothZippers!1577 lt!2530991 lt!2531015 (t!381998 s!7408)) lt!2531101)))

(declare-fun b!7054022 () Bool)

(assert (=> b!7054022 (= e!4240729 (matchZipper!3104 lt!2531015 (t!381998 s!7408)))))

(assert (= (and d!2204354 (not res!2879797)) b!7054022))

(declare-fun m!7771256 () Bool)

(assert (=> d!2204354 m!7771256))

(assert (=> d!2204354 m!7771116))

(declare-fun m!7771258 () Bool)

(assert (=> d!2204354 m!7771258))

(assert (=> b!7054022 m!7771132))

(assert (=> b!7053941 d!2204354))

(declare-fun d!2204356 () Bool)

(declare-fun choose!53772 ((Set Context!13120) Int) (Set Context!13120))

(assert (=> d!2204356 (= (flatMap!2490 lt!2531006 lambda!419829) (choose!53772 lt!2531006 lambda!419829))))

(declare-fun bs!1876777 () Bool)

(assert (= bs!1876777 d!2204356))

(declare-fun m!7771260 () Bool)

(assert (=> bs!1876777 m!7771260))

(assert (=> b!7053940 d!2204356))

(declare-fun b!7054033 () Bool)

(declare-fun e!4240736 () (Set Context!13120))

(declare-fun e!4240737 () (Set Context!13120))

(assert (=> b!7054033 (= e!4240736 e!4240737)))

(declare-fun c!1314040 () Bool)

(assert (=> b!7054033 (= c!1314040 (is-Cons!68094 (exprs!7060 lt!2530996)))))

(declare-fun call!640762 () (Set Context!13120))

(declare-fun b!7054034 () Bool)

(assert (=> b!7054034 (= e!4240736 (set.union call!640762 (derivationStepZipperUp!2148 (Context!13121 (t!381997 (exprs!7060 lt!2530996))) (h!74543 s!7408))))))

(declare-fun b!7054035 () Bool)

(assert (=> b!7054035 (= e!4240737 (as set.empty (Set Context!13120)))))

(declare-fun bm!640757 () Bool)

(assert (=> bm!640757 (= call!640762 (derivationStepZipperDown!2198 (h!74542 (exprs!7060 lt!2530996)) (Context!13121 (t!381997 (exprs!7060 lt!2530996))) (h!74543 s!7408)))))

(declare-fun b!7054037 () Bool)

(declare-fun e!4240738 () Bool)

(assert (=> b!7054037 (= e!4240738 (nullable!7247 (h!74542 (exprs!7060 lt!2530996))))))

(declare-fun b!7054036 () Bool)

(assert (=> b!7054036 (= e!4240737 call!640762)))

(declare-fun d!2204358 () Bool)

(declare-fun c!1314039 () Bool)

(assert (=> d!2204358 (= c!1314039 e!4240738)))

(declare-fun res!2879801 () Bool)

(assert (=> d!2204358 (=> (not res!2879801) (not e!4240738))))

(assert (=> d!2204358 (= res!2879801 (is-Cons!68094 (exprs!7060 lt!2530996)))))

(assert (=> d!2204358 (= (derivationStepZipperUp!2148 lt!2530996 (h!74543 s!7408)) e!4240736)))

(assert (= (and d!2204358 res!2879801) b!7054037))

(assert (= (and d!2204358 c!1314039) b!7054034))

(assert (= (and d!2204358 (not c!1314039)) b!7054033))

(assert (= (and b!7054033 c!1314040) b!7054036))

(assert (= (and b!7054033 (not c!1314040)) b!7054035))

(assert (= (or b!7054034 b!7054036) bm!640757))

(declare-fun m!7771262 () Bool)

(assert (=> b!7054034 m!7771262))

(declare-fun m!7771264 () Bool)

(assert (=> bm!640757 m!7771264))

(declare-fun m!7771266 () Bool)

(assert (=> b!7054037 m!7771266))

(assert (=> b!7053940 d!2204358))

(declare-fun bs!1876778 () Bool)

(declare-fun d!2204360 () Bool)

(assert (= bs!1876778 (and d!2204360 b!7053940)))

(declare-fun lambda!419864 () Int)

(assert (=> bs!1876778 (= lambda!419864 lambda!419829)))

(assert (=> d!2204360 true))

(assert (=> d!2204360 (= (derivationStepZipper!3014 lt!2531006 (h!74543 s!7408)) (flatMap!2490 lt!2531006 lambda!419864))))

(declare-fun bs!1876779 () Bool)

(assert (= bs!1876779 d!2204360))

(declare-fun m!7771268 () Bool)

(assert (=> bs!1876779 m!7771268))

(assert (=> b!7053940 d!2204360))

(declare-fun d!2204362 () Bool)

(assert (=> d!2204362 (forall!16506 (++!15647 (exprs!7060 lt!2530994) (exprs!7060 ct2!306)) lambda!419828)))

(declare-fun lt!2531102 () Unit!161801)

(assert (=> d!2204362 (= lt!2531102 (choose!53770 (exprs!7060 lt!2530994) (exprs!7060 ct2!306) lambda!419828))))

(assert (=> d!2204362 (forall!16506 (exprs!7060 lt!2530994) lambda!419828)))

(assert (=> d!2204362 (= (lemmaConcatPreservesForall!875 (exprs!7060 lt!2530994) (exprs!7060 ct2!306) lambda!419828) lt!2531102)))

(declare-fun bs!1876780 () Bool)

(assert (= bs!1876780 d!2204362))

(assert (=> bs!1876780 m!7771150))

(assert (=> bs!1876780 m!7771150))

(declare-fun m!7771270 () Bool)

(assert (=> bs!1876780 m!7771270))

(declare-fun m!7771272 () Bool)

(assert (=> bs!1876780 m!7771272))

(declare-fun m!7771274 () Bool)

(assert (=> bs!1876780 m!7771274))

(assert (=> b!7053940 d!2204362))

(declare-fun d!2204364 () Bool)

(declare-fun dynLambda!27618 (Int Context!13120) (Set Context!13120))

(assert (=> d!2204364 (= (flatMap!2490 lt!2531006 lambda!419829) (dynLambda!27618 lambda!419829 lt!2530996))))

(declare-fun lt!2531105 () Unit!161801)

(declare-fun choose!53773 ((Set Context!13120) Context!13120 Int) Unit!161801)

(assert (=> d!2204364 (= lt!2531105 (choose!53773 lt!2531006 lt!2530996 lambda!419829))))

(assert (=> d!2204364 (= lt!2531006 (set.insert lt!2530996 (as set.empty (Set Context!13120))))))

(assert (=> d!2204364 (= (lemmaFlatMapOnSingletonSet!1999 lt!2531006 lt!2530996 lambda!419829) lt!2531105)))

(declare-fun b_lambda!268587 () Bool)

(assert (=> (not b_lambda!268587) (not d!2204364)))

(declare-fun bs!1876781 () Bool)

(assert (= bs!1876781 d!2204364))

(assert (=> bs!1876781 m!7771126))

(declare-fun m!7771276 () Bool)

(assert (=> bs!1876781 m!7771276))

(declare-fun m!7771278 () Bool)

(assert (=> bs!1876781 m!7771278))

(assert (=> bs!1876781 m!7771118))

(assert (=> b!7053940 d!2204364))

(declare-fun bs!1876782 () Bool)

(declare-fun d!2204366 () Bool)

(assert (= bs!1876782 (and d!2204366 b!7053936)))

(declare-fun lambda!419867 () Int)

(assert (=> bs!1876782 (= lambda!419867 lambda!419828)))

(assert (=> d!2204366 (= (inv!86770 lt!2531007) (forall!16506 (exprs!7060 lt!2531007) lambda!419867))))

(declare-fun bs!1876783 () Bool)

(assert (= bs!1876783 d!2204366))

(declare-fun m!7771280 () Bool)

(assert (=> bs!1876783 m!7771280))

(assert (=> b!7053942 d!2204366))

(assert (=> b!7053942 d!2204350))

(declare-fun d!2204368 () Bool)

(declare-fun c!1314043 () Bool)

(assert (=> d!2204368 (= c!1314043 (isEmpty!39718 s!7408))))

(declare-fun e!4240739 () Bool)

(assert (=> d!2204368 (= (matchZipper!3104 lt!2530995 s!7408) e!4240739)))

(declare-fun b!7054040 () Bool)

(assert (=> b!7054040 (= e!4240739 (nullableZipper!2651 lt!2530995))))

(declare-fun b!7054041 () Bool)

(assert (=> b!7054041 (= e!4240739 (matchZipper!3104 (derivationStepZipper!3014 lt!2530995 (head!14352 s!7408)) (tail!13690 s!7408)))))

(assert (= (and d!2204368 c!1314043) b!7054040))

(assert (= (and d!2204368 (not c!1314043)) b!7054041))

(declare-fun m!7771282 () Bool)

(assert (=> d!2204368 m!7771282))

(declare-fun m!7771284 () Bool)

(assert (=> b!7054040 m!7771284))

(declare-fun m!7771286 () Bool)

(assert (=> b!7054041 m!7771286))

(assert (=> b!7054041 m!7771286))

(declare-fun m!7771288 () Bool)

(assert (=> b!7054041 m!7771288))

(declare-fun m!7771290 () Bool)

(assert (=> b!7054041 m!7771290))

(assert (=> b!7054041 m!7771288))

(assert (=> b!7054041 m!7771290))

(declare-fun m!7771292 () Bool)

(assert (=> b!7054041 m!7771292))

(assert (=> start!683934 d!2204368))

(declare-fun bs!1876784 () Bool)

(declare-fun d!2204370 () Bool)

(assert (= bs!1876784 (and d!2204370 b!7053936)))

(declare-fun lambda!419872 () Int)

(assert (=> bs!1876784 (= lambda!419872 lambda!419827)))

(assert (=> d!2204370 true))

(declare-fun map!15883 ((Set Context!13120) Int) (Set Context!13120))

(assert (=> d!2204370 (= (appendTo!685 z1!570 ct2!306) (map!15883 z1!570 lambda!419872))))

(declare-fun bs!1876785 () Bool)

(assert (= bs!1876785 d!2204370))

(declare-fun m!7771294 () Bool)

(assert (=> bs!1876785 m!7771294))

(assert (=> start!683934 d!2204370))

(declare-fun bs!1876786 () Bool)

(declare-fun d!2204372 () Bool)

(assert (= bs!1876786 (and d!2204372 b!7053936)))

(declare-fun lambda!419873 () Int)

(assert (=> bs!1876786 (= lambda!419873 lambda!419828)))

(declare-fun bs!1876787 () Bool)

(assert (= bs!1876787 (and d!2204372 d!2204366)))

(assert (=> bs!1876787 (= lambda!419873 lambda!419867)))

(assert (=> d!2204372 (= (inv!86770 ct2!306) (forall!16506 (exprs!7060 ct2!306) lambda!419873))))

(declare-fun bs!1876788 () Bool)

(assert (= bs!1876788 d!2204372))

(declare-fun m!7771296 () Bool)

(assert (=> bs!1876788 m!7771296))

(assert (=> start!683934 d!2204372))

(declare-fun bs!1876789 () Bool)

(declare-fun d!2204374 () Bool)

(assert (= bs!1876789 (and d!2204374 b!7053936)))

(declare-fun lambda!419874 () Int)

(assert (=> bs!1876789 (= lambda!419874 lambda!419828)))

(declare-fun bs!1876790 () Bool)

(assert (= bs!1876790 (and d!2204374 d!2204366)))

(assert (=> bs!1876790 (= lambda!419874 lambda!419867)))

(declare-fun bs!1876791 () Bool)

(assert (= bs!1876791 (and d!2204374 d!2204372)))

(assert (=> bs!1876791 (= lambda!419874 lambda!419873)))

(assert (=> d!2204374 (= (inv!86770 setElem!49804) (forall!16506 (exprs!7060 setElem!49804) lambda!419874))))

(declare-fun bs!1876792 () Bool)

(assert (= bs!1876792 d!2204374))

(declare-fun m!7771298 () Bool)

(assert (=> bs!1876792 m!7771298))

(assert (=> setNonEmpty!49804 d!2204374))

(assert (=> b!7053945 d!2204362))

(declare-fun d!2204376 () Bool)

(assert (=> d!2204376 (= (isEmpty!39716 (exprs!7060 lt!2530994)) (is-Nil!68094 (exprs!7060 lt!2530994)))))

(assert (=> b!7053937 d!2204376))

(declare-fun d!2204378 () Bool)

(declare-fun e!4240744 () Bool)

(assert (=> d!2204378 e!4240744))

(declare-fun res!2879807 () Bool)

(assert (=> d!2204378 (=> (not res!2879807) (not e!4240744))))

(declare-fun lt!2531110 () List!68218)

(declare-fun content!13675 (List!68218) (Set Regex!17564))

(assert (=> d!2204378 (= res!2879807 (= (content!13675 lt!2531110) (set.union (content!13675 (exprs!7060 lt!2530994)) (content!13675 (exprs!7060 ct2!306)))))))

(declare-fun e!4240745 () List!68218)

(assert (=> d!2204378 (= lt!2531110 e!4240745)))

(declare-fun c!1314047 () Bool)

(assert (=> d!2204378 (= c!1314047 (is-Nil!68094 (exprs!7060 lt!2530994)))))

(assert (=> d!2204378 (= (++!15647 (exprs!7060 lt!2530994) (exprs!7060 ct2!306)) lt!2531110)))

(declare-fun b!7054052 () Bool)

(declare-fun res!2879806 () Bool)

(assert (=> b!7054052 (=> (not res!2879806) (not e!4240744))))

(declare-fun size!41146 (List!68218) Int)

(assert (=> b!7054052 (= res!2879806 (= (size!41146 lt!2531110) (+ (size!41146 (exprs!7060 lt!2530994)) (size!41146 (exprs!7060 ct2!306)))))))

(declare-fun b!7054050 () Bool)

(assert (=> b!7054050 (= e!4240745 (exprs!7060 ct2!306))))

(declare-fun b!7054051 () Bool)

(assert (=> b!7054051 (= e!4240745 (Cons!68094 (h!74542 (exprs!7060 lt!2530994)) (++!15647 (t!381997 (exprs!7060 lt!2530994)) (exprs!7060 ct2!306))))))

(declare-fun b!7054053 () Bool)

(assert (=> b!7054053 (= e!4240744 (or (not (= (exprs!7060 ct2!306) Nil!68094)) (= lt!2531110 (exprs!7060 lt!2530994))))))

(assert (= (and d!2204378 c!1314047) b!7054050))

(assert (= (and d!2204378 (not c!1314047)) b!7054051))

(assert (= (and d!2204378 res!2879807) b!7054052))

(assert (= (and b!7054052 res!2879806) b!7054053))

(declare-fun m!7771300 () Bool)

(assert (=> d!2204378 m!7771300))

(declare-fun m!7771302 () Bool)

(assert (=> d!2204378 m!7771302))

(declare-fun m!7771304 () Bool)

(assert (=> d!2204378 m!7771304))

(declare-fun m!7771306 () Bool)

(assert (=> b!7054052 m!7771306))

(declare-fun m!7771308 () Bool)

(assert (=> b!7054052 m!7771308))

(declare-fun m!7771310 () Bool)

(assert (=> b!7054052 m!7771310))

(declare-fun m!7771312 () Bool)

(assert (=> b!7054051 m!7771312))

(assert (=> b!7053936 d!2204378))

(assert (=> b!7053936 d!2204362))

(declare-fun d!2204380 () Bool)

(declare-fun e!4240748 () Bool)

(assert (=> d!2204380 e!4240748))

(declare-fun res!2879810 () Bool)

(assert (=> d!2204380 (=> (not res!2879810) (not e!4240748))))

(declare-fun lt!2531113 () Context!13120)

(declare-fun dynLambda!27619 (Int Context!13120) Context!13120)

(assert (=> d!2204380 (= res!2879810 (= lt!2530998 (dynLambda!27619 lambda!419827 lt!2531113)))))

(declare-fun choose!53774 ((Set Context!13120) Int Context!13120) Context!13120)

(assert (=> d!2204380 (= lt!2531113 (choose!53774 z1!570 lambda!419827 lt!2530998))))

(assert (=> d!2204380 (set.member lt!2530998 (map!15883 z1!570 lambda!419827))))

(assert (=> d!2204380 (= (mapPost2!393 z1!570 lambda!419827 lt!2530998) lt!2531113)))

(declare-fun b!7054057 () Bool)

(assert (=> b!7054057 (= e!4240748 (set.member lt!2531113 z1!570))))

(assert (= (and d!2204380 res!2879810) b!7054057))

(declare-fun b_lambda!268589 () Bool)

(assert (=> (not b_lambda!268589) (not d!2204380)))

(declare-fun m!7771314 () Bool)

(assert (=> d!2204380 m!7771314))

(declare-fun m!7771316 () Bool)

(assert (=> d!2204380 m!7771316))

(declare-fun m!7771318 () Bool)

(assert (=> d!2204380 m!7771318))

(declare-fun m!7771320 () Bool)

(assert (=> d!2204380 m!7771320))

(declare-fun m!7771322 () Bool)

(assert (=> b!7054057 m!7771322))

(assert (=> b!7053936 d!2204380))

(declare-fun d!2204382 () Bool)

(declare-fun nullableFct!2770 (Regex!17564) Bool)

(assert (=> d!2204382 (= (nullable!7247 (h!74542 (exprs!7060 lt!2530994))) (nullableFct!2770 (h!74542 (exprs!7060 lt!2530994))))))

(declare-fun bs!1876793 () Bool)

(assert (= bs!1876793 d!2204382))

(declare-fun m!7771324 () Bool)

(assert (=> bs!1876793 m!7771324))

(assert (=> b!7053948 d!2204382))

(declare-fun d!2204384 () Bool)

(assert (=> d!2204384 (= (tail!13688 (exprs!7060 lt!2530994)) (t!381997 (exprs!7060 lt!2530994)))))

(assert (=> b!7053948 d!2204384))

(assert (=> b!7053938 d!2204350))

(declare-fun d!2204386 () Bool)

(declare-fun e!4240749 () Bool)

(assert (=> d!2204386 e!4240749))

(declare-fun res!2879812 () Bool)

(assert (=> d!2204386 (=> (not res!2879812) (not e!4240749))))

(declare-fun lt!2531114 () List!68218)

(assert (=> d!2204386 (= res!2879812 (= (content!13675 lt!2531114) (set.union (content!13675 lt!2531010) (content!13675 (exprs!7060 ct2!306)))))))

(declare-fun e!4240750 () List!68218)

(assert (=> d!2204386 (= lt!2531114 e!4240750)))

(declare-fun c!1314048 () Bool)

(assert (=> d!2204386 (= c!1314048 (is-Nil!68094 lt!2531010))))

(assert (=> d!2204386 (= (++!15647 lt!2531010 (exprs!7060 ct2!306)) lt!2531114)))

(declare-fun b!7054060 () Bool)

(declare-fun res!2879811 () Bool)

(assert (=> b!7054060 (=> (not res!2879811) (not e!4240749))))

(assert (=> b!7054060 (= res!2879811 (= (size!41146 lt!2531114) (+ (size!41146 lt!2531010) (size!41146 (exprs!7060 ct2!306)))))))

(declare-fun b!7054058 () Bool)

(assert (=> b!7054058 (= e!4240750 (exprs!7060 ct2!306))))

(declare-fun b!7054059 () Bool)

(assert (=> b!7054059 (= e!4240750 (Cons!68094 (h!74542 lt!2531010) (++!15647 (t!381997 lt!2531010) (exprs!7060 ct2!306))))))

(declare-fun b!7054061 () Bool)

(assert (=> b!7054061 (= e!4240749 (or (not (= (exprs!7060 ct2!306) Nil!68094)) (= lt!2531114 lt!2531010)))))

(assert (= (and d!2204386 c!1314048) b!7054058))

(assert (= (and d!2204386 (not c!1314048)) b!7054059))

(assert (= (and d!2204386 res!2879812) b!7054060))

(assert (= (and b!7054060 res!2879811) b!7054061))

(declare-fun m!7771326 () Bool)

(assert (=> d!2204386 m!7771326))

(declare-fun m!7771328 () Bool)

(assert (=> d!2204386 m!7771328))

(assert (=> d!2204386 m!7771304))

(declare-fun m!7771330 () Bool)

(assert (=> b!7054060 m!7771330))

(declare-fun m!7771332 () Bool)

(assert (=> b!7054060 m!7771332))

(assert (=> b!7054060 m!7771310))

(declare-fun m!7771334 () Bool)

(assert (=> b!7054059 m!7771334))

(assert (=> b!7053938 d!2204386))

(declare-fun b!7054062 () Bool)

(declare-fun e!4240751 () (Set Context!13120))

(declare-fun e!4240752 () (Set Context!13120))

(assert (=> b!7054062 (= e!4240751 e!4240752)))

(declare-fun c!1314050 () Bool)

(assert (=> b!7054062 (= c!1314050 (is-Cons!68094 (exprs!7060 lt!2531007)))))

(declare-fun b!7054063 () Bool)

(declare-fun call!640763 () (Set Context!13120))

(assert (=> b!7054063 (= e!4240751 (set.union call!640763 (derivationStepZipperUp!2148 (Context!13121 (t!381997 (exprs!7060 lt!2531007))) (h!74543 s!7408))))))

(declare-fun b!7054064 () Bool)

(assert (=> b!7054064 (= e!4240752 (as set.empty (Set Context!13120)))))

(declare-fun bm!640758 () Bool)

(assert (=> bm!640758 (= call!640763 (derivationStepZipperDown!2198 (h!74542 (exprs!7060 lt!2531007)) (Context!13121 (t!381997 (exprs!7060 lt!2531007))) (h!74543 s!7408)))))

(declare-fun b!7054066 () Bool)

(declare-fun e!4240753 () Bool)

(assert (=> b!7054066 (= e!4240753 (nullable!7247 (h!74542 (exprs!7060 lt!2531007))))))

(declare-fun b!7054065 () Bool)

(assert (=> b!7054065 (= e!4240752 call!640763)))

(declare-fun d!2204388 () Bool)

(declare-fun c!1314049 () Bool)

(assert (=> d!2204388 (= c!1314049 e!4240753)))

(declare-fun res!2879813 () Bool)

(assert (=> d!2204388 (=> (not res!2879813) (not e!4240753))))

(assert (=> d!2204388 (= res!2879813 (is-Cons!68094 (exprs!7060 lt!2531007)))))

(assert (=> d!2204388 (= (derivationStepZipperUp!2148 lt!2531007 (h!74543 s!7408)) e!4240751)))

(assert (= (and d!2204388 res!2879813) b!7054066))

(assert (= (and d!2204388 c!1314049) b!7054063))

(assert (= (and d!2204388 (not c!1314049)) b!7054062))

(assert (= (and b!7054062 c!1314050) b!7054065))

(assert (= (and b!7054062 (not c!1314050)) b!7054064))

(assert (= (or b!7054063 b!7054065) bm!640758))

(declare-fun m!7771336 () Bool)

(assert (=> b!7054063 m!7771336))

(declare-fun m!7771338 () Bool)

(assert (=> bm!640758 m!7771338))

(declare-fun m!7771340 () Bool)

(assert (=> b!7054066 m!7771340))

(assert (=> b!7053938 d!2204388))

(declare-fun b!7054089 () Bool)

(declare-fun e!4240770 () (Set Context!13120))

(declare-fun call!640776 () (Set Context!13120))

(assert (=> b!7054089 (= e!4240770 call!640776)))

(declare-fun bm!640771 () Bool)

(declare-fun call!640780 () List!68218)

(declare-fun c!1314064 () Bool)

(declare-fun c!1314065 () Bool)

(declare-fun $colon$colon!2616 (List!68218 Regex!17564) List!68218)

(assert (=> bm!640771 (= call!640780 ($colon$colon!2616 (exprs!7060 lt!2531007) (ite (or c!1314065 c!1314064) (regTwo!35640 (h!74542 (exprs!7060 lt!2530994))) (h!74542 (exprs!7060 lt!2530994)))))))

(declare-fun b!7054090 () Bool)

(declare-fun e!4240769 () (Set Context!13120))

(assert (=> b!7054090 (= e!4240769 call!640776)))

(declare-fun b!7054091 () Bool)

(declare-fun e!4240767 () (Set Context!13120))

(declare-fun call!640779 () (Set Context!13120))

(declare-fun call!640778 () (Set Context!13120))

(assert (=> b!7054091 (= e!4240767 (set.union call!640779 call!640778))))

(declare-fun b!7054092 () Bool)

(assert (=> b!7054092 (= e!4240770 (as set.empty (Set Context!13120)))))

(declare-fun bm!640772 () Bool)

(declare-fun c!1314062 () Bool)

(declare-fun call!640777 () List!68218)

(declare-fun call!640781 () (Set Context!13120))

(assert (=> bm!640772 (= call!640781 (derivationStepZipperDown!2198 (ite c!1314062 (regOne!35641 (h!74542 (exprs!7060 lt!2530994))) (ite c!1314065 (regTwo!35640 (h!74542 (exprs!7060 lt!2530994))) (ite c!1314064 (regOne!35640 (h!74542 (exprs!7060 lt!2530994))) (reg!17893 (h!74542 (exprs!7060 lt!2530994)))))) (ite (or c!1314062 c!1314065) lt!2531007 (Context!13121 call!640777)) (h!74543 s!7408)))))

(declare-fun b!7054093 () Bool)

(declare-fun e!4240766 () (Set Context!13120))

(assert (=> b!7054093 (= e!4240766 (set.insert lt!2531007 (as set.empty (Set Context!13120))))))

(declare-fun b!7054094 () Bool)

(assert (=> b!7054094 (= e!4240767 e!4240769)))

(assert (=> b!7054094 (= c!1314064 (is-Concat!26409 (h!74542 (exprs!7060 lt!2530994))))))

(declare-fun bm!640773 () Bool)

(assert (=> bm!640773 (= call!640778 call!640781)))

(declare-fun bm!640774 () Bool)

(assert (=> bm!640774 (= call!640776 call!640778)))

(declare-fun b!7054096 () Bool)

(declare-fun e!4240771 () (Set Context!13120))

(assert (=> b!7054096 (= e!4240766 e!4240771)))

(assert (=> b!7054096 (= c!1314062 (is-Union!17564 (h!74542 (exprs!7060 lt!2530994))))))

(declare-fun b!7054097 () Bool)

(declare-fun c!1314063 () Bool)

(assert (=> b!7054097 (= c!1314063 (is-Star!17564 (h!74542 (exprs!7060 lt!2530994))))))

(assert (=> b!7054097 (= e!4240769 e!4240770)))

(declare-fun b!7054098 () Bool)

(assert (=> b!7054098 (= e!4240771 (set.union call!640781 call!640779))))

(declare-fun bm!640775 () Bool)

(assert (=> bm!640775 (= call!640777 call!640780)))

(declare-fun b!7054099 () Bool)

(declare-fun e!4240768 () Bool)

(assert (=> b!7054099 (= c!1314065 e!4240768)))

(declare-fun res!2879816 () Bool)

(assert (=> b!7054099 (=> (not res!2879816) (not e!4240768))))

(assert (=> b!7054099 (= res!2879816 (is-Concat!26409 (h!74542 (exprs!7060 lt!2530994))))))

(assert (=> b!7054099 (= e!4240771 e!4240767)))

(declare-fun bm!640776 () Bool)

(assert (=> bm!640776 (= call!640779 (derivationStepZipperDown!2198 (ite c!1314062 (regTwo!35641 (h!74542 (exprs!7060 lt!2530994))) (regOne!35640 (h!74542 (exprs!7060 lt!2530994)))) (ite c!1314062 lt!2531007 (Context!13121 call!640780)) (h!74543 s!7408)))))

(declare-fun b!7054095 () Bool)

(assert (=> b!7054095 (= e!4240768 (nullable!7247 (regOne!35640 (h!74542 (exprs!7060 lt!2530994)))))))

(declare-fun d!2204390 () Bool)

(declare-fun c!1314061 () Bool)

(assert (=> d!2204390 (= c!1314061 (and (is-ElementMatch!17564 (h!74542 (exprs!7060 lt!2530994))) (= (c!1314020 (h!74542 (exprs!7060 lt!2530994))) (h!74543 s!7408))))))

(assert (=> d!2204390 (= (derivationStepZipperDown!2198 (h!74542 (exprs!7060 lt!2530994)) lt!2531007 (h!74543 s!7408)) e!4240766)))

(assert (= (and d!2204390 c!1314061) b!7054093))

(assert (= (and d!2204390 (not c!1314061)) b!7054096))

(assert (= (and b!7054096 c!1314062) b!7054098))

(assert (= (and b!7054096 (not c!1314062)) b!7054099))

(assert (= (and b!7054099 res!2879816) b!7054095))

(assert (= (and b!7054099 c!1314065) b!7054091))

(assert (= (and b!7054099 (not c!1314065)) b!7054094))

(assert (= (and b!7054094 c!1314064) b!7054090))

(assert (= (and b!7054094 (not c!1314064)) b!7054097))

(assert (= (and b!7054097 c!1314063) b!7054089))

(assert (= (and b!7054097 (not c!1314063)) b!7054092))

(assert (= (or b!7054090 b!7054089) bm!640775))

(assert (= (or b!7054090 b!7054089) bm!640774))

(assert (= (or b!7054091 bm!640774) bm!640773))

(assert (= (or b!7054091 bm!640775) bm!640771))

(assert (= (or b!7054098 bm!640773) bm!640772))

(assert (= (or b!7054098 b!7054091) bm!640776))

(declare-fun m!7771342 () Bool)

(assert (=> bm!640771 m!7771342))

(declare-fun m!7771344 () Bool)

(assert (=> b!7054093 m!7771344))

(declare-fun m!7771346 () Bool)

(assert (=> bm!640776 m!7771346))

(declare-fun m!7771348 () Bool)

(assert (=> b!7054095 m!7771348))

(declare-fun m!7771350 () Bool)

(assert (=> bm!640772 m!7771350))

(assert (=> b!7053938 d!2204390))

(declare-fun d!2204392 () Bool)

(declare-fun c!1314066 () Bool)

(assert (=> d!2204392 (= c!1314066 (isEmpty!39718 s!7408))))

(declare-fun e!4240772 () Bool)

(assert (=> d!2204392 (= (matchZipper!3104 lt!2531004 s!7408) e!4240772)))

(declare-fun b!7054100 () Bool)

(assert (=> b!7054100 (= e!4240772 (nullableZipper!2651 lt!2531004))))

(declare-fun b!7054101 () Bool)

(assert (=> b!7054101 (= e!4240772 (matchZipper!3104 (derivationStepZipper!3014 lt!2531004 (head!14352 s!7408)) (tail!13690 s!7408)))))

(assert (= (and d!2204392 c!1314066) b!7054100))

(assert (= (and d!2204392 (not c!1314066)) b!7054101))

(assert (=> d!2204392 m!7771282))

(declare-fun m!7771352 () Bool)

(assert (=> b!7054100 m!7771352))

(assert (=> b!7054101 m!7771286))

(assert (=> b!7054101 m!7771286))

(declare-fun m!7771354 () Bool)

(assert (=> b!7054101 m!7771354))

(assert (=> b!7054101 m!7771290))

(assert (=> b!7054101 m!7771354))

(assert (=> b!7054101 m!7771290))

(declare-fun m!7771356 () Bool)

(assert (=> b!7054101 m!7771356))

(assert (=> b!7053949 d!2204392))

(declare-fun d!2204394 () Bool)

(declare-fun e!4240775 () Bool)

(assert (=> d!2204394 e!4240775))

(declare-fun res!2879819 () Bool)

(assert (=> d!2204394 (=> (not res!2879819) (not e!4240775))))

(declare-fun lt!2531117 () Context!13120)

(declare-fun dynLambda!27620 (Int Context!13120) Bool)

(assert (=> d!2204394 (= res!2879819 (dynLambda!27620 lambda!419826 lt!2531117))))

(declare-fun getWitness!1625 (List!68220 Int) Context!13120)

(assert (=> d!2204394 (= lt!2531117 (getWitness!1625 (toList!10905 lt!2530995) lambda!419826))))

(declare-fun exists!3551 ((Set Context!13120) Int) Bool)

(assert (=> d!2204394 (exists!3551 lt!2530995 lambda!419826)))

(assert (=> d!2204394 (= (getWitness!1623 lt!2530995 lambda!419826) lt!2531117)))

(declare-fun b!7054104 () Bool)

(assert (=> b!7054104 (= e!4240775 (set.member lt!2531117 lt!2530995))))

(assert (= (and d!2204394 res!2879819) b!7054104))

(declare-fun b_lambda!268591 () Bool)

(assert (=> (not b_lambda!268591) (not d!2204394)))

(declare-fun m!7771358 () Bool)

(assert (=> d!2204394 m!7771358))

(assert (=> d!2204394 m!7771144))

(assert (=> d!2204394 m!7771144))

(declare-fun m!7771360 () Bool)

(assert (=> d!2204394 m!7771360))

(declare-fun m!7771362 () Bool)

(assert (=> d!2204394 m!7771362))

(declare-fun m!7771364 () Bool)

(assert (=> b!7054104 m!7771364))

(assert (=> b!7053949 d!2204394))

(declare-fun d!2204396 () Bool)

(declare-fun e!4240778 () Bool)

(assert (=> d!2204396 e!4240778))

(declare-fun res!2879822 () Bool)

(assert (=> d!2204396 (=> (not res!2879822) (not e!4240778))))

(declare-fun lt!2531120 () List!68220)

(declare-fun noDuplicate!2685 (List!68220) Bool)

(assert (=> d!2204396 (= res!2879822 (noDuplicate!2685 lt!2531120))))

(declare-fun choose!53775 ((Set Context!13120)) List!68220)

(assert (=> d!2204396 (= lt!2531120 (choose!53775 lt!2530995))))

(assert (=> d!2204396 (= (toList!10905 lt!2530995) lt!2531120)))

(declare-fun b!7054107 () Bool)

(declare-fun content!13676 (List!68220) (Set Context!13120))

(assert (=> b!7054107 (= e!4240778 (= (content!13676 lt!2531120) lt!2530995))))

(assert (= (and d!2204396 res!2879822) b!7054107))

(declare-fun m!7771366 () Bool)

(assert (=> d!2204396 m!7771366))

(declare-fun m!7771368 () Bool)

(assert (=> d!2204396 m!7771368))

(declare-fun m!7771370 () Bool)

(assert (=> b!7054107 m!7771370))

(assert (=> b!7053949 d!2204396))

(declare-fun bs!1876794 () Bool)

(declare-fun d!2204398 () Bool)

(assert (= bs!1876794 (and d!2204398 b!7053949)))

(declare-fun lambda!419877 () Int)

(assert (=> bs!1876794 (= lambda!419877 lambda!419826)))

(assert (=> d!2204398 true))

(assert (=> d!2204398 (exists!3549 lt!2531002 lambda!419877)))

(declare-fun lt!2531123 () Unit!161801)

(declare-fun choose!53776 (List!68220 List!68219) Unit!161801)

(assert (=> d!2204398 (= lt!2531123 (choose!53776 lt!2531002 s!7408))))

(assert (=> d!2204398 (matchZipper!3104 (content!13676 lt!2531002) s!7408)))

(assert (=> d!2204398 (= (lemmaZipperMatchesExistsMatchingContext!485 lt!2531002 s!7408) lt!2531123)))

(declare-fun bs!1876795 () Bool)

(assert (= bs!1876795 d!2204398))

(declare-fun m!7771372 () Bool)

(assert (=> bs!1876795 m!7771372))

(declare-fun m!7771374 () Bool)

(assert (=> bs!1876795 m!7771374))

(declare-fun m!7771376 () Bool)

(assert (=> bs!1876795 m!7771376))

(assert (=> bs!1876795 m!7771376))

(declare-fun m!7771378 () Bool)

(assert (=> bs!1876795 m!7771378))

(assert (=> b!7053949 d!2204398))

(declare-fun bs!1876796 () Bool)

(declare-fun d!2204400 () Bool)

(assert (= bs!1876796 (and d!2204400 b!7053949)))

(declare-fun lambda!419880 () Int)

(assert (=> bs!1876796 (not (= lambda!419880 lambda!419826))))

(declare-fun bs!1876797 () Bool)

(assert (= bs!1876797 (and d!2204400 d!2204398)))

(assert (=> bs!1876797 (not (= lambda!419880 lambda!419877))))

(assert (=> d!2204400 true))

(declare-fun order!28303 () Int)

(declare-fun dynLambda!27621 (Int Int) Int)

(assert (=> d!2204400 (< (dynLambda!27621 order!28303 lambda!419826) (dynLambda!27621 order!28303 lambda!419880))))

(declare-fun forall!16507 (List!68220 Int) Bool)

(assert (=> d!2204400 (= (exists!3549 lt!2531002 lambda!419826) (not (forall!16507 lt!2531002 lambda!419880)))))

(declare-fun bs!1876798 () Bool)

(assert (= bs!1876798 d!2204400))

(declare-fun m!7771380 () Bool)

(assert (=> bs!1876798 m!7771380))

(assert (=> b!7053949 d!2204400))

(declare-fun d!2204402 () Bool)

(declare-fun c!1314069 () Bool)

(assert (=> d!2204402 (= c!1314069 (isEmpty!39718 (t!381998 s!7408)))))

(declare-fun e!4240779 () Bool)

(assert (=> d!2204402 (= (matchZipper!3104 lt!2531015 (t!381998 s!7408)) e!4240779)))

(declare-fun b!7054110 () Bool)

(assert (=> b!7054110 (= e!4240779 (nullableZipper!2651 lt!2531015))))

(declare-fun b!7054111 () Bool)

(assert (=> b!7054111 (= e!4240779 (matchZipper!3104 (derivationStepZipper!3014 lt!2531015 (head!14352 (t!381998 s!7408))) (tail!13690 (t!381998 s!7408))))))

(assert (= (and d!2204402 c!1314069) b!7054110))

(assert (= (and d!2204402 (not c!1314069)) b!7054111))

(assert (=> d!2204402 m!7771226))

(declare-fun m!7771382 () Bool)

(assert (=> b!7054110 m!7771382))

(assert (=> b!7054111 m!7771230))

(assert (=> b!7054111 m!7771230))

(declare-fun m!7771384 () Bool)

(assert (=> b!7054111 m!7771384))

(assert (=> b!7054111 m!7771234))

(assert (=> b!7054111 m!7771384))

(assert (=> b!7054111 m!7771234))

(declare-fun m!7771386 () Bool)

(assert (=> b!7054111 m!7771386))

(assert (=> b!7053939 d!2204402))

(declare-fun b!7054116 () Bool)

(declare-fun e!4240782 () Bool)

(declare-fun tp!1939967 () Bool)

(declare-fun tp!1939968 () Bool)

(assert (=> b!7054116 (= e!4240782 (and tp!1939967 tp!1939968))))

(assert (=> b!7053935 (= tp!1939949 e!4240782)))

(assert (= (and b!7053935 (is-Cons!68094 (exprs!7060 ct2!306))) b!7054116))

(declare-fun b!7054121 () Bool)

(declare-fun e!4240785 () Bool)

(declare-fun tp!1939971 () Bool)

(assert (=> b!7054121 (= e!4240785 (and tp_is_empty!44353 tp!1939971))))

(assert (=> b!7053946 (= tp!1939948 e!4240785)))

(assert (= (and b!7053946 (is-Cons!68095 (t!381998 s!7408))) b!7054121))

(declare-fun condSetEmpty!49810 () Bool)

(assert (=> setNonEmpty!49804 (= condSetEmpty!49810 (= setRest!49804 (as set.empty (Set Context!13120))))))

(declare-fun setRes!49810 () Bool)

(assert (=> setNonEmpty!49804 (= tp!1939950 setRes!49810)))

(declare-fun setIsEmpty!49810 () Bool)

(assert (=> setIsEmpty!49810 setRes!49810))

(declare-fun tp!1939976 () Bool)

(declare-fun setNonEmpty!49810 () Bool)

(declare-fun e!4240788 () Bool)

(declare-fun setElem!49810 () Context!13120)

(assert (=> setNonEmpty!49810 (= setRes!49810 (and tp!1939976 (inv!86770 setElem!49810) e!4240788))))

(declare-fun setRest!49810 () (Set Context!13120))

(assert (=> setNonEmpty!49810 (= setRest!49804 (set.union (set.insert setElem!49810 (as set.empty (Set Context!13120))) setRest!49810))))

(declare-fun b!7054126 () Bool)

(declare-fun tp!1939977 () Bool)

(assert (=> b!7054126 (= e!4240788 tp!1939977)))

(assert (= (and setNonEmpty!49804 condSetEmpty!49810) setIsEmpty!49810))

(assert (= (and setNonEmpty!49804 (not condSetEmpty!49810)) setNonEmpty!49810))

(assert (= setNonEmpty!49810 b!7054126))

(declare-fun m!7771388 () Bool)

(assert (=> setNonEmpty!49810 m!7771388))

(declare-fun b!7054127 () Bool)

(declare-fun e!4240789 () Bool)

(declare-fun tp!1939978 () Bool)

(declare-fun tp!1939979 () Bool)

(assert (=> b!7054127 (= e!4240789 (and tp!1939978 tp!1939979))))

(assert (=> b!7053944 (= tp!1939947 e!4240789)))

(assert (= (and b!7053944 (is-Cons!68094 (exprs!7060 setElem!49804))) b!7054127))

(declare-fun b_lambda!268593 () Bool)

(assert (= b_lambda!268591 (or b!7053949 b_lambda!268593)))

(declare-fun bs!1876799 () Bool)

(declare-fun d!2204404 () Bool)

(assert (= bs!1876799 (and d!2204404 b!7053949)))

(assert (=> bs!1876799 (= (dynLambda!27620 lambda!419826 lt!2531117) (matchZipper!3104 (set.insert lt!2531117 (as set.empty (Set Context!13120))) s!7408))))

(declare-fun m!7771390 () Bool)

(assert (=> bs!1876799 m!7771390))

(assert (=> bs!1876799 m!7771390))

(declare-fun m!7771392 () Bool)

(assert (=> bs!1876799 m!7771392))

(assert (=> d!2204394 d!2204404))

(declare-fun b_lambda!268595 () Bool)

(assert (= b_lambda!268587 (or b!7053940 b_lambda!268595)))

(declare-fun bs!1876800 () Bool)

(declare-fun d!2204406 () Bool)

(assert (= bs!1876800 (and d!2204406 b!7053940)))

(assert (=> bs!1876800 (= (dynLambda!27618 lambda!419829 lt!2530996) (derivationStepZipperUp!2148 lt!2530996 (h!74543 s!7408)))))

(assert (=> bs!1876800 m!7771124))

(assert (=> d!2204364 d!2204406))

(declare-fun b_lambda!268597 () Bool)

(assert (= b_lambda!268589 (or b!7053936 b_lambda!268597)))

(declare-fun bs!1876801 () Bool)

(declare-fun d!2204408 () Bool)

(assert (= bs!1876801 (and d!2204408 b!7053936)))

(declare-fun lt!2531124 () Unit!161801)

(assert (=> bs!1876801 (= lt!2531124 (lemmaConcatPreservesForall!875 (exprs!7060 lt!2531113) (exprs!7060 ct2!306) lambda!419828))))

(assert (=> bs!1876801 (= (dynLambda!27619 lambda!419827 lt!2531113) (Context!13121 (++!15647 (exprs!7060 lt!2531113) (exprs!7060 ct2!306))))))

(declare-fun m!7771394 () Bool)

(assert (=> bs!1876801 m!7771394))

(declare-fun m!7771396 () Bool)

(assert (=> bs!1876801 m!7771396))

(assert (=> d!2204380 d!2204408))

(push 1)

(assert (not d!2204352))

(assert (not d!2204398))

(assert (not d!2204368))

(assert (not d!2204348))

(assert (not b!7054022))

(assert (not d!2204372))

(assert (not b!7054095))

(assert (not b!7054126))

(assert (not b_lambda!268593))

(assert (not b!7054110))

(assert (not d!2204392))

(assert (not b!7054060))

(assert (not b!7054116))

(assert (not b!7054127))

(assert (not b!7054019))

(assert (not d!2204378))

(assert (not b!7054034))

(assert (not d!2204366))

(assert (not bm!640776))

(assert (not d!2204400))

(assert (not setNonEmpty!49810))

(assert (not bm!640771))

(assert (not b!7054063))

(assert (not bm!640772))

(assert (not b_lambda!268595))

(assert (not bm!640757))

(assert (not b!7054016))

(assert (not bs!1876799))

(assert (not b!7054100))

(assert (not b!7054014))

(assert (not d!2204386))

(assert (not bm!640758))

(assert (not d!2204380))

(assert (not b!7054059))

(assert (not d!2204364))

(assert (not b!7054041))

(assert tp_is_empty!44353)

(assert (not b!7054066))

(assert (not b!7054121))

(assert (not b!7054051))

(assert (not b!7054107))

(assert (not d!2204396))

(assert (not d!2204356))

(assert (not d!2204354))

(assert (not b!7054052))

(assert (not d!2204362))

(assert (not d!2204374))

(assert (not b_lambda!268597))

(assert (not b!7054017))

(assert (not d!2204382))

(assert (not b!7054040))

(assert (not d!2204350))

(assert (not bs!1876801))

(assert (not d!2204370))

(assert (not b!7054111))

(assert (not d!2204360))

(assert (not b!7054015))

(assert (not b!7054101))

(assert (not d!2204394))

(assert (not b!7054018))

(assert (not d!2204346))

(assert (not b!7054037))

(assert (not bs!1876800))

(assert (not d!2204402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

