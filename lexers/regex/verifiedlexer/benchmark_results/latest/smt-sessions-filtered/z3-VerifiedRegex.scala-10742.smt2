; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549546 () Bool)

(assert start!549546)

(declare-fun b!5192235 () Bool)

(assert (=> b!5192235 true))

(declare-fun b!5192221 () Bool)

(declare-fun res!2205273 () Bool)

(declare-fun e!3234111 () Bool)

(assert (=> b!5192221 (=> res!2205273 e!3234111)))

(declare-datatypes ((C!29732 0))(
  ( (C!29733 (val!24568 Int)) )
))
(declare-datatypes ((Regex!14731 0))(
  ( (ElementMatch!14731 (c!895082 C!29732)) (Concat!23576 (regOne!29974 Regex!14731) (regTwo!29974 Regex!14731)) (EmptyExpr!14731) (Star!14731 (reg!15060 Regex!14731)) (EmptyLang!14731) (Union!14731 (regOne!29975 Regex!14731) (regTwo!29975 Regex!14731)) )
))
(declare-fun r!7292 () Regex!14731)

(declare-datatypes ((List!60492 0))(
  ( (Nil!60368) (Cons!60368 (h!66816 Regex!14731) (t!373645 List!60492)) )
))
(declare-datatypes ((Context!8230 0))(
  ( (Context!8231 (exprs!4615 List!60492)) )
))
(declare-datatypes ((List!60493 0))(
  ( (Nil!60369) (Cons!60369 (h!66817 Context!8230) (t!373646 List!60493)) )
))
(declare-fun zl!343 () List!60493)

(declare-fun generalisedConcat!400 (List!60492) Regex!14731)

(assert (=> b!5192221 (= res!2205273 (not (= r!7292 (generalisedConcat!400 (exprs!4615 (h!66817 zl!343))))))))

(declare-fun b!5192222 () Bool)

(declare-fun e!3234123 () Bool)

(declare-fun tp_is_empty!38715 () Bool)

(assert (=> b!5192222 (= e!3234123 tp_is_empty!38715)))

(declare-fun b!5192223 () Bool)

(declare-fun res!2205271 () Bool)

(assert (=> b!5192223 (=> res!2205271 e!3234111)))

(declare-fun generalisedUnion!660 (List!60492) Regex!14731)

(declare-fun unfocusZipperList!173 (List!60493) List!60492)

(assert (=> b!5192223 (= res!2205271 (not (= r!7292 (generalisedUnion!660 (unfocusZipperList!173 zl!343)))))))

(declare-fun b!5192225 () Bool)

(declare-fun res!2205269 () Bool)

(assert (=> b!5192225 (=> res!2205269 e!3234111)))

(get-info :version)

(assert (=> b!5192225 (= res!2205269 (or ((_ is EmptyExpr!14731) r!7292) ((_ is EmptyLang!14731) r!7292) ((_ is ElementMatch!14731) r!7292) (not ((_ is Union!14731) r!7292))))))

(declare-fun b!5192226 () Bool)

(declare-fun e!3234120 () Bool)

(declare-fun e!3234110 () Bool)

(assert (=> b!5192226 (= e!3234120 e!3234110)))

(declare-fun res!2205279 () Bool)

(assert (=> b!5192226 (=> res!2205279 e!3234110)))

(declare-fun lt!2137914 () Bool)

(declare-fun lt!2137935 () Bool)

(declare-fun lt!2137918 () Bool)

(assert (=> b!5192226 (= res!2205279 (or (not (= lt!2137935 lt!2137914)) (not (= lt!2137935 lt!2137918))))))

(assert (=> b!5192226 (= lt!2137914 lt!2137935)))

(declare-fun e!3234116 () Bool)

(assert (=> b!5192226 (= lt!2137935 e!3234116)))

(declare-fun res!2205276 () Bool)

(assert (=> b!5192226 (=> res!2205276 e!3234116)))

(declare-fun lt!2137915 () Bool)

(assert (=> b!5192226 (= res!2205276 lt!2137915)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2137913 () (InoxSet Context!8230))

(declare-datatypes ((List!60494 0))(
  ( (Nil!60370) (Cons!60370 (h!66818 C!29732) (t!373647 List!60494)) )
))
(declare-fun s!2326 () List!60494)

(declare-fun matchZipper!1011 ((InoxSet Context!8230) List!60494) Bool)

(assert (=> b!5192226 (= lt!2137915 (matchZipper!1011 lt!2137913 (t!373647 s!2326)))))

(declare-fun lt!2137937 () (InoxSet Context!8230))

(declare-datatypes ((Unit!152296 0))(
  ( (Unit!152297) )
))
(declare-fun lt!2137929 () Unit!152296)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!10 ((InoxSet Context!8230) (InoxSet Context!8230) List!60494) Unit!152296)

(assert (=> b!5192226 (= lt!2137929 (lemmaZipperConcatMatchesSameAsBothZippers!10 lt!2137913 lt!2137937 (t!373647 s!2326)))))

(declare-fun setRes!32788 () Bool)

(declare-fun tp!1456472 () Bool)

(declare-fun setElem!32788 () Context!8230)

(declare-fun setNonEmpty!32788 () Bool)

(declare-fun e!3234118 () Bool)

(declare-fun inv!80074 (Context!8230) Bool)

(assert (=> setNonEmpty!32788 (= setRes!32788 (and tp!1456472 (inv!80074 setElem!32788) e!3234118))))

(declare-fun z!1189 () (InoxSet Context!8230))

(declare-fun setRest!32788 () (InoxSet Context!8230))

(assert (=> setNonEmpty!32788 (= z!1189 ((_ map or) (store ((as const (Array Context!8230 Bool)) false) setElem!32788 true) setRest!32788))))

(declare-fun setIsEmpty!32788 () Bool)

(assert (=> setIsEmpty!32788 setRes!32788))

(declare-fun b!5192227 () Bool)

(declare-fun e!3234125 () Bool)

(declare-fun e!3234109 () Bool)

(assert (=> b!5192227 (= e!3234125 e!3234109)))

(declare-fun res!2205265 () Bool)

(assert (=> b!5192227 (=> res!2205265 e!3234109)))

(declare-fun validRegex!6467 (Regex!14731) Bool)

(assert (=> b!5192227 (= res!2205265 (not (validRegex!6467 (regOne!29975 r!7292))))))

(declare-fun lt!2137911 () List!60493)

(declare-fun lt!2137926 () Context!8230)

(assert (=> b!5192227 (= lt!2137911 (Cons!60369 lt!2137926 Nil!60369))))

(declare-fun b!5192228 () Bool)

(declare-fun e!3234113 () Bool)

(assert (=> b!5192228 (= e!3234113 (not e!3234111))))

(declare-fun res!2205282 () Bool)

(assert (=> b!5192228 (=> res!2205282 e!3234111)))

(assert (=> b!5192228 (= res!2205282 (not ((_ is Cons!60369) zl!343)))))

(declare-fun lt!2137917 () Bool)

(declare-fun matchRSpec!1834 (Regex!14731 List!60494) Bool)

(assert (=> b!5192228 (= lt!2137917 (matchRSpec!1834 r!7292 s!2326))))

(declare-fun matchR!6916 (Regex!14731 List!60494) Bool)

(assert (=> b!5192228 (= lt!2137917 (matchR!6916 r!7292 s!2326))))

(declare-fun lt!2137919 () Unit!152296)

(declare-fun mainMatchTheorem!1834 (Regex!14731 List!60494) Unit!152296)

(assert (=> b!5192228 (= lt!2137919 (mainMatchTheorem!1834 r!7292 s!2326))))

(declare-fun b!5192229 () Bool)

(declare-fun e!3234115 () Bool)

(assert (=> b!5192229 (= e!3234110 e!3234115)))

(declare-fun res!2205278 () Bool)

(assert (=> b!5192229 (=> res!2205278 e!3234115)))

(declare-fun lt!2137925 () Bool)

(assert (=> b!5192229 (= res!2205278 (not (= lt!2137925 lt!2137915)))))

(declare-fun lt!2137921 () (InoxSet Context!8230))

(assert (=> b!5192229 (= lt!2137925 (matchZipper!1011 lt!2137921 s!2326))))

(declare-fun lt!2137927 () (InoxSet Context!8230))

(declare-fun lambda!259633 () Int)

(declare-fun lt!2137931 () Context!8230)

(declare-fun flatMap!484 ((InoxSet Context!8230) Int) (InoxSet Context!8230))

(declare-fun derivationStepZipperUp!121 (Context!8230 C!29732) (InoxSet Context!8230))

(assert (=> b!5192229 (= (flatMap!484 lt!2137927 lambda!259633) (derivationStepZipperUp!121 lt!2137931 (h!66818 s!2326)))))

(declare-fun lt!2137928 () Unit!152296)

(declare-fun lemmaFlatMapOnSingletonSet!16 ((InoxSet Context!8230) Context!8230 Int) Unit!152296)

(assert (=> b!5192229 (= lt!2137928 (lemmaFlatMapOnSingletonSet!16 lt!2137927 lt!2137931 lambda!259633))))

(assert (=> b!5192229 (= (flatMap!484 lt!2137921 lambda!259633) (derivationStepZipperUp!121 lt!2137926 (h!66818 s!2326)))))

(declare-fun lt!2137938 () Unit!152296)

(assert (=> b!5192229 (= lt!2137938 (lemmaFlatMapOnSingletonSet!16 lt!2137921 lt!2137926 lambda!259633))))

(declare-fun lt!2137916 () (InoxSet Context!8230))

(assert (=> b!5192229 (= lt!2137916 (derivationStepZipperUp!121 lt!2137931 (h!66818 s!2326)))))

(declare-fun lt!2137933 () (InoxSet Context!8230))

(assert (=> b!5192229 (= lt!2137933 (derivationStepZipperUp!121 lt!2137926 (h!66818 s!2326)))))

(assert (=> b!5192229 (= lt!2137927 (store ((as const (Array Context!8230 Bool)) false) lt!2137931 true))))

(assert (=> b!5192229 (= lt!2137931 (Context!8231 (Cons!60368 (regTwo!29975 r!7292) Nil!60368)))))

(assert (=> b!5192229 (= lt!2137921 (store ((as const (Array Context!8230 Bool)) false) lt!2137926 true))))

(assert (=> b!5192229 (= lt!2137926 (Context!8231 (Cons!60368 (regOne!29975 r!7292) Nil!60368)))))

(declare-fun b!5192230 () Bool)

(declare-fun tp!1456471 () Bool)

(declare-fun tp!1456469 () Bool)

(assert (=> b!5192230 (= e!3234123 (and tp!1456471 tp!1456469))))

(declare-fun res!2205280 () Bool)

(assert (=> start!549546 (=> (not res!2205280) (not e!3234113))))

(assert (=> start!549546 (= res!2205280 (validRegex!6467 r!7292))))

(assert (=> start!549546 e!3234113))

(assert (=> start!549546 e!3234123))

(declare-fun condSetEmpty!32788 () Bool)

(assert (=> start!549546 (= condSetEmpty!32788 (= z!1189 ((as const (Array Context!8230 Bool)) false)))))

(assert (=> start!549546 setRes!32788))

(declare-fun e!3234117 () Bool)

(assert (=> start!549546 e!3234117))

(declare-fun e!3234119 () Bool)

(assert (=> start!549546 e!3234119))

(declare-fun b!5192224 () Bool)

(declare-fun e!3234122 () Bool)

(assert (=> b!5192224 (= e!3234122 e!3234120)))

(declare-fun res!2205268 () Bool)

(assert (=> b!5192224 (=> res!2205268 e!3234120)))

(assert (=> b!5192224 (= res!2205268 (not (= lt!2137914 lt!2137918)))))

(assert (=> b!5192224 (= lt!2137918 (matchZipper!1011 z!1189 s!2326))))

(declare-fun lt!2137923 () (InoxSet Context!8230))

(assert (=> b!5192224 (= lt!2137914 (matchZipper!1011 lt!2137923 (t!373647 s!2326)))))

(declare-fun b!5192231 () Bool)

(declare-fun res!2205264 () Bool)

(assert (=> b!5192231 (=> res!2205264 e!3234109)))

(declare-fun toList!8515 ((InoxSet Context!8230)) List!60493)

(assert (=> b!5192231 (= res!2205264 (not (= (toList!8515 lt!2137921) lt!2137911)))))

(declare-fun b!5192232 () Bool)

(assert (=> b!5192232 (= e!3234109 true)))

(declare-fun lt!2137920 () Regex!14731)

(declare-fun unfocusZipper!473 (List!60493) Regex!14731)

(assert (=> b!5192232 (= lt!2137920 (unfocusZipper!473 lt!2137911))))

(declare-fun b!5192233 () Bool)

(declare-fun res!2205277 () Bool)

(assert (=> b!5192233 (=> (not res!2205277) (not e!3234113))))

(assert (=> b!5192233 (= res!2205277 (= r!7292 (unfocusZipper!473 zl!343)))))

(declare-fun b!5192234 () Bool)

(declare-fun e!3234114 () Bool)

(assert (=> b!5192234 (= e!3234111 e!3234114)))

(declare-fun res!2205266 () Bool)

(assert (=> b!5192234 (=> res!2205266 e!3234114)))

(declare-fun lt!2137934 () Bool)

(declare-fun lt!2137922 () Bool)

(assert (=> b!5192234 (= res!2205266 (or (not (= lt!2137917 (or lt!2137934 lt!2137922))) ((_ is Nil!60370) s!2326)))))

(assert (=> b!5192234 (= lt!2137922 (matchRSpec!1834 (regTwo!29975 r!7292) s!2326))))

(assert (=> b!5192234 (= lt!2137922 (matchR!6916 (regTwo!29975 r!7292) s!2326))))

(declare-fun lt!2137932 () Unit!152296)

(assert (=> b!5192234 (= lt!2137932 (mainMatchTheorem!1834 (regTwo!29975 r!7292) s!2326))))

(assert (=> b!5192234 (= lt!2137934 (matchRSpec!1834 (regOne!29975 r!7292) s!2326))))

(assert (=> b!5192234 (= lt!2137934 (matchR!6916 (regOne!29975 r!7292) s!2326))))

(declare-fun lt!2137930 () Unit!152296)

(assert (=> b!5192234 (= lt!2137930 (mainMatchTheorem!1834 (regOne!29975 r!7292) s!2326))))

(declare-fun e!3234121 () Bool)

(assert (=> b!5192235 (= e!3234121 e!3234122)))

(declare-fun res!2205275 () Bool)

(assert (=> b!5192235 (=> res!2205275 e!3234122)))

(declare-fun derivationStepZipper!1033 ((InoxSet Context!8230) C!29732) (InoxSet Context!8230))

(assert (=> b!5192235 (= res!2205275 (not (= (derivationStepZipper!1033 z!1189 (h!66818 s!2326)) lt!2137923)))))

(assert (=> b!5192235 (= (flatMap!484 z!1189 lambda!259633) (derivationStepZipperUp!121 (h!66817 zl!343) (h!66818 s!2326)))))

(declare-fun lt!2137910 () Unit!152296)

(assert (=> b!5192235 (= lt!2137910 (lemmaFlatMapOnSingletonSet!16 z!1189 (h!66817 zl!343) lambda!259633))))

(declare-fun b!5192236 () Bool)

(declare-fun tp!1456464 () Bool)

(declare-fun e!3234112 () Bool)

(assert (=> b!5192236 (= e!3234117 (and (inv!80074 (h!66817 zl!343)) e!3234112 tp!1456464))))

(declare-fun b!5192237 () Bool)

(declare-fun res!2205270 () Bool)

(assert (=> b!5192237 (=> res!2205270 e!3234111)))

(declare-fun isEmpty!32320 (List!60493) Bool)

(assert (=> b!5192237 (= res!2205270 (not (isEmpty!32320 (t!373646 zl!343))))))

(declare-fun b!5192238 () Bool)

(declare-fun res!2205281 () Bool)

(assert (=> b!5192238 (=> (not res!2205281) (not e!3234113))))

(assert (=> b!5192238 (= res!2205281 (= (toList!8515 z!1189) zl!343))))

(declare-fun b!5192239 () Bool)

(declare-fun tp!1456473 () Bool)

(declare-fun tp!1456468 () Bool)

(assert (=> b!5192239 (= e!3234123 (and tp!1456473 tp!1456468))))

(declare-fun b!5192240 () Bool)

(declare-fun tp!1456465 () Bool)

(assert (=> b!5192240 (= e!3234123 tp!1456465)))

(declare-fun b!5192241 () Bool)

(declare-fun res!2205267 () Bool)

(assert (=> b!5192241 (=> res!2205267 e!3234125)))

(declare-fun lt!2137936 () Bool)

(assert (=> b!5192241 (= res!2205267 (not (= (or lt!2137925 lt!2137936) lt!2137918)))))

(declare-fun b!5192242 () Bool)

(declare-fun e!3234124 () Bool)

(assert (=> b!5192242 (= e!3234114 e!3234124)))

(declare-fun res!2205274 () Bool)

(assert (=> b!5192242 (=> res!2205274 e!3234124)))

(declare-fun lt!2137912 () (InoxSet Context!8230))

(declare-fun lt!2137939 () (InoxSet Context!8230))

(assert (=> b!5192242 (= res!2205274 (not (= lt!2137912 lt!2137939)))))

(declare-fun lt!2137924 () Context!8230)

(declare-fun derivationStepZipperDown!200 (Regex!14731 Context!8230 C!29732) (InoxSet Context!8230))

(assert (=> b!5192242 (= lt!2137939 (derivationStepZipperDown!200 r!7292 lt!2137924 (h!66818 s!2326)))))

(assert (=> b!5192242 (= lt!2137924 (Context!8231 Nil!60368))))

(assert (=> b!5192242 (= lt!2137912 (derivationStepZipperUp!121 (Context!8231 (Cons!60368 r!7292 Nil!60368)) (h!66818 s!2326)))))

(declare-fun b!5192243 () Bool)

(declare-fun tp!1456467 () Bool)

(assert (=> b!5192243 (= e!3234119 (and tp_is_empty!38715 tp!1456467))))

(declare-fun b!5192244 () Bool)

(assert (=> b!5192244 (= e!3234116 (matchZipper!1011 lt!2137937 (t!373647 s!2326)))))

(declare-fun b!5192245 () Bool)

(declare-fun tp!1456470 () Bool)

(assert (=> b!5192245 (= e!3234112 tp!1456470)))

(declare-fun b!5192246 () Bool)

(declare-fun tp!1456466 () Bool)

(assert (=> b!5192246 (= e!3234118 tp!1456466)))

(declare-fun b!5192247 () Bool)

(assert (=> b!5192247 (= e!3234124 e!3234121)))

(declare-fun res!2205283 () Bool)

(assert (=> b!5192247 (=> res!2205283 e!3234121)))

(assert (=> b!5192247 (= res!2205283 (not (= lt!2137939 lt!2137923)))))

(assert (=> b!5192247 (= lt!2137923 ((_ map or) lt!2137913 lt!2137937))))

(assert (=> b!5192247 (= lt!2137937 (derivationStepZipperDown!200 (regTwo!29975 r!7292) lt!2137924 (h!66818 s!2326)))))

(assert (=> b!5192247 (= lt!2137913 (derivationStepZipperDown!200 (regOne!29975 r!7292) lt!2137924 (h!66818 s!2326)))))

(declare-fun b!5192248 () Bool)

(declare-fun res!2205284 () Bool)

(assert (=> b!5192248 (=> res!2205284 e!3234111)))

(assert (=> b!5192248 (= res!2205284 (not ((_ is Cons!60368) (exprs!4615 (h!66817 zl!343)))))))

(declare-fun b!5192249 () Bool)

(assert (=> b!5192249 (= e!3234115 e!3234125)))

(declare-fun res!2205272 () Bool)

(assert (=> b!5192249 (=> res!2205272 e!3234125)))

(assert (=> b!5192249 (= res!2205272 (not (= lt!2137936 (matchZipper!1011 lt!2137937 (t!373647 s!2326)))))))

(assert (=> b!5192249 (= lt!2137936 (matchZipper!1011 lt!2137927 s!2326))))

(assert (= (and start!549546 res!2205280) b!5192238))

(assert (= (and b!5192238 res!2205281) b!5192233))

(assert (= (and b!5192233 res!2205277) b!5192228))

(assert (= (and b!5192228 (not res!2205282)) b!5192237))

(assert (= (and b!5192237 (not res!2205270)) b!5192221))

(assert (= (and b!5192221 (not res!2205273)) b!5192248))

(assert (= (and b!5192248 (not res!2205284)) b!5192223))

(assert (= (and b!5192223 (not res!2205271)) b!5192225))

(assert (= (and b!5192225 (not res!2205269)) b!5192234))

(assert (= (and b!5192234 (not res!2205266)) b!5192242))

(assert (= (and b!5192242 (not res!2205274)) b!5192247))

(assert (= (and b!5192247 (not res!2205283)) b!5192235))

(assert (= (and b!5192235 (not res!2205275)) b!5192224))

(assert (= (and b!5192224 (not res!2205268)) b!5192226))

(assert (= (and b!5192226 (not res!2205276)) b!5192244))

(assert (= (and b!5192226 (not res!2205279)) b!5192229))

(assert (= (and b!5192229 (not res!2205278)) b!5192249))

(assert (= (and b!5192249 (not res!2205272)) b!5192241))

(assert (= (and b!5192241 (not res!2205267)) b!5192227))

(assert (= (and b!5192227 (not res!2205265)) b!5192231))

(assert (= (and b!5192231 (not res!2205264)) b!5192232))

(assert (= (and start!549546 ((_ is ElementMatch!14731) r!7292)) b!5192222))

(assert (= (and start!549546 ((_ is Concat!23576) r!7292)) b!5192230))

(assert (= (and start!549546 ((_ is Star!14731) r!7292)) b!5192240))

(assert (= (and start!549546 ((_ is Union!14731) r!7292)) b!5192239))

(assert (= (and start!549546 condSetEmpty!32788) setIsEmpty!32788))

(assert (= (and start!549546 (not condSetEmpty!32788)) setNonEmpty!32788))

(assert (= setNonEmpty!32788 b!5192246))

(assert (= b!5192236 b!5192245))

(assert (= (and start!549546 ((_ is Cons!60369) zl!343)) b!5192236))

(assert (= (and start!549546 ((_ is Cons!60370) s!2326)) b!5192243))

(declare-fun m!6247902 () Bool)

(assert (=> b!5192247 m!6247902))

(declare-fun m!6247904 () Bool)

(assert (=> b!5192247 m!6247904))

(declare-fun m!6247906 () Bool)

(assert (=> b!5192249 m!6247906))

(declare-fun m!6247908 () Bool)

(assert (=> b!5192249 m!6247908))

(declare-fun m!6247910 () Bool)

(assert (=> b!5192221 m!6247910))

(declare-fun m!6247912 () Bool)

(assert (=> b!5192231 m!6247912))

(declare-fun m!6247914 () Bool)

(assert (=> b!5192228 m!6247914))

(declare-fun m!6247916 () Bool)

(assert (=> b!5192228 m!6247916))

(declare-fun m!6247918 () Bool)

(assert (=> b!5192228 m!6247918))

(assert (=> b!5192244 m!6247906))

(declare-fun m!6247920 () Bool)

(assert (=> b!5192226 m!6247920))

(declare-fun m!6247922 () Bool)

(assert (=> b!5192226 m!6247922))

(declare-fun m!6247924 () Bool)

(assert (=> setNonEmpty!32788 m!6247924))

(declare-fun m!6247926 () Bool)

(assert (=> b!5192237 m!6247926))

(declare-fun m!6247928 () Bool)

(assert (=> b!5192236 m!6247928))

(declare-fun m!6247930 () Bool)

(assert (=> b!5192223 m!6247930))

(assert (=> b!5192223 m!6247930))

(declare-fun m!6247932 () Bool)

(assert (=> b!5192223 m!6247932))

(declare-fun m!6247934 () Bool)

(assert (=> b!5192227 m!6247934))

(declare-fun m!6247936 () Bool)

(assert (=> b!5192233 m!6247936))

(declare-fun m!6247938 () Bool)

(assert (=> b!5192242 m!6247938))

(declare-fun m!6247940 () Bool)

(assert (=> b!5192242 m!6247940))

(declare-fun m!6247942 () Bool)

(assert (=> b!5192235 m!6247942))

(declare-fun m!6247944 () Bool)

(assert (=> b!5192235 m!6247944))

(declare-fun m!6247946 () Bool)

(assert (=> b!5192235 m!6247946))

(declare-fun m!6247948 () Bool)

(assert (=> b!5192235 m!6247948))

(declare-fun m!6247950 () Bool)

(assert (=> b!5192229 m!6247950))

(declare-fun m!6247952 () Bool)

(assert (=> b!5192229 m!6247952))

(declare-fun m!6247954 () Bool)

(assert (=> b!5192229 m!6247954))

(declare-fun m!6247956 () Bool)

(assert (=> b!5192229 m!6247956))

(declare-fun m!6247958 () Bool)

(assert (=> b!5192229 m!6247958))

(declare-fun m!6247960 () Bool)

(assert (=> b!5192229 m!6247960))

(declare-fun m!6247962 () Bool)

(assert (=> b!5192229 m!6247962))

(declare-fun m!6247964 () Bool)

(assert (=> b!5192229 m!6247964))

(declare-fun m!6247966 () Bool)

(assert (=> b!5192229 m!6247966))

(declare-fun m!6247968 () Bool)

(assert (=> b!5192232 m!6247968))

(declare-fun m!6247970 () Bool)

(assert (=> b!5192224 m!6247970))

(declare-fun m!6247972 () Bool)

(assert (=> b!5192224 m!6247972))

(declare-fun m!6247974 () Bool)

(assert (=> b!5192234 m!6247974))

(declare-fun m!6247976 () Bool)

(assert (=> b!5192234 m!6247976))

(declare-fun m!6247978 () Bool)

(assert (=> b!5192234 m!6247978))

(declare-fun m!6247980 () Bool)

(assert (=> b!5192234 m!6247980))

(declare-fun m!6247982 () Bool)

(assert (=> b!5192234 m!6247982))

(declare-fun m!6247984 () Bool)

(assert (=> b!5192234 m!6247984))

(declare-fun m!6247986 () Bool)

(assert (=> b!5192238 m!6247986))

(declare-fun m!6247988 () Bool)

(assert (=> start!549546 m!6247988))

(check-sat (not b!5192228) (not setNonEmpty!32788) (not start!549546) (not b!5192244) (not b!5192237) (not b!5192227) (not b!5192224) (not b!5192249) (not b!5192232) (not b!5192240) (not b!5192230) (not b!5192231) (not b!5192247) (not b!5192233) (not b!5192243) (not b!5192246) (not b!5192223) (not b!5192221) tp_is_empty!38715 (not b!5192239) (not b!5192236) (not b!5192242) (not b!5192245) (not b!5192235) (not b!5192229) (not b!5192238) (not b!5192226) (not b!5192234))
(check-sat)
