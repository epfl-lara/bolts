; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557774 () Bool)

(assert start!557774)

(declare-fun b!5282835 () Bool)

(assert (=> b!5282835 true))

(assert (=> b!5282835 true))

(declare-fun lambda!266958 () Int)

(declare-fun lambda!266957 () Int)

(assert (=> b!5282835 (not (= lambda!266958 lambda!266957))))

(assert (=> b!5282835 true))

(assert (=> b!5282835 true))

(declare-fun b!5282833 () Bool)

(assert (=> b!5282833 true))

(declare-fun b!5282830 () Bool)

(declare-fun res!2240480 () Bool)

(declare-fun e!3284731 () Bool)

(assert (=> b!5282830 (=> res!2240480 e!3284731)))

(declare-datatypes ((C!30084 0))(
  ( (C!30085 (val!24744 Int)) )
))
(declare-datatypes ((Regex!14907 0))(
  ( (ElementMatch!14907 (c!915895 C!30084)) (Concat!23752 (regOne!30326 Regex!14907) (regTwo!30326 Regex!14907)) (EmptyExpr!14907) (Star!14907 (reg!15236 Regex!14907)) (EmptyLang!14907) (Union!14907 (regOne!30327 Regex!14907) (regTwo!30327 Regex!14907)) )
))
(declare-fun r!7292 () Regex!14907)

(declare-datatypes ((List!61020 0))(
  ( (Nil!60896) (Cons!60896 (h!67344 Regex!14907) (t!374223 List!61020)) )
))
(declare-datatypes ((Context!8582 0))(
  ( (Context!8583 (exprs!4791 List!61020)) )
))
(declare-datatypes ((List!61021 0))(
  ( (Nil!60897) (Cons!60897 (h!67345 Context!8582) (t!374224 List!61021)) )
))
(declare-fun zl!343 () List!61021)

(declare-fun generalisedConcat!576 (List!61020) Regex!14907)

(assert (=> b!5282830 (= res!2240480 (not (= r!7292 (generalisedConcat!576 (exprs!4791 (h!67345 zl!343))))))))

(declare-fun b!5282831 () Bool)

(declare-fun e!3284723 () Bool)

(declare-fun tp_is_empty!39067 () Bool)

(assert (=> b!5282831 (= e!3284723 tp_is_empty!39067)))

(declare-fun b!5282832 () Bool)

(declare-fun e!3284716 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2159136 () (InoxSet Context!8582))

(declare-datatypes ((List!61022 0))(
  ( (Nil!60898) (Cons!60898 (h!67346 C!30084) (t!374225 List!61022)) )
))
(declare-fun s!2326 () List!61022)

(declare-fun matchZipper!1151 ((InoxSet Context!8582) List!61022) Bool)

(assert (=> b!5282832 (= e!3284716 (not (matchZipper!1151 lt!2159136 (t!374225 s!2326))))))

(declare-fun e!3284734 () Bool)

(declare-fun e!3284728 () Bool)

(assert (=> b!5282833 (= e!3284734 e!3284728)))

(declare-fun res!2240489 () Bool)

(assert (=> b!5282833 (=> res!2240489 e!3284728)))

(get-info :version)

(assert (=> b!5282833 (= res!2240489 (or (and ((_ is ElementMatch!14907) (regOne!30326 r!7292)) (= (c!915895 (regOne!30326 r!7292)) (h!67346 s!2326))) ((_ is Union!14907) (regOne!30326 r!7292)) (not ((_ is Concat!23752) (regOne!30326 r!7292)))))))

(declare-datatypes ((Unit!153146 0))(
  ( (Unit!153147) )
))
(declare-fun lt!2159142 () Unit!153146)

(declare-fun e!3284717 () Unit!153146)

(assert (=> b!5282833 (= lt!2159142 e!3284717)))

(declare-fun c!915894 () Bool)

(declare-fun nullable!5076 (Regex!14907) Bool)

(assert (=> b!5282833 (= c!915894 (nullable!5076 (h!67344 (exprs!4791 (h!67345 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8582))

(declare-fun lambda!266959 () Int)

(declare-fun flatMap!634 ((InoxSet Context!8582) Int) (InoxSet Context!8582))

(declare-fun derivationStepZipperUp!279 (Context!8582 C!30084) (InoxSet Context!8582))

(assert (=> b!5282833 (= (flatMap!634 z!1189 lambda!266959) (derivationStepZipperUp!279 (h!67345 zl!343) (h!67346 s!2326)))))

(declare-fun lt!2159150 () Unit!153146)

(declare-fun lemmaFlatMapOnSingletonSet!166 ((InoxSet Context!8582) Context!8582 Int) Unit!153146)

(assert (=> b!5282833 (= lt!2159150 (lemmaFlatMapOnSingletonSet!166 z!1189 (h!67345 zl!343) lambda!266959))))

(declare-fun lt!2159170 () (InoxSet Context!8582))

(declare-fun lt!2159139 () Context!8582)

(assert (=> b!5282833 (= lt!2159170 (derivationStepZipperUp!279 lt!2159139 (h!67346 s!2326)))))

(declare-fun lt!2159167 () (InoxSet Context!8582))

(declare-fun derivationStepZipperDown!355 (Regex!14907 Context!8582 C!30084) (InoxSet Context!8582))

(assert (=> b!5282833 (= lt!2159167 (derivationStepZipperDown!355 (h!67344 (exprs!4791 (h!67345 zl!343))) lt!2159139 (h!67346 s!2326)))))

(assert (=> b!5282833 (= lt!2159139 (Context!8583 (t!374223 (exprs!4791 (h!67345 zl!343)))))))

(declare-fun lt!2159148 () (InoxSet Context!8582))

(assert (=> b!5282833 (= lt!2159148 (derivationStepZipperUp!279 (Context!8583 (Cons!60896 (h!67344 (exprs!4791 (h!67345 zl!343))) (t!374223 (exprs!4791 (h!67345 zl!343))))) (h!67346 s!2326)))))

(declare-fun b!5282834 () Bool)

(declare-fun res!2240488 () Bool)

(assert (=> b!5282834 (=> res!2240488 e!3284728)))

(assert (=> b!5282834 (= res!2240488 (not (nullable!5076 (regOne!30326 (regOne!30326 r!7292)))))))

(assert (=> b!5282835 (= e!3284731 e!3284734)))

(declare-fun res!2240487 () Bool)

(assert (=> b!5282835 (=> res!2240487 e!3284734)))

(declare-fun lt!2159149 () Bool)

(declare-fun lt!2159137 () Bool)

(assert (=> b!5282835 (= res!2240487 (or (not (= lt!2159137 lt!2159149)) ((_ is Nil!60898) s!2326)))))

(declare-fun Exists!2088 (Int) Bool)

(assert (=> b!5282835 (= (Exists!2088 lambda!266957) (Exists!2088 lambda!266958))))

(declare-fun lt!2159155 () Unit!153146)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!742 (Regex!14907 Regex!14907 List!61022) Unit!153146)

(assert (=> b!5282835 (= lt!2159155 (lemmaExistCutMatchRandMatchRSpecEquivalent!742 (regOne!30326 r!7292) (regTwo!30326 r!7292) s!2326))))

(assert (=> b!5282835 (= lt!2159149 (Exists!2088 lambda!266957))))

(declare-datatypes ((tuple2!64212 0))(
  ( (tuple2!64213 (_1!35409 List!61022) (_2!35409 List!61022)) )
))
(declare-datatypes ((Option!15018 0))(
  ( (None!15017) (Some!15017 (v!51046 tuple2!64212)) )
))
(declare-fun isDefined!11721 (Option!15018) Bool)

(declare-fun findConcatSeparation!1432 (Regex!14907 Regex!14907 List!61022 List!61022 List!61022) Option!15018)

(assert (=> b!5282835 (= lt!2159149 (isDefined!11721 (findConcatSeparation!1432 (regOne!30326 r!7292) (regTwo!30326 r!7292) Nil!60898 s!2326 s!2326)))))

(declare-fun lt!2159156 () Unit!153146)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1196 (Regex!14907 Regex!14907 List!61022) Unit!153146)

(assert (=> b!5282835 (= lt!2159156 (lemmaFindConcatSeparationEquivalentToExists!1196 (regOne!30326 r!7292) (regTwo!30326 r!7292) s!2326))))

(declare-fun b!5282836 () Bool)

(declare-fun e!3284724 () Bool)

(declare-fun tp!1475652 () Bool)

(assert (=> b!5282836 (= e!3284724 tp!1475652)))

(declare-fun res!2240477 () Bool)

(declare-fun e!3284725 () Bool)

(assert (=> start!557774 (=> (not res!2240477) (not e!3284725))))

(declare-fun validRegex!6643 (Regex!14907) Bool)

(assert (=> start!557774 (= res!2240477 (validRegex!6643 r!7292))))

(assert (=> start!557774 e!3284725))

(assert (=> start!557774 e!3284723))

(declare-fun condSetEmpty!33869 () Bool)

(assert (=> start!557774 (= condSetEmpty!33869 (= z!1189 ((as const (Array Context!8582 Bool)) false)))))

(declare-fun setRes!33869 () Bool)

(assert (=> start!557774 setRes!33869))

(declare-fun e!3284715 () Bool)

(assert (=> start!557774 e!3284715))

(declare-fun e!3284719 () Bool)

(assert (=> start!557774 e!3284719))

(declare-fun b!5282837 () Bool)

(declare-fun res!2240485 () Bool)

(assert (=> b!5282837 (=> res!2240485 e!3284731)))

(declare-fun generalisedUnion!836 (List!61020) Regex!14907)

(declare-fun unfocusZipperList!349 (List!61021) List!61020)

(assert (=> b!5282837 (= res!2240485 (not (= r!7292 (generalisedUnion!836 (unfocusZipperList!349 zl!343)))))))

(declare-fun b!5282838 () Bool)

(declare-fun e!3284720 () Bool)

(declare-fun tp!1475651 () Bool)

(assert (=> b!5282838 (= e!3284720 tp!1475651)))

(declare-fun b!5282839 () Bool)

(declare-fun e!3284718 () Bool)

(assert (=> b!5282839 (= e!3284718 (matchZipper!1151 lt!2159136 (t!374225 s!2326)))))

(declare-fun b!5282840 () Bool)

(declare-fun e!3284729 () Bool)

(declare-fun e!3284730 () Bool)

(assert (=> b!5282840 (= e!3284729 e!3284730)))

(declare-fun res!2240468 () Bool)

(assert (=> b!5282840 (=> res!2240468 e!3284730)))

(declare-fun lt!2159153 () List!61021)

(declare-fun zipperDepthTotal!68 (List!61021) Int)

(assert (=> b!5282840 (= res!2240468 (>= (zipperDepthTotal!68 lt!2159153) (zipperDepthTotal!68 zl!343)))))

(declare-fun lt!2159160 () Context!8582)

(assert (=> b!5282840 (= lt!2159153 (Cons!60897 lt!2159160 Nil!60897))))

(declare-fun b!5282841 () Bool)

(declare-fun e!3284732 () Bool)

(assert (=> b!5282841 (= e!3284732 e!3284729)))

(declare-fun res!2240490 () Bool)

(assert (=> b!5282841 (=> res!2240490 e!3284729)))

(declare-fun e!3284721 () Bool)

(assert (=> b!5282841 (= res!2240490 e!3284721)))

(declare-fun res!2240492 () Bool)

(assert (=> b!5282841 (=> (not res!2240492) (not e!3284721))))

(declare-fun lt!2159154 () Bool)

(declare-fun lt!2159135 () (InoxSet Context!8582))

(assert (=> b!5282841 (= res!2240492 (not (= lt!2159154 (matchZipper!1151 lt!2159135 (t!374225 s!2326)))))))

(declare-fun lt!2159151 () (InoxSet Context!8582))

(declare-fun e!3284733 () Bool)

(assert (=> b!5282841 (= (matchZipper!1151 lt!2159151 (t!374225 s!2326)) e!3284733)))

(declare-fun res!2240473 () Bool)

(assert (=> b!5282841 (=> res!2240473 e!3284733)))

(declare-fun lt!2159152 () Bool)

(assert (=> b!5282841 (= res!2240473 lt!2159152)))

(declare-fun lt!2159147 () (InoxSet Context!8582))

(declare-fun lt!2159159 () Unit!153146)

(declare-fun lt!2159138 () (InoxSet Context!8582))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!144 ((InoxSet Context!8582) (InoxSet Context!8582) List!61022) Unit!153146)

(assert (=> b!5282841 (= lt!2159159 (lemmaZipperConcatMatchesSameAsBothZippers!144 lt!2159147 lt!2159138 (t!374225 s!2326)))))

(declare-fun lt!2159143 () Context!8582)

(declare-fun lt!2159164 () (InoxSet Context!8582))

(assert (=> b!5282841 (= (flatMap!634 lt!2159164 lambda!266959) (derivationStepZipperUp!279 lt!2159143 (h!67346 s!2326)))))

(declare-fun lt!2159140 () Unit!153146)

(assert (=> b!5282841 (= lt!2159140 (lemmaFlatMapOnSingletonSet!166 lt!2159164 lt!2159143 lambda!266959))))

(declare-fun b!5282842 () Bool)

(declare-fun derivationStepZipper!1150 ((InoxSet Context!8582) C!30084) (InoxSet Context!8582))

(assert (=> b!5282842 (= e!3284721 (not (matchZipper!1151 (derivationStepZipper!1150 lt!2159164 (h!67346 s!2326)) (t!374225 s!2326))))))

(declare-fun setIsEmpty!33869 () Bool)

(assert (=> setIsEmpty!33869 setRes!33869))

(declare-fun b!5282843 () Bool)

(declare-fun res!2240486 () Bool)

(assert (=> b!5282843 (=> res!2240486 e!3284731)))

(declare-fun isEmpty!32851 (List!61021) Bool)

(assert (=> b!5282843 (= res!2240486 (not (isEmpty!32851 (t!374224 zl!343))))))

(declare-fun b!5282844 () Bool)

(declare-fun res!2240483 () Bool)

(assert (=> b!5282844 (=> res!2240483 e!3284729)))

(assert (=> b!5282844 (= res!2240483 (not (= (exprs!4791 (h!67345 zl!343)) (Cons!60896 (Concat!23752 (regOne!30326 (regOne!30326 r!7292)) (regTwo!30326 (regOne!30326 r!7292))) (t!374223 (exprs!4791 (h!67345 zl!343)))))))))

(declare-fun b!5282845 () Bool)

(declare-fun e!3284722 () Bool)

(assert (=> b!5282845 (= e!3284728 e!3284722)))

(declare-fun res!2240476 () Bool)

(assert (=> b!5282845 (=> res!2240476 e!3284722)))

(declare-fun lt!2159158 () (InoxSet Context!8582))

(assert (=> b!5282845 (= res!2240476 (not (= lt!2159167 lt!2159158)))))

(assert (=> b!5282845 (= lt!2159158 ((_ map or) lt!2159147 lt!2159136))))

(assert (=> b!5282845 (= lt!2159136 (derivationStepZipperDown!355 (regTwo!30326 (regOne!30326 r!7292)) lt!2159139 (h!67346 s!2326)))))

(assert (=> b!5282845 (= lt!2159147 (derivationStepZipperDown!355 (regOne!30326 (regOne!30326 r!7292)) lt!2159143 (h!67346 s!2326)))))

(declare-fun lt!2159144 () List!61020)

(assert (=> b!5282845 (= lt!2159143 (Context!8583 lt!2159144))))

(assert (=> b!5282845 (= lt!2159144 (Cons!60896 (regTwo!30326 (regOne!30326 r!7292)) (t!374223 (exprs!4791 (h!67345 zl!343)))))))

(declare-fun b!5282846 () Bool)

(declare-fun tp!1475648 () Bool)

(declare-fun tp!1475653 () Bool)

(assert (=> b!5282846 (= e!3284723 (and tp!1475648 tp!1475653))))

(declare-fun b!5282847 () Bool)

(declare-fun res!2240479 () Bool)

(assert (=> b!5282847 (=> res!2240479 e!3284731)))

(assert (=> b!5282847 (= res!2240479 (or ((_ is EmptyExpr!14907) r!7292) ((_ is EmptyLang!14907) r!7292) ((_ is ElementMatch!14907) r!7292) ((_ is Union!14907) r!7292) (not ((_ is Concat!23752) r!7292))))))

(declare-fun b!5282848 () Bool)

(declare-fun Unit!153148 () Unit!153146)

(assert (=> b!5282848 (= e!3284717 Unit!153148)))

(declare-fun b!5282849 () Bool)

(assert (=> b!5282849 (= e!3284725 (not e!3284731))))

(declare-fun res!2240469 () Bool)

(assert (=> b!5282849 (=> res!2240469 e!3284731)))

(assert (=> b!5282849 (= res!2240469 (not ((_ is Cons!60897) zl!343)))))

(declare-fun matchRSpec!2010 (Regex!14907 List!61022) Bool)

(assert (=> b!5282849 (= lt!2159137 (matchRSpec!2010 r!7292 s!2326))))

(declare-fun matchR!7092 (Regex!14907 List!61022) Bool)

(assert (=> b!5282849 (= lt!2159137 (matchR!7092 r!7292 s!2326))))

(declare-fun lt!2159169 () Unit!153146)

(declare-fun mainMatchTheorem!2010 (Regex!14907 List!61022) Unit!153146)

(assert (=> b!5282849 (= lt!2159169 (mainMatchTheorem!2010 r!7292 s!2326))))

(declare-fun b!5282850 () Bool)

(declare-fun tp!1475646 () Bool)

(assert (=> b!5282850 (= e!3284723 tp!1475646)))

(declare-fun b!5282851 () Bool)

(declare-fun res!2240470 () Bool)

(assert (=> b!5282851 (=> res!2240470 e!3284729)))

(declare-fun contextDepthTotal!48 (Context!8582) Int)

(assert (=> b!5282851 (= res!2240470 (>= (contextDepthTotal!48 lt!2159160) (contextDepthTotal!48 (h!67345 zl!343))))))

(declare-fun b!5282852 () Bool)

(declare-fun res!2240471 () Bool)

(assert (=> b!5282852 (=> (not res!2240471) (not e!3284725))))

(declare-fun toList!8691 ((InoxSet Context!8582)) List!61021)

(assert (=> b!5282852 (= res!2240471 (= (toList!8691 z!1189) zl!343))))

(declare-fun b!5282853 () Bool)

(declare-fun tp!1475645 () Bool)

(declare-fun inv!80514 (Context!8582) Bool)

(assert (=> b!5282853 (= e!3284715 (and (inv!80514 (h!67345 zl!343)) e!3284724 tp!1475645))))

(declare-fun b!5282854 () Bool)

(assert (=> b!5282854 (= e!3284733 (matchZipper!1151 lt!2159138 (t!374225 s!2326)))))

(declare-fun b!5282855 () Bool)

(assert (=> b!5282855 (= e!3284730 true)))

(declare-fun lt!2159157 () Regex!14907)

(assert (=> b!5282855 (= (matchR!7092 lt!2159157 s!2326) (matchZipper!1151 lt!2159164 s!2326))))

(declare-fun lt!2159162 () Unit!153146)

(declare-fun theoremZipperRegexEquiv!317 ((InoxSet Context!8582) List!61021 Regex!14907 List!61022) Unit!153146)

(assert (=> b!5282855 (= lt!2159162 (theoremZipperRegexEquiv!317 lt!2159164 (Cons!60897 lt!2159143 Nil!60897) lt!2159157 s!2326))))

(assert (=> b!5282855 (= lt!2159157 (generalisedConcat!576 lt!2159144))))

(declare-fun lt!2159161 () Regex!14907)

(declare-fun lt!2159168 () (InoxSet Context!8582))

(assert (=> b!5282855 (= (matchR!7092 lt!2159161 s!2326) (matchZipper!1151 lt!2159168 s!2326))))

(declare-fun lt!2159146 () Unit!153146)

(assert (=> b!5282855 (= lt!2159146 (theoremZipperRegexEquiv!317 lt!2159168 lt!2159153 lt!2159161 s!2326))))

(declare-fun lt!2159166 () List!61020)

(assert (=> b!5282855 (= lt!2159161 (generalisedConcat!576 lt!2159166))))

(declare-fun b!5282856 () Bool)

(declare-fun Unit!153149 () Unit!153146)

(assert (=> b!5282856 (= e!3284717 Unit!153149)))

(declare-fun lt!2159145 () Unit!153146)

(assert (=> b!5282856 (= lt!2159145 (lemmaZipperConcatMatchesSameAsBothZippers!144 lt!2159167 lt!2159170 (t!374225 s!2326)))))

(declare-fun res!2240474 () Bool)

(assert (=> b!5282856 (= res!2240474 (matchZipper!1151 lt!2159167 (t!374225 s!2326)))))

(declare-fun e!3284726 () Bool)

(assert (=> b!5282856 (=> res!2240474 e!3284726)))

(assert (=> b!5282856 (= (matchZipper!1151 ((_ map or) lt!2159167 lt!2159170) (t!374225 s!2326)) e!3284726)))

(declare-fun b!5282857 () Bool)

(declare-fun res!2240484 () Bool)

(assert (=> b!5282857 (=> res!2240484 e!3284734)))

(declare-fun isEmpty!32852 (List!61020) Bool)

(assert (=> b!5282857 (= res!2240484 (isEmpty!32852 (t!374223 (exprs!4791 (h!67345 zl!343)))))))

(declare-fun b!5282858 () Bool)

(assert (=> b!5282858 (= e!3284726 (matchZipper!1151 lt!2159170 (t!374225 s!2326)))))

(declare-fun b!5282859 () Bool)

(declare-fun tp!1475644 () Bool)

(declare-fun tp!1475647 () Bool)

(assert (=> b!5282859 (= e!3284723 (and tp!1475644 tp!1475647))))

(declare-fun b!5282860 () Bool)

(declare-fun tp!1475650 () Bool)

(assert (=> b!5282860 (= e!3284719 (and tp_is_empty!39067 tp!1475650))))

(declare-fun b!5282861 () Bool)

(declare-fun res!2240472 () Bool)

(assert (=> b!5282861 (=> res!2240472 e!3284731)))

(assert (=> b!5282861 (= res!2240472 (not ((_ is Cons!60896) (exprs!4791 (h!67345 zl!343)))))))

(declare-fun b!5282862 () Bool)

(declare-fun e!3284727 () Bool)

(assert (=> b!5282862 (= e!3284727 e!3284732)))

(declare-fun res!2240491 () Bool)

(assert (=> b!5282862 (=> res!2240491 e!3284732)))

(assert (=> b!5282862 (= res!2240491 (not (= lt!2159135 lt!2159151)))))

(assert (=> b!5282862 (= lt!2159151 ((_ map or) lt!2159147 lt!2159138))))

(assert (=> b!5282862 (= lt!2159138 (derivationStepZipperUp!279 lt!2159143 (h!67346 s!2326)))))

(assert (=> b!5282862 (= (flatMap!634 lt!2159168 lambda!266959) (derivationStepZipperUp!279 lt!2159160 (h!67346 s!2326)))))

(declare-fun lt!2159165 () Unit!153146)

(assert (=> b!5282862 (= lt!2159165 (lemmaFlatMapOnSingletonSet!166 lt!2159168 lt!2159160 lambda!266959))))

(declare-fun lt!2159163 () (InoxSet Context!8582))

(assert (=> b!5282862 (= lt!2159163 (derivationStepZipperUp!279 lt!2159160 (h!67346 s!2326)))))

(assert (=> b!5282862 (= lt!2159135 (derivationStepZipper!1150 lt!2159168 (h!67346 s!2326)))))

(assert (=> b!5282862 (= lt!2159164 (store ((as const (Array Context!8582 Bool)) false) lt!2159143 true))))

(assert (=> b!5282862 (= lt!2159168 (store ((as const (Array Context!8582 Bool)) false) lt!2159160 true))))

(assert (=> b!5282862 (= lt!2159160 (Context!8583 lt!2159166))))

(assert (=> b!5282862 (= lt!2159166 (Cons!60896 (regOne!30326 (regOne!30326 r!7292)) lt!2159144))))

(declare-fun b!5282863 () Bool)

(assert (=> b!5282863 (= e!3284722 e!3284727)))

(declare-fun res!2240493 () Bool)

(assert (=> b!5282863 (=> res!2240493 e!3284727)))

(assert (=> b!5282863 (= res!2240493 e!3284716)))

(declare-fun res!2240478 () Bool)

(assert (=> b!5282863 (=> (not res!2240478) (not e!3284716))))

(assert (=> b!5282863 (= res!2240478 (not (= lt!2159154 lt!2159152)))))

(assert (=> b!5282863 (= lt!2159154 (matchZipper!1151 lt!2159167 (t!374225 s!2326)))))

(assert (=> b!5282863 (= (matchZipper!1151 lt!2159158 (t!374225 s!2326)) e!3284718)))

(declare-fun res!2240481 () Bool)

(assert (=> b!5282863 (=> res!2240481 e!3284718)))

(assert (=> b!5282863 (= res!2240481 lt!2159152)))

(assert (=> b!5282863 (= lt!2159152 (matchZipper!1151 lt!2159147 (t!374225 s!2326)))))

(declare-fun lt!2159141 () Unit!153146)

(assert (=> b!5282863 (= lt!2159141 (lemmaZipperConcatMatchesSameAsBothZippers!144 lt!2159147 lt!2159136 (t!374225 s!2326)))))

(declare-fun b!5282864 () Bool)

(declare-fun res!2240475 () Bool)

(assert (=> b!5282864 (=> res!2240475 e!3284730)))

(declare-fun zipperDepth!24 (List!61021) Int)

(assert (=> b!5282864 (= res!2240475 (> (zipperDepth!24 lt!2159153) (zipperDepth!24 zl!343)))))

(declare-fun b!5282865 () Bool)

(declare-fun res!2240482 () Bool)

(assert (=> b!5282865 (=> (not res!2240482) (not e!3284725))))

(declare-fun unfocusZipper!649 (List!61021) Regex!14907)

(assert (=> b!5282865 (= res!2240482 (= r!7292 (unfocusZipper!649 zl!343)))))

(declare-fun setElem!33869 () Context!8582)

(declare-fun setNonEmpty!33869 () Bool)

(declare-fun tp!1475649 () Bool)

(assert (=> setNonEmpty!33869 (= setRes!33869 (and tp!1475649 (inv!80514 setElem!33869) e!3284720))))

(declare-fun setRest!33869 () (InoxSet Context!8582))

(assert (=> setNonEmpty!33869 (= z!1189 ((_ map or) (store ((as const (Array Context!8582 Bool)) false) setElem!33869 true) setRest!33869))))

(assert (= (and start!557774 res!2240477) b!5282852))

(assert (= (and b!5282852 res!2240471) b!5282865))

(assert (= (and b!5282865 res!2240482) b!5282849))

(assert (= (and b!5282849 (not res!2240469)) b!5282843))

(assert (= (and b!5282843 (not res!2240486)) b!5282830))

(assert (= (and b!5282830 (not res!2240480)) b!5282861))

(assert (= (and b!5282861 (not res!2240472)) b!5282837))

(assert (= (and b!5282837 (not res!2240485)) b!5282847))

(assert (= (and b!5282847 (not res!2240479)) b!5282835))

(assert (= (and b!5282835 (not res!2240487)) b!5282857))

(assert (= (and b!5282857 (not res!2240484)) b!5282833))

(assert (= (and b!5282833 c!915894) b!5282856))

(assert (= (and b!5282833 (not c!915894)) b!5282848))

(assert (= (and b!5282856 (not res!2240474)) b!5282858))

(assert (= (and b!5282833 (not res!2240489)) b!5282834))

(assert (= (and b!5282834 (not res!2240488)) b!5282845))

(assert (= (and b!5282845 (not res!2240476)) b!5282863))

(assert (= (and b!5282863 (not res!2240481)) b!5282839))

(assert (= (and b!5282863 res!2240478) b!5282832))

(assert (= (and b!5282863 (not res!2240493)) b!5282862))

(assert (= (and b!5282862 (not res!2240491)) b!5282841))

(assert (= (and b!5282841 (not res!2240473)) b!5282854))

(assert (= (and b!5282841 res!2240492) b!5282842))

(assert (= (and b!5282841 (not res!2240490)) b!5282844))

(assert (= (and b!5282844 (not res!2240483)) b!5282851))

(assert (= (and b!5282851 (not res!2240470)) b!5282840))

(assert (= (and b!5282840 (not res!2240468)) b!5282864))

(assert (= (and b!5282864 (not res!2240475)) b!5282855))

(assert (= (and start!557774 ((_ is ElementMatch!14907) r!7292)) b!5282831))

(assert (= (and start!557774 ((_ is Concat!23752) r!7292)) b!5282859))

(assert (= (and start!557774 ((_ is Star!14907) r!7292)) b!5282850))

(assert (= (and start!557774 ((_ is Union!14907) r!7292)) b!5282846))

(assert (= (and start!557774 condSetEmpty!33869) setIsEmpty!33869))

(assert (= (and start!557774 (not condSetEmpty!33869)) setNonEmpty!33869))

(assert (= setNonEmpty!33869 b!5282838))

(assert (= b!5282853 b!5282836))

(assert (= (and start!557774 ((_ is Cons!60897) zl!343)) b!5282853))

(assert (= (and start!557774 ((_ is Cons!60898) s!2326)) b!5282860))

(declare-fun m!6320576 () Bool)

(assert (=> b!5282853 m!6320576))

(declare-fun m!6320578 () Bool)

(assert (=> b!5282856 m!6320578))

(declare-fun m!6320580 () Bool)

(assert (=> b!5282856 m!6320580))

(declare-fun m!6320582 () Bool)

(assert (=> b!5282856 m!6320582))

(declare-fun m!6320584 () Bool)

(assert (=> b!5282865 m!6320584))

(declare-fun m!6320586 () Bool)

(assert (=> b!5282830 m!6320586))

(assert (=> b!5282863 m!6320580))

(declare-fun m!6320588 () Bool)

(assert (=> b!5282863 m!6320588))

(declare-fun m!6320590 () Bool)

(assert (=> b!5282863 m!6320590))

(declare-fun m!6320592 () Bool)

(assert (=> b!5282863 m!6320592))

(declare-fun m!6320594 () Bool)

(assert (=> b!5282855 m!6320594))

(declare-fun m!6320596 () Bool)

(assert (=> b!5282855 m!6320596))

(declare-fun m!6320598 () Bool)

(assert (=> b!5282855 m!6320598))

(declare-fun m!6320600 () Bool)

(assert (=> b!5282855 m!6320600))

(declare-fun m!6320602 () Bool)

(assert (=> b!5282855 m!6320602))

(declare-fun m!6320604 () Bool)

(assert (=> b!5282855 m!6320604))

(declare-fun m!6320606 () Bool)

(assert (=> b!5282855 m!6320606))

(declare-fun m!6320608 () Bool)

(assert (=> b!5282855 m!6320608))

(declare-fun m!6320610 () Bool)

(assert (=> b!5282845 m!6320610))

(declare-fun m!6320612 () Bool)

(assert (=> b!5282845 m!6320612))

(declare-fun m!6320614 () Bool)

(assert (=> b!5282839 m!6320614))

(declare-fun m!6320616 () Bool)

(assert (=> b!5282843 m!6320616))

(declare-fun m!6320618 () Bool)

(assert (=> b!5282857 m!6320618))

(declare-fun m!6320620 () Bool)

(assert (=> b!5282854 m!6320620))

(declare-fun m!6320622 () Bool)

(assert (=> b!5282858 m!6320622))

(declare-fun m!6320624 () Bool)

(assert (=> start!557774 m!6320624))

(declare-fun m!6320626 () Bool)

(assert (=> b!5282837 m!6320626))

(assert (=> b!5282837 m!6320626))

(declare-fun m!6320628 () Bool)

(assert (=> b!5282837 m!6320628))

(declare-fun m!6320630 () Bool)

(assert (=> setNonEmpty!33869 m!6320630))

(declare-fun m!6320632 () Bool)

(assert (=> b!5282835 m!6320632))

(declare-fun m!6320634 () Bool)

(assert (=> b!5282835 m!6320634))

(declare-fun m!6320636 () Bool)

(assert (=> b!5282835 m!6320636))

(declare-fun m!6320638 () Bool)

(assert (=> b!5282835 m!6320638))

(declare-fun m!6320640 () Bool)

(assert (=> b!5282835 m!6320640))

(assert (=> b!5282835 m!6320632))

(declare-fun m!6320642 () Bool)

(assert (=> b!5282835 m!6320642))

(assert (=> b!5282835 m!6320636))

(declare-fun m!6320644 () Bool)

(assert (=> b!5282841 m!6320644))

(declare-fun m!6320646 () Bool)

(assert (=> b!5282841 m!6320646))

(declare-fun m!6320648 () Bool)

(assert (=> b!5282841 m!6320648))

(declare-fun m!6320650 () Bool)

(assert (=> b!5282841 m!6320650))

(declare-fun m!6320652 () Bool)

(assert (=> b!5282841 m!6320652))

(declare-fun m!6320654 () Bool)

(assert (=> b!5282841 m!6320654))

(declare-fun m!6320656 () Bool)

(assert (=> b!5282833 m!6320656))

(declare-fun m!6320658 () Bool)

(assert (=> b!5282833 m!6320658))

(declare-fun m!6320660 () Bool)

(assert (=> b!5282833 m!6320660))

(declare-fun m!6320662 () Bool)

(assert (=> b!5282833 m!6320662))

(declare-fun m!6320664 () Bool)

(assert (=> b!5282833 m!6320664))

(declare-fun m!6320666 () Bool)

(assert (=> b!5282833 m!6320666))

(declare-fun m!6320668 () Bool)

(assert (=> b!5282833 m!6320668))

(declare-fun m!6320670 () Bool)

(assert (=> b!5282851 m!6320670))

(declare-fun m!6320672 () Bool)

(assert (=> b!5282851 m!6320672))

(declare-fun m!6320674 () Bool)

(assert (=> b!5282834 m!6320674))

(declare-fun m!6320676 () Bool)

(assert (=> b!5282849 m!6320676))

(declare-fun m!6320678 () Bool)

(assert (=> b!5282849 m!6320678))

(declare-fun m!6320680 () Bool)

(assert (=> b!5282849 m!6320680))

(declare-fun m!6320682 () Bool)

(assert (=> b!5282840 m!6320682))

(declare-fun m!6320684 () Bool)

(assert (=> b!5282840 m!6320684))

(declare-fun m!6320686 () Bool)

(assert (=> b!5282862 m!6320686))

(declare-fun m!6320688 () Bool)

(assert (=> b!5282862 m!6320688))

(declare-fun m!6320690 () Bool)

(assert (=> b!5282862 m!6320690))

(declare-fun m!6320692 () Bool)

(assert (=> b!5282862 m!6320692))

(assert (=> b!5282862 m!6320648))

(declare-fun m!6320694 () Bool)

(assert (=> b!5282862 m!6320694))

(declare-fun m!6320696 () Bool)

(assert (=> b!5282862 m!6320696))

(declare-fun m!6320698 () Bool)

(assert (=> b!5282842 m!6320698))

(assert (=> b!5282842 m!6320698))

(declare-fun m!6320700 () Bool)

(assert (=> b!5282842 m!6320700))

(declare-fun m!6320702 () Bool)

(assert (=> b!5282852 m!6320702))

(assert (=> b!5282832 m!6320614))

(declare-fun m!6320704 () Bool)

(assert (=> b!5282864 m!6320704))

(declare-fun m!6320706 () Bool)

(assert (=> b!5282864 m!6320706))

(check-sat (not b!5282837) (not b!5282865) (not b!5282832) (not start!557774) (not b!5282845) (not b!5282855) (not b!5282850) (not b!5282835) (not b!5282841) (not b!5282858) (not b!5282852) (not b!5282843) (not b!5282839) (not b!5282851) (not b!5282834) (not b!5282856) (not b!5282863) (not b!5282836) tp_is_empty!39067 (not b!5282854) (not b!5282862) (not setNonEmpty!33869) (not b!5282846) (not b!5282830) (not b!5282853) (not b!5282838) (not b!5282860) (not b!5282859) (not b!5282849) (not b!5282840) (not b!5282842) (not b!5282864) (not b!5282833) (not b!5282857))
(check-sat)
