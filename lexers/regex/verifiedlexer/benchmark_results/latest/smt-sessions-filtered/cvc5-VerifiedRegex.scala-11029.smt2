; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!572072 () Bool)

(assert start!572072)

(declare-fun b!5463913 () Bool)

(assert (=> b!5463913 true))

(assert (=> b!5463913 true))

(declare-fun lambda!290151 () Int)

(declare-fun lambda!290150 () Int)

(assert (=> b!5463913 (not (= lambda!290151 lambda!290150))))

(assert (=> b!5463913 true))

(assert (=> b!5463913 true))

(declare-fun lambda!290152 () Int)

(assert (=> b!5463913 (not (= lambda!290152 lambda!290150))))

(assert (=> b!5463913 (not (= lambda!290152 lambda!290151))))

(assert (=> b!5463913 true))

(assert (=> b!5463913 true))

(declare-fun b!5463905 () Bool)

(declare-fun res!2327657 () Bool)

(declare-fun e!3383123 () Bool)

(assert (=> b!5463905 (=> res!2327657 e!3383123)))

(declare-datatypes ((C!30878 0))(
  ( (C!30879 (val!25141 Int)) )
))
(declare-datatypes ((Regex!15304 0))(
  ( (ElementMatch!15304 (c!954714 C!30878)) (Concat!24149 (regOne!31120 Regex!15304) (regTwo!31120 Regex!15304)) (EmptyExpr!15304) (Star!15304 (reg!15633 Regex!15304)) (EmptyLang!15304) (Union!15304 (regOne!31121 Regex!15304) (regTwo!31121 Regex!15304)) )
))
(declare-datatypes ((List!62211 0))(
  ( (Nil!62087) (Cons!62087 (h!68535 Regex!15304) (t!375440 List!62211)) )
))
(declare-datatypes ((Context!9376 0))(
  ( (Context!9377 (exprs!5188 List!62211)) )
))
(declare-datatypes ((List!62212 0))(
  ( (Nil!62088) (Cons!62088 (h!68536 Context!9376) (t!375441 List!62212)) )
))
(declare-fun zl!343 () List!62212)

(declare-fun isEmpty!34060 (List!62212) Bool)

(assert (=> b!5463905 (= res!2327657 (not (isEmpty!34060 (t!375441 zl!343))))))

(declare-fun b!5463906 () Bool)

(declare-fun e!3383119 () Bool)

(declare-fun tp_is_empty!39861 () Bool)

(assert (=> b!5463906 (= e!3383119 tp_is_empty!39861)))

(declare-fun b!5463907 () Bool)

(declare-fun tp!1502857 () Bool)

(assert (=> b!5463907 (= e!3383119 tp!1502857)))

(declare-fun b!5463908 () Bool)

(declare-fun tp!1502858 () Bool)

(declare-fun tp!1502856 () Bool)

(assert (=> b!5463908 (= e!3383119 (and tp!1502858 tp!1502856))))

(declare-fun b!5463909 () Bool)

(declare-fun res!2327665 () Bool)

(assert (=> b!5463909 (=> res!2327665 e!3383123)))

(declare-fun r!7292 () Regex!15304)

(declare-fun generalisedConcat!973 (List!62211) Regex!15304)

(assert (=> b!5463909 (= res!2327665 (not (= r!7292 (generalisedConcat!973 (exprs!5188 (h!68536 zl!343))))))))

(declare-fun b!5463910 () Bool)

(declare-fun e!3383124 () Bool)

(declare-fun tp!1502852 () Bool)

(assert (=> b!5463910 (= e!3383124 tp!1502852)))

(declare-fun b!5463911 () Bool)

(declare-fun e!3383122 () Bool)

(declare-datatypes ((List!62213 0))(
  ( (Nil!62089) (Cons!62089 (h!68537 C!30878) (t!375442 List!62213)) )
))
(declare-fun s!2326 () List!62213)

(declare-fun ++!13665 (List!62213 List!62213) List!62213)

(assert (=> b!5463911 (= e!3383122 (= (++!13665 Nil!62089 s!2326) s!2326))))

(declare-fun b!5463912 () Bool)

(declare-fun res!2327659 () Bool)

(assert (=> b!5463912 (=> res!2327659 e!3383123)))

(declare-fun generalisedUnion!1233 (List!62211) Regex!15304)

(declare-fun unfocusZipperList!746 (List!62212) List!62211)

(assert (=> b!5463912 (= res!2327659 (not (= r!7292 (generalisedUnion!1233 (unfocusZipperList!746 zl!343)))))))

(assert (=> b!5463913 (= e!3383123 e!3383122)))

(declare-fun res!2327666 () Bool)

(assert (=> b!5463913 (=> res!2327666 e!3383122)))

(declare-fun isEmpty!34061 (List!62213) Bool)

(assert (=> b!5463913 (= res!2327666 (isEmpty!34061 s!2326))))

(declare-fun Exists!2483 (Int) Bool)

(assert (=> b!5463913 (= (Exists!2483 lambda!290150) (Exists!2483 lambda!290152))))

(declare-datatypes ((Unit!155058 0))(
  ( (Unit!155059) )
))
(declare-fun lt!2232923 () Unit!155058)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1133 (Regex!15304 Regex!15304 List!62213) Unit!155058)

(assert (=> b!5463913 (= lt!2232923 (lemmaExistCutMatchRandMatchRSpecEquivalent!1133 (reg!15633 r!7292) r!7292 s!2326))))

(assert (=> b!5463913 (= (Exists!2483 lambda!290150) (Exists!2483 lambda!290151))))

(declare-fun lt!2232921 () Unit!155058)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!457 (Regex!15304 List!62213) Unit!155058)

(assert (=> b!5463913 (= lt!2232921 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!457 (reg!15633 r!7292) s!2326))))

(declare-datatypes ((tuple2!65002 0))(
  ( (tuple2!65003 (_1!35804 List!62213) (_2!35804 List!62213)) )
))
(declare-datatypes ((Option!15413 0))(
  ( (None!15412) (Some!15412 (v!51441 tuple2!65002)) )
))
(declare-fun isDefined!12116 (Option!15413) Bool)

(declare-fun findConcatSeparation!1827 (Regex!15304 Regex!15304 List!62213 List!62213 List!62213) Option!15413)

(assert (=> b!5463913 (= (isDefined!12116 (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 Nil!62089 s!2326 s!2326)) (Exists!2483 lambda!290150))))

(declare-fun lt!2232922 () Unit!155058)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1591 (Regex!15304 Regex!15304 List!62213) Unit!155058)

(assert (=> b!5463913 (= lt!2232922 (lemmaFindConcatSeparationEquivalentToExists!1591 (reg!15633 r!7292) r!7292 s!2326))))

(declare-fun b!5463914 () Bool)

(declare-fun res!2327660 () Bool)

(assert (=> b!5463914 (=> res!2327660 e!3383122)))

(declare-fun validRegex!7040 (Regex!15304) Bool)

(assert (=> b!5463914 (= res!2327660 (not (validRegex!7040 r!7292)))))

(declare-fun b!5463915 () Bool)

(declare-fun res!2327663 () Bool)

(assert (=> b!5463915 (=> res!2327663 e!3383123)))

(assert (=> b!5463915 (= res!2327663 (or (is-EmptyExpr!15304 r!7292) (is-EmptyLang!15304 r!7292) (is-ElementMatch!15304 r!7292) (is-Union!15304 r!7292) (is-Concat!24149 r!7292)))))

(declare-fun b!5463916 () Bool)

(declare-fun res!2327661 () Bool)

(assert (=> b!5463916 (=> res!2327661 e!3383122)))

(assert (=> b!5463916 (= res!2327661 (not (validRegex!7040 (reg!15633 r!7292))))))

(declare-fun b!5463917 () Bool)

(declare-fun e!3383118 () Bool)

(declare-fun tp!1502853 () Bool)

(assert (=> b!5463917 (= e!3383118 tp!1502853)))

(declare-fun b!5463919 () Bool)

(declare-fun e!3383117 () Bool)

(assert (=> b!5463919 (= e!3383117 (not e!3383123))))

(declare-fun res!2327658 () Bool)

(assert (=> b!5463919 (=> res!2327658 e!3383123)))

(assert (=> b!5463919 (= res!2327658 (not (is-Cons!62088 zl!343)))))

(declare-fun matchR!7489 (Regex!15304 List!62213) Bool)

(declare-fun matchRSpec!2407 (Regex!15304 List!62213) Bool)

(assert (=> b!5463919 (= (matchR!7489 r!7292 s!2326) (matchRSpec!2407 r!7292 s!2326))))

(declare-fun lt!2232920 () Unit!155058)

(declare-fun mainMatchTheorem!2407 (Regex!15304 List!62213) Unit!155058)

(assert (=> b!5463919 (= lt!2232920 (mainMatchTheorem!2407 r!7292 s!2326))))

(declare-fun b!5463920 () Bool)

(declare-fun e!3383120 () Bool)

(declare-fun tp!1502851 () Bool)

(assert (=> b!5463920 (= e!3383120 (and tp_is_empty!39861 tp!1502851))))

(declare-fun b!5463921 () Bool)

(declare-fun res!2327664 () Bool)

(assert (=> b!5463921 (=> (not res!2327664) (not e!3383117))))

(declare-fun unfocusZipper!1046 (List!62212) Regex!15304)

(assert (=> b!5463921 (= res!2327664 (= r!7292 (unfocusZipper!1046 zl!343)))))

(declare-fun b!5463922 () Bool)

(declare-fun tp!1502850 () Bool)

(declare-fun tp!1502859 () Bool)

(assert (=> b!5463922 (= e!3383119 (and tp!1502850 tp!1502859))))

(declare-fun setNonEmpty!35782 () Bool)

(declare-fun tp!1502855 () Bool)

(declare-fun setRes!35782 () Bool)

(declare-fun setElem!35782 () Context!9376)

(declare-fun inv!81508 (Context!9376) Bool)

(assert (=> setNonEmpty!35782 (= setRes!35782 (and tp!1502855 (inv!81508 setElem!35782) e!3383118))))

(declare-fun z!1189 () (Set Context!9376))

(declare-fun setRest!35782 () (Set Context!9376))

(assert (=> setNonEmpty!35782 (= z!1189 (set.union (set.insert setElem!35782 (as set.empty (Set Context!9376))) setRest!35782))))

(declare-fun setIsEmpty!35782 () Bool)

(assert (=> setIsEmpty!35782 setRes!35782))

(declare-fun res!2327662 () Bool)

(assert (=> start!572072 (=> (not res!2327662) (not e!3383117))))

(assert (=> start!572072 (= res!2327662 (validRegex!7040 r!7292))))

(assert (=> start!572072 e!3383117))

(assert (=> start!572072 e!3383119))

(declare-fun condSetEmpty!35782 () Bool)

(assert (=> start!572072 (= condSetEmpty!35782 (= z!1189 (as set.empty (Set Context!9376))))))

(assert (=> start!572072 setRes!35782))

(declare-fun e!3383121 () Bool)

(assert (=> start!572072 e!3383121))

(assert (=> start!572072 e!3383120))

(declare-fun tp!1502854 () Bool)

(declare-fun b!5463918 () Bool)

(assert (=> b!5463918 (= e!3383121 (and (inv!81508 (h!68536 zl!343)) e!3383124 tp!1502854))))

(declare-fun b!5463923 () Bool)

(declare-fun res!2327668 () Bool)

(assert (=> b!5463923 (=> res!2327668 e!3383123)))

(assert (=> b!5463923 (= res!2327668 (not (is-Cons!62087 (exprs!5188 (h!68536 zl!343)))))))

(declare-fun b!5463924 () Bool)

(declare-fun res!2327667 () Bool)

(assert (=> b!5463924 (=> (not res!2327667) (not e!3383117))))

(declare-fun toList!9088 ((Set Context!9376)) List!62212)

(assert (=> b!5463924 (= res!2327667 (= (toList!9088 z!1189) zl!343))))

(assert (= (and start!572072 res!2327662) b!5463924))

(assert (= (and b!5463924 res!2327667) b!5463921))

(assert (= (and b!5463921 res!2327664) b!5463919))

(assert (= (and b!5463919 (not res!2327658)) b!5463905))

(assert (= (and b!5463905 (not res!2327657)) b!5463909))

(assert (= (and b!5463909 (not res!2327665)) b!5463923))

(assert (= (and b!5463923 (not res!2327668)) b!5463912))

(assert (= (and b!5463912 (not res!2327659)) b!5463915))

(assert (= (and b!5463915 (not res!2327663)) b!5463913))

(assert (= (and b!5463913 (not res!2327666)) b!5463916))

(assert (= (and b!5463916 (not res!2327661)) b!5463914))

(assert (= (and b!5463914 (not res!2327660)) b!5463911))

(assert (= (and start!572072 (is-ElementMatch!15304 r!7292)) b!5463906))

(assert (= (and start!572072 (is-Concat!24149 r!7292)) b!5463922))

(assert (= (and start!572072 (is-Star!15304 r!7292)) b!5463907))

(assert (= (and start!572072 (is-Union!15304 r!7292)) b!5463908))

(assert (= (and start!572072 condSetEmpty!35782) setIsEmpty!35782))

(assert (= (and start!572072 (not condSetEmpty!35782)) setNonEmpty!35782))

(assert (= setNonEmpty!35782 b!5463917))

(assert (= b!5463918 b!5463910))

(assert (= (and start!572072 (is-Cons!62088 zl!343)) b!5463918))

(assert (= (and start!572072 (is-Cons!62089 s!2326)) b!5463920))

(declare-fun m!6484488 () Bool)

(assert (=> b!5463909 m!6484488))

(declare-fun m!6484490 () Bool)

(assert (=> b!5463919 m!6484490))

(declare-fun m!6484492 () Bool)

(assert (=> b!5463919 m!6484492))

(declare-fun m!6484494 () Bool)

(assert (=> b!5463919 m!6484494))

(declare-fun m!6484496 () Bool)

(assert (=> b!5463913 m!6484496))

(declare-fun m!6484498 () Bool)

(assert (=> b!5463913 m!6484498))

(declare-fun m!6484500 () Bool)

(assert (=> b!5463913 m!6484500))

(declare-fun m!6484502 () Bool)

(assert (=> b!5463913 m!6484502))

(declare-fun m!6484504 () Bool)

(assert (=> b!5463913 m!6484504))

(assert (=> b!5463913 m!6484500))

(declare-fun m!6484506 () Bool)

(assert (=> b!5463913 m!6484506))

(declare-fun m!6484508 () Bool)

(assert (=> b!5463913 m!6484508))

(assert (=> b!5463913 m!6484500))

(assert (=> b!5463913 m!6484508))

(declare-fun m!6484510 () Bool)

(assert (=> b!5463913 m!6484510))

(declare-fun m!6484512 () Bool)

(assert (=> b!5463913 m!6484512))

(declare-fun m!6484514 () Bool)

(assert (=> b!5463918 m!6484514))

(declare-fun m!6484516 () Bool)

(assert (=> b!5463916 m!6484516))

(declare-fun m!6484518 () Bool)

(assert (=> b!5463911 m!6484518))

(declare-fun m!6484520 () Bool)

(assert (=> start!572072 m!6484520))

(declare-fun m!6484522 () Bool)

(assert (=> b!5463921 m!6484522))

(declare-fun m!6484524 () Bool)

(assert (=> setNonEmpty!35782 m!6484524))

(declare-fun m!6484526 () Bool)

(assert (=> b!5463924 m!6484526))

(assert (=> b!5463914 m!6484520))

(declare-fun m!6484528 () Bool)

(assert (=> b!5463912 m!6484528))

(assert (=> b!5463912 m!6484528))

(declare-fun m!6484530 () Bool)

(assert (=> b!5463912 m!6484530))

(declare-fun m!6484532 () Bool)

(assert (=> b!5463905 m!6484532))

(push 1)

(assert (not b!5463924))

(assert (not b!5463910))

(assert (not b!5463908))

(assert (not setNonEmpty!35782))

(assert (not b!5463913))

(assert (not b!5463920))

(assert (not b!5463911))

(assert (not start!572072))

(assert (not b!5463905))

(assert (not b!5463907))

(assert tp_is_empty!39861)

(assert (not b!5463922))

(assert (not b!5463916))

(assert (not b!5463909))

(assert (not b!5463918))

(assert (not b!5463914))

(assert (not b!5463912))

(assert (not b!5463919))

(assert (not b!5463921))

(assert (not b!5463917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5464035 () Bool)

(declare-fun e!3383174 () Regex!15304)

(assert (=> b!5464035 (= e!3383174 (Concat!24149 (h!68535 (exprs!5188 (h!68536 zl!343))) (generalisedConcat!973 (t!375440 (exprs!5188 (h!68536 zl!343))))))))

(declare-fun b!5464036 () Bool)

(declare-fun e!3383171 () Bool)

(declare-fun lt!2232938 () Regex!15304)

(declare-fun isEmptyExpr!1023 (Regex!15304) Bool)

(assert (=> b!5464036 (= e!3383171 (isEmptyExpr!1023 lt!2232938))))

(declare-fun b!5464037 () Bool)

(declare-fun e!3383175 () Bool)

(declare-fun head!11699 (List!62211) Regex!15304)

(assert (=> b!5464037 (= e!3383175 (= lt!2232938 (head!11699 (exprs!5188 (h!68536 zl!343)))))))

(declare-fun b!5464038 () Bool)

(declare-fun e!3383176 () Regex!15304)

(assert (=> b!5464038 (= e!3383176 e!3383174)))

(declare-fun c!954727 () Bool)

(assert (=> b!5464038 (= c!954727 (is-Cons!62087 (exprs!5188 (h!68536 zl!343))))))

(declare-fun b!5464039 () Bool)

(assert (=> b!5464039 (= e!3383174 EmptyExpr!15304)))

(declare-fun b!5464040 () Bool)

(declare-fun e!3383173 () Bool)

(assert (=> b!5464040 (= e!3383173 e!3383171)))

(declare-fun c!954725 () Bool)

(declare-fun isEmpty!34064 (List!62211) Bool)

(assert (=> b!5464040 (= c!954725 (isEmpty!34064 (exprs!5188 (h!68536 zl!343))))))

(declare-fun b!5464041 () Bool)

(declare-fun isConcat!546 (Regex!15304) Bool)

(assert (=> b!5464041 (= e!3383175 (isConcat!546 lt!2232938))))

(declare-fun b!5464042 () Bool)

(assert (=> b!5464042 (= e!3383171 e!3383175)))

(declare-fun c!954726 () Bool)

(declare-fun tail!10796 (List!62211) List!62211)

(assert (=> b!5464042 (= c!954726 (isEmpty!34064 (tail!10796 (exprs!5188 (h!68536 zl!343)))))))

(declare-fun b!5464043 () Bool)

(declare-fun e!3383172 () Bool)

(assert (=> b!5464043 (= e!3383172 (isEmpty!34064 (t!375440 (exprs!5188 (h!68536 zl!343)))))))

(declare-fun d!1738424 () Bool)

(assert (=> d!1738424 e!3383173))

(declare-fun res!2327731 () Bool)

(assert (=> d!1738424 (=> (not res!2327731) (not e!3383173))))

(assert (=> d!1738424 (= res!2327731 (validRegex!7040 lt!2232938))))

(assert (=> d!1738424 (= lt!2232938 e!3383176)))

(declare-fun c!954724 () Bool)

(assert (=> d!1738424 (= c!954724 e!3383172)))

(declare-fun res!2327732 () Bool)

(assert (=> d!1738424 (=> (not res!2327732) (not e!3383172))))

(assert (=> d!1738424 (= res!2327732 (is-Cons!62087 (exprs!5188 (h!68536 zl!343))))))

(declare-fun lambda!290168 () Int)

(declare-fun forall!14597 (List!62211 Int) Bool)

(assert (=> d!1738424 (forall!14597 (exprs!5188 (h!68536 zl!343)) lambda!290168)))

(assert (=> d!1738424 (= (generalisedConcat!973 (exprs!5188 (h!68536 zl!343))) lt!2232938)))

(declare-fun b!5464044 () Bool)

(assert (=> b!5464044 (= e!3383176 (h!68535 (exprs!5188 (h!68536 zl!343))))))

(assert (= (and d!1738424 res!2327732) b!5464043))

(assert (= (and d!1738424 c!954724) b!5464044))

(assert (= (and d!1738424 (not c!954724)) b!5464038))

(assert (= (and b!5464038 c!954727) b!5464035))

(assert (= (and b!5464038 (not c!954727)) b!5464039))

(assert (= (and d!1738424 res!2327731) b!5464040))

(assert (= (and b!5464040 c!954725) b!5464036))

(assert (= (and b!5464040 (not c!954725)) b!5464042))

(assert (= (and b!5464042 c!954726) b!5464037))

(assert (= (and b!5464042 (not c!954726)) b!5464041))

(declare-fun m!6484580 () Bool)

(assert (=> d!1738424 m!6484580))

(declare-fun m!6484582 () Bool)

(assert (=> d!1738424 m!6484582))

(declare-fun m!6484584 () Bool)

(assert (=> b!5464043 m!6484584))

(declare-fun m!6484586 () Bool)

(assert (=> b!5464036 m!6484586))

(declare-fun m!6484588 () Bool)

(assert (=> b!5464035 m!6484588))

(declare-fun m!6484590 () Bool)

(assert (=> b!5464042 m!6484590))

(assert (=> b!5464042 m!6484590))

(declare-fun m!6484592 () Bool)

(assert (=> b!5464042 m!6484592))

(declare-fun m!6484594 () Bool)

(assert (=> b!5464037 m!6484594))

(declare-fun m!6484596 () Bool)

(assert (=> b!5464040 m!6484596))

(declare-fun m!6484598 () Bool)

(assert (=> b!5464041 m!6484598))

(assert (=> b!5463909 d!1738424))

(declare-fun b!5464073 () Bool)

(declare-fun e!3383194 () Bool)

(declare-fun head!11700 (List!62213) C!30878)

(assert (=> b!5464073 (= e!3383194 (not (= (head!11700 s!2326) (c!954714 r!7292))))))

(declare-fun b!5464074 () Bool)

(declare-fun res!2327749 () Bool)

(assert (=> b!5464074 (=> res!2327749 e!3383194)))

(declare-fun tail!10797 (List!62213) List!62213)

(assert (=> b!5464074 (= res!2327749 (not (isEmpty!34061 (tail!10797 s!2326))))))

(declare-fun b!5464075 () Bool)

(declare-fun res!2327751 () Bool)

(declare-fun e!3383192 () Bool)

(assert (=> b!5464075 (=> res!2327751 e!3383192)))

(assert (=> b!5464075 (= res!2327751 (not (is-ElementMatch!15304 r!7292)))))

(declare-fun e!3383196 () Bool)

(assert (=> b!5464075 (= e!3383196 e!3383192)))

(declare-fun b!5464076 () Bool)

(declare-fun e!3383195 () Bool)

(declare-fun derivativeStep!4312 (Regex!15304 C!30878) Regex!15304)

(assert (=> b!5464076 (= e!3383195 (matchR!7489 (derivativeStep!4312 r!7292 (head!11700 s!2326)) (tail!10797 s!2326)))))

(declare-fun b!5464077 () Bool)

(declare-fun e!3383197 () Bool)

(assert (=> b!5464077 (= e!3383197 e!3383194)))

(declare-fun res!2327753 () Bool)

(assert (=> b!5464077 (=> res!2327753 e!3383194)))

(declare-fun call!403238 () Bool)

(assert (=> b!5464077 (= res!2327753 call!403238)))

(declare-fun b!5464078 () Bool)

(declare-fun e!3383191 () Bool)

(declare-fun lt!2232941 () Bool)

(assert (=> b!5464078 (= e!3383191 (= lt!2232941 call!403238))))

(declare-fun b!5464079 () Bool)

(assert (=> b!5464079 (= e!3383192 e!3383197)))

(declare-fun res!2327750 () Bool)

(assert (=> b!5464079 (=> (not res!2327750) (not e!3383197))))

(assert (=> b!5464079 (= res!2327750 (not lt!2232941))))

(declare-fun bm!403233 () Bool)

(assert (=> bm!403233 (= call!403238 (isEmpty!34061 s!2326))))

(declare-fun d!1738426 () Bool)

(assert (=> d!1738426 e!3383191))

(declare-fun c!954736 () Bool)

(assert (=> d!1738426 (= c!954736 (is-EmptyExpr!15304 r!7292))))

(assert (=> d!1738426 (= lt!2232941 e!3383195)))

(declare-fun c!954735 () Bool)

(assert (=> d!1738426 (= c!954735 (isEmpty!34061 s!2326))))

(assert (=> d!1738426 (validRegex!7040 r!7292)))

(assert (=> d!1738426 (= (matchR!7489 r!7292 s!2326) lt!2232941)))

(declare-fun b!5464080 () Bool)

(assert (=> b!5464080 (= e!3383191 e!3383196)))

(declare-fun c!954734 () Bool)

(assert (=> b!5464080 (= c!954734 (is-EmptyLang!15304 r!7292))))

(declare-fun b!5464081 () Bool)

(declare-fun res!2327755 () Bool)

(declare-fun e!3383193 () Bool)

(assert (=> b!5464081 (=> (not res!2327755) (not e!3383193))))

(assert (=> b!5464081 (= res!2327755 (isEmpty!34061 (tail!10797 s!2326)))))

(declare-fun b!5464082 () Bool)

(declare-fun nullable!5463 (Regex!15304) Bool)

(assert (=> b!5464082 (= e!3383195 (nullable!5463 r!7292))))

(declare-fun b!5464083 () Bool)

(assert (=> b!5464083 (= e!3383193 (= (head!11700 s!2326) (c!954714 r!7292)))))

(declare-fun b!5464084 () Bool)

(assert (=> b!5464084 (= e!3383196 (not lt!2232941))))

(declare-fun b!5464085 () Bool)

(declare-fun res!2327752 () Bool)

(assert (=> b!5464085 (=> res!2327752 e!3383192)))

(assert (=> b!5464085 (= res!2327752 e!3383193)))

(declare-fun res!2327754 () Bool)

(assert (=> b!5464085 (=> (not res!2327754) (not e!3383193))))

(assert (=> b!5464085 (= res!2327754 lt!2232941)))

(declare-fun b!5464086 () Bool)

(declare-fun res!2327756 () Bool)

(assert (=> b!5464086 (=> (not res!2327756) (not e!3383193))))

(assert (=> b!5464086 (= res!2327756 (not call!403238))))

(assert (= (and d!1738426 c!954735) b!5464082))

(assert (= (and d!1738426 (not c!954735)) b!5464076))

(assert (= (and d!1738426 c!954736) b!5464078))

(assert (= (and d!1738426 (not c!954736)) b!5464080))

(assert (= (and b!5464080 c!954734) b!5464084))

(assert (= (and b!5464080 (not c!954734)) b!5464075))

(assert (= (and b!5464075 (not res!2327751)) b!5464085))

(assert (= (and b!5464085 res!2327754) b!5464086))

(assert (= (and b!5464086 res!2327756) b!5464081))

(assert (= (and b!5464081 res!2327755) b!5464083))

(assert (= (and b!5464085 (not res!2327752)) b!5464079))

(assert (= (and b!5464079 res!2327750) b!5464077))

(assert (= (and b!5464077 (not res!2327753)) b!5464074))

(assert (= (and b!5464074 (not res!2327749)) b!5464073))

(assert (= (or b!5464078 b!5464077 b!5464086) bm!403233))

(declare-fun m!6484600 () Bool)

(assert (=> b!5464083 m!6484600))

(declare-fun m!6484602 () Bool)

(assert (=> b!5464082 m!6484602))

(assert (=> bm!403233 m!6484498))

(assert (=> b!5464076 m!6484600))

(assert (=> b!5464076 m!6484600))

(declare-fun m!6484604 () Bool)

(assert (=> b!5464076 m!6484604))

(declare-fun m!6484606 () Bool)

(assert (=> b!5464076 m!6484606))

(assert (=> b!5464076 m!6484604))

(assert (=> b!5464076 m!6484606))

(declare-fun m!6484608 () Bool)

(assert (=> b!5464076 m!6484608))

(assert (=> b!5464081 m!6484606))

(assert (=> b!5464081 m!6484606))

(declare-fun m!6484610 () Bool)

(assert (=> b!5464081 m!6484610))

(assert (=> d!1738426 m!6484498))

(assert (=> d!1738426 m!6484520))

(assert (=> b!5464074 m!6484606))

(assert (=> b!5464074 m!6484606))

(assert (=> b!5464074 m!6484610))

(assert (=> b!5464073 m!6484600))

(assert (=> b!5463919 d!1738426))

(declare-fun bs!1264399 () Bool)

(declare-fun b!5464153 () Bool)

(assert (= bs!1264399 (and b!5464153 b!5463913)))

(declare-fun lambda!290173 () Int)

(assert (=> bs!1264399 (not (= lambda!290173 lambda!290150))))

(assert (=> bs!1264399 (= lambda!290173 lambda!290151)))

(assert (=> bs!1264399 (not (= lambda!290173 lambda!290152))))

(assert (=> b!5464153 true))

(assert (=> b!5464153 true))

(declare-fun bs!1264400 () Bool)

(declare-fun b!5464148 () Bool)

(assert (= bs!1264400 (and b!5464148 b!5463913)))

(declare-fun lambda!290174 () Int)

(assert (=> bs!1264400 (not (= lambda!290174 lambda!290150))))

(assert (=> bs!1264400 (not (= lambda!290174 lambda!290151))))

(assert (=> bs!1264400 (= (and (= (regOne!31120 r!7292) (reg!15633 r!7292)) (= (regTwo!31120 r!7292) r!7292)) (= lambda!290174 lambda!290152))))

(declare-fun bs!1264401 () Bool)

(assert (= bs!1264401 (and b!5464148 b!5464153)))

(assert (=> bs!1264401 (not (= lambda!290174 lambda!290173))))

(assert (=> b!5464148 true))

(assert (=> b!5464148 true))

(declare-fun b!5464147 () Bool)

(declare-fun e!3383233 () Bool)

(assert (=> b!5464147 (= e!3383233 (= s!2326 (Cons!62089 (c!954714 r!7292) Nil!62089)))))

(declare-fun bm!403240 () Bool)

(declare-fun c!954752 () Bool)

(declare-fun call!403245 () Bool)

(assert (=> bm!403240 (= call!403245 (Exists!2483 (ite c!954752 lambda!290173 lambda!290174)))))

(declare-fun e!3383235 () Bool)

(assert (=> b!5464148 (= e!3383235 call!403245)))

(declare-fun bm!403241 () Bool)

(declare-fun call!403246 () Bool)

(assert (=> bm!403241 (= call!403246 (isEmpty!34061 s!2326))))

(declare-fun b!5464149 () Bool)

(declare-fun c!954754 () Bool)

(assert (=> b!5464149 (= c!954754 (is-ElementMatch!15304 r!7292))))

(declare-fun e!3383236 () Bool)

(assert (=> b!5464149 (= e!3383236 e!3383233)))

(declare-fun b!5464150 () Bool)

(declare-fun e!3383234 () Bool)

(declare-fun e!3383232 () Bool)

(assert (=> b!5464150 (= e!3383234 e!3383232)))

(declare-fun res!2327790 () Bool)

(assert (=> b!5464150 (= res!2327790 (matchRSpec!2407 (regOne!31121 r!7292) s!2326))))

(assert (=> b!5464150 (=> res!2327790 e!3383232)))

(declare-fun d!1738430 () Bool)

(declare-fun c!954753 () Bool)

(assert (=> d!1738430 (= c!954753 (is-EmptyExpr!15304 r!7292))))

(declare-fun e!3383231 () Bool)

(assert (=> d!1738430 (= (matchRSpec!2407 r!7292 s!2326) e!3383231)))

(declare-fun b!5464151 () Bool)

(assert (=> b!5464151 (= e!3383232 (matchRSpec!2407 (regTwo!31121 r!7292) s!2326))))

(declare-fun b!5464152 () Bool)

(assert (=> b!5464152 (= e!3383231 e!3383236)))

(declare-fun res!2327791 () Bool)

(assert (=> b!5464152 (= res!2327791 (not (is-EmptyLang!15304 r!7292)))))

(assert (=> b!5464152 (=> (not res!2327791) (not e!3383236))))

(declare-fun e!3383230 () Bool)

(assert (=> b!5464153 (= e!3383230 call!403245)))

(declare-fun b!5464154 () Bool)

(assert (=> b!5464154 (= e!3383231 call!403246)))

(declare-fun b!5464155 () Bool)

(assert (=> b!5464155 (= e!3383234 e!3383235)))

(assert (=> b!5464155 (= c!954752 (is-Star!15304 r!7292))))

(declare-fun b!5464156 () Bool)

(declare-fun res!2327789 () Bool)

(assert (=> b!5464156 (=> res!2327789 e!3383230)))

(assert (=> b!5464156 (= res!2327789 call!403246)))

(assert (=> b!5464156 (= e!3383235 e!3383230)))

(declare-fun b!5464157 () Bool)

(declare-fun c!954751 () Bool)

(assert (=> b!5464157 (= c!954751 (is-Union!15304 r!7292))))

(assert (=> b!5464157 (= e!3383233 e!3383234)))

(assert (= (and d!1738430 c!954753) b!5464154))

(assert (= (and d!1738430 (not c!954753)) b!5464152))

(assert (= (and b!5464152 res!2327791) b!5464149))

(assert (= (and b!5464149 c!954754) b!5464147))

(assert (= (and b!5464149 (not c!954754)) b!5464157))

(assert (= (and b!5464157 c!954751) b!5464150))

(assert (= (and b!5464157 (not c!954751)) b!5464155))

(assert (= (and b!5464150 (not res!2327790)) b!5464151))

(assert (= (and b!5464155 c!954752) b!5464156))

(assert (= (and b!5464155 (not c!954752)) b!5464148))

(assert (= (and b!5464156 (not res!2327789)) b!5464153))

(assert (= (or b!5464153 b!5464148) bm!403240))

(assert (= (or b!5464154 b!5464156) bm!403241))

(declare-fun m!6484612 () Bool)

(assert (=> bm!403240 m!6484612))

(assert (=> bm!403241 m!6484498))

(declare-fun m!6484614 () Bool)

(assert (=> b!5464150 m!6484614))

(declare-fun m!6484616 () Bool)

(assert (=> b!5464151 m!6484616))

(assert (=> b!5463919 d!1738430))

(declare-fun d!1738432 () Bool)

(assert (=> d!1738432 (= (matchR!7489 r!7292 s!2326) (matchRSpec!2407 r!7292 s!2326))))

(declare-fun lt!2232946 () Unit!155058)

(declare-fun choose!41535 (Regex!15304 List!62213) Unit!155058)

(assert (=> d!1738432 (= lt!2232946 (choose!41535 r!7292 s!2326))))

(assert (=> d!1738432 (validRegex!7040 r!7292)))

(assert (=> d!1738432 (= (mainMatchTheorem!2407 r!7292 s!2326) lt!2232946)))

(declare-fun bs!1264402 () Bool)

(assert (= bs!1264402 d!1738432))

(assert (=> bs!1264402 m!6484490))

(assert (=> bs!1264402 m!6484492))

(declare-fun m!6484618 () Bool)

(assert (=> bs!1264402 m!6484618))

(assert (=> bs!1264402 m!6484520))

(assert (=> b!5463919 d!1738432))

(declare-fun bs!1264403 () Bool)

(declare-fun d!1738434 () Bool)

(assert (= bs!1264403 (and d!1738434 d!1738424)))

(declare-fun lambda!290177 () Int)

(assert (=> bs!1264403 (= lambda!290177 lambda!290168)))

(assert (=> d!1738434 (= (inv!81508 (h!68536 zl!343)) (forall!14597 (exprs!5188 (h!68536 zl!343)) lambda!290177))))

(declare-fun bs!1264404 () Bool)

(assert (= bs!1264404 d!1738434))

(declare-fun m!6484620 () Bool)

(assert (=> bs!1264404 m!6484620))

(assert (=> b!5463918 d!1738434))

(declare-fun b!5464190 () Bool)

(declare-fun e!3383264 () Bool)

(declare-fun e!3383263 () Bool)

(assert (=> b!5464190 (= e!3383264 e!3383263)))

(declare-fun res!2327810 () Bool)

(assert (=> b!5464190 (=> (not res!2327810) (not e!3383263))))

(declare-fun call!403255 () Bool)

(assert (=> b!5464190 (= res!2327810 call!403255)))

(declare-fun b!5464191 () Bool)

(declare-fun e!3383258 () Bool)

(declare-fun e!3383262 () Bool)

(assert (=> b!5464191 (= e!3383258 e!3383262)))

(declare-fun c!954762 () Bool)

(assert (=> b!5464191 (= c!954762 (is-Star!15304 r!7292))))

(declare-fun b!5464192 () Bool)

(declare-fun e!3383261 () Bool)

(assert (=> b!5464192 (= e!3383262 e!3383261)))

(declare-fun res!2327814 () Bool)

(assert (=> b!5464192 (= res!2327814 (not (nullable!5463 (reg!15633 r!7292))))))

(assert (=> b!5464192 (=> (not res!2327814) (not e!3383261))))

(declare-fun b!5464193 () Bool)

(declare-fun res!2327812 () Bool)

(declare-fun e!3383260 () Bool)

(assert (=> b!5464193 (=> (not res!2327812) (not e!3383260))))

(assert (=> b!5464193 (= res!2327812 call!403255)))

(declare-fun e!3383259 () Bool)

(assert (=> b!5464193 (= e!3383259 e!3383260)))

(declare-fun c!954763 () Bool)

(declare-fun bm!403249 () Bool)

(declare-fun call!403256 () Bool)

(assert (=> bm!403249 (= call!403256 (validRegex!7040 (ite c!954762 (reg!15633 r!7292) (ite c!954763 (regOne!31121 r!7292) (regOne!31120 r!7292)))))))

(declare-fun b!5464194 () Bool)

(declare-fun call!403254 () Bool)

(assert (=> b!5464194 (= e!3383260 call!403254)))

(declare-fun b!5464195 () Bool)

(assert (=> b!5464195 (= e!3383262 e!3383259)))

(assert (=> b!5464195 (= c!954763 (is-Union!15304 r!7292))))

(declare-fun bm!403250 () Bool)

(assert (=> bm!403250 (= call!403254 (validRegex!7040 (ite c!954763 (regTwo!31121 r!7292) (regTwo!31120 r!7292))))))

(declare-fun bm!403251 () Bool)

(assert (=> bm!403251 (= call!403255 call!403256)))

(declare-fun b!5464196 () Bool)

(assert (=> b!5464196 (= e!3383263 call!403254)))

(declare-fun b!5464197 () Bool)

(declare-fun res!2327811 () Bool)

(assert (=> b!5464197 (=> res!2327811 e!3383264)))

(assert (=> b!5464197 (= res!2327811 (not (is-Concat!24149 r!7292)))))

(assert (=> b!5464197 (= e!3383259 e!3383264)))

(declare-fun d!1738436 () Bool)

(declare-fun res!2327813 () Bool)

(assert (=> d!1738436 (=> res!2327813 e!3383258)))

(assert (=> d!1738436 (= res!2327813 (is-ElementMatch!15304 r!7292))))

(assert (=> d!1738436 (= (validRegex!7040 r!7292) e!3383258)))

(declare-fun b!5464198 () Bool)

(assert (=> b!5464198 (= e!3383261 call!403256)))

(assert (= (and d!1738436 (not res!2327813)) b!5464191))

(assert (= (and b!5464191 c!954762) b!5464192))

(assert (= (and b!5464191 (not c!954762)) b!5464195))

(assert (= (and b!5464192 res!2327814) b!5464198))

(assert (= (and b!5464195 c!954763) b!5464193))

(assert (= (and b!5464195 (not c!954763)) b!5464197))

(assert (= (and b!5464193 res!2327812) b!5464194))

(assert (= (and b!5464197 (not res!2327811)) b!5464190))

(assert (= (and b!5464190 res!2327810) b!5464196))

(assert (= (or b!5464194 b!5464196) bm!403250))

(assert (= (or b!5464193 b!5464190) bm!403251))

(assert (= (or b!5464198 bm!403251) bm!403249))

(declare-fun m!6484634 () Bool)

(assert (=> b!5464192 m!6484634))

(declare-fun m!6484636 () Bool)

(assert (=> bm!403249 m!6484636))

(declare-fun m!6484638 () Bool)

(assert (=> bm!403250 m!6484638))

(assert (=> start!572072 d!1738436))

(declare-fun b!5464199 () Bool)

(declare-fun e!3383271 () Bool)

(declare-fun e!3383270 () Bool)

(assert (=> b!5464199 (= e!3383271 e!3383270)))

(declare-fun res!2327815 () Bool)

(assert (=> b!5464199 (=> (not res!2327815) (not e!3383270))))

(declare-fun call!403258 () Bool)

(assert (=> b!5464199 (= res!2327815 call!403258)))

(declare-fun b!5464200 () Bool)

(declare-fun e!3383265 () Bool)

(declare-fun e!3383269 () Bool)

(assert (=> b!5464200 (= e!3383265 e!3383269)))

(declare-fun c!954764 () Bool)

(assert (=> b!5464200 (= c!954764 (is-Star!15304 (reg!15633 r!7292)))))

(declare-fun b!5464201 () Bool)

(declare-fun e!3383268 () Bool)

(assert (=> b!5464201 (= e!3383269 e!3383268)))

(declare-fun res!2327819 () Bool)

(assert (=> b!5464201 (= res!2327819 (not (nullable!5463 (reg!15633 (reg!15633 r!7292)))))))

(assert (=> b!5464201 (=> (not res!2327819) (not e!3383268))))

(declare-fun b!5464202 () Bool)

(declare-fun res!2327817 () Bool)

(declare-fun e!3383267 () Bool)

(assert (=> b!5464202 (=> (not res!2327817) (not e!3383267))))

(assert (=> b!5464202 (= res!2327817 call!403258)))

(declare-fun e!3383266 () Bool)

(assert (=> b!5464202 (= e!3383266 e!3383267)))

(declare-fun c!954765 () Bool)

(declare-fun bm!403252 () Bool)

(declare-fun call!403259 () Bool)

(assert (=> bm!403252 (= call!403259 (validRegex!7040 (ite c!954764 (reg!15633 (reg!15633 r!7292)) (ite c!954765 (regOne!31121 (reg!15633 r!7292)) (regOne!31120 (reg!15633 r!7292))))))))

(declare-fun b!5464203 () Bool)

(declare-fun call!403257 () Bool)

(assert (=> b!5464203 (= e!3383267 call!403257)))

(declare-fun b!5464204 () Bool)

(assert (=> b!5464204 (= e!3383269 e!3383266)))

(assert (=> b!5464204 (= c!954765 (is-Union!15304 (reg!15633 r!7292)))))

(declare-fun bm!403253 () Bool)

(assert (=> bm!403253 (= call!403257 (validRegex!7040 (ite c!954765 (regTwo!31121 (reg!15633 r!7292)) (regTwo!31120 (reg!15633 r!7292)))))))

(declare-fun bm!403254 () Bool)

(assert (=> bm!403254 (= call!403258 call!403259)))

(declare-fun b!5464205 () Bool)

(assert (=> b!5464205 (= e!3383270 call!403257)))

(declare-fun b!5464206 () Bool)

(declare-fun res!2327816 () Bool)

(assert (=> b!5464206 (=> res!2327816 e!3383271)))

(assert (=> b!5464206 (= res!2327816 (not (is-Concat!24149 (reg!15633 r!7292))))))

(assert (=> b!5464206 (= e!3383266 e!3383271)))

(declare-fun d!1738440 () Bool)

(declare-fun res!2327818 () Bool)

(assert (=> d!1738440 (=> res!2327818 e!3383265)))

(assert (=> d!1738440 (= res!2327818 (is-ElementMatch!15304 (reg!15633 r!7292)))))

(assert (=> d!1738440 (= (validRegex!7040 (reg!15633 r!7292)) e!3383265)))

(declare-fun b!5464207 () Bool)

(assert (=> b!5464207 (= e!3383268 call!403259)))

(assert (= (and d!1738440 (not res!2327818)) b!5464200))

(assert (= (and b!5464200 c!954764) b!5464201))

(assert (= (and b!5464200 (not c!954764)) b!5464204))

(assert (= (and b!5464201 res!2327819) b!5464207))

(assert (= (and b!5464204 c!954765) b!5464202))

(assert (= (and b!5464204 (not c!954765)) b!5464206))

(assert (= (and b!5464202 res!2327817) b!5464203))

(assert (= (and b!5464206 (not res!2327816)) b!5464199))

(assert (= (and b!5464199 res!2327815) b!5464205))

(assert (= (or b!5464203 b!5464205) bm!403253))

(assert (= (or b!5464202 b!5464199) bm!403254))

(assert (= (or b!5464207 bm!403254) bm!403252))

(declare-fun m!6484640 () Bool)

(assert (=> b!5464201 m!6484640))

(declare-fun m!6484642 () Bool)

(assert (=> bm!403252 m!6484642))

(declare-fun m!6484644 () Bool)

(assert (=> bm!403253 m!6484644))

(assert (=> b!5463916 d!1738440))

(declare-fun d!1738442 () Bool)

(declare-fun e!3383274 () Bool)

(assert (=> d!1738442 e!3383274))

(declare-fun res!2327822 () Bool)

(assert (=> d!1738442 (=> (not res!2327822) (not e!3383274))))

(declare-fun lt!2232950 () List!62212)

(declare-fun noDuplicate!1441 (List!62212) Bool)

(assert (=> d!1738442 (= res!2327822 (noDuplicate!1441 lt!2232950))))

(declare-fun choose!41536 ((Set Context!9376)) List!62212)

(assert (=> d!1738442 (= lt!2232950 (choose!41536 z!1189))))

(assert (=> d!1738442 (= (toList!9088 z!1189) lt!2232950)))

(declare-fun b!5464210 () Bool)

(declare-fun content!11180 (List!62212) (Set Context!9376))

(assert (=> b!5464210 (= e!3383274 (= (content!11180 lt!2232950) z!1189))))

(assert (= (and d!1738442 res!2327822) b!5464210))

(declare-fun m!6484646 () Bool)

(assert (=> d!1738442 m!6484646))

(declare-fun m!6484648 () Bool)

(assert (=> d!1738442 m!6484648))

(declare-fun m!6484650 () Bool)

(assert (=> b!5464210 m!6484650))

(assert (=> b!5463924 d!1738442))

(declare-fun d!1738444 () Bool)

(assert (=> d!1738444 (= (isEmpty!34060 (t!375441 zl!343)) (is-Nil!62088 (t!375441 zl!343)))))

(assert (=> b!5463905 d!1738444))

(assert (=> b!5463914 d!1738436))

(declare-fun d!1738446 () Bool)

(declare-fun choose!41537 (Int) Bool)

(assert (=> d!1738446 (= (Exists!2483 lambda!290152) (choose!41537 lambda!290152))))

(declare-fun bs!1264405 () Bool)

(assert (= bs!1264405 d!1738446))

(declare-fun m!6484652 () Bool)

(assert (=> bs!1264405 m!6484652))

(assert (=> b!5463913 d!1738446))

(declare-fun d!1738448 () Bool)

(declare-fun isEmpty!34065 (Option!15413) Bool)

(assert (=> d!1738448 (= (isDefined!12116 (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 Nil!62089 s!2326 s!2326)) (not (isEmpty!34065 (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 Nil!62089 s!2326 s!2326))))))

(declare-fun bs!1264406 () Bool)

(assert (= bs!1264406 d!1738448))

(assert (=> bs!1264406 m!6484508))

(declare-fun m!6484654 () Bool)

(assert (=> bs!1264406 m!6484654))

(assert (=> b!5463913 d!1738448))

(declare-fun bs!1264407 () Bool)

(declare-fun d!1738450 () Bool)

(assert (= bs!1264407 (and d!1738450 b!5463913)))

(declare-fun lambda!290184 () Int)

(assert (=> bs!1264407 (not (= lambda!290184 lambda!290152))))

(declare-fun bs!1264408 () Bool)

(assert (= bs!1264408 (and d!1738450 b!5464148)))

(assert (=> bs!1264408 (not (= lambda!290184 lambda!290174))))

(assert (=> bs!1264407 (not (= lambda!290184 lambda!290151))))

(assert (=> bs!1264407 (= lambda!290184 lambda!290150)))

(declare-fun bs!1264409 () Bool)

(assert (= bs!1264409 (and d!1738450 b!5464153)))

(assert (=> bs!1264409 (not (= lambda!290184 lambda!290173))))

(assert (=> d!1738450 true))

(assert (=> d!1738450 true))

(assert (=> d!1738450 true))

(declare-fun bs!1264410 () Bool)

(assert (= bs!1264410 d!1738450))

(declare-fun lambda!290185 () Int)

(assert (=> bs!1264410 (not (= lambda!290185 lambda!290184))))

(assert (=> bs!1264407 (= lambda!290185 lambda!290152)))

(assert (=> bs!1264408 (= (and (= (reg!15633 r!7292) (regOne!31120 r!7292)) (= r!7292 (regTwo!31120 r!7292))) (= lambda!290185 lambda!290174))))

(assert (=> bs!1264407 (not (= lambda!290185 lambda!290151))))

(assert (=> bs!1264407 (not (= lambda!290185 lambda!290150))))

(assert (=> bs!1264409 (not (= lambda!290185 lambda!290173))))

(assert (=> d!1738450 true))

(assert (=> d!1738450 true))

(assert (=> d!1738450 true))

(assert (=> d!1738450 (= (Exists!2483 lambda!290184) (Exists!2483 lambda!290185))))

(declare-fun lt!2232953 () Unit!155058)

(declare-fun choose!41538 (Regex!15304 Regex!15304 List!62213) Unit!155058)

(assert (=> d!1738450 (= lt!2232953 (choose!41538 (reg!15633 r!7292) r!7292 s!2326))))

(assert (=> d!1738450 (validRegex!7040 (reg!15633 r!7292))))

(assert (=> d!1738450 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1133 (reg!15633 r!7292) r!7292 s!2326) lt!2232953)))

(declare-fun m!6484656 () Bool)

(assert (=> bs!1264410 m!6484656))

(declare-fun m!6484658 () Bool)

(assert (=> bs!1264410 m!6484658))

(declare-fun m!6484660 () Bool)

(assert (=> bs!1264410 m!6484660))

(assert (=> bs!1264410 m!6484516))

(assert (=> b!5463913 d!1738450))

(declare-fun d!1738452 () Bool)

(assert (=> d!1738452 (= (Exists!2483 lambda!290150) (choose!41537 lambda!290150))))

(declare-fun bs!1264411 () Bool)

(assert (= bs!1264411 d!1738452))

(declare-fun m!6484662 () Bool)

(assert (=> bs!1264411 m!6484662))

(assert (=> b!5463913 d!1738452))

(declare-fun d!1738454 () Bool)

(assert (=> d!1738454 (= (isEmpty!34061 s!2326) (is-Nil!62089 s!2326))))

(assert (=> b!5463913 d!1738454))

(declare-fun d!1738456 () Bool)

(assert (=> d!1738456 (= (Exists!2483 lambda!290151) (choose!41537 lambda!290151))))

(declare-fun bs!1264412 () Bool)

(assert (= bs!1264412 d!1738456))

(declare-fun m!6484664 () Bool)

(assert (=> bs!1264412 m!6484664))

(assert (=> b!5463913 d!1738456))

(declare-fun bs!1264413 () Bool)

(declare-fun d!1738458 () Bool)

(assert (= bs!1264413 (and d!1738458 d!1738450)))

(declare-fun lambda!290192 () Int)

(assert (=> bs!1264413 (= (= (Star!15304 (reg!15633 r!7292)) r!7292) (= lambda!290192 lambda!290184))))

(declare-fun bs!1264414 () Bool)

(assert (= bs!1264414 (and d!1738458 b!5463913)))

(assert (=> bs!1264414 (not (= lambda!290192 lambda!290152))))

(declare-fun bs!1264415 () Bool)

(assert (= bs!1264415 (and d!1738458 b!5464148)))

(assert (=> bs!1264415 (not (= lambda!290192 lambda!290174))))

(assert (=> bs!1264414 (not (= lambda!290192 lambda!290151))))

(assert (=> bs!1264414 (= (= (Star!15304 (reg!15633 r!7292)) r!7292) (= lambda!290192 lambda!290150))))

(declare-fun bs!1264416 () Bool)

(assert (= bs!1264416 (and d!1738458 b!5464153)))

(assert (=> bs!1264416 (not (= lambda!290192 lambda!290173))))

(assert (=> bs!1264413 (not (= lambda!290192 lambda!290185))))

(assert (=> d!1738458 true))

(assert (=> d!1738458 true))

(declare-fun lambda!290193 () Int)

(assert (=> bs!1264413 (not (= lambda!290193 lambda!290184))))

(assert (=> bs!1264414 (not (= lambda!290193 lambda!290152))))

(assert (=> bs!1264415 (not (= lambda!290193 lambda!290174))))

(declare-fun bs!1264417 () Bool)

(assert (= bs!1264417 d!1738458))

(assert (=> bs!1264417 (not (= lambda!290193 lambda!290192))))

(assert (=> bs!1264414 (= (= (Star!15304 (reg!15633 r!7292)) r!7292) (= lambda!290193 lambda!290151))))

(assert (=> bs!1264414 (not (= lambda!290193 lambda!290150))))

(assert (=> bs!1264416 (= (= (Star!15304 (reg!15633 r!7292)) r!7292) (= lambda!290193 lambda!290173))))

(assert (=> bs!1264413 (not (= lambda!290193 lambda!290185))))

(assert (=> d!1738458 true))

(assert (=> d!1738458 true))

(assert (=> d!1738458 (= (Exists!2483 lambda!290192) (Exists!2483 lambda!290193))))

(declare-fun lt!2232956 () Unit!155058)

(declare-fun choose!41539 (Regex!15304 List!62213) Unit!155058)

(assert (=> d!1738458 (= lt!2232956 (choose!41539 (reg!15633 r!7292) s!2326))))

(assert (=> d!1738458 (validRegex!7040 (reg!15633 r!7292))))

(assert (=> d!1738458 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!457 (reg!15633 r!7292) s!2326) lt!2232956)))

(declare-fun m!6484666 () Bool)

(assert (=> bs!1264417 m!6484666))

(declare-fun m!6484668 () Bool)

(assert (=> bs!1264417 m!6484668))

(declare-fun m!6484670 () Bool)

(assert (=> bs!1264417 m!6484670))

(assert (=> bs!1264417 m!6484516))

(assert (=> b!5463913 d!1738458))

(declare-fun b!5464290 () Bool)

(declare-fun e!3383320 () Bool)

(declare-fun lt!2232966 () Option!15413)

(declare-fun get!21411 (Option!15413) tuple2!65002)

(assert (=> b!5464290 (= e!3383320 (= (++!13665 (_1!35804 (get!21411 lt!2232966)) (_2!35804 (get!21411 lt!2232966))) s!2326))))

(declare-fun b!5464291 () Bool)

(declare-fun res!2327870 () Bool)

(assert (=> b!5464291 (=> (not res!2327870) (not e!3383320))))

(assert (=> b!5464291 (= res!2327870 (matchR!7489 r!7292 (_2!35804 (get!21411 lt!2232966))))))

(declare-fun b!5464292 () Bool)

(declare-fun e!3383319 () Option!15413)

(declare-fun e!3383321 () Option!15413)

(assert (=> b!5464292 (= e!3383319 e!3383321)))

(declare-fun c!954782 () Bool)

(assert (=> b!5464292 (= c!954782 (is-Nil!62089 s!2326))))

(declare-fun b!5464293 () Bool)

(declare-fun e!3383318 () Bool)

(assert (=> b!5464293 (= e!3383318 (matchR!7489 r!7292 s!2326))))

(declare-fun d!1738460 () Bool)

(declare-fun e!3383322 () Bool)

(assert (=> d!1738460 e!3383322))

(declare-fun res!2327874 () Bool)

(assert (=> d!1738460 (=> res!2327874 e!3383322)))

(assert (=> d!1738460 (= res!2327874 e!3383320)))

(declare-fun res!2327871 () Bool)

(assert (=> d!1738460 (=> (not res!2327871) (not e!3383320))))

(assert (=> d!1738460 (= res!2327871 (isDefined!12116 lt!2232966))))

(assert (=> d!1738460 (= lt!2232966 e!3383319)))

(declare-fun c!954783 () Bool)

(assert (=> d!1738460 (= c!954783 e!3383318)))

(declare-fun res!2327872 () Bool)

(assert (=> d!1738460 (=> (not res!2327872) (not e!3383318))))

(assert (=> d!1738460 (= res!2327872 (matchR!7489 (reg!15633 r!7292) Nil!62089))))

(assert (=> d!1738460 (validRegex!7040 (reg!15633 r!7292))))

(assert (=> d!1738460 (= (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 Nil!62089 s!2326 s!2326) lt!2232966)))

(declare-fun b!5464294 () Bool)

(assert (=> b!5464294 (= e!3383319 (Some!15412 (tuple2!65003 Nil!62089 s!2326)))))

(declare-fun b!5464295 () Bool)

(declare-fun res!2327873 () Bool)

(assert (=> b!5464295 (=> (not res!2327873) (not e!3383320))))

(assert (=> b!5464295 (= res!2327873 (matchR!7489 (reg!15633 r!7292) (_1!35804 (get!21411 lt!2232966))))))

(declare-fun b!5464296 () Bool)

(assert (=> b!5464296 (= e!3383322 (not (isDefined!12116 lt!2232966)))))

(declare-fun b!5464297 () Bool)

(assert (=> b!5464297 (= e!3383321 None!15412)))

(declare-fun b!5464298 () Bool)

(declare-fun lt!2232965 () Unit!155058)

(declare-fun lt!2232967 () Unit!155058)

(assert (=> b!5464298 (= lt!2232965 lt!2232967)))

(assert (=> b!5464298 (= (++!13665 (++!13665 Nil!62089 (Cons!62089 (h!68537 s!2326) Nil!62089)) (t!375442 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1886 (List!62213 C!30878 List!62213 List!62213) Unit!155058)

(assert (=> b!5464298 (= lt!2232967 (lemmaMoveElementToOtherListKeepsConcatEq!1886 Nil!62089 (h!68537 s!2326) (t!375442 s!2326) s!2326))))

(assert (=> b!5464298 (= e!3383321 (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 (++!13665 Nil!62089 (Cons!62089 (h!68537 s!2326) Nil!62089)) (t!375442 s!2326) s!2326))))

(assert (= (and d!1738460 res!2327872) b!5464293))

(assert (= (and d!1738460 c!954783) b!5464294))

(assert (= (and d!1738460 (not c!954783)) b!5464292))

(assert (= (and b!5464292 c!954782) b!5464297))

(assert (= (and b!5464292 (not c!954782)) b!5464298))

(assert (= (and d!1738460 res!2327871) b!5464295))

(assert (= (and b!5464295 res!2327873) b!5464291))

(assert (= (and b!5464291 res!2327870) b!5464290))

(assert (= (and d!1738460 (not res!2327874)) b!5464296))

(declare-fun m!6484678 () Bool)

(assert (=> b!5464290 m!6484678))

(declare-fun m!6484680 () Bool)

(assert (=> b!5464290 m!6484680))

(declare-fun m!6484682 () Bool)

(assert (=> b!5464298 m!6484682))

(assert (=> b!5464298 m!6484682))

(declare-fun m!6484686 () Bool)

(assert (=> b!5464298 m!6484686))

(declare-fun m!6484688 () Bool)

(assert (=> b!5464298 m!6484688))

(assert (=> b!5464298 m!6484682))

(declare-fun m!6484690 () Bool)

(assert (=> b!5464298 m!6484690))

(declare-fun m!6484692 () Bool)

(assert (=> d!1738460 m!6484692))

(declare-fun m!6484694 () Bool)

(assert (=> d!1738460 m!6484694))

(assert (=> d!1738460 m!6484516))

(assert (=> b!5464291 m!6484678))

(declare-fun m!6484696 () Bool)

(assert (=> b!5464291 m!6484696))

(assert (=> b!5464296 m!6484692))

(assert (=> b!5464293 m!6484490))

(assert (=> b!5464295 m!6484678))

(declare-fun m!6484698 () Bool)

(assert (=> b!5464295 m!6484698))

(assert (=> b!5463913 d!1738460))

(declare-fun bs!1264422 () Bool)

(declare-fun d!1738466 () Bool)

(assert (= bs!1264422 (and d!1738466 d!1738458)))

(declare-fun lambda!290198 () Int)

(assert (=> bs!1264422 (not (= lambda!290198 lambda!290193))))

(declare-fun bs!1264423 () Bool)

(assert (= bs!1264423 (and d!1738466 d!1738450)))

(assert (=> bs!1264423 (= lambda!290198 lambda!290184)))

(declare-fun bs!1264424 () Bool)

(assert (= bs!1264424 (and d!1738466 b!5463913)))

(assert (=> bs!1264424 (not (= lambda!290198 lambda!290152))))

(declare-fun bs!1264425 () Bool)

(assert (= bs!1264425 (and d!1738466 b!5464148)))

(assert (=> bs!1264425 (not (= lambda!290198 lambda!290174))))

(assert (=> bs!1264422 (= (= r!7292 (Star!15304 (reg!15633 r!7292))) (= lambda!290198 lambda!290192))))

(assert (=> bs!1264424 (not (= lambda!290198 lambda!290151))))

(assert (=> bs!1264424 (= lambda!290198 lambda!290150)))

(declare-fun bs!1264426 () Bool)

(assert (= bs!1264426 (and d!1738466 b!5464153)))

(assert (=> bs!1264426 (not (= lambda!290198 lambda!290173))))

(assert (=> bs!1264423 (not (= lambda!290198 lambda!290185))))

(assert (=> d!1738466 true))

(assert (=> d!1738466 true))

(assert (=> d!1738466 true))

(assert (=> d!1738466 (= (isDefined!12116 (findConcatSeparation!1827 (reg!15633 r!7292) r!7292 Nil!62089 s!2326 s!2326)) (Exists!2483 lambda!290198))))

(declare-fun lt!2232971 () Unit!155058)

(declare-fun choose!41540 (Regex!15304 Regex!15304 List!62213) Unit!155058)

(assert (=> d!1738466 (= lt!2232971 (choose!41540 (reg!15633 r!7292) r!7292 s!2326))))

(assert (=> d!1738466 (validRegex!7040 (reg!15633 r!7292))))

(assert (=> d!1738466 (= (lemmaFindConcatSeparationEquivalentToExists!1591 (reg!15633 r!7292) r!7292 s!2326) lt!2232971)))

(declare-fun bs!1264427 () Bool)

(assert (= bs!1264427 d!1738466))

(assert (=> bs!1264427 m!6484508))

(assert (=> bs!1264427 m!6484508))

(assert (=> bs!1264427 m!6484510))

(assert (=> bs!1264427 m!6484516))

(declare-fun m!6484700 () Bool)

(assert (=> bs!1264427 m!6484700))

(declare-fun m!6484702 () Bool)

(assert (=> bs!1264427 m!6484702))

(assert (=> b!5463913 d!1738466))

(declare-fun bs!1264428 () Bool)

(declare-fun d!1738468 () Bool)

(assert (= bs!1264428 (and d!1738468 d!1738424)))

(declare-fun lambda!290201 () Int)

(assert (=> bs!1264428 (= lambda!290201 lambda!290168)))

(declare-fun bs!1264429 () Bool)

(assert (= bs!1264429 (and d!1738468 d!1738434)))

(assert (=> bs!1264429 (= lambda!290201 lambda!290177)))

(declare-fun b!5464350 () Bool)

(declare-fun e!3383363 () Bool)

(declare-fun lt!2232974 () Regex!15304)

(assert (=> b!5464350 (= e!3383363 (= lt!2232974 (head!11699 (unfocusZipperList!746 zl!343))))))

(declare-fun b!5464351 () Bool)

(declare-fun e!3383358 () Bool)

(assert (=> b!5464351 (= e!3383358 e!3383363)))

(declare-fun c!954799 () Bool)

(assert (=> b!5464351 (= c!954799 (isEmpty!34064 (tail!10796 (unfocusZipperList!746 zl!343))))))

(declare-fun e!3383360 () Bool)

(assert (=> d!1738468 e!3383360))

(declare-fun res!2327899 () Bool)

(assert (=> d!1738468 (=> (not res!2327899) (not e!3383360))))

(assert (=> d!1738468 (= res!2327899 (validRegex!7040 lt!2232974))))

(declare-fun e!3383359 () Regex!15304)

(assert (=> d!1738468 (= lt!2232974 e!3383359)))

(declare-fun c!954800 () Bool)

(declare-fun e!3383361 () Bool)

(assert (=> d!1738468 (= c!954800 e!3383361)))

(declare-fun res!2327898 () Bool)

(assert (=> d!1738468 (=> (not res!2327898) (not e!3383361))))

(assert (=> d!1738468 (= res!2327898 (is-Cons!62087 (unfocusZipperList!746 zl!343)))))

(assert (=> d!1738468 (forall!14597 (unfocusZipperList!746 zl!343) lambda!290201)))

(assert (=> d!1738468 (= (generalisedUnion!1233 (unfocusZipperList!746 zl!343)) lt!2232974)))

(declare-fun b!5464352 () Bool)

(declare-fun e!3383362 () Regex!15304)

(assert (=> b!5464352 (= e!3383362 EmptyLang!15304)))

(declare-fun b!5464353 () Bool)

(assert (=> b!5464353 (= e!3383359 e!3383362)))

(declare-fun c!954801 () Bool)

(assert (=> b!5464353 (= c!954801 (is-Cons!62087 (unfocusZipperList!746 zl!343)))))

(declare-fun b!5464354 () Bool)

(assert (=> b!5464354 (= e!3383361 (isEmpty!34064 (t!375440 (unfocusZipperList!746 zl!343))))))

(declare-fun b!5464355 () Bool)

(assert (=> b!5464355 (= e!3383362 (Union!15304 (h!68535 (unfocusZipperList!746 zl!343)) (generalisedUnion!1233 (t!375440 (unfocusZipperList!746 zl!343)))))))

(declare-fun b!5464356 () Bool)

(declare-fun isEmptyLang!1032 (Regex!15304) Bool)

(assert (=> b!5464356 (= e!3383358 (isEmptyLang!1032 lt!2232974))))

(declare-fun b!5464357 () Bool)

(assert (=> b!5464357 (= e!3383359 (h!68535 (unfocusZipperList!746 zl!343)))))

(declare-fun b!5464358 () Bool)

(declare-fun isUnion!464 (Regex!15304) Bool)

(assert (=> b!5464358 (= e!3383363 (isUnion!464 lt!2232974))))

(declare-fun b!5464359 () Bool)

(assert (=> b!5464359 (= e!3383360 e!3383358)))

(declare-fun c!954798 () Bool)

(assert (=> b!5464359 (= c!954798 (isEmpty!34064 (unfocusZipperList!746 zl!343)))))

(assert (= (and d!1738468 res!2327898) b!5464354))

(assert (= (and d!1738468 c!954800) b!5464357))

(assert (= (and d!1738468 (not c!954800)) b!5464353))

(assert (= (and b!5464353 c!954801) b!5464355))

(assert (= (and b!5464353 (not c!954801)) b!5464352))

(assert (= (and d!1738468 res!2327899) b!5464359))

(assert (= (and b!5464359 c!954798) b!5464356))

(assert (= (and b!5464359 (not c!954798)) b!5464351))

(assert (= (and b!5464351 c!954799) b!5464350))

(assert (= (and b!5464351 (not c!954799)) b!5464358))

(assert (=> b!5464359 m!6484528))

(declare-fun m!6484710 () Bool)

(assert (=> b!5464359 m!6484710))

(declare-fun m!6484712 () Bool)

(assert (=> b!5464354 m!6484712))

(declare-fun m!6484714 () Bool)

(assert (=> b!5464358 m!6484714))

(declare-fun m!6484716 () Bool)

(assert (=> d!1738468 m!6484716))

(assert (=> d!1738468 m!6484528))

(declare-fun m!6484718 () Bool)

(assert (=> d!1738468 m!6484718))

(declare-fun m!6484720 () Bool)

(assert (=> b!5464355 m!6484720))

(assert (=> b!5464350 m!6484528))

(declare-fun m!6484722 () Bool)

(assert (=> b!5464350 m!6484722))

(declare-fun m!6484724 () Bool)

(assert (=> b!5464356 m!6484724))

(assert (=> b!5464351 m!6484528))

(declare-fun m!6484726 () Bool)

(assert (=> b!5464351 m!6484726))

(assert (=> b!5464351 m!6484726))

(declare-fun m!6484728 () Bool)

(assert (=> b!5464351 m!6484728))

(assert (=> b!5463912 d!1738468))

(declare-fun bs!1264430 () Bool)

(declare-fun d!1738472 () Bool)

(assert (= bs!1264430 (and d!1738472 d!1738424)))

(declare-fun lambda!290204 () Int)

(assert (=> bs!1264430 (= lambda!290204 lambda!290168)))

(declare-fun bs!1264431 () Bool)

(assert (= bs!1264431 (and d!1738472 d!1738434)))

(assert (=> bs!1264431 (= lambda!290204 lambda!290177)))

(declare-fun bs!1264432 () Bool)

(assert (= bs!1264432 (and d!1738472 d!1738468)))

(assert (=> bs!1264432 (= lambda!290204 lambda!290201)))

(declare-fun lt!2232979 () List!62211)

(assert (=> d!1738472 (forall!14597 lt!2232979 lambda!290204)))

(declare-fun e!3383370 () List!62211)

(assert (=> d!1738472 (= lt!2232979 e!3383370)))

(declare-fun c!954806 () Bool)

(assert (=> d!1738472 (= c!954806 (is-Cons!62088 zl!343))))

(assert (=> d!1738472 (= (unfocusZipperList!746 zl!343) lt!2232979)))

(declare-fun b!5464372 () Bool)

(assert (=> b!5464372 (= e!3383370 (Cons!62087 (generalisedConcat!973 (exprs!5188 (h!68536 zl!343))) (unfocusZipperList!746 (t!375441 zl!343))))))

(declare-fun b!5464373 () Bool)

(assert (=> b!5464373 (= e!3383370 Nil!62087)))

(assert (= (and d!1738472 c!954806) b!5464372))

(assert (= (and d!1738472 (not c!954806)) b!5464373))

(declare-fun m!6484730 () Bool)

(assert (=> d!1738472 m!6484730))

(assert (=> b!5464372 m!6484488))

(declare-fun m!6484732 () Bool)

(assert (=> b!5464372 m!6484732))

(assert (=> b!5463912 d!1738472))

(declare-fun bs!1264433 () Bool)

(declare-fun d!1738474 () Bool)

(assert (= bs!1264433 (and d!1738474 d!1738424)))

(declare-fun lambda!290205 () Int)

(assert (=> bs!1264433 (= lambda!290205 lambda!290168)))

(declare-fun bs!1264434 () Bool)

(assert (= bs!1264434 (and d!1738474 d!1738434)))

(assert (=> bs!1264434 (= lambda!290205 lambda!290177)))

(declare-fun bs!1264435 () Bool)

(assert (= bs!1264435 (and d!1738474 d!1738468)))

(assert (=> bs!1264435 (= lambda!290205 lambda!290201)))

(declare-fun bs!1264436 () Bool)

(assert (= bs!1264436 (and d!1738474 d!1738472)))

(assert (=> bs!1264436 (= lambda!290205 lambda!290204)))

(assert (=> d!1738474 (= (inv!81508 setElem!35782) (forall!14597 (exprs!5188 setElem!35782) lambda!290205))))

(declare-fun bs!1264437 () Bool)

(assert (= bs!1264437 d!1738474))

(declare-fun m!6484734 () Bool)

(assert (=> bs!1264437 m!6484734))

(assert (=> setNonEmpty!35782 d!1738474))

(declare-fun b!5464386 () Bool)

(declare-fun e!3383377 () List!62213)

(assert (=> b!5464386 (= e!3383377 s!2326)))

(declare-fun b!5464389 () Bool)

(declare-fun e!3383378 () Bool)

(declare-fun lt!2232983 () List!62213)

(assert (=> b!5464389 (= e!3383378 (or (not (= s!2326 Nil!62089)) (= lt!2232983 Nil!62089)))))

(declare-fun b!5464388 () Bool)

(declare-fun res!2327911 () Bool)

(assert (=> b!5464388 (=> (not res!2327911) (not e!3383378))))

(declare-fun size!39909 (List!62213) Int)

(assert (=> b!5464388 (= res!2327911 (= (size!39909 lt!2232983) (+ (size!39909 Nil!62089) (size!39909 s!2326))))))

(declare-fun d!1738476 () Bool)

(assert (=> d!1738476 e!3383378))

(declare-fun res!2327910 () Bool)

(assert (=> d!1738476 (=> (not res!2327910) (not e!3383378))))

(declare-fun content!11181 (List!62213) (Set C!30878))

(assert (=> d!1738476 (= res!2327910 (= (content!11181 lt!2232983) (set.union (content!11181 Nil!62089) (content!11181 s!2326))))))

(assert (=> d!1738476 (= lt!2232983 e!3383377)))

(declare-fun c!954810 () Bool)

(assert (=> d!1738476 (= c!954810 (is-Nil!62089 Nil!62089))))

(assert (=> d!1738476 (= (++!13665 Nil!62089 s!2326) lt!2232983)))

(declare-fun b!5464387 () Bool)

(assert (=> b!5464387 (= e!3383377 (Cons!62089 (h!68537 Nil!62089) (++!13665 (t!375442 Nil!62089) s!2326)))))

(assert (= (and d!1738476 c!954810) b!5464386))

(assert (= (and d!1738476 (not c!954810)) b!5464387))

(assert (= (and d!1738476 res!2327910) b!5464388))

(assert (= (and b!5464388 res!2327911) b!5464389))

(declare-fun m!6484750 () Bool)

(assert (=> b!5464388 m!6484750))

(declare-fun m!6484752 () Bool)

(assert (=> b!5464388 m!6484752))

(declare-fun m!6484754 () Bool)

(assert (=> b!5464388 m!6484754))

(declare-fun m!6484756 () Bool)

(assert (=> d!1738476 m!6484756))

(declare-fun m!6484758 () Bool)

(assert (=> d!1738476 m!6484758))

(declare-fun m!6484760 () Bool)

(assert (=> d!1738476 m!6484760))

(declare-fun m!6484762 () Bool)

(assert (=> b!5464387 m!6484762))

(assert (=> b!5463911 d!1738476))

(declare-fun d!1738480 () Bool)

(declare-fun lt!2232986 () Regex!15304)

(assert (=> d!1738480 (validRegex!7040 lt!2232986)))

(assert (=> d!1738480 (= lt!2232986 (generalisedUnion!1233 (unfocusZipperList!746 zl!343)))))

(assert (=> d!1738480 (= (unfocusZipper!1046 zl!343) lt!2232986)))

(declare-fun bs!1264438 () Bool)

(assert (= bs!1264438 d!1738480))

(declare-fun m!6484764 () Bool)

(assert (=> bs!1264438 m!6484764))

(assert (=> bs!1264438 m!6484528))

(assert (=> bs!1264438 m!6484528))

(assert (=> bs!1264438 m!6484530))

(assert (=> b!5463921 d!1738480))

(declare-fun b!5464403 () Bool)

(declare-fun e!3383381 () Bool)

(declare-fun tp!1502904 () Bool)

(declare-fun tp!1502902 () Bool)

(assert (=> b!5464403 (= e!3383381 (and tp!1502904 tp!1502902))))

(assert (=> b!5463908 (= tp!1502858 e!3383381)))

(declare-fun b!5464400 () Bool)

(assert (=> b!5464400 (= e!3383381 tp_is_empty!39861)))

(declare-fun b!5464402 () Bool)

(declare-fun tp!1502900 () Bool)

(assert (=> b!5464402 (= e!3383381 tp!1502900)))

(declare-fun b!5464401 () Bool)

(declare-fun tp!1502903 () Bool)

(declare-fun tp!1502901 () Bool)

(assert (=> b!5464401 (= e!3383381 (and tp!1502903 tp!1502901))))

(assert (= (and b!5463908 (is-ElementMatch!15304 (regOne!31121 r!7292))) b!5464400))

(assert (= (and b!5463908 (is-Concat!24149 (regOne!31121 r!7292))) b!5464401))

(assert (= (and b!5463908 (is-Star!15304 (regOne!31121 r!7292))) b!5464402))

(assert (= (and b!5463908 (is-Union!15304 (regOne!31121 r!7292))) b!5464403))

(declare-fun b!5464407 () Bool)

(declare-fun e!3383382 () Bool)

(declare-fun tp!1502909 () Bool)

(declare-fun tp!1502907 () Bool)

(assert (=> b!5464407 (= e!3383382 (and tp!1502909 tp!1502907))))

(assert (=> b!5463908 (= tp!1502856 e!3383382)))

(declare-fun b!5464404 () Bool)

(assert (=> b!5464404 (= e!3383382 tp_is_empty!39861)))

(declare-fun b!5464406 () Bool)

(declare-fun tp!1502905 () Bool)

(assert (=> b!5464406 (= e!3383382 tp!1502905)))

(declare-fun b!5464405 () Bool)

(declare-fun tp!1502908 () Bool)

(declare-fun tp!1502906 () Bool)

(assert (=> b!5464405 (= e!3383382 (and tp!1502908 tp!1502906))))

(assert (= (and b!5463908 (is-ElementMatch!15304 (regTwo!31121 r!7292))) b!5464404))

(assert (= (and b!5463908 (is-Concat!24149 (regTwo!31121 r!7292))) b!5464405))

(assert (= (and b!5463908 (is-Star!15304 (regTwo!31121 r!7292))) b!5464406))

(assert (= (and b!5463908 (is-Union!15304 (regTwo!31121 r!7292))) b!5464407))

(declare-fun b!5464415 () Bool)

(declare-fun e!3383388 () Bool)

(declare-fun tp!1502914 () Bool)

(assert (=> b!5464415 (= e!3383388 tp!1502914)))

(declare-fun tp!1502915 () Bool)

(declare-fun e!3383387 () Bool)

(declare-fun b!5464414 () Bool)

(assert (=> b!5464414 (= e!3383387 (and (inv!81508 (h!68536 (t!375441 zl!343))) e!3383388 tp!1502915))))

(assert (=> b!5463918 (= tp!1502854 e!3383387)))

(assert (= b!5464414 b!5464415))

(assert (= (and b!5463918 (is-Cons!62088 (t!375441 zl!343))) b!5464414))

(declare-fun m!6484768 () Bool)

(assert (=> b!5464414 m!6484768))

(declare-fun condSetEmpty!35788 () Bool)

(assert (=> setNonEmpty!35782 (= condSetEmpty!35788 (= setRest!35782 (as set.empty (Set Context!9376))))))

(declare-fun setRes!35788 () Bool)

(assert (=> setNonEmpty!35782 (= tp!1502855 setRes!35788)))

(declare-fun setIsEmpty!35788 () Bool)

(assert (=> setIsEmpty!35788 setRes!35788))

(declare-fun setNonEmpty!35788 () Bool)

(declare-fun setElem!35788 () Context!9376)

(declare-fun tp!1502921 () Bool)

(declare-fun e!3383391 () Bool)

(assert (=> setNonEmpty!35788 (= setRes!35788 (and tp!1502921 (inv!81508 setElem!35788) e!3383391))))

(declare-fun setRest!35788 () (Set Context!9376))

(assert (=> setNonEmpty!35788 (= setRest!35782 (set.union (set.insert setElem!35788 (as set.empty (Set Context!9376))) setRest!35788))))

(declare-fun b!5464420 () Bool)

(declare-fun tp!1502920 () Bool)

(assert (=> b!5464420 (= e!3383391 tp!1502920)))

(assert (= (and setNonEmpty!35782 condSetEmpty!35788) setIsEmpty!35788))

(assert (= (and setNonEmpty!35782 (not condSetEmpty!35788)) setNonEmpty!35788))

(assert (= setNonEmpty!35788 b!5464420))

(declare-fun m!6484770 () Bool)

(assert (=> setNonEmpty!35788 m!6484770))

(declare-fun b!5464424 () Bool)

(declare-fun e!3383392 () Bool)

(declare-fun tp!1502926 () Bool)

(declare-fun tp!1502924 () Bool)

(assert (=> b!5464424 (= e!3383392 (and tp!1502926 tp!1502924))))

(assert (=> b!5463907 (= tp!1502857 e!3383392)))

(declare-fun b!5464421 () Bool)

(assert (=> b!5464421 (= e!3383392 tp_is_empty!39861)))

(declare-fun b!5464423 () Bool)

(declare-fun tp!1502922 () Bool)

(assert (=> b!5464423 (= e!3383392 tp!1502922)))

(declare-fun b!5464422 () Bool)

(declare-fun tp!1502925 () Bool)

(declare-fun tp!1502923 () Bool)

(assert (=> b!5464422 (= e!3383392 (and tp!1502925 tp!1502923))))

(assert (= (and b!5463907 (is-ElementMatch!15304 (reg!15633 r!7292))) b!5464421))

(assert (= (and b!5463907 (is-Concat!24149 (reg!15633 r!7292))) b!5464422))

(assert (= (and b!5463907 (is-Star!15304 (reg!15633 r!7292))) b!5464423))

(assert (= (and b!5463907 (is-Union!15304 (reg!15633 r!7292))) b!5464424))

(declare-fun b!5464428 () Bool)

(declare-fun e!3383393 () Bool)

(declare-fun tp!1502931 () Bool)

(declare-fun tp!1502929 () Bool)

(assert (=> b!5464428 (= e!3383393 (and tp!1502931 tp!1502929))))

(assert (=> b!5463922 (= tp!1502850 e!3383393)))

(declare-fun b!5464425 () Bool)

(assert (=> b!5464425 (= e!3383393 tp_is_empty!39861)))

(declare-fun b!5464427 () Bool)

(declare-fun tp!1502927 () Bool)

(assert (=> b!5464427 (= e!3383393 tp!1502927)))

(declare-fun b!5464426 () Bool)

(declare-fun tp!1502930 () Bool)

(declare-fun tp!1502928 () Bool)

(assert (=> b!5464426 (= e!3383393 (and tp!1502930 tp!1502928))))

(assert (= (and b!5463922 (is-ElementMatch!15304 (regOne!31120 r!7292))) b!5464425))

(assert (= (and b!5463922 (is-Concat!24149 (regOne!31120 r!7292))) b!5464426))

(assert (= (and b!5463922 (is-Star!15304 (regOne!31120 r!7292))) b!5464427))

(assert (= (and b!5463922 (is-Union!15304 (regOne!31120 r!7292))) b!5464428))

(declare-fun b!5464432 () Bool)

(declare-fun e!3383394 () Bool)

(declare-fun tp!1502936 () Bool)

(declare-fun tp!1502934 () Bool)

(assert (=> b!5464432 (= e!3383394 (and tp!1502936 tp!1502934))))

(assert (=> b!5463922 (= tp!1502859 e!3383394)))

(declare-fun b!5464429 () Bool)

(assert (=> b!5464429 (= e!3383394 tp_is_empty!39861)))

(declare-fun b!5464431 () Bool)

(declare-fun tp!1502932 () Bool)

(assert (=> b!5464431 (= e!3383394 tp!1502932)))

(declare-fun b!5464430 () Bool)

(declare-fun tp!1502935 () Bool)

(declare-fun tp!1502933 () Bool)

(assert (=> b!5464430 (= e!3383394 (and tp!1502935 tp!1502933))))

(assert (= (and b!5463922 (is-ElementMatch!15304 (regTwo!31120 r!7292))) b!5464429))

(assert (= (and b!5463922 (is-Concat!24149 (regTwo!31120 r!7292))) b!5464430))

(assert (= (and b!5463922 (is-Star!15304 (regTwo!31120 r!7292))) b!5464431))

(assert (= (and b!5463922 (is-Union!15304 (regTwo!31120 r!7292))) b!5464432))

(declare-fun b!5464437 () Bool)

(declare-fun e!3383397 () Bool)

(declare-fun tp!1502941 () Bool)

(declare-fun tp!1502942 () Bool)

(assert (=> b!5464437 (= e!3383397 (and tp!1502941 tp!1502942))))

(assert (=> b!5463917 (= tp!1502853 e!3383397)))

(assert (= (and b!5463917 (is-Cons!62087 (exprs!5188 setElem!35782))) b!5464437))

(declare-fun b!5464438 () Bool)

(declare-fun e!3383398 () Bool)

(declare-fun tp!1502943 () Bool)

(declare-fun tp!1502944 () Bool)

(assert (=> b!5464438 (= e!3383398 (and tp!1502943 tp!1502944))))

(assert (=> b!5463910 (= tp!1502852 e!3383398)))

(assert (= (and b!5463910 (is-Cons!62087 (exprs!5188 (h!68536 zl!343)))) b!5464438))

(declare-fun b!5464443 () Bool)

(declare-fun e!3383401 () Bool)

(declare-fun tp!1502947 () Bool)

(assert (=> b!5464443 (= e!3383401 (and tp_is_empty!39861 tp!1502947))))

(assert (=> b!5463920 (= tp!1502851 e!3383401)))

(assert (= (and b!5463920 (is-Cons!62089 (t!375442 s!2326))) b!5464443))

(push 1)

(assert (not b!5464291))

(assert (not b!5464201))

(assert (not b!5464035))

(assert (not b!5464083))

(assert (not b!5464403))

(assert (not b!5464290))

(assert (not b!5464073))

(assert (not b!5464042))

(assert (not d!1738452))

(assert (not b!5464081))

(assert (not b!5464423))

(assert (not b!5464210))

(assert (not d!1738458))

(assert (not b!5464424))

(assert (not b!5464428))

(assert (not b!5464293))

(assert (not d!1738476))

(assert (not b!5464296))

(assert (not b!5464082))

(assert (not d!1738468))

(assert (not b!5464074))

(assert (not b!5464150))

(assert (not b!5464407))

(assert (not b!5464402))

(assert (not b!5464387))

(assert (not d!1738466))

(assert (not b!5464437))

(assert (not b!5464401))

(assert (not b!5464298))

(assert (not b!5464076))

(assert (not b!5464350))

(assert (not b!5464037))

(assert (not b!5464405))

(assert (not d!1738424))

(assert (not b!5464430))

(assert (not b!5464355))

(assert (not d!1738456))

(assert (not d!1738432))

(assert (not d!1738480))

(assert (not b!5464438))

(assert (not b!5464427))

(assert (not d!1738448))

(assert (not setNonEmpty!35788))

(assert (not d!1738472))

(assert (not d!1738474))

(assert (not b!5464388))

(assert (not b!5464151))

(assert (not bm!403233))

(assert (not bm!403250))

(assert (not b!5464040))

(assert (not b!5464356))

(assert (not b!5464431))

(assert (not d!1738426))

(assert (not d!1738450))

(assert (not b!5464414))

(assert (not b!5464359))

(assert tp_is_empty!39861)

(assert (not bm!403241))

(assert (not bm!403249))

(assert (not b!5464426))

(assert (not b!5464295))

(assert (not b!5464420))

(assert (not d!1738434))

(assert (not b!5464415))

(assert (not b!5464041))

(assert (not b!5464406))

(assert (not b!5464443))

(assert (not d!1738442))

(assert (not b!5464036))

(assert (not b!5464422))

(assert (not bm!403253))

(assert (not b!5464432))

(assert (not b!5464192))

(assert (not b!5464043))

(assert (not bm!403252))

(assert (not b!5464354))

(assert (not b!5464358))

(assert (not b!5464351))

(assert (not bm!403240))

(assert (not d!1738446))

(assert (not d!1738460))

(assert (not b!5464372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

