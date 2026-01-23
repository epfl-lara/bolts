; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!647976 () Bool)

(assert start!647976)

(declare-fun b!6635148 () Bool)

(assert (=> b!6635148 true))

(assert (=> b!6635148 true))

(declare-fun lambda!370737 () Int)

(declare-fun lambda!370736 () Int)

(assert (=> b!6635148 (not (= lambda!370737 lambda!370736))))

(assert (=> b!6635148 true))

(assert (=> b!6635148 true))

(declare-fun b!6635153 () Bool)

(assert (=> b!6635153 true))

(declare-fun b!6635133 () Bool)

(declare-fun res!2719205 () Bool)

(declare-fun e!4012967 () Bool)

(assert (=> b!6635133 (=> res!2719205 e!4012967)))

(declare-fun e!4012969 () Bool)

(assert (=> b!6635133 (= res!2719205 e!4012969)))

(declare-fun res!2719202 () Bool)

(assert (=> b!6635133 (=> (not res!2719202) (not e!4012969))))

(declare-datatypes ((C!33270 0))(
  ( (C!33271 (val!26337 Int)) )
))
(declare-datatypes ((Regex!16500 0))(
  ( (ElementMatch!16500 (c!1223875 C!33270)) (Concat!25345 (regOne!33512 Regex!16500) (regTwo!33512 Regex!16500)) (EmptyExpr!16500) (Star!16500 (reg!16829 Regex!16500)) (EmptyLang!16500) (Union!16500 (regOne!33513 Regex!16500) (regTwo!33513 Regex!16500)) )
))
(declare-fun r!7292 () Regex!16500)

(assert (=> b!6635133 (= res!2719202 (is-Concat!25345 (regOne!33512 r!7292)))))

(declare-fun b!6635134 () Bool)

(declare-fun e!4012965 () Bool)

(declare-datatypes ((List!65799 0))(
  ( (Nil!65675) (Cons!65675 (h!72123 Regex!16500) (t!379465 List!65799)) )
))
(declare-datatypes ((Context!11768 0))(
  ( (Context!11769 (exprs!6384 List!65799)) )
))
(declare-fun lt!2419398 () (Set Context!11768))

(declare-datatypes ((List!65800 0))(
  ( (Nil!65676) (Cons!65676 (h!72124 C!33270) (t!379466 List!65800)) )
))
(declare-fun s!2326 () List!65800)

(declare-fun matchZipper!2512 ((Set Context!11768) List!65800) Bool)

(assert (=> b!6635134 (= e!4012965 (matchZipper!2512 lt!2419398 (t!379466 s!2326)))))

(declare-fun b!6635135 () Bool)

(declare-fun res!2719201 () Bool)

(declare-fun e!4012964 () Bool)

(assert (=> b!6635135 (=> res!2719201 e!4012964)))

(declare-datatypes ((List!65801 0))(
  ( (Nil!65677) (Cons!65677 (h!72125 Context!11768) (t!379467 List!65801)) )
))
(declare-fun zl!343 () List!65801)

(assert (=> b!6635135 (= res!2719201 (not (is-Cons!65675 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635136 () Bool)

(declare-fun res!2719194 () Bool)

(declare-fun e!4012963 () Bool)

(assert (=> b!6635136 (=> (not res!2719194) (not e!4012963))))

(declare-fun z!1189 () (Set Context!11768))

(declare-fun toList!10284 ((Set Context!11768)) List!65801)

(assert (=> b!6635136 (= res!2719194 (= (toList!10284 z!1189) zl!343))))

(declare-fun b!6635137 () Bool)

(declare-fun e!4012974 () Bool)

(declare-fun tp!1827720 () Bool)

(assert (=> b!6635137 (= e!4012974 tp!1827720)))

(declare-fun e!4012972 () Bool)

(declare-fun tp!1827726 () Bool)

(declare-fun b!6635138 () Bool)

(declare-fun e!4012971 () Bool)

(declare-fun inv!84498 (Context!11768) Bool)

(assert (=> b!6635138 (= e!4012971 (and (inv!84498 (h!72125 zl!343)) e!4012972 tp!1827726))))

(declare-fun b!6635139 () Bool)

(declare-datatypes ((Unit!159355 0))(
  ( (Unit!159356) )
))
(declare-fun e!4012973 () Unit!159355)

(declare-fun Unit!159357 () Unit!159355)

(assert (=> b!6635139 (= e!4012973 Unit!159357)))

(declare-fun lt!2419396 () (Set Context!11768))

(declare-fun lt!2419399 () Unit!159355)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1331 ((Set Context!11768) (Set Context!11768) List!65800) Unit!159355)

(assert (=> b!6635139 (= lt!2419399 (lemmaZipperConcatMatchesSameAsBothZippers!1331 lt!2419396 lt!2419398 (t!379466 s!2326)))))

(declare-fun res!2719192 () Bool)

(assert (=> b!6635139 (= res!2719192 (matchZipper!2512 lt!2419396 (t!379466 s!2326)))))

(assert (=> b!6635139 (=> res!2719192 e!4012965)))

(assert (=> b!6635139 (= (matchZipper!2512 (set.union lt!2419396 lt!2419398) (t!379466 s!2326)) e!4012965)))

(declare-fun b!6635140 () Bool)

(declare-fun res!2719197 () Bool)

(assert (=> b!6635140 (=> res!2719197 e!4012964)))

(declare-fun generalisedConcat!2097 (List!65799) Regex!16500)

(assert (=> b!6635140 (= res!2719197 (not (= r!7292 (generalisedConcat!2097 (exprs!6384 (h!72125 zl!343))))))))

(declare-fun b!6635141 () Bool)

(declare-fun res!2719204 () Bool)

(declare-fun e!4012966 () Bool)

(assert (=> b!6635141 (=> res!2719204 e!4012966)))

(declare-fun isEmpty!37973 (List!65799) Bool)

(assert (=> b!6635141 (= res!2719204 (isEmpty!37973 (t!379465 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635142 () Bool)

(declare-fun Unit!159358 () Unit!159355)

(assert (=> b!6635142 (= e!4012973 Unit!159358)))

(declare-fun setIsEmpty!45355 () Bool)

(declare-fun setRes!45355 () Bool)

(assert (=> setIsEmpty!45355 setRes!45355))

(declare-fun b!6635143 () Bool)

(declare-fun res!2719195 () Bool)

(assert (=> b!6635143 (=> res!2719195 e!4012964)))

(declare-fun generalisedUnion!2344 (List!65799) Regex!16500)

(declare-fun unfocusZipperList!1921 (List!65801) List!65799)

(assert (=> b!6635143 (= res!2719195 (not (= r!7292 (generalisedUnion!2344 (unfocusZipperList!1921 zl!343)))))))

(declare-fun b!6635144 () Bool)

(declare-fun tp!1827728 () Bool)

(declare-fun tp!1827729 () Bool)

(assert (=> b!6635144 (= e!4012974 (and tp!1827728 tp!1827729))))

(declare-fun b!6635145 () Bool)

(declare-fun res!2719199 () Bool)

(assert (=> b!6635145 (=> (not res!2719199) (not e!4012963))))

(declare-fun unfocusZipper!2242 (List!65801) Regex!16500)

(assert (=> b!6635145 (= res!2719199 (= r!7292 (unfocusZipper!2242 zl!343)))))

(declare-fun b!6635146 () Bool)

(assert (=> b!6635146 (= e!4012963 (not e!4012964))))

(declare-fun res!2719203 () Bool)

(assert (=> b!6635146 (=> res!2719203 e!4012964)))

(assert (=> b!6635146 (= res!2719203 (not (is-Cons!65677 zl!343)))))

(declare-fun lt!2419393 () Bool)

(declare-fun matchRSpec!3601 (Regex!16500 List!65800) Bool)

(assert (=> b!6635146 (= lt!2419393 (matchRSpec!3601 r!7292 s!2326))))

(declare-fun matchR!8683 (Regex!16500 List!65800) Bool)

(assert (=> b!6635146 (= lt!2419393 (matchR!8683 r!7292 s!2326))))

(declare-fun lt!2419394 () Unit!159355)

(declare-fun mainMatchTheorem!3601 (Regex!16500 List!65800) Unit!159355)

(assert (=> b!6635146 (= lt!2419394 (mainMatchTheorem!3601 r!7292 s!2326))))

(declare-fun res!2719200 () Bool)

(assert (=> start!647976 (=> (not res!2719200) (not e!4012963))))

(declare-fun validRegex!8236 (Regex!16500) Bool)

(assert (=> start!647976 (= res!2719200 (validRegex!8236 r!7292))))

(assert (=> start!647976 e!4012963))

(assert (=> start!647976 e!4012974))

(declare-fun condSetEmpty!45355 () Bool)

(assert (=> start!647976 (= condSetEmpty!45355 (= z!1189 (as set.empty (Set Context!11768))))))

(assert (=> start!647976 setRes!45355))

(assert (=> start!647976 e!4012971))

(declare-fun e!4012970 () Bool)

(assert (=> start!647976 e!4012970))

(declare-fun b!6635147 () Bool)

(declare-fun res!2719198 () Bool)

(assert (=> b!6635147 (=> res!2719198 e!4012964)))

(assert (=> b!6635147 (= res!2719198 (or (is-EmptyExpr!16500 r!7292) (is-EmptyLang!16500 r!7292) (is-ElementMatch!16500 r!7292) (is-Union!16500 r!7292) (not (is-Concat!25345 r!7292))))))

(assert (=> b!6635148 (= e!4012964 e!4012966)))

(declare-fun res!2719196 () Bool)

(assert (=> b!6635148 (=> res!2719196 e!4012966)))

(declare-fun lt!2419391 () Bool)

(assert (=> b!6635148 (= res!2719196 (or (not (= lt!2419393 lt!2419391)) (is-Nil!65676 s!2326)))))

(declare-fun Exists!3570 (Int) Bool)

(assert (=> b!6635148 (= (Exists!3570 lambda!370736) (Exists!3570 lambda!370737))))

(declare-fun lt!2419401 () Unit!159355)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2107 (Regex!16500 Regex!16500 List!65800) Unit!159355)

(assert (=> b!6635148 (= lt!2419401 (lemmaExistCutMatchRandMatchRSpecEquivalent!2107 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326))))

(assert (=> b!6635148 (= lt!2419391 (Exists!3570 lambda!370736))))

(declare-datatypes ((tuple2!66958 0))(
  ( (tuple2!66959 (_1!36782 List!65800) (_2!36782 List!65800)) )
))
(declare-datatypes ((Option!16391 0))(
  ( (None!16390) (Some!16390 (v!52583 tuple2!66958)) )
))
(declare-fun isDefined!13094 (Option!16391) Bool)

(declare-fun findConcatSeparation!2805 (Regex!16500 Regex!16500 List!65800 List!65800 List!65800) Option!16391)

(assert (=> b!6635148 (= lt!2419391 (isDefined!13094 (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) Nil!65676 s!2326 s!2326)))))

(declare-fun lt!2419397 () Unit!159355)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2569 (Regex!16500 Regex!16500 List!65800) Unit!159355)

(assert (=> b!6635148 (= lt!2419397 (lemmaFindConcatSeparationEquivalentToExists!2569 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326))))

(declare-fun b!6635149 () Bool)

(declare-fun tp_is_empty!42253 () Bool)

(assert (=> b!6635149 (= e!4012974 tp_is_empty!42253)))

(declare-fun b!6635150 () Bool)

(declare-fun res!2719193 () Bool)

(assert (=> b!6635150 (=> res!2719193 e!4012964)))

(declare-fun isEmpty!37974 (List!65801) Bool)

(assert (=> b!6635150 (= res!2719193 (not (isEmpty!37974 (t!379467 zl!343))))))

(declare-fun b!6635151 () Bool)

(declare-fun tp!1827722 () Bool)

(assert (=> b!6635151 (= e!4012972 tp!1827722)))

(declare-fun b!6635152 () Bool)

(declare-fun nullable!6493 (Regex!16500) Bool)

(assert (=> b!6635152 (= e!4012969 (nullable!6493 (regOne!33512 (regOne!33512 r!7292))))))

(assert (=> b!6635153 (= e!4012966 e!4012967)))

(declare-fun res!2719191 () Bool)

(assert (=> b!6635153 (=> res!2719191 e!4012967)))

(assert (=> b!6635153 (= res!2719191 (or (and (is-ElementMatch!16500 (regOne!33512 r!7292)) (= (c!1223875 (regOne!33512 r!7292)) (h!72124 s!2326))) (is-Union!16500 (regOne!33512 r!7292))))))

(declare-fun lt!2419400 () Unit!159355)

(assert (=> b!6635153 (= lt!2419400 e!4012973)))

(declare-fun c!1223874 () Bool)

(assert (=> b!6635153 (= c!1223874 (nullable!6493 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun lambda!370738 () Int)

(declare-fun flatMap!2005 ((Set Context!11768) Int) (Set Context!11768))

(declare-fun derivationStepZipperUp!1674 (Context!11768 C!33270) (Set Context!11768))

(assert (=> b!6635153 (= (flatMap!2005 z!1189 lambda!370738) (derivationStepZipperUp!1674 (h!72125 zl!343) (h!72124 s!2326)))))

(declare-fun lt!2419395 () Unit!159355)

(declare-fun lemmaFlatMapOnSingletonSet!1531 ((Set Context!11768) Context!11768 Int) Unit!159355)

(assert (=> b!6635153 (= lt!2419395 (lemmaFlatMapOnSingletonSet!1531 z!1189 (h!72125 zl!343) lambda!370738))))

(declare-fun lt!2419402 () Context!11768)

(assert (=> b!6635153 (= lt!2419398 (derivationStepZipperUp!1674 lt!2419402 (h!72124 s!2326)))))

(declare-fun derivationStepZipperDown!1748 (Regex!16500 Context!11768 C!33270) (Set Context!11768))

(assert (=> b!6635153 (= lt!2419396 (derivationStepZipperDown!1748 (h!72123 (exprs!6384 (h!72125 zl!343))) lt!2419402 (h!72124 s!2326)))))

(assert (=> b!6635153 (= lt!2419402 (Context!11769 (t!379465 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun lt!2419392 () (Set Context!11768))

(assert (=> b!6635153 (= lt!2419392 (derivationStepZipperUp!1674 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343))))) (h!72124 s!2326)))))

(declare-fun b!6635154 () Bool)

(declare-fun tp!1827723 () Bool)

(assert (=> b!6635154 (= e!4012970 (and tp_is_empty!42253 tp!1827723))))

(declare-fun b!6635155 () Bool)

(assert (=> b!6635155 (= e!4012967 (or (is-Concat!25345 (regOne!33512 r!7292)) (is-Star!16500 (regOne!33512 r!7292)) (is-EmptyExpr!16500 (regOne!33512 r!7292)) (= lt!2419396 (as set.empty (Set Context!11768)))))))

(declare-fun b!6635156 () Bool)

(declare-fun tp!1827725 () Bool)

(declare-fun tp!1827727 () Bool)

(assert (=> b!6635156 (= e!4012974 (and tp!1827725 tp!1827727))))

(declare-fun tp!1827724 () Bool)

(declare-fun setElem!45355 () Context!11768)

(declare-fun e!4012968 () Bool)

(declare-fun setNonEmpty!45355 () Bool)

(assert (=> setNonEmpty!45355 (= setRes!45355 (and tp!1827724 (inv!84498 setElem!45355) e!4012968))))

(declare-fun setRest!45355 () (Set Context!11768))

(assert (=> setNonEmpty!45355 (= z!1189 (set.union (set.insert setElem!45355 (as set.empty (Set Context!11768))) setRest!45355))))

(declare-fun b!6635157 () Bool)

(declare-fun tp!1827721 () Bool)

(assert (=> b!6635157 (= e!4012968 tp!1827721)))

(assert (= (and start!647976 res!2719200) b!6635136))

(assert (= (and b!6635136 res!2719194) b!6635145))

(assert (= (and b!6635145 res!2719199) b!6635146))

(assert (= (and b!6635146 (not res!2719203)) b!6635150))

(assert (= (and b!6635150 (not res!2719193)) b!6635140))

(assert (= (and b!6635140 (not res!2719197)) b!6635135))

(assert (= (and b!6635135 (not res!2719201)) b!6635143))

(assert (= (and b!6635143 (not res!2719195)) b!6635147))

(assert (= (and b!6635147 (not res!2719198)) b!6635148))

(assert (= (and b!6635148 (not res!2719196)) b!6635141))

(assert (= (and b!6635141 (not res!2719204)) b!6635153))

(assert (= (and b!6635153 c!1223874) b!6635139))

(assert (= (and b!6635153 (not c!1223874)) b!6635142))

(assert (= (and b!6635139 (not res!2719192)) b!6635134))

(assert (= (and b!6635153 (not res!2719191)) b!6635133))

(assert (= (and b!6635133 res!2719202) b!6635152))

(assert (= (and b!6635133 (not res!2719205)) b!6635155))

(assert (= (and start!647976 (is-ElementMatch!16500 r!7292)) b!6635149))

(assert (= (and start!647976 (is-Concat!25345 r!7292)) b!6635144))

(assert (= (and start!647976 (is-Star!16500 r!7292)) b!6635137))

(assert (= (and start!647976 (is-Union!16500 r!7292)) b!6635156))

(assert (= (and start!647976 condSetEmpty!45355) setIsEmpty!45355))

(assert (= (and start!647976 (not condSetEmpty!45355)) setNonEmpty!45355))

(assert (= setNonEmpty!45355 b!6635157))

(assert (= b!6635138 b!6635151))

(assert (= (and start!647976 (is-Cons!65677 zl!343)) b!6635138))

(assert (= (and start!647976 (is-Cons!65676 s!2326)) b!6635154))

(declare-fun m!7403220 () Bool)

(assert (=> b!6635145 m!7403220))

(declare-fun m!7403222 () Bool)

(assert (=> b!6635139 m!7403222))

(declare-fun m!7403224 () Bool)

(assert (=> b!6635139 m!7403224))

(declare-fun m!7403226 () Bool)

(assert (=> b!6635139 m!7403226))

(declare-fun m!7403228 () Bool)

(assert (=> b!6635134 m!7403228))

(declare-fun m!7403230 () Bool)

(assert (=> setNonEmpty!45355 m!7403230))

(declare-fun m!7403232 () Bool)

(assert (=> b!6635153 m!7403232))

(declare-fun m!7403234 () Bool)

(assert (=> b!6635153 m!7403234))

(declare-fun m!7403236 () Bool)

(assert (=> b!6635153 m!7403236))

(declare-fun m!7403238 () Bool)

(assert (=> b!6635153 m!7403238))

(declare-fun m!7403240 () Bool)

(assert (=> b!6635153 m!7403240))

(declare-fun m!7403242 () Bool)

(assert (=> b!6635153 m!7403242))

(declare-fun m!7403244 () Bool)

(assert (=> b!6635153 m!7403244))

(declare-fun m!7403246 () Bool)

(assert (=> b!6635148 m!7403246))

(declare-fun m!7403248 () Bool)

(assert (=> b!6635148 m!7403248))

(declare-fun m!7403250 () Bool)

(assert (=> b!6635148 m!7403250))

(declare-fun m!7403252 () Bool)

(assert (=> b!6635148 m!7403252))

(assert (=> b!6635148 m!7403246))

(declare-fun m!7403254 () Bool)

(assert (=> b!6635148 m!7403254))

(assert (=> b!6635148 m!7403250))

(declare-fun m!7403256 () Bool)

(assert (=> b!6635148 m!7403256))

(declare-fun m!7403258 () Bool)

(assert (=> b!6635146 m!7403258))

(declare-fun m!7403260 () Bool)

(assert (=> b!6635146 m!7403260))

(declare-fun m!7403262 () Bool)

(assert (=> b!6635146 m!7403262))

(declare-fun m!7403264 () Bool)

(assert (=> b!6635152 m!7403264))

(declare-fun m!7403266 () Bool)

(assert (=> b!6635150 m!7403266))

(declare-fun m!7403268 () Bool)

(assert (=> b!6635140 m!7403268))

(declare-fun m!7403270 () Bool)

(assert (=> b!6635138 m!7403270))

(declare-fun m!7403272 () Bool)

(assert (=> start!647976 m!7403272))

(declare-fun m!7403274 () Bool)

(assert (=> b!6635141 m!7403274))

(declare-fun m!7403276 () Bool)

(assert (=> b!6635136 m!7403276))

(declare-fun m!7403278 () Bool)

(assert (=> b!6635143 m!7403278))

(assert (=> b!6635143 m!7403278))

(declare-fun m!7403280 () Bool)

(assert (=> b!6635143 m!7403280))

(push 1)

(assert (not b!6635151))

(assert (not b!6635156))

(assert (not b!6635137))

(assert (not b!6635146))

(assert tp_is_empty!42253)

(assert (not b!6635141))

(assert (not b!6635157))

(assert (not b!6635152))

(assert (not b!6635143))

(assert (not b!6635140))

(assert (not setNonEmpty!45355))

(assert (not b!6635134))

(assert (not start!647976))

(assert (not b!6635144))

(assert (not b!6635136))

(assert (not b!6635138))

(assert (not b!6635154))

(assert (not b!6635153))

(assert (not b!6635145))

(assert (not b!6635148))

(assert (not b!6635150))

(assert (not b!6635139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2080046 () Bool)

(declare-fun e!4013029 () Bool)

(assert (=> d!2080046 e!4013029))

(declare-fun res!2719273 () Bool)

(assert (=> d!2080046 (=> res!2719273 e!4013029)))

(declare-fun e!4013027 () Bool)

(assert (=> d!2080046 (= res!2719273 e!4013027)))

(declare-fun res!2719277 () Bool)

(assert (=> d!2080046 (=> (not res!2719277) (not e!4013027))))

(declare-fun lt!2419445 () Option!16391)

(assert (=> d!2080046 (= res!2719277 (isDefined!13094 lt!2419445))))

(declare-fun e!4013031 () Option!16391)

(assert (=> d!2080046 (= lt!2419445 e!4013031)))

(declare-fun c!1223887 () Bool)

(declare-fun e!4013028 () Bool)

(assert (=> d!2080046 (= c!1223887 e!4013028)))

(declare-fun res!2719276 () Bool)

(assert (=> d!2080046 (=> (not res!2719276) (not e!4013028))))

(assert (=> d!2080046 (= res!2719276 (matchR!8683 (regOne!33512 r!7292) Nil!65676))))

(assert (=> d!2080046 (validRegex!8236 (regOne!33512 r!7292))))

(assert (=> d!2080046 (= (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) Nil!65676 s!2326 s!2326) lt!2419445)))

(declare-fun b!6635275 () Bool)

(declare-fun res!2719274 () Bool)

(assert (=> b!6635275 (=> (not res!2719274) (not e!4013027))))

(declare-fun get!22832 (Option!16391) tuple2!66958)

(assert (=> b!6635275 (= res!2719274 (matchR!8683 (regOne!33512 r!7292) (_1!36782 (get!22832 lt!2419445))))))

(declare-fun b!6635276 () Bool)

(declare-fun res!2719275 () Bool)

(assert (=> b!6635276 (=> (not res!2719275) (not e!4013027))))

(assert (=> b!6635276 (= res!2719275 (matchR!8683 (regTwo!33512 r!7292) (_2!36782 (get!22832 lt!2419445))))))

(declare-fun b!6635277 () Bool)

(declare-fun e!4013030 () Option!16391)

(assert (=> b!6635277 (= e!4013031 e!4013030)))

(declare-fun c!1223888 () Bool)

(assert (=> b!6635277 (= c!1223888 (is-Nil!65676 s!2326))))

(declare-fun b!6635278 () Bool)

(assert (=> b!6635278 (= e!4013030 None!16390)))

(declare-fun b!6635279 () Bool)

(declare-fun ++!14650 (List!65800 List!65800) List!65800)

(assert (=> b!6635279 (= e!4013027 (= (++!14650 (_1!36782 (get!22832 lt!2419445)) (_2!36782 (get!22832 lt!2419445))) s!2326))))

(declare-fun b!6635280 () Bool)

(assert (=> b!6635280 (= e!4013031 (Some!16390 (tuple2!66959 Nil!65676 s!2326)))))

(declare-fun b!6635281 () Bool)

(assert (=> b!6635281 (= e!4013028 (matchR!8683 (regTwo!33512 r!7292) s!2326))))

(declare-fun b!6635282 () Bool)

(declare-fun lt!2419447 () Unit!159355)

(declare-fun lt!2419446 () Unit!159355)

(assert (=> b!6635282 (= lt!2419447 lt!2419446)))

(assert (=> b!6635282 (= (++!14650 (++!14650 Nil!65676 (Cons!65676 (h!72124 s!2326) Nil!65676)) (t!379466 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2639 (List!65800 C!33270 List!65800 List!65800) Unit!159355)

(assert (=> b!6635282 (= lt!2419446 (lemmaMoveElementToOtherListKeepsConcatEq!2639 Nil!65676 (h!72124 s!2326) (t!379466 s!2326) s!2326))))

(assert (=> b!6635282 (= e!4013030 (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) (++!14650 Nil!65676 (Cons!65676 (h!72124 s!2326) Nil!65676)) (t!379466 s!2326) s!2326))))

(declare-fun b!6635283 () Bool)

(assert (=> b!6635283 (= e!4013029 (not (isDefined!13094 lt!2419445)))))

(assert (= (and d!2080046 res!2719276) b!6635281))

(assert (= (and d!2080046 c!1223887) b!6635280))

(assert (= (and d!2080046 (not c!1223887)) b!6635277))

(assert (= (and b!6635277 c!1223888) b!6635278))

(assert (= (and b!6635277 (not c!1223888)) b!6635282))

(assert (= (and d!2080046 res!2719277) b!6635275))

(assert (= (and b!6635275 res!2719274) b!6635276))

(assert (= (and b!6635276 res!2719275) b!6635279))

(assert (= (and d!2080046 (not res!2719273)) b!6635283))

(declare-fun m!7403344 () Bool)

(assert (=> d!2080046 m!7403344))

(declare-fun m!7403346 () Bool)

(assert (=> d!2080046 m!7403346))

(declare-fun m!7403348 () Bool)

(assert (=> d!2080046 m!7403348))

(assert (=> b!6635283 m!7403344))

(declare-fun m!7403350 () Bool)

(assert (=> b!6635281 m!7403350))

(declare-fun m!7403352 () Bool)

(assert (=> b!6635276 m!7403352))

(declare-fun m!7403354 () Bool)

(assert (=> b!6635276 m!7403354))

(assert (=> b!6635279 m!7403352))

(declare-fun m!7403356 () Bool)

(assert (=> b!6635279 m!7403356))

(assert (=> b!6635275 m!7403352))

(declare-fun m!7403358 () Bool)

(assert (=> b!6635275 m!7403358))

(declare-fun m!7403360 () Bool)

(assert (=> b!6635282 m!7403360))

(assert (=> b!6635282 m!7403360))

(declare-fun m!7403362 () Bool)

(assert (=> b!6635282 m!7403362))

(declare-fun m!7403364 () Bool)

(assert (=> b!6635282 m!7403364))

(assert (=> b!6635282 m!7403360))

(declare-fun m!7403366 () Bool)

(assert (=> b!6635282 m!7403366))

(assert (=> b!6635148 d!2080046))

(declare-fun d!2080048 () Bool)

(declare-fun choose!49559 (Int) Bool)

(assert (=> d!2080048 (= (Exists!3570 lambda!370737) (choose!49559 lambda!370737))))

(declare-fun bs!1705390 () Bool)

(assert (= bs!1705390 d!2080048))

(declare-fun m!7403368 () Bool)

(assert (=> bs!1705390 m!7403368))

(assert (=> b!6635148 d!2080048))

(declare-fun d!2080050 () Bool)

(assert (=> d!2080050 (= (Exists!3570 lambda!370736) (choose!49559 lambda!370736))))

(declare-fun bs!1705391 () Bool)

(assert (= bs!1705391 d!2080050))

(declare-fun m!7403370 () Bool)

(assert (=> bs!1705391 m!7403370))

(assert (=> b!6635148 d!2080050))

(declare-fun bs!1705392 () Bool)

(declare-fun d!2080052 () Bool)

(assert (= bs!1705392 (and d!2080052 b!6635148)))

(declare-fun lambda!370752 () Int)

(assert (=> bs!1705392 (= lambda!370752 lambda!370736)))

(assert (=> bs!1705392 (not (= lambda!370752 lambda!370737))))

(assert (=> d!2080052 true))

(assert (=> d!2080052 true))

(assert (=> d!2080052 true))

(assert (=> d!2080052 (= (isDefined!13094 (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) Nil!65676 s!2326 s!2326)) (Exists!3570 lambda!370752))))

(declare-fun lt!2419450 () Unit!159355)

(declare-fun choose!49560 (Regex!16500 Regex!16500 List!65800) Unit!159355)

(assert (=> d!2080052 (= lt!2419450 (choose!49560 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326))))

(assert (=> d!2080052 (validRegex!8236 (regOne!33512 r!7292))))

(assert (=> d!2080052 (= (lemmaFindConcatSeparationEquivalentToExists!2569 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326) lt!2419450)))

(declare-fun bs!1705393 () Bool)

(assert (= bs!1705393 d!2080052))

(declare-fun m!7403372 () Bool)

(assert (=> bs!1705393 m!7403372))

(assert (=> bs!1705393 m!7403250))

(assert (=> bs!1705393 m!7403250))

(assert (=> bs!1705393 m!7403252))

(assert (=> bs!1705393 m!7403348))

(declare-fun m!7403374 () Bool)

(assert (=> bs!1705393 m!7403374))

(assert (=> b!6635148 d!2080052))

(declare-fun bs!1705394 () Bool)

(declare-fun d!2080054 () Bool)

(assert (= bs!1705394 (and d!2080054 b!6635148)))

(declare-fun lambda!370757 () Int)

(assert (=> bs!1705394 (= lambda!370757 lambda!370736)))

(assert (=> bs!1705394 (not (= lambda!370757 lambda!370737))))

(declare-fun bs!1705395 () Bool)

(assert (= bs!1705395 (and d!2080054 d!2080052)))

(assert (=> bs!1705395 (= lambda!370757 lambda!370752)))

(assert (=> d!2080054 true))

(assert (=> d!2080054 true))

(assert (=> d!2080054 true))

(declare-fun lambda!370758 () Int)

(assert (=> bs!1705394 (not (= lambda!370758 lambda!370736))))

(assert (=> bs!1705394 (= lambda!370758 lambda!370737)))

(assert (=> bs!1705395 (not (= lambda!370758 lambda!370752))))

(declare-fun bs!1705396 () Bool)

(assert (= bs!1705396 d!2080054))

(assert (=> bs!1705396 (not (= lambda!370758 lambda!370757))))

(assert (=> d!2080054 true))

(assert (=> d!2080054 true))

(assert (=> d!2080054 true))

(assert (=> d!2080054 (= (Exists!3570 lambda!370757) (Exists!3570 lambda!370758))))

(declare-fun lt!2419453 () Unit!159355)

(declare-fun choose!49561 (Regex!16500 Regex!16500 List!65800) Unit!159355)

(assert (=> d!2080054 (= lt!2419453 (choose!49561 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326))))

(assert (=> d!2080054 (validRegex!8236 (regOne!33512 r!7292))))

(assert (=> d!2080054 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2107 (regOne!33512 r!7292) (regTwo!33512 r!7292) s!2326) lt!2419453)))

(declare-fun m!7403376 () Bool)

(assert (=> bs!1705396 m!7403376))

(declare-fun m!7403378 () Bool)

(assert (=> bs!1705396 m!7403378))

(declare-fun m!7403380 () Bool)

(assert (=> bs!1705396 m!7403380))

(assert (=> bs!1705396 m!7403348))

(assert (=> b!6635148 d!2080054))

(declare-fun d!2080056 () Bool)

(declare-fun isEmpty!37977 (Option!16391) Bool)

(assert (=> d!2080056 (= (isDefined!13094 (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) Nil!65676 s!2326 s!2326)) (not (isEmpty!37977 (findConcatSeparation!2805 (regOne!33512 r!7292) (regTwo!33512 r!7292) Nil!65676 s!2326 s!2326))))))

(declare-fun bs!1705397 () Bool)

(assert (= bs!1705397 d!2080056))

(assert (=> bs!1705397 m!7403250))

(declare-fun m!7403382 () Bool)

(assert (=> bs!1705397 m!7403382))

(assert (=> b!6635148 d!2080056))

(declare-fun d!2080058 () Bool)

(declare-fun lambda!370761 () Int)

(declare-fun forall!15696 (List!65799 Int) Bool)

(assert (=> d!2080058 (= (inv!84498 (h!72125 zl!343)) (forall!15696 (exprs!6384 (h!72125 zl!343)) lambda!370761))))

(declare-fun bs!1705398 () Bool)

(assert (= bs!1705398 d!2080058))

(declare-fun m!7403384 () Bool)

(assert (=> bs!1705398 m!7403384))

(assert (=> b!6635138 d!2080058))

(declare-fun b!6635314 () Bool)

(declare-fun e!4013053 () Bool)

(declare-fun e!4013057 () Bool)

(assert (=> b!6635314 (= e!4013053 e!4013057)))

(declare-fun c!1223894 () Bool)

(assert (=> b!6635314 (= c!1223894 (is-Star!16500 r!7292))))

(declare-fun bm!582487 () Bool)

(declare-fun call!582492 () Bool)

(declare-fun call!582494 () Bool)

(assert (=> bm!582487 (= call!582492 call!582494)))

(declare-fun b!6635315 () Bool)

(declare-fun e!4013054 () Bool)

(assert (=> b!6635315 (= e!4013054 call!582492)))

(declare-fun b!6635316 () Bool)

(declare-fun e!4013052 () Bool)

(assert (=> b!6635316 (= e!4013052 e!4013054)))

(declare-fun res!2719303 () Bool)

(assert (=> b!6635316 (=> (not res!2719303) (not e!4013054))))

(declare-fun call!582493 () Bool)

(assert (=> b!6635316 (= res!2719303 call!582493)))

(declare-fun b!6635317 () Bool)

(declare-fun e!4013055 () Bool)

(assert (=> b!6635317 (= e!4013057 e!4013055)))

(declare-fun c!1223893 () Bool)

(assert (=> b!6635317 (= c!1223893 (is-Union!16500 r!7292))))

(declare-fun b!6635318 () Bool)

(declare-fun e!4013058 () Bool)

(assert (=> b!6635318 (= e!4013058 call!582492)))

(declare-fun b!6635319 () Bool)

(declare-fun res!2719301 () Bool)

(assert (=> b!6635319 (=> res!2719301 e!4013052)))

(assert (=> b!6635319 (= res!2719301 (not (is-Concat!25345 r!7292)))))

(assert (=> b!6635319 (= e!4013055 e!4013052)))

(declare-fun d!2080060 () Bool)

(declare-fun res!2719300 () Bool)

(assert (=> d!2080060 (=> res!2719300 e!4013053)))

(assert (=> d!2080060 (= res!2719300 (is-ElementMatch!16500 r!7292))))

(assert (=> d!2080060 (= (validRegex!8236 r!7292) e!4013053)))

(declare-fun bm!582488 () Bool)

(assert (=> bm!582488 (= call!582494 (validRegex!8236 (ite c!1223894 (reg!16829 r!7292) (ite c!1223893 (regTwo!33513 r!7292) (regTwo!33512 r!7292)))))))

(declare-fun bm!582489 () Bool)

(assert (=> bm!582489 (= call!582493 (validRegex!8236 (ite c!1223893 (regOne!33513 r!7292) (regOne!33512 r!7292))))))

(declare-fun b!6635320 () Bool)

(declare-fun e!4013056 () Bool)

(assert (=> b!6635320 (= e!4013056 call!582494)))

(declare-fun b!6635321 () Bool)

(assert (=> b!6635321 (= e!4013057 e!4013056)))

(declare-fun res!2719302 () Bool)

(assert (=> b!6635321 (= res!2719302 (not (nullable!6493 (reg!16829 r!7292))))))

(assert (=> b!6635321 (=> (not res!2719302) (not e!4013056))))

(declare-fun b!6635322 () Bool)

(declare-fun res!2719304 () Bool)

(assert (=> b!6635322 (=> (not res!2719304) (not e!4013058))))

(assert (=> b!6635322 (= res!2719304 call!582493)))

(assert (=> b!6635322 (= e!4013055 e!4013058)))

(assert (= (and d!2080060 (not res!2719300)) b!6635314))

(assert (= (and b!6635314 c!1223894) b!6635321))

(assert (= (and b!6635314 (not c!1223894)) b!6635317))

(assert (= (and b!6635321 res!2719302) b!6635320))

(assert (= (and b!6635317 c!1223893) b!6635322))

(assert (= (and b!6635317 (not c!1223893)) b!6635319))

(assert (= (and b!6635322 res!2719304) b!6635318))

(assert (= (and b!6635319 (not res!2719301)) b!6635316))

(assert (= (and b!6635316 res!2719303) b!6635315))

(assert (= (or b!6635318 b!6635315) bm!582487))

(assert (= (or b!6635322 b!6635316) bm!582489))

(assert (= (or b!6635320 bm!582487) bm!582488))

(declare-fun m!7403386 () Bool)

(assert (=> bm!582488 m!7403386))

(declare-fun m!7403388 () Bool)

(assert (=> bm!582489 m!7403388))

(declare-fun m!7403390 () Bool)

(assert (=> b!6635321 m!7403390))

(assert (=> start!647976 d!2080060))

(declare-fun bs!1705399 () Bool)

(declare-fun b!6635364 () Bool)

(assert (= bs!1705399 (and b!6635364 b!6635148)))

(declare-fun lambda!370766 () Int)

(assert (=> bs!1705399 (not (= lambda!370766 lambda!370737))))

(declare-fun bs!1705400 () Bool)

(assert (= bs!1705400 (and b!6635364 d!2080052)))

(assert (=> bs!1705400 (not (= lambda!370766 lambda!370752))))

(declare-fun bs!1705401 () Bool)

(assert (= bs!1705401 (and b!6635364 d!2080054)))

(assert (=> bs!1705401 (not (= lambda!370766 lambda!370758))))

(assert (=> bs!1705399 (not (= lambda!370766 lambda!370736))))

(assert (=> bs!1705401 (not (= lambda!370766 lambda!370757))))

(assert (=> b!6635364 true))

(assert (=> b!6635364 true))

(declare-fun bs!1705402 () Bool)

(declare-fun b!6635367 () Bool)

(assert (= bs!1705402 (and b!6635367 b!6635148)))

(declare-fun lambda!370767 () Int)

(assert (=> bs!1705402 (= lambda!370767 lambda!370737)))

(declare-fun bs!1705403 () Bool)

(assert (= bs!1705403 (and b!6635367 b!6635364)))

(assert (=> bs!1705403 (not (= lambda!370767 lambda!370766))))

(declare-fun bs!1705404 () Bool)

(assert (= bs!1705404 (and b!6635367 d!2080052)))

(assert (=> bs!1705404 (not (= lambda!370767 lambda!370752))))

(declare-fun bs!1705405 () Bool)

(assert (= bs!1705405 (and b!6635367 d!2080054)))

(assert (=> bs!1705405 (= lambda!370767 lambda!370758)))

(assert (=> bs!1705402 (not (= lambda!370767 lambda!370736))))

(assert (=> bs!1705405 (not (= lambda!370767 lambda!370757))))

(assert (=> b!6635367 true))

(assert (=> b!6635367 true))

(declare-fun bm!582494 () Bool)

(declare-fun call!582500 () Bool)

(declare-fun isEmpty!37978 (List!65800) Bool)

(assert (=> bm!582494 (= call!582500 (isEmpty!37978 s!2326))))

(declare-fun b!6635358 () Bool)

(declare-fun e!4013084 () Bool)

(declare-fun e!4013085 () Bool)

(assert (=> b!6635358 (= e!4013084 e!4013085)))

(declare-fun res!2719325 () Bool)

(assert (=> b!6635358 (= res!2719325 (not (is-EmptyLang!16500 r!7292)))))

(assert (=> b!6635358 (=> (not res!2719325) (not e!4013085))))

(declare-fun b!6635359 () Bool)

(declare-fun e!4013080 () Bool)

(declare-fun e!4013083 () Bool)

(assert (=> b!6635359 (= e!4013080 e!4013083)))

(declare-fun c!1223903 () Bool)

(assert (=> b!6635359 (= c!1223903 (is-Star!16500 r!7292))))

(declare-fun b!6635360 () Bool)

(declare-fun e!4013082 () Bool)

(assert (=> b!6635360 (= e!4013082 (= s!2326 (Cons!65676 (c!1223875 r!7292) Nil!65676)))))

(declare-fun b!6635361 () Bool)

(declare-fun c!1223905 () Bool)

(assert (=> b!6635361 (= c!1223905 (is-Union!16500 r!7292))))

(assert (=> b!6635361 (= e!4013082 e!4013080)))

(declare-fun b!6635362 () Bool)

(declare-fun e!4013086 () Bool)

(assert (=> b!6635362 (= e!4013086 (matchRSpec!3601 (regTwo!33513 r!7292) s!2326))))

(declare-fun d!2080062 () Bool)

(declare-fun c!1223906 () Bool)

(assert (=> d!2080062 (= c!1223906 (is-EmptyExpr!16500 r!7292))))

(assert (=> d!2080062 (= (matchRSpec!3601 r!7292 s!2326) e!4013084)))

(declare-fun b!6635363 () Bool)

(declare-fun res!2719326 () Bool)

(declare-fun e!4013081 () Bool)

(assert (=> b!6635363 (=> res!2719326 e!4013081)))

(assert (=> b!6635363 (= res!2719326 call!582500)))

(assert (=> b!6635363 (= e!4013083 e!4013081)))

(declare-fun bm!582495 () Bool)

(declare-fun call!582499 () Bool)

(assert (=> bm!582495 (= call!582499 (Exists!3570 (ite c!1223903 lambda!370766 lambda!370767)))))

(assert (=> b!6635364 (= e!4013081 call!582499)))

(declare-fun b!6635365 () Bool)

(assert (=> b!6635365 (= e!4013084 call!582500)))

(declare-fun b!6635366 () Bool)

(declare-fun c!1223904 () Bool)

(assert (=> b!6635366 (= c!1223904 (is-ElementMatch!16500 r!7292))))

(assert (=> b!6635366 (= e!4013085 e!4013082)))

(assert (=> b!6635367 (= e!4013083 call!582499)))

(declare-fun b!6635368 () Bool)

(assert (=> b!6635368 (= e!4013080 e!4013086)))

(declare-fun res!2719324 () Bool)

(assert (=> b!6635368 (= res!2719324 (matchRSpec!3601 (regOne!33513 r!7292) s!2326))))

(assert (=> b!6635368 (=> res!2719324 e!4013086)))

(assert (= (and d!2080062 c!1223906) b!6635365))

(assert (= (and d!2080062 (not c!1223906)) b!6635358))

(assert (= (and b!6635358 res!2719325) b!6635366))

(assert (= (and b!6635366 c!1223904) b!6635360))

(assert (= (and b!6635366 (not c!1223904)) b!6635361))

(assert (= (and b!6635361 c!1223905) b!6635368))

(assert (= (and b!6635361 (not c!1223905)) b!6635359))

(assert (= (and b!6635368 (not res!2719324)) b!6635362))

(assert (= (and b!6635359 c!1223903) b!6635363))

(assert (= (and b!6635359 (not c!1223903)) b!6635367))

(assert (= (and b!6635363 (not res!2719326)) b!6635364))

(assert (= (or b!6635364 b!6635367) bm!582495))

(assert (= (or b!6635365 b!6635363) bm!582494))

(declare-fun m!7403398 () Bool)

(assert (=> bm!582494 m!7403398))

(declare-fun m!7403400 () Bool)

(assert (=> b!6635362 m!7403400))

(declare-fun m!7403402 () Bool)

(assert (=> bm!582495 m!7403402))

(declare-fun m!7403404 () Bool)

(assert (=> b!6635368 m!7403404))

(assert (=> b!6635146 d!2080062))

(declare-fun b!6635417 () Bool)

(declare-fun e!4013117 () Bool)

(declare-fun e!4013115 () Bool)

(assert (=> b!6635417 (= e!4013117 e!4013115)))

(declare-fun res!2719351 () Bool)

(assert (=> b!6635417 (=> (not res!2719351) (not e!4013115))))

(declare-fun lt!2419461 () Bool)

(assert (=> b!6635417 (= res!2719351 (not lt!2419461))))

(declare-fun b!6635418 () Bool)

(declare-fun res!2719349 () Bool)

(assert (=> b!6635418 (=> res!2719349 e!4013117)))

(declare-fun e!4013118 () Bool)

(assert (=> b!6635418 (= res!2719349 e!4013118)))

(declare-fun res!2719353 () Bool)

(assert (=> b!6635418 (=> (not res!2719353) (not e!4013118))))

(assert (=> b!6635418 (= res!2719353 lt!2419461)))

(declare-fun b!6635419 () Bool)

(declare-fun res!2719348 () Bool)

(declare-fun e!4013119 () Bool)

(assert (=> b!6635419 (=> res!2719348 e!4013119)))

(declare-fun tail!12528 (List!65800) List!65800)

(assert (=> b!6635419 (= res!2719348 (not (isEmpty!37978 (tail!12528 s!2326))))))

(declare-fun b!6635420 () Bool)

(declare-fun res!2719350 () Bool)

(assert (=> b!6635420 (=> (not res!2719350) (not e!4013118))))

(assert (=> b!6635420 (= res!2719350 (isEmpty!37978 (tail!12528 s!2326)))))

(declare-fun b!6635421 () Bool)

(declare-fun res!2719352 () Bool)

(assert (=> b!6635421 (=> (not res!2719352) (not e!4013118))))

(declare-fun call!582503 () Bool)

(assert (=> b!6635421 (= res!2719352 (not call!582503))))

(declare-fun d!2080070 () Bool)

(declare-fun e!4013114 () Bool)

(assert (=> d!2080070 e!4013114))

(declare-fun c!1223922 () Bool)

(assert (=> d!2080070 (= c!1223922 (is-EmptyExpr!16500 r!7292))))

(declare-fun e!4013113 () Bool)

(assert (=> d!2080070 (= lt!2419461 e!4013113)))

(declare-fun c!1223923 () Bool)

(assert (=> d!2080070 (= c!1223923 (isEmpty!37978 s!2326))))

(assert (=> d!2080070 (validRegex!8236 r!7292)))

(assert (=> d!2080070 (= (matchR!8683 r!7292 s!2326) lt!2419461)))

(declare-fun b!6635422 () Bool)

(assert (=> b!6635422 (= e!4013115 e!4013119)))

(declare-fun res!2719347 () Bool)

(assert (=> b!6635422 (=> res!2719347 e!4013119)))

(assert (=> b!6635422 (= res!2719347 call!582503)))

(declare-fun b!6635423 () Bool)

(declare-fun res!2719354 () Bool)

(assert (=> b!6635423 (=> res!2719354 e!4013117)))

(assert (=> b!6635423 (= res!2719354 (not (is-ElementMatch!16500 r!7292)))))

(declare-fun e!4013116 () Bool)

(assert (=> b!6635423 (= e!4013116 e!4013117)))

(declare-fun b!6635424 () Bool)

(assert (=> b!6635424 (= e!4013116 (not lt!2419461))))

(declare-fun bm!582498 () Bool)

(assert (=> bm!582498 (= call!582503 (isEmpty!37978 s!2326))))

(declare-fun b!6635425 () Bool)

(declare-fun head!13443 (List!65800) C!33270)

(assert (=> b!6635425 (= e!4013119 (not (= (head!13443 s!2326) (c!1223875 r!7292))))))

(declare-fun b!6635426 () Bool)

(assert (=> b!6635426 (= e!4013118 (= (head!13443 s!2326) (c!1223875 r!7292)))))

(declare-fun b!6635427 () Bool)

(assert (=> b!6635427 (= e!4013114 e!4013116)))

(declare-fun c!1223921 () Bool)

(assert (=> b!6635427 (= c!1223921 (is-EmptyLang!16500 r!7292))))

(declare-fun b!6635428 () Bool)

(assert (=> b!6635428 (= e!4013114 (= lt!2419461 call!582503))))

(declare-fun b!6635429 () Bool)

(assert (=> b!6635429 (= e!4013113 (nullable!6493 r!7292))))

(declare-fun b!6635430 () Bool)

(declare-fun derivativeStep!5180 (Regex!16500 C!33270) Regex!16500)

(assert (=> b!6635430 (= e!4013113 (matchR!8683 (derivativeStep!5180 r!7292 (head!13443 s!2326)) (tail!12528 s!2326)))))

(assert (= (and d!2080070 c!1223923) b!6635429))

(assert (= (and d!2080070 (not c!1223923)) b!6635430))

(assert (= (and d!2080070 c!1223922) b!6635428))

(assert (= (and d!2080070 (not c!1223922)) b!6635427))

(assert (= (and b!6635427 c!1223921) b!6635424))

(assert (= (and b!6635427 (not c!1223921)) b!6635423))

(assert (= (and b!6635423 (not res!2719354)) b!6635418))

(assert (= (and b!6635418 res!2719353) b!6635421))

(assert (= (and b!6635421 res!2719352) b!6635420))

(assert (= (and b!6635420 res!2719350) b!6635426))

(assert (= (and b!6635418 (not res!2719349)) b!6635417))

(assert (= (and b!6635417 res!2719351) b!6635422))

(assert (= (and b!6635422 (not res!2719347)) b!6635419))

(assert (= (and b!6635419 (not res!2719348)) b!6635425))

(assert (= (or b!6635428 b!6635421 b!6635422) bm!582498))

(declare-fun m!7403406 () Bool)

(assert (=> b!6635430 m!7403406))

(assert (=> b!6635430 m!7403406))

(declare-fun m!7403408 () Bool)

(assert (=> b!6635430 m!7403408))

(declare-fun m!7403410 () Bool)

(assert (=> b!6635430 m!7403410))

(assert (=> b!6635430 m!7403408))

(assert (=> b!6635430 m!7403410))

(declare-fun m!7403412 () Bool)

(assert (=> b!6635430 m!7403412))

(declare-fun m!7403414 () Bool)

(assert (=> b!6635429 m!7403414))

(assert (=> b!6635419 m!7403410))

(assert (=> b!6635419 m!7403410))

(declare-fun m!7403416 () Bool)

(assert (=> b!6635419 m!7403416))

(assert (=> b!6635420 m!7403410))

(assert (=> b!6635420 m!7403410))

(assert (=> b!6635420 m!7403416))

(assert (=> d!2080070 m!7403398))

(assert (=> d!2080070 m!7403272))

(assert (=> b!6635426 m!7403406))

(assert (=> b!6635425 m!7403406))

(assert (=> bm!582498 m!7403398))

(assert (=> b!6635146 d!2080070))

(declare-fun d!2080072 () Bool)

(assert (=> d!2080072 (= (matchR!8683 r!7292 s!2326) (matchRSpec!3601 r!7292 s!2326))))

(declare-fun lt!2419465 () Unit!159355)

(declare-fun choose!49562 (Regex!16500 List!65800) Unit!159355)

(assert (=> d!2080072 (= lt!2419465 (choose!49562 r!7292 s!2326))))

(assert (=> d!2080072 (validRegex!8236 r!7292)))

(assert (=> d!2080072 (= (mainMatchTheorem!3601 r!7292 s!2326) lt!2419465)))

(declare-fun bs!1705406 () Bool)

(assert (= bs!1705406 d!2080072))

(assert (=> bs!1705406 m!7403260))

(assert (=> bs!1705406 m!7403258))

(declare-fun m!7403418 () Bool)

(assert (=> bs!1705406 m!7403418))

(assert (=> bs!1705406 m!7403272))

(assert (=> b!6635146 d!2080072))

(declare-fun bs!1705407 () Bool)

(declare-fun d!2080074 () Bool)

(assert (= bs!1705407 (and d!2080074 d!2080058)))

(declare-fun lambda!370771 () Int)

(assert (=> bs!1705407 (= lambda!370771 lambda!370761)))

(assert (=> d!2080074 (= (inv!84498 setElem!45355) (forall!15696 (exprs!6384 setElem!45355) lambda!370771))))

(declare-fun bs!1705408 () Bool)

(assert (= bs!1705408 d!2080074))

(declare-fun m!7403420 () Bool)

(assert (=> bs!1705408 m!7403420))

(assert (=> setNonEmpty!45355 d!2080074))

(declare-fun d!2080076 () Bool)

(declare-fun e!4013128 () Bool)

(assert (=> d!2080076 e!4013128))

(declare-fun res!2719359 () Bool)

(assert (=> d!2080076 (=> (not res!2719359) (not e!4013128))))

(declare-fun lt!2419468 () List!65801)

(declare-fun noDuplicate!2301 (List!65801) Bool)

(assert (=> d!2080076 (= res!2719359 (noDuplicate!2301 lt!2419468))))

(declare-fun choose!49563 ((Set Context!11768)) List!65801)

(assert (=> d!2080076 (= lt!2419468 (choose!49563 z!1189))))

(assert (=> d!2080076 (= (toList!10284 z!1189) lt!2419468)))

(declare-fun b!6635443 () Bool)

(declare-fun content!12687 (List!65801) (Set Context!11768))

(assert (=> b!6635443 (= e!4013128 (= (content!12687 lt!2419468) z!1189))))

(assert (= (and d!2080076 res!2719359) b!6635443))

(declare-fun m!7403440 () Bool)

(assert (=> d!2080076 m!7403440))

(declare-fun m!7403442 () Bool)

(assert (=> d!2080076 m!7403442))

(declare-fun m!7403444 () Bool)

(assert (=> b!6635443 m!7403444))

(assert (=> b!6635136 d!2080076))

(declare-fun d!2080082 () Bool)

(declare-fun lt!2419471 () Regex!16500)

(assert (=> d!2080082 (validRegex!8236 lt!2419471)))

(assert (=> d!2080082 (= lt!2419471 (generalisedUnion!2344 (unfocusZipperList!1921 zl!343)))))

(assert (=> d!2080082 (= (unfocusZipper!2242 zl!343) lt!2419471)))

(declare-fun bs!1705409 () Bool)

(assert (= bs!1705409 d!2080082))

(declare-fun m!7403446 () Bool)

(assert (=> bs!1705409 m!7403446))

(assert (=> bs!1705409 m!7403278))

(assert (=> bs!1705409 m!7403278))

(assert (=> bs!1705409 m!7403280))

(assert (=> b!6635145 d!2080082))

(declare-fun d!2080084 () Bool)

(declare-fun c!1223934 () Bool)

(assert (=> d!2080084 (= c!1223934 (isEmpty!37978 (t!379466 s!2326)))))

(declare-fun e!4013145 () Bool)

(assert (=> d!2080084 (= (matchZipper!2512 lt!2419398 (t!379466 s!2326)) e!4013145)))

(declare-fun b!6635466 () Bool)

(declare-fun nullableZipper!2241 ((Set Context!11768)) Bool)

(assert (=> b!6635466 (= e!4013145 (nullableZipper!2241 lt!2419398))))

(declare-fun b!6635467 () Bool)

(declare-fun derivationStepZipper!2466 ((Set Context!11768) C!33270) (Set Context!11768))

(assert (=> b!6635467 (= e!4013145 (matchZipper!2512 (derivationStepZipper!2466 lt!2419398 (head!13443 (t!379466 s!2326))) (tail!12528 (t!379466 s!2326))))))

(assert (= (and d!2080084 c!1223934) b!6635466))

(assert (= (and d!2080084 (not c!1223934)) b!6635467))

(declare-fun m!7403448 () Bool)

(assert (=> d!2080084 m!7403448))

(declare-fun m!7403450 () Bool)

(assert (=> b!6635466 m!7403450))

(declare-fun m!7403452 () Bool)

(assert (=> b!6635467 m!7403452))

(assert (=> b!6635467 m!7403452))

(declare-fun m!7403454 () Bool)

(assert (=> b!6635467 m!7403454))

(declare-fun m!7403456 () Bool)

(assert (=> b!6635467 m!7403456))

(assert (=> b!6635467 m!7403454))

(assert (=> b!6635467 m!7403456))

(declare-fun m!7403458 () Bool)

(assert (=> b!6635467 m!7403458))

(assert (=> b!6635134 d!2080084))

(declare-fun bs!1705410 () Bool)

(declare-fun d!2080086 () Bool)

(assert (= bs!1705410 (and d!2080086 d!2080058)))

(declare-fun lambda!370774 () Int)

(assert (=> bs!1705410 (= lambda!370774 lambda!370761)))

(declare-fun bs!1705411 () Bool)

(assert (= bs!1705411 (and d!2080086 d!2080074)))

(assert (=> bs!1705411 (= lambda!370774 lambda!370771)))

(declare-fun b!6635497 () Bool)

(declare-fun e!4013168 () Bool)

(declare-fun e!4013167 () Bool)

(assert (=> b!6635497 (= e!4013168 e!4013167)))

(declare-fun c!1223945 () Bool)

(assert (=> b!6635497 (= c!1223945 (isEmpty!37973 (unfocusZipperList!1921 zl!343)))))

(declare-fun b!6635498 () Bool)

(declare-fun e!4013169 () Regex!16500)

(assert (=> b!6635498 (= e!4013169 (Union!16500 (h!72123 (unfocusZipperList!1921 zl!343)) (generalisedUnion!2344 (t!379465 (unfocusZipperList!1921 zl!343)))))))

(declare-fun b!6635499 () Bool)

(declare-fun e!4013166 () Regex!16500)

(assert (=> b!6635499 (= e!4013166 (h!72123 (unfocusZipperList!1921 zl!343)))))

(declare-fun b!6635500 () Bool)

(declare-fun e!4013170 () Bool)

(assert (=> b!6635500 (= e!4013170 (isEmpty!37973 (t!379465 (unfocusZipperList!1921 zl!343))))))

(declare-fun b!6635501 () Bool)

(declare-fun e!4013165 () Bool)

(declare-fun lt!2419474 () Regex!16500)

(declare-fun head!13444 (List!65799) Regex!16500)

(assert (=> b!6635501 (= e!4013165 (= lt!2419474 (head!13444 (unfocusZipperList!1921 zl!343))))))

(assert (=> d!2080086 e!4013168))

(declare-fun res!2719379 () Bool)

(assert (=> d!2080086 (=> (not res!2719379) (not e!4013168))))

(assert (=> d!2080086 (= res!2719379 (validRegex!8236 lt!2419474))))

(assert (=> d!2080086 (= lt!2419474 e!4013166)))

(declare-fun c!1223947 () Bool)

(assert (=> d!2080086 (= c!1223947 e!4013170)))

(declare-fun res!2719380 () Bool)

(assert (=> d!2080086 (=> (not res!2719380) (not e!4013170))))

(assert (=> d!2080086 (= res!2719380 (is-Cons!65675 (unfocusZipperList!1921 zl!343)))))

(assert (=> d!2080086 (forall!15696 (unfocusZipperList!1921 zl!343) lambda!370774)))

(assert (=> d!2080086 (= (generalisedUnion!2344 (unfocusZipperList!1921 zl!343)) lt!2419474)))

(declare-fun b!6635502 () Bool)

(declare-fun isUnion!1313 (Regex!16500) Bool)

(assert (=> b!6635502 (= e!4013165 (isUnion!1313 lt!2419474))))

(declare-fun b!6635503 () Bool)

(declare-fun isEmptyLang!1883 (Regex!16500) Bool)

(assert (=> b!6635503 (= e!4013167 (isEmptyLang!1883 lt!2419474))))

(declare-fun b!6635504 () Bool)

(assert (=> b!6635504 (= e!4013169 EmptyLang!16500)))

(declare-fun b!6635505 () Bool)

(assert (=> b!6635505 (= e!4013167 e!4013165)))

(declare-fun c!1223948 () Bool)

(declare-fun tail!12529 (List!65799) List!65799)

(assert (=> b!6635505 (= c!1223948 (isEmpty!37973 (tail!12529 (unfocusZipperList!1921 zl!343))))))

(declare-fun b!6635506 () Bool)

(assert (=> b!6635506 (= e!4013166 e!4013169)))

(declare-fun c!1223946 () Bool)

(assert (=> b!6635506 (= c!1223946 (is-Cons!65675 (unfocusZipperList!1921 zl!343)))))

(assert (= (and d!2080086 res!2719380) b!6635500))

(assert (= (and d!2080086 c!1223947) b!6635499))

(assert (= (and d!2080086 (not c!1223947)) b!6635506))

(assert (= (and b!6635506 c!1223946) b!6635498))

(assert (= (and b!6635506 (not c!1223946)) b!6635504))

(assert (= (and d!2080086 res!2719379) b!6635497))

(assert (= (and b!6635497 c!1223945) b!6635503))

(assert (= (and b!6635497 (not c!1223945)) b!6635505))

(assert (= (and b!6635505 c!1223948) b!6635501))

(assert (= (and b!6635505 (not c!1223948)) b!6635502))

(assert (=> b!6635497 m!7403278))

(declare-fun m!7403466 () Bool)

(assert (=> b!6635497 m!7403466))

(declare-fun m!7403468 () Bool)

(assert (=> d!2080086 m!7403468))

(assert (=> d!2080086 m!7403278))

(declare-fun m!7403470 () Bool)

(assert (=> d!2080086 m!7403470))

(assert (=> b!6635501 m!7403278))

(declare-fun m!7403472 () Bool)

(assert (=> b!6635501 m!7403472))

(declare-fun m!7403474 () Bool)

(assert (=> b!6635502 m!7403474))

(declare-fun m!7403476 () Bool)

(assert (=> b!6635500 m!7403476))

(declare-fun m!7403478 () Bool)

(assert (=> b!6635503 m!7403478))

(assert (=> b!6635505 m!7403278))

(declare-fun m!7403480 () Bool)

(assert (=> b!6635505 m!7403480))

(assert (=> b!6635505 m!7403480))

(declare-fun m!7403482 () Bool)

(assert (=> b!6635505 m!7403482))

(declare-fun m!7403484 () Bool)

(assert (=> b!6635498 m!7403484))

(assert (=> b!6635143 d!2080086))

(declare-fun bs!1705412 () Bool)

(declare-fun d!2080090 () Bool)

(assert (= bs!1705412 (and d!2080090 d!2080058)))

(declare-fun lambda!370777 () Int)

(assert (=> bs!1705412 (= lambda!370777 lambda!370761)))

(declare-fun bs!1705413 () Bool)

(assert (= bs!1705413 (and d!2080090 d!2080074)))

(assert (=> bs!1705413 (= lambda!370777 lambda!370771)))

(declare-fun bs!1705414 () Bool)

(assert (= bs!1705414 (and d!2080090 d!2080086)))

(assert (=> bs!1705414 (= lambda!370777 lambda!370774)))

(declare-fun lt!2419477 () List!65799)

(assert (=> d!2080090 (forall!15696 lt!2419477 lambda!370777)))

(declare-fun e!4013173 () List!65799)

(assert (=> d!2080090 (= lt!2419477 e!4013173)))

(declare-fun c!1223951 () Bool)

(assert (=> d!2080090 (= c!1223951 (is-Cons!65677 zl!343))))

(assert (=> d!2080090 (= (unfocusZipperList!1921 zl!343) lt!2419477)))

(declare-fun b!6635511 () Bool)

(assert (=> b!6635511 (= e!4013173 (Cons!65675 (generalisedConcat!2097 (exprs!6384 (h!72125 zl!343))) (unfocusZipperList!1921 (t!379467 zl!343))))))

(declare-fun b!6635512 () Bool)

(assert (=> b!6635512 (= e!4013173 Nil!65675)))

(assert (= (and d!2080090 c!1223951) b!6635511))

(assert (= (and d!2080090 (not c!1223951)) b!6635512))

(declare-fun m!7403486 () Bool)

(assert (=> d!2080090 m!7403486))

(assert (=> b!6635511 m!7403268))

(declare-fun m!7403488 () Bool)

(assert (=> b!6635511 m!7403488))

(assert (=> b!6635143 d!2080090))

(declare-fun d!2080092 () Bool)

(declare-fun dynLambda!26163 (Int Context!11768) (Set Context!11768))

(assert (=> d!2080092 (= (flatMap!2005 z!1189 lambda!370738) (dynLambda!26163 lambda!370738 (h!72125 zl!343)))))

(declare-fun lt!2419480 () Unit!159355)

(declare-fun choose!49564 ((Set Context!11768) Context!11768 Int) Unit!159355)

(assert (=> d!2080092 (= lt!2419480 (choose!49564 z!1189 (h!72125 zl!343) lambda!370738))))

(assert (=> d!2080092 (= z!1189 (set.insert (h!72125 zl!343) (as set.empty (Set Context!11768))))))

(assert (=> d!2080092 (= (lemmaFlatMapOnSingletonSet!1531 z!1189 (h!72125 zl!343) lambda!370738) lt!2419480)))

(declare-fun b_lambda!250833 () Bool)

(assert (=> (not b_lambda!250833) (not d!2080092)))

(declare-fun bs!1705415 () Bool)

(assert (= bs!1705415 d!2080092))

(assert (=> bs!1705415 m!7403236))

(declare-fun m!7403490 () Bool)

(assert (=> bs!1705415 m!7403490))

(declare-fun m!7403494 () Bool)

(assert (=> bs!1705415 m!7403494))

(declare-fun m!7403496 () Bool)

(assert (=> bs!1705415 m!7403496))

(assert (=> b!6635153 d!2080092))

(declare-fun b!6635529 () Bool)

(declare-fun e!4013183 () (Set Context!11768))

(assert (=> b!6635529 (= e!4013183 (as set.empty (Set Context!11768)))))

(declare-fun bm!582510 () Bool)

(declare-fun call!582515 () (Set Context!11768))

(assert (=> bm!582510 (= call!582515 (derivationStepZipperDown!1748 (h!72123 (exprs!6384 lt!2419402)) (Context!11769 (t!379465 (exprs!6384 lt!2419402))) (h!72124 s!2326)))))

(declare-fun b!6635530 () Bool)

(assert (=> b!6635530 (= e!4013183 call!582515)))

(declare-fun b!6635531 () Bool)

(declare-fun e!4013185 () (Set Context!11768))

(assert (=> b!6635531 (= e!4013185 (set.union call!582515 (derivationStepZipperUp!1674 (Context!11769 (t!379465 (exprs!6384 lt!2419402))) (h!72124 s!2326))))))

(declare-fun b!6635532 () Bool)

(declare-fun e!4013184 () Bool)

(assert (=> b!6635532 (= e!4013184 (nullable!6493 (h!72123 (exprs!6384 lt!2419402))))))

(declare-fun d!2080094 () Bool)

(declare-fun c!1223959 () Bool)

(assert (=> d!2080094 (= c!1223959 e!4013184)))

(declare-fun res!2719383 () Bool)

(assert (=> d!2080094 (=> (not res!2719383) (not e!4013184))))

(assert (=> d!2080094 (= res!2719383 (is-Cons!65675 (exprs!6384 lt!2419402)))))

(assert (=> d!2080094 (= (derivationStepZipperUp!1674 lt!2419402 (h!72124 s!2326)) e!4013185)))

(declare-fun b!6635533 () Bool)

(assert (=> b!6635533 (= e!4013185 e!4013183)))

(declare-fun c!1223960 () Bool)

(assert (=> b!6635533 (= c!1223960 (is-Cons!65675 (exprs!6384 lt!2419402)))))

(assert (= (and d!2080094 res!2719383) b!6635532))

(assert (= (and d!2080094 c!1223959) b!6635531))

(assert (= (and d!2080094 (not c!1223959)) b!6635533))

(assert (= (and b!6635533 c!1223960) b!6635530))

(assert (= (and b!6635533 (not c!1223960)) b!6635529))

(assert (= (or b!6635531 b!6635530) bm!582510))

(declare-fun m!7403508 () Bool)

(assert (=> bm!582510 m!7403508))

(declare-fun m!7403510 () Bool)

(assert (=> b!6635531 m!7403510))

(declare-fun m!7403512 () Bool)

(assert (=> b!6635532 m!7403512))

(assert (=> b!6635153 d!2080094))

(declare-fun d!2080098 () Bool)

(declare-fun choose!49565 ((Set Context!11768) Int) (Set Context!11768))

(assert (=> d!2080098 (= (flatMap!2005 z!1189 lambda!370738) (choose!49565 z!1189 lambda!370738))))

(declare-fun bs!1705417 () Bool)

(assert (= bs!1705417 d!2080098))

(declare-fun m!7403516 () Bool)

(assert (=> bs!1705417 m!7403516))

(assert (=> b!6635153 d!2080098))

(declare-fun d!2080102 () Bool)

(declare-fun nullableFct!2415 (Regex!16500) Bool)

(assert (=> d!2080102 (= (nullable!6493 (h!72123 (exprs!6384 (h!72125 zl!343)))) (nullableFct!2415 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun bs!1705418 () Bool)

(assert (= bs!1705418 d!2080102))

(declare-fun m!7403518 () Bool)

(assert (=> bs!1705418 m!7403518))

(assert (=> b!6635153 d!2080102))

(declare-fun b!6635534 () Bool)

(declare-fun e!4013186 () (Set Context!11768))

(assert (=> b!6635534 (= e!4013186 (as set.empty (Set Context!11768)))))

(declare-fun bm!582511 () Bool)

(declare-fun call!582516 () (Set Context!11768))

(assert (=> bm!582511 (= call!582516 (derivationStepZipperDown!1748 (h!72123 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343))))))) (Context!11769 (t!379465 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343)))))))) (h!72124 s!2326)))))

(declare-fun b!6635535 () Bool)

(assert (=> b!6635535 (= e!4013186 call!582516)))

(declare-fun b!6635536 () Bool)

(declare-fun e!4013188 () (Set Context!11768))

(assert (=> b!6635536 (= e!4013188 (set.union call!582516 (derivationStepZipperUp!1674 (Context!11769 (t!379465 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343)))))))) (h!72124 s!2326))))))

(declare-fun b!6635537 () Bool)

(declare-fun e!4013187 () Bool)

(assert (=> b!6635537 (= e!4013187 (nullable!6493 (h!72123 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343)))))))))))

(declare-fun d!2080104 () Bool)

(declare-fun c!1223961 () Bool)

(assert (=> d!2080104 (= c!1223961 e!4013187)))

(declare-fun res!2719384 () Bool)

(assert (=> d!2080104 (=> (not res!2719384) (not e!4013187))))

(assert (=> d!2080104 (= res!2719384 (is-Cons!65675 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343))))))))))

(assert (=> d!2080104 (= (derivationStepZipperUp!1674 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343))))) (h!72124 s!2326)) e!4013188)))

(declare-fun b!6635538 () Bool)

(assert (=> b!6635538 (= e!4013188 e!4013186)))

(declare-fun c!1223962 () Bool)

(assert (=> b!6635538 (= c!1223962 (is-Cons!65675 (exprs!6384 (Context!11769 (Cons!65675 (h!72123 (exprs!6384 (h!72125 zl!343))) (t!379465 (exprs!6384 (h!72125 zl!343))))))))))

(assert (= (and d!2080104 res!2719384) b!6635537))

(assert (= (and d!2080104 c!1223961) b!6635536))

(assert (= (and d!2080104 (not c!1223961)) b!6635538))

(assert (= (and b!6635538 c!1223962) b!6635535))

(assert (= (and b!6635538 (not c!1223962)) b!6635534))

(assert (= (or b!6635536 b!6635535) bm!582511))

(declare-fun m!7403520 () Bool)

(assert (=> bm!582511 m!7403520))

(declare-fun m!7403522 () Bool)

(assert (=> b!6635536 m!7403522))

(declare-fun m!7403524 () Bool)

(assert (=> b!6635537 m!7403524))

(assert (=> b!6635153 d!2080104))

(declare-fun b!6635539 () Bool)

(declare-fun e!4013189 () (Set Context!11768))

(assert (=> b!6635539 (= e!4013189 (as set.empty (Set Context!11768)))))

(declare-fun bm!582512 () Bool)

(declare-fun call!582517 () (Set Context!11768))

(assert (=> bm!582512 (= call!582517 (derivationStepZipperDown!1748 (h!72123 (exprs!6384 (h!72125 zl!343))) (Context!11769 (t!379465 (exprs!6384 (h!72125 zl!343)))) (h!72124 s!2326)))))

(declare-fun b!6635540 () Bool)

(assert (=> b!6635540 (= e!4013189 call!582517)))

(declare-fun e!4013191 () (Set Context!11768))

(declare-fun b!6635541 () Bool)

(assert (=> b!6635541 (= e!4013191 (set.union call!582517 (derivationStepZipperUp!1674 (Context!11769 (t!379465 (exprs!6384 (h!72125 zl!343)))) (h!72124 s!2326))))))

(declare-fun b!6635542 () Bool)

(declare-fun e!4013190 () Bool)

(assert (=> b!6635542 (= e!4013190 (nullable!6493 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun d!2080106 () Bool)

(declare-fun c!1223963 () Bool)

(assert (=> d!2080106 (= c!1223963 e!4013190)))

(declare-fun res!2719385 () Bool)

(assert (=> d!2080106 (=> (not res!2719385) (not e!4013190))))

(assert (=> d!2080106 (= res!2719385 (is-Cons!65675 (exprs!6384 (h!72125 zl!343))))))

(assert (=> d!2080106 (= (derivationStepZipperUp!1674 (h!72125 zl!343) (h!72124 s!2326)) e!4013191)))

(declare-fun b!6635543 () Bool)

(assert (=> b!6635543 (= e!4013191 e!4013189)))

(declare-fun c!1223964 () Bool)

(assert (=> b!6635543 (= c!1223964 (is-Cons!65675 (exprs!6384 (h!72125 zl!343))))))

(assert (= (and d!2080106 res!2719385) b!6635542))

(assert (= (and d!2080106 c!1223963) b!6635541))

(assert (= (and d!2080106 (not c!1223963)) b!6635543))

(assert (= (and b!6635543 c!1223964) b!6635540))

(assert (= (and b!6635543 (not c!1223964)) b!6635539))

(assert (= (or b!6635541 b!6635540) bm!582512))

(declare-fun m!7403526 () Bool)

(assert (=> bm!582512 m!7403526))

(declare-fun m!7403528 () Bool)

(assert (=> b!6635541 m!7403528))

(assert (=> b!6635542 m!7403240))

(assert (=> b!6635153 d!2080106))

(declare-fun bm!582525 () Bool)

(declare-fun call!582533 () List!65799)

(declare-fun c!1223979 () Bool)

(declare-fun c!1223976 () Bool)

(declare-fun $colon$colon!2337 (List!65799 Regex!16500) List!65799)

(assert (=> bm!582525 (= call!582533 ($colon$colon!2337 (exprs!6384 lt!2419402) (ite (or c!1223976 c!1223979) (regTwo!33512 (h!72123 (exprs!6384 (h!72125 zl!343)))) (h!72123 (exprs!6384 (h!72125 zl!343))))))))

(declare-fun b!6635566 () Bool)

(declare-fun e!4013209 () Bool)

(assert (=> b!6635566 (= e!4013209 (nullable!6493 (regOne!33512 (h!72123 (exprs!6384 (h!72125 zl!343))))))))

(declare-fun b!6635567 () Bool)

(declare-fun e!4013206 () (Set Context!11768))

(declare-fun call!582534 () (Set Context!11768))

(assert (=> b!6635567 (= e!4013206 call!582534)))

(declare-fun b!6635568 () Bool)

(declare-fun e!4013204 () (Set Context!11768))

(assert (=> b!6635568 (= e!4013204 (set.insert lt!2419402 (as set.empty (Set Context!11768))))))

(declare-fun b!6635569 () Bool)

(assert (=> b!6635569 (= c!1223976 e!4013209)))

(declare-fun res!2719388 () Bool)

(assert (=> b!6635569 (=> (not res!2719388) (not e!4013209))))

(assert (=> b!6635569 (= res!2719388 (is-Concat!25345 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun e!4013207 () (Set Context!11768))

(declare-fun e!4013205 () (Set Context!11768))

(assert (=> b!6635569 (= e!4013207 e!4013205)))

(declare-fun bm!582526 () Bool)

(declare-fun call!582535 () (Set Context!11768))

(declare-fun call!582532 () (Set Context!11768))

(assert (=> bm!582526 (= call!582535 call!582532)))

(declare-fun c!1223978 () Bool)

(declare-fun bm!582527 () Bool)

(declare-fun call!582531 () List!65799)

(assert (=> bm!582527 (= call!582532 (derivationStepZipperDown!1748 (ite c!1223978 (regOne!33513 (h!72123 (exprs!6384 (h!72125 zl!343)))) (ite c!1223976 (regTwo!33512 (h!72123 (exprs!6384 (h!72125 zl!343)))) (ite c!1223979 (regOne!33512 (h!72123 (exprs!6384 (h!72125 zl!343)))) (reg!16829 (h!72123 (exprs!6384 (h!72125 zl!343))))))) (ite (or c!1223978 c!1223976) lt!2419402 (Context!11769 call!582531)) (h!72124 s!2326)))))

(declare-fun bm!582528 () Bool)

(declare-fun call!582530 () (Set Context!11768))

(assert (=> bm!582528 (= call!582530 (derivationStepZipperDown!1748 (ite c!1223978 (regTwo!33513 (h!72123 (exprs!6384 (h!72125 zl!343)))) (regOne!33512 (h!72123 (exprs!6384 (h!72125 zl!343))))) (ite c!1223978 lt!2419402 (Context!11769 call!582533)) (h!72124 s!2326)))))

(declare-fun b!6635571 () Bool)

(declare-fun e!4013208 () (Set Context!11768))

(assert (=> b!6635571 (= e!4013205 e!4013208)))

(assert (=> b!6635571 (= c!1223979 (is-Concat!25345 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635572 () Bool)

(assert (=> b!6635572 (= e!4013206 (as set.empty (Set Context!11768)))))

(declare-fun bm!582529 () Bool)

(assert (=> bm!582529 (= call!582531 call!582533)))

(declare-fun b!6635573 () Bool)

(assert (=> b!6635573 (= e!4013208 call!582534)))

(declare-fun bm!582530 () Bool)

(assert (=> bm!582530 (= call!582534 call!582535)))

(declare-fun b!6635574 () Bool)

(declare-fun c!1223977 () Bool)

(assert (=> b!6635574 (= c!1223977 (is-Star!16500 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(assert (=> b!6635574 (= e!4013208 e!4013206)))

(declare-fun d!2080108 () Bool)

(declare-fun c!1223975 () Bool)

(assert (=> d!2080108 (= c!1223975 (and (is-ElementMatch!16500 (h!72123 (exprs!6384 (h!72125 zl!343)))) (= (c!1223875 (h!72123 (exprs!6384 (h!72125 zl!343)))) (h!72124 s!2326))))))

(assert (=> d!2080108 (= (derivationStepZipperDown!1748 (h!72123 (exprs!6384 (h!72125 zl!343))) lt!2419402 (h!72124 s!2326)) e!4013204)))

(declare-fun b!6635570 () Bool)

(assert (=> b!6635570 (= e!4013204 e!4013207)))

(assert (=> b!6635570 (= c!1223978 (is-Union!16500 (h!72123 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635575 () Bool)

(assert (=> b!6635575 (= e!4013205 (set.union call!582530 call!582535))))

(declare-fun b!6635576 () Bool)

(assert (=> b!6635576 (= e!4013207 (set.union call!582532 call!582530))))

(assert (= (and d!2080108 c!1223975) b!6635568))

(assert (= (and d!2080108 (not c!1223975)) b!6635570))

(assert (= (and b!6635570 c!1223978) b!6635576))

(assert (= (and b!6635570 (not c!1223978)) b!6635569))

(assert (= (and b!6635569 res!2719388) b!6635566))

(assert (= (and b!6635569 c!1223976) b!6635575))

(assert (= (and b!6635569 (not c!1223976)) b!6635571))

(assert (= (and b!6635571 c!1223979) b!6635573))

(assert (= (and b!6635571 (not c!1223979)) b!6635574))

(assert (= (and b!6635574 c!1223977) b!6635567))

(assert (= (and b!6635574 (not c!1223977)) b!6635572))

(assert (= (or b!6635573 b!6635567) bm!582529))

(assert (= (or b!6635573 b!6635567) bm!582530))

(assert (= (or b!6635575 bm!582529) bm!582525))

(assert (= (or b!6635575 bm!582530) bm!582526))

(assert (= (or b!6635576 b!6635575) bm!582528))

(assert (= (or b!6635576 bm!582526) bm!582527))

(declare-fun m!7403538 () Bool)

(assert (=> bm!582527 m!7403538))

(declare-fun m!7403540 () Bool)

(assert (=> bm!582528 m!7403540))

(declare-fun m!7403542 () Bool)

(assert (=> bm!582525 m!7403542))

(declare-fun m!7403544 () Bool)

(assert (=> b!6635566 m!7403544))

(declare-fun m!7403546 () Bool)

(assert (=> b!6635568 m!7403546))

(assert (=> b!6635153 d!2080108))

(declare-fun d!2080114 () Bool)

(assert (=> d!2080114 (= (nullable!6493 (regOne!33512 (regOne!33512 r!7292))) (nullableFct!2415 (regOne!33512 (regOne!33512 r!7292))))))

(declare-fun bs!1705422 () Bool)

(assert (= bs!1705422 d!2080114))

(declare-fun m!7403548 () Bool)

(assert (=> bs!1705422 m!7403548))

(assert (=> b!6635152 d!2080114))

(declare-fun d!2080116 () Bool)

(assert (=> d!2080116 (= (isEmpty!37973 (t!379465 (exprs!6384 (h!72125 zl!343)))) (is-Nil!65675 (t!379465 (exprs!6384 (h!72125 zl!343)))))))

(assert (=> b!6635141 d!2080116))

(declare-fun d!2080118 () Bool)

(assert (=> d!2080118 (= (isEmpty!37974 (t!379467 zl!343)) (is-Nil!65677 (t!379467 zl!343)))))

(assert (=> b!6635150 d!2080118))

(declare-fun bs!1705423 () Bool)

(declare-fun d!2080120 () Bool)

(assert (= bs!1705423 (and d!2080120 d!2080058)))

(declare-fun lambda!370783 () Int)

(assert (=> bs!1705423 (= lambda!370783 lambda!370761)))

(declare-fun bs!1705424 () Bool)

(assert (= bs!1705424 (and d!2080120 d!2080074)))

(assert (=> bs!1705424 (= lambda!370783 lambda!370771)))

(declare-fun bs!1705425 () Bool)

(assert (= bs!1705425 (and d!2080120 d!2080086)))

(assert (=> bs!1705425 (= lambda!370783 lambda!370774)))

(declare-fun bs!1705426 () Bool)

(assert (= bs!1705426 (and d!2080120 d!2080090)))

(assert (=> bs!1705426 (= lambda!370783 lambda!370777)))

(declare-fun e!4013235 () Bool)

(assert (=> d!2080120 e!4013235))

(declare-fun res!2719395 () Bool)

(assert (=> d!2080120 (=> (not res!2719395) (not e!4013235))))

(declare-fun lt!2419489 () Regex!16500)

(assert (=> d!2080120 (= res!2719395 (validRegex!8236 lt!2419489))))

(declare-fun e!4013236 () Regex!16500)

(assert (=> d!2080120 (= lt!2419489 e!4013236)))

(declare-fun c!1223999 () Bool)

(declare-fun e!4013234 () Bool)

(assert (=> d!2080120 (= c!1223999 e!4013234)))

(declare-fun res!2719396 () Bool)

(assert (=> d!2080120 (=> (not res!2719396) (not e!4013234))))

(assert (=> d!2080120 (= res!2719396 (is-Cons!65675 (exprs!6384 (h!72125 zl!343))))))

(assert (=> d!2080120 (forall!15696 (exprs!6384 (h!72125 zl!343)) lambda!370783)))

(assert (=> d!2080120 (= (generalisedConcat!2097 (exprs!6384 (h!72125 zl!343))) lt!2419489)))

(declare-fun b!6635619 () Bool)

(assert (=> b!6635619 (= e!4013236 (h!72123 (exprs!6384 (h!72125 zl!343))))))

(declare-fun b!6635620 () Bool)

(declare-fun e!4013239 () Bool)

(assert (=> b!6635620 (= e!4013239 (= lt!2419489 (head!13444 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635621 () Bool)

(declare-fun e!4013238 () Regex!16500)

(assert (=> b!6635621 (= e!4013238 EmptyExpr!16500)))

(declare-fun b!6635622 () Bool)

(assert (=> b!6635622 (= e!4013236 e!4013238)))

(declare-fun c!1224001 () Bool)

(assert (=> b!6635622 (= c!1224001 (is-Cons!65675 (exprs!6384 (h!72125 zl!343))))))

(declare-fun b!6635623 () Bool)

(assert (=> b!6635623 (= e!4013234 (isEmpty!37973 (t!379465 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635624 () Bool)

(assert (=> b!6635624 (= e!4013238 (Concat!25345 (h!72123 (exprs!6384 (h!72125 zl!343))) (generalisedConcat!2097 (t!379465 (exprs!6384 (h!72125 zl!343))))))))

(declare-fun b!6635625 () Bool)

(declare-fun isConcat!1398 (Regex!16500) Bool)

(assert (=> b!6635625 (= e!4013239 (isConcat!1398 lt!2419489))))

(declare-fun b!6635626 () Bool)

(declare-fun e!4013237 () Bool)

(assert (=> b!6635626 (= e!4013237 e!4013239)))

(declare-fun c!1224000 () Bool)

(assert (=> b!6635626 (= c!1224000 (isEmpty!37973 (tail!12529 (exprs!6384 (h!72125 zl!343)))))))

(declare-fun b!6635627 () Bool)

(assert (=> b!6635627 (= e!4013235 e!4013237)))

(declare-fun c!1223998 () Bool)

(assert (=> b!6635627 (= c!1223998 (isEmpty!37973 (exprs!6384 (h!72125 zl!343))))))

(declare-fun b!6635628 () Bool)

(declare-fun isEmptyExpr!1875 (Regex!16500) Bool)

(assert (=> b!6635628 (= e!4013237 (isEmptyExpr!1875 lt!2419489))))

(assert (= (and d!2080120 res!2719396) b!6635623))

(assert (= (and d!2080120 c!1223999) b!6635619))

(assert (= (and d!2080120 (not c!1223999)) b!6635622))

(assert (= (and b!6635622 c!1224001) b!6635624))

(assert (= (and b!6635622 (not c!1224001)) b!6635621))

(assert (= (and d!2080120 res!2719395) b!6635627))

(assert (= (and b!6635627 c!1223998) b!6635628))

(assert (= (and b!6635627 (not c!1223998)) b!6635626))

(assert (= (and b!6635626 c!1224000) b!6635620))

(assert (= (and b!6635626 (not c!1224000)) b!6635625))

(declare-fun m!7403550 () Bool)

(assert (=> b!6635625 m!7403550))

(declare-fun m!7403552 () Bool)

(assert (=> b!6635620 m!7403552))

(declare-fun m!7403554 () Bool)

(assert (=> b!6635624 m!7403554))

(declare-fun m!7403556 () Bool)

(assert (=> d!2080120 m!7403556))

(declare-fun m!7403558 () Bool)

(assert (=> d!2080120 m!7403558))

(assert (=> b!6635623 m!7403274))

(declare-fun m!7403560 () Bool)

(assert (=> b!6635628 m!7403560))

(declare-fun m!7403562 () Bool)

(assert (=> b!6635627 m!7403562))

(declare-fun m!7403564 () Bool)

(assert (=> b!6635626 m!7403564))

(assert (=> b!6635626 m!7403564))

(declare-fun m!7403566 () Bool)

(assert (=> b!6635626 m!7403566))

(assert (=> b!6635140 d!2080120))

(declare-fun e!4013242 () Bool)

(declare-fun d!2080122 () Bool)

(assert (=> d!2080122 (= (matchZipper!2512 (set.union lt!2419396 lt!2419398) (t!379466 s!2326)) e!4013242)))

(declare-fun res!2719399 () Bool)

(assert (=> d!2080122 (=> res!2719399 e!4013242)))

(assert (=> d!2080122 (= res!2719399 (matchZipper!2512 lt!2419396 (t!379466 s!2326)))))

(declare-fun lt!2419492 () Unit!159355)

(declare-fun choose!49567 ((Set Context!11768) (Set Context!11768) List!65800) Unit!159355)

(assert (=> d!2080122 (= lt!2419492 (choose!49567 lt!2419396 lt!2419398 (t!379466 s!2326)))))

(assert (=> d!2080122 (= (lemmaZipperConcatMatchesSameAsBothZippers!1331 lt!2419396 lt!2419398 (t!379466 s!2326)) lt!2419492)))

(declare-fun b!6635631 () Bool)

(assert (=> b!6635631 (= e!4013242 (matchZipper!2512 lt!2419398 (t!379466 s!2326)))))

(assert (= (and d!2080122 (not res!2719399)) b!6635631))

(assert (=> d!2080122 m!7403226))

(assert (=> d!2080122 m!7403224))

(declare-fun m!7403568 () Bool)

(assert (=> d!2080122 m!7403568))

(assert (=> b!6635631 m!7403228))

(assert (=> b!6635139 d!2080122))

(declare-fun d!2080124 () Bool)

(declare-fun c!1224002 () Bool)

(assert (=> d!2080124 (= c!1224002 (isEmpty!37978 (t!379466 s!2326)))))

(declare-fun e!4013243 () Bool)

(assert (=> d!2080124 (= (matchZipper!2512 lt!2419396 (t!379466 s!2326)) e!4013243)))

(declare-fun b!6635632 () Bool)

(assert (=> b!6635632 (= e!4013243 (nullableZipper!2241 lt!2419396))))

(declare-fun b!6635633 () Bool)

(assert (=> b!6635633 (= e!4013243 (matchZipper!2512 (derivationStepZipper!2466 lt!2419396 (head!13443 (t!379466 s!2326))) (tail!12528 (t!379466 s!2326))))))

(assert (= (and d!2080124 c!1224002) b!6635632))

(assert (= (and d!2080124 (not c!1224002)) b!6635633))

(assert (=> d!2080124 m!7403448))

(declare-fun m!7403570 () Bool)

(assert (=> b!6635632 m!7403570))

(assert (=> b!6635633 m!7403452))

(assert (=> b!6635633 m!7403452))

(declare-fun m!7403572 () Bool)

(assert (=> b!6635633 m!7403572))

(assert (=> b!6635633 m!7403456))

(assert (=> b!6635633 m!7403572))

(assert (=> b!6635633 m!7403456))

(declare-fun m!7403574 () Bool)

(assert (=> b!6635633 m!7403574))

(assert (=> b!6635139 d!2080124))

(declare-fun d!2080126 () Bool)

(declare-fun c!1224003 () Bool)

(assert (=> d!2080126 (= c!1224003 (isEmpty!37978 (t!379466 s!2326)))))

(declare-fun e!4013244 () Bool)

(assert (=> d!2080126 (= (matchZipper!2512 (set.union lt!2419396 lt!2419398) (t!379466 s!2326)) e!4013244)))

(declare-fun b!6635634 () Bool)

(assert (=> b!6635634 (= e!4013244 (nullableZipper!2241 (set.union lt!2419396 lt!2419398)))))

(declare-fun b!6635635 () Bool)

(assert (=> b!6635635 (= e!4013244 (matchZipper!2512 (derivationStepZipper!2466 (set.union lt!2419396 lt!2419398) (head!13443 (t!379466 s!2326))) (tail!12528 (t!379466 s!2326))))))

(assert (= (and d!2080126 c!1224003) b!6635634))

(assert (= (and d!2080126 (not c!1224003)) b!6635635))

(assert (=> d!2080126 m!7403448))

(declare-fun m!7403576 () Bool)

(assert (=> b!6635634 m!7403576))

(assert (=> b!6635635 m!7403452))

(assert (=> b!6635635 m!7403452))

(declare-fun m!7403578 () Bool)

(assert (=> b!6635635 m!7403578))

(assert (=> b!6635635 m!7403456))

(assert (=> b!6635635 m!7403578))

(assert (=> b!6635635 m!7403456))

(declare-fun m!7403580 () Bool)

(assert (=> b!6635635 m!7403580))

(assert (=> b!6635139 d!2080126))

(declare-fun b!6635640 () Bool)

(declare-fun e!4013247 () Bool)

(declare-fun tp!1827764 () Bool)

(declare-fun tp!1827765 () Bool)

(assert (=> b!6635640 (= e!4013247 (and tp!1827764 tp!1827765))))

(assert (=> b!6635157 (= tp!1827721 e!4013247)))

(assert (= (and b!6635157 (is-Cons!65675 (exprs!6384 setElem!45355))) b!6635640))

(declare-fun b!6635648 () Bool)

(declare-fun e!4013253 () Bool)

(declare-fun tp!1827770 () Bool)

(assert (=> b!6635648 (= e!4013253 tp!1827770)))

(declare-fun e!4013252 () Bool)

(declare-fun b!6635647 () Bool)

(declare-fun tp!1827771 () Bool)

(assert (=> b!6635647 (= e!4013252 (and (inv!84498 (h!72125 (t!379467 zl!343))) e!4013253 tp!1827771))))

(assert (=> b!6635138 (= tp!1827726 e!4013252)))

(assert (= b!6635647 b!6635648))

(assert (= (and b!6635138 (is-Cons!65677 (t!379467 zl!343))) b!6635647))

(declare-fun m!7403582 () Bool)

(assert (=> b!6635647 m!7403582))

(declare-fun b!6635671 () Bool)

(declare-fun e!4013262 () Bool)

(declare-fun tp!1827782 () Bool)

(declare-fun tp!1827785 () Bool)

(assert (=> b!6635671 (= e!4013262 (and tp!1827782 tp!1827785))))

(declare-fun b!6635670 () Bool)

(assert (=> b!6635670 (= e!4013262 tp_is_empty!42253)))

(declare-fun b!6635673 () Bool)

(declare-fun tp!1827786 () Bool)

(declare-fun tp!1827783 () Bool)

(assert (=> b!6635673 (= e!4013262 (and tp!1827786 tp!1827783))))

(declare-fun b!6635672 () Bool)

(declare-fun tp!1827784 () Bool)

(assert (=> b!6635672 (= e!4013262 tp!1827784)))

(assert (=> b!6635137 (= tp!1827720 e!4013262)))

(assert (= (and b!6635137 (is-ElementMatch!16500 (reg!16829 r!7292))) b!6635670))

(assert (= (and b!6635137 (is-Concat!25345 (reg!16829 r!7292))) b!6635671))

(assert (= (and b!6635137 (is-Star!16500 (reg!16829 r!7292))) b!6635672))

(assert (= (and b!6635137 (is-Union!16500 (reg!16829 r!7292))) b!6635673))

(declare-fun condSetEmpty!45361 () Bool)

(assert (=> setNonEmpty!45355 (= condSetEmpty!45361 (= setRest!45355 (as set.empty (Set Context!11768))))))

(declare-fun setRes!45361 () Bool)

(assert (=> setNonEmpty!45355 (= tp!1827724 setRes!45361)))

(declare-fun setIsEmpty!45361 () Bool)

(assert (=> setIsEmpty!45361 setRes!45361))

(declare-fun tp!1827792 () Bool)

(declare-fun setElem!45361 () Context!11768)

(declare-fun setNonEmpty!45361 () Bool)

(declare-fun e!4013265 () Bool)

(assert (=> setNonEmpty!45361 (= setRes!45361 (and tp!1827792 (inv!84498 setElem!45361) e!4013265))))

(declare-fun setRest!45361 () (Set Context!11768))

(assert (=> setNonEmpty!45361 (= setRest!45355 (set.union (set.insert setElem!45361 (as set.empty (Set Context!11768))) setRest!45361))))

(declare-fun b!6635678 () Bool)

(declare-fun tp!1827791 () Bool)

(assert (=> b!6635678 (= e!4013265 tp!1827791)))

(assert (= (and setNonEmpty!45355 condSetEmpty!45361) setIsEmpty!45361))

(assert (= (and setNonEmpty!45355 (not condSetEmpty!45361)) setNonEmpty!45361))

(assert (= setNonEmpty!45361 b!6635678))

(declare-fun m!7403590 () Bool)

(assert (=> setNonEmpty!45361 m!7403590))

(declare-fun b!6635680 () Bool)

(declare-fun e!4013266 () Bool)

(declare-fun tp!1827793 () Bool)

(declare-fun tp!1827796 () Bool)

(assert (=> b!6635680 (= e!4013266 (and tp!1827793 tp!1827796))))

(declare-fun b!6635679 () Bool)

(assert (=> b!6635679 (= e!4013266 tp_is_empty!42253)))

(declare-fun b!6635682 () Bool)

(declare-fun tp!1827797 () Bool)

(declare-fun tp!1827794 () Bool)

(assert (=> b!6635682 (= e!4013266 (and tp!1827797 tp!1827794))))

(declare-fun b!6635681 () Bool)

(declare-fun tp!1827795 () Bool)

(assert (=> b!6635681 (= e!4013266 tp!1827795)))

(assert (=> b!6635156 (= tp!1827725 e!4013266)))

(assert (= (and b!6635156 (is-ElementMatch!16500 (regOne!33513 r!7292))) b!6635679))

(assert (= (and b!6635156 (is-Concat!25345 (regOne!33513 r!7292))) b!6635680))

(assert (= (and b!6635156 (is-Star!16500 (regOne!33513 r!7292))) b!6635681))

(assert (= (and b!6635156 (is-Union!16500 (regOne!33513 r!7292))) b!6635682))

(declare-fun b!6635684 () Bool)

(declare-fun e!4013267 () Bool)

(declare-fun tp!1827798 () Bool)

(declare-fun tp!1827801 () Bool)

(assert (=> b!6635684 (= e!4013267 (and tp!1827798 tp!1827801))))

(declare-fun b!6635683 () Bool)

(assert (=> b!6635683 (= e!4013267 tp_is_empty!42253)))

(declare-fun b!6635686 () Bool)

(declare-fun tp!1827802 () Bool)

(declare-fun tp!1827799 () Bool)

(assert (=> b!6635686 (= e!4013267 (and tp!1827802 tp!1827799))))

(declare-fun b!6635685 () Bool)

(declare-fun tp!1827800 () Bool)

(assert (=> b!6635685 (= e!4013267 tp!1827800)))

(assert (=> b!6635156 (= tp!1827727 e!4013267)))

(assert (= (and b!6635156 (is-ElementMatch!16500 (regTwo!33513 r!7292))) b!6635683))

(assert (= (and b!6635156 (is-Concat!25345 (regTwo!33513 r!7292))) b!6635684))

(assert (= (and b!6635156 (is-Star!16500 (regTwo!33513 r!7292))) b!6635685))

(assert (= (and b!6635156 (is-Union!16500 (regTwo!33513 r!7292))) b!6635686))

(declare-fun b!6635687 () Bool)

(declare-fun e!4013268 () Bool)

(declare-fun tp!1827803 () Bool)

(declare-fun tp!1827804 () Bool)

(assert (=> b!6635687 (= e!4013268 (and tp!1827803 tp!1827804))))

(assert (=> b!6635151 (= tp!1827722 e!4013268)))

(assert (= (and b!6635151 (is-Cons!65675 (exprs!6384 (h!72125 zl!343)))) b!6635687))

(declare-fun b!6635689 () Bool)

(declare-fun e!4013269 () Bool)

(declare-fun tp!1827805 () Bool)

(declare-fun tp!1827808 () Bool)

(assert (=> b!6635689 (= e!4013269 (and tp!1827805 tp!1827808))))

(declare-fun b!6635688 () Bool)

(assert (=> b!6635688 (= e!4013269 tp_is_empty!42253)))

(declare-fun b!6635691 () Bool)

(declare-fun tp!1827809 () Bool)

(declare-fun tp!1827806 () Bool)

(assert (=> b!6635691 (= e!4013269 (and tp!1827809 tp!1827806))))

(declare-fun b!6635690 () Bool)

(declare-fun tp!1827807 () Bool)

(assert (=> b!6635690 (= e!4013269 tp!1827807)))

(assert (=> b!6635144 (= tp!1827728 e!4013269)))

(assert (= (and b!6635144 (is-ElementMatch!16500 (regOne!33512 r!7292))) b!6635688))

(assert (= (and b!6635144 (is-Concat!25345 (regOne!33512 r!7292))) b!6635689))

(assert (= (and b!6635144 (is-Star!16500 (regOne!33512 r!7292))) b!6635690))

(assert (= (and b!6635144 (is-Union!16500 (regOne!33512 r!7292))) b!6635691))

(declare-fun b!6635693 () Bool)

(declare-fun e!4013270 () Bool)

(declare-fun tp!1827810 () Bool)

(declare-fun tp!1827813 () Bool)

(assert (=> b!6635693 (= e!4013270 (and tp!1827810 tp!1827813))))

(declare-fun b!6635692 () Bool)

(assert (=> b!6635692 (= e!4013270 tp_is_empty!42253)))

(declare-fun b!6635695 () Bool)

(declare-fun tp!1827814 () Bool)

(declare-fun tp!1827811 () Bool)

(assert (=> b!6635695 (= e!4013270 (and tp!1827814 tp!1827811))))

(declare-fun b!6635694 () Bool)

(declare-fun tp!1827812 () Bool)

(assert (=> b!6635694 (= e!4013270 tp!1827812)))

(assert (=> b!6635144 (= tp!1827729 e!4013270)))

(assert (= (and b!6635144 (is-ElementMatch!16500 (regTwo!33512 r!7292))) b!6635692))

(assert (= (and b!6635144 (is-Concat!25345 (regTwo!33512 r!7292))) b!6635693))

(assert (= (and b!6635144 (is-Star!16500 (regTwo!33512 r!7292))) b!6635694))

(assert (= (and b!6635144 (is-Union!16500 (regTwo!33512 r!7292))) b!6635695))

(declare-fun b!6635700 () Bool)

(declare-fun e!4013273 () Bool)

(declare-fun tp!1827817 () Bool)

(assert (=> b!6635700 (= e!4013273 (and tp_is_empty!42253 tp!1827817))))

(assert (=> b!6635154 (= tp!1827723 e!4013273)))

(assert (= (and b!6635154 (is-Cons!65676 (t!379466 s!2326))) b!6635700))

(declare-fun b_lambda!250837 () Bool)

(assert (= b_lambda!250833 (or b!6635153 b_lambda!250837)))

(declare-fun bs!1705428 () Bool)

(declare-fun d!2080130 () Bool)

(assert (= bs!1705428 (and d!2080130 b!6635153)))

(assert (=> bs!1705428 (= (dynLambda!26163 lambda!370738 (h!72125 zl!343)) (derivationStepZipperUp!1674 (h!72125 zl!343) (h!72124 s!2326)))))

(assert (=> bs!1705428 m!7403244))

(assert (=> d!2080092 d!2080130))

(push 1)

(assert (not d!2080092))

(assert (not b!6635531))

(assert (not bs!1705428))

(assert (not b!6635542))

(assert (not b!6635566))

(assert (not d!2080084))

(assert (not d!2080090))

(assert (not b!6635693))

(assert (not b!6635684))

(assert (not b!6635628))

(assert (not d!2080098))

(assert (not b!6635685))

(assert (not b!6635623))

(assert (not d!2080086))

(assert (not bm!582498))

(assert (not b!6635532))

(assert (not b!6635626))

(assert (not b!6635694))

(assert (not d!2080058))

(assert (not d!2080102))

(assert tp_is_empty!42253)

(assert (not b!6635275))

(assert (not b!6635620))

(assert (not b!6635430))

(assert (not b!6635419))

(assert (not b!6635680))

(assert (not d!2080046))

(assert (not b!6635425))

(assert (not b!6635640))

(assert (not b!6635690))

(assert (not bm!582510))

(assert (not b!6635497))

(assert (not b!6635633))

(assert (not b!6635686))

(assert (not b!6635624))

(assert (not d!2080124))

(assert (not d!2080052))

(assert (not b!6635536))

(assert (not bm!582495))

(assert (not d!2080082))

(assert (not b!6635276))

(assert (not b!6635695))

(assert (not d!2080114))

(assert (not b!6635672))

(assert (not d!2080054))

(assert (not b!6635282))

(assert (not d!2080074))

(assert (not b!6635627))

(assert (not bm!582489))

(assert (not bm!582511))

(assert (not b!6635281))

(assert (not d!2080072))

(assert (not b!6635505))

(assert (not b!6635687))

(assert (not b!6635673))

(assert (not d!2080070))

(assert (not d!2080126))

(assert (not d!2080056))

(assert (not b!6635502))

(assert (not b!6635631))

(assert (not b!6635498))

(assert (not b!6635420))

(assert (not b!6635283))

(assert (not b!6635321))

(assert (not bm!582525))

(assert (not b!6635682))

(assert (not d!2080048))

(assert (not b!6635511))

(assert (not b!6635634))

(assert (not b!6635678))

(assert (not d!2080120))

(assert (not b!6635632))

(assert (not bm!582512))

(assert (not d!2080076))

(assert (not b!6635279))

(assert (not b!6635426))

(assert (not d!2080050))

(assert (not b!6635362))

(assert (not b!6635467))

(assert (not b!6635648))

(assert (not b!6635700))

(assert (not b_lambda!250837))

(assert (not b!6635647))

(assert (not b!6635368))

(assert (not bm!582528))

(assert (not bm!582527))

(assert (not b!6635691))

(assert (not b!6635466))

(assert (not b!6635501))

(assert (not b!6635429))

(assert (not b!6635689))

(assert (not d!2080122))

(assert (not setNonEmpty!45361))

(assert (not b!6635443))

(assert (not b!6635537))

(assert (not b!6635500))

(assert (not bm!582494))

(assert (not b!6635681))

(assert (not b!6635625))

(assert (not bm!582488))

(assert (not b!6635541))

(assert (not b!6635671))

(assert (not b!6635503))

(assert (not b!6635635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

