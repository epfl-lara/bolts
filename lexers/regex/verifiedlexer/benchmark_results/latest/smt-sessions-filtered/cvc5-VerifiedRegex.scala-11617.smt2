; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!646156 () Bool)

(assert start!646156)

(declare-fun b!6610794 () Bool)

(assert (=> b!6610794 true))

(assert (=> b!6610794 true))

(declare-fun lambda!369165 () Int)

(declare-fun lambda!369164 () Int)

(assert (=> b!6610794 (not (= lambda!369165 lambda!369164))))

(assert (=> b!6610794 true))

(assert (=> b!6610794 true))

(declare-fun b!6610812 () Bool)

(assert (=> b!6610812 true))

(declare-fun b!6610791 () Bool)

(declare-fun e!3999645 () Bool)

(declare-fun tp_is_empty!42213 () Bool)

(assert (=> b!6610791 (= e!3999645 tp_is_empty!42213)))

(declare-fun b!6610792 () Bool)

(declare-fun res!2710906 () Bool)

(declare-fun e!3999649 () Bool)

(assert (=> b!6610792 (=> res!2710906 e!3999649)))

(declare-datatypes ((C!33230 0))(
  ( (C!33231 (val!26317 Int)) )
))
(declare-datatypes ((Regex!16480 0))(
  ( (ElementMatch!16480 (c!1218377 C!33230)) (Concat!25325 (regOne!33472 Regex!16480) (regTwo!33472 Regex!16480)) (EmptyExpr!16480) (Star!16480 (reg!16809 Regex!16480)) (EmptyLang!16480) (Union!16480 (regOne!33473 Regex!16480) (regTwo!33473 Regex!16480)) )
))
(declare-datatypes ((List!65739 0))(
  ( (Nil!65615) (Cons!65615 (h!72063 Regex!16480) (t!379393 List!65739)) )
))
(declare-datatypes ((Context!11728 0))(
  ( (Context!11729 (exprs!6364 List!65739)) )
))
(declare-datatypes ((List!65740 0))(
  ( (Nil!65616) (Cons!65616 (h!72064 Context!11728) (t!379394 List!65740)) )
))
(declare-fun zl!343 () List!65740)

(assert (=> b!6610792 (= res!2710906 (not (is-Cons!65615 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun b!6610793 () Bool)

(declare-datatypes ((Unit!159275 0))(
  ( (Unit!159276) )
))
(declare-fun e!3999652 () Unit!159275)

(declare-fun Unit!159277 () Unit!159275)

(assert (=> b!6610793 (= e!3999652 Unit!159277)))

(declare-datatypes ((List!65741 0))(
  ( (Nil!65617) (Cons!65617 (h!72065 C!33230) (t!379395 List!65741)) )
))
(declare-fun s!2326 () List!65741)

(declare-fun lt!2416639 () Unit!159275)

(declare-fun lt!2416640 () (Set Context!11728))

(declare-fun lt!2416637 () (Set Context!11728))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1311 ((Set Context!11728) (Set Context!11728) List!65741) Unit!159275)

(assert (=> b!6610793 (= lt!2416639 (lemmaZipperConcatMatchesSameAsBothZippers!1311 lt!2416637 lt!2416640 (t!379395 s!2326)))))

(declare-fun res!2710903 () Bool)

(declare-fun matchZipper!2492 ((Set Context!11728) List!65741) Bool)

(assert (=> b!6610793 (= res!2710903 (matchZipper!2492 lt!2416637 (t!379395 s!2326)))))

(declare-fun e!3999653 () Bool)

(assert (=> b!6610793 (=> res!2710903 e!3999653)))

(assert (=> b!6610793 (= (matchZipper!2492 (set.union lt!2416637 lt!2416640) (t!379395 s!2326)) e!3999653)))

(declare-fun e!3999644 () Bool)

(assert (=> b!6610794 (= e!3999649 e!3999644)))

(declare-fun res!2710909 () Bool)

(assert (=> b!6610794 (=> res!2710909 e!3999644)))

(declare-fun lt!2416635 () Bool)

(declare-fun lt!2416643 () Bool)

(assert (=> b!6610794 (= res!2710909 (or (not (= lt!2416643 lt!2416635)) (is-Nil!65617 s!2326)))))

(declare-fun Exists!3550 (Int) Bool)

(assert (=> b!6610794 (= (Exists!3550 lambda!369164) (Exists!3550 lambda!369165))))

(declare-fun lt!2416644 () Unit!159275)

(declare-fun r!7292 () Regex!16480)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2087 (Regex!16480 Regex!16480 List!65741) Unit!159275)

(assert (=> b!6610794 (= lt!2416644 (lemmaExistCutMatchRandMatchRSpecEquivalent!2087 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326))))

(assert (=> b!6610794 (= lt!2416635 (Exists!3550 lambda!369164))))

(declare-datatypes ((tuple2!66918 0))(
  ( (tuple2!66919 (_1!36762 List!65741) (_2!36762 List!65741)) )
))
(declare-datatypes ((Option!16371 0))(
  ( (None!16370) (Some!16370 (v!52559 tuple2!66918)) )
))
(declare-fun isDefined!13074 (Option!16371) Bool)

(declare-fun findConcatSeparation!2785 (Regex!16480 Regex!16480 List!65741 List!65741 List!65741) Option!16371)

(assert (=> b!6610794 (= lt!2416635 (isDefined!13074 (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) Nil!65617 s!2326 s!2326)))))

(declare-fun lt!2416641 () Unit!159275)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2549 (Regex!16480 Regex!16480 List!65741) Unit!159275)

(assert (=> b!6610794 (= lt!2416641 (lemmaFindConcatSeparationEquivalentToExists!2549 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326))))

(declare-fun b!6610795 () Bool)

(declare-fun res!2710911 () Bool)

(assert (=> b!6610795 (=> res!2710911 e!3999649)))

(declare-fun isEmpty!37893 (List!65740) Bool)

(assert (=> b!6610795 (= res!2710911 (not (isEmpty!37893 (t!379394 zl!343))))))

(declare-fun setElem!45157 () Context!11728)

(declare-fun setNonEmpty!45157 () Bool)

(declare-fun e!3999651 () Bool)

(declare-fun setRes!45157 () Bool)

(declare-fun tp!1821082 () Bool)

(declare-fun inv!84448 (Context!11728) Bool)

(assert (=> setNonEmpty!45157 (= setRes!45157 (and tp!1821082 (inv!84448 setElem!45157) e!3999651))))

(declare-fun z!1189 () (Set Context!11728))

(declare-fun setRest!45157 () (Set Context!11728))

(assert (=> setNonEmpty!45157 (= z!1189 (set.union (set.insert setElem!45157 (as set.empty (Set Context!11728))) setRest!45157))))

(declare-fun b!6610796 () Bool)

(assert (=> b!6610796 (= e!3999653 (matchZipper!2492 lt!2416640 (t!379395 s!2326)))))

(declare-fun b!6610797 () Bool)

(declare-fun tp!1821080 () Bool)

(assert (=> b!6610797 (= e!3999651 tp!1821080)))

(declare-fun b!6610798 () Bool)

(declare-fun res!2710905 () Bool)

(assert (=> b!6610798 (=> res!2710905 e!3999649)))

(assert (=> b!6610798 (= res!2710905 (or (is-EmptyExpr!16480 r!7292) (is-EmptyLang!16480 r!7292) (is-ElementMatch!16480 r!7292) (is-Union!16480 r!7292) (not (is-Concat!25325 r!7292))))))

(declare-fun b!6610799 () Bool)

(declare-fun e!3999646 () Bool)

(declare-fun tp!1821087 () Bool)

(assert (=> b!6610799 (= e!3999646 tp!1821087)))

(declare-fun b!6610800 () Bool)

(declare-fun Unit!159278 () Unit!159275)

(assert (=> b!6610800 (= e!3999652 Unit!159278)))

(declare-fun b!6610801 () Bool)

(declare-fun e!3999648 () Bool)

(declare-fun tp!1821081 () Bool)

(assert (=> b!6610801 (= e!3999648 (and tp_is_empty!42213 tp!1821081))))

(declare-fun b!6610802 () Bool)

(declare-fun tp!1821085 () Bool)

(declare-fun tp!1821089 () Bool)

(assert (=> b!6610802 (= e!3999645 (and tp!1821085 tp!1821089))))

(declare-fun b!6610803 () Bool)

(declare-fun res!2710907 () Bool)

(declare-fun e!3999654 () Bool)

(assert (=> b!6610803 (=> (not res!2710907) (not e!3999654))))

(declare-fun unfocusZipper!2222 (List!65740) Regex!16480)

(assert (=> b!6610803 (= res!2710907 (= r!7292 (unfocusZipper!2222 zl!343)))))

(declare-fun b!6610805 () Bool)

(declare-fun res!2710908 () Bool)

(declare-fun e!3999643 () Bool)

(assert (=> b!6610805 (=> res!2710908 e!3999643)))

(declare-fun e!3999650 () Bool)

(assert (=> b!6610805 (= res!2710908 e!3999650)))

(declare-fun res!2710914 () Bool)

(assert (=> b!6610805 (=> (not res!2710914) (not e!3999650))))

(assert (=> b!6610805 (= res!2710914 (is-Concat!25325 (regOne!33472 r!7292)))))

(declare-fun b!6610806 () Bool)

(declare-fun res!2710913 () Bool)

(assert (=> b!6610806 (=> (not res!2710913) (not e!3999654))))

(declare-fun toList!10264 ((Set Context!11728)) List!65740)

(assert (=> b!6610806 (= res!2710913 (= (toList!10264 z!1189) zl!343))))

(declare-fun b!6610807 () Bool)

(declare-fun tp!1821083 () Bool)

(declare-fun tp!1821088 () Bool)

(assert (=> b!6610807 (= e!3999645 (and tp!1821083 tp!1821088))))

(declare-fun tp!1821086 () Bool)

(declare-fun b!6610808 () Bool)

(declare-fun e!3999647 () Bool)

(assert (=> b!6610808 (= e!3999647 (and (inv!84448 (h!72064 zl!343)) e!3999646 tp!1821086))))

(declare-fun b!6610809 () Bool)

(declare-fun res!2710904 () Bool)

(assert (=> b!6610809 (=> res!2710904 e!3999649)))

(declare-fun generalisedConcat!2077 (List!65739) Regex!16480)

(assert (=> b!6610809 (= res!2710904 (not (= r!7292 (generalisedConcat!2077 (exprs!6364 (h!72064 zl!343))))))))

(declare-fun b!6610810 () Bool)

(declare-fun tp!1821084 () Bool)

(assert (=> b!6610810 (= e!3999645 tp!1821084)))

(declare-fun b!6610811 () Bool)

(declare-fun res!2710915 () Bool)

(assert (=> b!6610811 (=> res!2710915 e!3999644)))

(declare-fun isEmpty!37894 (List!65739) Bool)

(assert (=> b!6610811 (= res!2710915 (isEmpty!37894 (t!379393 (exprs!6364 (h!72064 zl!343)))))))

(assert (=> b!6610812 (= e!3999644 e!3999643)))

(declare-fun res!2710916 () Bool)

(assert (=> b!6610812 (=> res!2710916 e!3999643)))

(assert (=> b!6610812 (= res!2710916 (or (and (is-ElementMatch!16480 (regOne!33472 r!7292)) (= (c!1218377 (regOne!33472 r!7292)) (h!72065 s!2326))) (is-Union!16480 (regOne!33472 r!7292))))))

(declare-fun lt!2416645 () Unit!159275)

(assert (=> b!6610812 (= lt!2416645 e!3999652)))

(declare-fun c!1218376 () Bool)

(declare-fun nullable!6473 (Regex!16480) Bool)

(assert (=> b!6610812 (= c!1218376 (nullable!6473 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun lambda!369166 () Int)

(declare-fun flatMap!1985 ((Set Context!11728) Int) (Set Context!11728))

(declare-fun derivationStepZipperUp!1654 (Context!11728 C!33230) (Set Context!11728))

(assert (=> b!6610812 (= (flatMap!1985 z!1189 lambda!369166) (derivationStepZipperUp!1654 (h!72064 zl!343) (h!72065 s!2326)))))

(declare-fun lt!2416642 () Unit!159275)

(declare-fun lemmaFlatMapOnSingletonSet!1511 ((Set Context!11728) Context!11728 Int) Unit!159275)

(assert (=> b!6610812 (= lt!2416642 (lemmaFlatMapOnSingletonSet!1511 z!1189 (h!72064 zl!343) lambda!369166))))

(declare-fun lt!2416646 () Context!11728)

(assert (=> b!6610812 (= lt!2416640 (derivationStepZipperUp!1654 lt!2416646 (h!72065 s!2326)))))

(declare-fun derivationStepZipperDown!1728 (Regex!16480 Context!11728 C!33230) (Set Context!11728))

(assert (=> b!6610812 (= lt!2416637 (derivationStepZipperDown!1728 (h!72063 (exprs!6364 (h!72064 zl!343))) lt!2416646 (h!72065 s!2326)))))

(assert (=> b!6610812 (= lt!2416646 (Context!11729 (t!379393 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun lt!2416636 () (Set Context!11728))

(assert (=> b!6610812 (= lt!2416636 (derivationStepZipperUp!1654 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343))))) (h!72065 s!2326)))))

(declare-fun b!6610813 () Bool)

(declare-fun res!2710912 () Bool)

(assert (=> b!6610813 (=> res!2710912 e!3999649)))

(declare-fun generalisedUnion!2324 (List!65739) Regex!16480)

(declare-fun unfocusZipperList!1901 (List!65740) List!65739)

(assert (=> b!6610813 (= res!2710912 (not (= r!7292 (generalisedUnion!2324 (unfocusZipperList!1901 zl!343)))))))

(declare-fun b!6610814 () Bool)

(assert (=> b!6610814 (= e!3999650 (nullable!6473 (regOne!33472 (regOne!33472 r!7292))))))

(declare-fun b!6610815 () Bool)

(assert (=> b!6610815 (= e!3999643 (or (is-Concat!25325 (regOne!33472 r!7292)) (is-Star!16480 (regOne!33472 r!7292)) (not (is-EmptyExpr!16480 (regOne!33472 r!7292))) (= lt!2416637 (as set.empty (Set Context!11728)))))))

(declare-fun setIsEmpty!45157 () Bool)

(assert (=> setIsEmpty!45157 setRes!45157))

(declare-fun b!6610804 () Bool)

(assert (=> b!6610804 (= e!3999654 (not e!3999649))))

(declare-fun res!2710910 () Bool)

(assert (=> b!6610804 (=> res!2710910 e!3999649)))

(assert (=> b!6610804 (= res!2710910 (not (is-Cons!65616 zl!343)))))

(declare-fun matchRSpec!3581 (Regex!16480 List!65741) Bool)

(assert (=> b!6610804 (= lt!2416643 (matchRSpec!3581 r!7292 s!2326))))

(declare-fun matchR!8663 (Regex!16480 List!65741) Bool)

(assert (=> b!6610804 (= lt!2416643 (matchR!8663 r!7292 s!2326))))

(declare-fun lt!2416638 () Unit!159275)

(declare-fun mainMatchTheorem!3581 (Regex!16480 List!65741) Unit!159275)

(assert (=> b!6610804 (= lt!2416638 (mainMatchTheorem!3581 r!7292 s!2326))))

(declare-fun res!2710917 () Bool)

(assert (=> start!646156 (=> (not res!2710917) (not e!3999654))))

(declare-fun validRegex!8216 (Regex!16480) Bool)

(assert (=> start!646156 (= res!2710917 (validRegex!8216 r!7292))))

(assert (=> start!646156 e!3999654))

(assert (=> start!646156 e!3999645))

(declare-fun condSetEmpty!45157 () Bool)

(assert (=> start!646156 (= condSetEmpty!45157 (= z!1189 (as set.empty (Set Context!11728))))))

(assert (=> start!646156 setRes!45157))

(assert (=> start!646156 e!3999647))

(assert (=> start!646156 e!3999648))

(assert (= (and start!646156 res!2710917) b!6610806))

(assert (= (and b!6610806 res!2710913) b!6610803))

(assert (= (and b!6610803 res!2710907) b!6610804))

(assert (= (and b!6610804 (not res!2710910)) b!6610795))

(assert (= (and b!6610795 (not res!2710911)) b!6610809))

(assert (= (and b!6610809 (not res!2710904)) b!6610792))

(assert (= (and b!6610792 (not res!2710906)) b!6610813))

(assert (= (and b!6610813 (not res!2710912)) b!6610798))

(assert (= (and b!6610798 (not res!2710905)) b!6610794))

(assert (= (and b!6610794 (not res!2710909)) b!6610811))

(assert (= (and b!6610811 (not res!2710915)) b!6610812))

(assert (= (and b!6610812 c!1218376) b!6610793))

(assert (= (and b!6610812 (not c!1218376)) b!6610800))

(assert (= (and b!6610793 (not res!2710903)) b!6610796))

(assert (= (and b!6610812 (not res!2710916)) b!6610805))

(assert (= (and b!6610805 res!2710914) b!6610814))

(assert (= (and b!6610805 (not res!2710908)) b!6610815))

(assert (= (and start!646156 (is-ElementMatch!16480 r!7292)) b!6610791))

(assert (= (and start!646156 (is-Concat!25325 r!7292)) b!6610807))

(assert (= (and start!646156 (is-Star!16480 r!7292)) b!6610810))

(assert (= (and start!646156 (is-Union!16480 r!7292)) b!6610802))

(assert (= (and start!646156 condSetEmpty!45157) setIsEmpty!45157))

(assert (= (and start!646156 (not condSetEmpty!45157)) setNonEmpty!45157))

(assert (= setNonEmpty!45157 b!6610797))

(assert (= b!6610808 b!6610799))

(assert (= (and start!646156 (is-Cons!65616 zl!343)) b!6610808))

(assert (= (and start!646156 (is-Cons!65617 s!2326)) b!6610801))

(declare-fun m!7385512 () Bool)

(assert (=> b!6610793 m!7385512))

(declare-fun m!7385514 () Bool)

(assert (=> b!6610793 m!7385514))

(declare-fun m!7385516 () Bool)

(assert (=> b!6610793 m!7385516))

(declare-fun m!7385518 () Bool)

(assert (=> b!6610812 m!7385518))

(declare-fun m!7385520 () Bool)

(assert (=> b!6610812 m!7385520))

(declare-fun m!7385522 () Bool)

(assert (=> b!6610812 m!7385522))

(declare-fun m!7385524 () Bool)

(assert (=> b!6610812 m!7385524))

(declare-fun m!7385526 () Bool)

(assert (=> b!6610812 m!7385526))

(declare-fun m!7385528 () Bool)

(assert (=> b!6610812 m!7385528))

(declare-fun m!7385530 () Bool)

(assert (=> b!6610812 m!7385530))

(declare-fun m!7385532 () Bool)

(assert (=> start!646156 m!7385532))

(declare-fun m!7385534 () Bool)

(assert (=> b!6610814 m!7385534))

(declare-fun m!7385536 () Bool)

(assert (=> b!6610804 m!7385536))

(declare-fun m!7385538 () Bool)

(assert (=> b!6610804 m!7385538))

(declare-fun m!7385540 () Bool)

(assert (=> b!6610804 m!7385540))

(declare-fun m!7385542 () Bool)

(assert (=> b!6610794 m!7385542))

(assert (=> b!6610794 m!7385542))

(declare-fun m!7385544 () Bool)

(assert (=> b!6610794 m!7385544))

(declare-fun m!7385546 () Bool)

(assert (=> b!6610794 m!7385546))

(declare-fun m!7385548 () Bool)

(assert (=> b!6610794 m!7385548))

(declare-fun m!7385550 () Bool)

(assert (=> b!6610794 m!7385550))

(assert (=> b!6610794 m!7385546))

(declare-fun m!7385552 () Bool)

(assert (=> b!6610794 m!7385552))

(declare-fun m!7385554 () Bool)

(assert (=> b!6610796 m!7385554))

(declare-fun m!7385556 () Bool)

(assert (=> b!6610813 m!7385556))

(assert (=> b!6610813 m!7385556))

(declare-fun m!7385558 () Bool)

(assert (=> b!6610813 m!7385558))

(declare-fun m!7385560 () Bool)

(assert (=> b!6610803 m!7385560))

(declare-fun m!7385562 () Bool)

(assert (=> b!6610809 m!7385562))

(declare-fun m!7385564 () Bool)

(assert (=> setNonEmpty!45157 m!7385564))

(declare-fun m!7385566 () Bool)

(assert (=> b!6610795 m!7385566))

(declare-fun m!7385568 () Bool)

(assert (=> b!6610808 m!7385568))

(declare-fun m!7385570 () Bool)

(assert (=> b!6610811 m!7385570))

(declare-fun m!7385572 () Bool)

(assert (=> b!6610806 m!7385572))

(push 1)

(assert (not b!6610811))

(assert (not b!6610802))

(assert (not b!6610803))

(assert (not b!6610794))

(assert (not b!6610809))

(assert (not start!646156))

(assert (not b!6610793))

(assert (not b!6610813))

(assert (not setNonEmpty!45157))

(assert (not b!6610806))

(assert tp_is_empty!42213)

(assert (not b!6610810))

(assert (not b!6610807))

(assert (not b!6610801))

(assert (not b!6610797))

(assert (not b!6610795))

(assert (not b!6610796))

(assert (not b!6610799))

(assert (not b!6610812))

(assert (not b!6610814))

(assert (not b!6610804))

(assert (not b!6610808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6610935 () Bool)

(declare-fun e!3999713 () Bool)

(declare-fun lt!2416685 () Regex!16480)

(declare-fun isEmptyExpr!1854 (Regex!16480) Bool)

(assert (=> b!6610935 (= e!3999713 (isEmptyExpr!1854 lt!2416685))))

(declare-fun b!6610936 () Bool)

(declare-fun e!3999709 () Bool)

(assert (=> b!6610936 (= e!3999709 e!3999713)))

(declare-fun c!1218395 () Bool)

(assert (=> b!6610936 (= c!1218395 (isEmpty!37894 (exprs!6364 (h!72064 zl!343))))))

(declare-fun b!6610938 () Bool)

(declare-fun e!3999710 () Bool)

(declare-fun isConcat!1377 (Regex!16480) Bool)

(assert (=> b!6610938 (= e!3999710 (isConcat!1377 lt!2416685))))

(declare-fun b!6610939 () Bool)

(declare-fun head!13403 (List!65739) Regex!16480)

(assert (=> b!6610939 (= e!3999710 (= lt!2416685 (head!13403 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun b!6610940 () Bool)

(declare-fun e!3999712 () Regex!16480)

(assert (=> b!6610940 (= e!3999712 (Concat!25325 (h!72063 (exprs!6364 (h!72064 zl!343))) (generalisedConcat!2077 (t!379393 (exprs!6364 (h!72064 zl!343))))))))

(declare-fun b!6610937 () Bool)

(declare-fun e!3999711 () Regex!16480)

(assert (=> b!6610937 (= e!3999711 (h!72063 (exprs!6364 (h!72064 zl!343))))))

(declare-fun d!2072848 () Bool)

(assert (=> d!2072848 e!3999709))

(declare-fun res!2710980 () Bool)

(assert (=> d!2072848 (=> (not res!2710980) (not e!3999709))))

(assert (=> d!2072848 (= res!2710980 (validRegex!8216 lt!2416685))))

(assert (=> d!2072848 (= lt!2416685 e!3999711)))

(declare-fun c!1218394 () Bool)

(declare-fun e!3999714 () Bool)

(assert (=> d!2072848 (= c!1218394 e!3999714)))

(declare-fun res!2710979 () Bool)

(assert (=> d!2072848 (=> (not res!2710979) (not e!3999714))))

(assert (=> d!2072848 (= res!2710979 (is-Cons!65615 (exprs!6364 (h!72064 zl!343))))))

(declare-fun lambda!369180 () Int)

(declare-fun forall!15676 (List!65739 Int) Bool)

(assert (=> d!2072848 (forall!15676 (exprs!6364 (h!72064 zl!343)) lambda!369180)))

(assert (=> d!2072848 (= (generalisedConcat!2077 (exprs!6364 (h!72064 zl!343))) lt!2416685)))

(declare-fun b!6610941 () Bool)

(assert (=> b!6610941 (= e!3999714 (isEmpty!37894 (t!379393 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun b!6610942 () Bool)

(assert (=> b!6610942 (= e!3999713 e!3999710)))

(declare-fun c!1218396 () Bool)

(declare-fun tail!12488 (List!65739) List!65739)

(assert (=> b!6610942 (= c!1218396 (isEmpty!37894 (tail!12488 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun b!6610943 () Bool)

(assert (=> b!6610943 (= e!3999712 EmptyExpr!16480)))

(declare-fun b!6610944 () Bool)

(assert (=> b!6610944 (= e!3999711 e!3999712)))

(declare-fun c!1218393 () Bool)

(assert (=> b!6610944 (= c!1218393 (is-Cons!65615 (exprs!6364 (h!72064 zl!343))))))

(assert (= (and d!2072848 res!2710979) b!6610941))

(assert (= (and d!2072848 c!1218394) b!6610937))

(assert (= (and d!2072848 (not c!1218394)) b!6610944))

(assert (= (and b!6610944 c!1218393) b!6610940))

(assert (= (and b!6610944 (not c!1218393)) b!6610943))

(assert (= (and d!2072848 res!2710980) b!6610936))

(assert (= (and b!6610936 c!1218395) b!6610935))

(assert (= (and b!6610936 (not c!1218395)) b!6610942))

(assert (= (and b!6610942 c!1218396) b!6610939))

(assert (= (and b!6610942 (not c!1218396)) b!6610938))

(declare-fun m!7385636 () Bool)

(assert (=> b!6610942 m!7385636))

(assert (=> b!6610942 m!7385636))

(declare-fun m!7385638 () Bool)

(assert (=> b!6610942 m!7385638))

(assert (=> b!6610941 m!7385570))

(declare-fun m!7385640 () Bool)

(assert (=> b!6610936 m!7385640))

(declare-fun m!7385642 () Bool)

(assert (=> b!6610939 m!7385642))

(declare-fun m!7385644 () Bool)

(assert (=> b!6610938 m!7385644))

(declare-fun m!7385646 () Bool)

(assert (=> b!6610940 m!7385646))

(declare-fun m!7385648 () Bool)

(assert (=> b!6610935 m!7385648))

(declare-fun m!7385650 () Bool)

(assert (=> d!2072848 m!7385650))

(declare-fun m!7385652 () Bool)

(assert (=> d!2072848 m!7385652))

(assert (=> b!6610809 d!2072848))

(declare-fun d!2072850 () Bool)

(assert (=> d!2072850 (= (isEmpty!37894 (t!379393 (exprs!6364 (h!72064 zl!343)))) (is-Nil!65615 (t!379393 (exprs!6364 (h!72064 zl!343)))))))

(assert (=> b!6610811 d!2072850))

(declare-fun d!2072852 () Bool)

(declare-fun c!1218399 () Bool)

(declare-fun isEmpty!37897 (List!65741) Bool)

(assert (=> d!2072852 (= c!1218399 (isEmpty!37897 (t!379395 s!2326)))))

(declare-fun e!3999717 () Bool)

(assert (=> d!2072852 (= (matchZipper!2492 lt!2416640 (t!379395 s!2326)) e!3999717)))

(declare-fun b!6610949 () Bool)

(declare-fun nullableZipper!2221 ((Set Context!11728)) Bool)

(assert (=> b!6610949 (= e!3999717 (nullableZipper!2221 lt!2416640))))

(declare-fun b!6610950 () Bool)

(declare-fun derivationStepZipper!2446 ((Set Context!11728) C!33230) (Set Context!11728))

(declare-fun head!13404 (List!65741) C!33230)

(declare-fun tail!12489 (List!65741) List!65741)

(assert (=> b!6610950 (= e!3999717 (matchZipper!2492 (derivationStepZipper!2446 lt!2416640 (head!13404 (t!379395 s!2326))) (tail!12489 (t!379395 s!2326))))))

(assert (= (and d!2072852 c!1218399) b!6610949))

(assert (= (and d!2072852 (not c!1218399)) b!6610950))

(declare-fun m!7385654 () Bool)

(assert (=> d!2072852 m!7385654))

(declare-fun m!7385656 () Bool)

(assert (=> b!6610949 m!7385656))

(declare-fun m!7385658 () Bool)

(assert (=> b!6610950 m!7385658))

(assert (=> b!6610950 m!7385658))

(declare-fun m!7385660 () Bool)

(assert (=> b!6610950 m!7385660))

(declare-fun m!7385662 () Bool)

(assert (=> b!6610950 m!7385662))

(assert (=> b!6610950 m!7385660))

(assert (=> b!6610950 m!7385662))

(declare-fun m!7385664 () Bool)

(assert (=> b!6610950 m!7385664))

(assert (=> b!6610796 d!2072852))

(declare-fun d!2072854 () Bool)

(declare-fun e!3999720 () Bool)

(assert (=> d!2072854 e!3999720))

(declare-fun res!2710983 () Bool)

(assert (=> d!2072854 (=> (not res!2710983) (not e!3999720))))

(declare-fun lt!2416688 () List!65740)

(declare-fun noDuplicate!2281 (List!65740) Bool)

(assert (=> d!2072854 (= res!2710983 (noDuplicate!2281 lt!2416688))))

(declare-fun choose!49363 ((Set Context!11728)) List!65740)

(assert (=> d!2072854 (= lt!2416688 (choose!49363 z!1189))))

(assert (=> d!2072854 (= (toList!10264 z!1189) lt!2416688)))

(declare-fun b!6610953 () Bool)

(declare-fun content!12655 (List!65740) (Set Context!11728))

(assert (=> b!6610953 (= e!3999720 (= (content!12655 lt!2416688) z!1189))))

(assert (= (and d!2072854 res!2710983) b!6610953))

(declare-fun m!7385666 () Bool)

(assert (=> d!2072854 m!7385666))

(declare-fun m!7385668 () Bool)

(assert (=> d!2072854 m!7385668))

(declare-fun m!7385670 () Bool)

(assert (=> b!6610953 m!7385670))

(assert (=> b!6610806 d!2072854))

(declare-fun bs!1695236 () Bool)

(declare-fun d!2072856 () Bool)

(assert (= bs!1695236 (and d!2072856 d!2072848)))

(declare-fun lambda!369183 () Int)

(assert (=> bs!1695236 (= lambda!369183 lambda!369180)))

(assert (=> d!2072856 (= (inv!84448 (h!72064 zl!343)) (forall!15676 (exprs!6364 (h!72064 zl!343)) lambda!369183))))

(declare-fun bs!1695237 () Bool)

(assert (= bs!1695237 d!2072856))

(declare-fun m!7385672 () Bool)

(assert (=> bs!1695237 m!7385672))

(assert (=> b!6610808 d!2072856))

(declare-fun bs!1695238 () Bool)

(declare-fun b!6610988 () Bool)

(assert (= bs!1695238 (and b!6610988 b!6610794)))

(declare-fun lambda!369188 () Int)

(assert (=> bs!1695238 (not (= lambda!369188 lambda!369164))))

(assert (=> bs!1695238 (not (= lambda!369188 lambda!369165))))

(assert (=> b!6610988 true))

(assert (=> b!6610988 true))

(declare-fun bs!1695239 () Bool)

(declare-fun b!6610990 () Bool)

(assert (= bs!1695239 (and b!6610990 b!6610794)))

(declare-fun lambda!369189 () Int)

(assert (=> bs!1695239 (not (= lambda!369189 lambda!369164))))

(assert (=> bs!1695239 (= lambda!369189 lambda!369165)))

(declare-fun bs!1695240 () Bool)

(assert (= bs!1695240 (and b!6610990 b!6610988)))

(assert (=> bs!1695240 (not (= lambda!369189 lambda!369188))))

(assert (=> b!6610990 true))

(assert (=> b!6610990 true))

(declare-fun b!6610986 () Bool)

(declare-fun e!3999743 () Bool)

(declare-fun call!579121 () Bool)

(assert (=> b!6610986 (= e!3999743 call!579121)))

(declare-fun call!579120 () Bool)

(declare-fun c!1218411 () Bool)

(declare-fun bm!579115 () Bool)

(assert (=> bm!579115 (= call!579120 (Exists!3550 (ite c!1218411 lambda!369188 lambda!369189)))))

(declare-fun d!2072858 () Bool)

(declare-fun c!1218408 () Bool)

(assert (=> d!2072858 (= c!1218408 (is-EmptyExpr!16480 r!7292))))

(assert (=> d!2072858 (= (matchRSpec!3581 r!7292 s!2326) e!3999743)))

(declare-fun b!6610987 () Bool)

(declare-fun e!3999739 () Bool)

(assert (=> b!6610987 (= e!3999739 (= s!2326 (Cons!65617 (c!1218377 r!7292) Nil!65617)))))

(declare-fun e!3999744 () Bool)

(assert (=> b!6610988 (= e!3999744 call!579120)))

(declare-fun b!6610989 () Bool)

(declare-fun e!3999740 () Bool)

(assert (=> b!6610989 (= e!3999740 (matchRSpec!3581 (regTwo!33473 r!7292) s!2326))))

(declare-fun e!3999745 () Bool)

(assert (=> b!6610990 (= e!3999745 call!579120)))

(declare-fun b!6610991 () Bool)

(declare-fun e!3999742 () Bool)

(assert (=> b!6610991 (= e!3999743 e!3999742)))

(declare-fun res!2711001 () Bool)

(assert (=> b!6610991 (= res!2711001 (not (is-EmptyLang!16480 r!7292)))))

(assert (=> b!6610991 (=> (not res!2711001) (not e!3999742))))

(declare-fun b!6610992 () Bool)

(declare-fun e!3999741 () Bool)

(assert (=> b!6610992 (= e!3999741 e!3999745)))

(assert (=> b!6610992 (= c!1218411 (is-Star!16480 r!7292))))

(declare-fun bm!579116 () Bool)

(assert (=> bm!579116 (= call!579121 (isEmpty!37897 s!2326))))

(declare-fun b!6610993 () Bool)

(declare-fun res!2711000 () Bool)

(assert (=> b!6610993 (=> res!2711000 e!3999744)))

(assert (=> b!6610993 (= res!2711000 call!579121)))

(assert (=> b!6610993 (= e!3999745 e!3999744)))

(declare-fun b!6610994 () Bool)

(declare-fun c!1218409 () Bool)

(assert (=> b!6610994 (= c!1218409 (is-Union!16480 r!7292))))

(assert (=> b!6610994 (= e!3999739 e!3999741)))

(declare-fun b!6610995 () Bool)

(assert (=> b!6610995 (= e!3999741 e!3999740)))

(declare-fun res!2711002 () Bool)

(assert (=> b!6610995 (= res!2711002 (matchRSpec!3581 (regOne!33473 r!7292) s!2326))))

(assert (=> b!6610995 (=> res!2711002 e!3999740)))

(declare-fun b!6610996 () Bool)

(declare-fun c!1218410 () Bool)

(assert (=> b!6610996 (= c!1218410 (is-ElementMatch!16480 r!7292))))

(assert (=> b!6610996 (= e!3999742 e!3999739)))

(assert (= (and d!2072858 c!1218408) b!6610986))

(assert (= (and d!2072858 (not c!1218408)) b!6610991))

(assert (= (and b!6610991 res!2711001) b!6610996))

(assert (= (and b!6610996 c!1218410) b!6610987))

(assert (= (and b!6610996 (not c!1218410)) b!6610994))

(assert (= (and b!6610994 c!1218409) b!6610995))

(assert (= (and b!6610994 (not c!1218409)) b!6610992))

(assert (= (and b!6610995 (not res!2711002)) b!6610989))

(assert (= (and b!6610992 c!1218411) b!6610993))

(assert (= (and b!6610992 (not c!1218411)) b!6610990))

(assert (= (and b!6610993 (not res!2711000)) b!6610988))

(assert (= (or b!6610988 b!6610990) bm!579115))

(assert (= (or b!6610986 b!6610993) bm!579116))

(declare-fun m!7385674 () Bool)

(assert (=> bm!579115 m!7385674))

(declare-fun m!7385676 () Bool)

(assert (=> b!6610989 m!7385676))

(declare-fun m!7385678 () Bool)

(assert (=> bm!579116 m!7385678))

(declare-fun m!7385680 () Bool)

(assert (=> b!6610995 m!7385680))

(assert (=> b!6610804 d!2072858))

(declare-fun b!6611025 () Bool)

(declare-fun e!3999764 () Bool)

(declare-fun lt!2416691 () Bool)

(assert (=> b!6611025 (= e!3999764 (not lt!2416691))))

(declare-fun b!6611026 () Bool)

(declare-fun e!3999762 () Bool)

(assert (=> b!6611026 (= e!3999762 (nullable!6473 r!7292))))

(declare-fun b!6611027 () Bool)

(declare-fun e!3999760 () Bool)

(declare-fun e!3999761 () Bool)

(assert (=> b!6611027 (= e!3999760 e!3999761)))

(declare-fun res!2711026 () Bool)

(assert (=> b!6611027 (=> (not res!2711026) (not e!3999761))))

(assert (=> b!6611027 (= res!2711026 (not lt!2416691))))

(declare-fun b!6611028 () Bool)

(declare-fun res!2711024 () Bool)

(assert (=> b!6611028 (=> res!2711024 e!3999760)))

(assert (=> b!6611028 (= res!2711024 (not (is-ElementMatch!16480 r!7292)))))

(assert (=> b!6611028 (= e!3999764 e!3999760)))

(declare-fun b!6611029 () Bool)

(declare-fun res!2711023 () Bool)

(declare-fun e!3999766 () Bool)

(assert (=> b!6611029 (=> res!2711023 e!3999766)))

(assert (=> b!6611029 (= res!2711023 (not (isEmpty!37897 (tail!12489 s!2326))))))

(declare-fun b!6611030 () Bool)

(declare-fun e!3999763 () Bool)

(declare-fun call!579124 () Bool)

(assert (=> b!6611030 (= e!3999763 (= lt!2416691 call!579124))))

(declare-fun b!6611031 () Bool)

(assert (=> b!6611031 (= e!3999761 e!3999766)))

(declare-fun res!2711021 () Bool)

(assert (=> b!6611031 (=> res!2711021 e!3999766)))

(assert (=> b!6611031 (= res!2711021 call!579124)))

(declare-fun b!6611033 () Bool)

(declare-fun derivativeStep!5160 (Regex!16480 C!33230) Regex!16480)

(assert (=> b!6611033 (= e!3999762 (matchR!8663 (derivativeStep!5160 r!7292 (head!13404 s!2326)) (tail!12489 s!2326)))))

(declare-fun b!6611034 () Bool)

(declare-fun res!2711020 () Bool)

(assert (=> b!6611034 (=> res!2711020 e!3999760)))

(declare-fun e!3999765 () Bool)

(assert (=> b!6611034 (= res!2711020 e!3999765)))

(declare-fun res!2711019 () Bool)

(assert (=> b!6611034 (=> (not res!2711019) (not e!3999765))))

(assert (=> b!6611034 (= res!2711019 lt!2416691)))

(declare-fun b!6611035 () Bool)

(assert (=> b!6611035 (= e!3999765 (= (head!13404 s!2326) (c!1218377 r!7292)))))

(declare-fun b!6611036 () Bool)

(declare-fun res!2711022 () Bool)

(assert (=> b!6611036 (=> (not res!2711022) (not e!3999765))))

(assert (=> b!6611036 (= res!2711022 (isEmpty!37897 (tail!12489 s!2326)))))

(declare-fun b!6611037 () Bool)

(assert (=> b!6611037 (= e!3999766 (not (= (head!13404 s!2326) (c!1218377 r!7292))))))

(declare-fun b!6611038 () Bool)

(assert (=> b!6611038 (= e!3999763 e!3999764)))

(declare-fun c!1218419 () Bool)

(assert (=> b!6611038 (= c!1218419 (is-EmptyLang!16480 r!7292))))

(declare-fun bm!579119 () Bool)

(assert (=> bm!579119 (= call!579124 (isEmpty!37897 s!2326))))

(declare-fun b!6611032 () Bool)

(declare-fun res!2711025 () Bool)

(assert (=> b!6611032 (=> (not res!2711025) (not e!3999765))))

(assert (=> b!6611032 (= res!2711025 (not call!579124))))

(declare-fun d!2072860 () Bool)

(assert (=> d!2072860 e!3999763))

(declare-fun c!1218418 () Bool)

(assert (=> d!2072860 (= c!1218418 (is-EmptyExpr!16480 r!7292))))

(assert (=> d!2072860 (= lt!2416691 e!3999762)))

(declare-fun c!1218420 () Bool)

(assert (=> d!2072860 (= c!1218420 (isEmpty!37897 s!2326))))

(assert (=> d!2072860 (validRegex!8216 r!7292)))

(assert (=> d!2072860 (= (matchR!8663 r!7292 s!2326) lt!2416691)))

(assert (= (and d!2072860 c!1218420) b!6611026))

(assert (= (and d!2072860 (not c!1218420)) b!6611033))

(assert (= (and d!2072860 c!1218418) b!6611030))

(assert (= (and d!2072860 (not c!1218418)) b!6611038))

(assert (= (and b!6611038 c!1218419) b!6611025))

(assert (= (and b!6611038 (not c!1218419)) b!6611028))

(assert (= (and b!6611028 (not res!2711024)) b!6611034))

(assert (= (and b!6611034 res!2711019) b!6611032))

(assert (= (and b!6611032 res!2711025) b!6611036))

(assert (= (and b!6611036 res!2711022) b!6611035))

(assert (= (and b!6611034 (not res!2711020)) b!6611027))

(assert (= (and b!6611027 res!2711026) b!6611031))

(assert (= (and b!6611031 (not res!2711021)) b!6611029))

(assert (= (and b!6611029 (not res!2711023)) b!6611037))

(assert (= (or b!6611030 b!6611031 b!6611032) bm!579119))

(assert (=> bm!579119 m!7385678))

(declare-fun m!7385682 () Bool)

(assert (=> b!6611029 m!7385682))

(assert (=> b!6611029 m!7385682))

(declare-fun m!7385684 () Bool)

(assert (=> b!6611029 m!7385684))

(declare-fun m!7385686 () Bool)

(assert (=> b!6611035 m!7385686))

(assert (=> b!6611036 m!7385682))

(assert (=> b!6611036 m!7385682))

(assert (=> b!6611036 m!7385684))

(assert (=> d!2072860 m!7385678))

(assert (=> d!2072860 m!7385532))

(declare-fun m!7385688 () Bool)

(assert (=> b!6611026 m!7385688))

(assert (=> b!6611033 m!7385686))

(assert (=> b!6611033 m!7385686))

(declare-fun m!7385690 () Bool)

(assert (=> b!6611033 m!7385690))

(assert (=> b!6611033 m!7385682))

(assert (=> b!6611033 m!7385690))

(assert (=> b!6611033 m!7385682))

(declare-fun m!7385692 () Bool)

(assert (=> b!6611033 m!7385692))

(assert (=> b!6611037 m!7385686))

(assert (=> b!6610804 d!2072860))

(declare-fun d!2072862 () Bool)

(assert (=> d!2072862 (= (matchR!8663 r!7292 s!2326) (matchRSpec!3581 r!7292 s!2326))))

(declare-fun lt!2416694 () Unit!159275)

(declare-fun choose!49364 (Regex!16480 List!65741) Unit!159275)

(assert (=> d!2072862 (= lt!2416694 (choose!49364 r!7292 s!2326))))

(assert (=> d!2072862 (validRegex!8216 r!7292)))

(assert (=> d!2072862 (= (mainMatchTheorem!3581 r!7292 s!2326) lt!2416694)))

(declare-fun bs!1695241 () Bool)

(assert (= bs!1695241 d!2072862))

(assert (=> bs!1695241 m!7385538))

(assert (=> bs!1695241 m!7385536))

(declare-fun m!7385694 () Bool)

(assert (=> bs!1695241 m!7385694))

(assert (=> bs!1695241 m!7385532))

(assert (=> b!6610804 d!2072862))

(declare-fun b!6611077 () Bool)

(declare-fun e!3999789 () Option!16371)

(assert (=> b!6611077 (= e!3999789 None!16370)))

(declare-fun b!6611078 () Bool)

(declare-fun e!3999792 () Bool)

(assert (=> b!6611078 (= e!3999792 (matchR!8663 (regTwo!33472 r!7292) s!2326))))

(declare-fun d!2072864 () Bool)

(declare-fun e!3999791 () Bool)

(assert (=> d!2072864 e!3999791))

(declare-fun res!2711044 () Bool)

(assert (=> d!2072864 (=> res!2711044 e!3999791)))

(declare-fun e!3999793 () Bool)

(assert (=> d!2072864 (= res!2711044 e!3999793)))

(declare-fun res!2711041 () Bool)

(assert (=> d!2072864 (=> (not res!2711041) (not e!3999793))))

(declare-fun lt!2416704 () Option!16371)

(assert (=> d!2072864 (= res!2711041 (isDefined!13074 lt!2416704))))

(declare-fun e!3999790 () Option!16371)

(assert (=> d!2072864 (= lt!2416704 e!3999790)))

(declare-fun c!1218433 () Bool)

(assert (=> d!2072864 (= c!1218433 e!3999792)))

(declare-fun res!2711045 () Bool)

(assert (=> d!2072864 (=> (not res!2711045) (not e!3999792))))

(assert (=> d!2072864 (= res!2711045 (matchR!8663 (regOne!33472 r!7292) Nil!65617))))

(assert (=> d!2072864 (validRegex!8216 (regOne!33472 r!7292))))

(assert (=> d!2072864 (= (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) Nil!65617 s!2326 s!2326) lt!2416704)))

(declare-fun b!6611079 () Bool)

(assert (=> b!6611079 (= e!3999790 (Some!16370 (tuple2!66919 Nil!65617 s!2326)))))

(declare-fun b!6611080 () Bool)

(declare-fun lt!2416703 () Unit!159275)

(declare-fun lt!2416705 () Unit!159275)

(assert (=> b!6611080 (= lt!2416703 lt!2416705)))

(declare-fun ++!14630 (List!65741 List!65741) List!65741)

(assert (=> b!6611080 (= (++!14630 (++!14630 Nil!65617 (Cons!65617 (h!72065 s!2326) Nil!65617)) (t!379395 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2619 (List!65741 C!33230 List!65741 List!65741) Unit!159275)

(assert (=> b!6611080 (= lt!2416705 (lemmaMoveElementToOtherListKeepsConcatEq!2619 Nil!65617 (h!72065 s!2326) (t!379395 s!2326) s!2326))))

(assert (=> b!6611080 (= e!3999789 (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) (++!14630 Nil!65617 (Cons!65617 (h!72065 s!2326) Nil!65617)) (t!379395 s!2326) s!2326))))

(declare-fun b!6611081 () Bool)

(assert (=> b!6611081 (= e!3999791 (not (isDefined!13074 lt!2416704)))))

(declare-fun b!6611082 () Bool)

(assert (=> b!6611082 (= e!3999790 e!3999789)))

(declare-fun c!1218434 () Bool)

(assert (=> b!6611082 (= c!1218434 (is-Nil!65617 s!2326))))

(declare-fun b!6611083 () Bool)

(declare-fun get!22802 (Option!16371) tuple2!66918)

(assert (=> b!6611083 (= e!3999793 (= (++!14630 (_1!36762 (get!22802 lt!2416704)) (_2!36762 (get!22802 lt!2416704))) s!2326))))

(declare-fun b!6611084 () Bool)

(declare-fun res!2711042 () Bool)

(assert (=> b!6611084 (=> (not res!2711042) (not e!3999793))))

(assert (=> b!6611084 (= res!2711042 (matchR!8663 (regOne!33472 r!7292) (_1!36762 (get!22802 lt!2416704))))))

(declare-fun b!6611085 () Bool)

(declare-fun res!2711043 () Bool)

(assert (=> b!6611085 (=> (not res!2711043) (not e!3999793))))

(assert (=> b!6611085 (= res!2711043 (matchR!8663 (regTwo!33472 r!7292) (_2!36762 (get!22802 lt!2416704))))))

(assert (= (and d!2072864 res!2711045) b!6611078))

(assert (= (and d!2072864 c!1218433) b!6611079))

(assert (= (and d!2072864 (not c!1218433)) b!6611082))

(assert (= (and b!6611082 c!1218434) b!6611077))

(assert (= (and b!6611082 (not c!1218434)) b!6611080))

(assert (= (and d!2072864 res!2711041) b!6611084))

(assert (= (and b!6611084 res!2711042) b!6611085))

(assert (= (and b!6611085 res!2711043) b!6611083))

(assert (= (and d!2072864 (not res!2711044)) b!6611081))

(declare-fun m!7385696 () Bool)

(assert (=> b!6611078 m!7385696))

(declare-fun m!7385698 () Bool)

(assert (=> b!6611081 m!7385698))

(declare-fun m!7385700 () Bool)

(assert (=> b!6611080 m!7385700))

(assert (=> b!6611080 m!7385700))

(declare-fun m!7385702 () Bool)

(assert (=> b!6611080 m!7385702))

(declare-fun m!7385704 () Bool)

(assert (=> b!6611080 m!7385704))

(assert (=> b!6611080 m!7385700))

(declare-fun m!7385706 () Bool)

(assert (=> b!6611080 m!7385706))

(assert (=> d!2072864 m!7385698))

(declare-fun m!7385708 () Bool)

(assert (=> d!2072864 m!7385708))

(declare-fun m!7385710 () Bool)

(assert (=> d!2072864 m!7385710))

(declare-fun m!7385712 () Bool)

(assert (=> b!6611083 m!7385712))

(declare-fun m!7385714 () Bool)

(assert (=> b!6611083 m!7385714))

(assert (=> b!6611084 m!7385712))

(declare-fun m!7385716 () Bool)

(assert (=> b!6611084 m!7385716))

(assert (=> b!6611085 m!7385712))

(declare-fun m!7385718 () Bool)

(assert (=> b!6611085 m!7385718))

(assert (=> b!6610794 d!2072864))

(declare-fun d!2072868 () Bool)

(declare-fun choose!49365 (Int) Bool)

(assert (=> d!2072868 (= (Exists!3550 lambda!369165) (choose!49365 lambda!369165))))

(declare-fun bs!1695242 () Bool)

(assert (= bs!1695242 d!2072868))

(declare-fun m!7385720 () Bool)

(assert (=> bs!1695242 m!7385720))

(assert (=> b!6610794 d!2072868))

(declare-fun bs!1695243 () Bool)

(declare-fun d!2072870 () Bool)

(assert (= bs!1695243 (and d!2072870 b!6610794)))

(declare-fun lambda!369195 () Int)

(assert (=> bs!1695243 (= lambda!369195 lambda!369164)))

(assert (=> bs!1695243 (not (= lambda!369195 lambda!369165))))

(declare-fun bs!1695244 () Bool)

(assert (= bs!1695244 (and d!2072870 b!6610988)))

(assert (=> bs!1695244 (not (= lambda!369195 lambda!369188))))

(declare-fun bs!1695245 () Bool)

(assert (= bs!1695245 (and d!2072870 b!6610990)))

(assert (=> bs!1695245 (not (= lambda!369195 lambda!369189))))

(assert (=> d!2072870 true))

(assert (=> d!2072870 true))

(assert (=> d!2072870 true))

(assert (=> d!2072870 (= (isDefined!13074 (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) Nil!65617 s!2326 s!2326)) (Exists!3550 lambda!369195))))

(declare-fun lt!2416709 () Unit!159275)

(declare-fun choose!49366 (Regex!16480 Regex!16480 List!65741) Unit!159275)

(assert (=> d!2072870 (= lt!2416709 (choose!49366 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326))))

(assert (=> d!2072870 (validRegex!8216 (regOne!33472 r!7292))))

(assert (=> d!2072870 (= (lemmaFindConcatSeparationEquivalentToExists!2549 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326) lt!2416709)))

(declare-fun bs!1695246 () Bool)

(assert (= bs!1695246 d!2072870))

(declare-fun m!7385742 () Bool)

(assert (=> bs!1695246 m!7385742))

(declare-fun m!7385744 () Bool)

(assert (=> bs!1695246 m!7385744))

(assert (=> bs!1695246 m!7385710))

(assert (=> bs!1695246 m!7385546))

(assert (=> bs!1695246 m!7385548))

(assert (=> bs!1695246 m!7385546))

(assert (=> b!6610794 d!2072870))

(declare-fun bs!1695248 () Bool)

(declare-fun d!2072874 () Bool)

(assert (= bs!1695248 (and d!2072874 b!6610990)))

(declare-fun lambda!369203 () Int)

(assert (=> bs!1695248 (not (= lambda!369203 lambda!369189))))

(declare-fun bs!1695249 () Bool)

(assert (= bs!1695249 (and d!2072874 d!2072870)))

(assert (=> bs!1695249 (= lambda!369203 lambda!369195)))

(declare-fun bs!1695250 () Bool)

(assert (= bs!1695250 (and d!2072874 b!6610794)))

(assert (=> bs!1695250 (not (= lambda!369203 lambda!369165))))

(declare-fun bs!1695251 () Bool)

(assert (= bs!1695251 (and d!2072874 b!6610988)))

(assert (=> bs!1695251 (not (= lambda!369203 lambda!369188))))

(assert (=> bs!1695250 (= lambda!369203 lambda!369164)))

(assert (=> d!2072874 true))

(assert (=> d!2072874 true))

(assert (=> d!2072874 true))

(declare-fun lambda!369204 () Int)

(assert (=> bs!1695248 (= lambda!369204 lambda!369189)))

(assert (=> bs!1695249 (not (= lambda!369204 lambda!369195))))

(assert (=> bs!1695250 (= lambda!369204 lambda!369165)))

(assert (=> bs!1695250 (not (= lambda!369204 lambda!369164))))

(declare-fun bs!1695252 () Bool)

(assert (= bs!1695252 d!2072874))

(assert (=> bs!1695252 (not (= lambda!369204 lambda!369203))))

(assert (=> bs!1695251 (not (= lambda!369204 lambda!369188))))

(assert (=> d!2072874 true))

(assert (=> d!2072874 true))

(assert (=> d!2072874 true))

(assert (=> d!2072874 (= (Exists!3550 lambda!369203) (Exists!3550 lambda!369204))))

(declare-fun lt!2416715 () Unit!159275)

(declare-fun choose!49367 (Regex!16480 Regex!16480 List!65741) Unit!159275)

(assert (=> d!2072874 (= lt!2416715 (choose!49367 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326))))

(assert (=> d!2072874 (validRegex!8216 (regOne!33472 r!7292))))

(assert (=> d!2072874 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2087 (regOne!33472 r!7292) (regTwo!33472 r!7292) s!2326) lt!2416715)))

(declare-fun m!7385750 () Bool)

(assert (=> bs!1695252 m!7385750))

(declare-fun m!7385752 () Bool)

(assert (=> bs!1695252 m!7385752))

(declare-fun m!7385754 () Bool)

(assert (=> bs!1695252 m!7385754))

(assert (=> bs!1695252 m!7385710))

(assert (=> b!6610794 d!2072874))

(declare-fun d!2072878 () Bool)

(assert (=> d!2072878 (= (Exists!3550 lambda!369164) (choose!49365 lambda!369164))))

(declare-fun bs!1695253 () Bool)

(assert (= bs!1695253 d!2072878))

(declare-fun m!7385756 () Bool)

(assert (=> bs!1695253 m!7385756))

(assert (=> b!6610794 d!2072878))

(declare-fun d!2072880 () Bool)

(declare-fun isEmpty!37898 (Option!16371) Bool)

(assert (=> d!2072880 (= (isDefined!13074 (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) Nil!65617 s!2326 s!2326)) (not (isEmpty!37898 (findConcatSeparation!2785 (regOne!33472 r!7292) (regTwo!33472 r!7292) Nil!65617 s!2326 s!2326))))))

(declare-fun bs!1695254 () Bool)

(assert (= bs!1695254 d!2072880))

(assert (=> bs!1695254 m!7385546))

(declare-fun m!7385758 () Bool)

(assert (=> bs!1695254 m!7385758))

(assert (=> b!6610794 d!2072880))

(declare-fun d!2072882 () Bool)

(declare-fun nullableFct!2395 (Regex!16480) Bool)

(assert (=> d!2072882 (= (nullable!6473 (regOne!33472 (regOne!33472 r!7292))) (nullableFct!2395 (regOne!33472 (regOne!33472 r!7292))))))

(declare-fun bs!1695255 () Bool)

(assert (= bs!1695255 d!2072882))

(declare-fun m!7385760 () Bool)

(assert (=> bs!1695255 m!7385760))

(assert (=> b!6610814 d!2072882))

(declare-fun bs!1695256 () Bool)

(declare-fun d!2072884 () Bool)

(assert (= bs!1695256 (and d!2072884 d!2072848)))

(declare-fun lambda!369205 () Int)

(assert (=> bs!1695256 (= lambda!369205 lambda!369180)))

(declare-fun bs!1695257 () Bool)

(assert (= bs!1695257 (and d!2072884 d!2072856)))

(assert (=> bs!1695257 (= lambda!369205 lambda!369183)))

(assert (=> d!2072884 (= (inv!84448 setElem!45157) (forall!15676 (exprs!6364 setElem!45157) lambda!369205))))

(declare-fun bs!1695258 () Bool)

(assert (= bs!1695258 d!2072884))

(declare-fun m!7385762 () Bool)

(assert (=> bs!1695258 m!7385762))

(assert (=> setNonEmpty!45157 d!2072884))

(declare-fun b!6611154 () Bool)

(declare-fun e!3999841 () Bool)

(declare-fun e!3999843 () Bool)

(assert (=> b!6611154 (= e!3999841 e!3999843)))

(declare-fun res!2711077 () Bool)

(assert (=> b!6611154 (= res!2711077 (not (nullable!6473 (reg!16809 r!7292))))))

(assert (=> b!6611154 (=> (not res!2711077) (not e!3999843))))

(declare-fun b!6611155 () Bool)

(declare-fun e!3999842 () Bool)

(assert (=> b!6611155 (= e!3999841 e!3999842)))

(declare-fun c!1218455 () Bool)

(assert (=> b!6611155 (= c!1218455 (is-Union!16480 r!7292))))

(declare-fun d!2072886 () Bool)

(declare-fun res!2711076 () Bool)

(declare-fun e!3999839 () Bool)

(assert (=> d!2072886 (=> res!2711076 e!3999839)))

(assert (=> d!2072886 (= res!2711076 (is-ElementMatch!16480 r!7292))))

(assert (=> d!2072886 (= (validRegex!8216 r!7292) e!3999839)))

(declare-fun b!6611156 () Bool)

(declare-fun e!3999840 () Bool)

(declare-fun e!3999838 () Bool)

(assert (=> b!6611156 (= e!3999840 e!3999838)))

(declare-fun res!2711078 () Bool)

(assert (=> b!6611156 (=> (not res!2711078) (not e!3999838))))

(declare-fun call!579132 () Bool)

(assert (=> b!6611156 (= res!2711078 call!579132)))

(declare-fun bm!579126 () Bool)

(declare-fun call!579133 () Bool)

(declare-fun call!579131 () Bool)

(assert (=> bm!579126 (= call!579133 call!579131)))

(declare-fun b!6611157 () Bool)

(declare-fun res!2711079 () Bool)

(declare-fun e!3999837 () Bool)

(assert (=> b!6611157 (=> (not res!2711079) (not e!3999837))))

(assert (=> b!6611157 (= res!2711079 call!579132)))

(assert (=> b!6611157 (= e!3999842 e!3999837)))

(declare-fun b!6611158 () Bool)

(declare-fun res!2711080 () Bool)

(assert (=> b!6611158 (=> res!2711080 e!3999840)))

(assert (=> b!6611158 (= res!2711080 (not (is-Concat!25325 r!7292)))))

(assert (=> b!6611158 (= e!3999842 e!3999840)))

(declare-fun c!1218454 () Bool)

(declare-fun bm!579127 () Bool)

(assert (=> bm!579127 (= call!579131 (validRegex!8216 (ite c!1218454 (reg!16809 r!7292) (ite c!1218455 (regTwo!33473 r!7292) (regTwo!33472 r!7292)))))))

(declare-fun b!6611159 () Bool)

(assert (=> b!6611159 (= e!3999837 call!579133)))

(declare-fun b!6611160 () Bool)

(assert (=> b!6611160 (= e!3999838 call!579133)))

(declare-fun b!6611161 () Bool)

(assert (=> b!6611161 (= e!3999839 e!3999841)))

(assert (=> b!6611161 (= c!1218454 (is-Star!16480 r!7292))))

(declare-fun b!6611162 () Bool)

(assert (=> b!6611162 (= e!3999843 call!579131)))

(declare-fun bm!579128 () Bool)

(assert (=> bm!579128 (= call!579132 (validRegex!8216 (ite c!1218455 (regOne!33473 r!7292) (regOne!33472 r!7292))))))

(assert (= (and d!2072886 (not res!2711076)) b!6611161))

(assert (= (and b!6611161 c!1218454) b!6611154))

(assert (= (and b!6611161 (not c!1218454)) b!6611155))

(assert (= (and b!6611154 res!2711077) b!6611162))

(assert (= (and b!6611155 c!1218455) b!6611157))

(assert (= (and b!6611155 (not c!1218455)) b!6611158))

(assert (= (and b!6611157 res!2711079) b!6611159))

(assert (= (and b!6611158 (not res!2711080)) b!6611156))

(assert (= (and b!6611156 res!2711078) b!6611160))

(assert (= (or b!6611159 b!6611160) bm!579126))

(assert (= (or b!6611157 b!6611156) bm!579128))

(assert (= (or b!6611162 bm!579126) bm!579127))

(declare-fun m!7385764 () Bool)

(assert (=> b!6611154 m!7385764))

(declare-fun m!7385766 () Bool)

(assert (=> bm!579127 m!7385766))

(declare-fun m!7385768 () Bool)

(assert (=> bm!579128 m!7385768))

(assert (=> start!646156 d!2072886))

(declare-fun d!2072888 () Bool)

(assert (=> d!2072888 (= (isEmpty!37893 (t!379394 zl!343)) (is-Nil!65616 (t!379394 zl!343)))))

(assert (=> b!6610795 d!2072888))

(declare-fun b!6611195 () Bool)

(declare-fun e!3999865 () (Set Context!11728))

(assert (=> b!6611195 (= e!3999865 (as set.empty (Set Context!11728)))))

(declare-fun b!6611196 () Bool)

(declare-fun e!3999863 () (Set Context!11728))

(declare-fun call!579151 () (Set Context!11728))

(declare-fun call!579152 () (Set Context!11728))

(assert (=> b!6611196 (= e!3999863 (set.union call!579151 call!579152))))

(declare-fun b!6611197 () Bool)

(declare-fun c!1218467 () Bool)

(assert (=> b!6611197 (= c!1218467 (is-Star!16480 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun e!3999861 () (Set Context!11728))

(assert (=> b!6611197 (= e!3999861 e!3999865)))

(declare-fun b!6611198 () Bool)

(declare-fun call!579154 () (Set Context!11728))

(assert (=> b!6611198 (= e!3999861 call!579154)))

(declare-fun b!6611199 () Bool)

(declare-fun c!1218470 () Bool)

(declare-fun e!3999862 () Bool)

(assert (=> b!6611199 (= c!1218470 e!3999862)))

(declare-fun res!2711093 () Bool)

(assert (=> b!6611199 (=> (not res!2711093) (not e!3999862))))

(assert (=> b!6611199 (= res!2711093 (is-Concat!25325 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun e!3999864 () (Set Context!11728))

(assert (=> b!6611199 (= e!3999863 e!3999864)))

(declare-fun b!6611200 () Bool)

(assert (=> b!6611200 (= e!3999865 call!579154)))

(declare-fun call!579150 () List!65739)

(declare-fun c!1218466 () Bool)

(declare-fun c!1218469 () Bool)

(declare-fun bm!579145 () Bool)

(assert (=> bm!579145 (= call!579152 (derivationStepZipperDown!1728 (ite c!1218469 (regTwo!33473 (h!72063 (exprs!6364 (h!72064 zl!343)))) (ite c!1218470 (regTwo!33472 (h!72063 (exprs!6364 (h!72064 zl!343)))) (ite c!1218466 (regOne!33472 (h!72063 (exprs!6364 (h!72064 zl!343)))) (reg!16809 (h!72063 (exprs!6364 (h!72064 zl!343))))))) (ite (or c!1218469 c!1218470) lt!2416646 (Context!11729 call!579150)) (h!72065 s!2326)))))

(declare-fun bm!579146 () Bool)

(declare-fun call!579155 () List!65739)

(declare-fun $colon$colon!2317 (List!65739 Regex!16480) List!65739)

(assert (=> bm!579146 (= call!579155 ($colon$colon!2317 (exprs!6364 lt!2416646) (ite (or c!1218470 c!1218466) (regTwo!33472 (h!72063 (exprs!6364 (h!72064 zl!343)))) (h!72063 (exprs!6364 (h!72064 zl!343))))))))

(declare-fun b!6611201 () Bool)

(assert (=> b!6611201 (= e!3999864 e!3999861)))

(assert (=> b!6611201 (= c!1218466 (is-Concat!25325 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun bm!579147 () Bool)

(declare-fun call!579153 () (Set Context!11728))

(assert (=> bm!579147 (= call!579154 call!579153)))

(declare-fun bm!579148 () Bool)

(assert (=> bm!579148 (= call!579151 (derivationStepZipperDown!1728 (ite c!1218469 (regOne!33473 (h!72063 (exprs!6364 (h!72064 zl!343)))) (regOne!33472 (h!72063 (exprs!6364 (h!72064 zl!343))))) (ite c!1218469 lt!2416646 (Context!11729 call!579155)) (h!72065 s!2326)))))

(declare-fun d!2072890 () Bool)

(declare-fun c!1218468 () Bool)

(assert (=> d!2072890 (= c!1218468 (and (is-ElementMatch!16480 (h!72063 (exprs!6364 (h!72064 zl!343)))) (= (c!1218377 (h!72063 (exprs!6364 (h!72064 zl!343)))) (h!72065 s!2326))))))

(declare-fun e!3999860 () (Set Context!11728))

(assert (=> d!2072890 (= (derivationStepZipperDown!1728 (h!72063 (exprs!6364 (h!72064 zl!343))) lt!2416646 (h!72065 s!2326)) e!3999860)))

(declare-fun b!6611202 () Bool)

(assert (=> b!6611202 (= e!3999860 e!3999863)))

(assert (=> b!6611202 (= c!1218469 (is-Union!16480 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun b!6611203 () Bool)

(assert (=> b!6611203 (= e!3999864 (set.union call!579151 call!579153))))

(declare-fun b!6611204 () Bool)

(assert (=> b!6611204 (= e!3999860 (set.insert lt!2416646 (as set.empty (Set Context!11728))))))

(declare-fun bm!579149 () Bool)

(assert (=> bm!579149 (= call!579150 call!579155)))

(declare-fun bm!579150 () Bool)

(assert (=> bm!579150 (= call!579153 call!579152)))

(declare-fun b!6611205 () Bool)

(assert (=> b!6611205 (= e!3999862 (nullable!6473 (regOne!33472 (h!72063 (exprs!6364 (h!72064 zl!343))))))))

(assert (= (and d!2072890 c!1218468) b!6611204))

(assert (= (and d!2072890 (not c!1218468)) b!6611202))

(assert (= (and b!6611202 c!1218469) b!6611196))

(assert (= (and b!6611202 (not c!1218469)) b!6611199))

(assert (= (and b!6611199 res!2711093) b!6611205))

(assert (= (and b!6611199 c!1218470) b!6611203))

(assert (= (and b!6611199 (not c!1218470)) b!6611201))

(assert (= (and b!6611201 c!1218466) b!6611198))

(assert (= (and b!6611201 (not c!1218466)) b!6611197))

(assert (= (and b!6611197 c!1218467) b!6611200))

(assert (= (and b!6611197 (not c!1218467)) b!6611195))

(assert (= (or b!6611198 b!6611200) bm!579149))

(assert (= (or b!6611198 b!6611200) bm!579147))

(assert (= (or b!6611203 bm!579149) bm!579146))

(assert (= (or b!6611203 bm!579147) bm!579150))

(assert (= (or b!6611196 bm!579150) bm!579145))

(assert (= (or b!6611196 b!6611203) bm!579148))

(declare-fun m!7385770 () Bool)

(assert (=> bm!579148 m!7385770))

(declare-fun m!7385772 () Bool)

(assert (=> bm!579145 m!7385772))

(declare-fun m!7385774 () Bool)

(assert (=> b!6611205 m!7385774))

(declare-fun m!7385776 () Bool)

(assert (=> bm!579146 m!7385776))

(declare-fun m!7385778 () Bool)

(assert (=> b!6611204 m!7385778))

(assert (=> b!6610812 d!2072890))

(declare-fun b!6611228 () Bool)

(declare-fun e!3999879 () (Set Context!11728))

(declare-fun call!579160 () (Set Context!11728))

(assert (=> b!6611228 (= e!3999879 call!579160)))

(declare-fun bm!579155 () Bool)

(assert (=> bm!579155 (= call!579160 (derivationStepZipperDown!1728 (h!72063 (exprs!6364 lt!2416646)) (Context!11729 (t!379393 (exprs!6364 lt!2416646))) (h!72065 s!2326)))))

(declare-fun b!6611229 () Bool)

(declare-fun e!3999880 () (Set Context!11728))

(assert (=> b!6611229 (= e!3999880 (set.union call!579160 (derivationStepZipperUp!1654 (Context!11729 (t!379393 (exprs!6364 lt!2416646))) (h!72065 s!2326))))))

(declare-fun d!2072892 () Bool)

(declare-fun c!1218479 () Bool)

(declare-fun e!3999881 () Bool)

(assert (=> d!2072892 (= c!1218479 e!3999881)))

(declare-fun res!2711099 () Bool)

(assert (=> d!2072892 (=> (not res!2711099) (not e!3999881))))

(assert (=> d!2072892 (= res!2711099 (is-Cons!65615 (exprs!6364 lt!2416646)))))

(assert (=> d!2072892 (= (derivationStepZipperUp!1654 lt!2416646 (h!72065 s!2326)) e!3999880)))

(declare-fun b!6611227 () Bool)

(assert (=> b!6611227 (= e!3999879 (as set.empty (Set Context!11728)))))

(declare-fun b!6611230 () Bool)

(assert (=> b!6611230 (= e!3999880 e!3999879)))

(declare-fun c!1218480 () Bool)

(assert (=> b!6611230 (= c!1218480 (is-Cons!65615 (exprs!6364 lt!2416646)))))

(declare-fun b!6611231 () Bool)

(assert (=> b!6611231 (= e!3999881 (nullable!6473 (h!72063 (exprs!6364 lt!2416646))))))

(assert (= (and d!2072892 res!2711099) b!6611231))

(assert (= (and d!2072892 c!1218479) b!6611229))

(assert (= (and d!2072892 (not c!1218479)) b!6611230))

(assert (= (and b!6611230 c!1218480) b!6611228))

(assert (= (and b!6611230 (not c!1218480)) b!6611227))

(assert (= (or b!6611229 b!6611228) bm!579155))

(declare-fun m!7385780 () Bool)

(assert (=> bm!579155 m!7385780))

(declare-fun m!7385782 () Bool)

(assert (=> b!6611229 m!7385782))

(declare-fun m!7385784 () Bool)

(assert (=> b!6611231 m!7385784))

(assert (=> b!6610812 d!2072892))

(declare-fun d!2072894 () Bool)

(assert (=> d!2072894 (= (nullable!6473 (h!72063 (exprs!6364 (h!72064 zl!343)))) (nullableFct!2395 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(declare-fun bs!1695261 () Bool)

(assert (= bs!1695261 d!2072894))

(declare-fun m!7385786 () Bool)

(assert (=> bs!1695261 m!7385786))

(assert (=> b!6610812 d!2072894))

(declare-fun b!6611233 () Bool)

(declare-fun e!3999882 () (Set Context!11728))

(declare-fun call!579161 () (Set Context!11728))

(assert (=> b!6611233 (= e!3999882 call!579161)))

(declare-fun bm!579156 () Bool)

(assert (=> bm!579156 (= call!579161 (derivationStepZipperDown!1728 (h!72063 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343))))))) (Context!11729 (t!379393 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343)))))))) (h!72065 s!2326)))))

(declare-fun b!6611234 () Bool)

(declare-fun e!3999883 () (Set Context!11728))

(assert (=> b!6611234 (= e!3999883 (set.union call!579161 (derivationStepZipperUp!1654 (Context!11729 (t!379393 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343)))))))) (h!72065 s!2326))))))

(declare-fun d!2072896 () Bool)

(declare-fun c!1218481 () Bool)

(declare-fun e!3999884 () Bool)

(assert (=> d!2072896 (= c!1218481 e!3999884)))

(declare-fun res!2711100 () Bool)

(assert (=> d!2072896 (=> (not res!2711100) (not e!3999884))))

(assert (=> d!2072896 (= res!2711100 (is-Cons!65615 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343))))))))))

(assert (=> d!2072896 (= (derivationStepZipperUp!1654 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343))))) (h!72065 s!2326)) e!3999883)))

(declare-fun b!6611232 () Bool)

(assert (=> b!6611232 (= e!3999882 (as set.empty (Set Context!11728)))))

(declare-fun b!6611235 () Bool)

(assert (=> b!6611235 (= e!3999883 e!3999882)))

(declare-fun c!1218482 () Bool)

(assert (=> b!6611235 (= c!1218482 (is-Cons!65615 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343))))))))))

(declare-fun b!6611236 () Bool)

(assert (=> b!6611236 (= e!3999884 (nullable!6473 (h!72063 (exprs!6364 (Context!11729 (Cons!65615 (h!72063 (exprs!6364 (h!72064 zl!343))) (t!379393 (exprs!6364 (h!72064 zl!343)))))))))))

(assert (= (and d!2072896 res!2711100) b!6611236))

(assert (= (and d!2072896 c!1218481) b!6611234))

(assert (= (and d!2072896 (not c!1218481)) b!6611235))

(assert (= (and b!6611235 c!1218482) b!6611233))

(assert (= (and b!6611235 (not c!1218482)) b!6611232))

(assert (= (or b!6611234 b!6611233) bm!579156))

(declare-fun m!7385788 () Bool)

(assert (=> bm!579156 m!7385788))

(declare-fun m!7385790 () Bool)

(assert (=> b!6611234 m!7385790))

(declare-fun m!7385792 () Bool)

(assert (=> b!6611236 m!7385792))

(assert (=> b!6610812 d!2072896))

(declare-fun d!2072898 () Bool)

(declare-fun choose!49368 ((Set Context!11728) Int) (Set Context!11728))

(assert (=> d!2072898 (= (flatMap!1985 z!1189 lambda!369166) (choose!49368 z!1189 lambda!369166))))

(declare-fun bs!1695263 () Bool)

(assert (= bs!1695263 d!2072898))

(declare-fun m!7385802 () Bool)

(assert (=> bs!1695263 m!7385802))

(assert (=> b!6610812 d!2072898))

(declare-fun b!6611238 () Bool)

(declare-fun e!3999885 () (Set Context!11728))

(declare-fun call!579162 () (Set Context!11728))

(assert (=> b!6611238 (= e!3999885 call!579162)))

(declare-fun bm!579157 () Bool)

(assert (=> bm!579157 (= call!579162 (derivationStepZipperDown!1728 (h!72063 (exprs!6364 (h!72064 zl!343))) (Context!11729 (t!379393 (exprs!6364 (h!72064 zl!343)))) (h!72065 s!2326)))))

(declare-fun b!6611239 () Bool)

(declare-fun e!3999886 () (Set Context!11728))

(assert (=> b!6611239 (= e!3999886 (set.union call!579162 (derivationStepZipperUp!1654 (Context!11729 (t!379393 (exprs!6364 (h!72064 zl!343)))) (h!72065 s!2326))))))

(declare-fun d!2072902 () Bool)

(declare-fun c!1218483 () Bool)

(declare-fun e!3999887 () Bool)

(assert (=> d!2072902 (= c!1218483 e!3999887)))

(declare-fun res!2711101 () Bool)

(assert (=> d!2072902 (=> (not res!2711101) (not e!3999887))))

(assert (=> d!2072902 (= res!2711101 (is-Cons!65615 (exprs!6364 (h!72064 zl!343))))))

(assert (=> d!2072902 (= (derivationStepZipperUp!1654 (h!72064 zl!343) (h!72065 s!2326)) e!3999886)))

(declare-fun b!6611237 () Bool)

(assert (=> b!6611237 (= e!3999885 (as set.empty (Set Context!11728)))))

(declare-fun b!6611240 () Bool)

(assert (=> b!6611240 (= e!3999886 e!3999885)))

(declare-fun c!1218484 () Bool)

(assert (=> b!6611240 (= c!1218484 (is-Cons!65615 (exprs!6364 (h!72064 zl!343))))))

(declare-fun b!6611241 () Bool)

(assert (=> b!6611241 (= e!3999887 (nullable!6473 (h!72063 (exprs!6364 (h!72064 zl!343)))))))

(assert (= (and d!2072902 res!2711101) b!6611241))

(assert (= (and d!2072902 c!1218483) b!6611239))

(assert (= (and d!2072902 (not c!1218483)) b!6611240))

(assert (= (and b!6611240 c!1218484) b!6611238))

(assert (= (and b!6611240 (not c!1218484)) b!6611237))

(assert (= (or b!6611239 b!6611238) bm!579157))

(declare-fun m!7385804 () Bool)

(assert (=> bm!579157 m!7385804))

(declare-fun m!7385806 () Bool)

(assert (=> b!6611239 m!7385806))

(assert (=> b!6611241 m!7385528))

(assert (=> b!6610812 d!2072902))

(declare-fun d!2072904 () Bool)

(declare-fun dynLambda!26131 (Int Context!11728) (Set Context!11728))

(assert (=> d!2072904 (= (flatMap!1985 z!1189 lambda!369166) (dynLambda!26131 lambda!369166 (h!72064 zl!343)))))

(declare-fun lt!2416718 () Unit!159275)

(declare-fun choose!49369 ((Set Context!11728) Context!11728 Int) Unit!159275)

(assert (=> d!2072904 (= lt!2416718 (choose!49369 z!1189 (h!72064 zl!343) lambda!369166))))

(assert (=> d!2072904 (= z!1189 (set.insert (h!72064 zl!343) (as set.empty (Set Context!11728))))))

(assert (=> d!2072904 (= (lemmaFlatMapOnSingletonSet!1511 z!1189 (h!72064 zl!343) lambda!369166) lt!2416718)))

(declare-fun b_lambda!250137 () Bool)

(assert (=> (not b_lambda!250137) (not d!2072904)))

(declare-fun bs!1695264 () Bool)

(assert (= bs!1695264 d!2072904))

(assert (=> bs!1695264 m!7385526))

(declare-fun m!7385808 () Bool)

(assert (=> bs!1695264 m!7385808))

(declare-fun m!7385810 () Bool)

(assert (=> bs!1695264 m!7385810))

(declare-fun m!7385812 () Bool)

(assert (=> bs!1695264 m!7385812))

(assert (=> b!6610812 d!2072904))

(declare-fun d!2072906 () Bool)

(declare-fun lt!2416721 () Regex!16480)

(assert (=> d!2072906 (validRegex!8216 lt!2416721)))

(assert (=> d!2072906 (= lt!2416721 (generalisedUnion!2324 (unfocusZipperList!1901 zl!343)))))

(assert (=> d!2072906 (= (unfocusZipper!2222 zl!343) lt!2416721)))

(declare-fun bs!1695265 () Bool)

(assert (= bs!1695265 d!2072906))

(declare-fun m!7385814 () Bool)

(assert (=> bs!1695265 m!7385814))

(assert (=> bs!1695265 m!7385556))

(assert (=> bs!1695265 m!7385556))

(assert (=> bs!1695265 m!7385558))

(assert (=> b!6610803 d!2072906))

(declare-fun d!2072908 () Bool)

(declare-fun e!3999890 () Bool)

(assert (=> d!2072908 (= (matchZipper!2492 (set.union lt!2416637 lt!2416640) (t!379395 s!2326)) e!3999890)))

(declare-fun res!2711104 () Bool)

(assert (=> d!2072908 (=> res!2711104 e!3999890)))

(assert (=> d!2072908 (= res!2711104 (matchZipper!2492 lt!2416637 (t!379395 s!2326)))))

(declare-fun lt!2416724 () Unit!159275)

(declare-fun choose!49370 ((Set Context!11728) (Set Context!11728) List!65741) Unit!159275)

(assert (=> d!2072908 (= lt!2416724 (choose!49370 lt!2416637 lt!2416640 (t!379395 s!2326)))))

(assert (=> d!2072908 (= (lemmaZipperConcatMatchesSameAsBothZippers!1311 lt!2416637 lt!2416640 (t!379395 s!2326)) lt!2416724)))

(declare-fun b!6611244 () Bool)

(assert (=> b!6611244 (= e!3999890 (matchZipper!2492 lt!2416640 (t!379395 s!2326)))))

(assert (= (and d!2072908 (not res!2711104)) b!6611244))

(assert (=> d!2072908 m!7385516))

(assert (=> d!2072908 m!7385514))

(declare-fun m!7385816 () Bool)

(assert (=> d!2072908 m!7385816))

(assert (=> b!6611244 m!7385554))

(assert (=> b!6610793 d!2072908))

(declare-fun d!2072910 () Bool)

(declare-fun c!1218487 () Bool)

(assert (=> d!2072910 (= c!1218487 (isEmpty!37897 (t!379395 s!2326)))))

(declare-fun e!3999893 () Bool)

(assert (=> d!2072910 (= (matchZipper!2492 lt!2416637 (t!379395 s!2326)) e!3999893)))

(declare-fun b!6611249 () Bool)

(assert (=> b!6611249 (= e!3999893 (nullableZipper!2221 lt!2416637))))

(declare-fun b!6611250 () Bool)

(assert (=> b!6611250 (= e!3999893 (matchZipper!2492 (derivationStepZipper!2446 lt!2416637 (head!13404 (t!379395 s!2326))) (tail!12489 (t!379395 s!2326))))))

(assert (= (and d!2072910 c!1218487) b!6611249))

(assert (= (and d!2072910 (not c!1218487)) b!6611250))

(assert (=> d!2072910 m!7385654))

(declare-fun m!7385818 () Bool)

(assert (=> b!6611249 m!7385818))

(assert (=> b!6611250 m!7385658))

(assert (=> b!6611250 m!7385658))

(declare-fun m!7385820 () Bool)

(assert (=> b!6611250 m!7385820))

(assert (=> b!6611250 m!7385662))

(assert (=> b!6611250 m!7385820))

(assert (=> b!6611250 m!7385662))

(declare-fun m!7385822 () Bool)

(assert (=> b!6611250 m!7385822))

(assert (=> b!6610793 d!2072910))

(declare-fun d!2072912 () Bool)

(declare-fun c!1218490 () Bool)

(assert (=> d!2072912 (= c!1218490 (isEmpty!37897 (t!379395 s!2326)))))

(declare-fun e!3999896 () Bool)

(assert (=> d!2072912 (= (matchZipper!2492 (set.union lt!2416637 lt!2416640) (t!379395 s!2326)) e!3999896)))

(declare-fun b!6611255 () Bool)

(assert (=> b!6611255 (= e!3999896 (nullableZipper!2221 (set.union lt!2416637 lt!2416640)))))

(declare-fun b!6611256 () Bool)

(assert (=> b!6611256 (= e!3999896 (matchZipper!2492 (derivationStepZipper!2446 (set.union lt!2416637 lt!2416640) (head!13404 (t!379395 s!2326))) (tail!12489 (t!379395 s!2326))))))

(assert (= (and d!2072912 c!1218490) b!6611255))

(assert (= (and d!2072912 (not c!1218490)) b!6611256))

(assert (=> d!2072912 m!7385654))

(declare-fun m!7385824 () Bool)

(assert (=> b!6611255 m!7385824))

(assert (=> b!6611256 m!7385658))

(assert (=> b!6611256 m!7385658))

(declare-fun m!7385826 () Bool)

(assert (=> b!6611256 m!7385826))

(assert (=> b!6611256 m!7385662))

(assert (=> b!6611256 m!7385826))

(assert (=> b!6611256 m!7385662))

(declare-fun m!7385828 () Bool)

(assert (=> b!6611256 m!7385828))

(assert (=> b!6610793 d!2072912))

(declare-fun bs!1695266 () Bool)

(declare-fun d!2072914 () Bool)

(assert (= bs!1695266 (and d!2072914 d!2072848)))

(declare-fun lambda!369214 () Int)

(assert (=> bs!1695266 (= lambda!369214 lambda!369180)))

(declare-fun bs!1695267 () Bool)

(assert (= bs!1695267 (and d!2072914 d!2072856)))

(assert (=> bs!1695267 (= lambda!369214 lambda!369183)))

(declare-fun bs!1695268 () Bool)

(assert (= bs!1695268 (and d!2072914 d!2072884)))

(assert (=> bs!1695268 (= lambda!369214 lambda!369205)))

(declare-fun b!6611311 () Bool)

(declare-fun e!3999929 () Bool)

(declare-fun lt!2416730 () Regex!16480)

(declare-fun isUnion!1294 (Regex!16480) Bool)

(assert (=> b!6611311 (= e!3999929 (isUnion!1294 lt!2416730))))

(declare-fun b!6611312 () Bool)

(declare-fun e!3999930 () Regex!16480)

(assert (=> b!6611312 (= e!3999930 (Union!16480 (h!72063 (unfocusZipperList!1901 zl!343)) (generalisedUnion!2324 (t!379393 (unfocusZipperList!1901 zl!343)))))))

(declare-fun b!6611313 () Bool)

(declare-fun e!3999927 () Regex!16480)

(assert (=> b!6611313 (= e!3999927 (h!72063 (unfocusZipperList!1901 zl!343)))))

(declare-fun b!6611314 () Bool)

(assert (=> b!6611314 (= e!3999930 EmptyLang!16480)))

(declare-fun b!6611315 () Bool)

(declare-fun e!3999928 () Bool)

(declare-fun e!3999931 () Bool)

(assert (=> b!6611315 (= e!3999928 e!3999931)))

(declare-fun c!1218504 () Bool)

(assert (=> b!6611315 (= c!1218504 (isEmpty!37894 (unfocusZipperList!1901 zl!343)))))

(declare-fun b!6611316 () Bool)

(assert (=> b!6611316 (= e!3999929 (= lt!2416730 (head!13403 (unfocusZipperList!1901 zl!343))))))

(declare-fun b!6611317 () Bool)

(assert (=> b!6611317 (= e!3999931 e!3999929)))

(declare-fun c!1218507 () Bool)

(assert (=> b!6611317 (= c!1218507 (isEmpty!37894 (tail!12488 (unfocusZipperList!1901 zl!343))))))

(declare-fun b!6611319 () Bool)

(declare-fun isEmptyLang!1864 (Regex!16480) Bool)

(assert (=> b!6611319 (= e!3999931 (isEmptyLang!1864 lt!2416730))))

(declare-fun b!6611320 () Bool)

(assert (=> b!6611320 (= e!3999927 e!3999930)))

(declare-fun c!1218506 () Bool)

(assert (=> b!6611320 (= c!1218506 (is-Cons!65615 (unfocusZipperList!1901 zl!343)))))

(assert (=> d!2072914 e!3999928))

(declare-fun res!2711134 () Bool)

(assert (=> d!2072914 (=> (not res!2711134) (not e!3999928))))

(assert (=> d!2072914 (= res!2711134 (validRegex!8216 lt!2416730))))

(assert (=> d!2072914 (= lt!2416730 e!3999927)))

(declare-fun c!1218505 () Bool)

(declare-fun e!3999926 () Bool)

(assert (=> d!2072914 (= c!1218505 e!3999926)))

(declare-fun res!2711133 () Bool)

(assert (=> d!2072914 (=> (not res!2711133) (not e!3999926))))

(assert (=> d!2072914 (= res!2711133 (is-Cons!65615 (unfocusZipperList!1901 zl!343)))))

(assert (=> d!2072914 (forall!15676 (unfocusZipperList!1901 zl!343) lambda!369214)))

(assert (=> d!2072914 (= (generalisedUnion!2324 (unfocusZipperList!1901 zl!343)) lt!2416730)))

(declare-fun b!6611318 () Bool)

(assert (=> b!6611318 (= e!3999926 (isEmpty!37894 (t!379393 (unfocusZipperList!1901 zl!343))))))

(assert (= (and d!2072914 res!2711133) b!6611318))

(assert (= (and d!2072914 c!1218505) b!6611313))

(assert (= (and d!2072914 (not c!1218505)) b!6611320))

(assert (= (and b!6611320 c!1218506) b!6611312))

(assert (= (and b!6611320 (not c!1218506)) b!6611314))

(assert (= (and d!2072914 res!2711134) b!6611315))

(assert (= (and b!6611315 c!1218504) b!6611319))

(assert (= (and b!6611315 (not c!1218504)) b!6611317))

(assert (= (and b!6611317 c!1218507) b!6611316))

(assert (= (and b!6611317 (not c!1218507)) b!6611311))

(assert (=> b!6611316 m!7385556))

(declare-fun m!7385830 () Bool)

(assert (=> b!6611316 m!7385830))

(assert (=> b!6611315 m!7385556))

(declare-fun m!7385832 () Bool)

(assert (=> b!6611315 m!7385832))

(declare-fun m!7385834 () Bool)

(assert (=> d!2072914 m!7385834))

(assert (=> d!2072914 m!7385556))

(declare-fun m!7385836 () Bool)

(assert (=> d!2072914 m!7385836))

(assert (=> b!6611317 m!7385556))

(declare-fun m!7385838 () Bool)

(assert (=> b!6611317 m!7385838))

(assert (=> b!6611317 m!7385838))

(declare-fun m!7385840 () Bool)

(assert (=> b!6611317 m!7385840))

(declare-fun m!7385842 () Bool)

(assert (=> b!6611319 m!7385842))

(declare-fun m!7385844 () Bool)

(assert (=> b!6611312 m!7385844))

(declare-fun m!7385846 () Bool)

(assert (=> b!6611318 m!7385846))

(declare-fun m!7385848 () Bool)

(assert (=> b!6611311 m!7385848))

(assert (=> b!6610813 d!2072914))

(declare-fun bs!1695269 () Bool)

(declare-fun d!2072916 () Bool)

(assert (= bs!1695269 (and d!2072916 d!2072848)))

(declare-fun lambda!369217 () Int)

(assert (=> bs!1695269 (= lambda!369217 lambda!369180)))

(declare-fun bs!1695270 () Bool)

(assert (= bs!1695270 (and d!2072916 d!2072856)))

(assert (=> bs!1695270 (= lambda!369217 lambda!369183)))

(declare-fun bs!1695271 () Bool)

(assert (= bs!1695271 (and d!2072916 d!2072884)))

(assert (=> bs!1695271 (= lambda!369217 lambda!369205)))

(declare-fun bs!1695272 () Bool)

(assert (= bs!1695272 (and d!2072916 d!2072914)))

(assert (=> bs!1695272 (= lambda!369217 lambda!369214)))

(declare-fun lt!2416733 () List!65739)

(assert (=> d!2072916 (forall!15676 lt!2416733 lambda!369217)))

(declare-fun e!3999934 () List!65739)

(assert (=> d!2072916 (= lt!2416733 e!3999934)))

(declare-fun c!1218510 () Bool)

(assert (=> d!2072916 (= c!1218510 (is-Cons!65616 zl!343))))

(assert (=> d!2072916 (= (unfocusZipperList!1901 zl!343) lt!2416733)))

(declare-fun b!6611325 () Bool)

(assert (=> b!6611325 (= e!3999934 (Cons!65615 (generalisedConcat!2077 (exprs!6364 (h!72064 zl!343))) (unfocusZipperList!1901 (t!379394 zl!343))))))

(declare-fun b!6611326 () Bool)

(assert (=> b!6611326 (= e!3999934 Nil!65615)))

(assert (= (and d!2072916 c!1218510) b!6611325))

(assert (= (and d!2072916 (not c!1218510)) b!6611326))

(declare-fun m!7385862 () Bool)

(assert (=> d!2072916 m!7385862))

(assert (=> b!6611325 m!7385562))

(declare-fun m!7385864 () Bool)

(assert (=> b!6611325 m!7385864))

(assert (=> b!6610813 d!2072916))

(declare-fun b!6611331 () Bool)

(declare-fun e!3999937 () Bool)

(declare-fun tp!1821124 () Bool)

(declare-fun tp!1821125 () Bool)

(assert (=> b!6611331 (= e!3999937 (and tp!1821124 tp!1821125))))

(assert (=> b!6610799 (= tp!1821087 e!3999937)))

(assert (= (and b!6610799 (is-Cons!65615 (exprs!6364 (h!72064 zl!343)))) b!6611331))

(declare-fun condSetEmpty!45163 () Bool)

(assert (=> setNonEmpty!45157 (= condSetEmpty!45163 (= setRest!45157 (as set.empty (Set Context!11728))))))

(declare-fun setRes!45163 () Bool)

(assert (=> setNonEmpty!45157 (= tp!1821082 setRes!45163)))

(declare-fun setIsEmpty!45163 () Bool)

(assert (=> setIsEmpty!45163 setRes!45163))

(declare-fun setElem!45163 () Context!11728)

(declare-fun e!3999940 () Bool)

(declare-fun setNonEmpty!45163 () Bool)

(declare-fun tp!1821130 () Bool)

(assert (=> setNonEmpty!45163 (= setRes!45163 (and tp!1821130 (inv!84448 setElem!45163) e!3999940))))

(declare-fun setRest!45163 () (Set Context!11728))

(assert (=> setNonEmpty!45163 (= setRest!45157 (set.union (set.insert setElem!45163 (as set.empty (Set Context!11728))) setRest!45163))))

(declare-fun b!6611336 () Bool)

(declare-fun tp!1821131 () Bool)

(assert (=> b!6611336 (= e!3999940 tp!1821131)))

(assert (= (and setNonEmpty!45157 condSetEmpty!45163) setIsEmpty!45163))

(assert (= (and setNonEmpty!45157 (not condSetEmpty!45163)) setNonEmpty!45163))

(assert (= setNonEmpty!45163 b!6611336))

(declare-fun m!7385866 () Bool)

(assert (=> setNonEmpty!45163 m!7385866))

(declare-fun b!6611347 () Bool)

(declare-fun e!3999943 () Bool)

(assert (=> b!6611347 (= e!3999943 tp_is_empty!42213)))

(declare-fun b!6611350 () Bool)

(declare-fun tp!1821145 () Bool)

(declare-fun tp!1821144 () Bool)

(assert (=> b!6611350 (= e!3999943 (and tp!1821145 tp!1821144))))

(declare-fun b!6611349 () Bool)

(declare-fun tp!1821143 () Bool)

(assert (=> b!6611349 (= e!3999943 tp!1821143)))

(declare-fun b!6611348 () Bool)

(declare-fun tp!1821142 () Bool)

(declare-fun tp!1821146 () Bool)

(assert (=> b!6611348 (= e!3999943 (and tp!1821142 tp!1821146))))

(assert (=> b!6610810 (= tp!1821084 e!3999943)))

(assert (= (and b!6610810 (is-ElementMatch!16480 (reg!16809 r!7292))) b!6611347))

(assert (= (and b!6610810 (is-Concat!25325 (reg!16809 r!7292))) b!6611348))

(assert (= (and b!6610810 (is-Star!16480 (reg!16809 r!7292))) b!6611349))

(assert (= (and b!6610810 (is-Union!16480 (reg!16809 r!7292))) b!6611350))

(declare-fun b!6611351 () Bool)

(declare-fun e!3999944 () Bool)

(assert (=> b!6611351 (= e!3999944 tp_is_empty!42213)))

(declare-fun b!6611354 () Bool)

(declare-fun tp!1821150 () Bool)

(declare-fun tp!1821149 () Bool)

(assert (=> b!6611354 (= e!3999944 (and tp!1821150 tp!1821149))))

(declare-fun b!6611353 () Bool)

(declare-fun tp!1821148 () Bool)

(assert (=> b!6611353 (= e!3999944 tp!1821148)))

(declare-fun b!6611352 () Bool)

(declare-fun tp!1821147 () Bool)

(declare-fun tp!1821151 () Bool)

(assert (=> b!6611352 (= e!3999944 (and tp!1821147 tp!1821151))))

(assert (=> b!6610807 (= tp!1821083 e!3999944)))

(assert (= (and b!6610807 (is-ElementMatch!16480 (regOne!33472 r!7292))) b!6611351))

(assert (= (and b!6610807 (is-Concat!25325 (regOne!33472 r!7292))) b!6611352))

(assert (= (and b!6610807 (is-Star!16480 (regOne!33472 r!7292))) b!6611353))

(assert (= (and b!6610807 (is-Union!16480 (regOne!33472 r!7292))) b!6611354))

(declare-fun b!6611355 () Bool)

(declare-fun e!3999945 () Bool)

(assert (=> b!6611355 (= e!3999945 tp_is_empty!42213)))

(declare-fun b!6611358 () Bool)

(declare-fun tp!1821155 () Bool)

(declare-fun tp!1821154 () Bool)

(assert (=> b!6611358 (= e!3999945 (and tp!1821155 tp!1821154))))

(declare-fun b!6611357 () Bool)

(declare-fun tp!1821153 () Bool)

(assert (=> b!6611357 (= e!3999945 tp!1821153)))

(declare-fun b!6611356 () Bool)

(declare-fun tp!1821152 () Bool)

(declare-fun tp!1821156 () Bool)

(assert (=> b!6611356 (= e!3999945 (and tp!1821152 tp!1821156))))

(assert (=> b!6610807 (= tp!1821088 e!3999945)))

(assert (= (and b!6610807 (is-ElementMatch!16480 (regTwo!33472 r!7292))) b!6611355))

(assert (= (and b!6610807 (is-Concat!25325 (regTwo!33472 r!7292))) b!6611356))

(assert (= (and b!6610807 (is-Star!16480 (regTwo!33472 r!7292))) b!6611357))

(assert (= (and b!6610807 (is-Union!16480 (regTwo!33472 r!7292))) b!6611358))

(declare-fun b!6611363 () Bool)

(declare-fun e!3999948 () Bool)

(declare-fun tp!1821159 () Bool)

(assert (=> b!6611363 (= e!3999948 (and tp_is_empty!42213 tp!1821159))))

(assert (=> b!6610801 (= tp!1821081 e!3999948)))

(assert (= (and b!6610801 (is-Cons!65617 (t!379395 s!2326))) b!6611363))

(declare-fun b!6611371 () Bool)

(declare-fun e!3999954 () Bool)

(declare-fun tp!1821164 () Bool)

(assert (=> b!6611371 (= e!3999954 tp!1821164)))

(declare-fun tp!1821165 () Bool)

(declare-fun e!3999953 () Bool)

(declare-fun b!6611370 () Bool)

(assert (=> b!6611370 (= e!3999953 (and (inv!84448 (h!72064 (t!379394 zl!343))) e!3999954 tp!1821165))))

(assert (=> b!6610808 (= tp!1821086 e!3999953)))

(assert (= b!6611370 b!6611371))

(assert (= (and b!6610808 (is-Cons!65616 (t!379394 zl!343))) b!6611370))

(declare-fun m!7385872 () Bool)

(assert (=> b!6611370 m!7385872))

(declare-fun b!6611372 () Bool)

(declare-fun e!3999955 () Bool)

(declare-fun tp!1821166 () Bool)

(declare-fun tp!1821167 () Bool)

(assert (=> b!6611372 (= e!3999955 (and tp!1821166 tp!1821167))))

(assert (=> b!6610797 (= tp!1821080 e!3999955)))

(assert (= (and b!6610797 (is-Cons!65615 (exprs!6364 setElem!45157))) b!6611372))

(declare-fun b!6611373 () Bool)

(declare-fun e!3999956 () Bool)

(assert (=> b!6611373 (= e!3999956 tp_is_empty!42213)))

(declare-fun b!6611376 () Bool)

(declare-fun tp!1821171 () Bool)

(declare-fun tp!1821170 () Bool)

(assert (=> b!6611376 (= e!3999956 (and tp!1821171 tp!1821170))))

(declare-fun b!6611375 () Bool)

(declare-fun tp!1821169 () Bool)

(assert (=> b!6611375 (= e!3999956 tp!1821169)))

(declare-fun b!6611374 () Bool)

(declare-fun tp!1821168 () Bool)

(declare-fun tp!1821172 () Bool)

(assert (=> b!6611374 (= e!3999956 (and tp!1821168 tp!1821172))))

(assert (=> b!6610802 (= tp!1821085 e!3999956)))

(assert (= (and b!6610802 (is-ElementMatch!16480 (regOne!33473 r!7292))) b!6611373))

(assert (= (and b!6610802 (is-Concat!25325 (regOne!33473 r!7292))) b!6611374))

(assert (= (and b!6610802 (is-Star!16480 (regOne!33473 r!7292))) b!6611375))

(assert (= (and b!6610802 (is-Union!16480 (regOne!33473 r!7292))) b!6611376))

(declare-fun b!6611377 () Bool)

(declare-fun e!3999957 () Bool)

(assert (=> b!6611377 (= e!3999957 tp_is_empty!42213)))

(declare-fun b!6611380 () Bool)

(declare-fun tp!1821176 () Bool)

(declare-fun tp!1821175 () Bool)

(assert (=> b!6611380 (= e!3999957 (and tp!1821176 tp!1821175))))

(declare-fun b!6611379 () Bool)

(declare-fun tp!1821174 () Bool)

(assert (=> b!6611379 (= e!3999957 tp!1821174)))

(declare-fun b!6611378 () Bool)

(declare-fun tp!1821173 () Bool)

(declare-fun tp!1821177 () Bool)

(assert (=> b!6611378 (= e!3999957 (and tp!1821173 tp!1821177))))

(assert (=> b!6610802 (= tp!1821089 e!3999957)))

(assert (= (and b!6610802 (is-ElementMatch!16480 (regTwo!33473 r!7292))) b!6611377))

(assert (= (and b!6610802 (is-Concat!25325 (regTwo!33473 r!7292))) b!6611378))

(assert (= (and b!6610802 (is-Star!16480 (regTwo!33473 r!7292))) b!6611379))

(assert (= (and b!6610802 (is-Union!16480 (regTwo!33473 r!7292))) b!6611380))

(declare-fun b_lambda!250139 () Bool)

(assert (= b_lambda!250137 (or b!6610812 b_lambda!250139)))

(declare-fun bs!1695276 () Bool)

(declare-fun d!2072926 () Bool)

(assert (= bs!1695276 (and d!2072926 b!6610812)))

(assert (=> bs!1695276 (= (dynLambda!26131 lambda!369166 (h!72064 zl!343)) (derivationStepZipperUp!1654 (h!72064 zl!343) (h!72065 s!2326)))))

(assert (=> bs!1695276 m!7385524))

(assert (=> d!2072904 d!2072926))

(push 1)

(assert (not d!2072856))

(assert (not b!6611336))

(assert tp_is_empty!42213)

(assert (not d!2072848))

(assert (not b!6611231))

(assert (not d!2072864))

(assert (not b!6611358))

(assert (not b!6611378))

(assert (not b!6611316))

(assert (not b!6611033))

(assert (not b!6611325))

(assert (not b!6611370))

(assert (not b!6611356))

(assert (not d!2072880))

(assert (not b!6611352))

(assert (not b!6611375))

(assert (not b!6610938))

(assert (not b!6611348))

(assert (not b!6611244))

(assert (not b!6611029))

(assert (not b!6610953))

(assert (not b!6610995))

(assert (not bm!579145))

(assert (not b!6611353))

(assert (not b!6610941))

(assert (not bm!579157))

(assert (not b!6611379))

(assert (not bm!579119))

(assert (not d!2072904))

(assert (not b!6610936))

(assert (not bm!579115))

(assert (not d!2072860))

(assert (not b!6611239))

(assert (not bm!579128))

(assert (not b!6611363))

(assert (not b!6611372))

(assert (not d!2072868))

(assert (not d!2072862))

(assert (not b!6611349))

(assert (not b!6610942))

(assert (not b!6611374))

(assert (not b!6611205))

(assert (not b!6611357))

(assert (not b!6611354))

(assert (not b!6611317))

(assert (not b!6611255))

(assert (not bm!579146))

(assert (not d!2072910))

(assert (not d!2072912))

(assert (not b!6611311))

(assert (not bm!579156))

(assert (not b!6611078))

(assert (not b!6611035))

(assert (not b!6610989))

(assert (not b!6610935))

(assert (not b!6611229))

(assert (not b!6611084))

(assert (not setNonEmpty!45163))

(assert (not b!6611236))

(assert (not d!2072894))

(assert (not d!2072882))

(assert (not d!2072906))

(assert (not b!6611241))

(assert (not b!6611234))

(assert (not b!6611080))

(assert (not d!2072916))

(assert (not b!6611081))

(assert (not b!6611318))

(assert (not b!6611331))

(assert (not b!6611376))

(assert (not bs!1695276))

(assert (not b!6611371))

(assert (not d!2072878))

(assert (not b!6611315))

(assert (not b!6611154))

(assert (not d!2072852))

(assert (not bm!579127))

(assert (not b!6611350))

(assert (not b!6611085))

(assert (not d!2072874))

(assert (not b_lambda!250139))

(assert (not b!6611036))

(assert (not b!6611256))

(assert (not b!6611380))

(assert (not d!2072908))

(assert (not d!2072898))

(assert (not b!6611037))

(assert (not d!2072854))

(assert (not b!6611250))

(assert (not d!2072884))

(assert (not b!6610950))

(assert (not b!6610939))

(assert (not b!6610949))

(assert (not bm!579116))

(assert (not d!2072870))

(assert (not b!6611083))

(assert (not b!6611249))

(assert (not bm!579148))

(assert (not b!6610940))

(assert (not d!2072914))

(assert (not b!6611312))

(assert (not b!6611026))

(assert (not bm!579155))

(assert (not b!6611319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

