; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!655544 () Bool)

(assert start!655544)

(declare-fun b!6767943 () Bool)

(assert (=> b!6767943 true))

(assert (=> b!6767943 true))

(declare-fun lambda!380745 () Int)

(declare-fun lambda!380744 () Int)

(assert (=> b!6767943 (not (= lambda!380745 lambda!380744))))

(assert (=> b!6767943 true))

(assert (=> b!6767943 true))

(declare-fun lambda!380746 () Int)

(assert (=> b!6767943 (not (= lambda!380746 lambda!380744))))

(assert (=> b!6767943 (not (= lambda!380746 lambda!380745))))

(assert (=> b!6767943 true))

(assert (=> b!6767943 true))

(declare-fun b!6767938 () Bool)

(assert (=> b!6767938 true))

(declare-fun b!6767928 () Bool)

(declare-fun e!4086326 () Bool)

(declare-fun tp!1854674 () Bool)

(assert (=> b!6767928 (= e!4086326 tp!1854674)))

(declare-fun setIsEmpty!46271 () Bool)

(declare-fun setRes!46271 () Bool)

(assert (=> setIsEmpty!46271 setRes!46271))

(declare-fun b!6767929 () Bool)

(declare-fun res!2767182 () Bool)

(declare-fun e!4086311 () Bool)

(assert (=> b!6767929 (=> res!2767182 e!4086311)))

(declare-datatypes ((C!33456 0))(
  ( (C!33457 (val!26430 Int)) )
))
(declare-datatypes ((Regex!16593 0))(
  ( (ElementMatch!16593 (c!1256637 C!33456)) (Concat!25438 (regOne!33698 Regex!16593) (regTwo!33698 Regex!16593)) (EmptyExpr!16593) (Star!16593 (reg!16922 Regex!16593)) (EmptyLang!16593) (Union!16593 (regOne!33699 Regex!16593) (regTwo!33699 Regex!16593)) )
))
(declare-datatypes ((List!66078 0))(
  ( (Nil!65954) (Cons!65954 (h!72402 Regex!16593) (t!379787 List!66078)) )
))
(declare-datatypes ((Context!11954 0))(
  ( (Context!11955 (exprs!6477 List!66078)) )
))
(declare-datatypes ((List!66079 0))(
  ( (Nil!65955) (Cons!65955 (h!72403 Context!11954) (t!379788 List!66079)) )
))
(declare-fun zl!343 () List!66079)

(get-info :version)

(assert (=> b!6767929 (= res!2767182 (not ((_ is Cons!65954) (exprs!6477 (h!72403 zl!343)))))))

(declare-fun b!6767930 () Bool)

(declare-fun res!2767177 () Bool)

(assert (=> b!6767930 (=> res!2767177 e!4086311)))

(declare-fun isEmpty!38313 (List!66079) Bool)

(assert (=> b!6767930 (= res!2767177 (not (isEmpty!38313 (t!379788 zl!343))))))

(declare-fun b!6767931 () Bool)

(declare-fun e!4086325 () Bool)

(declare-fun e!4086322 () Bool)

(assert (=> b!6767931 (= e!4086325 e!4086322)))

(declare-fun res!2767188 () Bool)

(assert (=> b!6767931 (=> res!2767188 e!4086322)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2443008 () (InoxSet Context!11954))

(declare-fun lt!2442999 () (InoxSet Context!11954))

(assert (=> b!6767931 (= res!2767188 (not (= lt!2443008 lt!2442999)))))

(declare-fun r!7292 () Regex!16593)

(declare-datatypes ((List!66080 0))(
  ( (Nil!65956) (Cons!65956 (h!72404 C!33456) (t!379789 List!66080)) )
))
(declare-fun s!2326 () List!66080)

(declare-fun derivationStepZipperDown!1821 (Regex!16593 Context!11954 C!33456) (InoxSet Context!11954))

(assert (=> b!6767931 (= lt!2442999 (derivationStepZipperDown!1821 r!7292 (Context!11955 Nil!65954) (h!72404 s!2326)))))

(declare-fun derivationStepZipperUp!1747 (Context!11954 C!33456) (InoxSet Context!11954))

(assert (=> b!6767931 (= lt!2443008 (derivationStepZipperUp!1747 (Context!11955 (Cons!65954 r!7292 Nil!65954)) (h!72404 s!2326)))))

(declare-fun lt!2443001 () (InoxSet Context!11954))

(declare-fun z!1189 () (InoxSet Context!11954))

(declare-fun derivationStepZipper!2537 ((InoxSet Context!11954) C!33456) (InoxSet Context!11954))

(assert (=> b!6767931 (= lt!2443001 (derivationStepZipper!2537 z!1189 (h!72404 s!2326)))))

(declare-fun b!6767933 () Bool)

(declare-fun e!4086315 () Bool)

(declare-fun e!4086310 () Bool)

(assert (=> b!6767933 (= e!4086315 e!4086310)))

(declare-fun res!2767173 () Bool)

(assert (=> b!6767933 (=> res!2767173 e!4086310)))

(declare-fun lt!2442988 () Context!11954)

(declare-fun lt!2442990 () Regex!16593)

(declare-fun unfocusZipper!2335 (List!66079) Regex!16593)

(assert (=> b!6767933 (= res!2767173 (not (= (unfocusZipper!2335 (Cons!65955 lt!2442988 Nil!65955)) lt!2442990)))))

(assert (=> b!6767933 (= lt!2442990 (Concat!25438 (reg!16922 r!7292) r!7292))))

(declare-fun b!6767934 () Bool)

(declare-fun e!4086324 () Bool)

(declare-fun tp!1854673 () Bool)

(declare-fun tp!1854679 () Bool)

(assert (=> b!6767934 (= e!4086324 (and tp!1854673 tp!1854679))))

(declare-fun b!6767935 () Bool)

(declare-fun e!4086319 () Bool)

(declare-fun validRegex!8329 (Regex!16593) Bool)

(assert (=> b!6767935 (= e!4086319 (validRegex!8329 r!7292))))

(declare-fun lt!2443005 () (InoxSet Context!11954))

(declare-datatypes ((tuple2!67136 0))(
  ( (tuple2!67137 (_1!36871 List!66080) (_2!36871 List!66080)) )
))
(declare-fun lt!2443017 () tuple2!67136)

(declare-fun matchZipper!2579 ((InoxSet Context!11954) List!66080) Bool)

(assert (=> b!6767935 (matchZipper!2579 lt!2443005 (_1!36871 lt!2443017))))

(declare-datatypes ((Unit!159877 0))(
  ( (Unit!159878) )
))
(declare-fun lt!2443015 () Unit!159877)

(declare-fun lt!2442993 () List!66079)

(declare-fun theoremZipperRegexEquiv!923 ((InoxSet Context!11954) List!66079 Regex!16593 List!66080) Unit!159877)

(assert (=> b!6767935 (= lt!2443015 (theoremZipperRegexEquiv!923 lt!2443005 lt!2442993 (reg!16922 r!7292) (_1!36871 lt!2443017)))))

(declare-fun b!6767936 () Bool)

(declare-fun res!2767196 () Bool)

(declare-fun e!4086317 () Bool)

(assert (=> b!6767936 (=> (not res!2767196) (not e!4086317))))

(declare-fun toList!10377 ((InoxSet Context!11954)) List!66079)

(assert (=> b!6767936 (= res!2767196 (= (toList!10377 z!1189) zl!343))))

(declare-fun b!6767937 () Bool)

(declare-fun e!4086321 () Bool)

(assert (=> b!6767937 (= e!4086321 e!4086319)))

(declare-fun res!2767190 () Bool)

(assert (=> b!6767937 (=> res!2767190 e!4086319)))

(declare-fun ++!14747 (List!66080 List!66080) List!66080)

(assert (=> b!6767937 (= res!2767190 (not (= s!2326 (++!14747 (_1!36871 lt!2443017) (_2!36871 lt!2443017)))))))

(declare-datatypes ((Option!16480 0))(
  ( (None!16479) (Some!16479 (v!52683 tuple2!67136)) )
))
(declare-fun lt!2443007 () Option!16480)

(declare-fun get!22959 (Option!16480) tuple2!67136)

(assert (=> b!6767937 (= lt!2443017 (get!22959 lt!2443007))))

(declare-fun e!4086318 () Bool)

(assert (=> b!6767938 (= e!4086322 e!4086318)))

(declare-fun res!2767174 () Bool)

(assert (=> b!6767938 (=> res!2767174 e!4086318)))

(assert (=> b!6767938 (= res!2767174 (not (= lt!2443001 lt!2442999)))))

(declare-fun lambda!380747 () Int)

(declare-fun flatMap!2074 ((InoxSet Context!11954) Int) (InoxSet Context!11954))

(assert (=> b!6767938 (= (flatMap!2074 z!1189 lambda!380747) (derivationStepZipperUp!1747 (h!72403 zl!343) (h!72404 s!2326)))))

(declare-fun lt!2443013 () Unit!159877)

(declare-fun lemmaFlatMapOnSingletonSet!1600 ((InoxSet Context!11954) Context!11954 Int) Unit!159877)

(assert (=> b!6767938 (= lt!2443013 (lemmaFlatMapOnSingletonSet!1600 z!1189 (h!72403 zl!343) lambda!380747))))

(declare-fun tp!1854681 () Bool)

(declare-fun b!6767939 () Bool)

(declare-fun e!4086313 () Bool)

(declare-fun e!4086309 () Bool)

(declare-fun inv!84729 (Context!11954) Bool)

(assert (=> b!6767939 (= e!4086313 (and (inv!84729 (h!72403 zl!343)) e!4086309 tp!1854681))))

(declare-fun b!6767940 () Bool)

(declare-fun e!4086327 () Bool)

(declare-fun e!4086323 () Bool)

(assert (=> b!6767940 (= e!4086327 e!4086323)))

(declare-fun res!2767178 () Bool)

(assert (=> b!6767940 (=> res!2767178 e!4086323)))

(assert (=> b!6767940 (= res!2767178 (not (= (unfocusZipper!2335 lt!2442993) (reg!16922 r!7292))))))

(declare-fun lt!2443014 () Context!11954)

(assert (=> b!6767940 (= lt!2442993 (Cons!65955 lt!2443014 Nil!65955))))

(declare-fun b!6767941 () Bool)

(declare-fun res!2767189 () Bool)

(assert (=> b!6767941 (=> res!2767189 e!4086315)))

(declare-fun lt!2443000 () (InoxSet Context!11954))

(assert (=> b!6767941 (= res!2767189 (not (= (matchZipper!2579 lt!2443000 s!2326) (matchZipper!2579 (derivationStepZipper!2537 lt!2443000 (h!72404 s!2326)) (t!379789 s!2326)))))))

(declare-fun b!6767942 () Bool)

(declare-fun e!4086312 () Bool)

(declare-fun e!4086328 () Bool)

(assert (=> b!6767942 (= e!4086312 e!4086328)))

(declare-fun res!2767175 () Bool)

(assert (=> b!6767942 (=> (not res!2767175) (not e!4086328))))

(declare-fun Exists!3661 (Int) Bool)

(assert (=> b!6767942 (= res!2767175 (= (Exists!3661 lambda!380744) (Exists!3661 lambda!380745)))))

(assert (=> b!6767943 (= e!4086311 e!4086325)))

(declare-fun res!2767183 () Bool)

(assert (=> b!6767943 (=> res!2767183 e!4086325)))

(declare-fun lt!2442992 () Bool)

(declare-fun e!4086316 () Bool)

(assert (=> b!6767943 (= res!2767183 (not (= lt!2442992 e!4086316)))))

(declare-fun res!2767194 () Bool)

(assert (=> b!6767943 (=> res!2767194 e!4086316)))

(declare-fun isEmpty!38314 (List!66080) Bool)

(assert (=> b!6767943 (= res!2767194 (isEmpty!38314 s!2326))))

(assert (=> b!6767943 (= (Exists!3661 lambda!380744) (Exists!3661 lambda!380746))))

(declare-fun lt!2442997 () Unit!159877)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2188 (Regex!16593 Regex!16593 List!66080) Unit!159877)

(assert (=> b!6767943 (= lt!2442997 (lemmaExistCutMatchRandMatchRSpecEquivalent!2188 (reg!16922 r!7292) r!7292 s!2326))))

(assert (=> b!6767943 (= (Exists!3661 lambda!380744) (Exists!3661 lambda!380745))))

(declare-fun lt!2442998 () Unit!159877)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!752 (Regex!16593 List!66080) Unit!159877)

(assert (=> b!6767943 (= lt!2442998 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!752 (reg!16922 r!7292) s!2326))))

(declare-fun lt!2443016 () Bool)

(assert (=> b!6767943 (= lt!2443016 (Exists!3661 lambda!380744))))

(declare-fun isDefined!13183 (Option!16480) Bool)

(assert (=> b!6767943 (= lt!2443016 (isDefined!13183 lt!2443007))))

(declare-fun findConcatSeparation!2894 (Regex!16593 Regex!16593 List!66080 List!66080 List!66080) Option!16480)

(assert (=> b!6767943 (= lt!2443007 (findConcatSeparation!2894 (reg!16922 r!7292) r!7292 Nil!65956 s!2326 s!2326))))

(declare-fun lt!2442995 () Unit!159877)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2658 (Regex!16593 Regex!16593 List!66080) Unit!159877)

(assert (=> b!6767943 (= lt!2442995 (lemmaFindConcatSeparationEquivalentToExists!2658 (reg!16922 r!7292) r!7292 s!2326))))

(declare-fun b!6767944 () Bool)

(assert (=> b!6767944 (= e!4086318 e!4086315)))

(declare-fun res!2767171 () Bool)

(assert (=> b!6767944 (=> res!2767171 e!4086315)))

(declare-fun lt!2443003 () Context!11954)

(assert (=> b!6767944 (= res!2767171 (not (= lt!2443001 (derivationStepZipperDown!1821 (reg!16922 r!7292) lt!2443003 (h!72404 s!2326)))))))

(declare-fun lt!2442996 () List!66078)

(assert (=> b!6767944 (= lt!2443003 (Context!11955 lt!2442996))))

(assert (=> b!6767944 (= (flatMap!2074 lt!2443000 lambda!380747) (derivationStepZipperUp!1747 lt!2442988 (h!72404 s!2326)))))

(declare-fun lt!2443011 () Unit!159877)

(assert (=> b!6767944 (= lt!2443011 (lemmaFlatMapOnSingletonSet!1600 lt!2443000 lt!2442988 lambda!380747))))

(declare-fun lt!2443010 () (InoxSet Context!11954))

(assert (=> b!6767944 (= lt!2443010 (derivationStepZipperUp!1747 lt!2442988 (h!72404 s!2326)))))

(assert (=> b!6767944 (= lt!2443000 (store ((as const (Array Context!11954 Bool)) false) lt!2442988 true))))

(assert (=> b!6767944 (= lt!2442988 (Context!11955 (Cons!65954 (reg!16922 r!7292) lt!2442996)))))

(assert (=> b!6767944 (= lt!2442996 (Cons!65954 r!7292 Nil!65954))))

(declare-fun b!6767945 () Bool)

(declare-fun e!4086314 () Bool)

(assert (=> b!6767945 (= e!4086317 e!4086314)))

(declare-fun res!2767193 () Bool)

(assert (=> b!6767945 (=> (not res!2767193) (not e!4086314))))

(declare-fun lt!2443012 () Regex!16593)

(assert (=> b!6767945 (= res!2767193 (= r!7292 lt!2443012))))

(assert (=> b!6767945 (= lt!2443012 (unfocusZipper!2335 zl!343))))

(declare-fun b!6767946 () Bool)

(declare-fun res!2767176 () Bool)

(assert (=> b!6767946 (=> res!2767176 e!4086311)))

(declare-fun generalisedUnion!2437 (List!66078) Regex!16593)

(declare-fun unfocusZipperList!2014 (List!66079) List!66078)

(assert (=> b!6767946 (= res!2767176 (not (= r!7292 (generalisedUnion!2437 (unfocusZipperList!2014 zl!343)))))))

(declare-fun res!2767187 () Bool)

(assert (=> start!655544 (=> (not res!2767187) (not e!4086317))))

(assert (=> start!655544 (= res!2767187 (validRegex!8329 r!7292))))

(assert (=> start!655544 e!4086317))

(assert (=> start!655544 e!4086324))

(declare-fun condSetEmpty!46271 () Bool)

(assert (=> start!655544 (= condSetEmpty!46271 (= z!1189 ((as const (Array Context!11954 Bool)) false)))))

(assert (=> start!655544 setRes!46271))

(assert (=> start!655544 e!4086313))

(declare-fun e!4086320 () Bool)

(assert (=> start!655544 e!4086320))

(declare-fun b!6767932 () Bool)

(assert (=> b!6767932 (= e!4086328 (= lt!2443016 (Exists!3661 lambda!380744)))))

(declare-fun b!6767947 () Bool)

(declare-fun res!2767184 () Bool)

(assert (=> b!6767947 (=> res!2767184 e!4086319)))

(declare-fun matchR!8776 (Regex!16593 List!66080) Bool)

(assert (=> b!6767947 (= res!2767184 (not (matchR!8776 (reg!16922 r!7292) (_1!36871 lt!2443017))))))

(declare-fun b!6767948 () Bool)

(declare-fun res!2767185 () Bool)

(assert (=> b!6767948 (=> res!2767185 e!4086319)))

(assert (=> b!6767948 (= res!2767185 (not (matchR!8776 r!7292 (_2!36871 lt!2443017))))))

(declare-fun b!6767949 () Bool)

(declare-fun e!4086308 () Bool)

(assert (=> b!6767949 (= e!4086308 e!4086312)))

(declare-fun res!2767181 () Bool)

(assert (=> b!6767949 (=> res!2767181 e!4086312)))

(declare-fun lt!2443018 () Bool)

(assert (=> b!6767949 (= res!2767181 (not lt!2443018))))

(declare-fun b!6767950 () Bool)

(declare-fun tp!1854676 () Bool)

(declare-fun tp!1854672 () Bool)

(assert (=> b!6767950 (= e!4086324 (and tp!1854676 tp!1854672))))

(declare-fun b!6767951 () Bool)

(declare-fun res!2767170 () Bool)

(assert (=> b!6767951 (=> res!2767170 e!4086325)))

(assert (=> b!6767951 (= res!2767170 ((_ is Nil!65956) s!2326))))

(declare-fun b!6767952 () Bool)

(assert (=> b!6767952 (= e!4086314 (not e!4086311))))

(declare-fun res!2767180 () Bool)

(assert (=> b!6767952 (=> res!2767180 e!4086311)))

(assert (=> b!6767952 (= res!2767180 (not ((_ is Cons!65955) zl!343)))))

(declare-fun matchRSpec!3694 (Regex!16593 List!66080) Bool)

(assert (=> b!6767952 (= lt!2442992 (matchRSpec!3694 r!7292 s!2326))))

(assert (=> b!6767952 (= lt!2442992 (matchR!8776 r!7292 s!2326))))

(declare-fun lt!2442989 () Unit!159877)

(declare-fun mainMatchTheorem!3694 (Regex!16593 List!66080) Unit!159877)

(assert (=> b!6767952 (= lt!2442989 (mainMatchTheorem!3694 r!7292 s!2326))))

(declare-fun b!6767953 () Bool)

(declare-fun res!2767179 () Bool)

(assert (=> b!6767953 (=> res!2767179 e!4086311)))

(assert (=> b!6767953 (= res!2767179 (or ((_ is EmptyExpr!16593) r!7292) ((_ is EmptyLang!16593) r!7292) ((_ is ElementMatch!16593) r!7292) ((_ is Union!16593) r!7292) ((_ is Concat!25438) r!7292)))))

(declare-fun b!6767954 () Bool)

(assert (=> b!6767954 (= e!4086323 e!4086321)))

(declare-fun res!2767195 () Bool)

(assert (=> b!6767954 (=> res!2767195 e!4086321)))

(assert (=> b!6767954 (= res!2767195 (not lt!2443018))))

(assert (=> b!6767954 e!4086308))

(declare-fun res!2767191 () Bool)

(assert (=> b!6767954 (=> (not res!2767191) (not e!4086308))))

(assert (=> b!6767954 (= res!2767191 (= lt!2443018 (matchRSpec!3694 lt!2442990 s!2326)))))

(assert (=> b!6767954 (= lt!2443018 (matchR!8776 lt!2442990 s!2326))))

(declare-fun lt!2443009 () Unit!159877)

(assert (=> b!6767954 (= lt!2443009 (mainMatchTheorem!3694 lt!2442990 s!2326))))

(declare-fun b!6767955 () Bool)

(declare-fun tp_is_empty!42439 () Bool)

(declare-fun tp!1854677 () Bool)

(assert (=> b!6767955 (= e!4086320 (and tp_is_empty!42439 tp!1854677))))

(declare-fun b!6767956 () Bool)

(declare-fun res!2767186 () Bool)

(assert (=> b!6767956 (=> res!2767186 e!4086311)))

(declare-fun generalisedConcat!2190 (List!66078) Regex!16593)

(assert (=> b!6767956 (= res!2767186 (not (= r!7292 (generalisedConcat!2190 (exprs!6477 (h!72403 zl!343))))))))

(declare-fun setElem!46271 () Context!11954)

(declare-fun tp!1854678 () Bool)

(declare-fun setNonEmpty!46271 () Bool)

(assert (=> setNonEmpty!46271 (= setRes!46271 (and tp!1854678 (inv!84729 setElem!46271) e!4086326))))

(declare-fun setRest!46271 () (InoxSet Context!11954))

(assert (=> setNonEmpty!46271 (= z!1189 ((_ map or) (store ((as const (Array Context!11954 Bool)) false) setElem!46271 true) setRest!46271))))

(declare-fun b!6767957 () Bool)

(declare-fun res!2767192 () Bool)

(assert (=> b!6767957 (=> res!2767192 e!4086315)))

(assert (=> b!6767957 (= res!2767192 (or (not (= lt!2443012 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6767958 () Bool)

(declare-fun tp!1854675 () Bool)

(assert (=> b!6767958 (= e!4086309 tp!1854675)))

(declare-fun b!6767959 () Bool)

(declare-fun tp!1854680 () Bool)

(assert (=> b!6767959 (= e!4086324 tp!1854680)))

(declare-fun b!6767960 () Bool)

(assert (=> b!6767960 (= e!4086324 tp_is_empty!42439)))

(declare-fun b!6767961 () Bool)

(declare-fun res!2767169 () Bool)

(assert (=> b!6767961 (=> res!2767169 e!4086323)))

(assert (=> b!6767961 (= res!2767169 (not (= (unfocusZipper!2335 (Cons!65955 lt!2443003 Nil!65955)) r!7292)))))

(declare-fun b!6767962 () Bool)

(assert (=> b!6767962 (= e!4086310 e!4086327)))

(declare-fun res!2767172 () Bool)

(assert (=> b!6767962 (=> res!2767172 e!4086327)))

(declare-fun lt!2443006 () (InoxSet Context!11954))

(assert (=> b!6767962 (= res!2767172 (not (= lt!2443001 (derivationStepZipper!2537 lt!2443006 (h!72404 s!2326)))))))

(assert (=> b!6767962 (= (flatMap!2074 lt!2443006 lambda!380747) (derivationStepZipperUp!1747 lt!2443003 (h!72404 s!2326)))))

(declare-fun lt!2443002 () Unit!159877)

(assert (=> b!6767962 (= lt!2443002 (lemmaFlatMapOnSingletonSet!1600 lt!2443006 lt!2443003 lambda!380747))))

(assert (=> b!6767962 (= (flatMap!2074 lt!2443005 lambda!380747) (derivationStepZipperUp!1747 lt!2443014 (h!72404 s!2326)))))

(declare-fun lt!2442994 () Unit!159877)

(assert (=> b!6767962 (= lt!2442994 (lemmaFlatMapOnSingletonSet!1600 lt!2443005 lt!2443014 lambda!380747))))

(declare-fun lt!2442991 () (InoxSet Context!11954))

(assert (=> b!6767962 (= lt!2442991 (derivationStepZipperUp!1747 lt!2443003 (h!72404 s!2326)))))

(declare-fun lt!2443004 () (InoxSet Context!11954))

(assert (=> b!6767962 (= lt!2443004 (derivationStepZipperUp!1747 lt!2443014 (h!72404 s!2326)))))

(assert (=> b!6767962 (= lt!2443006 (store ((as const (Array Context!11954 Bool)) false) lt!2443003 true))))

(assert (=> b!6767962 (= lt!2443005 (store ((as const (Array Context!11954 Bool)) false) lt!2443014 true))))

(assert (=> b!6767962 (= lt!2443014 (Context!11955 (Cons!65954 (reg!16922 r!7292) Nil!65954)))))

(declare-fun b!6767963 () Bool)

(assert (=> b!6767963 (= e!4086316 lt!2443016)))

(assert (= (and start!655544 res!2767187) b!6767936))

(assert (= (and b!6767936 res!2767196) b!6767945))

(assert (= (and b!6767945 res!2767193) b!6767952))

(assert (= (and b!6767952 (not res!2767180)) b!6767930))

(assert (= (and b!6767930 (not res!2767177)) b!6767956))

(assert (= (and b!6767956 (not res!2767186)) b!6767929))

(assert (= (and b!6767929 (not res!2767182)) b!6767946))

(assert (= (and b!6767946 (not res!2767176)) b!6767953))

(assert (= (and b!6767953 (not res!2767179)) b!6767943))

(assert (= (and b!6767943 (not res!2767194)) b!6767963))

(assert (= (and b!6767943 (not res!2767183)) b!6767951))

(assert (= (and b!6767951 (not res!2767170)) b!6767931))

(assert (= (and b!6767931 (not res!2767188)) b!6767938))

(assert (= (and b!6767938 (not res!2767174)) b!6767944))

(assert (= (and b!6767944 (not res!2767171)) b!6767941))

(assert (= (and b!6767941 (not res!2767189)) b!6767957))

(assert (= (and b!6767957 (not res!2767192)) b!6767933))

(assert (= (and b!6767933 (not res!2767173)) b!6767962))

(assert (= (and b!6767962 (not res!2767172)) b!6767940))

(assert (= (and b!6767940 (not res!2767178)) b!6767961))

(assert (= (and b!6767961 (not res!2767169)) b!6767954))

(assert (= (and b!6767954 res!2767191) b!6767949))

(assert (= (and b!6767949 (not res!2767181)) b!6767942))

(assert (= (and b!6767942 res!2767175) b!6767932))

(assert (= (and b!6767954 (not res!2767195)) b!6767937))

(assert (= (and b!6767937 (not res!2767190)) b!6767947))

(assert (= (and b!6767947 (not res!2767184)) b!6767948))

(assert (= (and b!6767948 (not res!2767185)) b!6767935))

(assert (= (and start!655544 ((_ is ElementMatch!16593) r!7292)) b!6767960))

(assert (= (and start!655544 ((_ is Concat!25438) r!7292)) b!6767934))

(assert (= (and start!655544 ((_ is Star!16593) r!7292)) b!6767959))

(assert (= (and start!655544 ((_ is Union!16593) r!7292)) b!6767950))

(assert (= (and start!655544 condSetEmpty!46271) setIsEmpty!46271))

(assert (= (and start!655544 (not condSetEmpty!46271)) setNonEmpty!46271))

(assert (= setNonEmpty!46271 b!6767928))

(assert (= b!6767939 b!6767958))

(assert (= (and start!655544 ((_ is Cons!65955) zl!343)) b!6767939))

(assert (= (and start!655544 ((_ is Cons!65956) s!2326)) b!6767955))

(declare-fun m!7518756 () Bool)

(assert (=> b!6767942 m!7518756))

(declare-fun m!7518758 () Bool)

(assert (=> b!6767942 m!7518758))

(declare-fun m!7518760 () Bool)

(assert (=> b!6767931 m!7518760))

(declare-fun m!7518762 () Bool)

(assert (=> b!6767931 m!7518762))

(declare-fun m!7518764 () Bool)

(assert (=> b!6767931 m!7518764))

(declare-fun m!7518766 () Bool)

(assert (=> b!6767944 m!7518766))

(declare-fun m!7518768 () Bool)

(assert (=> b!6767944 m!7518768))

(declare-fun m!7518770 () Bool)

(assert (=> b!6767944 m!7518770))

(declare-fun m!7518772 () Bool)

(assert (=> b!6767944 m!7518772))

(declare-fun m!7518774 () Bool)

(assert (=> b!6767944 m!7518774))

(declare-fun m!7518776 () Bool)

(assert (=> b!6767952 m!7518776))

(declare-fun m!7518778 () Bool)

(assert (=> b!6767952 m!7518778))

(declare-fun m!7518780 () Bool)

(assert (=> b!6767952 m!7518780))

(declare-fun m!7518782 () Bool)

(assert (=> b!6767939 m!7518782))

(declare-fun m!7518784 () Bool)

(assert (=> setNonEmpty!46271 m!7518784))

(declare-fun m!7518786 () Bool)

(assert (=> b!6767940 m!7518786))

(assert (=> b!6767932 m!7518756))

(declare-fun m!7518788 () Bool)

(assert (=> b!6767956 m!7518788))

(declare-fun m!7518790 () Bool)

(assert (=> b!6767948 m!7518790))

(declare-fun m!7518792 () Bool)

(assert (=> b!6767947 m!7518792))

(declare-fun m!7518794 () Bool)

(assert (=> b!6767961 m!7518794))

(declare-fun m!7518796 () Bool)

(assert (=> b!6767945 m!7518796))

(declare-fun m!7518798 () Bool)

(assert (=> b!6767962 m!7518798))

(declare-fun m!7518800 () Bool)

(assert (=> b!6767962 m!7518800))

(declare-fun m!7518802 () Bool)

(assert (=> b!6767962 m!7518802))

(declare-fun m!7518804 () Bool)

(assert (=> b!6767962 m!7518804))

(declare-fun m!7518806 () Bool)

(assert (=> b!6767962 m!7518806))

(declare-fun m!7518808 () Bool)

(assert (=> b!6767962 m!7518808))

(declare-fun m!7518810 () Bool)

(assert (=> b!6767962 m!7518810))

(declare-fun m!7518812 () Bool)

(assert (=> b!6767962 m!7518812))

(declare-fun m!7518814 () Bool)

(assert (=> b!6767962 m!7518814))

(declare-fun m!7518816 () Bool)

(assert (=> b!6767930 m!7518816))

(declare-fun m!7518818 () Bool)

(assert (=> start!655544 m!7518818))

(declare-fun m!7518820 () Bool)

(assert (=> b!6767954 m!7518820))

(declare-fun m!7518822 () Bool)

(assert (=> b!6767954 m!7518822))

(declare-fun m!7518824 () Bool)

(assert (=> b!6767954 m!7518824))

(declare-fun m!7518826 () Bool)

(assert (=> b!6767936 m!7518826))

(declare-fun m!7518828 () Bool)

(assert (=> b!6767933 m!7518828))

(declare-fun m!7518830 () Bool)

(assert (=> b!6767938 m!7518830))

(declare-fun m!7518832 () Bool)

(assert (=> b!6767938 m!7518832))

(declare-fun m!7518834 () Bool)

(assert (=> b!6767938 m!7518834))

(declare-fun m!7518836 () Bool)

(assert (=> b!6767941 m!7518836))

(declare-fun m!7518838 () Bool)

(assert (=> b!6767941 m!7518838))

(assert (=> b!6767941 m!7518838))

(declare-fun m!7518840 () Bool)

(assert (=> b!6767941 m!7518840))

(assert (=> b!6767935 m!7518818))

(declare-fun m!7518842 () Bool)

(assert (=> b!6767935 m!7518842))

(declare-fun m!7518844 () Bool)

(assert (=> b!6767935 m!7518844))

(declare-fun m!7518846 () Bool)

(assert (=> b!6767946 m!7518846))

(assert (=> b!6767946 m!7518846))

(declare-fun m!7518848 () Bool)

(assert (=> b!6767946 m!7518848))

(declare-fun m!7518850 () Bool)

(assert (=> b!6767943 m!7518850))

(declare-fun m!7518852 () Bool)

(assert (=> b!6767943 m!7518852))

(assert (=> b!6767943 m!7518756))

(declare-fun m!7518854 () Bool)

(assert (=> b!6767943 m!7518854))

(assert (=> b!6767943 m!7518758))

(declare-fun m!7518856 () Bool)

(assert (=> b!6767943 m!7518856))

(declare-fun m!7518858 () Bool)

(assert (=> b!6767943 m!7518858))

(assert (=> b!6767943 m!7518756))

(declare-fun m!7518860 () Bool)

(assert (=> b!6767943 m!7518860))

(declare-fun m!7518862 () Bool)

(assert (=> b!6767943 m!7518862))

(assert (=> b!6767943 m!7518756))

(declare-fun m!7518864 () Bool)

(assert (=> b!6767937 m!7518864))

(declare-fun m!7518866 () Bool)

(assert (=> b!6767937 m!7518866))

(check-sat (not b!6767930) (not b!6767955) (not b!6767936) (not b!6767932) (not b!6767961) (not start!655544) (not b!6767950) (not b!6767956) (not b!6767958) (not b!6767954) (not b!6767928) (not b!6767938) (not b!6767934) (not setNonEmpty!46271) (not b!6767942) (not b!6767962) (not b!6767933) (not b!6767939) (not b!6767952) (not b!6767944) (not b!6767948) (not b!6767940) (not b!6767943) (not b!6767937) (not b!6767935) (not b!6767959) (not b!6767947) (not b!6767941) tp_is_empty!42439 (not b!6767931) (not b!6767946) (not b!6767945))
(check-sat)
