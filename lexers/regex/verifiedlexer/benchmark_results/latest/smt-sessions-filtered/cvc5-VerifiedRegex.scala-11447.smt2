; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!618260 () Bool)

(assert start!618260)

(declare-fun b!6200000 () Bool)

(assert (=> b!6200000 true))

(assert (=> b!6200000 true))

(declare-fun lambda!338755 () Int)

(declare-fun lambda!338754 () Int)

(assert (=> b!6200000 (not (= lambda!338755 lambda!338754))))

(assert (=> b!6200000 true))

(assert (=> b!6200000 true))

(declare-fun b!6200007 () Bool)

(assert (=> b!6200007 true))

(declare-fun b!6199999 () Bool)

(declare-fun res!2564525 () Bool)

(declare-fun e!3775546 () Bool)

(assert (=> b!6199999 (=> (not res!2564525) (not e!3775546))))

(declare-datatypes ((C!32550 0))(
  ( (C!32551 (val!25977 Int)) )
))
(declare-datatypes ((Regex!16140 0))(
  ( (ElementMatch!16140 (c!1119187 C!32550)) (Concat!24985 (regOne!32792 Regex!16140) (regTwo!32792 Regex!16140)) (EmptyExpr!16140) (Star!16140 (reg!16469 Regex!16140)) (EmptyLang!16140) (Union!16140 (regOne!32793 Regex!16140) (regTwo!32793 Regex!16140)) )
))
(declare-datatypes ((List!64719 0))(
  ( (Nil!64595) (Cons!64595 (h!71043 Regex!16140) (t!378235 List!64719)) )
))
(declare-datatypes ((Context!11048 0))(
  ( (Context!11049 (exprs!6024 List!64719)) )
))
(declare-fun z!1189 () (Set Context!11048))

(declare-datatypes ((List!64720 0))(
  ( (Nil!64596) (Cons!64596 (h!71044 Context!11048) (t!378236 List!64720)) )
))
(declare-fun zl!343 () List!64720)

(declare-fun toList!9924 ((Set Context!11048)) List!64720)

(assert (=> b!6199999 (= res!2564525 (= (toList!9924 z!1189) zl!343))))

(declare-fun e!3775550 () Bool)

(declare-fun e!3775545 () Bool)

(assert (=> b!6200000 (= e!3775550 e!3775545)))

(declare-fun res!2564520 () Bool)

(assert (=> b!6200000 (=> res!2564520 e!3775545)))

(declare-datatypes ((List!64721 0))(
  ( (Nil!64597) (Cons!64597 (h!71045 C!32550) (t!378237 List!64721)) )
))
(declare-fun s!2326 () List!64721)

(declare-fun lt!2342832 () Bool)

(declare-fun lt!2342827 () Bool)

(assert (=> b!6200000 (= res!2564520 (or (not (= lt!2342832 lt!2342827)) (is-Nil!64597 s!2326)))))

(declare-fun Exists!3210 (Int) Bool)

(assert (=> b!6200000 (= (Exists!3210 lambda!338754) (Exists!3210 lambda!338755))))

(declare-datatypes ((Unit!157891 0))(
  ( (Unit!157892) )
))
(declare-fun lt!2342829 () Unit!157891)

(declare-fun r!7292 () Regex!16140)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1747 (Regex!16140 Regex!16140 List!64721) Unit!157891)

(assert (=> b!6200000 (= lt!2342829 (lemmaExistCutMatchRandMatchRSpecEquivalent!1747 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326))))

(assert (=> b!6200000 (= lt!2342827 (Exists!3210 lambda!338754))))

(declare-datatypes ((tuple2!66238 0))(
  ( (tuple2!66239 (_1!36422 List!64721) (_2!36422 List!64721)) )
))
(declare-datatypes ((Option!16031 0))(
  ( (None!16030) (Some!16030 (v!52173 tuple2!66238)) )
))
(declare-fun isDefined!12734 (Option!16031) Bool)

(declare-fun findConcatSeparation!2445 (Regex!16140 Regex!16140 List!64721 List!64721 List!64721) Option!16031)

(assert (=> b!6200000 (= lt!2342827 (isDefined!12734 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326)))))

(declare-fun lt!2342826 () Unit!157891)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2209 (Regex!16140 Regex!16140 List!64721) Unit!157891)

(assert (=> b!6200000 (= lt!2342826 (lemmaFindConcatSeparationEquivalentToExists!2209 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326))))

(declare-fun b!6200001 () Bool)

(declare-fun e!3775547 () Bool)

(declare-fun tp!1729274 () Bool)

(assert (=> b!6200001 (= e!3775547 tp!1729274)))

(declare-fun e!3775551 () Bool)

(declare-fun setElem!42081 () Context!11048)

(declare-fun setNonEmpty!42081 () Bool)

(declare-fun tp!1729269 () Bool)

(declare-fun setRes!42081 () Bool)

(declare-fun inv!83598 (Context!11048) Bool)

(assert (=> setNonEmpty!42081 (= setRes!42081 (and tp!1729269 (inv!83598 setElem!42081) e!3775551))))

(declare-fun setRest!42081 () (Set Context!11048))

(assert (=> setNonEmpty!42081 (= z!1189 (set.union (set.insert setElem!42081 (as set.empty (Set Context!11048))) setRest!42081))))

(declare-fun b!6200002 () Bool)

(declare-fun e!3775552 () Bool)

(declare-fun tp_is_empty!41533 () Bool)

(declare-fun tp!1729271 () Bool)

(assert (=> b!6200002 (= e!3775552 (and tp_is_empty!41533 tp!1729271))))

(declare-fun b!6200003 () Bool)

(declare-fun tp!1729275 () Bool)

(assert (=> b!6200003 (= e!3775551 tp!1729275)))

(declare-fun b!6200004 () Bool)

(declare-fun e!3775549 () Unit!157891)

(declare-fun Unit!157893 () Unit!157891)

(assert (=> b!6200004 (= e!3775549 Unit!157893)))

(declare-fun b!6200005 () Bool)

(declare-fun tp!1729272 () Bool)

(declare-fun tp!1729273 () Bool)

(assert (=> b!6200005 (= e!3775547 (and tp!1729272 tp!1729273))))

(declare-fun setIsEmpty!42081 () Bool)

(assert (=> setIsEmpty!42081 setRes!42081))

(declare-fun b!6200006 () Bool)

(declare-fun res!2564523 () Bool)

(assert (=> b!6200006 (=> res!2564523 e!3775550)))

(declare-fun generalisedConcat!1737 (List!64719) Regex!16140)

(assert (=> b!6200006 (= res!2564523 (not (= r!7292 (generalisedConcat!1737 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun e!3775542 () Bool)

(assert (=> b!6200007 (= e!3775545 e!3775542)))

(declare-fun res!2564529 () Bool)

(assert (=> b!6200007 (=> res!2564529 e!3775542)))

(assert (=> b!6200007 (= res!2564529 (or (and (is-ElementMatch!16140 (regOne!32792 r!7292)) (= (c!1119187 (regOne!32792 r!7292)) (h!71045 s!2326))) (is-Union!16140 (regOne!32792 r!7292)) (not (is-Concat!24985 (regOne!32792 r!7292)))))))

(declare-fun lt!2342823 () Unit!157891)

(assert (=> b!6200007 (= lt!2342823 e!3775549)))

(declare-fun c!1119186 () Bool)

(declare-fun nullable!6133 (Regex!16140) Bool)

(assert (=> b!6200007 (= c!1119186 (nullable!6133 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun lambda!338756 () Int)

(declare-fun flatMap!1645 ((Set Context!11048) Int) (Set Context!11048))

(declare-fun derivationStepZipperUp!1314 (Context!11048 C!32550) (Set Context!11048))

(assert (=> b!6200007 (= (flatMap!1645 z!1189 lambda!338756) (derivationStepZipperUp!1314 (h!71044 zl!343) (h!71045 s!2326)))))

(declare-fun lt!2342830 () Unit!157891)

(declare-fun lemmaFlatMapOnSingletonSet!1171 ((Set Context!11048) Context!11048 Int) Unit!157891)

(assert (=> b!6200007 (= lt!2342830 (lemmaFlatMapOnSingletonSet!1171 z!1189 (h!71044 zl!343) lambda!338756))))

(declare-fun lt!2342833 () (Set Context!11048))

(declare-fun lt!2342828 () Context!11048)

(assert (=> b!6200007 (= lt!2342833 (derivationStepZipperUp!1314 lt!2342828 (h!71045 s!2326)))))

(declare-fun lt!2342834 () (Set Context!11048))

(declare-fun derivationStepZipperDown!1388 (Regex!16140 Context!11048 C!32550) (Set Context!11048))

(assert (=> b!6200007 (= lt!2342834 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (h!71044 zl!343))) lt!2342828 (h!71045 s!2326)))))

(assert (=> b!6200007 (= lt!2342828 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun lt!2342825 () (Set Context!11048))

(assert (=> b!6200007 (= lt!2342825 (derivationStepZipperUp!1314 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))) (h!71045 s!2326)))))

(declare-fun b!6200008 () Bool)

(declare-fun res!2564526 () Bool)

(assert (=> b!6200008 (=> res!2564526 e!3775550)))

(assert (=> b!6200008 (= res!2564526 (not (is-Cons!64595 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200009 () Bool)

(declare-fun res!2564522 () Bool)

(assert (=> b!6200009 (=> res!2564522 e!3775550)))

(assert (=> b!6200009 (= res!2564522 (or (is-EmptyExpr!16140 r!7292) (is-EmptyLang!16140 r!7292) (is-ElementMatch!16140 r!7292) (is-Union!16140 r!7292) (not (is-Concat!24985 r!7292))))))

(declare-fun b!6200010 () Bool)

(declare-fun e!3775544 () Bool)

(declare-fun matchZipper!2152 ((Set Context!11048) List!64721) Bool)

(assert (=> b!6200010 (= e!3775544 (matchZipper!2152 lt!2342833 (t!378237 s!2326)))))

(declare-fun b!6200011 () Bool)

(declare-fun res!2564533 () Bool)

(assert (=> b!6200011 (=> res!2564533 e!3775542)))

(assert (=> b!6200011 (= res!2564533 (not (nullable!6133 (regOne!32792 (regOne!32792 r!7292)))))))

(declare-fun b!6200012 () Bool)

(declare-fun tp!1729276 () Bool)

(declare-fun tp!1729268 () Bool)

(assert (=> b!6200012 (= e!3775547 (and tp!1729276 tp!1729268))))

(declare-fun b!6200013 () Bool)

(declare-fun res!2564532 () Bool)

(assert (=> b!6200013 (=> res!2564532 e!3775550)))

(declare-fun isEmpty!36588 (List!64720) Bool)

(assert (=> b!6200013 (= res!2564532 (not (isEmpty!36588 (t!378236 zl!343))))))

(declare-fun b!6200014 () Bool)

(assert (=> b!6200014 (= e!3775546 (not e!3775550))))

(declare-fun res!2564528 () Bool)

(assert (=> b!6200014 (=> res!2564528 e!3775550)))

(assert (=> b!6200014 (= res!2564528 (not (is-Cons!64596 zl!343)))))

(declare-fun matchRSpec!3241 (Regex!16140 List!64721) Bool)

(assert (=> b!6200014 (= lt!2342832 (matchRSpec!3241 r!7292 s!2326))))

(declare-fun matchR!8323 (Regex!16140 List!64721) Bool)

(assert (=> b!6200014 (= lt!2342832 (matchR!8323 r!7292 s!2326))))

(declare-fun lt!2342831 () Unit!157891)

(declare-fun mainMatchTheorem!3241 (Regex!16140 List!64721) Unit!157891)

(assert (=> b!6200014 (= lt!2342831 (mainMatchTheorem!3241 r!7292 s!2326))))

(declare-fun res!2564531 () Bool)

(assert (=> start!618260 (=> (not res!2564531) (not e!3775546))))

(declare-fun validRegex!7876 (Regex!16140) Bool)

(assert (=> start!618260 (= res!2564531 (validRegex!7876 r!7292))))

(assert (=> start!618260 e!3775546))

(assert (=> start!618260 e!3775547))

(declare-fun condSetEmpty!42081 () Bool)

(assert (=> start!618260 (= condSetEmpty!42081 (= z!1189 (as set.empty (Set Context!11048))))))

(assert (=> start!618260 setRes!42081))

(declare-fun e!3775543 () Bool)

(assert (=> start!618260 e!3775543))

(assert (=> start!618260 e!3775552))

(declare-fun b!6200015 () Bool)

(declare-fun Unit!157894 () Unit!157891)

(assert (=> b!6200015 (= e!3775549 Unit!157894)))

(declare-fun lt!2342824 () Unit!157891)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!971 ((Set Context!11048) (Set Context!11048) List!64721) Unit!157891)

(assert (=> b!6200015 (= lt!2342824 (lemmaZipperConcatMatchesSameAsBothZippers!971 lt!2342834 lt!2342833 (t!378237 s!2326)))))

(declare-fun res!2564521 () Bool)

(assert (=> b!6200015 (= res!2564521 (matchZipper!2152 lt!2342834 (t!378237 s!2326)))))

(assert (=> b!6200015 (=> res!2564521 e!3775544)))

(assert (=> b!6200015 (= (matchZipper!2152 (set.union lt!2342834 lt!2342833) (t!378237 s!2326)) e!3775544)))

(declare-fun b!6200016 () Bool)

(declare-fun res!2564524 () Bool)

(assert (=> b!6200016 (=> (not res!2564524) (not e!3775546))))

(declare-fun unfocusZipper!1882 (List!64720) Regex!16140)

(assert (=> b!6200016 (= res!2564524 (= r!7292 (unfocusZipper!1882 zl!343)))))

(declare-fun b!6200017 () Bool)

(assert (=> b!6200017 (= e!3775547 tp_is_empty!41533)))

(declare-fun b!6200018 () Bool)

(declare-fun res!2564530 () Bool)

(assert (=> b!6200018 (=> res!2564530 e!3775550)))

(declare-fun generalisedUnion!1984 (List!64719) Regex!16140)

(declare-fun unfocusZipperList!1561 (List!64720) List!64719)

(assert (=> b!6200018 (= res!2564530 (not (= r!7292 (generalisedUnion!1984 (unfocusZipperList!1561 zl!343)))))))

(declare-fun b!6200019 () Bool)

(declare-fun res!2564527 () Bool)

(assert (=> b!6200019 (=> res!2564527 e!3775545)))

(declare-fun isEmpty!36589 (List!64719) Bool)

(assert (=> b!6200019 (= res!2564527 (isEmpty!36589 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200020 () Bool)

(assert (=> b!6200020 (= e!3775542 (inv!83598 lt!2342828))))

(declare-fun b!6200021 () Bool)

(declare-fun e!3775548 () Bool)

(declare-fun tp!1729270 () Bool)

(assert (=> b!6200021 (= e!3775543 (and (inv!83598 (h!71044 zl!343)) e!3775548 tp!1729270))))

(declare-fun b!6200022 () Bool)

(declare-fun tp!1729267 () Bool)

(assert (=> b!6200022 (= e!3775548 tp!1729267)))

(assert (= (and start!618260 res!2564531) b!6199999))

(assert (= (and b!6199999 res!2564525) b!6200016))

(assert (= (and b!6200016 res!2564524) b!6200014))

(assert (= (and b!6200014 (not res!2564528)) b!6200013))

(assert (= (and b!6200013 (not res!2564532)) b!6200006))

(assert (= (and b!6200006 (not res!2564523)) b!6200008))

(assert (= (and b!6200008 (not res!2564526)) b!6200018))

(assert (= (and b!6200018 (not res!2564530)) b!6200009))

(assert (= (and b!6200009 (not res!2564522)) b!6200000))

(assert (= (and b!6200000 (not res!2564520)) b!6200019))

(assert (= (and b!6200019 (not res!2564527)) b!6200007))

(assert (= (and b!6200007 c!1119186) b!6200015))

(assert (= (and b!6200007 (not c!1119186)) b!6200004))

(assert (= (and b!6200015 (not res!2564521)) b!6200010))

(assert (= (and b!6200007 (not res!2564529)) b!6200011))

(assert (= (and b!6200011 (not res!2564533)) b!6200020))

(assert (= (and start!618260 (is-ElementMatch!16140 r!7292)) b!6200017))

(assert (= (and start!618260 (is-Concat!24985 r!7292)) b!6200012))

(assert (= (and start!618260 (is-Star!16140 r!7292)) b!6200001))

(assert (= (and start!618260 (is-Union!16140 r!7292)) b!6200005))

(assert (= (and start!618260 condSetEmpty!42081) setIsEmpty!42081))

(assert (= (and start!618260 (not condSetEmpty!42081)) setNonEmpty!42081))

(assert (= setNonEmpty!42081 b!6200003))

(assert (= b!6200021 b!6200022))

(assert (= (and start!618260 (is-Cons!64596 zl!343)) b!6200021))

(assert (= (and start!618260 (is-Cons!64597 s!2326)) b!6200002))

(declare-fun m!7032870 () Bool)

(assert (=> b!6200015 m!7032870))

(declare-fun m!7032872 () Bool)

(assert (=> b!6200015 m!7032872))

(declare-fun m!7032874 () Bool)

(assert (=> b!6200015 m!7032874))

(declare-fun m!7032876 () Bool)

(assert (=> start!618260 m!7032876))

(declare-fun m!7032878 () Bool)

(assert (=> b!6200006 m!7032878))

(declare-fun m!7032880 () Bool)

(assert (=> b!6200016 m!7032880))

(declare-fun m!7032882 () Bool)

(assert (=> b!6200013 m!7032882))

(declare-fun m!7032884 () Bool)

(assert (=> b!6200021 m!7032884))

(declare-fun m!7032886 () Bool)

(assert (=> b!6199999 m!7032886))

(declare-fun m!7032888 () Bool)

(assert (=> b!6200010 m!7032888))

(declare-fun m!7032890 () Bool)

(assert (=> b!6200014 m!7032890))

(declare-fun m!7032892 () Bool)

(assert (=> b!6200014 m!7032892))

(declare-fun m!7032894 () Bool)

(assert (=> b!6200014 m!7032894))

(declare-fun m!7032896 () Bool)

(assert (=> b!6200000 m!7032896))

(declare-fun m!7032898 () Bool)

(assert (=> b!6200000 m!7032898))

(declare-fun m!7032900 () Bool)

(assert (=> b!6200000 m!7032900))

(declare-fun m!7032902 () Bool)

(assert (=> b!6200000 m!7032902))

(declare-fun m!7032904 () Bool)

(assert (=> b!6200000 m!7032904))

(assert (=> b!6200000 m!7032902))

(assert (=> b!6200000 m!7032896))

(declare-fun m!7032906 () Bool)

(assert (=> b!6200000 m!7032906))

(declare-fun m!7032908 () Bool)

(assert (=> b!6200018 m!7032908))

(assert (=> b!6200018 m!7032908))

(declare-fun m!7032910 () Bool)

(assert (=> b!6200018 m!7032910))

(declare-fun m!7032912 () Bool)

(assert (=> setNonEmpty!42081 m!7032912))

(declare-fun m!7032914 () Bool)

(assert (=> b!6200007 m!7032914))

(declare-fun m!7032916 () Bool)

(assert (=> b!6200007 m!7032916))

(declare-fun m!7032918 () Bool)

(assert (=> b!6200007 m!7032918))

(declare-fun m!7032920 () Bool)

(assert (=> b!6200007 m!7032920))

(declare-fun m!7032922 () Bool)

(assert (=> b!6200007 m!7032922))

(declare-fun m!7032924 () Bool)

(assert (=> b!6200007 m!7032924))

(declare-fun m!7032926 () Bool)

(assert (=> b!6200007 m!7032926))

(declare-fun m!7032928 () Bool)

(assert (=> b!6200011 m!7032928))

(declare-fun m!7032930 () Bool)

(assert (=> b!6200020 m!7032930))

(declare-fun m!7032932 () Bool)

(assert (=> b!6200019 m!7032932))

(push 1)

(assert (not b!6200022))

(assert (not b!6200005))

(assert (not b!6200013))

(assert (not b!6200014))

(assert (not b!6199999))

(assert tp_is_empty!41533)

(assert (not setNonEmpty!42081))

(assert (not b!6200002))

(assert (not b!6200010))

(assert (not b!6200012))

(assert (not b!6200015))

(assert (not b!6200007))

(assert (not start!618260))

(assert (not b!6200000))

(assert (not b!6200003))

(assert (not b!6200019))

(assert (not b!6200006))

(assert (not b!6200016))

(assert (not b!6200020))

(assert (not b!6200018))

(assert (not b!6200011))

(assert (not b!6200001))

(assert (not b!6200021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1943638 () Bool)

(assert (=> d!1943638 (= (isEmpty!36589 (t!378235 (exprs!6024 (h!71044 zl!343)))) (is-Nil!64595 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200019 d!1943638))

(declare-fun d!1943640 () Bool)

(declare-fun e!3775594 () Bool)

(assert (=> d!1943640 e!3775594))

(declare-fun res!2564590 () Bool)

(assert (=> d!1943640 (=> (not res!2564590) (not e!3775594))))

(declare-fun lt!2342873 () List!64720)

(declare-fun noDuplicate!1978 (List!64720) Bool)

(assert (=> d!1943640 (= res!2564590 (noDuplicate!1978 lt!2342873))))

(declare-fun choose!46076 ((Set Context!11048)) List!64720)

(assert (=> d!1943640 (= lt!2342873 (choose!46076 z!1189))))

(assert (=> d!1943640 (= (toList!9924 z!1189) lt!2342873)))

(declare-fun b!6200121 () Bool)

(declare-fun content!12075 (List!64720) (Set Context!11048))

(assert (=> b!6200121 (= e!3775594 (= (content!12075 lt!2342873) z!1189))))

(assert (= (and d!1943640 res!2564590) b!6200121))

(declare-fun m!7032998 () Bool)

(assert (=> d!1943640 m!7032998))

(declare-fun m!7033000 () Bool)

(assert (=> d!1943640 m!7033000))

(declare-fun m!7033002 () Bool)

(assert (=> b!6200121 m!7033002))

(assert (=> b!6199999 d!1943640))

(declare-fun b!6200142 () Bool)

(declare-fun e!3775610 () Bool)

(assert (=> b!6200142 (= e!3775610 (isEmpty!36589 (t!378235 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6200143 () Bool)

(declare-fun e!3775611 () Bool)

(declare-fun e!3775609 () Bool)

(assert (=> b!6200143 (= e!3775611 e!3775609)))

(declare-fun c!1119206 () Bool)

(assert (=> b!6200143 (= c!1119206 (isEmpty!36589 (unfocusZipperList!1561 zl!343)))))

(declare-fun b!6200144 () Bool)

(declare-fun e!3775608 () Regex!16140)

(declare-fun e!3775612 () Regex!16140)

(assert (=> b!6200144 (= e!3775608 e!3775612)))

(declare-fun c!1119203 () Bool)

(assert (=> b!6200144 (= c!1119203 (is-Cons!64595 (unfocusZipperList!1561 zl!343)))))

(declare-fun b!6200145 () Bool)

(assert (=> b!6200145 (= e!3775612 (Union!16140 (h!71043 (unfocusZipperList!1561 zl!343)) (generalisedUnion!1984 (t!378235 (unfocusZipperList!1561 zl!343)))))))

(declare-fun b!6200146 () Bool)

(assert (=> b!6200146 (= e!3775608 (h!71043 (unfocusZipperList!1561 zl!343)))))

(declare-fun b!6200147 () Bool)

(declare-fun e!3775607 () Bool)

(declare-fun lt!2342876 () Regex!16140)

(declare-fun head!12788 (List!64719) Regex!16140)

(assert (=> b!6200147 (= e!3775607 (= lt!2342876 (head!12788 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6200148 () Bool)

(declare-fun isUnion!989 (Regex!16140) Bool)

(assert (=> b!6200148 (= e!3775607 (isUnion!989 lt!2342876))))

(declare-fun b!6200150 () Bool)

(assert (=> b!6200150 (= e!3775612 EmptyLang!16140)))

(declare-fun b!6200151 () Bool)

(declare-fun isEmptyLang!1559 (Regex!16140) Bool)

(assert (=> b!6200151 (= e!3775609 (isEmptyLang!1559 lt!2342876))))

(declare-fun d!1943642 () Bool)

(assert (=> d!1943642 e!3775611))

(declare-fun res!2564595 () Bool)

(assert (=> d!1943642 (=> (not res!2564595) (not e!3775611))))

(assert (=> d!1943642 (= res!2564595 (validRegex!7876 lt!2342876))))

(assert (=> d!1943642 (= lt!2342876 e!3775608)))

(declare-fun c!1119204 () Bool)

(assert (=> d!1943642 (= c!1119204 e!3775610)))

(declare-fun res!2564596 () Bool)

(assert (=> d!1943642 (=> (not res!2564596) (not e!3775610))))

(assert (=> d!1943642 (= res!2564596 (is-Cons!64595 (unfocusZipperList!1561 zl!343)))))

(declare-fun lambda!338770 () Int)

(declare-fun forall!15254 (List!64719 Int) Bool)

(assert (=> d!1943642 (forall!15254 (unfocusZipperList!1561 zl!343) lambda!338770)))

(assert (=> d!1943642 (= (generalisedUnion!1984 (unfocusZipperList!1561 zl!343)) lt!2342876)))

(declare-fun b!6200149 () Bool)

(assert (=> b!6200149 (= e!3775609 e!3775607)))

(declare-fun c!1119205 () Bool)

(declare-fun tail!11873 (List!64719) List!64719)

(assert (=> b!6200149 (= c!1119205 (isEmpty!36589 (tail!11873 (unfocusZipperList!1561 zl!343))))))

(assert (= (and d!1943642 res!2564596) b!6200142))

(assert (= (and d!1943642 c!1119204) b!6200146))

(assert (= (and d!1943642 (not c!1119204)) b!6200144))

(assert (= (and b!6200144 c!1119203) b!6200145))

(assert (= (and b!6200144 (not c!1119203)) b!6200150))

(assert (= (and d!1943642 res!2564595) b!6200143))

(assert (= (and b!6200143 c!1119206) b!6200151))

(assert (= (and b!6200143 (not c!1119206)) b!6200149))

(assert (= (and b!6200149 c!1119205) b!6200147))

(assert (= (and b!6200149 (not c!1119205)) b!6200148))

(declare-fun m!7033004 () Bool)

(assert (=> b!6200145 m!7033004))

(assert (=> b!6200149 m!7032908))

(declare-fun m!7033006 () Bool)

(assert (=> b!6200149 m!7033006))

(assert (=> b!6200149 m!7033006))

(declare-fun m!7033008 () Bool)

(assert (=> b!6200149 m!7033008))

(assert (=> b!6200147 m!7032908))

(declare-fun m!7033010 () Bool)

(assert (=> b!6200147 m!7033010))

(declare-fun m!7033012 () Bool)

(assert (=> b!6200151 m!7033012))

(declare-fun m!7033014 () Bool)

(assert (=> d!1943642 m!7033014))

(assert (=> d!1943642 m!7032908))

(declare-fun m!7033016 () Bool)

(assert (=> d!1943642 m!7033016))

(declare-fun m!7033018 () Bool)

(assert (=> b!6200148 m!7033018))

(declare-fun m!7033020 () Bool)

(assert (=> b!6200142 m!7033020))

(assert (=> b!6200143 m!7032908))

(declare-fun m!7033022 () Bool)

(assert (=> b!6200143 m!7033022))

(assert (=> b!6200018 d!1943642))

(declare-fun bs!1538376 () Bool)

(declare-fun d!1943644 () Bool)

(assert (= bs!1538376 (and d!1943644 d!1943642)))

(declare-fun lambda!338773 () Int)

(assert (=> bs!1538376 (= lambda!338773 lambda!338770)))

(declare-fun lt!2342879 () List!64719)

(assert (=> d!1943644 (forall!15254 lt!2342879 lambda!338773)))

(declare-fun e!3775615 () List!64719)

(assert (=> d!1943644 (= lt!2342879 e!3775615)))

(declare-fun c!1119209 () Bool)

(assert (=> d!1943644 (= c!1119209 (is-Cons!64596 zl!343))))

(assert (=> d!1943644 (= (unfocusZipperList!1561 zl!343) lt!2342879)))

(declare-fun b!6200156 () Bool)

(assert (=> b!6200156 (= e!3775615 (Cons!64595 (generalisedConcat!1737 (exprs!6024 (h!71044 zl!343))) (unfocusZipperList!1561 (t!378236 zl!343))))))

(declare-fun b!6200157 () Bool)

(assert (=> b!6200157 (= e!3775615 Nil!64595)))

(assert (= (and d!1943644 c!1119209) b!6200156))

(assert (= (and d!1943644 (not c!1119209)) b!6200157))

(declare-fun m!7033024 () Bool)

(assert (=> d!1943644 m!7033024))

(assert (=> b!6200156 m!7032878))

(declare-fun m!7033026 () Bool)

(assert (=> b!6200156 m!7033026))

(assert (=> b!6200018 d!1943644))

(declare-fun bs!1538377 () Bool)

(declare-fun d!1943646 () Bool)

(assert (= bs!1538377 (and d!1943646 d!1943642)))

(declare-fun lambda!338776 () Int)

(assert (=> bs!1538377 (= lambda!338776 lambda!338770)))

(declare-fun bs!1538378 () Bool)

(assert (= bs!1538378 (and d!1943646 d!1943644)))

(assert (=> bs!1538378 (= lambda!338776 lambda!338773)))

(assert (=> d!1943646 (= (inv!83598 lt!2342828) (forall!15254 (exprs!6024 lt!2342828) lambda!338776))))

(declare-fun bs!1538379 () Bool)

(assert (= bs!1538379 d!1943646))

(declare-fun m!7033028 () Bool)

(assert (=> bs!1538379 m!7033028))

(assert (=> b!6200020 d!1943646))

(declare-fun b!6200176 () Bool)

(declare-fun e!3775635 () Bool)

(declare-fun call!518865 () Bool)

(assert (=> b!6200176 (= e!3775635 call!518865)))

(declare-fun b!6200177 () Bool)

(declare-fun e!3775630 () Bool)

(declare-fun e!3775633 () Bool)

(assert (=> b!6200177 (= e!3775630 e!3775633)))

(declare-fun c!1119214 () Bool)

(assert (=> b!6200177 (= c!1119214 (is-Union!16140 r!7292))))

(declare-fun c!1119215 () Bool)

(declare-fun bm!518858 () Bool)

(assert (=> bm!518858 (= call!518865 (validRegex!7876 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))

(declare-fun b!6200178 () Bool)

(assert (=> b!6200178 (= e!3775630 e!3775635)))

(declare-fun res!2564608 () Bool)

(assert (=> b!6200178 (= res!2564608 (not (nullable!6133 (reg!16469 r!7292))))))

(assert (=> b!6200178 (=> (not res!2564608) (not e!3775635))))

(declare-fun b!6200179 () Bool)

(declare-fun e!3775632 () Bool)

(assert (=> b!6200179 (= e!3775632 e!3775630)))

(assert (=> b!6200179 (= c!1119215 (is-Star!16140 r!7292))))

(declare-fun b!6200180 () Bool)

(declare-fun e!3775636 () Bool)

(declare-fun e!3775634 () Bool)

(assert (=> b!6200180 (= e!3775636 e!3775634)))

(declare-fun res!2564607 () Bool)

(assert (=> b!6200180 (=> (not res!2564607) (not e!3775634))))

(declare-fun call!518864 () Bool)

(assert (=> b!6200180 (= res!2564607 call!518864)))

(declare-fun b!6200181 () Bool)

(declare-fun res!2564611 () Bool)

(declare-fun e!3775631 () Bool)

(assert (=> b!6200181 (=> (not res!2564611) (not e!3775631))))

(assert (=> b!6200181 (= res!2564611 call!518864)))

(assert (=> b!6200181 (= e!3775633 e!3775631)))

(declare-fun bm!518860 () Bool)

(declare-fun call!518863 () Bool)

(assert (=> bm!518860 (= call!518863 (validRegex!7876 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))

(declare-fun b!6200182 () Bool)

(assert (=> b!6200182 (= e!3775631 call!518863)))

(declare-fun b!6200183 () Bool)

(declare-fun res!2564609 () Bool)

(assert (=> b!6200183 (=> res!2564609 e!3775636)))

(assert (=> b!6200183 (= res!2564609 (not (is-Concat!24985 r!7292)))))

(assert (=> b!6200183 (= e!3775633 e!3775636)))

(declare-fun b!6200184 () Bool)

(assert (=> b!6200184 (= e!3775634 call!518863)))

(declare-fun d!1943648 () Bool)

(declare-fun res!2564610 () Bool)

(assert (=> d!1943648 (=> res!2564610 e!3775632)))

(assert (=> d!1943648 (= res!2564610 (is-ElementMatch!16140 r!7292))))

(assert (=> d!1943648 (= (validRegex!7876 r!7292) e!3775632)))

(declare-fun bm!518859 () Bool)

(assert (=> bm!518859 (= call!518864 call!518865)))

(assert (= (and d!1943648 (not res!2564610)) b!6200179))

(assert (= (and b!6200179 c!1119215) b!6200178))

(assert (= (and b!6200179 (not c!1119215)) b!6200177))

(assert (= (and b!6200178 res!2564608) b!6200176))

(assert (= (and b!6200177 c!1119214) b!6200181))

(assert (= (and b!6200177 (not c!1119214)) b!6200183))

(assert (= (and b!6200181 res!2564611) b!6200182))

(assert (= (and b!6200183 (not res!2564609)) b!6200180))

(assert (= (and b!6200180 res!2564607) b!6200184))

(assert (= (or b!6200182 b!6200184) bm!518860))

(assert (= (or b!6200181 b!6200180) bm!518859))

(assert (= (or b!6200176 bm!518859) bm!518858))

(declare-fun m!7033030 () Bool)

(assert (=> bm!518858 m!7033030))

(declare-fun m!7033032 () Bool)

(assert (=> b!6200178 m!7033032))

(declare-fun m!7033034 () Bool)

(assert (=> bm!518860 m!7033034))

(assert (=> start!618260 d!1943648))

(declare-fun b!6200203 () Bool)

(declare-fun e!3775651 () Bool)

(declare-fun lt!2342886 () Option!16031)

(declare-fun ++!14218 (List!64721 List!64721) List!64721)

(declare-fun get!22304 (Option!16031) tuple2!66238)

(assert (=> b!6200203 (= e!3775651 (= (++!14218 (_1!36422 (get!22304 lt!2342886)) (_2!36422 (get!22304 lt!2342886))) s!2326))))

(declare-fun b!6200204 () Bool)

(declare-fun e!3775650 () Option!16031)

(declare-fun e!3775649 () Option!16031)

(assert (=> b!6200204 (= e!3775650 e!3775649)))

(declare-fun c!1119220 () Bool)

(assert (=> b!6200204 (= c!1119220 (is-Nil!64597 s!2326))))

(declare-fun b!6200205 () Bool)

(declare-fun lt!2342888 () Unit!157891)

(declare-fun lt!2342887 () Unit!157891)

(assert (=> b!6200205 (= lt!2342888 lt!2342887)))

(assert (=> b!6200205 (= (++!14218 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2313 (List!64721 C!32550 List!64721 List!64721) Unit!157891)

(assert (=> b!6200205 (= lt!2342887 (lemmaMoveElementToOtherListKeepsConcatEq!2313 Nil!64597 (h!71045 s!2326) (t!378237 s!2326) s!2326))))

(assert (=> b!6200205 (= e!3775649 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326) s!2326))))

(declare-fun b!6200206 () Bool)

(assert (=> b!6200206 (= e!3775650 (Some!16030 (tuple2!66239 Nil!64597 s!2326)))))

(declare-fun b!6200207 () Bool)

(assert (=> b!6200207 (= e!3775649 None!16030)))

(declare-fun d!1943650 () Bool)

(declare-fun e!3775648 () Bool)

(assert (=> d!1943650 e!3775648))

(declare-fun res!2564626 () Bool)

(assert (=> d!1943650 (=> res!2564626 e!3775648)))

(assert (=> d!1943650 (= res!2564626 e!3775651)))

(declare-fun res!2564624 () Bool)

(assert (=> d!1943650 (=> (not res!2564624) (not e!3775651))))

(assert (=> d!1943650 (= res!2564624 (isDefined!12734 lt!2342886))))

(assert (=> d!1943650 (= lt!2342886 e!3775650)))

(declare-fun c!1119221 () Bool)

(declare-fun e!3775647 () Bool)

(assert (=> d!1943650 (= c!1119221 e!3775647)))

(declare-fun res!2564622 () Bool)

(assert (=> d!1943650 (=> (not res!2564622) (not e!3775647))))

(assert (=> d!1943650 (= res!2564622 (matchR!8323 (regOne!32792 r!7292) Nil!64597))))

(assert (=> d!1943650 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943650 (= (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326) lt!2342886)))

(declare-fun b!6200208 () Bool)

(declare-fun res!2564623 () Bool)

(assert (=> b!6200208 (=> (not res!2564623) (not e!3775651))))

(assert (=> b!6200208 (= res!2564623 (matchR!8323 (regTwo!32792 r!7292) (_2!36422 (get!22304 lt!2342886))))))

(declare-fun b!6200209 () Bool)

(assert (=> b!6200209 (= e!3775647 (matchR!8323 (regTwo!32792 r!7292) s!2326))))

(declare-fun b!6200210 () Bool)

(declare-fun res!2564625 () Bool)

(assert (=> b!6200210 (=> (not res!2564625) (not e!3775651))))

(assert (=> b!6200210 (= res!2564625 (matchR!8323 (regOne!32792 r!7292) (_1!36422 (get!22304 lt!2342886))))))

(declare-fun b!6200211 () Bool)

(assert (=> b!6200211 (= e!3775648 (not (isDefined!12734 lt!2342886)))))

(assert (= (and d!1943650 res!2564622) b!6200209))

(assert (= (and d!1943650 c!1119221) b!6200206))

(assert (= (and d!1943650 (not c!1119221)) b!6200204))

(assert (= (and b!6200204 c!1119220) b!6200207))

(assert (= (and b!6200204 (not c!1119220)) b!6200205))

(assert (= (and d!1943650 res!2564624) b!6200210))

(assert (= (and b!6200210 res!2564625) b!6200208))

(assert (= (and b!6200208 res!2564623) b!6200203))

(assert (= (and d!1943650 (not res!2564626)) b!6200211))

(declare-fun m!7033036 () Bool)

(assert (=> b!6200209 m!7033036))

(declare-fun m!7033038 () Bool)

(assert (=> b!6200205 m!7033038))

(assert (=> b!6200205 m!7033038))

(declare-fun m!7033040 () Bool)

(assert (=> b!6200205 m!7033040))

(declare-fun m!7033042 () Bool)

(assert (=> b!6200205 m!7033042))

(assert (=> b!6200205 m!7033038))

(declare-fun m!7033044 () Bool)

(assert (=> b!6200205 m!7033044))

(declare-fun m!7033046 () Bool)

(assert (=> d!1943650 m!7033046))

(declare-fun m!7033048 () Bool)

(assert (=> d!1943650 m!7033048))

(declare-fun m!7033050 () Bool)

(assert (=> d!1943650 m!7033050))

(declare-fun m!7033052 () Bool)

(assert (=> b!6200203 m!7033052))

(declare-fun m!7033054 () Bool)

(assert (=> b!6200203 m!7033054))

(assert (=> b!6200208 m!7033052))

(declare-fun m!7033056 () Bool)

(assert (=> b!6200208 m!7033056))

(assert (=> b!6200210 m!7033052))

(declare-fun m!7033058 () Bool)

(assert (=> b!6200210 m!7033058))

(assert (=> b!6200211 m!7033046))

(assert (=> b!6200000 d!1943650))

(declare-fun d!1943652 () Bool)

(declare-fun choose!46077 (Int) Bool)

(assert (=> d!1943652 (= (Exists!3210 lambda!338755) (choose!46077 lambda!338755))))

(declare-fun bs!1538380 () Bool)

(assert (= bs!1538380 d!1943652))

(declare-fun m!7033060 () Bool)

(assert (=> bs!1538380 m!7033060))

(assert (=> b!6200000 d!1943652))

(declare-fun d!1943654 () Bool)

(assert (=> d!1943654 (= (Exists!3210 lambda!338754) (choose!46077 lambda!338754))))

(declare-fun bs!1538381 () Bool)

(assert (= bs!1538381 d!1943654))

(declare-fun m!7033062 () Bool)

(assert (=> bs!1538381 m!7033062))

(assert (=> b!6200000 d!1943654))

(declare-fun bs!1538382 () Bool)

(declare-fun d!1943656 () Bool)

(assert (= bs!1538382 (and d!1943656 b!6200000)))

(declare-fun lambda!338779 () Int)

(assert (=> bs!1538382 (= lambda!338779 lambda!338754)))

(assert (=> bs!1538382 (not (= lambda!338779 lambda!338755))))

(assert (=> d!1943656 true))

(assert (=> d!1943656 true))

(assert (=> d!1943656 true))

(assert (=> d!1943656 (= (isDefined!12734 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326)) (Exists!3210 lambda!338779))))

(declare-fun lt!2342891 () Unit!157891)

(declare-fun choose!46078 (Regex!16140 Regex!16140 List!64721) Unit!157891)

(assert (=> d!1943656 (= lt!2342891 (choose!46078 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326))))

(assert (=> d!1943656 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943656 (= (lemmaFindConcatSeparationEquivalentToExists!2209 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326) lt!2342891)))

(declare-fun bs!1538383 () Bool)

(assert (= bs!1538383 d!1943656))

(assert (=> bs!1538383 m!7032896))

(assert (=> bs!1538383 m!7032896))

(assert (=> bs!1538383 m!7032898))

(declare-fun m!7033064 () Bool)

(assert (=> bs!1538383 m!7033064))

(assert (=> bs!1538383 m!7033050))

(declare-fun m!7033066 () Bool)

(assert (=> bs!1538383 m!7033066))

(assert (=> b!6200000 d!1943656))

(declare-fun bs!1538384 () Bool)

(declare-fun d!1943660 () Bool)

(assert (= bs!1538384 (and d!1943660 b!6200000)))

(declare-fun lambda!338786 () Int)

(assert (=> bs!1538384 (= lambda!338786 lambda!338754)))

(assert (=> bs!1538384 (not (= lambda!338786 lambda!338755))))

(declare-fun bs!1538385 () Bool)

(assert (= bs!1538385 (and d!1943660 d!1943656)))

(assert (=> bs!1538385 (= lambda!338786 lambda!338779)))

(assert (=> d!1943660 true))

(assert (=> d!1943660 true))

(assert (=> d!1943660 true))

(declare-fun lambda!338787 () Int)

(assert (=> bs!1538384 (not (= lambda!338787 lambda!338754))))

(assert (=> bs!1538384 (= lambda!338787 lambda!338755)))

(assert (=> bs!1538385 (not (= lambda!338787 lambda!338779))))

(declare-fun bs!1538386 () Bool)

(assert (= bs!1538386 d!1943660))

(assert (=> bs!1538386 (not (= lambda!338787 lambda!338786))))

(assert (=> d!1943660 true))

(assert (=> d!1943660 true))

(assert (=> d!1943660 true))

(assert (=> d!1943660 (= (Exists!3210 lambda!338786) (Exists!3210 lambda!338787))))

(declare-fun lt!2342896 () Unit!157891)

(declare-fun choose!46079 (Regex!16140 Regex!16140 List!64721) Unit!157891)

(assert (=> d!1943660 (= lt!2342896 (choose!46079 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326))))

(assert (=> d!1943660 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943660 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1747 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326) lt!2342896)))

(declare-fun m!7033068 () Bool)

(assert (=> bs!1538386 m!7033068))

(declare-fun m!7033070 () Bool)

(assert (=> bs!1538386 m!7033070))

(declare-fun m!7033072 () Bool)

(assert (=> bs!1538386 m!7033072))

(assert (=> bs!1538386 m!7033050))

(assert (=> b!6200000 d!1943660))

(declare-fun d!1943662 () Bool)

(declare-fun isEmpty!36592 (Option!16031) Bool)

(assert (=> d!1943662 (= (isDefined!12734 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326)) (not (isEmpty!36592 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326))))))

(declare-fun bs!1538387 () Bool)

(assert (= bs!1538387 d!1943662))

(assert (=> bs!1538387 m!7032896))

(declare-fun m!7033074 () Bool)

(assert (=> bs!1538387 m!7033074))

(assert (=> b!6200000 d!1943662))

(declare-fun d!1943664 () Bool)

(declare-fun nullableFct!2089 (Regex!16140) Bool)

(assert (=> d!1943664 (= (nullable!6133 (regOne!32792 (regOne!32792 r!7292))) (nullableFct!2089 (regOne!32792 (regOne!32792 r!7292))))))

(declare-fun bs!1538388 () Bool)

(assert (= bs!1538388 d!1943664))

(declare-fun m!7033076 () Bool)

(assert (=> bs!1538388 m!7033076))

(assert (=> b!6200011 d!1943664))

(declare-fun bs!1538389 () Bool)

(declare-fun d!1943666 () Bool)

(assert (= bs!1538389 (and d!1943666 d!1943642)))

(declare-fun lambda!338788 () Int)

(assert (=> bs!1538389 (= lambda!338788 lambda!338770)))

(declare-fun bs!1538390 () Bool)

(assert (= bs!1538390 (and d!1943666 d!1943644)))

(assert (=> bs!1538390 (= lambda!338788 lambda!338773)))

(declare-fun bs!1538391 () Bool)

(assert (= bs!1538391 (and d!1943666 d!1943646)))

(assert (=> bs!1538391 (= lambda!338788 lambda!338776)))

(assert (=> d!1943666 (= (inv!83598 setElem!42081) (forall!15254 (exprs!6024 setElem!42081) lambda!338788))))

(declare-fun bs!1538392 () Bool)

(assert (= bs!1538392 d!1943666))

(declare-fun m!7033078 () Bool)

(assert (=> bs!1538392 m!7033078))

(assert (=> setNonEmpty!42081 d!1943666))

(declare-fun bs!1538393 () Bool)

(declare-fun d!1943668 () Bool)

(assert (= bs!1538393 (and d!1943668 d!1943642)))

(declare-fun lambda!338789 () Int)

(assert (=> bs!1538393 (= lambda!338789 lambda!338770)))

(declare-fun bs!1538394 () Bool)

(assert (= bs!1538394 (and d!1943668 d!1943644)))

(assert (=> bs!1538394 (= lambda!338789 lambda!338773)))

(declare-fun bs!1538395 () Bool)

(assert (= bs!1538395 (and d!1943668 d!1943646)))

(assert (=> bs!1538395 (= lambda!338789 lambda!338776)))

(declare-fun bs!1538396 () Bool)

(assert (= bs!1538396 (and d!1943668 d!1943666)))

(assert (=> bs!1538396 (= lambda!338789 lambda!338788)))

(assert (=> d!1943668 (= (inv!83598 (h!71044 zl!343)) (forall!15254 (exprs!6024 (h!71044 zl!343)) lambda!338789))))

(declare-fun bs!1538397 () Bool)

(assert (= bs!1538397 d!1943668))

(declare-fun m!7033080 () Bool)

(assert (=> bs!1538397 m!7033080))

(assert (=> b!6200021 d!1943668))

(declare-fun d!1943670 () Bool)

(declare-fun c!1119236 () Bool)

(declare-fun isEmpty!36593 (List!64721) Bool)

(assert (=> d!1943670 (= c!1119236 (isEmpty!36593 (t!378237 s!2326)))))

(declare-fun e!3775678 () Bool)

(assert (=> d!1943670 (= (matchZipper!2152 lt!2342833 (t!378237 s!2326)) e!3775678)))

(declare-fun b!6200258 () Bool)

(declare-fun nullableZipper!1914 ((Set Context!11048)) Bool)

(assert (=> b!6200258 (= e!3775678 (nullableZipper!1914 lt!2342833))))

(declare-fun b!6200259 () Bool)

(declare-fun derivationStepZipper!2106 ((Set Context!11048) C!32550) (Set Context!11048))

(declare-fun head!12789 (List!64721) C!32550)

(declare-fun tail!11874 (List!64721) List!64721)

(assert (=> b!6200259 (= e!3775678 (matchZipper!2152 (derivationStepZipper!2106 lt!2342833 (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))))))

(assert (= (and d!1943670 c!1119236) b!6200258))

(assert (= (and d!1943670 (not c!1119236)) b!6200259))

(declare-fun m!7033100 () Bool)

(assert (=> d!1943670 m!7033100))

(declare-fun m!7033102 () Bool)

(assert (=> b!6200258 m!7033102))

(declare-fun m!7033104 () Bool)

(assert (=> b!6200259 m!7033104))

(assert (=> b!6200259 m!7033104))

(declare-fun m!7033106 () Bool)

(assert (=> b!6200259 m!7033106))

(declare-fun m!7033108 () Bool)

(assert (=> b!6200259 m!7033108))

(assert (=> b!6200259 m!7033106))

(assert (=> b!6200259 m!7033108))

(declare-fun m!7033110 () Bool)

(assert (=> b!6200259 m!7033110))

(assert (=> b!6200010 d!1943670))

(declare-fun d!1943674 () Bool)

(assert (=> d!1943674 (= (isEmpty!36588 (t!378236 zl!343)) (is-Nil!64596 (t!378236 zl!343)))))

(assert (=> b!6200013 d!1943674))

(declare-fun d!1943676 () Bool)

(declare-fun e!3775681 () Bool)

(assert (=> d!1943676 (= (matchZipper!2152 (set.union lt!2342834 lt!2342833) (t!378237 s!2326)) e!3775681)))

(declare-fun res!2564647 () Bool)

(assert (=> d!1943676 (=> res!2564647 e!3775681)))

(assert (=> d!1943676 (= res!2564647 (matchZipper!2152 lt!2342834 (t!378237 s!2326)))))

(declare-fun lt!2342900 () Unit!157891)

(declare-fun choose!46080 ((Set Context!11048) (Set Context!11048) List!64721) Unit!157891)

(assert (=> d!1943676 (= lt!2342900 (choose!46080 lt!2342834 lt!2342833 (t!378237 s!2326)))))

(assert (=> d!1943676 (= (lemmaZipperConcatMatchesSameAsBothZippers!971 lt!2342834 lt!2342833 (t!378237 s!2326)) lt!2342900)))

(declare-fun b!6200262 () Bool)

(assert (=> b!6200262 (= e!3775681 (matchZipper!2152 lt!2342833 (t!378237 s!2326)))))

(assert (= (and d!1943676 (not res!2564647)) b!6200262))

(assert (=> d!1943676 m!7032874))

(assert (=> d!1943676 m!7032872))

(declare-fun m!7033114 () Bool)

(assert (=> d!1943676 m!7033114))

(assert (=> b!6200262 m!7032888))

(assert (=> b!6200015 d!1943676))

(declare-fun d!1943680 () Bool)

(declare-fun c!1119237 () Bool)

(assert (=> d!1943680 (= c!1119237 (isEmpty!36593 (t!378237 s!2326)))))

(declare-fun e!3775682 () Bool)

(assert (=> d!1943680 (= (matchZipper!2152 lt!2342834 (t!378237 s!2326)) e!3775682)))

(declare-fun b!6200263 () Bool)

(assert (=> b!6200263 (= e!3775682 (nullableZipper!1914 lt!2342834))))

(declare-fun b!6200264 () Bool)

(assert (=> b!6200264 (= e!3775682 (matchZipper!2152 (derivationStepZipper!2106 lt!2342834 (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))))))

(assert (= (and d!1943680 c!1119237) b!6200263))

(assert (= (and d!1943680 (not c!1119237)) b!6200264))

(assert (=> d!1943680 m!7033100))

(declare-fun m!7033116 () Bool)

(assert (=> b!6200263 m!7033116))

(assert (=> b!6200264 m!7033104))

(assert (=> b!6200264 m!7033104))

(declare-fun m!7033118 () Bool)

(assert (=> b!6200264 m!7033118))

(assert (=> b!6200264 m!7033108))

(assert (=> b!6200264 m!7033118))

(assert (=> b!6200264 m!7033108))

(declare-fun m!7033120 () Bool)

(assert (=> b!6200264 m!7033120))

(assert (=> b!6200015 d!1943680))

(declare-fun d!1943682 () Bool)

(declare-fun c!1119238 () Bool)

(assert (=> d!1943682 (= c!1119238 (isEmpty!36593 (t!378237 s!2326)))))

(declare-fun e!3775683 () Bool)

(assert (=> d!1943682 (= (matchZipper!2152 (set.union lt!2342834 lt!2342833) (t!378237 s!2326)) e!3775683)))

(declare-fun b!6200265 () Bool)

(assert (=> b!6200265 (= e!3775683 (nullableZipper!1914 (set.union lt!2342834 lt!2342833)))))

(declare-fun b!6200266 () Bool)

(assert (=> b!6200266 (= e!3775683 (matchZipper!2152 (derivationStepZipper!2106 (set.union lt!2342834 lt!2342833) (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))))))

(assert (= (and d!1943682 c!1119238) b!6200265))

(assert (= (and d!1943682 (not c!1119238)) b!6200266))

(assert (=> d!1943682 m!7033100))

(declare-fun m!7033122 () Bool)

(assert (=> b!6200265 m!7033122))

(assert (=> b!6200266 m!7033104))

(assert (=> b!6200266 m!7033104))

(declare-fun m!7033124 () Bool)

(assert (=> b!6200266 m!7033124))

(assert (=> b!6200266 m!7033108))

(assert (=> b!6200266 m!7033124))

(assert (=> b!6200266 m!7033108))

(declare-fun m!7033126 () Bool)

(assert (=> b!6200266 m!7033126))

(assert (=> b!6200015 d!1943682))

(declare-fun bs!1538400 () Bool)

(declare-fun b!6200318 () Bool)

(assert (= bs!1538400 (and b!6200318 d!1943660)))

(declare-fun lambda!338798 () Int)

(assert (=> bs!1538400 (not (= lambda!338798 lambda!338787))))

(declare-fun bs!1538401 () Bool)

(assert (= bs!1538401 (and b!6200318 b!6200000)))

(assert (=> bs!1538401 (not (= lambda!338798 lambda!338755))))

(assert (=> bs!1538401 (not (= lambda!338798 lambda!338754))))

(assert (=> bs!1538400 (not (= lambda!338798 lambda!338786))))

(declare-fun bs!1538402 () Bool)

(assert (= bs!1538402 (and b!6200318 d!1943656)))

(assert (=> bs!1538402 (not (= lambda!338798 lambda!338779))))

(assert (=> b!6200318 true))

(assert (=> b!6200318 true))

(declare-fun bs!1538403 () Bool)

(declare-fun b!6200316 () Bool)

(assert (= bs!1538403 (and b!6200316 d!1943660)))

(declare-fun lambda!338799 () Int)

(assert (=> bs!1538403 (= lambda!338799 lambda!338787)))

(declare-fun bs!1538404 () Bool)

(assert (= bs!1538404 (and b!6200316 b!6200000)))

(assert (=> bs!1538404 (= lambda!338799 lambda!338755)))

(declare-fun bs!1538405 () Bool)

(assert (= bs!1538405 (and b!6200316 b!6200318)))

(assert (=> bs!1538405 (not (= lambda!338799 lambda!338798))))

(assert (=> bs!1538404 (not (= lambda!338799 lambda!338754))))

(assert (=> bs!1538403 (not (= lambda!338799 lambda!338786))))

(declare-fun bs!1538406 () Bool)

(assert (= bs!1538406 (and b!6200316 d!1943656)))

(assert (=> bs!1538406 (not (= lambda!338799 lambda!338779))))

(assert (=> b!6200316 true))

(assert (=> b!6200316 true))

(declare-fun bm!518865 () Bool)

(declare-fun call!518871 () Bool)

(assert (=> bm!518865 (= call!518871 (isEmpty!36593 s!2326))))

(declare-fun b!6200308 () Bool)

(declare-fun e!3775713 () Bool)

(assert (=> b!6200308 (= e!3775713 call!518871)))

(declare-fun b!6200309 () Bool)

(declare-fun c!1119252 () Bool)

(assert (=> b!6200309 (= c!1119252 (is-ElementMatch!16140 r!7292))))

(declare-fun e!3775708 () Bool)

(declare-fun e!3775714 () Bool)

(assert (=> b!6200309 (= e!3775708 e!3775714)))

(declare-fun b!6200310 () Bool)

(assert (=> b!6200310 (= e!3775714 (= s!2326 (Cons!64597 (c!1119187 r!7292) Nil!64597)))))

(declare-fun b!6200311 () Bool)

(declare-fun res!2564669 () Bool)

(declare-fun e!3775709 () Bool)

(assert (=> b!6200311 (=> res!2564669 e!3775709)))

(assert (=> b!6200311 (= res!2564669 call!518871)))

(declare-fun e!3775710 () Bool)

(assert (=> b!6200311 (= e!3775710 e!3775709)))

(declare-fun b!6200312 () Bool)

(declare-fun e!3775711 () Bool)

(declare-fun e!3775712 () Bool)

(assert (=> b!6200312 (= e!3775711 e!3775712)))

(declare-fun res!2564667 () Bool)

(assert (=> b!6200312 (= res!2564667 (matchRSpec!3241 (regOne!32793 r!7292) s!2326))))

(assert (=> b!6200312 (=> res!2564667 e!3775712)))

(declare-fun d!1943684 () Bool)

(declare-fun c!1119253 () Bool)

(assert (=> d!1943684 (= c!1119253 (is-EmptyExpr!16140 r!7292))))

(assert (=> d!1943684 (= (matchRSpec!3241 r!7292 s!2326) e!3775713)))

(declare-fun c!1119250 () Bool)

(declare-fun call!518870 () Bool)

(declare-fun bm!518866 () Bool)

(assert (=> bm!518866 (= call!518870 (Exists!3210 (ite c!1119250 lambda!338798 lambda!338799)))))

(declare-fun b!6200313 () Bool)

(assert (=> b!6200313 (= e!3775712 (matchRSpec!3241 (regTwo!32793 r!7292) s!2326))))

(declare-fun b!6200314 () Bool)

(assert (=> b!6200314 (= e!3775713 e!3775708)))

(declare-fun res!2564668 () Bool)

(assert (=> b!6200314 (= res!2564668 (not (is-EmptyLang!16140 r!7292)))))

(assert (=> b!6200314 (=> (not res!2564668) (not e!3775708))))

(declare-fun b!6200315 () Bool)

(declare-fun c!1119251 () Bool)

(assert (=> b!6200315 (= c!1119251 (is-Union!16140 r!7292))))

(assert (=> b!6200315 (= e!3775714 e!3775711)))

(assert (=> b!6200316 (= e!3775710 call!518870)))

(declare-fun b!6200317 () Bool)

(assert (=> b!6200317 (= e!3775711 e!3775710)))

(assert (=> b!6200317 (= c!1119250 (is-Star!16140 r!7292))))

(assert (=> b!6200318 (= e!3775709 call!518870)))

(assert (= (and d!1943684 c!1119253) b!6200308))

(assert (= (and d!1943684 (not c!1119253)) b!6200314))

(assert (= (and b!6200314 res!2564668) b!6200309))

(assert (= (and b!6200309 c!1119252) b!6200310))

(assert (= (and b!6200309 (not c!1119252)) b!6200315))

(assert (= (and b!6200315 c!1119251) b!6200312))

(assert (= (and b!6200315 (not c!1119251)) b!6200317))

(assert (= (and b!6200312 (not res!2564667)) b!6200313))

(assert (= (and b!6200317 c!1119250) b!6200311))

(assert (= (and b!6200317 (not c!1119250)) b!6200316))

(assert (= (and b!6200311 (not res!2564669)) b!6200318))

(assert (= (or b!6200318 b!6200316) bm!518866))

(assert (= (or b!6200308 b!6200311) bm!518865))

(declare-fun m!7033148 () Bool)

(assert (=> bm!518865 m!7033148))

(declare-fun m!7033150 () Bool)

(assert (=> b!6200312 m!7033150))

(declare-fun m!7033152 () Bool)

(assert (=> bm!518866 m!7033152))

(declare-fun m!7033154 () Bool)

(assert (=> b!6200313 m!7033154))

(assert (=> b!6200014 d!1943684))

(declare-fun b!6200376 () Bool)

(declare-fun e!3775752 () Bool)

(declare-fun e!3775756 () Bool)

(assert (=> b!6200376 (= e!3775752 e!3775756)))

(declare-fun c!1119268 () Bool)

(assert (=> b!6200376 (= c!1119268 (is-EmptyLang!16140 r!7292))))

(declare-fun b!6200377 () Bool)

(declare-fun res!2564707 () Bool)

(declare-fun e!3775754 () Bool)

(assert (=> b!6200377 (=> res!2564707 e!3775754)))

(assert (=> b!6200377 (= res!2564707 (not (is-ElementMatch!16140 r!7292)))))

(assert (=> b!6200377 (= e!3775756 e!3775754)))

(declare-fun b!6200378 () Bool)

(declare-fun res!2564701 () Bool)

(declare-fun e!3775753 () Bool)

(assert (=> b!6200378 (=> (not res!2564701) (not e!3775753))))

(assert (=> b!6200378 (= res!2564701 (isEmpty!36593 (tail!11874 s!2326)))))

(declare-fun d!1943694 () Bool)

(assert (=> d!1943694 e!3775752))

(declare-fun c!1119269 () Bool)

(assert (=> d!1943694 (= c!1119269 (is-EmptyExpr!16140 r!7292))))

(declare-fun lt!2342906 () Bool)

(declare-fun e!3775751 () Bool)

(assert (=> d!1943694 (= lt!2342906 e!3775751)))

(declare-fun c!1119267 () Bool)

(assert (=> d!1943694 (= c!1119267 (isEmpty!36593 s!2326))))

(assert (=> d!1943694 (validRegex!7876 r!7292)))

(assert (=> d!1943694 (= (matchR!8323 r!7292 s!2326) lt!2342906)))

(declare-fun b!6200379 () Bool)

(declare-fun call!518883 () Bool)

(assert (=> b!6200379 (= e!3775752 (= lt!2342906 call!518883))))

(declare-fun b!6200380 () Bool)

(declare-fun derivativeStep!4853 (Regex!16140 C!32550) Regex!16140)

(assert (=> b!6200380 (= e!3775751 (matchR!8323 (derivativeStep!4853 r!7292 (head!12789 s!2326)) (tail!11874 s!2326)))))

(declare-fun b!6200381 () Bool)

(declare-fun e!3775755 () Bool)

(assert (=> b!6200381 (= e!3775755 (not (= (head!12789 s!2326) (c!1119187 r!7292))))))

(declare-fun b!6200382 () Bool)

(declare-fun e!3775757 () Bool)

(assert (=> b!6200382 (= e!3775757 e!3775755)))

(declare-fun res!2564703 () Bool)

(assert (=> b!6200382 (=> res!2564703 e!3775755)))

(assert (=> b!6200382 (= res!2564703 call!518883)))

(declare-fun b!6200383 () Bool)

(assert (=> b!6200383 (= e!3775754 e!3775757)))

(declare-fun res!2564705 () Bool)

(assert (=> b!6200383 (=> (not res!2564705) (not e!3775757))))

(assert (=> b!6200383 (= res!2564705 (not lt!2342906))))

(declare-fun b!6200384 () Bool)

(declare-fun res!2564704 () Bool)

(assert (=> b!6200384 (=> res!2564704 e!3775754)))

(assert (=> b!6200384 (= res!2564704 e!3775753)))

(declare-fun res!2564708 () Bool)

(assert (=> b!6200384 (=> (not res!2564708) (not e!3775753))))

(assert (=> b!6200384 (= res!2564708 lt!2342906)))

(declare-fun b!6200385 () Bool)

(assert (=> b!6200385 (= e!3775756 (not lt!2342906))))

(declare-fun b!6200386 () Bool)

(declare-fun res!2564706 () Bool)

(assert (=> b!6200386 (=> res!2564706 e!3775755)))

(assert (=> b!6200386 (= res!2564706 (not (isEmpty!36593 (tail!11874 s!2326))))))

(declare-fun b!6200387 () Bool)

(declare-fun res!2564702 () Bool)

(assert (=> b!6200387 (=> (not res!2564702) (not e!3775753))))

(assert (=> b!6200387 (= res!2564702 (not call!518883))))

(declare-fun b!6200388 () Bool)

(assert (=> b!6200388 (= e!3775753 (= (head!12789 s!2326) (c!1119187 r!7292)))))

(declare-fun b!6200389 () Bool)

(assert (=> b!6200389 (= e!3775751 (nullable!6133 r!7292))))

(declare-fun bm!518878 () Bool)

(assert (=> bm!518878 (= call!518883 (isEmpty!36593 s!2326))))

(assert (= (and d!1943694 c!1119267) b!6200389))

(assert (= (and d!1943694 (not c!1119267)) b!6200380))

(assert (= (and d!1943694 c!1119269) b!6200379))

(assert (= (and d!1943694 (not c!1119269)) b!6200376))

(assert (= (and b!6200376 c!1119268) b!6200385))

(assert (= (and b!6200376 (not c!1119268)) b!6200377))

(assert (= (and b!6200377 (not res!2564707)) b!6200384))

(assert (= (and b!6200384 res!2564708) b!6200387))

(assert (= (and b!6200387 res!2564702) b!6200378))

(assert (= (and b!6200378 res!2564701) b!6200388))

(assert (= (and b!6200384 (not res!2564704)) b!6200383))

(assert (= (and b!6200383 res!2564705) b!6200382))

(assert (= (and b!6200382 (not res!2564703)) b!6200386))

(assert (= (and b!6200386 (not res!2564706)) b!6200381))

(assert (= (or b!6200379 b!6200382 b!6200387) bm!518878))

(declare-fun m!7033156 () Bool)

(assert (=> b!6200381 m!7033156))

(declare-fun m!7033158 () Bool)

(assert (=> b!6200386 m!7033158))

(assert (=> b!6200386 m!7033158))

(declare-fun m!7033160 () Bool)

(assert (=> b!6200386 m!7033160))

(assert (=> b!6200378 m!7033158))

(assert (=> b!6200378 m!7033158))

(assert (=> b!6200378 m!7033160))

(declare-fun m!7033162 () Bool)

(assert (=> b!6200389 m!7033162))

(assert (=> b!6200388 m!7033156))

(assert (=> bm!518878 m!7033148))

(assert (=> d!1943694 m!7033148))

(assert (=> d!1943694 m!7032876))

(assert (=> b!6200380 m!7033156))

(assert (=> b!6200380 m!7033156))

(declare-fun m!7033168 () Bool)

(assert (=> b!6200380 m!7033168))

(assert (=> b!6200380 m!7033158))

(assert (=> b!6200380 m!7033168))

(assert (=> b!6200380 m!7033158))

(declare-fun m!7033172 () Bool)

(assert (=> b!6200380 m!7033172))

(assert (=> b!6200014 d!1943694))

(declare-fun d!1943698 () Bool)

(assert (=> d!1943698 (= (matchR!8323 r!7292 s!2326) (matchRSpec!3241 r!7292 s!2326))))

(declare-fun lt!2342911 () Unit!157891)

(declare-fun choose!46081 (Regex!16140 List!64721) Unit!157891)

(assert (=> d!1943698 (= lt!2342911 (choose!46081 r!7292 s!2326))))

(assert (=> d!1943698 (validRegex!7876 r!7292)))

(assert (=> d!1943698 (= (mainMatchTheorem!3241 r!7292 s!2326) lt!2342911)))

(declare-fun bs!1538407 () Bool)

(assert (= bs!1538407 d!1943698))

(assert (=> bs!1538407 m!7032892))

(assert (=> bs!1538407 m!7032890))

(declare-fun m!7033174 () Bool)

(assert (=> bs!1538407 m!7033174))

(assert (=> bs!1538407 m!7032876))

(assert (=> b!6200014 d!1943698))

(declare-fun d!1943700 () Bool)

(declare-fun lt!2342915 () Regex!16140)

(assert (=> d!1943700 (validRegex!7876 lt!2342915)))

(assert (=> d!1943700 (= lt!2342915 (generalisedUnion!1984 (unfocusZipperList!1561 zl!343)))))

(assert (=> d!1943700 (= (unfocusZipper!1882 zl!343) lt!2342915)))

(declare-fun bs!1538409 () Bool)

(assert (= bs!1538409 d!1943700))

(declare-fun m!7033182 () Bool)

(assert (=> bs!1538409 m!7033182))

(assert (=> bs!1538409 m!7032908))

(assert (=> bs!1538409 m!7032908))

(assert (=> bs!1538409 m!7032910))

(assert (=> b!6200016 d!1943700))

(declare-fun d!1943704 () Bool)

(assert (=> d!1943704 (= (nullable!6133 (h!71043 (exprs!6024 (h!71044 zl!343)))) (nullableFct!2089 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun bs!1538411 () Bool)

(assert (= bs!1538411 d!1943704))

(declare-fun m!7033184 () Bool)

(assert (=> bs!1538411 m!7033184))

(assert (=> b!6200007 d!1943704))

(declare-fun b!6200403 () Bool)

(declare-fun e!3775769 () (Set Context!11048))

(declare-fun e!3775767 () (Set Context!11048))

(assert (=> b!6200403 (= e!3775769 e!3775767)))

(declare-fun c!1119275 () Bool)

(assert (=> b!6200403 (= c!1119275 (is-Cons!64595 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))

(declare-fun d!1943706 () Bool)

(declare-fun c!1119274 () Bool)

(declare-fun e!3775768 () Bool)

(assert (=> d!1943706 (= c!1119274 e!3775768)))

(declare-fun res!2564714 () Bool)

(assert (=> d!1943706 (=> (not res!2564714) (not e!3775768))))

(assert (=> d!1943706 (= res!2564714 (is-Cons!64595 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))

(assert (=> d!1943706 (= (derivationStepZipperUp!1314 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))) (h!71045 s!2326)) e!3775769)))

(declare-fun bm!518881 () Bool)

(declare-fun call!518886 () (Set Context!11048))

(assert (=> bm!518881 (= call!518886 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326)))))

(declare-fun b!6200404 () Bool)

(assert (=> b!6200404 (= e!3775767 call!518886)))

(declare-fun b!6200405 () Bool)

(assert (=> b!6200405 (= e!3775769 (set.union call!518886 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326))))))

(declare-fun b!6200406 () Bool)

(assert (=> b!6200406 (= e!3775767 (as set.empty (Set Context!11048)))))

(declare-fun b!6200407 () Bool)

(assert (=> b!6200407 (= e!3775768 (nullable!6133 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(assert (= (and d!1943706 res!2564714) b!6200407))

(assert (= (and d!1943706 c!1119274) b!6200405))

(assert (= (and d!1943706 (not c!1119274)) b!6200403))

(assert (= (and b!6200403 c!1119275) b!6200404))

(assert (= (and b!6200403 (not c!1119275)) b!6200406))

(assert (= (or b!6200405 b!6200404) bm!518881))

(declare-fun m!7033188 () Bool)

(assert (=> bm!518881 m!7033188))

(declare-fun m!7033190 () Bool)

(assert (=> b!6200405 m!7033190))

(declare-fun m!7033192 () Bool)

(assert (=> b!6200407 m!7033192))

(assert (=> b!6200007 d!1943706))

(declare-fun b!6200408 () Bool)

(declare-fun e!3775772 () (Set Context!11048))

(declare-fun e!3775770 () (Set Context!11048))

(assert (=> b!6200408 (= e!3775772 e!3775770)))

(declare-fun c!1119277 () Bool)

(assert (=> b!6200408 (= c!1119277 (is-Cons!64595 (exprs!6024 lt!2342828)))))

(declare-fun d!1943710 () Bool)

(declare-fun c!1119276 () Bool)

(declare-fun e!3775771 () Bool)

(assert (=> d!1943710 (= c!1119276 e!3775771)))

(declare-fun res!2564715 () Bool)

(assert (=> d!1943710 (=> (not res!2564715) (not e!3775771))))

(assert (=> d!1943710 (= res!2564715 (is-Cons!64595 (exprs!6024 lt!2342828)))))

(assert (=> d!1943710 (= (derivationStepZipperUp!1314 lt!2342828 (h!71045 s!2326)) e!3775772)))

(declare-fun bm!518882 () Bool)

(declare-fun call!518887 () (Set Context!11048))

(assert (=> bm!518882 (= call!518887 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 lt!2342828)) (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (h!71045 s!2326)))))

(declare-fun b!6200409 () Bool)

(assert (=> b!6200409 (= e!3775770 call!518887)))

(declare-fun b!6200410 () Bool)

(assert (=> b!6200410 (= e!3775772 (set.union call!518887 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (h!71045 s!2326))))))

(declare-fun b!6200411 () Bool)

(assert (=> b!6200411 (= e!3775770 (as set.empty (Set Context!11048)))))

(declare-fun b!6200412 () Bool)

(assert (=> b!6200412 (= e!3775771 (nullable!6133 (h!71043 (exprs!6024 lt!2342828))))))

(assert (= (and d!1943710 res!2564715) b!6200412))

(assert (= (and d!1943710 c!1119276) b!6200410))

(assert (= (and d!1943710 (not c!1119276)) b!6200408))

(assert (= (and b!6200408 c!1119277) b!6200409))

(assert (= (and b!6200408 (not c!1119277)) b!6200411))

(assert (= (or b!6200410 b!6200409) bm!518882))

(declare-fun m!7033194 () Bool)

(assert (=> bm!518882 m!7033194))

(declare-fun m!7033196 () Bool)

(assert (=> b!6200410 m!7033196))

(declare-fun m!7033198 () Bool)

(assert (=> b!6200412 m!7033198))

(assert (=> b!6200007 d!1943710))

(declare-fun d!1943712 () Bool)

(declare-fun choose!46082 ((Set Context!11048) Int) (Set Context!11048))

(assert (=> d!1943712 (= (flatMap!1645 z!1189 lambda!338756) (choose!46082 z!1189 lambda!338756))))

(declare-fun bs!1538413 () Bool)

(assert (= bs!1538413 d!1943712))

(declare-fun m!7033200 () Bool)

(assert (=> bs!1538413 m!7033200))

(assert (=> b!6200007 d!1943712))

(declare-fun b!6200463 () Bool)

(declare-fun e!3775803 () (Set Context!11048))

(declare-fun call!518904 () (Set Context!11048))

(assert (=> b!6200463 (= e!3775803 call!518904)))

(declare-fun b!6200464 () Bool)

(declare-fun e!3775801 () (Set Context!11048))

(assert (=> b!6200464 (= e!3775801 e!3775803)))

(declare-fun c!1119297 () Bool)

(assert (=> b!6200464 (= c!1119297 (is-Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun call!518900 () (Set Context!11048))

(declare-fun c!1119298 () Bool)

(declare-fun bm!518895 () Bool)

(declare-fun call!518902 () List!64719)

(assert (=> bm!518895 (= call!518900 (derivationStepZipperDown!1388 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))) (ite c!1119298 lt!2342828 (Context!11049 call!518902)) (h!71045 s!2326)))))

(declare-fun b!6200465 () Bool)

(declare-fun e!3775805 () (Set Context!11048))

(assert (=> b!6200465 (= e!3775805 call!518904)))

(declare-fun bm!518896 () Bool)

(declare-fun call!518905 () (Set Context!11048))

(declare-fun call!518901 () (Set Context!11048))

(assert (=> bm!518896 (= call!518905 call!518901)))

(declare-fun c!1119300 () Bool)

(declare-fun bm!518897 () Bool)

(declare-fun $colon$colon!2009 (List!64719 Regex!16140) List!64719)

(assert (=> bm!518897 (= call!518902 ($colon$colon!2009 (exprs!6024 lt!2342828) (ite (or c!1119300 c!1119297) (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71043 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun b!6200466 () Bool)

(assert (=> b!6200466 (= e!3775801 (set.union call!518900 call!518905))))

(declare-fun d!1943714 () Bool)

(declare-fun c!1119299 () Bool)

(assert (=> d!1943714 (= c!1119299 (and (is-ElementMatch!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))) (= (c!1119187 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326))))))

(declare-fun e!3775806 () (Set Context!11048))

(assert (=> d!1943714 (= (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (h!71044 zl!343))) lt!2342828 (h!71045 s!2326)) e!3775806)))

(declare-fun b!6200467 () Bool)

(declare-fun e!3775802 () (Set Context!11048))

(assert (=> b!6200467 (= e!3775802 (set.union call!518900 call!518901))))

(declare-fun b!6200468 () Bool)

(assert (=> b!6200468 (= e!3775805 (as set.empty (Set Context!11048)))))

(declare-fun b!6200469 () Bool)

(assert (=> b!6200469 (= e!3775806 e!3775802)))

(assert (=> b!6200469 (= c!1119298 (is-Union!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200470 () Bool)

(declare-fun c!1119296 () Bool)

(assert (=> b!6200470 (= c!1119296 (is-Star!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200470 (= e!3775803 e!3775805)))

(declare-fun bm!518898 () Bool)

(declare-fun call!518903 () List!64719)

(assert (=> bm!518898 (= call!518903 call!518902)))

(declare-fun bm!518899 () Bool)

(assert (=> bm!518899 (= call!518901 (derivationStepZipperDown!1388 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))) (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903)) (h!71045 s!2326)))))

(declare-fun bm!518900 () Bool)

(assert (=> bm!518900 (= call!518904 call!518905)))

(declare-fun b!6200471 () Bool)

(assert (=> b!6200471 (= e!3775806 (set.insert lt!2342828 (as set.empty (Set Context!11048))))))

(declare-fun b!6200472 () Bool)

(declare-fun e!3775804 () Bool)

(assert (=> b!6200472 (= c!1119300 e!3775804)))

(declare-fun res!2564730 () Bool)

(assert (=> b!6200472 (=> (not res!2564730) (not e!3775804))))

(assert (=> b!6200472 (= res!2564730 (is-Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200472 (= e!3775802 e!3775801)))

(declare-fun b!6200473 () Bool)

(assert (=> b!6200473 (= e!3775804 (nullable!6133 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))

(assert (= (and d!1943714 c!1119299) b!6200471))

(assert (= (and d!1943714 (not c!1119299)) b!6200469))

(assert (= (and b!6200469 c!1119298) b!6200467))

(assert (= (and b!6200469 (not c!1119298)) b!6200472))

(assert (= (and b!6200472 res!2564730) b!6200473))

(assert (= (and b!6200472 c!1119300) b!6200466))

(assert (= (and b!6200472 (not c!1119300)) b!6200464))

(assert (= (and b!6200464 c!1119297) b!6200463))

(assert (= (and b!6200464 (not c!1119297)) b!6200470))

(assert (= (and b!6200470 c!1119296) b!6200465))

(assert (= (and b!6200470 (not c!1119296)) b!6200468))

(assert (= (or b!6200463 b!6200465) bm!518898))

(assert (= (or b!6200463 b!6200465) bm!518900))

(assert (= (or b!6200466 bm!518898) bm!518897))

(assert (= (or b!6200466 bm!518900) bm!518896))

(assert (= (or b!6200467 bm!518896) bm!518899))

(assert (= (or b!6200467 b!6200466) bm!518895))

(declare-fun m!7033202 () Bool)

(assert (=> b!6200471 m!7033202))

(declare-fun m!7033204 () Bool)

(assert (=> bm!518895 m!7033204))

(declare-fun m!7033206 () Bool)

(assert (=> b!6200473 m!7033206))

(declare-fun m!7033208 () Bool)

(assert (=> bm!518897 m!7033208))

(declare-fun m!7033210 () Bool)

(assert (=> bm!518899 m!7033210))

(assert (=> b!6200007 d!1943714))

(declare-fun d!1943716 () Bool)

(declare-fun dynLambda!25474 (Int Context!11048) (Set Context!11048))

(assert (=> d!1943716 (= (flatMap!1645 z!1189 lambda!338756) (dynLambda!25474 lambda!338756 (h!71044 zl!343)))))

(declare-fun lt!2342918 () Unit!157891)

(declare-fun choose!46083 ((Set Context!11048) Context!11048 Int) Unit!157891)

(assert (=> d!1943716 (= lt!2342918 (choose!46083 z!1189 (h!71044 zl!343) lambda!338756))))

(assert (=> d!1943716 (= z!1189 (set.insert (h!71044 zl!343) (as set.empty (Set Context!11048))))))

(assert (=> d!1943716 (= (lemmaFlatMapOnSingletonSet!1171 z!1189 (h!71044 zl!343) lambda!338756) lt!2342918)))

(declare-fun b_lambda!235829 () Bool)

(assert (=> (not b_lambda!235829) (not d!1943716)))

(declare-fun bs!1538414 () Bool)

(assert (= bs!1538414 d!1943716))

(assert (=> bs!1538414 m!7032920))

(declare-fun m!7033212 () Bool)

(assert (=> bs!1538414 m!7033212))

(declare-fun m!7033214 () Bool)

(assert (=> bs!1538414 m!7033214))

(declare-fun m!7033216 () Bool)

(assert (=> bs!1538414 m!7033216))

(assert (=> b!6200007 d!1943716))

(declare-fun b!6200478 () Bool)

(declare-fun e!3775811 () (Set Context!11048))

(declare-fun e!3775809 () (Set Context!11048))

(assert (=> b!6200478 (= e!3775811 e!3775809)))

(declare-fun c!1119302 () Bool)

(assert (=> b!6200478 (= c!1119302 (is-Cons!64595 (exprs!6024 (h!71044 zl!343))))))

(declare-fun d!1943718 () Bool)

(declare-fun c!1119301 () Bool)

(declare-fun e!3775810 () Bool)

(assert (=> d!1943718 (= c!1119301 e!3775810)))

(declare-fun res!2564735 () Bool)

(assert (=> d!1943718 (=> (not res!2564735) (not e!3775810))))

(assert (=> d!1943718 (= res!2564735 (is-Cons!64595 (exprs!6024 (h!71044 zl!343))))))

(assert (=> d!1943718 (= (derivationStepZipperUp!1314 (h!71044 zl!343) (h!71045 s!2326)) e!3775811)))

(declare-fun bm!518903 () Bool)

(declare-fun call!518908 () (Set Context!11048))

(assert (=> bm!518903 (= call!518908 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (h!71044 zl!343))) (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326)))))

(declare-fun b!6200479 () Bool)

(assert (=> b!6200479 (= e!3775809 call!518908)))

(declare-fun b!6200480 () Bool)

(assert (=> b!6200480 (= e!3775811 (set.union call!518908 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326))))))

(declare-fun b!6200481 () Bool)

(assert (=> b!6200481 (= e!3775809 (as set.empty (Set Context!11048)))))

(declare-fun b!6200482 () Bool)

(assert (=> b!6200482 (= e!3775810 (nullable!6133 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (= (and d!1943718 res!2564735) b!6200482))

(assert (= (and d!1943718 c!1119301) b!6200480))

(assert (= (and d!1943718 (not c!1119301)) b!6200478))

(assert (= (and b!6200478 c!1119302) b!6200479))

(assert (= (and b!6200478 (not c!1119302)) b!6200481))

(assert (= (or b!6200480 b!6200479) bm!518903))

(declare-fun m!7033218 () Bool)

(assert (=> bm!518903 m!7033218))

(declare-fun m!7033220 () Bool)

(assert (=> b!6200480 m!7033220))

(assert (=> b!6200482 m!7032922))

(assert (=> b!6200007 d!1943718))

(declare-fun bs!1538416 () Bool)

(declare-fun d!1943720 () Bool)

(assert (= bs!1538416 (and d!1943720 d!1943642)))

(declare-fun lambda!338808 () Int)

(assert (=> bs!1538416 (= lambda!338808 lambda!338770)))

(declare-fun bs!1538417 () Bool)

(assert (= bs!1538417 (and d!1943720 d!1943646)))

(assert (=> bs!1538417 (= lambda!338808 lambda!338776)))

(declare-fun bs!1538418 () Bool)

(assert (= bs!1538418 (and d!1943720 d!1943668)))

(assert (=> bs!1538418 (= lambda!338808 lambda!338789)))

(declare-fun bs!1538419 () Bool)

(assert (= bs!1538419 (and d!1943720 d!1943666)))

(assert (=> bs!1538419 (= lambda!338808 lambda!338788)))

(declare-fun bs!1538420 () Bool)

(assert (= bs!1538420 (and d!1943720 d!1943644)))

(assert (=> bs!1538420 (= lambda!338808 lambda!338773)))

(declare-fun b!6200514 () Bool)

(declare-fun e!3775831 () Regex!16140)

(assert (=> b!6200514 (= e!3775831 (h!71043 (exprs!6024 (h!71044 zl!343))))))

(declare-fun b!6200515 () Bool)

(declare-fun e!3775834 () Regex!16140)

(assert (=> b!6200515 (= e!3775834 (Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343))) (generalisedConcat!1737 (t!378235 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun b!6200516 () Bool)

(assert (=> b!6200516 (= e!3775831 e!3775834)))

(declare-fun c!1119317 () Bool)

(assert (=> b!6200516 (= c!1119317 (is-Cons!64595 (exprs!6024 (h!71044 zl!343))))))

(declare-fun b!6200517 () Bool)

(declare-fun e!3775836 () Bool)

(declare-fun lt!2342921 () Regex!16140)

(assert (=> b!6200517 (= e!3775836 (= lt!2342921 (head!12788 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200518 () Bool)

(declare-fun e!3775832 () Bool)

(declare-fun e!3775835 () Bool)

(assert (=> b!6200518 (= e!3775832 e!3775835)))

(declare-fun c!1119318 () Bool)

(assert (=> b!6200518 (= c!1119318 (isEmpty!36589 (exprs!6024 (h!71044 zl!343))))))

(declare-fun b!6200519 () Bool)

(declare-fun isEmptyExpr!1550 (Regex!16140) Bool)

(assert (=> b!6200519 (= e!3775835 (isEmptyExpr!1550 lt!2342921))))

(declare-fun b!6200520 () Bool)

(assert (=> b!6200520 (= e!3775834 EmptyExpr!16140)))

(declare-fun b!6200522 () Bool)

(assert (=> b!6200522 (= e!3775835 e!3775836)))

(declare-fun c!1119316 () Bool)

(assert (=> b!6200522 (= c!1119316 (isEmpty!36589 (tail!11873 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200523 () Bool)

(declare-fun e!3775833 () Bool)

(assert (=> b!6200523 (= e!3775833 (isEmpty!36589 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> d!1943720 e!3775832))

(declare-fun res!2564743 () Bool)

(assert (=> d!1943720 (=> (not res!2564743) (not e!3775832))))

(assert (=> d!1943720 (= res!2564743 (validRegex!7876 lt!2342921))))

(assert (=> d!1943720 (= lt!2342921 e!3775831)))

(declare-fun c!1119315 () Bool)

(assert (=> d!1943720 (= c!1119315 e!3775833)))

(declare-fun res!2564744 () Bool)

(assert (=> d!1943720 (=> (not res!2564744) (not e!3775833))))

(assert (=> d!1943720 (= res!2564744 (is-Cons!64595 (exprs!6024 (h!71044 zl!343))))))

(assert (=> d!1943720 (forall!15254 (exprs!6024 (h!71044 zl!343)) lambda!338808)))

(assert (=> d!1943720 (= (generalisedConcat!1737 (exprs!6024 (h!71044 zl!343))) lt!2342921)))

(declare-fun b!6200521 () Bool)

(declare-fun isConcat!1073 (Regex!16140) Bool)

(assert (=> b!6200521 (= e!3775836 (isConcat!1073 lt!2342921))))

(assert (= (and d!1943720 res!2564744) b!6200523))

(assert (= (and d!1943720 c!1119315) b!6200514))

(assert (= (and d!1943720 (not c!1119315)) b!6200516))

(assert (= (and b!6200516 c!1119317) b!6200515))

(assert (= (and b!6200516 (not c!1119317)) b!6200520))

(assert (= (and d!1943720 res!2564743) b!6200518))

(assert (= (and b!6200518 c!1119318) b!6200519))

(assert (= (and b!6200518 (not c!1119318)) b!6200522))

(assert (= (and b!6200522 c!1119316) b!6200517))

(assert (= (and b!6200522 (not c!1119316)) b!6200521))

(declare-fun m!7033222 () Bool)

(assert (=> b!6200522 m!7033222))

(assert (=> b!6200522 m!7033222))

(declare-fun m!7033224 () Bool)

(assert (=> b!6200522 m!7033224))

(declare-fun m!7033226 () Bool)

(assert (=> b!6200515 m!7033226))

(declare-fun m!7033228 () Bool)

(assert (=> b!6200517 m!7033228))

(declare-fun m!7033230 () Bool)

(assert (=> b!6200518 m!7033230))

(declare-fun m!7033232 () Bool)

(assert (=> b!6200519 m!7033232))

(declare-fun m!7033234 () Bool)

(assert (=> d!1943720 m!7033234))

(declare-fun m!7033236 () Bool)

(assert (=> d!1943720 m!7033236))

(declare-fun m!7033238 () Bool)

(assert (=> b!6200521 m!7033238))

(assert (=> b!6200523 m!7032932))

(assert (=> b!6200006 d!1943720))

(declare-fun b!6200528 () Bool)

(declare-fun e!3775839 () Bool)

(declare-fun tp!1729311 () Bool)

(declare-fun tp!1729312 () Bool)

(assert (=> b!6200528 (= e!3775839 (and tp!1729311 tp!1729312))))

(assert (=> b!6200003 (= tp!1729275 e!3775839)))

(assert (= (and b!6200003 (is-Cons!64595 (exprs!6024 setElem!42081))) b!6200528))

(declare-fun e!3775842 () Bool)

(assert (=> b!6200001 (= tp!1729274 e!3775842)))

(declare-fun b!6200540 () Bool)

(declare-fun tp!1729327 () Bool)

(declare-fun tp!1729323 () Bool)

(assert (=> b!6200540 (= e!3775842 (and tp!1729327 tp!1729323))))

(declare-fun b!6200541 () Bool)

(declare-fun tp!1729326 () Bool)

(assert (=> b!6200541 (= e!3775842 tp!1729326)))

(declare-fun b!6200539 () Bool)

(assert (=> b!6200539 (= e!3775842 tp_is_empty!41533)))

(declare-fun b!6200542 () Bool)

(declare-fun tp!1729324 () Bool)

(declare-fun tp!1729325 () Bool)

(assert (=> b!6200542 (= e!3775842 (and tp!1729324 tp!1729325))))

(assert (= (and b!6200001 (is-ElementMatch!16140 (reg!16469 r!7292))) b!6200539))

(assert (= (and b!6200001 (is-Concat!24985 (reg!16469 r!7292))) b!6200540))

(assert (= (and b!6200001 (is-Star!16140 (reg!16469 r!7292))) b!6200541))

(assert (= (and b!6200001 (is-Union!16140 (reg!16469 r!7292))) b!6200542))

(declare-fun e!3775843 () Bool)

(assert (=> b!6200005 (= tp!1729272 e!3775843)))

(declare-fun b!6200544 () Bool)

(declare-fun tp!1729332 () Bool)

(declare-fun tp!1729328 () Bool)

(assert (=> b!6200544 (= e!3775843 (and tp!1729332 tp!1729328))))

(declare-fun b!6200545 () Bool)

(declare-fun tp!1729331 () Bool)

(assert (=> b!6200545 (= e!3775843 tp!1729331)))

(declare-fun b!6200543 () Bool)

(assert (=> b!6200543 (= e!3775843 tp_is_empty!41533)))

(declare-fun b!6200546 () Bool)

(declare-fun tp!1729329 () Bool)

(declare-fun tp!1729330 () Bool)

(assert (=> b!6200546 (= e!3775843 (and tp!1729329 tp!1729330))))

(assert (= (and b!6200005 (is-ElementMatch!16140 (regOne!32793 r!7292))) b!6200543))

(assert (= (and b!6200005 (is-Concat!24985 (regOne!32793 r!7292))) b!6200544))

(assert (= (and b!6200005 (is-Star!16140 (regOne!32793 r!7292))) b!6200545))

(assert (= (and b!6200005 (is-Union!16140 (regOne!32793 r!7292))) b!6200546))

(declare-fun e!3775844 () Bool)

(assert (=> b!6200005 (= tp!1729273 e!3775844)))

(declare-fun b!6200548 () Bool)

(declare-fun tp!1729337 () Bool)

(declare-fun tp!1729333 () Bool)

(assert (=> b!6200548 (= e!3775844 (and tp!1729337 tp!1729333))))

(declare-fun b!6200549 () Bool)

(declare-fun tp!1729336 () Bool)

(assert (=> b!6200549 (= e!3775844 tp!1729336)))

(declare-fun b!6200547 () Bool)

(assert (=> b!6200547 (= e!3775844 tp_is_empty!41533)))

(declare-fun b!6200550 () Bool)

(declare-fun tp!1729334 () Bool)

(declare-fun tp!1729335 () Bool)

(assert (=> b!6200550 (= e!3775844 (and tp!1729334 tp!1729335))))

(assert (= (and b!6200005 (is-ElementMatch!16140 (regTwo!32793 r!7292))) b!6200547))

(assert (= (and b!6200005 (is-Concat!24985 (regTwo!32793 r!7292))) b!6200548))

(assert (= (and b!6200005 (is-Star!16140 (regTwo!32793 r!7292))) b!6200549))

(assert (= (and b!6200005 (is-Union!16140 (regTwo!32793 r!7292))) b!6200550))

(declare-fun condSetEmpty!42087 () Bool)

(assert (=> setNonEmpty!42081 (= condSetEmpty!42087 (= setRest!42081 (as set.empty (Set Context!11048))))))

(declare-fun setRes!42087 () Bool)

(assert (=> setNonEmpty!42081 (= tp!1729269 setRes!42087)))

(declare-fun setIsEmpty!42087 () Bool)

(assert (=> setIsEmpty!42087 setRes!42087))

(declare-fun tp!1729343 () Bool)

(declare-fun setNonEmpty!42087 () Bool)

(declare-fun e!3775847 () Bool)

(declare-fun setElem!42087 () Context!11048)

(assert (=> setNonEmpty!42087 (= setRes!42087 (and tp!1729343 (inv!83598 setElem!42087) e!3775847))))

(declare-fun setRest!42087 () (Set Context!11048))

(assert (=> setNonEmpty!42087 (= setRest!42081 (set.union (set.insert setElem!42087 (as set.empty (Set Context!11048))) setRest!42087))))

(declare-fun b!6200555 () Bool)

(declare-fun tp!1729342 () Bool)

(assert (=> b!6200555 (= e!3775847 tp!1729342)))

(assert (= (and setNonEmpty!42081 condSetEmpty!42087) setIsEmpty!42087))

(assert (= (and setNonEmpty!42081 (not condSetEmpty!42087)) setNonEmpty!42087))

(assert (= setNonEmpty!42087 b!6200555))

(declare-fun m!7033248 () Bool)

(assert (=> setNonEmpty!42087 m!7033248))

(declare-fun b!6200563 () Bool)

(declare-fun e!3775853 () Bool)

(declare-fun tp!1729348 () Bool)

(assert (=> b!6200563 (= e!3775853 tp!1729348)))

(declare-fun e!3775852 () Bool)

(declare-fun b!6200562 () Bool)

(declare-fun tp!1729349 () Bool)

(assert (=> b!6200562 (= e!3775852 (and (inv!83598 (h!71044 (t!378236 zl!343))) e!3775853 tp!1729349))))

(assert (=> b!6200021 (= tp!1729270 e!3775852)))

(assert (= b!6200562 b!6200563))

(assert (= (and b!6200021 (is-Cons!64596 (t!378236 zl!343))) b!6200562))

(declare-fun m!7033250 () Bool)

(assert (=> b!6200562 m!7033250))

(declare-fun e!3775854 () Bool)

(assert (=> b!6200012 (= tp!1729276 e!3775854)))

(declare-fun b!6200565 () Bool)

(declare-fun tp!1729354 () Bool)

(declare-fun tp!1729350 () Bool)

(assert (=> b!6200565 (= e!3775854 (and tp!1729354 tp!1729350))))

(declare-fun b!6200566 () Bool)

(declare-fun tp!1729353 () Bool)

(assert (=> b!6200566 (= e!3775854 tp!1729353)))

(declare-fun b!6200564 () Bool)

(assert (=> b!6200564 (= e!3775854 tp_is_empty!41533)))

(declare-fun b!6200567 () Bool)

(declare-fun tp!1729351 () Bool)

(declare-fun tp!1729352 () Bool)

(assert (=> b!6200567 (= e!3775854 (and tp!1729351 tp!1729352))))

(assert (= (and b!6200012 (is-ElementMatch!16140 (regOne!32792 r!7292))) b!6200564))

(assert (= (and b!6200012 (is-Concat!24985 (regOne!32792 r!7292))) b!6200565))

(assert (= (and b!6200012 (is-Star!16140 (regOne!32792 r!7292))) b!6200566))

(assert (= (and b!6200012 (is-Union!16140 (regOne!32792 r!7292))) b!6200567))

(declare-fun e!3775855 () Bool)

(assert (=> b!6200012 (= tp!1729268 e!3775855)))

(declare-fun b!6200569 () Bool)

(declare-fun tp!1729359 () Bool)

(declare-fun tp!1729355 () Bool)

(assert (=> b!6200569 (= e!3775855 (and tp!1729359 tp!1729355))))

(declare-fun b!6200570 () Bool)

(declare-fun tp!1729358 () Bool)

(assert (=> b!6200570 (= e!3775855 tp!1729358)))

(declare-fun b!6200568 () Bool)

(assert (=> b!6200568 (= e!3775855 tp_is_empty!41533)))

(declare-fun b!6200571 () Bool)

(declare-fun tp!1729356 () Bool)

(declare-fun tp!1729357 () Bool)

(assert (=> b!6200571 (= e!3775855 (and tp!1729356 tp!1729357))))

(assert (= (and b!6200012 (is-ElementMatch!16140 (regTwo!32792 r!7292))) b!6200568))

(assert (= (and b!6200012 (is-Concat!24985 (regTwo!32792 r!7292))) b!6200569))

(assert (= (and b!6200012 (is-Star!16140 (regTwo!32792 r!7292))) b!6200570))

(assert (= (and b!6200012 (is-Union!16140 (regTwo!32792 r!7292))) b!6200571))

(declare-fun b!6200576 () Bool)

(declare-fun e!3775858 () Bool)

(declare-fun tp!1729362 () Bool)

(assert (=> b!6200576 (= e!3775858 (and tp_is_empty!41533 tp!1729362))))

(assert (=> b!6200002 (= tp!1729271 e!3775858)))

(assert (= (and b!6200002 (is-Cons!64597 (t!378237 s!2326))) b!6200576))

(declare-fun b!6200577 () Bool)

(declare-fun e!3775859 () Bool)

(declare-fun tp!1729363 () Bool)

(declare-fun tp!1729364 () Bool)

(assert (=> b!6200577 (= e!3775859 (and tp!1729363 tp!1729364))))

(assert (=> b!6200022 (= tp!1729267 e!3775859)))

(assert (= (and b!6200022 (is-Cons!64595 (exprs!6024 (h!71044 zl!343)))) b!6200577))

(declare-fun b_lambda!235831 () Bool)

(assert (= b_lambda!235829 (or b!6200007 b_lambda!235831)))

(declare-fun bs!1538423 () Bool)

(declare-fun d!1943724 () Bool)

(assert (= bs!1538423 (and d!1943724 b!6200007)))

(assert (=> bs!1538423 (= (dynLambda!25474 lambda!338756 (h!71044 zl!343)) (derivationStepZipperUp!1314 (h!71044 zl!343) (h!71045 s!2326)))))

(assert (=> bs!1538423 m!7032916))

(assert (=> d!1943716 d!1943724))

(push 1)

(assert (not d!1943700))

(assert (not b!6200263))

(assert (not b!6200262))

(assert (not d!1943680))

(assert (not b!6200121))

(assert (not bm!518899))

(assert (not b!6200545))

(assert (not b!6200522))

(assert (not b!6200405))

(assert (not bm!518860))

(assert (not b!6200265))

(assert (not b!6200562))

(assert (not d!1943694))

(assert (not d!1943640))

(assert (not d!1943656))

(assert (not b!6200258))

(assert (not b!6200540))

(assert (not bm!518881))

(assert (not b!6200259))

(assert (not bm!518866))

(assert (not b!6200541))

(assert (not b!6200266))

(assert (not d!1943666))

(assert (not b!6200178))

(assert (not b!6200567))

(assert (not b!6200389))

(assert (not b!6200143))

(assert (not b!6200142))

(assert (not b!6200210))

(assert (not b!6200576))

(assert (not b!6200515))

(assert (not b!6200566))

(assert (not b!6200149))

(assert (not d!1943698))

(assert (not b!6200563))

(assert (not d!1943642))

(assert (not bm!518865))

(assert (not b!6200388))

(assert (not d!1943676))

(assert (not b!6200570))

(assert (not b!6200542))

(assert (not b!6200571))

(assert (not b!6200208))

(assert (not bm!518858))

(assert (not d!1943650))

(assert (not bs!1538423))

(assert (not d!1943720))

(assert (not d!1943652))

(assert (not d!1943668))

(assert (not bm!518903))

(assert (not d!1943670))

(assert (not b!6200156))

(assert (not b!6200412))

(assert (not bm!518897))

(assert (not b!6200546))

(assert (not b!6200312))

(assert (not d!1943654))

(assert (not b!6200482))

(assert (not b!6200410))

(assert (not b!6200407))

(assert (not b!6200473))

(assert (not b!6200518))

(assert (not b!6200523))

(assert (not d!1943644))

(assert (not b!6200555))

(assert (not b!6200550))

(assert (not b!6200480))

(assert (not b!6200378))

(assert (not b!6200381))

(assert (not bm!518895))

(assert (not b!6200209))

(assert (not b!6200264))

(assert (not b!6200517))

(assert (not d!1943660))

(assert (not b!6200544))

(assert (not d!1943716))

(assert (not b!6200203))

(assert (not b!6200313))

(assert (not setNonEmpty!42087))

(assert (not d!1943712))

(assert (not b!6200205))

(assert (not b!6200577))

(assert (not b!6200565))

(assert (not b!6200386))

(assert (not b!6200151))

(assert (not b!6200145))

(assert (not bm!518882))

(assert (not b!6200148))

(assert (not b!6200519))

(assert (not b_lambda!235831))

(assert (not b!6200549))

(assert tp_is_empty!41533)

(assert (not b!6200548))

(assert (not d!1943646))

(assert (not d!1943664))

(assert (not b!6200211))

(assert (not d!1943704))

(assert (not d!1943682))

(assert (not b!6200528))

(assert (not d!1943662))

(assert (not bm!518878))

(assert (not b!6200147))

(assert (not b!6200380))

(assert (not b!6200521))

(assert (not b!6200569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1943770 () Bool)

(assert (=> d!1943770 (= (isEmpty!36593 (t!378237 s!2326)) (is-Nil!64597 (t!378237 s!2326)))))

(assert (=> d!1943670 d!1943770))

(assert (=> d!1943716 d!1943712))

(declare-fun d!1943772 () Bool)

(assert (=> d!1943772 (= (flatMap!1645 z!1189 lambda!338756) (dynLambda!25474 lambda!338756 (h!71044 zl!343)))))

(assert (=> d!1943772 true))

(declare-fun _$13!3203 () Unit!157891)

(assert (=> d!1943772 (= (choose!46083 z!1189 (h!71044 zl!343) lambda!338756) _$13!3203)))

(declare-fun b_lambda!235837 () Bool)

(assert (=> (not b_lambda!235837) (not d!1943772)))

(declare-fun bs!1538456 () Bool)

(assert (= bs!1538456 d!1943772))

(assert (=> bs!1538456 m!7032920))

(assert (=> bs!1538456 m!7033212))

(assert (=> d!1943716 d!1943772))

(assert (=> bs!1538423 d!1943718))

(declare-fun d!1943774 () Bool)

(assert (=> d!1943774 (= (isEmpty!36593 s!2326) (is-Nil!64597 s!2326))))

(assert (=> bm!518865 d!1943774))

(declare-fun b!6200809 () Bool)

(declare-fun e!3775981 () Bool)

(declare-fun e!3775985 () Bool)

(assert (=> b!6200809 (= e!3775981 e!3775985)))

(declare-fun c!1119376 () Bool)

(assert (=> b!6200809 (= c!1119376 (is-EmptyLang!16140 (regTwo!32792 r!7292)))))

(declare-fun b!6200810 () Bool)

(declare-fun res!2564816 () Bool)

(declare-fun e!3775983 () Bool)

(assert (=> b!6200810 (=> res!2564816 e!3775983)))

(assert (=> b!6200810 (= res!2564816 (not (is-ElementMatch!16140 (regTwo!32792 r!7292))))))

(assert (=> b!6200810 (= e!3775985 e!3775983)))

(declare-fun b!6200811 () Bool)

(declare-fun res!2564810 () Bool)

(declare-fun e!3775982 () Bool)

(assert (=> b!6200811 (=> (not res!2564810) (not e!3775982))))

(assert (=> b!6200811 (= res!2564810 (isEmpty!36593 (tail!11874 (_2!36422 (get!22304 lt!2342886)))))))

(declare-fun d!1943776 () Bool)

(assert (=> d!1943776 e!3775981))

(declare-fun c!1119377 () Bool)

(assert (=> d!1943776 (= c!1119377 (is-EmptyExpr!16140 (regTwo!32792 r!7292)))))

(declare-fun lt!2342955 () Bool)

(declare-fun e!3775980 () Bool)

(assert (=> d!1943776 (= lt!2342955 e!3775980)))

(declare-fun c!1119375 () Bool)

(assert (=> d!1943776 (= c!1119375 (isEmpty!36593 (_2!36422 (get!22304 lt!2342886))))))

(assert (=> d!1943776 (validRegex!7876 (regTwo!32792 r!7292))))

(assert (=> d!1943776 (= (matchR!8323 (regTwo!32792 r!7292) (_2!36422 (get!22304 lt!2342886))) lt!2342955)))

(declare-fun b!6200812 () Bool)

(declare-fun call!518939 () Bool)

(assert (=> b!6200812 (= e!3775981 (= lt!2342955 call!518939))))

(declare-fun b!6200813 () Bool)

(assert (=> b!6200813 (= e!3775980 (matchR!8323 (derivativeStep!4853 (regTwo!32792 r!7292) (head!12789 (_2!36422 (get!22304 lt!2342886)))) (tail!11874 (_2!36422 (get!22304 lt!2342886)))))))

(declare-fun b!6200814 () Bool)

(declare-fun e!3775984 () Bool)

(assert (=> b!6200814 (= e!3775984 (not (= (head!12789 (_2!36422 (get!22304 lt!2342886))) (c!1119187 (regTwo!32792 r!7292)))))))

(declare-fun b!6200815 () Bool)

(declare-fun e!3775986 () Bool)

(assert (=> b!6200815 (= e!3775986 e!3775984)))

(declare-fun res!2564812 () Bool)

(assert (=> b!6200815 (=> res!2564812 e!3775984)))

(assert (=> b!6200815 (= res!2564812 call!518939)))

(declare-fun b!6200816 () Bool)

(assert (=> b!6200816 (= e!3775983 e!3775986)))

(declare-fun res!2564814 () Bool)

(assert (=> b!6200816 (=> (not res!2564814) (not e!3775986))))

(assert (=> b!6200816 (= res!2564814 (not lt!2342955))))

(declare-fun b!6200817 () Bool)

(declare-fun res!2564813 () Bool)

(assert (=> b!6200817 (=> res!2564813 e!3775983)))

(assert (=> b!6200817 (= res!2564813 e!3775982)))

(declare-fun res!2564817 () Bool)

(assert (=> b!6200817 (=> (not res!2564817) (not e!3775982))))

(assert (=> b!6200817 (= res!2564817 lt!2342955)))

(declare-fun b!6200818 () Bool)

(assert (=> b!6200818 (= e!3775985 (not lt!2342955))))

(declare-fun b!6200819 () Bool)

(declare-fun res!2564815 () Bool)

(assert (=> b!6200819 (=> res!2564815 e!3775984)))

(assert (=> b!6200819 (= res!2564815 (not (isEmpty!36593 (tail!11874 (_2!36422 (get!22304 lt!2342886))))))))

(declare-fun b!6200820 () Bool)

(declare-fun res!2564811 () Bool)

(assert (=> b!6200820 (=> (not res!2564811) (not e!3775982))))

(assert (=> b!6200820 (= res!2564811 (not call!518939))))

(declare-fun b!6200821 () Bool)

(assert (=> b!6200821 (= e!3775982 (= (head!12789 (_2!36422 (get!22304 lt!2342886))) (c!1119187 (regTwo!32792 r!7292))))))

(declare-fun b!6200822 () Bool)

(assert (=> b!6200822 (= e!3775980 (nullable!6133 (regTwo!32792 r!7292)))))

(declare-fun bm!518934 () Bool)

(assert (=> bm!518934 (= call!518939 (isEmpty!36593 (_2!36422 (get!22304 lt!2342886))))))

(assert (= (and d!1943776 c!1119375) b!6200822))

(assert (= (and d!1943776 (not c!1119375)) b!6200813))

(assert (= (and d!1943776 c!1119377) b!6200812))

(assert (= (and d!1943776 (not c!1119377)) b!6200809))

(assert (= (and b!6200809 c!1119376) b!6200818))

(assert (= (and b!6200809 (not c!1119376)) b!6200810))

(assert (= (and b!6200810 (not res!2564816)) b!6200817))

(assert (= (and b!6200817 res!2564817) b!6200820))

(assert (= (and b!6200820 res!2564811) b!6200811))

(assert (= (and b!6200811 res!2564810) b!6200821))

(assert (= (and b!6200817 (not res!2564813)) b!6200816))

(assert (= (and b!6200816 res!2564814) b!6200815))

(assert (= (and b!6200815 (not res!2564812)) b!6200819))

(assert (= (and b!6200819 (not res!2564815)) b!6200814))

(assert (= (or b!6200812 b!6200815 b!6200820) bm!518934))

(declare-fun m!7033382 () Bool)

(assert (=> b!6200814 m!7033382))

(declare-fun m!7033384 () Bool)

(assert (=> b!6200819 m!7033384))

(assert (=> b!6200819 m!7033384))

(declare-fun m!7033386 () Bool)

(assert (=> b!6200819 m!7033386))

(assert (=> b!6200811 m!7033384))

(assert (=> b!6200811 m!7033384))

(assert (=> b!6200811 m!7033386))

(declare-fun m!7033388 () Bool)

(assert (=> b!6200822 m!7033388))

(assert (=> b!6200821 m!7033382))

(declare-fun m!7033390 () Bool)

(assert (=> bm!518934 m!7033390))

(assert (=> d!1943776 m!7033390))

(declare-fun m!7033392 () Bool)

(assert (=> d!1943776 m!7033392))

(assert (=> b!6200813 m!7033382))

(assert (=> b!6200813 m!7033382))

(declare-fun m!7033394 () Bool)

(assert (=> b!6200813 m!7033394))

(assert (=> b!6200813 m!7033384))

(assert (=> b!6200813 m!7033394))

(assert (=> b!6200813 m!7033384))

(declare-fun m!7033396 () Bool)

(assert (=> b!6200813 m!7033396))

(assert (=> b!6200208 d!1943776))

(declare-fun d!1943778 () Bool)

(assert (=> d!1943778 (= (get!22304 lt!2342886) (v!52173 lt!2342886))))

(assert (=> b!6200208 d!1943778))

(declare-fun d!1943780 () Bool)

(assert (=> d!1943780 (= (isEmptyLang!1559 lt!2342876) (is-EmptyLang!16140 lt!2342876))))

(assert (=> b!6200151 d!1943780))

(declare-fun d!1943782 () Bool)

(declare-fun res!2564822 () Bool)

(declare-fun e!3775991 () Bool)

(assert (=> d!1943782 (=> res!2564822 e!3775991)))

(assert (=> d!1943782 (= res!2564822 (is-Nil!64595 lt!2342879))))

(assert (=> d!1943782 (= (forall!15254 lt!2342879 lambda!338773) e!3775991)))

(declare-fun b!6200827 () Bool)

(declare-fun e!3775992 () Bool)

(assert (=> b!6200827 (= e!3775991 e!3775992)))

(declare-fun res!2564823 () Bool)

(assert (=> b!6200827 (=> (not res!2564823) (not e!3775992))))

(declare-fun dynLambda!25476 (Int Regex!16140) Bool)

(assert (=> b!6200827 (= res!2564823 (dynLambda!25476 lambda!338773 (h!71043 lt!2342879)))))

(declare-fun b!6200828 () Bool)

(assert (=> b!6200828 (= e!3775992 (forall!15254 (t!378235 lt!2342879) lambda!338773))))

(assert (= (and d!1943782 (not res!2564822)) b!6200827))

(assert (= (and b!6200827 res!2564823) b!6200828))

(declare-fun b_lambda!235839 () Bool)

(assert (=> (not b_lambda!235839) (not b!6200827)))

(declare-fun m!7033398 () Bool)

(assert (=> b!6200827 m!7033398))

(declare-fun m!7033400 () Bool)

(assert (=> b!6200828 m!7033400))

(assert (=> d!1943644 d!1943782))

(declare-fun b!6200829 () Bool)

(declare-fun e!3775995 () (Set Context!11048))

(declare-fun call!518944 () (Set Context!11048))

(assert (=> b!6200829 (= e!3775995 call!518944)))

(declare-fun b!6200830 () Bool)

(declare-fun e!3775993 () (Set Context!11048))

(assert (=> b!6200830 (= e!3775993 e!3775995)))

(declare-fun c!1119379 () Bool)

(assert (=> b!6200830 (= c!1119379 (is-Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun call!518942 () List!64719)

(declare-fun call!518940 () (Set Context!11048))

(declare-fun bm!518935 () Bool)

(declare-fun c!1119380 () Bool)

(assert (=> bm!518935 (= call!518940 (derivationStepZipperDown!1388 (ite c!1119380 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))) (ite c!1119380 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (Context!11049 call!518942)) (h!71045 s!2326)))))

(declare-fun b!6200831 () Bool)

(declare-fun e!3775997 () (Set Context!11048))

(assert (=> b!6200831 (= e!3775997 call!518944)))

(declare-fun bm!518936 () Bool)

(declare-fun call!518945 () (Set Context!11048))

(declare-fun call!518941 () (Set Context!11048))

(assert (=> bm!518936 (= call!518945 call!518941)))

(declare-fun c!1119382 () Bool)

(declare-fun bm!518937 () Bool)

(assert (=> bm!518937 (= call!518942 ($colon$colon!2009 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343))))) (ite (or c!1119382 c!1119379) (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71043 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun b!6200832 () Bool)

(assert (=> b!6200832 (= e!3775993 (set.union call!518940 call!518945))))

(declare-fun d!1943784 () Bool)

(declare-fun c!1119381 () Bool)

(assert (=> d!1943784 (= c!1119381 (and (is-ElementMatch!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))) (= (c!1119187 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326))))))

(declare-fun e!3775998 () (Set Context!11048))

(assert (=> d!1943784 (= (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (h!71044 zl!343))) (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326)) e!3775998)))

(declare-fun b!6200833 () Bool)

(declare-fun e!3775994 () (Set Context!11048))

(assert (=> b!6200833 (= e!3775994 (set.union call!518940 call!518941))))

(declare-fun b!6200834 () Bool)

(assert (=> b!6200834 (= e!3775997 (as set.empty (Set Context!11048)))))

(declare-fun b!6200835 () Bool)

(assert (=> b!6200835 (= e!3775998 e!3775994)))

(assert (=> b!6200835 (= c!1119380 (is-Union!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200836 () Bool)

(declare-fun c!1119378 () Bool)

(assert (=> b!6200836 (= c!1119378 (is-Star!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200836 (= e!3775995 e!3775997)))

(declare-fun bm!518938 () Bool)

(declare-fun call!518943 () List!64719)

(assert (=> bm!518938 (= call!518943 call!518942)))

(declare-fun bm!518939 () Bool)

(assert (=> bm!518939 (= call!518941 (derivationStepZipperDown!1388 (ite c!1119380 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119382 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119379 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))) (ite (or c!1119380 c!1119382) (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (Context!11049 call!518943)) (h!71045 s!2326)))))

(declare-fun bm!518940 () Bool)

(assert (=> bm!518940 (= call!518944 call!518945)))

(declare-fun b!6200837 () Bool)

(assert (=> b!6200837 (= e!3775998 (set.insert (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (as set.empty (Set Context!11048))))))

(declare-fun b!6200838 () Bool)

(declare-fun e!3775996 () Bool)

(assert (=> b!6200838 (= c!1119382 e!3775996)))

(declare-fun res!2564824 () Bool)

(assert (=> b!6200838 (=> (not res!2564824) (not e!3775996))))

(assert (=> b!6200838 (= res!2564824 (is-Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200838 (= e!3775994 e!3775993)))

(declare-fun b!6200839 () Bool)

(assert (=> b!6200839 (= e!3775996 (nullable!6133 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))

(assert (= (and d!1943784 c!1119381) b!6200837))

(assert (= (and d!1943784 (not c!1119381)) b!6200835))

(assert (= (and b!6200835 c!1119380) b!6200833))

(assert (= (and b!6200835 (not c!1119380)) b!6200838))

(assert (= (and b!6200838 res!2564824) b!6200839))

(assert (= (and b!6200838 c!1119382) b!6200832))

(assert (= (and b!6200838 (not c!1119382)) b!6200830))

(assert (= (and b!6200830 c!1119379) b!6200829))

(assert (= (and b!6200830 (not c!1119379)) b!6200836))

(assert (= (and b!6200836 c!1119378) b!6200831))

(assert (= (and b!6200836 (not c!1119378)) b!6200834))

(assert (= (or b!6200829 b!6200831) bm!518938))

(assert (= (or b!6200829 b!6200831) bm!518940))

(assert (= (or b!6200832 bm!518938) bm!518937))

(assert (= (or b!6200832 bm!518940) bm!518936))

(assert (= (or b!6200833 bm!518936) bm!518939))

(assert (= (or b!6200833 b!6200832) bm!518935))

(declare-fun m!7033402 () Bool)

(assert (=> b!6200837 m!7033402))

(declare-fun m!7033404 () Bool)

(assert (=> bm!518935 m!7033404))

(assert (=> b!6200839 m!7033206))

(declare-fun m!7033406 () Bool)

(assert (=> bm!518937 m!7033406))

(declare-fun m!7033408 () Bool)

(assert (=> bm!518939 m!7033408))

(assert (=> bm!518903 d!1943784))

(declare-fun b!6200840 () Bool)

(declare-fun e!3776000 () Bool)

(declare-fun e!3776004 () Bool)

(assert (=> b!6200840 (= e!3776000 e!3776004)))

(declare-fun c!1119384 () Bool)

(assert (=> b!6200840 (= c!1119384 (is-EmptyLang!16140 (regOne!32792 r!7292)))))

(declare-fun b!6200841 () Bool)

(declare-fun res!2564831 () Bool)

(declare-fun e!3776002 () Bool)

(assert (=> b!6200841 (=> res!2564831 e!3776002)))

(assert (=> b!6200841 (= res!2564831 (not (is-ElementMatch!16140 (regOne!32792 r!7292))))))

(assert (=> b!6200841 (= e!3776004 e!3776002)))

(declare-fun b!6200842 () Bool)

(declare-fun res!2564825 () Bool)

(declare-fun e!3776001 () Bool)

(assert (=> b!6200842 (=> (not res!2564825) (not e!3776001))))

(assert (=> b!6200842 (= res!2564825 (isEmpty!36593 (tail!11874 (_1!36422 (get!22304 lt!2342886)))))))

(declare-fun d!1943786 () Bool)

(assert (=> d!1943786 e!3776000))

(declare-fun c!1119385 () Bool)

(assert (=> d!1943786 (= c!1119385 (is-EmptyExpr!16140 (regOne!32792 r!7292)))))

(declare-fun lt!2342956 () Bool)

(declare-fun e!3775999 () Bool)

(assert (=> d!1943786 (= lt!2342956 e!3775999)))

(declare-fun c!1119383 () Bool)

(assert (=> d!1943786 (= c!1119383 (isEmpty!36593 (_1!36422 (get!22304 lt!2342886))))))

(assert (=> d!1943786 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943786 (= (matchR!8323 (regOne!32792 r!7292) (_1!36422 (get!22304 lt!2342886))) lt!2342956)))

(declare-fun b!6200843 () Bool)

(declare-fun call!518946 () Bool)

(assert (=> b!6200843 (= e!3776000 (= lt!2342956 call!518946))))

(declare-fun b!6200844 () Bool)

(assert (=> b!6200844 (= e!3775999 (matchR!8323 (derivativeStep!4853 (regOne!32792 r!7292) (head!12789 (_1!36422 (get!22304 lt!2342886)))) (tail!11874 (_1!36422 (get!22304 lt!2342886)))))))

(declare-fun b!6200845 () Bool)

(declare-fun e!3776003 () Bool)

(assert (=> b!6200845 (= e!3776003 (not (= (head!12789 (_1!36422 (get!22304 lt!2342886))) (c!1119187 (regOne!32792 r!7292)))))))

(declare-fun b!6200846 () Bool)

(declare-fun e!3776005 () Bool)

(assert (=> b!6200846 (= e!3776005 e!3776003)))

(declare-fun res!2564827 () Bool)

(assert (=> b!6200846 (=> res!2564827 e!3776003)))

(assert (=> b!6200846 (= res!2564827 call!518946)))

(declare-fun b!6200847 () Bool)

(assert (=> b!6200847 (= e!3776002 e!3776005)))

(declare-fun res!2564829 () Bool)

(assert (=> b!6200847 (=> (not res!2564829) (not e!3776005))))

(assert (=> b!6200847 (= res!2564829 (not lt!2342956))))

(declare-fun b!6200848 () Bool)

(declare-fun res!2564828 () Bool)

(assert (=> b!6200848 (=> res!2564828 e!3776002)))

(assert (=> b!6200848 (= res!2564828 e!3776001)))

(declare-fun res!2564832 () Bool)

(assert (=> b!6200848 (=> (not res!2564832) (not e!3776001))))

(assert (=> b!6200848 (= res!2564832 lt!2342956)))

(declare-fun b!6200849 () Bool)

(assert (=> b!6200849 (= e!3776004 (not lt!2342956))))

(declare-fun b!6200850 () Bool)

(declare-fun res!2564830 () Bool)

(assert (=> b!6200850 (=> res!2564830 e!3776003)))

(assert (=> b!6200850 (= res!2564830 (not (isEmpty!36593 (tail!11874 (_1!36422 (get!22304 lt!2342886))))))))

(declare-fun b!6200851 () Bool)

(declare-fun res!2564826 () Bool)

(assert (=> b!6200851 (=> (not res!2564826) (not e!3776001))))

(assert (=> b!6200851 (= res!2564826 (not call!518946))))

(declare-fun b!6200852 () Bool)

(assert (=> b!6200852 (= e!3776001 (= (head!12789 (_1!36422 (get!22304 lt!2342886))) (c!1119187 (regOne!32792 r!7292))))))

(declare-fun b!6200853 () Bool)

(assert (=> b!6200853 (= e!3775999 (nullable!6133 (regOne!32792 r!7292)))))

(declare-fun bm!518941 () Bool)

(assert (=> bm!518941 (= call!518946 (isEmpty!36593 (_1!36422 (get!22304 lt!2342886))))))

(assert (= (and d!1943786 c!1119383) b!6200853))

(assert (= (and d!1943786 (not c!1119383)) b!6200844))

(assert (= (and d!1943786 c!1119385) b!6200843))

(assert (= (and d!1943786 (not c!1119385)) b!6200840))

(assert (= (and b!6200840 c!1119384) b!6200849))

(assert (= (and b!6200840 (not c!1119384)) b!6200841))

(assert (= (and b!6200841 (not res!2564831)) b!6200848))

(assert (= (and b!6200848 res!2564832) b!6200851))

(assert (= (and b!6200851 res!2564826) b!6200842))

(assert (= (and b!6200842 res!2564825) b!6200852))

(assert (= (and b!6200848 (not res!2564828)) b!6200847))

(assert (= (and b!6200847 res!2564829) b!6200846))

(assert (= (and b!6200846 (not res!2564827)) b!6200850))

(assert (= (and b!6200850 (not res!2564830)) b!6200845))

(assert (= (or b!6200843 b!6200846 b!6200851) bm!518941))

(declare-fun m!7033410 () Bool)

(assert (=> b!6200845 m!7033410))

(declare-fun m!7033412 () Bool)

(assert (=> b!6200850 m!7033412))

(assert (=> b!6200850 m!7033412))

(declare-fun m!7033414 () Bool)

(assert (=> b!6200850 m!7033414))

(assert (=> b!6200842 m!7033412))

(assert (=> b!6200842 m!7033412))

(assert (=> b!6200842 m!7033414))

(declare-fun m!7033416 () Bool)

(assert (=> b!6200853 m!7033416))

(assert (=> b!6200852 m!7033410))

(declare-fun m!7033418 () Bool)

(assert (=> bm!518941 m!7033418))

(assert (=> d!1943786 m!7033418))

(assert (=> d!1943786 m!7033050))

(assert (=> b!6200844 m!7033410))

(assert (=> b!6200844 m!7033410))

(declare-fun m!7033420 () Bool)

(assert (=> b!6200844 m!7033420))

(assert (=> b!6200844 m!7033412))

(assert (=> b!6200844 m!7033420))

(assert (=> b!6200844 m!7033412))

(declare-fun m!7033422 () Bool)

(assert (=> b!6200844 m!7033422))

(assert (=> b!6200210 d!1943786))

(assert (=> b!6200210 d!1943778))

(declare-fun b!6200854 () Bool)

(declare-fun e!3776011 () Bool)

(declare-fun call!518949 () Bool)

(assert (=> b!6200854 (= e!3776011 call!518949)))

(declare-fun b!6200855 () Bool)

(declare-fun e!3776006 () Bool)

(declare-fun e!3776009 () Bool)

(assert (=> b!6200855 (= e!3776006 e!3776009)))

(declare-fun c!1119386 () Bool)

(assert (=> b!6200855 (= c!1119386 (is-Union!16140 lt!2342915))))

(declare-fun bm!518942 () Bool)

(declare-fun c!1119387 () Bool)

(assert (=> bm!518942 (= call!518949 (validRegex!7876 (ite c!1119387 (reg!16469 lt!2342915) (ite c!1119386 (regOne!32793 lt!2342915) (regOne!32792 lt!2342915)))))))

(declare-fun b!6200856 () Bool)

(assert (=> b!6200856 (= e!3776006 e!3776011)))

(declare-fun res!2564834 () Bool)

(assert (=> b!6200856 (= res!2564834 (not (nullable!6133 (reg!16469 lt!2342915))))))

(assert (=> b!6200856 (=> (not res!2564834) (not e!3776011))))

(declare-fun b!6200857 () Bool)

(declare-fun e!3776008 () Bool)

(assert (=> b!6200857 (= e!3776008 e!3776006)))

(assert (=> b!6200857 (= c!1119387 (is-Star!16140 lt!2342915))))

(declare-fun b!6200858 () Bool)

(declare-fun e!3776012 () Bool)

(declare-fun e!3776010 () Bool)

(assert (=> b!6200858 (= e!3776012 e!3776010)))

(declare-fun res!2564833 () Bool)

(assert (=> b!6200858 (=> (not res!2564833) (not e!3776010))))

(declare-fun call!518948 () Bool)

(assert (=> b!6200858 (= res!2564833 call!518948)))

(declare-fun b!6200859 () Bool)

(declare-fun res!2564837 () Bool)

(declare-fun e!3776007 () Bool)

(assert (=> b!6200859 (=> (not res!2564837) (not e!3776007))))

(assert (=> b!6200859 (= res!2564837 call!518948)))

(assert (=> b!6200859 (= e!3776009 e!3776007)))

(declare-fun bm!518944 () Bool)

(declare-fun call!518947 () Bool)

(assert (=> bm!518944 (= call!518947 (validRegex!7876 (ite c!1119386 (regTwo!32793 lt!2342915) (regTwo!32792 lt!2342915))))))

(declare-fun b!6200860 () Bool)

(assert (=> b!6200860 (= e!3776007 call!518947)))

(declare-fun b!6200861 () Bool)

(declare-fun res!2564835 () Bool)

(assert (=> b!6200861 (=> res!2564835 e!3776012)))

(assert (=> b!6200861 (= res!2564835 (not (is-Concat!24985 lt!2342915)))))

(assert (=> b!6200861 (= e!3776009 e!3776012)))

(declare-fun b!6200862 () Bool)

(assert (=> b!6200862 (= e!3776010 call!518947)))

(declare-fun d!1943788 () Bool)

(declare-fun res!2564836 () Bool)

(assert (=> d!1943788 (=> res!2564836 e!3776008)))

(assert (=> d!1943788 (= res!2564836 (is-ElementMatch!16140 lt!2342915))))

(assert (=> d!1943788 (= (validRegex!7876 lt!2342915) e!3776008)))

(declare-fun bm!518943 () Bool)

(assert (=> bm!518943 (= call!518948 call!518949)))

(assert (= (and d!1943788 (not res!2564836)) b!6200857))

(assert (= (and b!6200857 c!1119387) b!6200856))

(assert (= (and b!6200857 (not c!1119387)) b!6200855))

(assert (= (and b!6200856 res!2564834) b!6200854))

(assert (= (and b!6200855 c!1119386) b!6200859))

(assert (= (and b!6200855 (not c!1119386)) b!6200861))

(assert (= (and b!6200859 res!2564837) b!6200860))

(assert (= (and b!6200861 (not res!2564835)) b!6200858))

(assert (= (and b!6200858 res!2564833) b!6200862))

(assert (= (or b!6200860 b!6200862) bm!518944))

(assert (= (or b!6200859 b!6200858) bm!518943))

(assert (= (or b!6200854 bm!518943) bm!518942))

(declare-fun m!7033424 () Bool)

(assert (=> bm!518942 m!7033424))

(declare-fun m!7033426 () Bool)

(assert (=> b!6200856 m!7033426))

(declare-fun m!7033428 () Bool)

(assert (=> bm!518944 m!7033428))

(assert (=> d!1943700 d!1943788))

(assert (=> d!1943700 d!1943642))

(assert (=> d!1943700 d!1943644))

(assert (=> b!6200156 d!1943720))

(declare-fun bs!1538457 () Bool)

(declare-fun d!1943790 () Bool)

(assert (= bs!1538457 (and d!1943790 d!1943642)))

(declare-fun lambda!338826 () Int)

(assert (=> bs!1538457 (= lambda!338826 lambda!338770)))

(declare-fun bs!1538458 () Bool)

(assert (= bs!1538458 (and d!1943790 d!1943646)))

(assert (=> bs!1538458 (= lambda!338826 lambda!338776)))

(declare-fun bs!1538459 () Bool)

(assert (= bs!1538459 (and d!1943790 d!1943720)))

(assert (=> bs!1538459 (= lambda!338826 lambda!338808)))

(declare-fun bs!1538460 () Bool)

(assert (= bs!1538460 (and d!1943790 d!1943668)))

(assert (=> bs!1538460 (= lambda!338826 lambda!338789)))

(declare-fun bs!1538461 () Bool)

(assert (= bs!1538461 (and d!1943790 d!1943666)))

(assert (=> bs!1538461 (= lambda!338826 lambda!338788)))

(declare-fun bs!1538462 () Bool)

(assert (= bs!1538462 (and d!1943790 d!1943644)))

(assert (=> bs!1538462 (= lambda!338826 lambda!338773)))

(declare-fun lt!2342957 () List!64719)

(assert (=> d!1943790 (forall!15254 lt!2342957 lambda!338826)))

(declare-fun e!3776013 () List!64719)

(assert (=> d!1943790 (= lt!2342957 e!3776013)))

(declare-fun c!1119388 () Bool)

(assert (=> d!1943790 (= c!1119388 (is-Cons!64596 (t!378236 zl!343)))))

(assert (=> d!1943790 (= (unfocusZipperList!1561 (t!378236 zl!343)) lt!2342957)))

(declare-fun b!6200863 () Bool)

(assert (=> b!6200863 (= e!3776013 (Cons!64595 (generalisedConcat!1737 (exprs!6024 (h!71044 (t!378236 zl!343)))) (unfocusZipperList!1561 (t!378236 (t!378236 zl!343)))))))

(declare-fun b!6200864 () Bool)

(assert (=> b!6200864 (= e!3776013 Nil!64595)))

(assert (= (and d!1943790 c!1119388) b!6200863))

(assert (= (and d!1943790 (not c!1119388)) b!6200864))

(declare-fun m!7033430 () Bool)

(assert (=> d!1943790 m!7033430))

(declare-fun m!7033432 () Bool)

(assert (=> b!6200863 m!7033432))

(declare-fun m!7033434 () Bool)

(assert (=> b!6200863 m!7033434))

(assert (=> b!6200156 d!1943790))

(assert (=> d!1943656 d!1943650))

(assert (=> d!1943656 d!1943662))

(declare-fun bs!1538463 () Bool)

(declare-fun d!1943792 () Bool)

(assert (= bs!1538463 (and d!1943792 d!1943660)))

(declare-fun lambda!338829 () Int)

(assert (=> bs!1538463 (not (= lambda!338829 lambda!338787))))

(declare-fun bs!1538464 () Bool)

(assert (= bs!1538464 (and d!1943792 b!6200316)))

(assert (=> bs!1538464 (not (= lambda!338829 lambda!338799))))

(declare-fun bs!1538465 () Bool)

(assert (= bs!1538465 (and d!1943792 b!6200000)))

(assert (=> bs!1538465 (not (= lambda!338829 lambda!338755))))

(declare-fun bs!1538466 () Bool)

(assert (= bs!1538466 (and d!1943792 b!6200318)))

(assert (=> bs!1538466 (not (= lambda!338829 lambda!338798))))

(assert (=> bs!1538465 (= lambda!338829 lambda!338754)))

(assert (=> bs!1538463 (= lambda!338829 lambda!338786)))

(declare-fun bs!1538467 () Bool)

(assert (= bs!1538467 (and d!1943792 d!1943656)))

(assert (=> bs!1538467 (= lambda!338829 lambda!338779)))

(assert (=> d!1943792 true))

(assert (=> d!1943792 true))

(assert (=> d!1943792 true))

(assert (=> d!1943792 (= (isDefined!12734 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326)) (Exists!3210 lambda!338829))))

(assert (=> d!1943792 true))

(declare-fun _$89!2344 () Unit!157891)

(assert (=> d!1943792 (= (choose!46078 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326) _$89!2344)))

(declare-fun bs!1538468 () Bool)

(assert (= bs!1538468 d!1943792))

(assert (=> bs!1538468 m!7032896))

(assert (=> bs!1538468 m!7032896))

(assert (=> bs!1538468 m!7032898))

(declare-fun m!7033436 () Bool)

(assert (=> bs!1538468 m!7033436))

(assert (=> d!1943656 d!1943792))

(declare-fun b!6200869 () Bool)

(declare-fun e!3776021 () Bool)

(declare-fun call!518952 () Bool)

(assert (=> b!6200869 (= e!3776021 call!518952)))

(declare-fun b!6200870 () Bool)

(declare-fun e!3776016 () Bool)

(declare-fun e!3776019 () Bool)

(assert (=> b!6200870 (= e!3776016 e!3776019)))

(declare-fun c!1119389 () Bool)

(assert (=> b!6200870 (= c!1119389 (is-Union!16140 (regOne!32792 r!7292)))))

(declare-fun c!1119390 () Bool)

(declare-fun bm!518945 () Bool)

(assert (=> bm!518945 (= call!518952 (validRegex!7876 (ite c!1119390 (reg!16469 (regOne!32792 r!7292)) (ite c!1119389 (regOne!32793 (regOne!32792 r!7292)) (regOne!32792 (regOne!32792 r!7292))))))))

(declare-fun b!6200871 () Bool)

(assert (=> b!6200871 (= e!3776016 e!3776021)))

(declare-fun res!2564843 () Bool)

(assert (=> b!6200871 (= res!2564843 (not (nullable!6133 (reg!16469 (regOne!32792 r!7292)))))))

(assert (=> b!6200871 (=> (not res!2564843) (not e!3776021))))

(declare-fun b!6200872 () Bool)

(declare-fun e!3776018 () Bool)

(assert (=> b!6200872 (= e!3776018 e!3776016)))

(assert (=> b!6200872 (= c!1119390 (is-Star!16140 (regOne!32792 r!7292)))))

(declare-fun b!6200873 () Bool)

(declare-fun e!3776022 () Bool)

(declare-fun e!3776020 () Bool)

(assert (=> b!6200873 (= e!3776022 e!3776020)))

(declare-fun res!2564842 () Bool)

(assert (=> b!6200873 (=> (not res!2564842) (not e!3776020))))

(declare-fun call!518951 () Bool)

(assert (=> b!6200873 (= res!2564842 call!518951)))

(declare-fun b!6200874 () Bool)

(declare-fun res!2564846 () Bool)

(declare-fun e!3776017 () Bool)

(assert (=> b!6200874 (=> (not res!2564846) (not e!3776017))))

(assert (=> b!6200874 (= res!2564846 call!518951)))

(assert (=> b!6200874 (= e!3776019 e!3776017)))

(declare-fun bm!518947 () Bool)

(declare-fun call!518950 () Bool)

(assert (=> bm!518947 (= call!518950 (validRegex!7876 (ite c!1119389 (regTwo!32793 (regOne!32792 r!7292)) (regTwo!32792 (regOne!32792 r!7292)))))))

(declare-fun b!6200875 () Bool)

(assert (=> b!6200875 (= e!3776017 call!518950)))

(declare-fun b!6200876 () Bool)

(declare-fun res!2564844 () Bool)

(assert (=> b!6200876 (=> res!2564844 e!3776022)))

(assert (=> b!6200876 (= res!2564844 (not (is-Concat!24985 (regOne!32792 r!7292))))))

(assert (=> b!6200876 (= e!3776019 e!3776022)))

(declare-fun b!6200877 () Bool)

(assert (=> b!6200877 (= e!3776020 call!518950)))

(declare-fun d!1943794 () Bool)

(declare-fun res!2564845 () Bool)

(assert (=> d!1943794 (=> res!2564845 e!3776018)))

(assert (=> d!1943794 (= res!2564845 (is-ElementMatch!16140 (regOne!32792 r!7292)))))

(assert (=> d!1943794 (= (validRegex!7876 (regOne!32792 r!7292)) e!3776018)))

(declare-fun bm!518946 () Bool)

(assert (=> bm!518946 (= call!518951 call!518952)))

(assert (= (and d!1943794 (not res!2564845)) b!6200872))

(assert (= (and b!6200872 c!1119390) b!6200871))

(assert (= (and b!6200872 (not c!1119390)) b!6200870))

(assert (= (and b!6200871 res!2564843) b!6200869))

(assert (= (and b!6200870 c!1119389) b!6200874))

(assert (= (and b!6200870 (not c!1119389)) b!6200876))

(assert (= (and b!6200874 res!2564846) b!6200875))

(assert (= (and b!6200876 (not res!2564844)) b!6200873))

(assert (= (and b!6200873 res!2564842) b!6200877))

(assert (= (or b!6200875 b!6200877) bm!518947))

(assert (= (or b!6200874 b!6200873) bm!518946))

(assert (= (or b!6200869 bm!518946) bm!518945))

(declare-fun m!7033438 () Bool)

(assert (=> bm!518945 m!7033438))

(declare-fun m!7033440 () Bool)

(assert (=> b!6200871 m!7033440))

(declare-fun m!7033442 () Bool)

(assert (=> bm!518947 m!7033442))

(assert (=> d!1943656 d!1943794))

(declare-fun d!1943796 () Bool)

(assert (=> d!1943796 (= (Exists!3210 lambda!338779) (choose!46077 lambda!338779))))

(declare-fun bs!1538469 () Bool)

(assert (= bs!1538469 d!1943796))

(declare-fun m!7033444 () Bool)

(assert (=> bs!1538469 m!7033444))

(assert (=> d!1943656 d!1943796))

(declare-fun d!1943798 () Bool)

(assert (=> d!1943798 (= (isDefined!12734 lt!2342886) (not (isEmpty!36592 lt!2342886)))))

(declare-fun bs!1538470 () Bool)

(assert (= bs!1538470 d!1943798))

(declare-fun m!7033446 () Bool)

(assert (=> bs!1538470 m!7033446))

(assert (=> d!1943650 d!1943798))

(declare-fun b!6200878 () Bool)

(declare-fun e!3776024 () Bool)

(declare-fun e!3776028 () Bool)

(assert (=> b!6200878 (= e!3776024 e!3776028)))

(declare-fun c!1119392 () Bool)

(assert (=> b!6200878 (= c!1119392 (is-EmptyLang!16140 (regOne!32792 r!7292)))))

(declare-fun b!6200879 () Bool)

(declare-fun res!2564853 () Bool)

(declare-fun e!3776026 () Bool)

(assert (=> b!6200879 (=> res!2564853 e!3776026)))

(assert (=> b!6200879 (= res!2564853 (not (is-ElementMatch!16140 (regOne!32792 r!7292))))))

(assert (=> b!6200879 (= e!3776028 e!3776026)))

(declare-fun b!6200880 () Bool)

(declare-fun res!2564847 () Bool)

(declare-fun e!3776025 () Bool)

(assert (=> b!6200880 (=> (not res!2564847) (not e!3776025))))

(assert (=> b!6200880 (= res!2564847 (isEmpty!36593 (tail!11874 Nil!64597)))))

(declare-fun d!1943800 () Bool)

(assert (=> d!1943800 e!3776024))

(declare-fun c!1119393 () Bool)

(assert (=> d!1943800 (= c!1119393 (is-EmptyExpr!16140 (regOne!32792 r!7292)))))

(declare-fun lt!2342958 () Bool)

(declare-fun e!3776023 () Bool)

(assert (=> d!1943800 (= lt!2342958 e!3776023)))

(declare-fun c!1119391 () Bool)

(assert (=> d!1943800 (= c!1119391 (isEmpty!36593 Nil!64597))))

(assert (=> d!1943800 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943800 (= (matchR!8323 (regOne!32792 r!7292) Nil!64597) lt!2342958)))

(declare-fun b!6200881 () Bool)

(declare-fun call!518953 () Bool)

(assert (=> b!6200881 (= e!3776024 (= lt!2342958 call!518953))))

(declare-fun b!6200882 () Bool)

(assert (=> b!6200882 (= e!3776023 (matchR!8323 (derivativeStep!4853 (regOne!32792 r!7292) (head!12789 Nil!64597)) (tail!11874 Nil!64597)))))

(declare-fun b!6200883 () Bool)

(declare-fun e!3776027 () Bool)

(assert (=> b!6200883 (= e!3776027 (not (= (head!12789 Nil!64597) (c!1119187 (regOne!32792 r!7292)))))))

(declare-fun b!6200884 () Bool)

(declare-fun e!3776029 () Bool)

(assert (=> b!6200884 (= e!3776029 e!3776027)))

(declare-fun res!2564849 () Bool)

(assert (=> b!6200884 (=> res!2564849 e!3776027)))

(assert (=> b!6200884 (= res!2564849 call!518953)))

(declare-fun b!6200885 () Bool)

(assert (=> b!6200885 (= e!3776026 e!3776029)))

(declare-fun res!2564851 () Bool)

(assert (=> b!6200885 (=> (not res!2564851) (not e!3776029))))

(assert (=> b!6200885 (= res!2564851 (not lt!2342958))))

(declare-fun b!6200886 () Bool)

(declare-fun res!2564850 () Bool)

(assert (=> b!6200886 (=> res!2564850 e!3776026)))

(assert (=> b!6200886 (= res!2564850 e!3776025)))

(declare-fun res!2564854 () Bool)

(assert (=> b!6200886 (=> (not res!2564854) (not e!3776025))))

(assert (=> b!6200886 (= res!2564854 lt!2342958)))

(declare-fun b!6200887 () Bool)

(assert (=> b!6200887 (= e!3776028 (not lt!2342958))))

(declare-fun b!6200888 () Bool)

(declare-fun res!2564852 () Bool)

(assert (=> b!6200888 (=> res!2564852 e!3776027)))

(assert (=> b!6200888 (= res!2564852 (not (isEmpty!36593 (tail!11874 Nil!64597))))))

(declare-fun b!6200889 () Bool)

(declare-fun res!2564848 () Bool)

(assert (=> b!6200889 (=> (not res!2564848) (not e!3776025))))

(assert (=> b!6200889 (= res!2564848 (not call!518953))))

(declare-fun b!6200890 () Bool)

(assert (=> b!6200890 (= e!3776025 (= (head!12789 Nil!64597) (c!1119187 (regOne!32792 r!7292))))))

(declare-fun b!6200891 () Bool)

(assert (=> b!6200891 (= e!3776023 (nullable!6133 (regOne!32792 r!7292)))))

(declare-fun bm!518948 () Bool)

(assert (=> bm!518948 (= call!518953 (isEmpty!36593 Nil!64597))))

(assert (= (and d!1943800 c!1119391) b!6200891))

(assert (= (and d!1943800 (not c!1119391)) b!6200882))

(assert (= (and d!1943800 c!1119393) b!6200881))

(assert (= (and d!1943800 (not c!1119393)) b!6200878))

(assert (= (and b!6200878 c!1119392) b!6200887))

(assert (= (and b!6200878 (not c!1119392)) b!6200879))

(assert (= (and b!6200879 (not res!2564853)) b!6200886))

(assert (= (and b!6200886 res!2564854) b!6200889))

(assert (= (and b!6200889 res!2564848) b!6200880))

(assert (= (and b!6200880 res!2564847) b!6200890))

(assert (= (and b!6200886 (not res!2564850)) b!6200885))

(assert (= (and b!6200885 res!2564851) b!6200884))

(assert (= (and b!6200884 (not res!2564849)) b!6200888))

(assert (= (and b!6200888 (not res!2564852)) b!6200883))

(assert (= (or b!6200881 b!6200884 b!6200889) bm!518948))

(declare-fun m!7033448 () Bool)

(assert (=> b!6200883 m!7033448))

(declare-fun m!7033450 () Bool)

(assert (=> b!6200888 m!7033450))

(assert (=> b!6200888 m!7033450))

(declare-fun m!7033452 () Bool)

(assert (=> b!6200888 m!7033452))

(assert (=> b!6200880 m!7033450))

(assert (=> b!6200880 m!7033450))

(assert (=> b!6200880 m!7033452))

(assert (=> b!6200891 m!7033416))

(assert (=> b!6200890 m!7033448))

(declare-fun m!7033454 () Bool)

(assert (=> bm!518948 m!7033454))

(assert (=> d!1943800 m!7033454))

(assert (=> d!1943800 m!7033050))

(assert (=> b!6200882 m!7033448))

(assert (=> b!6200882 m!7033448))

(declare-fun m!7033456 () Bool)

(assert (=> b!6200882 m!7033456))

(assert (=> b!6200882 m!7033450))

(assert (=> b!6200882 m!7033456))

(assert (=> b!6200882 m!7033450))

(declare-fun m!7033458 () Bool)

(assert (=> b!6200882 m!7033458))

(assert (=> d!1943650 d!1943800))

(assert (=> d!1943650 d!1943794))

(declare-fun b!6200892 () Bool)

(declare-fun e!3776032 () (Set Context!11048))

(declare-fun call!518958 () (Set Context!11048))

(assert (=> b!6200892 (= e!3776032 call!518958)))

(declare-fun b!6200893 () Bool)

(declare-fun e!3776030 () (Set Context!11048))

(assert (=> b!6200893 (= e!3776030 e!3776032)))

(declare-fun c!1119395 () Bool)

(assert (=> b!6200893 (= c!1119395 (is-Concat!24985 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))))

(declare-fun bm!518949 () Bool)

(declare-fun c!1119396 () Bool)

(declare-fun call!518954 () (Set Context!11048))

(declare-fun call!518956 () List!64719)

(assert (=> bm!518949 (= call!518954 (derivationStepZipperDown!1388 (ite c!1119396 (regOne!32793 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (regOne!32792 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))))) (ite c!1119396 (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903)) (Context!11049 call!518956)) (h!71045 s!2326)))))

(declare-fun b!6200894 () Bool)

(declare-fun e!3776034 () (Set Context!11048))

(assert (=> b!6200894 (= e!3776034 call!518958)))

(declare-fun bm!518950 () Bool)

(declare-fun call!518959 () (Set Context!11048))

(declare-fun call!518955 () (Set Context!11048))

(assert (=> bm!518950 (= call!518959 call!518955)))

(declare-fun bm!518951 () Bool)

(declare-fun c!1119398 () Bool)

(assert (=> bm!518951 (= call!518956 ($colon$colon!2009 (exprs!6024 (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903))) (ite (or c!1119398 c!1119395) (regTwo!32792 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))))))))

(declare-fun b!6200895 () Bool)

(assert (=> b!6200895 (= e!3776030 (set.union call!518954 call!518959))))

(declare-fun d!1943802 () Bool)

(declare-fun c!1119397 () Bool)

(assert (=> d!1943802 (= c!1119397 (and (is-ElementMatch!16140 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (= (c!1119187 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326))))))

(declare-fun e!3776035 () (Set Context!11048))

(assert (=> d!1943802 (= (derivationStepZipperDown!1388 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))) (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903)) (h!71045 s!2326)) e!3776035)))

(declare-fun b!6200896 () Bool)

(declare-fun e!3776031 () (Set Context!11048))

(assert (=> b!6200896 (= e!3776031 (set.union call!518954 call!518955))))

(declare-fun b!6200897 () Bool)

(assert (=> b!6200897 (= e!3776034 (as set.empty (Set Context!11048)))))

(declare-fun b!6200898 () Bool)

(assert (=> b!6200898 (= e!3776035 e!3776031)))

(assert (=> b!6200898 (= c!1119396 (is-Union!16140 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))))

(declare-fun b!6200899 () Bool)

(declare-fun c!1119394 () Bool)

(assert (=> b!6200899 (= c!1119394 (is-Star!16140 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))))

(assert (=> b!6200899 (= e!3776032 e!3776034)))

(declare-fun bm!518952 () Bool)

(declare-fun call!518957 () List!64719)

(assert (=> bm!518952 (= call!518957 call!518956)))

(declare-fun bm!518953 () Bool)

(assert (=> bm!518953 (= call!518955 (derivationStepZipperDown!1388 (ite c!1119396 (regTwo!32793 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (ite c!1119398 (regTwo!32792 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (ite c!1119395 (regOne!32792 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))) (reg!16469 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))))))) (ite (or c!1119396 c!1119398) (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903)) (Context!11049 call!518957)) (h!71045 s!2326)))))

(declare-fun bm!518954 () Bool)

(assert (=> bm!518954 (= call!518958 call!518959)))

(declare-fun b!6200900 () Bool)

(assert (=> b!6200900 (= e!3776035 (set.insert (ite (or c!1119298 c!1119300) lt!2342828 (Context!11049 call!518903)) (as set.empty (Set Context!11048))))))

(declare-fun b!6200901 () Bool)

(declare-fun e!3776033 () Bool)

(assert (=> b!6200901 (= c!1119398 e!3776033)))

(declare-fun res!2564855 () Bool)

(assert (=> b!6200901 (=> (not res!2564855) (not e!3776033))))

(assert (=> b!6200901 (= res!2564855 (is-Concat!24985 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))))

(assert (=> b!6200901 (= e!3776031 e!3776030)))

(declare-fun b!6200902 () Bool)

(assert (=> b!6200902 (= e!3776033 (nullable!6133 (regOne!32792 (ite c!1119298 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119300 (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (ite c!1119297 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (reg!16469 (h!71043 (exprs!6024 (h!71044 zl!343))))))))))))

(assert (= (and d!1943802 c!1119397) b!6200900))

(assert (= (and d!1943802 (not c!1119397)) b!6200898))

(assert (= (and b!6200898 c!1119396) b!6200896))

(assert (= (and b!6200898 (not c!1119396)) b!6200901))

(assert (= (and b!6200901 res!2564855) b!6200902))

(assert (= (and b!6200901 c!1119398) b!6200895))

(assert (= (and b!6200901 (not c!1119398)) b!6200893))

(assert (= (and b!6200893 c!1119395) b!6200892))

(assert (= (and b!6200893 (not c!1119395)) b!6200899))

(assert (= (and b!6200899 c!1119394) b!6200894))

(assert (= (and b!6200899 (not c!1119394)) b!6200897))

(assert (= (or b!6200892 b!6200894) bm!518952))

(assert (= (or b!6200892 b!6200894) bm!518954))

(assert (= (or b!6200895 bm!518952) bm!518951))

(assert (= (or b!6200895 bm!518954) bm!518950))

(assert (= (or b!6200896 bm!518950) bm!518953))

(assert (= (or b!6200896 b!6200895) bm!518949))

(declare-fun m!7033460 () Bool)

(assert (=> b!6200900 m!7033460))

(declare-fun m!7033462 () Bool)

(assert (=> bm!518949 m!7033462))

(declare-fun m!7033464 () Bool)

(assert (=> b!6200902 m!7033464))

(declare-fun m!7033466 () Bool)

(assert (=> bm!518951 m!7033466))

(declare-fun m!7033468 () Bool)

(assert (=> bm!518953 m!7033468))

(assert (=> bm!518899 d!1943802))

(declare-fun d!1943804 () Bool)

(declare-fun c!1119399 () Bool)

(assert (=> d!1943804 (= c!1119399 (isEmpty!36593 (tail!11874 (t!378237 s!2326))))))

(declare-fun e!3776036 () Bool)

(assert (=> d!1943804 (= (matchZipper!2152 (derivationStepZipper!2106 (set.union lt!2342834 lt!2342833) (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))) e!3776036)))

(declare-fun b!6200903 () Bool)

(assert (=> b!6200903 (= e!3776036 (nullableZipper!1914 (derivationStepZipper!2106 (set.union lt!2342834 lt!2342833) (head!12789 (t!378237 s!2326)))))))

(declare-fun b!6200904 () Bool)

(assert (=> b!6200904 (= e!3776036 (matchZipper!2152 (derivationStepZipper!2106 (derivationStepZipper!2106 (set.union lt!2342834 lt!2342833) (head!12789 (t!378237 s!2326))) (head!12789 (tail!11874 (t!378237 s!2326)))) (tail!11874 (tail!11874 (t!378237 s!2326)))))))

(assert (= (and d!1943804 c!1119399) b!6200903))

(assert (= (and d!1943804 (not c!1119399)) b!6200904))

(assert (=> d!1943804 m!7033108))

(declare-fun m!7033470 () Bool)

(assert (=> d!1943804 m!7033470))

(assert (=> b!6200903 m!7033124))

(declare-fun m!7033472 () Bool)

(assert (=> b!6200903 m!7033472))

(assert (=> b!6200904 m!7033108))

(declare-fun m!7033474 () Bool)

(assert (=> b!6200904 m!7033474))

(assert (=> b!6200904 m!7033124))

(assert (=> b!6200904 m!7033474))

(declare-fun m!7033476 () Bool)

(assert (=> b!6200904 m!7033476))

(assert (=> b!6200904 m!7033108))

(declare-fun m!7033478 () Bool)

(assert (=> b!6200904 m!7033478))

(assert (=> b!6200904 m!7033476))

(assert (=> b!6200904 m!7033478))

(declare-fun m!7033480 () Bool)

(assert (=> b!6200904 m!7033480))

(assert (=> b!6200266 d!1943804))

(declare-fun bs!1538471 () Bool)

(declare-fun d!1943806 () Bool)

(assert (= bs!1538471 (and d!1943806 b!6200007)))

(declare-fun lambda!338832 () Int)

(assert (=> bs!1538471 (= (= (head!12789 (t!378237 s!2326)) (h!71045 s!2326)) (= lambda!338832 lambda!338756))))

(assert (=> d!1943806 true))

(assert (=> d!1943806 (= (derivationStepZipper!2106 (set.union lt!2342834 lt!2342833) (head!12789 (t!378237 s!2326))) (flatMap!1645 (set.union lt!2342834 lt!2342833) lambda!338832))))

(declare-fun bs!1538472 () Bool)

(assert (= bs!1538472 d!1943806))

(declare-fun m!7033482 () Bool)

(assert (=> bs!1538472 m!7033482))

(assert (=> b!6200266 d!1943806))

(declare-fun d!1943808 () Bool)

(assert (=> d!1943808 (= (head!12789 (t!378237 s!2326)) (h!71045 (t!378237 s!2326)))))

(assert (=> b!6200266 d!1943808))

(declare-fun d!1943810 () Bool)

(assert (=> d!1943810 (= (tail!11874 (t!378237 s!2326)) (t!378237 (t!378237 s!2326)))))

(assert (=> b!6200266 d!1943810))

(declare-fun b!6200907 () Bool)

(declare-fun e!3776039 () (Set Context!11048))

(declare-fun e!3776037 () (Set Context!11048))

(assert (=> b!6200907 (= e!3776039 e!3776037)))

(declare-fun c!1119403 () Bool)

(assert (=> b!6200907 (= c!1119403 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun d!1943812 () Bool)

(declare-fun c!1119402 () Bool)

(declare-fun e!3776038 () Bool)

(assert (=> d!1943812 (= c!1119402 e!3776038)))

(declare-fun res!2564856 () Bool)

(assert (=> d!1943812 (=> (not res!2564856) (not e!3776038))))

(assert (=> d!1943812 (= res!2564856 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))))))))

(assert (=> d!1943812 (= (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))) (h!71045 s!2326)) e!3776039)))

(declare-fun bm!518955 () Bool)

(declare-fun call!518960 () (Set Context!11048))

(assert (=> bm!518955 (= call!518960 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343)))))) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343))))))) (h!71045 s!2326)))))

(declare-fun b!6200908 () Bool)

(assert (=> b!6200908 (= e!3776037 call!518960)))

(declare-fun b!6200909 () Bool)

(assert (=> b!6200909 (= e!3776039 (set.union call!518960 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343))))))) (h!71045 s!2326))))))

(declare-fun b!6200910 () Bool)

(assert (=> b!6200910 (= e!3776037 (as set.empty (Set Context!11048)))))

(declare-fun b!6200911 () Bool)

(assert (=> b!6200911 (= e!3776038 (nullable!6133 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (h!71044 zl!343))))))))))

(assert (= (and d!1943812 res!2564856) b!6200911))

(assert (= (and d!1943812 c!1119402) b!6200909))

(assert (= (and d!1943812 (not c!1119402)) b!6200907))

(assert (= (and b!6200907 c!1119403) b!6200908))

(assert (= (and b!6200907 (not c!1119403)) b!6200910))

(assert (= (or b!6200909 b!6200908) bm!518955))

(declare-fun m!7033484 () Bool)

(assert (=> bm!518955 m!7033484))

(declare-fun m!7033486 () Bool)

(assert (=> b!6200909 m!7033486))

(declare-fun m!7033488 () Bool)

(assert (=> b!6200911 m!7033488))

(assert (=> b!6200480 d!1943812))

(declare-fun d!1943814 () Bool)

(declare-fun res!2564857 () Bool)

(declare-fun e!3776040 () Bool)

(assert (=> d!1943814 (=> res!2564857 e!3776040)))

(assert (=> d!1943814 (= res!2564857 (is-Nil!64595 (exprs!6024 setElem!42081)))))

(assert (=> d!1943814 (= (forall!15254 (exprs!6024 setElem!42081) lambda!338788) e!3776040)))

(declare-fun b!6200912 () Bool)

(declare-fun e!3776041 () Bool)

(assert (=> b!6200912 (= e!3776040 e!3776041)))

(declare-fun res!2564858 () Bool)

(assert (=> b!6200912 (=> (not res!2564858) (not e!3776041))))

(assert (=> b!6200912 (= res!2564858 (dynLambda!25476 lambda!338788 (h!71043 (exprs!6024 setElem!42081))))))

(declare-fun b!6200913 () Bool)

(assert (=> b!6200913 (= e!3776041 (forall!15254 (t!378235 (exprs!6024 setElem!42081)) lambda!338788))))

(assert (= (and d!1943814 (not res!2564857)) b!6200912))

(assert (= (and b!6200912 res!2564858) b!6200913))

(declare-fun b_lambda!235841 () Bool)

(assert (=> (not b_lambda!235841) (not b!6200912)))

(declare-fun m!7033490 () Bool)

(assert (=> b!6200912 m!7033490))

(declare-fun m!7033492 () Bool)

(assert (=> b!6200913 m!7033492))

(assert (=> d!1943666 d!1943814))

(declare-fun d!1943816 () Bool)

(assert (=> d!1943816 (= (Exists!3210 lambda!338786) (choose!46077 lambda!338786))))

(declare-fun bs!1538473 () Bool)

(assert (= bs!1538473 d!1943816))

(declare-fun m!7033494 () Bool)

(assert (=> bs!1538473 m!7033494))

(assert (=> d!1943660 d!1943816))

(declare-fun d!1943818 () Bool)

(assert (=> d!1943818 (= (Exists!3210 lambda!338787) (choose!46077 lambda!338787))))

(declare-fun bs!1538474 () Bool)

(assert (= bs!1538474 d!1943818))

(declare-fun m!7033496 () Bool)

(assert (=> bs!1538474 m!7033496))

(assert (=> d!1943660 d!1943818))

(declare-fun bs!1538475 () Bool)

(declare-fun d!1943820 () Bool)

(assert (= bs!1538475 (and d!1943820 d!1943660)))

(declare-fun lambda!338837 () Int)

(assert (=> bs!1538475 (not (= lambda!338837 lambda!338787))))

(declare-fun bs!1538476 () Bool)

(assert (= bs!1538476 (and d!1943820 b!6200316)))

(assert (=> bs!1538476 (not (= lambda!338837 lambda!338799))))

(declare-fun bs!1538477 () Bool)

(assert (= bs!1538477 (and d!1943820 d!1943792)))

(assert (=> bs!1538477 (= lambda!338837 lambda!338829)))

(declare-fun bs!1538478 () Bool)

(assert (= bs!1538478 (and d!1943820 b!6200000)))

(assert (=> bs!1538478 (not (= lambda!338837 lambda!338755))))

(declare-fun bs!1538479 () Bool)

(assert (= bs!1538479 (and d!1943820 b!6200318)))

(assert (=> bs!1538479 (not (= lambda!338837 lambda!338798))))

(assert (=> bs!1538478 (= lambda!338837 lambda!338754)))

(assert (=> bs!1538475 (= lambda!338837 lambda!338786)))

(declare-fun bs!1538480 () Bool)

(assert (= bs!1538480 (and d!1943820 d!1943656)))

(assert (=> bs!1538480 (= lambda!338837 lambda!338779)))

(assert (=> d!1943820 true))

(assert (=> d!1943820 true))

(assert (=> d!1943820 true))

(declare-fun lambda!338838 () Int)

(assert (=> bs!1538475 (= lambda!338838 lambda!338787)))

(assert (=> bs!1538476 (= lambda!338838 lambda!338799)))

(declare-fun bs!1538481 () Bool)

(assert (= bs!1538481 d!1943820))

(assert (=> bs!1538481 (not (= lambda!338838 lambda!338837))))

(assert (=> bs!1538477 (not (= lambda!338838 lambda!338829))))

(assert (=> bs!1538478 (= lambda!338838 lambda!338755)))

(assert (=> bs!1538479 (not (= lambda!338838 lambda!338798))))

(assert (=> bs!1538478 (not (= lambda!338838 lambda!338754))))

(assert (=> bs!1538475 (not (= lambda!338838 lambda!338786))))

(assert (=> bs!1538480 (not (= lambda!338838 lambda!338779))))

(assert (=> d!1943820 true))

(assert (=> d!1943820 true))

(assert (=> d!1943820 true))

(assert (=> d!1943820 (= (Exists!3210 lambda!338837) (Exists!3210 lambda!338838))))

(assert (=> d!1943820 true))

(declare-fun _$90!1968 () Unit!157891)

(assert (=> d!1943820 (= (choose!46079 (regOne!32792 r!7292) (regTwo!32792 r!7292) s!2326) _$90!1968)))

(declare-fun m!7033498 () Bool)

(assert (=> bs!1538481 m!7033498))

(declare-fun m!7033500 () Bool)

(assert (=> bs!1538481 m!7033500))

(assert (=> d!1943660 d!1943820))

(assert (=> d!1943660 d!1943794))

(declare-fun d!1943822 () Bool)

(declare-fun res!2564871 () Bool)

(declare-fun e!3776050 () Bool)

(assert (=> d!1943822 (=> res!2564871 e!3776050)))

(assert (=> d!1943822 (= res!2564871 (is-Nil!64596 lt!2342873))))

(assert (=> d!1943822 (= (noDuplicate!1978 lt!2342873) e!3776050)))

(declare-fun b!6200926 () Bool)

(declare-fun e!3776051 () Bool)

(assert (=> b!6200926 (= e!3776050 e!3776051)))

(declare-fun res!2564872 () Bool)

(assert (=> b!6200926 (=> (not res!2564872) (not e!3776051))))

(declare-fun contains!20081 (List!64720 Context!11048) Bool)

(assert (=> b!6200926 (= res!2564872 (not (contains!20081 (t!378236 lt!2342873) (h!71044 lt!2342873))))))

(declare-fun b!6200927 () Bool)

(assert (=> b!6200927 (= e!3776051 (noDuplicate!1978 (t!378236 lt!2342873)))))

(assert (= (and d!1943822 (not res!2564871)) b!6200926))

(assert (= (and b!6200926 res!2564872) b!6200927))

(declare-fun m!7033502 () Bool)

(assert (=> b!6200926 m!7033502))

(declare-fun m!7033504 () Bool)

(assert (=> b!6200927 m!7033504))

(assert (=> d!1943640 d!1943822))

(declare-fun d!1943824 () Bool)

(declare-fun e!3776058 () Bool)

(assert (=> d!1943824 e!3776058))

(declare-fun res!2564878 () Bool)

(assert (=> d!1943824 (=> (not res!2564878) (not e!3776058))))

(declare-fun res!2564877 () List!64720)

(assert (=> d!1943824 (= res!2564878 (noDuplicate!1978 res!2564877))))

(declare-fun e!3776060 () Bool)

(assert (=> d!1943824 e!3776060))

(assert (=> d!1943824 (= (choose!46076 z!1189) res!2564877)))

(declare-fun b!6200935 () Bool)

(declare-fun e!3776059 () Bool)

(declare-fun tp!1729428 () Bool)

(assert (=> b!6200935 (= e!3776059 tp!1729428)))

(declare-fun b!6200934 () Bool)

(declare-fun tp!1729427 () Bool)

(assert (=> b!6200934 (= e!3776060 (and (inv!83598 (h!71044 res!2564877)) e!3776059 tp!1729427))))

(declare-fun b!6200936 () Bool)

(assert (=> b!6200936 (= e!3776058 (= (content!12075 res!2564877) z!1189))))

(assert (= b!6200934 b!6200935))

(assert (= (and d!1943824 (is-Cons!64596 res!2564877)) b!6200934))

(assert (= (and d!1943824 res!2564878) b!6200936))

(declare-fun m!7033506 () Bool)

(assert (=> d!1943824 m!7033506))

(declare-fun m!7033508 () Bool)

(assert (=> b!6200934 m!7033508))

(declare-fun m!7033510 () Bool)

(assert (=> b!6200936 m!7033510))

(assert (=> d!1943640 d!1943824))

(declare-fun d!1943826 () Bool)

(assert (=> d!1943826 (= (Exists!3210 (ite c!1119250 lambda!338798 lambda!338799)) (choose!46077 (ite c!1119250 lambda!338798 lambda!338799)))))

(declare-fun bs!1538482 () Bool)

(assert (= bs!1538482 d!1943826))

(declare-fun m!7033512 () Bool)

(assert (=> bs!1538482 m!7033512))

(assert (=> bm!518866 d!1943826))

(assert (=> b!6200482 d!1943704))

(declare-fun b!6200937 () Bool)

(declare-fun e!3776066 () Bool)

(declare-fun call!518963 () Bool)

(assert (=> b!6200937 (= e!3776066 call!518963)))

(declare-fun b!6200938 () Bool)

(declare-fun e!3776061 () Bool)

(declare-fun e!3776064 () Bool)

(assert (=> b!6200938 (= e!3776061 e!3776064)))

(declare-fun c!1119404 () Bool)

(assert (=> b!6200938 (= c!1119404 (is-Union!16140 lt!2342876))))

(declare-fun c!1119405 () Bool)

(declare-fun bm!518956 () Bool)

(assert (=> bm!518956 (= call!518963 (validRegex!7876 (ite c!1119405 (reg!16469 lt!2342876) (ite c!1119404 (regOne!32793 lt!2342876) (regOne!32792 lt!2342876)))))))

(declare-fun b!6200939 () Bool)

(assert (=> b!6200939 (= e!3776061 e!3776066)))

(declare-fun res!2564880 () Bool)

(assert (=> b!6200939 (= res!2564880 (not (nullable!6133 (reg!16469 lt!2342876))))))

(assert (=> b!6200939 (=> (not res!2564880) (not e!3776066))))

(declare-fun b!6200940 () Bool)

(declare-fun e!3776063 () Bool)

(assert (=> b!6200940 (= e!3776063 e!3776061)))

(assert (=> b!6200940 (= c!1119405 (is-Star!16140 lt!2342876))))

(declare-fun b!6200941 () Bool)

(declare-fun e!3776067 () Bool)

(declare-fun e!3776065 () Bool)

(assert (=> b!6200941 (= e!3776067 e!3776065)))

(declare-fun res!2564879 () Bool)

(assert (=> b!6200941 (=> (not res!2564879) (not e!3776065))))

(declare-fun call!518962 () Bool)

(assert (=> b!6200941 (= res!2564879 call!518962)))

(declare-fun b!6200942 () Bool)

(declare-fun res!2564883 () Bool)

(declare-fun e!3776062 () Bool)

(assert (=> b!6200942 (=> (not res!2564883) (not e!3776062))))

(assert (=> b!6200942 (= res!2564883 call!518962)))

(assert (=> b!6200942 (= e!3776064 e!3776062)))

(declare-fun bm!518958 () Bool)

(declare-fun call!518961 () Bool)

(assert (=> bm!518958 (= call!518961 (validRegex!7876 (ite c!1119404 (regTwo!32793 lt!2342876) (regTwo!32792 lt!2342876))))))

(declare-fun b!6200943 () Bool)

(assert (=> b!6200943 (= e!3776062 call!518961)))

(declare-fun b!6200944 () Bool)

(declare-fun res!2564881 () Bool)

(assert (=> b!6200944 (=> res!2564881 e!3776067)))

(assert (=> b!6200944 (= res!2564881 (not (is-Concat!24985 lt!2342876)))))

(assert (=> b!6200944 (= e!3776064 e!3776067)))

(declare-fun b!6200945 () Bool)

(assert (=> b!6200945 (= e!3776065 call!518961)))

(declare-fun d!1943828 () Bool)

(declare-fun res!2564882 () Bool)

(assert (=> d!1943828 (=> res!2564882 e!3776063)))

(assert (=> d!1943828 (= res!2564882 (is-ElementMatch!16140 lt!2342876))))

(assert (=> d!1943828 (= (validRegex!7876 lt!2342876) e!3776063)))

(declare-fun bm!518957 () Bool)

(assert (=> bm!518957 (= call!518962 call!518963)))

(assert (= (and d!1943828 (not res!2564882)) b!6200940))

(assert (= (and b!6200940 c!1119405) b!6200939))

(assert (= (and b!6200940 (not c!1119405)) b!6200938))

(assert (= (and b!6200939 res!2564880) b!6200937))

(assert (= (and b!6200938 c!1119404) b!6200942))

(assert (= (and b!6200938 (not c!1119404)) b!6200944))

(assert (= (and b!6200942 res!2564883) b!6200943))

(assert (= (and b!6200944 (not res!2564881)) b!6200941))

(assert (= (and b!6200941 res!2564879) b!6200945))

(assert (= (or b!6200943 b!6200945) bm!518958))

(assert (= (or b!6200942 b!6200941) bm!518957))

(assert (= (or b!6200937 bm!518957) bm!518956))

(declare-fun m!7033514 () Bool)

(assert (=> bm!518956 m!7033514))

(declare-fun m!7033516 () Bool)

(assert (=> b!6200939 m!7033516))

(declare-fun m!7033518 () Bool)

(assert (=> bm!518958 m!7033518))

(assert (=> d!1943642 d!1943828))

(declare-fun d!1943830 () Bool)

(declare-fun res!2564884 () Bool)

(declare-fun e!3776068 () Bool)

(assert (=> d!1943830 (=> res!2564884 e!3776068)))

(assert (=> d!1943830 (= res!2564884 (is-Nil!64595 (unfocusZipperList!1561 zl!343)))))

(assert (=> d!1943830 (= (forall!15254 (unfocusZipperList!1561 zl!343) lambda!338770) e!3776068)))

(declare-fun b!6200946 () Bool)

(declare-fun e!3776069 () Bool)

(assert (=> b!6200946 (= e!3776068 e!3776069)))

(declare-fun res!2564885 () Bool)

(assert (=> b!6200946 (=> (not res!2564885) (not e!3776069))))

(assert (=> b!6200946 (= res!2564885 (dynLambda!25476 lambda!338770 (h!71043 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6200947 () Bool)

(assert (=> b!6200947 (= e!3776069 (forall!15254 (t!378235 (unfocusZipperList!1561 zl!343)) lambda!338770))))

(assert (= (and d!1943830 (not res!2564884)) b!6200946))

(assert (= (and b!6200946 res!2564885) b!6200947))

(declare-fun b_lambda!235843 () Bool)

(assert (=> (not b_lambda!235843) (not b!6200946)))

(declare-fun m!7033520 () Bool)

(assert (=> b!6200946 m!7033520))

(declare-fun m!7033522 () Bool)

(assert (=> b!6200947 m!7033522))

(assert (=> d!1943642 d!1943830))

(declare-fun d!1943832 () Bool)

(assert (=> d!1943832 (= (nullable!6133 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))) (nullableFct!2089 (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun bs!1538483 () Bool)

(assert (= bs!1538483 d!1943832))

(declare-fun m!7033524 () Bool)

(assert (=> bs!1538483 m!7033524))

(assert (=> b!6200473 d!1943832))

(declare-fun bs!1538484 () Bool)

(declare-fun d!1943834 () Bool)

(assert (= bs!1538484 (and d!1943834 d!1943790)))

(declare-fun lambda!338839 () Int)

(assert (=> bs!1538484 (= lambda!338839 lambda!338826)))

(declare-fun bs!1538485 () Bool)

(assert (= bs!1538485 (and d!1943834 d!1943642)))

(assert (=> bs!1538485 (= lambda!338839 lambda!338770)))

(declare-fun bs!1538486 () Bool)

(assert (= bs!1538486 (and d!1943834 d!1943646)))

(assert (=> bs!1538486 (= lambda!338839 lambda!338776)))

(declare-fun bs!1538487 () Bool)

(assert (= bs!1538487 (and d!1943834 d!1943720)))

(assert (=> bs!1538487 (= lambda!338839 lambda!338808)))

(declare-fun bs!1538488 () Bool)

(assert (= bs!1538488 (and d!1943834 d!1943668)))

(assert (=> bs!1538488 (= lambda!338839 lambda!338789)))

(declare-fun bs!1538489 () Bool)

(assert (= bs!1538489 (and d!1943834 d!1943666)))

(assert (=> bs!1538489 (= lambda!338839 lambda!338788)))

(declare-fun bs!1538490 () Bool)

(assert (= bs!1538490 (and d!1943834 d!1943644)))

(assert (=> bs!1538490 (= lambda!338839 lambda!338773)))

(declare-fun b!6200948 () Bool)

(declare-fun e!3776070 () Regex!16140)

(assert (=> b!6200948 (= e!3776070 (h!71043 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200949 () Bool)

(declare-fun e!3776073 () Regex!16140)

(assert (=> b!6200949 (= e!3776073 (Concat!24985 (h!71043 (t!378235 (exprs!6024 (h!71044 zl!343)))) (generalisedConcat!1737 (t!378235 (t!378235 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun b!6200950 () Bool)

(assert (=> b!6200950 (= e!3776070 e!3776073)))

(declare-fun c!1119408 () Bool)

(assert (=> b!6200950 (= c!1119408 (is-Cons!64595 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200951 () Bool)

(declare-fun e!3776075 () Bool)

(declare-fun lt!2342959 () Regex!16140)

(assert (=> b!6200951 (= e!3776075 (= lt!2342959 (head!12788 (t!378235 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun b!6200952 () Bool)

(declare-fun e!3776071 () Bool)

(declare-fun e!3776074 () Bool)

(assert (=> b!6200952 (= e!3776071 e!3776074)))

(declare-fun c!1119409 () Bool)

(assert (=> b!6200952 (= c!1119409 (isEmpty!36589 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6200953 () Bool)

(assert (=> b!6200953 (= e!3776074 (isEmptyExpr!1550 lt!2342959))))

(declare-fun b!6200954 () Bool)

(assert (=> b!6200954 (= e!3776073 EmptyExpr!16140)))

(declare-fun b!6200956 () Bool)

(assert (=> b!6200956 (= e!3776074 e!3776075)))

(declare-fun c!1119407 () Bool)

(assert (=> b!6200956 (= c!1119407 (isEmpty!36589 (tail!11873 (t!378235 (exprs!6024 (h!71044 zl!343))))))))

(declare-fun b!6200957 () Bool)

(declare-fun e!3776072 () Bool)

(assert (=> b!6200957 (= e!3776072 (isEmpty!36589 (t!378235 (t!378235 (exprs!6024 (h!71044 zl!343))))))))

(assert (=> d!1943834 e!3776071))

(declare-fun res!2564886 () Bool)

(assert (=> d!1943834 (=> (not res!2564886) (not e!3776071))))

(assert (=> d!1943834 (= res!2564886 (validRegex!7876 lt!2342959))))

(assert (=> d!1943834 (= lt!2342959 e!3776070)))

(declare-fun c!1119406 () Bool)

(assert (=> d!1943834 (= c!1119406 e!3776072)))

(declare-fun res!2564887 () Bool)

(assert (=> d!1943834 (=> (not res!2564887) (not e!3776072))))

(assert (=> d!1943834 (= res!2564887 (is-Cons!64595 (t!378235 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> d!1943834 (forall!15254 (t!378235 (exprs!6024 (h!71044 zl!343))) lambda!338839)))

(assert (=> d!1943834 (= (generalisedConcat!1737 (t!378235 (exprs!6024 (h!71044 zl!343)))) lt!2342959)))

(declare-fun b!6200955 () Bool)

(assert (=> b!6200955 (= e!3776075 (isConcat!1073 lt!2342959))))

(assert (= (and d!1943834 res!2564887) b!6200957))

(assert (= (and d!1943834 c!1119406) b!6200948))

(assert (= (and d!1943834 (not c!1119406)) b!6200950))

(assert (= (and b!6200950 c!1119408) b!6200949))

(assert (= (and b!6200950 (not c!1119408)) b!6200954))

(assert (= (and d!1943834 res!2564886) b!6200952))

(assert (= (and b!6200952 c!1119409) b!6200953))

(assert (= (and b!6200952 (not c!1119409)) b!6200956))

(assert (= (and b!6200956 c!1119407) b!6200951))

(assert (= (and b!6200956 (not c!1119407)) b!6200955))

(declare-fun m!7033526 () Bool)

(assert (=> b!6200956 m!7033526))

(assert (=> b!6200956 m!7033526))

(declare-fun m!7033528 () Bool)

(assert (=> b!6200956 m!7033528))

(declare-fun m!7033530 () Bool)

(assert (=> b!6200949 m!7033530))

(declare-fun m!7033532 () Bool)

(assert (=> b!6200951 m!7033532))

(assert (=> b!6200952 m!7032932))

(declare-fun m!7033534 () Bool)

(assert (=> b!6200953 m!7033534))

(declare-fun m!7033536 () Bool)

(assert (=> d!1943834 m!7033536))

(declare-fun m!7033538 () Bool)

(assert (=> d!1943834 m!7033538))

(declare-fun m!7033540 () Bool)

(assert (=> b!6200955 m!7033540))

(declare-fun m!7033542 () Bool)

(assert (=> b!6200957 m!7033542))

(assert (=> b!6200515 d!1943834))

(declare-fun b!6200958 () Bool)

(declare-fun e!3776081 () Bool)

(declare-fun call!518966 () Bool)

(assert (=> b!6200958 (= e!3776081 call!518966)))

(declare-fun b!6200959 () Bool)

(declare-fun e!3776076 () Bool)

(declare-fun e!3776079 () Bool)

(assert (=> b!6200959 (= e!3776076 e!3776079)))

(declare-fun c!1119410 () Bool)

(assert (=> b!6200959 (= c!1119410 (is-Union!16140 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))

(declare-fun bm!518959 () Bool)

(declare-fun c!1119411 () Bool)

(assert (=> bm!518959 (= call!518966 (validRegex!7876 (ite c!1119411 (reg!16469 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))) (ite c!1119410 (regOne!32793 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))) (regOne!32792 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292))))))))))

(declare-fun b!6200960 () Bool)

(assert (=> b!6200960 (= e!3776076 e!3776081)))

(declare-fun res!2564889 () Bool)

(assert (=> b!6200960 (= res!2564889 (not (nullable!6133 (reg!16469 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))))

(assert (=> b!6200960 (=> (not res!2564889) (not e!3776081))))

(declare-fun b!6200961 () Bool)

(declare-fun e!3776078 () Bool)

(assert (=> b!6200961 (= e!3776078 e!3776076)))

(assert (=> b!6200961 (= c!1119411 (is-Star!16140 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))

(declare-fun b!6200962 () Bool)

(declare-fun e!3776082 () Bool)

(declare-fun e!3776080 () Bool)

(assert (=> b!6200962 (= e!3776082 e!3776080)))

(declare-fun res!2564888 () Bool)

(assert (=> b!6200962 (=> (not res!2564888) (not e!3776080))))

(declare-fun call!518965 () Bool)

(assert (=> b!6200962 (= res!2564888 call!518965)))

(declare-fun b!6200963 () Bool)

(declare-fun res!2564892 () Bool)

(declare-fun e!3776077 () Bool)

(assert (=> b!6200963 (=> (not res!2564892) (not e!3776077))))

(assert (=> b!6200963 (= res!2564892 call!518965)))

(assert (=> b!6200963 (= e!3776079 e!3776077)))

(declare-fun bm!518961 () Bool)

(declare-fun call!518964 () Bool)

(assert (=> bm!518961 (= call!518964 (validRegex!7876 (ite c!1119410 (regTwo!32793 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))) (regTwo!32792 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))))

(declare-fun b!6200964 () Bool)

(assert (=> b!6200964 (= e!3776077 call!518964)))

(declare-fun b!6200965 () Bool)

(declare-fun res!2564890 () Bool)

(assert (=> b!6200965 (=> res!2564890 e!3776082)))

(assert (=> b!6200965 (= res!2564890 (not (is-Concat!24985 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292))))))))

(assert (=> b!6200965 (= e!3776079 e!3776082)))

(declare-fun b!6200966 () Bool)

(assert (=> b!6200966 (= e!3776080 call!518964)))

(declare-fun d!1943836 () Bool)

(declare-fun res!2564891 () Bool)

(assert (=> d!1943836 (=> res!2564891 e!3776078)))

(assert (=> d!1943836 (= res!2564891 (is-ElementMatch!16140 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))))))

(assert (=> d!1943836 (= (validRegex!7876 (ite c!1119215 (reg!16469 r!7292) (ite c!1119214 (regOne!32793 r!7292) (regOne!32792 r!7292)))) e!3776078)))

(declare-fun bm!518960 () Bool)

(assert (=> bm!518960 (= call!518965 call!518966)))

(assert (= (and d!1943836 (not res!2564891)) b!6200961))

(assert (= (and b!6200961 c!1119411) b!6200960))

(assert (= (and b!6200961 (not c!1119411)) b!6200959))

(assert (= (and b!6200960 res!2564889) b!6200958))

(assert (= (and b!6200959 c!1119410) b!6200963))

(assert (= (and b!6200959 (not c!1119410)) b!6200965))

(assert (= (and b!6200963 res!2564892) b!6200964))

(assert (= (and b!6200965 (not res!2564890)) b!6200962))

(assert (= (and b!6200962 res!2564888) b!6200966))

(assert (= (or b!6200964 b!6200966) bm!518961))

(assert (= (or b!6200963 b!6200962) bm!518960))

(assert (= (or b!6200958 bm!518960) bm!518959))

(declare-fun m!7033544 () Bool)

(assert (=> bm!518959 m!7033544))

(declare-fun m!7033546 () Bool)

(assert (=> b!6200960 m!7033546))

(declare-fun m!7033548 () Bool)

(assert (=> bm!518961 m!7033548))

(assert (=> bm!518858 d!1943836))

(declare-fun d!1943838 () Bool)

(assert (=> d!1943838 (= (isEmpty!36593 (tail!11874 s!2326)) (is-Nil!64597 (tail!11874 s!2326)))))

(assert (=> b!6200378 d!1943838))

(declare-fun d!1943840 () Bool)

(assert (=> d!1943840 (= (tail!11874 s!2326) (t!378237 s!2326))))

(assert (=> b!6200378 d!1943840))

(declare-fun d!1943842 () Bool)

(assert (=> d!1943842 true))

(assert (=> d!1943842 true))

(declare-fun res!2564895 () Bool)

(assert (=> d!1943842 (= (choose!46077 lambda!338755) res!2564895)))

(assert (=> d!1943652 d!1943842))

(declare-fun b!6200967 () Bool)

(declare-fun e!3776084 () Bool)

(declare-fun e!3776088 () Bool)

(assert (=> b!6200967 (= e!3776084 e!3776088)))

(declare-fun c!1119413 () Bool)

(assert (=> b!6200967 (= c!1119413 (is-EmptyLang!16140 (derivativeStep!4853 r!7292 (head!12789 s!2326))))))

(declare-fun b!6200968 () Bool)

(declare-fun res!2564902 () Bool)

(declare-fun e!3776086 () Bool)

(assert (=> b!6200968 (=> res!2564902 e!3776086)))

(assert (=> b!6200968 (= res!2564902 (not (is-ElementMatch!16140 (derivativeStep!4853 r!7292 (head!12789 s!2326)))))))

(assert (=> b!6200968 (= e!3776088 e!3776086)))

(declare-fun b!6200969 () Bool)

(declare-fun res!2564896 () Bool)

(declare-fun e!3776085 () Bool)

(assert (=> b!6200969 (=> (not res!2564896) (not e!3776085))))

(assert (=> b!6200969 (= res!2564896 (isEmpty!36593 (tail!11874 (tail!11874 s!2326))))))

(declare-fun d!1943844 () Bool)

(assert (=> d!1943844 e!3776084))

(declare-fun c!1119414 () Bool)

(assert (=> d!1943844 (= c!1119414 (is-EmptyExpr!16140 (derivativeStep!4853 r!7292 (head!12789 s!2326))))))

(declare-fun lt!2342960 () Bool)

(declare-fun e!3776083 () Bool)

(assert (=> d!1943844 (= lt!2342960 e!3776083)))

(declare-fun c!1119412 () Bool)

(assert (=> d!1943844 (= c!1119412 (isEmpty!36593 (tail!11874 s!2326)))))

(assert (=> d!1943844 (validRegex!7876 (derivativeStep!4853 r!7292 (head!12789 s!2326)))))

(assert (=> d!1943844 (= (matchR!8323 (derivativeStep!4853 r!7292 (head!12789 s!2326)) (tail!11874 s!2326)) lt!2342960)))

(declare-fun b!6200970 () Bool)

(declare-fun call!518967 () Bool)

(assert (=> b!6200970 (= e!3776084 (= lt!2342960 call!518967))))

(declare-fun b!6200971 () Bool)

(assert (=> b!6200971 (= e!3776083 (matchR!8323 (derivativeStep!4853 (derivativeStep!4853 r!7292 (head!12789 s!2326)) (head!12789 (tail!11874 s!2326))) (tail!11874 (tail!11874 s!2326))))))

(declare-fun b!6200972 () Bool)

(declare-fun e!3776087 () Bool)

(assert (=> b!6200972 (= e!3776087 (not (= (head!12789 (tail!11874 s!2326)) (c!1119187 (derivativeStep!4853 r!7292 (head!12789 s!2326))))))))

(declare-fun b!6200973 () Bool)

(declare-fun e!3776089 () Bool)

(assert (=> b!6200973 (= e!3776089 e!3776087)))

(declare-fun res!2564898 () Bool)

(assert (=> b!6200973 (=> res!2564898 e!3776087)))

(assert (=> b!6200973 (= res!2564898 call!518967)))

(declare-fun b!6200974 () Bool)

(assert (=> b!6200974 (= e!3776086 e!3776089)))

(declare-fun res!2564900 () Bool)

(assert (=> b!6200974 (=> (not res!2564900) (not e!3776089))))

(assert (=> b!6200974 (= res!2564900 (not lt!2342960))))

(declare-fun b!6200975 () Bool)

(declare-fun res!2564899 () Bool)

(assert (=> b!6200975 (=> res!2564899 e!3776086)))

(assert (=> b!6200975 (= res!2564899 e!3776085)))

(declare-fun res!2564903 () Bool)

(assert (=> b!6200975 (=> (not res!2564903) (not e!3776085))))

(assert (=> b!6200975 (= res!2564903 lt!2342960)))

(declare-fun b!6200976 () Bool)

(assert (=> b!6200976 (= e!3776088 (not lt!2342960))))

(declare-fun b!6200977 () Bool)

(declare-fun res!2564901 () Bool)

(assert (=> b!6200977 (=> res!2564901 e!3776087)))

(assert (=> b!6200977 (= res!2564901 (not (isEmpty!36593 (tail!11874 (tail!11874 s!2326)))))))

(declare-fun b!6200978 () Bool)

(declare-fun res!2564897 () Bool)

(assert (=> b!6200978 (=> (not res!2564897) (not e!3776085))))

(assert (=> b!6200978 (= res!2564897 (not call!518967))))

(declare-fun b!6200979 () Bool)

(assert (=> b!6200979 (= e!3776085 (= (head!12789 (tail!11874 s!2326)) (c!1119187 (derivativeStep!4853 r!7292 (head!12789 s!2326)))))))

(declare-fun b!6200980 () Bool)

(assert (=> b!6200980 (= e!3776083 (nullable!6133 (derivativeStep!4853 r!7292 (head!12789 s!2326))))))

(declare-fun bm!518962 () Bool)

(assert (=> bm!518962 (= call!518967 (isEmpty!36593 (tail!11874 s!2326)))))

(assert (= (and d!1943844 c!1119412) b!6200980))

(assert (= (and d!1943844 (not c!1119412)) b!6200971))

(assert (= (and d!1943844 c!1119414) b!6200970))

(assert (= (and d!1943844 (not c!1119414)) b!6200967))

(assert (= (and b!6200967 c!1119413) b!6200976))

(assert (= (and b!6200967 (not c!1119413)) b!6200968))

(assert (= (and b!6200968 (not res!2564902)) b!6200975))

(assert (= (and b!6200975 res!2564903) b!6200978))

(assert (= (and b!6200978 res!2564897) b!6200969))

(assert (= (and b!6200969 res!2564896) b!6200979))

(assert (= (and b!6200975 (not res!2564899)) b!6200974))

(assert (= (and b!6200974 res!2564900) b!6200973))

(assert (= (and b!6200973 (not res!2564898)) b!6200977))

(assert (= (and b!6200977 (not res!2564901)) b!6200972))

(assert (= (or b!6200970 b!6200973 b!6200978) bm!518962))

(assert (=> b!6200972 m!7033158))

(declare-fun m!7033550 () Bool)

(assert (=> b!6200972 m!7033550))

(assert (=> b!6200977 m!7033158))

(declare-fun m!7033552 () Bool)

(assert (=> b!6200977 m!7033552))

(assert (=> b!6200977 m!7033552))

(declare-fun m!7033554 () Bool)

(assert (=> b!6200977 m!7033554))

(assert (=> b!6200969 m!7033158))

(assert (=> b!6200969 m!7033552))

(assert (=> b!6200969 m!7033552))

(assert (=> b!6200969 m!7033554))

(assert (=> b!6200980 m!7033168))

(declare-fun m!7033556 () Bool)

(assert (=> b!6200980 m!7033556))

(assert (=> b!6200979 m!7033158))

(assert (=> b!6200979 m!7033550))

(assert (=> bm!518962 m!7033158))

(assert (=> bm!518962 m!7033160))

(assert (=> d!1943844 m!7033158))

(assert (=> d!1943844 m!7033160))

(assert (=> d!1943844 m!7033168))

(declare-fun m!7033558 () Bool)

(assert (=> d!1943844 m!7033558))

(assert (=> b!6200971 m!7033158))

(assert (=> b!6200971 m!7033550))

(assert (=> b!6200971 m!7033168))

(assert (=> b!6200971 m!7033550))

(declare-fun m!7033560 () Bool)

(assert (=> b!6200971 m!7033560))

(assert (=> b!6200971 m!7033158))

(assert (=> b!6200971 m!7033552))

(assert (=> b!6200971 m!7033560))

(assert (=> b!6200971 m!7033552))

(declare-fun m!7033562 () Bool)

(assert (=> b!6200971 m!7033562))

(assert (=> b!6200380 d!1943844))

(declare-fun c!1119425 () Bool)

(declare-fun c!1119429 () Bool)

(declare-fun call!518977 () Regex!16140)

(declare-fun c!1119428 () Bool)

(declare-fun bm!518971 () Bool)

(assert (=> bm!518971 (= call!518977 (derivativeStep!4853 (ite c!1119425 (regTwo!32793 r!7292) (ite c!1119428 (reg!16469 r!7292) (ite c!1119429 (regTwo!32792 r!7292) (regOne!32792 r!7292)))) (head!12789 s!2326)))))

(declare-fun b!6201001 () Bool)

(declare-fun e!3776102 () Regex!16140)

(declare-fun e!3776103 () Regex!16140)

(assert (=> b!6201001 (= e!3776102 e!3776103)))

(declare-fun c!1119426 () Bool)

(assert (=> b!6201001 (= c!1119426 (is-ElementMatch!16140 r!7292))))

(declare-fun bm!518972 () Bool)

(declare-fun call!518979 () Regex!16140)

(assert (=> bm!518972 (= call!518979 call!518977)))

(declare-fun bm!518973 () Bool)

(declare-fun call!518976 () Regex!16140)

(assert (=> bm!518973 (= call!518976 call!518979)))

(declare-fun b!6201002 () Bool)

(declare-fun e!3776104 () Regex!16140)

(declare-fun e!3776100 () Regex!16140)

(assert (=> b!6201002 (= e!3776104 e!3776100)))

(assert (=> b!6201002 (= c!1119428 (is-Star!16140 r!7292))))

(declare-fun d!1943846 () Bool)

(declare-fun lt!2342963 () Regex!16140)

(assert (=> d!1943846 (validRegex!7876 lt!2342963)))

(assert (=> d!1943846 (= lt!2342963 e!3776102)))

(declare-fun c!1119427 () Bool)

(assert (=> d!1943846 (= c!1119427 (or (is-EmptyExpr!16140 r!7292) (is-EmptyLang!16140 r!7292)))))

(assert (=> d!1943846 (validRegex!7876 r!7292)))

(assert (=> d!1943846 (= (derivativeStep!4853 r!7292 (head!12789 s!2326)) lt!2342963)))

(declare-fun b!6201003 () Bool)

(assert (=> b!6201003 (= c!1119429 (nullable!6133 (regOne!32792 r!7292)))))

(declare-fun e!3776101 () Regex!16140)

(assert (=> b!6201003 (= e!3776100 e!3776101)))

(declare-fun b!6201004 () Bool)

(assert (=> b!6201004 (= e!3776101 (Union!16140 (Concat!24985 call!518976 (regTwo!32792 r!7292)) EmptyLang!16140))))

(declare-fun b!6201005 () Bool)

(assert (=> b!6201005 (= e!3776102 EmptyLang!16140)))

(declare-fun b!6201006 () Bool)

(declare-fun call!518978 () Regex!16140)

(assert (=> b!6201006 (= e!3776104 (Union!16140 call!518978 call!518977))))

(declare-fun b!6201007 () Bool)

(assert (=> b!6201007 (= e!3776100 (Concat!24985 call!518979 r!7292))))

(declare-fun bm!518974 () Bool)

(assert (=> bm!518974 (= call!518978 (derivativeStep!4853 (ite c!1119425 (regOne!32793 r!7292) (regOne!32792 r!7292)) (head!12789 s!2326)))))

(declare-fun b!6201008 () Bool)

(assert (=> b!6201008 (= e!3776101 (Union!16140 (Concat!24985 call!518978 (regTwo!32792 r!7292)) call!518976))))

(declare-fun b!6201009 () Bool)

(assert (=> b!6201009 (= e!3776103 (ite (= (head!12789 s!2326) (c!1119187 r!7292)) EmptyExpr!16140 EmptyLang!16140))))

(declare-fun b!6201010 () Bool)

(assert (=> b!6201010 (= c!1119425 (is-Union!16140 r!7292))))

(assert (=> b!6201010 (= e!3776103 e!3776104)))

(assert (= (and d!1943846 c!1119427) b!6201005))

(assert (= (and d!1943846 (not c!1119427)) b!6201001))

(assert (= (and b!6201001 c!1119426) b!6201009))

(assert (= (and b!6201001 (not c!1119426)) b!6201010))

(assert (= (and b!6201010 c!1119425) b!6201006))

(assert (= (and b!6201010 (not c!1119425)) b!6201002))

(assert (= (and b!6201002 c!1119428) b!6201007))

(assert (= (and b!6201002 (not c!1119428)) b!6201003))

(assert (= (and b!6201003 c!1119429) b!6201008))

(assert (= (and b!6201003 (not c!1119429)) b!6201004))

(assert (= (or b!6201008 b!6201004) bm!518973))

(assert (= (or b!6201007 bm!518973) bm!518972))

(assert (= (or b!6201006 bm!518972) bm!518971))

(assert (= (or b!6201006 b!6201008) bm!518974))

(assert (=> bm!518971 m!7033156))

(declare-fun m!7033564 () Bool)

(assert (=> bm!518971 m!7033564))

(declare-fun m!7033566 () Bool)

(assert (=> d!1943846 m!7033566))

(assert (=> d!1943846 m!7032876))

(assert (=> b!6201003 m!7033416))

(assert (=> bm!518974 m!7033156))

(declare-fun m!7033568 () Bool)

(assert (=> bm!518974 m!7033568))

(assert (=> b!6200380 d!1943846))

(declare-fun d!1943848 () Bool)

(assert (=> d!1943848 (= (head!12789 s!2326) (h!71045 s!2326))))

(assert (=> b!6200380 d!1943848))

(assert (=> b!6200380 d!1943840))

(declare-fun d!1943850 () Bool)

(assert (=> d!1943850 (= (head!12788 (exprs!6024 (h!71044 zl!343))) (h!71043 (exprs!6024 (h!71044 zl!343))))))

(assert (=> b!6200517 d!1943850))

(declare-fun b!6201011 () Bool)

(declare-fun e!3776110 () Bool)

(declare-fun call!518982 () Bool)

(assert (=> b!6201011 (= e!3776110 call!518982)))

(declare-fun b!6201012 () Bool)

(declare-fun e!3776105 () Bool)

(declare-fun e!3776108 () Bool)

(assert (=> b!6201012 (= e!3776105 e!3776108)))

(declare-fun c!1119430 () Bool)

(assert (=> b!6201012 (= c!1119430 (is-Union!16140 lt!2342921))))

(declare-fun bm!518975 () Bool)

(declare-fun c!1119431 () Bool)

(assert (=> bm!518975 (= call!518982 (validRegex!7876 (ite c!1119431 (reg!16469 lt!2342921) (ite c!1119430 (regOne!32793 lt!2342921) (regOne!32792 lt!2342921)))))))

(declare-fun b!6201013 () Bool)

(assert (=> b!6201013 (= e!3776105 e!3776110)))

(declare-fun res!2564905 () Bool)

(assert (=> b!6201013 (= res!2564905 (not (nullable!6133 (reg!16469 lt!2342921))))))

(assert (=> b!6201013 (=> (not res!2564905) (not e!3776110))))

(declare-fun b!6201014 () Bool)

(declare-fun e!3776107 () Bool)

(assert (=> b!6201014 (= e!3776107 e!3776105)))

(assert (=> b!6201014 (= c!1119431 (is-Star!16140 lt!2342921))))

(declare-fun b!6201015 () Bool)

(declare-fun e!3776111 () Bool)

(declare-fun e!3776109 () Bool)

(assert (=> b!6201015 (= e!3776111 e!3776109)))

(declare-fun res!2564904 () Bool)

(assert (=> b!6201015 (=> (not res!2564904) (not e!3776109))))

(declare-fun call!518981 () Bool)

(assert (=> b!6201015 (= res!2564904 call!518981)))

(declare-fun b!6201016 () Bool)

(declare-fun res!2564908 () Bool)

(declare-fun e!3776106 () Bool)

(assert (=> b!6201016 (=> (not res!2564908) (not e!3776106))))

(assert (=> b!6201016 (= res!2564908 call!518981)))

(assert (=> b!6201016 (= e!3776108 e!3776106)))

(declare-fun bm!518977 () Bool)

(declare-fun call!518980 () Bool)

(assert (=> bm!518977 (= call!518980 (validRegex!7876 (ite c!1119430 (regTwo!32793 lt!2342921) (regTwo!32792 lt!2342921))))))

(declare-fun b!6201017 () Bool)

(assert (=> b!6201017 (= e!3776106 call!518980)))

(declare-fun b!6201018 () Bool)

(declare-fun res!2564906 () Bool)

(assert (=> b!6201018 (=> res!2564906 e!3776111)))

(assert (=> b!6201018 (= res!2564906 (not (is-Concat!24985 lt!2342921)))))

(assert (=> b!6201018 (= e!3776108 e!3776111)))

(declare-fun b!6201019 () Bool)

(assert (=> b!6201019 (= e!3776109 call!518980)))

(declare-fun d!1943852 () Bool)

(declare-fun res!2564907 () Bool)

(assert (=> d!1943852 (=> res!2564907 e!3776107)))

(assert (=> d!1943852 (= res!2564907 (is-ElementMatch!16140 lt!2342921))))

(assert (=> d!1943852 (= (validRegex!7876 lt!2342921) e!3776107)))

(declare-fun bm!518976 () Bool)

(assert (=> bm!518976 (= call!518981 call!518982)))

(assert (= (and d!1943852 (not res!2564907)) b!6201014))

(assert (= (and b!6201014 c!1119431) b!6201013))

(assert (= (and b!6201014 (not c!1119431)) b!6201012))

(assert (= (and b!6201013 res!2564905) b!6201011))

(assert (= (and b!6201012 c!1119430) b!6201016))

(assert (= (and b!6201012 (not c!1119430)) b!6201018))

(assert (= (and b!6201016 res!2564908) b!6201017))

(assert (= (and b!6201018 (not res!2564906)) b!6201015))

(assert (= (and b!6201015 res!2564904) b!6201019))

(assert (= (or b!6201017 b!6201019) bm!518977))

(assert (= (or b!6201016 b!6201015) bm!518976))

(assert (= (or b!6201011 bm!518976) bm!518975))

(declare-fun m!7033570 () Bool)

(assert (=> bm!518975 m!7033570))

(declare-fun m!7033572 () Bool)

(assert (=> b!6201013 m!7033572))

(declare-fun m!7033574 () Bool)

(assert (=> bm!518977 m!7033574))

(assert (=> d!1943720 d!1943852))

(declare-fun d!1943854 () Bool)

(declare-fun res!2564909 () Bool)

(declare-fun e!3776112 () Bool)

(assert (=> d!1943854 (=> res!2564909 e!3776112)))

(assert (=> d!1943854 (= res!2564909 (is-Nil!64595 (exprs!6024 (h!71044 zl!343))))))

(assert (=> d!1943854 (= (forall!15254 (exprs!6024 (h!71044 zl!343)) lambda!338808) e!3776112)))

(declare-fun b!6201020 () Bool)

(declare-fun e!3776113 () Bool)

(assert (=> b!6201020 (= e!3776112 e!3776113)))

(declare-fun res!2564910 () Bool)

(assert (=> b!6201020 (=> (not res!2564910) (not e!3776113))))

(assert (=> b!6201020 (= res!2564910 (dynLambda!25476 lambda!338808 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6201021 () Bool)

(assert (=> b!6201021 (= e!3776113 (forall!15254 (t!378235 (exprs!6024 (h!71044 zl!343))) lambda!338808))))

(assert (= (and d!1943854 (not res!2564909)) b!6201020))

(assert (= (and b!6201020 res!2564910) b!6201021))

(declare-fun b_lambda!235845 () Bool)

(assert (=> (not b_lambda!235845) (not b!6201020)))

(declare-fun m!7033576 () Bool)

(assert (=> b!6201020 m!7033576))

(declare-fun m!7033578 () Bool)

(assert (=> b!6201021 m!7033578))

(assert (=> d!1943720 d!1943854))

(declare-fun d!1943856 () Bool)

(declare-fun lambda!338842 () Int)

(declare-fun exists!2471 ((Set Context!11048) Int) Bool)

(assert (=> d!1943856 (= (nullableZipper!1914 lt!2342834) (exists!2471 lt!2342834 lambda!338842))))

(declare-fun bs!1538491 () Bool)

(assert (= bs!1538491 d!1943856))

(declare-fun m!7033580 () Bool)

(assert (=> bs!1538491 m!7033580))

(assert (=> b!6200263 d!1943856))

(declare-fun d!1943858 () Bool)

(assert (=> d!1943858 (= (isEmpty!36589 (t!378235 (unfocusZipperList!1561 zl!343))) (is-Nil!64595 (t!378235 (unfocusZipperList!1561 zl!343))))))

(assert (=> b!6200142 d!1943858))

(declare-fun b!6201022 () Bool)

(declare-fun e!3776116 () (Set Context!11048))

(declare-fun call!518987 () (Set Context!11048))

(assert (=> b!6201022 (= e!3776116 call!518987)))

(declare-fun b!6201023 () Bool)

(declare-fun e!3776114 () (Set Context!11048))

(assert (=> b!6201023 (= e!3776114 e!3776116)))

(declare-fun c!1119435 () Bool)

(assert (=> b!6201023 (= c!1119435 (is-Concat!24985 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(declare-fun call!518985 () List!64719)

(declare-fun c!1119436 () Bool)

(declare-fun bm!518978 () Bool)

(declare-fun call!518983 () (Set Context!11048))

(assert (=> bm!518978 (= call!518983 (derivationStepZipperDown!1388 (ite c!1119436 (regOne!32793 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (regOne!32792 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))) (ite c!1119436 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (Context!11049 call!518985)) (h!71045 s!2326)))))

(declare-fun b!6201024 () Bool)

(declare-fun e!3776118 () (Set Context!11048))

(assert (=> b!6201024 (= e!3776118 call!518987)))

(declare-fun bm!518979 () Bool)

(declare-fun call!518988 () (Set Context!11048))

(declare-fun call!518984 () (Set Context!11048))

(assert (=> bm!518979 (= call!518988 call!518984)))

(declare-fun c!1119438 () Bool)

(declare-fun bm!518980 () Bool)

(assert (=> bm!518980 (= call!518985 ($colon$colon!2009 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))) (ite (or c!1119438 c!1119435) (regTwo!32792 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))))

(declare-fun b!6201025 () Bool)

(assert (=> b!6201025 (= e!3776114 (set.union call!518983 call!518988))))

(declare-fun d!1943860 () Bool)

(declare-fun c!1119437 () Bool)

(assert (=> d!1943860 (= c!1119437 (and (is-ElementMatch!16140 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (= (c!1119187 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326))))))

(declare-fun e!3776119 () (Set Context!11048))

(assert (=> d!1943860 (= (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326)) e!3776119)))

(declare-fun b!6201026 () Bool)

(declare-fun e!3776115 () (Set Context!11048))

(assert (=> b!6201026 (= e!3776115 (set.union call!518983 call!518984))))

(declare-fun b!6201027 () Bool)

(assert (=> b!6201027 (= e!3776118 (as set.empty (Set Context!11048)))))

(declare-fun b!6201028 () Bool)

(assert (=> b!6201028 (= e!3776119 e!3776115)))

(assert (=> b!6201028 (= c!1119436 (is-Union!16140 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(declare-fun b!6201029 () Bool)

(declare-fun c!1119434 () Bool)

(assert (=> b!6201029 (= c!1119434 (is-Star!16140 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(assert (=> b!6201029 (= e!3776116 e!3776118)))

(declare-fun bm!518981 () Bool)

(declare-fun call!518986 () List!64719)

(assert (=> bm!518981 (= call!518986 call!518985)))

(declare-fun bm!518982 () Bool)

(assert (=> bm!518982 (= call!518984 (derivationStepZipperDown!1388 (ite c!1119436 (regTwo!32793 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (ite c!1119438 (regTwo!32792 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (ite c!1119435 (regOne!32792 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (reg!16469 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))) (ite (or c!1119436 c!1119438) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (Context!11049 call!518986)) (h!71045 s!2326)))))

(declare-fun bm!518983 () Bool)

(assert (=> bm!518983 (= call!518987 call!518988)))

(declare-fun b!6201030 () Bool)

(assert (=> b!6201030 (= e!3776119 (set.insert (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (as set.empty (Set Context!11048))))))

(declare-fun b!6201031 () Bool)

(declare-fun e!3776117 () Bool)

(assert (=> b!6201031 (= c!1119438 e!3776117)))

(declare-fun res!2564911 () Bool)

(assert (=> b!6201031 (=> (not res!2564911) (not e!3776117))))

(assert (=> b!6201031 (= res!2564911 (is-Concat!24985 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(assert (=> b!6201031 (= e!3776115 e!3776114)))

(declare-fun b!6201032 () Bool)

(assert (=> b!6201032 (= e!3776117 (nullable!6133 (regOne!32792 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))))

(assert (= (and d!1943860 c!1119437) b!6201030))

(assert (= (and d!1943860 (not c!1119437)) b!6201028))

(assert (= (and b!6201028 c!1119436) b!6201026))

(assert (= (and b!6201028 (not c!1119436)) b!6201031))

(assert (= (and b!6201031 res!2564911) b!6201032))

(assert (= (and b!6201031 c!1119438) b!6201025))

(assert (= (and b!6201031 (not c!1119438)) b!6201023))

(assert (= (and b!6201023 c!1119435) b!6201022))

(assert (= (and b!6201023 (not c!1119435)) b!6201029))

(assert (= (and b!6201029 c!1119434) b!6201024))

(assert (= (and b!6201029 (not c!1119434)) b!6201027))

(assert (= (or b!6201022 b!6201024) bm!518981))

(assert (= (or b!6201022 b!6201024) bm!518983))

(assert (= (or b!6201025 bm!518981) bm!518980))

(assert (= (or b!6201025 bm!518983) bm!518979))

(assert (= (or b!6201026 bm!518979) bm!518982))

(assert (= (or b!6201026 b!6201025) bm!518978))

(declare-fun m!7033582 () Bool)

(assert (=> b!6201030 m!7033582))

(declare-fun m!7033584 () Bool)

(assert (=> bm!518978 m!7033584))

(declare-fun m!7033586 () Bool)

(assert (=> b!6201032 m!7033586))

(declare-fun m!7033588 () Bool)

(assert (=> bm!518980 m!7033588))

(declare-fun m!7033590 () Bool)

(assert (=> bm!518982 m!7033590))

(assert (=> bm!518881 d!1943860))

(declare-fun d!1943862 () Bool)

(assert (=> d!1943862 (= (isEmptyExpr!1550 lt!2342921) (is-EmptyExpr!16140 lt!2342921))))

(assert (=> b!6200519 d!1943862))

(declare-fun b!6201033 () Bool)

(declare-fun e!3776122 () (Set Context!11048))

(declare-fun call!518993 () (Set Context!11048))

(assert (=> b!6201033 (= e!3776122 call!518993)))

(declare-fun b!6201034 () Bool)

(declare-fun e!3776120 () (Set Context!11048))

(assert (=> b!6201034 (= e!3776120 e!3776122)))

(declare-fun c!1119440 () Bool)

(assert (=> b!6201034 (= c!1119440 (is-Concat!24985 (h!71043 (exprs!6024 lt!2342828))))))

(declare-fun bm!518984 () Bool)

(declare-fun c!1119441 () Bool)

(declare-fun call!518991 () List!64719)

(declare-fun call!518989 () (Set Context!11048))

(assert (=> bm!518984 (= call!518989 (derivationStepZipperDown!1388 (ite c!1119441 (regOne!32793 (h!71043 (exprs!6024 lt!2342828))) (regOne!32792 (h!71043 (exprs!6024 lt!2342828)))) (ite c!1119441 (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (Context!11049 call!518991)) (h!71045 s!2326)))))

(declare-fun b!6201035 () Bool)

(declare-fun e!3776124 () (Set Context!11048))

(assert (=> b!6201035 (= e!3776124 call!518993)))

(declare-fun bm!518985 () Bool)

(declare-fun call!518994 () (Set Context!11048))

(declare-fun call!518990 () (Set Context!11048))

(assert (=> bm!518985 (= call!518994 call!518990)))

(declare-fun bm!518986 () Bool)

(declare-fun c!1119443 () Bool)

(assert (=> bm!518986 (= call!518991 ($colon$colon!2009 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828)))) (ite (or c!1119443 c!1119440) (regTwo!32792 (h!71043 (exprs!6024 lt!2342828))) (h!71043 (exprs!6024 lt!2342828)))))))

(declare-fun b!6201036 () Bool)

(assert (=> b!6201036 (= e!3776120 (set.union call!518989 call!518994))))

(declare-fun d!1943864 () Bool)

(declare-fun c!1119442 () Bool)

(assert (=> d!1943864 (= c!1119442 (and (is-ElementMatch!16140 (h!71043 (exprs!6024 lt!2342828))) (= (c!1119187 (h!71043 (exprs!6024 lt!2342828))) (h!71045 s!2326))))))

(declare-fun e!3776125 () (Set Context!11048))

(assert (=> d!1943864 (= (derivationStepZipperDown!1388 (h!71043 (exprs!6024 lt!2342828)) (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (h!71045 s!2326)) e!3776125)))

(declare-fun b!6201037 () Bool)

(declare-fun e!3776121 () (Set Context!11048))

(assert (=> b!6201037 (= e!3776121 (set.union call!518989 call!518990))))

(declare-fun b!6201038 () Bool)

(assert (=> b!6201038 (= e!3776124 (as set.empty (Set Context!11048)))))

(declare-fun b!6201039 () Bool)

(assert (=> b!6201039 (= e!3776125 e!3776121)))

(assert (=> b!6201039 (= c!1119441 (is-Union!16140 (h!71043 (exprs!6024 lt!2342828))))))

(declare-fun b!6201040 () Bool)

(declare-fun c!1119439 () Bool)

(assert (=> b!6201040 (= c!1119439 (is-Star!16140 (h!71043 (exprs!6024 lt!2342828))))))

(assert (=> b!6201040 (= e!3776122 e!3776124)))

(declare-fun bm!518987 () Bool)

(declare-fun call!518992 () List!64719)

(assert (=> bm!518987 (= call!518992 call!518991)))

(declare-fun bm!518988 () Bool)

(assert (=> bm!518988 (= call!518990 (derivationStepZipperDown!1388 (ite c!1119441 (regTwo!32793 (h!71043 (exprs!6024 lt!2342828))) (ite c!1119443 (regTwo!32792 (h!71043 (exprs!6024 lt!2342828))) (ite c!1119440 (regOne!32792 (h!71043 (exprs!6024 lt!2342828))) (reg!16469 (h!71043 (exprs!6024 lt!2342828)))))) (ite (or c!1119441 c!1119443) (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (Context!11049 call!518992)) (h!71045 s!2326)))))

(declare-fun bm!518989 () Bool)

(assert (=> bm!518989 (= call!518993 call!518994)))

(declare-fun b!6201041 () Bool)

(assert (=> b!6201041 (= e!3776125 (set.insert (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (as set.empty (Set Context!11048))))))

(declare-fun b!6201042 () Bool)

(declare-fun e!3776123 () Bool)

(assert (=> b!6201042 (= c!1119443 e!3776123)))

(declare-fun res!2564912 () Bool)

(assert (=> b!6201042 (=> (not res!2564912) (not e!3776123))))

(assert (=> b!6201042 (= res!2564912 (is-Concat!24985 (h!71043 (exprs!6024 lt!2342828))))))

(assert (=> b!6201042 (= e!3776121 e!3776120)))

(declare-fun b!6201043 () Bool)

(assert (=> b!6201043 (= e!3776123 (nullable!6133 (regOne!32792 (h!71043 (exprs!6024 lt!2342828)))))))

(assert (= (and d!1943864 c!1119442) b!6201041))

(assert (= (and d!1943864 (not c!1119442)) b!6201039))

(assert (= (and b!6201039 c!1119441) b!6201037))

(assert (= (and b!6201039 (not c!1119441)) b!6201042))

(assert (= (and b!6201042 res!2564912) b!6201043))

(assert (= (and b!6201042 c!1119443) b!6201036))

(assert (= (and b!6201042 (not c!1119443)) b!6201034))

(assert (= (and b!6201034 c!1119440) b!6201033))

(assert (= (and b!6201034 (not c!1119440)) b!6201040))

(assert (= (and b!6201040 c!1119439) b!6201035))

(assert (= (and b!6201040 (not c!1119439)) b!6201038))

(assert (= (or b!6201033 b!6201035) bm!518987))

(assert (= (or b!6201033 b!6201035) bm!518989))

(assert (= (or b!6201036 bm!518987) bm!518986))

(assert (= (or b!6201036 bm!518989) bm!518985))

(assert (= (or b!6201037 bm!518985) bm!518988))

(assert (= (or b!6201037 b!6201036) bm!518984))

(declare-fun m!7033592 () Bool)

(assert (=> b!6201041 m!7033592))

(declare-fun m!7033594 () Bool)

(assert (=> bm!518984 m!7033594))

(declare-fun m!7033596 () Bool)

(assert (=> b!6201043 m!7033596))

(declare-fun m!7033598 () Bool)

(assert (=> bm!518986 m!7033598))

(declare-fun m!7033600 () Bool)

(assert (=> bm!518988 m!7033600))

(assert (=> bm!518882 d!1943864))

(declare-fun b!6201044 () Bool)

(declare-fun e!3776131 () Bool)

(declare-fun call!518997 () Bool)

(assert (=> b!6201044 (= e!3776131 call!518997)))

(declare-fun b!6201045 () Bool)

(declare-fun e!3776126 () Bool)

(declare-fun e!3776129 () Bool)

(assert (=> b!6201045 (= e!3776126 e!3776129)))

(declare-fun c!1119444 () Bool)

(assert (=> b!6201045 (= c!1119444 (is-Union!16140 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))

(declare-fun bm!518990 () Bool)

(declare-fun c!1119445 () Bool)

(assert (=> bm!518990 (= call!518997 (validRegex!7876 (ite c!1119445 (reg!16469 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))) (ite c!1119444 (regOne!32793 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))) (regOne!32792 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292)))))))))

(declare-fun b!6201046 () Bool)

(assert (=> b!6201046 (= e!3776126 e!3776131)))

(declare-fun res!2564914 () Bool)

(assert (=> b!6201046 (= res!2564914 (not (nullable!6133 (reg!16469 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))))

(assert (=> b!6201046 (=> (not res!2564914) (not e!3776131))))

(declare-fun b!6201047 () Bool)

(declare-fun e!3776128 () Bool)

(assert (=> b!6201047 (= e!3776128 e!3776126)))

(assert (=> b!6201047 (= c!1119445 (is-Star!16140 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))

(declare-fun b!6201048 () Bool)

(declare-fun e!3776132 () Bool)

(declare-fun e!3776130 () Bool)

(assert (=> b!6201048 (= e!3776132 e!3776130)))

(declare-fun res!2564913 () Bool)

(assert (=> b!6201048 (=> (not res!2564913) (not e!3776130))))

(declare-fun call!518996 () Bool)

(assert (=> b!6201048 (= res!2564913 call!518996)))

(declare-fun b!6201049 () Bool)

(declare-fun res!2564917 () Bool)

(declare-fun e!3776127 () Bool)

(assert (=> b!6201049 (=> (not res!2564917) (not e!3776127))))

(assert (=> b!6201049 (= res!2564917 call!518996)))

(assert (=> b!6201049 (= e!3776129 e!3776127)))

(declare-fun bm!518992 () Bool)

(declare-fun call!518995 () Bool)

(assert (=> bm!518992 (= call!518995 (validRegex!7876 (ite c!1119444 (regTwo!32793 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))) (regTwo!32792 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))))

(declare-fun b!6201050 () Bool)

(assert (=> b!6201050 (= e!3776127 call!518995)))

(declare-fun b!6201051 () Bool)

(declare-fun res!2564915 () Bool)

(assert (=> b!6201051 (=> res!2564915 e!3776132)))

(assert (=> b!6201051 (= res!2564915 (not (is-Concat!24985 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292)))))))

(assert (=> b!6201051 (= e!3776129 e!3776132)))

(declare-fun b!6201052 () Bool)

(assert (=> b!6201052 (= e!3776130 call!518995)))

(declare-fun d!1943866 () Bool)

(declare-fun res!2564916 () Bool)

(assert (=> d!1943866 (=> res!2564916 e!3776128)))

(assert (=> d!1943866 (= res!2564916 (is-ElementMatch!16140 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))))))

(assert (=> d!1943866 (= (validRegex!7876 (ite c!1119214 (regTwo!32793 r!7292) (regTwo!32792 r!7292))) e!3776128)))

(declare-fun bm!518991 () Bool)

(assert (=> bm!518991 (= call!518996 call!518997)))

(assert (= (and d!1943866 (not res!2564916)) b!6201047))

(assert (= (and b!6201047 c!1119445) b!6201046))

(assert (= (and b!6201047 (not c!1119445)) b!6201045))

(assert (= (and b!6201046 res!2564914) b!6201044))

(assert (= (and b!6201045 c!1119444) b!6201049))

(assert (= (and b!6201045 (not c!1119444)) b!6201051))

(assert (= (and b!6201049 res!2564917) b!6201050))

(assert (= (and b!6201051 (not res!2564915)) b!6201048))

(assert (= (and b!6201048 res!2564913) b!6201052))

(assert (= (or b!6201050 b!6201052) bm!518992))

(assert (= (or b!6201049 b!6201048) bm!518991))

(assert (= (or b!6201044 bm!518991) bm!518990))

(declare-fun m!7033602 () Bool)

(assert (=> bm!518990 m!7033602))

(declare-fun m!7033604 () Bool)

(assert (=> b!6201046 m!7033604))

(declare-fun m!7033606 () Bool)

(assert (=> bm!518992 m!7033606))

(assert (=> bm!518860 d!1943866))

(assert (=> d!1943694 d!1943774))

(assert (=> d!1943694 d!1943648))

(declare-fun b!6201053 () Bool)

(declare-fun e!3776135 () (Set Context!11048))

(declare-fun e!3776133 () (Set Context!11048))

(assert (=> b!6201053 (= e!3776135 e!3776133)))

(declare-fun c!1119447 () Bool)

(assert (=> b!6201053 (= c!1119447 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))))

(declare-fun d!1943868 () Bool)

(declare-fun c!1119446 () Bool)

(declare-fun e!3776134 () Bool)

(assert (=> d!1943868 (= c!1119446 e!3776134)))

(declare-fun res!2564918 () Bool)

(assert (=> d!1943868 (=> (not res!2564918) (not e!3776134))))

(assert (=> d!1943868 (= res!2564918 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))))

(assert (=> d!1943868 (= (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (h!71045 s!2326)) e!3776135)))

(declare-fun bm!518993 () Bool)

(declare-fun call!518998 () (Set Context!11048))

(assert (=> bm!518993 (= call!518998 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))) (h!71045 s!2326)))))

(declare-fun b!6201054 () Bool)

(assert (=> b!6201054 (= e!3776133 call!518998)))

(declare-fun b!6201055 () Bool)

(assert (=> b!6201055 (= e!3776135 (set.union call!518998 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))) (h!71045 s!2326))))))

(declare-fun b!6201056 () Bool)

(assert (=> b!6201056 (= e!3776133 (as set.empty (Set Context!11048)))))

(declare-fun b!6201057 () Bool)

(assert (=> b!6201057 (= e!3776134 (nullable!6133 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))))))))))

(assert (= (and d!1943868 res!2564918) b!6201057))

(assert (= (and d!1943868 c!1119446) b!6201055))

(assert (= (and d!1943868 (not c!1119446)) b!6201053))

(assert (= (and b!6201053 c!1119447) b!6201054))

(assert (= (and b!6201053 (not c!1119447)) b!6201056))

(assert (= (or b!6201055 b!6201054) bm!518993))

(declare-fun m!7033608 () Bool)

(assert (=> bm!518993 m!7033608))

(declare-fun m!7033610 () Bool)

(assert (=> b!6201055 m!7033610))

(declare-fun m!7033612 () Bool)

(assert (=> b!6201057 m!7033612))

(assert (=> b!6200405 d!1943868))

(declare-fun d!1943870 () Bool)

(assert (=> d!1943870 (= (isConcat!1073 lt!2342921) (is-Concat!24985 lt!2342921))))

(assert (=> b!6200521 d!1943870))

(declare-fun b!6201058 () Bool)

(declare-fun e!3776138 () (Set Context!11048))

(declare-fun e!3776136 () (Set Context!11048))

(assert (=> b!6201058 (= e!3776138 e!3776136)))

(declare-fun c!1119449 () Bool)

(assert (=> b!6201058 (= c!1119449 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828))))))))

(declare-fun d!1943872 () Bool)

(declare-fun c!1119448 () Bool)

(declare-fun e!3776137 () Bool)

(assert (=> d!1943872 (= c!1119448 e!3776137)))

(declare-fun res!2564919 () Bool)

(assert (=> d!1943872 (=> (not res!2564919) (not e!3776137))))

(assert (=> d!1943872 (= res!2564919 (is-Cons!64595 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828))))))))

(assert (=> d!1943872 (= (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 lt!2342828))) (h!71045 s!2326)) e!3776138)))

(declare-fun bm!518994 () Bool)

(declare-fun call!518999 () (Set Context!11048))

(assert (=> bm!518994 (= call!518999 (derivationStepZipperDown!1388 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828))))) (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828)))))) (h!71045 s!2326)))))

(declare-fun b!6201059 () Bool)

(assert (=> b!6201059 (= e!3776136 call!518999)))

(declare-fun b!6201060 () Bool)

(assert (=> b!6201060 (= e!3776138 (set.union call!518999 (derivationStepZipperUp!1314 (Context!11049 (t!378235 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828)))))) (h!71045 s!2326))))))

(declare-fun b!6201061 () Bool)

(assert (=> b!6201061 (= e!3776136 (as set.empty (Set Context!11048)))))

(declare-fun b!6201062 () Bool)

(assert (=> b!6201062 (= e!3776137 (nullable!6133 (h!71043 (exprs!6024 (Context!11049 (t!378235 (exprs!6024 lt!2342828)))))))))

(assert (= (and d!1943872 res!2564919) b!6201062))

(assert (= (and d!1943872 c!1119448) b!6201060))

(assert (= (and d!1943872 (not c!1119448)) b!6201058))

(assert (= (and b!6201058 c!1119449) b!6201059))

(assert (= (and b!6201058 (not c!1119449)) b!6201061))

(assert (= (or b!6201060 b!6201059) bm!518994))

(declare-fun m!7033614 () Bool)

(assert (=> bm!518994 m!7033614))

(declare-fun m!7033616 () Bool)

(assert (=> b!6201060 m!7033616))

(declare-fun m!7033618 () Bool)

(assert (=> b!6201062 m!7033618))

(assert (=> b!6200410 d!1943872))

(declare-fun b!6201074 () Bool)

(declare-fun e!3776143 () Bool)

(declare-fun lt!2342966 () List!64721)

(assert (=> b!6201074 (= e!3776143 (or (not (= (_2!36422 (get!22304 lt!2342886)) Nil!64597)) (= lt!2342966 (_1!36422 (get!22304 lt!2342886)))))))

(declare-fun d!1943874 () Bool)

(assert (=> d!1943874 e!3776143))

(declare-fun res!2564925 () Bool)

(assert (=> d!1943874 (=> (not res!2564925) (not e!3776143))))

(declare-fun content!12077 (List!64721) (Set C!32550))

(assert (=> d!1943874 (= res!2564925 (= (content!12077 lt!2342966) (set.union (content!12077 (_1!36422 (get!22304 lt!2342886))) (content!12077 (_2!36422 (get!22304 lt!2342886))))))))

(declare-fun e!3776144 () List!64721)

(assert (=> d!1943874 (= lt!2342966 e!3776144)))

(declare-fun c!1119452 () Bool)

(assert (=> d!1943874 (= c!1119452 (is-Nil!64597 (_1!36422 (get!22304 lt!2342886))))))

(assert (=> d!1943874 (= (++!14218 (_1!36422 (get!22304 lt!2342886)) (_2!36422 (get!22304 lt!2342886))) lt!2342966)))

(declare-fun b!6201072 () Bool)

(assert (=> b!6201072 (= e!3776144 (Cons!64597 (h!71045 (_1!36422 (get!22304 lt!2342886))) (++!14218 (t!378237 (_1!36422 (get!22304 lt!2342886))) (_2!36422 (get!22304 lt!2342886)))))))

(declare-fun b!6201071 () Bool)

(assert (=> b!6201071 (= e!3776144 (_2!36422 (get!22304 lt!2342886)))))

(declare-fun b!6201073 () Bool)

(declare-fun res!2564924 () Bool)

(assert (=> b!6201073 (=> (not res!2564924) (not e!3776143))))

(declare-fun size!40267 (List!64721) Int)

(assert (=> b!6201073 (= res!2564924 (= (size!40267 lt!2342966) (+ (size!40267 (_1!36422 (get!22304 lt!2342886))) (size!40267 (_2!36422 (get!22304 lt!2342886))))))))

(assert (= (and d!1943874 c!1119452) b!6201071))

(assert (= (and d!1943874 (not c!1119452)) b!6201072))

(assert (= (and d!1943874 res!2564925) b!6201073))

(assert (= (and b!6201073 res!2564924) b!6201074))

(declare-fun m!7033620 () Bool)

(assert (=> d!1943874 m!7033620))

(declare-fun m!7033622 () Bool)

(assert (=> d!1943874 m!7033622))

(declare-fun m!7033624 () Bool)

(assert (=> d!1943874 m!7033624))

(declare-fun m!7033626 () Bool)

(assert (=> b!6201072 m!7033626))

(declare-fun m!7033628 () Bool)

(assert (=> b!6201073 m!7033628))

(declare-fun m!7033630 () Bool)

(assert (=> b!6201073 m!7033630))

(declare-fun m!7033632 () Bool)

(assert (=> b!6201073 m!7033632))

(assert (=> b!6200203 d!1943874))

(assert (=> b!6200203 d!1943778))

(declare-fun d!1943876 () Bool)

(assert (=> d!1943876 (= (nullable!6133 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))) (nullableFct!2089 (h!71043 (exprs!6024 (Context!11049 (Cons!64595 (h!71043 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343)))))))))))

(declare-fun bs!1538492 () Bool)

(assert (= bs!1538492 d!1943876))

(declare-fun m!7033634 () Bool)

(assert (=> bs!1538492 m!7033634))

(assert (=> b!6200407 d!1943876))

(assert (=> b!6200523 d!1943638))

(declare-fun d!1943878 () Bool)

(assert (=> d!1943878 (= (nullable!6133 (h!71043 (exprs!6024 lt!2342828))) (nullableFct!2089 (h!71043 (exprs!6024 lt!2342828))))))

(declare-fun bs!1538493 () Bool)

(assert (= bs!1538493 d!1943878))

(declare-fun m!7033636 () Bool)

(assert (=> bs!1538493 m!7033636))

(assert (=> b!6200412 d!1943878))

(declare-fun d!1943880 () Bool)

(assert (=> d!1943880 (= ($colon$colon!2009 (exprs!6024 lt!2342828) (ite (or c!1119300 c!1119297) (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71043 (exprs!6024 (h!71044 zl!343))))) (Cons!64595 (ite (or c!1119300 c!1119297) (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))) (h!71043 (exprs!6024 (h!71044 zl!343)))) (exprs!6024 lt!2342828)))))

(assert (=> bm!518897 d!1943880))

(assert (=> b!6200386 d!1943838))

(assert (=> b!6200386 d!1943840))

(declare-fun d!1943882 () Bool)

(declare-fun c!1119453 () Bool)

(assert (=> d!1943882 (= c!1119453 (isEmpty!36593 (tail!11874 (t!378237 s!2326))))))

(declare-fun e!3776145 () Bool)

(assert (=> d!1943882 (= (matchZipper!2152 (derivationStepZipper!2106 lt!2342833 (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))) e!3776145)))

(declare-fun b!6201075 () Bool)

(assert (=> b!6201075 (= e!3776145 (nullableZipper!1914 (derivationStepZipper!2106 lt!2342833 (head!12789 (t!378237 s!2326)))))))

(declare-fun b!6201076 () Bool)

(assert (=> b!6201076 (= e!3776145 (matchZipper!2152 (derivationStepZipper!2106 (derivationStepZipper!2106 lt!2342833 (head!12789 (t!378237 s!2326))) (head!12789 (tail!11874 (t!378237 s!2326)))) (tail!11874 (tail!11874 (t!378237 s!2326)))))))

(assert (= (and d!1943882 c!1119453) b!6201075))

(assert (= (and d!1943882 (not c!1119453)) b!6201076))

(assert (=> d!1943882 m!7033108))

(assert (=> d!1943882 m!7033470))

(assert (=> b!6201075 m!7033106))

(declare-fun m!7033638 () Bool)

(assert (=> b!6201075 m!7033638))

(assert (=> b!6201076 m!7033108))

(assert (=> b!6201076 m!7033474))

(assert (=> b!6201076 m!7033106))

(assert (=> b!6201076 m!7033474))

(declare-fun m!7033640 () Bool)

(assert (=> b!6201076 m!7033640))

(assert (=> b!6201076 m!7033108))

(assert (=> b!6201076 m!7033478))

(assert (=> b!6201076 m!7033640))

(assert (=> b!6201076 m!7033478))

(declare-fun m!7033642 () Bool)

(assert (=> b!6201076 m!7033642))

(assert (=> b!6200259 d!1943882))

(declare-fun bs!1538494 () Bool)

(declare-fun d!1943884 () Bool)

(assert (= bs!1538494 (and d!1943884 b!6200007)))

(declare-fun lambda!338843 () Int)

(assert (=> bs!1538494 (= (= (head!12789 (t!378237 s!2326)) (h!71045 s!2326)) (= lambda!338843 lambda!338756))))

(declare-fun bs!1538495 () Bool)

(assert (= bs!1538495 (and d!1943884 d!1943806)))

(assert (=> bs!1538495 (= lambda!338843 lambda!338832)))

(assert (=> d!1943884 true))

(assert (=> d!1943884 (= (derivationStepZipper!2106 lt!2342833 (head!12789 (t!378237 s!2326))) (flatMap!1645 lt!2342833 lambda!338843))))

(declare-fun bs!1538496 () Bool)

(assert (= bs!1538496 d!1943884))

(declare-fun m!7033644 () Bool)

(assert (=> bs!1538496 m!7033644))

(assert (=> b!6200259 d!1943884))

(assert (=> b!6200259 d!1943808))

(assert (=> b!6200259 d!1943810))

(assert (=> b!6200388 d!1943848))

(declare-fun bs!1538497 () Bool)

(declare-fun d!1943886 () Bool)

(assert (= bs!1538497 (and d!1943886 d!1943790)))

(declare-fun lambda!338844 () Int)

(assert (=> bs!1538497 (= lambda!338844 lambda!338826)))

(declare-fun bs!1538498 () Bool)

(assert (= bs!1538498 (and d!1943886 d!1943642)))

(assert (=> bs!1538498 (= lambda!338844 lambda!338770)))

(declare-fun bs!1538499 () Bool)

(assert (= bs!1538499 (and d!1943886 d!1943646)))

(assert (=> bs!1538499 (= lambda!338844 lambda!338776)))

(declare-fun bs!1538500 () Bool)

(assert (= bs!1538500 (and d!1943886 d!1943834)))

(assert (=> bs!1538500 (= lambda!338844 lambda!338839)))

(declare-fun bs!1538501 () Bool)

(assert (= bs!1538501 (and d!1943886 d!1943720)))

(assert (=> bs!1538501 (= lambda!338844 lambda!338808)))

(declare-fun bs!1538502 () Bool)

(assert (= bs!1538502 (and d!1943886 d!1943668)))

(assert (=> bs!1538502 (= lambda!338844 lambda!338789)))

(declare-fun bs!1538503 () Bool)

(assert (= bs!1538503 (and d!1943886 d!1943666)))

(assert (=> bs!1538503 (= lambda!338844 lambda!338788)))

(declare-fun bs!1538504 () Bool)

(assert (= bs!1538504 (and d!1943886 d!1943644)))

(assert (=> bs!1538504 (= lambda!338844 lambda!338773)))

(assert (=> d!1943886 (= (inv!83598 (h!71044 (t!378236 zl!343))) (forall!15254 (exprs!6024 (h!71044 (t!378236 zl!343))) lambda!338844))))

(declare-fun bs!1538505 () Bool)

(assert (= bs!1538505 d!1943886))

(declare-fun m!7033646 () Bool)

(assert (=> bs!1538505 m!7033646))

(assert (=> b!6200562 d!1943886))

(declare-fun b!6201080 () Bool)

(declare-fun e!3776146 () Bool)

(declare-fun lt!2342967 () List!64721)

(assert (=> b!6201080 (= e!3776146 (or (not (= (t!378237 s!2326) Nil!64597)) (= lt!2342967 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)))))))

(declare-fun d!1943888 () Bool)

(assert (=> d!1943888 e!3776146))

(declare-fun res!2564927 () Bool)

(assert (=> d!1943888 (=> (not res!2564927) (not e!3776146))))

(assert (=> d!1943888 (= res!2564927 (= (content!12077 lt!2342967) (set.union (content!12077 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))) (content!12077 (t!378237 s!2326)))))))

(declare-fun e!3776147 () List!64721)

(assert (=> d!1943888 (= lt!2342967 e!3776147)))

(declare-fun c!1119454 () Bool)

(assert (=> d!1943888 (= c!1119454 (is-Nil!64597 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))))))

(assert (=> d!1943888 (= (++!14218 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326)) lt!2342967)))

(declare-fun b!6201078 () Bool)

(assert (=> b!6201078 (= e!3776147 (Cons!64597 (h!71045 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))) (++!14218 (t!378237 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))) (t!378237 s!2326))))))

(declare-fun b!6201077 () Bool)

(assert (=> b!6201077 (= e!3776147 (t!378237 s!2326))))

(declare-fun b!6201079 () Bool)

(declare-fun res!2564926 () Bool)

(assert (=> b!6201079 (=> (not res!2564926) (not e!3776146))))

(assert (=> b!6201079 (= res!2564926 (= (size!40267 lt!2342967) (+ (size!40267 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))) (size!40267 (t!378237 s!2326)))))))

(assert (= (and d!1943888 c!1119454) b!6201077))

(assert (= (and d!1943888 (not c!1119454)) b!6201078))

(assert (= (and d!1943888 res!2564927) b!6201079))

(assert (= (and b!6201079 res!2564926) b!6201080))

(declare-fun m!7033648 () Bool)

(assert (=> d!1943888 m!7033648))

(assert (=> d!1943888 m!7033038))

(declare-fun m!7033650 () Bool)

(assert (=> d!1943888 m!7033650))

(declare-fun m!7033652 () Bool)

(assert (=> d!1943888 m!7033652))

(declare-fun m!7033654 () Bool)

(assert (=> b!6201078 m!7033654))

(declare-fun m!7033656 () Bool)

(assert (=> b!6201079 m!7033656))

(assert (=> b!6201079 m!7033038))

(declare-fun m!7033658 () Bool)

(assert (=> b!6201079 m!7033658))

(declare-fun m!7033660 () Bool)

(assert (=> b!6201079 m!7033660))

(assert (=> b!6200205 d!1943888))

(declare-fun b!6201084 () Bool)

(declare-fun e!3776148 () Bool)

(declare-fun lt!2342968 () List!64721)

(assert (=> b!6201084 (= e!3776148 (or (not (= (Cons!64597 (h!71045 s!2326) Nil!64597) Nil!64597)) (= lt!2342968 Nil!64597)))))

(declare-fun d!1943890 () Bool)

(assert (=> d!1943890 e!3776148))

(declare-fun res!2564929 () Bool)

(assert (=> d!1943890 (=> (not res!2564929) (not e!3776148))))

(assert (=> d!1943890 (= res!2564929 (= (content!12077 lt!2342968) (set.union (content!12077 Nil!64597) (content!12077 (Cons!64597 (h!71045 s!2326) Nil!64597)))))))

(declare-fun e!3776149 () List!64721)

(assert (=> d!1943890 (= lt!2342968 e!3776149)))

(declare-fun c!1119455 () Bool)

(assert (=> d!1943890 (= c!1119455 (is-Nil!64597 Nil!64597))))

(assert (=> d!1943890 (= (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) lt!2342968)))

(declare-fun b!6201082 () Bool)

(assert (=> b!6201082 (= e!3776149 (Cons!64597 (h!71045 Nil!64597) (++!14218 (t!378237 Nil!64597) (Cons!64597 (h!71045 s!2326) Nil!64597))))))

(declare-fun b!6201081 () Bool)

(assert (=> b!6201081 (= e!3776149 (Cons!64597 (h!71045 s!2326) Nil!64597))))

(declare-fun b!6201083 () Bool)

(declare-fun res!2564928 () Bool)

(assert (=> b!6201083 (=> (not res!2564928) (not e!3776148))))

(assert (=> b!6201083 (= res!2564928 (= (size!40267 lt!2342968) (+ (size!40267 Nil!64597) (size!40267 (Cons!64597 (h!71045 s!2326) Nil!64597)))))))

(assert (= (and d!1943890 c!1119455) b!6201081))

(assert (= (and d!1943890 (not c!1119455)) b!6201082))

(assert (= (and d!1943890 res!2564929) b!6201083))

(assert (= (and b!6201083 res!2564928) b!6201084))

(declare-fun m!7033662 () Bool)

(assert (=> d!1943890 m!7033662))

(declare-fun m!7033664 () Bool)

(assert (=> d!1943890 m!7033664))

(declare-fun m!7033666 () Bool)

(assert (=> d!1943890 m!7033666))

(declare-fun m!7033668 () Bool)

(assert (=> b!6201082 m!7033668))

(declare-fun m!7033670 () Bool)

(assert (=> b!6201083 m!7033670))

(declare-fun m!7033672 () Bool)

(assert (=> b!6201083 m!7033672))

(declare-fun m!7033674 () Bool)

(assert (=> b!6201083 m!7033674))

(assert (=> b!6200205 d!1943890))

(declare-fun d!1943892 () Bool)

(assert (=> d!1943892 (= (++!14218 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326)) s!2326)))

(declare-fun lt!2342971 () Unit!157891)

(declare-fun choose!46092 (List!64721 C!32550 List!64721 List!64721) Unit!157891)

(assert (=> d!1943892 (= lt!2342971 (choose!46092 Nil!64597 (h!71045 s!2326) (t!378237 s!2326) s!2326))))

(assert (=> d!1943892 (= (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) (t!378237 s!2326))) s!2326)))

(assert (=> d!1943892 (= (lemmaMoveElementToOtherListKeepsConcatEq!2313 Nil!64597 (h!71045 s!2326) (t!378237 s!2326) s!2326) lt!2342971)))

(declare-fun bs!1538506 () Bool)

(assert (= bs!1538506 d!1943892))

(assert (=> bs!1538506 m!7033038))

(assert (=> bs!1538506 m!7033038))

(assert (=> bs!1538506 m!7033040))

(declare-fun m!7033676 () Bool)

(assert (=> bs!1538506 m!7033676))

(declare-fun m!7033678 () Bool)

(assert (=> bs!1538506 m!7033678))

(assert (=> b!6200205 d!1943892))

(declare-fun b!6201085 () Bool)

(declare-fun e!3776154 () Bool)

(declare-fun lt!2342972 () Option!16031)

(assert (=> b!6201085 (= e!3776154 (= (++!14218 (_1!36422 (get!22304 lt!2342972)) (_2!36422 (get!22304 lt!2342972))) s!2326))))

(declare-fun b!6201086 () Bool)

(declare-fun e!3776153 () Option!16031)

(declare-fun e!3776152 () Option!16031)

(assert (=> b!6201086 (= e!3776153 e!3776152)))

(declare-fun c!1119456 () Bool)

(assert (=> b!6201086 (= c!1119456 (is-Nil!64597 (t!378237 s!2326)))))

(declare-fun b!6201087 () Bool)

(declare-fun lt!2342974 () Unit!157891)

(declare-fun lt!2342973 () Unit!157891)

(assert (=> b!6201087 (= lt!2342974 lt!2342973)))

(assert (=> b!6201087 (= (++!14218 (++!14218 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (Cons!64597 (h!71045 (t!378237 s!2326)) Nil!64597)) (t!378237 (t!378237 s!2326))) s!2326)))

(assert (=> b!6201087 (= lt!2342973 (lemmaMoveElementToOtherListKeepsConcatEq!2313 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (h!71045 (t!378237 s!2326)) (t!378237 (t!378237 s!2326)) s!2326))))

(assert (=> b!6201087 (= e!3776152 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) (++!14218 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (Cons!64597 (h!71045 (t!378237 s!2326)) Nil!64597)) (t!378237 (t!378237 s!2326)) s!2326))))

(declare-fun b!6201088 () Bool)

(assert (=> b!6201088 (= e!3776153 (Some!16030 (tuple2!66239 (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326))))))

(declare-fun b!6201089 () Bool)

(assert (=> b!6201089 (= e!3776152 None!16030)))

(declare-fun d!1943894 () Bool)

(declare-fun e!3776151 () Bool)

(assert (=> d!1943894 e!3776151))

(declare-fun res!2564934 () Bool)

(assert (=> d!1943894 (=> res!2564934 e!3776151)))

(assert (=> d!1943894 (= res!2564934 e!3776154)))

(declare-fun res!2564932 () Bool)

(assert (=> d!1943894 (=> (not res!2564932) (not e!3776154))))

(assert (=> d!1943894 (= res!2564932 (isDefined!12734 lt!2342972))))

(assert (=> d!1943894 (= lt!2342972 e!3776153)))

(declare-fun c!1119457 () Bool)

(declare-fun e!3776150 () Bool)

(assert (=> d!1943894 (= c!1119457 e!3776150)))

(declare-fun res!2564930 () Bool)

(assert (=> d!1943894 (=> (not res!2564930) (not e!3776150))))

(assert (=> d!1943894 (= res!2564930 (matchR!8323 (regOne!32792 r!7292) (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597))))))

(assert (=> d!1943894 (validRegex!7876 (regOne!32792 r!7292))))

(assert (=> d!1943894 (= (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) (++!14218 Nil!64597 (Cons!64597 (h!71045 s!2326) Nil!64597)) (t!378237 s!2326) s!2326) lt!2342972)))

(declare-fun b!6201090 () Bool)

(declare-fun res!2564931 () Bool)

(assert (=> b!6201090 (=> (not res!2564931) (not e!3776154))))

(assert (=> b!6201090 (= res!2564931 (matchR!8323 (regTwo!32792 r!7292) (_2!36422 (get!22304 lt!2342972))))))

(declare-fun b!6201091 () Bool)

(assert (=> b!6201091 (= e!3776150 (matchR!8323 (regTwo!32792 r!7292) (t!378237 s!2326)))))

(declare-fun b!6201092 () Bool)

(declare-fun res!2564933 () Bool)

(assert (=> b!6201092 (=> (not res!2564933) (not e!3776154))))

(assert (=> b!6201092 (= res!2564933 (matchR!8323 (regOne!32792 r!7292) (_1!36422 (get!22304 lt!2342972))))))

(declare-fun b!6201093 () Bool)

(assert (=> b!6201093 (= e!3776151 (not (isDefined!12734 lt!2342972)))))

(assert (= (and d!1943894 res!2564930) b!6201091))

(assert (= (and d!1943894 c!1119457) b!6201088))

(assert (= (and d!1943894 (not c!1119457)) b!6201086))

(assert (= (and b!6201086 c!1119456) b!6201089))

(assert (= (and b!6201086 (not c!1119456)) b!6201087))

(assert (= (and d!1943894 res!2564932) b!6201092))

(assert (= (and b!6201092 res!2564933) b!6201090))

(assert (= (and b!6201090 res!2564931) b!6201085))

(assert (= (and d!1943894 (not res!2564934)) b!6201093))

(declare-fun m!7033680 () Bool)

(assert (=> b!6201091 m!7033680))

(assert (=> b!6201087 m!7033038))

(declare-fun m!7033682 () Bool)

(assert (=> b!6201087 m!7033682))

(assert (=> b!6201087 m!7033682))

(declare-fun m!7033684 () Bool)

(assert (=> b!6201087 m!7033684))

(assert (=> b!6201087 m!7033038))

(declare-fun m!7033686 () Bool)

(assert (=> b!6201087 m!7033686))

(assert (=> b!6201087 m!7033682))

(declare-fun m!7033688 () Bool)

(assert (=> b!6201087 m!7033688))

(declare-fun m!7033690 () Bool)

(assert (=> d!1943894 m!7033690))

(assert (=> d!1943894 m!7033038))

(declare-fun m!7033692 () Bool)

(assert (=> d!1943894 m!7033692))

(assert (=> d!1943894 m!7033050))

(declare-fun m!7033694 () Bool)

(assert (=> b!6201085 m!7033694))

(declare-fun m!7033696 () Bool)

(assert (=> b!6201085 m!7033696))

(assert (=> b!6201090 m!7033694))

(declare-fun m!7033698 () Bool)

(assert (=> b!6201090 m!7033698))

(assert (=> b!6201092 m!7033694))

(declare-fun m!7033700 () Bool)

(assert (=> b!6201092 m!7033700))

(assert (=> b!6201093 m!7033690))

(assert (=> b!6200205 d!1943894))

(declare-fun d!1943896 () Bool)

(assert (=> d!1943896 (= (isUnion!989 lt!2342876) (is-Union!16140 lt!2342876))))

(assert (=> b!6200148 d!1943896))

(declare-fun d!1943898 () Bool)

(assert (=> d!1943898 true))

(assert (=> d!1943898 true))

(declare-fun res!2564935 () Bool)

(assert (=> d!1943898 (= (choose!46077 lambda!338754) res!2564935)))

(assert (=> d!1943654 d!1943898))

(assert (=> bm!518878 d!1943774))

(declare-fun b!6201094 () Bool)

(declare-fun e!3776156 () Bool)

(declare-fun e!3776160 () Bool)

(assert (=> b!6201094 (= e!3776156 e!3776160)))

(declare-fun c!1119459 () Bool)

(assert (=> b!6201094 (= c!1119459 (is-EmptyLang!16140 (regTwo!32792 r!7292)))))

(declare-fun b!6201095 () Bool)

(declare-fun res!2564942 () Bool)

(declare-fun e!3776158 () Bool)

(assert (=> b!6201095 (=> res!2564942 e!3776158)))

(assert (=> b!6201095 (= res!2564942 (not (is-ElementMatch!16140 (regTwo!32792 r!7292))))))

(assert (=> b!6201095 (= e!3776160 e!3776158)))

(declare-fun b!6201096 () Bool)

(declare-fun res!2564936 () Bool)

(declare-fun e!3776157 () Bool)

(assert (=> b!6201096 (=> (not res!2564936) (not e!3776157))))

(assert (=> b!6201096 (= res!2564936 (isEmpty!36593 (tail!11874 s!2326)))))

(declare-fun d!1943900 () Bool)

(assert (=> d!1943900 e!3776156))

(declare-fun c!1119460 () Bool)

(assert (=> d!1943900 (= c!1119460 (is-EmptyExpr!16140 (regTwo!32792 r!7292)))))

(declare-fun lt!2342975 () Bool)

(declare-fun e!3776155 () Bool)

(assert (=> d!1943900 (= lt!2342975 e!3776155)))

(declare-fun c!1119458 () Bool)

(assert (=> d!1943900 (= c!1119458 (isEmpty!36593 s!2326))))

(assert (=> d!1943900 (validRegex!7876 (regTwo!32792 r!7292))))

(assert (=> d!1943900 (= (matchR!8323 (regTwo!32792 r!7292) s!2326) lt!2342975)))

(declare-fun b!6201097 () Bool)

(declare-fun call!519000 () Bool)

(assert (=> b!6201097 (= e!3776156 (= lt!2342975 call!519000))))

(declare-fun b!6201098 () Bool)

(assert (=> b!6201098 (= e!3776155 (matchR!8323 (derivativeStep!4853 (regTwo!32792 r!7292) (head!12789 s!2326)) (tail!11874 s!2326)))))

(declare-fun b!6201099 () Bool)

(declare-fun e!3776159 () Bool)

(assert (=> b!6201099 (= e!3776159 (not (= (head!12789 s!2326) (c!1119187 (regTwo!32792 r!7292)))))))

(declare-fun b!6201100 () Bool)

(declare-fun e!3776161 () Bool)

(assert (=> b!6201100 (= e!3776161 e!3776159)))

(declare-fun res!2564938 () Bool)

(assert (=> b!6201100 (=> res!2564938 e!3776159)))

(assert (=> b!6201100 (= res!2564938 call!519000)))

(declare-fun b!6201101 () Bool)

(assert (=> b!6201101 (= e!3776158 e!3776161)))

(declare-fun res!2564940 () Bool)

(assert (=> b!6201101 (=> (not res!2564940) (not e!3776161))))

(assert (=> b!6201101 (= res!2564940 (not lt!2342975))))

(declare-fun b!6201102 () Bool)

(declare-fun res!2564939 () Bool)

(assert (=> b!6201102 (=> res!2564939 e!3776158)))

(assert (=> b!6201102 (= res!2564939 e!3776157)))

(declare-fun res!2564943 () Bool)

(assert (=> b!6201102 (=> (not res!2564943) (not e!3776157))))

(assert (=> b!6201102 (= res!2564943 lt!2342975)))

(declare-fun b!6201103 () Bool)

(assert (=> b!6201103 (= e!3776160 (not lt!2342975))))

(declare-fun b!6201104 () Bool)

(declare-fun res!2564941 () Bool)

(assert (=> b!6201104 (=> res!2564941 e!3776159)))

(assert (=> b!6201104 (= res!2564941 (not (isEmpty!36593 (tail!11874 s!2326))))))

(declare-fun b!6201105 () Bool)

(declare-fun res!2564937 () Bool)

(assert (=> b!6201105 (=> (not res!2564937) (not e!3776157))))

(assert (=> b!6201105 (= res!2564937 (not call!519000))))

(declare-fun b!6201106 () Bool)

(assert (=> b!6201106 (= e!3776157 (= (head!12789 s!2326) (c!1119187 (regTwo!32792 r!7292))))))

(declare-fun b!6201107 () Bool)

(assert (=> b!6201107 (= e!3776155 (nullable!6133 (regTwo!32792 r!7292)))))

(declare-fun bm!518995 () Bool)

(assert (=> bm!518995 (= call!519000 (isEmpty!36593 s!2326))))

(assert (= (and d!1943900 c!1119458) b!6201107))

(assert (= (and d!1943900 (not c!1119458)) b!6201098))

(assert (= (and d!1943900 c!1119460) b!6201097))

(assert (= (and d!1943900 (not c!1119460)) b!6201094))

(assert (= (and b!6201094 c!1119459) b!6201103))

(assert (= (and b!6201094 (not c!1119459)) b!6201095))

(assert (= (and b!6201095 (not res!2564942)) b!6201102))

(assert (= (and b!6201102 res!2564943) b!6201105))

(assert (= (and b!6201105 res!2564937) b!6201096))

(assert (= (and b!6201096 res!2564936) b!6201106))

(assert (= (and b!6201102 (not res!2564939)) b!6201101))

(assert (= (and b!6201101 res!2564940) b!6201100))

(assert (= (and b!6201100 (not res!2564938)) b!6201104))

(assert (= (and b!6201104 (not res!2564941)) b!6201099))

(assert (= (or b!6201097 b!6201100 b!6201105) bm!518995))

(assert (=> b!6201099 m!7033156))

(assert (=> b!6201104 m!7033158))

(assert (=> b!6201104 m!7033158))

(assert (=> b!6201104 m!7033160))

(assert (=> b!6201096 m!7033158))

(assert (=> b!6201096 m!7033158))

(assert (=> b!6201096 m!7033160))

(assert (=> b!6201107 m!7033388))

(assert (=> b!6201106 m!7033156))

(assert (=> bm!518995 m!7033148))

(assert (=> d!1943900 m!7033148))

(assert (=> d!1943900 m!7033392))

(assert (=> b!6201098 m!7033156))

(assert (=> b!6201098 m!7033156))

(declare-fun m!7033702 () Bool)

(assert (=> b!6201098 m!7033702))

(assert (=> b!6201098 m!7033158))

(assert (=> b!6201098 m!7033702))

(assert (=> b!6201098 m!7033158))

(declare-fun m!7033704 () Bool)

(assert (=> b!6201098 m!7033704))

(assert (=> b!6200209 d!1943900))

(declare-fun bs!1538507 () Bool)

(declare-fun d!1943902 () Bool)

(assert (= bs!1538507 (and d!1943902 d!1943856)))

(declare-fun lambda!338845 () Int)

(assert (=> bs!1538507 (= lambda!338845 lambda!338842)))

(assert (=> d!1943902 (= (nullableZipper!1914 (set.union lt!2342834 lt!2342833)) (exists!2471 (set.union lt!2342834 lt!2342833) lambda!338845))))

(declare-fun bs!1538508 () Bool)

(assert (= bs!1538508 d!1943902))

(declare-fun m!7033706 () Bool)

(assert (=> bs!1538508 m!7033706))

(assert (=> b!6200265 d!1943902))

(assert (=> b!6200211 d!1943798))

(declare-fun d!1943904 () Bool)

(assert (=> d!1943904 true))

(declare-fun setRes!42093 () Bool)

(assert (=> d!1943904 setRes!42093))

(declare-fun condSetEmpty!42093 () Bool)

(declare-fun res!2564946 () (Set Context!11048))

(assert (=> d!1943904 (= condSetEmpty!42093 (= res!2564946 (as set.empty (Set Context!11048))))))

(assert (=> d!1943904 (= (choose!46082 z!1189 lambda!338756) res!2564946)))

(declare-fun setIsEmpty!42093 () Bool)

(assert (=> setIsEmpty!42093 setRes!42093))

(declare-fun setElem!42093 () Context!11048)

(declare-fun setNonEmpty!42093 () Bool)

(declare-fun tp!1729434 () Bool)

(declare-fun e!3776164 () Bool)

(assert (=> setNonEmpty!42093 (= setRes!42093 (and tp!1729434 (inv!83598 setElem!42093) e!3776164))))

(declare-fun setRest!42093 () (Set Context!11048))

(assert (=> setNonEmpty!42093 (= res!2564946 (set.union (set.insert setElem!42093 (as set.empty (Set Context!11048))) setRest!42093))))

(declare-fun b!6201110 () Bool)

(declare-fun tp!1729433 () Bool)

(assert (=> b!6201110 (= e!3776164 tp!1729433)))

(assert (= (and d!1943904 condSetEmpty!42093) setIsEmpty!42093))

(assert (= (and d!1943904 (not condSetEmpty!42093)) setNonEmpty!42093))

(assert (= setNonEmpty!42093 b!6201110))

(declare-fun m!7033708 () Bool)

(assert (=> setNonEmpty!42093 m!7033708))

(assert (=> d!1943712 d!1943904))

(declare-fun bs!1538509 () Bool)

(declare-fun b!6201121 () Bool)

(assert (= bs!1538509 (and b!6201121 d!1943660)))

(declare-fun lambda!338846 () Int)

(assert (=> bs!1538509 (not (= lambda!338846 lambda!338787))))

(declare-fun bs!1538510 () Bool)

(assert (= bs!1538510 (and b!6201121 b!6200316)))

(assert (=> bs!1538510 (not (= lambda!338846 lambda!338799))))

(declare-fun bs!1538511 () Bool)

(assert (= bs!1538511 (and b!6201121 d!1943820)))

(assert (=> bs!1538511 (not (= lambda!338846 lambda!338837))))

(declare-fun bs!1538512 () Bool)

(assert (= bs!1538512 (and b!6201121 d!1943792)))

(assert (=> bs!1538512 (not (= lambda!338846 lambda!338829))))

(declare-fun bs!1538513 () Bool)

(assert (= bs!1538513 (and b!6201121 b!6200000)))

(assert (=> bs!1538513 (not (= lambda!338846 lambda!338755))))

(declare-fun bs!1538514 () Bool)

(assert (= bs!1538514 (and b!6201121 b!6200318)))

(assert (=> bs!1538514 (= (and (= (reg!16469 (regOne!32793 r!7292)) (reg!16469 r!7292)) (= (regOne!32793 r!7292) r!7292)) (= lambda!338846 lambda!338798))))

(assert (=> bs!1538513 (not (= lambda!338846 lambda!338754))))

(declare-fun bs!1538515 () Bool)

(assert (= bs!1538515 (and b!6201121 d!1943656)))

(assert (=> bs!1538515 (not (= lambda!338846 lambda!338779))))

(assert (=> bs!1538511 (not (= lambda!338846 lambda!338838))))

(assert (=> bs!1538509 (not (= lambda!338846 lambda!338786))))

(assert (=> b!6201121 true))

(assert (=> b!6201121 true))

(declare-fun bs!1538516 () Bool)

(declare-fun b!6201119 () Bool)

(assert (= bs!1538516 (and b!6201119 d!1943660)))

(declare-fun lambda!338847 () Int)

(assert (=> bs!1538516 (= (and (= (regOne!32792 (regOne!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regOne!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338847 lambda!338787))))

(declare-fun bs!1538517 () Bool)

(assert (= bs!1538517 (and b!6201119 b!6200316)))

(assert (=> bs!1538517 (= (and (= (regOne!32792 (regOne!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regOne!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338847 lambda!338799))))

(declare-fun bs!1538518 () Bool)

(assert (= bs!1538518 (and b!6201119 b!6201121)))

(assert (=> bs!1538518 (not (= lambda!338847 lambda!338846))))

(declare-fun bs!1538519 () Bool)

(assert (= bs!1538519 (and b!6201119 d!1943820)))

(assert (=> bs!1538519 (not (= lambda!338847 lambda!338837))))

(declare-fun bs!1538520 () Bool)

(assert (= bs!1538520 (and b!6201119 d!1943792)))

(assert (=> bs!1538520 (not (= lambda!338847 lambda!338829))))

(declare-fun bs!1538521 () Bool)

(assert (= bs!1538521 (and b!6201119 b!6200000)))

(assert (=> bs!1538521 (= (and (= (regOne!32792 (regOne!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regOne!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338847 lambda!338755))))

(declare-fun bs!1538522 () Bool)

(assert (= bs!1538522 (and b!6201119 b!6200318)))

(assert (=> bs!1538522 (not (= lambda!338847 lambda!338798))))

(assert (=> bs!1538521 (not (= lambda!338847 lambda!338754))))

(declare-fun bs!1538523 () Bool)

(assert (= bs!1538523 (and b!6201119 d!1943656)))

(assert (=> bs!1538523 (not (= lambda!338847 lambda!338779))))

(assert (=> bs!1538519 (= (and (= (regOne!32792 (regOne!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regOne!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338847 lambda!338838))))

(assert (=> bs!1538516 (not (= lambda!338847 lambda!338786))))

(assert (=> b!6201119 true))

(assert (=> b!6201119 true))

(declare-fun bm!518996 () Bool)

(declare-fun call!519002 () Bool)

(assert (=> bm!518996 (= call!519002 (isEmpty!36593 s!2326))))

(declare-fun b!6201111 () Bool)

(declare-fun e!3776170 () Bool)

(assert (=> b!6201111 (= e!3776170 call!519002)))

(declare-fun b!6201112 () Bool)

(declare-fun c!1119463 () Bool)

(assert (=> b!6201112 (= c!1119463 (is-ElementMatch!16140 (regOne!32793 r!7292)))))

(declare-fun e!3776165 () Bool)

(declare-fun e!3776171 () Bool)

(assert (=> b!6201112 (= e!3776165 e!3776171)))

(declare-fun b!6201113 () Bool)

(assert (=> b!6201113 (= e!3776171 (= s!2326 (Cons!64597 (c!1119187 (regOne!32793 r!7292)) Nil!64597)))))

(declare-fun b!6201114 () Bool)

(declare-fun res!2564949 () Bool)

(declare-fun e!3776166 () Bool)

(assert (=> b!6201114 (=> res!2564949 e!3776166)))

(assert (=> b!6201114 (= res!2564949 call!519002)))

(declare-fun e!3776167 () Bool)

(assert (=> b!6201114 (= e!3776167 e!3776166)))

(declare-fun b!6201115 () Bool)

(declare-fun e!3776168 () Bool)

(declare-fun e!3776169 () Bool)

(assert (=> b!6201115 (= e!3776168 e!3776169)))

(declare-fun res!2564947 () Bool)

(assert (=> b!6201115 (= res!2564947 (matchRSpec!3241 (regOne!32793 (regOne!32793 r!7292)) s!2326))))

(assert (=> b!6201115 (=> res!2564947 e!3776169)))

(declare-fun d!1943906 () Bool)

(declare-fun c!1119464 () Bool)

(assert (=> d!1943906 (= c!1119464 (is-EmptyExpr!16140 (regOne!32793 r!7292)))))

(assert (=> d!1943906 (= (matchRSpec!3241 (regOne!32793 r!7292) s!2326) e!3776170)))

(declare-fun c!1119461 () Bool)

(declare-fun call!519001 () Bool)

(declare-fun bm!518997 () Bool)

(assert (=> bm!518997 (= call!519001 (Exists!3210 (ite c!1119461 lambda!338846 lambda!338847)))))

(declare-fun b!6201116 () Bool)

(assert (=> b!6201116 (= e!3776169 (matchRSpec!3241 (regTwo!32793 (regOne!32793 r!7292)) s!2326))))

(declare-fun b!6201117 () Bool)

(assert (=> b!6201117 (= e!3776170 e!3776165)))

(declare-fun res!2564948 () Bool)

(assert (=> b!6201117 (= res!2564948 (not (is-EmptyLang!16140 (regOne!32793 r!7292))))))

(assert (=> b!6201117 (=> (not res!2564948) (not e!3776165))))

(declare-fun b!6201118 () Bool)

(declare-fun c!1119462 () Bool)

(assert (=> b!6201118 (= c!1119462 (is-Union!16140 (regOne!32793 r!7292)))))

(assert (=> b!6201118 (= e!3776171 e!3776168)))

(assert (=> b!6201119 (= e!3776167 call!519001)))

(declare-fun b!6201120 () Bool)

(assert (=> b!6201120 (= e!3776168 e!3776167)))

(assert (=> b!6201120 (= c!1119461 (is-Star!16140 (regOne!32793 r!7292)))))

(assert (=> b!6201121 (= e!3776166 call!519001)))

(assert (= (and d!1943906 c!1119464) b!6201111))

(assert (= (and d!1943906 (not c!1119464)) b!6201117))

(assert (= (and b!6201117 res!2564948) b!6201112))

(assert (= (and b!6201112 c!1119463) b!6201113))

(assert (= (and b!6201112 (not c!1119463)) b!6201118))

(assert (= (and b!6201118 c!1119462) b!6201115))

(assert (= (and b!6201118 (not c!1119462)) b!6201120))

(assert (= (and b!6201115 (not res!2564947)) b!6201116))

(assert (= (and b!6201120 c!1119461) b!6201114))

(assert (= (and b!6201120 (not c!1119461)) b!6201119))

(assert (= (and b!6201114 (not res!2564949)) b!6201121))

(assert (= (or b!6201121 b!6201119) bm!518997))

(assert (= (or b!6201111 b!6201114) bm!518996))

(assert (=> bm!518996 m!7033148))

(declare-fun m!7033710 () Bool)

(assert (=> b!6201115 m!7033710))

(declare-fun m!7033712 () Bool)

(assert (=> bm!518997 m!7033712))

(declare-fun m!7033714 () Bool)

(assert (=> b!6201116 m!7033714))

(assert (=> b!6200312 d!1943906))

(assert (=> b!6200262 d!1943670))

(declare-fun b!6201136 () Bool)

(declare-fun e!3776188 () Bool)

(declare-fun e!3776189 () Bool)

(assert (=> b!6201136 (= e!3776188 e!3776189)))

(declare-fun res!2564963 () Bool)

(declare-fun call!519007 () Bool)

(assert (=> b!6201136 (= res!2564963 call!519007)))

(assert (=> b!6201136 (=> res!2564963 e!3776189)))

(declare-fun b!6201137 () Bool)

(declare-fun e!3776186 () Bool)

(declare-fun call!519008 () Bool)

(assert (=> b!6201137 (= e!3776186 call!519008)))

(declare-fun bm!519002 () Bool)

(declare-fun c!1119467 () Bool)

(assert (=> bm!519002 (= call!519007 (nullable!6133 (ite c!1119467 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun b!6201138 () Bool)

(declare-fun e!3776185 () Bool)

(declare-fun e!3776184 () Bool)

(assert (=> b!6201138 (= e!3776185 e!3776184)))

(declare-fun res!2564962 () Bool)

(assert (=> b!6201138 (=> res!2564962 e!3776184)))

(assert (=> b!6201138 (= res!2564962 (is-Star!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun d!1943908 () Bool)

(declare-fun res!2564964 () Bool)

(declare-fun e!3776187 () Bool)

(assert (=> d!1943908 (=> res!2564964 e!3776187)))

(assert (=> d!1943908 (= res!2564964 (is-EmptyExpr!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> d!1943908 (= (nullableFct!2089 (h!71043 (exprs!6024 (h!71044 zl!343)))) e!3776187)))

(declare-fun b!6201139 () Bool)

(assert (=> b!6201139 (= e!3776187 e!3776185)))

(declare-fun res!2564960 () Bool)

(assert (=> b!6201139 (=> (not res!2564960) (not e!3776185))))

(assert (=> b!6201139 (= res!2564960 (and (not (is-EmptyLang!16140 (h!71043 (exprs!6024 (h!71044 zl!343))))) (not (is-ElementMatch!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun b!6201140 () Bool)

(assert (=> b!6201140 (= e!3776188 e!3776186)))

(declare-fun res!2564961 () Bool)

(assert (=> b!6201140 (= res!2564961 call!519007)))

(assert (=> b!6201140 (=> (not res!2564961) (not e!3776186))))

(declare-fun b!6201141 () Bool)

(assert (=> b!6201141 (= e!3776184 e!3776188)))

(assert (=> b!6201141 (= c!1119467 (is-Union!16140 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6201142 () Bool)

(assert (=> b!6201142 (= e!3776189 call!519008)))

(declare-fun bm!519003 () Bool)

(assert (=> bm!519003 (= call!519008 (nullable!6133 (ite c!1119467 (regTwo!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regTwo!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(assert (= (and d!1943908 (not res!2564964)) b!6201139))

(assert (= (and b!6201139 res!2564960) b!6201138))

(assert (= (and b!6201138 (not res!2564962)) b!6201141))

(assert (= (and b!6201141 c!1119467) b!6201136))

(assert (= (and b!6201141 (not c!1119467)) b!6201140))

(assert (= (and b!6201136 (not res!2564963)) b!6201142))

(assert (= (and b!6201140 res!2564961) b!6201137))

(assert (= (or b!6201142 b!6201137) bm!519003))

(assert (= (or b!6201136 b!6201140) bm!519002))

(declare-fun m!7033716 () Bool)

(assert (=> bm!519002 m!7033716))

(declare-fun m!7033718 () Bool)

(assert (=> bm!519003 m!7033718))

(assert (=> d!1943704 d!1943908))

(declare-fun bs!1538524 () Bool)

(declare-fun b!6201153 () Bool)

(assert (= bs!1538524 (and b!6201153 b!6201119)))

(declare-fun lambda!338848 () Int)

(assert (=> bs!1538524 (not (= lambda!338848 lambda!338847))))

(declare-fun bs!1538525 () Bool)

(assert (= bs!1538525 (and b!6201153 d!1943660)))

(assert (=> bs!1538525 (not (= lambda!338848 lambda!338787))))

(declare-fun bs!1538526 () Bool)

(assert (= bs!1538526 (and b!6201153 b!6200316)))

(assert (=> bs!1538526 (not (= lambda!338848 lambda!338799))))

(declare-fun bs!1538527 () Bool)

(assert (= bs!1538527 (and b!6201153 b!6201121)))

(assert (=> bs!1538527 (= (and (= (reg!16469 (regTwo!32793 r!7292)) (reg!16469 (regOne!32793 r!7292))) (= (regTwo!32793 r!7292) (regOne!32793 r!7292))) (= lambda!338848 lambda!338846))))

(declare-fun bs!1538528 () Bool)

(assert (= bs!1538528 (and b!6201153 d!1943820)))

(assert (=> bs!1538528 (not (= lambda!338848 lambda!338837))))

(declare-fun bs!1538529 () Bool)

(assert (= bs!1538529 (and b!6201153 d!1943792)))

(assert (=> bs!1538529 (not (= lambda!338848 lambda!338829))))

(declare-fun bs!1538530 () Bool)

(assert (= bs!1538530 (and b!6201153 b!6200000)))

(assert (=> bs!1538530 (not (= lambda!338848 lambda!338755))))

(declare-fun bs!1538531 () Bool)

(assert (= bs!1538531 (and b!6201153 b!6200318)))

(assert (=> bs!1538531 (= (and (= (reg!16469 (regTwo!32793 r!7292)) (reg!16469 r!7292)) (= (regTwo!32793 r!7292) r!7292)) (= lambda!338848 lambda!338798))))

(assert (=> bs!1538530 (not (= lambda!338848 lambda!338754))))

(declare-fun bs!1538532 () Bool)

(assert (= bs!1538532 (and b!6201153 d!1943656)))

(assert (=> bs!1538532 (not (= lambda!338848 lambda!338779))))

(assert (=> bs!1538528 (not (= lambda!338848 lambda!338838))))

(assert (=> bs!1538525 (not (= lambda!338848 lambda!338786))))

(assert (=> b!6201153 true))

(assert (=> b!6201153 true))

(declare-fun bs!1538533 () Bool)

(declare-fun b!6201151 () Bool)

(assert (= bs!1538533 (and b!6201151 b!6201119)))

(declare-fun lambda!338849 () Int)

(assert (=> bs!1538533 (= (and (= (regOne!32792 (regTwo!32793 r!7292)) (regOne!32792 (regOne!32793 r!7292))) (= (regTwo!32792 (regTwo!32793 r!7292)) (regTwo!32792 (regOne!32793 r!7292)))) (= lambda!338849 lambda!338847))))

(declare-fun bs!1538534 () Bool)

(assert (= bs!1538534 (and b!6201151 d!1943660)))

(assert (=> bs!1538534 (= (and (= (regOne!32792 (regTwo!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regTwo!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338849 lambda!338787))))

(declare-fun bs!1538535 () Bool)

(assert (= bs!1538535 (and b!6201151 b!6201153)))

(assert (=> bs!1538535 (not (= lambda!338849 lambda!338848))))

(declare-fun bs!1538536 () Bool)

(assert (= bs!1538536 (and b!6201151 b!6200316)))

(assert (=> bs!1538536 (= (and (= (regOne!32792 (regTwo!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regTwo!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338849 lambda!338799))))

(declare-fun bs!1538537 () Bool)

(assert (= bs!1538537 (and b!6201151 b!6201121)))

(assert (=> bs!1538537 (not (= lambda!338849 lambda!338846))))

(declare-fun bs!1538538 () Bool)

(assert (= bs!1538538 (and b!6201151 d!1943820)))

(assert (=> bs!1538538 (not (= lambda!338849 lambda!338837))))

(declare-fun bs!1538539 () Bool)

(assert (= bs!1538539 (and b!6201151 d!1943792)))

(assert (=> bs!1538539 (not (= lambda!338849 lambda!338829))))

(declare-fun bs!1538540 () Bool)

(assert (= bs!1538540 (and b!6201151 b!6200000)))

(assert (=> bs!1538540 (= (and (= (regOne!32792 (regTwo!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regTwo!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338849 lambda!338755))))

(declare-fun bs!1538541 () Bool)

(assert (= bs!1538541 (and b!6201151 b!6200318)))

(assert (=> bs!1538541 (not (= lambda!338849 lambda!338798))))

(assert (=> bs!1538540 (not (= lambda!338849 lambda!338754))))

(declare-fun bs!1538542 () Bool)

(assert (= bs!1538542 (and b!6201151 d!1943656)))

(assert (=> bs!1538542 (not (= lambda!338849 lambda!338779))))

(assert (=> bs!1538538 (= (and (= (regOne!32792 (regTwo!32793 r!7292)) (regOne!32792 r!7292)) (= (regTwo!32792 (regTwo!32793 r!7292)) (regTwo!32792 r!7292))) (= lambda!338849 lambda!338838))))

(assert (=> bs!1538534 (not (= lambda!338849 lambda!338786))))

(assert (=> b!6201151 true))

(assert (=> b!6201151 true))

(declare-fun bm!519004 () Bool)

(declare-fun call!519010 () Bool)

(assert (=> bm!519004 (= call!519010 (isEmpty!36593 s!2326))))

(declare-fun b!6201143 () Bool)

(declare-fun e!3776195 () Bool)

(assert (=> b!6201143 (= e!3776195 call!519010)))

(declare-fun b!6201144 () Bool)

(declare-fun c!1119470 () Bool)

(assert (=> b!6201144 (= c!1119470 (is-ElementMatch!16140 (regTwo!32793 r!7292)))))

(declare-fun e!3776190 () Bool)

(declare-fun e!3776196 () Bool)

(assert (=> b!6201144 (= e!3776190 e!3776196)))

(declare-fun b!6201145 () Bool)

(assert (=> b!6201145 (= e!3776196 (= s!2326 (Cons!64597 (c!1119187 (regTwo!32793 r!7292)) Nil!64597)))))

(declare-fun b!6201146 () Bool)

(declare-fun res!2564967 () Bool)

(declare-fun e!3776191 () Bool)

(assert (=> b!6201146 (=> res!2564967 e!3776191)))

(assert (=> b!6201146 (= res!2564967 call!519010)))

(declare-fun e!3776192 () Bool)

(assert (=> b!6201146 (= e!3776192 e!3776191)))

(declare-fun b!6201147 () Bool)

(declare-fun e!3776193 () Bool)

(declare-fun e!3776194 () Bool)

(assert (=> b!6201147 (= e!3776193 e!3776194)))

(declare-fun res!2564965 () Bool)

(assert (=> b!6201147 (= res!2564965 (matchRSpec!3241 (regOne!32793 (regTwo!32793 r!7292)) s!2326))))

(assert (=> b!6201147 (=> res!2564965 e!3776194)))

(declare-fun d!1943910 () Bool)

(declare-fun c!1119471 () Bool)

(assert (=> d!1943910 (= c!1119471 (is-EmptyExpr!16140 (regTwo!32793 r!7292)))))

(assert (=> d!1943910 (= (matchRSpec!3241 (regTwo!32793 r!7292) s!2326) e!3776195)))

(declare-fun bm!519005 () Bool)

(declare-fun call!519009 () Bool)

(declare-fun c!1119468 () Bool)

(assert (=> bm!519005 (= call!519009 (Exists!3210 (ite c!1119468 lambda!338848 lambda!338849)))))

(declare-fun b!6201148 () Bool)

(assert (=> b!6201148 (= e!3776194 (matchRSpec!3241 (regTwo!32793 (regTwo!32793 r!7292)) s!2326))))

(declare-fun b!6201149 () Bool)

(assert (=> b!6201149 (= e!3776195 e!3776190)))

(declare-fun res!2564966 () Bool)

(assert (=> b!6201149 (= res!2564966 (not (is-EmptyLang!16140 (regTwo!32793 r!7292))))))

(assert (=> b!6201149 (=> (not res!2564966) (not e!3776190))))

(declare-fun b!6201150 () Bool)

(declare-fun c!1119469 () Bool)

(assert (=> b!6201150 (= c!1119469 (is-Union!16140 (regTwo!32793 r!7292)))))

(assert (=> b!6201150 (= e!3776196 e!3776193)))

(assert (=> b!6201151 (= e!3776192 call!519009)))

(declare-fun b!6201152 () Bool)

(assert (=> b!6201152 (= e!3776193 e!3776192)))

(assert (=> b!6201152 (= c!1119468 (is-Star!16140 (regTwo!32793 r!7292)))))

(assert (=> b!6201153 (= e!3776191 call!519009)))

(assert (= (and d!1943910 c!1119471) b!6201143))

(assert (= (and d!1943910 (not c!1119471)) b!6201149))

(assert (= (and b!6201149 res!2564966) b!6201144))

(assert (= (and b!6201144 c!1119470) b!6201145))

(assert (= (and b!6201144 (not c!1119470)) b!6201150))

(assert (= (and b!6201150 c!1119469) b!6201147))

(assert (= (and b!6201150 (not c!1119469)) b!6201152))

(assert (= (and b!6201147 (not res!2564965)) b!6201148))

(assert (= (and b!6201152 c!1119468) b!6201146))

(assert (= (and b!6201152 (not c!1119468)) b!6201151))

(assert (= (and b!6201146 (not res!2564967)) b!6201153))

(assert (= (or b!6201153 b!6201151) bm!519005))

(assert (= (or b!6201143 b!6201146) bm!519004))

(assert (=> bm!519004 m!7033148))

(declare-fun m!7033720 () Bool)

(assert (=> b!6201147 m!7033720))

(declare-fun m!7033722 () Bool)

(assert (=> bm!519005 m!7033722))

(declare-fun m!7033724 () Bool)

(assert (=> b!6201148 m!7033724))

(assert (=> b!6200313 d!1943910))

(declare-fun d!1943912 () Bool)

(assert (=> d!1943912 (= (nullable!6133 (reg!16469 r!7292)) (nullableFct!2089 (reg!16469 r!7292)))))

(declare-fun bs!1538543 () Bool)

(assert (= bs!1538543 d!1943912))

(declare-fun m!7033726 () Bool)

(assert (=> bs!1538543 m!7033726))

(assert (=> b!6200178 d!1943912))

(assert (=> d!1943680 d!1943770))

(declare-fun d!1943914 () Bool)

(assert (=> d!1943914 (= (isEmpty!36592 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326)) (not (is-Some!16030 (findConcatSeparation!2445 (regOne!32792 r!7292) (regTwo!32792 r!7292) Nil!64597 s!2326 s!2326))))))

(assert (=> d!1943662 d!1943914))

(assert (=> b!6200381 d!1943848))

(declare-fun d!1943916 () Bool)

(assert (=> d!1943916 (= (isEmpty!36589 (exprs!6024 (h!71044 zl!343))) (is-Nil!64595 (exprs!6024 (h!71044 zl!343))))))

(assert (=> b!6200518 d!1943916))

(declare-fun d!1943918 () Bool)

(declare-fun res!2564968 () Bool)

(declare-fun e!3776197 () Bool)

(assert (=> d!1943918 (=> res!2564968 e!3776197)))

(assert (=> d!1943918 (= res!2564968 (is-Nil!64595 (exprs!6024 lt!2342828)))))

(assert (=> d!1943918 (= (forall!15254 (exprs!6024 lt!2342828) lambda!338776) e!3776197)))

(declare-fun b!6201154 () Bool)

(declare-fun e!3776198 () Bool)

(assert (=> b!6201154 (= e!3776197 e!3776198)))

(declare-fun res!2564969 () Bool)

(assert (=> b!6201154 (=> (not res!2564969) (not e!3776198))))

(assert (=> b!6201154 (= res!2564969 (dynLambda!25476 lambda!338776 (h!71043 (exprs!6024 lt!2342828))))))

(declare-fun b!6201155 () Bool)

(assert (=> b!6201155 (= e!3776198 (forall!15254 (t!378235 (exprs!6024 lt!2342828)) lambda!338776))))

(assert (= (and d!1943918 (not res!2564968)) b!6201154))

(assert (= (and b!6201154 res!2564969) b!6201155))

(declare-fun b_lambda!235847 () Bool)

(assert (=> (not b_lambda!235847) (not b!6201154)))

(declare-fun m!7033728 () Bool)

(assert (=> b!6201154 m!7033728))

(declare-fun m!7033730 () Bool)

(assert (=> b!6201155 m!7033730))

(assert (=> d!1943646 d!1943918))

(declare-fun d!1943920 () Bool)

(declare-fun res!2564970 () Bool)

(declare-fun e!3776199 () Bool)

(assert (=> d!1943920 (=> res!2564970 e!3776199)))

(assert (=> d!1943920 (= res!2564970 (is-Nil!64595 (exprs!6024 (h!71044 zl!343))))))

(assert (=> d!1943920 (= (forall!15254 (exprs!6024 (h!71044 zl!343)) lambda!338789) e!3776199)))

(declare-fun b!6201156 () Bool)

(declare-fun e!3776200 () Bool)

(assert (=> b!6201156 (= e!3776199 e!3776200)))

(declare-fun res!2564971 () Bool)

(assert (=> b!6201156 (=> (not res!2564971) (not e!3776200))))

(assert (=> b!6201156 (= res!2564971 (dynLambda!25476 lambda!338789 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun b!6201157 () Bool)

(assert (=> b!6201157 (= e!3776200 (forall!15254 (t!378235 (exprs!6024 (h!71044 zl!343))) lambda!338789))))

(assert (= (and d!1943920 (not res!2564970)) b!6201156))

(assert (= (and b!6201156 res!2564971) b!6201157))

(declare-fun b_lambda!235849 () Bool)

(assert (=> (not b_lambda!235849) (not b!6201156)))

(declare-fun m!7033732 () Bool)

(assert (=> b!6201156 m!7033732))

(declare-fun m!7033734 () Bool)

(assert (=> b!6201157 m!7033734))

(assert (=> d!1943668 d!1943920))

(declare-fun d!1943922 () Bool)

(declare-fun c!1119472 () Bool)

(assert (=> d!1943922 (= c!1119472 (isEmpty!36593 (tail!11874 (t!378237 s!2326))))))

(declare-fun e!3776201 () Bool)

(assert (=> d!1943922 (= (matchZipper!2152 (derivationStepZipper!2106 lt!2342834 (head!12789 (t!378237 s!2326))) (tail!11874 (t!378237 s!2326))) e!3776201)))

(declare-fun b!6201158 () Bool)

(assert (=> b!6201158 (= e!3776201 (nullableZipper!1914 (derivationStepZipper!2106 lt!2342834 (head!12789 (t!378237 s!2326)))))))

(declare-fun b!6201159 () Bool)

(assert (=> b!6201159 (= e!3776201 (matchZipper!2152 (derivationStepZipper!2106 (derivationStepZipper!2106 lt!2342834 (head!12789 (t!378237 s!2326))) (head!12789 (tail!11874 (t!378237 s!2326)))) (tail!11874 (tail!11874 (t!378237 s!2326)))))))

(assert (= (and d!1943922 c!1119472) b!6201158))

(assert (= (and d!1943922 (not c!1119472)) b!6201159))

(assert (=> d!1943922 m!7033108))

(assert (=> d!1943922 m!7033470))

(assert (=> b!6201158 m!7033118))

(declare-fun m!7033736 () Bool)

(assert (=> b!6201158 m!7033736))

(assert (=> b!6201159 m!7033108))

(assert (=> b!6201159 m!7033474))

(assert (=> b!6201159 m!7033118))

(assert (=> b!6201159 m!7033474))

(declare-fun m!7033738 () Bool)

(assert (=> b!6201159 m!7033738))

(assert (=> b!6201159 m!7033108))

(assert (=> b!6201159 m!7033478))

(assert (=> b!6201159 m!7033738))

(assert (=> b!6201159 m!7033478))

(declare-fun m!7033740 () Bool)

(assert (=> b!6201159 m!7033740))

(assert (=> b!6200264 d!1943922))

(declare-fun bs!1538544 () Bool)

(declare-fun d!1943924 () Bool)

(assert (= bs!1538544 (and d!1943924 b!6200007)))

(declare-fun lambda!338850 () Int)

(assert (=> bs!1538544 (= (= (head!12789 (t!378237 s!2326)) (h!71045 s!2326)) (= lambda!338850 lambda!338756))))

(declare-fun bs!1538545 () Bool)

(assert (= bs!1538545 (and d!1943924 d!1943806)))

(assert (=> bs!1538545 (= lambda!338850 lambda!338832)))

(declare-fun bs!1538546 () Bool)

(assert (= bs!1538546 (and d!1943924 d!1943884)))

(assert (=> bs!1538546 (= lambda!338850 lambda!338843)))

(assert (=> d!1943924 true))

(assert (=> d!1943924 (= (derivationStepZipper!2106 lt!2342834 (head!12789 (t!378237 s!2326))) (flatMap!1645 lt!2342834 lambda!338850))))

(declare-fun bs!1538547 () Bool)

(assert (= bs!1538547 d!1943924))

(declare-fun m!7033742 () Bool)

(assert (=> bs!1538547 m!7033742))

(assert (=> b!6200264 d!1943924))

(assert (=> b!6200264 d!1943808))

(assert (=> b!6200264 d!1943810))

(declare-fun bs!1538548 () Bool)

(declare-fun d!1943926 () Bool)

(assert (= bs!1538548 (and d!1943926 d!1943790)))

(declare-fun lambda!338851 () Int)

(assert (=> bs!1538548 (= lambda!338851 lambda!338826)))

(declare-fun bs!1538549 () Bool)

(assert (= bs!1538549 (and d!1943926 d!1943642)))

(assert (=> bs!1538549 (= lambda!338851 lambda!338770)))

(declare-fun bs!1538550 () Bool)

(assert (= bs!1538550 (and d!1943926 d!1943646)))

(assert (=> bs!1538550 (= lambda!338851 lambda!338776)))

(declare-fun bs!1538551 () Bool)

(assert (= bs!1538551 (and d!1943926 d!1943886)))

(assert (=> bs!1538551 (= lambda!338851 lambda!338844)))

(declare-fun bs!1538552 () Bool)

(assert (= bs!1538552 (and d!1943926 d!1943834)))

(assert (=> bs!1538552 (= lambda!338851 lambda!338839)))

(declare-fun bs!1538553 () Bool)

(assert (= bs!1538553 (and d!1943926 d!1943720)))

(assert (=> bs!1538553 (= lambda!338851 lambda!338808)))

(declare-fun bs!1538554 () Bool)

(assert (= bs!1538554 (and d!1943926 d!1943668)))

(assert (=> bs!1538554 (= lambda!338851 lambda!338789)))

(declare-fun bs!1538555 () Bool)

(assert (= bs!1538555 (and d!1943926 d!1943666)))

(assert (=> bs!1538555 (= lambda!338851 lambda!338788)))

(declare-fun bs!1538556 () Bool)

(assert (= bs!1538556 (and d!1943926 d!1943644)))

(assert (=> bs!1538556 (= lambda!338851 lambda!338773)))

(assert (=> d!1943926 (= (inv!83598 setElem!42087) (forall!15254 (exprs!6024 setElem!42087) lambda!338851))))

(declare-fun bs!1538557 () Bool)

(assert (= bs!1538557 d!1943926))

(declare-fun m!7033744 () Bool)

(assert (=> bs!1538557 m!7033744))

(assert (=> setNonEmpty!42087 d!1943926))

(declare-fun d!1943928 () Bool)

(assert (=> d!1943928 (= (isEmpty!36589 (unfocusZipperList!1561 zl!343)) (is-Nil!64595 (unfocusZipperList!1561 zl!343)))))

(assert (=> b!6200143 d!1943928))

(declare-fun b!6201160 () Bool)

(declare-fun e!3776204 () (Set Context!11048))

(declare-fun call!519015 () (Set Context!11048))

(assert (=> b!6201160 (= e!3776204 call!519015)))

(declare-fun b!6201161 () Bool)

(declare-fun e!3776202 () (Set Context!11048))

(assert (=> b!6201161 (= e!3776202 e!3776204)))

(declare-fun c!1119474 () Bool)

(assert (=> b!6201161 (= c!1119474 (is-Concat!24985 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun call!519013 () List!64719)

(declare-fun call!519011 () (Set Context!11048))

(declare-fun c!1119475 () Bool)

(declare-fun bm!519006 () Bool)

(assert (=> bm!519006 (= call!519011 (derivationStepZipperDown!1388 (ite c!1119475 (regOne!32793 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (regOne!32792 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))) (ite c!1119475 (ite c!1119298 lt!2342828 (Context!11049 call!518902)) (Context!11049 call!519013)) (h!71045 s!2326)))))

(declare-fun b!6201162 () Bool)

(declare-fun e!3776206 () (Set Context!11048))

(assert (=> b!6201162 (= e!3776206 call!519015)))

(declare-fun bm!519007 () Bool)

(declare-fun call!519016 () (Set Context!11048))

(declare-fun call!519012 () (Set Context!11048))

(assert (=> bm!519007 (= call!519016 call!519012)))

(declare-fun c!1119477 () Bool)

(declare-fun bm!519008 () Bool)

(assert (=> bm!519008 (= call!519013 ($colon$colon!2009 (exprs!6024 (ite c!1119298 lt!2342828 (Context!11049 call!518902))) (ite (or c!1119477 c!1119474) (regTwo!32792 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))))

(declare-fun b!6201163 () Bool)

(assert (=> b!6201163 (= e!3776202 (set.union call!519011 call!519016))))

(declare-fun d!1943930 () Bool)

(declare-fun c!1119476 () Bool)

(assert (=> d!1943930 (= c!1119476 (and (is-ElementMatch!16140 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (= (c!1119187 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (h!71045 s!2326))))))

(declare-fun e!3776207 () (Set Context!11048))

(assert (=> d!1943930 (= (derivationStepZipperDown!1388 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))) (ite c!1119298 lt!2342828 (Context!11049 call!518902)) (h!71045 s!2326)) e!3776207)))

(declare-fun b!6201164 () Bool)

(declare-fun e!3776203 () (Set Context!11048))

(assert (=> b!6201164 (= e!3776203 (set.union call!519011 call!519012))))

(declare-fun b!6201165 () Bool)

(assert (=> b!6201165 (= e!3776206 (as set.empty (Set Context!11048)))))

(declare-fun b!6201166 () Bool)

(assert (=> b!6201166 (= e!3776207 e!3776203)))

(assert (=> b!6201166 (= c!1119475 (is-Union!16140 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(declare-fun b!6201167 () Bool)

(declare-fun c!1119473 () Bool)

(assert (=> b!6201167 (= c!1119473 (is-Star!16140 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(assert (=> b!6201167 (= e!3776204 e!3776206)))

(declare-fun bm!519009 () Bool)

(declare-fun call!519014 () List!64719)

(assert (=> bm!519009 (= call!519014 call!519013)))

(declare-fun bm!519010 () Bool)

(assert (=> bm!519010 (= call!519012 (derivationStepZipperDown!1388 (ite c!1119475 (regTwo!32793 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (ite c!1119477 (regTwo!32792 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (ite c!1119474 (regOne!32792 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))) (reg!16469 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))) (ite (or c!1119475 c!1119477) (ite c!1119298 lt!2342828 (Context!11049 call!518902)) (Context!11049 call!519014)) (h!71045 s!2326)))))

(declare-fun bm!519011 () Bool)

(assert (=> bm!519011 (= call!519015 call!519016)))

(declare-fun b!6201168 () Bool)

(assert (=> b!6201168 (= e!3776207 (set.insert (ite c!1119298 lt!2342828 (Context!11049 call!518902)) (as set.empty (Set Context!11048))))))

(declare-fun b!6201169 () Bool)

(declare-fun e!3776205 () Bool)

(assert (=> b!6201169 (= c!1119477 e!3776205)))

(declare-fun res!2564972 () Bool)

(assert (=> b!6201169 (=> (not res!2564972) (not e!3776205))))

(assert (=> b!6201169 (= res!2564972 (is-Concat!24985 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343)))))))))

(assert (=> b!6201169 (= e!3776203 e!3776202)))

(declare-fun b!6201170 () Bool)

(assert (=> b!6201170 (= e!3776205 (nullable!6133 (regOne!32792 (ite c!1119298 (regOne!32793 (h!71043 (exprs!6024 (h!71044 zl!343)))) (regOne!32792 (h!71043 (exprs!6024 (h!71044 zl!343))))))))))

(assert (= (and d!1943930 c!1119476) b!6201168))

(assert (= (and d!1943930 (not c!1119476)) b!6201166))

(assert (= (and b!6201166 c!1119475) b!6201164))

(assert (= (and b!6201166 (not c!1119475)) b!6201169))

(assert (= (and b!6201169 res!2564972) b!6201170))

(assert (= (and b!6201169 c!1119477) b!6201163))

(assert (= (and b!6201169 (not c!1119477)) b!6201161))

(assert (= (and b!6201161 c!1119474) b!6201160))

(assert (= (and b!6201161 (not c!1119474)) b!6201167))

(assert (= (and b!6201167 c!1119473) b!6201162))

(assert (= (and b!6201167 (not c!1119473)) b!6201165))

(assert (= (or b!6201160 b!6201162) bm!519009))

(assert (= (or b!6201160 b!6201162) bm!519011))

(assert (= (or b!6201163 bm!519009) bm!519008))

(assert (= (or b!6201163 bm!519011) bm!519007))

(assert (= (or b!6201164 bm!519007) bm!519010))

(assert (= (or b!6201164 b!6201163) bm!519006))

(declare-fun m!7033746 () Bool)

(assert (=> b!6201168 m!7033746))

(declare-fun m!7033748 () Bool)

(assert (=> bm!519006 m!7033748))

(declare-fun m!7033750 () Bool)

(assert (=> b!6201170 m!7033750))

(declare-fun m!7033752 () Bool)

(assert (=> bm!519008 m!7033752))

(declare-fun m!7033754 () Bool)

(assert (=> bm!519010 m!7033754))

(assert (=> bm!518895 d!1943930))

(declare-fun d!1943932 () Bool)

(assert (=> d!1943932 (= (isEmpty!36589 (tail!11873 (exprs!6024 (h!71044 zl!343)))) (is-Nil!64595 (tail!11873 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> b!6200522 d!1943932))

(declare-fun d!1943934 () Bool)

(assert (=> d!1943934 (= (tail!11873 (exprs!6024 (h!71044 zl!343))) (t!378235 (exprs!6024 (h!71044 zl!343))))))

(assert (=> b!6200522 d!1943934))

(declare-fun bs!1538558 () Bool)

(declare-fun d!1943936 () Bool)

(assert (= bs!1538558 (and d!1943936 d!1943790)))

(declare-fun lambda!338852 () Int)

(assert (=> bs!1538558 (= lambda!338852 lambda!338826)))

(declare-fun bs!1538559 () Bool)

(assert (= bs!1538559 (and d!1943936 d!1943642)))

(assert (=> bs!1538559 (= lambda!338852 lambda!338770)))

(declare-fun bs!1538560 () Bool)

(assert (= bs!1538560 (and d!1943936 d!1943646)))

(assert (=> bs!1538560 (= lambda!338852 lambda!338776)))

(declare-fun bs!1538561 () Bool)

(assert (= bs!1538561 (and d!1943936 d!1943886)))

(assert (=> bs!1538561 (= lambda!338852 lambda!338844)))

(declare-fun bs!1538562 () Bool)

(assert (= bs!1538562 (and d!1943936 d!1943926)))

(assert (=> bs!1538562 (= lambda!338852 lambda!338851)))

(declare-fun bs!1538563 () Bool)

(assert (= bs!1538563 (and d!1943936 d!1943834)))

(assert (=> bs!1538563 (= lambda!338852 lambda!338839)))

(declare-fun bs!1538564 () Bool)

(assert (= bs!1538564 (and d!1943936 d!1943720)))

(assert (=> bs!1538564 (= lambda!338852 lambda!338808)))

(declare-fun bs!1538565 () Bool)

(assert (= bs!1538565 (and d!1943936 d!1943668)))

(assert (=> bs!1538565 (= lambda!338852 lambda!338789)))

(declare-fun bs!1538566 () Bool)

(assert (= bs!1538566 (and d!1943936 d!1943666)))

(assert (=> bs!1538566 (= lambda!338852 lambda!338788)))

(declare-fun bs!1538567 () Bool)

(assert (= bs!1538567 (and d!1943936 d!1943644)))

(assert (=> bs!1538567 (= lambda!338852 lambda!338773)))

(declare-fun b!6201171 () Bool)

(declare-fun e!3776211 () Bool)

(assert (=> b!6201171 (= e!3776211 (isEmpty!36589 (t!378235 (t!378235 (unfocusZipperList!1561 zl!343)))))))

(declare-fun b!6201172 () Bool)

(declare-fun e!3776212 () Bool)

(declare-fun e!3776210 () Bool)

(assert (=> b!6201172 (= e!3776212 e!3776210)))

(declare-fun c!1119481 () Bool)

(assert (=> b!6201172 (= c!1119481 (isEmpty!36589 (t!378235 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6201173 () Bool)

(declare-fun e!3776209 () Regex!16140)

(declare-fun e!3776213 () Regex!16140)

(assert (=> b!6201173 (= e!3776209 e!3776213)))

(declare-fun c!1119478 () Bool)

(assert (=> b!6201173 (= c!1119478 (is-Cons!64595 (t!378235 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6201174 () Bool)

(assert (=> b!6201174 (= e!3776213 (Union!16140 (h!71043 (t!378235 (unfocusZipperList!1561 zl!343))) (generalisedUnion!1984 (t!378235 (t!378235 (unfocusZipperList!1561 zl!343))))))))

(declare-fun b!6201175 () Bool)

(assert (=> b!6201175 (= e!3776209 (h!71043 (t!378235 (unfocusZipperList!1561 zl!343))))))

(declare-fun b!6201176 () Bool)

(declare-fun e!3776208 () Bool)

(declare-fun lt!2342976 () Regex!16140)

(assert (=> b!6201176 (= e!3776208 (= lt!2342976 (head!12788 (t!378235 (unfocusZipperList!1561 zl!343)))))))

(declare-fun b!6201177 () Bool)

(assert (=> b!6201177 (= e!3776208 (isUnion!989 lt!2342976))))

(declare-fun b!6201179 () Bool)

(assert (=> b!6201179 (= e!3776213 EmptyLang!16140)))

(declare-fun b!6201180 () Bool)

(assert (=> b!6201180 (= e!3776210 (isEmptyLang!1559 lt!2342976))))

(assert (=> d!1943936 e!3776212))

(declare-fun res!2564973 () Bool)

(assert (=> d!1943936 (=> (not res!2564973) (not e!3776212))))

(assert (=> d!1943936 (= res!2564973 (validRegex!7876 lt!2342976))))

(assert (=> d!1943936 (= lt!2342976 e!3776209)))

(declare-fun c!1119479 () Bool)

(assert (=> d!1943936 (= c!1119479 e!3776211)))

(declare-fun res!2564974 () Bool)

(assert (=> d!1943936 (=> (not res!2564974) (not e!3776211))))

(assert (=> d!1943936 (= res!2564974 (is-Cons!64595 (t!378235 (unfocusZipperList!1561 zl!343))))))

(assert (=> d!1943936 (forall!15254 (t!378235 (unfocusZipperList!1561 zl!343)) lambda!338852)))

(assert (=> d!1943936 (= (generalisedUnion!1984 (t!378235 (unfocusZipperList!1561 zl!343))) lt!2342976)))

(declare-fun b!6201178 () Bool)

(assert (=> b!6201178 (= e!3776210 e!3776208)))

(declare-fun c!1119480 () Bool)

(assert (=> b!6201178 (= c!1119480 (isEmpty!36589 (tail!11873 (t!378235 (unfocusZipperList!1561 zl!343)))))))

(assert (= (and d!1943936 res!2564974) b!6201171))

(assert (= (and d!1943936 c!1119479) b!6201175))

(assert (= (and d!1943936 (not c!1119479)) b!6201173))

(assert (= (and b!6201173 c!1119478) b!6201174))

(assert (= (and b!6201173 (not c!1119478)) b!6201179))

(assert (= (and d!1943936 res!2564973) b!6201172))

(assert (= (and b!6201172 c!1119481) b!6201180))

(assert (= (and b!6201172 (not c!1119481)) b!6201178))

(assert (= (and b!6201178 c!1119480) b!6201176))

(assert (= (and b!6201178 (not c!1119480)) b!6201177))

(declare-fun m!7033756 () Bool)

(assert (=> b!6201174 m!7033756))

(declare-fun m!7033758 () Bool)

(assert (=> b!6201178 m!7033758))

(assert (=> b!6201178 m!7033758))

(declare-fun m!7033760 () Bool)

(assert (=> b!6201178 m!7033760))

(declare-fun m!7033762 () Bool)

(assert (=> b!6201176 m!7033762))

(declare-fun m!7033764 () Bool)

(assert (=> b!6201180 m!7033764))

(declare-fun m!7033766 () Bool)

(assert (=> d!1943936 m!7033766))

(declare-fun m!7033768 () Bool)

(assert (=> d!1943936 m!7033768))

(declare-fun m!7033770 () Bool)

(assert (=> b!6201177 m!7033770))

(declare-fun m!7033772 () Bool)

(assert (=> b!6201171 m!7033772))

(assert (=> b!6201172 m!7033020))

(assert (=> b!6200145 d!1943936))

(declare-fun bs!1538568 () Bool)

(declare-fun d!1943938 () Bool)

(assert (= bs!1538568 (and d!1943938 d!1943856)))

(declare-fun lambda!338853 () Int)

(assert (=> bs!1538568 (= lambda!338853 lambda!338842)))

(declare-fun bs!1538569 () Bool)

(assert (= bs!1538569 (and d!1943938 d!1943902)))

(assert (=> bs!1538569 (= lambda!338853 lambda!338845)))

(assert (=> d!1943938 (= (nullableZipper!1914 lt!2342833) (exists!2471 lt!2342833 lambda!338853))))

(declare-fun bs!1538570 () Bool)

(assert (= bs!1538570 d!1943938))

(declare-fun m!7033774 () Bool)

(assert (=> bs!1538570 m!7033774))

(assert (=> b!6200258 d!1943938))

(declare-fun b!6201181 () Bool)

(declare-fun e!3776218 () Bool)

(declare-fun e!3776219 () Bool)

(assert (=> b!6201181 (= e!3776218 e!3776219)))

(declare-fun res!2564978 () Bool)

(declare-fun call!519017 () Bool)

(assert (=> b!6201181 (= res!2564978 call!519017)))

(assert (=> b!6201181 (=> res!2564978 e!3776219)))

(declare-fun b!6201182 () Bool)

(declare-fun e!3776216 () Bool)

(declare-fun call!519018 () Bool)

(assert (=> b!6201182 (= e!3776216 call!519018)))

(declare-fun bm!519012 () Bool)

(declare-fun c!1119482 () Bool)

(assert (=> bm!519012 (= call!519017 (nullable!6133 (ite c!1119482 (regOne!32793 (regOne!32792 (regOne!32792 r!7292))) (regOne!32792 (regOne!32792 (regOne!32792 r!7292))))))))

(declare-fun b!6201183 () Bool)

(declare-fun e!3776215 () Bool)

(declare-fun e!3776214 () Bool)

(assert (=> b!6201183 (= e!3776215 e!3776214)))

(declare-fun res!2564977 () Bool)

(assert (=> b!6201183 (=> res!2564977 e!3776214)))

(assert (=> b!6201183 (= res!2564977 (is-Star!16140 (regOne!32792 (regOne!32792 r!7292))))))

(declare-fun d!1943940 () Bool)

(declare-fun res!2564979 () Bool)

(declare-fun e!3776217 () Bool)

(assert (=> d!1943940 (=> res!2564979 e!3776217)))

(assert (=> d!1943940 (= res!2564979 (is-EmptyExpr!16140 (regOne!32792 (regOne!32792 r!7292))))))

(assert (=> d!1943940 (= (nullableFct!2089 (regOne!32792 (regOne!32792 r!7292))) e!3776217)))

(declare-fun b!6201184 () Bool)

(assert (=> b!6201184 (= e!3776217 e!3776215)))

(declare-fun res!2564975 () Bool)

(assert (=> b!6201184 (=> (not res!2564975) (not e!3776215))))

(assert (=> b!6201184 (= res!2564975 (and (not (is-EmptyLang!16140 (regOne!32792 (regOne!32792 r!7292)))) (not (is-ElementMatch!16140 (regOne!32792 (regOne!32792 r!7292))))))))

(declare-fun b!6201185 () Bool)

(assert (=> b!6201185 (= e!3776218 e!3776216)))

(declare-fun res!2564976 () Bool)

(assert (=> b!6201185 (= res!2564976 call!519017)))

(assert (=> b!6201185 (=> (not res!2564976) (not e!3776216))))

(declare-fun b!6201186 () Bool)

(assert (=> b!6201186 (= e!3776214 e!3776218)))

(assert (=> b!6201186 (= c!1119482 (is-Union!16140 (regOne!32792 (regOne!32792 r!7292))))))

(declare-fun b!6201187 () Bool)

(assert (=> b!6201187 (= e!3776219 call!519018)))

(declare-fun bm!519013 () Bool)

(assert (=> bm!519013 (= call!519018 (nullable!6133 (ite c!1119482 (regTwo!32793 (regOne!32792 (regOne!32792 r!7292))) (regTwo!32792 (regOne!32792 (regOne!32792 r!7292))))))))

(assert (= (and d!1943940 (not res!2564979)) b!6201184))

(assert (= (and b!6201184 res!2564975) b!6201183))

(assert (= (and b!6201183 (not res!2564977)) b!6201186))

(assert (= (and b!6201186 c!1119482) b!6201181))

(assert (= (and b!6201186 (not c!1119482)) b!6201185))

(assert (= (and b!6201181 (not res!2564978)) b!6201187))

(assert (= (and b!6201185 res!2564976) b!6201182))

(assert (= (or b!6201187 b!6201182) bm!519013))

(assert (= (or b!6201181 b!6201185) bm!519012))

(declare-fun m!7033776 () Bool)

(assert (=> bm!519012 m!7033776))

(declare-fun m!7033778 () Bool)

(assert (=> bm!519013 m!7033778))

(assert (=> d!1943664 d!1943940))

(declare-fun d!1943942 () Bool)

(assert (=> d!1943942 (= (head!12788 (unfocusZipperList!1561 zl!343)) (h!71043 (unfocusZipperList!1561 zl!343)))))

(assert (=> b!6200147 d!1943942))

(declare-fun d!1943944 () Bool)

(assert (=> d!1943944 (= (nullable!6133 r!7292) (nullableFct!2089 r!7292))))

(declare-fun bs!1538571 () Bool)

(assert (= bs!1538571 d!1943944))

(declare-fun m!7033780 () Bool)

(assert (=> bs!1538571 m!7033780))

(assert (=> b!6200389 d!1943944))

(declare-fun d!1943946 () Bool)

(assert (=> d!1943946 (= (isEmpty!36589 (tail!11873 (unfocusZipperList!1561 zl!343))) (is-Nil!64595 (tail!11873 (unfocusZipperList!1561 zl!343))))))

(assert (=> b!6200149 d!1943946))

(declare-fun d!1943948 () Bool)

(assert (=> d!1943948 (= (tail!11873 (unfocusZipperList!1561 zl!343)) (t!378235 (unfocusZipperList!1561 zl!343)))))

(assert (=> b!6200149 d!1943948))

(declare-fun d!1943950 () Bool)

(declare-fun c!1119485 () Bool)

(assert (=> d!1943950 (= c!1119485 (is-Nil!64596 lt!2342873))))

(declare-fun e!3776222 () (Set Context!11048))

(assert (=> d!1943950 (= (content!12075 lt!2342873) e!3776222)))

(declare-fun b!6201192 () Bool)

(assert (=> b!6201192 (= e!3776222 (as set.empty (Set Context!11048)))))

(declare-fun b!6201193 () Bool)

(assert (=> b!6201193 (= e!3776222 (set.union (set.insert (h!71044 lt!2342873) (as set.empty (Set Context!11048))) (content!12075 (t!378236 lt!2342873))))))

(assert (= (and d!1943950 c!1119485) b!6201192))

(assert (= (and d!1943950 (not c!1119485)) b!6201193))

(declare-fun m!7033782 () Bool)

(assert (=> b!6201193 m!7033782))

(declare-fun m!7033784 () Bool)

(assert (=> b!6201193 m!7033784))

(assert (=> b!6200121 d!1943950))

(assert (=> d!1943676 d!1943682))

(assert (=> d!1943676 d!1943680))

(declare-fun e!3776225 () Bool)

(declare-fun d!1943952 () Bool)

(assert (=> d!1943952 (= (matchZipper!2152 (set.union lt!2342834 lt!2342833) (t!378237 s!2326)) e!3776225)))

(declare-fun res!2564982 () Bool)

(assert (=> d!1943952 (=> res!2564982 e!3776225)))

(assert (=> d!1943952 (= res!2564982 (matchZipper!2152 lt!2342834 (t!378237 s!2326)))))

(assert (=> d!1943952 true))

(declare-fun _$48!1845 () Unit!157891)

(assert (=> d!1943952 (= (choose!46080 lt!2342834 lt!2342833 (t!378237 s!2326)) _$48!1845)))

(declare-fun b!6201196 () Bool)

(assert (=> b!6201196 (= e!3776225 (matchZipper!2152 lt!2342833 (t!378237 s!2326)))))

(assert (= (and d!1943952 (not res!2564982)) b!6201196))

(assert (=> d!1943952 m!7032874))

(assert (=> d!1943952 m!7032872))

(assert (=> b!6201196 m!7032888))

(assert (=> d!1943676 d!1943952))

(assert (=> d!1943682 d!1943770))

(assert (=> d!1943698 d!1943694))

(assert (=> d!1943698 d!1943684))

(declare-fun d!1943954 () Bool)

(assert (=> d!1943954 (= (matchR!8323 r!7292 s!2326) (matchRSpec!3241 r!7292 s!2326))))

(assert (=> d!1943954 true))

(declare-fun _$88!4790 () Unit!157891)

(assert (=> d!1943954 (= (choose!46081 r!7292 s!2326) _$88!4790)))

(declare-fun bs!1538572 () Bool)

(assert (= bs!1538572 d!1943954))

(assert (=> bs!1538572 m!7032892))

(assert (=> bs!1538572 m!7032890))

(assert (=> d!1943698 d!1943954))

(assert (=> d!1943698 d!1943648))

(declare-fun e!3776226 () Bool)

(assert (=> b!6200542 (= tp!1729324 e!3776226)))

(declare-fun b!6201198 () Bool)

(declare-fun tp!1729439 () Bool)

(declare-fun tp!1729435 () Bool)

(assert (=> b!6201198 (= e!3776226 (and tp!1729439 tp!1729435))))

(declare-fun b!6201199 () Bool)

(declare-fun tp!1729438 () Bool)

(assert (=> b!6201199 (= e!3776226 tp!1729438)))

(declare-fun b!6201197 () Bool)

(assert (=> b!6201197 (= e!3776226 tp_is_empty!41533)))

(declare-fun b!6201200 () Bool)

(declare-fun tp!1729436 () Bool)

(declare-fun tp!1729437 () Bool)

(assert (=> b!6201200 (= e!3776226 (and tp!1729436 tp!1729437))))

(assert (= (and b!6200542 (is-ElementMatch!16140 (regOne!32793 (reg!16469 r!7292)))) b!6201197))

(assert (= (and b!6200542 (is-Concat!24985 (regOne!32793 (reg!16469 r!7292)))) b!6201198))

(assert (= (and b!6200542 (is-Star!16140 (regOne!32793 (reg!16469 r!7292)))) b!6201199))

(assert (= (and b!6200542 (is-Union!16140 (regOne!32793 (reg!16469 r!7292)))) b!6201200))

(declare-fun e!3776227 () Bool)

(assert (=> b!6200542 (= tp!1729325 e!3776227)))

(declare-fun b!6201202 () Bool)

(declare-fun tp!1729444 () Bool)

(declare-fun tp!1729440 () Bool)

(assert (=> b!6201202 (= e!3776227 (and tp!1729444 tp!1729440))))

(declare-fun b!6201203 () Bool)

(declare-fun tp!1729443 () Bool)

(assert (=> b!6201203 (= e!3776227 tp!1729443)))

(declare-fun b!6201201 () Bool)

(assert (=> b!6201201 (= e!3776227 tp_is_empty!41533)))

(declare-fun b!6201204 () Bool)

(declare-fun tp!1729441 () Bool)

(declare-fun tp!1729442 () Bool)

(assert (=> b!6201204 (= e!3776227 (and tp!1729441 tp!1729442))))

(assert (= (and b!6200542 (is-ElementMatch!16140 (regTwo!32793 (reg!16469 r!7292)))) b!6201201))

(assert (= (and b!6200542 (is-Concat!24985 (regTwo!32793 (reg!16469 r!7292)))) b!6201202))

(assert (= (and b!6200542 (is-Star!16140 (regTwo!32793 (reg!16469 r!7292)))) b!6201203))

(assert (= (and b!6200542 (is-Union!16140 (regTwo!32793 (reg!16469 r!7292)))) b!6201204))

(declare-fun e!3776228 () Bool)

(assert (=> b!6200565 (= tp!1729354 e!3776228)))

(declare-fun b!6201206 () Bool)

(declare-fun tp!1729449 () Bool)

(declare-fun tp!1729445 () Bool)

(assert (=> b!6201206 (= e!3776228 (and tp!1729449 tp!1729445))))

(declare-fun b!6201207 () Bool)

(declare-fun tp!1729448 () Bool)

(assert (=> b!6201207 (= e!3776228 tp!1729448)))

(declare-fun b!6201205 () Bool)

(assert (=> b!6201205 (= e!3776228 tp_is_empty!41533)))

(declare-fun b!6201208 () Bool)

(declare-fun tp!1729446 () Bool)

(declare-fun tp!1729447 () Bool)

(assert (=> b!6201208 (= e!3776228 (and tp!1729446 tp!1729447))))

(assert (= (and b!6200565 (is-ElementMatch!16140 (regOne!32792 (regOne!32792 r!7292)))) b!6201205))

(assert (= (and b!6200565 (is-Concat!24985 (regOne!32792 (regOne!32792 r!7292)))) b!6201206))

(assert (= (and b!6200565 (is-Star!16140 (regOne!32792 (regOne!32792 r!7292)))) b!6201207))

(assert (= (and b!6200565 (is-Union!16140 (regOne!32792 (regOne!32792 r!7292)))) b!6201208))

(declare-fun e!3776229 () Bool)

(assert (=> b!6200565 (= tp!1729350 e!3776229)))

(declare-fun b!6201210 () Bool)

(declare-fun tp!1729454 () Bool)

(declare-fun tp!1729450 () Bool)

(assert (=> b!6201210 (= e!3776229 (and tp!1729454 tp!1729450))))

(declare-fun b!6201211 () Bool)

(declare-fun tp!1729453 () Bool)

(assert (=> b!6201211 (= e!3776229 tp!1729453)))

(declare-fun b!6201209 () Bool)

(assert (=> b!6201209 (= e!3776229 tp_is_empty!41533)))

(declare-fun b!6201212 () Bool)

(declare-fun tp!1729451 () Bool)

(declare-fun tp!1729452 () Bool)

(assert (=> b!6201212 (= e!3776229 (and tp!1729451 tp!1729452))))

(assert (= (and b!6200565 (is-ElementMatch!16140 (regTwo!32792 (regOne!32792 r!7292)))) b!6201209))

(assert (= (and b!6200565 (is-Concat!24985 (regTwo!32792 (regOne!32792 r!7292)))) b!6201210))

(assert (= (and b!6200565 (is-Star!16140 (regTwo!32792 (regOne!32792 r!7292)))) b!6201211))

(assert (= (and b!6200565 (is-Union!16140 (regTwo!32792 (regOne!32792 r!7292)))) b!6201212))

(declare-fun e!3776230 () Bool)

(assert (=> b!6200544 (= tp!1729332 e!3776230)))

(declare-fun b!6201214 () Bool)

(declare-fun tp!1729459 () Bool)

(declare-fun tp!1729455 () Bool)

(assert (=> b!6201214 (= e!3776230 (and tp!1729459 tp!1729455))))

(declare-fun b!6201215 () Bool)

(declare-fun tp!1729458 () Bool)

(assert (=> b!6201215 (= e!3776230 tp!1729458)))

(declare-fun b!6201213 () Bool)

(assert (=> b!6201213 (= e!3776230 tp_is_empty!41533)))

(declare-fun b!6201216 () Bool)

(declare-fun tp!1729456 () Bool)

(declare-fun tp!1729457 () Bool)

(assert (=> b!6201216 (= e!3776230 (and tp!1729456 tp!1729457))))

(assert (= (and b!6200544 (is-ElementMatch!16140 (regOne!32792 (regOne!32793 r!7292)))) b!6201213))

(assert (= (and b!6200544 (is-Concat!24985 (regOne!32792 (regOne!32793 r!7292)))) b!6201214))

(assert (= (and b!6200544 (is-Star!16140 (regOne!32792 (regOne!32793 r!7292)))) b!6201215))

(assert (= (and b!6200544 (is-Union!16140 (regOne!32792 (regOne!32793 r!7292)))) b!6201216))

(declare-fun e!3776231 () Bool)

(assert (=> b!6200544 (= tp!1729328 e!3776231)))

(declare-fun b!6201218 () Bool)

(declare-fun tp!1729464 () Bool)

(declare-fun tp!1729460 () Bool)

(assert (=> b!6201218 (= e!3776231 (and tp!1729464 tp!1729460))))

(declare-fun b!6201219 () Bool)

(declare-fun tp!1729463 () Bool)

(assert (=> b!6201219 (= e!3776231 tp!1729463)))

(declare-fun b!6201217 () Bool)

(assert (=> b!6201217 (= e!3776231 tp_is_empty!41533)))

(declare-fun b!6201220 () Bool)

(declare-fun tp!1729461 () Bool)

(declare-fun tp!1729462 () Bool)

(assert (=> b!6201220 (= e!3776231 (and tp!1729461 tp!1729462))))

(assert (= (and b!6200544 (is-ElementMatch!16140 (regTwo!32792 (regOne!32793 r!7292)))) b!6201217))

(assert (= (and b!6200544 (is-Concat!24985 (regTwo!32792 (regOne!32793 r!7292)))) b!6201218))

(assert (= (and b!6200544 (is-Star!16140 (regTwo!32792 (regOne!32793 r!7292)))) b!6201219))

(assert (= (and b!6200544 (is-Union!16140 (regTwo!32792 (regOne!32793 r!7292)))) b!6201220))

(declare-fun e!3776232 () Bool)

(assert (=> b!6200566 (= tp!1729353 e!3776232)))

(declare-fun b!6201222 () Bool)

(declare-fun tp!1729469 () Bool)

(declare-fun tp!1729465 () Bool)

(assert (=> b!6201222 (= e!3776232 (and tp!1729469 tp!1729465))))

(declare-fun b!6201223 () Bool)

(declare-fun tp!1729468 () Bool)

(assert (=> b!6201223 (= e!3776232 tp!1729468)))

(declare-fun b!6201221 () Bool)

(assert (=> b!6201221 (= e!3776232 tp_is_empty!41533)))

(declare-fun b!6201224 () Bool)

(declare-fun tp!1729466 () Bool)

(declare-fun tp!1729467 () Bool)

(assert (=> b!6201224 (= e!3776232 (and tp!1729466 tp!1729467))))

(assert (= (and b!6200566 (is-ElementMatch!16140 (reg!16469 (regOne!32792 r!7292)))) b!6201221))

(assert (= (and b!6200566 (is-Concat!24985 (reg!16469 (regOne!32792 r!7292)))) b!6201222))

(assert (= (and b!6200566 (is-Star!16140 (reg!16469 (regOne!32792 r!7292)))) b!6201223))

(assert (= (and b!6200566 (is-Union!16140 (reg!16469 (regOne!32792 r!7292)))) b!6201224))

(declare-fun e!3776233 () Bool)

(assert (=> b!6200567 (= tp!1729351 e!3776233)))

(declare-fun b!6201226 () Bool)

(declare-fun tp!1729474 () Bool)

(declare-fun tp!1729470 () Bool)

(assert (=> b!6201226 (= e!3776233 (and tp!1729474 tp!1729470))))

(declare-fun b!6201227 () Bool)

(declare-fun tp!1729473 () Bool)

(assert (=> b!6201227 (= e!3776233 tp!1729473)))

(declare-fun b!6201225 () Bool)

(assert (=> b!6201225 (= e!3776233 tp_is_empty!41533)))

(declare-fun b!6201228 () Bool)

(declare-fun tp!1729471 () Bool)

(declare-fun tp!1729472 () Bool)

(assert (=> b!6201228 (= e!3776233 (and tp!1729471 tp!1729472))))

(assert (= (and b!6200567 (is-ElementMatch!16140 (regOne!32793 (regOne!32792 r!7292)))) b!6201225))

(assert (= (and b!6200567 (is-Concat!24985 (regOne!32793 (regOne!32792 r!7292)))) b!6201226))

(assert (= (and b!6200567 (is-Star!16140 (regOne!32793 (regOne!32792 r!7292)))) b!6201227))

(assert (= (and b!6200567 (is-Union!16140 (regOne!32793 (regOne!32792 r!7292)))) b!6201228))

(declare-fun e!3776234 () Bool)

(assert (=> b!6200567 (= tp!1729352 e!3776234)))

(declare-fun b!6201230 () Bool)

(declare-fun tp!1729479 () Bool)

(declare-fun tp!1729475 () Bool)

(assert (=> b!6201230 (= e!3776234 (and tp!1729479 tp!1729475))))

(declare-fun b!6201231 () Bool)

(declare-fun tp!1729478 () Bool)

(assert (=> b!6201231 (= e!3776234 tp!1729478)))

(declare-fun b!6201229 () Bool)

(assert (=> b!6201229 (= e!3776234 tp_is_empty!41533)))

(declare-fun b!6201232 () Bool)

(declare-fun tp!1729476 () Bool)

(declare-fun tp!1729477 () Bool)

(assert (=> b!6201232 (= e!3776234 (and tp!1729476 tp!1729477))))

(assert (= (and b!6200567 (is-ElementMatch!16140 (regTwo!32793 (regOne!32792 r!7292)))) b!6201229))

(assert (= (and b!6200567 (is-Concat!24985 (regTwo!32793 (regOne!32792 r!7292)))) b!6201230))

(assert (= (and b!6200567 (is-Star!16140 (regTwo!32793 (regOne!32792 r!7292)))) b!6201231))

(assert (= (and b!6200567 (is-Union!16140 (regTwo!32793 (regOne!32792 r!7292)))) b!6201232))

(declare-fun e!3776235 () Bool)

(assert (=> b!6200545 (= tp!1729331 e!3776235)))

(declare-fun b!6201234 () Bool)

(declare-fun tp!1729484 () Bool)

(declare-fun tp!1729480 () Bool)

(assert (=> b!6201234 (= e!3776235 (and tp!1729484 tp!1729480))))

(declare-fun b!6201235 () Bool)

(declare-fun tp!1729483 () Bool)

(assert (=> b!6201235 (= e!3776235 tp!1729483)))

(declare-fun b!6201233 () Bool)

(assert (=> b!6201233 (= e!3776235 tp_is_empty!41533)))

(declare-fun b!6201236 () Bool)

(declare-fun tp!1729481 () Bool)

(declare-fun tp!1729482 () Bool)

(assert (=> b!6201236 (= e!3776235 (and tp!1729481 tp!1729482))))

(assert (= (and b!6200545 (is-ElementMatch!16140 (reg!16469 (regOne!32793 r!7292)))) b!6201233))

(assert (= (and b!6200545 (is-Concat!24985 (reg!16469 (regOne!32793 r!7292)))) b!6201234))

(assert (= (and b!6200545 (is-Star!16140 (reg!16469 (regOne!32793 r!7292)))) b!6201235))

(assert (= (and b!6200545 (is-Union!16140 (reg!16469 (regOne!32793 r!7292)))) b!6201236))

(declare-fun e!3776236 () Bool)

(assert (=> b!6200546 (= tp!1729329 e!3776236)))

(declare-fun b!6201238 () Bool)

(declare-fun tp!1729489 () Bool)

(declare-fun tp!1729485 () Bool)

(assert (=> b!6201238 (= e!3776236 (and tp!1729489 tp!1729485))))

(declare-fun b!6201239 () Bool)

(declare-fun tp!1729488 () Bool)

(assert (=> b!6201239 (= e!3776236 tp!1729488)))

(declare-fun b!6201237 () Bool)

(assert (=> b!6201237 (= e!3776236 tp_is_empty!41533)))

(declare-fun b!6201240 () Bool)

(declare-fun tp!1729486 () Bool)

(declare-fun tp!1729487 () Bool)

(assert (=> b!6201240 (= e!3776236 (and tp!1729486 tp!1729487))))

(assert (= (and b!6200546 (is-ElementMatch!16140 (regOne!32793 (regOne!32793 r!7292)))) b!6201237))

(assert (= (and b!6200546 (is-Concat!24985 (regOne!32793 (regOne!32793 r!7292)))) b!6201238))

(assert (= (and b!6200546 (is-Star!16140 (regOne!32793 (regOne!32793 r!7292)))) b!6201239))

(assert (= (and b!6200546 (is-Union!16140 (regOne!32793 (regOne!32793 r!7292)))) b!6201240))

(declare-fun e!3776237 () Bool)

(assert (=> b!6200546 (= tp!1729330 e!3776237)))

(declare-fun b!6201242 () Bool)

(declare-fun tp!1729494 () Bool)

(declare-fun tp!1729490 () Bool)

(assert (=> b!6201242 (= e!3776237 (and tp!1729494 tp!1729490))))

(declare-fun b!6201243 () Bool)

(declare-fun tp!1729493 () Bool)

(assert (=> b!6201243 (= e!3776237 tp!1729493)))

(declare-fun b!6201241 () Bool)

(assert (=> b!6201241 (= e!3776237 tp_is_empty!41533)))

(declare-fun b!6201244 () Bool)

(declare-fun tp!1729491 () Bool)

(declare-fun tp!1729492 () Bool)

(assert (=> b!6201244 (= e!3776237 (and tp!1729491 tp!1729492))))

(assert (= (and b!6200546 (is-ElementMatch!16140 (regTwo!32793 (regOne!32793 r!7292)))) b!6201241))

(assert (= (and b!6200546 (is-Concat!24985 (regTwo!32793 (regOne!32793 r!7292)))) b!6201242))

(assert (= (and b!6200546 (is-Star!16140 (regTwo!32793 (regOne!32793 r!7292)))) b!6201243))

(assert (= (and b!6200546 (is-Union!16140 (regTwo!32793 (regOne!32793 r!7292)))) b!6201244))

(declare-fun b!6201245 () Bool)

(declare-fun e!3776238 () Bool)

(declare-fun tp!1729495 () Bool)

(assert (=> b!6201245 (= e!3776238 (and tp_is_empty!41533 tp!1729495))))

(assert (=> b!6200576 (= tp!1729362 e!3776238)))

(assert (= (and b!6200576 (is-Cons!64597 (t!378237 (t!378237 s!2326)))) b!6201245))

(declare-fun condSetEmpty!42094 () Bool)

(assert (=> setNonEmpty!42087 (= condSetEmpty!42094 (= setRest!42087 (as set.empty (Set Context!11048))))))

(declare-fun setRes!42094 () Bool)

(assert (=> setNonEmpty!42087 (= tp!1729343 setRes!42094)))

(declare-fun setIsEmpty!42094 () Bool)

(assert (=> setIsEmpty!42094 setRes!42094))

(declare-fun tp!1729497 () Bool)

(declare-fun setNonEmpty!42094 () Bool)

(declare-fun setElem!42094 () Context!11048)

(declare-fun e!3776239 () Bool)

(assert (=> setNonEmpty!42094 (= setRes!42094 (and tp!1729497 (inv!83598 setElem!42094) e!3776239))))

(declare-fun setRest!42094 () (Set Context!11048))

(assert (=> setNonEmpty!42094 (= setRest!42087 (set.union (set.insert setElem!42094 (as set.empty (Set Context!11048))) setRest!42094))))

(declare-fun b!6201246 () Bool)

(declare-fun tp!1729496 () Bool)

(assert (=> b!6201246 (= e!3776239 tp!1729496)))

(assert (= (and setNonEmpty!42087 condSetEmpty!42094) setIsEmpty!42094))

(assert (= (and setNonEmpty!42087 (not condSetEmpty!42094)) setNonEmpty!42094))

(assert (= setNonEmpty!42094 b!6201246))

(declare-fun m!7033786 () Bool)

(assert (=> setNonEmpty!42094 m!7033786))

(declare-fun b!6201247 () Bool)

(declare-fun e!3776240 () Bool)

(declare-fun tp!1729498 () Bool)

(declare-fun tp!1729499 () Bool)

(assert (=> b!6201247 (= e!3776240 (and tp!1729498 tp!1729499))))

(assert (=> b!6200555 (= tp!1729342 e!3776240)))

(assert (= (and b!6200555 (is-Cons!64595 (exprs!6024 setElem!42087))) b!6201247))

(declare-fun e!3776241 () Bool)

(assert (=> b!6200569 (= tp!1729359 e!3776241)))

(declare-fun b!6201249 () Bool)

(declare-fun tp!1729504 () Bool)

(declare-fun tp!1729500 () Bool)

(assert (=> b!6201249 (= e!3776241 (and tp!1729504 tp!1729500))))

(declare-fun b!6201250 () Bool)

(declare-fun tp!1729503 () Bool)

(assert (=> b!6201250 (= e!3776241 tp!1729503)))

(declare-fun b!6201248 () Bool)

(assert (=> b!6201248 (= e!3776241 tp_is_empty!41533)))

(declare-fun b!6201251 () Bool)

(declare-fun tp!1729501 () Bool)

(declare-fun tp!1729502 () Bool)

(assert (=> b!6201251 (= e!3776241 (and tp!1729501 tp!1729502))))

(assert (= (and b!6200569 (is-ElementMatch!16140 (regOne!32792 (regTwo!32792 r!7292)))) b!6201248))

(assert (= (and b!6200569 (is-Concat!24985 (regOne!32792 (regTwo!32792 r!7292)))) b!6201249))

(assert (= (and b!6200569 (is-Star!16140 (regOne!32792 (regTwo!32792 r!7292)))) b!6201250))

(assert (= (and b!6200569 (is-Union!16140 (regOne!32792 (regTwo!32792 r!7292)))) b!6201251))

(declare-fun e!3776242 () Bool)

(assert (=> b!6200569 (= tp!1729355 e!3776242)))

(declare-fun b!6201253 () Bool)

(declare-fun tp!1729509 () Bool)

(declare-fun tp!1729505 () Bool)

(assert (=> b!6201253 (= e!3776242 (and tp!1729509 tp!1729505))))

(declare-fun b!6201254 () Bool)

(declare-fun tp!1729508 () Bool)

(assert (=> b!6201254 (= e!3776242 tp!1729508)))

(declare-fun b!6201252 () Bool)

(assert (=> b!6201252 (= e!3776242 tp_is_empty!41533)))

(declare-fun b!6201255 () Bool)

(declare-fun tp!1729506 () Bool)

(declare-fun tp!1729507 () Bool)

(assert (=> b!6201255 (= e!3776242 (and tp!1729506 tp!1729507))))

(assert (= (and b!6200569 (is-ElementMatch!16140 (regTwo!32792 (regTwo!32792 r!7292)))) b!6201252))

(assert (= (and b!6200569 (is-Concat!24985 (regTwo!32792 (regTwo!32792 r!7292)))) b!6201253))

(assert (= (and b!6200569 (is-Star!16140 (regTwo!32792 (regTwo!32792 r!7292)))) b!6201254))

(assert (= (and b!6200569 (is-Union!16140 (regTwo!32792 (regTwo!32792 r!7292)))) b!6201255))

(declare-fun e!3776243 () Bool)

(assert (=> b!6200577 (= tp!1729363 e!3776243)))

(declare-fun b!6201257 () Bool)

(declare-fun tp!1729514 () Bool)

(declare-fun tp!1729510 () Bool)

(assert (=> b!6201257 (= e!3776243 (and tp!1729514 tp!1729510))))

(declare-fun b!6201258 () Bool)

(declare-fun tp!1729513 () Bool)

(assert (=> b!6201258 (= e!3776243 tp!1729513)))

(declare-fun b!6201256 () Bool)

(assert (=> b!6201256 (= e!3776243 tp_is_empty!41533)))

(declare-fun b!6201259 () Bool)

(declare-fun tp!1729511 () Bool)

(declare-fun tp!1729512 () Bool)

(assert (=> b!6201259 (= e!3776243 (and tp!1729511 tp!1729512))))

(assert (= (and b!6200577 (is-ElementMatch!16140 (h!71043 (exprs!6024 (h!71044 zl!343))))) b!6201256))

(assert (= (and b!6200577 (is-Concat!24985 (h!71043 (exprs!6024 (h!71044 zl!343))))) b!6201257))

(assert (= (and b!6200577 (is-Star!16140 (h!71043 (exprs!6024 (h!71044 zl!343))))) b!6201258))

(assert (= (and b!6200577 (is-Union!16140 (h!71043 (exprs!6024 (h!71044 zl!343))))) b!6201259))

(declare-fun b!6201260 () Bool)

(declare-fun e!3776244 () Bool)

(declare-fun tp!1729515 () Bool)

(declare-fun tp!1729516 () Bool)

(assert (=> b!6201260 (= e!3776244 (and tp!1729515 tp!1729516))))

(assert (=> b!6200577 (= tp!1729364 e!3776244)))

(assert (= (and b!6200577 (is-Cons!64595 (t!378235 (exprs!6024 (h!71044 zl!343))))) b!6201260))

(declare-fun b!6201262 () Bool)

(declare-fun e!3776246 () Bool)

(declare-fun tp!1729517 () Bool)

(assert (=> b!6201262 (= e!3776246 tp!1729517)))

(declare-fun e!3776245 () Bool)

(declare-fun b!6201261 () Bool)

(declare-fun tp!1729518 () Bool)

(assert (=> b!6201261 (= e!3776245 (and (inv!83598 (h!71044 (t!378236 (t!378236 zl!343)))) e!3776246 tp!1729518))))

(assert (=> b!6200562 (= tp!1729349 e!3776245)))

(assert (= b!6201261 b!6201262))

(assert (= (and b!6200562 (is-Cons!64596 (t!378236 (t!378236 zl!343)))) b!6201261))

(declare-fun m!7033788 () Bool)

(assert (=> b!6201261 m!7033788))

(declare-fun b!6201263 () Bool)

(declare-fun e!3776247 () Bool)

(declare-fun tp!1729519 () Bool)

(declare-fun tp!1729520 () Bool)

(assert (=> b!6201263 (= e!3776247 (and tp!1729519 tp!1729520))))

(assert (=> b!6200563 (= tp!1729348 e!3776247)))

(assert (= (and b!6200563 (is-Cons!64595 (exprs!6024 (h!71044 (t!378236 zl!343))))) b!6201263))

(declare-fun e!3776248 () Bool)

(assert (=> b!6200548 (= tp!1729337 e!3776248)))

(declare-fun b!6201265 () Bool)

(declare-fun tp!1729525 () Bool)

(declare-fun tp!1729521 () Bool)

(assert (=> b!6201265 (= e!3776248 (and tp!1729525 tp!1729521))))

(declare-fun b!6201266 () Bool)

(declare-fun tp!1729524 () Bool)

(assert (=> b!6201266 (= e!3776248 tp!1729524)))

(declare-fun b!6201264 () Bool)

(assert (=> b!6201264 (= e!3776248 tp_is_empty!41533)))

(declare-fun b!6201267 () Bool)

(declare-fun tp!1729522 () Bool)

(declare-fun tp!1729523 () Bool)

(assert (=> b!6201267 (= e!3776248 (and tp!1729522 tp!1729523))))

(assert (= (and b!6200548 (is-ElementMatch!16140 (regOne!32792 (regTwo!32793 r!7292)))) b!6201264))

(assert (= (and b!6200548 (is-Concat!24985 (regOne!32792 (regTwo!32793 r!7292)))) b!6201265))

(assert (= (and b!6200548 (is-Star!16140 (regOne!32792 (regTwo!32793 r!7292)))) b!6201266))

(assert (= (and b!6200548 (is-Union!16140 (regOne!32792 (regTwo!32793 r!7292)))) b!6201267))

(declare-fun e!3776249 () Bool)

(assert (=> b!6200548 (= tp!1729333 e!3776249)))

(declare-fun b!6201269 () Bool)

(declare-fun tp!1729530 () Bool)

(declare-fun tp!1729526 () Bool)

(assert (=> b!6201269 (= e!3776249 (and tp!1729530 tp!1729526))))

(declare-fun b!6201270 () Bool)

(declare-fun tp!1729529 () Bool)

(assert (=> b!6201270 (= e!3776249 tp!1729529)))

(declare-fun b!6201268 () Bool)

(assert (=> b!6201268 (= e!3776249 tp_is_empty!41533)))

(declare-fun b!6201271 () Bool)

(declare-fun tp!1729527 () Bool)

(declare-fun tp!1729528 () Bool)

(assert (=> b!6201271 (= e!3776249 (and tp!1729527 tp!1729528))))

(assert (= (and b!6200548 (is-ElementMatch!16140 (regTwo!32792 (regTwo!32793 r!7292)))) b!6201268))

(assert (= (and b!6200548 (is-Concat!24985 (regTwo!32792 (regTwo!32793 r!7292)))) b!6201269))

(assert (= (and b!6200548 (is-Star!16140 (regTwo!32792 (regTwo!32793 r!7292)))) b!6201270))

(assert (= (and b!6200548 (is-Union!16140 (regTwo!32792 (regTwo!32793 r!7292)))) b!6201271))

(declare-fun e!3776250 () Bool)

(assert (=> b!6200528 (= tp!1729311 e!3776250)))

(declare-fun b!6201273 () Bool)

(declare-fun tp!1729535 () Bool)

(declare-fun tp!1729531 () Bool)

(assert (=> b!6201273 (= e!3776250 (and tp!1729535 tp!1729531))))

(declare-fun b!6201274 () Bool)

(declare-fun tp!1729534 () Bool)

(assert (=> b!6201274 (= e!3776250 tp!1729534)))

(declare-fun b!6201272 () Bool)

(assert (=> b!6201272 (= e!3776250 tp_is_empty!41533)))

(declare-fun b!6201275 () Bool)

(declare-fun tp!1729532 () Bool)

(declare-fun tp!1729533 () Bool)

(assert (=> b!6201275 (= e!3776250 (and tp!1729532 tp!1729533))))

(assert (= (and b!6200528 (is-ElementMatch!16140 (h!71043 (exprs!6024 setElem!42081)))) b!6201272))

(assert (= (and b!6200528 (is-Concat!24985 (h!71043 (exprs!6024 setElem!42081)))) b!6201273))

(assert (= (and b!6200528 (is-Star!16140 (h!71043 (exprs!6024 setElem!42081)))) b!6201274))

(assert (= (and b!6200528 (is-Union!16140 (h!71043 (exprs!6024 setElem!42081)))) b!6201275))

(declare-fun b!6201276 () Bool)

(declare-fun e!3776251 () Bool)

(declare-fun tp!1729536 () Bool)

(declare-fun tp!1729537 () Bool)

(assert (=> b!6201276 (= e!3776251 (and tp!1729536 tp!1729537))))

(assert (=> b!6200528 (= tp!1729312 e!3776251)))

(assert (= (and b!6200528 (is-Cons!64595 (t!378235 (exprs!6024 setElem!42081)))) b!6201276))

(declare-fun e!3776252 () Bool)

(assert (=> b!6200570 (= tp!1729358 e!3776252)))

(declare-fun b!6201278 () Bool)

(declare-fun tp!1729542 () Bool)

(declare-fun tp!1729538 () Bool)

(assert (=> b!6201278 (= e!3776252 (and tp!1729542 tp!1729538))))

(declare-fun b!6201279 () Bool)

(declare-fun tp!1729541 () Bool)

(assert (=> b!6201279 (= e!3776252 tp!1729541)))

(declare-fun b!6201277 () Bool)

(assert (=> b!6201277 (= e!3776252 tp_is_empty!41533)))

(declare-fun b!6201280 () Bool)

(declare-fun tp!1729539 () Bool)

(declare-fun tp!1729540 () Bool)

(assert (=> b!6201280 (= e!3776252 (and tp!1729539 tp!1729540))))

(assert (= (and b!6200570 (is-ElementMatch!16140 (reg!16469 (regTwo!32792 r!7292)))) b!6201277))

(assert (= (and b!6200570 (is-Concat!24985 (reg!16469 (regTwo!32792 r!7292)))) b!6201278))

(assert (= (and b!6200570 (is-Star!16140 (reg!16469 (regTwo!32792 r!7292)))) b!6201279))

(assert (= (and b!6200570 (is-Union!16140 (reg!16469 (regTwo!32792 r!7292)))) b!6201280))

(declare-fun e!3776253 () Bool)

(assert (=> b!6200571 (= tp!1729356 e!3776253)))

(declare-fun b!6201282 () Bool)

(declare-fun tp!1729547 () Bool)

(declare-fun tp!1729543 () Bool)

(assert (=> b!6201282 (= e!3776253 (and tp!1729547 tp!1729543))))

(declare-fun b!6201283 () Bool)

(declare-fun tp!1729546 () Bool)

(assert (=> b!6201283 (= e!3776253 tp!1729546)))

(declare-fun b!6201281 () Bool)

(assert (=> b!6201281 (= e!3776253 tp_is_empty!41533)))

(declare-fun b!6201284 () Bool)

(declare-fun tp!1729544 () Bool)

(declare-fun tp!1729545 () Bool)

(assert (=> b!6201284 (= e!3776253 (and tp!1729544 tp!1729545))))

(assert (= (and b!6200571 (is-ElementMatch!16140 (regOne!32793 (regTwo!32792 r!7292)))) b!6201281))

(assert (= (and b!6200571 (is-Concat!24985 (regOne!32793 (regTwo!32792 r!7292)))) b!6201282))

(assert (= (and b!6200571 (is-Star!16140 (regOne!32793 (regTwo!32792 r!7292)))) b!6201283))

(assert (= (and b!6200571 (is-Union!16140 (regOne!32793 (regTwo!32792 r!7292)))) b!6201284))

(declare-fun e!3776254 () Bool)

(assert (=> b!6200571 (= tp!1729357 e!3776254)))

(declare-fun b!6201286 () Bool)

(declare-fun tp!1729552 () Bool)

(declare-fun tp!1729548 () Bool)

(assert (=> b!6201286 (= e!3776254 (and tp!1729552 tp!1729548))))

(declare-fun b!6201287 () Bool)

(declare-fun tp!1729551 () Bool)

(assert (=> b!6201287 (= e!3776254 tp!1729551)))

(declare-fun b!6201285 () Bool)

(assert (=> b!6201285 (= e!3776254 tp_is_empty!41533)))

(declare-fun b!6201288 () Bool)

(declare-fun tp!1729549 () Bool)

(declare-fun tp!1729550 () Bool)

(assert (=> b!6201288 (= e!3776254 (and tp!1729549 tp!1729550))))

(assert (= (and b!6200571 (is-ElementMatch!16140 (regTwo!32793 (regTwo!32792 r!7292)))) b!6201285))

(assert (= (and b!6200571 (is-Concat!24985 (regTwo!32793 (regTwo!32792 r!7292)))) b!6201286))

(assert (= (and b!6200571 (is-Star!16140 (regTwo!32793 (regTwo!32792 r!7292)))) b!6201287))

(assert (= (and b!6200571 (is-Union!16140 (regTwo!32793 (regTwo!32792 r!7292)))) b!6201288))

(declare-fun e!3776255 () Bool)

(assert (=> b!6200540 (= tp!1729327 e!3776255)))

(declare-fun b!6201290 () Bool)

(declare-fun tp!1729557 () Bool)

(declare-fun tp!1729553 () Bool)

(assert (=> b!6201290 (= e!3776255 (and tp!1729557 tp!1729553))))

(declare-fun b!6201291 () Bool)

(declare-fun tp!1729556 () Bool)

(assert (=> b!6201291 (= e!3776255 tp!1729556)))

(declare-fun b!6201289 () Bool)

(assert (=> b!6201289 (= e!3776255 tp_is_empty!41533)))

(declare-fun b!6201292 () Bool)

(declare-fun tp!1729554 () Bool)

(declare-fun tp!1729555 () Bool)

(assert (=> b!6201292 (= e!3776255 (and tp!1729554 tp!1729555))))

(assert (= (and b!6200540 (is-ElementMatch!16140 (regOne!32792 (reg!16469 r!7292)))) b!6201289))

(assert (= (and b!6200540 (is-Concat!24985 (regOne!32792 (reg!16469 r!7292)))) b!6201290))

(assert (= (and b!6200540 (is-Star!16140 (regOne!32792 (reg!16469 r!7292)))) b!6201291))

(assert (= (and b!6200540 (is-Union!16140 (regOne!32792 (reg!16469 r!7292)))) b!6201292))

(declare-fun e!3776256 () Bool)

(assert (=> b!6200540 (= tp!1729323 e!3776256)))

(declare-fun b!6201294 () Bool)

(declare-fun tp!1729562 () Bool)

(declare-fun tp!1729558 () Bool)

(assert (=> b!6201294 (= e!3776256 (and tp!1729562 tp!1729558))))

(declare-fun b!6201295 () Bool)

(declare-fun tp!1729561 () Bool)

(assert (=> b!6201295 (= e!3776256 tp!1729561)))

(declare-fun b!6201293 () Bool)

(assert (=> b!6201293 (= e!3776256 tp_is_empty!41533)))

(declare-fun b!6201296 () Bool)

(declare-fun tp!1729559 () Bool)

(declare-fun tp!1729560 () Bool)

(assert (=> b!6201296 (= e!3776256 (and tp!1729559 tp!1729560))))

(assert (= (and b!6200540 (is-ElementMatch!16140 (regTwo!32792 (reg!16469 r!7292)))) b!6201293))

(assert (= (and b!6200540 (is-Concat!24985 (regTwo!32792 (reg!16469 r!7292)))) b!6201294))

(assert (= (and b!6200540 (is-Star!16140 (regTwo!32792 (reg!16469 r!7292)))) b!6201295))

(assert (= (and b!6200540 (is-Union!16140 (regTwo!32792 (reg!16469 r!7292)))) b!6201296))

(declare-fun e!3776257 () Bool)

(assert (=> b!6200549 (= tp!1729336 e!3776257)))

(declare-fun b!6201298 () Bool)

(declare-fun tp!1729567 () Bool)

(declare-fun tp!1729563 () Bool)

(assert (=> b!6201298 (= e!3776257 (and tp!1729567 tp!1729563))))

(declare-fun b!6201299 () Bool)

(declare-fun tp!1729566 () Bool)

(assert (=> b!6201299 (= e!3776257 tp!1729566)))

(declare-fun b!6201297 () Bool)

(assert (=> b!6201297 (= e!3776257 tp_is_empty!41533)))

(declare-fun b!6201300 () Bool)

(declare-fun tp!1729564 () Bool)

(declare-fun tp!1729565 () Bool)

(assert (=> b!6201300 (= e!3776257 (and tp!1729564 tp!1729565))))

(assert (= (and b!6200549 (is-ElementMatch!16140 (reg!16469 (regTwo!32793 r!7292)))) b!6201297))

(assert (= (and b!6200549 (is-Concat!24985 (reg!16469 (regTwo!32793 r!7292)))) b!6201298))

(assert (= (and b!6200549 (is-Star!16140 (reg!16469 (regTwo!32793 r!7292)))) b!6201299))

(assert (= (and b!6200549 (is-Union!16140 (reg!16469 (regTwo!32793 r!7292)))) b!6201300))

(declare-fun e!3776258 () Bool)

(assert (=> b!6200550 (= tp!1729334 e!3776258)))

(declare-fun b!6201302 () Bool)

(declare-fun tp!1729572 () Bool)

(declare-fun tp!1729568 () Bool)

(assert (=> b!6201302 (= e!3776258 (and tp!1729572 tp!1729568))))

(declare-fun b!6201303 () Bool)

(declare-fun tp!1729571 () Bool)

(assert (=> b!6201303 (= e!3776258 tp!1729571)))

(declare-fun b!6201301 () Bool)

(assert (=> b!6201301 (= e!3776258 tp_is_empty!41533)))

(declare-fun b!6201304 () Bool)

(declare-fun tp!1729569 () Bool)

(declare-fun tp!1729570 () Bool)

(assert (=> b!6201304 (= e!3776258 (and tp!1729569 tp!1729570))))

(assert (= (and b!6200550 (is-ElementMatch!16140 (regOne!32793 (regTwo!32793 r!7292)))) b!6201301))

(assert (= (and b!6200550 (is-Concat!24985 (regOne!32793 (regTwo!32793 r!7292)))) b!6201302))

(assert (= (and b!6200550 (is-Star!16140 (regOne!32793 (regTwo!32793 r!7292)))) b!6201303))

(assert (= (and b!6200550 (is-Union!16140 (regOne!32793 (regTwo!32793 r!7292)))) b!6201304))

(declare-fun e!3776259 () Bool)

(assert (=> b!6200550 (= tp!1729335 e!3776259)))

(declare-fun b!6201306 () Bool)

(declare-fun tp!1729577 () Bool)

(declare-fun tp!1729573 () Bool)

(assert (=> b!6201306 (= e!3776259 (and tp!1729577 tp!1729573))))

(declare-fun b!6201307 () Bool)

(declare-fun tp!1729576 () Bool)

(assert (=> b!6201307 (= e!3776259 tp!1729576)))

(declare-fun b!6201305 () Bool)

(assert (=> b!6201305 (= e!3776259 tp_is_empty!41533)))

(declare-fun b!6201308 () Bool)

(declare-fun tp!1729574 () Bool)

(declare-fun tp!1729575 () Bool)

(assert (=> b!6201308 (= e!3776259 (and tp!1729574 tp!1729575))))

(assert (= (and b!6200550 (is-ElementMatch!16140 (regTwo!32793 (regTwo!32793 r!7292)))) b!6201305))

(assert (= (and b!6200550 (is-Concat!24985 (regTwo!32793 (regTwo!32793 r!7292)))) b!6201306))

(assert (= (and b!6200550 (is-Star!16140 (regTwo!32793 (regTwo!32793 r!7292)))) b!6201307))

(assert (= (and b!6200550 (is-Union!16140 (regTwo!32793 (regTwo!32793 r!7292)))) b!6201308))

(declare-fun e!3776260 () Bool)

(assert (=> b!6200541 (= tp!1729326 e!3776260)))

(declare-fun b!6201310 () Bool)

(declare-fun tp!1729582 () Bool)

(declare-fun tp!1729578 () Bool)

(assert (=> b!6201310 (= e!3776260 (and tp!1729582 tp!1729578))))

(declare-fun b!6201311 () Bool)

(declare-fun tp!1729581 () Bool)

(assert (=> b!6201311 (= e!3776260 tp!1729581)))

(declare-fun b!6201309 () Bool)

(assert (=> b!6201309 (= e!3776260 tp_is_empty!41533)))

(declare-fun b!6201312 () Bool)

(declare-fun tp!1729579 () Bool)

(declare-fun tp!1729580 () Bool)

(assert (=> b!6201312 (= e!3776260 (and tp!1729579 tp!1729580))))

(assert (= (and b!6200541 (is-ElementMatch!16140 (reg!16469 (reg!16469 r!7292)))) b!6201309))

(assert (= (and b!6200541 (is-Concat!24985 (reg!16469 (reg!16469 r!7292)))) b!6201310))

(assert (= (and b!6200541 (is-Star!16140 (reg!16469 (reg!16469 r!7292)))) b!6201311))

(assert (= (and b!6200541 (is-Union!16140 (reg!16469 (reg!16469 r!7292)))) b!6201312))

(declare-fun b_lambda!235851 () Bool)

(assert (= b_lambda!235837 (or b!6200007 b_lambda!235851)))

(assert (=> d!1943772 d!1943724))

(declare-fun b_lambda!235853 () Bool)

(assert (= b_lambda!235847 (or d!1943646 b_lambda!235853)))

(declare-fun bs!1538573 () Bool)

(declare-fun d!1943956 () Bool)

(assert (= bs!1538573 (and d!1943956 d!1943646)))

(assert (=> bs!1538573 (= (dynLambda!25476 lambda!338776 (h!71043 (exprs!6024 lt!2342828))) (validRegex!7876 (h!71043 (exprs!6024 lt!2342828))))))

(declare-fun m!7033790 () Bool)

(assert (=> bs!1538573 m!7033790))

(assert (=> b!6201154 d!1943956))

(declare-fun b_lambda!235855 () Bool)

(assert (= b_lambda!235839 (or d!1943644 b_lambda!235855)))

(declare-fun bs!1538574 () Bool)

(declare-fun d!1943958 () Bool)

(assert (= bs!1538574 (and d!1943958 d!1943644)))

(assert (=> bs!1538574 (= (dynLambda!25476 lambda!338773 (h!71043 lt!2342879)) (validRegex!7876 (h!71043 lt!2342879)))))

(declare-fun m!7033792 () Bool)

(assert (=> bs!1538574 m!7033792))

(assert (=> b!6200827 d!1943958))

(declare-fun b_lambda!235857 () Bool)

(assert (= b_lambda!235849 (or d!1943668 b_lambda!235857)))

(declare-fun bs!1538575 () Bool)

(declare-fun d!1943960 () Bool)

(assert (= bs!1538575 (and d!1943960 d!1943668)))

(assert (=> bs!1538575 (= (dynLambda!25476 lambda!338789 (h!71043 (exprs!6024 (h!71044 zl!343)))) (validRegex!7876 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(declare-fun m!7033794 () Bool)

(assert (=> bs!1538575 m!7033794))

(assert (=> b!6201156 d!1943960))

(declare-fun b_lambda!235859 () Bool)

(assert (= b_lambda!235843 (or d!1943642 b_lambda!235859)))

(declare-fun bs!1538576 () Bool)

(declare-fun d!1943962 () Bool)

(assert (= bs!1538576 (and d!1943962 d!1943642)))

(assert (=> bs!1538576 (= (dynLambda!25476 lambda!338770 (h!71043 (unfocusZipperList!1561 zl!343))) (validRegex!7876 (h!71043 (unfocusZipperList!1561 zl!343))))))

(declare-fun m!7033796 () Bool)

(assert (=> bs!1538576 m!7033796))

(assert (=> b!6200946 d!1943962))

(declare-fun b_lambda!235861 () Bool)

(assert (= b_lambda!235845 (or d!1943720 b_lambda!235861)))

(declare-fun bs!1538577 () Bool)

(declare-fun d!1943964 () Bool)

(assert (= bs!1538577 (and d!1943964 d!1943720)))

(assert (=> bs!1538577 (= (dynLambda!25476 lambda!338808 (h!71043 (exprs!6024 (h!71044 zl!343)))) (validRegex!7876 (h!71043 (exprs!6024 (h!71044 zl!343)))))))

(assert (=> bs!1538577 m!7033794))

(assert (=> b!6201020 d!1943964))

(declare-fun b_lambda!235863 () Bool)

(assert (= b_lambda!235841 (or d!1943666 b_lambda!235863)))

(declare-fun bs!1538578 () Bool)

(declare-fun d!1943966 () Bool)

(assert (= bs!1538578 (and d!1943966 d!1943666)))

(assert (=> bs!1538578 (= (dynLambda!25476 lambda!338788 (h!71043 (exprs!6024 setElem!42081))) (validRegex!7876 (h!71043 (exprs!6024 setElem!42081))))))

(declare-fun m!7033798 () Bool)

(assert (=> bs!1538578 m!7033798))

(assert (=> b!6200912 d!1943966))

(push 1)

(assert (not b!6200842))

(assert (not d!1943892))

(assert (not b!6201236))

(assert (not b!6201259))

(assert (not bm!518995))

(assert (not b!6201296))

(assert (not b!6200863))

(assert (not b!6201294))

(assert (not b!6200969))

(assert (not b!6200953))

(assert (not b!6200821))

(assert (not b!6201075))

(assert (not b!6201302))

(assert (not b!6200955))

(assert (not b!6201046))

(assert (not bm!518988))

(assert (not b!6201284))

(assert (not bm!518990))

(assert (not b!6201224))

(assert (not b!6201286))

(assert (not d!1943776))

(assert (not b!6200952))

(assert (not d!1943874))

(assert (not b!6201279))

(assert (not b!6201057))

(assert (not bm!518984))

(assert (not d!1943818))

(assert (not b!6201273))

(assert (not d!1943816))

(assert (not b!6201227))

(assert (not b!6201032))

(assert (not d!1943878))

(assert (not d!1943886))

(assert (not bm!518993))

(assert (not bm!519010))

(assert (not b!6201310))

(assert (not bs!1538573))

(assert (not d!1943926))

(assert (not b!6201203))

(assert (not b!6201261))

(assert (not b!6201159))

(assert (not bm!519002))

(assert (not b!6201158))

(assert (not bm!518945))

(assert (not b!6201196))

(assert (not b!6200902))

(assert (not b!6201079))

(assert (not d!1943820))

(assert (not b!6201258))

(assert (not b!6201107))

(assert (not d!1943938))

(assert (not b!6201210))

(assert (not b!6201170))

(assert (not bs!1538574))

(assert (not d!1943936))

(assert (not b!6201092))

(assert (not b!6201230))

(assert (not b!6201244))

(assert (not b!6201228))

(assert (not b!6201308))

(assert (not b!6201178))

(assert (not b!6200811))

(assert (not d!1943844))

(assert (not d!1943902))

(assert (not b!6200852))

(assert (not b!6200951))

(assert (not d!1943912))

(assert (not bs!1538577))

(assert (not d!1943952))

(assert (not b!6201220))

(assert (not b!6201226))

(assert (not b!6200934))

(assert (not d!1943856))

(assert (not b!6201174))

(assert (not b!6201311))

(assert (not b!6201211))

(assert (not bm!518944))

(assert (not d!1943876))

(assert (not b!6201267))

(assert (not d!1943954))

(assert (not b!6200913))

(assert (not b!6201276))

(assert (not bm!518982))

(assert (not d!1943922))

(assert (not d!1943806))

(assert (not b!6201206))

(assert (not b!6200882))

(assert (not b!6200927))

(assert (not b!6201055))

(assert (not b!6201249))

(assert (not b!6200977))

(assert (not bm!518951))

(assert (not bm!518974))

(assert (not bm!518961))

(assert (not b!6201307))

(assert (not b!6201219))

(assert (not bm!518956))

(assert (not b!6201208))

(assert (not b!6201198))

(assert (not b!6200979))

(assert (not b!6200880))

(assert (not b!6200980))

(assert (not bm!518971))

(assert (not bm!518953))

(assert (not d!1943882))

(assert (not b!6201003))

(assert (not bm!519004))

(assert (not b!6201243))

(assert (not b!6201269))

(assert (not d!1943924))

(assert (not b!6201171))

(assert (not b!6201172))

(assert (not b!6201271))

(assert (not b!6201255))

(assert (not bm!518942))

(assert (not bm!518939))

(assert (not b!6200904))

(assert (not b!6200819))

(assert (not b!6201275))

(assert (not bm!518992))

(assert (not d!1943800))

(assert (not b!6200971))

(assert (not b!6201076))

(assert (not bm!519008))

(assert (not b!6200822))

(assert (not bm!518958))

(assert (not bm!518980))

(assert (not d!1943792))

(assert (not b!6200909))

(assert (not b!6201082))

(assert (not b!6201234))

(assert (not d!1943798))

(assert (not b!6201098))

(assert (not b!6201207))

(assert (not b!6200856))

(assert (not b!6200888))

(assert (not b!6201292))

(assert (not b!6201062))

(assert (not b!6201291))

(assert (not b!6201246))

(assert (not b_lambda!235853))

(assert (not b!6201235))

(assert (not b!6201091))

(assert (not b!6201060))

(assert (not b!6201298))

(assert (not b!6201232))

(assert (not setNonEmpty!42093))

(assert (not d!1943796))

(assert (not b!6201078))

(assert (not b!6201262))

(assert (not bm!518948))

(assert (not b!6201115))

(assert (not b!6201202))

(assert (not b!6200828))

(assert (not b_lambda!235857))

(assert (not b!6201312))

(assert (not b!6201148))

(assert (not b!6200813))

(assert (not bm!518996))

(assert (not bm!518949))

(assert (not bm!518947))

(assert (not b!6201265))

(assert (not bm!518935))

(assert (not d!1943772))

(assert (not b!6201147))

(assert (not b!6200890))

(assert (not b!6201274))

(assert (not d!1943832))

(assert (not b!6201290))

(assert (not bm!518962))

(assert (not b!6200939))

(assert (not b_lambda!235851))

(assert (not b!6201021))

(assert (not bm!518975))

(assert (not b!6201204))

(assert (not b!6201282))

(assert (not b!6200814))

(assert (not b!6201257))

(assert (not b_lambda!235863))

(assert (not bm!518959))

(assert (not b!6201106))

(assert (not b!6201093))

(assert (not b!6201283))

(assert (not b!6201254))

(assert (not d!1943824))

(assert (not setNonEmpty!42094))

(assert (not b!6201218))

(assert (not b!6201251))

(assert (not d!1943888))

(assert (not b!6201306))

(assert (not b!6201250))

(assert (not bs!1538578))

(assert (not b!6201212))

(assert (not b!6201222))

(assert (not b!6201180))

(assert (not b!6201231))

(assert (not b!6200853))

(assert (not b!6201242))

(assert (not b!6201287))

(assert (not b!6201177))

(assert (not b!6201288))

(assert (not b!6201110))

(assert (not b!6201247))

(assert (not b_lambda!235859))

(assert (not b!6201263))

(assert (not b!6200949))

(assert (not b!6201245))

(assert (not b!6201073))

(assert (not b!6201215))

(assert (not b!6201043))

(assert (not b!6201303))

(assert (not bm!518997))

(assert (not d!1943894))

(assert (not b!6200956))

(assert (not b!6200911))

(assert (not b!6201266))

(assert (not b!6200891))

(assert (not b!6200947))

(assert (not bs!1538575))

(assert (not b!6201253))

(assert (not b!6201304))

(assert (not bm!519013))

(assert (not b!6201238))

(assert (not b!6200935))

(assert (not b!6201090))

(assert (not b!6200839))

(assert (not b!6201200))

(assert (not bm!519005))

(assert (not b_lambda!235855))

(assert (not b!6201085))

(assert (not d!1943884))

(assert (not d!1943944))

(assert (not bm!518934))

(assert (not bm!519003))

(assert (not d!1943834))

(assert (not bm!518941))

(assert (not b!6200871))

(assert (not bm!518937))

(assert (not bs!1538576))

(assert tp_is_empty!41533)

(assert (not b!6201300))

(assert (not b!6201214))

(assert (not b!6201099))

(assert (not b!6201104))

(assert (not b!6200936))

(assert (not b!6201083))

(assert (not bm!519006))

(assert (not b_lambda!235831))

(assert (not b!6200960))

(assert (not b!6200883))

(assert (not b!6200972))

(assert (not bm!518955))

(assert (not b!6200926))

(assert (not bm!518986))

(assert (not b!6201193))

(assert (not b!6201072))

(assert (not bm!518978))

(assert (not b!6201087))

(assert (not b!6201013))

(assert (not b!6201096))

(assert (not bm!518977))

(assert (not b!6201270))

(assert (not b!6201157))

(assert (not bm!519012))

(assert (not b!6201116))

(assert (not b!6201223))

(assert (not b!6201295))

(assert (not d!1943786))

(assert (not b!6201299))

(assert (not b!6201155))

(assert (not d!1943826))

(assert (not b!6201176))

(assert (not d!1943890))

(assert (not b!6201278))

(assert (not d!1943790))

(assert (not b!6200903))

(assert (not b!6201280))

(assert (not b!6201216))

(assert (not b!6201240))

(assert (not bm!518994))

(assert (not b!6201239))

(assert (not b!6201260))

(assert (not b!6200957))

(assert (not b!6201199))

(assert (not b!6200850))

(assert (not d!1943846))

(assert (not d!1943900))

(assert (not d!1943804))

(assert (not b!6200845))

(assert (not b!6200844))

(assert (not b_lambda!235861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

