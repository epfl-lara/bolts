; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660476 () Bool)

(assert start!660476)

(declare-fun b!6833933 () Bool)

(assert (=> b!6833933 true))

(assert (=> b!6833933 true))

(declare-fun lambda!386189 () Int)

(declare-fun lambda!386188 () Int)

(assert (=> b!6833933 (not (= lambda!386189 lambda!386188))))

(assert (=> b!6833933 true))

(assert (=> b!6833933 true))

(declare-fun lambda!386190 () Int)

(assert (=> b!6833933 (not (= lambda!386190 lambda!386188))))

(assert (=> b!6833933 (not (= lambda!386190 lambda!386189))))

(assert (=> b!6833933 true))

(assert (=> b!6833933 true))

(declare-fun b!6833941 () Bool)

(assert (=> b!6833941 true))

(declare-fun b!6833951 () Bool)

(assert (=> b!6833951 true))

(declare-fun b!6833918 () Bool)

(declare-fun e!4122186 () Bool)

(declare-fun e!4122177 () Bool)

(assert (=> b!6833918 (= e!4122186 e!4122177)))

(declare-fun res!2790550 () Bool)

(assert (=> b!6833918 (=> res!2790550 e!4122177)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33560 0))(
  ( (C!33561 (val!26482 Int)) )
))
(declare-datatypes ((Regex!16645 0))(
  ( (ElementMatch!16645 (c!1272469 C!33560)) (Concat!25490 (regOne!33802 Regex!16645) (regTwo!33802 Regex!16645)) (EmptyExpr!16645) (Star!16645 (reg!16974 Regex!16645)) (EmptyLang!16645) (Union!16645 (regOne!33803 Regex!16645) (regTwo!33803 Regex!16645)) )
))
(declare-datatypes ((List!66234 0))(
  ( (Nil!66110) (Cons!66110 (h!72558 Regex!16645) (t!379977 List!66234)) )
))
(declare-datatypes ((Context!12058 0))(
  ( (Context!12059 (exprs!6529 List!66234)) )
))
(declare-fun lt!2453627 () (InoxSet Context!12058))

(declare-datatypes ((List!66235 0))(
  ( (Nil!66111) (Cons!66111 (h!72559 C!33560) (t!379978 List!66235)) )
))
(declare-fun s!2326 () List!66235)

(declare-fun lt!2453651 () (InoxSet Context!12058))

(declare-fun derivationStepZipper!2589 ((InoxSet Context!12058) C!33560) (InoxSet Context!12058))

(assert (=> b!6833918 (= res!2790550 (not (= lt!2453627 (derivationStepZipper!2589 lt!2453651 (h!72559 s!2326)))))))

(declare-fun lambda!386191 () Int)

(declare-fun lt!2453657 () Context!12058)

(declare-fun flatMap!2126 ((InoxSet Context!12058) Int) (InoxSet Context!12058))

(declare-fun derivationStepZipperUp!1799 (Context!12058 C!33560) (InoxSet Context!12058))

(assert (=> b!6833918 (= (flatMap!2126 lt!2453651 lambda!386191) (derivationStepZipperUp!1799 lt!2453657 (h!72559 s!2326)))))

(declare-datatypes ((Unit!159981 0))(
  ( (Unit!159982) )
))
(declare-fun lt!2453632 () Unit!159981)

(declare-fun lemmaFlatMapOnSingletonSet!1652 ((InoxSet Context!12058) Context!12058 Int) Unit!159981)

(assert (=> b!6833918 (= lt!2453632 (lemmaFlatMapOnSingletonSet!1652 lt!2453651 lt!2453657 lambda!386191))))

(declare-fun lt!2453636 () Context!12058)

(declare-fun lt!2453646 () (InoxSet Context!12058))

(assert (=> b!6833918 (= (flatMap!2126 lt!2453646 lambda!386191) (derivationStepZipperUp!1799 lt!2453636 (h!72559 s!2326)))))

(declare-fun lt!2453631 () Unit!159981)

(assert (=> b!6833918 (= lt!2453631 (lemmaFlatMapOnSingletonSet!1652 lt!2453646 lt!2453636 lambda!386191))))

(declare-fun lt!2453630 () (InoxSet Context!12058))

(assert (=> b!6833918 (= lt!2453630 (derivationStepZipperUp!1799 lt!2453657 (h!72559 s!2326)))))

(declare-fun lt!2453658 () (InoxSet Context!12058))

(assert (=> b!6833918 (= lt!2453658 (derivationStepZipperUp!1799 lt!2453636 (h!72559 s!2326)))))

(assert (=> b!6833918 (= lt!2453651 (store ((as const (Array Context!12058 Bool)) false) lt!2453657 true))))

(assert (=> b!6833918 (= lt!2453646 (store ((as const (Array Context!12058 Bool)) false) lt!2453636 true))))

(declare-fun lt!2453648 () List!66234)

(assert (=> b!6833918 (= lt!2453636 (Context!12059 lt!2453648))))

(declare-fun r!7292 () Regex!16645)

(assert (=> b!6833918 (= lt!2453648 (Cons!66110 (reg!16974 r!7292) Nil!66110))))

(declare-fun b!6833919 () Bool)

(declare-fun e!4122187 () Bool)

(declare-fun tp!1870441 () Bool)

(declare-fun tp!1870442 () Bool)

(assert (=> b!6833919 (= e!4122187 (and tp!1870441 tp!1870442))))

(declare-fun b!6833920 () Bool)

(declare-fun e!4122188 () Bool)

(assert (=> b!6833920 (= e!4122177 e!4122188)))

(declare-fun res!2790548 () Bool)

(assert (=> b!6833920 (=> res!2790548 e!4122188)))

(declare-datatypes ((List!66236 0))(
  ( (Nil!66112) (Cons!66112 (h!72560 Context!12058) (t!379979 List!66236)) )
))
(declare-fun lt!2453634 () List!66236)

(declare-fun unfocusZipper!2387 (List!66236) Regex!16645)

(assert (=> b!6833920 (= res!2790548 (not (= (unfocusZipper!2387 lt!2453634) (reg!16974 r!7292))))))

(assert (=> b!6833920 (= lt!2453634 (Cons!66112 lt!2453636 Nil!66112))))

(declare-fun b!6833921 () Bool)

(declare-fun res!2790547 () Bool)

(declare-fun e!4122169 () Bool)

(assert (=> b!6833921 (=> res!2790547 e!4122169)))

(declare-fun zl!343 () List!66236)

(declare-fun generalisedUnion!2489 (List!66234) Regex!16645)

(declare-fun unfocusZipperList!2066 (List!66236) List!66234)

(assert (=> b!6833921 (= res!2790547 (not (= r!7292 (generalisedUnion!2489 (unfocusZipperList!2066 zl!343)))))))

(declare-fun res!2790565 () Bool)

(declare-fun e!4122185 () Bool)

(assert (=> start!660476 (=> (not res!2790565) (not e!4122185))))

(declare-fun validRegex!8381 (Regex!16645) Bool)

(assert (=> start!660476 (= res!2790565 (validRegex!8381 r!7292))))

(assert (=> start!660476 e!4122185))

(assert (=> start!660476 e!4122187))

(declare-fun condSetEmpty!46927 () Bool)

(declare-fun z!1189 () (InoxSet Context!12058))

(assert (=> start!660476 (= condSetEmpty!46927 (= z!1189 ((as const (Array Context!12058 Bool)) false)))))

(declare-fun setRes!46927 () Bool)

(assert (=> start!660476 setRes!46927))

(declare-fun e!4122175 () Bool)

(assert (=> start!660476 e!4122175))

(declare-fun e!4122178 () Bool)

(assert (=> start!660476 e!4122178))

(declare-fun b!6833922 () Bool)

(declare-fun res!2790569 () Bool)

(assert (=> b!6833922 (=> res!2790569 e!4122169)))

(get-info :version)

(assert (=> b!6833922 (= res!2790569 (or ((_ is EmptyExpr!16645) r!7292) ((_ is EmptyLang!16645) r!7292) ((_ is ElementMatch!16645) r!7292) ((_ is Union!16645) r!7292) ((_ is Concat!25490) r!7292)))))

(declare-fun b!6833923 () Bool)

(declare-fun e!4122179 () Bool)

(assert (=> b!6833923 (= e!4122179 (not e!4122169))))

(declare-fun res!2790564 () Bool)

(assert (=> b!6833923 (=> res!2790564 e!4122169)))

(assert (=> b!6833923 (= res!2790564 (not ((_ is Cons!66112) zl!343)))))

(declare-fun lt!2453654 () Bool)

(declare-fun matchRSpec!3746 (Regex!16645 List!66235) Bool)

(assert (=> b!6833923 (= lt!2453654 (matchRSpec!3746 r!7292 s!2326))))

(declare-fun matchR!8828 (Regex!16645 List!66235) Bool)

(assert (=> b!6833923 (= lt!2453654 (matchR!8828 r!7292 s!2326))))

(declare-fun lt!2453622 () Unit!159981)

(declare-fun mainMatchTheorem!3746 (Regex!16645 List!66235) Unit!159981)

(assert (=> b!6833923 (= lt!2453622 (mainMatchTheorem!3746 r!7292 s!2326))))

(declare-fun b!6833924 () Bool)

(declare-fun res!2790555 () Bool)

(assert (=> b!6833924 (=> res!2790555 e!4122169)))

(declare-fun generalisedConcat!2242 (List!66234) Regex!16645)

(assert (=> b!6833924 (= res!2790555 (not (= r!7292 (generalisedConcat!2242 (exprs!6529 (h!72560 zl!343))))))))

(declare-fun b!6833925 () Bool)

(declare-fun res!2790551 () Bool)

(declare-fun e!4122183 () Bool)

(assert (=> b!6833925 (=> res!2790551 e!4122183)))

(declare-fun lt!2453629 () Regex!16645)

(assert (=> b!6833925 (= res!2790551 (or (not (= lt!2453629 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6833926 () Bool)

(declare-fun e!4122168 () Bool)

(assert (=> b!6833926 (= e!4122168 e!4122183)))

(declare-fun res!2790559 () Bool)

(assert (=> b!6833926 (=> res!2790559 e!4122183)))

(declare-fun derivationStepZipperDown!1873 (Regex!16645 Context!12058 C!33560) (InoxSet Context!12058))

(assert (=> b!6833926 (= res!2790559 (not (= lt!2453627 (derivationStepZipperDown!1873 (reg!16974 r!7292) lt!2453657 (h!72559 s!2326)))))))

(declare-fun lt!2453652 () List!66234)

(assert (=> b!6833926 (= lt!2453657 (Context!12059 lt!2453652))))

(declare-fun lt!2453626 () Context!12058)

(declare-fun lt!2453645 () (InoxSet Context!12058))

(assert (=> b!6833926 (= (flatMap!2126 lt!2453645 lambda!386191) (derivationStepZipperUp!1799 lt!2453626 (h!72559 s!2326)))))

(declare-fun lt!2453659 () Unit!159981)

(assert (=> b!6833926 (= lt!2453659 (lemmaFlatMapOnSingletonSet!1652 lt!2453645 lt!2453626 lambda!386191))))

(declare-fun lt!2453639 () (InoxSet Context!12058))

(assert (=> b!6833926 (= lt!2453639 (derivationStepZipperUp!1799 lt!2453626 (h!72559 s!2326)))))

(assert (=> b!6833926 (= lt!2453645 (store ((as const (Array Context!12058 Bool)) false) lt!2453626 true))))

(assert (=> b!6833926 (= lt!2453626 (Context!12059 (Cons!66110 (reg!16974 r!7292) lt!2453652)))))

(assert (=> b!6833926 (= lt!2453652 (Cons!66110 r!7292 Nil!66110))))

(declare-fun b!6833927 () Bool)

(declare-fun tp!1870447 () Bool)

(assert (=> b!6833927 (= e!4122187 tp!1870447)))

(declare-fun b!6833928 () Bool)

(assert (=> b!6833928 (= e!4122185 e!4122179)))

(declare-fun res!2790544 () Bool)

(assert (=> b!6833928 (=> (not res!2790544) (not e!4122179))))

(assert (=> b!6833928 (= res!2790544 (= r!7292 lt!2453629))))

(assert (=> b!6833928 (= lt!2453629 (unfocusZipper!2387 zl!343))))

(declare-fun setElem!46927 () Context!12058)

(declare-fun setNonEmpty!46927 () Bool)

(declare-fun e!4122184 () Bool)

(declare-fun tp!1870443 () Bool)

(declare-fun inv!84859 (Context!12058) Bool)

(assert (=> setNonEmpty!46927 (= setRes!46927 (and tp!1870443 (inv!84859 setElem!46927) e!4122184))))

(declare-fun setRest!46927 () (InoxSet Context!12058))

(assert (=> setNonEmpty!46927 (= z!1189 ((_ map or) (store ((as const (Array Context!12058 Bool)) false) setElem!46927 true) setRest!46927))))

(declare-fun b!6833929 () Bool)

(declare-fun res!2790557 () Bool)

(assert (=> b!6833929 (=> (not res!2790557) (not e!4122185))))

(declare-fun toList!10429 ((InoxSet Context!12058)) List!66236)

(assert (=> b!6833929 (= res!2790557 (= (toList!10429 z!1189) zl!343))))

(declare-fun b!6833930 () Bool)

(declare-fun tp_is_empty!42543 () Bool)

(declare-fun tp!1870439 () Bool)

(assert (=> b!6833930 (= e!4122178 (and tp_is_empty!42543 tp!1870439))))

(declare-fun b!6833931 () Bool)

(declare-fun tp!1870444 () Bool)

(declare-fun tp!1870445 () Bool)

(assert (=> b!6833931 (= e!4122187 (and tp!1870444 tp!1870445))))

(declare-fun b!6833932 () Bool)

(declare-fun res!2790556 () Bool)

(assert (=> b!6833932 (=> res!2790556 e!4122169)))

(assert (=> b!6833932 (= res!2790556 (not ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343)))))))

(declare-fun e!4122180 () Bool)

(assert (=> b!6833933 (= e!4122169 e!4122180)))

(declare-fun res!2790558 () Bool)

(assert (=> b!6833933 (=> res!2790558 e!4122180)))

(declare-fun e!4122171 () Bool)

(assert (=> b!6833933 (= res!2790558 (not (= lt!2453654 e!4122171)))))

(declare-fun res!2790566 () Bool)

(assert (=> b!6833933 (=> res!2790566 e!4122171)))

(declare-fun isEmpty!38501 (List!66235) Bool)

(assert (=> b!6833933 (= res!2790566 (isEmpty!38501 s!2326))))

(declare-fun Exists!3713 (Int) Bool)

(assert (=> b!6833933 (= (Exists!3713 lambda!386188) (Exists!3713 lambda!386190))))

(declare-fun lt!2453660 () Unit!159981)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2240 (Regex!16645 Regex!16645 List!66235) Unit!159981)

(assert (=> b!6833933 (= lt!2453660 (lemmaExistCutMatchRandMatchRSpecEquivalent!2240 (reg!16974 r!7292) r!7292 s!2326))))

(assert (=> b!6833933 (= (Exists!3713 lambda!386188) (Exists!3713 lambda!386189))))

(declare-fun lt!2453644 () Unit!159981)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!804 (Regex!16645 List!66235) Unit!159981)

(assert (=> b!6833933 (= lt!2453644 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!804 (reg!16974 r!7292) s!2326))))

(declare-fun lt!2453628 () Bool)

(assert (=> b!6833933 (= lt!2453628 (Exists!3713 lambda!386188))))

(declare-datatypes ((tuple2!67240 0))(
  ( (tuple2!67241 (_1!36923 List!66235) (_2!36923 List!66235)) )
))
(declare-datatypes ((Option!16532 0))(
  ( (None!16531) (Some!16531 (v!52743 tuple2!67240)) )
))
(declare-fun isDefined!13235 (Option!16532) Bool)

(declare-fun findConcatSeparation!2946 (Regex!16645 Regex!16645 List!66235 List!66235 List!66235) Option!16532)

(assert (=> b!6833933 (= lt!2453628 (isDefined!13235 (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 Nil!66111 s!2326 s!2326)))))

(declare-fun lt!2453640 () Unit!159981)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2710 (Regex!16645 Regex!16645 List!66235) Unit!159981)

(assert (=> b!6833933 (= lt!2453640 (lemmaFindConcatSeparationEquivalentToExists!2710 (reg!16974 r!7292) r!7292 s!2326))))

(declare-fun b!6833934 () Bool)

(declare-fun res!2790545 () Bool)

(assert (=> b!6833934 (=> res!2790545 e!4122169)))

(declare-fun isEmpty!38502 (List!66236) Bool)

(assert (=> b!6833934 (= res!2790545 (not (isEmpty!38502 (t!379979 zl!343))))))

(declare-fun b!6833935 () Bool)

(assert (=> b!6833935 (= e!4122171 lt!2453628)))

(declare-fun b!6833936 () Bool)

(declare-fun e!4122173 () Bool)

(declare-fun tp!1870446 () Bool)

(assert (=> b!6833936 (= e!4122173 tp!1870446)))

(declare-fun b!6833937 () Bool)

(declare-fun tp!1870440 () Bool)

(assert (=> b!6833937 (= e!4122184 tp!1870440)))

(declare-fun b!6833938 () Bool)

(declare-fun e!4122176 () Bool)

(assert (=> b!6833938 (= e!4122176 (validRegex!8381 r!7292))))

(declare-fun b!6833939 () Bool)

(declare-fun e!4122172 () Bool)

(declare-fun e!4122174 () Bool)

(assert (=> b!6833939 (= e!4122172 e!4122174)))

(declare-fun res!2790546 () Bool)

(assert (=> b!6833939 (=> res!2790546 e!4122174)))

(declare-fun lt!2453635 () Bool)

(assert (=> b!6833939 (= res!2790546 lt!2453635)))

(declare-fun lt!2453650 () Regex!16645)

(assert (=> b!6833939 (= lt!2453635 (matchRSpec!3746 lt!2453650 s!2326))))

(assert (=> b!6833939 (= lt!2453635 (matchR!8828 lt!2453650 s!2326))))

(declare-fun lt!2453623 () Unit!159981)

(assert (=> b!6833939 (= lt!2453623 (mainMatchTheorem!3746 lt!2453650 s!2326))))

(declare-fun b!6833940 () Bool)

(declare-fun res!2790549 () Bool)

(assert (=> b!6833940 (=> res!2790549 e!4122183)))

(declare-fun matchZipper!2631 ((InoxSet Context!12058) List!66235) Bool)

(assert (=> b!6833940 (= res!2790549 (not (= (matchZipper!2631 lt!2453645 s!2326) (matchZipper!2631 (derivationStepZipper!2589 lt!2453645 (h!72559 s!2326)) (t!379978 s!2326)))))))

(declare-fun e!4122181 () Bool)

(assert (=> b!6833941 (= e!4122181 e!4122168)))

(declare-fun res!2790562 () Bool)

(assert (=> b!6833941 (=> res!2790562 e!4122168)))

(declare-fun lt!2453655 () (InoxSet Context!12058))

(assert (=> b!6833941 (= res!2790562 (not (= lt!2453627 lt!2453655)))))

(assert (=> b!6833941 (= (flatMap!2126 z!1189 lambda!386191) (derivationStepZipperUp!1799 (h!72560 zl!343) (h!72559 s!2326)))))

(declare-fun lt!2453624 () Unit!159981)

(assert (=> b!6833941 (= lt!2453624 (lemmaFlatMapOnSingletonSet!1652 z!1189 (h!72560 zl!343) lambda!386191))))

(declare-fun b!6833942 () Bool)

(assert (=> b!6833942 (= e!4122187 tp_is_empty!42543)))

(declare-fun b!6833943 () Bool)

(declare-fun res!2790563 () Bool)

(declare-fun e!4122170 () Bool)

(assert (=> b!6833943 (=> res!2790563 e!4122170)))

(declare-fun lt!2453653 () tuple2!67240)

(assert (=> b!6833943 (= res!2790563 (not (matchZipper!2631 lt!2453651 (_2!36923 lt!2453653))))))

(declare-fun b!6833944 () Bool)

(declare-fun res!2790568 () Bool)

(assert (=> b!6833944 (=> res!2790568 e!4122170)))

(assert (=> b!6833944 (= res!2790568 (not (matchZipper!2631 lt!2453646 (_1!36923 lt!2453653))))))

(declare-fun tp!1870438 () Bool)

(declare-fun b!6833945 () Bool)

(assert (=> b!6833945 (= e!4122175 (and (inv!84859 (h!72560 zl!343)) e!4122173 tp!1870438))))

(declare-fun b!6833946 () Bool)

(declare-fun res!2790554 () Bool)

(assert (=> b!6833946 (=> res!2790554 e!4122174)))

(assert (=> b!6833946 (= res!2790554 (not (matchZipper!2631 z!1189 s!2326)))))

(declare-fun b!6833947 () Bool)

(assert (=> b!6833947 (= e!4122170 e!4122176)))

(declare-fun res!2790567 () Bool)

(assert (=> b!6833947 (=> (not res!2790567) (not e!4122176))))

(assert (=> b!6833947 (= res!2790567 (validRegex!8381 (reg!16974 r!7292)))))

(assert (=> b!6833947 (matchR!8828 r!7292 (_2!36923 lt!2453653))))

(declare-fun lt!2453642 () Unit!159981)

(declare-fun lt!2453637 () List!66236)

(declare-fun theoremZipperRegexEquiv!947 ((InoxSet Context!12058) List!66236 Regex!16645 List!66235) Unit!159981)

(assert (=> b!6833947 (= lt!2453642 (theoremZipperRegexEquiv!947 lt!2453651 lt!2453637 r!7292 (_2!36923 lt!2453653)))))

(assert (=> b!6833947 (matchR!8828 (reg!16974 r!7292) (_1!36923 lt!2453653))))

(declare-fun lt!2453621 () Unit!159981)

(assert (=> b!6833947 (= lt!2453621 (theoremZipperRegexEquiv!947 lt!2453646 lt!2453634 (reg!16974 r!7292) (_1!36923 lt!2453653)))))

(declare-fun lt!2453649 () List!66235)

(declare-fun ++!14836 (List!66234 List!66234) List!66234)

(assert (=> b!6833947 (matchZipper!2631 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 lt!2453648 lt!2453652)) true) lt!2453649)))

(declare-fun lt!2453647 () Unit!159981)

(declare-fun lambda!386193 () Int)

(declare-fun lemmaConcatPreservesForall!474 (List!66234 List!66234 Int) Unit!159981)

(assert (=> b!6833947 (= lt!2453647 (lemmaConcatPreservesForall!474 lt!2453648 lt!2453652 lambda!386193))))

(declare-fun lt!2453625 () Unit!159981)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!268 (Context!12058 Context!12058 List!66235 List!66235) Unit!159981)

(assert (=> b!6833947 (= lt!2453625 (lemmaConcatenateContextMatchesConcatOfStrings!268 lt!2453636 lt!2453657 (_1!36923 lt!2453653) (_2!36923 lt!2453653)))))

(declare-fun b!6833948 () Bool)

(assert (=> b!6833948 (= e!4122180 e!4122181)))

(declare-fun res!2790561 () Bool)

(assert (=> b!6833948 (=> res!2790561 e!4122181)))

(declare-fun lt!2453633 () (InoxSet Context!12058))

(assert (=> b!6833948 (= res!2790561 (not (= lt!2453633 lt!2453655)))))

(assert (=> b!6833948 (= lt!2453655 (derivationStepZipperDown!1873 r!7292 (Context!12059 Nil!66110) (h!72559 s!2326)))))

(assert (=> b!6833948 (= lt!2453633 (derivationStepZipperUp!1799 (Context!12059 (Cons!66110 r!7292 Nil!66110)) (h!72559 s!2326)))))

(assert (=> b!6833948 (= lt!2453627 (derivationStepZipper!2589 z!1189 (h!72559 s!2326)))))

(declare-fun setIsEmpty!46927 () Bool)

(assert (=> setIsEmpty!46927 setRes!46927))

(declare-fun b!6833949 () Bool)

(assert (=> b!6833949 (= e!4122183 e!4122186)))

(declare-fun res!2790570 () Bool)

(assert (=> b!6833949 (=> res!2790570 e!4122186)))

(assert (=> b!6833949 (= res!2790570 (not (= (unfocusZipper!2387 (Cons!66112 lt!2453626 Nil!66112)) lt!2453650)))))

(assert (=> b!6833949 (= lt!2453650 (Concat!25490 (reg!16974 r!7292) r!7292))))

(declare-fun b!6833950 () Bool)

(declare-fun res!2790553 () Bool)

(assert (=> b!6833950 (=> res!2790553 e!4122180)))

(assert (=> b!6833950 (= res!2790553 ((_ is Nil!66111) s!2326))))

(declare-fun e!4122182 () Bool)

(assert (=> b!6833951 (= e!4122174 e!4122182)))

(declare-fun res!2790543 () Bool)

(assert (=> b!6833951 (=> res!2790543 e!4122182)))

(declare-fun appendTo!250 ((InoxSet Context!12058) Context!12058) (InoxSet Context!12058))

(assert (=> b!6833951 (= res!2790543 (not (= (appendTo!250 lt!2453646 lt!2453657) lt!2453645)))))

(declare-fun lambda!386192 () Int)

(declare-fun map!15128 ((InoxSet Context!12058) Int) (InoxSet Context!12058))

(assert (=> b!6833951 (= (map!15128 lt!2453646 lambda!386192) (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 lt!2453648 lt!2453652)) true))))

(declare-fun lt!2453638 () Unit!159981)

(assert (=> b!6833951 (= lt!2453638 (lemmaConcatPreservesForall!474 lt!2453648 lt!2453652 lambda!386193))))

(declare-fun lt!2453656 () Unit!159981)

(declare-fun lemmaMapOnSingletonSet!280 ((InoxSet Context!12058) Context!12058 Int) Unit!159981)

(assert (=> b!6833951 (= lt!2453656 (lemmaMapOnSingletonSet!280 lt!2453646 lt!2453636 lambda!386192))))

(declare-fun b!6833952 () Bool)

(assert (=> b!6833952 (= e!4122188 e!4122172)))

(declare-fun res!2790560 () Bool)

(assert (=> b!6833952 (=> res!2790560 e!4122172)))

(assert (=> b!6833952 (= res!2790560 (not (= (unfocusZipper!2387 lt!2453637) r!7292)))))

(assert (=> b!6833952 (= lt!2453637 (Cons!66112 lt!2453657 Nil!66112))))

(declare-fun b!6833953 () Bool)

(assert (=> b!6833953 (= e!4122182 e!4122170)))

(declare-fun res!2790552 () Bool)

(assert (=> b!6833953 (=> res!2790552 e!4122170)))

(assert (=> b!6833953 (= res!2790552 (not (= s!2326 lt!2453649)))))

(declare-fun ++!14837 (List!66235 List!66235) List!66235)

(assert (=> b!6833953 (= lt!2453649 (++!14837 (_1!36923 lt!2453653) (_2!36923 lt!2453653)))))

(declare-fun lt!2453641 () Option!16532)

(declare-fun get!23037 (Option!16532) tuple2!67240)

(assert (=> b!6833953 (= lt!2453653 (get!23037 lt!2453641))))

(assert (=> b!6833953 (isDefined!13235 lt!2453641)))

(declare-fun findConcatSeparationZippers!254 ((InoxSet Context!12058) (InoxSet Context!12058) List!66235 List!66235 List!66235) Option!16532)

(assert (=> b!6833953 (= lt!2453641 (findConcatSeparationZippers!254 lt!2453646 lt!2453651 Nil!66111 s!2326 s!2326))))

(declare-fun lt!2453643 () Unit!159981)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!254 ((InoxSet Context!12058) Context!12058 List!66235) Unit!159981)

(assert (=> b!6833953 (= lt!2453643 (lemmaConcatZipperMatchesStringThenFindConcatDefined!254 lt!2453646 lt!2453657 s!2326))))

(assert (= (and start!660476 res!2790565) b!6833929))

(assert (= (and b!6833929 res!2790557) b!6833928))

(assert (= (and b!6833928 res!2790544) b!6833923))

(assert (= (and b!6833923 (not res!2790564)) b!6833934))

(assert (= (and b!6833934 (not res!2790545)) b!6833924))

(assert (= (and b!6833924 (not res!2790555)) b!6833932))

(assert (= (and b!6833932 (not res!2790556)) b!6833921))

(assert (= (and b!6833921 (not res!2790547)) b!6833922))

(assert (= (and b!6833922 (not res!2790569)) b!6833933))

(assert (= (and b!6833933 (not res!2790566)) b!6833935))

(assert (= (and b!6833933 (not res!2790558)) b!6833950))

(assert (= (and b!6833950 (not res!2790553)) b!6833948))

(assert (= (and b!6833948 (not res!2790561)) b!6833941))

(assert (= (and b!6833941 (not res!2790562)) b!6833926))

(assert (= (and b!6833926 (not res!2790559)) b!6833940))

(assert (= (and b!6833940 (not res!2790549)) b!6833925))

(assert (= (and b!6833925 (not res!2790551)) b!6833949))

(assert (= (and b!6833949 (not res!2790570)) b!6833918))

(assert (= (and b!6833918 (not res!2790550)) b!6833920))

(assert (= (and b!6833920 (not res!2790548)) b!6833952))

(assert (= (and b!6833952 (not res!2790560)) b!6833939))

(assert (= (and b!6833939 (not res!2790546)) b!6833946))

(assert (= (and b!6833946 (not res!2790554)) b!6833951))

(assert (= (and b!6833951 (not res!2790543)) b!6833953))

(assert (= (and b!6833953 (not res!2790552)) b!6833944))

(assert (= (and b!6833944 (not res!2790568)) b!6833943))

(assert (= (and b!6833943 (not res!2790563)) b!6833947))

(assert (= (and b!6833947 res!2790567) b!6833938))

(assert (= (and start!660476 ((_ is ElementMatch!16645) r!7292)) b!6833942))

(assert (= (and start!660476 ((_ is Concat!25490) r!7292)) b!6833919))

(assert (= (and start!660476 ((_ is Star!16645) r!7292)) b!6833927))

(assert (= (and start!660476 ((_ is Union!16645) r!7292)) b!6833931))

(assert (= (and start!660476 condSetEmpty!46927) setIsEmpty!46927))

(assert (= (and start!660476 (not condSetEmpty!46927)) setNonEmpty!46927))

(assert (= setNonEmpty!46927 b!6833937))

(assert (= b!6833945 b!6833936))

(assert (= (and start!660476 ((_ is Cons!66112) zl!343)) b!6833945))

(assert (= (and start!660476 ((_ is Cons!66111) s!2326)) b!6833930))

(declare-fun m!7579418 () Bool)

(assert (=> b!6833951 m!7579418))

(declare-fun m!7579420 () Bool)

(assert (=> b!6833951 m!7579420))

(declare-fun m!7579422 () Bool)

(assert (=> b!6833951 m!7579422))

(declare-fun m!7579424 () Bool)

(assert (=> b!6833951 m!7579424))

(declare-fun m!7579426 () Bool)

(assert (=> b!6833951 m!7579426))

(declare-fun m!7579428 () Bool)

(assert (=> b!6833951 m!7579428))

(declare-fun m!7579430 () Bool)

(assert (=> b!6833920 m!7579430))

(declare-fun m!7579432 () Bool)

(assert (=> b!6833944 m!7579432))

(declare-fun m!7579434 () Bool)

(assert (=> b!6833940 m!7579434))

(declare-fun m!7579436 () Bool)

(assert (=> b!6833940 m!7579436))

(assert (=> b!6833940 m!7579436))

(declare-fun m!7579438 () Bool)

(assert (=> b!6833940 m!7579438))

(declare-fun m!7579440 () Bool)

(assert (=> b!6833939 m!7579440))

(declare-fun m!7579442 () Bool)

(assert (=> b!6833939 m!7579442))

(declare-fun m!7579444 () Bool)

(assert (=> b!6833939 m!7579444))

(declare-fun m!7579446 () Bool)

(assert (=> b!6833946 m!7579446))

(declare-fun m!7579448 () Bool)

(assert (=> b!6833943 m!7579448))

(declare-fun m!7579450 () Bool)

(assert (=> b!6833929 m!7579450))

(declare-fun m!7579452 () Bool)

(assert (=> b!6833949 m!7579452))

(declare-fun m!7579454 () Bool)

(assert (=> b!6833953 m!7579454))

(declare-fun m!7579456 () Bool)

(assert (=> b!6833953 m!7579456))

(declare-fun m!7579458 () Bool)

(assert (=> b!6833953 m!7579458))

(declare-fun m!7579460 () Bool)

(assert (=> b!6833953 m!7579460))

(declare-fun m!7579462 () Bool)

(assert (=> b!6833953 m!7579462))

(declare-fun m!7579464 () Bool)

(assert (=> b!6833928 m!7579464))

(declare-fun m!7579466 () Bool)

(assert (=> b!6833952 m!7579466))

(declare-fun m!7579468 () Bool)

(assert (=> b!6833933 m!7579468))

(declare-fun m!7579470 () Bool)

(assert (=> b!6833933 m!7579470))

(declare-fun m!7579472 () Bool)

(assert (=> b!6833933 m!7579472))

(declare-fun m!7579474 () Bool)

(assert (=> b!6833933 m!7579474))

(assert (=> b!6833933 m!7579472))

(declare-fun m!7579476 () Bool)

(assert (=> b!6833933 m!7579476))

(declare-fun m!7579478 () Bool)

(assert (=> b!6833933 m!7579478))

(declare-fun m!7579480 () Bool)

(assert (=> b!6833933 m!7579480))

(declare-fun m!7579482 () Bool)

(assert (=> b!6833933 m!7579482))

(assert (=> b!6833933 m!7579474))

(assert (=> b!6833933 m!7579474))

(declare-fun m!7579484 () Bool)

(assert (=> b!6833933 m!7579484))

(declare-fun m!7579486 () Bool)

(assert (=> b!6833923 m!7579486))

(declare-fun m!7579488 () Bool)

(assert (=> b!6833923 m!7579488))

(declare-fun m!7579490 () Bool)

(assert (=> b!6833923 m!7579490))

(declare-fun m!7579492 () Bool)

(assert (=> b!6833934 m!7579492))

(declare-fun m!7579494 () Bool)

(assert (=> setNonEmpty!46927 m!7579494))

(declare-fun m!7579496 () Bool)

(assert (=> b!6833945 m!7579496))

(declare-fun m!7579498 () Bool)

(assert (=> b!6833948 m!7579498))

(declare-fun m!7579500 () Bool)

(assert (=> b!6833948 m!7579500))

(declare-fun m!7579502 () Bool)

(assert (=> b!6833948 m!7579502))

(declare-fun m!7579504 () Bool)

(assert (=> b!6833921 m!7579504))

(assert (=> b!6833921 m!7579504))

(declare-fun m!7579506 () Bool)

(assert (=> b!6833921 m!7579506))

(assert (=> b!6833947 m!7579418))

(assert (=> b!6833947 m!7579424))

(declare-fun m!7579508 () Bool)

(assert (=> b!6833947 m!7579508))

(assert (=> b!6833947 m!7579418))

(declare-fun m!7579510 () Bool)

(assert (=> b!6833947 m!7579510))

(declare-fun m!7579512 () Bool)

(assert (=> b!6833947 m!7579512))

(declare-fun m!7579514 () Bool)

(assert (=> b!6833947 m!7579514))

(declare-fun m!7579516 () Bool)

(assert (=> b!6833947 m!7579516))

(assert (=> b!6833947 m!7579426))

(declare-fun m!7579518 () Bool)

(assert (=> b!6833947 m!7579518))

(declare-fun m!7579520 () Bool)

(assert (=> b!6833947 m!7579520))

(declare-fun m!7579522 () Bool)

(assert (=> b!6833926 m!7579522))

(declare-fun m!7579524 () Bool)

(assert (=> b!6833926 m!7579524))

(declare-fun m!7579526 () Bool)

(assert (=> b!6833926 m!7579526))

(declare-fun m!7579528 () Bool)

(assert (=> b!6833926 m!7579528))

(declare-fun m!7579530 () Bool)

(assert (=> b!6833926 m!7579530))

(declare-fun m!7579532 () Bool)

(assert (=> b!6833924 m!7579532))

(declare-fun m!7579534 () Bool)

(assert (=> b!6833938 m!7579534))

(declare-fun m!7579536 () Bool)

(assert (=> b!6833918 m!7579536))

(declare-fun m!7579538 () Bool)

(assert (=> b!6833918 m!7579538))

(declare-fun m!7579540 () Bool)

(assert (=> b!6833918 m!7579540))

(declare-fun m!7579542 () Bool)

(assert (=> b!6833918 m!7579542))

(declare-fun m!7579544 () Bool)

(assert (=> b!6833918 m!7579544))

(declare-fun m!7579546 () Bool)

(assert (=> b!6833918 m!7579546))

(declare-fun m!7579548 () Bool)

(assert (=> b!6833918 m!7579548))

(declare-fun m!7579550 () Bool)

(assert (=> b!6833918 m!7579550))

(declare-fun m!7579552 () Bool)

(assert (=> b!6833918 m!7579552))

(declare-fun m!7579554 () Bool)

(assert (=> b!6833941 m!7579554))

(declare-fun m!7579556 () Bool)

(assert (=> b!6833941 m!7579556))

(declare-fun m!7579558 () Bool)

(assert (=> b!6833941 m!7579558))

(assert (=> start!660476 m!7579534))

(check-sat (not b!6833920) (not b!6833934) (not b!6833924) (not b!6833919) (not b!6833918) (not b!6833947) (not setNonEmpty!46927) (not b!6833952) (not b!6833938) (not b!6833929) (not b!6833949) (not b!6833923) (not b!6833926) (not b!6833944) (not b!6833939) (not b!6833945) (not b!6833921) (not b!6833943) (not b!6833933) (not b!6833948) (not b!6833936) (not b!6833931) (not b!6833941) (not b!6833930) (not b!6833951) (not b!6833953) tp_is_empty!42543 (not b!6833928) (not b!6833927) (not b!6833940) (not start!660476) (not b!6833946) (not b!6833937))
(check-sat)
(get-model)

(declare-fun d!2149890 () Bool)

(declare-fun c!1272514 () Bool)

(assert (=> d!2149890 (= c!1272514 (isEmpty!38501 s!2326))))

(declare-fun e!4122264 () Bool)

(assert (=> d!2149890 (= (matchZipper!2631 z!1189 s!2326) e!4122264)))

(declare-fun b!6834095 () Bool)

(declare-fun nullableZipper!2346 ((InoxSet Context!12058)) Bool)

(assert (=> b!6834095 (= e!4122264 (nullableZipper!2346 z!1189))))

(declare-fun b!6834096 () Bool)

(declare-fun head!13689 (List!66235) C!33560)

(declare-fun tail!12774 (List!66235) List!66235)

(assert (=> b!6834096 (= e!4122264 (matchZipper!2631 (derivationStepZipper!2589 z!1189 (head!13689 s!2326)) (tail!12774 s!2326)))))

(assert (= (and d!2149890 c!1272514) b!6834095))

(assert (= (and d!2149890 (not c!1272514)) b!6834096))

(assert (=> d!2149890 m!7579480))

(declare-fun m!7579700 () Bool)

(assert (=> b!6834095 m!7579700))

(declare-fun m!7579702 () Bool)

(assert (=> b!6834096 m!7579702))

(assert (=> b!6834096 m!7579702))

(declare-fun m!7579704 () Bool)

(assert (=> b!6834096 m!7579704))

(declare-fun m!7579706 () Bool)

(assert (=> b!6834096 m!7579706))

(assert (=> b!6834096 m!7579704))

(assert (=> b!6834096 m!7579706))

(declare-fun m!7579708 () Bool)

(assert (=> b!6834096 m!7579708))

(assert (=> b!6833946 d!2149890))

(declare-fun bs!1828295 () Bool)

(declare-fun d!2149898 () Bool)

(assert (= bs!1828295 (and d!2149898 b!6833951)))

(declare-fun lambda!386218 () Int)

(assert (=> bs!1828295 (= lambda!386218 lambda!386193)))

(declare-fun forall!15831 (List!66234 Int) Bool)

(assert (=> d!2149898 (= (inv!84859 (h!72560 zl!343)) (forall!15831 (exprs!6529 (h!72560 zl!343)) lambda!386218))))

(declare-fun bs!1828296 () Bool)

(assert (= bs!1828296 d!2149898))

(declare-fun m!7579710 () Bool)

(assert (=> bs!1828296 m!7579710))

(assert (=> b!6833945 d!2149898))

(declare-fun bs!1828303 () Bool)

(declare-fun d!2149900 () Bool)

(assert (= bs!1828303 (and d!2149900 b!6833951)))

(declare-fun lambda!386226 () Int)

(assert (=> bs!1828303 (= lambda!386226 lambda!386193)))

(declare-fun bs!1828304 () Bool)

(assert (= bs!1828304 (and d!2149900 d!2149898)))

(assert (=> bs!1828304 (= lambda!386226 lambda!386218)))

(declare-fun b!6834168 () Bool)

(declare-fun e!4122309 () Bool)

(declare-fun isEmpty!38505 (List!66234) Bool)

(assert (=> b!6834168 (= e!4122309 (isEmpty!38505 (t!379977 (exprs!6529 (h!72560 zl!343)))))))

(declare-fun b!6834169 () Bool)

(declare-fun e!4122307 () Bool)

(declare-fun lt!2453702 () Regex!16645)

(declare-fun head!13690 (List!66234) Regex!16645)

(assert (=> b!6834169 (= e!4122307 (= lt!2453702 (head!13690 (exprs!6529 (h!72560 zl!343)))))))

(declare-fun b!6834170 () Bool)

(declare-fun e!4122308 () Regex!16645)

(declare-fun e!4122311 () Regex!16645)

(assert (=> b!6834170 (= e!4122308 e!4122311)))

(declare-fun c!1272537 () Bool)

(assert (=> b!6834170 (= c!1272537 ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343))))))

(declare-fun b!6834171 () Bool)

(assert (=> b!6834171 (= e!4122311 (Concat!25490 (h!72558 (exprs!6529 (h!72560 zl!343))) (generalisedConcat!2242 (t!379977 (exprs!6529 (h!72560 zl!343))))))))

(declare-fun e!4122310 () Bool)

(assert (=> d!2149900 e!4122310))

(declare-fun res!2790647 () Bool)

(assert (=> d!2149900 (=> (not res!2790647) (not e!4122310))))

(assert (=> d!2149900 (= res!2790647 (validRegex!8381 lt!2453702))))

(assert (=> d!2149900 (= lt!2453702 e!4122308)))

(declare-fun c!1272540 () Bool)

(assert (=> d!2149900 (= c!1272540 e!4122309)))

(declare-fun res!2790648 () Bool)

(assert (=> d!2149900 (=> (not res!2790648) (not e!4122309))))

(assert (=> d!2149900 (= res!2790648 ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343))))))

(assert (=> d!2149900 (forall!15831 (exprs!6529 (h!72560 zl!343)) lambda!386226)))

(assert (=> d!2149900 (= (generalisedConcat!2242 (exprs!6529 (h!72560 zl!343))) lt!2453702)))

(declare-fun b!6834172 () Bool)

(declare-fun isConcat!1520 (Regex!16645) Bool)

(assert (=> b!6834172 (= e!4122307 (isConcat!1520 lt!2453702))))

(declare-fun b!6834173 () Bool)

(assert (=> b!6834173 (= e!4122311 EmptyExpr!16645)))

(declare-fun b!6834174 () Bool)

(declare-fun e!4122306 () Bool)

(assert (=> b!6834174 (= e!4122310 e!4122306)))

(declare-fun c!1272538 () Bool)

(assert (=> b!6834174 (= c!1272538 (isEmpty!38505 (exprs!6529 (h!72560 zl!343))))))

(declare-fun b!6834175 () Bool)

(declare-fun isEmptyExpr!1997 (Regex!16645) Bool)

(assert (=> b!6834175 (= e!4122306 (isEmptyExpr!1997 lt!2453702))))

(declare-fun b!6834176 () Bool)

(assert (=> b!6834176 (= e!4122308 (h!72558 (exprs!6529 (h!72560 zl!343))))))

(declare-fun b!6834177 () Bool)

(assert (=> b!6834177 (= e!4122306 e!4122307)))

(declare-fun c!1272539 () Bool)

(declare-fun tail!12775 (List!66234) List!66234)

(assert (=> b!6834177 (= c!1272539 (isEmpty!38505 (tail!12775 (exprs!6529 (h!72560 zl!343)))))))

(assert (= (and d!2149900 res!2790648) b!6834168))

(assert (= (and d!2149900 c!1272540) b!6834176))

(assert (= (and d!2149900 (not c!1272540)) b!6834170))

(assert (= (and b!6834170 c!1272537) b!6834171))

(assert (= (and b!6834170 (not c!1272537)) b!6834173))

(assert (= (and d!2149900 res!2790647) b!6834174))

(assert (= (and b!6834174 c!1272538) b!6834175))

(assert (= (and b!6834174 (not c!1272538)) b!6834177))

(assert (= (and b!6834177 c!1272539) b!6834169))

(assert (= (and b!6834177 (not c!1272539)) b!6834172))

(declare-fun m!7579760 () Bool)

(assert (=> b!6834172 m!7579760))

(declare-fun m!7579762 () Bool)

(assert (=> b!6834168 m!7579762))

(declare-fun m!7579764 () Bool)

(assert (=> b!6834174 m!7579764))

(declare-fun m!7579766 () Bool)

(assert (=> b!6834175 m!7579766))

(declare-fun m!7579768 () Bool)

(assert (=> b!6834171 m!7579768))

(declare-fun m!7579770 () Bool)

(assert (=> b!6834169 m!7579770))

(declare-fun m!7579772 () Bool)

(assert (=> d!2149900 m!7579772))

(declare-fun m!7579774 () Bool)

(assert (=> d!2149900 m!7579774))

(declare-fun m!7579776 () Bool)

(assert (=> b!6834177 m!7579776))

(assert (=> b!6834177 m!7579776))

(declare-fun m!7579778 () Bool)

(assert (=> b!6834177 m!7579778))

(assert (=> b!6833924 d!2149900))

(declare-fun d!2149912 () Bool)

(declare-fun c!1272545 () Bool)

(assert (=> d!2149912 (= c!1272545 (isEmpty!38501 (_1!36923 lt!2453653)))))

(declare-fun e!4122318 () Bool)

(assert (=> d!2149912 (= (matchZipper!2631 lt!2453646 (_1!36923 lt!2453653)) e!4122318)))

(declare-fun b!6834188 () Bool)

(assert (=> b!6834188 (= e!4122318 (nullableZipper!2346 lt!2453646))))

(declare-fun b!6834189 () Bool)

(assert (=> b!6834189 (= e!4122318 (matchZipper!2631 (derivationStepZipper!2589 lt!2453646 (head!13689 (_1!36923 lt!2453653))) (tail!12774 (_1!36923 lt!2453653))))))

(assert (= (and d!2149912 c!1272545) b!6834188))

(assert (= (and d!2149912 (not c!1272545)) b!6834189))

(declare-fun m!7579782 () Bool)

(assert (=> d!2149912 m!7579782))

(declare-fun m!7579784 () Bool)

(assert (=> b!6834188 m!7579784))

(declare-fun m!7579786 () Bool)

(assert (=> b!6834189 m!7579786))

(assert (=> b!6834189 m!7579786))

(declare-fun m!7579788 () Bool)

(assert (=> b!6834189 m!7579788))

(declare-fun m!7579790 () Bool)

(assert (=> b!6834189 m!7579790))

(assert (=> b!6834189 m!7579788))

(assert (=> b!6834189 m!7579790))

(declare-fun m!7579794 () Bool)

(assert (=> b!6834189 m!7579794))

(assert (=> b!6833944 d!2149912))

(declare-fun d!2149918 () Bool)

(declare-fun lt!2453708 () Regex!16645)

(assert (=> d!2149918 (validRegex!8381 lt!2453708)))

(assert (=> d!2149918 (= lt!2453708 (generalisedUnion!2489 (unfocusZipperList!2066 zl!343)))))

(assert (=> d!2149918 (= (unfocusZipper!2387 zl!343) lt!2453708)))

(declare-fun bs!1828315 () Bool)

(assert (= bs!1828315 d!2149918))

(declare-fun m!7579808 () Bool)

(assert (=> bs!1828315 m!7579808))

(assert (=> bs!1828315 m!7579504))

(assert (=> bs!1828315 m!7579504))

(assert (=> bs!1828315 m!7579506))

(assert (=> b!6833928 d!2149918))

(declare-fun b!6834297 () Bool)

(declare-fun c!1272579 () Bool)

(declare-fun e!4122380 () Bool)

(assert (=> b!6834297 (= c!1272579 e!4122380)))

(declare-fun res!2790696 () Bool)

(assert (=> b!6834297 (=> (not res!2790696) (not e!4122380))))

(assert (=> b!6834297 (= res!2790696 ((_ is Concat!25490) r!7292))))

(declare-fun e!4122382 () (InoxSet Context!12058))

(declare-fun e!4122377 () (InoxSet Context!12058))

(assert (=> b!6834297 (= e!4122382 e!4122377)))

(declare-fun bm!622526 () Bool)

(declare-fun call!622534 () List!66234)

(declare-fun call!622536 () List!66234)

(assert (=> bm!622526 (= call!622534 call!622536)))

(declare-fun b!6834298 () Bool)

(declare-fun e!4122381 () (InoxSet Context!12058))

(declare-fun call!622535 () (InoxSet Context!12058))

(assert (=> b!6834298 (= e!4122381 call!622535)))

(declare-fun b!6834299 () Bool)

(declare-fun e!4122378 () (InoxSet Context!12058))

(assert (=> b!6834299 (= e!4122378 ((as const (Array Context!12058 Bool)) false))))

(declare-fun b!6834300 () Bool)

(declare-fun e!4122379 () (InoxSet Context!12058))

(assert (=> b!6834300 (= e!4122379 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 Nil!66110) true))))

(declare-fun bm!622527 () Bool)

(declare-fun call!622532 () (InoxSet Context!12058))

(assert (=> bm!622527 (= call!622535 call!622532)))

(declare-fun c!1272581 () Bool)

(declare-fun bm!622528 () Bool)

(declare-fun call!622533 () (InoxSet Context!12058))

(declare-fun c!1272578 () Bool)

(assert (=> bm!622528 (= call!622533 (derivationStepZipperDown!1873 (ite c!1272581 (regOne!33803 r!7292) (ite c!1272579 (regTwo!33802 r!7292) (ite c!1272578 (regOne!33802 r!7292) (reg!16974 r!7292)))) (ite (or c!1272581 c!1272579) (Context!12059 Nil!66110) (Context!12059 call!622534)) (h!72559 s!2326)))))

(declare-fun b!6834301 () Bool)

(declare-fun call!622531 () (InoxSet Context!12058))

(assert (=> b!6834301 (= e!4122382 ((_ map or) call!622533 call!622531))))

(declare-fun b!6834302 () Bool)

(declare-fun c!1272580 () Bool)

(assert (=> b!6834302 (= c!1272580 ((_ is Star!16645) r!7292))))

(assert (=> b!6834302 (= e!4122381 e!4122378)))

(declare-fun d!2149926 () Bool)

(declare-fun c!1272577 () Bool)

(assert (=> d!2149926 (= c!1272577 (and ((_ is ElementMatch!16645) r!7292) (= (c!1272469 r!7292) (h!72559 s!2326))))))

(assert (=> d!2149926 (= (derivationStepZipperDown!1873 r!7292 (Context!12059 Nil!66110) (h!72559 s!2326)) e!4122379)))

(declare-fun b!6834303 () Bool)

(assert (=> b!6834303 (= e!4122379 e!4122382)))

(assert (=> b!6834303 (= c!1272581 ((_ is Union!16645) r!7292))))

(declare-fun bm!622529 () Bool)

(assert (=> bm!622529 (= call!622532 call!622533)))

(declare-fun b!6834304 () Bool)

(declare-fun nullable!6618 (Regex!16645) Bool)

(assert (=> b!6834304 (= e!4122380 (nullable!6618 (regOne!33802 r!7292)))))

(declare-fun bm!622530 () Bool)

(assert (=> bm!622530 (= call!622531 (derivationStepZipperDown!1873 (ite c!1272581 (regTwo!33803 r!7292) (regOne!33802 r!7292)) (ite c!1272581 (Context!12059 Nil!66110) (Context!12059 call!622536)) (h!72559 s!2326)))))

(declare-fun b!6834305 () Bool)

(assert (=> b!6834305 (= e!4122377 e!4122381)))

(assert (=> b!6834305 (= c!1272578 ((_ is Concat!25490) r!7292))))

(declare-fun b!6834306 () Bool)

(assert (=> b!6834306 (= e!4122378 call!622535)))

(declare-fun bm!622531 () Bool)

(declare-fun $colon$colon!2448 (List!66234 Regex!16645) List!66234)

(assert (=> bm!622531 (= call!622536 ($colon$colon!2448 (exprs!6529 (Context!12059 Nil!66110)) (ite (or c!1272579 c!1272578) (regTwo!33802 r!7292) r!7292)))))

(declare-fun b!6834307 () Bool)

(assert (=> b!6834307 (= e!4122377 ((_ map or) call!622531 call!622532))))

(assert (= (and d!2149926 c!1272577) b!6834300))

(assert (= (and d!2149926 (not c!1272577)) b!6834303))

(assert (= (and b!6834303 c!1272581) b!6834301))

(assert (= (and b!6834303 (not c!1272581)) b!6834297))

(assert (= (and b!6834297 res!2790696) b!6834304))

(assert (= (and b!6834297 c!1272579) b!6834307))

(assert (= (and b!6834297 (not c!1272579)) b!6834305))

(assert (= (and b!6834305 c!1272578) b!6834298))

(assert (= (and b!6834305 (not c!1272578)) b!6834302))

(assert (= (and b!6834302 c!1272580) b!6834306))

(assert (= (and b!6834302 (not c!1272580)) b!6834299))

(assert (= (or b!6834298 b!6834306) bm!622526))

(assert (= (or b!6834298 b!6834306) bm!622527))

(assert (= (or b!6834307 bm!622526) bm!622531))

(assert (= (or b!6834307 bm!622527) bm!622529))

(assert (= (or b!6834301 b!6834307) bm!622530))

(assert (= (or b!6834301 bm!622529) bm!622528))

(declare-fun m!7579828 () Bool)

(assert (=> bm!622531 m!7579828))

(declare-fun m!7579830 () Bool)

(assert (=> b!6834304 m!7579830))

(declare-fun m!7579832 () Bool)

(assert (=> b!6834300 m!7579832))

(declare-fun m!7579834 () Bool)

(assert (=> bm!622530 m!7579834))

(declare-fun m!7579836 () Bool)

(assert (=> bm!622528 m!7579836))

(assert (=> b!6833948 d!2149926))

(declare-fun b!6834354 () Bool)

(declare-fun e!4122412 () (InoxSet Context!12058))

(declare-fun e!4122411 () (InoxSet Context!12058))

(assert (=> b!6834354 (= e!4122412 e!4122411)))

(declare-fun c!1272602 () Bool)

(assert (=> b!6834354 (= c!1272602 ((_ is Cons!66110) (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110)))))))

(declare-fun bm!622534 () Bool)

(declare-fun call!622539 () (InoxSet Context!12058))

(assert (=> bm!622534 (= call!622539 (derivationStepZipperDown!1873 (h!72558 (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110)))) (Context!12059 (t!379977 (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110))))) (h!72559 s!2326)))))

(declare-fun d!2149934 () Bool)

(declare-fun c!1272601 () Bool)

(declare-fun e!4122410 () Bool)

(assert (=> d!2149934 (= c!1272601 e!4122410)))

(declare-fun res!2790705 () Bool)

(assert (=> d!2149934 (=> (not res!2790705) (not e!4122410))))

(assert (=> d!2149934 (= res!2790705 ((_ is Cons!66110) (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110)))))))

(assert (=> d!2149934 (= (derivationStepZipperUp!1799 (Context!12059 (Cons!66110 r!7292 Nil!66110)) (h!72559 s!2326)) e!4122412)))

(declare-fun b!6834355 () Bool)

(assert (=> b!6834355 (= e!4122411 call!622539)))

(declare-fun b!6834356 () Bool)

(assert (=> b!6834356 (= e!4122410 (nullable!6618 (h!72558 (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110))))))))

(declare-fun b!6834357 () Bool)

(assert (=> b!6834357 (= e!4122412 ((_ map or) call!622539 (derivationStepZipperUp!1799 (Context!12059 (t!379977 (exprs!6529 (Context!12059 (Cons!66110 r!7292 Nil!66110))))) (h!72559 s!2326))))))

(declare-fun b!6834358 () Bool)

(assert (=> b!6834358 (= e!4122411 ((as const (Array Context!12058 Bool)) false))))

(assert (= (and d!2149934 res!2790705) b!6834356))

(assert (= (and d!2149934 c!1272601) b!6834357))

(assert (= (and d!2149934 (not c!1272601)) b!6834354))

(assert (= (and b!6834354 c!1272602) b!6834355))

(assert (= (and b!6834354 (not c!1272602)) b!6834358))

(assert (= (or b!6834357 b!6834355) bm!622534))

(declare-fun m!7579862 () Bool)

(assert (=> bm!622534 m!7579862))

(declare-fun m!7579864 () Bool)

(assert (=> b!6834356 m!7579864))

(declare-fun m!7579866 () Bool)

(assert (=> b!6834357 m!7579866))

(assert (=> b!6833948 d!2149934))

(declare-fun bs!1828341 () Bool)

(declare-fun d!2149940 () Bool)

(assert (= bs!1828341 (and d!2149940 b!6833941)))

(declare-fun lambda!386247 () Int)

(assert (=> bs!1828341 (= lambda!386247 lambda!386191)))

(assert (=> d!2149940 true))

(assert (=> d!2149940 (= (derivationStepZipper!2589 z!1189 (h!72559 s!2326)) (flatMap!2126 z!1189 lambda!386247))))

(declare-fun bs!1828343 () Bool)

(assert (= bs!1828343 d!2149940))

(declare-fun m!7579888 () Bool)

(assert (=> bs!1828343 m!7579888))

(assert (=> b!6833948 d!2149940))

(declare-fun d!2149950 () Bool)

(assert (=> d!2149950 (= (matchR!8828 (reg!16974 r!7292) (_1!36923 lt!2453653)) (matchZipper!2631 lt!2453646 (_1!36923 lt!2453653)))))

(declare-fun lt!2453726 () Unit!159981)

(declare-fun choose!50948 ((InoxSet Context!12058) List!66236 Regex!16645 List!66235) Unit!159981)

(assert (=> d!2149950 (= lt!2453726 (choose!50948 lt!2453646 lt!2453634 (reg!16974 r!7292) (_1!36923 lt!2453653)))))

(assert (=> d!2149950 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2149950 (= (theoremZipperRegexEquiv!947 lt!2453646 lt!2453634 (reg!16974 r!7292) (_1!36923 lt!2453653)) lt!2453726)))

(declare-fun bs!1828353 () Bool)

(assert (= bs!1828353 d!2149950))

(assert (=> bs!1828353 m!7579512))

(assert (=> bs!1828353 m!7579432))

(declare-fun m!7579916 () Bool)

(assert (=> bs!1828353 m!7579916))

(assert (=> bs!1828353 m!7579518))

(assert (=> b!6833947 d!2149950))

(declare-fun bs!1828355 () Bool)

(declare-fun d!2149960 () Bool)

(assert (= bs!1828355 (and d!2149960 b!6833951)))

(declare-fun lambda!386251 () Int)

(assert (=> bs!1828355 (= lambda!386251 lambda!386193)))

(declare-fun bs!1828356 () Bool)

(assert (= bs!1828356 (and d!2149960 d!2149898)))

(assert (=> bs!1828356 (= lambda!386251 lambda!386218)))

(declare-fun bs!1828357 () Bool)

(assert (= bs!1828357 (and d!2149960 d!2149900)))

(assert (=> bs!1828357 (= lambda!386251 lambda!386226)))

(assert (=> d!2149960 (matchZipper!2631 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 (exprs!6529 lt!2453636) (exprs!6529 lt!2453657))) true) (++!14837 (_1!36923 lt!2453653) (_2!36923 lt!2453653)))))

(declare-fun lt!2453738 () Unit!159981)

(assert (=> d!2149960 (= lt!2453738 (lemmaConcatPreservesForall!474 (exprs!6529 lt!2453636) (exprs!6529 lt!2453657) lambda!386251))))

(declare-fun lt!2453737 () Unit!159981)

(declare-fun choose!50949 (Context!12058 Context!12058 List!66235 List!66235) Unit!159981)

(assert (=> d!2149960 (= lt!2453737 (choose!50949 lt!2453636 lt!2453657 (_1!36923 lt!2453653) (_2!36923 lt!2453653)))))

(assert (=> d!2149960 (matchZipper!2631 (store ((as const (Array Context!12058 Bool)) false) lt!2453636 true) (_1!36923 lt!2453653))))

(assert (=> d!2149960 (= (lemmaConcatenateContextMatchesConcatOfStrings!268 lt!2453636 lt!2453657 (_1!36923 lt!2453653) (_2!36923 lt!2453653)) lt!2453737)))

(declare-fun bs!1828358 () Bool)

(assert (= bs!1828358 d!2149960))

(declare-fun m!7579940 () Bool)

(assert (=> bs!1828358 m!7579940))

(assert (=> bs!1828358 m!7579460))

(declare-fun m!7579942 () Bool)

(assert (=> bs!1828358 m!7579942))

(declare-fun m!7579944 () Bool)

(assert (=> bs!1828358 m!7579944))

(assert (=> bs!1828358 m!7579550))

(assert (=> bs!1828358 m!7579550))

(declare-fun m!7579946 () Bool)

(assert (=> bs!1828358 m!7579946))

(declare-fun m!7579948 () Bool)

(assert (=> bs!1828358 m!7579948))

(assert (=> bs!1828358 m!7579944))

(assert (=> bs!1828358 m!7579460))

(declare-fun m!7579950 () Bool)

(assert (=> bs!1828358 m!7579950))

(assert (=> b!6833947 d!2149960))

(declare-fun d!2149968 () Bool)

(declare-fun e!4122457 () Bool)

(assert (=> d!2149968 e!4122457))

(declare-fun res!2790739 () Bool)

(assert (=> d!2149968 (=> (not res!2790739) (not e!4122457))))

(declare-fun lt!2453747 () List!66234)

(declare-fun content!12951 (List!66234) (InoxSet Regex!16645))

(assert (=> d!2149968 (= res!2790739 (= (content!12951 lt!2453747) ((_ map or) (content!12951 lt!2453648) (content!12951 lt!2453652))))))

(declare-fun e!4122458 () List!66234)

(assert (=> d!2149968 (= lt!2453747 e!4122458)))

(declare-fun c!1272629 () Bool)

(assert (=> d!2149968 (= c!1272629 ((_ is Nil!66110) lt!2453648))))

(assert (=> d!2149968 (= (++!14836 lt!2453648 lt!2453652) lt!2453747)))

(declare-fun b!6834443 () Bool)

(assert (=> b!6834443 (= e!4122458 (Cons!66110 (h!72558 lt!2453648) (++!14836 (t!379977 lt!2453648) lt!2453652)))))

(declare-fun b!6834444 () Bool)

(declare-fun res!2790740 () Bool)

(assert (=> b!6834444 (=> (not res!2790740) (not e!4122457))))

(declare-fun size!40701 (List!66234) Int)

(assert (=> b!6834444 (= res!2790740 (= (size!40701 lt!2453747) (+ (size!40701 lt!2453648) (size!40701 lt!2453652))))))

(declare-fun b!6834445 () Bool)

(assert (=> b!6834445 (= e!4122457 (or (not (= lt!2453652 Nil!66110)) (= lt!2453747 lt!2453648)))))

(declare-fun b!6834442 () Bool)

(assert (=> b!6834442 (= e!4122458 lt!2453652)))

(assert (= (and d!2149968 c!1272629) b!6834442))

(assert (= (and d!2149968 (not c!1272629)) b!6834443))

(assert (= (and d!2149968 res!2790739) b!6834444))

(assert (= (and b!6834444 res!2790740) b!6834445))

(declare-fun m!7579952 () Bool)

(assert (=> d!2149968 m!7579952))

(declare-fun m!7579954 () Bool)

(assert (=> d!2149968 m!7579954))

(declare-fun m!7579956 () Bool)

(assert (=> d!2149968 m!7579956))

(declare-fun m!7579958 () Bool)

(assert (=> b!6834443 m!7579958))

(declare-fun m!7579960 () Bool)

(assert (=> b!6834444 m!7579960))

(declare-fun m!7579962 () Bool)

(assert (=> b!6834444 m!7579962))

(declare-fun m!7579964 () Bool)

(assert (=> b!6834444 m!7579964))

(assert (=> b!6833947 d!2149968))

(declare-fun d!2149970 () Bool)

(assert (=> d!2149970 (= (matchR!8828 r!7292 (_2!36923 lt!2453653)) (matchZipper!2631 lt!2453651 (_2!36923 lt!2453653)))))

(declare-fun lt!2453751 () Unit!159981)

(assert (=> d!2149970 (= lt!2453751 (choose!50948 lt!2453651 lt!2453637 r!7292 (_2!36923 lt!2453653)))))

(assert (=> d!2149970 (validRegex!8381 r!7292)))

(assert (=> d!2149970 (= (theoremZipperRegexEquiv!947 lt!2453651 lt!2453637 r!7292 (_2!36923 lt!2453653)) lt!2453751)))

(declare-fun bs!1828359 () Bool)

(assert (= bs!1828359 d!2149970))

(assert (=> bs!1828359 m!7579516))

(assert (=> bs!1828359 m!7579448))

(declare-fun m!7579970 () Bool)

(assert (=> bs!1828359 m!7579970))

(assert (=> bs!1828359 m!7579534))

(assert (=> b!6833947 d!2149970))

(declare-fun b!6834493 () Bool)

(declare-fun e!4122488 () Bool)

(assert (=> b!6834493 (= e!4122488 (nullable!6618 r!7292))))

(declare-fun b!6834495 () Bool)

(declare-fun e!4122490 () Bool)

(assert (=> b!6834495 (= e!4122490 (= (head!13689 (_2!36923 lt!2453653)) (c!1272469 r!7292)))))

(declare-fun bm!622548 () Bool)

(declare-fun call!622553 () Bool)

(assert (=> bm!622548 (= call!622553 (isEmpty!38501 (_2!36923 lt!2453653)))))

(declare-fun b!6834496 () Bool)

(declare-fun e!4122489 () Bool)

(declare-fun e!4122485 () Bool)

(assert (=> b!6834496 (= e!4122489 e!4122485)))

(declare-fun res!2790770 () Bool)

(assert (=> b!6834496 (=> res!2790770 e!4122485)))

(assert (=> b!6834496 (= res!2790770 call!622553)))

(declare-fun b!6834497 () Bool)

(declare-fun res!2790772 () Bool)

(assert (=> b!6834497 (=> (not res!2790772) (not e!4122490))))

(assert (=> b!6834497 (= res!2790772 (not call!622553))))

(declare-fun b!6834498 () Bool)

(declare-fun e!4122486 () Bool)

(assert (=> b!6834498 (= e!4122486 e!4122489)))

(declare-fun res!2790769 () Bool)

(assert (=> b!6834498 (=> (not res!2790769) (not e!4122489))))

(declare-fun lt!2453761 () Bool)

(assert (=> b!6834498 (= res!2790769 (not lt!2453761))))

(declare-fun b!6834499 () Bool)

(declare-fun res!2790767 () Bool)

(assert (=> b!6834499 (=> (not res!2790767) (not e!4122490))))

(assert (=> b!6834499 (= res!2790767 (isEmpty!38501 (tail!12774 (_2!36923 lt!2453653))))))

(declare-fun b!6834500 () Bool)

(declare-fun e!4122491 () Bool)

(assert (=> b!6834500 (= e!4122491 (not lt!2453761))))

(declare-fun b!6834501 () Bool)

(declare-fun res!2790771 () Bool)

(assert (=> b!6834501 (=> res!2790771 e!4122485)))

(assert (=> b!6834501 (= res!2790771 (not (isEmpty!38501 (tail!12774 (_2!36923 lt!2453653)))))))

(declare-fun b!6834502 () Bool)

(declare-fun e!4122487 () Bool)

(assert (=> b!6834502 (= e!4122487 e!4122491)))

(declare-fun c!1272643 () Bool)

(assert (=> b!6834502 (= c!1272643 ((_ is EmptyLang!16645) r!7292))))

(declare-fun d!2149972 () Bool)

(assert (=> d!2149972 e!4122487))

(declare-fun c!1272642 () Bool)

(assert (=> d!2149972 (= c!1272642 ((_ is EmptyExpr!16645) r!7292))))

(assert (=> d!2149972 (= lt!2453761 e!4122488)))

(declare-fun c!1272641 () Bool)

(assert (=> d!2149972 (= c!1272641 (isEmpty!38501 (_2!36923 lt!2453653)))))

(assert (=> d!2149972 (validRegex!8381 r!7292)))

(assert (=> d!2149972 (= (matchR!8828 r!7292 (_2!36923 lt!2453653)) lt!2453761)))

(declare-fun b!6834494 () Bool)

(declare-fun res!2790768 () Bool)

(assert (=> b!6834494 (=> res!2790768 e!4122486)))

(assert (=> b!6834494 (= res!2790768 (not ((_ is ElementMatch!16645) r!7292)))))

(assert (=> b!6834494 (= e!4122491 e!4122486)))

(declare-fun b!6834503 () Bool)

(assert (=> b!6834503 (= e!4122485 (not (= (head!13689 (_2!36923 lt!2453653)) (c!1272469 r!7292))))))

(declare-fun b!6834504 () Bool)

(assert (=> b!6834504 (= e!4122487 (= lt!2453761 call!622553))))

(declare-fun b!6834505 () Bool)

(declare-fun res!2790766 () Bool)

(assert (=> b!6834505 (=> res!2790766 e!4122486)))

(assert (=> b!6834505 (= res!2790766 e!4122490)))

(declare-fun res!2790773 () Bool)

(assert (=> b!6834505 (=> (not res!2790773) (not e!4122490))))

(assert (=> b!6834505 (= res!2790773 lt!2453761)))

(declare-fun b!6834506 () Bool)

(declare-fun derivativeStep!5303 (Regex!16645 C!33560) Regex!16645)

(assert (=> b!6834506 (= e!4122488 (matchR!8828 (derivativeStep!5303 r!7292 (head!13689 (_2!36923 lt!2453653))) (tail!12774 (_2!36923 lt!2453653))))))

(assert (= (and d!2149972 c!1272641) b!6834493))

(assert (= (and d!2149972 (not c!1272641)) b!6834506))

(assert (= (and d!2149972 c!1272642) b!6834504))

(assert (= (and d!2149972 (not c!1272642)) b!6834502))

(assert (= (and b!6834502 c!1272643) b!6834500))

(assert (= (and b!6834502 (not c!1272643)) b!6834494))

(assert (= (and b!6834494 (not res!2790768)) b!6834505))

(assert (= (and b!6834505 res!2790773) b!6834497))

(assert (= (and b!6834497 res!2790772) b!6834499))

(assert (= (and b!6834499 res!2790767) b!6834495))

(assert (= (and b!6834505 (not res!2790766)) b!6834498))

(assert (= (and b!6834498 res!2790769) b!6834496))

(assert (= (and b!6834496 (not res!2790770)) b!6834501))

(assert (= (and b!6834501 (not res!2790771)) b!6834503))

(assert (= (or b!6834504 b!6834496 b!6834497) bm!622548))

(declare-fun m!7580016 () Bool)

(assert (=> b!6834501 m!7580016))

(assert (=> b!6834501 m!7580016))

(declare-fun m!7580018 () Bool)

(assert (=> b!6834501 m!7580018))

(declare-fun m!7580020 () Bool)

(assert (=> d!2149972 m!7580020))

(assert (=> d!2149972 m!7579534))

(assert (=> b!6834499 m!7580016))

(assert (=> b!6834499 m!7580016))

(assert (=> b!6834499 m!7580018))

(assert (=> bm!622548 m!7580020))

(declare-fun m!7580022 () Bool)

(assert (=> b!6834503 m!7580022))

(declare-fun m!7580024 () Bool)

(assert (=> b!6834493 m!7580024))

(assert (=> b!6834506 m!7580022))

(assert (=> b!6834506 m!7580022))

(declare-fun m!7580026 () Bool)

(assert (=> b!6834506 m!7580026))

(assert (=> b!6834506 m!7580016))

(assert (=> b!6834506 m!7580026))

(assert (=> b!6834506 m!7580016))

(declare-fun m!7580028 () Bool)

(assert (=> b!6834506 m!7580028))

(assert (=> b!6834495 m!7580022))

(assert (=> b!6833947 d!2149972))

(declare-fun b!6834507 () Bool)

(declare-fun e!4122495 () Bool)

(assert (=> b!6834507 (= e!4122495 (nullable!6618 (reg!16974 r!7292)))))

(declare-fun b!6834509 () Bool)

(declare-fun e!4122497 () Bool)

(assert (=> b!6834509 (= e!4122497 (= (head!13689 (_1!36923 lt!2453653)) (c!1272469 (reg!16974 r!7292))))))

(declare-fun bm!622549 () Bool)

(declare-fun call!622554 () Bool)

(assert (=> bm!622549 (= call!622554 (isEmpty!38501 (_1!36923 lt!2453653)))))

(declare-fun b!6834510 () Bool)

(declare-fun e!4122496 () Bool)

(declare-fun e!4122492 () Bool)

(assert (=> b!6834510 (= e!4122496 e!4122492)))

(declare-fun res!2790778 () Bool)

(assert (=> b!6834510 (=> res!2790778 e!4122492)))

(assert (=> b!6834510 (= res!2790778 call!622554)))

(declare-fun b!6834511 () Bool)

(declare-fun res!2790780 () Bool)

(assert (=> b!6834511 (=> (not res!2790780) (not e!4122497))))

(assert (=> b!6834511 (= res!2790780 (not call!622554))))

(declare-fun b!6834512 () Bool)

(declare-fun e!4122493 () Bool)

(assert (=> b!6834512 (= e!4122493 e!4122496)))

(declare-fun res!2790777 () Bool)

(assert (=> b!6834512 (=> (not res!2790777) (not e!4122496))))

(declare-fun lt!2453766 () Bool)

(assert (=> b!6834512 (= res!2790777 (not lt!2453766))))

(declare-fun b!6834513 () Bool)

(declare-fun res!2790775 () Bool)

(assert (=> b!6834513 (=> (not res!2790775) (not e!4122497))))

(assert (=> b!6834513 (= res!2790775 (isEmpty!38501 (tail!12774 (_1!36923 lt!2453653))))))

(declare-fun b!6834514 () Bool)

(declare-fun e!4122498 () Bool)

(assert (=> b!6834514 (= e!4122498 (not lt!2453766))))

(declare-fun b!6834515 () Bool)

(declare-fun res!2790779 () Bool)

(assert (=> b!6834515 (=> res!2790779 e!4122492)))

(assert (=> b!6834515 (= res!2790779 (not (isEmpty!38501 (tail!12774 (_1!36923 lt!2453653)))))))

(declare-fun b!6834516 () Bool)

(declare-fun e!4122494 () Bool)

(assert (=> b!6834516 (= e!4122494 e!4122498)))

(declare-fun c!1272646 () Bool)

(assert (=> b!6834516 (= c!1272646 ((_ is EmptyLang!16645) (reg!16974 r!7292)))))

(declare-fun d!2149990 () Bool)

(assert (=> d!2149990 e!4122494))

(declare-fun c!1272645 () Bool)

(assert (=> d!2149990 (= c!1272645 ((_ is EmptyExpr!16645) (reg!16974 r!7292)))))

(assert (=> d!2149990 (= lt!2453766 e!4122495)))

(declare-fun c!1272644 () Bool)

(assert (=> d!2149990 (= c!1272644 (isEmpty!38501 (_1!36923 lt!2453653)))))

(assert (=> d!2149990 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2149990 (= (matchR!8828 (reg!16974 r!7292) (_1!36923 lt!2453653)) lt!2453766)))

(declare-fun b!6834508 () Bool)

(declare-fun res!2790776 () Bool)

(assert (=> b!6834508 (=> res!2790776 e!4122493)))

(assert (=> b!6834508 (= res!2790776 (not ((_ is ElementMatch!16645) (reg!16974 r!7292))))))

(assert (=> b!6834508 (= e!4122498 e!4122493)))

(declare-fun b!6834517 () Bool)

(assert (=> b!6834517 (= e!4122492 (not (= (head!13689 (_1!36923 lt!2453653)) (c!1272469 (reg!16974 r!7292)))))))

(declare-fun b!6834518 () Bool)

(assert (=> b!6834518 (= e!4122494 (= lt!2453766 call!622554))))

(declare-fun b!6834519 () Bool)

(declare-fun res!2790774 () Bool)

(assert (=> b!6834519 (=> res!2790774 e!4122493)))

(assert (=> b!6834519 (= res!2790774 e!4122497)))

(declare-fun res!2790781 () Bool)

(assert (=> b!6834519 (=> (not res!2790781) (not e!4122497))))

(assert (=> b!6834519 (= res!2790781 lt!2453766)))

(declare-fun b!6834520 () Bool)

(assert (=> b!6834520 (= e!4122495 (matchR!8828 (derivativeStep!5303 (reg!16974 r!7292) (head!13689 (_1!36923 lt!2453653))) (tail!12774 (_1!36923 lt!2453653))))))

(assert (= (and d!2149990 c!1272644) b!6834507))

(assert (= (and d!2149990 (not c!1272644)) b!6834520))

(assert (= (and d!2149990 c!1272645) b!6834518))

(assert (= (and d!2149990 (not c!1272645)) b!6834516))

(assert (= (and b!6834516 c!1272646) b!6834514))

(assert (= (and b!6834516 (not c!1272646)) b!6834508))

(assert (= (and b!6834508 (not res!2790776)) b!6834519))

(assert (= (and b!6834519 res!2790781) b!6834511))

(assert (= (and b!6834511 res!2790780) b!6834513))

(assert (= (and b!6834513 res!2790775) b!6834509))

(assert (= (and b!6834519 (not res!2790774)) b!6834512))

(assert (= (and b!6834512 res!2790777) b!6834510))

(assert (= (and b!6834510 (not res!2790778)) b!6834515))

(assert (= (and b!6834515 (not res!2790779)) b!6834517))

(assert (= (or b!6834518 b!6834510 b!6834511) bm!622549))

(assert (=> b!6834515 m!7579790))

(assert (=> b!6834515 m!7579790))

(declare-fun m!7580030 () Bool)

(assert (=> b!6834515 m!7580030))

(assert (=> d!2149990 m!7579782))

(assert (=> d!2149990 m!7579518))

(assert (=> b!6834513 m!7579790))

(assert (=> b!6834513 m!7579790))

(assert (=> b!6834513 m!7580030))

(assert (=> bm!622549 m!7579782))

(assert (=> b!6834517 m!7579786))

(declare-fun m!7580032 () Bool)

(assert (=> b!6834507 m!7580032))

(assert (=> b!6834520 m!7579786))

(assert (=> b!6834520 m!7579786))

(declare-fun m!7580034 () Bool)

(assert (=> b!6834520 m!7580034))

(assert (=> b!6834520 m!7579790))

(assert (=> b!6834520 m!7580034))

(assert (=> b!6834520 m!7579790))

(declare-fun m!7580036 () Bool)

(assert (=> b!6834520 m!7580036))

(assert (=> b!6834509 m!7579786))

(assert (=> b!6833947 d!2149990))

(declare-fun d!2149992 () Bool)

(declare-fun c!1272647 () Bool)

(assert (=> d!2149992 (= c!1272647 (isEmpty!38501 lt!2453649))))

(declare-fun e!4122499 () Bool)

(assert (=> d!2149992 (= (matchZipper!2631 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 lt!2453648 lt!2453652)) true) lt!2453649) e!4122499)))

(declare-fun b!6834521 () Bool)

(assert (=> b!6834521 (= e!4122499 (nullableZipper!2346 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 lt!2453648 lt!2453652)) true)))))

(declare-fun b!6834522 () Bool)

(assert (=> b!6834522 (= e!4122499 (matchZipper!2631 (derivationStepZipper!2589 (store ((as const (Array Context!12058 Bool)) false) (Context!12059 (++!14836 lt!2453648 lt!2453652)) true) (head!13689 lt!2453649)) (tail!12774 lt!2453649)))))

(assert (= (and d!2149992 c!1272647) b!6834521))

(assert (= (and d!2149992 (not c!1272647)) b!6834522))

(declare-fun m!7580038 () Bool)

(assert (=> d!2149992 m!7580038))

(assert (=> b!6834521 m!7579418))

(declare-fun m!7580040 () Bool)

(assert (=> b!6834521 m!7580040))

(declare-fun m!7580042 () Bool)

(assert (=> b!6834522 m!7580042))

(assert (=> b!6834522 m!7579418))

(assert (=> b!6834522 m!7580042))

(declare-fun m!7580044 () Bool)

(assert (=> b!6834522 m!7580044))

(declare-fun m!7580046 () Bool)

(assert (=> b!6834522 m!7580046))

(assert (=> b!6834522 m!7580044))

(assert (=> b!6834522 m!7580046))

(declare-fun m!7580050 () Bool)

(assert (=> b!6834522 m!7580050))

(assert (=> b!6833947 d!2149992))

(declare-fun d!2149994 () Bool)

(assert (=> d!2149994 (forall!15831 (++!14836 lt!2453648 lt!2453652) lambda!386193)))

(declare-fun lt!2453773 () Unit!159981)

(declare-fun choose!50950 (List!66234 List!66234 Int) Unit!159981)

(assert (=> d!2149994 (= lt!2453773 (choose!50950 lt!2453648 lt!2453652 lambda!386193))))

(assert (=> d!2149994 (forall!15831 lt!2453648 lambda!386193)))

(assert (=> d!2149994 (= (lemmaConcatPreservesForall!474 lt!2453648 lt!2453652 lambda!386193) lt!2453773)))

(declare-fun bs!1828371 () Bool)

(assert (= bs!1828371 d!2149994))

(assert (=> bs!1828371 m!7579426))

(assert (=> bs!1828371 m!7579426))

(declare-fun m!7580068 () Bool)

(assert (=> bs!1828371 m!7580068))

(declare-fun m!7580070 () Bool)

(assert (=> bs!1828371 m!7580070))

(declare-fun m!7580074 () Bool)

(assert (=> bs!1828371 m!7580074))

(assert (=> b!6833947 d!2149994))

(declare-fun d!2150000 () Bool)

(declare-fun res!2790813 () Bool)

(declare-fun e!4122557 () Bool)

(assert (=> d!2150000 (=> res!2790813 e!4122557)))

(assert (=> d!2150000 (= res!2790813 ((_ is ElementMatch!16645) (reg!16974 r!7292)))))

(assert (=> d!2150000 (= (validRegex!8381 (reg!16974 r!7292)) e!4122557)))

(declare-fun bm!622561 () Bool)

(declare-fun call!622566 () Bool)

(declare-fun c!1272661 () Bool)

(assert (=> bm!622561 (= call!622566 (validRegex!8381 (ite c!1272661 (regOne!33803 (reg!16974 r!7292)) (regOne!33802 (reg!16974 r!7292)))))))

(declare-fun b!6834621 () Bool)

(declare-fun e!4122551 () Bool)

(declare-fun call!622567 () Bool)

(assert (=> b!6834621 (= e!4122551 call!622567)))

(declare-fun bm!622562 () Bool)

(declare-fun call!622568 () Bool)

(assert (=> bm!622562 (= call!622567 call!622568)))

(declare-fun b!6834622 () Bool)

(declare-fun e!4122556 () Bool)

(declare-fun e!4122550 () Bool)

(assert (=> b!6834622 (= e!4122556 e!4122550)))

(declare-fun res!2790815 () Bool)

(assert (=> b!6834622 (= res!2790815 (not (nullable!6618 (reg!16974 (reg!16974 r!7292)))))))

(assert (=> b!6834622 (=> (not res!2790815) (not e!4122550))))

(declare-fun c!1272662 () Bool)

(declare-fun bm!622563 () Bool)

(assert (=> bm!622563 (= call!622568 (validRegex!8381 (ite c!1272662 (reg!16974 (reg!16974 r!7292)) (ite c!1272661 (regTwo!33803 (reg!16974 r!7292)) (regTwo!33802 (reg!16974 r!7292))))))))

(declare-fun b!6834623 () Bool)

(assert (=> b!6834623 (= e!4122557 e!4122556)))

(assert (=> b!6834623 (= c!1272662 ((_ is Star!16645) (reg!16974 r!7292)))))

(declare-fun b!6834624 () Bool)

(declare-fun e!4122552 () Bool)

(declare-fun e!4122555 () Bool)

(assert (=> b!6834624 (= e!4122552 e!4122555)))

(declare-fun res!2790817 () Bool)

(assert (=> b!6834624 (=> (not res!2790817) (not e!4122555))))

(assert (=> b!6834624 (= res!2790817 call!622566)))

(declare-fun b!6834625 () Bool)

(declare-fun e!4122553 () Bool)

(assert (=> b!6834625 (= e!4122556 e!4122553)))

(assert (=> b!6834625 (= c!1272661 ((_ is Union!16645) (reg!16974 r!7292)))))

(declare-fun b!6834626 () Bool)

(assert (=> b!6834626 (= e!4122550 call!622568)))

(declare-fun b!6834627 () Bool)

(assert (=> b!6834627 (= e!4122555 call!622567)))

(declare-fun b!6834628 () Bool)

(declare-fun res!2790814 () Bool)

(assert (=> b!6834628 (=> (not res!2790814) (not e!4122551))))

(assert (=> b!6834628 (= res!2790814 call!622566)))

(assert (=> b!6834628 (= e!4122553 e!4122551)))

(declare-fun b!6834629 () Bool)

(declare-fun res!2790816 () Bool)

(assert (=> b!6834629 (=> res!2790816 e!4122552)))

(assert (=> b!6834629 (= res!2790816 (not ((_ is Concat!25490) (reg!16974 r!7292))))))

(assert (=> b!6834629 (= e!4122553 e!4122552)))

(assert (= (and d!2150000 (not res!2790813)) b!6834623))

(assert (= (and b!6834623 c!1272662) b!6834622))

(assert (= (and b!6834623 (not c!1272662)) b!6834625))

(assert (= (and b!6834622 res!2790815) b!6834626))

(assert (= (and b!6834625 c!1272661) b!6834628))

(assert (= (and b!6834625 (not c!1272661)) b!6834629))

(assert (= (and b!6834628 res!2790814) b!6834621))

(assert (= (and b!6834629 (not res!2790816)) b!6834624))

(assert (= (and b!6834624 res!2790817) b!6834627))

(assert (= (or b!6834621 b!6834627) bm!622562))

(assert (= (or b!6834628 b!6834624) bm!622561))

(assert (= (or b!6834626 bm!622562) bm!622563))

(declare-fun m!7580102 () Bool)

(assert (=> bm!622561 m!7580102))

(declare-fun m!7580104 () Bool)

(assert (=> b!6834622 m!7580104))

(declare-fun m!7580106 () Bool)

(assert (=> bm!622563 m!7580106))

(assert (=> b!6833947 d!2150000))

(declare-fun b!6834640 () Bool)

(declare-fun c!1272665 () Bool)

(declare-fun e!4122566 () Bool)

(assert (=> b!6834640 (= c!1272665 e!4122566)))

(declare-fun res!2790818 () Bool)

(assert (=> b!6834640 (=> (not res!2790818) (not e!4122566))))

(assert (=> b!6834640 (= res!2790818 ((_ is Concat!25490) (reg!16974 r!7292)))))

(declare-fun e!4122568 () (InoxSet Context!12058))

(declare-fun e!4122563 () (InoxSet Context!12058))

(assert (=> b!6834640 (= e!4122568 e!4122563)))

(declare-fun bm!622564 () Bool)

(declare-fun call!622572 () List!66234)

(declare-fun call!622574 () List!66234)

(assert (=> bm!622564 (= call!622572 call!622574)))

(declare-fun b!6834641 () Bool)

(declare-fun e!4122567 () (InoxSet Context!12058))

(declare-fun call!622573 () (InoxSet Context!12058))

(assert (=> b!6834641 (= e!4122567 call!622573)))

(declare-fun b!6834642 () Bool)

(declare-fun e!4122564 () (InoxSet Context!12058))

(assert (=> b!6834642 (= e!4122564 ((as const (Array Context!12058 Bool)) false))))

(declare-fun b!6834643 () Bool)

(declare-fun e!4122565 () (InoxSet Context!12058))

(assert (=> b!6834643 (= e!4122565 (store ((as const (Array Context!12058 Bool)) false) lt!2453657 true))))

(declare-fun bm!622565 () Bool)

(declare-fun call!622570 () (InoxSet Context!12058))

(assert (=> bm!622565 (= call!622573 call!622570)))

(declare-fun bm!622566 () Bool)

(declare-fun call!622571 () (InoxSet Context!12058))

(declare-fun c!1272667 () Bool)

(declare-fun c!1272664 () Bool)

(assert (=> bm!622566 (= call!622571 (derivationStepZipperDown!1873 (ite c!1272667 (regOne!33803 (reg!16974 r!7292)) (ite c!1272665 (regTwo!33802 (reg!16974 r!7292)) (ite c!1272664 (regOne!33802 (reg!16974 r!7292)) (reg!16974 (reg!16974 r!7292))))) (ite (or c!1272667 c!1272665) lt!2453657 (Context!12059 call!622572)) (h!72559 s!2326)))))

(declare-fun b!6834644 () Bool)

(declare-fun call!622569 () (InoxSet Context!12058))

(assert (=> b!6834644 (= e!4122568 ((_ map or) call!622571 call!622569))))

(declare-fun b!6834645 () Bool)

(declare-fun c!1272666 () Bool)

(assert (=> b!6834645 (= c!1272666 ((_ is Star!16645) (reg!16974 r!7292)))))

(assert (=> b!6834645 (= e!4122567 e!4122564)))

(declare-fun d!2150008 () Bool)

(declare-fun c!1272663 () Bool)

(assert (=> d!2150008 (= c!1272663 (and ((_ is ElementMatch!16645) (reg!16974 r!7292)) (= (c!1272469 (reg!16974 r!7292)) (h!72559 s!2326))))))

(assert (=> d!2150008 (= (derivationStepZipperDown!1873 (reg!16974 r!7292) lt!2453657 (h!72559 s!2326)) e!4122565)))

(declare-fun b!6834646 () Bool)

(assert (=> b!6834646 (= e!4122565 e!4122568)))

(assert (=> b!6834646 (= c!1272667 ((_ is Union!16645) (reg!16974 r!7292)))))

(declare-fun bm!622567 () Bool)

(assert (=> bm!622567 (= call!622570 call!622571)))

(declare-fun b!6834647 () Bool)

(assert (=> b!6834647 (= e!4122566 (nullable!6618 (regOne!33802 (reg!16974 r!7292))))))

(declare-fun bm!622568 () Bool)

(assert (=> bm!622568 (= call!622569 (derivationStepZipperDown!1873 (ite c!1272667 (regTwo!33803 (reg!16974 r!7292)) (regOne!33802 (reg!16974 r!7292))) (ite c!1272667 lt!2453657 (Context!12059 call!622574)) (h!72559 s!2326)))))

(declare-fun b!6834648 () Bool)

(assert (=> b!6834648 (= e!4122563 e!4122567)))

(assert (=> b!6834648 (= c!1272664 ((_ is Concat!25490) (reg!16974 r!7292)))))

(declare-fun b!6834649 () Bool)

(assert (=> b!6834649 (= e!4122564 call!622573)))

(declare-fun bm!622569 () Bool)

(assert (=> bm!622569 (= call!622574 ($colon$colon!2448 (exprs!6529 lt!2453657) (ite (or c!1272665 c!1272664) (regTwo!33802 (reg!16974 r!7292)) (reg!16974 r!7292))))))

(declare-fun b!6834650 () Bool)

(assert (=> b!6834650 (= e!4122563 ((_ map or) call!622569 call!622570))))

(assert (= (and d!2150008 c!1272663) b!6834643))

(assert (= (and d!2150008 (not c!1272663)) b!6834646))

(assert (= (and b!6834646 c!1272667) b!6834644))

(assert (= (and b!6834646 (not c!1272667)) b!6834640))

(assert (= (and b!6834640 res!2790818) b!6834647))

(assert (= (and b!6834640 c!1272665) b!6834650))

(assert (= (and b!6834640 (not c!1272665)) b!6834648))

(assert (= (and b!6834648 c!1272664) b!6834641))

(assert (= (and b!6834648 (not c!1272664)) b!6834645))

(assert (= (and b!6834645 c!1272666) b!6834649))

(assert (= (and b!6834645 (not c!1272666)) b!6834642))

(assert (= (or b!6834641 b!6834649) bm!622564))

(assert (= (or b!6834641 b!6834649) bm!622565))

(assert (= (or b!6834650 bm!622564) bm!622569))

(assert (= (or b!6834650 bm!622565) bm!622567))

(assert (= (or b!6834644 b!6834650) bm!622568))

(assert (= (or b!6834644 bm!622567) bm!622566))

(declare-fun m!7580110 () Bool)

(assert (=> bm!622569 m!7580110))

(declare-fun m!7580112 () Bool)

(assert (=> b!6834647 m!7580112))

(assert (=> b!6834643 m!7579546))

(declare-fun m!7580114 () Bool)

(assert (=> bm!622568 m!7580114))

(declare-fun m!7580116 () Bool)

(assert (=> bm!622566 m!7580116))

(assert (=> b!6833926 d!2150008))

(declare-fun d!2150016 () Bool)

(declare-fun choose!50952 ((InoxSet Context!12058) Int) (InoxSet Context!12058))

(assert (=> d!2150016 (= (flatMap!2126 lt!2453645 lambda!386191) (choose!50952 lt!2453645 lambda!386191))))

(declare-fun bs!1828378 () Bool)

(assert (= bs!1828378 d!2150016))

(declare-fun m!7580122 () Bool)

(assert (=> bs!1828378 m!7580122))

(assert (=> b!6833926 d!2150016))

(declare-fun b!6834654 () Bool)

(declare-fun e!4122574 () (InoxSet Context!12058))

(declare-fun e!4122573 () (InoxSet Context!12058))

(assert (=> b!6834654 (= e!4122574 e!4122573)))

(declare-fun c!1272669 () Bool)

(assert (=> b!6834654 (= c!1272669 ((_ is Cons!66110) (exprs!6529 lt!2453626)))))

(declare-fun bm!622570 () Bool)

(declare-fun call!622575 () (InoxSet Context!12058))

(assert (=> bm!622570 (= call!622575 (derivationStepZipperDown!1873 (h!72558 (exprs!6529 lt!2453626)) (Context!12059 (t!379977 (exprs!6529 lt!2453626))) (h!72559 s!2326)))))

(declare-fun d!2150022 () Bool)

(declare-fun c!1272668 () Bool)

(declare-fun e!4122572 () Bool)

(assert (=> d!2150022 (= c!1272668 e!4122572)))

(declare-fun res!2790819 () Bool)

(assert (=> d!2150022 (=> (not res!2790819) (not e!4122572))))

(assert (=> d!2150022 (= res!2790819 ((_ is Cons!66110) (exprs!6529 lt!2453626)))))

(assert (=> d!2150022 (= (derivationStepZipperUp!1799 lt!2453626 (h!72559 s!2326)) e!4122574)))

(declare-fun b!6834655 () Bool)

(assert (=> b!6834655 (= e!4122573 call!622575)))

(declare-fun b!6834656 () Bool)

(assert (=> b!6834656 (= e!4122572 (nullable!6618 (h!72558 (exprs!6529 lt!2453626))))))

(declare-fun b!6834657 () Bool)

(assert (=> b!6834657 (= e!4122574 ((_ map or) call!622575 (derivationStepZipperUp!1799 (Context!12059 (t!379977 (exprs!6529 lt!2453626))) (h!72559 s!2326))))))

(declare-fun b!6834658 () Bool)

(assert (=> b!6834658 (= e!4122573 ((as const (Array Context!12058 Bool)) false))))

(assert (= (and d!2150022 res!2790819) b!6834656))

(assert (= (and d!2150022 c!1272668) b!6834657))

(assert (= (and d!2150022 (not c!1272668)) b!6834654))

(assert (= (and b!6834654 c!1272669) b!6834655))

(assert (= (and b!6834654 (not c!1272669)) b!6834658))

(assert (= (or b!6834657 b!6834655) bm!622570))

(declare-fun m!7580124 () Bool)

(assert (=> bm!622570 m!7580124))

(declare-fun m!7580126 () Bool)

(assert (=> b!6834656 m!7580126))

(declare-fun m!7580128 () Bool)

(assert (=> b!6834657 m!7580128))

(assert (=> b!6833926 d!2150022))

(declare-fun d!2150024 () Bool)

(declare-fun dynLambda!26421 (Int Context!12058) (InoxSet Context!12058))

(assert (=> d!2150024 (= (flatMap!2126 lt!2453645 lambda!386191) (dynLambda!26421 lambda!386191 lt!2453626))))

(declare-fun lt!2453778 () Unit!159981)

(declare-fun choose!50954 ((InoxSet Context!12058) Context!12058 Int) Unit!159981)

(assert (=> d!2150024 (= lt!2453778 (choose!50954 lt!2453645 lt!2453626 lambda!386191))))

(assert (=> d!2150024 (= lt!2453645 (store ((as const (Array Context!12058 Bool)) false) lt!2453626 true))))

(assert (=> d!2150024 (= (lemmaFlatMapOnSingletonSet!1652 lt!2453645 lt!2453626 lambda!386191) lt!2453778)))

(declare-fun b_lambda!257863 () Bool)

(assert (=> (not b_lambda!257863) (not d!2150024)))

(declare-fun bs!1828379 () Bool)

(assert (= bs!1828379 d!2150024))

(assert (=> bs!1828379 m!7579524))

(declare-fun m!7580130 () Bool)

(assert (=> bs!1828379 m!7580130))

(declare-fun m!7580132 () Bool)

(assert (=> bs!1828379 m!7580132))

(assert (=> bs!1828379 m!7579528))

(assert (=> b!6833926 d!2150024))

(declare-fun d!2150026 () Bool)

(declare-fun lt!2453779 () Regex!16645)

(assert (=> d!2150026 (validRegex!8381 lt!2453779)))

(assert (=> d!2150026 (= lt!2453779 (generalisedUnion!2489 (unfocusZipperList!2066 lt!2453634)))))

(assert (=> d!2150026 (= (unfocusZipper!2387 lt!2453634) lt!2453779)))

(declare-fun bs!1828380 () Bool)

(assert (= bs!1828380 d!2150026))

(declare-fun m!7580134 () Bool)

(assert (=> bs!1828380 m!7580134))

(declare-fun m!7580136 () Bool)

(assert (=> bs!1828380 m!7580136))

(assert (=> bs!1828380 m!7580136))

(declare-fun m!7580138 () Bool)

(assert (=> bs!1828380 m!7580138))

(assert (=> b!6833920 d!2150026))

(declare-fun d!2150028 () Bool)

(declare-fun c!1272670 () Bool)

(assert (=> d!2150028 (= c!1272670 (isEmpty!38501 s!2326))))

(declare-fun e!4122575 () Bool)

(assert (=> d!2150028 (= (matchZipper!2631 lt!2453645 s!2326) e!4122575)))

(declare-fun b!6834659 () Bool)

(assert (=> b!6834659 (= e!4122575 (nullableZipper!2346 lt!2453645))))

(declare-fun b!6834660 () Bool)

(assert (=> b!6834660 (= e!4122575 (matchZipper!2631 (derivationStepZipper!2589 lt!2453645 (head!13689 s!2326)) (tail!12774 s!2326)))))

(assert (= (and d!2150028 c!1272670) b!6834659))

(assert (= (and d!2150028 (not c!1272670)) b!6834660))

(assert (=> d!2150028 m!7579480))

(declare-fun m!7580140 () Bool)

(assert (=> b!6834659 m!7580140))

(assert (=> b!6834660 m!7579702))

(assert (=> b!6834660 m!7579702))

(declare-fun m!7580142 () Bool)

(assert (=> b!6834660 m!7580142))

(assert (=> b!6834660 m!7579706))

(assert (=> b!6834660 m!7580142))

(assert (=> b!6834660 m!7579706))

(declare-fun m!7580144 () Bool)

(assert (=> b!6834660 m!7580144))

(assert (=> b!6833940 d!2150028))

(declare-fun d!2150030 () Bool)

(declare-fun c!1272671 () Bool)

(assert (=> d!2150030 (= c!1272671 (isEmpty!38501 (t!379978 s!2326)))))

(declare-fun e!4122576 () Bool)

(assert (=> d!2150030 (= (matchZipper!2631 (derivationStepZipper!2589 lt!2453645 (h!72559 s!2326)) (t!379978 s!2326)) e!4122576)))

(declare-fun b!6834661 () Bool)

(assert (=> b!6834661 (= e!4122576 (nullableZipper!2346 (derivationStepZipper!2589 lt!2453645 (h!72559 s!2326))))))

(declare-fun b!6834662 () Bool)

(assert (=> b!6834662 (= e!4122576 (matchZipper!2631 (derivationStepZipper!2589 (derivationStepZipper!2589 lt!2453645 (h!72559 s!2326)) (head!13689 (t!379978 s!2326))) (tail!12774 (t!379978 s!2326))))))

(assert (= (and d!2150030 c!1272671) b!6834661))

(assert (= (and d!2150030 (not c!1272671)) b!6834662))

(declare-fun m!7580146 () Bool)

(assert (=> d!2150030 m!7580146))

(assert (=> b!6834661 m!7579436))

(declare-fun m!7580148 () Bool)

(assert (=> b!6834661 m!7580148))

(declare-fun m!7580150 () Bool)

(assert (=> b!6834662 m!7580150))

(assert (=> b!6834662 m!7579436))

(assert (=> b!6834662 m!7580150))

(declare-fun m!7580152 () Bool)

(assert (=> b!6834662 m!7580152))

(declare-fun m!7580154 () Bool)

(assert (=> b!6834662 m!7580154))

(assert (=> b!6834662 m!7580152))

(assert (=> b!6834662 m!7580154))

(declare-fun m!7580156 () Bool)

(assert (=> b!6834662 m!7580156))

(assert (=> b!6833940 d!2150030))

(declare-fun bs!1828381 () Bool)

(declare-fun d!2150032 () Bool)

(assert (= bs!1828381 (and d!2150032 b!6833941)))

(declare-fun lambda!386255 () Int)

(assert (=> bs!1828381 (= lambda!386255 lambda!386191)))

(declare-fun bs!1828382 () Bool)

(assert (= bs!1828382 (and d!2150032 d!2149940)))

(assert (=> bs!1828382 (= lambda!386255 lambda!386247)))

(assert (=> d!2150032 true))

(assert (=> d!2150032 (= (derivationStepZipper!2589 lt!2453645 (h!72559 s!2326)) (flatMap!2126 lt!2453645 lambda!386255))))

(declare-fun bs!1828383 () Bool)

(assert (= bs!1828383 d!2150032))

(declare-fun m!7580158 () Bool)

(assert (=> bs!1828383 m!7580158))

(assert (=> b!6833940 d!2150032))

(declare-fun bs!1828384 () Bool)

(declare-fun b!6834703 () Bool)

(assert (= bs!1828384 (and b!6834703 b!6833933)))

(declare-fun lambda!386260 () Int)

(assert (=> bs!1828384 (not (= lambda!386260 lambda!386188))))

(assert (=> bs!1828384 (= (and (= (reg!16974 lt!2453650) (reg!16974 r!7292)) (= lt!2453650 r!7292)) (= lambda!386260 lambda!386189))))

(assert (=> bs!1828384 (not (= lambda!386260 lambda!386190))))

(assert (=> b!6834703 true))

(assert (=> b!6834703 true))

(declare-fun bs!1828385 () Bool)

(declare-fun b!6834700 () Bool)

(assert (= bs!1828385 (and b!6834700 b!6833933)))

(declare-fun lambda!386261 () Int)

(assert (=> bs!1828385 (not (= lambda!386261 lambda!386188))))

(assert (=> bs!1828385 (not (= lambda!386261 lambda!386189))))

(assert (=> bs!1828385 (= (and (= (regOne!33802 lt!2453650) (reg!16974 r!7292)) (= (regTwo!33802 lt!2453650) r!7292)) (= lambda!386261 lambda!386190))))

(declare-fun bs!1828386 () Bool)

(assert (= bs!1828386 (and b!6834700 b!6834703)))

(assert (=> bs!1828386 (not (= lambda!386261 lambda!386260))))

(assert (=> b!6834700 true))

(assert (=> b!6834700 true))

(declare-fun call!622581 () Bool)

(declare-fun bm!622575 () Bool)

(declare-fun c!1272682 () Bool)

(assert (=> bm!622575 (= call!622581 (Exists!3713 (ite c!1272682 lambda!386260 lambda!386261)))))

(declare-fun b!6834695 () Bool)

(declare-fun c!1272683 () Bool)

(assert (=> b!6834695 (= c!1272683 ((_ is Union!16645) lt!2453650))))

(declare-fun e!4122595 () Bool)

(declare-fun e!4122599 () Bool)

(assert (=> b!6834695 (= e!4122595 e!4122599)))

(declare-fun bm!622576 () Bool)

(declare-fun call!622580 () Bool)

(assert (=> bm!622576 (= call!622580 (isEmpty!38501 s!2326))))

(declare-fun b!6834697 () Bool)

(declare-fun res!2790838 () Bool)

(declare-fun e!4122597 () Bool)

(assert (=> b!6834697 (=> res!2790838 e!4122597)))

(assert (=> b!6834697 (= res!2790838 call!622580)))

(declare-fun e!4122601 () Bool)

(assert (=> b!6834697 (= e!4122601 e!4122597)))

(declare-fun b!6834698 () Bool)

(assert (=> b!6834698 (= e!4122595 (= s!2326 (Cons!66111 (c!1272469 lt!2453650) Nil!66111)))))

(declare-fun b!6834699 () Bool)

(assert (=> b!6834699 (= e!4122599 e!4122601)))

(assert (=> b!6834699 (= c!1272682 ((_ is Star!16645) lt!2453650))))

(assert (=> b!6834700 (= e!4122601 call!622581)))

(declare-fun b!6834701 () Bool)

(declare-fun e!4122600 () Bool)

(assert (=> b!6834701 (= e!4122600 call!622580)))

(declare-fun d!2150034 () Bool)

(declare-fun c!1272681 () Bool)

(assert (=> d!2150034 (= c!1272681 ((_ is EmptyExpr!16645) lt!2453650))))

(assert (=> d!2150034 (= (matchRSpec!3746 lt!2453650 s!2326) e!4122600)))

(declare-fun b!6834696 () Bool)

(declare-fun e!4122596 () Bool)

(assert (=> b!6834696 (= e!4122596 (matchRSpec!3746 (regTwo!33803 lt!2453650) s!2326))))

(declare-fun b!6834702 () Bool)

(assert (=> b!6834702 (= e!4122599 e!4122596)))

(declare-fun res!2790837 () Bool)

(assert (=> b!6834702 (= res!2790837 (matchRSpec!3746 (regOne!33803 lt!2453650) s!2326))))

(assert (=> b!6834702 (=> res!2790837 e!4122596)))

(assert (=> b!6834703 (= e!4122597 call!622581)))

(declare-fun b!6834704 () Bool)

(declare-fun e!4122598 () Bool)

(assert (=> b!6834704 (= e!4122600 e!4122598)))

(declare-fun res!2790836 () Bool)

(assert (=> b!6834704 (= res!2790836 (not ((_ is EmptyLang!16645) lt!2453650)))))

(assert (=> b!6834704 (=> (not res!2790836) (not e!4122598))))

(declare-fun b!6834705 () Bool)

(declare-fun c!1272680 () Bool)

(assert (=> b!6834705 (= c!1272680 ((_ is ElementMatch!16645) lt!2453650))))

(assert (=> b!6834705 (= e!4122598 e!4122595)))

(assert (= (and d!2150034 c!1272681) b!6834701))

(assert (= (and d!2150034 (not c!1272681)) b!6834704))

(assert (= (and b!6834704 res!2790836) b!6834705))

(assert (= (and b!6834705 c!1272680) b!6834698))

(assert (= (and b!6834705 (not c!1272680)) b!6834695))

(assert (= (and b!6834695 c!1272683) b!6834702))

(assert (= (and b!6834695 (not c!1272683)) b!6834699))

(assert (= (and b!6834702 (not res!2790837)) b!6834696))

(assert (= (and b!6834699 c!1272682) b!6834697))

(assert (= (and b!6834699 (not c!1272682)) b!6834700))

(assert (= (and b!6834697 (not res!2790838)) b!6834703))

(assert (= (or b!6834703 b!6834700) bm!622575))

(assert (= (or b!6834701 b!6834697) bm!622576))

(declare-fun m!7580160 () Bool)

(assert (=> bm!622575 m!7580160))

(assert (=> bm!622576 m!7579480))

(declare-fun m!7580162 () Bool)

(assert (=> b!6834696 m!7580162))

(declare-fun m!7580164 () Bool)

(assert (=> b!6834702 m!7580164))

(assert (=> b!6833939 d!2150034))

(declare-fun b!6834706 () Bool)

(declare-fun e!4122605 () Bool)

(assert (=> b!6834706 (= e!4122605 (nullable!6618 lt!2453650))))

(declare-fun b!6834708 () Bool)

(declare-fun e!4122607 () Bool)

(assert (=> b!6834708 (= e!4122607 (= (head!13689 s!2326) (c!1272469 lt!2453650)))))

(declare-fun bm!622577 () Bool)

(declare-fun call!622582 () Bool)

(assert (=> bm!622577 (= call!622582 (isEmpty!38501 s!2326))))

(declare-fun b!6834709 () Bool)

(declare-fun e!4122606 () Bool)

(declare-fun e!4122602 () Bool)

(assert (=> b!6834709 (= e!4122606 e!4122602)))

(declare-fun res!2790843 () Bool)

(assert (=> b!6834709 (=> res!2790843 e!4122602)))

(assert (=> b!6834709 (= res!2790843 call!622582)))

(declare-fun b!6834710 () Bool)

(declare-fun res!2790845 () Bool)

(assert (=> b!6834710 (=> (not res!2790845) (not e!4122607))))

(assert (=> b!6834710 (= res!2790845 (not call!622582))))

(declare-fun b!6834711 () Bool)

(declare-fun e!4122603 () Bool)

(assert (=> b!6834711 (= e!4122603 e!4122606)))

(declare-fun res!2790842 () Bool)

(assert (=> b!6834711 (=> (not res!2790842) (not e!4122606))))

(declare-fun lt!2453780 () Bool)

(assert (=> b!6834711 (= res!2790842 (not lt!2453780))))

(declare-fun b!6834712 () Bool)

(declare-fun res!2790840 () Bool)

(assert (=> b!6834712 (=> (not res!2790840) (not e!4122607))))

(assert (=> b!6834712 (= res!2790840 (isEmpty!38501 (tail!12774 s!2326)))))

(declare-fun b!6834713 () Bool)

(declare-fun e!4122608 () Bool)

(assert (=> b!6834713 (= e!4122608 (not lt!2453780))))

(declare-fun b!6834714 () Bool)

(declare-fun res!2790844 () Bool)

(assert (=> b!6834714 (=> res!2790844 e!4122602)))

(assert (=> b!6834714 (= res!2790844 (not (isEmpty!38501 (tail!12774 s!2326))))))

(declare-fun b!6834715 () Bool)

(declare-fun e!4122604 () Bool)

(assert (=> b!6834715 (= e!4122604 e!4122608)))

(declare-fun c!1272686 () Bool)

(assert (=> b!6834715 (= c!1272686 ((_ is EmptyLang!16645) lt!2453650))))

(declare-fun d!2150036 () Bool)

(assert (=> d!2150036 e!4122604))

(declare-fun c!1272685 () Bool)

(assert (=> d!2150036 (= c!1272685 ((_ is EmptyExpr!16645) lt!2453650))))

(assert (=> d!2150036 (= lt!2453780 e!4122605)))

(declare-fun c!1272684 () Bool)

(assert (=> d!2150036 (= c!1272684 (isEmpty!38501 s!2326))))

(assert (=> d!2150036 (validRegex!8381 lt!2453650)))

(assert (=> d!2150036 (= (matchR!8828 lt!2453650 s!2326) lt!2453780)))

(declare-fun b!6834707 () Bool)

(declare-fun res!2790841 () Bool)

(assert (=> b!6834707 (=> res!2790841 e!4122603)))

(assert (=> b!6834707 (= res!2790841 (not ((_ is ElementMatch!16645) lt!2453650)))))

(assert (=> b!6834707 (= e!4122608 e!4122603)))

(declare-fun b!6834716 () Bool)

(assert (=> b!6834716 (= e!4122602 (not (= (head!13689 s!2326) (c!1272469 lt!2453650))))))

(declare-fun b!6834717 () Bool)

(assert (=> b!6834717 (= e!4122604 (= lt!2453780 call!622582))))

(declare-fun b!6834718 () Bool)

(declare-fun res!2790839 () Bool)

(assert (=> b!6834718 (=> res!2790839 e!4122603)))

(assert (=> b!6834718 (= res!2790839 e!4122607)))

(declare-fun res!2790846 () Bool)

(assert (=> b!6834718 (=> (not res!2790846) (not e!4122607))))

(assert (=> b!6834718 (= res!2790846 lt!2453780)))

(declare-fun b!6834719 () Bool)

(assert (=> b!6834719 (= e!4122605 (matchR!8828 (derivativeStep!5303 lt!2453650 (head!13689 s!2326)) (tail!12774 s!2326)))))

(assert (= (and d!2150036 c!1272684) b!6834706))

(assert (= (and d!2150036 (not c!1272684)) b!6834719))

(assert (= (and d!2150036 c!1272685) b!6834717))

(assert (= (and d!2150036 (not c!1272685)) b!6834715))

(assert (= (and b!6834715 c!1272686) b!6834713))

(assert (= (and b!6834715 (not c!1272686)) b!6834707))

(assert (= (and b!6834707 (not res!2790841)) b!6834718))

(assert (= (and b!6834718 res!2790846) b!6834710))

(assert (= (and b!6834710 res!2790845) b!6834712))

(assert (= (and b!6834712 res!2790840) b!6834708))

(assert (= (and b!6834718 (not res!2790839)) b!6834711))

(assert (= (and b!6834711 res!2790842) b!6834709))

(assert (= (and b!6834709 (not res!2790843)) b!6834714))

(assert (= (and b!6834714 (not res!2790844)) b!6834716))

(assert (= (or b!6834717 b!6834709 b!6834710) bm!622577))

(assert (=> b!6834714 m!7579706))

(assert (=> b!6834714 m!7579706))

(declare-fun m!7580166 () Bool)

(assert (=> b!6834714 m!7580166))

(assert (=> d!2150036 m!7579480))

(declare-fun m!7580168 () Bool)

(assert (=> d!2150036 m!7580168))

(assert (=> b!6834712 m!7579706))

(assert (=> b!6834712 m!7579706))

(assert (=> b!6834712 m!7580166))

(assert (=> bm!622577 m!7579480))

(assert (=> b!6834716 m!7579702))

(declare-fun m!7580170 () Bool)

(assert (=> b!6834706 m!7580170))

(assert (=> b!6834719 m!7579702))

(assert (=> b!6834719 m!7579702))

(declare-fun m!7580172 () Bool)

(assert (=> b!6834719 m!7580172))

(assert (=> b!6834719 m!7579706))

(assert (=> b!6834719 m!7580172))

(assert (=> b!6834719 m!7579706))

(declare-fun m!7580174 () Bool)

(assert (=> b!6834719 m!7580174))

(assert (=> b!6834708 m!7579702))

(assert (=> b!6833939 d!2150036))

(declare-fun d!2150038 () Bool)

(assert (=> d!2150038 (= (matchR!8828 lt!2453650 s!2326) (matchRSpec!3746 lt!2453650 s!2326))))

(declare-fun lt!2453783 () Unit!159981)

(declare-fun choose!50957 (Regex!16645 List!66235) Unit!159981)

(assert (=> d!2150038 (= lt!2453783 (choose!50957 lt!2453650 s!2326))))

(assert (=> d!2150038 (validRegex!8381 lt!2453650)))

(assert (=> d!2150038 (= (mainMatchTheorem!3746 lt!2453650 s!2326) lt!2453783)))

(declare-fun bs!1828387 () Bool)

(assert (= bs!1828387 d!2150038))

(assert (=> bs!1828387 m!7579442))

(assert (=> bs!1828387 m!7579440))

(declare-fun m!7580176 () Bool)

(assert (=> bs!1828387 m!7580176))

(assert (=> bs!1828387 m!7580168))

(assert (=> b!6833939 d!2150038))

(declare-fun bs!1828388 () Bool)

(declare-fun d!2150040 () Bool)

(assert (= bs!1828388 (and d!2150040 b!6833941)))

(declare-fun lambda!386262 () Int)

(assert (=> bs!1828388 (= lambda!386262 lambda!386191)))

(declare-fun bs!1828389 () Bool)

(assert (= bs!1828389 (and d!2150040 d!2149940)))

(assert (=> bs!1828389 (= lambda!386262 lambda!386247)))

(declare-fun bs!1828390 () Bool)

(assert (= bs!1828390 (and d!2150040 d!2150032)))

(assert (=> bs!1828390 (= lambda!386262 lambda!386255)))

(assert (=> d!2150040 true))

(assert (=> d!2150040 (= (derivationStepZipper!2589 lt!2453651 (h!72559 s!2326)) (flatMap!2126 lt!2453651 lambda!386262))))

(declare-fun bs!1828391 () Bool)

(assert (= bs!1828391 d!2150040))

(declare-fun m!7580178 () Bool)

(assert (=> bs!1828391 m!7580178))

(assert (=> b!6833918 d!2150040))

(declare-fun d!2150042 () Bool)

(assert (=> d!2150042 (= (flatMap!2126 lt!2453651 lambda!386191) (dynLambda!26421 lambda!386191 lt!2453657))))

(declare-fun lt!2453784 () Unit!159981)

(assert (=> d!2150042 (= lt!2453784 (choose!50954 lt!2453651 lt!2453657 lambda!386191))))

(assert (=> d!2150042 (= lt!2453651 (store ((as const (Array Context!12058 Bool)) false) lt!2453657 true))))

(assert (=> d!2150042 (= (lemmaFlatMapOnSingletonSet!1652 lt!2453651 lt!2453657 lambda!386191) lt!2453784)))

(declare-fun b_lambda!257865 () Bool)

(assert (=> (not b_lambda!257865) (not d!2150042)))

(declare-fun bs!1828392 () Bool)

(assert (= bs!1828392 d!2150042))

(assert (=> bs!1828392 m!7579536))

(declare-fun m!7580180 () Bool)

(assert (=> bs!1828392 m!7580180))

(declare-fun m!7580182 () Bool)

(assert (=> bs!1828392 m!7580182))

(assert (=> bs!1828392 m!7579546))

(assert (=> b!6833918 d!2150042))

(declare-fun d!2150044 () Bool)

(assert (=> d!2150044 (= (flatMap!2126 lt!2453651 lambda!386191) (choose!50952 lt!2453651 lambda!386191))))

(declare-fun bs!1828393 () Bool)

(assert (= bs!1828393 d!2150044))

(declare-fun m!7580184 () Bool)

(assert (=> bs!1828393 m!7580184))

(assert (=> b!6833918 d!2150044))

(declare-fun b!6834720 () Bool)

(declare-fun e!4122611 () (InoxSet Context!12058))

(declare-fun e!4122610 () (InoxSet Context!12058))

(assert (=> b!6834720 (= e!4122611 e!4122610)))

(declare-fun c!1272688 () Bool)

(assert (=> b!6834720 (= c!1272688 ((_ is Cons!66110) (exprs!6529 lt!2453657)))))

(declare-fun bm!622578 () Bool)

(declare-fun call!622583 () (InoxSet Context!12058))

(assert (=> bm!622578 (= call!622583 (derivationStepZipperDown!1873 (h!72558 (exprs!6529 lt!2453657)) (Context!12059 (t!379977 (exprs!6529 lt!2453657))) (h!72559 s!2326)))))

(declare-fun d!2150046 () Bool)

(declare-fun c!1272687 () Bool)

(declare-fun e!4122609 () Bool)

(assert (=> d!2150046 (= c!1272687 e!4122609)))

(declare-fun res!2790847 () Bool)

(assert (=> d!2150046 (=> (not res!2790847) (not e!4122609))))

(assert (=> d!2150046 (= res!2790847 ((_ is Cons!66110) (exprs!6529 lt!2453657)))))

(assert (=> d!2150046 (= (derivationStepZipperUp!1799 lt!2453657 (h!72559 s!2326)) e!4122611)))

(declare-fun b!6834721 () Bool)

(assert (=> b!6834721 (= e!4122610 call!622583)))

(declare-fun b!6834722 () Bool)

(assert (=> b!6834722 (= e!4122609 (nullable!6618 (h!72558 (exprs!6529 lt!2453657))))))

(declare-fun b!6834723 () Bool)

(assert (=> b!6834723 (= e!4122611 ((_ map or) call!622583 (derivationStepZipperUp!1799 (Context!12059 (t!379977 (exprs!6529 lt!2453657))) (h!72559 s!2326))))))

(declare-fun b!6834724 () Bool)

(assert (=> b!6834724 (= e!4122610 ((as const (Array Context!12058 Bool)) false))))

(assert (= (and d!2150046 res!2790847) b!6834722))

(assert (= (and d!2150046 c!1272687) b!6834723))

(assert (= (and d!2150046 (not c!1272687)) b!6834720))

(assert (= (and b!6834720 c!1272688) b!6834721))

(assert (= (and b!6834720 (not c!1272688)) b!6834724))

(assert (= (or b!6834723 b!6834721) bm!622578))

(declare-fun m!7580186 () Bool)

(assert (=> bm!622578 m!7580186))

(declare-fun m!7580188 () Bool)

(assert (=> b!6834722 m!7580188))

(declare-fun m!7580190 () Bool)

(assert (=> b!6834723 m!7580190))

(assert (=> b!6833918 d!2150046))

(declare-fun b!6834725 () Bool)

(declare-fun e!4122614 () (InoxSet Context!12058))

(declare-fun e!4122613 () (InoxSet Context!12058))

(assert (=> b!6834725 (= e!4122614 e!4122613)))

(declare-fun c!1272690 () Bool)

(assert (=> b!6834725 (= c!1272690 ((_ is Cons!66110) (exprs!6529 lt!2453636)))))

(declare-fun bm!622579 () Bool)

(declare-fun call!622584 () (InoxSet Context!12058))

(assert (=> bm!622579 (= call!622584 (derivationStepZipperDown!1873 (h!72558 (exprs!6529 lt!2453636)) (Context!12059 (t!379977 (exprs!6529 lt!2453636))) (h!72559 s!2326)))))

(declare-fun d!2150048 () Bool)

(declare-fun c!1272689 () Bool)

(declare-fun e!4122612 () Bool)

(assert (=> d!2150048 (= c!1272689 e!4122612)))

(declare-fun res!2790848 () Bool)

(assert (=> d!2150048 (=> (not res!2790848) (not e!4122612))))

(assert (=> d!2150048 (= res!2790848 ((_ is Cons!66110) (exprs!6529 lt!2453636)))))

(assert (=> d!2150048 (= (derivationStepZipperUp!1799 lt!2453636 (h!72559 s!2326)) e!4122614)))

(declare-fun b!6834726 () Bool)

(assert (=> b!6834726 (= e!4122613 call!622584)))

(declare-fun b!6834727 () Bool)

(assert (=> b!6834727 (= e!4122612 (nullable!6618 (h!72558 (exprs!6529 lt!2453636))))))

(declare-fun b!6834728 () Bool)

(assert (=> b!6834728 (= e!4122614 ((_ map or) call!622584 (derivationStepZipperUp!1799 (Context!12059 (t!379977 (exprs!6529 lt!2453636))) (h!72559 s!2326))))))

(declare-fun b!6834729 () Bool)

(assert (=> b!6834729 (= e!4122613 ((as const (Array Context!12058 Bool)) false))))

(assert (= (and d!2150048 res!2790848) b!6834727))

(assert (= (and d!2150048 c!1272689) b!6834728))

(assert (= (and d!2150048 (not c!1272689)) b!6834725))

(assert (= (and b!6834725 c!1272690) b!6834726))

(assert (= (and b!6834725 (not c!1272690)) b!6834729))

(assert (= (or b!6834728 b!6834726) bm!622579))

(declare-fun m!7580192 () Bool)

(assert (=> bm!622579 m!7580192))

(declare-fun m!7580194 () Bool)

(assert (=> b!6834727 m!7580194))

(declare-fun m!7580196 () Bool)

(assert (=> b!6834728 m!7580196))

(assert (=> b!6833918 d!2150048))

(declare-fun d!2150050 () Bool)

(assert (=> d!2150050 (= (flatMap!2126 lt!2453646 lambda!386191) (dynLambda!26421 lambda!386191 lt!2453636))))

(declare-fun lt!2453785 () Unit!159981)

(assert (=> d!2150050 (= lt!2453785 (choose!50954 lt!2453646 lt!2453636 lambda!386191))))

(assert (=> d!2150050 (= lt!2453646 (store ((as const (Array Context!12058 Bool)) false) lt!2453636 true))))

(assert (=> d!2150050 (= (lemmaFlatMapOnSingletonSet!1652 lt!2453646 lt!2453636 lambda!386191) lt!2453785)))

(declare-fun b_lambda!257867 () Bool)

(assert (=> (not b_lambda!257867) (not d!2150050)))

(declare-fun bs!1828394 () Bool)

(assert (= bs!1828394 d!2150050))

(assert (=> bs!1828394 m!7579548))

(declare-fun m!7580198 () Bool)

(assert (=> bs!1828394 m!7580198))

(declare-fun m!7580200 () Bool)

(assert (=> bs!1828394 m!7580200))

(assert (=> bs!1828394 m!7579550))

(assert (=> b!6833918 d!2150050))

(declare-fun d!2150052 () Bool)

(assert (=> d!2150052 (= (flatMap!2126 lt!2453646 lambda!386191) (choose!50952 lt!2453646 lambda!386191))))

(declare-fun bs!1828395 () Bool)

(assert (= bs!1828395 d!2150052))

(declare-fun m!7580202 () Bool)

(assert (=> bs!1828395 m!7580202))

(assert (=> b!6833918 d!2150052))

(declare-fun bs!1828396 () Bool)

(declare-fun b!6834738 () Bool)

(assert (= bs!1828396 (and b!6834738 b!6833933)))

(declare-fun lambda!386263 () Int)

(assert (=> bs!1828396 (= lambda!386263 lambda!386189)))

(assert (=> bs!1828396 (not (= lambda!386263 lambda!386190))))

(assert (=> bs!1828396 (not (= lambda!386263 lambda!386188))))

(declare-fun bs!1828397 () Bool)

(assert (= bs!1828397 (and b!6834738 b!6834700)))

(assert (=> bs!1828397 (not (= lambda!386263 lambda!386261))))

(declare-fun bs!1828398 () Bool)

(assert (= bs!1828398 (and b!6834738 b!6834703)))

(assert (=> bs!1828398 (= (and (= (reg!16974 r!7292) (reg!16974 lt!2453650)) (= r!7292 lt!2453650)) (= lambda!386263 lambda!386260))))

(assert (=> b!6834738 true))

(assert (=> b!6834738 true))

(declare-fun bs!1828399 () Bool)

(declare-fun b!6834735 () Bool)

(assert (= bs!1828399 (and b!6834735 b!6833933)))

(declare-fun lambda!386264 () Int)

(assert (=> bs!1828399 (not (= lambda!386264 lambda!386189))))

(declare-fun bs!1828400 () Bool)

(assert (= bs!1828400 (and b!6834735 b!6834738)))

(assert (=> bs!1828400 (not (= lambda!386264 lambda!386263))))

(assert (=> bs!1828399 (= (and (= (regOne!33802 r!7292) (reg!16974 r!7292)) (= (regTwo!33802 r!7292) r!7292)) (= lambda!386264 lambda!386190))))

(assert (=> bs!1828399 (not (= lambda!386264 lambda!386188))))

(declare-fun bs!1828401 () Bool)

(assert (= bs!1828401 (and b!6834735 b!6834700)))

(assert (=> bs!1828401 (= (and (= (regOne!33802 r!7292) (regOne!33802 lt!2453650)) (= (regTwo!33802 r!7292) (regTwo!33802 lt!2453650))) (= lambda!386264 lambda!386261))))

(declare-fun bs!1828402 () Bool)

(assert (= bs!1828402 (and b!6834735 b!6834703)))

(assert (=> bs!1828402 (not (= lambda!386264 lambda!386260))))

(assert (=> b!6834735 true))

(assert (=> b!6834735 true))

(declare-fun c!1272693 () Bool)

(declare-fun call!622586 () Bool)

(declare-fun bm!622580 () Bool)

(assert (=> bm!622580 (= call!622586 (Exists!3713 (ite c!1272693 lambda!386263 lambda!386264)))))

(declare-fun b!6834730 () Bool)

(declare-fun c!1272694 () Bool)

(assert (=> b!6834730 (= c!1272694 ((_ is Union!16645) r!7292))))

(declare-fun e!4122615 () Bool)

(declare-fun e!4122619 () Bool)

(assert (=> b!6834730 (= e!4122615 e!4122619)))

(declare-fun bm!622581 () Bool)

(declare-fun call!622585 () Bool)

(assert (=> bm!622581 (= call!622585 (isEmpty!38501 s!2326))))

(declare-fun b!6834732 () Bool)

(declare-fun res!2790851 () Bool)

(declare-fun e!4122617 () Bool)

(assert (=> b!6834732 (=> res!2790851 e!4122617)))

(assert (=> b!6834732 (= res!2790851 call!622585)))

(declare-fun e!4122621 () Bool)

(assert (=> b!6834732 (= e!4122621 e!4122617)))

(declare-fun b!6834733 () Bool)

(assert (=> b!6834733 (= e!4122615 (= s!2326 (Cons!66111 (c!1272469 r!7292) Nil!66111)))))

(declare-fun b!6834734 () Bool)

(assert (=> b!6834734 (= e!4122619 e!4122621)))

(assert (=> b!6834734 (= c!1272693 ((_ is Star!16645) r!7292))))

(assert (=> b!6834735 (= e!4122621 call!622586)))

(declare-fun b!6834736 () Bool)

(declare-fun e!4122620 () Bool)

(assert (=> b!6834736 (= e!4122620 call!622585)))

(declare-fun d!2150054 () Bool)

(declare-fun c!1272692 () Bool)

(assert (=> d!2150054 (= c!1272692 ((_ is EmptyExpr!16645) r!7292))))

(assert (=> d!2150054 (= (matchRSpec!3746 r!7292 s!2326) e!4122620)))

(declare-fun b!6834731 () Bool)

(declare-fun e!4122616 () Bool)

(assert (=> b!6834731 (= e!4122616 (matchRSpec!3746 (regTwo!33803 r!7292) s!2326))))

(declare-fun b!6834737 () Bool)

(assert (=> b!6834737 (= e!4122619 e!4122616)))

(declare-fun res!2790850 () Bool)

(assert (=> b!6834737 (= res!2790850 (matchRSpec!3746 (regOne!33803 r!7292) s!2326))))

(assert (=> b!6834737 (=> res!2790850 e!4122616)))

(assert (=> b!6834738 (= e!4122617 call!622586)))

(declare-fun b!6834739 () Bool)

(declare-fun e!4122618 () Bool)

(assert (=> b!6834739 (= e!4122620 e!4122618)))

(declare-fun res!2790849 () Bool)

(assert (=> b!6834739 (= res!2790849 (not ((_ is EmptyLang!16645) r!7292)))))

(assert (=> b!6834739 (=> (not res!2790849) (not e!4122618))))

(declare-fun b!6834740 () Bool)

(declare-fun c!1272691 () Bool)

(assert (=> b!6834740 (= c!1272691 ((_ is ElementMatch!16645) r!7292))))

(assert (=> b!6834740 (= e!4122618 e!4122615)))

(assert (= (and d!2150054 c!1272692) b!6834736))

(assert (= (and d!2150054 (not c!1272692)) b!6834739))

(assert (= (and b!6834739 res!2790849) b!6834740))

(assert (= (and b!6834740 c!1272691) b!6834733))

(assert (= (and b!6834740 (not c!1272691)) b!6834730))

(assert (= (and b!6834730 c!1272694) b!6834737))

(assert (= (and b!6834730 (not c!1272694)) b!6834734))

(assert (= (and b!6834737 (not res!2790850)) b!6834731))

(assert (= (and b!6834734 c!1272693) b!6834732))

(assert (= (and b!6834734 (not c!1272693)) b!6834735))

(assert (= (and b!6834732 (not res!2790851)) b!6834738))

(assert (= (or b!6834738 b!6834735) bm!622580))

(assert (= (or b!6834736 b!6834732) bm!622581))

(declare-fun m!7580204 () Bool)

(assert (=> bm!622580 m!7580204))

(assert (=> bm!622581 m!7579480))

(declare-fun m!7580206 () Bool)

(assert (=> b!6834731 m!7580206))

(declare-fun m!7580208 () Bool)

(assert (=> b!6834737 m!7580208))

(assert (=> b!6833923 d!2150054))

(declare-fun b!6834741 () Bool)

(declare-fun e!4122625 () Bool)

(assert (=> b!6834741 (= e!4122625 (nullable!6618 r!7292))))

(declare-fun b!6834743 () Bool)

(declare-fun e!4122627 () Bool)

(assert (=> b!6834743 (= e!4122627 (= (head!13689 s!2326) (c!1272469 r!7292)))))

(declare-fun bm!622582 () Bool)

(declare-fun call!622587 () Bool)

(assert (=> bm!622582 (= call!622587 (isEmpty!38501 s!2326))))

(declare-fun b!6834744 () Bool)

(declare-fun e!4122626 () Bool)

(declare-fun e!4122622 () Bool)

(assert (=> b!6834744 (= e!4122626 e!4122622)))

(declare-fun res!2790856 () Bool)

(assert (=> b!6834744 (=> res!2790856 e!4122622)))

(assert (=> b!6834744 (= res!2790856 call!622587)))

(declare-fun b!6834745 () Bool)

(declare-fun res!2790858 () Bool)

(assert (=> b!6834745 (=> (not res!2790858) (not e!4122627))))

(assert (=> b!6834745 (= res!2790858 (not call!622587))))

(declare-fun b!6834746 () Bool)

(declare-fun e!4122623 () Bool)

(assert (=> b!6834746 (= e!4122623 e!4122626)))

(declare-fun res!2790855 () Bool)

(assert (=> b!6834746 (=> (not res!2790855) (not e!4122626))))

(declare-fun lt!2453786 () Bool)

(assert (=> b!6834746 (= res!2790855 (not lt!2453786))))

(declare-fun b!6834747 () Bool)

(declare-fun res!2790853 () Bool)

(assert (=> b!6834747 (=> (not res!2790853) (not e!4122627))))

(assert (=> b!6834747 (= res!2790853 (isEmpty!38501 (tail!12774 s!2326)))))

(declare-fun b!6834748 () Bool)

(declare-fun e!4122628 () Bool)

(assert (=> b!6834748 (= e!4122628 (not lt!2453786))))

(declare-fun b!6834749 () Bool)

(declare-fun res!2790857 () Bool)

(assert (=> b!6834749 (=> res!2790857 e!4122622)))

(assert (=> b!6834749 (= res!2790857 (not (isEmpty!38501 (tail!12774 s!2326))))))

(declare-fun b!6834750 () Bool)

(declare-fun e!4122624 () Bool)

(assert (=> b!6834750 (= e!4122624 e!4122628)))

(declare-fun c!1272697 () Bool)

(assert (=> b!6834750 (= c!1272697 ((_ is EmptyLang!16645) r!7292))))

(declare-fun d!2150056 () Bool)

(assert (=> d!2150056 e!4122624))

(declare-fun c!1272696 () Bool)

(assert (=> d!2150056 (= c!1272696 ((_ is EmptyExpr!16645) r!7292))))

(assert (=> d!2150056 (= lt!2453786 e!4122625)))

(declare-fun c!1272695 () Bool)

(assert (=> d!2150056 (= c!1272695 (isEmpty!38501 s!2326))))

(assert (=> d!2150056 (validRegex!8381 r!7292)))

(assert (=> d!2150056 (= (matchR!8828 r!7292 s!2326) lt!2453786)))

(declare-fun b!6834742 () Bool)

(declare-fun res!2790854 () Bool)

(assert (=> b!6834742 (=> res!2790854 e!4122623)))

(assert (=> b!6834742 (= res!2790854 (not ((_ is ElementMatch!16645) r!7292)))))

(assert (=> b!6834742 (= e!4122628 e!4122623)))

(declare-fun b!6834751 () Bool)

(assert (=> b!6834751 (= e!4122622 (not (= (head!13689 s!2326) (c!1272469 r!7292))))))

(declare-fun b!6834752 () Bool)

(assert (=> b!6834752 (= e!4122624 (= lt!2453786 call!622587))))

(declare-fun b!6834753 () Bool)

(declare-fun res!2790852 () Bool)

(assert (=> b!6834753 (=> res!2790852 e!4122623)))

(assert (=> b!6834753 (= res!2790852 e!4122627)))

(declare-fun res!2790859 () Bool)

(assert (=> b!6834753 (=> (not res!2790859) (not e!4122627))))

(assert (=> b!6834753 (= res!2790859 lt!2453786)))

(declare-fun b!6834754 () Bool)

(assert (=> b!6834754 (= e!4122625 (matchR!8828 (derivativeStep!5303 r!7292 (head!13689 s!2326)) (tail!12774 s!2326)))))

(assert (= (and d!2150056 c!1272695) b!6834741))

(assert (= (and d!2150056 (not c!1272695)) b!6834754))

(assert (= (and d!2150056 c!1272696) b!6834752))

(assert (= (and d!2150056 (not c!1272696)) b!6834750))

(assert (= (and b!6834750 c!1272697) b!6834748))

(assert (= (and b!6834750 (not c!1272697)) b!6834742))

(assert (= (and b!6834742 (not res!2790854)) b!6834753))

(assert (= (and b!6834753 res!2790859) b!6834745))

(assert (= (and b!6834745 res!2790858) b!6834747))

(assert (= (and b!6834747 res!2790853) b!6834743))

(assert (= (and b!6834753 (not res!2790852)) b!6834746))

(assert (= (and b!6834746 res!2790855) b!6834744))

(assert (= (and b!6834744 (not res!2790856)) b!6834749))

(assert (= (and b!6834749 (not res!2790857)) b!6834751))

(assert (= (or b!6834752 b!6834744 b!6834745) bm!622582))

(assert (=> b!6834749 m!7579706))

(assert (=> b!6834749 m!7579706))

(assert (=> b!6834749 m!7580166))

(assert (=> d!2150056 m!7579480))

(assert (=> d!2150056 m!7579534))

(assert (=> b!6834747 m!7579706))

(assert (=> b!6834747 m!7579706))

(assert (=> b!6834747 m!7580166))

(assert (=> bm!622582 m!7579480))

(assert (=> b!6834751 m!7579702))

(assert (=> b!6834741 m!7580024))

(assert (=> b!6834754 m!7579702))

(assert (=> b!6834754 m!7579702))

(declare-fun m!7580210 () Bool)

(assert (=> b!6834754 m!7580210))

(assert (=> b!6834754 m!7579706))

(assert (=> b!6834754 m!7580210))

(assert (=> b!6834754 m!7579706))

(declare-fun m!7580212 () Bool)

(assert (=> b!6834754 m!7580212))

(assert (=> b!6834743 m!7579702))

(assert (=> b!6833923 d!2150056))

(declare-fun d!2150058 () Bool)

(assert (=> d!2150058 (= (matchR!8828 r!7292 s!2326) (matchRSpec!3746 r!7292 s!2326))))

(declare-fun lt!2453787 () Unit!159981)

(assert (=> d!2150058 (= lt!2453787 (choose!50957 r!7292 s!2326))))

(assert (=> d!2150058 (validRegex!8381 r!7292)))

(assert (=> d!2150058 (= (mainMatchTheorem!3746 r!7292 s!2326) lt!2453787)))

(declare-fun bs!1828403 () Bool)

(assert (= bs!1828403 d!2150058))

(assert (=> bs!1828403 m!7579488))

(assert (=> bs!1828403 m!7579486))

(declare-fun m!7580214 () Bool)

(assert (=> bs!1828403 m!7580214))

(assert (=> bs!1828403 m!7579534))

(assert (=> b!6833923 d!2150058))

(declare-fun d!2150060 () Bool)

(declare-fun c!1272698 () Bool)

(assert (=> d!2150060 (= c!1272698 (isEmpty!38501 (_2!36923 lt!2453653)))))

(declare-fun e!4122629 () Bool)

(assert (=> d!2150060 (= (matchZipper!2631 lt!2453651 (_2!36923 lt!2453653)) e!4122629)))

(declare-fun b!6834755 () Bool)

(assert (=> b!6834755 (= e!4122629 (nullableZipper!2346 lt!2453651))))

(declare-fun b!6834756 () Bool)

(assert (=> b!6834756 (= e!4122629 (matchZipper!2631 (derivationStepZipper!2589 lt!2453651 (head!13689 (_2!36923 lt!2453653))) (tail!12774 (_2!36923 lt!2453653))))))

(assert (= (and d!2150060 c!1272698) b!6834755))

(assert (= (and d!2150060 (not c!1272698)) b!6834756))

(assert (=> d!2150060 m!7580020))

(declare-fun m!7580216 () Bool)

(assert (=> b!6834755 m!7580216))

(assert (=> b!6834756 m!7580022))

(assert (=> b!6834756 m!7580022))

(declare-fun m!7580218 () Bool)

(assert (=> b!6834756 m!7580218))

(assert (=> b!6834756 m!7580016))

(assert (=> b!6834756 m!7580218))

(assert (=> b!6834756 m!7580016))

(declare-fun m!7580220 () Bool)

(assert (=> b!6834756 m!7580220))

(assert (=> b!6833943 d!2150060))

(declare-fun bs!1828404 () Bool)

(declare-fun d!2150062 () Bool)

(assert (= bs!1828404 (and d!2150062 b!6833951)))

(declare-fun lambda!386267 () Int)

(assert (=> bs!1828404 (= lambda!386267 lambda!386193)))

(declare-fun bs!1828405 () Bool)

(assert (= bs!1828405 (and d!2150062 d!2149898)))

(assert (=> bs!1828405 (= lambda!386267 lambda!386218)))

(declare-fun bs!1828406 () Bool)

(assert (= bs!1828406 (and d!2150062 d!2149900)))

(assert (=> bs!1828406 (= lambda!386267 lambda!386226)))

(declare-fun bs!1828407 () Bool)

(assert (= bs!1828407 (and d!2150062 d!2149960)))

(assert (=> bs!1828407 (= lambda!386267 lambda!386251)))

(declare-fun b!6834777 () Bool)

(declare-fun e!4122643 () Bool)

(assert (=> b!6834777 (= e!4122643 (isEmpty!38505 (t!379977 (unfocusZipperList!2066 zl!343))))))

(declare-fun b!6834778 () Bool)

(declare-fun e!4122646 () Regex!16645)

(assert (=> b!6834778 (= e!4122646 (Union!16645 (h!72558 (unfocusZipperList!2066 zl!343)) (generalisedUnion!2489 (t!379977 (unfocusZipperList!2066 zl!343)))))))

(declare-fun e!4122642 () Bool)

(assert (=> d!2150062 e!4122642))

(declare-fun res!2790865 () Bool)

(assert (=> d!2150062 (=> (not res!2790865) (not e!4122642))))

(declare-fun lt!2453790 () Regex!16645)

(assert (=> d!2150062 (= res!2790865 (validRegex!8381 lt!2453790))))

(declare-fun e!4122645 () Regex!16645)

(assert (=> d!2150062 (= lt!2453790 e!4122645)))

(declare-fun c!1272709 () Bool)

(assert (=> d!2150062 (= c!1272709 e!4122643)))

(declare-fun res!2790864 () Bool)

(assert (=> d!2150062 (=> (not res!2790864) (not e!4122643))))

(assert (=> d!2150062 (= res!2790864 ((_ is Cons!66110) (unfocusZipperList!2066 zl!343)))))

(assert (=> d!2150062 (forall!15831 (unfocusZipperList!2066 zl!343) lambda!386267)))

(assert (=> d!2150062 (= (generalisedUnion!2489 (unfocusZipperList!2066 zl!343)) lt!2453790)))

(declare-fun b!6834779 () Bool)

(declare-fun e!4122647 () Bool)

(assert (=> b!6834779 (= e!4122647 (= lt!2453790 (head!13690 (unfocusZipperList!2066 zl!343))))))

(declare-fun b!6834780 () Bool)

(declare-fun e!4122644 () Bool)

(assert (=> b!6834780 (= e!4122644 e!4122647)))

(declare-fun c!1272710 () Bool)

(assert (=> b!6834780 (= c!1272710 (isEmpty!38505 (tail!12775 (unfocusZipperList!2066 zl!343))))))

(declare-fun b!6834781 () Bool)

(declare-fun isEmptyLang!2005 (Regex!16645) Bool)

(assert (=> b!6834781 (= e!4122644 (isEmptyLang!2005 lt!2453790))))

(declare-fun b!6834782 () Bool)

(assert (=> b!6834782 (= e!4122645 e!4122646)))

(declare-fun c!1272707 () Bool)

(assert (=> b!6834782 (= c!1272707 ((_ is Cons!66110) (unfocusZipperList!2066 zl!343)))))

(declare-fun b!6834783 () Bool)

(declare-fun isUnion!1435 (Regex!16645) Bool)

(assert (=> b!6834783 (= e!4122647 (isUnion!1435 lt!2453790))))

(declare-fun b!6834784 () Bool)

(assert (=> b!6834784 (= e!4122646 EmptyLang!16645)))

(declare-fun b!6834785 () Bool)

(assert (=> b!6834785 (= e!4122645 (h!72558 (unfocusZipperList!2066 zl!343)))))

(declare-fun b!6834786 () Bool)

(assert (=> b!6834786 (= e!4122642 e!4122644)))

(declare-fun c!1272708 () Bool)

(assert (=> b!6834786 (= c!1272708 (isEmpty!38505 (unfocusZipperList!2066 zl!343)))))

(assert (= (and d!2150062 res!2790864) b!6834777))

(assert (= (and d!2150062 c!1272709) b!6834785))

(assert (= (and d!2150062 (not c!1272709)) b!6834782))

(assert (= (and b!6834782 c!1272707) b!6834778))

(assert (= (and b!6834782 (not c!1272707)) b!6834784))

(assert (= (and d!2150062 res!2790865) b!6834786))

(assert (= (and b!6834786 c!1272708) b!6834781))

(assert (= (and b!6834786 (not c!1272708)) b!6834780))

(assert (= (and b!6834780 c!1272710) b!6834779))

(assert (= (and b!6834780 (not c!1272710)) b!6834783))

(declare-fun m!7580222 () Bool)

(assert (=> d!2150062 m!7580222))

(assert (=> d!2150062 m!7579504))

(declare-fun m!7580224 () Bool)

(assert (=> d!2150062 m!7580224))

(declare-fun m!7580226 () Bool)

(assert (=> b!6834781 m!7580226))

(declare-fun m!7580228 () Bool)

(assert (=> b!6834783 m!7580228))

(assert (=> b!6834780 m!7579504))

(declare-fun m!7580230 () Bool)

(assert (=> b!6834780 m!7580230))

(assert (=> b!6834780 m!7580230))

(declare-fun m!7580232 () Bool)

(assert (=> b!6834780 m!7580232))

(declare-fun m!7580234 () Bool)

(assert (=> b!6834777 m!7580234))

(assert (=> b!6834786 m!7579504))

(declare-fun m!7580236 () Bool)

(assert (=> b!6834786 m!7580236))

(assert (=> b!6834779 m!7579504))

(declare-fun m!7580238 () Bool)

(assert (=> b!6834779 m!7580238))

(declare-fun m!7580240 () Bool)

(assert (=> b!6834778 m!7580240))

(assert (=> b!6833921 d!2150062))

(declare-fun bs!1828408 () Bool)

(declare-fun d!2150064 () Bool)

(assert (= bs!1828408 (and d!2150064 d!2149900)))

(declare-fun lambda!386270 () Int)

(assert (=> bs!1828408 (= lambda!386270 lambda!386226)))

(declare-fun bs!1828409 () Bool)

(assert (= bs!1828409 (and d!2150064 d!2149898)))

(assert (=> bs!1828409 (= lambda!386270 lambda!386218)))

(declare-fun bs!1828410 () Bool)

(assert (= bs!1828410 (and d!2150064 d!2149960)))

(assert (=> bs!1828410 (= lambda!386270 lambda!386251)))

(declare-fun bs!1828411 () Bool)

(assert (= bs!1828411 (and d!2150064 b!6833951)))

(assert (=> bs!1828411 (= lambda!386270 lambda!386193)))

(declare-fun bs!1828412 () Bool)

(assert (= bs!1828412 (and d!2150064 d!2150062)))

(assert (=> bs!1828412 (= lambda!386270 lambda!386267)))

(declare-fun lt!2453793 () List!66234)

(assert (=> d!2150064 (forall!15831 lt!2453793 lambda!386270)))

(declare-fun e!4122650 () List!66234)

(assert (=> d!2150064 (= lt!2453793 e!4122650)))

(declare-fun c!1272713 () Bool)

(assert (=> d!2150064 (= c!1272713 ((_ is Cons!66112) zl!343))))

(assert (=> d!2150064 (= (unfocusZipperList!2066 zl!343) lt!2453793)))

(declare-fun b!6834791 () Bool)

(assert (=> b!6834791 (= e!4122650 (Cons!66110 (generalisedConcat!2242 (exprs!6529 (h!72560 zl!343))) (unfocusZipperList!2066 (t!379979 zl!343))))))

(declare-fun b!6834792 () Bool)

(assert (=> b!6834792 (= e!4122650 Nil!66110)))

(assert (= (and d!2150064 c!1272713) b!6834791))

(assert (= (and d!2150064 (not c!1272713)) b!6834792))

(declare-fun m!7580242 () Bool)

(assert (=> d!2150064 m!7580242))

(assert (=> b!6834791 m!7579532))

(declare-fun m!7580244 () Bool)

(assert (=> b!6834791 m!7580244))

(assert (=> b!6833921 d!2150064))

(declare-fun d!2150066 () Bool)

(assert (=> d!2150066 (= (flatMap!2126 z!1189 lambda!386191) (choose!50952 z!1189 lambda!386191))))

(declare-fun bs!1828413 () Bool)

(assert (= bs!1828413 d!2150066))

(declare-fun m!7580246 () Bool)

(assert (=> bs!1828413 m!7580246))

(assert (=> b!6833941 d!2150066))

(declare-fun b!6834793 () Bool)

(declare-fun e!4122653 () (InoxSet Context!12058))

(declare-fun e!4122652 () (InoxSet Context!12058))

(assert (=> b!6834793 (= e!4122653 e!4122652)))

(declare-fun c!1272715 () Bool)

(assert (=> b!6834793 (= c!1272715 ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343))))))

(declare-fun bm!622583 () Bool)

(declare-fun call!622588 () (InoxSet Context!12058))

(assert (=> bm!622583 (= call!622588 (derivationStepZipperDown!1873 (h!72558 (exprs!6529 (h!72560 zl!343))) (Context!12059 (t!379977 (exprs!6529 (h!72560 zl!343)))) (h!72559 s!2326)))))

(declare-fun d!2150068 () Bool)

(declare-fun c!1272714 () Bool)

(declare-fun e!4122651 () Bool)

(assert (=> d!2150068 (= c!1272714 e!4122651)))

(declare-fun res!2790866 () Bool)

(assert (=> d!2150068 (=> (not res!2790866) (not e!4122651))))

(assert (=> d!2150068 (= res!2790866 ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343))))))

(assert (=> d!2150068 (= (derivationStepZipperUp!1799 (h!72560 zl!343) (h!72559 s!2326)) e!4122653)))

(declare-fun b!6834794 () Bool)

(assert (=> b!6834794 (= e!4122652 call!622588)))

(declare-fun b!6834795 () Bool)

(assert (=> b!6834795 (= e!4122651 (nullable!6618 (h!72558 (exprs!6529 (h!72560 zl!343)))))))

(declare-fun b!6834796 () Bool)

(assert (=> b!6834796 (= e!4122653 ((_ map or) call!622588 (derivationStepZipperUp!1799 (Context!12059 (t!379977 (exprs!6529 (h!72560 zl!343)))) (h!72559 s!2326))))))

(declare-fun b!6834797 () Bool)

(assert (=> b!6834797 (= e!4122652 ((as const (Array Context!12058 Bool)) false))))

(assert (= (and d!2150068 res!2790866) b!6834795))

(assert (= (and d!2150068 c!1272714) b!6834796))

(assert (= (and d!2150068 (not c!1272714)) b!6834793))

(assert (= (and b!6834793 c!1272715) b!6834794))

(assert (= (and b!6834793 (not c!1272715)) b!6834797))

(assert (= (or b!6834796 b!6834794) bm!622583))

(declare-fun m!7580248 () Bool)

(assert (=> bm!622583 m!7580248))

(declare-fun m!7580250 () Bool)

(assert (=> b!6834795 m!7580250))

(declare-fun m!7580252 () Bool)

(assert (=> b!6834796 m!7580252))

(assert (=> b!6833941 d!2150068))

(declare-fun d!2150070 () Bool)

(assert (=> d!2150070 (= (flatMap!2126 z!1189 lambda!386191) (dynLambda!26421 lambda!386191 (h!72560 zl!343)))))

(declare-fun lt!2453794 () Unit!159981)

(assert (=> d!2150070 (= lt!2453794 (choose!50954 z!1189 (h!72560 zl!343) lambda!386191))))

(assert (=> d!2150070 (= z!1189 (store ((as const (Array Context!12058 Bool)) false) (h!72560 zl!343) true))))

(assert (=> d!2150070 (= (lemmaFlatMapOnSingletonSet!1652 z!1189 (h!72560 zl!343) lambda!386191) lt!2453794)))

(declare-fun b_lambda!257869 () Bool)

(assert (=> (not b_lambda!257869) (not d!2150070)))

(declare-fun bs!1828414 () Bool)

(assert (= bs!1828414 d!2150070))

(assert (=> bs!1828414 m!7579554))

(declare-fun m!7580254 () Bool)

(assert (=> bs!1828414 m!7580254))

(declare-fun m!7580256 () Bool)

(assert (=> bs!1828414 m!7580256))

(declare-fun m!7580258 () Bool)

(assert (=> bs!1828414 m!7580258))

(assert (=> b!6833941 d!2150070))

(declare-fun d!2150072 () Bool)

(declare-fun res!2790867 () Bool)

(declare-fun e!4122660 () Bool)

(assert (=> d!2150072 (=> res!2790867 e!4122660)))

(assert (=> d!2150072 (= res!2790867 ((_ is ElementMatch!16645) r!7292))))

(assert (=> d!2150072 (= (validRegex!8381 r!7292) e!4122660)))

(declare-fun bm!622584 () Bool)

(declare-fun call!622589 () Bool)

(declare-fun c!1272716 () Bool)

(assert (=> bm!622584 (= call!622589 (validRegex!8381 (ite c!1272716 (regOne!33803 r!7292) (regOne!33802 r!7292))))))

(declare-fun b!6834798 () Bool)

(declare-fun e!4122655 () Bool)

(declare-fun call!622590 () Bool)

(assert (=> b!6834798 (= e!4122655 call!622590)))

(declare-fun bm!622585 () Bool)

(declare-fun call!622591 () Bool)

(assert (=> bm!622585 (= call!622590 call!622591)))

(declare-fun b!6834799 () Bool)

(declare-fun e!4122659 () Bool)

(declare-fun e!4122654 () Bool)

(assert (=> b!6834799 (= e!4122659 e!4122654)))

(declare-fun res!2790869 () Bool)

(assert (=> b!6834799 (= res!2790869 (not (nullable!6618 (reg!16974 r!7292))))))

(assert (=> b!6834799 (=> (not res!2790869) (not e!4122654))))

(declare-fun c!1272717 () Bool)

(declare-fun bm!622586 () Bool)

(assert (=> bm!622586 (= call!622591 (validRegex!8381 (ite c!1272717 (reg!16974 r!7292) (ite c!1272716 (regTwo!33803 r!7292) (regTwo!33802 r!7292)))))))

(declare-fun b!6834800 () Bool)

(assert (=> b!6834800 (= e!4122660 e!4122659)))

(assert (=> b!6834800 (= c!1272717 ((_ is Star!16645) r!7292))))

(declare-fun b!6834801 () Bool)

(declare-fun e!4122656 () Bool)

(declare-fun e!4122658 () Bool)

(assert (=> b!6834801 (= e!4122656 e!4122658)))

(declare-fun res!2790871 () Bool)

(assert (=> b!6834801 (=> (not res!2790871) (not e!4122658))))

(assert (=> b!6834801 (= res!2790871 call!622589)))

(declare-fun b!6834802 () Bool)

(declare-fun e!4122657 () Bool)

(assert (=> b!6834802 (= e!4122659 e!4122657)))

(assert (=> b!6834802 (= c!1272716 ((_ is Union!16645) r!7292))))

(declare-fun b!6834803 () Bool)

(assert (=> b!6834803 (= e!4122654 call!622591)))

(declare-fun b!6834804 () Bool)

(assert (=> b!6834804 (= e!4122658 call!622590)))

(declare-fun b!6834805 () Bool)

(declare-fun res!2790868 () Bool)

(assert (=> b!6834805 (=> (not res!2790868) (not e!4122655))))

(assert (=> b!6834805 (= res!2790868 call!622589)))

(assert (=> b!6834805 (= e!4122657 e!4122655)))

(declare-fun b!6834806 () Bool)

(declare-fun res!2790870 () Bool)

(assert (=> b!6834806 (=> res!2790870 e!4122656)))

(assert (=> b!6834806 (= res!2790870 (not ((_ is Concat!25490) r!7292)))))

(assert (=> b!6834806 (= e!4122657 e!4122656)))

(assert (= (and d!2150072 (not res!2790867)) b!6834800))

(assert (= (and b!6834800 c!1272717) b!6834799))

(assert (= (and b!6834800 (not c!1272717)) b!6834802))

(assert (= (and b!6834799 res!2790869) b!6834803))

(assert (= (and b!6834802 c!1272716) b!6834805))

(assert (= (and b!6834802 (not c!1272716)) b!6834806))

(assert (= (and b!6834805 res!2790868) b!6834798))

(assert (= (and b!6834806 (not res!2790870)) b!6834801))

(assert (= (and b!6834801 res!2790871) b!6834804))

(assert (= (or b!6834798 b!6834804) bm!622585))

(assert (= (or b!6834805 b!6834801) bm!622584))

(assert (= (or b!6834803 bm!622585) bm!622586))

(declare-fun m!7580260 () Bool)

(assert (=> bm!622584 m!7580260))

(assert (=> b!6834799 m!7580032))

(declare-fun m!7580262 () Bool)

(assert (=> bm!622586 m!7580262))

(assert (=> start!660476 d!2150072))

(declare-fun d!2150074 () Bool)

(assert (=> d!2150074 (= (isEmpty!38502 (t!379979 zl!343)) ((_ is Nil!66112) (t!379979 zl!343)))))

(assert (=> b!6833934 d!2150074))

(declare-fun d!2150076 () Bool)

(declare-fun choose!50958 (Int) Bool)

(assert (=> d!2150076 (= (Exists!3713 lambda!386190) (choose!50958 lambda!386190))))

(declare-fun bs!1828415 () Bool)

(assert (= bs!1828415 d!2150076))

(declare-fun m!7580264 () Bool)

(assert (=> bs!1828415 m!7580264))

(assert (=> b!6833933 d!2150076))

(declare-fun d!2150078 () Bool)

(assert (=> d!2150078 (= (Exists!3713 lambda!386188) (choose!50958 lambda!386188))))

(declare-fun bs!1828416 () Bool)

(assert (= bs!1828416 d!2150078))

(declare-fun m!7580266 () Bool)

(assert (=> bs!1828416 m!7580266))

(assert (=> b!6833933 d!2150078))

(declare-fun d!2150080 () Bool)

(declare-fun isEmpty!38506 (Option!16532) Bool)

(assert (=> d!2150080 (= (isDefined!13235 (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 Nil!66111 s!2326 s!2326)) (not (isEmpty!38506 (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 Nil!66111 s!2326 s!2326))))))

(declare-fun bs!1828417 () Bool)

(assert (= bs!1828417 d!2150080))

(assert (=> bs!1828417 m!7579472))

(declare-fun m!7580268 () Bool)

(assert (=> bs!1828417 m!7580268))

(assert (=> b!6833933 d!2150080))

(declare-fun bs!1828418 () Bool)

(declare-fun d!2150082 () Bool)

(assert (= bs!1828418 (and d!2150082 b!6833933)))

(declare-fun lambda!386275 () Int)

(assert (=> bs!1828418 (not (= lambda!386275 lambda!386189))))

(declare-fun bs!1828419 () Bool)

(assert (= bs!1828419 (and d!2150082 b!6834738)))

(assert (=> bs!1828419 (not (= lambda!386275 lambda!386263))))

(assert (=> bs!1828418 (not (= lambda!386275 lambda!386190))))

(declare-fun bs!1828420 () Bool)

(assert (= bs!1828420 (and d!2150082 b!6834735)))

(assert (=> bs!1828420 (not (= lambda!386275 lambda!386264))))

(assert (=> bs!1828418 (= lambda!386275 lambda!386188)))

(declare-fun bs!1828421 () Bool)

(assert (= bs!1828421 (and d!2150082 b!6834700)))

(assert (=> bs!1828421 (not (= lambda!386275 lambda!386261))))

(declare-fun bs!1828422 () Bool)

(assert (= bs!1828422 (and d!2150082 b!6834703)))

(assert (=> bs!1828422 (not (= lambda!386275 lambda!386260))))

(assert (=> d!2150082 true))

(assert (=> d!2150082 true))

(assert (=> d!2150082 true))

(declare-fun lambda!386276 () Int)

(assert (=> bs!1828418 (not (= lambda!386276 lambda!386189))))

(assert (=> bs!1828419 (not (= lambda!386276 lambda!386263))))

(assert (=> bs!1828418 (= lambda!386276 lambda!386190)))

(assert (=> bs!1828420 (= (and (= (reg!16974 r!7292) (regOne!33802 r!7292)) (= r!7292 (regTwo!33802 r!7292))) (= lambda!386276 lambda!386264))))

(declare-fun bs!1828423 () Bool)

(assert (= bs!1828423 d!2150082))

(assert (=> bs!1828423 (not (= lambda!386276 lambda!386275))))

(assert (=> bs!1828418 (not (= lambda!386276 lambda!386188))))

(assert (=> bs!1828421 (= (and (= (reg!16974 r!7292) (regOne!33802 lt!2453650)) (= r!7292 (regTwo!33802 lt!2453650))) (= lambda!386276 lambda!386261))))

(assert (=> bs!1828422 (not (= lambda!386276 lambda!386260))))

(assert (=> d!2150082 true))

(assert (=> d!2150082 true))

(assert (=> d!2150082 true))

(assert (=> d!2150082 (= (Exists!3713 lambda!386275) (Exists!3713 lambda!386276))))

(declare-fun lt!2453797 () Unit!159981)

(declare-fun choose!50959 (Regex!16645 Regex!16645 List!66235) Unit!159981)

(assert (=> d!2150082 (= lt!2453797 (choose!50959 (reg!16974 r!7292) r!7292 s!2326))))

(assert (=> d!2150082 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2150082 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2240 (reg!16974 r!7292) r!7292 s!2326) lt!2453797)))

(declare-fun m!7580270 () Bool)

(assert (=> bs!1828423 m!7580270))

(declare-fun m!7580272 () Bool)

(assert (=> bs!1828423 m!7580272))

(declare-fun m!7580274 () Bool)

(assert (=> bs!1828423 m!7580274))

(assert (=> bs!1828423 m!7579518))

(assert (=> b!6833933 d!2150082))

(declare-fun bs!1828424 () Bool)

(declare-fun d!2150084 () Bool)

(assert (= bs!1828424 (and d!2150084 b!6833933)))

(declare-fun lambda!386281 () Int)

(assert (=> bs!1828424 (not (= lambda!386281 lambda!386189))))

(declare-fun bs!1828425 () Bool)

(assert (= bs!1828425 (and d!2150084 b!6834738)))

(assert (=> bs!1828425 (not (= lambda!386281 lambda!386263))))

(assert (=> bs!1828424 (not (= lambda!386281 lambda!386190))))

(declare-fun bs!1828426 () Bool)

(assert (= bs!1828426 (and d!2150084 b!6834735)))

(assert (=> bs!1828426 (not (= lambda!386281 lambda!386264))))

(declare-fun bs!1828427 () Bool)

(assert (= bs!1828427 (and d!2150084 d!2150082)))

(assert (=> bs!1828427 (= (= (Star!16645 (reg!16974 r!7292)) r!7292) (= lambda!386281 lambda!386275))))

(declare-fun bs!1828428 () Bool)

(assert (= bs!1828428 (and d!2150084 b!6834700)))

(assert (=> bs!1828428 (not (= lambda!386281 lambda!386261))))

(declare-fun bs!1828429 () Bool)

(assert (= bs!1828429 (and d!2150084 b!6834703)))

(assert (=> bs!1828429 (not (= lambda!386281 lambda!386260))))

(assert (=> bs!1828427 (not (= lambda!386281 lambda!386276))))

(assert (=> bs!1828424 (= (= (Star!16645 (reg!16974 r!7292)) r!7292) (= lambda!386281 lambda!386188))))

(assert (=> d!2150084 true))

(assert (=> d!2150084 true))

(declare-fun lambda!386282 () Int)

(assert (=> bs!1828424 (= (= (Star!16645 (reg!16974 r!7292)) r!7292) (= lambda!386282 lambda!386189))))

(assert (=> bs!1828425 (= (= (Star!16645 (reg!16974 r!7292)) r!7292) (= lambda!386282 lambda!386263))))

(declare-fun bs!1828430 () Bool)

(assert (= bs!1828430 d!2150084))

(assert (=> bs!1828430 (not (= lambda!386282 lambda!386281))))

(assert (=> bs!1828424 (not (= lambda!386282 lambda!386190))))

(assert (=> bs!1828426 (not (= lambda!386282 lambda!386264))))

(assert (=> bs!1828427 (not (= lambda!386282 lambda!386275))))

(assert (=> bs!1828428 (not (= lambda!386282 lambda!386261))))

(assert (=> bs!1828429 (= (and (= (reg!16974 r!7292) (reg!16974 lt!2453650)) (= (Star!16645 (reg!16974 r!7292)) lt!2453650)) (= lambda!386282 lambda!386260))))

(assert (=> bs!1828427 (not (= lambda!386282 lambda!386276))))

(assert (=> bs!1828424 (not (= lambda!386282 lambda!386188))))

(assert (=> d!2150084 true))

(assert (=> d!2150084 true))

(assert (=> d!2150084 (= (Exists!3713 lambda!386281) (Exists!3713 lambda!386282))))

(declare-fun lt!2453800 () Unit!159981)

(declare-fun choose!50960 (Regex!16645 List!66235) Unit!159981)

(assert (=> d!2150084 (= lt!2453800 (choose!50960 (reg!16974 r!7292) s!2326))))

(assert (=> d!2150084 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2150084 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!804 (reg!16974 r!7292) s!2326) lt!2453800)))

(declare-fun m!7580276 () Bool)

(assert (=> bs!1828430 m!7580276))

(declare-fun m!7580278 () Bool)

(assert (=> bs!1828430 m!7580278))

(declare-fun m!7580280 () Bool)

(assert (=> bs!1828430 m!7580280))

(assert (=> bs!1828430 m!7579518))

(assert (=> b!6833933 d!2150084))

(declare-fun d!2150086 () Bool)

(assert (=> d!2150086 (= (Exists!3713 lambda!386189) (choose!50958 lambda!386189))))

(declare-fun bs!1828431 () Bool)

(assert (= bs!1828431 d!2150086))

(declare-fun m!7580282 () Bool)

(assert (=> bs!1828431 m!7580282))

(assert (=> b!6833933 d!2150086))

(declare-fun d!2150088 () Bool)

(assert (=> d!2150088 (= (isEmpty!38501 s!2326) ((_ is Nil!66111) s!2326))))

(assert (=> b!6833933 d!2150088))

(declare-fun d!2150090 () Bool)

(declare-fun e!4122683 () Bool)

(assert (=> d!2150090 e!4122683))

(declare-fun res!2790900 () Bool)

(assert (=> d!2150090 (=> res!2790900 e!4122683)))

(declare-fun e!4122680 () Bool)

(assert (=> d!2150090 (= res!2790900 e!4122680)))

(declare-fun res!2790902 () Bool)

(assert (=> d!2150090 (=> (not res!2790902) (not e!4122680))))

(declare-fun lt!2453808 () Option!16532)

(assert (=> d!2150090 (= res!2790902 (isDefined!13235 lt!2453808))))

(declare-fun e!4122681 () Option!16532)

(assert (=> d!2150090 (= lt!2453808 e!4122681)))

(declare-fun c!1272722 () Bool)

(declare-fun e!4122679 () Bool)

(assert (=> d!2150090 (= c!1272722 e!4122679)))

(declare-fun res!2790903 () Bool)

(assert (=> d!2150090 (=> (not res!2790903) (not e!4122679))))

(assert (=> d!2150090 (= res!2790903 (matchR!8828 (reg!16974 r!7292) Nil!66111))))

(assert (=> d!2150090 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2150090 (= (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 Nil!66111 s!2326 s!2326) lt!2453808)))

(declare-fun b!6834843 () Bool)

(declare-fun lt!2453807 () Unit!159981)

(declare-fun lt!2453809 () Unit!159981)

(assert (=> b!6834843 (= lt!2453807 lt!2453809)))

(assert (=> b!6834843 (= (++!14837 (++!14837 Nil!66111 (Cons!66111 (h!72559 s!2326) Nil!66111)) (t!379978 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2760 (List!66235 C!33560 List!66235 List!66235) Unit!159981)

(assert (=> b!6834843 (= lt!2453809 (lemmaMoveElementToOtherListKeepsConcatEq!2760 Nil!66111 (h!72559 s!2326) (t!379978 s!2326) s!2326))))

(declare-fun e!4122682 () Option!16532)

(assert (=> b!6834843 (= e!4122682 (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 (++!14837 Nil!66111 (Cons!66111 (h!72559 s!2326) Nil!66111)) (t!379978 s!2326) s!2326))))

(declare-fun b!6834844 () Bool)

(assert (=> b!6834844 (= e!4122680 (= (++!14837 (_1!36923 (get!23037 lt!2453808)) (_2!36923 (get!23037 lt!2453808))) s!2326))))

(declare-fun b!6834845 () Bool)

(assert (=> b!6834845 (= e!4122683 (not (isDefined!13235 lt!2453808)))))

(declare-fun b!6834846 () Bool)

(assert (=> b!6834846 (= e!4122679 (matchR!8828 r!7292 s!2326))))

(declare-fun b!6834847 () Bool)

(declare-fun res!2790904 () Bool)

(assert (=> b!6834847 (=> (not res!2790904) (not e!4122680))))

(assert (=> b!6834847 (= res!2790904 (matchR!8828 r!7292 (_2!36923 (get!23037 lt!2453808))))))

(declare-fun b!6834848 () Bool)

(declare-fun res!2790901 () Bool)

(assert (=> b!6834848 (=> (not res!2790901) (not e!4122680))))

(assert (=> b!6834848 (= res!2790901 (matchR!8828 (reg!16974 r!7292) (_1!36923 (get!23037 lt!2453808))))))

(declare-fun b!6834849 () Bool)

(assert (=> b!6834849 (= e!4122681 e!4122682)))

(declare-fun c!1272723 () Bool)

(assert (=> b!6834849 (= c!1272723 ((_ is Nil!66111) s!2326))))

(declare-fun b!6834850 () Bool)

(assert (=> b!6834850 (= e!4122682 None!16531)))

(declare-fun b!6834851 () Bool)

(assert (=> b!6834851 (= e!4122681 (Some!16531 (tuple2!67241 Nil!66111 s!2326)))))

(assert (= (and d!2150090 res!2790903) b!6834846))

(assert (= (and d!2150090 c!1272722) b!6834851))

(assert (= (and d!2150090 (not c!1272722)) b!6834849))

(assert (= (and b!6834849 c!1272723) b!6834850))

(assert (= (and b!6834849 (not c!1272723)) b!6834843))

(assert (= (and d!2150090 res!2790902) b!6834848))

(assert (= (and b!6834848 res!2790901) b!6834847))

(assert (= (and b!6834847 res!2790904) b!6834844))

(assert (= (and d!2150090 (not res!2790900)) b!6834845))

(declare-fun m!7580284 () Bool)

(assert (=> b!6834848 m!7580284))

(declare-fun m!7580286 () Bool)

(assert (=> b!6834848 m!7580286))

(assert (=> b!6834847 m!7580284))

(declare-fun m!7580288 () Bool)

(assert (=> b!6834847 m!7580288))

(declare-fun m!7580290 () Bool)

(assert (=> b!6834845 m!7580290))

(declare-fun m!7580292 () Bool)

(assert (=> b!6834843 m!7580292))

(assert (=> b!6834843 m!7580292))

(declare-fun m!7580294 () Bool)

(assert (=> b!6834843 m!7580294))

(declare-fun m!7580296 () Bool)

(assert (=> b!6834843 m!7580296))

(assert (=> b!6834843 m!7580292))

(declare-fun m!7580298 () Bool)

(assert (=> b!6834843 m!7580298))

(assert (=> b!6834846 m!7579488))

(assert (=> d!2150090 m!7580290))

(declare-fun m!7580300 () Bool)

(assert (=> d!2150090 m!7580300))

(assert (=> d!2150090 m!7579518))

(assert (=> b!6834844 m!7580284))

(declare-fun m!7580302 () Bool)

(assert (=> b!6834844 m!7580302))

(assert (=> b!6833933 d!2150090))

(declare-fun bs!1828432 () Bool)

(declare-fun d!2150092 () Bool)

(assert (= bs!1828432 (and d!2150092 d!2150084)))

(declare-fun lambda!386285 () Int)

(assert (=> bs!1828432 (not (= lambda!386285 lambda!386282))))

(declare-fun bs!1828433 () Bool)

(assert (= bs!1828433 (and d!2150092 b!6833933)))

(assert (=> bs!1828433 (not (= lambda!386285 lambda!386189))))

(declare-fun bs!1828434 () Bool)

(assert (= bs!1828434 (and d!2150092 b!6834738)))

(assert (=> bs!1828434 (not (= lambda!386285 lambda!386263))))

(assert (=> bs!1828432 (= (= r!7292 (Star!16645 (reg!16974 r!7292))) (= lambda!386285 lambda!386281))))

(assert (=> bs!1828433 (not (= lambda!386285 lambda!386190))))

(declare-fun bs!1828435 () Bool)

(assert (= bs!1828435 (and d!2150092 b!6834735)))

(assert (=> bs!1828435 (not (= lambda!386285 lambda!386264))))

(declare-fun bs!1828436 () Bool)

(assert (= bs!1828436 (and d!2150092 d!2150082)))

(assert (=> bs!1828436 (= lambda!386285 lambda!386275)))

(declare-fun bs!1828437 () Bool)

(assert (= bs!1828437 (and d!2150092 b!6834700)))

(assert (=> bs!1828437 (not (= lambda!386285 lambda!386261))))

(declare-fun bs!1828438 () Bool)

(assert (= bs!1828438 (and d!2150092 b!6834703)))

(assert (=> bs!1828438 (not (= lambda!386285 lambda!386260))))

(assert (=> bs!1828436 (not (= lambda!386285 lambda!386276))))

(assert (=> bs!1828433 (= lambda!386285 lambda!386188)))

(assert (=> d!2150092 true))

(assert (=> d!2150092 true))

(assert (=> d!2150092 true))

(assert (=> d!2150092 (= (isDefined!13235 (findConcatSeparation!2946 (reg!16974 r!7292) r!7292 Nil!66111 s!2326 s!2326)) (Exists!3713 lambda!386285))))

(declare-fun lt!2453812 () Unit!159981)

(declare-fun choose!50961 (Regex!16645 Regex!16645 List!66235) Unit!159981)

(assert (=> d!2150092 (= lt!2453812 (choose!50961 (reg!16974 r!7292) r!7292 s!2326))))

(assert (=> d!2150092 (validRegex!8381 (reg!16974 r!7292))))

(assert (=> d!2150092 (= (lemmaFindConcatSeparationEquivalentToExists!2710 (reg!16974 r!7292) r!7292 s!2326) lt!2453812)))

(declare-fun bs!1828439 () Bool)

(assert (= bs!1828439 d!2150092))

(assert (=> bs!1828439 m!7579472))

(assert (=> bs!1828439 m!7579518))

(declare-fun m!7580304 () Bool)

(assert (=> bs!1828439 m!7580304))

(assert (=> bs!1828439 m!7579472))

(assert (=> bs!1828439 m!7579476))

(declare-fun m!7580306 () Bool)

(assert (=> bs!1828439 m!7580306))

(assert (=> b!6833933 d!2150092))

(assert (=> b!6833938 d!2150072))

(declare-fun d!2150094 () Bool)

(declare-fun e!4122688 () Bool)

(assert (=> d!2150094 e!4122688))

(declare-fun res!2790911 () Bool)

(assert (=> d!2150094 (=> (not res!2790911) (not e!4122688))))

(declare-fun lt!2453815 () List!66236)

(declare-fun noDuplicate!2424 (List!66236) Bool)

(assert (=> d!2150094 (= res!2790911 (noDuplicate!2424 lt!2453815))))

(declare-fun choose!50962 ((InoxSet Context!12058)) List!66236)

(assert (=> d!2150094 (= lt!2453815 (choose!50962 z!1189))))

(assert (=> d!2150094 (= (toList!10429 z!1189) lt!2453815)))

(declare-fun b!6834858 () Bool)

(declare-fun content!12954 (List!66236) (InoxSet Context!12058))

(assert (=> b!6834858 (= e!4122688 (= (content!12954 lt!2453815) z!1189))))

(assert (= (and d!2150094 res!2790911) b!6834858))

(declare-fun m!7580308 () Bool)

(assert (=> d!2150094 m!7580308))

(declare-fun m!7580310 () Bool)

(assert (=> d!2150094 m!7580310))

(declare-fun m!7580312 () Bool)

(assert (=> b!6834858 m!7580312))

(assert (=> b!6833929 d!2150094))

(declare-fun d!2150096 () Bool)

(declare-fun lt!2453816 () Regex!16645)

(assert (=> d!2150096 (validRegex!8381 lt!2453816)))

(assert (=> d!2150096 (= lt!2453816 (generalisedUnion!2489 (unfocusZipperList!2066 (Cons!66112 lt!2453626 Nil!66112))))))

(assert (=> d!2150096 (= (unfocusZipper!2387 (Cons!66112 lt!2453626 Nil!66112)) lt!2453816)))

(declare-fun bs!1828440 () Bool)

(assert (= bs!1828440 d!2150096))

(declare-fun m!7580314 () Bool)

(assert (=> bs!1828440 m!7580314))

(declare-fun m!7580316 () Bool)

(assert (=> bs!1828440 m!7580316))

(assert (=> bs!1828440 m!7580316))

(declare-fun m!7580318 () Bool)

(assert (=> bs!1828440 m!7580318))

(assert (=> b!6833949 d!2150096))

(declare-fun bs!1828441 () Bool)

(declare-fun d!2150098 () Bool)

(assert (= bs!1828441 (and d!2150098 d!2150064)))

(declare-fun lambda!386286 () Int)

(assert (=> bs!1828441 (= lambda!386286 lambda!386270)))

(declare-fun bs!1828442 () Bool)

(assert (= bs!1828442 (and d!2150098 d!2149900)))

(assert (=> bs!1828442 (= lambda!386286 lambda!386226)))

(declare-fun bs!1828443 () Bool)

(assert (= bs!1828443 (and d!2150098 d!2149898)))

(assert (=> bs!1828443 (= lambda!386286 lambda!386218)))

(declare-fun bs!1828444 () Bool)

(assert (= bs!1828444 (and d!2150098 d!2149960)))

(assert (=> bs!1828444 (= lambda!386286 lambda!386251)))

(declare-fun bs!1828445 () Bool)

(assert (= bs!1828445 (and d!2150098 b!6833951)))

(assert (=> bs!1828445 (= lambda!386286 lambda!386193)))

(declare-fun bs!1828446 () Bool)

(assert (= bs!1828446 (and d!2150098 d!2150062)))

(assert (=> bs!1828446 (= lambda!386286 lambda!386267)))

(assert (=> d!2150098 (= (inv!84859 setElem!46927) (forall!15831 (exprs!6529 setElem!46927) lambda!386286))))

(declare-fun bs!1828447 () Bool)

(assert (= bs!1828447 d!2150098))

(declare-fun m!7580320 () Bool)

(assert (=> bs!1828447 m!7580320))

(assert (=> setNonEmpty!46927 d!2150098))

(declare-fun d!2150100 () Bool)

(assert (=> d!2150100 (= (get!23037 lt!2453641) (v!52743 lt!2453641))))

(assert (=> b!6833953 d!2150100))

(declare-fun b!6834877 () Bool)

(declare-fun e!4122702 () Bool)

(declare-fun lt!2453825 () Option!16532)

(assert (=> b!6834877 (= e!4122702 (= (++!14837 (_1!36923 (get!23037 lt!2453825)) (_2!36923 (get!23037 lt!2453825))) s!2326))))

(declare-fun b!6834878 () Bool)

(declare-fun lt!2453823 () Unit!159981)

(declare-fun lt!2453824 () Unit!159981)

(assert (=> b!6834878 (= lt!2453823 lt!2453824)))

(assert (=> b!6834878 (= (++!14837 (++!14837 Nil!66111 (Cons!66111 (h!72559 s!2326) Nil!66111)) (t!379978 s!2326)) s!2326)))

(assert (=> b!6834878 (= lt!2453824 (lemmaMoveElementToOtherListKeepsConcatEq!2760 Nil!66111 (h!72559 s!2326) (t!379978 s!2326) s!2326))))

(declare-fun e!4122699 () Option!16532)

(assert (=> b!6834878 (= e!4122699 (findConcatSeparationZippers!254 lt!2453646 lt!2453651 (++!14837 Nil!66111 (Cons!66111 (h!72559 s!2326) Nil!66111)) (t!379978 s!2326) s!2326))))

(declare-fun b!6834879 () Bool)

(declare-fun e!4122700 () Option!16532)

(assert (=> b!6834879 (= e!4122700 e!4122699)))

(declare-fun c!1272729 () Bool)

(assert (=> b!6834879 (= c!1272729 ((_ is Nil!66111) s!2326))))

(declare-fun b!6834880 () Bool)

(assert (=> b!6834880 (= e!4122700 (Some!16531 (tuple2!67241 Nil!66111 s!2326)))))

(declare-fun b!6834881 () Bool)

(declare-fun e!4122703 () Bool)

(assert (=> b!6834881 (= e!4122703 (not (isDefined!13235 lt!2453825)))))

(declare-fun d!2150102 () Bool)

(assert (=> d!2150102 e!4122703))

(declare-fun res!2790926 () Bool)

(assert (=> d!2150102 (=> res!2790926 e!4122703)))

(assert (=> d!2150102 (= res!2790926 e!4122702)))

(declare-fun res!2790923 () Bool)

(assert (=> d!2150102 (=> (not res!2790923) (not e!4122702))))

(assert (=> d!2150102 (= res!2790923 (isDefined!13235 lt!2453825))))

(assert (=> d!2150102 (= lt!2453825 e!4122700)))

(declare-fun c!1272728 () Bool)

(declare-fun e!4122701 () Bool)

(assert (=> d!2150102 (= c!1272728 e!4122701)))

(declare-fun res!2790922 () Bool)

(assert (=> d!2150102 (=> (not res!2790922) (not e!4122701))))

(assert (=> d!2150102 (= res!2790922 (matchZipper!2631 lt!2453646 Nil!66111))))

(assert (=> d!2150102 (= (++!14837 Nil!66111 s!2326) s!2326)))

(assert (=> d!2150102 (= (findConcatSeparationZippers!254 lt!2453646 lt!2453651 Nil!66111 s!2326 s!2326) lt!2453825)))

(declare-fun b!6834882 () Bool)

(assert (=> b!6834882 (= e!4122699 None!16531)))

(declare-fun b!6834883 () Bool)

(declare-fun res!2790924 () Bool)

(assert (=> b!6834883 (=> (not res!2790924) (not e!4122702))))

(assert (=> b!6834883 (= res!2790924 (matchZipper!2631 lt!2453646 (_1!36923 (get!23037 lt!2453825))))))

(declare-fun b!6834884 () Bool)

(assert (=> b!6834884 (= e!4122701 (matchZipper!2631 lt!2453651 s!2326))))

(declare-fun b!6834885 () Bool)

(declare-fun res!2790925 () Bool)

(assert (=> b!6834885 (=> (not res!2790925) (not e!4122702))))

(assert (=> b!6834885 (= res!2790925 (matchZipper!2631 lt!2453651 (_2!36923 (get!23037 lt!2453825))))))

(assert (= (and d!2150102 res!2790922) b!6834884))

(assert (= (and d!2150102 c!1272728) b!6834880))

(assert (= (and d!2150102 (not c!1272728)) b!6834879))

(assert (= (and b!6834879 c!1272729) b!6834882))

(assert (= (and b!6834879 (not c!1272729)) b!6834878))

(assert (= (and d!2150102 res!2790923) b!6834883))

(assert (= (and b!6834883 res!2790924) b!6834885))

(assert (= (and b!6834885 res!2790925) b!6834877))

(assert (= (and d!2150102 (not res!2790926)) b!6834881))

(assert (=> b!6834878 m!7580292))

(assert (=> b!6834878 m!7580292))

(assert (=> b!6834878 m!7580294))

(assert (=> b!6834878 m!7580296))

(assert (=> b!6834878 m!7580292))

(declare-fun m!7580322 () Bool)

(assert (=> b!6834878 m!7580322))

(declare-fun m!7580324 () Bool)

(assert (=> b!6834884 m!7580324))

(declare-fun m!7580326 () Bool)

(assert (=> d!2150102 m!7580326))

(declare-fun m!7580328 () Bool)

(assert (=> d!2150102 m!7580328))

(declare-fun m!7580330 () Bool)

(assert (=> d!2150102 m!7580330))

(declare-fun m!7580332 () Bool)

(assert (=> b!6834877 m!7580332))

(declare-fun m!7580334 () Bool)

(assert (=> b!6834877 m!7580334))

(assert (=> b!6834885 m!7580332))

(declare-fun m!7580336 () Bool)

(assert (=> b!6834885 m!7580336))

(assert (=> b!6834883 m!7580332))

(declare-fun m!7580338 () Bool)

(assert (=> b!6834883 m!7580338))

(assert (=> b!6834881 m!7580326))

(assert (=> b!6833953 d!2150102))

(declare-fun d!2150104 () Bool)

(declare-fun e!4122708 () Bool)

(assert (=> d!2150104 e!4122708))

(declare-fun res!2790932 () Bool)

(assert (=> d!2150104 (=> (not res!2790932) (not e!4122708))))

(declare-fun lt!2453828 () List!66235)

(declare-fun content!12955 (List!66235) (InoxSet C!33560))

(assert (=> d!2150104 (= res!2790932 (= (content!12955 lt!2453828) ((_ map or) (content!12955 (_1!36923 lt!2453653)) (content!12955 (_2!36923 lt!2453653)))))))

(declare-fun e!4122709 () List!66235)

(assert (=> d!2150104 (= lt!2453828 e!4122709)))

(declare-fun c!1272732 () Bool)

(assert (=> d!2150104 (= c!1272732 ((_ is Nil!66111) (_1!36923 lt!2453653)))))

(assert (=> d!2150104 (= (++!14837 (_1!36923 lt!2453653) (_2!36923 lt!2453653)) lt!2453828)))

(declare-fun b!6834896 () Bool)

(declare-fun res!2790931 () Bool)

(assert (=> b!6834896 (=> (not res!2790931) (not e!4122708))))

(declare-fun size!40703 (List!66235) Int)

(assert (=> b!6834896 (= res!2790931 (= (size!40703 lt!2453828) (+ (size!40703 (_1!36923 lt!2453653)) (size!40703 (_2!36923 lt!2453653)))))))

(declare-fun b!6834894 () Bool)

(assert (=> b!6834894 (= e!4122709 (_2!36923 lt!2453653))))

(declare-fun b!6834895 () Bool)

(assert (=> b!6834895 (= e!4122709 (Cons!66111 (h!72559 (_1!36923 lt!2453653)) (++!14837 (t!379978 (_1!36923 lt!2453653)) (_2!36923 lt!2453653))))))

(declare-fun b!6834897 () Bool)

(assert (=> b!6834897 (= e!4122708 (or (not (= (_2!36923 lt!2453653) Nil!66111)) (= lt!2453828 (_1!36923 lt!2453653))))))

(assert (= (and d!2150104 c!1272732) b!6834894))

(assert (= (and d!2150104 (not c!1272732)) b!6834895))

(assert (= (and d!2150104 res!2790932) b!6834896))

(assert (= (and b!6834896 res!2790931) b!6834897))

(declare-fun m!7580340 () Bool)

(assert (=> d!2150104 m!7580340))

(declare-fun m!7580342 () Bool)

(assert (=> d!2150104 m!7580342))

(declare-fun m!7580344 () Bool)

(assert (=> d!2150104 m!7580344))

(declare-fun m!7580346 () Bool)

(assert (=> b!6834896 m!7580346))

(declare-fun m!7580348 () Bool)

(assert (=> b!6834896 m!7580348))

(declare-fun m!7580350 () Bool)

(assert (=> b!6834896 m!7580350))

(declare-fun m!7580352 () Bool)

(assert (=> b!6834895 m!7580352))

(assert (=> b!6833953 d!2150104))

(declare-fun d!2150106 () Bool)

(assert (=> d!2150106 (= (isDefined!13235 lt!2453641) (not (isEmpty!38506 lt!2453641)))))

(declare-fun bs!1828448 () Bool)

(assert (= bs!1828448 d!2150106))

(declare-fun m!7580354 () Bool)

(assert (=> bs!1828448 m!7580354))

(assert (=> b!6833953 d!2150106))

(declare-fun d!2150108 () Bool)

(assert (=> d!2150108 (isDefined!13235 (findConcatSeparationZippers!254 lt!2453646 (store ((as const (Array Context!12058 Bool)) false) lt!2453657 true) Nil!66111 s!2326 s!2326))))

(declare-fun lt!2453831 () Unit!159981)

(declare-fun choose!50963 ((InoxSet Context!12058) Context!12058 List!66235) Unit!159981)

(assert (=> d!2150108 (= lt!2453831 (choose!50963 lt!2453646 lt!2453657 s!2326))))

(assert (=> d!2150108 (matchZipper!2631 (appendTo!250 lt!2453646 lt!2453657) s!2326)))

(assert (=> d!2150108 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!254 lt!2453646 lt!2453657 s!2326) lt!2453831)))

(declare-fun bs!1828449 () Bool)

(assert (= bs!1828449 d!2150108))

(declare-fun m!7580356 () Bool)

(assert (=> bs!1828449 m!7580356))

(assert (=> bs!1828449 m!7579546))

(declare-fun m!7580358 () Bool)

(assert (=> bs!1828449 m!7580358))

(assert (=> bs!1828449 m!7579546))

(assert (=> bs!1828449 m!7579420))

(assert (=> bs!1828449 m!7579420))

(declare-fun m!7580360 () Bool)

(assert (=> bs!1828449 m!7580360))

(assert (=> bs!1828449 m!7580358))

(declare-fun m!7580362 () Bool)

(assert (=> bs!1828449 m!7580362))

(assert (=> b!6833953 d!2150108))

(declare-fun d!2150110 () Bool)

(declare-fun lt!2453832 () Regex!16645)

(assert (=> d!2150110 (validRegex!8381 lt!2453832)))

(assert (=> d!2150110 (= lt!2453832 (generalisedUnion!2489 (unfocusZipperList!2066 lt!2453637)))))

(assert (=> d!2150110 (= (unfocusZipper!2387 lt!2453637) lt!2453832)))

(declare-fun bs!1828450 () Bool)

(assert (= bs!1828450 d!2150110))

(declare-fun m!7580364 () Bool)

(assert (=> bs!1828450 m!7580364))

(declare-fun m!7580366 () Bool)

(assert (=> bs!1828450 m!7580366))

(assert (=> bs!1828450 m!7580366))

(declare-fun m!7580368 () Bool)

(assert (=> bs!1828450 m!7580368))

(assert (=> b!6833952 d!2150110))

(declare-fun d!2150112 () Bool)

(declare-fun dynLambda!26422 (Int Context!12058) Context!12058)

(assert (=> d!2150112 (= (map!15128 lt!2453646 lambda!386192) (store ((as const (Array Context!12058 Bool)) false) (dynLambda!26422 lambda!386192 lt!2453636) true))))

(declare-fun lt!2453835 () Unit!159981)

(declare-fun choose!50964 ((InoxSet Context!12058) Context!12058 Int) Unit!159981)

(assert (=> d!2150112 (= lt!2453835 (choose!50964 lt!2453646 lt!2453636 lambda!386192))))

(assert (=> d!2150112 (= lt!2453646 (store ((as const (Array Context!12058 Bool)) false) lt!2453636 true))))

(assert (=> d!2150112 (= (lemmaMapOnSingletonSet!280 lt!2453646 lt!2453636 lambda!386192) lt!2453835)))

(declare-fun b_lambda!257871 () Bool)

(assert (=> (not b_lambda!257871) (not d!2150112)))

(declare-fun bs!1828451 () Bool)

(assert (= bs!1828451 d!2150112))

(assert (=> bs!1828451 m!7579422))

(declare-fun m!7580370 () Bool)

(assert (=> bs!1828451 m!7580370))

(assert (=> bs!1828451 m!7579550))

(declare-fun m!7580372 () Bool)

(assert (=> bs!1828451 m!7580372))

(assert (=> bs!1828451 m!7580372))

(declare-fun m!7580374 () Bool)

(assert (=> bs!1828451 m!7580374))

(assert (=> b!6833951 d!2150112))

(assert (=> b!6833951 d!2149968))

(declare-fun d!2150114 () Bool)

(declare-fun choose!50965 ((InoxSet Context!12058) Int) (InoxSet Context!12058))

(assert (=> d!2150114 (= (map!15128 lt!2453646 lambda!386192) (choose!50965 lt!2453646 lambda!386192))))

(declare-fun bs!1828452 () Bool)

(assert (= bs!1828452 d!2150114))

(declare-fun m!7580376 () Bool)

(assert (=> bs!1828452 m!7580376))

(assert (=> b!6833951 d!2150114))

(declare-fun bs!1828453 () Bool)

(declare-fun d!2150116 () Bool)

(assert (= bs!1828453 (and d!2150116 b!6833951)))

(declare-fun lambda!386291 () Int)

(assert (=> bs!1828453 (= (= (exprs!6529 lt!2453657) lt!2453652) (= lambda!386291 lambda!386192))))

(assert (=> d!2150116 true))

(assert (=> d!2150116 (= (appendTo!250 lt!2453646 lt!2453657) (map!15128 lt!2453646 lambda!386291))))

(declare-fun bs!1828454 () Bool)

(assert (= bs!1828454 d!2150116))

(declare-fun m!7580378 () Bool)

(assert (=> bs!1828454 m!7580378))

(assert (=> b!6833951 d!2150116))

(assert (=> b!6833951 d!2149994))

(declare-fun b!6834904 () Bool)

(declare-fun e!4122712 () Bool)

(declare-fun tp!1870508 () Bool)

(assert (=> b!6834904 (= e!4122712 (and tp_is_empty!42543 tp!1870508))))

(assert (=> b!6833930 (= tp!1870439 e!4122712)))

(assert (= (and b!6833930 ((_ is Cons!66111) (t!379978 s!2326))) b!6834904))

(declare-fun b!6834912 () Bool)

(declare-fun e!4122718 () Bool)

(declare-fun tp!1870513 () Bool)

(assert (=> b!6834912 (= e!4122718 tp!1870513)))

(declare-fun tp!1870514 () Bool)

(declare-fun e!4122717 () Bool)

(declare-fun b!6834911 () Bool)

(assert (=> b!6834911 (= e!4122717 (and (inv!84859 (h!72560 (t!379979 zl!343))) e!4122718 tp!1870514))))

(assert (=> b!6833945 (= tp!1870438 e!4122717)))

(assert (= b!6834911 b!6834912))

(assert (= (and b!6833945 ((_ is Cons!66112) (t!379979 zl!343))) b!6834911))

(declare-fun m!7580380 () Bool)

(assert (=> b!6834911 m!7580380))

(declare-fun b!6834926 () Bool)

(declare-fun e!4122721 () Bool)

(declare-fun tp!1870526 () Bool)

(declare-fun tp!1870527 () Bool)

(assert (=> b!6834926 (= e!4122721 (and tp!1870526 tp!1870527))))

(declare-fun b!6834924 () Bool)

(declare-fun tp!1870525 () Bool)

(declare-fun tp!1870529 () Bool)

(assert (=> b!6834924 (= e!4122721 (and tp!1870525 tp!1870529))))

(declare-fun b!6834925 () Bool)

(declare-fun tp!1870528 () Bool)

(assert (=> b!6834925 (= e!4122721 tp!1870528)))

(assert (=> b!6833919 (= tp!1870441 e!4122721)))

(declare-fun b!6834923 () Bool)

(assert (=> b!6834923 (= e!4122721 tp_is_empty!42543)))

(assert (= (and b!6833919 ((_ is ElementMatch!16645) (regOne!33802 r!7292))) b!6834923))

(assert (= (and b!6833919 ((_ is Concat!25490) (regOne!33802 r!7292))) b!6834924))

(assert (= (and b!6833919 ((_ is Star!16645) (regOne!33802 r!7292))) b!6834925))

(assert (= (and b!6833919 ((_ is Union!16645) (regOne!33802 r!7292))) b!6834926))

(declare-fun b!6834930 () Bool)

(declare-fun e!4122722 () Bool)

(declare-fun tp!1870531 () Bool)

(declare-fun tp!1870532 () Bool)

(assert (=> b!6834930 (= e!4122722 (and tp!1870531 tp!1870532))))

(declare-fun b!6834928 () Bool)

(declare-fun tp!1870530 () Bool)

(declare-fun tp!1870534 () Bool)

(assert (=> b!6834928 (= e!4122722 (and tp!1870530 tp!1870534))))

(declare-fun b!6834929 () Bool)

(declare-fun tp!1870533 () Bool)

(assert (=> b!6834929 (= e!4122722 tp!1870533)))

(assert (=> b!6833919 (= tp!1870442 e!4122722)))

(declare-fun b!6834927 () Bool)

(assert (=> b!6834927 (= e!4122722 tp_is_empty!42543)))

(assert (= (and b!6833919 ((_ is ElementMatch!16645) (regTwo!33802 r!7292))) b!6834927))

(assert (= (and b!6833919 ((_ is Concat!25490) (regTwo!33802 r!7292))) b!6834928))

(assert (= (and b!6833919 ((_ is Star!16645) (regTwo!33802 r!7292))) b!6834929))

(assert (= (and b!6833919 ((_ is Union!16645) (regTwo!33802 r!7292))) b!6834930))

(declare-fun condSetEmpty!46933 () Bool)

(assert (=> setNonEmpty!46927 (= condSetEmpty!46933 (= setRest!46927 ((as const (Array Context!12058 Bool)) false)))))

(declare-fun setRes!46933 () Bool)

(assert (=> setNonEmpty!46927 (= tp!1870443 setRes!46933)))

(declare-fun setIsEmpty!46933 () Bool)

(assert (=> setIsEmpty!46933 setRes!46933))

(declare-fun setNonEmpty!46933 () Bool)

(declare-fun e!4122725 () Bool)

(declare-fun setElem!46933 () Context!12058)

(declare-fun tp!1870540 () Bool)

(assert (=> setNonEmpty!46933 (= setRes!46933 (and tp!1870540 (inv!84859 setElem!46933) e!4122725))))

(declare-fun setRest!46933 () (InoxSet Context!12058))

(assert (=> setNonEmpty!46933 (= setRest!46927 ((_ map or) (store ((as const (Array Context!12058 Bool)) false) setElem!46933 true) setRest!46933))))

(declare-fun b!6834935 () Bool)

(declare-fun tp!1870539 () Bool)

(assert (=> b!6834935 (= e!4122725 tp!1870539)))

(assert (= (and setNonEmpty!46927 condSetEmpty!46933) setIsEmpty!46933))

(assert (= (and setNonEmpty!46927 (not condSetEmpty!46933)) setNonEmpty!46933))

(assert (= setNonEmpty!46933 b!6834935))

(declare-fun m!7580382 () Bool)

(assert (=> setNonEmpty!46933 m!7580382))

(declare-fun b!6834940 () Bool)

(declare-fun e!4122728 () Bool)

(declare-fun tp!1870545 () Bool)

(declare-fun tp!1870546 () Bool)

(assert (=> b!6834940 (= e!4122728 (and tp!1870545 tp!1870546))))

(assert (=> b!6833937 (= tp!1870440 e!4122728)))

(assert (= (and b!6833937 ((_ is Cons!66110) (exprs!6529 setElem!46927))) b!6834940))

(declare-fun b!6834944 () Bool)

(declare-fun e!4122729 () Bool)

(declare-fun tp!1870548 () Bool)

(declare-fun tp!1870549 () Bool)

(assert (=> b!6834944 (= e!4122729 (and tp!1870548 tp!1870549))))

(declare-fun b!6834942 () Bool)

(declare-fun tp!1870547 () Bool)

(declare-fun tp!1870551 () Bool)

(assert (=> b!6834942 (= e!4122729 (and tp!1870547 tp!1870551))))

(declare-fun b!6834943 () Bool)

(declare-fun tp!1870550 () Bool)

(assert (=> b!6834943 (= e!4122729 tp!1870550)))

(assert (=> b!6833927 (= tp!1870447 e!4122729)))

(declare-fun b!6834941 () Bool)

(assert (=> b!6834941 (= e!4122729 tp_is_empty!42543)))

(assert (= (and b!6833927 ((_ is ElementMatch!16645) (reg!16974 r!7292))) b!6834941))

(assert (= (and b!6833927 ((_ is Concat!25490) (reg!16974 r!7292))) b!6834942))

(assert (= (and b!6833927 ((_ is Star!16645) (reg!16974 r!7292))) b!6834943))

(assert (= (and b!6833927 ((_ is Union!16645) (reg!16974 r!7292))) b!6834944))

(declare-fun b!6834948 () Bool)

(declare-fun e!4122730 () Bool)

(declare-fun tp!1870553 () Bool)

(declare-fun tp!1870554 () Bool)

(assert (=> b!6834948 (= e!4122730 (and tp!1870553 tp!1870554))))

(declare-fun b!6834946 () Bool)

(declare-fun tp!1870552 () Bool)

(declare-fun tp!1870556 () Bool)

(assert (=> b!6834946 (= e!4122730 (and tp!1870552 tp!1870556))))

(declare-fun b!6834947 () Bool)

(declare-fun tp!1870555 () Bool)

(assert (=> b!6834947 (= e!4122730 tp!1870555)))

(assert (=> b!6833931 (= tp!1870444 e!4122730)))

(declare-fun b!6834945 () Bool)

(assert (=> b!6834945 (= e!4122730 tp_is_empty!42543)))

(assert (= (and b!6833931 ((_ is ElementMatch!16645) (regOne!33803 r!7292))) b!6834945))

(assert (= (and b!6833931 ((_ is Concat!25490) (regOne!33803 r!7292))) b!6834946))

(assert (= (and b!6833931 ((_ is Star!16645) (regOne!33803 r!7292))) b!6834947))

(assert (= (and b!6833931 ((_ is Union!16645) (regOne!33803 r!7292))) b!6834948))

(declare-fun b!6834952 () Bool)

(declare-fun e!4122731 () Bool)

(declare-fun tp!1870558 () Bool)

(declare-fun tp!1870559 () Bool)

(assert (=> b!6834952 (= e!4122731 (and tp!1870558 tp!1870559))))

(declare-fun b!6834950 () Bool)

(declare-fun tp!1870557 () Bool)

(declare-fun tp!1870561 () Bool)

(assert (=> b!6834950 (= e!4122731 (and tp!1870557 tp!1870561))))

(declare-fun b!6834951 () Bool)

(declare-fun tp!1870560 () Bool)

(assert (=> b!6834951 (= e!4122731 tp!1870560)))

(assert (=> b!6833931 (= tp!1870445 e!4122731)))

(declare-fun b!6834949 () Bool)

(assert (=> b!6834949 (= e!4122731 tp_is_empty!42543)))

(assert (= (and b!6833931 ((_ is ElementMatch!16645) (regTwo!33803 r!7292))) b!6834949))

(assert (= (and b!6833931 ((_ is Concat!25490) (regTwo!33803 r!7292))) b!6834950))

(assert (= (and b!6833931 ((_ is Star!16645) (regTwo!33803 r!7292))) b!6834951))

(assert (= (and b!6833931 ((_ is Union!16645) (regTwo!33803 r!7292))) b!6834952))

(declare-fun b!6834953 () Bool)

(declare-fun e!4122732 () Bool)

(declare-fun tp!1870562 () Bool)

(declare-fun tp!1870563 () Bool)

(assert (=> b!6834953 (= e!4122732 (and tp!1870562 tp!1870563))))

(assert (=> b!6833936 (= tp!1870446 e!4122732)))

(assert (= (and b!6833936 ((_ is Cons!66110) (exprs!6529 (h!72560 zl!343)))) b!6834953))

(declare-fun b_lambda!257873 () Bool)

(assert (= b_lambda!257867 (or b!6833941 b_lambda!257873)))

(declare-fun bs!1828455 () Bool)

(declare-fun d!2150118 () Bool)

(assert (= bs!1828455 (and d!2150118 b!6833941)))

(assert (=> bs!1828455 (= (dynLambda!26421 lambda!386191 lt!2453636) (derivationStepZipperUp!1799 lt!2453636 (h!72559 s!2326)))))

(assert (=> bs!1828455 m!7579540))

(assert (=> d!2150050 d!2150118))

(declare-fun b_lambda!257875 () Bool)

(assert (= b_lambda!257871 (or b!6833951 b_lambda!257875)))

(declare-fun bs!1828456 () Bool)

(declare-fun d!2150120 () Bool)

(assert (= bs!1828456 (and d!2150120 b!6833951)))

(declare-fun lt!2453838 () Unit!159981)

(assert (=> bs!1828456 (= lt!2453838 (lemmaConcatPreservesForall!474 (exprs!6529 lt!2453636) lt!2453652 lambda!386193))))

(assert (=> bs!1828456 (= (dynLambda!26422 lambda!386192 lt!2453636) (Context!12059 (++!14836 (exprs!6529 lt!2453636) lt!2453652)))))

(declare-fun m!7580384 () Bool)

(assert (=> bs!1828456 m!7580384))

(declare-fun m!7580386 () Bool)

(assert (=> bs!1828456 m!7580386))

(assert (=> d!2150112 d!2150120))

(declare-fun b_lambda!257877 () Bool)

(assert (= b_lambda!257863 (or b!6833941 b_lambda!257877)))

(declare-fun bs!1828457 () Bool)

(declare-fun d!2150122 () Bool)

(assert (= bs!1828457 (and d!2150122 b!6833941)))

(assert (=> bs!1828457 (= (dynLambda!26421 lambda!386191 lt!2453626) (derivationStepZipperUp!1799 lt!2453626 (h!72559 s!2326)))))

(assert (=> bs!1828457 m!7579526))

(assert (=> d!2150024 d!2150122))

(declare-fun b_lambda!257879 () Bool)

(assert (= b_lambda!257865 (or b!6833941 b_lambda!257879)))

(declare-fun bs!1828458 () Bool)

(declare-fun d!2150124 () Bool)

(assert (= bs!1828458 (and d!2150124 b!6833941)))

(assert (=> bs!1828458 (= (dynLambda!26421 lambda!386191 lt!2453657) (derivationStepZipperUp!1799 lt!2453657 (h!72559 s!2326)))))

(assert (=> bs!1828458 m!7579538))

(assert (=> d!2150042 d!2150124))

(declare-fun b_lambda!257881 () Bool)

(assert (= b_lambda!257869 (or b!6833941 b_lambda!257881)))

(declare-fun bs!1828459 () Bool)

(declare-fun d!2150126 () Bool)

(assert (= bs!1828459 (and d!2150126 b!6833941)))

(assert (=> bs!1828459 (= (dynLambda!26421 lambda!386191 (h!72560 zl!343)) (derivationStepZipperUp!1799 (h!72560 zl!343) (h!72559 s!2326)))))

(assert (=> bs!1828459 m!7579556))

(assert (=> d!2150070 d!2150126))

(check-sat (not b!6834095) (not d!2150084) (not d!2149900) (not bs!1828459) (not d!2150078) (not b!6834444) (not bm!622549) (not d!2150116) (not b!6834719) (not d!2150038) (not b!6834702) (not d!2150102) (not b!6834727) (not b!6834172) (not bm!622563) (not bs!1828456) (not b!6834728) (not b!6834777) (not bm!622584) (not b!6834168) (not b!6834622) (not d!2150036) (not b!6834929) (not d!2150056) (not b!6834175) (not b!6834845) (not b!6834950) (not b!6834714) (not d!2150052) (not b!6834660) (not bs!1828455) (not b!6834177) (not bm!622578) (not b!6834174) (not b!6834499) (not b!6834928) (not d!2150082) (not b!6834706) (not b!6834885) (not b!6834947) (not b!6834781) (not d!2150092) (not bm!622561) (not d!2150086) (not b!6834722) (not bm!622581) (not d!2150096) (not b!6834778) (not b!6834881) (not bs!1828458) (not b!6834507) (not b!6834712) (not bm!622534) (not b!6834737) (not d!2150030) (not b_lambda!257881) (not bm!622528) (not b!6834946) (not b!6834755) (not b!6834647) (not bm!622568) (not d!2149940) (not b_lambda!257877) (not b!6834878) (not d!2150058) (not b!6834799) (not d!2149950) (not bm!622570) (not b!6834503) (not b!6834747) (not b!6834169) (not d!2150080) (not b!6834912) (not d!2150108) (not bm!622586) (not b!6834895) (not b!6834517) (not d!2150062) (not bm!622530) (not b!6834741) (not d!2150112) (not b!6834796) (not b!6834756) (not d!2149968) (not b!6834943) (not b!6834515) (not b!6834493) (not d!2150042) (not d!2149992) (not b!6834924) (not b!6834509) (not b!6834501) (not bm!622579) (not b!6834708) (not b!6834188) (not b!6834513) (not b!6834522) (not b!6834844) (not d!2150024) (not d!2150090) (not b!6834791) (not b!6834877) (not bm!622569) (not b_lambda!257873) (not b!6834661) (not b!6834520) (not d!2149890) (not bm!622548) (not b!6834786) (not b!6834952) (not d!2150050) (not b!6834751) (not b!6834884) (not b!6834656) (not b!6834930) (not b!6834731) (not b!6834171) (not b!6834506) (not b!6834846) (not b!6834780) (not b!6834951) (not b!6834783) (not d!2150070) (not bm!622531) (not b!6834495) (not b!6834521) (not b!6834743) (not bm!622566) (not bm!622575) (not b!6834357) (not d!2150026) (not d!2149994) (not d!2150032) (not b!6834883) (not d!2150110) (not b!6834843) (not b!6834925) (not b_lambda!257879) (not d!2150016) (not b!6834304) (not b!6834696) (not d!2150064) (not d!2149912) (not bm!622583) (not d!2150076) (not b!6834940) (not b!6834911) (not bm!622576) (not b!6834189) (not b!6834953) (not d!2150106) (not d!2149990) (not b!6834662) (not d!2150114) (not b!6834935) (not setNonEmpty!46933) (not d!2149898) (not b!6834356) (not b!6834896) (not b!6834948) (not b!6834858) (not d!2150040) (not b!6834659) (not b!6834944) (not d!2150094) (not b!6834443) (not b!6834749) (not b!6834657) (not b!6834723) (not b!6834716) (not b!6834942) (not bs!1828457) (not b!6834779) (not b!6834754) (not d!2150044) (not b!6834847) (not b!6834096) (not d!2149960) (not d!2150098) (not d!2149972) (not b!6834848) (not bm!622582) (not b!6834926) (not d!2149970) (not d!2150066) tp_is_empty!42543 (not bm!622577) (not d!2150104) (not b!6834904) (not bm!622580) (not d!2150060) (not d!2149918) (not b!6834795) (not d!2150028) (not b_lambda!257875))
(check-sat)
