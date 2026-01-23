; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579458 () Bool)

(assert start!579458)

(declare-fun b!5578158 () Bool)

(assert (=> b!5578158 true))

(assert (=> b!5578158 true))

(declare-fun lambda!299061 () Int)

(declare-fun lambda!299060 () Int)

(assert (=> b!5578158 (not (= lambda!299061 lambda!299060))))

(assert (=> b!5578158 true))

(assert (=> b!5578158 true))

(declare-fun b!5578152 () Bool)

(assert (=> b!5578152 true))

(declare-fun b!5578132 () Bool)

(declare-fun res!2367430 () Bool)

(declare-fun e!3442089 () Bool)

(assert (=> b!5578132 (=> res!2367430 e!3442089)))

(declare-datatypes ((C!31388 0))(
  ( (C!31389 (val!25396 Int)) )
))
(declare-datatypes ((Regex!15559 0))(
  ( (ElementMatch!15559 (c!976600 C!31388)) (Concat!24404 (regOne!31630 Regex!15559) (regTwo!31630 Regex!15559)) (EmptyExpr!15559) (Star!15559 (reg!15888 Regex!15559)) (EmptyLang!15559) (Union!15559 (regOne!31631 Regex!15559) (regTwo!31631 Regex!15559)) )
))
(declare-fun r!7292 () Regex!15559)

(declare-datatypes ((List!62976 0))(
  ( (Nil!62852) (Cons!62852 (h!69300 Regex!15559) (t!376247 List!62976)) )
))
(declare-datatypes ((Context!9886 0))(
  ( (Context!9887 (exprs!5443 List!62976)) )
))
(declare-datatypes ((List!62977 0))(
  ( (Nil!62853) (Cons!62853 (h!69301 Context!9886) (t!376248 List!62977)) )
))
(declare-fun zl!343 () List!62977)

(declare-fun generalisedConcat!1174 (List!62976) Regex!15559)

(assert (=> b!5578132 (= res!2367430 (not (= r!7292 (generalisedConcat!1174 (exprs!5443 (h!69301 zl!343))))))))

(declare-fun b!5578133 () Bool)

(declare-fun e!3442079 () Bool)

(declare-fun tp_is_empty!40371 () Bool)

(assert (=> b!5578133 (= e!3442079 tp_is_empty!40371)))

(declare-fun setIsEmpty!37113 () Bool)

(declare-fun setRes!37113 () Bool)

(assert (=> setIsEmpty!37113 setRes!37113))

(declare-fun res!2367436 () Bool)

(declare-fun e!3442080 () Bool)

(assert (=> start!579458 (=> (not res!2367436) (not e!3442080))))

(declare-fun validRegex!7295 (Regex!15559) Bool)

(assert (=> start!579458 (= res!2367436 (validRegex!7295 r!7292))))

(assert (=> start!579458 e!3442080))

(assert (=> start!579458 e!3442079))

(declare-fun condSetEmpty!37113 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9886))

(assert (=> start!579458 (= condSetEmpty!37113 (= z!1189 ((as const (Array Context!9886 Bool)) false)))))

(assert (=> start!579458 setRes!37113))

(declare-fun e!3442093 () Bool)

(assert (=> start!579458 e!3442093))

(declare-fun e!3442077 () Bool)

(assert (=> start!579458 e!3442077))

(declare-fun b!5578134 () Bool)

(declare-fun res!2367425 () Bool)

(assert (=> b!5578134 (=> (not res!2367425) (not e!3442080))))

(declare-fun toList!9343 ((InoxSet Context!9886)) List!62977)

(assert (=> b!5578134 (= res!2367425 (= (toList!9343 z!1189) zl!343))))

(declare-fun b!5578135 () Bool)

(declare-fun e!3442083 () Bool)

(declare-fun e!3442088 () Bool)

(assert (=> b!5578135 (= e!3442083 e!3442088)))

(declare-fun res!2367420 () Bool)

(assert (=> b!5578135 (=> res!2367420 e!3442088)))

(declare-fun lt!2252997 () (InoxSet Context!9886))

(declare-datatypes ((List!62978 0))(
  ( (Nil!62854) (Cons!62854 (h!69302 C!31388) (t!376249 List!62978)) )
))
(declare-fun s!2326 () List!62978)

(declare-fun lt!2252993 () Bool)

(declare-fun matchZipper!1697 ((InoxSet Context!9886) List!62978) Bool)

(assert (=> b!5578135 (= res!2367420 (not (= lt!2252993 (matchZipper!1697 lt!2252997 (t!376249 s!2326)))))))

(declare-fun lt!2252985 () (InoxSet Context!9886))

(assert (=> b!5578135 (= lt!2252993 (matchZipper!1697 lt!2252985 s!2326))))

(declare-fun b!5578136 () Bool)

(declare-datatypes ((Unit!155608 0))(
  ( (Unit!155609) )
))
(declare-fun e!3442086 () Unit!155608)

(declare-fun Unit!155610 () Unit!155608)

(assert (=> b!5578136 (= e!3442086 Unit!155610)))

(declare-fun e!3442084 () Bool)

(declare-fun setElem!37113 () Context!9886)

(declare-fun setNonEmpty!37113 () Bool)

(declare-fun tp!1543656 () Bool)

(declare-fun inv!82144 (Context!9886) Bool)

(assert (=> setNonEmpty!37113 (= setRes!37113 (and tp!1543656 (inv!82144 setElem!37113) e!3442084))))

(declare-fun setRest!37113 () (InoxSet Context!9886))

(assert (=> setNonEmpty!37113 (= z!1189 ((_ map or) (store ((as const (Array Context!9886 Bool)) false) setElem!37113 true) setRest!37113))))

(declare-fun b!5578137 () Bool)

(declare-fun tp!1543650 () Bool)

(declare-fun e!3442091 () Bool)

(assert (=> b!5578137 (= e!3442093 (and (inv!82144 (h!69301 zl!343)) e!3442091 tp!1543650))))

(declare-fun b!5578138 () Bool)

(declare-fun lt!2252989 () Bool)

(assert (=> b!5578138 (= e!3442088 (= lt!2252993 lt!2252989))))

(declare-fun lt!2252981 () Bool)

(assert (=> b!5578138 (= lt!2252981 lt!2252989)))

(declare-fun e!3442078 () Bool)

(assert (=> b!5578138 (= lt!2252989 e!3442078)))

(declare-fun res!2367438 () Bool)

(assert (=> b!5578138 (=> res!2367438 e!3442078)))

(declare-fun lt!2252972 () Bool)

(assert (=> b!5578138 (= res!2367438 lt!2252972)))

(declare-fun lt!2252995 () (InoxSet Context!9886))

(assert (=> b!5578138 (= lt!2252981 (matchZipper!1697 lt!2252995 (t!376249 s!2326)))))

(declare-fun lt!2252980 () (InoxSet Context!9886))

(declare-fun lt!2252983 () (InoxSet Context!9886))

(declare-fun lt!2252982 () Unit!155608)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!584 ((InoxSet Context!9886) (InoxSet Context!9886) List!62978) Unit!155608)

(assert (=> b!5578138 (= lt!2252982 (lemmaZipperConcatMatchesSameAsBothZippers!584 lt!2252983 lt!2252980 (t!376249 s!2326)))))

(declare-fun b!5578139 () Bool)

(declare-fun e!3442087 () Bool)

(declare-fun e!3442090 () Bool)

(assert (=> b!5578139 (= e!3442087 e!3442090)))

(declare-fun res!2367431 () Bool)

(assert (=> b!5578139 (=> res!2367431 e!3442090)))

(declare-fun nullable!5591 (Regex!15559) Bool)

(assert (=> b!5578139 (= res!2367431 (not (nullable!5591 (regOne!31631 (regOne!31630 r!7292)))))))

(declare-fun lambda!299062 () Int)

(declare-fun lt!2252987 () Context!9886)

(declare-fun flatMap!1172 ((InoxSet Context!9886) Int) (InoxSet Context!9886))

(declare-fun derivationStepZipperUp!827 (Context!9886 C!31388) (InoxSet Context!9886))

(assert (=> b!5578139 (= (flatMap!1172 lt!2252985 lambda!299062) (derivationStepZipperUp!827 lt!2252987 (h!69302 s!2326)))))

(declare-fun lt!2252994 () Unit!155608)

(declare-fun lemmaFlatMapOnSingletonSet!704 ((InoxSet Context!9886) Context!9886 Int) Unit!155608)

(assert (=> b!5578139 (= lt!2252994 (lemmaFlatMapOnSingletonSet!704 lt!2252985 lt!2252987 lambda!299062))))

(declare-fun lt!2252979 () (InoxSet Context!9886))

(assert (=> b!5578139 (= lt!2252979 (derivationStepZipperUp!827 lt!2252987 (h!69302 s!2326)))))

(declare-fun derivationStepZipper!1658 ((InoxSet Context!9886) C!31388) (InoxSet Context!9886))

(assert (=> b!5578139 (= lt!2252997 (derivationStepZipper!1658 lt!2252985 (h!69302 s!2326)))))

(assert (=> b!5578139 (= lt!2252985 (store ((as const (Array Context!9886 Bool)) false) lt!2252987 true))))

(assert (=> b!5578139 (= lt!2252987 (Context!9887 (Cons!62852 (regOne!31631 (regOne!31630 r!7292)) (t!376247 (exprs!5443 (h!69301 zl!343))))))))

(declare-fun b!5578140 () Bool)

(declare-fun res!2367428 () Bool)

(assert (=> b!5578140 (=> res!2367428 e!3442089)))

(get-info :version)

(assert (=> b!5578140 (= res!2367428 (not ((_ is Cons!62852) (exprs!5443 (h!69301 zl!343)))))))

(declare-fun b!5578141 () Bool)

(declare-fun tp!1543652 () Bool)

(declare-fun tp!1543655 () Bool)

(assert (=> b!5578141 (= e!3442079 (and tp!1543652 tp!1543655))))

(declare-fun b!5578142 () Bool)

(assert (=> b!5578142 (= e!3442078 (matchZipper!1697 lt!2252980 (t!376249 s!2326)))))

(declare-fun b!5578143 () Bool)

(declare-fun Unit!155611 () Unit!155608)

(assert (=> b!5578143 (= e!3442086 Unit!155611)))

(declare-fun lt!2252986 () (InoxSet Context!9886))

(declare-fun lt!2252976 () Unit!155608)

(assert (=> b!5578143 (= lt!2252976 (lemmaZipperConcatMatchesSameAsBothZippers!584 lt!2252986 lt!2252980 (t!376249 s!2326)))))

(declare-fun res!2367422 () Bool)

(assert (=> b!5578143 (= res!2367422 (matchZipper!1697 lt!2252986 (t!376249 s!2326)))))

(declare-fun e!3442082 () Bool)

(assert (=> b!5578143 (=> res!2367422 e!3442082)))

(assert (=> b!5578143 (= (matchZipper!1697 ((_ map or) lt!2252986 lt!2252980) (t!376249 s!2326)) e!3442082)))

(declare-fun b!5578144 () Bool)

(declare-fun tp!1543651 () Bool)

(assert (=> b!5578144 (= e!3442091 tp!1543651)))

(declare-fun b!5578145 () Bool)

(declare-fun res!2367426 () Bool)

(assert (=> b!5578145 (=> res!2367426 e!3442089)))

(declare-fun isEmpty!34659 (List!62977) Bool)

(assert (=> b!5578145 (= res!2367426 (not (isEmpty!34659 (t!376248 zl!343))))))

(declare-fun b!5578146 () Bool)

(declare-fun e!3442085 () Bool)

(declare-fun e!3442092 () Bool)

(assert (=> b!5578146 (= e!3442085 e!3442092)))

(declare-fun res!2367418 () Bool)

(assert (=> b!5578146 (=> res!2367418 e!3442092)))

(declare-fun lt!2252988 () (InoxSet Context!9886))

(assert (=> b!5578146 (= res!2367418 (not (= lt!2252986 lt!2252988)))))

(declare-fun lt!2252974 () (InoxSet Context!9886))

(assert (=> b!5578146 (= lt!2252988 ((_ map or) lt!2252983 lt!2252974))))

(declare-fun lt!2252996 () Context!9886)

(declare-fun derivationStepZipperDown!901 (Regex!15559 Context!9886 C!31388) (InoxSet Context!9886))

(assert (=> b!5578146 (= lt!2252974 (derivationStepZipperDown!901 (regTwo!31631 (regOne!31630 r!7292)) lt!2252996 (h!69302 s!2326)))))

(assert (=> b!5578146 (= lt!2252983 (derivationStepZipperDown!901 (regOne!31631 (regOne!31630 r!7292)) lt!2252996 (h!69302 s!2326)))))

(declare-fun b!5578147 () Bool)

(assert (=> b!5578147 (= e!3442092 e!3442087)))

(declare-fun res!2367434 () Bool)

(assert (=> b!5578147 (=> res!2367434 e!3442087)))

(declare-fun e!3442094 () Bool)

(assert (=> b!5578147 (= res!2367434 e!3442094)))

(declare-fun res!2367419 () Bool)

(assert (=> b!5578147 (=> (not res!2367419) (not e!3442094))))

(assert (=> b!5578147 (= res!2367419 (not (= (matchZipper!1697 lt!2252986 (t!376249 s!2326)) lt!2252972)))))

(declare-fun e!3442081 () Bool)

(assert (=> b!5578147 (= (matchZipper!1697 lt!2252988 (t!376249 s!2326)) e!3442081)))

(declare-fun res!2367433 () Bool)

(assert (=> b!5578147 (=> res!2367433 e!3442081)))

(assert (=> b!5578147 (= res!2367433 lt!2252972)))

(assert (=> b!5578147 (= lt!2252972 (matchZipper!1697 lt!2252983 (t!376249 s!2326)))))

(declare-fun lt!2252991 () Unit!155608)

(assert (=> b!5578147 (= lt!2252991 (lemmaZipperConcatMatchesSameAsBothZippers!584 lt!2252983 lt!2252974 (t!376249 s!2326)))))

(declare-fun b!5578148 () Bool)

(declare-fun tp!1543659 () Bool)

(declare-fun tp!1543653 () Bool)

(assert (=> b!5578148 (= e!3442079 (and tp!1543659 tp!1543653))))

(declare-fun b!5578149 () Bool)

(declare-fun res!2367432 () Bool)

(declare-fun e!3442095 () Bool)

(assert (=> b!5578149 (=> res!2367432 e!3442095)))

(declare-fun isEmpty!34660 (List!62976) Bool)

(assert (=> b!5578149 (= res!2367432 (isEmpty!34660 (t!376247 (exprs!5443 (h!69301 zl!343)))))))

(declare-fun b!5578150 () Bool)

(declare-fun tp!1543658 () Bool)

(assert (=> b!5578150 (= e!3442079 tp!1543658)))

(declare-fun b!5578151 () Bool)

(declare-fun tp!1543654 () Bool)

(assert (=> b!5578151 (= e!3442084 tp!1543654)))

(assert (=> b!5578152 (= e!3442095 e!3442085)))

(declare-fun res!2367427 () Bool)

(assert (=> b!5578152 (=> res!2367427 e!3442085)))

(assert (=> b!5578152 (= res!2367427 (or (and ((_ is ElementMatch!15559) (regOne!31630 r!7292)) (= (c!976600 (regOne!31630 r!7292)) (h!69302 s!2326))) (not ((_ is Union!15559) (regOne!31630 r!7292)))))))

(declare-fun lt!2252978 () Unit!155608)

(assert (=> b!5578152 (= lt!2252978 e!3442086)))

(declare-fun c!976599 () Bool)

(assert (=> b!5578152 (= c!976599 (nullable!5591 (h!69300 (exprs!5443 (h!69301 zl!343)))))))

(assert (=> b!5578152 (= (flatMap!1172 z!1189 lambda!299062) (derivationStepZipperUp!827 (h!69301 zl!343) (h!69302 s!2326)))))

(declare-fun lt!2252998 () Unit!155608)

(assert (=> b!5578152 (= lt!2252998 (lemmaFlatMapOnSingletonSet!704 z!1189 (h!69301 zl!343) lambda!299062))))

(assert (=> b!5578152 (= lt!2252980 (derivationStepZipperUp!827 lt!2252996 (h!69302 s!2326)))))

(assert (=> b!5578152 (= lt!2252986 (derivationStepZipperDown!901 (h!69300 (exprs!5443 (h!69301 zl!343))) lt!2252996 (h!69302 s!2326)))))

(assert (=> b!5578152 (= lt!2252996 (Context!9887 (t!376247 (exprs!5443 (h!69301 zl!343)))))))

(declare-fun lt!2252992 () (InoxSet Context!9886))

(assert (=> b!5578152 (= lt!2252992 (derivationStepZipperUp!827 (Context!9887 (Cons!62852 (h!69300 (exprs!5443 (h!69301 zl!343))) (t!376247 (exprs!5443 (h!69301 zl!343))))) (h!69302 s!2326)))))

(declare-fun b!5578153 () Bool)

(assert (=> b!5578153 (= e!3442094 (not (matchZipper!1697 lt!2252974 (t!376249 s!2326))))))

(declare-fun b!5578154 () Bool)

(declare-fun res!2367423 () Bool)

(assert (=> b!5578154 (=> res!2367423 e!3442089)))

(declare-fun generalisedUnion!1422 (List!62976) Regex!15559)

(declare-fun unfocusZipperList!987 (List!62977) List!62976)

(assert (=> b!5578154 (= res!2367423 (not (= r!7292 (generalisedUnion!1422 (unfocusZipperList!987 zl!343)))))))

(declare-fun b!5578155 () Bool)

(declare-fun res!2367435 () Bool)

(assert (=> b!5578155 (=> (not res!2367435) (not e!3442080))))

(declare-fun unfocusZipper!1301 (List!62977) Regex!15559)

(assert (=> b!5578155 (= res!2367435 (= r!7292 (unfocusZipper!1301 zl!343)))))

(declare-fun b!5578156 () Bool)

(assert (=> b!5578156 (= e!3442082 (matchZipper!1697 lt!2252980 (t!376249 s!2326)))))

(declare-fun b!5578157 () Bool)

(declare-fun tp!1543657 () Bool)

(assert (=> b!5578157 (= e!3442077 (and tp_is_empty!40371 tp!1543657))))

(assert (=> b!5578158 (= e!3442089 e!3442095)))

(declare-fun res!2367424 () Bool)

(assert (=> b!5578158 (=> res!2367424 e!3442095)))

(declare-fun lt!2252990 () Bool)

(declare-fun lt!2252977 () Bool)

(assert (=> b!5578158 (= res!2367424 (or (not (= lt!2252990 lt!2252977)) ((_ is Nil!62854) s!2326)))))

(declare-fun Exists!2659 (Int) Bool)

(assert (=> b!5578158 (= (Exists!2659 lambda!299060) (Exists!2659 lambda!299061))))

(declare-fun lt!2252973 () Unit!155608)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1288 (Regex!15559 Regex!15559 List!62978) Unit!155608)

(assert (=> b!5578158 (= lt!2252973 (lemmaExistCutMatchRandMatchRSpecEquivalent!1288 (regOne!31630 r!7292) (regTwo!31630 r!7292) s!2326))))

(assert (=> b!5578158 (= lt!2252977 (Exists!2659 lambda!299060))))

(declare-datatypes ((tuple2!65312 0))(
  ( (tuple2!65313 (_1!35959 List!62978) (_2!35959 List!62978)) )
))
(declare-datatypes ((Option!15568 0))(
  ( (None!15567) (Some!15567 (v!51608 tuple2!65312)) )
))
(declare-fun isDefined!12271 (Option!15568) Bool)

(declare-fun findConcatSeparation!1982 (Regex!15559 Regex!15559 List!62978 List!62978 List!62978) Option!15568)

(assert (=> b!5578158 (= lt!2252977 (isDefined!12271 (findConcatSeparation!1982 (regOne!31630 r!7292) (regTwo!31630 r!7292) Nil!62854 s!2326 s!2326)))))

(declare-fun lt!2252975 () Unit!155608)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1746 (Regex!15559 Regex!15559 List!62978) Unit!155608)

(assert (=> b!5578158 (= lt!2252975 (lemmaFindConcatSeparationEquivalentToExists!1746 (regOne!31630 r!7292) (regTwo!31630 r!7292) s!2326))))

(declare-fun b!5578159 () Bool)

(assert (=> b!5578159 (= e!3442090 e!3442083)))

(declare-fun res!2367429 () Bool)

(assert (=> b!5578159 (=> res!2367429 e!3442083)))

(assert (=> b!5578159 (= res!2367429 (or (not (= lt!2252979 lt!2252995)) (not (= lt!2252997 lt!2252995))))))

(assert (=> b!5578159 (= lt!2252995 ((_ map or) lt!2252983 lt!2252980))))

(declare-fun b!5578160 () Bool)

(declare-fun res!2367437 () Bool)

(assert (=> b!5578160 (=> res!2367437 e!3442089)))

(assert (=> b!5578160 (= res!2367437 (or ((_ is EmptyExpr!15559) r!7292) ((_ is EmptyLang!15559) r!7292) ((_ is ElementMatch!15559) r!7292) ((_ is Union!15559) r!7292) (not ((_ is Concat!24404) r!7292))))))

(declare-fun b!5578161 () Bool)

(assert (=> b!5578161 (= e!3442081 (matchZipper!1697 lt!2252974 (t!376249 s!2326)))))

(declare-fun b!5578162 () Bool)

(assert (=> b!5578162 (= e!3442080 (not e!3442089))))

(declare-fun res!2367421 () Bool)

(assert (=> b!5578162 (=> res!2367421 e!3442089)))

(assert (=> b!5578162 (= res!2367421 (not ((_ is Cons!62853) zl!343)))))

(declare-fun matchRSpec!2662 (Regex!15559 List!62978) Bool)

(assert (=> b!5578162 (= lt!2252990 (matchRSpec!2662 r!7292 s!2326))))

(declare-fun matchR!7744 (Regex!15559 List!62978) Bool)

(assert (=> b!5578162 (= lt!2252990 (matchR!7744 r!7292 s!2326))))

(declare-fun lt!2252984 () Unit!155608)

(declare-fun mainMatchTheorem!2662 (Regex!15559 List!62978) Unit!155608)

(assert (=> b!5578162 (= lt!2252984 (mainMatchTheorem!2662 r!7292 s!2326))))

(assert (= (and start!579458 res!2367436) b!5578134))

(assert (= (and b!5578134 res!2367425) b!5578155))

(assert (= (and b!5578155 res!2367435) b!5578162))

(assert (= (and b!5578162 (not res!2367421)) b!5578145))

(assert (= (and b!5578145 (not res!2367426)) b!5578132))

(assert (= (and b!5578132 (not res!2367430)) b!5578140))

(assert (= (and b!5578140 (not res!2367428)) b!5578154))

(assert (= (and b!5578154 (not res!2367423)) b!5578160))

(assert (= (and b!5578160 (not res!2367437)) b!5578158))

(assert (= (and b!5578158 (not res!2367424)) b!5578149))

(assert (= (and b!5578149 (not res!2367432)) b!5578152))

(assert (= (and b!5578152 c!976599) b!5578143))

(assert (= (and b!5578152 (not c!976599)) b!5578136))

(assert (= (and b!5578143 (not res!2367422)) b!5578156))

(assert (= (and b!5578152 (not res!2367427)) b!5578146))

(assert (= (and b!5578146 (not res!2367418)) b!5578147))

(assert (= (and b!5578147 (not res!2367433)) b!5578161))

(assert (= (and b!5578147 res!2367419) b!5578153))

(assert (= (and b!5578147 (not res!2367434)) b!5578139))

(assert (= (and b!5578139 (not res!2367431)) b!5578159))

(assert (= (and b!5578159 (not res!2367429)) b!5578135))

(assert (= (and b!5578135 (not res!2367420)) b!5578138))

(assert (= (and b!5578138 (not res!2367438)) b!5578142))

(assert (= (and start!579458 ((_ is ElementMatch!15559) r!7292)) b!5578133))

(assert (= (and start!579458 ((_ is Concat!24404) r!7292)) b!5578148))

(assert (= (and start!579458 ((_ is Star!15559) r!7292)) b!5578150))

(assert (= (and start!579458 ((_ is Union!15559) r!7292)) b!5578141))

(assert (= (and start!579458 condSetEmpty!37113) setIsEmpty!37113))

(assert (= (and start!579458 (not condSetEmpty!37113)) setNonEmpty!37113))

(assert (= setNonEmpty!37113 b!5578151))

(assert (= b!5578137 b!5578144))

(assert (= (and start!579458 ((_ is Cons!62853) zl!343)) b!5578137))

(assert (= (and start!579458 ((_ is Cons!62854) s!2326)) b!5578157))

(declare-fun m!6560830 () Bool)

(assert (=> b!5578134 m!6560830))

(declare-fun m!6560832 () Bool)

(assert (=> b!5578145 m!6560832))

(declare-fun m!6560834 () Bool)

(assert (=> b!5578137 m!6560834))

(declare-fun m!6560836 () Bool)

(assert (=> start!579458 m!6560836))

(declare-fun m!6560838 () Bool)

(assert (=> b!5578153 m!6560838))

(declare-fun m!6560840 () Bool)

(assert (=> b!5578149 m!6560840))

(declare-fun m!6560842 () Bool)

(assert (=> b!5578132 m!6560842))

(declare-fun m!6560844 () Bool)

(assert (=> setNonEmpty!37113 m!6560844))

(declare-fun m!6560846 () Bool)

(assert (=> b!5578146 m!6560846))

(declare-fun m!6560848 () Bool)

(assert (=> b!5578146 m!6560848))

(declare-fun m!6560850 () Bool)

(assert (=> b!5578158 m!6560850))

(declare-fun m!6560852 () Bool)

(assert (=> b!5578158 m!6560852))

(declare-fun m!6560854 () Bool)

(assert (=> b!5578158 m!6560854))

(declare-fun m!6560856 () Bool)

(assert (=> b!5578158 m!6560856))

(assert (=> b!5578158 m!6560850))

(declare-fun m!6560858 () Bool)

(assert (=> b!5578158 m!6560858))

(assert (=> b!5578158 m!6560852))

(declare-fun m!6560860 () Bool)

(assert (=> b!5578158 m!6560860))

(declare-fun m!6560862 () Bool)

(assert (=> b!5578162 m!6560862))

(declare-fun m!6560864 () Bool)

(assert (=> b!5578162 m!6560864))

(declare-fun m!6560866 () Bool)

(assert (=> b!5578162 m!6560866))

(declare-fun m!6560868 () Bool)

(assert (=> b!5578154 m!6560868))

(assert (=> b!5578154 m!6560868))

(declare-fun m!6560870 () Bool)

(assert (=> b!5578154 m!6560870))

(declare-fun m!6560872 () Bool)

(assert (=> b!5578155 m!6560872))

(assert (=> b!5578161 m!6560838))

(declare-fun m!6560874 () Bool)

(assert (=> b!5578147 m!6560874))

(declare-fun m!6560876 () Bool)

(assert (=> b!5578147 m!6560876))

(declare-fun m!6560878 () Bool)

(assert (=> b!5578147 m!6560878))

(declare-fun m!6560880 () Bool)

(assert (=> b!5578147 m!6560880))

(declare-fun m!6560882 () Bool)

(assert (=> b!5578152 m!6560882))

(declare-fun m!6560884 () Bool)

(assert (=> b!5578152 m!6560884))

(declare-fun m!6560886 () Bool)

(assert (=> b!5578152 m!6560886))

(declare-fun m!6560888 () Bool)

(assert (=> b!5578152 m!6560888))

(declare-fun m!6560890 () Bool)

(assert (=> b!5578152 m!6560890))

(declare-fun m!6560892 () Bool)

(assert (=> b!5578152 m!6560892))

(declare-fun m!6560894 () Bool)

(assert (=> b!5578152 m!6560894))

(declare-fun m!6560896 () Bool)

(assert (=> b!5578138 m!6560896))

(declare-fun m!6560898 () Bool)

(assert (=> b!5578138 m!6560898))

(declare-fun m!6560900 () Bool)

(assert (=> b!5578135 m!6560900))

(declare-fun m!6560902 () Bool)

(assert (=> b!5578135 m!6560902))

(declare-fun m!6560904 () Bool)

(assert (=> b!5578143 m!6560904))

(assert (=> b!5578143 m!6560874))

(declare-fun m!6560906 () Bool)

(assert (=> b!5578143 m!6560906))

(declare-fun m!6560908 () Bool)

(assert (=> b!5578139 m!6560908))

(declare-fun m!6560910 () Bool)

(assert (=> b!5578139 m!6560910))

(declare-fun m!6560912 () Bool)

(assert (=> b!5578139 m!6560912))

(declare-fun m!6560914 () Bool)

(assert (=> b!5578139 m!6560914))

(declare-fun m!6560916 () Bool)

(assert (=> b!5578139 m!6560916))

(declare-fun m!6560918 () Bool)

(assert (=> b!5578139 m!6560918))

(declare-fun m!6560920 () Bool)

(assert (=> b!5578156 m!6560920))

(assert (=> b!5578142 m!6560920))

(check-sat (not b!5578138) (not b!5578146) (not b!5578154) (not b!5578152) (not b!5578137) (not b!5578151) (not b!5578144) (not b!5578141) (not b!5578142) (not b!5578162) (not b!5578132) (not b!5578157) (not setNonEmpty!37113) (not start!579458) (not b!5578161) (not b!5578134) (not b!5578145) (not b!5578148) tp_is_empty!40371 (not b!5578139) (not b!5578149) (not b!5578135) (not b!5578150) (not b!5578156) (not b!5578155) (not b!5578147) (not b!5578143) (not b!5578153) (not b!5578158))
(check-sat)
