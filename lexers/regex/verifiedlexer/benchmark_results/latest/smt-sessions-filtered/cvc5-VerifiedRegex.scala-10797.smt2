; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!553908 () Bool)

(assert start!553908)

(declare-fun b!5239851 () Bool)

(assert (=> b!5239851 true))

(assert (=> b!5239851 true))

(declare-fun lambda!263507 () Int)

(declare-fun lambda!263506 () Int)

(assert (=> b!5239851 (not (= lambda!263507 lambda!263506))))

(assert (=> b!5239851 true))

(assert (=> b!5239851 true))

(declare-fun b!5239854 () Bool)

(assert (=> b!5239854 true))

(declare-fun b!5239830 () Bool)

(declare-fun res!2223982 () Bool)

(declare-fun e!3260391 () Bool)

(assert (=> b!5239830 (=> (not res!2223982) (not e!3260391))))

(declare-datatypes ((C!29950 0))(
  ( (C!29951 (val!24677 Int)) )
))
(declare-datatypes ((Regex!14840 0))(
  ( (ElementMatch!14840 (c!905560 C!29950)) (Concat!23685 (regOne!30192 Regex!14840) (regTwo!30192 Regex!14840)) (EmptyExpr!14840) (Star!14840 (reg!15169 Regex!14840)) (EmptyLang!14840) (Union!14840 (regOne!30193 Regex!14840) (regTwo!30193 Regex!14840)) )
))
(declare-datatypes ((List!60819 0))(
  ( (Nil!60695) (Cons!60695 (h!67143 Regex!14840) (t!374000 List!60819)) )
))
(declare-datatypes ((Context!8448 0))(
  ( (Context!8449 (exprs!4724 List!60819)) )
))
(declare-fun z!1189 () (Set Context!8448))

(declare-datatypes ((List!60820 0))(
  ( (Nil!60696) (Cons!60696 (h!67144 Context!8448) (t!374001 List!60820)) )
))
(declare-fun zl!343 () List!60820)

(declare-fun toList!8624 ((Set Context!8448)) List!60820)

(assert (=> b!5239830 (= res!2223982 (= (toList!8624 z!1189) zl!343))))

(declare-fun b!5239831 () Bool)

(declare-fun e!3260400 () Bool)

(declare-fun e!3260414 () Bool)

(assert (=> b!5239831 (= e!3260400 e!3260414)))

(declare-fun res!2223995 () Bool)

(assert (=> b!5239831 (=> res!2223995 e!3260414)))

(declare-fun lt!2148178 () Bool)

(declare-fun e!3260397 () Bool)

(assert (=> b!5239831 (= res!2223995 (not (= lt!2148178 e!3260397)))))

(declare-fun res!2223997 () Bool)

(assert (=> b!5239831 (=> res!2223997 e!3260397)))

(declare-fun lt!2148155 () Bool)

(assert (=> b!5239831 (= res!2223997 lt!2148155)))

(declare-datatypes ((List!60821 0))(
  ( (Nil!60697) (Cons!60697 (h!67145 C!29950) (t!374002 List!60821)) )
))
(declare-fun s!2326 () List!60821)

(declare-fun matchZipper!1084 ((Set Context!8448) List!60821) Bool)

(assert (=> b!5239831 (= lt!2148178 (matchZipper!1084 z!1189 s!2326))))

(declare-fun lt!2148168 () (Set Context!8448))

(assert (=> b!5239831 (= lt!2148155 (matchZipper!1084 lt!2148168 s!2326))))

(declare-datatypes ((Unit!152734 0))(
  ( (Unit!152735) )
))
(declare-fun lt!2148188 () Unit!152734)

(declare-fun e!3260396 () Unit!152734)

(assert (=> b!5239831 (= lt!2148188 e!3260396)))

(declare-fun c!905559 () Bool)

(declare-fun r!7292 () Regex!14840)

(declare-fun nullable!5009 (Regex!14840) Bool)

(assert (=> b!5239831 (= c!905559 (nullable!5009 (regTwo!30193 (regOne!30192 r!7292))))))

(declare-fun lambda!263508 () Int)

(declare-fun lt!2148151 () (Set Context!8448))

(declare-fun lt!2148167 () Context!8448)

(declare-fun flatMap!567 ((Set Context!8448) Int) (Set Context!8448))

(declare-fun derivationStepZipperUp!212 (Context!8448 C!29950) (Set Context!8448))

(assert (=> b!5239831 (= (flatMap!567 lt!2148151 lambda!263508) (derivationStepZipperUp!212 lt!2148167 (h!67145 s!2326)))))

(declare-fun lt!2148158 () Unit!152734)

(declare-fun lemmaFlatMapOnSingletonSet!99 ((Set Context!8448) Context!8448 Int) Unit!152734)

(assert (=> b!5239831 (= lt!2148158 (lemmaFlatMapOnSingletonSet!99 lt!2148151 lt!2148167 lambda!263508))))

(declare-fun lt!2148154 () (Set Context!8448))

(assert (=> b!5239831 (= lt!2148154 (derivationStepZipperUp!212 lt!2148167 (h!67145 s!2326)))))

(declare-fun lt!2148176 () Unit!152734)

(declare-fun e!3260399 () Unit!152734)

(assert (=> b!5239831 (= lt!2148176 e!3260399)))

(declare-fun c!905557 () Bool)

(assert (=> b!5239831 (= c!905557 (nullable!5009 (regOne!30193 (regOne!30192 r!7292))))))

(declare-fun lt!2148173 () Context!8448)

(assert (=> b!5239831 (= (flatMap!567 lt!2148168 lambda!263508) (derivationStepZipperUp!212 lt!2148173 (h!67145 s!2326)))))

(declare-fun lt!2148156 () Unit!152734)

(assert (=> b!5239831 (= lt!2148156 (lemmaFlatMapOnSingletonSet!99 lt!2148168 lt!2148173 lambda!263508))))

(declare-fun lt!2148169 () (Set Context!8448))

(assert (=> b!5239831 (= lt!2148169 (derivationStepZipperUp!212 lt!2148173 (h!67145 s!2326)))))

(assert (=> b!5239831 (= lt!2148151 (set.insert lt!2148167 (as set.empty (Set Context!8448))))))

(declare-fun lt!2148187 () List!60819)

(assert (=> b!5239831 (= lt!2148167 (Context!8449 lt!2148187))))

(assert (=> b!5239831 (= lt!2148187 (Cons!60695 (regTwo!30193 (regOne!30192 r!7292)) (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(assert (=> b!5239831 (= lt!2148168 (set.insert lt!2148173 (as set.empty (Set Context!8448))))))

(declare-fun lt!2148164 () List!60819)

(assert (=> b!5239831 (= lt!2148173 (Context!8449 lt!2148164))))

(assert (=> b!5239831 (= lt!2148164 (Cons!60695 (regOne!30193 (regOne!30192 r!7292)) (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5239832 () Bool)

(declare-fun e!3260401 () Bool)

(assert (=> b!5239832 (= e!3260391 e!3260401)))

(declare-fun res!2223996 () Bool)

(assert (=> b!5239832 (=> (not res!2223996) (not e!3260401))))

(declare-fun lt!2148171 () Regex!14840)

(assert (=> b!5239832 (= res!2223996 (= r!7292 lt!2148171))))

(declare-fun unfocusZipper!582 (List!60820) Regex!14840)

(assert (=> b!5239832 (= lt!2148171 (unfocusZipper!582 zl!343))))

(declare-fun b!5239833 () Bool)

(declare-fun res!2223983 () Bool)

(declare-fun e!3260408 () Bool)

(assert (=> b!5239833 (=> res!2223983 e!3260408)))

(assert (=> b!5239833 (= res!2223983 (or (is-EmptyExpr!14840 r!7292) (is-EmptyLang!14840 r!7292) (is-ElementMatch!14840 r!7292) (is-Union!14840 r!7292) (not (is-Concat!23685 r!7292))))))

(declare-fun b!5239834 () Bool)

(declare-fun e!3260398 () Bool)

(declare-fun tp_is_empty!38933 () Bool)

(declare-fun tp!1467399 () Bool)

(assert (=> b!5239834 (= e!3260398 (and tp_is_empty!38933 tp!1467399))))

(declare-fun b!5239836 () Bool)

(declare-fun e!3260405 () Unit!152734)

(declare-fun Unit!152736 () Unit!152734)

(assert (=> b!5239836 (= e!3260405 Unit!152736)))

(declare-fun lt!2148192 () (Set Context!8448))

(declare-fun lt!2148152 () Unit!152734)

(declare-fun lt!2148180 () (Set Context!8448))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!77 ((Set Context!8448) (Set Context!8448) List!60821) Unit!152734)

(assert (=> b!5239836 (= lt!2148152 (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148192 lt!2148180 (t!374002 s!2326)))))

(declare-fun res!2223986 () Bool)

(assert (=> b!5239836 (= res!2223986 (matchZipper!1084 lt!2148192 (t!374002 s!2326)))))

(declare-fun e!3260415 () Bool)

(assert (=> b!5239836 (=> res!2223986 e!3260415)))

(assert (=> b!5239836 (= (matchZipper!1084 (set.union lt!2148192 lt!2148180) (t!374002 s!2326)) e!3260415)))

(declare-fun b!5239837 () Bool)

(declare-fun e!3260402 () Bool)

(assert (=> b!5239837 (= e!3260402 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(declare-fun b!5239838 () Bool)

(declare-fun e!3260413 () Bool)

(declare-fun tp!1467397 () Bool)

(declare-fun tp!1467396 () Bool)

(assert (=> b!5239838 (= e!3260413 (and tp!1467397 tp!1467396))))

(declare-fun e!3260395 () Bool)

(declare-fun tp!1467400 () Bool)

(declare-fun b!5239839 () Bool)

(declare-fun e!3260393 () Bool)

(declare-fun inv!80348 (Context!8448) Bool)

(assert (=> b!5239839 (= e!3260393 (and (inv!80348 (h!67144 zl!343)) e!3260395 tp!1467400))))

(declare-fun b!5239840 () Bool)

(declare-fun Unit!152737 () Unit!152734)

(assert (=> b!5239840 (= e!3260399 Unit!152737)))

(declare-fun lt!2148181 () (Set Context!8448))

(declare-fun lt!2148159 () Unit!152734)

(assert (=> b!5239840 (= lt!2148159 (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148181 lt!2148180 (t!374002 s!2326)))))

(declare-fun res!2224002 () Bool)

(declare-fun lt!2148186 () Bool)

(assert (=> b!5239840 (= res!2224002 lt!2148186)))

(declare-fun e!3260412 () Bool)

(assert (=> b!5239840 (=> res!2224002 e!3260412)))

(assert (=> b!5239840 (= (matchZipper!1084 (set.union lt!2148181 lt!2148180) (t!374002 s!2326)) e!3260412)))

(declare-fun b!5239841 () Bool)

(declare-fun Unit!152738 () Unit!152734)

(assert (=> b!5239841 (= e!3260405 Unit!152738)))

(declare-fun b!5239842 () Bool)

(declare-fun e!3260409 () Bool)

(declare-fun tp!1467394 () Bool)

(assert (=> b!5239842 (= e!3260409 tp!1467394)))

(declare-fun b!5239843 () Bool)

(declare-fun e!3260410 () Bool)

(declare-fun e!3260394 () Bool)

(assert (=> b!5239843 (= e!3260410 e!3260394)))

(declare-fun res!2223984 () Bool)

(assert (=> b!5239843 (=> res!2223984 e!3260394)))

(declare-fun lt!2148175 () (Set Context!8448))

(assert (=> b!5239843 (= res!2223984 (not (= lt!2148192 lt!2148175)))))

(declare-fun lt!2148148 () (Set Context!8448))

(assert (=> b!5239843 (= lt!2148175 (set.union lt!2148181 lt!2148148))))

(declare-fun lt!2148160 () Context!8448)

(declare-fun derivationStepZipperDown!288 (Regex!14840 Context!8448 C!29950) (Set Context!8448))

(assert (=> b!5239843 (= lt!2148148 (derivationStepZipperDown!288 (regTwo!30193 (regOne!30192 r!7292)) lt!2148160 (h!67145 s!2326)))))

(assert (=> b!5239843 (= lt!2148181 (derivationStepZipperDown!288 (regOne!30193 (regOne!30192 r!7292)) lt!2148160 (h!67145 s!2326)))))

(declare-fun b!5239844 () Bool)

(declare-fun tp!1467403 () Bool)

(assert (=> b!5239844 (= e!3260413 tp!1467403)))

(declare-fun b!5239845 () Bool)

(declare-fun e!3260406 () Bool)

(assert (=> b!5239845 (= e!3260406 (not (matchZipper!1084 lt!2148148 (t!374002 s!2326))))))

(declare-fun b!5239846 () Bool)

(declare-fun e!3260407 () Bool)

(declare-fun e!3260403 () Bool)

(assert (=> b!5239846 (= e!3260407 e!3260403)))

(declare-fun res!2223979 () Bool)

(assert (=> b!5239846 (=> res!2223979 e!3260403)))

(declare-fun lt!2148190 () Bool)

(assert (=> b!5239846 (= res!2223979 (= lt!2148178 lt!2148190))))

(declare-fun lt!2148165 () Bool)

(declare-fun lt!2148174 () Regex!14840)

(declare-fun matchRSpec!1943 (Regex!14840 List!60821) Bool)

(assert (=> b!5239846 (= lt!2148165 (matchRSpec!1943 lt!2148174 s!2326))))

(declare-fun lt!2148157 () Unit!152734)

(declare-fun mainMatchTheorem!1943 (Regex!14840 List!60821) Unit!152734)

(assert (=> b!5239846 (= lt!2148157 (mainMatchTheorem!1943 lt!2148174 s!2326))))

(declare-fun lt!2148189 () Regex!14840)

(assert (=> b!5239846 (= lt!2148190 (matchRSpec!1943 lt!2148189 s!2326))))

(declare-fun lt!2148153 () Unit!152734)

(assert (=> b!5239846 (= lt!2148153 (mainMatchTheorem!1943 lt!2148189 s!2326))))

(assert (=> b!5239846 (= lt!2148165 (matchZipper!1084 lt!2148151 s!2326))))

(declare-fun matchR!7025 (Regex!14840 List!60821) Bool)

(assert (=> b!5239846 (= lt!2148165 (matchR!7025 lt!2148174 s!2326))))

(declare-fun lt!2148185 () Unit!152734)

(declare-fun lt!2148147 () List!60820)

(declare-fun theoremZipperRegexEquiv!274 ((Set Context!8448) List!60820 Regex!14840 List!60821) Unit!152734)

(assert (=> b!5239846 (= lt!2148185 (theoremZipperRegexEquiv!274 lt!2148151 lt!2148147 lt!2148174 s!2326))))

(declare-fun generalisedConcat!509 (List!60819) Regex!14840)

(assert (=> b!5239846 (= lt!2148174 (generalisedConcat!509 lt!2148187))))

(assert (=> b!5239846 (= lt!2148190 lt!2148155)))

(assert (=> b!5239846 (= lt!2148190 (matchR!7025 lt!2148189 s!2326))))

(declare-fun lt!2148191 () List!60820)

(declare-fun lt!2148162 () Unit!152734)

(assert (=> b!5239846 (= lt!2148162 (theoremZipperRegexEquiv!274 lt!2148168 lt!2148191 lt!2148189 s!2326))))

(assert (=> b!5239846 (= lt!2148189 (generalisedConcat!509 lt!2148164))))

(declare-fun b!5239847 () Bool)

(assert (=> b!5239847 (= e!3260412 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(declare-fun b!5239848 () Bool)

(declare-fun res!2224000 () Bool)

(declare-fun e!3260411 () Bool)

(assert (=> b!5239848 (=> res!2224000 e!3260411)))

(declare-fun isEmpty!32625 (List!60819) Bool)

(assert (=> b!5239848 (= res!2224000 (isEmpty!32625 (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5239849 () Bool)

(declare-fun tp!1467401 () Bool)

(declare-fun tp!1467398 () Bool)

(assert (=> b!5239849 (= e!3260413 (and tp!1467401 tp!1467398))))

(declare-fun b!5239850 () Bool)

(assert (=> b!5239850 (= e!3260413 tp_is_empty!38933)))

(assert (=> b!5239851 (= e!3260408 e!3260411)))

(declare-fun res!2223994 () Bool)

(assert (=> b!5239851 (=> res!2223994 e!3260411)))

(declare-fun lt!2148172 () Bool)

(declare-fun lt!2148149 () Bool)

(assert (=> b!5239851 (= res!2223994 (or (not (= lt!2148172 lt!2148149)) (is-Nil!60697 s!2326)))))

(declare-fun Exists!2021 (Int) Bool)

(assert (=> b!5239851 (= (Exists!2021 lambda!263506) (Exists!2021 lambda!263507))))

(declare-fun lt!2148166 () Unit!152734)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!675 (Regex!14840 Regex!14840 List!60821) Unit!152734)

(assert (=> b!5239851 (= lt!2148166 (lemmaExistCutMatchRandMatchRSpecEquivalent!675 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326))))

(assert (=> b!5239851 (= lt!2148149 (Exists!2021 lambda!263506))))

(declare-datatypes ((tuple2!64078 0))(
  ( (tuple2!64079 (_1!35342 List!60821) (_2!35342 List!60821)) )
))
(declare-datatypes ((Option!14951 0))(
  ( (None!14950) (Some!14950 (v!50979 tuple2!64078)) )
))
(declare-fun isDefined!11654 (Option!14951) Bool)

(declare-fun findConcatSeparation!1365 (Regex!14840 Regex!14840 List!60821 List!60821 List!60821) Option!14951)

(assert (=> b!5239851 (= lt!2148149 (isDefined!11654 (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) Nil!60697 s!2326 s!2326)))))

(declare-fun lt!2148179 () Unit!152734)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1129 (Regex!14840 Regex!14840 List!60821) Unit!152734)

(assert (=> b!5239851 (= lt!2148179 (lemmaFindConcatSeparationEquivalentToExists!1129 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326))))

(declare-fun b!5239852 () Bool)

(declare-fun e!3260392 () Bool)

(assert (=> b!5239852 (= e!3260392 e!3260407)))

(declare-fun res!2223987 () Bool)

(assert (=> b!5239852 (=> res!2223987 e!3260407)))

(declare-fun lt!2148182 () Int)

(declare-fun zipperDepthTotal!21 (List!60820) Int)

(assert (=> b!5239852 (= res!2223987 (>= (zipperDepthTotal!21 lt!2148147) lt!2148182))))

(assert (=> b!5239852 (= lt!2148147 (Cons!60696 lt!2148167 Nil!60696))))

(declare-fun b!5239853 () Bool)

(declare-fun res!2223981 () Bool)

(assert (=> b!5239853 (=> res!2223981 e!3260408)))

(assert (=> b!5239853 (= res!2223981 (not (is-Cons!60695 (exprs!4724 (h!67144 zl!343)))))))

(assert (=> b!5239854 (= e!3260411 e!3260410)))

(declare-fun res!2223985 () Bool)

(assert (=> b!5239854 (=> res!2223985 e!3260410)))

(assert (=> b!5239854 (= res!2223985 (or (and (is-ElementMatch!14840 (regOne!30192 r!7292)) (= (c!905560 (regOne!30192 r!7292)) (h!67145 s!2326))) (not (is-Union!14840 (regOne!30192 r!7292)))))))

(declare-fun lt!2148184 () Unit!152734)

(assert (=> b!5239854 (= lt!2148184 e!3260405)))

(declare-fun c!905558 () Bool)

(assert (=> b!5239854 (= c!905558 (nullable!5009 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(assert (=> b!5239854 (= (flatMap!567 z!1189 lambda!263508) (derivationStepZipperUp!212 (h!67144 zl!343) (h!67145 s!2326)))))

(declare-fun lt!2148161 () Unit!152734)

(assert (=> b!5239854 (= lt!2148161 (lemmaFlatMapOnSingletonSet!99 z!1189 (h!67144 zl!343) lambda!263508))))

(assert (=> b!5239854 (= lt!2148180 (derivationStepZipperUp!212 lt!2148160 (h!67145 s!2326)))))

(assert (=> b!5239854 (= lt!2148192 (derivationStepZipperDown!288 (h!67143 (exprs!4724 (h!67144 zl!343))) lt!2148160 (h!67145 s!2326)))))

(assert (=> b!5239854 (= lt!2148160 (Context!8449 (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun lt!2148163 () (Set Context!8448))

(assert (=> b!5239854 (= lt!2148163 (derivationStepZipperUp!212 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343))))) (h!67145 s!2326)))))

(declare-fun b!5239855 () Bool)

(declare-fun tp!1467402 () Bool)

(assert (=> b!5239855 (= e!3260395 tp!1467402)))

(declare-fun b!5239856 () Bool)

(declare-fun Unit!152739 () Unit!152734)

(assert (=> b!5239856 (= e!3260396 Unit!152739)))

(declare-fun b!5239857 () Bool)

(declare-fun e!3260404 () Bool)

(assert (=> b!5239857 (= e!3260404 (matchZipper!1084 lt!2148148 (t!374002 s!2326)))))

(declare-fun b!5239835 () Bool)

(declare-fun res!2223980 () Bool)

(assert (=> b!5239835 (=> res!2223980 e!3260408)))

(declare-fun generalisedUnion!769 (List!60819) Regex!14840)

(declare-fun unfocusZipperList!282 (List!60820) List!60819)

(assert (=> b!5239835 (= res!2223980 (not (= r!7292 (generalisedUnion!769 (unfocusZipperList!282 zl!343)))))))

(declare-fun res!2223999 () Bool)

(assert (=> start!553908 (=> (not res!2223999) (not e!3260391))))

(declare-fun validRegex!6576 (Regex!14840) Bool)

(assert (=> start!553908 (= res!2223999 (validRegex!6576 r!7292))))

(assert (=> start!553908 e!3260391))

(assert (=> start!553908 e!3260413))

(declare-fun condSetEmpty!33416 () Bool)

(assert (=> start!553908 (= condSetEmpty!33416 (= z!1189 (as set.empty (Set Context!8448))))))

(declare-fun setRes!33416 () Bool)

(assert (=> start!553908 setRes!33416))

(assert (=> start!553908 e!3260393))

(assert (=> start!553908 e!3260398))

(declare-fun b!5239858 () Bool)

(assert (=> b!5239858 (= e!3260414 e!3260392)))

(declare-fun res!2223991 () Bool)

(assert (=> b!5239858 (=> res!2223991 e!3260392)))

(declare-fun lt!2148183 () Int)

(assert (=> b!5239858 (= res!2223991 (>= lt!2148183 lt!2148182))))

(assert (=> b!5239858 (= lt!2148182 (zipperDepthTotal!21 zl!343))))

(assert (=> b!5239858 (= lt!2148183 (zipperDepthTotal!21 lt!2148191))))

(assert (=> b!5239858 (= lt!2148191 (Cons!60696 lt!2148173 Nil!60696))))

(declare-fun b!5239859 () Bool)

(assert (=> b!5239859 (= e!3260397 (matchZipper!1084 lt!2148151 s!2326))))

(declare-fun b!5239860 () Bool)

(declare-fun lambda!263509 () Int)

(declare-fun forall!14264 (List!60819 Int) Bool)

(assert (=> b!5239860 (= e!3260403 (forall!14264 lt!2148187 lambda!263509))))

(declare-fun tp!1467395 () Bool)

(declare-fun setNonEmpty!33416 () Bool)

(declare-fun setElem!33416 () Context!8448)

(assert (=> setNonEmpty!33416 (= setRes!33416 (and tp!1467395 (inv!80348 setElem!33416) e!3260409))))

(declare-fun setRest!33416 () (Set Context!8448))

(assert (=> setNonEmpty!33416 (= z!1189 (set.union (set.insert setElem!33416 (as set.empty (Set Context!8448))) setRest!33416))))

(declare-fun b!5239861 () Bool)

(declare-fun res!2223988 () Bool)

(assert (=> b!5239861 (=> res!2223988 e!3260408)))

(assert (=> b!5239861 (= res!2223988 (not (= r!7292 (generalisedConcat!509 (exprs!4724 (h!67144 zl!343))))))))

(declare-fun b!5239862 () Bool)

(assert (=> b!5239862 (= e!3260401 (not e!3260408))))

(declare-fun res!2223992 () Bool)

(assert (=> b!5239862 (=> res!2223992 e!3260408)))

(assert (=> b!5239862 (= res!2223992 (not (is-Cons!60696 zl!343)))))

(assert (=> b!5239862 (= lt!2148172 (matchRSpec!1943 r!7292 s!2326))))

(assert (=> b!5239862 (= lt!2148172 (matchR!7025 r!7292 s!2326))))

(declare-fun lt!2148177 () Unit!152734)

(assert (=> b!5239862 (= lt!2148177 (mainMatchTheorem!1943 r!7292 s!2326))))

(declare-fun setIsEmpty!33416 () Bool)

(assert (=> setIsEmpty!33416 setRes!33416))

(declare-fun b!5239863 () Bool)

(declare-fun res!2223989 () Bool)

(assert (=> b!5239863 (=> res!2223989 e!3260408)))

(declare-fun isEmpty!32626 (List!60820) Bool)

(assert (=> b!5239863 (= res!2223989 (not (isEmpty!32626 (t!374001 zl!343))))))

(declare-fun b!5239864 () Bool)

(assert (=> b!5239864 (= e!3260394 e!3260400)))

(declare-fun res!2224001 () Bool)

(assert (=> b!5239864 (=> res!2224001 e!3260400)))

(assert (=> b!5239864 (= res!2224001 e!3260406)))

(declare-fun res!2223993 () Bool)

(assert (=> b!5239864 (=> (not res!2223993) (not e!3260406))))

(assert (=> b!5239864 (= res!2223993 (not (= (matchZipper!1084 lt!2148192 (t!374002 s!2326)) lt!2148186)))))

(assert (=> b!5239864 (= (matchZipper!1084 lt!2148175 (t!374002 s!2326)) e!3260404)))

(declare-fun res!2223978 () Bool)

(assert (=> b!5239864 (=> res!2223978 e!3260404)))

(assert (=> b!5239864 (= res!2223978 lt!2148186)))

(assert (=> b!5239864 (= lt!2148186 (matchZipper!1084 lt!2148181 (t!374002 s!2326)))))

(declare-fun lt!2148170 () Unit!152734)

(assert (=> b!5239864 (= lt!2148170 (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148181 lt!2148148 (t!374002 s!2326)))))

(declare-fun b!5239865 () Bool)

(declare-fun Unit!152740 () Unit!152734)

(assert (=> b!5239865 (= e!3260399 Unit!152740)))

(declare-fun b!5239866 () Bool)

(declare-fun res!2223998 () Bool)

(assert (=> b!5239866 (=> res!2223998 e!3260414)))

(assert (=> b!5239866 (= res!2223998 (or (not (= lt!2148171 r!7292)) (not (= (exprs!4724 (h!67144 zl!343)) (Cons!60695 (regOne!30192 r!7292) (t!374000 (exprs!4724 (h!67144 zl!343))))))))))

(declare-fun b!5239867 () Bool)

(declare-fun Unit!152741 () Unit!152734)

(assert (=> b!5239867 (= e!3260396 Unit!152741)))

(declare-fun lt!2148150 () Unit!152734)

(assert (=> b!5239867 (= lt!2148150 (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148148 lt!2148180 (t!374002 s!2326)))))

(declare-fun res!2223990 () Bool)

(assert (=> b!5239867 (= res!2223990 (matchZipper!1084 lt!2148148 (t!374002 s!2326)))))

(assert (=> b!5239867 (=> res!2223990 e!3260402)))

(assert (=> b!5239867 (= (matchZipper!1084 (set.union lt!2148148 lt!2148180) (t!374002 s!2326)) e!3260402)))

(declare-fun b!5239868 () Bool)

(assert (=> b!5239868 (= e!3260415 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(assert (= (and start!553908 res!2223999) b!5239830))

(assert (= (and b!5239830 res!2223982) b!5239832))

(assert (= (and b!5239832 res!2223996) b!5239862))

(assert (= (and b!5239862 (not res!2223992)) b!5239863))

(assert (= (and b!5239863 (not res!2223989)) b!5239861))

(assert (= (and b!5239861 (not res!2223988)) b!5239853))

(assert (= (and b!5239853 (not res!2223981)) b!5239835))

(assert (= (and b!5239835 (not res!2223980)) b!5239833))

(assert (= (and b!5239833 (not res!2223983)) b!5239851))

(assert (= (and b!5239851 (not res!2223994)) b!5239848))

(assert (= (and b!5239848 (not res!2224000)) b!5239854))

(assert (= (and b!5239854 c!905558) b!5239836))

(assert (= (and b!5239854 (not c!905558)) b!5239841))

(assert (= (and b!5239836 (not res!2223986)) b!5239868))

(assert (= (and b!5239854 (not res!2223985)) b!5239843))

(assert (= (and b!5239843 (not res!2223984)) b!5239864))

(assert (= (and b!5239864 (not res!2223978)) b!5239857))

(assert (= (and b!5239864 res!2223993) b!5239845))

(assert (= (and b!5239864 (not res!2224001)) b!5239831))

(assert (= (and b!5239831 c!905557) b!5239840))

(assert (= (and b!5239831 (not c!905557)) b!5239865))

(assert (= (and b!5239840 (not res!2224002)) b!5239847))

(assert (= (and b!5239831 c!905559) b!5239867))

(assert (= (and b!5239831 (not c!905559)) b!5239856))

(assert (= (and b!5239867 (not res!2223990)) b!5239837))

(assert (= (and b!5239831 (not res!2223997)) b!5239859))

(assert (= (and b!5239831 (not res!2223995)) b!5239866))

(assert (= (and b!5239866 (not res!2223998)) b!5239858))

(assert (= (and b!5239858 (not res!2223991)) b!5239852))

(assert (= (and b!5239852 (not res!2223987)) b!5239846))

(assert (= (and b!5239846 (not res!2223979)) b!5239860))

(assert (= (and start!553908 (is-ElementMatch!14840 r!7292)) b!5239850))

(assert (= (and start!553908 (is-Concat!23685 r!7292)) b!5239838))

(assert (= (and start!553908 (is-Star!14840 r!7292)) b!5239844))

(assert (= (and start!553908 (is-Union!14840 r!7292)) b!5239849))

(assert (= (and start!553908 condSetEmpty!33416) setIsEmpty!33416))

(assert (= (and start!553908 (not condSetEmpty!33416)) setNonEmpty!33416))

(assert (= setNonEmpty!33416 b!5239842))

(assert (= b!5239839 b!5239855))

(assert (= (and start!553908 (is-Cons!60696 zl!343)) b!5239839))

(assert (= (and start!553908 (is-Cons!60697 s!2326)) b!5239834))

(declare-fun m!6284476 () Bool)

(assert (=> b!5239854 m!6284476))

(declare-fun m!6284478 () Bool)

(assert (=> b!5239854 m!6284478))

(declare-fun m!6284480 () Bool)

(assert (=> b!5239854 m!6284480))

(declare-fun m!6284482 () Bool)

(assert (=> b!5239854 m!6284482))

(declare-fun m!6284484 () Bool)

(assert (=> b!5239854 m!6284484))

(declare-fun m!6284486 () Bool)

(assert (=> b!5239854 m!6284486))

(declare-fun m!6284488 () Bool)

(assert (=> b!5239854 m!6284488))

(declare-fun m!6284490 () Bool)

(assert (=> b!5239837 m!6284490))

(declare-fun m!6284492 () Bool)

(assert (=> b!5239830 m!6284492))

(declare-fun m!6284494 () Bool)

(assert (=> b!5239861 m!6284494))

(assert (=> b!5239847 m!6284490))

(declare-fun m!6284496 () Bool)

(assert (=> b!5239848 m!6284496))

(declare-fun m!6284498 () Bool)

(assert (=> b!5239835 m!6284498))

(assert (=> b!5239835 m!6284498))

(declare-fun m!6284500 () Bool)

(assert (=> b!5239835 m!6284500))

(declare-fun m!6284502 () Bool)

(assert (=> b!5239851 m!6284502))

(declare-fun m!6284504 () Bool)

(assert (=> b!5239851 m!6284504))

(declare-fun m!6284506 () Bool)

(assert (=> b!5239851 m!6284506))

(declare-fun m!6284508 () Bool)

(assert (=> b!5239851 m!6284508))

(declare-fun m!6284510 () Bool)

(assert (=> b!5239851 m!6284510))

(assert (=> b!5239851 m!6284502))

(assert (=> b!5239851 m!6284504))

(declare-fun m!6284512 () Bool)

(assert (=> b!5239851 m!6284512))

(assert (=> b!5239868 m!6284490))

(declare-fun m!6284514 () Bool)

(assert (=> b!5239831 m!6284514))

(declare-fun m!6284516 () Bool)

(assert (=> b!5239831 m!6284516))

(declare-fun m!6284518 () Bool)

(assert (=> b!5239831 m!6284518))

(declare-fun m!6284520 () Bool)

(assert (=> b!5239831 m!6284520))

(declare-fun m!6284522 () Bool)

(assert (=> b!5239831 m!6284522))

(declare-fun m!6284524 () Bool)

(assert (=> b!5239831 m!6284524))

(declare-fun m!6284526 () Bool)

(assert (=> b!5239831 m!6284526))

(declare-fun m!6284528 () Bool)

(assert (=> b!5239831 m!6284528))

(declare-fun m!6284530 () Bool)

(assert (=> b!5239831 m!6284530))

(declare-fun m!6284532 () Bool)

(assert (=> b!5239831 m!6284532))

(declare-fun m!6284534 () Bool)

(assert (=> b!5239831 m!6284534))

(declare-fun m!6284536 () Bool)

(assert (=> b!5239831 m!6284536))

(declare-fun m!6284538 () Bool)

(assert (=> b!5239840 m!6284538))

(declare-fun m!6284540 () Bool)

(assert (=> b!5239840 m!6284540))

(declare-fun m!6284542 () Bool)

(assert (=> b!5239857 m!6284542))

(declare-fun m!6284544 () Bool)

(assert (=> b!5239858 m!6284544))

(declare-fun m!6284546 () Bool)

(assert (=> b!5239858 m!6284546))

(declare-fun m!6284548 () Bool)

(assert (=> b!5239864 m!6284548))

(declare-fun m!6284550 () Bool)

(assert (=> b!5239864 m!6284550))

(declare-fun m!6284552 () Bool)

(assert (=> b!5239864 m!6284552))

(declare-fun m!6284554 () Bool)

(assert (=> b!5239864 m!6284554))

(declare-fun m!6284556 () Bool)

(assert (=> b!5239832 m!6284556))

(declare-fun m!6284558 () Bool)

(assert (=> b!5239843 m!6284558))

(declare-fun m!6284560 () Bool)

(assert (=> b!5239843 m!6284560))

(declare-fun m!6284562 () Bool)

(assert (=> b!5239867 m!6284562))

(assert (=> b!5239867 m!6284542))

(declare-fun m!6284564 () Bool)

(assert (=> b!5239867 m!6284564))

(assert (=> b!5239845 m!6284542))

(declare-fun m!6284566 () Bool)

(assert (=> setNonEmpty!33416 m!6284566))

(declare-fun m!6284568 () Bool)

(assert (=> b!5239836 m!6284568))

(assert (=> b!5239836 m!6284548))

(declare-fun m!6284570 () Bool)

(assert (=> b!5239836 m!6284570))

(declare-fun m!6284572 () Bool)

(assert (=> b!5239859 m!6284572))

(declare-fun m!6284574 () Bool)

(assert (=> start!553908 m!6284574))

(declare-fun m!6284576 () Bool)

(assert (=> b!5239862 m!6284576))

(declare-fun m!6284578 () Bool)

(assert (=> b!5239862 m!6284578))

(declare-fun m!6284580 () Bool)

(assert (=> b!5239862 m!6284580))

(declare-fun m!6284582 () Bool)

(assert (=> b!5239860 m!6284582))

(declare-fun m!6284584 () Bool)

(assert (=> b!5239846 m!6284584))

(declare-fun m!6284586 () Bool)

(assert (=> b!5239846 m!6284586))

(declare-fun m!6284588 () Bool)

(assert (=> b!5239846 m!6284588))

(declare-fun m!6284590 () Bool)

(assert (=> b!5239846 m!6284590))

(assert (=> b!5239846 m!6284572))

(declare-fun m!6284592 () Bool)

(assert (=> b!5239846 m!6284592))

(declare-fun m!6284594 () Bool)

(assert (=> b!5239846 m!6284594))

(declare-fun m!6284596 () Bool)

(assert (=> b!5239846 m!6284596))

(declare-fun m!6284598 () Bool)

(assert (=> b!5239846 m!6284598))

(declare-fun m!6284600 () Bool)

(assert (=> b!5239846 m!6284600))

(declare-fun m!6284602 () Bool)

(assert (=> b!5239846 m!6284602))

(declare-fun m!6284604 () Bool)

(assert (=> b!5239839 m!6284604))

(declare-fun m!6284606 () Bool)

(assert (=> b!5239863 m!6284606))

(declare-fun m!6284608 () Bool)

(assert (=> b!5239852 m!6284608))

(push 1)

(assert (not b!5239834))

(assert (not b!5239858))

(assert (not b!5239859))

(assert (not b!5239836))

(assert (not b!5239844))

(assert (not b!5239854))

(assert (not b!5239845))

(assert (not b!5239848))

(assert (not b!5239861))

(assert (not b!5239857))

(assert tp_is_empty!38933)

(assert (not start!553908))

(assert (not b!5239831))

(assert (not b!5239847))

(assert (not b!5239868))

(assert (not b!5239832))

(assert (not b!5239860))

(assert (not b!5239863))

(assert (not b!5239835))

(assert (not b!5239846))

(assert (not b!5239855))

(assert (not b!5239830))

(assert (not b!5239851))

(assert (not b!5239840))

(assert (not b!5239843))

(assert (not b!5239852))

(assert (not b!5239862))

(assert (not b!5239849))

(assert (not b!5239839))

(assert (not setNonEmpty!33416))

(assert (not b!5239837))

(assert (not b!5239842))

(assert (not b!5239864))

(assert (not b!5239838))

(assert (not b!5239867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1688568 () Bool)

(declare-fun c!905580 () Bool)

(declare-fun isEmpty!32629 (List!60821) Bool)

(assert (=> d!1688568 (= c!905580 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260499 () Bool)

(assert (=> d!1688568 (= (matchZipper!1084 lt!2148180 (t!374002 s!2326)) e!3260499)))

(declare-fun b!5240014 () Bool)

(declare-fun nullableZipper!1255 ((Set Context!8448)) Bool)

(assert (=> b!5240014 (= e!3260499 (nullableZipper!1255 lt!2148180))))

(declare-fun b!5240015 () Bool)

(declare-fun derivationStepZipper!1099 ((Set Context!8448) C!29950) (Set Context!8448))

(declare-fun head!11229 (List!60821) C!29950)

(declare-fun tail!10326 (List!60821) List!60821)

(assert (=> b!5240015 (= e!3260499 (matchZipper!1084 (derivationStepZipper!1099 lt!2148180 (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688568 c!905580) b!5240014))

(assert (= (and d!1688568 (not c!905580)) b!5240015))

(declare-fun m!6284744 () Bool)

(assert (=> d!1688568 m!6284744))

(declare-fun m!6284746 () Bool)

(assert (=> b!5240014 m!6284746))

(declare-fun m!6284748 () Bool)

(assert (=> b!5240015 m!6284748))

(assert (=> b!5240015 m!6284748))

(declare-fun m!6284750 () Bool)

(assert (=> b!5240015 m!6284750))

(declare-fun m!6284752 () Bool)

(assert (=> b!5240015 m!6284752))

(assert (=> b!5240015 m!6284750))

(assert (=> b!5240015 m!6284752))

(declare-fun m!6284754 () Bool)

(assert (=> b!5240015 m!6284754))

(assert (=> b!5239847 d!1688568))

(declare-fun d!1688570 () Bool)

(declare-fun c!905581 () Bool)

(assert (=> d!1688570 (= c!905581 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260500 () Bool)

(assert (=> d!1688570 (= (matchZipper!1084 lt!2148148 (t!374002 s!2326)) e!3260500)))

(declare-fun b!5240016 () Bool)

(assert (=> b!5240016 (= e!3260500 (nullableZipper!1255 lt!2148148))))

(declare-fun b!5240017 () Bool)

(assert (=> b!5240017 (= e!3260500 (matchZipper!1084 (derivationStepZipper!1099 lt!2148148 (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688570 c!905581) b!5240016))

(assert (= (and d!1688570 (not c!905581)) b!5240017))

(assert (=> d!1688570 m!6284744))

(declare-fun m!6284756 () Bool)

(assert (=> b!5240016 m!6284756))

(assert (=> b!5240017 m!6284748))

(assert (=> b!5240017 m!6284748))

(declare-fun m!6284758 () Bool)

(assert (=> b!5240017 m!6284758))

(assert (=> b!5240017 m!6284752))

(assert (=> b!5240017 m!6284758))

(assert (=> b!5240017 m!6284752))

(declare-fun m!6284760 () Bool)

(assert (=> b!5240017 m!6284760))

(assert (=> b!5239845 d!1688570))

(declare-fun d!1688572 () Bool)

(assert (=> d!1688572 (= (matchR!7025 lt!2148174 s!2326) (matchRSpec!1943 lt!2148174 s!2326))))

(declare-fun lt!2148333 () Unit!152734)

(declare-fun choose!39000 (Regex!14840 List!60821) Unit!152734)

(assert (=> d!1688572 (= lt!2148333 (choose!39000 lt!2148174 s!2326))))

(assert (=> d!1688572 (validRegex!6576 lt!2148174)))

(assert (=> d!1688572 (= (mainMatchTheorem!1943 lt!2148174 s!2326) lt!2148333)))

(declare-fun bs!1215817 () Bool)

(assert (= bs!1215817 d!1688572))

(assert (=> bs!1215817 m!6284590))

(assert (=> bs!1215817 m!6284584))

(declare-fun m!6284762 () Bool)

(assert (=> bs!1215817 m!6284762))

(declare-fun m!6284764 () Bool)

(assert (=> bs!1215817 m!6284764))

(assert (=> b!5239846 d!1688572))

(declare-fun d!1688574 () Bool)

(assert (=> d!1688574 (= (matchR!7025 lt!2148189 s!2326) (matchZipper!1084 lt!2148168 s!2326))))

(declare-fun lt!2148336 () Unit!152734)

(declare-fun choose!39001 ((Set Context!8448) List!60820 Regex!14840 List!60821) Unit!152734)

(assert (=> d!1688574 (= lt!2148336 (choose!39001 lt!2148168 lt!2148191 lt!2148189 s!2326))))

(assert (=> d!1688574 (validRegex!6576 lt!2148189)))

(assert (=> d!1688574 (= (theoremZipperRegexEquiv!274 lt!2148168 lt!2148191 lt!2148189 s!2326) lt!2148336)))

(declare-fun bs!1215818 () Bool)

(assert (= bs!1215818 d!1688574))

(assert (=> bs!1215818 m!6284598))

(assert (=> bs!1215818 m!6284530))

(declare-fun m!6284766 () Bool)

(assert (=> bs!1215818 m!6284766))

(declare-fun m!6284768 () Bool)

(assert (=> bs!1215818 m!6284768))

(assert (=> b!5239846 d!1688574))

(declare-fun bs!1215819 () Bool)

(declare-fun b!5240051 () Bool)

(assert (= bs!1215819 (and b!5240051 b!5239851)))

(declare-fun lambda!263532 () Int)

(assert (=> bs!1215819 (not (= lambda!263532 lambda!263506))))

(assert (=> bs!1215819 (not (= lambda!263532 lambda!263507))))

(assert (=> b!5240051 true))

(assert (=> b!5240051 true))

(declare-fun bs!1215820 () Bool)

(declare-fun b!5240058 () Bool)

(assert (= bs!1215820 (and b!5240058 b!5239851)))

(declare-fun lambda!263533 () Int)

(assert (=> bs!1215820 (not (= lambda!263533 lambda!263506))))

(assert (=> bs!1215820 (= (and (= (regOne!30192 lt!2148174) (regOne!30192 r!7292)) (= (regTwo!30192 lt!2148174) (regTwo!30192 r!7292))) (= lambda!263533 lambda!263507))))

(declare-fun bs!1215821 () Bool)

(assert (= bs!1215821 (and b!5240058 b!5240051)))

(assert (=> bs!1215821 (not (= lambda!263533 lambda!263532))))

(assert (=> b!5240058 true))

(assert (=> b!5240058 true))

(declare-fun b!5240050 () Bool)

(declare-fun e!3260519 () Bool)

(declare-fun call!370885 () Bool)

(assert (=> b!5240050 (= e!3260519 call!370885)))

(declare-fun e!3260524 () Bool)

(declare-fun call!370886 () Bool)

(assert (=> b!5240051 (= e!3260524 call!370886)))

(declare-fun b!5240052 () Bool)

(declare-fun c!905593 () Bool)

(assert (=> b!5240052 (= c!905593 (is-ElementMatch!14840 lt!2148174))))

(declare-fun e!3260521 () Bool)

(declare-fun e!3260523 () Bool)

(assert (=> b!5240052 (= e!3260521 e!3260523)))

(declare-fun b!5240053 () Bool)

(declare-fun e!3260520 () Bool)

(declare-fun e!3260522 () Bool)

(assert (=> b!5240053 (= e!3260520 e!3260522)))

(declare-fun c!905592 () Bool)

(assert (=> b!5240053 (= c!905592 (is-Star!14840 lt!2148174))))

(declare-fun b!5240054 () Bool)

(declare-fun res!2224107 () Bool)

(assert (=> b!5240054 (=> res!2224107 e!3260524)))

(assert (=> b!5240054 (= res!2224107 call!370885)))

(assert (=> b!5240054 (= e!3260522 e!3260524)))

(declare-fun bm!370880 () Bool)

(assert (=> bm!370880 (= call!370885 (isEmpty!32629 s!2326))))

(declare-fun b!5240055 () Bool)

(declare-fun e!3260525 () Bool)

(assert (=> b!5240055 (= e!3260525 (matchRSpec!1943 (regTwo!30193 lt!2148174) s!2326))))

(declare-fun d!1688576 () Bool)

(declare-fun c!905591 () Bool)

(assert (=> d!1688576 (= c!905591 (is-EmptyExpr!14840 lt!2148174))))

(assert (=> d!1688576 (= (matchRSpec!1943 lt!2148174 s!2326) e!3260519)))

(declare-fun b!5240056 () Bool)

(assert (=> b!5240056 (= e!3260520 e!3260525)))

(declare-fun res!2224108 () Bool)

(assert (=> b!5240056 (= res!2224108 (matchRSpec!1943 (regOne!30193 lt!2148174) s!2326))))

(assert (=> b!5240056 (=> res!2224108 e!3260525)))

(declare-fun b!5240057 () Bool)

(assert (=> b!5240057 (= e!3260523 (= s!2326 (Cons!60697 (c!905560 lt!2148174) Nil!60697)))))

(declare-fun bm!370881 () Bool)

(assert (=> bm!370881 (= call!370886 (Exists!2021 (ite c!905592 lambda!263532 lambda!263533)))))

(assert (=> b!5240058 (= e!3260522 call!370886)))

(declare-fun b!5240059 () Bool)

(declare-fun c!905590 () Bool)

(assert (=> b!5240059 (= c!905590 (is-Union!14840 lt!2148174))))

(assert (=> b!5240059 (= e!3260523 e!3260520)))

(declare-fun b!5240060 () Bool)

(assert (=> b!5240060 (= e!3260519 e!3260521)))

(declare-fun res!2224106 () Bool)

(assert (=> b!5240060 (= res!2224106 (not (is-EmptyLang!14840 lt!2148174)))))

(assert (=> b!5240060 (=> (not res!2224106) (not e!3260521))))

(assert (= (and d!1688576 c!905591) b!5240050))

(assert (= (and d!1688576 (not c!905591)) b!5240060))

(assert (= (and b!5240060 res!2224106) b!5240052))

(assert (= (and b!5240052 c!905593) b!5240057))

(assert (= (and b!5240052 (not c!905593)) b!5240059))

(assert (= (and b!5240059 c!905590) b!5240056))

(assert (= (and b!5240059 (not c!905590)) b!5240053))

(assert (= (and b!5240056 (not res!2224108)) b!5240055))

(assert (= (and b!5240053 c!905592) b!5240054))

(assert (= (and b!5240053 (not c!905592)) b!5240058))

(assert (= (and b!5240054 (not res!2224107)) b!5240051))

(assert (= (or b!5240051 b!5240058) bm!370881))

(assert (= (or b!5240050 b!5240054) bm!370880))

(declare-fun m!6284770 () Bool)

(assert (=> bm!370880 m!6284770))

(declare-fun m!6284772 () Bool)

(assert (=> b!5240055 m!6284772))

(declare-fun m!6284774 () Bool)

(assert (=> b!5240056 m!6284774))

(declare-fun m!6284776 () Bool)

(assert (=> bm!370881 m!6284776))

(assert (=> b!5239846 d!1688576))

(declare-fun b!5240089 () Bool)

(declare-fun e!3260545 () Bool)

(declare-fun lt!2148339 () Bool)

(assert (=> b!5240089 (= e!3260545 (not lt!2148339))))

(declare-fun b!5240090 () Bool)

(declare-fun res!2224131 () Bool)

(declare-fun e!3260544 () Bool)

(assert (=> b!5240090 (=> res!2224131 e!3260544)))

(declare-fun e!3260540 () Bool)

(assert (=> b!5240090 (= res!2224131 e!3260540)))

(declare-fun res!2224129 () Bool)

(assert (=> b!5240090 (=> (not res!2224129) (not e!3260540))))

(assert (=> b!5240090 (= res!2224129 lt!2148339)))

(declare-fun b!5240091 () Bool)

(declare-fun e!3260541 () Bool)

(assert (=> b!5240091 (= e!3260541 (nullable!5009 lt!2148189))))

(declare-fun b!5240092 () Bool)

(declare-fun res!2224126 () Bool)

(assert (=> b!5240092 (=> res!2224126 e!3260544)))

(assert (=> b!5240092 (= res!2224126 (not (is-ElementMatch!14840 lt!2148189)))))

(assert (=> b!5240092 (= e!3260545 e!3260544)))

(declare-fun b!5240093 () Bool)

(assert (=> b!5240093 (= e!3260540 (= (head!11229 s!2326) (c!905560 lt!2148189)))))

(declare-fun b!5240094 () Bool)

(declare-fun res!2224130 () Bool)

(declare-fun e!3260546 () Bool)

(assert (=> b!5240094 (=> res!2224130 e!3260546)))

(assert (=> b!5240094 (= res!2224130 (not (isEmpty!32629 (tail!10326 s!2326))))))

(declare-fun d!1688578 () Bool)

(declare-fun e!3260543 () Bool)

(assert (=> d!1688578 e!3260543))

(declare-fun c!905601 () Bool)

(assert (=> d!1688578 (= c!905601 (is-EmptyExpr!14840 lt!2148189))))

(assert (=> d!1688578 (= lt!2148339 e!3260541)))

(declare-fun c!905600 () Bool)

(assert (=> d!1688578 (= c!905600 (isEmpty!32629 s!2326))))

(assert (=> d!1688578 (validRegex!6576 lt!2148189)))

(assert (=> d!1688578 (= (matchR!7025 lt!2148189 s!2326) lt!2148339)))

(declare-fun b!5240095 () Bool)

(declare-fun res!2224127 () Bool)

(assert (=> b!5240095 (=> (not res!2224127) (not e!3260540))))

(assert (=> b!5240095 (= res!2224127 (isEmpty!32629 (tail!10326 s!2326)))))

(declare-fun b!5240096 () Bool)

(declare-fun e!3260542 () Bool)

(assert (=> b!5240096 (= e!3260544 e!3260542)))

(declare-fun res!2224132 () Bool)

(assert (=> b!5240096 (=> (not res!2224132) (not e!3260542))))

(assert (=> b!5240096 (= res!2224132 (not lt!2148339))))

(declare-fun b!5240097 () Bool)

(assert (=> b!5240097 (= e!3260546 (not (= (head!11229 s!2326) (c!905560 lt!2148189))))))

(declare-fun b!5240098 () Bool)

(declare-fun derivativeStep!4077 (Regex!14840 C!29950) Regex!14840)

(assert (=> b!5240098 (= e!3260541 (matchR!7025 (derivativeStep!4077 lt!2148189 (head!11229 s!2326)) (tail!10326 s!2326)))))

(declare-fun b!5240099 () Bool)

(assert (=> b!5240099 (= e!3260542 e!3260546)))

(declare-fun res!2224128 () Bool)

(assert (=> b!5240099 (=> res!2224128 e!3260546)))

(declare-fun call!370889 () Bool)

(assert (=> b!5240099 (= res!2224128 call!370889)))

(declare-fun bm!370884 () Bool)

(assert (=> bm!370884 (= call!370889 (isEmpty!32629 s!2326))))

(declare-fun b!5240100 () Bool)

(assert (=> b!5240100 (= e!3260543 (= lt!2148339 call!370889))))

(declare-fun b!5240101 () Bool)

(declare-fun res!2224125 () Bool)

(assert (=> b!5240101 (=> (not res!2224125) (not e!3260540))))

(assert (=> b!5240101 (= res!2224125 (not call!370889))))

(declare-fun b!5240102 () Bool)

(assert (=> b!5240102 (= e!3260543 e!3260545)))

(declare-fun c!905602 () Bool)

(assert (=> b!5240102 (= c!905602 (is-EmptyLang!14840 lt!2148189))))

(assert (= (and d!1688578 c!905600) b!5240091))

(assert (= (and d!1688578 (not c!905600)) b!5240098))

(assert (= (and d!1688578 c!905601) b!5240100))

(assert (= (and d!1688578 (not c!905601)) b!5240102))

(assert (= (and b!5240102 c!905602) b!5240089))

(assert (= (and b!5240102 (not c!905602)) b!5240092))

(assert (= (and b!5240092 (not res!2224126)) b!5240090))

(assert (= (and b!5240090 res!2224129) b!5240101))

(assert (= (and b!5240101 res!2224125) b!5240095))

(assert (= (and b!5240095 res!2224127) b!5240093))

(assert (= (and b!5240090 (not res!2224131)) b!5240096))

(assert (= (and b!5240096 res!2224132) b!5240099))

(assert (= (and b!5240099 (not res!2224128)) b!5240094))

(assert (= (and b!5240094 (not res!2224130)) b!5240097))

(assert (= (or b!5240100 b!5240099 b!5240101) bm!370884))

(assert (=> bm!370884 m!6284770))

(declare-fun m!6284778 () Bool)

(assert (=> b!5240091 m!6284778))

(declare-fun m!6284780 () Bool)

(assert (=> b!5240093 m!6284780))

(assert (=> d!1688578 m!6284770))

(assert (=> d!1688578 m!6284768))

(assert (=> b!5240097 m!6284780))

(declare-fun m!6284782 () Bool)

(assert (=> b!5240095 m!6284782))

(assert (=> b!5240095 m!6284782))

(declare-fun m!6284784 () Bool)

(assert (=> b!5240095 m!6284784))

(assert (=> b!5240098 m!6284780))

(assert (=> b!5240098 m!6284780))

(declare-fun m!6284786 () Bool)

(assert (=> b!5240098 m!6284786))

(assert (=> b!5240098 m!6284782))

(assert (=> b!5240098 m!6284786))

(assert (=> b!5240098 m!6284782))

(declare-fun m!6284788 () Bool)

(assert (=> b!5240098 m!6284788))

(assert (=> b!5240094 m!6284782))

(assert (=> b!5240094 m!6284782))

(assert (=> b!5240094 m!6284784))

(assert (=> b!5239846 d!1688578))

(declare-fun d!1688580 () Bool)

(assert (=> d!1688580 (= (matchR!7025 lt!2148189 s!2326) (matchRSpec!1943 lt!2148189 s!2326))))

(declare-fun lt!2148340 () Unit!152734)

(assert (=> d!1688580 (= lt!2148340 (choose!39000 lt!2148189 s!2326))))

(assert (=> d!1688580 (validRegex!6576 lt!2148189)))

(assert (=> d!1688580 (= (mainMatchTheorem!1943 lt!2148189 s!2326) lt!2148340)))

(declare-fun bs!1215822 () Bool)

(assert (= bs!1215822 d!1688580))

(assert (=> bs!1215822 m!6284598))

(assert (=> bs!1215822 m!6284596))

(declare-fun m!6284790 () Bool)

(assert (=> bs!1215822 m!6284790))

(assert (=> bs!1215822 m!6284768))

(assert (=> b!5239846 d!1688580))

(declare-fun bs!1215823 () Bool)

(declare-fun b!5240104 () Bool)

(assert (= bs!1215823 (and b!5240104 b!5239851)))

(declare-fun lambda!263534 () Int)

(assert (=> bs!1215823 (not (= lambda!263534 lambda!263506))))

(assert (=> bs!1215823 (not (= lambda!263534 lambda!263507))))

(declare-fun bs!1215824 () Bool)

(assert (= bs!1215824 (and b!5240104 b!5240051)))

(assert (=> bs!1215824 (= (and (= (reg!15169 lt!2148189) (reg!15169 lt!2148174)) (= lt!2148189 lt!2148174)) (= lambda!263534 lambda!263532))))

(declare-fun bs!1215825 () Bool)

(assert (= bs!1215825 (and b!5240104 b!5240058)))

(assert (=> bs!1215825 (not (= lambda!263534 lambda!263533))))

(assert (=> b!5240104 true))

(assert (=> b!5240104 true))

(declare-fun bs!1215826 () Bool)

(declare-fun b!5240111 () Bool)

(assert (= bs!1215826 (and b!5240111 b!5240051)))

(declare-fun lambda!263535 () Int)

(assert (=> bs!1215826 (not (= lambda!263535 lambda!263532))))

(declare-fun bs!1215827 () Bool)

(assert (= bs!1215827 (and b!5240111 b!5239851)))

(assert (=> bs!1215827 (not (= lambda!263535 lambda!263506))))

(declare-fun bs!1215828 () Bool)

(assert (= bs!1215828 (and b!5240111 b!5240058)))

(assert (=> bs!1215828 (= (and (= (regOne!30192 lt!2148189) (regOne!30192 lt!2148174)) (= (regTwo!30192 lt!2148189) (regTwo!30192 lt!2148174))) (= lambda!263535 lambda!263533))))

(declare-fun bs!1215829 () Bool)

(assert (= bs!1215829 (and b!5240111 b!5240104)))

(assert (=> bs!1215829 (not (= lambda!263535 lambda!263534))))

(assert (=> bs!1215827 (= (and (= (regOne!30192 lt!2148189) (regOne!30192 r!7292)) (= (regTwo!30192 lt!2148189) (regTwo!30192 r!7292))) (= lambda!263535 lambda!263507))))

(assert (=> b!5240111 true))

(assert (=> b!5240111 true))

(declare-fun b!5240103 () Bool)

(declare-fun e!3260547 () Bool)

(declare-fun call!370890 () Bool)

(assert (=> b!5240103 (= e!3260547 call!370890)))

(declare-fun e!3260552 () Bool)

(declare-fun call!370891 () Bool)

(assert (=> b!5240104 (= e!3260552 call!370891)))

(declare-fun b!5240105 () Bool)

(declare-fun c!905606 () Bool)

(assert (=> b!5240105 (= c!905606 (is-ElementMatch!14840 lt!2148189))))

(declare-fun e!3260549 () Bool)

(declare-fun e!3260551 () Bool)

(assert (=> b!5240105 (= e!3260549 e!3260551)))

(declare-fun b!5240106 () Bool)

(declare-fun e!3260548 () Bool)

(declare-fun e!3260550 () Bool)

(assert (=> b!5240106 (= e!3260548 e!3260550)))

(declare-fun c!905605 () Bool)

(assert (=> b!5240106 (= c!905605 (is-Star!14840 lt!2148189))))

(declare-fun b!5240107 () Bool)

(declare-fun res!2224134 () Bool)

(assert (=> b!5240107 (=> res!2224134 e!3260552)))

(assert (=> b!5240107 (= res!2224134 call!370890)))

(assert (=> b!5240107 (= e!3260550 e!3260552)))

(declare-fun bm!370885 () Bool)

(assert (=> bm!370885 (= call!370890 (isEmpty!32629 s!2326))))

(declare-fun b!5240108 () Bool)

(declare-fun e!3260553 () Bool)

(assert (=> b!5240108 (= e!3260553 (matchRSpec!1943 (regTwo!30193 lt!2148189) s!2326))))

(declare-fun d!1688582 () Bool)

(declare-fun c!905604 () Bool)

(assert (=> d!1688582 (= c!905604 (is-EmptyExpr!14840 lt!2148189))))

(assert (=> d!1688582 (= (matchRSpec!1943 lt!2148189 s!2326) e!3260547)))

(declare-fun b!5240109 () Bool)

(assert (=> b!5240109 (= e!3260548 e!3260553)))

(declare-fun res!2224135 () Bool)

(assert (=> b!5240109 (= res!2224135 (matchRSpec!1943 (regOne!30193 lt!2148189) s!2326))))

(assert (=> b!5240109 (=> res!2224135 e!3260553)))

(declare-fun b!5240110 () Bool)

(assert (=> b!5240110 (= e!3260551 (= s!2326 (Cons!60697 (c!905560 lt!2148189) Nil!60697)))))

(declare-fun bm!370886 () Bool)

(assert (=> bm!370886 (= call!370891 (Exists!2021 (ite c!905605 lambda!263534 lambda!263535)))))

(assert (=> b!5240111 (= e!3260550 call!370891)))

(declare-fun b!5240112 () Bool)

(declare-fun c!905603 () Bool)

(assert (=> b!5240112 (= c!905603 (is-Union!14840 lt!2148189))))

(assert (=> b!5240112 (= e!3260551 e!3260548)))

(declare-fun b!5240113 () Bool)

(assert (=> b!5240113 (= e!3260547 e!3260549)))

(declare-fun res!2224133 () Bool)

(assert (=> b!5240113 (= res!2224133 (not (is-EmptyLang!14840 lt!2148189)))))

(assert (=> b!5240113 (=> (not res!2224133) (not e!3260549))))

(assert (= (and d!1688582 c!905604) b!5240103))

(assert (= (and d!1688582 (not c!905604)) b!5240113))

(assert (= (and b!5240113 res!2224133) b!5240105))

(assert (= (and b!5240105 c!905606) b!5240110))

(assert (= (and b!5240105 (not c!905606)) b!5240112))

(assert (= (and b!5240112 c!905603) b!5240109))

(assert (= (and b!5240112 (not c!905603)) b!5240106))

(assert (= (and b!5240109 (not res!2224135)) b!5240108))

(assert (= (and b!5240106 c!905605) b!5240107))

(assert (= (and b!5240106 (not c!905605)) b!5240111))

(assert (= (and b!5240107 (not res!2224134)) b!5240104))

(assert (= (or b!5240104 b!5240111) bm!370886))

(assert (= (or b!5240103 b!5240107) bm!370885))

(assert (=> bm!370885 m!6284770))

(declare-fun m!6284792 () Bool)

(assert (=> b!5240108 m!6284792))

(declare-fun m!6284794 () Bool)

(assert (=> b!5240109 m!6284794))

(declare-fun m!6284796 () Bool)

(assert (=> bm!370886 m!6284796))

(assert (=> b!5239846 d!1688582))

(declare-fun b!5240114 () Bool)

(declare-fun e!3260559 () Bool)

(declare-fun lt!2148341 () Bool)

(assert (=> b!5240114 (= e!3260559 (not lt!2148341))))

(declare-fun b!5240115 () Bool)

(declare-fun res!2224142 () Bool)

(declare-fun e!3260558 () Bool)

(assert (=> b!5240115 (=> res!2224142 e!3260558)))

(declare-fun e!3260554 () Bool)

(assert (=> b!5240115 (= res!2224142 e!3260554)))

(declare-fun res!2224140 () Bool)

(assert (=> b!5240115 (=> (not res!2224140) (not e!3260554))))

(assert (=> b!5240115 (= res!2224140 lt!2148341)))

(declare-fun b!5240116 () Bool)

(declare-fun e!3260555 () Bool)

(assert (=> b!5240116 (= e!3260555 (nullable!5009 lt!2148174))))

(declare-fun b!5240117 () Bool)

(declare-fun res!2224137 () Bool)

(assert (=> b!5240117 (=> res!2224137 e!3260558)))

(assert (=> b!5240117 (= res!2224137 (not (is-ElementMatch!14840 lt!2148174)))))

(assert (=> b!5240117 (= e!3260559 e!3260558)))

(declare-fun b!5240118 () Bool)

(assert (=> b!5240118 (= e!3260554 (= (head!11229 s!2326) (c!905560 lt!2148174)))))

(declare-fun b!5240119 () Bool)

(declare-fun res!2224141 () Bool)

(declare-fun e!3260560 () Bool)

(assert (=> b!5240119 (=> res!2224141 e!3260560)))

(assert (=> b!5240119 (= res!2224141 (not (isEmpty!32629 (tail!10326 s!2326))))))

(declare-fun d!1688584 () Bool)

(declare-fun e!3260557 () Bool)

(assert (=> d!1688584 e!3260557))

(declare-fun c!905608 () Bool)

(assert (=> d!1688584 (= c!905608 (is-EmptyExpr!14840 lt!2148174))))

(assert (=> d!1688584 (= lt!2148341 e!3260555)))

(declare-fun c!905607 () Bool)

(assert (=> d!1688584 (= c!905607 (isEmpty!32629 s!2326))))

(assert (=> d!1688584 (validRegex!6576 lt!2148174)))

(assert (=> d!1688584 (= (matchR!7025 lt!2148174 s!2326) lt!2148341)))

(declare-fun b!5240120 () Bool)

(declare-fun res!2224138 () Bool)

(assert (=> b!5240120 (=> (not res!2224138) (not e!3260554))))

(assert (=> b!5240120 (= res!2224138 (isEmpty!32629 (tail!10326 s!2326)))))

(declare-fun b!5240121 () Bool)

(declare-fun e!3260556 () Bool)

(assert (=> b!5240121 (= e!3260558 e!3260556)))

(declare-fun res!2224143 () Bool)

(assert (=> b!5240121 (=> (not res!2224143) (not e!3260556))))

(assert (=> b!5240121 (= res!2224143 (not lt!2148341))))

(declare-fun b!5240122 () Bool)

(assert (=> b!5240122 (= e!3260560 (not (= (head!11229 s!2326) (c!905560 lt!2148174))))))

(declare-fun b!5240123 () Bool)

(assert (=> b!5240123 (= e!3260555 (matchR!7025 (derivativeStep!4077 lt!2148174 (head!11229 s!2326)) (tail!10326 s!2326)))))

(declare-fun b!5240124 () Bool)

(assert (=> b!5240124 (= e!3260556 e!3260560)))

(declare-fun res!2224139 () Bool)

(assert (=> b!5240124 (=> res!2224139 e!3260560)))

(declare-fun call!370892 () Bool)

(assert (=> b!5240124 (= res!2224139 call!370892)))

(declare-fun bm!370887 () Bool)

(assert (=> bm!370887 (= call!370892 (isEmpty!32629 s!2326))))

(declare-fun b!5240125 () Bool)

(assert (=> b!5240125 (= e!3260557 (= lt!2148341 call!370892))))

(declare-fun b!5240126 () Bool)

(declare-fun res!2224136 () Bool)

(assert (=> b!5240126 (=> (not res!2224136) (not e!3260554))))

(assert (=> b!5240126 (= res!2224136 (not call!370892))))

(declare-fun b!5240127 () Bool)

(assert (=> b!5240127 (= e!3260557 e!3260559)))

(declare-fun c!905609 () Bool)

(assert (=> b!5240127 (= c!905609 (is-EmptyLang!14840 lt!2148174))))

(assert (= (and d!1688584 c!905607) b!5240116))

(assert (= (and d!1688584 (not c!905607)) b!5240123))

(assert (= (and d!1688584 c!905608) b!5240125))

(assert (= (and d!1688584 (not c!905608)) b!5240127))

(assert (= (and b!5240127 c!905609) b!5240114))

(assert (= (and b!5240127 (not c!905609)) b!5240117))

(assert (= (and b!5240117 (not res!2224137)) b!5240115))

(assert (= (and b!5240115 res!2224140) b!5240126))

(assert (= (and b!5240126 res!2224136) b!5240120))

(assert (= (and b!5240120 res!2224138) b!5240118))

(assert (= (and b!5240115 (not res!2224142)) b!5240121))

(assert (= (and b!5240121 res!2224143) b!5240124))

(assert (= (and b!5240124 (not res!2224139)) b!5240119))

(assert (= (and b!5240119 (not res!2224141)) b!5240122))

(assert (= (or b!5240125 b!5240124 b!5240126) bm!370887))

(assert (=> bm!370887 m!6284770))

(declare-fun m!6284798 () Bool)

(assert (=> b!5240116 m!6284798))

(assert (=> b!5240118 m!6284780))

(assert (=> d!1688584 m!6284770))

(assert (=> d!1688584 m!6284764))

(assert (=> b!5240122 m!6284780))

(assert (=> b!5240120 m!6284782))

(assert (=> b!5240120 m!6284782))

(assert (=> b!5240120 m!6284784))

(assert (=> b!5240123 m!6284780))

(assert (=> b!5240123 m!6284780))

(declare-fun m!6284800 () Bool)

(assert (=> b!5240123 m!6284800))

(assert (=> b!5240123 m!6284782))

(assert (=> b!5240123 m!6284800))

(assert (=> b!5240123 m!6284782))

(declare-fun m!6284802 () Bool)

(assert (=> b!5240123 m!6284802))

(assert (=> b!5240119 m!6284782))

(assert (=> b!5240119 m!6284782))

(assert (=> b!5240119 m!6284784))

(assert (=> b!5239846 d!1688584))

(declare-fun d!1688586 () Bool)

(declare-fun c!905610 () Bool)

(assert (=> d!1688586 (= c!905610 (isEmpty!32629 s!2326))))

(declare-fun e!3260561 () Bool)

(assert (=> d!1688586 (= (matchZipper!1084 lt!2148151 s!2326) e!3260561)))

(declare-fun b!5240128 () Bool)

(assert (=> b!5240128 (= e!3260561 (nullableZipper!1255 lt!2148151))))

(declare-fun b!5240129 () Bool)

(assert (=> b!5240129 (= e!3260561 (matchZipper!1084 (derivationStepZipper!1099 lt!2148151 (head!11229 s!2326)) (tail!10326 s!2326)))))

(assert (= (and d!1688586 c!905610) b!5240128))

(assert (= (and d!1688586 (not c!905610)) b!5240129))

(assert (=> d!1688586 m!6284770))

(declare-fun m!6284804 () Bool)

(assert (=> b!5240128 m!6284804))

(assert (=> b!5240129 m!6284780))

(assert (=> b!5240129 m!6284780))

(declare-fun m!6284806 () Bool)

(assert (=> b!5240129 m!6284806))

(assert (=> b!5240129 m!6284782))

(assert (=> b!5240129 m!6284806))

(assert (=> b!5240129 m!6284782))

(declare-fun m!6284808 () Bool)

(assert (=> b!5240129 m!6284808))

(assert (=> b!5239846 d!1688586))

(declare-fun bs!1215830 () Bool)

(declare-fun d!1688588 () Bool)

(assert (= bs!1215830 (and d!1688588 b!5239860)))

(declare-fun lambda!263538 () Int)

(assert (=> bs!1215830 (= lambda!263538 lambda!263509)))

(declare-fun b!5240150 () Bool)

(declare-fun e!3260574 () Bool)

(declare-fun e!3260578 () Bool)

(assert (=> b!5240150 (= e!3260574 e!3260578)))

(declare-fun c!905621 () Bool)

(assert (=> b!5240150 (= c!905621 (isEmpty!32625 lt!2148164))))

(declare-fun b!5240151 () Bool)

(declare-fun e!3260579 () Regex!14840)

(declare-fun e!3260577 () Regex!14840)

(assert (=> b!5240151 (= e!3260579 e!3260577)))

(declare-fun c!905622 () Bool)

(assert (=> b!5240151 (= c!905622 (is-Cons!60695 lt!2148164))))

(declare-fun b!5240152 () Bool)

(assert (=> b!5240152 (= e!3260577 (Concat!23685 (h!67143 lt!2148164) (generalisedConcat!509 (t!374000 lt!2148164))))))

(declare-fun b!5240153 () Bool)

(declare-fun e!3260576 () Bool)

(declare-fun lt!2148344 () Regex!14840)

(declare-fun head!11230 (List!60819) Regex!14840)

(assert (=> b!5240153 (= e!3260576 (= lt!2148344 (head!11230 lt!2148164)))))

(declare-fun b!5240155 () Bool)

(assert (=> b!5240155 (= e!3260579 (h!67143 lt!2148164))))

(declare-fun b!5240156 () Bool)

(declare-fun isEmptyExpr!791 (Regex!14840) Bool)

(assert (=> b!5240156 (= e!3260578 (isEmptyExpr!791 lt!2148344))))

(declare-fun b!5240157 () Bool)

(declare-fun isConcat!314 (Regex!14840) Bool)

(assert (=> b!5240157 (= e!3260576 (isConcat!314 lt!2148344))))

(declare-fun b!5240158 () Bool)

(declare-fun e!3260575 () Bool)

(assert (=> b!5240158 (= e!3260575 (isEmpty!32625 (t!374000 lt!2148164)))))

(declare-fun b!5240159 () Bool)

(assert (=> b!5240159 (= e!3260577 EmptyExpr!14840)))

(assert (=> d!1688588 e!3260574))

(declare-fun res!2224148 () Bool)

(assert (=> d!1688588 (=> (not res!2224148) (not e!3260574))))

(assert (=> d!1688588 (= res!2224148 (validRegex!6576 lt!2148344))))

(assert (=> d!1688588 (= lt!2148344 e!3260579)))

(declare-fun c!905620 () Bool)

(assert (=> d!1688588 (= c!905620 e!3260575)))

(declare-fun res!2224149 () Bool)

(assert (=> d!1688588 (=> (not res!2224149) (not e!3260575))))

(assert (=> d!1688588 (= res!2224149 (is-Cons!60695 lt!2148164))))

(assert (=> d!1688588 (forall!14264 lt!2148164 lambda!263538)))

(assert (=> d!1688588 (= (generalisedConcat!509 lt!2148164) lt!2148344)))

(declare-fun b!5240154 () Bool)

(assert (=> b!5240154 (= e!3260578 e!3260576)))

(declare-fun c!905619 () Bool)

(declare-fun tail!10327 (List!60819) List!60819)

(assert (=> b!5240154 (= c!905619 (isEmpty!32625 (tail!10327 lt!2148164)))))

(assert (= (and d!1688588 res!2224149) b!5240158))

(assert (= (and d!1688588 c!905620) b!5240155))

(assert (= (and d!1688588 (not c!905620)) b!5240151))

(assert (= (and b!5240151 c!905622) b!5240152))

(assert (= (and b!5240151 (not c!905622)) b!5240159))

(assert (= (and d!1688588 res!2224148) b!5240150))

(assert (= (and b!5240150 c!905621) b!5240156))

(assert (= (and b!5240150 (not c!905621)) b!5240154))

(assert (= (and b!5240154 c!905619) b!5240153))

(assert (= (and b!5240154 (not c!905619)) b!5240157))

(declare-fun m!6284810 () Bool)

(assert (=> b!5240150 m!6284810))

(declare-fun m!6284812 () Bool)

(assert (=> b!5240154 m!6284812))

(assert (=> b!5240154 m!6284812))

(declare-fun m!6284814 () Bool)

(assert (=> b!5240154 m!6284814))

(declare-fun m!6284816 () Bool)

(assert (=> b!5240158 m!6284816))

(declare-fun m!6284818 () Bool)

(assert (=> d!1688588 m!6284818))

(declare-fun m!6284820 () Bool)

(assert (=> d!1688588 m!6284820))

(declare-fun m!6284822 () Bool)

(assert (=> b!5240157 m!6284822))

(declare-fun m!6284824 () Bool)

(assert (=> b!5240153 m!6284824))

(declare-fun m!6284826 () Bool)

(assert (=> b!5240156 m!6284826))

(declare-fun m!6284828 () Bool)

(assert (=> b!5240152 m!6284828))

(assert (=> b!5239846 d!1688588))

(declare-fun bs!1215831 () Bool)

(declare-fun d!1688590 () Bool)

(assert (= bs!1215831 (and d!1688590 b!5239860)))

(declare-fun lambda!263539 () Int)

(assert (=> bs!1215831 (= lambda!263539 lambda!263509)))

(declare-fun bs!1215832 () Bool)

(assert (= bs!1215832 (and d!1688590 d!1688588)))

(assert (=> bs!1215832 (= lambda!263539 lambda!263538)))

(declare-fun b!5240160 () Bool)

(declare-fun e!3260580 () Bool)

(declare-fun e!3260584 () Bool)

(assert (=> b!5240160 (= e!3260580 e!3260584)))

(declare-fun c!905625 () Bool)

(assert (=> b!5240160 (= c!905625 (isEmpty!32625 lt!2148187))))

(declare-fun b!5240161 () Bool)

(declare-fun e!3260585 () Regex!14840)

(declare-fun e!3260583 () Regex!14840)

(assert (=> b!5240161 (= e!3260585 e!3260583)))

(declare-fun c!905626 () Bool)

(assert (=> b!5240161 (= c!905626 (is-Cons!60695 lt!2148187))))

(declare-fun b!5240162 () Bool)

(assert (=> b!5240162 (= e!3260583 (Concat!23685 (h!67143 lt!2148187) (generalisedConcat!509 (t!374000 lt!2148187))))))

(declare-fun b!5240163 () Bool)

(declare-fun e!3260582 () Bool)

(declare-fun lt!2148345 () Regex!14840)

(assert (=> b!5240163 (= e!3260582 (= lt!2148345 (head!11230 lt!2148187)))))

(declare-fun b!5240165 () Bool)

(assert (=> b!5240165 (= e!3260585 (h!67143 lt!2148187))))

(declare-fun b!5240166 () Bool)

(assert (=> b!5240166 (= e!3260584 (isEmptyExpr!791 lt!2148345))))

(declare-fun b!5240167 () Bool)

(assert (=> b!5240167 (= e!3260582 (isConcat!314 lt!2148345))))

(declare-fun b!5240168 () Bool)

(declare-fun e!3260581 () Bool)

(assert (=> b!5240168 (= e!3260581 (isEmpty!32625 (t!374000 lt!2148187)))))

(declare-fun b!5240169 () Bool)

(assert (=> b!5240169 (= e!3260583 EmptyExpr!14840)))

(assert (=> d!1688590 e!3260580))

(declare-fun res!2224150 () Bool)

(assert (=> d!1688590 (=> (not res!2224150) (not e!3260580))))

(assert (=> d!1688590 (= res!2224150 (validRegex!6576 lt!2148345))))

(assert (=> d!1688590 (= lt!2148345 e!3260585)))

(declare-fun c!905624 () Bool)

(assert (=> d!1688590 (= c!905624 e!3260581)))

(declare-fun res!2224151 () Bool)

(assert (=> d!1688590 (=> (not res!2224151) (not e!3260581))))

(assert (=> d!1688590 (= res!2224151 (is-Cons!60695 lt!2148187))))

(assert (=> d!1688590 (forall!14264 lt!2148187 lambda!263539)))

(assert (=> d!1688590 (= (generalisedConcat!509 lt!2148187) lt!2148345)))

(declare-fun b!5240164 () Bool)

(assert (=> b!5240164 (= e!3260584 e!3260582)))

(declare-fun c!905623 () Bool)

(assert (=> b!5240164 (= c!905623 (isEmpty!32625 (tail!10327 lt!2148187)))))

(assert (= (and d!1688590 res!2224151) b!5240168))

(assert (= (and d!1688590 c!905624) b!5240165))

(assert (= (and d!1688590 (not c!905624)) b!5240161))

(assert (= (and b!5240161 c!905626) b!5240162))

(assert (= (and b!5240161 (not c!905626)) b!5240169))

(assert (= (and d!1688590 res!2224150) b!5240160))

(assert (= (and b!5240160 c!905625) b!5240166))

(assert (= (and b!5240160 (not c!905625)) b!5240164))

(assert (= (and b!5240164 c!905623) b!5240163))

(assert (= (and b!5240164 (not c!905623)) b!5240167))

(declare-fun m!6284830 () Bool)

(assert (=> b!5240160 m!6284830))

(declare-fun m!6284832 () Bool)

(assert (=> b!5240164 m!6284832))

(assert (=> b!5240164 m!6284832))

(declare-fun m!6284834 () Bool)

(assert (=> b!5240164 m!6284834))

(declare-fun m!6284836 () Bool)

(assert (=> b!5240168 m!6284836))

(declare-fun m!6284838 () Bool)

(assert (=> d!1688590 m!6284838))

(declare-fun m!6284840 () Bool)

(assert (=> d!1688590 m!6284840))

(declare-fun m!6284842 () Bool)

(assert (=> b!5240167 m!6284842))

(declare-fun m!6284844 () Bool)

(assert (=> b!5240163 m!6284844))

(declare-fun m!6284846 () Bool)

(assert (=> b!5240166 m!6284846))

(declare-fun m!6284848 () Bool)

(assert (=> b!5240162 m!6284848))

(assert (=> b!5239846 d!1688590))

(declare-fun d!1688592 () Bool)

(assert (=> d!1688592 (= (matchR!7025 lt!2148174 s!2326) (matchZipper!1084 lt!2148151 s!2326))))

(declare-fun lt!2148346 () Unit!152734)

(assert (=> d!1688592 (= lt!2148346 (choose!39001 lt!2148151 lt!2148147 lt!2148174 s!2326))))

(assert (=> d!1688592 (validRegex!6576 lt!2148174)))

(assert (=> d!1688592 (= (theoremZipperRegexEquiv!274 lt!2148151 lt!2148147 lt!2148174 s!2326) lt!2148346)))

(declare-fun bs!1215833 () Bool)

(assert (= bs!1215833 d!1688592))

(assert (=> bs!1215833 m!6284590))

(assert (=> bs!1215833 m!6284572))

(declare-fun m!6284850 () Bool)

(assert (=> bs!1215833 m!6284850))

(assert (=> bs!1215833 m!6284764))

(assert (=> b!5239846 d!1688592))

(declare-fun d!1688594 () Bool)

(assert (=> d!1688594 (= (isEmpty!32626 (t!374001 zl!343)) (is-Nil!60696 (t!374001 zl!343)))))

(assert (=> b!5239863 d!1688594))

(declare-fun d!1688596 () Bool)

(declare-fun c!905627 () Bool)

(assert (=> d!1688596 (= c!905627 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260586 () Bool)

(assert (=> d!1688596 (= (matchZipper!1084 lt!2148192 (t!374002 s!2326)) e!3260586)))

(declare-fun b!5240170 () Bool)

(assert (=> b!5240170 (= e!3260586 (nullableZipper!1255 lt!2148192))))

(declare-fun b!5240171 () Bool)

(assert (=> b!5240171 (= e!3260586 (matchZipper!1084 (derivationStepZipper!1099 lt!2148192 (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688596 c!905627) b!5240170))

(assert (= (and d!1688596 (not c!905627)) b!5240171))

(assert (=> d!1688596 m!6284744))

(declare-fun m!6284852 () Bool)

(assert (=> b!5240170 m!6284852))

(assert (=> b!5240171 m!6284748))

(assert (=> b!5240171 m!6284748))

(declare-fun m!6284854 () Bool)

(assert (=> b!5240171 m!6284854))

(assert (=> b!5240171 m!6284752))

(assert (=> b!5240171 m!6284854))

(assert (=> b!5240171 m!6284752))

(declare-fun m!6284856 () Bool)

(assert (=> b!5240171 m!6284856))

(assert (=> b!5239864 d!1688596))

(declare-fun d!1688598 () Bool)

(declare-fun c!905628 () Bool)

(assert (=> d!1688598 (= c!905628 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260587 () Bool)

(assert (=> d!1688598 (= (matchZipper!1084 lt!2148175 (t!374002 s!2326)) e!3260587)))

(declare-fun b!5240172 () Bool)

(assert (=> b!5240172 (= e!3260587 (nullableZipper!1255 lt!2148175))))

(declare-fun b!5240173 () Bool)

(assert (=> b!5240173 (= e!3260587 (matchZipper!1084 (derivationStepZipper!1099 lt!2148175 (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688598 c!905628) b!5240172))

(assert (= (and d!1688598 (not c!905628)) b!5240173))

(assert (=> d!1688598 m!6284744))

(declare-fun m!6284858 () Bool)

(assert (=> b!5240172 m!6284858))

(assert (=> b!5240173 m!6284748))

(assert (=> b!5240173 m!6284748))

(declare-fun m!6284860 () Bool)

(assert (=> b!5240173 m!6284860))

(assert (=> b!5240173 m!6284752))

(assert (=> b!5240173 m!6284860))

(assert (=> b!5240173 m!6284752))

(declare-fun m!6284862 () Bool)

(assert (=> b!5240173 m!6284862))

(assert (=> b!5239864 d!1688598))

(declare-fun d!1688600 () Bool)

(declare-fun c!905629 () Bool)

(assert (=> d!1688600 (= c!905629 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260588 () Bool)

(assert (=> d!1688600 (= (matchZipper!1084 lt!2148181 (t!374002 s!2326)) e!3260588)))

(declare-fun b!5240174 () Bool)

(assert (=> b!5240174 (= e!3260588 (nullableZipper!1255 lt!2148181))))

(declare-fun b!5240175 () Bool)

(assert (=> b!5240175 (= e!3260588 (matchZipper!1084 (derivationStepZipper!1099 lt!2148181 (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688600 c!905629) b!5240174))

(assert (= (and d!1688600 (not c!905629)) b!5240175))

(assert (=> d!1688600 m!6284744))

(declare-fun m!6284864 () Bool)

(assert (=> b!5240174 m!6284864))

(assert (=> b!5240175 m!6284748))

(assert (=> b!5240175 m!6284748))

(declare-fun m!6284866 () Bool)

(assert (=> b!5240175 m!6284866))

(assert (=> b!5240175 m!6284752))

(assert (=> b!5240175 m!6284866))

(assert (=> b!5240175 m!6284752))

(declare-fun m!6284868 () Bool)

(assert (=> b!5240175 m!6284868))

(assert (=> b!5239864 d!1688600))

(declare-fun e!3260591 () Bool)

(declare-fun d!1688602 () Bool)

(assert (=> d!1688602 (= (matchZipper!1084 (set.union lt!2148181 lt!2148148) (t!374002 s!2326)) e!3260591)))

(declare-fun res!2224154 () Bool)

(assert (=> d!1688602 (=> res!2224154 e!3260591)))

(assert (=> d!1688602 (= res!2224154 (matchZipper!1084 lt!2148181 (t!374002 s!2326)))))

(declare-fun lt!2148349 () Unit!152734)

(declare-fun choose!39002 ((Set Context!8448) (Set Context!8448) List!60821) Unit!152734)

(assert (=> d!1688602 (= lt!2148349 (choose!39002 lt!2148181 lt!2148148 (t!374002 s!2326)))))

(assert (=> d!1688602 (= (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148181 lt!2148148 (t!374002 s!2326)) lt!2148349)))

(declare-fun b!5240178 () Bool)

(assert (=> b!5240178 (= e!3260591 (matchZipper!1084 lt!2148148 (t!374002 s!2326)))))

(assert (= (and d!1688602 (not res!2224154)) b!5240178))

(declare-fun m!6284870 () Bool)

(assert (=> d!1688602 m!6284870))

(assert (=> d!1688602 m!6284552))

(declare-fun m!6284872 () Bool)

(assert (=> d!1688602 m!6284872))

(assert (=> b!5240178 m!6284542))

(assert (=> b!5239864 d!1688602))

(declare-fun bm!370900 () Bool)

(declare-fun call!370909 () (Set Context!8448))

(declare-fun call!370906 () (Set Context!8448))

(assert (=> bm!370900 (= call!370909 call!370906)))

(declare-fun d!1688604 () Bool)

(declare-fun c!905644 () Bool)

(assert (=> d!1688604 (= c!905644 (and (is-ElementMatch!14840 (regTwo!30193 (regOne!30192 r!7292))) (= (c!905560 (regTwo!30193 (regOne!30192 r!7292))) (h!67145 s!2326))))))

(declare-fun e!3260609 () (Set Context!8448))

(assert (=> d!1688604 (= (derivationStepZipperDown!288 (regTwo!30193 (regOne!30192 r!7292)) lt!2148160 (h!67145 s!2326)) e!3260609)))

(declare-fun b!5240201 () Bool)

(declare-fun c!905642 () Bool)

(assert (=> b!5240201 (= c!905642 (is-Star!14840 (regTwo!30193 (regOne!30192 r!7292))))))

(declare-fun e!3260607 () (Set Context!8448))

(declare-fun e!3260605 () (Set Context!8448))

(assert (=> b!5240201 (= e!3260607 e!3260605)))

(declare-fun c!905641 () Bool)

(declare-fun c!905640 () Bool)

(declare-fun bm!370901 () Bool)

(declare-fun call!370910 () List!60819)

(declare-fun $colon$colon!1305 (List!60819 Regex!14840) List!60819)

(assert (=> bm!370901 (= call!370910 ($colon$colon!1305 (exprs!4724 lt!2148160) (ite (or c!905641 c!905640) (regTwo!30192 (regTwo!30193 (regOne!30192 r!7292))) (regTwo!30193 (regOne!30192 r!7292)))))))

(declare-fun b!5240202 () Bool)

(declare-fun call!370908 () (Set Context!8448))

(assert (=> b!5240202 (= e!3260605 call!370908)))

(declare-fun b!5240203 () Bool)

(declare-fun e!3260604 () (Set Context!8448))

(declare-fun call!370905 () (Set Context!8448))

(assert (=> b!5240203 (= e!3260604 (set.union call!370906 call!370905))))

(declare-fun b!5240204 () Bool)

(declare-fun e!3260606 () (Set Context!8448))

(assert (=> b!5240204 (= e!3260606 e!3260607)))

(assert (=> b!5240204 (= c!905640 (is-Concat!23685 (regTwo!30193 (regOne!30192 r!7292))))))

(declare-fun b!5240205 () Bool)

(assert (=> b!5240205 (= e!3260605 (as set.empty (Set Context!8448)))))

(declare-fun b!5240206 () Bool)

(declare-fun e!3260608 () Bool)

(assert (=> b!5240206 (= c!905641 e!3260608)))

(declare-fun res!2224157 () Bool)

(assert (=> b!5240206 (=> (not res!2224157) (not e!3260608))))

(assert (=> b!5240206 (= res!2224157 (is-Concat!23685 (regTwo!30193 (regOne!30192 r!7292))))))

(assert (=> b!5240206 (= e!3260604 e!3260606)))

(declare-fun bm!370902 () Bool)

(declare-fun call!370907 () List!60819)

(assert (=> bm!370902 (= call!370907 call!370910)))

(declare-fun b!5240207 () Bool)

(assert (=> b!5240207 (= e!3260609 (set.insert lt!2148160 (as set.empty (Set Context!8448))))))

(declare-fun bm!370903 () Bool)

(declare-fun c!905643 () Bool)

(assert (=> bm!370903 (= call!370906 (derivationStepZipperDown!288 (ite c!905643 (regOne!30193 (regTwo!30193 (regOne!30192 r!7292))) (ite c!905641 (regTwo!30192 (regTwo!30193 (regOne!30192 r!7292))) (ite c!905640 (regOne!30192 (regTwo!30193 (regOne!30192 r!7292))) (reg!15169 (regTwo!30193 (regOne!30192 r!7292)))))) (ite (or c!905643 c!905641) lt!2148160 (Context!8449 call!370907)) (h!67145 s!2326)))))

(declare-fun b!5240208 () Bool)

(assert (=> b!5240208 (= e!3260608 (nullable!5009 (regOne!30192 (regTwo!30193 (regOne!30192 r!7292)))))))

(declare-fun bm!370904 () Bool)

(assert (=> bm!370904 (= call!370908 call!370909)))

(declare-fun b!5240209 () Bool)

(assert (=> b!5240209 (= e!3260609 e!3260604)))

(assert (=> b!5240209 (= c!905643 (is-Union!14840 (regTwo!30193 (regOne!30192 r!7292))))))

(declare-fun b!5240210 () Bool)

(assert (=> b!5240210 (= e!3260607 call!370908)))

(declare-fun bm!370905 () Bool)

(assert (=> bm!370905 (= call!370905 (derivationStepZipperDown!288 (ite c!905643 (regTwo!30193 (regTwo!30193 (regOne!30192 r!7292))) (regOne!30192 (regTwo!30193 (regOne!30192 r!7292)))) (ite c!905643 lt!2148160 (Context!8449 call!370910)) (h!67145 s!2326)))))

(declare-fun b!5240211 () Bool)

(assert (=> b!5240211 (= e!3260606 (set.union call!370905 call!370909))))

(assert (= (and d!1688604 c!905644) b!5240207))

(assert (= (and d!1688604 (not c!905644)) b!5240209))

(assert (= (and b!5240209 c!905643) b!5240203))

(assert (= (and b!5240209 (not c!905643)) b!5240206))

(assert (= (and b!5240206 res!2224157) b!5240208))

(assert (= (and b!5240206 c!905641) b!5240211))

(assert (= (and b!5240206 (not c!905641)) b!5240204))

(assert (= (and b!5240204 c!905640) b!5240210))

(assert (= (and b!5240204 (not c!905640)) b!5240201))

(assert (= (and b!5240201 c!905642) b!5240202))

(assert (= (and b!5240201 (not c!905642)) b!5240205))

(assert (= (or b!5240210 b!5240202) bm!370902))

(assert (= (or b!5240210 b!5240202) bm!370904))

(assert (= (or b!5240211 bm!370902) bm!370901))

(assert (= (or b!5240211 bm!370904) bm!370900))

(assert (= (or b!5240203 b!5240211) bm!370905))

(assert (= (or b!5240203 bm!370900) bm!370903))

(declare-fun m!6284874 () Bool)

(assert (=> b!5240207 m!6284874))

(declare-fun m!6284876 () Bool)

(assert (=> bm!370905 m!6284876))

(declare-fun m!6284878 () Bool)

(assert (=> b!5240208 m!6284878))

(declare-fun m!6284880 () Bool)

(assert (=> bm!370901 m!6284880))

(declare-fun m!6284882 () Bool)

(assert (=> bm!370903 m!6284882))

(assert (=> b!5239843 d!1688604))

(declare-fun bm!370906 () Bool)

(declare-fun call!370915 () (Set Context!8448))

(declare-fun call!370912 () (Set Context!8448))

(assert (=> bm!370906 (= call!370915 call!370912)))

(declare-fun d!1688606 () Bool)

(declare-fun c!905649 () Bool)

(assert (=> d!1688606 (= c!905649 (and (is-ElementMatch!14840 (regOne!30193 (regOne!30192 r!7292))) (= (c!905560 (regOne!30193 (regOne!30192 r!7292))) (h!67145 s!2326))))))

(declare-fun e!3260615 () (Set Context!8448))

(assert (=> d!1688606 (= (derivationStepZipperDown!288 (regOne!30193 (regOne!30192 r!7292)) lt!2148160 (h!67145 s!2326)) e!3260615)))

(declare-fun b!5240212 () Bool)

(declare-fun c!905647 () Bool)

(assert (=> b!5240212 (= c!905647 (is-Star!14840 (regOne!30193 (regOne!30192 r!7292))))))

(declare-fun e!3260613 () (Set Context!8448))

(declare-fun e!3260611 () (Set Context!8448))

(assert (=> b!5240212 (= e!3260613 e!3260611)))

(declare-fun c!905646 () Bool)

(declare-fun call!370916 () List!60819)

(declare-fun c!905645 () Bool)

(declare-fun bm!370907 () Bool)

(assert (=> bm!370907 (= call!370916 ($colon$colon!1305 (exprs!4724 lt!2148160) (ite (or c!905646 c!905645) (regTwo!30192 (regOne!30193 (regOne!30192 r!7292))) (regOne!30193 (regOne!30192 r!7292)))))))

(declare-fun b!5240213 () Bool)

(declare-fun call!370914 () (Set Context!8448))

(assert (=> b!5240213 (= e!3260611 call!370914)))

(declare-fun b!5240214 () Bool)

(declare-fun e!3260610 () (Set Context!8448))

(declare-fun call!370911 () (Set Context!8448))

(assert (=> b!5240214 (= e!3260610 (set.union call!370912 call!370911))))

(declare-fun b!5240215 () Bool)

(declare-fun e!3260612 () (Set Context!8448))

(assert (=> b!5240215 (= e!3260612 e!3260613)))

(assert (=> b!5240215 (= c!905645 (is-Concat!23685 (regOne!30193 (regOne!30192 r!7292))))))

(declare-fun b!5240216 () Bool)

(assert (=> b!5240216 (= e!3260611 (as set.empty (Set Context!8448)))))

(declare-fun b!5240217 () Bool)

(declare-fun e!3260614 () Bool)

(assert (=> b!5240217 (= c!905646 e!3260614)))

(declare-fun res!2224158 () Bool)

(assert (=> b!5240217 (=> (not res!2224158) (not e!3260614))))

(assert (=> b!5240217 (= res!2224158 (is-Concat!23685 (regOne!30193 (regOne!30192 r!7292))))))

(assert (=> b!5240217 (= e!3260610 e!3260612)))

(declare-fun bm!370908 () Bool)

(declare-fun call!370913 () List!60819)

(assert (=> bm!370908 (= call!370913 call!370916)))

(declare-fun b!5240218 () Bool)

(assert (=> b!5240218 (= e!3260615 (set.insert lt!2148160 (as set.empty (Set Context!8448))))))

(declare-fun bm!370909 () Bool)

(declare-fun c!905648 () Bool)

(assert (=> bm!370909 (= call!370912 (derivationStepZipperDown!288 (ite c!905648 (regOne!30193 (regOne!30193 (regOne!30192 r!7292))) (ite c!905646 (regTwo!30192 (regOne!30193 (regOne!30192 r!7292))) (ite c!905645 (regOne!30192 (regOne!30193 (regOne!30192 r!7292))) (reg!15169 (regOne!30193 (regOne!30192 r!7292)))))) (ite (or c!905648 c!905646) lt!2148160 (Context!8449 call!370913)) (h!67145 s!2326)))))

(declare-fun b!5240219 () Bool)

(assert (=> b!5240219 (= e!3260614 (nullable!5009 (regOne!30192 (regOne!30193 (regOne!30192 r!7292)))))))

(declare-fun bm!370910 () Bool)

(assert (=> bm!370910 (= call!370914 call!370915)))

(declare-fun b!5240220 () Bool)

(assert (=> b!5240220 (= e!3260615 e!3260610)))

(assert (=> b!5240220 (= c!905648 (is-Union!14840 (regOne!30193 (regOne!30192 r!7292))))))

(declare-fun b!5240221 () Bool)

(assert (=> b!5240221 (= e!3260613 call!370914)))

(declare-fun bm!370911 () Bool)

(assert (=> bm!370911 (= call!370911 (derivationStepZipperDown!288 (ite c!905648 (regTwo!30193 (regOne!30193 (regOne!30192 r!7292))) (regOne!30192 (regOne!30193 (regOne!30192 r!7292)))) (ite c!905648 lt!2148160 (Context!8449 call!370916)) (h!67145 s!2326)))))

(declare-fun b!5240222 () Bool)

(assert (=> b!5240222 (= e!3260612 (set.union call!370911 call!370915))))

(assert (= (and d!1688606 c!905649) b!5240218))

(assert (= (and d!1688606 (not c!905649)) b!5240220))

(assert (= (and b!5240220 c!905648) b!5240214))

(assert (= (and b!5240220 (not c!905648)) b!5240217))

(assert (= (and b!5240217 res!2224158) b!5240219))

(assert (= (and b!5240217 c!905646) b!5240222))

(assert (= (and b!5240217 (not c!905646)) b!5240215))

(assert (= (and b!5240215 c!905645) b!5240221))

(assert (= (and b!5240215 (not c!905645)) b!5240212))

(assert (= (and b!5240212 c!905647) b!5240213))

(assert (= (and b!5240212 (not c!905647)) b!5240216))

(assert (= (or b!5240221 b!5240213) bm!370908))

(assert (= (or b!5240221 b!5240213) bm!370910))

(assert (= (or b!5240222 bm!370908) bm!370907))

(assert (= (or b!5240222 bm!370910) bm!370906))

(assert (= (or b!5240214 b!5240222) bm!370911))

(assert (= (or b!5240214 bm!370906) bm!370909))

(assert (=> b!5240218 m!6284874))

(declare-fun m!6284884 () Bool)

(assert (=> bm!370911 m!6284884))

(declare-fun m!6284886 () Bool)

(assert (=> b!5240219 m!6284886))

(declare-fun m!6284888 () Bool)

(assert (=> bm!370907 m!6284888))

(declare-fun m!6284890 () Bool)

(assert (=> bm!370909 m!6284890))

(assert (=> b!5239843 d!1688606))

(declare-fun bs!1215834 () Bool)

(declare-fun b!5240224 () Bool)

(assert (= bs!1215834 (and b!5240224 b!5240111)))

(declare-fun lambda!263540 () Int)

(assert (=> bs!1215834 (not (= lambda!263540 lambda!263535))))

(declare-fun bs!1215835 () Bool)

(assert (= bs!1215835 (and b!5240224 b!5240051)))

(assert (=> bs!1215835 (= (and (= (reg!15169 r!7292) (reg!15169 lt!2148174)) (= r!7292 lt!2148174)) (= lambda!263540 lambda!263532))))

(declare-fun bs!1215836 () Bool)

(assert (= bs!1215836 (and b!5240224 b!5239851)))

(assert (=> bs!1215836 (not (= lambda!263540 lambda!263506))))

(declare-fun bs!1215837 () Bool)

(assert (= bs!1215837 (and b!5240224 b!5240058)))

(assert (=> bs!1215837 (not (= lambda!263540 lambda!263533))))

(declare-fun bs!1215838 () Bool)

(assert (= bs!1215838 (and b!5240224 b!5240104)))

(assert (=> bs!1215838 (= (and (= (reg!15169 r!7292) (reg!15169 lt!2148189)) (= r!7292 lt!2148189)) (= lambda!263540 lambda!263534))))

(assert (=> bs!1215836 (not (= lambda!263540 lambda!263507))))

(assert (=> b!5240224 true))

(assert (=> b!5240224 true))

(declare-fun bs!1215839 () Bool)

(declare-fun b!5240231 () Bool)

(assert (= bs!1215839 (and b!5240231 b!5240111)))

(declare-fun lambda!263541 () Int)

(assert (=> bs!1215839 (= (and (= (regOne!30192 r!7292) (regOne!30192 lt!2148189)) (= (regTwo!30192 r!7292) (regTwo!30192 lt!2148189))) (= lambda!263541 lambda!263535))))

(declare-fun bs!1215840 () Bool)

(assert (= bs!1215840 (and b!5240231 b!5240051)))

(assert (=> bs!1215840 (not (= lambda!263541 lambda!263532))))

(declare-fun bs!1215841 () Bool)

(assert (= bs!1215841 (and b!5240231 b!5239851)))

(assert (=> bs!1215841 (not (= lambda!263541 lambda!263506))))

(declare-fun bs!1215842 () Bool)

(assert (= bs!1215842 (and b!5240231 b!5240224)))

(assert (=> bs!1215842 (not (= lambda!263541 lambda!263540))))

(declare-fun bs!1215843 () Bool)

(assert (= bs!1215843 (and b!5240231 b!5240058)))

(assert (=> bs!1215843 (= (and (= (regOne!30192 r!7292) (regOne!30192 lt!2148174)) (= (regTwo!30192 r!7292) (regTwo!30192 lt!2148174))) (= lambda!263541 lambda!263533))))

(declare-fun bs!1215844 () Bool)

(assert (= bs!1215844 (and b!5240231 b!5240104)))

(assert (=> bs!1215844 (not (= lambda!263541 lambda!263534))))

(assert (=> bs!1215841 (= lambda!263541 lambda!263507)))

(assert (=> b!5240231 true))

(assert (=> b!5240231 true))

(declare-fun b!5240223 () Bool)

(declare-fun e!3260616 () Bool)

(declare-fun call!370917 () Bool)

(assert (=> b!5240223 (= e!3260616 call!370917)))

(declare-fun e!3260621 () Bool)

(declare-fun call!370918 () Bool)

(assert (=> b!5240224 (= e!3260621 call!370918)))

(declare-fun b!5240225 () Bool)

(declare-fun c!905653 () Bool)

(assert (=> b!5240225 (= c!905653 (is-ElementMatch!14840 r!7292))))

(declare-fun e!3260618 () Bool)

(declare-fun e!3260620 () Bool)

(assert (=> b!5240225 (= e!3260618 e!3260620)))

(declare-fun b!5240226 () Bool)

(declare-fun e!3260617 () Bool)

(declare-fun e!3260619 () Bool)

(assert (=> b!5240226 (= e!3260617 e!3260619)))

(declare-fun c!905652 () Bool)

(assert (=> b!5240226 (= c!905652 (is-Star!14840 r!7292))))

(declare-fun b!5240227 () Bool)

(declare-fun res!2224160 () Bool)

(assert (=> b!5240227 (=> res!2224160 e!3260621)))

(assert (=> b!5240227 (= res!2224160 call!370917)))

(assert (=> b!5240227 (= e!3260619 e!3260621)))

(declare-fun bm!370912 () Bool)

(assert (=> bm!370912 (= call!370917 (isEmpty!32629 s!2326))))

(declare-fun b!5240228 () Bool)

(declare-fun e!3260622 () Bool)

(assert (=> b!5240228 (= e!3260622 (matchRSpec!1943 (regTwo!30193 r!7292) s!2326))))

(declare-fun d!1688608 () Bool)

(declare-fun c!905651 () Bool)

(assert (=> d!1688608 (= c!905651 (is-EmptyExpr!14840 r!7292))))

(assert (=> d!1688608 (= (matchRSpec!1943 r!7292 s!2326) e!3260616)))

(declare-fun b!5240229 () Bool)

(assert (=> b!5240229 (= e!3260617 e!3260622)))

(declare-fun res!2224161 () Bool)

(assert (=> b!5240229 (= res!2224161 (matchRSpec!1943 (regOne!30193 r!7292) s!2326))))

(assert (=> b!5240229 (=> res!2224161 e!3260622)))

(declare-fun b!5240230 () Bool)

(assert (=> b!5240230 (= e!3260620 (= s!2326 (Cons!60697 (c!905560 r!7292) Nil!60697)))))

(declare-fun bm!370913 () Bool)

(assert (=> bm!370913 (= call!370918 (Exists!2021 (ite c!905652 lambda!263540 lambda!263541)))))

(assert (=> b!5240231 (= e!3260619 call!370918)))

(declare-fun b!5240232 () Bool)

(declare-fun c!905650 () Bool)

(assert (=> b!5240232 (= c!905650 (is-Union!14840 r!7292))))

(assert (=> b!5240232 (= e!3260620 e!3260617)))

(declare-fun b!5240233 () Bool)

(assert (=> b!5240233 (= e!3260616 e!3260618)))

(declare-fun res!2224159 () Bool)

(assert (=> b!5240233 (= res!2224159 (not (is-EmptyLang!14840 r!7292)))))

(assert (=> b!5240233 (=> (not res!2224159) (not e!3260618))))

(assert (= (and d!1688608 c!905651) b!5240223))

(assert (= (and d!1688608 (not c!905651)) b!5240233))

(assert (= (and b!5240233 res!2224159) b!5240225))

(assert (= (and b!5240225 c!905653) b!5240230))

(assert (= (and b!5240225 (not c!905653)) b!5240232))

(assert (= (and b!5240232 c!905650) b!5240229))

(assert (= (and b!5240232 (not c!905650)) b!5240226))

(assert (= (and b!5240229 (not res!2224161)) b!5240228))

(assert (= (and b!5240226 c!905652) b!5240227))

(assert (= (and b!5240226 (not c!905652)) b!5240231))

(assert (= (and b!5240227 (not res!2224160)) b!5240224))

(assert (= (or b!5240224 b!5240231) bm!370913))

(assert (= (or b!5240223 b!5240227) bm!370912))

(assert (=> bm!370912 m!6284770))

(declare-fun m!6284892 () Bool)

(assert (=> b!5240228 m!6284892))

(declare-fun m!6284894 () Bool)

(assert (=> b!5240229 m!6284894))

(declare-fun m!6284896 () Bool)

(assert (=> bm!370913 m!6284896))

(assert (=> b!5239862 d!1688608))

(declare-fun b!5240234 () Bool)

(declare-fun e!3260628 () Bool)

(declare-fun lt!2148350 () Bool)

(assert (=> b!5240234 (= e!3260628 (not lt!2148350))))

(declare-fun b!5240235 () Bool)

(declare-fun res!2224168 () Bool)

(declare-fun e!3260627 () Bool)

(assert (=> b!5240235 (=> res!2224168 e!3260627)))

(declare-fun e!3260623 () Bool)

(assert (=> b!5240235 (= res!2224168 e!3260623)))

(declare-fun res!2224166 () Bool)

(assert (=> b!5240235 (=> (not res!2224166) (not e!3260623))))

(assert (=> b!5240235 (= res!2224166 lt!2148350)))

(declare-fun b!5240236 () Bool)

(declare-fun e!3260624 () Bool)

(assert (=> b!5240236 (= e!3260624 (nullable!5009 r!7292))))

(declare-fun b!5240237 () Bool)

(declare-fun res!2224163 () Bool)

(assert (=> b!5240237 (=> res!2224163 e!3260627)))

(assert (=> b!5240237 (= res!2224163 (not (is-ElementMatch!14840 r!7292)))))

(assert (=> b!5240237 (= e!3260628 e!3260627)))

(declare-fun b!5240238 () Bool)

(assert (=> b!5240238 (= e!3260623 (= (head!11229 s!2326) (c!905560 r!7292)))))

(declare-fun b!5240239 () Bool)

(declare-fun res!2224167 () Bool)

(declare-fun e!3260629 () Bool)

(assert (=> b!5240239 (=> res!2224167 e!3260629)))

(assert (=> b!5240239 (= res!2224167 (not (isEmpty!32629 (tail!10326 s!2326))))))

(declare-fun d!1688610 () Bool)

(declare-fun e!3260626 () Bool)

(assert (=> d!1688610 e!3260626))

(declare-fun c!905655 () Bool)

(assert (=> d!1688610 (= c!905655 (is-EmptyExpr!14840 r!7292))))

(assert (=> d!1688610 (= lt!2148350 e!3260624)))

(declare-fun c!905654 () Bool)

(assert (=> d!1688610 (= c!905654 (isEmpty!32629 s!2326))))

(assert (=> d!1688610 (validRegex!6576 r!7292)))

(assert (=> d!1688610 (= (matchR!7025 r!7292 s!2326) lt!2148350)))

(declare-fun b!5240240 () Bool)

(declare-fun res!2224164 () Bool)

(assert (=> b!5240240 (=> (not res!2224164) (not e!3260623))))

(assert (=> b!5240240 (= res!2224164 (isEmpty!32629 (tail!10326 s!2326)))))

(declare-fun b!5240241 () Bool)

(declare-fun e!3260625 () Bool)

(assert (=> b!5240241 (= e!3260627 e!3260625)))

(declare-fun res!2224169 () Bool)

(assert (=> b!5240241 (=> (not res!2224169) (not e!3260625))))

(assert (=> b!5240241 (= res!2224169 (not lt!2148350))))

(declare-fun b!5240242 () Bool)

(assert (=> b!5240242 (= e!3260629 (not (= (head!11229 s!2326) (c!905560 r!7292))))))

(declare-fun b!5240243 () Bool)

(assert (=> b!5240243 (= e!3260624 (matchR!7025 (derivativeStep!4077 r!7292 (head!11229 s!2326)) (tail!10326 s!2326)))))

(declare-fun b!5240244 () Bool)

(assert (=> b!5240244 (= e!3260625 e!3260629)))

(declare-fun res!2224165 () Bool)

(assert (=> b!5240244 (=> res!2224165 e!3260629)))

(declare-fun call!370919 () Bool)

(assert (=> b!5240244 (= res!2224165 call!370919)))

(declare-fun bm!370914 () Bool)

(assert (=> bm!370914 (= call!370919 (isEmpty!32629 s!2326))))

(declare-fun b!5240245 () Bool)

(assert (=> b!5240245 (= e!3260626 (= lt!2148350 call!370919))))

(declare-fun b!5240246 () Bool)

(declare-fun res!2224162 () Bool)

(assert (=> b!5240246 (=> (not res!2224162) (not e!3260623))))

(assert (=> b!5240246 (= res!2224162 (not call!370919))))

(declare-fun b!5240247 () Bool)

(assert (=> b!5240247 (= e!3260626 e!3260628)))

(declare-fun c!905656 () Bool)

(assert (=> b!5240247 (= c!905656 (is-EmptyLang!14840 r!7292))))

(assert (= (and d!1688610 c!905654) b!5240236))

(assert (= (and d!1688610 (not c!905654)) b!5240243))

(assert (= (and d!1688610 c!905655) b!5240245))

(assert (= (and d!1688610 (not c!905655)) b!5240247))

(assert (= (and b!5240247 c!905656) b!5240234))

(assert (= (and b!5240247 (not c!905656)) b!5240237))

(assert (= (and b!5240237 (not res!2224163)) b!5240235))

(assert (= (and b!5240235 res!2224166) b!5240246))

(assert (= (and b!5240246 res!2224162) b!5240240))

(assert (= (and b!5240240 res!2224164) b!5240238))

(assert (= (and b!5240235 (not res!2224168)) b!5240241))

(assert (= (and b!5240241 res!2224169) b!5240244))

(assert (= (and b!5240244 (not res!2224165)) b!5240239))

(assert (= (and b!5240239 (not res!2224167)) b!5240242))

(assert (= (or b!5240245 b!5240244 b!5240246) bm!370914))

(assert (=> bm!370914 m!6284770))

(declare-fun m!6284898 () Bool)

(assert (=> b!5240236 m!6284898))

(assert (=> b!5240238 m!6284780))

(assert (=> d!1688610 m!6284770))

(assert (=> d!1688610 m!6284574))

(assert (=> b!5240242 m!6284780))

(assert (=> b!5240240 m!6284782))

(assert (=> b!5240240 m!6284782))

(assert (=> b!5240240 m!6284784))

(assert (=> b!5240243 m!6284780))

(assert (=> b!5240243 m!6284780))

(declare-fun m!6284900 () Bool)

(assert (=> b!5240243 m!6284900))

(assert (=> b!5240243 m!6284782))

(assert (=> b!5240243 m!6284900))

(assert (=> b!5240243 m!6284782))

(declare-fun m!6284902 () Bool)

(assert (=> b!5240243 m!6284902))

(assert (=> b!5240239 m!6284782))

(assert (=> b!5240239 m!6284782))

(assert (=> b!5240239 m!6284784))

(assert (=> b!5239862 d!1688610))

(declare-fun d!1688612 () Bool)

(assert (=> d!1688612 (= (matchR!7025 r!7292 s!2326) (matchRSpec!1943 r!7292 s!2326))))

(declare-fun lt!2148351 () Unit!152734)

(assert (=> d!1688612 (= lt!2148351 (choose!39000 r!7292 s!2326))))

(assert (=> d!1688612 (validRegex!6576 r!7292)))

(assert (=> d!1688612 (= (mainMatchTheorem!1943 r!7292 s!2326) lt!2148351)))

(declare-fun bs!1215845 () Bool)

(assert (= bs!1215845 d!1688612))

(assert (=> bs!1215845 m!6284578))

(assert (=> bs!1215845 m!6284576))

(declare-fun m!6284904 () Bool)

(assert (=> bs!1215845 m!6284904))

(assert (=> bs!1215845 m!6284574))

(assert (=> b!5239862 d!1688612))

(declare-fun d!1688614 () Bool)

(declare-fun e!3260630 () Bool)

(assert (=> d!1688614 (= (matchZipper!1084 (set.union lt!2148181 lt!2148180) (t!374002 s!2326)) e!3260630)))

(declare-fun res!2224170 () Bool)

(assert (=> d!1688614 (=> res!2224170 e!3260630)))

(assert (=> d!1688614 (= res!2224170 (matchZipper!1084 lt!2148181 (t!374002 s!2326)))))

(declare-fun lt!2148352 () Unit!152734)

(assert (=> d!1688614 (= lt!2148352 (choose!39002 lt!2148181 lt!2148180 (t!374002 s!2326)))))

(assert (=> d!1688614 (= (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148181 lt!2148180 (t!374002 s!2326)) lt!2148352)))

(declare-fun b!5240248 () Bool)

(assert (=> b!5240248 (= e!3260630 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(assert (= (and d!1688614 (not res!2224170)) b!5240248))

(assert (=> d!1688614 m!6284540))

(assert (=> d!1688614 m!6284552))

(declare-fun m!6284906 () Bool)

(assert (=> d!1688614 m!6284906))

(assert (=> b!5240248 m!6284490))

(assert (=> b!5239840 d!1688614))

(declare-fun d!1688616 () Bool)

(declare-fun c!905657 () Bool)

(assert (=> d!1688616 (= c!905657 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260631 () Bool)

(assert (=> d!1688616 (= (matchZipper!1084 (set.union lt!2148181 lt!2148180) (t!374002 s!2326)) e!3260631)))

(declare-fun b!5240249 () Bool)

(assert (=> b!5240249 (= e!3260631 (nullableZipper!1255 (set.union lt!2148181 lt!2148180)))))

(declare-fun b!5240250 () Bool)

(assert (=> b!5240250 (= e!3260631 (matchZipper!1084 (derivationStepZipper!1099 (set.union lt!2148181 lt!2148180) (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688616 c!905657) b!5240249))

(assert (= (and d!1688616 (not c!905657)) b!5240250))

(assert (=> d!1688616 m!6284744))

(declare-fun m!6284908 () Bool)

(assert (=> b!5240249 m!6284908))

(assert (=> b!5240250 m!6284748))

(assert (=> b!5240250 m!6284748))

(declare-fun m!6284910 () Bool)

(assert (=> b!5240250 m!6284910))

(assert (=> b!5240250 m!6284752))

(assert (=> b!5240250 m!6284910))

(assert (=> b!5240250 m!6284752))

(declare-fun m!6284912 () Bool)

(assert (=> b!5240250 m!6284912))

(assert (=> b!5239840 d!1688616))

(declare-fun bs!1215846 () Bool)

(declare-fun d!1688618 () Bool)

(assert (= bs!1215846 (and d!1688618 b!5239860)))

(declare-fun lambda!263544 () Int)

(assert (=> bs!1215846 (= lambda!263544 lambda!263509)))

(declare-fun bs!1215847 () Bool)

(assert (= bs!1215847 (and d!1688618 d!1688588)))

(assert (=> bs!1215847 (= lambda!263544 lambda!263538)))

(declare-fun bs!1215848 () Bool)

(assert (= bs!1215848 (and d!1688618 d!1688590)))

(assert (=> bs!1215848 (= lambda!263544 lambda!263539)))

(assert (=> d!1688618 (= (inv!80348 setElem!33416) (forall!14264 (exprs!4724 setElem!33416) lambda!263544))))

(declare-fun bs!1215849 () Bool)

(assert (= bs!1215849 d!1688618))

(declare-fun m!6284914 () Bool)

(assert (=> bs!1215849 m!6284914))

(assert (=> setNonEmpty!33416 d!1688618))

(declare-fun bs!1215850 () Bool)

(declare-fun d!1688620 () Bool)

(assert (= bs!1215850 (and d!1688620 b!5239860)))

(declare-fun lambda!263545 () Int)

(assert (=> bs!1215850 (= lambda!263545 lambda!263509)))

(declare-fun bs!1215851 () Bool)

(assert (= bs!1215851 (and d!1688620 d!1688588)))

(assert (=> bs!1215851 (= lambda!263545 lambda!263538)))

(declare-fun bs!1215852 () Bool)

(assert (= bs!1215852 (and d!1688620 d!1688590)))

(assert (=> bs!1215852 (= lambda!263545 lambda!263539)))

(declare-fun bs!1215853 () Bool)

(assert (= bs!1215853 (and d!1688620 d!1688618)))

(assert (=> bs!1215853 (= lambda!263545 lambda!263544)))

(declare-fun b!5240251 () Bool)

(declare-fun e!3260632 () Bool)

(declare-fun e!3260636 () Bool)

(assert (=> b!5240251 (= e!3260632 e!3260636)))

(declare-fun c!905660 () Bool)

(assert (=> b!5240251 (= c!905660 (isEmpty!32625 (exprs!4724 (h!67144 zl!343))))))

(declare-fun b!5240252 () Bool)

(declare-fun e!3260637 () Regex!14840)

(declare-fun e!3260635 () Regex!14840)

(assert (=> b!5240252 (= e!3260637 e!3260635)))

(declare-fun c!905661 () Bool)

(assert (=> b!5240252 (= c!905661 (is-Cons!60695 (exprs!4724 (h!67144 zl!343))))))

(declare-fun b!5240253 () Bool)

(assert (=> b!5240253 (= e!3260635 (Concat!23685 (h!67143 (exprs!4724 (h!67144 zl!343))) (generalisedConcat!509 (t!374000 (exprs!4724 (h!67144 zl!343))))))))

(declare-fun b!5240254 () Bool)

(declare-fun e!3260634 () Bool)

(declare-fun lt!2148353 () Regex!14840)

(assert (=> b!5240254 (= e!3260634 (= lt!2148353 (head!11230 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5240256 () Bool)

(assert (=> b!5240256 (= e!3260637 (h!67143 (exprs!4724 (h!67144 zl!343))))))

(declare-fun b!5240257 () Bool)

(assert (=> b!5240257 (= e!3260636 (isEmptyExpr!791 lt!2148353))))

(declare-fun b!5240258 () Bool)

(assert (=> b!5240258 (= e!3260634 (isConcat!314 lt!2148353))))

(declare-fun b!5240259 () Bool)

(declare-fun e!3260633 () Bool)

(assert (=> b!5240259 (= e!3260633 (isEmpty!32625 (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5240260 () Bool)

(assert (=> b!5240260 (= e!3260635 EmptyExpr!14840)))

(assert (=> d!1688620 e!3260632))

(declare-fun res!2224171 () Bool)

(assert (=> d!1688620 (=> (not res!2224171) (not e!3260632))))

(assert (=> d!1688620 (= res!2224171 (validRegex!6576 lt!2148353))))

(assert (=> d!1688620 (= lt!2148353 e!3260637)))

(declare-fun c!905659 () Bool)

(assert (=> d!1688620 (= c!905659 e!3260633)))

(declare-fun res!2224172 () Bool)

(assert (=> d!1688620 (=> (not res!2224172) (not e!3260633))))

(assert (=> d!1688620 (= res!2224172 (is-Cons!60695 (exprs!4724 (h!67144 zl!343))))))

(assert (=> d!1688620 (forall!14264 (exprs!4724 (h!67144 zl!343)) lambda!263545)))

(assert (=> d!1688620 (= (generalisedConcat!509 (exprs!4724 (h!67144 zl!343))) lt!2148353)))

(declare-fun b!5240255 () Bool)

(assert (=> b!5240255 (= e!3260636 e!3260634)))

(declare-fun c!905658 () Bool)

(assert (=> b!5240255 (= c!905658 (isEmpty!32625 (tail!10327 (exprs!4724 (h!67144 zl!343)))))))

(assert (= (and d!1688620 res!2224172) b!5240259))

(assert (= (and d!1688620 c!905659) b!5240256))

(assert (= (and d!1688620 (not c!905659)) b!5240252))

(assert (= (and b!5240252 c!905661) b!5240253))

(assert (= (and b!5240252 (not c!905661)) b!5240260))

(assert (= (and d!1688620 res!2224171) b!5240251))

(assert (= (and b!5240251 c!905660) b!5240257))

(assert (= (and b!5240251 (not c!905660)) b!5240255))

(assert (= (and b!5240255 c!905658) b!5240254))

(assert (= (and b!5240255 (not c!905658)) b!5240258))

(declare-fun m!6284916 () Bool)

(assert (=> b!5240251 m!6284916))

(declare-fun m!6284918 () Bool)

(assert (=> b!5240255 m!6284918))

(assert (=> b!5240255 m!6284918))

(declare-fun m!6284920 () Bool)

(assert (=> b!5240255 m!6284920))

(assert (=> b!5240259 m!6284496))

(declare-fun m!6284922 () Bool)

(assert (=> d!1688620 m!6284922))

(declare-fun m!6284924 () Bool)

(assert (=> d!1688620 m!6284924))

(declare-fun m!6284926 () Bool)

(assert (=> b!5240258 m!6284926))

(declare-fun m!6284928 () Bool)

(assert (=> b!5240254 m!6284928))

(declare-fun m!6284930 () Bool)

(assert (=> b!5240257 m!6284930))

(declare-fun m!6284932 () Bool)

(assert (=> b!5240253 m!6284932))

(assert (=> b!5239861 d!1688620))

(declare-fun d!1688622 () Bool)

(declare-fun res!2224177 () Bool)

(declare-fun e!3260642 () Bool)

(assert (=> d!1688622 (=> res!2224177 e!3260642)))

(assert (=> d!1688622 (= res!2224177 (is-Nil!60695 lt!2148187))))

(assert (=> d!1688622 (= (forall!14264 lt!2148187 lambda!263509) e!3260642)))

(declare-fun b!5240265 () Bool)

(declare-fun e!3260643 () Bool)

(assert (=> b!5240265 (= e!3260642 e!3260643)))

(declare-fun res!2224178 () Bool)

(assert (=> b!5240265 (=> (not res!2224178) (not e!3260643))))

(declare-fun dynLambda!23983 (Int Regex!14840) Bool)

(assert (=> b!5240265 (= res!2224178 (dynLambda!23983 lambda!263509 (h!67143 lt!2148187)))))

(declare-fun b!5240266 () Bool)

(assert (=> b!5240266 (= e!3260643 (forall!14264 (t!374000 lt!2148187) lambda!263509))))

(assert (= (and d!1688622 (not res!2224177)) b!5240265))

(assert (= (and b!5240265 res!2224178) b!5240266))

(declare-fun b_lambda!202509 () Bool)

(assert (=> (not b_lambda!202509) (not b!5240265)))

(declare-fun m!6284934 () Bool)

(assert (=> b!5240265 m!6284934))

(declare-fun m!6284936 () Bool)

(assert (=> b!5240266 m!6284936))

(assert (=> b!5239860 d!1688622))

(declare-fun bs!1215854 () Bool)

(declare-fun d!1688624 () Bool)

(assert (= bs!1215854 (and d!1688624 d!1688620)))

(declare-fun lambda!263546 () Int)

(assert (=> bs!1215854 (= lambda!263546 lambda!263545)))

(declare-fun bs!1215855 () Bool)

(assert (= bs!1215855 (and d!1688624 d!1688618)))

(assert (=> bs!1215855 (= lambda!263546 lambda!263544)))

(declare-fun bs!1215856 () Bool)

(assert (= bs!1215856 (and d!1688624 b!5239860)))

(assert (=> bs!1215856 (= lambda!263546 lambda!263509)))

(declare-fun bs!1215857 () Bool)

(assert (= bs!1215857 (and d!1688624 d!1688590)))

(assert (=> bs!1215857 (= lambda!263546 lambda!263539)))

(declare-fun bs!1215858 () Bool)

(assert (= bs!1215858 (and d!1688624 d!1688588)))

(assert (=> bs!1215858 (= lambda!263546 lambda!263538)))

(assert (=> d!1688624 (= (inv!80348 (h!67144 zl!343)) (forall!14264 (exprs!4724 (h!67144 zl!343)) lambda!263546))))

(declare-fun bs!1215859 () Bool)

(assert (= bs!1215859 d!1688624))

(declare-fun m!6284938 () Bool)

(assert (=> bs!1215859 m!6284938))

(assert (=> b!5239839 d!1688624))

(assert (=> b!5239837 d!1688568))

(assert (=> b!5239859 d!1688586))

(declare-fun e!3260644 () Bool)

(declare-fun d!1688626 () Bool)

(assert (=> d!1688626 (= (matchZipper!1084 (set.union lt!2148192 lt!2148180) (t!374002 s!2326)) e!3260644)))

(declare-fun res!2224179 () Bool)

(assert (=> d!1688626 (=> res!2224179 e!3260644)))

(assert (=> d!1688626 (= res!2224179 (matchZipper!1084 lt!2148192 (t!374002 s!2326)))))

(declare-fun lt!2148354 () Unit!152734)

(assert (=> d!1688626 (= lt!2148354 (choose!39002 lt!2148192 lt!2148180 (t!374002 s!2326)))))

(assert (=> d!1688626 (= (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148192 lt!2148180 (t!374002 s!2326)) lt!2148354)))

(declare-fun b!5240267 () Bool)

(assert (=> b!5240267 (= e!3260644 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(assert (= (and d!1688626 (not res!2224179)) b!5240267))

(assert (=> d!1688626 m!6284570))

(assert (=> d!1688626 m!6284548))

(declare-fun m!6284940 () Bool)

(assert (=> d!1688626 m!6284940))

(assert (=> b!5240267 m!6284490))

(assert (=> b!5239836 d!1688626))

(assert (=> b!5239836 d!1688596))

(declare-fun d!1688628 () Bool)

(declare-fun c!905662 () Bool)

(assert (=> d!1688628 (= c!905662 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260645 () Bool)

(assert (=> d!1688628 (= (matchZipper!1084 (set.union lt!2148192 lt!2148180) (t!374002 s!2326)) e!3260645)))

(declare-fun b!5240268 () Bool)

(assert (=> b!5240268 (= e!3260645 (nullableZipper!1255 (set.union lt!2148192 lt!2148180)))))

(declare-fun b!5240269 () Bool)

(assert (=> b!5240269 (= e!3260645 (matchZipper!1084 (derivationStepZipper!1099 (set.union lt!2148192 lt!2148180) (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688628 c!905662) b!5240268))

(assert (= (and d!1688628 (not c!905662)) b!5240269))

(assert (=> d!1688628 m!6284744))

(declare-fun m!6284942 () Bool)

(assert (=> b!5240268 m!6284942))

(assert (=> b!5240269 m!6284748))

(assert (=> b!5240269 m!6284748))

(declare-fun m!6284944 () Bool)

(assert (=> b!5240269 m!6284944))

(assert (=> b!5240269 m!6284752))

(assert (=> b!5240269 m!6284944))

(assert (=> b!5240269 m!6284752))

(declare-fun m!6284946 () Bool)

(assert (=> b!5240269 m!6284946))

(assert (=> b!5239836 d!1688628))

(assert (=> b!5239857 d!1688570))

(declare-fun d!1688630 () Bool)

(declare-fun lt!2148357 () Int)

(assert (=> d!1688630 (>= lt!2148357 0)))

(declare-fun e!3260648 () Int)

(assert (=> d!1688630 (= lt!2148357 e!3260648)))

(declare-fun c!905665 () Bool)

(assert (=> d!1688630 (= c!905665 (is-Cons!60696 zl!343))))

(assert (=> d!1688630 (= (zipperDepthTotal!21 zl!343) lt!2148357)))

(declare-fun b!5240274 () Bool)

(declare-fun contextDepthTotal!13 (Context!8448) Int)

(assert (=> b!5240274 (= e!3260648 (+ (contextDepthTotal!13 (h!67144 zl!343)) (zipperDepthTotal!21 (t!374001 zl!343))))))

(declare-fun b!5240275 () Bool)

(assert (=> b!5240275 (= e!3260648 0)))

(assert (= (and d!1688630 c!905665) b!5240274))

(assert (= (and d!1688630 (not c!905665)) b!5240275))

(declare-fun m!6284948 () Bool)

(assert (=> b!5240274 m!6284948))

(declare-fun m!6284950 () Bool)

(assert (=> b!5240274 m!6284950))

(assert (=> b!5239858 d!1688630))

(declare-fun d!1688632 () Bool)

(declare-fun lt!2148358 () Int)

(assert (=> d!1688632 (>= lt!2148358 0)))

(declare-fun e!3260649 () Int)

(assert (=> d!1688632 (= lt!2148358 e!3260649)))

(declare-fun c!905666 () Bool)

(assert (=> d!1688632 (= c!905666 (is-Cons!60696 lt!2148191))))

(assert (=> d!1688632 (= (zipperDepthTotal!21 lt!2148191) lt!2148358)))

(declare-fun b!5240276 () Bool)

(assert (=> b!5240276 (= e!3260649 (+ (contextDepthTotal!13 (h!67144 lt!2148191)) (zipperDepthTotal!21 (t!374001 lt!2148191))))))

(declare-fun b!5240277 () Bool)

(assert (=> b!5240277 (= e!3260649 0)))

(assert (= (and d!1688632 c!905666) b!5240276))

(assert (= (and d!1688632 (not c!905666)) b!5240277))

(declare-fun m!6284952 () Bool)

(assert (=> b!5240276 m!6284952))

(declare-fun m!6284954 () Bool)

(assert (=> b!5240276 m!6284954))

(assert (=> b!5239858 d!1688632))

(declare-fun b!5240296 () Bool)

(declare-fun res!2224194 () Bool)

(declare-fun e!3260670 () Bool)

(assert (=> b!5240296 (=> res!2224194 e!3260670)))

(assert (=> b!5240296 (= res!2224194 (not (is-Concat!23685 r!7292)))))

(declare-fun e!3260668 () Bool)

(assert (=> b!5240296 (= e!3260668 e!3260670)))

(declare-fun bm!370921 () Bool)

(declare-fun c!905671 () Bool)

(declare-fun c!905672 () Bool)

(declare-fun call!370927 () Bool)

(assert (=> bm!370921 (= call!370927 (validRegex!6576 (ite c!905672 (reg!15169 r!7292) (ite c!905671 (regTwo!30193 r!7292) (regTwo!30192 r!7292)))))))

(declare-fun d!1688634 () Bool)

(declare-fun res!2224193 () Bool)

(declare-fun e!3260665 () Bool)

(assert (=> d!1688634 (=> res!2224193 e!3260665)))

(assert (=> d!1688634 (= res!2224193 (is-ElementMatch!14840 r!7292))))

(assert (=> d!1688634 (= (validRegex!6576 r!7292) e!3260665)))

(declare-fun b!5240297 () Bool)

(declare-fun e!3260667 () Bool)

(declare-fun call!370926 () Bool)

(assert (=> b!5240297 (= e!3260667 call!370926)))

(declare-fun b!5240298 () Bool)

(declare-fun e!3260664 () Bool)

(assert (=> b!5240298 (= e!3260664 call!370927)))

(declare-fun b!5240299 () Bool)

(declare-fun res!2224191 () Bool)

(declare-fun e!3260666 () Bool)

(assert (=> b!5240299 (=> (not res!2224191) (not e!3260666))))

(declare-fun call!370928 () Bool)

(assert (=> b!5240299 (= res!2224191 call!370928)))

(assert (=> b!5240299 (= e!3260668 e!3260666)))

(declare-fun b!5240300 () Bool)

(declare-fun e!3260669 () Bool)

(assert (=> b!5240300 (= e!3260669 e!3260664)))

(declare-fun res!2224190 () Bool)

(assert (=> b!5240300 (= res!2224190 (not (nullable!5009 (reg!15169 r!7292))))))

(assert (=> b!5240300 (=> (not res!2224190) (not e!3260664))))

(declare-fun b!5240301 () Bool)

(assert (=> b!5240301 (= e!3260666 call!370926)))

(declare-fun b!5240302 () Bool)

(assert (=> b!5240302 (= e!3260670 e!3260667)))

(declare-fun res!2224192 () Bool)

(assert (=> b!5240302 (=> (not res!2224192) (not e!3260667))))

(assert (=> b!5240302 (= res!2224192 call!370928)))

(declare-fun b!5240303 () Bool)

(assert (=> b!5240303 (= e!3260665 e!3260669)))

(assert (=> b!5240303 (= c!905672 (is-Star!14840 r!7292))))

(declare-fun b!5240304 () Bool)

(assert (=> b!5240304 (= e!3260669 e!3260668)))

(assert (=> b!5240304 (= c!905671 (is-Union!14840 r!7292))))

(declare-fun bm!370922 () Bool)

(assert (=> bm!370922 (= call!370926 call!370927)))

(declare-fun bm!370923 () Bool)

(assert (=> bm!370923 (= call!370928 (validRegex!6576 (ite c!905671 (regOne!30193 r!7292) (regOne!30192 r!7292))))))

(assert (= (and d!1688634 (not res!2224193)) b!5240303))

(assert (= (and b!5240303 c!905672) b!5240300))

(assert (= (and b!5240303 (not c!905672)) b!5240304))

(assert (= (and b!5240300 res!2224190) b!5240298))

(assert (= (and b!5240304 c!905671) b!5240299))

(assert (= (and b!5240304 (not c!905671)) b!5240296))

(assert (= (and b!5240299 res!2224191) b!5240301))

(assert (= (and b!5240296 (not res!2224194)) b!5240302))

(assert (= (and b!5240302 res!2224192) b!5240297))

(assert (= (or b!5240301 b!5240297) bm!370922))

(assert (= (or b!5240299 b!5240302) bm!370923))

(assert (= (or b!5240298 bm!370922) bm!370921))

(declare-fun m!6284956 () Bool)

(assert (=> bm!370921 m!6284956))

(declare-fun m!6284958 () Bool)

(assert (=> b!5240300 m!6284958))

(declare-fun m!6284960 () Bool)

(assert (=> bm!370923 m!6284960))

(assert (=> start!553908 d!1688634))

(declare-fun bs!1215860 () Bool)

(declare-fun d!1688636 () Bool)

(assert (= bs!1215860 (and d!1688636 d!1688620)))

(declare-fun lambda!263549 () Int)

(assert (=> bs!1215860 (= lambda!263549 lambda!263545)))

(declare-fun bs!1215861 () Bool)

(assert (= bs!1215861 (and d!1688636 d!1688618)))

(assert (=> bs!1215861 (= lambda!263549 lambda!263544)))

(declare-fun bs!1215862 () Bool)

(assert (= bs!1215862 (and d!1688636 b!5239860)))

(assert (=> bs!1215862 (= lambda!263549 lambda!263509)))

(declare-fun bs!1215863 () Bool)

(assert (= bs!1215863 (and d!1688636 d!1688624)))

(assert (=> bs!1215863 (= lambda!263549 lambda!263546)))

(declare-fun bs!1215864 () Bool)

(assert (= bs!1215864 (and d!1688636 d!1688590)))

(assert (=> bs!1215864 (= lambda!263549 lambda!263539)))

(declare-fun bs!1215865 () Bool)

(assert (= bs!1215865 (and d!1688636 d!1688588)))

(assert (=> bs!1215865 (= lambda!263549 lambda!263538)))

(declare-fun b!5240325 () Bool)

(declare-fun e!3260684 () Regex!14840)

(assert (=> b!5240325 (= e!3260684 (h!67143 (unfocusZipperList!282 zl!343)))))

(declare-fun e!3260688 () Bool)

(assert (=> d!1688636 e!3260688))

(declare-fun res!2224199 () Bool)

(assert (=> d!1688636 (=> (not res!2224199) (not e!3260688))))

(declare-fun lt!2148361 () Regex!14840)

(assert (=> d!1688636 (= res!2224199 (validRegex!6576 lt!2148361))))

(assert (=> d!1688636 (= lt!2148361 e!3260684)))

(declare-fun c!905681 () Bool)

(declare-fun e!3260685 () Bool)

(assert (=> d!1688636 (= c!905681 e!3260685)))

(declare-fun res!2224200 () Bool)

(assert (=> d!1688636 (=> (not res!2224200) (not e!3260685))))

(assert (=> d!1688636 (= res!2224200 (is-Cons!60695 (unfocusZipperList!282 zl!343)))))

(assert (=> d!1688636 (forall!14264 (unfocusZipperList!282 zl!343) lambda!263549)))

(assert (=> d!1688636 (= (generalisedUnion!769 (unfocusZipperList!282 zl!343)) lt!2148361)))

(declare-fun b!5240326 () Bool)

(declare-fun e!3260686 () Bool)

(declare-fun e!3260687 () Bool)

(assert (=> b!5240326 (= e!3260686 e!3260687)))

(declare-fun c!905683 () Bool)

(assert (=> b!5240326 (= c!905683 (isEmpty!32625 (tail!10327 (unfocusZipperList!282 zl!343))))))

(declare-fun b!5240327 () Bool)

(declare-fun isEmptyLang!800 (Regex!14840) Bool)

(assert (=> b!5240327 (= e!3260686 (isEmptyLang!800 lt!2148361))))

(declare-fun b!5240328 () Bool)

(assert (=> b!5240328 (= e!3260687 (= lt!2148361 (head!11230 (unfocusZipperList!282 zl!343))))))

(declare-fun b!5240329 () Bool)

(assert (=> b!5240329 (= e!3260685 (isEmpty!32625 (t!374000 (unfocusZipperList!282 zl!343))))))

(declare-fun b!5240330 () Bool)

(declare-fun e!3260683 () Regex!14840)

(assert (=> b!5240330 (= e!3260683 (Union!14840 (h!67143 (unfocusZipperList!282 zl!343)) (generalisedUnion!769 (t!374000 (unfocusZipperList!282 zl!343)))))))

(declare-fun b!5240331 () Bool)

(assert (=> b!5240331 (= e!3260683 EmptyLang!14840)))

(declare-fun b!5240332 () Bool)

(assert (=> b!5240332 (= e!3260688 e!3260686)))

(declare-fun c!905682 () Bool)

(assert (=> b!5240332 (= c!905682 (isEmpty!32625 (unfocusZipperList!282 zl!343)))))

(declare-fun b!5240333 () Bool)

(assert (=> b!5240333 (= e!3260684 e!3260683)))

(declare-fun c!905684 () Bool)

(assert (=> b!5240333 (= c!905684 (is-Cons!60695 (unfocusZipperList!282 zl!343)))))

(declare-fun b!5240334 () Bool)

(declare-fun isUnion!232 (Regex!14840) Bool)

(assert (=> b!5240334 (= e!3260687 (isUnion!232 lt!2148361))))

(assert (= (and d!1688636 res!2224200) b!5240329))

(assert (= (and d!1688636 c!905681) b!5240325))

(assert (= (and d!1688636 (not c!905681)) b!5240333))

(assert (= (and b!5240333 c!905684) b!5240330))

(assert (= (and b!5240333 (not c!905684)) b!5240331))

(assert (= (and d!1688636 res!2224199) b!5240332))

(assert (= (and b!5240332 c!905682) b!5240327))

(assert (= (and b!5240332 (not c!905682)) b!5240326))

(assert (= (and b!5240326 c!905683) b!5240328))

(assert (= (and b!5240326 (not c!905683)) b!5240334))

(assert (=> b!5240326 m!6284498))

(declare-fun m!6284962 () Bool)

(assert (=> b!5240326 m!6284962))

(assert (=> b!5240326 m!6284962))

(declare-fun m!6284964 () Bool)

(assert (=> b!5240326 m!6284964))

(declare-fun m!6284966 () Bool)

(assert (=> b!5240329 m!6284966))

(assert (=> b!5240328 m!6284498))

(declare-fun m!6284968 () Bool)

(assert (=> b!5240328 m!6284968))

(assert (=> b!5240332 m!6284498))

(declare-fun m!6284970 () Bool)

(assert (=> b!5240332 m!6284970))

(declare-fun m!6284972 () Bool)

(assert (=> d!1688636 m!6284972))

(assert (=> d!1688636 m!6284498))

(declare-fun m!6284974 () Bool)

(assert (=> d!1688636 m!6284974))

(declare-fun m!6284976 () Bool)

(assert (=> b!5240334 m!6284976))

(declare-fun m!6284978 () Bool)

(assert (=> b!5240327 m!6284978))

(declare-fun m!6284980 () Bool)

(assert (=> b!5240330 m!6284980))

(assert (=> b!5239835 d!1688636))

(declare-fun bs!1215866 () Bool)

(declare-fun d!1688638 () Bool)

(assert (= bs!1215866 (and d!1688638 d!1688620)))

(declare-fun lambda!263552 () Int)

(assert (=> bs!1215866 (= lambda!263552 lambda!263545)))

(declare-fun bs!1215867 () Bool)

(assert (= bs!1215867 (and d!1688638 d!1688618)))

(assert (=> bs!1215867 (= lambda!263552 lambda!263544)))

(declare-fun bs!1215868 () Bool)

(assert (= bs!1215868 (and d!1688638 b!5239860)))

(assert (=> bs!1215868 (= lambda!263552 lambda!263509)))

(declare-fun bs!1215869 () Bool)

(assert (= bs!1215869 (and d!1688638 d!1688624)))

(assert (=> bs!1215869 (= lambda!263552 lambda!263546)))

(declare-fun bs!1215870 () Bool)

(assert (= bs!1215870 (and d!1688638 d!1688590)))

(assert (=> bs!1215870 (= lambda!263552 lambda!263539)))

(declare-fun bs!1215871 () Bool)

(assert (= bs!1215871 (and d!1688638 d!1688588)))

(assert (=> bs!1215871 (= lambda!263552 lambda!263538)))

(declare-fun bs!1215872 () Bool)

(assert (= bs!1215872 (and d!1688638 d!1688636)))

(assert (=> bs!1215872 (= lambda!263552 lambda!263549)))

(declare-fun lt!2148364 () List!60819)

(assert (=> d!1688638 (forall!14264 lt!2148364 lambda!263552)))

(declare-fun e!3260691 () List!60819)

(assert (=> d!1688638 (= lt!2148364 e!3260691)))

(declare-fun c!905687 () Bool)

(assert (=> d!1688638 (= c!905687 (is-Cons!60696 zl!343))))

(assert (=> d!1688638 (= (unfocusZipperList!282 zl!343) lt!2148364)))

(declare-fun b!5240339 () Bool)

(assert (=> b!5240339 (= e!3260691 (Cons!60695 (generalisedConcat!509 (exprs!4724 (h!67144 zl!343))) (unfocusZipperList!282 (t!374001 zl!343))))))

(declare-fun b!5240340 () Bool)

(assert (=> b!5240340 (= e!3260691 Nil!60695)))

(assert (= (and d!1688638 c!905687) b!5240339))

(assert (= (and d!1688638 (not c!905687)) b!5240340))

(declare-fun m!6284982 () Bool)

(assert (=> d!1688638 m!6284982))

(assert (=> b!5240339 m!6284494))

(declare-fun m!6284984 () Bool)

(assert (=> b!5240339 m!6284984))

(assert (=> b!5239835 d!1688638))

(declare-fun d!1688640 () Bool)

(declare-fun lt!2148367 () Regex!14840)

(assert (=> d!1688640 (validRegex!6576 lt!2148367)))

(assert (=> d!1688640 (= lt!2148367 (generalisedUnion!769 (unfocusZipperList!282 zl!343)))))

(assert (=> d!1688640 (= (unfocusZipper!582 zl!343) lt!2148367)))

(declare-fun bs!1215873 () Bool)

(assert (= bs!1215873 d!1688640))

(declare-fun m!6284986 () Bool)

(assert (=> bs!1215873 m!6284986))

(assert (=> bs!1215873 m!6284498))

(assert (=> bs!1215873 m!6284498))

(assert (=> bs!1215873 m!6284500))

(assert (=> b!5239832 d!1688640))

(declare-fun d!1688642 () Bool)

(declare-fun choose!39003 ((Set Context!8448) Int) (Set Context!8448))

(assert (=> d!1688642 (= (flatMap!567 z!1189 lambda!263508) (choose!39003 z!1189 lambda!263508))))

(declare-fun bs!1215874 () Bool)

(assert (= bs!1215874 d!1688642))

(declare-fun m!6284988 () Bool)

(assert (=> bs!1215874 m!6284988))

(assert (=> b!5239854 d!1688642))

(declare-fun d!1688644 () Bool)

(declare-fun nullableFct!1407 (Regex!14840) Bool)

(assert (=> d!1688644 (= (nullable!5009 (h!67143 (exprs!4724 (h!67144 zl!343)))) (nullableFct!1407 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun bs!1215875 () Bool)

(assert (= bs!1215875 d!1688644))

(declare-fun m!6284990 () Bool)

(assert (=> bs!1215875 m!6284990))

(assert (=> b!5239854 d!1688644))

(declare-fun bm!370926 () Bool)

(declare-fun call!370931 () (Set Context!8448))

(assert (=> bm!370926 (= call!370931 (derivationStepZipperDown!288 (h!67143 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343))))))) (Context!8449 (t!374000 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343)))))))) (h!67145 s!2326)))))

(declare-fun b!5240351 () Bool)

(declare-fun e!3260700 () Bool)

(assert (=> b!5240351 (= e!3260700 (nullable!5009 (h!67143 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343)))))))))))

(declare-fun b!5240352 () Bool)

(declare-fun e!3260698 () (Set Context!8448))

(declare-fun e!3260699 () (Set Context!8448))

(assert (=> b!5240352 (= e!3260698 e!3260699)))

(declare-fun c!905692 () Bool)

(assert (=> b!5240352 (= c!905692 (is-Cons!60695 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343))))))))))

(declare-fun b!5240354 () Bool)

(assert (=> b!5240354 (= e!3260699 call!370931)))

(declare-fun b!5240355 () Bool)

(assert (=> b!5240355 (= e!3260698 (set.union call!370931 (derivationStepZipperUp!212 (Context!8449 (t!374000 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343)))))))) (h!67145 s!2326))))))

(declare-fun b!5240353 () Bool)

(assert (=> b!5240353 (= e!3260699 (as set.empty (Set Context!8448)))))

(declare-fun d!1688646 () Bool)

(declare-fun c!905693 () Bool)

(assert (=> d!1688646 (= c!905693 e!3260700)))

(declare-fun res!2224203 () Bool)

(assert (=> d!1688646 (=> (not res!2224203) (not e!3260700))))

(assert (=> d!1688646 (= res!2224203 (is-Cons!60695 (exprs!4724 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343))))))))))

(assert (=> d!1688646 (= (derivationStepZipperUp!212 (Context!8449 (Cons!60695 (h!67143 (exprs!4724 (h!67144 zl!343))) (t!374000 (exprs!4724 (h!67144 zl!343))))) (h!67145 s!2326)) e!3260698)))

(assert (= (and d!1688646 res!2224203) b!5240351))

(assert (= (and d!1688646 c!905693) b!5240355))

(assert (= (and d!1688646 (not c!905693)) b!5240352))

(assert (= (and b!5240352 c!905692) b!5240354))

(assert (= (and b!5240352 (not c!905692)) b!5240353))

(assert (= (or b!5240355 b!5240354) bm!370926))

(declare-fun m!6284992 () Bool)

(assert (=> bm!370926 m!6284992))

(declare-fun m!6284994 () Bool)

(assert (=> b!5240351 m!6284994))

(declare-fun m!6284996 () Bool)

(assert (=> b!5240355 m!6284996))

(assert (=> b!5239854 d!1688646))

(declare-fun bm!370927 () Bool)

(declare-fun call!370932 () (Set Context!8448))

(assert (=> bm!370927 (= call!370932 (derivationStepZipperDown!288 (h!67143 (exprs!4724 lt!2148160)) (Context!8449 (t!374000 (exprs!4724 lt!2148160))) (h!67145 s!2326)))))

(declare-fun b!5240356 () Bool)

(declare-fun e!3260703 () Bool)

(assert (=> b!5240356 (= e!3260703 (nullable!5009 (h!67143 (exprs!4724 lt!2148160))))))

(declare-fun b!5240357 () Bool)

(declare-fun e!3260701 () (Set Context!8448))

(declare-fun e!3260702 () (Set Context!8448))

(assert (=> b!5240357 (= e!3260701 e!3260702)))

(declare-fun c!905694 () Bool)

(assert (=> b!5240357 (= c!905694 (is-Cons!60695 (exprs!4724 lt!2148160)))))

(declare-fun b!5240359 () Bool)

(assert (=> b!5240359 (= e!3260702 call!370932)))

(declare-fun b!5240360 () Bool)

(assert (=> b!5240360 (= e!3260701 (set.union call!370932 (derivationStepZipperUp!212 (Context!8449 (t!374000 (exprs!4724 lt!2148160))) (h!67145 s!2326))))))

(declare-fun b!5240358 () Bool)

(assert (=> b!5240358 (= e!3260702 (as set.empty (Set Context!8448)))))

(declare-fun d!1688648 () Bool)

(declare-fun c!905695 () Bool)

(assert (=> d!1688648 (= c!905695 e!3260703)))

(declare-fun res!2224204 () Bool)

(assert (=> d!1688648 (=> (not res!2224204) (not e!3260703))))

(assert (=> d!1688648 (= res!2224204 (is-Cons!60695 (exprs!4724 lt!2148160)))))

(assert (=> d!1688648 (= (derivationStepZipperUp!212 lt!2148160 (h!67145 s!2326)) e!3260701)))

(assert (= (and d!1688648 res!2224204) b!5240356))

(assert (= (and d!1688648 c!905695) b!5240360))

(assert (= (and d!1688648 (not c!905695)) b!5240357))

(assert (= (and b!5240357 c!905694) b!5240359))

(assert (= (and b!5240357 (not c!905694)) b!5240358))

(assert (= (or b!5240360 b!5240359) bm!370927))

(declare-fun m!6284998 () Bool)

(assert (=> bm!370927 m!6284998))

(declare-fun m!6285000 () Bool)

(assert (=> b!5240356 m!6285000))

(declare-fun m!6285002 () Bool)

(assert (=> b!5240360 m!6285002))

(assert (=> b!5239854 d!1688648))

(declare-fun bm!370928 () Bool)

(declare-fun call!370937 () (Set Context!8448))

(declare-fun call!370934 () (Set Context!8448))

(assert (=> bm!370928 (= call!370937 call!370934)))

(declare-fun d!1688650 () Bool)

(declare-fun c!905700 () Bool)

(assert (=> d!1688650 (= c!905700 (and (is-ElementMatch!14840 (h!67143 (exprs!4724 (h!67144 zl!343)))) (= (c!905560 (h!67143 (exprs!4724 (h!67144 zl!343)))) (h!67145 s!2326))))))

(declare-fun e!3260709 () (Set Context!8448))

(assert (=> d!1688650 (= (derivationStepZipperDown!288 (h!67143 (exprs!4724 (h!67144 zl!343))) lt!2148160 (h!67145 s!2326)) e!3260709)))

(declare-fun b!5240361 () Bool)

(declare-fun c!905698 () Bool)

(assert (=> b!5240361 (= c!905698 (is-Star!14840 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun e!3260707 () (Set Context!8448))

(declare-fun e!3260705 () (Set Context!8448))

(assert (=> b!5240361 (= e!3260707 e!3260705)))

(declare-fun c!905696 () Bool)

(declare-fun c!905697 () Bool)

(declare-fun call!370938 () List!60819)

(declare-fun bm!370929 () Bool)

(assert (=> bm!370929 (= call!370938 ($colon$colon!1305 (exprs!4724 lt!2148160) (ite (or c!905697 c!905696) (regTwo!30192 (h!67143 (exprs!4724 (h!67144 zl!343)))) (h!67143 (exprs!4724 (h!67144 zl!343))))))))

(declare-fun b!5240362 () Bool)

(declare-fun call!370936 () (Set Context!8448))

(assert (=> b!5240362 (= e!3260705 call!370936)))

(declare-fun b!5240363 () Bool)

(declare-fun e!3260704 () (Set Context!8448))

(declare-fun call!370933 () (Set Context!8448))

(assert (=> b!5240363 (= e!3260704 (set.union call!370934 call!370933))))

(declare-fun b!5240364 () Bool)

(declare-fun e!3260706 () (Set Context!8448))

(assert (=> b!5240364 (= e!3260706 e!3260707)))

(assert (=> b!5240364 (= c!905696 (is-Concat!23685 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5240365 () Bool)

(assert (=> b!5240365 (= e!3260705 (as set.empty (Set Context!8448)))))

(declare-fun b!5240366 () Bool)

(declare-fun e!3260708 () Bool)

(assert (=> b!5240366 (= c!905697 e!3260708)))

(declare-fun res!2224205 () Bool)

(assert (=> b!5240366 (=> (not res!2224205) (not e!3260708))))

(assert (=> b!5240366 (= res!2224205 (is-Concat!23685 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(assert (=> b!5240366 (= e!3260704 e!3260706)))

(declare-fun bm!370930 () Bool)

(declare-fun call!370935 () List!60819)

(assert (=> bm!370930 (= call!370935 call!370938)))

(declare-fun b!5240367 () Bool)

(assert (=> b!5240367 (= e!3260709 (set.insert lt!2148160 (as set.empty (Set Context!8448))))))

(declare-fun c!905699 () Bool)

(declare-fun bm!370931 () Bool)

(assert (=> bm!370931 (= call!370934 (derivationStepZipperDown!288 (ite c!905699 (regOne!30193 (h!67143 (exprs!4724 (h!67144 zl!343)))) (ite c!905697 (regTwo!30192 (h!67143 (exprs!4724 (h!67144 zl!343)))) (ite c!905696 (regOne!30192 (h!67143 (exprs!4724 (h!67144 zl!343)))) (reg!15169 (h!67143 (exprs!4724 (h!67144 zl!343))))))) (ite (or c!905699 c!905697) lt!2148160 (Context!8449 call!370935)) (h!67145 s!2326)))))

(declare-fun b!5240368 () Bool)

(assert (=> b!5240368 (= e!3260708 (nullable!5009 (regOne!30192 (h!67143 (exprs!4724 (h!67144 zl!343))))))))

(declare-fun bm!370932 () Bool)

(assert (=> bm!370932 (= call!370936 call!370937)))

(declare-fun b!5240369 () Bool)

(assert (=> b!5240369 (= e!3260709 e!3260704)))

(assert (=> b!5240369 (= c!905699 (is-Union!14840 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5240370 () Bool)

(assert (=> b!5240370 (= e!3260707 call!370936)))

(declare-fun bm!370933 () Bool)

(assert (=> bm!370933 (= call!370933 (derivationStepZipperDown!288 (ite c!905699 (regTwo!30193 (h!67143 (exprs!4724 (h!67144 zl!343)))) (regOne!30192 (h!67143 (exprs!4724 (h!67144 zl!343))))) (ite c!905699 lt!2148160 (Context!8449 call!370938)) (h!67145 s!2326)))))

(declare-fun b!5240371 () Bool)

(assert (=> b!5240371 (= e!3260706 (set.union call!370933 call!370937))))

(assert (= (and d!1688650 c!905700) b!5240367))

(assert (= (and d!1688650 (not c!905700)) b!5240369))

(assert (= (and b!5240369 c!905699) b!5240363))

(assert (= (and b!5240369 (not c!905699)) b!5240366))

(assert (= (and b!5240366 res!2224205) b!5240368))

(assert (= (and b!5240366 c!905697) b!5240371))

(assert (= (and b!5240366 (not c!905697)) b!5240364))

(assert (= (and b!5240364 c!905696) b!5240370))

(assert (= (and b!5240364 (not c!905696)) b!5240361))

(assert (= (and b!5240361 c!905698) b!5240362))

(assert (= (and b!5240361 (not c!905698)) b!5240365))

(assert (= (or b!5240370 b!5240362) bm!370930))

(assert (= (or b!5240370 b!5240362) bm!370932))

(assert (= (or b!5240371 bm!370930) bm!370929))

(assert (= (or b!5240371 bm!370932) bm!370928))

(assert (= (or b!5240363 b!5240371) bm!370933))

(assert (= (or b!5240363 bm!370928) bm!370931))

(assert (=> b!5240367 m!6284874))

(declare-fun m!6285004 () Bool)

(assert (=> bm!370933 m!6285004))

(declare-fun m!6285006 () Bool)

(assert (=> b!5240368 m!6285006))

(declare-fun m!6285008 () Bool)

(assert (=> bm!370929 m!6285008))

(declare-fun m!6285010 () Bool)

(assert (=> bm!370931 m!6285010))

(assert (=> b!5239854 d!1688650))

(declare-fun d!1688652 () Bool)

(declare-fun dynLambda!23984 (Int Context!8448) (Set Context!8448))

(assert (=> d!1688652 (= (flatMap!567 z!1189 lambda!263508) (dynLambda!23984 lambda!263508 (h!67144 zl!343)))))

(declare-fun lt!2148370 () Unit!152734)

(declare-fun choose!39004 ((Set Context!8448) Context!8448 Int) Unit!152734)

(assert (=> d!1688652 (= lt!2148370 (choose!39004 z!1189 (h!67144 zl!343) lambda!263508))))

(assert (=> d!1688652 (= z!1189 (set.insert (h!67144 zl!343) (as set.empty (Set Context!8448))))))

(assert (=> d!1688652 (= (lemmaFlatMapOnSingletonSet!99 z!1189 (h!67144 zl!343) lambda!263508) lt!2148370)))

(declare-fun b_lambda!202511 () Bool)

(assert (=> (not b_lambda!202511) (not d!1688652)))

(declare-fun bs!1215876 () Bool)

(assert (= bs!1215876 d!1688652))

(assert (=> bs!1215876 m!6284484))

(declare-fun m!6285012 () Bool)

(assert (=> bs!1215876 m!6285012))

(declare-fun m!6285014 () Bool)

(assert (=> bs!1215876 m!6285014))

(declare-fun m!6285016 () Bool)

(assert (=> bs!1215876 m!6285016))

(assert (=> b!5239854 d!1688652))

(declare-fun bm!370934 () Bool)

(declare-fun call!370939 () (Set Context!8448))

(assert (=> bm!370934 (= call!370939 (derivationStepZipperDown!288 (h!67143 (exprs!4724 (h!67144 zl!343))) (Context!8449 (t!374000 (exprs!4724 (h!67144 zl!343)))) (h!67145 s!2326)))))

(declare-fun b!5240372 () Bool)

(declare-fun e!3260712 () Bool)

(assert (=> b!5240372 (= e!3260712 (nullable!5009 (h!67143 (exprs!4724 (h!67144 zl!343)))))))

(declare-fun b!5240373 () Bool)

(declare-fun e!3260710 () (Set Context!8448))

(declare-fun e!3260711 () (Set Context!8448))

(assert (=> b!5240373 (= e!3260710 e!3260711)))

(declare-fun c!905701 () Bool)

(assert (=> b!5240373 (= c!905701 (is-Cons!60695 (exprs!4724 (h!67144 zl!343))))))

(declare-fun b!5240375 () Bool)

(assert (=> b!5240375 (= e!3260711 call!370939)))

(declare-fun b!5240376 () Bool)

(assert (=> b!5240376 (= e!3260710 (set.union call!370939 (derivationStepZipperUp!212 (Context!8449 (t!374000 (exprs!4724 (h!67144 zl!343)))) (h!67145 s!2326))))))

(declare-fun b!5240374 () Bool)

(assert (=> b!5240374 (= e!3260711 (as set.empty (Set Context!8448)))))

(declare-fun d!1688654 () Bool)

(declare-fun c!905702 () Bool)

(assert (=> d!1688654 (= c!905702 e!3260712)))

(declare-fun res!2224206 () Bool)

(assert (=> d!1688654 (=> (not res!2224206) (not e!3260712))))

(assert (=> d!1688654 (= res!2224206 (is-Cons!60695 (exprs!4724 (h!67144 zl!343))))))

(assert (=> d!1688654 (= (derivationStepZipperUp!212 (h!67144 zl!343) (h!67145 s!2326)) e!3260710)))

(assert (= (and d!1688654 res!2224206) b!5240372))

(assert (= (and d!1688654 c!905702) b!5240376))

(assert (= (and d!1688654 (not c!905702)) b!5240373))

(assert (= (and b!5240373 c!905701) b!5240375))

(assert (= (and b!5240373 (not c!905701)) b!5240374))

(assert (= (or b!5240376 b!5240375) bm!370934))

(declare-fun m!6285018 () Bool)

(assert (=> bm!370934 m!6285018))

(assert (=> b!5240372 m!6284486))

(declare-fun m!6285020 () Bool)

(assert (=> b!5240376 m!6285020))

(assert (=> b!5239854 d!1688654))

(declare-fun d!1688656 () Bool)

(declare-fun lt!2148371 () Int)

(assert (=> d!1688656 (>= lt!2148371 0)))

(declare-fun e!3260713 () Int)

(assert (=> d!1688656 (= lt!2148371 e!3260713)))

(declare-fun c!905703 () Bool)

(assert (=> d!1688656 (= c!905703 (is-Cons!60696 lt!2148147))))

(assert (=> d!1688656 (= (zipperDepthTotal!21 lt!2148147) lt!2148371)))

(declare-fun b!5240377 () Bool)

(assert (=> b!5240377 (= e!3260713 (+ (contextDepthTotal!13 (h!67144 lt!2148147)) (zipperDepthTotal!21 (t!374001 lt!2148147))))))

(declare-fun b!5240378 () Bool)

(assert (=> b!5240378 (= e!3260713 0)))

(assert (= (and d!1688656 c!905703) b!5240377))

(assert (= (and d!1688656 (not c!905703)) b!5240378))

(declare-fun m!6285022 () Bool)

(assert (=> b!5240377 m!6285022))

(declare-fun m!6285024 () Bool)

(assert (=> b!5240377 m!6285024))

(assert (=> b!5239852 d!1688656))

(declare-fun d!1688658 () Bool)

(assert (=> d!1688658 (= (flatMap!567 lt!2148151 lambda!263508) (dynLambda!23984 lambda!263508 lt!2148167))))

(declare-fun lt!2148372 () Unit!152734)

(assert (=> d!1688658 (= lt!2148372 (choose!39004 lt!2148151 lt!2148167 lambda!263508))))

(assert (=> d!1688658 (= lt!2148151 (set.insert lt!2148167 (as set.empty (Set Context!8448))))))

(assert (=> d!1688658 (= (lemmaFlatMapOnSingletonSet!99 lt!2148151 lt!2148167 lambda!263508) lt!2148372)))

(declare-fun b_lambda!202513 () Bool)

(assert (=> (not b_lambda!202513) (not d!1688658)))

(declare-fun bs!1215877 () Bool)

(assert (= bs!1215877 d!1688658))

(assert (=> bs!1215877 m!6284534))

(declare-fun m!6285026 () Bool)

(assert (=> bs!1215877 m!6285026))

(declare-fun m!6285028 () Bool)

(assert (=> bs!1215877 m!6285028))

(assert (=> bs!1215877 m!6284536))

(assert (=> b!5239831 d!1688658))

(declare-fun d!1688660 () Bool)

(assert (=> d!1688660 (= (flatMap!567 lt!2148151 lambda!263508) (choose!39003 lt!2148151 lambda!263508))))

(declare-fun bs!1215878 () Bool)

(assert (= bs!1215878 d!1688660))

(declare-fun m!6285030 () Bool)

(assert (=> bs!1215878 m!6285030))

(assert (=> b!5239831 d!1688660))

(declare-fun bm!370935 () Bool)

(declare-fun call!370940 () (Set Context!8448))

(assert (=> bm!370935 (= call!370940 (derivationStepZipperDown!288 (h!67143 (exprs!4724 lt!2148167)) (Context!8449 (t!374000 (exprs!4724 lt!2148167))) (h!67145 s!2326)))))

(declare-fun b!5240379 () Bool)

(declare-fun e!3260716 () Bool)

(assert (=> b!5240379 (= e!3260716 (nullable!5009 (h!67143 (exprs!4724 lt!2148167))))))

(declare-fun b!5240380 () Bool)

(declare-fun e!3260714 () (Set Context!8448))

(declare-fun e!3260715 () (Set Context!8448))

(assert (=> b!5240380 (= e!3260714 e!3260715)))

(declare-fun c!905704 () Bool)

(assert (=> b!5240380 (= c!905704 (is-Cons!60695 (exprs!4724 lt!2148167)))))

(declare-fun b!5240382 () Bool)

(assert (=> b!5240382 (= e!3260715 call!370940)))

(declare-fun b!5240383 () Bool)

(assert (=> b!5240383 (= e!3260714 (set.union call!370940 (derivationStepZipperUp!212 (Context!8449 (t!374000 (exprs!4724 lt!2148167))) (h!67145 s!2326))))))

(declare-fun b!5240381 () Bool)

(assert (=> b!5240381 (= e!3260715 (as set.empty (Set Context!8448)))))

(declare-fun d!1688662 () Bool)

(declare-fun c!905705 () Bool)

(assert (=> d!1688662 (= c!905705 e!3260716)))

(declare-fun res!2224207 () Bool)

(assert (=> d!1688662 (=> (not res!2224207) (not e!3260716))))

(assert (=> d!1688662 (= res!2224207 (is-Cons!60695 (exprs!4724 lt!2148167)))))

(assert (=> d!1688662 (= (derivationStepZipperUp!212 lt!2148167 (h!67145 s!2326)) e!3260714)))

(assert (= (and d!1688662 res!2224207) b!5240379))

(assert (= (and d!1688662 c!905705) b!5240383))

(assert (= (and d!1688662 (not c!905705)) b!5240380))

(assert (= (and b!5240380 c!905704) b!5240382))

(assert (= (and b!5240380 (not c!905704)) b!5240381))

(assert (= (or b!5240383 b!5240382) bm!370935))

(declare-fun m!6285032 () Bool)

(assert (=> bm!370935 m!6285032))

(declare-fun m!6285034 () Bool)

(assert (=> b!5240379 m!6285034))

(declare-fun m!6285036 () Bool)

(assert (=> b!5240383 m!6285036))

(assert (=> b!5239831 d!1688662))

(declare-fun d!1688664 () Bool)

(declare-fun c!905706 () Bool)

(assert (=> d!1688664 (= c!905706 (isEmpty!32629 s!2326))))

(declare-fun e!3260717 () Bool)

(assert (=> d!1688664 (= (matchZipper!1084 z!1189 s!2326) e!3260717)))

(declare-fun b!5240384 () Bool)

(assert (=> b!5240384 (= e!3260717 (nullableZipper!1255 z!1189))))

(declare-fun b!5240385 () Bool)

(assert (=> b!5240385 (= e!3260717 (matchZipper!1084 (derivationStepZipper!1099 z!1189 (head!11229 s!2326)) (tail!10326 s!2326)))))

(assert (= (and d!1688664 c!905706) b!5240384))

(assert (= (and d!1688664 (not c!905706)) b!5240385))

(assert (=> d!1688664 m!6284770))

(declare-fun m!6285038 () Bool)

(assert (=> b!5240384 m!6285038))

(assert (=> b!5240385 m!6284780))

(assert (=> b!5240385 m!6284780))

(declare-fun m!6285040 () Bool)

(assert (=> b!5240385 m!6285040))

(assert (=> b!5240385 m!6284782))

(assert (=> b!5240385 m!6285040))

(assert (=> b!5240385 m!6284782))

(declare-fun m!6285042 () Bool)

(assert (=> b!5240385 m!6285042))

(assert (=> b!5239831 d!1688664))

(declare-fun bm!370936 () Bool)

(declare-fun call!370941 () (Set Context!8448))

(assert (=> bm!370936 (= call!370941 (derivationStepZipperDown!288 (h!67143 (exprs!4724 lt!2148173)) (Context!8449 (t!374000 (exprs!4724 lt!2148173))) (h!67145 s!2326)))))

(declare-fun b!5240386 () Bool)

(declare-fun e!3260720 () Bool)

(assert (=> b!5240386 (= e!3260720 (nullable!5009 (h!67143 (exprs!4724 lt!2148173))))))

(declare-fun b!5240387 () Bool)

(declare-fun e!3260718 () (Set Context!8448))

(declare-fun e!3260719 () (Set Context!8448))

(assert (=> b!5240387 (= e!3260718 e!3260719)))

(declare-fun c!905707 () Bool)

(assert (=> b!5240387 (= c!905707 (is-Cons!60695 (exprs!4724 lt!2148173)))))

(declare-fun b!5240389 () Bool)

(assert (=> b!5240389 (= e!3260719 call!370941)))

(declare-fun b!5240390 () Bool)

(assert (=> b!5240390 (= e!3260718 (set.union call!370941 (derivationStepZipperUp!212 (Context!8449 (t!374000 (exprs!4724 lt!2148173))) (h!67145 s!2326))))))

(declare-fun b!5240388 () Bool)

(assert (=> b!5240388 (= e!3260719 (as set.empty (Set Context!8448)))))

(declare-fun d!1688666 () Bool)

(declare-fun c!905708 () Bool)

(assert (=> d!1688666 (= c!905708 e!3260720)))

(declare-fun res!2224208 () Bool)

(assert (=> d!1688666 (=> (not res!2224208) (not e!3260720))))

(assert (=> d!1688666 (= res!2224208 (is-Cons!60695 (exprs!4724 lt!2148173)))))

(assert (=> d!1688666 (= (derivationStepZipperUp!212 lt!2148173 (h!67145 s!2326)) e!3260718)))

(assert (= (and d!1688666 res!2224208) b!5240386))

(assert (= (and d!1688666 c!905708) b!5240390))

(assert (= (and d!1688666 (not c!905708)) b!5240387))

(assert (= (and b!5240387 c!905707) b!5240389))

(assert (= (and b!5240387 (not c!905707)) b!5240388))

(assert (= (or b!5240390 b!5240389) bm!370936))

(declare-fun m!6285044 () Bool)

(assert (=> bm!370936 m!6285044))

(declare-fun m!6285046 () Bool)

(assert (=> b!5240386 m!6285046))

(declare-fun m!6285048 () Bool)

(assert (=> b!5240390 m!6285048))

(assert (=> b!5239831 d!1688666))

(declare-fun d!1688668 () Bool)

(assert (=> d!1688668 (= (flatMap!567 lt!2148168 lambda!263508) (choose!39003 lt!2148168 lambda!263508))))

(declare-fun bs!1215879 () Bool)

(assert (= bs!1215879 d!1688668))

(declare-fun m!6285050 () Bool)

(assert (=> bs!1215879 m!6285050))

(assert (=> b!5239831 d!1688668))

(declare-fun d!1688670 () Bool)

(declare-fun c!905709 () Bool)

(assert (=> d!1688670 (= c!905709 (isEmpty!32629 s!2326))))

(declare-fun e!3260721 () Bool)

(assert (=> d!1688670 (= (matchZipper!1084 lt!2148168 s!2326) e!3260721)))

(declare-fun b!5240391 () Bool)

(assert (=> b!5240391 (= e!3260721 (nullableZipper!1255 lt!2148168))))

(declare-fun b!5240392 () Bool)

(assert (=> b!5240392 (= e!3260721 (matchZipper!1084 (derivationStepZipper!1099 lt!2148168 (head!11229 s!2326)) (tail!10326 s!2326)))))

(assert (= (and d!1688670 c!905709) b!5240391))

(assert (= (and d!1688670 (not c!905709)) b!5240392))

(assert (=> d!1688670 m!6284770))

(declare-fun m!6285052 () Bool)

(assert (=> b!5240391 m!6285052))

(assert (=> b!5240392 m!6284780))

(assert (=> b!5240392 m!6284780))

(declare-fun m!6285054 () Bool)

(assert (=> b!5240392 m!6285054))

(assert (=> b!5240392 m!6284782))

(assert (=> b!5240392 m!6285054))

(assert (=> b!5240392 m!6284782))

(declare-fun m!6285056 () Bool)

(assert (=> b!5240392 m!6285056))

(assert (=> b!5239831 d!1688670))

(declare-fun d!1688672 () Bool)

(assert (=> d!1688672 (= (nullable!5009 (regOne!30193 (regOne!30192 r!7292))) (nullableFct!1407 (regOne!30193 (regOne!30192 r!7292))))))

(declare-fun bs!1215880 () Bool)

(assert (= bs!1215880 d!1688672))

(declare-fun m!6285058 () Bool)

(assert (=> bs!1215880 m!6285058))

(assert (=> b!5239831 d!1688672))

(declare-fun d!1688674 () Bool)

(assert (=> d!1688674 (= (nullable!5009 (regTwo!30193 (regOne!30192 r!7292))) (nullableFct!1407 (regTwo!30193 (regOne!30192 r!7292))))))

(declare-fun bs!1215881 () Bool)

(assert (= bs!1215881 d!1688674))

(declare-fun m!6285060 () Bool)

(assert (=> bs!1215881 m!6285060))

(assert (=> b!5239831 d!1688674))

(declare-fun d!1688676 () Bool)

(assert (=> d!1688676 (= (flatMap!567 lt!2148168 lambda!263508) (dynLambda!23984 lambda!263508 lt!2148173))))

(declare-fun lt!2148373 () Unit!152734)

(assert (=> d!1688676 (= lt!2148373 (choose!39004 lt!2148168 lt!2148173 lambda!263508))))

(assert (=> d!1688676 (= lt!2148168 (set.insert lt!2148173 (as set.empty (Set Context!8448))))))

(assert (=> d!1688676 (= (lemmaFlatMapOnSingletonSet!99 lt!2148168 lt!2148173 lambda!263508) lt!2148373)))

(declare-fun b_lambda!202515 () Bool)

(assert (=> (not b_lambda!202515) (not d!1688676)))

(declare-fun bs!1215882 () Bool)

(assert (= bs!1215882 d!1688676))

(assert (=> bs!1215882 m!6284526))

(declare-fun m!6285062 () Bool)

(assert (=> bs!1215882 m!6285062))

(declare-fun m!6285064 () Bool)

(assert (=> bs!1215882 m!6285064))

(assert (=> bs!1215882 m!6284524))

(assert (=> b!5239831 d!1688676))

(declare-fun d!1688678 () Bool)

(declare-fun e!3260724 () Bool)

(assert (=> d!1688678 e!3260724))

(declare-fun res!2224211 () Bool)

(assert (=> d!1688678 (=> (not res!2224211) (not e!3260724))))

(declare-fun lt!2148376 () List!60820)

(declare-fun noDuplicate!1211 (List!60820) Bool)

(assert (=> d!1688678 (= res!2224211 (noDuplicate!1211 lt!2148376))))

(declare-fun choose!39005 ((Set Context!8448)) List!60820)

(assert (=> d!1688678 (= lt!2148376 (choose!39005 z!1189))))

(assert (=> d!1688678 (= (toList!8624 z!1189) lt!2148376)))

(declare-fun b!5240395 () Bool)

(declare-fun content!10776 (List!60820) (Set Context!8448))

(assert (=> b!5240395 (= e!3260724 (= (content!10776 lt!2148376) z!1189))))

(assert (= (and d!1688678 res!2224211) b!5240395))

(declare-fun m!6285066 () Bool)

(assert (=> d!1688678 m!6285066))

(declare-fun m!6285068 () Bool)

(assert (=> d!1688678 m!6285068))

(declare-fun m!6285070 () Bool)

(assert (=> b!5240395 m!6285070))

(assert (=> b!5239830 d!1688678))

(declare-fun d!1688680 () Bool)

(declare-fun choose!39006 (Int) Bool)

(assert (=> d!1688680 (= (Exists!2021 lambda!263506) (choose!39006 lambda!263506))))

(declare-fun bs!1215883 () Bool)

(assert (= bs!1215883 d!1688680))

(declare-fun m!6285072 () Bool)

(assert (=> bs!1215883 m!6285072))

(assert (=> b!5239851 d!1688680))

(declare-fun d!1688682 () Bool)

(declare-fun e!3260739 () Bool)

(assert (=> d!1688682 e!3260739))

(declare-fun res!2224225 () Bool)

(assert (=> d!1688682 (=> res!2224225 e!3260739)))

(declare-fun e!3260736 () Bool)

(assert (=> d!1688682 (= res!2224225 e!3260736)))

(declare-fun res!2224223 () Bool)

(assert (=> d!1688682 (=> (not res!2224223) (not e!3260736))))

(declare-fun lt!2148383 () Option!14951)

(assert (=> d!1688682 (= res!2224223 (isDefined!11654 lt!2148383))))

(declare-fun e!3260737 () Option!14951)

(assert (=> d!1688682 (= lt!2148383 e!3260737)))

(declare-fun c!905714 () Bool)

(declare-fun e!3260738 () Bool)

(assert (=> d!1688682 (= c!905714 e!3260738)))

(declare-fun res!2224224 () Bool)

(assert (=> d!1688682 (=> (not res!2224224) (not e!3260738))))

(assert (=> d!1688682 (= res!2224224 (matchR!7025 (regOne!30192 r!7292) Nil!60697))))

(assert (=> d!1688682 (validRegex!6576 (regOne!30192 r!7292))))

(assert (=> d!1688682 (= (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) Nil!60697 s!2326 s!2326) lt!2148383)))

(declare-fun b!5240414 () Bool)

(assert (=> b!5240414 (= e!3260737 (Some!14950 (tuple2!64079 Nil!60697 s!2326)))))

(declare-fun b!5240415 () Bool)

(declare-fun e!3260735 () Option!14951)

(assert (=> b!5240415 (= e!3260737 e!3260735)))

(declare-fun c!905715 () Bool)

(assert (=> b!5240415 (= c!905715 (is-Nil!60697 s!2326))))

(declare-fun b!5240416 () Bool)

(declare-fun ++!13235 (List!60821 List!60821) List!60821)

(declare-fun get!20861 (Option!14951) tuple2!64078)

(assert (=> b!5240416 (= e!3260736 (= (++!13235 (_1!35342 (get!20861 lt!2148383)) (_2!35342 (get!20861 lt!2148383))) s!2326))))

(declare-fun b!5240417 () Bool)

(declare-fun res!2224226 () Bool)

(assert (=> b!5240417 (=> (not res!2224226) (not e!3260736))))

(assert (=> b!5240417 (= res!2224226 (matchR!7025 (regOne!30192 r!7292) (_1!35342 (get!20861 lt!2148383))))))

(declare-fun b!5240418 () Bool)

(assert (=> b!5240418 (= e!3260738 (matchR!7025 (regTwo!30192 r!7292) s!2326))))

(declare-fun b!5240419 () Bool)

(declare-fun lt!2148385 () Unit!152734)

(declare-fun lt!2148384 () Unit!152734)

(assert (=> b!5240419 (= lt!2148385 lt!2148384)))

(assert (=> b!5240419 (= (++!13235 (++!13235 Nil!60697 (Cons!60697 (h!67145 s!2326) Nil!60697)) (t!374002 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1650 (List!60821 C!29950 List!60821 List!60821) Unit!152734)

(assert (=> b!5240419 (= lt!2148384 (lemmaMoveElementToOtherListKeepsConcatEq!1650 Nil!60697 (h!67145 s!2326) (t!374002 s!2326) s!2326))))

(assert (=> b!5240419 (= e!3260735 (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) (++!13235 Nil!60697 (Cons!60697 (h!67145 s!2326) Nil!60697)) (t!374002 s!2326) s!2326))))

(declare-fun b!5240420 () Bool)

(assert (=> b!5240420 (= e!3260735 None!14950)))

(declare-fun b!5240421 () Bool)

(assert (=> b!5240421 (= e!3260739 (not (isDefined!11654 lt!2148383)))))

(declare-fun b!5240422 () Bool)

(declare-fun res!2224222 () Bool)

(assert (=> b!5240422 (=> (not res!2224222) (not e!3260736))))

(assert (=> b!5240422 (= res!2224222 (matchR!7025 (regTwo!30192 r!7292) (_2!35342 (get!20861 lt!2148383))))))

(assert (= (and d!1688682 res!2224224) b!5240418))

(assert (= (and d!1688682 c!905714) b!5240414))

(assert (= (and d!1688682 (not c!905714)) b!5240415))

(assert (= (and b!5240415 c!905715) b!5240420))

(assert (= (and b!5240415 (not c!905715)) b!5240419))

(assert (= (and d!1688682 res!2224223) b!5240417))

(assert (= (and b!5240417 res!2224226) b!5240422))

(assert (= (and b!5240422 res!2224222) b!5240416))

(assert (= (and d!1688682 (not res!2224225)) b!5240421))

(declare-fun m!6285074 () Bool)

(assert (=> d!1688682 m!6285074))

(declare-fun m!6285076 () Bool)

(assert (=> d!1688682 m!6285076))

(declare-fun m!6285078 () Bool)

(assert (=> d!1688682 m!6285078))

(assert (=> b!5240421 m!6285074))

(declare-fun m!6285080 () Bool)

(assert (=> b!5240418 m!6285080))

(declare-fun m!6285082 () Bool)

(assert (=> b!5240416 m!6285082))

(declare-fun m!6285084 () Bool)

(assert (=> b!5240416 m!6285084))

(assert (=> b!5240417 m!6285082))

(declare-fun m!6285086 () Bool)

(assert (=> b!5240417 m!6285086))

(declare-fun m!6285088 () Bool)

(assert (=> b!5240419 m!6285088))

(assert (=> b!5240419 m!6285088))

(declare-fun m!6285090 () Bool)

(assert (=> b!5240419 m!6285090))

(declare-fun m!6285092 () Bool)

(assert (=> b!5240419 m!6285092))

(assert (=> b!5240419 m!6285088))

(declare-fun m!6285094 () Bool)

(assert (=> b!5240419 m!6285094))

(assert (=> b!5240422 m!6285082))

(declare-fun m!6285096 () Bool)

(assert (=> b!5240422 m!6285096))

(assert (=> b!5239851 d!1688682))

(declare-fun d!1688684 () Bool)

(assert (=> d!1688684 (= (Exists!2021 lambda!263507) (choose!39006 lambda!263507))))

(declare-fun bs!1215884 () Bool)

(assert (= bs!1215884 d!1688684))

(declare-fun m!6285098 () Bool)

(assert (=> bs!1215884 m!6285098))

(assert (=> b!5239851 d!1688684))

(declare-fun bs!1215885 () Bool)

(declare-fun d!1688686 () Bool)

(assert (= bs!1215885 (and d!1688686 b!5240111)))

(declare-fun lambda!263555 () Int)

(assert (=> bs!1215885 (not (= lambda!263555 lambda!263535))))

(declare-fun bs!1215886 () Bool)

(assert (= bs!1215886 (and d!1688686 b!5240051)))

(assert (=> bs!1215886 (not (= lambda!263555 lambda!263532))))

(declare-fun bs!1215887 () Bool)

(assert (= bs!1215887 (and d!1688686 b!5240231)))

(assert (=> bs!1215887 (not (= lambda!263555 lambda!263541))))

(declare-fun bs!1215888 () Bool)

(assert (= bs!1215888 (and d!1688686 b!5239851)))

(assert (=> bs!1215888 (= lambda!263555 lambda!263506)))

(declare-fun bs!1215889 () Bool)

(assert (= bs!1215889 (and d!1688686 b!5240224)))

(assert (=> bs!1215889 (not (= lambda!263555 lambda!263540))))

(declare-fun bs!1215890 () Bool)

(assert (= bs!1215890 (and d!1688686 b!5240058)))

(assert (=> bs!1215890 (not (= lambda!263555 lambda!263533))))

(declare-fun bs!1215891 () Bool)

(assert (= bs!1215891 (and d!1688686 b!5240104)))

(assert (=> bs!1215891 (not (= lambda!263555 lambda!263534))))

(assert (=> bs!1215888 (not (= lambda!263555 lambda!263507))))

(assert (=> d!1688686 true))

(assert (=> d!1688686 true))

(assert (=> d!1688686 true))

(assert (=> d!1688686 (= (isDefined!11654 (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) Nil!60697 s!2326 s!2326)) (Exists!2021 lambda!263555))))

(declare-fun lt!2148388 () Unit!152734)

(declare-fun choose!39007 (Regex!14840 Regex!14840 List!60821) Unit!152734)

(assert (=> d!1688686 (= lt!2148388 (choose!39007 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326))))

(assert (=> d!1688686 (validRegex!6576 (regOne!30192 r!7292))))

(assert (=> d!1688686 (= (lemmaFindConcatSeparationEquivalentToExists!1129 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326) lt!2148388)))

(declare-fun bs!1215892 () Bool)

(assert (= bs!1215892 d!1688686))

(assert (=> bs!1215892 m!6284504))

(assert (=> bs!1215892 m!6284504))

(assert (=> bs!1215892 m!6284506))

(assert (=> bs!1215892 m!6285078))

(declare-fun m!6285100 () Bool)

(assert (=> bs!1215892 m!6285100))

(declare-fun m!6285102 () Bool)

(assert (=> bs!1215892 m!6285102))

(assert (=> b!5239851 d!1688686))

(declare-fun bs!1215893 () Bool)

(declare-fun d!1688688 () Bool)

(assert (= bs!1215893 (and d!1688688 b!5240111)))

(declare-fun lambda!263560 () Int)

(assert (=> bs!1215893 (not (= lambda!263560 lambda!263535))))

(declare-fun bs!1215894 () Bool)

(assert (= bs!1215894 (and d!1688688 b!5240051)))

(assert (=> bs!1215894 (not (= lambda!263560 lambda!263532))))

(declare-fun bs!1215895 () Bool)

(assert (= bs!1215895 (and d!1688688 b!5240231)))

(assert (=> bs!1215895 (not (= lambda!263560 lambda!263541))))

(declare-fun bs!1215896 () Bool)

(assert (= bs!1215896 (and d!1688688 b!5239851)))

(assert (=> bs!1215896 (= lambda!263560 lambda!263506)))

(declare-fun bs!1215897 () Bool)

(assert (= bs!1215897 (and d!1688688 b!5240224)))

(assert (=> bs!1215897 (not (= lambda!263560 lambda!263540))))

(declare-fun bs!1215898 () Bool)

(assert (= bs!1215898 (and d!1688688 d!1688686)))

(assert (=> bs!1215898 (= lambda!263560 lambda!263555)))

(declare-fun bs!1215899 () Bool)

(assert (= bs!1215899 (and d!1688688 b!5240058)))

(assert (=> bs!1215899 (not (= lambda!263560 lambda!263533))))

(declare-fun bs!1215900 () Bool)

(assert (= bs!1215900 (and d!1688688 b!5240104)))

(assert (=> bs!1215900 (not (= lambda!263560 lambda!263534))))

(assert (=> bs!1215896 (not (= lambda!263560 lambda!263507))))

(assert (=> d!1688688 true))

(assert (=> d!1688688 true))

(assert (=> d!1688688 true))

(declare-fun bs!1215901 () Bool)

(assert (= bs!1215901 d!1688688))

(declare-fun lambda!263561 () Int)

(assert (=> bs!1215901 (not (= lambda!263561 lambda!263560))))

(assert (=> bs!1215893 (= (and (= (regOne!30192 r!7292) (regOne!30192 lt!2148189)) (= (regTwo!30192 r!7292) (regTwo!30192 lt!2148189))) (= lambda!263561 lambda!263535))))

(assert (=> bs!1215894 (not (= lambda!263561 lambda!263532))))

(assert (=> bs!1215895 (= lambda!263561 lambda!263541)))

(assert (=> bs!1215896 (not (= lambda!263561 lambda!263506))))

(assert (=> bs!1215897 (not (= lambda!263561 lambda!263540))))

(assert (=> bs!1215898 (not (= lambda!263561 lambda!263555))))

(assert (=> bs!1215899 (= (and (= (regOne!30192 r!7292) (regOne!30192 lt!2148174)) (= (regTwo!30192 r!7292) (regTwo!30192 lt!2148174))) (= lambda!263561 lambda!263533))))

(assert (=> bs!1215900 (not (= lambda!263561 lambda!263534))))

(assert (=> bs!1215896 (= lambda!263561 lambda!263507)))

(assert (=> d!1688688 true))

(assert (=> d!1688688 true))

(assert (=> d!1688688 true))

(assert (=> d!1688688 (= (Exists!2021 lambda!263560) (Exists!2021 lambda!263561))))

(declare-fun lt!2148391 () Unit!152734)

(declare-fun choose!39008 (Regex!14840 Regex!14840 List!60821) Unit!152734)

(assert (=> d!1688688 (= lt!2148391 (choose!39008 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326))))

(assert (=> d!1688688 (validRegex!6576 (regOne!30192 r!7292))))

(assert (=> d!1688688 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!675 (regOne!30192 r!7292) (regTwo!30192 r!7292) s!2326) lt!2148391)))

(declare-fun m!6285104 () Bool)

(assert (=> bs!1215901 m!6285104))

(declare-fun m!6285106 () Bool)

(assert (=> bs!1215901 m!6285106))

(declare-fun m!6285108 () Bool)

(assert (=> bs!1215901 m!6285108))

(assert (=> bs!1215901 m!6285078))

(assert (=> b!5239851 d!1688688))

(declare-fun d!1688690 () Bool)

(declare-fun isEmpty!32630 (Option!14951) Bool)

(assert (=> d!1688690 (= (isDefined!11654 (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) Nil!60697 s!2326 s!2326)) (not (isEmpty!32630 (findConcatSeparation!1365 (regOne!30192 r!7292) (regTwo!30192 r!7292) Nil!60697 s!2326 s!2326))))))

(declare-fun bs!1215902 () Bool)

(assert (= bs!1215902 d!1688690))

(assert (=> bs!1215902 m!6284504))

(declare-fun m!6285110 () Bool)

(assert (=> bs!1215902 m!6285110))

(assert (=> b!5239851 d!1688690))

(declare-fun d!1688692 () Bool)

(assert (=> d!1688692 (= (isEmpty!32625 (t!374000 (exprs!4724 (h!67144 zl!343)))) (is-Nil!60695 (t!374000 (exprs!4724 (h!67144 zl!343)))))))

(assert (=> b!5239848 d!1688692))

(declare-fun d!1688694 () Bool)

(declare-fun e!3260746 () Bool)

(assert (=> d!1688694 (= (matchZipper!1084 (set.union lt!2148148 lt!2148180) (t!374002 s!2326)) e!3260746)))

(declare-fun res!2224239 () Bool)

(assert (=> d!1688694 (=> res!2224239 e!3260746)))

(assert (=> d!1688694 (= res!2224239 (matchZipper!1084 lt!2148148 (t!374002 s!2326)))))

(declare-fun lt!2148392 () Unit!152734)

(assert (=> d!1688694 (= lt!2148392 (choose!39002 lt!2148148 lt!2148180 (t!374002 s!2326)))))

(assert (=> d!1688694 (= (lemmaZipperConcatMatchesSameAsBothZippers!77 lt!2148148 lt!2148180 (t!374002 s!2326)) lt!2148392)))

(declare-fun b!5240435 () Bool)

(assert (=> b!5240435 (= e!3260746 (matchZipper!1084 lt!2148180 (t!374002 s!2326)))))

(assert (= (and d!1688694 (not res!2224239)) b!5240435))

(assert (=> d!1688694 m!6284564))

(assert (=> d!1688694 m!6284542))

(declare-fun m!6285112 () Bool)

(assert (=> d!1688694 m!6285112))

(assert (=> b!5240435 m!6284490))

(assert (=> b!5239867 d!1688694))

(assert (=> b!5239867 d!1688570))

(declare-fun d!1688696 () Bool)

(declare-fun c!905716 () Bool)

(assert (=> d!1688696 (= c!905716 (isEmpty!32629 (t!374002 s!2326)))))

(declare-fun e!3260747 () Bool)

(assert (=> d!1688696 (= (matchZipper!1084 (set.union lt!2148148 lt!2148180) (t!374002 s!2326)) e!3260747)))

(declare-fun b!5240436 () Bool)

(assert (=> b!5240436 (= e!3260747 (nullableZipper!1255 (set.union lt!2148148 lt!2148180)))))

(declare-fun b!5240437 () Bool)

(assert (=> b!5240437 (= e!3260747 (matchZipper!1084 (derivationStepZipper!1099 (set.union lt!2148148 lt!2148180) (head!11229 (t!374002 s!2326))) (tail!10326 (t!374002 s!2326))))))

(assert (= (and d!1688696 c!905716) b!5240436))

(assert (= (and d!1688696 (not c!905716)) b!5240437))

(assert (=> d!1688696 m!6284744))

(declare-fun m!6285114 () Bool)

(assert (=> b!5240436 m!6285114))

(assert (=> b!5240437 m!6284748))

(assert (=> b!5240437 m!6284748))

(declare-fun m!6285116 () Bool)

(assert (=> b!5240437 m!6285116))

(assert (=> b!5240437 m!6284752))

(assert (=> b!5240437 m!6285116))

(assert (=> b!5240437 m!6284752))

(declare-fun m!6285118 () Bool)

(assert (=> b!5240437 m!6285118))

(assert (=> b!5239867 d!1688696))

(assert (=> b!5239868 d!1688568))

(declare-fun b!5240442 () Bool)

(declare-fun e!3260750 () Bool)

(declare-fun tp!1467438 () Bool)

(declare-fun tp!1467439 () Bool)

(assert (=> b!5240442 (= e!3260750 (and tp!1467438 tp!1467439))))

(assert (=> b!5239842 (= tp!1467394 e!3260750)))

(assert (= (and b!5239842 (is-Cons!60695 (exprs!4724 setElem!33416))) b!5240442))

(declare-fun condSetEmpty!33422 () Bool)

(assert (=> setNonEmpty!33416 (= condSetEmpty!33422 (= setRest!33416 (as set.empty (Set Context!8448))))))

(declare-fun setRes!33422 () Bool)

(assert (=> setNonEmpty!33416 (= tp!1467395 setRes!33422)))

(declare-fun setIsEmpty!33422 () Bool)

(assert (=> setIsEmpty!33422 setRes!33422))

(declare-fun setNonEmpty!33422 () Bool)

(declare-fun tp!1467445 () Bool)

(declare-fun setElem!33422 () Context!8448)

(declare-fun e!3260753 () Bool)

(assert (=> setNonEmpty!33422 (= setRes!33422 (and tp!1467445 (inv!80348 setElem!33422) e!3260753))))

(declare-fun setRest!33422 () (Set Context!8448))

(assert (=> setNonEmpty!33422 (= setRest!33416 (set.union (set.insert setElem!33422 (as set.empty (Set Context!8448))) setRest!33422))))

(declare-fun b!5240447 () Bool)

(declare-fun tp!1467444 () Bool)

(assert (=> b!5240447 (= e!3260753 tp!1467444)))

(assert (= (and setNonEmpty!33416 condSetEmpty!33422) setIsEmpty!33422))

(assert (= (and setNonEmpty!33416 (not condSetEmpty!33422)) setNonEmpty!33422))

(assert (= setNonEmpty!33422 b!5240447))

(declare-fun m!6285120 () Bool)

(assert (=> setNonEmpty!33422 m!6285120))

(declare-fun b!5240459 () Bool)

(declare-fun e!3260756 () Bool)

(declare-fun tp!1467456 () Bool)

(declare-fun tp!1467459 () Bool)

(assert (=> b!5240459 (= e!3260756 (and tp!1467456 tp!1467459))))

(assert (=> b!5239844 (= tp!1467403 e!3260756)))

(declare-fun b!5240460 () Bool)

(declare-fun tp!1467460 () Bool)

(assert (=> b!5240460 (= e!3260756 tp!1467460)))

(declare-fun b!5240458 () Bool)

(assert (=> b!5240458 (= e!3260756 tp_is_empty!38933)))

(declare-fun b!5240461 () Bool)

(declare-fun tp!1467458 () Bool)

(declare-fun tp!1467457 () Bool)

(assert (=> b!5240461 (= e!3260756 (and tp!1467458 tp!1467457))))

(assert (= (and b!5239844 (is-ElementMatch!14840 (reg!15169 r!7292))) b!5240458))

(assert (= (and b!5239844 (is-Concat!23685 (reg!15169 r!7292))) b!5240459))

(assert (= (and b!5239844 (is-Star!14840 (reg!15169 r!7292))) b!5240460))

(assert (= (and b!5239844 (is-Union!14840 (reg!15169 r!7292))) b!5240461))

(declare-fun b!5240463 () Bool)

(declare-fun e!3260757 () Bool)

(declare-fun tp!1467461 () Bool)

(declare-fun tp!1467464 () Bool)

(assert (=> b!5240463 (= e!3260757 (and tp!1467461 tp!1467464))))

(assert (=> b!5239849 (= tp!1467401 e!3260757)))

(declare-fun b!5240464 () Bool)

(declare-fun tp!1467465 () Bool)

(assert (=> b!5240464 (= e!3260757 tp!1467465)))

(declare-fun b!5240462 () Bool)

(assert (=> b!5240462 (= e!3260757 tp_is_empty!38933)))

(declare-fun b!5240465 () Bool)

(declare-fun tp!1467463 () Bool)

(declare-fun tp!1467462 () Bool)

(assert (=> b!5240465 (= e!3260757 (and tp!1467463 tp!1467462))))

(assert (= (and b!5239849 (is-ElementMatch!14840 (regOne!30193 r!7292))) b!5240462))

(assert (= (and b!5239849 (is-Concat!23685 (regOne!30193 r!7292))) b!5240463))

(assert (= (and b!5239849 (is-Star!14840 (regOne!30193 r!7292))) b!5240464))

(assert (= (and b!5239849 (is-Union!14840 (regOne!30193 r!7292))) b!5240465))

(declare-fun b!5240467 () Bool)

(declare-fun e!3260758 () Bool)

(declare-fun tp!1467466 () Bool)

(declare-fun tp!1467469 () Bool)

(assert (=> b!5240467 (= e!3260758 (and tp!1467466 tp!1467469))))

(assert (=> b!5239849 (= tp!1467398 e!3260758)))

(declare-fun b!5240468 () Bool)

(declare-fun tp!1467470 () Bool)

(assert (=> b!5240468 (= e!3260758 tp!1467470)))

(declare-fun b!5240466 () Bool)

(assert (=> b!5240466 (= e!3260758 tp_is_empty!38933)))

(declare-fun b!5240469 () Bool)

(declare-fun tp!1467468 () Bool)

(declare-fun tp!1467467 () Bool)

(assert (=> b!5240469 (= e!3260758 (and tp!1467468 tp!1467467))))

(assert (= (and b!5239849 (is-ElementMatch!14840 (regTwo!30193 r!7292))) b!5240466))

(assert (= (and b!5239849 (is-Concat!23685 (regTwo!30193 r!7292))) b!5240467))

(assert (= (and b!5239849 (is-Star!14840 (regTwo!30193 r!7292))) b!5240468))

(assert (= (and b!5239849 (is-Union!14840 (regTwo!30193 r!7292))) b!5240469))

(declare-fun b!5240474 () Bool)

(declare-fun e!3260761 () Bool)

(declare-fun tp!1467473 () Bool)

(assert (=> b!5240474 (= e!3260761 (and tp_is_empty!38933 tp!1467473))))

(assert (=> b!5239834 (= tp!1467399 e!3260761)))

(assert (= (and b!5239834 (is-Cons!60697 (t!374002 s!2326))) b!5240474))

(declare-fun b!5240482 () Bool)

(declare-fun e!3260767 () Bool)

(declare-fun tp!1467478 () Bool)

(assert (=> b!5240482 (= e!3260767 tp!1467478)))

(declare-fun e!3260766 () Bool)

(declare-fun tp!1467479 () Bool)

(declare-fun b!5240481 () Bool)

(assert (=> b!5240481 (= e!3260766 (and (inv!80348 (h!67144 (t!374001 zl!343))) e!3260767 tp!1467479))))

(assert (=> b!5239839 (= tp!1467400 e!3260766)))

(assert (= b!5240481 b!5240482))

(assert (= (and b!5239839 (is-Cons!60696 (t!374001 zl!343))) b!5240481))

(declare-fun m!6285122 () Bool)

(assert (=> b!5240481 m!6285122))

(declare-fun b!5240483 () Bool)

(declare-fun e!3260768 () Bool)

(declare-fun tp!1467480 () Bool)

(declare-fun tp!1467481 () Bool)

(assert (=> b!5240483 (= e!3260768 (and tp!1467480 tp!1467481))))

(assert (=> b!5239855 (= tp!1467402 e!3260768)))

(assert (= (and b!5239855 (is-Cons!60695 (exprs!4724 (h!67144 zl!343)))) b!5240483))

(declare-fun b!5240485 () Bool)

(declare-fun e!3260769 () Bool)

(declare-fun tp!1467482 () Bool)

(declare-fun tp!1467485 () Bool)

(assert (=> b!5240485 (= e!3260769 (and tp!1467482 tp!1467485))))

(assert (=> b!5239838 (= tp!1467397 e!3260769)))

(declare-fun b!5240486 () Bool)

(declare-fun tp!1467486 () Bool)

(assert (=> b!5240486 (= e!3260769 tp!1467486)))

(declare-fun b!5240484 () Bool)

(assert (=> b!5240484 (= e!3260769 tp_is_empty!38933)))

(declare-fun b!5240487 () Bool)

(declare-fun tp!1467484 () Bool)

(declare-fun tp!1467483 () Bool)

(assert (=> b!5240487 (= e!3260769 (and tp!1467484 tp!1467483))))

(assert (= (and b!5239838 (is-ElementMatch!14840 (regOne!30192 r!7292))) b!5240484))

(assert (= (and b!5239838 (is-Concat!23685 (regOne!30192 r!7292))) b!5240485))

(assert (= (and b!5239838 (is-Star!14840 (regOne!30192 r!7292))) b!5240486))

(assert (= (and b!5239838 (is-Union!14840 (regOne!30192 r!7292))) b!5240487))

(declare-fun b!5240489 () Bool)

(declare-fun e!3260770 () Bool)

(declare-fun tp!1467487 () Bool)

(declare-fun tp!1467490 () Bool)

(assert (=> b!5240489 (= e!3260770 (and tp!1467487 tp!1467490))))

(assert (=> b!5239838 (= tp!1467396 e!3260770)))

(declare-fun b!5240490 () Bool)

(declare-fun tp!1467491 () Bool)

(assert (=> b!5240490 (= e!3260770 tp!1467491)))

(declare-fun b!5240488 () Bool)

(assert (=> b!5240488 (= e!3260770 tp_is_empty!38933)))

(declare-fun b!5240491 () Bool)

(declare-fun tp!1467489 () Bool)

(declare-fun tp!1467488 () Bool)

(assert (=> b!5240491 (= e!3260770 (and tp!1467489 tp!1467488))))

(assert (= (and b!5239838 (is-ElementMatch!14840 (regTwo!30192 r!7292))) b!5240488))

(assert (= (and b!5239838 (is-Concat!23685 (regTwo!30192 r!7292))) b!5240489))

(assert (= (and b!5239838 (is-Star!14840 (regTwo!30192 r!7292))) b!5240490))

(assert (= (and b!5239838 (is-Union!14840 (regTwo!30192 r!7292))) b!5240491))

(declare-fun b_lambda!202517 () Bool)

(assert (= b_lambda!202511 (or b!5239854 b_lambda!202517)))

(declare-fun bs!1215903 () Bool)

(declare-fun d!1688698 () Bool)

(assert (= bs!1215903 (and d!1688698 b!5239854)))

(assert (=> bs!1215903 (= (dynLambda!23984 lambda!263508 (h!67144 zl!343)) (derivationStepZipperUp!212 (h!67144 zl!343) (h!67145 s!2326)))))

(assert (=> bs!1215903 m!6284480))

(assert (=> d!1688652 d!1688698))

(declare-fun b_lambda!202519 () Bool)

(assert (= b_lambda!202513 (or b!5239854 b_lambda!202519)))

(declare-fun bs!1215904 () Bool)

(declare-fun d!1688700 () Bool)

(assert (= bs!1215904 (and d!1688700 b!5239854)))

(assert (=> bs!1215904 (= (dynLambda!23984 lambda!263508 lt!2148167) (derivationStepZipperUp!212 lt!2148167 (h!67145 s!2326)))))

(assert (=> bs!1215904 m!6284518))

(assert (=> d!1688658 d!1688700))

(declare-fun b_lambda!202521 () Bool)

(assert (= b_lambda!202509 (or b!5239860 b_lambda!202521)))

(declare-fun bs!1215905 () Bool)

(declare-fun d!1688702 () Bool)

(assert (= bs!1215905 (and d!1688702 b!5239860)))

(assert (=> bs!1215905 (= (dynLambda!23983 lambda!263509 (h!67143 lt!2148187)) (validRegex!6576 (h!67143 lt!2148187)))))

(declare-fun m!6285124 () Bool)

(assert (=> bs!1215905 m!6285124))

(assert (=> b!5240265 d!1688702))

(declare-fun b_lambda!202523 () Bool)

(assert (= b_lambda!202515 (or b!5239854 b_lambda!202523)))

(declare-fun bs!1215906 () Bool)

(declare-fun d!1688704 () Bool)

(assert (= bs!1215906 (and d!1688704 b!5239854)))

(assert (=> bs!1215906 (= (dynLambda!23984 lambda!263508 lt!2148173) (derivationStepZipperUp!212 lt!2148173 (h!67145 s!2326)))))

(assert (=> bs!1215906 m!6284514))

(assert (=> d!1688676 d!1688704))

(push 1)

(assert (not b!5240459))

(assert (not b!5240460))

(assert (not b!5240334))

(assert (not d!1688674))

(assert (not d!1688680))

(assert (not d!1688596))

(assert (not b!5240372))

(assert (not d!1688640))

(assert (not b!5240091))

(assert (not b!5240490))

(assert (not b!5240390))

(assert (not b!5240175))

(assert (not b_lambda!202517))

(assert (not b!5240463))

(assert (not bm!370923))

(assert (not b!5240166))

(assert (not bm!370927))

(assert (not b!5240395))

(assert (not d!1688668))

(assert (not b!5240386))

(assert (not d!1688592))

(assert (not b!5240328))

(assert (not d!1688586))

(assert (not b!5240157))

(assert (not d!1688694))

(assert (not b!5240266))

(assert (not b!5240465))

(assert (not b!5240229))

(assert (not d!1688588))

(assert (not bm!370901))

(assert (not b!5240419))

(assert (not b!5240178))

(assert (not b!5240255))

(assert (not b!5240254))

(assert (not b!5240016))

(assert (not d!1688626))

(assert (not b!5240154))

(assert (not d!1688670))

(assert (not d!1688628))

(assert (not d!1688686))

(assert (not b!5240162))

(assert (not b!5240118))

(assert (not bm!370912))

(assert (not b!5240170))

(assert (not b_lambda!202521))

(assert (not d!1688618))

(assert (not b!5240243))

(assert (not b!5240384))

(assert (not b!5240171))

(assert (not b!5240377))

(assert (not b!5240392))

(assert (not b!5240158))

(assert (not b!5240436))

(assert (not b!5240329))

(assert (not b!5240447))

(assert (not b_lambda!202519))

(assert (not b!5240173))

(assert (not d!1688676))

(assert (not d!1688684))

(assert (not b!5240274))

(assert (not bs!1215904))

(assert (not bm!370933))

(assert (not b!5240487))

(assert (not bm!370921))

(assert (not b!5240242))

(assert (not b!5240129))

(assert (not bm!370914))

(assert (not b!5240164))

(assert (not b!5240120))

(assert (not b!5240351))

(assert (not b!5240437))

(assert (not bm!370935))

(assert (not d!1688624))

(assert (not bm!370926))

(assert (not b!5240326))

(assert (not b!5240152))

(assert (not bm!370931))

(assert (not d!1688620))

(assert (not b!5240015))

(assert (not d!1688602))

(assert (not b!5240259))

(assert (not b!5240481))

(assert (not bs!1215903))

(assert (not bm!370905))

(assert (not b!5240055))

(assert (not b!5240327))

(assert (not b!5240014))

(assert (not b_lambda!202523))

(assert (not b!5240208))

(assert (not b!5240238))

(assert (not d!1688696))

(assert (not b!5240257))

(assert (not b!5240168))

(assert (not b!5240355))

(assert (not b!5240258))

(assert (not d!1688610))

(assert (not b!5240489))

(assert (not b!5240385))

(assert (not b!5240094))

(assert (not b!5240469))

(assert (not b!5240172))

(assert (not b!5240240))

(assert (not bm!370934))

(assert (not d!1688688))

(assert (not d!1688590))

(assert (not bm!370909))

(assert (not d!1688578))

(assert (not b!5240360))

(assert (not bm!370885))

(assert (not b!5240269))

(assert (not b!5240442))

(assert (not bs!1215905))

(assert (not b!5240251))

(assert (not b!5240467))

(assert (not b!5240248))

(assert (not b!5240391))

(assert (not b!5240128))

(assert (not bm!370880))

(assert (not d!1688612))

(assert (not bs!1215906))

(assert (not b!5240150))

(assert (not b!5240108))

(assert (not b!5240461))

(assert (not bm!370886))

(assert (not b!5240153))

(assert (not d!1688574))

(assert (not b!5240474))

(assert (not b!5240174))

(assert (not b!5240356))

(assert (not d!1688672))

(assert (not d!1688614))

(assert (not bm!370913))

(assert (not b!5240485))

(assert (not d!1688570))

(assert (not b!5240435))

(assert (not b!5240116))

(assert (not d!1688572))

(assert (not b!5240219))

(assert (not b!5240163))

(assert (not b!5240376))

(assert (not d!1688580))

(assert (not d!1688568))

(assert (not setNonEmpty!33422))

(assert (not b!5240095))

(assert (not b!5240468))

(assert (not b!5240276))

(assert (not b!5240491))

(assert (not d!1688636))

(assert (not bm!370929))

(assert (not bm!370881))

(assert (not d!1688642))

(assert (not d!1688664))

(assert (not b!5240422))

(assert (not b!5240464))

(assert (not d!1688638))

(assert (not b!5240253))

(assert (not b!5240368))

(assert (not bm!370903))

(assert (not b!5240267))

(assert (not b!5240093))

(assert (not d!1688616))

(assert (not b!5240056))

(assert (not b!5240017))

(assert (not bm!370887))

(assert (not b!5240417))

(assert (not b!5240383))

(assert (not b!5240160))

(assert (not b!5240379))

(assert (not b!5240418))

(assert (not b!5240268))

(assert (not d!1688644))

(assert (not b!5240330))

(assert (not b!5240416))

(assert (not b!5240123))

(assert (not b!5240236))

(assert (not b!5240239))

(assert (not d!1688600))

(assert (not b!5240339))

(assert (not b!5240482))

(assert (not d!1688678))

(assert (not d!1688652))

(assert tp_is_empty!38933)

(assert (not d!1688584))

(assert (not d!1688660))

(assert (not d!1688682))

(assert (not b!5240300))

(assert (not d!1688658))

(assert (not b!5240228))

(assert (not b!5240421))

(assert (not b!5240097))

(assert (not d!1688598))

(assert (not b!5240486))

(assert (not b!5240109))

(assert (not b!5240156))

(assert (not bm!370884))

(assert (not b!5240249))

(assert (not d!1688690))

(assert (not b!5240332))

(assert (not b!5240167))

(assert (not b!5240250))

(assert (not bm!370911))

(assert (not b!5240122))

(assert (not b!5240098))

(assert (not b!5240119))

(assert (not b!5240483))

(assert (not bm!370907))

(assert (not bm!370936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

