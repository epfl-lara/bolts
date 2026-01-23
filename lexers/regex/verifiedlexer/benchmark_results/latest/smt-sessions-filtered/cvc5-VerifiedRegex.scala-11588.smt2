; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!641736 () Bool)

(assert start!641736)

(declare-fun b!6549019 () Bool)

(assert (=> b!6549019 true))

(assert (=> b!6549019 true))

(declare-fun lambda!363663 () Int)

(declare-fun lambda!363662 () Int)

(assert (=> b!6549019 (not (= lambda!363663 lambda!363662))))

(assert (=> b!6549019 true))

(assert (=> b!6549019 true))

(declare-fun b!6548993 () Bool)

(assert (=> b!6548993 true))

(declare-fun b!6549029 () Bool)

(assert (=> b!6549029 true))

(declare-fun bs!1672022 () Bool)

(declare-fun b!6549022 () Bool)

(assert (= bs!1672022 (and b!6549022 b!6549019)))

(declare-datatypes ((C!33114 0))(
  ( (C!33115 (val!26259 Int)) )
))
(declare-datatypes ((Regex!16422 0))(
  ( (ElementMatch!16422 (c!1202881 C!33114)) (Concat!25267 (regOne!33356 Regex!16422) (regTwo!33356 Regex!16422)) (EmptyExpr!16422) (Star!16422 (reg!16751 Regex!16422)) (EmptyLang!16422) (Union!16422 (regOne!33357 Regex!16422) (regTwo!33357 Regex!16422)) )
))
(declare-fun r!7292 () Regex!16422)

(declare-fun lt!2401627 () Regex!16422)

(declare-fun lambda!363667 () Int)

(assert (=> bs!1672022 (= (= lt!2401627 (regOne!33356 r!7292)) (= lambda!363667 lambda!363662))))

(assert (=> bs!1672022 (not (= lambda!363667 lambda!363663))))

(assert (=> b!6549022 true))

(assert (=> b!6549022 true))

(assert (=> b!6549022 true))

(declare-fun b!6548989 () Bool)

(declare-fun res!2686679 () Bool)

(declare-fun e!3965153 () Bool)

(assert (=> b!6548989 (=> res!2686679 e!3965153)))

(assert (=> b!6548989 (= res!2686679 (or (is-Concat!25267 (regOne!33356 r!7292)) (not (is-Star!16422 (regOne!33356 r!7292)))))))

(declare-fun b!6548990 () Bool)

(declare-fun res!2686683 () Bool)

(declare-fun e!3965157 () Bool)

(assert (=> b!6548990 (=> res!2686683 e!3965157)))

(declare-datatypes ((List!65565 0))(
  ( (Nil!65441) (Cons!65441 (h!71889 Regex!16422) (t!379207 List!65565)) )
))
(declare-datatypes ((Context!11612 0))(
  ( (Context!11613 (exprs!6306 List!65565)) )
))
(declare-datatypes ((List!65566 0))(
  ( (Nil!65442) (Cons!65442 (h!71890 Context!11612) (t!379208 List!65566)) )
))
(declare-fun zl!343 () List!65566)

(declare-fun isEmpty!37667 (List!65566) Bool)

(assert (=> b!6548990 (= res!2686683 (not (isEmpty!37667 (t!379208 zl!343))))))

(declare-fun b!6548991 () Bool)

(declare-fun res!2686651 () Bool)

(declare-fun e!3965146 () Bool)

(assert (=> b!6548991 (=> res!2686651 e!3965146)))

(declare-fun lt!2401651 () Bool)

(declare-fun lt!2401632 () Bool)

(assert (=> b!6548991 (= res!2686651 (or (not lt!2401651) (not lt!2401632)))))

(declare-fun b!6548992 () Bool)

(declare-fun res!2686685 () Bool)

(declare-fun e!3965158 () Bool)

(assert (=> b!6548992 (=> res!2686685 e!3965158)))

(declare-fun isEmpty!37668 (List!65565) Bool)

(assert (=> b!6548992 (= res!2686685 (isEmpty!37668 (t!379207 (exprs!6306 (h!71890 zl!343)))))))

(assert (=> b!6548993 (= e!3965158 e!3965153)))

(declare-fun res!2686666 () Bool)

(assert (=> b!6548993 (=> res!2686666 e!3965153)))

(declare-datatypes ((List!65567 0))(
  ( (Nil!65443) (Cons!65443 (h!71891 C!33114) (t!379209 List!65567)) )
))
(declare-fun s!2326 () List!65567)

(assert (=> b!6548993 (= res!2686666 (or (and (is-ElementMatch!16422 (regOne!33356 r!7292)) (= (c!1202881 (regOne!33356 r!7292)) (h!71891 s!2326))) (is-Union!16422 (regOne!33356 r!7292))))))

(declare-datatypes ((Unit!159023 0))(
  ( (Unit!159024) )
))
(declare-fun lt!2401644 () Unit!159023)

(declare-fun e!3965141 () Unit!159023)

(assert (=> b!6548993 (= lt!2401644 e!3965141)))

(declare-fun c!1202880 () Bool)

(declare-fun lt!2401646 () Bool)

(assert (=> b!6548993 (= c!1202880 lt!2401646)))

(declare-fun nullable!6415 (Regex!16422) Bool)

(assert (=> b!6548993 (= lt!2401646 (nullable!6415 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun z!1189 () (Set Context!11612))

(declare-fun lambda!363664 () Int)

(declare-fun flatMap!1927 ((Set Context!11612) Int) (Set Context!11612))

(declare-fun derivationStepZipperUp!1596 (Context!11612 C!33114) (Set Context!11612))

(assert (=> b!6548993 (= (flatMap!1927 z!1189 lambda!363664) (derivationStepZipperUp!1596 (h!71890 zl!343) (h!71891 s!2326)))))

(declare-fun lt!2401637 () Unit!159023)

(declare-fun lemmaFlatMapOnSingletonSet!1453 ((Set Context!11612) Context!11612 Int) Unit!159023)

(assert (=> b!6548993 (= lt!2401637 (lemmaFlatMapOnSingletonSet!1453 z!1189 (h!71890 zl!343) lambda!363664))))

(declare-fun lt!2401673 () (Set Context!11612))

(declare-fun lt!2401647 () Context!11612)

(assert (=> b!6548993 (= lt!2401673 (derivationStepZipperUp!1596 lt!2401647 (h!71891 s!2326)))))

(declare-fun lt!2401662 () (Set Context!11612))

(declare-fun derivationStepZipperDown!1670 (Regex!16422 Context!11612 C!33114) (Set Context!11612))

(assert (=> b!6548993 (= lt!2401662 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 (h!71890 zl!343))) lt!2401647 (h!71891 s!2326)))))

(assert (=> b!6548993 (= lt!2401647 (Context!11613 (t!379207 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun lt!2401639 () (Set Context!11612))

(assert (=> b!6548993 (= lt!2401639 (derivationStepZipperUp!1596 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343))))) (h!71891 s!2326)))))

(declare-fun b!6548994 () Bool)

(declare-fun e!3965142 () Bool)

(declare-fun tp!1811206 () Bool)

(declare-fun tp!1811209 () Bool)

(assert (=> b!6548994 (= e!3965142 (and tp!1811206 tp!1811209))))

(declare-fun b!6548995 () Bool)

(declare-fun e!3965143 () Bool)

(assert (=> b!6548995 (= e!3965143 e!3965146)))

(declare-fun res!2686675 () Bool)

(assert (=> b!6548995 (=> res!2686675 e!3965146)))

(declare-fun e!3965149 () Bool)

(assert (=> b!6548995 (= res!2686675 e!3965149)))

(declare-fun res!2686684 () Bool)

(assert (=> b!6548995 (=> (not res!2686684) (not e!3965149))))

(assert (=> b!6548995 (= res!2686684 (not lt!2401651))))

(declare-fun matchZipper!2434 ((Set Context!11612) List!65567) Bool)

(assert (=> b!6548995 (= lt!2401651 (matchZipper!2434 lt!2401662 (t!379209 s!2326)))))

(declare-fun b!6548996 () Bool)

(declare-fun Unit!159025 () Unit!159023)

(assert (=> b!6548996 (= e!3965141 Unit!159025)))

(declare-fun lt!2401665 () Unit!159023)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1253 ((Set Context!11612) (Set Context!11612) List!65567) Unit!159023)

(assert (=> b!6548996 (= lt!2401665 (lemmaZipperConcatMatchesSameAsBothZippers!1253 lt!2401662 lt!2401673 (t!379209 s!2326)))))

(declare-fun res!2686672 () Bool)

(assert (=> b!6548996 (= res!2686672 (matchZipper!2434 lt!2401662 (t!379209 s!2326)))))

(declare-fun e!3965152 () Bool)

(assert (=> b!6548996 (=> res!2686672 e!3965152)))

(assert (=> b!6548996 (= (matchZipper!2434 (set.union lt!2401662 lt!2401673) (t!379209 s!2326)) e!3965152)))

(declare-fun b!6548997 () Bool)

(declare-fun res!2686663 () Bool)

(assert (=> b!6548997 (=> res!2686663 e!3965157)))

(assert (=> b!6548997 (= res!2686663 (or (is-EmptyExpr!16422 r!7292) (is-EmptyLang!16422 r!7292) (is-ElementMatch!16422 r!7292) (is-Union!16422 r!7292) (not (is-Concat!25267 r!7292))))))

(declare-fun b!6548998 () Bool)

(declare-fun e!3965154 () Bool)

(declare-fun e!3965160 () Bool)

(assert (=> b!6548998 (= e!3965154 e!3965160)))

(declare-fun res!2686658 () Bool)

(assert (=> b!6548998 (=> (not res!2686658) (not e!3965160))))

(declare-fun lt!2401664 () Regex!16422)

(assert (=> b!6548998 (= res!2686658 (= r!7292 lt!2401664))))

(declare-fun unfocusZipper!2164 (List!65566) Regex!16422)

(assert (=> b!6548998 (= lt!2401664 (unfocusZipper!2164 zl!343))))

(declare-fun b!6548999 () Bool)

(declare-fun e!3965150 () Bool)

(assert (=> b!6548999 (= e!3965153 e!3965150)))

(declare-fun res!2686657 () Bool)

(assert (=> b!6548999 (=> res!2686657 e!3965150)))

(declare-fun lt!2401636 () (Set Context!11612))

(assert (=> b!6548999 (= res!2686657 (not (= lt!2401662 lt!2401636)))))

(declare-fun lt!2401670 () Context!11612)

(assert (=> b!6548999 (= lt!2401636 (derivationStepZipperDown!1670 (reg!16751 (regOne!33356 r!7292)) lt!2401670 (h!71891 s!2326)))))

(declare-fun lt!2401657 () List!65565)

(assert (=> b!6548999 (= lt!2401670 (Context!11613 lt!2401657))))

(declare-fun lt!2401633 () Regex!16422)

(assert (=> b!6548999 (= lt!2401657 (Cons!65441 lt!2401633 (t!379207 (exprs!6306 (h!71890 zl!343)))))))

(assert (=> b!6548999 (= lt!2401633 (Star!16422 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun b!6549000 () Bool)

(declare-fun e!3965145 () Bool)

(assert (=> b!6549000 (= e!3965145 e!3965143)))

(declare-fun res!2686674 () Bool)

(assert (=> b!6549000 (=> res!2686674 e!3965143)))

(declare-fun lt!2401623 () Bool)

(assert (=> b!6549000 (= res!2686674 lt!2401623)))

(declare-fun lt!2401652 () Bool)

(declare-fun lt!2401649 () Regex!16422)

(declare-fun matchRSpec!3523 (Regex!16422 List!65567) Bool)

(assert (=> b!6549000 (= lt!2401652 (matchRSpec!3523 lt!2401649 s!2326))))

(declare-fun matchR!8605 (Regex!16422 List!65567) Bool)

(assert (=> b!6549000 (= lt!2401652 (matchR!8605 lt!2401649 s!2326))))

(declare-fun lt!2401638 () Unit!159023)

(declare-fun mainMatchTheorem!3523 (Regex!16422 List!65567) Unit!159023)

(assert (=> b!6549000 (= lt!2401638 (mainMatchTheorem!3523 lt!2401649 s!2326))))

(declare-fun b!6549001 () Bool)

(declare-fun res!2686667 () Bool)

(assert (=> b!6549001 (=> res!2686667 e!3965153)))

(declare-fun e!3965156 () Bool)

(assert (=> b!6549001 (= res!2686667 e!3965156)))

(declare-fun res!2686677 () Bool)

(assert (=> b!6549001 (=> (not res!2686677) (not e!3965156))))

(assert (=> b!6549001 (= res!2686677 (is-Concat!25267 (regOne!33356 r!7292)))))

(declare-fun b!6549002 () Bool)

(assert (=> b!6549002 (= e!3965152 (matchZipper!2434 lt!2401673 (t!379209 s!2326)))))

(declare-fun b!6549003 () Bool)

(assert (=> b!6549003 (= e!3965149 (not (matchZipper!2434 lt!2401673 (t!379209 s!2326))))))

(declare-fun setIsEmpty!44691 () Bool)

(declare-fun setRes!44691 () Bool)

(assert (=> setIsEmpty!44691 setRes!44691))

(declare-fun b!6549004 () Bool)

(declare-fun e!3965163 () Bool)

(assert (=> b!6549004 (= e!3965163 e!3965145)))

(declare-fun res!2686655 () Bool)

(assert (=> b!6549004 (=> res!2686655 e!3965145)))

(declare-fun lt!2401625 () List!65566)

(declare-fun lt!2401653 () Regex!16422)

(assert (=> b!6549004 (= res!2686655 (not (= (unfocusZipper!2164 lt!2401625) lt!2401653)))))

(assert (=> b!6549004 (= lt!2401625 (Cons!65442 lt!2401670 Nil!65442))))

(declare-fun b!6549005 () Bool)

(declare-fun e!3965161 () Bool)

(declare-fun tp!1811202 () Bool)

(assert (=> b!6549005 (= e!3965161 tp!1811202)))

(declare-fun b!6549006 () Bool)

(declare-fun res!2686678 () Bool)

(declare-fun e!3965144 () Bool)

(assert (=> b!6549006 (=> res!2686678 e!3965144)))

(declare-fun lt!2401626 () (Set Context!11612))

(declare-datatypes ((tuple2!66802 0))(
  ( (tuple2!66803 (_1!36704 List!65567) (_2!36704 List!65567)) )
))
(declare-fun lt!2401672 () tuple2!66802)

(assert (=> b!6549006 (= res!2686678 (not (matchZipper!2434 lt!2401626 (_1!36704 lt!2401672))))))

(declare-fun b!6549007 () Bool)

(declare-fun res!2686669 () Bool)

(declare-fun e!3965139 () Bool)

(assert (=> b!6549007 (=> res!2686669 e!3965139)))

(assert (=> b!6549007 (= res!2686669 (not (= lt!2401664 r!7292)))))

(declare-fun b!6549008 () Bool)

(declare-fun res!2686671 () Bool)

(assert (=> b!6549008 (=> (not res!2686671) (not e!3965154))))

(declare-fun toList!10206 ((Set Context!11612)) List!65566)

(assert (=> b!6549008 (= res!2686671 (= (toList!10206 z!1189) zl!343))))

(declare-fun res!2686662 () Bool)

(assert (=> start!641736 (=> (not res!2686662) (not e!3965154))))

(declare-fun validRegex!8158 (Regex!16422) Bool)

(assert (=> start!641736 (= res!2686662 (validRegex!8158 r!7292))))

(assert (=> start!641736 e!3965154))

(assert (=> start!641736 e!3965142))

(declare-fun condSetEmpty!44691 () Bool)

(assert (=> start!641736 (= condSetEmpty!44691 (= z!1189 (as set.empty (Set Context!11612))))))

(assert (=> start!641736 setRes!44691))

(declare-fun e!3965162 () Bool)

(assert (=> start!641736 e!3965162))

(declare-fun e!3965155 () Bool)

(assert (=> start!641736 e!3965155))

(declare-fun b!6549009 () Bool)

(declare-fun tp!1811204 () Bool)

(declare-fun tp!1811200 () Bool)

(assert (=> b!6549009 (= e!3965142 (and tp!1811204 tp!1811200))))

(declare-fun b!6549010 () Bool)

(declare-fun tp_is_empty!42097 () Bool)

(assert (=> b!6549010 (= e!3965142 tp_is_empty!42097)))

(declare-fun b!6549011 () Bool)

(declare-fun res!2686673 () Bool)

(assert (=> b!6549011 (=> res!2686673 e!3965157)))

(declare-fun generalisedUnion!2266 (List!65565) Regex!16422)

(declare-fun unfocusZipperList!1843 (List!65566) List!65565)

(assert (=> b!6549011 (= res!2686673 (not (= r!7292 (generalisedUnion!2266 (unfocusZipperList!1843 zl!343)))))))

(declare-fun tp!1811207 () Bool)

(declare-fun e!3965147 () Bool)

(declare-fun b!6549012 () Bool)

(declare-fun inv!84303 (Context!11612) Bool)

(assert (=> b!6549012 (= e!3965162 (and (inv!84303 (h!71890 zl!343)) e!3965147 tp!1811207))))

(declare-fun b!6549013 () Bool)

(assert (=> b!6549013 (= e!3965156 (nullable!6415 (regOne!33356 (regOne!33356 r!7292))))))

(declare-fun b!6549014 () Bool)

(declare-fun e!3965151 () Bool)

(assert (=> b!6549014 (= e!3965150 e!3965151)))

(declare-fun res!2686654 () Bool)

(assert (=> b!6549014 (=> res!2686654 e!3965151)))

(declare-fun lt!2401648 () (Set Context!11612))

(assert (=> b!6549014 (= res!2686654 (not (= lt!2401648 lt!2401636)))))

(declare-fun lt!2401675 () (Set Context!11612))

(declare-fun lt!2401631 () Context!11612)

(assert (=> b!6549014 (= (flatMap!1927 lt!2401675 lambda!363664) (derivationStepZipperUp!1596 lt!2401631 (h!71891 s!2326)))))

(declare-fun lt!2401640 () Unit!159023)

(assert (=> b!6549014 (= lt!2401640 (lemmaFlatMapOnSingletonSet!1453 lt!2401675 lt!2401631 lambda!363664))))

(declare-fun lt!2401629 () (Set Context!11612))

(assert (=> b!6549014 (= lt!2401629 (derivationStepZipperUp!1596 lt!2401631 (h!71891 s!2326)))))

(declare-fun derivationStepZipper!2388 ((Set Context!11612) C!33114) (Set Context!11612))

(assert (=> b!6549014 (= lt!2401648 (derivationStepZipper!2388 lt!2401675 (h!71891 s!2326)))))

(assert (=> b!6549014 (= lt!2401675 (set.insert lt!2401631 (as set.empty (Set Context!11612))))))

(assert (=> b!6549014 (= lt!2401631 (Context!11613 (Cons!65441 (reg!16751 (regOne!33356 r!7292)) lt!2401657)))))

(declare-fun b!6549015 () Bool)

(declare-fun e!3965159 () Bool)

(assert (=> b!6549015 (= e!3965159 e!3965144)))

(declare-fun res!2686652 () Bool)

(assert (=> b!6549015 (=> res!2686652 e!3965144)))

(declare-fun lt!2401674 () List!65567)

(assert (=> b!6549015 (= res!2686652 (not (= s!2326 lt!2401674)))))

(declare-fun ++!14546 (List!65567 List!65567) List!65567)

(assert (=> b!6549015 (= lt!2401674 (++!14546 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(declare-datatypes ((Option!16313 0))(
  ( (None!16312) (Some!16312 (v!52497 tuple2!66802)) )
))
(declare-fun lt!2401655 () Option!16313)

(declare-fun get!22715 (Option!16313) tuple2!66802)

(assert (=> b!6549015 (= lt!2401672 (get!22715 lt!2401655))))

(declare-fun isDefined!13016 (Option!16313) Bool)

(assert (=> b!6549015 (isDefined!13016 lt!2401655)))

(declare-fun lt!2401654 () (Set Context!11612))

(declare-fun findConcatSeparationZippers!187 ((Set Context!11612) (Set Context!11612) List!65567 List!65567 List!65567) Option!16313)

(assert (=> b!6549015 (= lt!2401655 (findConcatSeparationZippers!187 lt!2401626 lt!2401654 Nil!65443 s!2326 s!2326))))

(declare-fun lt!2401660 () Unit!159023)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!187 ((Set Context!11612) Context!11612 List!65567) Unit!159023)

(assert (=> b!6549015 (= lt!2401660 (lemmaConcatZipperMatchesStringThenFindConcatDefined!187 lt!2401626 lt!2401670 s!2326))))

(declare-fun b!6549016 () Bool)

(declare-fun res!2686670 () Bool)

(assert (=> b!6549016 (=> res!2686670 e!3965157)))

(declare-fun generalisedConcat!2019 (List!65565) Regex!16422)

(assert (=> b!6549016 (= res!2686670 (not (= r!7292 (generalisedConcat!2019 (exprs!6306 (h!71890 zl!343))))))))

(declare-fun b!6549017 () Bool)

(declare-fun tp!1811208 () Bool)

(assert (=> b!6549017 (= e!3965155 (and tp_is_empty!42097 tp!1811208))))

(declare-fun b!6549018 () Bool)

(declare-fun tp!1811201 () Bool)

(assert (=> b!6549018 (= e!3965142 tp!1811201)))

(assert (=> b!6549019 (= e!3965157 e!3965158)))

(declare-fun res!2686653 () Bool)

(assert (=> b!6549019 (=> res!2686653 e!3965158)))

(declare-fun lt!2401645 () Bool)

(assert (=> b!6549019 (= res!2686653 (or (not (= lt!2401623 lt!2401645)) (is-Nil!65443 s!2326)))))

(declare-fun Exists!3492 (Int) Bool)

(assert (=> b!6549019 (= (Exists!3492 lambda!363662) (Exists!3492 lambda!363663))))

(declare-fun lt!2401624 () Unit!159023)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2029 (Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> b!6549019 (= lt!2401624 (lemmaExistCutMatchRandMatchRSpecEquivalent!2029 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326))))

(assert (=> b!6549019 (= lt!2401645 (Exists!3492 lambda!363662))))

(declare-fun findConcatSeparation!2727 (Regex!16422 Regex!16422 List!65567 List!65567 List!65567) Option!16313)

(assert (=> b!6549019 (= lt!2401645 (isDefined!13016 (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)))))

(declare-fun lt!2401642 () Unit!159023)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2491 (Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> b!6549019 (= lt!2401642 (lemmaFindConcatSeparationEquivalentToExists!2491 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326))))

(declare-fun b!6549020 () Bool)

(declare-fun e!3965140 () Bool)

(assert (=> b!6549020 (= e!3965139 e!3965140)))

(declare-fun res!2686682 () Bool)

(assert (=> b!6549020 (=> res!2686682 e!3965140)))

(assert (=> b!6549020 (= res!2686682 (not (= r!7292 lt!2401653)))))

(assert (=> b!6549020 (= lt!2401653 (Concat!25267 lt!2401633 (regTwo!33356 r!7292)))))

(declare-fun b!6549021 () Bool)

(declare-fun e!3965164 () Bool)

(assert (=> b!6549021 (= e!3965140 e!3965164)))

(declare-fun res!2686676 () Bool)

(assert (=> b!6549021 (=> res!2686676 e!3965164)))

(assert (=> b!6549021 (= res!2686676 (not (= (unfocusZipper!2164 (Cons!65442 lt!2401631 Nil!65442)) lt!2401649)))))

(assert (=> b!6549021 (= lt!2401649 (Concat!25267 (reg!16751 (regOne!33356 r!7292)) lt!2401653))))

(assert (=> b!6549022 (= e!3965144 (validRegex!8158 lt!2401627))))

(assert (=> b!6549022 (= (isDefined!13016 (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)) (Exists!3492 lambda!363667))))

(declare-fun lt!2401668 () Unit!159023)

(assert (=> b!6549022 (= lt!2401668 (lemmaFindConcatSeparationEquivalentToExists!2491 lt!2401627 (regTwo!33356 r!7292) s!2326))))

(declare-fun lt!2401667 () Regex!16422)

(assert (=> b!6549022 (matchRSpec!3523 lt!2401667 s!2326)))

(declare-fun lt!2401666 () Unit!159023)

(assert (=> b!6549022 (= lt!2401666 (mainMatchTheorem!3523 lt!2401667 s!2326))))

(assert (=> b!6549022 (matchR!8605 lt!2401667 s!2326)))

(assert (=> b!6549022 (= lt!2401667 (Concat!25267 lt!2401627 (regTwo!33356 r!7292)))))

(assert (=> b!6549022 (= lt!2401627 (Concat!25267 (reg!16751 (regOne!33356 r!7292)) lt!2401633))))

(declare-fun lt!2401643 () Unit!159023)

(declare-fun lemmaConcatAssociative!119 (Regex!16422 Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> b!6549022 (= lt!2401643 (lemmaConcatAssociative!119 (reg!16751 (regOne!33356 r!7292)) lt!2401633 (regTwo!33356 r!7292) s!2326))))

(declare-fun e!3965148 () Bool)

(assert (=> b!6549022 e!3965148))

(declare-fun res!2686656 () Bool)

(assert (=> b!6549022 (=> (not res!2686656) (not e!3965148))))

(assert (=> b!6549022 (= res!2686656 (matchR!8605 lt!2401649 lt!2401674))))

(declare-fun lt!2401621 () Unit!159023)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!343 (Regex!16422 Regex!16422 List!65567 List!65567) Unit!159023)

(assert (=> b!6549022 (= lt!2401621 (lemmaTwoRegexMatchThenConcatMatchesConcatString!343 (reg!16751 (regOne!33356 r!7292)) lt!2401653 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(assert (=> b!6549022 (matchR!8605 lt!2401653 (_2!36704 lt!2401672))))

(declare-fun lt!2401669 () Unit!159023)

(declare-fun theoremZipperRegexEquiv!858 ((Set Context!11612) List!65566 Regex!16422 List!65567) Unit!159023)

(assert (=> b!6549022 (= lt!2401669 (theoremZipperRegexEquiv!858 lt!2401654 lt!2401625 lt!2401653 (_2!36704 lt!2401672)))))

(assert (=> b!6549022 (matchR!8605 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672))))

(declare-fun lt!2401656 () Unit!159023)

(declare-fun lt!2401628 () List!65566)

(assert (=> b!6549022 (= lt!2401656 (theoremZipperRegexEquiv!858 lt!2401626 lt!2401628 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672)))))

(declare-fun lt!2401622 () List!65565)

(declare-fun ++!14547 (List!65565 List!65565) List!65565)

(assert (=> b!6549022 (matchZipper!2434 (set.insert (Context!11613 (++!14547 lt!2401622 lt!2401657)) (as set.empty (Set Context!11612))) lt!2401674)))

(declare-fun lambda!363666 () Int)

(declare-fun lt!2401634 () Unit!159023)

(declare-fun lemmaConcatPreservesForall!395 (List!65565 List!65565 Int) Unit!159023)

(assert (=> b!6549022 (= lt!2401634 (lemmaConcatPreservesForall!395 lt!2401622 lt!2401657 lambda!363666))))

(declare-fun lt!2401663 () Unit!159023)

(declare-fun lt!2401658 () Context!11612)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!203 (Context!11612 Context!11612 List!65567 List!65567) Unit!159023)

(assert (=> b!6549022 (= lt!2401663 (lemmaConcatenateContextMatchesConcatOfStrings!203 lt!2401658 lt!2401670 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(declare-fun b!6549023 () Bool)

(assert (=> b!6549023 (= e!3965160 (not e!3965157))))

(declare-fun res!2686668 () Bool)

(assert (=> b!6549023 (=> res!2686668 e!3965157)))

(assert (=> b!6549023 (= res!2686668 (not (is-Cons!65442 zl!343)))))

(assert (=> b!6549023 (= lt!2401623 (matchRSpec!3523 r!7292 s!2326))))

(assert (=> b!6549023 (= lt!2401623 (matchR!8605 r!7292 s!2326))))

(declare-fun lt!2401671 () Unit!159023)

(assert (=> b!6549023 (= lt!2401671 (mainMatchTheorem!3523 r!7292 s!2326))))

(declare-fun b!6549024 () Bool)

(declare-fun res!2686681 () Bool)

(assert (=> b!6549024 (=> res!2686681 e!3965157)))

(assert (=> b!6549024 (= res!2686681 (not (is-Cons!65441 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun setElem!44691 () Context!11612)

(declare-fun setNonEmpty!44691 () Bool)

(declare-fun tp!1811203 () Bool)

(assert (=> setNonEmpty!44691 (= setRes!44691 (and tp!1811203 (inv!84303 setElem!44691) e!3965161))))

(declare-fun setRest!44691 () (Set Context!11612))

(assert (=> setNonEmpty!44691 (= z!1189 (set.union (set.insert setElem!44691 (as set.empty (Set Context!11612))) setRest!44691))))

(declare-fun b!6549025 () Bool)

(declare-fun tp!1811205 () Bool)

(assert (=> b!6549025 (= e!3965147 tp!1811205)))

(declare-fun b!6549026 () Bool)

(declare-fun res!2686659 () Bool)

(assert (=> b!6549026 (=> res!2686659 e!3965144)))

(assert (=> b!6549026 (= res!2686659 (not (matchZipper!2434 lt!2401654 (_2!36704 lt!2401672))))))

(declare-fun b!6549027 () Bool)

(assert (=> b!6549027 (= e!3965164 e!3965163)))

(declare-fun res!2686661 () Bool)

(assert (=> b!6549027 (=> res!2686661 e!3965163)))

(assert (=> b!6549027 (= res!2686661 (not (= (unfocusZipper!2164 lt!2401628) (reg!16751 (regOne!33356 r!7292)))))))

(assert (=> b!6549027 (= lt!2401628 (Cons!65442 lt!2401658 Nil!65442))))

(assert (=> b!6549027 (= (flatMap!1927 lt!2401654 lambda!363664) (derivationStepZipperUp!1596 lt!2401670 (h!71891 s!2326)))))

(declare-fun lt!2401650 () Unit!159023)

(assert (=> b!6549027 (= lt!2401650 (lemmaFlatMapOnSingletonSet!1453 lt!2401654 lt!2401670 lambda!363664))))

(assert (=> b!6549027 (= (flatMap!1927 lt!2401626 lambda!363664) (derivationStepZipperUp!1596 lt!2401658 (h!71891 s!2326)))))

(declare-fun lt!2401661 () Unit!159023)

(assert (=> b!6549027 (= lt!2401661 (lemmaFlatMapOnSingletonSet!1453 lt!2401626 lt!2401658 lambda!363664))))

(declare-fun lt!2401635 () (Set Context!11612))

(assert (=> b!6549027 (= lt!2401635 (derivationStepZipperUp!1596 lt!2401670 (h!71891 s!2326)))))

(declare-fun lt!2401630 () (Set Context!11612))

(assert (=> b!6549027 (= lt!2401630 (derivationStepZipperUp!1596 lt!2401658 (h!71891 s!2326)))))

(assert (=> b!6549027 (= lt!2401654 (set.insert lt!2401670 (as set.empty (Set Context!11612))))))

(assert (=> b!6549027 (= lt!2401626 (set.insert lt!2401658 (as set.empty (Set Context!11612))))))

(assert (=> b!6549027 (= lt!2401658 (Context!11613 lt!2401622))))

(assert (=> b!6549027 (= lt!2401622 (Cons!65441 (reg!16751 (regOne!33356 r!7292)) Nil!65441))))

(declare-fun b!6549028 () Bool)

(declare-fun res!2686664 () Bool)

(assert (=> b!6549028 (=> res!2686664 e!3965143)))

(assert (=> b!6549028 (= res!2686664 (not lt!2401646))))

(assert (=> b!6549029 (= e!3965146 e!3965159)))

(declare-fun res!2686665 () Bool)

(assert (=> b!6549029 (=> res!2686665 e!3965159)))

(declare-fun appendTo!183 ((Set Context!11612) Context!11612) (Set Context!11612))

(assert (=> b!6549029 (= res!2686665 (not (= (appendTo!183 lt!2401626 lt!2401670) lt!2401675)))))

(declare-fun lambda!363665 () Int)

(declare-fun map!14942 ((Set Context!11612) Int) (Set Context!11612))

(assert (=> b!6549029 (= (map!14942 lt!2401626 lambda!363665) (set.insert (Context!11613 (++!14547 lt!2401622 lt!2401657)) (as set.empty (Set Context!11612))))))

(declare-fun lt!2401641 () Unit!159023)

(assert (=> b!6549029 (= lt!2401641 (lemmaConcatPreservesForall!395 lt!2401622 lt!2401657 lambda!363666))))

(declare-fun lt!2401659 () Unit!159023)

(declare-fun lemmaMapOnSingletonSet!205 ((Set Context!11612) Context!11612 Int) Unit!159023)

(assert (=> b!6549029 (= lt!2401659 (lemmaMapOnSingletonSet!205 lt!2401626 lt!2401658 lambda!363665))))

(declare-fun b!6549030 () Bool)

(declare-fun res!2686680 () Bool)

(assert (=> b!6549030 (=> res!2686680 e!3965143)))

(assert (=> b!6549030 (= res!2686680 (not (matchZipper!2434 z!1189 s!2326)))))

(declare-fun b!6549031 () Bool)

(assert (=> b!6549031 (= e!3965151 e!3965139)))

(declare-fun res!2686660 () Bool)

(assert (=> b!6549031 (=> res!2686660 e!3965139)))

(assert (=> b!6549031 (= res!2686660 (not (= lt!2401632 (matchZipper!2434 lt!2401648 (t!379209 s!2326)))))))

(assert (=> b!6549031 (= lt!2401632 (matchZipper!2434 lt!2401675 s!2326))))

(declare-fun b!6549032 () Bool)

(assert (=> b!6549032 (= e!3965148 lt!2401652)))

(declare-fun b!6549033 () Bool)

(declare-fun Unit!159026 () Unit!159023)

(assert (=> b!6549033 (= e!3965141 Unit!159026)))

(assert (= (and start!641736 res!2686662) b!6549008))

(assert (= (and b!6549008 res!2686671) b!6548998))

(assert (= (and b!6548998 res!2686658) b!6549023))

(assert (= (and b!6549023 (not res!2686668)) b!6548990))

(assert (= (and b!6548990 (not res!2686683)) b!6549016))

(assert (= (and b!6549016 (not res!2686670)) b!6549024))

(assert (= (and b!6549024 (not res!2686681)) b!6549011))

(assert (= (and b!6549011 (not res!2686673)) b!6548997))

(assert (= (and b!6548997 (not res!2686663)) b!6549019))

(assert (= (and b!6549019 (not res!2686653)) b!6548992))

(assert (= (and b!6548992 (not res!2686685)) b!6548993))

(assert (= (and b!6548993 c!1202880) b!6548996))

(assert (= (and b!6548993 (not c!1202880)) b!6549033))

(assert (= (and b!6548996 (not res!2686672)) b!6549002))

(assert (= (and b!6548993 (not res!2686666)) b!6549001))

(assert (= (and b!6549001 res!2686677) b!6549013))

(assert (= (and b!6549001 (not res!2686667)) b!6548989))

(assert (= (and b!6548989 (not res!2686679)) b!6548999))

(assert (= (and b!6548999 (not res!2686657)) b!6549014))

(assert (= (and b!6549014 (not res!2686654)) b!6549031))

(assert (= (and b!6549031 (not res!2686660)) b!6549007))

(assert (= (and b!6549007 (not res!2686669)) b!6549020))

(assert (= (and b!6549020 (not res!2686682)) b!6549021))

(assert (= (and b!6549021 (not res!2686676)) b!6549027))

(assert (= (and b!6549027 (not res!2686661)) b!6549004))

(assert (= (and b!6549004 (not res!2686655)) b!6549000))

(assert (= (and b!6549000 (not res!2686674)) b!6549030))

(assert (= (and b!6549030 (not res!2686680)) b!6549028))

(assert (= (and b!6549028 (not res!2686664)) b!6548995))

(assert (= (and b!6548995 res!2686684) b!6549003))

(assert (= (and b!6548995 (not res!2686675)) b!6548991))

(assert (= (and b!6548991 (not res!2686651)) b!6549029))

(assert (= (and b!6549029 (not res!2686665)) b!6549015))

(assert (= (and b!6549015 (not res!2686652)) b!6549006))

(assert (= (and b!6549006 (not res!2686678)) b!6549026))

(assert (= (and b!6549026 (not res!2686659)) b!6549022))

(assert (= (and b!6549022 res!2686656) b!6549032))

(assert (= (and start!641736 (is-ElementMatch!16422 r!7292)) b!6549010))

(assert (= (and start!641736 (is-Concat!25267 r!7292)) b!6549009))

(assert (= (and start!641736 (is-Star!16422 r!7292)) b!6549018))

(assert (= (and start!641736 (is-Union!16422 r!7292)) b!6548994))

(assert (= (and start!641736 condSetEmpty!44691) setIsEmpty!44691))

(assert (= (and start!641736 (not condSetEmpty!44691)) setNonEmpty!44691))

(assert (= setNonEmpty!44691 b!6549005))

(assert (= b!6549012 b!6549025))

(assert (= (and start!641736 (is-Cons!65442 zl!343)) b!6549012))

(assert (= (and start!641736 (is-Cons!65443 s!2326)) b!6549017))

(declare-fun m!7331512 () Bool)

(assert (=> b!6549026 m!7331512))

(declare-fun m!7331514 () Bool)

(assert (=> b!6549008 m!7331514))

(declare-fun m!7331516 () Bool)

(assert (=> b!6549003 m!7331516))

(declare-fun m!7331518 () Bool)

(assert (=> b!6549000 m!7331518))

(declare-fun m!7331520 () Bool)

(assert (=> b!6549000 m!7331520))

(declare-fun m!7331522 () Bool)

(assert (=> b!6549000 m!7331522))

(declare-fun m!7331524 () Bool)

(assert (=> b!6548993 m!7331524))

(declare-fun m!7331526 () Bool)

(assert (=> b!6548993 m!7331526))

(declare-fun m!7331528 () Bool)

(assert (=> b!6548993 m!7331528))

(declare-fun m!7331530 () Bool)

(assert (=> b!6548993 m!7331530))

(declare-fun m!7331532 () Bool)

(assert (=> b!6548993 m!7331532))

(declare-fun m!7331534 () Bool)

(assert (=> b!6548993 m!7331534))

(declare-fun m!7331536 () Bool)

(assert (=> b!6548993 m!7331536))

(declare-fun m!7331538 () Bool)

(assert (=> b!6549013 m!7331538))

(declare-fun m!7331540 () Bool)

(assert (=> b!6549006 m!7331540))

(declare-fun m!7331542 () Bool)

(assert (=> b!6548990 m!7331542))

(declare-fun m!7331544 () Bool)

(assert (=> b!6549012 m!7331544))

(declare-fun m!7331546 () Bool)

(assert (=> b!6549019 m!7331546))

(declare-fun m!7331548 () Bool)

(assert (=> b!6549019 m!7331548))

(declare-fun m!7331550 () Bool)

(assert (=> b!6549019 m!7331550))

(declare-fun m!7331552 () Bool)

(assert (=> b!6549019 m!7331552))

(assert (=> b!6549019 m!7331546))

(declare-fun m!7331554 () Bool)

(assert (=> b!6549019 m!7331554))

(assert (=> b!6549019 m!7331548))

(declare-fun m!7331556 () Bool)

(assert (=> b!6549019 m!7331556))

(declare-fun m!7331558 () Bool)

(assert (=> b!6549030 m!7331558))

(declare-fun m!7331560 () Bool)

(assert (=> b!6549022 m!7331560))

(declare-fun m!7331562 () Bool)

(assert (=> b!6549022 m!7331562))

(declare-fun m!7331564 () Bool)

(assert (=> b!6549022 m!7331564))

(declare-fun m!7331566 () Bool)

(assert (=> b!6549022 m!7331566))

(declare-fun m!7331568 () Bool)

(assert (=> b!6549022 m!7331568))

(declare-fun m!7331570 () Bool)

(assert (=> b!6549022 m!7331570))

(declare-fun m!7331572 () Bool)

(assert (=> b!6549022 m!7331572))

(assert (=> b!6549022 m!7331570))

(declare-fun m!7331574 () Bool)

(assert (=> b!6549022 m!7331574))

(declare-fun m!7331576 () Bool)

(assert (=> b!6549022 m!7331576))

(declare-fun m!7331578 () Bool)

(assert (=> b!6549022 m!7331578))

(declare-fun m!7331580 () Bool)

(assert (=> b!6549022 m!7331580))

(declare-fun m!7331582 () Bool)

(assert (=> b!6549022 m!7331582))

(declare-fun m!7331584 () Bool)

(assert (=> b!6549022 m!7331584))

(declare-fun m!7331586 () Bool)

(assert (=> b!6549022 m!7331586))

(assert (=> b!6549022 m!7331574))

(declare-fun m!7331588 () Bool)

(assert (=> b!6549022 m!7331588))

(declare-fun m!7331590 () Bool)

(assert (=> b!6549022 m!7331590))

(declare-fun m!7331592 () Bool)

(assert (=> b!6549022 m!7331592))

(declare-fun m!7331594 () Bool)

(assert (=> b!6549022 m!7331594))

(declare-fun m!7331596 () Bool)

(assert (=> b!6549022 m!7331596))

(declare-fun m!7331598 () Bool)

(assert (=> b!6549022 m!7331598))

(declare-fun m!7331600 () Bool)

(assert (=> b!6548999 m!7331600))

(assert (=> b!6549002 m!7331516))

(declare-fun m!7331602 () Bool)

(assert (=> b!6548995 m!7331602))

(declare-fun m!7331604 () Bool)

(assert (=> b!6549004 m!7331604))

(declare-fun m!7331606 () Bool)

(assert (=> b!6549021 m!7331606))

(declare-fun m!7331608 () Bool)

(assert (=> b!6549031 m!7331608))

(declare-fun m!7331610 () Bool)

(assert (=> b!6549031 m!7331610))

(declare-fun m!7331612 () Bool)

(assert (=> b!6549029 m!7331612))

(assert (=> b!6549029 m!7331570))

(assert (=> b!6549029 m!7331578))

(assert (=> b!6549029 m!7331562))

(declare-fun m!7331614 () Bool)

(assert (=> b!6549029 m!7331614))

(declare-fun m!7331616 () Bool)

(assert (=> b!6549029 m!7331616))

(declare-fun m!7331618 () Bool)

(assert (=> setNonEmpty!44691 m!7331618))

(declare-fun m!7331620 () Bool)

(assert (=> b!6549027 m!7331620))

(declare-fun m!7331622 () Bool)

(assert (=> b!6549027 m!7331622))

(declare-fun m!7331624 () Bool)

(assert (=> b!6549027 m!7331624))

(declare-fun m!7331626 () Bool)

(assert (=> b!6549027 m!7331626))

(declare-fun m!7331628 () Bool)

(assert (=> b!6549027 m!7331628))

(declare-fun m!7331630 () Bool)

(assert (=> b!6549027 m!7331630))

(declare-fun m!7331632 () Bool)

(assert (=> b!6549027 m!7331632))

(declare-fun m!7331634 () Bool)

(assert (=> b!6549027 m!7331634))

(declare-fun m!7331636 () Bool)

(assert (=> b!6549027 m!7331636))

(declare-fun m!7331638 () Bool)

(assert (=> b!6548998 m!7331638))

(declare-fun m!7331640 () Bool)

(assert (=> b!6549023 m!7331640))

(declare-fun m!7331642 () Bool)

(assert (=> b!6549023 m!7331642))

(declare-fun m!7331644 () Bool)

(assert (=> b!6549023 m!7331644))

(declare-fun m!7331646 () Bool)

(assert (=> b!6548992 m!7331646))

(declare-fun m!7331648 () Bool)

(assert (=> b!6549015 m!7331648))

(declare-fun m!7331650 () Bool)

(assert (=> b!6549015 m!7331650))

(declare-fun m!7331652 () Bool)

(assert (=> b!6549015 m!7331652))

(declare-fun m!7331654 () Bool)

(assert (=> b!6549015 m!7331654))

(declare-fun m!7331656 () Bool)

(assert (=> b!6549015 m!7331656))

(declare-fun m!7331658 () Bool)

(assert (=> b!6548996 m!7331658))

(assert (=> b!6548996 m!7331602))

(declare-fun m!7331660 () Bool)

(assert (=> b!6548996 m!7331660))

(declare-fun m!7331662 () Bool)

(assert (=> b!6549011 m!7331662))

(assert (=> b!6549011 m!7331662))

(declare-fun m!7331664 () Bool)

(assert (=> b!6549011 m!7331664))

(declare-fun m!7331666 () Bool)

(assert (=> b!6549016 m!7331666))

(declare-fun m!7331668 () Bool)

(assert (=> start!641736 m!7331668))

(declare-fun m!7331670 () Bool)

(assert (=> b!6549014 m!7331670))

(declare-fun m!7331672 () Bool)

(assert (=> b!6549014 m!7331672))

(declare-fun m!7331674 () Bool)

(assert (=> b!6549014 m!7331674))

(declare-fun m!7331676 () Bool)

(assert (=> b!6549014 m!7331676))

(declare-fun m!7331678 () Bool)

(assert (=> b!6549014 m!7331678))

(push 1)

(assert (not b!6549011))

(assert (not b!6548994))

(assert (not b!6548992))

(assert (not b!6548990))

(assert (not b!6549031))

(assert (not b!6549021))

(assert (not b!6549029))

(assert (not b!6549022))

(assert (not b!6549002))

(assert (not b!6549013))

(assert (not b!6549008))

(assert (not b!6548999))

(assert (not b!6549004))

(assert (not b!6549000))

(assert (not b!6549012))

(assert (not b!6549005))

(assert (not start!641736))

(assert (not b!6548996))

(assert (not b!6549025))

(assert (not b!6549026))

(assert (not b!6549023))

(assert (not b!6549019))

(assert (not b!6549017))

(assert (not b!6549014))

(assert (not b!6549016))

(assert (not b!6549030))

(assert (not setNonEmpty!44691))

(assert (not b!6548995))

(assert (not b!6548998))

(assert (not b!6549015))

(assert (not b!6549009))

(assert (not b!6548993))

(assert tp_is_empty!42097)

(assert (not b!6549006))

(assert (not b!6549003))

(assert (not b!6549027))

(assert (not b!6549018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2055555 () Bool)

(declare-fun lt!2401845 () Regex!16422)

(assert (=> d!2055555 (validRegex!8158 lt!2401845)))

(assert (=> d!2055555 (= lt!2401845 (generalisedUnion!2266 (unfocusZipperList!1843 lt!2401625)))))

(assert (=> d!2055555 (= (unfocusZipper!2164 lt!2401625) lt!2401845)))

(declare-fun bs!1672024 () Bool)

(assert (= bs!1672024 d!2055555))

(declare-fun m!7331848 () Bool)

(assert (=> bs!1672024 m!7331848))

(declare-fun m!7331850 () Bool)

(assert (=> bs!1672024 m!7331850))

(assert (=> bs!1672024 m!7331850))

(declare-fun m!7331852 () Bool)

(assert (=> bs!1672024 m!7331852))

(assert (=> b!6549004 d!2055555))

(declare-fun d!2055557 () Bool)

(declare-fun c!1202899 () Bool)

(declare-fun isEmpty!37671 (List!65567) Bool)

(assert (=> d!2055557 (= c!1202899 (isEmpty!37671 (_1!36704 lt!2401672)))))

(declare-fun e!3965253 () Bool)

(assert (=> d!2055557 (= (matchZipper!2434 lt!2401626 (_1!36704 lt!2401672)) e!3965253)))

(declare-fun b!6549205 () Bool)

(declare-fun nullableZipper!2167 ((Set Context!11612)) Bool)

(assert (=> b!6549205 (= e!3965253 (nullableZipper!2167 lt!2401626))))

(declare-fun b!6549206 () Bool)

(declare-fun head!13295 (List!65567) C!33114)

(declare-fun tail!12380 (List!65567) List!65567)

(assert (=> b!6549206 (= e!3965253 (matchZipper!2434 (derivationStepZipper!2388 lt!2401626 (head!13295 (_1!36704 lt!2401672))) (tail!12380 (_1!36704 lt!2401672))))))

(assert (= (and d!2055557 c!1202899) b!6549205))

(assert (= (and d!2055557 (not c!1202899)) b!6549206))

(declare-fun m!7331854 () Bool)

(assert (=> d!2055557 m!7331854))

(declare-fun m!7331856 () Bool)

(assert (=> b!6549205 m!7331856))

(declare-fun m!7331858 () Bool)

(assert (=> b!6549206 m!7331858))

(assert (=> b!6549206 m!7331858))

(declare-fun m!7331860 () Bool)

(assert (=> b!6549206 m!7331860))

(declare-fun m!7331862 () Bool)

(assert (=> b!6549206 m!7331862))

(assert (=> b!6549206 m!7331860))

(assert (=> b!6549206 m!7331862))

(declare-fun m!7331864 () Bool)

(assert (=> b!6549206 m!7331864))

(assert (=> b!6549006 d!2055557))

(declare-fun d!2055559 () Bool)

(declare-fun c!1202900 () Bool)

(assert (=> d!2055559 (= c!1202900 (isEmpty!37671 (_2!36704 lt!2401672)))))

(declare-fun e!3965254 () Bool)

(assert (=> d!2055559 (= (matchZipper!2434 lt!2401654 (_2!36704 lt!2401672)) e!3965254)))

(declare-fun b!6549207 () Bool)

(assert (=> b!6549207 (= e!3965254 (nullableZipper!2167 lt!2401654))))

(declare-fun b!6549208 () Bool)

(assert (=> b!6549208 (= e!3965254 (matchZipper!2434 (derivationStepZipper!2388 lt!2401654 (head!13295 (_2!36704 lt!2401672))) (tail!12380 (_2!36704 lt!2401672))))))

(assert (= (and d!2055559 c!1202900) b!6549207))

(assert (= (and d!2055559 (not c!1202900)) b!6549208))

(declare-fun m!7331866 () Bool)

(assert (=> d!2055559 m!7331866))

(declare-fun m!7331868 () Bool)

(assert (=> b!6549207 m!7331868))

(declare-fun m!7331870 () Bool)

(assert (=> b!6549208 m!7331870))

(assert (=> b!6549208 m!7331870))

(declare-fun m!7331872 () Bool)

(assert (=> b!6549208 m!7331872))

(declare-fun m!7331874 () Bool)

(assert (=> b!6549208 m!7331874))

(assert (=> b!6549208 m!7331872))

(assert (=> b!6549208 m!7331874))

(declare-fun m!7331876 () Bool)

(assert (=> b!6549208 m!7331876))

(assert (=> b!6549026 d!2055559))

(declare-fun d!2055561 () Bool)

(declare-fun choose!48700 ((Set Context!11612) Int) (Set Context!11612))

(assert (=> d!2055561 (= (flatMap!1927 lt!2401626 lambda!363664) (choose!48700 lt!2401626 lambda!363664))))

(declare-fun bs!1672025 () Bool)

(assert (= bs!1672025 d!2055561))

(declare-fun m!7331878 () Bool)

(assert (=> bs!1672025 m!7331878))

(assert (=> b!6549027 d!2055561))

(declare-fun b!6549219 () Bool)

(declare-fun e!3965262 () (Set Context!11612))

(declare-fun e!3965263 () (Set Context!11612))

(assert (=> b!6549219 (= e!3965262 e!3965263)))

(declare-fun c!1202906 () Bool)

(assert (=> b!6549219 (= c!1202906 (is-Cons!65441 (exprs!6306 lt!2401670)))))

(declare-fun d!2055563 () Bool)

(declare-fun c!1202905 () Bool)

(declare-fun e!3965261 () Bool)

(assert (=> d!2055563 (= c!1202905 e!3965261)))

(declare-fun res!2686810 () Bool)

(assert (=> d!2055563 (=> (not res!2686810) (not e!3965261))))

(assert (=> d!2055563 (= res!2686810 (is-Cons!65441 (exprs!6306 lt!2401670)))))

(assert (=> d!2055563 (= (derivationStepZipperUp!1596 lt!2401670 (h!71891 s!2326)) e!3965262)))

(declare-fun b!6549220 () Bool)

(assert (=> b!6549220 (= e!3965263 (as set.empty (Set Context!11612)))))

(declare-fun bm!569607 () Bool)

(declare-fun call!569612 () (Set Context!11612))

(assert (=> bm!569607 (= call!569612 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 lt!2401670)) (Context!11613 (t!379207 (exprs!6306 lt!2401670))) (h!71891 s!2326)))))

(declare-fun b!6549221 () Bool)

(assert (=> b!6549221 (= e!3965263 call!569612)))

(declare-fun b!6549222 () Bool)

(assert (=> b!6549222 (= e!3965262 (set.union call!569612 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 lt!2401670))) (h!71891 s!2326))))))

(declare-fun b!6549223 () Bool)

(assert (=> b!6549223 (= e!3965261 (nullable!6415 (h!71889 (exprs!6306 lt!2401670))))))

(assert (= (and d!2055563 res!2686810) b!6549223))

(assert (= (and d!2055563 c!1202905) b!6549222))

(assert (= (and d!2055563 (not c!1202905)) b!6549219))

(assert (= (and b!6549219 c!1202906) b!6549221))

(assert (= (and b!6549219 (not c!1202906)) b!6549220))

(assert (= (or b!6549222 b!6549221) bm!569607))

(declare-fun m!7331880 () Bool)

(assert (=> bm!569607 m!7331880))

(declare-fun m!7331882 () Bool)

(assert (=> b!6549222 m!7331882))

(declare-fun m!7331884 () Bool)

(assert (=> b!6549223 m!7331884))

(assert (=> b!6549027 d!2055563))

(declare-fun d!2055565 () Bool)

(declare-fun lt!2401846 () Regex!16422)

(assert (=> d!2055565 (validRegex!8158 lt!2401846)))

(assert (=> d!2055565 (= lt!2401846 (generalisedUnion!2266 (unfocusZipperList!1843 lt!2401628)))))

(assert (=> d!2055565 (= (unfocusZipper!2164 lt!2401628) lt!2401846)))

(declare-fun bs!1672026 () Bool)

(assert (= bs!1672026 d!2055565))

(declare-fun m!7331886 () Bool)

(assert (=> bs!1672026 m!7331886))

(declare-fun m!7331888 () Bool)

(assert (=> bs!1672026 m!7331888))

(assert (=> bs!1672026 m!7331888))

(declare-fun m!7331890 () Bool)

(assert (=> bs!1672026 m!7331890))

(assert (=> b!6549027 d!2055565))

(declare-fun d!2055567 () Bool)

(assert (=> d!2055567 (= (flatMap!1927 lt!2401654 lambda!363664) (choose!48700 lt!2401654 lambda!363664))))

(declare-fun bs!1672027 () Bool)

(assert (= bs!1672027 d!2055567))

(declare-fun m!7331892 () Bool)

(assert (=> bs!1672027 m!7331892))

(assert (=> b!6549027 d!2055567))

(declare-fun d!2055569 () Bool)

(declare-fun dynLambda!26016 (Int Context!11612) (Set Context!11612))

(assert (=> d!2055569 (= (flatMap!1927 lt!2401654 lambda!363664) (dynLambda!26016 lambda!363664 lt!2401670))))

(declare-fun lt!2401849 () Unit!159023)

(declare-fun choose!48701 ((Set Context!11612) Context!11612 Int) Unit!159023)

(assert (=> d!2055569 (= lt!2401849 (choose!48701 lt!2401654 lt!2401670 lambda!363664))))

(assert (=> d!2055569 (= lt!2401654 (set.insert lt!2401670 (as set.empty (Set Context!11612))))))

(assert (=> d!2055569 (= (lemmaFlatMapOnSingletonSet!1453 lt!2401654 lt!2401670 lambda!363664) lt!2401849)))

(declare-fun b_lambda!247881 () Bool)

(assert (=> (not b_lambda!247881) (not d!2055569)))

(declare-fun bs!1672028 () Bool)

(assert (= bs!1672028 d!2055569))

(assert (=> bs!1672028 m!7331624))

(declare-fun m!7331894 () Bool)

(assert (=> bs!1672028 m!7331894))

(declare-fun m!7331896 () Bool)

(assert (=> bs!1672028 m!7331896))

(assert (=> bs!1672028 m!7331626))

(assert (=> b!6549027 d!2055569))

(declare-fun b!6549224 () Bool)

(declare-fun e!3965265 () (Set Context!11612))

(declare-fun e!3965266 () (Set Context!11612))

(assert (=> b!6549224 (= e!3965265 e!3965266)))

(declare-fun c!1202908 () Bool)

(assert (=> b!6549224 (= c!1202908 (is-Cons!65441 (exprs!6306 lt!2401658)))))

(declare-fun d!2055571 () Bool)

(declare-fun c!1202907 () Bool)

(declare-fun e!3965264 () Bool)

(assert (=> d!2055571 (= c!1202907 e!3965264)))

(declare-fun res!2686811 () Bool)

(assert (=> d!2055571 (=> (not res!2686811) (not e!3965264))))

(assert (=> d!2055571 (= res!2686811 (is-Cons!65441 (exprs!6306 lt!2401658)))))

(assert (=> d!2055571 (= (derivationStepZipperUp!1596 lt!2401658 (h!71891 s!2326)) e!3965265)))

(declare-fun b!6549225 () Bool)

(assert (=> b!6549225 (= e!3965266 (as set.empty (Set Context!11612)))))

(declare-fun bm!569608 () Bool)

(declare-fun call!569613 () (Set Context!11612))

(assert (=> bm!569608 (= call!569613 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 lt!2401658)) (Context!11613 (t!379207 (exprs!6306 lt!2401658))) (h!71891 s!2326)))))

(declare-fun b!6549226 () Bool)

(assert (=> b!6549226 (= e!3965266 call!569613)))

(declare-fun b!6549227 () Bool)

(assert (=> b!6549227 (= e!3965265 (set.union call!569613 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 lt!2401658))) (h!71891 s!2326))))))

(declare-fun b!6549228 () Bool)

(assert (=> b!6549228 (= e!3965264 (nullable!6415 (h!71889 (exprs!6306 lt!2401658))))))

(assert (= (and d!2055571 res!2686811) b!6549228))

(assert (= (and d!2055571 c!1202907) b!6549227))

(assert (= (and d!2055571 (not c!1202907)) b!6549224))

(assert (= (and b!6549224 c!1202908) b!6549226))

(assert (= (and b!6549224 (not c!1202908)) b!6549225))

(assert (= (or b!6549227 b!6549226) bm!569608))

(declare-fun m!7331898 () Bool)

(assert (=> bm!569608 m!7331898))

(declare-fun m!7331900 () Bool)

(assert (=> b!6549227 m!7331900))

(declare-fun m!7331902 () Bool)

(assert (=> b!6549228 m!7331902))

(assert (=> b!6549027 d!2055571))

(declare-fun d!2055573 () Bool)

(assert (=> d!2055573 (= (flatMap!1927 lt!2401626 lambda!363664) (dynLambda!26016 lambda!363664 lt!2401658))))

(declare-fun lt!2401850 () Unit!159023)

(assert (=> d!2055573 (= lt!2401850 (choose!48701 lt!2401626 lt!2401658 lambda!363664))))

(assert (=> d!2055573 (= lt!2401626 (set.insert lt!2401658 (as set.empty (Set Context!11612))))))

(assert (=> d!2055573 (= (lemmaFlatMapOnSingletonSet!1453 lt!2401626 lt!2401658 lambda!363664) lt!2401850)))

(declare-fun b_lambda!247883 () Bool)

(assert (=> (not b_lambda!247883) (not d!2055573)))

(declare-fun bs!1672029 () Bool)

(assert (= bs!1672029 d!2055573))

(assert (=> bs!1672029 m!7331634))

(declare-fun m!7331904 () Bool)

(assert (=> bs!1672029 m!7331904))

(declare-fun m!7331906 () Bool)

(assert (=> bs!1672029 m!7331906))

(assert (=> bs!1672029 m!7331636))

(assert (=> b!6549027 d!2055573))

(declare-fun d!2055575 () Bool)

(declare-fun forall!15594 (List!65565 Int) Bool)

(assert (=> d!2055575 (forall!15594 (++!14547 lt!2401622 lt!2401657) lambda!363666)))

(declare-fun lt!2401853 () Unit!159023)

(declare-fun choose!48702 (List!65565 List!65565 Int) Unit!159023)

(assert (=> d!2055575 (= lt!2401853 (choose!48702 lt!2401622 lt!2401657 lambda!363666))))

(assert (=> d!2055575 (forall!15594 lt!2401622 lambda!363666)))

(assert (=> d!2055575 (= (lemmaConcatPreservesForall!395 lt!2401622 lt!2401657 lambda!363666) lt!2401853)))

(declare-fun bs!1672030 () Bool)

(assert (= bs!1672030 d!2055575))

(assert (=> bs!1672030 m!7331578))

(assert (=> bs!1672030 m!7331578))

(declare-fun m!7331908 () Bool)

(assert (=> bs!1672030 m!7331908))

(declare-fun m!7331910 () Bool)

(assert (=> bs!1672030 m!7331910))

(declare-fun m!7331912 () Bool)

(assert (=> bs!1672030 m!7331912))

(assert (=> b!6549029 d!2055575))

(declare-fun bs!1672031 () Bool)

(declare-fun d!2055577 () Bool)

(assert (= bs!1672031 (and d!2055577 b!6549029)))

(declare-fun lambda!363702 () Int)

(assert (=> bs!1672031 (= (= (exprs!6306 lt!2401670) lt!2401657) (= lambda!363702 lambda!363665))))

(assert (=> d!2055577 true))

(assert (=> d!2055577 (= (appendTo!183 lt!2401626 lt!2401670) (map!14942 lt!2401626 lambda!363702))))

(declare-fun bs!1672032 () Bool)

(assert (= bs!1672032 d!2055577))

(declare-fun m!7331914 () Bool)

(assert (=> bs!1672032 m!7331914))

(assert (=> b!6549029 d!2055577))

(declare-fun d!2055579 () Bool)

(declare-fun choose!48703 ((Set Context!11612) Int) (Set Context!11612))

(assert (=> d!2055579 (= (map!14942 lt!2401626 lambda!363665) (choose!48703 lt!2401626 lambda!363665))))

(declare-fun bs!1672033 () Bool)

(assert (= bs!1672033 d!2055579))

(declare-fun m!7331916 () Bool)

(assert (=> bs!1672033 m!7331916))

(assert (=> b!6549029 d!2055579))

(declare-fun b!6549239 () Bool)

(declare-fun e!3965271 () List!65565)

(assert (=> b!6549239 (= e!3965271 lt!2401657)))

(declare-fun b!6549241 () Bool)

(declare-fun res!2686816 () Bool)

(declare-fun e!3965272 () Bool)

(assert (=> b!6549241 (=> (not res!2686816) (not e!3965272))))

(declare-fun lt!2401858 () List!65565)

(declare-fun size!40493 (List!65565) Int)

(assert (=> b!6549241 (= res!2686816 (= (size!40493 lt!2401858) (+ (size!40493 lt!2401622) (size!40493 lt!2401657))))))

(declare-fun d!2055581 () Bool)

(assert (=> d!2055581 e!3965272))

(declare-fun res!2686817 () Bool)

(assert (=> d!2055581 (=> (not res!2686817) (not e!3965272))))

(declare-fun content!12548 (List!65565) (Set Regex!16422))

(assert (=> d!2055581 (= res!2686817 (= (content!12548 lt!2401858) (set.union (content!12548 lt!2401622) (content!12548 lt!2401657))))))

(assert (=> d!2055581 (= lt!2401858 e!3965271)))

(declare-fun c!1202912 () Bool)

(assert (=> d!2055581 (= c!1202912 (is-Nil!65441 lt!2401622))))

(assert (=> d!2055581 (= (++!14547 lt!2401622 lt!2401657) lt!2401858)))

(declare-fun b!6549240 () Bool)

(assert (=> b!6549240 (= e!3965271 (Cons!65441 (h!71889 lt!2401622) (++!14547 (t!379207 lt!2401622) lt!2401657)))))

(declare-fun b!6549242 () Bool)

(assert (=> b!6549242 (= e!3965272 (or (not (= lt!2401657 Nil!65441)) (= lt!2401858 lt!2401622)))))

(assert (= (and d!2055581 c!1202912) b!6549239))

(assert (= (and d!2055581 (not c!1202912)) b!6549240))

(assert (= (and d!2055581 res!2686817) b!6549241))

(assert (= (and b!6549241 res!2686816) b!6549242))

(declare-fun m!7331918 () Bool)

(assert (=> b!6549241 m!7331918))

(declare-fun m!7331920 () Bool)

(assert (=> b!6549241 m!7331920))

(declare-fun m!7331922 () Bool)

(assert (=> b!6549241 m!7331922))

(declare-fun m!7331924 () Bool)

(assert (=> d!2055581 m!7331924))

(declare-fun m!7331926 () Bool)

(assert (=> d!2055581 m!7331926))

(declare-fun m!7331928 () Bool)

(assert (=> d!2055581 m!7331928))

(declare-fun m!7331930 () Bool)

(assert (=> b!6549240 m!7331930))

(assert (=> b!6549029 d!2055581))

(declare-fun d!2055583 () Bool)

(declare-fun dynLambda!26017 (Int Context!11612) Context!11612)

(assert (=> d!2055583 (= (map!14942 lt!2401626 lambda!363665) (set.insert (dynLambda!26017 lambda!363665 lt!2401658) (as set.empty (Set Context!11612))))))

(declare-fun lt!2401861 () Unit!159023)

(declare-fun choose!48704 ((Set Context!11612) Context!11612 Int) Unit!159023)

(assert (=> d!2055583 (= lt!2401861 (choose!48704 lt!2401626 lt!2401658 lambda!363665))))

(assert (=> d!2055583 (= lt!2401626 (set.insert lt!2401658 (as set.empty (Set Context!11612))))))

(assert (=> d!2055583 (= (lemmaMapOnSingletonSet!205 lt!2401626 lt!2401658 lambda!363665) lt!2401861)))

(declare-fun b_lambda!247885 () Bool)

(assert (=> (not b_lambda!247885) (not d!2055583)))

(declare-fun bs!1672034 () Bool)

(assert (= bs!1672034 d!2055583))

(declare-fun m!7331932 () Bool)

(assert (=> bs!1672034 m!7331932))

(assert (=> bs!1672034 m!7331932))

(declare-fun m!7331934 () Bool)

(assert (=> bs!1672034 m!7331934))

(assert (=> bs!1672034 m!7331636))

(assert (=> bs!1672034 m!7331616))

(declare-fun m!7331936 () Bool)

(assert (=> bs!1672034 m!7331936))

(assert (=> b!6549029 d!2055583))

(declare-fun d!2055585 () Bool)

(declare-fun e!3965275 () Bool)

(assert (=> d!2055585 e!3965275))

(declare-fun res!2686820 () Bool)

(assert (=> d!2055585 (=> (not res!2686820) (not e!3965275))))

(declare-fun lt!2401864 () List!65566)

(declare-fun noDuplicate!2228 (List!65566) Bool)

(assert (=> d!2055585 (= res!2686820 (noDuplicate!2228 lt!2401864))))

(declare-fun choose!48705 ((Set Context!11612)) List!65566)

(assert (=> d!2055585 (= lt!2401864 (choose!48705 z!1189))))

(assert (=> d!2055585 (= (toList!10206 z!1189) lt!2401864)))

(declare-fun b!6549245 () Bool)

(declare-fun content!12549 (List!65566) (Set Context!11612))

(assert (=> b!6549245 (= e!3965275 (= (content!12549 lt!2401864) z!1189))))

(assert (= (and d!2055585 res!2686820) b!6549245))

(declare-fun m!7331938 () Bool)

(assert (=> d!2055585 m!7331938))

(declare-fun m!7331940 () Bool)

(assert (=> d!2055585 m!7331940))

(declare-fun m!7331942 () Bool)

(assert (=> b!6549245 m!7331942))

(assert (=> b!6549008 d!2055585))

(declare-fun d!2055587 () Bool)

(declare-fun lt!2401865 () Regex!16422)

(assert (=> d!2055587 (validRegex!8158 lt!2401865)))

(assert (=> d!2055587 (= lt!2401865 (generalisedUnion!2266 (unfocusZipperList!1843 (Cons!65442 lt!2401631 Nil!65442))))))

(assert (=> d!2055587 (= (unfocusZipper!2164 (Cons!65442 lt!2401631 Nil!65442)) lt!2401865)))

(declare-fun bs!1672035 () Bool)

(assert (= bs!1672035 d!2055587))

(declare-fun m!7331944 () Bool)

(assert (=> bs!1672035 m!7331944))

(declare-fun m!7331946 () Bool)

(assert (=> bs!1672035 m!7331946))

(assert (=> bs!1672035 m!7331946))

(declare-fun m!7331948 () Bool)

(assert (=> bs!1672035 m!7331948))

(assert (=> b!6549021 d!2055587))

(declare-fun bs!1672036 () Bool)

(declare-fun b!6549278 () Bool)

(assert (= bs!1672036 (and b!6549278 b!6549019)))

(declare-fun lambda!363707 () Int)

(assert (=> bs!1672036 (not (= lambda!363707 lambda!363662))))

(assert (=> bs!1672036 (not (= lambda!363707 lambda!363663))))

(declare-fun bs!1672037 () Bool)

(assert (= bs!1672037 (and b!6549278 b!6549022)))

(assert (=> bs!1672037 (not (= lambda!363707 lambda!363667))))

(assert (=> b!6549278 true))

(assert (=> b!6549278 true))

(declare-fun bs!1672038 () Bool)

(declare-fun b!6549279 () Bool)

(assert (= bs!1672038 (and b!6549279 b!6549019)))

(declare-fun lambda!363708 () Int)

(assert (=> bs!1672038 (not (= lambda!363708 lambda!363662))))

(assert (=> bs!1672038 (= (and (= (regOne!33356 lt!2401649) (regOne!33356 r!7292)) (= (regTwo!33356 lt!2401649) (regTwo!33356 r!7292))) (= lambda!363708 lambda!363663))))

(declare-fun bs!1672039 () Bool)

(assert (= bs!1672039 (and b!6549279 b!6549022)))

(assert (=> bs!1672039 (not (= lambda!363708 lambda!363667))))

(declare-fun bs!1672040 () Bool)

(assert (= bs!1672040 (and b!6549279 b!6549278)))

(assert (=> bs!1672040 (not (= lambda!363708 lambda!363707))))

(assert (=> b!6549279 true))

(assert (=> b!6549279 true))

(declare-fun e!3965295 () Bool)

(declare-fun call!569618 () Bool)

(assert (=> b!6549278 (= e!3965295 call!569618)))

(declare-fun e!3965298 () Bool)

(assert (=> b!6549279 (= e!3965298 call!569618)))

(declare-fun b!6549280 () Bool)

(declare-fun e!3965294 () Bool)

(declare-fun e!3965299 () Bool)

(assert (=> b!6549280 (= e!3965294 e!3965299)))

(declare-fun res!2686839 () Bool)

(assert (=> b!6549280 (= res!2686839 (matchRSpec!3523 (regOne!33357 lt!2401649) s!2326))))

(assert (=> b!6549280 (=> res!2686839 e!3965299)))

(declare-fun b!6549281 () Bool)

(assert (=> b!6549281 (= e!3965294 e!3965298)))

(declare-fun c!1202922 () Bool)

(assert (=> b!6549281 (= c!1202922 (is-Star!16422 lt!2401649))))

(declare-fun b!6549282 () Bool)

(declare-fun e!3965300 () Bool)

(declare-fun e!3965297 () Bool)

(assert (=> b!6549282 (= e!3965300 e!3965297)))

(declare-fun res!2686837 () Bool)

(assert (=> b!6549282 (= res!2686837 (not (is-EmptyLang!16422 lt!2401649)))))

(assert (=> b!6549282 (=> (not res!2686837) (not e!3965297))))

(declare-fun bm!569613 () Bool)

(assert (=> bm!569613 (= call!569618 (Exists!3492 (ite c!1202922 lambda!363707 lambda!363708)))))

(declare-fun b!6549283 () Bool)

(declare-fun c!1202924 () Bool)

(assert (=> b!6549283 (= c!1202924 (is-ElementMatch!16422 lt!2401649))))

(declare-fun e!3965296 () Bool)

(assert (=> b!6549283 (= e!3965297 e!3965296)))

(declare-fun bm!569614 () Bool)

(declare-fun call!569619 () Bool)

(assert (=> bm!569614 (= call!569619 (isEmpty!37671 s!2326))))

(declare-fun b!6549284 () Bool)

(declare-fun c!1202921 () Bool)

(assert (=> b!6549284 (= c!1202921 (is-Union!16422 lt!2401649))))

(assert (=> b!6549284 (= e!3965296 e!3965294)))

(declare-fun b!6549285 () Bool)

(assert (=> b!6549285 (= e!3965300 call!569619)))

(declare-fun d!2055589 () Bool)

(declare-fun c!1202923 () Bool)

(assert (=> d!2055589 (= c!1202923 (is-EmptyExpr!16422 lt!2401649))))

(assert (=> d!2055589 (= (matchRSpec!3523 lt!2401649 s!2326) e!3965300)))

(declare-fun b!6549286 () Bool)

(assert (=> b!6549286 (= e!3965299 (matchRSpec!3523 (regTwo!33357 lt!2401649) s!2326))))

(declare-fun b!6549287 () Bool)

(declare-fun res!2686838 () Bool)

(assert (=> b!6549287 (=> res!2686838 e!3965295)))

(assert (=> b!6549287 (= res!2686838 call!569619)))

(assert (=> b!6549287 (= e!3965298 e!3965295)))

(declare-fun b!6549288 () Bool)

(assert (=> b!6549288 (= e!3965296 (= s!2326 (Cons!65443 (c!1202881 lt!2401649) Nil!65443)))))

(assert (= (and d!2055589 c!1202923) b!6549285))

(assert (= (and d!2055589 (not c!1202923)) b!6549282))

(assert (= (and b!6549282 res!2686837) b!6549283))

(assert (= (and b!6549283 c!1202924) b!6549288))

(assert (= (and b!6549283 (not c!1202924)) b!6549284))

(assert (= (and b!6549284 c!1202921) b!6549280))

(assert (= (and b!6549284 (not c!1202921)) b!6549281))

(assert (= (and b!6549280 (not res!2686839)) b!6549286))

(assert (= (and b!6549281 c!1202922) b!6549287))

(assert (= (and b!6549281 (not c!1202922)) b!6549279))

(assert (= (and b!6549287 (not res!2686838)) b!6549278))

(assert (= (or b!6549278 b!6549279) bm!569613))

(assert (= (or b!6549285 b!6549287) bm!569614))

(declare-fun m!7331950 () Bool)

(assert (=> b!6549280 m!7331950))

(declare-fun m!7331952 () Bool)

(assert (=> bm!569613 m!7331952))

(declare-fun m!7331954 () Bool)

(assert (=> bm!569614 m!7331954))

(declare-fun m!7331956 () Bool)

(assert (=> b!6549286 m!7331956))

(assert (=> b!6549000 d!2055589))

(declare-fun b!6549317 () Bool)

(declare-fun res!2686858 () Bool)

(declare-fun e!3965320 () Bool)

(assert (=> b!6549317 (=> res!2686858 e!3965320)))

(assert (=> b!6549317 (= res!2686858 (not (is-ElementMatch!16422 lt!2401649)))))

(declare-fun e!3965316 () Bool)

(assert (=> b!6549317 (= e!3965316 e!3965320)))

(declare-fun bm!569617 () Bool)

(declare-fun call!569622 () Bool)

(assert (=> bm!569617 (= call!569622 (isEmpty!37671 s!2326))))

(declare-fun b!6549318 () Bool)

(declare-fun e!3965321 () Bool)

(assert (=> b!6549318 (= e!3965321 (not (= (head!13295 s!2326) (c!1202881 lt!2401649))))))

(declare-fun b!6549319 () Bool)

(declare-fun lt!2401868 () Bool)

(assert (=> b!6549319 (= e!3965316 (not lt!2401868))))

(declare-fun b!6549320 () Bool)

(declare-fun e!3965319 () Bool)

(assert (=> b!6549320 (= e!3965319 e!3965321)))

(declare-fun res!2686856 () Bool)

(assert (=> b!6549320 (=> res!2686856 e!3965321)))

(assert (=> b!6549320 (= res!2686856 call!569622)))

(declare-fun b!6549321 () Bool)

(declare-fun e!3965315 () Bool)

(assert (=> b!6549321 (= e!3965315 (= (head!13295 s!2326) (c!1202881 lt!2401649)))))

(declare-fun b!6549322 () Bool)

(assert (=> b!6549322 (= e!3965320 e!3965319)))

(declare-fun res!2686862 () Bool)

(assert (=> b!6549322 (=> (not res!2686862) (not e!3965319))))

(assert (=> b!6549322 (= res!2686862 (not lt!2401868))))

(declare-fun b!6549323 () Bool)

(declare-fun res!2686861 () Bool)

(assert (=> b!6549323 (=> res!2686861 e!3965321)))

(assert (=> b!6549323 (= res!2686861 (not (isEmpty!37671 (tail!12380 s!2326))))))

(declare-fun d!2055591 () Bool)

(declare-fun e!3965318 () Bool)

(assert (=> d!2055591 e!3965318))

(declare-fun c!1202931 () Bool)

(assert (=> d!2055591 (= c!1202931 (is-EmptyExpr!16422 lt!2401649))))

(declare-fun e!3965317 () Bool)

(assert (=> d!2055591 (= lt!2401868 e!3965317)))

(declare-fun c!1202933 () Bool)

(assert (=> d!2055591 (= c!1202933 (isEmpty!37671 s!2326))))

(assert (=> d!2055591 (validRegex!8158 lt!2401649)))

(assert (=> d!2055591 (= (matchR!8605 lt!2401649 s!2326) lt!2401868)))

(declare-fun b!6549324 () Bool)

(declare-fun res!2686857 () Bool)

(assert (=> b!6549324 (=> (not res!2686857) (not e!3965315))))

(assert (=> b!6549324 (= res!2686857 (isEmpty!37671 (tail!12380 s!2326)))))

(declare-fun b!6549325 () Bool)

(declare-fun derivativeStep!5106 (Regex!16422 C!33114) Regex!16422)

(assert (=> b!6549325 (= e!3965317 (matchR!8605 (derivativeStep!5106 lt!2401649 (head!13295 s!2326)) (tail!12380 s!2326)))))

(declare-fun b!6549326 () Bool)

(assert (=> b!6549326 (= e!3965318 e!3965316)))

(declare-fun c!1202932 () Bool)

(assert (=> b!6549326 (= c!1202932 (is-EmptyLang!16422 lt!2401649))))

(declare-fun b!6549327 () Bool)

(declare-fun res!2686859 () Bool)

(assert (=> b!6549327 (=> res!2686859 e!3965320)))

(assert (=> b!6549327 (= res!2686859 e!3965315)))

(declare-fun res!2686863 () Bool)

(assert (=> b!6549327 (=> (not res!2686863) (not e!3965315))))

(assert (=> b!6549327 (= res!2686863 lt!2401868)))

(declare-fun b!6549328 () Bool)

(assert (=> b!6549328 (= e!3965317 (nullable!6415 lt!2401649))))

(declare-fun b!6549329 () Bool)

(assert (=> b!6549329 (= e!3965318 (= lt!2401868 call!569622))))

(declare-fun b!6549330 () Bool)

(declare-fun res!2686860 () Bool)

(assert (=> b!6549330 (=> (not res!2686860) (not e!3965315))))

(assert (=> b!6549330 (= res!2686860 (not call!569622))))

(assert (= (and d!2055591 c!1202933) b!6549328))

(assert (= (and d!2055591 (not c!1202933)) b!6549325))

(assert (= (and d!2055591 c!1202931) b!6549329))

(assert (= (and d!2055591 (not c!1202931)) b!6549326))

(assert (= (and b!6549326 c!1202932) b!6549319))

(assert (= (and b!6549326 (not c!1202932)) b!6549317))

(assert (= (and b!6549317 (not res!2686858)) b!6549327))

(assert (= (and b!6549327 res!2686863) b!6549330))

(assert (= (and b!6549330 res!2686860) b!6549324))

(assert (= (and b!6549324 res!2686857) b!6549321))

(assert (= (and b!6549327 (not res!2686859)) b!6549322))

(assert (= (and b!6549322 res!2686862) b!6549320))

(assert (= (and b!6549320 (not res!2686856)) b!6549323))

(assert (= (and b!6549323 (not res!2686861)) b!6549318))

(assert (= (or b!6549329 b!6549320 b!6549330) bm!569617))

(assert (=> bm!569617 m!7331954))

(declare-fun m!7331958 () Bool)

(assert (=> b!6549328 m!7331958))

(declare-fun m!7331960 () Bool)

(assert (=> b!6549324 m!7331960))

(assert (=> b!6549324 m!7331960))

(declare-fun m!7331962 () Bool)

(assert (=> b!6549324 m!7331962))

(declare-fun m!7331964 () Bool)

(assert (=> b!6549325 m!7331964))

(assert (=> b!6549325 m!7331964))

(declare-fun m!7331966 () Bool)

(assert (=> b!6549325 m!7331966))

(assert (=> b!6549325 m!7331960))

(assert (=> b!6549325 m!7331966))

(assert (=> b!6549325 m!7331960))

(declare-fun m!7331968 () Bool)

(assert (=> b!6549325 m!7331968))

(assert (=> b!6549321 m!7331964))

(assert (=> d!2055591 m!7331954))

(declare-fun m!7331970 () Bool)

(assert (=> d!2055591 m!7331970))

(assert (=> b!6549323 m!7331960))

(assert (=> b!6549323 m!7331960))

(assert (=> b!6549323 m!7331962))

(assert (=> b!6549318 m!7331964))

(assert (=> b!6549000 d!2055591))

(declare-fun d!2055593 () Bool)

(assert (=> d!2055593 (= (matchR!8605 lt!2401649 s!2326) (matchRSpec!3523 lt!2401649 s!2326))))

(declare-fun lt!2401871 () Unit!159023)

(declare-fun choose!48706 (Regex!16422 List!65567) Unit!159023)

(assert (=> d!2055593 (= lt!2401871 (choose!48706 lt!2401649 s!2326))))

(assert (=> d!2055593 (validRegex!8158 lt!2401649)))

(assert (=> d!2055593 (= (mainMatchTheorem!3523 lt!2401649 s!2326) lt!2401871)))

(declare-fun bs!1672041 () Bool)

(assert (= bs!1672041 d!2055593))

(assert (=> bs!1672041 m!7331520))

(assert (=> bs!1672041 m!7331518))

(declare-fun m!7331972 () Bool)

(assert (=> bs!1672041 m!7331972))

(assert (=> bs!1672041 m!7331970))

(assert (=> b!6549000 d!2055593))

(declare-fun bs!1672042 () Bool)

(declare-fun d!2055595 () Bool)

(assert (= bs!1672042 (and d!2055595 b!6549022)))

(declare-fun lambda!363711 () Int)

(assert (=> bs!1672042 (= lambda!363711 lambda!363667)))

(declare-fun bs!1672043 () Bool)

(assert (= bs!1672043 (and d!2055595 b!6549279)))

(assert (=> bs!1672043 (not (= lambda!363711 lambda!363708))))

(declare-fun bs!1672044 () Bool)

(assert (= bs!1672044 (and d!2055595 b!6549278)))

(assert (=> bs!1672044 (not (= lambda!363711 lambda!363707))))

(declare-fun bs!1672045 () Bool)

(assert (= bs!1672045 (and d!2055595 b!6549019)))

(assert (=> bs!1672045 (not (= lambda!363711 lambda!363663))))

(assert (=> bs!1672045 (= (= lt!2401627 (regOne!33356 r!7292)) (= lambda!363711 lambda!363662))))

(assert (=> d!2055595 true))

(assert (=> d!2055595 true))

(assert (=> d!2055595 true))

(assert (=> d!2055595 (= (isDefined!13016 (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)) (Exists!3492 lambda!363711))))

(declare-fun lt!2401874 () Unit!159023)

(declare-fun choose!48707 (Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> d!2055595 (= lt!2401874 (choose!48707 lt!2401627 (regTwo!33356 r!7292) s!2326))))

(assert (=> d!2055595 (validRegex!8158 lt!2401627)))

(assert (=> d!2055595 (= (lemmaFindConcatSeparationEquivalentToExists!2491 lt!2401627 (regTwo!33356 r!7292) s!2326) lt!2401874)))

(declare-fun bs!1672046 () Bool)

(assert (= bs!1672046 d!2055595))

(declare-fun m!7331974 () Bool)

(assert (=> bs!1672046 m!7331974))

(assert (=> bs!1672046 m!7331574))

(assert (=> bs!1672046 m!7331574))

(assert (=> bs!1672046 m!7331576))

(assert (=> bs!1672046 m!7331596))

(declare-fun m!7331976 () Bool)

(assert (=> bs!1672046 m!7331976))

(assert (=> b!6549022 d!2055595))

(declare-fun bm!569624 () Bool)

(declare-fun call!569629 () Bool)

(declare-fun c!1202939 () Bool)

(assert (=> bm!569624 (= call!569629 (validRegex!8158 (ite c!1202939 (regTwo!33357 lt!2401627) (regTwo!33356 lt!2401627))))))

(declare-fun b!6549354 () Bool)

(declare-fun e!3965342 () Bool)

(declare-fun e!3965344 () Bool)

(assert (=> b!6549354 (= e!3965342 e!3965344)))

(declare-fun res!2686878 () Bool)

(assert (=> b!6549354 (=> (not res!2686878) (not e!3965344))))

(declare-fun call!569630 () Bool)

(assert (=> b!6549354 (= res!2686878 call!569630)))

(declare-fun b!6549355 () Bool)

(declare-fun res!2686879 () Bool)

(assert (=> b!6549355 (=> res!2686879 e!3965342)))

(assert (=> b!6549355 (= res!2686879 (not (is-Concat!25267 lt!2401627)))))

(declare-fun e!3965338 () Bool)

(assert (=> b!6549355 (= e!3965338 e!3965342)))

(declare-fun bm!569625 () Bool)

(declare-fun call!569631 () Bool)

(assert (=> bm!569625 (= call!569630 call!569631)))

(declare-fun b!6549356 () Bool)

(declare-fun e!3965341 () Bool)

(assert (=> b!6549356 (= e!3965341 call!569631)))

(declare-fun b!6549357 () Bool)

(declare-fun e!3965339 () Bool)

(assert (=> b!6549357 (= e!3965339 e!3965338)))

(assert (=> b!6549357 (= c!1202939 (is-Union!16422 lt!2401627))))

(declare-fun b!6549358 () Bool)

(declare-fun res!2686880 () Bool)

(declare-fun e!3965340 () Bool)

(assert (=> b!6549358 (=> (not res!2686880) (not e!3965340))))

(assert (=> b!6549358 (= res!2686880 call!569630)))

(assert (=> b!6549358 (= e!3965338 e!3965340)))

(declare-fun bm!569626 () Bool)

(declare-fun c!1202938 () Bool)

(assert (=> bm!569626 (= call!569631 (validRegex!8158 (ite c!1202938 (reg!16751 lt!2401627) (ite c!1202939 (regOne!33357 lt!2401627) (regOne!33356 lt!2401627)))))))

(declare-fun b!6549359 () Bool)

(declare-fun e!3965343 () Bool)

(assert (=> b!6549359 (= e!3965343 e!3965339)))

(assert (=> b!6549359 (= c!1202938 (is-Star!16422 lt!2401627))))

(declare-fun b!6549360 () Bool)

(assert (=> b!6549360 (= e!3965340 call!569629)))

(declare-fun b!6549361 () Bool)

(assert (=> b!6549361 (= e!3965339 e!3965341)))

(declare-fun res!2686882 () Bool)

(assert (=> b!6549361 (= res!2686882 (not (nullable!6415 (reg!16751 lt!2401627))))))

(assert (=> b!6549361 (=> (not res!2686882) (not e!3965341))))

(declare-fun d!2055597 () Bool)

(declare-fun res!2686881 () Bool)

(assert (=> d!2055597 (=> res!2686881 e!3965343)))

(assert (=> d!2055597 (= res!2686881 (is-ElementMatch!16422 lt!2401627))))

(assert (=> d!2055597 (= (validRegex!8158 lt!2401627) e!3965343)))

(declare-fun b!6549353 () Bool)

(assert (=> b!6549353 (= e!3965344 call!569629)))

(assert (= (and d!2055597 (not res!2686881)) b!6549359))

(assert (= (and b!6549359 c!1202938) b!6549361))

(assert (= (and b!6549359 (not c!1202938)) b!6549357))

(assert (= (and b!6549361 res!2686882) b!6549356))

(assert (= (and b!6549357 c!1202939) b!6549358))

(assert (= (and b!6549357 (not c!1202939)) b!6549355))

(assert (= (and b!6549358 res!2686880) b!6549360))

(assert (= (and b!6549355 (not res!2686879)) b!6549354))

(assert (= (and b!6549354 res!2686878) b!6549353))

(assert (= (or b!6549360 b!6549353) bm!569624))

(assert (= (or b!6549358 b!6549354) bm!569625))

(assert (= (or b!6549356 bm!569625) bm!569626))

(declare-fun m!7331978 () Bool)

(assert (=> bm!569624 m!7331978))

(declare-fun m!7331980 () Bool)

(assert (=> bm!569626 m!7331980))

(declare-fun m!7331982 () Bool)

(assert (=> b!6549361 m!7331982))

(assert (=> b!6549022 d!2055597))

(declare-fun d!2055599 () Bool)

(declare-fun e!3965359 () Bool)

(assert (=> d!2055599 e!3965359))

(declare-fun res!2686893 () Bool)

(assert (=> d!2055599 (=> res!2686893 e!3965359)))

(declare-fun e!3965358 () Bool)

(assert (=> d!2055599 (= res!2686893 e!3965358)))

(declare-fun res!2686897 () Bool)

(assert (=> d!2055599 (=> (not res!2686897) (not e!3965358))))

(declare-fun lt!2401881 () Option!16313)

(assert (=> d!2055599 (= res!2686897 (isDefined!13016 lt!2401881))))

(declare-fun e!3965355 () Option!16313)

(assert (=> d!2055599 (= lt!2401881 e!3965355)))

(declare-fun c!1202944 () Bool)

(declare-fun e!3965356 () Bool)

(assert (=> d!2055599 (= c!1202944 e!3965356)))

(declare-fun res!2686895 () Bool)

(assert (=> d!2055599 (=> (not res!2686895) (not e!3965356))))

(assert (=> d!2055599 (= res!2686895 (matchR!8605 lt!2401627 Nil!65443))))

(assert (=> d!2055599 (validRegex!8158 lt!2401627)))

(assert (=> d!2055599 (= (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326) lt!2401881)))

(declare-fun b!6549380 () Bool)

(assert (=> b!6549380 (= e!3965358 (= (++!14546 (_1!36704 (get!22715 lt!2401881)) (_2!36704 (get!22715 lt!2401881))) s!2326))))

(declare-fun b!6549381 () Bool)

(declare-fun lt!2401883 () Unit!159023)

(declare-fun lt!2401882 () Unit!159023)

(assert (=> b!6549381 (= lt!2401883 lt!2401882)))

(assert (=> b!6549381 (= (++!14546 (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2565 (List!65567 C!33114 List!65567 List!65567) Unit!159023)

(assert (=> b!6549381 (= lt!2401882 (lemmaMoveElementToOtherListKeepsConcatEq!2565 Nil!65443 (h!71891 s!2326) (t!379209 s!2326) s!2326))))

(declare-fun e!3965357 () Option!16313)

(assert (=> b!6549381 (= e!3965357 (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326) s!2326))))

(declare-fun b!6549382 () Bool)

(assert (=> b!6549382 (= e!3965359 (not (isDefined!13016 lt!2401881)))))

(declare-fun b!6549383 () Bool)

(assert (=> b!6549383 (= e!3965357 None!16312)))

(declare-fun b!6549384 () Bool)

(assert (=> b!6549384 (= e!3965355 e!3965357)))

(declare-fun c!1202945 () Bool)

(assert (=> b!6549384 (= c!1202945 (is-Nil!65443 s!2326))))

(declare-fun b!6549385 () Bool)

(assert (=> b!6549385 (= e!3965355 (Some!16312 (tuple2!66803 Nil!65443 s!2326)))))

(declare-fun b!6549386 () Bool)

(declare-fun res!2686894 () Bool)

(assert (=> b!6549386 (=> (not res!2686894) (not e!3965358))))

(assert (=> b!6549386 (= res!2686894 (matchR!8605 lt!2401627 (_1!36704 (get!22715 lt!2401881))))))

(declare-fun b!6549387 () Bool)

(assert (=> b!6549387 (= e!3965356 (matchR!8605 (regTwo!33356 r!7292) s!2326))))

(declare-fun b!6549388 () Bool)

(declare-fun res!2686896 () Bool)

(assert (=> b!6549388 (=> (not res!2686896) (not e!3965358))))

(assert (=> b!6549388 (= res!2686896 (matchR!8605 (regTwo!33356 r!7292) (_2!36704 (get!22715 lt!2401881))))))

(assert (= (and d!2055599 res!2686895) b!6549387))

(assert (= (and d!2055599 c!1202944) b!6549385))

(assert (= (and d!2055599 (not c!1202944)) b!6549384))

(assert (= (and b!6549384 c!1202945) b!6549383))

(assert (= (and b!6549384 (not c!1202945)) b!6549381))

(assert (= (and d!2055599 res!2686897) b!6549386))

(assert (= (and b!6549386 res!2686894) b!6549388))

(assert (= (and b!6549388 res!2686896) b!6549380))

(assert (= (and d!2055599 (not res!2686893)) b!6549382))

(declare-fun m!7331984 () Bool)

(assert (=> b!6549387 m!7331984))

(declare-fun m!7331986 () Bool)

(assert (=> b!6549386 m!7331986))

(declare-fun m!7331988 () Bool)

(assert (=> b!6549386 m!7331988))

(declare-fun m!7331990 () Bool)

(assert (=> b!6549382 m!7331990))

(assert (=> b!6549380 m!7331986))

(declare-fun m!7331992 () Bool)

(assert (=> b!6549380 m!7331992))

(assert (=> b!6549388 m!7331986))

(declare-fun m!7331994 () Bool)

(assert (=> b!6549388 m!7331994))

(assert (=> d!2055599 m!7331990))

(declare-fun m!7331996 () Bool)

(assert (=> d!2055599 m!7331996))

(assert (=> d!2055599 m!7331596))

(declare-fun m!7331998 () Bool)

(assert (=> b!6549381 m!7331998))

(assert (=> b!6549381 m!7331998))

(declare-fun m!7332000 () Bool)

(assert (=> b!6549381 m!7332000))

(declare-fun m!7332002 () Bool)

(assert (=> b!6549381 m!7332002))

(assert (=> b!6549381 m!7331998))

(declare-fun m!7332004 () Bool)

(assert (=> b!6549381 m!7332004))

(assert (=> b!6549022 d!2055599))

(declare-fun d!2055601 () Bool)

(declare-fun choose!48708 (Int) Bool)

(assert (=> d!2055601 (= (Exists!3492 lambda!363667) (choose!48708 lambda!363667))))

(declare-fun bs!1672047 () Bool)

(assert (= bs!1672047 d!2055601))

(declare-fun m!7332006 () Bool)

(assert (=> bs!1672047 m!7332006))

(assert (=> b!6549022 d!2055601))

(declare-fun d!2055603 () Bool)

(declare-fun c!1202946 () Bool)

(assert (=> d!2055603 (= c!1202946 (isEmpty!37671 lt!2401674))))

(declare-fun e!3965360 () Bool)

(assert (=> d!2055603 (= (matchZipper!2434 (set.insert (Context!11613 (++!14547 lt!2401622 lt!2401657)) (as set.empty (Set Context!11612))) lt!2401674) e!3965360)))

(declare-fun b!6549389 () Bool)

(assert (=> b!6549389 (= e!3965360 (nullableZipper!2167 (set.insert (Context!11613 (++!14547 lt!2401622 lt!2401657)) (as set.empty (Set Context!11612)))))))

(declare-fun b!6549390 () Bool)

(assert (=> b!6549390 (= e!3965360 (matchZipper!2434 (derivationStepZipper!2388 (set.insert (Context!11613 (++!14547 lt!2401622 lt!2401657)) (as set.empty (Set Context!11612))) (head!13295 lt!2401674)) (tail!12380 lt!2401674)))))

(assert (= (and d!2055603 c!1202946) b!6549389))

(assert (= (and d!2055603 (not c!1202946)) b!6549390))

(declare-fun m!7332008 () Bool)

(assert (=> d!2055603 m!7332008))

(assert (=> b!6549389 m!7331570))

(declare-fun m!7332010 () Bool)

(assert (=> b!6549389 m!7332010))

(declare-fun m!7332012 () Bool)

(assert (=> b!6549390 m!7332012))

(assert (=> b!6549390 m!7331570))

(assert (=> b!6549390 m!7332012))

(declare-fun m!7332014 () Bool)

(assert (=> b!6549390 m!7332014))

(declare-fun m!7332016 () Bool)

(assert (=> b!6549390 m!7332016))

(assert (=> b!6549390 m!7332014))

(assert (=> b!6549390 m!7332016))

(declare-fun m!7332018 () Bool)

(assert (=> b!6549390 m!7332018))

(assert (=> b!6549022 d!2055603))

(declare-fun b!6549391 () Bool)

(declare-fun res!2686900 () Bool)

(declare-fun e!3965366 () Bool)

(assert (=> b!6549391 (=> res!2686900 e!3965366)))

(assert (=> b!6549391 (= res!2686900 (not (is-ElementMatch!16422 lt!2401667)))))

(declare-fun e!3965362 () Bool)

(assert (=> b!6549391 (= e!3965362 e!3965366)))

(declare-fun bm!569627 () Bool)

(declare-fun call!569632 () Bool)

(assert (=> bm!569627 (= call!569632 (isEmpty!37671 s!2326))))

(declare-fun b!6549392 () Bool)

(declare-fun e!3965367 () Bool)

(assert (=> b!6549392 (= e!3965367 (not (= (head!13295 s!2326) (c!1202881 lt!2401667))))))

(declare-fun b!6549393 () Bool)

(declare-fun lt!2401884 () Bool)

(assert (=> b!6549393 (= e!3965362 (not lt!2401884))))

(declare-fun b!6549394 () Bool)

(declare-fun e!3965365 () Bool)

(assert (=> b!6549394 (= e!3965365 e!3965367)))

(declare-fun res!2686898 () Bool)

(assert (=> b!6549394 (=> res!2686898 e!3965367)))

(assert (=> b!6549394 (= res!2686898 call!569632)))

(declare-fun b!6549395 () Bool)

(declare-fun e!3965361 () Bool)

(assert (=> b!6549395 (= e!3965361 (= (head!13295 s!2326) (c!1202881 lt!2401667)))))

(declare-fun b!6549396 () Bool)

(assert (=> b!6549396 (= e!3965366 e!3965365)))

(declare-fun res!2686904 () Bool)

(assert (=> b!6549396 (=> (not res!2686904) (not e!3965365))))

(assert (=> b!6549396 (= res!2686904 (not lt!2401884))))

(declare-fun b!6549397 () Bool)

(declare-fun res!2686903 () Bool)

(assert (=> b!6549397 (=> res!2686903 e!3965367)))

(assert (=> b!6549397 (= res!2686903 (not (isEmpty!37671 (tail!12380 s!2326))))))

(declare-fun d!2055605 () Bool)

(declare-fun e!3965364 () Bool)

(assert (=> d!2055605 e!3965364))

(declare-fun c!1202947 () Bool)

(assert (=> d!2055605 (= c!1202947 (is-EmptyExpr!16422 lt!2401667))))

(declare-fun e!3965363 () Bool)

(assert (=> d!2055605 (= lt!2401884 e!3965363)))

(declare-fun c!1202949 () Bool)

(assert (=> d!2055605 (= c!1202949 (isEmpty!37671 s!2326))))

(assert (=> d!2055605 (validRegex!8158 lt!2401667)))

(assert (=> d!2055605 (= (matchR!8605 lt!2401667 s!2326) lt!2401884)))

(declare-fun b!6549398 () Bool)

(declare-fun res!2686899 () Bool)

(assert (=> b!6549398 (=> (not res!2686899) (not e!3965361))))

(assert (=> b!6549398 (= res!2686899 (isEmpty!37671 (tail!12380 s!2326)))))

(declare-fun b!6549399 () Bool)

(assert (=> b!6549399 (= e!3965363 (matchR!8605 (derivativeStep!5106 lt!2401667 (head!13295 s!2326)) (tail!12380 s!2326)))))

(declare-fun b!6549400 () Bool)

(assert (=> b!6549400 (= e!3965364 e!3965362)))

(declare-fun c!1202948 () Bool)

(assert (=> b!6549400 (= c!1202948 (is-EmptyLang!16422 lt!2401667))))

(declare-fun b!6549401 () Bool)

(declare-fun res!2686901 () Bool)

(assert (=> b!6549401 (=> res!2686901 e!3965366)))

(assert (=> b!6549401 (= res!2686901 e!3965361)))

(declare-fun res!2686905 () Bool)

(assert (=> b!6549401 (=> (not res!2686905) (not e!3965361))))

(assert (=> b!6549401 (= res!2686905 lt!2401884)))

(declare-fun b!6549402 () Bool)

(assert (=> b!6549402 (= e!3965363 (nullable!6415 lt!2401667))))

(declare-fun b!6549403 () Bool)

(assert (=> b!6549403 (= e!3965364 (= lt!2401884 call!569632))))

(declare-fun b!6549404 () Bool)

(declare-fun res!2686902 () Bool)

(assert (=> b!6549404 (=> (not res!2686902) (not e!3965361))))

(assert (=> b!6549404 (= res!2686902 (not call!569632))))

(assert (= (and d!2055605 c!1202949) b!6549402))

(assert (= (and d!2055605 (not c!1202949)) b!6549399))

(assert (= (and d!2055605 c!1202947) b!6549403))

(assert (= (and d!2055605 (not c!1202947)) b!6549400))

(assert (= (and b!6549400 c!1202948) b!6549393))

(assert (= (and b!6549400 (not c!1202948)) b!6549391))

(assert (= (and b!6549391 (not res!2686900)) b!6549401))

(assert (= (and b!6549401 res!2686905) b!6549404))

(assert (= (and b!6549404 res!2686902) b!6549398))

(assert (= (and b!6549398 res!2686899) b!6549395))

(assert (= (and b!6549401 (not res!2686901)) b!6549396))

(assert (= (and b!6549396 res!2686904) b!6549394))

(assert (= (and b!6549394 (not res!2686898)) b!6549397))

(assert (= (and b!6549397 (not res!2686903)) b!6549392))

(assert (= (or b!6549403 b!6549394 b!6549404) bm!569627))

(assert (=> bm!569627 m!7331954))

(declare-fun m!7332020 () Bool)

(assert (=> b!6549402 m!7332020))

(assert (=> b!6549398 m!7331960))

(assert (=> b!6549398 m!7331960))

(assert (=> b!6549398 m!7331962))

(assert (=> b!6549399 m!7331964))

(assert (=> b!6549399 m!7331964))

(declare-fun m!7332022 () Bool)

(assert (=> b!6549399 m!7332022))

(assert (=> b!6549399 m!7331960))

(assert (=> b!6549399 m!7332022))

(assert (=> b!6549399 m!7331960))

(declare-fun m!7332024 () Bool)

(assert (=> b!6549399 m!7332024))

(assert (=> b!6549395 m!7331964))

(assert (=> d!2055605 m!7331954))

(declare-fun m!7332026 () Bool)

(assert (=> d!2055605 m!7332026))

(assert (=> b!6549397 m!7331960))

(assert (=> b!6549397 m!7331960))

(assert (=> b!6549397 m!7331962))

(assert (=> b!6549392 m!7331964))

(assert (=> b!6549022 d!2055605))

(assert (=> b!6549022 d!2055581))

(declare-fun d!2055607 () Bool)

(assert (=> d!2055607 (= (matchR!8605 lt!2401667 s!2326) (matchRSpec!3523 lt!2401667 s!2326))))

(declare-fun lt!2401885 () Unit!159023)

(assert (=> d!2055607 (= lt!2401885 (choose!48706 lt!2401667 s!2326))))

(assert (=> d!2055607 (validRegex!8158 lt!2401667)))

(assert (=> d!2055607 (= (mainMatchTheorem!3523 lt!2401667 s!2326) lt!2401885)))

(declare-fun bs!1672048 () Bool)

(assert (= bs!1672048 d!2055607))

(assert (=> bs!1672048 m!7331588))

(assert (=> bs!1672048 m!7331592))

(declare-fun m!7332028 () Bool)

(assert (=> bs!1672048 m!7332028))

(assert (=> bs!1672048 m!7332026))

(assert (=> b!6549022 d!2055607))

(declare-fun d!2055609 () Bool)

(declare-fun isEmpty!37672 (Option!16313) Bool)

(assert (=> d!2055609 (= (isDefined!13016 (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)) (not (isEmpty!37672 (findConcatSeparation!2727 lt!2401627 (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326))))))

(declare-fun bs!1672049 () Bool)

(assert (= bs!1672049 d!2055609))

(assert (=> bs!1672049 m!7331574))

(declare-fun m!7332030 () Bool)

(assert (=> bs!1672049 m!7332030))

(assert (=> b!6549022 d!2055609))

(assert (=> b!6549022 d!2055575))

(declare-fun d!2055611 () Bool)

(assert (=> d!2055611 (= (matchR!8605 lt!2401653 (_2!36704 lt!2401672)) (matchZipper!2434 lt!2401654 (_2!36704 lt!2401672)))))

(declare-fun lt!2401888 () Unit!159023)

(declare-fun choose!48709 ((Set Context!11612) List!65566 Regex!16422 List!65567) Unit!159023)

(assert (=> d!2055611 (= lt!2401888 (choose!48709 lt!2401654 lt!2401625 lt!2401653 (_2!36704 lt!2401672)))))

(assert (=> d!2055611 (validRegex!8158 lt!2401653)))

(assert (=> d!2055611 (= (theoremZipperRegexEquiv!858 lt!2401654 lt!2401625 lt!2401653 (_2!36704 lt!2401672)) lt!2401888)))

(declare-fun bs!1672050 () Bool)

(assert (= bs!1672050 d!2055611))

(assert (=> bs!1672050 m!7331566))

(assert (=> bs!1672050 m!7331512))

(declare-fun m!7332032 () Bool)

(assert (=> bs!1672050 m!7332032))

(declare-fun m!7332034 () Bool)

(assert (=> bs!1672050 m!7332034))

(assert (=> b!6549022 d!2055611))

(declare-fun d!2055613 () Bool)

(assert (=> d!2055613 (matchR!8605 (Concat!25267 (reg!16751 (regOne!33356 r!7292)) lt!2401653) (++!14546 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(declare-fun lt!2401891 () Unit!159023)

(declare-fun choose!48710 (Regex!16422 Regex!16422 List!65567 List!65567) Unit!159023)

(assert (=> d!2055613 (= lt!2401891 (choose!48710 (reg!16751 (regOne!33356 r!7292)) lt!2401653 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(declare-fun e!3965370 () Bool)

(assert (=> d!2055613 e!3965370))

(declare-fun res!2686909 () Bool)

(assert (=> d!2055613 (=> (not res!2686909) (not e!3965370))))

(assert (=> d!2055613 (= res!2686909 (validRegex!8158 (reg!16751 (regOne!33356 r!7292))))))

(assert (=> d!2055613 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!343 (reg!16751 (regOne!33356 r!7292)) lt!2401653 (_1!36704 lt!2401672) (_2!36704 lt!2401672)) lt!2401891)))

(declare-fun b!6549407 () Bool)

(assert (=> b!6549407 (= e!3965370 (validRegex!8158 lt!2401653))))

(assert (= (and d!2055613 res!2686909) b!6549407))

(assert (=> d!2055613 m!7331656))

(assert (=> d!2055613 m!7331656))

(declare-fun m!7332036 () Bool)

(assert (=> d!2055613 m!7332036))

(declare-fun m!7332038 () Bool)

(assert (=> d!2055613 m!7332038))

(declare-fun m!7332040 () Bool)

(assert (=> d!2055613 m!7332040))

(assert (=> b!6549407 m!7332034))

(assert (=> b!6549022 d!2055613))

(declare-fun d!2055615 () Bool)

(assert (=> d!2055615 (= (matchR!8605 (Concat!25267 (Concat!25267 (reg!16751 (regOne!33356 r!7292)) lt!2401633) (regTwo!33356 r!7292)) s!2326) (matchR!8605 (Concat!25267 (reg!16751 (regOne!33356 r!7292)) (Concat!25267 lt!2401633 (regTwo!33356 r!7292))) s!2326))))

(declare-fun lt!2401894 () Unit!159023)

(declare-fun choose!48711 (Regex!16422 Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> d!2055615 (= lt!2401894 (choose!48711 (reg!16751 (regOne!33356 r!7292)) lt!2401633 (regTwo!33356 r!7292) s!2326))))

(declare-fun e!3965373 () Bool)

(assert (=> d!2055615 e!3965373))

(declare-fun res!2686914 () Bool)

(assert (=> d!2055615 (=> (not res!2686914) (not e!3965373))))

(assert (=> d!2055615 (= res!2686914 (validRegex!8158 (reg!16751 (regOne!33356 r!7292))))))

(assert (=> d!2055615 (= (lemmaConcatAssociative!119 (reg!16751 (regOne!33356 r!7292)) lt!2401633 (regTwo!33356 r!7292) s!2326) lt!2401894)))

(declare-fun b!6549412 () Bool)

(declare-fun res!2686915 () Bool)

(assert (=> b!6549412 (=> (not res!2686915) (not e!3965373))))

(assert (=> b!6549412 (= res!2686915 (validRegex!8158 lt!2401633))))

(declare-fun b!6549413 () Bool)

(assert (=> b!6549413 (= e!3965373 (validRegex!8158 (regTwo!33356 r!7292)))))

(assert (= (and d!2055615 res!2686914) b!6549412))

(assert (= (and b!6549412 res!2686915) b!6549413))

(declare-fun m!7332042 () Bool)

(assert (=> d!2055615 m!7332042))

(declare-fun m!7332044 () Bool)

(assert (=> d!2055615 m!7332044))

(declare-fun m!7332046 () Bool)

(assert (=> d!2055615 m!7332046))

(assert (=> d!2055615 m!7332040))

(declare-fun m!7332048 () Bool)

(assert (=> b!6549412 m!7332048))

(declare-fun m!7332050 () Bool)

(assert (=> b!6549413 m!7332050))

(assert (=> b!6549022 d!2055615))

(declare-fun bs!1672051 () Bool)

(declare-fun b!6549414 () Bool)

(assert (= bs!1672051 (and b!6549414 b!6549022)))

(declare-fun lambda!363712 () Int)

(assert (=> bs!1672051 (not (= lambda!363712 lambda!363667))))

(declare-fun bs!1672052 () Bool)

(assert (= bs!1672052 (and b!6549414 b!6549279)))

(assert (=> bs!1672052 (not (= lambda!363712 lambda!363708))))

(declare-fun bs!1672053 () Bool)

(assert (= bs!1672053 (and b!6549414 b!6549278)))

(assert (=> bs!1672053 (= (and (= (reg!16751 lt!2401667) (reg!16751 lt!2401649)) (= lt!2401667 lt!2401649)) (= lambda!363712 lambda!363707))))

(declare-fun bs!1672054 () Bool)

(assert (= bs!1672054 (and b!6549414 d!2055595)))

(assert (=> bs!1672054 (not (= lambda!363712 lambda!363711))))

(declare-fun bs!1672055 () Bool)

(assert (= bs!1672055 (and b!6549414 b!6549019)))

(assert (=> bs!1672055 (not (= lambda!363712 lambda!363663))))

(assert (=> bs!1672055 (not (= lambda!363712 lambda!363662))))

(assert (=> b!6549414 true))

(assert (=> b!6549414 true))

(declare-fun bs!1672056 () Bool)

(declare-fun b!6549415 () Bool)

(assert (= bs!1672056 (and b!6549415 b!6549022)))

(declare-fun lambda!363713 () Int)

(assert (=> bs!1672056 (not (= lambda!363713 lambda!363667))))

(declare-fun bs!1672057 () Bool)

(assert (= bs!1672057 (and b!6549415 b!6549279)))

(assert (=> bs!1672057 (= (and (= (regOne!33356 lt!2401667) (regOne!33356 lt!2401649)) (= (regTwo!33356 lt!2401667) (regTwo!33356 lt!2401649))) (= lambda!363713 lambda!363708))))

(declare-fun bs!1672058 () Bool)

(assert (= bs!1672058 (and b!6549415 b!6549278)))

(assert (=> bs!1672058 (not (= lambda!363713 lambda!363707))))

(declare-fun bs!1672059 () Bool)

(assert (= bs!1672059 (and b!6549415 d!2055595)))

(assert (=> bs!1672059 (not (= lambda!363713 lambda!363711))))

(declare-fun bs!1672060 () Bool)

(assert (= bs!1672060 (and b!6549415 b!6549414)))

(assert (=> bs!1672060 (not (= lambda!363713 lambda!363712))))

(declare-fun bs!1672061 () Bool)

(assert (= bs!1672061 (and b!6549415 b!6549019)))

(assert (=> bs!1672061 (= (and (= (regOne!33356 lt!2401667) (regOne!33356 r!7292)) (= (regTwo!33356 lt!2401667) (regTwo!33356 r!7292))) (= lambda!363713 lambda!363663))))

(assert (=> bs!1672061 (not (= lambda!363713 lambda!363662))))

(assert (=> b!6549415 true))

(assert (=> b!6549415 true))

(declare-fun e!3965375 () Bool)

(declare-fun call!569633 () Bool)

(assert (=> b!6549414 (= e!3965375 call!569633)))

(declare-fun e!3965378 () Bool)

(assert (=> b!6549415 (= e!3965378 call!569633)))

(declare-fun b!6549416 () Bool)

(declare-fun e!3965374 () Bool)

(declare-fun e!3965379 () Bool)

(assert (=> b!6549416 (= e!3965374 e!3965379)))

(declare-fun res!2686918 () Bool)

(assert (=> b!6549416 (= res!2686918 (matchRSpec!3523 (regOne!33357 lt!2401667) s!2326))))

(assert (=> b!6549416 (=> res!2686918 e!3965379)))

(declare-fun b!6549417 () Bool)

(assert (=> b!6549417 (= e!3965374 e!3965378)))

(declare-fun c!1202951 () Bool)

(assert (=> b!6549417 (= c!1202951 (is-Star!16422 lt!2401667))))

(declare-fun b!6549418 () Bool)

(declare-fun e!3965380 () Bool)

(declare-fun e!3965377 () Bool)

(assert (=> b!6549418 (= e!3965380 e!3965377)))

(declare-fun res!2686916 () Bool)

(assert (=> b!6549418 (= res!2686916 (not (is-EmptyLang!16422 lt!2401667)))))

(assert (=> b!6549418 (=> (not res!2686916) (not e!3965377))))

(declare-fun bm!569628 () Bool)

(assert (=> bm!569628 (= call!569633 (Exists!3492 (ite c!1202951 lambda!363712 lambda!363713)))))

(declare-fun b!6549419 () Bool)

(declare-fun c!1202953 () Bool)

(assert (=> b!6549419 (= c!1202953 (is-ElementMatch!16422 lt!2401667))))

(declare-fun e!3965376 () Bool)

(assert (=> b!6549419 (= e!3965377 e!3965376)))

(declare-fun bm!569629 () Bool)

(declare-fun call!569634 () Bool)

(assert (=> bm!569629 (= call!569634 (isEmpty!37671 s!2326))))

(declare-fun b!6549420 () Bool)

(declare-fun c!1202950 () Bool)

(assert (=> b!6549420 (= c!1202950 (is-Union!16422 lt!2401667))))

(assert (=> b!6549420 (= e!3965376 e!3965374)))

(declare-fun b!6549421 () Bool)

(assert (=> b!6549421 (= e!3965380 call!569634)))

(declare-fun d!2055617 () Bool)

(declare-fun c!1202952 () Bool)

(assert (=> d!2055617 (= c!1202952 (is-EmptyExpr!16422 lt!2401667))))

(assert (=> d!2055617 (= (matchRSpec!3523 lt!2401667 s!2326) e!3965380)))

(declare-fun b!6549422 () Bool)

(assert (=> b!6549422 (= e!3965379 (matchRSpec!3523 (regTwo!33357 lt!2401667) s!2326))))

(declare-fun b!6549423 () Bool)

(declare-fun res!2686917 () Bool)

(assert (=> b!6549423 (=> res!2686917 e!3965375)))

(assert (=> b!6549423 (= res!2686917 call!569634)))

(assert (=> b!6549423 (= e!3965378 e!3965375)))

(declare-fun b!6549424 () Bool)

(assert (=> b!6549424 (= e!3965376 (= s!2326 (Cons!65443 (c!1202881 lt!2401667) Nil!65443)))))

(assert (= (and d!2055617 c!1202952) b!6549421))

(assert (= (and d!2055617 (not c!1202952)) b!6549418))

(assert (= (and b!6549418 res!2686916) b!6549419))

(assert (= (and b!6549419 c!1202953) b!6549424))

(assert (= (and b!6549419 (not c!1202953)) b!6549420))

(assert (= (and b!6549420 c!1202950) b!6549416))

(assert (= (and b!6549420 (not c!1202950)) b!6549417))

(assert (= (and b!6549416 (not res!2686918)) b!6549422))

(assert (= (and b!6549417 c!1202951) b!6549423))

(assert (= (and b!6549417 (not c!1202951)) b!6549415))

(assert (= (and b!6549423 (not res!2686917)) b!6549414))

(assert (= (or b!6549414 b!6549415) bm!569628))

(assert (= (or b!6549421 b!6549423) bm!569629))

(declare-fun m!7332052 () Bool)

(assert (=> b!6549416 m!7332052))

(declare-fun m!7332054 () Bool)

(assert (=> bm!569628 m!7332054))

(assert (=> bm!569629 m!7331954))

(declare-fun m!7332056 () Bool)

(assert (=> b!6549422 m!7332056))

(assert (=> b!6549022 d!2055617))

(declare-fun b!6549425 () Bool)

(declare-fun res!2686921 () Bool)

(declare-fun e!3965386 () Bool)

(assert (=> b!6549425 (=> res!2686921 e!3965386)))

(assert (=> b!6549425 (= res!2686921 (not (is-ElementMatch!16422 lt!2401649)))))

(declare-fun e!3965382 () Bool)

(assert (=> b!6549425 (= e!3965382 e!3965386)))

(declare-fun bm!569630 () Bool)

(declare-fun call!569635 () Bool)

(assert (=> bm!569630 (= call!569635 (isEmpty!37671 lt!2401674))))

(declare-fun b!6549426 () Bool)

(declare-fun e!3965387 () Bool)

(assert (=> b!6549426 (= e!3965387 (not (= (head!13295 lt!2401674) (c!1202881 lt!2401649))))))

(declare-fun b!6549427 () Bool)

(declare-fun lt!2401895 () Bool)

(assert (=> b!6549427 (= e!3965382 (not lt!2401895))))

(declare-fun b!6549428 () Bool)

(declare-fun e!3965385 () Bool)

(assert (=> b!6549428 (= e!3965385 e!3965387)))

(declare-fun res!2686919 () Bool)

(assert (=> b!6549428 (=> res!2686919 e!3965387)))

(assert (=> b!6549428 (= res!2686919 call!569635)))

(declare-fun b!6549429 () Bool)

(declare-fun e!3965381 () Bool)

(assert (=> b!6549429 (= e!3965381 (= (head!13295 lt!2401674) (c!1202881 lt!2401649)))))

(declare-fun b!6549430 () Bool)

(assert (=> b!6549430 (= e!3965386 e!3965385)))

(declare-fun res!2686925 () Bool)

(assert (=> b!6549430 (=> (not res!2686925) (not e!3965385))))

(assert (=> b!6549430 (= res!2686925 (not lt!2401895))))

(declare-fun b!6549431 () Bool)

(declare-fun res!2686924 () Bool)

(assert (=> b!6549431 (=> res!2686924 e!3965387)))

(assert (=> b!6549431 (= res!2686924 (not (isEmpty!37671 (tail!12380 lt!2401674))))))

(declare-fun d!2055619 () Bool)

(declare-fun e!3965384 () Bool)

(assert (=> d!2055619 e!3965384))

(declare-fun c!1202954 () Bool)

(assert (=> d!2055619 (= c!1202954 (is-EmptyExpr!16422 lt!2401649))))

(declare-fun e!3965383 () Bool)

(assert (=> d!2055619 (= lt!2401895 e!3965383)))

(declare-fun c!1202956 () Bool)

(assert (=> d!2055619 (= c!1202956 (isEmpty!37671 lt!2401674))))

(assert (=> d!2055619 (validRegex!8158 lt!2401649)))

(assert (=> d!2055619 (= (matchR!8605 lt!2401649 lt!2401674) lt!2401895)))

(declare-fun b!6549432 () Bool)

(declare-fun res!2686920 () Bool)

(assert (=> b!6549432 (=> (not res!2686920) (not e!3965381))))

(assert (=> b!6549432 (= res!2686920 (isEmpty!37671 (tail!12380 lt!2401674)))))

(declare-fun b!6549433 () Bool)

(assert (=> b!6549433 (= e!3965383 (matchR!8605 (derivativeStep!5106 lt!2401649 (head!13295 lt!2401674)) (tail!12380 lt!2401674)))))

(declare-fun b!6549434 () Bool)

(assert (=> b!6549434 (= e!3965384 e!3965382)))

(declare-fun c!1202955 () Bool)

(assert (=> b!6549434 (= c!1202955 (is-EmptyLang!16422 lt!2401649))))

(declare-fun b!6549435 () Bool)

(declare-fun res!2686922 () Bool)

(assert (=> b!6549435 (=> res!2686922 e!3965386)))

(assert (=> b!6549435 (= res!2686922 e!3965381)))

(declare-fun res!2686926 () Bool)

(assert (=> b!6549435 (=> (not res!2686926) (not e!3965381))))

(assert (=> b!6549435 (= res!2686926 lt!2401895)))

(declare-fun b!6549436 () Bool)

(assert (=> b!6549436 (= e!3965383 (nullable!6415 lt!2401649))))

(declare-fun b!6549437 () Bool)

(assert (=> b!6549437 (= e!3965384 (= lt!2401895 call!569635))))

(declare-fun b!6549438 () Bool)

(declare-fun res!2686923 () Bool)

(assert (=> b!6549438 (=> (not res!2686923) (not e!3965381))))

(assert (=> b!6549438 (= res!2686923 (not call!569635))))

(assert (= (and d!2055619 c!1202956) b!6549436))

(assert (= (and d!2055619 (not c!1202956)) b!6549433))

(assert (= (and d!2055619 c!1202954) b!6549437))

(assert (= (and d!2055619 (not c!1202954)) b!6549434))

(assert (= (and b!6549434 c!1202955) b!6549427))

(assert (= (and b!6549434 (not c!1202955)) b!6549425))

(assert (= (and b!6549425 (not res!2686921)) b!6549435))

(assert (= (and b!6549435 res!2686926) b!6549438))

(assert (= (and b!6549438 res!2686923) b!6549432))

(assert (= (and b!6549432 res!2686920) b!6549429))

(assert (= (and b!6549435 (not res!2686922)) b!6549430))

(assert (= (and b!6549430 res!2686925) b!6549428))

(assert (= (and b!6549428 (not res!2686919)) b!6549431))

(assert (= (and b!6549431 (not res!2686924)) b!6549426))

(assert (= (or b!6549437 b!6549428 b!6549438) bm!569630))

(assert (=> bm!569630 m!7332008))

(assert (=> b!6549436 m!7331958))

(assert (=> b!6549432 m!7332016))

(assert (=> b!6549432 m!7332016))

(declare-fun m!7332058 () Bool)

(assert (=> b!6549432 m!7332058))

(assert (=> b!6549433 m!7332012))

(assert (=> b!6549433 m!7332012))

(declare-fun m!7332060 () Bool)

(assert (=> b!6549433 m!7332060))

(assert (=> b!6549433 m!7332016))

(assert (=> b!6549433 m!7332060))

(assert (=> b!6549433 m!7332016))

(declare-fun m!7332062 () Bool)

(assert (=> b!6549433 m!7332062))

(assert (=> b!6549429 m!7332012))

(assert (=> d!2055619 m!7332008))

(assert (=> d!2055619 m!7331970))

(assert (=> b!6549431 m!7332016))

(assert (=> b!6549431 m!7332016))

(assert (=> b!6549431 m!7332058))

(assert (=> b!6549426 m!7332012))

(assert (=> b!6549022 d!2055619))

(declare-fun d!2055621 () Bool)

(assert (=> d!2055621 (= (matchR!8605 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672)) (matchZipper!2434 lt!2401626 (_1!36704 lt!2401672)))))

(declare-fun lt!2401896 () Unit!159023)

(assert (=> d!2055621 (= lt!2401896 (choose!48709 lt!2401626 lt!2401628 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672)))))

(assert (=> d!2055621 (validRegex!8158 (reg!16751 (regOne!33356 r!7292)))))

(assert (=> d!2055621 (= (theoremZipperRegexEquiv!858 lt!2401626 lt!2401628 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672)) lt!2401896)))

(declare-fun bs!1672062 () Bool)

(assert (= bs!1672062 d!2055621))

(assert (=> bs!1672062 m!7331560))

(assert (=> bs!1672062 m!7331540))

(declare-fun m!7332064 () Bool)

(assert (=> bs!1672062 m!7332064))

(assert (=> bs!1672062 m!7332040))

(assert (=> b!6549022 d!2055621))

(declare-fun b!6549439 () Bool)

(declare-fun res!2686929 () Bool)

(declare-fun e!3965393 () Bool)

(assert (=> b!6549439 (=> res!2686929 e!3965393)))

(assert (=> b!6549439 (= res!2686929 (not (is-ElementMatch!16422 lt!2401653)))))

(declare-fun e!3965389 () Bool)

(assert (=> b!6549439 (= e!3965389 e!3965393)))

(declare-fun bm!569631 () Bool)

(declare-fun call!569636 () Bool)

(assert (=> bm!569631 (= call!569636 (isEmpty!37671 (_2!36704 lt!2401672)))))

(declare-fun b!6549440 () Bool)

(declare-fun e!3965394 () Bool)

(assert (=> b!6549440 (= e!3965394 (not (= (head!13295 (_2!36704 lt!2401672)) (c!1202881 lt!2401653))))))

(declare-fun b!6549441 () Bool)

(declare-fun lt!2401897 () Bool)

(assert (=> b!6549441 (= e!3965389 (not lt!2401897))))

(declare-fun b!6549442 () Bool)

(declare-fun e!3965392 () Bool)

(assert (=> b!6549442 (= e!3965392 e!3965394)))

(declare-fun res!2686927 () Bool)

(assert (=> b!6549442 (=> res!2686927 e!3965394)))

(assert (=> b!6549442 (= res!2686927 call!569636)))

(declare-fun b!6549443 () Bool)

(declare-fun e!3965388 () Bool)

(assert (=> b!6549443 (= e!3965388 (= (head!13295 (_2!36704 lt!2401672)) (c!1202881 lt!2401653)))))

(declare-fun b!6549444 () Bool)

(assert (=> b!6549444 (= e!3965393 e!3965392)))

(declare-fun res!2686933 () Bool)

(assert (=> b!6549444 (=> (not res!2686933) (not e!3965392))))

(assert (=> b!6549444 (= res!2686933 (not lt!2401897))))

(declare-fun b!6549445 () Bool)

(declare-fun res!2686932 () Bool)

(assert (=> b!6549445 (=> res!2686932 e!3965394)))

(assert (=> b!6549445 (= res!2686932 (not (isEmpty!37671 (tail!12380 (_2!36704 lt!2401672)))))))

(declare-fun d!2055623 () Bool)

(declare-fun e!3965391 () Bool)

(assert (=> d!2055623 e!3965391))

(declare-fun c!1202957 () Bool)

(assert (=> d!2055623 (= c!1202957 (is-EmptyExpr!16422 lt!2401653))))

(declare-fun e!3965390 () Bool)

(assert (=> d!2055623 (= lt!2401897 e!3965390)))

(declare-fun c!1202959 () Bool)

(assert (=> d!2055623 (= c!1202959 (isEmpty!37671 (_2!36704 lt!2401672)))))

(assert (=> d!2055623 (validRegex!8158 lt!2401653)))

(assert (=> d!2055623 (= (matchR!8605 lt!2401653 (_2!36704 lt!2401672)) lt!2401897)))

(declare-fun b!6549446 () Bool)

(declare-fun res!2686928 () Bool)

(assert (=> b!6549446 (=> (not res!2686928) (not e!3965388))))

(assert (=> b!6549446 (= res!2686928 (isEmpty!37671 (tail!12380 (_2!36704 lt!2401672))))))

(declare-fun b!6549447 () Bool)

(assert (=> b!6549447 (= e!3965390 (matchR!8605 (derivativeStep!5106 lt!2401653 (head!13295 (_2!36704 lt!2401672))) (tail!12380 (_2!36704 lt!2401672))))))

(declare-fun b!6549448 () Bool)

(assert (=> b!6549448 (= e!3965391 e!3965389)))

(declare-fun c!1202958 () Bool)

(assert (=> b!6549448 (= c!1202958 (is-EmptyLang!16422 lt!2401653))))

(declare-fun b!6549449 () Bool)

(declare-fun res!2686930 () Bool)

(assert (=> b!6549449 (=> res!2686930 e!3965393)))

(assert (=> b!6549449 (= res!2686930 e!3965388)))

(declare-fun res!2686934 () Bool)

(assert (=> b!6549449 (=> (not res!2686934) (not e!3965388))))

(assert (=> b!6549449 (= res!2686934 lt!2401897)))

(declare-fun b!6549450 () Bool)

(assert (=> b!6549450 (= e!3965390 (nullable!6415 lt!2401653))))

(declare-fun b!6549451 () Bool)

(assert (=> b!6549451 (= e!3965391 (= lt!2401897 call!569636))))

(declare-fun b!6549452 () Bool)

(declare-fun res!2686931 () Bool)

(assert (=> b!6549452 (=> (not res!2686931) (not e!3965388))))

(assert (=> b!6549452 (= res!2686931 (not call!569636))))

(assert (= (and d!2055623 c!1202959) b!6549450))

(assert (= (and d!2055623 (not c!1202959)) b!6549447))

(assert (= (and d!2055623 c!1202957) b!6549451))

(assert (= (and d!2055623 (not c!1202957)) b!6549448))

(assert (= (and b!6549448 c!1202958) b!6549441))

(assert (= (and b!6549448 (not c!1202958)) b!6549439))

(assert (= (and b!6549439 (not res!2686929)) b!6549449))

(assert (= (and b!6549449 res!2686934) b!6549452))

(assert (= (and b!6549452 res!2686931) b!6549446))

(assert (= (and b!6549446 res!2686928) b!6549443))

(assert (= (and b!6549449 (not res!2686930)) b!6549444))

(assert (= (and b!6549444 res!2686933) b!6549442))

(assert (= (and b!6549442 (not res!2686927)) b!6549445))

(assert (= (and b!6549445 (not res!2686932)) b!6549440))

(assert (= (or b!6549451 b!6549442 b!6549452) bm!569631))

(assert (=> bm!569631 m!7331866))

(declare-fun m!7332066 () Bool)

(assert (=> b!6549450 m!7332066))

(assert (=> b!6549446 m!7331874))

(assert (=> b!6549446 m!7331874))

(declare-fun m!7332068 () Bool)

(assert (=> b!6549446 m!7332068))

(assert (=> b!6549447 m!7331870))

(assert (=> b!6549447 m!7331870))

(declare-fun m!7332070 () Bool)

(assert (=> b!6549447 m!7332070))

(assert (=> b!6549447 m!7331874))

(assert (=> b!6549447 m!7332070))

(assert (=> b!6549447 m!7331874))

(declare-fun m!7332072 () Bool)

(assert (=> b!6549447 m!7332072))

(assert (=> b!6549443 m!7331870))

(assert (=> d!2055623 m!7331866))

(assert (=> d!2055623 m!7332034))

(assert (=> b!6549445 m!7331874))

(assert (=> b!6549445 m!7331874))

(assert (=> b!6549445 m!7332068))

(assert (=> b!6549440 m!7331870))

(assert (=> b!6549022 d!2055623))

(declare-fun bs!1672063 () Bool)

(declare-fun d!2055625 () Bool)

(assert (= bs!1672063 (and d!2055625 b!6549029)))

(declare-fun lambda!363716 () Int)

(assert (=> bs!1672063 (= lambda!363716 lambda!363666)))

(assert (=> d!2055625 (matchZipper!2434 (set.insert (Context!11613 (++!14547 (exprs!6306 lt!2401658) (exprs!6306 lt!2401670))) (as set.empty (Set Context!11612))) (++!14546 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(declare-fun lt!2401903 () Unit!159023)

(assert (=> d!2055625 (= lt!2401903 (lemmaConcatPreservesForall!395 (exprs!6306 lt!2401658) (exprs!6306 lt!2401670) lambda!363716))))

(declare-fun lt!2401902 () Unit!159023)

(declare-fun choose!48712 (Context!11612 Context!11612 List!65567 List!65567) Unit!159023)

(assert (=> d!2055625 (= lt!2401902 (choose!48712 lt!2401658 lt!2401670 (_1!36704 lt!2401672) (_2!36704 lt!2401672)))))

(assert (=> d!2055625 (matchZipper!2434 (set.insert lt!2401658 (as set.empty (Set Context!11612))) (_1!36704 lt!2401672))))

(assert (=> d!2055625 (= (lemmaConcatenateContextMatchesConcatOfStrings!203 lt!2401658 lt!2401670 (_1!36704 lt!2401672) (_2!36704 lt!2401672)) lt!2401902)))

(declare-fun bs!1672064 () Bool)

(assert (= bs!1672064 d!2055625))

(declare-fun m!7332074 () Bool)

(assert (=> bs!1672064 m!7332074))

(assert (=> bs!1672064 m!7331636))

(declare-fun m!7332076 () Bool)

(assert (=> bs!1672064 m!7332076))

(assert (=> bs!1672064 m!7331656))

(assert (=> bs!1672064 m!7331636))

(declare-fun m!7332078 () Bool)

(assert (=> bs!1672064 m!7332078))

(declare-fun m!7332080 () Bool)

(assert (=> bs!1672064 m!7332080))

(assert (=> bs!1672064 m!7331656))

(declare-fun m!7332082 () Bool)

(assert (=> bs!1672064 m!7332082))

(assert (=> bs!1672064 m!7332080))

(declare-fun m!7332084 () Bool)

(assert (=> bs!1672064 m!7332084))

(assert (=> b!6549022 d!2055625))

(declare-fun b!6549453 () Bool)

(declare-fun res!2686937 () Bool)

(declare-fun e!3965400 () Bool)

(assert (=> b!6549453 (=> res!2686937 e!3965400)))

(assert (=> b!6549453 (= res!2686937 (not (is-ElementMatch!16422 (reg!16751 (regOne!33356 r!7292)))))))

(declare-fun e!3965396 () Bool)

(assert (=> b!6549453 (= e!3965396 e!3965400)))

(declare-fun bm!569632 () Bool)

(declare-fun call!569637 () Bool)

(assert (=> bm!569632 (= call!569637 (isEmpty!37671 (_1!36704 lt!2401672)))))

(declare-fun b!6549454 () Bool)

(declare-fun e!3965401 () Bool)

(assert (=> b!6549454 (= e!3965401 (not (= (head!13295 (_1!36704 lt!2401672)) (c!1202881 (reg!16751 (regOne!33356 r!7292))))))))

(declare-fun b!6549455 () Bool)

(declare-fun lt!2401904 () Bool)

(assert (=> b!6549455 (= e!3965396 (not lt!2401904))))

(declare-fun b!6549456 () Bool)

(declare-fun e!3965399 () Bool)

(assert (=> b!6549456 (= e!3965399 e!3965401)))

(declare-fun res!2686935 () Bool)

(assert (=> b!6549456 (=> res!2686935 e!3965401)))

(assert (=> b!6549456 (= res!2686935 call!569637)))

(declare-fun b!6549457 () Bool)

(declare-fun e!3965395 () Bool)

(assert (=> b!6549457 (= e!3965395 (= (head!13295 (_1!36704 lt!2401672)) (c!1202881 (reg!16751 (regOne!33356 r!7292)))))))

(declare-fun b!6549458 () Bool)

(assert (=> b!6549458 (= e!3965400 e!3965399)))

(declare-fun res!2686941 () Bool)

(assert (=> b!6549458 (=> (not res!2686941) (not e!3965399))))

(assert (=> b!6549458 (= res!2686941 (not lt!2401904))))

(declare-fun b!6549459 () Bool)

(declare-fun res!2686940 () Bool)

(assert (=> b!6549459 (=> res!2686940 e!3965401)))

(assert (=> b!6549459 (= res!2686940 (not (isEmpty!37671 (tail!12380 (_1!36704 lt!2401672)))))))

(declare-fun d!2055627 () Bool)

(declare-fun e!3965398 () Bool)

(assert (=> d!2055627 e!3965398))

(declare-fun c!1202960 () Bool)

(assert (=> d!2055627 (= c!1202960 (is-EmptyExpr!16422 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun e!3965397 () Bool)

(assert (=> d!2055627 (= lt!2401904 e!3965397)))

(declare-fun c!1202962 () Bool)

(assert (=> d!2055627 (= c!1202962 (isEmpty!37671 (_1!36704 lt!2401672)))))

(assert (=> d!2055627 (validRegex!8158 (reg!16751 (regOne!33356 r!7292)))))

(assert (=> d!2055627 (= (matchR!8605 (reg!16751 (regOne!33356 r!7292)) (_1!36704 lt!2401672)) lt!2401904)))

(declare-fun b!6549460 () Bool)

(declare-fun res!2686936 () Bool)

(assert (=> b!6549460 (=> (not res!2686936) (not e!3965395))))

(assert (=> b!6549460 (= res!2686936 (isEmpty!37671 (tail!12380 (_1!36704 lt!2401672))))))

(declare-fun b!6549461 () Bool)

(assert (=> b!6549461 (= e!3965397 (matchR!8605 (derivativeStep!5106 (reg!16751 (regOne!33356 r!7292)) (head!13295 (_1!36704 lt!2401672))) (tail!12380 (_1!36704 lt!2401672))))))

(declare-fun b!6549462 () Bool)

(assert (=> b!6549462 (= e!3965398 e!3965396)))

(declare-fun c!1202961 () Bool)

(assert (=> b!6549462 (= c!1202961 (is-EmptyLang!16422 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun b!6549463 () Bool)

(declare-fun res!2686938 () Bool)

(assert (=> b!6549463 (=> res!2686938 e!3965400)))

(assert (=> b!6549463 (= res!2686938 e!3965395)))

(declare-fun res!2686942 () Bool)

(assert (=> b!6549463 (=> (not res!2686942) (not e!3965395))))

(assert (=> b!6549463 (= res!2686942 lt!2401904)))

(declare-fun b!6549464 () Bool)

(assert (=> b!6549464 (= e!3965397 (nullable!6415 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun b!6549465 () Bool)

(assert (=> b!6549465 (= e!3965398 (= lt!2401904 call!569637))))

(declare-fun b!6549466 () Bool)

(declare-fun res!2686939 () Bool)

(assert (=> b!6549466 (=> (not res!2686939) (not e!3965395))))

(assert (=> b!6549466 (= res!2686939 (not call!569637))))

(assert (= (and d!2055627 c!1202962) b!6549464))

(assert (= (and d!2055627 (not c!1202962)) b!6549461))

(assert (= (and d!2055627 c!1202960) b!6549465))

(assert (= (and d!2055627 (not c!1202960)) b!6549462))

(assert (= (and b!6549462 c!1202961) b!6549455))

(assert (= (and b!6549462 (not c!1202961)) b!6549453))

(assert (= (and b!6549453 (not res!2686937)) b!6549463))

(assert (= (and b!6549463 res!2686942) b!6549466))

(assert (= (and b!6549466 res!2686939) b!6549460))

(assert (= (and b!6549460 res!2686936) b!6549457))

(assert (= (and b!6549463 (not res!2686938)) b!6549458))

(assert (= (and b!6549458 res!2686941) b!6549456))

(assert (= (and b!6549456 (not res!2686935)) b!6549459))

(assert (= (and b!6549459 (not res!2686940)) b!6549454))

(assert (= (or b!6549465 b!6549456 b!6549466) bm!569632))

(assert (=> bm!569632 m!7331854))

(declare-fun m!7332086 () Bool)

(assert (=> b!6549464 m!7332086))

(assert (=> b!6549460 m!7331862))

(assert (=> b!6549460 m!7331862))

(declare-fun m!7332088 () Bool)

(assert (=> b!6549460 m!7332088))

(assert (=> b!6549461 m!7331858))

(assert (=> b!6549461 m!7331858))

(declare-fun m!7332090 () Bool)

(assert (=> b!6549461 m!7332090))

(assert (=> b!6549461 m!7331862))

(assert (=> b!6549461 m!7332090))

(assert (=> b!6549461 m!7331862))

(declare-fun m!7332092 () Bool)

(assert (=> b!6549461 m!7332092))

(assert (=> b!6549457 m!7331858))

(assert (=> d!2055627 m!7331854))

(assert (=> d!2055627 m!7332040))

(assert (=> b!6549459 m!7331862))

(assert (=> b!6549459 m!7331862))

(assert (=> b!6549459 m!7332088))

(assert (=> b!6549454 m!7331858))

(assert (=> b!6549022 d!2055627))

(declare-fun d!2055629 () Bool)

(declare-fun c!1202963 () Bool)

(assert (=> d!2055629 (= c!1202963 (isEmpty!37671 (t!379209 s!2326)))))

(declare-fun e!3965402 () Bool)

(assert (=> d!2055629 (= (matchZipper!2434 lt!2401673 (t!379209 s!2326)) e!3965402)))

(declare-fun b!6549467 () Bool)

(assert (=> b!6549467 (= e!3965402 (nullableZipper!2167 lt!2401673))))

(declare-fun b!6549468 () Bool)

(assert (=> b!6549468 (= e!3965402 (matchZipper!2434 (derivationStepZipper!2388 lt!2401673 (head!13295 (t!379209 s!2326))) (tail!12380 (t!379209 s!2326))))))

(assert (= (and d!2055629 c!1202963) b!6549467))

(assert (= (and d!2055629 (not c!1202963)) b!6549468))

(declare-fun m!7332094 () Bool)

(assert (=> d!2055629 m!7332094))

(declare-fun m!7332096 () Bool)

(assert (=> b!6549467 m!7332096))

(declare-fun m!7332098 () Bool)

(assert (=> b!6549468 m!7332098))

(assert (=> b!6549468 m!7332098))

(declare-fun m!7332100 () Bool)

(assert (=> b!6549468 m!7332100))

(declare-fun m!7332102 () Bool)

(assert (=> b!6549468 m!7332102))

(assert (=> b!6549468 m!7332100))

(assert (=> b!6549468 m!7332102))

(declare-fun m!7332104 () Bool)

(assert (=> b!6549468 m!7332104))

(assert (=> b!6549002 d!2055629))

(assert (=> b!6549003 d!2055629))

(declare-fun bs!1672065 () Bool)

(declare-fun b!6549469 () Bool)

(assert (= bs!1672065 (and b!6549469 b!6549022)))

(declare-fun lambda!363717 () Int)

(assert (=> bs!1672065 (not (= lambda!363717 lambda!363667))))

(declare-fun bs!1672066 () Bool)

(assert (= bs!1672066 (and b!6549469 b!6549279)))

(assert (=> bs!1672066 (not (= lambda!363717 lambda!363708))))

(declare-fun bs!1672067 () Bool)

(assert (= bs!1672067 (and b!6549469 b!6549415)))

(assert (=> bs!1672067 (not (= lambda!363717 lambda!363713))))

(declare-fun bs!1672068 () Bool)

(assert (= bs!1672068 (and b!6549469 b!6549278)))

(assert (=> bs!1672068 (= (and (= (reg!16751 r!7292) (reg!16751 lt!2401649)) (= r!7292 lt!2401649)) (= lambda!363717 lambda!363707))))

(declare-fun bs!1672069 () Bool)

(assert (= bs!1672069 (and b!6549469 d!2055595)))

(assert (=> bs!1672069 (not (= lambda!363717 lambda!363711))))

(declare-fun bs!1672070 () Bool)

(assert (= bs!1672070 (and b!6549469 b!6549414)))

(assert (=> bs!1672070 (= (and (= (reg!16751 r!7292) (reg!16751 lt!2401667)) (= r!7292 lt!2401667)) (= lambda!363717 lambda!363712))))

(declare-fun bs!1672071 () Bool)

(assert (= bs!1672071 (and b!6549469 b!6549019)))

(assert (=> bs!1672071 (not (= lambda!363717 lambda!363663))))

(assert (=> bs!1672071 (not (= lambda!363717 lambda!363662))))

(assert (=> b!6549469 true))

(assert (=> b!6549469 true))

(declare-fun bs!1672072 () Bool)

(declare-fun b!6549470 () Bool)

(assert (= bs!1672072 (and b!6549470 b!6549022)))

(declare-fun lambda!363718 () Int)

(assert (=> bs!1672072 (not (= lambda!363718 lambda!363667))))

(declare-fun bs!1672073 () Bool)

(assert (= bs!1672073 (and b!6549470 b!6549279)))

(assert (=> bs!1672073 (= (and (= (regOne!33356 r!7292) (regOne!33356 lt!2401649)) (= (regTwo!33356 r!7292) (regTwo!33356 lt!2401649))) (= lambda!363718 lambda!363708))))

(declare-fun bs!1672074 () Bool)

(assert (= bs!1672074 (and b!6549470 b!6549415)))

(assert (=> bs!1672074 (= (and (= (regOne!33356 r!7292) (regOne!33356 lt!2401667)) (= (regTwo!33356 r!7292) (regTwo!33356 lt!2401667))) (= lambda!363718 lambda!363713))))

(declare-fun bs!1672075 () Bool)

(assert (= bs!1672075 (and b!6549470 b!6549278)))

(assert (=> bs!1672075 (not (= lambda!363718 lambda!363707))))

(declare-fun bs!1672076 () Bool)

(assert (= bs!1672076 (and b!6549470 d!2055595)))

(assert (=> bs!1672076 (not (= lambda!363718 lambda!363711))))

(declare-fun bs!1672077 () Bool)

(assert (= bs!1672077 (and b!6549470 b!6549469)))

(assert (=> bs!1672077 (not (= lambda!363718 lambda!363717))))

(declare-fun bs!1672078 () Bool)

(assert (= bs!1672078 (and b!6549470 b!6549414)))

(assert (=> bs!1672078 (not (= lambda!363718 lambda!363712))))

(declare-fun bs!1672079 () Bool)

(assert (= bs!1672079 (and b!6549470 b!6549019)))

(assert (=> bs!1672079 (= lambda!363718 lambda!363663)))

(assert (=> bs!1672079 (not (= lambda!363718 lambda!363662))))

(assert (=> b!6549470 true))

(assert (=> b!6549470 true))

(declare-fun e!3965404 () Bool)

(declare-fun call!569638 () Bool)

(assert (=> b!6549469 (= e!3965404 call!569638)))

(declare-fun e!3965407 () Bool)

(assert (=> b!6549470 (= e!3965407 call!569638)))

(declare-fun b!6549471 () Bool)

(declare-fun e!3965403 () Bool)

(declare-fun e!3965408 () Bool)

(assert (=> b!6549471 (= e!3965403 e!3965408)))

(declare-fun res!2686945 () Bool)

(assert (=> b!6549471 (= res!2686945 (matchRSpec!3523 (regOne!33357 r!7292) s!2326))))

(assert (=> b!6549471 (=> res!2686945 e!3965408)))

(declare-fun b!6549472 () Bool)

(assert (=> b!6549472 (= e!3965403 e!3965407)))

(declare-fun c!1202965 () Bool)

(assert (=> b!6549472 (= c!1202965 (is-Star!16422 r!7292))))

(declare-fun b!6549473 () Bool)

(declare-fun e!3965409 () Bool)

(declare-fun e!3965406 () Bool)

(assert (=> b!6549473 (= e!3965409 e!3965406)))

(declare-fun res!2686943 () Bool)

(assert (=> b!6549473 (= res!2686943 (not (is-EmptyLang!16422 r!7292)))))

(assert (=> b!6549473 (=> (not res!2686943) (not e!3965406))))

(declare-fun bm!569633 () Bool)

(assert (=> bm!569633 (= call!569638 (Exists!3492 (ite c!1202965 lambda!363717 lambda!363718)))))

(declare-fun b!6549474 () Bool)

(declare-fun c!1202967 () Bool)

(assert (=> b!6549474 (= c!1202967 (is-ElementMatch!16422 r!7292))))

(declare-fun e!3965405 () Bool)

(assert (=> b!6549474 (= e!3965406 e!3965405)))

(declare-fun bm!569634 () Bool)

(declare-fun call!569639 () Bool)

(assert (=> bm!569634 (= call!569639 (isEmpty!37671 s!2326))))

(declare-fun b!6549475 () Bool)

(declare-fun c!1202964 () Bool)

(assert (=> b!6549475 (= c!1202964 (is-Union!16422 r!7292))))

(assert (=> b!6549475 (= e!3965405 e!3965403)))

(declare-fun b!6549476 () Bool)

(assert (=> b!6549476 (= e!3965409 call!569639)))

(declare-fun d!2055631 () Bool)

(declare-fun c!1202966 () Bool)

(assert (=> d!2055631 (= c!1202966 (is-EmptyExpr!16422 r!7292))))

(assert (=> d!2055631 (= (matchRSpec!3523 r!7292 s!2326) e!3965409)))

(declare-fun b!6549477 () Bool)

(assert (=> b!6549477 (= e!3965408 (matchRSpec!3523 (regTwo!33357 r!7292) s!2326))))

(declare-fun b!6549478 () Bool)

(declare-fun res!2686944 () Bool)

(assert (=> b!6549478 (=> res!2686944 e!3965404)))

(assert (=> b!6549478 (= res!2686944 call!569639)))

(assert (=> b!6549478 (= e!3965407 e!3965404)))

(declare-fun b!6549479 () Bool)

(assert (=> b!6549479 (= e!3965405 (= s!2326 (Cons!65443 (c!1202881 r!7292) Nil!65443)))))

(assert (= (and d!2055631 c!1202966) b!6549476))

(assert (= (and d!2055631 (not c!1202966)) b!6549473))

(assert (= (and b!6549473 res!2686943) b!6549474))

(assert (= (and b!6549474 c!1202967) b!6549479))

(assert (= (and b!6549474 (not c!1202967)) b!6549475))

(assert (= (and b!6549475 c!1202964) b!6549471))

(assert (= (and b!6549475 (not c!1202964)) b!6549472))

(assert (= (and b!6549471 (not res!2686945)) b!6549477))

(assert (= (and b!6549472 c!1202965) b!6549478))

(assert (= (and b!6549472 (not c!1202965)) b!6549470))

(assert (= (and b!6549478 (not res!2686944)) b!6549469))

(assert (= (or b!6549469 b!6549470) bm!569633))

(assert (= (or b!6549476 b!6549478) bm!569634))

(declare-fun m!7332106 () Bool)

(assert (=> b!6549471 m!7332106))

(declare-fun m!7332108 () Bool)

(assert (=> bm!569633 m!7332108))

(assert (=> bm!569634 m!7331954))

(declare-fun m!7332110 () Bool)

(assert (=> b!6549477 m!7332110))

(assert (=> b!6549023 d!2055631))

(declare-fun b!6549480 () Bool)

(declare-fun res!2686948 () Bool)

(declare-fun e!3965415 () Bool)

(assert (=> b!6549480 (=> res!2686948 e!3965415)))

(assert (=> b!6549480 (= res!2686948 (not (is-ElementMatch!16422 r!7292)))))

(declare-fun e!3965411 () Bool)

(assert (=> b!6549480 (= e!3965411 e!3965415)))

(declare-fun bm!569635 () Bool)

(declare-fun call!569640 () Bool)

(assert (=> bm!569635 (= call!569640 (isEmpty!37671 s!2326))))

(declare-fun b!6549481 () Bool)

(declare-fun e!3965416 () Bool)

(assert (=> b!6549481 (= e!3965416 (not (= (head!13295 s!2326) (c!1202881 r!7292))))))

(declare-fun b!6549482 () Bool)

(declare-fun lt!2401905 () Bool)

(assert (=> b!6549482 (= e!3965411 (not lt!2401905))))

(declare-fun b!6549483 () Bool)

(declare-fun e!3965414 () Bool)

(assert (=> b!6549483 (= e!3965414 e!3965416)))

(declare-fun res!2686946 () Bool)

(assert (=> b!6549483 (=> res!2686946 e!3965416)))

(assert (=> b!6549483 (= res!2686946 call!569640)))

(declare-fun b!6549484 () Bool)

(declare-fun e!3965410 () Bool)

(assert (=> b!6549484 (= e!3965410 (= (head!13295 s!2326) (c!1202881 r!7292)))))

(declare-fun b!6549485 () Bool)

(assert (=> b!6549485 (= e!3965415 e!3965414)))

(declare-fun res!2686952 () Bool)

(assert (=> b!6549485 (=> (not res!2686952) (not e!3965414))))

(assert (=> b!6549485 (= res!2686952 (not lt!2401905))))

(declare-fun b!6549486 () Bool)

(declare-fun res!2686951 () Bool)

(assert (=> b!6549486 (=> res!2686951 e!3965416)))

(assert (=> b!6549486 (= res!2686951 (not (isEmpty!37671 (tail!12380 s!2326))))))

(declare-fun d!2055633 () Bool)

(declare-fun e!3965413 () Bool)

(assert (=> d!2055633 e!3965413))

(declare-fun c!1202968 () Bool)

(assert (=> d!2055633 (= c!1202968 (is-EmptyExpr!16422 r!7292))))

(declare-fun e!3965412 () Bool)

(assert (=> d!2055633 (= lt!2401905 e!3965412)))

(declare-fun c!1202970 () Bool)

(assert (=> d!2055633 (= c!1202970 (isEmpty!37671 s!2326))))

(assert (=> d!2055633 (validRegex!8158 r!7292)))

(assert (=> d!2055633 (= (matchR!8605 r!7292 s!2326) lt!2401905)))

(declare-fun b!6549487 () Bool)

(declare-fun res!2686947 () Bool)

(assert (=> b!6549487 (=> (not res!2686947) (not e!3965410))))

(assert (=> b!6549487 (= res!2686947 (isEmpty!37671 (tail!12380 s!2326)))))

(declare-fun b!6549488 () Bool)

(assert (=> b!6549488 (= e!3965412 (matchR!8605 (derivativeStep!5106 r!7292 (head!13295 s!2326)) (tail!12380 s!2326)))))

(declare-fun b!6549489 () Bool)

(assert (=> b!6549489 (= e!3965413 e!3965411)))

(declare-fun c!1202969 () Bool)

(assert (=> b!6549489 (= c!1202969 (is-EmptyLang!16422 r!7292))))

(declare-fun b!6549490 () Bool)

(declare-fun res!2686949 () Bool)

(assert (=> b!6549490 (=> res!2686949 e!3965415)))

(assert (=> b!6549490 (= res!2686949 e!3965410)))

(declare-fun res!2686953 () Bool)

(assert (=> b!6549490 (=> (not res!2686953) (not e!3965410))))

(assert (=> b!6549490 (= res!2686953 lt!2401905)))

(declare-fun b!6549491 () Bool)

(assert (=> b!6549491 (= e!3965412 (nullable!6415 r!7292))))

(declare-fun b!6549492 () Bool)

(assert (=> b!6549492 (= e!3965413 (= lt!2401905 call!569640))))

(declare-fun b!6549493 () Bool)

(declare-fun res!2686950 () Bool)

(assert (=> b!6549493 (=> (not res!2686950) (not e!3965410))))

(assert (=> b!6549493 (= res!2686950 (not call!569640))))

(assert (= (and d!2055633 c!1202970) b!6549491))

(assert (= (and d!2055633 (not c!1202970)) b!6549488))

(assert (= (and d!2055633 c!1202968) b!6549492))

(assert (= (and d!2055633 (not c!1202968)) b!6549489))

(assert (= (and b!6549489 c!1202969) b!6549482))

(assert (= (and b!6549489 (not c!1202969)) b!6549480))

(assert (= (and b!6549480 (not res!2686948)) b!6549490))

(assert (= (and b!6549490 res!2686953) b!6549493))

(assert (= (and b!6549493 res!2686950) b!6549487))

(assert (= (and b!6549487 res!2686947) b!6549484))

(assert (= (and b!6549490 (not res!2686949)) b!6549485))

(assert (= (and b!6549485 res!2686952) b!6549483))

(assert (= (and b!6549483 (not res!2686946)) b!6549486))

(assert (= (and b!6549486 (not res!2686951)) b!6549481))

(assert (= (or b!6549492 b!6549483 b!6549493) bm!569635))

(assert (=> bm!569635 m!7331954))

(declare-fun m!7332112 () Bool)

(assert (=> b!6549491 m!7332112))

(assert (=> b!6549487 m!7331960))

(assert (=> b!6549487 m!7331960))

(assert (=> b!6549487 m!7331962))

(assert (=> b!6549488 m!7331964))

(assert (=> b!6549488 m!7331964))

(declare-fun m!7332114 () Bool)

(assert (=> b!6549488 m!7332114))

(assert (=> b!6549488 m!7331960))

(assert (=> b!6549488 m!7332114))

(assert (=> b!6549488 m!7331960))

(declare-fun m!7332116 () Bool)

(assert (=> b!6549488 m!7332116))

(assert (=> b!6549484 m!7331964))

(assert (=> d!2055633 m!7331954))

(assert (=> d!2055633 m!7331668))

(assert (=> b!6549486 m!7331960))

(assert (=> b!6549486 m!7331960))

(assert (=> b!6549486 m!7331962))

(assert (=> b!6549481 m!7331964))

(assert (=> b!6549023 d!2055633))

(declare-fun d!2055635 () Bool)

(assert (=> d!2055635 (= (matchR!8605 r!7292 s!2326) (matchRSpec!3523 r!7292 s!2326))))

(declare-fun lt!2401906 () Unit!159023)

(assert (=> d!2055635 (= lt!2401906 (choose!48706 r!7292 s!2326))))

(assert (=> d!2055635 (validRegex!8158 r!7292)))

(assert (=> d!2055635 (= (mainMatchTheorem!3523 r!7292 s!2326) lt!2401906)))

(declare-fun bs!1672080 () Bool)

(assert (= bs!1672080 d!2055635))

(assert (=> bs!1672080 m!7331642))

(assert (=> bs!1672080 m!7331640))

(declare-fun m!7332118 () Bool)

(assert (=> bs!1672080 m!7332118))

(assert (=> bs!1672080 m!7331668))

(assert (=> b!6549023 d!2055635))

(declare-fun bs!1672081 () Bool)

(declare-fun d!2055637 () Bool)

(assert (= bs!1672081 (and d!2055637 b!6549029)))

(declare-fun lambda!363721 () Int)

(assert (=> bs!1672081 (= lambda!363721 lambda!363666)))

(declare-fun bs!1672082 () Bool)

(assert (= bs!1672082 (and d!2055637 d!2055625)))

(assert (=> bs!1672082 (= lambda!363721 lambda!363716)))

(assert (=> d!2055637 (= (inv!84303 setElem!44691) (forall!15594 (exprs!6306 setElem!44691) lambda!363721))))

(declare-fun bs!1672083 () Bool)

(assert (= bs!1672083 d!2055637))

(declare-fun m!7332120 () Bool)

(assert (=> bs!1672083 m!7332120))

(assert (=> setNonEmpty!44691 d!2055637))

(declare-fun d!2055639 () Bool)

(declare-fun c!1202971 () Bool)

(assert (=> d!2055639 (= c!1202971 (isEmpty!37671 (t!379209 s!2326)))))

(declare-fun e!3965417 () Bool)

(assert (=> d!2055639 (= (matchZipper!2434 lt!2401662 (t!379209 s!2326)) e!3965417)))

(declare-fun b!6549494 () Bool)

(assert (=> b!6549494 (= e!3965417 (nullableZipper!2167 lt!2401662))))

(declare-fun b!6549495 () Bool)

(assert (=> b!6549495 (= e!3965417 (matchZipper!2434 (derivationStepZipper!2388 lt!2401662 (head!13295 (t!379209 s!2326))) (tail!12380 (t!379209 s!2326))))))

(assert (= (and d!2055639 c!1202971) b!6549494))

(assert (= (and d!2055639 (not c!1202971)) b!6549495))

(assert (=> d!2055639 m!7332094))

(declare-fun m!7332122 () Bool)

(assert (=> b!6549494 m!7332122))

(assert (=> b!6549495 m!7332098))

(assert (=> b!6549495 m!7332098))

(declare-fun m!7332124 () Bool)

(assert (=> b!6549495 m!7332124))

(assert (=> b!6549495 m!7332102))

(assert (=> b!6549495 m!7332124))

(assert (=> b!6549495 m!7332102))

(declare-fun m!7332126 () Bool)

(assert (=> b!6549495 m!7332126))

(assert (=> b!6548995 d!2055639))

(declare-fun d!2055641 () Bool)

(assert (=> d!2055641 (= (get!22715 lt!2401655) (v!52497 lt!2401655))))

(assert (=> b!6549015 d!2055641))

(declare-fun d!2055643 () Bool)

(assert (=> d!2055643 (isDefined!13016 (findConcatSeparationZippers!187 lt!2401626 (set.insert lt!2401670 (as set.empty (Set Context!11612))) Nil!65443 s!2326 s!2326))))

(declare-fun lt!2401909 () Unit!159023)

(declare-fun choose!48713 ((Set Context!11612) Context!11612 List!65567) Unit!159023)

(assert (=> d!2055643 (= lt!2401909 (choose!48713 lt!2401626 lt!2401670 s!2326))))

(assert (=> d!2055643 (matchZipper!2434 (appendTo!183 lt!2401626 lt!2401670) s!2326)))

(assert (=> d!2055643 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!187 lt!2401626 lt!2401670 s!2326) lt!2401909)))

(declare-fun bs!1672084 () Bool)

(assert (= bs!1672084 d!2055643))

(declare-fun m!7332128 () Bool)

(assert (=> bs!1672084 m!7332128))

(declare-fun m!7332130 () Bool)

(assert (=> bs!1672084 m!7332130))

(assert (=> bs!1672084 m!7331614))

(assert (=> bs!1672084 m!7331626))

(assert (=> bs!1672084 m!7332128))

(assert (=> bs!1672084 m!7331626))

(assert (=> bs!1672084 m!7331614))

(declare-fun m!7332132 () Bool)

(assert (=> bs!1672084 m!7332132))

(declare-fun m!7332134 () Bool)

(assert (=> bs!1672084 m!7332134))

(assert (=> b!6549015 d!2055643))

(declare-fun d!2055645 () Bool)

(assert (=> d!2055645 (= (isDefined!13016 lt!2401655) (not (isEmpty!37672 lt!2401655)))))

(declare-fun bs!1672085 () Bool)

(assert (= bs!1672085 d!2055645))

(declare-fun m!7332136 () Bool)

(assert (=> bs!1672085 m!7332136))

(assert (=> b!6549015 d!2055645))

(declare-fun b!6549506 () Bool)

(declare-fun res!2686959 () Bool)

(declare-fun e!3965423 () Bool)

(assert (=> b!6549506 (=> (not res!2686959) (not e!3965423))))

(declare-fun lt!2401912 () List!65567)

(declare-fun size!40494 (List!65567) Int)

(assert (=> b!6549506 (= res!2686959 (= (size!40494 lt!2401912) (+ (size!40494 (_1!36704 lt!2401672)) (size!40494 (_2!36704 lt!2401672)))))))

(declare-fun d!2055647 () Bool)

(assert (=> d!2055647 e!3965423))

(declare-fun res!2686958 () Bool)

(assert (=> d!2055647 (=> (not res!2686958) (not e!3965423))))

(declare-fun content!12550 (List!65567) (Set C!33114))

(assert (=> d!2055647 (= res!2686958 (= (content!12550 lt!2401912) (set.union (content!12550 (_1!36704 lt!2401672)) (content!12550 (_2!36704 lt!2401672)))))))

(declare-fun e!3965422 () List!65567)

(assert (=> d!2055647 (= lt!2401912 e!3965422)))

(declare-fun c!1202974 () Bool)

(assert (=> d!2055647 (= c!1202974 (is-Nil!65443 (_1!36704 lt!2401672)))))

(assert (=> d!2055647 (= (++!14546 (_1!36704 lt!2401672) (_2!36704 lt!2401672)) lt!2401912)))

(declare-fun b!6549504 () Bool)

(assert (=> b!6549504 (= e!3965422 (_2!36704 lt!2401672))))

(declare-fun b!6549505 () Bool)

(assert (=> b!6549505 (= e!3965422 (Cons!65443 (h!71891 (_1!36704 lt!2401672)) (++!14546 (t!379209 (_1!36704 lt!2401672)) (_2!36704 lt!2401672))))))

(declare-fun b!6549507 () Bool)

(assert (=> b!6549507 (= e!3965423 (or (not (= (_2!36704 lt!2401672) Nil!65443)) (= lt!2401912 (_1!36704 lt!2401672))))))

(assert (= (and d!2055647 c!1202974) b!6549504))

(assert (= (and d!2055647 (not c!1202974)) b!6549505))

(assert (= (and d!2055647 res!2686958) b!6549506))

(assert (= (and b!6549506 res!2686959) b!6549507))

(declare-fun m!7332138 () Bool)

(assert (=> b!6549506 m!7332138))

(declare-fun m!7332140 () Bool)

(assert (=> b!6549506 m!7332140))

(declare-fun m!7332142 () Bool)

(assert (=> b!6549506 m!7332142))

(declare-fun m!7332144 () Bool)

(assert (=> d!2055647 m!7332144))

(declare-fun m!7332146 () Bool)

(assert (=> d!2055647 m!7332146))

(declare-fun m!7332148 () Bool)

(assert (=> d!2055647 m!7332148))

(declare-fun m!7332150 () Bool)

(assert (=> b!6549505 m!7332150))

(assert (=> b!6549015 d!2055647))

(declare-fun b!6549526 () Bool)

(declare-fun lt!2401920 () Unit!159023)

(declare-fun lt!2401919 () Unit!159023)

(assert (=> b!6549526 (= lt!2401920 lt!2401919)))

(assert (=> b!6549526 (= (++!14546 (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326)) s!2326)))

(assert (=> b!6549526 (= lt!2401919 (lemmaMoveElementToOtherListKeepsConcatEq!2565 Nil!65443 (h!71891 s!2326) (t!379209 s!2326) s!2326))))

(declare-fun e!3965438 () Option!16313)

(assert (=> b!6549526 (= e!3965438 (findConcatSeparationZippers!187 lt!2401626 lt!2401654 (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326) s!2326))))

(declare-fun b!6549527 () Bool)

(declare-fun e!3965435 () Option!16313)

(assert (=> b!6549527 (= e!3965435 (Some!16312 (tuple2!66803 Nil!65443 s!2326)))))

(declare-fun b!6549528 () Bool)

(declare-fun res!2686970 () Bool)

(declare-fun e!3965437 () Bool)

(assert (=> b!6549528 (=> (not res!2686970) (not e!3965437))))

(declare-fun lt!2401921 () Option!16313)

(assert (=> b!6549528 (= res!2686970 (matchZipper!2434 lt!2401654 (_2!36704 (get!22715 lt!2401921))))))

(declare-fun b!6549529 () Bool)

(declare-fun e!3965434 () Bool)

(assert (=> b!6549529 (= e!3965434 (matchZipper!2434 lt!2401654 s!2326))))

(declare-fun b!6549530 () Bool)

(assert (=> b!6549530 (= e!3965438 None!16312)))

(declare-fun d!2055649 () Bool)

(declare-fun e!3965436 () Bool)

(assert (=> d!2055649 e!3965436))

(declare-fun res!2686973 () Bool)

(assert (=> d!2055649 (=> res!2686973 e!3965436)))

(assert (=> d!2055649 (= res!2686973 e!3965437)))

(declare-fun res!2686974 () Bool)

(assert (=> d!2055649 (=> (not res!2686974) (not e!3965437))))

(assert (=> d!2055649 (= res!2686974 (isDefined!13016 lt!2401921))))

(assert (=> d!2055649 (= lt!2401921 e!3965435)))

(declare-fun c!1202979 () Bool)

(assert (=> d!2055649 (= c!1202979 e!3965434)))

(declare-fun res!2686972 () Bool)

(assert (=> d!2055649 (=> (not res!2686972) (not e!3965434))))

(assert (=> d!2055649 (= res!2686972 (matchZipper!2434 lt!2401626 Nil!65443))))

(assert (=> d!2055649 (= (++!14546 Nil!65443 s!2326) s!2326)))

(assert (=> d!2055649 (= (findConcatSeparationZippers!187 lt!2401626 lt!2401654 Nil!65443 s!2326 s!2326) lt!2401921)))

(declare-fun b!6549531 () Bool)

(assert (=> b!6549531 (= e!3965436 (not (isDefined!13016 lt!2401921)))))

(declare-fun b!6549532 () Bool)

(declare-fun res!2686971 () Bool)

(assert (=> b!6549532 (=> (not res!2686971) (not e!3965437))))

(assert (=> b!6549532 (= res!2686971 (matchZipper!2434 lt!2401626 (_1!36704 (get!22715 lt!2401921))))))

(declare-fun b!6549533 () Bool)

(assert (=> b!6549533 (= e!3965437 (= (++!14546 (_1!36704 (get!22715 lt!2401921)) (_2!36704 (get!22715 lt!2401921))) s!2326))))

(declare-fun b!6549534 () Bool)

(assert (=> b!6549534 (= e!3965435 e!3965438)))

(declare-fun c!1202980 () Bool)

(assert (=> b!6549534 (= c!1202980 (is-Nil!65443 s!2326))))

(assert (= (and d!2055649 res!2686972) b!6549529))

(assert (= (and d!2055649 c!1202979) b!6549527))

(assert (= (and d!2055649 (not c!1202979)) b!6549534))

(assert (= (and b!6549534 c!1202980) b!6549530))

(assert (= (and b!6549534 (not c!1202980)) b!6549526))

(assert (= (and d!2055649 res!2686974) b!6549532))

(assert (= (and b!6549532 res!2686971) b!6549528))

(assert (= (and b!6549528 res!2686970) b!6549533))

(assert (= (and d!2055649 (not res!2686973)) b!6549531))

(declare-fun m!7332152 () Bool)

(assert (=> b!6549529 m!7332152))

(declare-fun m!7332154 () Bool)

(assert (=> b!6549531 m!7332154))

(assert (=> b!6549526 m!7331998))

(assert (=> b!6549526 m!7331998))

(assert (=> b!6549526 m!7332000))

(assert (=> b!6549526 m!7332002))

(assert (=> b!6549526 m!7331998))

(declare-fun m!7332156 () Bool)

(assert (=> b!6549526 m!7332156))

(declare-fun m!7332158 () Bool)

(assert (=> b!6549533 m!7332158))

(declare-fun m!7332160 () Bool)

(assert (=> b!6549533 m!7332160))

(assert (=> b!6549532 m!7332158))

(declare-fun m!7332162 () Bool)

(assert (=> b!6549532 m!7332162))

(assert (=> b!6549528 m!7332158))

(declare-fun m!7332164 () Bool)

(assert (=> b!6549528 m!7332164))

(assert (=> d!2055649 m!7332154))

(declare-fun m!7332166 () Bool)

(assert (=> d!2055649 m!7332166))

(declare-fun m!7332168 () Bool)

(assert (=> d!2055649 m!7332168))

(assert (=> b!6549015 d!2055649))

(declare-fun bs!1672086 () Bool)

(declare-fun d!2055651 () Bool)

(assert (= bs!1672086 (and d!2055651 b!6549029)))

(declare-fun lambda!363724 () Int)

(assert (=> bs!1672086 (= lambda!363724 lambda!363666)))

(declare-fun bs!1672087 () Bool)

(assert (= bs!1672087 (and d!2055651 d!2055625)))

(assert (=> bs!1672087 (= lambda!363724 lambda!363716)))

(declare-fun bs!1672088 () Bool)

(assert (= bs!1672088 (and d!2055651 d!2055637)))

(assert (=> bs!1672088 (= lambda!363724 lambda!363721)))

(declare-fun b!6549555 () Bool)

(declare-fun e!3965451 () Regex!16422)

(declare-fun e!3965455 () Regex!16422)

(assert (=> b!6549555 (= e!3965451 e!3965455)))

(declare-fun c!1202990 () Bool)

(assert (=> b!6549555 (= c!1202990 (is-Cons!65441 (exprs!6306 (h!71890 zl!343))))))

(declare-fun b!6549556 () Bool)

(declare-fun e!3965452 () Bool)

(declare-fun lt!2401924 () Regex!16422)

(declare-fun head!13296 (List!65565) Regex!16422)

(assert (=> b!6549556 (= e!3965452 (= lt!2401924 (head!13296 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun e!3965453 () Bool)

(assert (=> d!2055651 e!3965453))

(declare-fun res!2686979 () Bool)

(assert (=> d!2055651 (=> (not res!2686979) (not e!3965453))))

(assert (=> d!2055651 (= res!2686979 (validRegex!8158 lt!2401924))))

(assert (=> d!2055651 (= lt!2401924 e!3965451)))

(declare-fun c!1202992 () Bool)

(declare-fun e!3965454 () Bool)

(assert (=> d!2055651 (= c!1202992 e!3965454)))

(declare-fun res!2686980 () Bool)

(assert (=> d!2055651 (=> (not res!2686980) (not e!3965454))))

(assert (=> d!2055651 (= res!2686980 (is-Cons!65441 (exprs!6306 (h!71890 zl!343))))))

(assert (=> d!2055651 (forall!15594 (exprs!6306 (h!71890 zl!343)) lambda!363724)))

(assert (=> d!2055651 (= (generalisedConcat!2019 (exprs!6306 (h!71890 zl!343))) lt!2401924)))

(declare-fun b!6549557 () Bool)

(assert (=> b!6549557 (= e!3965455 (Concat!25267 (h!71889 (exprs!6306 (h!71890 zl!343))) (generalisedConcat!2019 (t!379207 (exprs!6306 (h!71890 zl!343))))))))

(declare-fun b!6549558 () Bool)

(declare-fun e!3965456 () Bool)

(assert (=> b!6549558 (= e!3965453 e!3965456)))

(declare-fun c!1202991 () Bool)

(assert (=> b!6549558 (= c!1202991 (isEmpty!37668 (exprs!6306 (h!71890 zl!343))))))

(declare-fun b!6549559 () Bool)

(declare-fun isConcat!1324 (Regex!16422) Bool)

(assert (=> b!6549559 (= e!3965452 (isConcat!1324 lt!2401924))))

(declare-fun b!6549560 () Bool)

(assert (=> b!6549560 (= e!3965451 (h!71889 (exprs!6306 (h!71890 zl!343))))))

(declare-fun b!6549561 () Bool)

(assert (=> b!6549561 (= e!3965455 EmptyExpr!16422)))

(declare-fun b!6549562 () Bool)

(assert (=> b!6549562 (= e!3965454 (isEmpty!37668 (t!379207 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun b!6549563 () Bool)

(assert (=> b!6549563 (= e!3965456 e!3965452)))

(declare-fun c!1202989 () Bool)

(declare-fun tail!12381 (List!65565) List!65565)

(assert (=> b!6549563 (= c!1202989 (isEmpty!37668 (tail!12381 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun b!6549564 () Bool)

(declare-fun isEmptyExpr!1801 (Regex!16422) Bool)

(assert (=> b!6549564 (= e!3965456 (isEmptyExpr!1801 lt!2401924))))

(assert (= (and d!2055651 res!2686980) b!6549562))

(assert (= (and d!2055651 c!1202992) b!6549560))

(assert (= (and d!2055651 (not c!1202992)) b!6549555))

(assert (= (and b!6549555 c!1202990) b!6549557))

(assert (= (and b!6549555 (not c!1202990)) b!6549561))

(assert (= (and d!2055651 res!2686979) b!6549558))

(assert (= (and b!6549558 c!1202991) b!6549564))

(assert (= (and b!6549558 (not c!1202991)) b!6549563))

(assert (= (and b!6549563 c!1202989) b!6549556))

(assert (= (and b!6549563 (not c!1202989)) b!6549559))

(declare-fun m!7332170 () Bool)

(assert (=> b!6549559 m!7332170))

(declare-fun m!7332172 () Bool)

(assert (=> b!6549564 m!7332172))

(declare-fun m!7332174 () Bool)

(assert (=> b!6549558 m!7332174))

(declare-fun m!7332176 () Bool)

(assert (=> b!6549556 m!7332176))

(assert (=> b!6549562 m!7331646))

(declare-fun m!7332178 () Bool)

(assert (=> d!2055651 m!7332178))

(declare-fun m!7332180 () Bool)

(assert (=> d!2055651 m!7332180))

(declare-fun m!7332182 () Bool)

(assert (=> b!6549563 m!7332182))

(assert (=> b!6549563 m!7332182))

(declare-fun m!7332184 () Bool)

(assert (=> b!6549563 m!7332184))

(declare-fun m!7332186 () Bool)

(assert (=> b!6549557 m!7332186))

(assert (=> b!6549016 d!2055651))

(declare-fun d!2055653 () Bool)

(declare-fun e!3965459 () Bool)

(assert (=> d!2055653 (= (matchZipper!2434 (set.union lt!2401662 lt!2401673) (t!379209 s!2326)) e!3965459)))

(declare-fun res!2686983 () Bool)

(assert (=> d!2055653 (=> res!2686983 e!3965459)))

(assert (=> d!2055653 (= res!2686983 (matchZipper!2434 lt!2401662 (t!379209 s!2326)))))

(declare-fun lt!2401927 () Unit!159023)

(declare-fun choose!48714 ((Set Context!11612) (Set Context!11612) List!65567) Unit!159023)

(assert (=> d!2055653 (= lt!2401927 (choose!48714 lt!2401662 lt!2401673 (t!379209 s!2326)))))

(assert (=> d!2055653 (= (lemmaZipperConcatMatchesSameAsBothZippers!1253 lt!2401662 lt!2401673 (t!379209 s!2326)) lt!2401927)))

(declare-fun b!6549567 () Bool)

(assert (=> b!6549567 (= e!3965459 (matchZipper!2434 lt!2401673 (t!379209 s!2326)))))

(assert (= (and d!2055653 (not res!2686983)) b!6549567))

(assert (=> d!2055653 m!7331660))

(assert (=> d!2055653 m!7331602))

(declare-fun m!7332188 () Bool)

(assert (=> d!2055653 m!7332188))

(assert (=> b!6549567 m!7331516))

(assert (=> b!6548996 d!2055653))

(assert (=> b!6548996 d!2055639))

(declare-fun d!2055655 () Bool)

(declare-fun c!1202993 () Bool)

(assert (=> d!2055655 (= c!1202993 (isEmpty!37671 (t!379209 s!2326)))))

(declare-fun e!3965460 () Bool)

(assert (=> d!2055655 (= (matchZipper!2434 (set.union lt!2401662 lt!2401673) (t!379209 s!2326)) e!3965460)))

(declare-fun b!6549568 () Bool)

(assert (=> b!6549568 (= e!3965460 (nullableZipper!2167 (set.union lt!2401662 lt!2401673)))))

(declare-fun b!6549569 () Bool)

(assert (=> b!6549569 (= e!3965460 (matchZipper!2434 (derivationStepZipper!2388 (set.union lt!2401662 lt!2401673) (head!13295 (t!379209 s!2326))) (tail!12380 (t!379209 s!2326))))))

(assert (= (and d!2055655 c!1202993) b!6549568))

(assert (= (and d!2055655 (not c!1202993)) b!6549569))

(assert (=> d!2055655 m!7332094))

(declare-fun m!7332190 () Bool)

(assert (=> b!6549568 m!7332190))

(assert (=> b!6549569 m!7332098))

(assert (=> b!6549569 m!7332098))

(declare-fun m!7332192 () Bool)

(assert (=> b!6549569 m!7332192))

(assert (=> b!6549569 m!7332102))

(assert (=> b!6549569 m!7332192))

(assert (=> b!6549569 m!7332102))

(declare-fun m!7332194 () Bool)

(assert (=> b!6549569 m!7332194))

(assert (=> b!6548996 d!2055655))

(declare-fun d!2055657 () Bool)

(declare-fun lt!2401928 () Regex!16422)

(assert (=> d!2055657 (validRegex!8158 lt!2401928)))

(assert (=> d!2055657 (= lt!2401928 (generalisedUnion!2266 (unfocusZipperList!1843 zl!343)))))

(assert (=> d!2055657 (= (unfocusZipper!2164 zl!343) lt!2401928)))

(declare-fun bs!1672089 () Bool)

(assert (= bs!1672089 d!2055657))

(declare-fun m!7332196 () Bool)

(assert (=> bs!1672089 m!7332196))

(assert (=> bs!1672089 m!7331662))

(assert (=> bs!1672089 m!7331662))

(assert (=> bs!1672089 m!7331664))

(assert (=> b!6548998 d!2055657))

(declare-fun b!6549592 () Bool)

(declare-fun e!3965476 () (Set Context!11612))

(declare-fun call!569656 () (Set Context!11612))

(declare-fun call!569654 () (Set Context!11612))

(assert (=> b!6549592 (= e!3965476 (set.union call!569656 call!569654))))

(declare-fun b!6549593 () Bool)

(declare-fun c!1203004 () Bool)

(declare-fun e!3965478 () Bool)

(assert (=> b!6549593 (= c!1203004 e!3965478)))

(declare-fun res!2686986 () Bool)

(assert (=> b!6549593 (=> (not res!2686986) (not e!3965478))))

(assert (=> b!6549593 (= res!2686986 (is-Concat!25267 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun e!3965475 () (Set Context!11612))

(assert (=> b!6549593 (= e!3965476 e!3965475)))

(declare-fun b!6549594 () Bool)

(declare-fun e!3965473 () (Set Context!11612))

(assert (=> b!6549594 (= e!3965473 (set.insert lt!2401670 (as set.empty (Set Context!11612))))))

(declare-fun b!6549595 () Bool)

(declare-fun c!1203005 () Bool)

(assert (=> b!6549595 (= c!1203005 (is-Star!16422 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun e!3965474 () (Set Context!11612))

(declare-fun e!3965477 () (Set Context!11612))

(assert (=> b!6549595 (= e!3965474 e!3965477)))

(declare-fun c!1203008 () Bool)

(declare-fun bm!569649 () Bool)

(declare-fun c!1203007 () Bool)

(declare-fun call!569655 () List!65565)

(assert (=> bm!569649 (= call!569656 (derivationStepZipperDown!1670 (ite c!1203007 (regOne!33357 (reg!16751 (regOne!33356 r!7292))) (ite c!1203004 (regTwo!33356 (reg!16751 (regOne!33356 r!7292))) (ite c!1203008 (regOne!33356 (reg!16751 (regOne!33356 r!7292))) (reg!16751 (reg!16751 (regOne!33356 r!7292)))))) (ite (or c!1203007 c!1203004) lt!2401670 (Context!11613 call!569655)) (h!71891 s!2326)))))

(declare-fun b!6549596 () Bool)

(declare-fun call!569653 () (Set Context!11612))

(assert (=> b!6549596 (= e!3965477 call!569653)))

(declare-fun b!6549597 () Bool)

(assert (=> b!6549597 (= e!3965473 e!3965476)))

(assert (=> b!6549597 (= c!1203007 (is-Union!16422 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun b!6549598 () Bool)

(assert (=> b!6549598 (= e!3965477 (as set.empty (Set Context!11612)))))

(declare-fun bm!569650 () Bool)

(declare-fun call!569657 () (Set Context!11612))

(assert (=> bm!569650 (= call!569653 call!569657)))

(declare-fun b!6549599 () Bool)

(assert (=> b!6549599 (= e!3965474 call!569653)))

(declare-fun d!2055659 () Bool)

(declare-fun c!1203006 () Bool)

(assert (=> d!2055659 (= c!1203006 (and (is-ElementMatch!16422 (reg!16751 (regOne!33356 r!7292))) (= (c!1202881 (reg!16751 (regOne!33356 r!7292))) (h!71891 s!2326))))))

(assert (=> d!2055659 (= (derivationStepZipperDown!1670 (reg!16751 (regOne!33356 r!7292)) lt!2401670 (h!71891 s!2326)) e!3965473)))

(declare-fun call!569658 () List!65565)

(declare-fun bm!569648 () Bool)

(assert (=> bm!569648 (= call!569654 (derivationStepZipperDown!1670 (ite c!1203007 (regTwo!33357 (reg!16751 (regOne!33356 r!7292))) (regOne!33356 (reg!16751 (regOne!33356 r!7292)))) (ite c!1203007 lt!2401670 (Context!11613 call!569658)) (h!71891 s!2326)))))

(declare-fun b!6549600 () Bool)

(assert (=> b!6549600 (= e!3965475 (set.union call!569654 call!569657))))

(declare-fun bm!569651 () Bool)

(assert (=> bm!569651 (= call!569657 call!569656)))

(declare-fun b!6549601 () Bool)

(assert (=> b!6549601 (= e!3965475 e!3965474)))

(assert (=> b!6549601 (= c!1203008 (is-Concat!25267 (reg!16751 (regOne!33356 r!7292))))))

(declare-fun b!6549602 () Bool)

(assert (=> b!6549602 (= e!3965478 (nullable!6415 (regOne!33356 (reg!16751 (regOne!33356 r!7292)))))))

(declare-fun bm!569652 () Bool)

(declare-fun $colon$colon!2263 (List!65565 Regex!16422) List!65565)

(assert (=> bm!569652 (= call!569658 ($colon$colon!2263 (exprs!6306 lt!2401670) (ite (or c!1203004 c!1203008) (regTwo!33356 (reg!16751 (regOne!33356 r!7292))) (reg!16751 (regOne!33356 r!7292)))))))

(declare-fun bm!569653 () Bool)

(assert (=> bm!569653 (= call!569655 call!569658)))

(assert (= (and d!2055659 c!1203006) b!6549594))

(assert (= (and d!2055659 (not c!1203006)) b!6549597))

(assert (= (and b!6549597 c!1203007) b!6549592))

(assert (= (and b!6549597 (not c!1203007)) b!6549593))

(assert (= (and b!6549593 res!2686986) b!6549602))

(assert (= (and b!6549593 c!1203004) b!6549600))

(assert (= (and b!6549593 (not c!1203004)) b!6549601))

(assert (= (and b!6549601 c!1203008) b!6549599))

(assert (= (and b!6549601 (not c!1203008)) b!6549595))

(assert (= (and b!6549595 c!1203005) b!6549596))

(assert (= (and b!6549595 (not c!1203005)) b!6549598))

(assert (= (or b!6549599 b!6549596) bm!569653))

(assert (= (or b!6549599 b!6549596) bm!569650))

(assert (= (or b!6549600 bm!569653) bm!569652))

(assert (= (or b!6549600 bm!569650) bm!569651))

(assert (= (or b!6549592 b!6549600) bm!569648))

(assert (= (or b!6549592 bm!569651) bm!569649))

(declare-fun m!7332198 () Bool)

(assert (=> bm!569649 m!7332198))

(declare-fun m!7332200 () Bool)

(assert (=> bm!569652 m!7332200))

(declare-fun m!7332202 () Bool)

(assert (=> b!6549602 m!7332202))

(assert (=> b!6549594 m!7331626))

(declare-fun m!7332204 () Bool)

(assert (=> bm!569648 m!7332204))

(assert (=> b!6548999 d!2055659))

(declare-fun d!2055661 () Bool)

(declare-fun e!3965483 () Bool)

(assert (=> d!2055661 e!3965483))

(declare-fun res!2686987 () Bool)

(assert (=> d!2055661 (=> res!2686987 e!3965483)))

(declare-fun e!3965482 () Bool)

(assert (=> d!2055661 (= res!2686987 e!3965482)))

(declare-fun res!2686991 () Bool)

(assert (=> d!2055661 (=> (not res!2686991) (not e!3965482))))

(declare-fun lt!2401929 () Option!16313)

(assert (=> d!2055661 (= res!2686991 (isDefined!13016 lt!2401929))))

(declare-fun e!3965479 () Option!16313)

(assert (=> d!2055661 (= lt!2401929 e!3965479)))

(declare-fun c!1203009 () Bool)

(declare-fun e!3965480 () Bool)

(assert (=> d!2055661 (= c!1203009 e!3965480)))

(declare-fun res!2686989 () Bool)

(assert (=> d!2055661 (=> (not res!2686989) (not e!3965480))))

(assert (=> d!2055661 (= res!2686989 (matchR!8605 (regOne!33356 r!7292) Nil!65443))))

(assert (=> d!2055661 (validRegex!8158 (regOne!33356 r!7292))))

(assert (=> d!2055661 (= (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326) lt!2401929)))

(declare-fun b!6549603 () Bool)

(assert (=> b!6549603 (= e!3965482 (= (++!14546 (_1!36704 (get!22715 lt!2401929)) (_2!36704 (get!22715 lt!2401929))) s!2326))))

(declare-fun b!6549604 () Bool)

(declare-fun lt!2401931 () Unit!159023)

(declare-fun lt!2401930 () Unit!159023)

(assert (=> b!6549604 (= lt!2401931 lt!2401930)))

(assert (=> b!6549604 (= (++!14546 (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326)) s!2326)))

(assert (=> b!6549604 (= lt!2401930 (lemmaMoveElementToOtherListKeepsConcatEq!2565 Nil!65443 (h!71891 s!2326) (t!379209 s!2326) s!2326))))

(declare-fun e!3965481 () Option!16313)

(assert (=> b!6549604 (= e!3965481 (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) (++!14546 Nil!65443 (Cons!65443 (h!71891 s!2326) Nil!65443)) (t!379209 s!2326) s!2326))))

(declare-fun b!6549605 () Bool)

(assert (=> b!6549605 (= e!3965483 (not (isDefined!13016 lt!2401929)))))

(declare-fun b!6549606 () Bool)

(assert (=> b!6549606 (= e!3965481 None!16312)))

(declare-fun b!6549607 () Bool)

(assert (=> b!6549607 (= e!3965479 e!3965481)))

(declare-fun c!1203010 () Bool)

(assert (=> b!6549607 (= c!1203010 (is-Nil!65443 s!2326))))

(declare-fun b!6549608 () Bool)

(assert (=> b!6549608 (= e!3965479 (Some!16312 (tuple2!66803 Nil!65443 s!2326)))))

(declare-fun b!6549609 () Bool)

(declare-fun res!2686988 () Bool)

(assert (=> b!6549609 (=> (not res!2686988) (not e!3965482))))

(assert (=> b!6549609 (= res!2686988 (matchR!8605 (regOne!33356 r!7292) (_1!36704 (get!22715 lt!2401929))))))

(declare-fun b!6549610 () Bool)

(assert (=> b!6549610 (= e!3965480 (matchR!8605 (regTwo!33356 r!7292) s!2326))))

(declare-fun b!6549611 () Bool)

(declare-fun res!2686990 () Bool)

(assert (=> b!6549611 (=> (not res!2686990) (not e!3965482))))

(assert (=> b!6549611 (= res!2686990 (matchR!8605 (regTwo!33356 r!7292) (_2!36704 (get!22715 lt!2401929))))))

(assert (= (and d!2055661 res!2686989) b!6549610))

(assert (= (and d!2055661 c!1203009) b!6549608))

(assert (= (and d!2055661 (not c!1203009)) b!6549607))

(assert (= (and b!6549607 c!1203010) b!6549606))

(assert (= (and b!6549607 (not c!1203010)) b!6549604))

(assert (= (and d!2055661 res!2686991) b!6549609))

(assert (= (and b!6549609 res!2686988) b!6549611))

(assert (= (and b!6549611 res!2686990) b!6549603))

(assert (= (and d!2055661 (not res!2686987)) b!6549605))

(assert (=> b!6549610 m!7331984))

(declare-fun m!7332206 () Bool)

(assert (=> b!6549609 m!7332206))

(declare-fun m!7332208 () Bool)

(assert (=> b!6549609 m!7332208))

(declare-fun m!7332210 () Bool)

(assert (=> b!6549605 m!7332210))

(assert (=> b!6549603 m!7332206))

(declare-fun m!7332212 () Bool)

(assert (=> b!6549603 m!7332212))

(assert (=> b!6549611 m!7332206))

(declare-fun m!7332214 () Bool)

(assert (=> b!6549611 m!7332214))

(assert (=> d!2055661 m!7332210))

(declare-fun m!7332216 () Bool)

(assert (=> d!2055661 m!7332216))

(declare-fun m!7332218 () Bool)

(assert (=> d!2055661 m!7332218))

(assert (=> b!6549604 m!7331998))

(assert (=> b!6549604 m!7331998))

(assert (=> b!6549604 m!7332000))

(assert (=> b!6549604 m!7332002))

(assert (=> b!6549604 m!7331998))

(declare-fun m!7332220 () Bool)

(assert (=> b!6549604 m!7332220))

(assert (=> b!6549019 d!2055661))

(declare-fun d!2055663 () Bool)

(assert (=> d!2055663 (= (Exists!3492 lambda!363663) (choose!48708 lambda!363663))))

(declare-fun bs!1672090 () Bool)

(assert (= bs!1672090 d!2055663))

(declare-fun m!7332222 () Bool)

(assert (=> bs!1672090 m!7332222))

(assert (=> b!6549019 d!2055663))

(declare-fun d!2055665 () Bool)

(assert (=> d!2055665 (= (Exists!3492 lambda!363662) (choose!48708 lambda!363662))))

(declare-fun bs!1672091 () Bool)

(assert (= bs!1672091 d!2055665))

(declare-fun m!7332224 () Bool)

(assert (=> bs!1672091 m!7332224))

(assert (=> b!6549019 d!2055665))

(declare-fun bs!1672092 () Bool)

(declare-fun d!2055667 () Bool)

(assert (= bs!1672092 (and d!2055667 b!6549022)))

(declare-fun lambda!363725 () Int)

(assert (=> bs!1672092 (= (= (regOne!33356 r!7292) lt!2401627) (= lambda!363725 lambda!363667))))

(declare-fun bs!1672093 () Bool)

(assert (= bs!1672093 (and d!2055667 b!6549279)))

(assert (=> bs!1672093 (not (= lambda!363725 lambda!363708))))

(declare-fun bs!1672094 () Bool)

(assert (= bs!1672094 (and d!2055667 b!6549415)))

(assert (=> bs!1672094 (not (= lambda!363725 lambda!363713))))

(declare-fun bs!1672095 () Bool)

(assert (= bs!1672095 (and d!2055667 b!6549278)))

(assert (=> bs!1672095 (not (= lambda!363725 lambda!363707))))

(declare-fun bs!1672096 () Bool)

(assert (= bs!1672096 (and d!2055667 d!2055595)))

(assert (=> bs!1672096 (= (= (regOne!33356 r!7292) lt!2401627) (= lambda!363725 lambda!363711))))

(declare-fun bs!1672097 () Bool)

(assert (= bs!1672097 (and d!2055667 b!6549469)))

(assert (=> bs!1672097 (not (= lambda!363725 lambda!363717))))

(declare-fun bs!1672098 () Bool)

(assert (= bs!1672098 (and d!2055667 b!6549414)))

(assert (=> bs!1672098 (not (= lambda!363725 lambda!363712))))

(declare-fun bs!1672099 () Bool)

(assert (= bs!1672099 (and d!2055667 b!6549470)))

(assert (=> bs!1672099 (not (= lambda!363725 lambda!363718))))

(declare-fun bs!1672100 () Bool)

(assert (= bs!1672100 (and d!2055667 b!6549019)))

(assert (=> bs!1672100 (not (= lambda!363725 lambda!363663))))

(assert (=> bs!1672100 (= lambda!363725 lambda!363662)))

(assert (=> d!2055667 true))

(assert (=> d!2055667 true))

(assert (=> d!2055667 true))

(assert (=> d!2055667 (= (isDefined!13016 (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)) (Exists!3492 lambda!363725))))

(declare-fun lt!2401932 () Unit!159023)

(assert (=> d!2055667 (= lt!2401932 (choose!48707 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326))))

(assert (=> d!2055667 (validRegex!8158 (regOne!33356 r!7292))))

(assert (=> d!2055667 (= (lemmaFindConcatSeparationEquivalentToExists!2491 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326) lt!2401932)))

(declare-fun bs!1672101 () Bool)

(assert (= bs!1672101 d!2055667))

(declare-fun m!7332226 () Bool)

(assert (=> bs!1672101 m!7332226))

(assert (=> bs!1672101 m!7331548))

(assert (=> bs!1672101 m!7331548))

(assert (=> bs!1672101 m!7331550))

(assert (=> bs!1672101 m!7332218))

(declare-fun m!7332228 () Bool)

(assert (=> bs!1672101 m!7332228))

(assert (=> b!6549019 d!2055667))

(declare-fun bs!1672102 () Bool)

(declare-fun d!2055669 () Bool)

(assert (= bs!1672102 (and d!2055669 b!6549022)))

(declare-fun lambda!363730 () Int)

(assert (=> bs!1672102 (= (= (regOne!33356 r!7292) lt!2401627) (= lambda!363730 lambda!363667))))

(declare-fun bs!1672103 () Bool)

(assert (= bs!1672103 (and d!2055669 b!6549279)))

(assert (=> bs!1672103 (not (= lambda!363730 lambda!363708))))

(declare-fun bs!1672104 () Bool)

(assert (= bs!1672104 (and d!2055669 b!6549415)))

(assert (=> bs!1672104 (not (= lambda!363730 lambda!363713))))

(declare-fun bs!1672105 () Bool)

(assert (= bs!1672105 (and d!2055669 b!6549278)))

(assert (=> bs!1672105 (not (= lambda!363730 lambda!363707))))

(declare-fun bs!1672106 () Bool)

(assert (= bs!1672106 (and d!2055669 d!2055595)))

(assert (=> bs!1672106 (= (= (regOne!33356 r!7292) lt!2401627) (= lambda!363730 lambda!363711))))

(declare-fun bs!1672107 () Bool)

(assert (= bs!1672107 (and d!2055669 b!6549469)))

(assert (=> bs!1672107 (not (= lambda!363730 lambda!363717))))

(declare-fun bs!1672108 () Bool)

(assert (= bs!1672108 (and d!2055669 d!2055667)))

(assert (=> bs!1672108 (= lambda!363730 lambda!363725)))

(declare-fun bs!1672109 () Bool)

(assert (= bs!1672109 (and d!2055669 b!6549414)))

(assert (=> bs!1672109 (not (= lambda!363730 lambda!363712))))

(declare-fun bs!1672110 () Bool)

(assert (= bs!1672110 (and d!2055669 b!6549470)))

(assert (=> bs!1672110 (not (= lambda!363730 lambda!363718))))

(declare-fun bs!1672111 () Bool)

(assert (= bs!1672111 (and d!2055669 b!6549019)))

(assert (=> bs!1672111 (not (= lambda!363730 lambda!363663))))

(assert (=> bs!1672111 (= lambda!363730 lambda!363662)))

(assert (=> d!2055669 true))

(assert (=> d!2055669 true))

(assert (=> d!2055669 true))

(declare-fun lambda!363731 () Int)

(assert (=> bs!1672102 (not (= lambda!363731 lambda!363667))))

(assert (=> bs!1672103 (= (and (= (regOne!33356 r!7292) (regOne!33356 lt!2401649)) (= (regTwo!33356 r!7292) (regTwo!33356 lt!2401649))) (= lambda!363731 lambda!363708))))

(assert (=> bs!1672104 (= (and (= (regOne!33356 r!7292) (regOne!33356 lt!2401667)) (= (regTwo!33356 r!7292) (regTwo!33356 lt!2401667))) (= lambda!363731 lambda!363713))))

(declare-fun bs!1672112 () Bool)

(assert (= bs!1672112 d!2055669))

(assert (=> bs!1672112 (not (= lambda!363731 lambda!363730))))

(assert (=> bs!1672105 (not (= lambda!363731 lambda!363707))))

(assert (=> bs!1672106 (not (= lambda!363731 lambda!363711))))

(assert (=> bs!1672107 (not (= lambda!363731 lambda!363717))))

(assert (=> bs!1672108 (not (= lambda!363731 lambda!363725))))

(assert (=> bs!1672109 (not (= lambda!363731 lambda!363712))))

(assert (=> bs!1672110 (= lambda!363731 lambda!363718)))

(assert (=> bs!1672111 (= lambda!363731 lambda!363663)))

(assert (=> bs!1672111 (not (= lambda!363731 lambda!363662))))

(assert (=> d!2055669 true))

(assert (=> d!2055669 true))

(assert (=> d!2055669 true))

(assert (=> d!2055669 (= (Exists!3492 lambda!363730) (Exists!3492 lambda!363731))))

(declare-fun lt!2401935 () Unit!159023)

(declare-fun choose!48715 (Regex!16422 Regex!16422 List!65567) Unit!159023)

(assert (=> d!2055669 (= lt!2401935 (choose!48715 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326))))

(assert (=> d!2055669 (validRegex!8158 (regOne!33356 r!7292))))

(assert (=> d!2055669 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2029 (regOne!33356 r!7292) (regTwo!33356 r!7292) s!2326) lt!2401935)))

(declare-fun m!7332230 () Bool)

(assert (=> bs!1672112 m!7332230))

(declare-fun m!7332232 () Bool)

(assert (=> bs!1672112 m!7332232))

(declare-fun m!7332234 () Bool)

(assert (=> bs!1672112 m!7332234))

(assert (=> bs!1672112 m!7332218))

(assert (=> b!6549019 d!2055669))

(declare-fun d!2055671 () Bool)

(assert (=> d!2055671 (= (isDefined!13016 (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326)) (not (isEmpty!37672 (findConcatSeparation!2727 (regOne!33356 r!7292) (regTwo!33356 r!7292) Nil!65443 s!2326 s!2326))))))

(declare-fun bs!1672113 () Bool)

(assert (= bs!1672113 d!2055671))

(assert (=> bs!1672113 m!7331548))

(declare-fun m!7332236 () Bool)

(assert (=> bs!1672113 m!7332236))

(assert (=> b!6549019 d!2055671))

(declare-fun d!2055673 () Bool)

(assert (=> d!2055673 (= (isEmpty!37667 (t!379208 zl!343)) (is-Nil!65442 (t!379208 zl!343)))))

(assert (=> b!6548990 d!2055673))

(declare-fun d!2055675 () Bool)

(declare-fun c!1203011 () Bool)

(assert (=> d!2055675 (= c!1203011 (isEmpty!37671 s!2326))))

(declare-fun e!3965488 () Bool)

(assert (=> d!2055675 (= (matchZipper!2434 z!1189 s!2326) e!3965488)))

(declare-fun b!6549620 () Bool)

(assert (=> b!6549620 (= e!3965488 (nullableZipper!2167 z!1189))))

(declare-fun b!6549621 () Bool)

(assert (=> b!6549621 (= e!3965488 (matchZipper!2434 (derivationStepZipper!2388 z!1189 (head!13295 s!2326)) (tail!12380 s!2326)))))

(assert (= (and d!2055675 c!1203011) b!6549620))

(assert (= (and d!2055675 (not c!1203011)) b!6549621))

(assert (=> d!2055675 m!7331954))

(declare-fun m!7332238 () Bool)

(assert (=> b!6549620 m!7332238))

(assert (=> b!6549621 m!7331964))

(assert (=> b!6549621 m!7331964))

(declare-fun m!7332240 () Bool)

(assert (=> b!6549621 m!7332240))

(assert (=> b!6549621 m!7331960))

(assert (=> b!6549621 m!7332240))

(assert (=> b!6549621 m!7331960))

(declare-fun m!7332242 () Bool)

(assert (=> b!6549621 m!7332242))

(assert (=> b!6549030 d!2055675))

(declare-fun bm!569654 () Bool)

(declare-fun call!569659 () Bool)

(declare-fun c!1203013 () Bool)

(assert (=> bm!569654 (= call!569659 (validRegex!8158 (ite c!1203013 (regTwo!33357 r!7292) (regTwo!33356 r!7292))))))

(declare-fun b!6549623 () Bool)

(declare-fun e!3965493 () Bool)

(declare-fun e!3965495 () Bool)

(assert (=> b!6549623 (= e!3965493 e!3965495)))

(declare-fun res!2687000 () Bool)

(assert (=> b!6549623 (=> (not res!2687000) (not e!3965495))))

(declare-fun call!569660 () Bool)

(assert (=> b!6549623 (= res!2687000 call!569660)))

(declare-fun b!6549624 () Bool)

(declare-fun res!2687001 () Bool)

(assert (=> b!6549624 (=> res!2687001 e!3965493)))

(assert (=> b!6549624 (= res!2687001 (not (is-Concat!25267 r!7292)))))

(declare-fun e!3965489 () Bool)

(assert (=> b!6549624 (= e!3965489 e!3965493)))

(declare-fun bm!569655 () Bool)

(declare-fun call!569661 () Bool)

(assert (=> bm!569655 (= call!569660 call!569661)))

(declare-fun b!6549625 () Bool)

(declare-fun e!3965492 () Bool)

(assert (=> b!6549625 (= e!3965492 call!569661)))

(declare-fun b!6549626 () Bool)

(declare-fun e!3965490 () Bool)

(assert (=> b!6549626 (= e!3965490 e!3965489)))

(assert (=> b!6549626 (= c!1203013 (is-Union!16422 r!7292))))

(declare-fun b!6549627 () Bool)

(declare-fun res!2687002 () Bool)

(declare-fun e!3965491 () Bool)

(assert (=> b!6549627 (=> (not res!2687002) (not e!3965491))))

(assert (=> b!6549627 (= res!2687002 call!569660)))

(assert (=> b!6549627 (= e!3965489 e!3965491)))

(declare-fun c!1203012 () Bool)

(declare-fun bm!569656 () Bool)

(assert (=> bm!569656 (= call!569661 (validRegex!8158 (ite c!1203012 (reg!16751 r!7292) (ite c!1203013 (regOne!33357 r!7292) (regOne!33356 r!7292)))))))

(declare-fun b!6549628 () Bool)

(declare-fun e!3965494 () Bool)

(assert (=> b!6549628 (= e!3965494 e!3965490)))

(assert (=> b!6549628 (= c!1203012 (is-Star!16422 r!7292))))

(declare-fun b!6549629 () Bool)

(assert (=> b!6549629 (= e!3965491 call!569659)))

(declare-fun b!6549630 () Bool)

(assert (=> b!6549630 (= e!3965490 e!3965492)))

(declare-fun res!2687004 () Bool)

(assert (=> b!6549630 (= res!2687004 (not (nullable!6415 (reg!16751 r!7292))))))

(assert (=> b!6549630 (=> (not res!2687004) (not e!3965492))))

(declare-fun d!2055677 () Bool)

(declare-fun res!2687003 () Bool)

(assert (=> d!2055677 (=> res!2687003 e!3965494)))

(assert (=> d!2055677 (= res!2687003 (is-ElementMatch!16422 r!7292))))

(assert (=> d!2055677 (= (validRegex!8158 r!7292) e!3965494)))

(declare-fun b!6549622 () Bool)

(assert (=> b!6549622 (= e!3965495 call!569659)))

(assert (= (and d!2055677 (not res!2687003)) b!6549628))

(assert (= (and b!6549628 c!1203012) b!6549630))

(assert (= (and b!6549628 (not c!1203012)) b!6549626))

(assert (= (and b!6549630 res!2687004) b!6549625))

(assert (= (and b!6549626 c!1203013) b!6549627))

(assert (= (and b!6549626 (not c!1203013)) b!6549624))

(assert (= (and b!6549627 res!2687002) b!6549629))

(assert (= (and b!6549624 (not res!2687001)) b!6549623))

(assert (= (and b!6549623 res!2687000) b!6549622))

(assert (= (or b!6549629 b!6549622) bm!569654))

(assert (= (or b!6549627 b!6549623) bm!569655))

(assert (= (or b!6549625 bm!569655) bm!569656))

(declare-fun m!7332244 () Bool)

(assert (=> bm!569654 m!7332244))

(declare-fun m!7332246 () Bool)

(assert (=> bm!569656 m!7332246))

(declare-fun m!7332248 () Bool)

(assert (=> b!6549630 m!7332248))

(assert (=> start!641736 d!2055677))

(declare-fun d!2055679 () Bool)

(declare-fun c!1203014 () Bool)

(assert (=> d!2055679 (= c!1203014 (isEmpty!37671 (t!379209 s!2326)))))

(declare-fun e!3965496 () Bool)

(assert (=> d!2055679 (= (matchZipper!2434 lt!2401648 (t!379209 s!2326)) e!3965496)))

(declare-fun b!6549631 () Bool)

(assert (=> b!6549631 (= e!3965496 (nullableZipper!2167 lt!2401648))))

(declare-fun b!6549632 () Bool)

(assert (=> b!6549632 (= e!3965496 (matchZipper!2434 (derivationStepZipper!2388 lt!2401648 (head!13295 (t!379209 s!2326))) (tail!12380 (t!379209 s!2326))))))

(assert (= (and d!2055679 c!1203014) b!6549631))

(assert (= (and d!2055679 (not c!1203014)) b!6549632))

(assert (=> d!2055679 m!7332094))

(declare-fun m!7332250 () Bool)

(assert (=> b!6549631 m!7332250))

(assert (=> b!6549632 m!7332098))

(assert (=> b!6549632 m!7332098))

(declare-fun m!7332252 () Bool)

(assert (=> b!6549632 m!7332252))

(assert (=> b!6549632 m!7332102))

(assert (=> b!6549632 m!7332252))

(assert (=> b!6549632 m!7332102))

(declare-fun m!7332254 () Bool)

(assert (=> b!6549632 m!7332254))

(assert (=> b!6549031 d!2055679))

(declare-fun d!2055681 () Bool)

(declare-fun c!1203015 () Bool)

(assert (=> d!2055681 (= c!1203015 (isEmpty!37671 s!2326))))

(declare-fun e!3965497 () Bool)

(assert (=> d!2055681 (= (matchZipper!2434 lt!2401675 s!2326) e!3965497)))

(declare-fun b!6549633 () Bool)

(assert (=> b!6549633 (= e!3965497 (nullableZipper!2167 lt!2401675))))

(declare-fun b!6549634 () Bool)

(assert (=> b!6549634 (= e!3965497 (matchZipper!2434 (derivationStepZipper!2388 lt!2401675 (head!13295 s!2326)) (tail!12380 s!2326)))))

(assert (= (and d!2055681 c!1203015) b!6549633))

(assert (= (and d!2055681 (not c!1203015)) b!6549634))

(assert (=> d!2055681 m!7331954))

(declare-fun m!7332256 () Bool)

(assert (=> b!6549633 m!7332256))

(assert (=> b!6549634 m!7331964))

(assert (=> b!6549634 m!7331964))

(declare-fun m!7332258 () Bool)

(assert (=> b!6549634 m!7332258))

(assert (=> b!6549634 m!7331960))

(assert (=> b!6549634 m!7332258))

(assert (=> b!6549634 m!7331960))

(declare-fun m!7332260 () Bool)

(assert (=> b!6549634 m!7332260))

(assert (=> b!6549031 d!2055681))

(declare-fun bs!1672114 () Bool)

(declare-fun d!2055683 () Bool)

(assert (= bs!1672114 (and d!2055683 b!6549029)))

(declare-fun lambda!363734 () Int)

(assert (=> bs!1672114 (= lambda!363734 lambda!363666)))

(declare-fun bs!1672115 () Bool)

(assert (= bs!1672115 (and d!2055683 d!2055625)))

(assert (=> bs!1672115 (= lambda!363734 lambda!363716)))

(declare-fun bs!1672116 () Bool)

(assert (= bs!1672116 (and d!2055683 d!2055637)))

(assert (=> bs!1672116 (= lambda!363734 lambda!363721)))

(declare-fun bs!1672117 () Bool)

(assert (= bs!1672117 (and d!2055683 d!2055651)))

(assert (=> bs!1672117 (= lambda!363734 lambda!363724)))

(declare-fun b!6549655 () Bool)

(declare-fun e!3965512 () Regex!16422)

(assert (=> b!6549655 (= e!3965512 EmptyLang!16422)))

(declare-fun b!6549656 () Bool)

(declare-fun e!3965511 () Bool)

(declare-fun lt!2401938 () Regex!16422)

(assert (=> b!6549656 (= e!3965511 (= lt!2401938 (head!13296 (unfocusZipperList!1843 zl!343))))))

(declare-fun b!6549657 () Bool)

(declare-fun e!3965510 () Bool)

(assert (=> b!6549657 (= e!3965510 e!3965511)))

(declare-fun c!1203026 () Bool)

(assert (=> b!6549657 (= c!1203026 (isEmpty!37668 (tail!12381 (unfocusZipperList!1843 zl!343))))))

(declare-fun e!3965513 () Bool)

(assert (=> d!2055683 e!3965513))

(declare-fun res!2687010 () Bool)

(assert (=> d!2055683 (=> (not res!2687010) (not e!3965513))))

(assert (=> d!2055683 (= res!2687010 (validRegex!8158 lt!2401938))))

(declare-fun e!3965515 () Regex!16422)

(assert (=> d!2055683 (= lt!2401938 e!3965515)))

(declare-fun c!1203024 () Bool)

(declare-fun e!3965514 () Bool)

(assert (=> d!2055683 (= c!1203024 e!3965514)))

(declare-fun res!2687009 () Bool)

(assert (=> d!2055683 (=> (not res!2687009) (not e!3965514))))

(assert (=> d!2055683 (= res!2687009 (is-Cons!65441 (unfocusZipperList!1843 zl!343)))))

(assert (=> d!2055683 (forall!15594 (unfocusZipperList!1843 zl!343) lambda!363734)))

(assert (=> d!2055683 (= (generalisedUnion!2266 (unfocusZipperList!1843 zl!343)) lt!2401938)))

(declare-fun b!6549658 () Bool)

(assert (=> b!6549658 (= e!3965515 (h!71889 (unfocusZipperList!1843 zl!343)))))

(declare-fun b!6549659 () Bool)

(assert (=> b!6549659 (= e!3965512 (Union!16422 (h!71889 (unfocusZipperList!1843 zl!343)) (generalisedUnion!2266 (t!379207 (unfocusZipperList!1843 zl!343)))))))

(declare-fun b!6549660 () Bool)

(declare-fun isUnion!1239 (Regex!16422) Bool)

(assert (=> b!6549660 (= e!3965511 (isUnion!1239 lt!2401938))))

(declare-fun b!6549661 () Bool)

(declare-fun isEmptyLang!1809 (Regex!16422) Bool)

(assert (=> b!6549661 (= e!3965510 (isEmptyLang!1809 lt!2401938))))

(declare-fun b!6549662 () Bool)

(assert (=> b!6549662 (= e!3965513 e!3965510)))

(declare-fun c!1203027 () Bool)

(assert (=> b!6549662 (= c!1203027 (isEmpty!37668 (unfocusZipperList!1843 zl!343)))))

(declare-fun b!6549663 () Bool)

(assert (=> b!6549663 (= e!3965515 e!3965512)))

(declare-fun c!1203025 () Bool)

(assert (=> b!6549663 (= c!1203025 (is-Cons!65441 (unfocusZipperList!1843 zl!343)))))

(declare-fun b!6549664 () Bool)

(assert (=> b!6549664 (= e!3965514 (isEmpty!37668 (t!379207 (unfocusZipperList!1843 zl!343))))))

(assert (= (and d!2055683 res!2687009) b!6549664))

(assert (= (and d!2055683 c!1203024) b!6549658))

(assert (= (and d!2055683 (not c!1203024)) b!6549663))

(assert (= (and b!6549663 c!1203025) b!6549659))

(assert (= (and b!6549663 (not c!1203025)) b!6549655))

(assert (= (and d!2055683 res!2687010) b!6549662))

(assert (= (and b!6549662 c!1203027) b!6549661))

(assert (= (and b!6549662 (not c!1203027)) b!6549657))

(assert (= (and b!6549657 c!1203026) b!6549656))

(assert (= (and b!6549657 (not c!1203026)) b!6549660))

(assert (=> b!6549657 m!7331662))

(declare-fun m!7332262 () Bool)

(assert (=> b!6549657 m!7332262))

(assert (=> b!6549657 m!7332262))

(declare-fun m!7332264 () Bool)

(assert (=> b!6549657 m!7332264))

(declare-fun m!7332266 () Bool)

(assert (=> b!6549664 m!7332266))

(declare-fun m!7332268 () Bool)

(assert (=> d!2055683 m!7332268))

(assert (=> d!2055683 m!7331662))

(declare-fun m!7332270 () Bool)

(assert (=> d!2055683 m!7332270))

(declare-fun m!7332272 () Bool)

(assert (=> b!6549661 m!7332272))

(assert (=> b!6549656 m!7331662))

(declare-fun m!7332274 () Bool)

(assert (=> b!6549656 m!7332274))

(declare-fun m!7332276 () Bool)

(assert (=> b!6549659 m!7332276))

(declare-fun m!7332278 () Bool)

(assert (=> b!6549660 m!7332278))

(assert (=> b!6549662 m!7331662))

(declare-fun m!7332280 () Bool)

(assert (=> b!6549662 m!7332280))

(assert (=> b!6549011 d!2055683))

(declare-fun bs!1672118 () Bool)

(declare-fun d!2055685 () Bool)

(assert (= bs!1672118 (and d!2055685 d!2055651)))

(declare-fun lambda!363737 () Int)

(assert (=> bs!1672118 (= lambda!363737 lambda!363724)))

(declare-fun bs!1672119 () Bool)

(assert (= bs!1672119 (and d!2055685 b!6549029)))

(assert (=> bs!1672119 (= lambda!363737 lambda!363666)))

(declare-fun bs!1672120 () Bool)

(assert (= bs!1672120 (and d!2055685 d!2055683)))

(assert (=> bs!1672120 (= lambda!363737 lambda!363734)))

(declare-fun bs!1672121 () Bool)

(assert (= bs!1672121 (and d!2055685 d!2055625)))

(assert (=> bs!1672121 (= lambda!363737 lambda!363716)))

(declare-fun bs!1672122 () Bool)

(assert (= bs!1672122 (and d!2055685 d!2055637)))

(assert (=> bs!1672122 (= lambda!363737 lambda!363721)))

(declare-fun lt!2401941 () List!65565)

(assert (=> d!2055685 (forall!15594 lt!2401941 lambda!363737)))

(declare-fun e!3965518 () List!65565)

(assert (=> d!2055685 (= lt!2401941 e!3965518)))

(declare-fun c!1203030 () Bool)

(assert (=> d!2055685 (= c!1203030 (is-Cons!65442 zl!343))))

(assert (=> d!2055685 (= (unfocusZipperList!1843 zl!343) lt!2401941)))

(declare-fun b!6549669 () Bool)

(assert (=> b!6549669 (= e!3965518 (Cons!65441 (generalisedConcat!2019 (exprs!6306 (h!71890 zl!343))) (unfocusZipperList!1843 (t!379208 zl!343))))))

(declare-fun b!6549670 () Bool)

(assert (=> b!6549670 (= e!3965518 Nil!65441)))

(assert (= (and d!2055685 c!1203030) b!6549669))

(assert (= (and d!2055685 (not c!1203030)) b!6549670))

(declare-fun m!7332282 () Bool)

(assert (=> d!2055685 m!7332282))

(assert (=> b!6549669 m!7331666))

(declare-fun m!7332284 () Bool)

(assert (=> b!6549669 m!7332284))

(assert (=> b!6549011 d!2055685))

(declare-fun d!2055687 () Bool)

(declare-fun nullableFct!2341 (Regex!16422) Bool)

(assert (=> d!2055687 (= (nullable!6415 (regOne!33356 (regOne!33356 r!7292))) (nullableFct!2341 (regOne!33356 (regOne!33356 r!7292))))))

(declare-fun bs!1672123 () Bool)

(assert (= bs!1672123 d!2055687))

(declare-fun m!7332286 () Bool)

(assert (=> bs!1672123 m!7332286))

(assert (=> b!6549013 d!2055687))

(declare-fun bs!1672124 () Bool)

(declare-fun d!2055689 () Bool)

(assert (= bs!1672124 (and d!2055689 d!2055651)))

(declare-fun lambda!363738 () Int)

(assert (=> bs!1672124 (= lambda!363738 lambda!363724)))

(declare-fun bs!1672125 () Bool)

(assert (= bs!1672125 (and d!2055689 b!6549029)))

(assert (=> bs!1672125 (= lambda!363738 lambda!363666)))

(declare-fun bs!1672126 () Bool)

(assert (= bs!1672126 (and d!2055689 d!2055683)))

(assert (=> bs!1672126 (= lambda!363738 lambda!363734)))

(declare-fun bs!1672127 () Bool)

(assert (= bs!1672127 (and d!2055689 d!2055685)))

(assert (=> bs!1672127 (= lambda!363738 lambda!363737)))

(declare-fun bs!1672128 () Bool)

(assert (= bs!1672128 (and d!2055689 d!2055625)))

(assert (=> bs!1672128 (= lambda!363738 lambda!363716)))

(declare-fun bs!1672129 () Bool)

(assert (= bs!1672129 (and d!2055689 d!2055637)))

(assert (=> bs!1672129 (= lambda!363738 lambda!363721)))

(assert (=> d!2055689 (= (inv!84303 (h!71890 zl!343)) (forall!15594 (exprs!6306 (h!71890 zl!343)) lambda!363738))))

(declare-fun bs!1672130 () Bool)

(assert (= bs!1672130 d!2055689))

(declare-fun m!7332288 () Bool)

(assert (=> bs!1672130 m!7332288))

(assert (=> b!6549012 d!2055689))

(declare-fun d!2055691 () Bool)

(assert (=> d!2055691 (= (isEmpty!37668 (t!379207 (exprs!6306 (h!71890 zl!343)))) (is-Nil!65441 (t!379207 (exprs!6306 (h!71890 zl!343)))))))

(assert (=> b!6548992 d!2055691))

(declare-fun d!2055693 () Bool)

(assert (=> d!2055693 (= (flatMap!1927 lt!2401675 lambda!363664) (choose!48700 lt!2401675 lambda!363664))))

(declare-fun bs!1672131 () Bool)

(assert (= bs!1672131 d!2055693))

(declare-fun m!7332290 () Bool)

(assert (=> bs!1672131 m!7332290))

(assert (=> b!6549014 d!2055693))

(declare-fun b!6549671 () Bool)

(declare-fun e!3965520 () (Set Context!11612))

(declare-fun e!3965521 () (Set Context!11612))

(assert (=> b!6549671 (= e!3965520 e!3965521)))

(declare-fun c!1203032 () Bool)

(assert (=> b!6549671 (= c!1203032 (is-Cons!65441 (exprs!6306 lt!2401631)))))

(declare-fun d!2055695 () Bool)

(declare-fun c!1203031 () Bool)

(declare-fun e!3965519 () Bool)

(assert (=> d!2055695 (= c!1203031 e!3965519)))

(declare-fun res!2687011 () Bool)

(assert (=> d!2055695 (=> (not res!2687011) (not e!3965519))))

(assert (=> d!2055695 (= res!2687011 (is-Cons!65441 (exprs!6306 lt!2401631)))))

(assert (=> d!2055695 (= (derivationStepZipperUp!1596 lt!2401631 (h!71891 s!2326)) e!3965520)))

(declare-fun b!6549672 () Bool)

(assert (=> b!6549672 (= e!3965521 (as set.empty (Set Context!11612)))))

(declare-fun bm!569657 () Bool)

(declare-fun call!569662 () (Set Context!11612))

(assert (=> bm!569657 (= call!569662 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 lt!2401631)) (Context!11613 (t!379207 (exprs!6306 lt!2401631))) (h!71891 s!2326)))))

(declare-fun b!6549673 () Bool)

(assert (=> b!6549673 (= e!3965521 call!569662)))

(declare-fun b!6549674 () Bool)

(assert (=> b!6549674 (= e!3965520 (set.union call!569662 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 lt!2401631))) (h!71891 s!2326))))))

(declare-fun b!6549675 () Bool)

(assert (=> b!6549675 (= e!3965519 (nullable!6415 (h!71889 (exprs!6306 lt!2401631))))))

(assert (= (and d!2055695 res!2687011) b!6549675))

(assert (= (and d!2055695 c!1203031) b!6549674))

(assert (= (and d!2055695 (not c!1203031)) b!6549671))

(assert (= (and b!6549671 c!1203032) b!6549673))

(assert (= (and b!6549671 (not c!1203032)) b!6549672))

(assert (= (or b!6549674 b!6549673) bm!569657))

(declare-fun m!7332292 () Bool)

(assert (=> bm!569657 m!7332292))

(declare-fun m!7332294 () Bool)

(assert (=> b!6549674 m!7332294))

(declare-fun m!7332296 () Bool)

(assert (=> b!6549675 m!7332296))

(assert (=> b!6549014 d!2055695))

(declare-fun d!2055697 () Bool)

(assert (=> d!2055697 (= (flatMap!1927 lt!2401675 lambda!363664) (dynLambda!26016 lambda!363664 lt!2401631))))

(declare-fun lt!2401942 () Unit!159023)

(assert (=> d!2055697 (= lt!2401942 (choose!48701 lt!2401675 lt!2401631 lambda!363664))))

(assert (=> d!2055697 (= lt!2401675 (set.insert lt!2401631 (as set.empty (Set Context!11612))))))

(assert (=> d!2055697 (= (lemmaFlatMapOnSingletonSet!1453 lt!2401675 lt!2401631 lambda!363664) lt!2401942)))

(declare-fun b_lambda!247887 () Bool)

(assert (=> (not b_lambda!247887) (not d!2055697)))

(declare-fun bs!1672132 () Bool)

(assert (= bs!1672132 d!2055697))

(assert (=> bs!1672132 m!7331678))

(declare-fun m!7332298 () Bool)

(assert (=> bs!1672132 m!7332298))

(declare-fun m!7332300 () Bool)

(assert (=> bs!1672132 m!7332300))

(assert (=> bs!1672132 m!7331676))

(assert (=> b!6549014 d!2055697))

(declare-fun bs!1672133 () Bool)

(declare-fun d!2055699 () Bool)

(assert (= bs!1672133 (and d!2055699 b!6548993)))

(declare-fun lambda!363741 () Int)

(assert (=> bs!1672133 (= lambda!363741 lambda!363664)))

(assert (=> d!2055699 true))

(assert (=> d!2055699 (= (derivationStepZipper!2388 lt!2401675 (h!71891 s!2326)) (flatMap!1927 lt!2401675 lambda!363741))))

(declare-fun bs!1672134 () Bool)

(assert (= bs!1672134 d!2055699))

(declare-fun m!7332302 () Bool)

(assert (=> bs!1672134 m!7332302))

(assert (=> b!6549014 d!2055699))

(declare-fun d!2055701 () Bool)

(assert (=> d!2055701 (= (flatMap!1927 z!1189 lambda!363664) (dynLambda!26016 lambda!363664 (h!71890 zl!343)))))

(declare-fun lt!2401943 () Unit!159023)

(assert (=> d!2055701 (= lt!2401943 (choose!48701 z!1189 (h!71890 zl!343) lambda!363664))))

(assert (=> d!2055701 (= z!1189 (set.insert (h!71890 zl!343) (as set.empty (Set Context!11612))))))

(assert (=> d!2055701 (= (lemmaFlatMapOnSingletonSet!1453 z!1189 (h!71890 zl!343) lambda!363664) lt!2401943)))

(declare-fun b_lambda!247889 () Bool)

(assert (=> (not b_lambda!247889) (not d!2055701)))

(declare-fun bs!1672135 () Bool)

(assert (= bs!1672135 d!2055701))

(assert (=> bs!1672135 m!7331528))

(declare-fun m!7332304 () Bool)

(assert (=> bs!1672135 m!7332304))

(declare-fun m!7332306 () Bool)

(assert (=> bs!1672135 m!7332306))

(declare-fun m!7332308 () Bool)

(assert (=> bs!1672135 m!7332308))

(assert (=> b!6548993 d!2055701))

(declare-fun b!6549678 () Bool)

(declare-fun e!3965523 () (Set Context!11612))

(declare-fun e!3965524 () (Set Context!11612))

(assert (=> b!6549678 (= e!3965523 e!3965524)))

(declare-fun c!1203036 () Bool)

(assert (=> b!6549678 (= c!1203036 (is-Cons!65441 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343))))))))))

(declare-fun d!2055703 () Bool)

(declare-fun c!1203035 () Bool)

(declare-fun e!3965522 () Bool)

(assert (=> d!2055703 (= c!1203035 e!3965522)))

(declare-fun res!2687012 () Bool)

(assert (=> d!2055703 (=> (not res!2687012) (not e!3965522))))

(assert (=> d!2055703 (= res!2687012 (is-Cons!65441 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343))))))))))

(assert (=> d!2055703 (= (derivationStepZipperUp!1596 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343))))) (h!71891 s!2326)) e!3965523)))

(declare-fun b!6549679 () Bool)

(assert (=> b!6549679 (= e!3965524 (as set.empty (Set Context!11612)))))

(declare-fun bm!569658 () Bool)

(declare-fun call!569663 () (Set Context!11612))

(assert (=> bm!569658 (= call!569663 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343))))))) (Context!11613 (t!379207 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343)))))))) (h!71891 s!2326)))))

(declare-fun b!6549680 () Bool)

(assert (=> b!6549680 (= e!3965524 call!569663)))

(declare-fun b!6549681 () Bool)

(assert (=> b!6549681 (= e!3965523 (set.union call!569663 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343)))))))) (h!71891 s!2326))))))

(declare-fun b!6549682 () Bool)

(assert (=> b!6549682 (= e!3965522 (nullable!6415 (h!71889 (exprs!6306 (Context!11613 (Cons!65441 (h!71889 (exprs!6306 (h!71890 zl!343))) (t!379207 (exprs!6306 (h!71890 zl!343)))))))))))

(assert (= (and d!2055703 res!2687012) b!6549682))

(assert (= (and d!2055703 c!1203035) b!6549681))

(assert (= (and d!2055703 (not c!1203035)) b!6549678))

(assert (= (and b!6549678 c!1203036) b!6549680))

(assert (= (and b!6549678 (not c!1203036)) b!6549679))

(assert (= (or b!6549681 b!6549680) bm!569658))

(declare-fun m!7332310 () Bool)

(assert (=> bm!569658 m!7332310))

(declare-fun m!7332312 () Bool)

(assert (=> b!6549681 m!7332312))

(declare-fun m!7332314 () Bool)

(assert (=> b!6549682 m!7332314))

(assert (=> b!6548993 d!2055703))

(declare-fun d!2055705 () Bool)

(assert (=> d!2055705 (= (flatMap!1927 z!1189 lambda!363664) (choose!48700 z!1189 lambda!363664))))

(declare-fun bs!1672136 () Bool)

(assert (= bs!1672136 d!2055705))

(declare-fun m!7332316 () Bool)

(assert (=> bs!1672136 m!7332316))

(assert (=> b!6548993 d!2055705))

(declare-fun b!6549683 () Bool)

(declare-fun e!3965526 () (Set Context!11612))

(declare-fun e!3965527 () (Set Context!11612))

(assert (=> b!6549683 (= e!3965526 e!3965527)))

(declare-fun c!1203038 () Bool)

(assert (=> b!6549683 (= c!1203038 (is-Cons!65441 (exprs!6306 (h!71890 zl!343))))))

(declare-fun d!2055707 () Bool)

(declare-fun c!1203037 () Bool)

(declare-fun e!3965525 () Bool)

(assert (=> d!2055707 (= c!1203037 e!3965525)))

(declare-fun res!2687013 () Bool)

(assert (=> d!2055707 (=> (not res!2687013) (not e!3965525))))

(assert (=> d!2055707 (= res!2687013 (is-Cons!65441 (exprs!6306 (h!71890 zl!343))))))

(assert (=> d!2055707 (= (derivationStepZipperUp!1596 (h!71890 zl!343) (h!71891 s!2326)) e!3965526)))

(declare-fun b!6549684 () Bool)

(assert (=> b!6549684 (= e!3965527 (as set.empty (Set Context!11612)))))

(declare-fun bm!569659 () Bool)

(declare-fun call!569664 () (Set Context!11612))

(assert (=> bm!569659 (= call!569664 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 (h!71890 zl!343))) (Context!11613 (t!379207 (exprs!6306 (h!71890 zl!343)))) (h!71891 s!2326)))))

(declare-fun b!6549685 () Bool)

(assert (=> b!6549685 (= e!3965527 call!569664)))

(declare-fun b!6549686 () Bool)

(assert (=> b!6549686 (= e!3965526 (set.union call!569664 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 (h!71890 zl!343)))) (h!71891 s!2326))))))

(declare-fun b!6549687 () Bool)

(assert (=> b!6549687 (= e!3965525 (nullable!6415 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(assert (= (and d!2055707 res!2687013) b!6549687))

(assert (= (and d!2055707 c!1203037) b!6549686))

(assert (= (and d!2055707 (not c!1203037)) b!6549683))

(assert (= (and b!6549683 c!1203038) b!6549685))

(assert (= (and b!6549683 (not c!1203038)) b!6549684))

(assert (= (or b!6549686 b!6549685) bm!569659))

(declare-fun m!7332318 () Bool)

(assert (=> bm!569659 m!7332318))

(declare-fun m!7332320 () Bool)

(assert (=> b!6549686 m!7332320))

(assert (=> b!6549687 m!7331532))

(assert (=> b!6548993 d!2055707))

(declare-fun b!6549688 () Bool)

(declare-fun e!3965531 () (Set Context!11612))

(declare-fun call!569668 () (Set Context!11612))

(declare-fun call!569666 () (Set Context!11612))

(assert (=> b!6549688 (= e!3965531 (set.union call!569668 call!569666))))

(declare-fun b!6549689 () Bool)

(declare-fun c!1203039 () Bool)

(declare-fun e!3965533 () Bool)

(assert (=> b!6549689 (= c!1203039 e!3965533)))

(declare-fun res!2687014 () Bool)

(assert (=> b!6549689 (=> (not res!2687014) (not e!3965533))))

(assert (=> b!6549689 (= res!2687014 (is-Concat!25267 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun e!3965530 () (Set Context!11612))

(assert (=> b!6549689 (= e!3965531 e!3965530)))

(declare-fun b!6549690 () Bool)

(declare-fun e!3965528 () (Set Context!11612))

(assert (=> b!6549690 (= e!3965528 (set.insert lt!2401647 (as set.empty (Set Context!11612))))))

(declare-fun b!6549691 () Bool)

(declare-fun c!1203040 () Bool)

(assert (=> b!6549691 (= c!1203040 (is-Star!16422 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun e!3965529 () (Set Context!11612))

(declare-fun e!3965532 () (Set Context!11612))

(assert (=> b!6549691 (= e!3965529 e!3965532)))

(declare-fun c!1203043 () Bool)

(declare-fun bm!569661 () Bool)

(declare-fun call!569667 () List!65565)

(declare-fun c!1203042 () Bool)

(assert (=> bm!569661 (= call!569668 (derivationStepZipperDown!1670 (ite c!1203042 (regOne!33357 (h!71889 (exprs!6306 (h!71890 zl!343)))) (ite c!1203039 (regTwo!33356 (h!71889 (exprs!6306 (h!71890 zl!343)))) (ite c!1203043 (regOne!33356 (h!71889 (exprs!6306 (h!71890 zl!343)))) (reg!16751 (h!71889 (exprs!6306 (h!71890 zl!343))))))) (ite (or c!1203042 c!1203039) lt!2401647 (Context!11613 call!569667)) (h!71891 s!2326)))))

(declare-fun b!6549692 () Bool)

(declare-fun call!569665 () (Set Context!11612))

(assert (=> b!6549692 (= e!3965532 call!569665)))

(declare-fun b!6549693 () Bool)

(assert (=> b!6549693 (= e!3965528 e!3965531)))

(assert (=> b!6549693 (= c!1203042 (is-Union!16422 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun b!6549694 () Bool)

(assert (=> b!6549694 (= e!3965532 (as set.empty (Set Context!11612)))))

(declare-fun bm!569662 () Bool)

(declare-fun call!569669 () (Set Context!11612))

(assert (=> bm!569662 (= call!569665 call!569669)))

(declare-fun b!6549695 () Bool)

(assert (=> b!6549695 (= e!3965529 call!569665)))

(declare-fun d!2055709 () Bool)

(declare-fun c!1203041 () Bool)

(assert (=> d!2055709 (= c!1203041 (and (is-ElementMatch!16422 (h!71889 (exprs!6306 (h!71890 zl!343)))) (= (c!1202881 (h!71889 (exprs!6306 (h!71890 zl!343)))) (h!71891 s!2326))))))

(assert (=> d!2055709 (= (derivationStepZipperDown!1670 (h!71889 (exprs!6306 (h!71890 zl!343))) lt!2401647 (h!71891 s!2326)) e!3965528)))

(declare-fun bm!569660 () Bool)

(declare-fun call!569670 () List!65565)

(assert (=> bm!569660 (= call!569666 (derivationStepZipperDown!1670 (ite c!1203042 (regTwo!33357 (h!71889 (exprs!6306 (h!71890 zl!343)))) (regOne!33356 (h!71889 (exprs!6306 (h!71890 zl!343))))) (ite c!1203042 lt!2401647 (Context!11613 call!569670)) (h!71891 s!2326)))))

(declare-fun b!6549696 () Bool)

(assert (=> b!6549696 (= e!3965530 (set.union call!569666 call!569669))))

(declare-fun bm!569663 () Bool)

(assert (=> bm!569663 (= call!569669 call!569668)))

(declare-fun b!6549697 () Bool)

(assert (=> b!6549697 (= e!3965530 e!3965529)))

(assert (=> b!6549697 (= c!1203043 (is-Concat!25267 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun b!6549698 () Bool)

(assert (=> b!6549698 (= e!3965533 (nullable!6415 (regOne!33356 (h!71889 (exprs!6306 (h!71890 zl!343))))))))

(declare-fun bm!569664 () Bool)

(assert (=> bm!569664 (= call!569670 ($colon$colon!2263 (exprs!6306 lt!2401647) (ite (or c!1203039 c!1203043) (regTwo!33356 (h!71889 (exprs!6306 (h!71890 zl!343)))) (h!71889 (exprs!6306 (h!71890 zl!343))))))))

(declare-fun bm!569665 () Bool)

(assert (=> bm!569665 (= call!569667 call!569670)))

(assert (= (and d!2055709 c!1203041) b!6549690))

(assert (= (and d!2055709 (not c!1203041)) b!6549693))

(assert (= (and b!6549693 c!1203042) b!6549688))

(assert (= (and b!6549693 (not c!1203042)) b!6549689))

(assert (= (and b!6549689 res!2687014) b!6549698))

(assert (= (and b!6549689 c!1203039) b!6549696))

(assert (= (and b!6549689 (not c!1203039)) b!6549697))

(assert (= (and b!6549697 c!1203043) b!6549695))

(assert (= (and b!6549697 (not c!1203043)) b!6549691))

(assert (= (and b!6549691 c!1203040) b!6549692))

(assert (= (and b!6549691 (not c!1203040)) b!6549694))

(assert (= (or b!6549695 b!6549692) bm!569665))

(assert (= (or b!6549695 b!6549692) bm!569662))

(assert (= (or b!6549696 bm!569665) bm!569664))

(assert (= (or b!6549696 bm!569662) bm!569663))

(assert (= (or b!6549688 b!6549696) bm!569660))

(assert (= (or b!6549688 bm!569663) bm!569661))

(declare-fun m!7332322 () Bool)

(assert (=> bm!569661 m!7332322))

(declare-fun m!7332324 () Bool)

(assert (=> bm!569664 m!7332324))

(declare-fun m!7332326 () Bool)

(assert (=> b!6549698 m!7332326))

(declare-fun m!7332328 () Bool)

(assert (=> b!6549690 m!7332328))

(declare-fun m!7332330 () Bool)

(assert (=> bm!569660 m!7332330))

(assert (=> b!6548993 d!2055709))

(declare-fun b!6549699 () Bool)

(declare-fun e!3965535 () (Set Context!11612))

(declare-fun e!3965536 () (Set Context!11612))

(assert (=> b!6549699 (= e!3965535 e!3965536)))

(declare-fun c!1203045 () Bool)

(assert (=> b!6549699 (= c!1203045 (is-Cons!65441 (exprs!6306 lt!2401647)))))

(declare-fun d!2055711 () Bool)

(declare-fun c!1203044 () Bool)

(declare-fun e!3965534 () Bool)

(assert (=> d!2055711 (= c!1203044 e!3965534)))

(declare-fun res!2687015 () Bool)

(assert (=> d!2055711 (=> (not res!2687015) (not e!3965534))))

(assert (=> d!2055711 (= res!2687015 (is-Cons!65441 (exprs!6306 lt!2401647)))))

(assert (=> d!2055711 (= (derivationStepZipperUp!1596 lt!2401647 (h!71891 s!2326)) e!3965535)))

(declare-fun b!6549700 () Bool)

(assert (=> b!6549700 (= e!3965536 (as set.empty (Set Context!11612)))))

(declare-fun bm!569666 () Bool)

(declare-fun call!569671 () (Set Context!11612))

(assert (=> bm!569666 (= call!569671 (derivationStepZipperDown!1670 (h!71889 (exprs!6306 lt!2401647)) (Context!11613 (t!379207 (exprs!6306 lt!2401647))) (h!71891 s!2326)))))

(declare-fun b!6549701 () Bool)

(assert (=> b!6549701 (= e!3965536 call!569671)))

(declare-fun b!6549702 () Bool)

(assert (=> b!6549702 (= e!3965535 (set.union call!569671 (derivationStepZipperUp!1596 (Context!11613 (t!379207 (exprs!6306 lt!2401647))) (h!71891 s!2326))))))

(declare-fun b!6549703 () Bool)

(assert (=> b!6549703 (= e!3965534 (nullable!6415 (h!71889 (exprs!6306 lt!2401647))))))

(assert (= (and d!2055711 res!2687015) b!6549703))

(assert (= (and d!2055711 c!1203044) b!6549702))

(assert (= (and d!2055711 (not c!1203044)) b!6549699))

(assert (= (and b!6549699 c!1203045) b!6549701))

(assert (= (and b!6549699 (not c!1203045)) b!6549700))

(assert (= (or b!6549702 b!6549701) bm!569666))

(declare-fun m!7332332 () Bool)

(assert (=> bm!569666 m!7332332))

(declare-fun m!7332334 () Bool)

(assert (=> b!6549702 m!7332334))

(declare-fun m!7332336 () Bool)

(assert (=> b!6549703 m!7332336))

(assert (=> b!6548993 d!2055711))

(declare-fun d!2055713 () Bool)

(assert (=> d!2055713 (= (nullable!6415 (h!71889 (exprs!6306 (h!71890 zl!343)))) (nullableFct!2341 (h!71889 (exprs!6306 (h!71890 zl!343)))))))

(declare-fun bs!1672137 () Bool)

(assert (= bs!1672137 d!2055713))

(declare-fun m!7332338 () Bool)

(assert (=> bs!1672137 m!7332338))

(assert (=> b!6548993 d!2055713))

(declare-fun b!6549708 () Bool)

(declare-fun e!3965539 () Bool)

(declare-fun tp!1811244 () Bool)

(declare-fun tp!1811245 () Bool)

(assert (=> b!6549708 (= e!3965539 (and tp!1811244 tp!1811245))))

(assert (=> b!6549025 (= tp!1811205 e!3965539)))

(assert (= (and b!6549025 (is-Cons!65441 (exprs!6306 (h!71890 zl!343)))) b!6549708))

(declare-fun b!6549709 () Bool)

(declare-fun e!3965540 () Bool)

(declare-fun tp!1811246 () Bool)

(declare-fun tp!1811247 () Bool)

(assert (=> b!6549709 (= e!3965540 (and tp!1811246 tp!1811247))))

(assert (=> b!6549005 (= tp!1811202 e!3965540)))

(assert (= (and b!6549005 (is-Cons!65441 (exprs!6306 setElem!44691))) b!6549709))

(declare-fun b!6549714 () Bool)

(declare-fun e!3965543 () Bool)

(declare-fun tp!1811250 () Bool)

(assert (=> b!6549714 (= e!3965543 (and tp_is_empty!42097 tp!1811250))))

(assert (=> b!6549017 (= tp!1811208 e!3965543)))

(assert (= (and b!6549017 (is-Cons!65443 (t!379209 s!2326))) b!6549714))

(declare-fun b!6549728 () Bool)

(declare-fun e!3965546 () Bool)

(declare-fun tp!1811265 () Bool)

(declare-fun tp!1811261 () Bool)

(assert (=> b!6549728 (= e!3965546 (and tp!1811265 tp!1811261))))

(assert (=> b!6549018 (= tp!1811201 e!3965546)))

(declare-fun b!6549725 () Bool)

(assert (=> b!6549725 (= e!3965546 tp_is_empty!42097)))

(declare-fun b!6549726 () Bool)

(declare-fun tp!1811262 () Bool)

(declare-fun tp!1811264 () Bool)

(assert (=> b!6549726 (= e!3965546 (and tp!1811262 tp!1811264))))

(declare-fun b!6549727 () Bool)

(declare-fun tp!1811263 () Bool)

(assert (=> b!6549727 (= e!3965546 tp!1811263)))

(assert (= (and b!6549018 (is-ElementMatch!16422 (reg!16751 r!7292))) b!6549725))

(assert (= (and b!6549018 (is-Concat!25267 (reg!16751 r!7292))) b!6549726))

(assert (= (and b!6549018 (is-Star!16422 (reg!16751 r!7292))) b!6549727))

(assert (= (and b!6549018 (is-Union!16422 (reg!16751 r!7292))) b!6549728))

(declare-fun b!6549736 () Bool)

(declare-fun e!3965552 () Bool)

(declare-fun tp!1811270 () Bool)

(assert (=> b!6549736 (= e!3965552 tp!1811270)))

(declare-fun tp!1811271 () Bool)

(declare-fun e!3965551 () Bool)

(declare-fun b!6549735 () Bool)

(assert (=> b!6549735 (= e!3965551 (and (inv!84303 (h!71890 (t!379208 zl!343))) e!3965552 tp!1811271))))

(assert (=> b!6549012 (= tp!1811207 e!3965551)))

(assert (= b!6549735 b!6549736))

(assert (= (and b!6549012 (is-Cons!65442 (t!379208 zl!343))) b!6549735))

(declare-fun m!7332340 () Bool)

(assert (=> b!6549735 m!7332340))

(declare-fun b!6549740 () Bool)

(declare-fun e!3965553 () Bool)

(declare-fun tp!1811276 () Bool)

(declare-fun tp!1811272 () Bool)

(assert (=> b!6549740 (= e!3965553 (and tp!1811276 tp!1811272))))

(assert (=> b!6548994 (= tp!1811206 e!3965553)))

(declare-fun b!6549737 () Bool)

(assert (=> b!6549737 (= e!3965553 tp_is_empty!42097)))

(declare-fun b!6549738 () Bool)

(declare-fun tp!1811273 () Bool)

(declare-fun tp!1811275 () Bool)

(assert (=> b!6549738 (= e!3965553 (and tp!1811273 tp!1811275))))

(declare-fun b!6549739 () Bool)

(declare-fun tp!1811274 () Bool)

(assert (=> b!6549739 (= e!3965553 tp!1811274)))

(assert (= (and b!6548994 (is-ElementMatch!16422 (regOne!33357 r!7292))) b!6549737))

(assert (= (and b!6548994 (is-Concat!25267 (regOne!33357 r!7292))) b!6549738))

(assert (= (and b!6548994 (is-Star!16422 (regOne!33357 r!7292))) b!6549739))

(assert (= (and b!6548994 (is-Union!16422 (regOne!33357 r!7292))) b!6549740))

(declare-fun b!6549744 () Bool)

(declare-fun e!3965554 () Bool)

(declare-fun tp!1811281 () Bool)

(declare-fun tp!1811277 () Bool)

(assert (=> b!6549744 (= e!3965554 (and tp!1811281 tp!1811277))))

(assert (=> b!6548994 (= tp!1811209 e!3965554)))

(declare-fun b!6549741 () Bool)

(assert (=> b!6549741 (= e!3965554 tp_is_empty!42097)))

(declare-fun b!6549742 () Bool)

(declare-fun tp!1811278 () Bool)

(declare-fun tp!1811280 () Bool)

(assert (=> b!6549742 (= e!3965554 (and tp!1811278 tp!1811280))))

(declare-fun b!6549743 () Bool)

(declare-fun tp!1811279 () Bool)

(assert (=> b!6549743 (= e!3965554 tp!1811279)))

(assert (= (and b!6548994 (is-ElementMatch!16422 (regTwo!33357 r!7292))) b!6549741))

(assert (= (and b!6548994 (is-Concat!25267 (regTwo!33357 r!7292))) b!6549742))

(assert (= (and b!6548994 (is-Star!16422 (regTwo!33357 r!7292))) b!6549743))

(assert (= (and b!6548994 (is-Union!16422 (regTwo!33357 r!7292))) b!6549744))

(declare-fun condSetEmpty!44697 () Bool)

(assert (=> setNonEmpty!44691 (= condSetEmpty!44697 (= setRest!44691 (as set.empty (Set Context!11612))))))

(declare-fun setRes!44697 () Bool)

(assert (=> setNonEmpty!44691 (= tp!1811203 setRes!44697)))

(declare-fun setIsEmpty!44697 () Bool)

(assert (=> setIsEmpty!44697 setRes!44697))

(declare-fun setElem!44697 () Context!11612)

(declare-fun tp!1811286 () Bool)

(declare-fun e!3965557 () Bool)

(declare-fun setNonEmpty!44697 () Bool)

(assert (=> setNonEmpty!44697 (= setRes!44697 (and tp!1811286 (inv!84303 setElem!44697) e!3965557))))

(declare-fun setRest!44697 () (Set Context!11612))

(assert (=> setNonEmpty!44697 (= setRest!44691 (set.union (set.insert setElem!44697 (as set.empty (Set Context!11612))) setRest!44697))))

(declare-fun b!6549749 () Bool)

(declare-fun tp!1811287 () Bool)

(assert (=> b!6549749 (= e!3965557 tp!1811287)))

(assert (= (and setNonEmpty!44691 condSetEmpty!44697) setIsEmpty!44697))

(assert (= (and setNonEmpty!44691 (not condSetEmpty!44697)) setNonEmpty!44697))

(assert (= setNonEmpty!44697 b!6549749))

(declare-fun m!7332342 () Bool)

(assert (=> setNonEmpty!44697 m!7332342))

(declare-fun b!6549753 () Bool)

(declare-fun e!3965558 () Bool)

(declare-fun tp!1811292 () Bool)

(declare-fun tp!1811288 () Bool)

(assert (=> b!6549753 (= e!3965558 (and tp!1811292 tp!1811288))))

(assert (=> b!6549009 (= tp!1811204 e!3965558)))

(declare-fun b!6549750 () Bool)

(assert (=> b!6549750 (= e!3965558 tp_is_empty!42097)))

(declare-fun b!6549751 () Bool)

(declare-fun tp!1811289 () Bool)

(declare-fun tp!1811291 () Bool)

(assert (=> b!6549751 (= e!3965558 (and tp!1811289 tp!1811291))))

(declare-fun b!6549752 () Bool)

(declare-fun tp!1811290 () Bool)

(assert (=> b!6549752 (= e!3965558 tp!1811290)))

(assert (= (and b!6549009 (is-ElementMatch!16422 (regOne!33356 r!7292))) b!6549750))

(assert (= (and b!6549009 (is-Concat!25267 (regOne!33356 r!7292))) b!6549751))

(assert (= (and b!6549009 (is-Star!16422 (regOne!33356 r!7292))) b!6549752))

(assert (= (and b!6549009 (is-Union!16422 (regOne!33356 r!7292))) b!6549753))

(declare-fun b!6549757 () Bool)

(declare-fun e!3965559 () Bool)

(declare-fun tp!1811297 () Bool)

(declare-fun tp!1811293 () Bool)

(assert (=> b!6549757 (= e!3965559 (and tp!1811297 tp!1811293))))

(assert (=> b!6549009 (= tp!1811200 e!3965559)))

(declare-fun b!6549754 () Bool)

(assert (=> b!6549754 (= e!3965559 tp_is_empty!42097)))

(declare-fun b!6549755 () Bool)

(declare-fun tp!1811294 () Bool)

(declare-fun tp!1811296 () Bool)

(assert (=> b!6549755 (= e!3965559 (and tp!1811294 tp!1811296))))

(declare-fun b!6549756 () Bool)

(declare-fun tp!1811295 () Bool)

(assert (=> b!6549756 (= e!3965559 tp!1811295)))

(assert (= (and b!6549009 (is-ElementMatch!16422 (regTwo!33356 r!7292))) b!6549754))

(assert (= (and b!6549009 (is-Concat!25267 (regTwo!33356 r!7292))) b!6549755))

(assert (= (and b!6549009 (is-Star!16422 (regTwo!33356 r!7292))) b!6549756))

(assert (= (and b!6549009 (is-Union!16422 (regTwo!33356 r!7292))) b!6549757))

(declare-fun b_lambda!247891 () Bool)

(assert (= b_lambda!247883 (or b!6548993 b_lambda!247891)))

(declare-fun bs!1672138 () Bool)

(declare-fun d!2055715 () Bool)

(assert (= bs!1672138 (and d!2055715 b!6548993)))

(assert (=> bs!1672138 (= (dynLambda!26016 lambda!363664 lt!2401658) (derivationStepZipperUp!1596 lt!2401658 (h!71891 s!2326)))))

(assert (=> bs!1672138 m!7331628))

(assert (=> d!2055573 d!2055715))

(declare-fun b_lambda!247893 () Bool)

(assert (= b_lambda!247887 (or b!6548993 b_lambda!247893)))

(declare-fun bs!1672139 () Bool)

(declare-fun d!2055717 () Bool)

(assert (= bs!1672139 (and d!2055717 b!6548993)))

(assert (=> bs!1672139 (= (dynLambda!26016 lambda!363664 lt!2401631) (derivationStepZipperUp!1596 lt!2401631 (h!71891 s!2326)))))

(assert (=> bs!1672139 m!7331670))

(assert (=> d!2055697 d!2055717))

(declare-fun b_lambda!247895 () Bool)

(assert (= b_lambda!247885 (or b!6549029 b_lambda!247895)))

(declare-fun bs!1672140 () Bool)

(declare-fun d!2055719 () Bool)

(assert (= bs!1672140 (and d!2055719 b!6549029)))

(declare-fun lt!2401944 () Unit!159023)

(assert (=> bs!1672140 (= lt!2401944 (lemmaConcatPreservesForall!395 (exprs!6306 lt!2401658) lt!2401657 lambda!363666))))

(assert (=> bs!1672140 (= (dynLambda!26017 lambda!363665 lt!2401658) (Context!11613 (++!14547 (exprs!6306 lt!2401658) lt!2401657)))))

(declare-fun m!7332344 () Bool)

(assert (=> bs!1672140 m!7332344))

(declare-fun m!7332346 () Bool)

(assert (=> bs!1672140 m!7332346))

(assert (=> d!2055583 d!2055719))

(declare-fun b_lambda!247897 () Bool)

(assert (= b_lambda!247881 (or b!6548993 b_lambda!247897)))

(declare-fun bs!1672141 () Bool)

(declare-fun d!2055721 () Bool)

(assert (= bs!1672141 (and d!2055721 b!6548993)))

(assert (=> bs!1672141 (= (dynLambda!26016 lambda!363664 lt!2401670) (derivationStepZipperUp!1596 lt!2401670 (h!71891 s!2326)))))

(assert (=> bs!1672141 m!7331632))

(assert (=> d!2055569 d!2055721))

(declare-fun b_lambda!247899 () Bool)

(assert (= b_lambda!247889 (or b!6548993 b_lambda!247899)))

(declare-fun bs!1672142 () Bool)

(declare-fun d!2055723 () Bool)

(assert (= bs!1672142 (and d!2055723 b!6548993)))

(assert (=> bs!1672142 (= (dynLambda!26016 lambda!363664 (h!71890 zl!343)) (derivationStepZipperUp!1596 (h!71890 zl!343) (h!71891 s!2326)))))

(assert (=> bs!1672142 m!7331526))

(assert (=> d!2055701 d!2055723))

(push 1)

(assert (not b!6549460))

(assert (not d!2055579))

(assert (not bm!569628))

(assert (not bm!569629))

(assert (not b!6549735))

(assert (not b!6549245))

(assert (not b!6549727))

(assert (not d!2055697))

(assert (not b!6549736))

(assert (not bm!569659))

(assert (not b!6549609))

(assert (not d!2055705))

(assert (not bm!569654))

(assert (not d!2055629))

(assert (not b!6549660))

(assert (not d!2055627))

(assert (not b!6549324))

(assert (not b!6549325))

(assert (not b!6549611))

(assert (not d!2055565))

(assert (not b!6549387))

(assert (not b!6549443))

(assert (not b!6549399))

(assert (not d!2055645))

(assert (not b!6549752))

(assert (not b!6549698))

(assert (not bm!569627))

(assert (not b!6549563))

(assert (not d!2055667))

(assert (not b!6549757))

(assert (not b!6549412))

(assert (not b!6549656))

(assert (not b!6549682))

(assert (not b!6549318))

(assert (not b!6549392))

(assert (not b!6549556))

(assert (not b!6549447))

(assert (not b!6549205))

(assert (not b!6549702))

(assert (not b!6549751))

(assert (not bm!569661))

(assert (not b!6549703))

(assert (not b!6549726))

(assert (not b!6549390))

(assert (not b!6549395))

(assert (not b!6549207))

(assert (not b!6549440))

(assert (not b!6549222))

(assert (not d!2055689))

(assert (not d!2055559))

(assert (not bs!1672139))

(assert (not d!2055575))

(assert (not b!6549240))

(assert (not b!6549386))

(assert (not d!2055619))

(assert (not b!6549208))

(assert (not b!6549744))

(assert (not bm!569631))

(assert (not b!6549450))

(assert (not bm!569624))

(assert (not b!6549389))

(assert (not b!6549471))

(assert (not b!6549603))

(assert (not bs!1672138))

(assert (not d!2055663))

(assert (not d!2055633))

(assert (not d!2055693))

(assert (not d!2055643))

(assert (not b!6549526))

(assert (not b!6549632))

(assert (not d!2055699))

(assert (not b!6549446))

(assert (not bm!569656))

(assert (not b!6549361))

(assert (not b!6549227))

(assert (not d!2055595))

(assert (not b_lambda!247891))

(assert (not d!2055573))

(assert (not bm!569633))

(assert (not b!6549749))

(assert (not b!6549402))

(assert (not b_lambda!247895))

(assert (not b!6549559))

(assert (not b!6549529))

(assert (not b!6549728))

(assert (not d!2055607))

(assert (not b!6549422))

(assert (not b!6549323))

(assert (not b!6549491))

(assert (not b!6549564))

(assert (not b!6549569))

(assert (not b!6549669))

(assert (not b!6549558))

(assert (not d!2055679))

(assert (not bm!569666))

(assert (not bm!569648))

(assert (not b!6549223))

(assert (not b!6549328))

(assert (not d!2055599))

(assert (not bm!569649))

(assert (not b!6549742))

(assert (not bm!569630))

(assert (not b!6549687))

(assert (not d!2055713))

(assert (not b!6549739))

(assert (not bm!569634))

(assert (not b!6549630))

(assert (not d!2055647))

(assert (not b!6549743))

(assert (not d!2055561))

(assert (not b!6549557))

(assert (not d!2055603))

(assert (not b!6549675))

(assert (not b!6549461))

(assert (not bm!569658))

(assert (not d!2055635))

(assert (not b!6549604))

(assert (not d!2055687))

(assert (not b!6549506))

(assert (not b!6549477))

(assert (not b!6549620))

(assert (not b!6549457))

(assert (not b!6549436))

(assert (not b!6549321))

(assert (not b!6549486))

(assert (not bm!569626))

(assert (not d!2055609))

(assert (not b!6549505))

(assert (not b!6549755))

(assert (not b!6549407))

(assert (not bm!569657))

(assert (not b!6549738))

(assert (not d!2055615))

(assert (not b!6549380))

(assert (not bs!1672141))

(assert (not d!2055587))

(assert (not d!2055651))

(assert (not b!6549487))

(assert (not b!6549228))

(assert (not b!6549602))

(assert (not b!6549431))

(assert (not b!6549382))

(assert (not b!6549568))

(assert (not d!2055625))

(assert (not b!6549459))

(assert (not b!6549413))

(assert (not d!2055623))

(assert (not d!2055583))

(assert (not d!2055585))

(assert (not d!2055655))

(assert (not d!2055605))

(assert (not b!6549714))

(assert (not b!6549416))

(assert (not d!2055661))

(assert (not d!2055591))

(assert (not d!2055685))

(assert (not b!6549661))

(assert (not bs!1672142))

(assert (not b_lambda!247897))

(assert (not d!2055611))

(assert (not b!6549674))

(assert (not b!6549633))

(assert (not b!6549433))

(assert (not b!6549753))

(assert (not bm!569664))

(assert (not b!6549662))

(assert (not d!2055581))

(assert (not b!6549562))

(assert (not b!6549631))

(assert (not d!2055621))

(assert (not b!6549445))

(assert (not b!6549286))

(assert (not b!6549464))

(assert (not d!2055555))

(assert (not b!6549664))

(assert (not d!2055701))

(assert (not d!2055649))

(assert (not b!6549426))

(assert (not d!2055569))

(assert (not b!6549488))

(assert (not d!2055675))

(assert (not b!6549484))

(assert (not b!6549454))

(assert (not bs!1672140))

(assert (not b!6549432))

(assert (not bm!569614))

(assert (not b!6549634))

(assert (not setNonEmpty!44697))

(assert (not bm!569607))

(assert (not b!6549740))

(assert (not b!6549621))

(assert (not b!6549657))

(assert (not b!6549467))

(assert (not b!6549494))

(assert (not d!2055567))

(assert (not d!2055577))

(assert (not b!6549495))

(assert (not b!6549686))

(assert (not b!6549528))

(assert (not d!2055601))

(assert (not b!6549468))

(assert (not b!6549610))

(assert (not d!2055557))

(assert (not b!6549206))

(assert (not bm!569635))

(assert (not bm!569608))

(assert (not d!2055681))

(assert (not b!6549429))

(assert (not b!6549708))

(assert (not d!2055671))

(assert (not bm!569632))

(assert (not d!2055637))

(assert (not b!6549605))

(assert (not d!2055665))

(assert (not d!2055683))

(assert (not b!6549659))

(assert (not d!2055669))

(assert (not d!2055657))

(assert (not b!6549381))

(assert (not bm!569613))

(assert (not d!2055639))

(assert (not bm!569652))

(assert (not b_lambda!247893))

(assert (not b!6549709))

(assert (not d!2055593))

(assert (not b!6549567))

(assert (not b!6549532))

(assert (not b_lambda!247899))

(assert (not b!6549533))

(assert (not bm!569660))

(assert tp_is_empty!42097)

(assert (not b!6549241))

(assert (not b!6549388))

(assert (not b!6549531))

(assert (not b!6549681))

(assert (not b!6549397))

(assert (not b!6549481))

(assert (not bm!569617))

(assert (not b!6549398))

(assert (not d!2055613))

(assert (not d!2055653))

(assert (not b!6549756))

(assert (not b!6549280))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

